uint64_t sub_239482180(uint64_t a1, void *a2, int a3)
{
  v20 = *MEMORY[0x277D85DE8];
  result = sub_2394815F0("OnNeedEnabled", a3);
  if (!a3)
  {
    if ((byte_27DF7BD28 & 1) == 0)
    {
      byte_27DF7BD28 = 1;
      qword_27DF7BD18 = 0;
      unk_27DF7BD20 = 0;
      qword_27DF7BD10 = 0;
    }

    result = sub_23947AD90(&qword_27DF7BD10, a2);
    if (!result)
    {
      v6 = sub_2393D9044(0x22u);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v8 = a2[5];
        v7 = a2[6];
        if (!v7)
        {
          v7 = "(null)";
        }

        v9 = a2[4];
        if (!v8)
        {
          v8 = "(null)";
        }

        *buf = 136315906;
        v13 = "OnNeedEnabled";
        v14 = 2080;
        v15 = v7;
        v16 = 2080;
        v17 = v8;
        v18 = 2048;
        v19 = v9;
        _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_DEFAULT, "%s on type=%s name=%s ref=%p", buf, 0x2Au);
      }

      if (sub_2393D5398(2u))
      {
        a2[6];
        a2[5];
        v11 = a2[4];
        sub_2393D5320(0x22u, 2);
      }

      result = a2[4];
      if (result)
      {
        result = advertising_proxy_ref_dealloc();
        a2[4] = 0;
      }
    }
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_23948230C(uint64_t a1, uint32_t interfaceIndex, char *regtype, const char *a4, char *domain, void *context)
{
  sdRef = *(a1 + 24);
  v7 = DNSServiceResolve(&sdRef, 0x4000u, interfaceIndex, a4, regtype, domain, sub_239482384, context);
  if (v7)
  {
    return sub_23947AEF0(a1, v7);
  }

  else
  {
    return 0;
  }
}

void sub_239482384(uint64_t a1, int a2, int a3, int a4, const char *a5, char *a6, unsigned int a7, unsigned int a8, unsigned __int8 *a9, uint64_t a10)
{
  v48 = *MEMORY[0x277D85DE8];
  v15 = sub_2393D9044(0x22u);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    if (a5)
    {
      v16 = a5;
    }

    else
    {
      v16 = "(null)";
    }

    if (a6)
    {
      v17 = a6;
    }

    else
    {
      v17 = "(null)";
    }

    *buf = 136316930;
    *&buf[4] = "OnResolve";
    v34 = 1024;
    v35 = a2;
    v36 = 1024;
    v37 = a3;
    v38 = 2080;
    v39 = v16;
    v40 = 2080;
    v41 = v17;
    v42 = 1024;
    v43 = __rev16(a7);
    v44 = 1024;
    v45 = a4;
    v46 = 2080;
    v47 = sub_23947F330(a4);
    _os_log_impl(&dword_238DAE000, v15, OS_LOG_TYPE_DEFAULT, "Mdns: %s flags: %d, interface: %u, fullname: %s, hostname: %s, port: %u, err: %i (%s)", buf, 0x42u);
  }

  if (sub_2393D5398(2u))
  {
    sub_23947F330(a4);
    sub_2393D5320(0x22u, 2);
  }

  if (!a10)
  {
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v15, OS_LOG_TYPE_ERROR, "ResolveContextWithType is null", buf, 2u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0x22u, 1);
    }

    goto LABEL_42;
  }

  v18 = *a10;
  if ((byte_27DF7BD28 & 1) == 0)
  {
    byte_27DF7BD28 = 1;
    qword_27DF7BD18 = 0;
    unk_27DF7BD20 = 0;
    qword_27DF7BD10 = 0;
  }

  if (!sub_23947AD90(&qword_27DF7BD10, v18))
  {
    sub_239481814("OnResolve", a4);
    if (!a4)
    {
      sub_23947DA9C(v18, a3, a5, a6, a7, a8, a9, *(a10 + 8));
    }

    if ((a2 & 1) == 0)
    {
      if (!sub_23947E0B4(v18))
      {
        v28 = v18;
        v29 = -65542;
        goto LABEL_41;
      }

      v19 = *(v18 + 64);
      if (v19 != (v18 + 72))
      {
        v20 = *(v18 + 88);
        do
        {
          if ((v19[34] & 1) == 0)
          {
            v21 = (v19 + 31);
            if (*(v19 + 271) < 0)
            {
              v21 = *v21;
            }

            v22 = *(v19 + 8);
            *buf = *(v18 + 24);
            if (*(v19 + 64))
            {
              v23 = 136;
            }

            else
            {
              v23 = 152;
            }

            AddrInfo = DNSServiceGetAddrInfo(buf, 0x4000u, v22, v20, v21, sub_2394826E0, (v18 + v23));
            if (AddrInfo)
            {
              v29 = AddrInfo;
              v28 = v18;
LABEL_41:
              sub_23947AEF0(v28, v29);
              break;
            }

            *(v19 + 272) = 1;
          }

          v25 = v19[1];
          if (v25)
          {
            do
            {
              v26 = v25;
              v25 = *v25;
            }

            while (v25);
          }

          else
          {
            do
            {
              v26 = v19[2];
              v27 = *v26 == v19;
              v19 = v26;
            }

            while (!v27);
          }

          v19 = v26;
        }

        while (v26 != (v18 + 72));
      }
    }
  }

LABEL_42:
  v30 = *MEMORY[0x277D85DE8];
}

void sub_2394826E0(uint64_t a1, int a2, int a3, int a4, char *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v30 = *MEMORY[0x277D85DE8];
  v14 = sub_2393D9044(0x22u);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    if (a5)
    {
      v15 = a5;
    }

    else
    {
      v15 = "(null)";
    }

    *buf = 136316418;
    *__p = "OnGetAddrInfo";
    *&__p[8] = 1024;
    *&__p[10] = a2;
    v22 = 1024;
    v23 = a3;
    v24 = 2080;
    v25 = v15;
    v26 = 1024;
    v27 = a4;
    v28 = 2080;
    v29 = sub_23947F330(a4);
    _os_log_impl(&dword_238DAE000, v14, OS_LOG_TYPE_DEFAULT, "Mdns: %s flags: %d, interface: %u, hostname: %s, err: %i (%s)", buf, 0x32u);
  }

  if (sub_2393D5398(2u))
  {
    sub_23947F330(a4);
    sub_2393D5320(0x22u, 2);
  }

  if (a8)
  {
    v16 = *a8;
    if ((byte_27DF7BD28 & 1) == 0)
    {
      byte_27DF7BD28 = 1;
      qword_27DF7BD18 = 0;
      unk_27DF7BD20 = 0;
      qword_27DF7BD10 = 0;
    }

    if (!sub_23947AD90(&qword_27DF7BD10, v16))
    {
      sub_239481814("OnGetAddrInfo", a4);
      if (!a4)
      {
        *buf = a3;
        sub_23947C374(&__p[4], a5);
        BYTE6(v25) = *(a8 + 8);
        sub_23947D768(v16, buf, a6);
        if (SBYTE5(v25) < 0)
        {
          operator delete(*&__p[4]);
        }
      }

      if ((a2 & 1) == 0)
      {
        if (sub_23947DA38(v16))
        {
          v17 = v16;
          v18 = 0;
        }

        else
        {
          v17 = v16;
          v18 = -65542;
        }

        sub_23947AEF0(v17, v18);
      }
    }
  }

  else
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v14, OS_LOG_TYPE_ERROR, "ResolveContextWithType is null", buf, 2u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0x22u, 1);
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

void sub_239482960(uint64_t a1, dispatch_once_t *a2)
{

  dispatch_once_f(a2 + 12, a2, sub_238DCC8D4);
}

void sub_239482984(char *__s@<X0>, int a2@<W1>, std::string *a3@<X8>)
{
  if (a2)
  {
    sub_23947C374(&v6, __s);
    v4 = "._tcp";
  }

  else
  {
    sub_23947C374(&v6, __s);
    v4 = "._udp";
  }

  v5 = std::string::append(&v6, v4);
  *a3 = *v5;
  v5->__r_.__value_.__r.__words[0] = 0;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }
}

void sub_239482A18(char *a1@<X0>, int a2@<W1>, char *a3@<X8>)
{
  v29[2] = *MEMORY[0x277D85DE8];
  sub_239482984(a1, a2, a3);
  sub_23947C374(v27, "._sub.");
  v4 = a3[23];
  if ((v4 & 0x80u) == 0)
  {
    v5 = a3;
  }

  else
  {
    v5 = *a3;
  }

  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a3 + 1);
  }

  v6 = v28;
  if ((v28 & 0x80u) == 0)
  {
    v7 = v27;
  }

  else
  {
    v7 = v27[0];
  }

  if ((v28 & 0x80u) == 0)
  {
    v8 = v28;
  }

  else
  {
    v8 = v27[1];
  }

  if (v8)
  {
    if (v4 >= v8)
    {
      v9 = &v5[v4];
      v10 = *v7;
      v11 = v5;
      do
      {
        v12 = v4 - v8;
        if (v12 == -1)
        {
          break;
        }

        v13 = memchr(v11, v10, v12 + 1);
        if (!v13)
        {
          break;
        }

        v14 = v13;
        if (!memcmp(v13, v7, v8))
        {
          if (v14 != v9)
          {
            v15 = v14 - v5;
            if (v14 - v5 != -1)
            {
              goto LABEL_21;
            }
          }

          break;
        }

        v11 = v14 + 1;
        v4 = v9 - (v14 + 1);
      }

      while (v4 >= v8);
    }
  }

  else
  {
    v15 = 0;
LABEL_21:
    std::string::basic_string(&v25, a3, v15 + v8, 0xFFFFFFFFFFFFFFFFLL, &v26);
    v16 = std::string::append(&v25, ",");
    v17 = v16->__r_.__value_.__r.__words[2];
    *&v26.__r_.__value_.__l.__data_ = *&v16->__r_.__value_.__l.__data_;
    v26.__r_.__value_.__r.__words[2] = v17;
    v16->__r_.__value_.__l.__size_ = 0;
    v16->__r_.__value_.__r.__words[2] = 0;
    v16->__r_.__value_.__r.__words[0] = 0;
    std::string::basic_string(&__p, a3, 0, v15, v29);
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

    v20 = std::string::append(&v26, p_p, size);
    v21 = v20->__r_.__value_.__r.__words[0];
    v29[0] = v20->__r_.__value_.__l.__size_;
    *(v29 + 7) = *(&v20->__r_.__value_.__r.__words[1] + 7);
    v22 = HIBYTE(v20->__r_.__value_.__r.__words[2]);
    v20->__r_.__value_.__l.__size_ = 0;
    v20->__r_.__value_.__r.__words[2] = 0;
    v20->__r_.__value_.__r.__words[0] = 0;
    if (a3[23] < 0)
    {
      operator delete(*a3);
    }

    *a3 = v21;
    *(a3 + 1) = v29[0];
    *(a3 + 15) = *(v29 + 7);
    a3[23] = v22;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v26.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v25.__r_.__value_.__l.__data_);
    }

    v6 = v28;
  }

  if ((v6 & 0x80) != 0)
  {
    operator delete(v27[0]);
  }

  v23 = *MEMORY[0x277D85DE8];
}

uint64_t sub_239482C54(const char *a1, int a2, const char **a3, int a4)
{
  sub_239482E38(&v14);
  v8 = strlen(a1);
  sub_23948326C(&v14, a1, v8);
  if (a2)
  {
    v9 = "._tcp";
  }

  else
  {
    v9 = "._udp";
  }

  sub_23948326C(&v14, v9, 5);
  if (a4 >= 1)
  {
    v10 = a4 & 0x7FFFFFFF;
    do
    {
      sub_23948326C(&v14, ",", 1);
      v11 = *a3++;
      v12 = strlen(v11);
      sub_23948326C(&v14, v11, v12);
      --v10;
    }

    while (v10);
  }

  std::stringbuf::str();
  v14 = *MEMORY[0x277D82828];
  *(&v14 + *(v14 - 24)) = *(MEMORY[0x277D82828] + 24);
  v15 = MEMORY[0x277D82878] + 16;
  if (v17 < 0)
  {
    operator delete(v16[7].__locale_);
  }

  v15 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v16);
  std::ostream::~ostream();
  return MEMORY[0x23EE77B10](&v18);
}

uint64_t sub_239482E38(uint64_t a1)
{
  *(a1 + 160) = 0;
  v2 = MEMORY[0x277D828A0] + 24;
  v3 = MEMORY[0x277D828A0] + 64;
  *(a1 + 112) = MEMORY[0x277D828A0] + 64;
  v4 = a1 + 8;
  v5 = *(MEMORY[0x277D82828] + 16);
  v6 = *(MEMORY[0x277D82828] + 8);
  *a1 = v6;
  *(a1 + *(v6 - 24)) = v5;
  v7 = (a1 + *(*a1 - 24));
  std::ios_base::init(v7, (a1 + 8));
  v7[1].__vftable = 0;
  v7[1].__fmtflags_ = -1;
  *(a1 + 112) = v3;
  v8 = MEMORY[0x277D82868] + 16;
  *a1 = v2;
  *(a1 + 8) = v8;
  MEMORY[0x23EE77AD0](a1 + 16);
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 8) = MEMORY[0x277D82878] + 16;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 16;
  sub_239483164(v4);
  return a1;
}

__n128 sub_239482FEC@<Q0>(std::string *__s@<X0>, uint64_t a2@<X8>)
{
  size = SHIBYTE(__s->__r_.__value_.__r.__words[2]);
  if (size < 0)
  {
    v5 = __s->__r_.__value_.__r.__words[0];
    size = __s->__r_.__value_.__l.__size_;
  }

  else
  {
    v5 = __s;
  }

  if (size >= 1)
  {
    v6 = v5 + size;
    v7 = v5;
    do
    {
      v8 = memchr(v7, 44, size);
      if (!v8)
      {
        break;
      }

      if (*v8 == 44)
      {
        if (v8 != v6 && v8 - v5 != -1)
        {
          std::string::erase(__s, v8 - v5, 0xFFFFFFFFFFFFFFFFLL);
        }

        break;
      }

      v7 = (v8 + 1);
      size = v6 - v7;
    }

    while (v6 - v7 >= 1);
  }

  result = *&__s->__r_.__value_.__l.__data_;
  *a2 = *&__s->__r_.__value_.__l.__data_;
  *(a2 + 16) = *(&__s->__r_.__value_.__l + 2);
  __s->__r_.__value_.__l.__size_ = 0;
  __s->__r_.__value_.__r.__words[2] = 0;
  __s->__r_.__value_.__r.__words[0] = 0;
  return result;
}

std::string *sub_2394830A0@<X0>(char *__s@<X0>, uint64_t a2@<X8>)
{
  result = sub_23947C374(a2, __s);
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  if (v4 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = *(a2 + 8);
  }

  if (v6 >= 1)
  {
    v7 = (v5 + v6);
    result = v5;
    do
    {
      result = memchr(result, 46, v6);
      if (!result)
      {
        break;
      }

      if (result->__r_.__value_.__s.__data_[0] == 46)
      {
        if (result != v7 && result - v5 != -1)
        {

          return std::string::erase(a2, result - v5, 0xFFFFFFFFFFFFFFFFLL);
        }

        return result;
      }

      result = (result + 1);
      v6 = v7 - result;
    }

    while (v7 - result >= 1);
  }

  return result;
}

void sub_239483164(uint64_t a1)
{
  *(a1 + 88) = 0;
  v2 = (a1 + 64);
  v3 = *(a1 + 87);
  if (v3 < 0)
  {
    v4 = *(a1 + 64);
    v5 = *(a1 + 72);
  }

  else
  {
    v4 = v2;
    v5 = *(a1 + 87);
  }

  v6 = *(a1 + 96);
  if ((v6 & 8) != 0)
  {
    *(a1 + 88) = v4 + v5;
    *(a1 + 16) = v4;
    *(a1 + 24) = v4;
    *(a1 + 32) = v4 + v5;
  }

  if ((v6 & 0x10) != 0)
  {
    *(a1 + 88) = v4 + v5;
    if ((v3 & 0x80000000) != 0)
    {
      v7 = (*(a1 + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    else
    {
      v7 = 22;
    }

    std::string::resize(v2, v7, 0);
    v8 = *(a1 + 87);
    if (v8 < 0)
    {
      v8 = *(a1 + 72);
    }

    *(a1 + 40) = v4;
    *(a1 + 48) = v4;
    *(a1 + 56) = v4 + v8;
    if ((*(a1 + 96) & 3) != 0)
    {
      if (v5 >> 31)
      {
        v9 = ((v5 - 0x80000000) * 0x200000005uLL) >> 64;
        v10 = 0x7FFFFFFF * ((v9 + ((v5 - 0x80000000 - v9) >> 1)) >> 30);
        v4 = (v4 + v10 + 0x7FFFFFFF);
        v5 = v5 - v10 - 0x7FFFFFFF;
        *(a1 + 48) = v4;
      }

      if (v5)
      {
        *(a1 + 48) = v4 + v5;
      }
    }
  }
}

void *sub_23948326C(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x23EE77A50](v13, a1);
  if (v13[0] == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 40);
    v8 = a2 + a3;
    if ((*(v6 + 8) & 0xB0) == 0x20)
    {
      v9 = v8;
    }

    else
    {
      v9 = a2;
    }

    v10 = *(v6 + 144);
    if (v10 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v11 = std::locale::use_facet(&v14, MEMORY[0x277D82680]);
      v10 = (v11->__vftable[2].~facet_0)(v11, 32);
      std::locale::~locale(&v14);
      *(v6 + 144) = v10;
    }

    if (!sub_2394833B4(v7, a2, v9, v8, v6, v10))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x23EE77A60](v13);
  return a1;
}

uint64_t sub_2394833B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
{
  v6 = a1;
  if (a1)
  {
    v11 = *(a5 + 24);
    if (v11 <= a4 - a2)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11 - (a4 - a2);
    }

    if (a3 - a2 >= 1 && (*(*a1 + 96))(a1) != a3 - a2)
    {
      return 0;
    }

    if (v12 >= 1)
    {
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_238EAEDBC();
      }

      if (v12 >= 0x17)
      {
        operator new();
      }

      v18 = v12;
      memset(&__b, __c, v12);
      *(&__b + v12) = 0;
      if (v18 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b;
      }

      v14 = (*(*v6 + 96))(v6, p_b, v12);
      if (v18 < 0)
      {
        operator delete(__b);
      }

      if (v14 != v12)
      {
        return 0;
      }
    }

    v15 = a4 - a3;
    if (v15 < 1 || (*(*v6 + 96))(v6, a3, v15) == v15)
    {
      *(a5 + 24) = 0;
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

uint64_t sub_239483580(uint64_t a1)
{
  if (*a1)
  {
    **a1 = 0;
  }

  v2 = *(a1 + 8);
  if (v2)
  {
    sub_238EF79DC(v2);
  }

  return a1;
}

void sub_2394835D0(uint64_t a1, void *a2, char a3, int a4)
{
  v8 = a2;
  *(a1 + 24) = a4;
  *(a1 + 28) = a3;
  objc_storeStrong((a1 + 32), a2);
  v9 = *(a1 + 16);
  *(a1 + 16) = 0;

  operator new();
}

NSObject *sub_2394836D0(uint64_t *a1, nw_interface_type_t a2, void *a3, char a4)
{
  v7 = a3;
  v8 = nw_path_monitor_create_with_type(a2);
  v9 = v8;
  if (v8)
  {
    nw_path_monitor_set_queue(v8, a1[4]);
    v10 = *a1;
    v11 = a1[1];
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    update_handler[0] = MEMORY[0x277D85DD0];
    update_handler[1] = 3321888768;
    update_handler[2] = sub_23948384C;
    update_handler[3] = &unk_284BBB830;
    v18 = v10;
    v19 = v11;
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v17 = v7;
    v20 = a4;
    v12 = v9;
    v16 = v12;
    nw_path_monitor_set_update_handler(v12, update_handler);
    v13 = v12;

    if (v19)
    {
      sub_238EF79DC(v19);
    }

    if (v11)
    {
      sub_238EF79DC(v11);
    }
  }

  return v9;
}

void sub_239483800(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a17)
  {
    sub_238EF79DC(a17);
  }

  if (v19)
  {
    sub_238EF79DC(v19);
  }

  _Unwind_Resume(a1);
}

void sub_23948384C(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (**(a1 + 48) == 1)
  {
    v5 = v3;
    status = nw_path_get_status(v5);
    v7 = sub_2393D9044(1u);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      if (status > nw_path_status_satisfiable)
      {
        v8 = "Unknown";
      }

      else
      {
        v8 = off_278A82FB8[status];
      }

      *buf = 136315138;
      v12 = v8;
      _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_DEFAULT, "Status: %s", buf, 0xCu);
    }

    if (sub_2393D5398(2u))
    {
      if (status <= nw_path_status_satisfiable)
      {
        v9 = off_278A82FB8[status];
      }

      sub_2393D5320(1u, 2);
    }

    if (nw_path_get_status(v5) == nw_path_status_satisfied)
    {
      (*(*(a1 + 40) + 16))(*(a1 + 40));
    }

    if (*(a1 + 64) == 1)
    {
      nw_path_monitor_cancel(*(a1 + 32));
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t sub_2394839EC(uint64_t result, uint64_t a2)
{
  *(result + 48) = *(a2 + 48);
  v2 = *(a2 + 56);
  *(result + 56) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_239483A10(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1)
  {
    sub_238EF79DC(v1);
  }
}

void sub_239483A20(uint64_t a1, nw_path_t path, uint64_t a3, uint64_t a4, char a5)
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_239483A9C;
  v5[3] = &unk_278A82F20;
  v5[4] = a1;
  v5[5] = a3;
  v5[6] = a4;
  v6 = a5;
  nw_path_enumerate_interfaces(path, v5);
}

uint64_t sub_239483A9C(uint64_t a1, void *a2)
{
  v63 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  type = nw_interface_get_type(v3);
  if (type <= nw_interface_type_loopback && type != nw_interface_type_cellular)
  {
    v7 = *(v4 + 24);
    index = nw_interface_get_index(v3);
    if (!v7 || index == v7)
    {
      v10 = *(v4 + 28);
      v12 = *(a1 + 40);
      v11 = *(a1 + 48);
      v13 = *(a1 + 56);
      v14 = v3;
      v55 = 0;
      if ((getifaddrs(&v55) & 0x80000000) == 0)
      {
        v15 = nw_interface_get_index(v14);
        v16 = v55;
        if (v55)
        {
          v17 = v15;
          v18 = v10 & 0xFFFFFFFD;
          v48 = v10 & 0xFE;
          do
          {
            ifa_addr = v16->ifa_addr;
            if (ifa_addr)
            {
              ifa_flags = v16->ifa_flags;
              v21 = (ifa_flags & 8) != 0 ? 0 : v13;
              if ((~ifa_flags & 0x8040) == 0 && (v21 & 1) == 0 && v17 == if_nametoindex(v16->ifa_name))
              {
                if (v18 == 1 && ifa_addr->sa_family == 2)
                {
                  v22 = *&ifa_addr->sa_data[2];
                  *buf = v14;
                  *&buf[8] = v22;
                  sub_239484958(v12, buf);
                }

                else if (v48 == 2 && ifa_addr->sa_family == 30)
                {
                  v58 = *&ifa_addr->sa_data[6];
                  v23 = v14;
                  v25 = v11[1];
                  v24 = v11[2];
                  if (v25 >= v24)
                  {
                    v27 = 0xAAAAAAAAAAAAAAABLL * ((v25 - *v11) >> 3);
                    v28 = v27 + 1;
                    if (v27 + 1 > 0xAAAAAAAAAAAAAAALL)
                    {
                      sub_238EAEDBC();
                    }

                    v29 = 0xAAAAAAAAAAAAAAABLL * ((v24 - *v11) >> 3);
                    if (2 * v29 > v28)
                    {
                      v28 = 2 * v29;
                    }

                    if (v29 >= 0x555555555555555)
                    {
                      v30 = 0xAAAAAAAAAAAAAAALL;
                    }

                    else
                    {
                      v30 = v28;
                    }

                    *&buf[32] = v11;
                    if (v30)
                    {
                      sub_2394803F4(v11, v30);
                    }

                    v31 = 24 * v27;
                    *buf = 0;
                    *&buf[8] = v31;
                    *&buf[24] = 0;
                    *v31 = v23;
                    *(v31 + 8) = v58;
                    *&buf[16] = 24 * v27 + 24;
                    sub_239484B80(v11, buf);
                    v26 = v11[1];
                    sub_239484C48(buf);
                  }

                  else
                  {
                    *v25 = v23;
                    *(v25 + 8) = v58;
                    v26 = v25 + 24;
                  }

                  v11[1] = v26;
                }
              }
            }

            v16 = v16->ifa_next;
          }

          while (v16);
          v32 = v55;
        }

        else
        {
          v32 = 0;
        }

        MEMORY[0x23EE78030](v32);
      }

      v33 = *(a1 + 40);
      v53 = 0;
      v54 = 0;
      v52 = 0;
      sub_2394801CC(&v52, *v33, v33[1], (v33[1] - *v33) >> 4);
      v34 = *(a1 + 48);
      v50 = 0;
      v51 = 0;
      v49 = 0;
      sub_239480338(&v49, *v34, v34[1], 0xAAAAAAAAAAAAAAABLL * ((v34[1] - *v34) >> 3));
      v47 = v14;
      v35 = nw_interface_get_index(v47);
      name = nw_interface_get_name(v47);
      v37 = nw_interface_get_type(v47);
      v38 = sub_2393D9044(1u);
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        if (v37 > nw_interface_type_loopback)
        {
          v39 = "Unknown";
        }

        else
        {
          v39 = off_278A82FD8[v37];
        }

        *buf = 136315650;
        *&buf[4] = name;
        *&buf[12] = 1024;
        *&buf[14] = v35;
        *&buf[18] = 2080;
        *&buf[20] = v39;
        _os_log_impl(&dword_238DAE000, v38, OS_LOG_TYPE_DEFAULT, "\t%s (%u / %s)", buf, 0x1Cu);
      }

      if (sub_2393D5398(2u))
      {
        if (v37 <= nw_interface_type_loopback)
        {
          v40 = off_278A82FD8[v37];
        }

        sub_2393D5320(1u, 2);
      }

      v58 = 0uLL;
      v59 = 0;
      sub_2394801CC(&v58, v52, v53, (v53 - v52) >> 4);
      v55 = 0;
      v56 = 0;
      v57 = 0;
      sub_239480338(&v55, v49, v50, 0xAAAAAAAAAAAAAAABLL * ((v50 - v49) >> 3));
      v42 = *(&v58 + 1);
      for (i = v58; i != v42; i += 2)
      {
        if (nw_interface_get_index(*i) == v35)
        {
          *buf = 0;
          *&buf[8] = 0;
          inet_ntop(2, i + 1, buf, 0x10u);
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
          {
            *v61 = 136315138;
            v62 = buf;
            _os_log_impl(&dword_238DAE000, v38, OS_LOG_TYPE_DEFAULT, "\t\t* ipv4: %s", v61, 0xCu);
          }

          if (sub_2393D5398(2u))
          {
            sub_2393D5320(1u, 2);
          }
        }
      }

      v43 = v55;
      v44 = v56;
      if (v55 != v56)
      {
        do
        {
          if (nw_interface_get_index(*v43) == v35)
          {
            memset(buf, 0, 46);
            inet_ntop(30, v43 + 1, buf, 0x2Eu);
            if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
            {
              *v61 = 136315138;
              v62 = buf;
              _os_log_impl(&dword_238DAE000, v38, OS_LOG_TYPE_DEFAULT, "\t\t* ipv6: %s", v61, 0xCu);
            }

            if (sub_2393D5398(2u))
            {
              sub_2393D5320(1u, 2);
            }
          }

          v43 += 3;
        }

        while (v43 != v44);
      }

      *buf = &v55;
      sub_23948044C(buf);
      *buf = &v58;
      sub_2394802C0(buf);

      *buf = &v49;
      sub_23948044C(buf);
      *buf = &v52;
      sub_2394802C0(buf);
    }
  }

  v45 = *MEMORY[0x277D85DE8];
  return 1;
}

