void sub_25A88C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, void *__p, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a66)
  {
    sub_1A8C0(a66);
  }

  operator delete();
}

uint64_t sub_25AE44(uint64_t a1)
{
  sub_C31F4(*(a1 + 96));
  sub_C31F4(*(a1 + 72));
  v4 = (a1 + 40);
  sub_1084A8(&v4);
  v4 = (a1 + 16);
  sub_1084A8(&v4);
  v2 = *(a1 + 8);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_25AEAC(unint64_t a1)
{
  if (a1 < 0x24924924924924ALL)
  {
    operator new();
  }

  sub_6ACD8();
}

uint64_t sub_25AF08(uint64_t a1)
{
  if (*(a1 + 56) == 1 && *(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  if (*(a1 + 24) == 1 && *(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void *sub_25AFA4(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  *a1 = a2;
  a1[1] = a3;
  if (a3)
  {
    atomic_fetch_add_explicit((a3 + 8), 1uLL, memory_order_relaxed);
  }

  a1[2] = 0;
  a1[3] = 0;
  a1[4] = 0;
  sub_46980((a1 + 2), *a4, a4[1], (a4[1] - *a4) >> 2);
  return a1;
}

void sub_25AFF8(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    sub_1A8C0(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_25B010(void *a1)
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

  return a1;
}

void *sub_25B050(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    a1[3] = v2;
    operator delete(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    sub_1A8C0(v3);
  }

  return a1;
}

void *sub_25B090(void *result, uint64_t a2, uint64_t a3)
{
  *result = result;
  result[1] = result;
  result[2] = 0;
  if (a3)
  {
    sub_119E04();
  }

  return result;
}

void sub_25B1F4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v4 = *(v2 + 40);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  sub_1E6088(va);
  _Unwind_Resume(a1);
}

void sub_25B214(std::string *a1, uint64_t a2)
{
  sub_261E2C(&v31, *a2, (a2 + 8));
  v4 = std::string::insert(&v31, 0, " { Global : ", 0xCuLL);
  v5 = *&v4->__r_.__value_.__l.__data_;
  a1->__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
  *&a1->__r_.__value_.__l.__data_ = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }

  sub_53E8(&v24, " [ ");
  v6 = *(a2 + 24);
  if (v6 != (a2 + 32))
  {
    while (1)
    {
      sub_22170(&v29, *(v6 + 8));
      v7 = std::string::append(&v29, " : ", 3uLL);
      v8 = *&v7->__r_.__value_.__l.__data_;
      v30.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
      *&v30.__r_.__value_.__l.__data_ = v8;
      v7->__r_.__value_.__l.__size_ = 0;
      v7->__r_.__value_.__r.__words[2] = 0;
      v7->__r_.__value_.__r.__words[0] = 0;
      sub_261E2C(&__p, v6[5], v6 + 6);
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

      v11 = std::string::append(&v30, p_p, size);
      v12 = *&v11->__r_.__value_.__l.__data_;
      v31.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
      *&v31.__r_.__value_.__l.__data_ = v12;
      v11->__r_.__value_.__l.__size_ = 0;
      v11->__r_.__value_.__r.__words[2] = 0;
      v11->__r_.__value_.__r.__words[0] = 0;
      if ((v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v13 = &v31;
      }

      else
      {
        v13 = v31.__r_.__value_.__r.__words[0];
      }

      if ((v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v14 = HIBYTE(v31.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v14 = v31.__r_.__value_.__l.__size_;
      }

      std::string::append(&v24, v13, v14);
      if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v31.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v30.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v29.__r_.__value_.__l.__data_);
      }

      v15 = v6[1];
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
          v16 = v6[2];
          v17 = *v16 == v6;
          v6 = v16;
        }

        while (!v17);
      }

      if (v16 == (a2 + 32))
      {
        break;
      }

      std::string::append(&v24, "; ", 2uLL);
      v6 = v16;
    }
  }

  std::string::append(&v24, " ]", 2uLL);
  v18 = std::string::insert(&v24, 0, " VAD Specific Ports :", 0x15uLL);
  v19 = *&v18->__r_.__value_.__l.__data_;
  v25.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
  *&v25.__r_.__value_.__l.__data_ = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  v20 = std::string::append(&v25, " }", 2uLL);
  v21 = *&v20->__r_.__value_.__l.__data_;
  v27 = v20->__r_.__value_.__r.__words[2];
  *v26 = v21;
  v20->__r_.__value_.__l.__size_ = 0;
  v20->__r_.__value_.__r.__words[2] = 0;
  v20->__r_.__value_.__r.__words[0] = 0;
  if (v27 >= 0)
  {
    v22 = v26;
  }

  else
  {
    v22 = v26[0];
  }

  if (v27 >= 0)
  {
    v23 = HIBYTE(v27);
  }

  else
  {
    v23 = v26[1];
  }

  std::string::append(a1, v22, v23);
  if (SHIBYTE(v27) < 0)
  {
    operator delete(v26[0]);
  }

  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }
}

void sub_25B4D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
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

  if (*(v47 + 23) < 0)
  {
    operator delete(*v47);
  }

  _Unwind_Resume(exception_object);
}

void sub_25B5B8(uint64_t a1, uint64_t a2, uint64_t *a3, unsigned int **a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unsigned int a14)
{
  sub_20301C(a1, 1);
  v165[0] = 0;
  v165[1] = 0;
  v164 = v165;
  v161 = a3;
  v16 = *a3;
  v17 = a3[1];
  while (v16 != v17)
  {
    if ((*(v16 + 324) & 1) == 0)
    {
      v154 = sub_5544(14);
      v155 = *v154;
      if (*v154 && os_log_type_enabled(*v154, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "RoutingManager.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 1106;
        _os_log_impl(&dword_0, v155, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(exception, "Precondition failure.");
    }

    if ((*(v16 + 320) - 5) <= 0xFFFFFFFD)
    {
      sub_147938(&v164, **v16, *(*v16 + 4));
    }

    v16 += 328;
  }

  v19 = *a4;
  v18 = a4[1];
  while (v19 != v18)
  {
    sub_147938(&v164, *v19, v19[1]);
    v19 += 36;
  }

  v20 = sub_5544(8);
  if (*(v20 + 8))
  {
    v21 = *v20;
    if (*v20)
    {
      if (os_log_type_enabled(*v20, OS_LOG_TYPE_DEBUG))
      {
        sub_238844(&__p, v164, v165);
        v22 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
        *buf = 136315650;
        *&buf[4] = "RoutingManager.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 1119;
        v169 = 2080;
        v170 = v22;
        _os_log_impl(&dword_0, v21, OS_LOG_TYPE_DEBUG, "%25s:%-5d Resultant Device Contexts %s", buf, 0x1Cu);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }
    }
  }

  (*(**(a2 + 16) + 16))(*(a2 + 16), v161, &v164);
  v23 = sub_8703C();
  v160 = a2;
  if ((*(*v23 + 264))(v23))
  {
    v24 = *v161;
    v25 = v161[1];
    while (1)
    {
      if (v24 == v25)
      {
        v30 = 0;
        goto LABEL_33;
      }

      v26 = *v24;
      v27 = *v24 + 16;
      v28 = *(*v24 + 24);
      if (v28 != v27)
      {
        break;
      }

LABEL_25:
      v29 = v26 + 16;
      while (v28 != v29)
      {
        if (sub_9C4E4(1885433971, (v28 + 16)))
        {
          goto LABEL_31;
        }

        v28 = *(v28 + 8);
      }

      v24 += 328;
    }

    while (!sub_9C4E4(1885433953, (v28 + 16)))
    {
      v28 = *(v28 + 8);
      if (v28 == v27)
      {
        v26 = *v24;
        v28 = *(*v24 + 24);
        goto LABEL_25;
      }
    }

LABEL_31:
    v30 = 1;
LABEL_33:
    if (sub_144444((a2 + 480), 1885433953))
    {
      v31 = 1;
    }

    else
    {
      v31 = sub_144444((a2 + 480), 1885433971);
    }

    v32 = *a5;
    if (*a5 == a5 + 1)
    {
LABEL_47:
      v37 = 1;
    }

    else
    {
      while (1)
      {
        v33 = *(v32 + 7);
        v34 = v33 == 1885433953 || v33 == 1885433971;
        if (v34)
        {
          break;
        }

        v35 = v32[1];
        if (v35)
        {
          do
          {
            v36 = v35;
            v35 = *v35;
          }

          while (v35);
        }

        else
        {
          do
          {
            v36 = v32[2];
            v34 = *v36 == v32;
            v32 = v36;
          }

          while (!v34);
        }

        v32 = v36;
        if (v36 == a5 + 1)
        {
          goto LABEL_47;
        }
      }

      v37 = 0;
    }

    v159 = v30 & v37 | v31;
  }

  else
  {
    v159 = 0;
  }

  v39 = *v161;
  v38 = v161[1];
  if (*v161 != v38)
  {
    while (*(*v39 + 4) || **v39 != 1986291046)
    {
      v39 += 328;
      if (v39 == v38)
      {
        goto LABEL_54;
      }
    }
  }

  if (v38 == v39)
  {
LABEL_54:
    v40 = sub_5544(14);
    v41 = *v40;
    if (*v40 && os_log_type_enabled(*v40, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "RoutingManager.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 3407;
      _os_log_impl(&dword_0, v41, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    v42 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v42, "Precondition failure.");
  }

  if (v159)
  {
    v43 = sub_5544(8);
    v44 = sub_5544(35);
    v45 = 0;
    *buf = 0x100000002;
    v46 = *(v43 + 8);
    while (1)
    {
      v47 = *&buf[v45];
      if (((v46 & v47) != 0) != ((*(v44 + 8) & v47) != 0))
      {
        break;
      }

      v45 += 4;
      if (v45 == 8)
      {
        goto LABEL_70;
      }
    }

    if ((v46 & v47) == 0)
    {
      v43 = v44;
    }

LABEL_70:
    v53 = *v43;
    if (v53 && os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "RoutingManager.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 3412;
      _os_log_impl(&dword_0, v53, OS_LOG_TYPE_DEFAULT, "%25s:%-5d >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>", buf, 0x12u);
    }

    v54 = sub_5544(8);
    v55 = sub_5544(35);
    v56 = 0;
    *buf = 0x100000002;
    v57 = *(v54 + 8);
    while (1)
    {
      v58 = *&buf[v56];
      if (((v57 & v58) != 0) != ((*(v55 + 8) & v58) != 0))
      {
        break;
      }

      v56 += 4;
      if (v56 == 8)
      {
        goto LABEL_88;
      }
    }

    if ((v57 & v58) == 0)
    {
      v54 = v55;
    }

LABEL_88:
    v65 = sub_5544(28);
    v66 = 0;
    *buf = 0x100000002;
    v67 = *(v54 + 8);
    while (1)
    {
      v68 = *&buf[v66];
      if (((v67 & v68) != 0) != ((*(v65 + 8) & v68) != 0))
      {
        break;
      }

      v66 += 4;
      if (v66 == 8)
      {
        goto LABEL_117;
      }
    }

    if ((v67 & v68) == 0)
    {
      v54 = v65;
    }

LABEL_117:
    v84 = *v54;
    if (v84 && os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "RoutingManager.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 3413;
      _os_log_impl(&dword_0, v84, OS_LOG_TYPE_DEFAULT, "%25s:%-5d [AirPlay route change] Calling routing handler to process route using MultiRouteProcessingInfo:", buf, 0x12u);
    }

    v85 = *v161;
    v86 = v161[1];
    if (*v161 != v86)
    {
      do
      {
        v87 = sub_5544(8);
        v88 = sub_5544(35);
        v89 = 0;
        *buf = 0x100000002;
        v90 = *(v87 + 8);
        while (1)
        {
          v91 = *&buf[v89];
          if (((v90 & v91) != 0) != ((*(v88 + 8) & v91) != 0))
          {
            break;
          }

          v89 += 4;
          if (v89 == 8)
          {
            goto LABEL_127;
          }
        }

        if ((v90 & v91) == 0)
        {
          v87 = v88;
        }

LABEL_127:
        v92 = sub_5544(28);
        v93 = 0;
        *buf = 0x100000002;
        v94 = *(v87 + 8);
        while (1)
        {
          v95 = *&buf[v93];
          if (((v94 & v95) != 0) != ((*(v92 + 8) & v95) != 0))
          {
            break;
          }

          v93 += 4;
          if (v93 == 8)
          {
            goto LABEL_133;
          }
        }

        if ((v94 & v95) == 0)
        {
          v87 = v92;
        }

LABEL_133:
        v96 = *v87;
        if (v96 && os_log_type_enabled(v96, OS_LOG_TYPE_DEFAULT))
        {
          sub_144548(&__p, v85);
          p_p = &__p;
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            p_p = __p.__r_.__value_.__r.__words[0];
          }

          *buf = 136315650;
          *&buf[4] = "RoutingManager.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 3416;
          v169 = 2080;
          v170 = p_p;
          _os_log_impl(&dword_0, v96, OS_LOG_TYPE_DEFAULT, "%25s:%-5d [AirPlay route change] - %s.", buf, 0x1Cu);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }

        v85 += 328;
      }

      while (v85 != v86);
    }

    v98 = sub_5544(8);
    v99 = sub_5544(35);
    v100 = 0;
    *buf = 0x100000002;
    v101 = *(v98 + 8);
    while (1)
    {
      v102 = *&buf[v100];
      if (((v101 & v102) != 0) != ((*(v99 + 8) & v102) != 0))
      {
        break;
      }

      v100 += 4;
      if (v100 == 8)
      {
        goto LABEL_170;
      }
    }

    if ((v101 & v102) == 0)
    {
      v98 = v99;
    }

LABEL_170:
    v113 = sub_5544(28);
    v114 = 0;
    *buf = 0x100000002;
    v115 = *(v98 + 8);
    while (1)
    {
      v116 = *&buf[v114];
      if (((v115 & v116) != 0) != ((*(v113 + 8) & v116) != 0))
      {
        break;
      }

      v114 += 4;
      if (v114 == 8)
      {
        goto LABEL_176;
      }
    }

    if ((v115 & v116) == 0)
    {
      v98 = v113;
    }

LABEL_176:
    v117 = *v98;
    if (v117 && os_log_type_enabled(v117, OS_LOG_TYPE_DEFAULT))
    {
      sub_1446C8(&__p, a4);
      v118 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
      *buf = 136315650;
      *&buf[4] = "RoutingManager.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 3418;
      v169 = 2080;
      v170 = v118;
      _os_log_impl(&dword_0, v117, OS_LOG_TYPE_DEFAULT, "%25s:%-5d [AirPlay route change] Routes to be destroyed %s.", buf, 0x1Cu);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    v119 = sub_5544(8);
    v120 = sub_5544(35);
    v121 = 0;
    *buf = 0x100000002;
    v122 = *(v119 + 8);
    while (1)
    {
      v123 = *&buf[v121];
      if (((v122 & v123) != 0) != ((*(v120 + 8) & v123) != 0))
      {
        break;
      }

      v121 += 4;
      if (v121 == 8)
      {
        goto LABEL_189;
      }
    }

    if ((v122 & v123) == 0)
    {
      v119 = v120;
    }

LABEL_189:
    v124 = sub_5544(28);
    v125 = 0;
    *buf = 0x100000002;
    v126 = *(v119 + 8);
    while (1)
    {
      v127 = *&buf[v125];
      if (((v126 & v127) != 0) != ((*(v124 + 8) & v127) != 0))
      {
        break;
      }

      v125 += 4;
      if (v125 == 8)
      {
        goto LABEL_195;
      }
    }

    if ((v126 & v127) == 0)
    {
      v119 = v124;
    }

LABEL_195:
    v128 = *v119;
    if (v128 && os_log_type_enabled(v128, OS_LOG_TYPE_DEFAULT))
    {
      if (*(v39 + 8) != *(v160 + 32) || *(v39 + 12) != *(v160 + 36))
      {
        goto LABEL_221;
      }

      v129 = *(v39 + 20);
      v130 = *(v160 + 44);
      if (v129 == v130 && *(v39 + 20))
      {
        v129 = *(v39 + 16);
        v130 = *(v160 + 40);
      }

      if (v129 == v130)
      {
        *buf = 136315650;
        *&buf[4] = "RoutingManager.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 3419;
        v169 = 2080;
        v170 = "identical";
        _os_log_impl(&dword_0, v128, OS_LOG_TYPE_DEFAULT, "%25s:%-5d [AirPlay route change] The previous default device category/mode was: %s.", buf, 0x1Cu);
      }

      else
      {
LABEL_221:
        sub_879F8(&__p, v160 + 32);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v142 = &__p;
        }

        else
        {
          v142 = __p.__r_.__value_.__r.__words[0];
        }

        *buf = 136315650;
        *&buf[4] = "RoutingManager.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 3419;
        v169 = 2080;
        v170 = v142;
        _os_log_impl(&dword_0, v128, OS_LOG_TYPE_DEFAULT, "%25s:%-5d [AirPlay route change] The previous default device category/mode was: %s.", buf, 0x1Cu);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }
    }

    v143 = sub_5544(8);
    v144 = sub_5544(35);
    v145 = 0;
    *buf = 0x100000002;
    v146 = *(v143 + 8);
    while (1)
    {
      v147 = *&buf[v145];
      if (((v146 & v147) != 0) != ((*(v144 + 8) & v147) != 0))
      {
        break;
      }

      v145 += 4;
      if (v145 == 8)
      {
        goto LABEL_232;
      }
    }

    if ((v146 & v147) == 0)
    {
      v143 = v144;
    }

LABEL_232:
    v148 = sub_5544(28);
    v149 = 0;
    *buf = 0x100000002;
    v150 = *(v143 + 8);
    while (1)
    {
      v151 = *&buf[v149];
      if (((v150 & v151) != 0) != ((*(v148 + 8) & v151) != 0))
      {
        break;
      }

      v149 += 4;
      if (v149 == 8)
      {
        goto LABEL_238;
      }
    }

    if ((v150 & v151) == 0)
    {
      v143 = v148;
    }

LABEL_238:
    v152 = *v143;
    if (v152 && os_log_type_enabled(v152, OS_LOG_TYPE_DEFAULT))
    {
      sub_22170(&__p, a14);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v153 = &__p;
      }

      else
      {
        v153 = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 136315650;
      *&buf[4] = "RoutingManager.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 3420;
      v169 = 2080;
      v170 = v153;
      v139 = "%25s:%-5d [AirPlay route change] The route change will use reason %s.";
      v140 = v152;
      v141 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_244;
    }
  }

  else
  {
    v48 = sub_5544(8);
    v49 = sub_5544(35);
    v50 = 0;
    *buf = 0x100000002;
    v51 = *(v48 + 8);
    while (1)
    {
      v52 = *&buf[v50];
      if (((v51 & v52) != 0) != ((*(v49 + 8) & v52) != 0))
      {
        break;
      }

      v50 += 4;
      if (v50 == 8)
      {
        goto LABEL_79;
      }
    }

    if ((v51 & v52) == 0)
    {
      v48 = v49;
    }

LABEL_79:
    v59 = *v48;
    if (v59 && os_log_type_enabled(v59, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      *&buf[4] = "RoutingManager.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 3424;
      _os_log_impl(&dword_0, v59, OS_LOG_TYPE_INFO, "%25s:%-5d >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>", buf, 0x12u);
    }

    v60 = sub_5544(8);
    v61 = sub_5544(35);
    v62 = 0;
    *buf = 0x100000002;
    v63 = *(v60 + 8);
    while (1)
    {
      v64 = *&buf[v62];
      if (((v63 & v64) != 0) != ((*(v61 + 8) & v64) != 0))
      {
        break;
      }

      v62 += 4;
      if (v62 == 8)
      {
        goto LABEL_94;
      }
    }

    if ((v63 & v64) == 0)
    {
      v60 = v61;
    }

LABEL_94:
    v69 = *v60;
    if (v69 && os_log_type_enabled(v69, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      *&buf[4] = "RoutingManager.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 3425;
      _os_log_impl(&dword_0, v69, OS_LOG_TYPE_INFO, "%25s:%-5d Calling routing handler to process route using MultiRouteProcessingInfo:", buf, 0x12u);
    }

    v70 = *v161;
    v71 = v161[1];
    if (*v161 != v71)
    {
      do
      {
        v72 = sub_5544(8);
        v73 = sub_5544(35);
        v74 = 0;
        *buf = 0x100000002;
        v75 = *(v72 + 8);
        while (1)
        {
          v76 = *&buf[v74];
          if (((v75 & v76) != 0) != ((*(v73 + 8) & v76) != 0))
          {
            break;
          }

          v74 += 4;
          if (v74 == 8)
          {
            goto LABEL_104;
          }
        }

        if ((v75 & v76) == 0)
        {
          v72 = v73;
        }

LABEL_104:
        v77 = *v72;
        if (v77 && os_log_type_enabled(v77, OS_LOG_TYPE_INFO))
        {
          sub_144548(&__p, v70);
          v78 = &__p;
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v78 = __p.__r_.__value_.__r.__words[0];
          }

          *buf = 136315650;
          *&buf[4] = "RoutingManager.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 3428;
          v169 = 2080;
          v170 = v78;
          _os_log_impl(&dword_0, v77, OS_LOG_TYPE_INFO, "%25s:%-5d - %s.", buf, 0x1Cu);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }

        v70 += 328;
      }

      while (v70 != v71);
    }

    v79 = sub_5544(8);
    v80 = sub_5544(35);
    v81 = 0;
    *buf = 0x100000002;
    v82 = *(v79 + 8);
    while (1)
    {
      v83 = *&buf[v81];
      if (((v82 & v83) != 0) != ((*(v80 + 8) & v83) != 0))
      {
        break;
      }

      v81 += 4;
      if (v81 == 8)
      {
        goto LABEL_146;
      }
    }

    if ((v82 & v83) == 0)
    {
      v79 = v80;
    }

LABEL_146:
    v103 = *v79;
    if (v103 && os_log_type_enabled(v103, OS_LOG_TYPE_INFO))
    {
      sub_1446C8(&__p, a4);
      v104 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
      *buf = 136315650;
      *&buf[4] = "RoutingManager.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 3430;
      v169 = 2080;
      v170 = v104;
      _os_log_impl(&dword_0, v103, OS_LOG_TYPE_INFO, "%25s:%-5d Routes to be destroyed %s.", buf, 0x1Cu);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    v105 = sub_5544(8);
    v106 = sub_5544(35);
    v107 = 0;
    *buf = 0x100000002;
    v108 = *(v105 + 8);
    while (1)
    {
      v109 = *&buf[v107];
      if (((v108 & v109) != 0) != ((*(v106 + 8) & v109) != 0))
      {
        break;
      }

      v107 += 4;
      if (v107 == 8)
      {
        goto LABEL_159;
      }
    }

    if ((v108 & v109) == 0)
    {
      v105 = v106;
    }

LABEL_159:
    v110 = *v105;
    if (v110 && os_log_type_enabled(v110, OS_LOG_TYPE_INFO))
    {
      if (*(v39 + 8) != *(v160 + 32) || *(v39 + 12) != *(v160 + 36))
      {
        goto LABEL_204;
      }

      v111 = *(v39 + 20);
      v112 = *(v160 + 44);
      if (v111 == v112 && *(v39 + 20))
      {
        v111 = *(v39 + 16);
        v112 = *(v160 + 40);
      }

      if (v111 == v112)
      {
        *buf = 136315650;
        *&buf[4] = "RoutingManager.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 3431;
        v169 = 2080;
        v170 = "identical";
        _os_log_impl(&dword_0, v110, OS_LOG_TYPE_INFO, "%25s:%-5d The previous default device category/mode was: %s.", buf, 0x1Cu);
      }

      else
      {
LABEL_204:
        sub_879F8(&__p, v160 + 32);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v131 = &__p;
        }

        else
        {
          v131 = __p.__r_.__value_.__r.__words[0];
        }

        *buf = 136315650;
        *&buf[4] = "RoutingManager.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 3431;
        v169 = 2080;
        v170 = v131;
        _os_log_impl(&dword_0, v110, OS_LOG_TYPE_INFO, "%25s:%-5d The previous default device category/mode was: %s.", buf, 0x1Cu);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }
    }

    v132 = sub_5544(8);
    v133 = sub_5544(35);
    v134 = 0;
    *buf = 0x100000002;
    v135 = *(v132 + 8);
    while (1)
    {
      v136 = *&buf[v134];
      if (((v135 & v136) != 0) != ((*(v133 + 8) & v136) != 0))
      {
        break;
      }

      v134 += 4;
      if (v134 == 8)
      {
        goto LABEL_215;
      }
    }

    if ((v135 & v136) == 0)
    {
      v132 = v133;
    }

LABEL_215:
    v137 = *v132;
    if (v137 && os_log_type_enabled(v137, OS_LOG_TYPE_INFO))
    {
      sub_22170(&__p, a14);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v138 = &__p;
      }

      else
      {
        v138 = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 136315650;
      *&buf[4] = "RoutingManager.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 3432;
      v169 = 2080;
      v170 = v138;
      v139 = "%25s:%-5d The route change will use reason %s.";
      v140 = v137;
      v141 = OS_LOG_TYPE_INFO;
LABEL_244:
      _os_log_impl(&dword_0, v140, v141, v139, buf, 0x1Cu);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }
  }

  sub_144968(v162, &v164);
  v163 = v160;
  v166 = 0;
  operator new();
}

void sub_25FF68(void *a1, int a2)
{
  if (a2)
  {
    __cxa_end_catch();
    sub_1CC130(a1);
  }

  JUMPOUT(0x260170);
}

void sub_26000C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (LOBYTE(STACK[0x318]) == 1)
    {
      sub_175F78(&STACK[0x2F8]);
    }

    sub_175F78((v2 + 16));
    JUMPOUT(0x25F3C4);
  }

  JUMPOUT(0x260170);
}

void sub_26004C(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x260170);
  }

  JUMPOUT(0x25F3C4);
}

void sub_260074(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a2)
  {
    if (a70 < 0)
    {
      operator delete(__p);
    }

    sub_175F78((v71 - 152));
    STACK[0x2E0] = &a34;
    sub_D02B4(&STACK[0x2E0]);
    sub_260730(&a37);
    sub_53BA4(&a71);
    if (a2 == 3)
    {
      v74 = __cxa_begin_catch(a1);
      v75 = sub_5544(8);
      v76 = *v75;
      if (*v75 && os_log_type_enabled(*v75, OS_LOG_TYPE_ERROR))
      {
        sub_22170(&a71, v74[2]);
        if (SLOBYTE(STACK[0x20F]) >= 0)
        {
          v77 = &a71;
        }

        else
        {
          v77 = a71;
        }

        LODWORD(STACK[0x220]) = 136315650;
        STACK[0x224] = "RoutingManager.cpp";
        LOWORD(STACK[0x22C]) = 1024;
        LODWORD(STACK[0x22E]) = 3512;
        LOWORD(STACK[0x232]) = 2080;
        STACK[0x234] = v77;
        _os_log_impl(&dword_0, v76, OS_LOG_TYPE_ERROR, "%25s:%-5d CAException thrown during mRoutingHandlerDispatcher->ProcessRoute: '%s'.", &STACK[0x220], 0x1Cu);
        if (SLOBYTE(STACK[0x20F]) < 0)
        {
          operator delete(a71);
        }
      }
    }

    else
    {
      v78 = __cxa_begin_catch(a1);
      if (a2 == 2)
      {
        v79 = v78;
        v80 = sub_5544(8);
        v81 = *v80;
        if (*v80 && os_log_type_enabled(*v80, OS_LOG_TYPE_ERROR))
        {
          v82 = (*(*v79 + 16))(v79);
          LODWORD(STACK[0x220]) = 136315650;
          STACK[0x224] = "RoutingManager.cpp";
          LOWORD(STACK[0x22C]) = 1024;
          LODWORD(STACK[0x22E]) = 3517;
          LOWORD(STACK[0x232]) = 2080;
          STACK[0x234] = v82;
          _os_log_impl(&dword_0, v81, OS_LOG_TYPE_ERROR, "%25s:%-5d Standard Library exception thrown during mRoutingHandlerDispatcher->ProcessRoute: %s.", &STACK[0x220], 0x1Cu);
        }
      }

      else
      {
        v83 = sub_5544(8);
        v84 = *v83;
        if (*v83 && os_log_type_enabled(*v83, OS_LOG_TYPE_ERROR))
        {
          LODWORD(STACK[0x220]) = 136315394;
          STACK[0x224] = "RoutingManager.cpp";
          LOWORD(STACK[0x22C]) = 1024;
          LODWORD(STACK[0x22E]) = 3519;
          _os_log_impl(&dword_0, v84, OS_LOG_TYPE_ERROR, "%25s:%-5d Unknown exception thrown during mRoutingHandlerDispatcher->ProcessRoute.", &STACK[0x220], 0x12u);
        }
      }
    }

    __cxa_end_catch();
    JUMPOUT(0x25FE9CLL);
  }

  JUMPOUT(0x260170);
}

void sub_260084(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a2)
  {
    if (SLOBYTE(STACK[0x237]) < 0)
    {
      operator delete(STACK[0x220]);
    }

    if (a70 < 0)
    {
      operator delete(a65);
    }

    JUMPOUT(0x2601B4);
  }

  JUMPOUT(0x260170);
}

void sub_2600BC(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a2)
  {
    sub_175F78(v71 - 152);
    STACK[0x2E0] = &a34;
    sub_D02B4(&STACK[0x2E0]);
    sub_260730(&a37);
    sub_53BA4(&a71);
    if (a2 == 3)
    {
      v74 = __cxa_begin_catch(a1);
      v75 = sub_5544(8);
      v76 = *v75;
      if (*v75 && os_log_type_enabled(*v75, OS_LOG_TYPE_ERROR))
      {
        sub_22170(&a71, v74[2]);
        if (SLOBYTE(STACK[0x20F]) >= 0)
        {
          v77 = &a71;
        }

        else
        {
          v77 = a71;
        }

        LODWORD(STACK[0x220]) = 136315650;
        STACK[0x224] = "RoutingManager.cpp";
        LOWORD(STACK[0x22C]) = 1024;
        LODWORD(STACK[0x22E]) = 3512;
        LOWORD(STACK[0x232]) = 2080;
        STACK[0x234] = v77;
        _os_log_impl(&dword_0, v76, OS_LOG_TYPE_ERROR, "%25s:%-5d CAException thrown during mRoutingHandlerDispatcher->ProcessRoute: '%s'.", &STACK[0x220], 0x1Cu);
        if (SLOBYTE(STACK[0x20F]) < 0)
        {
          operator delete(a71);
        }
      }
    }

    else
    {
      v78 = __cxa_begin_catch(a1);
      if (a2 == 2)
      {
        v79 = v78;
        v80 = sub_5544(8);
        v81 = *v80;
        if (*v80 && os_log_type_enabled(*v80, OS_LOG_TYPE_ERROR))
        {
          v82 = (*(*v79 + 16))(v79);
          LODWORD(STACK[0x220]) = 136315650;
          STACK[0x224] = "RoutingManager.cpp";
          LOWORD(STACK[0x22C]) = 1024;
          LODWORD(STACK[0x22E]) = 3517;
          LOWORD(STACK[0x232]) = 2080;
          STACK[0x234] = v82;
          _os_log_impl(&dword_0, v81, OS_LOG_TYPE_ERROR, "%25s:%-5d Standard Library exception thrown during mRoutingHandlerDispatcher->ProcessRoute: %s.", &STACK[0x220], 0x1Cu);
        }
      }

      else
      {
        v83 = sub_5544(8);
        v84 = *v83;
        if (*v83 && os_log_type_enabled(*v83, OS_LOG_TYPE_ERROR))
        {
          LODWORD(STACK[0x220]) = 136315394;
          STACK[0x224] = "RoutingManager.cpp";
          LOWORD(STACK[0x22C]) = 1024;
          LODWORD(STACK[0x22E]) = 3519;
          _os_log_impl(&dword_0, v84, OS_LOG_TYPE_ERROR, "%25s:%-5d Unknown exception thrown during mRoutingHandlerDispatcher->ProcessRoute.", &STACK[0x220], 0x12u);
        }
      }
    }

    __cxa_end_catch();
    JUMPOUT(0x25FE9CLL);
  }

  JUMPOUT(0x260170);
}

