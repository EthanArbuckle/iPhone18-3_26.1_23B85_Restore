void sub_BC2F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t *a47, std::__shared_weak_count *a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_87980(&a60);
  sub_2626E4(a47);
  (*(*a52 + 8))(a52);
  sub_65310(&STACK[0x240]);
  STACK[0x240] = &a67;
  sub_D02B4(&STACK[0x240]);
  STACK[0x240] = &a71;
  sub_D0330(&STACK[0x240]);
  if (*(a35 + 56) == 1)
  {
    sub_175F78((a35 + 24));
  }

  sub_C31F4(STACK[0x218]);
  STACK[0x240] = &STACK[0x228];
  sub_9DDC4(&STACK[0x240]);
  _Unwind_Resume(a1);
}

void *sub_BCB34(void *result, CFTypeRef cf)
{
  *result = cf;
  if (cf)
  {
    v2 = CFGetTypeID(cf);
    result = CFStringGetTypeID();
    if (v2 != result)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
    }
  }

  return result;
}

void sub_BCBB8(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  sub_1DB0E0(v1);
  _Unwind_Resume(a1);
}

void sub_BCBE0(uint64_t a1)
{
  v6 = 0;
  v7 = 0;
  v8 = 0;
  strcpy(v9, "cwdv");
  v9[8] = 0;
  v10 = 3;
  v12[0] = 0;
  v12[1] = 0;
  v11 = v12;
  v15 = 0;
  v16 = 0;
  __p = 0;
  v13 = 44731018;
  sub_45ED0(&v4, *(a1 + 128), &v6);
  for (i = v5; i != &v4; i = *(i + 8))
  {
    v3 = sub_9E618(*(a1 + 128), *(i + 16));
    sub_25704(&v17, (v3 + 88), "", 166);
    (*(*v17 + 224))(v17);
    if (v18)
    {
      sub_1A8C0(v18);
    }
  }

  sub_4E0BC(&v4);
  if (SHIBYTE(v16) < 0)
  {
    operator delete(__p);
  }

  sub_477A0(v12[0]);
  if (v6)
  {
    v7 = v6;
    operator delete(v6);
  }
}

void sub_BCD18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_46934(va);
  _Unwind_Resume(a1);
}

std::string *sub_BCD50(std::string *a1, uint64_t a2)
{
  a1->__r_.__value_.__r.__words[0] = 0;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  std::string::append(a1, "[ ", 2uLL);
  sub_879F8(&__p, a2);
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
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  std::string::append(a1, p_p, size);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (*(a2 + 32))
  {
    std::string::append(a1, "; Override Ports: { ", 0x14uLL);
    sub_26AD34(&__p, (a2 + 16));
    v6 = __p.__r_.__value_.__r.__words[0];
    if (__p.__r_.__value_.__l.__data_ != &__p.__r_.__value_.__r.__words[1])
    {
      while (1)
      {
        sub_22170(v33, *(v6[1].__words[1] + 144));
        if ((v34 & 0x80u) == 0)
        {
          v7 = v33;
        }

        else
        {
          v7 = v33[0];
        }

        if ((v34 & 0x80u) == 0)
        {
          v8 = v34;
        }

        else
        {
          v8 = v33[1];
        }

        std::string::append(a1, v7, v8);
        if (v34 < 0)
        {
          operator delete(v33[0]);
        }

        v9 = v6->__words[1];
        if (v9)
        {
          do
          {
            v10 = v9;
            v9 = v9->__r_.__value_.__r.__words[0];
          }

          while (v9);
        }

        else
        {
          do
          {
            v10 = v6->__words[2];
            v11 = v10->__r_.__value_.__r.__words[0] == v6;
            v6 = v10;
          }

          while (!v11);
        }

        if (v10 == &__p.__r_.__value_.__r.__words[1])
        {
          break;
        }

        std::string::append(a1, ", ", 2uLL);
        v6 = v10;
      }
    }

    std::string::append(a1, " }", 2uLL);
    sub_1199A8(__p.__r_.__value_.__l.__size_);
  }

  if (*(a2 + 56) | *(a2 + 80))
  {
    std::string::append(a1, "; Disallowed Ports: { ", 0x16uLL);
    sub_265514(&__p, a2 + 40);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v12 = &__p;
    }

    else
    {
      v12 = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v13 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v13 = __p.__r_.__value_.__l.__size_;
    }

    std::string::append(a1, v12, v13);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    std::string::append(a1, " }", 2uLL);
  }

  if (*(a2 + 104))
  {
    std::string::append(a1, "; Disallowed Port Types: ", 0x19uLL);
    sub_11683C(&__p, *(a2 + 88), (a2 + 96));
    v14 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
    v15 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(__p.__r_.__value_.__r.__words[2]) : __p.__r_.__value_.__l.__size_;
    std::string::append(a1, v14, v15);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  if (*(a2 + 128))
  {
    std::string::append(a1, "; Default Allowed Port Types: ", 0x1EuLL);
    sub_11683C(&__p, *(a2 + 112), (a2 + 120));
    v16 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
    v17 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(__p.__r_.__value_.__r.__words[2]) : __p.__r_.__value_.__l.__size_;
    std::string::append(a1, v16, v17);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  std::string::append(a1, "; Screen Dark Policy: ", 0x16uLL);
  if (*(a2 + 156))
  {
    v18 = *(a2 + 152);
  }

  else
  {
    v18 = 0;
  }

  v19 = &__p;
  std::to_string(&__p, v18);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v19 = __p.__r_.__value_.__r.__words[0];
  }

  v20 = strlen(v19);
  std::string::append(a1, v19, v20);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::string::append(a1, "; Stream Coupling Policy: ", 0x1AuLL);
  v21 = *(a2 + 160);
  if (v21 == 1668248944)
  {
    v22 = "couple";
  }

  else
  {
    v22 = "decouple";
  }

  if (v21 == 1668248944)
  {
    v23 = 6;
  }

  else
  {
    v23 = 8;
  }

  std::string::append(a1, v22, v23);
  if (*(a2 + 168) != 1852796517)
  {
    std::string::append(a1, "; Initiation Trigger: ", 0x16uLL);
    sub_22170(&__p, *(a2 + 168));
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v24 = &__p;
    }

    else
    {
      v24 = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v25 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v25 = __p.__r_.__value_.__l.__size_;
    }

    std::string::append(a1, v24, v25);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v26 = *(a2 + 199);
    if ((v26 & 0x80u) != 0)
    {
      v26 = *(a2 + 184);
    }

    if (v26)
    {
      std::string::append(a1, "; Initiating Device UID: ", 0x19uLL);
      v27 = *(a2 + 199);
      if (v27 >= 0)
      {
        v28 = (a2 + 176);
      }

      else
      {
        v28 = *(a2 + 176);
      }

      if (v27 >= 0)
      {
        v29 = *(a2 + 199);
      }

      else
      {
        v29 = *(a2 + 184);
      }

      std::string::append(a1, v28, v29);
    }
  }

  if (*(a2 + 416) == 1)
  {
    std::operator+<char>();
  }

  else
  {
    sub_53E8(&__p, "");
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v30 = &__p;
  }

  else
  {
    v30 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v31 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v31 = __p.__r_.__value_.__l.__size_;
  }

  std::string::append(a1, v30, v31);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (*(a2 + 386) == 1)
  {
    std::string::append(a1, "; Colistening: Active", 0x15uLL);
  }

  return std::string::append(a1, " ]", 2uLL);
}

void sub_BD21C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (*(v17 + 23) < 0)
  {
    operator delete(*v17);
  }

  _Unwind_Resume(exception_object);
}

void sub_BD2A0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0xBD280);
}

_BYTE *sub_BD2B8(void *a1, int a2)
{
  sub_27A4();
  v16 = (*(qword_6E94F8 + 16))();
  sub_27A4();
  v4 = atomic_load(&qword_6E9558);
  if (v4 != pthread_self())
  {
    v13 = sub_5544(14);
    v14 = *v13;
    if (*v13 && os_log_type_enabled(*v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v18 = "RoutingManager.cpp";
      v19 = 1024;
      v20 = 4739;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): Unable to acquire routing mutex.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Unable to acquire routing mutex.");
  }

  v5 = a1[70];
  if (v5)
  {
    v6 = a1 + 70;
    v7 = a1[70];
    do
    {
      if (*(v7 + 28) >= a2)
      {
        v6 = v7;
      }

      v7 = *(v7 + 8 * (*(v7 + 28) < a2));
    }

    while (v7);
    if (v6 != a1 + 70 && *(v6 + 7) <= a2)
    {
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
        v10 = v6;
        do
        {
          v9 = v10[2];
          v11 = *v9 == v10;
          v10 = v9;
        }

        while (!v11);
      }

      if (a1[69] == v6)
      {
        a1[69] = v9;
      }

      --a1[71];
      sub_75234(v5, v6);
      operator delete(v6);
    }
  }

  return sub_210C50(&v16);
}

void sub_BD4B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  __cxa_free_exception(v13);
  sub_210C50(&a13);
  _Unwind_Resume(a1);
}

void sub_BD4EC(void *a1, int a2)
{
  v2 = a1[2];
  if (v2)
  {
    if (a2)
    {
      if (v2 == 1)
      {
        v51 = sub_5544(14);
        v52 = sub_468EC(1, *v51, *(v51 + 8));
        v53 = v52;
        if (v52 && os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "VirtualAudio_PlugIn.mm";
          *&buf[12] = 1024;
          *&buf[14] = 5110;
          _os_log_impl(&dword_0, v53, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
        }

        exception = __cxa_allocate_exception(0x10uLL);
        std::logic_error::logic_error(exception, "Precondition failure.");
      }

      v59 = 0;
      v60 = 0;
      v61 = 0;
      v5 = a1 + 1;
      v6 = *a1;
      if (*a1 != a1 + 1)
      {
        do
        {
          sub_2820();
          v7 = sub_3D90(*(v6 + 7));
          v8 = *(v7 + 96);
          if (v8)
          {
            v9 = *(v7 + 88);
            atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
            v10 = std::__shared_weak_count::lock(v8);
            std::__shared_weak_count::__release_weak(v8);
            if (v10)
            {
              if (v9)
              {
                v11 = *(v9 + 200);
                v55[0] = *(v9 + 192);
                v55[1] = v11;
                if (v11)
                {
                  atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
                }

                sub_5659C(&v56, v55, "", 5120);
                (*(*v56 + 128))(&__p);
                v12 = v60;
                if (v60 >= v61)
                {
                  v14 = 0xAAAAAAAAAAAAAAABLL * ((v60 - v59) >> 3);
                  v15 = v14 + 1;
                  if (v14 + 1 > 0xAAAAAAAAAAAAAAALL)
                  {
                    sub_189A00();
                  }

                  if (0x5555555555555556 * ((v61 - v59) >> 3) > v15)
                  {
                    v15 = 0x5555555555555556 * ((v61 - v59) >> 3);
                  }

                  if (0xAAAAAAAAAAAAAAABLL * ((v61 - v59) >> 3) >= 0x555555555555555)
                  {
                    v16 = 0xAAAAAAAAAAAAAAALL;
                  }

                  else
                  {
                    v16 = v15;
                  }

                  *&buf[32] = &v59;
                  if (v16)
                  {
                    sub_1D8BB8(v16);
                  }

                  v17 = 8 * ((v60 - v59) >> 3);
                  v18 = *&__p.__r_.__value_.__l.__data_;
                  *(v17 + 16) = *(&__p.__r_.__value_.__l + 2);
                  *v17 = v18;
                  memset(&__p, 0, sizeof(__p));
                  v19 = 24 * v14 + 24;
                  v20 = (24 * v14 - (v60 - v59));
                  memcpy((v17 - (v60 - v59)), v59, v60 - v59);
                  v21 = v59;
                  v22 = v61;
                  v59 = v20;
                  v60 = v19;
                  v61 = 0;
                  *buf = v21;
                  *&buf[16] = v21;
                  *&buf[24] = v22;
                  *&buf[8] = v21;
                  sub_12574(buf);
                  v60 = v19;
                  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(__p.__r_.__value_.__l.__data_);
                  }
                }

                else
                {
                  v13 = *&__p.__r_.__value_.__l.__data_;
                  *(v60 + 2) = *(&__p.__r_.__value_.__l + 2);
                  *v12 = v13;
                  memset(&__p, 0, sizeof(__p));
                  v60 = v12 + 24;
                }

                if (v57)
                {
                  sub_1A8C0(v57);
                }

                if (v11)
                {
                  std::__shared_weak_count::__release_weak(v11);
                }
              }

              sub_1A8C0(v10);
            }
          }

          v23 = v6[1];
          if (v23)
          {
            do
            {
              v24 = v23;
              v23 = *v23;
            }

            while (v23);
          }

          else
          {
            do
            {
              v24 = v6[2];
              v25 = *v24 == v6;
              v6 = v24;
            }

            while (!v25);
          }

          v6 = v24;
        }

        while (v24 != v5);
      }
    }

    else
    {
      v59 = 0;
      v60 = 0;
      v61 = 0;
    }

    v26 = sub_5544(2);
    v27 = sub_5544(35);
    v28 = 0;
    *buf = 0x100000002;
    v29 = *(v26 + 8);
    while (1)
    {
      v30 = *&buf[v28];
      if (((v29 & v30) != 0) != ((*(v27 + 8) & v30) != 0))
      {
        break;
      }

      v28 += 4;
      if (v28 == 8)
      {
        goto LABEL_41;
      }
    }

    if ((v29 & v30) == 0)
    {
      v26 = v27;
    }

LABEL_41:
    v31 = *v26;
    v32 = v31;
    if (v31)
    {
      v33 = v31;
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        sub_87BA8(&__p, a1);
        v34 = "deaggregation";
        if (a2)
        {
          v34 = "aggregation";
        }

        *&buf[4] = "VirtualAudio_PlugIn.mm";
        *buf = 136315906;
        *&buf[12] = 1024;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        *&buf[14] = 5126;
        *&buf[18] = 2080;
        *&buf[20] = v34;
        *&buf[28] = 2080;
        *&buf[30] = p_p;
        _os_log_impl(&dword_0, v33, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Setting %s for ports: %s.", buf, 0x26u);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }
    }

    v36 = *a1;
    if (*a1 != a1 + 1)
    {
      if (a2)
      {
        v37 = "Aggregation";
      }

      else
      {
        v37 = "Deaggregation";
      }

      do
      {
        sub_2820();
        v38 = sub_3D90(*(v36 + 7));
        v39 = sub_23E814(&v59);
        strcpy(buf, "gaswbolg");
        buf[9] = 0;
        *&buf[10] = 0;
        __p.__r_.__value_.__r.__words[0] = v39;
        LODWORD(v38) = sub_42239C(v38, buf, 0, 0, 8, &__p);
        CFRelease(v39);
        if (v38)
        {
          v40 = sub_5544(2);
          v41 = sub_5544(35);
          v42 = 0;
          *buf = 0x100000002;
          v43 = *(v40 + 8);
          while (1)
          {
            v44 = *&buf[v42];
            if (((v43 & v44) != 0) != ((*(v41 + 8) & v44) != 0))
            {
              break;
            }

            v42 += 4;
            if (v42 == 8)
            {
              goto LABEL_62;
            }
          }

          if ((v43 & v44) == 0)
          {
            v40 = v41;
          }

LABEL_62:
          v45 = *v40;
          v46 = v45;
          if (v45)
          {
            v47 = v45;
            if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
            {
              sub_87BA8(&__p, a1);
              v48 = &__p;
              if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                v48 = __p.__r_.__value_.__r.__words[0];
              }

              *buf = 136315906;
              *&buf[4] = "VirtualAudio_PlugIn.mm";
              *&buf[12] = 1024;
              *&buf[14] = 5132;
              *&buf[18] = 2080;
              *&buf[20] = v37;
              *&buf[28] = 2080;
              *&buf[30] = v48;
              _os_log_impl(&dword_0, v47, OS_LOG_TYPE_ERROR, "%25s:%-5d %s failed for ports: %s.", buf, 0x26u);
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }
            }
          }
        }

        v49 = v36[1];
        if (v49)
        {
          do
          {
            v50 = v49;
            v49 = *v49;
          }

          while (v49);
        }

        else
        {
          do
          {
            v50 = v36[2];
            v25 = *v50 == v36;
            v36 = v50;
          }

          while (!v25);
        }

        v36 = v50;
      }

      while (v50 != a1 + 1);
    }

    *buf = &v59;
    sub_11C50(buf);
  }
}

uint64_t sub_BDC5C(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    v2 = *a1;
    if (*a1)
    {
      CFRelease(v2);
    }
  }

  return a1;
}

void *sub_BDC9C(void *result, unint64_t a2)
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

void sub_BDD1C(uint64_t a1, CFTypeRef cf, unsigned __int8 a3)
{
  if (*(a1 + 8) == a3)
  {
    if (*(a1 + 8))
    {
      v3 = *a1;
      *a1 = cf;
      if (cf)
      {
        CFRetain(cf);
      }

      if (v3)
      {
        CFRelease(v3);
      }
    }
  }

  else if (*(a1 + 8))
  {

    sub_BE3CC(a1);
  }

  else
  {
    *(sub_98A64(a1, cf) + 8) = 1;
  }
}

void sub_BDDA0(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 4);
    v9 = v8 + 1;
    if (v8 + 1 > 0x555555555555555)
    {
      sub_189A00();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 4);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x2AAAAAAAAAAAAAALL)
    {
      v11 = 0x555555555555555;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      sub_3A9764(v11);
    }

    v12 = 48 * v8;
    v13 = *a2;
    v14 = a2[2];
    *(v12 + 16) = a2[1];
    *(v12 + 32) = v14;
    *v12 = v13;
    v7 = 48 * v8 + 48;
    v15 = *(a1 + 8) - *a1;
    v16 = v12 - v15;
    memcpy((v12 - v15), *a1, v15);
    v17 = *a1;
    *a1 = v16;
    *(a1 + 8) = v7;
    *(a1 + 16) = 0;
    if (v17)
    {
      operator delete(v17);
    }
  }

  else
  {
    v5 = *a2;
    v6 = a2[2];
    v3[1] = a2[1];
    v3[2] = v6;
    *v3 = v5;
    v7 = (v3 + 3);
  }

  *(a1 + 8) = v7;
}

_BYTE *sub_BDEA4(void *a1, uint64_t a2, int a3)
{
  sub_27A4();
  v22 = (*(qword_6E94F8 + 16))();
  if (a1[2])
  {
    v6 = sub_5544(3);
    v7 = *v6;
    if (*v6)
    {
      if (os_log_type_enabled(*v6, OS_LOG_TYPE_INFO))
      {
        v8 = *a1;
        memset(&v21, 0, sizeof(v21));
        std::string::append(&v21, "{ ", 2uLL);
        if (v8 != a1 + 1)
        {
          while (1)
          {
            v9 = v8[4];
            if (v9)
            {
              (*(*v9 + 112))(__p);
            }

            else
            {
              sub_53E8(__p, "NULL");
            }

            if ((v24 & 0x80u) == 0)
            {
              v10 = __p;
            }

            else
            {
              v10 = __p[0];
            }

            if ((v24 & 0x80u) == 0)
            {
              v11 = v24;
            }

            else
            {
              v11 = __p[1];
            }

            std::string::append(&v21, v10, v11);
            if (v24 < 0)
            {
              operator delete(__p[0]);
            }

            v12 = v8[1];
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
                v13 = v8[2];
                v14 = *v13 == v8;
                v8 = v13;
              }

              while (!v14);
            }

            if (v13 == a1 + 1)
            {
              break;
            }

            std::string::append(&v21, ", ", 2uLL);
            v8 = v13;
          }
        }

        std::string::append(&v21, " }", 2uLL);
        if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v15 = &v21;
        }

        else
        {
          v15 = v21.__r_.__value_.__r.__words[0];
        }

        *buf = 136316162;
        *&buf[4] = "VirtualAudio_PortManager.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 361;
        *&buf[18] = 1024;
        *&buf[20] = a2;
        v26 = 2080;
        v27 = v15;
        v28 = 1024;
        v29 = a3;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, "%25s:%-5d Request to set port routability to %u for ports %s. notify level: %u", buf, 0x28u);
        if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v21.__r_.__value_.__l.__data_);
        }
      }
    }
  }

  *buf = buf;
  *&buf[8] = buf;
  if (*a1 != a1 + 1)
  {
    v16 = *(*a1 + 32);
    v18 = *(v16 + 88);
    v17 = *(v16 + 96);
    if (v17)
    {
      atomic_fetch_add_explicit((v17 + 16), 1uLL, memory_order_relaxed);
    }

    operator new();
  }

  sub_1DB7C8(__p);
  if (*&buf[16])
  {
    v19 = sub_809C0();
    sub_1150D4(v19, buf, a2, a3);
  }

  sub_1DB63C(__p);
  sub_65310(buf);
  return sub_210C50(&v22);
}

void sub_BE22C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, char a26)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_210C50(&a19);
  _Unwind_Resume(a1);
}

uint64_t sub_BE2AC(uint64_t result)
{
  v8 = **(result + 216);
  v6 = 0x676C6F626476706ELL;
  v7 = 0;
  v1 = *(result + 144);
  for (i = *(result + 152); v1 != i; ++v1)
  {
    v3 = *v1;
    if (*v1)
    {
      result = (*(*v3 + 56))(*v1, &v6);
      if (result)
      {
        strcpy(v9, "npvdbolg");
        v9[9] = 0;
        v10 = 0;
        result = sub_42239C(v3, v9, 0, 0, 4, &v8);
        if (result)
        {
          v4 = result;
          exception = __cxa_allocate_exception(0x10uLL);
          *exception = &off_6DDDD0;
          exception[2] = v4;
        }
      }
    }
  }

  return result;
}

void sub_BE3CC(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    v2 = *a1;
    if (v2)
    {
      CFRelease(v2);
    }

    *(a1 + 8) = 0;
  }
}

uint64_t sub_BE40C(uint64_t *a1, void *a2)
{
  v2 = a2[1];
  v10 = *a1;
  for (i = *(a1 + 2); v2 != a2; v2 = v2[1])
  {
    v4 = v2[3];
    if (v4)
    {
      v5 = std::__shared_weak_count::lock(v4);
      if (v5)
      {
        v6 = v5;
        v7 = v2[2];
        if (v7)
        {
          v8 = (*(*v7 + 24))(v7, &v10);
          sub_1A8C0(v6);
          if (v8)
          {
            return 1;
          }
        }

        else
        {
          sub_1A8C0(v6);
        }
      }
    }
  }

  return 0;
}

BOOL sub_BE4E4(uint64_t a1, const AudioObjectPropertyAddress *a2)
{
  v4 = 0;
  mSelector = a2->mSelector;
  if (a2->mSelector <= 1835103843)
  {
    if (mSelector != 1064725619 && mSelector != 1668049764 && mSelector != 1684435056)
    {
      goto LABEL_25;
    }

    return v4;
  }

  if (mSelector == 1835103844 || mSelector == 1937208176)
  {
    return v4;
  }

  if (mSelector == 1986164323)
  {
    v26 = 1886613611;
    v28 = 0;
    v27 = 0uLL;
    sub_4625C(&v27, &v26, &v27, 1uLL);
    *v13 = v27;
    v14 = v28;
    strcpy(v15, "cwdv");
    v15[8] = 0;
    v16 = 3;
    v18[0] = 0;
    v18[1] = 0;
    v17 = v18;
    v19 = 44739242;
    v21 = 0;
    v22 = 0;
    __p = 0;
    sub_161C7C(&v23, a1, v13);
    if (SHIBYTE(v22) < 0)
    {
      operator delete(__p);
    }

    sub_477A0(v18[0]);
    if (v13[0])
    {
      v13[1] = v13[0];
      operator delete(v13[0]);
    }

    if (v25 == 1 && (v9 = *(v24 + 24)) != 0)
    {
      v4 = *(v24 + 16);
      atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v10 = std::__shared_weak_count::lock(v9);
      if (v10)
      {
        v11 = v10;
        if (v4)
        {
          v4 = (*(*v4 + 24))(v4, a2);
        }

        sub_1A8C0(v11);
      }

      else
      {
        v4 = 0;
      }

      std::__shared_weak_count::__release_weak(v9);
    }

    else
    {
      v4 = 0;
    }

    sub_65310(&v23);
    return v4;
  }

LABEL_25:

  return sub_BE734(a1, a2);
}

void sub_BE700(_Unwind_Exception *a1)
{
  sub_1A8C0(v2);
  std::__shared_weak_count::__release_weak(v1);
  sub_65310((v3 - 96));
  _Unwind_Resume(a1);
}

BOOL sub_BE734(uint64_t a1, const AudioObjectPropertyAddress *a2)
{
  sub_4DFC0(a1);
  outIsSettable = 0;
  IsPropertySettable = AudioObjectIsPropertySettable(*(a1 + 268), a2, &outIsSettable);
  if (outIsSettable >= 2u)
  {
    v7 = sub_5544(14);
    v8 = sub_468EC(1, *v7, *(v7 + 8));
    v9 = v8;
    if (v8 && os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v13 = "Device_HAL_Common.mm";
      v14 = 1024;
      v15 = 211;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): The HAL returned a bad value", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "The HAL returned a bad value");
  }

  return !IsPropertySettable && outIsSettable == 1;
}

