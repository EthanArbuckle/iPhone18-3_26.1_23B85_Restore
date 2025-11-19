void sub_15B570(uint64_t a1)
{
  if (*(a1 + 128) == 1 && *(a1 + 127) < 0)
  {
    operator delete(*(a1 + 104));
  }

  sub_4B0F4(*(a1 + 80));
  sub_4B0F4(*(a1 + 56));
  sub_CC3DC((a1 + 24));

  operator delete(a1);
}

void sub_15B5D8(uint64_t a1, void *a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  *a1 = a1 + 8;
  *(a1 + 32) = 0;
  *(a1 + 24) = a1 + 32;
  v5 = (a1 + 24);
  *(a1 + 40) = 0;
  sub_15B860(&v20, a2);
  sub_98A08(*(a1 + 8));
  v6 = v21;
  *a1 = v20;
  *(a1 + 8) = v6;
  v7 = v22[0];
  *(a1 + 16) = v22[0];
  if (v7)
  {
    v6[2] = v4;
    v20 = &v21;
    v21 = 0;
    v22[0] = 0;
    v6 = 0;
  }

  else
  {
    *a1 = v4;
  }

  sub_98A08(v6);
  v8 = a2[3];
  if (v8 != a2 + 4)
  {
    v9 = *v5;
    do
    {
      sub_15B860(&v23, v8 + 5);
      v16 = *(v8 + 8);
      v10 = v24;
      v17 = v23;
      v18 = v24;
      v19 = v25;
      if (v25)
      {
        *(v24 + 16) = &v18;
        v23 = &v24;
        v24 = 0;
        v25 = 0;
        v10 = 0;
      }

      else
      {
        v17 = &v18;
      }

      sub_98A08(v10);
      LODWORD(v20) = v16;
      v21 = v17;
      v22[0] = v18;
      v22[1] = v19;
      if (v19)
      {
        *(v18 + 2) = v22;
        v18 = 0;
        v19 = 0;
      }

      else
      {
        v21 = v22;
      }

      v11 = *sub_26746C(v5, v9, &v23, &v26, v16);
      if (!v11)
      {
        operator new();
      }

      v12 = *(v11 + 8);
      if (v12)
      {
        do
        {
          v9 = v12;
          v12 = *v12;
        }

        while (v12);
      }

      else
      {
        do
        {
          v9 = *(v11 + 16);
          v13 = *v9 == v11;
          v11 = v9;
        }

        while (!v13);
      }

      sub_98A08(v22[0]);
      sub_98A08(v18);
      v14 = v8[1];
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
          v15 = v8[2];
          v13 = *v15 == v8;
          v8 = v15;
        }

        while (!v13);
      }

      v8 = v15;
    }

    while (v15 != a2 + 4);
  }
}

void sub_15B860(void *a1, void *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = a1 + 1;
  v2 = a2 + 1;
  v3 = *a2;
  if (*a2 != a2 + 1)
  {
    do
    {
      sub_88A00(&v8, v3 + 4, "", 164);
      if (*(v8 + 303) < 0)
      {
        sub_54A0(__p, *(v8 + 280), *(v8 + 288));
      }

      else
      {
        *__p = *(v8 + 280);
        v11 = *(v8 + 296);
      }

      sub_261F68(a1, __p);
      if (SHIBYTE(v11) < 0)
      {
        operator delete(__p[0]);
      }

      if (v9)
      {
        sub_1A8C0(v9);
      }

      v5 = v3[1];
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
          v6 = v3[2];
          v7 = *v6 == v3;
          v3 = v6;
        }

        while (!v7);
      }

      v3 = v6;
    }

    while (v6 != v2);
  }
}

void sub_15B968(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a10)
  {
    sub_1A8C0(a10);
  }

  sub_98A08(*v16);
  _Unwind_Resume(a1);
}

void sub_15B9A8(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 16);
  if (v3)
  {

    sub_1A8C0(v3);
  }
}

unint64_t sub_15B9F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = 12;
  if (*(a1 + 20))
  {
    v6 = 16;
  }

  v7 = *(a1 + v6);
  sub_25704(buf, (a2 + 16), "", 1368);
  sub_C57B4(v22, 1, v7, *(*buf + 304));
  if (*&buf[8])
  {
    sub_1A8C0(*&buf[8]);
  }

  v8 = sub_C7250(*(a2 + 56), v22, a3);
  if (v9)
  {
    v10 = v8;
    v11 = sub_5544(21);
    v12 = *v11;
    if (*v11 && os_log_type_enabled(*v11, OS_LOG_TYPE_DEFAULT))
    {
      sub_879F8(&__p, a1 + 8);
      v13 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
      *buf = 136315906;
      *&buf[4] = "RoutingHandlerUtilities_Aspen.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 1374;
      v26 = 1024;
      v27 = a3;
      v28 = 2080;
      v29 = v13;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "%25s:%-5d PerVAD Volume description of scope %d present for route %s", buf, 0x22u);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    v14 = *v10 & 0xFFFFFF0000000000;
    v15 = *v10 & 0xFF00000000;
    v16 = *v10 & 0xFFFFFF00;
    v17 = *v10;
  }

  else
  {
    v18 = sub_5544(21);
    v17 = *v18;
    if (*v18)
    {
      if (os_log_type_enabled(*v18, OS_LOG_TYPE_INFO))
      {
        sub_879F8(&__p, a1 + 8);
        v19 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
        *buf = 136315906;
        *&buf[4] = "RoutingHandlerUtilities_Aspen.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 1380;
        v26 = 1024;
        v27 = a3;
        v28 = 2080;
        v29 = v19;
        _os_log_impl(&dword_0, v17, OS_LOG_TYPE_INFO, "%25s:%-5d Extended Volume description of scope %d absent for route %s", buf, 0x22u);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      v17 = 0;
    }

    v15 = 0;
    v14 = 0;
    v16 = 0;
  }

  if (v23)
  {
    v24 = v23;
    operator delete(v23);
  }

  return v15 | v17 | v14 | v16;
}

void sub_15BC74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_15BCBC(uint64_t a1, void *a2, uint64_t a3)
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

        sub_1A8C0(v5);
      }
    }
  }
}

std::string *sub_15BD44@<X0>(void *a1@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  std::string::append(a2, "[ ", 2uLL);
  snprintf(__str, 0x13uLL, "%p", a1);
  sub_53E8(&v15, __str);
  v4 = std::string::insert(&v15, 0, "addr: ", 6uLL);
  v5 = *&v4->__r_.__value_.__l.__data_;
  v16.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
  *&v16.__r_.__value_.__l.__data_ = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  v6 = std::string::append(&v16, "; ", 2uLL);
  v7 = *&v6->__r_.__value_.__l.__data_;
  v18 = v6->__r_.__value_.__r.__words[2];
  *__p = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  if (v18 >= 0)
  {
    v8 = __p;
  }

  else
  {
    v8 = __p[0];
  }

  if (v18 >= 0)
  {
    v9 = HIBYTE(v18);
  }

  else
  {
    v9 = __p[1];
  }

  std::string::append(a2, v8, v9);
  if (SHIBYTE(v18) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  std::string::append(a2, "controls: { ", 0xCuLL);
  v10 = a1[10];
  if (v10 != a1[11])
  {
    do
    {
      sub_23148(__p, *v10 + 2);
      if (v18 >= 0)
      {
        v11 = __p;
      }

      else
      {
        v11 = __p[0];
      }

      if (v18 >= 0)
      {
        v12 = HIBYTE(v18);
      }

      else
      {
        v12 = __p[1];
      }

      std::string::append(a2, v11, v12);
      if (SHIBYTE(v18) < 0)
      {
        operator delete(__p[0]);
      }

      v10 += 2;
      v13 = a1[11];
      if (v10 != v13)
      {
        std::string::append(a2, ", ", 2uLL);
        v13 = a1[11];
      }
    }

    while (v10 != v13);
  }

  return std::string::append(a2, " } ]", 4uLL);
}

void sub_15BF48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (*(v28 + 23) < 0)
  {
    operator delete(*v28);
  }

  _Unwind_Resume(exception_object);
}

void sub_15BFCC(uint64_t a1, uint64_t a2, unsigned int *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (!a2)
  {
    v73 = sub_5544(14);
    v74 = *v73;
    if (*v73 && os_log_type_enabled(*v73, OS_LOG_TYPE_ERROR))
    {
      *v87 = 4.8151e-34;
      v88 = "RoutingHandlerUtilities_Aspen.cpp";
      v89 = 1024;
      v90 = 471;
      _os_log_impl(&dword_0, v74, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", v87, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  sub_C5824(v87, a3, a4, a5, a6);
  v11 = sub_5544(21);
  v12 = *v11;
  if (*v11 && os_log_type_enabled(*v11, OS_LOG_TYPE_DEFAULT))
  {
    sub_22170(v82, a3[36]);
    v13 = SBYTE3(v84);
    v14 = *v82;
    sub_15D0C0(&__p, v87);
    v15 = v82;
    if (v13 < 0)
    {
      v15 = v14;
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    *buf = 136315906;
    *&buf[4] = "RoutingHandlerUtilities_Aspen.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 474;
    *&buf[18] = 2080;
    *v86 = v15;
    *&v86[8] = 2080;
    *&v86[10] = p_p;
    _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "%25s:%-5d VolumeProperties for Port: %s is %s", buf, 0x26u);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SBYTE3(v84) < 0)
    {
      operator delete(*v82);
    }
  }

  v17 = (*(*a1 + 96))(a1);
  v19 = v18;
  v80[0] = v17;
  v80[1] = v18;
  v20 = a3[36];
  if (v20 != 1886745455 && v20 != 1885892727)
  {
    goto LABEL_26;
  }

  if (sub_48EDC())
  {
    if (v88 != 1)
    {
LABEL_21:
      v23 = 1;
      goto LABEL_28;
    }

    v17 = *v87;
LABEL_18:
    v21 = (*(*a1 + 104))(a1);
    if (v21 != v22)
    {
      v17 = v21 + (v17 + 76.0) / 78.0 * (v22 - v21);
    }

    v80[0] = v17;
    goto LABEL_21;
  }

  if (MGGetBoolAnswer())
  {
    v23 = MGGetBoolAnswer();
    if (v88)
    {
      v17 = *v87;
      v80[0] = *v87;
      if (v23)
      {
        goto LABEL_18;
      }
    }
  }

  else
  {
LABEL_26:
    v23 = 0;
    if (v88 == 1)
    {
      v17 = *v87;
      v80[0] = *v87;
    }
  }

LABEL_28:
  if (v89 == 1)
  {
    v19 = *(&v88 + 1);
    v80[1] = *(&v88 + 1);
    if (!v23)
    {
      goto LABEL_43;
    }

    v24 = (*(*a1 + 104))(a1);
    if (v24 != v25)
    {
      v19 = v24 + (v19 + 76.0) / 78.0 * (v25 - v24);
    }

    v80[1] = v19;
  }

  else if (!v23)
  {
    goto LABEL_43;
  }

  v26 = sub_5544(21);
  v27 = sub_5544(39);
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
      goto LABEL_40;
    }
  }

  if ((v29 & v30) == 0)
  {
    v26 = v27;
  }

LABEL_40:
  v31 = *v26;
  if (v31 && os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    *&buf[4] = "RoutingHandlerUtilities_Aspen.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 517;
    *&buf[18] = 2048;
    *v86 = v17;
    *&v86[8] = 2048;
    *&v86[10] = v19;
    _os_log_impl(&dword_0, v31, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Volume was rescaled to match hardware range. mMinimum: %f mMaximum: %f", buf, 0x26u);
  }

LABEL_43:
  v32 = v94;
  v33 = v93;
  *buf = (*(*a1 + 104))(a1);
  *&buf[8] = v34;
  *&buf[16] = 0;
  *&v86[4] = 0;
  *&v86[12] = 0;
  (*(*a2 + 320))(v82, a2, a3);
  v35 = *v82;
  *v82 = 0;
  *&v82[8] = 0;
  v36 = *&v86[12];
  *&v86[4] = v35;
  if (v36)
  {
    std::__shared_weak_count::__release_weak(v36);
    if (*&v82[8])
    {
      std::__shared_weak_count::__release_weak(*&v82[8]);
    }
  }

  if (v92 == 1)
  {
    v37 = v91;
    if (v91 != qword_708650)
    {
      v38 = sub_5544(21);
      v39 = sub_5544(39);
      v40 = 0;
      *v82 = 0x100000002;
      v41 = *(v38 + 8);
      while (1)
      {
        v42 = *&v82[v40];
        if (((v41 & v42) != 0) != ((*(v39 + 8) & v42) != 0))
        {
          break;
        }

        v40 += 4;
        if (v40 == 8)
        {
          if ((v41 & 1) == 0)
          {
            goto LABEL_63;
          }

          goto LABEL_56;
        }
      }

      if ((v41 & v42) == 0)
      {
        v38 = v39;
      }

      if (*(v38 + 8))
      {
LABEL_56:
        v43 = *v38;
        if (v43 && os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
        {
          sub_15E30C(&__p, v37);
          v44 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
          *v82 = 136315650;
          *&v82[4] = "RoutingHandlerUtilities_Aspen.cpp";
          *&v82[12] = 1024;
          *&v82[14] = 535;
          v83 = 2080;
          v84 = v44;
          _os_log_impl(&dword_0, v43, OS_LOG_TYPE_DEBUG, "%25s:%-5d Found extended volume description: %s", v82, 0x1Cu);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }
      }

LABEL_63:
      v45 = sub_5544(21);
      v46 = sub_5544(39);
      v47 = 0;
      *v82 = 0x100000002;
      v48 = *(v45 + 8);
      while (1)
      {
        v49 = *&v82[v47];
        if (((v48 & v49) != 0) != ((*(v46 + 8) & v49) != 0))
        {
          break;
        }

        v47 += 4;
        if (v47 == 8)
        {
          goto LABEL_69;
        }
      }

      if ((v48 & v49) == 0)
      {
        v45 = v46;
      }

LABEL_69:
      v50 = *v45;
      if (v50 && os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
      {
        sub_15E30C(&__p, v37);
        v51 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
        *v82 = 136315650;
        *&v82[4] = "RoutingHandlerUtilities_Aspen.cpp";
        *&v82[12] = 1024;
        *&v82[14] = 536;
        v83 = 2080;
        v84 = v51;
        _os_log_impl(&dword_0, v50, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Found extended volume description: %s", v82, 0x1Cu);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      if (*(v37 + 4))
      {
        v52 = v37;
      }

      else
      {
        v52 = &buf[16];
      }

      v53 = *v52;
      *&buf[16] = v53;
      if (v53 >= 4)
      {
        v54 = sub_5544(14);
        v55 = *v54;
        if (*v54 && os_log_type_enabled(*v54, OS_LOG_TYPE_ERROR))
        {
          *v82 = 136315394;
          *&v82[4] = "RoutingHandlerUtilities_Aspen.cpp";
          *&v82[12] = 1024;
          *&v82[14] = 539;
          _os_log_impl(&dword_0, v55, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: Logic error: a proper software volume mode was not specified in the routing database", v82, 0x12u);
        }

        v53 = *&buf[16];
      }

      if (v53)
      {
        if (a3[36] == 1885888867)
        {
          v71 = sub_5544(14);
          v72 = *v71;
          if (*v71)
          {
            if (os_log_type_enabled(*v71, OS_LOG_TYPE_ERROR))
            {
              *v82 = 136315394;
              *&v82[4] = "RoutingHandlerUtilities_Aspen.cpp";
              *&v82[12] = 1024;
              *&v82[14] = 547;
              _os_log_impl(&dword_0, v72, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: Logic error: attempting to use software volume for hearing aid compliance", v82, 0x12u);
            }
          }
        }

        (*(*a2 + 320))(v82, a2, a3);
        v57 = *v82;
        v56 = *&v82[8];
        *v82 = 0;
        *&v82[8] = 0;
        v58 = *&v86[12];
        *&v86[4] = v57;
        *&v86[12] = v56;
        if (v58)
        {
          std::__shared_weak_count::__release_weak(v58);
          if (*&v82[8])
          {
            std::__shared_weak_count::__release_weak(*&v82[8]);
          }

          v56 = *&v86[12];
        }

        if (!v56 || *(v56 + 8) == -1)
        {
          v59 = sub_5544(20);
          v60 = *v59;
          if (*v59 && os_log_type_enabled(*v59, OS_LOG_TYPE_ERROR))
          {
            *v82 = 136315394;
            *&v82[4] = "RoutingHandlerUtilities_Aspen.cpp";
            *&v82[12] = 1024;
            *&v82[14] = 553;
            _os_log_impl(&dword_0, v60, OS_LOG_TYPE_ERROR, "%25s:%-5d Routing database specified SW volume but no SW volume is associated with the aggregate device...falling back to HW-only volume", v82, 0x12u);
          }

          *&buf[16] = 0;
        }

        else if (*&buf[16] == 1)
        {
          if (*(v37 + 12) == 1)
          {
            *buf = *(v37 + 8);
          }

          if (*(v37 + 20) == 1)
          {
            *&buf[8] = *(v37 + 16);
          }

          if (*(v37 + 40) == 1)
          {
            *v80 = *(v37 + 24);
          }
        }
      }
    }
  }

  v61 = (*(*a3 + 288))(a3);
  if (*(a7 + 24) == 1)
  {
    if (v80[1] <= v80[0])
    {
      v62 = *a7;
      v63 = *(a7 + 8);
    }

    else
    {
      v62 = *a7;
      v63 = *(a7 + 8);
      if (*a7 == v63)
      {
        v63 = *a7;
      }

      else
      {
        v64 = v80[0];
        v65 = v80[1];
        v66 = *a7;
        do
        {
          v67 = v64;
          if (v66->f32[0] >= v64)
          {
            v67 = v65;
            if (v66->f32[0] <= v65)
            {
              v67 = v66->f32[0];
            }
          }

          v66->f32[0] = v67;
          v66 = (v66 + 4);
        }

        while (v66 != v63);
      }
    }

    v69 = (v63 - v62) >> 2;
    v76 = v61;
    if (v69 >= 2)
    {
      v70 = vcvtq_f64_f32(**a7);
      sub_1E6364(1uLL);
    }

    v77 = 0;
    v78 = 0;
    v79 = 0;
    sub_20A634(&v77, 0, 0, 0);
    (*(*a1 + 88))(a1, &v77, buf, v76);
    if (v77)
    {
      v78 = v77;
      operator delete(v77);
    }
  }

  else
  {
    if (v32)
    {
      v68 = v33;
    }

    else
    {
      v68 = 0;
    }

    (*(*a1 + 80))(a1, v80, v68 | (v32 << 32), buf, v61);
  }

  if (*&v86[12])
  {
    std::__shared_weak_count::__release_weak(*&v86[12]);
  }
}

void sub_15CBE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, std::__shared_weak_count *a34)
{
  if (a34)
  {
    std::__shared_weak_count::__release_weak(a34);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_15CC88(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v7 = sub_14BD5C(a2, a3);
  if (v8)
  {
    v9 = sub_15B9F8(a1, v7, a4);
    v10 = v9 & 0xFF00000000;
    v11 = v9 & 0xFFFFFF00;
    v12 = v9;
  }

  else
  {
    v13 = sub_5544(20);
    v14 = *v13;
    if (*v13 && os_log_type_enabled(*v13, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 136315650;
      v17 = "RoutingHandlerUtilities_Aspen.cpp";
      v18 = 1024;
      v19 = 1357;
      v20 = 1024;
      v21 = a3;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Missing ActivationParams for connection %u", &v16, 0x18u);
    }

    v12 = 0;
    v10 = 0;
    v11 = 0;
  }

  return v10 | v12 | v11;
}

void sub_15CDA8(uint64_t a1)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  *(a1 + 72) = 1065353216;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *a1 = off_6D0AD8;
  *(a1 + 80) = off_6D0B88;
  *(a1 + 104) = a1;
  operator new();
}

void sub_15CEBC(_Unwind_Exception *a1)
{
  sub_13A300(v1 + 152);
  sub_140658(v2);
  v4 = *(v1 + 96);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  sub_13BFA8(v1);
  _Unwind_Resume(a1);
}

std::string *sub_15CEFC@<X0>(const void *a1@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  std::string::append(a2, "[ ", 2uLL);
  snprintf(__str, 0x13uLL, "%p", a1);
  sub_53E8(&v11, __str);
  v4 = std::string::insert(&v11, 0, "addr: ", 6uLL);
  v5 = *&v4->__r_.__value_.__l.__data_;
  v12.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
  *&v12.__r_.__value_.__l.__data_ = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  v6 = std::string::append(&v12, "; ", 2uLL);
  v7 = *&v6->__r_.__value_.__l.__data_;
  v14 = v6->__r_.__value_.__r.__words[2];
  *__p = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  if (v14 >= 0)
  {
    v8 = __p;
  }

  else
  {
    v8 = __p[0];
  }

  if (v14 >= 0)
  {
    v9 = HIBYTE(v14);
  }

  else
  {
    v9 = __p[1];
  }

  std::string::append(a2, v8, v9);
  if (SHIBYTE(v14) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }

  return std::string::append(a2, " ]", 2uLL);
}

void sub_15D058(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (*(v28 + 23) < 0)
  {
    operator delete(*v28);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_15D0C0(std::string *a1, uint64_t a2)
{
  a1->__r_.__value_.__r.__words[0] = 0;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  std::string::append(a1, "[ ", 2uLL);
  if (*(a2 + 4) == 1)
  {
    std::string::append(a1, "Min: ", 5uLL);
    if ((*(a2 + 4) & 1) == 0)
    {
      sub_1EC054();
    }

    std::to_string(&v15, *a2);
    if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v4 = &v15;
    }

    else
    {
      v4 = v15.__r_.__value_.__r.__words[0];
    }

    if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v15.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v15.__r_.__value_.__l.__size_;
    }

    std::string::append(a1, v4, size);
    if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v15.__r_.__value_.__l.__data_);
    }
  }

  if (*(a2 + 12) == 1)
  {
    std::string::append(a1, "; Max: ", 7uLL);
    if ((*(a2 + 12) & 1) == 0)
    {
      sub_1EC054();
    }

    std::to_string(&v15, *(a2 + 8));
    if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v6 = &v15;
    }

    else
    {
      v6 = v15.__r_.__value_.__r.__words[0];
    }

    if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v7 = HIBYTE(v15.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v7 = v15.__r_.__value_.__l.__size_;
    }

    std::string::append(a1, v6, v7);
    if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v15.__r_.__value_.__l.__data_);
    }
  }

  if (*(a2 + 20) == 1)
  {
    std::string::append(a1, "; Default: ", 0xBuLL);
    if ((*(a2 + 20) & 1) == 0)
    {
      sub_1EC054();
    }

    std::to_string(&v15, *(a2 + 16));
    if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v8 = &v15;
    }

    else
    {
      v8 = v15.__r_.__value_.__r.__words[0];
    }

    if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v9 = HIBYTE(v15.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v9 = v15.__r_.__value_.__l.__size_;
    }

    std::string::append(a1, v8, v9);
    if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v15.__r_.__value_.__l.__data_);
    }
  }

  if (*(a2 + 32) == 1)
  {
    std::string::append(a1, "; Ext: ", 7uLL);
    if ((*(a2 + 32) & 1) == 0)
    {
      sub_1EC054();
    }

    sub_15E30C(&v15, *(a2 + 24));
    if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v10 = &v15;
    }

    else
    {
      v10 = v15.__r_.__value_.__r.__words[0];
    }

    if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v11 = HIBYTE(v15.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v11 = v15.__r_.__value_.__l.__size_;
    }

    std::string::append(a1, v10, v11);
    if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v15.__r_.__value_.__l.__data_);
    }
  }

  if (*(a2 + 44) == 1)
  {
    std::string::append(a1, "Curve: ", 7uLL);
    if (*(a2 + 44) == 1)
    {
      std::to_string(&v15, *(a2 + 40));
    }

    else
    {
      sub_53E8(&v15, "no value assigned");
    }

    if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v12 = &v15;
    }

    else
    {
      v12 = v15.__r_.__value_.__r.__words[0];
    }

    if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v13 = HIBYTE(v15.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v13 = v15.__r_.__value_.__l.__size_;
    }

    std::string::append(a1, v12, v13);
    if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v15.__r_.__value_.__l.__data_);
    }
  }

  return std::string::append(a1, " ]", 2uLL);
}

