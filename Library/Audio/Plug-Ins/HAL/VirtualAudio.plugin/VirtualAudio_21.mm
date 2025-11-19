void sub_182DEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_1CC130(exception_object);
}

void sub_182EB8(uint64_t a1, uint64_t a2, int a3)
{
  if (a3 == 2 && MGGetBoolAnswer())
  {
    sub_105304();
    v4 = qword_6E8910;
    v10 = qword_6E8910;
    sub_44E44(v11, a2);
    if (!*v4)
    {
      v7 = sub_5544(14);
      v8 = *v7;
      if (*v7 && os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
      {
        buf[0] = 136315394;
        *&buf[1] = "CoreTelephonyInterface.cpp";
        v14 = 1024;
        v15 = 502;
        _os_log_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(exception, "Precondition failure.");
    }

    if (*(v4 + 8))
    {
      sub_68E60();
      v11[6] = v10;
      sub_44E44(&v12, v11);
      operator new();
    }

    v5 = sub_5544(13);
    v6 = *v5;
    if (*v5)
    {
      if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
      {
        buf[0] = 136315394;
        *&buf[1] = "CoreTelephonyInterface.cpp";
        v14 = 1024;
        v15 = 506;
        _os_log_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d No CommCenter process active.", buf, 0x12u);
      }
    }

    sub_477A0(v11[1]);
  }
}

void sub_183374(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  __cxa_end_catch();
  sub_477A0(a12);
  JUMPOUT(0x183124);
}

void sub_1833B4(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    sub_26C0(a1);
    v4 = *(a1 + 400);
    v5 = *(a1 + 392);
    sub_3174(a1);
    if (v5)
    {

      v5(a2, v4);
    }
  }
}

std::string *sub_18343C@<X0>(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  sub_53E8(a2, "Notify Ports and Update Route in PortManager: ");
  std::string::append(a2, "{ ", 2uLL);
  v4 = *(a1 + 24);
  if (v4 != (a1 + 32))
  {
    while (1)
    {
      std::string::append(a2, "'", 1uLL);
      sub_22170(__p, *(v4 + 8));
      if (v37 >= 0)
      {
        v5 = __p;
      }

      else
      {
        v5 = __p[0];
      }

      if (v37 >= 0)
      {
        v6 = HIBYTE(v37);
      }

      else
      {
        v6 = __p[1];
      }

      std::string::append(a2, v5, v6);
      if (SHIBYTE(v37) < 0)
      {
        operator delete(__p[0]);
      }

      std::string::append(a2, "': ", 3uLL);
      sub_B0484(&v31, v4 + 5);
      sub_53E8(&v35, "{ ");
      sub_1C28C4(__p, &v35);
      if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v35.__r_.__value_.__l.__data_);
      }

      v7 = v32;
      if (v32 != &v31)
      {
        while (1)
        {
          sub_23148(&v35, (v7[2] + 8));
          if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v8 = &v35;
          }

          else
          {
            v8 = v35.__r_.__value_.__r.__words[0];
          }

          if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(v35.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = v35.__r_.__value_.__l.__size_;
          }

          sub_22564(&v37, v8, size);
          if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v35.__r_.__value_.__l.__data_);
          }

          v7 = v7[1];
          if (v7 == &v31)
          {
            break;
          }

          sub_22564(&v37, ", ", 2);
        }
      }

      if ((v44 & 0x10) != 0)
      {
        v11 = v43;
        if (v43 < v40)
        {
          v43 = v40;
          v11 = v40;
        }

        locale = v39[4].__locale_;
      }

      else
      {
        if ((v44 & 8) == 0)
        {
          v10 = 0;
          v34 = 0;
          goto LABEL_37;
        }

        locale = v39[1].__locale_;
        v11 = v39[3].__locale_;
      }

      v10 = v11 - locale;
      if ((v11 - locale) >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_755AC();
      }

      if (v10 >= 0x17)
      {
        operator new();
      }

      v34 = v11 - locale;
      if (v10)
      {
        memmove(__dst, locale, v10);
      }

LABEL_37:
      *(__dst + v10) = 0;
      __p[0] = v30;
      *(__p + *(v30 - 3)) = v29;
      v37 = v28;
      if (v42 < 0)
      {
        operator delete(v41);
      }

      std::locale::~locale(v39);
      std::iostream::~basic_iostream();
      std::ios::~ios();
      if ((v34 & 0x80u) == 0)
      {
        v13 = __dst;
      }

      else
      {
        v13 = __dst[0];
      }

      if ((v34 & 0x80u) == 0)
      {
        v14 = v34;
      }

      else
      {
        v14 = __dst[1];
      }

      std::string::append(a2, v13, v14);
      if (v34 < 0)
      {
        operator delete(__dst[0]);
      }

      sub_87980(&v31);
      v15 = v4[1];
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
          v16 = v4[2];
          v17 = *v16 == v4;
          v4 = v16;
        }

        while (!v17);
      }

      if (v16 == (a1 + 32))
      {
        break;
      }

      std::string::append(a2, ", ", 2uLL);
      v4 = v16;
    }
  }

  if (*(a1 + 100))
  {
    v18 = sub_2577DC(*(a1 + 96));
    std::to_string(&v35, v18);
    v19 = std::string::insert(&v35, 0, ", pending rout: ", 0x10uLL);
    v20 = *&v19->__r_.__value_.__l.__data_;
    v37 = v19->__r_.__value_.__r.__words[2];
    *__p = v20;
    v19->__r_.__value_.__l.__size_ = 0;
    v19->__r_.__value_.__r.__words[2] = 0;
    v19->__r_.__value_.__r.__words[0] = 0;
    if (v37 >= 0)
    {
      v21 = __p;
    }

    else
    {
      v21 = __p[0];
    }

    if (v37 >= 0)
    {
      v22 = HIBYTE(v37);
    }

    else
    {
      v22 = __p[1];
    }

    std::string::append(a2, v21, v22);
    if (SHIBYTE(v37) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v35.__r_.__value_.__l.__data_);
    }

    if ((*(a1 + 100) & 1) == 0)
    {
      sub_1EC054();
    }

    sub_22170(&v35, *(a1 + 96));
    v23 = std::string::insert(&v35, 0, ", reason: ", 0xAuLL);
    v24 = *&v23->__r_.__value_.__l.__data_;
    v37 = v23->__r_.__value_.__r.__words[2];
    *__p = v24;
    v23->__r_.__value_.__l.__size_ = 0;
    v23->__r_.__value_.__r.__words[2] = 0;
    v23->__r_.__value_.__r.__words[0] = 0;
    if (v37 >= 0)
    {
      v25 = __p;
    }

    else
    {
      v25 = __p[0];
    }

    if (v37 >= 0)
    {
      v26 = HIBYTE(v37);
    }

    else
    {
      v26 = __p[1];
    }

    std::string::append(a2, v25, v26);
    if (SHIBYTE(v37) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v35.__r_.__value_.__l.__data_);
    }
  }

  return std::string::append(a2, " }", 2uLL);
}

void sub_1839B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  if (a38 < 0)
  {
    operator delete(__p);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  if (*(v38 + 23) < 0)
  {
    operator delete(*v38);
  }

  _Unwind_Resume(exception_object);
}

void sub_183AB4(uint64_t *a1, uint64_t a2)
{
  v2 = a1;
  if (*a1 != a1[1] || a1[3] != a1[4])
  {
    sub_87840(&v48, a2, "", 110);
    v3 = v49;
    if (v49 != &v48)
    {
      v4 = v2 + 16;
      v5 = v2 + 6;
      v46 = v2;
      v47 = v2 + 11;
      do
      {
        v6 = (*(*v3[2] + 152))(v3[2]);
        v7 = v3[2];
        if (v6)
        {
          if (sub_2AB730(v2, v3[2]))
          {
            v8 = *(v7 + 184);
            v9 = *(v7 + 144);
            v10 = sub_108CA8(v9);
            if (*(v7 + 303) < 0)
            {
              sub_54A0(__p, *(v7 + 280), *(v7 + 288));
            }

            else
            {
              *__p = *(v7 + 280);
              v53 = *(v7 + 296);
            }

            if (v10)
            {
              v34 = v4;
            }

            else
            {
              v34 = v5;
            }

            if (v8)
            {
              v35 = v34;
            }

            else
            {
              v35 = v47;
            }

            if (sub_2AB94C(v35, v9, __p))
            {
              if ((v8 & 1) == 0)
              {
                sub_34CDE0(__dst, v7);
                v36 = __dst[1];
                if (__dst[1])
                {
                  v37 = std::__shared_weak_count::lock(__dst[1]);
                  v38 = __dst[0];
                  std::__shared_weak_count::__release_weak(v36);
                  if (v37 && v38)
                  {
                    v39 = v38[6].__vftable;
                    if (SHIBYTE(v38[12].__shared_owners_) < 0)
                    {
                      sub_54A0(__dst, v38[11].__shared_weak_owners_, v38[12].__vftable);
                    }

                    else
                    {
                      *__dst = *&v38[11].__shared_weak_owners_;
                      shared_owners = v38[12].__shared_owners_;
                    }

                    sub_2AB94C(v4, v39, __dst);
                    if (SHIBYTE(shared_owners) < 0)
                    {
                      operator delete(__dst[0]);
                    }

LABEL_68:
                    sub_1A8C0(v37);
                  }

                  else if (v37)
                  {
                    goto LABEL_68;
                  }
                }
              }
            }

LABEL_94:
            if (SHIBYTE(v53) < 0)
            {
              operator delete(__p[0]);
            }
          }
        }

        else if (sub_2AB730(v2, v3[2]))
        {
          v11 = *(v7 + 144);
          if (*(v7 + 303) < 0)
          {
            sub_54A0(__p, *(v7 + 280), *(v7 + 288));
          }

          else
          {
            *__p = *(v7 + 280);
            v53 = *(v7 + 296);
          }

          v12 = sub_108CA8(v11);
          v13 = 11;
          if (*(v7 + 184))
          {
            v13 = 6;
          }

          if (v12)
          {
            v13 = 16;
          }

          v14 = &v2[v13];
          if (sub_23B090(&v2[v13], v11))
          {
            v15 = sub_23B090(v14, v11);
            if (!v15)
            {
              sub_DE7DC("unordered_map::at: key not found");
            }

            v16 = v15;
            v18 = v15[3];
            v17 = v15[4];
            if (v18 != v17)
            {
              v19 = v14;
              v20 = v5;
              v21 = v4;
              if (v53 >= 0)
              {
                v22 = HIBYTE(v53);
              }

              else
              {
                v22 = __p[1];
              }

              if (v53 >= 0)
              {
                v23 = __p;
              }

              else
              {
                v23 = __p[0];
              }

              while (1)
              {
                v24 = *(v18 + 23);
                v25 = v24;
                if (v24 < 0)
                {
                  v24 = v18[1];
                }

                if (v24 == v22)
                {
                  v26 = v25 >= 0 ? v18 : *v18;
                  if (!memcmp(v26, v23, v22))
                  {
                    break;
                  }
                }

                v18 += 3;
                if (v18 == v17)
                {
                  v18 = v17;
                  break;
                }
              }

              v4 = v21;
              v5 = v20;
              v14 = v19;
              v2 = v46;
            }

            if (v17 != v18)
            {
              if (v18 + 3 != v17)
              {
                do
                {
                  if (*(v18 + 23) < 0)
                  {
                    operator delete(*v18);
                  }

                  *v18 = *(v18 + 3);
                  v18[2] = v18[5];
                  *(v18 + 47) = 0;
                  v27 = v18 + 6;
                  *(v18 + 24) = 0;
                  v18 += 3;
                }

                while (v27 != v17);
                v17 = v16[4];
              }

              while (v17 != v18)
              {
                v28 = *(v17 - 1);
                v17 -= 3;
                if (v28 < 0)
                {
                  operator delete(*v17);
                }
              }

              v16[4] = v18;
              if (v16[3] == v18)
              {
                v29 = sub_23B090(v14, v11);
                if (v29)
                {
                  v30 = v29;
                  v31 = v14[1];
                  v32 = v29->__shared_owners_;
                  v33 = vcnt_s8(v31);
                  v33.i16[0] = vaddlv_u8(v33);
                  if (v33.u32[0] > 1uLL)
                  {
                    if (v32 >= *&v31)
                    {
                      v32 %= *&v31;
                    }
                  }

                  else
                  {
                    v32 &= *&v31 - 1;
                  }

                  v40 = *(*v14 + 8 * v32);
                  do
                  {
                    v41 = v40;
                    v40 = v40->__vftable;
                  }

                  while (v40 != v29);
                  if (v41 == v14 + 2)
                  {
                    goto LABEL_84;
                  }

                  v42 = v41[1];
                  if (v33.u32[0] > 1uLL)
                  {
                    if (v42 >= *&v31)
                    {
                      v42 %= *&v31;
                    }
                  }

                  else
                  {
                    v42 &= *&v31 - 1;
                  }

                  if (v42 != v32)
                  {
LABEL_84:
                    if (!v29->__vftable)
                    {
                      goto LABEL_85;
                    }

                    v43 = v29->~__shared_weak_count_0;
                    if (v33.u32[0] > 1uLL)
                    {
                      if (v43 >= *&v31)
                      {
                        v43 %= *&v31;
                      }
                    }

                    else
                    {
                      v43 &= *&v31 - 1;
                    }

                    if (v43 != v32)
                    {
LABEL_85:
                      *(*v14 + 8 * v32) = 0;
                    }
                  }

                  v44 = v29->__vftable;
                  if (v29->__vftable)
                  {
                    v45 = v44->~__shared_weak_count_0;
                    if (v33.u32[0] > 1uLL)
                    {
                      if (v45 >= *&v31)
                      {
                        v45 = (v45 % *&v31);
                      }
                    }

                    else
                    {
                      v45 = (v45 & (*&v31 - 1));
                    }

                    if (v45 != v32)
                    {
                      *(*v14 + 8 * v45) = v41;
                      v44 = v29->__vftable;
                    }
                  }

                  *v41 = v44;
                  v29->__vftable = 0;
                  --v14[3];
                  __dst[0] = v29 + 1;
                  sub_11C50(__dst);
                  operator delete(v30);
                }
              }
            }
          }

          goto LABEL_94;
        }

        v3 = v3[1];
      }

      while (v3 != &v48);
    }

    sub_87980(&v48);
  }
}

void sub_183FA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  sub_1A8C0(v27);
  if (a27 < 0)
  {
    operator delete(__p);
  }

  sub_87980(&a12);
  _Unwind_Resume(a1);
}

CFDictionaryRef sub_184010(void *a1)
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
        sub_18727C((16 * v6), v3 + 32, v3 + 7);
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
        sub_18727C(v5, v3 + 32, v3 + 7);
        v5 += 16;
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

void sub_1841B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, void **a15)
{
  a15 = &a12;
  sub_65830(&a15);
  _Unwind_Resume(a1);
}

