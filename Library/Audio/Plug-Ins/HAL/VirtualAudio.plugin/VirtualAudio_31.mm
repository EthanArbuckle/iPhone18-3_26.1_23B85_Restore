uint64_t sub_27DCE4(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    CFRelease(v2);
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  return a1;
}

uint64_t sub_27DD28(uint64_t a1)
{
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

std::string *sub_27DD6C(uint64_t a1, CFArrayRef theArray, size_t __len, uint64_t a4)
{
  *(a1 + 23) = 1;
  *a1 = 91;
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
    v9 = CFArrayGetCount(theArray);
    if (Count)
    {
      if (v9)
      {
        v10 = 0;
        v11 = v9 - 1;
        v12 = 1;
        do
        {
          if ((v12 & 1) == 0)
          {
            std::string::append(a1, ",", 1uLL);
          }

          sub_1DAEC8(&__b, __len + 2, 32);
          v13 = std::string::insert(&__b, 0, "\n", 1uLL);
          v14 = *&v13->__r_.__value_.__l.__data_;
          v27 = v13->__r_.__value_.__r.__words[2];
          *__p = v14;
          v13->__r_.__value_.__l.__size_ = 0;
          v13->__r_.__value_.__r.__words[2] = 0;
          v13->__r_.__value_.__r.__words[0] = 0;
          if (v27 >= 0)
          {
            v15 = __p;
          }

          else
          {
            v15 = __p[0];
          }

          if (v27 >= 0)
          {
            v16 = HIBYTE(v27);
          }

          else
          {
            v16 = __p[1];
          }

          std::string::append(a1, v15, v16);
          if (SHIBYTE(v27) < 0)
          {
            operator delete(__p[0]);
          }

          if (SHIBYTE(__b.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__b.__r_.__value_.__l.__data_);
          }

          sub_A3B9C(&__b, theArray, v10);
          sub_27D0E8(v28, a4);
          sub_27D180(__p, &__b, __len + 2, v28);
          if (v27 >= 0)
          {
            v17 = __p;
          }

          else
          {
            v17 = __p[0];
          }

          if (v27 >= 0)
          {
            v18 = HIBYTE(v27);
          }

          else
          {
            v18 = __p[1];
          }

          std::string::append(a1, v17, v18);
          if (SHIBYTE(v27) < 0)
          {
            operator delete(__p[0]);
          }

          sub_27B964(v28);
          if (__b.__r_.__value_.__r.__words[0])
          {
            CFRelease(__b.__r_.__value_.__l.__data_);
          }

          if (Count - 1 == v10)
          {
            break;
          }

          v12 = 0;
        }

        while (v11 != v10++);
      }
    }
  }

  sub_1DAEC8(&__b, __len, 32);
  v20 = std::string::insert(&__b, 0, "\n", 1uLL);
  v21 = *&v20->__r_.__value_.__l.__data_;
  v27 = v20->__r_.__value_.__r.__words[2];
  *__p = v21;
  v20->__r_.__value_.__l.__size_ = 0;
  v20->__r_.__value_.__r.__words[2] = 0;
  v20->__r_.__value_.__r.__words[0] = 0;
  if (v27 >= 0)
  {
    v22 = __p;
  }

  else
  {
    v22 = __p[0];
  }

  if (v27 >= 0)
  {
    v23 = HIBYTE(v27);
  }

  else
  {
    v23 = __p[1];
  }

  std::string::append(a1, v22, v23);
  if (SHIBYTE(v27) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(__b.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__b.__r_.__value_.__l.__data_);
  }

  return std::string::append(a1, "]", 1uLL);
}

void sub_27DFF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  if (a2)
  {
    sub_1CC130(exception_object);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_27E0AC(std::string *a1, std::string *a2, char *__s)
{
  v6 = strlen(__s);
  v7 = std::string::append(a2, __s, v6);
  result = *v7;
  *a1 = *v7->n128_u8;
  v7->n128_u64[0] = 0;
  v7->n128_u64[1] = 0;
  v7[1].n128_u64[0] = 0;
  return result;
}

__n128 sub_27E10C(std::string *a1, char *__s, std::string *a3)
{
  v6 = strlen(__s);
  v7 = std::string::insert(a3, 0, __s, v6);
  result = *v7;
  *a1 = *v7->n128_u8;
  v7->n128_u64[0] = 0;
  v7->n128_u64[1] = 0;
  v7[1].n128_u64[0] = 0;
  return result;
}

uint64_t sub_27E18C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_6DCDA0;
  a2[1] = v2;
  return result;
}

uint64_t sub_27E220(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  if ((atomic_load_explicit(&qword_6E8020, memory_order_acquire) & 1) == 0)
  {
    v8 = __cxa_guard_acquire(&qword_6E8020);
    v3 = a3;
    if (v8)
    {
      sub_27E300();
    }
  }

  v4 = qword_6E8010;
  v5 = *algn_6E8018;
  if (*algn_6E8018)
  {
    atomic_fetch_add_explicit((*algn_6E8018 + 8), 1uLL, memory_order_relaxed);
  }

  sub_2760A0(v3, v4, v5);
  if (v5)
  {
    sub_1A8C0(v5);
  }

  return 0;
}

uint64_t sub_27E3B0(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      sub_273D54((v2 + 3));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_27E410(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_273D54(v2 + 24);
    }

    operator delete(v2);
  }

  return a1;
}

