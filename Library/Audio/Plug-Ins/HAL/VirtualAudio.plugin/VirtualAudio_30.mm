uint64_t **sub_26D7C0(uint64_t **result, void *a2, void *a3)
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

    v15 = result;
    v16 = v8;
    v17 = v8;
    if (v8)
    {
      v16 = sub_1658B4(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          std::string::operator=((v8 + 4), (v9 + 4));
          v10 = v17;
          v11 = sub_1E2CB4(v5, &v14, v17 + 4);
          sub_46B44(v5, v14, v11, v10);
          v8 = v16;
          v17 = v16;
          if (v16)
          {
            v16 = sub_1658B4(v16);
          }

          v12 = v9[1];
          if (v12)
          {
            do
            {
              a2 = v12;
              v12 = *v12;
            }

            while (v12);
          }

          else
          {
            do
            {
              a2 = v9[2];
              v13 = *a2 == v9;
              v9 = a2;
            }

            while (!v13);
          }

          if (!v8)
          {
            break;
          }

          v9 = a2;
        }

        while (a2 != a3);
      }
    }

    result = sub_26D970(&v15);
  }

  if (a2 != a3)
  {
    sub_23F700();
  }

  return result;
}

void sub_26D95C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_26D970(va);
  _Unwind_Resume(a1);
}

uint64_t sub_26D970(uint64_t a1)
{
  sub_98A08(*(a1 + 16));
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

    sub_98A08(v2);
  }

  return a1;
}

uint64_t sub_26D9C0(uint64_t a1, void **a2)
{
  v3 = sub_23F54C(*a1, *(a1 + 8), a2);
  *(a1 + 8) = v3;
  v4 = v3[1];
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
      v5 = v3[2];
      v6 = *v5 == v3;
      v3 = v5;
    }

    while (!v6);
  }

  *(a1 + 8) = v5;
  return a1;
}