void sub_1841F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
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
      v38 = 425;
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
    v14 = (*(*v13 + 120))(v13, a2, a3, a4, a5, 0, 0, 0);
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
        v38 = 431;
        v39 = 1024;
        *v40 = a3;
        *&v40[4] = 1024;
        *&v40[6] = v14;
        _os_log_impl(&dword_0, v20, OS_LOG_TYPE_DEBUG, "%25s:%-5d chain->GetDSPProperty(%u): %d.", buf, 0x1Eu);
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
        v38 = 432;
        v39 = 2080;
        *v40 = v29;
        *&v40[8] = 2080;
        v41 = v30;
        v42 = 1024;
        v43 = v14;
        _os_log_impl(&dword_0, v26, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (status) [error status is an error]: chain->GetDSPProperty failed for AU (%s) property %s with error %d.", buf, 0x2Cu);
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

void sub_18463C(_Unwind_Exception *exception_object)
{
  if (v2 < 0)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_184670(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_6CDF18;
  a2[1] = v2;
  return result;
}

uint64_t sub_1846B8()
{
  sub_27A4();
  v0 = *(qword_6E94F8 + 24);

  return v0();
}

void sub_184708(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = v1[23];
  v1 += 23;
  sub_477A0(v2);
  *v1 = 0;
  v1[1] = 0;
  *(v1 - 1) = v1;
}

_BYTE *sub_184738(unint64_t *a1, uint64_t a2)
{
  sub_27A4();
  v4 = atomic_load(&qword_6E9558);
  if (v4 == pthread_self())
  {
    v11 = sub_5544(14);
    v12 = *v11;
    if (*v11 && os_log_type_enabled(*v11, OS_LOG_TYPE_ERROR))
    {
      v14 = 136315394;
      v15 = "VirtualAudio_Device.cpp";
      v16 = 1024;
      v17 = 917;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", &v14, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  v5 = atomic_load(a1 + 70);
  if (v5 == pthread_self() || (v6 = atomic_load(a1 + 83), v6 == pthread_self()))
  {
    v8 = sub_5544(14);
    v9 = *v8;
    if (*v8 && os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
    {
      v14 = 136315394;
      v15 = "VirtualAudio_Device.cpp";
      v16 = 1024;
      v17 = 918;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", &v14, 0x12u);
    }

    v10 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v10, "Precondition failure.");
  }

  sub_1481C0(a1, 1);

  return sub_184994(a1, a2, 0, 0, 0);
}

_BYTE *sub_184994(unint64_t *a1, uint64_t a2, int a3, int a4, int a5)
{
  LODWORD(v6) = a4;
  sub_27A4();
  v10 = atomic_load(&qword_6E9558);
  if ((v10 == pthread_self()) != a5)
  {
    v38 = sub_5544(14);
    v39 = *v38;
    if (*v38 && os_log_type_enabled(*v38, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "VirtualAudio_Device.cpp";
      v46 = 1024;
      v47 = 276;
      _os_log_impl(&dword_0, v39, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  if (v6)
  {
    v11 = atomic_load(a1 + 70);
    if (v11 == pthread_self() || (v12 = atomic_load(a1 + 83), v12 == pthread_self()))
    {
      LODWORD(v6) = 1;
    }

    else
    {
      v16 = sub_5544(1);
      v6 = *v16;
      if (*v16)
      {
        if (os_log_type_enabled(*v16, OS_LOG_TYPE_DEFAULT))
        {
          v42 = a1[48];
          sub_68108(&__p, &v42);
          v17 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
          *buf = 136315650;
          *&buf[4] = "VirtualAudio_Device.cpp";
          v46 = 1024;
          v47 = 288;
          v48 = 2080;
          v49[0] = v17;
          _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Expected I/O monitor to be locked on VAD: '%s' but it was already unlocked.", buf, 0x1Cu);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }

        LODWORD(v6) = 0;
      }
    }
  }

  v42 = a1;
  v43 = v6;
  if (!a3)
  {
    goto LABEL_48;
  }

  v13 = a1[31];
  if (!v13)
  {
    goto LABEL_48;
  }

  v15 = *(v13 + 112);
  v14 = *(v13 + 116);
  if (v15)
  {
    if (!v14)
    {
LABEL_34:
      v26 = sub_5544(1);
      v27 = sub_5544(32);
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
        v32 = *(a1[31] + 112);
        v41 = a1[48];
        sub_68108(&__p, &v41);
        v33 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
        *buf = 136315906;
        *&buf[4] = "VirtualAudio_Device.cpp";
        v46 = 1024;
        v47 = 317;
        v48 = 1024;
        LODWORD(v49[0]) = v32;
        WORD2(v49[0]) = 2080;
        *(v49 + 6) = v33;
        _os_log_impl(&dword_0, v31, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Internal configuration change request to restart %u normal IO proc(s) on VAD: '%s'.", buf, 0x22u);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      (*(*a1 + 576))(a1, 0);
      goto LABEL_48;
    }
  }

  else if (!v14)
  {
    goto LABEL_48;
  }

  v18 = sub_5544(1);
  v19 = sub_5544(32);
  v20 = 0;
  *buf = 0x100000002;
  v21 = *(v18 + 8);
  while (1)
  {
    v22 = *&buf[v20];
    if (((v21 & v22) != 0) != ((*(v19 + 8) & v22) != 0))
    {
      break;
    }

    v20 += 4;
    if (v20 == 8)
    {
      goto LABEL_26;
    }
  }

  if ((v21 & v22) == 0)
  {
    v18 = v19;
  }

LABEL_26:
  v23 = *v18;
  if (v23 && os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = *(a1[31] + 116);
    v41 = a1[48];
    sub_68108(&__p, &v41);
    v25 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
    *buf = 136315906;
    *&buf[4] = "VirtualAudio_Device.cpp";
    v46 = 1024;
    v47 = 308;
    v48 = 1024;
    LODWORD(v49[0]) = v24;
    WORD2(v49[0]) = 2080;
    *(v49 + 6) = v25;
    _os_log_impl(&dword_0, v23, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Internal configuration change request to restart %u null IO proc(s) on VAD: '%s'.", buf, 0x22u);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  (*(*a1 + 576))(a1, 1);
  if (*(a1[31] + 112))
  {
    goto LABEL_34;
  }

LABEL_48:
  if (v6)
  {
    sub_9650C(a1 + 58);
  }

  sub_49C48(&__p);
  v34 = a1[55];
  if (v34)
  {
    goto LABEL_55;
  }

  v35 = sub_5544(1);
  v36 = *v35;
  if (*v35 && os_log_type_enabled(*v35, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    *&buf[4] = "VirtualAudio_Device.cpp";
    v46 = 1024;
    v47 = 336;
    _os_log_impl(&dword_0, v36, OS_LOG_TYPE_ERROR, "%25s:%-5d mPropertyManager is NULL", buf, 0x12u);
  }

  v34 = a1[55];
  if (v34)
  {
LABEL_55:
    sub_1850C0(v34, a2);
  }

  result = __p.__r_.__value_.__r.__words[0];
  __p.__r_.__value_.__r.__words[0] = 0;
  if (result)
  {
    sub_1DB63C(result);
    operator delete();
  }

  *(a1 + 936) = 0;
  return result;
}

void sub_1850C0(uint64_t a1)
{
  if ((*(a1 + 136) & 1) == 0)
  {
    v3 = sub_5544(14);
    v4 = *v3;
    if (*v3)
    {
      if (os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
      {
        buf = 136315394;
        buf_4 = "VirtualAudio_DevicePropertyManager.cpp";
        v9 = 1024;
        v10 = 380;
        _os_log_impl(&dword_0, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: VirtualAudio_DevicePropertyManager has not been initialized.", &buf, 0x12u);
      }
    }
  }

  v2 = *(a1 + 32);
  v5[3] = a1 + 32;
  v6 = (*(v2 + 16))(a1 + 32);
  sub_1855BC(a1 + 320);
  sub_ED818(v5, a1);
}

void sub_1854FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, char a16, void *__p)
{
  if (a2)
  {
    sub_1CC130(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1855BC(uint64_t a1)
{
  v2 = (a1 + 8);
  v3 = *a1;
  if (*a1 != a1 + 8)
  {
    do
    {
      v4 = v3[5];
      if (v4 && *(v4 + 8) >= 1)
      {
        v8 = sub_5544(14);
        v9 = *v8;
        if (*v8 && os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
        {
          v11 = 136315394;
          v12 = "VirtualAudio_DevicePropertyManager.cpp";
          v13 = 1024;
          v14 = 34;
          _os_log_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Something holding on to a PropertyCache reference.", &v11, 0x12u);
        }

        exception = __cxa_allocate_exception(0x10uLL);
        std::logic_error::logic_error(exception, "Something holding on to a PropertyCache reference.");
      }

      sub_13D6C0(v3[4]);
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

  sub_1199A8(*(a1 + 8));
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = v2;
}

uint64_t sub_185750(void *a1, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  v13 = *a2;
  v14 = a2[2];
  v15 = a3;
  v16 = a4;
  sub_185D3C(a1 + 34, &v13, &v13);
  if (*a2 == 1936482676)
  {
    return 1;
  }

  v7 = a1[11];
  if (v7)
  {
    v8 = std::__shared_weak_count::lock(v7);
    if (v8)
    {
      v9 = v8;
      v10 = a1[10];
      if (v10)
      {
        v6 = (sub_164A14(v10, a2, sub_1785E4, a1) == 0);
        sub_1A8C0(v9);
        return v6;
      }

      sub_1A8C0(v9);
    }
  }

  v11 = sub_5544(23);
  v6 = *v11;
  if (*v11)
  {
    if (os_log_type_enabled(*v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v18 = "VirtualStream.cpp";
      v19 = 1024;
      v20 = 1095;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "%25s:%-5d VirtualStream::UnregisterRelayedListener() underlying stream is nullptr - This is expected if the stream was destroyed before UnregisterRelayedListener is called", buf, 0x12u);
    }

    return 0;
  }

  return v6;
}

uint64_t sub_185900(uint64_t a1, AudioObjectPropertyAddress *a2, OSStatus (__cdecl *a3)(AudioObjectID, UInt32, const AudioObjectPropertyAddress *, void *), unint64_t a4)
{
  sub_4EBC(a1);
  if (!(*(*a1 + 16))(a1, a2))
  {
    return 1;
  }

  mSelector = a2->mSelector;
  if (a2->mSelector <= 1935762280)
  {
    if (mSelector <= 1635153006)
    {
      if (mSelector == 1165513555 || mSelector == 1633973868)
      {
        goto LABEL_28;
      }

      v9 = 1635152995;
    }

    else if (mSelector > 1886807138)
    {
      if (mSelector == 1886807139)
      {
        goto LABEL_28;
      }

      v9 = 1886807154;
    }

    else
    {
      if (mSelector == 1635153007)
      {
        goto LABEL_28;
      }

      v9 = 1684103987;
    }

LABEL_27:
    if (mSelector == v9)
    {
      goto LABEL_28;
    }

    goto LABEL_33;
  }

  if (mSelector <= 1983996970)
  {
    if (mSelector > 1952997987)
    {
      if (mSelector == 1952997988)
      {
        v11 = sub_6FB1C();
        if (sub_6FE08(v11 + 408, &qword_6E9378))
        {
          v12 = qword_6E9378;
          v13 = dword_6E9380;
          v14 = a3;
          v15 = a4;
          sub_185D3C((v11 + 408), &qword_6E9378, &v12);
        }

        return 1;
      }

      v9 = 1953002354;
      goto LABEL_27;
    }

    if (mSelector != 1935762281)
    {
      v9 = 1937204590;
      goto LABEL_27;
    }

LABEL_28:

    return sub_187528(a2, a3, a4, (a1 + 184));
  }

  if (mSelector > 1986225265)
  {
    if (mSelector == 1986225268)
    {
      goto LABEL_28;
    }

    v9 = 1986225266;
    goto LABEL_27;
  }

  if (mSelector != 1983996971 && mSelector != 1983997011)
  {
LABEL_33:
    sub_185B80(a1, a2, a3, a4);
    return 1;
  }

  if ((*(a1 + 308) & 1) == 0)
  {
    goto LABEL_28;
  }

  return sub_185B80(a1, a2, a3, a4);
}

BOOL sub_185B80(uint64_t a1, AudioObjectPropertyAddress *a2, OSStatus (__cdecl *a3)(AudioObjectID, UInt32, const AudioObjectPropertyAddress *, void *), unint64_t a4)
{
  sub_4E890();
  v8 = *(a1 + 128);
  buf = *a2;
  v9 = sub_74D2C(v8, &buf, a3, a4);
  if (v9)
  {
    v10 = sub_5544(17);
    if (*v10)
    {
      if (os_log_type_enabled(*v10, OS_LOG_TYPE_INFO))
      {
        v12 = *&a2->mSelector;
        mElement = a2->mElement;
        sub_22CE0(&v14);
      }
    }
  }

  return v9 == 0;
}

void sub_185D18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_185D3C(void *a1, unsigned int *a2, uint64_t a3)
{
  v6 = sub_5544(14);
  if (*(v6 + 8))
  {
    v7 = *v6;
    if (*v6)
    {
      if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEBUG))
      {
        sub_22170(&v41, *a3);
        if (v43 >= 0)
        {
          v8 = &v41;
        }

        else
        {
          v8 = v41;
        }

        sub_22170(v39, *(a3 + 4));
        if (v40 >= 0)
        {
          v9 = v39;
        }

        else
        {
          v9 = v39[0];
        }

        v10 = *(a3 + 8);
        v11 = *(a3 + 16);
        v34 = *(a3 + 24);
        sub_22170(v37, *a2);
        v12 = v38;
        v13 = v37[0];
        sub_22170(__p, a2[1]);
        v14 = v37;
        v15 = __p[0];
        if (v12 < 0)
        {
          v14 = v13;
        }

        v16 = a2[2];
        if (v36 >= 0)
        {
          v15 = __p;
        }

        *buf = 136317442;
        v45 = "StandardUtilities.h";
        v46 = 1024;
        v47 = 950;
        v48 = 2080;
        v49 = v8;
        v50 = 2080;
        v51 = v9;
        v52 = 1024;
        v53 = v10;
        v54 = 2048;
        v55 = v11;
        v56 = 2048;
        v57 = v34;
        v58 = 2080;
        v59 = v14;
        v60 = 2080;
        v61 = v15;
        v62 = 1024;
        v63 = v16;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d Attempting to unregister ClientCallbackInfo (mAddress.mSelector: '%s'; mAddress.mScope: '%s'; mAddress.mElement: %u; mProc: %p; mData: %p) for trigger (mSelector: '%s'; mScope: '%s'; mElement: %u)", buf, 0x5Au);
        if (v36 < 0)
        {
          operator delete(__p[0]);
        }

        if (v38 < 0)
        {
          operator delete(v37[0]);
        }

        if (v40 < 0)
        {
          operator delete(v39[0]);
        }

        if (v43 < 0)
        {
          operator delete(v41);
        }
      }
    }
  }

  v41 = a1;
  v42 = 1;
  sub_26C0(a1);
  v17 = sub_70CD4((a1 + 36), a2);
  v18 = v17;
  if (a1 + 37 == v17)
  {
    v31 = sub_5544(14);
    v32 = *v31;
    if (*v31 && os_log_type_enabled(*v31, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v45 = "StandardUtilities.h";
      v46 = 1024;
      v47 = 955;
      _os_log_impl(&dword_0, v32, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Attempt to unregister with an unknown trigger address.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Attempt to unregister with an unknown trigger address.");
  }

  v19 = (v17 + 48);
  for (i = *(v17 + 56); ; i = i[1])
  {
    if (i == v19)
    {
      goto LABEL_39;
    }

    if (sub_17B4A8((i + 2), a3))
    {
      break;
    }
  }

  if (i == v19)
  {
LABEL_39:
    v28 = sub_5544(14);
    v29 = *v28;
    if (*v28 && os_log_type_enabled(*v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v45 = "StandardUtilities.h";
      v46 = 1024;
      v47 = 959;
      _os_log_impl(&dword_0, v29, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Attempt to unregister with a trigger address for which the ClientCallbackInfo has never been registered.", buf, 0x12u);
    }

    v30 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v30, "Attempt to unregister with a trigger address for which the ClientCallbackInfo has never been registered.");
  }

  sub_47BD8(a1);
  v22 = *i;
  v21 = i[1];
  *(v22 + 8) = v21;
  *v21 = v22;
  --v18[8];
  operator delete(i);
  if (!v18[8])
  {
    v23 = v18[1];
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
      v25 = v18;
      do
      {
        v24 = v25[2];
        v26 = *v24 == v25;
        v25 = v24;
      }

      while (!v26);
    }

    if (a1[36] == v18)
    {
      a1[36] = v24;
    }

    v27 = a1[37];
    --a1[38];
    sub_75234(v27, v18);
    sub_4E0BC(v18 + 6);
    operator delete(v18);
  }

  sub_47C90(a1);
  sub_3174(a1);
}

void sub_1861A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  if (a31 < 0)
  {
    operator delete(a26);
  }

  _Unwind_Resume(exception_object);
}

void sub_186244(uint64_t *a1, const void *a2, int a3, __int128 *a4)
{
  v42 = &v42;
  v43 = &v42;
  v44 = 0;
  if (a2)
  {
    v8 = CFGetTypeID(a2);
    if (v8 == CFDictionaryGetTypeID())
    {
      if (*(a4 + 23) < 0)
      {
        sub_54A0(&__dst, *a4, *(a4 + 1));
      }

      else
      {
        __dst = *a4;
        v41 = *(a4 + 2);
      }

      sub_B0954(a1, a2);
      if (SHIBYTE(v41) < 0)
      {
        operator delete(__dst);
      }
    }

    else
    {
      if (v8 == CFArrayGetTypeID())
      {
        if (*(a4 + 23) < 0)
        {
          sub_54A0(v38, *a4, *(a4 + 1));
        }

        else
        {
          *v38 = *a4;
          v39 = *(a4 + 2);
        }

        *a1 = a1;
        a1[1] = a1;
        a1[2] = 0;
        if (CFArrayGetCount(a2) >= 1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(a2, 0);
          v16 = ValueAtIndex;
          if (a3 >= 2)
          {
            v17 = CFGetTypeID(ValueAtIndex);
            if (CFArrayGetTypeID() == v17 || CFDictionaryGetTypeID() == v17)
            {
              if (v39 >= 0)
              {
                v18 = HIBYTE(v39);
              }

              else
              {
                v18 = v38[1];
              }

              sub_B0848(&v46, v18 + 7);
              if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v19 = &v46;
              }

              else
              {
                v19 = v46.__r_.__value_.__r.__words[0];
              }

              if (v18)
              {
                if (v39 >= 0)
                {
                  v20 = v38;
                }

                else
                {
                  v20 = v38[0];
                }

                memmove(v19, v20, v18);
              }

              strcpy(v19 + v18, "- item ");
              std::to_string(&v45, 0);
              if ((v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v21 = &v45;
              }

              else
              {
                v21 = v45.__r_.__value_.__r.__words[0];
              }

              if ((v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                size = HIBYTE(v45.__r_.__value_.__r.__words[2]);
              }

              else
              {
                size = v45.__r_.__value_.__l.__size_;
              }

              v23 = std::string::append(&v46, v21, size);
              v24 = *&v23->__r_.__value_.__l.__data_;
              v47.__r_.__value_.__r.__words[2] = v23->__r_.__value_.__r.__words[2];
              *&v47.__r_.__value_.__l.__data_ = v24;
              v23->__r_.__value_.__l.__size_ = 0;
              v23->__r_.__value_.__r.__words[2] = 0;
              v23->__r_.__value_.__r.__words[0] = 0;
              v25 = std::string::append(&v47, ":", 1uLL);
              v48 = *v25;
              v25->__r_.__value_.__l.__size_ = 0;
              v25->__r_.__value_.__r.__words[2] = 0;
              v25->__r_.__value_.__r.__words[0] = 0;
              if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v47.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v45.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v46.__r_.__value_.__l.__data_);
              }

              sub_B08D4();
            }
          }

          if (v39 >= 0)
          {
            v26 = HIBYTE(v39);
          }

          else
          {
            v26 = v38[1];
          }

          sub_B0848(&v48, v26 + 2);
          if ((v48.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v27 = &v48;
          }

          else
          {
            v27 = v48.__r_.__value_.__r.__words[0];
          }

          if (v26)
          {
            if (v39 >= 0)
            {
              v28 = v38;
            }

            else
            {
              v28 = v38[0];
            }

            memmove(v27, v28, v26);
          }

          strcpy(v27 + v26, "- ");
          sub_B0F60(&v47, v16);
          if ((v47.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v29 = &v47;
          }

          else
          {
            v29 = v47.__r_.__value_.__r.__words[0];
          }

          if ((v47.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v30 = HIBYTE(v47.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v30 = v47.__r_.__value_.__l.__size_;
          }

          std::string::append(&v48, v29, v30);
          if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v47.__r_.__value_.__l.__data_);
          }

          sub_B08D4();
        }

        if (v39 >= 0)
        {
          v31 = HIBYTE(v39);
        }

        else
        {
          v31 = v38[1];
        }

        v32 = &v48;
        sub_B0848(&v48, v31 + 17);
        if ((v48.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v32 = v48.__r_.__value_.__r.__words[0];
        }

        if (v31)
        {
          if (v39 >= 0)
          {
            v33 = v38;
          }

          else
          {
            v33 = v38[0];
          }

          memmove(v32, v33, v31);
        }

        strcpy(v32 + v31, "- < empty array >");
        sub_B08D4();
      }

      v9 = v44;
      *a1 = a1;
      a1[1] = a1;
      a1[2] = 0;
      if (v9)
      {
        v11 = v42;
        v10 = v43;
        v12 = *(v42 + 8);
        v13 = *v43;
        *(v13 + 8) = v12;
        *v12 = v13;
        v14 = *a1;
        *(v14 + 8) = v10;
        *v10 = v14;
        *a1 = v11;
        *(v11 + 8) = a1;
        a1[2] = v9;
        v44 = 0;
        return;
      }
    }
  }

  else
  {
    *a1 = a1;
    a1[1] = a1;
    a1[2] = 0;
  }

  if (v44)
  {
    v34 = v43;
    v35 = *(v42 + 8);
    v36 = *v43;
    *(v36 + 8) = v35;
    *v35 = v36;
    v44 = 0;
    while (v34 != &v42)
    {
      v37 = v34[1];
      sub_D16F0(v34);
      v34 = v37;
    }
  }
}

void sub_18684C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, uint64_t a41, int a42, __int16 a43, char a44, char a45)
{
  if (*(v46 - 105) < 0)
  {
    operator delete(*(v46 - 128));
  }

  sub_20BC1C(v45);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  sub_20BC1C(&a25);
  _Unwind_Resume(a1);
}

_BYTE *sub_186964(_BYTE *a1, CFBooleanRef BOOLean)
{
  if (CFBooleanGetValue(BOOLean))
  {
    v3 = "true";
  }

  else
  {
    v3 = "false";
  }

  return sub_53E8(a1, v3);
}

uint64_t sub_186A44(void *a1, uint64_t a2, uint64_t a3)
{
  if (((*(a1[31] + 16) - *(a1[31] + 8)) & 0x7FFFFFFF8) != 0)
  {
    v4 = sub_5544(14);
    v5 = *v4;
    if (*v4 && os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315394;
      v8 = "VirtualAudio_Device.cpp";
      v9 = 1024;
      v10 = 3492;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareIllegalOperationError): only a single IOProc is supported", &v7, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 1852797029;
  }

  return sub_186B70(a1, a2, a3);
}

uint64_t sub_186B70(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1[31];
  v5 = *(v4 + 8);
  v6 = *(v4 + 16);
  while (v5 != v6)
  {
    v7 = *(*v5 + 8);
    if (*(*v5 + 24) == 1)
    {
      if (v7 == a2 && *(*v5 + 16) == a3)
      {
LABEL_13:
        v10 = sub_5544(14);
        v11 = *v10;
        if (*v10)
        {
          if (os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v18 = "HP_Device.cpp";
            v19 = 1024;
            v20 = 965;
            _os_log_impl(&dword_0, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareIllegalOperationError): An IOProc ID has already been created for the given IOProc", buf, 0x12u);
          }
        }

        exception = __cxa_allocate_exception(0x10uLL);
        *exception = &off_6DDDD0;
        exception[2] = 1852797029;
      }
    }

    else if (v7 == a2)
    {
      goto LABEL_13;
    }

    v5 += 8;
  }

  if (!(*(*a1 + 272))(a1))
  {
    v13 = sub_5544(14);
    v14 = *v13;
    if (*v13 && os_log_type_enabled(*v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v18 = "HP_Device.cpp";
      v19 = 1024;
      v20 = 1001;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareIllegalOperationError): Can't create the IOProc ID in the current thread context.", buf, 0x12u);
    }

    v15 = __cxa_allocate_exception(0x10uLL);
    *v15 = &off_6DDDD0;
    v15[2] = 1852797029;
  }

  v16 = 0;
  if ((*(*a1 + 280))(a1, 0, &v16))
  {
    v8 = a1[31];
    sub_1898F8();
  }

  return 0;
}

void sub_187038(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::exception a13, int a14)
{
  if (a2)
  {
    if (a2 == 2)
    {
      exception_ptr = __cxa_get_exception_ptr(exception_object);
      a13.__vftable = &off_6DDDD0;
      a14 = exception_ptr[2];
      __cxa_begin_catch(exception_object);
      std::exception::~exception(&a13);
    }

    else
    {
      __cxa_begin_catch(exception_object);
    }

    __cxa_end_catch();
    JUMPOUT(0x186CA0);
  }

  _Unwind_Resume(exception_object);
}

void sub_1870C4(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v7 = *a1;
    v8 = v4 - *a1;
    v9 = (v8 >> 3) + 1;
    if (v9 >> 61)
    {
      sub_189A00();
    }

    v10 = v3 - v7;
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

    v12 = (8 * (v8 >> 3));
    v13 = *a2;
    *a2 = 0;
    *v12 = v13;
    v6 = v12 + 1;
    memcpy(0, v7, v8);
    *a1 = 0;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v7)
    {
      operator delete(v7);
    }
  }

  else
  {
    v5 = *a2;
    *a2 = 0;
    *v4 = v5;
    v6 = v4 + 1;
  }

  *(a1 + 8) = v6;
}

void *sub_1871CC(uint64_t a1, void **a2)
{
  result = sub_6F86C(a1, &v3, a2);
  if (!*result)
  {
    operator new();
  }

  return result;
}

void *sub_18727C(void *a1, const UInt8 *a2, const void **a3)
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

  result = CFStringCreateWithBytes(0, a2, v6, 0x8000100u, 0);
  *a1 = result;
  if (!result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  v8 = *a3;
  if (v8)
  {
    result = CFRetain(v8);
  }

  a1[1] = v8;
  return result;
}

void sub_187354(char *a1)
{
  if (a1)
  {
    sub_187354(*a1);
    sub_187354(*(a1 + 1));
    v2 = *(a1 + 7);
    if (v2)
    {
      CFRelease(v2);
    }

    if (a1[55] < 0)
    {
      operator delete(*(a1 + 4));
    }

    operator delete(a1);
  }
}

void sub_1873C8(const void *a1)
{
  if (a1)
  {
    CFRelease(a1);
  }
}

void sub_1873E8(uint64_t a1, const void **a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = (v4 - *a1) >> 3;
    v8 = v7 + 1;
    if ((v7 + 1) >> 61)
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

    v11 = (8 * v7);
    v12 = &v11[-((v4 - *a1) >> 3)];
    *v11 = *a2;
    v5 = v11 + 1;
    *a2 = 0;
    if (v6 != v4)
    {
      v13 = v6;
      v14 = v12;
      do
      {
        *v14++ = *v13;
        *v13++ = 0;
      }

      while (v13 != v4);
      do
      {
        v15 = *v6++;
        sub_1873C8(v15);
      }

      while (v6 != v4);
      v6 = *a1;
    }

    *a1 = v12;
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
    *a2 = 0;
    v5 = v4 + 1;
  }

  *(a1 + 8) = v5;
}

uint64_t sub_187528(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = a4[1];
  if (v4 == a4)
  {
    LOBYTE(v9) = 1;
  }

  else
  {
    v9 = 1;
    do
    {
      v10 = v4[3];
      if (v10)
      {
        v11 = std::__shared_weak_count::lock(v10);
        if (v11)
        {
          v12 = v11;
          v13 = v4[2];
          if (v13 && (*(*v13 + 16))(v4[2], a1))
          {
            v9 &= (*(*v13 + 64))(v13, a1, a2, a3);
          }

          sub_1A8C0(v12);
        }
      }

      v4 = v4[1];
    }

    while (v4 != a4);
  }

  return v9 & 1;
}

BOOL sub_187634(uint64_t a1, AudioObjectPropertyAddress *a2, OSStatus (__cdecl *a3)(AudioObjectID, UInt32, const AudioObjectPropertyAddress *, void *), unint64_t a4)
{
  sub_4DFC0(a1);
  sub_4E890();
  v8 = *(a1 + 268);
  v10 = *a2;
  return sub_74D2C(v8, &v10, a3, a4) == 0;
}

uint64_t sub_1876A4(uint64_t *a1, unsigned int *a2, uint64_t a3, uint64_t a4)
{
  sub_24784(a1[10], a1[11]);
  if (((*(*a1 + 16))(a1, a2) & 1) == 0)
  {
    v17 = sub_5544(14);
    v18 = *v17;
    if (*v17 && os_log_type_enabled(*v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v25 = "ControlSet.h";
      v26 = 1024;
      v27 = 202;
      _os_log_impl(&dword_0, v18, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareUnknownPropertyError): Unsupported property.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 2003332927;
  }

  v8 = a1[10];
  for (LOBYTE(v9) = 1; v8 != a1[11]; v8 += 2)
  {
    if (((*(**v8 + 64))(*v8, a2, a3, a4) & 1) == 0)
    {
      v10 = sub_5544(19);
      v9 = *v10;
      if (*v10)
      {
        if (os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR))
        {
          sub_22170(v22, *a2);
          v11 = v23;
          v12 = v22[0];
          sub_22170(__p, a2[1]);
          v13 = v22;
          if (v11 < 0)
          {
            v13 = v12;
          }

          v14 = __p;
          if (v21 < 0)
          {
            v14 = __p[0];
          }

          v15 = a2[2];
          *buf = 136316162;
          v25 = "ControlSet.h";
          v26 = 1024;
          v27 = 210;
          v28 = 2080;
          v29 = v13;
          v30 = 2080;
          v31 = v14;
          v32 = 1024;
          v33 = v15;
          _os_log_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d UnregisterRelayedListener() failed. selector: '%s'; scope: '%s'; element: %u.", buf, 0x2Cu);
          if (v21 < 0)
          {
            operator delete(__p[0]);
          }

          if (v23 < 0)
          {
            operator delete(v22[0]);
          }
        }

        LOBYTE(v9) = 0;
      }
    }
  }

  return v9 & 1;
}

void sub_187970(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_18799C(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  if (((*(*a1 + 16))(a1) & 1) == 0)
  {
    v34 = sub_5544(14);
    v35 = *v34;
    if (*v34 && os_log_type_enabled(*v34, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "OutputVolumeControl_HAL_Common.cpp";
      v44 = 1024;
      *v45 = 1595;
      _os_log_impl(&dword_0, v35, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareUnknownPropertyError): Unsupported selector, scope, or element", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 2003332927;
  }

  v8 = *a2;
  if (*a2 <= 1919774834)
  {
    if (v8 == 1064725619)
    {
      return 1;
    }

    if (v8 != 1684633187 && v8 != 1836414053)
    {
      goto LABEL_19;
    }

    goto LABEL_13;
  }

  if (v8 <= 1986817376)
  {
    if (v8 == 1919774835)
    {
      *v39 = 1919774835;
      *&v39[4] = *(a1 + 544);
      *buf = *a2;
      *&buf[8] = a2[2];
      *&v45[2] = a3;
      *&v45[10] = a4;
      sub_185D3C((a1 + 152), v39, buf);
      return 1;
    }

    if (v8 != 1986229104)
    {
LABEL_19:
      v14 = sub_5544(14);
      v15 = *v14;
      if (*v14)
      {
        if (os_log_type_enabled(*v14, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "OutputVolumeControl_HAL_Common.cpp";
          v44 = 1024;
          *v45 = 1660;
          _os_log_impl(&dword_0, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareUnknownPropertyError): Unsupported selector, scope, or element", buf, 0x12u);
        }
      }

      v16 = __cxa_allocate_exception(0x10uLL);
      *v16 = &off_6DDDD0;
      v16[2] = 2003332927;
    }

LABEL_13:
    *v39 = *a2;
    *&v39[4] = *(a1 + 544);
    *buf = *a2;
    *&buf[8] = a2[2];
    *&v45[2] = a3;
    *&v45[10] = a4;
    sub_185D3C((a1 + 152), v39, buf);
    v10 = *(a1 + 512);
    if (v10)
    {
      v11 = std::__shared_weak_count::lock(v10);
      if (v11)
      {
        v12 = v11;
        v13 = *(a1 + 504);
        if (v13)
        {
          sub_164A14(v13, v39, sub_305574, a1);
        }

LABEL_53:
        sub_1A8C0(v12);
        return 1;
      }
    }

    return 1;
  }

  if (v8 == 1986817377)
  {
    *v39 = 1986817377;
    *&v39[4] = *(a1 + 544);
    *buf = *a2;
    *&buf[8] = a2[2];
    *&v45[2] = a3;
    *&v45[10] = a4;
    sub_185D3C((a1 + 152), v39, buf);
  }

  else if (v8 != 1987013741)
  {
    goto LABEL_19;
  }

  v41 = 1987013732;
  v42 = *(a1 + 544);
  *buf = *a2;
  *&buf[8] = a2[2];
  *&v45[2] = a3;
  *&v45[10] = a4;
  sub_185D3C((a1 + 152), &v41, buf);
  if (*(a1 + 727) == 1)
  {
    v17 = *(a1 + 512);
    if (v17)
    {
      v12 = std::__shared_weak_count::lock(v17);
      if (v12)
      {
        v18 = *(a1 + 504);
        if (v18)
        {
          sub_164A14(*(a1 + 504), &v41, sub_305574, a1);
          v19 = sub_5544(19);
          v20 = *v19;
          if (*v19 && os_log_type_enabled(*v19, OS_LOG_TYPE_DEBUG))
          {
            sub_22170(v39, 0x766F6C64u);
            v21 = v40;
            v22 = *v39;
            sub_22170(__p, *(a1 + 544));
            v23 = v39;
            if (v21 < 0)
            {
              v23 = v22;
            }

            if (v38 >= 0)
            {
              v24 = __p;
            }

            else
            {
              v24 = __p[0];
            }

            v25 = *(a1 + 548);
            *buf = 136316418;
            *&buf[4] = "OutputVolumeControl_HAL_Common.cpp";
            v44 = 1024;
            *v45 = 1624;
            *&v45[4] = 2048;
            *&v45[6] = v18;
            *&v45[14] = 2080;
            *&v45[16] = v23;
            v46 = 2080;
            v47 = v24;
            v48 = 1024;
            v49 = v25;
            _os_log_impl(&dword_0, v20, OS_LOG_TYPE_DEBUG, "%25s:%-5d RemovePropertyListener() succeeded. mPhysicalDevice: %p; selector: '%s'; scope: '%s'; element: %u.", buf, 0x36u);
            if (v38 < 0)
            {
              operator delete(__p[0]);
            }

            if (v40 < 0)
            {
              operator delete(*v39);
            }
          }

          goto LABEL_53;
        }
      }
    }

    else
    {
      v12 = 0;
    }

    v26 = sub_5544(19);
    v27 = *v26;
    if (*v26 && os_log_type_enabled(*v26, OS_LOG_TYPE_DEFAULT))
    {
      sub_22170(v39, 0x766F6C64u);
      v28 = v40;
      v29 = *v39;
      sub_22170(__p, *(a1 + 544));
      v30 = v39;
      if (v28 < 0)
      {
        v30 = v29;
      }

      if (v38 >= 0)
      {
        v31 = __p;
      }

      else
      {
        v31 = __p[0];
      }

      v32 = *(a1 + 548);
      *buf = 136316162;
      *&buf[4] = "OutputVolumeControl_HAL_Common.cpp";
      v44 = 1024;
      *v45 = 1631;
      *&v45[4] = 2080;
      *&v45[6] = v30;
      *&v45[14] = 2080;
      *&v45[16] = v31;
      v46 = 1024;
      LODWORD(v47) = v32;
      _os_log_impl(&dword_0, v27, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Unable to lock PhysicalDevice unregistering listener; selector: '%s'; scope: '%s'; element: %u.", buf, 0x2Cu);
      if (v38 < 0)
      {
        operator delete(__p[0]);
      }

      if (v40 < 0)
      {
        operator delete(*v39);
      }
    }

    if (v12)
    {
      goto LABEL_53;
    }
  }

  return 1;
}

void sub_187F9C(_Unwind_Exception *a1)
{
  if (v3 < 0)
  {
    operator delete(v2);
  }

  sub_1A8C0(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_187FFC(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (!a1)
  {
    v12 = sub_5544(14);
    v13 = *v12;
    if (!*v12 || !os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    v21 = 136315394;
    v22 = "HP_HardwarePlugInInterface.cpp";
    v23 = 1024;
    v24 = 398;
    v14 = "%25s:%-5d EXCEPTION (kAudioHardwareIllegalOperationError) [inSelf is NULL]: HP_HardwarePlugIn_DeviceCreateIOProcID: no plug-in";
LABEL_17:
    _os_log_impl(&dword_0, v13, OS_LOG_TYPE_ERROR, v14, &v21, 0x12u);
    goto LABEL_18;
  }

  if (!a3)
  {
    v15 = sub_5544(14);
    v13 = *v15;
    if (!*v15 || !os_log_type_enabled(*v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    v21 = 136315394;
    v22 = "HP_HardwarePlugInInterface.cpp";
    v23 = 1024;
    v24 = 399;
    v14 = "%25s:%-5d EXCEPTION (kAudioHardwareIllegalOperationError) [inProc is NULL]: HP_HardwarePlugIn_DeviceCreateIOProcID: no IOProc to add";
    goto LABEL_17;
  }

  if (!a5)
  {
    v16 = sub_5544(14);
    v13 = *v16;
    if (*v16 && os_log_type_enabled(*v16, OS_LOG_TYPE_ERROR))
    {
      v21 = 136315394;
      v22 = "HP_HardwarePlugInInterface.cpp";
      v23 = 1024;
      v24 = 400;
      v14 = "%25s:%-5d EXCEPTION (kAudioHardwareIllegalOperationError) [outIOProcID is NULL]: HP_HardwarePlugIn_DeviceCreateIOProcID: nowhere to put the return value";
      goto LABEL_17;
    }

LABEL_18:
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 1852797029;
  }

  sub_2820();
  v9 = sub_3D90(a2);
  if (!v9 || (v10 = v9[3], v10 != 1633773415) && v10 != 1633969526)
  {
    v18 = sub_5544(14);
    v19 = *v18;
    if (*v18 && os_log_type_enabled(*v18, OS_LOG_TYPE_ERROR))
    {
      v21 = 136315394;
      v22 = "HP_HardwarePlugInInterface.cpp";
      v23 = 1024;
      v24 = 404;
      _os_log_impl(&dword_0, v19, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareBadDeviceError) [theDevice is NULL]: HP_HardwarePlugIn_DeviceCreateIOProcID: no device with given ID", &v21, 0x12u);
    }

    v20 = __cxa_allocate_exception(0x10uLL);
    *v20 = &off_6DDDD0;
    v20[2] = 560227702;
  }

  *a5 = (*(*v9 + 296))(v9, a3, a4);
  return 0;
}

void sub_188314(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    v3 = __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      v4 = v3[2];
    }

    __cxa_end_catch();
    JUMPOUT(0x1880B0);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_188374(uint64_t a1)
{
  if (*a1)
  {
    v2 = sub_5544(14);
    v3 = *v2;
    if (*v2 && os_log_type_enabled(*v2, OS_LOG_TYPE_ERROR))
    {
      *v5 = 136315394;
      *&v5[4] = "VirtualAudio_Utilities.cpp";
      v6 = 1024;
      v7 = 469;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d The destroyed object tracker has not been detached. Manually executing DestroyObjects, which may be unsafe.", v5, 0x12u);
    }

    sub_13F488(*a1);
    if (*a1)
    {
      sub_189A18(*a1);
      operator delete();
    }

    *a1 = 0;
  }

  *(a1 + 32) = &off_6BA7D0;
  sub_477A0(*(a1 + 72));
  *v5 = a1 + 40;
  sub_1884C0(v5);
  *v5 = a1 + 8;
  sub_DECD0(v5);
  return a1;
}

void sub_1884B4(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_1CC130(a1);
}

void sub_1884C0(void ***a1)
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
        v4 -= 7;
        sub_188544(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_188544(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    operator delete(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    a1[2] = v3;

    operator delete(v3);
  }
}

void sub_18859C(uint64_t a1, uint64_t **a2, unint64_t a3, uint64_t a4, int a5)
{
  if (!sub_10AA80())
  {
    if (!sub_45168())
    {
      return;
    }

    sub_27A4();
    v45 = atomic_load(&qword_6E9558);
    if (v45 != pthread_self())
    {
      v78 = sub_5544(14);
      v79 = sub_468EC(1, *v78, *(v78 + 8));
      v80 = v79;
      if (v79 && os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "VirtualAudio_PlugIn.mm";
        *&buf[12] = 1024;
        *&buf[14] = 7910;
        _os_log_impl(&dword_0, v80, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: The routing mutex is not held by this thread", buf, 0x12u);
      }
    }

    v46 = sub_758D4(1986291046, 0, *a2, a2[1]);
    if (!v46)
    {
      v103 = sub_5544(14);
      v104 = sub_468EC(1, *v103, *(v103 + 8));
      v105 = v104;
      if (v104 && os_log_type_enabled(v104, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "VirtualAudio_PlugIn.mm";
        *&buf[12] = 1024;
        *&buf[14] = 7913;
        _os_log_impl(&dword_0, v105, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): No default VAD present", buf, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "No default VAD present");
    }

    v47 = sub_9F278(v46, 1);
    v48 = sub_17DDA0(a1, v47, 1886613611);
    v49 = *a2;
    v50 = a2[1];
    if (*a2 == v50)
    {
      return;
    }

    v51 = HIDWORD(a3);
    v53 = a3 != 1668703084 && a3 != 1668576377;
    v107 = v53;
    v54 = v48 ^ 1;
    while (1)
    {
      v55 = *v49;
      v56 = sub_9F278(*v49, 1);
      sub_44E44(&__p, v56);
      if (sub_17DDA0(a1, &__p, 1886613611))
      {
        break;
      }

LABEL_118:
      sub_477A0(__p.__r_.__value_.__l.__size_);
      if (++v49 == v50)
      {
        return;
      }
    }

    v57 = sub_189600();
    if (v51 == 1918990112)
    {
      v58 = v57;
    }

    else
    {
      v58 = 0;
    }

    *buf = 0x273706163;
    *&buf[8] = 0;
    v59 = sub_18953C(v55);
    *(&v62 + 1) = v60;
    *&v62 = v59;
    v61 = v62 >> 32;
    if ((v61 & 0x100000000) != 0)
    {
      v63 = v61;
    }

    else
    {
      v63 = 0;
    }

    v64 = *sub_5544(2);
    v65 = v64;
    if (v64)
    {
      v66 = v64;
      if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
      {
        v116 = *(v55 + 384);
        sub_68108(&v110, &v116);
        v67 = &v110;
        if ((v110.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v67 = v110.__r_.__value_.__r.__words[0];
        }

        *buf = 136315906;
        v68 = "active";
        if ((v63 == 0) | v58 & 1)
        {
          v68 = "none";
        }

        *&buf[4] = "VirtualAudio_PlugIn.mm";
        *&buf[12] = 1024;
        *&buf[14] = 7924;
        *&buf[18] = 2080;
        *&buf[20] = v67;
        *&buf[28] = 2080;
        *&buf[30] = v68;
        _os_log_impl(&dword_0, v66, OS_LOG_TYPE_DEFAULT, "%25s:%-5d VA/HAL Speaker protection for VAD '%s' is %s.", buf, 0x26u);
        if (SHIBYTE(v110.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v110.__r_.__value_.__l.__data_);
        }
      }
    }

    v69 = sub_DD858();
    if (sub_1192CC(v69) == 3)
    {
      v70 = 1;
      if (v58)
      {
        goto LABEL_98;
      }

LABEL_112:
      if (*(v55 + 384) == 1986291046)
      {
        v74 = (v63 == 0) & v70;
      }

      else
      {
        v74 = v63 == 0;
      }

      if (v74 == 1 && sub_DD858())
      {
        v90 = *sub_5544(2);
        v92 = v91 = v90;
        if (os_log_type_enabled(v92, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_fault_impl(&dword_0, v90, OS_LOG_TYPE_FAULT, "Speaker Protection is not active on speaker route", buf, 2u);
        }

LABEL_152:

        std::terminate();
      }

      goto LABEL_117;
    }

    if (v51 <= 1987077986)
    {
      if (v51 != 1768057203)
      {
        v73 = 1919776355;
LABEL_109:
        if (v51 != v73)
        {
          goto LABEL_111;
        }
      }
    }

    else if (v51 != 1987077987 && v51 != 1987081839)
    {
      v73 = 1987081833;
      goto LABEL_109;
    }

    if (!a5)
    {
      v70 = 0;
      if (!v58)
      {
        goto LABEL_112;
      }

LABEL_98:
      if (v63)
      {
        v71 = *sub_5544(2);
        v72 = v71;
        if (v71 && os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "VirtualAudio_PlugIn.mm";
          *&buf[12] = 1024;
          *&buf[14] = 7938;
          _os_log_impl(&dword_0, v72, OS_LOG_TYPE_ERROR, "%25s:%-5d RawModeDisablesSpeakerProcessing is active, but Speaker Protection is also active in HAL", buf, 0x12u);
        }
      }

LABEL_117:
      if (!((*(v55 + 384) == 1986291046) | (v70 | v54) & 1))
      {
        v84 = sub_5544(14);
        v85 = sub_468EC(1, *v84, *(v84 + 8));
        v86 = v85;
        if (v85)
        {
          v87 = v85;
          if (os_log_type_enabled(v87, OS_LOG_TYPE_ERROR))
          {
            v116 = *(v55 + 384);
            sub_68108(&v110, &v116);
            v88 = (v110.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v110 : v110.__r_.__value_.__r.__words[0];
            *buf = 136315650;
            *&buf[4] = "VirtualAudio_PlugIn.mm";
            *&buf[12] = 1024;
            *&buf[14] = 7957;
            *&buf[18] = 2080;
            *&buf[20] = v88;
            _os_log_impl(&dword_0, v87, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): Unexpected HAL speaker protection for VAD %s. Error as default route has *VP* speaker protection", buf, 0x1Cu);
            if (SHIBYTE(v110.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v110.__r_.__value_.__l.__data_);
            }
          }
        }

        v89 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v89, "Unexpected HAL speaker protection for VAD %s. Error as default route has *VP* speaker protection");
      }

      goto LABEL_118;
    }

LABEL_111:
    v70 = v107;
    if (!v58)
    {
      goto LABEL_112;
    }

    goto LABEL_98;
  }

  sub_27A4();
  v7 = atomic_load(&qword_6E9558);
  if (v7 != pthread_self())
  {
    v75 = sub_5544(14);
    v76 = sub_468EC(1, *v75, *(v75 + 8));
    v77 = v76;
    if (v76 && os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "VirtualAudio_PlugIn.mm";
      *&buf[12] = 1024;
      *&buf[14] = 7836;
      _os_log_impl(&dword_0, v77, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: The routing mutex is not held by this thread", buf, 0x12u);
    }
  }

  if ((sub_10AA80() & 1) == 0)
  {
    v93 = sub_5544(14);
    v94 = sub_468EC(1, *v93, *(v93 + 8));
    v95 = v94;
    if (v94 && os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "VirtualAudio_PlugIn.mm";
      *&buf[12] = 1024;
      *&buf[14] = 7837;
      _os_log_impl(&dword_0, v95, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    v96 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v96, "Precondition failure.");
  }

  v9 = *a2;
  v8 = a2[1];
  if (*a2 != v8)
  {
    v10 = 0;
    v11 = 0;
    do
    {
      v12 = *v9;
      v13 = sub_9F278(*v9, 1);
      if (sub_17DDA0(a1, v13, 1886613611))
      {
        *buf = 0x273706163;
        *&buf[8] = 0;
        v14 = sub_18953C(v12);
        v16 = v15;
        v116 = *"cpsdptuo";
        v117 = 0;
        v17 = CFStringCreateWithBytes(0, "dsp chain name", 14, 0x8000100u, 0);
        v115 = v17;
        if (!v17)
        {
          v81 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v81, "Could not construct");
        }

        cf = 0;
        v113 = 8;
        v113 = (*(*v12 + 64))(v12, &v116, 8, v17);
        if (v113 != 8)
        {
          v42 = sub_5544(14);
          v43 = sub_468EC(1, *v42, *(v42 + 8));
          v44 = v43;
          if (v43 && os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            *&buf[4] = "VirtualAudio_PlugIn.mm";
            *&buf[12] = 1024;
            *&buf[14] = 7849;
            *&buf[18] = 1024;
            *&buf[20] = v113;
            _os_log_impl(&dword_0, v44, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: Invalid chain name size of %u returned by GetPropertyDataSize", buf, 0x18u);
          }
        }

        (*(*v12 + 72))(v12, &v116, 8, v115, &v113, &cf);
        if (cf)
        {
          v112 = cf;
          v18 = CFGetTypeID(cf);
          if (v18 != CFStringGetTypeID())
          {
            v83 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v83, "Could not construct");
          }

          if (!v112)
          {
            v82 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v82, "Could not construct");
          }

          sub_53E8(&__p, "<none>");
          v19 = v112;
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            sub_54A0(buf, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
          }

          else
          {
            *buf = __p;
          }

          if (v19 && (TypeID = CFStringGetTypeID(), TypeID == CFGetTypeID(v19)))
          {
            sub_1DAFFC(&v110, v19);
            if (buf[23] < 0)
            {
              operator delete(*buf);
            }
          }

          else
          {
            v110 = *buf;
          }

          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if (v112)
          {
            CFRelease(v112);
          }
        }

        else
        {
          sub_53E8(&v110, "<none>");
        }

        if (v115)
        {
          CFRelease(v115);
        }

        size = SHIBYTE(v110.__r_.__value_.__r.__words[2]);
        if ((v110.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v22 = &v110;
        }

        else
        {
          v22 = v110.__r_.__value_.__r.__words[0];
        }

        if ((v110.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          size = v110.__r_.__value_.__l.__size_;
        }

        v23 = v22 + size;
        if (size >= 7)
        {
          v24 = v22;
          do
          {
            v25 = memchr(v24, 115, size - 6);
            if (!v25)
            {
              break;
            }

            if (*v25 == 1634037875 && *(v25 + 3) == 1919249249)
            {
              goto LABEL_41;
            }

            v24 = (v25 + 1);
            size = v23 - v24;
          }

          while (v23 - v24 > 6);
        }

        v25 = v23;
LABEL_41:
        *(&v28 + 1) = v16;
        *&v28 = v14;
        v27 = v28 >> 32;
        v30 = v25 != v23 && v25 - v22 != -1;
        if ((v27 & 0x100000000) != 0)
        {
          v31 = v27 != 0;
        }

        else
        {
          v31 = v30;
        }

        v32 = *sub_5544(2);
        v33 = v32;
        if (v32)
        {
          v34 = v32;
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
          {
            v35 = v8;
            v36 = v10;
            v37 = v11;
            v38 = SHIBYTE(v110.__r_.__value_.__r.__words[2]);
            v39 = v110.__r_.__value_.__r.__words[0];
            v116 = v12[48];
            sub_68108(&__p, &v116);
            v40 = &v110;
            if (v38 < 0)
            {
              v40 = v39;
            }

            p_p = &__p;
            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              p_p = __p.__r_.__value_.__r.__words[0];
            }

            *buf = 136316162;
            *&buf[4] = "VirtualAudio_PlugIn.mm";
            *&buf[12] = 1024;
            *&buf[14] = 7873;
            *&buf[18] = 1024;
            *&buf[20] = v31;
            *&buf[24] = 2080;
            *&buf[26] = v40;
            *&buf[34] = 2080;
            *&buf[36] = p_p;
            _os_log_impl(&dword_0, v34, OS_LOG_TYPE_DEFAULT, "%25s:%-5d SpeakerProtectionActive: %d, chainName: %s for VAD %s", buf, 0x2Cu);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            v11 = v37;
            v10 = v36;
            v8 = v35;
          }
        }

        if (SHIBYTE(v110.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v110.__r_.__value_.__l.__data_);
        }

        ++v10;
        v11 += v31;
      }

      ++v9;
    }

    while (v9 != v8);
    if (v10 > 0)
    {
      if (v10 > 2)
      {
        goto LABEL_157;
      }

      if (v10 == 1)
      {
        if (v11 >= 2)
        {
LABEL_157:
          v97 = sub_5544(2);
          v98 = sub_468EC(3, *v97, *(v97 + 8));
          v99 = v98;
          if (v98 && os_log_type_enabled(v98, OS_LOG_TYPE_DEFAULT))
          {
            v100 = *(a1 + 168);
            *buf = 136316162;
            *&buf[4] = "VirtualAudio_PlugIn.mm";
            *&buf[12] = 1024;
            *&buf[14] = 7888;
            *&buf[18] = 1024;
            *&buf[20] = v10;
            *&buf[24] = 1024;
            *&buf[26] = v11;
            *&buf[30] = 1024;
            *&buf[32] = v100;
            _os_log_impl(&dword_0, v99, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Speaker protection checks failed! VADs routed to speaker: %d, VADs with speaker protection: %d, Policy Mute: %d", buf, 0x24u);
          }

          v90 = *sub_5544(2);
          v102 = v101 = v90;
          if (os_log_type_enabled(v102, OS_LOG_TYPE_FAULT))
          {
            *buf = 0;
            _os_log_fault_impl(&dword_0, v90, OS_LOG_TYPE_FAULT, "Speaker Protection checks failed", buf, 2u);
          }

          goto LABEL_152;
        }
      }

      else if (!*(a1 + 168) || v11 > 1)
      {
        goto LABEL_157;
      }
    }
  }
}

uint64_t sub_18953C(uint64_t a1)
{
  if (sub_E1688(a1))
  {
    v2 = 2003329396;
    if (sub_E16FC(a1))
    {
      return sub_E1770(a1);
    }
  }

  else
  {
    return 2003332927;
  }

  return v2;
}

uint64_t sub_189600()
{
  if ((byte_6E847A & 1) == 0)
  {
    v6 = 0;
    v0 = sub_1235F4(@"RawModeDisablesSpeakerProcessing", @"com.apple.audio.virtualaudio", &v6);
    if (v0)
    {
      kind = caulk::build::detail::get_kind(v0);
      byte_6E8479 = kind & (v6 != 0);
      v2 = *sub_5544(14);
      v3 = v2;
      if (v2 && os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        v4 = "enabled";
        v8 = "RunTimeDefaults.mm";
        *buf = 136315650;
        if (byte_6E8479)
        {
          v4 = "disabled";
        }

        v9 = 1024;
        v10 = 1520;
        v11 = 2080;
        v12 = v4;
        _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Speaker EQ & Speaker Protection will be %s in raw mode", buf, 0x1Cu);
      }
    }

    byte_6E847A = 1;
  }

  return byte_6E8479;
}

uint64_t sub_18974C(uint64_t a1, char a2)
{
  v3 = 0;
  v5[0] = a2;
  v6 = 0;
  (*(*a1 + 448))(a1, &v3, v4, 1869968496);
  return sub_DD7C4(v5);
}

void sub_1897F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_DD7C4(va);
  _Unwind_Resume(a1);
}

void sub_189808(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 != a4)
  {
    sub_1869B8();
  }
}

void sub_1898C4(void *a1)
{
  __cxa_begin_catch(a1);
  do
  {
    v2 = *v1;
    sub_D16F0(v1);
    v1 = v2;
  }

  while (v2);
  __cxa_rethrow();
}

void sub_1899E4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_140D84(va, 0);
  _Unwind_Resume(a1);
}

uint64_t *sub_189A18(uint64_t *a1)
{
  sub_13F488(a1);
  v2 = *a1;
  if (*a1)
  {
    a1[1] = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_189A54(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_5544(2);
  if (*(v4 + 8))
  {
    v5 = *v4;
    if (v5)
    {
      v6 = v5;
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        v7 = *(a1 + 16);
        v13 = 136315650;
        v14 = "VirtualAudio_PlugIn.mm";
        v15 = 1024;
        v16 = 418;
        v17 = 2048;
        v18 = v7;
        _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEBUG, "%25s:%-5d Destroying objects for VirtualAudio_DestroyedObjectTracker %p.", &v13, 0x1Cu);
      }
    }
  }

  sub_27A4();
  v8 = atomic_load(&qword_6E9558);
  if (v8 != pthread_self())
  {
    if (dword_6F5AA8++)
    {
      v10 = *sub_5544(2);
      v11 = v10;
      if (v10 && os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v13 = 136315394;
        v14 = "VirtualAudio_PlugIn.mm";
        v15 = 1024;
        v16 = 419;
        _os_log_impl(&dword_0, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d Destruction is executing while the routing mutex is not held. While this indicates a logic error (this should not be possible), it should have no direct implications.", &v13, 0x12u);
      }
    }
  }

  sub_1DB7C8(&v13);
  v12 = *(a1 + 16);
  if (v12)
  {
    sub_189A18(v12);
    operator delete();
  }

  sub_1DB63C(&v13);
  sub_21991C(a2, 1920099684);
}

void sub_189C28(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_189C34(uint64_t a1, int a2)
{
  v2 = a1 + 856;
  v3 = 8;
  if (a2)
  {
    v3 = 32;
  }

  v4 = 24;
  if (!a2)
  {
    v4 = 0;
  }

  v5 = -991146299 * ((*(v2 + v3) - *(v2 + v4)) >> 4);
  if (!v5)
  {
    return 0;
  }

  LODWORD(v7) = 0;
  for (i = 0; i != v5; ++i)
  {
    v9 = sub_4CF4(v2, a2, i);
    v10 = (*(**(v9 + 192) + 152))(*(v9 + 192));
    if (v10 <= v7)
    {
      v7 = v7;
    }

    else
    {
      v7 = v10;
    }
  }

  return v7;
}

uint64_t sub_189D00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_51AF8(a1);
  v6 = a1 + 856;
  v7 = 8;
  if (a2)
  {
    v7 = 32;
  }

  v8 = 24;
  if (!a2)
  {
    v8 = 0;
  }

  v9 = -991146299 * ((*(v6 + v7) - *(v6 + v8)) >> 4);
  if (v9 < 1)
  {
    return 0;
  }

  v10 = (*(*a1 + 344))(a1, a2);
  v11 = 1;
  do
  {
    v12 = v11;
    v13 = sub_4CF4(v6, a2, v11 - 1);
    v14 = sub_17992C(*(v13 + 192), a3);
    ++v11;
    if (v14)
    {
      v15 = 0;
    }

    else
    {
      v15 = v12 < v9;
    }
  }

  while (v15);
  v16 = v14 ? 2003329396 : 0;
  if (!v14)
  {
    return 0;
  }

  do
  {
    v17 = sub_4CF4(v6, a2, v11 - 2);
    sub_17992C(*(v17 + 192), v10);
    --v11;
  }

  while (v11 > 1);
  return v16;
}

uint64_t sub_189E38(uint64_t a1, int a2)
{
  sub_51AF8(a1);
  v4 = a1 + 856;
  v5 = 8;
  if (a2)
  {
    v5 = 32;
  }

  v6 = 24;
  if (!a2)
  {
    v6 = 0;
  }

  if (*(v4 + v5) == *(v4 + v6))
  {
    v7 = 0;
  }

  else
  {
    v7 = *(*(sub_4CF4(v4, a2, 0) + 192) + 449);
  }

  return v7 & 1;
}

uint64_t sub_189EB4(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 52))
  {
    return 1;
  }

  v8 = v2;
  v9 = v3;
  v7 = *(a1 + 72);
  v6 = sub_17AEA0(a1, a2, &v7);
  if (!v6)
  {
    *(a1 + 56) = v7;
  }

  return !v6;
}

uint64_t sub_189F10(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 52))
  {
    return 1;
  }

  v7[3] = v2;
  v7[4] = v3;
  v7[0] = *(a1 + 64);
  v6 = sub_17B840(a1, a2, v7);
  if (!v6)
  {
    *(a1 + 56) = v7[0];
  }

  return !v6;
}

uint64_t sub_189F6C(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  if (((*(*a1 + 16))(a1) & 1) == 0)
  {
    v14 = sub_5544(14);
    v15 = *v14;
    if (*v14 && os_log_type_enabled(*v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "OutputVolumeControl_HAL_Common.cpp";
      v21 = 1024;
      *v22 = 1501;
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareUnknownPropertyError): Unsupported selector, scope, or element", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 2003332927;
  }

  v8 = *a2;
  if (*a2 > 1919774834)
  {
    if (v8 > 1986817376)
    {
      if (v8 == 1986817377)
      {
        v17[0] = 1986817377;
        *&v17[1] = *(a1 + 544);
        *buf = *a2;
        *&buf[8] = a2[2];
        *&v22[2] = a3;
        v23 = a4;
        sub_17C118((a1 + 152), v17, buf);
      }

      if (v8 == 1987013741)
      {
        v18 = 1987013732;
        v19 = *(a1 + 544);
        *buf = *a2;
        *&buf[8] = a2[2];
        *&v22[2] = a3;
        v23 = a4;
        sub_17C118((a1 + 152), &v18, buf);
      }

LABEL_16:
      v10 = sub_5544(14);
      v11 = *v10;
      if (*v10)
      {
        if (os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "OutputVolumeControl_HAL_Common.cpp";
          v21 = 1024;
          *v22 = 1585;
          _os_log_impl(&dword_0, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareUnknownPropertyError): Unsupported selector, scope, or element", buf, 0x12u);
        }
      }

      v12 = __cxa_allocate_exception(0x10uLL);
      *v12 = &off_6DDDD0;
      v12[2] = 2003332927;
    }

    if (v8 == 1919774835)
    {
      v17[0] = 1919774835;
      *&v17[1] = *(a1 + 544);
      *buf = *a2;
      *&buf[8] = a2[2];
      *&v22[2] = a3;
      v23 = a4;
      sub_17C118((a1 + 152), v17, buf);
    }

    if (v8 != 1986229104)
    {
      goto LABEL_16;
    }

LABEL_13:
    v18 = *a2;
    v19 = *(a1 + 544);
    *buf = *a2;
    *&buf[8] = a2[2];
    *&v22[2] = a3;
    v23 = a4;
    sub_17C118((a1 + 152), &v18, buf);
  }

  if (v8 != 1064725619)
  {
    if (v8 != 1684633187 && v8 != 1836414053)
    {
      goto LABEL_16;
    }

    goto LABEL_13;
  }

  return 1;
}

void sub_18A748(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, std::__shared_weak_count *a23)
{
  if (v24 < 0)
  {
    operator delete(v23);
  }

  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a23)
  {
    sub_1A8C0(a23);
  }

  _Unwind_Resume(exception_object);
}

void sub_18A7D8(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (a4)
  {
    v5 = 1869968496;
  }

  else
  {
    v5 = 1768845428;
  }

  v6 = *(a2 + 24);
  buf = 1836414053;
  *buf_4 = v5;
  v7 = (*(*v6 + 696))(v6, &buf);
  if (v7)
  {
    LODWORD(v11) = *(v7 + 8);
    sub_84508(&buf, (a2 + 8));
    sub_224DD0();
  }

  v8 = sub_5544(14);
  v9 = *v8;
  if (*v8)
  {
    if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
    {
      buf = 136315394;
      *buf_4 = "VirtualAudio_DevicePropertyManager.cpp";
      v14 = 1024;
      v15 = 542;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error) [theMuteControl is NULL]: couldn't get a mute control from device", &buf, 0x12u);
    }
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "couldn't get a mute control from device");
}

void sub_18A9DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  sub_DECD0(&a10);
  v14 = *(v12 + 8);
  if (v14)
  {
    sub_1A8C0(v14);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_18AA34(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v6 = 304;
  }

  else
  {
    v6 = 280;
  }

  if (a4)
  {
    v7 = 312;
  }

  else
  {
    v7 = 288;
  }

  v8 = (*(*(a2 + 24) + v7) - *(*(a2 + 24) + v6)) >> 3;
  result = (*(*a3 + 88))(a3, a4);
  if (result != v8)
  {
    v15 = sub_5544(14);
    v16 = *v15;
    if (*v15 && os_log_type_enabled(*v15, OS_LOG_TYPE_ERROR))
    {
      buf = 136315394;
      buf_4 = "VirtualAudio_DevicePropertyManager.cpp";
      v21 = 1024;
      v22 = 563;
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): The Plugin Device and the Core Device do not have the same number of streams.", &buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "The Plugin Device and the Core Device do not have the same number of streams.");
  }

  *a1 = a1;
  a1[1] = a1;
  a1[2] = 0;
  v10 = *(a2 + 24);
  v11 = *(v10 + v6);
  if (((*(v10 + v7) - v11) & 0x7FFFFFFF8) != 0)
  {
    if ((*(v10 + v6 + 8) - v11) >> 3 && *v11)
    {
      v18 = *(*v11 + 8);
      sub_84508(&buf, (a2 + 8));
      sub_224DD0();
    }

    v12 = sub_5544(14);
    v13 = *v12;
    if (*v12)
    {
      if (os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
      {
        buf = 136315394;
        buf_4 = "VirtualAudio_DevicePropertyManager.cpp";
        v21 = 1024;
        v22 = 570;
        _os_log_impl(&dword_0, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error) [thePluginStream is NULL]: couldn't get a stream from device.", &buf, 0x12u);
      }
    }

    v14 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v14, "couldn't get a stream from device.");
  }

  return result;
}

void sub_18AE60(uint64_t *a1, uint64_t *a2, uint64_t a3, unint64_t a4)
{
  v6 = a2;
  v8 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) < a4)
  {
    sub_2B21EC(a1);
    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
      {
        v10 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v10 = v9;
      }

      sub_2B39B4(a1, v10);
    }

    sub_189A00();
  }

  v11 = a1[1];
  v12 = v11 - v8;
  if (0xAAAAAAAAAAAAAAABLL * ((v11 - v8) >> 3) >= a4)
  {
    if (a2 != a3)
    {
      do
      {
        sub_2B3920(v8, v6);
        v6 += 3;
        v8 += 24;
      }

      while (v6 != a3);
      v11 = a1[1];
    }

    while (v11 != v8)
    {
      v14 = *(v11 - 16);
      if (v14)
      {
        sub_1A8C0(v14);
      }

      v11 -= 24;
    }

    a1[1] = v8;
  }

  else
  {
    if (v11 != v8)
    {
      v13 = (a2 + v12);
      do
      {
        sub_2B3920(v8, v6);
        v6 += 3;
        v8 += 24;
        v12 -= 24;
      }

      while (v12);
      v11 = a1[1];
      v6 = v13;
    }

    a1[1] = sub_2B3974(a1, v6, a3, v11);
  }
}

void sub_18AFF4(uint64_t *a1, char **a2, char **a3, unint64_t a4)
{
  v7 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) < a4)
  {
    sub_2B21AC(a1);
    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v8 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
      if (v8 <= a4)
      {
        v8 = a4;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
      {
        v9 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v9 = v8;
      }

      sub_2B3C44(a1, v9);
    }

    sub_189A00();
  }

  v10 = a1[1] - v7;
  if (0xAAAAAAAAAAAAAAABLL * (v10 >> 3) >= a4)
  {
    sub_2B3A04(a2, a3, v7);
    v13 = v12;
    v14 = a1[1];
    if (v14 != v12)
    {
      v15 = a1[1];
      do
      {
        v17 = *(v15 - 24);
        v15 -= 24;
        v16 = v17;
        if (v17)
        {
          *(v14 - 16) = v16;
          operator delete(v16);
        }

        v14 = v15;
      }

      while (v15 != v13);
    }

    a1[1] = v13;
  }

  else
  {
    v11 = sub_2B3A04(a2, (a2 + v10), v7);
    a1[1] = sub_2B3B58(a1, v11, a3, a1[1]);
  }
}

void sub_1C0D80(void *a1, uint64_t *a2, void *a3, uint64_t a4, uint64_t a5)
{
  a1[1] = 0;
  a1[4] = 0;
  *a1 = a1 + 1;
  a1[2] = 0;
  a1[3] = a1 + 4;
  a1[7] = 0;
  a1[8] = 0;
  a1[5] = 0;
  a1[6] = a1 + 7;
  v25 = 0x696D646600000001;
  v26 = *sub_C53D8();
  v27 = 0;
  v29 = 0;
  v30 = 0;
  __p = 0;
  sub_3FC3D0(a1, &v25, a2[1]);
  v10 = a3[1];
  v25 = 0x696D646600000001;
  *&v26 = 2;
  DWORD2(v26) = 0;
  v27 = 0;
  v29 = 0;
  v30 = 0;
  __p = 0;
  sub_3FC3D0(a1, &v25, v10);
  v25 = 0x696D646600000001;
  v26 = *sub_C53D8();
  v27 = 0;
  v29 = 0;
  v30 = 0;
  __p = 0;
  sub_3FD764(a1, &v25, a5, 0);
  sub_C57B4(&v25, 1, 1768776806, 1214394677);
  sub_3FC3D0(a1, &v25, a2[14]);
  if (__p)
  {
    v29 = __p;
    operator delete(__p);
  }

  DWORD2(v31) = 0;
  *&v31 = 2;
  sub_C8A18(&v25, 1768776806, &v31, 1214394677);
  sub_3FC3D0(a1, &v25, a3[14]);
  if (__p)
  {
    v29 = __p;
    operator delete(__p);
  }

  sub_C57B4(&v25, 1, 1768776806, 1214329654);
  sub_3FC3D0(a1, &v25, a2[10]);
  if (__p)
  {
    v29 = __p;
    operator delete(__p);
  }

  DWORD2(v31) = 0;
  *&v31 = 2;
  sub_C8A18(&v25, 1768776806, &v31, 1214329654);
  sub_3FC3D0(a1, &v25, a3[10]);
  if (__p)
  {
    v29 = __p;
    operator delete(__p);
  }

  sub_C57B4(&v25, 1, 1768776806, 1647718502);
  sub_3FC3D0(a1, &v25, a2[18]);
  if (__p)
  {
    v29 = __p;
    operator delete(__p);
  }

  DWORD2(v31) = 0;
  *&v31 = 2;
  sub_C8A18(&v25, 1768776806, &v31, 1647718502);
  sub_3FC3D0(a1, &v25, a3[18]);
  if (__p)
  {
    v29 = __p;
    operator delete(__p);
  }

  sub_C57B4(&v25, 1, 1768776806, 1647718503);
  sub_3FC3D0(a1, &v25, a2[22]);
  if (__p)
  {
    v29 = __p;
    operator delete(__p);
  }

  DWORD2(v31) = 0;
  *&v31 = 2;
  sub_C8A18(&v25, 1768776806, &v31, 1647718503);
  sub_3FC3D0(a1, &v25, a3[22]);
  if (__p)
  {
    v29 = __p;
    operator delete(__p);
  }

  sub_C57B4(&v25, 1, 1768776806, 1752709424);
  sub_3FC3D0(a1, &v25, a2[26]);
  if (__p)
  {
    v29 = __p;
    operator delete(__p);
  }

  DWORD2(v31) = 0;
  *&v31 = 2;
  sub_C8A18(&v25, 1768776806, &v31, 1752709424);
  sub_3FC3D0(a1, &v25, a3[26]);
  if (__p)
  {
    v29 = __p;
    operator delete(__p);
  }

  sub_C57B4(&v25, 1, 1768776806, 1752709424);
  sub_3FD764(a1, &v25, a4, 0);
  if (__p)
  {
    v29 = __p;
    operator delete(__p);
  }

  if ((sub_48EDC() & 1) != 0 || MGGetBoolAnswer() && MGGetBoolAnswer())
  {
    v11 = 0;
    *&v31 = 0x4864667468646674;
    do
    {
      v12 = *(&v31 + v11);
      sub_C57B4(&v25, 1, 1768776806, v12);
      sub_3FC3D0(a1, &v25, a2[1]);
      if (__p)
      {
        v29 = __p;
        operator delete(__p);
      }

      sub_C57B4(&v25, 1, 1768776806, v12);
      sub_3FD764(a1, &v25, &unk_519130, 0);
      if (__p)
      {
        v29 = __p;
        operator delete(__p);
      }

      v11 += 4;
    }

    while (v11 != 8);
  }

  v24 = a1;
  sub_2B42C4(&v24, 1768776806);
  sub_2B42C4(&v24, 1836021360);
  for (i = 0; i != 20; i += 4)
  {
    sub_2B42C4(&v24, *&aOvpvivpvcgpvcv_0[i]);
  }

  for (j = 0; j != 12; j += 4)
  {
    sub_2B42C4(&v24, *&aComicvmitcmg[j]);
  }

  v25 = 0x696D646600000001;
  *&v26 = 1;
  DWORD2(v26) = 0;
  v27 = 0;
  v29 = 0;
  v30 = 0;
  __p = 0;
  sub_3FC3D0(a1, &v25, a2[2]);
  v15 = a3[2];
  v25 = 0x696D646600000001;
  *&v26 = 3;
  DWORD2(v26) = 0;
  v27 = 0;
  v29 = 0;
  v30 = 0;
  __p = 0;
  sub_3FC3D0(a1, &v25, v15);
  DWORD2(v31) = 0;
  *&v31 = 1;
  sub_C8A18(&v25, 1768776806, &v31, 1214394677);
  sub_3FC3D0(a1, &v25, a2[15]);
  if (__p)
  {
    v29 = __p;
    operator delete(__p);
  }

  DWORD2(v31) = 0;
  *&v31 = 3;
  sub_C8A18(&v25, 1768776806, &v31, 1214394677);
  sub_3FC3D0(a1, &v25, a3[15]);
  if (__p)
  {
    v29 = __p;
    operator delete(__p);
  }

  DWORD2(v31) = 0;
  *&v31 = 1;
  sub_C8A18(&v25, 1768776806, &v31, 1214329654);
  sub_3FC3D0(a1, &v25, a2[11]);
  if (__p)
  {
    v29 = __p;
    operator delete(__p);
  }

  DWORD2(v31) = 0;
  *&v31 = 3;
  sub_C8A18(&v25, 1768776806, &v31, 1214329654);
  sub_3FC3D0(a1, &v25, a3[11]);
  if (__p)
  {
    v29 = __p;
    operator delete(__p);
  }

  DWORD2(v31) = 0;
  *&v31 = 1;
  sub_C8A18(&v25, 1768776806, &v31, 1647718502);
  sub_3FC3D0(a1, &v25, a2[19]);
  if (__p)
  {
    v29 = __p;
    operator delete(__p);
  }

  DWORD2(v31) = 0;
  *&v31 = 3;
  sub_C8A18(&v25, 1768776806, &v31, 1647718502);
  sub_3FC3D0(a1, &v25, a3[19]);
  if (__p)
  {
    v29 = __p;
    operator delete(__p);
  }

  DWORD2(v31) = 0;
  *&v31 = 1;
  sub_C8A18(&v25, 1768776806, &v31, 1647718503);
  sub_3FC3D0(a1, &v25, a2[23]);
  if (__p)
  {
    v29 = __p;
    operator delete(__p);
  }

  DWORD2(v31) = 0;
  *&v31 = 3;
  sub_C8A18(&v25, 1768776806, &v31, 1647718503);
  sub_3FC3D0(a1, &v25, a3[23]);
  if (__p)
  {
    v29 = __p;
    operator delete(__p);
  }

  DWORD2(v31) = 0;
  *&v31 = 1;
  sub_C8A18(&v25, 1768776806, &v31, 1752709424);
  sub_3FC3D0(a1, &v25, a2[27]);
  if (__p)
  {
    v29 = __p;
    operator delete(__p);
  }

  DWORD2(v31) = 0;
  *&v31 = 3;
  sub_C8A18(&v25, 1768776806, &v31, 1752709424);
  sub_3FC3D0(a1, &v25, a3[27]);
  if (__p)
  {
    v29 = __p;
    operator delete(__p);
  }

  v25 = 0x6D6F767000000001;
  *&v26 = 1;
  DWORD2(v26) = 0;
  v27 = 0;
  v29 = 0;
  v30 = 0;
  __p = 0;
  sub_3FD29C(a1, &v25, a2[4]);
  v16 = a3[4];
  v25 = 0x6D6F767000000001;
  *&v26 = 3;
  DWORD2(v26) = 0;
  v27 = 0;
  v29 = 0;
  v30 = 0;
  __p = 0;
  sub_3FD29C(a1, &v25, v16);
  DWORD2(v31) = 0;
  *&v31 = 1;
  sub_C8A18(&v25, 1836021360, &v31, 1214394677);
  sub_3FD29C(a1, &v25, a2[17]);
  if (__p)
  {
    v29 = __p;
    operator delete(__p);
  }

  DWORD2(v31) = 0;
  *&v31 = 3;
  sub_C8A18(&v25, 1836021360, &v31, 1214394677);
  sub_3FD29C(a1, &v25, a3[17]);
  if (__p)
  {
    v29 = __p;
    operator delete(__p);
  }

  DWORD2(v31) = 0;
  *&v31 = 1;
  sub_C8A18(&v25, 1836021360, &v31, 1214329654);
  sub_3FD29C(a1, &v25, a2[13]);
  if (__p)
  {
    v29 = __p;
    operator delete(__p);
  }

  DWORD2(v31) = 0;
  *&v31 = 3;
  sub_C8A18(&v25, 1836021360, &v31, 1214329654);
  sub_3FD29C(a1, &v25, a3[13]);
  if (__p)
  {
    v29 = __p;
    operator delete(__p);
  }

  DWORD2(v31) = 0;
  *&v31 = 1;
  sub_C8A18(&v25, 1836021360, &v31, 1647718502);
  sub_3FD29C(a1, &v25, a2[21]);
  if (__p)
  {
    v29 = __p;
    operator delete(__p);
  }

  DWORD2(v31) = 0;
  *&v31 = 3;
  sub_C8A18(&v25, 1836021360, &v31, 1647718502);
  sub_3FD29C(a1, &v25, a3[21]);
  if (__p)
  {
    v29 = __p;
    operator delete(__p);
  }

  DWORD2(v31) = 0;
  *&v31 = 1;
  sub_C8A18(&v25, 1836021360, &v31, 1647718503);
  sub_3FD29C(a1, &v25, a2[25]);
  if (__p)
  {
    v29 = __p;
    operator delete(__p);
  }

  DWORD2(v31) = 0;
  *&v31 = 3;
  sub_C8A18(&v25, 1836021360, &v31, 1647718503);
  sub_3FD29C(a1, &v25, a3[25]);
  if (__p)
  {
    v29 = __p;
    operator delete(__p);
  }

  DWORD2(v31) = 0;
  *&v31 = 1;
  sub_C8A18(&v25, 1836021360, &v31, 1752709424);
  sub_3FD29C(a1, &v25, a2[29]);
  if (__p)
  {
    v29 = __p;
    operator delete(__p);
  }

  DWORD2(v31) = 0;
  *&v31 = 3;
  sub_C8A18(&v25, 1836021360, &v31, 1752709424);
  sub_3FD29C(a1, &v25, a3[29]);
  if (__p)
  {
    v29 = __p;
    operator delete(__p);
  }

  v25 = 0x6D6F767000000001;
  v26 = *sub_C53D8();
  v27 = 0;
  v29 = 0;
  v30 = 0;
  __p = 0;
  sub_3FD29C(a1, &v25, a2[3]);
  v17 = a3[3];
  v25 = 0x6D6F767000000001;
  *&v26 = 2;
  DWORD2(v26) = 0;
  v27 = 0;
  v29 = 0;
  v30 = 0;
  __p = 0;
  sub_3FD29C(a1, &v25, v17);
  sub_C57B4(&v25, 1, 1836021360, 1214394677);
  sub_3FD29C(a1, &v25, a2[16]);
  if (__p)
  {
    v29 = __p;
    operator delete(__p);
  }

  DWORD2(v31) = 0;
  *&v31 = 2;
  sub_C8A18(&v25, 1836021360, &v31, 1214394677);
  sub_3FD29C(a1, &v25, a3[16]);
  if (__p)
  {
    v29 = __p;
    operator delete(__p);
  }

  sub_C57B4(&v25, 1, 1836021360, 1214329654);
  sub_3FD29C(a1, &v25, a2[12]);
  if (__p)
  {
    v29 = __p;
    operator delete(__p);
  }

  DWORD2(v31) = 0;
  *&v31 = 2;
  sub_C8A18(&v25, 1836021360, &v31, 1214329654);
  sub_3FD29C(a1, &v25, a3[12]);
  if (__p)
  {
    v29 = __p;
    operator delete(__p);
  }

  sub_C57B4(&v25, 1, 1836021360, 1647718502);
  sub_3FD29C(a1, &v25, a2[20]);
  if (__p)
  {
    v29 = __p;
    operator delete(__p);
  }

  DWORD2(v31) = 0;
  *&v31 = 2;
  sub_C8A18(&v25, 1836021360, &v31, 1647718502);
  sub_3FD29C(a1, &v25, a3[20]);
  if (__p)
  {
    v29 = __p;
    operator delete(__p);
  }

  sub_C57B4(&v25, 1, 1836021360, 1647718503);
  sub_3FD29C(a1, &v25, a2[24]);
  if (__p)
  {
    v29 = __p;
    operator delete(__p);
  }

  DWORD2(v31) = 0;
  *&v31 = 2;
  sub_C8A18(&v25, 1836021360, &v31, 1647718503);
  sub_3FD29C(a1, &v25, a3[24]);
  if (__p)
  {
    v29 = __p;
    operator delete(__p);
  }

  sub_C57B4(&v25, 1, 1836021360, 1752709424);
  sub_3FD29C(a1, &v25, a2[28]);
  if (__p)
  {
    v29 = __p;
    operator delete(__p);
  }

  DWORD2(v31) = 0;
  *&v31 = 2;
  sub_C8A18(&v25, 1836021360, &v31, 1752709424);
  sub_3FD29C(a1, &v25, a3[28]);
  if (__p)
  {
    v29 = __p;
    operator delete(__p);
  }

  v25 = 0x6D736D7400000001;
  v26 = *sub_C53D8();
  v27 = 0;
  v29 = 0;
  v30 = 0;
  __p = 0;
  sub_3FD29C(a1, &v25, a2[5]);
  v18 = a3[5];
  v25 = 0x6D736D7400000001;
  *&v26 = 2;
  DWORD2(v26) = 0;
  v27 = 0;
  v29 = 0;
  v30 = 0;
  __p = 0;
  sub_3FD29C(a1, &v25, v18);
  sub_C57B4(&v25, 1, 1836281204, 1214394677);
  sub_3FC3D0(a1, &v25, a2[14]);
  if (__p)
  {
    v29 = __p;
    operator delete(__p);
  }

  DWORD2(v31) = 0;
  *&v31 = 2;
  sub_C8A18(&v25, 1836281204, &v31, 1214394677);
  sub_3FC3D0(a1, &v25, a3[14]);
  if (__p)
  {
    v29 = __p;
    operator delete(__p);
  }

  sub_C57B4(&v25, 1, 1836281204, 1214329654);
  sub_3FC3D0(a1, &v25, a2[10]);
  if (__p)
  {
    v29 = __p;
    operator delete(__p);
  }

  DWORD2(v31) = 0;
  *&v31 = 2;
  sub_C8A18(&v25, 1836281204, &v31, 1214329654);
  sub_3FC3D0(a1, &v25, a3[10]);
  if (__p)
  {
    v29 = __p;
    operator delete(__p);
  }

  sub_C57B4(&v25, 1, 1836281204, 1647718502);
  sub_3FC3D0(a1, &v25, a2[18]);
  if (__p)
  {
    v29 = __p;
    operator delete(__p);
  }

  DWORD2(v31) = 0;
  *&v31 = 2;
  sub_C8A18(&v25, 1836281204, &v31, 1647718502);
  sub_3FC3D0(a1, &v25, a3[18]);
  if (__p)
  {
    v29 = __p;
    operator delete(__p);
  }

  sub_C57B4(&v25, 1, 1836281204, 1647718503);
  sub_3FC3D0(a1, &v25, a2[22]);
  if (__p)
  {
    v29 = __p;
    operator delete(__p);
  }

  DWORD2(v31) = 0;
  *&v31 = 2;
  sub_C8A18(&v25, 1836281204, &v31, 1647718503);
  sub_3FC3D0(a1, &v25, a3[22]);
  if (__p)
  {
    v29 = __p;
    operator delete(__p);
  }

  sub_C57B4(&v25, 1, 1836281204, 1752709424);
  sub_3FC3D0(a1, &v25, a2[26]);
  if (__p)
  {
    v29 = __p;
    operator delete(__p);
  }

  DWORD2(v31) = 0;
  *&v31 = 2;
  sub_C8A18(&v25, 1836281204, &v31, 1752709424);
  sub_3FC3D0(a1, &v25, a3[26]);
  if (__p)
  {
    v29 = __p;
    operator delete(__p);
  }

  v25 = 0x7261772000000001;
  v26 = *sub_C53D8();
  v27 = 0;
  v29 = 0;
  v30 = 0;
  __p = 0;
  sub_3FC3D0(a1, &v25, a2[38]);
  v25 = 0x696D766300000001;
  v26 = *sub_C53D8();
  v27 = 0;
  v29 = 0;
  v30 = 0;
  __p = 0;
  sub_3FC3D0(a1, &v25, a2[9]);
  v19 = a3[9];
  v25 = 0x696D766300000001;
  *&v26 = 2;
  DWORD2(v26) = 0;
  v27 = 0;
  v29 = 0;
  v30 = 0;
  __p = 0;
  sub_3FC3D0(a1, &v25, v19);
  sub_C57B4(&v25, 1, 1768781411, 1752709424);
  sub_3FC3D0(a1, &v25, a2[26]);
  if (__p)
  {
    v29 = __p;
    operator delete(__p);
  }

  DWORD2(v31) = 0;
  *&v31 = 2;
  sub_C8A18(&v25, 1768781411, &v31, 1752709424);
  sub_3FC3D0(a1, &v25, a3[26]);
  if (__p)
  {
    v29 = __p;
    operator delete(__p);
  }

  v25 = 0x696D6F6300000001;
  v26 = *sub_C53D8();
  v27 = 0;
  v29 = 0;
  v30 = 0;
  __p = 0;
  sub_3FC3D0(a1, &v25, a2[9]);
  v20 = a3[9];
  v25 = 0x696D6F6300000001;
  *&v26 = 2;
  DWORD2(v26) = 0;
  v27 = 0;
  v29 = 0;
  v30 = 0;
  __p = 0;
  sub_3FC3D0(a1, &v25, v20);
  sub_C57B4(&v25, 1, 1768779619, 1752709424);
  sub_3FC3D0(a1, &v25, a2[26]);
  if (__p)
  {
    v29 = __p;
    operator delete(__p);
  }

  DWORD2(v31) = 0;
  *&v31 = 2;
  sub_C8A18(&v25, 1768779619, &v31, 1752709424);
  sub_3FC3D0(a1, &v25, a3[26]);
  if (__p)
  {
    v29 = __p;
    operator delete(__p);
  }

  v25 = 0x676D637400000001;
  v26 = *sub_C53D8();
  v27 = 0;
  v29 = 0;
  v30 = 0;
  __p = 0;
  sub_3FC3D0(a1, &v25, a2[9]);
  v21 = a3[9];
  v25 = 0x676D637400000001;
  *&v26 = 2;
  DWORD2(v26) = 0;
  v27 = 0;
  v29 = 0;
  v30 = 0;
  __p = 0;
  sub_3FC3D0(a1, &v25, v21);
  sub_C57B4(&v25, 1, 1735222132, 1752709424);
  sub_3FC3D0(a1, &v25, a2[26]);
  if (__p)
  {
    v29 = __p;
    operator delete(__p);
  }

  DWORD2(v31) = 0;
  *&v31 = 2;
  sub_C8A18(&v25, 1735222132, &v31, 1752709424);
  sub_3FC3D0(a1, &v25, a3[26]);
  if (__p)
  {
    v29 = __p;
    operator delete(__p);
  }

  for (k = 0; k != 20; k += 4)
  {
    v23 = *&aOvpvivpvcgpvcv[k];
    LODWORD(v25) = 1;
    HIDWORD(v25) = v23;
    v26 = *sub_C53D8();
    v27 = 0;
    v29 = 0;
    v30 = 0;
    __p = 0;
    sub_3FC3D0(a1, &v25, a2[37]);
    LODWORD(v25) = 1;
    HIDWORD(v25) = v23;
    v26 = *sub_C53D8();
    v27 = 0;
    v29 = 0;
    v30 = 0;
    __p = 0;
    sub_3FD764(a1, &v25, qword_708650, 0);
  }

  sub_C57B4(&v25, 1, 1987077987, 1752709424);
  sub_3FD764(a1, &v25, qword_708650, 0);
  if (__p)
  {
    v29 = __p;
    operator delete(__p);
  }
}

void sub_1C22A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_24A680(v16);
  _Unwind_Resume(a1);
}

BOOL sub_1C2530()
{
  CFPreferencesAppSynchronize(@"com.apple.audio.virtualaudio");
  v7 = 0;
  v0 = sub_1235F4(@"EnableHALBorealisMonitor", @"com.apple.audio.virtualaudio", &v7);
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
      v10 = 1598;
      v12 = "EnableHALBorealisMonitor";
      v11 = 2080;
      if (v2)
      {
        v5 = "En";
      }

      v13 = 1024;
      v14 = HIDWORD(v1);
      v15 = 2080;
      v16 = v5;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Defaults key %s was defined to %d. %sabling HAL Borealis capture.", &v7, 0x2Cu);
    }
  }

  return v2;
}

void *sub_1C2688(void *result, int a2, int a3, uint64_t a4, uint64_t a5, char a6, char a7, int a8)
{
  v9 = a2;
  v8 = a3;
  *result = 0;
  result[1] = 0;
  if ((a6 & 1) != 0 || (a7 & 1) != 0 || a8)
  {
    operator new();
  }

  return result;
}

void sub_1C2784(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_346A08(va);
  operator delete(v4);
  _Unwind_Resume(a1);
}

void sub_1C27C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 != a4)
  {
    sub_11325C();
  }
}

void sub_1C2884(void *a1)
{
  __cxa_begin_catch(a1);
  while (1)
  {
    v2 = *v1;
    v3 = v1[3];
    if (v3)
    {
      std::__shared_weak_count::__release_weak(v3);
    }

    operator delete(v1);
    v1 = v2;
    if (!v2)
    {
      __cxa_rethrow();
    }
  }
}

uint64_t sub_1C28C4(uint64_t a1, __int128 *a2)
{
  *(a1 + 176) = 0;
  v4 = a1 + 16;
  v5 = a1 + 24;
  *a1 = v7;
  *(a1 + *(v7 - 24)) = v6;
  *(a1 + 8) = 0;
  v8 = (a1 + *(*a1 - 24));
  std::ios_base::init(v8, (a1 + 24));
  v8[1].__vftable = 0;
  v8[1].__fmtflags_ = -1;
  *(a1 + 16) = v10;
  *(v4 + *(v10 - 24)) = v9;
  *a1 = v11;
  std::locale::locale((a1 + 32));
  *(a1 + 72) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  v12 = *a2;
  *(a1 + 104) = *(a2 + 2);
  *(a1 + 88) = v12;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 24;
  sub_23034(v5);
  return a1;
}

void sub_1C2BC0(_Unwind_Exception *a1)
{
  if (*(v1 + 111) < 0)
  {
    operator delete(*(v1 + 88));
  }

  *(v1 + 24) = v2;
  std::locale::~locale((v1 + 32));
  std::iostream::~basic_iostream();
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1C2C04(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t *a6, _OWORD *a7, uint64_t a8)
{
  *a1 = a2;
  *(a1 + 8) = *a3;
  *(a1 + 16) = *a4;
  *(a1 + 24) = *a5;
  if (a6[1])
  {
    v13 = *a6;
    sub_141650();
  }

  sub_C90FC(a1 + 32, &unk_5A4770);
  *(a1 + 64) = *a7;
  sub_C9678((a1 + 80), a8);
  sub_3F7C0C(a1, v11);
  return a1;
}

void sub_1C2D48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  operator new();
}

uint64_t sub_1C3874(uint64_t a1, uint64_t a2)
{
  sub_2B21AC(a1);
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v4 = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 24) = v4;
  *(a2 + 47) = 0;
  *(a2 + 24) = 0;
  v5 = *(a2 + 52);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 52) = v5;
  if (*(a1 + 128) == *(a2 + 128))
  {
    if (*(a1 + 128))
    {
      if (*(a1 + 79) < 0)
      {
        operator delete(*(a1 + 56));
      }

      v6 = *(a2 + 56);
      *(a1 + 72) = *(a2 + 72);
      *(a1 + 56) = v6;
      *(a2 + 79) = 0;
      *(a2 + 56) = 0;
      if (*(a1 + 103) < 0)
      {
        operator delete(*(a1 + 80));
      }

      v7 = *(a2 + 80);
      *(a1 + 96) = *(a2 + 96);
      *(a1 + 80) = v7;
      *(a2 + 103) = 0;
      *(a2 + 80) = 0;
      if (*(a1 + 127) < 0)
      {
        operator delete(*(a1 + 104));
      }

      v8 = *(a2 + 104);
      *(a1 + 120) = *(a2 + 120);
      *(a1 + 104) = v8;
      *(a2 + 127) = 0;
      *(a2 + 104) = 0;
    }
  }

  else if (*(a1 + 128))
  {
    sub_2B222C(a1 + 56);
  }

  else
  {
    v9 = *(a2 + 56);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 56) = v9;
    *(a2 + 64) = 0;
    *(a2 + 72) = 0;
    *(a2 + 56) = 0;
    v10 = *(a2 + 80);
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 80) = v10;
    *(a2 + 88) = 0;
    *(a2 + 96) = 0;
    *(a2 + 80) = 0;
    v11 = *(a2 + 104);
    *(a1 + 120) = *(a2 + 120);
    *(a1 + 104) = v11;
    *(a2 + 112) = 0;
    *(a2 + 120) = 0;
    *(a2 + 104) = 0;
    *(a1 + 128) = 1;
  }

  *(a1 + 136) = *(a2 + 136);
  if (*(a1 + 167) < 0)
  {
    operator delete(*(a1 + 144));
  }

  v12 = *(a2 + 144);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 144) = v12;
  *(a2 + 167) = 0;
  *(a2 + 144) = 0;
  sub_2B21EC((a1 + 168));
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 184) = *(a2 + 184);
  *(a2 + 168) = 0;
  *(a2 + 176) = 0;
  *(a2 + 184) = 0;
  sub_2B21EC((a1 + 192));
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 208) = *(a2 + 208);
  *(a2 + 192) = 0;
  *(a2 + 200) = 0;
  *(a2 + 208) = 0;
  return a1;
}

void sub_1C3A50(uint64_t a1, CFStringRef *a2)
{
  v3 = (a1 + 4096);
  v4 = sub_2B1910(a1);
  *(v4 + 6280) = 0u;
  *(v4 + 6296) = 0u;
  *(v4 + 6264) = 0u;
  *(v4 + 6312) = 1684434036;
  v3[2220] = 0;
  v3[2224] = 0;
  v3[2296] = 0;
  *(v4 + 6408) = 0u;
  *(v4 + 6424) = 0u;
  *(v4 + 6440) = 0u;
  *(v4 + 6456) = 0u;
  *(v4 + 6472) = 0u;
  *(v4 + 6488) = 0u;
  *(v4 + 6504) = 0u;
  *(v4 + 6520) = 0;
  *(v4 + 6528) = 1684434036;
  v3[2436] = 0;
  v3[2440] = 0;
  v3[2512] = 0;
  *(v4 + 6736) = 0;
  *(v4 + 6720) = 0u;
  *(v4 + 6704) = 0u;
  *(v4 + 6688) = 0u;
  *(v4 + 6672) = 0u;
  *(v4 + 6656) = 0u;
  *(v4 + 6640) = 0u;
  *(v4 + 6624) = 0u;
  *(v4 + 6744) = 1684434036;
  v3[2652] = 0;
  v3[2656] = 0;
  v3[2728] = 0;
  *(v4 + 6840) = 0u;
  *(v4 + 6856) = 0u;
  *(v4 + 6872) = 0u;
  *(v4 + 6888) = 0u;
  *(v4 + 6904) = 0;
  sub_433CB4(v5, 0, "headset_general", a2, 0x77646566u, 0, 0);
}

void sub_1C4408(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_2B1E18(&a9);
  sub_2B1ECC(v9);
  _Unwind_Resume(a1);
}

void sub_1C4454(uint64_t **a1, unsigned int a2)
{
  v4 = (a1 + 1);
  v3 = a1[1];
  if (v3)
  {
    v5 = v4;
    v6 = v3;
    do
    {
      v7 = *(v6 + 7);
      v8 = v7 >= a2;
      v9 = v7 < a2;
      if (v8)
      {
        v5 = v6;
      }

      v6 = v6[v9];
    }

    while (v6);
    if (v5 != v4 && *(v5 + 7) <= a2)
    {
      v10 = v5[1];
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
        v12 = v5;
        do
        {
          v11 = v12[2];
          v13 = *v11 == v12;
          v12 = v11;
        }

        while (!v13);
      }

      if (*a1 == v5)
      {
        *a1 = v11;
      }

      a1[2] = (a1[2] - 1);
      sub_75234(v3, v5);

      operator delete(v5);
    }
  }
}

void sub_1C4630(uint64_t a1)
{
  sub_4E0BC(a1);
  v12 = 0;
  v13 = 0;
  v3 = a1 + 40;
  v2 = *(a1 + 40);
  *(a1 + 24) = 3;
  sub_477A0(v2);
  v4 = v12;
  *(a1 + 32) = &v12;
  *(a1 + 40) = v4;
  v5 = v13;
  *(a1 + 48) = v13;
  if (v5)
  {
    v4[2] = v3;
    v12 = 0;
    v13 = 0;
    v4 = 0;
  }

  else
  {
    *(a1 + 32) = v3;
  }

  sub_477A0(v4);
  v12 = 0;
  v13 = 0;
  v7 = a1 + 72;
  v6 = *(a1 + 72);
  *(a1 + 56) = 3;
  sub_477A0(v6);
  v8 = v12;
  *(a1 + 64) = &v12;
  *(a1 + 72) = v8;
  v9 = v13;
  *(a1 + 80) = v13;
  if (v9)
  {
    v8[2] = v7;
    v12 = 0;
    v13 = 0;
    v8 = 0;
  }

  else
  {
    *(a1 + 64) = v7;
  }

  sub_477A0(v8);
  v11 = *(a1 + 120);
  v10 = (a1 + 120);
  *(v10 - 3) = *(v10 - 4);
  sub_249CC4(v11);
  *v10 = 0;
  v10[1] = 0;
  *(v10 - 1) = v10;
}

uint64_t *sub_1C472C(signed int a1)
{
  if (a1 <= 1668505973)
  {
    if (a1 <= 1668117867)
    {
      if (a1 == 1667657057 || a1 == 1667657072)
      {
        if (atomic_load_explicit(&qword_6F7C48, memory_order_acquire))
        {
          return &qword_6F7C30;
        }

        v8 = __cxa_guard_acquire(&qword_6F7C48);
        v3 = &qword_6F7C30;
        if (v8)
        {
          LODWORD(v19) = 20;
          *buf = xmmword_5A3F6C;
          *&buf[16] = unk_5A3F7C;
          qword_6F7C38 = 0;
          unk_6F7C40 = 0;
          qword_6F7C30 = 0;
          sub_248E7C(&qword_6F7C30, buf, &v19 + 4, 9uLL);
          v4 = &qword_6F7C30;
          v5 = &qword_6F7C48;
          goto LABEL_40;
        }

        return v3;
      }
    }

    else
    {
      switch(a1)
      {
        case 1668117868:
          goto LABEL_11;
        case 1668309362:
          if (atomic_load_explicit(&qword_6F7CA8, memory_order_acquire))
          {
            return &qword_6F7C90;
          }

          v10 = __cxa_guard_acquire(&qword_6F7CA8);
          v3 = &qword_6F7C90;
          if (v10)
          {
            v20 = 0x1400000013;
            *buf = xmmword_5A3FD8;
            *&buf[16] = unk_5A3FE8;
            v19 = xmmword_5A3FF8;
            qword_6F7C98 = 0;
            unk_6F7CA0 = 0;
            qword_6F7C90 = 0;
            sub_248E7C(&qword_6F7C90, buf, &v21, 0xEuLL);
            v4 = &qword_6F7C90;
            v5 = &qword_6F7CA8;
            goto LABEL_40;
          }

          return v3;
        case 1668441443:
LABEL_11:
          if (atomic_load_explicit(&qword_6F7C68, memory_order_acquire))
          {
            return &qword_6F7C50;
          }

          v6 = __cxa_guard_acquire(&qword_6F7C68);
          v3 = &qword_6F7C50;
          if (!v6)
          {
            return v3;
          }

          *&v19 = 0x1400000013;
          *buf = xmmword_5A3F90;
          *&buf[16] = unk_5A3FA0;
          qword_6F7C58 = 0;
          unk_6F7C60 = 0;
          qword_6F7C50 = 0;
          sub_248E7C(&qword_6F7C50, buf, &v19 + 8, 0xAuLL);
          v4 = &qword_6F7C50;
          v5 = &qword_6F7C68;
LABEL_40:
          __cxa_guard_release(v5);
          return v4;
      }
    }

    goto LABEL_42;
  }

  if (a1 <= 1668703083)
  {
    if (a1 != 1668505974)
    {
      if (a1 == 1668509810)
      {
        if (atomic_load_explicit(&qword_6F7CC8, memory_order_acquire))
        {
          return &qword_6F7CB0;
        }

        v9 = __cxa_guard_acquire(&qword_6F7CC8);
        v3 = &qword_6F7CB0;
        if (v9)
        {
          *buf = xmmword_5A4010;
          *&buf[16] = unk_5A4020;
          v19 = xmmword_5A4030;
          qword_6F7CB8 = 0;
          unk_6F7CC0 = 0;
          qword_6F7CB0 = 0;
          sub_248E7C(&qword_6F7CB0, buf, &v20, 0xCuLL);
          v4 = &qword_6F7CB0;
          v5 = &qword_6F7CC8;
          goto LABEL_40;
        }

        return v3;
      }

      if (a1 != 1668576377)
      {
        goto LABEL_42;
      }

      goto LABEL_22;
    }

    goto LABEL_16;
  }

  if (a1 != 1668703084)
  {
    if (a1 == 1668705639 || a1 == 1668705568)
    {
LABEL_16:
      if (atomic_load_explicit(&qword_6F7C28, memory_order_acquire))
      {
        return &qword_6F7C10;
      }

      v2 = __cxa_guard_acquire(&qword_6F7C28);
      v3 = &qword_6F7C10;
      if (!v2)
      {
        return v3;
      }

      v20 = 0x1400000013;
      *buf = xmmword_5A3F34;
      *&buf[16] = unk_5A3F44;
      v19 = xmmword_5A3F54;
      qword_6F7C18 = 0;
      unk_6F7C20 = 0;
      qword_6F7C10 = 0;
      sub_248E7C(&qword_6F7C10, buf, &v21, 0xEuLL);
      v4 = &qword_6F7C10;
      v5 = &qword_6F7C28;
      goto LABEL_40;
    }

LABEL_42:
    v11 = sub_5544(14);
    v12 = *v11;
    if (*v11 && os_log_type_enabled(*v11, OS_LOG_TYPE_ERROR))
    {
      sub_22170(__p, a1);
      if (v17 >= 0)
      {
        v13 = __p;
      }

      else
      {
        v13 = __p[0];
      }

      *buf = 136315650;
      *&buf[4] = "AlternateVAD.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 1284;
      *&buf[18] = 2080;
      *&buf[20] = v13;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Unhandled audio category %s", buf, 0x1Cu);
      if (v17 < 0)
      {
        operator delete(__p[0]);
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Unhandled audio category %s");
  }

LABEL_22:
  if (atomic_load_explicit(&qword_6F7C88, memory_order_acquire))
  {
    return &qword_6F7C70;
  }

  v7 = __cxa_guard_acquire(&qword_6F7C88);
  v3 = &qword_6F7C70;
  if (v7)
  {
    *buf = xmmword_5A3FB8;
    *&buf[16] = unk_5A3FC8;
    qword_6F7C78 = 0;
    unk_6F7C80 = 0;
    qword_6F7C70 = 0;
    sub_248E7C(&qword_6F7C70, buf, &v19, 8uLL);
    v4 = &qword_6F7C70;
    v5 = &qword_6F7C88;
    goto LABEL_40;
  }

  return v3;
}

void sub_1C4CE8(void **a1, unsigned int **a2, uint64_t a3)
{
  if (qword_6E8528 != -1)
  {
    dispatch_once(&qword_6E8528, &stru_6BD0C8);
  }

  v6 = *a3;
  if (byte_6E8520 == 1)
  {
    memset(v61, 0, sizeof(v61));
    sub_3C7B90(v61, *v6, v6[1], (v6[1] - *v6) >> 2);
    v7 = *(a3 + 24);
    v8 = *(a3 + 32);
    v59 = 0;
    v60 = 0;
    v58 = 0;
    sub_248E7C(&v58, v7, v7 + 4 * v8, v8);
    v9 = v58;
    sub_3CFB18(v62, v61, v58, v59);
    v10 = *(a3 + 8);
    v11 = *(a3 + 16);
    v56 = 0;
    v57 = 0;
    v55 = 0;
    sub_248E7C(&v55, v10, v10 + 4 * v11, v11);
    v12 = v55;
    sub_3CFD54(v63, v62, v55, v56);
    *buf = 2;
    v53 = 0;
    v54 = 0;
    v52 = 0;
    sub_248E7C(&v52, buf, &v68, 1uLL);
    v13 = v52;
    sub_3CFB18(&v64, v63, v52, v53);
    if (v13)
    {
      operator delete(v13);
    }

    if (v63[0])
    {
      operator delete(v63[0]);
    }

    if (v12)
    {
      operator delete(v12);
    }

    if (v62[0])
    {
      operator delete(v62[0]);
    }

    if (v9)
    {
      operator delete(v9);
    }

    v14 = v61[0];
    if (!v61[0])
    {
      goto LABEL_24;
    }

LABEL_23:
    operator delete(v14);
    goto LABEL_24;
  }

  memset(v50, 0, sizeof(v50));
  sub_3C7B90(v50, *v6, v6[1], (v6[1] - *v6) >> 2);
  v15 = *(a3 + 24);
  v16 = *(a3 + 32);
  v48 = 0;
  v49 = 0;
  v47 = 0;
  sub_248E7C(&v47, v15, v15 + 4 * v16, v16);
  v17 = v47;
  sub_3CFB18(__p, v50, v47, v48);
  v18 = *(a3 + 8);
  v19 = *(a3 + 16);
  v45 = 0;
  v46 = 0;
  v44 = 0;
  sub_248E7C(&v44, v18, v18 + 4 * v19, v19);
  v20 = v44;
  sub_3CFD54(&v64, __p, v44, v45);
  if (v20)
  {
    operator delete(v20);
  }

  if (__p[0])
  {
    operator delete(__p[0]);
  }

  if (v17)
  {
    operator delete(v17);
  }

  v14 = v50[0];
  if (v50[0])
  {
    goto LABEL_23;
  }

LABEL_24:
  v22 = v64;
  v21 = v65;
  v23 = 126 - 2 * __clz(v65 - v64);
  if (v65 == v64)
  {
    v24 = 0;
  }

  else
  {
    v24 = v23;
  }

  sub_3D0014(v64, v65, v24, 1);
  v25 = sub_5544(18);
  v26 = *v25;
  if (*v25 && os_log_type_enabled(*v25, OS_LOG_TYPE_DEBUG))
  {
    memset(&v43, 0, sizeof(v43));
    std::string::append(&v43, "{ ", 2uLL);
    if (v21 != v22)
    {
      v27 = v22;
      while (1)
      {
        std::to_string(&v66, *v27);
        if ((v66.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v28 = &v66;
        }

        else
        {
          v28 = v66.__r_.__value_.__r.__words[0];
        }

        if ((v66.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v66.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v66.__r_.__value_.__l.__size_;
        }

        std::string::append(&v43, v28, size);
        if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v66.__r_.__value_.__l.__data_);
        }

        if (++v27 == v21)
        {
          break;
        }

        std::string::append(&v43, ", ", 2uLL);
      }
    }

    std::string::append(&v43, " }", 2uLL);
    if ((v43.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v30 = &v43;
    }

    else
    {
      v30 = v43.__r_.__value_.__r.__words[0];
    }

    *buf = 136315650;
    v68 = "AlternateVAD.cpp";
    v69 = 1024;
    v70 = 1703;
    v71 = 2080;
    v72 = v30;
    _os_log_impl(&dword_0, v26, OS_LOG_TYPE_DEBUG, "%25s:%-5d AltVAD types: %s", buf, 0x1Cu);
    if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v43.__r_.__value_.__l.__data_);
    }
  }

  v42 = v22;
  sub_3C823C(a1, a2, &v64);
  v32 = *a1;
  v31 = a1[1];
  if (*a1 != v31)
  {
    v33 = *a1;
    do
    {
      v34 = *v33;
      v35 = sub_5544(18);
      v36 = *v35;
      if (*v35 && os_log_type_enabled(*v35, OS_LOG_TYPE_DEBUG))
      {
        sub_22170(&v66, *(v34 + 60));
        v37 = &v66;
        if ((v66.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v37 = v66.__r_.__value_.__r.__words[0];
        }

        *buf = 136315650;
        v68 = "AlternateVAD.cpp";
        v69 = 1024;
        v70 = 1710;
        v71 = 2080;
        v72 = v37;
        _os_log_impl(&dword_0, v36, OS_LOG_TYPE_DEBUG, "%25s:%-5d AltVAD: %s", buf, 0x1Cu);
        if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v66.__r_.__value_.__l.__data_);
        }
      }

      v38 = v32;
      while (*(v34 + 60) != *(*v38 + 60))
      {
        v38 += 8;
        if (v38 == v31)
        {
          v39 = sub_5544(14);
          v40 = *v39;
          if (*v39)
          {
            if (os_log_type_enabled(*v39, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              v68 = "AlternateVAD.cpp";
              v69 = 1024;
              v70 = 1713;
              _os_log_impl(&dword_0, v40, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
            }
          }

          exception = __cxa_allocate_exception(0x10uLL);
          std::logic_error::logic_error(exception, "Precondition failure.");
        }
      }

      ++v33;
    }

    while (v33 != v31);
  }

  if (v42)
  {
    operator delete(v42);
  }
}

void sub_1C5280(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *__p)
{
  if (v43)
  {
    operator delete(v43);
  }

  v46 = *(v44 - 216);
  if (v46)
  {
    operator delete(v46);
  }

  if (v42)
  {
    operator delete(v42);
  }

  v47 = *(v44 - 240);
  if (v47)
  {
    operator delete(v47);
  }

  if (v41)
  {
    operator delete(v41);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1C53E0()
{
  if ((atomic_load_explicit(&qword_6E84A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6E84A0))
  {
    byte_6E8498 = sub_289958();
    __cxa_guard_release(&qword_6E84A0);
  }

  return byte_6E8498;
}

void *sub_1C5454(void *result, char *__src, char *a3, unint64_t a4)
{
  v7 = result;
  v8 = result[2];
  v9 = *result;
  if (a4 > (v8 - *result) >> 3)
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

    if (!(a4 >> 61))
    {
      v10 = v8 >> 2;
      if (v8 >> 2 <= a4)
      {
        v10 = a4;
      }

      if (v8 >= 0x7FFFFFFFFFFFFFF8)
      {
        v11 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v10;
      }

      sub_99B50(v7, v11);
    }

    sub_189A00();
  }

  v12 = result[1];
  v13 = v12 - v9;
  if (a4 <= (v12 - v9) >> 3)
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

uint64_t *sub_1C5588(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 8);
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
      return v3;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

uint64_t *sub_1C5684(uint64_t a1, unsigned int a2, int a3)
{
  v9 = a2;
  *buf = &v9;
  if (*(sub_1C5588(a1, a2) + 108) == 1)
  {
    v6 = sub_5544(14);
    v7 = *v6;
    if (*v6 && os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "RoutingTypes.cpp";
      v11 = 1024;
      v12 = 716;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  *buf = &v9;
  result = sub_1C5588(a1, v9);
  *(result + 26) = a3;
  *(result + 108) = 1;
  return result;
}

uint64_t sub_1C57E4(int *a1, int *a2, int *a3, uint64_t a4)
{
  v5 = *(a4 + 24);
  if (!v5)
  {
    goto LABEL_16;
  }

  v9 = (*(*v5 + 48))(v5, a2, a1);
  v10 = *(a4 + 24);
  if (v9)
  {
    if (v10)
    {
      result = (*(*v10 + 48))(v10, a3, a2);
      v12 = *a1;
      if (result)
      {
        *a1 = *a3;
LABEL_14:
        *a3 = v12;
        return result;
      }

      *a1 = *a2;
      *a2 = v12;
      v16 = *(a4 + 24);
      if (v16)
      {
        result = (*(*v16 + 48))(v16, a3, a2);
        if (!result)
        {
          return result;
        }

        v12 = *a2;
        *a2 = *a3;
        goto LABEL_14;
      }
    }

LABEL_16:
    sub_46A74();
  }

  if (!v10)
  {
    goto LABEL_16;
  }

  result = (*(*v10 + 48))(v10, a3, a2);
  if (!result)
  {
    return result;
  }

  v13 = *a2;
  *a2 = *a3;
  *a3 = v13;
  v14 = *(a4 + 24);
  if (!v14)
  {
    goto LABEL_16;
  }

  result = (*(*v14 + 48))(v14, a2, a1);
  if (result)
  {
    v15 = *a1;
    *a1 = *a2;
    *a2 = v15;
  }

  return result;
}

uint64_t sub_1C5980(uint64_t result, int *a2, uint64_t a3, uint64_t a4, char a5)
{
  v9 = result;
LABEL_2:
  v86 = a2;
  v87 = a2 - 1;
  v84 = a2 - 3;
  v85 = a2 - 2;
  v10 = v9;
  while (1)
  {
    v9 = v10;
    v11 = a2 - v10;
    v12 = v11 - 2;
    if (v11 > 2)
    {
      switch(v11)
      {
        case 3:

          return sub_1C57E4(v9, v9 + 1, v87, a3);
        case 4:

          return sub_407F84(v9, v9 + 1, v9 + 2, v87, a3);
        case 5:

          return sub_4080A8(v9, v9 + 1, v9 + 2, v9 + 3, v87, a3);
      }

      goto LABEL_10;
    }

    if (v11 < 2)
    {
      return result;
    }

    if (v11 == 2)
    {
      break;
    }

LABEL_10:
    if (v11 <= 23)
    {
      v40 = v9 + 1;
      v42 = v9 == a2 || v40 == a2;
      if (a5)
      {
        if (v42)
        {
          return result;
        }

        v43 = 0;
        v44 = v9;
        while (1)
        {
          v45 = *(a3 + 24);
          if (!v45)
          {
            break;
          }

          v46 = v40;
          result = (*(*v45 + 48))(v45, v40, v44);
          if (result)
          {
            v89 = *v46;
            v47 = v43;
            while (1)
            {
              *(v9 + v47 + 4) = *(v9 + v47);
              if (!v47)
              {
                break;
              }

              v48 = *(a3 + 24);
              if (!v48)
              {
                goto LABEL_151;
              }

              v47 -= 4;
              result = (*(*v48 + 48))(v48, &v89, v9 + v47);
              if ((result & 1) == 0)
              {
                v49 = (v9 + v47 + 4);
                goto LABEL_98;
              }
            }

            v49 = v9;
LABEL_98:
            *v49 = v89;
          }

          v40 = v46 + 1;
          v43 += 4;
          v44 = v46;
          if (v46 + 1 == a2)
          {
            return result;
          }
        }
      }

      else
      {
        if (v42)
        {
          return result;
        }

        while (1)
        {
          v80 = *(a3 + 24);
          if (!v80)
          {
            break;
          }

          v81 = v40;
          result = (*(*v80 + 48))(v80, v40, v9);
          if (result)
          {
            v89 = *v81;
            v82 = v81;
            do
            {
              *v82 = *(v82 - 1);
              v83 = *(a3 + 24);
              if (!v83)
              {
                goto LABEL_151;
              }

              result = (*(*v83 + 48))(v83, &v89, v82 - 2);
              --v82;
            }

            while ((result & 1) != 0);
            *v82 = v89;
          }

          v40 = v81 + 1;
          v9 = v81;
          if (v81 + 1 == a2)
          {
            return result;
          }
        }
      }

LABEL_151:
      sub_46A74();
    }

    if (!a4)
    {
      if (v9 != a2)
      {
        v50 = v12 >> 1;
        v51 = v12 >> 1;
        do
        {
          v52 = v51;
          if (v50 >= v51)
          {
            v53 = (2 * v51) | 1;
            v54 = &v9[v53];
            if (2 * v51 + 2 < v11)
            {
              v55 = *(a3 + 24);
              if (!v55)
              {
                goto LABEL_151;
              }

              if ((*(*v55 + 48))(v55, &v9[v53], v54 + 1))
              {
                ++v54;
                v53 = 2 * v52 + 2;
              }
            }

            v56 = *(a3 + 24);
            if (!v56)
            {
              goto LABEL_151;
            }

            v57 = &v9[v52];
            result = (*(*v56 + 48))(v56, v54, v57);
            if ((result & 1) == 0)
            {
              v89 = *v57;
              do
              {
                v58 = v54;
                *v57 = *v54;
                if (v50 < v53)
                {
                  break;
                }

                v59 = (2 * v53) | 1;
                v54 = &v9[v59];
                v53 = 2 * v53 + 2;
                if (v53 >= v11)
                {
                  v53 = v59;
                }

                else
                {
                  v60 = *(a3 + 24);
                  if (!v60)
                  {
                    goto LABEL_151;
                  }

                  if ((*(*v60 + 48))(v60, &v9[v59], v54 + 1))
                  {
                    ++v54;
                  }

                  else
                  {
                    v53 = v59;
                  }
                }

                v61 = *(a3 + 24);
                if (!v61)
                {
                  goto LABEL_151;
                }

                result = (*(*v61 + 48))(v61, v54, &v89);
                v57 = v58;
              }

              while (!result);
              *v58 = v89;
            }
          }

          v51 = v52 - 1;
        }

        while (v52);
        v62 = v86;
        do
        {
          v63 = v62;
          v64 = 0;
          v88 = *v9;
          v65 = v9;
          do
          {
            v66 = &v65[v64];
            v67 = v66 + 1;
            v68 = (2 * v64) | 1;
            v69 = 2 * v64 + 2;
            if (v69 < v11)
            {
              v70 = *(a3 + 24);
              if (!v70)
              {
                goto LABEL_151;
              }

              v71 = v66 + 2;
              result = (*(*v70 + 48))(v70, v67, v66 + 2);
              if (result)
              {
                v67 = v71;
                v68 = v69;
              }
            }

            *v65 = *v67;
            v65 = v67;
            v64 = v68;
          }

          while (v68 <= (v11 - 2) / 2);
          v62 = v63 - 1;
          if (v67 == v63 - 1)
          {
            *v67 = v88;
          }

          else
          {
            *v67 = *v62;
            *v62 = v88;
            v72 = (v67 - v9 + 4) >> 2;
            v73 = v72 < 2;
            v74 = v72 - 2;
            if (!v73)
            {
              v75 = *(a3 + 24);
              if (!v75)
              {
                goto LABEL_151;
              }

              v76 = v74 >> 1;
              v77 = &v9[v74 >> 1];
              result = (*(*v75 + 48))(v75, v77, v67);
              if (result)
              {
                v89 = *v67;
                do
                {
                  v78 = v77;
                  *v67 = *v77;
                  if (!v76)
                  {
                    break;
                  }

                  v79 = *(a3 + 24);
                  if (!v79)
                  {
                    goto LABEL_151;
                  }

                  v76 = (v76 - 1) >> 1;
                  v77 = &v9[v76];
                  result = (*(*v79 + 48))(v79, v77, &v89);
                  v67 = v78;
                }

                while ((result & 1) != 0);
                *v78 = v89;
              }
            }
          }

          v73 = v11-- <= 2;
        }

        while (!v73);
      }

      return result;
    }

    v13 = &v9[v11 >> 1];
    if (v11 < 0x81)
    {
      sub_1C57E4(&v9[v11 >> 1], v9, v87, a3);
    }

    else
    {
      sub_1C57E4(v9, &v9[v11 >> 1], v87, a3);
      sub_1C57E4(v9 + 1, v13 - 1, v85, a3);
      sub_1C57E4(v9 + 2, &v9[(v11 >> 1) + 1], v84, a3);
      sub_1C57E4(v13 - 1, &v9[v11 >> 1], &v9[(v11 >> 1) + 1], a3);
      v14 = *v9;
      *v9 = *v13;
      *v13 = v14;
    }

    --a4;
    a2 = v86;
    if (a5)
    {
      goto LABEL_18;
    }

    v15 = *(a3 + 24);
    if (!v15)
    {
      goto LABEL_151;
    }

    if ((*(*v15 + 48))(v15, v9 - 1, v9))
    {
LABEL_18:
      v89 = *v9;
      v16 = v9;
      do
      {
        v17 = *(a3 + 24);
        if (!v17)
        {
          goto LABEL_151;
        }

        v18 = v16++;
      }

      while (((*(*v17 + 48))(v17, v16, &v89) & 1) != 0);
      v19 = v86;
      if (v18 != v9)
      {
        while (1)
        {
          v20 = *(a3 + 24);
          if (!v20)
          {
            goto LABEL_151;
          }

          if ((*(*v20 + 48))(v20, --v19, &v89))
          {
            goto LABEL_29;
          }
        }
      }

      v19 = v86;
      do
      {
        if (v16 >= v19)
        {
          break;
        }

        v21 = *(a3 + 24);
        if (!v21)
        {
          goto LABEL_151;
        }

        --v19;
      }

      while (((*(*v21 + 48))(v21, v19, &v89) & 1) == 0);
LABEL_29:
      if (v16 < v19)
      {
        v22 = v16;
        v23 = v19;
        do
        {
          v24 = *v22;
          *v22 = *v23;
          *v23 = v24;
          do
          {
            v25 = *(a3 + 24);
            if (!v25)
            {
              goto LABEL_151;
            }

            v18 = v22++;
          }

          while (((*(*v25 + 48))(v25, v22, &v89) & 1) != 0);
          do
          {
            v26 = *(a3 + 24);
            if (!v26)
            {
              goto LABEL_151;
            }

            --v23;
          }

          while (!(*(*v26 + 48))(v26, v23, &v89));
        }

        while (v22 < v23);
      }

      if (v18 != v9)
      {
        *v9 = *v18;
      }

      *v18 = v89;
      if (v16 < v19)
      {
        goto LABEL_42;
      }

      v27 = sub_408218(v9, v18, a3);
      v10 = v18 + 1;
      result = sub_408218(v18 + 1, v86, a3);
      if (result)
      {
        a2 = v18;
        if (v27)
        {
          return result;
        }

        goto LABEL_2;
      }

      if (!v27)
      {
LABEL_42:
        result = sub_1C5980(v9, v18, a3, a4, a5 & 1);
        a5 = 0;
        v10 = v18 + 1;
      }
    }

    else
    {
      v89 = *v9;
      v28 = *(a3 + 24);
      if (!v28)
      {
        goto LABEL_151;
      }

      result = (*(*v28 + 48))(v28, &v89, v87);
      if (result)
      {
        v10 = v9;
        while (1)
        {
          v29 = *(a3 + 24);
          if (!v29)
          {
            goto LABEL_151;
          }

          result = (*(*v29 + 48))(v29, &v89, ++v10);
          if (result)
          {
            goto LABEL_53;
          }
        }
      }

      v30 = v9 + 1;
      do
      {
        v10 = v30;
        if (v30 >= v86)
        {
          break;
        }

        v31 = *(a3 + 24);
        if (!v31)
        {
          goto LABEL_151;
        }

        result = (*(*v31 + 48))(v31, &v89, v30);
        v30 = v10 + 1;
      }

      while (!result);
LABEL_53:
      v32 = v86;
      if (v10 < v86)
      {
        v32 = v86;
        do
        {
          v33 = *(a3 + 24);
          if (!v33)
          {
            goto LABEL_151;
          }

          result = (*(*v33 + 48))(v33, &v89, --v32);
        }

        while ((result & 1) != 0);
      }

LABEL_63:
      if (v10 < v32)
      {
        v34 = *v10;
        *v10 = *v32;
        *v32 = v34;
        do
        {
          v35 = *(a3 + 24);
          if (!v35)
          {
            goto LABEL_151;
          }

          ++v10;
        }

        while (!(*(*v35 + 48))(v35, &v89, v10));
        while (1)
        {
          v36 = *(a3 + 24);
          if (!v36)
          {
            goto LABEL_151;
          }

          result = (*(*v36 + 48))(v36, &v89, --v32);
          if ((result & 1) == 0)
          {
            goto LABEL_63;
          }
        }
      }

      v37 = v10 - 1;
      if (v10 - 1 != v9)
      {
        *v9 = *v37;
      }

      a5 = 0;
      *v37 = v89;
    }
  }

  v38 = *(a3 + 24);
  if (!v38)
  {
    goto LABEL_151;
  }

  result = (*(*v38 + 48))(v38, v87, v9);
  if (result)
  {
    v39 = *v9;
    *v9 = *v87;
    *v87 = v39;
  }

  return result;
}

void sub_1C64C0(uint64_t *a1, void *a2, void *a3)
{
  v4 = a2;
  v6 = a1[1];
  if (a2 != a3 && v6 != a1)
  {
    do
    {
      v8 = v4[2];
      v7 = v4[3];
      if (v7)
      {
        atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
      }

      v9 = v6[3];
      v6[2] = v8;
      v6[3] = v7;
      if (v9)
      {
        sub_1A8C0(v9);
      }

      v4 = v4[1];
      v6 = v6[1];
    }

    while (v4 != a3 && v6 != a1);
  }

  if (v6 == a1)
  {
    if (v4 != a3)
    {
      operator new();
    }
  }

  else
  {
    v11 = *(*a1 + 8);
    v12 = *v6;
    *(v12 + 8) = v11;
    *v11 = v12;
    do
    {
      v13 = v6[1];
      --a1[2];
      v14 = v6[3];
      if (v14)
      {
        sub_1A8C0(v14);
      }

      operator delete(v6);
      v6 = v13;
    }

    while (v13 != a1);
  }
}

void sub_1C666C(void *a1)
{
  __cxa_begin_catch(a1);
  while (1)
  {
    v2 = *v1;
    v3 = v1[3];
    if (v3)
    {
      sub_1A8C0(v3);
    }

    operator delete(v1);
    v1 = v2;
    if (!v2)
    {
      __cxa_rethrow();
    }
  }
}

void sub_1C66AC(uint64_t *a1, unsigned int *a2, int a3)
{
  v4 = a1[1];
  v13 = *a1;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v16 = a3;
  v5 = *a2;
  if (*a2 > 1836414052)
  {
    if (v5 <= 1936876402)
    {
      if (v5 > 1886807153)
      {
        if (v5 <= 1935763059)
        {
          if (v5 != 1886807154 && v5 != 1919774835)
          {
            v9 = 1935762281;
            goto LABEL_74;
          }

LABEL_69:
          sub_36829C();
        }

        if (v5 == 1935763060)
        {
          goto LABEL_69;
        }

        if (v5 != 1936092532)
        {
          v8 = 1936482676;
          goto LABEL_68;
        }
      }

      else
      {
        if (v5 <= 1870030193)
        {
          if (v5 == 1836414053)
          {
            goto LABEL_69;
          }

          if (v5 != 1852012899)
          {
            v7 = 1853059700;
            goto LABEL_51;
          }

          goto LABEL_59;
        }

        if (v5 == 1870030194)
        {
          goto LABEL_69;
        }

        if (v5 != 1885762592)
        {
          if (v5 == 1886807139)
          {
            operator new();
          }

          goto LABEL_81;
        }
      }

      operator new();
    }

    if (v5 <= 1986225267)
    {
      if (v5 > 1983996970)
      {
        if (v5 == 1983996971 || v5 == 1983997011)
        {
          goto LABEL_69;
        }

        v7 = 1986225266;
      }

      else
      {
        if (v5 == 1936876403)
        {
          goto LABEL_70;
        }

        if (v5 == 1952997988)
        {
          goto LABEL_75;
        }

        v7 = 1953002354;
      }

LABEL_51:
      if (v5 == v7)
      {
        operator new();
      }

      goto LABEL_81;
    }

    if (v5 <= 1986817376)
    {
      if (v5 == 1986225268)
      {
        sub_36829C();
      }

      if (v5 == 1986229104)
      {
        goto LABEL_69;
      }

      v10 = 1986290211;
      goto LABEL_42;
    }

    if (v5 != 1986817377 && v5 != 1987013732 && v5 != 1987013741)
    {
      goto LABEL_81;
    }

LABEL_59:
    operator new();
  }

  if (v5 > 1685276754)
  {
    if (v5 <= 1702392684)
    {
      if (v5 > 1685288050)
      {
        if (v5 != 1685288051)
        {
          v8 = 1702248804;
LABEL_68:
          if (v5 != v8)
          {
            goto LABEL_81;
          }

          goto LABEL_69;
        }

LABEL_70:
        operator new();
      }

      if ((v5 - 1685278561) > 0x11 || ((1 << (v5 - 97)) & 0x20003) == 0)
      {
        v8 = 1685276755;
        goto LABEL_68;
      }

LABEL_75:
      operator new();
    }

    if (v5 > 1735354733)
    {
      if (v5 == 1735354734 || v5 == 1752657012)
      {
        goto LABEL_69;
      }

      v8 = 1819569763;
      goto LABEL_68;
    }

    if (v5 == 1702392685 || v5 == 1718839674)
    {
      goto LABEL_69;
    }

    v10 = 1718843939;
LABEL_42:
    if (v5 == v10)
    {
      operator new();
    }

    goto LABEL_81;
  }

  if (v5 > 1635152992)
  {
    if ((v5 - 1635152993) > 0xE || ((1 << (v5 - 97)) & 0x4015) == 0)
    {
      if (v5 == 1684103987)
      {
        goto LABEL_69;
      }

      v8 = 1684633187;
      goto LABEL_68;
    }

    goto LABEL_75;
  }

  if (v5 <= 1634689388)
  {
    if (v5 == 1064725619)
    {
      goto LABEL_69;
    }

    if (v5 != 1165513555)
    {
      v8 = 1633973868;
      goto LABEL_68;
    }

    goto LABEL_70;
  }

  if (v5 > 1634692198)
  {
    if (v5 == 1634692199)
    {
      goto LABEL_75;
    }

    v6 = 29554;
  }

  else
  {
    if (v5 == 1634689389)
    {
      goto LABEL_75;
    }

    v6 = 25965;
  }

  v9 = v6 | 0x616F0000;
LABEL_74:
  if (v5 == v9)
  {
    goto LABEL_75;
  }

LABEL_81:
  v11 = *sub_5544(1);
  if (v11 && os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    sub_22170(__p, *a2);
    v12 = v15 >= 0 ? __p : __p[0];
    *buf = 136315650;
    *&buf[4] = "VirtualAudio_DevicePropertyCache.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 224;
    v18 = 2080;
    v19 = v12;
    _os_log_impl(&dword_0, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d Unhandled selector: '%s'", buf, 0x1Cu);
    if (v15 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }
}

void sub_1C73C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9)
{
  if (*(&a9 + 1))
  {
    sub_1A8C0(*(&a9 + 1));
  }

  _Unwind_Resume(exception_object);
}

void sub_1C73F4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = *a2;
  v5 = *(a2 + 2);
  v6 = a3;
  v7 = a4;
  sub_17C118((a1 + 272), &v4, &v4);
}

uint64_t sub_1C76AC(uint64_t a1)
{
  sub_27A4();
  v2 = atomic_load(&qword_6E9558);
  if (v2 != pthread_self())
  {
    v4 = sub_5544(14);
    v5 = *v4;
    if (*v4 && os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
    {
      v7[0] = 136315394;
      *&v7[1] = "VirtualAudio_Device.cpp";
      v8 = 1024;
      v9 = 4312;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", v7, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  sub_C2EB4(a1);
  result = *(a1 + 440);
  if (result)
  {
    strcpy(v7, "zisfbolg");
    BYTE1(v7[2]) = 0;
    HIWORD(v7[2]) = 0;
    sub_ED368(result);
  }

  return result;
}

_BYTE *sub_1C7820(uint64_t a1)
{
  v52 = 0x676C6F6274687372;
  v53 = 0;
  v50 = 0x676C6F6276636474;
  v51 = 0;
  v48 = 0x676C6F6276636472;
  v49 = 0;
  sub_27A4();
  v47 = (*(qword_6E94F8 + 16))();
  v2 = *(a1 + 872);
  strcpy(buf, "tdcvbolg");
  buf[9] = 0;
  *&buf[10] = 0;
  v3 = sub_59410(v2);
  *(&v6 + 1) = v4;
  *&v6 = v3;
  v5 = v6 >> 32;
  if ((v5 & 0x100000000) != 0)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0;
  }

  if ((*(**(a1 + 872) + 16))(*(a1 + 872), &v52))
  {
    v8 = (*(**(a1 + 872) + 16))(*(a1 + 872), &v50);
    v9 = v7 ? v8 : 0;
    if (v9 == 1)
    {
      v46 = 0.0;
      v45 = 8;
      (*(**(a1 + 872) + 40))(*(a1 + 872), &v52, 0, 0, &v45, &v46);
      v44 = 0.0;
      v45 = 8;
      (*(**(a1 + 872) + 40))(*(a1 + 872), &v48, 0, 0, &v45, &v44);
      v10 = sub_5544(1);
      v11 = sub_5544(40);
      v12 = 0;
      *buf = 0x100000002;
      v13 = *(v10 + 8);
      while (1)
      {
        v14 = *&buf[v12];
        if (((v13 & v14) != 0) != ((*(v11 + 8) & v14) != 0))
        {
          break;
        }

        v12 += 4;
        if (v12 == 8)
        {
          if ((v13 & 1) == 0)
          {
            goto LABEL_20;
          }

          goto LABEL_17;
        }
      }

      if ((v13 & v14) == 0)
      {
        v10 = v11;
      }

      if (*(v10 + 8))
      {
LABEL_17:
        v15 = *v10;
        if (v15 && os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315906;
          *&buf[4] = "VirtualAudio_Device.cpp";
          v60 = 1024;
          v61 = 1084;
          v62 = 2048;
          v63 = v46;
          v64 = 2048;
          v65 = *&v44;
          _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEBUG, "%25s:%-5d Telephony hardware sample rate is %f, vocoder sample rate %f", buf, 0x26u);
        }
      }

LABEL_20:
      v16 = (*(**(a1 + 872) + 496))(*(a1 + 872));
      v17 = &v46;
      if (v16)
      {
        v17 = &v44;
      }

      v18 = *v17;
      sub_D3304(v42, a1, *v17);
      if (v42[0] == 1)
      {
        v19 = sub_5544(1);
        v20 = sub_5544(40);
        v21 = 0;
        *buf = 0x100000002;
        v22 = *(v19 + 8);
        while (1)
        {
          v23 = *&buf[v21];
          if (((v22 & v23) != 0) != ((*(v20 + 8) & v23) != 0))
          {
            break;
          }

          v21 += 4;
          if (v21 == 8)
          {
            goto LABEL_29;
          }
        }

        if ((v22 & v23) == 0)
        {
          v19 = v20;
        }

LABEL_29:
        v24 = *v19;
        if (v24 && os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          Mutable = *(a1 + 384);
          sub_68108(&__p, &Mutable);
          v25 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
          *buf = 136315906;
          *&buf[4] = "VirtualAudio_Device.cpp";
          v60 = 1024;
          v61 = 1094;
          v62 = 2048;
          v63 = v18;
          v64 = 2080;
          v65 = v25;
          _os_log_impl(&dword_0, v24, OS_LOG_TYPE_DEFAULT, "%25s:%-5d In response to telephony hardware sample rate change, updating sample rate to %f on VAD: '%s'.", buf, 0x26u);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }

        v26 = *(a1 + 8);
        sub_214644(a1, v43);
      }

      v27 = v44;
      v57 = 0x676C6F6273766364;
      v58 = 0;
      if ((*(**(a1 + 872) + 16))(*(a1 + 872), &v57))
      {
        Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        v56 = 257;
        sub_FDA38(&Mutable, @"vocoder sample rate", v27);
        sub_A1CA4(&Mutable, @"vocoder type", v7);
        v28 = sub_5544(1);
        v29 = sub_5544(40);
        v30 = 0;
        *buf = 0x100000002;
        v31 = *(v28 + 8);
        while (1)
        {
          v32 = *&buf[v30];
          if (((v31 & v32) != 0) != ((*(v29 + 8) & v32) != 0))
          {
            break;
          }

          v30 += 4;
          if (v30 == 8)
          {
            goto LABEL_53;
          }
        }

        if ((v31 & v32) == 0)
        {
          v28 = v29;
        }

LABEL_53:
        v39 = *v28;
        if (v39 && os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
        {
          sub_22170(&__p, v7);
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p.__r_.__value_.__r.__words[0];
          }

          *buf = 136315906;
          *&buf[4] = "VirtualAudio_Device.cpp";
          v60 = 1024;
          v61 = 1115;
          v62 = 2048;
          v63 = v27;
          v64 = 2080;
          v65 = p_p;
          _os_log_impl(&dword_0, v39, OS_LOG_TYPE_INFO, "%25s:%-5d Setting vocoder sample rate to %f, vocoder type %s", buf, 0x26u);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }

        (*(**(a1 + 872) + 48))(*(a1 + 872), &v57, 0, 0, 8, &Mutable);
        sub_A1D30(&Mutable);
      }

      else
      {
        v33 = sub_5544(1);
        v34 = sub_5544(40);
        v35 = 0;
        *buf = 0x100000002;
        v36 = *(v33 + 8);
        while (1)
        {
          v37 = *&buf[v35];
          if (((v36 & v37) != 0) != ((*(v34 + 8) & v37) != 0))
          {
            break;
          }

          v35 += 4;
          if (v35 == 8)
          {
            goto LABEL_48;
          }
        }

        if ((v36 & v37) == 0)
        {
          v33 = v34;
        }

LABEL_48:
        v38 = *v33;
        if (v38 && os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          *&buf[4] = "VirtualAudio_Device.cpp";
          v60 = 1024;
          v61 = 1120;
          _os_log_impl(&dword_0, v38, OS_LOG_TYPE_INFO, "%25s:%-5d device does not support telephony vocoder data", buf, 0x12u);
        }
      }

      sub_4B0F4(v43[1]);
    }
  }

  return sub_210C50(&v47);
}

void sub_1C7F44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  sub_A1D30(&a30);
  sub_4B0F4(a12);
  sub_210C50(&a20);
  _Unwind_Resume(a1);
}

uint64_t sub_1C7F9C(uint64_t a1, int a2)
{
  (*(*a1 + 168))(v9);
  for (i = v9[1]; ; i = i[1])
  {
    if (i == v9)
    {
      v7 = 0;
      goto LABEL_10;
    }

    v4 = i[3];
    if (v4)
    {
      v5 = std::__shared_weak_count::lock(v4);
      if (v5)
      {
        break;
      }
    }

LABEL_8:
    ;
  }

  v6 = i[2];
  if (!v6 || *(v6 + 144) != a2)
  {
    sub_1A8C0(v5);
    goto LABEL_8;
  }

  sub_1A8C0(v5);
  v7 = 1;
LABEL_10:
  sub_65310(v9);
  return v7;
}

uint64_t sub_1C8050(uint64_t a1)
{
  if (*(a1 + 304) == 1 && *(a1 + 303) < 0)
  {
    operator delete(*(a1 + 280));
  }

  if (*(a1 + 272) == 1 && *(a1 + 271) < 0)
  {
    operator delete(*(a1 + 248));
  }

  sub_477A0(*(a1 + 232));
  v2 = *(a1 + 216);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  sub_128368((a1 + 176));
  if (*(a1 + 136) == 1)
  {
    v3 = *(a1 + 128);
    if (v3)
    {
      CFRelease(v3);
    }

    v4 = *(a1 + 112);
    if (v4)
    {
      std::__shared_weak_count::__release_weak(v4);
    }
  }

  if (*(a1 + 64) == 1 && *(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  return a1;
}

void sub_1C8178(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1C8200(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1C821C(uint64_t a1, int *a2)
{
  v2 = *a2;
  if (*a2 > 1819107690)
  {
    if (v2 == 1819107691 || v2 == 1819173229)
    {
      return 8;
    }
  }

  else if (v2 == 1667591277 || v2 == 1668506480)
  {
    return 4;
  }

  return sub_E1CEC(a1, a2);
}

uint64_t sub_1C8280(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 52))
  {
    return 1;
  }

  v5 = *(a1 + 60);
  if (sub_B3834(a1, a2, &v5))
  {
    return 1;
  }

  if (*(a1 + 53) != 1)
  {
    return 0;
  }

  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  result = (*(*a2 + 24))(a2, &v6);
  if (result)
  {
    (*(*a2 + 48))(a2, &v6, 0, 0, 4, a1 + 56);
    return 1;
  }

  return result;
}

void sub_1C8568(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1C8584(uint64_t *a1, unsigned int *a2, uint64_t a3, uint64_t a4)
{
  sub_24784(a1[10], a1[11]);
  if (((*(*a1 + 16))(a1, a2) & 1) == 0)
  {
    v17 = sub_5544(14);
    v18 = *v17;
    if (*v17 && os_log_type_enabled(*v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v25 = "ControlSet.h";
      v26 = 1024;
      v27 = 175;
      _os_log_impl(&dword_0, v18, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareUnknownPropertyError): Unsupported property.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 2003332927;
  }

  v8 = a1[10];
  if (v8 != a1[11])
  {
    while (((*(**v8 + 56))(*v8, a2, a3, a4) & 1) != 0)
    {
      v8 += 2;
      if (v8 == a1[11])
      {
        return 1;
      }
    }

    v10 = sub_5544(19);
    v11 = *v10;
    if (*v10 && os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR))
    {
      sub_22170(v22, *a2);
      v12 = v23;
      v13 = v22[0];
      sub_22170(__p, a2[1]);
      v14 = v22;
      if (v12 < 0)
      {
        v14 = v13;
      }

      if (v21 >= 0)
      {
        v15 = __p;
      }

      else
      {
        v15 = __p[0];
      }

      v16 = a2[2];
      *buf = 136316162;
      v25 = "ControlSet.h";
      v26 = 1024;
      v27 = 183;
      v28 = 2080;
      v29 = v14;
      v30 = 2080;
      v31 = v15;
      v32 = 1024;
      v33 = v16;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d RegisterRelayedListener() failed. selector: '%s'; scope: '%s'; element: %u.", buf, 0x2Cu);
      if (v21 < 0)
      {
        operator delete(__p[0]);
      }

      if (v23 < 0)
      {
        operator delete(v22[0]);
      }
    }

    while (v8 != a1[10])
    {
      (*(**v8 + 64))(*v8, a2, a3, a4);
      v8 -= 2;
    }
  }

  return 0;
}

void sub_1C8890(_Unwind_Exception *exception_object)
{
  if (v2 < 0)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1C88B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_248A0(&v9, (a1 + 504), "", 137);
  v7 = (*(*v9 + 56))(v9, a2, a3, a4);
  if (v10)
  {
    sub_1A8C0(v10);
  }

  return v7;
}

void sub_1C894C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_1A8C0(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1C896C(uint64_t a1, uint64_t a2)
{
  sub_165A98(&v5, (a1 + 80), "", 36);
  v3 = (*(*v5 + 16))(v5, a2);
  if (v6)
  {
    sub_1A8C0(v6);
  }

  return v3;
}

void sub_1C89F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_1A8C0(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1C8A08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_165A98(&v9, (a1 + 80), "", 82);
  v7 = (*(*v9 + 56))(v9, a2, a3, a4);
  if (v10)
  {
    sub_1A8C0(v10);
  }

  return v7;
}

void sub_1C8AA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_1A8C0(a10);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_1C8ABC(uint64_t a1, unsigned int *a2, OSStatus (__cdecl *a3)(AudioObjectID, UInt32, const AudioObjectPropertyAddress *, void *), void *a4)
{
  sub_4E890();
  v8 = *(a1 + 80);
  buf = *a2;
  v9 = sub_73838(v8, &buf, a3, a4);
  if (v9)
  {
    v10 = sub_5544(23);
    v11 = *v10;
    if (*v10)
    {
      if (os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR))
      {
        sub_22170(v22, v9);
        v12 = v23;
        v13 = v22[0];
        v14 = *(a1 + 80);
        sub_22170(__p, *a2);
        v15 = v22;
        if (v12 < 0)
        {
          v15 = v13;
        }

        if (v21 >= 0)
        {
          v16 = __p;
        }

        else
        {
          v16 = __p[0];
        }

        v17 = a2[1];
        v18 = a2[2];
        buf.mSelector = 136316930;
        *&buf.mScope = "Stream_HAL_Common.cpp";
        v25 = 1024;
        v26 = 244;
        v27 = 1024;
        v28 = v9;
        v29 = 2080;
        v30 = v15;
        v31 = 1024;
        v32 = v14;
        v33 = 2080;
        v34 = v16;
        v35 = 1024;
        v36 = v17;
        v37 = 1024;
        v38 = v18;
        _os_log_impl(&dword_0, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d FAIL with status %d (%s): mStreamID %u; selector %s; scope %u; element %u", &buf, 0x3Eu);
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

  return v9 == 0;
}

void sub_1C8C74(_Unwind_Exception *exception_object)
{
  if (v2 < 0)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1C8C94(void *a1)
{
  v1 = a1[109];
  if (!v1)
  {
    v13 = sub_5544(14);
    v14 = *v13;
    if (*v13 && os_log_type_enabled(*v13, OS_LOG_TYPE_ERROR))
    {
      *__p = 136315394;
      *&__p[4] = "VirtualAudio_Device.cpp";
      v21 = 1024;
      v22 = 1449;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", __p, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  v3 = *(v1 + 292);
  v16 = 0;
  v17 = 0;
  v4 = a1[120];
  v5 = a1 + 121;
  v18 = 0;
  v19 = &v16;
  if (v4 == a1 + 121)
  {
    v10 = 0;
    v9 = 0;
  }

  else
  {
    do
    {
      sub_1E9824(__p, (v4 + 28));
      sub_1E9E28(&v19, __p);
      if (v23 < 0)
      {
        operator delete(*__p);
      }

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

    while (v7 != v5);
    v9 = v16;
    v10 = v17;
  }

  v11 = sub_1E94D0(v9, v10, v3);
  *__p = &v16;
  sub_11C50(__p);
  LODWORD(v16) = v11;
  strcpy(__p, "dommtpni");
  __p[9] = 0;
  *&__p[10] = 0;
  return (*(*a1 + 80))(a1, __p, 0, 0, 4, &v16, 0);
}

uint64_t sub_1C8EF0(uint64_t a1, unsigned int a2, void *a3)
{
  v6 = sub_1C91EC(a1 + 8, a2);
  v7 = sub_1C901C(a1 + 8, a2);
  sub_44E44(&v21, v7);
  v8 = v21;
  if (v21 == v22)
  {
LABEL_20:
    v18 = 0;
  }

  else
  {
    v11 = *a3;
    v10 = a3 + 1;
    v9 = v11;
    while (1)
    {
      if (v9 != v10)
      {
        v12 = v9;
        while (*(v12 + 7) != *(v8 + 7))
        {
          v13 = v12[1];
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
              v15 = *v14 == v12;
              v12 = v14;
            }

            while (!v15);
          }

          v12 = v14;
          if (v14 == v10)
          {
            goto LABEL_14;
          }
        }

        if (v10 != v12)
        {
          break;
        }
      }

LABEL_14:
      v16 = v8[1];
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
          v17 = v8[2];
          v15 = *v17 == v8;
          v8 = v17;
        }

        while (!v15);
      }

      v8 = v17;
      if (v17 == v22)
      {
        goto LABEL_20;
      }
    }

    v18 = 1;
  }

  v19 = v18 | ((v6 & 0x100) >> 8);
  sub_477A0(v22[0]);
  return v19 | 0x100u;
}

uint64_t *sub_1C901C(uint64_t a1, unsigned int a2)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
    goto LABEL_9;
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
  if (v5 != a1 + 8 && *(v5 + 32) <= a2)
  {
    return (v5 + 80);
  }

LABEL_9:
  if (a2 == 1768776806)
  {
    if (atomic_load_explicit(&qword_6FC760, memory_order_acquire))
    {
      return &qword_6FC748;
    }

    else
    {
      v9 = &qword_6FC748;
      if (__cxa_guard_acquire(&qword_6FC760))
      {
        qword_6FC758 = 0;
        qword_6FC750 = 0;
        qword_6FC748 = &qword_6FC750;
        __cxa_guard_release(&qword_6FC760);
      }
    }
  }

  else
  {
    v10 = sub_5544(21);
    if (*(v10 + 8))
    {
      v11 = *v10;
      if (*v10)
      {
        if (os_log_type_enabled(*v10, OS_LOG_TYPE_DEBUG))
        {
          sub_22170(__p, a2);
          v12 = v15 >= 0 ? __p : __p[0];
          *buf = 136315650;
          v17 = "RoutingTypes.cpp";
          v18 = 1024;
          v19 = 2073;
          v20 = 2080;
          v21 = v12;
          _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEBUG, "%25s:%-5d Did not find entry for current mode: %s, looking in default mode instead.", buf, 0x1Cu);
          if (v15 < 0)
          {
            operator delete(__p[0]);
          }
        }
      }
    }

    return sub_1C901C(a1, 1768776806);
  }

  return v9;
}

uint64_t sub_1C91EC(uint64_t a1, unsigned int a2)
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
  if (v5 != a1 + 8 && *(v5 + 32) <= a2 && *(v5 + 79) == 1)
  {
    v9 = *(v5 + 78);
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
            v20 = 2052;
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

      LOWORD(v9) = sub_1C91EC(a1, 1768776806);
      v10 = BYTE1(v9);
    }
  }

  return v9 | (v10 << 8);
}

void *sub_1C9388(void *result, CFTypeRef cf)
{
  v3 = result;
  if (cf)
  {
    result = CFRetain(cf);
  }

  *v3 = cf;
  return result;
}

const void **sub_1C93C0(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void *sub_1C93F4(void *a1, CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  *a1 = cf;
  return a1;
}

uint64_t sub_1C9430(uint64_t a1, uint64_t a2)
{
  *a1 = off_6B94E0;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  v3 = pthread_mutex_init((a1 + 24), 0);
  if (v3)
  {
    v5 = v3;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315394;
      v8 = "CAMutex.cpp";
      v9 = 1024;
      v10 = 56;
      _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "%25s:%-5d  CAMutex::CAMutex: Could not init the mutex", &v7, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = v5;
  }

  return a1;
}

uint64_t sub_1C9564(uint64_t result)
{
  if (!*(result + 248))
  {
    operator new();
  }

  if (!*(result + 256))
  {
    operator new();
  }

  return result;
}

const void *sub_1C9668(const __CFString *a1)
{
  v1 = sub_1C9750(a1);
  v2 = v1;
  if (v1)
  {
    v3 = CFGetTypeID(v1);
    if (v3 != CFArrayGetTypeID())
    {
      CFRelease(v2);
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v5 = 136315394;
        v6 = "CACFPreferences.cpp";
        v7 = 1024;
        v8 = 101;
        _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  CACFPreferences::CopyArrayValue: not a CFArray", &v5, 0x12u);
      }

      return 0;
    }
  }

  return v2;
}

CFPropertyListRef sub_1C9750(CFStringRef key)
{
  if (byte_6FCC28 == 1)
  {
    CFPreferencesSynchronize(kCFPreferencesAnyApplication, kCFPreferencesAnyUser, kCFPreferencesCurrentHost);
    byte_6FCC28 = 0;
  }

  return CFPreferencesCopyValue(key, kCFPreferencesAnyApplication, kCFPreferencesAnyUser, kCFPreferencesCurrentHost);
}

const void *sub_1C97E8(const __CFString *a1)
{
  v1 = sub_1C9750(a1);
  v2 = v1;
  if (v1)
  {
    v3 = CFGetTypeID(v1);
    if (v3 != CFDictionaryGetTypeID())
    {
      CFRelease(v2);
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v5 = 136315394;
        v6 = "CACFPreferences.cpp";
        v7 = 1024;
        v8 = 127;
        _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  CACFPreferences::CopyDictionaryValue: not a CFDictionary", &v5, 0x12u);
      }

      return 0;
    }
  }

  return v2;
}

uint64_t sub_1C98D8(uint64_t a1, unsigned int a2)
{
  v12 = 0;
  v3 = *(a1 + 376);
  v4 = *(a1 + 8);
  if (!AudioObjectCreate())
  {
    if (a2 != 1836414053)
    {
      if (a2 == 1986817381)
      {
        operator new();
      }

      v6 = sub_5544(14);
      v7 = *v6;
      if (*v6 && os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
      {
        sub_22170(__p, a2);
        if (v11 >= 0)
        {
          v8 = __p;
        }

        else
        {
          v8 = __p[0];
        }

        *buf = 136315650;
        v14 = "VirtualAudio_Device.cpp";
        v15 = 1024;
        v16 = 4910;
        v17 = 2080;
        v18 = v8;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Unhandled control class %s.", buf, 0x1Cu);
        if (v11 < 0)
        {
          operator delete(__p[0]);
        }
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(exception, "Unhandled control class %s.");
    }

    operator new();
  }

  return 0;
}

uint64_t sub_1C9D1C(uint64_t a1, int *a2)
{
  v2 = *a2;
  v3 = 1;
  if (*a2 > 1818850161)
  {
    switch(v2)
    {
      case 1818850162:
        return v3;
      case 1819107691:
        v6 = (*(*a1 + 136))(a1);
        if (v6)
        {
LABEL_14:
          CFRelease(v6);
          return 1;
        }

        break;
      case 1819173229:
        v6 = (*(*a1 + 128))(a1);
        if (v6)
        {
          goto LABEL_14;
        }

        break;
      default:
        return sub_1537C(a1, a2) != 0;
    }

    return 0;
  }

  if (v2 != 1667591277 && v2 != 1668506480 && v2 != 1818850145)
  {
    return sub_1537C(a1, a2) != 0;
  }

  return v3;
}

uint64_t sub_1C9E18(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, int *a5, uint64_t *a6)
{
  v8 = *a2;
  if (*a2 > 1819107690)
  {
    if (v8 == 1819107691)
    {
      v13 = *a5;
      if (v13 != (*(*a1 + 64))(a1))
      {
        v19 = sub_5544(14);
        v15 = *v19;
        if (*v19 && os_log_type_enabled(*v19, OS_LOG_TYPE_ERROR))
        {
          v21 = 136315394;
          v22 = "HP_Control.cpp";
          v23 = 1024;
          v24 = 231;
          v16 = "%25s:%-5d EXCEPTION (kAudioHardwareBadPropertySizeError): wrong data size for kAudioObjectPropertyManufacturer";
          goto LABEL_34;
        }

        goto LABEL_35;
      }

      result = (*(*a1 + 136))(a1);
    }

    else
    {
      if (v8 != 1819173229)
      {
        goto LABEL_11;
      }

      v11 = *a5;
      if (v11 != (*(*a1 + 64))(a1))
      {
        v17 = sub_5544(14);
        v15 = *v17;
        if (*v17 && os_log_type_enabled(*v17, OS_LOG_TYPE_ERROR))
        {
          v21 = 136315394;
          v22 = "HP_Control.cpp";
          v23 = 1024;
          v24 = 226;
          v16 = "%25s:%-5d EXCEPTION (kAudioHardwareBadPropertySizeError): wrong data size for kAudioObjectPropertyName";
          goto LABEL_34;
        }

LABEL_35:
        exception = __cxa_allocate_exception(0x10uLL);
        *exception = &off_6DDDD0;
        exception[2] = 561211770;
      }

      result = (*(*a1 + 128))(a1);
    }

    *a6 = result;
    return result;
  }

  if (v8 != 1667591277)
  {
    if (v8 == 1668506480)
    {
      v9 = *a5;
      result = (*(*a1 + 64))(a1);
      if (v9 == result)
      {
        if (a6)
        {
          result = (*(*a1 + 144))(a1);
LABEL_17:
          *a6 = result;
          return result;
        }

        return result;
      }

      v14 = sub_5544(14);
      v15 = *v14;
      if (*v14 && os_log_type_enabled(*v14, OS_LOG_TYPE_ERROR))
      {
        v21 = 136315394;
        v22 = "HP_Control.cpp";
        v23 = 1024;
        v24 = 236;
        v16 = "%25s:%-5d EXCEPTION (kAudioHardwareBadPropertySizeError): wrong data size for kAudioControlPropertyScope";
LABEL_34:
        _os_log_impl(&dword_0, v15, OS_LOG_TYPE_ERROR, v16, &v21, 0x12u);
        goto LABEL_35;
      }

      goto LABEL_35;
    }

LABEL_11:

    return sub_A654C(a1, a2, a3, a4, a5, a6);
  }

  v12 = *a5;
  result = (*(*a1 + 64))(a1);
  if (v12 != result)
  {
    v18 = sub_5544(14);
    v15 = *v18;
    if (*v18 && os_log_type_enabled(*v18, OS_LOG_TYPE_ERROR))
    {
      v21 = 136315394;
      v22 = "HP_Control.cpp";
      v23 = 1024;
      v24 = 241;
      v16 = "%25s:%-5d EXCEPTION (kAudioHardwareBadPropertySizeError): wrong data size for kAudioControlPropertyElement";
      goto LABEL_34;
    }

    goto LABEL_35;
  }

  if (a6)
  {
    result = (*(*a1 + 152))(a1);
    goto LABEL_17;
  }

  return result;
}

void sub_1CA268(void *a1, uint64_t a2, uint64_t a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = a1 + 1;
  v3 = *(a2 + 152);
  v4 = (a2 + 160);
  v20[0] = a1;
  v20[1] = a1 + 1;
  if (v3 != (a2 + 160))
  {
    while (1)
    {
      v6 = v3[5];
      if (!v6)
      {
        goto LABEL_9;
      }

      v7 = std::__shared_weak_count::lock(v6);
      if (!v7)
      {
        goto LABEL_9;
      }

      v8 = v7;
      v9 = v3[4];
      if (!v9)
      {
        break;
      }

      if (sub_1166C4(*(a3 + 8), a3, v3 + 4) == a3)
      {
        v10 = (*(*v9 + 152))(v9);
        sub_1A8C0(v8);
        if (v10)
        {
          sub_25853C(v20, v3 + 4);
        }
      }

      else
      {
        sub_1A8C0(v8);
      }

LABEL_19:
      v17 = v3[1];
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
          v18 = v3[2];
          v19 = *v18 == v3;
          v3 = v18;
        }

        while (!v19);
      }

      v3 = v18;
      if (v18 == v4)
      {
        return;
      }
    }

    sub_1A8C0(v7);
LABEL_9:
    v11 = sub_5544(24);
    v12 = sub_5544(8);
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
        goto LABEL_15;
      }
    }

    if ((v14 & v15) == 0)
    {
      v11 = v12;
    }

LABEL_15:
    v16 = *v11;
    if (v16 && os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "RoutingManager.cpp";
      v22 = 1024;
      v23 = 4904;
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Previously specified port for override in cache has expired.", buf, 0x12u);
    }

    goto LABEL_19;
  }
}

void sub_1CA4A8(_Unwind_Exception *a1)
{
  sub_1A8C0(v1);
  sub_4B0F4(*v2);
  _Unwind_Resume(a1);
}

void sub_1CA4CC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  if (!a4)
  {
    v4 = sub_5544(14);
    v5 = *v4;
    if (*v4 && os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "HapticDebugManager.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 148;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  if (a3 == 2)
  {
    v7[1] = 0;
    v8 = a4;
    v7[0] = sub_469B80;
    if (atomic_load_explicit(&qword_7001C8, memory_order_acquire) != -1)
    {
      *buf = v7;
      *&buf[8] = &v8;
      v9 = buf;
      std::__call_once(&qword_7001C8, &v9, sub_469B50);
    }
  }
}

uint64_t sub_1CA64C()
{
  if ((byte_6E710C & 1) == 0)
  {
    sub_CE168();
    sub_53E8(__p, "AOP Audio-1");
    sub_CDEB8(&v15, __p);
    byte_6E710C = *(&v15 + 1) != 0;
    if (*(&v15 + 1))
    {
      std::__shared_weak_count::__release_weak(*(&v15 + 1));
    }

    if (SHIBYTE(v4) < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (byte_6E710D)
  {
    v0 = 1;
  }

  else
  {
    v1 = sub_809C0();
    v14 = 1886216809;
    v16 = 0;
    v15 = 0uLL;
    sub_4625C(&v15, &v14, &v15, 1uLL);
    *__p = v15;
    v4 = v16;
    strcpy(v5, "cwdv");
    v5[8] = 0;
    v6 = 3;
    v8[0] = 0;
    v8[1] = 0;
    v7 = v8;
    v9 = 44739242;
    v11 = 0;
    v12 = 0;
    v10 = 0;
    *&v15 = off_6BA830;
    v17 = &v15;
    sub_256FB0(v13, v1, __p, &v15);
    sub_85148(&v15);
    if (SHIBYTE(v12) < 0)
    {
      operator delete(v10);
    }

    sub_477A0(v8[0]);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    byte_6E710D = v13[2] != 0;
    sub_65310(v13);
    v0 = byte_6E710D;
  }

  return byte_6E710C & v0 & 1;
}

void sub_1CA820(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  sub_85148(v14 - 80);
  sub_46934(&__p);
  _Unwind_Resume(a1);
}

void sub_1CA85C(uint64_t a1)
{
  sub_65310((a1 + 72));
  sub_65310((a1 + 48));
  sub_D169C(*(a1 + 32));

  operator delete();
}

uint64_t sub_1CA8B8()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1CA8F0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

char *sub_1CA93C()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return sub_1D1138(&qword_6E4938, &qword_516FD0);
  }

  else
  {
    return &type metadata for () + 8;
  }
}

uint64_t sub_1CA96C()
{
  _Block_release(*(v0 + 16));
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1CA9B0()
{
  _Block_release(*(v0 + 32));
  v1 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1CAA00()
{
  _Block_release(*(v0 + 24));
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1CAA40()
{
  _Block_release(*(v0 + 24));
  _Block_release(*(v0 + 32));
  v1 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1CAA88()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

void sub_1CBEE4(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    sub_1A8C0(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1CBEFC(unint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  sub_1CC608(v4, a2);
  sub_1CBF78(v2, v4);
  return sub_133B84(v4);
}

void sub_1CBF6C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_1CC130(a1);
}

void sub_1CBF78(unint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 32);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_1A8C0(v5);
  }

  v6 = *a1;
  if (*a1)
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3321888768;
    v11[2] = sub_1CC4E4;
    v11[3] = &unk_6B58E0;
    sub_1CC608(v12, a2);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3321888768;
    v9[2] = sub_1CC500;
    v9[3] = &unk_6B5910;
    v9[4] = a1;
    v9[5] = v4;
    v10 = v5;
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v7 = 0x9DDFEA08EB382D69 * ((8 * (a1 & 0x1FFFFFFF) + 8) ^ HIDWORD(a1));
    v8 = 0x9DDFEA08EB382D69 * (HIDWORD(a1) ^ (v7 >> 47) ^ v7);
    [v6 register_for_inference_monitor_eventsWithHash:0x9DDFEA08EB382D69 * (v8 ^ (v8 >> 47)) eventCallback:v11 completionHandler:v9];
    if (v10)
    {
      std::__shared_weak_count::__release_weak(v10);
    }

    sub_133B84(v12);
  }

  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }
}

void sub_1CC124(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_1CC130(a1);
}

id sub_1CC14C(uint64_t a1)
{
  result = *a1;
  if (result)
  {
    return [result unregister_from_inference_monitorWithObserver:*(a1 + 8) completionHandler:&stru_6B5960];
  }

  return result;
}

uint64_t sub_1CC180(uint64_t a1)
{
  sub_140514(a1 + 16);
  sub_1CC5A0(a1 + 16);
  v2 = *(a1 + 8);
  if (v2)
  {
    sub_1A8C0(v2);
  }

  return a1;
}

void sub_1CC314(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  operator delete();
}

void ***sub_1CC35C(void ***a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_1CCBF8(v2);
    operator delete();
  }

  return a1;
}

id sub_1CC3AC(uint64_t a1)
{
  result = *a1;
  if (result)
  {
    return [result acquireInPolicy:*(a1 + 8) inDescription:*(a1 + 16) completionHandler:&stru_6B5980];
  }

  return result;
}

void sub_1CC3E8(void **a1)
{
  v2 = *a1;
  if (v2)
  {
    [v2 invalidateWithCompletionHandler:&stru_6B59A0];
    v3 = *a1;
    *a1 = 0;
  }
}

void ***sub_1CC444(void ***a1)
{
  sub_140514((a1 + 1));
  sub_1CC5A0((a1 + 1));

  return sub_1CC35C(a1);
}

void sub_1CC500(void *a1, int a2)
{
  v3 = a1[6];
  if (v3)
  {
    v5 = a1[4];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      if (a1[5])
      {
        *(v5 + 8) = a2;
      }

      sub_1A8C0(v6);
    }
  }
}

uint64_t sub_1CC570(uint64_t result, uint64_t a2)
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

void sub_1CC58C(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t sub_1CC5A0(uint64_t a1)
{
  if (*(a1 + 8))
  {
    _os_assert_log();
    v4 = _os_crash();
    sub_1CD0AC(v4);
  }

  if (*(a1 + 40) == 1)
  {
    caulk::semaphore::~semaphore((a1 + 24));
  }

  v2 = *(a1 + 16);
  if (v2)
  {
    sub_1A8C0(v2);
  }

  return a1;
}

uint64_t sub_1CC608(uint64_t a1, uint64_t a2)
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

void sub_1CC6FC(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_6B59D0;
  sub_1CC7D8(a1 + 3);
}

void sub_1CC778(std::__shared_weak_count *a1)
{
  a1->__vftable = off_6B59D0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1CC7D8(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = a1;
  sub_1CC860();
}

void sub_1CC83C(_Unwind_Exception *a1)
{
  sub_1CC5A0((v1 + 2));

  _Unwind_Resume(a1);
}

void sub_1CC904(std::__shared_weak_count *a1)
{
  a1->__vftable = off_6B5A20;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1CC964(uint64_t a1)
{
  __dmb(0xBu);
  caulk::semaphore::signal((*(a1 + 16) + 24));
  v2 = *(a1 + 8);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

id *sub_1CC9A4(id *a1)
{
  sub_140514((a1 + 2));
  sub_1CC14C(a1);
  sub_1CC5A0((a1 + 2));

  return a1;
}

void sub_1CCA90(std::__shared_weak_count *a1)
{
  a1->__vftable = off_6B5A70;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

std::logic_error *sub_1CCAF0(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  return result;
}

VAModelManagerAssertion **sub_1CCB24(VAModelManagerAssertion **a1, uint64_t *a2, uint64_t *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v6 = objc_alloc_init(VAModelManagerAssertion);
  v7 = *a1;
  *a1 = v6;

  if (*(a2 + 23) < 0)
  {
    a2 = *a2;
  }

  v8 = [NSString stringWithCString:a2 encoding:4];
  v9 = a1[1];
  a1[1] = v8;

  if (*(a3 + 23) < 0)
  {
    a3 = *a3;
  }

  v10 = [NSString stringWithCString:a3 encoding:4];
  v11 = a1[2];
  a1[2] = v10;

  return a1;
}

void **sub_1CCBF8(void **a1)
{
  sub_1CC3E8(a1);

  return a1;
}

void sub_1CCCDC(std::__shared_weak_count *a1)
{
  a1->__vftable = off_6B5AC0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1CCD98(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_6B5B10;
  sub_1CBE90();
}

void sub_1CCE14(std::__shared_weak_count *a1)
{
  a1->__vftable = off_6B5B10;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1CCEE8(void *a1, uint64_t a2, uint64_t a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_6B5B60;
  sub_1CCFC4((a1 + 3), a2, a3);
}

void sub_1CCF64(std::__shared_weak_count *a1)
{
  a1->__vftable = off_6B5B60;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1CCFC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 23) < 0)
  {
    sub_54A0(__dst, *a2, *(a2 + 8));
  }

  else
  {
    *__dst = *a2;
    v7 = *(a2 + 16);
  }

  if (*(a3 + 23) < 0)
  {
    sub_54A0(__p, *a3, *(a3 + 8));
  }

  else
  {
    *__p = *a3;
    v5 = *(a3 + 16);
  }

  sub_1CC1C4();
}

void sub_1CD078(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1CD0B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[6] = a3;
  v4[7] = v3;
  v4[4] = a1;
  v4[5] = a2;
  v5 = *(*(sub_1D1138(&qword_6E48F8, &qword_516E88) - 8) + 64) + 15;
  v4[8] = swift_task_alloc();

  return _swift_task_switch(sub_1CD150, v3, 0);
}

uint64_t sub_1CD150()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v2 + OBJC_IVAR___VAModelManagerMonitor_mEventObservers;
  os_unfair_lock_lock((v2 + OBJC_IVAR___VAModelManagerMonitor_mEventObservers));
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  *(v6 + 24) = v1;

  v7 = sub_1D08F4(sub_1D1180, v6, v3);
  sub_1D11AC(v7);
  os_unfair_lock_unlock(v5);
  v8 = OBJC_IVAR___VAModelManagerMonitor_mInferenceTask;
  if (!*(v2 + OBJC_IVAR___VAModelManagerMonitor_mInferenceTask))
  {
    v10 = v0[7];
    v9 = v0[8];
    v11 = sub_51349C();
    (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
    v12 = sub_1D1BD4(&qword_6E4900, type metadata accessor for VAModelManagerMonitor);
    v13 = swift_allocObject();
    v13[2] = v10;
    v13[3] = v12;
    v13[4] = v10;
    swift_retain_n();
    v14 = sub_1CDFEC(0, 0, v9, &unk_516E98, v13);
    v15 = *(v2 + v8);
    *(v2 + v8) = v14;
  }

  swift_getKeyPath();
  os_unfair_lock_lock(v5);
  v0[2] = *(v5 + 8);

  swift_getAtKeyPath();

  v16 = v0[3];
  os_unfair_lock_unlock(v5);

  if (qword_6E4C40 != -1)
  {
    swift_once();
  }

  v17 = sub_51342C();
  sub_1D129C(v17, qword_70A508);
  v18 = sub_51341C();
  v19 = sub_5134CC();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 134217984;
    *(v20 + 4) = v16;
    _os_log_impl(&dword_0, v18, v19, "VA ModelManagerMonitor:: adding observer %ld", v20, 0xCu);
  }

  v21 = v0[8];

  v22 = v0[1];
  v23 = v0[4];

  return v22(v23);
}

uint64_t sub_1CD444(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a4;
  v6 = sub_5133BC();
  v4[5] = v6;
  v7 = *(v6 - 8);
  v4[6] = v7;
  v8 = *(v7 + 64) + 15;
  v4[7] = swift_task_alloc();
  v9 = *(*(sub_1D1138(&qword_6E4978, &qword_5170C0) - 8) + 64) + 15;
  v4[8] = swift_task_alloc();
  v10 = sub_5133DC();
  v4[9] = v10;
  v11 = *(v10 - 8);
  v4[10] = v11;
  v12 = *(v11 + 64) + 15;
  v4[11] = swift_task_alloc();

  return _swift_task_switch(sub_1CD59C, a4, 0);
}

uint64_t sub_1CD59C()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  (*(v2 + 16))(v1, v0[4] + OBJC_IVAR___VAModelManagerMonitor_mInferenceMonitor, v3);
  v4 = sub_51339C();
  (*(v2 + 8))(v1, v3);
  v0[2] = v4;
  v5 = sub_1D1BD4(&qword_6E4900, type metadata accessor for VAModelManagerMonitor);
  v6 = OBJC_IVAR___VAModelManagerMonitor_mEventObservers;
  v0[12] = v5;
  v0[13] = v6;
  v7 = sub_51338C();
  v8 = sub_1D1BD4(&qword_6E4980, &type metadata accessor for InferenceMonitor.AsyncIterator);
  v9 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = sub_1CD724;
  v11 = v0[8];

  return dispatch thunk of AsyncIteratorProtocol.next()(v11, v7, v8);
}

uint64_t sub_1CD724()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v4 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    if (*(v2 + 32))
    {
      v5 = *(v2 + 96);
      swift_getObjectType();
      v6 = sub_51346C();
      v8 = v7;
    }

    else
    {
      v6 = 0;
      v8 = 0;
    }

    v9 = sub_1CDAA4;
    v10 = v6;
  }

  else
  {
    v9 = sub_1CD890;
    v10 = *(v2 + 32);
    v8 = 0;
  }

  return _swift_task_switch(v9, v10, v8);
}