void sub_15D360(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

void sub_15D3B8(os_unfair_lock_s *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  sub_4EBC(a1);
  *a3 = 0;
  a3[1] = 0;
  v6 = 166;
  if (*(a2 + 184))
  {
    v6 = 160;
  }

  v7 = &a1[v6];
  v8 = *&v7->_os_unfair_lock_opaque;
  v9 = *&v7[2]._os_unfair_lock_opaque;
  if (*&v7->_os_unfair_lock_opaque != v9)
  {
    v10 = 0;
    do
    {
      sub_65234(v22, *v8 + 120);
      sub_76388(buf, v22);
      sub_65310(v22);
      v22[0] = a2;
      if (buf == sub_15D650(*&v25[4], buf, v22))
      {
        v12 = v10;
      }

      else
      {
        v11 = *(*v8 + 168);
        v12 = *(*v8 + 176);
        if (v12)
        {
          atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        }

        *a3 = v11;
        a3[1] = v12;
        if (v10)
        {
          std::__shared_weak_count::__release_weak(v10);
        }

        if (v12 && v12->__shared_owners_ != -1)
        {
          sub_87980(buf);
          break;
        }
      }

      sub_87980(buf);
      v8 += 16;
      v10 = v12;
    }

    while (v8 != v9);
  }

  v13 = a3[1];
  if (!v13 || *(v13 + 8) == -1)
  {
    v14 = sub_5544(17);
    v15 = *v14;
    if (*v14)
    {
      if (os_log_type_enabled(*v14, OS_LOG_TYPE_DEFAULT))
      {
        sub_23148(v22, a1 + 2);
        v16 = v23;
        v17 = v22[0];
        sub_23148(__p, (a2 + 8));
        v18 = v22;
        if (v16 < 0)
        {
          v18 = v17;
        }

        if (v21 >= 0)
        {
          v19 = __p;
        }

        else
        {
          v19 = __p[0];
        }

        *buf = 136315906;
        *v25 = "AggregateDevice_CommonBase.cpp";
        *&v25[8] = 1024;
        *&v25[10] = 263;
        v26 = 2080;
        v27 = v18;
        v28 = 2080;
        v29 = v19;
        _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "%25s:%-5d failed to fetch software volume command on AggregateDevice %s with port %s", buf, 0x26u);
        if (v21 < 0)
        {
          operator delete(__p[0]);
        }

        if (v23 < 0)
        {
          operator delete(v22[0]);
        }
      }
    }
  }
}

void sub_15D600(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (v17)
  {
    std::__shared_weak_count::__release_weak(v17);
  }

  _Unwind_Resume(exception_object);
}

void *sub_15D650(void *a1, void *a2, uint64_t *a3)
{
  v3 = a2;
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      v6 = v5[3];
      if (v6)
      {
        v7 = v5[2];
        atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        v8 = *a3;
        v9 = std::__shared_weak_count::lock(v6);
        if (v9)
        {
          sub_1A8C0(v9);
          std::__shared_weak_count::__release_weak(v6);
          if (v7 == v8)
          {
            return v5;
          }
        }

        else
        {
          std::__shared_weak_count::__release_weak(v6);
          if (!v8)
          {
            return v5;
          }
        }
      }

      else if (!*a3)
      {
        return v5;
      }

      v5 = v5[1];
    }

    while (v5 != v3);
    return v3;
  }

  return v3;
}

os_signpost_id_t *sub_15D708(os_signpost_id_t *a1)
{
  v2 = sub_5544(43);
  if (*(v2 + 8))
  {
    v3 = *v2;
    if (*v2)
    {
      if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEBUG))
      {
        v7 = 136315650;
        v8 = "SignpostUtilities.h";
        v9 = 1024;
        v10 = 102;
        v11 = 2080;
        v12 = "kRoutingHandlerActivation";
        _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEBUG, "%25s:%-5d Ending measurement for signpost %s", &v7, 0x1Cu);
      }
    }
  }

  if (*a1)
  {
    if ((atomic_load_explicit(&qword_6F6850, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6F6850))
    {
      qword_6F6848 = os_log_create("com.apple.coreaudio", "VirtualAudio");
      __cxa_guard_release(&qword_6F6850);
    }

    v4 = *a1;
    if (*a1 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v5 = qword_6F6848;
      if (os_signpost_enabled(qword_6F6848))
      {
        LOWORD(v7) = 0;
        _os_signpost_emit_with_name_impl(&dword_0, v5, OS_SIGNPOST_INTERVAL_END, v4, "VA_RoutingHandlerActivation", "", &v7, 2u);
      }
    }
  }

  return a1;
}

void sub_15D898(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_1CC130(a1);
}

void sub_15D8A4(uint64_t a1, void *a2)
{
  *(a1 + 8) = 0;
  *(a1 + 64) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 72) = 1065353216;
  *a1 = off_6DB8B0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  if (*a2)
  {
    v2 = a1 + 80;
    sub_1DC690(1uLL);
  }

  sub_15DD68();
}

void sub_15DA70(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, ...)
{
  va_start(va, a3);
  if (a3)
  {
    sub_1A8C0(a3);
  }

  sub_F5714(va);
  sub_13BFA8(v3);
  _Unwind_Resume(a1);
}

std::string *sub_15DAAC(std::string *a1, const void *a2)
{
  a1->__r_.__value_.__r.__words[0] = 0;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  std::string::append(a1, "[ ", 2uLL);
  snprintf(__str, 0x13uLL, "%p", a2);
  sub_53E8(&v11, __str);
  v4 = std::string::insert(&v11, 0, "addr: ", 6uLL);
  v5 = *&v4->__r_.__value_.__l.__data_;
  v12.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
  *&v12.__r_.__value_.__l.__data_ = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  v6 = std::string::append(&v12, "; ", 2uLL);
  v7 = *&v6->__r_.__value_.__l.__data_;
  v14 = v6->__r_.__value_.__r.__words[2];
  *__p = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  if (v14 >= 0)
  {
    v8 = __p;
  }

  else
  {
    v8 = __p[0];
  }

  if (v14 >= 0)
  {
    v9 = HIBYTE(v14);
  }

  else
  {
    v9 = __p[1];
  }

  std::string::append(a1, v8, v9);
  if (SHIBYTE(v14) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }

  return std::string::append(a1, " ]", 2uLL);
}

void sub_15DC04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (*(v28 + 23) < 0)
  {
    operator delete(*v28);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_15DC78(uint64_t a1)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  *(a1 + 72) = 1065353216;
  *a1 = off_6BA950;
  sub_F7240(a1);
  return a1;
}

void sub_15DD50(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_15DDFC(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_15DEA8(uint64_t a1, __int128 *a2)
{
  *(a1 + 8) = 0;
  *(a1 + 64) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 72) = 1065353216;
  *a1 = off_6DB8B0;
  *(a1 + 80) = 0;
  v3 = a1 + 80;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  v4 = *a2;
  v5 = *(a2 + 1);
  v6 = *a2;
  if (*a2 != v5)
  {
    v7 = (v5 - v6) >> 4;
    sub_14CD4C((a1 + 80));
    if (!(v7 >> 60))
    {
      v8 = *(a1 + 96) - *(a1 + 80);
      v9 = v8 >> 3;
      if (v8 >> 3 <= v7)
      {
        v9 = (v5 - v6) >> 4;
      }

      if (v8 >= 0x7FFFFFFFFFFFFFF0)
      {
        v10 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      sub_868A0(v3, v10);
    }

    sub_189A00();
  }

  sub_15DD68();
}

void sub_15DFD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void **a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_1A8C0(a12);
  }

  sub_F5714(&a11);
  sub_13BFA8(v12);
  _Unwind_Resume(a1);
}

void sub_15E010(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (sub_FC3EC(*(a3 + 8), 8))
  {
    v6 = sub_14BD5C(a3, 8);
    sub_25704(&v11, (v6 + 16), "", 1602);
    if (*(v11 + 144) == 1886613611 && sub_6AE80())
    {
      if (a4 != 1650811758)
      {
        goto LABEL_11;
      }

      if ((atomic_load_explicit(&qword_6E9B78, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6E9B78))
      {
        sub_3107F0(&cf);
        v10 = sub_28D154(v15, "mandrake-supported");
        sub_310938(&cf);
        byte_6E9B70 = v10;
        __cxa_guard_release(&qword_6E9B78);
      }

      if (byte_6E9B70 == 1)
      {
        v7 = sub_6FB1C();
        sub_735A0(&cf, v7, 2);
        v8 = cf;
        if (v14)
        {
          operator new();
        }

        if (!cf)
        {
          goto LABEL_15;
        }
      }

      else
      {
LABEL_11:
        v9 = sub_6FB1C();
        sub_735A0(&cf, v9, 0);
        v8 = cf;
        if (v14)
        {
          operator new();
        }

        if (!cf)
        {
          goto LABEL_15;
        }
      }

      CFRelease(v8);
    }

LABEL_15:
    if (v12)
    {
      sub_1A8C0(v12);
    }
  }
}

void sub_15E24C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_310938(va);
  __cxa_guard_abort(&qword_6E9B78);
  if (a4)
  {
    sub_1A8C0(a4);
  }

  _Unwind_Resume(a1);
}

std::string *sub_15E30C(std::string *a1, unsigned int *a2)
{
  a1->__r_.__value_.__r.__words[0] = 0;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  std::string::append(a1, "{ ", 2uLL);
  std::string::append(a1, "SWVolumeMode:", 0xDuLL);
  if (*(a2 + 4) == 1)
  {
    v4 = *a2;
    if (v4 > 3)
    {
      v5 = "Unknown";
    }

    else
    {
      v5 = off_6D0E88[v4];
    }
  }

  else
  {
    v5 = "no value assigned";
  }

  sub_53E8(&__p, v5);
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

  std::string::append(a1, ", minVolume(dB):", 0x10uLL);
  if (*(a2 + 12) == 1)
  {
    std::to_string(&__p, *(a2 + 2));
  }

  else
  {
    sub_53E8(&__p, "no value assigned");
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v8 = &__p;
  }

  else
  {
    v8 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v9 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v9 = __p.__r_.__value_.__l.__size_;
  }

  std::string::append(a1, v8, v9);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::string::append(a1, ", maxVolume(dB):", 0x10uLL);
  if (*(a2 + 20) == 1)
  {
    std::to_string(&__p, *(a2 + 4));
  }

  else
  {
    sub_53E8(&__p, "no value assigned");
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v10 = &__p;
  }

  else
  {
    v10 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v11 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v11 = __p.__r_.__value_.__l.__size_;
  }

  std::string::append(a1, v10, v11);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (*(a2 + 40) == 1)
  {
    std::string::append(a1, ", override(dB): minimum:", 0x18uLL);
    std::to_string(&__p, *(a2 + 3));
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

    std::string::append(a1, ", maximum:", 0xAuLL);
    std::to_string(&__p, *(a2 + 4));
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v14 = &__p;
    }

    else
    {
      v14 = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v15 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v15 = __p.__r_.__value_.__l.__size_;
    }

    std::string::append(a1, v14, v15);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  return std::string::append(a1, "} ", 2uLL);
}