_BYTE *sub_26DA2C(uint64_t a1, uint64_t *a2, uint64_t a3, __int128 *a4, uint64_t a5)
{
  sub_27A4();
  v28 = (*(qword_6E94F8 + 16))();
  sub_27A4();
  v10 = atomic_load(&qword_6E9558);
  if (v10 != pthread_self())
  {
    v17 = sub_5544(14);
    v18 = *v17;
    if (*v17 && os_log_type_enabled(*v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v31 = "RoutingManager.cpp";
      v32 = 1024;
      *v33 = 2455;
      _os_log_impl(&dword_0, v18, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): Unable to acquire routing mutex.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    v20 = &std::runtime_error::~runtime_error;
    std::runtime_error::runtime_error(exception, "Unable to acquire routing mutex.");
LABEL_34:
    __cxa_throw(exception, v21, v20);
  }

  if (*(a3 + 32))
  {
    v22 = sub_5544(14);
    v23 = *v22;
    if (*v22 && os_log_type_enabled(*v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v31 = "RoutingManager.cpp";
      v32 = 1024;
      *v33 = 2458;
      _os_log_impl(&dword_0, v23, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    goto LABEL_33;
  }

  if (*(a3 + 168) != 1852796517)
  {
    v24 = sub_5544(14);
    v25 = *v24;
    if (*v24 && os_log_type_enabled(*v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v31 = "RoutingManager.cpp";
      v32 = 1024;
      *v33 = 2459;
      _os_log_impl(&dword_0, v25, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    goto LABEL_33;
  }

  v11 = *(a3 + 199);
  if ((v11 & 0x80u) != 0)
  {
    v11 = *(a3 + 184);
  }

  if (v11)
  {
    v26 = sub_5544(14);
    v27 = *v26;
    if (*v26 && os_log_type_enabled(*v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v31 = "RoutingManager.cpp";
      v32 = 1024;
      *v33 = 2460;
      _os_log_impl(&dword_0, v27, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

LABEL_33:
    exception = __cxa_allocate_exception(0x10uLL);
    v20 = &std::logic_error::~logic_error;
    std::logic_error::logic_error(exception, "Precondition failure.");
    goto LABEL_34;
  }

  sub_26DF08(buf, a2, a3, a4, a5, 1);
  v12 = *buf;
  if (!*buf)
  {
    v29[0] = v29;
    v29[1] = v29;
    v29[2] = 0;
    v13 = *&v33[2];
    if (*&v33[2] != (&v31 + 4))
    {
      do
      {
        v14 = sub_840F4(*(a3 + 386), &v31 + 4, v13 + 2);
        v15 = v13[1];
        if (v14)
        {
          while (1)
          {
            if (v15 == (&v31 + 4))
            {
              sub_CFE14(v29, v29, &v31 + 4, v13, v15);
              goto LABEL_15;
            }

            if (!sub_840F4(*(a3 + 386), &v31 + 4, v15 + 2))
            {
              break;
            }

            v15 = v15[1];
          }

          sub_CFE14(v29, v29, &v31 + 4, v13, v15);
          v15 = v15[1];
        }

LABEL_15:
        v13 = v15;
      }

      while (v15 != (&v31 + 4));
    }

    sub_65310(v29);
    v12 = *buf;
  }

  *a1 = v12;
  sub_65234((a1 + 8), &v31 + 4);
  sub_65310((&v31 + 4));
  return sub_210C50(&v28);
}

void sub_26DE90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, __int16 a10, char a11, char a12, char a13)
{
  __cxa_free_exception(v13);
  sub_210C50(&a12);
  _Unwind_Resume(a1);
}

uint64_t sub_26DF08(uint64_t a1, uint64_t *a2, uint64_t a3, __int128 *a4, uint64_t a5, char a6)
{
  sub_27A4();
  v12 = atomic_load(&qword_6E9558);
  if (v12 != pthread_self())
  {
    v106 = sub_5544(14);
    v107 = *v106;
    if (*v106 && os_log_type_enabled(*v106, OS_LOG_TYPE_ERROR))
    {
      *v137 = 136315394;
      *&v137[4] = "RoutingManager.cpp";
      *&v137[12] = 1024;
      *&v137[14] = 5359;
      _os_log_impl(&dword_0, v107, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", v137, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  if (*(a3 + 32))
  {
    v109 = sub_5544(14);
    v110 = *v109;
    if (*v109 && os_log_type_enabled(*v109, OS_LOG_TYPE_ERROR))
    {
      *v137 = 136315394;
      *&v137[4] = "RoutingManager.cpp";
      *&v137[12] = 1024;
      *&v137[14] = 5361;
      _os_log_impl(&dword_0, v110, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", v137, 0x12u);
    }

    v111 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v111, "Precondition failure.");
  }

  if (*(a3 + 168) != 1852796517)
  {
    v112 = sub_5544(14);
    v113 = *v112;
    if (*v112 && os_log_type_enabled(*v112, OS_LOG_TYPE_ERROR))
    {
      *v137 = 136315394;
      *&v137[4] = "RoutingManager.cpp";
      *&v137[12] = 1024;
      *&v137[14] = 5362;
      _os_log_impl(&dword_0, v113, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", v137, 0x12u);
    }

    v114 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v114, "Precondition failure.");
  }

  sub_7EDC8(v137, a2, a3);
  v13 = sub_5544(8);
  if (*(v13 + 8))
  {
    v14 = *v13;
    if (*v13)
    {
      if (os_log_type_enabled(*v13, OS_LOG_TYPE_DEBUG))
      {
        sub_BCD50(&v130, v137);
        v115 = SHIBYTE(v130.__r_.__value_.__r.__words[2]);
        v116 = v130.__r_.__value_.__r.__words[0];
        memset(&v129, 0, sizeof(v129));
        std::string::append(&v129, "[ ", 2uLL);
        v15 = *a4;
        v16 = *(a4 + 1);
        if (*a4 == v16)
        {
          v21 = *(a4 + 6);
          if (v21 == 1986295651)
          {
            if ((a4[2] & 1) == 0)
            {
              if (!*(a4 + 8))
              {
                v22 = *(a4 + 103);
                if ((v22 & 0x80u) != 0)
                {
                  v22 = *(a4 + 11);
                }

                if (!v22)
                {
                  v24 = a4 + 18;
                  v23 = *(a4 + 18);
                  v25 = v23 & 3;
                  if (v25 == 2)
                  {
                    v26 = v23 & 0xC;
                    if (v26 == 8)
                    {
                      v27 = v23 & 0x30;
                      if (v27 == 32)
                      {
                        v28 = v23 & 0xC0;
                        if (v28 == 128)
                        {
                          v29 = v23 & 0x300;
                          if (v29 == 512)
                          {
                            v30 = v23 & 0xC00;
                            if (v30 == 2048)
                            {
                              v31 = v23 & 0x3000;
                              if (v31 == 0x2000)
                              {
                                v32 = v23 & 0xC000;
                                if (v32 == 0x8000)
                                {
                                  v33 = v23 & 0x30000;
                                  if ((v23 & 0x30000) == 0x20000)
                                  {
                                    v34 = v23 & 0xC0000;
                                    if ((v23 & 0xC0000) == 0x80000)
                                    {
                                      v35 = v23 & 0x300000;
                                      if ((v23 & 0x300000) == 0x200000)
                                      {
                                        v36 = v23 & 0xC00000;
                                        if (v36 == 0x800000)
                                        {
                                          v37 = "empty";
                                          v38 = 5;
LABEL_200:
                                          std::string::append(&v129, v37, v38);
                                          goto LABEL_201;
                                        }

LABEL_194:
                                        if (v36)
                                        {
                                          v37 = "not high quality";
                                        }

                                        else
                                        {
                                          v37 = "high quality";
                                        }

                                        if (v36)
                                        {
                                          v38 = 16;
                                        }

                                        else
                                        {
                                          v38 = 12;
                                        }

                                        goto LABEL_200;
                                      }

                                      goto LABEL_185;
                                    }

                                    goto LABEL_176;
                                  }

                                  goto LABEL_167;
                                }

                                goto LABEL_158;
                              }

                              goto LABEL_149;
                            }

                            goto LABEL_140;
                          }

                          goto LABEL_131;
                        }

                        goto LABEL_122;
                      }

                      goto LABEL_113;
                    }

                    goto LABEL_104;
                  }

                  goto LABEL_95;
                }

                goto LABEL_83;
              }

              goto LABEL_67;
            }

            goto LABEL_53;
          }
        }

        else
        {
          sub_10898C(&v132, *a4, v16);
          v17 = std::string::insert(&v132, 0, "Port types: ", 0xCuLL);
          v18 = *&v17->__r_.__value_.__l.__data_;
          __p[2] = v17->__r_.__value_.__r.__words[2];
          *__p = v18;
          v17->__r_.__value_.__l.__size_ = 0;
          v17->__r_.__value_.__r.__words[2] = 0;
          v17->__r_.__value_.__r.__words[0] = 0;
          if (SHIBYTE(__p[2]) >= 0)
          {
            v19 = __p;
          }

          else
          {
            v19 = __p[0];
          }

          if (SHIBYTE(__p[2]) >= 0)
          {
            v20 = HIBYTE(__p[2]);
          }

          else
          {
            v20 = __p[1];
          }

          std::string::append(&v129, v19, v20);
          if (SHIBYTE(__p[2]) < 0)
          {
            operator delete(__p[0]);
          }

          if (SHIBYTE(v132.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v132.__r_.__value_.__l.__data_);
          }

          if (*(a4 + 6) == 1986295651)
          {
            goto LABEL_51;
          }

          std::string::append(&v129, "; ", 2uLL);
          v21 = *(a4 + 6);
        }

        sub_22170(&v131, v21);
        v39 = std::string::insert(&v131, 0, "Allowed VAD type: ", 0x12uLL);
        v40 = *&v39->__r_.__value_.__l.__data_;
        v132.__r_.__value_.__r.__words[2] = v39->__r_.__value_.__r.__words[2];
        *&v132.__r_.__value_.__l.__data_ = v40;
        v39->__r_.__value_.__l.__size_ = 0;
        v39->__r_.__value_.__r.__words[2] = 0;
        v39->__r_.__value_.__r.__words[0] = 0;
        v41 = std::string::append(&v132, "; ", 2uLL);
        v42 = *&v41->__r_.__value_.__l.__data_;
        __p[2] = v41->__r_.__value_.__r.__words[2];
        *__p = v42;
        v41->__r_.__value_.__l.__size_ = 0;
        v41->__r_.__value_.__r.__words[2] = 0;
        v41->__r_.__value_.__r.__words[0] = 0;
        if (SHIBYTE(__p[2]) >= 0)
        {
          v43 = __p;
        }

        else
        {
          v43 = __p[0];
        }

        if (SHIBYTE(__p[2]) >= 0)
        {
          v44 = HIBYTE(__p[2]);
        }

        else
        {
          v44 = __p[1];
        }

        std::string::append(&v129, v43, v44);
        if (SHIBYTE(__p[2]) < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v132.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v132.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v131.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v131.__r_.__value_.__l.__data_);
        }

LABEL_51:
        if ((a4[2] & 1) == 0)
        {
LABEL_65:
          if (!*(a4 + 8))
          {
LABEL_79:
            v57 = *(a4 + 103);
            if ((v57 & 0x80u) != 0)
            {
              v57 = *(a4 + 11);
            }

            if (!v57)
            {
              goto LABEL_93;
            }

            std::string::append(&v129, "; ", 2uLL);
LABEL_83:
            std::operator+<char>();
            v58 = std::string::append(&v132, "; ", 2uLL);
            v59 = *&v58->__r_.__value_.__l.__data_;
            __p[2] = v58->__r_.__value_.__r.__words[2];
            *__p = v59;
            v58->__r_.__value_.__l.__size_ = 0;
            v58->__r_.__value_.__r.__words[2] = 0;
            v58->__r_.__value_.__r.__words[0] = 0;
            if (SHIBYTE(__p[2]) >= 0)
            {
              v60 = __p;
            }

            else
            {
              v60 = __p[0];
            }

            if (SHIBYTE(__p[2]) >= 0)
            {
              v61 = HIBYTE(__p[2]);
            }

            else
            {
              v61 = __p[1];
            }

            std::string::append(&v129, v60, v61);
            if (SHIBYTE(__p[2]) < 0)
            {
              operator delete(__p[0]);
            }

            if (SHIBYTE(v132.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v132.__r_.__value_.__l.__data_);
            }

LABEL_93:
            v24 = a4 + 18;
            v62 = *(a4 + 18);
            if ((v62 & 3) == 2)
            {
LABEL_102:
              if ((v62 & 0xC) == 8)
              {
LABEL_111:
                if ((v62 & 0x30) == 0x20)
                {
LABEL_120:
                  if ((v62 & 0xC0) == 0x80)
                  {
LABEL_129:
                    if ((v62 & 0x300) == 0x200)
                    {
LABEL_138:
                      if ((v62 & 0xC00) == 0x800)
                      {
LABEL_147:
                        if ((v62 & 0x3000) == 0x2000)
                        {
LABEL_156:
                          if ((v62 & 0xC000) == 0x8000)
                          {
LABEL_165:
                            if ((v62 & 0x30000) == 0x20000)
                            {
LABEL_174:
                              if ((v62 & 0xC0000) == 0x80000)
                              {
LABEL_183:
                                if ((v62 & 0x300000) == 0x200000)
                                {
LABEL_192:
                                  if ((v62 & 0xC00000) == 0x800000)
                                  {
LABEL_201:
                                    std::string::append(&v129, " ]", 2uLL);
                                    v85 = &v130;
                                    if (v115 < 0)
                                    {
                                      v85 = v116;
                                    }

                                    if ((v129.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                                    {
                                      v86 = &v129;
                                    }

                                    else
                                    {
                                      v86 = v129.__r_.__value_.__r.__words[0];
                                    }

                                    *buf = 136315906;
                                    *&buf[4] = "RoutingManager.cpp";
                                    v135 = 1024;
                                    *v136 = 5368;
                                    *&v136[4] = 2080;
                                    *&v136[6] = v85;
                                    *&v136[14] = 2080;
                                    *&v136[16] = v86;
                                    _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEBUG, "%25s:%-5d For %s and filter %s", buf, 0x26u);
                                    if (SHIBYTE(v129.__r_.__value_.__r.__words[2]) < 0)
                                    {
                                      operator delete(v129.__r_.__value_.__l.__data_);
                                    }

                                    if (SHIBYTE(v130.__r_.__value_.__r.__words[2]) < 0)
                                    {
                                      operator delete(v130.__r_.__value_.__l.__data_);
                                    }

                                    goto LABEL_210;
                                  }

                                  std::string::append(&v129, "; ", 2uLL);
                                  v36 = *v24 & 0xC00000;
                                  goto LABEL_194;
                                }

                                std::string::append(&v129, "; ", 2uLL);
                                v35 = *v24 & 0x300000;
LABEL_185:
                                if (v35)
                                {
                                  v83 = "not auto";
                                }

                                else
                                {
                                  v83 = "auto";
                                }

                                if (v35)
                                {
                                  v84 = 8;
                                }

                                else
                                {
                                  v84 = 4;
                                }

                                std::string::append(&v129, v83, v84);
                                std::string::append(&v129, " set partner routability", 0x18uLL);
                                v62 = *v24;
                                goto LABEL_192;
                              }

                              std::string::append(&v129, "; ", 2uLL);
                              v34 = *v24 & 0xC0000;
LABEL_176:
                              if (v34)
                              {
                                v81 = "not auto";
                              }

                              else
                              {
                                v81 = "auto";
                              }

                              if (v34)
                              {
                                v82 = 8;
                              }

                              else
                              {
                                v82 = 4;
                              }

                              std::string::append(&v129, v81, v82);
                              std::string::append(&v129, " set sibling routability", 0x18uLL);
                              v62 = *v24;
                              goto LABEL_183;
                            }

                            std::string::append(&v129, "; ", 2uLL);
                            v33 = *v24 & 0x30000;
LABEL_167:
                            if (v33)
                            {
                              v79 = "cannot set routable";
                            }

                            else
                            {
                              v79 = "can set routable";
                            }

                            if (v33)
                            {
                              v80 = 19;
                            }

                            else
                            {
                              v80 = 16;
                            }

                            std::string::append(&v129, v79, v80);
                            v62 = *v24;
                            goto LABEL_174;
                          }

                          std::string::append(&v129, "; ", 2uLL);
                          v32 = *v24 & 0xC000;
LABEL_158:
                          if (v32)
                          {
                            v77 = "not built-in";
                          }

                          else
                          {
                            v77 = "built-in";
                          }

                          if (v32)
                          {
                            v78 = 12;
                          }

                          else
                          {
                            v78 = 8;
                          }

                          std::string::append(&v129, v77, v78);
                          v62 = *v24;
                          goto LABEL_165;
                        }

                        std::string::append(&v129, "; ", 2uLL);
                        v31 = *v24 & 0x3000;
LABEL_149:
                        if (v31)
                        {
                          v75 = "not client visible";
                        }

                        else
                        {
                          v75 = "client visible";
                        }

                        if (v31)
                        {
                          v76 = 18;
                        }

                        else
                        {
                          v76 = 14;
                        }

                        std::string::append(&v129, v75, v76);
                        v62 = *v24;
                        goto LABEL_156;
                      }

                      std::string::append(&v129, "; ", 2uLL);
                      v30 = *v24 & 0xC00;
LABEL_140:
                      if (v30)
                      {
                        v73 = "ignores silent mode";
                      }

                      else
                      {
                        v73 = "obeys silent mode";
                      }

                      if (v30)
                      {
                        v74 = 19;
                      }

                      else
                      {
                        v74 = 17;
                      }

                      std::string::append(&v129, v73, v74);
                      v62 = *v24;
                      goto LABEL_147;
                    }

                    std::string::append(&v129, "; ", 2uLL);
                    v29 = *v24 & 0x300;
LABEL_131:
                    if (v29)
                    {
                      v71 = "not overridable";
                    }

                    else
                    {
                      v71 = "overridable";
                    }

                    if (v29)
                    {
                      v72 = 15;
                    }

                    else
                    {
                      v72 = 11;
                    }

                    std::string::append(&v129, v71, v72);
                    v62 = *v24;
                    goto LABEL_138;
                  }

                  std::string::append(&v129, "; ", 2uLL);
                  v28 = *v24 & 0xC0;
LABEL_122:
                  if (v28)
                  {
                    v69 = "not last-in cachable";
                  }

                  else
                  {
                    v69 = "last-in cachable";
                  }

                  if (v28)
                  {
                    v70 = 20;
                  }

                  else
                  {
                    v70 = 16;
                  }

                  std::string::append(&v129, v69, v70);
                  v62 = *v24;
                  goto LABEL_129;
                }

                std::string::append(&v129, "; ", 2uLL);
                v27 = *v24 & 0x30;
LABEL_113:
                if (v27)
                {
                  v67 = "output";
                }

                else
                {
                  v67 = "input";
                }

                if (v27)
                {
                  v68 = 6;
                }

                else
                {
                  v68 = 5;
                }

                std::string::append(&v129, v67, v68);
                v62 = *v24;
                goto LABEL_120;
              }

              std::string::append(&v129, "; ", 2uLL);
              v26 = *v24 & 0xC;
LABEL_104:
              if (v26)
              {
                v65 = "not routable";
              }

              else
              {
                v65 = "routable";
              }

              if (v26)
              {
                v66 = 12;
              }

              else
              {
                v66 = 8;
              }

              std::string::append(&v129, v65, v66);
              v62 = *v24;
              goto LABEL_111;
            }

            std::string::append(&v129, "; ", 2uLL);
            v25 = *v24 & 3;
LABEL_95:
            if (v25)
            {
              v63 = "not connected";
            }

            else
            {
              v63 = "connected";
            }

            if (v25)
            {
              v64 = 13;
            }

            else
            {
              v64 = 9;
            }

            std::string::append(&v129, v63, v64);
            v62 = *v24;
            goto LABEL_102;
          }

          std::string::append(&v129, "; ", 2uLL);
LABEL_67:
          sub_1DE284(&v131, a4 + 40);
          v51 = std::string::insert(&v131, 0, "Connection Type Inclusion: ", 0x1BuLL);
          v52 = *&v51->__r_.__value_.__l.__data_;
          v132.__r_.__value_.__r.__words[2] = v51->__r_.__value_.__r.__words[2];
          *&v132.__r_.__value_.__l.__data_ = v52;
          v51->__r_.__value_.__l.__size_ = 0;
          v51->__r_.__value_.__r.__words[2] = 0;
          v51->__r_.__value_.__r.__words[0] = 0;
          v53 = std::string::append(&v132, "; ", 2uLL);
          v54 = *&v53->__r_.__value_.__l.__data_;
          __p[2] = v53->__r_.__value_.__r.__words[2];
          *__p = v54;
          v53->__r_.__value_.__l.__size_ = 0;
          v53->__r_.__value_.__r.__words[2] = 0;
          v53->__r_.__value_.__r.__words[0] = 0;
          if (SHIBYTE(__p[2]) >= 0)
          {
            v55 = __p;
          }

          else
          {
            v55 = __p[0];
          }

          if (SHIBYTE(__p[2]) >= 0)
          {
            v56 = HIBYTE(__p[2]);
          }

          else
          {
            v56 = __p[1];
          }

          std::string::append(&v129, v55, v56);
          if (SHIBYTE(__p[2]) < 0)
          {
            operator delete(__p[0]);
          }

          if (SHIBYTE(v132.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v132.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v131.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v131.__r_.__value_.__l.__data_);
          }

          goto LABEL_79;
        }

        std::string::append(&v129, "; ", 2uLL);
LABEL_53:
        sub_22170(&v131, *(a4 + 7));
        v45 = std::string::insert(&v131, 0, "Supported mode: ", 0x10uLL);
        v46 = *&v45->__r_.__value_.__l.__data_;
        v132.__r_.__value_.__r.__words[2] = v45->__r_.__value_.__r.__words[2];
        *&v132.__r_.__value_.__l.__data_ = v46;
        v45->__r_.__value_.__l.__size_ = 0;
        v45->__r_.__value_.__r.__words[2] = 0;
        v45->__r_.__value_.__r.__words[0] = 0;
        v47 = std::string::append(&v132, "; ", 2uLL);
        v48 = *&v47->__r_.__value_.__l.__data_;
        __p[2] = v47->__r_.__value_.__r.__words[2];
        *__p = v48;
        v47->__r_.__value_.__l.__size_ = 0;
        v47->__r_.__value_.__r.__words[2] = 0;
        v47->__r_.__value_.__r.__words[0] = 0;
        if (SHIBYTE(__p[2]) >= 0)
        {
          v49 = __p;
        }

        else
        {
          v49 = __p[0];
        }

        if (SHIBYTE(__p[2]) >= 0)
        {
          v50 = HIBYTE(__p[2]);
        }

        else
        {
          v50 = __p[1];
        }

        std::string::append(&v129, v49, v50);
        if (SHIBYTE(__p[2]) < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v132.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v132.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v131.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v131.__r_.__value_.__l.__data_);
        }

        goto LABEL_65;
      }
    }
  }

LABEL_210:
  v87 = sub_809C0();
  *buf = off_6BC4E0;
  *&v136[10] = buf;
  sub_256FB0(&v132, v87, a4, buf);
  sub_85148(buf);
  v88 = *v137;
  v89 = *&v137[8];
  sub_80C2C(v128, &v132);
  v90 = *(a3 + 386);
  v118 = 0;
  v119 = 0;
  v117 = 0;
  strcpy(v120, "cwdv");
  v120[8] = 0;
  v121 = 3;
  v123[0] = 0;
  v123[1] = 0;
  v122 = v123;
  v124 = 44739242;
  v126 = 0;
  v127 = 0;
  v125 = 0;
  sub_26F2D4(buf, a2, v88, v89, v128, &v138, &v139, &v140, v90, a6, &v117, a3 + 208, a5);
  if (SHIBYTE(v127) < 0)
  {
    operator delete(v125);
  }

  sub_477A0(v123[0]);
  if (v117)
  {
    v118 = v117;
    operator delete(v117);
  }

  sub_65310(v128);
  v91 = *buf;
  sub_7FE10(&v131, &buf[8]);
  v130.__r_.__value_.__r.__words[0] = &v130;
  v130.__r_.__value_.__l.__size_ = &v130;
  v130.__r_.__value_.__r.__words[2] = 0;
  if (!v91)
  {
    size = v132.__r_.__value_.__l.__size_;
    if (v132.__r_.__value_.__l.__size_ != &v132)
    {
      do
      {
        if (&v131.__r_.__value_.__r.__words[1] != sub_87414(v131.__r_.__value_.__l.__data_, &v131.__r_.__value_.__l.__size_, &size->__r_.__value_.__r.__words[2]))
        {
          data = size[1].__r_.__value_.__l.__data_;
          if (data)
          {
            v98 = std::__shared_weak_count::lock(data);
            if (v98)
            {
              v99 = size->__r_.__value_.__r.__words[2];
              atomic_fetch_add_explicit(&v98->__shared_weak_owners_, 1uLL, memory_order_relaxed);
              sub_1A8C0(v98);
            }
          }

          operator new();
        }

        size = size->__r_.__value_.__l.__size_;
      }

      while (size != &v132);
      v100 = v130.__r_.__value_.__l.__size_;
      if (v130.__r_.__value_.__l.__size_ != &v130)
      {
        while (1)
        {
          sub_88A00(__p, &v100->__r_.__value_.__r.__words[2], "", 5396);
          v101 = *(__p[0] + 36);
          if (__p[1])
          {
            sub_1A8C0(__p[1]);
          }

          if (v101 == 1886545251)
          {
            break;
          }

          v100 = v100->__r_.__value_.__l.__size_;
          if (v100 == &v130)
          {
            goto LABEL_215;
          }
        }
      }

      if (v100 != &v130)
      {
        v102 = v130.__r_.__value_.__l.__size_;
        if (v130.__r_.__value_.__l.__size_ != v100)
        {
          v103 = v100->__r_.__value_.__l.__size_;
          if (v103 != v130.__r_.__value_.__l.__size_)
          {
            v104 = v100->__r_.__value_.__r.__words[0];
            *(v104 + 8) = v103;
            *v103 = v104;
            v105 = *v102;
            *(v105 + 8) = v100;
            v100->__r_.__value_.__r.__words[0] = v105;
            *v102 = v100;
            v100->__r_.__value_.__l.__size_ = v102;
          }
        }
      }
    }
  }

LABEL_215:
  v92 = sub_5544(8);
  if (*(v92 + 8))
  {
    v93 = *v92;
    if (*v92)
    {
      if (os_log_type_enabled(*v92, OS_LOG_TYPE_DEBUG))
      {
        sub_8E920(&v129, &v130, 1);
        v94 = (v129.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v129 : v129.__r_.__value_.__r.__words[0];
        LODWORD(__p[0]) = 136315650;
        *(__p + 4) = "RoutingManager.cpp";
        WORD2(__p[1]) = 1024;
        *(&__p[1] + 6) = 5406;
        WORD1(__p[2]) = 2080;
        *(&__p[2] + 4) = v94;
        _os_log_impl(&dword_0, v93, OS_LOG_TYPE_DEBUG, "%25s:%-5d Ordered ports based off connected port list: %s", __p, 0x1Cu);
        if (SHIBYTE(v129.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v129.__r_.__value_.__l.__data_);
        }
      }
    }
  }

  *a1 = v91;
  sub_65234((a1 + 8), &v130);
  sub_65310(&v130);
  sub_4B0F4(v131.__r_.__value_.__l.__size_);
  sub_4B0F4(*&v136[2]);
  sub_65310(&v132);
  return sub_4AF90(v137);
}

void sub_26EF90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, void *a44, uint64_t a45, int a46, __int16 a47, char a48, char a49, void *a50, uint64_t a51, int a52, __int16 a53, char a54, char a55, uint64_t a56, void *__p, uint64_t a58, int a59, __int16 a60, char a61, char a62, uint64_t a63)
{
  if (a62 < 0)
  {
    operator delete(__p);
  }

  if (a55 < 0)
  {
    operator delete(a50);
  }

  if (a49 < 0)
  {
    operator delete(a44);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  if (a43 < 0)
  {
    operator delete(a38);
  }

  sub_4AF90(&a70);
  _Unwind_Resume(a1);
}

uint64_t sub_26F130(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 8);
  v5 = v4[1];
  if (v5 != v4)
  {
    while (1)
    {
      v6 = v5[3];
      if (v6)
      {
        v7 = v5[2];
        atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        v8 = std::__shared_weak_count::lock(v6);
        if (!v8)
        {
          v7 = 0;
        }

        if (!v2)
        {
          goto LABEL_13;
        }
      }

      else
      {
        v7 = 0;
        v8 = 0;
        if (!v2)
        {
          goto LABEL_13;
        }
      }

      v9 = std::__shared_weak_count::lock(v2);
      if (v9)
      {
        v10 = v7 == v3;
        sub_1A8C0(v9);
        if (!v8)
        {
          goto LABEL_15;
        }

LABEL_14:
        sub_1A8C0(v8);
        goto LABEL_15;
      }

LABEL_13:
      v10 = v7 == 0;
      if (v8)
      {
        goto LABEL_14;
      }

LABEL_15:
      if (v6)
      {
        std::__shared_weak_count::__release_weak(v6);
      }

      if (!v10)
      {
        v5 = v5[1];
        if (v5 != v4)
        {
          continue;
        }
      }

      v11 = !v10;
      if (v2)
      {
        goto LABEL_20;
      }

      return v11;
    }
  }

  v11 = 1;
  if (v2)
  {
LABEL_20:
    std::__shared_weak_count::__release_weak(v2);
  }

  return v11;
}

uint64_t sub_26F240(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_6BC528;
  a2[1] = v2;
  return result;
}

os_signpost_id_t *sub_26F2D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, char a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  *&v97 = a3;
  *(&v97 + 1) = a4;
  sub_27A4();
  v15 = atomic_load(&qword_6E9558);
  if (v15 != pthread_self())
  {
    v67 = sub_5544(14);
    v68 = *v67;
    if (*v67 && os_log_type_enabled(*v67, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "RoutingManager.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 5187;
      _os_log_impl(&dword_0, v68, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  if ((sub_231C4() & 1) != 0 || sub_23238("VA_GetPorts", 0xBuLL) != &qword_709F00)
  {
    if ((atomic_load_explicit(&qword_6F6850, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6F6850))
    {
      qword_6F6848 = os_log_create("com.apple.coreaudio", "VirtualAudio");
      __cxa_guard_release(&qword_6F6850);
    }

    v16 = os_signpost_id_generate(qword_6F6848);
    if ((atomic_load_explicit(&qword_6F6850, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6F6850))
    {
      qword_6F6848 = os_log_create("com.apple.coreaudio", "VirtualAudio");
      __cxa_guard_release(&qword_6F6850);
    }

    if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v17 = qword_6F6848;
      if (os_signpost_enabled(qword_6F6848))
      {
        if (v97 > 7)
        {
          v18 = "unknown";
        }

        else
        {
          v18 = off_6BD200[v97];
        }

        v19 = v91;
        sub_53E8(v91, v18);
        if (v93[6] < 0)
        {
          v19 = v91[0];
        }

        sub_3FE7D0(&v99, a5);
        v20 = SHIBYTE(v99.__r_.__value_.__r.__words[2]);
        v21 = v99.__r_.__value_.__r.__words[0];
        sub_265514(&__p, a6);
        v22 = &v99;
        if (v20 < 0)
        {
          v22 = v21;
        }

        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        *buf = 136315650;
        *&buf[4] = v19;
        *&buf[12] = 2080;
        *&buf[14] = v22;
        *&buf[22] = 2080;
        *&buf[24] = p_p;
        _os_signpost_emit_with_name_impl(&dword_0, v17, OS_SIGNPOST_INTERVAL_BEGIN, v16, "VA_GetPorts", "GetPorts for category = %s, candidate ports = %s, disallowed ports = %s", buf, 0x20u);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v99.__r_.__value_.__l.__data_);
        }

        if ((v93[6] & 0x80000000) != 0)
        {
          operator delete(v91[0]);
        }
      }
    }
  }

  else
  {
    v16 = 0;
  }

  v96 = v16;
  v24 = sub_5544(43);
  if (*(v24 + 8))
  {
    v25 = *v24;
    if (*v24)
    {
      if (os_log_type_enabled(*v24, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315650;
        *&buf[4] = "SignpostUtilities.h";
        *&buf[12] = 1024;
        *&buf[14] = 75;
        *&buf[18] = 2080;
        *&buf[20] = "kGetPorts";
        _os_log_impl(&dword_0, v25, OS_LOG_TYPE_DEBUG, "%25s:%-5d Starting measurement for signpost %s", buf, 0x1Cu);
      }
    }
  }

  *&v99.__r_.__value_.__r.__words[1] = 0uLL;
  v99.__r_.__value_.__r.__words[0] = &v99.__r_.__value_.__l.__size_;
  if (*(a5 + 16))
  {
    v26 = *(*a2 + 8);
    if (!v26)
    {
      goto LABEL_38;
    }

    v27 = (*a2 + 8);
    do
    {
      v28 = v26[8];
      v29 = v28 >= v97;
      v30 = v28 < v97;
      if (v29)
      {
        v27 = v26;
      }

      v26 = *&v26[2 * v30];
    }

    while (v26);
    if (v27 != (*a2 + 8) && v97 >= v27[8])
    {
      v34 = sub_5544(8);
      if (*(v34 + 8))
      {
        v35 = *v34;
        if (*v34)
        {
          if (os_log_type_enabled(*v34, OS_LOG_TYPE_DEBUG))
          {
            sub_879F8(v91, &v97);
            v36 = v93[6] >= 0 ? v91 : v91[0];
            *buf = 136315650;
            *&buf[4] = "RoutingManager.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 5214;
            *&buf[18] = 2080;
            *&buf[20] = v36;
            _os_log_impl(&dword_0, v35, OS_LOG_TYPE_DEBUG, "%25s:%-5d Scanning abstract routes for %s.", buf, 0x1Cu);
            if ((v93[6] & 0x80000000) != 0)
            {
              operator delete(v91[0]);
            }
          }
        }
      }

      v37 = v27[18] == 1668510820;
      *&buf[3] = v97;
      v92 = v37;
      *v93 = *buf;
      *&v93[15] = HIDWORD(v97);
      v91[1] = a7;
      v91[0] = v27 + 10;
      v95 = 0;
      v94 = 0;
      v38 = sub_456B8(v91);
      v73 = v39;
      v70 = v91[0];
      if (v91[0] != v38)
      {
        v74 = v38;
        do
        {
          v40 = sub_5544(8);
          v41 = (v74 + 2);
          if (*(v40 + 8))
          {
            v42 = *v40;
            if (*v40)
            {
              if (os_log_type_enabled(*v40, OS_LOG_TYPE_DEBUG))
              {
                sub_3FEB1C(&__p, v41);
                v43 = &__p;
                if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                {
                  v43 = __p.__r_.__value_.__r.__words[0];
                }

                *buf = 136315650;
                *&buf[4] = "RoutingManager.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 5221;
                *&buf[18] = 2080;
                *&buf[20] = v43;
                _os_log_impl(&dword_0, v42, OS_LOG_TYPE_DEBUG, "%25s:%-5d Scanning abstract route %s.", buf, 0x1Cu);
                if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__p.__r_.__value_.__l.__data_);
                }
              }
            }
          }

          v44 = v74[3];
          if (v44 != v41)
          {
            do
            {
              *buf = v41;
              *&buf[8] = v27 + 10;
              *&buf[16] = a6;
              *&buf[24] = a7;
              *&v101 = a8;
              *(&v101 + 1) = v44 + 2;
              *v102 = a12;
              *&v102[8] = v97;
              v102[24] = a9;
              v104 = 0;
              v105 = 0;
              v45 = *a11;
              v46 = *(a11 + 8);
              v47 = (v46 - *a11) >> 2;
              v103 = 0;
              sub_46980(&v103, v45, v46, v47);
              v106 = *(a11 + 24);
              v107 = *(a11 + 32);
              v108 = *(a11 + 40);
              sub_44E44(v109, a11 + 48);
              v110 = *(a11 + 72);
              if (*(a11 + 103) < 0)
              {
                sub_54A0(&__src, *(a11 + 80), *(a11 + 88));
              }

              else
              {
                __src = *(a11 + 80);
                v112 = *(a11 + 96);
              }

              LODWORD(v113) = *a13;
              BYTE4(v113) = *(a13 + 4);
              v48 = *(a5 + 8);
              v78[2] = v101;
              v79[0] = *v102;
              *(v79 + 9) = *&v102[9];
              v78[0] = *buf;
              v78[1] = *&buf[16];
              v80 = 0;
              v81 = 0;
              v82 = 0;
              sub_46980(&v80, v103, v104, (v104 - v103) >> 2);
              v83 = v106;
              v84 = v107;
              v85 = v108;
              sub_44E44(v86, v109);
              v87 = v110;
              if (SHIBYTE(v112) < 0)
              {
                sub_54A0(&v88, __src, *(&__src + 1));
              }

              else
              {
                v88 = __src;
                v89 = v112;
              }

              v90 = v113;
              while (1)
              {
                if (v48 == a5)
                {
                  v48 = a5;
                  goto LABEL_73;
                }

                if ((sub_2703A8(v78, v48 + 2) & 1) == 0)
                {
                  break;
                }

                v48 = v48[1];
              }

              v50 = a5;
              while (1)
              {
                v50 = *v50;
                if (v48 == v50)
                {
                  break;
                }

                if (sub_2703A8(v78, v50 + 2))
                {
                  v51 = -1;
                  v52 = v48;
                  do
                  {
                    v52 = v52[1];
                    ++v51;
                  }

                  while (v52 != v50);
                  v53 = v51 + 2;
                  if (v51 < 2)
                  {
                    v58 = 0;
                    v54 = 0;
                  }

                  else
                  {
                    v71 = v51 + 2;
                    if (v53 >= 0x7FFFFFFFFFFFFFFLL)
                    {
                      v54 = 0x7FFFFFFFFFFFFFFLL;
                    }

                    else
                    {
                      v54 = v51 + 2;
                    }

                    while (1)
                    {
                      v55 = operator new(16 * v54, &std::nothrow);
                      if (v55)
                      {
                        break;
                      }

                      v56 = v54 >> 1;
                      v57 = v54 > 1;
                      v54 >>= 1;
                      if (!v57)
                      {
                        v58 = 0;
                        v54 = v56;
                        goto LABEL_99;
                      }
                    }

                    v58 = v55;
LABEL_99:
                    v53 = v71;
                  }

                  v48 = sub_270838(v48, v50, v78, v53, v58, v54);
                  if (v58)
                  {
                    operator delete(v58);
                  }

                  break;
                }
              }

LABEL_73:
              if (SHIBYTE(v89) < 0)
              {
                operator delete(v88);
              }

              sub_477A0(v86[1]);
              if (v80)
              {
                v81 = v80;
                operator delete(v80);
              }

              if (v48 != *(a5 + 8))
              {
                v49 = *(a5 + 8);
                sub_85034();
              }

              if (SHIBYTE(v112) < 0)
              {
                operator delete(__src);
              }

              sub_477A0(v109[1]);
              v41 = (v74 + 2);
              if (v103)
              {
                v104 = v103;
                operator delete(v103);
              }

              v44 = v44[1];
            }

            while (v44 != v74 + 2);
          }

          v59 = *(a5 + 16);
          if (v59 == v99.__r_.__value_.__r.__words[2] || !v59)
          {
            break;
          }

          v60 = v74[1];
          v61 = *v73;
          v74 = *v73;
          while (v60 != v61)
          {
            if (sub_4B65C((v73 + 1), (v60 + 2)))
            {
              v74 = v60;
              break;
            }

            v60 = v60[1];
            v61 = v74;
          }
        }

        while (v74 != v70);
      }

      if (a10)
      {
        v62 = sub_5544(8);
        if (*(v62 + 8))
        {
          v63 = *v62;
          if (*v62)
          {
            if (os_log_type_enabled(*v62, OS_LOG_TYPE_DEBUG))
            {
              sub_3FE68C(v91, &v99);
              v64 = v93[6] >= 0 ? v91 : v91[0];
              *buf = 136315650;
              *&buf[4] = "RoutingManager.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 5342;
              *&buf[18] = 2080;
              *&buf[20] = v64;
              _os_log_impl(&dword_0, v63, OS_LOG_TYPE_DEBUG, "%25s:%-5d Ports: %s", buf, 0x1Cu);
              if ((v93[6] & 0x80000000) != 0)
              {
                operator delete(v91[0]);
              }
            }
          }
        }
      }

      *a1 = 0;
      sub_7FE10((a1 + 8), &v99);
    }

    else
    {
LABEL_38:
      v31 = sub_5544(8);
      if (*(v31 + 8))
      {
        v32 = *v31;
        if (*v31)
        {
          if (os_log_type_enabled(*v31, OS_LOG_TYPE_DEBUG))
          {
            if (v97 > 7)
            {
              v33 = "unknown";
            }

            else
            {
              v33 = off_6BD200[v97];
            }

            sub_53E8(v91, v33);
            if (v93[6] >= 0)
            {
              v65 = v91;
            }

            else
            {
              v65 = v91[0];
            }

            *buf = 136315650;
            *&buf[4] = "RoutingManager.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 5207;
            *&buf[18] = 2080;
            *&buf[20] = v65;
            _os_log_impl(&dword_0, v32, OS_LOG_TYPE_DEBUG, "%25s:%-5d Unable to find a category entry for %s", buf, 0x1Cu);
            if ((v93[6] & 0x80000000) != 0)
            {
              operator delete(v91[0]);
            }
          }
        }
      }

      *a1 = 2;
      sub_7FE10((a1 + 8), &v99);
    }
  }

  else
  {
    *a1 = 0;
    sub_7FE10((a1 + 8), &v99);
  }

  sub_4B0F4(v99.__r_.__value_.__l.__size_);
  return sub_87278(&v96);
}

void sub_2701FC(_Unwind_Exception *a1)
{
  sub_4B0F4(STACK[0x290]);
  sub_87278(&STACK[0x258]);
  _Unwind_Resume(a1);
}

uint64_t sub_2703A8(uint64_t *a1, uint64_t *a2)
{
  sub_25704(&v25, a2, "", 5234);
  v3 = 4;
  if (*(v25 + 184))
  {
    v3 = 0;
  }

  v4 = *(a1[5] + v3);
  v5 = *(v25 + 144);
  v24 = a1[23];
  if ((v24 & 0x1FFFFFFFFLL) == 0x172736D78)
  {
    *buf = 256;
    if (sub_34D04C(v25, buf))
    {
      LODWORD(v24) = 1920167273;
      BYTE4(v24) = 1;
    }
  }

  if (v5 == v4)
  {
    v7 = *a1;
    v6 = a1[1];
    v9 = a1[2];
    v8 = a1[3];
    v10 = a1[4];
    v13 = *(a1 + 72);
    v15 = 0;
    v16 = 0;
    v14 = 0;
    sub_46980(&v14, a1[10], a1[11], (a1[11] - a1[10]) >> 2);
    v17 = a1[13];
    v18 = *(a1 + 112);
    v19 = *(a1 + 30);
    sub_44E44(&v20, (a1 + 16));
    v21 = *(a1 + 38);
    if (*(a1 + 183) < 0)
    {
      sub_54A0(&__p, a1[20], a1[21]);
    }

    else
    {
      __p = *(a1 + 10);
      v23 = a1[22];
    }

    v11 = a1[6];
    v29 = 0;
    v30 = 0;
    *buf = 0;
    sub_46980(buf, v14, v15, (v15 - v14) >> 2);
    v31 = v17;
    v32 = v18;
    v33 = v19;
    sub_44E44(&v34, &v20);
    v35 = v21;
    if (SHIBYTE(v23) < 0)
    {
      sub_54A0(&v36, __p, *(&__p + 1));
    }

    else
    {
      v36 = __p;
      v37 = v23;
    }

    v27 = 0;
    operator new();
  }

  if (v26)
  {
    sub_1A8C0(v26);
  }

  return 0;
}

void sub_27078C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, std::__shared_weak_count *a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  if (a34)
  {
    sub_1A8C0(a34);
  }

  _Unwind_Resume(exception_object);
}

void *sub_270838(void *a1, void *a2, uint64_t *a3, uint64_t a4, _OWORD *a5, uint64_t a6)
{
  v8 = a1;
  if (a4 == 3)
  {
    v12 = a1[1];
    if (!sub_2703A8(a3, (v12 + 16)))
    {
      v22 = *(v12 + 16);
      *(v12 + 16) = a2[2];
      a2[2] = v22;
      v23 = *(v12 + 24);
      *(v12 + 24) = a2[3];
      a2[3] = v23;
      v24 = v8[2];
      v8[2] = *(v12 + 16);
      *(v12 + 16) = v24;
      v25 = v8[3];
      v8[3] = *(v12 + 24);
      *(v12 + 24) = v25;
      return v12;
    }

    v13 = v8[2];
    v8[2] = *(v12 + 16);
    *(v12 + 16) = v13;
    v14 = v8[3];
    v8[3] = *(v12 + 24);
    *(v12 + 24) = v14;
    v15 = *(v12 + 16);
    *(v12 + 16) = a2[2];
    a2[2] = v15;
    v11 = *(v12 + 24);
    *(v12 + 24) = a2[3];
    goto LABEL_6;
  }

  if (a4 == 2)
  {
    v10 = a1[2];
    a1[2] = a2[2];
    a2[2] = v10;
    v11 = a1[3];
    a1[3] = a2[3];
LABEL_6:
    a2[3] = v11;
    return a2;
  }

  v17 = a5;
  if (a6 >= a4)
  {
    v51[0] = a5;
    v51[1] = &v52;
    *a5 = *(a1 + 1);
    v26 = a5 + 1;
    a1[2] = 0;
    a1[3] = 0;
    v52 = 1;
    for (i = a1[1]; i != a2; i = i[1])
    {
      if (sub_2703A8(a3, i + 2))
      {
        v28 = *(i + 1);
        i[2] = 0;
        i[3] = 0;
        v29 = v8[3];
        *(v8 + 1) = v28;
        if (v29)
        {
          std::__shared_weak_count::__release_weak(v29);
        }

        v8 = v8[1];
      }

      else
      {
        *v26++ = *(i + 1);
        i[2] = 0;
        i[3] = 0;
        ++v52;
      }
    }

    v30 = *(i + 1);
    i[2] = 0;
    i[3] = 0;
    v31 = v8[3];
    *(v8 + 1) = v30;
    if (v31)
    {
      std::__shared_weak_count::__release_weak(v31);
    }

    v12 = v8[1];
    if (v26 > v17)
    {
      v32 = v8[1];
      do
      {
        v33 = *v17;
        *v17 = 0;
        *(v17 + 1) = 0;
        v34 = *(v32 + 24);
        *(v32 + 16) = v33;
        if (v34)
        {
          std::__shared_weak_count::__release_weak(v34);
        }

        ++v17;
        v32 = *(v32 + 8);
      }

      while (v17 < v26);
    }

    sub_86FD0(v51);
  }

  else
  {
    v18 = a4 / 2;
    v19 = a4 / 2;
    if (a4 <= -2)
    {
      v35 = a4 / 2;
      v20 = a1;
      do
      {
        v20 = *v20;
      }

      while (!__CFADD__(v35++, 1));
    }

    else
    {
      v20 = a1;
      if ((a4 + 1) >= 3)
      {
        v21 = v18 + 1;
        v20 = a1;
        do
        {
          v20 = v20[1];
          --v21;
        }

        while (v21 > 1);
      }
    }

    v37 = v20;
    while (1)
    {
      v37 = *v37;
      if (sub_2703A8(a3, v37 + 2))
      {
        break;
      }

      if (v37 == v8)
      {
        goto LABEL_38;
      }

      --v19;
    }

    v8 = sub_270838(v8, v37, a3, v19, v17, a6);
LABEL_38:
    v12 = a2[1];
    v38 = a4 - v18;
    v39 = v20;
    while (sub_2703A8(a3, v39 + 2))
    {
      v39 = v39[1];
      if (v39 == a2)
      {
        goto LABEL_43;
      }

      --v38;
    }

    v12 = sub_270838(v39, a2, a3, v38, v17, a6);
LABEL_43:
    if (v8 != v20)
    {
      if (v20 == v12)
      {
        return v8;
      }

      else
      {
        v40 = v8[2];
        v8[2] = v20[2];
        v20[2] = v40;
        v41 = v8[3];
        v8[3] = v20[3];
        v20[3] = v41;
        v42 = v8[1];
        for (j = v20[1]; j != v12; j = j[1])
        {
          if (v42 == v20)
          {
            v20 = j;
          }

          v44 = v42[2];
          v42[2] = j[2];
          j[2] = v44;
          v45 = v42[3];
          v42[3] = j[3];
          j[3] = v45;
          v42 = v42[1];
        }

        if (v42 != v20)
        {
          v46 = v42;
          v47 = v20;
          do
          {
            while (1)
            {
              v48 = v46[2];
              v46[2] = v47[2];
              v47[2] = v48;
              v49 = v46[3];
              v46[3] = v47[3];
              v47[3] = v49;
              v46 = v46[1];
              v47 = v47[1];
              if (v47 == v12)
              {
                break;
              }

              if (v46 == v20)
              {
                v20 = v47;
              }
            }

            v47 = v20;
          }

          while (v46 != v20);
        }

        return v42;
      }
    }
  }

  return v12;
}

void sub_270C10(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_86FD0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_270C24(uint64_t a1)
{
  if (*(a1 + 183) < 0)
  {
    operator delete(*(a1 + 160));
  }

  sub_477A0(*(a1 + 136));
  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 88) = v2;
    operator delete(v2);
  }

  return a1;
}

__n128 sub_270C74(uint64_t a1, uint64_t a2)
{
  *a2 = off_6BC600;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

_BYTE *sub_270D20(uint64_t a1, uint64_t *a2, uint64_t a3, __int128 *a4, uint64_t a5)
{
  sub_27A4();
  v23 = (*(qword_6E94F8 + 16))();
  if (*(a3 + 32))
  {
    v16 = sub_5544(14);
    v17 = *v16;
    if (*v16 && os_log_type_enabled(*v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v26 = "RoutingManager.cpp";
      v27 = 1024;
      *v28 = 2491;
      _os_log_impl(&dword_0, v17, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

LABEL_28:
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  if (*(a3 + 168) != 1852796517)
  {
    v18 = sub_5544(14);
    v19 = *v18;
    if (*v18 && os_log_type_enabled(*v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v26 = "RoutingManager.cpp";
      v27 = 1024;
      *v28 = 2492;
      _os_log_impl(&dword_0, v19, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    goto LABEL_28;
  }

  v10 = *(a3 + 199);
  if ((v10 & 0x80u) != 0)
  {
    v10 = *(a3 + 184);
  }

  if (v10)
  {
    v20 = sub_5544(14);
    v21 = *v20;
    if (*v20 && os_log_type_enabled(*v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v26 = "RoutingManager.cpp";
      v27 = 1024;
      *v28 = 2493;
      _os_log_impl(&dword_0, v21, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    goto LABEL_28;
  }

  sub_26DF08(buf, a2, a3, a4, a5, 0);
  v11 = *buf;
  if (!*buf)
  {
    v24[0] = v24;
    v24[1] = v24;
    v24[2] = 0;
    v12 = *&v28[2];
    if (*&v28[2] != (&v26 + 4))
    {
      do
      {
        v13 = sub_840F4(*(a3 + 386), &v26 + 4, v12 + 2);
        v14 = v12[1];
        if (v13)
        {
          while (1)
          {
            if (v14 == (&v26 + 4))
            {
              sub_CFE14(v24, v24, &v26 + 4, v12, v14);
              goto LABEL_14;
            }

            if (!sub_840F4(*(a3 + 386), &v26 + 4, v14 + 2))
            {
              break;
            }

            v14 = v14[1];
          }

          sub_CFE14(v24, v24, &v26 + 4, v12, v14);
          v14 = v14[1];
        }

LABEL_14:
        v12 = v14;
      }

      while (v14 != (&v26 + 4));
    }

    sub_65310(v24);
    v11 = *buf;
  }

  *a1 = v11;
  sub_65234((a1 + 8), &v26 + 4);
  sub_65310((&v26 + 4));
  return sub_210C50(&v23);
}

void sub_2710A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, __int16 a10, char a11, char a12, char a13)
{
  __cxa_free_exception(v13);
  sub_210C50(&a12);
  _Unwind_Resume(a1);
}

void sub_271104(uint64_t a1, uint64_t a2, int a3)
{
  sub_7B03C(&v10, (a2 + 72));
  v5 = *(a2 + 184);
  v8[0] = *(a2 + 176);
  v8[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 16), 1uLL, memory_order_relaxed);
  }

  v9 = *(a2 + 192);
  LODWORD(v6) = a3;
  sub_C25C0(v7, a2, (a2 + 32), a2 + 48, &v10, a2 + 120, *(a2 + 144), (a2 + 152), a2 + 200, (a2 + 240), *(a2 + 408), (a2 + 416), v6, a2 + 440, (a2 + 472), *(a2 + 410), v8);
}

void sub_271208(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_D0710(va);
  if (v11)
  {
    std::__shared_weak_count::__release_weak(v11);
  }

  sub_4B14C(*(v12 - 64));
  sub_4B0F4(*(v12 - 88));
  _Unwind_Resume(a1);
}

uint64_t sub_271240(uint64_t a1)
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

uint64_t sub_2712C0(uint64_t a1, uint64_t a2)
{
  sub_141A44(&v10, a2);
  v2 = v11;
  if (v11 == &v10)
  {
LABEL_10:
    v9 = 0;
    goto LABEL_11;
  }

  while (1)
  {
    v3 = v2[3];
    if (!v3)
    {
      goto LABEL_9;
    }

    v4 = std::__shared_weak_count::lock(v3);
    if (!v4)
    {
      goto LABEL_9;
    }

    v5 = v4;
    v6 = v2[2];
    if (!v6 || *(v6 + 144) != 1885892706)
    {
      sub_1A8C0(v5);
      goto LABEL_9;
    }

    v7 = sub_34CF94(v6);
    sub_1A8C0(v5);
    if (v7)
    {
      break;
    }

LABEL_9:
    v2 = v2[1];
    if (v2 == &v10)
    {
      goto LABEL_10;
    }
  }

  v9 = 1;
LABEL_11:
  sub_65310(&v10);
  return v9;
}

void sub_271380(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1A8C0(v2);
  sub_65310(va);
  _Unwind_Resume(a1);
}

void sub_271424(uint64_t *a1, int a2)
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  strcpy(v13, "cwdv");
  v13[8] = 0;
  v14 = 3;
  v16[0] = 0;
  v16[1] = 0;
  v15 = v16;
  v17 = 44739242;
  v19 = 0;
  v20 = 0;
  __p = 0;
  LODWORD(v21[0]) = 1886152041;
  sub_AFD28(&v10, v21);
  LODWORD(v21[0]) = 1886152047;
  sub_AFD28(&v10, v21);
  v4 = sub_809C0();
  v21[0] = off_6BC4E0;
  v21[3] = v21;
  sub_256FB0(v9, v4, &v10, v21);
  sub_85148(v21);
  if (v9[2])
  {
    v5 = sub_26C4B8(a1, v9, a2);
    v6 = v5;
    if (v5 >= 0x100u)
    {
      v7 = sub_809C0();
      if (v6)
      {
        v8 = 1919842148;
      }

      else
      {
        v8 = 1919971701;
      }

      sub_258778(v7, v9, v8);
    }
  }

  sub_65310(v9);
  if (SHIBYTE(v20) < 0)
  {
    operator delete(__p);
  }

  sub_477A0(v16[0]);
  if (v10)
  {
    v11 = v10;
    operator delete(v10);
  }
}

void sub_2715B8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  sub_65310(va);
  sub_46934(va1);
  _Unwind_Resume(a1);
}

_BYTE *sub_2715F8(uint64_t a1, uint64_t *a2, int a3, void **a4)
{
  sub_27A4();
  v49 = (*(qword_6E94F8 + 16))();
  sub_27A4();
  v8 = atomic_load(&qword_6E9558);
  if (v8 != pthread_self())
  {
    v42 = sub_5544(14);
    v43 = *v42;
    if (*v42 && os_log_type_enabled(*v42, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "RoutingManager.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 4685;
      _os_log_impl(&dword_0, v43, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): Unable to acquire routing mutex.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Unable to acquire routing mutex.");
  }

  sub_21991C(a1, 1920099684);
  *&v48[8] = 0;
  *&v48[16] = 0;
  *v48 = &v48[8];
  v10 = a4 + 1;
  v9 = *a4;
  if (a3)
  {
    v11 = a2[69];
    v12 = a2 + 70;
    v52.__r_.__value_.__r.__words[0] = *a4;
    v46[0] = v11;
    *buf = v48;
    *&buf[8] = &v48[8];
    __p.__r_.__value_.__s.__data_[0] = 0;
    if (v11 != (a2 + 70))
    {
      v13 = (a2 + 69);
      do
      {
        v14 = v52.__r_.__value_.__r.__words[0];
        v52.__r_.__value_.__r.__words[0] = sub_2720E0(v52.__r_.__value_.__l.__data_, a4 + 1, v11[7]);
        sub_2722B0((v52.__r_.__value_.__r.__words[0] == v14), &v52, v46, buf, &__p);
        if (v52.__r_.__value_.__l.__data_ == v10)
        {
          break;
        }

        v15 = v46[0];
        v46[0] = sub_2720E0(v46[0], a2 + 70, *(v52.__r_.__value_.__r.__words[0] + 28));
        sub_2722B0((v46[0] == v15), &v52, v46, buf, &__p);
        v11 = v46[0];
      }

      while (v46[0] != v12);
      if (*&v48[16])
      {
        sub_477A0(*&v48[8]);
        *&v48[16] = 0;
        *v48 = &v48[8];
        v16 = *a4;
        v46[0] = *v13;
        __p.__r_.__value_.__r.__words[0] = (a2 + 70);
        v50 = (a4 + 1);
        v51 = v16;
        v52.__r_.__value_.__r.__words[0] = v48;
        v52.__r_.__value_.__l.__size_ = &v48[8];
        sub_271C84(buf, v46, &__p, &v51, &v50, &v52);
        v17 = a2[71];
        v18 = *&v48[8];
        v19 = *v13;
        a2[69] = *v48;
        *(a2 + 35) = v18;
        *v48 = v19;
        *&v48[16] = v17;
        if (*(&v18 + 1))
        {
          v20 = (v18 + 16);
        }

        else
        {
          v20 = a2 + 69;
        }

        *v20 = v12;
        v21 = (*&v48[8] + 16);
        if (!v17)
        {
          v21 = v48;
        }

        *v21 = &v48[8];
LABEL_16:
        sub_271104(buf, a2, 1919185776);
      }
    }
  }

  else
  {
    v22 = a2[69];
    v46[0] = *a4;
    __p.__r_.__value_.__r.__words[0] = (a4 + 1);
    v50 = a2 + 70;
    v51 = v22;
    v52.__r_.__value_.__r.__words[0] = v48;
    v52.__r_.__value_.__l.__size_ = &v48[8];
    sub_271C84(buf, v46, &__p, &v51, &v50, &v52);
    if (*&v48[16])
    {
      sub_271E78(a2 + 69, *v48, &v48[8]);
      goto LABEL_16;
    }
  }

  v23 = sub_5544(8);
  v24 = sub_5544(35);
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
      if ((v26 & 1) == 0)
      {
        goto LABEL_57;
      }

      goto LABEL_25;
    }
  }

  if ((v26 & v27) == 0)
  {
    v23 = v24;
  }

  if (*(v23 + 8))
  {
LABEL_25:
    v28 = *v23;
    if (v28 && os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      v29 = "????";
      if (a3 == 1)
      {
        v29 = "Remove";
      }

      if (a3)
      {
        v30 = v29;
      }

      else
      {
        v30 = "Add";
      }

      sub_53E8(v46, v30);
      v31 = v47;
      v32 = v46[0];
      v33 = *a4;
      memset(&__p, 0, sizeof(__p));
      std::string::append(&__p, "{ ", 2uLL);
      if (v33 != v10)
      {
        while (1)
        {
          std::to_string(&v52, *(v33 + 7));
          if ((v52.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v34 = &v52;
          }

          else
          {
            v34 = v52.__r_.__value_.__r.__words[0];
          }

          if ((v52.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(v52.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = v52.__r_.__value_.__l.__size_;
          }

          std::string::append(&__p, v34, size);
          if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v52.__r_.__value_.__l.__data_);
          }

          v36 = v33[1];
          if (v36)
          {
            do
            {
              v37 = v36;
              v36 = *v36;
            }

            while (v36);
          }

          else
          {
            do
            {
              v37 = v33[2];
              v38 = *v37 == v33;
              v33 = v37;
            }

            while (!v38);
          }

          if (v37 == v10)
          {
            break;
          }

          std::string::append(&__p, ", ", 2uLL);
          v33 = v37;
        }
      }

      std::string::append(&__p, " }", 2uLL);
      v39 = v46;
      if (v31 < 0)
      {
        v39 = v32;
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
      *&buf[4] = "RoutingManager.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 4700;
      v54 = 2080;
      v55 = v39;
      v56 = 2080;
      v57 = p_p;
      _os_log_impl(&dword_0, v28, OS_LOG_TYPE_DEBUG, "%25s:%-5d Redundant modification (%s) of alt vad disable policy for type %s", buf, 0x26u);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (v47 < 0)
      {
        operator delete(v46[0]);
      }
    }
  }

LABEL_57:
  sub_477A0(*&v48[8]);
  return sub_210C50(&v49);
}

void sub_271BAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44)
{
  sub_477A0(a22);
  if (*(v44 + 56) == 1)
  {
    sub_175F78((v44 + 24));
  }

  sub_210C50(&a28);
  _Unwind_Resume(a1);
}

__n128 sub_271C84(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, __n128 *a6)
{
  v8 = *a2;
  v9 = *a3;
  if (*a2 == *a3)
  {
LABEL_38:
    v30 = *a6;
    goto LABEL_39;
  }

  for (i = *a4; *a4 != *a5; i = *a4)
  {
    v15 = *(v8 + 7);
    v16 = *(i + 7);
    if (v15 >= v16)
    {
      if (v16 >= v15)
      {
        v23 = v8[1];
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
            v24 = v8[2];
            v20 = *v24 == v8;
            v8 = v24;
          }

          while (!v20);
        }

        *a2 = v24;
        v25 = *a4;
        v26 = *(*a4 + 8);
        if (v26)
        {
          do
          {
            v22 = v26;
            v26 = *v26;
          }

          while (v26);
        }

        else
        {
          do
          {
            v22 = v25[2];
            v20 = *v22 == v25;
            v25 = v22;
          }

          while (!v20);
        }
      }

      else
      {
        v21 = i[1];
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
            v22 = i[2];
            v20 = *v22 == i;
            i = v22;
          }

          while (!v20);
        }
      }

      *a4 = v22;
    }

    else
    {
      sub_272380(a6, v8 + 7);
      v17 = *a2;
      v18 = *(*a2 + 8);
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
          v20 = *v19 == v17;
          v17 = v19;
        }

        while (!v20);
      }

      *a2 = v19;
    }

    v8 = *a2;
    v9 = *a3;
    if (*a2 == *a3)
    {
      goto LABEL_38;
    }
  }

  v30 = *a6;
  if (v8 != v9)
  {
    do
    {
      sub_272380(&v30, v8 + 7);
      v27 = v8[1];
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
          v28 = v8[2];
          v20 = *v28 == v8;
          v8 = v28;
        }

        while (!v20);
      }

      v8 = v28;
    }

    while (v28 != v9);
    v8 = v9;
  }

LABEL_39:
  result = v30;
  *a1 = v8;
  *(a1 + 8) = result;
  return result;
}

uint64_t *sub_271E78(uint64_t *result, void *a2, void *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_271F04(v5, v5 + 1, *(v4 + 7));
      v6 = v4[1];
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
          v7 = v4[2];
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

uint64_t *sub_271F04(void *a1, uint64_t *a2, int a3)
{
  v3 = a2;
  v4 = a1 + 1;
  if (a1 + 1 == a2 || (v5 = *(a2 + 7), v5 > a3))
  {
    v6 = *a2;
    if (*a1 == a2)
    {
      v8 = a2;
LABEL_16:
      if (v6)
      {
        v9 = v8 + 1;
      }

      else
      {
        v9 = a2;
      }

      goto LABEL_19;
    }

    if (v6)
    {
      v7 = *a2;
      do
      {
        v8 = v7;
        v7 = v7[1];
      }

      while (v7);
    }

    else
    {
      v12 = a2;
      do
      {
        v8 = v12[2];
        v13 = *v8 == v12;
        v12 = v8;
      }

      while (v13);
    }

    if (*(v8 + 7) < a3)
    {
      goto LABEL_16;
    }

    v14 = *v4;
    if (!*v4)
    {
      goto LABEL_38;
    }

    while (1)
    {
      while (1)
      {
        v15 = v14;
        v16 = *(v14 + 28);
        if (v16 <= a3)
        {
          break;
        }

        v14 = *v15;
        v4 = v15;
        if (!*v15)
        {
          goto LABEL_38;
        }
      }

      if (v16 >= a3)
      {
        break;
      }

      v4 = v15 + 1;
      v14 = v15[1];
      if (!v14)
      {
        goto LABEL_38;
      }
    }

LABEL_40:
    v9 = v4;
    goto LABEL_19;
  }

  if (v5 >= a3)
  {
    return v3;
  }

  v9 = a2 + 1;
  v10 = a2[1];
  if (v10)
  {
    do
    {
      v9 = v10;
      v10 = *v10;
      v11 = v9;
    }

    while (v10);
  }

  else
  {
    v11 = a2;
    do
    {
      v17 = v11;
      v11 = v11[2];
    }

    while (*v11 != v17);
  }

  if (v11 != v4 && *(v11 + 7) <= a3)
  {
    v18 = *v4;
    if (!*v4)
    {
      goto LABEL_38;
    }

    while (1)
    {
      while (1)
      {
        v19 = v18;
        v20 = *(v18 + 28);
        if (v20 <= a3)
        {
          break;
        }

        v18 = *v19;
        v4 = v19;
        if (!*v19)
        {
          goto LABEL_38;
        }
      }

      if (v20 >= a3)
      {
        goto LABEL_40;
      }

      v4 = v19 + 1;
      v18 = v19[1];
      if (!v18)
      {
        goto LABEL_38;
      }
    }
  }

LABEL_19:
  v3 = *v9;
  if (!*v9)
  {
LABEL_38:
    operator new();
  }

  return v3;
}

void *sub_2720E0(void *a1, void *a2, int a3)
{
  if (a1 != a2)
  {
    if (*(a1 + 7) >= a3)
    {
      return a1;
    }

    v3 = 1;
LABEL_4:
    if (v3)
    {
      v4 = 0;
      v5 = a1;
      do
      {
        if (v5 == a2)
        {
          v9 = v3;
          goto LABEL_26;
        }

        v6 = v5[1];
        v7 = v5;
        if (v6)
        {
          do
          {
            v5 = v6;
            v6 = *v6;
          }

          while (v6);
        }

        else
        {
          do
          {
            v5 = v7[2];
            v8 = *v5 == v7;
            v7 = v5;
          }

          while (!v8);
        }

        ++v4;
      }

      while (v4 != v3);
      v9 = v3;
      v4 = v3;
    }

    else
    {
      v9 = 0;
      v4 = 0;
      v5 = a1;
    }

LABEL_26:
    while (v5 != a2 && *(v5 + 7) < a3)
    {
      v3 *= 2;
      a1 = v5;
      if ((v3 & 0x8000000000000000) == 0)
      {
        goto LABEL_4;
      }

      v4 = 0;
      v9 = -v3;
      if (-v3 > 1)
      {
        v10 = -v3;
      }

      else
      {
        v10 = 1;
      }

      while (v5 != a2)
      {
        v11 = *v5;
        v12 = v5;
        if (*v5)
        {
          do
          {
            v5 = v11;
            v11 = v11[1];
          }

          while (v11);
        }

        else
        {
          do
          {
            v5 = v12[2];
            v8 = *v5 == v12;
            v12 = v5;
          }

          while (v8);
        }

        if (++v4 == v10)
        {
          v4 = v10;
          goto LABEL_26;
        }
      }
    }

    a2 = v5;
    v13 = v4 - v9 + v3;
    if (!v13)
    {
      return a1;
    }

    if (v13 != 1)
    {
      do
      {
        v14 = v13 >> 1;
        v15 = a1;
        if (v13 >= 2)
        {
          v16 = v13 >> 1;
          v17 = a1;
          do
          {
            v18 = v17[1];
            if (v18)
            {
              do
              {
                v15 = v18;
                v18 = *v18;
              }

              while (v18);
            }

            else
            {
              do
              {
                v15 = v17[2];
                v8 = *v15 == v17;
                v17 = v15;
              }

              while (!v8);
            }

            v17 = v15;
          }

          while (v16-- > 1);
        }

        if (*(v15 + 7) < a3)
        {
          v20 = v15[1];
          if (v20)
          {
            do
            {
              a1 = v20;
              v20 = *v20;
            }

            while (v20);
          }

          else
          {
            do
            {
              a1 = v15[2];
              v8 = *a1 == v15;
              v15 = a1;
            }

            while (!v8);
          }

          v14 = v13 + ~v14;
        }

        v13 = v14;
      }

      while (v14);
      return a1;
    }
  }

  return a2;
}

void **sub_2722B0(void **result, uint64_t a2, uint64_t a3, void **a4, char *a5)
{
  if (result)
  {
    if (*a5 == 1)
    {
      result = sub_272380(a4, (*a2 + 28));
      v8 = *a2;
      v9 = *(*a2 + 8);
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
          v10 = v8[2];
          v11 = *v10 == v8;
          v8 = v10;
        }

        while (!v11);
      }

      *a2 = v10;
      v12 = *a3;
      v13 = *(*a3 + 8);
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
          v14 = v12[2];
          v11 = *v14 == v12;
          v12 = v14;
        }

        while (!v11);
      }

      v15 = 0;
      *a3 = v14;
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
    v15 = 0;
  }

  *a5 = v15;
  return result;
}

void **sub_272380(void **a1, int *a2)
{
  v3 = sub_271F04(*a1, a1[1], *a2);
  a1[1] = v3;
  v4 = v3[1];
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
      v5 = v3[2];
      v6 = *v5 == v3;
      v3 = v5;
    }

    while (!v6);
  }

  a1[1] = v5;
  return a1;
}

_BYTE *sub_2723EC(uint64_t a1, int a2)
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
      v18 = 4724;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): Unable to acquire routing mutex.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Unable to acquire routing mutex.");
  }

  v5 = *(a1 + 560);
  if (!v5)
  {
LABEL_14:
    operator new();
  }

  v6 = a1 + 560;
  v7 = *(a1 + 560);
  do
  {
    if (*(v7 + 28) >= a2)
    {
      v6 = v7;
    }

    v7 = *(v7 + 8 * (*(v7 + 28) < a2));
  }

  while (v7);
  if (v6 == a1 + 560 || *(v6 + 28) > a2)
  {
    while (1)
    {
      while (1)
      {
        v8 = v5;
        v9 = *(v5 + 28);
        if (v9 <= a2)
        {
          break;
        }

        v5 = *v8;
        if (!*v8)
        {
          goto LABEL_14;
        }
      }

      if (v9 >= a2)
      {
        break;
      }

      v5 = v8[1];
      if (!v5)
      {
        goto LABEL_14;
      }
    }
  }

  return sub_210C50(&v14);
}

void sub_2725FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  __cxa_free_exception(v13);
  sub_210C50(&a13);
  _Unwind_Resume(a1);
}

uint64_t *sub_272638(uint64_t *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = (a1 + 1);
  sub_271E78(a1, *a2, (a2 + 8));
  return a1;
}

void sub_27268C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  sub_272638(v5, a3);
  sub_2715F8(a1, a2, 1, v5);
  sub_477A0(v5[1]);
}

uint64_t sub_2726F4(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = a1 + 8;
  sub_272748(a1, *a2, (a2 + 8));
  return a1;
}

void **sub_272748(void **result, void **a2, void **a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_23F54C(v5, v5 + 1, v4 + 4);
      v6 = v4[1];
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
          v7 = v4[2];
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

BOOL sub_2727D0(uint64_t a1, int a2)
{
  sub_27A4();
  v13 = (*(qword_6E94F8 + 16))();
  sub_27A4();
  v4 = atomic_load(&qword_6E9558);
  if (v4 != pthread_self())
  {
    v10 = sub_5544(14);
    v11 = *v10;
    if (*v10 && os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v15 = "RoutingManager.cpp";
      v16 = 1024;
      v17 = 4792;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): Unable to acquire routing mutex.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Unable to acquire routing mutex.");
  }

  v5 = a1 + 560;
  v6 = *(a1 + 560);
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = a1 + 560;
  do
  {
    if (*(v6 + 28) >= a2)
    {
      v7 = v6;
    }

    v6 = *(v6 + 8 * (*(v6 + 28) < a2));
  }

  while (v6);
  if (v7 == v5 || *(v7 + 28) > a2)
  {
LABEL_9:
    v7 = a1 + 560;
  }

  v8 = v7 != v5;
  sub_210C50(&v13);
  return v8;
}

void sub_27297C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  __cxa_free_exception(v13);
  sub_210C50(&a13);
  _Unwind_Resume(a1);
}

uint64_t sub_2729B4(uint64_t a1, unsigned int *a2, void *a3)
{
  v5 = *(a1 + 8);
  v3 = a1 + 8;
  v4 = v5;
  if (!v5)
  {
    return 0;
  }

  v8 = *a2;
  v9 = v3;
  do
  {
    v10 = *(v4 + 32);
    v11 = v10 >= v8;
    v12 = v10 < v8;
    if (v11)
    {
      v9 = v4;
    }

    v4 = *(v4 + 8 * v12);
  }

  while (v4);
  if (v9 == v3 || v8 < *(v9 + 32))
  {
    return 0;
  }

  sub_272EC8(v34, v9 + 40);
  v35 = *(v9 + 64);
  v36[0] = *(v9 + 72);
  *(v36 + 3) = *(v9 + 75);
  sub_272F50(v37, (v9 + 80));
  sub_273274(v38, (v9 + 104));
  v39 = *(v9 + 128);
  *&v40[3] = *a2;
  v30 = v36[0] == 1668510820;
  *v31 = *v40;
  *&v31[15] = *&v40[15];
  v29[0] = v34;
  v29[1] = (a2 + 22);
  v32 = 0;
  v33 = 0;
  v16 = sub_456B8(v29);
  v17 = v29[0];
  if (v16 == v29[0])
  {
LABEL_12:
    v13 = 0;
  }

  else
  {
    v18 = v15;
    v19 = a3 + 1;
    while (1)
    {
      v20 = *a3;
      if (*a3 == v19)
      {
        break;
      }

      v21 = v16 + 16;
      while (*(v16 + 24) != v21)
      {
        v22 = *(v20 + 7);
        v23 = *(v16 + 24);
        do
        {
          v24 = *(v23 + 16) == v22 || *(v23 + 20) == v22;
          v25 = v24;
          if (v24)
          {
            break;
          }

          v23 = *(v23 + 8);
        }

        while (v23 != v21);
        if (!v25)
        {
          break;
        }

        v26 = v20[1];
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
            v27 = v20[2];
            v24 = *v27 == v20;
            v20 = v27;
          }

          while (!v24);
        }

        v20 = v27;
        if (v27 == v19)
        {
          goto LABEL_41;
        }
      }

      v28 = *(v16 + 8);
      v16 = *v18;
      while (v28 != v16)
      {
        if (sub_4B65C((v18 + 1), v28 + 16))
        {
          v16 = v28;
          break;
        }

        v28 = *(v28 + 8);
      }

      if (v16 == v17)
      {
        goto LABEL_12;
      }
    }

LABEL_41:
    v13 = 1;
  }

  sub_2492C0(v38[1]);
  sub_249314(v37[1]);
  sub_2493B4(v34);
  return v13;
}