uint64_t sub_239484158(uint64_t *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1[2])
  {
    v5 = 0x10C00000000;
    v6 = 3;
  }

  else
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = sub_239484294;
    v12[3] = &unk_278A82F48;
    v13 = v3;
    v7 = MEMORY[0x23EE78590](v12);
    v8 = sub_2394836D0(a1, nw_interface_type_other, v7, 0);
    v9 = a1[2];
    a1[2] = v8;

    v10 = a1[2];
    if (v10)
    {
      nw_path_monitor_start(v10);
      v5 = 0;
      v6 = 0;
    }

    else
    {
      v5 = 0x11300000000;
      v6 = 11;
    }
  }

  return v6 | v5;
}

uint64_t sub_2394842A4(uint64_t *a1, void *a2)
{
  v3 = a2;
  if (!a1[2])
  {
    v20[0] = 0;
    v20[1] = v20;
    v20[2] = 0x4812000000;
    v20[3] = sub_23948458C;
    v20[4] = sub_2394845B8;
    v20[5] = "";
    memset(v21, 0, sizeof(v21));
    v18[0] = 0;
    v18[1] = v18;
    v18[2] = 0x4812000000;
    v18[3] = sub_2394845E4;
    v18[4] = sub_239484610;
    v18[5] = "";
    memset(v19, 0, sizeof(v19));
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = sub_23948463C;
    v17[3] = &unk_278A82F70;
    v17[5] = v18;
    v17[6] = a1;
    v17[4] = v20;
    v6 = MEMORY[0x23EE78590](v17);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = sub_239484704;
    v12[3] = &unk_278A82F98;
    v15 = v18;
    v16 = a1;
    v14 = v20;
    v13 = v3;
    v7 = MEMORY[0x23EE78590](v12);
    v8 = sub_2394836D0(a1, nw_interface_type_loopback, v6, 1);
    if (v8)
    {
      v9 = sub_2394836D0(a1, nw_interface_type_other, v7, 0);
      v10 = a1[2];
      a1[2] = v9;

      if (a1[2])
      {
        nw_path_monitor_start(v8);
        v4 = 0;
        v5 = 0;
LABEL_9:

        _Block_object_dispose(v18, 8);
        v22 = v19;
        sub_23948044C(&v22);
        _Block_object_dispose(v20, 8);
        v18[0] = v21;
        sub_2394802C0(v18);
        goto LABEL_10;
      }

      v4 = 0x13000000000;
    }

    else
    {
      v4 = 0x12D00000000;
    }

    v5 = 11;
    goto LABEL_9;
  }

  v4 = 0x11B00000000;
  v5 = 3;
LABEL_10:

  return v5 | v4;
}

void sub_239484530(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);

  _Block_object_dispose(va, 8);
  *(v20 - 104) = v19;
  sub_23948044C((v20 - 104));
  _Block_object_dispose((v20 - 176), 8);
  sub_2394802C0(va);

  _Unwind_Resume(a1);
}

void *sub_23948458C(void *result, void *a2)
{
  result[6] = 0;
  result[7] = 0;
  result[8] = 0;
  result[6] = a2[6];
  result[7] = a2[7];
  result[8] = a2[8];
  a2[6] = 0;
  a2[7] = 0;
  a2[8] = 0;
  return result;
}

void *sub_2394845E4(void *result, void *a2)
{
  result[6] = 0;
  result[7] = 0;
  result[8] = 0;
  result[6] = a2[6];
  result[7] = a2[7];
  result[8] = a2[8];
  a2[6] = 0;
  a2[7] = 0;
  a2[8] = 0;
  return result;
}

void sub_23948463C(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[6];
  v5 = *(a1[4] + 8) + 48;
  v6 = *(a1[5] + 8) + 48;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_239483A9C;
  v7[3] = &unk_278A82F20;
  v7[4] = v4;
  v7[5] = v5;
  v7[6] = v6;
  v8 = 1;
  nw_path_enumerate_interfaces(v3, v7);
  nw_path_monitor_start(*(v4 + 16));
}

void sub_239484704(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[7];
  v5 = *(a1[5] + 8);
  v14 = 0;
  v15 = 0;
  v13 = 0;
  sub_2394801CC(&v13, *(v5 + 48), *(v5 + 56), (*(v5 + 56) - *(v5 + 48)) >> 4);
  v6 = *(a1[6] + 8);
  v11 = 0;
  v12 = 0;
  v10 = 0;
  sub_239480338(&v10, *(v6 + 48), *(v6 + 56), 0xAAAAAAAAAAAAAAABLL * ((*(v6 + 56) - *(v6 + 48)) >> 3));
  enumerate_block[0] = MEMORY[0x277D85DD0];
  enumerate_block[1] = 3221225472;
  enumerate_block[2] = sub_239483A9C;
  enumerate_block[3] = &unk_278A82F20;
  enumerate_block[4] = v4;
  enumerate_block[5] = &v13;
  enumerate_block[6] = &v10;
  v17 = 0;
  nw_path_enumerate_interfaces(v3, enumerate_block);
  v7 = a1[4];
  memset(v9, 0, sizeof(v9));
  sub_2394801CC(v9, v13, v14, (v14 - v13) >> 4);
  memset(v8, 0, sizeof(v8));
  sub_239480338(v8, v10, v11, 0xAAAAAAAAAAAAAAABLL * ((v11 - v10) >> 3));
  (*(v7 + 16))(v7, v9, v8);
  enumerate_block[0] = v8;
  sub_23948044C(enumerate_block);
  enumerate_block[0] = v9;
  sub_2394802C0(enumerate_block);
  enumerate_block[0] = &v10;
  sub_23948044C(enumerate_block);
  enumerate_block[0] = &v13;
  sub_2394802C0(enumerate_block);
}

void sub_23948489C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, void **a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, void **a22)
{
  sub_23948044C(&a22);
  a22 = &a13;
  sub_2394802C0(&a22);
  *(v23 - 40) = &a16;
  sub_23948044C((v23 - 40));
  a16 = &a19;
  sub_2394802C0(&a16);

  _Unwind_Resume(a1);
}

void sub_239484908(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    nw_path_monitor_cancel(v2);
    v3 = *(a1 + 16);
    *(a1 + 16) = 0;
  }
}

uint64_t sub_239484958(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = sub_2394849AC(a1, a2);
  }

  else
  {
    v4 = *a2;
    *a2 = 0;
    *v3 = v4;
    *(v3 + 8) = *(a2 + 8);
    result = v3 + 16;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2394849AC(uint64_t a1, uint64_t *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    sub_238EAEDBC();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 3 > v3)
  {
    v3 = v6 >> 3;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF0)
  {
    v7 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v19 = a1;
  if (v7)
  {
    sub_239480278(a1, v7);
  }

  v8 = 16 * v2;
  v16 = 0;
  v17 = 16 * v2;
  *(&v18 + 1) = 0;
  v9 = *a2;
  *a2 = 0;
  *v8 = v9;
  *(v8 + 8) = *(a2 + 2);
  *&v18 = 16 * v2 + 16;
  v10 = *(a1 + 8);
  v11 = 16 * v2 + *a1 - v10;
  sub_239484AC0(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = *(a1 + 16);
  v15 = v18;
  *(a1 + 8) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  sub_239484B2C(&v16);
  return v15;
}

void sub_239484AAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_239484B2C(va);
  _Unwind_Resume(a1);
}

void sub_239484AC0(uint64_t a1, void **a2, void **a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *v6;
      *v6 = 0;
      *a4 = v7;
      *(a4 + 8) = *(v6 + 2);
      v6 += 2;
      a4 += 16;
    }

    while (v6 != a3);
    while (v5 != a3)
    {
      v8 = *v5;
      v5 += 2;
    }
  }
}

uint64_t sub_239484B2C(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 16;
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_239484B80(uint64_t a1, void *a2)
{
  v5 = *a1;
  v4 = *(a1 + 8);
  v6 = a2[1] + *a1 - v4;
  if (v4 != *a1)
  {
    v7 = *a1;
    v8 = a2[1] + *a1 - v4;
    do
    {
      v9 = *v7;
      *v7 = 0;
      *v8 = v9;
      *(v8 + 8) = *(v7 + 1);
      v7 += 3;
      v8 += 24;
    }

    while (v7 != v4);
    do
    {
      v10 = *v5;
      v5 += 3;
    }

    while (v5 != v4);
  }

  a2[1] = v6;
  v11 = *a1;
  *(a1 + 8) = *a1;
  *a1 = a2[1];
  a2[1] = v11;
  v12 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v12;
  v13 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v13;
  *a2 = a2[1];
}

uint64_t sub_239484C48(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 24;
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_239484CBC(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284BBB870;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x23EE77B60);
}

void sub_239484D18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 32);
  if (!v4)
  {
    sub_23953345C();
  }

  dispatch_resume(v4);
}

void sub_239484D40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 32);
  if (!v3)
  {
    sub_23953345C();
  }

  source = *(a3 + 32);
  if (dispatch_source_testcancel(v3))
  {
    v5 = source;
  }

  else
  {
    dispatch_source_cancel(source);
    v5 = *(a3 + 32);
  }

  *(a3 + 32) = 0;
}

uint64_t sub_239484DA8(uint64_t a1)
{
  if (*(a1 + 2640))
  {
    v1 = 0x6A00000000;
    v2 = 3;
  }

  else
  {
    *(a1 + 2640) = 1;
    sub_2393D94B4();
    sub_239486194(a1 + 8);
    if (*(a1 + 2640) == 1)
    {
      v1 = 0;
      v2 = 0;
      *(a1 + 2640) = 2;
    }

    else
    {
      v1 = 0x7200000000;
      v2 = 3;
    }
  }

  return v2 | v1;
}

void sub_239484E34(uint64_t a1)
{
  if (*(a1 + 2640) == 2)
  {
    *(a1 + 2640) = 3;
    v2 = sub_2393DA268((a1 + 2624));
    if (v2)
    {
      v3 = v2;
      do
      {
        v4 = sub_239484ED8(v3);
        sub_239484D40(v4, v5, v3);
        v3 = sub_2393DA268((a1 + 2624));
      }

      while (v3);
    }

    *(sub_2393DA0AC() + 1) = 0;
    sub_2393D6A10((a1 + 2584), a1 + 2568, sub_239485B14);
    sub_239486194(a1 + 8);
    if (*(a1 + 2640) == 3)
    {
      *(a1 + 2640) = 0;
    }
  }
}

uint64_t sub_239484ED8(uint64_t result)
{
  if (*(result + 16) == sub_2394854DC)
  {
    v1 = *(result + 24);
    if (v1)
    {

      JUMPOUT(0x23EE77B60);
    }
  }

  return result;
}

uint64_t sub_239484F4C(_BYTE *a1, void *a2)
{
  v3 = a2;
  if (a1[2640] == 2)
  {
    v4 = (*(*a1 + 160))(a1);
    if (sub_23948507C(a1, v4))
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = sub_2394850A4;
      block[3] = &unk_278A72B88;
      v9 = v3;
      dispatch_async(v4, block);
    }

    v5 = 0;
    v6 = 0;
  }

  else
  {
    v5 = 0x8E00000000;
    v6 = 3;
  }

  return v6 | v5;
}

uint64_t sub_23948507C(uint64_t a1, void *a2)
{
  v2 = a2;
  if (!v2)
  {
    sub_2395334E4();
  }

  return 1;
}

uint64_t sub_2394850C8(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, int a5)
{
  v30 = *MEMORY[0x277D85DE8];
  sub_23947632C("src/platform/Darwin/system/SystemLayerImplDispatch.mm", 189);
  if (*(a1 + 2640) == 2)
  {
    if (a5)
    {
      (*(*a1 + 72))(a1, a3, a4);
    }

    v10 = (*(*off_27DF765E8 + 2))(off_27DF765E8);
    v11 = sub_239485550((a1 + 2568), a1, v10 + a2, a3, a4);
    if (v11)
    {
      v12 = v11;
      v13 = (*(*a1 + 160))(a1);
      if (sub_23948507C(a1, v13))
      {
        v14 = dispatch_source_create(MEMORY[0x277D85D38], 0, 1uLL, v13);
        if (!v14)
        {
          v22 = sub_2393D9044(0x1Bu);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            v25 = "src/platform/Darwin/system/SystemLayerImplDispatch.mm";
            v26 = 1024;
            v27 = 205;
            v28 = 2080;
            v29 = "timerSource != nullptr";
            _os_log_impl(&dword_238DAE000, v22, OS_LOG_TYPE_ERROR, "VerifyOrDie failure at %s:%d: %s", buf, 0x1Cu);
          }

          if (sub_2393D5398(1u))
          {
            sub_2393D5320(0x1Bu, 1);
          }

          abort();
        }

        objc_storeStrong((v12 + 32), v14);
        v15 = dispatch_walltime(0, 1000000 * a2);
        dispatch_source_set_timer(v14, v15, 0xFFFFFFFFFFFFFFFFLL, 0x1E8480uLL);
        handler[0] = MEMORY[0x277D85DD0];
        handler[1] = 3221225472;
        handler[2] = sub_2394855C4;
        handler[3] = &unk_278A83000;
        handler[4] = a1;
        handler[5] = v12;
        dispatch_source_set_event_handler(v14, handler);
        sub_239484D18(v16, v17, v12);
      }

      sub_2393DA14C(a1 + 2624, v12);

      v18 = 0;
      v19 = 0;
    }

    else
    {
      v19 = 0xC800000000;
      v18 = 11;
    }
  }

  else
  {
    v19 = 0xBF00000000;
    v18 = 3;
  }

  v20 = *MEMORY[0x277D85DE8];
  return v19 | v18;
}

uint64_t sub_2394853E4(uint64_t a1, void *a2)
{
  v3 = a2;
  sub_23947632C("src/platform/Darwin/system/SystemLayerImplDispatch.mm", 169);
  if (*(a1 + 2640) == 2)
  {
    operator new();
  }

  return 0xAB00000003;
}

void sub_2394854DC(uint64_t a1, uint64_t a2)
{
  if (*a2)
  {
    (*(*a2 + 16))();
    v3 = *a2;
  }

  else
  {
    v3 = 0;
  }

  JUMPOUT(0x23EE77B60);
}

void *sub_239485550(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = a4;
  v11 = a3;
  v9 = a5;
  v5 = sub_239485BC0(a1, a2, &v11, &v10, &v9);
  if (v5)
  {
    v6 = sub_2393DA0AC();
    v7 = *(v6 + 1) + 1;
    *(v6 + 1) = v7;
    if (*(sub_2393DA0B8() + 1) < v7)
    {
      *(sub_2393DA0B8() + 1) = v7;
    }
  }

  return v5;
}

uint64_t sub_2394855C4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  sub_239484D40(a1, a2, *(a1 + 40));
  sub_2393DA1C4((v3 + 2624), *(a1 + 40));
  v4 = *(a1 + 40);

  return sub_239485610(v3 + 2568, v4);
}

uint64_t sub_239485610(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v8 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = sub_2393DA0AC();
  --*(v6 + 1);
  sub_239485B30(a1, a2);

  return v8(v4, v5);
}

unint64_t sub_239485688(unint64_t **a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    sub_23947632C("src/platform/Darwin/system/SystemLayerImplDispatch.mm", 233);
    if (sub_2393DA2FC(a1 + 328, a3, a4) >= a2)
    {
      v10 = 0;
      v9 = 0;
    }

    else
    {
      v8 = ((*a1)[5])(a1, a2, a3, a4);
      v9 = v8 & 0xFFFFFFFF00000000;
      v10 = v8;
    }
  }

  else
  {
    v9 = 0xE700000000;
    v10 = 47;
  }

  return v9 | v10;
}

uint64_t sub_23948574C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sub_2393DA2FC((a1 + 2624), a2, a3))
  {
    return 1;
  }

  v7 = *(a1 + 2632);
  if (v7)
  {
    while (v7[2] != a2 || v7[3] != a3)
    {
      v7 = v7[5];
      if (!v7)
      {
        return 0;
      }
    }

    return 1;
  }

  return 0;
}

void sub_2394857C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_23947632C("src/platform/Darwin/system/SystemLayerImplDispatch.mm", 275);
  if (*(a1 + 2640) == 2)
  {
    v6 = sub_2393DA20C((a1 + 2624), a2, a3);
    if (v6 || (v6 = sub_2393DA20C((a1 + 2632), a2, a3)) != 0)
    {
      v7 = v6;
      v8 = sub_239484ED8(v6);
      sub_239484D40(v8, v9, v7);
      v10 = sub_2393DA0AC();
      --*(v10 + 1);

      sub_239485B30(a1 + 2568, v7);
    }
  }
}

void sub_23948588C(uint64_t a1)
{
  sub_2394858E4(a1);

  JUMPOUT(0x23EE77B60);
}

uint64_t sub_2394858E4(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  *a1 = &unk_284BBB8C0;
  if ((*(a1 + 2640) | 4) != 4)
  {
    v5 = sub_2393D9044(0x1Bu);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v7 = "src/platform/Darwin/system/SystemLayerImplDispatch.h";
      v8 = 1024;
      v9 = 43;
      v10 = 2080;
      v11 = "mLayerState.Destroy()";
      _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_ERROR, "VerifyOrDie failure at %s:%d: %s", buf, 0x1Cu);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0x1Bu, 1);
    }

    abort();
  }

  *(a1 + 2640) = 5;

  *(a1 + 2640) = 5;
  sub_239485A9C((a1 + 2568));
  for (i = 0; i != -2560; i -= 40)
  {
  }

  v3 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_239485A68(_Unwind_Exception *a1)
{
  *(v1 + 2640) = 5;
  sub_239485A9C((v1 + 2568));
  sub_239485AC8(v1 + 8);
  _Unwind_Resume(a1);
}

uint64_t *sub_239485A9C(uint64_t *result)
{
  if ((byte_27DF7BD68 & 1) == 0)
  {
    if (*result)
    {
      sub_239533598(result);
    }
  }

  return result;
}

uint64_t sub_239485AC8(uint64_t a1)
{
  v2 = 2560;
  do
  {

    v2 -= 40;
  }

  while (v2);
  return a1;
}

void sub_239485B30(uint64_t a1, id *a2)
{
  if (a2)
  {
    v4 = sub_2393D69E8((a1 + 16), a2);
    if (!v4)
    {
      sub_23953363C();
    }

    v5 = v4;
    *v4 = 0;

    j__free(a2);
    if (*(a1 + 40))
    {
      *(a1 + 48) = 1;
    }

    else
    {
      v6 = v5[2];
      *(v5[1] + 16) = v6;
      *(v6 + 8) = v5[1];
      j__free(v5);
    }

    --*a1;
  }
}

void *sub_239485BC0(unint64_t *a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t *a5)
{
  v10 = sub_2393D52C4(0x30uLL);
  v11 = v10;
  if (v10)
  {
    v12 = *a4;
    v13 = *a5;
    *v10 = *a3;
    v10[1] = a2;
    v10[2] = v12;
    v10[3] = v13;
    v10[4] = 0;
    v10[5] = 0;
    v14 = sub_2393D52C4(0x18uLL);
    if (v14)
    {
      *v14 = v11;
      v14[1] = a1 + 2;
      v14[2] = 0;
      v15 = a1[4];
      v14[2] = v15;
      *(v15 + 8) = v14;
      a1[4] = v14;
      v16 = a1[1];
      v17 = *a1 + 1;
      *a1 = v17;
      if (v17 > v16)
      {
        a1[1] = v17;
      }
    }

    else
    {
      return 0;
    }
  }

  return v11;
}

uint64_t sub_239485C9C(uint64_t a1, int a2, void *a3)
{
  v3 = (a1 + 8);
  v4 = 2560;
  v5 = (a1 + 8);
  do
  {
    if (*v5 == a2)
    {
      v3 = v5;
      goto LABEL_10;
    }

    v5 += 10;
    v4 -= 40;
  }

  while (v4);
  v6 = 2560;
  while (*v3 != -1)
  {
    v3 += 10;
    v6 -= 40;
    if (!v6)
    {
      return 0x10C000000C1;
    }
  }

  *v3 = a2;
LABEL_10:
  result = 0;
  *a3 = v3;
  return result;
}