void sub_15E594(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_15E5EC(uint64_t a1)
{
  v1 = *(a1 + 200);
  if (!v1)
  {
    return 0;
  }

  v3 = *(a1 + 192);
  atomic_fetch_add_explicit(&v1->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v4 = std::__shared_weak_count::lock(v1);
  if (!v4)
  {
    std::__shared_weak_count::__release_weak(v1);
    return 0;
  }

  v5 = v4;
  atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  std::__shared_weak_count::__release_weak(v1);
  sub_1A8C0(v5);
  v6 = std::__shared_weak_count::lock(v5);
  if (v6 && (sub_1A8C0(v6), v3) && sub_15E7D4(*(a1 + 192), *(a1 + 200)))
  {
    v7 = *(a1 + 200);
    if (!v7)
    {
LABEL_20:
      v9 = 1;
      goto LABEL_15;
    }

    v8 = *(a1 + 192);
    v9 = 1;
    atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v10 = std::__shared_weak_count::lock(v7);
    std::__shared_weak_count::__release_weak(v7);
    if (v10)
    {
      if (v8 && sub_15E8F4(v8))
      {
        v9 = sub_45A4F0();
        v11 = sub_5544(21);
        v12 = *v11;
        if (*v11 && os_log_type_enabled(*v11, OS_LOG_TYPE_DEBUG))
        {
          v14 = 136315650;
          v15 = "RouteUtilities.cpp";
          v16 = 1024;
          v17 = 1138;
          v18 = 1024;
          v19 = v9;
          _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEBUG, "%25s:%-5d Device changes based on PME: %u", &v14, 0x18u);
        }

        sub_1A8C0(v10);
        goto LABEL_15;
      }

      sub_1A8C0(v10);
      goto LABEL_20;
    }
  }

  else
  {
    v9 = 0;
  }

LABEL_15:
  std::__shared_weak_count::__release_weak(v5);
  return v9;
}

void sub_15E7AC(_Unwind_Exception *a1)
{
  sub_1A8C0(v2);
  std::__shared_weak_count::__release_weak(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_15E7D4(uint64_t a1, std::__shared_weak_count *a2)
{
  v5[0] = a1;
  v5[1] = a2;
  if (a2)
  {
    atomic_fetch_add_explicit(&a2->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  sub_5659C(&v6, v5, "", 1132);
  v3 = (*(*v6 + 376))(v6);
  if (v7)
  {
    sub_1A8C0(v7);
  }

  if (a2)
  {
    std::__shared_weak_count::__release_weak(a2);
  }

  return BYTE4(v3) & (v3 != 0);
}

void sub_15E884(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_1A8C0(a12);
  }

  if (v12)
  {
    std::__shared_weak_count::__release_weak(v12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_15E8B0(uint64_t a1)
{
  v1 = sub_59410(a1);
  *(&v3 + 1) = v2;
  *&v3 = v1;
  return (v3 >> 32) & 0xFFFFFFFFFFLL;
}

BOOL sub_15E8F4(uint64_t a1)
{
  v1 = sub_59410(a1);
  *(&v4 + 1) = v2;
  *&v4 = v1;
  v3 = v4 >> 32;
  if ((v3 & 0x100000000) == 0)
  {
    LODWORD(v3) = 0;
  }

  return v3 == 8202 || v3 == 8223;
}

void sub_15E950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_5544(20);
  v7 = *v6;
  if (*v6 && os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
  {
    sub_879F8(&__p, a2 + 8);
    v8 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
    buf = 136315650;
    buf_4 = "RoutingHandlerUtilities_Aspen.cpp";
    v22 = 1024;
    v23 = 662;
    v24 = 2080;
    v25 = v8;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Creating PerVAD Software Volume Control for %s", &buf, 0x1Cu);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  v9 = *(a4 + 200);
  if (v9)
  {
    v10 = *(a4 + 192);
    atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v16 = std::__shared_weak_count::lock(v9);
    if (v16)
    {
      v15 = v10;
      std::__shared_weak_count::__release_weak(v9);
      if (v10)
      {
        LODWORD(__p.__r_.__value_.__l.__data_) = 1869968496;
        LODWORD(v19) = 0;
        LODWORD(v18) = 0;
        LODWORD(v17) = 74;
        sub_2FA060();
      }
    }

    else
    {
      std::__shared_weak_count::__release_weak(v9);
    }
  }

  else
  {
    v15 = 0;
    v16 = 0;
  }

  v11 = sub_5544(14);
  v12 = *v11;
  if (*v11)
  {
    if (os_log_type_enabled(*v11, OS_LOG_TYPE_ERROR))
    {
      buf = 136315394;
      buf_4 = "RoutingHandlerUtilities_Aspen.cpp";
      v22 = 1024;
      v23 = 665;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", &buf, 0x12u);
    }
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::logic_error::logic_error(exception, "Precondition failure.");
}

void sub_15F1CC()
{
  __cxa_end_catch();
  v1 = *(v0 + 8);
  if (v1)
  {
    sub_1A8C0(v1);
  }

  JUMPOUT(0x15F2DCLL);
}

void sub_15F1E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, char a15, void *__p, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  if (a25)
  {
    (*(*a25 + 8))(a25);
  }

  if (*(v27 - 120) == 1)
  {
    v29 = *(v27 - 144);
    if (v29)
    {
      *(v27 - 136) = v29;
      operator delete(v29);
    }
  }

  if (v26 && __p)
  {
    operator delete(__p);
  }

  v30 = *(v25 + 8);
  if (v30)
  {
    sub_1A8C0(v30);
  }

  if (v31)
  {
    sub_1A8C0(v31);
  }

  _Unwind_Resume(a1);
}

void sub_15F58C(_Unwind_Exception *a1)
{
  sub_1A8C0(v2);
  sub_452F0((v1 + 872));
  std::recursive_mutex::~recursive_mutex((v1 + 800));
  v4 = (v1 + 760);
  v5 = *(v1 + 792);
  if (v5)
  {
    dispatch_release(v5);
  }

  v6 = *v4;
  if (*v4)
  {
    *(v1 + 768) = v6;
    operator delete(v6);
  }

  v7 = *(v1 + 704);
  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
  }

  sub_477A0(*(v1 + 648));
  sub_477A0(*(v1 + 600));
  sub_4E0BC((v1 + 520));
  v8 = *(v1 + 512);
  if (v8)
  {
    std::__shared_weak_count::__release_weak(v8);
  }

  sub_1405C0(v1);
  _Unwind_Resume(a1);
}

void *sub_15F658(void *result, int a2)
{
  if (!a2)
  {
    v2 = sub_5544(14);
    v3 = *v2;
    if (*v2 && os_log_type_enabled(*v2, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315394;
      v9 = "OutputVolumeControl_HAL_Common.cpp";
      v10 = 1024;
      v11 = 51;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::invalid_argument): propertyFlags has no flags.", &v8, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    sub_257CB4(exception, "propertyFlags has no flags.");
  }

  if (a2)
  {
    v5 = sub_5544(14);
    v6 = *v5;
    if (*v5 && os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315394;
      v9 = "OutputVolumeControl_HAL_Common.cpp";
      v10 = 1024;
      v11 = 52;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Output VolumeControls do not support decibel volume.", &v8, 0x12u);
    }

    v7 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v7, "Output VolumeControls do not support decibel volume.");
  }

  *result = result;
  result[1] = result;
  result[2] = 0;
  if ((a2 & 2) != 0)
  {
    operator new();
  }

  if ((a2 & 8) != 0)
  {
    operator new();
  }

  if ((a2 & 0x40) != 0)
  {
    operator new();
  }

  return result;
}

void *sub_15FD58(void *result, uint64_t a2)
{
  *result = result;
  result[1] = result;
  result[2] = 0;
  if (*(a2 + 8) != a2)
  {
    operator new();
  }

  return result;
}

double sub_15FE04(uint64_t *a1, unsigned int a2, int a3)
{
  v33 = 0.0;
  v34 = 0;
  sub_5659C(&v31, a1, "", 70);
  if (sub_16016C(a1, a2, a3))
  {
    v29[2] = a3;
    v30 = 16;
    v29[0] = 1986290211;
    v29[1] = a2;
    v6 = v31;
    (*(*v31 + 40))(v31, v29, 0, 0, &v30, &v33);
    v7 = sub_5544(21);
    v8 = *v7;
    if (!*v7 || !os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_21;
    }

    (*(*v6 + 128))(v27, v6);
    v9 = v28;
    v10 = v27[0];
    v12 = v33;
    v11 = v34;
    sub_22170(__p, a2);
    v13 = v27;
    if (v9 < 0)
    {
      v13 = v10;
    }

    v14 = __p[0];
    *buf = 136316674;
    if (v26 >= 0)
    {
      v14 = __p;
    }

    v36 = "VolumeControl.cpp";
    v37 = 1024;
    v38 = 80;
    v39 = 2080;
    v40 = v13;
    v41 = 2048;
    v42 = *&v12;
    v43 = 2048;
    v44 = v11;
    v45 = 2080;
    v46 = v14;
    v47 = 1024;
    v48 = a3;
    v15 = "%25s:%-5d Device %s, hardware volume range: %f %f [%s/%u]";
    v16 = v8;
    v17 = 64;
  }

  else
  {
    v18 = sub_5544(21);
    v19 = *v18;
    if (!*v18 || !os_log_type_enabled(*v18, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_21;
    }

    (*(*v31 + 128))(v27);
    v20 = v28;
    v21 = v27[0];
    sub_22170(__p, a2);
    v22 = v27;
    if (v20 < 0)
    {
      v22 = v21;
    }

    if (v26 >= 0)
    {
      v23 = __p;
    }

    else
    {
      v23 = __p[0];
    }

    *buf = 136316162;
    v36 = "VolumeControl.cpp";
    v37 = 1024;
    v38 = 85;
    v39 = 2080;
    v40 = v22;
    v41 = 2080;
    v42 = v23;
    v43 = 1024;
    LODWORD(v44) = a3;
    v15 = "%25s:%-5d Device %s does not support hardware volume range property [%s/%u]";
    v16 = v19;
    v17 = 44;
  }

  _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, v15, buf, v17);
  if (v26 < 0)
  {
    operator delete(__p[0]);
  }

  if (v28 < 0)
  {
    operator delete(v27[0]);
  }

LABEL_21:
  if (v32)
  {
    sub_1A8C0(v32);
  }

  return v33;
}

void sub_16011C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, std::__shared_weak_count *a21)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a21)
  {
    sub_1A8C0(a21);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_16016C(uint64_t *a1, int a2, int a3)
{
  v7[0] = 1986290211;
  v7[1] = a2;
  v7[2] = a3;
  sub_5659C(&v5, a1, "", 62);
  v3 = (*(*v5 + 16))(v5, v7);
  if (v6)
  {
    sub_1A8C0(v6);
  }

  return v3;
}

void sub_1601FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_1A8C0(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_160214(uint64_t a1, int a2, int a3)
{
  v3 = *(a1 + 8);
  v4 = (a1 + 16);
  if (v3 == (a1 + 16))
  {
    goto LABEL_26;
  }

  do
  {
    v5 = *(v3 + 7);
    v6 = *(v3 + 8) > a2 && v5 < a3;
    v7 = v6;
    if (v6 || v5 <= a2)
    {
      v9 = v3;
    }

    else
    {
      v8 = v3[1];
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
          v9 = v3[2];
          v10 = *v9 == v3;
          v3 = v9;
        }

        while (!v10);
      }
    }

    if (v9 == v4)
    {
      v11 = 1;
    }

    else
    {
      v11 = v7;
    }

    if (v11)
    {
      break;
    }

    v3 = v9;
  }

  while (v5 > a2);
  if ((v7 & 1) == 0)
  {
LABEL_26:
    v12 = *v4;
    if (!*v4)
    {
LABEL_32:
      operator new();
    }

    while (1)
    {
      while (1)
      {
        v13 = v12;
        v14 = *(v12 + 28);
        if (v14 <= a2)
        {
          break;
        }

        v12 = *v13;
        if (!*v13)
        {
          goto LABEL_32;
        }
      }

      if (v14 >= a2)
      {
        break;
      }

      v12 = v13[1];
      if (!v12)
      {
        goto LABEL_32;
      }
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v16 = "CAVolumeCurve.cpp";
    v17 = 1024;
    v18 = 214;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  CAVolumeCurve::AddRange: new point overlaps", buf, 0x12u);
  }
}

void sub_16040C(uint64_t a1, unsigned int a2)
{
  *a1 = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = a1 + 16;
  *(a1 + 36) = a2;
  if (a2 > 0xF)
  {
    v4 = 1.0;
    v3 = 2.0;
    v2 = 1;
  }

  else
  {
    v2 = byte_517610[a2];
    v3 = flt_518BC8[a2];
    v4 = flt_518C08[a2];
  }

  *(a1 + 32) = v2;
  *(a1 + 40) = v3;
  *(a1 + 44) = v4;
  sub_160214(a1, 0, 0x7FFFFFFF);
}

void sub_160498(_Unwind_Exception *a1)
{
  v2 = v1;
  sub_477A0(*v2);
  _Unwind_Resume(a1);
}

uint64_t sub_1604B0(uint64_t *a1, int a2, int a3)
{
  v7[0] = 1836414053;
  v7[1] = a2;
  v7[2] = a3;
  sub_8D290(&v5, a1, "", 89);
  v3 = (*(*v5 + 16))(v5, v7);
  if (v6)
  {
    sub_1A8C0(v6);
  }

  return v3;
}

void sub_160540(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_1A8C0(a10);
  }

  _Unwind_Resume(exception_object);
}

const __CFBoolean *sub_160558(uint64_t a1)
{
  sub_160810(&v8, a1, COERCE_DOUBLE(1735159650));
  if (v9 != 1)
  {
    return 0;
  }

  v1 = v8;
  if (!v8)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  v2 = CFStringCreateWithBytes(0, "kBluetoothAudioDeviceFeatureHearingAssistCapability", 51, 0x8000100u, 0);
  cf = v2;
  if (!v2)
  {
    v7 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v7, "Could not construct");
  }

  Value = CFDictionaryGetValue(v1, v2);
  if (cf)
  {
    CFRelease(cf);
  }

  if (Value)
  {
    v4 = sub_11DA8(Value);
    Value = ((v4 > 0xFFu) & v4);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  return Value;
}

void sub_160694(void *a1, uint64_t a2, uint64_t a3, char a4, ...)
{
  va_start(va, a4);
  sub_20B45C(va);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  if ((a4 & 1) == 0)
  {
    JUMPOUT(0x160608);
  }

  JUMPOUT(0x1605F4);
}

void sub_160714(uint64_t a1, uint64_t a2)
{
  if (sub_5BA08(a2))
  {
    *a1 = 2003329396;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    if (sub_59580(a2))
    {
      v9 = 0;
      v4 = sub_5C060(a2);
      *a1 = v4;
      if (!v4)
      {
        v5 = v9;
        v8 = v9;
        sub_A3C4C(&v7, &v8);
        v6 = v7;
        *(a1 + 16) = 1;
        *(a1 + 8) = v6;
        if (v5)
        {
          CFRelease(v5);
        }
      }
    }
  }

  else
  {
    *a1 = 2003332927;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }
}

void sub_160810(_BYTE *a1, uint64_t a2, double a3)
{
  v7 = 1651798886;
  v8 = a3;
  sub_160714(v4, a2);
  *a1 = 0;
  a1[8] = 0;
  if (v6 == 1)
  {
    *a1 = v5;
    a1[8] = 1;
  }
}

void sub_160880(uint64_t a1, double *a2, uint64_t a3, uint64_t a4, int a5)
{
  *(a1 + 552) = a5;
  if (a2[1] >= *a2)
  {
    v11 = *a2;
    operator new();
  }

  v6 = sub_5544(14);
  v7 = *v6;
  if (*v6)
  {
    if (os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
    {
      v9 = *a2;
      v8 = *(a2 + 1);
      __p = 136315906;
      __p_4 = "OutputVolumeControl_HAL_Common.cpp";
      v14 = 1024;
      v15 = 888;
      v16 = 2048;
      v17 = v8;
      v18 = 2048;
      v19 = v9;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::invalid_argument): Argument desiredVolumeCurveRangeDB's mMaximum (%f) < mMinimum (%f)", &__p, 0x26u);
    }
  }

  exception = __cxa_allocate_exception(0x10uLL);
  sub_257CB4(exception, "Argument desiredVolumeCurveRangeDB's mMaximum (%f) < mMinimum (%f)");
}

uint64_t sub_160A40(uint64_t a1)
{
  v1 = *(a1 + 136);
  v2 = *(a1 + 144);
  if (v1 != v2)
  {
    while (1)
    {
      (*(**v1 + 232))();
      if (v4)
      {
        break;
      }

      v1 += 8;
      if (v1 == v2)
      {
        v1 = v2;
        break;
      }
    }

    v2 = *(a1 + 144);
  }

  if (v1 == v2)
  {
    return 0;
  }

  else
  {
    return (*(**v1 + 232))();
  }
}

uint64_t sub_160AF4(_BYTE *a1, char a2)
{
  result = (*(*a1 + 144))(a1);
  a1[96] = a2;
  return result;
}

void sub_160B40(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 104);
  v3 = (a1 + 112);
  if ((a1 + 112) != v2)
  {
    v4 = a2;
    if (a2)
    {
      v5 = "Enabling";
    }

    else
    {
      v5 = "Disabling";
    }

    v49 = a2 ^ 1;
    v48 = v5;
    v47 = a2;
    do
    {
      v57 = 0;
      sub_E933C();
      (*(qword_6EB0E0 + 48))(&qword_6EB0E0, *(v2 + 14), &v57);
      if (v57 == 1685287015 && v2[6])
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
            goto LABEL_31;
          }
        }

        if ((v9 & v10) == 0)
        {
          v6 = v7;
        }

LABEL_31:
        v22 = *v6;
        if (v22 && os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v23 = *(v2 + 14);
          sub_22170(__dst, v57);
          v24 = v56;
          v25 = __dst[0];
          v26 = v2[5];
          sub_E896C(__p, a1);
          v27 = __dst;
          if (v24 < 0)
          {
            v27 = v25;
          }

          v28 = __p;
          if (v54 < 0)
          {
            v28 = __p[0];
          }

          *buf = 136316674;
          *&buf[4] = "VolumeControl.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 200;
          v59 = 2080;
          *v60 = v48;
          *&v60[8] = 1024;
          *&v60[10] = v23;
          v61 = 2080;
          *v62 = v27;
          *&v62[8] = 2080;
          *&v62[10] = v26;
          v63 = 2080;
          v64 = v28;
          _os_log_impl(&dword_0, v22, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s software volume processor with ID %u and type %s (box name %s) on chain '%s'.", buf, 0x40u);
          if (v54 < 0)
          {
            operator delete(__p[0]);
          }

          v4 = v47;
          if (v56 < 0)
          {
            operator delete(__dst[0]);
          }
        }

        *bytes = v49;
        v29 = v2[6];
        if (v29 >= 0x7FFFFFFFFFFFFFF8)
        {
          sub_755AC();
        }

        v30 = v2[5];
        if (v29 >= 0x17)
        {
          operator new();
        }

        v56 = v2[6];
        if (v29)
        {
          memmove(__dst, v30, v29);
        }

        *(__dst + v29) = 0;
        sub_88CE8(buf, "AUName");
        if ((v56 & 0x80u) == 0)
        {
          v31 = __dst;
        }

        else
        {
          v31 = __dst[0];
        }

        if ((v56 & 0x80u) == 0)
        {
          v32 = v56;
        }

        else
        {
          v32 = __dst[1];
        }

        *&buf[8] = CFStringCreateWithBytes(0, v31, v32, 0x8000100u, 0);
        if (!*&buf[8])
        {
          exception = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(exception, "Could not construct");
        }

        sub_88CE8(&buf[16], "ID");
        LODWORD(valuePtr[0]) = 21;
        *&v60[4] = CFNumberCreate(0, kCFNumberIntType, valuePtr);
        if (!*&v60[4])
        {
          v45 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v45, "Could not construct");
        }

        v33 = CFDataCreate(0, bytes, 4);
        if (!v33)
        {
          v44 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v44, "Could not construct");
        }

        valuePtr[0] = v33;
        v34 = CFGetTypeID(v33);
        if (v34 != CFDataGetTypeID())
        {
          v43 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v43, "Could not construct");
        }

        sub_88CE8(&v60[12], "data");
        v35 = valuePtr[0];
        if (valuePtr[0])
        {
          CFRetain(valuePtr[0]);
        }

        *&v62[4] = v35;
        __p[0] = buf;
        __p[1] = &dword_0 + 3;
        v36 = sub_69CE8(__p);
        v37 = 0;
        valuePtr[1] = v36;
        do
        {
          v38 = *&v62[v37 + 4];
          if (v38)
          {
            CFRelease(v38);
          }

          v39 = *&v60[v37 + 12];
          if (v39)
          {
            CFRelease(v39);
          }

          v37 -= 16;
        }

        while (v37 != -48);
        if (valuePtr[0])
        {
          CFRelease(valuePtr[0]);
        }

        if (v56 < 0)
        {
          operator delete(__dst[0]);
        }

        *buf = v36;
        sub_E933C();
        (*(qword_6EB0E0 + 80))(&qword_6EB0E0, *(v2 + 14), 1652060274, buf, 8);
        CFRelease(v36);
      }

      else
      {
        v11 = sub_5544(19);
        v12 = sub_5544(39);
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
            goto LABEL_18;
          }
        }

        if ((v14 & v15) == 0)
        {
          v11 = v12;
        }

LABEL_18:
        v16 = *v11;
        if (v16 && os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v17 = *(v2 + 14);
          sub_22170(__dst, v57);
          v18 = v56;
          v19 = __dst[0];
          sub_E896C(__p, a1);
          v20 = __dst;
          if (v18 < 0)
          {
            v20 = v19;
          }

          v21 = __p;
          if (v54 < 0)
          {
            v21 = __p[0];
          }

          *buf = 136316418;
          *&buf[4] = "VolumeControl.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 219;
          v59 = 2080;
          *v60 = v48;
          *&v60[8] = 1024;
          *&v60[10] = v17;
          v61 = 2080;
          *v62 = v20;
          *&v62[8] = 2080;
          *&v62[10] = v21;
          _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s software volume processor with ID %u and type %s on chain '%s'.", buf, 0x36u);
          if (v54 < 0)
          {
            operator delete(__p[0]);
          }

          if (v56 < 0)
          {
            operator delete(__dst[0]);
          }
        }

        sub_E933C();
        (*(qword_6EB0E0 + 96))(&qword_6EB0E0, *(v2 + 14), v4);
      }

      v40 = v2[1];
      if (v40)
      {
        do
        {
          v41 = v40;
          v40 = *v40;
        }

        while (v40);
      }

      else
      {
        do
        {
          v41 = v2[2];
          v42 = *v41 == v2;
          v2 = v41;
        }

        while (!v42);
      }

      v2 = v41;
    }

    while (v3 != v41);
  }
}

void sub_161288(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, char a35)
{
  if (a33 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_161424(uint64_t a1, unsigned int a2, _DWORD *a3)
{
  v9 = a2;
  *buf = &v9;
  v4 = sub_E9540(a1 + 32, a2)[5];
  if (!v4)
  {
    v6 = sub_5544(14);
    v7 = *v6;
    if (*v6 && os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "DSPProcessorManager.cpp";
      v11 = 1024;
      v12 = 244;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error) [instance is NULL]: Unable to find instance.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Unable to find instance.");
  }

  *a3 = *((*(*v4 + 176))(v4) + 4);
  return 0;
}

uint64_t sub_161588(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v9 = a2;
  *buf = &v9;
  v4 = sub_E9540(a1 + 32, a2)[5];
  if (!v4)
  {
    v6 = *sub_5544(14);
    if (v6)
    {
      v7 = v6;
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "DSPProcessorManager.cpp";
        v11 = 1024;
        v12 = 308;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error) [instance is NULL]: Unable to find instance.", buf, 0x12u);
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Unable to find instance.");
  }

  return (*(*v4 + 184))(v4, a3);
}

uint64_t sub_1616E4(uint64_t a1, int a2)
{
  inData = a2 ^ 1;
  v2 = *(a1 + 72);
  if (v2)
  {
    v3 = *(v2 + 16);
  }

  else
  {
    v3 = 0;
  }

  return AudioUnitSetProperty(v3, 0x15u, 0, 0, &inData, 4u);
}

uint64_t sub_161734(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = a2;
  *buf = &v13;
  v8 = sub_E9540(a1 + 32, a2)[5];
  if (!v8)
  {
    v10 = sub_5544(14);
    v11 = *v10;
    if (*v10 && os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "DSPProcessorManager.cpp";
      v15 = 1024;
      v16 = 288;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error) [instance is NULL]: Unable to find instance.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Unable to find instance.");
  }

  return (*(*v8 + 56))(v8, a3, a4, a5, 0, 0);
}

uint64_t sub_1618B4(uint64_t a1)
{
  v1 = *(a1 + 136);
  v2 = *(a1 + 144);
  if (v1 == v2)
  {
    return 0;
  }

  v3 = v1 + 8;
  do
  {
    result = (*(**(v3 - 8) + 240))(*(v3 - 8));
    if (result)
    {
      break;
    }

    v5 = v3 == v2;
    v3 += 8;
  }

  while (!v5);
  return result;
}

void sub_161924(uint64_t a1)
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
        v6 = *sub_5544(25);
        v7 = v6;
        if (v6 && os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v8 = *(v5 + 392);
          v9 = "N";
          v18 = "DSPChain.mm";
          v10 = *(v5 + 796);
          if (v8)
          {
            v11 = "Y";
          }

          else
          {
            v11 = "N";
          }

          *buf = 136315906;
          v19 = 1024;
          if (v10)
          {
            v9 = "Y";
          }

          v20 = 3555;
          v21 = 2080;
          v22 = v11;
          v23 = 2080;
          v24 = v9;
          _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d PlaybackDosimetry : reconfiguring volume: initialized %s, hasAUSPL %s", buf, 0x26u);
        }

        if (*(v5 + 392) == 1 && *(v5 + 796) == 1)
        {
          cf = 0;
          v15 = 0.0;
          sub_2C5414(v5, &cf, &v15);
          if (*(v5 + 736) != 561211748)
          {
            sub_2C572C(v5, cf, v15);
          }

          if (cf)
          {
            CFRelease(cf);
          }

          v12 = *sub_5544(25);
          v13 = v12;
          if (v12 && os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            v14 = *(v5 + 736);
            *buf = 136315650;
            v18 = "DSPChain.mm";
            v19 = 1024;
            v20 = 3574;
            v21 = 2048;
            v22 = v14;
            _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "%25s:%-5d PlaybackDosimetry : Volume Reconfigured for ADAM session: %llu", buf, 0x1Cu);
          }
        }
      }

      sub_1A8C0(v4);
    }
  }
}

BOOL sub_161B94(uint64_t a1)
{
  std::mutex::lock((a1 + 320));
  v2 = *(a1 + 392);
  if (v2 == a1 + 384)
  {
LABEL_4:
    v4 = 0;
  }

  else
  {
    while (1)
    {
      v3 = *(*(v2 + 16) + 144);
      v4 = v3 == 1886613611;
      if (v3 == 1886613611)
      {
        break;
      }

      v2 = *(v2 + 8);
      if (v2 == a1 + 384)
      {
        goto LABEL_4;
      }
    }
  }

  std::mutex::unlock((a1 + 320));
  return v4;
}

uint64_t sub_161C04(uint64_t a1)
{
  v1 = *(a1 + 136);
  v2 = *(a1 + 144);
  if (v1 == v2)
  {
    return 0;
  }

  v3 = v1 + 8;
  do
  {
    result = (*(**(v3 - 8) + 288))(*(v3 - 8));
    if (result)
    {
      break;
    }

    v5 = v3 == v2;
    v3 += 8;
  }

  while (!v5);
  return result;
}

void sub_161C7C(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = a1;
  a1[1] = a1;
  a1[2] = 0;
  std::mutex::lock((a2 + 320));
  for (i = *(a2 + 392); i != (a2 + 384); i = i[1])
  {
    if (sub_46398(i[2], a3))
    {
      v7 = i[2];
      v6 = i[3];
      if (v6)
      {
        atomic_fetch_add_explicit((v6 + 16), 1uLL, memory_order_relaxed);
      }

      operator new();
    }
  }

  std::mutex::unlock((a2 + 320));
}