void sub_272BC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_249C4C(va);
  _Unwind_Resume(a1);
}

void **sub_272BFC(void **result, uint64_t a2, uint64_t a3, void **a4, char *a5)
{
  if (result)
  {
    if (*a5 == 1)
    {
      result = sub_2581DC(a4, (*a2 + 16));
      *a2 = *(*a2 + 8);
      v8 = *a3;
      v9 = *(*a3 + 8);
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
          v10 = v8[2];
          v11 = *v10 == v8;
          v8 = v10;
        }

        while (!v11);
      }

      v12 = 0;
      *a3 = v10;
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  *a5 = v12;
  return result;
}

void *sub_272CA4(void *a1, void *a2, unint64_t *a3)
{
  if (a1 == a2)
  {
    return a2;
  }

  v4 = a1;
  if (sub_87164(a1 + 4, a3))
  {
    v6 = 1;
LABEL_5:
    if (v6)
    {
      v7 = 0;
      v8 = v4;
      while (v8 != a2)
      {
        v9 = v8[1];
        v10 = v8;
        if (v9)
        {
          do
          {
            v8 = v9;
            v9 = *v9;
          }

          while (v9);
        }

        else
        {
          do
          {
            v8 = v10[2];
            v11 = *v8 == v10;
            v10 = v8;
          }

          while (!v11);
        }

        if (++v7 == v6)
        {
          v12 = v6;
          v7 = v6;
          goto LABEL_27;
        }
      }

      v12 = v6;
    }

    else
    {
      v12 = 0;
      v7 = 0;
      v8 = v4;
    }

LABEL_27:
    while (v8 != a2)
    {
      if (!sub_87164(v8 + 4, a3))
      {
        goto LABEL_32;
      }

      v6 *= 2;
      v4 = v8;
      if ((v6 & 0x8000000000000000) == 0)
      {
        goto LABEL_5;
      }

      v7 = 0;
      v12 = -v6;
      if (-v6 > 1)
      {
        v13 = -v6;
      }

      else
      {
        v13 = 1;
      }

      while (v8 != a2)
      {
        v14 = *v8;
        v15 = v8;
        if (*v8)
        {
          do
          {
            v8 = v14;
            v14 = v14[1];
          }

          while (v14);
        }

        else
        {
          do
          {
            v8 = v15[2];
            v11 = *v8 == v15;
            v15 = v8;
          }

          while (v11);
        }

        if (++v7 == v13)
        {
          v7 = v13;
          goto LABEL_27;
        }
      }
    }

    v8 = a2;
LABEL_32:
    v16 = v7 - v12 + v6;
    if (v16)
    {
      if (v16 == 1)
      {
        return v8;
      }

      else
      {
        do
        {
          v17 = v16 >> 1;
          v18 = v4;
          if (v16 >= 2)
          {
            v19 = v16 >> 1;
            v20 = v4;
            do
            {
              v21 = v20[1];
              if (v21)
              {
                do
                {
                  v18 = v21;
                  v21 = *v21;
                }

                while (v21);
              }

              else
              {
                do
                {
                  v18 = v20[2];
                  v11 = *v18 == v20;
                  v20 = v18;
                }

                while (!v11);
              }

              v20 = v18;
            }

            while (v19-- > 1);
          }

          if (sub_87164(v18 + 4, a3))
          {
            v23 = v18[1];
            if (v23)
            {
              do
              {
                v4 = v23;
                v23 = *v23;
              }

              while (v23);
            }

            else
            {
              do
              {
                v4 = v18[2];
                v11 = *v4 == v18;
                v18 = v4;
              }

              while (!v11);
            }

            v17 = v16 + ~v17;
          }

          v16 = v17;
        }

        while (v17);
      }
    }
  }

  return v4;
}