uint64_t sub_239485D10(_DWORD *a1, int a2, void *a3)
{
  v3 = 2560;
  v4 = a1;
  do
  {
    if (*v4 == a2)
    {
      a1 = v4;
      goto LABEL_10;
    }

    v4 += 10;
    v3 -= 40;
  }

  while (v3);
  v5 = 2560;
  while (*a1 != -1)
  {
    a1 += 10;
    v5 -= 40;
    if (!v5)
    {
      return 0x10C000000C1;
    }
  }

  *a1 = a2;
LABEL_10:
  v6 = 0;
  *a3 = a1;
  return v6;
}

uint64_t sub_239485D84(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  if (!*a2)
  {
    v7 = 0x11100000000;
LABEL_6:
    v6 = 47;
    return v7 | v6;
  }

  if (*v3 == -1)
  {
    v7 = 0x11200000000;
    goto LABEL_6;
  }

  sub_23948611C(v3);
  v5 = (*(*a1 + 144))(a1);
  v6 = 0;
  v7 = 0;
  *a2 = v5;
  return v7 | v6;
}

uint64_t sub_239485E20(uint64_t a1, _DWORD *a2)
{
  if (!a2)
  {
    v2 = 0x11100000000;
LABEL_6:
    v3 = 47;
    return v3 | v2;
  }

  if (*a2 == -1)
  {
    v2 = 0x11200000000;
    goto LABEL_6;
  }

  sub_23948611C(a2);
  v2 = 0;
  v3 = 0;
  return v3 | v2;
}

uint64_t sub_239485E7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v4 = 0;
    v5 = 0;
    *(a2 + 8) = a3;
    *(a2 + 16) = a4;
  }

  else
  {
    v4 = 0x4500000000;
    v5 = 47;
  }

  return v5 | v4;
}

uint64_t sub_239485EB0(uint64_t a1, int *a2, int a3)
{
  if (a2)
  {
    v3 = a3;
    *(a2 + 4) |= a3;
    if (a3 == 1)
    {
      v5 = 6;
    }

    else
    {
      v5 = 8;
    }

    if (a3 == 1)
    {
      v6 = MEMORY[0x277D85D28];
    }

    else
    {
      v6 = MEMORY[0x277D85D50];
    }

    if (*&a2[v5])
    {
      v7 = 0;
      v8 = 0;
    }

    else
    {
      v9 = (*(*a1 + 160))(a1);
      if (!v9)
      {
        sub_2395336DC();
      }

      v10 = v9;
      v11 = dispatch_source_create(v6, *a2, 0, v9);
      v12 = *&a2[v5];
      *&a2[v5] = v11;

      v13 = *&a2[v5];
      if (v13)
      {
        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v15[2] = sub_239486030;
        v15[3] = &unk_278A83020;
        v15[4] = a2;
        v16 = v3;
        dispatch_source_set_event_handler(v13, v15);
        dispatch_activate(*&a2[v5]);
        v7 = 0;
        v8 = 0;
      }

      else
      {
        v7 = 0x6400000000;
        v8 = 11;
      }
    }
  }

  else
  {
    v7 = 0x4F00000000;
    v8 = 47;
  }

  return v8 | v7;
}

uint64_t sub_239486030(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = *(a1 + 40);
  if ((result & *(v1 + 4)) != 0)
  {
    v3 = *(v1 + 8);
    if (v3)
    {
      v4 = *(v1 + 16);
      return v3();
    }
  }

  return result;
}

uint64_t sub_239486058(uint64_t a1, uint64_t a2, char a3)
{
  if (a2)
  {
    v3 = 0;
    v4 = 0;
    *(a2 + 4) &= ~a3;
  }

  else
  {
    v3 = 0x7600000000;
    v4 = 47;
  }

  return v4 | v3;
}

uint64_t sub_2394860A4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = 0;
    v3 = 0;
    *(a2 + 4) &= ~1u;
  }

  else
  {
    v2 = 0x7600000000;
    v3 = 47;
  }

  return v3 | v2;
}

uint64_t sub_2394860E0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = 0;
    v3 = 0;
    *(a2 + 4) &= ~2u;
  }

  else
  {
    v2 = 0x7600000000;
    v3 = 47;
  }

  return v3 | v2;
}

void sub_23948611C(uint64_t a1)
{
  *a1 = -1;
  *(a1 + 4) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v2 = *(a1 + 24);
  if (v2)
  {
    dispatch_source_cancel(v2);
    v3 = *(a1 + 24);
    *(a1 + 24) = 0;
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    dispatch_source_cancel(v4);
    v5 = *(a1 + 32);
    *(a1 + 32) = 0;
  }
}

void sub_239486194(uint64_t a1)
{
  v2 = 2560;
  do
  {
    sub_23948611C(a1);
    a1 += 40;
    v2 -= 40;
  }

  while (v2);
}

void sub_239486230(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v36 = *MEMORY[0x277D85DE8];
  sub_23947632C("src/platform/Darwin/BleConnectionDelegateImpl.mm", 120);
  v9 = [MEMORY[0x277CBEB18] arrayWithCapacity:*(a4 + 8)];
  v10 = *(a4 + 8);
  if (v10)
  {
    v11 = *a4;
    v12 = 4 * v10;
    do
    {
      v13 = MEMORY[0x277CCACA8];
      if (v11[2] == 1)
      {
        [MEMORY[0x277CCACA8] stringWithFormat:@"%d (short, 0x%x)", *v11, *v11];
      }

      else
      {
        v15 = sub_2392E10A8(v11);
        [v13 stringWithFormat:@"%d (long, 0x%03x)", v15, sub_2392E10A8(v11)];
      }
      v14 = ;
      [v9 addObject:v14];

      v11 += 4;
      v12 -= 4;
    }

    while (v12);
  }

  v16 = sub_2393D9044(2u);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = [v9 componentsJoinedByString:{@", "}];
    *buf = 136315138;
    v35 = [v17 UTF8String];
    _os_log_impl(&dword_238DAE000, v16, OS_LOG_TYPE_DEFAULT, "ConnectionDelegate NewConnection with discriminator list: [ %s ]", buf, 0xCu);
  }

  if (sub_2393D5398(2u))
  {
    v18 = [v9 componentsJoinedByString:{@", "}];
    v19 = v18;
    v29 = [v18 UTF8String];
    sub_2393D5320(2u, 2);
  }

  v20 = qword_27DF7C078;
  if (qword_27DF7C078 && (v21 = [qword_27DF7C078 isConnecting], v20 = qword_27DF7C078, (v21 & 1) == 0))
  {
    [qword_27DF7C078 setBleLayer:a2];
    [qword_27DF7C078 setAppState:a3];
    [qword_27DF7C078 setOnConnectionComplete:a5];
    [qword_27DF7C078 setOnConnectionCompleteWithDiscriminator:a6];
    [qword_27DF7C078 setOnConnectionError:a7];
    [qword_27DF7C078 updateWithDiscriminators:a4];
  }

  else
  {
    [v20 stop];
    v22 = [[MTRBleConnection alloc] initWithDiscriminators:a4];
    v23 = qword_27DF7C078;
    qword_27DF7C078 = v22;

    [qword_27DF7C078 setBleLayer:a2];
    [qword_27DF7C078 setAppState:a3];
    [qword_27DF7C078 setOnConnectionComplete:a5];
    [qword_27DF7C078 setOnConnectionCompleteWithDiscriminator:a6];
    [qword_27DF7C078 setOnConnectionError:a7];
    v24 = [qword_27DF7C078 centralManager];
    v25 = qword_27DF7C078;
    v26 = [qword_27DF7C078 workQueue];
    v27 = [v24 initWithDelegate:v25 queue:v26];
    [qword_27DF7C078 setCentralManager:v27];
  }

  v28 = *MEMORY[0x277D85DE8];
}

void sub_2394865E0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v15 = *MEMORY[0x277D85DE8];
  sub_23947632C("src/platform/Darwin/BleConnectionDelegateImpl.mm", 160);
  v8 = sub_2393D9044(2u);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v14 = a4;
    _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_DEFAULT, "ConnectionDelegate NewConnection with conn obj: %p", buf, 0xCu);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393D5320(2u, 2);
  }

  v9 = a4;
  v10 = qword_27DF7C078;
  if (qword_27DF7C078 && (v10 = [qword_27DF7C078 isConnecting], !v10))
  {
    [qword_27DF7C078 setBleLayer:a2];
    [qword_27DF7C078 setAppState:a3];
    [qword_27DF7C078 setOnConnectionComplete:*(a1 + 8)];
    [qword_27DF7C078 setOnConnectionError:*(a1 + 16)];
    [qword_27DF7C078 updateWithPeripheral:v9];
  }

  else if (*(a1 + 16))
  {
    if (qword_27DF7BD08 != -1)
    {
      sub_23953343C(v10);
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_2394867C0;
    block[3] = &unk_278A83000;
    block[4] = a1;
    block[5] = a3;
    dispatch_async(qword_27DF7BCD0, block);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void sub_2394867DC(uint64_t a1, uint64_t a2, int a3)
{
  v22 = *MEMORY[0x277D85DE8];
  sub_23947632C("src/platform/Darwin/BleConnectionDelegateImpl.mm", 186);
  v5 = sub_2393D9044(2u);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = "default";
    if (a3 == 1)
    {
      v6 = "pre-warm";
    }

    *buf = 136315138;
    v21 = v6;
    _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_DEFAULT, "ConnectionDelegate StartScan (%s)", buf, 0xCu);
  }

  if (sub_2393D5398(2u))
  {
    v7 = "default";
    if (a3 == 1)
    {
      v7 = "pre-warm";
    }

    v18 = v7;
    sub_2393D5320(2u, 2);
  }

  v8 = qword_27DF7C078;
  if (a3 == 1 && qword_27DF7C078)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_DEFAULT, "Not starting pre-warm scan, an operation is already in progress", buf, 2u);
    }

    v9 = sub_2393D5398(2u);
    if (v9)
    {
      v9 = sub_2393D5320(2u, 2);
    }

    if (a2)
    {
      if (qword_27DF7BD08 != -1)
      {
        sub_23953343C(v9);
      }

      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = sub_239486A98;
      block[3] = &unk_278A73E78;
      block[4] = a2;
      dispatch_async(qword_27DF7BCD0, block);
    }
  }

  else if (qword_27DF7C078 && (v10 = [qword_27DF7C078 isConnecting], v8 = qword_27DF7C078, (v10 & 1) == 0))
  {
    [qword_27DF7C078 updateWithDelegate:a2 prewarm:{a3 == 1, v18}];
  }

  else
  {
    [v8 stop];
    v11 = [[MTRBleConnection alloc] initWithDelegate:a2 prewarm:a3 == 1];
    v12 = qword_27DF7C078;
    qword_27DF7C078 = v11;

    v13 = [qword_27DF7C078 centralManager];
    v14 = qword_27DF7C078;
    v15 = [qword_27DF7C078 workQueue];
    v16 = [v13 initWithDelegate:v14 queue:v15];
    [qword_27DF7C078 setCentralManager:v16];
  }

  v17 = *MEMORY[0x277D85DE8];
}

void sub_239486AC0()
{
  sub_23947632C("src/platform/Darwin/BleConnectionDelegateImpl.mm", 222);
  v0 = sub_2393D9044(2u);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_238DAE000, v0, OS_LOG_TYPE_DEFAULT, "ConnectionDelegate StopScan", v2, 2u);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393D5320(2u, 2);
  }

  if (qword_27DF7C078)
  {
    if (([qword_27DF7C078 isConnecting] & 1) == 0)
    {
      [qword_27DF7C078 stop];
      v1 = qword_27DF7C078;
      qword_27DF7C078 = 0;
    }
  }
}

uint64_t sub_239486B7C()
{
  sub_23947632C("src/platform/Darwin/BleConnectionDelegateImpl.mm", 232);
  v0 = sub_2393D9044(2u);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_238DAE000, v0, OS_LOG_TYPE_DEFAULT, "ConnectionDelegate CancelConnection", v3, 2u);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393D5320(2u, 2);
  }

  if (qword_27DF7C078 && [qword_27DF7C078 isConnecting])
  {
    [qword_27DF7C078 stop];
    v1 = qword_27DF7C078;
    qword_27DF7C078 = 0;
  }

  return 0;
}

uint64_t sub_239486F3C(uint64_t a1)
{
  v2 = sub_2393D9044(2u);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_DEFAULT, "ConnectionDelegate timeout", v4, 2u);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393D5320(2u, 2);
  }

  [*(a1 + 32) stop];
  return [*(a1 + 32) dispatchConnectionError:{0x1360000040DLL, "src/platform/Darwin/BleConnectionDelegateImpl.mm"}];
}

void sub_2394888EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, _WORD *a10)
{
  if (a10)
  {
    sub_2393D96C8(a10);
  }

  _Unwind_Resume(a1);
}

void sub_239488BC0(_Unwind_Exception *a1)
{
  v3 = v1;

  _Unwind_Resume(a1);
}

uint64_t sub_239489998(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 24) + 1;
  *(v2 + 24) = v3;
  v5 = 2;
  v6 = "dwnpm_ble_peripheral_removed";
  v7 = v3;
  v8 = 1;
  sub_23948BD20(&v5);
  return [*(a1 + 32) removePeripheralFromCache:*(a1 + 40)];
}

void *sub_239489EBC(void *result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  result[1] = a3;
  if (!a2)
  {
    if (a3)
    {
      sub_23952FAA8();
    }
  }

  return result;
}

void *sub_239489EDC(void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    sub_239489F44(result, (v2 - *a2) >> 2);
  }

  return result;
}

void sub_239489F44(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    sub_239489F80(a1, a2);
  }

  sub_238EAEDBC();
}

void sub_239489F80(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  sub_238EAEDBC();
}

void *sub_239489FC8(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 2)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 62))
    {
      v9 = v7 >> 1;
      if (v7 >> 1 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v10 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      sub_239489F44(v6, v10);
    }

    sub_238EAEDBC();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 2)
  {
    v16 = a3 - __src;
    if (a3 != __src)
    {
      result = memmove(*result, __src, v16 - 1);
    }

    v15 = &v8[v16];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12 - 1);
      v11 = v6[1];
    }

    v14 = a3 - v13;
    if (a3 != v13)
    {
      result = memmove(v11, v13, v14 - 1);
    }

    v15 = &v11[v14];
  }

  v6[1] = v15;
  return result;
}

void *sub_23948A0F8(void *result, uint64_t a2, uint64_t a3)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a3 != a2)
  {
    sub_239489F44(result, (a3 - a2) >> 2);
  }

  return result;
}

uint64_t sub_23948A160(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  v7 = sub_23948A210(v6, a3, a4);
  if (v7)
  {
    [v6 setNotifyValue:1 forCharacteristic:v7];
    v8 = 0;
    v9 = 0;
  }

  else
  {
    v8 = 0x4300000000;
    v9 = 1029;
  }

  return v9 | v8;
}

id sub_23948A210(void *a1, uint64_t a2, uint64_t a3)
{
  v34 = *MEMORY[0x277D85DE8];
  v23 = a1;
  v5 = 0;
  if (a2 && a3)
  {
    v6 = sub_23948A818(a2);
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v7 = [v23 services];
    v8 = [v7 countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v8)
    {
      v9 = *v29;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v29 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v28 + 1) + 8 * i);
          v12 = [v11 UUID];
          v13 = [v12 isEqual:v6];

          if (v13)
          {
            v14 = sub_23948A818(a3);
            v26 = 0u;
            v27 = 0u;
            v24 = 0u;
            v25 = 0u;
            v15 = [v11 characteristics];
            v5 = [v15 countByEnumeratingWithState:&v24 objects:v32 count:16];
            if (v5)
            {
              v16 = *v25;
              while (2)
              {
                for (j = 0; j != v5; j = j + 1)
                {
                  if (*v25 != v16)
                  {
                    objc_enumerationMutation(v15);
                  }

                  v18 = *(*(&v24 + 1) + 8 * j);
                  v19 = [v18 UUID];
                  v20 = [v19 isEqual:v14];

                  if (v20)
                  {
                    v5 = v18;
                    goto LABEL_22;
                  }
                }

                v5 = [v15 countByEnumeratingWithState:&v24 objects:v32 count:16];
                if (v5)
                {
                  continue;
                }

                break;
              }
            }

LABEL_22:

            goto LABEL_23;
          }
        }

        v8 = [v7 countByEnumeratingWithState:&v28 objects:v33 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    v5 = 0;
LABEL_23:
  }

  v21 = *MEMORY[0x277D85DE8];

  return v5;
}

uint64_t sub_23948A4CC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  v7 = sub_23948A210(v6, a3, a4);
  if (v7)
  {
    [v6 setNotifyValue:0 forCharacteristic:v7];
    v8 = 0;
    v9 = 0;
  }

  else
  {
    v8 = 0x4D00000000;
    v9 = 1030;
  }

  return v9 | v8;
}

uint64_t sub_23948A57C(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 valueForKey:@"manager"];
  v4 = v3;
  if (v3)
  {
    [v3 cancelPeripheralConnection:v2];
  }

  return 0;
}

uint64_t sub_23948A5F8(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = [v2 valueForKey:@"mtuLength"];
  v4 = [v3 unsignedShortValue];

  v5 = sub_2393D9044(2u);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v9 = v4;
    _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_DEFAULT, "ATT MTU = %u", buf, 8u);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393D5320(2u, 2);
  }

  v6 = *MEMORY[0x277D85DE8];
  return v4;
}

uint64_t sub_23948A728(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = a2;
  v9 = sub_23948A210(v8, a3, a4);
  if (v9 && *a5)
  {
    v10 = [MEMORY[0x277CBEA90] dataWithBytes:*(*a5 + 8) length:*(*a5 + 24)];
    [v8 writeValue:v10 forCharacteristic:v9 type:0];

    v11 = 0;
    v12 = 0;
  }

  else
  {
    v11 = 0x7700000000;
    v12 = 1031;
  }

  return v12 | v11;
}

void sub_23948A7EC(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

id sub_23948A818(uint64_t a1)
{
  v1 = MEMORY[0x277CBE0A0];
  v2 = [MEMORY[0x277CBEA90] dataWithBytes:a1 length:16];
  v3 = [v1 UUIDWithData:v2];

  return v3;
}

unint64_t sub_23948A894(void *a1)
{
  v1 = [a1 data];
  v2 = [v1 length];
  switch(v2)
  {
    case 2:
      v5 = (*[v1 bytes] << 16) | 0x10000000000000;
      break;
    case 4:
      v5 = *[v1 bytes] | 0x10000000000000;
      break;
    case 16:
      v3 = [v1 bytes];
      v5 = *v3;
      v4 = v3[1];
      break;
    default:
      v6 = [MEMORY[0x277CCA890] currentHandler];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ChipBleUUID chip::DeviceLayer::Internal::BleUUIDFromCBUUD(CBUUID *__strong)"];
      [v6 handleFailureInFunction:v7 file:@"BleUtils.mm" lineNumber:58 description:{@"Invalid CBUUID.data: %@", v1}];

      v5 = 0;
      break;
  }

  return v5;
}

uint64_t *sub_23948A9E8()
{
  if ((byte_27DF7C098 & 1) == 0)
  {
    byte_27DF7C098 = 1;
    qword_27DF7C088 = 0;
    unk_27DF7C090 = 0;
    qword_27DF7C080 = &unk_284BBBB20;
  }

  return &qword_27DF7C080;
}

uint64_t sub_23948AA30()
{
  v0 = sub_2393D9044(0x1Fu);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    *v2 = 0;
    _os_log_impl(&dword_238DAE000, v0, OS_LOG_TYPE_INFO, "Initializing Darwin NFC Commissioning Manager", v2, 2u);
  }

  if (sub_2393D5398(3u))
  {
    sub_2393D5320(0x1Fu, 3);
  }

  return 0;
}

uint64_t sub_23948AABC(uint64_t a1)
{
  v2 = sub_2393D9044(0x1Fu);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_INFO, "Shutting down Darwin NFC Commissioning Manager and clearing reader transport", v4, 2u);
  }

  if (sub_2393D5398(3u))
  {
    sub_2393D5320(0x1Fu, 3);
  }

  result = *(a1 + 16);
  *(a1 + 16) = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t sub_23948AB74(uint64_t a1, uint64_t a2)
{
  v4 = sub_2393D9044(0x1Fu);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&dword_238DAE000, v4, OS_LOG_TYPE_INFO, "Setting Darwin NFC Commissioning Reader Transport", v6, 2u);
  }

  if (sub_2393D5398(3u))
  {
    sub_2393D5320(0x1Fu, 3);
  }

  result = *(a1 + 16);
  *(a1 + 16) = a2;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t sub_23948AC38(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  *(a1 + 8) = a2;
  v3 = sub_2393D9044(0x1Fu);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    if (a2)
    {
      v4 = "Setting";
    }

    else
    {
      v4 = "Clearing";
    }

    *buf = 136315138;
    v8 = v4;
    _os_log_impl(&dword_238DAE000, v3, OS_LOG_TYPE_INFO, "%s NFCBase for Darwin NFCCommissioningManagerImpl", buf, 0xCu);
  }

  result = sub_2393D5398(3u);
  if (result)
  {
    result = sub_2393D5320(0x1Fu, 3);
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_23948AD28(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 16);
  if (v3)
  {
    *buf = *(a2 + 24);
    result = (*(*v3 + 40))(v3, buf);
  }

  else
  {
    v5 = sub_2393D9044(0x1Fu);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a2 + 24);
      *buf = 67109120;
      v10 = v6;
      _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_ERROR, "Cannot send to NFC tag %u since reader transport is not valid", buf, 8u);
    }

    result = sub_2393D5398(1u);
    if (result)
    {
      v8 = *(a2 + 24);
      sub_2393D5320(0x1Fu, 1);
      result = 0;
    }
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_23948AE34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = *MEMORY[0x277D85DE8];
  if (*(a1 + 16))
  {
    v6 = *(a2 + 24);
    v7 = sub_2393D9044(0x1Fu);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(*a3 + 24);
      *buf = 134218240;
      v17 = v8;
      v18 = 1024;
      v19 = v6;
      _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_DEFAULT, "Sending message of length %lu bytes to NFC tag %u", buf, 0x12u);
    }

    if (sub_2393D5398(2u))
    {
      v14 = *(*a3 + 24);
      sub_2393D5320(0x1Fu, 2);
    }

    v9 = *(a1 + 16);
    operator new();
  }

  v10 = sub_2393D9044(0x1Fu);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = *(a2 + 24);
    *buf = 67109120;
    LODWORD(v17) = v11;
    _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_ERROR, "Unable to send message to NFC tag %u since transport is not valid", buf, 8u);
  }

  if (sub_2393D5398(1u))
  {
    v15 = *(a2 + 24);
    sub_2393D5320(0x1Fu, 1);
  }

  v12 = *MEMORY[0x277D85DE8];
  return 0x6800000003;
}

uint64_t sub_23948B0E4(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_23948B138(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  JUMPOUT(0x23EE77B60);
}

__n128 sub_23948B228(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BBBBB0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_23948B260(uint64_t a1, uint64_t a2, int *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = *a3;
  v6 = *(a1 + 16);
  v7 = sub_2393D9044(0x1Fu);
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 8);
      *buf = 67109376;
      v20 = v9;
      v21 = 1024;
      LODWORD(v22) = v5;
      _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_ERROR, "Received failure response sending message to NFC tag %u, error: %u", buf, 0xEu);
    }

    if (sub_2393D5398(1u))
    {
      v16 = *(a1 + 8);
      sub_2393D5320(0x1Fu, 1);
    }

    v10 = *(v6 + 8);
    v11 = *(a1 + 24);
    result = sub_2394C36AC();
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 8);
      v14 = *(*a2 + 24);
      *buf = 67109376;
      v20 = v13;
      v21 = 2048;
      v22 = v14;
      _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_DEFAULT, "Successfully sent message to NFC tag %u, received response buffer of length %lu bytes", buf, 0x12u);
    }

    if (sub_2393D5398(2u))
    {
      v17 = *(a1 + 8);
      v18 = *(*a2 + 24);
      sub_2393D5320(0x1Fu, 2);
    }

    result = sub_2394C35E0(*(v6 + 8), *(a1 + 24), a2);
  }

  v15 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_23948B400(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BBBC20))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23948B44C(uint64_t a1)
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