BOOL sub_BE894(uint64_t a1, const AudioObjectPropertyAddress *a2)
{
  v2 = 0;
  mSelector = a2->mSelector;
  if (a2->mSelector <= 1953790308)
  {
    if (mSelector != 1668576114)
    {
      if (mSelector != 1853059619 && mSelector != 1953002354)
      {
        return sub_BE734(a1, a2);
      }

      return v2;
    }

    return 1;
  }

  if (mSelector == 1986225268 || mSelector == 1986225266)
  {
    return v2;
  }

  if (mSelector == 1953790309)
  {
    return 1;
  }

  return sub_BE734(a1, a2);
}

_BYTE *sub_BE918(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  sub_27A4();
  v66 = (*(qword_6E94F8 + 16))(&qword_6E94F8);
  sub_27A4();
  v10 = atomic_load(&qword_6E9558);
  if (v10 != pthread_self())
  {
    v57 = sub_5544(14);
    v58 = *v57;
    if (*v57 && os_log_type_enabled(*v57, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "RoutingManager.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 2272;
      _os_log_impl(&dword_0, v58, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): Unable to acquire routing mutex.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    v60 = &std::runtime_error::~runtime_error;
    std::runtime_error::runtime_error(exception, "Unable to acquire routing mutex.");
    goto LABEL_122;
  }

  if (*(a3 + 385) == 1)
  {
    sub_27A4();
    v70 = (*(qword_6E94F8 + 16))(&qword_6E94F8);
    v11 = sub_5544(8);
    v12 = sub_5544(35);
    v13 = 0;
    *buf = 0x100000002;
    v14 = *(v11 + 8);
    while (1)
    {
      v15 = *&buf[v13];
      if (((v14 & v15) != 0) != ((*(v12 + 8) & v15) != 0))
      {
        break;
      }

      v13 += 4;
      if (v13 == 8)
      {
        goto LABEL_12;
      }
    }

    if ((v14 & v15) == 0)
    {
      v11 = v12;
    }

LABEL_12:
    v16 = *v11;
    if (v16 && os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      sub_23BB94(&v82, *(a5 + 8), a5);
      v17 = (v82.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v82 : v82.__r_.__value_.__r.__words[0];
      *buf = 136315650;
      *&buf[4] = "RoutingManager.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 5068;
      *&buf[18] = 2080;
      *&buf[20] = v17;
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_INFO, "%25s:%-5d Session update with map %s.", buf, 0x1Cu);
      if (SHIBYTE(v82.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v82.__r_.__value_.__l.__data_);
      }
    }

    sub_764E0(v69, a5);
    sub_7B03C(&v82, (a2 + 72));
    v18 = *(a2 + 184);
    v67[0] = *(a2 + 176);
    v67[1] = v18;
    if (v18)
    {
      atomic_fetch_add_explicit((v18 + 16), 1uLL, memory_order_relaxed);
    }

    v68 = *(a2 + 192);
    LODWORD(v64) = 1918989155;
    sub_C25C0(buf, a2, (a2 + 32), a2 + 48, &v82, a2 + 120, *(a2 + 144), (a2 + 152), a2 + 200, (a2 + 240), *(a2 + 408), v69, v64, a2 + 440, (a2 + 472), *(a2 + 410), v67);
  }

  if (*(a3 + 384) == 1)
  {
    if (a4[2])
    {
      *&buf[8] = 0;
      *&buf[16] = 0;
      *buf = &buf[8];
      sub_17ECC4(a1, a2, a4, buf, 0);
      sub_4B0F4(*&buf[8]);
      return sub_210C50(&v66);
    }

    v62 = sub_5544(14);
    v63 = *v62;
    if (*v62 && os_log_type_enabled(*v62, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "RoutingManager.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 2283;
      _os_log_impl(&dword_0, v63, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    v60 = &std::logic_error::~logic_error;
    std::logic_error::logic_error(exception, "Precondition failure.");
LABEL_122:
    __cxa_throw(exception, v61, v60);
  }

  if (*(a3 + 424))
  {
LABEL_23:
    sub_21991C(a1, 1920099684);
    return sub_210C50(&v66);
  }

  if (*(a3 + 457) == 1)
  {
    if (!*(a2 + 312) && !*(a2 + 352) && !*(a2 + 392))
    {
      v55 = sub_5544(8);
      v56 = *v55;
      if (*v55 && os_log_type_enabled(*v55, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "RoutingManager.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 2306;
        _os_log_impl(&dword_0, v56, OS_LOG_TYPE_DEFAULT, "%25s:%-5d route config is exclusively user preferred input. triggering an internal route change", buf, 0x12u);
      }

      sub_26B850(a1, a2, (a3 + 136));
    }

    v20 = sub_5544(8);
    v21 = *v20;
    if (*v20 && os_log_type_enabled(*v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "RoutingManager.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 2300;
      _os_log_impl(&dword_0, v21, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Ignoring user preferred input. Persistent route is active", buf, 0x12u);
    }

    goto LABEL_23;
  }

  if (a4[2])
  {
    v22 = sub_5544(8);
    v23 = sub_5544(35);
    v24 = 0;
    *buf = 0x100000002;
    v25 = *(v22 + 8);
    while (1)
    {
      v26 = *&buf[v24];
      if (((v25 & v26) != 0) != ((*(v23 + 8) & v26) != 0))
      {
        break;
      }

      v24 += 4;
      if (v24 == 8)
      {
        goto LABEL_39;
      }
    }

    if ((v25 & v26) == 0)
    {
      v22 = v23;
    }

LABEL_39:
    v27 = *v22;
    if (v27 && os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      sub_11DCE8(&v82, a4);
      v28 = (v82.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v82 : v82.__r_.__value_.__r.__words[0];
      *buf = 136315650;
      *&buf[4] = "RoutingManager.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 2317;
      *&buf[18] = 2080;
      *&buf[20] = v28;
      _os_log_impl(&dword_0, v27, OS_LOG_TYPE_INFO, "%25s:%-5d Port update with port map %s.", buf, 0x1Cu);
      if (SHIBYTE(v82.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v82.__r_.__value_.__l.__data_);
      }
    }

    *buf = buf;
    *&buf[8] = buf;
    *&buf[16] = 0;
    v31 = a4[1];
    v30 = a4 + 1;
    v29 = v31;
    if (v31)
    {
      v32 = v30;
      do
      {
        v33 = *(v29 + 32);
        v34 = v33 >= 0x66637275;
        v35 = v33 < 0x66637275;
        if (v34)
        {
          v32 = v29;
        }

        v29 = *(v29 + 8 * v35);
      }

      while (v29);
      if (v32 != v30 && *(v32 + 8) < 0x66637276u)
      {
        sub_11DEAC(v65, a2, v32 + 5);
        sub_65310(v65);
      }
    }

    sub_65310(buf);
  }

  v37 = *a3;
  v36 = *(a3 + 4);
  v38 = sub_BF6FC(a2);
  v39 = sub_BF890(a2);
  if (v38 > 1668313714)
  {
    v41 = 0;
    if (v38 == 1668703084 || v38 == 1668576377)
    {
      goto LABEL_78;
    }

    v40 = 29299;
    goto LABEL_63;
  }

  if (v38 != 1668301427 && v38 != 1668309362)
  {
    v40 = 29250;
LABEL_63:
    if (v38 != (v40 | 0x63700000))
    {
LABEL_77:
      v41 = 1;
      goto LABEL_78;
    }
  }

  v41 = 0;
  if (v39 > 1919776354)
  {
    if (v39 > 1987081832)
    {
      if (v39 == 1987081833)
      {
        goto LABEL_78;
      }

      v43 = 30319;
    }

    else
    {
      if (v39 == 1919776355)
      {
        goto LABEL_78;
      }

      v43 = 26467;
    }

    v42 = v43 | 0x76700000;
  }

  else if (v39 > 1768779618)
  {
    if (v39 == 1768779619)
    {
      goto LABEL_78;
    }

    v42 = 1768781411;
  }

  else
  {
    if (v39 == 1735222132)
    {
      goto LABEL_78;
    }

    v42 = 1768057203;
  }

  if (v39 != v42)
  {
    goto LABEL_77;
  }

LABEL_78:
  if (v37 > 1668313714)
  {
    if (v37 == 1668703084 || v37 == 1668576377)
    {
      goto LABEL_99;
    }

    v44 = 29299;
LABEL_85:
    if (v37 != (v44 | 0x63700000))
    {
      goto LABEL_101;
    }

    goto LABEL_86;
  }

  if (v37 != 1668301427 && v37 != 1668309362)
  {
    v44 = 29250;
    goto LABEL_85;
  }

LABEL_86:
  if (v36 > 1919776354)
  {
    if (v36 > 1987081832)
    {
      if (v36 == 1987081839)
      {
        goto LABEL_99;
      }

      v46 = 30313;
    }

    else
    {
      if (v36 == 1919776355)
      {
        goto LABEL_99;
      }

      v46 = 26467;
    }

    v45 = v46 | 0x76700000;
  }

  else if (v36 > 1768779618)
  {
    if (v36 == 1768779619)
    {
      goto LABEL_99;
    }

    v45 = 1768781411;
  }

  else
  {
    if (v36 == 1735222132)
    {
      goto LABEL_99;
    }

    v45 = 1768057203;
  }

  if (v36 == v45)
  {
LABEL_99:
    if (v41)
    {
      v47 = (*sub_8703C() + 104);
      goto LABEL_103;
    }

    goto LABEL_110;
  }

LABEL_101:
  if ((v41 & 1) == 0)
  {
    v47 = (*sub_8703C() + 112);
LABEL_103:
    v48 = (*v47)();
    memset(buf, 0, 24);
    strcpy(&buf[24], "cwdv");
    v74 = 0;
    v75 = 3;
    v77[0] = 0;
    v77[1] = 0;
    v76 = v77;
    v78 = 44739242;
    v80 = 0;
    v81 = 0;
    v79 = 0;
    LODWORD(v82.__r_.__value_.__l.__data_) = 1886152041;
    sub_AFD28(buf, &v82);
    LODWORD(v82.__r_.__value_.__l.__data_) = 1886152047;
    sub_AFD28(buf, &v82);
    v49 = sub_809C0();
    v82.__r_.__value_.__r.__words[0] = off_6BC4E0;
    v83 = &v82;
    sub_256FB0(v71, v49, buf, &v82);
    sub_85148(&v82);
    if (*&v72[1])
    {
      v50 = sub_26C4B8(a2, v71, v48);
      v51 = v50;
      if (v50 >= 0x100u)
      {
        v52 = sub_809C0();
        sub_1150D4(v52, v71, v51 & 1, 0);
      }
    }

    sub_65310(v71);
    if (SHIBYTE(v81) < 0)
    {
      operator delete(v79);
    }

    sub_477A0(v77[0]);
    if (*buf)
    {
      *&buf[8] = *buf;
      operator delete(*buf);
    }
  }

LABEL_110:
  v53 = *(a3 + 32);
  sub_764E0(buf, a5);
  if (v53)
  {
    v54 = 1919907442;
  }

  else
  {
    v54 = 1919970403;
  }

  sub_BFA24(a1, a2, a3, buf, v54);
  v82.__r_.__value_.__r.__words[0] = buf;
  sub_9DD40(&v82);
  return sub_210C50(&v66);
}

uint64_t sub_BF6FC(uint64_t a1)
{
  sub_27A4();
  v8 = (*(qword_6E94F8 + 16))();
  sub_27A4();
  v2 = atomic_load(&qword_6E9558);
  if (v2 != pthread_self())
  {
    v5 = sub_5544(14);
    v6 = *v5;
    if (*v5 && os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v10 = "RoutingManager.cpp";
      v11 = 1024;
      v12 = 2339;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): Unable to acquire routing mutex.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Unable to acquire routing mutex.");
  }

  v3 = *(a1 + 32);
  sub_210C50(&v8);
  return v3;
}

void sub_BF858(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  __cxa_free_exception(v13);
  sub_210C50(&a13);
  _Unwind_Resume(a1);
}

uint64_t sub_BF890(uint64_t a1)
{
  sub_27A4();
  v8 = (*(qword_6E94F8 + 16))();
  sub_27A4();
  v2 = atomic_load(&qword_6E9558);
  if (v2 != pthread_self())
  {
    v5 = sub_5544(14);
    v6 = *v5;
    if (*v5 && os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v10 = "RoutingManager.cpp";
      v11 = 1024;
      v12 = 2348;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): Unable to acquire routing mutex.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Unable to acquire routing mutex.");
  }

  v3 = *(a1 + 36);
  sub_210C50(&v8);
  return v3;
}

void sub_BF9EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  __cxa_free_exception(v13);
  sub_210C50(&a13);
  _Unwind_Resume(a1);
}

uint64_t sub_BFA24(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, int a5)
{
  kdebug_trace();
  sub_27A4();
  v7 = atomic_load(&qword_6E9558);
  if (v7 != pthread_self())
  {
    v195 = sub_5544(14);
    v196 = *v195;
    if (*v195 && os_log_type_enabled(*v195, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "RoutingManager.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 5095;
      _os_log_impl(&dword_0, v196, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  if ((a5 != 1919907442) != (*(a3 + 32) == 0))
  {
    v198 = sub_5544(14);
    v199 = *v198;
    if (*v198 && os_log_type_enabled(*v198, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "RoutingManager.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 5097;
      _os_log_impl(&dword_0, v199, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    v200 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v200, "Precondition failure.");
  }

  v8 = sub_5544(8);
  v9 = sub_5544(35);
  v10 = 0;
  *buf = 0x100000002;
  v11 = *(v8 + 8);
  while (1)
  {
    v12 = *&buf[v10];
    if (((v11 & v12) != 0) != ((*(v9 + 8) & v12) != 0))
    {
      break;
    }

    v10 += 4;
    if (v10 == 8)
    {
      goto LABEL_9;
    }
  }

  if ((v11 & v12) == 0)
  {
    v8 = v9;
  }

LABEL_9:
  v13 = *v8;
  if (v13 && os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    sub_BCD50(&__p, a3);
    v14 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
    *buf = 136315650;
    *&buf[4] = "RoutingManager.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 5099;
    *&buf[18] = 2080;
    *&buf[20] = v14;
    _os_log_impl(&dword_0, v13, OS_LOG_TYPE_INFO, "%25s:%-5d Set route configuration %s.", buf, 0x1Cu);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  if (*(a3 + 380) == 1)
  {
    *(a2 + 576) = *(a3 + 376) == 1;
  }

  *(a2 + 410) = *(a3 + 456);
  v215 = a3;
  sub_7EDC8(&__p, a2, a3);
  v224 = a2;
  if (sub_C2448(v234))
  {
    sub_27A4();
    v15 = atomic_load(&qword_6E9558);
    if (v15 != pthread_self())
    {
      v201 = sub_5544(14);
      v202 = *v201;
      if (*v201 && os_log_type_enabled(*v201, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "RoutingManager.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 5907;
        _os_log_impl(&dword_0, v202, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
      }

      v203 = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(v203, "Precondition failure.");
    }

    v225 = &v225;
    v226[0] = &v225;
    v226[1] = 0;
    v16 = v234;
    if (v234 == 1986357346)
    {
      if ((sub_DF1EC(1986357346) & 1) == 0)
      {
        memset(buf, 0, 24);
        strcpy(&buf[24], "cwdv");
        buf[32] = 0;
        v256 = 3;
        v259 = 0;
        v258 = 0;
        v257 = &v258;
        v260 = 44739242;
        memset(v261, 0, 24);
        *__dst = 1886614633;
        sub_AFD28(buf, __dst);
        *__dst = 1886609775;
        sub_AFD28(buf, __dst);
        if ((sub_116A34() & 1) == 0)
        {
          *__dst = 1886614639;
          sub_AFD28(buf, __dst);
          *__dst = 1886614625;
          sub_AFD28(buf, __dst);
        }

        v20 = sub_809C0();
        *__dst = off_6BC4E0;
        *&__dst[24] = __dst;
        sub_256FB0(&v249, v20, buf, __dst);
        sub_11DB30(&v225, &v249);
        sub_65310(&v249);
        sub_85148(__dst);
        if (!v226[1])
        {
          v211 = sub_5544(14);
          v212 = *v211;
          if (*v211 && os_log_type_enabled(*v211, OS_LOG_TYPE_ERROR))
          {
            *__dst = 136315394;
            *&__dst[4] = "RoutingManager.cpp";
            *&__dst[12] = 1024;
            *&__dst[14] = 5939;
            _os_log_impl(&dword_0, v212, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): Could not find CarPlay device for activation", __dst, 0x12u);
          }

          v213 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v213, "Could not find CarPlay device for activation");
        }

        goto LABEL_37;
      }

      v16 = v234;
    }

    else if (v234 == 1651794544)
    {
      memset(buf, 0, 24);
      strcpy(&buf[24], "cwdv");
      buf[32] = 0;
      v256 = 3;
      v259 = 0;
      v258 = 0;
      v257 = &v258;
      v260 = 44739242;
      memset(v261, 0, 24);
      *__dst = 1886216820;
      sub_AFD28(buf, __dst);
      *__dst = 1885892706;
      sub_AFD28(buf, __dst);
      std::string::operator=(v261, &v235);
      v17 = sub_809C0();
      *__dst = off_6BC4E0;
      *&__dst[24] = __dst;
      sub_256FB0(&v249, v17, buf, __dst);
      sub_11DB30(&v225, &v249);
      sub_65310(&v249);
      sub_85148(__dst);
      if (!v226[1])
      {
        v204 = sub_5544(14);
        v205 = *v204;
        if (*v204 && os_log_type_enabled(*v204, OS_LOG_TYPE_ERROR))
        {
          if ((v235.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v206 = &v235;
          }

          else
          {
            v206 = v235.__r_.__value_.__r.__words[0];
          }

          *__dst = 136315650;
          *&__dst[4] = "RoutingManager.cpp";
          *&__dst[12] = 1024;
          *&__dst[14] = 5918;
          *&__dst[18] = 2080;
          *&__dst[20] = v206;
          _os_log_impl(&dword_0, v205, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): Could not find Bluetooth device with matching device ID: %s for activation", __dst, 0x1Cu);
        }

        v207 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v207, "Could not find Bluetooth device with matching device ID: %s for activation");
      }

      v18 = sub_809C0();
      sub_1150D4(v18, &v225, 1, 1);
      goto LABEL_37;
    }

    if (v16 != 845504882 && v16 != 1768764005 && v16 != 1635213689)
    {
      goto LABEL_41;
    }

    if (qword_6E8528 != -1)
    {
      dispatch_once(&qword_6E8528, &stru_6BD0C8);
    }

    if (byte_6E8520)
    {
      goto LABEL_41;
    }

    memset(buf, 0, 24);
    v256 = 3;
    v259 = 0;
    v258 = 0;
    v257 = &v258;
    memset(v261, 0, 24);
    *&buf[24] = 1986295651;
    *&buf[28] = HIDWORD(__p.__r_.__value_.__r.__words[0]);
    buf[32] = 1;
    v260 = 44722858;
    v19 = sub_809C0();
    *__dst = off_6BC4E0;
    *&__dst[24] = __dst;
    sub_2574C4(&v249, v19, buf, __dst);
    sub_85148(__dst);
    if (v251)
    {
      v208 = sub_5544(14);
      v209 = *v208;
      if (*v208 && os_log_type_enabled(*v208, OS_LOG_TYPE_ERROR))
      {
        *__dst = 136315394;
        *&__dst[4] = "RoutingManager.cpp";
        *&__dst[12] = 1024;
        *&__dst[14] = 5953;
        _os_log_impl(&dword_0, v209, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): activation with motion gesture while a non-built-in mode-capable port is connected", __dst, 0x12u);
      }

      v210 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v210, "activation with motion gesture while a non-built-in mode-capable port is connected");
    }

    sub_65310(&v249);
LABEL_37:
    if (SHIBYTE(v261[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v261[0].__r_.__value_.__l.__data_);
    }

    sub_477A0(v258);
    if (*buf)
    {
      *&buf[8] = *buf;
      operator delete(*buf);
    }

LABEL_41:
    v249 = &v249;
    v250 = &v249;
    v251 = 0;
    sub_11DEAC(&v248, a2, &v225);
    sub_65310(&v248);
    v244 = 0;
    v243 = 0;
    v245 = 0;
    switch(v234)
    {
      case 1651794544:
        *buf = 1886216820;
        sub_AFD28(&v243, buf);
        *buf = 1885892706;
        sub_AFD28(&v243, buf);
        break;
      case 1986357346:
        if ((sub_DF1EC(1986357346) & 1) == 0)
        {
          *buf = 1886614633;
          sub_AFD28(&v243, buf);
          if ((sub_116A34() & 1) == 0)
          {
            *buf = 1886614639;
            sub_AFD28(&v243, buf);
            *buf = 1886614625;
            sub_AFD28(&v243, buf);
          }
        }

        break;
      case 2003329648:
        *buf = 1886222185;
        sub_AFD28(&v243, buf);
        *buf = 1885892727;
        sub_AFD28(&v243, buf);
        break;
    }

    v21 = v243;
    v223 = v244;
    if (v243 != v244)
    {
      while (1)
      {
        v22 = *v21;
        v23 = HIDWORD(__p.__r_.__value_.__r.__words[0]);
        sub_27A4();
        v24 = atomic_load(&qword_6E9558);
        if (v24 != pthread_self())
        {
          v187 = sub_5544(14);
          v188 = *v187;
          if (*v187 && os_log_type_enabled(*v187, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "RoutingManager.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 6007;
            _os_log_impl(&dword_0, v188, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
          }

          v189 = __cxa_allocate_exception(0x10uLL);
          std::logic_error::logic_error(v189, "Precondition failure.");
        }

        v25 = sub_5544(8);
        if (*(v25 + 8))
        {
          v26 = *v25;
          if (*v25)
          {
            if (os_log_type_enabled(*v25, OS_LOG_TYPE_DEBUG))
            {
              sub_22170(__dst, v22);
              v27 = __dst;
              if (__dst[23] < 0)
              {
                v27 = *__dst;
              }

              if ((v235.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v28 = &v235;
              }

              else
              {
                v28 = v235.__r_.__value_.__r.__words[0];
              }

              *buf = 136315906;
              *&buf[4] = "RoutingManager.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 6009;
              *&buf[18] = 2080;
              *&buf[20] = v27;
              *&buf[28] = 2080;
              *&buf[30] = v28;
              _os_log_impl(&dword_0, v26, OS_LOG_TYPE_DEBUG, "%25s:%-5d Manipulating last-in stack for port type %s and uid: %s", buf, 0x26u);
              if ((__dst[23] & 0x80000000) != 0)
              {
                operator delete(*__dst);
              }
            }
          }
        }

        v29 = *(a2 + 528);
        v30 = *(a2 + 536);
        if (v29 == v30)
        {
          goto LABEL_92;
        }

        do
        {
          sub_25704(__dst, v29, "", 6012);
          v31 = *(*__dst + 144);
          v32 = HIBYTE(v235.__r_.__value_.__r.__words[2]);
          v33 = HIBYTE(v235.__r_.__value_.__r.__words[2]);
          size = v235.__r_.__value_.__l.__size_;
          if ((v235.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v35 = HIBYTE(v235.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v35 = v235.__r_.__value_.__l.__size_;
          }

          if (!v35)
          {
            v36 = 1;
            goto LABEL_86;
          }

          if (*(*__dst + 303) < 0)
          {
            sub_54A0(buf, *(*__dst + 280), *(*__dst + 288));
            v32 = HIBYTE(v235.__r_.__value_.__r.__words[2]);
            size = v235.__r_.__value_.__l.__size_;
            v33 = HIBYTE(v235.__r_.__value_.__r.__words[2]);
          }

          else
          {
            *buf = *(*__dst + 280);
            *&buf[16] = *(*__dst + 296);
          }

          if (v33 >= 0)
          {
            v37 = v32;
          }

          else
          {
            v37 = size;
          }

          v38 = buf[23];
          v39 = buf[23];
          if (buf[23] < 0)
          {
            v38 = *&buf[8];
          }

          if (v37 != v38)
          {
            v36 = 0;
            if ((buf[23] & 0x80000000) == 0)
            {
              goto LABEL_86;
            }

LABEL_85:
            operator delete(*buf);
            goto LABEL_86;
          }

          if (v33 >= 0)
          {
            v40 = &v235;
          }

          else
          {
            v40 = v235.__r_.__value_.__r.__words[0];
          }

          if (buf[23] >= 0)
          {
            v41 = buf;
          }

          else
          {
            v41 = *buf;
          }

          v36 = memcmp(v40, v41, v37) == 0;
          if (v39 < 0)
          {
            goto LABEL_85;
          }

LABEL_86:
          if (*&__dst[8])
          {
            sub_1A8C0(*&__dst[8]);
          }

          if (v31 == v22 && v36)
          {
            goto LABEL_91;
          }

          v29 += 2;
        }

        while (v29 != v30);
        v29 = v30;
LABEL_91:
        v30 = *(a2 + 536);
LABEL_92:
        if (v29 == v30)
        {
          goto LABEL_153;
        }

        sub_25704(buf, v29, "", 6018);
        v42 = sub_84264(*buf, v23);
        if (*&buf[8])
        {
          sub_1A8C0(*&buf[8]);
        }

        if (!v42)
        {
          goto LABEL_153;
        }

        sub_25704(&v252, v29, "", 6020);
        v43 = *(a2 + 528);
        v44 = *(a2 + 536);
        if (v43 != v44)
        {
          while (1)
          {
            sub_25704(buf, v43, "", 6024);
            v45 = sub_84264(*buf, v23);
            if (*&buf[8])
            {
              sub_1A8C0(*&buf[8]);
            }

            if (v45)
            {
              break;
            }

            v43 += 2;
            if (v43 == v44)
            {
              v43 = v44;
              break;
            }
          }

          v44 = *(a2 + 536);
        }

        if (v43 == v44)
        {
          v193 = sub_5544(14);
          v194 = *v193;
          if (*v193 && os_log_type_enabled(*v193, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "RoutingManager.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 6027;
            _os_log_impl(&dword_0, v194, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): No capable port found", buf, 0x12u);
          }

          v192 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v192, "No capable port found");
LABEL_466:
        }

        if (v43 > v29)
        {
          v190 = sub_5544(14);
          v191 = *v190;
          if (*v190 && os_log_type_enabled(*v190, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "RoutingManager.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 6028;
            _os_log_impl(&dword_0, v191, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): Invalid iterator for top mode-capable port", buf, 0x12u);
          }

          v192 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v192, "Invalid iterator for top mode-capable port");
          goto LABEL_466;
        }

        sub_25704(&v246, v43, "", 6030);
        v46 = HIBYTE(v235.__r_.__value_.__r.__words[2]);
        v47 = HIBYTE(v235.__r_.__value_.__r.__words[2]);
        v48 = v235.__r_.__value_.__l.__size_;
        if ((v235.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v49 = HIBYTE(v235.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v49 = v235.__r_.__value_.__l.__size_;
        }

        v50 = v246;
        if (v49)
        {
          if (*(v246 + 303) < 0)
          {
            sub_54A0(buf, *(v246 + 280), *(v246 + 288));
            v46 = HIBYTE(v235.__r_.__value_.__r.__words[2]);
            v48 = v235.__r_.__value_.__l.__size_;
            v47 = HIBYTE(v235.__r_.__value_.__r.__words[2]);
          }

          else
          {
            *buf = *(v246 + 280);
            *&buf[16] = *(v246 + 296);
          }

          if (v47 >= 0)
          {
            v52 = v46;
          }

          else
          {
            v52 = v48;
          }

          v53 = buf[23];
          v54 = buf[23];
          if (buf[23] < 0)
          {
            v53 = *&buf[8];
          }

          if (v52 == v53)
          {
            if (v47 >= 0)
            {
              v55 = &v235;
            }

            else
            {
              v55 = v235.__r_.__value_.__r.__words[0];
            }

            if (buf[23] >= 0)
            {
              v56 = buf;
            }

            else
            {
              v56 = *buf;
            }

            v51 = memcmp(v55, v56, v52) != 0;
            if (v54 < 0)
            {
LABEL_128:
              operator delete(*buf);
            }
          }

          else
          {
            v51 = 1;
            if ((buf[23] & 0x80000000) != 0)
            {
              goto LABEL_128;
            }
          }
        }

        else
        {
          v51 = 0;
        }

        if (*(v50 + 144) != v22 || v51)
        {
          v57 = v252;
          if (v252)
          {
            v58 = sub_5544(8);
            if (*(v58 + 8))
            {
              v59 = *v58;
              if (*v58)
              {
                if (os_log_type_enabled(*v58, OS_LOG_TYPE_DEBUG))
                {
                  sub_23148(__dst, v57 + 2);
                  v60 = __dst;
                  if (__dst[23] < 0)
                  {
                    v60 = *__dst;
                  }

                  *buf = 136315650;
                  *&buf[4] = "RoutingManager.cpp";
                  *&buf[12] = 1024;
                  *&buf[14] = 6039;
                  *&buf[18] = 2080;
                  *&buf[20] = v60;
                  _os_log_impl(&dword_0, v59, OS_LOG_TYPE_DEBUG, "%25s:%-5d Found and removed port from mCachedPortStack: %s", buf, 0x1Cu);
                  if ((__dst[23] & 0x80000000) != 0)
                  {
                    operator delete(*__dst);
                  }
                }
              }
            }

            v61 = sub_116AA8(*(a2 + 528), *(a2 + 536), &v252);
            sub_116CDC((a2 + 528), v61, *(a2 + 536));
            v62 = sub_5544(8);
            if (*(v62 + 8))
            {
              v63 = *v62;
              if (*v62)
              {
                if (os_log_type_enabled(*v62, OS_LOG_TYPE_DEBUG))
                {
                  sub_23148(__dst, v57 + 2);
                  v64 = __dst;
                  if (__dst[23] < 0)
                  {
                    v64 = *__dst;
                  }

                  *buf = 136315650;
                  *&buf[4] = "RoutingManager.cpp";
                  *&buf[12] = 1024;
                  *&buf[14] = 6047;
                  *&buf[18] = 2080;
                  *&buf[20] = v64;
                  _os_log_impl(&dword_0, v63, OS_LOG_TYPE_DEBUG, "%25s:%-5d Elevated port on mCachedPortStack: %s", buf, 0x1Cu);
                  if ((__dst[23] & 0x80000000) != 0)
                  {
                    operator delete(*__dst);
                  }
                }
              }
            }

            *buf = v57;
            *&buf[8] = v253;
            if (v253)
            {
              atomic_fetch_add_explicit(&v253->__shared_weak_owners_, 1uLL, memory_order_relaxed);
            }

            sub_11E738((a2 + 528), v43, buf);
            if (*&buf[8])
            {
              std::__shared_weak_count::__release_weak(*&buf[8]);
            }
          }
        }

        if (v247)
        {
          sub_1A8C0(v247);
        }

        if (v253)
        {
          sub_1A8C0(v253);
        }

LABEL_153:
        if (++v21 == v223)
        {
          v21 = v243;
          break;
        }
      }
    }

    if (v21)
    {
      operator delete(v21);
    }

    sub_65310(&v249);
    sub_65310(&v225);
  }

  v65 = v242;
  if ((v242 & 0x80u) != 0)
  {
    v65 = v241;
  }

  if (!v65)
  {
    goto LABEL_390;
  }

  v66 = *(a2 + 528);
  v67 = *(a2 + 536);
  if (v66 == v67)
  {
    goto LABEL_206;
  }

  v221 = *(a2 + 536);
  do
  {
    v68 = v66[1];
    v225 = *v66;
    v226[0] = v68;
    if (v68)
    {
      atomic_fetch_add_explicit(&v68->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    sub_25704(__dst, &v225, "", 6059);
    if (*(*__dst + 303) < 0)
    {
      sub_54A0(buf, *(*__dst + 280), *(*__dst + 288));
    }

    else
    {
      *buf = *(*__dst + 280);
      *&buf[16] = *(*__dst + 296);
    }

    v69 = buf[23];
    v70 = buf[23];
    v71 = *buf;
    if (buf[23] >= 0)
    {
      v72 = buf;
    }

    else
    {
      v72 = *buf;
    }

    if (buf[23] < 0)
    {
      v69 = *&buf[8];
    }

    if ((v242 & 0x80u) == 0)
    {
      v73 = &v240;
    }

    else
    {
      v73 = v240;
    }

    if ((v242 & 0x80u) == 0)
    {
      v74 = v242;
    }

    else
    {
      v74 = v241;
    }

    if (v74)
    {
      v75 = &v72[v69];
      if (v69 >= v74)
      {
        v79 = *v73;
        v80 = v72;
        do
        {
          v81 = v69 - v74;
          if (v81 == -1)
          {
            break;
          }

          v82 = memchr(v80, v79, v81 + 1);
          if (!v82)
          {
            break;
          }

          v76 = v82;
          if (!memcmp(v82, v73, v74))
          {
            goto LABEL_182;
          }

          v80 = v76 + 1;
          v69 = v75 - (v76 + 1);
        }

        while (v69 >= v74);
      }

      v76 = v75;
LABEL_182:
      v78 = v76 != v75 && v76 - v72 != -1;
      a2 = v224;
      v67 = v221;
      if (v70 < 0)
      {
LABEL_189:
        operator delete(v71);
      }
    }

    else
    {
      v78 = 1;
      a2 = v224;
      if ((buf[23] & 0x80000000) != 0)
      {
        goto LABEL_189;
      }
    }

    if (*&__dst[8])
    {
      sub_1A8C0(*&__dst[8]);
    }

    if (v68)
    {
      std::__shared_weak_count::__release_weak(v68);
    }

    if (v78)
    {
      goto LABEL_205;
    }

    v66 += 2;
  }

  while (v66 != v67);
  v66 = v67;
LABEL_205:
  v67 = *(a2 + 536);
LABEL_206:
  if (v66 == v67)
  {
    v99 = sub_5544(8);
    v100 = *v99;
    if (!*v99 || !os_log_type_enabled(*v99, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_390;
    }

    v101 = &v240;
    if ((v242 & 0x80u) != 0)
    {
      v101 = v240;
    }

    *buf = 136315650;
    *&buf[4] = "RoutingManager.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 6063;
    *&buf[18] = 2080;
    *&buf[20] = v101;
    v102 = "%25s:%-5d Failed to find fallback device UID: %s";
    v103 = v100;
    v104 = 28;
LABEL_262:
    _os_log_impl(&dword_0, v103, OS_LOG_TYPE_ERROR, v102, buf, v104);
    goto LABEL_390;
  }

  v83 = v66;
  v222 = v67;
  while (1)
  {
    v84 = v83[1];
    v225 = *v83;
    v226[0] = v84;
    if (v84)
    {
      atomic_fetch_add_explicit(&v84->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    sub_25704(__dst, &v225, "", 6068);
    if (*(*__dst + 303) < 0)
    {
      sub_54A0(buf, *(*__dst + 280), *(*__dst + 288));
    }

    else
    {
      *buf = *(*__dst + 280);
      *&buf[16] = *(*__dst + 296);
    }

    v85 = buf[23];
    v86 = buf[23];
    v87 = *buf;
    if (buf[23] >= 0)
    {
      v88 = buf;
    }

    else
    {
      v88 = *buf;
    }

    if (buf[23] < 0)
    {
      v85 = *&buf[8];
    }

    v89 = (v242 & 0x80u) == 0 ? &v240 : v240;
    v90 = (v242 & 0x80u) == 0 ? v242 : v241;
    if (v90)
    {
      v219 = v83;
      v91 = &v88[v85];
      if (v85 >= v90)
      {
        v95 = *v89;
        v96 = v88;
        do
        {
          v97 = v85 - v90;
          if (v97 == -1)
          {
            break;
          }

          v98 = memchr(v96, v95, v97 + 1);
          if (!v98)
          {
            break;
          }

          v92 = v98;
          if (!memcmp(v98, v89, v90))
          {
            goto LABEL_227;
          }

          v96 = v92 + 1;
          v85 = v91 - (v92 + 1);
        }

        while (v85 >= v90);
      }

      v92 = v91;
LABEL_227:
      v93 = v92 == v91 || v92 - v88 == -1;
      v94 = v93;
      a2 = v224;
      v83 = v219;
    }

    else
    {
      v94 = 0;
      a2 = v224;
    }

    if (v86 < 0)
    {
      operator delete(v87);
    }

    if (*&__dst[8])
    {
      sub_1A8C0(*&__dst[8]);
    }

    if (v84)
    {
      std::__shared_weak_count::__release_weak(v84);
    }

    if (v94)
    {
      break;
    }

    v83 += 2;
    if (v83 == v222)
    {
      v83 = v222;
      break;
    }
  }

  v105 = *(a2 + 536);
  if (v83 == v105)
  {
    v106 = sub_5544(8);
    v107 = *v106;
    if (!*v106 || !os_log_type_enabled(*v106, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_390;
    }

    *buf = 136315394;
    *&buf[4] = "RoutingManager.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 6073;
    v102 = "%25s:%-5d Failed to add fallback device because there are no devices that can be used instead of the fallback device";
    v103 = v107;
    v104 = 18;
    goto LABEL_262;
  }

  if (v66 != v105)
  {
    sub_26BF70(a2);
    sub_25704(&v249, v83, "", 6083);
    if (*(v249 + 303) < 0)
    {
      sub_54A0(__dst, *(v249 + 280), *(v249 + 288));
    }

    else
    {
      *__dst = *(v249 + 280);
      *&__dst[16] = *(v249 + 296);
    }

    sub_34DE34(buf, __dst);
    sub_26C200(&v225, a2, buf);
    if ((buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    if ((__dst[23] & 0x80000000) != 0)
    {
      operator delete(*__dst);
    }

    if (v250)
    {
      sub_1A8C0(v250);
    }

    sub_25704(buf, v83, "", 6086);
    v108 = (*(**buf + 288))(*buf);
    if (*&buf[8])
    {
      sub_1A8C0(*&buf[8]);
    }

    if (v108)
    {
      sub_25704(buf, v83, "", 6088);
      (*(**buf + 272))(&v249);
      if (*&buf[8])
      {
        sub_1A8C0(*&buf[8]);
      }

      v109 = v250;
      if (v250 != &v249)
      {
        v220 = v83;
        while (1)
        {
          v110 = v109[3];
          v252 = v109[2];
          v253 = v110;
          if (v110)
          {
            atomic_fetch_add_explicit(&v110->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          }

          sub_25704(&v248, &v252, "", 6093);
          if (*(v248.__r_.__value_.__r.__words[0] + 303) < 0)
          {
            sub_54A0(buf, *(v248.__r_.__value_.__r.__words[0] + 280), *(v248.__r_.__value_.__r.__words[0] + 288));
          }

          else
          {
            *buf = *(v248.__r_.__value_.__r.__words[0] + 280);
            *&buf[16] = *(v248.__r_.__value_.__r.__words[0] + 296);
          }

          sub_25704(&v243, v83, "", 6093);
          if (*(v243 + 303) < 0)
          {
            sub_54A0(__dst, *(v243 + 35), *(v243 + 36));
          }

          else
          {
            *__dst = *(v243 + 280);
            *&__dst[16] = *(v243 + 37);
          }

          v111 = buf[23];
          if (buf[23] >= 0)
          {
            v112 = buf;
          }

          else
          {
            v112 = *buf;
          }

          if (buf[23] < 0)
          {
            v111 = *&buf[8];
          }

          v113 = __dst[23];
          v114 = *__dst;
          v115 = __dst[23] >= 0 ? __dst : *__dst;
          v116 = __dst[23] >= 0 ? __dst[23] : *&__dst[8];
          if (!v116)
          {
            break;
          }

          v117 = &v112[v111];
          if (v111 >= v116)
          {
            v120 = *v115;
            v121 = v112;
            do
            {
              v122 = v111 - v116;
              if (v122 == -1)
              {
                break;
              }

              v123 = memchr(v121, v120, v122 + 1);
              if (!v123)
              {
                break;
              }

              v118 = v123;
              if (!memcmp(v123, v115, v116))
              {
                goto LABEL_307;
              }

              v121 = v118 + 1;
              v111 = v117 - (v118 + 1);
            }

            while (v111 >= v116);
            v118 = v117;
          }

          else
          {
            v118 = &v112[v111];
          }

LABEL_307:
          v119 = v118 == v117 || v118 - v112 == -1;
          v83 = v220;
          if (v113 < 0)
          {
            goto LABEL_314;
          }

LABEL_315:
          if (v244)
          {
            sub_1A8C0(v244);
          }

          if ((buf[23] & 0x80000000) != 0)
          {
            operator delete(*buf);
          }

          if (v248.__r_.__value_.__l.__size_)
          {
            sub_1A8C0(v248.__r_.__value_.__l.__size_);
          }

          if (v110)
          {
            std::__shared_weak_count::__release_weak(v110);
          }

          if (v119)
          {
            goto LABEL_326;
          }

          v109 = v109[1];
          if (v109 == &v249)
          {
            goto LABEL_353;
          }
        }

        v119 = 0;
        if ((__dst[23] & 0x80000000) == 0)
        {
          goto LABEL_315;
        }

LABEL_314:
        operator delete(v114);
        goto LABEL_315;
      }

LABEL_326:
      if (v109 != &v249)
      {
        sub_25704(&v243, v109 + 2, "", 6098);
        if (*(v243 + 303) < 0)
        {
          sub_54A0(&v248, *(v243 + 35), *(v243 + 36));
        }

        else
        {
          v248 = *(v243 + 280);
        }

        sub_34DE34(buf, &v248);
        sub_26C200(__dst, v224, buf);
        if ((buf[23] & 0x80000000) != 0)
        {
          operator delete(*buf);
        }

        if (SHIBYTE(v248.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v248.__r_.__value_.__l.__data_);
        }

        if (v244)
        {
          sub_1A8C0(v244);
        }

        v125 = *__dst;
        v126 = *&__dst[8] - *__dst;
        v127 = (*&__dst[8] - *__dst) >> 4;
        if (v127 >= 1)
        {
          v128 = v226[0];
          if (v226[1] - v226[0] >= v126)
          {
            v226[0] = sub_D7B84(&v225, *__dst, *&__dst[8], v226[0]);
          }

          else
          {
            v129 = v127 + ((v226[0] - v225) >> 4);
            if (v129 >> 60)
            {
              sub_189A00();
            }

            v130 = v226[1] - v225;
            if ((v226[1] - v225) >> 3 > v129)
            {
              v129 = v130 >> 3;
            }

            if (v130 >= 0x7FFFFFFFFFFFFFF0)
            {
              v131 = 0xFFFFFFFFFFFFFFFLL;
            }

            else
            {
              v131 = v129;
            }

            *&buf[32] = &v225;
            if (v131)
            {
              sub_1DC690(v131);
            }

            v132 = 16 * ((v226[0] - v225) >> 4);
            *&buf[24] = 0;
            v133 = (v132 + v126);
            v134 = v132;
            do
            {
              *v134 = *v125;
              v135 = v125[1];
              v134[1] = v135;
              if (v135)
              {
                atomic_fetch_add_explicit((v135 + 16), 1uLL, memory_order_relaxed);
              }

              v134 += 2;
              v125 += 2;
            }

            while (v134 != v133);
            memcpy((v132 + v126), v128, v226[0] - v128);
            v136 = v133 + v226[0] - v128;
            v226[0] = v128;
            v137 = v128 - v225;
            v138 = (v132 - (v128 - v225));
            memcpy(v138, v225, v137);
            v139 = v225;
            v140 = v226[1];
            v225 = v138;
            v226[0] = v136;
            v226[1] = *&buf[24];
            *&buf[16] = v139;
            *&buf[24] = v140;
            *&buf[8] = v139;
            *buf = v139;
            sub_B1540(buf);
          }
        }

        *buf = __dst;
        sub_86D0C(buf);
      }

LABEL_353:
      sub_65310(&v249);
    }

    v141 = v226[0];
    if (v226[0] != v225)
    {
      while (2)
      {
        v141 -= 2;
        sub_25704(&v248, v141, "", 6106);
        v142 = sub_116AA8(*(v224 + 528), *(v224 + 536), &v248);
        sub_116CDC((v224 + 528), v142, *(v224 + 536));
        v143 = *(v224 + 528);
        v144 = *&v248.__r_.__value_.__l.__data_;
        *buf = *&v248.__r_.__value_.__l.__data_;
        if (v248.__r_.__value_.__l.__size_)
        {
          atomic_fetch_add_explicit((v248.__r_.__value_.__l.__size_ + 16), 1uLL, memory_order_relaxed);
        }

        sub_11E738((v224 + 528), v143, buf);
        if (*&buf[8])
        {
          std::__shared_weak_count::__release_weak(*&buf[8]);
        }

        v145 = sub_809C0();
        if (*(&v144 + 1))
        {
          v146 = v145;
          atomic_fetch_add_explicit((*(&v144 + 1) + 16), 1uLL, memory_order_relaxed);
          v147 = std::__shared_weak_count::lock(*(&v144 + 1));
          if (v147 && v144)
          {
            v249 = v146;
            LOBYTE(v250) = 1;
            sub_26C0(v146);
            v148 = sub_115164(v146 + 288, v144);
            if (v146 + 288 != v148)
            {
              v149 = v148;
              sub_47BD8(v146);
              sub_11DC68(*(v146 + 672));
              *(v146 + 664) = v146 + 672;
              *(v146 + 672) = 0u;
              v150 = sub_5544(9);
              v151 = *v150;
              if (*v150 && os_log_type_enabled(*v150, OS_LOG_TYPE_DEFAULT))
              {
                sub_23148(__dst, (v144 + 8));
                v152 = __dst;
                if (__dst[23] < 0)
                {
                  v152 = *__dst;
                }

                *buf = 136315650;
                *&buf[4] = "PortManager.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 398;
                *&buf[18] = 2080;
                *&buf[20] = v152;
                _os_log_impl(&dword_0, v151, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Moving port to top of mConnectedPorts: %s", buf, 0x1Cu);
                if ((__dst[23] & 0x80000000) != 0)
                {
                  operator delete(*__dst);
                }
              }

              *buf = v149;
              sub_11C288((v146 + 288), buf);
              sub_11C624(v146 + 288, v144);
            }

            v155 = sub_5544(9);
            v156 = *v155;
            if (*v155 && os_log_type_enabled(*v155, OS_LOG_TYPE_ERROR))
            {
              sub_23148(__dst, (v144 + 8));
              v157 = __dst;
              if (__dst[23] < 0)
              {
                v157 = *__dst;
              }

              *buf = 136315650;
              *&buf[4] = "PortManager.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 404;
              *&buf[18] = 2080;
              *&buf[20] = v157;
              _os_log_impl(&dword_0, v156, OS_LOG_TYPE_ERROR, "%25s:%-5d Port not found in mConnectedPorts: %s", buf, 0x1Cu);
              if ((__dst[23] & 0x80000000) != 0)
              {
                operator delete(*__dst);
              }
            }

            sub_3174(v146);
            goto LABEL_376;
          }
        }

        else
        {
          v147 = 0;
        }

        v153 = sub_5544(9);
        v154 = *v153;
        if (*v153 && os_log_type_enabled(*v153, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          *&buf[4] = "PortManager.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 386;
          _os_log_impl(&dword_0, v154, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Encountered invalid port to rearrange.", buf, 0x12u);
        }

        if (v147)
        {
LABEL_376:
          sub_1A8C0(v147);
        }

        if (*(&v144 + 1))
        {
          std::__shared_weak_count::__release_weak(*(&v144 + 1));
        }

        if (v248.__r_.__value_.__l.__size_)
        {
          sub_1A8C0(v248.__r_.__value_.__l.__size_);
        }

        if (v141 == v225)
        {
          break;
        }

        continue;
      }
    }

    a2 = v224;
    sub_26BF70(v224);
    *buf = &v225;
    sub_86D0C(buf);
  }

LABEL_390:
  sub_20301C(a1, 2);
  v158 = *(*a2 + 8);
  if (v158)
  {
    v159 = *a2 + 8;
    do
    {
      v160 = *(v158 + 32);
      v161 = v160 >= LODWORD(__p.__r_.__value_.__l.__data_);
      v162 = v160 < LODWORD(__p.__r_.__value_.__l.__data_);
      if (v161)
      {
        v159 = v158;
      }

      v158 = *(v158 + 8 * v162);
    }

    while (v158);
    if (v159 != *a2 + 8 && LODWORD(__p.__r_.__value_.__l.__data_) >= *(v159 + 32))
    {
      sub_20301C(buf, 1);
      sub_256828(a1, buf);
      if (v258 == 1)
      {
        sub_175F78(&buf[24]);
      }

      if (v232 && v232->__shared_owners_ != -1)
      {
        v163 = sub_5544(8);
        v164 = *v163;
        if (*v163 && os_log_type_enabled(*v163, OS_LOG_TYPE_DEFAULT))
        {
          sub_11AB44(__dst, &v231);
          v165 = __dst[23] >= 0 ? __dst : *__dst;
          *buf = 136315650;
          *&buf[4] = "RoutingManager.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 5132;
          *&buf[18] = 2080;
          *&buf[20] = v165;
          _os_log_impl(&dword_0, v164, OS_LOG_TYPE_DEFAULT, "%25s:%-5d User preferred port in route configuration: %s", buf, 0x1Cu);
          if ((__dst[23] & 0x80000000) != 0)
          {
            operator delete(*__dst);
          }
        }

        if (v232)
        {
          v166 = std::__shared_weak_count::lock(v232);
          if (v166)
          {
            v167 = v166;
            v168 = v231;
            if (v231)
            {
              if (((*(*v231 + 160))(v231) & 1) == 0 && (*(v168 + 184) & 0x40) != 0)
              {
                v169 = sub_809C0();
                *__dst = v168;
                *&__dst[8] = v167;
                atomic_fetch_add_explicit(&v167->__shared_weak_owners_, 1uLL, memory_order_relaxed);
                sub_22ED54(buf, __dst, 1);
                sub_1150D4(v169, buf, 1, 1);
                sub_65310(buf);
                if (*&__dst[8])
                {
                  std::__shared_weak_count::__release_weak(*&__dst[8]);
                }
              }
            }

            sub_1A8C0(v167);
          }
        }
      }

      v170 = v234;
      v171 = (a2 + 200);
      if (v234 != 1635087471)
      {
        v171 = &v234;
      }

      LODWORD(v225) = *v171;
      v172 = &v235;
      if (v234 == 1635087471)
      {
        v172 = (a2 + 208);
      }

      v173 = &v235.__r_.__value_.__r.__words[2] + 7;
      if (v234 == 1635087471)
      {
        v173 = (a2 + 231);
      }

      if (*v173 < 0)
      {
        if (v234 == 1635087471)
        {
          p_size = (a2 + 216);
        }

        else
        {
          p_size = &v235.__r_.__value_.__l.__size_;
        }

        sub_54A0(v226, *v172, *p_size);
      }

      else
      {
        *v226 = *v172;
        v226[2] = v172[2];
      }

      v175 = &v236;
      if (v170 == 1635087471)
      {
        v175 = (a2 + 232);
      }

      v226[3] = *v175;
      *&buf[16] = 0;
      *&buf[8] = 0;
      *buf = &buf[8];
      sub_268524(&v249, a2, &__p, buf);
      sub_D169C(*&buf[8]);
      if (v232)
      {
        if (v232->__shared_owners_ != -1 && (v251 & 0x100) == 0)
        {
          v176 = std::__shared_weak_count::lock(v232);
          if (v176)
          {
            v177 = v176;
            if (v231)
            {
              sub_114A00(buf, v231);
              sub_26BC74(a2, buf);
              sub_65310(buf);
            }

            sub_1A8C0(v177);
          }
        }
      }

      LODWORD(v214) = a5;
      sub_C25C0(buf, a2, &__p, &v229, &v228, &v230, v233, &__p.__r_.__value_.__r.__words[2], &v225, v237, v238, a4, v214, &v239, (a2 + 472), *(a2 + 410), &v249);
    }
  }

  if (*a1)
  {
    v178 = sub_5544(8);
    v179 = sub_5544(35);
    v180 = 0;
    *buf = 0x100000002;
    v181 = *(v178 + 8);
    while (1)
    {
      v182 = *&buf[v180];
      if (((v181 & v182) != 0) != ((*(v179 + 8) & v182) != 0))
      {
        break;
      }

      v180 += 4;
      if (v180 == 8)
      {
        goto LABEL_446;
      }
    }

    if ((v181 & v182) == 0)
    {
      v178 = v179;
    }

LABEL_446:
    v183 = *v178;
    if (v183 && os_log_type_enabled(v183, OS_LOG_TYPE_INFO))
    {
      sub_BCD50(__dst, v215);
      v184 = __dst[23] >= 0 ? __dst : *__dst;
      v185 = *a1;
      *buf = 136315906;
      *&buf[4] = "RoutingManager.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 5163;
      *&buf[18] = 2080;
      *&buf[20] = v184;
      *&buf[28] = 1024;
      *&buf[30] = v185;
      _os_log_impl(&dword_0, v183, OS_LOG_TYPE_INFO, "%25s:%-5d Set route configuration %s failed with result %d.", buf, 0x22u);
      if ((__dst[23] & 0x80000000) != 0)
      {
        operator delete(*__dst);
      }
    }
  }

  kdebug_trace();
  return sub_4AF90(&__p);
}

void sub_C1F38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33, uint64_t a34, uint64_t a35, char a36)
{
  sub_65310(&STACK[0x360]);
  if (STACK[0x318])
  {
    std::__shared_weak_count::__release_weak(STACK[0x318]);
  }

  sub_1A8C0(v36);
  if (*(a22 + 56) == 1)
  {
    sub_175F78((a22 + 24));
  }

  sub_4AF90(&a36);
  _Unwind_Resume(a1);
}

uint64_t sub_C2448(int a1)
{
  result = 1;
  if (a1 <= 1751414370)
  {
    if (a1 > 1651795059)
    {
      if (a1 > 1684108898)
      {
        if (a1 == 1684108899)
        {
          return result;
        }

        v3 = 1684628340;
      }

      else
      {
        if (a1 == 1651795060)
        {
          return result;
        }

        v3 = 1668314723;
      }
    }

    else if (a1 > 1635213688)
    {
      if (a1 == 1635213689)
      {
        return result;
      }

      v3 = 1651794544;
    }

    else
    {
      if (a1 == 845504882)
      {
        return result;
      }

      v3 = 1635087471;
    }

    goto LABEL_25;
  }

  if (a1 <= 1918986610)
  {
    if (a1 > 1752396913)
    {
      if (a1 == 1752396914)
      {
        return result;
      }

      v3 = 1886352244;
    }

    else
    {
      if (a1 == 1751414371)
      {
        return result;
      }

      v3 = 1752132965;
    }

    goto LABEL_25;
  }

  if (a1 <= 1986357345)
  {
    if (a1 == 1918986611)
    {
      return result;
    }

    v3 = 1969840752;
    goto LABEL_25;
  }

  if (a1 != 1986357346 && a1 != 1987012963)
  {
    v3 = 2003329648;
LABEL_25:
    if (a1 != v3)
    {
      return 0;
    }
  }

  return result;
}

void sub_C2668(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  strcpy((a1 + 24), "cwdv");
  *(a1 + 32) = 0;
  *(a1 + 40) = 3;
  *(a1 + 64) = 0;
  *(a1 + 56) = 0;
  *(a1 + 48) = a1 + 56;
  *(a1 + 72) = 44739242;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 80) = 0;
}

BOOL sub_C26B4(uint64_t a1)
{
  v2 = (*(*a1 + 88))(a1, 1);
  if (v2)
  {
    v3 = v2;
    v4 = 0;
    v5 = 1;
    do
    {
      v6 = (*(*a1 + 96))(a1, 1, v4);
      if (v6 && !(*(*v6 + 120))(v6, v10))
      {
        if (v11 > 1836343850)
        {
          if (v11 == 1836343851 || v11 == 1836344107)
          {
            return v5;
          }
        }

        else if (v11 == 1667443507 || v11 == 1667509043)
        {
          return v5;
        }
      }

      v4 = (v4 + 1);
      v5 = v4 < v3;
    }

    while (v3 != v4);
  }

  return 0;
}

unint64_t sub_C2800(uint64_t a1, int a2)
{
  sub_51AF8(a1);
  v4 = 640;
  v5 = 648;
  if (a2)
  {
    v5 = 672;
  }

  v6 = *(a1 + v5);
  if (a2)
  {
    v4 = 664;
  }

  return (v6 - *(a1 + v4)) >> 4;
}

uint64_t sub_C2854(uint64_t a1, unsigned int a2)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
    goto LABEL_11;
  }

  v5 = a1 + 8;
  do
  {
    v6 = *(v4 + 32);
    v7 = v6 >= a2;
    v8 = v6 < a2;
    if (v7)
    {
      v5 = v4;
    }

    v4 = *(v4 + 8 * v8);
  }

  while (v4);
  if (v5 != a1 + 8 && *(v5 + 32) <= a2 && *(v5 + 73) == 1)
  {
    v9 = *(v5 + 72);
    v10 = v9 >> 8;
  }

  else
  {
LABEL_11:
    if (a2 == 1768776806)
    {
      LOBYTE(v9) = 0;
      v10 = 0;
    }

    else
    {
      v11 = sub_5544(21);
      if (*(v11 + 8))
      {
        v12 = *v11;
        if (*v11)
        {
          if (os_log_type_enabled(*v11, OS_LOG_TYPE_DEBUG))
          {
            sub_22170(__p, a2);
            if (v16 >= 0)
            {
              v13 = __p;
            }

            else
            {
              v13 = __p[0];
            }

            *buf = 136315650;
            v18 = "RoutingTypes.cpp";
            v19 = 1024;
            v20 = 1977;
            v21 = 2080;
            v22 = v13;
            _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEBUG, "%25s:%-5d Did not find entry for current mode: %s, looking in default mode instead.", buf, 0x1Cu);
            if (v16 < 0)
            {
              operator delete(__p[0]);
            }
          }
        }
      }

      LOWORD(v9) = sub_C2854(a1, 1768776806);
      v10 = BYTE1(v9);
    }
  }

  return v9 | (v10 << 8);
}

uint64_t sub_C29F0(uint64_t a1, int a2, unsigned int a3)
{
  sub_51AF8(a1);
  v6 = 640;
  if (a2)
  {
    v6 = 664;
  }

  v7 = *(a1 + v6);
  if (a3 >= ((*(a1 + v6 + 8) - v7) >> 4))
  {
    return 0;
  }

  else
  {
    return *(v7 + 16 * a3);
  }
}

void *sub_C2A5C(void *a1, void *a2)
{
  a1[1] = 0;
  v3 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  v4 = a2 + 1;
  v5 = *a2;
  if (*a2 != a2 + 1)
  {
    do
    {
      v6 = a1[1];
      if (*a1 == v3)
      {
        v8 = v3;
      }

      else
      {
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

        v10 = sub_16B7FC(v8 + 4, v5 + 4);
        v6 = *v3;
        if (!v10)
        {
          if (!v6)
          {
            goto LABEL_20;
          }

          v11 = v3;
          while (1)
          {
            while (1)
            {
              v12 = v6;
              if (!sub_16B7FC(v5 + 4, v6 + 4))
              {
                break;
              }

              v6 = *v12;
              v11 = v12;
              if (!*v12)
              {
                goto LABEL_20;
              }
            }

            if (!sub_16B7FC(v12 + 4, v5 + 4))
            {
              goto LABEL_19;
            }

            v11 = v12 + 1;
            v6 = v12[1];
            if (!v6)
            {
              goto LABEL_20;
            }
          }
        }
      }

      if (!v6)
      {
        goto LABEL_20;
      }

      v11 = v8 + 1;
LABEL_19:
      if (!*v11)
      {
LABEL_20:
        sub_1E5FD8();
      }

      v13 = v5[1];
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
          v14 = v5[2];
          v9 = *v14 == v5;
          v5 = v14;
        }

        while (!v9);
      }

      v5 = v14;
    }

    while (v14 != v4);
  }

  return a1;
}

uint64_t sub_C2BFC()
{
  v0 = sub_C2C1C();
  v1 = v0[1];
  return *v0;
}

uint64_t sub_C2C1C()
{
  if ((atomic_load_explicit(&qword_6FD000, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6FD000))
  {
    operator new();
  }

  return qword_6FCFF8;
}

uint64_t sub_C2CA8(uint64_t a1, unsigned int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    goto LABEL_33;
  }

  v3 = *a2;
  v4 = a1 + 8;
  do
  {
    v5 = *(v2 + 32);
    v6 = v5 >= v3;
    v7 = v5 < v3;
    if (v6)
    {
      v4 = v2;
    }

    v2 = *(v2 + 8 * v7);
  }

  while (v2);
  if (v4 == a1 + 8 || v3 < *(v4 + 32))
  {
LABEL_33:
    v23 = sub_5544(14);
    v24 = *v23;
    if (*v23 && os_log_type_enabled(*v23, OS_LOG_TYPE_ERROR))
    {
      v26 = 136315394;
      v27 = "RoutingManager.cpp";
      v28 = 1024;
      v29 = 6382;
      _os_log_impl(&dword_0, v24, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): Corruption in the routing database. Calling find(inCategoryMode.mCategory) returned an invalid iterator.", &v26, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Corruption in the routing database. Calling find(inCategoryMode.mCategory) returned an invalid iterator.");
  }

  if (*(v4 + 78))
  {
    v8 = 1;
LABEL_31:
    v21 = 1;
    return v8 | (v21 << 8);
  }

  v11 = *(a1 + 80);
  v9 = a1 + 80;
  v10 = v11;
  if (!v11)
  {
    goto LABEL_19;
  }

  v12 = a2[1];
  v13 = v9;
  v14 = v10;
  do
  {
    v15 = *(v14 + 28);
    v6 = v15 >= v12;
    v16 = v15 < v12;
    if (v6)
    {
      v13 = v14;
    }

    v14 = *(v14 + 8 * v16);
  }

  while (v14);
  if (v13 == v9 || *(v13 + 28) > v12)
  {
LABEL_19:
    v13 = v9;
  }

  v8 = v13 != v9;
  if (*(a2 + 12) != 1)
  {
    goto LABEL_31;
  }

  if (!v10)
  {
    goto LABEL_29;
  }

  v17 = a2[2];
  v18 = v9;
  do
  {
    v19 = *(v10 + 28);
    v6 = v19 >= v17;
    v20 = v19 < v17;
    if (v6)
    {
      v18 = v10;
    }

    v10 = *(v10 + 8 * v20);
  }

  while (v10);
  if (v18 == v9 || *(v18 + 28) > v17)
  {
LABEL_29:
    v18 = v9;
  }

  v21 = v18 != v9;
  return v8 | (v21 << 8);
}

_BYTE *sub_C2EB4(uint64_t a1)
{
  sub_27A4();
  v9 = (*(qword_6E94F8 + 16))();
  v2 = *(a1 + 872);
  if (!v2)
  {
    v4 = sub_5544(14);
    v5 = *v4;
    if (*v4 && os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "VirtualAudio_Device.cpp";
      v11 = 1024;
      v12 = 4424;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareUnspecifiedError) [mDevice is NULL]: Attempt to update buffer frame size without an active device", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 2003329396;
  }

  strcpy(buf, "zisfbolg");
  buf[9] = 0;
  *&buf[10] = 0;
  v7 = 4;
  v8 = 0;
  (*(*v2 + 40))(v2, buf, 0, 0, &v7, &v8);
  *(a1 + 272) = v8;
  return sub_210C50(&v9);
}

uint64_t sub_C3084(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v5;
  *(a1 + 32) = v6;
  *a1 = v4;
  v7 = *(a2 + 8);
  *(a1 + 56) = *(a2 + 7);
  *(a1 + 64) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 16), 1uLL, memory_order_relaxed);
  }

  sub_C2A5C((a1 + 72), a2 + 9);
  *(a1 + 96) = a2[6];
  v8 = *(a2 + 30);
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 120) = v8;
  v9 = a2[8];
  *(a1 + 141) = *(a2 + 141);
  *(a1 + 128) = v9;
  sub_80534((a1 + 152), (a2 + 152));
  v10 = *(a2 + 184);
  *(a1 + 192) = 0;
  *(a1 + 184) = v10;
  *(a1 + 248) = 0;
  if (*(a2 + 248) == 1)
  {
    v11 = a2[12];
    *(a1 + 208) = *(a2 + 26);
    *(a1 + 192) = v11;
    v12 = *(a2 + 28);
    *(a1 + 216) = *(a2 + 27);
    *(a1 + 224) = v12;
    if (v12)
    {
      atomic_fetch_add_explicit((v12 + 16), 1uLL, memory_order_relaxed);
    }

    *(a1 + 232) = *(a2 + 232);
    v13 = *(a2 + 30);
    if (v13)
    {
      CFRetain(*(a2 + 30));
    }

    *(a1 + 240) = v13;
    *(a1 + 248) = 1;
  }

  v14 = *(a2 + 32);
  *(a1 + 264) = *(a2 + 264);
  *(a1 + 256) = v14;
  *(a1 + 272) = *(a2 + 272);
  sub_80534((a1 + 280), (a2 + 280));
  return a1;
}

void sub_C31BC(_Unwind_Exception *a1)
{
  sub_26231C(v2);
  sub_C31F4(*(v1 + 80));
  v4 = *(v1 + 64);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  _Unwind_Resume(a1);
}

void sub_C31F4(void *a1)
{
  if (a1)
  {
    sub_C31F4(*a1);
    sub_C31F4(a1[1]);
    sub_13EB30(a1 + 4);

    operator delete(a1);
  }
}

uint64_t sub_C3248(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result != a2)
  {
    v5 = result;
    v6 = 0;
    do
    {
      v7 = v5 + v6;
      *(a3 + v6) = *(v5 + v6);
      sub_C3084(a3 + v6 + 8, (v5 + v6 + 8));
      *(a3 + v6 + 320) = *(v5 + v6 + 320);
      v6 += 328;
    }

    while (v7 + 328 != a2);
    do
    {
      result = sub_262018(v5 + 8);
      v5 += 328;
    }

    while (v5 != a2);
  }

  return result;
}

uint64_t sub_C3300(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 328;
    sub_262018(i - 320);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_C3354(void **a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v4 = *(a2 + 16);
  if (v4)
  {
    if (!(v4 >> 61))
    {
      sub_1DB8DC(v4);
    }

    sub_189A00();
  }

  v5 = 0;
  for (i = *(a2 + 8); i != a2; i = *(i + 8))
  {
    v7 = i + 16;
    v8 = a1[2];
    if (v5 >= v8)
    {
      v9 = *a1;
      v10 = v5 - *a1;
      v11 = (v10 >> 3) + 1;
      if (v11 >> 61)
      {
        sub_189A00();
      }

      v12 = v8 - v9;
      if (v12 >> 2 > v11)
      {
        v11 = v12 >> 2;
      }

      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        v13 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v13 = v11;
      }

      if (v13)
      {
        sub_1DB8DC(v13);
      }

      v14 = (8 * (v10 >> 3));
      *v14 = v7;
      v5 = (v14 + 1);
      memcpy(0, v9, v10);
      *a1 = 0;
      a1[2] = 0;
      if (v9)
      {
        operator delete(v9);
      }
    }

    else
    {
      *v5 = v7;
      v5 += 8;
    }

    a1[1] = v5;
  }
}

void sub_C348C(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    *(v1 + 8) = v2;
    operator delete(v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_C34AC(uint64_t a1, uint64_t a2)
{
  *a1 = **a2;
  *(a1 + 8) = a1 + 8;
  *(a1 + 16) = a1 + 8;
  *(a1 + 24) = 0;
  v4 = *a2;
  if (*(*a2 + 24) != *a2 + 16)
  {
    operator new();
  }

  v5 = *(a2 + 12);
  if (v5 == 1986556788 || v5 == 1987211117 || v5 == 1987208039)
  {
    if (sub_CB5C4())
    {
      v8 = *(a2 + 156) & 1;
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    sub_CB5C4();
    v8 = 0;
  }

  sub_CB2A8((a1 + 32), v4, v8);
  *(a1 + 80) = *(*a2 + 8);
  sub_80534((a1 + 88), (a2 + 288));
  *(a1 + 120) = *(a2 + 12);
  *(a1 + 124) = *(a2 + 192);
  return a1;
}

void sub_C45CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, std::__shared_weak_count *a16)
{
  sub_1A8C0(v16);
  if (a15)
  {
    sub_1A8C0(a15);
  }

  if (a16)
  {
    sub_1A8C0(a16);
  }

  sub_CC344(v17[4]);
  operator delete(v17);
  sub_CC3DC(a10);
  _Unwind_Resume(a1);
}

void *sub_C493C(uint64_t a1, void *a2, void *a3)
{
  if (a2 != a3)
  {
    while (1)
    {
      if (!*a2)
      {
        v4 = sub_5544(14);
        v5 = *v4;
        if (*v4 && os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
        {
          v7 = 136315394;
          v8 = "RouteCache.cpp";
          v9 = 1024;
          v10 = 594;
          _os_log_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", &v7, 0x12u);
        }

        exception = __cxa_allocate_exception(0x10uLL);
        std::logic_error::logic_error(exception, "Precondition failure.");
      }

      if (**a2 == a1)
      {
        break;
      }

      if (++a2 == a3)
      {
        return a3;
      }
    }
  }

  return a2;
}

void sub_C4A80(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6)
{
  if (*(a2 + 144) != 1886216809 || *(a2 + 96) == *(a2 + 104))
  {
    v18 = 0;
  }

  else
  {
    sub_2883D8(buf);
    v12 = *buf;
    v13 = *&buf[8];
    if (*buf)
    {
      operator delete(*buf);
    }

    if (v12 != v13)
    {
      v14 = sub_4DE428(a2);
      v15 = sub_5544(21);
      if (*(v15 + 8))
      {
        v16 = *v15;
        if (*v15)
        {
          if (os_log_type_enabled(*v15, OS_LOG_TYPE_DEBUG))
          {
            sub_22170(&__p, v14);
            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              p_p = &__p;
            }

            else
            {
              p_p = __p.__r_.__value_.__r.__words[0];
            }

            *buf = 136315650;
            *&buf[4] = "RoutingHandlerUtilities_Aspen.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 210;
            *&buf[18] = 2080;
            *&buf[20] = p_p;
            _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEBUG, "%25s:%-5d Resolved sub-port set inquiry using system defaults override: %s.", buf, 0x1Cu);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }
          }
        }
      }

LABEL_42:
      *buf = v14;
      sub_1E54B0(a1, buf, 1);
      return;
    }

    v18 = 1;
  }

  sub_8BD14(&__p, *(a2 + 80), *(a2 + 88));
  size = __p.__r_.__value_.__l.__size_;
  *buf = *&__p.__r_.__value_.__l.__data_;
  if (__p.__r_.__value_.__l.__size_)
  {
    atomic_fetch_add_explicit((__p.__r_.__value_.__l.__size_ + 16), 1uLL, memory_order_relaxed);
    v20 = sub_C4FD4(a3 + 80, buf);
    std::__shared_weak_count::__release_weak(size);
  }

  else
  {
    v20 = sub_C4FD4(a3 + 80, buf);
  }

  if (__p.__r_.__value_.__l.__size_)
  {
    sub_1A8C0(__p.__r_.__value_.__l.__size_);
  }

  if (a3 + 88 != v20 && *(v20 + 48) != *(v20 + 56))
  {
    v21 = sub_5544(21);
    if (*(v21 + 8))
    {
      v22 = *v21;
      if (*v21)
      {
        if (os_log_type_enabled(*v21, OS_LOG_TYPE_DEBUG))
        {
          sub_10898C(&__p, *(v20 + 48), *(v20 + 56));
          v23 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
          *buf = 136315650;
          *&buf[4] = "RoutingHandlerUtilities_Aspen.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 225;
          *&buf[18] = 2080;
          *&buf[20] = v23;
          _os_log_impl(&dword_0, v22, OS_LOG_TYPE_DEBUG, "%25s:%-5d Resolved sub-port set inquiry using client-specified sub-ports: %s.", buf, 0x1Cu);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }
      }
    }

    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
    sub_46980(a1, *(v20 + 48), *(v20 + 56), (*(v20 + 56) - *(v20 + 48)) >> 2);
    return;
  }

  if (v18)
  {
    if (sub_3FC368(*(a3 + 112), *(a3 + 12)))
    {
      v24 = sub_8703C();
      if ((*(*v24 + 192))(v24) <= 1)
      {
        v14 = sub_4DE7FC(a2);
        v25 = sub_5544(21);
        v26 = *v25;
        if (*v25 && os_log_type_enabled(*v25, OS_LOG_TYPE_DEFAULT))
        {
          sub_22170(&__p, v14);
          v27 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
          *buf = 136315650;
          *&buf[4] = "RoutingHandlerUtilities_Aspen.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 247;
          *&buf[18] = 2080;
          *&buf[20] = v27;
          _os_log_impl(&dword_0, v26, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Resolved sub-port set inquiry using internal sub-port override: %s.", buf, 0x1Cu);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }

        goto LABEL_42;
      }
    }
  }

  *buf = a6 ^ 1;
  *&buf[4] = a5;
  *&buf[8] = *sub_C53D8();
  *&buf[24] = 0;
  v36 = 0;
  v37 = 0;
  v35 = 0;
  sub_C5058(&__p, a4, buf);
  v28 = *&__p.__r_.__value_.__l.__data_;
  if (__p.__r_.__value_.__r.__words[0] == __p.__r_.__value_.__l.__size_)
  {
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
    if (!v28)
    {
      return;
    }

LABEL_53:
    operator delete(v28);
    return;
  }

  v29 = sub_5544(21);
  if (*(v29 + 8))
  {
    v30 = *v29;
    if (*v29)
    {
      if (os_log_type_enabled(*v29, OS_LOG_TYPE_DEBUG))
      {
        sub_10898C(&v32, v28, *(&v28 + 1));
        v31 = (v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v32 : v32.__r_.__value_.__r.__words[0];
        *buf = 136315650;
        *&buf[4] = "RoutingHandlerUtilities_Aspen.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 260;
        *&buf[18] = 2080;
        *&buf[20] = v31;
        _os_log_impl(&dword_0, v30, OS_LOG_TYPE_DEBUG, "%25s:%-5d Resolved sub-port set inquiry using the connection's ModeMap: %s.", buf, 0x1Cu);
        if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v32.__r_.__value_.__l.__data_);
        }
      }
    }
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  sub_46980(a1, v28, *(&v28 + 1), (*(&v28 + 1) - v28) >> 2);
  if (v28)
  {
    goto LABEL_53;
  }
}

void sub_C4FAC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_C4FD4(uint64_t a1, unint64_t *a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v5 = a1 + 8;
  do
  {
    v6 = sub_16B7FC((v3 + 32), a2);
    if (v6)
    {
      v7 = 8;
    }

    else
    {
      v7 = 0;
    }

    if (!v6)
    {
      v5 = v3;
    }

    v3 = *(v3 + v7);
  }

  while (v3);
  if (v5 == v2 || sub_16B7FC(a2, (v5 + 32)))
  {
    return v2;
  }

  return v5;
}

void sub_C5058(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = (a3 + 32);
  if (*(a3 + 32) != *(a3 + 40))
  {
    v27 = sub_5544(14);
    v28 = *v27;
    if (*v27 && os_log_type_enabled(*v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *v35 = "RoutingTypes.cpp";
      *&v35[8] = 1024;
      *&v35[10] = 2988;
      _os_log_impl(&dword_0, v28, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  sub_84CDC(a2);
  v7 = *a3;
  sub_84CDC(a2);
  v8 = 24;
  if (!v7)
  {
    v8 = 0;
  }

  v9 = a2 + v8;
  *buf = *(a3 + 4);
  *&v35[4] = *(a3 + 8);
  v10 = sub_C5464(a2 + v8, buf);
  if (v9 + 8 == v10 || !*(v10 + 112))
  {
    if (*(a3 + 4) == 1768776806)
    {
LABEL_18:
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    else
    {
      v21 = sub_5544(21);
      if (*(v21 + 8))
      {
        v22 = *v21;
        if (*v21)
        {
          if (os_log_type_enabled(*v21, OS_LOG_TYPE_DEBUG))
          {
            sub_22170(v32, *(a3 + 4));
            v23 = v33;
            v24 = v32[0];
            sub_22170(__p, 0x696D6466u);
            v25 = v32;
            if (v23 < 0)
            {
              v25 = v24;
            }

            if (v31 >= 0)
            {
              v26 = __p;
            }

            else
            {
              v26 = __p[0];
            }

            *buf = 136315906;
            *v35 = "RoutingTypes.cpp";
            *&v35[8] = 1024;
            *&v35[10] = 3006;
            *&v35[14] = 2080;
            *&v35[16] = v25;
            v36 = 2080;
            v37[0] = v26;
            _os_log_impl(&dword_0, v22, OS_LOG_TYPE_DEBUG, "%25s:%-5d Did not find entry for current mode: %s, looking in secondary mode: %s instead.", buf, 0x26u);
            if (v31 < 0)
            {
              operator delete(__p[0]);
            }

            if (v33 < 0)
            {
              operator delete(v32[0]);
            }
          }
        }
      }

      sub_CF9A0(buf, *a3, 1768776806, (a3 + 8), *(a3 + 24), v3);
      sub_C5058(a1, a2, buf);
      if (*(v37 + 2))
      {
        *(&v37[1] + 2) = *(v37 + 2);
        operator delete(*(v37 + 2));
      }
    }
  }

  else
  {
    v11 = *(a3 + 24);
    v14 = *(v10 + 104);
    v12 = v10 + 104;
    v13 = v14;
    while (1)
    {
      v15 = v11;
      if (v13)
      {
        v16 = v12;
        v17 = v13;
        do
        {
          v18 = *(v17 + 32);
          v19 = v18 >= v15;
          v20 = v18 < v15;
          if (v19)
          {
            v16 = v17;
          }

          v17 = *(v17 + 8 * v20);
        }

        while (v17);
        if (v16 != v12 && *(v16 + 32) <= v15)
        {
          break;
        }
      }

      v11 = 0;
      if (!v15)
      {
        goto LABEL_18;
      }
    }

    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
    sub_46980(a1, *(v16 + 40), *(v16 + 48), (*(v16 + 48) - *(v16 + 40)) >> 2);
  }
}

void sub_C5394(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20)
{
  if (v21 < 0)
  {
    operator delete(v20);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_C53D8()
{
  if ((atomic_load_explicit(&qword_6FCFF0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6FCFF0))
  {
    operator new();
  }

  return qword_6FCFE8;
}

uint64_t sub_C5464(uint64_t a1, int *a2)
{
  v5 = a1 + 8;
  v4 = *(a1 + 8);
  if (!v4)
  {
    goto LABEL_14;
  }

  v6 = *a2;
  v7 = *(a2 + 1);
  result = a1 + 8;
  do
  {
    v9 = *(v4 + 32);
    if (v9 >= v6)
    {
      if (v9 == v6)
      {
        v10 = *(v4 + 40);
        v11 = v10 >= v7;
        v12 = v10 < v7;
        if (v11)
        {
          result = v4;
        }

        v4 += 8 * v12;
      }

      else
      {
        result = v4;
      }
    }

    else
    {
      v4 += 8;
    }

    v4 = *v4;
  }

  while (v4);
  if (result == v5 || (v13 = *(result + 32), v6 < v13) || v6 == v13 && v7 < *(result + 40))
  {
LABEL_14:
    if (((a2[2] ^ *sub_C53D8()) & 7) != 0)
    {
      v14 = *a2;
      v15 = *sub_C53D8();
      return sub_C5464(a1, &v14);
    }

    else
    {
      return v5;
    }
  }

  return result;
}

BOOL sub_C5554(uint64_t a1, const AudioObjectPropertyAddress *a2)
{
  mSelector = a2->mSelector;
  v5 = 1;
  if (a2->mSelector > 1835103843)
  {
    if (mSelector != 1835103844 && mSelector != 1937208176)
    {
      if (mSelector != 1986164323)
      {
LABEL_24:
        sub_4DFC0(a1);
        return AudioObjectHasProperty(*(a1 + 268), a2) != 0;
      }

      v25 = 1886613611;
      v27 = 0;
      v26 = 0uLL;
      sub_4625C(&v26, &v25, &v26, 1uLL);
      *v12 = v26;
      v13 = v27;
      strcpy(v14, "cwdv");
      v14[8] = 0;
      v15 = 3;
      v17[0] = 0;
      v17[1] = 0;
      v16 = v17;
      v18 = 44739242;
      v20 = 0;
      v21 = 0;
      __p = 0;
      sub_161C7C(&v22, a1, v12);
      if (SHIBYTE(v21) < 0)
      {
        operator delete(__p);
      }

      sub_477A0(v17[0]);
      if (v12[0])
      {
        v12[1] = v12[0];
        operator delete(v12[0]);
      }

      if (v24 == 1 && (v8 = *(v23 + 24)) != 0)
      {
        v5 = *(v23 + 16);
        atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        v9 = std::__shared_weak_count::lock(v8);
        if (v9)
        {
          v10 = v9;
          if (v5)
          {
            v5 = (*(*v5 + 16))(v5, a2);
          }

          sub_1A8C0(v10);
        }

        else
        {
          v5 = 0;
        }

        std::__shared_weak_count::__release_weak(v8);
      }

      else
      {
        v5 = 0;
      }

      sub_65310(&v22);
    }
  }

  else if (mSelector == 1064725619)
  {
    return a2->mScope == 1869968496;
  }

  else if (mSelector != 1668049764 && mSelector != 1684435056)
  {
    goto LABEL_24;
  }

  return v5;
}

void sub_C5780(_Unwind_Exception *a1)
{
  sub_1A8C0(v2);
  std::__shared_weak_count::__release_weak(v1);
  sub_65310((v3 - 96));
  _Unwind_Resume(a1);
}

uint64_t sub_C57B4(uint64_t a1, int a2, int a3, int a4)
{
  *a1 = a2;
  *(a1 + 4) = a3;
  *(a1 + 8) = *sub_C53D8();
  *(a1 + 24) = a4;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  sub_C5CAC(a1);
  return a1;
}

void sub_C5804(_Unwind_Exception *exception_object)
{
  v3 = v2;
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 40) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(exception_object);
}

void sub_C5824(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = 12;
  if (*(a4 + 20))
  {
    v9 = 16;
  }

  v45 = *(a4 + v9);
  sub_C57B4(v48, 1, v45, *(a2 + 304));
  if ((byte_6E83F8 & 1) == 0)
  {
    byte_6E83F8 = 1;
    *buf = 0;
    v10 = sub_286A88(@"MinOutputVolume", buf);
    v11 = *buf;
    if (!v10)
    {
      v11 = 0.0;
    }

    byte_6E83F0 = v10;
    dword_6E83F4 = LODWORD(v11);
    if (v10)
    {
      v12 = *sub_5544(14);
      v13 = v12;
      if (v12 && os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        *&buf[4] = "RunTimeDefaults.mm";
        v52 = 1024;
        v53 = 783;
        v54 = 2080;
        v55 = "MinOutputVolume";
        v56 = 2048;
        v57 = *&dword_6E83F4;
        _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Defaults key %s was defined to %f dB", buf, 0x26u);
      }
    }
  }

  LOBYTE(v14) = byte_6E83F0;
  if (byte_6E83F0)
  {
    v15 = dword_6E83F4;
  }

  else
  {
    v15 = 0;
  }

  if ((byte_6E83F0 & 1) == 0)
  {
    v16 = sub_C63C8(a3, v48);
    v14 = HIDWORD(v16);
    v15 = v16;
  }

  if ((byte_6E8404 & 1) == 0)
  {
    byte_6E8404 = 1;
    *buf = 0;
    v17 = sub_286A88(@"MaxOutputVolume", buf);
    v18 = *buf;
    if (!v17)
    {
      v18 = 0.0;
    }

    byte_6E83FC = v17;
    dword_6E8400 = LODWORD(v18);
    if (v17)
    {
      v19 = *sub_5544(14);
      v20 = v19;
      if (v19 && os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        *&buf[4] = "RunTimeDefaults.mm";
        v52 = 1024;
        v53 = 799;
        v54 = 2080;
        v55 = "MaxOutputVolume";
        v56 = 2048;
        v57 = *&dword_6E8400;
        _os_log_impl(&dword_0, v20, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Defaults key %s was defined to %f dB", buf, 0x26u);
      }
    }
  }

  LOBYTE(v21) = byte_6E83FC;
  if (byte_6E83FC)
  {
    v22 = dword_6E8400;
  }

  else
  {
    v22 = 0;
  }

  if ((byte_6E83FC & 1) == 0)
  {
    v23 = sub_C6EA0(a3, v48);
    v21 = HIDWORD(v23);
    v22 = v23;
  }

  v24 = a5;
  v47 = sub_C7250(a3, v48, a5);
  v26 = v25;
  if (v25)
  {
    v27 = sub_5544(21);
    v28 = *v27;
    if (*v27)
    {
      if (os_log_type_enabled(*v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        *&buf[4] = "RoutingHandlerUtilities_Aspen.cpp";
        v52 = 1024;
        v53 = 452;
        v54 = 1024;
        LODWORD(v55) = v24;
        _os_log_impl(&dword_0, v28, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Extended volume description available for volume control scope %u", buf, 0x18u);
      }
    }
  }

  v29 = sub_C7F14(a3, v48);
  v30 = HIDWORD(v29);
  if ((v29 & 0x100000000) == 0)
  {
    v31 = *(a4 + 104);
    v32 = *(a2 + 144);
    v33 = sub_C83E4(v31, v45);
    if (v34)
    {
      v37 = *(v33 + 8);
      v35 = v33 + 8;
      v36 = v37;
      if (!v37)
      {
        v42 = 0;
        goto LABEL_45;
      }

      v38 = v35;
      do
      {
        v39 = *(v36 + 28);
        v40 = v39 >= v32;
        v41 = v39 < v32;
        if (v40)
        {
          v38 = v36;
        }

        v36 = *(v36 + 8 * v41);
      }

      while (v36);
      if (v38 != v35 && *(v38 + 28) <= v32)
      {
        v44 = *(v38 + 32);
        v43 = v44 & 0xFFFFFF00;
        LODWORD(v36) = v44;
        v42 = 0x100000000;
        goto LABEL_46;
      }
    }

    v42 = 0;
    LODWORD(v36) = 0;
LABEL_45:
    v43 = 0;
LABEL_46:
    LODWORD(v29) = v42 | v43 | v36;
    v30 = HIDWORD(v42);
  }

  *a1 = v15 & 0xFFFFFF00FFFFFFFFLL | (v14 << 32);
  a1[1] = v22 & 0xFFFFFF00FFFFFFFFLL | (v21 << 32);
  a1[2] = 0;
  a1[3] = v47;
  a1[4] = v26;
  a1[5] = v29 | (v30 << 32);
  if (__p)
  {
    v50 = __p;
    operator delete(__p);
  }
}

void sub_C5C6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_DWORD *sub_C5CAC(_DWORD *result)
{
  v1 = result[6];
  if (v1 > 1647718501)
  {
    if (v1 > 1781740086)
    {
      if (v1 <= 1970496067)
      {
        v3 = v1 == 1781740087;
        v4 = 1836412020;
      }

      else
      {
        v3 = v1 == 1970496068 || v1 == 2003068262;
        v4 = 2004367664;
      }
    }

    else
    {
      if (v1 <= 1751410291)
      {
        if ((v1 - 1647718502) < 2 || v1 == 1667982960)
        {
          goto LABEL_39;
        }

        goto LABEL_104;
      }

      v3 = v1 == 1751410292 || v1 == 1752709424;
      v4 = 1768513904;
    }

LABEL_34:
    if (v3 || v1 == v4)
    {
      goto LABEL_39;
    }

    goto LABEL_104;
  }

  if (v1 > 1634231919)
  {
    if (v1 <= 1647393079)
    {
      v3 = v1 == 1634231920;
      v4 = 1635085420;
    }

    else
    {
      v3 = v1 == 1647393080 || v1 == 1647521842;
      v4 = 1647522096;
    }

    goto LABEL_34;
  }

  if (v1 > 1214394676)
  {
    v3 = v1 == 1214394677 || v1 == 1214539380;
    v4 = 1633759844;
    goto LABEL_34;
  }

  if (!v1 || v1 == 1214329654)
  {
    goto LABEL_39;
  }

LABEL_104:
  if (v1 != 1919443299 || *result != 1)
  {
    v10 = sub_5544(14);
    v11 = *v10;
    if (*v10)
    {
      if (os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR))
      {
        v16 = 136315394;
        v17 = "RoutingTypes.cpp";
        v18 = 1024;
        v19 = 195;
        _os_log_impl(&dword_0, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d INVARIANT FAILURE (std::logic_error).", &v16, 0x12u);
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Invariant failure.");
  }

LABEL_39:
  v6 = result[1];
  if (v6 <= 1918990111)
  {
    if (v6 > 1768781425)
    {
      if (v6 > 1836021359)
      {
        if (v6 > 1836281203)
        {
          if (v6 == 1836281204 || v6 == 1836281206)
          {
            return result;
          }

          v8 = 1836412020;
        }

        else
        {
          if (v6 == 1836021360 || v6 == 1836084597)
          {
            return result;
          }

          v8 = 1836280940;
        }
      }

      else if (v6 > 1835232629)
      {
        if (v6 == 1835232630 || v6 == 1835234162)
        {
          return result;
        }

        v8 = 1835361382;
      }

      else
      {
        if (v6 == 1768781426 || v6 == 1835229549)
        {
          return result;
        }

        v8 = 1835230310;
      }
    }

    else if (v6 > 1751212898)
    {
      if (v6 > 1768778863)
      {
        if (v6 == 1768778864 || v6 == 1768779619)
        {
          return result;
        }

        v9 = 30307;
      }

      else
      {
        if (v6 == 1751212899 || v6 == 1768057203)
        {
          return result;
        }

        v9 = 25702;
      }

      v8 = v9 | 0x696D0000;
    }

    else if (v6 > 1701013868)
    {
      if (v6 == 1701013869 || v6 == 1701017120)
      {
        return result;
      }

      v8 = 1735222132;
    }

    else
    {
      if (v6 == 1650811758 || v6 == 1685089378)
      {
        return result;
      }

      v8 = 1701013792;
    }
  }

  else
  {
    if (v6 <= 1986098035)
    {
      if (v6 > 1936748651)
      {
        if (v6 > 1936878699)
        {
          if (v6 == 1936878700 || v6 == 1936878966)
          {
            return result;
          }

          v8 = 1937007472;
        }

        else
        {
          if (v6 == 1936748652 || v6 == 1936749157)
          {
            return result;
          }

          v8 = 1936876646;
        }
      }

      else if (v6 > 1936745325)
      {
        if (v6 == 1936745326 || v6 == 1936745328)
        {
          return result;
        }

        v8 = 1936747374;
      }

      else
      {
        if (v6 == 1918990112 || v6 == 1919776355)
        {
          return result;
        }

        v8 = 1936683886;
      }

      goto LABEL_112;
    }

    if (v6 <= 1987081832)
    {
      if (v6 > 1986884454)
      {
        if (v6 == 1986884455 || v6 == 1987077987)
        {
          return result;
        }

        v8 = 1987080813;
      }

      else
      {
        if (v6 == 1986098036 || v6 == 1986556788)
        {
          return result;
        }

        v8 = 1986818931;
      }

      goto LABEL_112;
    }

    if (v6 <= 1987211116)
    {
      if (v6 == 1987081833 || v6 == 1987081839)
      {
        return result;
      }

      v7 = 25447;
    }

    else
    {
      if (v6 > 2003133026)
      {
        if (v6 == 2003133027)
        {
          return result;
        }

        v8 = 2003133037;
        goto LABEL_112;
      }

      if (v6 == 1987211117)
      {
        return result;
      }

      v7 = 29545;
    }

    v8 = v7 | 0x76720000;
  }

LABEL_112:
  if (v6 != v8)
  {
    v13 = sub_5544(14);
    v14 = *v13;
    if (*v13 && os_log_type_enabled(*v13, OS_LOG_TYPE_ERROR))
    {
      v16 = 136315394;
      v17 = "RoutingTypes.cpp";
      v18 = 1024;
      v19 = 196;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_ERROR, "%25s:%-5d INVARIANT FAILURE (std::logic_error).", &v16, 0x12u);
    }

    v15 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v15, "Invariant failure.");
  }

  return result;
}

unint64_t sub_C63C8(uint64_t a1, uint64_t a2)
{
  sub_84CDC(a1);
  v4 = *a2;
  sub_84CDC(a1);
  v5 = 24;
  if (!v4)
  {
    v5 = 0;
  }

  v6 = a1 + v5;
  *buf = *(a2 + 4);
  *&v24[4] = *(a2 + 8);
  v7 = sub_C5464(a1 + v5, buf);
  if (v6 + 8 == v7)
  {
    LOBYTE(v10) = 0;
    v9 = 0;
  }

  else
  {
    v8 = sub_C6628(v7 + 96, *(a2 + 24), (a2 + 32));
    v9 = v8;
    v10 = HIDWORD(v8);
    if ((v8 & 0x100000000) != 0)
    {
      return v9 | (v10 << 32);
    }
  }

  if (*(a2 + 4) != 1768776806)
  {
    v11 = sub_5544(21);
    if (*(v11 + 8))
    {
      v12 = *v11;
      if (*v11)
      {
        if (os_log_type_enabled(*v11, OS_LOG_TYPE_DEBUG))
        {
          sub_22170(v21, *(a2 + 4));
          v13 = v22;
          v14 = v21[0];
          sub_22170(__p, 0x696D6466u);
          v15 = v21;
          if (v13 < 0)
          {
            v15 = v14;
          }

          if (v20 >= 0)
          {
            v16 = __p;
          }

          else
          {
            v16 = __p[0];
          }

          *buf = 136315906;
          *v24 = "RoutingTypes.cpp";
          *&v24[8] = 1024;
          *&v24[10] = 2886;
          *&v24[14] = 2080;
          *&v24[16] = v15;
          v25 = 2080;
          v26[0] = v16;
          _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEBUG, "%25s:%-5d Did not find entry for current mode: %s, looking in secondary mode: %s instead.", buf, 0x26u);
          if (v20 < 0)
          {
            operator delete(__p[0]);
          }

          if (v22 < 0)
          {
            operator delete(v21[0]);
          }
        }
      }
    }

    sub_CF9A0(buf, *a2, 1768776806, (a2 + 8), *(a2 + 24), (a2 + 32));
    v17 = sub_C63C8(a1, buf);
    v9 = v17;
    v10 = HIDWORD(v17);
    if (*(v26 + 2))
    {
      *(&v26[1] + 2) = *(v26 + 2);
      operator delete(*(v26 + 2));
    }
  }

  return v9 | (v10 << 32);
}

void sub_C65F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20)
{
  if (v21 < 0)
  {
    operator delete(v20);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_C6628(uint64_t a1, unsigned int a2, unsigned int **a3)
{
  v6 = *(a1 + 8);
  if (!v6)
  {
    goto LABEL_19;
  }

  v7 = a1 + 8;
  do
  {
    v8 = *(v6 + 32);
    v9 = v8 >= a2;
    v10 = v8 < a2;
    if (v9)
    {
      v7 = v6;
    }

    v6 = *(v6 + 8 * v10);
  }

  while (v6);
  if (v7 == a1 + 8 || *(v7 + 32) > a2)
  {
    goto LABEL_18;
  }

  sub_C6778(*(v7 + 64), *(v7 + 72));
  sub_C6894(v21, v7 + 40, a3);
  if ((v21[0] & 1) == 0)
  {
    v11 = v22;
LABEL_16:
    if (v11)
    {
LABEL_17:
      LOBYTE(v16) = 0;
      v17 = 0;
      v18 = 0;
      goto LABEL_24;
    }

LABEL_18:
    LODWORD(v6) = 0;
    goto LABEL_19;
  }

  v11 = v22;
  if (v23 == v22)
  {
    goto LABEL_16;
  }

  v12 = 0;
  v13 = 1;
  while (1)
  {
    v14 = *&v22[8 * v12];
    if (*(v14 + 12) == 1)
    {
      break;
    }

    v12 = v13;
    if ((v23 - v22) >> 3 <= v13++)
    {
      goto LABEL_17;
    }
  }

  v16 = *(v14 + 8);
  v17 = v16 & 0xFF00000000;
  v18 = v16 & 0xFFFFFF00;
LABEL_24:
  operator delete(v11);
  v6 = (v18 | v17) >> 8;
  if ((v17 & 0x100000000) != 0)
  {
    LOBYTE(v19) = v18 | v17 | v16;
    return v17 & 0xFF00000000 | v19 | ((v6 & 0xFFFFFF) << 8);
  }

LABEL_19:
  if (a2)
  {
    v19 = sub_C6628(a1, 0, a3);
    v6 = v19 >> 8;
    v17 = v19 & 0xFF00000000;
  }

  else
  {
    LOBYTE(v19) = 0;
    v17 = 0;
  }

  return v17 & 0xFF00000000 | v19 | ((v6 & 0xFFFFFF) << 8);
}

uint64_t sub_C6778(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    v2 = sub_5544(14);
    v3 = *v2;
    if (*v2)
    {
      if (os_log_type_enabled(*v2, OS_LOG_TYPE_ERROR))
      {
        v5 = 136315394;
        v6 = "RoutingTypes.cpp";
        v7 = 1024;
        v8 = 1495;
        _os_log_impl(&dword_0, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d INVARIANT FAILURE (std::logic_error).", &v5, 0x12u);
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Invariant failure.");
  }

  return result;
}

void sub_C6894(char *a1, uint64_t a2, unsigned int **a3)
{
  sub_C6778(*(a2 + 24), *(a2 + 32));
  if (*(**(a2 + 24) + 4) != 1)
  {
    v20 = sub_5544(21);
    if (*(v20 + 8))
    {
      v21 = *v20;
      if (*v20)
      {
        if (os_log_type_enabled(*v20, OS_LOG_TYPE_DEBUG))
        {
          *v41 = 136315394;
          *v42 = "RoutingTypes.cpp";
          *&v42[8] = 1024;
          *&v42[10] = 1457;
          _os_log_impl(&dword_0, v21, OS_LOG_TYPE_DEBUG, "%25s:%-5d Returned the first SubPortConfiguration entry using the rule that if the first entry has no sub-port ID, it is the default for the SubPortConfigurationGroup.", v41, 0x12u);
        }
      }
    }

LABEL_25:
    if (*a3 != a3[1])
    {
      v22 = sub_5544(21);
      if (*(v22 + 8))
      {
        v23 = *v22;
        if (*v22)
        {
          if (os_log_type_enabled(*v22, OS_LOG_TYPE_DEBUG))
          {
            *v41 = 136315394;
            *v42 = "RoutingTypes.cpp";
            *&v42[8] = 1024;
            *&v42[10] = 1458;
            _os_log_impl(&dword_0, v23, OS_LOG_TYPE_DEBUG, "%25s:%-5d Returned the first SubPortConfiguration entry using the rule that if requested SubPortGroup is empty, use the first entry.", v41, 0x12u);
          }
        }
      }
    }

    operator new();
  }

  v6 = *a3;
  v7 = *a3;
  if (*a3 == a3[1])
  {
    goto LABEL_25;
  }

  v41[0] = 1;
  *&v42[12] = 0;
  v43 = 0;
  *&v42[4] = 0;
  v8 = *a1;
  v9 = *(a1 + 1);
  v11 = *(a1 + 2);
  v10 = *(a1 + 3);
  while (2)
  {
    for (i = *(a2 + 24); ; ++i)
    {
      if (i == *(a2 + 32))
      {
        v24 = sub_5544(21);
        v25 = *v24;
        if (*v24 && os_log_type_enabled(*v24, OS_LOG_TYPE_DEFAULT))
        {
          sub_22170(&__p, *v7);
          v26 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
          *buf = 136315650;
          v36 = "RoutingTypes.cpp";
          v37 = 1024;
          v38 = 1479;
          v39 = 2080;
          v40 = v26;
          _os_log_impl(&dword_0, v25, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Unable to locate a SubPortConfiguration for sub-port '%s'. Returning failure. Is this an error in the database?", buf, 0x1Cu);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }

        v33 = v8;
        for (j = *(a2 + 24); j != *(a2 + 32); ++j)
        {
          if (*(*j + 4) == 1)
          {
            v28 = sub_5544(21);
            if (*(v28 + 8))
            {
              v29 = *v28;
              if (*v28)
              {
                if (os_log_type_enabled(*v28, OS_LOG_TYPE_DEBUG))
                {
                  if (((*j)[1] & 1) == 0)
                  {
                    *(a1 + 1) = v9;
                    *(a1 + 2) = v11;
                    *(a1 + 3) = v10;
                    *a1 = v33;
                    sub_1EC054();
                  }

                  sub_22170(&__p, **j);
                  p_p = &__p;
                  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                  {
                    p_p = __p.__r_.__value_.__r.__words[0];
                  }

                  *buf = 136315650;
                  v36 = "RoutingTypes.cpp";
                  v37 = 1024;
                  v38 = 1482;
                  v39 = 2080;
                  v40 = p_p;
                  _os_log_impl(&dword_0, v29, OS_LOG_TYPE_DEBUG, "%25s:%-5d SubPortID: %s", buf, 0x1Cu);
                  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(__p.__r_.__value_.__l.__data_);
                  }
                }
              }
            }
          }
        }

        *a1 = 0;
        *(a1 + 2) = 0;
        *(a1 + 3) = 0;
        *(a1 + 1) = 0;
        if (*&v42[4])
        {
          operator delete(*&v42[4]);
        }

        return;
      }

      if (*(*i + 4) == 1 && **i == *v7)
      {
        break;
      }
    }

    sub_1E5A9C(&v42[4], i);
    if (++v7 != a3[1])
    {
      continue;
    }

    break;
  }

  *(a1 + 1) = v9;
  *(a1 + 2) = v11;
  *(a1 + 3) = v10;
  v13 = *a3;
  v14 = *&v42[4];
  v15 = *&v42[12];
  *a1 = v8;
  v16 = (v15 - v14) >> 3;
  if (v16 != v7 - v13)
  {
    v31 = sub_5544(14);
    v32 = *v31;
    if (*v31)
    {
      if (os_log_type_enabled(*v31, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v36 = "RoutingTypes.cpp";
        v37 = 1024;
        v38 = 1488;
        _os_log_impl(&dword_0, v32, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: Failed to properly build the result value.", buf, 0x12u);
      }
    }
  }

  if (v16 == a3[1] - *a3)
  {
    v17 = sub_5544(21);
    if (*(v17 + 8))
    {
      v18 = *v17;
      if (*v17)
      {
        if (os_log_type_enabled(*v17, OS_LOG_TYPE_DEBUG))
        {
          sub_10898C(&__p, *a3, a3[1]);
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v19 = &__p;
          }

          else
          {
            v19 = __p.__r_.__value_.__r.__words[0];
          }

          *buf = 136315650;
          v36 = "RoutingTypes.cpp";
          v37 = 1024;
          v38 = 1489;
          v39 = 2080;
          v40 = v19;
          _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEBUG, "%25s:%-5d Returned all SubPortConfiguration entries for the SubPortGroup %s.", buf, 0x1Cu);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }
      }
    }
  }

  *a1 = v41[0];
  *(a1 + 8) = *&v42[4];
  *(a1 + 3) = v43;
}

void sub_C6E34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_C6EA0(uint64_t a1, uint64_t a2)
{
  sub_84CDC(a1);
  v4 = *a2;
  sub_84CDC(a1);
  v5 = 24;
  if (!v4)
  {
    v5 = 0;
  }

  v6 = a1 + v5;
  *buf = *(a2 + 4);
  *&v24[4] = *(a2 + 8);
  v7 = sub_C5464(a1 + v5, buf);
  if (v6 + 8 == v7)
  {
    LOBYTE(v10) = 0;
    v9 = 0;
  }

  else
  {
    v8 = sub_C7100(v7 + 96, *(a2 + 24), (a2 + 32));
    v9 = v8;
    v10 = HIDWORD(v8);
    if ((v8 & 0x100000000) != 0)
    {
      return v9 | (v10 << 32);
    }
  }

  if (*(a2 + 4) != 1768776806)
  {
    v11 = sub_5544(21);
    if (*(v11 + 8))
    {
      v12 = *v11;
      if (*v11)
      {
        if (os_log_type_enabled(*v11, OS_LOG_TYPE_DEBUG))
        {
          sub_22170(v21, *(a2 + 4));
          v13 = v22;
          v14 = v21[0];
          sub_22170(__p, 0x696D6466u);
          v15 = v21;
          if (v13 < 0)
          {
            v15 = v14;
          }

          if (v20 >= 0)
          {
            v16 = __p;
          }

          else
          {
            v16 = __p[0];
          }

          *buf = 136315906;
          *v24 = "RoutingTypes.cpp";
          *&v24[8] = 1024;
          *&v24[10] = 2908;
          *&v24[14] = 2080;
          *&v24[16] = v15;
          v25 = 2080;
          v26[0] = v16;
          _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEBUG, "%25s:%-5d Did not find entry for current mode: %s, looking in secondary mode: %s instead.", buf, 0x26u);
          if (v20 < 0)
          {
            operator delete(__p[0]);
          }

          if (v22 < 0)
          {
            operator delete(v21[0]);
          }
        }
      }
    }

    sub_CF9A0(buf, *a2, 1768776806, (a2 + 8), *(a2 + 24), (a2 + 32));
    v17 = sub_C6EA0(a1, buf);
    v9 = v17;
    v10 = HIDWORD(v17);
    if (*(v26 + 2))
    {
      *(&v26[1] + 2) = *(v26 + 2);
      operator delete(*(v26 + 2));
    }
  }

  return v9 | (v10 << 32);
}

void sub_C70CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20)
{
  if (v21 < 0)
  {
    operator delete(v20);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_C7100(uint64_t a1, unsigned int a2, unsigned int **a3)
{
  v6 = *(a1 + 8);
  if (!v6)
  {
    goto LABEL_19;
  }

  v7 = a1 + 8;
  do
  {
    v8 = *(v6 + 32);
    v9 = v8 >= a2;
    v10 = v8 < a2;
    if (v9)
    {
      v7 = v6;
    }

    v6 = *(v6 + 8 * v10);
  }

  while (v6);
  if (v7 == a1 + 8 || *(v7 + 32) > a2)
  {
    goto LABEL_18;
  }

  sub_C6778(*(v7 + 64), *(v7 + 72));
  sub_C6894(v21, v7 + 40, a3);
  if ((v21[0] & 1) == 0)
  {
    v11 = v22;
LABEL_16:
    if (v11)
    {
LABEL_17:
      LOBYTE(v16) = 0;
      v17 = 0;
      v18 = 0;
      goto LABEL_24;
    }

LABEL_18:
    LODWORD(v6) = 0;
    goto LABEL_19;
  }

  v11 = v22;
  if (v23 == v22)
  {
    goto LABEL_16;
  }

  v12 = 0;
  v13 = 1;
  while (1)
  {
    v14 = *&v22[8 * v12];
    if (*(v14 + 20) == 1)
    {
      break;
    }

    v12 = v13;
    if ((v23 - v22) >> 3 <= v13++)
    {
      goto LABEL_17;
    }
  }

  v16 = *(v14 + 16);
  v17 = v16 & 0xFF00000000;
  v18 = v16 & 0xFFFFFF00;
LABEL_24:
  operator delete(v11);
  v6 = (v18 | v17) >> 8;
  if ((v17 & 0x100000000) != 0)
  {
    LOBYTE(v19) = v18 | v17 | v16;
    return v17 & 0xFF00000000 | v19 | ((v6 & 0xFFFFFF) << 8);
  }

LABEL_19:
  if (a2)
  {
    v19 = sub_C7100(a1, 0, a3);
    v6 = v19 >> 8;
    v17 = v19 & 0xFF00000000;
  }

  else
  {
    LOBYTE(v19) = 0;
    v17 = 0;
  }

  return v17 & 0xFF00000000 | v19 | ((v6 & 0xFFFFFF) << 8);
}

unint64_t sub_C7250(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_84CDC(a1);
  v6 = *a2;
  sub_84CDC(a1);
  v7 = 24;
  if (!v6)
  {
    v7 = 0;
  }

  v8 = a1 + v7;
  *buf = *(a2 + 4);
  *&buf[8] = *(a2 + 8);
  v9 = sub_C5464(a1 + v7, buf);
  if (v8 + 8 == v9 || !*(v9 + 112))
  {
    v12 = 0;
  }

  else
  {
    v10 = sub_C8210(v9 + 96, *(a2 + 24), a3);
    v11 = v10;
    v12 = v10 >> 8;
    if (v13)
    {
      return v11 | (v12 << 8);
    }
  }

  if (*(a2 + 4) == 1768776806)
  {
    v11 = 0;
  }

  else
  {
    v14 = sub_5544(21);
    v15 = sub_5544(39);
    v16 = 0;
    *buf = 0x100000002;
    v17 = *(v14 + 8);
    while (1)
    {
      v18 = *&buf[v16];
      if (((v17 & v18) != 0) != ((*(v15 + 8) & v18) != 0))
      {
        break;
      }

      v16 += 4;
      if (v16 == 8)
      {
        if ((v17 & 1) == 0)
        {
          goto LABEL_29;
        }

        goto LABEL_18;
      }
    }

    if ((v17 & v18) == 0)
    {
      v14 = v15;
    }

    if (*(v14 + 8))
    {
LABEL_18:
      v19 = *v14;
      if (v19 && os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        sub_22170(v28, *(a2 + 4));
        v20 = v29;
        v21 = v28[0];
        sub_22170(__p, 0x696D6466u);
        v22 = v28;
        if (v20 < 0)
        {
          v22 = v21;
        }

        if (v27 >= 0)
        {
          v23 = __p;
        }

        else
        {
          v23 = __p[0];
        }

        *buf = 136315906;
        *&buf[4] = "RoutingTypes.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 2746;
        *&buf[18] = 2080;
        *&buf[20] = v22;
        v31 = 2080;
        v32[0] = v23;
        _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEBUG, "%25s:%-5d Did not find entry for current mode: %s, looking in secondary mode: %s instead.", buf, 0x26u);
        if (v27 < 0)
        {
          operator delete(__p[0]);
        }

        if (v29 < 0)
        {
          operator delete(v28[0]);
        }
      }
    }

LABEL_29:
    sub_CF9A0(buf, *a2, 1768776806, (a2 + 8), *(a2 + 24), (a2 + 32));
    v24 = sub_C7250(a1, buf, a3);
    v11 = v24;
    v12 = v24 >> 8;
    if (*(v32 + 2))
    {
      *(&v32[1] + 2) = *(v32 + 2);
      operator delete(*(v32 + 2));
    }
  }

  return v11 | (v12 << 8);
}

void sub_C7500(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20)
{
  if (v21 < 0)
  {
    operator delete(v20);
  }

  _Unwind_Resume(exception_object);
}

void sub_C7534(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = *(a1 + 80);
  if (v6)
  {
    v7 = (*(*v6 + 112))(v91);
  }

  else
  {
    v7 = sub_53E8(v91, "unknown");
  }

  v76 = &v76;
  v8 = a2;
  v77 = a2;
  v9 = __chkstk_darwin(v7);
  v11 = &v76 - v10;
  v12 = 0;
  v13 = 0;
  v9.n128_u64[0] = 136317186;
  v79 = v9;
  v9.n128_u64[0] = 136317442;
  v78 = v9;
  v83 = &v76 - v10;
  v82 = a3;
  v81 = a2;
  do
  {
    v14 = (a3 + 12 * v12);
    v15 = *v14;
    if (*v14 == 1986229104)
    {
      v16 = sub_5544(0);
      v17 = sub_5544(39);
      v18 = 0;
      *buf = 0x100000002;
      v19 = *(v16 + 8);
      while (1)
      {
        v20 = *&buf[v18];
        if (((v19 & v20) != 0) != ((*(v17 + 8) & v20) != 0))
        {
          break;
        }

        v18 += 4;
        if (v18 == 8)
        {
          if ((v19 & 1) == 0)
          {
            goto LABEL_27;
          }

          goto LABEL_14;
        }
      }

      if ((v19 & v20) == 0)
      {
        v16 = v17;
      }

      if (*(v16 + 8))
      {
LABEL_14:
        v21 = *v16;
        if (v21 && os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          v22 = v5;
          v84 = v13;
          if (v92 >= 0)
          {
            v23 = v91;
          }

          else
          {
            v23 = v91[0];
          }

          sub_22170(v89, v14[1]);
          v24 = v90;
          v25 = v89[0];
          v27 = v14[1];
          v26 = v14[2];
          sub_22170(v87, *(v22 + 104));
          v28 = v89;
          if (v24 < 0)
          {
            v28 = v25;
          }

          v29 = v87;
          if (v88 < 0)
          {
            v29 = v87[0];
          }

          v30 = *(v22 + 104);
          v31 = *(v22 + 108);
          *buf = v79.n128_u32[0];
          *&buf[4] = "VirtualAudio_Control.cpp";
          v94 = 1024;
          v95 = 385;
          v96 = 2080;
          *v97 = v23;
          *&v97[8] = 2080;
          v98 = v28;
          v99 = 1024;
          *v100 = v27;
          *&v100[4] = 1024;
          *&v100[6] = v26;
          *v101 = 2080;
          *&v101[2] = v29;
          v102 = 1024;
          *v103 = v30;
          *&v103[4] = 1024;
          *&v103[6] = v31;
          _os_log_impl(&dword_0, v21, OS_LOG_TYPE_DEBUG, "%25s:%-5d Send property listener callback to VAD client '%s'. (selector: kVirtualAudioDevicePropertyVolumeControlSupported; scope: '%s' (%u); element: %u) translated to (scope: '%s' (%u); element: %u).", buf, 0x48u);
          v5 = v22;
          if (v88 < 0)
          {
            operator delete(v87[0]);
          }

          v11 = v83;
          v13 = v84;
          a3 = v82;
          v8 = v81;
          if (v90 < 0)
          {
            operator delete(v89[0]);
          }
        }
      }

LABEL_27:
      v15 = *v14;
    }

    if (v15 == 1684633187)
    {
      v32 = sub_5544(0);
      v33 = sub_5544(39);
      v34 = 0;
      *buf = 0x100000002;
      v35 = *(v32 + 8);
      while (1)
      {
        v36 = *&buf[v34];
        if (((v35 & v36) != 0) != ((*(v33 + 8) & v36) != 0))
        {
          break;
        }

        v34 += 4;
        if (v34 == 8)
        {
          if ((v35 & 1) == 0)
          {
            goto LABEL_50;
          }

          goto LABEL_37;
        }
      }

      if ((v35 & v36) == 0)
      {
        v32 = v33;
      }

      if (*(v32 + 8))
      {
LABEL_37:
        v37 = *v32;
        if (v37 && os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
        {
          v38 = v5;
          v84 = v13;
          if (v92 >= 0)
          {
            v39 = v91;
          }

          else
          {
            v39 = v91[0];
          }

          sub_22170(v89, v14[1]);
          v40 = v90;
          v41 = v89[0];
          v43 = v14[1];
          v42 = v14[2];
          sub_22170(v87, *(v38 + 104));
          v44 = v89;
          if (v40 < 0)
          {
            v44 = v41;
          }

          v45 = v87;
          if (v88 < 0)
          {
            v45 = v87[0];
          }

          v46 = *(v38 + 104);
          v47 = *(v38 + 108);
          *buf = v79.n128_u32[0];
          *&buf[4] = "VirtualAudio_Control.cpp";
          v94 = 1024;
          v95 = 396;
          v96 = 2080;
          *v97 = v39;
          *&v97[8] = 2080;
          v98 = v44;
          v99 = 1024;
          *v100 = v43;
          *&v100[4] = 1024;
          *&v100[6] = v42;
          *v101 = 2080;
          *&v101[2] = v45;
          v102 = 1024;
          *v103 = v46;
          *&v103[4] = 1024;
          *&v103[6] = v47;
          _os_log_impl(&dword_0, v37, OS_LOG_TYPE_DEBUG, "%25s:%-5d Send property listener callback to VAD client '%s'. (selector: kVirtualAudioDevicePropertyDeviceInitiatedVolumeChange; scope: '%s' (%u); element: %u) translated to (scope: '%s' (%u); element %u).", buf, 0x48u);
          v5 = v38;
          if (v88 < 0)
          {
            operator delete(v87[0]);
          }

          v11 = v83;
          v13 = v84;
          a3 = v82;
          v8 = v81;
          if (v90 < 0)
          {
            operator delete(v89[0]);
          }
        }
      }
    }

LABEL_50:
    v48 = *v14;
    if (*v14 == 1986817377 || v48 == 1064725619)
    {
      v50 = sub_5544(0);
      v51 = sub_5544(39);
      v52 = 0;
      *buf = 0x100000002;
      v53 = *(v50 + 8);
      while (1)
      {
        v54 = *&buf[v52];
        if (((v53 & v54) != 0) != ((*(v51 + 8) & v54) != 0))
        {
          break;
        }

        v52 += 4;
        if (v52 == 8)
        {
          if ((v53 & 1) == 0)
          {
            goto LABEL_81;
          }

          goto LABEL_63;
        }
      }

      if ((v53 & v54) == 0)
      {
        v50 = v51;
      }

      if (*(v50 + 8))
      {
LABEL_63:
        v55 = *v50;
        if (v55 && os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
        {
          if (v92 >= 0)
          {
            v56 = v91;
          }

          else
          {
            v56 = v91[0];
          }

          sub_22170(v89, *v14);
          v80 = v56;
          v84 = v13;
          v57 = v5;
          if (v90 >= 0)
          {
            v58 = v89;
          }

          else
          {
            v58 = v89[0];
          }

          sub_22170(v87, v14[1]);
          v59 = v88;
          v60 = v87[0];
          v62 = v14[1];
          v61 = v14[2];
          sub_22170(v85, *(v57 + 104));
          v63 = v87;
          if (v59 < 0)
          {
            v63 = v60;
          }

          v64 = v85;
          if (v86 < 0)
          {
            v64 = v85[0];
          }

          v65 = *(v57 + 104);
          v66 = *(v57 + 108);
          *buf = v78.n128_u32[0];
          *&buf[4] = "VirtualAudio_Control.cpp";
          v94 = 1024;
          v95 = 409;
          v96 = 2080;
          *v97 = v80;
          *&v97[8] = 2080;
          v98 = v58;
          v99 = 2080;
          *v100 = v63;
          *&v100[8] = 1024;
          *v101 = v62;
          *&v101[4] = 1024;
          *&v101[6] = v61;
          v102 = 2080;
          *v103 = v64;
          *&v103[8] = 1024;
          v104 = v65;
          v105 = 1024;
          v106 = v66;
          _os_log_impl(&dword_0, v55, OS_LOG_TYPE_DEBUG, "%25s:%-5d Send property listener callback to VAD client '%s'. (selector: %s; scope: '%s' (%u); element: %u) translated to (scope: '%s' (%u); element %u).", buf, 0x52u);
          v5 = v57;
          if (v86 < 0)
          {
            operator delete(v85[0]);
          }

          v11 = v83;
          v13 = v84;
          a3 = v82;
          v8 = v81;
          if (v88 < 0)
          {
            operator delete(v87[0]);
          }

          if (v90 < 0)
          {
            operator delete(v89[0]);
          }
        }
      }

LABEL_81:
      v48 = *v14;
    }

    if (v48 <= 1919774834)
    {
      v67 = v48 == 1064725619;
      v68 = 1684633187;
    }

    else
    {
      v67 = v48 == 1919774835 || v48 == 1986817377;
      v68 = 1986229104;
    }

    if (v67 || v48 == v68)
    {
      v70 = &v11[12 * v13];
      v13 = (v13 + 1);
      *v70 = *v14;
      *(v70 + 2) = v14[2];
    }

    ++v12;
  }

  while (v12 != v8);
  v71 = sub_5544(0);
  v72 = v77;
  if (*(v71 + 8))
  {
    v73 = *v71;
    if (*v71)
    {
      if (os_log_type_enabled(*v71, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315906;
        *&buf[4] = "VirtualAudio_Control.cpp";
        v94 = 1024;
        v95 = 418;
        v96 = 1024;
        *v97 = v72;
        *&v97[4] = 1024;
        *&v97[6] = v13;
        _os_log_impl(&dword_0, v73, OS_LOG_TYPE_DEBUG, "%25s:%-5d inNumberAddresses: %u; outNumberAddresses: %u", buf, 0x1Eu);
      }
    }
  }

  if (v13 > v72)
  {
    v74 = sub_5544(14);
    v75 = *v74;
    if (*v74 && os_log_type_enabled(*v74, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "VirtualAudio_Control.cpp";
      v94 = 1024;
      v95 = 420;
      _os_log_impl(&dword_0, v75, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: inNumberAddresses < outNumberAddresses.", buf, 0x12u);
    }
  }

  else if (!v13)
  {
    goto LABEL_102;
  }

  (*(*v5 + 88))(v5, v13, v11, 1);
LABEL_102:
  if (v13 != v72)
  {
    (*(*v5 + 184))(v5);
  }

  if (v92 < 0)
  {
    operator delete(v91[0]);
  }
}

void sub_C7E90(_Unwind_Exception *exception_object)
{
  if (*(v1 - 209) < 0)
  {
    operator delete(*(v1 - 232));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_C7F14(uint64_t a1, uint64_t a2)
{
  if (*a2 != 1)
  {
    v14 = sub_5544(14);
    v15 = *v14;
    if (*v14 && os_log_type_enabled(*v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *v22 = "RoutingTypes.cpp";
      *&v22[8] = 1024;
      *&v22[10] = 2699;
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  sub_84CDC(a1);
  *buf = *(a2 + 4);
  *&v22[4] = *(a2 + 8);
  v4 = sub_C5464(a1 + 24, buf);
  if (a1 + 32 == v4 || *(v4 + 84) != 1)
  {
    if (*(a2 + 4) == 1768776806)
    {
      v6 = 0;
      v5 = 0;
    }

    else
    {
      v7 = sub_5544(21);
      if (*(v7 + 8))
      {
        v8 = *v7;
        if (*v7)
        {
          if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEBUG))
          {
            sub_22170(v19, *(a2 + 4));
            v9 = v20;
            v10 = v19[0];
            sub_22170(__p, 0x696D6466u);
            v11 = v19;
            if (v9 < 0)
            {
              v11 = v10;
            }

            if (v18 >= 0)
            {
              v12 = __p;
            }

            else
            {
              v12 = __p[0];
            }

            *buf = 136315906;
            *v22 = "RoutingTypes.cpp";
            *&v22[8] = 1024;
            *&v22[10] = 2714;
            *&v22[14] = 2080;
            *&v22[16] = v11;
            v23 = 2080;
            v24[0] = v12;
            _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEBUG, "%25s:%-5d Did not find volume curve transfer function in %s mode.  Looking in %s mode instead", buf, 0x26u);
            if (v18 < 0)
            {
              operator delete(__p[0]);
            }

            if (v20 < 0)
            {
              operator delete(v19[0]);
            }
          }
        }
      }

      sub_CF9A0(buf, *a2, 1768776806, (a2 + 8), *(a2 + 24), (a2 + 32));
      v5 = sub_C7F14(a1, buf);
      if (*(v24 + 2))
      {
        *(&v24[1] + 2) = *(v24 + 2);
        operator delete(*(v24 + 2));
      }

      v6 = 0;
    }
  }

  else
  {
    v5 = *(v4 + 80);
    v6 = v5 & 0xFFFFFF0000000000;
  }

  return v6 | v5 & 0xFFFFFFFFFFLL;
}

void sub_C81CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20)
{
  if (v21 < 0)
  {
    operator delete(v20);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_C8210(uint64_t a1, unsigned int a2, int a3)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
    goto LABEL_26;
  }

  v5 = a1 + 8;
  do
  {
    v6 = *(v4 + 32);
    v7 = v6 >= a2;
    v8 = v6 < a2;
    if (v7)
    {
      v5 = v4;
    }

    v4 = *(v4 + 8 * v8);
  }

  while (v4);
  if (v5 == a1 + 8)
  {
    goto LABEL_26;
  }

  if (*(v5 + 32) > a2)
  {
    goto LABEL_26;
  }

  v11 = *(v5 + 96);
  v9 = v5 + 96;
  v10 = v11;
  if (!v11)
  {
    goto LABEL_26;
  }

  v12 = v9;
  do
  {
    if (*(v10 + 32) >= a3)
    {
      v12 = v10;
    }

    v10 = *(v10 + 8 * (*(v10 + 32) < a3));
  }

  while (v10);
  if (v12 != v9 && *(v12 + 32) <= a3 && *(v12 + 48) == 1)
  {
    v13 = sub_5544(21);
    v14 = *v13;
    if (*v13 && os_log_type_enabled(*v13, OS_LOG_TYPE_DEFAULT))
    {
      if ((*(v12 + 48) & 1) == 0)
      {
        sub_1EC054();
      }

      sub_15E30C(&__p, *(v12 + 40));
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 136315906;
      v22 = "RoutingTypes.cpp";
      v23 = 1024;
      v24 = 1721;
      v25 = 1024;
      v26 = a3;
      v27 = 2080;
      v28 = p_p;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Extended volume description of type %u present: %s", buf, 0x22u);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    v16 = *(v12 + 40);
    v17 = *(v12 + 48);
    v18 = v16 & 0xFFFFFFFFFFFFFF00;
  }

  else
  {
LABEL_26:
    if (a2)
    {
      v16 = sub_C8210();
      v18 = v16 & 0xFFFFFFFFFFFFFF00;
    }

    else
    {
      LOBYTE(v16) = 0;
      v18 = 0;
    }
  }

  return v18 | v16;
}

unint64_t sub_C83E4(uint64_t a1, unsigned int a2)
{
  v4 = *(a1 + 32);
  if (!v4)
  {
    goto LABEL_11;
  }

  v5 = a1 + 32;
  do
  {
    v6 = *(v4 + 32);
    v7 = v6 >= a2;
    v8 = v6 < a2;
    if (v7)
    {
      v5 = v4;
    }

    v4 = *(v4 + 8 * v8);
  }

  while (v4);
  if (v5 != a1 + 32 && *(v5 + 32) <= a2 && *(v5 + 48) == 1)
  {
    v9 = *(v5 + 40);
    v10 = *(v5 + 48);
    v11 = v9 & 0xFFFFFFFFFFFFFF00;
  }

  else
  {
LABEL_11:
    if (a2 == 1768776806)
    {
      LOBYTE(v9) = 0;
      v11 = 0;
    }

    else
    {
      v12 = sub_5544(21);
      if (*(v12 + 8))
      {
        v13 = *v12;
        if (*v12)
        {
          if (os_log_type_enabled(*v12, OS_LOG_TYPE_DEBUG))
          {
            sub_22170(__p, a2);
            if (v17 >= 0)
            {
              v14 = __p;
            }

            else
            {
              v14 = __p[0];
            }

            *buf = 136315650;
            v19 = "RoutingTypes.cpp";
            v20 = 1024;
            v21 = 510;
            v22 = 2080;
            v23 = v14;
            _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEBUG, "%25s:%-5d Did not find entry for current mode: %s, looking in default mode instead.", buf, 0x1Cu);
            if (v17 < 0)
            {
              operator delete(__p[0]);
            }
          }
        }
      }

      v9 = sub_C83E4(a1, 1768776806);
      v11 = v9 & 0xFFFFFFFFFFFFFF00;
    }
  }

  return v11 | v9;
}

unint64_t sub_C8588(uint64_t a1, uint64_t a2)
{
  sub_84CDC(a1);
  v4 = *a2;
  sub_84CDC(a1);
  v5 = 24;
  if (!v4)
  {
    v5 = 0;
  }

  v6 = a1 + v5;
  *buf = *(a2 + 4);
  *&v22[4] = *(a2 + 8);
  v7 = sub_C5464(a1 + v5, buf);
  if (v6 + 8 == v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = sub_C87E4(v7 + 96, *(a2 + 24), (a2 + 32));
    if (v9)
    {
      return v8;
    }
  }

  if (*(a2 + 4) != 1768776806)
  {
    v10 = sub_5544(21);
    if (*(v10 + 8))
    {
      v11 = *v10;
      if (*v10)
      {
        if (os_log_type_enabled(*v10, OS_LOG_TYPE_DEBUG))
        {
          sub_22170(v19, *(a2 + 4));
          v12 = v20;
          v13 = v19[0];
          sub_22170(__p, 0x696D6466u);
          v14 = v19;
          if (v12 < 0)
          {
            v14 = v13;
          }

          if (v18 >= 0)
          {
            v15 = __p;
          }

          else
          {
            v15 = __p[0];
          }

          *buf = 136315906;
          *v22 = "RoutingTypes.cpp";
          *&v22[8] = 1024;
          *&v22[10] = 2954;
          *&v22[14] = 2080;
          *&v22[16] = v14;
          v23 = 2080;
          v24[0] = v15;
          _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEBUG, "%25s:%-5d Did not find entry for current mode: %s, looking in secondary mode: %s instead.", buf, 0x26u);
          if (v18 < 0)
          {
            operator delete(__p[0]);
          }

          if (v20 < 0)
          {
            operator delete(v19[0]);
          }
        }
      }
    }

    sub_CF9A0(buf, *a2, 1768776806, (a2 + 8), *(a2 + 24), (a2 + 32));
    v8 = sub_C8588(a1, buf);
    if (*(v24 + 2))
    {
      *(&v24[1] + 2) = *(v24 + 2);
      operator delete(*(v24 + 2));
    }
  }

  return v8;
}

void sub_C87B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20)
{
  if (v21 < 0)
  {
    operator delete(v20);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_C87E4(uint64_t a1, unsigned int a2, unsigned int **a3)
{
  v6 = *(a1 + 8);
  if (!v6)
  {
    goto LABEL_18;
  }

  v7 = a1 + 8;
  do
  {
    v8 = *(v6 + 32);
    v9 = v8 >= a2;
    v10 = v8 < a2;
    if (v9)
    {
      v7 = v6;
    }

    v6 = *(v6 + 8 * v10);
  }

  while (v6);
  if (v7 == a1 + 8 || *(v7 + 32) > a2)
  {
LABEL_18:
    v16 = 0;
LABEL_19:
    if (a2)
    {
      v17 = sub_C87E4(a1, 0, a3);
      LOBYTE(v18) = v17;
      v16 = v17 >> 8;
    }

    else
    {
      LOBYTE(v18) = 0;
    }

    return v18 | (v16 << 8);
  }

  sub_C6778(*(v7 + 64), *(v7 + 72));
  sub_C6894(v21, v7 + 40, a3);
  if ((v21[0] & 1) == 0)
  {
    v11 = __p;
LABEL_16:
    if (v11)
    {
LABEL_17:
      operator delete(v11);
    }

    goto LABEL_18;
  }

  v11 = __p;
  if (v23 == __p)
  {
    goto LABEL_16;
  }

  v12 = 0;
  v13 = 1;
  while (1)
  {
    v14 = *(__p + v12);
    if (*(v14 + 72))
    {
      break;
    }

    v12 = v13;
    if ((v23 - __p) >> 3 <= v13++)
    {
      goto LABEL_17;
    }
  }

  v18 = *(v14 + 64);
  v20 = *(v14 + 72);
  operator delete(__p);
  v16 = v18 >> 8;
  if ((v20 & 1) == 0)
  {
    goto LABEL_19;
  }

  return v18 | (v16 << 8);
}

void sub_C8914(uint64_t a1, unsigned int a2, _OWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a5 == 1)
  {
    sub_88A00(&v13, (a4 + 16), "", 1344);
    v12 = *(v13 + 304);
    if (v14)
    {
      sub_1A8C0(v14);
    }
  }

  else
  {
    v12 = 0;
  }

  sub_C8A18(&v13, a2, a3, v12);
  sub_C8A80(&v17, a6, &v13);
  if (__p)
  {
    v16 = __p;
    operator delete(__p);
  }

  if (v19)
  {
    *a1 = v17;
    *(a1 + 16) = v18;
    *(a1 + 24) = 1;
  }

  else
  {
    sub_CFBCC(a1, a7, a2);
  }
}

void sub_C89FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_C8A18(uint64_t a1, int a2, _OWORD *a3, int a4)
{
  *a1 = 1;
  *(a1 + 4) = a2;
  *(a1 + 8) = *a3;
  *(a1 + 24) = a4;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  sub_C5CAC(a1);
  return a1;
}

void sub_C8A60(_Unwind_Exception *exception_object)
{
  v3 = v2;
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 40) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(exception_object);
}

void sub_C8A80(_BYTE *a1, uint64_t a2, int *a3)
{
  v6 = sub_5544(21);
  if (*(v6 + 8))
  {
    v7 = *v6;
    if (*v6)
    {
      if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEBUG))
      {
        memset(&v38, 0, sizeof(v38));
        std::string::append(&v38, "[ ", 2uLL);
        if (*a3)
        {
          v8 = "dst; ";
        }

        else
        {
          v8 = "src; ";
        }

        std::string::append(&v38, v8, 5uLL);
        sub_22170(__p, a3[1]);
        if (__p[23] >= 0)
        {
          v9 = __p;
        }

        else
        {
          v9 = *__p;
        }

        if (__p[23] >= 0)
        {
          v10 = __p[23];
        }

        else
        {
          v10 = *&__p[8];
        }

        std::string::append(&v38, v9, v10);
        if ((__p[23] & 0x80000000) != 0)
        {
          operator delete(*__p);
        }

        std::string::append(&v38, "; ", 2uLL);
        sub_1094D0(__p, a3 + 1);
        if (__p[23] >= 0)
        {
          v11 = __p;
        }

        else
        {
          v11 = *__p;
        }

        if (__p[23] >= 0)
        {
          v12 = __p[23];
        }

        else
        {
          v12 = *&__p[8];
        }

        std::string::append(&v38, v11, v12);
        if ((__p[23] & 0x80000000) != 0)
        {
          operator delete(*__p);
        }

        std::string::append(&v38, "; ", 2uLL);
        v13 = a3[6];
        if (v13)
        {
          sub_22170(__p, v13);
        }

        else
        {
          sub_53E8(__p, "None");
        }

        if (__p[23] >= 0)
        {
          v14 = __p;
        }

        else
        {
          v14 = *__p;
        }

        if (__p[23] >= 0)
        {
          v15 = __p[23];
        }

        else
        {
          v15 = *&__p[8];
        }

        std::string::append(&v38, v14, v15);
        if ((__p[23] & 0x80000000) != 0)
        {
          operator delete(*__p);
        }

        std::string::append(&v38, "; ", 2uLL);
        sub_10898C(__p, *(a3 + 4), *(a3 + 5));
        if (__p[23] >= 0)
        {
          v16 = __p;
        }

        else
        {
          v16 = *__p;
        }

        if (__p[23] >= 0)
        {
          v17 = __p[23];
        }

        else
        {
          v17 = *&__p[8];
        }

        std::string::append(&v38, v16, v17);
        if ((__p[23] & 0x80000000) != 0)
        {
          operator delete(*__p);
        }

        std::string::append(&v38, " ]", 2uLL);
        if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v18 = &v38;
        }

        else
        {
          v18 = v38.__r_.__value_.__r.__words[0];
        }

        *__p = 136315650;
        *&__p[4] = "RoutingTypes.cpp";
        *&__p[12] = 1024;
        *&__p[14] = 2917;
        *&__p[18] = 2080;
        *&__p[20] = v18;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d Looking up DSP list vector for %s", __p, 0x1Cu);
        if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v38.__r_.__value_.__l.__data_);
        }
      }
    }
  }

  sub_84CDC(a2);
  *a1 = 0;
  a1[24] = 0;
  v19 = *a3;
  sub_84CDC(a2);
  v20 = 24;
  if (!v19)
  {
    v20 = 0;
  }

  v21 = a2 + v20;
  *__p = a3[1];
  *&__p[8] = *(a3 + 2);
  v22 = sub_C5464(a2 + v20, __p);
  if (v21 + 8 == v22)
  {
    goto LABEL_74;
  }

  v23 = a3[6];
  v24 = (v22 + 104);
  do
  {
    v25 = v23;
    v26 = *v24;
    if (!*v24)
    {
      goto LABEL_68;
    }

    v27 = v24;
    do
    {
      v28 = *(v26 + 32);
      v29 = v28 >= v25;
      v30 = v28 < v25;
      if (v29)
      {
        v27 = v26;
      }

      v26 = *(v26 + 8 * v30);
    }

    while (v26);
    if (v27 == v24 || *(v27 + 8) > v25)
    {
      goto LABEL_68;
    }

    sub_C6778(v27[8], v27[9]);
    sub_C6894(__p, (v27 + 5), a3 + 4);
    if ((__p[0] & 1) == 0)
    {
      v31 = *&__p[8];
LABEL_64:
      v38.__r_.__value_.__s.__data_[0] = 0;
      v39 = 0;
      if (!v31)
      {
        goto LABEL_68;
      }

      goto LABEL_67;
    }

    v31 = *&__p[8];
    if (*&__p[16] == *&__p[8])
    {
      goto LABEL_64;
    }

    if (*(**&__p[8] + 56) != 1)
    {
      *&v44[17] = 0;
      v40[1] = 0;
      v41 = 0;
      v40[0] = 0;
      sub_141650();
    }

    sub_C90FC(&v38, **&__p[8] + 32);
LABEL_67:
    *&__p[16] = v31;
    operator delete(v31);
    if (v39)
    {
      goto LABEL_70;
    }

LABEL_68:
    v23 = 0;
  }

  while (v25);
  v38.__r_.__value_.__s.__data_[0] = 0;
  v39 = 0;
LABEL_70:
  sub_C95C8(a1, &v38);
  if (v39 == 1 && v38.__r_.__value_.__r.__words[0])
  {
    v38.__r_.__value_.__l.__size_ = v38.__r_.__value_.__r.__words[0];
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if ((a1[24] & 1) == 0)
  {
LABEL_74:
    if (a3[1] != 1768776806)
    {
      v32 = sub_5544(21);
      if (*(v32 + 8))
      {
        v33 = *v32;
        if (*v32)
        {
          if (os_log_type_enabled(*v32, OS_LOG_TYPE_DEBUG))
          {
            sub_22170(&v38, a3[1]);
            v34 = SHIBYTE(v38.__r_.__value_.__r.__words[2]);
            v35 = v38.__r_.__value_.__r.__words[0];
            sub_22170(v40, 0x696D6466u);
            v36 = &v38;
            if (v34 < 0)
            {
              v36 = v35;
            }

            if (v41 >= 0)
            {
              v37 = v40;
            }

            else
            {
              v37 = v40[0];
            }

            *__p = 136315906;
            *&__p[4] = "RoutingTypes.cpp";
            *&__p[12] = 1024;
            *&__p[14] = 2932;
            *&__p[18] = 2080;
            *&__p[20] = v36;
            v43 = 2080;
            *v44 = v37;
            _os_log_impl(&dword_0, v33, OS_LOG_TYPE_DEBUG, "%25s:%-5d Did not find entry for current mode: %s, looking in secondary mode: %s instead.", __p, 0x26u);
            if (SHIBYTE(v41) < 0)
            {
              operator delete(v40[0]);
            }

            if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v38.__r_.__value_.__l.__data_);
            }
          }
        }
      }

      sub_CF9A0(__p, *a3, 1768776806, a3 + 2, a3[6], a3 + 4);
      sub_C8A80(&v38, a2, __p);
      sub_C95C8(a1, &v38);
      if (v39 == 1 && v38.__r_.__value_.__r.__words[0])
      {
        operator delete(v38.__r_.__value_.__l.__data_);
      }

      if (*&v44[1])
      {
        *&v44[5] = *&v44[1];
        operator delete(*&v44[1]);
      }
    }
  }
}

void sub_C9038(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  if (v31 < 0)
  {
    operator delete(v29);
  }

  if (v30)
  {
    v33 = *v28;
    if (*v28)
    {
      *(v28 + 8) = v33;
      operator delete(v33);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_C90FC(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 24) = 0;
  if (*(a2 + 24) == 1)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    sub_C9184(a1, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 3);
    *(a1 + 24) = 1;
  }

  return a1;
}

void sub_C915C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 24) == 1)
  {
    v3 = *v1;
    if (*v1)
    {
      *(v1 + 8) = v3;
      operator delete(v3);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_C9184(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_99B50(result, a4);
  }

  return result;
}

void sub_C91E4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_C9200(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  sub_84CDC(a2);
  *a1 = 0;
  a1[40] = 0;
  v6 = *a3;
  sub_84CDC(a2);
  v7 = 24;
  if (!v6)
  {
    v7 = 0;
  }

  v8 = a2 + v7;
  *buf = *(a3 + 4);
  *&buf[8] = *(a3 + 8);
  v9 = sub_C5464(a2 + v7, buf);
  if (v8 + 8 != v9)
  {
    v12 = *(v9 + 104);
    v10 = v9 + 104;
    v11 = v12;
    if (!v12)
    {
      goto LABEL_22;
    }

    v13 = *(a3 + 24);
    v14 = v10;
    do
    {
      v15 = *(v11 + 32);
      v16 = v15 >= v13;
      v17 = v15 < v13;
      if (v16)
      {
        v14 = v11;
      }

      v11 = *(v11 + 8 * v17);
    }

    while (v11);
    if (v14 == v10 || *(v14 + 32) > v13)
    {
      goto LABEL_22;
    }

    sub_C6778(*(v14 + 64), *(v14 + 72));
    sub_C6894(&v31, v14 + 40, (a3 + 32));
    if (v31 != 1 || (v18 = __p, v33 == __p))
    {
LABEL_17:
      sub_C9678(buf, &unk_5A4740);
      v18 = __p;
      if (!__p)
      {
LABEL_21:
        if (v40)
        {
LABEL_23:
          sub_C96E0(a1, buf);
          if (v40 == 1)
          {
            sub_EF820(*&buf[16]);
            v23 = *buf;
            *buf = 0;
            if (v23)
            {
              operator delete(v23);
            }
          }

          goto LABEL_26;
        }

LABEL_22:
        sub_C9678(buf, &unk_5A4740);
        goto LABEL_23;
      }
    }

    else
    {
      v19 = 0;
      v20 = 1;
      while (1)
      {
        v21 = *(__p + v19);
        if (*(v21 + 120) == 1)
        {
          break;
        }

        v19 = v20;
        if ((v33 - __p) >> 3 <= v20++)
        {
          goto LABEL_17;
        }
      }

      sub_C9678(buf, v21 + 80);
    }

    operator delete(v18);
    goto LABEL_21;
  }

LABEL_26:
  if ((a1[40] & 1) == 0 && *(a3 + 4) != 1768776806)
  {
    v24 = sub_5544(21);
    if (*(v24 + 8))
    {
      v25 = *v24;
      if (*v24)
      {
        if (os_log_type_enabled(*v24, OS_LOG_TYPE_DEBUG))
        {
          sub_22170(&v31, *(a3 + 4));
          v26 = SHIBYTE(v33);
          v27 = v31;
          sub_22170(v35, 0x696D6466u);
          v28 = &v31;
          if (v26 < 0)
          {
            v28 = v27;
          }

          if (v36 >= 0)
          {
            v29 = v35;
          }

          else
          {
            v29 = v35[0];
          }

          *buf = 136315906;
          *&buf[4] = "RoutingTypes.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 2976;
          *&buf[18] = 2080;
          *&buf[20] = v28;
          v38 = 2080;
          *v39 = v29;
          _os_log_impl(&dword_0, v25, OS_LOG_TYPE_DEBUG, "%25s:%-5d Did not find entry for current mode: %s, looking in secondary mode: %s instead.", buf, 0x26u);
          if (v36 < 0)
          {
            operator delete(v35[0]);
          }

          if (SHIBYTE(v33) < 0)
          {
            operator delete(v31);
          }
        }
      }
    }

    sub_CF9A0(buf, *a3, 1768776806, (a3 + 8), *(a3 + 24), (a3 + 32));
    sub_C9200(&v31, a2, buf);
    sub_C96E0(a1, &v31);
    if (v34 == 1)
    {
      sub_EF820(v33);
      v30 = v31;
      v31 = 0;
      if (v30)
      {
        operator delete(v30);
      }
    }

    if (*&v39[2])
    {
      v40 = *&v39[2];
      operator delete(*&v39[2]);
    }
  }
}

void sub_C9550(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  operator delete(v25);
  if (*(v24 + 40) == 1)
  {
    sub_12A2C4(v24);
  }

  _Unwind_Resume(a1);
}

__n128 sub_C95C8(uint64_t a1, __n128 *a2)
{
  if (*(a1 + 24) == a2[1].n128_u8[8])
  {
    if (*(a1 + 24))
    {
      v4 = *a1;
      if (*a1)
      {
        *(a1 + 8) = v4;
        operator delete(v4);
        *a1 = 0;
        *(a1 + 8) = 0;
        *(a1 + 16) = 0;
      }

      result = *a2;
      *a1 = *a2;
      *(a1 + 16) = a2[1].n128_u64[0];
      a2->n128_u64[0] = 0;
      a2->n128_u64[1] = 0;
      a2[1].n128_u64[0] = 0;
    }
  }

  else if (*(a1 + 24))
  {
    v6 = *a1;
    if (*a1)
    {
      *(a1 + 8) = v6;
      operator delete(v6);
    }

    *(a1 + 24) = 0;
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    result = *a2;
    *a1 = *a2;
    *(a1 + 16) = a2[1].n128_u64[0];
    a2->n128_u64[0] = 0;
    a2->n128_u64[1] = 0;
    a2[1].n128_u64[0] = 0;
    *(a1 + 24) = 1;
  }

  return result;
}

_BYTE *sub_C9678(_BYTE *a1, uint64_t a2)
{
  *a1 = 0;
  a1[40] = 0;
  if (*(a2 + 40) == 1)
  {
    sub_129D90(a1, a2);
    a1[40] = 1;
  }

  return a1;
}

void sub_C96C0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 40) == 1)
  {
    sub_12A2C4(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_C96E0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 40) == *(a2 + 40))
  {
    if (*(a1 + 40))
    {
      if (*(a1 + 24))
      {
        sub_EF820(*(a1 + 16));
        *(a1 + 16) = 0;
        v4 = *(a1 + 8);
        if (v4)
        {
          for (i = 0; i != v4; ++i)
          {
            *(*a1 + 8 * i) = 0;
          }
        }

        *(a1 + 24) = 0;
      }

      v6 = *a2;
      *a2 = 0;
      v7 = *a1;
      *a1 = v6;
      if (v7)
      {
        operator delete(v7);
      }

      v10 = *(a2 + 16);
      v9 = a2 + 16;
      v8 = v10;
      v11 = *(v9 - 8);
      *(a1 + 16) = v10;
      *(a1 + 8) = v11;
      *(v9 - 8) = 0;
      v12 = *(v9 + 8);
      *(a1 + 24) = v12;
      *(a1 + 32) = *(v9 + 16);
      if (v12)
      {
        v13 = *(v8 + 8);
        v14 = *(a1 + 8);
        if ((v14 & (v14 - 1)) != 0)
        {
          if (v13 >= v14)
          {
            v13 %= v14;
          }
        }

        else
        {
          v13 &= v14 - 1;
        }

        *(*a1 + 8 * v13) = a1 + 16;
        *v9 = 0;
        *(v9 + 8) = 0;
      }
    }
  }

  else if (*(a1 + 40))
  {
    sub_12A2C4(a1);
    *(a1 + 40) = 0;
  }

  else
  {
    sub_450F8(a1, a2);
    *(a1 + 40) = 1;
  }
}

uint64_t sub_C97F4(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t *a5, uint64_t *a6, int a7, char a8)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  if (a3)
  {
    atomic_fetch_add_explicit((a3 + 16), 1uLL, memory_order_relaxed);
  }

  sub_88A00(&v17, a1, "", 299);
  v14 = *(v17 + 304);
  if (v18)
  {
    sub_1A8C0(v18);
  }

  *(a1 + 24) = 0;
  *(a1 + 16) = v14;
  *(a1 + 20) = a4;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  sub_46980(a1 + 24, *a5, a5[1], (a5[1] - *a5) >> 2);
  v15 = *a6;
  *a6 = 0;
  *(a1 + 48) = v15;
  *(a1 + 56) = a7;
  *(a1 + 60) = a8;
  return a1;
}

void sub_C98BC(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_C98D8(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_CC488(v2);
    operator delete();
  }

  return a1;
}

uint64_t sub_C9920(uint64_t result, int a2)
{
  v2 = *(result + 8);
  if (!v2)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v3 = v2;
      v4 = *(v2 + 32);
      if (v4 <= a2)
      {
        break;
      }

      v2 = *v3;
      if (!*v3)
      {
        goto LABEL_7;
      }
    }

    if (v4 >= a2)
    {
      return result;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

void sub_C9A3C(_Unwind_Exception *a1)
{
  v3 = v1[6];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  sub_237B98(0, v1);
  _Unwind_Resume(a1);
}

unint64_t sub_C9A60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 28) = 0;
  *(a1 + 32) = 0;
  *(a1 + 36) = 0;
  *(a1 + 40) = 0;
  *(a1 + 44) = 0;
  *a1 = 0;
  *(a1 + 8) = 0;
  v19 = 1;
  v20 = a5;
  v21 = *sub_C53D8();
  v22 = 0;
  v24 = 0;
  v25 = 0;
  v23 = 0;
  v10 = sub_C9CEC(a2, &v19);
  v11 = HIDWORD(v10);
  if ((v10 & 0x100000000) == 0)
  {
    v19 = 0;
    v20 = a5;
    v21 = *sub_C53D8();
    v22 = 0;
    v24 = 0;
    v25 = 0;
    v23 = 0;
    v10 = sub_C9CEC(a2, &v19);
    v11 = HIDWORD(v10);
  }

  if ((v11 & 1) == 0)
  {
    v10 = sub_CA1B4(a3, a5);
    if ((v10 & 0x100000000) == 0)
    {
      LODWORD(v10) = 0;
    }
  }

  *a1 = v10;
  v19 = 1;
  v20 = a5;
  v21 = *sub_C53D8();
  v22 = 0;
  v24 = 0;
  v25 = 0;
  v23 = 0;
  v12 = sub_C9F50(a2, &v19);
  v13 = HIDWORD(v12);
  if ((v12 & 0x100000000) == 0)
  {
    v19 = 0;
    v20 = a5;
    v21 = *sub_C53D8();
    v22 = 0;
    v24 = 0;
    v25 = 0;
    v23 = 0;
    v12 = sub_C9F50(a2, &v19);
    v13 = HIDWORD(v12);
  }

  if ((v13 & 1) == 0)
  {
    v12 = sub_CA59C(a3, a5);
    if ((v12 & 0x100000000) == 0)
    {
      LODWORD(v12) = 0;
    }
  }

  *(a1 + 4) = v12;
  v19 = 1;
  v20 = a5;
  v21 = *sub_C53D8();
  v22 = 0;
  v24 = 0;
  v25 = 0;
  v23 = 0;
  *(a1 + 8) = sub_CA350(a2, &v19);
  *(a1 + 16) = v14;
  if ((v14 & 1) == 0)
  {
    v19 = 0;
    v20 = a5;
    v21 = *sub_C53D8();
    v22 = 0;
    v24 = 0;
    v25 = 0;
    v23 = 0;
    *(a1 + 8) = sub_CA350(a2, &v19);
    *(a1 + 16) = v15;
  }

  v16 = sub_CAD54(a3, a5, a4);
  *(a1 + 24) = v16;
  *(a1 + 28) = BYTE4(v16);
  v17 = sub_CA99C(a3, a5, a4);
  *(a1 + 32) = v17;
  *(a1 + 36) = BYTE4(v17);
  v19 = 1;
  v20 = a5;
  v21 = *sub_C53D8();
  v22 = 0;
  v24 = 0;
  v25 = 0;
  v23 = 0;
  result = sub_CA738(a2, &v19);
  *(a1 + 40) = result;
  *(a1 + 44) = BYTE4(result);
  if ((result & 0x100000000) == 0)
  {
    v19 = 0;
    v20 = a5;
    v21 = *sub_C53D8();
    v22 = 0;
    v24 = 0;
    v25 = 0;
    v23 = 0;
    result = sub_CA738(a2, &v19);
    *(a1 + 40) = result;
    *(a1 + 44) = BYTE4(result);
    if ((result & 0x100000000) == 0)
    {
      result = sub_CB10C(a3, a5);
      *(a1 + 40) = result;
      *(a1 + 44) = BYTE4(result);
    }
  }

  return result;
}

unint64_t sub_C9CEC(uint64_t a1, uint64_t a2)
{
  sub_84CDC(a1);
  v4 = *a2;
  sub_84CDC(a1);
  v5 = 24;
  if (!v4)
  {
    v5 = 0;
  }

  v6 = a1 + v5;
  *buf = *(a2 + 4);
  *&v24[4] = *(a2 + 8);
  v7 = sub_C5464(a1 + v5, buf);
  if (v6 + 8 == v7)
  {
    LOBYTE(v9) = 0;
    LOBYTE(v8) = 0;
    LODWORD(v10) = 0;
  }

  else
  {
    v8 = *(v7 + 60);
    v9 = *(v7 + 56) | (v8 << 32);
    v10 = v9 >> 8;
    if (v8)
    {
      return (v8 << 32) | ((v10 & 0xFFFFFF) << 8) | v9;
    }
  }

  if (*(a2 + 4) != 1768776806)
  {
    v11 = sub_5544(21);
    if (*(v11 + 8))
    {
      v12 = *v11;
      if (*v11)
      {
        if (os_log_type_enabled(*v11, OS_LOG_TYPE_DEBUG))
        {
          sub_22170(v21, *(a2 + 4));
          v13 = v22;
          v14 = v21[0];
          sub_22170(__p, 0x696D6466u);
          v15 = v21;
          if (v13 < 0)
          {
            v15 = v14;
          }

          if (v20 >= 0)
          {
            v16 = __p;
          }

          else
          {
            v16 = __p[0];
          }

          *buf = 136315906;
          *v24 = "RoutingTypes.cpp";
          *&v24[8] = 1024;
          *&v24[10] = 2770;
          *&v24[14] = 2080;
          *&v24[16] = v15;
          v25 = 2080;
          v26[0] = v16;
          _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEBUG, "%25s:%-5d Did not find preferred number of virtual channels in %s mode.  Looking in %s mode instead", buf, 0x26u);
          if (v20 < 0)
          {
            operator delete(__p[0]);
          }

          if (v22 < 0)
          {
            operator delete(v21[0]);
          }
        }
      }
    }

    sub_CF9A0(buf, *a2, 1768776806, (a2 + 8), *(a2 + 24), (a2 + 32));
    v17 = sub_C9CEC(a1, buf);
    LOBYTE(v9) = v17;
    v10 = v17 >> 8;
    v8 = HIDWORD(v17);
    if (*(v26 + 2))
    {
      *(&v26[1] + 2) = *(v26 + 2);
      operator delete(*(v26 + 2));
    }
  }

  return (v8 << 32) | ((v10 & 0xFFFFFF) << 8) | v9;
}

void sub_C9F1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20)
{
  if (v21 < 0)
  {
    operator delete(v20);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_C9F50(uint64_t a1, uint64_t a2)
{
  sub_84CDC(a1);
  v4 = *a2;
  sub_84CDC(a1);
  v5 = 24;
  if (!v4)
  {
    v5 = 0;
  }

  v6 = a1 + v5;
  *buf = *(a2 + 4);
  *&v24[4] = *(a2 + 8);
  v7 = sub_C5464(a1 + v5, buf);
  if (v6 + 8 == v7)
  {
    LOBYTE(v9) = 0;
    LOBYTE(v8) = 0;
    LODWORD(v10) = 0;
  }

  else
  {
    v8 = *(v7 + 68);
    v9 = *(v7 + 64) | (v8 << 32);
    v10 = v9 >> 8;
    if (v8)
    {
      return (v8 << 32) | ((v10 & 0xFFFFFF) << 8) | v9;
    }
  }

  if (*(a2 + 4) != 1768776806)
  {
    v11 = sub_5544(21);
    if (*(v11 + 8))
    {
      v12 = *v11;
      if (*v11)
      {
        if (os_log_type_enabled(*v11, OS_LOG_TYPE_DEBUG))
        {
          sub_22170(v21, *(a2 + 4));
          v13 = v22;
          v14 = v21[0];
          sub_22170(__p, 0x696D6466u);
          v15 = v21;
          if (v13 < 0)
          {
            v15 = v14;
          }

          if (v20 >= 0)
          {
            v16 = __p;
          }

          else
          {
            v16 = __p[0];
          }

          *buf = 136315906;
          *v24 = "RoutingTypes.cpp";
          *&v24[8] = 1024;
          *&v24[10] = 2792;
          *&v24[14] = 2080;
          *&v24[16] = v15;
          v25 = 2080;
          v26[0] = v16;
          _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEBUG, "%25s:%-5d Did not find forced number of virtual channels in %s mode.  Looking in %s mode instead", buf, 0x26u);
          if (v20 < 0)
          {
            operator delete(__p[0]);
          }

          if (v22 < 0)
          {
            operator delete(v21[0]);
          }
        }
      }
    }

    sub_CF9A0(buf, *a2, 1768776806, (a2 + 8), *(a2 + 24), (a2 + 32));
    v17 = sub_C9F50(a1, buf);
    LOBYTE(v9) = v17;
    v10 = v17 >> 8;
    v8 = HIDWORD(v17);
    if (*(v26 + 2))
    {
      *(&v26[1] + 2) = *(v26 + 2);
      operator delete(*(v26 + 2));
    }
  }

  return (v8 << 32) | ((v10 & 0xFFFFFF) << 8) | v9;
}

void sub_CA180(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20)
{
  if (v21 < 0)
  {
    operator delete(v20);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_CA1B4(uint64_t a1, unsigned int a2)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
    goto LABEL_11;
  }

  v5 = a1 + 8;
  do
  {
    v6 = *(v4 + 32);
    v7 = v6 >= a2;
    v8 = v6 < a2;
    if (v7)
    {
      v5 = v4;
    }

    v4 = *(v4 + 8 * v8);
  }

  while (v4);
  if (v5 != a1 + 8 && *(v5 + 32) <= a2 && *(v5 + 84) == 1)
  {
    v9 = *(v5 + 80);
    v10 = v9 & 0xFFFFFF0000000000;
  }

  else
  {
LABEL_11:
    if (a2 == 1768776806)
    {
      v10 = 0;
      v9 = 0;
    }

    else
    {
      v11 = sub_5544(21);
      if (*(v11 + 8))
      {
        v12 = *v11;
        if (*v11)
        {
          if (os_log_type_enabled(*v11, OS_LOG_TYPE_DEBUG))
          {
            sub_22170(__p, a2);
            if (v16 >= 0)
            {
              v13 = __p;
            }

            else
            {
              v13 = __p[0];
            }

            *buf = 136315650;
            v18 = "RoutingTypes.cpp";
            v19 = 1024;
            v20 = 789;
            v21 = 2080;
            v22 = v13;
            _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEBUG, "%25s:%-5d Did not find entry for current mode: %s, looking in default mode instead.", buf, 0x1Cu);
            if (v16 < 0)
            {
              operator delete(__p[0]);
            }
          }
        }
      }

      v9 = sub_CA1B4(a1, 1768776806);
      v10 = 0;
    }
  }

  return v9 & 0xFFFFFFFFFFLL | v10;
}

uint64_t sub_CA350(uint64_t a1, uint64_t a2)
{
  sub_84CDC(a1);
  v4 = *a2;
  sub_84CDC(a1);
  v5 = 24;
  if (!v4)
  {
    v5 = 0;
  }

  v6 = a1 + v5;
  *buf = *(a2 + 4);
  *&v21[4] = *(a2 + 8);
  v7 = sub_C5464(a1 + v5, buf);
  if (v6 + 8 == v7 || (v8 = *(v7 + 72)) == 0)
  {
    if (*(a2 + 4) == 1768776806)
    {
      return 0;
    }

    else
    {
      v9 = sub_5544(21);
      if (*(v9 + 8))
      {
        v10 = *v9;
        if (*v9)
        {
          if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEBUG))
          {
            sub_22170(v18, *(a2 + 4));
            v11 = v19;
            v12 = v18[0];
            sub_22170(__p, 0x696D6466u);
            v13 = v18;
            if (v11 < 0)
            {
              v13 = v12;
            }

            if (v17 >= 0)
            {
              v14 = __p;
            }

            else
            {
              v14 = __p[0];
            }

            *buf = 136315906;
            *v21 = "RoutingTypes.cpp";
            *&v21[8] = 1024;
            *&v21[10] = 2841;
            *&v21[14] = 2080;
            *&v21[16] = v13;
            v22 = 2080;
            v23[0] = v14;
            _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEBUG, "%25s:%-5d Did not find forced channel layout in %s mode.  Looking in %s mode instead", buf, 0x26u);
            if (v17 < 0)
            {
              operator delete(__p[0]);
            }

            if (v19 < 0)
            {
              operator delete(v18[0]);
            }
          }
        }
      }

      sub_CF9A0(buf, *a2, 1768776806, (a2 + 8), *(a2 + 24), (a2 + 32));
      v8 = sub_CA350(a1, buf);
      if (*(v23 + 2))
      {
        *(&v23[1] + 2) = *(v23 + 2);
        operator delete(*(v23 + 2));
      }
    }
  }

  return v8;
}

void sub_CA568(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20)
{
  if (v21 < 0)
  {
    operator delete(v20);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_CA59C(uint64_t a1, unsigned int a2)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
    goto LABEL_11;
  }

  v5 = a1 + 8;
  do
  {
    v6 = *(v4 + 32);
    v7 = v6 >= a2;
    v8 = v6 < a2;
    if (v7)
    {
      v5 = v4;
    }

    v4 = *(v4 + 8 * v8);
  }

  while (v4);
  if (v5 != a1 + 8 && *(v5 + 32) <= a2 && *(v5 + 92) == 1)
  {
    v9 = *(v5 + 88);
    v10 = v9 & 0xFFFFFF0000000000;
  }

  else
  {
LABEL_11:
    if (a2 == 1768776806)
    {
      v10 = 0;
      v9 = 0;
    }

    else
    {
      v11 = sub_5544(21);
      if (*(v11 + 8))
      {
        v12 = *v11;
        if (*v11)
        {
          if (os_log_type_enabled(*v11, OS_LOG_TYPE_DEBUG))
          {
            sub_22170(__p, a2);
            if (v16 >= 0)
            {
              v13 = __p;
            }

            else
            {
              v13 = __p[0];
            }

            *buf = 136315650;
            v18 = "RoutingTypes.cpp";
            v19 = 1024;
            v20 = 813;
            v21 = 2080;
            v22 = v13;
            _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEBUG, "%25s:%-5d Did not find entry for current mode: %s, looking in default mode instead.", buf, 0x1Cu);
            if (v16 < 0)
            {
              operator delete(__p[0]);
            }
          }
        }
      }

      v9 = sub_CA59C(a1, 1768776806);
      v10 = 0;
    }
  }

  return v9 & 0xFFFFFFFFFFLL | v10;
}

unint64_t sub_CA738(uint64_t a1, uint64_t a2)
{
  sub_84CDC(a1);
  v4 = *a2;
  sub_84CDC(a1);
  v5 = 24;
  if (!v4)
  {
    v5 = 0;
  }

  v6 = a1 + v5;
  *buf = *(a2 + 4);
  *&v24[4] = *(a2 + 8);
  v7 = sub_C5464(a1 + v5, buf);
  if (v6 + 8 == v7)
  {
    LOBYTE(v9) = 0;
    LOBYTE(v8) = 0;
    LODWORD(v10) = 0;
  }

  else
  {
    v8 = *(v7 + 92);
    v9 = *(v7 + 88) | (v8 << 32);
    v10 = v9 >> 8;
    if (v8)
    {
      return (v8 << 32) | ((v10 & 0xFFFFFF) << 8) | v9;
    }
  }

  if (*(a2 + 4) != 1768776806)
  {
    v11 = sub_5544(21);
    if (*(v11 + 8))
    {
      v12 = *v11;
      if (*v11)
      {
        if (os_log_type_enabled(*v11, OS_LOG_TYPE_DEBUG))
        {
          sub_22170(v21, *(a2 + 4));
          v13 = v22;
          v14 = v21[0];
          sub_22170(__p, 0x696D6466u);
          v15 = v21;
          if (v13 < 0)
          {
            v15 = v14;
          }

          if (v20 >= 0)
          {
            v16 = __p;
          }

          else
          {
            v16 = __p[0];
          }

          *buf = 136315906;
          *v24 = "RoutingTypes.cpp";
          *&v24[8] = 1024;
          *&v24[10] = 2814;
          *&v24[14] = 2080;
          *&v24[16] = v15;
          v25 = 2080;
          v26[0] = v16;
          _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEBUG, "%25s:%-5d Did not find fixed block size in %s mode.  Looking in %s mode instead", buf, 0x26u);
          if (v20 < 0)
          {
            operator delete(__p[0]);
          }

          if (v22 < 0)
          {
            operator delete(v21[0]);
          }
        }
      }
    }

    sub_CF9A0(buf, *a2, 1768776806, (a2 + 8), *(a2 + 24), (a2 + 32));
    v17 = sub_CA738(a1, buf);
    LOBYTE(v9) = v17;
    v10 = v17 >> 8;
    v8 = HIDWORD(v17);
    if (*(v26 + 2))
    {
      *(&v26[1] + 2) = *(v26 + 2);
      operator delete(*(v26 + 2));
    }
  }

  return (v8 << 32) | ((v10 & 0xFFFFFF) << 8) | v9;
}

void sub_CA968(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20)
{
  if (v21 < 0)
  {
    operator delete(v20);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_CA99C(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v6 = *(a1 + 8);
  if (!v6)
  {
    goto LABEL_24;
  }

  v7 = a1 + 8;
  do
  {
    v8 = *(v6 + 32);
    v9 = v8 >= a2;
    v10 = v8 < a2;
    if (v9)
    {
      v7 = v6;
    }

    v6 = *(v6 + 8 * v10);
  }

  while (v6);
  if (v7 == a1 + 8)
  {
    goto LABEL_24;
  }

  if (*(v7 + 32) > a2)
  {
    goto LABEL_24;
  }

  v13 = *(v7 + 144);
  v11 = v7 + 144;
  v12 = v13;
  if (!v13)
  {
    goto LABEL_24;
  }

  v14 = v11;
  do
  {
    v15 = *(v12 + 28);
    v9 = v15 >= a3;
    v16 = v15 < a3;
    if (v9)
    {
      v14 = v12;
    }

    v12 = *(v12 + 8 * v16);
  }

  while (v12);
  if (v14 != v11 && *(v14 + 28) <= a3 && *(v14 + 36) == 1)
  {
    v17 = sub_5544(21);
    if (*(v17 + 8))
    {
      v18 = *v17;
      if (*v17)
      {
        if (os_log_type_enabled(*v17, OS_LOG_TYPE_DEBUG))
        {
          if ((*(v14 + 36) & 1) == 0)
          {
            sub_1EC054();
          }

          v19 = *(v14 + 32);
          if (v19 > 2)
          {
            v20 = "????";
          }

          else
          {
            v20 = off_6D17E8[v19];
          }

          v30 = v39;
          sub_53E8(v39, v20);
          if (v40 < 0)
          {
            v30 = v39[0];
          }

          sub_22170(__p, a2);
          v31 = v38;
          v32 = __p[0];
          sub_22170(v35, a3);
          v33 = __p;
          if (v31 < 0)
          {
            v33 = v32;
          }

          if (v36 >= 0)
          {
            v34 = v35;
          }

          else
          {
            v34 = v35[0];
          }

          *buf = 136316162;
          v42 = "RoutingTypes.cpp";
          v43 = 1024;
          v44 = 935;
          v45 = 2080;
          v46 = v30;
          v47 = 2080;
          v48 = v33;
          v49 = 2080;
          v50 = v34;
          _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEBUG, "%25s:%-5d Found a sample rate culling policy:%s for mode:%s, device type:%s", buf, 0x30u);
          if (v36 < 0)
          {
            operator delete(v35[0]);
          }

          if (v38 < 0)
          {
            operator delete(__p[0]);
          }

          if (v40 < 0)
          {
            operator delete(v39[0]);
          }
        }
      }
    }

    v22 = *(v14 + 32);
    v21 = v22 & 0xFFFFFF0000000000;
  }

  else
  {
LABEL_24:
    if (a2 == 1768776806)
    {
      v21 = 0;
      v22 = 0;
    }

    else
    {
      v23 = sub_5544(21);
      if (*(v23 + 8))
      {
        v24 = *v23;
        if (*v23)
        {
          if (os_log_type_enabled(*v23, OS_LOG_TYPE_DEBUG))
          {
            sub_22170(v39, a2);
            v25 = v40;
            v26 = v39[0];
            sub_22170(__p, a3);
            v27 = v39;
            if (v25 < 0)
            {
              v27 = v26;
            }

            if (v38 >= 0)
            {
              v28 = __p;
            }

            else
            {
              v28 = __p[0];
            }

            *buf = 136315906;
            v42 = "RoutingTypes.cpp";
            v43 = 1024;
            v44 = 943;
            v45 = 2080;
            v46 = v27;
            v47 = 2080;
            v48 = v28;
            _os_log_impl(&dword_0, v24, OS_LOG_TYPE_DEBUG, "%25s:%-5d Did not find entry for current mode: %s and device type: %s, looking in default mode instead.", buf, 0x26u);
            if (v38 < 0)
            {
              operator delete(__p[0]);
            }

            if (v40 < 0)
            {
              operator delete(v39[0]);
            }
          }
        }
      }

      v22 = sub_CA99C(a1, 1768776806, a3);
      v21 = 0;
    }
  }

  return v22 & 0xFFFFFFFFFFLL | v21;
}

void sub_CAD0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (v22 < 0)
  {
    operator delete(v21);
  }

  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_CAD54(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v6 = *(a1 + 8);
  if (!v6)
  {
    goto LABEL_24;
  }

  v7 = a1 + 8;
  do
  {
    v8 = *(v6 + 32);
    v9 = v8 >= a2;
    v10 = v8 < a2;
    if (v9)
    {
      v7 = v6;
    }

    v6 = *(v6 + 8 * v10);
  }

  while (v6);
  if (v7 == a1 + 8)
  {
    goto LABEL_24;
  }

  if (*(v7 + 32) > a2)
  {
    goto LABEL_24;
  }

  v13 = *(v7 + 120);
  v11 = v7 + 120;
  v12 = v13;
  if (!v13)
  {
    goto LABEL_24;
  }

  v14 = v11;
  do
  {
    v15 = *(v12 + 28);
    v9 = v15 >= a3;
    v16 = v15 < a3;
    if (v9)
    {
      v14 = v12;
    }

    v12 = *(v12 + 8 * v16);
  }

  while (v12);
  if (v14 != v11 && *(v14 + 28) <= a3 && *(v14 + 36) == 1)
  {
    v17 = sub_5544(21);
    if (*(v17 + 8))
    {
      v18 = *v17;
      if (*v17)
      {
        if (os_log_type_enabled(*v17, OS_LOG_TYPE_DEBUG))
        {
          if ((*(v14 + 36) & 1) == 0)
          {
            sub_1EC054();
          }

          v19 = *(v14 + 32);
          if (v19 > 2)
          {
            v20 = "????";
          }

          else
          {
            v20 = off_6D1800[v19];
          }

          v30 = v39;
          sub_53E8(v39, v20);
          if (v40 < 0)
          {
            v30 = v39[0];
          }

          sub_22170(__p, a2);
          v31 = v38;
          v32 = __p[0];
          sub_22170(v35, a3);
          v33 = __p;
          if (v31 < 0)
          {
            v33 = v32;
          }

          if (v36 >= 0)
          {
            v34 = v35;
          }

          else
          {
            v34 = v35[0];
          }

          *buf = 136316162;
          v42 = "RoutingTypes.cpp";
          v43 = 1024;
          v44 = 906;
          v45 = 2080;
          v46 = v30;
          v47 = 2080;
          v48 = v33;
          v49 = 2080;
          v50 = v34;
          _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEBUG, "%25s:%-5d Found a stream culling policy:%s for mode:%s, device type:%s", buf, 0x30u);
          if (v36 < 0)
          {
            operator delete(v35[0]);
          }

          if (v38 < 0)
          {
            operator delete(__p[0]);
          }

          if (v40 < 0)
          {
            operator delete(v39[0]);
          }
        }
      }
    }

    v22 = *(v14 + 32);
    v21 = v22 & 0xFFFFFF0000000000;
  }

  else
  {
LABEL_24:
    if (a2 == 1768776806)
    {
      v21 = 0;
      v22 = 0;
    }

    else
    {
      v23 = sub_5544(21);
      if (*(v23 + 8))
      {
        v24 = *v23;
        if (*v23)
        {
          if (os_log_type_enabled(*v23, OS_LOG_TYPE_DEBUG))
          {
            sub_22170(v39, a2);
            v25 = v40;
            v26 = v39[0];
            sub_22170(__p, a3);
            v27 = v39;
            if (v25 < 0)
            {
              v27 = v26;
            }

            if (v38 >= 0)
            {
              v28 = __p;
            }

            else
            {
              v28 = __p[0];
            }

            *buf = 136315906;
            v42 = "RoutingTypes.cpp";
            v43 = 1024;
            v44 = 914;
            v45 = 2080;
            v46 = v27;
            v47 = 2080;
            v48 = v28;
            _os_log_impl(&dword_0, v24, OS_LOG_TYPE_DEBUG, "%25s:%-5d Did not find entry for current mode: %s and device type: %s, looking in default mode instead.", buf, 0x26u);
            if (v38 < 0)
            {
              operator delete(__p[0]);
            }

            if (v40 < 0)
            {
              operator delete(v39[0]);
            }
          }
        }
      }

      v22 = sub_CAD54(a1, 1768776806, a3);
      v21 = 0;
    }
  }

  return v22 & 0xFFFFFFFFFFLL | v21;
}