void sub_4390D0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_1A8C0(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_4390EC()
{
  if ((atomic_load_explicit(&qword_6FD4E8, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_6FD4E8))
    {
      LODWORD(__p) = 1601402742;
      sub_439410();
    }
  }

  *v1 = 0u;
  *v2 = 0u;
  v3 = 1065353216;
  v0 = 0;
  operator new();
}

void sub_4394E8(std::__shared_weak_count *a1)
{
  a1->__vftable = off_6D3D18;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_43955C(uint64_t a1, char *a2, int a3)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  sub_53E8((a1 + 24), a2);
  *(a1 + 48) = a3;
  *(a1 + 52) = 0;
  *(a1 + 56) = 0;
  *(a1 + 128) = 0;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0;
  return a1;
}

void sub_4395BC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2B20B4(va);
  _Unwind_Resume(a1);
}

int *sub_4395D4(int *result, uint64_t a2)
{
  qword_6FD2C8 = 0;
  qword_6FD2C0 = 0;
  qword_6FD2B8 = &qword_6FD2C0;
  if (a2)
  {
    v2 = result;
    v3 = 0;
    v4 = &qword_6FD2C0;
    while (1)
    {
      if (v4 == &qword_6FD2C0)
      {
        v6 = &qword_6FD2C0;
      }

      else
      {
        v5 = v3;
        if (v3)
        {
          do
          {
            v6 = v5;
            v5 = v5[1];
          }

          while (v5);
        }

        else
        {
          v7 = &qword_6FD2C0;
          do
          {
            v6 = v7[2];
            v8 = *v6 == v7;
            v7 = v6;
          }

          while (v8);
        }

        v9 = *v2;
        if (*(v6 + 7) >= *v2)
        {
          if (v3)
          {
            v10 = &qword_6FD2C0;
            while (1)
            {
              while (1)
              {
                v11 = v3;
                v12 = *(v3 + 28);
                if (v9 >= v12)
                {
                  break;
                }

                v3 = *v11;
                v10 = v11;
                if (!*v11)
                {
                  goto LABEL_15;
                }
              }

              if (v12 >= v9)
              {
                break;
              }

              v10 = v11 + 1;
              v3 = v11[1];
              if (!v3)
              {
                goto LABEL_15;
              }
            }
          }

          else
          {
            v10 = &qword_6FD2C0;
          }

          goto LABEL_14;
        }
      }

      if (v3)
      {
        v10 = v6 + 1;
      }

      else
      {
        v10 = &qword_6FD2C0;
      }

LABEL_14:
      if (!*v10)
      {
LABEL_15:
        operator new();
      }

      if (++v2 == &result[a2])
      {
        return result;
      }

      v4 = qword_6FD2B8;
      v3 = qword_6FD2C0;
    }
  }

  return result;
}

void sub_439854(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_439944(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_439984(std::__shared_weak_count *a1)
{
  a1->__vftable = off_6D45E0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_439A20(std::__shared_weak_count *a1)
{
  a1->__vftable = off_6D45A8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_439A94(uint64_t a1, int a2, char *a3, CFStringRef *a4)
{
  sub_346990(a1, a3, 1684434036);
  if (a2 == 14)
  {
    sub_42A810(a4, a3);
    sub_53E8(__p, a3);
    sub_42F1B0(a1, __p, 0);
  }

  sub_42A810(a4, a3);
  sub_53E8(__p, a3);
  sub_42F1B0(a1, __p, 0);
}

void sub_439C6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_2B1E18(v15);
  _Unwind_Resume(a1);
}

void sub_439CC4(uint64_t a1, const char *a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  cf[0] = CFStringCreateWithBytes(0, "Generic", 7, 0x8000100u, 0);
  if (!cf[0])
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  sub_42ED40(&v25, cf);
  v12 = strlen(a2);
  v13 = std::string::append(&v25, a2, v12);
  v14 = *&v13->__r_.__value_.__l.__data_;
  *&v30[16] = *(&v13->__r_.__value_.__l + 2);
  *v30 = v14;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  v15 = std::string::append(v30, ".dspg", 5uLL);
  v16 = *&v15->__r_.__value_.__l.__data_;
  v29.__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
  *&v29.__r_.__value_.__l.__data_ = v16;
  v15->__r_.__value_.__l.__size_ = 0;
  v15->__r_.__value_.__r.__words[2] = 0;
  v15->__r_.__value_.__r.__words[0] = 0;
  if ((v30[23] & 0x80000000) != 0)
  {
    operator delete(*v30);
  }

  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }

  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  v17 = sub_5544(21);
  if (*(v17 + 8))
  {
    v18 = *v17;
    if (*v17)
    {
      if (os_log_type_enabled(*v17, OS_LOG_TYPE_DEBUG))
      {
        v19 = &v29;
        if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v19 = v29.__r_.__value_.__r.__words[0];
        }

        *v30 = 136315650;
        *&v30[4] = "RoutingSettings_Aspen.cpp";
        *&v30[12] = 1024;
        *&v30[14] = 2353;
        *&v30[18] = 2080;
        *&v30[20] = v19;
        _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEBUG, "%25s:%-5d DSP graph path for external speaker chain: %s", v30, 0x1Cu);
      }
    }
  }

  sub_53E8(v27, a3);
  sub_53E8(&__p, a3);
  v25 = __p;
  memset(&__p, 0, sizeof(__p));
  v26 = 1;
  LOBYTE(cf[0]) = 0;
  v23 = 0;
  v31 = 0;
  memset(v30, 0, sizeof(v30));
  v33 = 2;
  v32 = xmmword_5C76D0;
  sub_123D6C(v30, &v32, 3);
  sub_431270(a1, v27, &v29, &v25, cf, a4, a5, a6);
  sub_DDE50(v30);
  if (v23 == 1 && v22 < 0)
  {
    operator delete(cf[0]);
  }

  if (v26 == 1 && SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v28 < 0)
  {
    operator delete(v27[0]);
  }

  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
  }
}

void sub_43A0F0(uint64_t a1, const void **a2, const __CFString **a3, uint64_t a4, int a5, int a6, int a7)
{
  sub_30F4E0(v28, &off_6E4C30);
  sub_F76D4(&v23, *a3);
  __p = v23;
  memset(&v23, 0, sizeof(v23));
  sub_1E1AC0(buf, v28, &__p);
  sub_30F4E0(&v31, off_6E4C28);
  sub_1E1AC0(&v26, buf, &v31);
  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }

  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  if (SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__pn_.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v23.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__pn_.__r_.__value_.__l.__data_);
  }

  if ((v28[23] & 0x80000000) != 0)
  {
    operator delete(*v28);
  }

  if (*(a2 + 23) >= 0)
  {
    v12 = *(a2 + 23);
  }

  else
  {
    v12 = a2[1];
  }

  v13 = v28;
  sub_B0848(v28, v12 + 5);
  if (v28[23] < 0)
  {
    v13 = *v28;
  }

  if (v12)
  {
    if (*(a2 + 23) >= 0)
    {
      v14 = a2;
    }

    else
    {
      v14 = *a2;
    }

    memmove(v13, v14, v12);
  }

  strcpy(&v13[v12], ".dspg");
  *buf = *v28;
  *&buf[16] = *&v28[16];
  memset(v28, 0, 24);
  sub_1E1AC0(&v27, &v26, buf);
  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  if ((v28[23] & 0x80000000) != 0)
  {
    operator delete(*v28);
  }

  if (SHIBYTE(v26.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__pn_.__r_.__value_.__l.__data_);
  }

  v15 = sub_5544(21);
  v16 = *v15;
  if (*v15 && os_log_type_enabled(*v15, OS_LOG_TYPE_DEFAULT))
  {
    v17 = &v27;
    if ((v27.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v17 = v27.__pn_.__r_.__value_.__r.__words[0];
    }

    *buf = 136315650;
    *&buf[4] = "RoutingSettings_Aspen.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 2467;
    *&buf[18] = 2080;
    *&buf[20] = v17;
    _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "%25s:%-5d configuring SpeakerProtection DSPGraph For HAL from %s", buf, 0x1Cu);
  }

  memset(buf, 0, sizeof(buf));
  v30 = 1065353216;
  sub_4CC644(&v31);
  v18 = v31.__r_.__value_.__r.__words[0];
  if (v31.__r_.__value_.__r.__words[0])
  {
    v19 = sub_5544(21);
    v20 = *v19;
    if (*v19 && os_log_type_enabled(*v19, OS_LOG_TYPE_INFO))
    {
      v21 = CFCopyDescription(v18);
      v23.__pn_.__r_.__value_.__r.__words[0] = v21;
      sub_1267C(&__p, v21);
      if (v21)
      {
        CFRelease(v21);
      }

      p_p = &__p;
      if ((__p.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        p_p = __p.__pn_.__r_.__value_.__r.__words[0];
      }

      *v28 = 136315650;
      *&v28[4] = "RoutingSettings_Aspen.cpp";
      *&v28[12] = 1024;
      *&v28[14] = 2473;
      *&v28[18] = 2080;
      *&v28[20] = p_p;
      _os_log_impl(&dword_0, v20, OS_LOG_TYPE_INFO, "%25s:%-5d FDR Speaker Thiele-Small data: %s", v28, 0x1Cu);
      if (SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__pn_.__r_.__value_.__l.__data_);
      }
    }

    CFRetain(v18);
    v25 = v18;
    sub_43A8C0(v28, &v25);
  }

  *v28 = a5;
  *&v28[4] = a6;
  *&v28[8] = a7;
  *&v28[12] = 0;
  memset(&v26, 0, sizeof(v26));
  sub_1E1470(&v26, v28, &v28[16], 2uLL);
}