id sub_23948B4CC()
{
  if (qword_27DF796C0 != -1)
  {
    sub_239533860();
  }

  v1 = qword_27DF796C8;

  return v1;
}

void sub_23948B510()
{
  v0 = os_log_create("com.csa.matter.signposts", "com.csa.matter.sdk");
  v1 = qword_27DF796C8;
  qword_27DF796C8 = v0;
}

void *sub_23948B554(void *result)
{
  result[1] = 0;
  result[2] = 0;
  *result = &unk_284BBBC60;
  result[3] = 0;
  return result;
}

void sub_23948B57C(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x23EE78590](a2);
  v4 = *(a1 + 24);
  *(a1 + 24) = v3;
}

uint64_t sub_23948B5BC(uint64_t a1, __int128 *a2)
{
  result = *(a1 + 24);
  if (result)
  {
    v4 = *(a2 + 2);
    v3 = *a2;
    return (*(result + 16))(result, &v3);
  }

  return result;
}

void sub_23948B638(uint64_t a1)
{
  sub_238EA9350((a1 + 8));

  JUMPOUT(0x23EE77B60);
}

void *sub_23948B790(void *a1)
{
  result = sub_23947632C("src/tracing/registry.cpp", 33);
  if (a1[1])
  {
    v3 = a1[2] == 0;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    (*(*a1 + 16))(a1);

    return sub_23948BD9C(&off_27DF774D8, a1 + 1);
  }

  return result;
}

void *sub_23948B824(void *a1)
{
  sub_23947632C("src/tracing/registry.cpp", 43);
  result = a1 + 1;
  if (a1[1])
  {
    v3 = a1[2] == 0;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    sub_23948BDE8(result);
    v4 = *(*a1 + 24);

    return v4(a1);
  }

  return result;
}

uint64_t sub_23948B8AC(uint64_t result, uint64_t a2)
{
  v2 = off_27DF774E0;
  if (off_27DF774E0 != &off_27DF774D8)
  {
    v4 = result;
    do
    {
      if (v2)
      {
        v5 = v2 - 1;
      }

      else
      {
        v5 = 0;
      }

      result = (*(*v5 + 4))(v5, v4, a2);
      v2 = v2[1];
    }

    while (v2 != &off_27DF774D8);
  }

  return result;
}

uint64_t sub_23948B930(uint64_t result, uint64_t a2)
{
  v2 = off_27DF774E0;
  if (off_27DF774E0 != &off_27DF774D8)
  {
    v4 = result;
    do
    {
      if (v2)
      {
        v5 = v2 - 1;
      }

      else
      {
        v5 = 0;
      }

      result = (*(*v5 + 5))(v5, v4, a2);
      v2 = v2[1];
    }

    while (v2 != &off_27DF774D8);
  }

  return result;
}

uint64_t sub_23948B9B4(uint64_t result, uint64_t a2)
{
  v2 = off_27DF774E0;
  if (off_27DF774E0 != &off_27DF774D8)
  {
    v4 = result;
    do
    {
      if (v2)
      {
        v5 = v2 - 1;
      }

      else
      {
        v5 = 0;
      }

      result = (*(*v5 + 6))(v5, v4, a2);
      v2 = v2[1];
    }

    while (v2 != &off_27DF774D8);
  }

  return result;
}

uint64_t sub_23948BA38(uint64_t result)
{
  v1 = off_27DF774E0;
  if (off_27DF774E0 != &off_27DF774D8)
  {
    v2 = result;
    do
    {
      if (v1)
      {
        v3 = v1 - 1;
      }

      else
      {
        v3 = 0;
      }

      result = (*(*v3 + 7))(v3, v2);
      v1 = v1[1];
    }

    while (v1 != &off_27DF774D8);
  }

  return result;
}

uint64_t sub_23948BAB4(uint64_t result)
{
  v1 = off_27DF774E0;
  if (off_27DF774E0 != &off_27DF774D8)
  {
    v2 = result;
    do
    {
      if (v1)
      {
        v3 = v1 - 1;
      }

      else
      {
        v3 = 0;
      }

      result = (*(*v3 + 8))(v3, v2);
      v1 = v1[1];
    }

    while (v1 != &off_27DF774D8);
  }

  return result;
}

uint64_t sub_23948BB30(uint64_t result)
{
  v1 = off_27DF774E0;
  if (off_27DF774E0 != &off_27DF774D8)
  {
    v2 = result;
    do
    {
      if (v1)
      {
        v3 = v1 - 1;
      }

      else
      {
        v3 = 0;
      }

      result = (*(*v3 + 9))(v3, v2);
      v1 = v1[1];
    }

    while (v1 != &off_27DF774D8);
  }

  return result;
}

uint64_t sub_23948BBAC(uint64_t result)
{
  v1 = off_27DF774E0;
  if (off_27DF774E0 != &off_27DF774D8)
  {
    v2 = result;
    do
    {
      if (v1)
      {
        v3 = v1 - 1;
      }

      else
      {
        v3 = 0;
      }

      result = (*(*v3 + 10))(v3, v2);
      v1 = v1[1];
    }

    while (v1 != &off_27DF774D8);
  }

  return result;
}

uint64_t sub_23948BC28(uint64_t result)
{
  v1 = off_27DF774E0;
  if (off_27DF774E0 != &off_27DF774D8)
  {
    v2 = result;
    do
    {
      if (v1)
      {
        v3 = v1 - 1;
      }

      else
      {
        v3 = 0;
      }

      result = (*(*v3 + 11))(v3, v2);
      v1 = v1[1];
    }

    while (v1 != &off_27DF774D8);
  }

  return result;
}

uint64_t sub_23948BCA4(uint64_t result)
{
  v1 = off_27DF774E0;
  if (off_27DF774E0 != &off_27DF774D8)
  {
    v2 = result;
    do
    {
      if (v1)
      {
        v3 = v1 - 1;
      }

      else
      {
        v3 = 0;
      }

      result = (*(*v3 + 12))(v3, v2);
      v1 = v1[1];
    }

    while (v1 != &off_27DF774D8);
  }

  return result;
}

uint64_t sub_23948BD20(uint64_t result)
{
  v1 = off_27DF774E0;
  if (off_27DF774E0 != &off_27DF774D8)
  {
    v2 = result;
    do
    {
      if (v1)
      {
        v3 = v1 - 1;
      }

      else
      {
        v3 = 0;
      }

      result = (*(*v3 + 13))(v3, v2);
      v1 = v1[1];
    }

    while (v1 != &off_27DF774D8);
  }

  return result;
}

void *sub_23948BD9C(void *result, void *a2)
{
  if (!*result || !result[1])
  {
    sub_2395339E4();
  }

  if (*a2 && a2[1])
  {
    sub_239533934();
  }

  *a2 = *result;
  a2[1] = result;
  *(*result + 8) = a2;
  *result = a2;
  return result;
}

void *sub_23948BDE8(void *result)
{
  if (!*result || (v1 = result[1]) == 0)
  {
    sub_239533A94();
  }

  *(*result + 8) = v1;
  *result[1] = *result;
  *result = 0;
  result[1] = 0;
  return result;
}

uint64_t sub_23948BE1C(char *a1, size_t a2, void *a3)
{
  if (a2 < 0x22)
  {
    v3 = 0x2100000000;
    v4 = 25;
  }

  else
  {
    snprintf(a1, a2, "%08X%08X-%08X%08X", HIDWORD(a3[1]), a3[1], HIDWORD(*a3), *a3);
    v3 = 0;
    v4 = 0;
  }

  return v4 | v3;
}

uint64_t sub_23948BE88(uint64_t a1, void *a2)
{
  v8[1] = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    v4 = 0x2E00000000;
LABEL_13:
    v5 = 47;
    goto LABEL_14;
  }

  if (!a2)
  {
    v4 = 0x2F00000000;
    goto LABEL_13;
  }

  if (strnlen(a1, 0x21uLL) < 0x21)
  {
    v4 = 0x3A00000000;
    goto LABEL_13;
  }

  if (*(a1 + 33) != 46 && *(a1 + 33))
  {
    v4 = 0x3D00000000;
    goto LABEL_19;
  }

  if (*(a1 + 16) != 45)
  {
    v4 = 0x4000000000;
LABEL_19:
    v5 = 92;
    goto LABEL_14;
  }

  if (!sub_2393D6044(a1, 0x10uLL, v8, 8))
  {
    v4 = 0x4500000000;
    goto LABEL_19;
  }

  a2[1] = bswap64(v8[0]);
  if (!sub_2393D6044(a1 + 17, 0x10uLL, v8, 8))
  {
    v4 = 0x4B00000000;
    goto LABEL_19;
  }

  v4 = 0;
  v5 = 0;
  *a2 = bswap64(v8[0]);
LABEL_14:
  v6 = *MEMORY[0x277D85DE8];
  return v5 | v4;
}

uint64_t sub_23948BFBC(uint64_t a1, unint64_t a2, void *a3)
{
  v3 = a3[1];
  if (a2 <= 2 * v3)
  {
    v3 = 0x5500000000;
    v8 = 25;
  }

  else if (v3)
  {
    v6 = 0;
    v7 = 0;
    do
    {
      v7 += snprintf((a1 + v7), 3uLL, "%02X", *(*a3 + v6++));
    }

    while (v6 < a3[1]);
    v3 = 0;
    v8 = 0;
  }

  else
  {
    v8 = 0;
  }

  return v8 | v3;
}

unint64_t sub_23948C07C(char *__str, size_t __size, unsigned __int8 *a3)
{
  v6 = 0;
  v7 = *a3;
  if (v7 <= 3)
  {
    if (*a3 > 1u)
    {
      if (v7 == 2)
      {
        if (*(a3 + 1) <= 0xFFFuLL)
        {
          v17 = *(a3 + 1);
          v6 = snprintf(__str, __size, "_L%u");
          goto LABEL_30;
        }

        v10 = 0x7000000000;
      }

      else
      {
        if (v7 != 3)
        {
          goto LABEL_30;
        }

        if (!(*(a3 + 1) >> 16))
        {
          v16 = *(a3 + 1);
          v6 = snprintf(__str, __size, "_V%u");
          goto LABEL_30;
        }

        v10 = 0x7700000000;
      }
    }

    else
    {
      if (!*a3)
      {
        v6 = 0;
        *__str = 0;
        goto LABEL_30;
      }

      if (*(a3 + 1) <= 0xFuLL)
      {
        v15 = *(a3 + 1);
        v6 = snprintf(__str, __size, "_S%u");
        goto LABEL_30;
      }

      v10 = 0x6800000000;
    }

    goto LABEL_25;
  }

  if (*a3 <= 5u)
  {
    if (v7 == 4)
    {
      v13 = *(a3 + 1);
      v6 = snprintf(__str, __size, "_T%u");
    }

    else if (v7 == 5)
    {
      v6 = snprintf(__str, __size, "_CM");
    }

    goto LABEL_30;
  }

  switch(v7)
  {
    case 6u:
      v12 = *(a3 + 2);
      v6 = snprintf(__str, __size, "%s");
      break;
    case 7u:
      if (*(a3 + 1) <= 1uLL)
      {
        v18 = *(a3 + 1);
        v6 = snprintf(__str, __size, "_D%u");
        break;
      }

      v10 = 0x8400000000;
LABEL_25:
      v11 = 47;
      return v11 | v10;
    case 8u:
      v8 = snprintf(__str, __size, "_I");
      v9 = sub_2393D5F58(*(a3 + 1), &__str[v8], __size - v8, 3u);
      v10 = v9 & 0xFFFFFFFF00000000;
      v11 = v9;
      return v11 | v10;
  }

LABEL_30:
  v10 = 0x9500000000;
  v11 = 11;
  if (__size - 1 >= v6)
  {
    v10 = 0;
    v11 = 0;
  }

  return v11 | v10;
}

unint64_t sub_23948C274(char *__str, size_t __size, __int128 *a3, int a4)
{
  v5 = __size;
  v6 = __str;
  if (*a3)
  {
    v17 = *a3;
    v18 = *(a3 + 2);
    v7 = sub_23948C07C(__str, __size, &v17);
    if (v7)
    {
      v8 = v7 & 0xFFFFFFFF00000000;
      return v8 | v7;
    }

    v10 = strlen(v6);
    switch(a4)
    {
      case 1:
        __size = v5 - v10;
        v11 = "_matter";
        goto LABEL_18;
      case 3:
        __size = v5 - v10;
        v11 = "_matterd";
        goto LABEL_18;
      case 2:
        __size = v5 - v10;
        v11 = "_matterc";
LABEL_18:
        v15 = "_sub";
        v16 = v11;
        v9 = ".%s.%s";
        __str = &v6[v10];
        goto LABEL_19;
    }

    v8 = 0xC300000000;
LABEL_26:
    LODWORD(v7) = 45;
    return v8 | v7;
  }

  switch(a4)
  {
    case 1:
      v9 = "_matter";
      break;
    case 3:
      v9 = "_matterd";
      break;
    case 2:
      v9 = "_matterc";
      break;
    default:
      v8 = 0xAB00000000;
      goto LABEL_26;
  }

LABEL_19:
  v12 = snprintf(__str, __size, v9, v15, v16);
  v13 = v5 - 1 >= v12;
  v8 = 0xC700000000;
  if (v5 - 1 < v12)
  {
    LODWORD(v7) = 11;
  }

  else
  {
    LODWORD(v7) = 0;
  }

  if (v13)
  {
    v8 = 0;
  }

  return v8 | v7;
}

uint64_t sub_23948C3DC(uint64_t *a1, void *a2)
{
  v4 = *a2;
  a2[1] = *a2;
  v5 = *(a1 + 23);
  if ((v5 & 0x8000000000000000) != 0)
  {
    v5 = a1[1];
  }

  v6 = 0;
  v7 = 30;
  while (1)
  {
    if (!v5)
    {
      v25 = 0;
      v7 = 0;
      return v7 | v25;
    }

    if (v5 <= 4)
    {
      break;
    }

    v8 = 5;
    v9 = 3;
LABEL_11:
    v10 = 0;
    v11 = -v8;
    v12 = v8 + v6 - 1;
    do
    {
      v13 = a1;
      if (*(a1 + 23) < 0)
      {
        v13 = *a1;
      }

      v14 = *(v13 + v12);
      if ((v14 - 91) < 0xFFFFFFD2)
      {
        v25 = 0x5300000000;
LABEL_36:
        v7 = 143;
        return v7 | v25;
      }

      v15 = v14 - 45;
      if ((0xFE004uLL >> v15))
      {
        v25 = 0x5800000000;
        goto LABEL_36;
      }

      v10 = byte_2395D66F8[v15] + 38 * v10;
      --v12;
    }

    while (!__CFADD__(v11++, 1));
    v27 = v8 + v6;
    v28 = v5 - v8;
    do
    {
      v17 = v10;
      v18 = a2[2];
      if (v4 >= v18)
      {
        v19 = *a2;
        v20 = &v4[-*a2];
        v21 = (v20 + 1);
        if ((v20 + 1) < 0)
        {
          sub_238EAEDBC();
        }

        v22 = v18 - v19;
        if (2 * v22 > v21)
        {
          v21 = 2 * v22;
        }

        if (v22 >= 0x3FFFFFFFFFFFFFFFLL)
        {
          v23 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v23 = v21;
        }

        if (v23)
        {
          operator new();
        }

        v24 = &v4[-*a2];
        *v20 = v17;
        v4 = v20 + 1;
        memcpy(0, v19, v24);
        *a2 = 0;
        a2[1] = v20 + 1;
        a2[2] = 0;
        if (v19)
        {
          operator delete(v19);
        }
      }

      else
      {
        *v4++ = v17;
      }

      a2[1] = v4;
      v10 = v17 >> 8;
      --v9;
    }

    while (v9);
    v6 = v27;
    v5 = v28;
    v7 = 30;
    if (v17 >= 0x100)
    {
      v25 = 0x9B00000000;
      v7 = 47;
      return v7 | v25;
    }
  }

  if (v5 == 4)
  {
    v8 = 4;
    v9 = 2;
    goto LABEL_11;
  }

  if (v5 == 2)
  {
    v8 = 2;
    v9 = 1;
    goto LABEL_11;
  }

  v25 = 0x7E00000000;
  return v7 | v25;
}

uint64_t sub_23948C610(unsigned __int8 *a1, unint64_t a2, void *a3)
{
  if (a2)
  {
    v3 = a2;
    a2 = 0;
    while (1)
    {
      v4 = 0;
      v5 = 0;
      v6 = v3 >= 3 ? 3 : v3;
      v7 = a1;
      v8 = v6;
      do
      {
        v9 = *v7++;
        v5 += v9 << v4;
        v4 += 8;
        --v8;
      }

      while (v8);
      v10 = byte_2395D6726[v6 - 1];
      if (a2 + v10 >= a3[1])
      {
        break;
      }

      v11 = 0;
      v3 -= v6;
      a1 += v6;
      do
      {
        *(*a3 + a2++) = a0123456789abcd_6[v5 % 0x26];
        ++v11;
        v5 /= 0x26u;
      }

      while (v11 < v10);
      if (!v3)
      {
        goto LABEL_12;
      }
    }

    v12 = 0x4600000019;
  }

  else
  {
LABEL_12:
    v12 = 0;
  }

  if (a2 >= a3[1])
  {
    return 0x5A00000019;
  }

  *(*a3 + a2) = 0;
  sub_2393F6D60(a3, a2);
  return v12;
}

unint64_t sub_23948C750(uint64_t a1, const char **a2)
{
  if (*(a1 + 20) & 1) != 0 || (sub_23948FB5C(a1, 0))
  {
    if (*(a1 + 6) && (*(a1 + 21) & 1) == 0)
    {
      if (a2[1] >= 0x16)
      {
        v4 = 1;
LABEL_19:
        v7 = 25;
        if (*(a1 + 12))
        {
          v9 = *(a1 + 10);
        }

        else
        {
          v9 = HIBYTE(*(a1 + 10));
        }

        v10 = (v9 >> 2) & 3 | (4 * (*(a1 + 6) != 0));
        v11 = *(a1 + 16);
        v12 = sub_23948CB34(a2, 0, 2uLL);
        if (snprintf(v12, v13, "%0*u", v13 - 1, v10) >= v13)
        {
          v14 = 0x5D00000019;
        }

        else
        {
          v14 = 0;
        }

        if (v14)
        {
          v6 = v14 & 0x7F00000000;
          return v6 | v7;
        }

        v15 = sub_23948CB34(a2, 1uLL, 6uLL);
        if (snprintf(v15, v16, "%0*u", v16 - 1, v11 & 0x3FFF | ((v9 & 3) << 14)) >= v16)
        {
          v17 = 0x5D00000019;
        }

        else
        {
          v17 = 0;
        }

        if ((v17 & 0x19) != 0 || ((v18 = sub_23948CB34(a2, 6uLL, 5uLL), snprintf(v18, v19, "%0*u", v19 - 1, (v11 >> 14) & 0x1FFF) >= v19) ? (v17 = 0x5D00000019) : (v17 = 0), (v17 & 0x19) != 0))
        {
          v6 = v17 & 0x5D00000000;
          return v6 | v7;
        }

        if (v4)
        {
          v21 = sub_23948CB34(a2, 0xAuLL, 6uLL);
          if (snprintf(v21, v22, "%0*u", v22 - 1, *(a1 + 2)) >= v22)
          {
            v23 = 0x5D00000019;
          }

          else
          {
            v23 = 0;
          }

          if ((v23 & 0x19) != 0)
          {
LABEL_49:
            v6 = v23 & 0x5D00000000;
            return v6 | v7;
          }

          v24 = sub_23948CB34(a2, 0xFuLL, 6uLL);
          v26 = sub_23948CADC(v24, v25, *(a1 + 4));
          if (v26)
          {
            v6 = v26 & 0xFFFFFFFF00000000;
            v7 = v26;
            return v6 | v7;
          }

          v27 = 20;
        }

        else
        {
          v27 = 10;
        }

        v28 = sub_2393D8DDC(*a2);
        v29 = sub_2393D8EDC(v28);
        v30 = sub_23948CB34(a2, v27, 2uLL);
        if (snprintf(v30, v31, "%0*u", v31 - 1, v29) >= v31)
        {
          v23 = 0x5D00000019;
        }

        else
        {
          v23 = 0;
        }

        if ((v23 & 0x19) == 0)
        {
          sub_2393F6D60(a2, v27 | 1);
          v7 = 0;
          v6 = 0;
          return v6 | v7;
        }

        goto LABEL_49;
      }
    }

    else if (a2[1] > 0xB)
    {
      v4 = 0;
      goto LABEL_19;
    }

    v8 = sub_2393D9044(0x20u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v32 = 0;
      _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_ERROR, "Failed encoding payload to buffer", v32, 2u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0x20u, 1);
    }

    v6 = 0x7B00000000;
    v7 = 25;
  }

  else
  {
    v5 = sub_2393D9044(0x20u);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_ERROR, "Failed encoding invalid payload", buf, 2u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0x20u, 1);
    }

    v6 = 0x7100000000;
    v7 = 47;
  }

  return v6 | v7;
}

uint64_t sub_23948CADC(char *a1, size_t a2, int a3)
{
  if (snprintf(a1, a2, "%0*u", a2 - 1, a3) >= a2)
  {
    return 0x5D00000019;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23948CB34(void *a1, unint64_t a2, unint64_t a3)
{
  v3 = a1[1];
  v4 = v3 >= a2;
  v5 = v3 - a2;
  if (!v4)
  {
    sub_239532434();
  }

  if (v5 < a3)
  {
    sub_239532394();
  }

  sub_23948CC1C(&v7, *a1 + a2, a3);
  return v7;
}

unint64_t sub_23948CB80(uint64_t a1, uint64_t a2)
{
  v9[2] = *MEMORY[0x277D85DE8];
  v8 = 0;
  v9[0] = 0;
  *(v9 + 6) = 0;
  v7[0] = &v8;
  v7[1] = 22;
  v3 = sub_23948C750(a1, v7);
  if (v3)
  {
    v4 = v3 & 0xFFFFFFFF00000000;
  }

  else
  {
    MEMORY[0x23EE77A00](a2, &v8);
    LODWORD(v3) = 0;
    v4 = 0;
  }

  v5 = *MEMORY[0x277D85DE8];
  return v4 | v3;
}

void *sub_23948CC1C(void *result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  result[1] = a3;
  if (!a2)
  {
    if (a3)
    {
      sub_2395319FC();
    }
  }

  return result;
}

uint64_t sub_23948CC3C(std::string *__str, std::string *a2)
{
  v3 = __str;
  v16 = *MEMORY[0x277D85DE8];
  size = SHIBYTE(__str->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    if (__str->__r_.__value_.__l.__size_ >= 2)
    {
      size = __str->__r_.__value_.__l.__size_;
LABEL_15:
      std::string::basic_string(&buf, __str, 0, size - 1, &v14);
      v9 = SHIBYTE(v3->__r_.__value_.__r.__words[2]);
      if ((v9 & 0x8000000000000000) != 0)
      {
        v10 = v3;
        v3 = v3->__r_.__value_.__r.__words[0];
        v9 = v10->__r_.__value_.__l.__size_;
      }

      if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_buf = &buf;
      }

      else
      {
        p_buf = buf.__r_.__value_.__r.__words[0];
      }

      if (sub_2393D8F04(v3->__r_.__value_.__s.__data_[v9 - 1], p_buf))
      {
        std::string::operator=(a2, &buf);
        v7 = 0;
        v8 = 0;
      }

      else
      {
        v7 = 0x2E00000000;
        v8 = 19;
      }

      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf.__r_.__value_.__l.__data_);
      }

      goto LABEL_25;
    }
  }

  else if (size > 1)
  {
    goto LABEL_15;
  }

  v5 = sub_2393D9044(0x20u);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    if ((size & 0x80000000) != 0)
    {
      size = v3->__r_.__value_.__l.__size_;
    }

    LODWORD(buf.__r_.__value_.__l.__data_) = 67109120;
    HIDWORD(buf.__r_.__value_.__r.__words[0]) = size;
    _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_ERROR, "Failed decoding base10. Input was empty. %u", &buf, 8u);
  }

  if (sub_2393D5398(1u))
  {
    if ((SHIBYTE(v3->__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      v6 = v3->__r_.__value_.__l.__size_;
    }

    sub_2393D5320(0x20u, 1);
  }

  v7 = 0x2700000000;
  v8 = 30;
LABEL_25:
  v12 = *MEMORY[0x277D85DE8];
  return v8 | v7;
}

uint64_t sub_23948CDE4(uint64_t a1, int a2)
{
  v15 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v2 = 20;
  }

  else
  {
    v2 = 10;
  }

  if (*(a1 + 23) >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = *(a1 + 8);
  }

  if (v3 == v2)
  {
    v4 = 0;
    v5 = 0;
  }

  else
  {
    v7 = sub_2393D9044(0x20u);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109376;
      v12 = v3;
      v13 = 1024;
      v14 = v2;
      _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_ERROR, "Failed decoding base10. Input length %u was not expected length %u", buf, 0xEu);
    }

    if (sub_2393D5398(1u))
    {
      if (*(a1 + 23) < 0)
      {
        v8 = *(a1 + 8);
      }

      sub_2393D5320(0x20u, 1);
    }

    v4 = 0x3B00000000;
    v5 = 30;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v5 | v4;
}