void sub_27E500(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_1A8C0(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_27E518(void *a1, int a2)
{
  v2 = a1[1];
  if (!v2)
  {
    goto LABEL_18;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (v2 <= a2)
    {
      v4 = a2 % v2;
    }
  }

  else
  {
    v4 = (v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5 || (v6 = *v5) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v7 = v6[1];
    if (v7 == a2)
    {
      break;
    }

    if (v3.u32[0] > 1uLL)
    {
      if (v7 >= v2)
      {
        v7 %= v2;
      }
    }

    else
    {
      v7 &= v2 - 1;
    }

    if (v7 != v4)
    {
      goto LABEL_18;
    }

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_18;
    }
  }

  if (*(v6 + 4) != a2)
  {
    goto LABEL_17;
  }

  return 0;
}

void sub_27E750(std::__shared_weak_count *a1)
{
  a1->__vftable = off_6DCE48;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_27E878(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_1A8C0(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_27E960(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_1A8C0(a16);
  }

  sub_12A2C4(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_27E988(uint64_t a1, CFDictionaryRef *a2, uint64_t a3)
{
  if (!*a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1DB154(exception);
  }

  if (CFDictionaryGetCount(*a2) != 2)
  {
    v20 = sub_5544(14);
    v21 = *v20;
    if (*v20 && os_log_type_enabled(*v20, OS_LOG_TYPE_ERROR))
    {
      v22 = *a2;
      *buf = 136315650;
      *&buf[4] = "DSPGraphConfig_Actions.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 391;
      *&buf[18] = 2112;
      *&buf[20] = v22;
      _os_log_impl(&dword_0, v21, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Metadata provided for tuning overlay tunings must have 2 entries. Dictionary: %@", buf, 0x1Cu);
    }

    v23 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v23, "Metadata provided for tuning overlay tunings must have 2 entries. Dictionary: %@");
  }

  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  sub_27F13C(buf, *a2);
  sub_27F13C(&v34, *a2);
  v35 = (v37 - v36) >> 3;
  if (*buf && (v6 = *&buf[8], *&buf[8] != (*&buf[24] - *&buf[16]) >> 3))
  {
    v7 = v34;
  }

  else
  {
    v7 = v34;
    if (!v34 || v35 == (v37 - v36) >> 3)
    {
      goto LABEL_45;
    }

    v6 = *&buf[8];
  }

  if (*buf != v7 || v6 != v35)
  {
    if ((v6 & 0x8000000000000000) == 0 && v6 < (*&buf[24] - *&buf[16]) >> 3)
    {
      sub_125D8(&__dst, *(*&buf[16] + 8 * v6));
      v9 = sub_27CA94(v42[*&buf[8]]);
      v32 = __dst;
      v33 = v9;
      v10 = SHIBYTE(__dst.__pn_.__r_.__value_.__r.__words[2]);
      if ((__dst.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(__dst.__pn_.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v32.__pn_.__r_.__value_.__l.__size_;
      }

      sub_B0848(&v29, size + 8);
      if ((v29.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v12 = &v29;
      }

      else
      {
        v12 = v29.__pn_.__r_.__value_.__r.__words[0];
      }

      if (size)
      {
        if (v10 >= 0)
        {
          v13 = &v32;
        }

        else
        {
          v13 = v32.__pn_.__r_.__value_.__r.__words[0];
        }

        memmove(v12, v13, size);
      }

      strcpy(v12 + size, ".austrip");
      cf = v29;
      memset(&v29, 0, sizeof(v29));
      sub_1E1AC0(&__p, a3 + 24, &cf);
      if (SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) < 0)
      {
        sub_54A0(&__dst, __p.__pn_.__r_.__value_.__l.__data_, __p.__pn_.__r_.__value_.__l.__size_);
        if (SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__pn_.__r_.__value_.__l.__data_);
        }
      }

      else
      {
        __dst = __p;
      }

      if (SHIBYTE(cf.__pn_.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(cf.__pn_.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v29.__pn_.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v29.__pn_.__r_.__value_.__l.__data_);
      }

      if ((__dst.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_dst = &__dst;
      }

      else
      {
        p_dst = __dst.__pn_.__r_.__value_.__r.__words[0];
      }

      if (p_dst)
      {
        if ((__dst.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v15 = HIBYTE(__dst.__pn_.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v15 = __dst.__pn_.__r_.__value_.__l.__size_;
        }

        cf.__pn_.__r_.__value_.__r.__words[0] = CFStringCreateWithBytes(0, p_dst, v15, 0x8000100u, 0);
        if (!cf.__pn_.__r_.__value_.__r.__words[0])
        {
          v18 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v18, "Could not construct");
        }
      }

      else
      {
        cf.__pn_.__r_.__value_.__r.__words[0] = 0;
      }

      operator new();
    }

    v17 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v17, "DictionaryRef_iterator iterator out of range.");
  }

LABEL_45:
  if (v38)
  {
    v39 = v38;
    operator delete(v38);
  }

  if (v36)
  {
    v37 = v36;
    operator delete(v36);
  }

  if (v42)
  {
    v43 = v42;
    operator delete(v42);
  }

  if (*&buf[16])
  {
    *&buf[24] = *&buf[16];
    operator delete(*&buf[16]);
  }

  if (!sub_130F70(a1, 1))
  {
    v24 = sub_5544(14);
    v25 = *v24;
    if (*v24 && os_log_type_enabled(*v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "DSPGraphConfig_Actions.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 401;
      _os_log_impl(&dword_0, v25, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Resulting map does not cover if enrollment is set to true", buf, 0x12u);
    }

    v26 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v26, "Resulting map does not cover if enrollment is set to true");
LABEL_70:
  }

  result = sub_130F70(a1, 0);
  if (!result)
  {
    v27 = sub_5544(14);
    v28 = *v27;
    if (*v27 && os_log_type_enabled(*v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "DSPGraphConfig_Actions.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 404;
      _os_log_impl(&dword_0, v28, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Resulting map does not cover if enrollment is set to false", buf, 0x12u);
    }

    v26 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v26, "Resulting map does not cover if enrollment is set to false");
    goto LABEL_70;
  }

  return result;
}

void sub_27EFF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *__p, uint64_t a41, int a42, __int16 a43, char a44, char a45)
{
  __cxa_free_exception(v46);
  sub_12A2C4(v45);
  _Unwind_Resume(a1);
}

uint64_t sub_27F13C(uint64_t a1, CFDictionaryRef theDict)
{
  *a1 = theDict;
  *(a1 + 40) = 0u;
  v3 = (a1 + 40);
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 56) = 0;
  if (theDict)
  {
    Count = CFDictionaryGetCount(theDict);
    sub_E2BE8((a1 + 16), Count);
    sub_E2BE8(v3, Count);
    CFDictionaryGetKeysAndValues(*a1, *(a1 + 16), *(a1 + 40));
  }

  return a1;
}

void sub_27F290(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_1A8C0(a16);
  }

  sub_12A2C4(&a9);
  _Unwind_Resume(a1);
}

void sub_27F388(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_1A8C0(a16);
  }

  sub_12A2C4(&a9);
  _Unwind_Resume(a1);
}

void sub_27F480(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_1A8C0(a16);
  }

  sub_12A2C4(&a9);
  _Unwind_Resume(a1);
}

void sub_27F55C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_1A8C0(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_27F618(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_1A8C0(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_27F630()
{
  v0 = sub_5544(25);
  if (*(v0 + 8))
  {
    v1 = *v0;
    if (*v0)
    {
      if (os_log_type_enabled(*v0, OS_LOG_TYPE_DEBUG))
      {
        v3 = 136315394;
        v4 = "DSPGraphConfig_Actions.cpp";
        v5 = 1024;
        v6 = 370;
        _os_log_impl(&dword_0, v1, OS_LOG_TYPE_DEBUG, "%25s:%-5d Configuring silence reset prevention is deprecated. This is now done by default for graphs", &v3, 0x12u);
      }
    }
  }

  return 0;
}

void sub_27F79C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_1A8C0(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_27F858(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_1A8C0(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_27F870(CFTypeRef *a1)
{
  v2 = *a1;
  if (*a1)
  {
    CFRetain(*a1);
  }

  sub_53E8(&__p, "UseFixedBlockSize");
  if (v2)
  {
    sub_27B9E4(v2, &__p);
  }

  if (SHIBYTE(__p.data) < 0)
  {
    operator delete(__p.isa);
    if (!v2)
    {
      goto LABEL_10;
    }
  }

  else if (!v2)
  {
LABEL_10:
    v3 = *a1;
    if (*a1)
    {
      CFRetain(*a1);
    }

    sub_53E8(&__p, "MaximumFramesPerSlice");
    if (v3 && (v4 = sub_27CB58(v3, &__p)) != 0)
    {
      v5 = sub_113A0(v4);
    }

    else
    {
      v5 = 0;
    }

    if (SHIBYTE(__p.data) < 0)
    {
      operator delete(__p.isa);
      if (!v3)
      {
        goto LABEL_21;
      }
    }

    else if (!v3)
    {
LABEL_21:
      if ((v5 & 0x100000000) != 0)
      {
        operator new();
      }

      v6 = sub_5544(14);
      v7 = *v6;
      if (*v6)
      {
        if (os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
        {
          LODWORD(__p.isa) = 136315394;
          *(&__p.isa + 4) = "DSPGraphConfig_Actions.cpp";
          WORD2(__p.info) = 1024;
          *(&__p.info + 6) = 322;
          _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Could not find valid maximum block size", &__p, 0x12u);
        }
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(exception, "Could not find valid maximum block size");
    }

    CFRelease(v3);
    goto LABEL_21;
  }

  CFRelease(v2);
  goto LABEL_10;
}

uint64_t sub_27FBE4(CFTypeRef *a1)
{
  v1 = *a1;
  if (*a1)
  {
    CFRetain(*a1);
  }

  v17[3] = v1;
  sub_53E8(&__p, "DeferUntilRouteCreation");
  if (v1)
  {
    v2 = sub_27B9E4(v1, &__p);
    v3 = (v2 > 0xFFu) & v2;
  }

  else
  {
    v3 = 0;
  }

  if (SHIBYTE(__p.data) < 0)
  {
    operator delete(__p.isa);
    if (!v1)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (v1)
  {
LABEL_10:
    CFRelease(v1);
  }

LABEL_11:
  if (v3)
  {
    v21[0] = v21;
    v21[1] = v21;
    v22 = 0;
    operator new();
  }

  v4 = sub_5544(21);
  v5 = *v4;
  if (*v4 && os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(__p.isa) = 136315394;
    *(&__p.isa + 4) = "DSPGraphConfig_Actions.cpp";
    WORD2(__p.info) = 1024;
    *(&__p.info + 6) = 266;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Getting Speaker Thiele-Small data From FDR", &__p, 0x12u);
  }

  sub_4CC644(&v19);
  v6 = v19;
  if (v19)
  {
    v7 = sub_5544(21);
    v8 = *v7;
    if (*v7 && os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = CFCopyDescription(v6);
      v17[0] = v9;
      sub_1267C(v21, v9);
      if (v9)
      {
        CFRelease(v9);
      }

      v10 = v21;
      if (SHIBYTE(v22) < 0)
      {
        v10 = v21[0];
      }

      LODWORD(__p.isa) = 136315650;
      *(&__p.isa + 4) = "DSPGraphConfig_Actions.cpp";
      WORD2(__p.info) = 1024;
      *(&__p.info + 6) = 269;
      WORD1(__p.data) = 2080;
      *(&__p.data + 4) = v10;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "%25s:%-5d FDR Speaker Thiele-Small data: %s", &__p, 0x1Cu);
      if (SHIBYTE(v22) < 0)
      {
        operator delete(v21[0]);
      }
    }

    CFRetain(v6);
    v18 = 1936749683;
    sub_280A2C(v21, "ID", &v18);
    sub_88CE8(&v22, "cfobject");
    CFRetain(v6);
    v23 = v6;
    v17[0] = v21;
    v17[1] = 2;
    v11 = 0;
    sub_69CE8(v17);
    while (1)
    {
      v12 = *(&v23 + v11 * 8);
      if (v12)
      {
        CFRelease(v12);
      }

      v13 = v21[v11 + 2];
      if (v13)
      {
        CFRelease(v13);
      }

      v11 -= 2;
      if (v11 == -4)
      {
        operator new();
      }
    }
  }

  v14 = sub_5544(21);
  v15 = *v14;
  if (*v14 && os_log_type_enabled(*v14, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(__p.isa) = 136315394;
    *(&__p.isa + 4) = "DSPGraphConfig_Actions.cpp";
    WORD2(__p.info) = 1024;
    *(&__p.info + 6) = 275;
    _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "%25s:%-5d FDR doesn't have Speaker Thiele-Small data", &__p, 0x12u);
  }

  return 560227702;
}

void sub_2804CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13, int a14, __int16 a15, char a16, char a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31)
{
  if (__p)
  {
    operator delete(__p);
    if (!v32)
    {
LABEL_3:
      if (!v31)
      {
LABEL_8:
        _Unwind_Resume(exception_object);
      }

LABEL_7:
      operator delete(v31);
      goto LABEL_8;
    }
  }

  else if (!v32)
  {
    goto LABEL_3;
  }

  operator delete(v32);
  if (!v31)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void *sub_280690(void *result, uint64_t a2, uint64_t a3)
{
  *result = result;
  result[1] = result;
  result[2] = 0;
  if (a3)
  {
    sub_12A818();
  }

  return result;
}

uint64_t *sub_2806FC(int a1)
{
  v1 = xmmword_6FD610;
  if (!xmmword_6FD610)
  {
LABEL_8:
    sub_DE7DC("map::at:  key not found");
  }

  while (1)
  {
    while (1)
    {
      v2 = *(v1 + 8);
      if (v2 <= a1)
      {
        break;
      }

      v1 = *v1;
      if (!v1)
      {
        goto LABEL_8;
      }
    }

    if (v2 >= a1)
    {
      return v1 + 5;
    }

    v1 = v1[1];
    if (!v1)
    {
      goto LABEL_8;
    }
  }
}

void sub_280750(uint64_t a1, int a2, uint64_t a3)
{
  v12 = a2;
  if (*(a3 + 8) != *a3)
  {
    sub_280A2C(buf, "ID", &v12);
    sub_280AF8(&cf, *a3, *(a3 + 8) - *a3);
    sub_280BE8(v16 + 2, &cf);
    v11[0] = buf;
    v11[1] = 2;
    v4 = 0;
    v11[2] = sub_69CE8(v11);
    while (1)
    {
      v5 = *(&v16[v4 + 2] + 2);
      if (v5)
      {
        CFRelease(v5);
      }

      v6 = *(&v16[v4] + 2);
      if (v6)
      {
        CFRelease(v6);
      }

      v4 -= 4;
      if (v4 == -8)
      {
        if (cf)
        {
          CFRelease(cf);
        }

        operator new();
      }
    }
  }

  v7 = sub_5544(14);
  v8 = *v7;
  if (*v7 && os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v14 = "DSPGraphConfig_Actions.cpp";
    v15 = 1024;
    v16[0] = 48;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::logic_error::logic_error(exception, "Precondition failure.");
}

uint64_t sub_280A2C(uint64_t a1, char *a2, int *a3)
{
  sub_88CE8(a1, a2);
  valuePtr = *a3;
  v5 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  *(a1 + 8) = v5;
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  return a1;
}

void sub_280AC4(_Unwind_Exception *a1)
{
  sub_1D5FAC(v1 + 1);
  sub_1D5FE0(v1);
  _Unwind_Resume(a1);
}

CFTypeID sub_280AF8(CFDataRef *a1, const UInt8 *a2, CFIndex a3)
{
  v4 = CFDataCreate(0, a2, a3);
  if (!v4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1DB154(exception);
  }

  *a1 = v4;
  v5 = CFGetTypeID(v4);
  result = CFDataGetTypeID();
  if (v5 != result)
  {
    v8 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v8, "Could not construct");
  }

  return result;
}

void sub_280BB0(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  sub_22A334(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_280BE8(uint64_t a1, const void **a2)
{
  sub_88CE8(a1, "data");
  v4 = *a2;
  if (v4)
  {
    CFRetain(v4);
  }

  *(a1 + 8) = v4;
  return a1;
}

const void **sub_280C34(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t sub_280C68(CFTypeRef *a1)
{
  v1 = *a1;
  if (*a1)
  {
    CFRetain(*a1);
  }

  __p.length = v1;
  sub_53E8(&__p, "IODelegates");
  v25 = 0uLL;
  v26 = 0;
  if (!v1)
  {
    v28 = 0uLL;
    v29 = 0;
    goto LABEL_28;
  }

  v2 = sub_27CB58(v1, &__p);
  if (!v2 || (v3 = v2, TypeID = CFArrayGetTypeID(), TypeID != CFGetTypeID(v3)))
  {
    LOBYTE(v30) = 0;
    v32 = 0;
LABEL_26:
    v28 = v25;
    v29 = v26;
    v26 = 0;
    v25 = 0uLL;
    goto LABEL_28;
  }

  Count = CFArrayGetCount(v3);
  v36 = 0uLL;
  v37 = 0;
  if (Count << 32)
  {
    if (Count <= 0xAAAAAAAAAAAAAAALL)
    {
      v40 = &v36;
      sub_281618(Count);
    }

LABEL_49:
    sub_189A00();
  }

  if (Count < 1)
  {
LABEL_24:
    v30 = v36;
    v31 = v37;
    v37 = 0;
    v36 = 0uLL;
    v32 = 1;
  }

  else
  {
    v6 = 0;
    v7 = Count & 0x7FFFFFFF;
    v24 = v32;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v3, v6);
      sub_281670(&v33, ValueAtIndex);
      if (v35 != 1)
      {
        break;
      }

      v9 = *(&v36 + 1);
      if (*(&v36 + 1) >= v37)
      {
        v11 = 0xAAAAAAAAAAAAAAABLL * ((*(&v36 + 1) - v36) >> 3);
        v12 = v11 + 1;
        if (v11 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          v32 = v24;
          goto LABEL_49;
        }

        if (0x5555555555555556 * ((v37 - v36) >> 3) > v12)
        {
          v12 = 0x5555555555555556 * ((v37 - v36) >> 3);
        }

        if (0xAAAAAAAAAAAAAAABLL * ((v37 - v36) >> 3) >= 0x555555555555555)
        {
          v13 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v13 = v12;
        }

        v40 = &v36;
        if (v13)
        {
          sub_281618(v13);
        }

        v14 = 8 * ((*(&v36 + 1) - v36) >> 3);
        *v14 = v33;
        *(v14 + 16) = v34;
        v10 = 24 * v11 + 24;
        v15 = 24 * v11 - (*(&v36 + 1) - v36);
        memcpy((v14 - (*(&v36 + 1) - v36)), v36, *(&v36 + 1) - v36);
        v16 = v36;
        v17 = v37;
        *&v36 = v15;
        *(&v36 + 1) = v10;
        v37 = 0;
        *&buf[16] = v16;
        v39 = v17;
        *buf = v16;
        *&buf[8] = v16;
        sub_A9BB0(buf);
      }

      else
      {
        **(&v36 + 1) = v33;
        *(v9 + 16) = v34;
        v10 = v9 + 24;
      }

      *(&v36 + 1) = v10;
      if (v7 == ++v6)
      {
        goto LABEL_24;
      }
    }

    v32 = 0;
    LOBYTE(v30) = 0;
  }

  *buf = &v36;
  sub_A9CA4(buf);
  if ((v32 & 1) == 0)
  {
    goto LABEL_26;
  }

  v28 = 0uLL;
  v29 = 0;
  *&v33 = &v28;
  BYTE8(v33) = 0;
  if (*(&v30 + 1) != v30)
  {
    v23 = 0xAAAAAAAAAAAAAAABLL * ((*(&v30 + 1) - v30) >> 3);
    if (v23 <= 0xAAAAAAAAAAAAAAALL)
    {
      sub_281618(v23);
    }

    sub_189A00();
  }

  if (v32)
  {
    *buf = &v30;
    sub_A9CA4(buf);
  }

LABEL_28:
  *buf = &v25;
  sub_A9CA4(buf);
  if (SHIBYTE(__p.data) < 0)
  {
    operator delete(__p.isa);
    if (!v1)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

  if (v1)
  {
LABEL_32:
    CFRelease(v1);
  }

LABEL_33:
  if (v28 != *(&v28 + 1))
  {
    *&v33 = &v33;
    *(&v33 + 1) = &v33;
    v34 = 0;
    if (*(v28 + 8) - *v28 == 12)
    {
      v18 = **v28;
      operator new();
    }

    v19 = sub_5544(14);
    v20 = *v19;
    if (*v19 && os_log_type_enabled(*v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "DSPGraphConfig_Actions.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 226;
      _os_log_impl(&dword_0, v20, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  *buf = &v28;
  sub_A9CA4(buf);
  return 2003329396;
}

void sub_281384(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32)
{
  if (a2)
  {
    sub_A9CA4(&a32);
    sub_1CC130(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2814F8(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

uint64_t sub_2815B0(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v2 = **(a1 + 16);
    v3 = **(a1 + 8);
    if (v2 != v3)
    {
      v4 = **(a1 + 16);
      do
      {
        v6 = *(v4 - 24);
        v4 -= 24;
        v5 = v6;
        if (v6)
        {
          *(v2 - 16) = v5;
          operator delete(v5);
        }

        v2 = v4;
      }

      while (v4 != v3);
    }
  }

  return a1;
}

void sub_281618(unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_6ACD8();
}

void sub_281670(uint64_t a1, const __CFArray *a2)
{
  if (a2 && (TypeID = CFArrayGetTypeID(), TypeID == CFGetTypeID(a2)))
  {
    Count = CFArrayGetCount(a2);
    v19 = 0;
    v20 = 0;
    v21 = 0;
    sub_6A820(&v19, Count);
    if (Count <= 0)
    {
      v10 = v19;
      v9 = v20;
      v8 = v21;
LABEL_23:
      *a1 = v10;
      *(a1 + 8) = v9;
      *(a1 + 16) = v8;
      *(a1 + 24) = 1;
    }

    else
    {
      v6 = 0;
      v7 = Count & 0x7FFFFFFF;
      v9 = v20;
      v8 = v21;
      v10 = v19;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a2, v6);
        v12 = sub_113A0(ValueAtIndex);
        if ((v12 & 0x100000000) == 0)
        {
          break;
        }

        v13 = v12;
        if (v9 >= v8)
        {
          v14 = v9 - v10;
          v15 = (v9 - v10) >> 2;
          v16 = v15 + 1;
          if ((v15 + 1) >> 62)
          {
            sub_189A00();
          }

          if ((v8 - v10) >> 1 > v16)
          {
            v16 = (v8 - v10) >> 1;
          }

          if (v8 - v10 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v17 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v17 = v16;
          }

          if (v17)
          {
            sub_1D7C28(v17);
          }

          v18 = (4 * v15);
          v8 = 0;
          *v18 = v13;
          v9 = (v18 + 1);
          memcpy(0, v10, v14);
          if (v10)
          {
            operator delete(v10);
          }

          v10 = 0;
        }

        else
        {
          *v9 = v12;
          v9 += 4;
        }

        if (v7 == ++v6)
        {
          goto LABEL_23;
        }
      }

      *a1 = 0;
      *(a1 + 24) = 0;
      if (v10)
      {
        operator delete(v10);
      }
    }
  }

  else
  {
    *a1 = 0;
    *(a1 + 24) = 0;
  }
}

void sub_281810(CFTypeRef *a1)
{
  v1 = *a1;
  if (*a1)
  {
    CFRetain(*a1);
  }

  __p.length = v1;
  sub_53E8(&__p, "ChannelSelectorMap");
  if (v1)
  {
    v2 = sub_27CB58(v1, &__p);
    if (v2)
    {
      sub_281670(buf, v2);
      v8[1] = 0;
      v9 = 0;
      v8[0] = 0;
      if (v11)
      {
        v3 = *buf;
        sub_46980(v8, *buf, *&buf[8], (*&buf[8] - *buf) >> 2);
        if (v3)
        {
          if (v11)
          {
            operator delete(v3);
          }
        }
      }
    }

    else
    {
      buf[0] = 0;
      v11 = 0;
      v8[1] = 0;
      v9 = 0;
      v8[0] = 0;
    }
  }

  else
  {
    v8[0] = 0;
    v8[1] = 0;
    v9 = 0;
  }

  if (SHIBYTE(__p.data) < 0)
  {
    operator delete(__p.isa);
    if (!v1)
    {
      goto LABEL_16;
    }
  }

  else if (!v1)
  {
LABEL_16:
    if (v8[0] != v8[1])
    {
      memset(&__p, 0, 24);
      --*v8[0];
      sub_1D7C28(1uLL);
    }

    v4 = sub_5544(14);
    v5 = *v4;
    if (*v4)
    {
      if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "DSPGraphConfig_Actions.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 147;
        _os_log_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Requires the channel selector map to be populated.", buf, 0x12u);
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Requires the channel selector map to be populated.");
  }

  CFRelease(v1);
  goto LABEL_16;
}

void sub_281B2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13)
{
  if (a2)
  {
    sub_1CC130(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_281BB0(CFTypeRef *a1, uint64_t a2, void *a3)
{
  v3 = *a1;
  if (*a1)
  {
    CFRetain(*a1);
  }

  v51 = v3;
  sub_53E8(&__p, "DeviceSpecificProperties");
  v49 = 0uLL;
  v50 = 0;
  if (!v3)
  {
    v52 = 0uLL;
    v53 = 0;
    goto LABEL_26;
  }

  v4 = sub_27CB58(v3, &__p);
  if (!v4 || (v5 = v4, TypeID = CFArrayGetTypeID(), TypeID != CFGetTypeID(v5)))
  {
    LOBYTE(v56) = 0;
    v58 = 0;
LABEL_24:
    v52 = v49;
    v53 = v50;
    v50 = 0;
    v49 = 0uLL;
    goto LABEL_26;
  }

  Count = CFArrayGetCount(v5);
  v59 = 0uLL;
  v60 = 0;
  sub_282724(&v59, Count);
  if (Count < 1)
  {
LABEL_22:
    v56 = v59;
    v57 = v60;
    v60 = 0;
    v59 = 0uLL;
    v58 = 1;
  }

  else
  {
    v8 = 0;
    v9 = v58;
    v10 = Count & 0x7FFFFFFF;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v5, v8);
      v12 = ValueAtIndex;
      if (!ValueAtIndex)
      {
        break;
      }

      CFRetain(ValueAtIndex);
      v13 = CFGetTypeID(v12);
      if (v13 != CFArrayGetTypeID())
      {
        CFRelease(v12);
        break;
      }

      v14 = *(&v59 + 1);
      if (*(&v59 + 1) >= v60)
      {
        v16 = (*(&v59 + 1) - v59) >> 3;
        if ((v16 + 1) >> 61)
        {
          v58 = v9;
          sub_189A00();
        }

        v17 = (v60 - v59) >> 2;
        if (v17 <= v16 + 1)
        {
          v17 = v16 + 1;
        }

        if (v60 - v59 >= 0x7FFFFFFFFFFFFFF8)
        {
          v18 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v18 = v17;
        }

        v63 = &v59;
        if (v18)
        {
          sub_1DB8DC(v18);
        }

        *buf = 0;
        *&buf[8] = 8 * v16;
        v62 = 0;
        **&buf[8] = v12;
        *&buf[16] = 8 * v16 + 8;
        sub_2827A4(&v59, buf);
        v15 = *(&v59 + 1);
        sub_282854(buf);
      }

      else
      {
        **(&v59 + 1) = v12;
        v15 = v14 + 8;
      }

      *(&v59 + 1) = v15;
      if (v10 == ++v8)
      {
        goto LABEL_22;
      }
    }

    v58 = 0;
    LOBYTE(v56) = 0;
  }

  *buf = &v59;
  sub_282684(buf);
  if ((v58 & 1) == 0)
  {
    goto LABEL_24;
  }

  v52 = 0uLL;
  v53 = 0;
  *buf = &v52;
  buf[8] = 0;
  v35 = *(&v56 + 1) - v56;
  if (*(&v56 + 1) != v56)
  {
    if (!((v35 >> 3) >> 61))
    {
      sub_1DB8DC(v35 >> 3);
    }

    sub_189A00();
  }

  if (v58)
  {
    *buf = &v56;
    sub_282684(buf);
  }

LABEL_26:
  *buf = &v49;
  sub_282684(buf);
  if ((SHIBYTE(__p.data) & 0x80000000) == 0)
  {
    if (!v3)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  operator delete(__p.isa);
  if (v3)
  {
LABEL_30:
    CFRelease(v3);
  }

LABEL_31:
  v47 = *(&v52 + 1);
  v19 = v52;
  if (v52 == *(&v52 + 1))
  {
    v33 = 2003329396;
    goto LABEL_56;
  }

  *&v49 = &v49;
  *(&v49 + 1) = &v49;
  v50 = 0;
  do
  {
    v20 = *v19;
    if (!*v19)
    {
      v54 = 0;
      exception = __cxa_allocate_exception(0x10uLL);
      v42 = &std::runtime_error::~runtime_error;
      std::runtime_error::runtime_error(exception, "Could not construct");
      goto LABEL_74;
    }

    CFRetain(*v19);
    v54 = v20;
    if (CFArrayGetCount(v20) != 2)
    {
      v39 = sub_5544(14);
      v40 = *v39;
      if (*v39 && os_log_type_enabled(*v39, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "DSPGraphConfig_Actions.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 177;
        _os_log_impl(&dword_0, v40, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      v42 = &std::logic_error::~logic_error;
      std::logic_error::logic_error(exception, "Precondition failure.");
LABEL_74:
      __cxa_throw(exception, v43, v42);
    }

    sub_A3B9C(&__p.length, v20, 0);
    sub_290138(&v59, &__p.length);
    v21 = *(&v59 + 1);
    v22 = v59;
    v23 = v59;
    if (v59 == *(&v59 + 1))
    {
      v44 = sub_5544(14);
      v45 = *v44;
      if (*v44 && os_log_type_enabled(*v44, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "DSPGraphConfig_Actions.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 180;
        _os_log_impl(&dword_0, v45, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
      }

LABEL_68:
      v38 = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(v38, "Precondition failure.");
    }

    do
    {
      if ((sub_28F080(*v23) & 1) == 0)
      {
        v36 = sub_5544(14);
        v37 = *v36;
        if (*v36 && os_log_type_enabled(*v36, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "DSPGraphConfig_Actions.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 183;
          _os_log_impl(&dword_0, v37, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
        }

        goto LABEL_68;
      }

      ++v23;
    }

    while (v23 != v21);
    sub_A3B9C(buf, v20, 1uLL);
    v48 = v19;
    sub_290138(&__p, buf);
    if (*buf)
    {
      CFRelease(*buf);
    }

    if (__p.isa != __p.info)
    {
      v24 = *__p.isa;
      *&v56 = &v56;
      *(&v56 + 1) = &v56;
      v57 = 0;
      v25 = *v22;
      operator new();
    }

    if (__p.isa)
    {
      operator delete(__p.isa);
    }

    if (v22)
    {
      operator delete(v22);
    }

    if (__p.length)
    {
      CFRelease(__p.length);
    }

    CFRelease(v20);
    ++v19;
  }

  while (v48 + 1 != v47);
  v26 = sub_130F70(a3, 1684303986);
  if (!v26)
  {
    sub_28147C();
  }

  v27 = v26[3];
  if (*(v27 + 40) != 8)
  {
    sub_20B4EC();
  }

  v28 = v50;
  if (v50)
  {
    v29 = v49;
    v30 = *(v49 + 8);
    v31 = **(&v49 + 1);
    *(v31 + 8) = v30;
    *v30 = v31;
    v32 = *v27;
    *(v32 + 8) = *(&v29 + 1);
    **(&v29 + 1) = v32;
    *v27 = v29;
    *(v29 + 8) = v27;
    *(v27 + 16) += v28;
    v50 = 0;
  }

  sub_87980(&v49);
  v33 = 0;
LABEL_56:
  *buf = &v52;
  sub_282684(buf);
  return v33;
}

void sub_2824FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, char a17, uint64_t a18, uint64_t a19, char a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, char a38)
{
  if (a2)
  {
    sub_1CC130(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_282684(void ***a1)
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
        v6 = *(v4 - 1);
        v4 -= 8;
        sub_282704(v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_282704(const void *a1)
{
  if (a1)
  {
    CFRelease(a1);
  }
}

void *sub_282724(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      v2 = result[1] - *result;
      v3 = result;
      sub_1DB8DC(a2);
    }

    sub_189A00();
  }

  return result;
}

void sub_2827A4(uint64_t a1, void *a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = a2[1] + *a1 - v5;
  if (v5 != *a1)
  {
    v7 = *a1;
    v8 = (a2[1] + *a1 - v5);
    do
    {
      *v8++ = *v7;
      *v7++ = 0;
    }

    while (v7 != v5);
    do
    {
      v9 = *v4++;
      sub_282704(v9);
    }

    while (v4 != v5);
    v4 = *a1;
  }

  a2[1] = v6;
  *a1 = v6;
  *(a1 + 8) = v4;
  a2[1] = v4;
  v10 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v10;
  v11 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v11;
  *a2 = a2[1];
}

uint64_t sub_282854(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(i - 8);
    *(a1 + 16) = i - 8;
    sub_282704(v4);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_2828A4(CFTypeRef *a1)
{
  v1 = *a1;
  if (*a1)
  {
    CFRetain(*a1);
  }

  v7 = v1;
  sub_53E8(&__p, "DataSourceOrder");
  v2 = sub_27BAA4(&v7, &__p);
  if (SHIBYTE(__p.data) < 0)
  {
    operator delete(__p.isa);
    if (!v1)
    {
      goto LABEL_8;
    }
  }

  else if (!v1)
  {
LABEL_8:
    v3 = 0;
    if (v2 > 0x100000000)
    {
      v3 = v2;
    }

    v10 = v3;
    v11 = 1920365171;
    v9 = 0;
    sub_280A2C(&__p, "ID", &v11);
    sub_280AF8(&cf, &v10, 4);
    sub_280BE8(&__p.data, &cf);
    v13[0] = &__p;
    v13[1] = 2;
    v4 = 0;
    v9 = sub_69CE8(v13);
    while (1)
    {
      v5 = *(&__p.length + v4);
      if (v5)
      {
        CFRelease(v5);
      }

      v6 = *(&__p.data + v4);
      if (v6)
      {
        CFRelease(v6);
      }

      v4 -= 16;
      if (v4 == -32)
      {
        if (cf)
        {
          CFRelease(cf);
        }

        operator new();
      }
    }
  }

  CFRelease(v1);
  goto LABEL_8;
}

void sub_282AB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_1CC130(exception_object);
}

void sub_282B74(CFTypeRef *a1)
{
  v2 = *a1;
  if (*a1)
  {
    CFRetain(*a1);
  }

  __p[3] = v2;
  sub_53E8(&v29, "FixedGains");
  if (v2)
  {
    v3 = sub_27CB58(v2, &v29);
    if (!v3)
    {
LABEL_28:
      v8 = 0;
      goto LABEL_29;
    }

    TypeID = CFArrayGetTypeID();
    if (TypeID == CFGetTypeID(v3))
    {
      Count = CFArrayGetCount(v3);
      memset(buf, 0, 24);
      sub_6A820(buf, Count);
      if (Count <= 0)
      {
        LOBYTE(v3) = 1;
        v8 = *buf;
        v1 = *&buf[8];
        goto LABEL_29;
      }

      v6 = 0;
      v22 = Count & 0x7FFFFFFF;
      v1 = *&buf[8];
      v7 = *&buf[16];
      v8 = *buf;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v3, v6);
        v10 = sub_725A0(ValueAtIndex);
        if (!HIDWORD(v10))
        {
          break;
        }

        v11 = v10;
        if (v1 >= v7)
        {
          v12 = v1 - v8;
          v13 = (v1 - v8) >> 2;
          v14 = v13 + 1;
          if ((v13 + 1) >> 62)
          {
            *&buf[8] = v1;
            *&buf[16] = v7;
            *buf = v8;
            sub_189A00();
          }

          if ((v7 - v8) >> 1 > v14)
          {
            v14 = (v7 - v8) >> 1;
          }

          if (v7 - v8 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v15 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v15 = v14;
          }

          if (v15)
          {
            sub_1D7C28(v15);
          }

          v7 = 0;
          *(4 * v13) = v11;
          v1 = (4 * v13 + 4);
          memcpy(0, v8, v12);
          if (v8)
          {
            operator delete(v8);
          }

          v8 = 0;
        }

        else
        {
          *v1 = v10;
          v1 += 4;
        }

        if (v22 == ++v6)
        {
          LOBYTE(v3) = 1;
          goto LABEL_29;
        }
      }

      *&buf[16] = v7;
      *buf = v8;
      if (!v8)
      {
        LOBYTE(v3) = 0;
LABEL_29:
        if (SHIBYTE(v29.data) < 0)
        {
          operator delete(v29.isa);
          if (!v2)
          {
            goto LABEL_34;
          }
        }

        else if (!v2)
        {
LABEL_34:
          if (v3)
          {
            memset(__p, 0, 24);
            sub_2830E4(__p, v8, v1, (v1 - v8) >> 2);
            v27 = 1735287906;
            v26 = 0;
            sub_280A2C(&v29, "ID", &v27);
            sub_280AF8(&cf, __p, 24);
            sub_280BE8(&v29.data, &cf);
            v25[0] = &v29;
            v25[1] = 2;
            v16 = 0;
            v26 = sub_69CE8(v25);
            while (1)
            {
              v17 = *(&v29.length + v16);
              if (v17)
              {
                CFRelease(v17);
              }

              v18 = *(&v29.data + v16);
              if (v18)
              {
                CFRelease(v18);
              }

              v16 -= 16;
              if (v16 == -32)
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
            *buf = 136315394;
            *&buf[4] = "DSPGraphConfig_Actions.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 123;
            _os_log_impl(&dword_0, v20, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
          }

          exception = __cxa_allocate_exception(0x10uLL);
          std::logic_error::logic_error(exception, "Precondition failure.");
        }

        CFRelease(v2);
        goto LABEL_34;
      }

      *&buf[8] = v8;
      operator delete(v8);
    }
  }

  LOBYTE(v3) = 0;
  goto LABEL_28;
}

uint64_t sub_2830E4(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_469FC(result, a4);
  }

  return result;
}

void sub_283144(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_283160(CFTypeRef *a1, uint64_t a2, void *a3)
{
  v4 = *a1;
  if (*a1)
  {
    CFRetain(*a1);
  }

  v5 = v4;
  sub_53E8(&__p, "BeamIndex");
  sub_27BAA4(&v5, &__p);
  if (SHIBYTE(__p.data) < 0)
  {
    operator delete(__p.isa);
    if (!v4)
    {
      goto LABEL_8;
    }
  }

  else if (!v4)
  {
LABEL_8:
    if (sub_130F70(a3, 1685086576))
    {
      if (*(sub_130F70(a3, 1685086576)[3] + 40) == 7)
      {
        operator new();
      }

      sub_20B4EC();
    }

    operator new();
  }

  CFRelease(v4);
  goto LABEL_8;
}

void sub_2835D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a2)
  {
    sub_20B704(1, v18);
    sub_1CC130(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_283634(CFTypeRef *a1, const void **a2)
{
  v3 = *a1;
  if (*a1)
  {
    CFRetain(*a1);
  }

  v20.length = v3;
  sub_53E8(&v20, "ConfigName");
  sub_53E8(&v21, "-aufx-firf-appl");
  if (v3)
  {
    v4 = sub_27CB58(v3, &v20);
    if (v4)
    {
      sub_1DAF78(&__p, v4);
      if (v18)
      {
        v5 = SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]);
        if ((SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          *&__dst.__r_.__value_.__l.__data_ = *&__p.__pn_.__r_.__value_.__l.__data_;
          v6 = __p.__pn_.__r_.__value_.__r.__words[2];
LABEL_10:
          __dst.__r_.__value_.__r.__words[2] = v6;
          goto LABEL_17;
        }

        sub_54A0(&__dst, __p.__pn_.__r_.__value_.__l.__data_, __p.__pn_.__r_.__value_.__l.__size_);
        if ((v18 & 1) != 0 && v5 < 0)
        {
          operator delete(__p.__pn_.__r_.__value_.__l.__data_);
        }

        goto LABEL_17;
      }
    }

    else
    {
      __p.__pn_.__r_.__value_.__s.__data_[0] = 0;
      v18 = 0;
    }

    __dst = v21;
    memset(&v21, 0, sizeof(v21));
    goto LABEL_17;
  }

  if ((SHIBYTE(v21.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    *&__dst.__r_.__value_.__l.__data_ = *&v21.__r_.__value_.__l.__data_;
    v6 = v21.__r_.__value_.__r.__words[2];
    goto LABEL_10;
  }

  sub_54A0(&__dst, v21.__r_.__value_.__l.__data_, v21.__r_.__value_.__l.__size_);
LABEL_17:
  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v20.data) < 0)
  {
    operator delete(v20.isa);
    if (!v3)
    {
      goto LABEL_24;
    }
  }

  else if (!v3)
  {
LABEL_24:
    sub_284070(&v21, a2, &__dst.__r_.__value_.__l.__data_);
    v7 = std::string::append(&v21, ".plist", 6uLL);
    v8 = v7->__r_.__value_.__r.__words[0];
    *valuePtr = v7->__r_.__value_.__l.__size_;
    *&valuePtr[7] = *(&v7->__r_.__value_.__r.__words[1] + 7);
    v9 = HIBYTE(v7->__r_.__value_.__r.__words[2]);
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    *(&v20.info + 7) = *&valuePtr[7];
    v20.isa = v8;
    v20.info = *valuePtr;
    HIBYTE(v20.data) = v9;
    sub_1E1AC0(&__p, (a2 + 6), &v20);
    if (SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_54A0(&v19, __p.__pn_.__r_.__value_.__l.__data_, __p.__pn_.__r_.__value_.__l.__size_);
      if (SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__pn_.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      v19 = __p;
    }

    if (SHIBYTE(v20.data) < 0)
    {
      operator delete(v20.isa);
    }

    if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v21.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }

    if ((v19.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v10 = &v19;
    }

    else
    {
      v10 = v19.__pn_.__r_.__value_.__r.__words[0];
    }

    if (v10)
    {
      if ((v19.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v19.__pn_.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v19.__pn_.__r_.__value_.__l.__size_;
      }

      cf = CFStringCreateWithBytes(0, v10, size, 0x8000100u, 0);
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

    *valuePtr = 1718186608;
    v21.__r_.__value_.__r.__words[0] = 0;
    sub_280A2C(&__dst, "ID", valuePtr);
    sub_88CE8(&__dst.__r_.__value_.__r.__words[2], "cfobject");
    if (cf)
    {
      CFRetain(cf);
    }

    v23[0] = cf;
    v20.isa = &__dst;
    v20.info = 2;
    v13 = 0;
    v21.__r_.__value_.__r.__words[0] = sub_69CE8(&v20);
    while (1)
    {
      v14 = v23[v13];
      if (v14)
      {
        CFRelease(v14);
      }

      v15 = __dst.__r_.__value_.__r.__words[v13 + 2];
      if (v15)
      {
        CFRelease(v15);
      }

      v13 -= 2;
      if (v13 == -4)
      {
        operator new();
      }
    }
  }

  CFRelease(v3);
  goto LABEL_24;
}

void sub_283DE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, char a44, uint64_t a45, void *a46, uint64_t a47, int a48, __int16 a49, char a50, char a51)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_1CC130(exception_object);
}

uint64_t sub_284070(uint64_t a1, const void **a2, const void **a3)
{
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  if (*(a3 + 23) >= 0)
  {
    v6 = *(a3 + 23);
  }

  else
  {
    v6 = a3[1];
  }

  result = sub_B0848(a1, v6 + v5);
  if (*(result + 23) >= 0)
  {
    v8 = result;
  }

  else
  {
    v8 = *result;
  }

  if (v5)
  {
    if (*(a2 + 23) >= 0)
    {
      v9 = a2;
    }

    else
    {
      v9 = *a2;
    }

    result = memmove(v8, v9, v5);
  }

  v10 = &v8[v5];
  if (v6)
  {
    if (*(a3 + 23) >= 0)
    {
      v11 = a3;
    }

    else
    {
      v11 = *a3;
    }

    result = memmove(v10, v11, v6);
  }

  v10[v6] = 0;
  return result;
}

uint64_t sub_284148(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_6DCD58;
  a2[1] = v2;
  return result;
}

void sub_2841DC()
{
  v0 = sub_6FB1C();
  sub_735A0(&v4, v0, 0);
  v9 = 1885500772;
  v7 = 0;
  *v8 = v4;
  sub_280A2C(&v10, "ID", &v9);
  sub_280AF8(&cf, v8, 8);
  sub_280BE8(v11, &cf);
  v6[0] = &v10;
  v6[1] = 2;
  v1 = 0;
  v7 = sub_69CE8(v6);
  while (1)
  {
    v2 = v11[v1 + 1];
    if (v2)
    {
      CFRelease(v2);
    }

    v3 = v11[v1];
    if (v3)
    {
      CFRelease(v3);
    }

    v1 -= 2;
    if (v1 == -4)
    {
      if (cf)
      {
        CFRelease(cf);
      }

      operator new();
    }
  }
}

void sub_2843A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, char a19)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_1CC130(exception_object);
}

const void **sub_284454(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void sub_284A48(_Unwind_Exception *a1)
{
  do
  {
    sub_285080(--v2);
  }

  while (v2 != v1);
  _Unwind_Resume(a1);
}

void sub_284F84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v7 = va_arg(va2, const void *);
  v9 = va_arg(va2, void);
  v10 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  v12 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  __cxa_guard_abort(&qword_700120);
  sub_36D42C(va2);
  sub_452F0(va);
  sub_452F0(va1);
  sub_285080(v3);
  _Unwind_Resume(a1);
}

void ***sub_285080(void ***result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    os_release(*v1);
    operator delete();
  }

  return result;
}

unint64_t sub_2850D4(uint64_t a1, char *a2, uint64_t a3)
{
  v4 = *(a1 + 72);
  if (!v4)
  {
    return 0;
  }

  v7 = std::__shared_weak_count::lock(v4);
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  if (*(a1 + 64))
  {
    if ((a2 == 0) != (*(a1 + 8) == 0))
    {
      v9 = *(a1 + 56);
      v10 = *(a1 + 52) + 1;
      *(a1 + 52) = v10;
      if (((*(a1 + 24) / *(a1 + 20)) * (v10 - v9)) >= *(a1 + 28))
      {
        *(a1 + 56) = v10;
        v13 = (a1 + 96);
        v11 = *(a1 + 119);
        if ((v11 & 0x8000000000000000) != 0)
        {
          v11 = *(a1 + 104);
          if (a2)
          {
            v14 = a3 - 1;
            if (v11 >= a3 - 1)
            {
              v11 = a3 - 1;
            }

            v13 = *v13;
            goto LABEL_19;
          }
        }

        else if (a2)
        {
          v14 = a3 - 1;
          if (a3 - 1 < v11)
          {
            v11 = a3 - 1;
          }

LABEL_19:
          strncpy(a2, v13, v14);
        }

        v15 = *(a1 + 72);
        if (v15)
        {
          v16 = std::__shared_weak_count::lock(v15);
          if (v16)
          {
            v17 = v16;
            v18 = *(a1 + 64);
            if (v18)
            {
              v19 = *(a1 + 88);
              if (!v19 || (v20 = *(v18 + 72), v21 = *(a1 + 80), (v22 = std::__shared_weak_count::lock(v19)) == 0))
              {
                sub_175EA0();
              }

              v23 = v22;
              p_shared_weak_owners = &v22->__shared_weak_owners_;
              atomic_fetch_add_explicit(&v22->__shared_weak_owners_, 1uLL, memory_order_relaxed);
              sub_1A8C0(v22);
              block[0] = _NSConcreteStackBlock;
              block[1] = 1174405120;
              block[2] = sub_2852D0;
              block[3] = &unk_6BCFA0;
              block[4] = a1;
              block[5] = v21;
              v26 = v23;
              atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
              dispatch_async(v20, block);
              if (v26)
              {
                std::__shared_weak_count::__release_weak(v26);
              }

              std::__shared_weak_count::__release_weak(v23);
            }

            sub_1A8C0(v17);
          }
        }

        goto LABEL_7;
      }
    }
  }

  v11 = 0;
LABEL_7:
  sub_1A8C0(v8);
  return v11;
}

void sub_2852B4(_Unwind_Exception *a1)
{
  sub_1A8C0(v2);
  sub_1A8C0(v1);
  _Unwind_Resume(a1);
}

void sub_2852D0(void *a1)
{
  v2 = a1[4];
  v3 = a1[6];
  if (v3)
  {
    v4 = std::__shared_weak_count::lock(v3);
    if (v4)
    {
      v5 = a1[5] != 0;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  v6 = *(v2 + 72);
  if (v6)
  {
    v7 = std::__shared_weak_count::lock(v6);
    if (v7)
    {
      v8 = v7;
      v9 = *(v2 + 64);
      if (v9)
      {
        v10 = v5;
      }

      else
      {
        v10 = 0;
      }

      if (v10)
      {
        v11 = -6;
        while ((atomic_exchange((v2 + 16), 1u) & 1) != 0)
        {
          usleep(0x1388u);
          if (__CFADD__(v11++, 1))
          {
            goto LABEL_195;
          }
        }

        if (*(v2 + 119) < 0)
        {
          **(v2 + 96) = 0;
          *(v2 + 104) = 0;
        }

        else
        {
          *(v2 + 96) = 0;
          *(v2 + 119) = 0;
        }

        v13 = (v2 + 96);
        if (*(v2 + 17))
        {
          v14 = 32;
        }

        else
        {
          v14 = 44;
        }

        if (!*(v2 + 60))
        {
          *(v2 + 60) = *(v2 + 32);
          std::string::append((v2 + 96), "\n", 1uLL);
          memset(&v68, 0, sizeof(v68));
          memset(&v66, 0, sizeof(v66));
          v15 = qword_6E8358;
          if (qword_6E8358 == qword_6E8360)
          {
            v23 = 0;
          }

          else
          {
            do
            {
              if (*(v2 + 17) == 1)
              {
                sub_53E8(&v65, *(v15 + 16));
                sub_53E8(&v64, *(v15 + 24));
                std::string::resize(&v65, *(v15 + 8), 32);
                std::string::resize(&v64, *(v15 + 8), 32);
                sub_1D3D28(&__p, &v65.__r_.__value_.__l.__data_, v14);
                if ((v63 & 0x80u) == 0)
                {
                  p_p = &__p;
                }

                else
                {
                  p_p = __p;
                }

                if ((v63 & 0x80u) == 0)
                {
                  v17 = v63;
                }

                else
                {
                  v17 = v62;
                }

                std::string::append(&v68, p_p, v17);
                if (v63 < 0)
                {
                  operator delete(__p);
                }

                sub_1D3D28(&__p, &v64.__r_.__value_.__l.__data_, v14);
                if ((v63 & 0x80u) == 0)
                {
                  v18 = &__p;
                }

                else
                {
                  v18 = __p;
                }

                if ((v63 & 0x80u) == 0)
                {
                  v19 = v63;
                }

                else
                {
                  v19 = v62;
                }

                std::string::append(&v66, v18, v19);
                if (v63 < 0)
                {
                  operator delete(__p);
                }

                if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v64.__r_.__value_.__l.__data_);
                }

                if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v65.__r_.__value_.__l.__data_);
                }
              }

              else
              {
                if (*v15 == -1)
                {
                  v22 = strlen(*(v15 + 16));
                  std::string::append(&v68, *(v15 + 16), v22);
                }

                else
                {
                  sub_38DAD0(&v65, *v15);
                  if ((v65.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v20 = &v65;
                  }

                  else
                  {
                    v20 = v65.__r_.__value_.__r.__words[0];
                  }

                  if ((v65.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    size = HIBYTE(v65.__r_.__value_.__r.__words[2]);
                  }

                  else
                  {
                    size = v65.__r_.__value_.__l.__size_;
                  }

                  std::string::append(&v68, v20, size);
                  if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v65.__r_.__value_.__l.__data_);
                  }
                }

                std::string::push_back(&v68, v14);
              }

              v15 += 32;
            }

            while (v15 != qword_6E8360);
            if ((v68.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v23 = HIBYTE(v68.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v23 = v68.__r_.__value_.__l.__size_;
            }
          }

          sub_B0848(&v65, v23 + 1);
          if ((v65.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v24 = &v65;
          }

          else
          {
            v24 = v65.__r_.__value_.__r.__words[0];
          }

          if (v23)
          {
            if ((v68.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v25 = &v68;
            }

            else
            {
              v25 = v68.__r_.__value_.__r.__words[0];
            }

            memmove(v24, v25, v23);
          }

          *(&v24->__r_.__value_.__l.__data_ + v23) = 10;
          if ((v65.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v26 = &v65;
          }

          else
          {
            v26 = v65.__r_.__value_.__r.__words[0];
          }

          if ((v65.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v27 = HIBYTE(v65.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v27 = v65.__r_.__value_.__l.__size_;
          }

          std::string::append((v2 + 96), v26, v27);
          if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v65.__r_.__value_.__l.__data_);
          }

          v28 = HIBYTE(v66.__r_.__value_.__r.__words[2]);
          if ((v66.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v29 = HIBYTE(v66.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v29 = v66.__r_.__value_.__l.__size_;
          }

          if (v29)
          {
            sub_B0848(&v65, v29 + 1);
            if ((v65.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v30 = &v65;
            }

            else
            {
              v30 = v65.__r_.__value_.__r.__words[0];
            }

            if ((v66.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v31 = &v66;
            }

            else
            {
              v31 = v66.__r_.__value_.__r.__words[0];
            }

            memmove(v30, v31, v29);
            *(&v30->__r_.__value_.__l.__data_ + v29) = 10;
            if ((v65.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v32 = &v65;
            }

            else
            {
              v32 = v65.__r_.__value_.__r.__words[0];
            }

            if ((v65.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v33 = HIBYTE(v65.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v33 = v65.__r_.__value_.__l.__size_;
            }

            std::string::append((v2 + 96), v32, v33);
            if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v65.__r_.__value_.__l.__data_);
            }

            v28 = HIBYTE(v66.__r_.__value_.__r.__words[2]);
          }

          if (v28 < 0)
          {
            operator delete(v66.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v68.__r_.__value_.__l.__data_);
          }
        }

        if (*(v2 + 32))
        {
          v34 = *(v2 + 60) - 1;
        }

        else
        {
          v34 = 1;
        }

        *(v2 + 60) = v34;
        v35 = qword_6E8358;
        if (qword_6E8358 != qword_6E8360)
        {
          v60 = v8;
          do
          {
            memset(&v66, 0, sizeof(v66));
            v36 = v35[1];
            if (v36 > 3)
            {
              if (v36 == 4)
              {
                std::to_string(&v68, v9[80]);
LABEL_137:
                if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v66.__r_.__value_.__l.__data_);
                }

                v66 = v68;
                goto LABEL_140;
              }

              if (v36 == 5)
              {
LABEL_115:
                memset(&v65, 0, sizeof(v65));
                v38 = (*(*v9 + 272))(v9);
                if (*v35 == 2757)
                {
                  v39 = 1;
                }

                else
                {
                  v39 = v38;
                }

                if (v39)
                {
                  if ((*(*v9 + 176))(v9) && v65.__r_.__value_.__l.__size_ - v65.__r_.__value_.__r.__words[0] == 8)
                  {
                    v40 = *v65.__r_.__value_.__l.__data_;
                    v41 = v35[1];
                    switch(v41)
                    {
                      case 3:
                        v47 = v40;
                        v40 = (logf(v47) * 20.0);
                        std::to_string(&v68, v40);
LABEL_155:
                        if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
                        {
                          operator delete(v66.__r_.__value_.__l.__data_);
                        }

                        v66 = v68;
                        v41 = v35[1];
                        break;
                      case 2:
                        v42 = v40;
                        v40 = (logf(v42) * 10.0);
                        std::to_string(&v68, v40);
                        goto LABEL_155;
                      case 5:
                        sub_2288C(&v68);
                        *(&v70[-1].__locale_ + *(v68.__r_.__value_.__r.__words[2] - 24)) = *(&v70[-1].__locale_ + *(v68.__r_.__value_.__r.__words[2] - 24)) & 0xFFFFFFB5 | 8;
                        std::ostream::operator<<();
                        sub_53E8(&v64, "0x");
                        if ((v75 & 0x10) != 0)
                        {
                          v49 = v74;
                          if (v74 < v71)
                          {
                            v74 = v71;
                            v49 = v71;
                          }

                          locale = v70[4].__locale_;
                        }

                        else
                        {
                          if ((v75 & 8) == 0)
                          {
                            v48 = 0;
                            v63 = 0;
                            goto LABEL_175;
                          }

                          locale = v70[1].__locale_;
                          v49 = v70[3].__locale_;
                        }

                        v48 = v49 - locale;
                        if ((v49 - locale) >= 0x7FFFFFFFFFFFFFF8)
                        {
                          sub_755AC();
                        }

                        if (v48 >= 0x17)
                        {
                          operator new();
                        }

                        v63 = v49 - locale;
                        if (v48)
                        {
                          memmove(&__p, locale, v48);
                        }

LABEL_175:
                        *(&__p + v48) = 0;
                        if ((v63 & 0x80u) == 0)
                        {
                          v51 = &__p;
                        }

                        else
                        {
                          v51 = __p;
                        }

                        if ((v63 & 0x80u) == 0)
                        {
                          v52 = v63;
                        }

                        else
                        {
                          v52 = v62;
                        }

                        v53 = std::string::append(&v64, v51, v52);
                        v54 = v53->__r_.__value_.__r.__words[0];
                        v67[0] = v53->__r_.__value_.__l.__size_;
                        *(v67 + 7) = *(&v53->__r_.__value_.__r.__words[1] + 7);
                        v55 = HIBYTE(v53->__r_.__value_.__r.__words[2]);
                        v53->__r_.__value_.__l.__size_ = 0;
                        v53->__r_.__value_.__r.__words[2] = 0;
                        v53->__r_.__value_.__r.__words[0] = 0;
                        v8 = v60;
                        if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
                        {
                          operator delete(v66.__r_.__value_.__l.__data_);
                        }

                        v66.__r_.__value_.__r.__words[0] = v54;
                        v66.__r_.__value_.__l.__size_ = v67[0];
                        *(&v66.__r_.__value_.__r.__words[1] + 7) = *(v67 + 7);
                        *(&v66.__r_.__value_.__s + 23) = v55;
                        if (v63 < 0)
                        {
                          operator delete(__p);
                        }

                        if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
                        {
                          operator delete(v64.__r_.__value_.__l.__data_);
                        }

                        v68.__r_.__value_.__r.__words[0] = v59;
                        *(v68.__r_.__value_.__r.__words + *(v59 - 24)) = v58;
                        v68.__r_.__value_.__r.__words[2] = v57;
                        if (v73 < 0)
                        {
                          operator delete(v72);
                        }

                        std::locale::~locale(v70);
                        std::iostream::~basic_iostream();
                        std::ios::~ios();
                        break;
                      default:
                        std::to_string(&v68, v40);
                        if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
                        {
                          operator delete(v66.__r_.__value_.__l.__data_);
                        }

                        v66 = v68;
                        break;
                    }
                  }

                  else
                  {
                    if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
                    {
                      v66.__r_.__value_.__l.__size_ = 6;
                      v44 = v66.__r_.__value_.__r.__words[0];
                    }

                    else
                    {
                      *(&v66.__r_.__value_.__s + 23) = 6;
                      v44 = &v66;
                    }

                    strcpy(v44, "!ERROR");
                  }
                }

                else
                {
                  if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
                  {
                    v66.__r_.__value_.__l.__size_ = 1;
                    v43 = v66.__r_.__value_.__r.__words[0];
                  }

                  else
                  {
                    *(&v66.__r_.__value_.__s + 23) = 1;
                    v43 = &v66;
                  }

                  LOWORD(v43->__r_.__value_.__l.__data_) = 63;
                }

                if (v65.__r_.__value_.__r.__words[0])
                {
                  v65.__r_.__value_.__l.__size_ = v65.__r_.__value_.__r.__words[0];
                  operator delete(v65.__r_.__value_.__l.__data_);
                }

                goto LABEL_140;
              }
            }

            else
            {
              if ((v36 - 1) < 3)
              {
                goto LABEL_115;
              }

              if (!v36)
              {
                if (*(v2 + 28) == 0.0)
                {
                  v37 = sub_37D544(*(v2 + 40)) / 1000.0;
                  if ((v37 - *(v2 + 48)) > 5.0)
                  {
                    *(v2 + 40) = mach_absolute_time();
                    v37 = 0.0;
                  }

                  *(v2 + 48) = v37;
                  std::to_string(&v68, v37);
                }

                else
                {
                  std::to_string(&v68, (*(v2 + 24) / *(v2 + 20)) * *(v2 + 52));
                }

                goto LABEL_137;
              }
            }

            *(&v66.__r_.__value_.__s + 23) = 7;
            qmemcpy(&v66, "!FORMAT", 7);
LABEL_140:
            if (*(v2 + 17) == 1)
            {
              std::string::resize(&v66, v35[2], 32);
            }

            sub_1D3D28(&v68, &v66.__r_.__value_.__l.__data_, v14);
            if ((v68.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v45 = &v68;
            }

            else
            {
              v45 = v68.__r_.__value_.__r.__words[0];
            }

            if ((v68.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v46 = HIBYTE(v68.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v46 = v68.__r_.__value_.__l.__size_;
            }

            std::string::append((v2 + 96), v45, v46);
            if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v68.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v66.__r_.__value_.__l.__data_);
            }

            v35 += 8;
          }

          while (v35 != qword_6E8360);
        }

        std::string::append((v2 + 96), "\n", 1uLL);
        v56 = *(v2 + 8);
        if (v56)
        {
          if (*(v2 + 119) < 0)
          {
            v13 = *v13;
          }

          fputs(v13, v56);
        }

        atomic_store(0, (v2 + 16));
      }

LABEL_195:
      sub_1A8C0(v8);
    }
  }

  if (v4)
  {
    sub_1A8C0(v4);
  }
}

void sub_286234(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t sub_286244(uint64_t result, uint64_t a2)
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

void sub_286260(uint64_t a1)
{
  sub_286298(a1);

  operator delete();
}

uint64_t sub_286298(uint64_t a1)
{
  *a1 = off_6BCF58;
  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  v2 = *(a1 + 88);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  *a1 = off_6D6730;
  v3 = *(a1 + 72);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return a1;
}

void sub_28656C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10)
{
  __cxa_free_exception(v14);
  sub_1A8C0(v13);
  if (*(v10 + 143) < 0)
  {
    operator delete(*a10);
  }

  v16 = *(v10 + 112);
  if (v16)
  {
    std::__shared_weak_count::__release_weak(v16);
  }

  *(v10 + 24) = v12;
  v17 = *(v10 + 96);
  if (v17)
  {
    std::__shared_weak_count::__release_weak(v17);
  }

  if (v11)
  {
    std::__shared_weak_count::__release_weak(v11);
  }

  std::__shared_weak_count::~__shared_weak_count(v10);
  operator delete(v18);
  _Unwind_Resume(a1);
}

void sub_286614(std::__shared_weak_count *a1)
{
  a1->__vftable = off_6BCFE0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_286688(id a1)
{
  v1 = dlopen("/usr/lib/libAudioIssueDetector.dylib", 1);
  if (v1)
  {
    goto LABEL_5;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315138;
    v5 = dlerror();
    _os_log_error_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "dlerror : libAudioIssueDetector ADAM: %s", &v4, 0xCu);
  }

  v1 = dlopen("/usr/local/lib/libAudioIssueDetector.dylib", 1);
  if (v1)
  {
LABEL_5:
    v2 = v1;
    off_6EB710 = dlsym(v1, "AudioDataAnalysisManagerCreate");
    off_6EB718 = dlsym(v2, "AudioDataAnalysisManagerDispose");
    qword_6EB720 = dlsym(v2, "AudioDataAnalysisManagerReset");
    off_6EB728 = dlsym(v2, "AudioDataAnalysisManagerUpdateReportingSessions");
    qword_6EB730 = dlsym(v2, "AudioDataAnalysisManagerCreateNodePCM");
    off_6EB738 = dlsym(v2, "AudioDataAnalysisManagerCreateNodeSPL");
    qword_6EB740 = dlsym(v2, "AudioDataAnalysisManagerRemoveNode");
    off_6EB748 = dlsym(v2, "AudioDataAnalysisManagerInitialize");
    qword_6EB750 = dlsym(v2, "AudioDataAnalysisManagerIsSessionInitialized");
    qword_6EB758 = dlsym(v2, "AudioDataAnalysisManagerProcessAudio");
    off_6EB760 = dlsym(v2, "AudioDataAnalysisManagerProcessSPL");
    qword_6EB768 = dlsym(v2, "AudioDataAnalysisManagerCreateNodeEnvSPL");
    qword_6EB770 = dlsym(v2, "AudioDataAnalysisManagerCreateNodeEnvSoundClass");
    off_6EB778 = dlsym(v2, "AudioDataAnalysisManagerCreateNodeMicLevel");
    qword_6EB780 = dlsym(v2, "AudioDataAnalysisManagerProcessEnvSPL");
    qword_6EB788 = dlsym(v2, "AudioDataAnalysisManagerProcessEnvSoundClass");
    off_6EB790 = dlsym(v2, "AudioDataAnalysisManagerProcessMicLevel");
    off_6EB798 = dlsym(v2, "AudioDataAnalysisManagerSetDeviceInfo");
    off_6EB7A0 = dlsym(v2, "AudioDataAnalysisManagerRegisterDeviceInfo");
    off_6EB7A8 = dlsym(v2, "AudioDataAnalysisManagerSetDeviceConnectionState");
    off_6EB7B0 = dlsym(v2, "AudioDataAnalysisManagerStartServices");
    off_6EB7B8 = dlsym(v2, "AudioDataAnalysisManagerConnectedWiredDeviceIsHeadphone");
    qword_6EB7C0 = dlsym(v2, "AudioDataAnalysisManagerSetApplicationBundleID");
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v3 = dlerror();
    v4 = 136315138;
    v5 = v3;
    _os_log_error_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "dlerror : libAudioIssueDetector ADAM: %s", &v4, 0xCu);
  }
}

BOOL sub_2869D0(const __CFString *a1)
{
  v1 = CFPreferencesCopyValue(a1, @"com.apple.audio.virtualaudio", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  v2 = v1;
  if (v1)
  {
    CFRelease(v1);
  }

  return v2 != 0;
}

uint64_t sub_286A28()
{
  keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"FactoryLogging", @"com.apple.audio.virtualaudio", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat != 0 && AppBooleanValue != 0)
  {
    v1 = 256;
  }

  else
  {
    v1 = 0;
  }

  if (keyExistsAndHasValidFormat)
  {
    return v1 + 1;
  }

  else
  {
    return v1;
  }
}

const __CFString *sub_286A88(CFStringRef key, void **a2)
{
  v2 = key;
  if (key)
  {
    v4 = CFPreferencesCopyValue(key, @"com.apple.audio.virtualaudio", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
    if (v4)
    {
      v5 = v4;
      v6 = CFGetTypeID(v4);
      if (v6 == CFStringGetTypeID())
      {
        System = CFLocaleGetSystem();
        v8 = CFNumberFormatterCreate(0, System, kCFNumberFormatterDecimalStyle);
        if (v8)
        {
          v9 = v8;
          NumberFromString = CFNumberFormatterCreateNumberFromString(0, v8, v5, 0, 0);
          if (NumberFromString)
          {
            v11 = NumberFromString;
            CFRelease(v5);
            v6 = CFGetTypeID(v11);
            v5 = v11;
          }

          else
          {
            v14 = *sub_5544(14);
            v15 = v14;
            if (v14)
            {
              v16 = v14;
              if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
              {
                sub_48540(__p, v2);
                v17 = v27 >= 0 ? __p : __p[0];
                *buf = 136315650;
                v29 = "RunTimeDefaults.mm";
                v30 = 1024;
                v31 = 191;
                v32 = 2080;
                v33 = v17;
                _os_log_impl(&dword_0, v16, OS_LOG_TYPE_ERROR, "%25s:%-5d The value for key %s is a CFString that cannot be converted to a CFNumber.", buf, 0x1Cu);
                if (v27 < 0)
                {
                  operator delete(__p[0]);
                }
              }
            }
          }

          CFRelease(v9);
        }

        else
        {
          v12 = *sub_5544(14);
          v13 = v12;
          if (v12 && os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v29 = "RunTimeDefaults.mm";
            v30 = 1024;
            v31 = 198;
            _os_log_impl(&dword_0, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d Unable to create a CFNumberFormatterRef.", buf, 0x12u);
          }
        }
      }

      if (v6 == CFNumberGetTypeID())
      {
        __p[0] = 0;
        Value = CFNumberGetValue(v5, kCFNumberFloat64Type, __p);
        v2 = (Value == 1);
        if (Value == 1)
        {
          *a2 = __p[0];
        }

        else
        {
          v23 = *sub_5544(14);
          v24 = v23;
          if (v23 && os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v29 = "RunTimeDefaults.mm";
            v30 = 1024;
            v31 = 213;
            _os_log_impl(&dword_0, v24, OS_LOG_TYPE_ERROR, "%25s:%-5d CFNumberGetValue() failed while trying to convert a CFNumber to a Float32.", buf, 0x12u);
          }
        }
      }

      else
      {
        v19 = *sub_5544(14);
        v20 = v19;
        if (v19)
        {
          v21 = v19;
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            sub_48540(__p, v2);
            v22 = v27 >= 0 ? __p : __p[0];
            *buf = 136315650;
            v29 = "RunTimeDefaults.mm";
            v30 = 1024;
            v31 = 218;
            v32 = 2080;
            v33 = v22;
            _os_log_impl(&dword_0, v21, OS_LOG_TYPE_ERROR, "%25s:%-5d The value for key %s is neither a CFNumber nor a convertible CFString.", buf, 0x1Cu);
            if (v27 < 0)
            {
              operator delete(__p[0]);
            }
          }
        }

        v2 = 0;
      }

      CFRelease(v5);
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

uint64_t sub_286E80()
{
  if ((byte_6E8379 & 1) == 0)
  {
    v3 = 0;
    if (sub_1235F4(@"AllowUSBInputForSiri", @"com.apple.audio.virtualaudio", &v3))
    {
      byte_6E8378 = v3 != 0;
      v0 = *sub_5544(14);
      v1 = v0;
      if (v0 && os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v5 = "RunTimeDefaults.mm";
        v6 = 1024;
        v7 = 375;
        v8 = 1024;
        v9 = byte_6E8378;
        _os_log_impl(&dword_0, v1, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Allow USB Input for Siri: %u", buf, 0x18u);
      }
    }

    byte_6E8379 = 1;
  }

  return byte_6E8378;
}

void sub_286FA8(id a1)
{
  sub_28700C(&stru_6BD068);
}

void sub_287390(id a1)
{
  v3 = 0;
  if (sub_1235F4(@"AllowUSBForTelephony", @"com.apple.audio.virtualaudio", &v3))
  {
    byte_6E837A = v3 != 0;
  }

  v1 = *sub_5544(14);
  v2 = v1;
  if (v1 && os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v5 = "RunTimeDefaults.mm";
    v6 = 1024;
    v7 = 399;
    v8 = 1024;
    v9 = byte_6E837A;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Allow USB for Telephony: %u", buf, 0x18u);
  }
}

uint64_t sub_28749C()
{
  if ((byte_6E8389 & 1) == 0)
  {
    v3 = 0;
    if (sub_1235F4(@"DisallowUSBHostAudioOutput", @"com.apple.audio.virtualaudio", &v3))
    {
      byte_6E8388 = v3 != 0;
      v0 = *sub_5544(14);
      v1 = v0;
      if (v0 && os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v5 = "RunTimeDefaults.mm";
        v6 = 1024;
        v7 = 421;
        v8 = 1024;
        v9 = byte_6E8388;
        _os_log_impl(&dword_0, v1, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Disallow USB Host Audio Output: %u", buf, 0x18u);
      }
    }

    byte_6E8389 = 1;
  }

  return byte_6E8388;
}

BOOL sub_2875C4()
{
  v5 = 0;
  v0 = 0;
  if (sub_1235F4(@"EnableCarPlayTesting", @"com.apple.coreaudio", &v5))
  {
    v1 = v5;
    v0 = v5 != 0;
    v2 = *sub_5544(14);
    v3 = v2;
    if (v2 && os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v7 = "RunTimeDefaults.mm";
      v8 = 1024;
      v9 = 443;
      v10 = 1024;
      v11 = v1 != 0;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Enable CarPlay test routes: %u", buf, 0x18u);
    }
  }

  return v0;
}

void sub_2876D8(id a1)
{
  sub_28700C(&stru_6BD0A8);
}

void sub_28773C(id a1)
{
  v3 = 0;
  if (sub_1235F4(@"AllowVibeInMultiRoute", @"com.apple.audio.virtualaudio", &v3))
  {
    byte_6E8398 = v3 != 0;
    v1 = *sub_5544(14);
    v2 = v1;
    if (v1)
    {
      if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v5 = "RunTimeDefaults.mm";
        v6 = 1024;
        v7 = 471;
        v8 = 1024;
        v9 = byte_6E8398;
        _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Allow vibe in multi-route: %u", buf, 0x18u);
      }
    }
  }
}

uint64_t sub_287844()
{
  if ((byte_6E83A9 & 1) == 0)
  {
    v5 = 0;
    if (sub_1235F4(@"AllowUSBInVoiceChat", @"com.apple.audio.virtualaudio", &v5))
    {
      v0 = *sub_5544(14);
      v1 = v0;
      if (v0)
      {
        v2 = os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT);
        v3 = v5;
        if (v2)
        {
          *buf = 136315906;
          v7 = "RunTimeDefaults.mm";
          v8 = 1024;
          v9 = 493;
          v10 = 2080;
          v11 = "AllowUSBInVoiceChat";
          v12 = 1024;
          v13 = v5;
          _os_log_impl(&dword_0, v1, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Default %s: %d.", buf, 0x22u);
        }
      }

      else
      {
        v3 = v5;
      }

      byte_6E83A8 = v3 != 0;
    }

    byte_6E83A9 = 1;
  }

  return byte_6E83A8;
}

uint64_t sub_287984()
{
  if ((byte_6E83AB & 1) == 0)
  {
    v5 = 0;
    if (sub_1235F4(@"UseReceiverInVideoChat", @"com.apple.audio.virtualaudio", &v5))
    {
      v0 = *sub_5544(14);
      v1 = v0;
      if (v0)
      {
        v2 = os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT);
        v3 = v5;
        if (v2)
        {
          *buf = 136315906;
          v7 = "RunTimeDefaults.mm";
          v8 = 1024;
          v9 = 518;
          v10 = 2080;
          v11 = "UseReceiverInVideoChat";
          v12 = 1024;
          v13 = v5;
          _os_log_impl(&dword_0, v1, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Default %s: %d.", buf, 0x22u);
        }
      }

      else
      {
        v3 = v5;
      }

      byte_6E83AA = v3 != 0;
    }

    byte_6E83AB = 1;
  }

  return byte_6E83AA;
}

uint64_t sub_287AC4()
{
  if ((byte_6E83AD & 1) == 0)
  {
    v5 = 0;
    if (sub_1235F4(@"DisableAudioProcessing", @"com.apple.audio.virtualaudio", &v5))
    {
      v0 = *sub_5544(14);
      v1 = v0;
      if (v0)
      {
        v2 = os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT);
        v3 = v5;
        if (v2)
        {
          *buf = 136315906;
          v7 = "RunTimeDefaults.mm";
          v8 = 1024;
          v9 = 543;
          v10 = 2080;
          v11 = "DisableAudioProcessing";
          v12 = 1024;
          v13 = v5;
          _os_log_impl(&dword_0, v1, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Default %s: %d.", buf, 0x22u);
        }
      }

      else
      {
        v3 = v5;
      }

      byte_6E83AC = v3 != 0;
    }

    byte_6E83AD = 1;
  }

  return byte_6E83AC;
}

uint64_t sub_287C04()
{
  if (byte_6E83AF != 1)
  {
    v6 = 0;
    if (sub_1235F4(@"DisableInputProcessing", @"com.apple.audio.virtualaudio", &v6))
    {
      v1 = *sub_5544(14);
      v2 = v1;
      if (v1)
      {
        v3 = os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT);
        v4 = v6;
        if (v3)
        {
          *buf = 136315906;
          v8 = "RunTimeDefaults.mm";
          v9 = 1024;
          v10 = 567;
          v11 = 2080;
          v12 = "DisableInputProcessing";
          v13 = 1024;
          v14 = v6;
          _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Default %s: %d.", buf, 0x22u);
        }
      }

      else
      {
        v4 = v6;
      }

      byte_6E83AE = v4 != 0;
      if (v4)
      {
        goto LABEL_11;
      }
    }

    else if (byte_6E83AE)
    {
LABEL_11:
      v0 = 1;
      goto LABEL_12;
    }

    v0 = sub_287AC4();
LABEL_12:
    byte_6E83AE = v0;
    byte_6E83AF = 1;
    return v0 & 1;
  }

  v0 = byte_6E83AE;
  return v0 & 1;
}

uint64_t sub_287D70()
{
  if (byte_6E83B1 != 1)
  {
    v6 = 0;
    if (sub_1235F4(@"DisableOutputProcessing", @"com.apple.audio.virtualaudio", &v6))
    {
      v1 = *sub_5544(14);
      v2 = v1;
      if (v1)
      {
        v3 = os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT);
        v4 = v6;
        if (v3)
        {
          *buf = 136315906;
          v8 = "RunTimeDefaults.mm";
          v9 = 1024;
          v10 = 593;
          v11 = 2080;
          v12 = "DisableOutputProcessing";
          v13 = 1024;
          v14 = v6;
          _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Default %s: %d.", buf, 0x22u);
        }
      }

      else
      {
        v4 = v6;
      }

      byte_6E83B0 = v4 != 0;
      if (v4)
      {
        goto LABEL_11;
      }
    }

    else if (byte_6E83B0)
    {
LABEL_11:
      v0 = 1;
      goto LABEL_12;
    }

    v0 = sub_287AC4();
LABEL_12:
    byte_6E83B0 = v0;
    byte_6E83B1 = 1;
    return v0 & 1;
  }

  v0 = byte_6E83B0;
  return v0 & 1;
}

BOOL sub_287EDC(float *a1)
{
  v8 = 0;
  v2 = sub_1235F4(@"MaxSpeakerVolumeDecibels", @"com.apple.audio.virtualaudio", &v8);
  if (v2)
  {
    v3 = *sub_5544(14);
    v4 = v3;
    if (v3)
    {
      v5 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
      v6 = v8;
      if (v5)
      {
        *buf = 136315906;
        v10 = "RunTimeDefaults.mm";
        v11 = 1024;
        v12 = 614;
        v13 = 2080;
        v14 = "MaxSpeakerVolumeDecibels";
        v15 = 1024;
        v16 = v8;
        _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Default %s: %d.", buf, 0x22u);
      }
    }

    else
    {
      v6 = v8;
    }

    *a1 = v6;
  }

  return v2;
}

BOOL sub_288008(float *a1)
{
  v8 = 0;
  v2 = sub_1235F4(@"MaxWiredHeadphonesVoiceChatVolumeDecibels", @"com.apple.audio.virtualaudio", &v8);
  if (v2)
  {
    v3 = *sub_5544(14);
    v4 = v3;
    if (v3)
    {
      v5 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
      v6 = v8;
      if (v5)
      {
        *buf = 136315906;
        v10 = "RunTimeDefaults.mm";
        v11 = 1024;
        v12 = 661;
        v13 = 2080;
        v14 = "MaxWiredHeadphonesVoiceChatVolumeDecibels";
        v15 = 1024;
        v16 = v8;
        _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Default %s: %d.", buf, 0x22u);
      }
    }

    else
    {
      v6 = v8;
    }

    *a1 = v6;
  }

  return v2;
}

BOOL sub_288134(float *a1)
{
  v8 = 0;
  v2 = sub_1235F4(@"MinWiredHeadphonesVoiceChatVolumeDecibels", @"com.apple.audio.virtualaudio", &v8);
  if (v2)
  {
    v3 = *sub_5544(14);
    v4 = v3;
    if (v3)
    {
      v5 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
      v6 = v8;
      if (v5)
      {
        *buf = 136315906;
        v10 = "RunTimeDefaults.mm";
        v11 = 1024;
        v12 = 676;
        v13 = 2080;
        v14 = "MinWiredHeadphonesVoiceChatVolumeDecibels";
        v15 = 1024;
        v16 = v8;
        _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Default %s: %d.", buf, 0x22u);
      }
    }

    else
    {
      v6 = v8;
    }

    *a1 = v6;
  }

  return v2;
}

void sub_288260()
{
  *v7 = 0;
  if (sub_286A88(@"VADIOCycleUsage", v7))
  {
    v0 = *v7;
    v1 = 1.0;
    if (v0 <= 1.0)
    {
      v1 = *v7;
    }

    v2 = v0 < 0.0;
    v3 = 0.0;
    if (!v2)
    {
      v3 = v1;
    }

    *&qword_6E8418 = v3;
    BYTE4(qword_6E8418) = 1;
    v4 = *sub_5544(14);
    v5 = v4;
    if (v4)
    {
      v6 = v4;
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        if ((qword_6E8418 & 0x100000000) == 0)
        {
          sub_1EC054();
        }

        *v7 = 136315906;
        *&v7[4] = "RunTimeDefaults.mm";
        v8 = 1024;
        v9 = 857;
        v10 = 2080;
        v11 = "VADIOCycleUsage";
        v12 = 2048;
        v13 = *&qword_6E8418;
        _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Defaults key %s was defined to %f", v7, 0x26u);
      }
    }
  }
}

uint64_t sub_2883D8(void *a1)
{
  if ((atomic_load_explicit(&qword_6E8440, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6E8440))
  {
    qword_6E8428 = 0;
    qword_6E8430 = 0;
    qword_6E8438 = 0;
    __cxa_guard_release(&qword_6E8440);
  }

  if (byte_6E8448)
  {
    goto LABEL_145;
  }

  byte_6E8448 = 1;
  if (!sub_2869D0(@"BuiltInMicSelection"))
  {
    goto LABEL_145;
  }

  *buf = 0;
  v2 = sub_1235F4(@"BuiltInMicSelection", @"com.apple.audio.virtualaudio", buf);
  v3 = *buf;
  v4 = v2 ? *buf : 0;
  if (!v2)
  {
    goto LABEL_145;
  }

  v5 = sub_DD858();
  v6 = sub_310AF4();
  if (v5 <= 2024)
  {
    switch(v5)
    {
      case 0:
        v52 = sub_5544(14);
        v53 = sub_468EC(3, *v52, *(v52 + 8));
        v8 = v53;
        if (!v53 || !os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_28;
        }

        *buf = 136315906;
        v62 = "RunTimeDefaults.mm";
        v63 = 1024;
        v64 = 1105;
        v65 = 1024;
        LODWORD(v66[0]) = 0;
        WORD2(v66[0]) = 2080;
        *(v66 + 6) = "BuiltInMicSelection";
        v9 = "%25s:%-5d Unknown product %u. Ignoring default %s (default VAD behavior will obtain).";
        goto LABEL_13;
      case 2:
      case 3:
      case 4:
      case 5:
      case 48:
      case 68:
      case 79:
      case 82:
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
      case 181:
      case 182:
      case 185:
      case 187:
      case 192:
      case 197:
      case 198:
      case 199:
        goto LABEL_10;
      case 9:
      case 10:
      case 17:
      case 18:
      case 19:
      case 20:
      case 26:
      case 27:
      case 28:
      case 29:
      case 30:
      case 31:
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
      case 42:
      case 43:
      case 45:
      case 46:
      case 106:
      case 107:
      case 179:
      case 180:
        goto LABEL_24;
      case 73:
      case 74:
      case 75:
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
      case 102:
      case 103:
      case 177:
      case 195:
      case 196:
        goto LABEL_18;
      case 87:
      case 88:
      case 96:
      case 97:
      case 100:
      case 101:
      case 104:
      case 105:
        v48 = sub_5544(14);
        v49 = sub_468EC(3, *v48, *(v48 + 8));
        v8 = v49;
        if (v49 && os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v62 = "RunTimeDefaults.mm";
          v63 = 1024;
          v64 = 1097;
          v65 = 1024;
          LODWORD(v66[0]) = v5;
          _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Product %u has five microphones. In the bit field, bit 0 corresponds to the top left mic; bit 1 corresponds to the top right mic; bit 2 corresponds to the front mic; bit 3 corresponds to the back mic; bit 4 corresponds to the side mic", buf, 0x18u);
        }

        v6 = 5;
        goto LABEL_28;
      case 160:
      case 169:
        v50 = sub_5544(14);
        v6 = 3;
        v51 = sub_468EC(3, *v50, *(v50 + 8));
        v8 = v51;
        if (!v51 || !os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_28;
        }

        *buf = 136315650;
        v62 = "RunTimeDefaults.mm";
        v63 = 1024;
        v64 = 1019;
        v65 = 1024;
        LODWORD(v66[0]) = v5;
        v9 = "%25s:%-5d Product %u has three microphones. In the bit field, bit 0 corresponds to the bottom mic; bit 1 corresponds to the back mic; bit 2 corresponds to the front mic.";
        v10 = v8;
        v11 = 24;
        goto LABEL_14;
      default:
        goto LABEL_29;
    }
  }

  if (v5 > 8009)
  {
    if ((v5 - 8010) <= 0xE && ((1 << (v5 - 74)) & 0x7801) != 0)
    {
      goto LABEL_24;
    }

    if ((v5 - 12002) >= 2 && v5 != 10012)
    {
      goto LABEL_29;
    }

LABEL_10:
    v7 = *sub_5544(14);
    v8 = v7;
    if (v7 && os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v62 = "RunTimeDefaults.mm";
      v63 = 1024;
      v64 = 958;
      v65 = 1024;
      LODWORD(v66[0]) = v5;
      WORD2(v66[0]) = 2080;
      *(v66 + 6) = "BuiltInMicSelection";
      v9 = "%25s:%-5d Product %u has 0 or 1 microphone. Ignoring default %s (default VAD behavior will obtain).";
LABEL_13:
      v10 = v8;
      v11 = 34;
LABEL_14:
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, v9, buf, v11);
    }

    goto LABEL_28;
  }

  if ((v5 - 2025) > 6)
  {
    if ((v5 - 4013) >= 5)
    {
      goto LABEL_29;
    }

    goto LABEL_10;
  }

  if (((1 << (v5 + 23)) & 0x67) != 0)
  {
LABEL_18:
    v12 = *sub_5544(14);
    v8 = v12;
    if (v12 && os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v62 = "RunTimeDefaults.mm";
      v63 = 1024;
      v64 = 1009;
      v65 = 1024;
      LODWORD(v66[0]) = v5;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Product %u has two microphones. In the bit field, bit 0 corresponds to the top mic; bit 1 corresponds to the back mic.", buf, 0x18u);
    }

    v6 = 2;
    goto LABEL_28;
  }

LABEL_24:
  v13 = *sub_5544(14);
  v8 = v13;
  if (v13 && os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v62 = "RunTimeDefaults.mm";
    v63 = 1024;
    v64 = 1078;
    v65 = 1024;
    LODWORD(v66[0]) = v5;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Product %u has four microphones. In the bit field, bit 0 corresponds to the bottom mic; bit 1 corresponds to the back mic; bit 2 corresponds to the front mic; bit 3 corresponds to the second bottom mic", buf, 0x18u);
  }

  v6 = 4;
LABEL_28:

LABEL_29:
  if (!v3)
  {
    v14 = *sub_5544(14);
    v15 = v14;
    if (v14 && os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v62 = "RunTimeDefaults.mm";
      v63 = 1024;
      v64 = 1109;
      v65 = 2080;
      v66[0] = "BuiltInMicSelection";
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "%25s:%-5d No bits selected. Ignoring default %s (default VAD behavior will obtain).", buf, 0x1Cu);
    }
  }

  if (!v6)
  {
    goto LABEL_145;
  }

  v16 = 0;
  v17 = v5 - 73;
  v58 = v5 - 2025;
  while (1)
  {
    if (((v4 >> v16) & 1) == 0)
    {
      goto LABEL_100;
    }

    if (v16 <= 1)
    {
      if (v16)
      {
        if (v16 != 1)
        {
          goto LABEL_141;
        }

        if ((v17 > 0x22 || ((1 << v17) & 0x7999EFDB7) == 0) && (v5 - 2028) >= 4 && v5 != 177)
        {
          v16 = 1;
          goto LABEL_141;
        }

        if (v17 <= 0x22 && ((1 << v17) & 0x79F9EFDB7) != 0 || v58 < 7 || v5 == 177)
        {
          v22 = *sub_5544(14);
          v23 = v22;
          if (v22)
          {
            v24 = v22;
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
            {
              sub_22170(__p, 0x696D6932u);
              v25 = __p;
              if (v60 < 0)
              {
                v25 = __p[0];
              }

              *buf = 136315906;
              v62 = "RunTimeDefaults.mm";
              v63 = 1024;
              v64 = 1215;
              v65 = 1024;
              LODWORD(v66[0]) = 1;
              WORD2(v66[0]) = 2080;
              *(v66 + 6) = v25;
              _os_log_impl(&dword_0, v24, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Bit %u: back mic selected... Selecting sub-port %s.", buf, 0x22u);
              if (v60 < 0)
              {
                operator delete(__p[0]);
              }
            }
          }

          *buf = 1768778034;
          sub_9EF84(&qword_6E8428, buf);
        }

        else
        {
          v43 = sub_5544(14);
          v44 = sub_468EC(3, *v43, *(v43 + 8));
          v45 = v44;
          if (v44)
          {
            v46 = v44;
            if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
            {
              sub_22170(__p, 0x736D6963u);
              v47 = __p;
              if (v60 < 0)
              {
                v47 = __p[0];
              }

              *buf = 136315906;
              v62 = "RunTimeDefaults.mm";
              v63 = 1024;
              v64 = 1220;
              v65 = 1024;
              LODWORD(v66[0]) = 1;
              WORD2(v66[0]) = 2080;
              *(v66 + 6) = v47;
              _os_log_impl(&dword_0, v46, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Bit %u: back mic selected... Selecting sub-port %s.", buf, 0x22u);
              if (v60 < 0)
              {
                operator delete(__p[0]);
              }
            }
          }

          *buf = 1936550243;
          sub_9EF84(&qword_6E8428, buf);
        }
      }

      else if (v17 <= 0x22 && ((1 << (v5 - 73)) & 0x79F9EFDB7) != 0 || v58 < 7 || v5 == 177)
      {
        v30 = *sub_5544(14);
        v31 = v30;
        if (v30)
        {
          v32 = v30;
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
          {
            sub_22170(__p, 0x696D6931u);
            v33 = __p;
            if (v60 < 0)
            {
              v33 = __p[0];
            }

            *buf = 136315906;
            v62 = "RunTimeDefaults.mm";
            v63 = 1024;
            v64 = 1152;
            v65 = 1024;
            LODWORD(v66[0]) = 0;
            WORD2(v66[0]) = 2080;
            *(v66 + 6) = v33;
            _os_log_impl(&dword_0, v32, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Bit %u: primary mic selected... Selecting sub-port %s.", buf, 0x22u);
            if (v60 < 0)
            {
              operator delete(__p[0]);
            }
          }
        }

        *buf = 1768778033;
        sub_9EF84(&qword_6E8428, buf);
      }

      else
      {
        v38 = sub_5544(14);
        v39 = sub_468EC(3, *v38, *(v38 + 8));
        v40 = v39;
        if (v39)
        {
          v41 = v39;
          if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
          {
            sub_22170(__p, 0x696D6963u);
            v42 = __p;
            if (v60 < 0)
            {
              v42 = __p[0];
            }

            *buf = 136315906;
            v62 = "RunTimeDefaults.mm";
            v63 = 1024;
            v64 = 1157;
            v65 = 1024;
            LODWORD(v66[0]) = 0;
            WORD2(v66[0]) = 2080;
            *(v66 + 6) = v42;
            _os_log_impl(&dword_0, v41, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Bit %u: primary mic selected... Selecting sub-port %s.", buf, 0x22u);
            if (v60 < 0)
            {
              operator delete(__p[0]);
            }
          }
        }

        *buf = 1768778083;
        sub_9EF84(&qword_6E8428, buf);
      }

      goto LABEL_100;
    }

    if (v16 != 2)
    {
      break;
    }

    if (((v5 - 87) > 0x14 || ((1 << (v5 - 87)) & 0x1E7E03) == 0) && v58 >= 5)
    {
      v16 = 2;
      goto LABEL_141;
    }

    v34 = *sub_5544(14);
    v35 = v34;
    if (v34)
    {
      v36 = v34;
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        sub_22170(__p, 0x696D6933u);
        v37 = __p;
        if (v60 < 0)
        {
          v37 = __p[0];
        }

        *buf = 136315906;
        v62 = "RunTimeDefaults.mm";
        v63 = 1024;
        v64 = 1265;
        v65 = 1024;
        LODWORD(v66[0]) = 2;
        WORD2(v66[0]) = 2080;
        *(v66 + 6) = v37;
        _os_log_impl(&dword_0, v36, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Bit %u: front mic selected... Selecting sub-port %s.", buf, 0x22u);
        if (v60 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }

    *buf = 1768778035;
    sub_9EF84(&qword_6E8428, buf);
LABEL_100:
    if (v6 == ++v16)
    {
      goto LABEL_145;
    }
  }

  if (v16 != 3)
  {
    if (v16 != 4)
    {
      goto LABEL_141;
    }

    if (((v5 - 87) > 0x12 || ((1 << (v5 - 87)) & 0x67E03) == 0) && v58 >= 3)
    {
      v16 = 4;
      goto LABEL_141;
    }

    v18 = *sub_5544(14);
    v19 = v18;
    if (v18)
    {
      v20 = v18;
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        sub_22170(__p, 0x696D6935u);
        v21 = __p;
        if (v60 < 0)
        {
          v21 = __p[0];
        }

        *buf = 136315906;
        v62 = "RunTimeDefaults.mm";
        v63 = 1024;
        v64 = 1344;
        v65 = 1024;
        LODWORD(v66[0]) = 4;
        WORD2(v66[0]) = 2080;
        *(v66 + 6) = v21;
        _os_log_impl(&dword_0, v20, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Bit %u: side mic selected... Selecting sub-port %s.", buf, 0x22u);
        if (v60 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }

    *buf = 1768778037;
    sub_9EF84(&qword_6E8428, buf);
    goto LABEL_100;
  }

  if ((v5 - 87) <= 0x14 && ((1 << (v5 - 87)) & 0x1E7E03) != 0 || v58 < 5)
  {
    v26 = *sub_5544(14);
    v27 = v26;
    if (v26)
    {
      v28 = v26;
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        sub_22170(__p, 0x696D6934u);
        v29 = __p;
        if (v60 < 0)
        {
          v29 = __p[0];
        }

        *buf = 136315906;
        v62 = "RunTimeDefaults.mm";
        v63 = 1024;
        v64 = 1315;
        v65 = 1024;
        LODWORD(v66[0]) = 3;
        WORD2(v66[0]) = 2080;
        *(v66 + 6) = v29;
        _os_log_impl(&dword_0, v28, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Bit %u: back mic selected... Selecting sub-port %s.", buf, 0x22u);
        if (v60 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }

    *buf = 1768778036;
    sub_9EF84(&qword_6E8428, buf);
    goto LABEL_100;
  }

  v16 = 3;
LABEL_141:
  v54 = sub_5544(14);
  v55 = sub_468EC(1, *v54, *(v54 + 8));
  v56 = v55;
  if (v55 && os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315906;
    v62 = "RunTimeDefaults.mm";
    v63 = 1024;
    v64 = 1350;
    v65 = 1024;
    LODWORD(v66[0]) = v16;
    WORD2(v66[0]) = 1024;
    *(v66 + 6) = v5;
    _os_log_impl(&dword_0, v56, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: Encountered an unexpected bit (%u) / product (%d) combination.", buf, 0x1Eu);
  }

  qword_6E8430 = qword_6E8428;
LABEL_145:
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  return sub_46980(a1, qword_6E8428, qword_6E8430, (qword_6E8430 - qword_6E8428) >> 2);
}

uint64_t sub_289260()
{
  if ((byte_6E844C & 1) == 0)
  {
    v5 = 0;
    if (sub_1235F4(@"DisableEANC", @"com.apple.audio.virtualaudio", &v5))
    {
      v0 = *sub_5544(14);
      v1 = v0;
      if (v0)
      {
        v2 = os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT);
        v3 = v5;
        if (v2)
        {
          *buf = 136315906;
          v7 = "RunTimeDefaults.mm";
          v8 = 1024;
          v9 = 1401;
          v10 = 2080;
          v11 = "DisableEANC";
          v12 = 1024;
          v13 = v5;
          _os_log_impl(&dword_0, v1, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Default %s: %d.", buf, 0x22u);
        }
      }

      else
      {
        v3 = v5;
      }

      byte_6E844B = v3 != 0;
    }

    byte_6E844C = 1;
  }

  return byte_6E844B;
}

void sub_2893A0(_BYTE *a1)
{
  if (byte_6E8478)
  {
    goto LABEL_18;
  }

  sub_1123D0(&v11, @"HeadsetOverride", 0);
  if (v11)
  {
    std::string::operator=(&xmmword_6E8460, &__p);
    v2 = byte_6E8477;
    v3 = *(&xmmword_6E8460 + 1) != 0;
    if (byte_6E8477 >= 0)
    {
      v3 = byte_6E8477 != 0;
    }

    if (byte_6E8477 < 0)
    {
      v2 = *(&xmmword_6E8460 + 1);
    }

    byte_6E8458 = v3;
    if (!v2)
    {
      v8 = sub_5544(14);
      v9 = sub_468EC(1, *v8, *(v8 + 8));
      v10 = v9;
      if (v9 && os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v14 = "RunTimeDefaults.mm";
        v15 = 1024;
        v16 = 1495;
        v17 = 2080;
        v18 = "HeadsetOverride";
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: An invalid string was retrieved for defaults key %s", buf, 0x1Cu);
      }

      if ((byte_6E8458 & 1) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_9;
    }

    if (v3)
    {
LABEL_9:
      v4 = *sub_5544(14);
      v5 = v4;
      if (v4 && os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        if (byte_6E8477 >= 0)
        {
          v6 = &xmmword_6E8460;
        }

        else
        {
          v6 = xmmword_6E8460;
        }

        *buf = 136315906;
        v14 = "RunTimeDefaults.mm";
        v15 = 1024;
        v16 = 1497;
        v17 = 2080;
        v18 = "HeadsetOverride";
        v19 = 2080;
        v20 = v6;
        _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEBUG, "%25s:%-5d Defaults key %s was defined as %s", buf, 0x26u);
      }
    }
  }

LABEL_16:
  byte_6E8478 = 1;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_18:
  *a1 = byte_6E8458;
  v7 = a1 + 8;
  if (byte_6E8477 < 0)
  {
    sub_54A0(v7, xmmword_6E8460, *(&xmmword_6E8460 + 1));
  }

  else
  {
    *v7 = xmmword_6E8460;
    *(v7 + 2) = unk_6E8470;
  }
}

void sub_289620(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_28964C()
{
  v7 = 0;
  v0 = sub_1235F4(@"DisableSpeechDetectionRoute", @"com.apple.coreaudio", &v7);
  if (v0)
  {
    v1 = v7 << 32;
  }

  else
  {
    v1 = 0;
  }

  if (v1)
  {
    v2 = v0;
  }

  else
  {
    v2 = 0;
  }

  if (v0)
  {
    v3 = *sub_5544(14);
    v4 = v3;
    if (v3 && os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = "Dis";
      v7 = 136316162;
      v8 = "RunTimeDefaults.mm";
      v9 = 1024;
      v10 = 1644;
      v12 = "DisableSpeechDetectionRoute";
      v11 = 2080;
      if (v2)
      {
        v5 = "En";
      }

      v13 = 1024;
      v14 = HIDWORD(v1);
      v15 = 2080;
      v16 = v5;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Defaults key %s was defined to %d. %sabling voice trigger VAD creation.", &v7, 0x2Cu);
    }
  }

  return v2;
}

uint64_t sub_289798()
{
  if ((atomic_load_explicit(&qword_6E8490, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6E8490))
  {
    byte_6E8488 = sub_28980C();
    __cxa_guard_release(&qword_6E8490);
  }

  return byte_6E8488;
}

BOOL sub_28980C()
{
  LOBYTE(v7) = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"EnableSiriOverUSB", @"com.apple.audio.virtualaudio", &v7);
  v1 = AppBooleanValue != 0;
  if (!v7)
  {
    return 0;
  }

  v2 = AppBooleanValue;
  v3 = *sub_5544(14);
  v4 = v3;
  if (v3 && os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = "Disabled";
    v7 = 136316162;
    v8 = "RunTimeDefaults.mm";
    v9 = 1024;
    v10 = 1656;
    v11 = 2080;
    v12 = "EnableSiriOverUSB";
    if (v2)
    {
      v5 = "Enabled";
    }

    v13 = 1024;
    v14 = v2 != 0;
    v15 = 2080;
    v16 = v5;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Defaults key %s was defined to %u. Siri over USB is %s", &v7, 0x2Cu);
  }

  return v1;
}

BOOL sub_289958()
{
  LOBYTE(v7) = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"ForceRamstadSRCForTelephony", @"com.apple.coreaudio", &v7);
  v1 = AppBooleanValue != 0;
  if (!v7)
  {
    return 0;
  }

  v2 = AppBooleanValue;
  v3 = *sub_5544(14);
  v4 = v3;
  if (v3 && os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = "Disabled";
    v7 = 136316162;
    v8 = "RunTimeDefaults.mm";
    v9 = 1024;
    v10 = 1667;
    v11 = 2080;
    v12 = "ForceRamstadSRCForTelephony";
    if (v2)
    {
      v5 = "Enabled";
    }

    v13 = 1024;
    v14 = v2 != 0;
    v15 = 2080;
    v16 = v5;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Defaults key %s was defined to %u. Forcing Ramstad SRC for telephony is %s", &v7, 0x2Cu);
  }

  return v1;
}

BOOL sub_289AA4()
{
  v7 = 0;
  v0 = sub_1235F4(@"DisableDeviceOrientationStereoSwap", @"com.apple.audio.virtualaudio", &v7);
  if (v0)
  {
    v1 = v7 << 32;
  }

  else
  {
    v1 = 0;
  }

  if (v1)
  {
    v2 = v0;
  }

  else
  {
    v2 = 0;
  }

  if (v0)
  {
    v3 = *sub_5544(14);
    v4 = v3;
    if (v3 && os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = "Dis";
      v7 = 136316162;
      v8 = "RunTimeDefaults.mm";
      v9 = 1024;
      v10 = 1706;
      v12 = "DisableDeviceOrientationStereoSwap";
      v11 = 2080;
      if (v2)
      {
        v5 = "En";
      }

      v13 = 1024;
      v14 = HIDWORD(v1);
      v15 = 2080;
      v16 = v5;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Defaults key %s was defined to %d. %sabling device orientation based stereo channel swap.", &v7, 0x2Cu);
    }
  }

  return v2;
}

BOOL sub_289BF0()
{
  LOBYTE(v6) = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"DisableAudio", @"com.apple.audio.virtualaudio", &v6);
  v1 = AppBooleanValue != 0;
  if (!v6)
  {
    return 0;
  }

  v2 = AppBooleanValue;
  v3 = *sub_5544(14);
  v4 = v3;
  if (v3 && os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315906;
    v7 = "RunTimeDefaults.mm";
    v8 = 1024;
    v9 = 1736;
    v10 = 2080;
    v11 = "DisableAudio";
    v12 = 1024;
    v13 = v2 != 0;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Defaults key %s was defined to %u", &v6, 0x22u);
  }

  return v1;
}

uint64_t sub_289D20()
{
  if ((atomic_load_explicit(&qword_6E84F8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6E84F8))
  {
    byte_6E84F0 = sub_289D94();
    __cxa_guard_release(&qword_6E84F8);
  }

  return byte_6E84F0;
}

BOOL sub_289D94()
{
  LOBYTE(v6) = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"ForceSoftwareVolumeMode", @"com.apple.audio.virtualaudio", &v6);
  v1 = AppBooleanValue != 0;
  if (!v6)
  {
    return 0;
  }

  v2 = AppBooleanValue;
  v3 = *sub_5544(14);
  v4 = v3;
  if (v3 && os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315906;
    v7 = "RunTimeDefaults.mm";
    v8 = 1024;
    v9 = 1751;
    v10 = 2080;
    v11 = "ForceSoftwareVolumeMode";
    v12 = 1024;
    v13 = v2 != 0;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Defaults key %s was defined to %u", &v6, 0x22u);
  }

  return v1;
}

uint64_t sub_289EC4()
{
  if ((atomic_load_explicit(&qword_6E8508, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6E8508))
  {
    byte_6E8500 = sub_289F38();
    __cxa_guard_release(&qword_6E8508);
  }

  return byte_6E8500;
}

BOOL sub_289F38()
{
  LOBYTE(v6) = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"EnableIDAMInput", @"com.apple.audio.virtualaudio", &v6);
  v1 = AppBooleanValue != 0;
  if (!v6)
  {
    return 0;
  }

  v2 = AppBooleanValue;
  v3 = *sub_5544(14);
  v4 = v3;
  if (v3 && os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315906;
    v7 = "RunTimeDefaults.mm";
    v8 = 1024;
    v9 = 1765;
    v10 = 2080;
    v11 = "EnableIDAMInput";
    v12 = 1024;
    v13 = v2 != 0;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Defaults key %s was defined to %u", &v6, 0x22u);
  }

  return v1;
}

BOOL sub_28A068()
{
  LOBYTE(v6) = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"EnableStreamLatencyLogs", @"com.apple.audio.virtualaudio", &v6);
  v1 = AppBooleanValue != 0;
  if (!v6)
  {
    return 0;
  }

  v2 = AppBooleanValue;
  v3 = *sub_5544(14);
  v4 = v3;
  if (v3 && os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315906;
    v7 = "RunTimeDefaults.mm";
    v8 = 1024;
    v9 = 1779;
    v10 = 2080;
    v11 = "EnableStreamLatencyLogs";
    v12 = 1024;
    v13 = v2 != 0;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Defaults key %s was defined to %u", &v6, 0x22u);
  }

  return v1;
}

BOOL sub_28A198()
{
  CFPreferencesAppSynchronize(@"com.apple.audio.virtualaudio");
  v7 = 0;
  v0 = sub_1235F4(@"PreferInEarOverCarKit", @"com.apple.coreaudio", &v7);
  if (v0)
  {
    v1 = v7 << 32;
  }

  else
  {
    v1 = 0;
  }

  if (v1)
  {
    v2 = v0;
  }

  else
  {
    v2 = 0;
  }

  if (v0)
  {
    v3 = *sub_5544(14);
    v4 = v3;
    if (v3 && os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = "Dis";
      v7 = 136316162;
      v8 = "RunTimeDefaults.mm";
      v9 = 1024;
      v10 = 1798;
      v12 = "PreferInEarOverCarKit";
      v11 = 2080;
      if (v2)
      {
        v5 = "En";
      }

      v13 = 1024;
      v14 = HIDWORD(v1);
      v15 = 2080;
      v16 = v5;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Defaults key %s was defined to %d. %sabling prioritizing in-ear status.", &v7, 0x2Cu);
    }
  }

  return v2;
}

void sub_28A2F0(id a1)
{
  sub_28700C(&stru_6BD0E8);
}

void sub_28A354(id a1)
{
  v10 = 0;
  if (caulk::product::get_device_class(a1) == 6)
  {
    CFPreferencesAppSynchronize(@"EnableNanoTetheredDemoMode");
    v1 = sub_4651FC(@"EnableNanoTetheredDemoMode", @"com.apple.demo-settings", &v10);
    if (v10 != 1)
    {
      return;
    }

    v2 = v1;
    v3 = *sub_5544(14);
    v4 = v3;
    if (!v3 || !os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    *buf = 136315906;
    v12 = "RunTimeDefaults.mm";
    v13 = 1024;
    v14 = 1824;
    v15 = 2080;
    v16 = "com.apple.demo-settings/EnableNanoTetheredDemoMode";
    v17 = 1024;
    LODWORD(v18) = v2;
    v5 = "%25s:%-5d Preference %s: %u.";
    v6 = v4;
    v7 = 34;
    goto LABEL_10;
  }

  CFPreferencesAppSynchronize(@"EnableTetheredDisplayPortMode");
  v8 = sub_4651FC(@"EnableTetheredDisplayPortMode", kCFPreferencesAnyApplication, &v10);
  if (v10 != 1)
  {
    return;
  }

  v2 = v8;
  v9 = *sub_5544(14);
  v4 = v9;
  if (v9 && os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136316162;
    v12 = "RunTimeDefaults.mm";
    v13 = 1024;
    v14 = 1835;
    v15 = 2112;
    v16 = kCFPreferencesAnyApplication;
    v17 = 2080;
    v18 = "EnableTetheredDisplayPortMode";
    v19 = 1024;
    v20 = v2;
    v5 = "%25s:%-5d Preference %@ / %s: %u.";
    v6 = v4;
    v7 = 44;
LABEL_10:
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, v5, buf, v7);
  }

LABEL_11:

  byte_6E8520 = v2;
}

_BYTE *sub_28A564(_BYTE *__dst)
{
  if ((atomic_load_explicit(&qword_6E8570, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6E8570))
  {
    sub_28A5EC();
    __cxa_guard_release(&qword_6E8570);
  }

  return sub_80534(__dst, &xmmword_6E8550);
}

void sub_28A5EC()
{
  sub_1123D0(&v1, @"AcousticIDFolder", 0);
  if (v1)
  {
    if (SHIBYTE(v3) < 0)
    {
      sub_54A0(&xmmword_6E8550, __p[0], __p[1]);
    }

    else
    {
      xmmword_6E8550 = *__p;
      qword_6E8560 = v3;
    }

    v0 = 1;
  }

  else
  {
    v0 = 0;
    LOBYTE(xmmword_6E8550) = 0;
  }

  byte_6E8568 = v0;
  if (SHIBYTE(v3) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_28A690(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_28A6AC()
{
  sub_1123D0(&v2, @"PersistentOutputPortUIDs", 0);
  if (v2)
  {
    sub_53E8(__p, "\n");
    sub_28C7C4(qword_6E8578, &v3, __p);
    if (v1 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    qword_6E8578[0] = 0;
    unk_6E8580 = 0;
    qword_6E8588 = 0;
  }

  if (SHIBYTE(v3.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v3.__r_.__value_.__l.__data_);
  }
}

void sub_28A748(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  _Unwind_Resume(exception_object);
}

void sub_28A77C()
{
  sub_1123D0(&v2, @"PersistentInputPortUIDs", 0);
  if (v2)
  {
    sub_53E8(__p, "\n");
    sub_28C7C4(qword_6E8598, &v3, __p);
    if (v1 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    qword_6E8598[0] = 0;
    unk_6E85A0 = 0;
    qword_6E85A8 = 0;
  }

  if (SHIBYTE(v3.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v3.__r_.__value_.__l.__data_);
  }
}

void sub_28A818(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_28A84C()
{
  LOBYTE(v6) = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"DefaultVADUsesTimeSync", @"com.apple.audio.virtualaudio", &v6);
  v1 = AppBooleanValue != 0;
  if (!v6)
  {
    return 0;
  }

  v2 = AppBooleanValue;
  v3 = *sub_5544(14);
  v4 = v3;
  if (v3 && os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315906;
    v7 = "RunTimeDefaults.mm";
    v8 = 1024;
    v9 = 2006;
    v10 = 2080;
    v11 = "DefaultVADUsesTimeSync";
    v12 = 1024;
    v13 = v2 != 0;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Defaults key %s was defined to %u", &v6, 0x22u);
  }

  return v1;
}

void sub_28A97C()
{
  if ((atomic_load_explicit(&qword_6E85D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6E85D0))
  {
    v0 = sub_28AA0C();
    dword_6E85C8 = v0;
    byte_6E85CC = BYTE4(v0);

    __cxa_guard_release(&qword_6E85D0);
  }
}

uint64_t sub_28AA0C()
{
  v4 = 0;
  if (!sub_1235F4(@"SpeakerVolumeTransferFunction", @"com.apple.audio.virtualaudio", &v4))
  {
    return 0;
  }

  v0 = v4;
  v1 = *sub_5544(14);
  v2 = v1;
  if (v1)
  {
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 136315906;
      v5 = "RunTimeDefaults.mm";
      v6 = 1024;
      v7 = 2018;
      v8 = 2080;
      v9 = "SpeakerVolumeTransferFunction";
      v10 = 2048;
      v11 = v0;
      _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Defaults key %s was defined to %li", &v4, 0x26u);
    }
  }

  return v0 | 0x100000000;
}

BOOL sub_28AB28()
{
  LOBYTE(v6) = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"ForceAdditiveRouting", @"com.apple.audio.virtualaudio", &v6);
  v1 = AppBooleanValue != 0;
  if (!v6)
  {
    return 0;
  }

  v2 = AppBooleanValue;
  v3 = *sub_5544(14);
  v4 = v3;
  if (v3 && os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315906;
    v7 = "RunTimeDefaults.mm";
    v8 = 1024;
    v9 = 2111;
    v10 = 2080;
    v11 = "ForceAdditiveRouting";
    v12 = 1024;
    v13 = v2 != 0;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Defaults key %s was defined to %u", &v6, 0x22u);
  }

  return v1;
}

BOOL sub_28AC58()
{
  LOBYTE(v6) = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"BypassAutoDRC", @"com.apple.audio.virtualaudio", &v6);
  v1 = AppBooleanValue != 0;
  if (!v6)
  {
    return 0;
  }

  v2 = AppBooleanValue;
  v3 = *sub_5544(14);
  v4 = v3;
  if (v3 && os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315906;
    v7 = "RunTimeDefaults.mm";
    v8 = 1024;
    v9 = 2127;
    v10 = 2080;
    v11 = "BypassAutoDRC";
    v12 = 1024;
    v13 = v2 != 0;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Defaults key %s was defined to %u", &v6, 0x22u);
  }

  return v1;
}

uint64_t sub_28AD88()
{
  if ((atomic_load_explicit(&qword_6E8600, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6E8600))
  {
    v1 = sub_28AE0C();
    LODWORD(qword_6E85F8) = v1;
    BYTE4(qword_6E85F8) = BYTE4(v1);
    __cxa_guard_release(&qword_6E8600);
  }

  return qword_6E85F8;
}

uint64_t sub_28AE0C()
{
  v4 = 0;
  if (!sub_1235F4(@"AdaptiveVolumeHIDStreamingRateMs", @"com.apple.audio.virtualaudio", &v4))
  {
    return 0;
  }

  v0 = v4;
  v1 = *sub_5544(14);
  v2 = v1;
  if (v1)
  {
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 136315906;
      v5 = "RunTimeDefaults.mm";
      v6 = 1024;
      v7 = 2144;
      v8 = 2080;
      v9 = "AdaptiveVolumeHIDStreamingRateMs";
      v10 = 1024;
      v11 = v0;
      _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Defaults key %s was defined to %u", &v4, 0x22u);
    }
  }

  return v0 | 0x100000000;
}

BOOL sub_28AF20()
{
  LOBYTE(v6) = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"LogTimeTaken", @"com.apple.audio.virtualaudio", &v6);
  v1 = AppBooleanValue != 0;
  if (!v6)
  {
    return 0;
  }

  v2 = AppBooleanValue;
  v3 = *sub_5544(14);
  v4 = v3;
  if (v3 && os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315906;
    v7 = "RunTimeDefaults.mm";
    v8 = 1024;
    v9 = 2157;
    v10 = 2080;
    v11 = "LogTimeTaken";
    v12 = 1024;
    v13 = v2 != 0;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Defaults key %s was defined to %u", &v6, 0x22u);
  }

  return v1;
}

BOOL sub_28B050()
{
  LOBYTE(v6) = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"cinematic_capture_debug", @"com.apple.coreaudio", &v6);
  v1 = AppBooleanValue != 0;
  if (!v6)
  {
    return 0;
  }

  v2 = AppBooleanValue;
  v3 = *sub_5544(14);
  v4 = v3;
  if (v3 && os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136316162;
    v7 = "RunTimeDefaults.mm";
    v8 = 1024;
    v9 = 2213;
    v10 = 2080;
    v11 = "cinematic_capture_debug";
    v12 = 2080;
    v13 = "com.apple.coreaudio";
    v14 = 1024;
    v15 = v2 != 0;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Defaults key %s (domain %s) was defined to %u", &v6, 0x2Cu);
  }

  return v1;
}

BOOL sub_28B190()
{
  LOBYTE(v6) = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"EnableHPMicInjection", @"com.apple.audio.virtualaudio", &v6);
  v1 = AppBooleanValue != 0;
  if (!v6)
  {
    return 0;
  }

  v2 = AppBooleanValue;
  v3 = *sub_5544(14);
  v4 = v3;
  if (v3 && os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315906;
    v7 = "RunTimeDefaults.mm";
    v8 = 1024;
    v9 = 2236;
    v10 = 2080;
    v11 = "EnableHPMicInjection";
    v12 = 1024;
    v13 = v2 != 0;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Defaults key %s was defined to %u", &v6, 0x22u);
  }

  return v1;
}

uint64_t sub_28B2C0()
{
  v0 = [NSUserDefaults alloc];
  v1 = sub_28B4B0("com.apple.audio.virtualaudio");
  v2 = [v0 initWithSuiteName:v1];

  v3 = sub_28B4B0("AlwaysUseDuplexMulti");
  v4 = [v2 BOOLForKey:v3];

  v5 = *sub_5544(21);
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      if (v4)
      {
        v8 = "true";
      }

      else
      {
        v8 = "false";
      }

      sub_53E8(__p, v8);
      if (v12 >= 0)
      {
        v9 = __p;
      }

      else
      {
        v9 = __p[0];
      }

      *buf = 136316162;
      v14 = "RunTimeDefaults.mm";
      v15 = 1024;
      v16 = 2292;
      v17 = 2080;
      v18 = "com.apple.audio.virtualaudio";
      v19 = 2080;
      v20 = "AlwaysUseDuplexMulti";
      v21 = 2080;
      v22 = v9;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Defaults %s/%s defined to %s", buf, 0x30u);
      if (v12 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  return v4 | 0x100;
}

__CFString *sub_28B4B0(const char *a1)
{
  v2 = strlen(a1);
  if (a1)
  {
    v3 = CFStringCreateWithBytes(0, a1, v2, 0x8000100u, 0);
    if (!v3)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
    }
  }

  else
  {
    v3 = 0;
  }

  v5 = v3;
  v6 = v5;
  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

void sub_28B56C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_20B45C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_28B594(uint64_t result, int a2)
{
  if (result > 1920167272)
  {
    if (result > 1920364386)
    {
      if (result == 1920364387)
      {
        return result;
      }

      if (result == 1936090482)
      {
        if (a2)
        {
          return 1936090482;
        }

        else
        {
          return 1919115628;
        }
      }
    }

    else if (result == 1920167273 || result == 1920167288)
    {
      return 1634562153;
    }

    return 1918989668;
  }

  if (result > 1919312241)
  {
    if (result == 1919312242)
    {
      return result;
    }

    v2 = 1919708275;
  }

  else
  {
    if (result == 1919115628)
    {
      return result;
    }

    v2 = 1919183219;
  }

  if (result != v2)
  {
    return 1918989668;
  }

  return result;
}

uint64_t sub_28B670(unsigned int a1)
{
  if (a1 < 6)
  {
    return *&aNupephpehvpeps[4 * a1];
  }

  v3 = sub_5544(18);
  v4 = sub_5544(29);
  v5 = 0;
  *v10 = 0x100000002;
  v6 = *(v3 + 8);
  while (1)
  {
    v7 = *&v10[v5];
    if (((v6 & v7) != 0) != ((*(v4 + 8) & v7) != 0))
    {
      break;
    }

    v5 += 4;
    if (v5 == 8)
    {
      goto LABEL_9;
    }
  }

  if ((v6 & v7) == 0)
  {
    v3 = v4;
  }

LABEL_9:
  v2 = 1701868910;
  v8 = *v3;
  if (v8 && os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 136315650;
    *&v10[4] = "BluetoothUtilities.cpp";
    v11 = 1024;
    v12 = 105;
    v13 = 1024;
    v14 = a1;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Unknown Bluetooth device category: %u.", v10, 0x18u);
  }

  return v2;
}

uint64_t *sub_28B7C0(uint64_t a1, int a2, int a3)
{
  v6 = sub_108CA8(a2);
  *a1 = a2;
  *(a1 + 4) = 1885544823;
  *(a1 + 8) = a3;
  *(a1 + 12) = 1;
  result = sub_44E44((a1 + 16), &unk_6E8638);
  v8 = 0;
  if (a2 <= 1886152040)
  {
    if (a2 <= 1885892673)
    {
      if (a2 != 1885418100)
      {
        v9 = 1885890164;
        goto LABEL_14;
      }

      goto LABEL_15;
    }

    if (a2 == 1885892674)
    {
      goto LABEL_16;
    }

    v10 = 1885892706;
LABEL_10:
    if (a2 == v10)
    {
      goto LABEL_16;
    }

    goto LABEL_20;
  }

  if (a2 <= 1886152051)
  {
    if (a2 == 1886152041)
    {
      goto LABEL_15;
    }

    v10 = 1886152047;
    goto LABEL_10;
  }

  if (a2 != 1886152052)
  {
    v9 = 1886216820;
LABEL_14:
    if (a2 == v9)
    {
      goto LABEL_15;
    }

LABEL_20:
    v12 = sub_5544(14);
    v13 = *v12;
    if (*v12 && os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
    {
      sub_22170(__p, a2);
      v14 = v17 >= 0 ? __p : __p[0];
      *buf = 136315650;
      v19 = "BluetoothUtilities.cpp";
      v20 = 1024;
      v21 = 150;
      v22 = 2080;
      v23 = v14;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareUnsupportedOperationError): Unsupported port type %s", buf, 0x1Cu);
      if (v17 < 0)
      {
        operator delete(__p[0]);
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 1970171760;
  }

LABEL_15:
  v8 = 1;
LABEL_16:
  if (v6)
  {
    v11 = 1222;
  }

  else
  {
    v11 = 1238;
  }

  *(a1 + 40) = v11 | v8 | *(a1 + 40) & 0xF800;
  return result;
}

uint64_t sub_28BA3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_165A98(&v9, (a1 + 80), "", 89);
  v7 = (*(*v9 + 64))(v9, a2, a3, a4);
  if (v10)
  {
    sub_1A8C0(v10);
  }

  return v7;
}

void sub_28BAD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_1A8C0(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_28BAF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_165A98(&v12, (a1 + 80), "", 66);
  (*(*v12 + 48))(v12, a2, a3, a4, a5, a6);
  v11 = v13;
  if (v13)
  {

    sub_1A8C0(v11);
  }
}

void sub_28BBC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_1A8C0(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_28BBD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_165A98(&v9, (a1 + 80), "", 48);
  v7 = (*(*v9 + 32))(v9, a2, a3, a4);
  if (v10)
  {
    sub_1A8C0(v10);
  }

  return v7;
}

void sub_28BC74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_1A8C0(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_28BC8C(uint64_t a1, uint64_t a2)
{
  sub_165A98(&v5, (a1 + 80), "", 41);
  v3 = (*(*v5 + 24))(v5, a2);
  if (v6)
  {
    sub_1A8C0(v6);
  }

  return v3;
}

void sub_28BD10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_1A8C0(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_28BD28(void *a1)
{
  sub_28BD60(a1);

  operator delete();
}

uint64_t sub_28BD60(void *a1)
{
  *a1 = off_6D38E8;
  v2 = a1[11];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return sub_13BFA8(a1);
}

void sub_28BDE8(std::__shared_weak_count *a1)
{
  a1->__vftable = off_6D38B0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_28BE5C()
{
  sub_1DFA48(v0);
  v4 = 257;
  v5 = 257;
  if ((v1 & 1) == 0)
  {
    v1 = 1;
  }

  v0[4] = 4;
  *&__src = 0x300000002;
  sub_1F8148(v3, &__src, &__src + 8, 2uLL);
  LODWORD(__src) = 3;
  sub_1F8148(v2, &__src, &__src + 4, 1uLL);
  v9 = 16;
  v10 = 1;
  v7[99] = 16;
  v8 = 1;
  sub_1DFEA0(v6, 0, 0);
  sub_30F70C(&__src, 26);
  if (v13 == 1)
  {
    if (SHIBYTE(v12) < 0)
    {
      operator delete(__p);
    }

    __p = __src;
    v12 = v15;
  }

  else
  {
    __p = __src;
    v12 = v15;
    v13 = 1;
  }

  sub_18B160(v0);
  sub_1E0054(v7);
  sub_477A0(v6[1]);
  if (v3[0])
  {
    v3[1] = v3[0];
    operator delete(v3[0]);
  }

  if (v2[0])
  {
    v2[1] = v2[0];
    operator delete(v2[0]);
  }
}

uint64_t sub_28C034(uint64_t a1, uint64_t *a2)
{
  v5 = *a2;
  v2 = *(a2 + 2);
  if (*(a1 + 88))
  {
    v3 = 1768845428;
  }

  else
  {
    v3 = 1869968496;
  }

  HIDWORD(v5) = v3;
  v6 = v2;
  if (v2)
  {
    v2 = v2 + *(a1 + 92) - 1;
  }

  v6 = v2;
  return (*(**(a1 + 80) + 176))(*(a1 + 80), &v5);
}

uint64_t sub_28C0BC(uint64_t a1, uint64_t *a2)
{
  v5 = *a2;
  v2 = *(a2 + 2);
  if (*(a1 + 88))
  {
    v3 = 1768845428;
  }

  else
  {
    v3 = 1869968496;
  }

  HIDWORD(v5) = v3;
  v6 = v2;
  if (v2)
  {
    v2 = v2 + *(a1 + 92) - 1;
  }

  v6 = v2;
  return (*(**(a1 + 80) + 168))(*(a1 + 80), &v5);
}

uint64_t sub_28C144(uint64_t a1, uint64_t *a2)
{
  v5 = *a2;
  v2 = *(a2 + 2);
  if (*(a1 + 88))
  {
    v3 = 1768845428;
  }

  else
  {
    v3 = 1869968496;
  }

  HIDWORD(v5) = v3;
  v6 = v2;
  if (v2)
  {
    v2 = v2 + *(a1 + 92) - 1;
  }

  v6 = v2;
  return (*(**(a1 + 80) + 160))(*(a1 + 80), &v5);
}

uint64_t sub_28C200(uint64_t a1, int *a2)
{
  v2 = *a2;
  if (*a2 <= 1819173228)
  {
    if (v2 > 1818455661)
    {
      v3 = v2 == 1818455662;
      v4 = 1819107691;
    }

    else
    {
      v3 = v2 == 1818452846;
      v4 = 1818454126;
    }
  }

  else if (v2 <= 1935894637)
  {
    v3 = v2 == 1819173229;
    v4 = 1819569763;
  }

  else
  {
    v3 = v2 == 1935894638 || v2 == 1935960434;
    v4 = 1952805485;
  }

  if (v3 || v2 == v4)
  {
    return 0;
  }

  else
  {
    return sub_201D4(a1, a2);
  }
}

uint64_t sub_28C328(uint64_t a1)
{
  v7 = 0x676C6F626C6E616DLL;
  v8 = 0;
  theString = 0;
  v5 = 8;
  (*(*a1 + 72))(a1, &v7, 0, 0, &v5, &theString);
  buffer[0] = 0;
  if (theString)
  {
    usedBufLen = 0;
    v10.length = CFStringGetLength(theString);
    v10.location = 0;
    CFStringGetBytes(theString, v10, 0x8000100u, 0, 0, buffer, 255, &usedBufLen);
    buffer[usedBufLen] = 0;
    CFRelease(theString);
  }

  v2 = "Output";
  if (*(a1 + 88))
  {
    v2 = "Input";
  }

  return printf("AudioObjectID:\t0x%X\n\tClass:\t\t%s\n\tName:\t\t%s\n\tDirection:\t%s\n\tChannels:\t%u\n", *(a1 + 8), "Audio Stream", buffer, v2, *(*(a1 + 104) + 44));
}

void sub_28C47C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x28C3A8);
  }

  _Unwind_Resume(a1);
}

void sub_28C494(void *a1)
{
  sub_140804(a1);

  operator delete();
}

const void **sub_28C4D0(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t sub_28C504(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  sub_63250(&v21);
  v6 = *(a2 + 8);
  v9 = *(v6 + 16);
  v7 = v6 + 16;
  v8 = v9;
  v10 = *(v7 + 23);
  if (v10 >= 0)
  {
    v11 = v7;
  }

  else
  {
    v11 = v8;
  }

  if (v10 >= 0)
  {
    v12 = *(v7 + 23);
  }

  else
  {
    v12 = *(v7 + 8);
  }

  sub_22564(&v21, v11, v12);
  v13 = *(a2 + 8);
  while (1)
  {
    v13 = *(v13 + 8);
    if (v13 == a2)
    {
      break;
    }

    v14 = *(a3 + 23);
    if (v14 >= 0)
    {
      v15 = a3;
    }

    else
    {
      v15 = *a3;
    }

    if (v14 >= 0)
    {
      v16 = *(a3 + 23);
    }

    else
    {
      v16 = *(a3 + 8);
    }

    sub_22564(&v21, v15, v16);
    v17 = *(v13 + 39);
    if (v17 >= 0)
    {
      v18 = v13 + 16;
    }

    else
    {
      v18 = *(v13 + 16);
    }

    if (v17 >= 0)
    {
      v19 = *(v13 + 39);
    }

    else
    {
      v19 = *(v13 + 24);
    }

    sub_22564(&v21, v18, v19);
  }

  sub_22B30(a1, &v22);
  if (v24 < 0)
  {
    operator delete(v23[7].__locale_);
  }

  std::locale::~locale(v23);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_28C6D8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1DDE94(va);
  _Unwind_Resume(a1);
}

void *sub_28C6F0(void *result, unsigned int *a2, unsigned int *a3)
{
  *result = result;
  result[1] = result;
  result[2] = 0;
  if (a2 != a3)
  {
    sub_22170(&v3, *a2);
    operator new();
  }

  return result;
}

void sub_28C7C4(size_t *a1, std::string *__str, char *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  size = HIBYTE(__str->__r_.__value_.__r.__words[2]);
  if ((size & 0x80u) == 0)
  {
    v7 = __str;
  }

  else
  {
    v7 = __str->__r_.__value_.__r.__words[0];
  }

  if ((size & 0x80u) != 0)
  {
    size = __str->__r_.__value_.__l.__size_;
  }

  v8 = a3[23];
  if (v8 >= 0)
  {
    v9 = a3;
  }

  else
  {
    v9 = *a3;
  }

  if (v8 >= 0)
  {
    v10 = a3[23];
  }

  else
  {
    v10 = *(a3 + 1);
  }

  if (v10)
  {
    if (size >= v10)
    {
      v27 = v7 + size;
      v28 = *v9;
      v29 = v7;
      do
      {
        v30 = size - v10;
        if (v30 == -1)
        {
          break;
        }

        v31 = memchr(v29, v28, v30 + 1);
        if (!v31)
        {
          break;
        }

        v32 = v31;
        if (!memcmp(v31, v9, v10))
        {
          v11 = 0;
          if (v32 != v27)
          {
            v14 = v32 - v7;
            if (v14 != -1)
            {
              goto LABEL_25;
            }
          }

          goto LABEL_15;
        }

        v29 = (v32 + 1);
        size = v27 - (v32 + 1);
      }

      while (size >= v10);
    }

    v11 = 0;
  }

  else
  {
    v14 = 0;
LABEL_25:
    v11 = 0;
    do
    {
      std::string::basic_string(&v34, __str, v11, v14 - v11, &v33);
      sub_28CA74(a1, &v34);
      if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v34.__r_.__value_.__l.__data_);
      }

      v15 = a3[23];
      v16 = HIBYTE(__str->__r_.__value_.__r.__words[2]);
      if ((v16 & 0x80u) == 0)
      {
        v17 = __str;
      }

      else
      {
        v17 = __str->__r_.__value_.__r.__words[0];
      }

      if ((v16 & 0x80u) != 0)
      {
        v16 = __str->__r_.__value_.__l.__size_;
      }

      v18 = v15 >= 0 ? a3[23] : *(a3 + 1);
      v11 = v18 + v14;
      v19 = v15 >= 0 ? a3 : *a3;
      v20 = v16 - v11;
      if (v16 < v11)
      {
        break;
      }

      v14 += v18;
      if (v18)
      {
        if (v20 >= v18)
        {
          v21 = v17 + v16;
          v22 = v17 + v11;
          v23 = *v19;
          while (1)
          {
            v24 = v20 - v18;
            if (v24 == -1)
            {
              break;
            }

            v25 = memchr(v22, v23, v24 + 1);
            if (!v25)
            {
              break;
            }

            v26 = v25;
            if (!memcmp(v25, v19, v18))
            {
              if (v26 == v21)
              {
                goto LABEL_15;
              }

              v14 = v26 - v17;
              goto LABEL_50;
            }

            v22 = v26 + 1;
            v20 = v21 - (v26 + 1);
            if (v20 < v18)
            {
              goto LABEL_15;
            }
          }
        }

        break;
      }

LABEL_50:
      ;
    }

    while (v14 != -1);
  }

LABEL_15:
  std::string::basic_string(&v34, __str, v11, 0xFFFFFFFFFFFFFFFFLL, &v33);
  v12 = HIBYTE(v34.__r_.__value_.__r.__words[2]);
  v13 = HIBYTE(v34.__r_.__value_.__r.__words[2]);
  if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v12 = v34.__r_.__value_.__l.__size_;
  }

  if (v12)
  {
    std::string::basic_string(&v33, __str, v11, 0xFFFFFFFFFFFFFFFFLL, &v35);
    sub_28CA74(a1, &v33);
    if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v33.__r_.__value_.__l.__data_);
    }

    v13 = HIBYTE(v34.__r_.__value_.__r.__words[2]);
  }

  if (v13 < 0)
  {
    operator delete(v34.__r_.__value_.__l.__data_);
  }
}

void sub_28CA24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  sub_11C50(&a16);
  _Unwind_Resume(a1);
}

size_t *sub_28CA74(size_t *result, __int128 *a2)
{
  v2 = result;
  v3 = result[1];
  v4 = result[2];
  if (v3 >= v4)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *result) >> 3);
    v8 = v7 + 1;
    if (v7 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_189A00();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *result) >> 3);
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x555555555555555)
    {
      v10 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v10 = v8;
    }

    v17[4] = v2;
    if (v10)
    {
      sub_1D8BB8(v10);
    }

    v11 = 24 * v7;
    v12 = *a2;
    *(v11 + 16) = *(a2 + 2);
    *v11 = v12;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v6 = 24 * v7 + 24;
    v13 = v2[1] - *v2;
    v14 = v11 - v13;
    memcpy((v11 - v13), *v2, v13);
    v15 = *v2;
    *v2 = v14;
    v2[1] = v6;
    v16 = v2[2];
    v2[2] = 0;
    v17[2] = v15;
    v17[3] = v16;
    v17[0] = v15;
    v17[1] = v15;
    result = sub_12574(v17);
  }

  else
  {
    v5 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v5;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v6 = v3 + 24;
  }

  v2[1] = v6;
  return result;
}

_BYTE *sub_28CBA0(_BYTE *a1, unsigned int a2)
{
  if (a2)
  {
    return sub_22170(a1, a2);
  }

  else
  {
    return sub_53E8(a1, "ok");
  }
}

uint64_t sub_28CBB4(_BYTE *a1, unsigned int *a2)
{
  sub_63250(&v30);
  v3 = *(&v30 + *(v30 - 3) + 8);
  sub_22564(&v30, "[", 1);
  *(&v30 + *(v30 - 3) + 8) |= v3 | 8;
  sub_22564(&v30, "tag: ", 5);
  v4 = *a2;
  v5 = std::ostream::operator<<();
  sub_22564(v5, "; ", 2);
  sub_22564(&v30, "bitmap: ", 8);
  v6 = a2[1];
  v7 = std::ostream::operator<<();
  sub_22564(v7, "; ", 2);
  *(&v30 + *(v30 - 3) + 8) |= v3;
  sub_22564(&v30, "descs: [", 8);
  if (a2[2])
  {
    v8 = 0;
    v10 = (a2 + 7);
    do
    {
      sub_63250(&v34);
      v11 = *(&v36[-1].__locale_ + *(v34 - 3));
      sub_22564(&v34, "[", 1);
      sub_22564(&v34, "label: ", 7);
      v12 = *(v10 - 4);
      v13 = std::ostream::operator<<();
      sub_22564(v13, "; ", 2);
      *(&v36[-1].__locale_ + *(v34 - 3)) |= v11 | 8;
      sub_22564(&v34, "flags: ", 7);
      v14 = *(v10 - 3);
      v15 = std::ostream::operator<<();
      sub_22564(v15, "; ", 2);
      *(&v36[-1].__locale_ + *(v34 - 3)) |= v11;
      sub_22564(&v34, "coords: (", 9);
      v16 = *(v10 - 2);
      v17 = std::ostream::operator<<();
      sub_22564(v17, ",", 1);
      v18 = *(v10 - 1);
      v19 = std::ostream::operator<<();
      sub_22564(v19, ",", 1);
      v20 = *v10;
      v21 = std::ostream::operator<<();
      sub_22564(v21, ")", 1);
      sub_22564(&v34, "]", 1);
      sub_22B30(v28, &v35);
      v34 = v27;
      *(&v34 + *(v27 - 3)) = v9;
      if (v37 < 0)
      {
        operator delete(v36[7].__locale_);
      }

      std::locale::~locale(v36);
      std::ostream::~ostream();
      std::ios::~ios();
      if ((v29 & 0x80u) == 0)
      {
        v22 = v28;
      }

      else
      {
        v22 = v28[0];
      }

      if ((v29 & 0x80u) == 0)
      {
        v23 = v29;
      }

      else
      {
        v23 = v28[1];
      }

      sub_22564(&v30, v22, v23);
      if (v29 < 0)
      {
        operator delete(v28[0]);
      }

      v24 = a2[2];
      if (v8 != v24 - 1)
      {
        sub_22564(&v30, "; ", 2);
        v24 = a2[2];
      }

      ++v8;
      v10 += 5;
    }

    while (v8 < v24);
  }

  sub_22564(&v30, "]; ", 3);
  sub_22564(&v30, "]", 1);
  sub_22B30(a1, &v31);
  if (v33 < 0)
  {
    operator delete(v32[7].__locale_);
  }

  std::locale::~locale(v32);
  std::ostream::~ostream();
  return std::ios::~ios();
}

BOOL sub_28D154(io_registry_entry_t a1, char *a2)
{
  sub_53E8(__p, a2);
  if ((v19 & 0x80u) == 0)
  {
    v3 = __p;
  }

  else
  {
    v3 = *__p;
  }

  if (v3)
  {
    if ((v19 & 0x80u) == 0)
    {
      v4 = v19;
    }

    else
    {
      v4 = *&__p[8];
    }

    v3 = CFStringCreateWithBytes(0, v3, v4, 0x8000100u, 0);
    cf = v3;
    if (!v3)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
    }

    if (a1)
    {
      goto LABEL_10;
    }
  }

  else
  {
    cf = 0;
    if (a1)
    {
LABEL_10:
      CFProperty = IORegistryEntryCreateCFProperty(a1, v3, 0, 0);
      v3 = cf;
      goto LABEL_13;
    }
  }

  CFProperty = 0;
LABEL_13:
  v16 = CFProperty;
  if (v3)
  {
    CFRelease(v3);
  }

  if (v19 < 0)
  {
    operator delete(*__p);
  }

  v6 = v16;
  if (!v16)
  {
    return 0;
  }

  v7 = CFGetTypeID(v16);
  if (v7 == CFDataGetTypeID())
  {
    sub_28D4E0(&cf, &v16);
    if (!cf)
    {
      v11 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v11, "Could not construct");
    }

    if (CFDataGetLength(cf) != 4)
    {
      v12 = sub_5544(14);
      v13 = *v12;
      if (*v12 && os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
      {
        *__p = 136315394;
        *&__p[4] = "StandardUtilities.cpp";
        *&__p[12] = 1024;
        *&__p[14] = 1164;
        _os_log_impl(&dword_0, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", __p, 0x12u);
      }

      v14 = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(v14, "Precondition failure.");
    }

    if (!cf)
    {
      v15 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v15, "Could not construct");
    }

    v8 = *CFDataGetBytePtr(cf) != 0;
    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    v8 = 0;
  }

  CFRelease(v6);
  return v8;
}

void sub_28D420(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  sub_280C34(&a10);
  sub_1D5FE0(&a9);
  _Unwind_Resume(a1);
}

const void *sub_28D4E0(void *a1, const void **a2)
{
  result = *a2;
  if (!*a2)
  {
    goto LABEL_6;
  }

  v5 = CFGetTypeID(result);
  result = CFDataGetTypeID();
  if (v5 != result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1DB154(exception);
  }

  v6 = *a2;
  if (v6)
  {
    CFRetain(v6);
    *a1 = v6;
    v7 = CFGetTypeID(v6);
    result = CFDataGetTypeID();
    if (v7 != result)
    {
      v8 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v8, "Could not construct");
    }
  }

  else
  {
LABEL_6:
    *a1 = 0;
  }

  return result;
}

void sub_28D5C4(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  sub_28D604(v1);
  _Unwind_Resume(a1);
}

const void **sub_28D604(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t sub_28D638()
{
  sub_28E448(&v28);
  v0 = v28;
  v1 = v29;
  if (v28 == v29)
  {
    v7 = sub_5544(14);
    if (*(v7 + 8))
    {
      v8 = *v7;
      if (*v7)
      {
        if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315906;
          v31 = "StandardUtilities.cpp";
          v32 = 1024;
          v33 = 1136;
          v34 = 2080;
          v35 = "IODeviceTree:/product/audio";
          v36 = 2080;
          v37 = "speaker-cpms-bgd_inst";
          v4 = "%25s:%-5d EDT entry is empty for EDT path '%s'; key '%s'";
          v5 = v8;
          v6 = 38;
          goto LABEL_10;
        }
      }
    }
  }

  else
  {
    v2 = sub_5544(14);
    if (*(v2 + 8))
    {
      v3 = *v2;
      if (*v2)
      {
        if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315650;
          v31 = "StandardUtilities.cpp";
          v32 = 1024;
          v33 = 1133;
          v34 = 2080;
          v35 = "speaker-cpms-bgd_inst";
          v4 = "%25s:%-5d EDT entry T::key %s returned valid";
          v5 = v3;
          v6 = 28;
LABEL_10:
          _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEBUG, v4, buf, v6);
        }
      }
    }
  }

  if (v0)
  {
    operator delete(v0);
  }

  if (v0 != v1)
  {
    return 1;
  }

  sub_28DFF0(&v28);
  v9 = v28;
  v10 = v29;
  if (v28 == v29)
  {
    v16 = sub_5544(14);
    if (*(v16 + 8))
    {
      v17 = *v16;
      if (*v16)
      {
        if (os_log_type_enabled(*v16, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315906;
          v31 = "StandardUtilities.cpp";
          v32 = 1024;
          v33 = 1136;
          v34 = 2080;
          v35 = "IODeviceTree:/product/audio";
          v36 = 2080;
          v37 = "speaker-cpms-bgd_100ms";
          v13 = "%25s:%-5d EDT entry is empty for EDT path '%s'; key '%s'";
          v14 = v17;
          v15 = 38;
          goto LABEL_23;
        }
      }
    }
  }

  else
  {
    v11 = sub_5544(14);
    if (*(v11 + 8))
    {
      v12 = *v11;
      if (*v11)
      {
        if (os_log_type_enabled(*v11, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315650;
          v31 = "StandardUtilities.cpp";
          v32 = 1024;
          v33 = 1133;
          v34 = 2080;
          v35 = "speaker-cpms-bgd_100ms";
          v13 = "%25s:%-5d EDT entry T::key %s returned valid";
          v14 = v12;
          v15 = 28;
LABEL_23:
          _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEBUG, v13, buf, v15);
        }
      }
    }
  }

  if (v9)
  {
    operator delete(v9);
  }

  if (v9 != v10)
  {
    return 1;
  }

  sub_28DAB0(&v28);
  v20 = v28;
  v18 = v28 != v29;
  if (v28 == v29)
  {
    v26 = sub_5544(14);
    if (*(v26 + 8))
    {
      v27 = *v26;
      if (*v26)
      {
        if (os_log_type_enabled(*v26, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315906;
          v31 = "StandardUtilities.cpp";
          v32 = 1024;
          v33 = 1136;
          v34 = 2080;
          v35 = "IODeviceTree:/product/audio";
          v36 = 2080;
          v37 = "speaker-cpms-bgd_1s";
          v23 = "%25s:%-5d EDT entry is empty for EDT path '%s'; key '%s'";
          v24 = v27;
          v25 = 38;
          goto LABEL_38;
        }
      }
    }
  }

  else
  {
    v21 = sub_5544(14);
    if (*(v21 + 8))
    {
      v22 = *v21;
      if (*v21)
      {
        if (os_log_type_enabled(*v21, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315650;
          v31 = "StandardUtilities.cpp";
          v32 = 1024;
          v33 = 1133;
          v34 = 2080;
          v35 = "speaker-cpms-bgd_1s";
          v23 = "%25s:%-5d EDT entry T::key %s returned valid";
          v24 = v22;
          v25 = 28;
LABEL_38:
          _os_log_impl(&dword_0, v24, OS_LOG_TYPE_DEBUG, v23, buf, v25);
        }
      }
    }
  }

  if (v20)
  {
    operator delete(v20);
  }

  return v18;
}

void sub_28DA70(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_28DAB0(void *a1)
{
  v2 = IORegistryEntryFromPath(kIOMainPortDefault, "IODeviceTree:/product/audio");
  if (!v2)
  {
    v8 = sub_5544(14);
    v9 = *v8;
    if (*v8 && os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
    {
      *v14 = 136315650;
      *&v14[4] = "EDTUtilsImpl.h";
      v15 = 1024;
      v16 = 46;
      v17 = 2080;
      v18 = "IODeviceTree:/product/audio";
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): IORegistryEntryFromPath %s returned MACH_PORT_NULL (i.e. failed).", v14, 0x1Cu);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "IORegistryEntryFromPath %s returned MACH_PORT_NULL (i.e. failed).");
  }

  v3 = CFStringCreateWithBytes(0, "speaker-cpms-bgd_1s", 19, 0x8000100u, 0);
  *v14 = v3;
  if (!v3)
  {
    v11 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v11, "Could not construct");
  }

  CFProperty = IORegistryEntryCreateCFProperty(v2, v3, kCFAllocatorDefault, 0);
  cf = CFProperty;
  if (!CFProperty)
  {
    goto LABEL_11;
  }

  v5 = CFGetTypeID(CFProperty);
  if (v5 != CFDataGetTypeID())
  {
    v12 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v12, "Could not construct");
  }

  if (!cf)
  {
LABEL_11:
    v7 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v7, "Could not construct");
  }

  sub_28DF08(a1, cf);
  CFRelease(cf);
  if (*v14)
  {
    CFRelease(*v14);
  }

  return IOObjectRelease(v2);
}

CFIndex sub_28DF08(void *a1, const void *a2)
{
  TypeID = CFDataGetTypeID();
  if (TypeID != CFGetTypeID(a2))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1DAEBC(exception);
  }

  CFDataGetBytePtr(a2);
  result = CFDataGetLength(a2);
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  if (result)
  {
    sub_EF334(a1, result);
  }

  return result;
}

uint64_t sub_28DFF0(void *a1)
{
  v2 = IORegistryEntryFromPath(kIOMainPortDefault, "IODeviceTree:/product/audio");
  if (!v2)
  {
    v8 = sub_5544(14);
    v9 = *v8;
    if (*v8 && os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
    {
      *v14 = 136315650;
      *&v14[4] = "EDTUtilsImpl.h";
      v15 = 1024;
      v16 = 46;
      v17 = 2080;
      v18 = "IODeviceTree:/product/audio";
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): IORegistryEntryFromPath %s returned MACH_PORT_NULL (i.e. failed).", v14, 0x1Cu);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "IORegistryEntryFromPath %s returned MACH_PORT_NULL (i.e. failed).");
  }

  v3 = CFStringCreateWithBytes(0, "speaker-cpms-bgd_100ms", 22, 0x8000100u, 0);
  *v14 = v3;
  if (!v3)
  {
    v11 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v11, "Could not construct");
  }

  CFProperty = IORegistryEntryCreateCFProperty(v2, v3, kCFAllocatorDefault, 0);
  cf = CFProperty;
  if (!CFProperty)
  {
    goto LABEL_11;
  }

  v5 = CFGetTypeID(CFProperty);
  if (v5 != CFDataGetTypeID())
  {
    v12 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v12, "Could not construct");
  }

  if (!cf)
  {
LABEL_11:
    v7 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v7, "Could not construct");
  }

  sub_28DF08(a1, cf);
  CFRelease(cf);
  if (*v14)
  {
    CFRelease(*v14);
  }

  return IOObjectRelease(v2);
}

uint64_t sub_28E448(void *a1)
{
  v2 = IORegistryEntryFromPath(kIOMainPortDefault, "IODeviceTree:/product/audio");
  if (!v2)
  {
    v8 = sub_5544(14);
    v9 = *v8;
    if (*v8 && os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
    {
      *v14 = 136315650;
      *&v14[4] = "EDTUtilsImpl.h";
      v15 = 1024;
      v16 = 46;
      v17 = 2080;
      v18 = "IODeviceTree:/product/audio";
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): IORegistryEntryFromPath %s returned MACH_PORT_NULL (i.e. failed).", v14, 0x1Cu);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "IORegistryEntryFromPath %s returned MACH_PORT_NULL (i.e. failed).");
  }

  v3 = CFStringCreateWithBytes(0, "speaker-cpms-bgd_inst", 21, 0x8000100u, 0);
  *v14 = v3;
  if (!v3)
  {
    v11 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v11, "Could not construct");
  }

  CFProperty = IORegistryEntryCreateCFProperty(v2, v3, kCFAllocatorDefault, 0);
  cf = CFProperty;
  if (!CFProperty)
  {
    goto LABEL_11;
  }

  v5 = CFGetTypeID(CFProperty);
  if (v5 != CFDataGetTypeID())
  {
    v12 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v12, "Could not construct");
  }

  if (!cf)
  {
LABEL_11:
    v7 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v7, "Could not construct");
  }

  sub_28DF08(a1, cf);
  CFRelease(cf);
  if (*v14)
  {
    CFRelease(*v14);
  }

  return IOObjectRelease(v2);
}

void sub_28E8A0(const __CFString *a1, void **a2, uint64_t a3)
{
  if (*a2)
  {
    v4 = *(a2 + 1) == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    sub_125D8(v11, a1);
    __dst[0] = *a2;
    v9 = 0;
    v10 = 0;
    v8 = 0;
    sub_4625C(&v8, __dst, &__dst[1], 2uLL);
    if (SHIBYTE(v12) < 0)
    {
      sub_54A0(__dst, v11[0], v11[1]);
    }

    else
    {
      *__dst = *v11;
      v14 = v12;
    }

    __p[0] = 0;
    __p[1] = 0;
    v16 = 0;
    sub_46980(__p, v8, v9, (v9 - v8) >> 2);
    v6 = *(a3 + 8);
    if (!v6)
    {
LABEL_14:
      operator new();
    }

    while (1)
    {
      while (1)
      {
        v7 = v6;
        if ((sub_6F834(__dst, (v6 + 32)) & 0x80) == 0)
        {
          break;
        }

        v6 = *v7;
        if (!*v7)
        {
          goto LABEL_14;
        }
      }

      if ((sub_6F834(v7 + 4, __dst) & 0x80) == 0)
      {
        break;
      }

      v6 = v7[1];
      if (!v6)
      {
        goto LABEL_14;
      }
    }

    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (SHIBYTE(v14) < 0)
    {
      operator delete(__dst[0]);
    }

    if (v8)
    {
      operator delete(v8);
    }

    if (SHIBYTE(v12) < 0)
    {
      operator delete(v11[0]);
    }
  }
}

CFDictionaryRef sub_28EC48(void *a1)
{
  v18 = 0;
  v19 = 0uLL;
  sub_68DB4(&v18, a1[2]);
  v4 = *a1;
  v2 = a1 + 1;
  v3 = v4;
  if (v4 != v2)
  {
    v5 = v19;
    do
    {
      if (v5 >= *(&v19 + 1))
      {
        v6 = (v5 - v18) >> 4;
        if ((v6 + 1) >> 60)
        {
          sub_189A00();
        }

        v7 = (*(&v19 + 1) - v18) >> 3;
        if (v7 <= v6 + 1)
        {
          v7 = v6 + 1;
        }

        if (*(&v19 + 1) - v18 >= 0x7FFFFFFFFFFFFFF0uLL)
        {
          v8 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v8 = v7;
        }

        v23 = &v18;
        if (v8)
        {
          sub_1DB894(v8);
        }

        v20 = 0;
        v21 = 16 * v6;
        v22 = (16 * v6);
        sub_28EEDC((16 * v6), v3 + 32, v3 + 7);
        *&v22 = v22 + 16;
        v9 = &v18[v21 - v19];
        sub_65184(&v18, v18, v19, v9);
        v10 = v18;
        v11 = *(&v19 + 1);
        v18 = v9;
        v17 = v22;
        v19 = v22;
        *&v22 = v10;
        *(&v22 + 1) = v11;
        v20 = v10;
        v21 = v10;
        sub_65134(&v20);
        v5 = v17;
      }

      else
      {
        sub_28EEDC(v5, v3 + 32, v3 + 7);
        v5 += 2;
      }

      *&v19 = v5;
      v12 = v3[1];
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
          v13 = v3[2];
          v14 = *v13 == v3;
          v3 = v13;
        }

        while (!v14);
      }

      v3 = v13;
    }

    while (v13 != v2);
  }

  v15 = sub_65448(&v18);
  v20 = &v18;
  sub_65830(&v20);
  return v15;
}

void sub_28EDF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, void **a15)
{
  a15 = &a12;
  sub_65830(&a15);
  _Unwind_Resume(a1);
}

void sub_28EE30(void *a1)
{
  if (a1)
  {
    sub_28EE30(*a1);
    sub_28EE30(a1[1]);
    sub_28EE84((a1 + 4));

    operator delete(a1);
  }
}

void sub_28EE84(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }

  if (*(a1 + 23) < 0)
  {
    v3 = *a1;

    operator delete(v3);
  }
}

CFStringRef *sub_28EEDC(CFStringRef *a1, const UInt8 *a2, int **a3)
{
  v5 = *(a2 + 1);
  if (*(a2 + 23) >= 0)
  {
    v6 = a2[23];
  }

  else
  {
    a2 = *a2;
    v6 = v5;
  }

  v7 = CFStringCreateWithBytes(0, a2, v6, 0x8000100u, 0);
  *a1 = v7;
  if (!v7)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  a1[1] = sub_AFB90(a3);
  return a1;
}

const void **sub_28EFBC(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t sub_28EFF0(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_28F034(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_28EE84(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t sub_28F080(int a1)
{
  result = 1;
  if (a1 > 1886216808)
  {
    if (a1 <= 1886614624)
    {
      if (a1 > 1886545253)
      {
        if (a1 > 1886610287)
        {
          if (a1 == 1886610288 || a1 == 1886613611)
          {
            return result;
          }

          v10 = 28786;
        }

        else
        {
          if (a1 == 1886545254 || a1 == 1886549104)
          {
            return result;
          }

          v10 = 24943;
        }

        v8 = v10 | 0x70730000;
      }

      else if (a1 > 1886284904)
      {
        if (a1 == 1886284905 || a1 == 1886287212)
        {
          return result;
        }

        v8 = 1886545251;
      }

      else
      {
        if (a1 == 1886216809 || a1 == 1886216820)
        {
          return result;
        }

        v8 = 1886222185;
      }
    }

    else if (a1 > 1886680174)
    {
      if (a1 > 1886743661)
      {
        if (a1 == 1886743662 || a1 == 1886745449)
        {
          return result;
        }

        v9 = 29551;
      }

      else
      {
        if (a1 == 1886680175 || a1 == 1886742889)
        {
          return result;
        }

        v9 = 26991;
      }

      v8 = v9 | 0x70750000;
    }

    else
    {
      if (a1 <= 1886675560)
      {
        v3 = a1 - 1886614625;
        if (v3 <= 0xF)
        {
          v4 = 1 << v3;
          v5 = 49409;
          goto LABEL_12;
        }

        return 0;
      }

      if (a1 == 1886675561 || a1 == 1886675567)
      {
        return result;
      }

      v8 = 1886680169;
    }

LABEL_67:
    if (a1 == v8)
    {
      return result;
    }

    return 0;
  }

  if (a1 > 1885631343)
  {
    if (a1 > 1886152040)
    {
      if (a1 <= 1886154612)
      {
        if (a1 == 1886152041)
        {
          return result;
        }

        v12 = 25967;
      }

      else
      {
        if (a1 == 1886154613 || a1 == 1886155113)
        {
          return result;
        }

        v12 = 29039;
      }

      v8 = v12 | 0x706C0000;
    }

    else
    {
      if (a1 <= 1885891432)
      {
        if (a1 == 1885631344 || a1 == 1885888867)
        {
          return result;
        }

        v7 = 25709;
      }

      else
      {
        if ((a1 - 1885892674) <= 0x35 && ((1 << (a1 - 66)) & 0x20000100000001) != 0)
        {
          return result;
        }

        v7 = 27497;
      }

      v8 = v7 | 0x70680000;
    }

    goto LABEL_67;
  }

  if (a1 <= 1885433952)
  {
    if (a1 <= 1885432181)
    {
      if (a1 == 1751409257)
      {
        return result;
      }

      v11 = 25460;
    }

    else
    {
      if (a1 == 1885432182 || a1 == 1885433443)
      {
        return result;
      }

      v11 = 28704;
    }

    v8 = v11 | 0x70610000;
    goto LABEL_67;
  }

  if (a1 > 1885434466)
  {
    if (a1 == 1885434467 || a1 == 1885496941)
    {
      return result;
    }

    v8 = 1885629550;
    goto LABEL_67;
  }

  v6 = a1 - 1885433953;
  if (v6 > 0x16)
  {
    return 0;
  }

  v4 = 1 << v6;
  v5 = 4458497;
LABEL_12:
  if ((v4 & v5) == 0)
  {
    return 0;
  }

  return result;
}

uint64_t sub_28F41C(const std::string *a1)
{
  v2 = SHIBYTE(a1->__r_.__value_.__r.__words[2]);
  size = a1->__r_.__value_.__l.__size_;
  if (v2 < 0 && size == 26)
  {
    if (*a1->__r_.__value_.__l.__data_ == 0x416C617574726956 && *(a1->__r_.__value_.__r.__words[0] + 8) == 0x697665446F696475 && *(a1->__r_.__value_.__r.__words[0] + 16) == 0x75616665445F6563 && *(a1->__r_.__value_.__r.__words[0] + 24) == 29804)
    {
      v7 = 1986290944;
      v8 = 102;
      return v7 | v8;
    }
  }

  else if (v2 < 0 && size == 33 && !memcmp(a1->__r_.__value_.__l.__data_, "VirtualAudioDevice_DecoupledInput", 0x21uLL))
  {
    v7 = 1986291200;
    v8 = 105;
    return v7 | v8;
  }

  sub_53E8(&__p, "kVirtualAudioDeviceUID_OnDemand");
  v9 = std::string::append(&__p, "_", 1uLL);
  __str = *v9;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  v10 = HIBYTE(a1->__r_.__value_.__r.__words[2]);
  if ((v10 & 0x80u) == 0)
  {
    v11 = a1;
  }

  else
  {
    v11 = a1->__r_.__value_.__r.__words[0];
  }

  if ((v10 & 0x80u) != 0)
  {
    v10 = a1->__r_.__value_.__l.__size_;
  }

  v12 = SHIBYTE(__str.__r_.__value_.__r.__words[2]);
  v13 = __str.__r_.__value_.__r.__words[0];
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_str = &__str;
  }

  else
  {
    p_str = __str.__r_.__value_.__r.__words[0];
  }

  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v15 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v15 = __str.__r_.__value_.__l.__size_;
  }

  if (v15)
  {
    v16 = v11 + v10;
    if (v10 >= v15)
    {
      v20 = p_str->__r_.__value_.__s.__data_[0];
      v21 = v11;
      do
      {
        v22 = v10 - v15;
        if (v22 == -1)
        {
          break;
        }

        v23 = memchr(v21, v20, v22 + 1);
        if (!v23)
        {
          break;
        }

        v17 = v23;
        if (!memcmp(v23, p_str, v15))
        {
          goto LABEL_32;
        }

        v21 = (v17 + 1);
        v10 = v16 - (v17 + 1);
      }

      while (v10 >= v15);
    }

    v17 = v16;
LABEL_32:
    if (v17 == v16)
    {
      v18 = -1;
    }

    else
    {
      v18 = v17 - v11;
    }

    if ((v12 & 0x80000000) == 0)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v18 = 0;
    if ((SHIBYTE(__str.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_37;
    }
  }

  operator delete(v13);
LABEL_37:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v18 == -1)
  {
    v8 = 0;
    v7 = 0;
  }

  else
  {
    std::string::basic_string(&__str, a1, v18, 0xFFFFFFFFFFFFFFFFLL, &v26);
    v19 = std::stoi(&__str, 0, 10);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    v7 = (v19 << 32) | 0x766F6400;
    v8 = 100;
  }

  return v7 | v8;
}

void sub_28F7AC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130(a1);
  }

  _Unwind_Resume(a1);
}

void sub_28F7BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_28F7E0(uint64_t a1, uint64_t **a2)
{
  v2 = a2[1];
  if (*a2 == v2)
  {
    v19 = sub_5544(14);
    v20 = *v19;
    if (*v19 && os_log_type_enabled(*v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v28 = "StandardUtilities.cpp";
      v29 = 1024;
      v30 = 1451;
      _os_log_impl(&dword_0, v20, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  v4 = (v2 - *a2) >> 4;
  v5 = 0x7FFFFFFF / v4;
  if (v4 != -1)
  {
    sub_1D7C28(1uLL);
  }

  v6 = sub_5544(21);
  v7 = *v6;
  if (*v6 && os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
  {
    memset(&v26, 0, sizeof(v26));
    std::string::append(&v26, "{ ", 2uLL);
    std::string::append(&v26, " }", 2uLL);
    v8 = (v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v26 : v26.__r_.__value_.__r.__words[0];
    *buf = 136316162;
    v28 = "StandardUtilities.cpp";
    v29 = 1024;
    v30 = 1459;
    v31 = 1024;
    v32 = 0x7FFFFFFF;
    v33 = 1024;
    v34 = v5;
    v35 = 2080;
    v36 = v8;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Max: %d Step size: %d, VolumeCurve Scalar points: %s", buf, 0x28u);
    if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v26.__r_.__value_.__l.__data_);
    }
  }

  *a1 = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = a1 + 16;
  *(a1 + 36) = 0;
  *(a1 + 32) = 0;
  __asm { FMOV            V0.2S, #1.0 }

  *(a1 + 40) = _D0;
  sub_477A0(0);
  *(a1 + 8) = a1 + 16;
  *(a1 + 24) = 0;
  *(a1 + 16) = 0;
  v15 = *a2;
  v14 = a2[1];
  if ((v14 - *a2) >> 4 != -1)
  {
    v22 = sub_5544(14);
    v23 = *v22;
    if (*v22 && os_log_type_enabled(*v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v28 = "StandardUtilities.cpp";
      v29 = 1024;
      v30 = 1466;
      _os_log_impl(&dword_0, v23, OS_LOG_TYPE_ERROR, "%25s:%-5d INVARIANT FAILURE (std::logic_error).", buf, 0x12u);
    }

    v24 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v24, "Invariant failure.");
  }

  if (v15 != v14)
  {
    v16 = 1;
    do
    {
      v17 = *v15;
      v18 = v15[1];
      sub_160214(a1, *(4 * (v16 - 1)), *(4 * v16));
      ++v16;
      v15 += 2;
    }

    while (v15 != v14);
    operator delete(0);
  }
}

void sub_28FC70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  sub_477A0(*v23);
  if (v22)
  {
    operator delete(v22);
  }

  _Unwind_Resume(a1);
}

void sub_28FD08(void *a1, CFArrayRef *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v2 = *a2;
  if (*a2)
  {
    Count = CFArrayGetCount(*a2);
    v4 = *a2;
    if (v4)
    {
      v5 = CFArrayGetCount(v4);
    }

    else
    {
      v5 = 0;
    }

    if (Count && (v2 != v4 || v5))
    {
      sub_A3B9C(&cf, v2, 0);
      sub_28FEA0(&cf);
      sub_1D7C28(1uLL);
    }
  }
}

uint64_t sub_28FEA0(const void **a1)
{
  v2 = *a1;
  if (!v2)
  {
    return 0;
  }

  v3 = CFGetTypeID(v2);
  if (v3 == CFNumberGetTypeID())
  {
    sub_290014(cf, a1);
    if (cf[0])
    {
      v4 = sub_4A8F8(cf[0]);
      if (cf[0])
      {
        CFRelease(cf[0]);
      }

      return v4;
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
LABEL_21:
  }

  if (!*a1)
  {
    return 0;
  }

  v5 = CFGetTypeID(*a1);
  if (v5 != CFStringGetTypeID())
  {
    return 0;
  }

  sub_23F428(&v10, a1);
  if (!v10)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    goto LABEL_21;
  }

  sub_125D8(cf, v10);
  if (v12 >= 0)
  {
    v6 = cf;
  }

  else
  {
    v6 = cf[0];
  }

  v7 = *v6;
  if (v12 < 0)
  {
    operator delete(cf[0]);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  return bswap32(v7);
}

const void *sub_290014(void *a1, const void **a2)
{
  result = *a2;
  if (!*a2)
  {
    goto LABEL_6;
  }

  v5 = CFGetTypeID(result);
  result = CFNumberGetTypeID();
  if (v5 != result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1DB154(exception);
  }

  v6 = *a2;
  if (v6)
  {
    CFRetain(v6);
    *a1 = v6;
    v7 = CFGetTypeID(v6);
    result = CFNumberGetTypeID();
    if (v7 != result)
    {
      v8 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v8, "Could not construct");
    }
  }

  else
  {
LABEL_6:
    *a1 = 0;
  }

  return result;
}

void sub_2900F8(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  sub_20A3F8(v1);
  _Unwind_Resume(a1);
}

void sub_290138(void *a1, CFTypeRef *a2)
{
  if (*a2 && (v4 = CFGetTypeID(*a2), v4 == CFArrayGetTypeID()))
  {
    if (!*a2)
    {
      goto LABEL_9;
    }

    v5 = CFGetTypeID(*a2);
    if (v5 != CFArrayGetTypeID())
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
    }

    v6 = *a2;
    if (v6)
    {
      CFRetain(v6);
      v11 = v6;
      v7 = CFGetTypeID(v6);
      if (v7 != CFArrayGetTypeID())
      {
        v9 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v9, "Could not construct");
      }

      sub_28FD08(a1, &v11);
      CFRelease(v6);
    }

    else
    {
LABEL_9:
      v11 = 0;
      sub_28FD08(a1, &v11);
    }
  }

  else
  {
    v10 = sub_28FEA0(a2);
    a1[1] = 0;
    a1[2] = 0;
    *a1 = 0;
    sub_4625C(a1, &v10, &v11, 1uLL);
  }
}

void sub_2902A0(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10)
{
  __cxa_free_exception(v10);
  sub_1DC7F8(&a10);
  sub_1CC130(a1);
}

uint64_t sub_2902F4(const __CFDictionary **a1, const __CFString *a2, unsigned int *a3)
{
  v5 = *a1;
  if (!v5 || !sub_4A3D0(v5, a2))
  {
    return *a3;
  }

  if (!*a1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  sub_27CA10(&cf, *a1, a2);
  v7 = sub_28FEA0(&cf);
  if (cf)
  {
    CFRelease(cf);
  }

  return v7;
}

uint64_t sub_2906C0(uint64_t a1, int a2)
{
  v3 = a2;
  if (!a1)
  {
    sub_46A74();
  }

  return (*(*a1 + 48))(a1, &v3);
}

void sub_290710(uint64_t a1, int a2, int *a3, uint64_t a4)
{
  if (a2)
  {
    v4 = a3;
    if (a3)
    {
      if (a4)
      {
        if (*(a4 + 104) != a1)
        {
          v13 = sub_5544(14);
          v14 = *v13;
          if (*v13)
          {
            if (os_log_type_enabled(*v13, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              v22 = "HALJackStateHandler.cpp";
              v23 = 1024;
              v24 = 184;
              _os_log_impl(&dword_0, v14, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: The HAL passed inObject as different than mDevice.", buf, 0x12u);
            }
          }
        }

        v6 = 0;
        do
        {
          v7 = *v4;
          v4 += 3;
          if (v7 == 1784767339)
          {
            sub_68E60();
            operator new();
          }

          ++v6;
        }

        while (a2 != v6);
        v8 = sub_5544(14);
        v9 = *v8;
        if (*v8)
        {
          if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v22 = "HALJackStateHandler.cpp";
            v23 = 1024;
            v24 = 196;
            _os_log_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): Unable to locate kAudioDevicePropertyJackIsConnected in inAddresses", buf, 0x12u);
          }
        }

        exception = __cxa_allocate_exception(0x10uLL);
        v11 = &std::runtime_error::~runtime_error;
        std::runtime_error::runtime_error(exception, "Unable to locate kAudioDevicePropertyJackIsConnected in inAddresses");
LABEL_12:
        __cxa_throw(exception, v12, v11);
      }

      v19 = sub_5544(14);
      v20 = *v19;
      if (*v19 && os_log_type_enabled(*v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v22 = "HALJackStateHandler.cpp";
        v23 = 1024;
        v24 = 181;
        _os_log_impl(&dword_0, v20, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
      }
    }

    else
    {
      v17 = sub_5544(14);
      v18 = *v17;
      if (*v17 && os_log_type_enabled(*v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v22 = "HALJackStateHandler.cpp";
        v23 = 1024;
        v24 = 180;
        _os_log_impl(&dword_0, v18, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
      }
    }
  }

  else
  {
    v15 = sub_5544(14);
    v16 = *v15;
    if (*v15 && os_log_type_enabled(*v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v22 = "HALJackStateHandler.cpp";
      v23 = 1024;
      v24 = 179;
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }
  }

  exception = __cxa_allocate_exception(0x10uLL);
  v11 = &std::logic_error::~logic_error;
  std::logic_error::logic_error(exception, "Precondition failure.");
  goto LABEL_12;
}

void *sub_2910C8(uint64_t a1, uint64_t (*a2)(BOOL, BOOL, uint64_t, uint64_t), uint64_t a3)
{
  v37 = a1;
  v6 = (*(*a1 + 16))(a1);
  v38 = v6;
  v36 = 0;
  if (*(a1 + 112) == 1)
  {
    LODWORD(__p) = 4;
    (*(**(a1 + 104) + 40))(*(a1 + 104), "kcajtpni", 0, 0, &__p, &v36);
    v7 = sub_5544(22);
    v8 = sub_5544(31);
    v9 = 0;
    *buf = 0x100000002;
    v10 = *(v7 + 8);
    while (1)
    {
      v11 = *&buf[v9];
      if (((v10 & v11) != 0) != ((*(v8 + 8) & v11) != 0))
      {
        break;
      }

      v9 += 4;
      if (v9 == 8)
      {
        goto LABEL_8;
      }
    }

    if ((v10 & v11) == 0)
    {
      v7 = v8;
    }

LABEL_8:
    v12 = *v7;
    if (v12 && os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v13 = "YES";
      *&buf[4] = "HALJackStateHandler.cpp";
      *buf = 136315650;
      if (!v36)
      {
        v13 = "NO";
      }

      *&buf[12] = 1024;
      *&buf[14] = 212;
      *&buf[18] = 2080;
      *&buf[20] = v13;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEBUG, "%25s:%-5d input connected: %s", buf, 0x1Cu);
    }
  }

  v14 = 0;
  v35 = 0;
  if (*(a1 + 113) == 1)
  {
    LODWORD(__p) = 4;
    (*(**(a1 + 104) + 40))(*(a1 + 104), "kcajptuo", 0, 0, &__p, &v35);
    v15 = sub_5544(22);
    v16 = sub_5544(31);
    v17 = 0;
    *buf = 0x100000002;
    v18 = *(v15 + 8);
    while (1)
    {
      v19 = *&buf[v17];
      if (((v18 & v19) != 0) != ((*(v16 + 8) & v19) != 0))
      {
        break;
      }

      v17 += 4;
      if (v17 == 8)
      {
        goto LABEL_20;
      }
    }

    if ((v18 & v19) == 0)
    {
      v15 = v16;
    }

LABEL_20:
    v20 = *v15;
    if (v20 && os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      v21 = "YES";
      *&buf[4] = "HALJackStateHandler.cpp";
      *buf = 136315650;
      if (!v35)
      {
        v21 = "NO";
      }

      *&buf[12] = 1024;
      *&buf[14] = 220;
      *&buf[18] = 2080;
      *&buf[20] = v21;
      _os_log_impl(&dword_0, v20, OS_LOG_TYPE_DEBUG, "%25s:%-5d output connected: %s", buf, 0x1Cu);
    }

    v14 = v35 != 0;
  }

  v22 = sub_291720(v36 != 0, v14, *(a1 + 104));
  v23 = sub_5544(22);
  v24 = sub_5544(31);
  v25 = 0;
  *buf = 0x100000002;
  v26 = *(v23 + 8);
  while (1)
  {
    v27 = *&buf[v25];
    if (((v26 & v27) != 0) != ((*(v24 + 8) & v27) != 0))
    {
      break;
    }

    v25 += 4;
    if (v25 == 8)
    {
      goto LABEL_32;
    }
  }

  if ((v26 & v27) == 0)
  {
    v23 = v24;
  }

LABEL_32:
  v28 = *v23;
  if (!v28 || !os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
  {
    goto LABEL_38;
  }

  sub_22170(&__p, v22);
  v29 = v34 >= 0 ? &__p : __p;
  *buf = 136315650;
  *&buf[4] = "HALJackStateHandler.cpp";
  *&buf[12] = 1024;
  *&buf[14] = 225;
  *&buf[18] = 2080;
  *&buf[20] = v29;
  _os_log_impl(&dword_0, v28, OS_LOG_TYPE_DEBUG, "%25s:%-5d headphone jack descriptor: '%s'", buf, 0x1Cu);
  if (v34 < 0)
  {
    operator delete(__p);
    if (a2)
    {
LABEL_39:
      sub_24F408(buf, a1);
      result = a2(v36 != 0, v35 != 0, v22, a3);
      if (buf[8] == 1)
      {
        result = (*(**buf + 16))(*buf);
      }

      if (!v6)
      {
        return result;
      }

      return (*(*a1 + 24))(a1);
    }
  }

  else
  {
LABEL_38:
    if (a2)
    {
      goto LABEL_39;
    }
  }

  *buf = buf;
  *&buf[8] = buf;
  *&buf[16] = 0;
  if (*(a1 + 128) != a1 + 120)
  {
    operator new();
  }

  sub_24F408(&__p, a1);
  for (i = *&buf[8]; buf != i; i = *(i + 8))
  {
    (*(i + 16))(v36 != 0, v35 != 0, v22, *(i + 24));
  }

  if (v33 == 1)
  {
    (*(*__p + 16))(__p);
  }

  result = sub_4E0BC(buf);
  if (v6)
  {
    return (*(*a1 + 24))(a1);
  }

  return result;
}

void sub_2916A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, char a15)
{
  if (a2)
  {
    sub_1CC130(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_291720(int a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v3 = 1784965232;
  }

  else
  {
    v3 = 0;
  }

  if (a1)
  {
    v4 = 1784965235;
  }

  else
  {
    v4 = v3;
  }

  if (!a2)
  {
    return v4;
  }

  sub_2893A0(v35);
  if (v35[0] == 1)
  {
    if (byte_6E872C)
    {
      goto LABEL_59;
    }

    v6 = sub_53E8(buf, "b15");
    if (sub_291D90(v6))
    {
      v7 = 1;
    }

    else
    {
      v10 = sub_53E8(v54, "b18");
      if (sub_291D90(v10))
      {
        v7 = 1;
      }

      else
      {
        v11 = sub_53E8(&v52, "b126");
        v7 = sub_291D90(v11);
        if (v53 < 0)
        {
          operator delete(v52);
        }
      }

      if (v55 < 0)
      {
        operator delete(v54[0]);
      }
    }

    if (SBYTE3(v60) < 0)
    {
      operator delete(*buf);
      if (v7)
      {
        goto LABEL_28;
      }
    }

    else if (v7)
    {
LABEL_28:
      v12 = 1784820021;
      goto LABEL_57;
    }

    v13 = sub_53E8(&v50, "b60f");
    if (sub_291D90(v13))
    {
      v14 = 1;
    }

    else
    {
      sub_53E8(__p, "b149");
      v14 = sub_291D90(__p);
      if (v49 < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (v51 < 0)
    {
      operator delete(v50);
    }

    v12 = 1647718502;
    if (!v14)
    {
      sub_53E8(v46, "b60g");
      v15 = sub_291D90(v46);
      if (v47 < 0)
      {
        operator delete(v46[0]);
      }

      if (v15)
      {
        v12 = 1647718503;
      }

      else
      {
        sub_53E8(v44, "a36");
        v16 = sub_291D90(v44);
        if (v45 < 0)
        {
          operator delete(v44[0]);
        }

        if (v16)
        {
          v12 = 1784754998;
        }

        else
        {
          sub_53E8(v42, "b198");
          v17 = sub_291D90(v42);
          if (v43 < 0)
          {
            operator delete(v42[0]);
          }

          if (v17)
          {
            v12 = 1647393080;
          }

          else
          {
            sub_53E8(v40, "b310");
            v18 = sub_291D90(v40);
            if (v41 < 0)
            {
              operator delete(v40[0]);
            }

            if (v18)
            {
              v12 = 1781739824;
            }

            else
            {
              sub_53E8(v38, "b302");
              v19 = sub_291D90(v38);
              if (v39 < 0)
              {
                operator delete(v38[0]);
              }

              if (!v19)
              {
                goto LABEL_58;
              }

              v12 = 1647521842;
            }
          }
        }
      }
    }

LABEL_57:
    dword_6E8728 = v12;
LABEL_58:
    byte_6E872C = 1;
LABEL_59:
    v8 = dword_6E8728;
    if (dword_6E8728)
    {
      v20 = sub_5544(22);
      v21 = sub_5544(31);
      v22 = 0;
      *buf = 0x100000002;
      v23 = *(v20 + 8);
      while (1)
      {
        v24 = *&buf[v22];
        if (((v23 & v24) != 0) != ((*(v21 + 8) & v24) != 0))
        {
          break;
        }

        v22 += 4;
        if (v22 == 8)
        {
          if ((v23 & 1) == 0)
          {
            goto LABEL_87;
          }

          goto LABEL_72;
        }
      }

      if ((v23 & v24) == 0)
      {
        v20 = v21;
      }

      if (*(v20 + 8))
      {
LABEL_72:
        v30 = *v20;
        if (v30 && os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
        {
          sub_22170(v54, v8);
          v31 = v55 >= 0 ? v54 : v54[0];
          *buf = 136315650;
          *&buf[4] = "HALJackStateHandler.cpp";
          v57 = 1024;
          v58 = 293;
          v59 = 2080;
          v60 = v31;
          _os_log_impl(&dword_0, v30, OS_LOG_TYPE_DEBUG, "%25s:%-5d Using headset override value: '%s'", buf, 0x1Cu);
          if (v55 < 0)
          {
            operator delete(v54[0]);
          }
        }

        goto LABEL_87;
      }
    }

    else
    {
      v25 = sub_5544(22);
      v26 = sub_5544(31);
      v27 = 0;
      *buf = 0x100000002;
      v28 = *(v25 + 8);
      while (1)
      {
        v29 = *&buf[v27];
        if (((v28 & v29) != 0) != ((*(v26 + 8) & v29) != 0))
        {
          break;
        }

        v27 += 4;
        if (v27 == 8)
        {
          goto LABEL_81;
        }
      }

      if ((v28 & v29) == 0)
      {
        v25 = v26;
      }

LABEL_81:
      v32 = *v25;
      if (v32 && os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        v33 = &v36;
        if (v37 < 0)
        {
          v33 = v36;
        }

        *buf = 136315650;
        *&buf[4] = "HALJackStateHandler.cpp";
        v57 = 1024;
        v58 = 303;
        v59 = 2080;
        v60 = v33;
        _os_log_impl(&dword_0, v32, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Headset could not be identified based on overridde identifier: %s. Using default settings.", buf, 0x1Cu);
      }

      v8 = v4;
    }

    goto LABEL_87;
  }

  sub_291EC4(buf, a3);
  if (*buf)
  {
    v9 = sub_29204C(*buf);
    if ((v9 & 0x100000000) != 0)
    {
      v8 = v9;
    }

    else
    {
      v8 = v4;
    }

    if (*buf)
    {
      CFRelease(*buf);
    }
  }

  else
  {
    v8 = 0;
  }

LABEL_87:
  if (v37 < 0)
  {
    operator delete(v36);
  }

  return v8;
}

void sub_291C60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, char a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, char a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, char a41, uint64_t a42, int a43, __int16 a44, char a45, char a46, void *a47, uint64_t a48, int a49, __int16 a50, char a51, char a52)
{
  if (a22 < 0)
  {
    operator delete(a17);
  }

  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_291D90(uint64_t *a1)
{
  if ((atomic_load_explicit(&qword_6E8738, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6E8738))
  {
    sub_2893A0(&byte_6E8740);
    qword_6E8730 = &byte_6E8740;
    __cxa_guard_release(&qword_6E8738);
  }

  if (byte_6E8740 != 1)
  {
    return 0;
  }

  v2 = *(a1 + 23);
  if (v2 < 0)
  {
    v3 = a1;
    a1 = *a1;
    v2 = v3[1];
  }

  v4 = (a1 + v2);
  v5 = byte_6E875F >= 0 ? qword_6E8730 + 8 + byte_6E875F : qword_6E8748 + unk_6E8750;
  v6 = byte_6E875F >= 0 ? qword_6E8730 + 8 : qword_6E8748;
  if (v2 != v5 - v6)
  {
    return 0;
  }

  while (v4 != a1 && v5 != v6)
  {
    v7 = *(v4 - 1);
    v4 = (v4 - 1);
    v8 = __tolower(v7);
    v9 = *--v5;
    if (v8 != __tolower(v9))
    {
      return 0;
    }
  }

  return v4 == a1 && v5 == v6;
}

void *sub_291EC4(CFTypeRef *a1, uint64_t a2)
{
  v3 = (*(*a2 + 120))(a2);
  inAddress.mElement = 0;
  v17 = v3;
  *&inAddress.mSelector = 0x676C6F6268656164;
  result = sub_221220(v12, &v17, &inAddress);
  if (v15)
  {
    v5 = v14;
    v14 = 0;
    v9 = &off_6DDB78;
    cf = v5;
    v11 = 1;
    sub_8AAAC(&v13);
    v6 = cf;
    if (!cf)
    {
      *a1 = 0;
      return sub_8AAAC(&v9);
    }

    CFRetain(cf);
    *a1 = cf;
    v7 = CFGetTypeID(v6);
    result = CFDictionaryGetTypeID();
    if (v7 != result)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
    }

    if (v11)
    {
      return sub_8AAAC(&v9);
    }
  }

  else
  {
    *a1 = 0;
  }

  return result;
}