void sub_2600CC(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a2)
  {
    sub_65310(&STACK[0x2E0]);
    sub_175F78((v71 - 152));
    STACK[0x2E0] = &a34;
    sub_D02B4(&STACK[0x2E0]);
    sub_260730(&a37);
    sub_53BA4(&a71);
    if (a2 == 3)
    {
      v74 = __cxa_begin_catch(a1);
      v75 = sub_5544(8);
      v76 = *v75;
      if (*v75 && os_log_type_enabled(*v75, OS_LOG_TYPE_ERROR))
      {
        sub_22170(&a71, v74[2]);
        if (SLOBYTE(STACK[0x20F]) >= 0)
        {
          v77 = &a71;
        }

        else
        {
          v77 = a71;
        }

        LODWORD(STACK[0x220]) = 136315650;
        STACK[0x224] = "RoutingManager.cpp";
        LOWORD(STACK[0x22C]) = 1024;
        LODWORD(STACK[0x22E]) = 3512;
        LOWORD(STACK[0x232]) = 2080;
        STACK[0x234] = v77;
        _os_log_impl(&dword_0, v76, OS_LOG_TYPE_ERROR, "%25s:%-5d CAException thrown during mRoutingHandlerDispatcher->ProcessRoute: '%s'.", &STACK[0x220], 0x1Cu);
        if (SLOBYTE(STACK[0x20F]) < 0)
        {
          operator delete(a71);
        }
      }
    }

    else
    {
      v78 = __cxa_begin_catch(a1);
      if (a2 == 2)
      {
        v79 = v78;
        v80 = sub_5544(8);
        v81 = *v80;
        if (*v80 && os_log_type_enabled(*v80, OS_LOG_TYPE_ERROR))
        {
          v82 = (*(*v79 + 16))(v79);
          LODWORD(STACK[0x220]) = 136315650;
          STACK[0x224] = "RoutingManager.cpp";
          LOWORD(STACK[0x22C]) = 1024;
          LODWORD(STACK[0x22E]) = 3517;
          LOWORD(STACK[0x232]) = 2080;
          STACK[0x234] = v82;
          _os_log_impl(&dword_0, v81, OS_LOG_TYPE_ERROR, "%25s:%-5d Standard Library exception thrown during mRoutingHandlerDispatcher->ProcessRoute: %s.", &STACK[0x220], 0x1Cu);
        }
      }

      else
      {
        v83 = sub_5544(8);
        v84 = *v83;
        if (*v83 && os_log_type_enabled(*v83, OS_LOG_TYPE_ERROR))
        {
          LODWORD(STACK[0x220]) = 136315394;
          STACK[0x224] = "RoutingManager.cpp";
          LOWORD(STACK[0x22C]) = 1024;
          LODWORD(STACK[0x22E]) = 3519;
          _os_log_impl(&dword_0, v84, OS_LOG_TYPE_ERROR, "%25s:%-5d Unknown exception thrown during mRoutingHandlerDispatcher->ProcessRoute.", &STACK[0x220], 0x12u);
        }
      }
    }

    __cxa_end_catch();
    JUMPOUT(0x25FE9CLL);
  }

  JUMPOUT(0x260170);
}

void sub_2600E4(uint64_t a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x2600F0);
  }

  JUMPOUT(0x260170);
}

void sub_260100(uint64_t a1, int a2)
{
  if (a2)
  {
    __cxa_free_exception(v2);
    JUMPOUT(0x2601E0);
  }

  JUMPOUT(0x260170);
}

void sub_260118(uint64_t a1, int a2)
{
  if (a2)
  {
    (sub_477A0)();
    if (v2)
    {
      operator delete(v2);
    }

    JUMPOUT(0x2601D0);
  }

  JUMPOUT(0x260170);
}

void sub_260148(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47)
{
  sub_477A0(a47);
  if (*(a24 + 56) == 1)
  {
    sub_175F78((a24 + 24));
  }

  _Unwind_Resume(a1);
}

void sub_26017C(uint64_t a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x2601E0);
  }

  JUMPOUT(0x260170);
}

void sub_260190(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a2)
  {
    __cxa_free_exception(v71);
    sub_175F78((v72 - 152));
    STACK[0x2E0] = &a34;
    sub_D02B4(&STACK[0x2E0]);
    sub_260730(&a37);
    sub_53BA4(&a71);
    if (a2 == 3)
    {
      v75 = __cxa_begin_catch(a1);
      v76 = sub_5544(8);
      v77 = *v76;
      if (*v76 && os_log_type_enabled(*v76, OS_LOG_TYPE_ERROR))
      {
        sub_22170(&a71, v75[2]);
        if (SLOBYTE(STACK[0x20F]) >= 0)
        {
          v78 = &a71;
        }

        else
        {
          v78 = a71;
        }

        LODWORD(STACK[0x220]) = 136315650;
        STACK[0x224] = "RoutingManager.cpp";
        LOWORD(STACK[0x22C]) = 1024;
        LODWORD(STACK[0x22E]) = 3512;
        LOWORD(STACK[0x232]) = 2080;
        STACK[0x234] = v78;
        _os_log_impl(&dword_0, v77, OS_LOG_TYPE_ERROR, "%25s:%-5d CAException thrown during mRoutingHandlerDispatcher->ProcessRoute: '%s'.", &STACK[0x220], 0x1Cu);
        if (SLOBYTE(STACK[0x20F]) < 0)
        {
          operator delete(a71);
        }
      }
    }

    else
    {
      v79 = __cxa_begin_catch(a1);
      if (a2 == 2)
      {
        v80 = v79;
        v81 = sub_5544(8);
        v82 = *v81;
        if (*v81 && os_log_type_enabled(*v81, OS_LOG_TYPE_ERROR))
        {
          v83 = (*(*v80 + 16))(v80);
          LODWORD(STACK[0x220]) = 136315650;
          STACK[0x224] = "RoutingManager.cpp";
          LOWORD(STACK[0x22C]) = 1024;
          LODWORD(STACK[0x22E]) = 3517;
          LOWORD(STACK[0x232]) = 2080;
          STACK[0x234] = v83;
          _os_log_impl(&dword_0, v82, OS_LOG_TYPE_ERROR, "%25s:%-5d Standard Library exception thrown during mRoutingHandlerDispatcher->ProcessRoute: %s.", &STACK[0x220], 0x1Cu);
        }
      }

      else
      {
        v84 = sub_5544(8);
        v85 = *v84;
        if (*v84 && os_log_type_enabled(*v84, OS_LOG_TYPE_ERROR))
        {
          LODWORD(STACK[0x220]) = 136315394;
          STACK[0x224] = "RoutingManager.cpp";
          LOWORD(STACK[0x22C]) = 1024;
          LODWORD(STACK[0x22E]) = 3519;
          _os_log_impl(&dword_0, v85, OS_LOG_TYPE_ERROR, "%25s:%-5d Unknown exception thrown during mRoutingHandlerDispatcher->ProcessRoute.", &STACK[0x220], 0x12u);
        }
      }
    }

    __cxa_end_catch();
    JUMPOUT(0x25FE9CLL);
  }

  JUMPOUT(0x260170);
}

void sub_2601A8(uint64_t a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x2601B4);
  }

  JUMPOUT(0x260170);
}

void sub_260414(uint64_t a1, void *a2, void *a3)
{
  if (!*(a1 + 16))
  {
    goto LABEL_35;
  }

  v6 = *a1;
  v8 = (a1 + 8);
  v7 = *(a1 + 8);
  *a1 = a1 + 8;
  *(v7 + 16) = 0;
  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  if (v6[1])
  {
    v9 = v6[1];
  }

  else
  {
    v9 = v6;
  }

  if (!v9)
  {
    v12 = 0;
LABEL_34:
    sub_4B0F4(v12);
    goto LABEL_35;
  }

  v10 = sub_1658B4(v9);
  if (a2 == a3)
  {
    v11 = v9;
  }

  else
  {
    v13 = a2;
    do
    {
      v11 = v10;
      v15 = v13[4];
      v14 = v13[5];
      if (v14)
      {
        atomic_fetch_add_explicit((v14 + 16), 1uLL, memory_order_relaxed);
      }

      v16 = v9[5];
      v9[4] = v15;
      v9[5] = v14;
      if (v16)
      {
        std::__shared_weak_count::__release_weak(v16);
      }

      v17 = *v8;
      v18 = (a1 + 8);
      v19 = (a1 + 8);
      if (*v8)
      {
        do
        {
          while (1)
          {
            v18 = v17;
            if (!sub_16B7FC(v9 + 4, v17 + 4))
            {
              break;
            }

            v17 = *v18;
            v19 = v18;
            if (!*v18)
            {
              goto LABEL_20;
            }
          }

          v17 = v18[1];
        }

        while (v17);
        v19 = v18 + 1;
      }

LABEL_20:
      sub_46B44(a1, v18, v19, v9);
      if (v10)
      {
        v10 = sub_1658B4(v10);
      }

      else
      {
        v10 = 0;
      }

      v20 = v13[1];
      if (v20)
      {
        do
        {
          a2 = v20;
          v20 = *v20;
        }

        while (v20);
      }

      else
      {
        do
        {
          a2 = v13[2];
          v21 = *a2 == v13;
          v13 = a2;
        }

        while (!v21);
      }

      if (!v11)
      {
        break;
      }

      v9 = v11;
      v13 = a2;
    }

    while (a2 != a3);
  }

  sub_4B0F4(v11);
  if (v10)
  {
    for (i = v10[2]; i; i = i[2])
    {
      v10 = i;
    }

    v12 = v10;
    goto LABEL_34;
  }

LABEL_35:
  if (a2 != a3)
  {
    operator new();
  }
}

void sub_260684(uint64_t a1, int a2, __int128 *a3)
{
  v6 = *a3;
  sub_175EEC(v7, (a3 + 1));
  v8 = *(a3 + 20);
  v9 = 1;
  *a1 = 0;
  *(a1 + 4) = a2;
  sub_20309C(a1 + 8, &v6);
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  if (v9 == 1)
  {
    sub_175F78(v7);
  }
}

void sub_260710(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  if (a15 == 1)
  {
    sub_175F78((v15 + 16));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_260730(uint64_t a1)
{
  if (std::uncaught_exceptions() > *a1)
  {
    (*(**(*(a1 + 8) + 24) + 16))(*(*(a1 + 8) + 24), a1 + 16);
  }

  sub_477A0(*(a1 + 24));
  return a1;
}

uint64_t sub_2607A0(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  if (a1 == a2)
  {
    v13 = *(a2 + 56);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 56) = v13;
  }

  else
  {
    sub_16B928((a1 + 8), *(a2 + 8), *(a2 + 16), (*(a2 + 16) - *(a2 + 8)) >> 2);
    sub_4ABC8((a1 + 32), *(a2 + 32), (a2 + 40));
    v4 = *(a2 + 56);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 56) = v4;
    v5 = a2 + 72;
    v6 = (a1 + 72);
    v7 = *(a2 + 80);
    v8 = *(a1 + 80);
    if (v7 != a2 + 72 && v8 != v6)
    {
      do
      {
        v8[4] = *(v7 + 16);
        v7 = *(v7 + 8);
        v8 = *(v8 + 1);
      }

      while (v7 != v5 && v8 != v6);
    }

    if (v8 == v6)
    {
      if (v7 != v5)
      {
        operator new();
      }
    }

    else
    {
      v10 = *(*(a1 + 72) + 8);
      v11 = *v8;
      *(v11 + 8) = v10;
      *v10 = v11;
      do
      {
        v12 = *(v8 + 1);
        --*(a1 + 88);
        operator delete(v8);
        v8 = v12;
      }

      while (v12 != v6);
    }
  }

  *(a1 + 96) = *(a2 + 96);
  sub_1F2EE0(v31, a2 + 104);
  v14 = a1 + 104;
  if ((a1 + 104) != v31)
  {
    v15 = v32;
    v16 = *(a1 + 128);
    if (v32 == v31)
    {
      if (v16 == v14)
      {
        (*(*v32 + 24))();
        (*(*v32 + 32))(v32);
        v32 = 0;
        (*(**(a1 + 128) + 24))(*(a1 + 128), v31);
        (*(**(a1 + 128) + 32))(*(a1 + 128));
        *(a1 + 128) = 0;
        v32 = v31;
        (*(v33[0] + 24))(v33, a1 + 104);
        (*(v33[0] + 32))(v33);
      }

      else
      {
        (*(*v32 + 24))();
        (*(*v32 + 32))(v32);
        v32 = *(a1 + 128);
      }

      *(a1 + 128) = v14;
    }

    else if (v16 == v14)
    {
      (*(*v16 + 24))(*(a1 + 128), v31);
      (*(**(a1 + 128) + 32))(*(a1 + 128));
      *(a1 + 128) = v32;
      v32 = v31;
    }

    else
    {
      v32 = *(a1 + 128);
      *(a1 + 128) = v15;
    }
  }

  sub_1F375C(v31);
  sub_1F2F78(v31, a2 + 136);
  v17 = a1 + 136;
  if ((a1 + 136) != v31)
  {
    v18 = v32;
    v19 = *(a1 + 160);
    if (v32 == v31)
    {
      if (v19 == v17)
      {
        (*(*v32 + 24))();
        (*(*v32 + 32))(v32);
        v32 = 0;
        (*(**(a1 + 160) + 24))(*(a1 + 160), v31);
        (*(**(a1 + 160) + 32))(*(a1 + 160));
        *(a1 + 160) = 0;
        v32 = v31;
        (*(v33[0] + 24))(v33, a1 + 136);
        (*(v33[0] + 32))(v33);
      }

      else
      {
        (*(*v32 + 24))();
        (*(*v32 + 32))(v32);
        v32 = *(a1 + 160);
      }

      *(a1 + 160) = v17;
    }

    else if (v19 == v17)
    {
      (*(*v19 + 24))(*(a1 + 160), v31);
      (*(**(a1 + 160) + 32))(*(a1 + 160));
      *(a1 + 160) = v32;
      v32 = v31;
    }

    else
    {
      v32 = *(a1 + 160);
      *(a1 + 160) = v18;
    }
  }

  sub_1F36DC(v31);
  sub_1F3010(v31, a2 + 168);
  v20 = a1 + 168;
  if ((a1 + 168) != v31)
  {
    v21 = v32;
    v22 = *(a1 + 192);
    if (v32 == v31)
    {
      if (v22 == v20)
      {
        (*(*v32 + 24))();
        (*(*v32 + 32))(v32);
        v32 = 0;
        (*(**(a1 + 192) + 24))(*(a1 + 192), v31);
        (*(**(a1 + 192) + 32))(*(a1 + 192));
        *(a1 + 192) = 0;
        v32 = v31;
        (*(v33[0] + 24))(v33, a1 + 168);
        (*(v33[0] + 32))(v33);
      }

      else
      {
        (*(*v32 + 24))();
        (*(*v32 + 32))(v32);
        v32 = *(a1 + 192);
      }

      *(a1 + 192) = v20;
    }

    else if (v22 == v20)
    {
      (*(*v22 + 24))(*(a1 + 192), v31);
      (*(**(a1 + 192) + 32))(*(a1 + 192));
      *(a1 + 192) = v32;
      v32 = v31;
    }

    else
    {
      v32 = *(a1 + 192);
      *(a1 + 192) = v21;
    }
  }

  sub_1F365C(v31);
  sub_1F30A8(v31, a2 + 200);
  v23 = a1 + 200;
  if ((a1 + 200) != v31)
  {
    v24 = v32;
    v25 = *(a1 + 224);
    if (v32 == v31)
    {
      if (v25 == v23)
      {
        (*(*v32 + 24))();
        (*(*v32 + 32))(v32);
        v32 = 0;
        (*(**(a1 + 224) + 24))(*(a1 + 224), v31);
        (*(**(a1 + 224) + 32))(*(a1 + 224));
        *(a1 + 224) = 0;
        v32 = v31;
        (*(v33[0] + 24))(v33, a1 + 200);
        (*(v33[0] + 32))(v33);
      }

      else
      {
        (*(*v32 + 24))();
        (*(*v32 + 32))(v32);
        v32 = *(a1 + 224);
      }

      *(a1 + 224) = v23;
    }

    else if (v25 == v23)
    {
      (*(*v25 + 24))(*(a1 + 224), v31);
      (*(**(a1 + 224) + 32))(*(a1 + 224));
      *(a1 + 224) = v32;
      v32 = v31;
    }

    else
    {
      v32 = *(a1 + 224);
      *(a1 + 224) = v24;
    }
  }

  sub_1F35DC(v31);
  sub_1F3140(v31, a2 + 232);
  v26 = a1 + 232;
  if ((a1 + 232) != v31)
  {
    v27 = v32;
    v28 = *(a1 + 256);
    if (v32 == v31)
    {
      if (v28 == v26)
      {
        (*(*v32 + 24))();
        (*(*v32 + 32))(v32);
        v32 = 0;
        (*(**(a1 + 256) + 24))(*(a1 + 256), v31);
        (*(**(a1 + 256) + 32))(*(a1 + 256));
        *(a1 + 256) = 0;
        v32 = v31;
        (*(v33[0] + 24))(v33, a1 + 232);
        (*(v33[0] + 32))(v33);
      }

      else
      {
        (*(*v32 + 24))();
        (*(*v32 + 32))(v32);
        v32 = *(a1 + 256);
      }

      *(a1 + 256) = v26;
    }

    else if (v28 == v26)
    {
      (*(*v28 + 24))(*(a1 + 256), v31);
      (*(**(a1 + 256) + 32))(*(a1 + 256));
      *(a1 + 256) = v32;
      v32 = v31;
    }

    else
    {
      v32 = *(a1 + 256);
      *(a1 + 256) = v27;
    }
  }

  sub_1F355C(v31);
  if (a1 != a2)
  {
    sub_D03B8((a1 + 264), *(a2 + 264), *(a2 + 272), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 272) - *(a2 + 264)) >> 3));
    sub_D03B8((a1 + 288), *(a2 + 288), *(a2 + 296), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 296) - *(a2 + 288)) >> 3));
    *(a1 + 344) = *(a2 + 344);
    sub_D055C((a1 + 312), *(a2 + 328));
    *(a1 + 384) = *(a2 + 384);
    sub_D055C((a1 + 352), *(a2 + 368));
    *(a1 + 424) = *(a2 + 424);
    sub_D055C((a1 + 392), *(a2 + 408));
  }

  v29 = *(a2 + 432);
  *(a1 + 436) = *(a2 + 436);
  *(a1 + 432) = v29;
  sub_1789EC((a1 + 440), (a2 + 440));
  return a1;
}