uint64_t sub_23948CF20(char *a1, int *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = a1[23];
  v3 = v2 < 0;
  if (v2 >= 0)
  {
    v4 = a1;
  }

  else
  {
    v4 = *a1;
  }

  if (v3)
  {
    v5 = *(a1 + 1);
  }

  else
  {
    v5 = a1[23];
  }

  if (v5)
  {
    v6 = 0;
    while (1)
    {
      v7 = *v4;
      if ((v7 & 0x80000000) != 0 || (*(MEMORY[0x277D85DE0] + 4 * v7 + 60) & 0x400) == 0)
      {
        break;
      }

      v6 = v7 + 10 * v6 - 48;
      ++v4;
      if (!--v5)
      {
        goto LABEL_19;
      }
    }

    v8 = sub_2393D9044(0x20u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v14 = v7;
      _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_ERROR, "Failed decoding base10. Character was invalid %c", buf, 8u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0x20u, 1);
    }

    v9 = 0x4800000000;
    v10 = 143;
  }

  else
  {
    v6 = 0;
LABEL_19:
    v9 = 0;
    v10 = 0;
    *a2 = v6;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v10 | v9;
}

unint64_t sub_23948D068(std::string *__str, std::string::size_type *a2, int *a3, std::string::size_type __n)
{
  v21 = *MEMORY[0x277D85DE8];
  v8 = SHIBYTE(__str->__r_.__value_.__r.__words[2]);
  if ((v8 & 0x8000000000000000) != 0)
  {
    size = __str->__r_.__value_.__l.__size_;
    if (size < __n)
    {
LABEL_6:
      v10 = sub_2393D9044(0x20u);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = __str->__r_.__value_.__l.__size_;
        if ((v8 & 0x80000000) == 0)
        {
          LODWORD(v11) = v8;
        }

        LODWORD(buf.__r_.__value_.__l.__data_) = 67109120;
        HIDWORD(buf.__r_.__value_.__r.__words[0]) = v11;
        _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_ERROR, "Failed decoding base10. Input was too short. %u", &buf, 8u);
      }

      if (sub_2393D5398(1u))
      {
        if ((__str->__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v12 = __str->__r_.__value_.__l.__size_;
        }

        sub_2393D5320(0x20u, 1);
      }

      v13 = 0x5900000000;
      v14 = 30;
      goto LABEL_18;
    }
  }

  else
  {
    size = SHIBYTE(__str->__r_.__value_.__r.__words[2]);
    if (v8 < __n)
    {
      goto LABEL_6;
    }
  }

  if (*a2 + __n > size)
  {
    goto LABEL_6;
  }

  std::string::basic_string(&buf, __str, *a2, __n, &v19);
  *a2 += __n;
  v15 = sub_23948CF20(&buf, a3);
  v16 = v15;
  v13 = v15 & 0xFFFFFFFF00000000;
  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }

  v14 = v16;
LABEL_18:
  v17 = *MEMORY[0x277D85DE8];
  return v14 | v13;
}

unint64_t sub_23948D204(uint64_t a1, uint64_t a2)
{
  v18 = 0;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v19 = 0;
  v20 = 0;
  v24 = v25;
  v25[0] = 0;
  v27[0] = 0;
  v27[1] = 0;
  v25[1] = 0;
  v26 = v27;
  memset(&__str, 0, sizeof(__str));
  if (*(a1 + 23) < 0)
  {
    sub_238DCEA9C(&__p, *a1, *(a1 + 8));
  }

  else
  {
    __p = *a1;
  }

  v3 = sub_23948CC3C(&__p, &__str);
  v4 = v3;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (v4)
    {
      goto LABEL_11;
    }
  }

  else if (v3)
  {
    goto LABEL_11;
  }

  v14 = 0;
  v15 = 0;
  v13 = 0;
  v4 = sub_23948D068(&__str, &v15, &v14 + 1, 1uLL);
  if (v4)
  {
    goto LABEL_11;
  }

  v4 = sub_23948D068(&__str, &v15, &v14, 5uLL);
  if (v4)
  {
    goto LABEL_11;
  }

  v4 = sub_23948D068(&__str, &v15, &v13, 4uLL);
  if (v4)
  {
    goto LABEL_11;
  }

  v7 = BYTE4(v14);
  if ((HIDWORD(v14) & 0xFFFFFFFE) == 8)
  {
    v5 = 0x8500000000;
LABEL_17:
    LODWORD(v4) = 47;
    goto LABEL_12;
  }

  v4 = sub_23948CDE4(&__str, (HIDWORD(v14) >> 2) & 1);
  if (v4)
  {
    goto LABEL_11;
  }

  v8 = v14;
  v9 = v14 & 0x3FFF | ((v13 & 0x1FFF) << 14);
  if (!v9)
  {
    v10 = sub_2393D9044(0x20u);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_ERROR, "Failed decoding base10. SetUpPINCode was 0.", buf, 2u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0x20u, 1);
    }

    v5 = 0x9F00000000;
    goto LABEL_17;
  }

  if ((v7 & 4) == 0)
  {
    goto LABEL_26;
  }

  *buf = 0;
  v4 = sub_23948D068(&__str, &v15, buf, 5uLL);
  if (v4 || (v11 = 0, v4 = sub_23948D068(&__str, &v15, &v11, 5uLL), v4))
  {
LABEL_11:
    v5 = v4 & 0xFFFFFFFF00000000;
    goto LABEL_12;
  }

  if (*&buf[2])
  {
    v5 = 0xB700000000;
  }

  else
  {
    *(a2 + 2) = *buf;
    if (!HIWORD(v11))
    {
      *(a2 + 4) = v11;
LABEL_26:
      v5 = v4;
      *(a2 + 6) = (v7 & 4) >> 1;
      *(a2 + 16) = v9;
      sub_2392E10CC(a2 + 10, (4 * (v7 & 3)) | (v8 >> 14));
      LODWORD(v4) = 0;
      goto LABEL_12;
    }

    v5 = 0xBC00000000;
  }

  LODWORD(v4) = 143;
LABEL_12:
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  sub_238EF5F20(&v26, v27[0]);
  sub_238EF5F20(&v24, v25[0]);
  return v5 | v4;
}

uint64_t sub_23948D4E8(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 4);
  if (v3 == 2)
  {
    return sub_2393C827C(a1, a2, *(a3 + 32));
  }

  if (v3 != 1)
  {
    return 0x5B0000002FLL;
  }

  v6 = *(a3 + 8);
  v4 = (a3 + 8);
  v5 = v6;
  if (v4[23] < 0)
  {
    v4 = v5;
  }

  return sub_2393C847C(a1, a2, v4);
}

uint64_t sub_23948D544(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 4);
  result = 0x770000002FLL;
  if (v4 > 3)
  {
    if (v4 == 4)
    {
      v6 = *(a3 + 48);
    }

    else
    {
      if (v4 != 5)
      {
        return result;
      }

      v6 = *(a3 + 56);
    }

    return sub_2393C8154(a1, a2, v6);
  }

  else if ((v4 - 1) >= 2)
  {
    if (v4 == 3)
    {
      return sub_2393C8284(a1, a2, *(a3 + 40));
    }
  }

  else
  {
    return sub_23948D4E8(a1, a2, a3);
  }

  return result;
}

unint64_t sub_23948D5DC(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, void *a5)
{
  sub_23948FDCC(a2, &v37);
  sub_239490480(a2, &v35);
  if (v37 == v38 && v35 == v36)
  {
    v10 = 0;
    v11 = 0;
    goto LABEL_6;
  }

  sub_2393C7B90(v33);
  sub_2393C7BB8(v33, a3, a4);
  sub_2393C7B90(v32);
  v9 = sub_2393C8AA4(v33, 0x100uLL, 21, v32);
  if (!v9)
  {
    v13 = v38;
    if (v37 == v38)
    {
LABEL_16:
      v19 = v36;
      if (v35 == v36)
      {
LABEL_25:
        v9 = sub_2393C8BE8(v33, v32);
        if (!v9)
        {
          v9 = sub_2393C7CB8(v33);
          if (!v9)
          {
            v10 = 0;
            LODWORD(v9) = 0;
            *a5 = v34;
            goto LABEL_5;
          }
        }
      }

      else
      {
        v20 = (v35 + 8);
        while (1)
        {
          v22 = v20 - 8;
          v21 = *(v20 - 1);
          v26 = v21;
          if (*(v20 + 23) < 0)
          {
            sub_238DCEA9C(&__p, *v20, *(v20 + 1));
            v23 = v26;
          }

          else
          {
            v23 = v21;
            v24 = *v20;
            v28 = *(v20 + 2);
            __p = v24;
          }

          v29 = *(v20 + 6);
          v25 = v20[2];
          v31 = *(v20 + 6);
          v30 = v25;
          v9 = sub_23948D544(v32, v23, &v26);
          if (SHIBYTE(v28) < 0)
          {
            operator delete(__p);
          }

          if (v9)
          {
            break;
          }

          v20 += 4;
          if (v22 + 64 == v19)
          {
            goto LABEL_25;
          }
        }
      }
    }

    else
    {
      v14 = (v37 + 8);
      while (1)
      {
        v16 = v14 - 8;
        v15 = *(v14 - 1);
        v26 = v15;
        if (*(v14 + 23) < 0)
        {
          sub_238DCEA9C(&__p, *v14, *(v14 + 1));
          v17 = v26;
        }

        else
        {
          v17 = v15;
          v18 = *v14;
          v28 = *(v14 + 2);
          __p = v18;
        }

        v29 = *(v14 + 6);
        v9 = sub_23948D4E8(v32, v17, &v26);
        if (SHIBYTE(v28) < 0)
        {
          operator delete(__p);
        }

        if (v9)
        {
          break;
        }

        v14 = (v14 + 40);
        if (v16 + 40 == v13)
        {
          goto LABEL_16;
        }
      }
    }
  }

  v10 = v9 & 0xFFFFFFFF00000000;
LABEL_5:
  v11 = v9;
LABEL_6:
  v33[0] = &v35;
  sub_23948DFAC(v33);
  v33[0] = &v37;
  sub_2392E32D4(v33);
  return v11 | v10;
}