void sub_161D9C(uint64_t a1)
{
  if ((*(**(a1 + 8) + 392))(*(a1 + 8), 1936748595, 64008, 0, 1) && *(a1 + 16))
  {
    v2 = sub_5544(20);
    v3 = *v2;
    if (*v2 && os_log_type_enabled(*v2, OS_LOG_TYPE_DEFAULT))
    {
      v4 = v58;
      sub_22170(v58, 0xFA08u);
      if (v59 < 0)
      {
        v4 = v58[0];
      }

      sub_22170(v56, 0x73707033u);
      v5 = v57;
      v6 = v56[0];
      sub_B1190(&__p, *(a1 + 16));
      v7 = v56;
      if (v5 < 0)
      {
        v7 = v6;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 136316162;
      v61 = "RoutingHandlerAction_ReApplyCPMSPowerBudget.cpp";
      v62 = 1024;
      v63 = 72;
      v64 = 2080;
      v65 = v4;
      v66 = 2080;
      v67 = v7;
      v68 = 2080;
      v69 = *&p_p;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Re-apply CPMS Budget: Setting property %s for AU %s Budget Value = %s", buf, 0x30u);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (v57 < 0)
      {
        operator delete(v56[0]);
      }

      if (v59 < 0)
      {
        operator delete(v58[0]);
      }
    }

    (*(**(a1 + 8) + 416))(*(a1 + 8), 1936748595, 64008, a1 + 16, 8, 1, 0);
  }

  else if ((*(**(a1 + 8) + 392))(*(a1 + 8), 1668312369, 64100, 0, 1) && *(a1 + 16))
  {
    v9 = sub_5544(20);
    v10 = *v9;
    if (*v9 && os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v58;
      sub_22170(v58, 0xFA64u);
      if (v59 < 0)
      {
        v11 = v58[0];
      }

      sub_22170(v56, 0x63706D31u);
      v12 = v57;
      v13 = v56[0];
      sub_B1190(&__p, *(a1 + 16));
      v14 = v56;
      if (v12 < 0)
      {
        v14 = v13;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v15 = &__p;
      }

      else
      {
        v15 = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 136316162;
      v61 = "RoutingHandlerAction_ReApplyCPMSPowerBudget.cpp";
      v62 = 1024;
      v63 = 78;
      v64 = 2080;
      v65 = v11;
      v66 = 2080;
      v67 = v14;
      v68 = 2080;
      v69 = *&v15;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Re-apply CPMS Budget: Setting property %s for AU %s Budget Value = %s", buf, 0x30u);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (v57 < 0)
      {
        operator delete(v56[0]);
      }

      if (v59 < 0)
      {
        operator delete(v58[0]);
      }
    }

    (*(**(a1 + 8) + 416))(*(a1 + 8), 1668312369, 64100, a1 + 16, 8, 1, 0);
  }

  else
  {
    v16 = sub_5544(20);
    v17 = *v16;
    if (*v16 && os_log_type_enabled(*v16, OS_LOG_TYPE_DEFAULT))
    {
      v18 = v58;
      sub_22170(v58, 0xFA08u);
      if (v59 < 0)
      {
        v18 = v58[0];
      }

      v19 = v56;
      sub_22170(v56, 0x73707033u);
      if (v57 < 0)
      {
        v19 = v56[0];
      }

      sub_22170(&__p, 0xFA64u);
      v20 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
      v21 = __p.__r_.__value_.__r.__words[0];
      sub_22170(v53, 0x63706D31u);
      v22 = &__p;
      if (v20 < 0)
      {
        v22 = v21;
      }

      if (v54 >= 0)
      {
        v23 = v53;
      }

      else
      {
        v23 = v53[0];
      }

      *buf = 136316418;
      v61 = "RoutingHandlerAction_ReApplyCPMSPowerBudget.cpp";
      v62 = 1024;
      v63 = 84;
      v64 = 2080;
      v65 = v18;
      v66 = 2080;
      v67 = v19;
      v68 = 2080;
      v69 = *&v22;
      v70 = 2080;
      v71 = v23;
      _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Re-apply CPMS Budget: DSPChain does not have any of the CPMS power budget properties present (%s for AU %s), or (%s for AU %s), nor their corresponding graph properties.", buf, 0x3Au);
      if (v54 < 0)
      {
        operator delete(v53[0]);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (v57 < 0)
      {
        operator delete(v56[0]);
      }

      if (v59 < 0)
      {
        operator delete(v58[0]);
      }
    }
  }

  if (*(a1 + 56) == 1 && (*(**(a1 + 8) + 368))(*(a1 + 8), 1685287015, 1885500278, 0))
  {
    v24 = *(a1 + 8);
    v25 = *(v24 + 288);
    if (v25 <= 1668309361)
    {
      if (v25 == 1667591521 || v25 == 1667591533)
      {
        if ((*(a1 + 56) & 1) == 0)
        {
          sub_1EC054();
        }

        v26 = (a1 + 32);
        goto LABEL_78;
      }

      if (v25 == 1667773039)
      {
        if ((*(a1 + 56) & 1) == 0)
        {
          sub_1EC054();
        }

        v26 = (a1 + 28);
        goto LABEL_78;
      }

      goto LABEL_74;
    }

    if (v25 == 1668309362 || v25 == 1668313666)
    {
      if (!sub_CE3DC((v24 + 272)))
      {
        if ((*(a1 + 56) & 1) == 0)
        {
          sub_1EC054();
        }

        goto LABEL_77;
      }

      if ((*(a1 + 56) & 1) == 0)
      {
        sub_1EC054();
      }
    }

    else
    {
      if (v25 != 1668703084)
      {
LABEL_74:
        if ((*(a1 + 56) & 1) == 0)
        {
          sub_1EC054();
        }

LABEL_77:
        v26 = (a1 + 24);
LABEL_78:
        v27 = *v26;
        v28 = sub_5544(20);
        v29 = *v28;
        if (*v28 && os_log_type_enabled(*v28, OS_LOG_TYPE_DEFAULT))
        {
          sub_22170(v58, 0x70627376u);
          v30 = v59;
          v31 = v58[0];
          sub_22170(v56, 0x64737067u);
          v32 = v58;
          if (v30 < 0)
          {
            v32 = v31;
          }

          if (v57 >= 0)
          {
            v33 = v56;
          }

          else
          {
            v33 = v56[0];
          }

          *buf = 136316162;
          v61 = "RoutingHandlerAction_ReApplyCPMSPowerBudget.cpp";
          v62 = 1024;
          v63 = 92;
          v64 = 2080;
          v65 = v32;
          v66 = 2080;
          v67 = v33;
          v68 = 2048;
          v69 = v27;
          _os_log_impl(&dword_0, v29, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Re-apply CPMS Scalar: Setting GraphParameter %s for AU %s Budget Value = %f", buf, 0x30u);
          if (v57 < 0)
          {
            operator delete(v56[0]);
          }

          if (v59 < 0)
          {
            operator delete(v58[0]);
          }
        }

        (*(**(a1 + 8) + 384))(*(a1 + 8), 1685287015, 1885500278, 0, v27);
        goto LABEL_90;
      }

      if ((*(a1 + 56) & 1) == 0)
      {
        sub_1EC054();
      }
    }

    v26 = (a1 + 36);
    goto LABEL_78;
  }

LABEL_90:
  if (*(a1 + 56) == 1)
  {
    v34 = (*(**(a1 + 8) + 368))(*(a1 + 8), 1685287015, 2020369200, 0);
    v35 = *(a1 + 56);
    if (v34)
    {
      if (*(*(a1 + 8) + 288) == 1667773039)
      {
        if ((*(a1 + 56) & 1) == 0)
        {
          sub_1EC054();
        }

        v36 = 44;
      }

      else
      {
        if ((*(a1 + 56) & 1) == 0)
        {
          sub_1EC054();
        }

        v36 = 40;
      }

      v37 = *(a1 + v36);
      v38 = sub_5544(20);
      v39 = *v38;
      if (*v38 && os_log_type_enabled(*v38, OS_LOG_TYPE_DEFAULT))
      {
        sub_22170(v58, 0x786C6330u);
        v40 = v59;
        v41 = v58[0];
        sub_22170(v56, 0x64737067u);
        v42 = v58;
        if (v40 < 0)
        {
          v42 = v41;
        }

        if (v57 >= 0)
        {
          v43 = v56;
        }

        else
        {
          v43 = v56[0];
        }

        *buf = 136316162;
        v61 = "RoutingHandlerAction_ReApplyCPMSPowerBudget.cpp";
        v62 = 1024;
        v63 = 101;
        v64 = 2080;
        v65 = v42;
        v66 = 2080;
        v67 = v43;
        v68 = 2048;
        v69 = v37;
        _os_log_impl(&dword_0, v39, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Re-apply CPMS X-Lim: Setting GraphParameter %s for AU %s Scale Distance = %f", buf, 0x30u);
        if (v57 < 0)
        {
          operator delete(v56[0]);
        }

        if (v59 < 0)
        {
          operator delete(v58[0]);
        }
      }

      (*(**(a1 + 8) + 384))(*(a1 + 8), 1685287015, 2020369200, 0, v37);
      v35 = *(a1 + 56);
    }

    if ((v35 & 1) != 0 && (*(**(a1 + 8) + 368))(*(a1 + 8), 1685287015, 1885826148, 0))
    {
      v44 = *(*(a1 + 8) + 288);
      if (v44 == 1667591533 || v44 == 1667591521)
      {
        if ((*(a1 + 56) & 1) == 0)
        {
          sub_1EC054();
        }

        v45 = 52;
      }

      else
      {
        if ((*(a1 + 56) & 1) == 0)
        {
          sub_1EC054();
        }

        v45 = 48;
      }

      v46 = *(a1 + v45);
      v47 = sub_5544(20);
      v48 = *v47;
      if (*v47 && os_log_type_enabled(*v47, OS_LOG_TYPE_DEFAULT))
      {
        sub_22170(v58, 0x70676C64u);
        v49 = v59;
        v50 = v58[0];
        sub_22170(v56, 0x64737067u);
        v51 = v58;
        if (v49 < 0)
        {
          v51 = v50;
        }

        if (v57 >= 0)
        {
          v52 = v56;
        }

        else
        {
          v52 = v56[0];
        }

        *buf = 136316162;
        v61 = "RoutingHandlerAction_ReApplyCPMSPowerBudget.cpp";
        v62 = 1024;
        v63 = 112;
        v64 = 2080;
        v65 = v51;
        v66 = 2080;
        v67 = v52;
        v68 = 2048;
        v69 = v46;
        _os_log_impl(&dword_0, v48, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Re-apply CPMS Power Gain Limit dB: Setting GraaphParameter %s for AU %s. Power Limit = %fdB", buf, 0x30u);
        if (v57 < 0)
        {
          operator delete(v56[0]);
        }

        if (v59 < 0)
        {
          operator delete(v58[0]);
        }
      }

      (*(**(a1 + 8) + 384))(*(a1 + 8), 1685287015, 1885826148, 0, v46);
    }
  }
}

void sub_162940(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (v30 < 0)
  {
    operator delete(v29);
  }

  _Unwind_Resume(exception_object);
}

void sub_1629BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = (*(*a1 + 96))(a1, a6, a7);
  if (!v12)
  {
    v21 = sub_5544(14);
    v22 = *v21;
    if (*v21 && os_log_type_enabled(*v21, OS_LOG_TYPE_ERROR))
    {
      (*(*a1 + 128))(__p, a1);
      v23 = v35 >= 0 ? __p : __p[0];
      *buf = 136315650;
      *&buf[4] = "AggregateDevice_CommonBase.cpp";
      v37 = 1024;
      v38 = 409;
      v39 = 2080;
      *v40 = v23;
      _os_log_impl(&dword_0, v22, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error) [stream is NULL]: Encountered a NULL stream in %s", buf, 0x1Cu);
      if (v35 < 0)
      {
        operator delete(__p[0]);
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Encountered a NULL stream in %s");
  }

  v13 = *(v12 + 152);
  if ((*(*v13 + 104))(v13, a2, a3, 0))
  {
    v14 = (*(*v13 + 128))(v13, a2, a3, a4, a5, 0, 0, 0);
    v15 = sub_5544(17);
    v16 = sub_5544(25);
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
        if ((v18 & 1) == 0)
        {
          goto LABEL_14;
        }

        goto LABEL_11;
      }
    }

    if ((v18 & v19) == 0)
    {
      v15 = v16;
    }

    if (*(v15 + 8))
    {
LABEL_11:
      v20 = *v15;
      if (v20 && os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315906;
        *&buf[4] = "AggregateDevice_CommonBase.cpp";
        v37 = 1024;
        v38 = 415;
        v39 = 1024;
        *v40 = a3;
        *&v40[4] = 1024;
        *&v40[6] = v14;
        _os_log_impl(&dword_0, v20, OS_LOG_TYPE_DEBUG, "%25s:%-5d chain->SetProperty(%d): %d.", buf, 0x1Eu);
      }
    }

LABEL_14:
    if (v14)
    {
      v25 = sub_5544(14);
      v26 = *v25;
      if (*v25 && os_log_type_enabled(*v25, OS_LOG_TYPE_ERROR))
      {
        sub_22170(__p, a2);
        v27 = v35;
        v28 = __p[0];
        sub_22170(v32, a3);
        v29 = __p;
        if (v27 < 0)
        {
          v29 = v28;
        }

        if (v33 >= 0)
        {
          v30 = v32;
        }

        else
        {
          v30 = v32[0];
        }

        *buf = 136316162;
        *&buf[4] = "AggregateDevice_CommonBase.cpp";
        v37 = 1024;
        v38 = 416;
        v39 = 2080;
        *v40 = v29;
        *&v40[8] = 2080;
        v41 = v30;
        v42 = 1024;
        v43 = v14;
        _os_log_impl(&dword_0, v26, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (status) [error status is an error]: chain->SetProperty failed for AU (%s) property %s with error %d.", buf, 0x2Cu);
        if (v33 < 0)
        {
          operator delete(v32[0]);
        }

        if (v35 < 0)
        {
          operator delete(__p[0]);
        }
      }

      v31 = __cxa_allocate_exception(0x10uLL);
      *v31 = &off_6DDDD0;
      v31[2] = v14;
    }
  }
}

void sub_162E00(_Unwind_Exception *exception_object)
{
  if (v2 < 0)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_162E30(uint64_t a1, __int128 *a2)
{
  *(a1 + 8) = 0;
  *(a1 + 64) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 72) = 1065353216;
  *a1 = off_6DB8B0;
  *(a1 + 80) = 0;
  v3 = a1 + 80;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  v4 = *a2;
  v5 = *(a2 + 1);
  v6 = *a2;
  if (*a2 != v5)
  {
    v7 = (v5 - v6) >> 4;
    sub_14CD4C((a1 + 80));
    if (!(v7 >> 60))
    {
      v8 = *(a1 + 96) - *(a1 + 80);
      v9 = v8 >> 3;
      if (v8 >> 3 <= v7)
      {
        v9 = (v5 - v6) >> 4;
      }

      if (v8 >= 0x7FFFFFFFFFFFFFF0)
      {
        v10 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      sub_868A0(v3, v10);
    }

    sub_189A00();
  }

  sub_15DD68();
}

void sub_162F60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void **a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_1A8C0(a12);
  }

  sub_F5714(&a11);
  sub_13BFA8(v12);
  _Unwind_Resume(a1);
}

uint64_t sub_162F98(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v8 = a1 + 48;
  sub_26C0(a1 + 48);
  v9 = *(a1 + 24);
  v10 = *(a1 + 32);
  if (v9 != v10)
  {
    while (1)
    {
      v15 = 0;
      v11 = *(v9 + 8);
      if (v11)
      {
        if ((*(*v11 + 160))(v11) == a2)
        {
          v14 = 0;
          if (!(*(**(v9 + 8) + 40))(*(v9 + 8), a3, &v15, &v14, a4, 0))
          {
            break;
          }
        }
      }

      v9 += 24;
      if (v9 == v10)
      {
        v9 = v10;
        break;
      }
    }

    v10 = *(a1 + 32);
  }

  if (v9 == v10)
  {
    v12 = 0;
  }

  else
  {
    v12 = *(v9 + 8);
  }

  sub_3174(v8);
  return v12;
}

void sub_1630BC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2185D4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1630D0(uint64_t a1, int a2)
{
  if (!a1)
  {
    v4 = sub_5544(14);
    v5 = *v4;
    if (*v4 && os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v10 = "VirtualAudio_Device.cpp";
      v11 = 1024;
      v12 = 1478;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareUnspecifiedError) [mDevice is NULL]: mDevice is NULL", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 2003329396;
  }

  if (a2)
  {
    v2 = 1768845428;
  }

  else
  {
    v2 = 1869968496;
  }

  *buf = 1752657012;
  v10 = v2;
  v7 = 4;
  v8 = 0;
  (*(*a1 + 40))(a1, buf, 0, 0, &v7, &v8);
  return v8;
}

BOOL sub_163270(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_70DB0(a2, a3);
  if (HIDWORD(v8))
  {
    v10 = v8;
    v11 = sub_5544(25);
    v12 = *v11;
    if (*v11 && os_log_type_enabled(*v11, OS_LOG_TYPE_DEBUG))
    {
      sub_22170(v23, a3);
      if (v24 >= 0)
      {
        v13 = v23;
      }

      else
      {
        v13 = v23[0];
      }

      sub_22170(v21, a2);
      v14 = v22;
      v15 = v21[0];
      sub_22170(__p, v10);
      v16 = v21;
      if (v14 < 0)
      {
        v16 = v15;
      }

      if (v20 >= 0)
      {
        v17 = __p;
      }

      else
      {
        v17 = __p[0];
      }

      *buf = 136316162;
      v26 = "DSPGraphChain.cpp";
      v27 = 1024;
      v28 = 140;
      v29 = 2080;
      v30 = v13;
      v31 = 2080;
      v32 = v16;
      v33 = 2080;
      v34 = v17;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEBUG, "%25s:%-5d Translating DSPProperty %s for AU subtype %s to graph property %s", buf, 0x30u);
      if (v20 < 0)
      {
        operator delete(__p[0]);
      }

      if (v22 < 0)
      {
        operator delete(v21[0]);
      }

      if (v24 < 0)
      {
        operator delete(v23[0]);
      }
    }

    v9 = sub_162F98(a1, 1685287015, v10, a4);
  }

  else
  {
    v9 = sub_162F98(a1, a2, a3, a4);
  }

  return v9 != 0;
}

void sub_163450(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

double sub_163490(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (a2 <= 5)
  {
    *a3 = *&aTrsnRsntmfsamf[4 * a2];
  }

  result = NAN;
  *(a3 + 4) = -3587560918;
  return result;
}

void sub_1634B8(uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 64)
  {
    v4 = *(i - 24);
    if (v4)
    {
      *(i - 16) = v4;
      operator delete(v4);
    }
  }

  a1[1] = v2;
}

char *sub_163508(char *result, uint64_t a2)
{
  v2 = 304;
  if (*(a2 + 88))
  {
    v2 = 280;
  }

  v3 = &result[v2];
  v5 = *&result[v2];
  v4 = *&result[v2 + 8];
  if (v5 != v4)
  {
    while (*v5 != a2)
    {
      v5 += 8;
      if (v5 == v4)
      {
        v5 = v4;
        break;
      }
    }
  }

  if (v4 != v5)
  {
    v6 = v4 - (v5 + 8);
    if (v4 != v5 + 8)
    {
      result = memmove(v5, v5 + 8, v4 - (v5 + 8));
    }

    *(v3 + 1) = &v5[v6];
  }

  return result;
}

uint64_t sub_163594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = (*(*a1 + 16))(a1);
  if (result)
  {
    result = (*(*a1 + 24))(a1, a2);
    if (result)
    {
      v9 = *(*a1 + 48);

      return v9(a1, a2, 0, 0, a3, a4);
    }
  }

  return result;
}

void sub_163678(uint64_t *a1, int a2, unsigned int a3, int *a4)
{
  if (a3)
  {
    v7 = a3;
    do
    {
      v8 = sub_163EF0(a1, a2);
      sub_172ED8(v8, a4);
      a4 += 3;
      --v7;
    }

    while (v7);
  }
}

void sub_1636D4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (*(a1 + 40) != a2)
  {
    if ((*(a1 + 72) & 1) == 0)
    {
      v17 = sub_5544(14);
      v18 = *v17;
      if (*v17)
      {
        if (os_log_type_enabled(*v17, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v23 = "VirtualAudio_DevicePropertyCache.cpp";
          v24 = 1024;
          v25 = 327;
          _os_log_impl(&dword_0, v18, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: Notifications must be queued during swap.", buf, 0x12u);
        }
      }
    }

    v5 = *(a1 + 56);
    if (v5 != (a1 + 48))
    {
      while (1)
      {
        v7 = v5[2];
        v6 = v5[3];
        if (v6)
        {
          atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v8 = *(v7 + 55);
        if (v8 == 1)
        {
          if (!*(a1 + 40))
          {
            v15 = sub_5544(14);
            v16 = *v15;
            if (*v15)
            {
              if (os_log_type_enabled(*v15, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                v23 = "VirtualAudio_DevicePropertyCache.cpp";
                v24 = 1024;
                v25 = 337;
                _os_log_impl(&dword_0, v16, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: mCurrentVAObject is nullptr but there is an active property.", buf, 0x12u);
              }
            }
          }

          if (v6)
          {
            atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          }

          v9 = *(a1 + 40);
          operator new();
        }

        if (!a2)
        {
          break;
        }

        if ((*(*a2 + 16))(a2, v7 + 40))
        {
          v10 = *v7;
          if (v8)
          {
            if (((*(v10 + 32))(v7, a2) & 1) == 0)
            {
              (*(*v7 + 24))(v7, a2);
              if ((*(v7 + 54) & 1) == 0)
              {
                v11 = sub_163EF0(a3, *(a1 + 16));
                sub_172ED8(v11, (v7 + 40));
              }
            }
          }

          else
          {
            (*(v10 + 24))(v7, a2);
          }

          v13 = sub_17A154(a2, (v7 + 40), sub_5264C, v7);
          if (v13)
          {
            v14 = sub_5544(1);
            if (*v14)
            {
              if (os_log_type_enabled(*v14, OS_LOG_TYPE_ERROR))
              {
                sub_22170(&v21, v13);
                sub_22CE0(&__p);
              }
            }
          }

          v12 = 1;
          goto LABEL_24;
        }

LABEL_25:
        if (v6)
        {
          sub_1A8C0(v6);
        }

        v5 = v5[1];
        if (v5 == (a1 + 48))
        {
          goto LABEL_32;
        }
      }

      v12 = 0;
LABEL_24:
      *(v7 + 55) = v12;
      goto LABEL_25;
    }

LABEL_32:
    *(a1 + 40) = a2;
  }
}

void sub_163B1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (v23)
  {
    sub_1A8C0(v23);
  }

  _Unwind_Resume(exception_object);
}

void sub_163B64(uint64_t *a1, uint64_t a2, _DWORD *a3, uint64_t a4, uint64_t a5)
{
  if ((sub_2160(&unk_6FC990) & 1) == 0)
  {
    v14 = sub_5544(14);
    v15 = *v14;
    if (*v14)
    {
      if (os_log_type_enabled(*v14, OS_LOG_TYPE_ERROR))
      {
        v16 = 136315394;
        v17 = "ListenerRelayManager.cpp";
        v18 = 1024;
        v19 = 146;
        _os_log_impl(&dword_0, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: relayListMutex not held by the current thread.", &v16, 0x12u);
      }
    }
  }

  for (i = qword_6FC980; ; i = i[1])
  {
    if (i == &qword_6FC978)
    {
      *a1 = 0;
      a1[1] = 0;
      return;
    }

    v11 = atomic_load((i[2] + 56));
    if ((v11 & 1) == 0)
    {
      v12 = i[2];
      if (*(v12 + 16) == a2 && *(v12 + 28) == a3[1] && *(v12 + 24) == *a3 && *(v12 + 32) == a3[2] && *(v12 + 40) == a4 && *(v12 + 48) == a5)
      {
        break;
      }
    }
  }

  v13 = i[3];
  *a1 = v12;
  a1[1] = v13;
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
  }
}

void sub_163CFC(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    v12 = sub_5544(14);
    v13 = *v12;
    if (*v12 && os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
    {
      v15 = 136315394;
      v16 = "VirtualAudio_Utilities.cpp";
      v17 = 1024;
      v18 = 420;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", &v15, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = v7 >> 3;
    v9 = (v7 >> 3) + 1;
    if (v9 >> 61)
    {
      sub_189A00();
    }

    v10 = v3 - v6;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (!(v11 >> 61))
      {
        operator new();
      }

      sub_6ACD8();
    }

    *(8 * v8) = a2;
    v5 = 8 * v8 + 8;
    memcpy(0, v6, v7);
    *a1 = 0;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = a2;
    v5 = (v4 + 1);
  }

  *(a1 + 8) = v5;
}

unint64_t sub_163EF0(uint64_t *a1, int a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = v4;
  while (v5 != v3)
  {
    v6 = *(v5 - 40);
    v5 -= 40;
    if (v6 == a2)
    {
      v7 = v5 + 40;
      return v7 - 32;
    }
  }

  v8 = a1[2];
  if (v4 >= v8)
  {
    v9 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - v3) >> 3);
    if (v9 + 1 > 0x666666666666666)
    {
      sub_189A00();
    }

    v10 = 0xCCCCCCCCCCCCCCCDLL * ((v8 - v3) >> 3);
    v11 = 2 * v10;
    if (2 * v10 <= v9 + 1)
    {
      v11 = v9 + 1;
    }

    if (v10 >= 0x333333333333333)
    {
      v12 = 0x666666666666666;
    }

    else
    {
      v12 = v11;
    }

    v27 = a1;
    if (v12)
    {
      if (v12 <= 0x666666666666666)
      {
        operator new();
      }

      sub_6ACD8();
    }

    v13 = 40 * v9;
    v24 = 0;
    v25 = v13;
    v26 = v13;
    *v13 = a2;
    *(v13 + 16) = 0;
    *(v13 + 24) = 0;
    *(v13 + 8) = 0;
    sub_EA018(v13 + 8, 0, 0, 0);
    *(v13 + 32) = 0;
    *&v26 = v26 + 40;
    v15 = *a1;
    v14 = a1[1];
    v28[0] = a1;
    v28[1] = &v30;
    v28[2] = &v31;
    v29 = 0;
    v16 = v25 + v15 - v14;
    v30 = v16;
    v31 = v16;
    if (v15 == v14)
    {
      v29 = 1;
    }

    else
    {
      v17 = v25 + v15 - v14;
      v18 = v15;
      do
      {
        *v17 = *v18;
        *(v17 + 8) = 0;
        *(v17 + 16) = 0;
        *(v17 + 24) = 0;
        sub_EA018(v17 + 8, *(v18 + 8), *(v18 + 16), 0xAAAAAAAAAAAAAAABLL * ((*(v18 + 16) - *(v18 + 8)) >> 2));
        *(v17 + 32) = *(v18 + 32);
        v18 += 40;
        v17 = v31 + 40;
        v31 += 40;
      }

      while (v18 != v14);
      v29 = 1;
      do
      {
        v19 = *(v15 + 8);
        if (v19)
        {
          *(v15 + 16) = v19;
          operator delete(v19);
        }

        v15 += 40;
      }

      while (v15 != v14);
    }

    sub_179F2C(v28);
    v20 = *a1;
    *a1 = v16;
    v21 = a1[2];
    v23 = v26;
    *(a1 + 1) = v26;
    *&v26 = v20;
    *(&v26 + 1) = v21;
    v24 = v20;
    v25 = v20;
    sub_173388(&v24);
    v7 = v23;
  }

  else
  {
    *v4 = a2;
    *(v4 + 16) = 0;
    *(v4 + 24) = 0;
    *(v4 + 8) = 0;
    sub_EA018(v4 + 8, 0, 0, 0);
    *(v4 + 32) = 0;
    v7 = v4 + 40;
    a1[1] = v4 + 40;
  }

  a1[1] = v7;
  return v7 - 32;
}

void sub_164154(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_173388(va);
  _Unwind_Resume(a1);
}

void sub_164184(AudioObjectID *a1, const AudioObjectPropertyAddress *a2, uint64_t a3, uint64_t a4, int *a5, _DWORD *a6)
{
  if (a2->mSelector != 1819569763)
  {
    v20 = sub_5544(14);
    v21 = *v20;
    if (*v20 && os_log_type_enabled(*v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v31 = "AggregateDevice_CommonBase.cpp";
      v32 = 1024;
      v33 = 3016;
      _os_log_impl(&dword_0, v21, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  v9 = *a5;
  if (v9 != (*(*a1 + 32))(a1))
  {
    v23 = sub_5544(14);
    if (*v23 && os_log_type_enabled(*v23, OS_LOG_TYPE_ERROR))
    {
      outData = *&a2->mSelector;
      mElement = a2->mElement;
      sub_22CE0(__p);
    }

    v24 = __cxa_allocate_exception(0x10uLL);
    *v24 = &off_6DDDD0;
    v24[2] = 561211770;
  }

  ioDataSize = 4;
  LODWORD(outData) = 0;
  PropertyData = AudioObjectGetPropertyData(a1[32], a2, 0, 0, &ioDataSize, &outData);
  if (PropertyData)
  {
    v11 = sub_5544(17);
    v12 = *v11;
    if (*v11 && os_log_type_enabled(*v11, OS_LOG_TYPE_INFO))
    {
      sub_22170(__p, PropertyData);
      v13 = v29 >= 0 ? __p : __p[0];
      *buf = 136315650;
      v31 = "AggregateDevice_CommonBase.cpp";
      v32 = 1024;
      v33 = 3027;
      v34 = 2080;
      v35 = v13;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_INFO, "%25s:%-5d Error '%s' reading device latency from the HAL. Treating as 0.", buf, 0x1Cu);
      if (v29 < 0)
      {
        operator delete(__p[0]);
      }
    }

    LODWORD(outData) = 0;
  }

  v14 = sub_71E60(a2->mScope);
  v15 = (*(*a1 + 600))(a1, v14);
  v16 = sub_5544(17);
  if (*(v16 + 8))
  {
    v17 = *v16;
    if (*v16)
    {
      if (os_log_type_enabled(*v16, OS_LOG_TYPE_DEBUG))
      {
        v18 = a2->mScope == 1768845428;
        *buf = 136316418;
        v31 = "AggregateDevice_CommonBase.cpp";
        if (v18)
        {
          v19 = "input";
        }

        else
        {
          v19 = "output";
        }

        v32 = 1024;
        v33 = 3035;
        v34 = 2080;
        v35 = v19;
        v36 = 1024;
        v37 = outData;
        v38 = 1024;
        v39 = v15;
        v40 = 1024;
        v41 = outData + v15;
        _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEBUG, "%25s:%-5d Request for aggregate device %s latency. HAL device latency = %u frames, DSP latency = %u frames, total = %u frames", buf, 0x2Eu);
      }
    }
  }

  *a6 = outData + v15;
}

void sub_164628(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_16465C(void *a1)
{
  v2 = (*(*a1 + 120))(a1);
  sub_10852C(v17, 0, v2, a1[67]);
  v3 = v18;
  v4 = *(v18 + 2);
  if (v4)
  {
    bzero(v18 + 12, 4 * v4);
    sub_10834C(v17);
    v3 = v18;
  }

  free(v3);
  v5 = (*(*a1 + 120))(a1);
  sub_10852C(v17, 1, v5, a1[67]);
  v6 = v18;
  v7 = *(v18 + 2);
  if (v7)
  {
    bzero(v18 + 12, 4 * v7);
    sub_10834C(v17);
    v6 = v18;
  }

  free(v6);
  v8 = a1[80];
  v9 = a1[81];
  while (v8 != v9)
  {
    v10 = *v8;
    v8 += 2;
    sub_1647D8(v10);
  }

  v11 = a1[83];
  v12 = a1[84];
  while (v11 != v12)
  {
    v13 = *v11;
    v11 += 2;
    sub_1647D8(v13);
  }

  v15 = a1[31];
  v14 = a1[32];
  while (v15 != v14)
  {
    v16 = *v15;
    v15 += 2;
    (*(*v16 + 56))(v16);
  }
}

uint64_t sub_1647D8(uint64_t a1)
{
  v2 = *(a1 + 640);
  if (v2 && *(v2 + 52) == 1)
  {
    sub_2CCCCC(*(a1 + 152), 0);
  }

  v3 = *(**(a1 + 152) + 176);

  return v3();
}

void sub_164850(uint64_t a1)
{
  v2 = *(a1 + 120);
  if (v2)
  {
    goto LABEL_18;
  }

  v9 = sub_5544(14);
  v10 = *v9;
  if (*v9 && os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
  {
    v11[0] = 136315394;
    *&v11[1] = "VirtualAudio_Stream.cpp";
    v12 = 1024;
    v13 = 424;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: underlying stream is NULL", v11, 0x12u);
  }

  v2 = *(a1 + 120);
  if (v2)
  {
LABEL_18:
    if (sub_123DE4(v2))
    {
      v3 = *(a1 + 120);
      v4 = *(v3 + 88);
      if (v4)
      {
        v5 = *(v3 + 80);
        atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        v6 = std::__shared_weak_count::lock(v4);
        std::__shared_weak_count::__release_weak(v4);
        if (v6)
        {
          if (v5)
          {
            strcpy(v11, "atfpbolg");
            BYTE1(v11[2]) = 0;
            HIWORD(v11[2]) = 0;
            sub_164A14(v5, v11, sub_23B27C, *(a1 + 112));
          }

          sub_1A8C0(v6);
        }
      }
    }
  }

  v7 = *(a1 + 120);
  sub_13DCB8(v7);
  v8 = v7[11];
  v7[10] = 0;
  v7[11] = 0;
  if (v8)
  {
    std::__shared_weak_count::__release_weak(v8);
  }
}

uint64_t sub_1649DC(uint64_t a1)
{
  sub_26C0(a1);
  v2 = *(a1 + 304);
  sub_3174(a1);
  return v2;
}

uint64_t sub_164A14(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  v15 = 0;
  sub_52588();
  v8 = sub_164BC4(a1, a2, a3, a4, &v15);
  if (HIDWORD(v8))
  {
    if (v8 || (*(*a1 + 64))(a1, a2, sub_52124, v15))
    {
      return 0;
    }

    else
    {
      return 2003329396;
    }
  }

  else
  {
    v9 = 2003329396;
    v10 = sub_5544(15);
    if (*v10 && os_log_type_enabled(*v10, OS_LOG_TYPE_DEBUG))
    {
      v12 = *a2;
      v13 = a2[2];
      sub_22CE0(&__p);
    }
  }

  return v9;
}

uint64_t sub_164BC4(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, void *a5)
{
  sub_1DB7C8(&v32);
  v30 = &unk_6FC990;
  v31 = 1;
  sub_26C0(&unk_6FC990);
  sub_163B64(&v28, a1, a2, a3, a4);
  v10 = v28;
  if (v28)
  {
    *a5 = *v28;
    sub_47BD8(&unk_6FC990);
    v11 = *(v10 + 2) - 1;
    *(v10 + 2) = v11;
    if (v11)
    {
      v12 = v11 & 0xFFFFFF00;
      v13 = v11;
    }

    else
    {
      atomic_store(1u, v10 + 56);
      v33[0] = v33;
      v33[1] = v33;
      v34 = 0;
      v15 = qword_6FC980;
      if (qword_6FC980 != &qword_6FC978)
      {
        v16 = 0;
        v17 = qword_6FC988;
        do
        {
          v18 = v15[1];
          if (v15[2] == v10)
          {
            while (v18 != &qword_6FC978)
            {
              v19 = v18[2] == v10;
              if (v18[2] != v10)
              {
                goto LABEL_16;
              }

              v18 = v18[1];
            }

            v19 = 1;
            v18 = &qword_6FC978;
LABEL_16:
            if (v15 != v18)
            {
              v20 = *v18;
              if (*v18 == v15)
              {
                v23 = 1;
              }

              else
              {
                v21 = -1;
                v22 = v15;
                do
                {
                  v22 = v22[1];
                  ++v21;
                }

                while (v22 != v20);
                v23 = v21 + 2;
              }

              v17 -= v23;
              qword_6FC988 = v17;
              v16 += v23;
              v24 = *(v20 + 8);
              v25 = *v15;
              *(v25 + 8) = v24;
              *v24 = v25;
              v26 = v33[0];
              *(v33[0] + 8) = v15;
              *v15 = v26;
              v34 = v16;
              v33[0] = v20;
              *(v20 + 8) = v33;
            }

            if (!v19)
            {
              v18 = v18[1];
            }
          }

          v15 = v18;
        }

        while (v18 != &qword_6FC978);
      }

      sub_87980(v33);
      v13 = 0;
      v12 = 0;
    }

    sub_47C90(&unk_6FC990);
    if (v29)
    {
      sub_1A8C0(v29);
    }

    v14 = 0x100000000;
  }

  else
  {
    if (v29)
    {
      sub_1A8C0(v29);
    }

    v13 = 0;
    v14 = 0;
    v12 = 0;
  }

  sub_3174(&unk_6FC990);
  sub_1DB63C(&v32);
  return v14 | v12 | v13;
}

void sub_164DD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, char a11, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a10)
  {
    sub_1A8C0(a10);
  }

  sub_2185D4(&a11);
  sub_1DB63C(&a16);
  _Unwind_Resume(a1);
}

BOOL sub_164E18(uint64_t a1, AudioObjectPropertyAddress *a2, OSStatus (__cdecl *a3)(AudioObjectID, UInt32, const AudioObjectPropertyAddress *, void *), unint64_t a4)
{
  sub_4E890();
  v8 = *(a1 + 80);
  v10 = *a2;
  return sub_74D2C(v8, &v10, a3, a4) == 0;
}

void sub_164E84(uint64_t a1, int a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *a1;
  if (*a1 != v5)
  {
    v6 = *a1;
    while (*v6 != a2)
    {
      v6 += 4;
      if (v6 == v5)
      {
        goto LABEL_7;
      }
    }
  }

  if (v6 == v5)
  {
LABEL_7:
    v7 = *(a1 + 16);
    if (v5 >= v7)
    {
      v9 = v5 - v4;
      v10 = (v5 - v4) >> 2;
      v11 = v10 + 1;
      if ((v10 + 1) >> 62)
      {
        sub_189A00();
      }

      v12 = v7 - v4;
      if (v12 >> 1 > v11)
      {
        v11 = v12 >> 1;
      }

      if (v12 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v13 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v13 = v11;
      }

      if (v13)
      {
        sub_1D7C28(v13);
      }

      v14 = (v5 - v4) >> 2;
      v15 = (4 * v10);
      v16 = (4 * v10 - 4 * v14);
      *v15 = a2;
      v8 = v15 + 1;
      memcpy(v16, v4, v9);
      v17 = *a1;
      *a1 = v16;
      *(a1 + 8) = v8;
      *(a1 + 16) = 0;
      if (v17)
      {
        operator delete(v17);
      }
    }

    else
    {
      *v5 = a2;
      v8 = v5 + 4;
    }

    *(a1 + 8) = v8;
  }
}

void sub_164F90(void *a1, int a2, int a3)
{
  v6 = sub_5544(2);
  if (*(v6 + 8))
  {
    v7 = *v6;
    if (*v6)
    {
      if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEBUG))
      {
        v9 = 136315906;
        v10 = "VirtualAudio_Utilities.cpp";
        v11 = 1024;
        v12 = 323;
        v13 = 1024;
        v14 = a3;
        v15 = 1024;
        v16 = a2;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d Device ID: %u (owner : %u)", &v9, 0x1Eu);
      }
    }
  }

  v8 = sub_165090(a1, a2);
  sub_164E84(v8 + 24, a3);
}

uint64_t sub_165090(void *a1, int a2)
{
  v3 = a1[2];
  v4 = a1 + 1;
  while (v3 != a1[1])
  {
    v5 = *(v3 - 56);
    v3 -= 56;
    if (v5 == a2)
    {
      v6 = v3 + 56;
      return v6 - 48;
    }
  }

  *v24 = 0u;
  v25 = 0u;
  *v23 = 0u;
  v26 = a2;
  sub_178C6C(v27, v23);
  v8 = a1[2];
  v7 = a1[3];
  if (v8 >= v7)
  {
    v10 = 0x6DB6DB6DB6DB6DB7 * ((v8 - *v4) >> 3);
    if ((v10 + 1) > 0x492492492492492)
    {
      sub_189A00();
    }

    v11 = 0x6DB6DB6DB6DB6DB7 * ((v7 - *v4) >> 3);
    v12 = 2 * v11;
    if (2 * v11 <= v10 + 1)
    {
      v12 = v10 + 1;
    }

    if (v11 >= 0x249249249249249)
    {
      v13 = 0x492492492492492;
    }

    else
    {
      v13 = v12;
    }

    v33 = v4;
    if (v13)
    {
      if (v13 <= 0x492492492492492)
      {
        operator new();
      }

      sub_6ACD8();
    }

    v30 = 0;
    v31 = 56 * v10;
    v32 = (56 * v10);
    *v31 = v26;
    sub_178C6C((56 * v10 + 8), v27);
    *&v32 = v32 + 56;
    v14 = a1[1];
    v15 = a1[2];
    v16 = (v31 + v14 - v15);
    if (v14 != v15)
    {
      v17 = a1[1];
      v18 = (v31 + v14 - v15);
      do
      {
        *v18 = *v17;
        *(v18 + 1) = 0;
        *(v18 + 2) = 0;
        *(v18 + 3) = 0;
        sub_46980((v18 + 8), *(v17 + 1), *(v17 + 2), (*(v17 + 2) - *(v17 + 1)) >> 2);
        *(v18 + 4) = 0;
        *(v18 + 5) = 0;
        *(v18 + 6) = 0;
        sub_46980((v18 + 32), *(v17 + 4), *(v17 + 5), (*(v17 + 5) - *(v17 + 4)) >> 2);
        v17 += 56;
        v18 += 56;
      }

      while (v17 != v15);
      do
      {
        sub_188544(v14);
        v14 += 56;
      }

      while (v14 != v15);
    }

    v19 = a1[1];
    a1[1] = v16;
    v20 = a1[3];
    v22 = v32;
    *(a1 + 1) = v32;
    *&v32 = v19;
    *(&v32 + 1) = v20;
    v30 = v19;
    v31 = v19;
    sub_178CE8(&v30);
    v9 = v22;
  }

  else
  {
    *v8 = v26;
    sub_178C6C((v8 + 8), v27);
    v9 = v8 + 56;
    a1[2] = v8 + 56;
  }

  a1[2] = v9;
  if (__p)
  {
    v29 = __p;
    operator delete(__p);
  }

  if (v27[0])
  {
    v27[1] = v27[0];
    operator delete(v27[0]);
  }

  if (v24[1])
  {
    operator delete(v24[1]);
  }

  if (v23[0])
  {
    operator delete(v23[0]);
  }

  v6 = a1[2];
  return v6 - 48;
}

void sub_165318(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  sub_178CE8(v3 - 104);
  sub_23CB80(va1);
  sub_23CBC4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_165390(uint64_t a1, AudioObjectPropertyAddress *a2)
{
  sub_10BB88(a1);
  if (a2->mSelector == 1936482681)
  {
    return 0;
  }

  return sub_6AEF4(a1, a2);
}

void sub_1653F4(CFComparisonResult a1, AudioObjectPropertyAddress *a2, uint64_t a3, int *a4, uint64_t a5, double *a6)
{
  sub_10BB88(a1);
  if (((*(*a1 + 16))(a1, a2) & 1) == 0)
  {
    v12 = sub_5544(14);
    if (*v12 && os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
    {
      v18 = *&a2->mSelector;
      mElement = a2->mElement;
      sub_22CE0(__p);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    v14 = 2003332927;
LABEL_23:
    exception[2] = v14;
  }

  if ((a3 == 0) == (a4 != 0))
  {
    v15 = sub_5544(14);
    if (*v15 && os_log_type_enabled(*v15, OS_LOG_TYPE_ERROR))
    {
      v19 = *&a2->mSelector;
      v23 = a2->mElement;
      sub_22CE0(__p);
    }

    goto LABEL_18;
  }

  if (!a6)
  {
    v16 = sub_5544(14);
    if (*v16 && os_log_type_enabled(*v16, OS_LOG_TYPE_ERROR))
    {
      v20 = *&a2->mSelector;
      v24 = a2->mElement;
      sub_22CE0(__p);
    }

LABEL_18:
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    v14 = 561211770;
    goto LABEL_23;
  }

  if (((*(*a1 + 24))(a1, a2) & 1) == 0)
  {
    v17 = sub_5544(14);
    if (*v17 && os_log_type_enabled(*v17, OS_LOG_TYPE_ERROR))
    {
      v21 = *&a2->mSelector;
      v25 = a2->mElement;
      sub_22CE0(__p);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    v14 = 1852797029;
    goto LABEL_23;
  }

  sub_6C22C(a1, a2, a3, a4, a5, a6);
}

void *sub_1658B4(uint64_t a1)
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

uint64_t sub_165908(uint64_t a1)
{
  sub_477A0(*(a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = v2[2];
    if (v3)
    {
      do
      {
        v2 = v3;
        v3 = v3[2];
      }

      while (v3);
      *(a1 + 8) = v2;
    }

    sub_477A0(v2);
  }

  return a1;
}

void sub_165958(uint64_t a1)
{
  sub_2C1CA4((a1 + 1184), 0);
  v2 = *(a1 + 1224);
  *(a1 + 1216) = 0u;
  if (v2)
  {

    sub_1A8C0(v2);
  }
}

void sub_1659B0(caulk::build::detail *a1)
{
  if (caulk::build::detail::get_kind(a1))
  {
    v5 = +[RPBServer sharedInstance];
    if (v5)
    {
      v2 = *(a1 + 72);
      v3 = *(a1 + 73);
      if (v2 != v3)
      {
        do
        {
          [v5 removeHost:*v2++];
        }

        while (v2 != v3);
        v3 = *(a1 + 73);
        v2 = *(a1 + 72);
      }

      while (v3 != v2)
      {
        v4 = *--v3;
        sub_1873C8(v4);
      }

      *(a1 + 73) = v2;
    }
  }
}

std::__shared_weak_count *sub_165A98(uint64_t *a1, uint64_t *a2, char *a3, int a4)
{
  *a1 = 0;
  a1[1] = 0;
  v7 = a2[1];
  if (!v7 || (result = std::__shared_weak_count::lock(v7), (a1[1] = result) == 0) || (v10 = *a2, *a1 = *a2, !v10))
  {
    v11 = sub_5544(14);
    v12 = *v11;
    if (*v11 && os_log_type_enabled(*v11, OS_LOG_TYPE_ERROR))
    {
      if (a3)
      {
        v14 = strrchr(a3, 47);
        if (v14)
        {
          v13 = v14 + 1;
        }

        else
        {
          v13 = a3;
        }
      }

      else
      {
        v13 = 0;
      }

      *buf = 136315906;
      v17 = "StandardUtilities.h";
      v18 = 1024;
      v19 = 284;
      v20 = 2080;
      v21 = v13;
      v22 = 1024;
      v23 = a4;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): Could not lock weak ptr (%s:%d).", buf, 0x22u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not lock weak ptr (%s:%d).");
  }

  return result;
}

void sub_165C0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_1A8C0(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_165C3C(uint64_t result, unint64_t a2)
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
      v4 = v2[4];
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

uint64_t sub_165D0C(uint64_t a1)
{
  v2 = sub_49BE8(a1);
  sub_70934((v2 + 288));
  return a1;
}

uint64_t sub_165D84(int a1, uint64_t a2)
{
  v3 = &unk_6E9000;
  if ((atomic_load_explicit(&qword_6E9848, memory_order_acquire) & 1) == 0)
  {
    v8 = a1;
    v6 = __cxa_guard_acquire(&qword_6E9848);
    v3 = &unk_6E9000;
    v7 = v6;
    a1 = v8;
    if (v7)
    {
      v23 = 20;
      v24 = 19;
      v21 = 41;
      v22 = 40;
      v19 = 43;
      v20 = 42;
      v17 = 30;
      v18 = 29;
      v15 = 8022;
      v16 = 8021;
      v13 = 8010;
      v14 = 8023;
      v11 = 8024;
      v12 = 45;
      v10 = 2025;
      v9 = 2026;
      byte_6E9844 = sub_304A78(&v24, &v23, &v22, &v21, &v20, &v19, &v18, &v17, &v16, &v15, &v14, &v13, &v12, &v11, &v10, &v9);
      __cxa_guard_release(&qword_6E9848);
      v3 = &unk_6E9000;
      a1 = v8;
    }
  }

  v4 = 0;
  if (a1 == 1886613611 && (v3[2116] & 1) != 0)
  {
    if (sub_CE3DC(a2))
    {
      v4 = *(a2 + 72) ^ 1;
    }

    else
    {
      v4 = 0;
    }
  }

  return v4 & 1;
}

void sub_165F10(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = (v7 >> 3) + 1;
    if (v8 >> 61)
    {
      sub_189A00();
    }

    v9 = v3 - v6;
    if (v9 >> 2 > v8)
    {
      v8 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      if (!(v10 >> 61))
      {
        operator new();
      }

      sub_6ACD8();
    }

    v11 = (8 * (v7 >> 3));
    *v11 = *a2;
    v5 = v11 + 1;
    memcpy(0, v6, v7);
    *a1 = 0;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = v4 + 1;
  }

  *(a1 + 8) = v5;
}

uint64_t sub_166010(uint64_t a1, unsigned int a2)
{
  if (a2 != 1886613618 && a2 != 1886613611)
  {
    v4 = sub_5544(18);
    v5 = *v4;
    if (*v4 && os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
    {
      sub_22170(__p, a2);
      v6 = v12 >= 0 ? __p : __p[0];
      *buf = 136315650;
      v14 = "Device_Speaker_Aspen.cpp";
      v15 = 1024;
      v16 = 555;
      v17 = 2080;
      v18 = v6;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d Cannot locate AudioObjectPropertyElement for the given VirtualAudioPortType (%s).", buf, 0x1Cu);
      if (v12 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v7 = sub_5544(14);
    v8 = *v7;
    if (*v7)
    {
      if (os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v14 = "Device_Speaker_Aspen.cpp";
        v15 = 1024;
        v16 = 556;
        _os_log_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Unsupported VirtualAudioPortType.", buf, 0x12u);
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Unsupported VirtualAudioPortType.");
  }

  return 0;
}

BOOL sub_1661F0(uint64_t *a1)
{
  sub_5659C(&v3, a1, "", 298);
  v1 = sub_166260(v3);
  if (v4)
  {
    sub_1A8C0(v4);
  }

  return v1;
}

void sub_166248(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_1A8C0(a10);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_166260(uint64_t a1)
{
  (*(*a1 + 128))(v5);
  if (v6 < 0)
  {
    v2 = v5[1] == &dword_4 + 3 && *v5[0] == 1634037843 && *(v5[0] + 3) == 1919249249;
    operator delete(v5[0]);
  }

  else
  {
    return v6 == 7 && LODWORD(v5[0]) == 1634037843 && *(v5 + 3) == 1919249249;
  }

  return v2;
}

void sub_16632C(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if ((*(a3 + 184) & 1) == 0)
  {
    sub_5659C(v14, a2, "", 61);
    v6 = (*(**v14 + 88))(*v14, 1);
    if (*&v14[8])
    {
      sub_1A8C0(*&v14[8]);
    }

    if (v6 == 1)
    {
      v7 = sub_102FB0(a1, a2);
      sub_103218(v7, a3, 0);
    }

    v11 = sub_5544(14);
    v12 = *v11;
    if (*v11)
    {
      if (os_log_type_enabled(*v11, OS_LOG_TYPE_ERROR))
      {
        *v14 = 136315394;
        *&v14[4] = "PhysicalDevice.cpp";
        *&v14[12] = 1024;
        *&v14[14] = 61;
        _os_log_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", v14, 0x12u);
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  v8 = sub_5544(14);
  v9 = *v8;
  if (*v8 && os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
  {
    *v14 = 136315394;
    *&v14[4] = "PhysicalDevice.cpp";
    *&v14[12] = 1024;
    *&v14[14] = 60;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", v14, 0x12u);
  }

  v10 = __cxa_allocate_exception(0x10uLL);
  std::logic_error::logic_error(v10, "Precondition failure.");
}

void sub_16659C(uint64_t a1@<X1>, void *a2@<X8>)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = a2 + 1;
  v3 = *a1 + 16;
  v4 = *(*a1 + 24);
  if (v4 != v3)
  {
    while (1)
    {
      sub_25704(&v10, v4 + 2, "", 189);
      sub_25704(&v8, v4 + 4, "", 190);
      v5 = *(v10 + 144);
      if (v5 == 1885433443)
      {
        break;
      }

      if (v5 == 1885433888)
      {
        v6 = *(v8 + 144);
        if (v6 == 1885888867)
        {
          v7 = 3;
        }

        else
        {
          if (v6 == 1886613611)
          {
            sub_14BB28(a2, 8, (v4 + 2));
          }

          v7 = 1;
        }

        goto LABEL_10;
      }

LABEL_11:
      if (v9)
      {
        sub_1A8C0(v9);
      }

      if (v11)
      {
        sub_1A8C0(v11);
      }

      v4 = v4[1];
      if (v4 == v3)
      {
        return;
      }
    }

    v7 = 2;
LABEL_10:
    sub_14BB28(a2, v7, (v4 + 2));
    goto LABEL_11;
  }
}

void sub_1666DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    sub_1A8C0(a10);
  }

  if (a12)
  {
    sub_1A8C0(a12);
  }

  sub_7624C(*v12);
  _Unwind_Resume(a1);
}

void sub_166718(uint64_t a1)
{
  v27 = &v27;
  v28 = &v27;
  v29 = 0;
  v1 = *(*a1 + 24);
  if (v1 == (*a1 + 16))
  {
    goto LABEL_34;
  }

  v3 = 0;
  v4 = 0;
  do
  {
    sub_25704(&v25, v1 + 4, "", 1558);
    v5 = v25;
    v6 = *(v25 + 200);
    if (v6)
    {
      v7 = *(v25 + 192);
      atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v8 = std::__shared_weak_count::lock(v6);
      if (!v8)
      {
        v7 = 0;
      }

      std::__shared_weak_count::__release_weak(v6);
      if (v5[36] != 1885433888 && v7 == 0)
      {
LABEL_35:
        v13 = sub_5544(14);
        v14 = *v13;
        if (*v13 && os_log_type_enabled(*v13, OS_LOG_TYPE_ERROR))
        {
          (*(*v5 + 144))(&v22, v5);
          v15 = v24;
          v16 = v22;
          sub_22170(__p, v5[36]);
          v17 = &v22;
          if (v15 < 0)
          {
            v17 = v16;
          }

          if (v21 >= 0)
          {
            v18 = __p;
          }

          else
          {
            v18 = __p[0];
          }

          *buf = 136315906;
          *&buf[4] = "RoutingHandlerUtilities_Aspen.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 1563;
          v31 = 2080;
          v32 = v17;
          v33 = 2080;
          v34 = v18;
          _os_log_impl(&dword_0, v14, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareUnspecifiedError): could not get device for port \\%s\\ (type: '%s').", buf, 0x26u);
          if (v21 < 0)
          {
            operator delete(__p[0]);
          }

          if (v24 < 0)
          {
            operator delete(v22);
          }
        }

        exception = __cxa_allocate_exception(0x10uLL);
        *exception = &off_6DDDD0;
        exception[2] = 2003329396;
      }
    }

    else
    {
      v8 = 0;
      v7 = 0;
      if (*(v25 + 144) != 1885433888)
      {
        goto LABEL_35;
      }
    }

    sub_25704(buf, v1 + 2, "", 1565);
    v10 = *(*buf + 144);
    if (*&buf[8])
    {
      sub_1A8C0(*&buf[8]);
    }

    if (v5[36] != 1885892674)
    {
      v4 = 1;
      if (!v8)
      {
        goto LABEL_24;
      }

LABEL_23:
      sub_1A8C0(v8);
      goto LABEL_24;
    }

    v4 |= v10 != 1885433888;
    if (v7)
    {
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      operator new();
    }

    v3 = 1;
    if (v8)
    {
      goto LABEL_23;
    }

LABEL_24:
    if (v26)
    {
      sub_1A8C0(v26);
    }

    v1 = v1[1];
  }

  while (v1 != (*a1 + 16));
  if (v4 & v3)
  {
    for (i = v28; i != &v27; i = i[1])
    {
      v12 = i[3];
      *buf = i[2];
      *&buf[8] = v12;
      if (v12)
      {
        atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v22 = 0x676C6F6261646F61;
      v23 = 0;
      sub_3024F0(buf, &v22);
      if (v12)
      {
        std::__shared_weak_count::__release_weak(v12);
      }
    }
  }

LABEL_34:
  sub_65310(&v27);
}

void sub_166ADC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, std::__shared_weak_count *a20, uint64_t a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (v21)
  {
    sub_1A8C0(v21);
  }

  if (a20)
  {
    sub_1A8C0(a20);
  }

  sub_65310(&a21);
  _Unwind_Resume(a1);
}

void sub_166B5C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_165A98(&v4, (a1 + 80), "", 71);
  sub_23148(a2, v4 + 2);
  v3 = v5;
  if (v5)
  {

    sub_1A8C0(v3);
  }
}

void sub_166BD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_1A8C0(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_166CD8(_Unwind_Exception *a1)
{
  shared_weak_owners = v1[4].__shared_weak_owners_;
  if (shared_weak_owners)
  {
    std::__shared_weak_count::__release_weak(shared_weak_owners);
  }

  sub_13BFA8(v2);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v6);
  _Unwind_Resume(a1);
}

void sub_166DD4(_Unwind_Exception *a1)
{
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v4);
  _Unwind_Resume(a1);
}

void sub_166F70(_Unwind_Exception *a1)
{
  v3 = v1[64];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  sub_1405C0(v1);
  _Unwind_Resume(a1);
}

void sub_166FA4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v13 = sub_5544(19);
  v14 = *v13;
  if (*v13 && os_log_type_enabled(*v13, OS_LOG_TYPE_DEFAULT))
  {
    sub_879F8(&__p, a2 + 8);
    v15 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
    *buf = 136315650;
    *&buf[4] = "RoutingHandlerUtilities_Aspen.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 722;
    v33 = 2080;
    v34 = v15;
    _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Creating Global Volume Control for %s", buf, 0x1Cu);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  v16 = *(a4 + 200);
  if (!v16 || (v17 = *(a4 + 192), atomic_fetch_add_explicit(&v16->__shared_weak_owners_, 1uLL, memory_order_relaxed), v18 = std::__shared_weak_count::lock(v16), std::__shared_weak_count::__release_weak(v16), (v29 = v18) == 0) || !v17)
  {
    v23 = sub_5544(14);
    v24 = *v23;
    if (*v23 && os_log_type_enabled(*v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "RoutingHandlerUtilities_Aspen.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 725;
      _os_log_impl(&dword_0, v24, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  (*(*v17 + 256))(buf, v17, 1, *(a4 + 144));
  if (!*&buf[8])
  {
    goto LABEL_30;
  }

  v19 = a7;
  v20 = std::__shared_weak_count::lock(*&buf[8]);
  if (v20)
  {
    v21 = *buf;
  }

  else
  {
    v21 = 0;
  }

  if (*&buf[8])
  {
    std::__shared_weak_count::__release_weak(*&buf[8]);
  }

  if (!v21)
  {
LABEL_30:
    v26 = sub_5544(14);
    v27 = *v26;
    if (*v26 && os_log_type_enabled(*v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "RoutingHandlerUtilities_Aspen.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 728;
      _os_log_impl(&dword_0, v27, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): Unable to locate output volume control", buf, 0x12u);
    }

    v28 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v28, "Unable to locate output volume control");
  }

  v30[0] = 0;
  v30[24] = 0;
  sub_15BFCC(v21, a3, a4, a5, a2, 0, v30);
  v22 = *(a4 + 304);
  if ((v22 == 1635085420 || v22 == 1633759844) && ((v19 & 1) != 0 || sub_15E7D4(*(a4 + 192), *(a4 + 200))))
  {
    operator new();
  }

  *a1 = v21;
  a1[1] = v20;
  if (v20)
  {
    atomic_fetch_add_explicit(&v20->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_1A8C0(v20);
  }

  sub_1A8C0(v29);
}

void sub_16749C(uint64_t a1@<X0>, unsigned int a2@<W1>, unsigned int a3@<W2>, uint64_t *a4@<X8>)
{
  v8 = a1 + 216;
  v9 = *(a1 + 216);
  v10 = a1 + 216;
  if (!v9)
  {
    goto LABEL_30;
  }

  v11 = a1 + 216;
  do
  {
    v12 = *(v9 + 32);
    v13 = v12 == a2;
    if (v12 >= a2)
    {
      v14 = 1;
    }

    else
    {
      v14 = -1;
    }

    if (v13)
    {
      v15 = *(v9 + 36);
      v16 = v15 == a3;
      v14 = v15 >= a3 ? 1 : -1;
      if (v16)
      {
        v14 = 0;
      }
    }

    v17 = v14 & 0x80;
    v13 = v17 == 0;
    v18 = v17 >> 4;
    if (v13)
    {
      v11 = v9;
    }

    v9 = *(v9 + v18);
  }

  while (v9);
  if (v8 == v11)
  {
    goto LABEL_30;
  }

  v19 = *(v11 + 32);
  v20 = v19 == a2;
  if (v19 <= a2)
  {
    v21 = 1;
  }

  else
  {
    v21 = -1;
  }

  if (v20)
  {
    v22 = *(v11 + 36);
    v23 = v22 == a3;
    v24 = v22 > a3;
    v21 = -1;
    if (!v24)
    {
      v21 = 1;
    }

    if (v23)
    {
      v21 = 0;
    }
  }

  if (v21 < 0)
  {
LABEL_30:
    v25 = 0;
    v26 = 0;
    v59 = 0;
    v60 = 0;
  }

  else
  {
    v26 = *(v11 + 40);
    v25 = *(v11 + 48);
    v59 = v26;
    v60 = v25;
    if (v25)
    {
      atomic_fetch_add_explicit(&v25->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v10 = v11;
  }

  if (v8 != v10 || (a2 & 1) != 0)
  {
    if (!v25 || v25->__shared_owners_ == -1)
    {
      v48 = sub_5544(14);
      v49 = *v48;
      if (*v48 && os_log_type_enabled(*v48, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "PhysicalDevice.cpp";
        v62 = 1024;
        v63 = 355;
        _os_log_impl(&dword_0, v49, OS_LOG_TYPE_ERROR, "%25s:%-5d INVARIANT FAILURE (std::logic_error).", buf, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(exception, "Invariant failure.");
    }

    v35 = sub_5544(18);
    v36 = sub_5544(39);
    v37 = 0;
    *buf = 0x100000002;
    v38 = *(v35 + 8);
    while (1)
    {
      v39 = *&buf[v37];
      if (((v38 & v39) != 0) != ((*(v36 + 8) & v39) != 0))
      {
        break;
      }

      v37 += 4;
      if (v37 == 8)
      {
        if ((v38 & 1) == 0)
        {
          goto LABEL_76;
        }

        goto LABEL_57;
      }
    }

    if ((v38 & v39) == 0)
    {
      v35 = v36;
    }

    if (*(v35 + 8))
    {
LABEL_57:
      v40 = *v35;
      if (v40 && os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
      {
        sub_248A0(&v53, &v59, "", 359);
        v41 = v53;
        if (a2)
        {
          v42 = "output";
        }

        else
        {
          v42 = "input";
        }

        v43 = v57;
        sub_53E8(v57, v42);
        if (v58 < 0)
        {
          v43 = v57[0];
        }

        sub_22170(__p, a3);
        v44 = v56;
        v45 = __p[0];
        sub_23148(v51, (a1 + 8));
        v46 = __p;
        if (v44 < 0)
        {
          v46 = v45;
        }

        v47 = v51;
        if (v52 < 0)
        {
          v47 = v51[0];
        }

        *buf = 136316418;
        *&buf[4] = "PhysicalDevice.cpp";
        v62 = 1024;
        v63 = 359;
        v64 = 2048;
        v65 = v41;
        v66 = 2080;
        v67 = v43;
        v68 = 2080;
        v69 = v46;
        v70 = 2080;
        v71 = v47;
        _os_log_impl(&dword_0, v40, OS_LOG_TYPE_DEBUG, "%25s:%-5d Returning control %p for %s VirtualAudioPortType '%s' on VAD: '%s'.", buf, 0x3Au);
        if (v52 < 0)
        {
          operator delete(v51[0]);
        }

        if (v56 < 0)
        {
          operator delete(__p[0]);
        }

        if (v58 < 0)
        {
          operator delete(v57[0]);
        }

        if (v54)
        {
          sub_1A8C0(v54);
        }
      }
    }

LABEL_76:
    *a4 = v26;
    a4[1] = v25;
    v59 = 0;
    v60 = 0;
  }

  else
  {
    v27 = sub_5544(18);
    v28 = *v27;
    if (*v27 && os_log_type_enabled(*v27, OS_LOG_TYPE_DEFAULT))
    {
      (*(*a1 + 128))(v57, a1);
      v29 = v58;
      v30 = v57[0];
      sub_22170(__p, a3);
      v31 = v57;
      if (v29 < 0)
      {
        v31 = v30;
      }

      if (v56 >= 0)
      {
        v32 = __p;
      }

      else
      {
        v32 = __p[0];
      }

      *buf = 136315906;
      *&buf[4] = "PhysicalDevice.cpp";
      v62 = 1024;
      v63 = 351;
      v64 = 2080;
      v65 = v31;
      v66 = 2080;
      v67 = v32;
      _os_log_impl(&dword_0, v28, OS_LOG_TYPE_DEFAULT, "%25s:%-5d No control present for (%s %s). returning null volumecontrol", buf, 0x26u);
      if (v56 < 0)
      {
        operator delete(__p[0]);
      }

      if (v58 < 0)
      {
        operator delete(v57[0]);
      }
    }

    if ((atomic_load_explicit(&qword_6EA7D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6EA7D0))
    {
      sub_15DD68();
    }

    v34 = qword_6EA7C0;
    v33 = *algn_6EA7C8;
    if (*algn_6EA7C8)
    {
      atomic_fetch_add_explicit((*algn_6EA7C8 + 8), 1uLL, memory_order_relaxed);
      *a4 = v34;
      a4[1] = v33;
      atomic_fetch_add_explicit(&v33->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      sub_1A8C0(v33);
    }

    else
    {
      *a4 = qword_6EA7C0;
      a4[1] = 0;
    }
  }

  if (v60)
  {
    std::__shared_weak_count::__release_weak(v60);
  }
}

void sub_1679E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, std::__shared_weak_count *a25)
{
  __cxa_guard_abort(&qword_6EA7D0);
  if (a25)
  {
    std::__shared_weak_count::__release_weak(a25);
  }

  _Unwind_Resume(a1);
}

void sub_167A90(uint64_t a1@<X0>, unsigned int a2@<W1>, unsigned int a3@<W2>, uint64_t *a4@<X8>)
{
  v8 = *(a1 + 192);
  if (!v8)
  {
    goto LABEL_29;
  }

  v9 = a1 + 192;
  do
  {
    v10 = *(v8 + 32);
    v11 = v10 == a2;
    if (v10 >= a2)
    {
      v12 = 1;
    }

    else
    {
      v12 = -1;
    }

    if (v11)
    {
      v13 = *(v8 + 36);
      v14 = v13 == a3;
      v12 = v13 >= a3 ? 1 : -1;
      if (v14)
      {
        v12 = 0;
      }
    }

    v15 = v12 & 0x80;
    v11 = v15 == 0;
    v16 = v15 >> 4;
    if (v11)
    {
      v9 = v8;
    }

    v8 = *(v8 + v16);
  }

  while (v8);
  if (a1 + 192 == v9)
  {
    goto LABEL_29;
  }

  v17 = *(v9 + 32);
  v18 = v17 == a2;
  if (v17 <= a2)
  {
    v19 = 1;
  }

  else
  {
    v19 = -1;
  }

  if (v18)
  {
    v20 = *(v9 + 36);
    v21 = v20 == a3;
    v22 = v20 > a3;
    v19 = -1;
    if (!v22)
    {
      v19 = 1;
    }

    if (v21)
    {
      v19 = 0;
    }
  }

  if (v19 < 0)
  {
LABEL_29:
    *a4 = 0;
    a4[1] = 0;
  }

  else
  {
    v23 = *(v9 + 48);
    *a4 = *(v9 + 40);
    a4[1] = v23;
    if (v23)
    {
      atomic_fetch_add_explicit((v23 + 16), 1uLL, memory_order_relaxed);
    }
  }

  v24 = sub_5544(18);
  v25 = sub_5544(39);
  v26 = 0;
  *buf = 0x100000002;
  v27 = *(v24 + 8);
  while (1)
  {
    v28 = *&buf[v26];
    if (((v27 & v28) != 0) != ((*(v25 + 8) & v28) != 0))
    {
      break;
    }

    v26 += 4;
    if (v26 == 8)
    {
      if ((v27 & 1) == 0)
      {
        return;
      }

      goto LABEL_38;
    }
  }

  if ((v27 & v28) == 0)
  {
    v24 = v25;
  }

  if (*(v24 + 8))
  {
LABEL_38:
    v29 = *v24;
    if (v29 && os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      sub_165A98(&v43, a4, "", 339);
      v30 = v43;
      if (a2)
      {
        v31 = "output";
      }

      else
      {
        v31 = "input";
      }

      v32 = v41;
      sub_53E8(v41, v31);
      if (v42 < 0)
      {
        v32 = v41[0];
      }

      sub_22170(v39, a3);
      v33 = v40;
      v34 = v39[0];
      sub_23148(__p, (a1 + 8));
      v35 = v39;
      if (v33 < 0)
      {
        v35 = v34;
      }

      if (v38 >= 0)
      {
        v36 = __p;
      }

      else
      {
        v36 = __p[0];
      }

      *buf = 136316418;
      *&buf[4] = "PhysicalDevice.cpp";
      v46 = 1024;
      v47 = 339;
      v48 = 2048;
      v49 = v30;
      v50 = 2080;
      v51 = v32;
      v52 = 2080;
      v53 = v35;
      v54 = 2080;
      v55 = v36;
      _os_log_impl(&dword_0, v29, OS_LOG_TYPE_DEBUG, "%25s:%-5d Returning control %p for %s VirtualAudioPortType '%s' on VAD: '%s'.", buf, 0x3Au);
      if (v38 < 0)
      {
        operator delete(__p[0]);
      }

      if (v40 < 0)
      {
        operator delete(v39[0]);
      }

      if (v42 < 0)
      {
        operator delete(v41[0]);
      }

      if (v44)
      {
        sub_1A8C0(v44);
      }
    }
  }
}

void sub_167D78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, std::__shared_weak_count *a23)
{
  if (v25 < 0)
  {
    operator delete(v24);
  }

  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a23)
  {
    sub_1A8C0(a23);
  }

  if (v23)
  {
    std::__shared_weak_count::__release_weak(v23);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_167DD4(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v4 = v2[4];
      if (v4)
      {
        std::__shared_weak_count::__release_weak(v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v5 = *a1;
  *a1 = 0;
  if (v5)
  {
    operator delete(v5);
  }

  return a1;
}

uint64_t sub_167E38(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      sub_167E98(v2 + 2);
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

void sub_167E98(void *a1)
{
  v2 = a1[3];
  if (v2)
  {
    a1[4] = v2;
    operator delete(v2);
  }

  v3 = a1[2];
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

void sub_167EEC(void ***a1)
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
        sub_C31F4(*(v4 - 2));
        sub_C31F4(*(v4 - 5));
        v7 = (v4 - 72);
        sub_1084A8(&v7);
        v7 = (v4 - 96);
        sub_1084A8(&v7);
        v6 = *(v4 - 13);
        if (v6)
        {
          std::__shared_weak_count::__release_weak(v6);
        }

        v4 -= 112;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_167FB0(void ***a1)
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
        v4 -= 40;
        sub_15B9A8(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_168034(uint64_t a1, UInt32 *a2, float *a3)
{
  if ((atomic_load_explicit(&qword_6E9BB8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6E9BB8))
  {
    byte_6E9BB0 = sub_310BF8();
    __cxa_guard_release(&qword_6E9BB8);
  }

  if (byte_6E9BB0 == 1)
  {
    *&v10.mSelector = 0x676C6F62636C6B64;
    v10.mElement = 0;
    sub_5C0D8(a1, &v10, 0, 0, a2, a3);
    if (!*a3)
    {
      v6 = *sub_5544(18);
      v7 = v6;
      if (v6)
      {
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v12 = "Device_HAL_Common.mm";
          v13 = 1024;
          v14 = 929;
          _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d We expect this device to report a correct clock domain, but it is coming back as NULL/zero?!?!", buf, 0x12u);
        }
      }
    }
  }

  else
  {
    v8 = *sub_5544(18);
    v9 = v8;
    if (v8 && os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v12 = "Device_HAL_Common.mm";
      v13 = 1024;
      v14 = 935;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Driver does not report correct clock domain for the product, setting clock domain to 0", buf, 0x12u);
    }

    sub_5440C(0, a2, a3);
  }
}

void sub_168238(uint64_t *a1, uint64_t *a2, uint64_t *a3, int a4)
{
  if (!a4)
  {
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
    return;
  }

  if (a2 && (v8 = a2[1]) != 0)
  {
    v9 = std::__shared_weak_count::lock(v8);
    if (v9)
    {
      v10 = *a2;
      if (!a3)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v10 = 0;
      if (!a3)
      {
        goto LABEL_14;
      }
    }
  }

  else
  {
    v10 = 0;
    v9 = 0;
    if (!a3)
    {
      goto LABEL_14;
    }
  }

  v11 = a3[1];
  if (v11)
  {
    v12 = std::__shared_weak_count::lock(v11);
    if (v12)
    {
      v13 = *a3;
      sub_1A8C0(v12);
      if (!v9)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }
  }

LABEL_14:
  v13 = 0;
  if (v9)
  {
LABEL_15:
    sub_1A8C0(v9);
  }

LABEL_16:
  if (!v10 || !v13 || v10 != v13)
  {
    if (!a3)
    {
      v44 = sub_5544(14);
      v45 = *v44;
      if (*v44 && os_log_type_enabled(*v44, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "AggregateDevice_Simple.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 92;
        _os_log_impl(&dword_0, v45, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(exception, "Precondition failure.");
    }

    sub_5659C(&v68, a3, "", 95);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
    v20 = v68;
    v21 = (*(*v68 + 88))(v68, 0);
    v22 = (*(*v20 + 312))(v20);
    if (a2)
    {
      sub_5659C(buf, a2, "", 104);
      v23 = (*(**buf + 88))(*buf, 0);
      if (*&buf[8])
      {
        sub_1A8C0(*&buf[8]);
      }

      if (v23)
      {
        buf[0] = 1;
        sub_35AD58(a1, buf);
        if (v23 != 1)
        {
          v24 = a1[1];
          buf[0] = 0;
          sub_118D68(a1, v24, (v23 - 1), buf);
        }
      }
    }

    switch(a4)
    {
      case 3:
        if (!sub_1661F0(a3))
        {
          v57 = sub_5544(14);
          v58 = *v57;
          if (*v57 && os_log_type_enabled(*v57, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "AggregateDevice_Simple.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 141;
            _os_log_impl(&dword_0, v58, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
          }

          goto LABEL_118;
        }

        if (v21 < 2)
        {
          goto LABEL_90;
        }

        if ((v22 & 0x100000000) == 0)
        {
          sub_1EC054();
        }

        if (v22 != 1)
        {
LABEL_90:
          v50 = sub_5544(14);
          v51 = *v50;
          if (*v50 && os_log_type_enabled(*v50, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "AggregateDevice_Simple.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 142;
            _os_log_impl(&dword_0, v51, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
          }

          goto LABEL_118;
        }

        v33 = a1[1];
        buf[0] = 2;
        sub_118D68(a1, v33, 1uLL, buf);
        v34 = a1[1];
        buf[0] = 2;
        sub_118D68(a1, v34, 1uLL, buf);
        break;
      case 2:
        if ((v22 & 0x100000000) == 0)
        {
          v55 = sub_5544(14);
          v56 = *v55;
          if (*v55 && os_log_type_enabled(*v55, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "AggregateDevice_Simple.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 126;
            _os_log_impl(&dword_0, v56, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
          }

          goto LABEL_118;
        }

        if (v22)
        {
          if (v21 < 2 || v22 != 1)
          {
            v63 = sub_5544(14);
            v64 = *v63;
            if (*v63 && os_log_type_enabled(*v63, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "AggregateDevice_Simple.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 134;
              _os_log_impl(&dword_0, v64, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
            }

            goto LABEL_118;
          }

          v31 = a1[1];
          buf[0] = 0;
          sub_118D68(a1, v31, 1uLL, buf);
          v32 = a1[1];
          buf[0] = 2;
          sub_118D68(a1, v32, 1uLL, buf);
        }

        else
        {
          v35 = a1[1];
          buf[0] = 2;
          sub_118D68(a1, v35, 1uLL, buf);
        }

        break;
      case 1:
        if (sub_1661F0(a3))
        {
          if (v21)
          {
            v25 = a1[1];
            buf[0] = 2;
            sub_118D68(a1, v25, 1uLL, buf);
            v26 = a1[1];
            buf[0] = 0;
            sub_118D68(a1, v26, v21 - 1, buf);
            break;
          }

          v61 = sub_5544(14);
          v62 = *v61;
          if (*v61 && os_log_type_enabled(*v61, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "AggregateDevice_Simple.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 120;
            _os_log_impl(&dword_0, v62, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
          }
        }

        else
        {
          v59 = sub_5544(14);
          v60 = *v59;
          if (*v59 && os_log_type_enabled(*v59, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "AggregateDevice_Simple.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 119;
            _os_log_impl(&dword_0, v60, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
          }
        }

LABEL_118:
        v65 = __cxa_allocate_exception(0x10uLL);
        std::logic_error::logic_error(v65, "Precondition failure.");
      default:
        break;
    }

    if (a2)
    {
      sub_5659C(buf, a2, "", 148);
      v36 = (*(**buf + 88))(*buf, 0);
      if (*&buf[8])
      {
        sub_1A8C0(*&buf[8]);
      }
    }

    else
    {
      v36 = 0;
    }

    if (a2 == a3)
    {
      v37 = 0;
    }

    else
    {
      v37 = v21;
    }

    v38 = v36 + v37;
    v39 = a1[1] - *a1;
    if (v39 != v38)
    {
      v40 = sub_5544(17);
      v41 = *v40;
      if (*v40)
      {
        if (os_log_type_enabled(*v40, OS_LOG_TYPE_ERROR))
        {
          if (a2)
          {
            v42 = &v67;
            sub_F89AC(&v67, a2);
            if ((v67.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v42 = v67.__r_.__value_.__r.__words[0];
            }
          }

          else
          {
            v42 = "none";
          }

          sub_F89AC(&__p, a3);
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p.__r_.__value_.__r.__words[0];
          }

          *buf = 136316418;
          *&buf[4] = "AggregateDevice_Simple.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 153;
          v71 = 2048;
          v72 = v39;
          v73 = 1024;
          v74 = v38;
          v75 = 2080;
          v76 = v42;
          v77 = 2080;
          v78 = p_p;
          _os_log_impl(&dword_0, v41, OS_LOG_TYPE_ERROR, "%25s:%-5d InputStreamUsage mask size (%zu) does not match the number of input streams (%u). Device Descriptions {input: %s, output: %s}", buf, 0x36u);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if (a2 && SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v67.__r_.__value_.__l.__data_);
          }
        }
      }
    }

    size = v69;
    if (v69)
    {
      goto LABEL_44;
    }

    return;
  }

  if (!a2)
  {
    v47 = sub_5544(14);
    v48 = *v47;
    if (*v47 && os_log_type_enabled(*v47, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "AggregateDevice_Simple.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 57;
      _os_log_impl(&dword_0, v48, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    v49 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v49, "Precondition failure.");
  }

  sub_5659C(&v67, a2, "", 59);
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v14 = v67.__r_.__value_.__r.__words[0];
  v15 = (*(*v67.__r_.__value_.__l.__data_ + 88))(v67.__r_.__value_.__r.__words[0], 0);
  if (v15)
  {
    buf[0] = 1;
    sub_35AD58(a1, buf);
    v16 = a1[1];
    buf[0] = 0;
    sub_118D68(a1, v16, (v15 - 1), buf);
    v17 = (*(*v14 + 312))(v14);
    v18 = *a1;
    v19 = a1[1];
    if (a4 == 2 && (v17 & 0x100000000) != 0)
    {
      if (v19 - v18 != v17 + 1)
      {
        v52 = sub_5544(14);
        v53 = *v52;
        if (*v52 && os_log_type_enabled(*v52, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "AggregateDevice_Simple.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 76;
          _os_log_impl(&dword_0, v53, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
        }

        v54 = __cxa_allocate_exception(0x10uLL);
        std::logic_error::logic_error(v54, "Precondition failure.");
      }

      *(v18 + v17) = 2;
    }
  }

  else
  {
    v19 = 0;
    v18 = 0;
  }

  v27 = v19 - v18;
  if (v19 - v18 != v15)
  {
    v28 = sub_5544(17);
    v29 = *v28;
    if (*v28)
    {
      if (os_log_type_enabled(*v28, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315906;
        *&buf[4] = "AggregateDevice_Simple.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 83;
        v71 = 2048;
        v72 = v27;
        v73 = 1024;
        v74 = v15;
        _os_log_impl(&dword_0, v29, OS_LOG_TYPE_ERROR, "%25s:%-5d Input stream usage mask size (%lu) doesn't match input stream count (%u)", buf, 0x22u);
      }
    }
  }

  size = v67.__r_.__value_.__l.__size_;
  if (v67.__r_.__value_.__l.__size_)
  {
LABEL_44:
    sub_1A8C0(size);
  }
}

void sub_168DD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, std::__shared_weak_count *a19, uint64_t a20, uint64_t a21)
{
  __cxa_free_exception(v22);
  v24 = *v21;
  if (*v21)
  {
    *(v21 + 8) = v24;
    operator delete(v24);
  }

  if (a19)
  {
    sub_1A8C0(a19);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_168F08(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 == a1)
  {
LABEL_4:
    v3 = 0;
  }

  else
  {
    while (!sub_1661F0((v1 + 16)))
    {
      v1 = *(v1 + 8);
      if (v1 == a1)
      {
        goto LABEL_4;
      }
    }

    sub_ABF48();
    if (DWORD1(xmmword_6FD620) == 2)
    {
      v3 = 1;
    }

    else
    {
      sub_ABF48();
      v3 = DWORD1(xmmword_6FD620) == 3;
    }
  }

  v4 = sub_45168();
  v5 = 0x100000000;
  if (!v4)
  {
    v5 = 0;
  }

  return v5 | v3;
}

void *sub_168FF4(void *result, uint64_t a2, uint64_t a3)
{
  *result = result;
  result[1] = result;
  result[2] = 0;
  if (a3)
  {
    sub_168F94();
  }

  return result;
}

BOOL sub_169084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a3 - a2;
  if (a3 == a2)
  {
    v67 = sub_5544(14);
    v68 = *v67;
    if (*v67 && os_log_type_enabled(*v67, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "StreamUtilities.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 77;
      _os_log_impl(&dword_0, v68, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): inFormatList is empty", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "inFormatList is empty");
  }

  v8 = *(a4 + 8);
  v9 = *(a4 + 12);
  v10 = *(a4 + 28);
  v11 = *(a4 + 32);
  v12 = *(a2 + 16);
  *buf = *a2;
  *&buf[16] = v12;
  *v74 = *(a2 + 32);
  *&v74[8] = *(a2 + 40);
  result = sub_5FB04(buf, a4);
  v70 = a1;
  if (!result)
  {
    v14 = a4;
LABEL_8:
    v16 = 0x6DB6DB6DB6DB6DB7 * (v4 >> 3);
    if (v16 < 2)
    {
      goto LABEL_110;
    }

    v17 = *(v14 + 40);
    v18 = *(v14 + 48);
    v71 = v14;
    v20 = *&buf[8];
    v19 = *&buf[12];
    v22 = *&buf[28];
    v21 = *v74;
    v24 = *&v74[8];
    v23 = *&v74[16];
    v25 = (a2 + 104);
    v26 = 2;
    v27 = vdup_n_s32(v11);
    while (1)
    {
      v28 = *(v25 - 10);
      v29 = *(v25 - 9);
      v30 = v28 == v8;
      v31 = v20 != v8;
      if (v20 == v8)
      {
        v30 = 0;
      }

      v32 = *(v25 - 6);
      v33 = v28 != v8 && v20 == v8;
      if (v28 != v8)
      {
        v31 = v20 == v8;
      }

      v34 = *(v25 - 5);
      v35 = *(v25 - 2);
      v36 = *(v25 - 1);
      v37 = *v25;
      v38 = v17 >= v24;
      if (v18 > v23)
      {
        v38 = 0;
      }

      v39 = v17 >= v36;
      if (v18 > v37)
      {
        v39 = 0;
      }

      v40 = v39 & ~v38;
      v41 = v38 & !v39;
      v42 = !v31;
      if (v31)
      {
        v43 = v33;
      }

      else
      {
        v43 = v41;
      }

      if (v42)
      {
        v44 = v40;
      }

      else
      {
        v44 = v30;
      }

      v45 = v22 == v10;
      v46 = v22 != v10;
      v47 = v34 - v10;
      if (v34 == v10)
      {
        v45 = 0;
      }

      else
      {
        v46 = 0;
      }

      if (v43)
      {
        v45 = v43;
        v46 = v44;
      }

      if ((v44 & 1) == 0)
      {
        v43 = v45;
        v44 = v46;
      }

      v48 = v21 == v11;
      v49 = v21 != v11;
      if (v35 == v11)
      {
        v48 = 0;
      }

      else
      {
        v49 = 0;
      }

      if (v43)
      {
        v48 = v43;
        v49 = v44;
      }

      if (v44)
      {
        v50 = v44;
      }

      else
      {
        v43 = v48;
        v50 = v49;
      }

      v51 = v19 == v9;
      v52 = v19 != v9;
      if (v29 == v9)
      {
        v51 = 0;
      }

      else
      {
        v52 = 0;
      }

      if (v43)
      {
        v51 = v43;
        v52 = v50;
      }

      if (v50)
      {
        v51 = v43;
        v53 = v50;
      }

      else
      {
        v53 = v52;
      }

      if (v53 || v51)
      {
        if (v53)
        {
          goto LABEL_63;
        }
      }

      else
      {
        if (v17 < v24 || v18 > v23)
        {
          v56 = v23 >= v17;
          if (v24 > v18)
          {
            v56 = 0;
          }

          if (v24 >= v17)
          {
            v57 = v24;
          }

          else
          {
            v57 = v17;
          }

          if (v18 >= v23)
          {
            v58 = v23;
          }

          else
          {
            v58 = v18;
          }

          if (v37 < v17 || v36 > v18)
          {
            if (!v56)
            {
              v61 = v23 - v17;
              if (v23 >= v17)
              {
                v61 = v24 - v18;
              }

              v62 = v37 - v17;
              if (v37 >= v17)
              {
                v62 = v36 - v18;
              }

              if (v61 < 0.0 == v62 >= 0.0)
              {
                if (v62 >= 0.0)
                {
                  goto LABEL_63;
                }
              }

              else if (fabs(v62) < fabs(v61))
              {
                goto LABEL_63;
              }
            }
          }

          else
          {
            if (!v56)
            {
              goto LABEL_63;
            }

            v59 = v18 >= v37 ? *v25 : v18;
            v60 = v36 >= v17 ? *(v25 - 1) : v17;
            if (v59 - v60 > v58 - v57)
            {
              goto LABEL_63;
            }
          }
        }

        v54 = v22 - v10;
        if (v22 != v10)
        {
          if ((v47 ^ v54) < 0)
          {
            if ((v47 & 0x80000000) == 0)
            {
              goto LABEL_63;
            }
          }

          else
          {
            if (v47 < 0)
            {
              v47 = v10 - v34;
            }

            if (v54 < 0)
            {
              v54 = v10 - v22;
            }

            if (v47 < v54)
            {
LABEL_63:
              *buf = *(v25 - 6);
              *&buf[8] = v28;
              *&buf[12] = v29;
              *&buf[16] = *(v25 - 4);
              *&buf[24] = *(v25 - 6);
              *&buf[28] = v34;
              *v74 = v35;
              *&v74[8] = v36;
              *&v74[16] = v37;
              v72 = v35;
              result = sub_5FB04(buf, v71);
              v21 = v72;
              v55 = result && v18 <= v37 && v17 >= v36;
              v23 = v37;
              v24 = v36;
              v22 = v34;
              v19 = v29;
              v20 = v28;
              goto LABEL_104;
            }
          }
        }

        if (v21 == v11)
        {
          v55 = 0;
          v21 = v11;
          goto LABEL_104;
        }

        v63 = vsub_s32(__PAIR64__(v21, v35), v27);
        if ((v63.i32[0] ^ v63.i32[1]) < 0)
        {
          if ((v63.i32[0] & 0x80000000) == 0)
          {
            goto LABEL_63;
          }
        }

        else
        {
          v64 = vabs_s32(v63);
          if (vcgt_u32(vdup_lane_s32(v64, 1), v64).u8[0])
          {
            goto LABEL_63;
          }
        }
      }

      v55 = 0;
LABEL_104:
      if (!v55)
      {
        v25 += 7;
        if (v26++ < v16)
        {
          continue;
        }
      }

      goto LABEL_110;
    }
  }

  v14 = a4;
  v15 = *(a4 + 40) >= *&v74[8];
  if (*(a4 + 48) > *&v74[16])
  {
    v15 = 0;
  }

  if (!v15)
  {
    goto LABEL_8;
  }

LABEL_110:
  v66 = *&buf[16];
  *v70 = *buf;
  *(v70 + 16) = v66;
  *(v70 + 32) = *v74;
  *(v70 + 48) = *&v74[16];
  return result;
}

void sub_1696A4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1696DC(void *a1, uint64_t a2, signed int a3, uint64_t a4, int a5)
{
  *a1 = 0;
  a1[1] = 0;
  if (a3 > 1684434035)
  {
    if (a3 == 1936749172)
    {
      v17 = sub_189600();
      v18 = *sub_5544(25);
      v19 = v18;
      if (v18 && os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        v20 = "speaker protection";
        *&buf[4] = "DSPChain.mm";
        *buf = 136315650;
        if (v17)
        {
          v20 = "default";
        }

        *&buf[12] = 1024;
        *&buf[14] = 715;
        v24 = 2080;
        v25 = v20;
        _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEBUG, "%25s:%-5d Creating %s DSP chain.", buf, 0x1Cu);
      }

      if (v17)
      {
        operator new();
      }

      operator new();
    }

    if (a3 == 1684434036)
    {
      v11 = *sub_5544(25);
      v12 = v11;
      if (v11 && os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315394;
        *&buf[4] = "DSPChain.mm";
        *&buf[12] = 1024;
        *&buf[14] = 708;
        _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEBUG, "%25s:%-5d Creating default DSP chain.", buf, 0x12u);
      }

      if (a5)
      {
        operator new();
      }

      operator new();
    }
  }

  else
  {
    if (a3 == 1668049011)
    {
      operator new();
    }

    if (a3 == 1668051824)
    {
      v6 = sub_189600();
      v7 = *sub_5544(25);
      v8 = v7;
      if (v7 && os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        v9 = "closed loop speaker protection";
        *&buf[4] = "DSPChain.mm";
        *buf = 136315650;
        if (v6)
        {
          v9 = "default";
        }

        *&buf[12] = 1024;
        *&buf[14] = 730;
        v24 = 2080;
        v25 = v9;
        _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEBUG, "%25s:%-5d Creating %s DSP chain.", buf, 0x1Cu);
      }

      if (v6)
      {
        operator new();
      }

      operator new();
    }
  }

  v13 = *sub_5544(25);
  v14 = v13;
  if (v13)
  {
    v15 = v13;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      sub_22170(&__p, a3);
      v16 = v22 >= 0 ? &__p : __p;
      *buf = 136315650;
      *&buf[4] = "DSPChain.mm";
      *&buf[12] = 1024;
      *&buf[14] = 753;
      v24 = 2080;
      v25 = v16;
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Unknown DSP chain type '%s'. Creating default chain.", buf, 0x1Cu);
      if (v22 < 0)
      {
        operator delete(__p);
      }
    }
  }

  operator new();
}

void sub_16A158(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  __cxa_free_exception(v23);
  v24 = *(v22 + 1200);
  if (v24)
  {
    sub_1A8C0(v24);
  }

  sub_13ABB0(v22);
  operator delete();
}

void sub_16A370(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_6BFEC0;
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  sub_49BE8((a1 + 6));
  a1[42] = 0;
  a1[43] = 0;
  a1[44] = 0;
  sub_123B00();
}

void sub_16A760(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, void *a12, uint64_t a13)
{
  sub_477A0(*v15);
  sub_914D8((v13 + 74));
  sub_914D8(v14);
  a12 = v13 + 53;
  sub_13BD24(&a12);
  a12 = v13 + 50;
  sub_13BD24(&a12);
  v17 = v13[48];
  if (v17)
  {
    sub_1A8C0(v17);
  }

  v18 = v13[46];
  if (v18)
  {
    sub_1A8C0(v18);
  }

  a12 = v13 + 42;
  sub_F5714(&a12);
  sub_13AB3C((v13 + 6));
  sub_13BD24(&a12);
  v19 = v13[2];
  if (v19)
  {
    std::__shared_weak_count::__release_weak(v19);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_16A9B8(uint64_t a1, const __CFString *a2)
{
  v4 = *(a1 + 8);
  if (v4)
  {
    CFRelease(v4);
  }

  if (a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = &stru_6DFDA0;
  }

  *(a1 + 8) = v5;
  CFRetain(v5);
  v6 = *(a1 + 16);
  return AUPBPropertiesChanged();
}

uint64_t sub_16AA2C(uint64_t a1, const __CFString *a2)
{
  *a1 = off_6C5990;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0;
  sub_16A9B8(a1, a2);
  AUPBRegister();
  return a1;
}

void sub_16AA94(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 24);
  if (v3)
  {
    *(v1 + 32) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_16AAB0(std::string *a1, uint64_t a2)
{
  sub_53E8(a1, "VAD - ");
  v4 = *(a2 + 8);
  if (v4 != a2)
  {
    while (1)
    {
      sub_88A00(&v16, (v4 + 16), "", 736);
      v5 = *(v16 + 144);
      memset(__s, 0, 24);
      if (v5 <= 1886222184)
      {
        if (v5 > 1885892705)
        {
          if (v5 <= 1886152046)
          {
            switch(v5)
            {
              case 1885892706:
                __s[23] = 20;
                qmemcpy(__s, "Bluetooth HFP Output", 20);
                v7 = 20;
                goto LABEL_79;
              case 1885892727:
                __s[23] = 16;
                v13 = "Wired Headphones";
                goto LABEL_74;
              case 1886152041:
                __s[23] = 18;
                *&__s[16] = 29813;
                v10 = "Bluetooth LE Input";
LABEL_48:
                *__s = *v10;
                v7 = 18;
                goto LABEL_79;
            }
          }

          else if (v5 > 1886216808)
          {
            if (v5 == 1886216809)
            {
              __s[23] = 19;
              *&__s[15] = 1701736296;
              v12 = "Built-in Microphone";
              goto LABEL_63;
            }

            if (v5 == 1886216820)
            {
              __s[23] = 19;
              *&__s[15] = 1953853550;
              v12 = "Bluetooth HFP Input";
LABEL_63:
              *__s = *v12;
              v7 = 19;
              goto LABEL_79;
            }
          }

          else
          {
            if (v5 == 1886152047)
            {
              __s[23] = 19;
              *&__s[15] = 1953853556;
              v12 = "Bluetooth LE Output";
              goto LABEL_63;
            }

            if (v5 == 1886154613)
            {
              __s[23] = 8;
              v9 = 0x74754F20656E694CLL;
LABEL_57:
              *__s = v9;
              v7 = 8;
              goto LABEL_79;
            }
          }
        }

        else if (v5 <= 1885631343)
        {
          switch(v5)
          {
            case 1885433953:
              __s[23] = 12;
              *&__s[8] = 1869177973;
              v14 = "AirPlayAudio";
              goto LABEL_72;
            case 1885433971:
              __s[23] = 13;
              qmemcpy(__s, "AirPlayScreen", 13);
              v7 = 13;
              goto LABEL_79;
            case 1885629550:
              __s[23] = 8;
              v9 = 0x6B6E696C6E776F44;
              goto LABEL_57;
          }
        }

        else if (v5 > 1885889644)
        {
          if (v5 == 1885889645)
          {
            __s[23] = 4;
            *__s = 1229800520;
            v7 = 4;
            goto LABEL_79;
          }

          if (v5 == 1885892674)
          {
            __s[23] = 14;
            v11 = "Bluetooth A2DP";
            goto LABEL_44;
          }
        }

        else
        {
          if (v5 == 1885631344)
          {
            __s[23] = 12;
            *&__s[8] = 1953656656;
            v14 = "Display Port";
LABEL_72:
            *__s = *v14;
            v7 = 12;
            goto LABEL_79;
          }

          if (v5 == 1885888867)
          {
            __s[23] = 10;
            *&__s[8] = 29813;
            v6 = "HAC Output";
LABEL_70:
            *__s = *v6;
            v7 = 10;
            goto LABEL_79;
          }
        }

        goto LABEL_77;
      }

      if (v5 > 1886680168)
      {
        if (v5 <= 1886742894)
        {
          switch(v5)
          {
            case 1886680169:
              __s[23] = 9;
              qmemcpy(__s, "TTY Input", 9);
              v7 = 9;
              goto LABEL_79;
            case 1886680175:
              __s[23] = 10;
              *&__s[8] = 29813;
              v6 = "TTY Output";
              goto LABEL_70;
            case 1886742889:
              __s[23] = 14;
              v11 = "USB IDAM Input";
LABEL_44:
              *__s = *v11;
              *&__s[6] = *(v11 + 6);
              v7 = 14;
              goto LABEL_79;
          }
        }

        else if (v5 > 1886745448)
        {
          if (v5 == 1886745449)
          {
            __s[23] = 15;
            v15 = "USB Audio Input";
            goto LABEL_65;
          }

          if (v5 == 1886745455)
          {
            __s[23] = 16;
            v13 = "USB Audio Output";
LABEL_74:
            *__s = *v13;
            v7 = 16;
            goto LABEL_79;
          }
        }

        else
        {
          if (v5 == 1886742895)
          {
            __s[23] = 15;
            v15 = "USB IDAM Output";
LABEL_65:
            *__s = *v15;
            *&__s[7] = *(v15 + 7);
            v7 = 15;
            goto LABEL_79;
          }

          if (v5 == 1886743662)
          {
            __s[23] = 6;
            qmemcpy(__s, "Uplink", 6);
            v7 = 6;
            goto LABEL_79;
          }
        }

        goto LABEL_77;
      }

      if (v5 <= 1886545250)
      {
        break;
      }

      if (v5 > 1886675560)
      {
        if (v5 == 1886675561)
        {
          __s[23] = 17;
          qmemcpy(__s, "Thunderbolt Input", 17);
          v7 = 17;
          goto LABEL_79;
        }

        if (v5 == 1886675567)
        {
          __s[23] = 18;
          *&__s[16] = 29813;
          v10 = "Thunderbolt Output";
          goto LABEL_48;
        }

LABEL_77:
        __s[23] = 7;
        *__s = 1852534357;
        v7 = 7;
        v8 = 1853321070;
        goto LABEL_78;
      }

      if (v5 == 1886545251)
      {
        __s[23] = 8;
        v9 = 0x7265766965636552;
        goto LABEL_57;
      }

      if (v5 != 1886613611)
      {
        goto LABEL_77;
      }

      __s[23] = 7;
      *__s = 1634037843;
      v7 = 7;
      v8 = 1919249249;
LABEL_78:
      *&__s[3] = v8;
LABEL_79:
      std::string::append(a1, __s, v7);
      if (__s[23] < 0)
      {
        operator delete(*__s);
      }

      if (v17)
      {
        sub_1A8C0(v17);
      }

      v4 = *(v4 + 8);
      if (v4 == a2)
      {
        return;
      }

      std::string::append(a1, ", ", 2uLL);
    }

    switch(v5)
    {
      case 1886222185:
        __s[23] = 16;
        v13 = "Wired Microphone";
        goto LABEL_74;
      case 1886284905:
        __s[23] = 10;
        *&__s[8] = 29813;
        v6 = "NULL Input";
        goto LABEL_70;
      case 1886287212:
        __s[23] = 11;
        qmemcpy(__s, "NULL Output", 11);
        v7 = 11;
        goto LABEL_79;
    }

    goto LABEL_77;
  }
}

void sub_16B1D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (*(v16 + 23) < 0)
  {
    operator delete(*v16);
  }

  _Unwind_Resume(exception_object);
}

void sub_16B214(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  v4 = a1[2];
  if (v3 >= v4)
  {
    v6 = 0xCCCCCCCCCCCCCCCDLL * ((v3 - *a1) >> 3);
    v7 = v6 + 1;
    if (v6 + 1 > 0x666666666666666)
    {
      sub_189A00();
    }

    v8 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - *a1) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x333333333333333)
    {
      v9 = 0x666666666666666;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (v9 <= 0x666666666666666)
      {
        operator new();
      }

      sub_6ACD8();
    }

    v10 = 40 * v6;
    *v10 = *a2;
    *(v10 + 8) = *(a2 + 8);
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(v10 + 24) = *(a2 + 24);
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    v5 = 40 * v6 + 40;
    v17 = (v10 + 40);
    v11 = *a1;
    v12 = a1[1];
    v13 = v10 + *a1 - v12;
    if (*a1 != v12)
    {
      v14 = *a1;
      v15 = v10 + *a1 - v12;
      do
      {
        *v15 = *v14;
        *(v15 + 8) = *(v14 + 8);
        *(v14 + 8) = 0;
        *(v14 + 16) = 0;
        *(v15 + 24) = *(v14 + 24);
        *(v14 + 24) = 0;
        *(v14 + 32) = 0;
        v14 += 40;
        v15 += 40;
      }

      while (v14 != v12);
      do
      {
        sub_15B9A8(v11);
        v11 += 40;
      }

      while (v11 != v12);
    }

    v16 = *a1;
    *a1 = v13;
    *(a1 + 1) = v17;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    *v3 = *a2;
    *(v3 + 8) = *(a2 + 8);
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(v3 + 24) = *(a2 + 24);
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    v5 = v3 + 40;
  }

  a1[1] = v5;
}

void sub_16B3C4(void *a1, uint64_t a2)
{
  *a1 = a2;
  v2 = a2;
  operator new();
}

void sub_16B444(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_14C470(va);
  _Unwind_Resume(a1);
}

uint64_t sub_16B45C(uint64_t result, void *a2, int a3)
{
  *result = a3;
  *(result + 8) = 0;
  *(result + 16) = 0;
  v3 = a2[1];
  *(result + 24) = *a2;
  *(result + 32) = v3;
  if (!v3 || (atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed), !*(result + 32)))
  {
    v4 = sub_5544(14);
    v5 = *v4;
    if (*v4)
    {
      if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
      {
        v7 = 136315394;
        v8 = "AggregateDevice_Common2.cpp";
        v9 = 1024;
        v10 = 145;
        _os_log_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", &v7, 0x12u);
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  return result;
}

void sub_16B58C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 32);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = *(v1 + 16);
  if (v4)
  {
    sub_1A8C0(v4);
  }

  _Unwind_Resume(exception_object);
}

void sub_16B5C4(void *a1, uint64_t a2, int a3)
{
  v12[0] = 0;
  v12[1] = 0;
  v11 = v12;
  v4 = 48;
  if (a3)
  {
    v4 = 72;
  }

  v5 = a2 + v4;
  v6 = *(a2 + v4);
  v7 = *(v5 + 8);
  v8 = v12;
  if (v6 != v7)
  {
    v9 = v6 + 3;
    do
    {
      if (*(v9 - 6) != -1 && !*sub_86818(&v11, &v13, v9))
      {
        operator new();
      }

      v10 = v9 + 2;
      v9 += 5;
    }

    while (v10 != v7);
    v8 = v11;
  }

  sub_16B714(a1, v8, v12);
  sub_4B0F4(v12[0]);
}

void *sub_16B714(void *result, uint64_t a2, uint64_t a3)
{
  *result = result;
  result[1] = result;
  result[2] = 0;
  if (a2 != a3)
  {
    operator new();
  }

  return result;
}

BOOL sub_16B7FC(unint64_t *a1, unint64_t *a2)
{
  v4 = a1[1];
  if (v4)
  {
    v5 = std::__shared_weak_count::lock(v4);
    v6 = v5;
    if (v5)
    {
      v7 = *a1;
      atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      sub_1A8C0(v5);
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v8 = a2[1];
  if (v8)
  {
    v9 = std::__shared_weak_count::lock(v8);
    v10 = v9;
    if (v9)
    {
      v11 = *a2;
      atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      sub_1A8C0(v9);
      if (!v6)
      {
LABEL_16:
        v7 = 0;
        v12 = 0;
        if (!v10)
        {
          goto LABEL_20;
        }

        goto LABEL_17;
      }
    }

    else
    {
      v11 = 0;
      if (!v6)
      {
        goto LABEL_16;
      }
    }
  }

  else
  {
    v11 = 0;
    v10 = 0;
    if (!v6)
    {
      goto LABEL_16;
    }
  }

  v12 = std::__shared_weak_count::lock(v6);
  if (!v12)
  {
    v7 = 0;
  }

  if (!v10)
  {
LABEL_20:
    v11 = 0;
    if (!v12)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

LABEL_17:
  v13 = std::__shared_weak_count::lock(v10);
  if (!v13)
  {
    goto LABEL_20;
  }

  sub_1A8C0(v13);
  if (v12)
  {
LABEL_21:
    sub_1A8C0(v12);
  }

LABEL_22:
  if (v10)
  {
    std::__shared_weak_count::__release_weak(v10);
  }

  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }

  return v7 < v11;
}

void *sub_16B928(void *result, char *__src, char *a3, unint64_t a4)
{
  v7 = result;
  v8 = result[2];
  v9 = *result;
  if (a4 > (v8 - *result) >> 2)
  {
    if (v9)
    {
      result[1] = v9;
      operator delete(v9);
      v8 = 0;
      *v7 = 0;
      v7[1] = 0;
      v7[2] = 0;
    }

    if (!(a4 >> 62))
    {
      v10 = v8 >> 1;
      if (v8 >> 1 <= a4)
      {
        v10 = a4;
      }

      if (v8 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v11 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v10;
      }

      sub_469FC(v7, v11);
    }

    sub_189A00();
  }

  v12 = result[1];
  v13 = v12 - v9;
  if (a4 <= (v12 - v9) >> 2)
  {
    v17 = a3 - __src;
    if (a3 != __src)
    {
      result = memmove(*result, __src, v17);
    }

    v16 = &v9[v17];
  }

  else
  {
    if (v12 != v9)
    {
      result = memmove(*result, __src, v12 - v9);
      v12 = v7[1];
    }

    v14 = &__src[v13];
    v15 = a3 - &__src[v13];
    if (v15)
    {
      result = memmove(v12, v14, v15);
    }

    v16 = &v12[v15];
  }

  v7[1] = v16;
  return result;
}

void sub_16BA5C(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  sub_27A4();
  v3 = atomic_load(&qword_6E9558);
  if (v3 != pthread_self())
  {
    v24 = sub_5544(14);
    v25 = sub_468EC(1, *v24, *(v24 + 8));
    v26 = v25;
    if (v25)
    {
      v27 = v25;
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "VirtualAudio_PlugIn.mm";
        *&buf[12] = 1024;
        *&buf[14] = 4469;
        _os_log_impl(&dword_0, v27, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: The routing mutex is not held by this thread.", buf, 0x12u);
      }
    }
  }

  v4 = sub_3A1A44(a3);
  *buf = *v4;
  sub_175EEC(&buf[16], v4 + 16);
  LOWORD(v50) = *(v4 + 40);
  if (a3[1] != 1918989155 && !*(a2 + 192))
  {
    sub_175EEC(v46, &buf[16]);
    v5 = v46[1];
    sub_175EEC(&v51, &buf[16]);
    if (v5 == &v51)
    {
LABEL_7:
      sub_175F78(&v51);
      sub_175F78(v46);
      sub_175F78(&buf[16]);
      v6 = sub_5544(14);
      v7 = sub_468EC(1, *v6, *(v6 + 8));
      v8 = v7;
      if (v7)
      {
        v9 = v7;
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "VirtualAudio_PlugIn.mm";
          *&buf[12] = 1024;
          *&buf[14] = 4471;
          _os_log_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: No route changes in progress.", buf, 0x12u);
        }
      }

LABEL_14:
      if (*a3)
      {
        v28 = sub_5544(14);
        v29 = sub_468EC(1, *v28, *(v28 + 8));
        v30 = v29;
        if (v29 && os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "VirtualAudio_PlugIn.mm";
          *&buf[12] = 1024;
          *&buf[14] = 4472;
          _os_log_impl(&dword_0, v30, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
        }

        exception = __cxa_allocate_exception(0x10uLL);
        std::logic_error::logic_error(exception, "Precondition failure.");
      }

      v10 = a3[1];
      if (!v10)
      {
        v32 = sub_5544(14);
        v33 = sub_468EC(1, *v32, *(v32 + 8));
        v34 = v33;
        if (v33 && os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "VirtualAudio_PlugIn.mm";
          *&buf[12] = 1024;
          *&buf[14] = 4473;
          _os_log_impl(&dword_0, v34, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
        }

        v35 = __cxa_allocate_exception(0x10uLL);
        std::logic_error::logic_error(v35, "Precondition failure.");
      }

      if (sub_3A1764(v10))
      {
        v36 = sub_5544(14);
        v37 = sub_468EC(1, *v36, *(v36 + 8));
        v38 = v37;
        if (v37 && os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "VirtualAudio_PlugIn.mm";
          *&buf[12] = 1024;
          *&buf[14] = 4474;
          _os_log_impl(&dword_0, v38, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
        }

        v39 = __cxa_allocate_exception(0x10uLL);
        std::logic_error::logic_error(v39, "Precondition failure.");
      }

      v11 = sub_3A1A44(a3);
      sub_175EEC(buf, v11 + 16);
      v12 = *&buf[16];
      sub_175F78(buf);
      if (!v12)
      {
        v40 = sub_5544(14);
        v41 = sub_468EC(1, *v40, *(v40 + 8));
        v42 = v41;
        if (v41 && os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "VirtualAudio_PlugIn.mm";
          *&buf[12] = 1024;
          *&buf[14] = 4475;
          _os_log_impl(&dword_0, v42, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
        }

        v43 = __cxa_allocate_exception(0x10uLL);
        std::logic_error::logic_error(v43, "Precondition failure.");
      }

      v13 = sub_3A1A44(a3);
      sub_175EEC(&v47, v13 + 16);
      v14 = v48;
      if (v48 != &v47)
      {
        while (*(v14 + 136) > 0)
        {
          v14 = *(v14 + 8);
          if (v14 == &v47)
          {
            goto LABEL_38;
          }
        }

        v15 = &v47;
        do
        {
          v15 = *v15;
          if (v14 == v15)
          {
            goto LABEL_38;
          }
        }

        while (v15[34] < 1);
        v16 = -1;
        v17 = v14;
        do
        {
          v17 = *(v17 + 1);
          ++v16;
        }

        while (v17 != v15);
        v18 = v16 + 2;
        if (v16 < 2)
        {
          v23 = 0;
          v19 = 0;
        }

        else
        {
          if (v18 >= 0xC30C30C30C30C3)
          {
            v19 = 0xC30C30C30C30C3;
          }

          else
          {
            v19 = v16 + 2;
          }

          do
          {
            v20 = operator new(168 * v19, &std::nothrow);
            if (v20)
            {
              v23 = v20;
              goto LABEL_36;
            }

            v21 = v19 >> 1;
            v22 = v19 > 1;
            v19 >>= 1;
          }

          while (v22);
          v23 = 0;
          v19 = v21;
        }

LABEL_36:
        sub_3A1B78(v14, v15, v18, v23, v19);
        if (v23)
        {
          operator delete(v23);
        }
      }

LABEL_38:
      operator new();
    }

    while (*(v5 + 136) != 3)
    {
      v5 = *(v5 + 8);
      if (v5 == &v51)
      {
        goto LABEL_7;
      }
    }

    sub_175F78(&v51);
    sub_175F78(v46);
  }

  sub_175F78(&buf[16]);
  goto LABEL_14;
}

void sub_171B7C(uint64_t a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x171BACLL);
  }

  JUMPOUT(0x171F64);
}

void sub_171B8C(uint64_t a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x171BB4);
  }

  JUMPOUT(0x171F64);
}

void sub_171C18(void *a1, int a2)
{
  if (a2)
  {
    STACK[0x2D0] = &STACK[0x2A8];
    sub_218D2C(&STACK[0x2D0]);
    if (a2 == 3)
    {
      v5 = __cxa_begin_catch(a1);
      v6 = sub_5544(2);
      v7 = sub_468EC(1, *v6, v6[1]);
      v8 = objc_claimAutoreleasedReturnValue(v7);
      v9 = v8;
      if (v8)
      {
        v10 = v8;
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          sub_22170(v2 - 240, v5[2]);
          if (*(v2 - 217) >= 0)
          {
            v11 = v2 - 240;
          }

          else
          {
            v11 = *(v2 - 240);
          }

          LODWORD(STACK[0x2D0]) = 136315650;
          STACK[0x2D4] = "VirtualAudio_PlugIn.mm";
          LOWORD(STACK[0x2DC]) = 1024;
          LODWORD(STACK[0x2DE]) = 4841;
          LOWORD(STACK[0x2E2]) = 2080;
          STACK[0x2E4] = v11;
          _os_log_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d CAException thrown during device creation, reconfiguration, and preparation for destruction: '%s'.", &STACK[0x2D0], 0x1Cu);
          if (*(v2 - 217) < 0)
          {
            operator delete(*(v2 - 240));
          }
        }
      }
    }

    else
    {
      v12 = __cxa_begin_catch(a1);
      if (a2 == 2)
      {
        v13 = v12;
        v14 = sub_5544(2);
        v15 = sub_468EC(1, *v14, v14[1]);
        v16 = objc_claimAutoreleasedReturnValue(v15);
        v9 = v16;
        if (v16)
        {
          v17 = v16;
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            v18 = (*(*v13 + 16))(v13);
            LODWORD(STACK[0x2D0]) = 136315650;
            STACK[0x2D4] = "VirtualAudio_PlugIn.mm";
            LOWORD(STACK[0x2DC]) = 1024;
            LODWORD(STACK[0x2DE]) = 4842;
            LOWORD(STACK[0x2E2]) = 2080;
            STACK[0x2E4] = v18;
            _os_log_impl(&dword_0, v17, OS_LOG_TYPE_ERROR, "%25s:%-5d Standard Library exception thrown during device creation, reconfiguration, and preparation for destruction: %s.", &STACK[0x2D0], 0x1Cu);
          }
        }
      }

      else
      {
        v19 = sub_5544(2);
        v20 = sub_468EC(1, *v19, v19[1]);
        v21 = objc_claimAutoreleasedReturnValue(v20);
        v9 = v21;
        if (v21)
        {
          v22 = v21;
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            LODWORD(STACK[0x2D0]) = 136315394;
            STACK[0x2D4] = "VirtualAudio_PlugIn.mm";
            LOWORD(STACK[0x2DC]) = 1024;
            LODWORD(STACK[0x2DE]) = 4843;
            _os_log_impl(&dword_0, v22, OS_LOG_TYPE_ERROR, "%25s:%-5d Unknown exception thrown during device creation, reconfiguration, and preparation for destruction.", &STACK[0x2D0], 0x12u);
          }
        }
      }
    }

    __cxa_end_catch();
    JUMPOUT(0x16EF1CLL);
  }

  JUMPOUT(0x171F64);
}

void sub_171C28(uint64_t a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x171C38);
  }

  JUMPOUT(0x171F10);
}

void sub_171C60(uint64_t a1, int a2)
{
  if (a2)
  {

    JUMPOUT(0x171C74);
  }

  JUMPOUT(0x171F64);
}

void sub_171CA4(uint64_t a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x171CB0);
  }

  JUMPOUT(0x171F10);
}

void *sub_171F6C(void *result, void *a2, unint64_t *a3)
{
  v5 = result;
  v6 = result + 1;
  if (result + 1 == a2 || (result = sub_16B7FC(a3, a2 + 4), result))
  {
    if (*v5 == a2)
    {
      v8 = a2;
LABEL_16:
      if (!*a2)
      {
        v16 = a2;
        goto LABEL_31;
      }

      v16 = v8;
      v10 = v8 + 1;
LABEL_30:
      if (!*v10)
      {
        goto LABEL_31;
      }

      return result;
    }

    v7 = *a2;
    if (*a2)
    {
      do
      {
        v8 = v7;
        v7 = v7[1];
      }

      while (v7);
    }

    else
    {
      v13 = a2;
      do
      {
        v8 = v13[2];
        v14 = *v8 == v13;
        v13 = v8;
      }

      while (v14);
    }

    result = sub_16B7FC(v8 + 4, a3);
    if (result)
    {
      goto LABEL_16;
    }

LABEL_29:
    result = sub_86818(v5, &v16, a3);
    v10 = result;
    goto LABEL_30;
  }

  result = sub_16B7FC(a2 + 4, a3);
  if (result)
  {
    v10 = a2 + 1;
    v9 = a2[1];
    if (v9)
    {
      v11 = a2[1];
      do
      {
        v12 = v11;
        v11 = *v11;
      }

      while (v11);
    }

    else
    {
      v15 = a2;
      do
      {
        v12 = v15[2];
        v14 = *v12 == v15;
        v15 = v12;
      }

      while (!v14);
    }

    if (v12 != v6)
    {
      result = sub_16B7FC(a3, v12 + 4);
      if (!result)
      {
        goto LABEL_29;
      }

      v9 = *v10;
    }

    if (v9)
    {
      v16 = v12;
      v10 = v12;
    }

    else
    {
      v16 = a2;
    }

    goto LABEL_30;
  }

  v16 = a2;
  if (!a2)
  {
LABEL_31:
    operator new();
  }

  return result;
}