void sub_26152C(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_1CC130(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_261594(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a3;
  }

  v4 = a1;
  v5 = 0;
  v6 = a3;
  do
  {
    sub_261684(v6, v4);
    v4 += 472;
    v6 += 472;
    v5 -= 472;
  }

  while (v4 != a2);
  return v6;
}

void sub_261630(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x8AD8F2FBA93869)
  {
    sub_1F3B44(a2);
  }

  sub_189A00();
}

uint64_t sub_261684(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  sub_46980(a1 + 8, *(a2 + 8), *(a2 + 16), (*(a2 + 16) - *(a2 + 8)) >> 2);
  sub_44E44((a1 + 32), a2 + 32);
  v4 = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 56) = v4;
  sub_1F3BA0((a1 + 72), a2 + 72);
  *(a1 + 96) = *(a2 + 96);
  sub_1F2EE0(a1 + 104, a2 + 104);
  sub_1F2F78(a1 + 136, a2 + 136);
  sub_1F3010(a1 + 168, a2 + 168);
  sub_1F30A8(a1 + 200, a2 + 200);
  sub_1F3140(a1 + 232, a2 + 232);
  sub_7FF98((a1 + 264), (a2 + 264));
  *(a1 + 432) = *(a2 + 432);
  sub_80534((a1 + 440), (a2 + 440));
  return a1;
}

void sub_26176C(_Unwind_Exception *a1)
{
  sub_1F1DE0((v1 + 264));
  sub_1F355C(v1 + 232);
  sub_1F35DC(v1 + 200);
  sub_1F365C(v1 + 168);
  sub_1F36DC(v1 + 136);
  sub_1F375C(v1 + 104);
  sub_4E0BC((v1 + 72));
  sub_477A0(*(v1 + 40));
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 16) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(a1);
}

void sub_261808(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2 + 60;
  v4 = sub_5544(8);
  v5 = sub_5544(35);
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
      if ((v7 & 1) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_9;
    }
  }

  if ((v7 & v8) == 0)
  {
    v4 = v5;
  }

  if (*(v4 + 8))
  {
LABEL_9:
    v9 = *v4;
    if (v9 && os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      sub_238844(&__p, *(a1 + 8), (a1 + 16));
      v10 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
      *buf = 136315650;
      *&buf[4] = "RouteCache.cpp";
      v36 = 1024;
      v37 = 523;
      v38 = 2080;
      v39 = v10;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEBUG, "%25s:%-5d Clearing %s from Route Cache", buf, 0x1Cu);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }
  }

LABEL_16:
  v11 = *(a1 + 8);
  if (v11 != (a1 + 16))
  {
    do
    {
      v12 = *(v11 + 28);
      v33 = v12;
      v13 = v2[61];
      if (v13 != v3)
      {
        while (v13[2] != v12)
        {
          v13 = v13[1];
          if (v13 == v3)
          {
            goto LABEL_23;
          }
        }
      }

      if (v13 == v3)
      {
LABEL_23:
        v16 = sub_5544(8);
        v17 = sub_5544(35);
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
              goto LABEL_37;
            }

            goto LABEL_31;
          }
        }

        if ((v19 & v20) == 0)
        {
          v16 = v17;
        }

        if (*(v16 + 8))
        {
LABEL_31:
          v21 = *v16;
          if (v21 && os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
          {
            sub_68108(&__p, &v33);
            p_p = &__p;
            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              p_p = __p.__r_.__value_.__r.__words[0];
            }

            *buf = 136315650;
            *&buf[4] = "RouteCache.cpp";
            v36 = 1024;
            v37 = 527;
            v38 = 2080;
            v39 = p_p;
            _os_log_impl(&dword_0, v21, OS_LOG_TYPE_DEBUG, "%25s:%-5d Unable to find device type %s within route cache", buf, 0x1Cu);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }
          }
        }
      }

      else
      {
        v15 = *v13;
        v14 = v13[1];
        *(v15 + 8) = v14;
        *v14 = v15;
        --v2[62];
        sub_15B570(v13);
      }

LABEL_37:
      v23 = v11[1];
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
          v24 = v11[2];
          v25 = *v24 == v11;
          v11 = v24;
        }

        while (!v25);
      }

      v11 = v24;
    }

    while (v24 != (a1 + 16));
  }

  v26 = sub_5544(8);
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
      if ((v29 & 1) == 0)
      {
        return;
      }

      goto LABEL_51;
    }
  }

  if ((v29 & v30) == 0)
  {
    v26 = v27;
  }

  if (*(v26 + 8))
  {
LABEL_51:
    v31 = *v26;
    if (v31 && os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
    {
      sub_238988(&__p, (v2 + 60));
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v32 = &__p;
      }

      else
      {
        v32 = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 136315650;
      *&buf[4] = "RouteCache.cpp";
      v36 = 1024;
      v37 = 533;
      v38 = 2080;
      v39 = v32;
      _os_log_impl(&dword_0, v31, OS_LOG_TYPE_DEBUG, "%25s:%-5d Updated Route Cache: %s", buf, 0x1Cu);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }
  }
}

void sub_261C64(void **a1)
{
  sub_477A0(a1[2]);

  operator delete(a1);
}

uint64_t sub_261CA8(uint64_t a1, void *a2)
{
  *a2 = off_6BC570;
  result = sub_144968((a2 + 1), (a1 + 8));
  a2[4] = *(a1 + 32);
  return result;
}

void sub_261D7C(uint64_t a1)
{
  *a1 = off_6BC570;
  sub_477A0(*(a1 + 16));

  operator delete();
}

uint64_t sub_261DE4(uint64_t a1)
{
  *a1 = off_6BC570;
  sub_477A0(*(a1 + 16));
  return a1;
}

std::string *sub_261E2C(std::string *a1, void *a2, void *a3)
{
  a1->__r_.__value_.__r.__words[0] = 0;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  std::string::append(a1, "{ ", 2uLL);
  if (a2 != a3)
  {
    while (1)
    {
      v7 = *(a2 + 55);
      v8 = v7 >= 0 ? (a2 + 4) : a2[4];
      v9 = v7 >= 0 ? *(a2 + 55) : a2[5];
      std::string::append(a1, v8, v9);
      v10 = a2[1];
      if (v10)
      {
        do
        {
          v11 = v10;
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        do
        {
          v11 = a2[2];
          v12 = *v11 == a2;
          a2 = v11;
        }

        while (!v12);
      }

      if (v11 == a3)
      {
        break;
      }

      std::string::append(a1, ", ", 2uLL);
      a2 = v11;
    }
  }

  return std::string::append(a1, " }", 2uLL);
}

void sub_261F14(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_261F34(uint64_t a1)
{
  sub_178A90(*(a1 + 32));
  sub_98A08(*(a1 + 8));
  return a1;
}

void *sub_261F68(uint64_t a1, void **a2)
{
  result = sub_6F86C(a1, &v3, a2);
  if (!*result)
  {
    operator new();
  }

  return result;
}

uint64_t sub_262018(uint64_t a1)
{
  if (*(a1 + 304) == 1 && *(a1 + 303) < 0)
  {
    operator delete(*(a1 + 280));
  }

  if (*(a1 + 248) == 1)
  {
    v2 = *(a1 + 240);
    if (v2)
    {
      CFRelease(v2);
    }

    v3 = *(a1 + 224);
    if (v3)
    {
      std::__shared_weak_count::__release_weak(v3);
    }
  }

  if (*(a1 + 176) == 1 && *(a1 + 175) < 0)
  {
    operator delete(*(a1 + 152));
  }

  sub_C31F4(*(a1 + 80));
  v4 = *(a1 + 64);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  return a1;
}

BOOL sub_2620B0(uint64_t *a1, uint64_t *a2)
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
    v14 = v7 == 0;
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

  v14 = v7 == v11;
  sub_1A8C0(v13);
  if (v12)
  {
LABEL_21:
    sub_1A8C0(v12);
  }

LABEL_22:
  if (!v14)
  {
    v15 = 0;
    if (!v10)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  v15 = sub_CBFB4(a1[2], a1[3], a2[2], a2[3]);
  if (v10)
  {
LABEL_26:
    std::__shared_weak_count::__release_weak(v10);
  }

LABEL_27:
  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }

  return v15;
}

uint64_t sub_26220C(uint64_t a1)
{
  if (*(a1 + 112) == 1 && *(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  sub_4B0F4(*(a1 + 64));
  sub_4B0F4(*(a1 + 40));
  sub_CC3DC((a1 + 8));
  return a1;
}

void sub_262264(unint64_t a1)
{
  if (a1 < 0x1C71C71C71C71C8)
  {
    operator new();
  }

  sub_6ACD8();
}

void sub_2622C0(unint64_t a1)
{
  if (a1 < 0xC7CE0C7CE0C7CFLL)
  {
    operator new();
  }

  sub_6ACD8();
}

uint64_t sub_26231C(uint64_t a1)
{
  if (*(a1 + 136) == 1)
  {
    v2 = *(a1 + 128);
    if (v2)
    {
      CFRelease(v2);
    }

    v3 = *(a1 + 112);
    if (v3)
    {
      std::__shared_weak_count::__release_weak(v3);
    }
  }

  if (*(a1 + 64) == 1 && *(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  return a1;
}

void sub_262384(unsigned int **a1, unsigned int **a2)
{
  if (a1 != a2)
  {
    v3 = a1;
    do
    {
      if (*v3[1] - 5 >= 0xFFFFFFFE)
      {
        v4 = sub_5544(8);
        if (*(v4 + 8))
        {
          v5 = *v4;
          if (*v4)
          {
            if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEBUG))
            {
              sub_109694(&__p, *v3);
              p_p = &__p;
              if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                p_p = __p.__r_.__value_.__r.__words[0];
              }

              *buf = 136315650;
              v9 = "RoutingManager.cpp";
              v10 = 1024;
              v11 = 3620;
              v12 = 2080;
              v13 = p_p;
              _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEBUG, "%25s:%-5d - Changing Reconfiguration Context to Change for %s.", buf, 0x1Cu);
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }
            }
          }
        }

        *v3[1] = 2;
      }

      v3 += 2;
    }

    while (v3 != a2);
  }
}

uint64_t sub_2624F0(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return a1;
}

uint64_t sub_262530(uint64_t a1)
{
  if (*(a1 + 56) == 1)
  {
    v2 = *(a1 + 48);
    if (v2)
    {
      CFRelease(v2);
    }

    v3 = *(a1 + 32);
    if (v3)
    {
      std::__shared_weak_count::__release_weak(v3);
    }
  }

  return a1;
}

uint64_t sub_2626B0(uint64_t a1)
{
  sub_4B14C(*(a1 + 32));
  sub_4B0F4(*(a1 + 8));
  return a1;
}