unint64_t sub_23948D858(unsigned __int8 *a1, uint64_t a2, unsigned __int8 *a3, unsigned int a4)
{
  v7 = a1;
  v16 = 0;
  if ((a1[72] & 1) != 0 || (a1 = sub_23948FA64(a1, 0), a1))
  {
    v8 = sub_23948D5DC(a1, v7, a3, a4, &v16);
    if (v8)
    {
      v9 = HIDWORD(v8);
    }

    else
    {
      if (v16 != -11)
      {
        if (((v16 + 11) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_238EAEDBC();
      }

      sub_238DB9BD8(v15, 0, 0);
      v10 = sub_23948C734(0);
      if (v10 != -3)
      {
        if (((v10 + 3) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_238EAEDBC();
      }

      sub_23948CC1C(v14, 0, 0);
      v11 = sub_23948DB88(v7, v14, v15[0], v15[1], a3, -11);
      v12 = v11;
      if (v11)
      {
        v9 = HIDWORD(v11);
      }

      else
      {
        MEMORY[0x23EE77A00](a2, v14[0]);
        v9 = 0;
      }

      LODWORD(v8) = v12;
    }
  }

  else
  {
    v9 = 275;
    LODWORD(v8) = 47;
  }

  return v8 | (v9 << 32);
}

unint64_t sub_23948DA14(unsigned __int8 *a1, uint64_t a2)
{
  sub_23948FDCC(a1, &v19);
  v4 = v19;
  if (v19 == v20)
  {
    v5 = 0;
  }

  else
  {
    v5 = 0;
    do
    {
      if (*(v4 + 4) == 1)
      {
        v6 = *(v4 + 31);
        if ((v6 & 0x80u) != 0)
        {
          v6 = *(v4 + 16);
        }

        v7 = v6 + 10;
      }

      else
      {
        v7 = 10;
      }

      v5 += v7;
      v4 += 40;
    }

    while (v4 != v20);
  }

  sub_239490480(a1, v18);
  for (i = v18[0]; i != v18[1]; i += 8)
  {
    if (*(i + 1) == 1)
    {
      v9 = *(i + 31);
      if (v9 < 0)
      {
        v9 = i[2];
      }

      v10 = v9 + 10;
    }

    else
    {
      v10 = 10;
    }

    v5 += v10;
  }

  v11 = v5 + 6;
  if (HIDWORD(v11))
  {
    v15 = 0x10600000000;
LABEL_24:
    v16 = 11;
    goto LABEL_25;
  }

  v12 = sub_2393D52C4(v11);
  if (!v12)
  {
    v15 = 0x10900000000;
    goto LABEL_24;
  }

  v13 = v12;
  v14 = sub_23948D858(a1, a2, v12, v11);
  LODWORD(v16) = v14;
  v15 = v14 & 0xFFFFFFFF00000000;
  j__free(v13);
  v16 = v16;
LABEL_25:
  v21 = v18;
  sub_23948DFAC(&v21);
  v18[0] = &v19;
  sub_2392E32D4(v18);
  return v15 | v16;
}

uint64_t sub_23948DB88(unsigned __int8 *a1, uint64_t *a2, void *a3, size_t a4, unsigned __int8 *a5, uint64_t a6)
{
  bzero(a3, a4);
  v25 = 0;
  if (8 * a6 + 88 > 8 * a4)
  {
    v12 = 0xA300000000;
    v13 = 25;
    return v13 | v12;
  }

  result = sub_23948DE80(a3, &v25, *a1, 3, 0x58uLL);
  if (!result)
  {
    result = sub_23948DE80(a3, &v25, *(a1 + 1), 16, 0x58uLL);
    if (!result)
    {
      result = sub_23948DE80(a3, &v25, *(a1 + 2), 16, 0x58uLL);
      if (!result)
      {
        result = sub_23948DE80(a3, &v25, a1[6], 2, 0x58uLL);
        if (!result)
        {
          v15 = a1[7] == 1 ? *sub_23948DF8C(a1 + 7) : 0;
          result = sub_23948DE80(a3, &v25, v15, 8, 0x58uLL);
          if (!result)
          {
            v16 = (a1[12] & 1) != 0 ? 0 : sub_2392E10A8(a1 + 10);
            result = sub_23948DE80(a3, &v25, v16, 12, 0x58uLL);
            if (!result)
            {
              result = sub_23948DE80(a3, &v25, *(a1 + 4), 27, 0x58uLL);
              if (!result)
              {
                v17 = v25;
                v18 = (v25 + 4) > 0x58;
                if ((v25 + 4) <= 0x58)
                {
                  v17 = v25 + 4;
                }

                v25 = v17;
                v19 = 0x300000002FLL;
                if (!v18)
                {
                  v19 = 0;
                }

                if ((v19 & 0xFFFFFFFFFLL) != 0)
                {
                  v12 = v19 & 0x3000000000;
                  v13 = 47;
                  return v13 | v12;
                }

                result = sub_23948DF0C(a3, &v25, a5, a6, 8 * a6 + 88);
                if (!result)
                {
                  v20 = a2[1];
                  if (v20 >= 4)
                  {
                    v25 = sub_23948CB34(a2, 3uLL, v20 - 3);
                    v26 = v21;
                    v22 = *a2;
                    *(v22 + 2) = 58;
                    *v22 = 21581;
                    sub_238DB6950(v24, a3, a4);
                    v23 = sub_23948C610(v24[0], v24[1], &v25);
                    sub_2393F6D60(a2, v26 + 3);
                    return v23;
                  }

                  else
                  {
                    return 0xCB00000019;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_23948DDEC(unsigned __int8 *a1, uint64_t *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  if (sub_23948FA64(a1, 0))
  {
    result = sub_23948DB88(a1, a2, v6, 0xBuLL, 0, 0);
  }

  else
  {
    result = 0x1240000002FLL;
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_23948DE80(uint64_t a1, unint64_t *a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  v5 = *a2;
  v6 = *a2 + a4;
  if (v6 > a5)
  {
    v7 = 0x3000000000;
LABEL_10:
    v9 = 47;
    return v9 | v7;
  }

  if ((1 << a4) <= a3)
  {
    v7 = 0x3100000000;
    goto LABEL_10;
  }

  *a2 = v6;
  if (a3)
  {
    do
    {
      if (a3)
      {
        *(a1 + (v5 >> 3)) |= 1 << (v5 & 7);
      }

      ++v5;
      v8 = a3 > 1;
      a3 >>= 1;
    }

    while (v8);
  }

  v7 = 0;
  v9 = 0;
  return v9 | v7;
}

uint64_t sub_23948DF0C(uint64_t a1, unint64_t *a2, unsigned __int8 *a3, uint64_t a4, unint64_t a5)
{
  if (!a4)
  {
    return 0;
  }

  v6 = a4;
  while (1)
  {
    v10 = *a3++;
    result = sub_23948DE80(a1, a2, v10, 8, a5);
    if (result)
    {
      break;
    }

    if (!--v6)
    {
      return 0;
    }
  }

  return result;
}

_BYTE *sub_23948DF8C(_BYTE *a1)
{
  if ((*a1 & 1) == 0)
  {
    sub_239533D44();
  }

  return a1 + 1;
}

void sub_23948DFAC(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_23948E000(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_23948E000(uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 64)
  {
    if (*(i - 33) < 0)
    {
      operator delete(*(i - 56));
    }
  }

  a1[1] = v2;
}

unint64_t sub_23948E050(uint64_t a1, uint64_t a2)
{
  do
  {
    v4 = sub_2393C5C40(a2);
    if (v4 > 0xC || ((1 << v4) & 0x1011) == 0)
    {
      goto LABEL_26;
    }

    v5 = *(a2 + 16);
    if (v5 > 0xFF)
    {
      LODWORD(v7) = 36;
      v13 = 0xC600000000;
      return v13 | v7;
    }

    v6 = v4 == 12;
    if (v4 <= 7)
    {
      v6 = sub_239490460(a1, *(a2 + 16));
    }

    if ((v5 & 0x80) != 0)
    {
      __p = 0;
      v18 = 0;
      v20 = 0;
      v19 = 0;
      v15[0] = v5;
      v8 = sub_23948E300(a2, v15, v6);
      LODWORD(v7) = v8;
      if (!v8)
      {
        v9 = sub_23948FCD4(a1, v15);
        goto LABEL_23;
      }

      v13 = v8 & 0xFFFFFFFF00000000;
      if ((SHIBYTE(v19) & 0x80000000) == 0)
      {
        return v13 | v7;
      }

LABEL_39:
      operator delete(__p);
      return v13 | v7;
    }

    __p = 0;
    v18 = 0;
    v20 = 0;
    v19 = 0;
    v22 = 0;
    v23 = 0;
    v21 = 0;
    v15[0] = v5;
    if ((v6 - 1) <= 1)
    {
      v7 = sub_23948E300(a2, v15, v6);
      if (v7)
      {
        goto LABEL_38;
      }

      goto LABEL_22;
    }

    if (v6 != 5)
    {
      if (v6 == 4)
      {
        LODWORD(v24) = 0;
        v10 = sub_2393C5FC8(a2, &v24);
        if (!v10)
        {
          LODWORD(v10) = 0;
          v11 = 0;
          v16 = 4;
          v22 = v24;
          goto LABEL_21;
        }
      }

      else
      {
        if (v6 != 3)
        {
          v13 = 0xB300000000;
          LODWORD(v7) = 47;
          return v13 | v7;
        }

        v24 = 0;
        v10 = sub_2393C5DA0(a2, &v24);
        if (!v10)
        {
          LODWORD(v10) = 0;
          v11 = 0;
          v16 = 3;
          v21 = v24;
          goto LABEL_21;
        }
      }

LABEL_20:
      v11 = v10 & 0xFFFFFFFF00000000;
      goto LABEL_21;
    }

    v24 = 0;
    v10 = sub_2393C5F2C(a2, &v24);
    if (v10)
    {
      goto LABEL_20;
    }

    LODWORD(v10) = 0;
    v11 = 0;
    v16 = 5;
    v23 = v24;
LABEL_21:
    v7 = v11 | v10;
    if (v7)
    {
LABEL_38:
      v13 = v7 & 0xFFFFFFFF00000000;
      if ((SHIBYTE(v19) & 0x80000000) == 0)
      {
        return v13 | v7;
      }

      goto LABEL_39;
    }

LABEL_22:
    v9 = sub_23948FFA4(a1, v15);
LABEL_23:
    v7 = v9;
    if (SHIBYTE(v19) < 0)
    {
      operator delete(__p);
    }

    if (v7)
    {
      v13 = v7 & 0xFFFFFFFF00000000;
      return v13 | v7;
    }

LABEL_26:
    v12 = sub_2393C6B34(a2);
  }

  while (!v12);
  if (v12 == 33)
  {
    v13 = 0;
  }

  else
  {
    v13 = v12 & 0xFFFFFFFF00000000;
  }

  if (v12 == 33)
  {
    LODWORD(v7) = 0;
  }

  else
  {
    LODWORD(v7) = v12;
  }

  return v13 | v7;
}

uint64_t sub_23948E300(uint64_t a1, uint64_t a2, int a3)
{
  if (a3 == 2)
  {
    LODWORD(__dst) = 0;
    v4 = sub_2393C5E78(a1, &__dst);
    if (!v4)
    {
      LODWORD(v4) = 0;
      v6 = 0;
      *(a2 + 4) = 2;
      *(a2 + 32) = __dst;
      return v6 | v4;
    }
  }

  else
  {
    if (a3 != 1)
    {
      return 0x960000002FLL;
    }

    __src = 0uLL;
    v4 = sub_2393C76A8(a1, &__src);
    if (!v4)
    {
      *(a2 + 4) = 1;
      v5 = *(&__src + 1);
      if (*(&__src + 1) >= 0x7FFFFFFFFFFFFFF8uLL)
      {
        sub_238EAEDBC();
      }

      if (*(&__src + 1) >= 0x17uLL)
      {
        operator new();
      }

      HIBYTE(v9) = BYTE8(__src);
      if (*(&__src + 1))
      {
        memmove(&__dst, __src, *(&__src + 1));
      }

      *(&__dst + v5) = 0;
      if (*(a2 + 31) < 0)
      {
        operator delete(*(a2 + 8));
      }

      LODWORD(v4) = 0;
      v6 = 0;
      *(a2 + 8) = __dst;
      *(a2 + 24) = v9;
      return v6 | v4;
    }
  }

  v6 = v4 & 0xFFFFFFFF00000000;
  return v6 | v4;
}

uint64_t sub_23948E45C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (HIDWORD(a3))
  {
    return 0xF20000002FLL;
  }

  sub_2393C5AAC(v10);
  sub_2393C5ADC(v10, a2, a3);
  v6 = sub_2393C6B34(v10);
  if (v6)
  {
    goto LABEL_3;
  }

  if (sub_2393C5C40(v10) != 21)
  {
    v7 = 0xFA00000000;
    goto LABEL_13;
  }

  sub_2393C5AAC(v9);
  if (sub_2393C5C40(v10) != 21)
  {
    v7 = 0x4600000000;
    goto LABEL_13;
  }

  if (v11 != 256)
  {
    v7 = 0x4700000000;
    goto LABEL_13;
  }

  if (sub_2393C5CB8(v10))
  {
    v7 = 0x4800000000;
LABEL_13:
    LODWORD(v6) = 47;
    return v6 | v7;
  }

  v6 = sub_2393C76A4(v10, v9);
  if (!v6)
  {
    if (v9[16] != 21)
    {
      v7 = 0x4C00000000;
      goto LABEL_13;
    }

    v6 = sub_2393C6B34(v9);
    if (!v6)
    {
      v6 = sub_23948E050(a1, v9);
      if (v6 == 33)
      {
        v6 = 0;
      }
    }
  }

LABEL_3:
  v7 = v6 & 0xFFFFFFFF00000000;
  return v6 | v7;
}

unint64_t sub_23948E5A0(uint64_t a1, void *a2, unint64_t *a3)
{
  v3 = 8 * (a2[1] - *a2) - *a3 + 7;
  if (v3 >= 8)
  {
    v9 = v3 >> 3;
    v10 = sub_2393D52C4(v3 >> 3);
    if (v10)
    {
      v11 = v10;
      v19 = a1;
      v12 = 0;
      if (v9 <= 1)
      {
        v13 = 1;
      }

      else
      {
        v13 = v9;
      }

      do
      {
        v21 = 0;
        memset(v20, 0, sizeof(v20));
        v14 = a2[1];
        if (v14 != *a2)
        {
          if (v14 - *a2 >= 0)
          {
            v15 = v14 - *a2;
            operator new();
          }

          sub_238EAEDBC();
        }

        sub_23948E728(v20, a3, &v21, 8);
        v11[v12++] = v21;
      }

      while (v13 != v12);
      v16 = sub_23948E45C(v19, v11, v9);
      v17 = v16;
      v5 = v16 & 0xFFFFFFFF00000000;
      j__free(v11);
      v4 = v17;
    }

    else
    {
      v5 = 0x11200000000;
      v4 = 11;
    }
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  return v5 | v4;
}

uint64_t sub_23948E728(void *a1, unint64_t *a2, void *a3, uint64_t a4)
{
  v4 = a4;
  v26 = *MEMORY[0x277D85DE8];
  *a3 = 0;
  v7 = *a2;
  v8 = *a2 + a4;
  v9 = a1[1] - *a1;
  if (v8 <= 8 * v9)
  {
    if (a4)
    {
      v13 = 0;
      v14 = 0;
      v15 = a4;
      do
      {
        if ((*(*a1 + (v7 >> 3)) >> (v7 & 7)))
        {
          v14 |= (1 << v13);
          *a3 = v14;
        }

        ++v7;
        ++v13;
        --v15;
      }

      while (v15);
      v8 = *a2 + a4;
    }

    v11 = 0;
    v12 = 0;
    *a2 = v8;
  }

  else
  {
    v10 = sub_2393D9044(0x20u);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109632;
      v21 = v7;
      v22 = 1024;
      v23 = v4;
      v24 = 1024;
      v25 = v9;
      _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_ERROR, "Error parsing QR code. startIndex %u numberOfBitsToLoad %u buf_len %u ", buf, 0x14u);
    }

    if (sub_2393D5398(1u))
    {
      v19 = a1[1] - *a1;
      v18 = *a2;
      sub_2393D5320(0x20u, 1);
    }

    v11 = 0x3300000000;
    v12 = 47;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v12 | v11;
}

void sub_23948E8BC(const std::string *a1@<X0>, std::string *a2@<X8>)
{
  v25 = a2;
  v26.__r_.__value_.__r.__words[0] = 0;
  memset(&__str, 0, sizeof(__str));
  __p = 0;
  v28 = 0;
  v29 = 0;
  sub_23948EAF8(&__p, &v26);
  v3 = 0;
  while (1)
  {
    v4 = SHIBYTE(a1->__r_.__value_.__r.__words[2]);
    v5 = v4 < 0 ? a1->__r_.__value_.__l.__size_ : SHIBYTE(a1->__r_.__value_.__r.__words[2]);
    if (v3 >= v5)
    {
      break;
    }

    v6 = a1;
    if ((v4 & 0x80000000) != 0)
    {
      v6 = a1->__r_.__value_.__r.__words[0];
    }

    v7 = v6->__r_.__value_.__s.__data_[v3++];
    if (v7 == 37)
    {
      v26.__r_.__value_.__r.__words[0] = v3;
      sub_23948EAF8(&__p, &v26);
    }
  }

  v8 = __p;
  if (v28 != __p)
  {
    v9 = 0;
    v10 = (v28 - __p) >> 3;
    do
    {
      v11 = &v8[8 * v9];
      v12 = *v11;
      if (v9 == v10 - 1 || (v13 = v11[1]) == 0)
      {
        v14 = -1;
      }

      else
      {
        v14 = v13 + ~v12;
      }

      std::string::basic_string(&v26, a1, v12, v14, &v31);
      v15 = SHIBYTE(v26.__r_.__value_.__r.__words[2]);
      v16 = v26.__r_.__value_.__r.__words[0];
      if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v17 = &v26;
      }

      else
      {
        v17 = v26.__r_.__value_.__r.__words[0];
      }

      if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = SHIBYTE(v26.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v26.__r_.__value_.__l.__size_;
      }

      if (size >= 3)
      {
        v19 = v17 + size;
        v20 = size;
        v21 = v17;
        do
        {
          v22 = memchr(v21, 77, v20 - 2);
          if (!v22)
          {
            break;
          }

          if (LOWORD(v22->__r_.__value_.__l.__data_) == 21581 && v22->__r_.__value_.__s.__data_[2] == 58)
          {
            if (v22 != v17 || size == 3)
            {
              break;
            }

            std::string::operator=(&__str, &v26);
            if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v26.__r_.__value_.__l.__data_);
            }

            goto LABEL_36;
          }

          v21 = (&v22->__r_.__value_.__l.__data_ + 1);
          v20 = v19 - v21;
        }

        while (v19 - v21 >= 3);
      }

      if (v15 < 0)
      {
        operator delete(v16);
      }

      ++v9;
      v8 = __p;
      v10 = (v28 - __p) >> 3;
    }

    while (v9 < v10);
  }

LABEL_36:
  v24 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v24 = __str.__r_.__value_.__l.__size_;
  }

  if (v24)
  {
    std::string::basic_string(v25, &__str, 3uLL, 0xFFFFFFFFFFFFFFFFLL, &v26);
  }

  else
  {
    *v25 = __str;
    memset(&__str, 0, sizeof(__str));
  }

  if (__p)
  {
    v28 = __p;
    operator delete(__p);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }
}

void sub_23948EAF8(uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      sub_238EAEDBC();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      sub_23948F828(a1, v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

unint64_t sub_23948EBCC(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 23) < 0)
  {
    sub_238DCEA9C(&__p, *a1, *(a1 + 8));
  }

  else
  {
    __p = *a1;
  }

  sub_23948E8BC(&__p, &v10);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  size = HIBYTE(v10.__r_.__value_.__r.__words[2]);
  if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v10.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    v8 = v10;
    memset(&v10, 0, sizeof(v10));
    v4 = sub_23948ECC8(&v8, a2);
    v5 = v4;
    v6 = HIDWORD(v4);
    if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v8.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v5 = 47;
    LODWORD(v6) = 328;
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  return v5 | (v6 << 32);
}

unint64_t sub_23948ECC8(__int128 *a1, uint64_t a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v23 = 0;
  if (*(a1 + 23) < 0)
  {
    sub_238DCEA9C(&__dst, *a1, *(a1 + 1));
  }

  else
  {
    __dst = *a1;
    v21 = *(a1 + 2);
  }

  v3 = sub_23948C3DC(&__dst, &v24);
  v4 = v3;
  if (SHIBYTE(v21) < 0)
  {
    operator delete(__dst);
    if (!v4)
    {
      goto LABEL_8;
    }

LABEL_40:
    v6 = v4 & 0xFFFFFFFF00000000;
    goto LABEL_41;
  }

  if (v3)
  {
    goto LABEL_40;
  }

LABEL_8:
  v22 = 0;
  memset(v19, 0, sizeof(v19));
  if (v25 != v24)
  {
    if (v25 - v24 >= 0)
    {
      operator new();
    }

    goto LABEL_51;
  }

  v4 = sub_23948E728(v19, &v23, &v22, 3);
  if (v4)
  {
    goto LABEL_40;
  }

  *a2 = v22;
  memset(v18, 0, sizeof(v18));
  if (v25 != v24)
  {
    if (v25 - v24 >= 0)
    {
      operator new();
    }

    goto LABEL_51;
  }

  v4 = sub_23948E728(v18, &v23, &v22, 16);
  if (v4)
  {
    goto LABEL_40;
  }

  *(a2 + 2) = v22;
  memset(v17, 0, sizeof(v17));
  if (v25 != v24)
  {
    if (v25 - v24 >= 0)
    {
      operator new();
    }

    goto LABEL_51;
  }

  v4 = sub_23948E728(v17, &v23, &v22, 16);
  if (v4)
  {
    goto LABEL_40;
  }

  *(a2 + 4) = v22;
  memset(v16, 0, sizeof(v16));
  if (v25 != v24)
  {
    if (v25 - v24 >= 0)
    {
      operator new();
    }

    goto LABEL_51;
  }

  v4 = sub_23948E728(v16, &v23, &v22, 2);
  if (v4)
  {
    goto LABEL_40;
  }

  *(a2 + 6) = v22;
  memset(v15, 0, sizeof(v15));
  if (v25 != v24)
  {
    if (v25 - v24 >= 0)
    {
      operator new();
    }

    goto LABEL_51;
  }

  v4 = sub_23948E728(v15, &v23, &v22, 8);
  if (v4)
  {
    goto LABEL_40;
  }

  v5 = v22;
  *(a2 + 7) = 1;
  *(a2 + 8) = v5;
  memset(v14, 0, sizeof(v14));
  if (v25 != v24)
  {
    if (v25 - v24 >= 0)
    {
      operator new();
    }

    goto LABEL_51;
  }

  v4 = sub_23948E728(v14, &v23, &v22, 12);
  if (v4)
  {
    goto LABEL_40;
  }

  sub_2392E10F4(a2 + 10, v22);
  memset(v13, 0, sizeof(v13));
  if (v25 != v24)
  {
    if (v25 - v24 >= 0)
    {
      operator new();
    }

    goto LABEL_51;
  }

  v4 = sub_23948E728(v13, &v23, &v22, 27);
  if (v4)
  {
    goto LABEL_40;
  }

  *(a2 + 16) = v22;
  memset(v12, 0, sizeof(v12));
  if (v25 != v24)
  {
    if (v25 - v24 >= 0)
    {
      operator new();
    }

LABEL_51:
    sub_238EAEDBC();
  }

  v4 = sub_23948E728(v12, &v23, &v22, 4);
  if (v4)
  {
    goto LABEL_40;
  }

  v9 = v22;
  if (v22)
  {
    v10 = sub_2393D9044(0x20u);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v28 = v9;
      _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_ERROR, "Payload padding bits are not all 0: 0x%x", buf, 8u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0x20u, 1);
    }

    v6 = 0x17800000000;
    LODWORD(v4) = 47;
  }

  else
  {
    v11 = sub_23948E5A0(a2, &v24, &v23);
    LODWORD(v4) = v11;
    v6 = v11 & 0xFFFFFFFF00000000;
  }

LABEL_41:
  if (v24)
  {
    v25 = v24;
    operator delete(v24);
  }

  v7 = *MEMORY[0x277D85DE8];
  return v4 | v6;
}

unint64_t sub_23948F374(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 23) < 0)
  {
    sub_238DCEA9C(&__p, *a1, *(a1 + 8));
  }

  else
  {
    __p = *a1;
  }

  sub_23948E8BC(&__p, &__str);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  size = SHIBYTE(__str.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(__str.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
  {
    if (!*(&__str.__r_.__value_.__s + 23))
    {
      v27 = 387;
      LODWORD(v26) = 47;
      return v26 | (v27 << 32);
    }

    p_str = &__str;
    goto LABEL_11;
  }

  size = __str.__r_.__value_.__l.__size_;
  if (__str.__r_.__value_.__l.__size_)
  {
    p_str = __str.__r_.__value_.__r.__words[0];
LABEL_11:
    v5 = 0;
    do
    {
      v6 = p_str->__r_.__value_.__s.__data_[0];
      p_str = (p_str + 1);
      if (v6 == 42)
      {
        ++v5;
      }

      --size;
    }

    while (size);
    sub_23948F6F8(a2);
    sub_23948F75C(a2, v5 + 1);
    v7 = 0;
    while (1)
    {
      v8 = std::string::find(&__str, 42, v7);
      if (v8 == -1)
      {
        std::string::basic_string(&v35, &__str, v7, 0xFFFFFFFFFFFFFFFFLL, v32);
        v11 = v35.__r_.__value_.__l.__size_;
        v10 = v35.__r_.__value_.__r.__words[0];
        v32[0] = v35.__r_.__value_.__r.__words[2];
        *(v32 + 3) = *(&v35.__r_.__value_.__r.__words[2] + 3);
        v12 = HIBYTE(v35.__r_.__value_.__r.__words[2]);
        v7 = -1;
      }

      else
      {
        v9 = v8;
        std::string::basic_string(&v35, &__str, v7, v8 - v7, v32);
        v11 = v35.__r_.__value_.__l.__size_;
        v10 = v35.__r_.__value_.__r.__words[0];
        v32[0] = v35.__r_.__value_.__r.__words[2];
        *(v32 + 3) = *(&v35.__r_.__value_.__r.__words[2] + 3);
        v12 = HIBYTE(v35.__r_.__value_.__r.__words[2]);
        v7 = v9 + 1;
      }

      v13 = a2[1];
      v14 = a2[2];
      if (v13 >= v14)
      {
        v16 = 0x8E38E38E38E38E39 * ((v13 - *a2) >> 3);
        v17 = v16 + 1;
        if (v16 + 1 > 0x38E38E38E38E38ELL)
        {
          sub_238EAEDBC();
        }

        v18 = 0x8E38E38E38E38E39 * ((v14 - *a2) >> 3);
        if (2 * v18 > v17)
        {
          v17 = 2 * v18;
        }

        if (v18 >= 0x1C71C71C71C71C7)
        {
          v19 = 0x38E38E38E38E38ELL;
        }

        else
        {
          v19 = v17;
        }

        v37 = a2;
        if (v19)
        {
          sub_23948F870(a2, v19);
        }

        v20 = 72 * v16;
        v21 = 72 * v16;
        *(v21 + 32) = 0u;
        *v20 = 0u;
        *(v20 + 16) = 0u;
        *(v20 + 24) = 72 * v16 + 32;
        *(v20 + 64) = 0;
        *(v21 + 56) = 0;
        *(v20 + 48) = 72 * v16 + 56;
        v15 = 72 * v16 + 72;
        v22 = a2[1];
        v23 = 72 * v16 + *a2 - v22;
        sub_23948F8CC(a2, *a2, v22, v20 + *a2 - v22);
        v24 = *a2;
        *a2 = v23;
        a2[1] = v15;
        v25 = a2[2];
        a2[2] = 0;
        v35.__r_.__value_.__r.__words[2] = v24;
        v36 = v25;
        v35.__r_.__value_.__r.__words[0] = v24;
        v35.__r_.__value_.__l.__size_ = v24;
        sub_23948F9F8(&v35);
      }

      else
      {
        *v13 = 0u;
        *(v13 + 16) = 0u;
        *(v13 + 32) = 0u;
        *(v13 + 24) = v13 + 32;
        *(v13 + 64) = 0;
        *(v13 + 56) = 0;
        v15 = v13 + 72;
        *(v13 + 48) = v13 + 56;
      }

      a2[1] = v15;
      if (v12 < 0)
      {
        sub_238DCEA9C(&v29, v10, v11);
      }

      else
      {
        *&v29 = v10;
        *(&v29 + 1) = v11;
        *v30 = v32[0];
        *&v30[3] = *(v32 + 3);
        v31 = v12;
      }

      v26 = sub_23948ECC8(&v29, v15 - 72);
      if (v31 < 0)
      {
        operator delete(v29);
      }

      if (v12 < 0)
      {
        operator delete(v10);
      }

      if (v26)
      {
        break;
      }

      if (v7 == -1)
      {
        v27 = 0;
        LODWORD(v26) = 0;
        goto LABEL_43;
      }
    }

    v27 = HIDWORD(v26);
    goto LABEL_43;
  }

  LODWORD(v26) = 47;
  v27 = 387;
LABEL_43:
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  return v26 | (v27 << 32);
}

void sub_23948F6F8(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = v2 - 24;
    do
    {
      sub_238EF5F20(v4, *(v4 + 8));
      sub_238EF5F20(v4 - 24, *(v4 - 16));
      v5 = v4 - 48;
      v4 -= 72;
    }

    while (v5 != v3);
  }

  a1[1] = v3;
}

void *sub_23948F75C(void *result, unint64_t a2)
{
  if (0x8E38E38E38E38E39 * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0x38E38E38E38E38FLL)
    {
      v2 = result[1] - *result;
      v3 = result;
      sub_23948F870(result, a2);
    }

    sub_238EAEDBC();
  }

  return result;
}

void sub_23948F828(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_238EAEDBC();
}

void sub_23948F870(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x38E38E38E38E38FLL)
  {
    operator new();
  }

  sub_238EAEDBC();
}

void sub_23948F8CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = 0;
    do
    {
      v7 = a2 + v6;
      v8 = a4 + v6;
      v9 = *(a2 + v6);
      *(v8 + 3) = *(a2 + v6 + 3);
      *v8 = v9;
      *(v8 + 7) = 0;
      v10 = *(a2 + v6 + 7);
      *(v8 + 7) = v10;
      if (v10 == 1)
      {
        *(v8 + 8) = *(v7 + 8);
        *(v7 + 7) = 0;
      }

      v11 = *(v7 + 10);
      *(v8 + 18) = *(v7 + 18);
      *(v8 + 10) = v11;
      *(v8 + 24) = *(v7 + 24);
      v12 = (v7 + 32);
      v13 = *(v7 + 32);
      *(v8 + 32) = v13;
      v14 = v8 + 32;
      v15 = *(v7 + 40);
      *(v8 + 40) = v15;
      if (v15)
      {
        *(v13 + 16) = v14;
        *(v7 + 24) = v12;
        *v12 = 0;
        *(v7 + 40) = 0;
      }

      else
      {
        *(v8 + 24) = v14;
      }

      v16 = a4 + v6;
      *(v16 + 48) = *(a2 + v6 + 48);
      v17 = (a2 + v6 + 56);
      v18 = *v17;
      *(a4 + v6 + 56) = *v17;
      v19 = a4 + v6 + 56;
      v20 = *(a2 + v6 + 64);
      *(v16 + 64) = v20;
      if (v20)
      {
        *(v18 + 16) = v19;
        *(a2 + v6 + 48) = v17;
        *v17 = 0;
        *(a2 + v6 + 64) = 0;
      }

      else
      {
        *(v16 + 48) = v19;
      }

      v6 += 72;
    }

    while (a2 + v6 != a3);
    while (v5 != a3)
    {
      sub_238EF5F20(v5 + 48, *(v5 + 56));
      sub_238EF5F20(v5 + 24, *(v5 + 32));
      v5 += 72;
    }
  }
}

uint64_t sub_23948F9F8(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 72;
    sub_238EF5F20(i - 24, *(i - 16));
    sub_238EF5F20(i - 48, *(i - 40));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_23948FA64(unsigned __int8 *a1, int a2)
{
  if (*a1 > 7u)
  {
    return 0;
  }

  if (a1[6] > 2u)
  {
    return 0;
  }

  if (a1[12])
  {
    return 0;
  }

  v3 = a1 + 7;
  if (a1[7] != 1 || !a2 && *sub_23948DF8C(v3) > 0x1Fu)
  {
    return 0;
  }

  return sub_23948FAEC(a1);
}

uint64_t sub_23948FAEC(uint64_t a1)
{
  if (*a1)
  {
    return 0;
  }

  result = sub_23948FB60(*(a1 + 16));
  if (result)
  {
    if (*(a1 + 2))
    {
      return *(a1 + 2) <= 0xFFF4u && *(a1 + 4) != 0;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_23948FB60(unsigned int a1)
{
  v1 = vdupq_n_s32(a1);
  v2 = vmovn_s16(vuzp1q_s16(vceqq_s32(v1, xmmword_2395D6750), vceqq_s32(v1, xmmword_2395D6760)));
  v2.i8[0] = vmaxv_u8(v2);
  if (a1 == 87654321 || a1 - 1 >= 0x5F5E0FE)
  {
    return 0;
  }

  else
  {
    return (a1 != 12345678) & ~v2.i32[0];
  }
}

uint64_t sub_23948FC60(uint64_t a1, char a2, uint64_t a3)
{
  v5[0] = a2;
  v6 = 1;
  v9 = 0;
  *__p = *a3;
  v8 = *(a3 + 16);
  *(a3 + 23) = 0;
  *a3 = 0;
  v3 = sub_23948FCD4(a1, v5);
  if (SHIBYTE(v8) < 0)
  {
    operator delete(__p[0]);
  }

  return v3;
}

uint64_t sub_23948FCD4(uint64_t a1, char *a2)
{
  if (*a2 < 0)
  {
    v5 = sub_239490F9C(a1 + 24, a2);
    v5[5] = *a2;
    std::string::operator=(v5 + 2, (a2 + 8));
    v2 = 0;
    v3 = 0;
    *(v5 + 18) = *(a2 + 8);
  }

  else
  {
    v2 = 0xF400000000;
    v3 = 47;
  }

  return v3 | v2;
}

uint64_t sub_23948FD68(uint64_t a1, char a2, int a3)
{
  __p = 0;
  v8 = 0;
  v9 = 0;
  v5[0] = a2;
  v6 = 2;
  v10 = a3;
  v3 = sub_23948FCD4(a1, v5);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p);
  }

  return v3;
}

uint64_t sub_23948FDCC@<X0>(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = *(result + 24);
  v3 = (result + 32);
  if (v2 != (result + 32))
  {
    do
    {
      result = sub_23948FE50(a2, (v2 + 5));
      v5 = v2[1];
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
          v6 = v2[2];
          v7 = *v6 == v2;
          v2 = v6;
        }

        while (!v7);
      }

      v2 = v6;
    }

    while (v6 != v3);
  }

  return result;
}

uint64_t sub_23948FE50(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_239490CA4(a1, a2);
  }

  else
  {
    sub_239490DA8(a1, a1[1], a2);
    result = v3 + 40;
  }

  a1[1] = result;
  return result;
}

uint64_t sub_23948FE9C(uint64_t a1, unsigned int a2)
{
  v12 = a2;
  v2 = a1 + 32;
  v3 = *(a1 + 32);
  if (!v3)
  {
    goto LABEL_9;
  }

  v4 = a1 + 24;
  v5 = v2;
  do
  {
    v6 = *(v3 + 32);
    v7 = v6 >= a2;
    v8 = v6 < a2;
    if (v7)
    {
      v5 = v3;
    }

    v3 = *(v3 + 8 * v8);
  }

  while (v3);
  if (v5 != v2 && *(v5 + 32) <= a2)
  {
    sub_239490EE8(v4, &v12);
    v10 = 0;
    v9 = 0;
  }

  else
  {
LABEL_9:
    v9 = 0x9E00000000;
    v10 = 16;
  }

  return v9 | v10;
}

uint64_t sub_23948FF28(uint64_t a1, uint64_t a2)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v4[0] = 0;
  v5 = 1;
  v8 = 0;
  *__p = *a2;
  v7 = *(a2 + 16);
  *(a2 + 23) = 0;
  *a2 = 0;
  v2 = sub_23948FFA4(a1, v4);
  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

uint64_t sub_23948FFA4(uint64_t a1, char *a2)
{
  if (*a2 < 0)
  {
    v4 = 0xFC00000000;
    v5 = 47;
  }

  else
  {
    v3 = sub_23949107C(a1 + 48, a2);
    v3[5] = *a2;
    std::string::operator=(v3 + 2, (a2 + 8));
    v4 = 0;
    v5 = 0;
    *(v3 + 18) = *(a2 + 8);
    v6 = *(a2 + 40);
    v3[12] = *(a2 + 7);
    *(v3 + 5) = v6;
  }

  return v5 | v4;
}

uint64_t sub_239490048(uint64_t a1, unsigned int a2)
{
  __p = 0;
  v7 = 0;
  v9 = 0;
  v8 = 0;
  v4[0] = 0;
  v5 = 4;
  v10 = 0;
  v11 = a2;
  v12 = 0;
  v2 = sub_23948FFA4(a1, v4);
  if (SHIBYTE(v8) < 0)
  {
    operator delete(__p);
  }

  return v2;
}

uint64_t sub_2394900B8(uint64_t a1, uint64_t a2)
{
  memset(&__p, 0, sizeof(__p));
  v9 = 0;
  __val = 0;
  v12 = 0;
  v10 = 0;
  v3 = sub_2394901A8(a1, 0, v6);
  if (!v3)
  {
    if (v7 == 4)
    {
      std::to_string(&v5, __val);
      if (*(a2 + 23) < 0)
      {
        operator delete(*a2);
      }

      v3 = 0;
      *a2 = v5;
    }

    else if (v7 == 1)
    {
      std::string::operator=(a2, &__p);
      v3 = 0;
    }

    else
    {
      v3 = 0xC70000002FLL;
    }
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v3;
}

uint64_t sub_2394901A8(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a1 + 56);
  v3 = a1 + 56;
  v4 = v5;
  if (v5)
  {
    v7 = v3;
    do
    {
      v8 = *(v4 + 32);
      v9 = v8 >= a2;
      v10 = v8 < a2;
      if (v9)
      {
        v7 = v4;
      }

      v4 = *(v4 + 8 * v10);
    }

    while (v4);
    if (v7 == v3 || *(v7 + 32) > a2)
    {
      v11 = 0x10E00000000;
      v12 = 16;
    }

    else
    {
      *a3 = *(v7 + 40);
      std::string::operator=((a3 + 8), (v7 + 48));
      v12 = 0;
      v11 = 0;
      *(a3 + 32) = *(v7 + 72);
      v13 = *(v7 + 80);
      *(a3 + 56) = *(v7 + 96);
      *(a3 + 40) = v13;
    }
  }

  else
  {
    v11 = 0x10E00000000;
    v12 = 16;
  }

  return v11 | v12;
}

uint64_t sub_239490268(uint64_t a1)
{
  v1 = (a1 + 56);
  v2 = *(a1 + 56);
  if (v2)
  {
    v3 = a1 + 48;
    do
    {
      v4 = v2;
      v2 = *v2;
    }

    while (v2);
    if (v4 == v1 || *(v4 + 32))
    {
      v5 = 0xD000000000;
      v6 = 16;
    }

    else
    {
      sub_239490EE8(v3, byte_2395D6770);
      v6 = 0;
      v5 = 0;
    }
  }

  else
  {
    v5 = 0xD000000000;
    v6 = 16;
  }

  return v5 | v6;
}

unint64_t sub_2394902F0(char *a1)
{
  v2 = 0;
  while (1)
  {
    v3 = sub_2393F888C(a1, 4uLL);
    v4 = v3;
    if (v3)
    {
      v7 = v3 & 0xFFFFFFFF00000000;
      return v7 | v4;
    }

    v5 = *a1 % 0x5F5E0FEu + 1;
    *a1 = v5;
    if (sub_23948FB60(v5))
    {
      break;
    }

    if (v2++ >= 9)
    {
      v7 = 0xEF00000000;
      v4 = 172;
      return v7 | v4;
    }
  }

  v4 = 0;
  v7 = 0;
  return v7 | v4;
}

uint64_t sub_2394903B0(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v3 = a1 + 32;
  v4 = v5;
  if (v5)
  {
    v7 = v3;
    do
    {
      v8 = *(v4 + 32);
      v9 = v8 >= a2;
      v10 = v8 < a2;
      if (v9)
      {
        v7 = v4;
      }

      v4 = *(v4 + 8 * v10);
    }

    while (v4);
    if (v7 == v3 || *(v7 + 32) > a2)
    {
      v11 = 0x10500000000;
      v12 = 16;
    }

    else
    {
      *a3 = *(v7 + 40);
      std::string::operator=((a3 + 8), (v7 + 48));
      v12 = 0;
      v11 = 0;
      *(a3 + 32) = *(v7 + 72);
    }
  }

  else
  {
    v11 = 0x10500000000;
    v12 = 16;
  }

  return v11 | v12;
}

uint64_t sub_239490460(uint64_t a1, int a2)
{
  if ((a2 & 0x80u) == 0)
  {
    return 4 * (a2 == 0);
  }

  else
  {
    return 2;
  }
}

void sub_239490480(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = *(a1 + 48);
  v3 = (a1 + 56);
  if (v2 != (a1 + 56))
  {
    do
    {
      sub_239490504(a2, (v2 + 5));
      v5 = v2[1];
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
          v6 = v2[2];
          v7 = *v6 == v2;
          v2 = v6;
        }

        while (!v7);
      }

      v2 = v6;
    }

    while (v6 != v3);
  }
}

void sub_239490504(uint64_t *a1, uint64_t a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 6;
    if ((v7 + 1) >> 58)
    {
      sub_238EAEDBC();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 5;
    if (v8 >> 5 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFC0)
    {
      v10 = 0x3FFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    v16[4] = a1;
    if (v10)
    {
      sub_2394911CC(a1, v10);
    }

    v11 = v7 << 6;
    sub_239491160(a1, v11, a2);
    v6 = v11 + 64;
    v12 = a1[1];
    v13 = v11 + *a1 - v12;
    sub_239491214(a1, *a1, v12, v13);
    v14 = *a1;
    *a1 = v13;
    a1[1] = v11 + 64;
    v15 = a1[2];
    a1[2] = 0;
    v16[2] = v14;
    v16[3] = v15;
    v16[0] = v14;
    v16[1] = v14;
    sub_2394912B0(v16);
  }

  else
  {
    sub_239491160(a1, a1[1], a2);
    v6 = v5 + 64;
  }

  a1[1] = v6;
}

BOOL sub_239490610(uint64_t a1, unsigned __int8 *a2)
{
  v43 = 0uLL;
  v44 = 0;
  v41 = 0uLL;
  v42 = 0;
  if (!sub_23948FBC0(a1, a2))
  {
    goto LABEL_51;
  }

  sub_23948FDCC(a2, __p);
  sub_239491344(&v43);
  v43 = *__p;
  v44 = v35;
  __p[1] = 0;
  v35 = 0;
  __p[0] = 0;
  v45 = __p;
  sub_2392E32D4(&v45);
  v4 = *(&v43 + 1);
  v5 = v43;
  if (*(a1 + 40) != 0xCCCCCCCCCCCCCCCDLL * ((*(&v43 + 1) - v43) >> 3))
  {
    goto LABEL_51;
  }

  if (v43 != *(&v43 + 1))
  {
    while (1)
    {
      __p[1] = 0;
      v35 = 0;
      v37 = 0;
      v36 = 0;
      if (sub_2394903B0(a1, *v5, __p))
      {
        break;
      }

      v6 = HIBYTE(v36);
      v7 = SHIBYTE(v36);
      if (*(v5 + 1) != HIDWORD(__p[0]))
      {
        goto LABEL_49;
      }

      v8 = v5[31];
      if (v8 >= 0)
      {
        v9 = v5[31];
      }

      else
      {
        v9 = *(v5 + 2);
      }

      if (v36 < 0)
      {
        v6 = v35;
      }

      if (v9 != v6)
      {
        goto LABEL_49;
      }

      v12 = *(v5 + 1);
      v11 = v5 + 8;
      v10 = v12;
      v13 = v8 >= 0 ? v11 : v10;
      v14 = __p[1];
      v15 = v36 >= 0 ? &__p[1] : __p[1];
      if (memcmp(v13, v15, v9))
      {
        goto LABEL_49;
      }

      v16 = *(v11 + 6);
      v17 = v37;
      if (v7 < 0)
      {
        operator delete(v14);
      }

      if (v16 != v17)
      {
        goto LABEL_51;
      }

      v5 = v11 + 32;
      if (v5 == v4)
      {
        goto LABEL_23;
      }
    }

    LOBYTE(v7) = HIBYTE(v36);
LABEL_49:
    if ((v7 & 0x80) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_50;
  }

LABEL_23:
  sub_239490480(a2, __p);
  sub_239491384(&v41);
  v41 = *__p;
  v42 = v35;
  __p[1] = 0;
  v35 = 0;
  __p[0] = 0;
  v45 = __p;
  sub_23948DFAC(&v45);
  v18 = *(&v41 + 1);
  v19 = v41;
  if (*(a1 + 64) == (*(&v41 + 1) - v41) >> 6)
  {
    if (v41 == *(&v41 + 1))
    {
      v32 = 1;
      goto LABEL_52;
    }

    while (1)
    {
      __p[1] = 0;
      v35 = 0;
      v37 = 0;
      v36 = 0;
      v39 = 0;
      v40 = 0;
      v38 = 0;
      if (sub_2394901A8(a1, *v19, __p))
      {
        break;
      }

      v20 = HIBYTE(v36);
      v21 = SHIBYTE(v36);
      if (*(v19 + 1) != HIDWORD(__p[0]))
      {
        goto LABEL_55;
      }

      v22 = v19[31];
      if (v22 >= 0)
      {
        v23 = v19[31];
      }

      else
      {
        v23 = *(v19 + 2);
      }

      if (v36 < 0)
      {
        v20 = v35;
      }

      if (v23 != v20)
      {
        goto LABEL_55;
      }

      v26 = *(v19 + 1);
      v25 = v19 + 8;
      v24 = v26;
      v27 = v22 >= 0 ? v25 : v24;
      v28 = __p[1];
      v29 = v36 >= 0 ? &__p[1] : __p[1];
      if (memcmp(v27, v29, v23) || *(v25 + 6) != v37 || *(v25 + 4) != v38 || *(v25 + 5) != v39)
      {
        goto LABEL_55;
      }

      v30 = *(v25 + 6);
      v31 = v40;
      v32 = v30 == v40;
      if (v21 < 0)
      {
        operator delete(v28);
      }

      if (v30 == v31)
      {
        v19 = v25 + 56;
        if (v19 != v18)
        {
          continue;
        }
      }

      goto LABEL_52;
    }

    LOBYTE(v21) = HIBYTE(v36);
LABEL_55:
    if ((v21 & 0x80) != 0)
    {
LABEL_50:
      operator delete(__p[1]);
    }
  }

LABEL_51:
  v32 = 0;
LABEL_52:
  __p[0] = &v41;
  sub_23948DFAC(__p);
  __p[0] = &v43;
  sub_2392E32D4(__p);
  return v32;
}

unint64_t sub_239490924(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 23);
  if (v4 < 0)
  {
    v5 = *a1;
    v6 = *(a1 + 8);
  }

  else
  {
    v5 = a1;
    v6 = *(a1 + 23);
  }

  v7 = 3;
  if (v6 < 3)
  {
    v7 = v6;
  }

  if (!v6)
  {
    goto LABEL_21;
  }

  v8 = &v5[v7];
  v9 = v5;
  v10 = &v5[v7];
  do
  {
    if (*v9 == 77)
    {
      v11 = 1u;
      while (v11 != 3)
      {
        if (&v9[v11] == v8)
        {
          goto LABEL_17;
        }

        v12 = v9[v11];
        v13 = aMt[v11++];
        if (v12 != v13)
        {
          goto LABEL_9;
        }
      }

      v10 = v9;
    }

LABEL_9:
    ++v9;
  }

  while (v9 != v8);
LABEL_17:
  if (v10 == v8 || v10 != v5)
  {
LABEL_21:
    sub_23948F6F8(a2);
    v14 = a2[1];
    v15 = a2[2];
    if (v14 >= v15)
    {
      v17 = 0x8E38E38E38E38E39 * ((v14 - *a2) >> 3);
      v18 = v17 + 1;
      if (v17 + 1 > 0x38E38E38E38E38ELL)
      {
        sub_238EAEDBC();
      }

      v19 = 0x8E38E38E38E38E39 * ((v15 - *a2) >> 3);
      if (2 * v19 > v18)
      {
        v18 = 2 * v19;
      }

      if (v19 >= 0x1C71C71C71C71C7)
      {
        v20 = 0x38E38E38E38E38ELL;
      }

      else
      {
        v20 = v18;
      }

      v37 = a2;
      if (v20)
      {
        sub_23948F870(a2, v20);
      }

      v21 = 72 * v17;
      v22 = 72 * v17;
      *(v22 + 32) = 0u;
      *v21 = 0u;
      *(v21 + 16) = 0u;
      *(v21 + 24) = 72 * v17 + 32;
      *(v21 + 64) = 0;
      *(v22 + 56) = 0;
      *(v21 + 48) = 72 * v17 + 56;
      v16 = 72 * v17 + 72;
      v23 = a2[1];
      v24 = 72 * v17 + *a2 - v23;
      sub_23948F8CC(a2, *a2, v23, v21 + *a2 - v23);
      v25 = *a2;
      *a2 = v24;
      a2[1] = v16;
      v26 = a2[2];
      a2[2] = 0;
      __p.__r_.__value_.__r.__words[2] = v25;
      v36 = v26;
      __p.__r_.__value_.__r.__words[0] = v25;
      __p.__r_.__value_.__l.__size_ = v25;
      sub_23948F9F8(&__p);
    }

    else
    {
      *v14 = 0u;
      *(v14 + 16) = 0u;
      *(v14 + 32) = 0u;
      *(v14 + 24) = v14 + 32;
      *(v14 + 64) = 0;
      *(v14 + 56) = 0;
      *(v14 + 48) = v14 + 56;
      v16 = v14 + 72;
    }

    a2[1] = v16;
    if (*(a1 + 23) < 0)
    {
      sub_238DCEA9C(__dst, *a1, *(a1 + 8));
    }

    else
    {
      *__dst = *a1;
      v34 = *(a1 + 16);
    }

    sub_2392E31B4(&__p, __dst);
    v27 = sub_23948D204(&__p, v16 - 72);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v34) < 0)
    {
      operator delete(__dst[0]);
      if (!v27)
      {
        goto LABEL_41;
      }
    }

    else if (!v27)
    {
LABEL_41:
      if (!sub_23948FAEC(v16 - 72))
      {
        v28 = 0x16100000000;
        LODWORD(v27) = 47;
        return v27 | v28;
      }

LABEL_54:
      v28 = 0;
      LODWORD(v27) = 0;
      return v27 | v28;
    }

LABEL_48:
    v28 = v27 & 0xFFFFFFFF00000000;
    return v27 | v28;
  }

  if ((v4 & 0x80000000) != 0)
  {
    sub_238DCEA9C(&v32, *a1, *(a1 + 8));
  }

  else
  {
    v32 = *a1;
  }

  __p = v32;
  memset(&v32, 0, sizeof(v32));
  v27 = sub_23948F374(&__p, a2);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
    if (v27)
    {
      goto LABEL_48;
    }
  }

  else if (v27)
  {
    goto LABEL_48;
  }

  v30 = *a2;
  v29 = a2[1];
  if (v30 == v29)
  {
    goto LABEL_54;
  }

  LODWORD(v27) = 47;
  while ((sub_23948FA64(v30, 0) & 1) != 0)
  {
    v30 += 72;
    if (v30 == v29)
    {
      goto LABEL_54;
    }
  }

  v28 = 0x16900000000;
  return v27 | v28;
}