void *sub_272EC8(void *result, uint64_t a2)
{
  *result = result;
  result[1] = result;
  result[2] = 0;
  if (*(a2 + 8) != a2)
  {
    sub_248EF0();
  }

  return result;
}

void *sub_272F50(void *result, void *a2)
{
  result[1] = 0;
  result[2] = 0;
  *result = result + 1;
  v2 = *a2;
  if (*a2 != a2 + 1)
  {
    do
    {
      v3 = result[1];
      v4 = result + 1;
      if (*result == result + 1)
      {
        goto LABEL_8;
      }

      v5 = result[1];
      v6 = result + 1;
      if (v3)
      {
        do
        {
          v4 = v5;
          v5 = v5[1];
        }

        while (v5);
      }

      else
      {
        do
        {
          v4 = v6[2];
          v7 = *v4 == v6;
          v6 = v4;
        }

        while (v7);
      }

      v8 = *(v2 + 8);
      if (*(v4 + 8) < v8)
      {
LABEL_8:
        if (v3)
        {
          v9 = v4 + 1;
        }

        else
        {
          v9 = result + 1;
        }
      }

      else
      {
        v9 = result + 1;
        if (v3)
        {
          v9 = result + 1;
          while (1)
          {
            while (1)
            {
              v12 = v3;
              v13 = *(v3 + 32);
              if (v8 >= v13)
              {
                break;
              }

              v3 = *v12;
              v9 = v12;
              if (!*v12)
              {
                goto LABEL_12;
              }
            }

            if (v13 >= v8)
            {
              break;
            }

            v9 = v12 + 1;
            v3 = v12[1];
            if (!v3)
            {
              goto LABEL_12;
            }
          }
        }
      }

      if (!*v9)
      {
LABEL_12:
        operator new();
      }

      v10 = v2[1];
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
          v11 = v2[2];
          v7 = *v11 == v2;
          v2 = v11;
        }

        while (!v7);
      }

      v2 = v11;
    }

    while (v11 != a2 + 1);
  }

  return result;
}

void sub_2731D4(_Unwind_Exception *a1)
{
  sub_2735BC(0, v1);
  sub_249314(*v2);
  _Unwind_Resume(a1);
}

void *sub_273274(void *a1, void *a2)
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
      sub_273320(a1, v3, *(v5 + 8));
      v6 = v5[1];
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
          v7 = v5[2];
          v8 = *v7 == v5;
          v5 = v7;
        }

        while (!v8);
      }

      v5 = v7;
    }

    while (v7 != v4);
  }

  return a1;
}

void *sub_273320(void *result, uint64_t *a2, unsigned int a3)
{
  v3 = result + 1;
  if (result + 1 == a2 || (v4 = *(a2 + 8), v4 > a3))
  {
    v5 = *a2;
    if (*result == a2)
    {
      v7 = a2;
LABEL_16:
      if (v5)
      {
        v8 = v7 + 1;
      }

      else
      {
        v8 = a2;
      }

      goto LABEL_19;
    }

    if (v5)
    {
      v6 = *a2;
      do
      {
        v7 = v6;
        v6 = v6[1];
      }

      while (v6);
    }

    else
    {
      v11 = a2;
      do
      {
        v7 = v11[2];
        v12 = *v7 == v11;
        v11 = v7;
      }

      while (v12);
    }

    if (*(v7 + 8) < a3)
    {
      goto LABEL_16;
    }

    v13 = *v3;
    if (!*v3)
    {
      goto LABEL_38;
    }

    while (1)
    {
      while (1)
      {
        v14 = v13;
        v15 = *(v13 + 32);
        if (v15 <= a3)
        {
          break;
        }

        v13 = *v14;
        v3 = v14;
        if (!*v14)
        {
          goto LABEL_38;
        }
      }

      if (v15 >= a3)
      {
        break;
      }

      v3 = v14 + 1;
      v13 = v14[1];
      if (!v13)
      {
        goto LABEL_38;
      }
    }

LABEL_40:
    v8 = v3;
    goto LABEL_19;
  }

  if (v4 >= a3)
  {
    return result;
  }

  v8 = a2 + 1;
  v9 = a2[1];
  if (v9)
  {
    do
    {
      v8 = v9;
      v9 = *v9;
      v10 = v8;
    }

    while (v9);
  }

  else
  {
    v10 = a2;
    do
    {
      v16 = v10;
      v10 = v10[2];
    }

    while (*v10 != v16);
  }

  if (v10 != v3 && *(v10 + 8) <= a3)
  {
    v17 = *v3;
    if (!*v3)
    {
      goto LABEL_38;
    }

    while (1)
    {
      while (1)
      {
        v18 = v17;
        v19 = *(v17 + 32);
        if (v19 <= a3)
        {
          break;
        }

        v17 = *v18;
        v3 = v18;
        if (!*v18)
        {
          goto LABEL_38;
        }
      }

      if (v19 >= a3)
      {
        goto LABEL_40;
      }

      v3 = v18 + 1;
      v17 = v18[1];
      if (!v17)
      {
        goto LABEL_38;
      }
    }
  }

LABEL_19:
  if (!*v8)
  {
LABEL_38:
    sub_2734DC();
  }

  return result;
}

void sub_27354C(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_273568(0, v2);
  _Unwind_Resume(a1);
}