void sub_2626E4(uint64_t *a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    a1[2] = 0;
    if (v2 != a1)
    {
      do
      {
        v5 = v2[1];
        sub_65310(v2 + 6);
        sub_65310(v2 + 3);
        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }
}

void sub_262760(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  sub_27A4();
  v8 = atomic_load(&qword_6E9558);
  if (v8 != pthread_self())
  {
    v16 = sub_5544(14);
    v17 = *v16;
    if (*v16 && os_log_type_enabled(*v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "RoutingManager.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 2892;
      _os_log_impl(&dword_0, v17, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  if (!*(a3 + 16))
  {
    v19 = sub_5544(14);
    v20 = *v19;
    if (*v19 && os_log_type_enabled(*v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "RoutingManager.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 2893;
      _os_log_impl(&dword_0, v20, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    v21 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v21, "Precondition failure.");
  }

  v9 = sub_5544(8);
  if (*(v9 + 8))
  {
    v10 = *v9;
    if (*v9)
    {
      if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEBUG))
      {
        sub_FC33C(__p, a5);
        v11 = v28[6] >= 0 ? __p : __p[0];
        *buf = 136315650;
        *&buf[4] = "RoutingManager.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 2896;
        *&buf[18] = 2080;
        v33 = v11;
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEBUG, "%25s:%-5d Activating for category kVirtualAudioPlugInRoutingCategoryMulti.  Override port: %s", buf, 0x1Cu);
        if ((v28[6] & 0x80000000) != 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  sub_20301C(a1, 1);
  v12 = a5[1];
  if (v12)
  {
    v13 = std::__shared_weak_count::lock(v12);
    if (v13)
    {
      v22 = *a5 == 0;
      sub_1A8C0(v13);
    }
  }

  memset(v31, 0, sizeof(v31));
  v14 = *(a3 + 32) == 1668510820;
  *&buf[3] = *(a4 + 8);
  v27 = v14;
  *v28 = *buf;
  *&v28[15] = *&buf[15];
  __p[0] = a3;
  __p[1] = (a4 + 24);
  v29 = 0;
  v30 = 0;
  v15 = sub_456B8(__p);
  if (__p[0] != v15)
  {
    sub_7D234(&v25, a2, v15 + 16, a3, a4);
  }

  sub_7C94C(v31, a2 + 528);
  *buf = v31;
  sub_86D0C(buf);
}

void sub_263A98(uint64_t a1, uint64_t *a2, void *a3, unsigned int a4, uint64_t *a5, uint64_t a6, size_t *a7)
{
  v12 = a4;
  v13 = a3[1] - *a3;
  v14 = sub_5544(8);
  v15 = *(v14 + 8);
  if (v12 >= v13 >> 3)
  {
    if (v15)
    {
      v53 = *v14;
      if (*v14)
      {
        if (os_log_type_enabled(*v14, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315650;
          *&buf[4] = "RoutingManager.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 5748;
          v108 = 1024;
          *v109 = a4;
          _os_log_impl(&dword_0, v53, OS_LOG_TYPE_DEBUG, "%25s:%-5d Attempting to activate after reviewing and successfully building concrete route for %u alternate device specifications...", buf, 0x18u);
        }
      }
    }

    v54 = sub_5544(8);
    if (*(v54 + 8))
    {
      v55 = *v54;
      if (*v54)
      {
        if (os_log_type_enabled(*v54, OS_LOG_TYPE_DEBUG))
        {
          sub_3FE8E8(&v93, a6);
          v56 = (v93.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v93 : v93.__r_.__value_.__r.__words[0];
          *buf = 136315650;
          *&buf[4] = "RoutingManager.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 5749;
          v108 = 2080;
          *v109 = v56;
          _os_log_impl(&dword_0, v55, OS_LOG_TYPE_DEBUG, "%25s:%-5d Route(s): %s.", buf, 0x1Cu);
          if (SHIBYTE(v93.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v93.__r_.__value_.__l.__data_);
          }
        }
      }
    }

    (*(*a5 + 16))(a5, a6);
    if (*a1)
    {
      v57 = *a6;
      v58 = *(a6 + 8);
      if (*a6 != v58)
      {
        do
        {
          v59 = (*v57 + 4);
          for (i = *(*v57 + 3); i != v59; i = i[1])
          {
            sub_25704(buf, i + 2, "", 115);
            v61 = (*(**buf + 160))(*buf);
            if (*&buf[8])
            {
              sub_1A8C0(*&buf[8]);
            }

            if ((v61 & 1) == 0)
            {
              sub_B0148(a7, i + 1);
            }

            sub_25704(buf, i + 4, "", 119);
            v62 = (*(**buf + 160))(*buf);
            if (*&buf[8])
            {
              sub_1A8C0(*&buf[8]);
            }

            if ((v62 & 1) == 0)
            {
              sub_B0148(a7, i + 2);
            }
          }

          ++v57;
        }

        while (v57 != v58);
      }
    }

    v63 = sub_5544(8);
    if (*(v63 + 8))
    {
      v64 = *v63;
      if (*v63)
      {
        if (os_log_type_enabled(*v63, OS_LOG_TYPE_DEBUG))
        {
          v65 = "failed";
          v66 = *a1;
          *&buf[4] = "RoutingManager.cpp";
          *buf = 136315650;
          if (!v66)
          {
            v65 = "succeeded";
          }

          *&buf[12] = 1024;
          *&buf[14] = 5755;
          v108 = 2080;
          *v109 = v65;
          _os_log_impl(&dword_0, v64, OS_LOG_TYPE_DEBUG, "%25s:%-5d Activation %s...", buf, 0x1Cu);
        }
      }
    }

    if (*a1)
    {
      v67 = sub_5544(8);
      v68 = *v67;
      if (*v67)
      {
        if (os_log_type_enabled(*v67, OS_LOG_TYPE_DEFAULT))
        {
          sub_3FE8E8(&v93, a6);
          v69 = (v93.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v93 : v93.__r_.__value_.__r.__words[0];
          *buf = 136315650;
          *&buf[4] = "RoutingManager.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 5757;
          v108 = 2080;
          *v109 = v69;
          _os_log_impl(&dword_0, v68, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Activation failed for route %s", buf, 0x1Cu);
          if (SHIBYTE(v93.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v93.__r_.__value_.__l.__data_);
          }
        }
      }
    }
  }

  else
  {
    if (v15)
    {
      v16 = *v14;
      if (*v14)
      {
        if (os_log_type_enabled(*v14, OS_LOG_TYPE_DEBUG))
        {
          v17 = (a3[1] - *a3) >> 3;
          *buf = 136315906;
          *&buf[4] = "RoutingManager.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 5634;
          v108 = 1024;
          *v109 = a4;
          *&v109[4] = 2048;
          *&v109[6] = v17;
          _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEBUG, "%25s:%-5d Reviewing alternate device specification %u of %lu...", buf, 0x22u);
        }
      }
    }

    v83 = a3;
    if (v12 >= (a3[1] - *a3) >> 3)
    {
      sub_269EF8();
    }

    v18 = *(*a3 + 8 * v12);
    v19 = a2 + 70;
    v20 = a2[70];
    if (!v20)
    {
      goto LABEL_14;
    }

    v21 = v18[1];
    v22 = a2 + 70;
    do
    {
      if (*(v20 + 28) >= v21)
      {
        v22 = v20;
      }

      v20 = *(v20 + 8 * (*(v20 + 28) < v21));
    }

    while (v20);
    if (v22 == v19 || v21 < *(v22 + 7))
    {
LABEL_14:
      v22 = a2 + 70;
    }

    v87 = a1;
    if (((v22 == v19) & sub_99B90(v18, (a5 + 19), a6, (a5 + 1))) != 0)
    {
      v88 = sub_99D18(a2, v18);
      v23 = sub_5544(8);
      if (*(v23 + 8))
      {
        v24 = *v23;
        if (*v23)
        {
          if (os_log_type_enabled(*v23, OS_LOG_TYPE_DEBUG))
          {
            sub_22170(&v93, v18[15]);
            v25 = SHIBYTE(v93.__r_.__value_.__r.__words[2]);
            v26 = v93.__r_.__value_.__r.__words[0];
            sub_10898C(&__p, *(v18 + 1), *(v18 + 2));
            v27 = &v93;
            if (v25 < 0)
            {
              v27 = v26;
            }

            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              p_p = &__p;
            }

            else
            {
              p_p = __p.__r_.__value_.__r.__words[0];
            }

            v29 = v18[14];
            *&buf[4] = "RoutingManager.cpp";
            *&buf[12] = 1024;
            *buf = 136316162;
            *&buf[14] = 5648;
            if (v29)
            {
              v30 = "Optional";
            }

            else
            {
              v30 = "Mandatory";
            }

            v108 = 2080;
            *v109 = v27;
            *&v109[8] = 2080;
            *&v109[10] = p_p;
            v110 = 2080;
            v111 = v30;
            _os_log_impl(&dword_0, v24, OS_LOG_TYPE_DEBUG, "%25s:%-5d Alternate device specification is for VAD type %s and uses port types %s. VAD is %s", buf, 0x30u);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v93.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v93.__r_.__value_.__l.__data_);
            }
          }
        }
      }

      v85 = sub_805C8(*a2, v18[16]);
      v31 = v18[16];
      v93.__r_.__value_.__s.__data_[16] = *(v85 + 32) == 1668510820;
      HIDWORD(v93.__r_.__value_.__r.__words[2]) = v31;
      v94 = v88;
      v95 = 0;
      v96 = 0;
      v93.__r_.__value_.__r.__words[0] = v85;
      v93.__r_.__value_.__l.__size_ = (a5 + 3);
      v97 = 0;
      v98 = 0;
      v33 = sub_456B8(&v93);
      v89 = v93.__r_.__value_.__r.__words[0];
      if (v93.__r_.__value_.__r.__words[0] != v33)
      {
        v34 = v32;
        do
        {
          v35 = sub_5544(8);
          if (*(v35 + 8))
          {
            v36 = *v35;
            if (*v35)
            {
              if (os_log_type_enabled(*v35, OS_LOG_TYPE_DEBUG))
              {
                sub_22170(&__p, v18[15]);
                if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v37 = &__p;
                }

                else
                {
                  v37 = __p.__r_.__value_.__r.__words[0];
                }

                sub_3FEB1C(&v112, v33 + 16);
                v38 = SHIBYTE(v112.__r_.__value_.__r.__words[2]);
                v39 = v112.__r_.__value_.__r.__words[0];
                *v104 = v18[16];
                *&v104[4] = v88;
                v105 = 0;
                v106 = 0;
                sub_879F8(&v103, v104);
                v40 = &v112;
                if (v38 < 0)
                {
                  v40 = v39;
                }

                v41 = &v103;
                if ((v103.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                {
                  v41 = v103.__r_.__value_.__r.__words[0];
                }

                *buf = 136316162;
                *&buf[4] = "RoutingManager.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 5657;
                v108 = 2080;
                *v109 = v37;
                *&v109[8] = 2080;
                *&v109[10] = v40;
                v110 = 2080;
                v111 = v41;
                _os_log_impl(&dword_0, v36, OS_LOG_TYPE_DEBUG, "%25s:%-5d Checking whether the alternate device specification for %s allows abstract route %s for category/mode %s...", buf, 0x30u);
                if (SHIBYTE(v103.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v103.__r_.__value_.__l.__data_);
                }

                a1 = v87;
                if (SHIBYTE(v112.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v112.__r_.__value_.__l.__data_);
                }

                if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__p.__r_.__value_.__l.__data_);
                }
              }
            }
          }

          if (sub_9B594(v18, v33 + 16))
          {
            v42 = sub_5544(8);
            if (*(v42 + 8))
            {
              v43 = *v42;
              if (*v42)
              {
                if (os_log_type_enabled(*v42, OS_LOG_TYPE_DEBUG))
                {
                  sub_22170(&__p, v18[15]);
                  v44 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
                  v45 = __p.__r_.__value_.__r.__words[0];
                  sub_3FEB1C(&v112, v33 + 16);
                  v46 = &__p;
                  if (v44 < 0)
                  {
                    v46 = v45;
                  }

                  v47 = &v112;
                  if ((v112.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                  {
                    v47 = v112.__r_.__value_.__r.__words[0];
                  }

                  *buf = 136315906;
                  *&buf[4] = "RoutingManager.cpp";
                  *&buf[12] = 1024;
                  *&buf[14] = 5660;
                  v108 = 2080;
                  *v109 = v46;
                  *&v109[8] = 2080;
                  *&v109[10] = v47;
                  _os_log_impl(&dword_0, v43, OS_LOG_TYPE_DEBUG, "%25s:%-5d Alternate device specification for %s allows abstract route %s... Building concrete route...", buf, 0x26u);
                  if (SHIBYTE(v112.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v112.__r_.__value_.__l.__data_);
                  }

                  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(__p.__r_.__value_.__l.__data_);
                  }
                }
              }
            }

            v48 = v18[15];
            v92[0] = 0;
            v92[1] = 0;
            v91 = v92;
            sub_84C38(buf, (a5 + 6), v48);
            sub_7FE64(&v91, *buf, &buf[8]);
            sub_4B0F4(*&buf[8]);
            sub_9B6B8(*(v18 + 24), a5[1], a5[2]);
            v49 = v18[15];
            v99 = v18[16];
            v100 = v88;
            v101 = 0;
            v102 = 0;
            v50 = *v18;
            v51 = *(v18 + 96);
            operator new();
          }

          v52 = *(v33 + 8);
          v33 = *v34;
          while (v52 != v33)
          {
            if (sub_4B65C((v34 + 1), v52 + 16))
            {
              v33 = v52;
              break;
            }

            v52 = *(v52 + 8);
          }
        }

        while (v33 != v89);
      }
    }

    else
    {
      v70 = sub_5544(8);
      if (*(v70 + 8))
      {
        v71 = *v70;
        if (*v70)
        {
          if (os_log_type_enabled(*v70, OS_LOG_TYPE_DEBUG))
          {
            sub_22170(&v93, v18[15]);
            v72 = (v93.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v93 : v93.__r_.__value_.__r.__words[0];
            v73 = v18[14] ? "not " : "";
            *buf = 136315906;
            *&buf[4] = "RoutingManager.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 5643;
            v108 = 2080;
            *v109 = v72;
            *&v109[8] = 2080;
            *&v109[10] = v73;
            _os_log_impl(&dword_0, v71, OS_LOG_TYPE_DEBUG, "%25s:%-5d VirtualAudioDeviceType %s is currently disabled, and is %s mandatory", buf, 0x26u);
            if (SHIBYTE(v93.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v93.__r_.__value_.__l.__data_);
            }
          }
        }
      }
    }

    if (v18[14] != 1)
    {
      goto LABEL_139;
    }

    v74 = sub_5544(8);
    if (*(v74 + 8))
    {
      v75 = *v74;
      if (*v74)
      {
        if (os_log_type_enabled(*v74, OS_LOG_TYPE_DEBUG))
        {
          v76 = v18[1];
          v77 = v76 > 0x1E ? "????" : off_6CFB08[v76];
          sub_53E8(&v93, v77);
          v78 = (v93.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v93 : v93.__r_.__value_.__r.__words[0];
          *buf = 136315650;
          *&buf[4] = "RoutingManager.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 5730;
          v108 = 2080;
          *v109 = v78;
          _os_log_impl(&dword_0, v75, OS_LOG_TYPE_DEBUG, "%25s:%-5d Failed to build an alternate concrete route for an optional alternate VAD %s; skipping and attempting to recurse...", buf, 0x1Cu);
          if (SHIBYTE(v93.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v93.__r_.__value_.__l.__data_);
          }
        }
      }
    }

    sub_263A98(a1, a2, v83, a4 + 1, a5, a6, a7);
    if (*a1)
    {
      v79 = sub_5544(8);
      if (*(v79 + 8))
      {
        v80 = *v79;
        if (*v79)
        {
          if (os_log_type_enabled(*v79, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315394;
            *&buf[4] = "RoutingManager.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 5736;
            _os_log_impl(&dword_0, v80, OS_LOG_TYPE_DEBUG, "%25s:%-5d Recursion failed after skipping optional alternate VAD.", buf, 0x12u);
          }
        }
      }

      if (*(a1 + 56) == 1)
      {
        sub_175F78((a1 + 24));
      }

LABEL_139:
      sub_20301C(a1, 1);
      return;
    }

    v81 = sub_5544(8);
    if (*(v81 + 8))
    {
      v82 = *v81;
      if (*v81)
      {
        if (os_log_type_enabled(*v81, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315394;
          *&buf[4] = "RoutingManager.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 5740;
          _os_log_impl(&dword_0, v82, OS_LOG_TYPE_DEBUG, "%25s:%-5d Recursion succeeded; returning.", buf, 0x12u);
        }
      }
    }
  }
}

void sub_265020(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42, uint64_t a43, uint64_t a44)
{
  if (*(a33 + 56) == 1)
  {
    sub_175F78((a33 + 24));
  }

  if (a42 == 1)
  {
    sub_86BF8(&a38);
  }

  sub_4B0F4(a44);
  _Unwind_Resume(a1);
}

void sub_265244(void *a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  if (v3)
  {
    do
    {
      v4 = v3;
      v3 = *v3;
    }

    while (v3);
  }

  else
  {
    v5 = a2;
    do
    {
      v4 = v5[2];
      v6 = *v4 == v5;
      v5 = v4;
    }

    while (!v6);
  }

  if (*a1 == a2)
  {
    *a1 = v4;
  }

  v7 = a1[1];
  --a1[2];
  sub_75234(v7, a2);
  if (*(a2 + 88) == 1 && *(a2 + 87) < 0)
  {
    operator delete(*(a2 + 64));
  }

  operator delete(a2);
}

void sub_2652EC(char a1, void **__p)
{
  if (a1)
  {
    if (*(__p + 88) == 1 && *(__p + 87) < 0)
    {
      operator delete(__p[8]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

std::string *sub_265354(std::string *a1, void *a2, void *a3)
{
  a1->__r_.__value_.__r.__words[0] = 0;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  std::string::append(a1, "{ ", 2uLL);
  if (a2 != a3)
  {
    while (1)
    {
      sub_FC33C(__p, (a2 + 4));
      if ((v13 & 0x80u) == 0)
      {
        v7 = __p;
      }

      else
      {
        v7 = __p[0];
      }

      if ((v13 & 0x80u) == 0)
      {
        v8 = v13;
      }

      else
      {
        v8 = __p[1];
      }

      std::string::append(a1, v7, v8);
      if (v13 < 0)
      {
        operator delete(__p[0]);
      }

      v9 = a2[1];
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
          v10 = a2[2];
          v11 = *v10 == a2;
          a2 = v10;
        }

        while (!v11);
      }

      if (v10 == a3)
      {
        break;
      }

      std::string::append(a1, ", ", 2uLL);
      a2 = v10;
    }
  }

  return std::string::append(a1, " }", 2uLL);
}

void sub_26545C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_265480(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x265468);
}

uint64_t sub_265498(uint64_t a1)
{
  sub_85148(a1 + 216);
  sub_4B0F4(*(a1 + 200));
  v2 = *(a1 + 176);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  sub_4B064(a1 + 128);
  sub_4B064(a1 + 88);
  sub_4B064(a1 + 48);
  v4 = (a1 + 24);
  sub_11C50(&v4);
  v4 = a1;
  sub_11C50(&v4);
  return a1;
}

void sub_265514(std::string *a1, uint64_t a2)
{
  sub_265354(&v14, *a2, (a2 + 8));
  v4 = std::string::insert(&v14, 0, " { Global : ", 0xCuLL);
  v5 = *&v4->__r_.__value_.__l.__data_;
  a1->__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
  *&a1->__r_.__value_.__l.__data_ = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  sub_265948(&v12, (a2 + 24));
  v6 = std::string::insert(&v12, 0, " VAD Specific Ports :", 0x15uLL);
  v7 = *&v6->__r_.__value_.__l.__data_;
  v13.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
  *&v13.__r_.__value_.__l.__data_ = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  v8 = std::string::append(&v13, " }", 2uLL);
  v9 = *&v8->__r_.__value_.__l.__data_;
  v14.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
  *&v14.__r_.__value_.__l.__data_ = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v10 = &v14;
  }

  else
  {
    v10 = v14.__r_.__value_.__r.__words[0];
  }

  if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v14.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v14.__r_.__value_.__l.__size_;
  }

  std::string::append(a1, v10, size);
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
}

void sub_26564C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (*(v22 - 25) < 0)
  {
    operator delete(*(v22 - 48));
  }

  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (*(v21 + 23) < 0)
  {
    operator delete(*v21);
  }

  _Unwind_Resume(exception_object);
}

void sub_2656C4(void *a1, unint64_t a2, void *a3)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = (v5 - *a1) >> 4;
  if (a2 <= v6)
  {
    if (a2 < v6)
    {
      v12 = (v4 + 16 * a2);
      while (v5 != v12)
      {
        v13 = *(v5 - 1);
        if (v13)
        {
          std::__shared_weak_count::__release_weak(v13);
        }

        v5 -= 2;
      }

      a1[1] = v12;
    }
  }

  else
  {
    v7 = a2 - v6;
    v8 = a1[2];
    if (v7 > (v8 - v5) >> 4)
    {
      if (!(a2 >> 60))
      {
        v16 = a1;
        v9 = v8 - v4;
        v10 = v9 >> 3;
        if (v9 >> 3 <= a2)
        {
          v10 = a2;
        }

        if (v9 >= 0x7FFFFFFFFFFFFFF0)
        {
          v11 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v11 = v10;
        }

        sub_1DC690(v11);
      }

      sub_189A00();
    }

    v14 = &v5[2 * v7];
    do
    {
      v15 = a3[1];
      *v5 = *a3;
      v5[1] = v15;
      if (v15)
      {
        atomic_fetch_add_explicit((v15 + 16), 1uLL, memory_order_relaxed);
      }

      v5 += 2;
    }

    while (v5 != v14);
    a1[1] = v14;
  }
}

std::string *sub_265830(std::string *a1, uint64_t a2, uint64_t a3)
{
  a1->__r_.__value_.__r.__words[0] = 0;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  std::string::append(a1, "{ ", 2uLL);
  if (a2 != a3)
  {
    while (1)
    {
      sub_14B79C(__p, (a2 + 16));
      v7 = (v10 & 0x80u) == 0 ? __p : __p[0];
      v8 = (v10 & 0x80u) == 0 ? v10 : __p[1];
      std::string::append(a1, v7, v8);
      if (v10 < 0)
      {
        operator delete(__p[0]);
      }

      a2 = *(a2 + 8);
      if (a2 == a3)
      {
        break;
      }

      std::string::append(a1, ", ", 2uLL);
    }
  }

  return std::string::append(a1, " }", 2uLL);
}

void sub_26590C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_265930(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x265918);
}

std::string *sub_265948(std::string *a1, void *a2)
{
  sub_53E8(a1, " [ ");
  v6 = *a2;
  v4 = a2 + 1;
  v5 = v6;
  if (v6 != v4)
  {
    while (1)
    {
      sub_22170(&v20, *(v5 + 8));
      v7 = std::string::append(&v20, " : ", 3uLL);
      v8 = *&v7->__r_.__value_.__l.__data_;
      v21.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
      *&v21.__r_.__value_.__l.__data_ = v8;
      v7->__r_.__value_.__l.__size_ = 0;
      v7->__r_.__value_.__r.__words[2] = 0;
      v7->__r_.__value_.__r.__words[0] = 0;
      sub_265354(&v19, v5[5], v5 + 6);
      if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v9 = &v19;
      }

      else
      {
        v9 = v19.__r_.__value_.__r.__words[0];
      }

      if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v19.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v19.__r_.__value_.__l.__size_;
      }

      v11 = std::string::append(&v21, v9, size);
      v12 = *&v11->__r_.__value_.__l.__data_;
      v23 = v11->__r_.__value_.__r.__words[2];
      *__p = v12;
      v11->__r_.__value_.__l.__size_ = 0;
      v11->__r_.__value_.__r.__words[2] = 0;
      v11->__r_.__value_.__r.__words[0] = 0;
      if (v23 >= 0)
      {
        v13 = __p;
      }

      else
      {
        v13 = __p[0];
      }

      if (v23 >= 0)
      {
        v14 = HIBYTE(v23);
      }

      else
      {
        v14 = __p[1];
      }

      std::string::append(a1, v13, v14);
      if (SHIBYTE(v23) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v19.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v21.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v20.__r_.__value_.__l.__data_);
      }

      v15 = v5[1];
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
          v16 = v5[2];
          v17 = *v16 == v5;
          v5 = v16;
        }

        while (!v17);
      }

      if (v16 == v4)
      {
        break;
      }

      std::string::append(a1, "; ", 2uLL);
      v5 = v16;
    }
  }

  return std::string::append(a1, " ]", 2uLL);
}

void sub_265AF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (*(v33 + 23) < 0)
  {
    operator delete(*v33);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_265B84(uint64_t a1, uint64_t a2)
{
  *a2 = off_6BC408;
  *(a2 + 8) = *(a1 + 8);
  return sub_83FDC(a2 + 16, a1 + 16);
}

void sub_265BB8(void *a1)
{
  *a1 = off_6BC408;
  sub_85148((a1 + 2));

  operator delete();
}

void *sub_265C1C(void *a1)
{
  *a1 = off_6BC408;
  sub_85148((a1 + 2));
  return a1;
}

void sub_265C60(uint64_t a1)
{
  sub_85148(a1 + 224);
  sub_4B0F4(*(a1 + 208));
  v2 = *(a1 + 184);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  sub_4B064(a1 + 136);
  sub_4B064(a1 + 96);
  sub_4B064(a1 + 56);
  v3 = (a1 + 32);
  sub_11C50(&v3);
  v3 = (a1 + 8);
  sub_11C50(&v3);
}

uint64_t sub_265CDC(uint64_t a1, uint64_t a2)
{
  *a2 = off_6BC3C0;
  sub_7FF98((a2 + 8), (a1 + 8));
  v4 = *(a1 + 184);
  *(a2 + 176) = *(a1 + 176);
  *(a2 + 184) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  *(a2 + 192) = *(a1 + 192);
  sub_7FE10((a2 + 200), a1 + 200);
  result = sub_83FDC(a2 + 224, a1 + 224);
  *(a2 + 256) = *(a1 + 256);
  return result;
}

void sub_265D6C(_Unwind_Exception *a1)
{
  sub_4B0F4(*(v1 + 208));
  v3 = *(v1 + 184);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  sub_1F1DE0((v1 + 8));
  _Unwind_Resume(a1);
}

void sub_265E54(_Unwind_Exception *a1)
{
  sub_4B0F4(*(v1 + 208));
  v4 = *(v1 + 184);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  sub_1F1DE0(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

void sub_265E94(uint64_t a1)
{
  *a1 = off_6BC3C0;
  sub_85148(a1 + 224);
  sub_4B0F4(*(a1 + 208));
  v2 = *(a1 + 184);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  sub_4B064(a1 + 136);
  sub_4B064(a1 + 96);
  sub_4B064(a1 + 56);
  v3 = (a1 + 32);
  sub_11C50(&v3);
  v3 = (a1 + 8);
  sub_11C50(&v3);

  operator delete();
}

uint64_t sub_265F4C(uint64_t a1)
{
  *a1 = off_6BC3C0;
  sub_85148(a1 + 224);
  sub_4B0F4(*(a1 + 208));
  v2 = *(a1 + 184);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  sub_4B064(a1 + 136);
  sub_4B064(a1 + 96);
  sub_4B064(a1 + 56);
  v4 = (a1 + 32);
  sub_11C50(&v4);
  v4 = (a1 + 8);
  sub_11C50(&v4);
  return a1;
}

uint64_t sub_265FE4(void *a1, uint64_t a2)
{
  result = (*(*a2 + 152))(a2);
  if (result)
  {
    v4 = *(a1[1] + 128);
    if (!v4)
    {
      sub_46A74();
    }

    v5 = a1[3];
    v6 = *(*v4 + 48);
    v7 = a1[2] + 152;

    return v6();
  }

  return result;
}

__n128 sub_266098(uint64_t a1, uint64_t a2)
{
  *a2 = off_6BC450;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void *sub_266144(void *result, unsigned int a2)
{
  v2 = result[1];
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

  v5 = *(*result + 8 * v4);
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

  return result;
}

__n128 sub_266368(uint64_t a1, uint64_t a2)
{
  *a2 = off_6BC498;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2663B0(uint64_t *a1)
{
  sub_25704(&v21, a1, "", 1223);
  sub_25704(&v19, a1 + 2, "", 1224);
  v2 = v21;
  if ((*(v21 + 184) & 8) != 0 || (*(v19 + 184) & 8) != 0)
  {
    v4 = sub_5544(8);
    v5 = sub_5544(35);
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
        goto LABEL_10;
      }
    }

    if ((v7 & v8) == 0)
    {
      v4 = v5;
    }

LABEL_10:
    v9 = *v4;
    if (v9 && os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      sub_22170(v17, *(v2 + 144));
      v10 = v18;
      v11 = v17[0];
      sub_22170(__p, *(v19 + 144));
      v12 = v17;
      if (v10 < 0)
      {
        v12 = v11;
      }

      if (v16 >= 0)
      {
        v13 = __p;
      }

      else
      {
        v13 = __p[0];
      }

      *buf = 136315906;
      *&buf[4] = "RoutingManager.cpp";
      v24 = 1024;
      v25 = 1230;
      v26 = 2080;
      v27 = v12;
      v28 = 2080;
      v29 = v13;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEBUG, "%25s:%-5d Culling route connection because silent mode is enabled. Source port type = '%s', Destination port type = '%s'", buf, 0x26u);
      if (v16 < 0)
      {
        operator delete(__p[0]);
      }

      if (v18 < 0)
      {
        operator delete(v17[0]);
      }
    }

    v3 = 1;
  }

  else
  {
    v3 = 0;
  }

  if (v20)
  {
    sub_1A8C0(v20);
  }

  if (v22)
  {
    sub_1A8C0(v22);
  }

  return v3;
}

void sub_2665BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (v19 < 0)
  {
    operator delete(v18);
  }

  if (a16)
  {
    sub_1A8C0(a16);
  }

  if (a18)
  {
    sub_1A8C0(a18);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_266608(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  v5 = *(a1 + 8);
  *a1 = v4;
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  v6 = a2[1];
  *(a2 + 2) = 0;
  *(a2 + 3) = 0;
  v7 = *(a1 + 24);
  *(a1 + 16) = v6;
  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
  }

  v8 = a2[2];
  *(a2 + 4) = 0;
  *(a2 + 5) = 0;
  v9 = *(a1 + 40);
  *(a1 + 32) = v8;
  if (v9)
  {
    std::__shared_weak_count::__release_weak(v9);
  }

  *(a1 + 48) = a2[3];
  return a1;
}

uint64_t sub_266680(uint64_t *a1)
{
  sub_25704(&v13, a1, "", 1272);
  sub_25704(&v11, a1 + 2, "", 1273);
  v2 = v11;
  if (((*(*v11 + 112))(v11) & 0x100000000) != 0 && (*(*v2 + 112))(v2) == 1701869160)
  {
    v3 = sub_5544(8);
    v4 = sub_5544(35);
    v5 = 0;
    *buf = 0x100000002;
    v6 = *(v3 + 8);
    while (1)
    {
      v7 = *&buf[v5];
      if (((v6 & v7) != 0) != ((*(v4 + 8) & v7) != 0))
      {
        break;
      }

      v5 += 4;
      if (v5 == 8)
      {
        goto LABEL_10;
      }
    }

    if ((v6 & v7) == 0)
    {
      v3 = v4;
    }

LABEL_10:
    v9 = *v3;
    if (v9 && os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      *&buf[4] = "RoutingManager.cpp";
      v16 = 1024;
      v17 = 1278;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEBUG, "%25s:%-5d Culling route connection because CarKit BT port is not allowed in emergency alert routes.", buf, 0x12u);
    }

    v8 = 1;
  }

  else
  {
    v8 = 0;
  }

  if (v12)
  {
    sub_1A8C0(v12);
  }

  if (v14)
  {
    sub_1A8C0(v14);
  }

  return v8;
}

void sub_26685C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    sub_1A8C0(a10);
  }

  if (a12)
  {
    sub_1A8C0(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_266898(uint64_t a1)
{
  sub_25704(&v13, (a1 + 16), "", 1323);
  v1 = v13;
  if ((v13[36] & 0xFFFFFFDF) == 0x70687042 && (*(*v13 + 112))(v13) != 1701865584)
  {
    v3 = sub_5544(8);
    v4 = sub_5544(35);
    v5 = 0;
    *buf = 0x100000002;
    v6 = *(v3 + 8);
    while (1)
    {
      v7 = *&buf[v5];
      if (((v6 & v7) != 0) != ((*(v4 + 8) & v7) != 0))
      {
        break;
      }

      v5 += 4;
      if (v5 == 8)
      {
        goto LABEL_10;
      }
    }

    if ((v6 & v7) == 0)
    {
      v3 = v4;
    }

LABEL_10:
    v8 = *v3;
    if (v8 && os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      if (*(v1 + 303) < 0)
      {
        sub_54A0(__p, *(v1 + 35), *(v1 + 36));
      }

      else
      {
        *__p = *(v1 + 70);
        v12 = *(v1 + 37);
      }

      v9 = __p;
      if (v12 < 0)
      {
        v9 = __p[0];
      }

      *buf = 136315650;
      *&buf[4] = "RoutingManager.cpp";
      v16 = 1024;
      v17 = 1334;
      v18 = 2080;
      v19 = v9;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEBUG, "%25s:%-5d Culling route connection because port %s is not allowed for kVirtualAudioPlugInRoutingCategoryAlarm, Destination port is not headphones", buf, 0x1Cu);
      if (SHIBYTE(v12) < 0)
      {
        operator delete(__p[0]);
      }
    }

    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  if (v14)
  {
    sub_1A8C0(v14);
  }

  return v2;
}

void sub_266A98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_1A8C0(a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_266B50(uint64_t a1, uint64_t a2, _OWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, void *a8, uint64_t a9, uint64_t *a10, char a11, uint64_t *a12, char a13, uint64_t a14, void *a15)
{
  *a1 = off_6BC228;
  *(a1 + 8) = *a3;
  sub_44E44((a1 + 24), a4);
  sub_7FE10((a1 + 48), a5);
  sub_7FEEC((a1 + 72), (a5 + 24));
  sub_44E44((a1 + 96), a6);
  *(a1 + 120) = a7;
  sub_7FD64((a1 + 128), a8);
  *(a1 + 152) = *a9;
  if (*(a9 + 31) < 0)
  {
    sub_54A0((a1 + 160), *(a9 + 8), *(a9 + 16));
  }

  else
  {
    v22 = *(a9 + 8);
    *(a1 + 176) = *(a9 + 24);
    *(a1 + 160) = v22;
  }

  *(a1 + 184) = *(a9 + 32);
  sub_7FF98((a1 + 192), a10);
  *(a1 + 360) = a11;
  *(a1 + 376) = 0;
  *(a1 + 384) = 0;
  *(a1 + 368) = 0;
  sub_78B6C(a1 + 368, *a12, a12[1], 0xCBEEA4E1A08AD8F3 * ((a12[1] - *a12) >> 3));
  *(a1 + 392) = a13;
  *(a1 + 400) = *a14;
  v23 = *(a14 + 8);
  *(a1 + 408) = v23;
  if (v23)
  {
    atomic_fetch_add_explicit((v23 + 16), 1uLL, memory_order_relaxed);
  }

  *(a1 + 416) = *(a14 + 16);
  *(a1 + 440) = 0;
  *(a1 + 448) = 0;
  *(a1 + 424) = a2;
  *(a1 + 432) = a1 + 440;
  *(a1 + 456) = *a15;
  v24 = *a3;
  sub_78A5C();
}

void sub_266D84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20)
{
  sub_4B0F4(v20[17]);
  sub_477A0(v20[13]);
  sub_2626B0((v20 + 6));
  sub_477A0(v20[4]);
  _Unwind_Resume(a1);
}

void sub_266E50(uint64_t a1, uint64_t *a2)
{
  v4 = a2[1];
  if (*a2 == v4)
  {
    v5 = *a2;
  }

  else
  {
    v5 = *a2;
    while (**v5 != 1986291046)
    {
      v5 += 8;
      if (v5 == v4)
      {
        goto LABEL_5;
      }
    }
  }

  if (v5 != v4)
  {
    if ((v4 - *a2) >= 9)
    {
      v9 = sub_5544(8);
      if (*(v9 + 8))
      {
        v10 = *v9;
        if (*v9)
        {
          if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEBUG))
          {
            v11 = (a2[1] - *a2) >> 3;
            *v28 = 136315650;
            *&v28[4] = "RoutingManager.cpp";
            *&v28[12] = 1024;
            *&v28[14] = 1984;
            v29 = 2048;
            v30 = v11;
            _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEBUG, "%25s:%-5d Located concrete route in a %lu item concrete route pointer list.", v28, 0x1Cu);
          }
        }
      }
    }

    if (*(*v5 + 32) == 1)
    {
      sub_25704(v28, (*(*v5 + 24) + 16), "", 1988);
      v12 = *(*v28 + 144);
      if (*&v28[8])
      {
        sub_1A8C0(*&v28[8]);
      }

      if (v12 == 1885433888)
      {
        sub_25704(v28, (*(*v5 + 24) + 32), "", 1990);
        v13 = *(*v28 + 144);
        if (*&v28[8])
        {
          sub_1A8C0(*&v28[8]);
        }

        if (v13 != 1885433888)
        {
          v14 = *(a1 + 464);
          v15 = *(*v5 + 24);
          v16 = *(v15 + 40);
          if (v16)
          {
            v17 = std::__shared_weak_count::lock(v16);
            if (v17)
            {
              v18 = *(v15 + 32);
              atomic_fetch_add_explicit(&v17->__shared_weak_owners_, 1uLL, memory_order_relaxed);
              sub_1A8C0(v17);
            }
          }

          operator new();
        }

        v25 = sub_5544(14);
        v26 = *v25;
        if (*v25 && os_log_type_enabled(*v25, OS_LOG_TYPE_ERROR))
        {
          *v28 = 136315394;
          *&v28[4] = "RoutingManager.cpp";
          *&v28[12] = 1024;
          *&v28[14] = 1991;
          _os_log_impl(&dword_0, v26, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", v28, 0x12u);
        }

        exception = __cxa_allocate_exception(0x10uLL);
        std::logic_error::logic_error(exception, "Precondition failure.");
      }

      v22 = sub_5544(14);
      v23 = *v22;
      if (*v22 && os_log_type_enabled(*v22, OS_LOG_TYPE_ERROR))
      {
        *v28 = 136315394;
        *&v28[4] = "RoutingManager.cpp";
        *&v28[12] = 1024;
        *&v28[14] = 1989;
        _os_log_impl(&dword_0, v23, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", v28, 0x12u);
      }

      v24 = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(v24, "Precondition failure.");
    }

    v19 = sub_5544(14);
    v20 = *v19;
    if (*v19 && os_log_type_enabled(*v19, OS_LOG_TYPE_ERROR))
    {
      *v28 = 136315394;
      *&v28[4] = "RoutingManager.cpp";
      *&v28[12] = 1024;
      *&v28[14] = 1987;
      _os_log_impl(&dword_0, v20, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", v28, 0x12u);
    }

    v21 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v21, "Precondition failure.");
  }

LABEL_5:
  v6 = sub_5544(14);
  v7 = *v6;
  if (*v6)
  {
    if (os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
    {
      *v28 = 136315394;
      *&v28[4] = "RoutingManager.cpp";
      *&v28[12] = 1024;
      *&v28[14] = 1982;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): Unable to locate a concrete route for device type kVirtualAudioDeviceTypeDefault.", v28, 0x12u);
    }
  }

  v8 = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(v8, "Unable to locate a concrete route for device type kVirtualAudioDeviceTypeDefault.");
}

void sub_267388(uint64_t a1)
{
  sub_9DB70(a1);

  operator delete();
}

uint64_t *sub_2673C4(void *a1, uint64_t *a2, unsigned int a3)
{
  result = sub_26746C(a1, a2, &v5, &v4, a3);
  if (!*result)
  {
    operator new();
  }

  return result;
}

uint64_t *sub_26746C(void *a1, uint64_t *a2, uint64_t **a3, uint64_t *a4, unsigned int a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *(a2 + 8), v6 > a5))
  {
    v7 = *a2;
    if (*a1 == a2)
    {
      v9 = a2;
LABEL_17:
      if (v7)
      {
        *a3 = v9;
        return v9 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v7)
    {
      v8 = *a2;
      do
      {
        v9 = v8;
        v8 = v8[1];
      }

      while (v8);
    }

    else
    {
      v12 = a2;
      do
      {
        v9 = v12[2];
        v13 = *v9 == v12;
        v12 = v9;
      }

      while (v13);
    }

    if (*(v9 + 8) < a5)
    {
      goto LABEL_17;
    }

    v14 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v15 = v14;
          v16 = *(v14 + 32);
          if (v16 <= a5)
          {
            break;
          }

          v14 = *v15;
          v5 = v15;
          if (!*v15)
          {
            goto LABEL_43;
          }
        }

        if (v16 >= a5)
        {
          break;
        }

        v5 = v15 + 1;
        v14 = v15[1];
      }

      while (v14);
      goto LABEL_43;
    }

LABEL_42:
    v15 = a1 + 1;
LABEL_43:
    *a3 = v15;
    return v5;
  }

  if (v6 >= a5)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v10 = a2[1];
  if (v10)
  {
    v11 = a2[1];
    do
    {
      a4 = v11;
      v11 = *v11;
    }

    while (v11);
  }

  else
  {
    v17 = a2;
    do
    {
      a4 = v17[2];
      v13 = *a4 == v17;
      v17 = a4;
    }

    while (!v13);
  }

  if (a4 != v5 && *(a4 + 8) <= a5)
  {
    v18 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v15 = v18;
          v19 = *(v18 + 32);
          if (v19 <= a5)
          {
            break;
          }

          v18 = *v15;
          v5 = v15;
          if (!*v15)
          {
            goto LABEL_43;
          }
        }

        if (v19 >= a5)
        {
          break;
        }

        v5 = v15 + 1;
        v18 = v15[1];
      }

      while (v18);
      goto LABEL_43;
    }

    goto LABEL_42;
  }

  if (v10)
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