uint64_t sub_239490CA4(uint64_t *a1, uint64_t a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x666666666666666)
  {
    sub_238EAEDBC();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 3) >= 0x333333333333333)
  {
    v6 = 0x666666666666666;
  }

  else
  {
    v6 = v3;
  }

  v14[4] = a1;
  if (v6)
  {
    sub_239490E04(a1, v6);
  }

  v7 = 40 * v2;
  sub_239490DA8(a1, v7, a2);
  v8 = v7 + 40;
  v9 = a1[1];
  v10 = v7 + *a1 - v9;
  sub_239490E5C(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  a1[1] = v8;
  v12 = a1[2];
  a1[2] = 0;
  v14[2] = v11;
  v14[3] = v12;
  v14[0] = v11;
  v14[1] = v11;
  sub_23947EAA0(v14);
  return v8;
}

_BYTE *sub_239490DA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a2 = *a3;
  result = (a2 + 8);
  if (*(a3 + 31) < 0)
  {
    result = sub_238DCEA9C(result, *(a3 + 8), *(a3 + 16));
  }

  else
  {
    v6 = *(a3 + 8);
    *(a2 + 24) = *(a3 + 24);
    *result = v6;
  }

  *(a2 + 32) = *(a3 + 32);
  return result;
}

void sub_239490E04(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  sub_238EAEDBC();
}

void sub_239490E5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = *v6;
      v7 = *(v6 + 8);
      *(a4 + 24) = *(v6 + 24);
      *(a4 + 8) = v7;
      *(v6 + 16) = 0;
      *(v6 + 24) = 0;
      *(v6 + 8) = 0;
      *(a4 + 32) = *(v6 + 32);
      v6 += 40;
      a4 += 40;
    }

    while (v6 != a3);
    while (v5 != a3)
    {
      if (*(v5 + 31) < 0)
      {
        operator delete(*(v5 + 8));
      }

      v5 += 40;
    }
  }
}

uint64_t sub_239490EE8(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    return 0;
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
    return 0;
  }

  sub_239490F58(a1, v4);
  return 1;
}

uint64_t *sub_239490F58(uint64_t **a1, uint64_t a2)
{
  v3 = sub_2393C2020(a1, a2);
  if (*(a2 + 71) < 0)
  {
    operator delete(*(a2 + 48));
  }

  operator delete(a2);
  return v3;
}

uint64_t *sub_239490F9C(uint64_t a1, unsigned __int8 *a2)
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

uint64_t *sub_23949107C(uint64_t a1, unsigned __int8 *a2)
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

__n128 sub_239491160(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a2 = *a3;
  v5 = (a2 + 8);
  if (*(a3 + 31) < 0)
  {
    sub_238DCEA9C(v5, *(a3 + 8), *(a3 + 16));
  }

  else
  {
    v6 = *(a3 + 8);
    *(a2 + 24) = *(a3 + 24);
    *v5 = v6;
  }

  *(a2 + 32) = *(a3 + 32);
  result = *(a3 + 40);
  *(a2 + 56) = *(a3 + 56);
  *(a2 + 40) = result;
  return result;
}

void sub_2394911CC(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 58))
  {
    operator new();
  }

  sub_238EAEDBC();
}

void sub_239491214(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = *v6;
      v7 = *(v6 + 8);
      *(a4 + 24) = *(v6 + 24);
      *(a4 + 8) = v7;
      *(v6 + 16) = 0;
      *(v6 + 24) = 0;
      *(v6 + 8) = 0;
      *(a4 + 32) = *(v6 + 32);
      v8 = *(v6 + 40);
      *(a4 + 56) = *(v6 + 56);
      *(a4 + 40) = v8;
      v6 += 64;
      a4 += 64;
    }

    while (v6 != a3);
    while (v5 != a3)
    {
      if (*(v5 + 31) < 0)
      {
        operator delete(*(v5 + 8));
      }

      v5 += 64;
    }
  }
}