void sub_273568(char a1, void **a2)
{
  if (a1)
  {
    sub_477A0(a2[6]);
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

void sub_2735BC(char a1, uint64_t a2)
{
  if (a1)
  {
    if (*(a2 + 192) == 1)
    {
      sub_2492C0(*(a2 + 176));
    }

    sub_477A0(*(a2 + 152));
    if (*(a2 + 136) == 1)
    {
      sub_477A0(*(a2 + 120));
    }

    sub_477A0(*(a2 + 88));
    if (*(a2 + 64) == 1)
    {
      v3 = *(a2 + 40);
      if (v3)
      {
        *(a2 + 48) = v3;
        operator delete(v3);
      }
    }
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

void *sub_27365C(void *result, uint64_t *a2, int a3)
{
  v3 = result + 1;
  if (result + 1 == a2 || (v4 = *(a2 + 8), v4 > a3))
  {
    v5 = *a2;
    if (*result == a2)
    {
      v7 = a2;
LABEL_16:
      if (v5)
      {
        v8 = v7 + 1;
      }

      else
      {
        v8 = a2;
      }

      goto LABEL_19;
    }

    if (v5)
    {
      v6 = *a2;
      do
      {
        v7 = v6;
        v6 = v6[1];
      }

      while (v6);
    }

    else
    {
      v11 = a2;
      do
      {
        v7 = v11[2];
        v12 = *v7 == v11;
        v11 = v7;
      }

      while (v12);
    }

    if (*(v7 + 8) < a3)
    {
      goto LABEL_16;
    }

    v13 = *v3;
    if (*v3)
    {
      while (1)
      {
        while (1)
        {
          v14 = v13;
          v15 = *(v13 + 32);
          if (v15 <= a3)
          {
            break;
          }

          v13 = *v14;
          v3 = v14;
          if (!*v14)
          {
            goto LABEL_38;
          }
        }

        if (v15 >= a3)
        {
          break;
        }

        v3 = v14 + 1;
        v13 = v14[1];
        if (!v13)
        {
          goto LABEL_38;
        }
      }

LABEL_39:
      v8 = v3;
      goto LABEL_19;
    }

    goto LABEL_38;
  }

  if (v4 >= a3)
  {
    return result;
  }

  v8 = a2 + 1;
  v9 = a2[1];
  if (v9)
  {
    do
    {
      v8 = v9;
      v9 = *v9;
      v10 = v8;
    }

    while (v9);
  }

  else
  {
    v10 = a2;
    do
    {
      v16 = v10;
      v10 = v10[2];
    }

    while (*v10 != v16);
  }

  if (v10 != v3 && *(v10 + 8) <= a3)
  {
    for (i = *v3; i; i = v18[1])
    {
      while (1)
      {
        v18 = i;
        v19 = *(i + 32);
        if (v19 <= a3)
        {
          break;
        }

        i = *v18;
        v3 = v18;
        if (!*v18)
        {
          goto LABEL_38;
        }
      }

      if (v19 >= a3)
      {
        goto LABEL_39;
      }

      v3 = v18 + 1;
    }

LABEL_38:
    operator new();
  }

LABEL_19:
  if (!*v8)
  {
    goto LABEL_38;
  }

  return result;
}

uint64_t sub_27386C(uint64_t result, unsigned int *a2, uint64_t a3)
{
  *result = 0u;
  *(result + 16) = 0u;
  *(result + 32) = 1065353216;
  if (a3)
  {
    for (i = a2; i != &a2[10 * a3]; i += 10)
    {
      v4 = *i;
      v5 = *(result + 8);
      if (!*&v5)
      {
        goto LABEL_19;
      }

      v6 = vcnt_s8(v5);
      v6.i16[0] = vaddlv_u8(v6);
      if (v6.u32[0] > 1uLL)
      {
        v7 = *i;
        if (*&v5 <= v4)
        {
          v7 = v4 % v5.i32[0];
        }
      }

      else
      {
        v7 = (v5.i32[0] - 1) & v4;
      }

      v8 = *(*result + 8 * v7);
      if (!v8 || (v9 = *v8) == 0)
      {
LABEL_19:
        operator new();
      }

      while (1)
      {
        v10 = v9[1];
        if (v10 == v4)
        {
          break;
        }

        if (v6.u32[0] > 1uLL)
        {
          if (v10 >= *&v5)
          {
            v10 %= *&v5;
          }
        }

        else
        {
          v10 &= *&v5 - 1;
        }

        if (v10 != v7)
        {
          goto LABEL_19;
        }

LABEL_18:
        v9 = *v9;
        if (!v9)
        {
          goto LABEL_19;
        }
      }

      if (*(v9 + 4) != v4)
      {
        goto LABEL_18;
      }
    }
  }

  return result;
}

void sub_273D28(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27E410(va);
  sub_27E3B0(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_273D54(uint64_t a1)
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

uint64_t sub_273DD4(uint64_t result, unsigned int *a2, uint64_t a3)
{
  *result = 0u;
  *(result + 16) = 0u;
  *(result + 32) = 1065353216;
  if (a3)
  {
    for (i = a2; i != &a2[10 * a3]; i += 10)
    {
      v4 = *i;
      v5 = *(result + 8);
      if (!*&v5)
      {
        goto LABEL_19;
      }

      v6 = vcnt_s8(v5);
      v6.i16[0] = vaddlv_u8(v6);
      if (v6.u32[0] > 1uLL)
      {
        v7 = *i;
        if (*&v5 <= v4)
        {
          v7 = v4 % v5.i32[0];
        }
      }

      else
      {
        v7 = (v5.i32[0] - 1) & v4;
      }

      v8 = *(*result + 8 * v7);
      if (!v8 || (v9 = *v8) == 0)
      {
LABEL_19:
        operator new();
      }

      while (1)
      {
        v10 = v9[1];
        if (v10 == v4)
        {
          break;
        }

        if (v6.u32[0] > 1uLL)
        {
          if (v10 >= *&v5)
          {
            v10 %= *&v5;
          }
        }

        else
        {
          v10 &= *&v5 - 1;
        }

        if (v10 != v7)
        {
          goto LABEL_19;
        }

LABEL_18:
        v9 = *v9;
        if (!v9)
        {
          goto LABEL_19;
        }
      }

      if (*(v9 + 4) != v4)
      {
        goto LABEL_18;
      }
    }
  }

  return result;
}

void sub_274290(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_275EFC(va);
  sub_275E9C(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_2742BC(uint64_t a1)
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

void sub_274408(uint64_t a1)
{
  *a1 = &off_6D40E0;
  if (*(a1 + 112) == 1)
  {
    sub_477A0(*(a1 + 80));
  }

  operator delete();
}

void sub_274498(void (***a1)(void, uint64_t *), uint64_t *a2)
{
  v2 = a2[1];
  v3 = *a2;
  v4 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  (**a1)(a1, &v3);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }
}

void sub_274508(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_weak(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_274520(uint64_t a1)
{
  *a1 = &off_6D40E0;
  if (*(a1 + 112) == 1)
  {
    sub_477A0(*(a1 + 80));
  }

  return a1;
}

void sub_274574(double a1, double a2)
{
  v2 = a1;
  v3 = a2;
  operator new();
}

void sub_274600()
{
  if (v0)
  {
    std::__shared_weak_count::__release_weak(v0);
  }

  operator delete();
}

uint64_t sub_274624(uint64_t a1, _OWORD *a2, uint64_t a3, std::__shared_weak_count *a4)
{
  if (a4)
  {
    atomic_fetch_add_explicit(&a4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v7[0] = 0;
  v9 = 0;
  sub_2746D4(a1, a2, a3, a4, v7);
  if (v9 == 1)
  {
    sub_477A0(v8);
  }

  if (a4)
  {
    std::__shared_weak_count::__release_weak(a4);
  }

  *(a1 + 160) = 0x76657167766F6C75;
  return a1;
}

void sub_2746A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  if (a16 == 1)
  {
    sub_477A0(a12);
  }

  if (v16)
  {
    std::__shared_weak_count::__release_weak(v16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2746D4(uint64_t a1, _OWORD *a2, uint64_t a3, std::__shared_weak_count *a4, uint64_t a5)
{
  v9 = *(a5 + 48);
  if (a4)
  {
    atomic_fetch_add_explicit(&a4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  sub_149330(v24, a5);
  if (v9)
  {
    v10 = 1935895666;
  }

  else
  {
    v10 = 1684234860;
  }

  sub_149250(a1, v10, a3, a4, v24);
  if (v26 == 1)
  {
    sub_477A0(v25);
  }

  if (a4)
  {
    std::__shared_weak_count::__release_weak(a4);
  }

  *a1 = &off_6D5E50;
  *(a1 + 136) = *a2;
  *(a1 + 152) = sub_149458(a1);
  *(a1 + 156) = 0x700000001;
  *(a1 + 164) = 5;
  *(a1 + 184) = 0x100000001;
  *(a1 + 168) = *"";
  if (*(a1 + 144) < *(a1 + 136))
  {
    v14 = sub_5544(14);
    v15 = *v14;
    if (*v14)
    {
      if (os_log_type_enabled(*v14, OS_LOG_TYPE_ERROR))
      {
        v16 = *(a1 + 136);
        v17 = *(a1 + 144);
        *buf = 136315906;
        v28 = "VolumeControl.h";
        v29 = 1024;
        v30 = 1310;
        v31 = 2048;
        v32 = v16;
        v33 = 2048;
        v34 = v17;
        _os_log_impl(&dword_0, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: Encountered an invalid range for the variable EQ's current gain parameter: [%f, %f]", buf, 0x26u);
      }
    }
  }

  if (*(a1 + 88) == 1)
  {
    v11 = *(a1 + 64) ? *(*(a1 + 48) + 36) : 0.0;
    if (*(a1 + 136) != v11 || (v12 = sub_59224(a1 + 40), *(a1 + 144) != *&v12))
    {
      v18 = sub_5544(14);
      v19 = *v18;
      if (*v18)
      {
        if (os_log_type_enabled(*v18, OS_LOG_TYPE_ERROR))
        {
          if (*(a1 + 64))
          {
            v20 = *(*(a1 + 48) + 36);
          }

          else
          {
            v20 = 0.0;
          }

          v21 = sub_59224(a1 + 40);
          v22 = *(a1 + 136);
          v23 = *(a1 + 144);
          *buf = 136316418;
          v28 = "VolumeControl.h";
          v29 = 1024;
          v30 = 1315;
          v31 = 2048;
          v32 = v20;
          v33 = 2048;
          v34 = *&v21;
          v35 = 2048;
          v36 = v22;
          v37 = 2048;
          v38 = v23;
          _os_log_impl(&dword_0, v19, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: VolumeCurve's range [%f, %f] doesn't match volume range of command [%f, %f]", buf, 0x3Au);
        }
      }
    }
  }

  return a1;
}

void sub_274A0C()
{
  v0 = sub_5544(14);
  v1 = *v0;
  if (*v0)
  {
    if (os_log_type_enabled(*v0, OS_LOG_TYPE_ERROR))
    {
      v3 = 136315394;
      v4 = "VolumeControl.h";
      v5 = 1024;
      v6 = 426;
      _os_log_impl(&dword_0, v1, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): SoftwareVolumeCommand does not supports dB to Scalar convertion", &v3, 0x12u);
    }
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "SoftwareVolumeCommand does not supports dB to Scalar convertion");
}

void sub_274AF4()
{
  v0 = sub_5544(14);
  v1 = *v0;
  if (*v0)
  {
    if (os_log_type_enabled(*v0, OS_LOG_TYPE_ERROR))
    {
      v3 = 136315394;
      v4 = "VolumeControl.h";
      v5 = 1024;
      v6 = 420;
      _os_log_impl(&dword_0, v1, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): SoftwareVolumeCommand does not supports dB to Scalar convertion", &v3, 0x12u);
    }
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "SoftwareVolumeCommand does not supports dB to Scalar convertion");
}

uint64_t sub_274BF4(void *a1, float *a2)
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

void sub_274FC4(_Unwind_Exception *exception_object)
{
  if (v2 < 0)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_275004(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v5 = *(a1 + 8);
  v3 = (a1 + 8);
  v4 = v5;
  if (!v5)
  {
    return v3;
  }

  v6 = v3;
  do
  {
    v7 = *(v4 + 8);
    if (v7 < a2 || v7 == a2 && *(v4 + 9) < a3)
    {
      ++v4;
    }

    else
    {
      v6 = v4;
    }

    v4 = *v4;
  }

  while (v4);
  if (v6 == v3)
  {
    return v3;
  }

  v8 = *(v6 + 8);
  if (v8 > a2 || v8 == a2 && *(v6 + 9) > a3)
  {
    return v3;
  }

  return v6;
}

uint64_t sub_275074(uint64_t a1)
{
  *(a1 + 16) = v3;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  std::locale::~locale((a1 + 32));
  std::iostream::~basic_iostream();
  std::ios::~ios();
  return a1;
}

void sub_2751F0(unsigned int *a1, unsigned int a2, int a3, float a4, float a5)
{
  v50 = a3;
  if (a1[42])
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

      v13 = v48;
      sub_22170(v48, a1[42]);
      if (v49 < 0)
      {
        v13 = v48[0];
      }

      sub_22170(v46, a2);
      v14 = v47;
      v15 = v46[0];
      sub_E896C(__p, a1);
      v16 = v46;
      if (v14 < 0)
      {
        v16 = v15;
      }

      *buf = 136316930;
      *&buf[4] = "VolumeControl.h";
      if (v45 >= 0)
      {
        v17 = __p;
      }

      else
      {
        v17 = __p[0];
      }

      v52 = 1024;
      v53 = 1435;
      v54 = 2080;
      v55 = v12;
      v56 = 2080;
      *v57 = v13;
      *&v57[8] = 2080;
      v58 = v16;
      v59 = 2048;
      v60 = a4;
      v61 = 2048;
      v62 = a5;
      v63 = 2080;
      v64 = v17;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Set Duck command  %s, mParameterID: '%s', type: '%s', gain: %f, time: %f on chain '%s'.", buf, 0x4Eu);
      if (v45 < 0)
      {
        operator delete(__p[0]);
      }

      if (v47 < 0)
      {
        operator delete(v46[0]);
      }

      if (v49 < 0)
      {
        operator delete(v48[0]);
      }
    }

    if (a2 != 1)
    {
      v35 = sub_5544(14);
      v36 = *v35;
      if (*v35)
      {
        if (os_log_type_enabled(*v35, OS_LOG_TYPE_ERROR))
        {
          sub_22170(v48, a2);
          v37 = v49 >= 0 ? v48 : v48[0];
          *buf = 136315650;
          *&buf[4] = "VolumeControl.h";
          v52 = 1024;
          v53 = 1437;
          v54 = 2080;
          v55 = v37;
          _os_log_impl(&dword_0, v36, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: duck type: '%s' not supported!", buf, 0x1Cu);
          if (v49 < 0)
          {
            operator delete(v48[0]);
          }
        }
      }
    }

    *buf = a1[43];
    v46[0] = CFNumberCreate(0, kCFNumberIntType, buf);
    if (!v46[0])
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
    }

    *buf = a1[44];
    __p[0] = CFNumberCreate(0, kCFNumberIntType, buf);
    if (!__p[0])
    {
      v39 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v39, "Could not construct");
    }

    *buf = a1[45];
    cf = CFNumberCreate(0, kCFNumberIntType, buf);
    if (!cf)
    {
      v40 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v40, "Could not construct");
    }

    v18 = a5 * 1000.0;
    v19 = a1[46];
    if (a1[47] != 1)
    {
      v18 = a5;
    }

    v42 = v18;
    if (v19 == 1)
    {
      a4 = log10f(a4) * 20.0;
    }

    v41 = a4;
    sub_2759A8(buf, v46[0], &v50);
    sub_275A8C((&v53 + 2), __p[0], &v41);
    sub_275A8C(&v57[2], cf, &v42);
    v48[0] = buf;
    v48[1] = &dword_0 + 3;
    v20 = sub_69CE8(v48);
    for (i = 0; i != -6; i -= 2)
    {
      v22 = (&v58)[i];
      if (v22)
      {
        CFRelease(v22);
      }

      v23 = *&v57[i * 8 + 2];
      if (v23)
      {
        CFRelease(v23);
      }
    }

    *buf = v20;
    v24 = (*(*a1 + 320))(a1);
    sub_3DE5A4(a1, v24, a1[42]);
    CFRelease(v20);
    if (cf)
    {
      CFRelease(cf);
    }

    if (__p[0])
    {
      CFRelease(__p[0]);
    }

    if (v46[0])
    {
      CFRelease(v46[0]);
    }
  }

  if (sub_DD820())
  {
    v25 = (*(*a1 + 320))(a1);
    if (sub_3DEC5C(a1, v25))
    {
      v26 = sub_8703C();
      v27 = (*(*v26 + 296))(v26);
      v28 = v27;
      if (a3)
      {
        v29 = 1;
      }

      else
      {
        v29 = v27 == 0;
      }

      v30 = v29;
      LODWORD(v48[0]) = v30;
      v31 = sub_5544(39);
      v32 = *v31;
      if (*v31 && os_log_type_enabled(*v31, OS_LOG_TYPE_DEFAULT))
      {
        *&buf[4] = "VolumeControl.h";
        v53 = 1481;
        v33 = "enabled";
        v54 = 2080;
        *buf = 136316162;
        v52 = 1024;
        if (!a3)
        {
          v33 = "disabled";
        }

        v55 = v33;
        v56 = 1024;
        *v57 = v28;
        *&v57[4] = 1024;
        *&v57[6] = v30;
        _os_log_impl(&dword_0, v32, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Duck %s, enhance dialog level %u, Set AUSI bypass %u", buf, 0x28u);
      }

      v34 = (*(*a1 + 320))(a1);
      sub_3DE5A4(a1, v34, 0x73697073u);
    }
  }
}

void sub_275860(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, char a32)
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

void *sub_2759A8(void *a1, CFTypeRef cf, int *a3)
{
  if (cf)
  {
    CFRetain(cf);
  }

  *a1 = cf;
  valuePtr = *a3;
  v6 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  a1[1] = v6;
  if (!v6)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  return a1;
}

void sub_275A54(_Unwind_Exception *a1)
{
  sub_1D5FAC(v2);
  sub_1D5FE0(v1);
  _Unwind_Resume(a1);
}

void *sub_275A8C(void *a1, CFTypeRef cf, int *a3)
{
  if (cf)
  {
    CFRetain(cf);
  }

  *a1 = cf;
  valuePtr = *a3;
  v6 = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
  a1[1] = v6;
  if (!v6)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  return a1;
}

void sub_275B38(_Unwind_Exception *a1)
{
  sub_1D5FAC(v2);
  sub_1D5FE0(v1);
  _Unwind_Resume(a1);
}

void sub_275B90(uint64_t a1, unsigned int a2, int a3, float a4, float a5)
{
  v10 = sub_5544(39);
  v11 = *v10;
  if (*v10 && os_log_type_enabled(*v10, OS_LOG_TYPE_DEFAULT))
  {
    sub_22170(v19, a2);
    v12 = v20;
    v13 = v19[0];
    sub_E896C(__p, a1);
    v22 = "VolumeControl.h";
    v14 = v19;
    if (v12 < 0)
    {
      v14 = v13;
    }

    v23 = 1024;
    v24 = 317;
    v26 = v14;
    v15 = "disabled";
    *buf = 136316674;
    if (a3)
    {
      v15 = "enabled";
    }

    v25 = 2080;
    if (v18 >= 0)
    {
      v16 = __p;
    }

    else
    {
      v16 = __p[0];
    }

    v27 = 2080;
    v28 = v15;
    v29 = 2048;
    v30 = a4;
    v31 = 2048;
    v32 = a5;
    v33 = 2080;
    v34 = v16;
    _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Volume ducking is not supported for this volume command, %s type: %s, gain: %f, time: %f, chain: '%s'.", buf, 0x44u);
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

void sub_275D28(_Unwind_Exception *exception_object)
{
  if (v2 < 0)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_275DDC()
{
  if (v0)
  {
    std::__shared_weak_count::__release_weak(v0);
  }

  operator delete();
}

void sub_275E28(std::__shared_weak_count *a1)
{
  a1->__vftable = off_6D4068;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_275E9C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      sub_2742BC((v2 + 3));
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

uint64_t sub_275EFC(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_2742BC(v2 + 24);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t sub_275F48(uint64_t a1, uint64_t a2, void *a3)
{
  if ((atomic_load_explicit(&qword_6E8038, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6E8038))
  {
    sub_276000();
  }

  v4 = qword_6E8028;
  v5 = unk_6E8030;
  if (unk_6E8030)
  {
    atomic_fetch_add_explicit((unk_6E8030 + 8), 1uLL, memory_order_relaxed);
  }

  sub_2760A0(a3, v4, v5);
  if (v5)
  {
    sub_1A8C0(v5);
  }

  return 0;
}

void sub_2760A0(void *a1, uint64_t a2, uint64_t a3)
{
  *&v4 = a2;
  if (a3)
  {
    atomic_fetch_add_explicit((a3 + 8), 1uLL, memory_order_relaxed);
  }

  *(&v4 + 1) = a3;
  v6 = a1[22];
  v5 = a1[23];
  if (v6 >= v5)
  {
    v8 = a1[21];
    v9 = 0xAAAAAAAAAAAAAAABLL * ((v6 - v8) >> 3);
    v10 = v9 + 1;
    if (v9 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_189A00();
    }

    v11 = 0xAAAAAAAAAAAAAAABLL * ((v5 - v8) >> 3);
    if (2 * v11 > v10)
    {
      v10 = 2 * v11;
    }

    if (v11 >= 0x555555555555555)
    {
      v12 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      sub_2761D8(v12);
    }

    v13 = 24 * v9;
    *v13 = v4;
    *(v13 + 16) = 0;
    v7 = 24 * v9 + 24;
    v14 = a1[21];
    v15 = a1[22] - v14;
    v16 = v13 - v15;
    memcpy((v13 - v15), v14, v15);
    v17 = a1[21];
    a1[21] = v16;
    a1[22] = v7;
    a1[23] = 0;
    if (v17)
    {
      operator delete(v17);
    }
  }

  else
  {
    *v6 = v4;
    *(v6 + 16) = 0;
    v7 = v6 + 24;
  }

  a1[22] = v7;
}

void sub_2761C0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_1A8C0(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_2761D8(unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_6ACD8();
}

void sub_2763F4()
{
  sub_13EFE4(v0);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_276438(uint64_t a1, int a2, int a3, int a4, __int128 *a5, uint64_t a6, std::__shared_weak_count *a7)
{
  if (a7)
  {
    atomic_fetch_add_explicit(&a7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  sub_276B90(a1, a2, a6, a7);
  if (a7)
  {
    std::__shared_weak_count::__release_weak(a7);
  }

  *a1 = &off_6D4F68;
  *(a1 + 132) = a3;
  *(a1 + 136) = a4;
  v12 = *a5;
  *(a1 + 156) = *(a5 + 2);
  *(a1 + 140) = v12;
  return a1;
}

void sub_2764D8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_276518(unsigned int *a1, unsigned int a2, int a3, float a4, float a5)
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

void sub_276A08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, char a32)
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

void sub_276B54(uint64_t a1)
{
  sub_13EFE4(a1);

  operator delete();
}

void *sub_276B90(void *a1, int a2, uint64_t a3, std::__shared_weak_count *a4)
{
  if (a4)
  {
    atomic_fetch_add_explicit(&a4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1498D0(a1, a2, a3, a4);
  if (a4)
  {
    std::__shared_weak_count::__release_weak(a4);
  }

  *a1 = off_6D50C0;
  return a1;
}

void sub_276BFC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_276C14(unsigned int *a1)
{
  v4 = 0.0;
  v2 = (*(*a1 + 320))(a1);
  sub_3DAB9C(a1, v2, a1[34], &v4);
  return v4 == 0.0;
}

void sub_276C8C(unsigned int *a1, int a2)
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

void sub_276EA0(unsigned int *a1, float a2)
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

void sub_277060(uint64_t a1)
{
  sub_13EFE4(a1);

  operator delete();
}

void sub_2770C4(std::__shared_weak_count *a1)
{
  a1->__vftable = off_6BC730;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_277138(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 152);
  if (v4)
  {
    CFRetain(*(a1 + 152));
  }

  v17 = v4;
  sub_53E8(&__p, "PortType");
  LODWORD(v15[0]) = 1886613611;
  v5 = sub_2902F4(&v17, &__p, v15);
  if (SHIBYTE(__p.data) < 0)
  {
    operator delete(__p.isa);
    if (!v4)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (v4)
  {
LABEL_7:
    CFRelease(v4);
  }

LABEL_8:
  if ((sub_28F080(v5) & 1) == 0)
  {
    v12 = sub_5544(14);
    v13 = *v12;
    if (*v12 && os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
    {
      LODWORD(__p.isa) = 136315394;
      *(&__p.isa + 4) = "DSPGraphConfig_Actions.cpp";
      WORD2(__p.info) = 1024;
      *(&__p.info + 6) = 595;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", &__p, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  if (v5 == 1886613611)
  {
    if ((atomic_load_explicit(&qword_6E8138, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6E8138))
    {
      sub_2774B8();
    }

    v6 = qword_6E8128;
    v7 = unk_6E8130;
    if (unk_6E8130)
    {
      atomic_fetch_add_explicit((unk_6E8130 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v8 = sub_5544(25);
    v9 = *v8;
    if (*v8 && os_log_type_enabled(*v8, OS_LOG_TYPE_INFO))
    {
      sub_22170(v15, v5);
      v10 = v16 >= 0 ? v15 : v15[0];
      LODWORD(__p.isa) = 136315650;
      *(&__p.isa + 4) = "DSPGraphConfig_Actions.cpp";
      WORD2(__p.info) = 1024;
      *(&__p.info + 6) = 611;
      WORD1(__p.data) = 2080;
      *(&__p.data + 4) = v10;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, "%25s:%-5d Default Volume taper command for port %s.", &__p, 0x1Cu);
      if (v16 < 0)
      {
        operator delete(v15[0]);
      }
    }

    if ((atomic_load_explicit(&qword_6E8150, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6E8150))
    {
      sub_2774B8();
    }

    v6 = qword_6E8140;
    v7 = *algn_6E8148;
    if (*algn_6E8148)
    {
      atomic_fetch_add_explicit((*algn_6E8148 + 8), 1uLL, memory_order_relaxed);
    }
  }

  sub_2760A0(a3, v6, v7);
  if (v7)
  {
    sub_1A8C0(v7);
  }

  return 0;
}

void sub_2775F8()
{
  if (v0)
  {
    std::__shared_weak_count::__release_weak(v0);
  }

  operator delete();
}

uint64_t sub_27761C(uint64_t a1, uint64_t a2, std::__shared_weak_count *a3, int a4, int a5)
{
  if (a3)
  {
    atomic_fetch_add_explicit(&a3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  sub_276B90(a1, 1935895666, a2, a3);
  if (a3)
  {
    std::__shared_weak_count::__release_weak(a3);
  }

  *a1 = off_6D4210;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 172) = 0;
  *(a1 + 176) = a4;
  *(a1 + 180) = a5;
  std::recursive_mutex::recursive_mutex((a1 + 184));
  *(a1 + 248) = 1987341684;
  v9 = sub_5544(42);
  v10 = *v9;
  if (*v9 && os_log_type_enabled(*v9, OS_LOG_TYPE_DEBUG))
  {
    sub_E896C(__p, a1);
    v11 = __p[0];
    v12 = " does not ";
    if (v16 >= 0)
    {
      v11 = __p;
    }

    if (*(a1 + 176))
    {
      v13 = " does not ";
    }

    else
    {
      v13 = " ";
    }

    if (!*(a1 + 180))
    {
      v12 = " ";
    }

    *buf = 136316162;
    v18 = "VolumeControl.h";
    v19 = 1024;
    v20 = 1589;
    v21 = 2080;
    v22 = v11;
    v23 = 2080;
    v24 = v13;
    v25 = 2080;
    v26 = v12;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEBUG, "%25s:%-5d SoftwareVolumeCommand_VolumeTaper_Graph::SoftwareVolumeCommand_VolumeTaper_Graph() - creating volume taper command for chain '%s'. Volume command%ssupports volume ramping. Volume command%ssupports unit convertion", buf, 0x30u);
    if (v16 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return a1;
}

void sub_2777D8(_Unwind_Exception *a1)
{
  std::recursive_mutex::~recursive_mutex((v1 + 184));
  sub_27781C(v1 + 136);
  sub_13EFE4(v1);
  _Unwind_Resume(a1);
}

void sub_277808()
{
  if (v0)
  {
    std::__shared_weak_count::__release_weak(v0);
  }

  JUMPOUT(0x277800);
}

uint64_t sub_27781C(uint64_t a1)
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

float sub_27789C(uint64_t a1, float a2)
{
  std::recursive_mutex::lock((a1 + 184));
  LODWORD(v20[1]) = 1;
  v21 = 8;
  v20[0] = a2;
  v4 = *(a1 + 32);
  if (!v4)
  {
    goto LABEL_6;
  }

  v5 = std::__shared_weak_count::lock(v4);
  if (!v5)
  {
    goto LABEL_6;
  }

  v6 = v5;
  v7 = *(a1 + 24);
  if (v7)
  {
    v8 = (*(*a1 + 320))(a1);
    (*(*v7 + 128))(v7, v8, 1987342435, v20, 8, 0, 0, 1);
    v9 = (*(*a1 + 320))(a1);
    (*(*v7 + 120))(v7, v9, 1987342435, v19, &v21, 0, 0, 1);
  }

  sub_1A8C0(v6);
  if (LODWORD(v19[1]) != 1)
  {
    v17 = sub_5544(42);
    v18 = *v17;
    if (*v17 && os_log_type_enabled(*v17, OS_LOG_TYPE_INFO))
    {
      *buf = 136315906;
      v23 = "VolumeControl.h";
      v24 = 1024;
      v25 = 1792;
      v26 = 2048;
      v27 = v20[0];
      v28 = 2048;
      v29 = v19[0];
      v12 = "%25s:%-5d SoftwareVolumeCommand_VolumeTaper_Graph::convertScalarTodB() Successfully converted %f scalar to %f dB";
      v13 = v18;
      v14 = OS_LOG_TYPE_INFO;
      goto LABEL_9;
    }
  }

  else
  {
LABEL_6:
    v10 = sub_5544(42);
    v11 = *v10;
    if (*v10 && os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v23 = "VolumeControl.h";
      v24 = 1024;
      v25 = 1786;
      v26 = 2048;
      v27 = a2;
      v28 = 2048;
      v29 = v19[0];
      v12 = "%25s:%-5d SoftwareVolumeCommand_VolumeTaper_Graph::convertScalarTodB() Failed to convert %f Scalar to dB. Output value: %f Scalar";
      v13 = v11;
      v14 = OS_LOG_TYPE_ERROR;
LABEL_9:
      _os_log_impl(&dword_0, v13, v14, v12, buf, 0x26u);
    }
  }

  v15 = v19[0];
  std::recursive_mutex::unlock((a1 + 184));
  return v15;
}

float sub_277B8C(uint64_t a1, float a2)
{
  std::recursive_mutex::lock((a1 + 184));
  v20[1] = 0.0;
  v21 = 8;
  v20[0] = a2;
  v4 = *(a1 + 32);
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = std::__shared_weak_count::lock(v4);
  if (!v5)
  {
    goto LABEL_9;
  }

  v6 = v5;
  v7 = *(a1 + 24);
  if (v7)
  {
    v8 = (*(*a1 + 320))(a1);
    (*(*v7 + 128))(v7, v8, 1987342435, v20, 8, 0, 0, 1);
    v9 = (*(*a1 + 320))(a1);
    (*(*v7 + 120))(v7, v9, 1987342435, v19, &v21, 0, 0, 1);
  }

  sub_1A8C0(v6);
  if (LODWORD(v19[1]))
  {
    v10 = sub_5544(42);
    v11 = *v10;
    if (*v10 && os_log_type_enabled(*v10, OS_LOG_TYPE_INFO))
    {
      *buf = 136315906;
      v23 = "VolumeControl.h";
      v24 = 1024;
      v25 = 1759;
      v26 = 2048;
      v27 = v20[0];
      v28 = 2048;
      v29 = v19[0];
      v12 = "%25s:%-5d SoftwareVolumeCommand_VolumeTaper_Graph::convertdBToScalar() Successfully converted %f dB to %f scalar.";
      v13 = v11;
      v14 = OS_LOG_TYPE_INFO;
LABEL_12:
      _os_log_impl(&dword_0, v13, v14, v12, buf, 0x26u);
    }
  }

  else
  {
LABEL_9:
    v15 = sub_5544(42);
    v16 = *v15;
    if (*v15 && os_log_type_enabled(*v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v23 = "VolumeControl.h";
      v24 = 1024;
      v25 = 1753;
      v26 = 2048;
      v27 = a2;
      v28 = 2048;
      v29 = v19[0];
      v12 = "%25s:%-5d SoftwareVolumeCommand_VolumeTaper_Graph::convertdBToScalar() Failed to convert %f dB to scalar. Output value: %f dB";
      v13 = v16;
      v14 = OS_LOG_TYPE_ERROR;
      goto LABEL_12;
    }
  }

  v17 = v19[0];
  std::recursive_mutex::unlock((a1 + 184));
  return v17;
}

BOOL sub_277E74(_DWORD *a1)
{
  if (a1[45])
  {
    return 0;
  }

  v4 = (*(*a1 + 320))(a1);

  return sub_3DEC5C(a1, v4);
}

uint64_t sub_277F00(uint64_t a1, int a2, float a3)
{
  v6 = sub_5544(42);
  v7 = *v6;
  if (*v6 && os_log_type_enabled(*v6, OS_LOG_TYPE_DEBUG))
  {
    v8 = "not ramping";
    v9 = *(a1 + 160);
    v12 = 136316162;
    v13 = "VolumeControl.h";
    if (a2)
    {
      v8 = "ramping";
    }

    v14 = 1024;
    v15 = 1678;
    v17 = v8;
    v16 = 2080;
    v18 = 2048;
    v19 = a3;
    if (v9)
    {
      v10 = "active";
    }

    else
    {
      v10 = "nullptr";
    }

    v20 = 2080;
    v21 = v10;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d SoftwareVolumeCommand_VolumeTaper_Graph::VolumeRampUpdated() - ramp state %s slider position %.2f callback is %s.", &v12, 0x30u);
  }

  result = *(a1 + 160);
  if (result)
  {
    result = sub_278050(result, a2, a3);
  }

  *(a1 + 168) = a3;
  *(a1 + 172) = 1;
  return result;
}

uint64_t sub_278050(uint64_t a1, char a2, float a3)
{
  v5 = a2;
  v4 = a3;
  if (!a1)
  {
    sub_46A74();
  }

  return (*(*a1 + 48))(a1, &v5, &v4);
}

uint64_t sub_2780A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_5544(42);
  v5 = *v4;
  if (*v4 && os_log_type_enabled(*v4, OS_LOG_TYPE_DEBUG))
  {
    v6 = "active";
    v7 = *(a2 + 24);
    v14 = "VolumeControl.h";
    v13 = 136315650;
    if (!v7)
    {
      v6 = "nullptr";
    }

    v15 = 1024;
    v16 = 1669;
    v17 = 2080;
    *v18 = v6;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEBUG, "%25s:%-5d SoftwareVolumeCommand_VolumeTaper_Graph::SetVolumeRampListener() - callback is %s.", &v13, 0x1Cu);
  }

  v8 = *(a2 + 24);
  if (v8)
  {
    if (v8 == a2)
    {
      *&v18[4] = &v13;
      (*(*v8 + 24))(v8, &v13);
    }

    else
    {
      *&v18[4] = (*(*v8 + 16))(v8);
    }
  }

  else
  {
    *&v18[4] = 0;
  }

  v9 = a1 + 136;
  if ((a1 + 136) != &v13)
  {
    v10 = *&v18[4];
    v11 = *(a1 + 160);
    if (*&v18[4] == &v13)
    {
      if (v11 == v9)
      {
        (*(**&v18[4] + 24))(*&v18[4], v19);
        (*(**&v18[4] + 32))(*&v18[4]);
        *&v18[4] = 0;
        (*(**(a1 + 160) + 24))(*(a1 + 160), &v13);
        (*(**(a1 + 160) + 32))(*(a1 + 160));
        *(a1 + 160) = 0;
        *&v18[4] = &v13;
        (*(v19[0] + 24))(v19, a1 + 136);
        (*(v19[0] + 32))(v19);
      }

      else
      {
        (*(**&v18[4] + 24))(*&v18[4], a1 + 136);
        (*(**&v18[4] + 32))(*&v18[4]);
        *&v18[4] = *(a1 + 160);
      }

      *(a1 + 160) = v9;
    }

    else if (v11 == v9)
    {
      (*(*v11 + 24))(*(a1 + 160), &v13);
      (*(**(a1 + 160) + 32))(*(a1 + 160));
      *(a1 + 160) = *&v18[4];
      *&v18[4] = &v13;
    }

    else
    {
      *&v18[4] = *(a1 + 160);
      *(a1 + 160) = v10;
    }
  }

  return sub_27781C(&v13);
}

void sub_278430(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130(a1);
  }

  _Unwind_Resume(a1);
}

void sub_27843C(uint64_t a1)
{
  v2 = sub_5544(42);
  v3 = *v2;
  if (*v2 && os_log_type_enabled(*v2, OS_LOG_TYPE_DEBUG))
  {
    v5 = 136315394;
    v6 = "VolumeControl.h";
    v7 = 1024;
    v8 = 1660;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEBUG, "%25s:%-5d SoftwareVolumeCommand_VolumeTaper_Graph::CancelVolumeRamp().", &v5, 0x12u);
  }

  v4 = (*(*a1 + 320))(a1);
  sub_E8A40(a1, v4, 1987342957, 0.0);
}

void sub_278544(uint64_t a1, uint64_t a2)
{
  v4 = sub_5544(42);
  v5 = *v4;
  if (*v4 && os_log_type_enabled(*v4, OS_LOG_TYPE_DEBUG))
  {
    v6 = *a2;
    v7 = *(a2 + 4);
    v8 = *(a2 + 8);
    sub_48540(v19, *(a2 + 16));
    v9 = v7;
    v10 = v20;
    if ((v20 & 0x80u) != 0)
    {
      v10 = v19[1];
    }

    if (v10)
    {
      sub_48540(__p, *(a2 + 16));
      if (v18 >= 0)
      {
        v11 = __p;
      }

      else
      {
        v11 = __p[0];
      }

      *buf = 136316418;
      v22 = "VolumeControl.h";
      v23 = 1024;
      v24 = 1646;
      v25 = 2048;
      v26 = v6;
      v27 = 2048;
      v28 = v9;
      v29 = 2048;
      v30 = v8;
      v31 = 2080;
      v32 = v11;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEBUG, "%25s:%-5d SoftwareVolumeCommand_VolumeTaper_Graph::StartVolumeRamp() - target: %.2f upward rate: %.2fms downward rate: %.2fms category: '%s'.", buf, 0x3Au);
      if (v18 < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      *buf = 136316418;
      v22 = "VolumeControl.h";
      v23 = 1024;
      v24 = 1646;
      v25 = 2048;
      v26 = v6;
      v27 = 2048;
      v28 = v9;
      v29 = 2048;
      v30 = v8;
      v31 = 2080;
      v32 = "unknown";
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEBUG, "%25s:%-5d SoftwareVolumeCommand_VolumeTaper_Graph::StartVolumeRamp() - target: %.2f upward rate: %.2fms downward rate: %.2fms category: '%s'.", buf, 0x3Au);
    }

    if (v20 < 0)
    {
      operator delete(v19[0]);
    }
  }

  v12 = (*(*a1 + 320))(a1);
  sub_E8A40(a1, v12, 1987342957, 1.0);
  v13 = (*(*a1 + 320))(a1);
  sub_E8A40(a1, v13, 1987342965, 1.0);
  v14 = (*(*a1 + 320))(a1);
  sub_E8A40(a1, v14, 1987343221, *(a2 + 4));
  v15 = (*(*a1 + 320))(a1);
  sub_E8A40(a1, v15, 1987343204, *(a2 + 8));
  v16 = (*(*a1 + 320))(a1);
  sub_E8A40(a1, v16, 1987343987, *a2);
}

void sub_278888(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2788BC(uint64_t a1, int a2)
{
  *(a1 + 96) = a2;
  v4 = sub_5544(42);
  v5 = *v4;
  if (*v4 && os_log_type_enabled(*v4, OS_LOG_TYPE_DEBUG))
  {
    v6 = "disabled";
    v26 = "VolumeControl.h";
    *buf = 136315650;
    if (a2)
    {
      v6 = "enabled";
    }

    v27 = 1024;
    v28 = 1695;
    v29 = 2080;
    v30 = v6;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEBUG, "%25s:%-5d SoftwareVolumeCommand_VolumeTaper_Graph::EnableWritableSoftwareVolumeProcessors() - %s.", buf, 0x1Cu);
  }

  if (a2 && *(a1 + 172) == 1)
  {
    (*(*a1 + 16))(a1, *(a1 + 168));
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    v8 = std::__shared_weak_count::lock(v7);
    if (v8)
    {
      v9 = v8;
      v10 = *(a1 + 24);
      if (v10)
      {
        v24 = a2 ^ 1;
        v11 = (*(*v10 + 128))(v10, 1685287015, 1652127348, &v24, 4, 0, 0, 0);
        v12 = sub_5544(39);
        v13 = *v12;
        if (*v12 && os_log_type_enabled(*v12, OS_LOG_TYPE_DEFAULT))
        {
          sub_22170(__p, 0x62797674u);
          v14 = v23 >= 0 ? __p : __p[0];
          *buf = 136316162;
          v26 = "VolumeControl.h";
          v27 = 1024;
          v28 = 1708;
          v29 = 2080;
          v30 = v14;
          v31 = 1024;
          v32 = v24;
          v33 = 1024;
          v34 = v11;
          _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Setting bypass of %s to %u: %u", buf, 0x28u);
          if (v23 < 0)
          {
            operator delete(__p[0]);
          }
        }

        v15 = v10[102];
        if (v15)
        {
          v16 = v10[101];
          atomic_fetch_add_explicit(&v15->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          v17 = std::__shared_weak_count::lock(v15);
          std::__shared_weak_count::__release_weak(v15);
          if (v17)
          {
            if (v16)
            {
              if (sub_34CF94(v16))
              {
                v18 = (*(*v10 + 128))(v10, 1685287015, 1652122470, &v24, 4, 0, 0, 0);
                v19 = sub_5544(39);
                v20 = *v19;
                if (*v19)
                {
                  if (os_log_type_enabled(*v19, OS_LOG_TYPE_DEFAULT))
                  {
                    sub_22170(__p, 0x62796366u);
                    if (v23 >= 0)
                    {
                      v21 = __p;
                    }

                    else
                    {
                      v21 = __p[0];
                    }

                    *buf = 136316162;
                    v26 = "VolumeControl.h";
                    v27 = 1024;
                    v28 = 1720;
                    v29 = 2080;
                    v30 = v21;
                    v31 = 1024;
                    v32 = v24;
                    v33 = 1024;
                    v34 = v18;
                    _os_log_impl(&dword_0, v20, OS_LOG_TYPE_DEFAULT, "%25s:%-5d setting bypass of %s to %u: %u", buf, 0x28u);
                    if (v23 < 0)
                    {
                      operator delete(__p[0]);
                    }
                  }
                }
              }
            }

            sub_1A8C0(v17);
          }
        }
      }

      sub_1A8C0(v9);
    }
  }
}

void sub_278C88(_Unwind_Exception *a1)
{
  sub_1A8C0(v2);
  sub_1A8C0(v1);
  _Unwind_Resume(a1);
}

BOOL sub_278CC4(unsigned int *a1)
{
  v9 = 0.0;
  if (a1[62])
  {
    v2 = (*(*a1 + 320))(a1);
    v3 = a1[62];
    if (sub_3DE398(a1, v2))
    {
      v4 = (*(*a1 + 320))(a1);
      sub_3DAB9C(a1, v4, a1[62], &v9);
      v5 = sub_5544(42);
      v6 = *v5;
      if (*v5)
      {
        if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315650;
          v7 = "unmute";
          v11 = "VolumeControl.h";
          if (v9 > 0.0)
          {
            v7 = "mute";
          }

          v12 = 1024;
          v13 = 1635;
          v14 = 2080;
          v15 = v7;
          _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEBUG, "%25s:%-5d SoftwareVolumeCommand_VolumeTaper_Graph::GetMute() - %s.", buf, 0x1Cu);
        }
      }
    }
  }

  return v9 <= 0.0;
}

void sub_278E48(unsigned int *a1, int a2)
{
  if (a1[62])
  {
    v4 = (*(*a1 + 320))(a1);
    v5 = a1[62];
    if (sub_3DE398(a1, v4))
    {
      v6 = sub_5544(42);
      v7 = *v6;
      if (*v6 && os_log_type_enabled(*v6, OS_LOG_TYPE_DEBUG))
      {
        v8 = "unmute";
        v12 = "VolumeControl.h";
        v11 = 136315650;
        if (!a2)
        {
          v8 = "mute";
        }

        v13 = 1024;
        v14 = 1623;
        v15 = 2080;
        v16 = v8;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d SoftwareVolumeCommand_VolumeTaper_Graph::SetMute() - %s.", &v11, 0x1Cu);
      }

      v9 = (*(*a1 + 320))(a1);
      v10 = 0.0;
      if (!a2)
      {
        v10 = 1.0;
      }

      sub_E8A40(a1, v9, a1[62], v10);
    }
  }
}

void sub_278FD0(uint64_t a1, float a2)
{
  v4 = sub_5544(42);
  v5 = *v4;
  if (*v4 && os_log_type_enabled(*v4, OS_LOG_TYPE_DEBUG))
  {
    v9 = 136315650;
    v10 = "VolumeControl.h";
    v11 = 1024;
    v12 = 1602;
    v13 = 2048;
    v14 = a2;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEBUG, "%25s:%-5d SoftwareVolumeCommand_VolumeTaper_Graph::SetVolume() - setting volume to %.2f.", &v9, 0x1Cu);
  }

  if (!*(a1 + 176))
  {
    (*(*a1 + 256))(a1);
    v6 = (*(*a1 + 320))(a1);
    sub_E8A40(a1, v6, 1987343221, 0.0);
    v7 = (*(*a1 + 320))(a1);
    sub_E8A40(a1, v7, 1987343204, 0.0);
  }

  v8 = (*(*a1 + 320))(a1);
  sub_E8A40(a1, v8, 1987343987, a2);
  *(a1 + 168) = a2;
  *(a1 + 172) = 1;
}

void sub_2791E8(uint64_t a1)
{
  *a1 = off_6D4210;
  v2 = a1 + 136;
  std::recursive_mutex::~recursive_mutex((a1 + 184));
  sub_27781C(v2);
  sub_13EFE4(a1);

  operator delete();
}

uint64_t sub_279260(uint64_t a1)
{
  *a1 = off_6D4210;
  v2 = a1 + 136;
  std::recursive_mutex::~recursive_mutex((a1 + 184));
  sub_27781C(v2);

  return sub_13EFE4(a1);
}

void sub_2792EC(std::__shared_weak_count *a1)
{
  a1->__vftable = off_6BC6B8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_279360(char **a1, uint64_t a2, void *a3)
{
  if ((atomic_load_explicit(&qword_6E8098, memory_order_acquire) & 1) == 0)
  {
    v13 = a1;
    v14 = __cxa_guard_acquire(&qword_6E8098);
    a1 = v13;
    if (v14)
    {
      sub_2795A4();
    }
  }

  if ((atomic_load_explicit(qword_6E80B0, memory_order_acquire) & 1) == 0)
  {
    v15 = a1;
    v16 = __cxa_guard_acquire(qword_6E80B0);
    a1 = v15;
    if (v16)
    {
      sub_2795A4();
    }
  }

  v4 = *(a1 + 23);
  if (v4 >= 0)
  {
    v5 = a1;
  }

  else
  {
    v5 = *a1;
  }

  if (v4 < 0)
  {
    v4 = a1[1];
  }

  if (v4 >= 11)
  {
    v6 = &v5[v4];
    v7 = v5;
    do
    {
      v8 = memchr(v7, 118, v4 - 10);
      if (!v8)
      {
        break;
      }

      if (*v8 == 0x696C656D756C6F76 && *(v8 + 3) == 0x74696D696C656D75)
      {
        if (v8 == v6 || v8 - v5 == -1)
        {
          break;
        }

        v10 = qword_6E8088;
        v11 = unk_6E8090;
        if (unk_6E8090)
        {
          atomic_fetch_add_explicit((unk_6E8090 + 8), 1uLL, memory_order_relaxed);
        }

        goto LABEL_24;
      }

      v7 = v8 + 1;
      v4 = v6 - v7;
    }

    while (v6 - v7 >= 11);
  }

  v10 = qword_6E80A0;
  v11 = *algn_6E80A8;
  if (*algn_6E80A8)
  {
    atomic_fetch_add_explicit((*algn_6E80A8 + 8), 1uLL, memory_order_relaxed);
  }

LABEL_24:
  sub_2760A0(a3, v10, v11);
  if (v11)
  {
    sub_1A8C0(v11);
  }

  return 0;
}

void sub_27968C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_6D4538;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_279700(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  if ((atomic_load_explicit(&qword_6E8080, memory_order_acquire) & 1) == 0)
  {
    v8 = __cxa_guard_acquire(&qword_6E8080);
    v3 = a3;
    if (v8)
    {
      sub_2797E4();
    }
  }

  v4 = qword_6E8070;
  v5 = *algn_6E8078;
  if (*algn_6E8078)
  {
    atomic_fetch_add_explicit((*algn_6E8078 + 8), 1uLL, memory_order_relaxed);
  }

  sub_279870(v3, v4, v5, 0);
  if (v5)
  {
    sub_1A8C0(v5);
  }

  return 0;
}

void sub_279870(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  *&v5 = a2;
  if (a3)
  {
    atomic_fetch_add_explicit((a3 + 8), 1uLL, memory_order_relaxed);
  }

  *(&v5 + 1) = a3;
  v7 = a1[25];
  v6 = a1[26];
  if (v7 >= v6)
  {
    v9 = a1[24];
    v10 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v9) >> 3);
    v11 = v10 + 1;
    if (v10 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_189A00();
    }

    v12 = 0xAAAAAAAAAAAAAAABLL * ((v6 - v9) >> 3);
    if (2 * v12 > v11)
    {
      v11 = 2 * v12;
    }

    if (v12 >= 0x555555555555555)
    {
      v13 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v13 = v11;
    }

    if (v13)
    {
      sub_2761D8(v13);
    }

    v14 = 24 * v10;
    *v14 = v5;
    *(v14 + 16) = a4;
    v8 = 24 * v10 + 24;
    v15 = a1[24];
    v16 = a1[25] - v15;
    v17 = (24 * v10 - v16);
    memcpy(v17, v15, v16);
    v18 = a1[24];
    a1[24] = v17;
    a1[25] = v8;
    a1[26] = 0;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    *v7 = v5;
    *(v7 + 16) = a4;
    v8 = v7 + 24;
  }

  a1[25] = v8;
}

void sub_279994(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_1A8C0(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_2799F8(std::__shared_weak_count *a1)
{
  a1->__vftable = off_6D4650;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_279A6C(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  if ((atomic_load_explicit(&qword_6E8068, memory_order_acquire) & 1) == 0)
  {
    v8 = __cxa_guard_acquire(&qword_6E8068);
    v3 = a3;
    if (v8)
    {
      sub_279B4C();
    }
  }

  v4 = qword_6E8058;
  v5 = unk_6E8060;
  if (unk_6E8060)
  {
    atomic_fetch_add_explicit((unk_6E8060 + 8), 1uLL, memory_order_relaxed);
  }

  sub_2760A0(v3, v4, v5);
  if (v5)
  {
    sub_1A8C0(v5);
  }

  return 0;
}

void sub_279C30(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_279C70(std::__shared_weak_count *a1)
{
  a1->__vftable = off_6D4618;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_279CE4(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  if ((atomic_load_explicit(&qword_6E8050, memory_order_acquire) & 1) == 0)
  {
    v8 = __cxa_guard_acquire(&qword_6E8050);
    v3 = a3;
    if (v8)
    {
      sub_279DC0();
    }
  }

  v4 = qword_6E8040;
  v5 = *algn_6E8048;
  if (*algn_6E8048)
  {
    atomic_fetch_add_explicit((*algn_6E8048 + 8), 1uLL, memory_order_relaxed);
  }

  sub_2760A0(v3, v4, v5);
  if (v5)
  {
    sub_1A8C0(v5);
  }

  return 0;
}

void sub_279EC4(std::__shared_weak_count *a1)
{
  a1->__vftable = off_6BC900;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_279F38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 152);
  if (!v5)
  {
    goto LABEL_45;
  }

  if (!sub_47D0C(v5, "DuckParameters"))
  {
    v6 = *(a1 + 152);
    if (!v6)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      sub_1DB154(exception);
    }

    if (!sub_47D0C(v6, "dBGainBoxUsedWithVolu"))
    {
      v5 = *(a1 + 152);
LABEL_45:
      sub_27BC88(v5, a3);
      return 0;
    }
  }

  v7 = sub_5544(25);
  v8 = *v7;
  if (*v7 && os_log_type_enabled(*v7, OS_LOG_TYPE_INFO))
  {
    v9 = a3 + 24;
    v10 = *(a3 + 24);
    v11 = *(a3 + 47);
    v12 = *(a1 + 152);
    *&buf[24] = 0;
    sub_27AF90(v80, v12, 0, buf);
    if (v11 < 0)
    {
      v9 = v10;
    }

    sub_27B964(buf);
    if (v81 >= 0)
    {
      v13 = v80;
    }

    else
    {
      v13 = *v80;
    }

    *buf = 136315906;
    *&buf[4] = "DSPGraphConfig_Actions.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 629;
    *&buf[18] = 2080;
    *&buf[20] = v9;
    *&buf[28] = 2080;
    *&buf[30] = v13;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, "%25s:%-5d Creating custom volume command property for config %s. Volume info: %s", buf, 0x26u);
    if (v81 < 0)
    {
      operator delete(*v80);
    }
  }

  v14 = *(a1 + 152);
  if (v14)
  {
    CFRetain(*(a1 + 152));
  }

  cf[2] = v14;
  sub_53E8(buf, "MuteParameter");
  if (v14)
  {
    v15 = sub_27CB58(v14, buf);
    if (v15)
    {
      sub_113A0(v15);
    }
  }

  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
    if (!v14)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  if (v14)
  {
LABEL_23:
    CFRelease(v14);
  }

LABEL_24:
  v16 = *(a1 + 152);
  if (v16)
  {
    CFRetain(*(a1 + 152));
  }

  cf[1] = v16;
  sub_53E8(buf, "dBGainBoxUsedWithVolu");
  if (v16)
  {
    v17 = sub_27B9E4(v16, buf);
    v18 = (v17 > 0xFFu) & v17;
  }

  else
  {
    v18 = 0;
  }

  if ((buf[23] & 0x80000000) == 0)
  {
    if (!v16)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

  operator delete(*buf);
  if (v16)
  {
LABEL_33:
    CFRelease(v16);
  }

LABEL_34:
  v19 = *(a1 + 152);
  if (!v19)
  {
    v60 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v60, "Could not construct");
  }

  if (sub_47D0C(v19, "DuckParameters"))
  {
    v20 = *(a1 + 152);
    if (!v20)
    {
      v63 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v63, "Could not construct");
    }

    sub_27BA18(cf, v20, "DuckParameters");
    v21 = cf[0];
    if (cf[0])
    {
      CFRetain(cf[0]);
    }

    *v80 = v21;
    sub_53E8(buf, "ID");
    LODWORD(v72[0]) = 0;
    sub_2902F4(v80, buf, v72);
    if ((buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
      if (!v21)
      {
        goto LABEL_49;
      }
    }

    else if (!v21)
    {
LABEL_49:
      v22 = cf[0];
      if (cf[0])
      {
        CFRetain(cf[0]);
      }

      v72[0] = v22;
      sub_53E8(buf, "EnableKey");
      if (v22)
      {
        v23 = sub_27CB58(v22, buf);
        if (v23)
        {
          sub_113A0(v23);
        }
      }

      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
        if (!v22)
        {
          goto LABEL_59;
        }
      }

      else if (!v22)
      {
LABEL_59:
        v24 = cf[0];
        if (cf[0])
        {
          CFRetain(cf[0]);
        }

        *v77 = v24;
        sub_53E8(buf, "GainKey");
        if (v24)
        {
          v25 = sub_27CB58(v24, buf);
          if (v25)
          {
            sub_113A0(v25);
          }
        }

        if ((buf[23] & 0x80000000) != 0)
        {
          operator delete(*buf);
          if (!v24)
          {
            goto LABEL_69;
          }
        }

        else if (!v24)
        {
LABEL_69:
          v26 = cf[0];
          if (cf[0])
          {
            CFRetain(cf[0]);
          }

          v75 = v26;
          sub_53E8(buf, "TimeKey");
          if (v26)
          {
            v27 = sub_27CB58(v26, buf);
            if (v27)
            {
              sub_113A0(v27);
            }
          }

          if ((buf[23] & 0x80000000) != 0)
          {
            operator delete(*buf);
            if (!v26)
            {
              goto LABEL_79;
            }
          }

          else if (!v26)
          {
LABEL_79:
            v28 = cf[0];
            if (cf[0])
            {
              CFRetain(cf[0]);
            }

            v74 = v28;
            sub_53E8(buf, "GainUnitType");
            sub_27BAA4(&v74, buf);
            if ((buf[23] & 0x80000000) != 0)
            {
              operator delete(*buf);
              if (!v28)
              {
                goto LABEL_86;
              }
            }

            else if (!v28)
            {
LABEL_86:
              v29 = cf[0];
              if (cf[0])
              {
                CFRetain(cf[0]);
              }

              v73 = v29;
              sub_53E8(buf, "TimeUnitType");
              sub_27BAA4(&v73, buf);
              if ((buf[23] & 0x80000000) != 0)
              {
                operator delete(*buf);
                if (!v29)
                {
                  goto LABEL_93;
                }
              }

              else if (!v29)
              {
LABEL_93:
                if (cf[0])
                {
                  CFRelease(cf[0]);
                }

                if (v18)
                {
                  operator new();
                }

                v30 = *(a1 + 152);
                if (!v30)
                {
                  v64 = __cxa_allocate_exception(0x10uLL);
                  std::runtime_error::runtime_error(v64, "Could not construct");
                }

                if (!sub_47D0C(v30, "VolumeCurve"))
                {
                  *buf = dword_6E7FB0;
                  sub_149734(&buf[8], qword_6E7FB8);
                  *&buf[32] = xmmword_6E7FD0;
                  goto LABEL_132;
                }

                v31 = *(a1 + 152);
                if (!v31)
                {
                  v65 = __cxa_allocate_exception(0x10uLL);
                  std::runtime_error::runtime_error(v65, "Could not construct");
                }

                sub_27BA18(cf, v31, "VolumeCurve");
                *buf = 0;
                *&buf[16] = 0;
                *&buf[24] = 0;
                *&buf[8] = &buf[16];
                buf[32] = 1;
                *&buf[36] = 5;
                *&buf[40] = 0x3F80000040000000;
                if (!cf[0])
                {
                  v66 = __cxa_allocate_exception(0x10uLL);
                  std::runtime_error::runtime_error(v66, "Could not construct");
                }

                v32 = sub_22AC44(cf[0], "TransferFunction");
                if (v32)
                {
                  v33 = sub_113A0(v32);
                  if ((v33 & 0x100000000) != 0)
                  {
                    v34 = v33;
                  }

                  else
                  {
                    v34 = 0;
                  }

                  *&buf[36] = v34;
                  if (v34 > 0xF)
                  {
                    v35 = 1.0;
                    v36 = 2.0;
                    v37 = 1;
                    goto LABEL_110;
                  }
                }

                else
                {
                  v34 = 0;
                  *&buf[36] = 0;
                }

                v37 = byte_517610[v34];
                v36 = flt_518BC8[v34];
                v35 = flt_518C08[v34];
LABEL_110:
                buf[32] = v37;
                *&buf[40] = v36;
                *&buf[44] = v35;
                if (!cf[0])
                {
                  v67 = __cxa_allocate_exception(0x10uLL);
                  std::runtime_error::runtime_error(v67, "Could not construct");
                }

                v38 = sub_22AC44(cf[0], "VolumeCurvePoints");
                if (v38)
                {
                  v39 = v38;
                  CFRetain(v38);
                  v40 = CFGetTypeID(v39);
                  if (v40 == CFArrayGetTypeID())
                  {
                    CFRetain(v39);
                    v75 = v39;
                    CFRelease(v39);
                    if (CFArrayGetCount(v39))
                    {
                      Count = CFArrayGetCount(v39);
                      v42 = CFArrayGetCount(v39);
                      if (Count)
                      {
                        v43 = v42;
                        v44 = 0;
                        do
                        {
                          if (v43 == v44)
                          {
                            break;
                          }

                          sub_A3B9C(&v74, v39, v44);
                          v45 = v74;
                          if (v74)
                          {
                            v46 = CFGetTypeID(v74);
                            TypeID = CFDictionaryGetTypeID();
                            v48 = v45;
                            if (v46 != TypeID)
                            {
                              v61 = __cxa_allocate_exception(0x10uLL);
                              std::runtime_error::runtime_error(v61, "Could not construct");
                            }
                          }

                          else
                          {
                            v48 = 0;
                          }

                          sub_10FD4(&v73, v48);
                          if (!v73)
                          {
                            v58 = __cxa_allocate_exception(0x10uLL);
                            std::runtime_error::runtime_error(v58, "Could not construct");
                          }

                          sub_27BBFC(v80, v73, "scalar");
                          if (!v73)
                          {
                            v59 = __cxa_allocate_exception(0x10uLL);
                            std::runtime_error::runtime_error(v59, "Could not construct");
                          }

                          sub_27BBFC(v72, v73, "dB");
                          v49 = *v80;
                          if (*&v80[8] - *v80 == 8)
                          {
                            v50 = v72[0];
                            if ((v72[1] - v72[0]) == &dword_8)
                            {
                              continue;
                            }
                          }

                          v55 = sub_5544(14);
                          v56 = *v55;
                          if (*v55 && os_log_type_enabled(*v55, OS_LOG_TYPE_ERROR))
                          {
                            *v77 = 136315394;
                            *&v77[4] = "DSPGraphConfig_Actions.cpp";
                            v78 = 1024;
                            v79 = 509;
                            _os_log_impl(&dword_0, v56, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", v77, 0x12u);
                          }

                          v57 = __cxa_allocate_exception(0x10uLL);
                          std::logic_error::logic_error(v57, "Precondition failure.");
                          v51 = *v72[0];
                          v52 = *(v72[0] + 1);
                          sub_160214(buf, vcvts_n_s32_f32(**v80, 0x1FuLL), vcvts_n_s32_f32(*(*v80 + 4), 0x1FuLL));
                          operator delete(v50);
                          operator delete(v49);
                          if (v73)
                          {
                            CFRelease(v73);
                          }

                          if (v45)
                          {
                            CFRelease(v45);
                          }

                          ++v44;
                        }

                        while (Count != v44);
                      }

                      CFRelease(v39);
                      if (cf[0])
                      {
                        CFRelease(cf[0]);
                      }

LABEL_132:
                      if (*&buf[24])
                      {
                        v53 = *(*&buf[8] + 36);
                      }

                      sub_59224(buf);
                      operator new();
                    }

LABEL_151:
                    v68 = sub_5544(14);
                    v69 = *v68;
                    if (*v68 && os_log_type_enabled(*v68, OS_LOG_TYPE_ERROR))
                    {
                      *v80 = 136315394;
                      *&v80[4] = "DSPGraphConfig_Actions.cpp";
                      *&v80[12] = 1024;
                      *&v80[14] = 494;
                      _os_log_impl(&dword_0, v69, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", v80, 0x12u);
                    }

                    v70 = __cxa_allocate_exception(0x10uLL);
                    std::logic_error::logic_error(v70, "Precondition failure.");
                  }

                  CFRelease(v39);
                }

                v75 = 0;
                goto LABEL_151;
              }

              CFRelease(v29);
              goto LABEL_93;
            }

            CFRelease(v28);
            goto LABEL_86;
          }

          CFRelease(v26);
          goto LABEL_79;
        }

        CFRelease(v24);
        goto LABEL_69;
      }

      CFRelease(v22);
      goto LABEL_59;
    }

    CFRelease(v21);
    goto LABEL_49;
  }

  if (v18)
  {
    operator new();
  }

  sub_27BC88(*(a1 + 152), a3);
  return 0;
}

void sub_27AD04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, int a15, __int16 a16, char a17, char a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, uint64_t a25, char a26, int a27, __int16 a28, char a29, char a30, int a31, __int16 a32, char a33, char a34, void *__p, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  if (a2)
  {
    sub_1CC130(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_27AF90(uint64_t a1, const __CFDictionary *a2, size_t a3, uint64_t a4)
{
  v8 = 1;
  *(a1 + 23) = 1;
  *a1 = 123;
  sub_E2B64(&v72, a2);
  sub_E2B64(&v66, a2);
  v67 = (v69 - v68) >> 3;
  while (1)
  {
    if (v72 && v73 != (v75 - v74) >> 3)
    {
      v9 = v66;
      goto LABEL_8;
    }

    v9 = v66;
    if (!v66 || v67 == (v69 - v68) >> 3)
    {
      break;
    }

LABEL_8:
    if (v72 == v9 && v73 == v67)
    {
      break;
    }

    if ((v8 & 1) == 0)
    {
      std::string::append(a1, ",", 1uLL);
    }

    sub_1DAEC8(&__b, a3 + 2, 32);
    v10 = std::string::insert(&__b, 0, "\n", 1uLL);
    v11 = *&v10->__r_.__value_.__l.__data_;
    v60 = v10->__r_.__value_.__r.__words[2];
    *__p = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    if (v60 >= 0)
    {
      v12 = __p;
    }

    else
    {
      v12 = __p[0];
    }

    if (v60 >= 0)
    {
      v13 = HIBYTE(v60);
    }

    else
    {
      v13 = __p[1];
    }

    std::string::append(a1, v12, v13);
    if (SHIBYTE(v60) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(__b.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__b.__r_.__value_.__l.__data_);
    }

    sub_27CC78(__p, &v72);
    v14 = __p[0];
    v16 = 0;
    if (__p[0])
    {
      v15 = CFGetTypeID(__p[0]);
      if (v15 == CFStringGetTypeID())
      {
        v16 = 1;
      }
    }

    if (__p[1])
    {
      CFRelease(__p[1]);
    }

    if (v14)
    {
      CFRelease(v14);
    }

    if (v16)
    {
      sub_27CC78(&cf, &v72);
      v17 = cf.__r_.__value_.__r.__words[0];
      if (!cf.__r_.__value_.__r.__words[0])
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Could not construct");
      }

      sub_125D8(&v63, cf.__r_.__value_.__l.__data_);
      if ((v63.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v18 = &v63;
      }

      else
      {
        v18 = v63.__r_.__value_.__r.__words[0];
      }

      if ((v63.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v63.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v63.__r_.__value_.__l.__size_;
      }

      sub_27CD08(&v64, v18, size);
      v20 = std::string::insert(&v64, 0, "", 1uLL);
      v21 = *&v20->__r_.__value_.__l.__data_;
      __b.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
      *&__b.__r_.__value_.__l.__data_ = v21;
      v20->__r_.__value_.__l.__size_ = 0;
      v20->__r_.__value_.__r.__words[2] = 0;
      v20->__r_.__value_.__r.__words[0] = 0;
      v22 = std::string::append(&__b, " : ", 4uLL);
      v23 = *&v22->__r_.__value_.__l.__data_;
      v60 = v22->__r_.__value_.__r.__words[2];
      *__p = v23;
      v22->__r_.__value_.__l.__size_ = 0;
      v22->__r_.__value_.__r.__words[2] = 0;
      v22->__r_.__value_.__r.__words[0] = 0;
      if (v60 >= 0)
      {
        v24 = __p;
      }

      else
      {
        v24 = __p[0];
      }

      if (v60 >= 0)
      {
        v25 = HIBYTE(v60);
      }

      else
      {
        v25 = __p[1];
      }

      std::string::append(a1, v24, v25);
      if (SHIBYTE(v60) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(__b.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__b.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v64.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v63.__r_.__value_.__l.__data_);
      }

      if (cf.__r_.__value_.__l.__size_)
      {
        CFRelease(cf.__r_.__value_.__l.__size_);
      }

      CFRelease(v17);
      sub_27CC78(&__b, &v72);
      sub_27D0E8(v78, a4);
      sub_27D180(__p, &__b.__r_.__value_.__l.__size_, a3 + 2, v78);
      if (v60 >= 0)
      {
        v26 = __p;
      }

      else
      {
        v26 = __p[0];
      }

      if (v60 >= 0)
      {
        v27 = HIBYTE(v60);
      }

      else
      {
        v27 = __p[1];
      }

      std::string::append(a1, v26, v27);
      if (SHIBYTE(v60) < 0)
      {
        operator delete(__p[0]);
      }

      sub_27B964(v78);
      if (__b.__r_.__value_.__l.__size_)
      {
        CFRelease(__b.__r_.__value_.__l.__size_);
      }

      if (__b.__r_.__value_.__r.__words[0])
      {
        CFRelease(__b.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      if (!*(a4 + 24))
      {
        v52 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v52, "Error, not a json style CFDictionary");
      }

      sub_27CC78(&__b, &v72);
      v28 = __b.__r_.__value_.__r.__words[0];
      if (__b.__r_.__value_.__r.__words[0])
      {
        CFRetain(__b.__r_.__value_.__l.__data_);
      }

      v57 = 0;
      v58 = v28;
      v29 = *(a4 + 24);
      if (!v29)
      {
        sub_46A74();
      }

      (*(*v29 + 48))(__p);
      if (v57)
      {
        CFRelease(v57);
      }

      if (v58)
      {
        CFRelease(v58);
      }

      if (__b.__r_.__value_.__l.__size_)
      {
        CFRelease(__b.__r_.__value_.__l.__size_);
      }

      if (v28)
      {
        CFRelease(v28);
      }

      v30 = SHIBYTE(v60);
      if ((SHIBYTE(v60) & 0x8000000000000000) != 0)
      {
        v30 = __p[1];
        if (!__p[1])
        {
LABEL_138:
          v51 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v51, "Error, not a json style CFDictionary");
        }

        v31 = __p[0];
      }

      else
      {
        if (!HIBYTE(v60))
        {
          goto LABEL_138;
        }

        v31 = __p;
      }

      sub_27CD08(&v55, v31, v30);
      v32 = std::string::insert(&v55, 0, "", 1uLL);
      v33 = *&v32->__r_.__value_.__l.__data_;
      cf.__r_.__value_.__r.__words[2] = v32->__r_.__value_.__r.__words[2];
      *&cf.__r_.__value_.__l.__data_ = v33;
      v32->__r_.__value_.__l.__size_ = 0;
      v32->__r_.__value_.__r.__words[2] = 0;
      v32->__r_.__value_.__r.__words[0] = 0;
      v34 = std::string::append(&cf, " : ", 5uLL);
      v35 = *&v34->__r_.__value_.__l.__data_;
      v63.__r_.__value_.__r.__words[2] = v34->__r_.__value_.__r.__words[2];
      *&v63.__r_.__value_.__l.__data_ = v35;
      v34->__r_.__value_.__l.__size_ = 0;
      v34->__r_.__value_.__r.__words[2] = 0;
      v34->__r_.__value_.__r.__words[0] = 0;
      if ((v62 & 0x80u) == 0)
      {
        v36 = v61;
      }

      else
      {
        v36 = v61[0];
      }

      if ((v62 & 0x80u) == 0)
      {
        v37 = v62;
      }

      else
      {
        v37 = v61[1];
      }

      sub_27CD08(v53, v36, v37);
      if ((v54 & 0x80u) == 0)
      {
        v38 = v53;
      }

      else
      {
        v38 = v53[0];
      }

      if ((v54 & 0x80u) == 0)
      {
        v39 = v54;
      }

      else
      {
        v39 = v53[1];
      }

      v40 = std::string::append(&v63, v38, v39);
      v41 = *&v40->__r_.__value_.__l.__data_;
      v64.__r_.__value_.__r.__words[2] = v40->__r_.__value_.__r.__words[2];
      *&v64.__r_.__value_.__l.__data_ = v41;
      v40->__r_.__value_.__l.__size_ = 0;
      v40->__r_.__value_.__r.__words[2] = 0;
      v40->__r_.__value_.__r.__words[0] = 0;
      v42 = std::string::append(&v64, "", 1uLL);
      v43 = *&v42->__r_.__value_.__l.__data_;
      __b.__r_.__value_.__r.__words[2] = v42->__r_.__value_.__r.__words[2];
      *&__b.__r_.__value_.__l.__data_ = v43;
      v42->__r_.__value_.__l.__size_ = 0;
      v42->__r_.__value_.__r.__words[2] = 0;
      v42->__r_.__value_.__r.__words[0] = 0;
      if ((__b.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b.__r_.__value_.__r.__words[0];
      }

      if ((__b.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v45 = HIBYTE(__b.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v45 = __b.__r_.__value_.__l.__size_;
      }

      std::string::append(a1, p_b, v45);
      if (SHIBYTE(__b.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__b.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v64.__r_.__value_.__l.__data_);
      }

      if (v54 < 0)
      {
        operator delete(v53[0]);
      }

      if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v63.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(cf.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(cf.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v55.__r_.__value_.__l.__data_);
      }

      if (v62 < 0)
      {
        operator delete(v61[0]);
      }

      if (SHIBYTE(v60) < 0)
      {
        operator delete(__p[0]);
      }
    }

    v8 = 0;
    ++v73;
  }

  sub_1DAEC8(&__b, a3, 32);
  v46 = std::string::insert(&__b, 0, "\n", 1uLL);
  v47 = *&v46->__r_.__value_.__l.__data_;
  v60 = v46->__r_.__value_.__r.__words[2];
  *__p = v47;
  v46->__r_.__value_.__l.__size_ = 0;
  v46->__r_.__value_.__r.__words[2] = 0;
  v46->__r_.__value_.__r.__words[0] = 0;
  if (v60 >= 0)
  {
    v48 = __p;
  }

  else
  {
    v48 = __p[0];
  }

  if (v60 >= 0)
  {
    v49 = HIBYTE(v60);
  }

  else
  {
    v49 = __p[1];
  }

  std::string::append(a1, v48, v49);
  if (SHIBYTE(v60) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(__b.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__b.__r_.__value_.__l.__data_);
  }

  std::string::append(a1, "}", 1uLL);
  if (v70)
  {
    v71 = v70;
    operator delete(v70);
  }

  if (v68)
  {
    v69 = v68;
    operator delete(v68);
  }

  if (v76)
  {
    v77 = v76;
    operator delete(v76);
  }

  if (v74)
  {
    v75 = v74;
    operator delete(v74);
  }
}

void sub_27B70C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, char a28, int a29, __int16 a30, char a31, char a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, void *a49, uint64_t a50, int a51, __int16 a52, char a53, char a54, uint64_t a55, void *a56, uint64_t a57, int a58, __int16 a59, char a60, char a61, uint64_t a62, uint64_t a63)
{
  if (a38 < 0)
  {
    operator delete(__p);
  }

  if (a61 < 0)
  {
    operator delete(a56);
  }

  sub_23EA78(&a63);
  sub_23EA78((v64 - 192));
  if (*(v63 + 23) < 0)
  {
    operator delete(*v63);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_27B964(uint64_t a1)
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

uint64_t sub_27B9E4(const __CFDictionary *a1, const __CFString *a2)
{
  v2 = sub_27CB58(a1, a2);
  if (v2)
  {
    LOWORD(v2) = sub_11DA8(v2);
    v3 = BYTE1(v2);
  }

  else
  {
    v3 = 0;
  }

  return v2 | (v3 << 8);
}

void *sub_27BA18(void *a1, const __CFDictionary *a2, const UInt8 *__s)
{
  v4 = sub_22AC44(a2, __s);
  if (!v4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1DC894(exception);
  }

  return sub_10FD4(a1, v4);
}

uint64_t sub_27BAA4(const __CFDictionary **a1, const __CFString *a2)
{
  v4 = *a1;
  if (!v4 || !sub_4A3D0(v4, a2))
  {
    goto LABEL_7;
  }

  if (!*a1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1DB154(exception);
  }

  sub_27CA10(&cf, *a1, a2);
  v6 = cf;
  if (!cf)
  {
    goto LABEL_7;
  }

  v7 = CFGetTypeID(cf);
  if (v7 == CFNumberGetTypeID())
  {
    v8 = sub_4A8F8(v6);
    v9 = v8;
    v10 = 0;
    v2 = v8 >> 8;
  }

  else
  {
    v13 = CFGetTypeID(v6);
    if (v13 == CFBooleanGetTypeID())
    {
      v9 = sub_27CA94(v6);
      v2 = 0;
      v10 = 0;
    }

    else
    {
      v9 = 0;
      v10 = 1;
    }
  }

  CFRelease(v6);
  if ((v10 & 1) == 0)
  {
    v11 = 0x100000000;
  }

  else
  {
LABEL_7:
    v11 = 0;
    v9 = 0;
  }

  return v11 | v9 | (v2 << 8);
}

void sub_27BBC0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1D5FE0(va);
  _Unwind_Resume(a1);
}

void sub_27BBFC(void **a1, const __CFDictionary *a2, const UInt8 *__s)
{
  v4 = sub_22AC44(a2, __s);
  if (!v4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1DC894(exception);
  }

  sub_27C7A4(a1, v4);
}

void sub_27BC88(CFTypeRef cf, void *a2)
{
  if (cf)
  {
    CFRetain(cf);
  }

  v13 = cf;
  sub_53E8(&__p, "PortType");
  LODWORD(v12) = 1886613611;
  v4 = sub_2902F4(&v13, &__p, &v12);
  if (SHIBYTE(__p.data) < 0)
  {
    operator delete(__p.isa);
    if (!cf)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (cf)
  {
LABEL_7:
    CFRelease(cf);
  }

LABEL_8:
  if ((sub_28F080(v4) & 1) == 0)
  {
    v9 = sub_5544(14);
    v10 = *v9;
    if (*v9 && os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
    {
      LODWORD(__p.isa) = 136315394;
      *(&__p.isa + 4) = "DSPGraphConfig_Actions.cpp";
      WORD2(__p.info) = 1024;
      *(&__p.info + 6) = 535;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", &__p, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  if ((v4 - 1885892674) <= 0x35 && ((1 << (v4 - 66)) & 0x20000100000001) != 0)
  {
    if ((atomic_load_explicit(&qword_6E80F8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6E80F8))
    {
      sub_27C15C();
    }

    v5 = qword_6E80E8;
    v6 = unk_6E80F0;
    if (unk_6E80F0)
    {
      atomic_fetch_add_explicit((unk_6E80F0 + 8), 1uLL, memory_order_relaxed);
    }

LABEL_26:
    sub_2760A0(a2, v5, v6);
    if (v6)
    {
      sub_1A8C0(v6);
    }

    return;
  }

  if (v4 == 1886613611)
  {
    if ((atomic_load_explicit(&qword_6E8110, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6E8110))
    {
      LODWORD(__p.isa) = 1987013749;
      LODWORD(v12) = 1986359655;
      sub_27C228();
    }

    v5 = qword_6E8100;
    v6 = *algn_6E8108;
    if (*algn_6E8108)
    {
      atomic_fetch_add_explicit((*algn_6E8108 + 8), 1uLL, memory_order_relaxed);
    }

    goto LABEL_26;
  }

  if (v4 == 1886216809)
  {
    v12 = xmmword_5171D0;
    sub_16040C(&__p, 0);
    if ((atomic_load_explicit(&qword_6E80E0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6E80E0))
    {
      sub_27C0A4();
    }

    v7 = qword_6E80D0;
    v8 = *algn_6E80D8;
    if (*algn_6E80D8)
    {
      atomic_fetch_add_explicit((*algn_6E80D8 + 8), 1uLL, memory_order_relaxed);
    }

    sub_2760A0(a2, v7, v8);
    if (v8)
    {
      sub_1A8C0(v8);
    }

    sub_477A0(__p.data);
  }
}

void sub_27BFF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17)
{
  __cxa_guard_abort(&qword_6E80E0);
  sub_477A0(a17);
  _Unwind_Resume(a1);
}

void sub_27C144(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_27C2C0(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

__n128 sub_27C2D8(uint64_t a1, _OWORD *a2, __n128 *a3, int a4, int a5)
{
  *(a1 + 8) = -2609680281;
  *(a1 + 16) = 0;
  *(a1 + 36) = 0x100000001;
  *(a1 + 20) = *"";
  *a1 = &off_6D8890;
  *(a1 + 48) = *a2;
  *(a1 + 64) = a3->n128_u32[0];
  sub_149734((a1 + 72), &a3->n128_u64[1]);
  result = a3[2];
  *(a1 + 96) = result;
  *(a1 + 112) = 1;
  *(a1 + 120) = a4;
  *(a1 + 124) = a5;
  *a1 = off_6D3FE8;
  return result;
}

void sub_27C39C(uint64_t a1)
{
  *a1 = &off_6D8890;
  if (*(a1 + 112) == 1)
  {
    sub_477A0(*(a1 + 80));
  }

  operator delete();
}

uint64_t sub_27C410(uint64_t a1)
{
  *a1 = &off_6D8890;
  if (*(a1 + 112) == 1)
  {
    sub_477A0(*(a1 + 80));
  }

  return a1;
}

void sub_27C48C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_6D3FB0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_27C528(std::__shared_weak_count *a1)
{
  a1->__vftable = off_6BC680;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_27C5C4(std::__shared_weak_count *a1)
{
  a1->__vftable = off_6BC648;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_27C638(uint64_t a1)
{
  *a1 = &off_6D8890;
  if (*(a1 + 112) == 1)
  {
    sub_477A0(*(a1 + 80));
  }

  operator delete();
}

uint64_t sub_27C6AC(uint64_t a1)
{
  *a1 = &off_6D8890;
  if (*(a1 + 112) == 1)
  {
    sub_477A0(*(a1 + 80));
  }

  return a1;
}

void sub_27C730(std::__shared_weak_count *a1)
{
  a1->__vftable = off_6D8818;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_27C7A4(void **a1, const void *a2)
{
  TypeID = CFArrayGetTypeID();
  if (TypeID != CFGetTypeID(a2))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1DAEBC(exception);
  }

  Count = CFArrayGetCount(a2);
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  sub_6A820(a1, Count);
  if (Count >= 1)
  {
    v6 = 0;
    v7 = Count & 0x7FFFFFFF;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a2, v6);
      v9 = sub_EC94C(ValueAtIndex);
      v11 = a1[1];
      v10 = a1[2];
      if (v11 >= v10)
      {
        v13 = *a1;
        v14 = v11 - *a1;
        v15 = (v14 >> 2) + 1;
        if (v15 >> 62)
        {
          sub_189A00();
        }

        v16 = v10 - v13;
        if (v16 >> 1 > v15)
        {
          v15 = v16 >> 1;
        }

        if (v16 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v17 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v17 = v15;
        }

        if (v17)
        {
          sub_1D7C28(v17);
        }

        v18 = (4 * (v14 >> 2));
        *v18 = v9;
        v12 = v18 + 1;
        memcpy(0, v13, v14);
        *a1 = 0;
        a1[2] = 0;
        if (v13)
        {
          operator delete(v13);
        }
      }

      else
      {
        *v11 = v9;
        v12 = v11 + 1;
      }

      a1[1] = v12;
      ++v6;
    }

    while (v7 != v6);
  }
}

void sub_27C99C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_6D87A0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

CFTypeRef sub_27CA10(void *a1, const __CFDictionary *a2, const __CFString *a3)
{
  v4 = sub_27CB58(a2, a3);
  if (!v4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1DC894(exception);
  }

  v5 = v4;
  result = CFRetain(v4);
  *a1 = v5;
  return result;
}

uint64_t sub_27CA94(const __CFBoolean *a1)
{
  if (!a1)
  {
    goto LABEL_7;
  }

  TypeID = CFBooleanGetTypeID();
  if (TypeID == CFGetTypeID(a1))
  {
    LOBYTE(v3) = CFBooleanGetValue(a1) != 0;
    return v3 & 1;
  }

  v4 = CFNumberGetTypeID();
  if (v4 != CFGetTypeID(a1) || (v3 = sub_1E0430(a1), v3 <= 0xFFu))
  {
LABEL_7:
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1DAEBC(exception);
  }

  return v3 & 1;
}

const void *sub_27CB58(const __CFDictionary *a1, CFStringRef a2)
{
  v2 = a2;
  data_high = HIBYTE(a2->data);
  if ((data_high & 0x80u) != 0)
  {
    a2 = a2->isa;
  }

  if (a2)
  {
    info = v2->info;
    if ((data_high & 0x80u) == 0)
    {
      v6 = data_high;
    }

    else
    {
      v6 = info;
    }

    a2 = CFStringCreateWithBytes(0, a2, v6, 0x8000100u, 0);
    cf = a2;
    if (!a2)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
    }
  }

  else
  {
    cf = 0;
  }

  Value = CFDictionaryGetValue(a1, a2);
  if (cf)
  {
    CFRelease(cf);
  }

  return Value;
}

void sub_27CC28(void *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1DB0E0(va);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x27CC14);
}

void sub_27CC78(void *a1, void *a2)
{
  sub_E2CE8(&cf, a2);
  v3 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  *a1 = v3;
  v4 = v6;
  if (!v6)
  {
    a1[1] = 0;
    if (!v3)
    {
      return;
    }

    goto LABEL_7;
  }

  CFRetain(v6);
  a1[1] = v4;
  CFRelease(v4);
  if (v3)
  {
LABEL_7:
    CFRelease(v3);
  }
}

uint64_t sub_27CD08(_BYTE *a1, char *a2, uint64_t a3)
{
  sub_2288C(v14);
  v6 = v15;
  *(&v15 + *(v15 - 24) + 8) = *(&v15 + *(v15 - 24) + 8) & 0xFFFFFFB5 | 8;
  *(&v15 + *(v6 - 24) + 8) = *(&v15 + *(v6 - 24) + 8) & 0xFFFFFF4F | 0x80;
  v7 = &v15 + *(v6 - 24);
  if (*(v7 + 36) == -1)
  {
    std::ios_base::getloc((&v15 + *(v6 - 24)));
    v8 = std::locale::use_facet(&v19, &std::ctype<char>::id);
    (v8->__vftable[2].~facet_0)(v8, 32);
    std::locale::~locale(&v19);
  }

  *(v7 + 36) = 48;
  while (a3)
  {
    v9 = *a2;
    if (v9 <= 0xB)
    {
      switch(v9)
      {
        case 8u:
          v10 = "\\b";
          break;
        case 9u:
          v10 = "\\t";
          break;
        case 0xAu:
          v10 = "\\n";
          break;
        default:
          goto LABEL_17;
      }
    }

    else if (*a2 > 0x21u)
    {
      v10 = "\\\";
      if (v9 != 92)
      {
        if (v9 != 34)
        {
LABEL_17:
          if (v9 == 127 || v9 - 1 <= 0x1E)
          {
            sub_22564(&v15, "\\u", 2);
            *(&v17[1].__locale_ + *(v15 - 24)) = &dword_4;
            v11 = *a2;
            std::ostream::operator<<();
          }

          else
          {
            LOBYTE(v19.__locale_) = v9;
            sub_22564(&v15, &v19, 1);
          }

          goto LABEL_23;
        }

        v10 = "\\"";
      }
    }

    else if (v9 == 12)
    {
      v10 = "\\f";
    }

    else
    {
      if (v9 != 13)
      {
        goto LABEL_17;
      }

      v10 = "\\r";
    }

    sub_22564(&v15, v10, 2);
LABEL_23:
    ++a2;
    --a3;
  }

  sub_8E878(a1, v14);
  v15 = v12;
  if (v18 < 0)
  {
    operator delete(v17[7].__locale_);
  }

  std::locale::~locale(v17);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_27D0B8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_275074(va);
  _Unwind_Resume(a1);
}

uint64_t sub_27D0E8(uint64_t a1, uint64_t a2)
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

void sub_27D180(uint64_t a1, CFTypeRef *a2, size_t a3, uint64_t a4)
{
  if (!*a2)
  {
    goto LABEL_44;
  }

  v8 = CFGetTypeID(*a2);
  TypeID = CFBooleanGetTypeID();
  v10 = *a2;
  if (v8 == TypeID)
  {
    if (v10)
    {
      if (!sub_27CA94(v10))
      {
        *(a1 + 23) = 5;
        strcpy(a1, "false");
        return;
      }

      *(a1 + 23) = 4;
      v11 = 1702195828;
      goto LABEL_53;
    }

    goto LABEL_152;
  }

  if (!v10)
  {
    goto LABEL_44;
  }

  v12 = CFGetTypeID(v10);
  v13 = CFNumberGetTypeID();
  v14 = *a2;
  if (v12 != v13)
  {
    if (v14)
    {
      v19 = CFGetTypeID(v14);
      if (v19 == CFStringGetTypeID())
      {
        *(&v90.__r_.__value_.__s + 23) = 1;
        LOWORD(v90.__r_.__value_.__l.__data_) = 34;
        if (!*a2)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(exception, "Could not construct");
        }

        sub_125D8(&v88, *a2);
        if ((v88.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v20 = &v88;
        }

        else
        {
          v20 = v88.__r_.__value_.__r.__words[0];
        }

        if ((v88.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v88.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v88.__r_.__value_.__l.__size_;
        }

        sub_27CD08(&__p, v20, size);
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
          v23 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v23 = __p.__r_.__value_.__l.__size_;
        }

        v24 = std::string::append(&v90, p_p, v23);
        v25 = *&v24->__r_.__value_.__l.__data_;
        valuePtr.__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
        *&valuePtr.__r_.__value_.__l.__data_ = v25;
        v24->__r_.__value_.__l.__size_ = 0;
        v24->__r_.__value_.__r.__words[2] = 0;
        v24->__r_.__value_.__r.__words[0] = 0;
        v26 = std::string::append(&valuePtr, "", 1uLL);
        v27 = *&v26->__r_.__value_.__l.__data_;
        *(a1 + 16) = *(&v26->__r_.__value_.__l + 2);
        *a1 = v27;
        v26->__r_.__value_.__l.__size_ = 0;
        v26->__r_.__value_.__r.__words[2] = 0;
        v26->__r_.__value_.__r.__words[0] = 0;
        if (SHIBYTE(valuePtr.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(valuePtr.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v88.__r_.__value_.__l.__data_);
        }

        if ((SHIBYTE(v90.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          return;
        }

        v28 = v90.__r_.__value_.__r.__words[0];
        goto LABEL_102;
      }

      if (*a2)
      {
        v29 = CFGetTypeID(*a2);
        v30 = CFArrayGetTypeID();
        v31 = *a2;
        if (v29 == v30)
        {
          sub_27D0E8(v92, a4);
          sub_27DD6C(a1, v31, a3, v92);
          v32 = v92;
LABEL_108:
          sub_27B964(v32);
          return;
        }

        if (v31)
        {
          v61 = CFGetTypeID(*a2);
          v62 = CFDictionaryGetTypeID();
          v31 = *a2;
          if (v61 == v62)
          {
            sub_27D0E8(v91, a4);
            sub_27AF90(a1, v31, a3, v91);
            v32 = v91;
            goto LABEL_108;
          }
        }

LABEL_45:
        v33 = CFGetTypeID(v31);
        if (v33 == CFNullGetTypeID() || (v34 = *a2) == 0)
        {
          *(a1 + 23) = 4;
          v11 = 1819047278;
LABEL_53:
          *a1 = v11;
          *(a1 + 4) = 0;
          return;
        }

        if (!*(a4 + 24))
        {
          v77 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v77, "Error, not a json style CFDictionary");
          goto LABEL_153;
        }

        v83 = 0;
        CFRetain(v34);
        v35 = *(a4 + 24);
        cf = v34;
        if (!v35)
        {
          sub_46A74();
        }

        (*(*v35 + 48))(&valuePtr);
        CFRelease(cf);
        v36 = SHIBYTE(valuePtr.__r_.__value_.__r.__words[2]);
        if ((SHIBYTE(valuePtr.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
        {
          v36 = valuePtr.__r_.__value_.__l.__size_;
          if (valuePtr.__r_.__value_.__l.__size_)
          {
            p_valuePtr = valuePtr.__r_.__value_.__r.__words[0];
            goto LABEL_57;
          }
        }

        else if (*(&valuePtr.__r_.__value_.__s + 23))
        {
          p_valuePtr = &valuePtr;
LABEL_57:
          sub_27CD08(&v81, p_valuePtr, v36);
          v38 = std::string::insert(&v81, 0, "{ ", 3uLL);
          v39 = *&v38->__r_.__value_.__l.__data_;
          v88.__r_.__value_.__r.__words[2] = v38->__r_.__value_.__r.__words[2];
          *&v88.__r_.__value_.__l.__data_ = v39;
          v38->__r_.__value_.__l.__size_ = 0;
          v38->__r_.__value_.__r.__words[2] = 0;
          v38->__r_.__value_.__r.__words[0] = 0;
          v40 = std::string::append(&v88, " : ", 5uLL);
          v41 = *&v40->__r_.__value_.__l.__data_;
          __p.__r_.__value_.__r.__words[2] = v40->__r_.__value_.__r.__words[2];
          *&__p.__r_.__value_.__l.__data_ = v41;
          v40->__r_.__value_.__l.__size_ = 0;
          v40->__r_.__value_.__r.__words[2] = 0;
          v40->__r_.__value_.__r.__words[0] = 0;
          if ((v87 & 0x80u) == 0)
          {
            v42 = &v85;
          }

          else
          {
            v42 = v85;
          }

          if ((v87 & 0x80u) == 0)
          {
            v43 = v87;
          }

          else
          {
            v43 = v86;
          }

          sub_27CD08(v79, v42, v43);
          if ((v80 & 0x80u) == 0)
          {
            v44 = v79;
          }

          else
          {
            v44 = v79[0];
          }

          if ((v80 & 0x80u) == 0)
          {
            v45 = v80;
          }

          else
          {
            v45 = v79[1];
          }

          v46 = std::string::append(&__p, v44, v45);
          v47 = *&v46->__r_.__value_.__l.__data_;
          v90.__r_.__value_.__r.__words[2] = v46->__r_.__value_.__r.__words[2];
          *&v90.__r_.__value_.__l.__data_ = v47;
          v46->__r_.__value_.__l.__size_ = 0;
          v46->__r_.__value_.__r.__words[2] = 0;
          v46->__r_.__value_.__r.__words[0] = 0;
          v48 = std::string::append(&v90, " }", 3uLL);
          v49 = *&v48->__r_.__value_.__l.__data_;
          *(a1 + 16) = *(&v48->__r_.__value_.__l + 2);
          *a1 = v49;
          v48->__r_.__value_.__l.__size_ = 0;
          v48->__r_.__value_.__r.__words[2] = 0;
          v48->__r_.__value_.__r.__words[0] = 0;
          if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v90.__r_.__value_.__l.__data_);
          }

          if (v80 < 0)
          {
            operator delete(v79[0]);
          }

          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v88.__r_.__value_.__l.__data_);
          }

          if ((SHIBYTE(v81.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_98;
          }

          v50 = v81.__r_.__value_.__r.__words[0];
LABEL_97:
          operator delete(v50);
LABEL_98:
          if (v87 < 0)
          {
            operator delete(v85);
          }

          if ((SHIBYTE(valuePtr.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            return;
          }

          v28 = valuePtr.__r_.__value_.__r.__words[0];
LABEL_102:
          operator delete(v28);
          return;
        }

        *(&__p.__r_.__value_.__s + 23) = 1;
        LOWORD(__p.__r_.__value_.__l.__data_) = 34;
        if ((v87 & 0x80u) == 0)
        {
          v51 = &v85;
        }

        else
        {
          v51 = v85;
        }

        if ((v87 & 0x80u) == 0)
        {
          v52 = v87;
        }

        else
        {
          v52 = v86;
        }

        sub_27CD08(&v88, v51, v52);
        if ((v88.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v53 = &v88;
        }

        else
        {
          v53 = v88.__r_.__value_.__r.__words[0];
        }

        if ((v88.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v54 = HIBYTE(v88.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v54 = v88.__r_.__value_.__l.__size_;
        }

        v55 = std::string::append(&__p, v53, v54);
        v56 = *&v55->__r_.__value_.__l.__data_;
        v90.__r_.__value_.__r.__words[2] = v55->__r_.__value_.__r.__words[2];
        *&v90.__r_.__value_.__l.__data_ = v56;
        v55->__r_.__value_.__l.__size_ = 0;
        v55->__r_.__value_.__r.__words[2] = 0;
        v55->__r_.__value_.__r.__words[0] = 0;
        v57 = std::string::append(&v90, "", 1uLL);
        v58 = *&v57->__r_.__value_.__l.__data_;
        *(a1 + 16) = *(&v57->__r_.__value_.__l + 2);
        *a1 = v58;
        v57->__r_.__value_.__l.__size_ = 0;
        v57->__r_.__value_.__r.__words[2] = 0;
        v57->__r_.__value_.__r.__words[0] = 0;
        if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v90.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v88.__r_.__value_.__l.__data_);
        }

        if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_98;
        }

        v50 = __p.__r_.__value_.__r.__words[0];
        goto LABEL_97;
      }
    }

LABEL_44:
    v31 = 0;
    goto LABEL_45;
  }

  if (!v14)
  {
    goto LABEL_152;
  }

  v15 = sub_EC94C(v14);
  if (vabds_f32(floorf(v15), v15) >= 0.00000011921)
  {

    std::to_string(a1, v15);
    return;
  }

  v16 = *a2;
  if (!*a2)
  {
LABEL_152:
    v77 = __cxa_allocate_exception(0x10uLL);
    sub_1DB154(v77);
LABEL_153:
  }

  v17 = CFNumberGetTypeID();
  if (v17 == CFGetTypeID(v16))
  {
    switch(CFNumberGetType(v16))
    {
      case kCFNumberSInt8Type:
        valuePtr.__r_.__value_.__s.__data_[0] = 0;
        Value = CFNumberGetValue(v16, kCFNumberSInt8Type, &valuePtr);
        goto LABEL_125;
      case kCFNumberSInt16Type:
        LOWORD(valuePtr.__r_.__value_.__l.__data_) = 0;
        v69 = CFNumberGetValue(v16, kCFNumberSInt16Type, &valuePtr);
        goto LABEL_120;
      case kCFNumberSInt32Type:
        LODWORD(valuePtr.__r_.__value_.__l.__data_) = 0;
        v68 = CFNumberGetValue(v16, kCFNumberSInt32Type, &valuePtr);
        goto LABEL_143;
      case kCFNumberSInt64Type:
        valuePtr.__r_.__value_.__r.__words[0] = 0;
        v63 = CFNumberGetValue(v16, kCFNumberSInt64Type, &valuePtr);
        goto LABEL_134;
      case kCFNumberFloat32Type:
        LODWORD(valuePtr.__r_.__value_.__l.__data_) = 0;
        v64 = CFNumberGetValue(v16, kCFNumberFloat32Type, &valuePtr);
        goto LABEL_112;
      case kCFNumberFloat64Type:
        valuePtr.__r_.__value_.__r.__words[0] = 0;
        v67 = CFNumberGetValue(v16, kCFNumberFloat64Type, &valuePtr);
        goto LABEL_122;
      case kCFNumberCharType:
        valuePtr.__r_.__value_.__s.__data_[0] = 0;
        Value = CFNumberGetValue(v16, kCFNumberCharType, &valuePtr);
LABEL_125:
        v73 = Value;
        LODWORD(v74) = Value != 0;
        if (Value)
        {
          v75 = valuePtr.__r_.__value_.__s.__data_[0];
        }

        else
        {
          v75 = 0;
        }

        if (valuePtr.__r_.__value_.__s.__data_[0] < 0)
        {
          v74 = v74;
        }

        else
        {
          v74 = 0;
        }

        if (!v73)
        {
          goto LABEL_148;
        }

        v60 = v75 | (v74 << 63 >> 63 << 8);
        goto LABEL_139;
      case kCFNumberShortType:
        LOWORD(valuePtr.__r_.__value_.__l.__data_) = 0;
        v69 = CFNumberGetValue(v16, kCFNumberShortType, &valuePtr);
LABEL_120:
        v70 = v69;
        v71 = valuePtr.__r_.__value_.__s.__data_[0];
        data_low = SLOWORD(valuePtr.__r_.__value_.__l.__data_);
        goto LABEL_144;
      case kCFNumberIntType:
        LODWORD(valuePtr.__r_.__value_.__l.__data_) = 0;
        v68 = CFNumberGetValue(v16, kCFNumberIntType, &valuePtr);
LABEL_143:
        v70 = v68;
        v71 = valuePtr.__r_.__value_.__s.__data_[0];
        data_low = SLODWORD(valuePtr.__r_.__value_.__l.__data_);
LABEL_144:
        v76 = data_low & 0xFFFFFFFFFFFFFF00 | v71;
        if (v70)
        {
          v60 = v76;
        }

        else
        {
          v60 = 0;
        }

        if (!v70)
        {
          goto LABEL_148;
        }

        goto LABEL_139;
      case kCFNumberLongType:
        valuePtr.__r_.__value_.__r.__words[0] = 0;
        v63 = CFNumberGetValue(v16, kCFNumberLongType, &valuePtr);
        goto LABEL_134;
      case kCFNumberLongLongType:
        valuePtr.__r_.__value_.__r.__words[0] = 0;
        v63 = CFNumberGetValue(v16, kCFNumberLongLongType, &valuePtr);
        goto LABEL_134;
      case kCFNumberFloatType:
        LODWORD(valuePtr.__r_.__value_.__l.__data_) = 0;
        v64 = CFNumberGetValue(v16, kCFNumberFloatType, &valuePtr);
LABEL_112:
        v65 = v64;
        v66 = *&valuePtr.__r_.__value_.__l.__data_;
        goto LABEL_135;
      case kCFNumberDoubleType:
        valuePtr.__r_.__value_.__r.__words[0] = 0;
        v67 = CFNumberGetValue(v16, kCFNumberDoubleType, &valuePtr);
        goto LABEL_122;
      case kCFNumberCFIndexType:
        valuePtr.__r_.__value_.__r.__words[0] = 0;
        v63 = CFNumberGetValue(v16, kCFNumberCFIndexType, &valuePtr);
        goto LABEL_134;
      case kCFNumberNSIntegerType:
        valuePtr.__r_.__value_.__r.__words[0] = 0;
        v63 = CFNumberGetValue(v16, kCFNumberNSIntegerType, &valuePtr);
LABEL_134:
        v65 = v63;
        v66 = valuePtr.__r_.__value_.__r.__words[0];
        goto LABEL_135;
      case kCFNumberCGFloatType:
        valuePtr.__r_.__value_.__r.__words[0] = 0;
        v67 = CFNumberGetValue(v16, kCFNumberCGFloatType, &valuePtr);
LABEL_122:
        v65 = v67;
        v66 = *&valuePtr.__r_.__value_.__l.__data_;
LABEL_135:
        if (v65)
        {
          v60 = v66;
        }

        else
        {
          v60 = 0;
        }

        if (v65)
        {
          goto LABEL_139;
        }

        goto LABEL_148;
      default:
        goto LABEL_148;
    }
  }

  v59 = CFBooleanGetTypeID();
  if (v59 != CFGetTypeID(v16))
  {
LABEL_148:
    v77 = __cxa_allocate_exception(0x10uLL);
    sub_1DAEBC(v77);
    goto LABEL_153;
  }

  v60 = CFBooleanGetValue(v16);
LABEL_139:

  std::to_string(a1, v60);
}