void sub_2675F4(uint64_t a1)
{
  sub_D0710(a1);

  operator delete();
}

uint64_t sub_267630(uint64_t a1)
{
  *a1 = off_6BC288;
  if (*(a1 + 567) < 0)
  {
    operator delete(*(a1 + 544));
  }

  sub_477A0(*(a1 + 520));
  v2 = *(a1 + 464);
  if (v2)
  {
    *(a1 + 472) = v2;
    operator delete(v2);
  }

  return sub_9DB70(a1);
}

void sub_2676A8(std::string *a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v22[0] = *a2;
  v22[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  sub_11AB44(&v23, v22);
  v5 = std::string::insert(&v23, 0, "[ Port: ", 8uLL);
  v6 = *&v5->__r_.__value_.__l.__data_;
  v24.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v24.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v24, ", output selection overrode input: ", 0x23uLL);
  v8 = *&v7->__r_.__value_.__l.__data_;
  v25.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
  *&v25.__r_.__value_.__l.__data_ = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v21, *(a2 + 17));
  if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v9 = &v21;
  }

  else
  {
    v9 = v21.__r_.__value_.__r.__words[0];
  }

  if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v21.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v21.__r_.__value_.__l.__size_;
  }

  v11 = std::string::append(&v25, v9, size);
  v12 = *&v11->__r_.__value_.__l.__data_;
  v26.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
  *&v26.__r_.__value_.__l.__data_ = v12;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  v13 = std::string::append(&v26, ", input selection overrode output: ", 0x23uLL);
  v14 = *&v13->__r_.__value_.__l.__data_;
  v27.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
  *&v27.__r_.__value_.__l.__data_ = v14;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v20, *(a2 + 16));
  if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v15 = &v20;
  }

  else
  {
    v15 = v20.__r_.__value_.__r.__words[0];
  }

  if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v16 = HIBYTE(v20.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v16 = v20.__r_.__value_.__l.__size_;
  }

  v17 = std::string::append(&v27, v15, v16);
  v18 = *&v17->__r_.__value_.__l.__data_;
  v28.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
  *&v28.__r_.__value_.__l.__data_ = v18;
  v17->__r_.__value_.__l.__size_ = 0;
  v17->__r_.__value_.__r.__words[2] = 0;
  v17->__r_.__value_.__r.__words[0] = 0;
  v19 = std::string::append(&v28, " ]", 2uLL);
  *a1 = *v19;
  v19->__r_.__value_.__l.__size_ = 0;
  v19->__r_.__value_.__r.__words[2] = 0;
  v19->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }
}