uint64_t sub_2394912B0(uint64_t a1)
{
  sub_2394912E8(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_2394912E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 64;
      *(a1 + 16) = v2 - 64;
      if (*(v2 - 33) < 0)
      {
        operator delete(*(v2 - 56));
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

void sub_239491344(uint64_t *a1)
{
  if (*a1)
  {
    sub_2392E3328(a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void sub_239491384(uint64_t *a1)
{
  if (*a1)
  {
    sub_23948E000(a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

double sub_2394913C4(uint64_t a1)
{
  *(a1 + 1) = 0;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  return result;
}

uint64_t sub_2394913DC(uint64_t a1)
{
  v3 = (a1 + 56);
  v2 = *(a1 + 56);
  if (v2)
  {
    (*(*v2 + 40))(v2, a1 + 8);
    (*(**(a1 + 56) + 40))(*(a1 + 56), a1 + 24);
  }

  *v3 = 0;
  v3[1] = 0;
  sub_2393F9144(a1 + 40, 16);
  sub_2393F9144(a1 + 24, 16);
  sub_2393F9144(a1 + 8, 16);
  return a1;
}

uint64_t sub_23949148C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6)
{
  if (*(a1 + 1))
  {
    return 0x4700000003;
  }

  v18[6] = v6;
  v18[7] = v7;
  v9 = a6;
  v12 = "SessionKeysg/gcc";
  if (a5 == 1)
  {
    v12 = "SessionResumptionKeysSessionKeysg/gcc";
  }

  v13 = 11;
  if (a5 == 1)
  {
    v13 = 21;
  }

  v18[0] = v12;
  v18[1] = v13;
  if (a6)
  {
    v14 = a1 + 24;
  }

  else
  {
    v14 = a1 + 8;
  }

  if (a6)
  {
    v15 = a1 + 8;
  }

  else
  {
    v15 = a1 + 24;
  }

  v16 = (*(*a2 + 64))(a2, a3, a4, v18, v14, v15, a1 + 40);
  if (v16)
  {
    v17 = v16 & 0xFFFFFFFF00000000;
  }

  else
  {
    LODWORD(v16) = 0;
    v17 = 0;
    *(a1 + 1) = 1;
    *a1 = v9;
    *(a1 + 56) = a2;
  }

  return v17 | v16;
}

uint64_t sub_23949158C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6)
{
  if (*(a1 + 1))
  {
    return 0x6000000003;
  }

  v18[6] = v6;
  v18[7] = v7;
  v9 = a6;
  v12 = "SessionKeysg/gcc";
  if (a5 == 1)
  {
    v12 = "SessionResumptionKeysSessionKeysg/gcc";
  }

  v13 = 11;
  if (a5 == 1)
  {
    v13 = 21;
  }

  v18[0] = v12;
  v18[1] = v13;
  if (a6)
  {
    v14 = a1 + 24;
  }

  else
  {
    v14 = a1 + 8;
  }

  if (a6)
  {
    v15 = a1 + 8;
  }

  else
  {
    v15 = a1 + 24;
  }

  v16 = (*(*a2 + 72))(a2, a3, a4, v18, v14, v15, a1 + 40);
  if (v16)
  {
    v17 = v16 & 0xFFFFFFFF00000000;
  }

  else
  {
    LODWORD(v16) = 0;
    v17 = 0;
    *(a1 + 1) = 1;
    *a1 = v9;
    *(a1 + 56) = a2;
  }

  return v17 | v16;
}

uint64_t sub_23949168C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7)
{
  v18 = *MEMORY[0x277D85DE8];
  if (*(a1 + 1))
  {
    v7 = 0x7B00000003;
  }

  else
  {
    v17 = 0;
    v7 = (*(*a3 + 32))(a3, a4, v16);
    if (!v7)
    {
      v15[0] = v16;
      v15[1] = v17;
      v7 = sub_23949148C(a1, a2, v15, a5, a6, a7);
    }

    sub_2393F9144(v16, 32);
  }

  v13 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t sub_2394917A8(uint64_t a1, char a2, unsigned int a3, unint64_t a4)
{
  v7 = a1;
  v8 = xmmword_2395D6780;
  if (!a1)
  {
    *&v8 = 0;
  }

  sub_2393D5D3C(&v7, a2);
  sub_2393D5D60(&v7, a3, 4);
  sub_2393D5D60(&v7, a4, 8);
  if (v8 >= *(&v8 + 1))
  {
    return 0;
  }

  else
  {
    return 0xA50000000BLL;
  }
}

uint64_t sub_239491834(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v5 = a1;
  v6 = xmmword_2395D6780;
  if (!a1)
  {
    *&v6 = 0;
  }

  sub_2393D5DD0(&v5, a2, 2);
  sub_2393D5CDC(&v5, (a3 + 5), 0xBuLL);
  if (v6 >= *(&v6 + 1))
  {
    return 0;
  }

  else
  {
    return 0xAF0000000BLL;
  }
}

uint64_t sub_2394918B4(_BYTE *a1, uint64_t a2, unsigned __int16 *a3)
{
  v6 = *a3;
  if (v6 < sub_2394BE648(a1))
  {
    return 0xB40000002FLL;
  }

  v10 = 0;
  v8 = sub_2394BEB90(a1, a2, *a3, &v10);
  if (v8)
  {
    v9 = v8 & 0xFFFFFFFF00000000;
  }

  else if (*a3 >= v10)
  {
    LODWORD(v8) = 0;
    v9 = 0;
    *a3 = v10;
  }

  else
  {
    v9 = 0xBB00000000;
    LODWORD(v8) = 47;
  }

  return v9 | v8;
}

unint64_t sub_239491970(uint64_t a1, char *a2, size_t a3, char *a4, uint64_t a5, uint64_t a6, _OWORD *a7)
{
  v31 = *MEMORY[0x277D85DE8];
  v7 = (*(a6 + 44) | *(a6 + 46)) == 0;
  v8 = (*(a6 + 44) | *(a6 + 46)) != 0;
  if (!a2)
  {
    v16 = 0xC900000000;
LABEL_10:
    v17 = 47;
    goto LABEL_11;
  }

  if (!a3)
  {
    v16 = 0xCA00000000;
    goto LABEL_10;
  }

  if (!a4)
  {
    v16 = 0xCB00000000;
    goto LABEL_10;
  }

  v28 = 128;
  v15 = sub_2394918B4(a6, v30, &v28);
  if (!v15)
  {
    v20 = 16 * v8;
    if (*(a1 + 64))
    {
      sub_238DB6950(v27, a2, a3);
      sub_238DB9BD8(v26, a4, a3);
      v25[0] = &v29;
      v25[1] = v20;
      v21 = *(a1 + 64);
      v24[0] = v30;
      v24[1] = v28;
      v23[0] = a5;
      v23[1] = 13;
      v15 = (*(*v21 + 24))(v21, v27, v24, v23, v25, v26);
    }

    else
    {
      if (*(a1 + 1) != 1)
      {
        v16 = 0xDD00000000;
        LODWORD(v15) = 59;
        goto LABEL_6;
      }

      v15 = sub_2393F7A34(a2, a3, v30, v28, a1 + 8, a5, 0xDuLL, a4, &v29, v20);
    }

    v16 = v15 & 0xFFFFFFFF00000000;
    v22 = v15 != 0 || v7;
    if (!v15)
    {
      v16 = 0;
      LODWORD(v15) = 0;
    }

    if (!v22)
    {
      v16 = 0;
      LODWORD(v15) = 0;
      *a7 = v29;
    }

    goto LABEL_6;
  }

  v16 = v15 & 0xFFFFFFFF00000000;
LABEL_6:
  v17 = v15;
LABEL_11:
  v18 = *MEMORY[0x277D85DE8];
  return v17 | v16;
}

unint64_t sub_239491B88(uint64_t a1, char *a2, size_t a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v27 = *MEMORY[0x277D85DE8];
  v7 = (*(a6 + 44) | *(a6 + 46)) != 0;
  v25 = 128;
  if (!a2)
  {
    v15 = 0xEF00000000;
LABEL_9:
    LODWORD(v14) = 47;
    goto LABEL_10;
  }

  if (!a3)
  {
    v15 = 0xF000000000;
    goto LABEL_9;
  }

  if (!a4)
  {
    v15 = 0xF100000000;
    goto LABEL_9;
  }

  v14 = sub_2394918B4(a6, v26, &v25);
  if (!v14)
  {
    v18 = 16 * v7;
    if (*(a1 + 64))
    {
      sub_238DB6950(v24, a2, a3);
      sub_238DB9BD8(v23, a4, a3);
      sub_238DB6950(v22, a7, v18);
      v19 = *(a1 + 64);
      v21[0] = v26;
      v21[1] = v25;
      v20[0] = a5;
      v20[1] = 13;
      v14 = (*(*v19 + 32))(v19, v24, v21, v20, v22, v23);
      if (v14)
      {
        goto LABEL_5;
      }
    }

    else
    {
      if (*(a1 + 1) != 1)
      {
        v15 = 0x10000000000;
        LODWORD(v14) = 59;
        goto LABEL_10;
      }

      v14 = sub_2393F7C50(a2, a3, v26, v25, a7, v18, a1 + 24, a5, 13, a4);
      if (v14)
      {
        goto LABEL_5;
      }
    }

    v15 = 0;
    LODWORD(v14) = 0;
    goto LABEL_10;
  }

LABEL_5:
  v15 = v14 & 0xFFFFFFFF00000000;
LABEL_10:
  v16 = *MEMORY[0x277D85DE8];
  return v14 | v15;
}

unint64_t sub_239491D7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v21 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    v13 = 0x10A00000000;
LABEL_9:
    v14 = 47;
    goto LABEL_10;
  }

  if (!a3)
  {
    v13 = 0x10B00000000;
    goto LABEL_9;
  }

  if (!a4)
  {
    v13 = 0x10C00000000;
    goto LABEL_9;
  }

  if (*(a1 + 64))
  {
    sub_238DB6950(v19, a2, a3);
    sub_238DB9BD8(v18, a4, a3);
    sub_239491834(v20, *(a5 + 44), a6);
    v11 = *(a1 + 64);
    v17[0] = v20;
    v17[1] = 13;
    v12 = (*(*v11 + 40))(v11, v19, v17, v18);
    v13 = v12 & 0xFFFFFFFF00000000;
    v14 = v12;
  }

  else
  {
    v13 = 0x10F00000000;
    v14 = 59;
  }

LABEL_10:
  v15 = *MEMORY[0x277D85DE8];
  return v14 | v13;
}

unint64_t sub_239491EC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v21 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    v13 = 0x11C00000000;
LABEL_9:
    v14 = 47;
    goto LABEL_10;
  }

  if (!a3)
  {
    v13 = 0x11D00000000;
    goto LABEL_9;
  }

  if (!a4)
  {
    v13 = 0x11E00000000;
    goto LABEL_9;
  }

  if (*(a1 + 64))
  {
    sub_238DB6950(v19, a2, a3);
    sub_238DB9BD8(v18, a4, a3);
    sub_239491834(v20, *(a5 + 44), a6);
    v11 = *(a1 + 64);
    v17[0] = v20;
    v17[1] = 13;
    v12 = (*(*v11 + 48))(v11, v19, v17, v18);
    v13 = v12 & 0xFFFFFFFF00000000;
    v14 = v12;
  }

  else
  {
    v13 = 0x12100000000;
    v14 = 59;
  }

LABEL_10:
  v15 = *MEMORY[0x277D85DE8];
  return v14 | v13;
}

uint64_t sub_23949200C(unsigned __int8 *a1, int a2, uint64_t a3, int a4, unsigned __int8 **a5)
{
  v5 = 0x2400000000;
  v6 = 47;
  if (a2 && a3)
  {
    v7 = 8832;
    v6 = 9;
    while (*a1)
    {
      if (*a1 == a2)
      {
        if (a4)
        {
          v8 = a1 + 496;
          v9 = 64;
          v6 = 9;
          while (1)
          {
            v5 = *(v8 - 1);
            if (!v5)
            {
              break;
            }

            if (v5 == a3)
            {
              goto LABEL_22;
            }

            v8 += 32;
            v5 = 0x6A00000000;
            v9 -= 32;
            if (!v9)
            {
              return v6 | v5;
            }
          }

          v6 = 0;
          *(v8 - 1) = a3;
          goto LABEL_24;
        }

        v8 = a1 + 16;
        v10 = 480;
        v6 = 9;
        while (1)
        {
          v5 = *(v8 - 1);
          if (!v5)
          {
            break;
          }

          if (v5 == a3)
          {
LABEL_22:
            v5 = 0;
            v6 = 0;
            *a5 = v8;
            return v6 | v5;
          }

          v8 += 32;
          v5 = 0x6A00000000;
          v10 -= 32;
          if (!v10)
          {
            return v6 | v5;
          }
        }

        v6 = 0;
        *(v8 - 1) = a3;
        goto LABEL_26;
      }

      a1 += 552;
      v7 -= 552;
      if (!v7)
      {
        v5 = 0x6F00000000;
        return v6 | v5;
      }
    }

    *a1 = a2;
    v5 = 0;
    v6 = 0;
    if (a4)
    {
      *(a1 + 61) = a3;
      v8 = a1 + 496;
LABEL_24:
      *a5 = v8;
      ++a1[1];
      return v6 | v5;
    }

    *(a1 + 1) = a3;
    v8 = a1 + 16;
LABEL_26:
    *a5 = v8;
    ++a1[2];
  }

  return v6 | v5;
}

uint64_t sub_23949214C(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = 0x7A00000000;
  v5 = 47;
  if (a2 && a3)
  {
    v7 = 0;
    v8 = a1 + 488;
    v9 = (a1 + 40);
    v5 = 216;
    while (1)
    {
      v10 = (a1 + 552 * v7);
      if (*v10 == a2)
      {
        break;
      }

      ++v7;
      v8 += 552;
      v9 += 69;
      if (v7 == 16)
      {
        goto LABEL_6;
      }
    }

    if (a4)
    {
      if (*(v10 + 61) == a3)
      {
        v11 = 0;
      }

      else
      {
        if (*(v10 + 65) != a3)
        {
          v4 = 0x7500000000;
          v5 = 216;
          return v4 | v5;
        }

        v11 = 1;
      }

      v14 = &v10[32 * v11 + 488];
      *v14 = 0;
      *(v14 + 8) = 0;
      if (!*(v10 + 61) && *(v10 + 65))
      {
        v15 = *(v10 + 536);
        *(v10 + 488) = *(v10 + 520);
        *(v10 + 504) = v15;
        *(v10 + 520) = 0u;
        *(v10 + 536) = 0u;
      }

      --v10[1];
    }

    else
    {
      v12 = v10 + 8;
      if (*(v10 + 1) != a3)
      {
        v13 = 0;
        v5 = 216;
        while (v13 != 14)
        {
          v16 = *v9;
          v9 += 4;
          ++v13;
          if (v16 == a3)
          {
            goto LABEL_21;
          }
        }

LABEL_6:
        v4 = 0x7500000000;
        return v4 | v5;
      }

      v13 = 0;
LABEL_21:
      v17 = 0;
      v18 = &v12[32 * v13];
      *v18 = 0;
      *(v18 + 2) = 0;
      do
      {
        v19 = &v12[32 * v17];
        if (!*v19)
        {
          v20 = v8;
          v21 = 15;
          while (--v21 > v17)
          {
            v22 = (v20 - 32);
            v23 = *(v20 - 32);
            v20 -= 32;
            if (v23)
            {
              v24 = v22[1];
              *v19 = *v22;
              *(v19 + 1) = v24;
              *v22 = 0uLL;
              v22[1] = 0uLL;
              break;
            }
          }
        }

        ++v17;
      }

      while (v17 != 15);
      --v10[2];
    }

    v25 = a1 + 552 * v7;
    if (!*(v25 + 2) && !*(v25 + 1))
    {
      sub_23949239C(a1, v7);
    }

    v5 = 0;
    v4 = 0;
  }

  return v4 | v5;
}

BOOL sub_239492318(uint64_t a1, void *a2, uint64_t a3, unsigned int a4)
{
  if (!a4)
  {
    return 0;
  }

  if (*a2 != a3)
  {
    v6 = 0;
    v5 = a2;
    while (a4 - 1 != v6)
    {
      v7 = v5[4];
      v5 += 4;
      ++v6;
      if (v7 == a3)
      {
        v4 = v6 < a4;
        goto LABEL_8;
      }
    }

    return 0;
  }

  v4 = 1;
  v5 = a2;
LABEL_8:
  *v5 = 0;
  *(v5 + 2) = 0;
  sub_239492514(a1, a2, a4);
  return v4;
}

void sub_23949239C(uint64_t a1, unsigned int a2)
{
  if (a2 <= 0xF)
  {
    v4 = a1 + 552 * a2;
    bzero(v4, 0x228uLL);
    v5 = (v4 + 16);
    v6 = 480;
    do
    {
      *(v5 - 1) = 0;
      *v5 = 0;
      v5 += 8;
      v6 -= 32;
    }

    while (v6);
    *(v4 + 488) = 0;
    *(v4 + 496) = 0;
    *(v4 + 520) = 0;
    *(v4 + 528) = 0;
    if (a2 != 15)
    {
      v7 = 15;
      while (1)
      {
        v8 = (a1 + 552 * v7);
        if (*v8)
        {
          break;
        }

        if (--v7 <= a2)
        {
          return;
        }
      }

      memcpy(v4, (a1 + 552 * v7), 0x228uLL);
      bzero(v8, 0x228uLL);
      v9 = (a1 + 552 * v7 + 16);
      v10 = 480;
      do
      {
        *(v9 - 1) = 0;
        *v9 = 0;
        v9 += 8;
        v10 -= 32;
      }

      while (v10);
      *(v8 + 61) = 0;
      *(v8 + 124) = 0;
      *(v8 + 65) = 0;
      *(v8 + 132) = 0;
    }
  }
}

uint64_t sub_239492490(uint64_t a1, int a2)
{
  if (a2)
  {
    v2 = 0;
    v3 = 216;
    for (i = a1; *i != a2; i += 552)
    {
      if (++v2 == 16)
      {
        v5 = 0xA600000000;
        return v3 | v5;
      }
    }

    sub_23949239C(a1, v2);
    v5 = 0;
    v3 = 0;
  }

  else
  {
    v5 = 0xAA00000000;
    v3 = 47;
  }

  return v3 | v5;
}

void sub_239492514(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a2 && a3)
  {
    for (i = 0; i != a3; ++i)
    {
      v4 = (a2 + 32 * i);
      if (!*v4)
      {
        v5 = a2 + 32 * a3;
        v6 = a3;
        while (--v6 > i)
        {
          v7 = (v5 - 32);
          v8 = *(v5 - 32);
          v5 -= 32;
          if (v8)
          {
            v9 = v7[1];
            *v4 = *v7;
            v4[1] = v9;
            *v7 = 0uLL;
            v7[1] = 0uLL;
            break;
          }
        }
      }
    }
  }
}

void *sub_239492578(void *a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  sub_2394925A4(a1, a2);
  return a1;
}

uint64_t sub_2394925A4(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    result = 0x10E0000002FLL;
    goto LABEL_13;
  }

  *(a1 + 8) = a2;
  v11 = 4;
  v10 = 0;
  v12 = *"g/gcc";
  v13 = unk_2395D67C0;
  v14 = 0;
  result = (*(*a2 + 16))(a2, &v12, &v10, &v11);
  if (result)
  {
    if (result != 160)
    {
      goto LABEL_13;
    }

    v4 = (sub_2393F56E0() & 0xFFFFFFF) + 1;
  }

  else
  {
    v4 = v10;
  }

  *(a1 + 4) = v4;
  v5 = *(a1 + 8);
  v12 = *"g/gdc";
  v13 = unk_2395D67E2;
  v14 = 0;
  result = (*(*v5 + 16))(v5, &v12, &v10, &v11);
  if (result)
  {
    if (result != 160)
    {
      goto LABEL_13;
    }

    v6 = (sub_2393F56E0() & 0xFFFFFFF) + 1;
  }

  else
  {
    v6 = v10;
  }

  *a1 = v6;
  v10 = *(a1 + 4) + 1000;
  v11 = 4;
  v7 = *(a1 + 8);
  v12 = *"g/gcc";
  v13 = unk_2395D67C0;
  v14 = 0;
  result = (*(*v7 + 24))(v7, &v12, &v10, 4);
  if (!result)
  {
    v10 = *a1 + 1000;
    v8 = *(a1 + 8);
    v12 = *"g/gdc";
    v13 = unk_2395D67E2;
    v14 = 0;
    result = (*(*v8 + 24))(v8, &v12, &v10, v11);
  }

LABEL_13:
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2394927A8(uint64_t a1, int a2)
{
  v2 = 4;
  if (!a2)
  {
    v2 = 0;
  }

  return *(a1 + v2);
}

unint64_t sub_2394927BC(uint64_t a1, int a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v12 = 0;
  v11 = 4;
  v13 = 0u;
  v14 = 0u;
  if (a2)
  {
    v3 = *(a1 + 4) + 1;
    *(a1 + 4) = v3;
    v4 = "g/gcc";
  }

  else
  {
    v3 = *a1 + 1;
    *a1 = v3;
    v4 = "g/gdc";
  }

  v5 = *(v4 + 1);
  v13 = *v4;
  v14 = v5;
  v15 = 0;
  v6 = *(a1 + 8);
  if (v6)
  {
    v7 = (*(*v6 + 16))(v6, &v13, &v12, &v11);
    if (!v7)
    {
      if (v12 != v3)
      {
        v8 = 0;
        LODWORD(v7) = 0;
        goto LABEL_11;
      }

      v12 = v3 + 1000;
      v7 = (*(**(a1 + 8) + 24))(*(a1 + 8), &v13, &v12, 4);
    }

    v8 = v7 & 0xFFFFFFFF00000000;
  }

  else
  {
    v8 = 0x15900000000;
    LODWORD(v7) = 160;
  }

LABEL_11:
  v9 = *MEMORY[0x277D85DE8];
  return v7 | v8;
}

unint64_t sub_239492914(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v18 = *MEMORY[0x277D85DE8];
  if (*a5)
  {
    if (**a5)
    {
      v5 = 0x2B00000000;
      LODWORD(v6) = 24;
    }

    else
    {
      v6 = sub_2394BEF90(a3, a5);
      if (v6 || (v12 = *(*a5 + 8), v11 = *(*a5 + 16), v6 = sub_239491970(a1, v12, v11, v12, a2, a4, &v17), v6) || (v16 = 0, v13 = sub_2393D980C(*a5), v6 = sub_2394BF0DC(&v17, a4, &v12[v11], v13, &v16), v6))
      {
        v5 = v6 & 0xFFFFFFFF00000000;
      }

      else
      {
        sub_2393D97A0(*a5, v11 + v16, 0);
        LODWORD(v6) = 0;
        v5 = 0;
      }
    }
  }

  else
  {
    v5 = 0x2A00000000;
    LODWORD(v6) = 47;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v5 | v6;
}

unint64_t sub_239492A50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = *a5;
  if (!*a5)
  {
    v9 = 0x4000000000;
    v10 = 47;
    goto LABEL_8;
  }

  v7 = *(v5 + 24);
  v8 = (*(a4 + 44) | *(a4 + 46)) != 0;
  if (v7 >= 16 * ((*(a4 + 44) | *(a4 + 46)) != 0))
  {
    v15 = *(v5 + 8);
    v16 = 16 * ((*(a4 + 44) | *(a4 + 46)) != 0);
    v21 = 0;
    v17 = v7 - v16;
    v18 = sub_2394BF070(&v22, a4, &v15[v7 - v16], 16 * v8, &v21);
    if (v18)
    {
      goto LABEL_6;
    }

    if (v21 != v16)
    {
      v9 = 0x5500000000;
      LODWORD(v18) = 172;
      goto LABEL_7;
    }

    sub_2393D97A0(*a5, v17, 0);
    v18 = sub_239491B88(a1, v15, v17, *(*a5 + 8), a2, a4, &v22);
    if (v18 || (v18 = sub_2394BEB24(a3, a5), v18))
    {
LABEL_6:
      v9 = v18 & 0xFFFFFFFF00000000;
    }

    else
    {
      LODWORD(v18) = 0;
      v9 = 0;
    }

LABEL_7:
    v10 = v18;
    goto LABEL_8;
  }

  v9 = 0x5000000000;
  v10 = 24;
LABEL_8:
  v19 = *MEMORY[0x277D85DE8];
  return v9 | v10;
}

uint64_t sub_239492BE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, __int16 a6, uint64_t *a7)
{
  v27 = *MEMORY[0x277D85DE8];
  if (*(a1 + 56) != 1)
  {
    sub_239533EA4();
  }

  v7 = *(a3 + 8);
  if (v7 != *(a2 + 8))
  {
    sub_239533F3C();
  }

  v9 = *(a1 + 57);
  if (v9 == 2)
  {
    if (!*(a3 + 8))
    {
      sub_23953406C();
    }

    if ((*a3 - 1) > 0xFFFFFFEFFFFFFFFELL || (*a2 - 1) >= 0xFFFFFFEFFFFFFFFFLL)
    {
      sub_239533FD4();
    }
  }

  else if (v9 == 1 && v7 != 0)
  {
    sub_239534104();
  }

  *(a1 + 72) = *a3;
  *(a1 + 64) = *a2;
  *(a1 + 80) = a4;
  *(a1 + 88) = a5;
  *(a1 + 94) = a6;
  v11 = *a7;
  *(a1 + 152) = *(a7 + 4);
  *(a1 + 144) = v11;
  LODWORD(v11) = *(a7 + 12);
  *(a1 + 156) = v11;
  if (v11 == 1)
  {
    *(a1 + 158) = *(a7 + 7);
  }

  v12 = *(a7 + 16);
  *(a1 + 160) = v12;
  if (v12 == 1)
  {
    *(a1 + 162) = *(a7 + 9);
  }

  v13 = *(a7 + 20);
  *(a1 + 164) = v13;
  if (v13 == 1)
  {
    *(a1 + 168) = *(a7 + 6);
  }

  *(a1 + 172) = *(a7 + 14);
  *(a1 + 24) = *(a3 + 8);
  sub_239492E1C(a1);
  (*(*a1 + 24))(a1);
  sub_239492ECC(a1, 2);
  if (*(a1 + 57) == 2)
  {
    sub_239493084(*(a1 + 48), a1);
  }

  v14 = sub_2393D9044(1u);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = *(a1 + 57);
    v16 = *(a1 + 92);
    *buf = 134218496;
    v22 = a1;
    v23 = 1024;
    v24 = v15;
    v25 = 1024;
    v26 = v16;
    _os_log_impl(&dword_238DAE000, v14, OS_LOG_TYPE_INFO, "SecureSession[%p]: Activated - Type:%d LSID:%d", buf, 0x18u);
  }

  result = sub_2393D5398(3u);
  if (result)
  {
    v19 = *(a1 + 57);
    v20 = *(a1 + 92);
    result = sub_2393D5320(1u, 3);
  }

  v18 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_239492E1C(uint64_t a1)
{
  *(a1 + 136) = (*(*off_27DF765E8 + 2))(off_27DF765E8);
  result = (*(*off_27DF765E8 + 2))(off_27DF765E8);
  *(a1 + 128) = result;
  if (*(a1 + 56) == 3)
  {

    return sub_239492ECC(a1, 2);
  }

  return result;
}

uint64_t sub_239492ECC(uint64_t result, int a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = *(result + 56);
  if (v2 != a2)
  {
    v3 = a2;
    v4 = result;
    v5 = sub_2393D9044(0xBu);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      if ((v2 - 1) > 3u)
      {
        v6 = "???";
      }

      else
      {
        v6 = off_278A83040[(v2 - 1)];
      }

      v7 = *(v4 + 92);
      if ((v3 - 1) > 3u)
      {
        v8 = "???";
      }

      else
      {
        v8 = off_278A83040[(v3 - 1)];
      }

      *buf = 134218754;
      v14 = v4;
      v15 = 1024;
      v16 = v7;
      v17 = 2080;
      v18 = v6;
      v19 = 2080;
      v20 = v8;
      _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_DEFAULT, "SecureSession[%p, LSID:%d]: State change '%s' --> '%s'", buf, 0x26u);
    }

    result = sub_2393D5398(2u);
    if (result)
    {
      if ((*(v4 + 56) - 1) <= 3u)
      {
        v9 = off_278A83040[(*(v4 + 56) - 1)];
      }

      if ((v3 - 1) <= 3u)
      {
        v10 = off_278A83040[(v3 - 1)];
      }

      v12 = *(v4 + 92);
      result = sub_2393D5320(0xBu, 2);
    }

    *(v4 + 56) = v3;
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}