void sub_43A6E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, void *a46, uint64_t a47, int a48, __int16 a49, char a50, char a51)
{
  if (a2)
  {
    sub_1CC130(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_43A8C0(uint64_t a1, const void **a2)
{
  v9 = 1936749683;
  v8 = 0;
  sub_437A8C(&v10, &v9);
  sub_88CE8(&v11, "cfobject");
  v3 = *a2;
  if (v3)
  {
    CFRetain(v3);
  }

  v12 = v3;
  v7[0] = &v10;
  v7[1] = 2;
  v4 = 0;
  v8 = sub_69CE8(v7);
  while (1)
  {
    v5 = *(&v12 + v4);
    if (v5)
    {
      CFRelease(v5);
    }

    v6 = *(&v11 + v4);
    if (v6)
    {
      CFRelease(v6);
    }

    v4 -= 16;
    if (v4 == -32)
    {
      operator new();
    }
  }
}

void sub_43AA38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_1CC130(exception_object);
}

void sub_43AB9C(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_43AC44(uint64_t a1, int a2, uint64_t a3, char *a4, const __CFString **a5, NSObject *a6, unsigned int a7, uint64_t *a8, int a9, int a10, int a11, int a12, unsigned int a13)
{
  v14 = a6;
  v15 = a5;
  v16 = a4;
  v17 = a1;
  v18 = a12;
  if (a2 == 13)
  {
    if ((atomic_load_explicit(&qword_6FD318, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6FD318))
    {
      *buf = 1987013749;
      *v52 = 1986359655;
      sub_432CF0();
    }

    if ((atomic_load_explicit(&qword_6FD330, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6FD330))
    {
      *buf = 1819701100;
      sub_43AAB4();
    }

    if ((atomic_load_explicit(&qword_6FD348, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6FD348))
    {
      *buf = 1953918828;
      sub_43ABB4();
    }

    if (a7 < 5)
    {
      v20 = *&aTlfdtrpspslcsh[4 * a7];
    }

    sub_42ED40(&v51, v15);
    sub_284070(buf, &v51.__r_.__value_.__l.__data_, a3);
    v32 = std::string::append(buf, ".dspg", 5uLL);
    v33 = *&v32->__r_.__value_.__l.__data_;
    v50 = v32->__r_.__value_.__r.__words[2];
    *v49 = v33;
    v32->__r_.__value_.__l.__size_ = 0;
    v32->__r_.__value_.__r.__words[2] = 0;
    v32->__r_.__value_.__r.__words[0] = 0;
    if ((buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    if (*(a3 + 23) >= 0)
    {
      v34 = *(a3 + 23);
    }

    else
    {
      v34 = *(a3 + 8);
    }

    v35 = v47;
    sub_B0848(v47, v34 + 10);
    if (v48 < 0)
    {
      v35 = v47[0];
    }

    if (v34)
    {
      if (*(a3 + 23) >= 0)
      {
        v36 = a3;
      }

      else
      {
        v36 = *a3;
      }

      memmove(v35, v36, v34);
    }

    strcpy(v35 + v34, ".propstrip");
    memset(buf, 0, sizeof(buf));
    v54 = 1065353216;
    *v52 = a9;
    *&v52[4] = a10;
    memset(v46, 0, sizeof(v46));
    sub_1E1470(v46, v52, &v52[8], 1uLL);
  }

  if (a4[23] < 0)
  {
    v16 = *a4;
  }

  if (*(a8 + 23) < 0)
  {
    v22 = *a8;
  }

  if (a7 >= 5)
  {
    v23 = 1684434036;
    v26 = sub_5544(14);
    v27 = *v26;
    if (*v26 && os_log_type_enabled(*v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "RoutingSettings_Aspen.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 2051;
      *&buf[18] = 1024;
      *&buf[20] = a7;
      _os_log_impl(&dword_0, v27, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: Unsupported speaker protection type: %u", buf, 0x18u);
    }

    v15 = a5;
    v18 = a12;
    v17 = a1;
    v14 = a6;
  }

  else
  {
    v23 = *&aTlfdtrpspslcsh[4 * a7];
  }

  if (a13 >= 2)
  {
    v39 = sub_5544(14);
    v40 = *v39;
    if (*v39 && os_log_type_enabled(*v39, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "RoutingSettings_Aspen.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 2066;
      *&buf[18] = 1024;
      *&buf[20] = a13;
      _os_log_impl(&dword_0, v40, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): unsupported volume unit (%d)", buf, 0x18u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "unsupported volume unit (%d)");
  }

  sub_43955C(v17, v16, v23);
  if ((atomic_load_explicit(&qword_6FD2D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6FD2D0))
  {
    *buf = 0xC0000000BLL;
    sub_4395D4(buf, 2);
    __cxa_guard_release(&qword_6FD2D0);
  }

  v28 = qword_6FD2B8;
  if (qword_6FD2B8 == &qword_6FD2C0)
  {
LABEL_27:
    v14 = sub_42AED0(v14, v16, v15);
  }

  else
  {
    while (*(v28 + 28) != a2)
    {
      v29 = *(v28 + 8);
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
          v30 = *(v28 + 16);
          v31 = *v30 == v28;
          v28 = v30;
        }

        while (!v31);
      }

      v28 = v30;
      if (v30 == &qword_6FD2C0)
      {
        goto LABEL_27;
      }
    }
  }

  if (a2 <= 7)
  {
    if (a2 < 2)
    {
      sub_42D0C8(v17, v16);
    }

    if (a2 == 2)
    {
      if (v18 == 2)
      {
        if ((atomic_load_explicit(&qword_6FD2E8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6FD2E8))
        {
          sub_43977C();
        }

        sub_42CF3C(v17, v16);
      }

      v42 = sub_5544(14);
      v43 = *v42;
      if (*v42 && os_log_type_enabled(*v42, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "RoutingSettings_Aspen.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 2159;
        _os_log_impl(&dword_0, v43, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
      }

      v44 = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(v44, "Precondition failure.");
    }

    if (a2 == 3)
    {
      sub_53E8(buf, v16);
      sub_438888(v17, buf);
    }
  }

  else
  {
    if (a2 <= 10)
    {
      if (a2 != 8)
      {
        if (a2 != 9)
        {
          sub_439000(v17, v16, v14, v18);
          sub_42BDD0(v17, v16, 0, 0);
        }

        sub_53E8(buf, v16);
        sub_438888(v17, buf);
      }

      sub_53E8(buf, v16);
      sub_438888(v17, buf);
    }

    if ((a2 - 11) < 2)
    {
      sub_439000(v17, v16, v14, v18);
      sub_53E8(buf, v16);
      sub_438888(v17, buf);
    }
  }

  v37 = sub_5544(21);
  v38 = *v37;
  if (*v37 && os_log_type_enabled(*v37, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    *&buf[4] = "RoutingSettings_Aspen.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 2210;
    *&buf[18] = 1024;
    *&buf[20] = a2;
    _os_log_impl(&dword_0, v38, OS_LOG_TYPE_ERROR, "%25s:%-5d Ignoring invalid SpeakerDSPChainType: %d", buf, 0x18u);
  }
}

void sub_43BF7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, char a26, uint64_t a27, char a28, void *__p, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, void *a44, uint64_t a45, int a46, __int16 a47, char a48, char a49, char a50)
{
  __cxa_guard_abort(&qword_6FD300);
  sub_2B1E18(v50);
  _Unwind_Resume(a1);
}

void sub_43C278(double a1, double a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, const __CFString **a8, uint64_t a9, int a10, uint64_t a11, char a12, uint64_t a13, void *a14, uint64_t a15, unsigned int a16)
{
  v51 = a1;
  v52 = a2;
  v50 = a10;
  v16 = *(a6 + 23);
  if ((v16 & 0x80u) != 0)
  {
    v16 = *(a6 + 8);
  }

  if (!v16)
  {
    v32 = sub_5544(14);
    v33 = *v32;
    if (*v32 && os_log_type_enabled(*v32, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "RoutingSettings_Aspen.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 2684;
      _os_log_impl(&dword_0, v33, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  v17 = *(a7 + 23);
  if ((v17 & 0x80u) != 0)
  {
    v17 = *(a7 + 8);
  }

  if (!v17)
  {
    v35 = sub_5544(14);
    v36 = *v35;
    if (*v35 && os_log_type_enabled(*v35, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "RoutingSettings_Aspen.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 2685;
      _os_log_impl(&dword_0, v36, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    v37 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v37, "Precondition failure.");
  }

  memset(buf, 0, sizeof(buf));
  v55 = 1065353216;
  v48[0] = v48;
  v48[1] = v48;
  v49 = 0;
  v47[0] = a11;
  v47[1] = a8;
  v47[2] = buf;
  v47[3] = &v50;
  if (a4 <= 13)
  {
    if (a4 <= 7)
    {
      if (a4 != 2)
      {
        if (a4 == 7)
        {
          sub_43CF8C(v47);
        }

        goto LABEL_25;
      }
    }

    else
    {
      if ((a4 - 8) < 2)
      {
        goto LABEL_24;
      }

      if (a4 != 11)
      {
        if (a4 != 13)
        {
          goto LABEL_25;
        }

        goto LABEL_24;
      }
    }
  }

  else
  {
    if (a4 > 17)
    {
      if (a4 <= 20)
      {
        if (a4 != 18)
        {
          if (a4 == 20)
          {
            operator new();
          }

          goto LABEL_25;
        }

LABEL_24:
        sub_43CF8C(v47);
      }

      if (a4 == 21)
      {
        operator new();
      }

      if (a4 == 22)
      {
        if (sub_130F70(buf, 1685090928))
        {
          v41 = sub_5544(14);
          v42 = *v41;
          if (*v41 && os_log_type_enabled(*v41, OS_LOG_TYPE_ERROR))
          {
            *v53 = 136315394;
            *&v53[4] = "RoutingSettings_Aspen.cpp";
            *&v53[12] = 1024;
            *&v53[14] = 2784;
            _os_log_impl(&dword_0, v42, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", v53, 0x12u);
          }
        }

        else
        {
          if (*a15 != *(a15 + 8) && *a14 != a14[1])
          {
            goto LABEL_25;
          }

          v30 = sub_5544(14);
          v31 = *v30;
          if (*v30 && os_log_type_enabled(*v30, OS_LOG_TYPE_ERROR))
          {
            *v53 = 136315394;
            *&v53[4] = "RoutingSettings_Aspen.cpp";
            *&v53[12] = 1024;
            *&v53[14] = 2785;
            _os_log_impl(&dword_0, v31, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", v53, 0x12u);
          }
        }

        goto LABEL_64;
      }

LABEL_25:
      sub_43D8F4(buf, a14, *a15, *(a15 + 8));
      if (v49)
      {
        sub_28147C();
      }

      sub_42ED40(&__p, a8);
      v20 = *(a5 + 23);
      if (v20 >= 0)
      {
        v21 = a5;
      }

      else
      {
        v21 = *a5;
      }

      if (v20 >= 0)
      {
        v22 = *(a5 + 23);
      }

      else
      {
        v22 = *(a5 + 8);
      }

      v23 = std::string::append(&__p, v21, v22);
      v24 = *&v23->__r_.__value_.__l.__data_;
      *&v53[16] = *(&v23->__r_.__value_.__l + 2);
      *v53 = v24;
      v23->__r_.__value_.__l.__size_ = 0;
      v23->__r_.__value_.__r.__words[2] = 0;
      v23->__r_.__value_.__r.__words[0] = 0;
      v25 = std::string::append(v53, ".dspg", 5uLL);
      v26 = *&v25->__r_.__value_.__l.__data_;
      v46 = v25->__r_.__value_.__r.__words[2];
      *v45 = v26;
      v25->__r_.__value_.__l.__size_ = 0;
      v25->__r_.__value_.__r.__words[2] = 0;
      v25->__r_.__value_.__r.__words[0] = 0;
      if ((v53[23] & 0x80000000) != 0)
      {
        operator delete(*v53);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v27 = sub_5544(21);
      v28 = *v27;
      if (*v27 && os_log_type_enabled(*v27, OS_LOG_TYPE_DEFAULT))
      {
        v29 = v45;
        if (v46 < 0)
        {
          v29 = v45[0];
        }

        *v53 = 136315650;
        *&v53[4] = "RoutingSettings_Aspen.cpp";
        *&v53[12] = 1024;
        *&v53[14] = 2802;
        *&v53[18] = 2080;
        *&v53[20] = v29;
        _os_log_impl(&dword_0, v28, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Configuring microphone dsp from %s", v53, 0x1Cu);
      }

      *v53 = a13;
      *&v53[8] = a16;
      memset(v44, 0, sizeof(v44));
      sub_1E1470(v44, v53, &v53[16], 2uLL);
    }

    if ((a4 - 14) >= 3)
    {
      goto LABEL_25;
    }
  }

  if (!a12)
  {
    goto LABEL_24;
  }

  v38 = sub_5544(14);
  v39 = *v38;
  if (*v38 && os_log_type_enabled(*v38, OS_LOG_TYPE_ERROR))
  {
    *v53 = 136315394;
    *&v53[4] = "RoutingSettings_Aspen.cpp";
    *&v53[12] = 1024;
    *&v53[14] = 2727;
    _os_log_impl(&dword_0, v39, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", v53, 0x12u);
  }

LABEL_64:
  v40 = __cxa_allocate_exception(0x10uLL);
  std::logic_error::logic_error(v40, "Precondition failure.");
}

void sub_43CDD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46)
{
  __cxa_free_exception(v46);
  sub_87980(&a46);
  sub_12A2C4(v47 - 192);
  _Unwind_Resume(a1);
}

void sub_43CF8C(uint64_t a1)
{
  v2 = sub_14BADC(*(*a1 + 8), 1718186598);
  if (*(v2 + 23) < 0)
  {
    sub_54A0(__dst, *v2, v2[1]);
  }

  else
  {
    v3 = *v2;
    v18 = v2[2];
    *__dst = v3;
  }

  v4 = HIBYTE(v18);
  if (v18 < 0)
  {
    v4 = __dst[1];
  }

  if (v4)
  {
    sub_42E294(&v16, *(a1 + 8), __dst);
    v5 = *(a1 + 16);
    if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v6 = &v16;
    }

    else
    {
      v6 = v16.__r_.__value_.__r.__words[0];
    }

    if (v6)
    {
      if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v16.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v16.__r_.__value_.__l.__size_;
      }

      cf = CFStringCreateWithBytes(0, v6, size, 0x8000100u, 0);
      if (!cf)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Could not construct");
      }
    }

    else
    {
      cf = 0;
    }

    v21 = 1718186608;
    v20 = 0;
    sub_437A8C(&valuePtr, &v21);
    sub_88CE8(&v26, "cfobject");
    if (cf)
    {
      CFRetain(cf);
    }

    v27 = cf;
    v19[0] = &valuePtr;
    v19[1] = 2;
    v9 = 0;
    v20 = sub_69CE8(v19);
    while (1)
    {
      v10 = *(&v27 + v9);
      if (v10)
      {
        CFRelease(v10);
      }

      v11 = *(&v26 + v9);
      if (v11)
      {
        CFRelease(v11);
      }

      v9 -= 16;
      if (v9 == -32)
      {
        operator new();
      }
    }
  }

  v12 = sub_5544(14);
  v13 = *v12;
  if (*v12 && os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
  {
    __p[0] = 136315394;
    *&__p[1] = "RoutingSettings_Aspen.cpp";
    v23 = 1024;
    v24 = 2692;
    _os_log_impl(&dword_0, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", __p, 0x12u);
  }

  v14 = __cxa_allocate_exception(0x10uLL);
  std::logic_error::logic_error(v14, "Precondition failure.");
}

void sub_43D488(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_43D618(uint64_t a1, uint64_t a2)
{
  v11 = 1735287906;
  if (*(a2 + 8) != *a2)
  {
    sub_437A8C(buf, &v11);
    sub_280AF8(&cf, *a2, *(a2 + 8) - *a2);
    sub_437B60(v15 + 2, &cf);
    v10[0] = buf;
    v10[1] = 2;
    v3 = 0;
    v10[2] = sub_69CE8(v10);
    while (1)
    {
      v4 = *(&v15[v3 + 2] + 2);
      if (v4)
      {
        CFRelease(v4);
      }

      v5 = *(&v15[v3] + 2);
      if (v5)
      {
        CFRelease(v5);
      }

      v3 -= 4;
      if (v3 == -8)
      {
        if (cf)
        {
          CFRelease(cf);
        }

        operator new();
      }
    }
  }

  v6 = sub_5544(14);
  v7 = *v6;
  if (*v6 && os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v13 = "RoutingSettings_Aspen.cpp";
    v14 = 1024;
    v15[0] = 124;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::logic_error::logic_error(exception, "Precondition failure.");
}

void sub_43D8F4(uint64_t a1, uint64_t a2, _DWORD *a3, _DWORD *a4)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  if (*a2 != v5 || a3 != a4)
  {
    v8 = a3;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    if (a3 != a4)
    {
      do
      {
        buf[0] = *v8 - 1;
        sub_AFD28(&v22, buf);
        ++v8;
      }

      while (v8 != a4);
      v4 = *a2;
      v5 = *(a2 + 8);
    }

    while (v4 != v5)
    {
      buf[0] = *v4 - 1;
      sub_AFD28(&v22, buf);
      ++v4;
    }

    v10 = sub_5544(21);
    v11 = *v10;
    if (*v10)
    {
      v12 = os_log_type_enabled(*v10, OS_LOG_TYPE_DEFAULT);
      v13 = v22;
      if (v12)
      {
        sub_128174(&v31, v22, v23);
        v14 = (v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v31 : v31.__r_.__value_.__r.__words[0];
        buf[0] = 136315650;
        *&buf[1] = "RoutingSettings_Aspen.cpp";
        v29 = 1024;
        __p[0] = 2641;
        LOWORD(__p[1]) = 2080;
        *(&__p[1] + 2) = v14;
        _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Adding channel selector map %s", buf, 0x1Cu);
        if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v31.__r_.__value_.__l.__data_);
        }
      }
    }

    else
    {
      v13 = v22;
    }

    v27 = 1667789676;
    v15 = (v23 - v13);
    if (v23 != v13)
    {
      sub_437A8C(&v31, &v27);
      sub_280AF8(&cf, v13, v15);
      sub_437B60(&v31.__r_.__value_.__r.__words[2], &cf);
      v26[0] = &v31;
      v26[1] = 2;
      v16 = 0;
      v26[2] = sub_69CE8(v26);
      while (1)
      {
        v17 = *(&v31 + v16 * 8 + 24);
        if (v17)
        {
          CFRelease(v17);
        }

        v18 = v31.__r_.__value_.__r.__words[v16 + 2];
        if (v18)
        {
          CFRelease(v18);
        }

        v16 -= 2;
        if (v16 == -4)
        {
          if (cf)
          {
            CFRelease(cf);
          }

          operator new();
        }
      }
    }

    v19 = sub_5544(14);
    v20 = *v19;
    if (*v19 && os_log_type_enabled(*v19, OS_LOG_TYPE_ERROR))
    {
      LODWORD(v31.__r_.__value_.__l.__data_) = 136315394;
      *(v31.__r_.__value_.__r.__words + 4) = "RoutingSettings_Aspen.cpp";
      WORD2(v31.__r_.__value_.__r.__words[1]) = 1024;
      *(&v31.__r_.__value_.__r.__words[1] + 6) = 124;
      _os_log_impl(&dword_0, v20, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", &v31, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }
}

void sub_43DC80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, char a17)
{
  __cxa_free_exception(v17);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_43DD58(void *a1, double *a2)
{
  v3 = *a2;
  v4 = a2[1];
  if (v4 >= 0.0 && (v4 > 0.0 || v4 < 0.0 || v3 >= 0.0) && (v4 <= 0.0 || v3 >= 0.0) && v4 == 0.0 && v3 == 0.0)
  {
    v6 = sub_5544(14);
    v7 = *v6;
    if (*v6 && os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v10 = "RoutingSettings_Aspen.cpp";
      v11 = 1024;
      *v12 = 2614;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  sub_16040C(buf, 0);
  if ((atomic_load_explicit(&qword_6FD500, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6FD500))
  {
    sub_432CF0();
  }

  v5 = *algn_6FD4F8;
  *a1 = qword_6FD4F0;
  a1[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  sub_477A0(*&v12[2]);
}

void sub_43DF30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  __cxa_guard_abort(&qword_6FD500);
  sub_477A0(a13);
  _Unwind_Resume(a1);
}

void sub_43DF68(uint64_t a1, unsigned int a2, char *__s, const __CFString **a4, int a5, int a6, NSObject *a7, uint64_t a8, double a9, double a10, uint64_t a11, const char *a12, char a13)
{
  sub_37E0FC(a1, __s);
  v21 = sub_42AED0(a7, __s, a4);
  if (a2 <= 0x13 && ((1 << a2) & 0xE1468) != 0 || _os_feature_enabled_impl())
  {
    sub_42C3B8();
  }

  if (a13)
  {
    sub_43E9A0(a1, __s, a9, a10);
  }

  switch(a2)
  {
    case 0u:
      v28 = sub_14BADC(*(a11 + 8), 1718186598);
      sub_42DD7C(a1, __s, v21, a8, v28);
    case 2u:
    case 3u:
      sub_42E57C(a1, a12, v21);
      sub_42CFF8(a1, __s, 1);
    case 6u:
      sub_42D0C8(a1, __s);
    case 7u:
      sub_42D19C();
    case 8u:
      sub_42D0C8(a1, __s);
    case 9u:
      v29 = sub_14BADC(*(a11 + 8), 1718186598);
      sub_42DD7C(a1, __s, v21, a8, v29);
    case 0xBu:
    case 0xCu:
      v23 = *(a11 + 8);
      if (v23)
      {
        v24 = *(a11 + 8);
        do
        {
          v25 = *(v24 + 8);
          if (v25 <= 1718186598)
          {
            if (v25 == 1718186598)
            {
              v34 = sub_14BADC(v23, 1718186598);
              sub_42DD7C(a1, __s, v21, a8, v34);
            }

            ++v24;
          }

          v24 = *v24;
        }

        while (v24);
      }

      sub_42E57C(a1, a12, v21);
      sub_53E8(&__p, __s);
      sub_42F1B0(a1, &__p, 0);
    case 0xDu:
      sub_42D0C8(a1, __s);
    case 0xEu:
    case 0x11u:
      v22 = sub_14BADC(*(a11 + 8), 1718186598);
      sub_42DD7C(a1, __s, v21, a8, v22);
    case 0xFu:
      v27 = sub_14BADC(*(a11 + 8), 1718186598);
      sub_42DD7C(a1, __s, v21, a8, v27);
    case 0x10u:
      v26 = sub_14BADC(*(a11 + 8), 1718186598);
      sub_42DD7C(a1, __s, v21, a8, v26);
    case 0x12u:
      v30 = sub_14BADC(*(a11 + 8), 1718186598);
      sub_42DD7C(a1, __s, v21, a8, v30);
    case 0x13u:
      v31 = sub_14BADC(*(a11 + 8), 1718186598);
      sub_42DD7C(a1, __s, v21, a8, v31);
    default:
      v32 = sub_5544(21);
      v33 = *v32;
      if (*v32 && os_log_type_enabled(*v32, OS_LOG_TYPE_ERROR))
      {
        __p = 136315650;
        __p_4 = "RoutingSettings_Aspen.cpp";
        v37 = 1024;
        v38 = 2951;
        v39 = 1024;
        v40 = a2;
        _os_log_impl(&dword_0, v33, OS_LOG_TYPE_ERROR, "%25s:%-5d GetMicrophoneDSPChain: Ignoring invalid MicrophoneDSPChainType: %d", &__p, 0x18u);
      }

      return;
  }
}

void sub_43E9A0(uint64_t a1, uint64_t a2, double a3, double a4)
{
  *&v6[6] = a3;
  *&v6[7] = a4;
  sub_16040C(v6, 0);
  if ((atomic_load_explicit(&qword_6FD518, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_6FD518))
    {
      sub_43EAC0();
    }
  }

  sub_42BDD0(a1, a2, 0, 0);
}

void sub_43EA84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11)
{
  __cxa_guard_abort(&qword_6FD518);
  sub_477A0(a11);
  _Unwind_Resume(a1);
}

void sub_43EBD4(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_43EBEC(void *a1, unsigned int a2, const std::string::value_type *a3, void **a4, const __CFString **a5, uint64_t a6, double a7, double a8, uint64_t a9, const char *a10, int a11, char a12, unsigned int a13, _DWORD **a14)
{
  v48[0] = a7;
  v48[1] = a8;
  v20 = sub_5544(21);
  v21 = *v20;
  if (*v20 && os_log_type_enabled(*v20, OS_LOG_TYPE_DEFAULT))
  {
    if (a3[23] >= 0)
    {
      v22 = a3;
    }

    else
    {
      v22 = *a3;
    }

    if (*(a4 + 23) >= 0)
    {
      v23 = a4;
    }

    else
    {
      v23 = *a4;
    }

    v24 = *a5;
    v25 = "None";
    v26 = "false";
    *&buf[4] = "RoutingSettings_Aspen.cpp";
    *&buf[12] = 1024;
    if (a10)
    {
      v25 = a10;
    }

    *buf = 136316674;
    if (a12)
    {
      v26 = "true";
    }

    *&buf[14] = 2977;
    *&buf[18] = 2080;
    *&buf[20] = v22;
    *&buf[28] = 2080;
    *&buf[30] = v23;
    *&buf[38] = 2112;
    v50 = v24;
    v51 = 2080;
    v52 = v25;
    v53 = 2080;
    v54 = v26;
    _os_log_impl(&dword_0, v21, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Mic graph: %s, strip: %s, shortname: %@, Beam2 Presetfile: %s SoftwareVolume: %s", buf, 0x44u);
  }

  *v45 = 0u;
  *v46 = 0u;
  v47 = 1065353216;
  if (a2 <= 0x12 && ((1 << a2) & 0x5C6B0) != 0)
  {
    *__p = 0uLL;
    *v43 = 0uLL;
    v44 = 1065353216;
    operator new();
  }

  memset(buf, 0, 24);
  sub_43D8F4(v45, buf, *a14, a14[1]);
  sub_42ED40(__p, a5);
  v27 = a3[23];
  if (v27 >= 0)
  {
    v28 = a3;
  }

  else
  {
    v28 = *a3;
  }

  if (v27 >= 0)
  {
    v29 = *(a3 + 23);
  }

  else
  {
    v29 = *(a3 + 1);
  }

  v30 = std::string::append(__p, v28, v29);
  v31 = *&v30->__r_.__value_.__l.__data_;
  *&buf[16] = *(&v30->__r_.__value_.__l + 2);
  *buf = v31;
  v30->__r_.__value_.__l.__size_ = 0;
  v30->__r_.__value_.__r.__words[2] = 0;
  v30->__r_.__value_.__r.__words[0] = 0;
  v32 = std::string::append(buf, ".dspg", 5uLL);
  v33 = *&v32->__r_.__value_.__l.__data_;
  v41.__r_.__value_.__r.__words[2] = v32->__r_.__value_.__r.__words[2];
  *&v41.__r_.__value_.__l.__data_ = v33;
  v32->__r_.__value_.__l.__size_ = 0;
  v32->__r_.__value_.__r.__words[2] = 0;
  v32->__r_.__value_.__r.__words[0] = 0;
  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  if (SHIBYTE(v43[0]) < 0)
  {
    operator delete(__p[0]);
  }

  v34 = sub_5544(21);
  v35 = *v34;
  if (*v34 && os_log_type_enabled(*v34, OS_LOG_TYPE_DEFAULT))
  {
    v36 = &v41;
    if ((v41.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v36 = v41.__r_.__value_.__r.__words[0];
    }

    *buf = 136315650;
    *&buf[4] = "RoutingSettings_Aspen.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 3036;
    *&buf[18] = 2080;
    *&buf[20] = v36;
    _os_log_impl(&dword_0, v35, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Configuring microphone dsp from %s", buf, 0x1Cu);
  }

  if (*(a4 + 23) < 0)
  {
    sub_54A0(__p, *a4, a4[1]);
    v37 = *(a4 + 23);
    LOBYTE(v43[1]) = 1;
    if (v37 < 0)
    {
      sub_54A0(&__dst, *a4, a4[1]);
      goto LABEL_36;
    }
  }

  else
  {
    *__p = *a4;
    v43[0] = a4[2];
    LOBYTE(v43[1]) = 1;
  }

  __dst = *a4;
  v56 = a4[2];
LABEL_36:
  LOBYTE(v57) = 1;
  memset(buf, 0, sizeof(buf));
  v58 = xmmword_5C76D0;
  v59 = 2;
  sub_123D6C(buf, &v58, 3);
  sub_431270(a1, a4, &v41, __p, &__dst, a6, a13 | 0x100000000, 0x100000001);
  sub_DDE50(buf);
  if (v57 == 1 && SHIBYTE(v56) < 0)
  {
    operator delete(__dst);
  }

  if (LOBYTE(v43[1]) == 1 && SHIBYTE(v43[0]) < 0)
  {
    operator delete(__p[0]);
  }

  if (a12)
  {
    sub_43DD58(buf, v48);
    v38 = *&buf[8];
    sub_2760A0(a1, *buf, *&buf[8]);
    if (v38)
    {
      sub_1A8C0(v38);
    }
  }

  if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v41.__r_.__value_.__l.__data_);
  }

  sub_EF820(v46[0]);
  v39 = v45[0];
  v45[0] = 0;
  if (v39)
  {
    operator delete(v39);
  }
}

void sub_43F384(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, void *a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46)
{
  if (a28 == 1 && a27 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  sub_12A2C4(&a31);
  _Unwind_Resume(a1);
}

__n128 sub_43F5A0(uint64_t a1, uint64_t a2)
{
  *a2 = off_6D3E38;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_43F64C(uint64_t a1, int a2, char *__s, const __CFString **a4, int a5, int a6, NSObject *a7, int a8, uint64_t a9, int a10, char a11)
{
  sub_37E0FC(a1, __s);
  sub_42AED0(a7, __s, a4);
  v16 = sub_14BADC(*(a9 + 8), 1650814258);
  if ((a2 > 0x13 || ((1 << a2) & 0xE1468) == 0) && !_os_feature_enabled_impl())
  {
    if (a2 > 6)
    {
      if ((a2 - 17) < 3)
      {
        v17 = sub_14BADC(*(a9 + 8), 1936027251);
        if (*(v17 + 23) < 0)
        {
          v18 = *v17;
        }

        sub_42B38C(&v20, __s, 0, 0);
      }

      if (a2 == 7)
      {
        sub_42D19C();
      }

      if (a2 == 10)
      {
        sub_42D0C8(a1, __s);
      }
    }

    else
    {
      switch(a2)
      {
        case 4:
          sub_42CFF8(a1, __s, 0);
        case 5:
          sub_42D19C();
        case 6:
          sub_42D0C8(a1, __s);
      }
    }

    if (*(v16 + 23) < 0)
    {
      v19 = *v16;
    }

    operator new();
  }

  sub_42C3B8();
}

void sub_440590(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a34 < 0)
  {
    operator delete(__p);
  }

  sub_2B1E18(v34);
  _Unwind_Resume(a1);
}

void sub_440760(uint64_t a1, int a2, char *__s, CFStringRef *a4, int a5, float a6)
{
  sub_37E0FC(a1, __s);
  sub_42A810(a4, __s);
  if (a2 > 8)
  {
    if (a2 == 9)
    {
      if (a5)
      {
        sub_440960(a1, __s, a6);
      }

      sub_42CFF8(a1, __s, 0);
    }

    if (a2 == 10)
    {
      sub_42D0C8(a1, __s);
    }
  }

  else
  {
    if (!a2)
    {
      sub_440960(a1, __s, a6);
    }

    if (a2 == 1)
    {
      sub_42D0C8(a1, __s);
    }
  }

  v12 = sub_5544(21);
  v13 = *v12;
  if (*v12)
  {
    if (os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
    {
      v14 = 136315650;
      v15 = "RoutingSettings_Aspen.cpp";
      v16 = 1024;
      v17 = 3218;
      v18 = 1024;
      v19 = a2;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d Ignoring invalid MicrophoneDSPChainType: %d", &v14, 0x18u);
    }
  }
}

void sub_440960(uint64_t a1, uint64_t a2, float a3)
{
  v5[3] = vaddq_f64(vdupq_lane_s64(COERCE__INT64(a3), 0), xmmword_5174A0);
  sub_16040C(v5, 0);
  if ((atomic_load_explicit(&qword_6FD530, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_6FD530))
    {
      sub_42A564();
    }
  }

  sub_42BDD0(a1, a2, 0, 0);
}

void sub_440A60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11)
{
  __cxa_guard_abort(&qword_6FD530);
  sub_477A0(a11);
  _Unwind_Resume(a1);
}

void sub_440A9C(uint64_t a1, char *a2, uint64_t a3)
{
  cf[0] = CFStringCreateWithBytes(0, "Generic", 7, 0x8000100u, 0);
  if (!cf[0])
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  sub_42ED40(&v19, cf);
  v6 = strlen(a2);
  v7 = std::string::append(&v19, a2, v6);
  v8 = *&v7->__r_.__value_.__l.__data_;
  *&v24[16] = *(&v7->__r_.__value_.__l + 2);
  *v24 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  v9 = std::string::append(v24, ".dspg", 5uLL);
  v10 = *&v9->__r_.__value_.__l.__data_;
  v23.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
  *&v23.__r_.__value_.__l.__data_ = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  if ((v24[23] & 0x80000000) != 0)
  {
    operator delete(*v24);
  }

  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__r_.__value_.__l.__data_);
  }

  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  v11 = sub_5544(21);
  v12 = *v11;
  if (*v11 && os_log_type_enabled(*v11, OS_LOG_TYPE_DEFAULT))
  {
    v13 = &v23;
    if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v13 = v23.__r_.__value_.__r.__words[0];
    }

    *v24 = 136315650;
    *&v24[4] = "RoutingSettings_Aspen.cpp";
    *&v24[12] = 1024;
    *&v24[14] = 3228;
    *&v24[18] = 2080;
    *&v24[20] = v13;
    _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "%25s:%-5d configuring headset - mic dsp from %s", v24, 0x1Cu);
  }

  sub_53E8(v21, a2);
  sub_53E8(&__p, a2);
  v19 = __p;
  memset(&__p, 0, sizeof(__p));
  v20 = 1;
  LOBYTE(cf[0]) = 0;
  v17 = 0;
  v25 = 0;
  memset(v24, 0, sizeof(v24));
  v27 = 2;
  v26 = xmmword_5C76D0;
  sub_123D6C(v24, &v26, 3);
  sub_431270(a1, v21, &v23, &v19, cf, a3, 0, 0);
  sub_DDE50(v24);
  if (v17 == 1 && v16 < 0)
  {
    operator delete(cf[0]);
  }

  if (v20 == 1 && SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v22 < 0)
  {
    operator delete(v21[0]);
  }

  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }
}

void sub_440EB8(uint64_t a1, uint64_t a2, uint64_t a3, const __CFString **a4, int a5, int a6, unsigned int a7)
{
  sub_42ED40(&__dst, a4);
  v11 = *(a2 + 23);
  if (v11 >= 0)
  {
    v12 = a2;
  }

  else
  {
    v12 = *a2;
  }

  if (v11 >= 0)
  {
    v13 = *(a2 + 23);
  }

  else
  {
    v13 = *(a2 + 8);
  }

  v14 = std::string::append(&__dst, v12, v13);
  v15 = *&v14->__r_.__value_.__l.__data_;
  *&v25[16] = *(&v14->__r_.__value_.__l + 2);
  *v25 = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  v16 = std::string::append(v25, ".dspg", 5uLL);
  v17 = *&v16->__r_.__value_.__l.__data_;
  v24 = v16->__r_.__value_.__r.__words[2];
  *v23 = v17;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  if ((v25[23] & 0x80000000) != 0)
  {
    operator delete(*v25);
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  v18 = sub_5544(21);
  v19 = *v18;
  if (*v18 && os_log_type_enabled(*v18, OS_LOG_TYPE_DEFAULT))
  {
    v20 = v23;
    if (v24 < 0)
    {
      v20 = v23[0];
    }

    *v25 = 136315650;
    *&v25[4] = "RoutingSettings_Aspen.cpp";
    *&v25[12] = 1024;
    *&v25[14] = 3258;
    *&v25[18] = 2080;
    *&v25[20] = v20;
    _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEFAULT, "%25s:%-5d configuring MicVoiceRecognition dsp from %s", v25, 0x1Cu);
  }

  *v25 = a5;
  *&v25[4] = a6;
  *&v25[8] = a7;
  memset(v22, 0, sizeof(v22));
  sub_1E1470(v22, v25, &v25[16], 2uLL);
}

void sub_44123C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43)
{
  if (a26 == 1 && a25 < 0)
  {
    operator delete(__p);
  }

  if (a28)
  {
    operator delete(a28);
  }

  if (a36 < 0)
  {
    operator delete(a31);
  }

  _Unwind_Resume(exception_object);
}

void sub_441310()
{
  sub_53E8(v1, "speaker_hal");
  v2 = 0;
  v3 = 0;
  v4 = 0;
  sub_53E8(v5, "speaker_hal");
  sub_53E8(v6, "speaker_hal");
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 1684434036;
  v12 = 1936749683;
  cf = 0;
  v0 = 0;
  memset(v11, 0, 24);
  sub_1E13D0(v11, &v12, &v14, 1uLL);
}

void sub_441614(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_4417A8(uint64_t a1, uint64_t *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (*a2 == 1936945763)
  {
    v6 = *(*sub_441880(*(a1 + 192), *(a1 + 200)) + 40);

    return v6();
  }

  else
  {

    return sub_24DFD8(a1, a2, a3, a4, a5, a6);
  }
}

uint64_t sub_441880(uint64_t a1, std::__shared_weak_count *this)
{
  if (!this)
  {
    return 0;
  }

  atomic_fetch_add_explicit(&this->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v4 = std::__shared_weak_count::lock(this);
  if (v4)
  {
    sub_1A8C0(v4);
  }

  else
  {
    a1 = 0;
  }

  std::__shared_weak_count::__release_weak(this);
  return a1;
}

uint64_t sub_4418E0(uint64_t a1, uint64_t *a2, int a3, uint64_t a4)
{
  if (*a2 == 1936945763)
  {
    v4 = *(*sub_441880(*(a1 + 192), *(a1 + 200)) + 32);

    return v4();
  }

  else
  {
    sub_24E33C(a1, a2, a3, a4);
    return 0;
  }
}

uint64_t sub_441990(uint64_t a1, _DWORD *a2)
{
  if (*a2 != 1936945763)
  {
    return 0;
  }

  v3 = *(*sub_441880(*(a1 + 192), *(a1 + 200)) + 24);

  return v3();
}

uint64_t sub_441A0C(uint64_t a1, _DWORD *a2)
{
  if (*a2 != 1936945763)
  {
    return 0;
  }

  v3 = *(*sub_441880(*(a1 + 192), *(a1 + 200)) + 16);

  return v3();
}

void sub_441A88(uint64_t a1)
{
  sub_24EBDC(a1);

  operator delete();
}

void sub_441AC4(uint64_t a1)
{
  *a1 = off_6D48C8;
  sub_477A0(*(a1 + 64));

  operator delete();
}

uint64_t sub_441B2C(uint64_t a1)
{
  *a1 = off_6D48C8;
  sub_477A0(*(a1 + 64));
  return a1;
}

void sub_441D1C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (a22 == 1)
  {
    sub_477A0(a18);
  }

  if (v22)
  {
    std::__shared_weak_count::__release_weak(v22);
  }

  if (a15)
  {
    sub_477A0(a11);
  }

  if (v22)
  {
    std::__shared_weak_count::__release_weak(v22);
    std::__shared_weak_count::__release_weak(v22);
  }

  operator delete();
}

uint64_t sub_441D9C(void *a1, float *a2)
{
  v4 = (a1 + 13);
  v5 = (*(*a1 + 320))(a1);
  v6 = (*(*a1 + 312))(a1);
  v7 = sub_275004(v4, v5, 0);
  if (a1 + 14 == v7)
  {
    v27 = sub_5544(14);
    v28 = *v27;
    if (*v27 && os_log_type_enabled(*v27, OS_LOG_TYPE_ERROR))
    {
      sub_22170(v33, v5);
      v29 = v34 >= 0 ? v33 : v33[0];
      *buf = 136315650;
      *&buf[4] = "VolumeControl.h";
      v36 = 1024;
      v37 = 521;
      v38 = 2080;
      v39 = v29;
      _os_log_impl(&dword_0, v28, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): VolumeCommand: Software volume processor of type '%s' does not exist", buf, 0x1Cu);
      if (v34 < 0)
      {
        operator delete(v33[0]);
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "VolumeCommand: Software volume processor of type '%s' does not exist");
  }

  v8 = v7;
  v9 = sub_5544(19);
  v10 = sub_5544(39);
  v11 = 0;
  *buf = 0x100000002;
  v12 = *(v9 + 8);
  while (1)
  {
    v13 = *&buf[v11];
    if (((v12 & v13) != 0) != ((*(v10 + 8) & v13) != 0))
    {
      break;
    }

    v11 += 4;
    if (v11 == 8)
    {
      if ((v12 & 1) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_10;
    }
  }

  if ((v12 & v13) == 0)
  {
    v9 = v10;
  }

  if (*(v9 + 8))
  {
LABEL_10:
    v14 = *v9;
    if (v14 && os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      sub_22170(v33, v6);
      v15 = v34;
      v16 = v33[0];
      v17 = *a2;
      sub_22170(__p, v5);
      v18 = v33;
      if (v15 < 0)
      {
        v18 = v16;
      }

      v19 = __p[0];
      v20 = *(v8 + 14);
      if (v32 >= 0)
      {
        v19 = __p;
      }

      *buf = 136316418;
      *&buf[4] = "VolumeControl.h";
      v36 = 1024;
      v37 = 525;
      v38 = 2080;
      v39 = v18;
      v40 = 2048;
      v41 = v17;
      v42 = 2080;
      v43 = v19;
      v44 = 1024;
      v45 = v20;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEBUG, "%25s:%-5d VolumeCommand: Getting parameter '%s' to %f on processor type '%s' index %u", buf, 0x36u);
      if (v32 < 0)
      {
        operator delete(__p[0]);
      }

      if (v34 < 0)
      {
        operator delete(v33[0]);
      }
    }
  }

LABEL_20:
  v21 = a1[4];
  if (!v21)
  {
    return 0;
  }

  v22 = std::__shared_weak_count::lock(v21);
  if (!v22)
  {
    return 0;
  }

  v23 = v22;
  v24 = a1[3];
  if (v24)
  {
    v25 = (*(*v24 + 64))(v24, v5, v6, a2, 0);
  }

  else
  {
    v25 = 0;
  }

  sub_1A8C0(v23);
  return v25;
}

void sub_44216C(_Unwind_Exception *exception_object)
{
  if (v2 < 0)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_4421AC@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_2288C(v15);
  sub_22170(__p, 0x6C646E6Du);
  if ((v14 & 0x80u) == 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if ((v14 & 0x80u) == 0)
  {
    v5 = v14;
  }

  else
  {
    v5 = __p[1];
  }

  sub_22564(&v16, v4, v5);
  sub_22564(&v16, " ", 1);
  if (a1[15])
  {
    v6 = *(a1[13] + 56);
  }

  v7 = std::ostream::operator<<();
  sub_22564(v7, " ", 1);
  v8 = (*(*a1 + 136))(a1);
  if (v8 == 1684234860)
  {
    v9 = "dB";
  }

  else
  {
    v9 = "Scalar";
  }

  if (v8 == 1684234860)
  {
    v10 = 2;
  }

  else
  {
    v10 = 6;
  }

  sub_22564(v7, v9, v10);
  sub_22564(v7, " ", 1);
  std::ostream::operator<<();
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  sub_8E878(a2, v15);
  v16 = v11;
  if (v19 < 0)
  {
    operator delete(v18[7].__locale_);
  }

  std::locale::~locale(v18);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_442478(unsigned int *a1, float a2)
{
  sub_5B898((a1 + 10), a2);
  v4 = v3;
  v5 = sub_5544(19);
  v6 = sub_5544(39);
  v7 = 0;
  *buf = 0x100000002;
  v8 = *(v5 + 8);
  while (1)
  {
    v9 = *&buf[v7];
    if (((v8 & v9) != 0) != ((*(v6 + 8) & v9) != 0))
    {
      break;
    }

    v7 += 4;
    if (v7 == 8)
    {
      goto LABEL_7;
    }
  }

  if ((v8 & v9) == 0)
  {
    v5 = v6;
  }

LABEL_7:
  v10 = *v5;
  if (v10 && os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    sub_E896C(__p, a1);
    if (v14 >= 0)
    {
      v11 = __p;
    }

    else
    {
      v11 = __p[0];
    }

    *buf = 136315906;
    *&buf[4] = "VolumeControl.h";
    v16 = 1024;
    v17 = 816;
    v18 = 2048;
    v19 = v4;
    v20 = 2080;
    v21 = v11;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_INFO, "%25s:%-5d Setting volume %.2f dB on chain '%s'.", buf, 0x26u);
    if (v14 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v12 = (*(*a1 + 320))(a1);
  sub_E8A40(a1, v12, a1[33], v4);
}

void sub_442640(uint64_t a1)
{
  sub_13EFE4(a1);

  operator delete();
}

void sub_442684(uint64_t a1)
{
  *a1 = off_6D4908;
  sub_477A0(*(a1 + 64));

  operator delete();
}

uint64_t sub_4426EC(uint64_t a1)
{
  *a1 = off_6D4908;
  sub_477A0(*(a1 + 64));
  return a1;
}

void sub_442738(uint64_t a1)
{
  *a1 = off_6D4948;
  sub_477A0(*(a1 + 64));

  operator delete();
}

uint64_t sub_4427A0(uint64_t a1)
{
  *a1 = off_6D4948;
  sub_477A0(*(a1 + 64));
  return a1;
}

void sub_442990(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (a22 == 1)
  {
    sub_477A0(a18);
  }

  if (v22)
  {
    std::__shared_weak_count::__release_weak(v22);
  }

  if (a15)
  {
    sub_477A0(a11);
  }

  if (v22)
  {
    std::__shared_weak_count::__release_weak(v22);
    std::__shared_weak_count::__release_weak(v22);
  }

  operator delete();
}

uint64_t sub_442A10(void *a1, float *a2)
{
  v4 = (a1 + 13);
  v5 = (*(*a1 + 320))(a1);
  v6 = (*(*a1 + 312))(a1);
  v7 = sub_275004(v4, v5, 0);
  if (a1 + 14 == v7)
  {
    v27 = sub_5544(14);
    v28 = *v27;
    if (*v27 && os_log_type_enabled(*v27, OS_LOG_TYPE_ERROR))
    {
      sub_22170(v33, v5);
      v29 = v34 >= 0 ? v33 : v33[0];
      *buf = 136315650;
      *&buf[4] = "VolumeControl.h";
      v36 = 1024;
      v37 = 521;
      v38 = 2080;
      v39 = v29;
      _os_log_impl(&dword_0, v28, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): VolumeCommand: Software volume processor of type '%s' does not exist", buf, 0x1Cu);
      if (v34 < 0)
      {
        operator delete(v33[0]);
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "VolumeCommand: Software volume processor of type '%s' does not exist");
  }

  v8 = v7;
  v9 = sub_5544(19);
  v10 = sub_5544(39);
  v11 = 0;
  *buf = 0x100000002;
  v12 = *(v9 + 8);
  while (1)
  {
    v13 = *&buf[v11];
    if (((v12 & v13) != 0) != ((*(v10 + 8) & v13) != 0))
    {
      break;
    }

    v11 += 4;
    if (v11 == 8)
    {
      if ((v12 & 1) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_10;
    }
  }

  if ((v12 & v13) == 0)
  {
    v9 = v10;
  }

  if (*(v9 + 8))
  {
LABEL_10:
    v14 = *v9;
    if (v14 && os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      sub_22170(v33, v6);
      v15 = v34;
      v16 = v33[0];
      v17 = *a2;
      sub_22170(__p, v5);
      v18 = v33;
      if (v15 < 0)
      {
        v18 = v16;
      }

      v19 = __p[0];
      v20 = *(v8 + 14);
      if (v32 >= 0)
      {
        v19 = __p;
      }

      *buf = 136316418;
      *&buf[4] = "VolumeControl.h";
      v36 = 1024;
      v37 = 525;
      v38 = 2080;
      v39 = v18;
      v40 = 2048;
      v41 = v17;
      v42 = 2080;
      v43 = v19;
      v44 = 1024;
      v45 = v20;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEBUG, "%25s:%-5d VolumeCommand: Getting parameter '%s' to %f on processor type '%s' index %u", buf, 0x36u);
      if (v32 < 0)
      {
        operator delete(__p[0]);
      }

      if (v34 < 0)
      {
        operator delete(v33[0]);
      }
    }
  }

LABEL_20:
  v21 = a1[4];
  if (!v21)
  {
    return 0;
  }

  v22 = std::__shared_weak_count::lock(v21);
  if (!v22)
  {
    return 0;
  }

  v23 = v22;
  v24 = a1[3];
  if (v24)
  {
    v25 = (*(*v24 + 64))(v24, v5, v6, a2, 0);
  }

  else
  {
    v25 = 0;
  }

  sub_1A8C0(v23);
  return v25;
}

void sub_442DE0(_Unwind_Exception *exception_object)
{
  if (v2 < 0)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_442E20@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_2288C(v15);
  sub_22170(__p, 0x61787463u);
  if ((v14 & 0x80u) == 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if ((v14 & 0x80u) == 0)
  {
    v5 = v14;
  }

  else
  {
    v5 = __p[1];
  }

  sub_22564(&v16, v4, v5);
  sub_22564(&v16, " ", 1);
  if (a1[15])
  {
    v6 = *(a1[13] + 56);
  }

  v7 = std::ostream::operator<<();
  sub_22564(v7, " ", 1);
  v8 = (*(*a1 + 136))(a1);
  if (v8 == 1684234860)
  {
    v9 = "dB";
  }

  else
  {
    v9 = "Scalar";
  }

  if (v8 == 1684234860)
  {
    v10 = 2;
  }

  else
  {
    v10 = 6;
  }

  sub_22564(v7, v9, v10);
  sub_22564(v7, " ", 1);
  std::ostream::operator<<();
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  sub_8E878(a2, v15);
  v16 = v11;
  if (v19 < 0)
  {
    operator delete(v18[7].__locale_);
  }

  std::locale::~locale(v18);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_4430EC(unsigned int *a1, float a2)
{
  sub_5B898((a1 + 10), a2);
  v4 = v3;
  v5 = sub_5544(19);
  v6 = sub_5544(39);
  v7 = 0;
  *buf = 0x100000002;
  v8 = *(v5 + 8);
  while (1)
  {
    v9 = *&buf[v7];
    if (((v8 & v9) != 0) != ((*(v6 + 8) & v9) != 0))
    {
      break;
    }

    v7 += 4;
    if (v7 == 8)
    {
      goto LABEL_7;
    }
  }

  if ((v8 & v9) == 0)
  {
    v5 = v6;
  }

LABEL_7:
  v10 = *v5;
  if (v10 && os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    sub_E896C(__p, a1);
    if (v14 >= 0)
    {
      v11 = __p;
    }

    else
    {
      v11 = __p[0];
    }

    *buf = 136315906;
    *&buf[4] = "VolumeControl.h";
    v16 = 1024;
    v17 = 769;
    v18 = 2048;
    v19 = v4;
    v20 = 2080;
    v21 = v11;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_INFO, "%25s:%-5d Setting volume %.2f dB on chain '%s'.", buf, 0x26u);
    if (v14 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v12 = (*(*a1 + 320))(a1);
  sub_E8A40(a1, v12, a1[33], v4);
}

void sub_4432B4(uint64_t a1)
{
  sub_13EFE4(a1);

  operator delete();
}

void sub_44338C()
{
  if (v0)
  {
    std::__shared_weak_count::__release_weak(v0);
  }

  operator delete();
}

uint64_t sub_4433B0(uint64_t a1, uint64_t a2, std::__shared_weak_count *a3)
{
  if (a3)
  {
    atomic_fetch_add_explicit(&a3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  sub_276B90(a1, 1684234860, a2, a3);
  if (a3)
  {
    std::__shared_weak_count::__release_weak(a3);
  }

  *a1 = &off_6D58D0;
  *(a1 + 132) = 1;
  *(a1 + 136) = 0;
  *(a1 + 140) = 0;
  return a1;
}

void sub_443438(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_443468(uint64_t a1)
{
  sub_13EFE4(a1);

  operator delete();
}

void sub_443594()
{
  if (v0)
  {
    std::__shared_weak_count::__release_weak(v0);
    std::__shared_weak_count::__release_weak(v0);
  }

  operator delete();
}

void sub_443668()
{
  if (v0)
  {
    std::__shared_weak_count::__release_weak(v0);
  }

  operator delete();
}

uint64_t sub_44368C(uint64_t a1, int a2, int a3, __int128 *a4, uint64_t a5, std::__shared_weak_count *a6)
{
  v11 = *a4;
  v12 = *(a4 + 2);
  if (a6)
  {
    atomic_fetch_add_explicit(&a6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&a6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&a6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1498D0(a1, 1684234860, a5, a6);
  if (a6)
  {
    std::__shared_weak_count::__release_weak(a6);
    *a1 = off_6D4CB8;
    std::__shared_weak_count::__release_weak(a6);
    *a1 = &off_6D4B60;
    *(a1 + 132) = a2;
    *(a1 + 136) = a3;
    *(a1 + 140) = v11;
    *(a1 + 156) = v12;
    std::__shared_weak_count::__release_weak(a6);
  }

  else
  {
    *a1 = &off_6D4B60;
    *(a1 + 132) = a2;
    *(a1 + 136) = a3;
    *(a1 + 140) = v11;
    *(a1 + 156) = v12;
  }

  *a1 = &off_6D4A08;
  *(a1 + 164) = 0;
  return a1;
}

void sub_4437D8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
    std::__shared_weak_count::__release_weak(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_44381C(void *a1, float *a2)
{
  v4 = (a1 + 13);
  v5 = (*(*a1 + 320))(a1);
  v6 = (*(*a1 + 312))(a1);
  v7 = sub_275004(v4, v5, 0);
  if (a1 + 14 == v7)
  {
    v27 = sub_5544(14);
    v28 = *v27;
    if (*v27 && os_log_type_enabled(*v27, OS_LOG_TYPE_ERROR))
    {
      sub_22170(v33, v5);
      v29 = v34 >= 0 ? v33 : v33[0];
      *buf = 136315650;
      *&buf[4] = "VolumeControl.h";
      v36 = 1024;
      v37 = 521;
      v38 = 2080;
      v39 = v29;
      _os_log_impl(&dword_0, v28, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): VolumeCommand: Software volume processor of type '%s' does not exist", buf, 0x1Cu);
      if (v34 < 0)
      {
        operator delete(v33[0]);
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "VolumeCommand: Software volume processor of type '%s' does not exist");
  }

  v8 = v7;
  v9 = sub_5544(19);
  v10 = sub_5544(39);
  v11 = 0;
  *buf = 0x100000002;
  v12 = *(v9 + 8);
  while (1)
  {
    v13 = *&buf[v11];
    if (((v12 & v13) != 0) != ((*(v10 + 8) & v13) != 0))
    {
      break;
    }

    v11 += 4;
    if (v11 == 8)
    {
      if ((v12 & 1) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_10;
    }
  }

  if ((v12 & v13) == 0)
  {
    v9 = v10;
  }

  if (*(v9 + 8))
  {
LABEL_10:
    v14 = *v9;
    if (v14 && os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      sub_22170(v33, v6);
      v15 = v34;
      v16 = v33[0];
      v17 = *a2;
      sub_22170(__p, v5);
      v18 = v33;
      if (v15 < 0)
      {
        v18 = v16;
      }

      v19 = __p[0];
      v20 = *(v8 + 14);
      if (v32 >= 0)
      {
        v19 = __p;
      }

      *buf = 136316418;
      *&buf[4] = "VolumeControl.h";
      v36 = 1024;
      v37 = 525;
      v38 = 2080;
      v39 = v18;
      v40 = 2048;
      v41 = v17;
      v42 = 2080;
      v43 = v19;
      v44 = 1024;
      v45 = v20;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEBUG, "%25s:%-5d VolumeCommand: Getting parameter '%s' to %f on processor type '%s' index %u", buf, 0x36u);
      if (v32 < 0)
      {
        operator delete(__p[0]);
      }

      if (v34 < 0)
      {
        operator delete(v33[0]);
      }
    }
  }

LABEL_20:
  v21 = a1[4];
  if (!v21)
  {
    return 0;
  }

  v22 = std::__shared_weak_count::lock(v21);
  if (!v22)
  {
    return 0;
  }

  v23 = v22;
  v24 = a1[3];
  if (v24)
  {
    v25 = (*(*v24 + 64))(v24, v5, v6, a2, 0);
  }

  else
  {
    v25 = 0;
  }

  sub_1A8C0(v23);
  return v25;
}

void sub_443BEC(_Unwind_Exception *exception_object)
{
  if (v2 < 0)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_443C2C@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_2288C(v15);
  sub_22170(__p, 0x766F6C69u);
  if ((v14 & 0x80u) == 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if ((v14 & 0x80u) == 0)
  {
    v5 = v14;
  }

  else
  {
    v5 = __p[1];
  }

  sub_22564(&v16, v4, v5);
  sub_22564(&v16, " ", 1);
  if (a1[15])
  {
    v6 = *(a1[13] + 56);
  }

  v7 = std::ostream::operator<<();
  sub_22564(v7, " ", 1);
  v8 = (*(*a1 + 136))(a1);
  if (v8 == 1684234860)
  {
    v9 = "dB";
  }

  else
  {
    v9 = "Scalar";
  }

  if (v8 == 1684234860)
  {
    v10 = 2;
  }

  else
  {
    v10 = 6;
  }

  sub_22564(v7, v9, v10);
  sub_22564(v7, " ", 1);
  std::ostream::operator<<();
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  sub_8E878(a2, v15);
  v16 = v11;
  if (v19 < 0)
  {
    operator delete(v18[7].__locale_);
  }

  std::locale::~locale(v18);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

BOOL sub_443EE8(unsigned int *a1)
{
  v4 = 0.0;
  v2 = (*(*a1 + 320))(a1);
  sub_3DAB9C(a1, v2, a1[33], &v4);
  return (v4 + 120.0) > 0.00000011921;
}

void sub_443F70(uint64_t a1, int a2)
{
  v4 = (*(*a1 + 112))(a1);
  if (!a2 && v4 == 1)
  {
    v5 = (*(*a1 + 320))(a1);
    sub_3DAB9C(a1, v5, *(a1 + 132), (a1 + 164));
    v6 = sub_5544(39);
    v7 = *v6;
    if (*v6 && os_log_type_enabled(*v6, OS_LOG_TYPE_DEBUG))
    {
      v8 = *(a1 + 164);
      sub_E896C(__p, a1);
      if (v16 >= 0)
      {
        v9 = __p;
      }

      else
      {
        v9 = __p[0];
      }

      *buf = 136316162;
      v18 = "VolumeControl.h";
      v19 = 1024;
      v20 = 704;
      v21 = 2048;
      v22 = 0xC05E000000000000;
      v23 = 2048;
      v24 = v8;
      v25 = 2080;
      v26 = v9;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d Setting mute with volume %.2f dB, previous volume: %.2f on chain '%s'.", buf, 0x30u);
      if (v16 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v10 = -120.0;
LABEL_21:
    sub_4441F4(a1, v10);
    return;
  }

  if (a2 == 1 && !v4)
  {
    v11 = sub_5544(39);
    v12 = *v11;
    if (*v11 && os_log_type_enabled(*v11, OS_LOG_TYPE_DEBUG))
    {
      v13 = *(a1 + 164);
      sub_E896C(__p, a1);
      v14 = v16 >= 0 ? __p : __p[0];
      *buf = 136315906;
      v18 = "VolumeControl.h";
      v19 = 1024;
      v20 = 711;
      v21 = 2048;
      v22 = *&v13;
      v23 = 2080;
      v24 = *&v14;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEBUG, "%25s:%-5d Unmute with previous volume: %.2f on chain '%s'.", buf, 0x26u);
      if (v16 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v10 = *(a1 + 164);
    goto LABEL_21;
  }
}

void sub_4441F4(unsigned int *a1, float a2)
{
  v4 = sub_5544(19);
  v5 = sub_5544(39);
  v6 = 0;
  *buf = 0x100000002;
  v7 = *(v4 + 8);
  while (1)
  {
    v8 = *&buf[v6];
    if (((v7 & v8) != 0) != ((*(v5 + 8) & v8) != 0))
    {
      break;
    }

    v6 += 4;
    if (v6 == 8)
    {
      goto LABEL_7;
    }
  }

  if ((v7 & v8) == 0)
  {
    v4 = v5;
  }

LABEL_7:
  v9 = *v4;
  if (v9 && os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    sub_E896C(__p, a1);
    if (v13 >= 0)
    {
      v10 = __p;
    }

    else
    {
      v10 = __p[0];
    }

    *buf = 136315906;
    *&buf[4] = "VolumeControl.h";
    v15 = 1024;
    v16 = 581;
    v17 = 2048;
    v18 = a2;
    v19 = 2080;
    v20 = v10;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, "%25s:%-5d Setting volume %.2f for chain '%s'.", buf, 0x26u);
    if (v13 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v11 = (*(*a1 + 320))(a1);
  sub_E8A40(a1, v11, a1[33], a2);
}

void sub_4443C4(unsigned int *a1, unsigned int a2, int a3, float a4, float a5)
{
  v40 = a3;
  if (a1[35])
  {
    v10 = sub_5544(39);
    v11 = *v10;
    if (*v10 && os_log_type_enabled(*v10, OS_LOG_TYPE_DEFAULT))
    {
      if (a3)
      {
        v12 = "enabled";
      }

      else
      {
        v12 = "disabled";
      }

      v13 = v38;
      sub_22170(v38, a1[35]);
      if (v39 < 0)
      {
        v13 = v38[0];
      }

      sub_22170(v36, a2);
      v14 = v37;
      v15 = v36[0];
      sub_E896C(__p, a1);
      *&buf[4] = "VolumeControl.h";
      v16 = v36;
      if (v14 < 0)
      {
        v16 = v15;
      }

      *buf = 136316930;
      v42 = 1024;
      if (v35 >= 0)
      {
        v17 = __p;
      }

      else
      {
        v17 = __p[0];
      }

      v43 = 616;
      v44 = 2080;
      v45 = v12;
      v46 = 2080;
      v47 = v13;
      v48 = 2080;
      v49 = v16;
      v50 = 2048;
      v51 = a4;
      v52 = 2048;
      v53 = a5;
      v54 = 2080;
      v55 = v17;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Set Duck command  %s, mParameterID: '%s', type: '%s', gain: %f, time: %f, chain: '%s'.", buf, 0x4Eu);
      if (v35 < 0)
      {
        operator delete(__p[0]);
      }

      if (v37 < 0)
      {
        operator delete(v36[0]);
      }

      if (v39 < 0)
      {
        operator delete(v38[0]);
      }
    }

    if (a2 != 1)
    {
      v25 = sub_5544(14);
      v26 = *v25;
      if (*v25)
      {
        if (os_log_type_enabled(*v25, OS_LOG_TYPE_ERROR))
        {
          sub_22170(v38, a2);
          v27 = v39 >= 0 ? v38 : v38[0];
          *buf = 136315650;
          *&buf[4] = "VolumeControl.h";
          v42 = 1024;
          v43 = 618;
          v44 = 2080;
          v45 = v27;
          _os_log_impl(&dword_0, v26, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: duck type: '%s' not supported!", buf, 0x1Cu);
          if (v39 < 0)
          {
            operator delete(v38[0]);
          }
        }
      }
    }

    *buf = a1[36];
    v36[0] = CFNumberCreate(0, kCFNumberIntType, buf);
    if (!v36[0])
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
    }

    *buf = a1[37];
    __p[0] = CFNumberCreate(0, kCFNumberIntType, buf);
    if (!__p[0])
    {
      v29 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v29, "Could not construct");
    }

    *buf = a1[38];
    cf = CFNumberCreate(0, kCFNumberIntType, buf);
    if (!cf)
    {
      v30 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v30, "Could not construct");
    }

    v18 = a5 * 1000.0;
    v19 = a1[39];
    if (a1[40] != 1)
    {
      v18 = a5;
    }

    v32 = v18;
    if (v19 == 1)
    {
      a4 = log10f(a4) * 20.0;
    }

    v31 = a4;
    sub_2759A8(buf, v36[0], &v40);
    sub_275A8C((&v43 + 2), __p[0], &v31);
    sub_275A8C((&v47 + 2), cf, &v32);
    v38[0] = buf;
    v38[1] = &dword_0 + 3;
    v20 = sub_69CE8(v38);
    for (i = 0; i != -6; i -= 2)
    {
      v22 = (&v49)[i];
      if (v22)
      {
        CFRelease(v22);
      }

      v23 = *(&(&v47)[i] + 2);
      if (v23)
      {
        CFRelease(v23);
      }
    }

    *buf = v20;
    v24 = (*(*a1 + 320))(a1);
    sub_3DE5A4(a1, v24, a1[35]);
    CFRelease(v20);
    if (cf)
    {
      CFRelease(cf);
    }

    if (__p[0])
    {
      CFRelease(__p[0]);
    }

    if (v36[0])
    {
      CFRelease(v36[0]);
    }
  }
}

void sub_4448B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, char a32)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  _Unwind_Resume(exception_object);
}

void sub_4449FC(uint64_t a1)
{
  sub_13EFE4(a1);

  operator delete();
}

BOOL sub_444A38(unsigned int *a1)
{
  v4 = 0.0;
  v2 = (*(*a1 + 320))(a1);
  sub_3DAB9C(a1, v2, a1[34], &v4);
  return v4 == 0.0;
}

void sub_444AB0(unsigned int *a1, int a2)
{
  if ((*(*a1 + 320))(a1) != 1685287015 || a1[34])
  {
    if (a2)
    {
      v4 = 0.0;
    }

    else
    {
      v4 = 1.0;
    }

    v5 = sub_5544(19);
    v6 = sub_5544(39);
    v7 = 0;
    *buf = 0x100000002;
    v8 = *(v5 + 8);
    while (1)
    {
      v9 = *&buf[v7];
      if (((v8 & v9) != 0) != ((*(v6 + 8) & v9) != 0))
      {
        break;
      }

      v7 += 4;
      if (v7 == 8)
      {
        goto LABEL_12;
      }
    }

    if ((v8 & v9) == 0)
    {
      v5 = v6;
    }

LABEL_12:
    v10 = *v5;
    if (v10 && os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      sub_E896C(__p, a1);
      if (v14 >= 0)
      {
        v11 = __p;
      }

      else
      {
        v11 = __p[0];
      }

      *buf = 136315906;
      *&buf[4] = "VolumeControl.h";
      v16 = 1024;
      v17 = 594;
      v18 = 2048;
      v19 = v4;
      v20 = 2080;
      v21 = v11;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_INFO, "%25s:%-5d Setting mute value: %.2f for chain '%s'.", buf, 0x26u);
      if (v14 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v12 = (*(*a1 + 320))(a1);
    sub_E8A40(a1, v12, a1[34], v4);
  }
}

void sub_444CC4(uint64_t a1)
{
  sub_13EFE4(a1);

  operator delete();
}

void sub_444DB0()
{
  if (v0)
  {
    std::__shared_weak_count::__release_weak(v0);
  }

  operator delete();
}

uint64_t sub_444DD4(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5, std::__shared_weak_count *a6)
{
  v9 = *a4;
  v10 = *(a4 + 16);
  if (a6)
  {
    atomic_fetch_add_explicit(&a6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  sub_276438(a1, 1684234860, a2, a3, &v9, a5, a6);
  if (a6)
  {
    std::__shared_weak_count::__release_weak(a6);
  }

  *a1 = &off_6D4E10;
  *(a1 + 164) = 0;
  return a1;
}

void sub_444E78(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_444E98(uint64_t a1)
{
  sub_13EFE4(a1);

  operator delete();
}

void sub_444FD8()
{
  if (v0)
  {
    std::__shared_weak_count::__release_weak(v0);
    std::__shared_weak_count::__release_weak(v0);
    std::__shared_weak_count::__release_weak(v0);
  }

  operator delete();
}

uint64_t sub_445020(void *a1, float *a2)
{
  v4 = (a1 + 13);
  v5 = (*(*a1 + 320))(a1);
  v6 = (*(*a1 + 312))(a1);
  v7 = sub_275004(v4, v5, 0);
  if (a1 + 14 == v7)
  {
    v27 = sub_5544(14);
    v28 = *v27;
    if (*v27 && os_log_type_enabled(*v27, OS_LOG_TYPE_ERROR))
    {
      sub_22170(v33, v5);
      v29 = v34 >= 0 ? v33 : v33[0];
      *buf = 136315650;
      *&buf[4] = "VolumeControl.h";
      v36 = 1024;
      v37 = 521;
      v38 = 2080;
      v39 = v29;
      _os_log_impl(&dword_0, v28, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): VolumeCommand: Software volume processor of type '%s' does not exist", buf, 0x1Cu);
      if (v34 < 0)
      {
        operator delete(v33[0]);
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "VolumeCommand: Software volume processor of type '%s' does not exist");
  }

  v8 = v7;
  v9 = sub_5544(19);
  v10 = sub_5544(39);
  v11 = 0;
  *buf = 0x100000002;
  v12 = *(v9 + 8);
  while (1)
  {
    v13 = *&buf[v11];
    if (((v12 & v13) != 0) != ((*(v10 + 8) & v13) != 0))
    {
      break;
    }

    v11 += 4;
    if (v11 == 8)
    {
      if ((v12 & 1) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_10;
    }
  }

  if ((v12 & v13) == 0)
  {
    v9 = v10;
  }

  if (*(v9 + 8))
  {
LABEL_10:
    v14 = *v9;
    if (v14 && os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      sub_22170(v33, v6);
      v15 = v34;
      v16 = v33[0];
      v17 = *a2;
      sub_22170(__p, v5);
      v18 = v33;
      if (v15 < 0)
      {
        v18 = v16;
      }

      v19 = __p[0];
      v20 = *(v8 + 14);
      if (v32 >= 0)
      {
        v19 = __p;
      }

      *buf = 136316418;
      *&buf[4] = "VolumeControl.h";
      v36 = 1024;
      v37 = 525;
      v38 = 2080;
      v39 = v18;
      v40 = 2048;
      v41 = v17;
      v42 = 2080;
      v43 = v19;
      v44 = 1024;
      v45 = v20;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEBUG, "%25s:%-5d VolumeCommand: Getting parameter '%s' to %f on processor type '%s' index %u", buf, 0x36u);
      if (v32 < 0)
      {
        operator delete(__p[0]);
      }

      if (v34 < 0)
      {
        operator delete(v33[0]);
      }
    }
  }

LABEL_20:
  v21 = a1[4];
  if (!v21)
  {
    return 0;
  }

  v22 = std::__shared_weak_count::lock(v21);
  if (!v22)
  {
    return 0;
  }

  v23 = v22;
  v24 = a1[3];
  if (v24)
  {
    v25 = (*(*v24 + 64))(v24, v5, v6, a2, 0);
  }

  else
  {
    v25 = 0;
  }

  sub_1A8C0(v23);
  return v25;
}

void sub_4453F0(_Unwind_Exception *exception_object)
{
  if (v2 < 0)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_445430@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_2288C(v15);
  sub_22170(__p, 0x73706C6Du);
  if ((v14 & 0x80u) == 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if ((v14 & 0x80u) == 0)
  {
    v5 = v14;
  }

  else
  {
    v5 = __p[1];
  }

  sub_22564(&v16, v4, v5);
  sub_22564(&v16, " ", 1);
  if (a1[15])
  {
    v6 = *(a1[13] + 56);
  }

  v7 = std::ostream::operator<<();
  sub_22564(v7, " ", 1);
  v8 = (*(*a1 + 136))(a1);
  if (v8 == 1684234860)
  {
    v9 = "dB";
  }

  else
  {
    v9 = "Scalar";
  }

  if (v8 == 1684234860)
  {
    v10 = 2;
  }

  else
  {
    v10 = 6;
  }

  sub_22564(v7, v9, v10);
  sub_22564(v7, " ", 1);
  std::ostream::operator<<();
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  sub_8E878(a2, v15);
  v16 = v11;
  if (v19 < 0)
  {
    operator delete(v18[7].__locale_);
  }

  std::locale::~locale(v18);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_44571C(uint64_t a1, int a2)
{
  v4 = sub_5544(19);
  v5 = sub_5544(39);
  v6 = 0;
  *buf = 0x100000002;
  v7 = *(v4 + 8);
  while (1)
  {
    v8 = *&buf[v6];
    if (((v7 & v8) != 0) != ((*(v5 + 8) & v8) != 0))
    {
      break;
    }

    v6 += 4;
    if (v6 == 8)
    {
      goto LABEL_7;
    }
  }

  if ((v7 & v8) == 0)
  {
    v4 = v5;
  }

LABEL_7:
  v9 = *v4;
  if (v9 && os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = a2 ? "Unmute" : "Mute";
    sub_E896C(__p, a1);
    v11 = v14 >= 0 ? __p : __p[0];
    *buf = 136316162;
    *&buf[4] = "VolumeControl.h";
    v16 = 1024;
    v17 = 999;
    v18 = 2080;
    v19 = v10;
    v20 = 2048;
    v21 = a1;
    v22 = 2080;
    v23 = v11;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEBUG, "%25s:%-5d PlaybackDosimetry : %s AUSPL %p on chain '%s'.", buf, 0x30u);
    if (v14 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (a2 != 1)
  {
    v12 = (*(*a1 + 320))(a1);
    sub_E8A40(a1, v12, 0, -3.4028e38);
  }
}

void sub_44591C(uint64_t a1, float a2, float a3)
{
  v6 = sub_5544(19);
  v7 = sub_5544(39);
  v8 = 0;
  *buf = 0x100000002;
  v9 = *(v6 + 8);
  while (1)
  {
    v10 = *&buf[v8];
    if (((v9 & v10) != 0) != ((*(v7 + 8) & v10) != 0))
    {
      break;
    }

    v8 += 4;
    if (v8 == 8)
    {
      goto LABEL_7;
    }
  }

  if ((v9 & v10) == 0)
  {
    v6 = v7;
  }

LABEL_7:
  v11 = *v6;
  if (v11 && os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    sub_E896C(__p, a1);
    if (v16 >= 0)
    {
      v12 = __p;
    }

    else
    {
      v12 = __p[0];
    }

    *buf = 136316162;
    *&buf[4] = "VolumeControl.h";
    v18 = 1024;
    v19 = 964;
    v20 = 2048;
    v21 = a2;
    v22 = 2048;
    v23 = a1;
    v24 = 2080;
    v25 = v12;
    _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEBUG, "%25s:%-5d PlaybackDosimetry : Changing Volume : %.2fdB %p on chain '%s'.", buf, 0x30u);
    if (v16 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v13 = (*(*a1 + 320))(a1);
  sub_E8A40(a1, v13, 0, a2);
  v14 = (*(*a1 + 320))(a1);
  sub_E8A40(a1, v14, 12, a3);
}

void sub_445B44(uint64_t a1)
{
  sub_13EFE4(a1);

  operator delete();
}

void sub_445CFC()
{
  if (v0)
  {
    std::__shared_weak_count::__release_weak(v0);
    std::__shared_weak_count::__release_weak(v0);
    std::__shared_weak_count::__release_weak(v0);
    std::__shared_weak_count::__release_weak(v0);
  }

  operator delete();
}

uint64_t sub_445D54(void *a1, float *a2)
{
  v4 = (a1 + 13);
  v5 = (*(*a1 + 320))(a1);
  v6 = (*(*a1 + 312))(a1);
  v7 = sub_275004(v4, v5, 0);
  if (a1 + 14 == v7)
  {
    v27 = sub_5544(14);
    v28 = *v27;
    if (*v27 && os_log_type_enabled(*v27, OS_LOG_TYPE_ERROR))
    {
      sub_22170(v33, v5);
      v29 = v34 >= 0 ? v33 : v33[0];
      *buf = 136315650;
      *&buf[4] = "VolumeControl.h";
      v36 = 1024;
      v37 = 521;
      v38 = 2080;
      v39 = v29;
      _os_log_impl(&dword_0, v28, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): VolumeCommand: Software volume processor of type '%s' does not exist", buf, 0x1Cu);
      if (v34 < 0)
      {
        operator delete(v33[0]);
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "VolumeCommand: Software volume processor of type '%s' does not exist");
  }

  v8 = v7;
  v9 = sub_5544(19);
  v10 = sub_5544(39);
  v11 = 0;
  *buf = 0x100000002;
  v12 = *(v9 + 8);
  while (1)
  {
    v13 = *&buf[v11];
    if (((v12 & v13) != 0) != ((*(v10 + 8) & v13) != 0))
    {
      break;
    }

    v11 += 4;
    if (v11 == 8)
    {
      if ((v12 & 1) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_10;
    }
  }

  if ((v12 & v13) == 0)
  {
    v9 = v10;
  }

  if (*(v9 + 8))
  {
LABEL_10:
    v14 = *v9;
    if (v14 && os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      sub_22170(v33, v6);
      v15 = v34;
      v16 = v33[0];
      v17 = *a2;
      sub_22170(__p, v5);
      v18 = v33;
      if (v15 < 0)
      {
        v18 = v16;
      }

      v19 = __p[0];
      v20 = *(v8 + 14);
      if (v32 >= 0)
      {
        v19 = __p;
      }

      *buf = 136316418;
      *&buf[4] = "VolumeControl.h";
      v36 = 1024;
      v37 = 525;
      v38 = 2080;
      v39 = v18;
      v40 = 2048;
      v41 = v17;
      v42 = 2080;
      v43 = v19;
      v44 = 1024;
      v45 = v20;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEBUG, "%25s:%-5d VolumeCommand: Getting parameter '%s' to %f on processor type '%s' index %u", buf, 0x36u);
      if (v32 < 0)
      {
        operator delete(__p[0]);
      }

      if (v34 < 0)
      {
        operator delete(v33[0]);
      }
    }
  }

LABEL_20:
  v21 = a1[4];
  if (!v21)
  {
    return 0;
  }

  v22 = std::__shared_weak_count::lock(v21);
  if (!v22)
  {
    return 0;
  }

  v23 = v22;
  v24 = a1[3];
  if (v24)
  {
    v25 = (*(*v24 + 64))(v24, v5, v6, a2, 0);
  }

  else
  {
    v25 = 0;
  }

  sub_1A8C0(v23);
  return v25;
}

void sub_446124(_Unwind_Exception *exception_object)
{
  if (v2 < 0)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_446164@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_2288C(v15);
  sub_22170(__p, 0x63706D31u);
  if ((v14 & 0x80u) == 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if ((v14 & 0x80u) == 0)
  {
    v5 = v14;
  }

  else
  {
    v5 = __p[1];
  }

  sub_22564(&v16, v4, v5);
  sub_22564(&v16, " ", 1);
  if (a1[15])
  {
    v6 = *(a1[13] + 56);
  }

  v7 = std::ostream::operator<<();
  sub_22564(v7, " ", 1);
  v8 = (*(*a1 + 136))(a1);
  if (v8 == 1684234860)
  {
    v9 = "dB";
  }

  else
  {
    v9 = "Scalar";
  }

  if (v8 == 1684234860)
  {
    v10 = 2;
  }

  else
  {
    v10 = 6;
  }

  sub_22564(v7, v9, v10);
  sub_22564(v7, " ", 1);
  std::ostream::operator<<();
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  sub_8E878(a2, v15);
  v16 = v11;
  if (v19 < 0)
  {
    operator delete(v18[7].__locale_);
  }

  std::locale::~locale(v18);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_446440(unsigned int *a1, unsigned int a2, int a3, float a4, float a5)
{
  v40 = a3;
  if (a1[35])
  {
    v10 = sub_5544(39);
    v11 = *v10;
    if (*v10 && os_log_type_enabled(*v10, OS_LOG_TYPE_DEFAULT))
    {
      if (a3)
      {
        v12 = "enabled";
      }

      else
      {
        v12 = "disabled";
      }

      v13 = v38;
      sub_22170(v38, a1[35]);
      if (v39 < 0)
      {
        v13 = v38[0];
      }

      sub_22170(v36, a2);
      v14 = v37;
      v15 = v36[0];
      sub_E896C(__p, a1);
      *&buf[4] = "VolumeControl.h";
      v16 = v36;
      if (v14 < 0)
      {
        v16 = v15;
      }

      *buf = 136316930;
      v42 = 1024;
      if (v35 >= 0)
      {
        v17 = __p;
      }

      else
      {
        v17 = __p[0];
      }

      v43 = 616;
      v44 = 2080;
      v45 = v12;
      v46 = 2080;
      v47 = v13;
      v48 = 2080;
      v49 = v16;
      v50 = 2048;
      v51 = a4;
      v52 = 2048;
      v53 = a5;
      v54 = 2080;
      v55 = v17;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Set Duck command  %s, mParameterID: '%s', type: '%s', gain: %f, time: %f, chain: '%s'.", buf, 0x4Eu);
      if (v35 < 0)
      {
        operator delete(__p[0]);
      }

      if (v37 < 0)
      {
        operator delete(v36[0]);
      }

      if (v39 < 0)
      {
        operator delete(v38[0]);
      }
    }

    if (a2 != 1)
    {
      v25 = sub_5544(14);
      v26 = *v25;
      if (*v25)
      {
        if (os_log_type_enabled(*v25, OS_LOG_TYPE_ERROR))
        {
          sub_22170(v38, a2);
          v27 = v39 >= 0 ? v38 : v38[0];
          *buf = 136315650;
          *&buf[4] = "VolumeControl.h";
          v42 = 1024;
          v43 = 618;
          v44 = 2080;
          v45 = v27;
          _os_log_impl(&dword_0, v26, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: duck type: '%s' not supported!", buf, 0x1Cu);
          if (v39 < 0)
          {
            operator delete(v38[0]);
          }
        }
      }
    }

    *buf = a1[36];
    v36[0] = CFNumberCreate(0, kCFNumberIntType, buf);
    if (!v36[0])
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
    }

    *buf = a1[37];
    __p[0] = CFNumberCreate(0, kCFNumberIntType, buf);
    if (!__p[0])
    {
      v29 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v29, "Could not construct");
    }

    *buf = a1[38];
    cf = CFNumberCreate(0, kCFNumberIntType, buf);
    if (!cf)
    {
      v30 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v30, "Could not construct");
    }

    v18 = a5 * 1000.0;
    v19 = a1[39];
    if (a1[40] != 1)
    {
      v18 = a5;
    }

    v32 = v18;
    if (v19 == 1)
    {
      a4 = log10f(a4) * 20.0;
    }

    v31 = a4;
    sub_2759A8(buf, v36[0], &v40);
    sub_275A8C((&v43 + 2), __p[0], &v31);
    sub_275A8C((&v47 + 2), cf, &v32);
    v38[0] = buf;
    v38[1] = &dword_0 + 3;
    v20 = sub_69CE8(v38);
    for (i = 0; i != -6; i -= 2)
    {
      v22 = (&v49)[i];
      if (v22)
      {
        CFRelease(v22);
      }

      v23 = *(&(&v47)[i] + 2);
      if (v23)
      {
        CFRelease(v23);
      }
    }

    *buf = v20;
    v24 = (*(*a1 + 320))(a1);
    sub_3DE5A4(a1, v24, a1[35]);
    CFRelease(v20);
    if (cf)
    {
      CFRelease(cf);
    }

    if (__p[0])
    {
      CFRelease(__p[0]);
    }

    if (v36[0])
    {
      CFRelease(v36[0]);
    }
  }
}

void sub_446930(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, char a32)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  _Unwind_Resume(exception_object);
}

void sub_446A78(unsigned int *a1, float a2)
{
  v4 = sub_5544(19);
  v5 = sub_5544(39);
  v6 = 0;
  *buf = 0x100000002;
  v7 = *(v4 + 8);
  while (1)
  {
    v8 = *&buf[v6];
    if (((v7 & v8) != 0) != ((*(v5 + 8) & v8) != 0))
    {
      break;
    }

    v6 += 4;
    if (v6 == 8)
    {
      goto LABEL_7;
    }
  }

  if ((v7 & v8) == 0)
  {
    v4 = v5;
  }

LABEL_7:
  v9 = *v4;
  if (v9 && os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    sub_E896C(__p, a1);
    if (v13 >= 0)
    {
      v10 = __p;
    }

    else
    {
      v10 = __p[0];
    }

    *buf = 136315906;
    *&buf[4] = "VolumeControl.h";
    v15 = 1024;
    v16 = 581;
    v17 = 2048;
    v18 = a2;
    v19 = 2080;
    v20 = v10;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, "%25s:%-5d Setting volume %.2f for chain '%s'.", buf, 0x26u);
    if (v13 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v11 = (*(*a1 + 320))(a1);
  sub_E8A40(a1, v11, a1[33], a2);
}

void sub_446C38(uint64_t a1)
{
  sub_13EFE4(a1);

  operator delete();
}

BOOL sub_446C74(unsigned int *a1)
{
  v4 = 0.0;
  v2 = (*(*a1 + 320))(a1);
  sub_3DAB9C(a1, v2, a1[34], &v4);
  return v4 == 0.0;
}

void sub_446CEC(unsigned int *a1, int a2)
{
  if ((*(*a1 + 320))(a1) != 1685287015 || a1[34])
  {
    if (a2)
    {
      v4 = 0.0;
    }

    else
    {
      v4 = 1.0;
    }

    v5 = sub_5544(19);
    v6 = sub_5544(39);
    v7 = 0;
    *buf = 0x100000002;
    v8 = *(v5 + 8);
    while (1)
    {
      v9 = *&buf[v7];
      if (((v8 & v9) != 0) != ((*(v6 + 8) & v9) != 0))
      {
        break;
      }

      v7 += 4;
      if (v7 == 8)
      {
        goto LABEL_12;
      }
    }

    if ((v8 & v9) == 0)
    {
      v5 = v6;
    }

LABEL_12:
    v10 = *v5;
    if (v10 && os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      sub_E896C(__p, a1);
      if (v14 >= 0)
      {
        v11 = __p;
      }

      else
      {
        v11 = __p[0];
      }

      *buf = 136315906;
      *&buf[4] = "VolumeControl.h";
      v16 = 1024;
      v17 = 594;
      v18 = 2048;
      v19 = v4;
      v20 = 2080;
      v21 = v11;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_INFO, "%25s:%-5d Setting mute value: %.2f for chain '%s'.", buf, 0x26u);
      if (v14 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v12 = (*(*a1 + 320))(a1);
    sub_E8A40(a1, v12, a1[34], v4);
  }
}

void sub_446F00(uint64_t a1)
{
  sub_13EFE4(a1);

  operator delete();
}

void sub_446F44(uint64_t a1)
{
  if (*(a1 + 112))
  {
    operator new();
  }

  sub_1EC054();
}

void sub_44715C()
{
  sub_13EFE4(v0);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

void sub_4471BC(uint64_t a1)
{
  if (*(a1 + 112))
  {
    operator new();
  }

  sub_1EC054();
}

void sub_4473DC()
{
  sub_13EFE4(v0);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

void sub_4474D4()
{
  if (v0)
  {
    std::__shared_weak_count::__release_weak(v0);
  }

  operator delete();
}

void sub_447590()
{
  if (v0)
  {
    std::__shared_weak_count::__release_weak(v0);
  }

  operator delete();
}

uint64_t sub_4475B4()
{
  if ((atomic_load_explicit(&qword_6FD5F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6FD5F0))
  {
    v1 = sub_DD858();
    if (v1 && (MGGetBoolAnswer() & 1) == 0 && sub_71704())
    {
      MGGetBoolAnswer();
    }

    byte_6FD5E8 = v1 != 0;
    __cxa_guard_release(&qword_6FD5F0);
  }

  return byte_6FD5E8 ^ 1u;
}

BOOL sub_447660()
{
  if ((atomic_load_explicit(&qword_6FD600, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6FD600))
  {
    v1 = sub_DD858();
    v2 = sub_1192CC(v1);
    v3 = qword_6FD630;
    if (v2 == 3)
    {
      v3 = 0;
    }

    dword_6FD5F8 = v3;
    __cxa_guard_release(&qword_6FD600);
  }

  return dword_6FD5F8 == 1;
}

BOOL sub_4476F0(int a1, int a2)
{
  v2 = xmmword_6FD610;
  if (!xmmword_6FD610)
  {
    return 0;
  }

  while (1)
  {
    v4 = *(v2 + 8);
    if (v4 <= a2)
    {
      break;
    }

LABEL_6:
    v2 = *v2;
    if (!v2)
    {
      return 0;
    }
  }

  if (v4 < a2)
  {
    ++v2;
    goto LABEL_6;
  }

  v6 = sub_2806FC(a2);
  v7 = 4;
  if (!a1)
  {
    v7 = 1;
  }

  v8 = 3;
  if (!a1)
  {
    v8 = 0;
  }

  return v6[v7] != v6[v8];
}

void sub_44777C(int a1)
{
  if (a1 <= 2027)
  {
    switch(a1)
    {
      case 0:
      case 1:
      case 2:
      case 3:
      case 4:
      case 5:
      case 6:
      case 7:
      case 8:
      case 11:
      case 12:
      case 13:
      case 14:
      case 15:
      case 16:
      case 21:
      case 22:
      case 23:
      case 24:
      case 25:
      case 44:
      case 47:
      case 48:
      case 49:
      case 50:
      case 51:
      case 52:
      case 53:
      case 54:
      case 55:
      case 56:
      case 57:
      case 58:
      case 59:
      case 60:
      case 61:
      case 62:
      case 63:
      case 64:
      case 65:
      case 66:
      case 67:
      case 68:
      case 69:
      case 70:
      case 71:
      case 72:
      case 76:
      case 79:
      case 82:
      case 89:
      case 108:
      case 109:
      case 110:
      case 111:
      case 112:
      case 113:
      case 114:
      case 115:
      case 116:
      case 117:
      case 118:
      case 119:
      case 120:
      case 121:
      case 122:
      case 123:
      case 124:
      case 125:
      case 126:
      case 127:
      case 128:
      case 129:
      case 130:
      case 131:
      case 132:
      case 133:
      case 136:
      case 137:
      case 142:
      case 143:
      case 144:
      case 145:
      case 170:
      case 171:
      case 172:
      case 173:
      case 174:
      case 175:
      case 176:
      case 178:
      case 183:
      case 184:
      case 186:
      case 187:
      case 188:
      case 189:
      case 190:
      case 191:
      case 193:
      case 194:
      case 197:
      case 199:
        goto LABEL_16;
      case 9:
      case 10:
      case 17:
      case 18:
      case 19:
      case 20:
      case 27:
      case 28:
      case 32:
      case 33:
      case 34:
      case 35:
      case 36:
      case 37:
      case 38:
      case 39:
      case 40:
      case 41:
      case 45:
      case 46:
      case 180:
        goto LABEL_60;
      case 26:
        qmemcpy(v35, "0Vps0Ips1Vps1Ips1DPs", 20);
        v25 = 0;
        v26 = 0;
        v24 = 0;
        sub_4625C(&v24, v35, &v35[1] + 4, 5uLL);
        v8 = v24;
        sub_4482D4(v24, v25);
        goto LABEL_61;
      case 29:
      case 30:
      case 42:
      case 43:
        goto LABEL_30;
      case 31:
        qmemcpy(v35, "0Vps0Ips1Vps1Ips0DPs", 20);
        v16 = 0;
        v17 = 0;
        v15 = 0;
        sub_4625C(&v15, v35, &v35[1] + 4, 5uLL);
        v8 = v15;
        sub_4482D4(v15, v16);
        goto LABEL_61;
      case 73:
      case 74:
      case 75:
        xmmword_6FD610 = 0u;
        qword_6FD608 = &xmmword_6FD610;
        xmmword_6FD620 = xmmword_517510;
        qword_6FD630 = 0x100000000;
        dword_6FD638 = sub_4475B4();
        sub_16040C(&dword_6FD640, 6u);
        return;
      case 77:
      case 78:
      case 80:
      case 81:
      case 83:
      case 84:
      case 85:
      case 86:
      case 90:
      case 91:
      case 92:
      case 93:
      case 94:
      case 95:
      case 98:
      case 99:
        goto LABEL_38;
      case 87:
      case 88:

        sub_448908();
        return;
      case 96:
      case 97:
      case 100:
      case 101:
      case 104:
      case 105:
      case 106:
      case 107:
        goto LABEL_19;
      case 102:
      case 103:
        goto LABEL_49;
      case 134:
      case 135:
      case 138:
      case 139:
      case 140:
      case 141:
      case 146:
      case 147:
      case 148:
      case 149:
      case 150:
      case 151:
      case 152:
      case 153:
      case 154:
      case 155:
      case 156:
      case 157:
      case 158:
      case 159:
      case 161:
      case 162:
      case 163:
      case 164:
      case 165:
      case 166:
      case 167:
      case 168:
      case 182:
        xmmword_6FD610 = 0uLL;
        qword_6FD608 = &xmmword_6FD610;
        LODWORD(xmmword_6FD620) = 0;
        if (sub_45168())
        {
          v2 = 4;
        }

        else
        {
          v2 = 1;
        }

        DWORD1(xmmword_6FD620) = v2;
        *(&xmmword_6FD620 + 8) = xmmword_5174F0;
        dword_6FD638 = sub_4475B4();
        sub_16040C(&dword_6FD640, 6u);
        return;
      case 160:
      case 169:
        goto LABEL_12;
      case 177:
      case 181:
      case 185:
        xmmword_6FD610 = 0u;
        qword_6FD608 = &xmmword_6FD610;
        xmmword_6FD620 = xmmword_5174F0;
        qword_6FD630 = 0x100000000;
        dword_6FD638 = sub_4475B4();
        sub_16040C(&dword_6FD640, 6u);
        return;
      case 179:
        v35[0] = xmmword_5174E0;
        v13 = 0;
        v14 = 0;
        v12 = 0;
        sub_4625C(&v12, v35, &v35[1], 4uLL);
        v8 = v12;
        sub_4482D4(v12, v13);
        goto LABEL_61;
      case 192:
        goto LABEL_36;
      case 195:
      case 196:
        sub_448594();
        dword_6FD638 = 0;
        LODWORD(xmmword_6FD620) = 2;
        return;
      case 198:
        xmmword_6FD610 = 0u;
        qword_6FD608 = &xmmword_6FD610;
        xmmword_6FD620 = xmmword_5174F0;
        qword_6FD630 = 0x100000000;
        dword_6FD638 = sub_4475B4();
        sub_16040C(&dword_6FD640, 6u);
        return;
      default:
        if ((a1 - 2025) < 2)
        {
          goto LABEL_38;
        }

        if (a1 != 2027)
        {
          goto LABEL_16;
        }

LABEL_49:
        qmemcpy(v27, "0Vps0Ips1Vps1Ips2Vps2Ips3Vps3Ips", sizeof(v27));
        v30 = 0;
        v31 = 0;
        v29 = 0;
        sub_4625C(&v29, v27, v28, 8uLL);
        v33 = 0;
        v34 = 0;
        v32 = 0;
        v10 = sub_4481C4(v35, 2, &v29);
        sub_448250(v10, 1);
        LODWORD(xmmword_6FD620) = 2;
        if (sub_45168())
        {
          v11 = 3;
        }

        else
        {
          v11 = 2;
        }

        DWORD1(xmmword_6FD620) = v11;
        *(&xmmword_6FD620 + 8) = xmmword_5174F0;
        dword_6FD638 = sub_4475B4();
        sub_16040C(&dword_6FD640, 6u);
        break;
    }

LABEL_53:
    if (*&v35[2])
    {
      *(&v35[2] + 1) = *&v35[2];
      operator delete(*&v35[2]);
    }

    if (*(&v35[0] + 1))
    {
      *&v35[1] = *(&v35[0] + 1);
      operator delete(*(&v35[0] + 1));
    }

    v7 = v29;
    if (!v29)
    {
      return;
    }

LABEL_63:
    operator delete(v7);
    return;
  }

  if (a1 <= 8009)
  {
    if (a1 > 4013)
    {
      if ((a1 - 4014) < 4)
      {
        *&v27[0] = 0x7370493073705630;
        v30 = 0;
        v31 = 0;
        v29 = 0;
        sub_4625C(&v29, v27, v27 + 8, 2uLL);
        v33 = 0;
        v34 = 0;
        v32 = 0;
        v9 = sub_4481C4(v35, 0, &v29);
        sub_448250(v9, 1);
        xmmword_6FD620 = xmmword_517520;
        qword_6FD630 = 0x100000000;
        dword_6FD638 = sub_4475B4();
        sub_16040C(&dword_6FD640, 6u);
        goto LABEL_53;
      }
    }

    else
    {
      if ((a1 - 2028) < 2)
      {
LABEL_19:
        qmemcpy(v35, "0Vps0Ips1Vps1Ips2Vps2Ips3Vps3Ips4Vps4Ips5Vps5Ips6Vps6Ips7Vps7Ips", sizeof(v35));
        memset(v27, 0, 24);
        sub_4625C(v27, v35, &v36, 0x10uLL);
        v28[0] = 0;
        v28[1] = 0;
        *(&v27[1] + 1) = 0;
        v5 = sub_4481C4(&v29, 2, v27);
        sub_448250(v5, 1);
        LODWORD(xmmword_6FD620) = 2;
        if (sub_45168())
        {
          v6 = 3;
        }

        else
        {
          v6 = 2;
        }

        DWORD1(xmmword_6FD620) = v6;
        *(&xmmword_6FD620 + 8) = xmmword_517500;
        dword_6FD638 = 0;
        sub_16040C(&dword_6FD640, 6u);
        if (v33)
        {
          v34 = v33;
          operator delete(v33);
        }

        if (v30)
        {
          v31 = v30;
          operator delete(v30);
        }

        v7 = *&v27[0];
        if (!*&v27[0])
        {
          return;
        }

        goto LABEL_63;
      }

      if ((a1 - 2030) < 2)
      {
LABEL_38:

        sub_4487A0();
        return;
      }

      if (a1 == 4013)
      {
LABEL_12:
        v27[0] = xmmword_5174E0;
        v30 = 0;
        v31 = 0;
        v29 = 0;
        sub_4625C(&v29, v27, &v27[1], 4uLL);
        v33 = 0;
        v34 = 0;
        v32 = 0;
        v3 = sub_4481C4(v35, 2, &v29);
        sub_448250(v3, 1);
        LODWORD(xmmword_6FD620) = 2;
        if (sub_45168())
        {
          v4 = 3;
        }

        else
        {
          v4 = 2;
        }

        DWORD1(xmmword_6FD620) = v4;
        *(&xmmword_6FD620 + 1) = 0x100000000;
        LODWORD(qword_6FD630) = a1 == 160;
        HIDWORD(qword_6FD630) = 1;
        dword_6FD638 = sub_4475B4();
        sub_16040C(&dword_6FD640, 6u);
        goto LABEL_53;
      }
    }

LABEL_16:

    sub_448A74();
    return;
  }

  if (a1 <= 8023)
  {
    if ((a1 - 8021) >= 3)
    {
      if (a1 != 8010)
      {
        goto LABEL_16;
      }

LABEL_60:
      v35[0] = xmmword_5174E0;
      v22 = 0;
      v23 = 0;
      v21 = 0;
      sub_4625C(&v21, v35, &v35[1], 4uLL);
      v8 = v21;
      sub_4482D4(v21, v22);
    }

    else
    {
LABEL_30:
      qmemcpy(v35, "0Vps0Ips02vs0res0fis0fvs1Vps1Ips12vs1res1fis1fvs", 48);
      v19 = 0;
      v20 = 0;
      v18 = 0;
      sub_4625C(&v18, v35, &v35[3], 0xCuLL);
      v8 = v18;
      sub_4482D4(v18, v19);
    }

LABEL_61:
    if (!v8)
    {
      return;
    }

    v7 = v8;
    goto LABEL_63;
  }

  if ((a1 - 12002) < 2)
  {
    xmmword_6FD610 = 0u;
    qword_6FD608 = &xmmword_6FD610;
    xmmword_6FD620 = xmmword_5174C0;
    qword_6FD630 = 0;
    dword_6FD638 = sub_4475B4();
    sub_16040C(&dword_6FD640, 6u);
    return;
  }

  if (a1 != 8024)
  {
    if (a1 == 10012)
    {
LABEL_36:
      xmmword_6FD610 = 0u;
      qword_6FD608 = &xmmword_6FD610;
      xmmword_6FD620 = xmmword_5174D0;
      qword_6FD630 = 0;
      dword_6FD638 = sub_4475B4();
      sub_16040C(&dword_6FD640, 6u);
      return;
    }

    goto LABEL_16;
  }

  sub_448628();
}

void sub_4480B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  v26 = v25;
  if (v26)
  {
    operator delete(v26);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_4481C4(uint64_t a1, int a2, uint64_t *a3)
{
  *a1 = a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  sub_46980(a1 + 8, *a3, a3[1], (a3[1] - *a3) >> 2);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  sub_46980(a1 + 32, a3[3], a3[4], (a3[4] - a3[3]) >> 2);
  return a1;
}

void sub_448234(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 16) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

int *sub_448250(int *result, uint64_t a2)
{
  xmmword_6FD610 = 0uLL;
  qword_6FD608 = &xmmword_6FD610;
  if (a2)
  {
    v2 = result;
    v3 = 56 * a2;
    do
    {
      result = sub_3E845C(&qword_6FD608, &xmmword_6FD610, *v2);
      v2 += 14;
      v3 -= 56;
    }

    while (v3);
  }

  return result;
}

void sub_4482D4(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  v8 = 0;
  v9 = 0;
  sub_46980(&v7, a1, a2, (a2 - a1) >> 2);
  v13 = 0x546F7053426F7453;
  v11 = 0;
  v12 = 0;
  v10 = 0;
  sub_4625C(&v10, &v13, v14, 2uLL);
  sub_4481C4(v16, 2, &v7);
  v18 = 0x7370493073705630;
  v14[0] = 0;
  v14[1] = 0;
  v13 = 0;
  sub_4625C(&v13, &v18, &v19, 2uLL);
  LODWORD(v18) = 1114600531;
  memset(__p, 0, sizeof(__p));
  sub_4625C(__p, &v18, &v18 + 4, 1uLL);
  sub_4481C4(v17, 0, &v13);
  sub_448250(v16, 2);
  LODWORD(xmmword_6FD620) = 2;
  if (sub_45168())
  {
    v2 = 3;
  }

  else
  {
    v2 = 2;
  }

  DWORD1(xmmword_6FD620) = v2;
  *(&xmmword_6FD620 + 8) = xmmword_517530;
  dword_6FD638 = sub_4475B4();
  sub_16040C(&dword_6FD640, 6u);
  for (i = 0; i != -28; i -= 14)
  {
    v4 = &v16[i];
    v5 = *&v17[i * 4 + 32];
    if (v5)
    {
      *(v4 + 12) = v5;
      operator delete(v5);
    }

    v6 = *(v4 + 8);
    if (v6)
    {
      *&v17[i * 4 + 16] = v6;
      operator delete(v6);
    }
  }

  if (__p[0])
  {
    operator delete(__p[0]);
  }

  if (v13)
  {
    operator delete(v13);
  }

  if (v10)
  {
    v11 = v10;
    operator delete(v10);
  }

  if (v7)
  {
    v8 = v7;
    operator delete(v7);
  }
}

void sub_4484D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  sub_3E8408(xmmword_6FD610);
  v29 = &a28;
  v30 = -112;
  do
  {
    v29 = sub_23CB80(v29) - 7;
    v30 += 56;
  }

  while (v30);
  sub_23CBC4(&__p);
  sub_23CBC4(&a9);
  _Unwind_Resume(a1);
}

void sub_448594()
{
  xmmword_6FD610 = 0u;
  qword_6FD608 = &xmmword_6FD610;
  xmmword_6FD620 = xmmword_517510;
  qword_6FD630 = 0x100000000;
  dword_6FD638 = sub_4475B4();
  sub_16040C(&dword_6FD640, 6u);
}

void sub_448628()
{
  qmemcpy(v7, "0Vps0Ips02vs0res0fis0fvs", sizeof(v7));
  memset(v1, 0, 24);
  sub_4625C(v1, v7, &v8, 6uLL);
  memset(&v1[3], 0, 24);
  sub_4481C4(&v2, 1, v1);
  sub_448250(&v2, 1);
  LODWORD(xmmword_6FD620) = 1;
  if (sub_45168())
  {
    v0 = 3;
  }

  else
  {
    v0 = 2;
  }

  DWORD1(xmmword_6FD620) = v0;
  *(&xmmword_6FD620 + 8) = xmmword_517540;
  dword_6FD638 = sub_4475B4();
  sub_16040C(&dword_6FD640, 6u);
  if (__p)
  {
    v6 = __p;
    operator delete(__p);
  }

  if (v3)
  {
    v4 = v3;
    operator delete(v3);
  }

  if (v1[0])
  {
    operator delete(v1[0]);
  }
}

void sub_44875C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  sub_3E8408(xmmword_6FD610);
  sub_23CB80(va1);
  sub_23CBC4(va);
  _Unwind_Resume(a1);
}

void sub_4487A0()
{
  v7 = xmmword_5174E0;
  memset(v1, 0, 24);
  sub_4625C(v1, &v7, &v8, 4uLL);
  memset(&v1[3], 0, 24);
  sub_4481C4(&v2, 0, v1);
  sub_448250(&v2, 1);
  LODWORD(xmmword_6FD620) = 0;
  if (sub_45168())
  {
    v0 = 3;
  }

  else
  {
    v0 = 2;
  }

  DWORD1(xmmword_6FD620) = v0;
  *(&xmmword_6FD620 + 8) = xmmword_5174F0;
  dword_6FD638 = sub_4475B4();
  sub_16040C(&dword_6FD640, 6u);
  if (__p)
  {
    v6 = __p;
    operator delete(__p);
  }

  if (v3)
  {
    v4 = v3;
    operator delete(v3);
  }

  if (v1[0])
  {
    operator delete(v1[0]);
  }
}

void sub_4488C4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  sub_3E8408(xmmword_6FD610);
  sub_23CB80(va1);
  sub_23CBC4(va);
  _Unwind_Resume(a1);
}

void sub_448908()
{
  qmemcpy(v7, "1Vps1Ips3Vps3Ips5Vps5Ips7Vps7Ips", sizeof(v7));
  memset(v1, 0, 24);
  sub_4625C(v1, v7, &v8, 8uLL);
  memset(&v1[3], 0, 24);
  sub_4481C4(&v2, 2, v1);
  sub_448250(&v2, 1);
  LODWORD(xmmword_6FD620) = 2;
  if (sub_45168())
  {
    v0 = 3;
  }

  else
  {
    v0 = 2;
  }

  DWORD1(xmmword_6FD620) = v0;
  *(&xmmword_6FD620 + 8) = xmmword_517500;
  dword_6FD638 = sub_4475B4();
  sub_16040C(&dword_6FD640, 6u);
  if (__p)
  {
    v6 = __p;
    operator delete(__p);
  }

  if (v3)
  {
    v4 = v3;
    operator delete(v3);
  }

  if (v1[0])
  {
    operator delete(v1[0]);
  }
}

void sub_448A30(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  sub_3E8408(xmmword_6FD610);
  sub_23CB80(va1);
  sub_23CBC4(va);
  _Unwind_Resume(a1);
}

void sub_448A74()
{
  xmmword_6FD610 = 0uLL;
  qword_6FD608 = &xmmword_6FD610;
  xmmword_6FD620 = 0x100000000uLL;
  qword_6FD630 = 0;
  dword_6FD638 = sub_4475B4();
  sub_16040C(&dword_6FD640, 6u);
}

uint64_t sub_448AFC(const __CFString **a1)
{
  sub_41CCE0(a1[3]);
  v2 = sub_5544(5);
  v3 = *v2;
  if (*v2 && os_log_type_enabled(*v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = a1[3];
    v15 = 136315650;
    v16 = "HP_PreferredChannels.cpp";
    v17 = 1024;
    v18 = 446;
    v19 = 2112;
    v20 = v4;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Cleared default %@.", &v15, 0x1Cu);
  }

  sub_41CCE0(a1[4]);
  v5 = sub_5544(5);
  v6 = *v5;
  if (*v5 && os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = a1[4];
    v15 = 136315650;
    v16 = "HP_PreferredChannels.cpp";
    v17 = 1024;
    v18 = 448;
    v19 = 2112;
    v20 = v7;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Cleared default %@.", &v15, 0x1Cu);
  }

  sub_41CCE0(a1[5]);
  v8 = sub_5544(5);
  v9 = *v8;
  if (*v8 && os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = a1[5];
    v15 = 136315650;
    v16 = "HP_PreferredChannels.cpp";
    v17 = 1024;
    v18 = 450;
    v19 = 2112;
    v20 = v10;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Cleared default %@.", &v15, 0x1Cu);
  }

  sub_41CCE0(a1[6]);
  v11 = sub_5544(5);
  v12 = *v11;
  if (*v11 && os_log_type_enabled(*v11, OS_LOG_TYPE_DEFAULT))
  {
    v13 = a1[6];
    v15 = 136315650;
    v16 = "HP_PreferredChannels.cpp";
    v17 = 1024;
    v18 = 452;
    v19 = 2112;
    v20 = v13;
    _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Cleared default %@.", &v15, 0x1Cu);
  }

  result = CFPreferencesSynchronize(kCFPreferencesAnyApplication, kCFPreferencesAnyUser, kCFPreferencesCurrentHost);
  byte_6FCC28 = 0;
  return result;
}

void *sub_448D90(void *result, _DWORD *a2, uint64_t a3, uint64_t a4, int a5, int *a6)
{
  v8 = result;
  v9 = a2[1];
  v10 = 304;
  if (v9 == 1768845428)
  {
    v10 = 280;
  }

  v11 = result[1] + v10;
  v12 = *v11;
  v13 = *(v11 + 8);
  if (v12 == v13)
  {
    v14 = 0;
  }

  else
  {
    v14 = 0;
    do
    {
      v15 = *v12++;
      v14 += *(*(v15 + 104) + 44);
    }

    while (v12 != v13);
  }

  if (*a2 == 1936879204)
  {
    if ((*(*result + 32))(result, a2) != a5)
    {
      v47 = sub_5544(14);
      v48 = *v47;
      if (*v47 && os_log_type_enabled(*v47, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "HP_PreferredChannels.cpp";
        v59 = 1024;
        v60 = 403;
        _os_log_impl(&dword_0, v48, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareBadPropertySizeError): wrong data size for kAudioDevicePropertyPreferredChannelLayout", buf, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = &off_6DDDD0;
      exception[2] = 561211770;
    }

    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    v51 = 257;
    sub_A1CA4(&Mutable, @"channel layout tag", *a6);
    sub_A1CA4(&Mutable, @"channel bitmap", a6[1]);
    sub_A1CA4(&Mutable, @"number channels", a6[2]);
    if (!*a6)
    {
      v29 = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
      __p.__r_.__value_.__r.__words[0] = v29;
      LOWORD(__p.__r_.__value_.__r.__words[1]) = 257;
      if (v29)
      {
        if (a6[2])
        {
          v30 = 0;
          v31 = a6 + 5;
          do
          {
            theDict = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
            v56 = 257;
            if (theDict)
            {
              v32 = &a6[5 * v30 + 3];
              sub_A1CA4(&theDict, @"channel label", *v32);
              sub_A1CA4(&theDict, @"channel flags", v32[1]);
              theArray = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
              v54 = 257;
              if (theArray)
              {
                for (i = 0; i != 3; ++i)
                {
                  if (theArray && HIBYTE(v54) == 1)
                  {
                    valuePtr = v31[i];
                    v34 = CFNumberCreate(0, kCFNumberFloat32Type, &valuePtr);
                    *buf = v34;
                    buf[8] = 1;
                    if (v34 && theArray && HIBYTE(v54) == 1)
                    {
                      CFArrayAppendValue(theArray, v34);
                    }

                    sub_A07C4(buf);
                  }
                }

                if (HIBYTE(v56) == 1 && theArray && theDict)
                {
                  CFDictionarySetValue(theDict, @"coordinates", theArray);
                }
              }

              if (__p.__r_.__value_.__r.__words[0] && __p.__r_.__value_.__s.__data_[9] == 1)
              {
                CFArrayAppendValue(__p.__r_.__value_.__l.__data_, theDict);
              }

              sub_A0804(&theArray);
            }

            sub_A1D30(&theDict);
            ++v30;
            v31 += 5;
          }

          while (v30 < a6[2]);
          v29 = __p.__r_.__value_.__r.__words[0];
        }

        if (HIBYTE(v51) == 1 && v29 && Mutable)
        {
          CFDictionarySetValue(Mutable, @"channel descriptions", v29);
        }
      }

      sub_A0804(&__p);
    }

    v35 = 6;
    if (v9 == 1768845428)
    {
      v35 = 5;
    }

    v36 = v8[v35];
    sub_41CC70(v36, Mutable);
    v37 = sub_5544(5);
    v38 = *v37;
    if (*v37 && os_log_type_enabled(*v37, OS_LOG_TYPE_DEFAULT))
    {
      sub_B1190(&__p, Mutable);
      v39 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
      *buf = 136315906;
      *&buf[4] = "HP_PreferredChannels.cpp";
      v59 = 1024;
      v60 = 416;
      v61 = 2112;
      v62 = v36;
      v63 = 2080;
      v64 = v39;
      _os_log_impl(&dword_0, v38, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Set default %@: %s.", buf, 0x26u);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    if (v9 == 1768845428)
    {
      v40 = 10;
    }

    else
    {
      v40 = 11;
    }

    v41 = v8[v40];
    v42 = sub_1C97E8(v36);
    if (v41)
    {
      CFRelease(v41);
    }

    v8[v40] = v42;
    (*(*v8[1] + 88))(v8[1], 1, a2, 1);
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotificationWithOptions(DarwinNotifyCenter, v36, 0, 0, 0);
    return sub_A1D30(&Mutable);
  }

  else if (*a2 == 1684236338)
  {
    if ((*(*result + 32))(result, a2) != a5)
    {
      v44 = sub_5544(14);
      v45 = *v44;
      if (*v44 && os_log_type_enabled(*v44, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "HP_PreferredChannels.cpp";
        v59 = 1024;
        v60 = 361;
        _os_log_impl(&dword_0, v45, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareBadPropertySizeError): wrong data size for kAudioDevicePropertyPreferredChannelsForStereo", buf, 0x12u);
      }

      v46 = __cxa_allocate_exception(0x10uLL);
      *v46 = &off_6DDDD0;
      v46[2] = 561211770;
    }

    theDict = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
    v56 = 257;
    v16 = *a6;
    if (*a6 <= 1)
    {
      v16 = 1;
    }

    if (v14 >= v16)
    {
      v17 = v16;
    }

    else
    {
      v17 = v14;
    }

    sub_A072C(&theDict, v17);
    v18 = a6[1];
    if (v18 <= 1)
    {
      v18 = 1;
    }

    if (v14 >= v18)
    {
      v19 = v18;
    }

    else
    {
      v19 = v14;
    }

    sub_A072C(&theDict, v19);
    v20 = 4;
    if (v9 == 1768845428)
    {
      v20 = 3;
    }

    v21 = v8[v20];
    sub_41CC70(v21, theDict);
    v22 = sub_5544(5);
    v23 = *v22;
    if (*v22 && os_log_type_enabled(*v22, OS_LOG_TYPE_DEFAULT))
    {
      sub_B13D8(&__p, theDict);
      v24 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
      *buf = 136315906;
      *&buf[4] = "HP_PreferredChannels.cpp";
      v59 = 1024;
      v60 = 377;
      v61 = 2112;
      v62 = v21;
      v63 = 2080;
      v64 = v24;
      _os_log_impl(&dword_0, v23, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Set default %@: %s.", buf, 0x26u);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    if (v9 == 1768845428)
    {
      v25 = 7;
    }

    else
    {
      v25 = 8;
    }

    v26 = v8[v25];
    v27 = sub_1C9668(v21);
    if (v26)
    {
      CFRelease(v26);
    }

    v8[v25] = v27;
    (*(*v8[1] + 88))(v8[1], 1, a2, 1);
    v28 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotificationWithOptions(v28, v21, 0, 0, 0);
    return sub_A0804(&theDict);
  }

  return result;
}

void sub_4495C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  sub_A0804(&a11);
  sub_A1D30(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_449658(uint64_t result, int *a2, uint64_t a3, uint64_t a4, int *a5, unsigned int *a6)
{
  v7 = result;
  v8 = *a2;
  v9 = a2[1];
  if (*a2 == 1936879204)
  {
    v14 = *a5;
    if (v14 != (*(*result + 32))(result))
    {
      v31 = sub_5544(14);
      v32 = *v31;
      if (*v31 && os_log_type_enabled(*v31, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "HP_PreferredChannels.cpp";
        v48 = 1024;
        v49 = 325;
        _os_log_impl(&dword_0, v32, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareBadPropertySizeError): wrong data size for kAudioDevicePropertyPreferredChannelLayout", buf, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = &off_6DDDD0;
      exception[2] = 561211770;
    }

    v15 = *(v7 + 8);
    v16 = *v15 + 232;
    if (v9 == 1768845428)
    {
      v17 = 80;
    }

    else
    {
      v17 = 88;
    }

    (*(*v15 + 232))(v15, v9 == 1768845428, a6);
    v18 = *(v7 + v17);
    v37 = v18;
    v38 = 0;
    if (v18)
    {
      sub_2E7334(v18, @"channel layout tag", a6);
      sub_2E7334(v37, @"channel bitmap", a6 + 1);
      v46 = 0;
      sub_2E7334(v37, @"number channels", &v46);
      if (!*a6)
      {
        theArray = 0;
        if (sub_2E73A0(v37, @"channel descriptions", &theArray))
        {
          *buf = theArray;
          *&buf[8] = 0;
          if (theArray)
          {
            Count = CFArrayGetCount(theArray);
            v20 = Count;
            if (Count)
            {
              if (a6[2])
              {
                v21 = 0;
                v22 = a6 + 3;
                v23 = a6 + 5;
                do
                {
                  v44 = 0;
                  if (sub_2E463C(buf, v21, &v44))
                  {
                    v42 = v44;
                    v43 = 0;
                    sub_2E7334(v44, @"channel label", &v22[5 * v21]);
                    sub_2E7334(v42, @"channel flags", &v22[5 * v21 + 1]);
                    v41 = 0;
                    if (sub_2E73A0(v42, @"coordinates", &v41))
                    {
                      v39 = v41;
                      v40 = 0;
                      if (v41)
                      {
                        v24 = CFArrayGetCount(v41);
                        if (v24)
                        {
                          v25 = 0;
                          if (v24 >= 3)
                          {
                            v26 = 3;
                          }

                          else
                          {
                            v26 = v24;
                          }

                          v27 = v23;
                          do
                          {
                            sub_2E45AC(&v39, v25++, v27++);
                          }

                          while (v26 != v25);
                        }
                      }

                      sub_A0804(&v39);
                    }

                    sub_A1D30(&v42);
                  }

                  if (++v21 >= v20)
                  {
                    break;
                  }

                  v23 += 5;
                }

                while (v21 < a6[2]);
              }
            }
          }

          sub_A0804(buf);
        }
      }
    }

    return sub_A1D30(&v37);
  }

  else if (v8 == 1936876644)
  {
    v12 = *a5;
    if (v12 != (*(*result + 32))(result))
    {
      v28 = sub_5544(14);
      v29 = *v28;
      if (*v28 && os_log_type_enabled(*v28, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "HP_PreferredChannels.cpp";
        v48 = 1024;
        v49 = 342;
        _os_log_impl(&dword_0, v29, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareBadPropertySizeError): wrong data size for 'srdd'", buf, 0x12u);
      }

      v30 = __cxa_allocate_exception(0x10uLL);
      *v30 = &off_6DDDD0;
      v30[2] = 561211770;
    }

    v13 = *(**(v7 + 8) + 232);

    return v13();
  }

  else if (v8 == 1684236338)
  {
    v10 = *a5;
    if (v10 != (*(*result + 32))(result))
    {
      v34 = sub_5544(14);
      v35 = *v34;
      if (*v34 && os_log_type_enabled(*v34, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "HP_PreferredChannels.cpp";
        v48 = 1024;
        v49 = 299;
        _os_log_impl(&dword_0, v35, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareBadPropertySizeError): wrong data size for kAudioDevicePropertyPreferredChannelsForStereo", buf, 0x12u);
      }

      v36 = __cxa_allocate_exception(0x10uLL);
      *v36 = &off_6DDDD0;
      v36[2] = 561211770;
    }

    *a6 = 0x200000001;
    v11 = 64;
    if (v9 == 1768845428)
    {
      v11 = 56;
    }

    *buf = *(v7 + v11);
    *&buf[8] = 0;
    if (*buf)
    {
      sub_2E4528(buf, 0, a6);
      sub_2E4528(buf, 1u, a6 + 1);
    }

    if (v9 != 1768845428)
    {
      *(v7 + 72) = *a6;
    }

    return sub_A0804(buf);
  }

  return result;
}

void sub_449CAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  sub_A0804(&a19);
  sub_A1D30(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_449D14(uint64_t a1, int *a2)
{
  v2 = *a2;
  if (*a2 == 1936879204)
  {
    v10 = 304;
    if (a2[1] == 1768845428)
    {
      v10 = 280;
    }

    v11 = *(a1 + 8) + v10;
    v12 = *v11;
    v13 = *(v11 + 8);
    if (v12 != v13)
    {
      v8 = 0;
      do
      {
        v14 = *v12++;
        v8 += *(*(v14 + 104) + 44);
      }

      while (v12 != v13);
      goto LABEL_20;
    }
  }

  else
  {
    if (v2 != 1936876644)
    {
      if (v2 == 1684236338)
      {
        return 8;
      }

      else
      {
        return 0;
      }
    }

    v4 = 304;
    if (a2[1] == 1768845428)
    {
      v4 = 280;
    }

    v5 = *(a1 + 8) + v4;
    v6 = *v5;
    v7 = *(v5 + 8);
    if (v6 != v7)
    {
      v8 = 0;
      do
      {
        v9 = *v6++;
        v8 += *(*(v9 + 104) + 44);
      }

      while (v6 != v7);
      goto LABEL_20;
    }
  }

  v8 = 0;
LABEL_20:
  v15 = sub_20A884(v8);

  return sub_20A8FC(v15);
}

uint64_t sub_449E44(uint64_t a1, int *a2)
{
  v2 = *a2;
  if (*a2 == 1936879204 || v2 == 1936876644)
  {
    v10 = a2[1];
    if (v10 == 1869968496)
    {
      v11 = *(*(a1 + 8) + 304);
      v12 = *(*(a1 + 8) + 312);
    }

    else
    {
      if (v10 != 1768845428)
      {
        return 0;
      }

      v11 = *(*(a1 + 8) + 280);
      v12 = *(*(a1 + 8) + 288);
    }

    return ((v12 - v11) & 0x7FFFFFFF8) != 0;
  }

  if (v2 != 1684236338)
  {
    return 0;
  }

  v3 = a2[1];
  if (v3 != 1869968496)
  {
    if (v3 == 1768845428)
    {
      v4 = *(a1 + 8);
      v5 = *(v4 + 280);
      v6 = *(v4 + 288);
      if (v5 != v6)
      {
        v7 = 0;
        do
        {
          v8 = *v5++;
          v7 += *(*(v8 + 104) + 44);
        }

        while (v5 != v6);
        if (v7 > 1)
        {
          return 1;
        }
      }
    }

    return 0;
  }

  v13 = *(a1 + 8);
  v14 = *(v13 + 304);
  v15 = *(v13 + 312);
  if (v14 == v15)
  {
    return 0;
  }

  v16 = 0;
  do
  {
    v17 = *v14++;
    v16 += *(*(v17 + 104) + 44);
  }

  while (v14 != v15);
  return v16 > 1;
}

uint64_t sub_449F70()
{
  qword_6FD688 = 0;
  qword_6FD680 = 0;
  qword_6FD678 = &qword_6FD680;
  dword_6FD690 = 256;
  return sub_1C9430(&qword_6FD698, "CATokenMap Mutex");
}

uint64_t sub_449FD8(uint64_t a1, int a2)
{
  sub_EBA7C();
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  result = caulk::g_realtime_safe_resource;
  if (caulk::g_realtime_safe_resource)
  {
    v7 = caulk::rt_safe_memory_resource::rt_allocate(caulk::g_realtime_safe_resource, 0x38uLL, 8uLL);
    *(v7 + 16) = 0;
    *(v7 + 24) = v5;
    *(v7 + 32) = v4;
    *(v7 + 40) = a2;
    *v7 = off_6D66E0;
    *(v7 + 8) = 0;

    return caulk::concurrent::messenger::enqueue(&unk_6FD6F8, v7);
  }

  else
  {
    __break(1u);
  }

  return result;
}

caulk::concurrent::message **sub_44A080(caulk::concurrent::message *a1)
{
  v2 = a1;
  sub_44A0C8(a1);
  return sub_44A244(&v2);
}

void sub_44A0B4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_44A244(va);
  _Unwind_Resume(a1);
}

void sub_44A0C8(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 24);
      if (v5)
      {
        v6 = *(a1 + 40);
        v7 = v5[6];
        v8 = v7 != 0;
        v10 = v7 - 1;
        v9 = v10 != 0 && v8;
        if (!v8)
        {
          v10 = 0;
        }

        v5[6] = v10;
        if (!v9)
        {
          v11 = sub_5544(25);
          v12 = *v11;
          if (*v11 && os_log_type_enabled(*v11, OS_LOG_TYPE_DEFAULT))
          {
            v13 = 136315394;
            v14 = "IODelegate.cpp";
            v15 = 1024;
            v16 = 48;
            _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Stopping ref counted IODelegate", &v13, 0x12u);
          }

          (*(*v5 + 80))(v5, v6);
        }
      }

      sub_1A8C0(v4);
    }
  }
}

caulk::concurrent::message **sub_44A244(caulk::concurrent::message **a1)
{
  v2 = *a1;
  *v2 = off_6D6708;
  v3 = *(v2 + 4);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  caulk::concurrent::message::~message(v2);
  result = caulk::g_realtime_safe_resource;
  if (caulk::g_realtime_safe_resource)
  {
    caulk::rt_safe_memory_resource::rt_deallocate(caulk::g_realtime_safe_resource, v2, 0x38uLL, 8uLL);
    return a1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_44A2C0(caulk::concurrent::message *this)
{
  *this = off_6D6708;
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  caulk::concurrent::message::~message(this);

  operator delete();
}

void sub_44A330(caulk::concurrent::message *this)
{
  *this = off_6D6708;
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  caulk::concurrent::message::~message(this);
}

void sub_44A38C(caulk::concurrent::message *this)
{
  *this = off_6D6708;
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  caulk::concurrent::message::~message(this);

  operator delete();
}

void sub_44A3FC(caulk::concurrent::message *this)
{
  *this = off_6D6708;
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  caulk::concurrent::message::~message(this);
}

void sub_44A458(uint64_t a1)
{
  sub_8BEE4();
  v2 = a1;
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_44A4E0;
  block[3] = &unk_6D66B0;
  block[4] = &v2;
  dispatch_sync(qword_709F20, block);
}

_DWORD *sub_44A4E0(uint64_t a1)
{
  result = **(a1 + 32);
  v2 = result[6];
  result[6] = v2 + 1;
  if (!v2)
  {
    return (*(*result + 72))();
  }

  return result;
}

void sub_44A520(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_5544(20);
  v6 = *v5;
  if (*v5 && os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
  {
    sub_108DF0(&v181, a2);
    v7 = v181.__m_.__opaque[15] >= 0 ? &v181 : v181.__m_.__sig;
    *buf = 136315650;
    *&buf[4] = "RoutingHandler_Record_N51.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 117;
    *&buf[18] = 2080;
    *&buf[20] = v7;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Activating route: %s", buf, 0x1Cu);
    if (v181.__m_.__opaque[15] < 0)
    {
      operator delete(v181.__m_.__sig);
    }
  }

  v8 = *(*a2 + 24);
  sub_25704(&v139, v8 + 2, "", 119);
  v9 = v139;
  v10 = *(v139 + 144);
  __p[0] = 0;
  __p[1] = 0;
  v138 = 0;
  v134 = 0;
  v135 = 0;
  v136 = 0;
  sub_CE168();
  buf[23] = 11;
  strcpy(buf, "AOP Audio-1");
  sub_CDEB8(&v181, buf);
  sig = 0;
  v133 = 0;
  v11 = *v181.__m_.__opaque;
  if (*v181.__m_.__opaque)
  {
    v133 = std::__shared_weak_count::lock(*v181.__m_.__opaque);
    if (v133)
    {
      sig = v181.__m_.__sig;
      v12 = v181.__m_.__sig == 0;
    }

    else
    {
      v12 = 1;
    }

    std::__shared_weak_count::__release_weak(v11);
  }

  else
  {
    v12 = 1;
  }

  v13 = v9[25];
  if (v13)
  {
    v14 = v9[24];
    atomic_fetch_add_explicit(&v13->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v15 = std::__shared_weak_count::lock(v13);
    v131 = v15;
    if (v15)
    {
      v16 = v15;
      v130 = v14;
      std::__shared_weak_count::__release_weak(v13);
      if (v14)
      {
        (*(*&v14->_os_unfair_lock_opaque + 128))(buf, v14);
        if ((buf[23] & 0x80000000) != 0)
        {
          if (*&buf[8] == 5)
          {
            v20 = **buf == 1701080899 && *(*buf + 4) == 99;
            v123 = v20;
          }

          else
          {
            v123 = 0;
          }

          operator delete(*buf);
        }

        else if (buf[23] == 5)
        {
          v18 = *buf == 1701080899 && buf[4] == 99;
          v123 = v18;
        }

        else
        {
          v123 = 0;
        }

        (*(*&v14->_os_unfair_lock_opaque + 128))(buf, v14);
        if ((buf[23] & 0x80000000) != 0)
        {
          v22 = *&buf[8] == 5 && **buf == 1766674504 && *(*buf + 4) == 99;
          operator delete(*buf);
        }

        else
        {
          v22 = buf[23] == 5 && *buf == 1766674504 && buf[4] == 99;
        }

        if (!v123 && !v22)
        {
          atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_CE1E4(buf, v14, v9, a2, v8[9], *(a2 + 12));
          *__p = *buf;
          v138 = *&buf[16];
LABEL_102:
          sub_FC464(__p, v8 + 2, v14);
          v26 = v14;
          goto LABEL_103;
        }

        v24 = *(a2 + 12);
        if (v24 == 1986556788 || v24 == 1987211117 || v24 == 1987208039)
        {
          if (sub_CB5C4())
          {
            if ((*(a2 + 156) & 1) == 0 || v12)
            {
              goto LABEL_69;
            }

LABEL_64:
            p_sig = &v130;
            if (v10 == 1886216809)
            {
              p_sig = &sig;
            }

            v26 = *p_sig;
            v16 = p_sig[1];
            if (!v16)
            {
LABEL_71:
              v27 = *(a2 + 12);
              if (v27 != 1986556788 && v27 != 1987211117 && v27 != 1987208039)
              {
                sub_CB5C4();
LABEL_88:
                sub_CE1E4(buf, v14, v9, a2, v8[9], *(a2 + 12));
                if (__p[0])
                {
                  __p[1] = __p[0];
                  operator delete(__p[0]);
                }

                *__p = *buf;
                v138 = *&buf[16];
                v181.__m_.__sig = 0;
                *v181.__m_.__opaque = 0;
                v33 = v8[3];
                if (v33)
                {
                  v34 = std::__shared_weak_count::lock(v33);
                  v35 = v34;
                  if (v34)
                  {
                    v36 = v8[2];
                    atomic_fetch_add_explicit(&v34->__shared_weak_owners_, 1uLL, memory_order_relaxed);
                    v181.__m_.__sig = v36;
                    *v181.__m_.__opaque = v34;
                    sub_1A8C0(v34);
                  }

                  else
                  {
                    v181.__m_.__sig = 0;
                    *v181.__m_.__opaque = 0;
                  }
                }

                else
                {
                  v35 = 0;
                }

                sub_301DE0(buf, __p, &v181.__m_.__sig);
                sub_16B928(&v134, *buf, *&buf[8], (*&buf[8] - *buf) >> 2);
                if (*buf)
                {
                  *&buf[8] = *buf;
                  operator delete(*buf);
                }

                if (v35)
                {
                  std::__shared_weak_count::__release_weak(v35);
                }

                if (v123 && v14[231]._os_unfair_lock_opaque < ((v135 - v134) >> 2))
                {
                  v97 = sub_5544(14);
                  v98 = *v97;
                  if (*v97 && os_log_type_enabled(*v97, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 136315394;
                    *&buf[4] = "RoutingHandler_Record_N51.cpp";
                    *&buf[12] = 1024;
                    *&buf[14] = 216;
                    _os_log_impl(&dword_0, v98, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareUnspecifiedError): could not get input device", buf, 0x12u);
                  }

                  exception = __cxa_allocate_exception(0x10uLL);
                  *exception = &off_6DDDD0;
                  exception[2] = 2003329396;
                }

                v14 = v26;
                goto LABEL_102;
              }

              if (sub_CB5C4())
              {
                if ((*(a2 + 156) & 1) == 0 || v12 || v10 != 1886216809)
                {
                  goto LABEL_88;
                }
              }

              else
              {
                v28 = v10 != 1886216809 || v12;
                if (v28)
                {
                  goto LABEL_88;
                }
              }

              sub_CE1E4(buf, v14, v9, a2, v8[9], *(a2 + 12));
              if (__p[0])
              {
                __p[1] = __p[0];
                operator delete(__p[0]);
              }

              *__p = *buf;
              v138 = *&buf[16];
              v181.__m_.__sig = 0;
              *v181.__m_.__opaque = 0;
              v29 = v8[3];
              if (v29)
              {
                v30 = std::__shared_weak_count::lock(v29);
                v31 = v30;
                if (v30)
                {
                  v32 = v8[2];
                  atomic_fetch_add_explicit(&v30->__shared_weak_owners_, 1uLL, memory_order_relaxed);
                  v181.__m_.__sig = v32;
                  *v181.__m_.__opaque = v30;
                  sub_1A8C0(v30);
                }

                else
                {
                  v181.__m_.__sig = 0;
                  *v181.__m_.__opaque = 0;
                }
              }

              else
              {
                v31 = 0;
              }

              sub_301DE0(buf, __p, &v181.__m_.__sig);
              v127 = 0;
              v128 = 0;
              v129 = 0;
              sub_46980(&v127, *buf, *&buf[8], (*&buf[8] - *buf) >> 2);
              if (*buf)
              {
                *&buf[8] = *buf;
                operator delete(*buf);
              }

              if (v31)
              {
                std::__shared_weak_count::__release_weak(v31);
              }

              if (!v123)
              {
                goto LABEL_251;
              }

              v48 = v127;
              if (v127 != v128)
              {
                v119 = v128;
                v140 = 0x696E707450445073;
                v141 = 0;
                if ((*(*&v14->_os_unfair_lock_opaque + 16))(v14, &v140))
                {
                  if ((*(*&v14->_os_unfair_lock_opaque + 24))(v14, &v140))
                  {
                    inObjectID = (*(*&v14->_os_unfair_lock_opaque + 120))(v14);
                    v49 = sub_5544(14);
                    if ((*(v49 + 8) & 1) != 0 && *v49 && os_log_type_enabled(*v49, OS_LOG_TYPE_DEBUG))
                    {
                      v180.__cv_.__sig = v140;
                      *v180.__cv_.__opaque = v141;
                      sub_22CE0(&v181);
                    }

                    *buf = v140;
                    *&buf[8] = v141;
                    if (AudioObjectHasProperty(inObjectID, buf))
                    {
                      v117 = v48;
                      memset(v181.__m_.__opaque, 0, sizeof(v181.__m_.__opaque));
                      v181.__m_.__sig = 850045863;
                      memset(v180.__cv_.__opaque, 0, sizeof(v180.__cv_.__opaque));
                      v180.__cv_.__sig = 1018212795;
                      v176 = 0;
                      sub_745E8(v175, inObjectID, &v140, &v180, &v181, &v176);
                      v171 = v140;
                      v170 = inObjectID;
                      v172 = v141;
                      v173 = 0;
                      v174 = 0;
                      *buf = v140;
                      *&buf[8] = v141;
                      if (!sub_66E40(inObjectID, buf))
                      {
                        v56 = sub_5544(14);
                        if (*v56 && os_log_type_enabled(*v56, OS_LOG_TYPE_ERROR))
                        {
                          v152 = v140;
                          LODWORD(v153) = v141;
                          sub_22CE0(&v167);
                        }

LABEL_238:
                        sub_73C20(v175);
                        std::condition_variable::~condition_variable(&v180);
                        std::mutex::~mutex(&v181);
                        goto LABEL_239;
                      }

                      sub_304360(&v167, &v170);
                      if (v169)
                      {
                        goto LABEL_141;
                      }

                      v165 = 0;
                      __s1 = 0;
                      v166 = 0;
                      sub_46980(&__s1, v167, v168, (v168 - v167) >> 2);
                      v162 = 0;
                      __s2 = 0;
                      v163 = 0;
                      sub_46980(&__s2, v48, v119, (v119 - v48) >> 2);
                      v57 = __s2;
                      loga = __s1;
                      if (v165 - __s1 == v162 - __s2)
                      {
                        v58 = __s2;
                        v59 = memcmp(__s1, __s2, v165 - __s1);
                        v57 = v58;
                        v60 = v59 == 0;
                      }

                      else
                      {
                        v60 = 0;
                      }

                      if (v57)
                      {
                        v162 = v57;
                        operator delete(v57);
                      }

                      if (loga)
                      {
                        v165 = loga;
                        operator delete(loga);
                        if (v60)
                        {
LABEL_165:
                          v61 = sub_5544(14);
                          if (*(v61 + 8))
                          {
                            v54 = *v61;
                            if (!*v61)
                            {
                              goto LABEL_170;
                            }

                            if (os_log_type_enabled(*v61, OS_LOG_TYPE_DEBUG))
                            {
                              *buf = 136315650;
                              *&buf[4] = "HALPropertySynchronizer.h";
                              *&buf[12] = 1024;
                              *&buf[14] = 294;
                              *&buf[18] = 1024;
                              *&buf[20] = inObjectID;
                              _os_log_impl(&dword_0, v54, OS_LOG_TYPE_DEBUG, "%25s:%-5d Read-back value was the same as the set-to value, so we didn't need to wait on a sync primitive for a notification on id %u.", buf, 0x18u);
                            }
                          }

LABEL_169:
                          LOBYTE(v54) = 0;
LABEL_170:
                          if (v167)
                          {
                            operator delete(v167);
                          }

                          if (v54)
                          {
                            sub_304360(&v167, &v170);
                            if (v169)
                            {
LABEL_174:
                              v112 = (&stru_798 + 56);
                              while (1)
                              {
                                sub_304360(&v152, &v170);
                                v120 = v152;
                                if (v154)
                                {
                                  goto LABEL_176;
                                }

                                v149 = 0;
                                v150 = 0;
                                v151 = 0;
                                sub_46980(&v149, v152, v153, (v153 - v152) >> 2);
                                v146 = 0;
                                v147 = 0;
                                v148 = 0;
                                sub_46980(&v146, v48, v128, (v128 - v48) >> 2);
                                v63 = v146;
                                logb = v149;
                                v64 = v150 - v149 == v147 - v146 && memcmp(v149, v146, v150 - v149) == 0;
                                if (v63)
                                {
                                  v147 = v63;
                                  operator delete(v63);
                                }

                                if (logb)
                                {
                                  v150 = logb;
                                  operator delete(logb);
                                }

                                v48 = v117;
                                if (v64)
                                {
                                  v62 = 16;
                                  goto LABEL_211;
                                }

                                if (v112 <= 0)
                                {
                                  v72 = sub_5544(14);
                                  if (*v72 && os_log_type_enabled(*v72, OS_LOG_TYPE_ERROR))
                                  {
                                    v142 = v140;
                                    v143 = v141;
                                    sub_22CE0(&v144);
                                  }

LABEL_176:
                                  v62 = 1;
                                  goto LABEL_211;
                                }

                                logc = std::chrono::system_clock::now().__d_.__rep_;
                                v65 = sub_5544(14);
                                if (*(v65 + 8))
                                {
                                  v66 = *v65;
                                  if (*v65)
                                  {
                                    if (os_log_type_enabled(*v65, OS_LOG_TYPE_DEBUG))
                                    {
                                      *buf = 136315906;
                                      *&buf[4] = "HALPropertySynchronizer.h";
                                      *&buf[12] = 1024;
                                      *&buf[14] = 354;
                                      *&buf[18] = 2080;
                                      *&buf[20] = "with timeout";
                                      v178 = 1024;
                                      LODWORD(v179) = inObjectID;
                                      _os_log_impl(&dword_0, v66, OS_LOG_TYPE_DEBUG, "%25s:%-5d Waiting (%s) for sync primitive to be unlocked on id %u.", buf, 0x22u);
                                    }
                                  }
                                }

                                sub_27A4();
                                LOBYTE(v144) = sub_2E6B08();
                                *buf = &v181;
                                buf[8] = 1;
                                std::mutex::lock(&v181);
                                v67.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_ + 150000000;
                                while ((v176 & 1) == 0 && v67.__d_.__rep_ > std::chrono::steady_clock::now().__d_.__rep_)
                                {
                                  v68.__d_.__rep_ = v67.__d_.__rep_ - std::chrono::steady_clock::now().__d_.__rep_;
                                  if (v68.__d_.__rep_ >= 1)
                                  {
                                    std::chrono::steady_clock::now();
                                    v69.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
                                    if (v69.__d_.__rep_)
                                    {
                                      if (v69.__d_.__rep_ < 1)
                                      {
                                        if (v69.__d_.__rep_ >= 0xFFDF3B645A1CAC09)
                                        {
                                          goto LABEL_202;
                                        }

                                        v70 = 0x8000000000000000;
                                      }

                                      else
                                      {
                                        if (v69.__d_.__rep_ > 0x20C49BA5E353F7)
                                        {
                                          v70 = 0x7FFFFFFFFFFFFFFFLL;
                                          goto LABEL_203;
                                        }

LABEL_202:
                                        v70 = 1000 * v69.__d_.__rep_;
LABEL_203:
                                        if (v70 > (v68.__d_.__rep_ ^ 0x7FFFFFFFFFFFFFFFLL))
                                        {
                                          v71.__d_.__rep_ = 0x7FFFFFFFFFFFFFFFLL;
LABEL_206:
                                          std::condition_variable::__do_timed_wait(&v180, buf, v71);
                                          std::chrono::steady_clock::now();
                                          goto LABEL_207;
                                        }
                                      }
                                    }

                                    else
                                    {
                                      v70 = 0;
                                    }

                                    v71.__d_.__rep_ = v70 + v68.__d_.__rep_;
                                    goto LABEL_206;
                                  }

LABEL_207:
                                  if (std::chrono::steady_clock::now().__d_.__rep_ >= v67.__d_.__rep_)
                                  {
                                    break;
                                  }
                                }

                                if (buf[8] == 1)
                                {
                                  std::mutex::unlock(*buf);
                                }

                                sub_1DB4C4(&v144);
                                v62 = 0;
                                v48 = v117;
                                v112 = (v112 + (std::chrono::system_clock::now().__d_.__rep_ - logc) / -1000);
LABEL_211:
                                if (v120)
                                {
                                  operator delete(v120);
                                }

                                if (v62)
                                {
                                  if (v62 == 16)
                                  {
                                    v73 = sub_5544(14);
                                    if ((*(v73 + 8) & 1) != 0 && *v73 && os_log_type_enabled(*v73, OS_LOG_TYPE_DEBUG))
                                    {
                                      v144 = v140;
                                      v145 = v141;
                                      sub_22CE0(&v152);
                                    }
                                  }

                                  goto LABEL_236;
                                }
                              }
                            }

                            v159 = 0;
                            v158 = 0;
                            v160 = 0;
                            sub_46980(&v158, v167, v168, (v168 - v167) >> 2);
                            v156 = 0;
                            v155 = 0;
                            v157 = 0;
                            sub_46980(&v155, v48, v119, (v119 - v48) >> 2);
                            v74 = v155;
                            v75 = v158;
                            v121 = v159 - v158 == v156 - v155 && memcmp(v158, v155, v159 - v158) == 0;
                            if (v74)
                            {
                              v156 = v74;
                              operator delete(v74);
                            }

                            if (v75)
                            {
                              v159 = v75;
                              operator delete(v75);
                              v48 = v117;
                              if (!v121)
                              {
                                goto LABEL_174;
                              }
                            }

                            else
                            {
                              v48 = v117;
                              if (!v121)
                              {
                                goto LABEL_174;
                              }
                            }

                            v76 = sub_5544(14);
                            if (*(v76 + 8))
                            {
                              v77 = *v76;
                              if (*v76)
                              {
                                if (os_log_type_enabled(*v76, OS_LOG_TYPE_DEBUG))
                                {
                                  *buf = 136315650;
                                  *&buf[4] = "HALPropertySynchronizer.h";
                                  *&buf[12] = 1024;
                                  *&buf[14] = 322;
                                  *&buf[18] = 1024;
                                  *&buf[20] = inObjectID;
                                  _os_log_impl(&dword_0, v77, OS_LOG_TYPE_DEBUG, "%25s:%-5d Read-back value was the same as the set-to value, so we didn't need to wait on a sync primitive for a notification on id %u.", buf, 0x18u);
                                }
                              }
                            }

LABEL_236:
                            if (v167)
                            {
                              operator delete(v167);
                            }
                          }

                          goto LABEL_238;
                        }
                      }

                      else if (v60)
                      {
                        goto LABEL_165;
                      }

LABEL_141:
                      v50 = sub_5544(14);
                      if (*(v50 + 8))
                      {
                        v51 = *v50;
                        if (v51)
                        {
                          if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
                          {
                            v158 = v140;
                            LODWORD(v159) = v141;
                            sub_22CE0(&v152);
                          }
                        }
                      }

                      *buf = v140;
                      *&buf[8] = v141;
                      v52 = sub_1F79B8(inObjectID, buf, v48, v119);
                      if (!v52)
                      {
                        LOBYTE(v54) = 1;
                        goto LABEL_170;
                      }

                      log = v52;
                      v53 = sub_5544(14);
                      v54 = *v53;
                      if (!*v53)
                      {
                        goto LABEL_170;
                      }

                      if (os_log_type_enabled(*v53, OS_LOG_TYPE_ERROR))
                      {
                        sub_22170(&v152, log);
                        v155 = v140;
                        LODWORD(v156) = v141;
                        sub_22CE0(&v158);
                      }

                      goto LABEL_169;
                    }

                    v55 = sub_5544(14);
                    if (*v55 && os_log_type_enabled(*v55, OS_LOG_TYPE_ERROR))
                    {
                      v180.__cv_.__sig = v140;
                      *v180.__cv_.__opaque = v141;
                      sub_22CE0(&v181);
                    }
                  }
                }
              }

LABEL_239:
              v181.__m_.__sig = 0x676C6F624C50456DLL;
              *v181.__m_.__opaque = 0;
              if ((*(*&v14->_os_unfair_lock_opaque + 16))(v14, &v181))
              {
                v180.__cv_.__sig = 0;
                v175[0] = (*(*&v14->_os_unfair_lock_opaque + 32))(v14, &v181, 0, 0);
                (*(*&v14->_os_unfair_lock_opaque + 40))(v14, &v181, 0, 0, v175, &v180);
                if (v180.__cv_.__sig)
                {
                  v78 = CFGetTypeID(v180.__cv_.__sig);
                  if (v78 == CFNumberGetTypeID())
                  {
                    *buf = v180.__cv_.__sig;
                    if (!v180.__cv_.__sig)
                    {
                      goto LABEL_292;
                    }

                    v79 = CFGetTypeID(v180.__cv_.__sig);
                    if (v79 != CFNumberGetTypeID())
                    {
                      v111 = __cxa_allocate_exception(0x10uLL);
                      std::runtime_error::runtime_error(v111, "Could not construct");
                    }

                    if (!*buf)
                    {
LABEL_292:
                      v100 = __cxa_allocate_exception(0x10uLL);
                      std::runtime_error::runtime_error(v100, "Could not construct");
                    }

                    v80 = sub_4A8F8(*buf);
                    if (*buf)
                    {
                      CFRelease(*buf);
                    }

                    v81 = sub_5544(20);
                    v82 = *v81;
                    if (*v81 && os_log_type_enabled(*v81, OS_LOG_TYPE_INFO))
                    {
                      *buf = 136315650;
                      *&buf[4] = "RoutingHandler_Record_N51.cpp";
                      *&buf[12] = 1024;
                      *&buf[14] = 171;
                      *&buf[18] = 1024;
                      *&buf[20] = v80;
                      _os_log_impl(&dword_0, v82, OS_LOG_TYPE_INFO, "%25s:%-5d Received Channel Mask of %u from Codec", buf, 0x18u);
                    }

                    LODWORD(v181.__m_.__sig) = v80;
                    strcpy(buf, "meoabolg");
                    buf[9] = 0;
                    *&buf[10] = 0;
                    sub_163594(v26, buf, 4, &v181);
                    goto LABEL_251;
                  }

                  v107 = sub_5544(14);
                  v108 = *v107;
                  if (*v107 && os_log_type_enabled(*v107, OS_LOG_TYPE_ERROR))
                  {
                    v109 = CFGetTypeID(v180.__cv_.__sig);
                    *buf = 136315650;
                    *&buf[4] = "RoutingHandlerUtilities_Aspen.cpp";
                    *&buf[12] = 1024;
                    *&buf[14] = 1701;
                    *&buf[18] = 2048;
                    *&buf[20] = v109;
                    _os_log_impl(&dword_0, v108, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareIllegalOperationError): Unknown type (%lu) used for enabled channel mask (expected CFNumber).", buf, 0x1Cu);
                  }

                  v106 = 1852797029;
                }

                else
                {
                  v104 = sub_5544(14);
                  v105 = *v104;
                  if (*v104 && os_log_type_enabled(*v104, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 136315394;
                    *&buf[4] = "RoutingHandlerUtilities_Aspen.cpp";
                    *&buf[12] = 1024;
                    *&buf[14] = 1700;
                    _os_log_impl(&dword_0, v105, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareUnspecifiedError): failed to retrieve enabled channel mask.", buf, 0x12u);
                  }

                  v106 = 2003329396;
                }

                v110 = __cxa_allocate_exception(0x10uLL);
                *v110 = &off_6DDDD0;
                v110[2] = v106;
              }

LABEL_251:
              v83 = *(a2 + 12);
              if (v83 == 1986556788 || v83 == 1987211117)
              {
                strcpy(buf, "dbedbolg");
                buf[9] = 0;
                *&buf[10] = 0;
                sub_163594(v26, buf, 4, &unk_5C72F8);
              }

              else
              {
                if (v83 != 1987208039)
                {
                  v101 = sub_5544(14);
                  v102 = *v101;
                  if (*v101 && os_log_type_enabled(*v101, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 136315394;
                    *&buf[4] = "RoutingHandler_Record_N51.cpp";
                    *&buf[12] = 1024;
                    *&buf[14] = 88;
                    _os_log_impl(&dword_0, v102, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Invalid state encountered while trying to configure speech detection VAD", buf, 0x12u);
                  }

                  v103 = __cxa_allocate_exception(0x10uLL);
                  std::logic_error::logic_error(v103, "Invalid state encountered while trying to configure speech detection VAD");
                }

                strcpy(buf, "dsedbolg");
                buf[9] = 0;
                *&buf[10] = 0;
                sub_163594(v26, buf, 4, &unk_5C72F8);
              }

              v84 = (*(*&v26->_os_unfair_lock_opaque + 480))(v26);
              v124 = 0;
              v125 = 0;
              v126 = 0;
              sub_46980(&v124, v127, v128, (v128 - v127) >> 2);
              if (v124 == v125)
              {
                v85 = 0;
              }

              else
              {
                v85 = 0;
                v86 = v124;
                do
                {
                  if (*v86 == v84)
                  {
                    break;
                  }

                  ++v85;
                  ++v86;
                }

                while (v86 != v125);
              }

              v87 = 1 << v85;
              if (v124)
              {
                v125 = v124;
                operator delete(v124);
              }

              LODWORD(v181.__m_.__sig) = v87;
              strcpy(buf, "maoabolg");
              buf[9] = 0;
              *&buf[10] = 0;
              sub_163594(v26, buf, 4, &v181);
              if (v123)
              {
                v88 = v130;
                (*(*a1 + 40))(a1, v130, v26);
                v89 = v131;
                *buf = v88;
                *&buf[8] = v131;
                if (v131)
                {
                  atomic_fetch_add_explicit(&v131->__shared_weak_owners_, 1uLL, memory_order_relaxed);
                }

                v181.__m_.__sig = 0x696E7074454D6C70;
                *v181.__m_.__opaque = 0;
                sub_3024F0(buf, &v181);
                if (v89)
                {
                  std::__shared_weak_count::__release_weak(v89);
                  *buf = v88;
                  *&buf[8] = v89;
                  atomic_fetch_add_explicit(&v89->__shared_weak_owners_, 1uLL, memory_order_relaxed);
                }

                else
                {
                  *buf = v88;
                  *&buf[8] = 0;
                }

                v181.__m_.__sig = 0x676C6F6245436C70;
                *v181.__m_.__opaque = 0;
                sub_3024F0(buf, &v181);
                if (v89)
                {
                  std::__shared_weak_count::__release_weak(v89);
                }
              }

              sub_FC464(__p, v8 + 2, v26);
              sub_302860(v26);
              if (v127)
              {
                operator delete(v127);
              }

LABEL_103:
              sub_2FBAF8(v26, 0, *(a2 + 12), *(a2 + 184), v8[9], a3);
              if (*(v139 + 304) == 2004367664)
              {
                sub_300D58(*(a2 + 12), v26);
              }

              sub_147688();
              if (byte_6E6560 == 1)
              {
                v37 = sub_3F8E40(*(a2 + 104), *(a2 + 12), v10);
                sub_300DD0((v37 > 0xFFu) & v37, v130);
              }

              v38 = sub_102988(*(a2 + 12));
              if (*(a2 + 268))
              {
                v39 = *(a2 + 264);
              }

              else
              {
                v39 = v38;
              }

              if (*(a2 + 128))
              {
                v40 = 0;
              }

              else
              {
                v40 = *(a2 + 124) == 1986291046;
              }

              v41 = v40;
              v180.__cv_.__sig = 0;
              *v180.__cv_.__opaque = 0;
              v42 = v8[3];
              if (v42)
              {
                v43 = std::__shared_weak_count::lock(v42);
                if (v43)
                {
                  v44 = v43;
                  v45 = v8[2];
                  atomic_fetch_add_explicit(&v43->__shared_weak_owners_, 1uLL, memory_order_relaxed);
                  v46 = *v180.__cv_.__opaque;
                  v180.__cv_.__sig = v45;
                  *v180.__cv_.__opaque = v44;
                  if (v46)
                  {
                    std::__shared_weak_count::__release_weak(v46);
                  }

                  sub_1A8C0(v44);
                }

                else
                {
                  v47 = *v180.__cv_.__opaque;
                  v180.__cv_.__sig = 0;
                  *v180.__cv_.__opaque = 0;
                  if (v47)
                  {
                    std::__shared_weak_count::__release_weak(v47);
                  }
                }
              }

              sub_CF934(&v181, &v180, 1);
              v170 = v39;
              LOBYTE(v171) = 0;
              BYTE1(v171) = v41;
              operator new();
            }

LABEL_70:
            atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
            goto LABEL_71;
          }

          if (!v12)
          {
            goto LABEL_64;
          }
        }

        else
        {
          sub_CB5C4();
        }

LABEL_69:
        v26 = v14;
        goto LABEL_70;
      }
    }

    else
    {
      std::__shared_weak_count::__release_weak(v13);
    }
  }

  else
  {
    v130 = 0;
    v131 = 0;
  }

  v90 = sub_5544(14);
  v91 = *v90;
  if (*v90 && os_log_type_enabled(*v90, OS_LOG_TYPE_ERROR))
  {
    (*(*v9 + 144))(&v181, v9);
    v92 = v181.__m_.__opaque[15];
    v93 = v181.__m_.__sig;
    sub_22170(&v180, v10);
    v94 = &v181;
    if (v92 < 0)
    {
      v94 = v93;
    }

    if (v180.__cv_.__opaque[15] >= 0)
    {
      v95 = &v180;
    }

    else
    {
      v95 = v180.__cv_.__sig;
    }

    *buf = 136315906;
    *&buf[4] = "RoutingHandler_Record_N51.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 129;
    *&buf[18] = 2080;
    *&buf[20] = v94;
    v178 = 2080;
    v179 = v95;
    _os_log_impl(&dword_0, v91, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareUnspecifiedError) [owningDevice is NULL]: could not get device for port \\%s\\ (type: '%s').", buf, 0x26u);
    if (v180.__cv_.__opaque[15] < 0)
    {
      operator delete(v180.__cv_.__sig);
    }

    if (v181.__m_.__opaque[15] < 0)
    {
      operator delete(v181.__m_.__sig);
    }
  }

  v96 = __cxa_allocate_exception(0x10uLL);
  *v96 = &off_6DDDD0;
  v96[2] = 2003329396;
}

void sub_44C8D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, uint64_t a40, uint64_t a41, std::__shared_weak_count *a42, uint64_t a43, std::__shared_weak_count *a44, void *a45, uint64_t a46, uint64_t a47, void *a48, uint64_t a49, uint64_t a50, uint64_t a51, std::__shared_weak_count *a52)
{
  if (STACK[0x270])
  {
    operator delete(STACK[0x270]);
  }

  sub_73C20(&STACK[0x2B0]);
  std::condition_variable::~condition_variable((v53 - 216));
  std::mutex::~mutex((v53 - 168));
  if (a38)
  {
    operator delete(a38);
  }

  if ((a23 & 1) == 0)
  {
    sub_1A8C0(v52);
  }

  if (a42)
  {
    sub_1A8C0(a42);
  }

  if (a44)
  {
    sub_1A8C0(a44);
  }

  if (a45)
  {
    operator delete(a45);
  }

  if (a48)
  {
    operator delete(a48);
  }

  if (a52)
  {
    sub_1A8C0(a52);
  }

  _Unwind_Resume(a1);
}

void sub_44CCE0()
{
  sub_310AF4();
  v6 = 1;
  *v7 = 0u;
  *v8 = 0u;
  v9 = 0u;
  *v10 = 0;
  v0 = sub_106F10();
  v10[4] = (v0 > 0xFFu) & v0;
  v10[5] = 1;
  *&v10[6] = 0;
  v11 = 0;
  v12 = 16777473;
  v14[0] = 0;
  v14[1] = 0;
  v13 = v14;
  v15 = 0;
  v16 = 0;
  v17 = -1044381696;
  v18 = 1;
  v19 = -1044381696;
  v20 = 1;
  v21 = 0;
  v22 = 1;
  v23 = -1056964608;
  v24 = 1;
  v25 = -1033371648;
  v26 = 1;
  v27 = 0;
  v28 = 1;
  v29 = -1033371648;
  v30 = 1;
  v31 = 0;
  v32 = 1;
  v33 = -1044381696;
  v34 = 1;
  v35 = 0;
  v36 = 1;
  v37 = -1033371648;
  v38 = 1;
  v39 = 0;
  v40 = 1;
  v41 = -1033371648;
  v42 = 1;
  v43 = -1055916032;
  v44 = 1;
  v45 = -1033371648;
  v46 = 1;
  v47 = 0;
  v48 = 1;
  v49 = -1055916032;
  v50 = 1;
  v51 = -1033371648;
  v52 = 1;
  v53 = -1055916032;
  v54 = 1;
  v55 = -1033371648;
  v56 = 1;
  v57 = 0;
  v58 = 1;
  v59 = -1055916032;
  v60 = 1;
  v61 = -1043333120;
  v62 = 1;
  v63 = 0x40000000;
  v64 = 1;
  v65 = 16777472;
  v66 = 0;
  v67 = 1;
  v68 = 0;
  v69 = 1;
  v70 = 1103626240;
  v71 = 1;
  v72 = 0;
  v73 = 1;
  v74 = 1094713344;
  v75 = 1;
  v76 = 1094713344;
  v77 = 1;
  v78 = 1094713344;
  v79 = 1;
  v80 = -1061158912;
  v81 = 1;
  v82 = 1107296256;
  v83 = 1;
  v84 = 1107296256;
  v85 = 1;
  v86 = 1092616192;
  v87 = 1;
  v88 = 0;
  v89 = 1;
  v90 = 0;
  v91 = 1;
  v92 = 16777472;
  v93[0] = 0;
  v93[72] = 0;
  v93[80] = 0;
  v93[120] = 0;
  v93[128] = 0;
  v93[200] = 0;
  v93[208] = 0;
  v93[248] = 0;
  LOBYTE(v94) = 0;
  v95 = 0;
  LOBYTE(v96) = 0;
  v97 = 0;
  LOBYTE(v98) = 0;
  v99 = 0;
  LOBYTE(v100) = 0;
  v101 = 0;
  v102 = 0;
  v103 = 0;
  LOBYTE(v104) = 0;
  v105 = 0;
  LOBYTE(v106) = 0;
  v107 = 0;
  LOBYTE(v108) = 0;
  v109 = 0;
  v110 = 0;
  v111 = 0;
  LOBYTE(v112) = 0;
  v113 = 0;
  v114 = 0;
  v115 = 0;
  v116 = 0;
  v117 = 0;
  v118 = 0;
  v119 = 0;
  v120 = 0;
  v121 = 0;
  v122 = 0;
  v123 = 0;
  v124 = 0;
  v125 = 0;
  v126 = 1;
  v127 = 0;
  v128 = 0;
  LOBYTE(v129) = 0;
  v130 = 0;
  LOBYTE(v131) = 0;
  v132 = 0;
  LOBYTE(v133) = 0;
  v134 = 0;
  LOBYTE(v135) = 0;
  v136 = 0;
  v137 = 0;
  LOBYTE(v138) = 0;
  v139 = 0;
  LOBYTE(v140) = 0;
  v141 = 0;
  LOBYTE(v142) = 0;
  v143 = 0;
  v144 = 0;
  v145 = 0;
  v146 = 0;
  v147 = 0;
  LOBYTE(v148) = 0;
  v149 = 0;
  LOBYTE(v150) = 0;
  v151 = 0;
  LOBYTE(v152) = 0;
  v153 = 0;
  LOBYTE(v154) = 0;
  v155 = 0;
  v156 = 0;
  v157 = 0;
  v158 = 0;
  v159 = 0;
  LOBYTE(__p) = 0;
  v162 = 0;
  v163.__r_.__value_.__s.__data_[0] = 0;
  v164 = 0;
  v165.__r_.__value_.__s.__data_[0] = 0;
  v166 = 0;
  v167.__r_.__value_.__s.__data_[0] = 0;
  v168 = 0;
  v169 = 256;
  v170 = 0;
  v171 = 0;
  v172 = 0;
  v173 = 0;
  v174 = 0;
  v175 = 0;
  v176 = 0;
  v2 = 1;
  v1 = 1953460273;
  v4 = 1;
  v3 = 2;
  v5 = 5;
  LODWORD(__src) = 3;
  sub_1F8148(v7, &__src, &__src + 4, 1uLL);
  *&__src = 0x400000003;
  sub_1F8148(&v8[1], &__src, &__src + 8, 2uLL);
  *&v10[12] = 257;
  *v10 = 0x101010101010101;
  v12 = 16843008;
  LOBYTE(v15) = 1;
  v61 = -1047527424;
  v62 = 1;
  v70 = 1103101952;
  v71 = 1;
  v76 = 0;
  v77 = 1;
  v78 = 0;
  v79 = 1;
  v74 = 0;
  v75 = 1;
  v90 = 1090519040;
  v91 = 1;
  v80 = -1040187392;
  v81 = 1;
  v63 = 0;
  v64 = 1;
  LOWORD(v65) = 257;
  v92 = 16843009;
  if ((v95 & 1) == 0)
  {
    v95 = 1;
  }

  v94 = 1836282987;
  if ((v97 & 1) == 0)
  {
    v97 = 1;
  }

  v96 = 2;
  if ((v99 & 1) == 0)
  {
    v99 = 1;
  }

  v98 = 8;
  if ((v101 & 1) == 0)
  {
    v101 = 1;
  }

  v100 = 16;
  v104 = 13;
  v105 = 1;
  v106 = 13;
  v107 = 1;
  v108 = 13;
  v109 = 1;
  v112 = 13;
  v113 = 1;
  v129 = 19;
  v130 = 1;
  v131 = 3;
  v132 = 1;
  v133 = 12;
  v134 = 1;
  v135 = 19;
  v136 = 1;
  v148 = 6;
  v149 = 1;
  v150 = 19;
  v151 = 1;
  v152 = 10;
  v153 = 1;
  v154 = 5;
  v155 = 1;
  v137 = 257;
  if ((v139 & 1) == 0)
  {
    v139 = 1;
  }

  v138 = 5;
  if ((v143 & 1) == 0)
  {
    v143 = 1;
  }

  v142 = 8;
  if ((v141 & 1) == 0)
  {
    v141 = 1;
  }

  v140 = 2;
  sub_30F70C(&__src, 101);
  if (v162 == 1)
  {
    if (SHIBYTE(v161) < 0)
    {
      operator delete(__p);
    }

    __p = __src;
    v161 = v178;
  }

  else
  {
    __p = __src;
    v161 = v178;
    v162 = 1;
  }

  sub_1F826C(&v163, "_top_mic_general");
  sub_1F826C(&v165, "_top_mic_measurement");
  sub_1F826C(&v167, "_top_mic_hearing_accessibility");
  sub_47DB04(&v1);
  sub_1E0054(v93);
  sub_477A0(v14[0]);
  if (v8[1])
  {
    *&v9 = v8[1];
    operator delete(v8[1]);
  }

  if (v7[0])
  {
    v7[1] = v7[0];
    operator delete(v7[0]);
  }
}

uint64_t sub_44D3A0(uint64_t result, int a2, int a3, float a4, float a5)
{
  *(result + 20) = a4;
  *(result + 24) = a2;
  *(result + 28) = a5;
  *(result + 17) = a3;
  if (a3)
  {
    v5 = 20;
  }

  else
  {
    v5 = 0;
  }

  *(result + 32) = v5;
  *(result + 40) = 0;
  *(result + 56) = 0;
  *(result + 52) = 0;
  return result;
}

void sub_44D3D0(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = v2 == __stdoutp;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
LABEL_13:
    *(a1 + 40) = 0;
    *(a1 + 8) = 0;
  }

  else
  {
    v4 = -200;
    do
    {
      if ((atomic_exchange((a1 + 16), 1u) & 1) == 0)
      {
        fclose(*(a1 + 8));
        atomic_store(0, (a1 + 16));
        goto LABEL_13;
      }

      usleep(0x1388u);
    }

    while (!__CFADD__(v4++, 1));
    v6 = sub_5544(26);
    v7 = *v6;
    if (*v6)
    {
      if (os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
      {
        v8 = 136315650;
        v9 = "AncLogger.cpp";
        v10 = 1024;
        v11 = 58;
        v12 = 1024;
        v13 = 1000;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to aquire lock after %u ms", &v8, 0x18u);
      }
    }
  }
}

BOOL sub_44D4FC(uint64_t a1, char *__s1)
{
  if (*(a1 + 8))
  {
    return 0;
  }

  *(a1 + 40) = 0;
  if (!strncmp(__s1, "stdout", 7uLL))
  {
    *(a1 + 8) = __stdoutp;
    return 1;
  }

  else
  {
    v5 = fopen(__s1, "w");
    *(a1 + 8) = v5;
    return v5 != 0;
  }
}

uint64_t sub_44D58C(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  result = _os_feature_enabled_impl();
  if (result)
  {
    if ((*(*a2 + 160))(a2))
    {
      v6 = a2[36] == 1886216820;
    }

    else
    {
      v6 = 0;
    }

    if (v6)
    {
      if (*a3 == 1920167288)
      {
        v7 = *(a3 + 4);
      }

      else
      {
        v7 = 0;
      }

      if (*(a3 + 4) == 1 && *a3 == 1920167273)
      {
        return 1;
      }

      else
      {
        return v7;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_44D840(uint64_t a1, uint64_t a2)
{
  v2 = (*(*a2 + 112))(a2);
  if ((v2 & 0x100000000) != 0 && v2 == 1701865584)
  {
    return 1;
  }

  else
  {
    return BYTE4(v2) & (v2 == 1701865569);
  }
}

uint64_t sub_44D9DC(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 304) != 1781740087)
  {
    return 0;
  }

  if (sub_48EDC())
  {
    return 1;
  }

  result = MGGetBoolAnswer();
  if (result)
  {

    return MGGetBoolAnswer();
  }

  return result;
}

uint64_t sub_44DAD0(uint64_t a1, uint64_t a2)
{
  v3 = sub_7E96C() ^ 1;
  if (*(a2 + 304) == 1781740087)
  {
    return 1;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_44DB94(uint64_t a1, uint64_t a2)
{
  v3 = sub_7E96C() ^ 1;
  if (*(a2 + 304) == 1781740087)
  {
    return 1;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_44DC58(uint64_t a1, uint64_t a2)
{
  v3 = sub_7E96C() ^ 1;
  if (*(a2 + 304) == 1781740087)
  {
    return v3;
  }

  else
  {
    return 1;
  }
}

void sub_44DFEC()
{
  sub_1DFA48(v0);
  v5 = 256;
  v6 = 256;
  v7 = 256;
  sub_30F70C(&v13, 195);
  if (v12 == 1)
  {
    if (SHIBYTE(v11) < 0)
    {
      operator delete(__p);
    }

    __p = v13;
    v11 = v14;
  }

  else
  {
    __p = v13;
    v11 = v14;
    v12 = 1;
  }

  sub_18B160(v0);
  sub_1E0054(&v9);
  sub_477A0(v8);
  if (v3)
  {
    v4 = v3;
    operator delete(v3);
  }

  if (v1)
  {
    v2 = v1;
    operator delete(v1);
  }
}

void sub_44E0C0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1E0000(va);
  _Unwind_Resume(a1);
}

uint64_t sub_44E0D8(uint64_t a1, void *a2, void *a3, uint64_t a4, __int128 *a5)
{
  memset(v8, 0, sizeof(v8));
  v7 = 0;
  LOBYTE(v6) = 0;
  result = sub_250178(a1, &qword_6FE090, a2, v8, a4, a5, a3, &v6);
  *result = &off_6BB428;
  *(result + 584) = 0;
  *result = &off_6D6B30;
  return result;
}

void sub_44E164(uint64_t a1)
{
  sub_24EBDC(a1);

  operator delete();
}

uint64_t sub_44E1A0(uint64_t a1, void *a2, __int128 *a3)
{
  memset(v7, 0, 24);
  sub_24FEE8(v8, qword_6FE090);
  sub_44E0D8(a1, a2, v7, v8, a3);
  if (v13 < 0)
  {
    operator delete(__p);
  }

  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v9 < 0)
  {
    operator delete(v8[0]);
  }

  v8[0] = v7;
  sub_72C14(v8);
  return a1;
}

void sub_44E24C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  va_copy(va2, va1);
  v7 = va_arg(va2, void **);
  sub_1E19A0(va2);
  va_copy(v7, va);
  sub_72C14(va1);
  _Unwind_Resume(a1);
}

void sub_44E278(std::string *a1, unsigned int a2)
{
  sub_22170(&v4, a2);
  v3 = std::string::append(&v4, "-Injection", 0xAuLL);
  *a1 = *v3;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v4.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v4.__r_.__value_.__l.__data_);
  }
}

void sub_44E2E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_44E300(uint64_t a1)
{
  sub_24EBDC(a1);

  operator delete();
}

uint64_t sub_44E33C(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  result = _os_feature_enabled_impl();
  if (result)
  {
    if ((*(*a2 + 160))(a2))
    {
      v6 = a2[36] == 1886216820;
    }

    else
    {
      v6 = 0;
    }

    if (v6)
    {
      if (*a3 == 1920167288)
      {
        v7 = *(a3 + 4);
      }

      else
      {
        v7 = 0;
      }

      if (*(a3 + 4) == 1 && *a3 == 1920167273)
      {
        return 1;
      }

      else
      {
        return v7;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_44E5F0(uint64_t a1, uint64_t a2)
{
  v2 = (*(*a2 + 112))(a2);
  if ((v2 & 0x100000000) != 0 && v2 == 1701865584)
  {
    return 1;
  }

  else
  {
    return BYTE4(v2) & (v2 == 1701865569);
  }
}

uint64_t sub_44E78C(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 304) != 1781740087)
  {
    return 0;
  }

  if (sub_48EDC())
  {
    return 1;
  }

  result = MGGetBoolAnswer();
  if (result)
  {

    return MGGetBoolAnswer();
  }

  return result;
}

uint64_t sub_44E880(uint64_t a1, uint64_t a2)
{
  v3 = sub_7E96C() ^ 1;
  if (*(a2 + 304) == 1781740087)
  {
    return 1;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_44E944(uint64_t a1, uint64_t a2)
{
  v3 = sub_7E96C() ^ 1;
  if (*(a2 + 304) == 1781740087)
  {
    return 1;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_44EA08(uint64_t a1, uint64_t a2)
{
  v3 = sub_7E96C() ^ 1;
  if (*(a2 + 304) == 1781740087)
  {
    return v3;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_44ED9C(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  result = _os_feature_enabled_impl();
  if (result)
  {
    if ((*(*a2 + 160))(a2))
    {
      v6 = a2[36] == 1886216820;
    }

    else
    {
      v6 = 0;
    }

    if (v6)
    {
      if (*a3 == 1920167288)
      {
        v7 = *(a3 + 4);
      }

      else
      {
        v7 = 0;
      }

      if (*(a3 + 4) == 1 && *a3 == 1920167273)
      {
        return 1;
      }

      else
      {
        return v7;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_44F050(uint64_t a1, uint64_t a2)
{
  v2 = (*(*a2 + 112))(a2);
  if ((v2 & 0x100000000) != 0 && v2 == 1701865584)
  {
    return 1;
  }

  else
  {
    return BYTE4(v2) & (v2 == 1701865569);
  }
}

uint64_t sub_44F1EC(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 304) != 1781740087)
  {
    return 0;
  }

  if (sub_48EDC())
  {
    return 1;
  }

  result = MGGetBoolAnswer();
  if (result)
  {

    return MGGetBoolAnswer();
  }

  return result;
}

uint64_t sub_44F2E0(uint64_t a1, uint64_t a2)
{
  v3 = sub_7E96C() ^ 1;
  if (*(a2 + 304) == 1781740087)
  {
    return 1;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_44F3A4(uint64_t a1, uint64_t a2)
{
  v3 = sub_7E96C() ^ 1;
  if (*(a2 + 304) == 1781740087)
  {
    return 1;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_44F468(uint64_t a1, uint64_t a2)
{
  v3 = sub_7E96C() ^ 1;
  if (*(a2 + 304) == 1781740087)
  {
    return v3;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_44F7FC(uint64_t *a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, float *a6, uint64_t a7)
{
  v14 = sub_5544(26);
  v15 = *(v14 + 8);
  if (a5 == 4)
  {
    if (v15)
    {
      v16 = *v14;
      if (*v14)
      {
        if (os_log_type_enabled(*v14, OS_LOG_TYPE_DEBUG))
        {
          v48 = *a6;
          *buf = 136317442;
          v32 = "AncHardwareControl.cpp";
          v33 = 1024;
          v34 = 41;
          v35 = 2080;
          v36 = "SetProperty";
          v37 = 1024;
          v38 = a2;
          v39 = 1024;
          v40 = HIBYTE(a2);
          v41 = 1024;
          v42 = BYTE2(a2);
          v43 = 1024;
          v44 = BYTE1(a2);
          v45 = 1024;
          v46 = a2;
          v47 = 1024;
          v49 = 2048;
          v50 = v48;
          v17 = "%25s:%-5d %s selector=0x%x '%c%c%c%c', data=0x%08x %g";
          v18 = v16;
          v19 = 74;
LABEL_10:
          _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEBUG, v17, buf, v19);
        }
      }
    }
  }

  else if (v15)
  {
    v20 = *v14;
    if (*v14)
    {
      if (os_log_type_enabled(*v14, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136316930;
        v32 = "AncHardwareControl.cpp";
        v33 = 1024;
        v34 = 39;
        v35 = 2080;
        v36 = "SetProperty";
        v37 = 1024;
        v38 = a2;
        v39 = 1024;
        v40 = HIBYTE(a2);
        v41 = 1024;
        v42 = BYTE2(a2);
        v43 = 1024;
        v44 = BYTE1(a2);
        v45 = 1024;
        v46 = a2;
        v17 = "%25s:%-5d %s selector=0x%x '%c%c%c%c'";
        v18 = v20;
        v19 = 58;
        goto LABEL_10;
      }
    }
  }

  v21 = a1[1];
  if (!v21)
  {
    return 5;
  }

  v22 = std::__shared_weak_count::lock(v21);
  if (!v22)
  {
    return 5;
  }

  v23 = v22;
  v24 = *a1;
  if (*a1)
  {
    v29 = a2;
    v30 = 1886679669;
    v25 = (*(v24 + 32))(&v29, a3, a4, a5, a6, a7);
    if (v25)
    {
      v26 = sub_5544(26);
      v27 = *v26;
      if (*v26)
      {
        if (os_log_type_enabled(*v26, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315906;
          v32 = "AncHardwareControl.cpp";
          v33 = 1024;
          v34 = 54;
          v35 = 2080;
          v36 = "SetProperty";
          v37 = 1024;
          v38 = v25;
          _os_log_impl(&dword_0, v27, OS_LOG_TYPE_ERROR, "%25s:%-5d %s failed, status=0x%x", buf, 0x22u);
        }
      }
    }
  }

  else
  {
    v25 = 5;
  }

  sub_1A8C0(v23);
  return v25;
}

uint64_t sub_44FB2C(uint64_t *a1, unsigned int a2, uint64_t a3, uint64_t a4, _DWORD *a5, float *a6, uint64_t a7)
{
  v14 = sub_5544(26);
  if (*(v14 + 8))
  {
    v15 = *v14;
    if (*v14)
    {
      if (os_log_type_enabled(*v14, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136316930;
        v33 = "AncHardwareControl.cpp";
        v34 = 1024;
        v35 = 62;
        v36 = 2080;
        v37 = "GetProperty";
        v38 = 1024;
        v39 = *&a2;
        v40 = 1024;
        *v41 = HIBYTE(a2);
        *&v41[4] = 1024;
        *&v41[6] = BYTE2(a2);
        v42 = 1024;
        v43 = BYTE1(a2);
        v44 = 1024;
        v45 = a2;
        _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s selector=0x%x '%c%c%c%c'", buf, 0x3Au);
      }
    }
  }

  v16 = a1[1];
  if (v16)
  {
    v17 = std::__shared_weak_count::lock(v16);
    if (v17)
    {
      v18 = v17;
      v19 = *a1;
      if (*a1)
      {
        v30 = a2;
        v31 = 1886679669;
        v20 = (*(v19 + 24))(&v30, a3, a4, a5, a6, a7);
        if (v20)
        {
          v21 = sub_5544(26);
          v22 = *v21;
          if (!*v21 || !os_log_type_enabled(*v21, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_20;
          }

          *buf = 136315906;
          v33 = "AncHardwareControl.cpp";
          v34 = 1024;
          v35 = 75;
          v36 = 2080;
          v37 = "GetProperty";
          v38 = 1024;
          v39 = *&v20;
          v23 = "%25s:%-5d %s failed, status=0x%x";
          v24 = v22;
          v25 = OS_LOG_TYPE_ERROR;
          v26 = 34;
        }

        else
        {
          if (*a5 != 4)
          {
            goto LABEL_20;
          }

          v27 = sub_5544(26);
          if ((*(v27 + 8) & 1) == 0)
          {
            goto LABEL_20;
          }

          v28 = *v27;
          if (!*v27 || !os_log_type_enabled(*v27, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_20;
          }

          v39 = *a6;
          *buf = 136316162;
          v33 = "AncHardwareControl.cpp";
          v34 = 1024;
          v35 = 78;
          v36 = 2080;
          v37 = "GetProperty";
          v38 = 1024;
          v40 = 2048;
          *v41 = v39;
          v23 = "%25s:%-5d %s value=0x%08x %g";
          v24 = v28;
          v25 = OS_LOG_TYPE_DEBUG;
          v26 = 44;
        }

        _os_log_impl(&dword_0, v24, v25, v23, buf, v26);
      }

      else
      {
        v20 = 5;
      }

LABEL_20:
      sub_1A8C0(v18);
      return v20;
    }
  }

  return 5;
}

uint64_t sub_44FE3C(uint64_t *a1, int a2, uint64_t a3, uint64_t a4)
{
  v5 = a1[1];
  if (!v5)
  {
    return 5;
  }

  v9 = std::__shared_weak_count::lock(v5);
  if (!v9)
  {
    return 5;
  }

  v10 = v9;
  v11 = *a1;
  if (*a1)
  {
    v16 = 1886679669;
    v14 = 0;
    v15 = a2;
    v12 = (*(v11 + 16))(&v15, 0, 0, &v14, a4);
    if (!v12)
    {
      if (v14 >= 0x10)
      {
        operator new[]();
      }

      if (v14 == 8)
      {
        v12 = (*(v11 + 24))(&v15, 0, 0, &v14, a3, a4);
      }

      else
      {
        v12 = 0xFFFFFFFFLL;
      }
    }
  }

  else
  {
    v12 = 5;
  }

  sub_1A8C0(v10);
  return v12;
}

uint64_t sub_44FFD4(uint64_t a1, int a2, int *a3, unsigned int a4)
{
  if (a2 != 21)
  {
    return 4294956417;
  }

  if (a4 < 4)
  {
    return 4294956445;
  }

  v6 = *a3;
  v7 = *a3 != 0;
  if (v7 != (*(*a1 + 136))(a1))
  {
    (*(*a1 + 144))(a1, v6 != 0);
  }

  return 0;
}

uint64_t sub_45008C(uint64_t a1, int a2, _DWORD *a3)
{
  if (a2 != 21)
  {
    return 4294956417;
  }

  v4 = (*(*a1 + 136))(a1);
  result = 0;
  *a3 = v4;
  return result;
}

uint64_t sub_4500F0(uint64_t a1, int a2, _DWORD *a3, _BYTE *a4)
{
  if (a2 != 21)
  {
    return 4294956417;
  }

  result = 0;
  *a4 = 1;
  *a3 = 4;
  return result;
}

uint64_t sub_450118(uint64_t a1, int a2, float *a3)
{
  v4 = *(a1 + 16);
  if (!v4 || !(*(*v4 + 48))(v4))
  {
    return 4294956429;
  }

  result = 4294956418;
  if (a2 > 65537)
  {
    if (a2 == 65538)
    {
      v9 = (*(**(a1 + 16) + 80))(*(a1 + 16));
    }

    else
    {
      if (a2 != 65540)
      {
        return result;
      }

      v9 = (*(**(a1 + 16) + 32))(*(a1 + 16));
    }

    goto LABEL_13;
  }

  if (a2 != 0x10000)
  {
    if (a2 != 65537)
    {
      return result;
    }

    v9 = (*(**(a1 + 16) + 96))(*(a1 + 16));
LABEL_13:
    v10 = v9;
    goto LABEL_14;
  }

  LOBYTE(v7) = *(a1 + 9);
  v10 = v7;
LABEL_14:
  result = 0;
  *a3 = v10;
  return result;
}

uint64_t sub_450258(uint64_t a1, int a2, float a3)
{
  v4 = *(a1 + 16);
  if (!v4 || !(*(*v4 + 48))(v4))
  {
    return 4294956429;
  }

  result = 4294956417;
  if (a2 <= 65537)
  {
    if (a2 != 0x10000)
    {
      if (a2 != 65537)
      {
        return result;
      }

      v8 = (*(**(a1 + 16) + 88))(*(a1 + 16), a3 != 0.0);
      goto LABEL_30;
    }

    if (a3 == 0.0)
    {
      goto LABEL_27;
    }

    v10 = *(a1 + 16);
    if (v10)
    {
      if (*(v10 + 12) != 2)
      {
LABEL_27:
        result = sub_450714(a1, a3 != 0.0);
        if (!result)
        {
          *(a1 + 9) = a3 != 0.0;
        }

        return result;
      }

      if (*(a1 + 80))
      {
        if (*(a1 + 104))
        {
          if (*(a1 + 40))
          {
            v11 = *(a1 + 96);
            if (v11)
            {
              v12 = *(v10 + 104);
              *(v10 + 104) = v11;
              CFRetain(v11);
              if (v12)
              {
                CFRelease(v12);
              }

              v13 = *(a1 + 104);
              if (v13)
              {
                v14 = *(v10 + 112);
                *(v10 + 112) = v13;
                CFRetain(v13);
                if (v14)
                {
                  CFRelease(v14);
                }

                if ((*(*v10 + 128))(v10, *(a1 + 80), 0))
                {
                  goto LABEL_27;
                }

                return 4294956428;
              }

              v23 = sub_5544(26);
              v22 = *v23;
              if (!*v23 || !os_log_type_enabled(*v23, OS_LOG_TYPE_ERROR))
              {
                return 4294956428;
              }

              v24 = 136315394;
              v25 = "AncManagerV2.cpp";
              v26 = 1024;
              v27 = 348;
            }

            else
            {
              v21 = sub_5544(26);
              v22 = *v21;
              if (!*v21 || !os_log_type_enabled(*v21, OS_LOG_TYPE_ERROR))
              {
                return 4294956428;
              }

              v24 = 136315394;
              v25 = "AncManagerV2.cpp";
              v26 = 1024;
              v27 = 336;
            }

            _os_log_impl(&dword_0, v22, OS_LOG_TYPE_ERROR, "%25s:%-5d inDSPImage!=nullptr failed", &v24, 0x12u);
            return 4294956428;
          }

          v20 = sub_5544(26);
          v16 = *v20;
          if (!*v20 || !os_log_type_enabled(*v20, OS_LOG_TYPE_ERROR))
          {
            return 4294956429;
          }

          v24 = 136315394;
          v25 = "ANCInterface.cpp";
          v26 = 1024;
          v27 = 292;
          v17 = "%25s:%-5d mControlDeviceCallbackInterface not initialized";
        }

        else
        {
          v19 = sub_5544(26);
          v16 = *v19;
          if (!*v19 || !os_log_type_enabled(*v19, OS_LOG_TYPE_ERROR))
          {
            return 4294956429;
          }

          v24 = 136315394;
          v25 = "ANCInterface.cpp";
          v26 = 1024;
          v27 = 287;
          v17 = "%25s:%-5d Missing DSP main image";
        }
      }

      else
      {
        v18 = sub_5544(26);
        v16 = *v18;
        if (!*v18 || !os_log_type_enabled(*v18, OS_LOG_TYPE_ERROR))
        {
          return 4294956429;
        }

        v24 = 136315394;
        v25 = "ANCInterface.cpp";
        v26 = 1024;
        v27 = 282;
        v17 = "%25s:%-5d Missing ANC tuning dictionary";
      }
    }

    else
    {
      v15 = sub_5544(26);
      v16 = *v15;
      if (!*v15 || !os_log_type_enabled(*v15, OS_LOG_TYPE_ERROR))
      {
        return 4294956429;
      }

      v24 = 136315394;
      v25 = "ANCInterface.cpp";
      v26 = 1024;
      v27 = 274;
      v17 = "%25s:%-5d AncManager is null";
    }

    _os_log_impl(&dword_0, v16, OS_LOG_TYPE_ERROR, v17, &v24, 0x12u);
    return 4294956429;
  }

  if (a2 == 65538)
  {
    v8 = (*(**(a1 + 16) + 72))(*(a1 + 16), a3 != 0.0);
LABEL_30:
    if (v8)
    {
      return 0;
    }

    else
    {
      return 4294956421;
    }
  }

  if (a2 == 65540)
  {
    if (a3 - 256 <= 0x300 && (a3 & 0x3FF) == 0)
    {
      (*(**(a1 + 16) + 40))(*(a1 + 16));
      return 0;
    }

    else
    {
      return 4294956445;
    }
  }

  return result;
}

uint64_t sub_450714(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return 4294956429;
  }

  if (!*(a1 + 40))
  {
    v6 = sub_5544(26);
    v7 = *v6;
    if (*v6 && os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
    {
      v12 = 136315394;
      v13 = "ANCInterface.cpp";
      v14 = 1024;
      v15 = 313;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d mControlDeviceCallbackInterface not initialized", &v12, 0x12u);
    }

    return 4294956429;
  }

  if ((a2 & 1) == 0)
  {
    (*(*v3 + 88))(v3, 1);
    v3 = *(a1 + 16);
  }

  if ((*(*v3 + 56))(v3, a2, 0))
  {
    if ((*(**(a1 + 16) + 72))(*(a1 + 16), a2))
    {
      return 0;
    }

    v11 = sub_5544(26);
    v9 = *v11;
    if (!*v11 || !os_log_type_enabled(*v11, OS_LOG_TYPE_ERROR))
    {
      return 4294956421;
    }

    v12 = 136315650;
    v13 = "ANCInterface.cpp";
    v14 = 1024;
    v15 = 327;
    v16 = 1024;
    v17 = a2;
    v10 = "%25s:%-5d EnableOversight(%u) failed\n";
  }

  else
  {
    v8 = sub_5544(26);
    v9 = *v8;
    if (!*v8 || !os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
    {
      return 4294956421;
    }

    v12 = 136315650;
    v13 = "ANCInterface.cpp";
    v14 = 1024;
    v15 = 321;
    v16 = 1024;
    v17 = a2;
    v10 = "%25s:%-5d EnableANC(%u) failed\n";
  }

  _os_log_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, v10, &v12, 0x18u);
  return 4294956421;
}

uint64_t sub_450964(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v3 = 0;
  *a3 = 0;
  for (i = 0x10000; i != 65539; ++i)
  {
    if (a2)
    {
      *(a2 + 4 * v3) = i;
      v3 = *a3;
    }

    *a3 = ++v3;
  }

  return 0;
}

uint64_t sub_4509A8(int a1, int a2, char *buffer)
{
  *(buffer + 24) = 0;
  *(buffer + 7) = 0;
  if (a2 > 65537)
  {
    if (a2 == 65538)
    {
      v4 = @"Enable oversight";
      goto LABEL_14;
    }

    if (a2 == 65540)
    {
      *(buffer + 9) = @"block size";
      *(buffer + 24) = 0x8000000;
      CFStringGetCString(@"block size", buffer, 64, 0x8000100u);
      result = 0;
      *(buffer + 20) = 1;
      *(buffer + 84) = 0x4480000043800000;
      v6 = 0xC000000044800000;
LABEL_15:
      *(buffer + 92) = v6;
      return result;
    }
  }

  else
  {
    if (a2 == 0x10000)
    {
      v4 = @"Enable ANC";
      goto LABEL_14;
    }

    if (a2 == 65537)
    {
      v4 = @"Mute the ANC output";
LABEL_14:
      *(buffer + 9) = v4;
      *(buffer + 24) = 0x8000000;
      CFStringGetCString(v4, buffer, 64, 0x8000100u);
      result = 0;
      *(buffer + 20) = 2;
      *(buffer + 84) = 0x3F80000000000000;
      v6 = 0xC000000000000000;
      goto LABEL_15;
    }
  }

  v7 = sub_5544(26);
  v8 = *v7;
  if (*v7)
  {
    if (os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315394;
      v10 = "ANCInterface.cpp";
      v11 = 1024;
      v12 = 412;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d ANCInterface::GetParameterInfo invalid param", &v9, 0x12u);
    }
  }

  return 4294956418;
}

uint64_t sub_450B60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!*(a1 + 16))
  {
    return 4294956429;
  }

  if (((*(*a1 + 136))(a1) & 1) != 0 || *(a1 + 9) != 1)
  {
    return 0;
  }

  v8 = *(a1 + 72);
  v9 = a3;
  if (v8 != a3)
  {
    if (v8 >= 0x401)
    {
      v13 = sub_5544(14);
      v14 = *v13;
      if (*v13)
      {
        if (os_log_type_enabled(*v13, OS_LOG_TYPE_ERROR))
        {
          v15 = 136315394;
          v16 = "ANCInterface.cpp";
          v17 = 1024;
          v18 = 622;
          _os_log_impl(&dword_0, v14, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: IO framesize is too large.", &v15, 0x12u);
        }
      }
    }

    *(a1 + 72) = a3;
    sub_A5B24(*(a1 + 64), 4 * a3);
    v9 = *(a1 + 72);
  }

  (*(**(a1 + 16) + 112))(*(a1 + 16), v9, a4, *(a1 + 64));
  (*(**(a1 + 16) + 120))(*(a1 + 16), a2, a3, *(a1 + 64));
  if (*(a1 + 10) != 1)
  {
    return 0;
  }

  v10 = (*(**(a1 + 112) + 64))(*(a1 + 112), a1 + 128, 2048);
  if (v10)
  {
    *(a1 + 2176) = v10;
  }

  result = *(a1 + 2184);
  if (result)
  {
    v12 = (*(*result + 72))(result, a1 + 2200);
    result = 0;
    *(a1 + 2224) = v12;
  }

  return result;
}

uint64_t sub_450DA4(uint64_t a1, float a2, float a3, float a4, float a5)
{
  v6 = *(a1 + 16);
  if (!v6)
  {
    return 4294956429;
  }

  if ((*(*v6 + 64))(v6))
  {
    return 4294956433;
  }

  if ((*(**(a1 + 16) + 104))(*(a1 + 16), a2, a3, a4, a5))
  {
    return 0;
  }

  return 4294956421;
}

uint64_t sub_450E68(uint64_t a1, CFTypeRef cf, CFTypeRef a3)
{
  v5 = *(a1 + 96);
  *(a1 + 96) = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  v6 = *(a1 + 104);
  *(a1 + 104) = a3;
  if (a3)
  {
    CFRetain(a3);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  return 0;
}

uint64_t sub_450ED8(uint64_t a1, CFTypeRef cf)
{
  v2 = *(a1 + 88);
  *(a1 + 88) = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  if (v2)
  {
    CFRelease(v2);
  }

  return 0;
}

uint64_t sub_450F18(uint64_t a1, CFTypeRef cf)
{
  v2 = *(a1 + 80);
  *(a1 + 80) = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  if (v2)
  {
    CFRelease(v2);
  }

  return 0;
}

void sub_450F58(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v7 = sub_5544(26);
  v8 = *v7;
  if (*v7 && os_log_type_enabled(*v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136316162;
    *&buf[4] = "ANCInterface.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 78;
    v16 = 2048;
    v17 = a2;
    v18 = 2048;
    v19 = a3;
    v20 = 1024;
    v21 = a4;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEBUG, "%25s:%-5d ANCInterface::InitializeWithControlDeviceInterface( cb=%p inContext=%p, inFrameSize=%u)", buf, 0x2Cu);
  }

  theString1 = 0;
  v11 = 0x2A2A2A2A6C6E616DLL;
  v12 = -1;
  v13 = 8;
  (*(a2 + 24))(&v11, 0, 0, &v13, &theString1, a3);
  if (CFStringCompare(theString1, @"CS42L71", 0))
  {
    if (CFStringCompare(theString1, @"CS42L75", 0))
    {
      if (CFStringCompare(theString1, @"CS42L77", 0))
      {
        v9 = sub_5544(26);
        v10 = *v9;
        if (*v9)
        {
          if (os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "ANCInterface.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 96;
            _os_log_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d Unsupported device", buf, 0x12u);
          }
        }
      }
    }
  }

  CFRelease(theString1);
  operator new();
}

void sub_4520E8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_452234(char **a1, size_t a2)
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
      sub_189A00();
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