void sub_2678DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  if (*(v43 - 57) < 0)
  {
    operator delete(*(v43 - 80));
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v43 - 89) < 0)
  {
    operator delete(*(v43 - 112));
  }

  if (*(v43 - 121) < 0)
  {
    operator delete(*(v43 - 144));
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a42 < 0)
  {
    operator delete(a37);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  if (v42)
  {
    std::__shared_weak_count::__release_weak(v42);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2679B4(uint64_t result, uint64_t a2)
{
  *(result + 8) = 0;
  v2 = (result + 8);
  *(result + 16) = 0;
  *result = result + 8;
  v5 = *(a2 + 8);
  v3 = a2 + 8;
  v4 = v5;
  if (v5)
  {
    v6 = result;
    v7 = v3;
    do
    {
      v8 = *(v4 + 32);
      v9 = v8 >= 0x63736176;
      v10 = v8 < 0x63736176;
      if (v9)
      {
        v7 = v4;
      }

      v4 = *(v4 + 8 * v10);
    }

    while (v4);
    if (v7 != v3 && *(v7 + 32) < 0x63736177u)
    {
      v11 = v7 + 40;
      v12 = *(v7 + 48);
      if (v12 != v7 + 40)
      {
        v13 = *(v7 + 56);
        do
        {
          result = sub_4B1A0(v12 + 16, 0x696D646663736176uLL);
          if (result)
          {
            for (i = *(v12 + 24); i != v12 + 16; i = *(i + 8))
            {
              v15 = *(i + 20);
              v23 = v15;
              v16 = *v2;
              if (*v2)
              {
                v17 = v2;
                do
                {
                  v18 = *(v16 + 32);
                  v9 = v18 >= v15;
                  v19 = v18 < v15;
                  if (v9)
                  {
                    v17 = v16;
                  }

                  v16 = *(v16 + 8 * v19);
                }

                while (v16);
                if (v17 != v2 && v15 >= *(v17 + 8))
                {
                  v20 = sub_5544(14);
                  v21 = *v20;
                  if (*v20)
                  {
                    if (os_log_type_enabled(*v20, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 136315394;
                      *&buf[4] = "RoutingManager.cpp";
                      v25 = 1024;
                      v26 = 908;
                      _os_log_impl(&dword_0, v21, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): Unexpected port type duplication in connection list", buf, 0x12u);
                    }
                  }

                  exception = __cxa_allocate_exception(0x10uLL);
                  std::runtime_error::runtime_error(exception, "Unexpected port type duplication in connection list");
                }
              }

              *buf = &v23;
              result = sub_916FC(v6, v15);
              *(result + 40) = v13--;
            }
          }

          v12 = *(v12 + 8);
        }

        while (v12 != v11);
      }
    }
  }

  return result;
}

uint64_t *sub_267C0C(uint64_t a1, uint64_t *a2, unint64_t a3, uint64_t *a4)
{
  v4 = a1;
  if (a3 >= 2)
  {
    if (a3 == 2)
    {
      v8 = *a2;
      v9 = *(*a2 + 24);
      v54[0] = *(*a2 + 16);
      v54[1] = v9;
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v10 = *(a1 + 24);
      v53[0] = *(a1 + 16);
      v53[1] = v10;
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v11 = sub_268040(a4, v54, v53);
      if (v10)
      {
        std::__shared_weak_count::__release_weak(v10);
      }

      if (v9)
      {
        std::__shared_weak_count::__release_weak(v9);
      }

      if (v11)
      {
        v13 = *v8;
        v12 = v8[1];
        *(v13 + 8) = v12;
        *v12 = v13;
        v14 = *v4;
        v14[1] = v8;
        *v8 = v14;
        *v4 = v8;
        v8[1] = v4;
        return v8;
      }
    }

    else
    {
      v16 = a3 >> 1;
      v17 = (a3 >> 1) + 1;
      v18 = a1;
      do
      {
        v18 = *(v18 + 8);
        --v17;
      }

      while (v17 > 1);
      v19 = sub_267C0C(a1, v18, a3 >> 1, a4);
      v4 = sub_267C0C(v18, a2, a3 - v16, a4);
      v20 = v4[3];
      v52[0] = v4[2];
      v52[1] = v20;
      if (v20)
      {
        atomic_fetch_add_explicit(&v20->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v21 = v19[3];
      v51[0] = v19[2];
      v51[1] = v21;
      if (v21)
      {
        atomic_fetch_add_explicit(&v21->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v22 = sub_268040(a4, v52, v51);
      if (v21)
      {
        std::__shared_weak_count::__release_weak(v21);
      }

      if (v20)
      {
        std::__shared_weak_count::__release_weak(v20);
      }

      if (v22)
      {
        for (i = v4[1]; i != a2; i = i[1])
        {
          v24 = i[3];
          v50[0] = i[2];
          v50[1] = v24;
          if (v24)
          {
            atomic_fetch_add_explicit(&v24->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          }

          v25 = v19[3];
          v49[0] = v19[2];
          v49[1] = v25;
          if (v25)
          {
            atomic_fetch_add_explicit(&v25->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          }

          v26 = sub_268040(a4, v50, v49);
          if (v25)
          {
            std::__shared_weak_count::__release_weak(v25);
          }

          if (v24)
          {
            std::__shared_weak_count::__release_weak(v24);
            if (!v26)
            {
              break;
            }
          }

          else if (!v26)
          {
            break;
          }
        }

        v27 = *i;
        v28 = *(*i + 8);
        v29 = *v4;
        v29[1] = v28;
        *v28 = v29;
        v30 = *v19;
        v31 = v19[1];
        v30[1] = v4;
        *v4 = v30;
        *v19 = v27;
        v27[1] = v19;
      }

      else
      {
        v31 = v19[1];
        i = v4;
        v4 = v19;
      }

      if (v31 != i && i != a2)
      {
        v32 = i;
        do
        {
          v33 = i[3];
          v48[0] = i[2];
          v48[1] = v33;
          if (v33)
          {
            atomic_fetch_add_explicit(&v33->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          }

          v34 = v31[3];
          v47[0] = v31[2];
          v47[1] = v34;
          if (v34)
          {
            atomic_fetch_add_explicit(&v34->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          }

          v35 = sub_268040(a4, v48, v47);
          if (v34)
          {
            std::__shared_weak_count::__release_weak(v34);
          }

          if (v33)
          {
            std::__shared_weak_count::__release_weak(v33);
          }

          if (v35)
          {
            for (j = i[1]; j != a2; j = j[1])
            {
              v37 = j[3];
              v46[0] = j[2];
              v46[1] = v37;
              if (v37)
              {
                atomic_fetch_add_explicit(&v37->__shared_weak_owners_, 1uLL, memory_order_relaxed);
              }

              v38 = v31[3];
              v45[0] = v31[2];
              v45[1] = v38;
              if (v38)
              {
                atomic_fetch_add_explicit(&v38->__shared_weak_owners_, 1uLL, memory_order_relaxed);
              }

              v39 = sub_268040(a4, v46, v45);
              if (v38)
              {
                std::__shared_weak_count::__release_weak(v38);
              }

              if (v37)
              {
                std::__shared_weak_count::__release_weak(v37);
                if (!v39)
                {
                  break;
                }
              }

              else if (!v39)
              {
                break;
              }
            }

            v40 = *j;
            v41 = *(*j + 8);
            v42 = *i;
            *(v42 + 8) = v41;
            *v41 = v42;
            if (v32 == i)
            {
              v32 = j;
            }

            v44 = *v31;
            v43 = v31[1];
            *(v44 + 8) = i;
            *i = v44;
            *v31 = v40;
            *(v40 + 8) = v31;
            v31 = v43;
            i = j;
          }

          else
          {
            v31 = v31[1];
          }
        }

        while (v31 != v32 && i != a2);
      }
    }
  }

  return v4;
}

void sub_267F9C(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_267FE8(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_15B370(*(v1 + 32));
    sub_24A81C(v1);
    operator delete();
  }

  return result;
}

BOOL sub_268040(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *a1;
  v21 = 0;
  v22 = 0;
  v6 = a2[1];
  if (v6)
  {
    v8 = std::__shared_weak_count::lock(v6);
    v9 = v8;
    if (v8)
    {
      v10 = *a2;
      atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v21 = v10;
      v22 = v8;
      sub_1A8C0(v8);
    }

    else
    {
      v21 = 0;
      v22 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  v11 = sub_26817C(v5, &v21);
  v12 = *a1;
  v19 = 0;
  v20 = 0;
  v13 = a3[1];
  if (v13)
  {
    v14 = std::__shared_weak_count::lock(v13);
    v15 = v14;
    if (v14)
    {
      v16 = *a3;
      atomic_fetch_add_explicit(&v14->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v19 = v16;
      v20 = v14;
      sub_1A8C0(v14);
    }

    else
    {
      v19 = 0;
      v20 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  v17 = sub_26817C(v12, &v19);
  if (v15)
  {
    std::__shared_weak_count::__release_weak(v15);
  }

  if (v9)
  {
    std::__shared_weak_count::__release_weak(v9);
  }

  return v11 < v17;
}

void sub_268150(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_26817C(uint64_t a1, uint64_t *a2)
{
  sub_88A00(&v25, a2, "", 923);
  if (*(v25 + 184))
  {
    sub_250A70(v22, v25);
    sub_76388(&v23, v22);
    v12 = v24;
    if (v24 == &v23)
    {
      goto LABEL_24;
    }

    v15 = *(a1 + 8);
    v14 = a1 + 8;
    v13 = v15;
    while (1)
    {
      v16 = v12[2];
      if ((*(v16 + 184) & 1) == 0)
      {
        break;
      }

      v12 = v12[1];
      if (v12 == &v23)
      {
        goto LABEL_24;
      }
    }

    if (!v13)
    {
      goto LABEL_24;
    }

    v17 = *(v16 + 144);
    v18 = v14;
    do
    {
      v19 = *(v13 + 32);
      v9 = v19 >= v17;
      v20 = v19 < v17;
      if (v9)
      {
        v18 = v13;
      }

      v13 = *(v13 + 8 * v20);
    }

    while (v13);
    if (v18 == v14 || v17 < *(v18 + 32))
    {
LABEL_24:
      v11 = 0;
    }

    else
    {
      v11 = *(v18 + 40);
    }

    sub_87980(&v23);
    sub_65310(v22);
  }

  else
  {
    v5 = *(a1 + 8);
    v4 = a1 + 8;
    v3 = v5;
    if (!v5)
    {
      goto LABEL_10;
    }

    v6 = *(v25 + 144);
    v7 = v4;
    do
    {
      v8 = *(v3 + 32);
      v9 = v8 >= v6;
      v10 = v8 < v6;
      if (v9)
      {
        v7 = v3;
      }

      v3 = *(v3 + 8 * v10);
    }

    while (v3);
    if (v7 != v4 && v6 >= *(v7 + 32))
    {
      v11 = *(v7 + 40);
    }

    else
    {
LABEL_10:
      v11 = 0;
    }
  }

  if (v26)
  {
    sub_1A8C0(v26);
  }

  return v11;
}

void sub_2682BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_65310(&a9);
  v11 = *(v9 - 24);
  if (v11)
  {
    sub_1A8C0(v11);
  }

  _Unwind_Resume(a1);
}

_BYTE *sub_2682E4(void *a1, void **a2)
{
  sub_27A4();
  v14 = (*(qword_6E94F8 + 16))();
  sub_27A4();
  v4 = atomic_load(&qword_6E9558);
  if (v4 != pthread_self())
  {
    v11 = sub_5544(14);
    v12 = *v11;
    if (*v11 && os_log_type_enabled(*v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v16 = "RoutingManager.cpp";
      v17 = 1024;
      v18 = 2051;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): Unable to acquire routing mutex.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Unable to acquire routing mutex.");
  }

  *a1 = a1;
  a1[1] = a1;
  a1[2] = 0;
  v5 = (*a2 + 1);
  v6 = **a2;
  if (v6 != v5)
  {
    do
    {
      if ((v6[16] & 1) == 0)
      {
        operator new();
      }

      v7 = v6[1];
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
          v8 = v6[2];
          v9 = *v8 == v6;
          v6 = v8;
        }

        while (!v9);
      }

      v6 = v8;
    }

    while (v8 != v5);
  }

  return sub_210C50(&v14);
}

void sub_2684DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  __cxa_free_exception(v13);
  sub_210C50(&a13);
  _Unwind_Resume(a1);
}

void sub_268524(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v74 = 0;
  v75 = 0;
  v6 = *(a3 + 144);
  if (!v6)
  {
    *a1 = *(a3 + 136);
    *(a1 + 8) = 0;
    goto LABEL_12;
  }

  v75 = std::__shared_weak_count::lock(v6);
  v9 = *(a3 + 136);
  if (!v75 || (v74 = *(a3 + 136), !v9))
  {
    v12 = *(a3 + 144);
    *a1 = v9;
    *(a1 + 8) = v12;
    if (v12)
    {
      v13 = (v12 + 16);
LABEL_10:
      atomic_fetch_add_explicit(v13, 1uLL, memory_order_relaxed);
    }

LABEL_12:
    *(a1 + 16) = 0;
    goto LABEL_153;
  }

  v10 = *a3;
  if (*a3 > 1668313714)
  {
    if (v10 != 1668313715 && v10 != 1668576377)
    {
      v11 = 1668703084;
      goto LABEL_16;
    }
  }

  else if (v10 != 1668301427 && v10 != 1668309362)
  {
    v11 = 1668313666;
LABEL_16:
    if (v10 == v11 || *(a2 + 32) == 1668114797)
    {
      goto LABEL_18;
    }

    v70 = sub_5544(8);
    v71 = *v70;
    if (*v70 && os_log_type_enabled(*v70, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "RoutingManager.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 2079;
      _os_log_impl(&dword_0, v71, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Updating user preferred input usage: Not a play-And-record or VoiceCall route. returning early", buf, 0x12u);
    }

    v72 = *(a3 + 144);
    *a1 = *(a3 + 136);
    *(a1 + 8) = v72;
    if (v72)
    {
      v13 = (v72 + 16);
      goto LABEL_10;
    }

    goto LABEL_12;
  }

LABEL_18:
  v73 = 0;
  if (*(a4 + 16))
  {
    v14 = a4 + 8;
    v15 = *(a4 + 8);
    if (v15)
    {
      v16 = a4 + 8;
      do
      {
        v17 = *(v15 + 32);
        v18 = v17 >= 0x66637275;
        v19 = v17 < 0x66637275;
        if (v18)
        {
          v16 = v15;
        }

        v15 = *(v15 + 8 * v19);
      }

      while (v15);
      if (v16 != v14 && *(v16 + 32) <= 0x66637275u)
      {
        for (i = *(v16 + 48); i != (v16 + 40); i = i[1])
        {
          v21 = i[3];
          if (v21)
          {
            v22 = std::__shared_weak_count::lock(v21);
            if (v22)
            {
              v23 = v22;
              v24 = i[2];
              if (v24 && v24[36] == 1886745449)
              {
                v25 = (*(*v24 + 160))(v24);
                sub_1A8C0(v23);
                if (v25)
                {
                  goto LABEL_149;
                }
              }

              else
              {
                sub_1A8C0(v23);
              }
            }
          }
        }

        v14 = v16;
      }
    }

    v26 = (v14 + 40);
    for (j = *(v14 + 48); ; j = j[1])
    {
      if (j == v26)
      {
        v33 = 1;
        goto LABEL_49;
      }

      v28 = j[3];
      if (!v28)
      {
        break;
      }

      v29 = std::__shared_weak_count::lock(v28);
      if (!v29)
      {
        break;
      }

      v30 = v29;
      v31 = j[2];
      if (!v31 || ((*(*v31 + 160))(j[2]) & 1) != 0)
      {
        sub_1A8C0(v30);
        break;
      }

      v32 = v31[92];
      sub_1A8C0(v30);
      if (v32)
      {
        break;
      }
    }

    v33 = 0;
LABEL_49:
    v73 = v33;
  }

  v34 = sub_5544(8);
  v35 = *v34;
  if (*v34 && os_log_type_enabled(*v34, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    *&buf[4] = "RoutingManager.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 2108;
    *&buf[18] = 1024;
    *&buf[20] = v73;
    _os_log_impl(&dword_0, v35, OS_LOG_TYPE_DEFAULT, "%25s:%-5d PortUpdate has unroutable output ports only: %d", buf, 0x18u);
  }

  v36 = sub_5544(8);
  v37 = *v36;
  if (*v36 && os_log_type_enabled(*v36, OS_LOG_TYPE_DEFAULT))
  {
    atomic_fetch_add_explicit(&v75->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_23148(v96, v74 + 2);
    if (v96[23] >= 0)
    {
      v38 = v96;
    }

    else
    {
      v38 = *v96;
    }

    *buf = 136315650;
    *&buf[4] = "RoutingManager.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 2118;
    *&buf[18] = 2080;
    *&buf[20] = v38;
    _os_log_impl(&dword_0, v37, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Updating usage of user preferred input: %s", buf, 0x1Cu);
    if ((v96[23] & 0x80000000) != 0)
    {
      operator delete(*v96);
    }

    sub_1A8C0(v75);
  }

  *buf = buf;
  *&buf[8] = buf;
  *&buf[16] = 0;
  sub_269208(&v88, a2, a3, buf, 0);
  sub_76304(buf);
  v39 = sub_5544(8);
  v40 = *v39;
  if (*v39 && os_log_type_enabled(*v39, OS_LOG_TYPE_DEFAULT))
  {
    v41 = v96;
    sub_BCD50(v96, a3);
    if (v96[23] < 0)
    {
      v41 = *v96;
    }

    v42 = v91;
    sub_11AB44(v91, a3 + 136);
    if (v91[23] < 0)
    {
      v42 = *v91;
    }

    if (*(&v89 + 1) == v89)
    {
      sub_269EF8();
    }

    sub_3FEC0C(&v87, v89);
    if ((v87.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v43 = &v87;
    }

    else
    {
      v43 = v87.__r_.__value_.__r.__words[0];
    }

    *buf = 136316162;
    *&buf[4] = "RoutingManager.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 2153;
    *&buf[18] = 2080;
    *&buf[20] = v41;
    v99 = 2080;
    v100 = v42;
    v101 = 2080;
    v102 = v43;
    _os_log_impl(&dword_0, v40, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Active ports for route configuration (%s), user preferred input: (%s) returned: %s", buf, 0x30u);
    if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v87.__r_.__value_.__l.__data_);
    }

    if ((v91[23] & 0x80000000) != 0)
    {
      operator delete(*v91);
    }

    if ((v96[23] & 0x80000000) != 0)
    {
      operator delete(*v96);
    }
  }

  sub_269F10(&v85, v89, *(&v89 + 1), 1);
  sub_269F10(&v83, v89, *(&v89 + 1), 0);
  sub_7FB94(buf, a3);
  v44 = v104;
  v103 = 0;
  v104 = 0;
  if (v44)
  {
    std::__shared_weak_count::__release_weak(v44);
  }

  *v91 = v91;
  *&v91[8] = v91;
  *&v91[16] = 0;
  sub_269208(v96, a2, buf, v91, 0);
  v88 = *v96;
  sub_DF1AC(&v89);
  v89 = *&v96[8];
  v90 = *&v96[24];
  memset(&v96[8], 0, 24);
  v87.__r_.__value_.__r.__words[0] = &v96[8];
  sub_847A8(&v87);
  sub_76304(v91);
  v45 = sub_5544(8);
  v46 = *v45;
  if (*v45 && os_log_type_enabled(*v45, OS_LOG_TYPE_DEFAULT))
  {
    v47 = v91;
    sub_BCD50(v91, buf);
    if (v91[23] < 0)
    {
      v47 = *v91;
    }

    sub_11AB44(&v87, &v103);
    if ((v87.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v48 = &v87;
    }

    else
    {
      v48 = v87.__r_.__value_.__r.__words[0];
    }

    if (*(&v89 + 1) == v89)
    {
      sub_269EF8();
    }

    sub_3FEC0C(&__p, v89);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    *v96 = 136316162;
    *&v96[4] = "RoutingManager.cpp";
    *&v96[12] = 1024;
    *&v96[14] = 2162;
    *&v96[18] = 2080;
    *&v96[20] = v47;
    *&v96[28] = 2080;
    *&v96[30] = v48;
    *&v96[38] = 2080;
    v97 = p_p;
    _os_log_impl(&dword_0, v46, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Active ports for route configuration (%s), user preferred input: (%s) returned: %s", v96, 0x30u);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v87.__r_.__value_.__l.__data_);
    }

    if ((v91[23] & 0x80000000) != 0)
    {
      operator delete(*v91);
    }
  }

  sub_269F10(&v80, v89, *(&v89 + 1), 1);
  sub_269F10(&v78, v89, *(&v89 + 1), 0);
  v50 = v85;
  if (v85 && v80)
  {
    *v96 = &v74;
    *&v96[8] = a4;
    *&v96[16] = &v83;
    *&v96[24] = &v78;
    *&v96[32] = &v80;
    v97 = &v73;
    os_unfair_lock_opaque = v85[36]._os_unfair_lock_opaque;
    v52 = v80[36]._os_unfair_lock_opaque;
    v53 = (v52 & 0xFFFFFFDF) == 0x70687042 && (os_unfair_lock_opaque & 0xFFFFFFDF) == 1885892674;
    if (!v53 && os_unfair_lock_opaque != v52)
    {
      goto LABEL_105;
    }

    if (sub_26A1EC(v96))
    {
      os_unfair_lock_opaque = v50[36]._os_unfair_lock_opaque;
      v52 = v80[36]._os_unfair_lock_opaque;
LABEL_105:
      if (os_unfair_lock_opaque != v52)
      {
        v54 = sub_5544(8);
        v55 = *v54;
        if (*v54)
        {
          if (os_log_type_enabled(*v54, OS_LOG_TYPE_DEFAULT))
          {
            sub_23148(&v87, v50 + 2);
            if ((v87.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v56 = &v87;
            }

            else
            {
              v56 = v87.__r_.__value_.__r.__words[0];
            }

            sub_23148(&__p, v80 + 2);
            v57 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
            v58 = __p.__r_.__value_.__r.__words[0];
            sub_11AB44(v76, a3 + 136);
            v59 = &__p;
            if (v57 < 0)
            {
              v59 = v58;
            }

            if (v77 >= 0)
            {
              v60 = v76;
            }

            else
            {
              v60 = v76[0];
            }

            *v91 = 136316162;
            *&v91[4] = "RoutingManager.cpp";
            *&v91[12] = 1024;
            *&v91[14] = 2244;
            *&v91[18] = 2080;
            *&v91[20] = v56;
            v92 = 2080;
            v93 = v59;
            v94 = 2080;
            v95 = v60;
            _os_log_impl(&dword_0, v55, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Output ports are different (with user preferred input honored: %s vs not honored: %s), user-preferred-input (%s) to be ignored", v91, 0x30u);
            if (v77 < 0)
            {
              operator delete(v76[0]);
            }

            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v87.__r_.__value_.__l.__data_);
            }
          }
        }
      }

      if (sub_26A1EC(v96))
      {
        v61 = sub_5544(8);
        v62 = *v61;
        if (*v61)
        {
          if (os_log_type_enabled(*v61, OS_LOG_TYPE_DEFAULT))
          {
            sub_11AB44(&v87, a3 + 136);
            v63 = (v87.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v87 : v87.__r_.__value_.__r.__words[0];
            *v91 = 136315650;
            *&v91[4] = "RoutingManager.cpp";
            *&v91[12] = 1024;
            *&v91[14] = 2247;
            *&v91[18] = 2080;
            *&v91[20] = v63;
            _os_log_impl(&dword_0, v62, OS_LOG_TYPE_DEFAULT, "%25s:%-5d User preferred input is BT/carplay like. user-preferred-input (%s) to be ignored", v91, 0x1Cu);
            if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v87.__r_.__value_.__l.__data_);
            }
          }
        }
      }

      v64 = 1;
      goto LABEL_132;
    }
  }

  v64 = 0;
LABEL_132:
  if (v79)
  {
    sub_1A8C0(v79);
  }

  if (v81)
  {
    sub_1A8C0(v81);
  }

  sub_4AF90(buf);
  if (v84)
  {
    sub_1A8C0(v84);
  }

  if (v86)
  {
    sub_1A8C0(v86);
  }

  *buf = &v89;
  sub_847A8(buf);
  if (v64)
  {
    v65 = sub_5544(8);
    v66 = *v65;
    if (*v65 && os_log_type_enabled(*v65, OS_LOG_TYPE_DEFAULT))
    {
      sub_11AB44(v96, a3 + 136);
      v67 = v96[23] >= 0 ? v96 : *v96;
      *buf = 136315650;
      *&buf[4] = "RoutingManager.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 2258;
      *&buf[18] = 2080;
      *&buf[20] = v67;
      _os_log_impl(&dword_0, v66, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Output ports incompatible with user preferred input, clearing user preferred input : %s", buf, 0x1Cu);
      if ((v96[23] & 0x80000000) != 0)
      {
        operator delete(*v96);
      }
    }

    *a1 = 0;
    *(a1 + 8) = 0;
    v68 = 1;
    *(a1 + 16) = 0;
  }

  else
  {
LABEL_149:
    v69 = *(a3 + 144);
    *a1 = *(a3 + 136);
    *(a1 + 8) = v69;
    if (v69)
    {
      atomic_fetch_add_explicit((v69 + 16), 1uLL, memory_order_relaxed);
    }

    v68 = 0;
    *(a1 + 16) = 0;
  }

  *(a1 + 17) = v68;
LABEL_153:
  if (v75)
  {
    sub_1A8C0(v75);
  }
}

void sub_26907C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, std::__shared_weak_count *a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, std::__shared_weak_count *a26, uint64_t a27, std::__shared_weak_count *a28, uint64_t a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, int a50, __int16 a51, char a52, char a53, uint64_t a54, uint64_t a55, uint64_t a56, void **a57)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  if (a34 < 0)
  {
    operator delete(*v58);
  }

  if (a16)
  {
    sub_1A8C0(a16);
  }

  if (a18)
  {
    sub_1A8C0(a18);
  }

  sub_4AF90(&a57);
  if (a26)
  {
    sub_1A8C0(a26);
  }

  if (a28)
  {
    sub_1A8C0(a28);
  }

  *(v58 + 152) = v57;
  sub_847A8(&a57);
  if (a11)
  {
    sub_1A8C0(a11);
  }

  _Unwind_Resume(a1);
}

_BYTE *sub_269208(int *a1, uint64_t *a2, uint64_t a3, uint64_t a4, int a5)
{
  sub_27A4();
  v40 = (*(qword_6E94F8 + 16))();
  sub_27A4();
  v10 = atomic_load(&qword_6E9558);
  if (v10 != pthread_self())
  {
    v34 = sub_5544(14);
    v35 = *v34;
    if (*v34 && os_log_type_enabled(*v34, OS_LOG_TYPE_ERROR))
    {
      *v52 = 136315394;
      v53 = "RoutingManager.cpp";
      v54 = 1024;
      v55 = 2393;
      _os_log_impl(&dword_0, v35, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): Unable to acquire routing mutex.", v52, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Unable to acquire routing mutex.");
  }

  *(a1 + 1) = 0;
  *(a1 + 2) = 0;
  *(a1 + 3) = 0;
  *a1 = 2;
  sub_7EDC8(v52, a2, a3);
  sub_764E0(&v39, a4);
  v11 = *(*a2 + 8);
  if (v11)
  {
    v12 = *a2 + 8;
    do
    {
      v13 = *(v11 + 32);
      v14 = v13 >= *v52;
      v15 = v13 < *v52;
      if (v14)
      {
        v12 = v11;
      }

      v11 = *(v11 + 8 * v15);
    }

    while (v11);
    if (v12 != *a2 + 8 && *v52 >= *(v12 + 32))
    {
      memset(&v38, 0, sizeof(v38));
      memset(buf, 0, 24);
      strcpy(&buf[24], "cwdv");
      BYTE2(v44) = 0;
      data = 3;
      *(&v46 + 1) = 0;
      v47 = 0;
      *&v46 = &v46 + 8;
      v48 = 44739242;
      v50 = 0;
      v51 = 0;
      v49 = 0;
      if (a5)
      {
        if (a5 == 1)
        {
          LODWORD(v37.__r_.__value_.__l.__data_) = 1885544823;
          LODWORD(v41.__r_.__value_.__l.__data_) = 3;
          sub_4BA00(&v41.__r_.__value_.__l.__size_, &v37, 1);
          data = v41.__r_.__value_.__l.__data_;
          sub_477A0(*(&v46 + 1));
          v16 = v41.__r_.__value_.__r.__words[2];
          v46 = *&v41.__r_.__value_.__r.__words[1];
          v47 = __p;
          if (__p)
          {
            *(v41.__r_.__value_.__r.__words[2] + 16) = &v46 + 8;
            v41.__r_.__value_.__l.__size_ = &v41.__r_.__value_.__r.__words[2];
            v41.__r_.__value_.__r.__words[2] = 0;
            __p = 0;
            v16 = 0;
          }

          else
          {
            *&v46 = &v46 + 8;
          }

          sub_477A0(v16);
        }

        else
        {
          v48 = 44673706;
        }
      }

      operator new();
    }
  }

  if (*a1)
  {
    goto LABEL_43;
  }

  v17 = sub_5544(8);
  if (*(v17 + 8))
  {
    v18 = *v17;
    if (*v17)
    {
      if (os_log_type_enabled(*v17, OS_LOG_TYPE_DEBUG))
      {
        sub_BCD50(&v37, v52);
        if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v19 = &v37;
        }

        else
        {
          v19 = v37.__r_.__value_.__r.__words[0];
        }

        memset(&v38, 0, sizeof(v38));
        std::string::append(&v38, "{ ", 2uLL);
        v20 = *(a1 + 1);
        for (i = *(a1 + 2); v20 != i; v20 += 14)
        {
          sub_3FEC0C(&v41, v20);
          if ((v41.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v22 = &v41;
          }

          else
          {
            v22 = v41.__r_.__value_.__r.__words[0];
          }

          if ((v41.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(v41.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = v41.__r_.__value_.__l.__size_;
          }

          std::string::append(&v38, v22, size);
          if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v41.__r_.__value_.__l.__data_);
          }
        }

        std::string::append(&v38, " }", 2uLL);
        if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v24 = &v38;
        }

        else
        {
          v24 = v38.__r_.__value_.__r.__words[0];
        }

        *buf = 136315906;
        *&buf[4] = "RoutingManager.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 2435;
        *&buf[18] = 2080;
        *&buf[20] = v19;
        *&buf[28] = 2080;
        v44 = v24;
        _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEBUG, "%25s:%-5d For %s: %s", buf, 0x26u);
        if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v38.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v37.__r_.__value_.__l.__data_);
        }
      }
    }
  }

  if (*a1)
  {
LABEL_43:
    v25 = sub_5544(8);
    v26 = sub_5544(35);
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
        goto LABEL_49;
      }
    }

    if ((v28 & v29) == 0)
    {
      v25 = v26;
    }

LABEL_49:
    v30 = *v25;
    if (v30 && os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
    {
      sub_BCD50(&v41, v52);
      v31 = (v41.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v41 : v41.__r_.__value_.__r.__words[0];
      v32 = *a1;
      *buf = 136315906;
      *&buf[4] = "RoutingManager.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 2437;
      *&buf[18] = 2080;
      *&buf[20] = v31;
      *&buf[28] = 1024;
      LODWORD(v44) = v32;
      _os_log_impl(&dword_0, v30, OS_LOG_TYPE_DEBUG, "%25s:%-5d For %s: failed with result %d", buf, 0x22u);
      if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v41.__r_.__value_.__l.__data_);
      }
    }
  }

  *buf = &v39;
  sub_9DD40(buf);
  sub_4AF90(v52);
  return sub_210C50(&v40);
}

void sub_269C58()
{
  sub_46934(v0 + 464);
  sub_9DB70(v0);
  operator delete();
}

void sub_269F10(void *a1, _DWORD *a2, _DWORD *a3, char a4)
{
  if (a2 == a3)
  {
    v6 = a2;
  }

  else
  {
    v6 = a2;
    while (v6[1] || *v6 != 1986291046)
    {
      v6 += 14;
      if (v6 == a3)
      {
        v6 = a3;
        break;
      }
    }

    while (a2[1] || *a2 != 1986291305)
    {
      a2 += 14;
      if (a2 == a3)
      {
        a2 = a3;
        break;
      }
    }
  }

  if (v6 == a3)
  {
    v16 = sub_5544(8);
    v17 = *v16;
    if (*v16 && os_log_type_enabled(*v16, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 136315394;
      v24 = "RoutingManager.cpp";
      v25 = 1024;
      v26 = 2129;
      _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, "%25s:%-5d No device info for vdef found", &v23, 0x12u);
    }

    goto LABEL_39;
  }

  if ((a4 & 1) != 0 || a2 == a3)
  {
    a2 = v6;
  }

  if (a2[1] || *a2 != 1986291046 && *a2 != 1986291305)
  {
    v20 = sub_5544(14);
    v21 = *v20;
    if (*v20 && os_log_type_enabled(*v20, OS_LOG_TYPE_ERROR))
    {
      v23 = 136315394;
      v24 = "RoutingManager.cpp";
      v25 = 1024;
      v26 = 2136;
      _os_log_impl(&dword_0, v21, OS_LOG_TYPE_ERROR, "%25s:%-5d INVARIANT FAILURE (std::logic_error).", &v23, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Invariant failure.");
  }

  v9 = a2 + 2;
  v10 = *(a2 + 2);
  if (v10 == (a2 + 2))
  {
    goto LABEL_39;
  }

  while (1)
  {
    v11 = v10[3];
    if (!v11)
    {
      goto LABEL_34;
    }

    v12 = std::__shared_weak_count::lock(v11);
    if (!v12)
    {
      goto LABEL_34;
    }

    v13 = v10[2];
    if (!v13)
    {
LABEL_33:
      sub_1A8C0(v12);
      goto LABEL_34;
    }

    v14 = *(v13 + 184);
    if (a4)
    {
      sub_1A8C0(v12);
      if ((v14 & 1) == 0)
      {
        break;
      }

      goto LABEL_34;
    }

    if ((v14 & 1) == 0)
    {
      goto LABEL_33;
    }

    v15 = *(v13 + 144);
    sub_1A8C0(v12);
    if (v15 == 1886216820)
    {
      break;
    }

LABEL_34:
    v10 = v10[1];
    if (v10 == v9)
    {
      goto LABEL_39;
    }
  }

  if (v10 == v9)
  {
LABEL_39:
    *a1 = 0;
    a1[1] = 0;
    return;
  }

  *a1 = 0;
  a1[1] = 0;
  v18 = v10[3];
  if (v18)
  {
    v19 = std::__shared_weak_count::lock(v18);
    a1[1] = v19;
    if (v19)
    {
      *a1 = v10[2];
    }
  }
}

uint64_t sub_26A1EC(uint64_t **a1)
{
  v2 = **a1;
  if (*(v2 + 148) == 1885544823 || *(v2 + 144) == 1886614633)
  {
    v3 = a1[1];
    if (v3[2])
    {
      v6 = v3[1];
      v4 = v3 + 1;
      v5 = v6;
      if (!v6)
      {
        goto LABEL_31;
      }

      v7 = a1[2];
      v8 = a1[3];
      v9 = v4;
      do
      {
        v10 = *(v5 + 8);
        v11 = v10 >= 0x66637275;
        v12 = v10 < 0x66637275;
        if (v11)
        {
          v9 = v5;
        }

        v5 = v5[v12];
      }

      while (v5);
      if (v9 != v4 && *(v9 + 8) <= 0x66637275u && *v7 && *v8 && *(*v7 + 144) == 1886216820 && (v13 = sub_A82E4(*v8), v13 != sub_A82E4(*v7)) && (v14 = v9 + 5, v15 = v9[6], v15 != v9 + 5))
      {
        while (1)
        {
          v16 = v15[3];
          if (v16)
          {
            v17 = std::__shared_weak_count::lock(v16);
            if (v17)
            {
              v18 = v15[2];
            }

            else
            {
              v18 = 0;
            }
          }

          else
          {
            v18 = 0;
            v17 = 0;
          }

          if (v18[36] == 1885892706 && (*(*v18 + 160))(v18) && (v19 = sub_A82E4(v18), v19 == sub_A82E4(*v8)))
          {
            v20 = sub_A82E4(v18);
            v21 = v20 != sub_A82E4(*v7);
          }

          else
          {
            v21 = 0;
          }

          if (v17)
          {
            sub_1A8C0(v17);
          }

          if (v21)
          {
            break;
          }

          v15 = v15[1];
          if (v15 == v14)
          {
            goto LABEL_31;
          }
        }

        v24 = 1;
      }

      else
      {
LABEL_31:
        if (*a1[5] == 1)
        {
          v22 = sub_5544(8);
          v23 = *v22;
          if (*v22)
          {
            if (os_log_type_enabled(*v22, OS_LOG_TYPE_DEFAULT))
            {
              v26 = 136315394;
              v27 = "RoutingManager.cpp";
              v28 = 1024;
              v29 = 2224;
              _os_log_impl(&dword_0, v23, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Port update is all unroutable outputs. Dropping user preferred input.", &v26, 0x12u);
            }
          }
        }

        v24 = *a1[5];
      }
    }

    else
    {
      v24 = *(*a1[4] + 144) == 1886614639;
    }
  }

  else
  {
    v24 = 0;
  }

  return v24 & 1;
}

void sub_26A4AC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_1A8C0(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_26A4C4(unint64_t a1)
{
  if (a1 < 0x492492492492493)
  {
    operator new();
  }

  sub_6ACD8();
}

uint64_t sub_26A520(void *a1)
{
  v2 = a1[1];
  if (!v2)
  {
    return 0;
  }

  if (v2->__shared_owners_ == -1)
  {
    return 0;
  }

  v3 = std::__shared_weak_count::lock(v2);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  if (*a1)
  {
    v5 = (*(**a1 + 160))(*a1);
  }

  else
  {
    v5 = 0;
  }

  sub_1A8C0(v4);
  return v5;
}

BOOL sub_26A5C0(signed int a1)
{
  if (a1 <= 1919186543)
  {
    if (a1 > 1919050850)
    {
      if (a1 <= 1919181935)
      {
        if (a1 == 1919050851)
        {
          return 0;
        }

        v3 = 1919118966;
      }

      else
      {
        if (a1 == 1919181936 || a1 == 1919184754)
        {
          return 0;
        }

        v3 = 1919185776;
      }
    }

    else if (a1 <= 1667327074)
    {
      if (!a1)
      {
        return 0;
      }

      v3 = 1651799408;
    }

    else
    {
      if (a1 == 1667327075 || a1 == 1918989155)
      {
        return 0;
      }

      v3 = 1919050611;
    }

    goto LABEL_30;
  }

  result = 1;
  if (a1 <= 1919971426)
  {
    if (a1 <= 1919904884)
    {
      if (a1 == 1919186544)
      {
        return result;
      }

      v3 = 1919842148;
    }

    else
    {
      if (a1 == 1919904885 || a1 == 1919907442)
      {
        return 0;
      }

      v3 = 1919970403;
    }

    goto LABEL_30;
  }

  if (a1 > 1920168052)
  {
    if (a1 == 1920429155)
    {
      return 0;
    }

    if (a1 == 1920360819)
    {
      return result;
    }

    v3 = 1920168053;
LABEL_30:
    if (a1 != v3)
    {
      goto LABEL_33;
    }

    return 0;
  }

  if (a1 == 1919971427 || a1 == 1919971701)
  {
    return 0;
  }

  if (a1 == 1920099684)
  {
    return result;
  }

LABEL_33:
  v4 = sub_5544(20);
  v5 = *v4;
  if (!*v4)
  {
    return 0;
  }

  result = os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR);
  if (result)
  {
    sub_22170(__p, a1);
    if (v8 >= 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = __p[0];
    }

    *buf = 136315650;
    v10 = "RoutingManager_Utilities.h";
    v11 = 1024;
    v12 = 131;
    v13 = 2080;
    v14 = v6;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d Unsupported VirtualAudioPlugInRouteChangeReason %s", buf, 0x1Cu);
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }

    return 0;
  }

  return result;
}

void sub_26A870(void *a1, uint64_t a2, int a3)
{
  *a1 = 0;
  a1[1] = 0;
  sub_26AD34(&v27, *a2);
  v6 = v27;
  if (v27 != v28)
  {
    v7 = 0;
    v8 = 0;
    do
    {
      if (((*(*v6[4] + 152))(v6[4]) & 1) == 0)
      {
        v21 = sub_5544(14);
        v22 = *v21;
        if (*v21 && os_log_type_enabled(*v21, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v30 = "RoutingManager.cpp";
          v31 = 1024;
          v32 = 3101;
          _os_log_impl(&dword_0, v22, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): one of the specified ports is not connected.", buf, 0x12u);
        }

        exception = __cxa_allocate_exception(0x10uLL);
        std::logic_error::logic_error(exception, "one of the specified ports is not connected.");
LABEL_42:
      }

      if (((*(*v6[4] + 160))(v6[4]) & 1) == 0)
      {
        v18 = sub_5544(14);
        v19 = *v18;
        if (*v18 && os_log_type_enabled(*v18, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v30 = "RoutingManager.cpp";
          v31 = 1024;
          v32 = 3102;
          _os_log_impl(&dword_0, v19, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): one of the specified ports is not routable.", buf, 0x12u);
        }

        exception = __cxa_allocate_exception(0x10uLL);
        std::logic_error::logic_error(exception, "one of the specified ports is not routable.");
        goto LABEL_42;
      }

      if (a3 || (*(a2 + 8) & 1) == 0)
      {
        if (a3 == 1 && (*(a2 + 9) & 1) != 0 && (v6[4][23] & 1) == 0)
        {
          if (v7)
          {
            v12 = std::__shared_weak_count::lock(v7);
            if (v12)
            {
              v10 = v12;
              atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
              sub_1A8C0(v12);
              v13 = std::__shared_weak_count::lock(v10);
              if (v13)
              {
                sub_1A8C0(v13);
                std::__shared_weak_count::__release_weak(v10);
                if (v8)
                {
                  v25 = sub_5544(14);
                  v26 = *v25;
                  if (*v25 && os_log_type_enabled(*v25, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 136315394;
                    v30 = "RoutingManager.cpp";
                    v31 = 1024;
                    v32 = 3111;
                    _os_log_impl(&dword_0, v26, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): more than one output specified in inPortsForOverride.", buf, 0x12u);
                  }

                  exception = __cxa_allocate_exception(0x10uLL);
                  std::logic_error::logic_error(exception, "more than one output specified in inPortsForOverride.");
                  goto LABEL_42;
                }

                goto LABEL_23;
              }

LABEL_22:
              std::__shared_weak_count::__release_weak(v10);
            }
          }

LABEL_23:
          v8 = v6[4];
          v14 = v6[5];
          if (v14)
          {
            atomic_fetch_add_explicit(&v14->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          }

          *a1 = v8;
          a1[1] = v14;
          if (v7)
          {
            std::__shared_weak_count::__release_weak(v7);
          }

          goto LABEL_27;
        }
      }

      else if (v6[4][23])
      {
        if (v7)
        {
          v9 = std::__shared_weak_count::lock(v7);
          if (v9)
          {
            v10 = v9;
            atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
            sub_1A8C0(v9);
            v11 = std::__shared_weak_count::lock(v10);
            if (!v11)
            {
              goto LABEL_22;
            }

            sub_1A8C0(v11);
            std::__shared_weak_count::__release_weak(v10);
            if (v8)
            {
              v23 = sub_5544(14);
              v24 = *v23;
              if (*v23)
              {
                if (os_log_type_enabled(*v23, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136315394;
                  v30 = "RoutingManager.cpp";
                  v31 = 1024;
                  v32 = 3106;
                  _os_log_impl(&dword_0, v24, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): more than one input specified in inPortsForOverride.", buf, 0x12u);
                }
              }

              exception = __cxa_allocate_exception(0x10uLL);
              std::logic_error::logic_error(exception, "more than one input specified in inPortsForOverride.");
              goto LABEL_42;
            }
          }
        }

        goto LABEL_23;
      }

      v14 = v7;
LABEL_27:
      v15 = v6[1];
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
          v16 = v6[2];
          v17 = *v16 == v6;
          v6 = v16;
        }

        while (!v17);
      }

      v7 = v14;
      v6 = v16;
    }

    while (v16 != v28);
  }

  sub_1199A8(v28[0]);
}

void sub_26ACDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11)
{
  __cxa_free_exception(v12);
  sub_1199A8(a11);
  v14 = *(v11 + 8);
  if (v14)
  {
    std::__shared_weak_count::__release_weak(v14);
  }

  _Unwind_Resume(a1);
}

void sub_26AD34(void *a1, void *a2)
{
  v14 = 0;
  v15 = 0;
  v3 = a2 + 1;
  v4 = *a2;
  if (*a2 == a2 + 1)
  {
    v11 = 0;
    a1[1] = 0;
    a1[2] = 0;
    v13 = a1 + 1;
LABEL_20:
    *a1 = v13;
    goto LABEL_21;
  }

  do
  {
    v5 = v4[5];
    if (v5)
    {
      v6 = std::__shared_weak_count::lock(v5);
      if (v6)
      {
        if (v4[4])
        {
          v7 = v14 ? &v15 : &v14;
          if (!*v7)
          {
            operator new();
          }
        }

        sub_1A8C0(v6);
      }
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
        v10 = *v9 == v4;
        v4 = v9;
      }

      while (!v10);
    }

    v4 = v9;
  }

  while (v9 != v3);
  v11 = v14;
  v12 = v15;
  *a1 = &v14;
  a1[1] = v11;
  v13 = a1 + 1;
  a1[2] = v12;
  if (!v12)
  {
    goto LABEL_20;
  }

  v11[2] = v13;
  v14 = 0;
  v15 = 0;
  v11 = 0;
LABEL_21:
  sub_1199A8(v11);
}

void sub_26AF58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11)
{
  if (v11)
  {
    sub_1A8C0(v11);
  }

  sub_1199A8(a11);
  _Unwind_Resume(a1);
}

void *sub_26AF78(uint64_t a1, unint64_t *a2)
{
  result = sub_871F0(a1, &v3, a2);
  if (!*result)
  {
    operator new();
  }

  return result;
}

void sub_26B028(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = a1 + 1;
  for (i = *(a2 + 8); i != a2; i = *(i + 8))
  {
    v16 = 0;
    v17 = 0;
    v26[0] = off_6BC5B8;
    v26[1] = &v16;
    v26[3] = v26;
    v5 = sub_26B270((i + 16), v26);
    sub_26B5B8(v26);
    if ((v5 & 1) == 0)
    {
      v6 = sub_5544(8);
      v7 = *v6;
      if (*v6 && os_log_type_enabled(*v6, OS_LOG_TYPE_DEBUG))
      {
        sub_FC33C(v14, i + 16);
        v8 = v15;
        v9 = v14[0];
        sub_FC33C(__p, &v16);
        v10 = v14;
        if (v8 < 0)
        {
          v10 = v9;
        }

        v11 = __p;
        if (v13 < 0)
        {
          v11 = __p[0];
        }

        *buf = 136315906;
        v19 = "RoutingManager.cpp";
        v20 = 1024;
        v21 = 284;
        v22 = 2080;
        v23 = v10;
        v24 = 2080;
        v25 = v11;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d Disallowing port %s for colistening, partner port is %s", buf, 0x26u);
        if (v13 < 0)
        {
          operator delete(__p[0]);
        }

        if (v15 < 0)
        {
          operator delete(v14[0]);
        }
      }

      sub_26AF78(a1, (i + 16));
    }

    if (v17)
    {
      std::__shared_weak_count::__release_weak(v17);
    }
  }
}

void sub_26B21C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, std::__shared_weak_count *a23)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a23)
  {
    std::__shared_weak_count::__release_weak(a23);
  }

  sub_4B0F4(*a10);
  _Unwind_Resume(a1);
}

uint64_t sub_26B270(uint64_t *a1, uint64_t a2)
{
  sub_88A00(&v22, a1, "", 214);
  v4 = *(v22 + 144);
  v5 = 1;
  if (v4 > 1886152040)
  {
    if (v4 != 1886152041)
    {
      v6 = 1886216820;
      goto LABEL_6;
    }

LABEL_18:
    v5 = 0;
    goto LABEL_29;
  }

  if (v4 == 1885892674)
  {
    sub_88A00(&v24, a1, "", 210);
    v13 = (*(*v24 + 112))(v24);
    if (v25)
    {
      sub_1A8C0(v25);
    }

    if ((v13 & 0x1FFFFFFFFLL) != 0x165707668)
    {
      sub_26B638(&v24, a1, 1885892706);
      if (v25)
      {
        sub_88A00(&v20, &v24, "", 241);
        v26 = 0x676C6F6273687370;
        v27 = 0;
        v14 = sub_59410(v20);
        *(&v17 + 1) = v15;
        *&v17 = v14;
        v16 = v17 >> 32;
        v5 = 1;
        if ((v16 & 0x100000000) != 0 && v16)
        {
          v18 = *(a2 + 24);
          if (!v18)
          {
            sub_46A74();
          }

          v5 = (*(*v18 + 48))(v18, &v24);
        }

        if (v21)
        {
          sub_1A8C0(v21);
        }

        goto LABEL_26;
      }

LABEL_28:
      v5 = 1;
      goto LABEL_29;
    }

    goto LABEL_18;
  }

  v6 = 1885892706;
LABEL_6:
  if (v4 != v6)
  {
    goto LABEL_29;
  }

  v24 = 0x676C6F6273687370;
  LODWORD(v25) = 0;
  v7 = sub_59410(v22);
  *(&v10 + 1) = v8;
  *&v10 = v7;
  v9 = v10 >> 32;
  if ((v9 & 0x100000000) != 0)
  {
    if (v9)
    {
      goto LABEL_29;
    }
  }

  sub_88A00(&v24, a1, "", 210);
  v11 = (*(*v24 + 112))(v24);
  if (v25)
  {
    sub_1A8C0(v25);
  }

  if ((v11 & 0x1FFFFFFFFLL) == 0x165707668)
  {
    goto LABEL_28;
  }

  sub_26B638(&v24, a1, 1885892674);
  if (!v25)
  {
    goto LABEL_28;
  }

  v12 = *(a2 + 24);
  if (!v12)
  {
    sub_46A74();
  }

  v5 = (*(*v12 + 48))(v12, &v24);
LABEL_26:
  if (v25)
  {
    std::__shared_weak_count::__release_weak(v25);
  }

LABEL_29:
  if (v23)
  {
    sub_1A8C0(v23);
  }

  return v5;
}

void sub_26B550(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a10)
  {
    sub_1A8C0(a10);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_weak(a14);
  }

  if (a12)
  {
    sub_1A8C0(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_26B5B8(uint64_t a1)
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

void sub_26B638(uint64_t *a1, uint64_t *a2, int a3)
{
  sub_88A00(&v11, a2, "", 184);
  sub_11319C(v13, v11);
  sub_76388(&v14, v13);
  sub_65310(v13);
  if (v12)
  {
    sub_1A8C0(v12);
  }

  v5 = v15;
  if (v15 != &v14)
  {
    do
    {
      v7 = v5[2];
      v6 = v5[3];
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        v8 = *(v7 + 144);
        sub_1A8C0(v6);
        if (v8 == a3)
        {
          goto LABEL_10;
        }
      }

      else if (*(v7 + 144) == a3)
      {
        goto LABEL_10;
      }

      v5 = v5[1];
    }

    while (v5 != &v14);
    goto LABEL_13;
  }

LABEL_10:
  if (v5 == &v14)
  {
LABEL_13:
    v10 = 0;
    goto LABEL_14;
  }

  v10 = v5[2];
  v9 = v5[3];
  if (!v9)
  {
LABEL_14:
    *a1 = v10;
    a1[1] = 0;
    goto LABEL_15;
  }

  atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  *a1 = v10;
  a1[1] = v9;
  atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  sub_1A8C0(v9);
LABEL_15:
  sub_87980(&v14);
}

void sub_26B748(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, ...)
{
  va_start(va, a3);
  sub_65310(va);
  if (a3)
  {
    sub_1A8C0(a3);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_26B770(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  v5 = v2[1];
  *v2 = v4;
  v2[1] = v3;
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  return 0;
}

uint64_t sub_26B7BC(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_6BC5B8;
  a2[1] = v2;
  return result;
}

void sub_26B850(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_27A4();
  v5 = atomic_load(&qword_6E9558);
  if (v5 == pthread_self())
  {
    v6 = a3[1];
    if (v6)
    {
      v7 = std::__shared_weak_count::lock(v6);
      if (v7)
      {
        v8 = v7;
        v9 = *a3;
        if (*a3)
        {
          if (((*(*v9 + 160))(*a3) & 1) == 0 && (*(v9 + 184) & 0x40) != 0)
          {
            v10 = sub_809C0();
            v30 = v9;
            v31 = v8;
            atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
            sub_22ED54(buf, &v30, 1);
            sub_1150D4(v10, buf, 1, 1);
            sub_65310(buf);
            if (v31)
            {
              std::__shared_weak_count::__release_weak(v31);
            }
          }

          sub_114A00(buf, v9);
          sub_26BC74(a2, buf);
          sub_65310(buf);
        }

        sub_1A8C0(v8);
      }
    }

    sub_7B03C(&v30, (a2 + 72));
    v11 = sub_5544(8);
    v12 = *v11;
    if (*v11 && os_log_type_enabled(*v11, OS_LOG_TYPE_DEFAULT))
    {
      sub_265514(&__p, &v30);
      v13 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
      *buf = 136315650;
      v25 = "RoutingManager.cpp";
      v26 = 1024;
      v27 = 4261;
      v28 = 2080;
      v29 = v13;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "%25s:%-5d disallowed ports in current route config: %s", buf, 0x1Cu);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    v14 = *(a2 + 144);
    v15 = *(a2 + 408);
    v16 = *(a2 + 410);
    v17 = *a3;
    v18 = a3[1];
    __p.__r_.__value_.__r.__words[0] = v17;
    __p.__r_.__value_.__l.__size_ = v18;
    if (v18)
    {
      atomic_fetch_add_explicit((v18 + 16), 1uLL, memory_order_relaxed);
    }

    LOWORD(__p.__r_.__value_.__r.__words[2]) = 0;
    LODWORD(v22) = 1919907442;
    sub_C25C0(buf, a2, (a2 + 32), a2 + 48, &v30, a2 + 120, v14, (a2 + 152), a2 + 200, (a2 + 240), v15, (a2 + 416), v22, a2 + 440, (a2 + 472), v16, &__p);
  }

  v19 = sub_5544(14);
  v20 = *v19;
  if (*v19 && os_log_type_enabled(*v19, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v25 = "RoutingManager.cpp";
    v26 = 1024;
    v27 = 4247;
    _os_log_impl(&dword_0, v20, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): Thread is not holding routing mutex", buf, 0x12u);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Thread is not holding routing mutex");
}

void sub_26BBC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_65310(va);
  v16 = *(v14 - 112);
  if (v16)
  {
    std::__shared_weak_count::__release_weak(v16);
  }

  sub_1A8C0(v13);
  _Unwind_Resume(a1);
}

void sub_26BC74(uint64_t a1, void *a2)
{
  if (!a2[2])
  {
    return;
  }

  v3 = *(a1 + 32);
  if (v3 <= 1668313665)
  {
    v4 = v3 == 1668114797 || v3 == 1668301427;
    v5 = 24946;
    goto LABEL_9;
  }

  if (v3 <= 1668576376)
  {
    v4 = v3 == 1668313666;
    v5 = 29299;
LABEL_9:
    v6 = v5 | 0x63700000;
    goto LABEL_11;
  }

  v4 = v3 == 1668703084;
  v6 = 1668576377;
LABEL_11:
  if (v4 || v3 == v6)
  {
    for (i = a2[1]; i != a2; i = i[1])
    {
      v9 = i[3];
      if (v9)
      {
        v10 = std::__shared_weak_count::lock(v9);
        if (v10)
        {
          v11 = v10;
          v12 = i[2];
          if (v12)
          {
            v13 = *(v12 + 184);
            if ((v13 & 0x40) != 0 && (v13 & 1) == 0 && *(v12 + 144) == 1885892706)
            {
              v14 = sub_809C0();
              __p = v12;
              v23 = v11;
              atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
              sub_22ED54(buf, &__p, 1);
              sub_1150D4(v14, buf, 1, 1);
              sub_65310(buf);
              if (v23)
              {
                std::__shared_weak_count::__release_weak(v23);
              }

              v15 = sub_5544(2);
              v16 = sub_5544(35);
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
                  goto LABEL_31;
                }
              }

              if ((v18 & v19) == 0)
              {
                v15 = v16;
              }

LABEL_31:
              v20 = *v15;
              if (v20 && os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
              {
                sub_23148(&__p, (v12 + 8));
                p_p = &__p;
                if (v24 < 0)
                {
                  p_p = __p;
                }

                *buf = 136315650;
                *&buf[4] = "RoutingManager.cpp";
                v26 = 1024;
                v27 = 4507;
                v28 = 2080;
                v29 = p_p;
                _os_log_impl(&dword_0, v20, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Adding preferred port sibling output port to routable ports: %s", buf, 0x1Cu);
                if (v24 < 0)
                {
                  operator delete(__p);
                }
              }
            }
          }

          sub_1A8C0(v11);
        }
      }
    }
  }
}

void sub_26BF70(uint64_t a1)
{
  v2 = sub_5544(8);
  v3 = *v2;
  if (*v2 && os_log_type_enabled(*v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v17 = "RoutingManager.cpp";
    v18 = 1024;
    v19 = 6131;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "%25s:%-5d CachedPortStack: ", buf, 0x12u);
  }

  v4 = *(a1 + 528);
  for (i = *(a1 + 536); v4 != i; v4 += 2)
  {
    sub_25704(&v14, v4, "", 6133);
    v6 = sub_5544(8);
    v7 = *v6;
    if (*v6 && os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = v14;
      sub_23148(__p, v14 + 2);
      v9 = v13 >= 0 ? __p : __p[0];
      v10 = (*(*v8 + 360))(v8);
      v11 = (*(*v8 + 368))(v8);
      *buf = 136316162;
      v17 = "RoutingManager.cpp";
      v18 = 1024;
      v19 = 6135;
      v20 = 2080;
      v21 = v9;
      v22 = 1024;
      v23 = v10;
      v24 = 1024;
      v25 = v11;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Modified Port: %s, SupportsInEarState(%d), GetInEarState(%d)", buf, 0x28u);
      if (v13 < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (v15)
    {
      sub_1A8C0(v15);
    }
  }
}

void sub_26C1C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, std::__shared_weak_count *a19)
{
  if (a19)
  {
    sub_1A8C0(a19);
  }

  _Unwind_Resume(exception_object);
}

void sub_26C200(const void **a1, uint64_t a2, uint64_t a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v3 = *(a2 + 528);
  if (v3 != *(a2 + 536))
  {
    v4 = a1;
    while (1)
    {
      sub_25704(&v38, v3, "", 6121);
      v5 = v38;
      if (*(v38 + 303) < 0)
      {
        sub_54A0(&__dst, *(v38 + 280), *(v38 + 288));
      }

      else
      {
        __dst = *(v38 + 280);
        v41 = *(v38 + 296);
      }

      v6 = HIBYTE(v41);
      v7 = SHIBYTE(v41);
      v8 = __dst;
      if (SHIBYTE(v41) >= 0)
      {
        p_dst = &__dst;
      }

      else
      {
        p_dst = __dst;
      }

      if (SHIBYTE(v41) < 0)
      {
        v6 = *(&__dst + 1);
      }

      v10 = *(a3 + 23);
      v11 = v10 >= 0 ? a3 : *a3;
      v12 = v10 >= 0 ? *(a3 + 23) : *(a3 + 8);
      if (v12)
      {
        break;
      }

      v15 = 0;
      if (SHIBYTE(v41) < 0)
      {
        goto LABEL_36;
      }

LABEL_37:
      v21 = v39;
      if (!v15)
      {
        if (v39)
        {
          atomic_fetch_add_explicit(&v39->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        }

        v23 = v4[1];
        v22 = v4[2];
        if (v23 >= v22)
        {
          v25 = *v4;
          v26 = v23 - *v4;
          v27 = v26 >> 4;
          v28 = (v26 >> 4) + 1;
          if (v28 >> 60)
          {
            sub_189A00();
          }

          v29 = v22 - v25;
          if (v29 >> 3 > v28)
          {
            v28 = v29 >> 3;
          }

          if (v29 >= 0x7FFFFFFFFFFFFFF0)
          {
            v30 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v30 = v28;
          }

          v43 = v4;
          if (v30)
          {
            sub_1DC690(v30);
          }

          v31 = (16 * v27);
          *v31 = v5;
          v31[1] = v21;
          v24 = 16 * v27 + 16;
          v32 = &v31[-2 * (v26 >> 4)];
          memcpy(v32, v25, v26);
          v33 = *v4;
          *v4 = v32;
          v4[1] = v24;
          v34 = v4[2];
          v4[2] = 0;
          v41 = v33;
          v42 = v34;
          *&__dst = v33;
          *(&__dst + 1) = v33;
          sub_B1540(&__dst);
        }

        else
        {
          *v23 = v5;
          v23[1] = v21;
          v24 = (v23 + 2);
        }

        v4[1] = v24;
      }

      if (v21)
      {
        sub_1A8C0(v21);
      }

      v3 += 2;
      if (v3 == *(a2 + 536))
      {
        return;
      }
    }

    v13 = p_dst + v6;
    if (v6 >= v12)
    {
      v16 = *v11;
      v17 = p_dst;
      do
      {
        v18 = v6 - v12;
        if (v18 == -1)
        {
          break;
        }

        v19 = memchr(v17, v16, v18 + 1);
        if (!v19)
        {
          break;
        }

        v14 = v19;
        if (!memcmp(v19, v11, v12))
        {
          goto LABEL_28;
        }

        v17 = (v14 + 1);
        v6 = v13 - (v14 + 1);
      }

      while (v6 >= v12);
      v14 = v13;
LABEL_28:
      v4 = a1;
    }

    else
    {
      v14 = p_dst + v6;
    }

    v15 = v14 == v13 || v14 - p_dst == -1;
    if ((v7 & 0x80000000) == 0)
    {
      goto LABEL_37;
    }

LABEL_36:
    operator delete(v8);
    goto LABEL_37;
  }
}

void sub_26C46C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (v14)
  {
    std::__shared_weak_count::__release_weak(v14);
    sub_1A8C0(v14);
  }

  a13 = a10;
  sub_86D0C(&a13);
  _Unwind_Resume(a1);
}

uint64_t sub_26C4B8(uint64_t *a1, void *a2, int a3)
{
  if (!a3)
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
        goto LABEL_37;
      }
    }

    if ((v25 & v26) == 0)
    {
      v22 = v23;
    }

LABEL_37:
    v27 = *v22;
    if (v27 && os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "RoutingManager.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 4560;
      _os_log_impl(&dword_0, v27, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Making BTLE Ports routable (Setting:Always)", buf, 0x12u);
    }

    goto LABEL_74;
  }

  if (a3 != 2)
  {
    if (a3 != 1)
    {
      goto LABEL_73;
    }

    v3 = sub_5544(8);
    v4 = sub_5544(35);
    v5 = 0;
    *buf = 0x100000002;
    v6 = *(v3 + 8);
    while (1)
    {
      v7 = *&buf[v5];
      if (((v6 & v7) != 0) != ((*(v4 + 8) & v7) != 0))
      {
        break;
      }

      v5 += 4;
      if (v5 == 8)
      {
        goto LABEL_42;
      }
    }

    if ((v6 & v7) == 0)
    {
      v3 = v4;
    }

LABEL_42:
    v28 = *v3;
    if (v28 && os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "RoutingManager.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 4521;
      _os_log_impl(&dword_0, v28, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Making BTLE Ports unroutable (Setting:Never)", buf, 0x12u);
    }

    v29 = 0;
    goto LABEL_75;
  }

  sub_2679B4(v45, *a1);
  memset(buf, 0, sizeof(buf));
  strcpy(v52, "cwdv");
  v52[8] = 0;
  v53 = 3;
  v55[0] = 0;
  v55[1] = 0;
  v54 = v55;
  v58 = 0;
  v59 = 0;
  __p = 0;
  v56 = 44739104;
  v9 = sub_809C0();
  *v49 = off_6BC4E0;
  v50 = v49;
  sub_256FB0(v43, v9, buf, v49);
  sub_85148(v49);
  *v49 = v45;
  sub_26CB40(v43[1], v43, v44, v49);
  if (!v44)
  {
    v30 = sub_5544(8);
    v31 = sub_5544(35);
    v32 = 0;
    *v49 = 0x100000002;
    v33 = *(v30 + 8);
    while (1)
    {
      v34 = *&v49[v32];
      if (((v33 & v34) != 0) != ((*(v31 + 8) & v34) != 0))
      {
        break;
      }

      v32 += 4;
      if (v32 == 8)
      {
        goto LABEL_56;
      }
    }

    if ((v33 & v34) == 0)
    {
      v30 = v31;
    }

LABEL_56:
    v40 = *v30;
    if (v40 && os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      *v49 = 136315394;
      *&v49[4] = "RoutingManager.cpp";
      *&v49[12] = 1024;
      *&v49[14] = 4553;
      _os_log_impl(&dword_0, v40, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Making BTLE Ports routable (Setting:Automatic)", v49, 0x12u);
    }

    LOBYTE(v21) = 0;
    goto LABEL_68;
  }

  v11 = *(v43[0] + 16);
  v10 = *(v43[0] + 24);
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v12 = a2[1];
  if (v12 == a2)
  {
LABEL_30:
    LOBYTE(v21) = 1;
    goto LABEL_66;
  }

  while (1)
  {
    v13 = v12[3];
    if (v13)
    {
      v14 = v12[2];
      atomic_fetch_add_explicit(&v13->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v15 = std::__shared_weak_count::lock(v13);
      v16 = v15;
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        *v49 = v14;
        *&v49[8] = v15;
        sub_1A8C0(v15);
        goto LABEL_17;
      }
    }

    else
    {
      v16 = 0;
    }

    *v49 = 0;
    *&v49[8] = 0;
LABEL_17:
    v17 = sub_26817C(v45, v49);
    v47 = 0;
    v48 = 0;
    if (v10)
    {
      v18 = std::__shared_weak_count::lock(v10);
      v19 = v18;
      if (v18)
      {
        atomic_fetch_add_explicit(&v18->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        v47 = v11;
        v48 = v18;
        sub_1A8C0(v18);
      }

      else
      {
        v47 = 0;
        v48 = 0;
      }
    }

    else
    {
      v19 = 0;
    }

    v20 = sub_26817C(v45, &v47);
    if (v19)
    {
      std::__shared_weak_count::__release_weak(v19);
    }

    if (v16)
    {
      std::__shared_weak_count::__release_weak(v16);
    }

    if (v13)
    {
      std::__shared_weak_count::__release_weak(v13);
    }

    if (v17 > v20)
    {
      break;
    }

    v12 = v12[1];
    if (v12 == a2)
    {
      goto LABEL_30;
    }
  }

  v35 = sub_5544(8);
  v36 = sub_5544(35);
  v37 = 0;
  *v49 = 0x100000002;
  v38 = *(v35 + 8);
  while (1)
  {
    v39 = *&v49[v37];
    if (((v38 & v39) != 0) != ((*(v36 + 8) & v39) != 0))
    {
      break;
    }

    v37 += 4;
    if (v37 == 8)
    {
      goto LABEL_62;
    }
  }

  if ((v38 & v39) == 0)
  {
    v35 = v36;
  }

LABEL_62:
  v21 = *v35;
  if (v21)
  {
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *v49 = 136315394;
      *&v49[4] = "RoutingManager.cpp";
      *&v49[12] = 1024;
      *&v49[14] = 4546;
      _os_log_impl(&dword_0, v21, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Making BTLE Ports routable (Setting:Automatic)", v49, 0x12u);
    }

    LOBYTE(v21) = 0;
  }

LABEL_66:
  if (v10)
  {
    std::__shared_weak_count::__release_weak(v10);
  }

LABEL_68:
  sub_65310(v43);
  if (SHIBYTE(v59) < 0)
  {
    operator delete(__p);
  }

  sub_477A0(v55[0]);
  if (*buf)
  {
    *&buf[8] = *buf;
    operator delete(*buf);
  }

  sub_477A0(v46);
  if ((v21 & 1) == 0)
  {
LABEL_74:
    v29 = 1;
LABEL_75:
    v41 = 1;
    return v29 | (v41 << 8);
  }

LABEL_73:
  v29 = 0;
  v41 = 0;
  return v29 | (v41 << 8);
}

void sub_26CA98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  if (v21)
  {
    std::__shared_weak_count::__release_weak(v21);
  }

  sub_65310(&a9);
  sub_46934(&a21);
  sub_477A0(a13);
  _Unwind_Resume(a1);
}

uint64_t *sub_26CB40(uint64_t a1, uint64_t *a2, unint64_t a3, uint64_t *a4)
{
  v4 = a1;
  if (a3 >= 2)
  {
    if (a3 == 2)
    {
      v8 = *a2;
      v9 = *(*a2 + 24);
      v54[0] = *(*a2 + 16);
      v54[1] = v9;
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v10 = *(a1 + 24);
      v53[0] = *(a1 + 16);
      v53[1] = v10;
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v11 = sub_26CF1C(a4, v54, v53);
      if (v10)
      {
        std::__shared_weak_count::__release_weak(v10);
      }

      if (v9)
      {
        std::__shared_weak_count::__release_weak(v9);
      }

      if (v11)
      {
        v13 = *v8;
        v12 = v8[1];
        *(v13 + 8) = v12;
        *v12 = v13;
        v14 = *v4;
        v14[1] = v8;
        *v8 = v14;
        *v4 = v8;
        v8[1] = v4;
        return v8;
      }
    }

    else
    {
      v16 = a3 >> 1;
      v17 = (a3 >> 1) + 1;
      v18 = a1;
      do
      {
        v18 = *(v18 + 8);
        --v17;
      }

      while (v17 > 1);
      v19 = sub_26CB40(a1, v18, a3 >> 1, a4);
      v4 = sub_26CB40(v18, a2, a3 - v16, a4);
      v20 = v4[3];
      v52[0] = v4[2];
      v52[1] = v20;
      if (v20)
      {
        atomic_fetch_add_explicit(&v20->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v21 = v19[3];
      v51[0] = v19[2];
      v51[1] = v21;
      if (v21)
      {
        atomic_fetch_add_explicit(&v21->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v22 = sub_26CF1C(a4, v52, v51);
      if (v21)
      {
        std::__shared_weak_count::__release_weak(v21);
      }

      if (v20)
      {
        std::__shared_weak_count::__release_weak(v20);
      }

      if (v22)
      {
        for (i = v4[1]; i != a2; i = i[1])
        {
          v24 = i[3];
          v50[0] = i[2];
          v50[1] = v24;
          if (v24)
          {
            atomic_fetch_add_explicit(&v24->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          }

          v25 = v19[3];
          v49[0] = v19[2];
          v49[1] = v25;
          if (v25)
          {
            atomic_fetch_add_explicit(&v25->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          }

          v26 = sub_26CF1C(a4, v50, v49);
          if (v25)
          {
            std::__shared_weak_count::__release_weak(v25);
          }

          if (v24)
          {
            std::__shared_weak_count::__release_weak(v24);
            if (!v26)
            {
              break;
            }
          }

          else if (!v26)
          {
            break;
          }
        }

        v27 = *i;
        v28 = *(*i + 8);
        v29 = *v4;
        v29[1] = v28;
        *v28 = v29;
        v30 = *v19;
        v31 = v19[1];
        v30[1] = v4;
        *v4 = v30;
        *v19 = v27;
        v27[1] = v19;
      }

      else
      {
        v31 = v19[1];
        i = v4;
        v4 = v19;
      }

      if (v31 != i && i != a2)
      {
        v32 = i;
        do
        {
          v33 = i[3];
          v48[0] = i[2];
          v48[1] = v33;
          if (v33)
          {
            atomic_fetch_add_explicit(&v33->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          }

          v34 = v31[3];
          v47[0] = v31[2];
          v47[1] = v34;
          if (v34)
          {
            atomic_fetch_add_explicit(&v34->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          }

          v35 = sub_26CF1C(a4, v48, v47);
          if (v34)
          {
            std::__shared_weak_count::__release_weak(v34);
          }

          if (v33)
          {
            std::__shared_weak_count::__release_weak(v33);
          }

          if (v35)
          {
            for (j = i[1]; j != a2; j = j[1])
            {
              v37 = j[3];
              v46[0] = j[2];
              v46[1] = v37;
              if (v37)
              {
                atomic_fetch_add_explicit(&v37->__shared_weak_owners_, 1uLL, memory_order_relaxed);
              }

              v38 = v31[3];
              v45[0] = v31[2];
              v45[1] = v38;
              if (v38)
              {
                atomic_fetch_add_explicit(&v38->__shared_weak_owners_, 1uLL, memory_order_relaxed);
              }

              v39 = sub_26CF1C(a4, v46, v45);
              if (v38)
              {
                std::__shared_weak_count::__release_weak(v38);
              }

              if (v37)
              {
                std::__shared_weak_count::__release_weak(v37);
                if (!v39)
                {
                  break;
                }
              }

              else if (!v39)
              {
                break;
              }
            }

            v40 = *j;
            v41 = *(*j + 8);
            v42 = *i;
            *(v42 + 8) = v41;
            *v41 = v42;
            if (v32 == i)
            {
              v32 = j;
            }

            v44 = *v31;
            v43 = v31[1];
            *(v44 + 8) = i;
            *i = v44;
            *v31 = v40;
            *(v40 + 8) = v31;
            v31 = v43;
            i = j;
          }

          else
          {
            v31 = v31[1];
          }
        }

        while (v31 != v32 && i != a2);
      }
    }
  }

  return v4;
}

void sub_26CED0(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_26CF1C(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *a1;
  v21 = 0;
  v22 = 0;
  v6 = a2[1];
  if (v6)
  {
    v8 = std::__shared_weak_count::lock(v6);
    v9 = v8;
    if (v8)
    {
      v10 = *a2;
      atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v21 = v10;
      v22 = v8;
      sub_1A8C0(v8);
    }

    else
    {
      v21 = 0;
      v22 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  v11 = sub_26817C(v5, &v21);
  v12 = *a1;
  v19 = 0;
  v20 = 0;
  v13 = a3[1];
  if (v13)
  {
    v14 = std::__shared_weak_count::lock(v13);
    v15 = v14;
    if (v14)
    {
      v16 = *a3;
      atomic_fetch_add_explicit(&v14->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v19 = v16;
      v20 = v14;
      sub_1A8C0(v14);
    }

    else
    {
      v19 = 0;
      v20 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  v17 = sub_26817C(v12, &v19);
  if (v15)
  {
    std::__shared_weak_count::__release_weak(v15);
  }

  if (v9)
  {
    std::__shared_weak_count::__release_weak(v9);
  }

  return v11 < v17;
}

void sub_26D02C(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_26D058(void *result, uint64_t a2, uint64_t a3)
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

uint64_t sub_26D168(uint64_t a1, _OWORD *a2, void *a3, uint64_t a4, uint64_t **a5, uint64_t a6, uint64_t a7, int a8, unsigned __int8 a9, unsigned __int8 a10)
{
  v15 = a1;
  *a1 = *a2;
  sub_7FD64((a1 + 16), a3);
  *(v15 + 48) = 0;
  v16 = (v15 + 48);
  v17 = (v15 + 40);
  *(v15 + 40) = v15 + 48;
  *(v15 + 80) = 0;
  *(v15 + 72) = 0;
  *(v15 + 56) = 0;
  *(v15 + 64) = v15 + 72;
  v39 = v15;
  sub_44E44((v15 + 88), a4);
  sub_44E44((v15 + 112), a6);
  *(v15 + 136) = 0;
  *(v15 + 144) = 0;
  *(v15 + 152) = 0;
  *(v15 + 156) = 1;
  *(v15 + 160) = a8;
  *(v15 + 168) = *a7;
  if (*(a7 + 31) < 0)
  {
    sub_54A0((v15 + 176), *(a7 + 8), *(a7 + 16));
  }

  else
  {
    v18 = *(a7 + 8);
    *(v15 + 192) = *(a7 + 24);
    *(v15 + 176) = v18;
  }

  v19 = *(a7 + 32);
  *(v15 + 208) = 0u;
  *(v15 + 200) = v19;
  *(v15 + 288) = 0u;
  *(v15 + 304) = 0u;
  *(v15 + 368) = 0;
  *(v15 + 224) = 0u;
  *(v15 + 240) = 0u;
  *(v15 + 256) = 0u;
  *(v15 + 272) = 0u;
  *(v15 + 288) = 1065353216;
  *(v15 + 296) = 0u;
  *(v15 + 320) = 0u;
  *(v15 + 336) = 0u;
  *(v15 + 312) = 0u;
  *(v15 + 328) = 1065353216;
  *(v15 + 352) = 0u;
  *(v15 + 368) = 1065353216;
  *(v15 + 376) = 0;
  *(v15 + 380) = 0;
  *(v15 + 384) = 0;
  *(v15 + 386) = a9;
  *(v15 + 392) = 0;
  *(v15 + 416) = 0;
  *(v15 + 424) = 0;
  *(v15 + 432) = 0;
  *(v15 + 440) = 0;
  *(v15 + 448) = 0;
  *(v15 + 456) = a10;
  if (v17 == a5)
  {
    return v15;
  }

  v22 = *a5;
  v20 = (a5 + 1);
  v21 = v22;
  if (*(v15 + 56))
  {
    v23 = *v17;
    *v17 = v16;
    *(*v16 + 16) = 0;
    *v16 = 0;
    *(v15 + 56) = 0;
    if (v23[1])
    {
      v24 = v23[1];
    }

    else
    {
      v24 = v23;
    }

    if (v24)
    {
      v25 = sub_1658B4(v24);
      if (v21 == v20)
      {
        v27 = v24;
      }

      else
      {
        v26 = v21;
        do
        {
          v27 = v25;
          v29 = v26[4];
          v28 = v26[5];
          if (v28)
          {
            atomic_fetch_add_explicit((v28 + 16), 1uLL, memory_order_relaxed);
          }

          v30 = v24[5];
          v24[4] = v29;
          v24[5] = v28;
          if (v30)
          {
            std::__shared_weak_count::__release_weak(v30);
          }

          v31 = *v16;
          v32 = v16;
          v33 = v16;
          if (*v16)
          {
            do
            {
              while (1)
              {
                v32 = v31;
                if (!sub_87164(v24 + 4, v31 + 4))
                {
                  break;
                }

                v31 = *v32;
                v33 = v32;
                if (!*v32)
                {
                  goto LABEL_22;
                }
              }

              v31 = v32[1];
            }

            while (v31);
            v33 = v32 + 1;
          }

LABEL_22:
          sub_46B44(v17, v32, v33, v24);
          if (v27)
          {
            v25 = sub_1658B4(v27);
          }

          else
          {
            v25 = 0;
          }

          v34 = v26[1];
          if (v34)
          {
            do
            {
              v21 = v34;
              v34 = *v34;
            }

            while (v34);
          }

          else
          {
            do
            {
              v21 = v26[2];
              v35 = *v21 == v26;
              v26 = v21;
            }

            while (!v35);
          }

          if (!v27)
          {
            break;
          }

          v24 = v27;
          v26 = v21;
        }

        while (v21 != v20);
      }

      sub_4B0F4(v27);
      v15 = v39;
      if (!v25)
      {
        goto LABEL_40;
      }

      for (i = v25[2]; i; i = i[2])
      {
        v25 = i;
      }

      v36 = v25;
    }

    else
    {
      v36 = 0;
    }

    sub_4B0F4(v36);
  }

LABEL_40:
  if (v21 != v20)
  {
    operator new();
  }

  return v15;
}

void sub_26D500(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v12 = *(a10 + 144);
  if (v12)
  {
    std::__shared_weak_count::__release_weak(v12);
  }

  sub_477A0(*(a10 + 120));
  sub_477A0(*(a10 + 96));
  sub_2626B0(v10);
  sub_4B0F4(*(a10 + 24));
  _Unwind_Resume(a1);
}

__n128 sub_26D5B8(uint64_t a1, void ***a2, void ***a3, void ***a4, void ***a5, __n128 *a6)
{
  v8 = *a2;
  v9 = *a3;
  if (*a2 == *a3)
  {
LABEL_38:
    v29 = *a6;
    goto LABEL_39;
  }

  for (i = *a4; *a4 != *a5; i = *a4)
  {
    if ((sub_6F834(v8 + 4, i + 4) & 0x80) != 0)
    {
      sub_26D9C0(a6, v8 + 4);
      v21 = *a2;
      v22 = (*a2)[1];
      if (v22)
      {
        do
        {
          v23 = v22;
          v22 = *v22;
        }

        while (v22);
      }

      else
      {
        do
        {
          v23 = v21[2];
          v17 = *v23 == v21;
          v21 = v23;
        }

        while (!v17);
      }

      *a2 = v23;
    }

    else if ((sub_6F834(i + 4, v8 + 4) & 0x80) != 0)
    {
      v24 = i[1];
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
          v25 = i[2];
          v17 = *v25 == i;
          i = v25;
        }

        while (!v17);
      }

      *a4 = v25;
    }

    else
    {
      v15 = v8[1];
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
          v16 = v8[2];
          v17 = *v16 == v8;
          v8 = v16;
        }

        while (!v17);
      }

      *a2 = v16;
      v18 = *a4;
      v19 = (*a4)[1];
      if (v19)
      {
        do
        {
          v20 = v19;
          v19 = *v19;
        }

        while (v19);
      }

      else
      {
        do
        {
          v20 = v18[2];
          v17 = *v20 == v18;
          v18 = v20;
        }

        while (!v17);
      }

      *a4 = v20;
    }

    v8 = *a2;
    v9 = *a3;
    if (*a2 == *a3)
    {
      goto LABEL_38;
    }
  }

  v29 = *a6;
  if (v8 != v9)
  {
    do
    {
      sub_26D9C0(&v29, v8 + 4);
      v26 = v8[1];
      if (v26)
      {
        do
        {
          v27 = v26;
          v26 = *v26;
        }

        while (v26);
      }

      else
      {
        do
        {
          v27 = v8[2];
          v17 = *v27 == v8;
          v8 = v27;
        }

        while (!v17);
      }

      v8 = v27;
    }

    while (v27 != v9);
    v8 = v9;
  }

LABEL_39:
  result = v29;
  *a1 = v8;
  *(a1 + 8) = result;
  return result;
}