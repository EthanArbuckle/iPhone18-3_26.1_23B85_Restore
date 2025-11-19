void sub_1001C3748(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, std::locale a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50, uint64_t a51, uint64_t a52, uint64_t a53, void *a54, uint64_t a55, int a56, __int16 a57, char a58, char a59)
{
  if (a50 < 0)
  {
    operator delete(a45);
  }

  if (a18 < 0)
  {
    operator delete(__p);
  }

  a45 = (v59 - 232);
  sub_1000087B4(&a45);
  a45 = (v59 - 208);
  sub_1000087B4(&a45);
  if (*(v59 - 153) < 0)
  {
    operator delete(*(v59 - 176));
  }

  if (*(v59 - 129) < 0)
  {
    operator delete(*(v59 - 152));
  }

  _Unwind_Resume(a1);
}

void sub_1001C3924(std::locale *this)
{
  locale = this[6].__locale_;
  if (locale)
  {
    sub_100004A34(locale);
  }

  std::locale::~locale(this);
}

void sub_1001C3964(uint64_t a1@<X1>, _OWORD *a2@<X8>)
{
  sub_10000501C(&v22, "0.");
  v4 = +[NSUUID UUID];
  v5 = [v4 UUIDString];
  sub_10000501C(&__p, [v5 UTF8String]);
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

  v8 = std::string::append(&v22, p_p, size);
  v23 = *v8;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

  v9 = SHIBYTE(v23.__r_.__value_.__r.__words[2]);
  if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v10 = HIBYTE(v23.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v10 = v23.__r_.__value_.__l.__size_;
  }

  memset(&v22, 0, sizeof(v22));
  v11 = &v22;
  sub_1000677C4(&v22, v10 + 9);
  if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v11 = v22.__r_.__value_.__r.__words[0];
  }

  if (v10)
  {
    if (v9 >= 0)
    {
      v12 = &v23;
    }

    else
    {
      v12 = v23.__r_.__value_.__r.__words[0];
    }

    memmove(v11, v12, v10);
  }

  strcpy(v11 + v10, "@ext.smil");
  memset(&__p, 0, sizeof(__p));
  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_100005F2C(&__p, v22.__r_.__value_.__l.__data_, v22.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v22;
  }

  v18 = 0;
  v19 = 0;
  v20 = 0;
  std::operator+<char>();
  a2[6] = 0u;
  a2[7] = 0u;
  a2[4] = 0u;
  a2[5] = 0u;
  a2[2] = 0u;
  a2[3] = 0u;
  *a2 = 0u;
  a2[1] = 0u;
  sub_10000501C(v16, "application/smil");
  sub_1001D28DC(a2, v16, &v22, &__p, 1);
  if (v17 < 0)
  {
    operator delete(v16[0]);
  }

  v13 = *(a1 + 23);
  if (v13 >= 0)
  {
    v14 = a1;
  }

  else
  {
    v14 = *a1;
  }

  if (v13 >= 0)
  {
    v15 = *(a1 + 23);
  }

  else
  {
    v15 = *(a1 + 8);
  }

  sub_1001C3C8C(a2, v14, v15);
  if (SHIBYTE(v20) < 0)
  {
    operator delete(v18);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if ((SHIBYTE(v22.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((v9 & 0x80000000) == 0)
    {
      return;
    }

LABEL_40:
    operator delete(v23.__r_.__value_.__l.__data_);
    return;
  }

  operator delete(v22.__r_.__value_.__l.__data_);
  if (v9 < 0)
  {
    goto LABEL_40;
  }
}

void sub_1001C3BC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  if (v32 < 0)
  {
    operator delete(*(v33 - 80));
  }

  _Unwind_Resume(exception_object);
}

double sub_1001C3C8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = 0uLL;
  v7 = 0;
  sub_1000DCF88(&v6, a2, a2 + a3, a3);
  v4 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v4;
    operator delete(v4);
  }

  result = *&v6;
  *a1 = v6;
  *(a1 + 16) = v7;
  return result;
}

uint64_t sub_1001C3CEC(uint64_t a1)
{
  v4 = (a1 + 104);
  sub_1001C6984(&v4);
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v2 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v2;
    operator delete(v2);
  }

  return a1;
}

uint64_t sub_1001C3D68(uint64_t a1, uint64_t a2)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 16));
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
  __p = v6;
  v10 = sub_100009510(&v5[1].__m_.__sig, &__p);
  if (!v10)
  {
    std::mutex::unlock(v5);
    return 0;
  }

  v12 = v10[3];
  v11 = v10[4];
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    std::mutex::unlock(v5);
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v11);
    if (!v12)
    {
      v13 = 0;
LABEL_26:
      sub_100004A34(v11);
      return v13;
    }

    goto LABEL_11;
  }

  std::mutex::unlock(v5);
  if (!v12)
  {
    return 0;
  }

LABEL_11:
  v25[0] = @"MMS";
  v25[1] = @"ShortCodeNumberLength";
  v23 = 0;
  v24 = 0;
  __p = 0;
  sub_10005B328(&__p, v25, &v26, 2uLL);
  v21 = 0;
  (*(*v12 + 104))(v25, v12, *(a1 + 32), 1, &__p, 0, 0);
  sub_10010B240(&v21, v25);
  sub_10000A1EC(v25);
  v15 = *(a2 + 23);
  if (v21)
  {
    v16 = *(a2 + 8);
    v25[0] = 0;
    ctu::cf::assign(v25, v21, v14);
    if (v15 >= 0)
    {
      v17 = v15;
    }

    else
    {
      v17 = v16;
    }

    v18 = v17 > v25[0];
  }

  else
  {
    if (v15 >= 0)
    {
      v19 = *(a2 + 23);
    }

    else
    {
      v19 = *(a2 + 8);
    }

    v18 = v19 > 6;
  }

  v13 = v18;
  sub_100029A48(&v21);
  if (__p)
  {
    v23 = __p;
    operator delete(__p);
  }

  if (v11)
  {
    goto LABEL_26;
  }

  return v13;
}

void sub_1001C3F7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, void *__p, uint64_t a12, uint64_t a13, char a14)
{
  sub_100029A48(&a10);
  if (__p)
  {
    a12 = __p;
    operator delete(__p);
  }

  if (v14)
  {
    sub_100004A34(v14);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1001C3FE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = *(a2 + 23);
  v7 = *a2;
  v8 = *(a2 + 8);
  if (v6 >= 0)
  {
    v9 = a2;
  }

  else
  {
    v9 = *a2;
  }

  if (v6 >= 0)
  {
    v10 = *(a2 + 23);
  }

  else
  {
    v10 = *(a2 + 8);
  }

  if (v10 >= 1)
  {
    v11 = &v9[v10];
    v12 = v9;
    do
    {
      result = memchr(v12, 64, v10);
      if (!result)
      {
        break;
      }

      if (*result == 64)
      {
        if (result == v11 || result - v9 == -1)
        {
          break;
        }

        if ((v6 & 0x80000000) == 0)
        {
          goto LABEL_19;
        }

        v14 = a3;
        v15 = v7;
        v16 = v8;
        goto LABEL_33;
      }

      v12 = (result + 1);
      v10 = v11 - v12;
    }

    while (v11 - v12 >= 1);
  }

  result = sub_1001C3D68(a1, a2);
  if (result)
  {
    if (*(a2 + 23) < 0)
    {
      v15 = *a2;
      v16 = *(a2 + 8);
      v14 = a3;
LABEL_33:

      return sub_100005F2C(v14, v15, v16);
    }

    else
    {
LABEL_19:
      *a3 = *a2;
      *(a3 + 2) = *(a2 + 16);
    }
  }

  else
  {
    if (*(a2 + 23) >= 0)
    {
      v17 = *(a2 + 23);
    }

    else
    {
      v17 = *(a2 + 8);
    }

    *(a3 + 1) = 0;
    *(a3 + 2) = 0;
    *a3 = 0;
    result = sub_1000677C4(a3, v17 + 10);
    if (a3[23] < 0)
    {
      a3 = *a3;
    }

    if (v17)
    {
      if (*(a2 + 23) >= 0)
      {
        v18 = a2;
      }

      else
      {
        v18 = *a2;
      }

      result = memmove(a3, v18, v17);
    }

    strcpy(&a3[v17], "/TYPE=PLMN");
  }

  return result;
}

uint64_t sub_1001C4180(uint64_t a1)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 16));
  v3 = ServiceMap;
  if (v4 < 0)
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
  __p = v4;
  v8 = sub_100009510(&v3[1].__m_.__sig, &__p);
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
        goto LABEL_7;
      }

      goto LABEL_11;
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
LABEL_7:
    v12 = 1;
    if (v11)
    {
      return v12 & 1;
    }

    goto LABEL_14;
  }

LABEL_11:
  v13 = *(a1 + 32);
  v20 = 0;
  v21 = @"ASCIIFileNameRequired";
  v17 = 0;
  v18 = 0;
  __p = 0;
  sub_10005B328(&__p, &v21, &v22, 1uLL);
  (*(*v10 + 104))(&v19, v10, v13, 1, &__p, kCFBooleanTrue, 0);
  sub_10002FE1C(&v20, &v19);
  sub_10000A1EC(&v19);
  if (__p)
  {
    v17 = __p;
    operator delete(__p);
  }

  LOBYTE(__p) = 1;
  ctu::cf::assign(&__p, v20, v14);
  v12 = __p;
  sub_100045C8C(&v20);
  if ((v11 & 1) == 0)
  {
LABEL_14:
    sub_100004A34(v9);
  }

  return v12 & 1;
}

void sub_1001C4358(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13, int a14, const void *a15)
{
  sub_100045C8C(&a15);
  if ((v16 & 1) == 0)
  {
    sub_100004A34(v15);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1001C43BC(uint64_t a1, void *a2)
{
  v4 = (*(**(a1 + 8) + 16))(*(a1 + 8), *(a1 + 32));
  v5 = v4;
  v7 = *a2;
  v6 = a2[1];
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v7[5] == v7[4])
  {
    v12 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
    {
      sub_101764CF0(v12);
    }

    v13 = 2;
  }

  else
  {
    if (v7[2] != v7[1])
    {
      memset(&v17, 0, sizeof(v17));
      v16[0] = v7;
      v16[1] = v6;
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      sub_1001C2AB0(v16, &v17);
      if (v6)
      {
        sub_100004A34(v6);
      }

      v8 = *v5;
      if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
      {
        v9 = &v17;
        if ((v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v9 = v17.__r_.__value_.__r.__words[0];
        }

        *buf = 136315138;
        *&buf[4] = v9;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Proposed smil:\n%s", buf, 0xCu);
      }

      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      *buf = 0u;
      v22 = 0u;
      sub_1001C3964(&v17, buf);
      v10 = sub_1001C2860(a1);
      v11 = *v5;
      if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
      {
        *v18 = 67109120;
        *&v18[4] = v10;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I Mime encoding hint: %u", v18, 8u);
      }

      v20 = 0;
      *v18 = 0u;
      v19 = 0u;
      sub_101135C24(v18);
      operator new();
    }

    v14 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
    {
      sub_101764CAC(v14);
    }

    v13 = 1;
  }

  if (v6)
  {
    sub_100004A34(v6);
  }

  return v13;
}

void sub_1001C509C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50, uint64_t a51, uint64_t a52, uint64_t a53, void *a54, uint64_t a55, uint64_t a56, uint64_t a57, void *__p, uint64_t a59, int a60, __int16 a61, char a62, char a63)
{
  if (a63 < 0)
  {
    operator delete(__p);
  }

  if (a50 < 0)
  {
    operator delete(a45);
  }

  a45 = &a28;
  sub_1001C6CB8(&a45);
  if (a36 < 0)
  {
    operator delete(a31);
  }

  if (a71 < 0)
  {
    operator delete(a66);
  }

  sub_1001C3CEC(v72 - 240);
  if (a44 < 0)
  {
    operator delete(a39);
  }

  if (a16)
  {
    sub_100004A34(a16);
  }

  _Unwind_Resume(a1);
}

std::string *sub_1001C5270(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v4 = a2;
  v7 = a1[1];
  v6 = a1[2];
  if (v7 >= v6)
  {
    v11 = *a1;
    v12 = ((v7 - *a1) >> 7) + 1;
    if (v12 >> 57)
    {
      sub_1000CE3D4();
    }

    v13 = a2 - v11;
    v14 = v6 - v11;
    v15 = v14 >> 6;
    if (v14 >> 6 <= v12)
    {
      v15 = ((v7 - *a1) >> 7) + 1;
    }

    if (v14 >= 0x7FFFFFFFFFFFFF80)
    {
      v16 = 0x1FFFFFFFFFFFFFFLL;
    }

    else
    {
      v16 = v15;
    }

    v17 = v13 >> 7;
    v19[4] = a1;
    if (v16)
    {
      sub_1001C6ACC(a1, v16);
    }

    v19[0] = 0;
    v19[1] = v17 << 7;
    v19[2] = v17 << 7;
    v19[3] = 0;
    sub_1001C6E08(v19, a3);
    v4 = sub_1001C6F60(a1, v19, v4);
    sub_1001C7714(v19);
  }

  else if (a2 == v7)
  {
    sub_1001C787C(a1[1], a3);
    a1[1] = v7 + 128;
  }

  else
  {
    sub_1001C6D60(a1, a2, a1[1], a2 + 128);
    v8 = a1[1] <= a3 || v4 > a3;
    v9 = 128;
    if (v8)
    {
      v9 = 0;
    }

    v10 = a3 + v9;
    if (v4 != (a3 + v9))
    {
      sub_1001122C4(v4, *v10, *(v10 + 8), *(v10 + 8) - *v10);
    }

    std::string::operator=(v4 + 1, (v10 + 24));
    std::string::operator=(v4 + 2, (v10 + 48));
    std::string::operator=(v4 + 3, (v10 + 72));
    v4[4].__r_.__value_.__s.__data_[0] = *(v10 + 96);
    if (v4 != v10)
    {
      sub_1001C7250(&v4[4].__r_.__value_.__l.__size_, *(v10 + 104), *(v10 + 112), 0xAAAAAAAAAAAAAAABLL * ((*(v10 + 112) - *(v10 + 104)) >> 4));
    }
  }

  return v4;
}

void sub_1001C5428(uint64_t a1, const char *a2, uint64_t *a3, void *a4)
{
  v15 = 0;
  v16 = 0;
  v17 = 0;
  if (a2[23] < 0)
  {
    a2 = *a2;
  }

  sub_1013D8520(*a3, a2, &v15);
  v6 = v15;
  if (v16 != v15)
  {
    v7 = 0;
    v8 = 1;
    do
    {
      v13[0] = 0;
      v13[1] = 0;
      v14 = 0;
      if ((*(**&v6[8 * v7] + 72))(*&v6[8 * v7], v13))
      {
        __p = 0uLL;
        v12 = 0;
        sub_1001C566C(v13, &__p);
        if (sub_10083AF94(&__p, a1 + 40))
        {
          v9 = *(*(**(a1 + 8) + 16))(*(a1 + 8), *(a1 + 32));
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            if (v12 >= 0)
            {
              p_p = &__p;
            }

            else
            {
              p_p = __p;
            }

            *buf = 136315138;
            v19 = p_p;
            _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I Erased: %s", buf, 0xCu);
          }
        }

        else
        {
          sub_100005308(a4, &__p);
        }

        if (SHIBYTE(v12) < 0)
        {
          operator delete(__p);
        }
      }

      if (SHIBYTE(v14) < 0)
      {
        operator delete(v13[0]);
      }

      v7 = v8;
      v6 = v15;
      ++v8;
    }

    while (v7 < (v16 - v15) >> 3);
  }

  if (v6)
  {
    v16 = v6;
    operator delete(v6);
  }
}

void sub_1001C5618(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *__p, uint64_t a25)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001C566C(char *a1@<X0>, _BYTE *a2@<X8>)
{
  if (a1[23] >= 0)
  {
    v3 = a1;
  }

  else
  {
    v3 = *a1;
  }

  v4 = strchr(v3, 47);
  if (strchr(v3, 64))
  {
    v5 = 1;
  }

  else
  {
    v5 = v4 == 0;
  }

  if (v5)
  {
    v6 = [NSString stringWithUTF8String:v3];
  }

  else
  {
    v6 = [[NSString alloc] initWithBytes:v3 length:v4 - v3 encoding:4];
  }

  v7 = v6;
  sub_10000501C(a2, [v7 UTF8String]);
}

void sub_1001C5750(uint64_t *a1@<X1>, _BYTE *a2@<X8>)
{
  if (*(a1 + 23) >= 0)
  {
    v3 = a1;
  }

  else
  {
    v3 = *a1;
  }

  v13 = [NSString stringWithUTF8String:v3];
  v4 = [v13 length];
  v5 = malloc_type_malloc(2 * v4 + 2, 0x1000040BDFB0063uLL);
  if (v4)
  {
    v6 = 0;
    v7 = 0;
    v8 = 1;
    do
    {
      v9 = [v13 characterAtIndex:v6];
      v10 = v9;
      if (sub_1001C589C(v9))
      {
        v5[v7++] = v10;
      }

      v6 = v8;
    }

    while (v4 > v8++);
    v4 = v7;
  }

  v5[v4] = 0;
  v12 = [[NSString alloc] initWithCharacters:v5 length:v4];
  free(v5);
  sub_10000501C(a2, [v12 UTF8String]);
}

BOOL sub_1001C589C(unsigned int a1)
{
  if (a1 <= 0x7F)
  {
    v2 = _DefaultRuneLocale.__runetype[a1] & 0x500;
  }

  else
  {
    v2 = __maskrune(a1, 0x500uLL);
  }

  return a1 == 35 || (a1 & 0xFFFE) == 42 || v2 != 0;
}

void sub_1001C5904(uint64_t *a1@<X1>, uint64_t a2@<X8>)
{
  __s = 0uLL;
  v15 = 0;
  v3 = sub_1013D87F0(*a1, "From");
  sub_10000501C(&__s, v3);
  v4 = SHIBYTE(v15);
  if ((SHIBYTE(v15) & 0x8000000000000000) != 0)
  {
    v4 = *(&__s + 1);
    if (*(&__s + 1))
    {
      p_s = __s;
      goto LABEL_6;
    }

LABEL_8:
    *a2 = __s;
    *(a2 + 16) = v15;
    return;
  }

  if (!HIBYTE(v15))
  {
    goto LABEL_8;
  }

  p_s = &__s;
LABEL_6:
  v6 = memchr(p_s, 64, v4);
  if (v6 && v6 - p_s != -1)
  {
    goto LABEL_8;
  }

  __p[0] = 0;
  __p[1] = 0;
  v13 = 0;
  sub_1001C566C(&__s, __p);
  if (v13 >= 0)
  {
    v7 = __p;
  }

  else
  {
    v7 = __p[0];
  }

  v8 = [NSString stringWithUTF8String:v7];
  v9 = [v8 length];
  if (!v9)
  {

LABEL_19:
    sub_1001C5750(__p, a2);
    goto LABEL_20;
  }

  v10 = 0;
  for (i = 0; i != v9; v10 = i >= v9)
  {
    if (!sub_1001C589C([v8 characterAtIndex:i]))
    {
      break;
    }

    ++i;
  }

  if (v10)
  {
    goto LABEL_19;
  }

  *a2 = __s;
  *(a2 + 16) = v15;
  v15 = 0;
  __s = 0uLL;
LABEL_20:
  if (SHIBYTE(v13) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v15) < 0)
  {
    operator delete(__s);
  }
}

void sub_1001C5A80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(a1);
}

void sub_1001C5AC4(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v72 = 0;
  v71 = 0;
  (*(**a2 + 312))(&v71);
  v5 = (*(**a2 + 128))();
  v48 = a2;
  v45 = v5;
  v49 = (*(**(a1 + 8) + 16))(*(a1 + 8), v5);
  v6 = 0;
  memset(v70, 0, sizeof(v70));
  v68 = 0u;
  v69 = 0u;
  v67 = 0u;
  memset(v66, 0, sizeof(v66));
  while (sub_1013D819C(v71) > v6)
  {
    v7 = sub_1013D81AC(v71, v6);
    memset(&v84, 0, sizeof(v84));
    if ((*(*v7 + 72))(v7, &v84))
    {
      v8 = (*(*v7 + 64))(v7);
      sub_10000501C(v64, v8);
      if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
      {
        sub_100005F2C(&__p, v84.__r_.__value_.__l.__data_, v84.__r_.__value_.__l.__size_);
      }

      else
      {
        __p = v84;
      }

      sub_1007E15D8(v66, v64, &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (v65 < 0)
      {
        operator delete(v64[0]);
      }
    }

    else
    {
      v9 = *v49;
      if (os_log_type_enabled(*v49, OS_LOG_TYPE_DEFAULT))
      {
        v10 = (*(*v7 + 64))(v7);
        LODWORD(buf[0].__r_.__value_.__l.__data_) = 136315138;
        *(buf[0].__r_.__value_.__r.__words + 4) = v10;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I Unable to convert value of header %s to a string", buf, 0xCu);
      }
    }

    if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v84.__r_.__value_.__l.__data_);
    }

    ++v6;
  }

  v47 = sub_100121BC8(v71);
  v11 = sub_1013D8420(v71, "Date");
  if (v11)
  {
    DWORD2(v68) = v11[5];
  }

  v12 = sub_1013D87F0(v71, "Subject");
  if (v12)
  {
    sub_100016890(&v67, v12);
  }

  sub_10000501C(&v84, "To");
  v13 = v72;
  v62[0] = v71;
  v62[1] = v72;
  if (v72)
  {
    atomic_fetch_add_explicit((v72 + 8), 1uLL, memory_order_relaxed);
  }

  sub_1001C5428(a1, &v84, v62, v66);
  if (v13)
  {
    sub_100004A34(v13);
  }

  if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v84.__r_.__value_.__l.__data_);
  }

  sub_10000501C(&v84, "Cc");
  v14 = v72;
  v61[0] = v71;
  v61[1] = v72;
  if (v72)
  {
    atomic_fetch_add_explicit((v72 + 8), 1uLL, memory_order_relaxed);
  }

  sub_1001C5428(a1, &v84, v61, v66);
  if (v14)
  {
    sub_100004A34(v14);
  }

  if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v84.__r_.__value_.__l.__data_);
  }

  v15 = v72;
  v60[0] = v71;
  v60[1] = v72;
  if (v72)
  {
    atomic_fetch_add_explicit((v72 + 8), 1uLL, memory_order_relaxed);
  }

  sub_1001C5904(v60, &v84);
  if (SHIBYTE(v70[3]) < 0)
  {
    operator delete(v70[1]);
  }

  *&v70[1] = v84;
  *(&v84.__r_.__value_.__s + 23) = 0;
  v84.__r_.__value_.__s.__data_[0] = 0;
  if (v15)
  {
    sub_100004A34(v15);
  }

  v16 = v48;
  if (!v47)
  {
LABEL_113:
    *a3 = 0;
    a3[1] = 0;
    v44 = (*(**v16 + 48))(*v16);
    LODWORD(v84.__r_.__value_.__l.__data_) = v45;
    LODWORD(buf[0].__r_.__value_.__l.__data_) = v44;
    sub_1001C7A50();
  }

  v17 = 0;
  while (1)
  {
    v18 = sub_100121BD8(v71, v17);
    memset(v80, 0, sizeof(v80));
    v78 = 0u;
    v79 = 0u;
    v77 = 0u;
    memset(buf, 0, sizeof(buf));
    v19 = sub_1013D87F0(v18, "Content-Location");
    if (v19)
    {
      sub_100016890(&v77, v19);
    }

    v20 = sub_1013D87F0(v18, "Content-ID");
    if (v20)
    {
      sub_100016890((&v78 + 8), v20);
    }

    v21 = sub_1013D85EC(v18);
    v22 = v21;
    if (v21)
    {
      v50 = v17;
      v23 = (*(*v21 + 16))(v21);
      v24 = (*(*v22 + 24))(v22);
      v81 = v23;
      v82 = v24;
      v83 = xmmword_1017DA640;
      memset(v87, 0, sizeof(v87));
      v84.__r_.__value_.__r.__words[0] = v87;
      *&v84.__r_.__value_.__r.__words[1] = xmmword_1017DA650;
      v85 = sub_1001D29F0;
      v86 = 0;
      __src = v87;
      v73.__locale_ = 2;
      v74 = &v81;
      v75 = 396;
      sub_1001D2AA0(&v84, "{}/{}", 5, &v73);
      v25 = v84.__r_.__value_.__r.__words[2];
      if (v84.__r_.__value_.__r.__words[2] >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_1000A2378();
      }

      if (v84.__r_.__value_.__r.__words[2] >= 0x17)
      {
        operator new();
      }

      *(&__dst.__r_.__value_.__s + 23) = v84.__r_.__value_.__s.__data_[16];
      if (v84.__r_.__value_.__r.__words[2])
      {
        memmove(&__dst, __src, v84.__r_.__value_.__r.__words[2]);
      }

      __dst.__r_.__value_.__s.__data_[v25] = 0;
      if (__src != v87)
      {
        operator delete(__src);
      }

      if (SHIBYTE(buf[1].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf[1].__r_.__value_.__l.__data_);
      }

      buf[1] = __dst;
      v27 = sub_1013D819C((v22 + 1));
      v28 = v27;
      if (v27)
      {
        LODWORD(v29) = 0;
        v51 = v27;
        do
        {
          v30 = sub_1013D81AC((v22 + 1), v29);
          memset(&v84, 0, sizeof(v84));
          if ((*(*v30 + 72))(v30, &v84) && (v81 = 0uLL, v82 = 0, v31 = (*(*v30 + 64))(v30), sub_10000501C(&v81, v31), sub_1001C66EC(buf, &v81, &v84), SHIBYTE(v82) < 0))
          {
            operator delete(v81);
            if (v19)
            {
              goto LABEL_93;
            }
          }

          else if (v19)
          {
            goto LABEL_93;
          }

          v32 = v22;
          v33 = v18;
          sub_10000501C(&v81, "name");
          std::locale::locale(&__dst);
          std::locale::locale(&v73, &__dst);
          if ((v84.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v34 = &v84;
          }

          else
          {
            v34 = v84.__r_.__value_.__r.__words[0];
          }

          if ((v84.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = SHIBYTE(v84.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = v84.__r_.__value_.__l.__size_;
          }

          if (v82 >= 0)
          {
            v36 = &v81;
          }

          else
          {
            v36 = v81;
          }

          if (v82 >= 0)
          {
            v37 = SHIBYTE(v82);
          }

          else
          {
            v37 = *(&v81 + 1);
          }

          v38 = size == 0;
          if (size && v37)
          {
            v39 = v37 - 1;
            v40 = size - 1;
            v41 = v36;
            while (sub_1001DAECC(&v73, v34, v41))
            {
              ++v41;
              v38 = v40 == 0;
              if (v40)
              {
                v34 = (v34 + 1);
                v42 = v39--;
                --v40;
                if (v42)
                {
                  continue;
                }
              }

              goto LABEL_82;
            }

            v43 = 0;
          }

          else
          {
            v41 = v36;
LABEL_82:
            v43 = v41 == &v36[v37] && v38;
          }

          std::locale::~locale(&v73);
          std::locale::~locale(&__dst);
          v18 = v33;
          v22 = v32;
          v28 = v51;
          if ((SHIBYTE(v82) & 0x80000000) == 0)
          {
            if (!v43)
            {
              goto LABEL_93;
            }

LABEL_92:
            std::string::operator=(&buf[1], &v84);
            goto LABEL_93;
          }

          operator delete(v81);
          if (v43)
          {
            goto LABEL_92;
          }

LABEL_93:
          if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v84.__r_.__value_.__l.__data_);
          }

          v29 = (v29 + 1);
        }

        while (v28 > v29);
      }

      sub_1001C3C8C(buf, *(v18 + 72), *(v18 + 96));
      sub_1001C787C(v52, buf);
      sub_1007E1578(v66, v52);
      v84.__r_.__value_.__r.__words[0] = &v58;
      sub_1001C6984(&v84);
      v16 = v48;
      v17 = v50;
      if (v57 < 0)
      {
        operator delete(v56);
      }

      if (v55 < 0)
      {
        operator delete(v54);
      }

      if (v53 < 0)
      {
        operator delete(v52[3]);
      }

      if (v52[0])
      {
        v52[1] = v52[0];
        operator delete(v52[0]);
      }
    }

    else
    {
      v26 = *v49;
      v16 = v48;
      if (os_log_type_enabled(*v49, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v84.__r_.__value_.__l.__data_) = 0;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#I Invalid content-type", &v84, 2u);
      }
    }

    v84.__r_.__value_.__r.__words[0] = &v80[8];
    sub_1001C6984(&v84);
    if (SHIBYTE(v79) < 0)
    {
      operator delete(*(&v78 + 1));
    }

    if (SBYTE7(v78) < 0)
    {
      operator delete(v77);
    }

    if (SHIBYTE(buf[1].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf[1].__r_.__value_.__l.__data_);
    }

    if (buf[0].__r_.__value_.__r.__words[0])
    {
      buf[0].__r_.__value_.__l.__size_ = buf[0].__r_.__value_.__r.__words[0];
      operator delete(buf[0].__r_.__value_.__l.__data_);
    }

    if (++v17 == v47)
    {
      goto LABEL_113;
    }
  }
}

void sub_1001C657C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, std::locale a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, uint64_t a55, void *a56, uint64_t a57, uint64_t a58, char a59)
{
  if (v59)
  {
    sub_100004A34(v59);
  }

  sub_1001C7F18(&a59);
  if (STACK[0x220])
  {
    sub_100004A34(STACK[0x220]);
  }

  _Unwind_Resume(a1);
}

void sub_1001C66EC(void *a1, __int128 *a2, __int128 *a3)
{
  sub_1001C77E4(__dst, a2, a3);
  v4 = a1[14];
  v5 = a1[15];
  if (v4 >= v5)
  {
    v8 = a1[13];
    v9 = 0xAAAAAAAAAAAAAAABLL * ((v4 - v8) >> 4);
    v10 = v9 + 1;
    if (v9 + 1 > 0x555555555555555)
    {
      sub_1000CE3D4();
    }

    v11 = 0xAAAAAAAAAAAAAAABLL * ((v5 - v8) >> 4);
    if (2 * v11 > v10)
    {
      v10 = 2 * v11;
    }

    if (v11 >= 0x2AAAAAAAAAAAAAALL)
    {
      v12 = 0x555555555555555;
    }

    else
    {
      v12 = v10;
    }

    v27[4] = a1 + 13;
    if (v12)
    {
      sub_1001904B4((a1 + 13), v12);
    }

    v13 = 48 * v9;
    v14 = *__dst;
    *(v13 + 16) = v24;
    *v13 = v14;
    __dst[1] = 0;
    v24 = 0;
    __dst[0] = 0;
    v15 = *__p;
    *(v13 + 40) = v26;
    *(v13 + 24) = v15;
    __p[1] = 0;
    v26 = 0;
    __p[0] = 0;
    v16 = 48 * v9 + 48;
    v17 = a1[13];
    v18 = a1[14] - v17;
    v19 = 48 * v9 - v18;
    memcpy((v13 - v18), v17, v18);
    v20 = a1[13];
    a1[13] = v19;
    a1[14] = v16;
    v21 = a1[15];
    a1[15] = 0;
    v27[2] = v20;
    v27[3] = v21;
    v27[0] = v20;
    v27[1] = v20;
    sub_1001C7794(v27);
    v22 = SHIBYTE(v26);
    a1[14] = v16;
    if (v22 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    v6 = *__dst;
    *(v4 + 16) = v24;
    *v4 = v6;
    __dst[0] = 0;
    __dst[1] = 0;
    v7 = v26;
    *(v4 + 24) = *__p;
    *(v4 + 40) = v7;
    v24 = 0;
    __p[0] = 0;
    __p[1] = 0;
    v26 = 0;
    a1[14] = v4 + 48;
  }

  if (SHIBYTE(v24) < 0)
  {
    operator delete(__dst[0]);
  }
}

void sub_1001C6874(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000D6F38(va);
  _Unwind_Resume(a1);
}

_BYTE *sub_1001C6888(_BYTE *a1, char *a2, char *a3)
{
  v5 = sub_10000501C(a1, a2);
  sub_10000501C(v5 + 24, a3);
  return a1;
}

void sub_1001C68C0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_1001C68DC(_BYTE *a1, char *a2, char *a3)
{
  v5 = sub_10000501C(a1, a2);
  sub_10000501C(v5 + 24, a3);
  return a1;
}

void sub_1001C6914(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_1001C6930(_BYTE *a1, char *a2, char *a3)
{
  v5 = sub_10000501C(a1, a2);
  sub_10000501C(v5 + 24, a3);
  return a1;
}

void sub_1001C6968(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001C6984(void ***a1)
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
        v4 -= 48;
        sub_1000DD108(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_1001C6A08(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1001C6A90(result, a4);
  }

  return result;
}

void sub_1001C6A70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_1001C6CB8(&a9);
  _Unwind_Resume(a1);
}

void sub_1001C6A90(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 57))
  {
    sub_1001C6ACC(a1, a2);
  }

  sub_1000CE3D4();
}

void sub_1001C6ACC(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 57))
  {
    operator new();
  }

  sub_100013D10();
}

uint64_t sub_1001C6B14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
      sub_1001C787C(v4, v6);
      v6 += 128;
      v4 = v11 + 128;
      v11 += 128;
    }

    while (v6 != a3);
  }

  LOBYTE(v9) = 1;
  sub_1001C6BB4(v8);
  return v4;
}

uint64_t sub_1001C6BB4(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_1001C6BEC(a1);
  }

  return a1;
}

void sub_1001C6BEC(uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *a1;
    do
    {
      v3 -= 128;
      sub_1001C6C40(v5, v3);
    }

    while (v3 != v4);
  }
}

void sub_1001C6C40(uint64_t a1, uint64_t a2)
{
  v4 = (a2 + 104);
  sub_1001C6984(&v4);
  if (*(a2 + 95) < 0)
  {
    operator delete(*(a2 + 72));
  }

  if (*(a2 + 71) < 0)
  {
    operator delete(*(a2 + 48));
  }

  if (*(a2 + 47) < 0)
  {
    operator delete(*(a2 + 24));
  }

  v3 = *a2;
  if (*a2)
  {
    *(a2 + 8) = v3;
    operator delete(v3);
  }
}

void sub_1001C6CB8(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_1001C6D0C(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_1001C6D0C(uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; sub_1001C6C40(a1, i))
  {
    i -= 128;
  }

  *(a1 + 8) = a2;
}

uint64_t sub_1001C6D60(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 8);
  v7 = a2 + v6 - a4;
  v8 = v6;
  if (v7 < a3)
  {
    v10 = a2 + v6 - a4;
    v8 = *(a1 + 8);
    do
    {
      sub_1001C701C(a1, v8, v10);
      v10 += 128;
      v8 += 128;
    }

    while (v10 < a3);
  }

  *(a1 + 8) = v8;
  return sub_1001C70B0(&v12, a2, v7, v6);
}

uint64_t sub_1001C6E08(unint64_t *a1, uint64_t a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v8 = 1;
      }

      else
      {
        v8 = (v4 - *a1) >> 6;
      }

      v9 = a1[4];
      v11[4] = a1[4];
      sub_1001C6ACC(v9, v8);
    }

    v6 = (((v5 - *a1) >> 7) + 1 + ((((v5 - *a1) >> 7) + 1) >> 63)) >> 1;
    sub_1001C7548(v11, v5, v4, v5 - (v6 << 7));
    v4 = v7;
    a1[1] -= v6 << 7;
    a1[2] = v7;
  }

  result = sub_1001C787C(v4, a2);
  a1[2] += 128;
  return result;
}

void sub_1001C6F48(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1001C7714(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1001C6F60(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = a2[1];
  sub_1001C7648(a1, a3, a1[1], a2[2]);
  v7 = *a1;
  v8 = a2[1];
  a2[2] += a1[1] - a3;
  a1[1] = a3;
  v9 = v8 + v7 - a3;
  sub_1001C7648(a1, v7, a3, v9);
  a2[1] = v9;
  v10 = *a1;
  a1[1] = *a1;
  *a1 = a2[1];
  a2[1] = v10;
  v11 = a1[1];
  a1[1] = a2[2];
  a2[2] = v11;
  v12 = a1[2];
  a1[2] = a2[3];
  a2[3] = v12;
  *a2 = a2[1];
  return v6;
}

__n128 sub_1001C701C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = *a3;
  *(a2 + 16) = *(a3 + 16);
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v3 = *(a3 + 24);
  *(a2 + 40) = *(a3 + 40);
  *(a2 + 24) = v3;
  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  *(a3 + 24) = 0;
  v4 = *(a3 + 48);
  *(a2 + 64) = *(a3 + 64);
  *(a2 + 48) = v4;
  *(a3 + 56) = 0;
  *(a3 + 64) = 0;
  *(a3 + 48) = 0;
  v5 = *(a3 + 72);
  *(a2 + 88) = *(a3 + 88);
  *(a2 + 72) = v5;
  *(a3 + 72) = 0;
  *(a3 + 80) = 0;
  *(a3 + 88) = 0;
  *(a2 + 96) = *(a3 + 96);
  *(a2 + 112) = 0;
  *(a2 + 120) = 0;
  *(a2 + 104) = 0;
  result = *(a3 + 104);
  *(a2 + 104) = result;
  *(a2 + 120) = *(a3 + 120);
  *(a3 + 104) = 0;
  *(a3 + 112) = 0;
  *(a3 + 120) = 0;
  return result;
}

uint64_t sub_1001C70B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 != a2)
  {
    v7 = 0;
    do
    {
      v8 = a3 + v7;
      v9 = a4 + v7;
      sub_100015184(a4 + v7 - 128, (a3 + v7 - 128));
      v10 = (a4 + v7 - 104);
      if (*(a4 + v7 - 81) < 0)
      {
        operator delete(*v10);
      }

      v11 = *(v8 - 104);
      *(v9 - 88) = *(v8 - 88);
      *v10 = v11;
      *(v8 - 81) = 0;
      *(v8 - 104) = 0;
      v12 = (v9 - 80);
      if (*(v9 - 57) < 0)
      {
        operator delete(*v12);
      }

      v13 = (v8 - 80);
      v14 = a3 + v7;
      v15 = *v13;
      *(v9 - 64) = *(v13 + 2);
      *v12 = v15;
      *(a3 + v7 - 57) = 0;
      *v13 = 0;
      v16 = a4 + v7;
      v17 = (a4 + v7 - 56);
      if (*(a4 + v7 - 33) < 0)
      {
        operator delete(*v17);
      }

      v18 = *(v14 - 56);
      *(a4 + v7 - 40) = *(v14 - 40);
      *v17 = v18;
      *(v14 - 33) = 0;
      *(v14 - 56) = 0;
      *(v16 - 32) = *(v14 - 32);
      sub_1001C71E8((v16 - 24));
      *(v16 - 24) = *(v14 - 24);
      *(v16 - 8) = *(v14 - 8);
      *(v14 - 24) = 0;
      *(v14 - 16) = 0;
      *(v14 - 8) = 0;
      v7 -= 128;
    }

    while (a3 + v7 != a2);
  }

  return a3;
}

void sub_1001C71E8(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v1)
    {
      do
      {
        v3 -= 48;
        sub_1000DD108(v3);
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

void sub_1001C7250(uint64_t a1, std::string *__str, std::string *a3, unint64_t a4)
{
  v8 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 4) < a4)
  {
    sub_1001C71E8(a1);
    if (a4 <= 0x555555555555555)
    {
      v9 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 4);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
      {
        v10 = 0x555555555555555;
      }

      else
      {
        v10 = v9;
      }

      sub_100190468(a1, v10);
    }

    sub_1000CE3D4();
  }

  v11 = *(a1 + 8) - v8;
  if (0xAAAAAAAAAAAAAAABLL * (v11 >> 4) >= a4)
  {
    sub_1001C74D8(&v16, __str, a3, v8);
    v13 = v12;
    v14 = *(a1 + 8);
    if (v14 != v12)
    {
      do
      {
        v14 -= 48;
        sub_1000DD108(v14);
      }

      while (v14 != v13);
    }

    *(a1 + 8) = v13;
  }

  else
  {
    sub_1001C74D8(&v15, __str, (__str + v11), v8);
    *(a1 + 8) = sub_1001C73BC(a1, (__str + v11), a3, *(a1 + 8));
  }
}

char *sub_1001C73BC(int a1, __int128 *a2, __int128 *a3, char *__dst)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      sub_1001C7444(__dst, v6);
      v6 += 3;
      __dst += 48;
      v7 -= 48;
    }

    while (v6 != a3);
  }

  return __dst;
}

void sub_1001C741C(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 - 48;
    do
    {
      sub_1000DD108(v4);
      v4 -= 48;
      v2 += 48;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

char *sub_1001C7444(char *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v4;
  }

  if (*(a2 + 47) < 0)
  {
    sub_100005F2C(__dst + 24, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v5 = *(a2 + 24);
    *(__dst + 5) = *(a2 + 5);
    *(__dst + 24) = v5;
  }

  return __dst;
}

void sub_1001C74BC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_1001C74D8(int a1, std::string *__str, std::string *a3, std::string *this)
{
  v5 = __str;
  if (__str == a3)
  {
    return __str;
  }

  v6 = a3;
  do
  {
    std::string::operator=(this, v5);
    std::string::operator=(this + 1, v5 + 1);
    this += 2;
    v5 += 2;
  }

  while (v5 != v6);
  return v6;
}

uint64_t sub_1001C7548(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      sub_100015184(a4, v5);
      if (*(a4 + 47) < 0)
      {
        operator delete(*(a4 + 24));
      }

      v7 = *(v5 + 24);
      *(a4 + 40) = *(v5 + 40);
      *(a4 + 24) = v7;
      *(v5 + 47) = 0;
      *(v5 + 24) = 0;
      if (*(a4 + 71) < 0)
      {
        operator delete(*(a4 + 48));
      }

      v8 = *(v5 + 48);
      *(a4 + 64) = *(v5 + 64);
      *(a4 + 48) = v8;
      *(v5 + 71) = 0;
      *(v5 + 48) = 0;
      if (*(a4 + 95) < 0)
      {
        operator delete(*(a4 + 72));
      }

      v9 = *(v5 + 72);
      *(a4 + 88) = *(v5 + 88);
      *(a4 + 72) = v9;
      *(v5 + 95) = 0;
      *(v5 + 72) = 0;
      *(a4 + 96) = *(v5 + 96);
      sub_1001C71E8((a4 + 104));
      *(a4 + 104) = *(v5 + 104);
      *(a4 + 120) = *(v5 + 120);
      *(v5 + 104) = 0;
      *(v5 + 112) = 0;
      *(v5 + 120) = 0;
      v5 += 128;
      a4 += 128;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

uint64_t sub_1001C7648(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 == a3)
  {
    LOBYTE(v10) = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      sub_1001C701C(a1, a4, v7);
      v7 += 128;
      a4 = v12 + 128;
      v12 += 128;
    }

    while (v7 != a3);
    LOBYTE(v10) = 1;
    while (v5 != a3)
    {
      sub_1001C6C40(a1, v5);
      v5 += 128;
    }
  }

  return sub_1001C6BB4(v9);
}

uint64_t sub_1001C7714(uint64_t a1)
{
  sub_1001C774C(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1001C774C(uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 128;
    sub_1001C6C40(v5, v4 - 128);
  }
}

uint64_t sub_1001C7794(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 48;
    sub_1000DD108(i - 48);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

char *sub_1001C77E4(char *__dst, __int128 *a2, __int128 *a3)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v5;
  }

  if (*(a3 + 23) < 0)
  {
    sub_100005F2C(__dst + 24, *a3, *(a3 + 1));
  }

  else
  {
    v6 = *a3;
    *(__dst + 5) = *(a3 + 2);
    *(__dst + 24) = v6;
  }

  return __dst;
}

void sub_1001C7860(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1001C787C(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  sub_100034C50(a1, *a2, *(a2 + 8), *(a2 + 8) - *a2);
  if (*(a2 + 47) < 0)
  {
    sub_100005F2C((a1 + 24), *(a2 + 24), *(a2 + 32));
  }

  else
  {
    v4 = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 24) = v4;
  }

  if (*(a2 + 71) < 0)
  {
    sub_100005F2C((a1 + 48), *(a2 + 48), *(a2 + 56));
  }

  else
  {
    v5 = *(a2 + 48);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 48) = v5;
  }

  if (*(a2 + 95) < 0)
  {
    sub_100005F2C((a1 + 72), *(a2 + 72), *(a2 + 80));
  }

  else
  {
    v6 = *(a2 + 72);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 72) = v6;
  }

  v7 = *(a2 + 96);
  *(a1 + 104) = 0;
  *(a1 + 96) = v7;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  sub_1001C79C8(a1 + 104, *(a2 + 104), *(a2 + 112), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 112) - *(a2 + 104)) >> 4));
  return a1;
}

void sub_1001C7964(_Unwind_Exception *exception_object)
{
  if (*(v1 + 71) < 0)
  {
    operator delete(*(v1 + 48));
  }

  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1001C79C8(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_100190468(result, a4);
  }

  return result;
}

void sub_1001C7A30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_1001C6984(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_1001C7AD4(uint64_t a1, _DWORD *a2, int *a3, uint64_t a4)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = off_101E2F6E8;
  v5 = *a3;
  *(a1 + 24) = *a2;
  sub_1001C7C38(a1 + 32, a4);
  *(a1 + 160) = v5;
  return a1;
}

void sub_1001C7B68(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E2F6E8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1001C7BBC(uint64_t a1)
{
  if (*(a1 + 159) < 0)
  {
    operator delete(*(a1 + 136));
  }

  v2 = (a1 + 112);
  sub_1001C6984(&v2);
  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  v2 = (a1 + 56);
  sub_1001C6CB8(&v2);
  v2 = (a1 + 32);
  sub_1000087B4(&v2);
}

uint64_t sub_1001C7C38(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  sub_10004EFD0(a1, *a2, *(a2 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *a2) >> 3));
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  sub_1001C6A08(a1 + 24, *(a2 + 24), *(a2 + 32), (*(a2 + 32) - *(a2 + 24)) >> 7);
  if (*(a2 + 71) < 0)
  {
    sub_100005F2C((a1 + 48), *(a2 + 48), *(a2 + 56));
  }

  else
  {
    v4 = *(a2 + 48);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 48) = v4;
  }

  v5 = *(a2 + 72);
  *(a1 + 80) = 0;
  *(a1 + 72) = v5;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  sub_1001C7D94(a1 + 80, *(a2 + 80), *(a2 + 88), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 88) - *(a2 + 80)) >> 4));
  if (*(a2 + 127) < 0)
  {
    sub_100005F2C((a1 + 104), *(a2 + 104), *(a2 + 112));
  }

  else
  {
    v6 = *(a2 + 104);
    *(a1 + 120) = *(a2 + 120);
    *(a1 + 104) = v6;
  }

  return a1;
}

void sub_1001C7D3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  sub_1001C6984(&a10);
  if (*(v10 + 71) < 0)
  {
    operator delete(*(v10 + 48));
  }

  sub_1001C6CB8(&a10);
  a10 = v10;
  sub_1000087B4(&a10);
  _Unwind_Resume(a1);
}

uint64_t sub_1001C7D94(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_100190468(result, a4);
  }

  return result;
}

void sub_1001C7DFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_1001C6984(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_1001C7E1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v7 = 0;
    do
    {
      v8 = a4 + v7;
      v9 = (a2 + v7);
      if (*(a2 + v7 + 23) < 0)
      {
        sub_100005F2C(v8, *v9, *(v9 + 1));
      }

      else
      {
        v10 = *v9;
        *(v8 + 16) = *(v9 + 2);
        *v8 = v10;
      }

      v11 = a4 + v7;
      v12 = a2 + v7;
      if (*(a2 + v7 + 47) < 0)
      {
        sub_100005F2C((v11 + 24), *(v12 + 24), *(v12 + 32));
      }

      else
      {
        v13 = *(v12 + 24);
        *(v11 + 40) = *(v12 + 40);
        *(v11 + 24) = v13;
      }

      v7 += 48;
    }

    while (a2 + v7 != a3);
    a4 += v7;
  }

  return a4;
}

void sub_1001C7ECC(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 + v2 - 48;
    v5 = -v2;
    do
    {
      sub_1000DD108(v4);
      v4 -= 48;
      v5 += 48;
    }

    while (v5);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1001C7F18(uint64_t a1)
{
  if (*(a1 + 127) < 0)
  {
    operator delete(*(a1 + 104));
  }

  v3 = (a1 + 80);
  sub_1001C6984(&v3);
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  v3 = (a1 + 24);
  sub_1001C6CB8(&v3);
  v3 = a1;
  sub_1000087B4(&v3);
  return a1;
}

void sub_1001C7FB0(std::locale *a1, const char *a2, int a3)
{
  v5 = sub_1001C8048(a1);
  LODWORD(v5[3].__locale_) = a3;
  *(&v5[3].__locale_ + 4) = 0u;
  *(&v5[5].__locale_ + 4) = 0u;
  HIDWORD(v5[7].__locale_) = 0;
  strlen(a2);
  sub_1001C80A8();
}

void sub_1001C8028(_Unwind_Exception *a1)
{
  locale = v1[6].__locale_;
  if (locale)
  {
    sub_100004A34(locale);
  }

  std::locale::~locale(v1);
  _Unwind_Resume(a1);
}

std::locale *sub_1001C8048(std::locale *a1)
{
  v2 = std::locale::locale(a1);
  a1[1].__locale_ = std::locale::use_facet(v2, &std::ctype<char>::id);
  a1[2].__locale_ = std::locale::use_facet(a1, &std::collate<char>::id);
  return a1;
}

void sub_1001C829C()
{
  exception = __cxa_allocate_exception(0x18uLL);
  std::regex_error::regex_error(exception, __re_err_parse);
}

unsigned __int8 *sub_1001C833C(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v6 = a2;
  do
  {
    v7 = v6;
    v6 = sub_1001C8D94(a1, v6, a3);
  }

  while (v6 != v7);
  if (v7 == a2)
  {
    operator new();
  }

  if (v7 != a3 && *v6 == 124)
  {
    v8 = v6 + 1;
    v9 = v6 + 1;
    do
    {
      v10 = v9;
      v9 = sub_1001C8D94(a1, v9, a3);
    }

    while (v9 != v10);
    if (v10 == v8)
    {
      operator new();
    }

    sub_1001C8C94();
  }

  return v6;
}

unsigned __int8 *sub_1001C84AC(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 != a3)
  {
    if (*a2 == 94)
    {
      sub_1001C95B4();
    }

    if (a2 != a3)
    {
      do
      {
        v6 = v3;
        v7 = sub_1001CFAF4(a1, v3, a3);
        v3 = v7;
      }

      while (v7 != v6);
      if (v6 != a3 && v7 + 1 == a3 && *v7 == 36)
      {
        sub_1001C9638();
      }
    }

    if (v3 != a3)
    {
      sub_1001CFA9C();
    }
  }

  return v3;
}

unsigned __int8 *sub_1001C8560(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  result = sub_1001D01AC(a1, a2, a3);
  if (result == a2)
  {
LABEL_7:
    sub_1001CFA9C();
  }

  if (result != a3 && *result == 124)
  {
    if (sub_1001D01AC(a1, result + 1, a3) != result + 1)
    {
      sub_1001C8C94();
    }

    goto LABEL_7;
  }

  return result;
}

unsigned __int8 *sub_1001C8600(uint64_t a1, unsigned __int8 *__s, unsigned __int8 *a3)
{
  v6 = memchr(__s, 10, a3 - __s);
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = a3;
  }

  if (v7 == __s)
  {
    operator new();
  }

  sub_1001C84AC(a1, __s, v7);
  if (v7 != a3)
  {
    ++v7;
  }

  if (v7 != a3)
  {
    v8 = memchr(v7, 10, a3 - v7);
    if (v8)
    {
      v9 = v8;
    }

    else
    {
      v9 = a3;
    }

    if (v9 != v7)
    {
      sub_1001C84AC(a1, v7, v9);
      sub_1001C8C94();
    }

    operator new();
  }

  return v7;
}

unsigned __int8 *sub_1001C8770(uint64_t a1, unsigned __int8 *__s, unsigned __int8 *a3)
{
  v6 = memchr(__s, 10, a3 - __s);
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = a3;
  }

  if (v7 == __s)
  {
    operator new();
  }

  sub_1001C8560(a1, __s, v7);
  if (v7 != a3)
  {
    ++v7;
  }

  if (v7 != a3)
  {
    v8 = memchr(v7, 10, a3 - v7);
    if (v8)
    {
      v9 = v8;
    }

    else
    {
      v9 = a3;
    }

    if (v9 != v7)
    {
      sub_1001C8560(a1, v7, v9);
      sub_1001C8C94();
    }

    operator new();
  }

  return v7;
}

void sub_1001C88E0()
{
  exception = __cxa_allocate_exception(0x18uLL);
  std::regex_error::regex_error(exception, __re_err_grammar);
}

void sub_1001C89CC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_101764D34(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001C89E8(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1001C8A20(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_1001C8A50(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_1001C8A90(void *a1)
{
  *a1 = off_101E2F8C0;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_1001C8AFC(void *a1)
{
  *a1 = off_101E2F8C0;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  operator delete();
}

uint64_t sub_1001C8B88(uint64_t result, uint64_t a2)
{
  *a2 = -994;
  *(a2 + 80) = *(result + 8);
  return result;
}

void *sub_1001C8B9C(void *a1)
{
  *a1 = off_101E2F8C0;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_1001C8C08(void *a1)
{
  *a1 = off_101E2F8C0;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  operator delete();
}

unsigned __int8 *sub_1001C8D94(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  result = sub_1001C8E3C(a1, a2, a3);
  if (result == a2)
  {
    v7 = sub_1001C9064(a1, a2, a3);
    result = a2;
    if (v7 != a2)
    {

      return sub_1001C92AC(a1, v7, a3);
    }
  }

  return result;
}

unsigned __int8 *sub_1001C8E3C(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 != a3)
  {
    v6 = *a2;
    if (v6 > 0x5B)
    {
      if (v6 == 92)
      {
        if (a2 + 1 != a3)
        {
          v13 = a2[1];
          if (v13 == 66 || v13 == 98)
          {
            sub_1001C96BC();
          }
        }
      }

      else if (v6 == 94)
      {
        sub_1001C95B4();
      }
    }

    else
    {
      if (v6 == 36)
      {
        sub_1001C9638();
      }

      v8 = v6 == 40;
      v7 = a2 + 1;
      v8 = !v8 || v7 == a3;
      if (!v8)
      {
        v8 = *v7 == 63;
        v9 = a2 + 2;
        if (v8 && v9 != a3)
        {
          v11 = *v9;
          if (v11 == 33)
          {
            v14 = 0u;
            memset(v15, 0, sizeof(v15));
            sub_1001C8048(&v14);
            memset(v15 + 8, 0, 40);
            DWORD2(v15[0]) = *(a1 + 24);
            sub_1001C80A8(&v14, a2 + 3, a3);
            sub_1001C9750();
          }

          if (v11 == 61)
          {
            v14 = 0u;
            memset(v15, 0, sizeof(v15));
            sub_1001C8048(&v14);
            memset(v15 + 8, 0, 40);
            DWORD2(v15[0]) = *(a1 + 24);
            sub_1001C80A8(&v14, a2 + 3, a3);
            sub_1001C9750();
          }
        }
      }
    }
  }

  return a2;
}

unsigned __int8 *sub_1001C9064(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 == a3)
  {
    return v3;
  }

  v6 = *a2;
  if (v6 <= 0x3E)
  {
    if (v6 != 40)
    {
      if (v6 == 46)
      {
        operator new();
      }

      if (v6 - 42 >= 2)
      {
        goto LABEL_28;
      }

LABEL_34:
      sub_1001CB360();
    }

    if (a2 + 1 != a3)
    {
      if (a2 + 2 != a3 && a2[1] == 63 && a2[2] == 58)
      {
        v8 = (a1 + 36);
        ++*(a1 + 36);
        v9 = sub_1001C833C(a1, a2 + 3, a3);
        if (v9 == a3)
        {
          goto LABEL_35;
        }

        v10 = v9;
        if (*v9 != 41)
        {
          goto LABEL_35;
        }

        goto LABEL_25;
      }

      sub_1001CB258(a1);
      v8 = (a1 + 36);
      ++*(a1 + 36);
      v11 = sub_1001C833C(a1, v3 + 1, a3);
      if (v11 != a3)
      {
        v10 = v11;
        if (*v11 == 41)
        {
          sub_1001CB2E0(a1);
LABEL_25:
          --*v8;
          return v10 + 1;
        }
      }
    }

LABEL_35:
    sub_1001C97F0();
  }

  if (*a2 <= 0x5Bu)
  {
    if (v6 == 91)
    {

      return sub_1001CB13C(a1, a2, a3);
    }

    if (v6 == 63)
    {
      goto LABEL_34;
    }

LABEL_28:

    return sub_1001CB3B8(a1, a2, a3);
  }

  if (v6 != 92)
  {
    if (v6 == 123)
    {
      goto LABEL_34;
    }

    goto LABEL_28;
  }

  return sub_1001CB094(a1, a2, a3);
}

unsigned __int8 *sub_1001C92AC(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 == a3)
  {
    return a2;
  }

  v5 = *a2;
  if (v5 <= 0x3E)
  {
    if (v5 == 42 || v5 == 43)
    {
LABEL_18:
      sub_1001CF4A0();
    }

    return a2;
  }

  if (v5 == 63)
  {
    goto LABEL_18;
  }

  if (v5 == 123)
  {
    v13 = 0;
    v6 = a2 + 1;
    v7 = sub_1001CF630(a1, a2 + 1, a3, &v13);
    if (v7 == v6)
    {
      goto LABEL_23;
    }

    if (v7 != a3)
    {
      v8 = *v7;
      if (v8 != 44)
      {
        if (v8 == 125)
        {
          goto LABEL_18;
        }

LABEL_23:
        sub_1001CF6CC();
      }

      v9 = v7 + 1;
      if (v7 + 1 == a3)
      {
        goto LABEL_23;
      }

      if (*v9 == 125)
      {
        goto LABEL_18;
      }

      v12 = -1;
      v11 = sub_1001CF630(a1, v9, a3, &v12);
      if (v11 != v9 && v11 != a3 && *v11 == 125)
      {
        if (v12 >= v13)
        {
          goto LABEL_18;
        }

        goto LABEL_23;
      }
    }

    sub_1001CF724();
  }

  return a2;
}

void sub_1001C97F0()
{
  exception = __cxa_allocate_exception(0x18uLL);
  std::regex_error::regex_error(exception, error_paren);
}

void *sub_1001C9848(void *a1)
{
  *a1 = off_101E2F8C0;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_1001C98B4(void *a1)
{
  *a1 = off_101E2F8C0;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  operator delete();
}

uint64_t sub_1001C9940(uint64_t result, uint64_t a2)
{
  if (*(a2 + 92) == 1)
  {
    if (*(a2 + 16) != *(a2 + 8) || (*(a2 + 88) & 1) != 0)
    {
LABEL_12:
      v4 = 0;
      *a2 = -993;
      goto LABEL_13;
    }
  }

  else
  {
    if (*(result + 16) != 1)
    {
      goto LABEL_12;
    }

    v2 = *(*(a2 + 16) - 1);
    if (v2 != 13 && v2 != 10)
    {
      goto LABEL_12;
    }
  }

  *a2 = -994;
  v4 = *(result + 8);
LABEL_13:
  *(a2 + 80) = v4;
  return result;
}

void *sub_1001C99A8(void *a1)
{
  *a1 = off_101E2F8C0;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_1001C9A14(void *a1)
{
  *a1 = off_101E2F8C0;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  operator delete();
}

uint64_t sub_1001C9AA0(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a2 + 24) && (*(a2 + 88) & 2) == 0 || *(result + 16) == 1 && ((v3 = *v2, v3 != 13) ? (v4 = v3 == 10) : (v4 = 1), v4))
  {
    *a2 = -994;
    v5 = *(result + 8);
  }

  else
  {
    v5 = 0;
    *a2 = -993;
  }

  *(a2 + 80) = v5;
  return result;
}

std::locale *sub_1001C9AF4(std::locale *a1)
{
  a1->__locale_ = off_101E2F980;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = off_101E2F8C0;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

void sub_1001C9B80(std::locale *a1)
{
  a1->__locale_ = off_101E2F980;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = off_101E2F8C0;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  operator delete();
}

uint64_t sub_1001C9C2C(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *(a2 + 24);
  if (v2 == v3)
  {
    goto LABEL_17;
  }

  v4 = *(a2 + 16);
  if (v4 == v3)
  {
    if ((*(a2 + 88) & 8) == 0)
    {
      v6 = *(v4 - 1);
      goto LABEL_13;
    }

LABEL_17:
    v10 = 0;
    goto LABEL_25;
  }

  if (v4 == v2)
  {
    v5 = *(a2 + 88);
    if ((v5 & 0x80) == 0)
    {
      if ((v5 & 4) == 0)
      {
        v6 = *v4;
LABEL_13:
        if (v6 == 95 || (v6 & 0x80) == 0 && (*(*(*(result + 24) + 16) + 4 * v6) & 0x500) != 0)
        {
          v10 = 1;
          goto LABEL_25;
        }

        goto LABEL_17;
      }

      goto LABEL_17;
    }
  }

  v7 = *(v4 - 1);
  v8 = *v4;
  v9 = v7 == 95 || (v7 & 0x80) == 0 && (*(*(*(result + 24) + 16) + 4 * v7) & 0x500) != 0;
  v11 = v8 == 95 || (v8 & 0x80) == 0 && (*(*(*(result + 24) + 16) + 4 * v8) & 0x500) != 0;
  v10 = v9 != v11;
LABEL_25:
  if (*(result + 40) == v10)
  {
    v12 = 0;
    v13 = -993;
  }

  else
  {
    v12 = *(result + 8);
    v13 = -994;
  }

  *a2 = v13;
  *(a2 + 80) = v12;
  return result;
}

uint64_t sub_1001C9D40(uint64_t a1, uint64_t a2, char a3, uint64_t a4, int a5)
{
  *a1 = off_101E2F9C8;
  *(a1 + 8) = a4;
  std::locale::locale((a1 + 16), a2);
  *(a1 + 24) = *(a2 + 8);
  *(a1 + 40) = *(a2 + 24);
  v9 = *(a2 + 48);
  *(a1 + 56) = *(a2 + 40);
  *(a1 + 64) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 72) = *(a2 + 56);
  *(a1 + 80) = a5;
  *(a1 + 84) = a3;
  return a1;
}

std::locale *sub_1001C9DD0(std::locale *a1)
{
  a1->__locale_ = off_101E2F9C8;
  locale = a1[8].__locale_;
  if (locale)
  {
    sub_100004A34(locale);
  }

  std::locale::~locale(a1 + 2);
  a1->__locale_ = off_101E2F8C0;
  v3 = a1[1].__locale_;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

void sub_1001C9E6C(std::locale *a1)
{
  a1->__locale_ = off_101E2F9C8;
  locale = a1[8].__locale_;
  if (locale)
  {
    sub_100004A34(locale);
  }

  std::locale::~locale(a1 + 2);
  a1->__locale_ = off_101E2F8C0;
  v3 = a1[1].__locale_;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  operator delete();
}

void sub_1001C9F28(uint64_t a1, uint64_t a2)
{
  v21 = 0u;
  v19 = 0u;
  memset(v20, 0, sizeof(v20));
  memset(v18, 0, sizeof(v18));
  *__p = 0u;
  v4 = (*(a1 + 44) + 1);
  v5 = *(a2 + 16);
  *(&v18[0] + 1) = *(a2 + 24);
  *&v18[1] = *(&v18[0] + 1);
  sub_1001CA4D0(__p, v4, (v18 + 8));
  *&v19 = v5;
  *(&v19 + 1) = v5;
  LOBYTE(v20[0]) = 0;
  *(v20 + 8) = *(v18 + 8);
  BYTE8(v20[1]) = BYTE8(v18[1]);
  *(&v21 + 1) = v5;
  LOBYTE(v21) = 1;
  v6 = *(a2 + 16);
  if (v6 == *(a2 + 8))
  {
    v7 = *(a2 + 92);
  }

  else
  {
    v7 = 0;
  }

  if (*(a1 + 84) == sub_1001CA114(a1 + 16, v6, *(a2 + 24), __p, *(a2 + 88) & 0xFBF | 0x40u, v7))
  {
    *a2 = -993;
    *(a2 + 80) = 0;
    v8 = __p[0];
    goto LABEL_10;
  }

  *a2 = -994;
  *(a2 + 80) = *(a1 + 8);
  v8 = __p[0];
  v9 = 0xAAAAAAAAAAAAAAABLL * ((__p[1] - __p[0]) >> 3);
  if (v9 < 2)
  {
LABEL_10:
    if (!v8)
    {
      return;
    }

    goto LABEL_11;
  }

  v10 = *(a1 + 80);
  v11 = *(a2 + 32);
  v12 = 2;
  v13 = 1;
  do
  {
    v14 = &v8[24 * v13];
    v15 = v11 + 24 * v10;
    *v15 = *v14;
    *(v15 + 16) = v14[16];
    v13 = v12;
    ++v10;
  }

  while (v9 > v12++);
LABEL_11:
  __p[1] = v8;
  operator delete(v8);
}

void sub_1001CA080(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

char *sub_1001CA0A0(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, char a5)
{
  *(a1 + 24) = a4;
  v8 = (a1 + 24);
  *(a1 + 32) = a4;
  *(a1 + 40) = 0;
  result = sub_1001CA4D0(a1, a2, (a1 + 24));
  *(a1 + 48) = a3;
  *(a1 + 56) = a3;
  *(a1 + 64) = 0;
  *(a1 + 72) = *v8;
  *(a1 + 88) = *(a1 + 40);
  if ((a5 & 1) == 0)
  {
    *(a1 + 104) = a3;
  }

  *(a1 + 96) = 1;
  return result;
}

uint64_t sub_1001CA114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, int a5, char a6)
{
  v39 = 0;
  v40 = 0;
  v41 = 0;
  v6 = *(a1 + 40);
  if (!v6)
  {
LABEL_29:
    v24 = 0;
    goto LABEL_30;
  }

  *(&v37 + 1) = a3;
  v38 = 0;
  *&v37 = a3;
  LODWORD(v36[0]) = 0;
  memset(v36 + 8, 0, 80);
  *(&v36[5] + 5) = 0;
  sub_1001CA6D8(&v39, v36);
  if (*(&v36[3] + 1))
  {
    *&v36[4] = *(&v36[3] + 1);
    operator delete(*(&v36[3] + 1));
  }

  if (*&v36[2])
  {
    *(&v36[2] + 1) = *&v36[2];
    operator delete(*&v36[2]);
  }

  v35 = a4;
  v13 = v40;
  *(v40 - 96) = 0;
  *(v13 - 88) = a2;
  *(v13 - 80) = a2;
  *(v13 - 72) = a3;
  sub_1001CA7B4((v13 - 64), *(a1 + 28), &v37);
  sub_1001CA7F0((v40 - 40), *(a1 + 32));
  v14 = v40;
  *(v40 - 16) = v6;
  *(v14 - 8) = a5;
  *(v14 - 4) = a6;
  v15 = 1;
  while (1)
  {
    if ((v15 & 0xFFF) == 0 && (v15 >> 12) >= a3 - a2)
    {
      sub_1001CA820();
    }

    v17 = (v14 - 16);
    v16 = *(v14 - 16);
    v18 = (v14 - 96);
    if (v16)
    {
      (*(*v16 + 16))(v16, v14 - 96);
    }

    v19 = *v18;
    if (*v18 > -994)
    {
      if (v19 != -993)
      {
        if (v19 == -992)
        {
          memset(v36, 0, sizeof(v36));
          v22 = *(v14 - 80);
          v36[0] = *v18;
          v36[1] = v22;
          sub_1001CAEE0(&v36[2], *(v14 - 64), *(v14 - 56), 0xAAAAAAAAAAAAAAABLL * ((*(v14 - 56) - *(v14 - 64)) >> 3));
          memset(&v36[3] + 8, 0, 24);
          sub_1001CAF60(&v36[3] + 8, *(v14 - 40), *(v14 - 32), (*(v14 - 32) - *(v14 - 40)) >> 4);
          v23 = *v17;
          *(&v36[5] + 5) = *(v14 - 11);
          *&v36[5] = v23;
          (*(**v17 + 24))(*v17, 1, v14 - 96);
          (*(**&v36[5] + 24))(*&v36[5], 0, v36);
          sub_1001CA6D8(&v39, v36);
          if (*(&v36[3] + 1))
          {
            *&v36[4] = *(&v36[3] + 1);
            operator delete(*(&v36[3] + 1));
          }

          if (*&v36[2])
          {
            *(&v36[2] + 1) = *&v36[2];
            operator delete(*&v36[2]);
          }
        }

        else if (v19 != -991)
        {
LABEL_36:
          sub_1001CA878();
        }

        goto LABEL_28;
      }

      goto LABEL_23;
    }

    if ((v19 + 995) >= 2)
    {
      break;
    }

LABEL_28:
    v14 = v40;
    ++v15;
    if (v39 == v40)
    {
      goto LABEL_29;
    }
  }

  if (v19 != -1000)
  {
    goto LABEL_36;
  }

  v20 = *(v14 - 80);
  if ((a5 & 0x20) != 0 && v20 == a2 || (a5 & 0x1000) != 0 && v20 != a3)
  {
LABEL_23:
    v21 = v40 - 96;
    sub_1001CAB54((v40 - 96));
    v40 = v21;
    goto LABEL_28;
  }

  v26 = *v35;
  *v26 = a2;
  *(v26 + 8) = v20;
  *(v26 + 16) = 1;
  v27 = *(v14 - 64);
  v28 = *(v14 - 56) - v27;
  if (v28)
  {
    v29 = 0xAAAAAAAAAAAAAAABLL * (v28 >> 3);
    v30 = (v27 + 16);
    v31 = 1;
    do
    {
      v32 = v26 + 24 * v31;
      *v32 = *(v30 - 1);
      v33 = *v30;
      v30 += 24;
      *(v32 + 16) = v33;
    }

    while (v29 > v31++);
  }

  v24 = 1;
LABEL_30:
  *&v36[0] = &v39;
  sub_1001CB010(v36);
  return v24;
}

void sub_1001CA478(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  sub_1001CA770(&a11);
  a11 = v16 - 112;
  sub_1001CB010(&a11);
  _Unwind_Resume(a1);
}

char *sub_1001CA4D0(char **a1, unint64_t a2, __int128 *a3)
{
  v5 = a1[2];
  result = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((v5 - result) >> 3) < a2)
  {
    if (result)
    {
      a1[1] = result;
      operator delete(result);
      v5 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (a2 <= 0xAAAAAAAAAAAAAAALL)
    {
      v7 = 0xAAAAAAAAAAAAAAABLL * (v5 >> 3);
      v8 = 2 * v7;
      if (2 * v7 <= a2)
      {
        v8 = a2;
      }

      if (v7 >= 0x555555555555555)
      {
        v9 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v9 = v8;
      }

      sub_1001CA634(a1, v9);
    }

    sub_1000CE3D4();
  }

  v10 = a1[1];
  v11 = 0xAAAAAAAAAAAAAAABLL * ((v10 - result) >> 3);
  if (v11 >= a2)
  {
    v12 = a2;
  }

  else
  {
    v12 = 0xAAAAAAAAAAAAAAABLL * ((v10 - result) >> 3);
  }

  if (v12)
  {
    v13 = *a3;
    v14 = *(a3 + 16);
    v15 = result;
    do
    {
      *v15 = v13;
      v15[16] = v14;
      v15 += 24;
      --v12;
    }

    while (v12);
  }

  if (a2 <= v11)
  {
    a1[1] = &result[24 * a2];
  }

  else
  {
    v16 = &v10[24 * (a2 - v11)];
    v17 = 24 * a2 - 8 * ((v10 - result) >> 3);
    do
    {
      v18 = *a3;
      *(v10 + 2) = *(a3 + 2);
      *v10 = v18;
      v10 += 24;
      v17 -= 24;
    }

    while (v17);
    a1[1] = v16;
  }

  return result;
}

void sub_1001CA634(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    sub_1001CA680(a1, a2);
  }

  sub_1000CE3D4();
}

void sub_1001CA680(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_100013D10();
}

uint64_t sub_1001CA6D8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = sub_1001CA8D0(a1, a2);
  }

  else
  {
    v4 = *(a2 + 16);
    *v3 = *a2;
    *(v3 + 16) = v4;
    *(v3 + 40) = 0;
    *(v3 + 48) = 0;
    *(v3 + 32) = 0;
    *(v3 + 32) = *(a2 + 32);
    *(v3 + 48) = *(a2 + 48);
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    *(a2 + 48) = 0;
    *(v3 + 56) = 0;
    *(v3 + 64) = 0;
    *(v3 + 72) = 0;
    *(v3 + 56) = *(a2 + 56);
    *(v3 + 72) = *(a2 + 72);
    *(a2 + 56) = 0;
    *(a2 + 64) = 0;
    *(a2 + 72) = 0;
    v5 = *(a2 + 80);
    *(v3 + 85) = *(a2 + 85);
    *(v3 + 80) = v5;
    result = v3 + 96;
  }

  *(a1 + 8) = result;
  return result;
}

void *sub_1001CA770(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    a1[8] = v2;
    operator delete(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    a1[5] = v3;
    operator delete(v3);
  }

  return a1;
}

void sub_1001CA7B4(uint64_t *a1, unint64_t a2, __int128 *a3)
{
  v3 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v4 = a2 >= v3;
  v5 = a2 - v3;
  if (v5 != 0 && v4)
  {
    sub_1001CABFC(a1, v5, a3);
  }

  else if (!v4)
  {
    a1[1] = *a1 + 24 * a2;
  }
}

void sub_1001CA7F0(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 4;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 16 * a2;
    }
  }

  else
  {
    sub_1001CAD84(a1, a2 - v2);
  }
}

void sub_1001CA820()
{
  exception = __cxa_allocate_exception(0x18uLL);
  std::regex_error::regex_error(exception, error_complexity);
}

void sub_1001CA878()
{
  exception = __cxa_allocate_exception(0x18uLL);
  std::regex_error::regex_error(exception, __re_err_unknown);
}

uint64_t sub_1001CA8D0(uint64_t a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 5);
  v3 = v2 + 1;
  if (v2 + 1 > 0x2AAAAAAAAAAAAAALL)
  {
    sub_1000CE3D4();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 5) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 5);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 5) >= 0x155555555555555)
  {
    v6 = 0x2AAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v19 = a1;
  if (v6)
  {
    sub_1001CAA48(a1, v6);
  }

  v7 = 96 * v2;
  v16 = 0;
  v17 = v7;
  *(&v18 + 1) = 0;
  v8 = *(a2 + 16);
  *v7 = *a2;
  *(v7 + 16) = v8;
  *(v7 + 40) = 0;
  *(v7 + 48) = 0;
  *(v7 + 32) = 0;
  *(v7 + 32) = *(a2 + 32);
  *(v7 + 48) = *(a2 + 48);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(v7 + 56) = 0;
  *(v7 + 64) = 0;
  *(v7 + 72) = 0;
  *(v7 + 56) = *(a2 + 56);
  *(v7 + 72) = *(a2 + 72);
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  v9 = *(a2 + 80);
  *(v7 + 85) = *(a2 + 85);
  *(v7 + 80) = v9;
  *&v18 = 96 * v2 + 96;
  v10 = *(a1 + 8);
  v11 = 96 * v2 + *a1 - v10;
  sub_1001CAAA0(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = *(a1 + 16);
  v15 = v18;
  *(a1 + 8) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  sub_1001CABAC(&v16);
  return v15;
}

void sub_1001CAA34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1001CABAC(va);
  _Unwind_Resume(a1);
}

void sub_1001CAA48(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2AAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_100013D10();
}

void sub_1001CAAA0(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *(v6 + 1);
      *a4 = *v6;
      *(a4 + 16) = v7;
      *(a4 + 40) = 0;
      *(a4 + 48) = 0;
      *(a4 + 32) = 0;
      *(a4 + 32) = *(v6 + 2);
      *(a4 + 48) = v6[6];
      v6[4] = 0;
      v6[5] = 0;
      v6[6] = 0;
      *(a4 + 56) = 0;
      *(a4 + 64) = 0;
      *(a4 + 72) = 0;
      *(a4 + 56) = *(v6 + 7);
      *(a4 + 72) = v6[9];
      v6[7] = 0;
      v6[8] = 0;
      v6[9] = 0;
      v8 = v6[10];
      *(a4 + 85) = *(v6 + 85);
      *(a4 + 80) = v8;
      v6 += 12;
      a4 += 96;
    }

    while (v6 != a3);
    while (v5 != a3)
    {
      sub_1001CAB54(v5);
      v5 += 12;
    }
  }
}

void sub_1001CAB54(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    a1[8] = v2;
    operator delete(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    a1[5] = v3;

    operator delete(v3);
  }
}

uint64_t sub_1001CABAC(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 96;
    sub_1001CAB54((i - 96));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1001CABFC(uint64_t *a1, unint64_t a2, __int128 *a3)
{
  v5 = a1[1];
  v6 = a1[2];
  if (0xAAAAAAAAAAAAAAABLL * ((v6 - v5) >> 3) >= a2)
  {
    if (a2)
    {
      v11 = v5 + 24 * a2;
      v12 = 24 * a2;
      do
      {
        v13 = *a3;
        *(v5 + 16) = *(a3 + 2);
        *v5 = v13;
        v5 += 24;
        v12 -= 24;
      }

      while (v12);
      v5 = v11;
    }

    a1[1] = v5;
  }

  else
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v8 = v7 + a2;
    if (v7 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_1000CE3D4();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *a1) >> 3);
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

    if (v10)
    {
      sub_1001CA680(a1, v10);
    }

    v14 = 24 * a2;
    v15 = 24 * v7;
    do
    {
      v16 = *a3;
      *(v15 + 16) = *(a3 + 2);
      *v15 = v16;
      v15 += 24;
      v14 -= 24;
    }

    while (v14);
    v17 = *a1;
    v18 = a1[1];
    v19 = 24 * v7 + *a1 - v18;
    if (v18 != *a1)
    {
      v20 = 24 * v7 + *a1 - v18;
      do
      {
        v21 = *v17;
        *(v20 + 16) = v17[2];
        *v20 = v21;
        v20 += 24;
        v17 += 3;
      }

      while (v17 != v18);
      v17 = *a1;
    }

    *a1 = v19;
    a1[1] = 24 * v7 + 24 * a2;
    a1[2] = 0;
    if (v17)
    {

      operator delete(v17);
    }
  }
}

void sub_1001CAD84(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 4)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 16 * a2);
      v5 += 16 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 4);
    if (v7 >> 60)
    {
      sub_1000CE3D4();
    }

    v8 = v4 - *a1;
    if (v8 >> 3 > v7)
    {
      v7 = v8 >> 3;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v9 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_1001CAE98(a1, v9);
    }

    v10 = (16 * (v6 >> 4));
    bzero(v10, 16 * a2);
    v11 = &v10[16 * a2];
    v12 = *(a1 + 8) - *a1;
    v13 = &v10[-v12];
    memcpy(&v10[-v12], *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v11;
    *(a1 + 16) = 0;
    if (v14)
    {

      operator delete(v14);
    }
  }
}

void sub_1001CAE98(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_100013D10();
}

uint64_t sub_1001CAEE0(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1001CA634(result, a4);
  }

  return result;
}

void sub_1001CAF44(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1001CAF60(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1001CAFD4(result, a4);
  }

  return result;
}

void sub_1001CAFB8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001CAFD4(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    sub_1001CAE98(a1, a2);
  }

  sub_1000CE3D4();
}

void sub_1001CB010(void ***a1)
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
        v4 -= 12;
        sub_1001CAB54(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

unsigned __int8 *sub_1001CB094(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 != a3 && *a2 == 92)
  {
    v5 = a2 + 1;
    if (a2 + 1 == a3)
    {
      sub_1001CB520();
    }

    v7 = sub_1001CB578(a1, a2 + 1, a3);
    if (v7 == v5 && (v7 = sub_1001CB630(a1, v3 + 1, a3), v7 == v5))
    {
      v9 = sub_1001CB700(a1, v3 + 1, a3, 0);
      if (v9 != v5)
      {
        return v9;
      }
    }

    else
    {
      return v7;
    }
  }

  return v3;
}

_BYTE *sub_1001CB13C(uint64_t a1, _BYTE *a2, _BYTE *a3)
{
  if (a2 != a3 && *a2 == 91)
  {
    if (a2 + 1 != a3)
    {
      sub_1001CC8E8();
    }

    sub_1001CD974();
  }

  return a2;
}

uint64_t sub_1001CB258(uint64_t result)
{
  if ((*(result + 24) & 2) == 0)
  {
    operator new();
  }

  return result;
}

uint64_t sub_1001CB2E0(uint64_t result)
{
  if ((*(result + 24) & 2) == 0)
  {
    operator new();
  }

  return result;
}

void sub_1001CB360()
{
  exception = __cxa_allocate_exception(0x18uLL);
  std::regex_error::regex_error(exception, error_badrepeat);
}

unsigned __int8 *sub_1001CB3B8(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 != a3)
  {
    v3 = *a2;
    v4 = (v3 - 36) > 0x3A || ((1 << (v3 - 36)) & 0x7800000080004F1) == 0;
    if (v4 && (v3 - 123) >= 3)
    {
      sub_1001CBAFC(a1);
    }
  }

  return a2;
}

void *sub_1001CB428(void *a1)
{
  *a1 = off_101E2F8C0;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_1001CB494(void *a1)
{
  *a1 = off_101E2F8C0;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  operator delete();
}

void sub_1001CB520()
{
  exception = __cxa_allocate_exception(0x18uLL);
  std::regex_error::regex_error(exception, error_escape);
}

unsigned __int8 *sub_1001CB578(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 != a3)
  {
    v4 = *a2;
    if (v4 == 48)
    {
      sub_1001CBAFC(a1);
    }

    if ((v4 - 49) <= 8)
    {
      v5 = (v4 - 48);
      v6 = a2 + 1;
      if (v6 == a3)
      {
        goto LABEL_10;
      }

      do
      {
        v7 = *v6;
        if ((v7 - 48) > 9)
        {
          break;
        }

        if (v5 >= 0x19999999)
        {
          goto LABEL_13;
        }

        v5 = v7 + 10 * v5 - 48;
        ++v6;
      }

      while (v6 != a3);
      if (v5)
      {
LABEL_10:
        if (v5 <= *(a1 + 28))
        {
          sub_1001CBC94(a1);
        }
      }

LABEL_13:
      sub_1001CBC3C();
    }
  }

  return a2;
}

unsigned __int8 *sub_1001CB630(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 == a3)
  {
    return a2;
  }

  v3 = *a2;
  if (v3 > 0x63)
  {
    if (v3 == 119)
    {
      goto LABEL_11;
    }

    if (v3 == 115)
    {
LABEL_12:
      sub_1001CC8E8();
    }

    if (v3 != 100)
    {
      return a2;
    }

LABEL_10:
    sub_1001CC8E8();
  }

  switch(v3)
  {
    case 'D':
      goto LABEL_10;
    case 'S':
      goto LABEL_12;
    case 'W':
LABEL_11:
      sub_1001CC8E8();
  }

  return a2;
}

unsigned __int8 *sub_1001CB700(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t *a4)
{
  v4 = a2;
  if (a2 == a3)
  {
    return v4;
  }

  v5 = *a2;
  if (v5 > 0x71)
  {
    if (*a2 <= 0x74u)
    {
      if (v5 == 114)
      {
        if (!a4)
        {
          goto LABEL_77;
        }

        if (*(a4 + 23) < 0)
        {
          a4[1] = 1;
          a4 = *a4;
        }

        else
        {
          *(a4 + 23) = 1;
        }

        v16 = 13;
      }

      else
      {
        if (v5 != 116)
        {
          goto LABEL_72;
        }

        if (!a4)
        {
          goto LABEL_77;
        }

        if (*(a4 + 23) < 0)
        {
          a4[1] = 1;
          a4 = *a4;
        }

        else
        {
          *(a4 + 23) = 1;
        }

        v16 = 9;
      }
    }

    else
    {
      if (v5 == 117)
      {
        if (a2 + 1 == a3)
        {
          goto LABEL_97;
        }

        v8 = a2[1];
        if ((v8 & 0xF8) != 0x30 && (v8 & 0xFE) != 0x38 && (v8 | 0x20u) - 97 >= 6)
        {
          goto LABEL_97;
        }

        v4 = a2 + 2;
        if (a2 + 2 == a3)
        {
          goto LABEL_97;
        }

        v9 = *v4;
        v10 = -48;
        if ((v9 & 0xF8) != 0x30 && (v9 & 0xFE) != 0x38)
        {
          v9 |= 0x20u;
          if ((v9 - 97) >= 6)
          {
            goto LABEL_97;
          }

          v10 = -87;
        }

        v6 = 16 * (v10 + v9);
LABEL_45:
        if (v4 + 1 == a3)
        {
          goto LABEL_97;
        }

        v11 = v4[1];
        v12 = -48;
        if ((v11 & 0xF8) != 0x30 && (v11 & 0xFE) != 0x38)
        {
          v11 |= 0x20u;
          if ((v11 - 97) >= 6)
          {
            goto LABEL_97;
          }

          v12 = -87;
        }

        if (v4 + 2 != a3)
        {
          v13 = v4[2];
          v14 = -48;
          if ((v13 & 0xF8) == 0x30 || (v13 & 0xFE) == 0x38)
          {
            goto LABEL_55;
          }

          v13 |= 0x20u;
          if ((v13 - 97) < 6)
          {
            v14 = -87;
LABEL_55:
            v15 = v14 + v13 + 16 * (v12 + v6 + v11);
            if (!a4)
            {
              sub_1001CBAFC(a1);
            }

            if (*(a4 + 23) < 0)
            {
              a4[1] = 1;
              a4 = *a4;
            }

            else
            {
              *(a4 + 23) = 1;
            }

            *a4 = v15;
            *(a4 + 1) = 0;
            v4 += 3;
            return v4;
          }
        }

LABEL_97:
        sub_1001CB520();
      }

      if (v5 != 118)
      {
        if (v5 == 120)
        {
          v6 = 0;
          goto LABEL_45;
        }

LABEL_72:
        if ((v5 & 0x80000000) == 0 && (*(*(*(a1 + 8) + 16) + 4 * *a2) & 0x500) != 0)
        {
          goto LABEL_97;
        }

        if (a4)
        {
          if (*(a4 + 23) < 0)
          {
            a4[1] = 1;
            a4 = *a4;
          }

          else
          {
            *(a4 + 23) = 1;
          }

          *a4 = v5;
          *(a4 + 1) = 0;
          return a2 + 1;
        }

LABEL_77:
        sub_1001CBAFC(a1);
      }

      if (!a4)
      {
        goto LABEL_77;
      }

      if (*(a4 + 23) < 0)
      {
        a4[1] = 1;
        a4 = *a4;
      }

      else
      {
        *(a4 + 23) = 1;
      }

      v16 = 11;
    }

LABEL_90:
    *a4 = v16;
    return a2 + 1;
  }

  if (*a2 > 0x65u)
  {
    if (v5 == 102)
    {
      if (!a4)
      {
        goto LABEL_77;
      }

      if (*(a4 + 23) < 0)
      {
        a4[1] = 1;
        a4 = *a4;
      }

      else
      {
        *(a4 + 23) = 1;
      }

      v16 = 12;
    }

    else
    {
      if (v5 != 110)
      {
        goto LABEL_72;
      }

      if (!a4)
      {
        goto LABEL_77;
      }

      if (*(a4 + 23) < 0)
      {
        a4[1] = 1;
        a4 = *a4;
      }

      else
      {
        *(a4 + 23) = 1;
      }

      v16 = 10;
    }

    goto LABEL_90;
  }

  if (v5 == 48)
  {
    if (a4)
    {
      if (*(a4 + 23) < 0)
      {
        a4[1] = 1;
        a4 = *a4;
      }

      else
      {
        *(a4 + 23) = 1;
      }

      *a4 = 0;
      return a2 + 1;
    }

    goto LABEL_77;
  }

  if (v5 != 99)
  {
    if (v5 == 95)
    {
      goto LABEL_97;
    }

    goto LABEL_72;
  }

  if (a2 + 1 == a3)
  {
    goto LABEL_97;
  }

  v7 = a2[1];
  if (((v7 & 0xDF) - 65) > 0x19u)
  {
    goto LABEL_97;
  }

  if (!a4)
  {
    sub_1001CBAFC(a1);
  }

  if (*(a4 + 23) < 0)
  {
    a4[1] = 1;
    a4 = *a4;
  }

  else
  {
    *(a4 + 23) = 1;
  }

  *a4 = v7 & 0x1F;
  *(a4 + 1) = 0;
  return a2 + 2;
}

void sub_1001CBAFC(uint64_t a1)
{
  v1 = *(a1 + 24);
  if ((v1 & 1) == 0)
  {
    if ((v1 & 8) == 0)
    {
      operator new();
    }

    operator new();
  }

  operator new();
}

void sub_1001CBC3C()
{
  exception = __cxa_allocate_exception(0x18uLL);
  std::regex_error::regex_error(exception, error_backref);
}

void sub_1001CBC94(uint64_t a1)
{
  v1 = *(a1 + 24);
  if ((v1 & 1) == 0)
  {
    if ((v1 & 8) == 0)
    {
      operator new();
    }

    operator new();
  }

  operator new();
}

uint64_t sub_1001CBDC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = off_101E2FA58;
  *(a1 + 8) = a4;
  std::locale::locale((a1 + 16), a2);
  *(a1 + 24) = *(a2 + 8);
  *(a1 + 40) = (*(**(a2 + 8) + 40))(*(a2 + 8), a3);
  return a1;
}

void sub_1001CBE50(_Unwind_Exception *a1)
{
  std::locale::~locale(v1 + 2);
  v1->__locale_ = off_101E2F8C0;
  locale = v1[1].__locale_;
  if (locale)
  {
    sub_101764D34(locale);
  }

  _Unwind_Resume(a1);
}

std::locale *sub_1001CBE90(std::locale *a1)
{
  a1->__locale_ = off_101E2FA58;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = off_101E2F8C0;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

void sub_1001CBF1C(std::locale *a1)
{
  a1->__locale_ = off_101E2FA58;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = off_101E2F8C0;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  operator delete();
}

uint64_t sub_1001CBFC8(uint64_t result, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3 == *(a2 + 24) || (v4 = result, result = (*(**(result + 24) + 40))(*(result + 24), *v3), *(v4 + 40) != result))
  {
    v5 = 0;
    *a2 = -993;
  }

  else
  {
    *a2 = -995;
    ++*(a2 + 16);
    v5 = *(v4 + 8);
  }

  *(a2 + 80) = v5;
  return result;
}

std::locale *sub_1001CC05C(std::locale *a1)
{
  a1->__locale_ = off_101E2FAA0;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = off_101E2F8C0;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

void sub_1001CC0E8(std::locale *a1)
{
  a1->__locale_ = off_101E2FAA0;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = off_101E2F8C0;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  operator delete();
}

uint64_t sub_1001CC194(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a2 + 24) || *v2 != *(result + 40))
  {
    v3 = 0;
    *a2 = -993;
  }

  else
  {
    *a2 = -995;
    *(a2 + 16) = v2 + 1;
    v3 = *(result + 8);
  }

  *(a2 + 80) = v3;
  return result;
}

void *sub_1001CC1DC(void *a1)
{
  *a1 = off_101E2F8C0;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_1001CC248(void *a1)
{
  *a1 = off_101E2F8C0;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  operator delete();
}

uint64_t sub_1001CC2D4(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a2 + 24) || *v2 != *(result + 16))
  {
    v3 = 0;
    *a2 = -993;
  }

  else
  {
    *a2 = -995;
    *(a2 + 16) = v2 + 1;
    v3 = *(result + 8);
  }

  *(a2 + 80) = v3;
  return result;
}

std::locale *sub_1001CC31C(std::locale *a1)
{
  a1->__locale_ = off_101E2FB30;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = off_101E2F8C0;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

void sub_1001CC3A8(std::locale *a1)
{
  a1->__locale_ = off_101E2FB30;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = off_101E2F8C0;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  operator delete();
}

uint64_t sub_1001CC454(uint64_t result, uint64_t a2)
{
  v3 = *(a2 + 32) + 24 * (*(result + 40) - 1);
  if (*(v3 + 16) == 1)
  {
    v4 = *(v3 + 8) - *v3;
    v5 = *(a2 + 16);
    if (*(a2 + 24) - v5 >= v4)
    {
      v7 = result;
      if (v4 < 1)
      {
LABEL_10:
        *a2 = -994;
        *(a2 + 16) = v5 + v4;
        v6 = *(v7 + 8);
        goto LABEL_4;
      }

      v8 = 0;
      while (1)
      {
        v9 = (*(**(v7 + 24) + 40))(*(v7 + 24), *(*v3 + v8));
        result = (*(**(v7 + 24) + 40))(*(v7 + 24), *(*(a2 + 16) + v8));
        if (v9 != result)
        {
          break;
        }

        if (v4 == ++v8)
        {
          v5 = *(a2 + 16);
          goto LABEL_10;
        }
      }
    }
  }

  v6 = 0;
  *a2 = -993;
LABEL_4:
  *(a2 + 80) = v6;
  return result;
}

std::locale *sub_1001CC570(std::locale *a1)
{
  a1->__locale_ = off_101E2FB78;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = off_101E2F8C0;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

void sub_1001CC5FC(std::locale *a1)
{
  a1->__locale_ = off_101E2FB78;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = off_101E2F8C0;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  operator delete();
}

uint64_t sub_1001CC6A8(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 32) + 24 * (*(result + 40) - 1);
  if (*(v2 + 16) == 1)
  {
    v3 = *v2;
    v4 = *(v2 + 8) - *v2;
    v5 = *(a2 + 16);
    if (*(a2 + 24) - v5 >= v4)
    {
      if (v4 < 1)
      {
LABEL_9:
        *a2 = -994;
        *(a2 + 16) = v5 + v4;
        v6 = *(result + 8);
        goto LABEL_4;
      }

      v7 = *(a2 + 16);
      v8 = v4;
      while (1)
      {
        v10 = *v3++;
        v9 = v10;
        v11 = *v7++;
        if (v9 != v11)
        {
          break;
        }

        if (!--v8)
        {
          goto LABEL_9;
        }
      }
    }
  }

  v6 = 0;
  *a2 = -993;
LABEL_4:
  *(a2 + 80) = v6;
  return result;
}

void *sub_1001CC734(void *a1)
{
  *a1 = off_101E2F8C0;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_1001CC7A0(void *a1)
{
  *a1 = off_101E2F8C0;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  operator delete();
}

unsigned int *sub_1001CC82C(unsigned int *result, uint64_t a2)
{
  v2 = result[4];
  v3 = *(a2 + 32);
  if (0xAAAAAAAAAAAAAAABLL * ((*(a2 + 40) - v3) >> 3) < v2)
  {
    sub_1001CBC3C();
  }

  v5 = v3 + 24 * (v2 - 1);
  if (*(v5 + 16) == 1 && (v6 = result, result = *v5, v7 = *(v5 + 8) - *v5, v8 = *(a2 + 16), *(a2 + 24) - v8 >= v7) && (result = memcmp(result, *(a2 + 16), v7), !result))
  {
    *a2 = -994;
    *(a2 + 16) = v8 + v7;
    v9 = *(v6 + 1);
  }

  else
  {
    v9 = 0;
    *a2 = -993;
  }

  *(a2 + 80) = v9;
  return result;
}

void sub_1001CC97C(uint64_t a1, char a2)
{
  v7 = a2;
  if (*(a1 + 169) == 1)
  {
    v6 = (*(**(a1 + 24) + 40))(*(a1 + 24));
    v3 = a1 + 40;
    v4 = &v6;
LABEL_5:
    sub_1001CD884(v3, v4);
    return;
  }

  if (*(a1 + 170) == 1)
  {
    v5 = a2;
    v3 = a1 + 40;
    v4 = &v5;
    goto LABEL_5;
  }

  sub_1001CD884(a1 + 40, &v7);
}

uint64_t sub_1001CCA18(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, char a6)
{
  *a1 = off_101E2FC08;
  *(a1 + 8) = a3;
  std::locale::locale((a1 + 16), a2);
  *(a1 + 24) = *(a2 + 8);
  *(a1 + 40) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = a4;
  *(a1 + 169) = a5;
  *(a1 + 170) = a6;
  std::locale::locale(&v13, (a1 + 16));
  std::locale::name(&v14, &v13);
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    v11 = v14.__r_.__value_.__l.__size_ != 1 || *v14.__r_.__value_.__l.__data_ != 67;
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  else
  {
    v11 = SHIBYTE(v14.__r_.__value_.__r.__words[2]) != 1 || v14.__r_.__value_.__s.__data_[0] != 67;
  }

  std::locale::~locale(&v13);
  *(a1 + 171) = v11;
  return a1;
}

void sub_1001CCB58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale *a10)
{
  std::locale::~locale(&a9);
  a10 = v10 + 17;
  sub_1000087B4(&a10);
  locale = v10[14].__locale_;
  if (locale)
  {
    v10[15].__locale_ = locale;
    operator delete(locale);
  }

  sub_1001C6984(&a10);
  v15 = v10[8].__locale_;
  if (v15)
  {
    v10[9].__locale_ = v15;
    operator delete(v15);
  }

  v16 = *v12;
  if (*v12)
  {
    v10[6].__locale_ = v16;
    operator delete(v16);
  }

  std::locale::~locale(v10 + 2);
  v10->__locale_ = v11;
  v17 = v10[1].__locale_;
  if (v17)
  {
    (*(*v17 + 8))(v17);
  }

  _Unwind_Resume(a1);
}

void sub_1001CCBF4(std::locale *a1)
{
  sub_1001CD358(a1);

  operator delete();
}

void sub_1001CCC2C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  if (v4 == v5)
  {
    v18 = 0;
    v19 = *(a1 + 168);
    goto LABEL_54;
  }

  if (*(a1 + 171) != 1 || v4 + 1 == v5)
  {
    goto LABEL_31;
  }

  v72 = *v4;
  v6 = v4[1];
  v73 = v4[1];
  if (*(a1 + 169) == 1)
  {
    v72 = (*(**(a1 + 24) + 40))(*(a1 + 24));
    v73 = (*(**(a1 + 24) + 40))(*(a1 + 24), v6);
  }

  sub_1001CD500(a1 + 16, &v72, &v74, &__p);
  if ((SHIBYTE(v71) & 0x80000000) == 0)
  {
    if (HIBYTE(v71))
    {
      goto LABEL_8;
    }

LABEL_31:
    v19 = 0;
    v18 = 1;
    goto LABEL_32;
  }

  v20 = v70;
  operator delete(__p);
  if (!v20)
  {
    goto LABEL_31;
  }

LABEL_8:
  v7 = *(a1 + 112);
  v8 = *(a1 + 120) - v7;
  if (v8)
  {
    v9 = v8 >> 1;
    if ((v8 >> 1) <= 1)
    {
      v9 = 1;
    }

    v10 = (v7 + 1);
    while (v72 != *(v10 - 1) || v73 != *v10)
    {
      v10 += 2;
      if (!--v9)
      {
        goto LABEL_17;
      }
    }

    goto LABEL_148;
  }

LABEL_17:
  if (*(a1 + 170) == 1 && *(a1 + 88) != *(a1 + 96))
  {
    __p = 0;
    v70 = 0;
    v71 = 0;
    sub_1001CD440(a1 + 16, &v72, &v74);
    v12 = *(a1 + 88);
    if (*(a1 + 96) == v12)
    {
LABEL_24:
      v15 = 0;
      v16 = 0;
    }

    else
    {
      v13 = 0;
      v14 = 0;
      while (sub_1000068BC((v12 + v13), &__p) > 0 || sub_1000068BC(&__p, (*(a1 + 88) + v13 + 24)) >= 1)
      {
        ++v14;
        v12 = *(a1 + 88);
        v13 += 48;
        if (v14 >= 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 96) - v12) >> 4))
        {
          goto LABEL_24;
        }
      }

      v16 = 5;
      v15 = 1;
    }

    if (SHIBYTE(v71) < 0)
    {
      operator delete(__p);
    }

    if (v15)
    {
      v17 = 1;
      goto LABEL_128;
    }
  }

  if (*(a1 + 136) == *(a1 + 144))
  {
    v17 = 0;
    goto LABEL_130;
  }

  __p = 0;
  v70 = 0;
  v71 = 0;
  p_p = &__p;
  sub_1001CD764(a1 + 16, &v72, &v74, &__p);
  v36 = *(a1 + 136);
  v37 = HIBYTE(v71);
  v38 = *(a1 + 144) - v36;
  if (v38)
  {
    v39 = 0xAAAAAAAAAAAAAAABLL * (v38 >> 3);
    if (v71 >= 0)
    {
      v40 = HIBYTE(v71);
    }

    else
    {
      v40 = v70;
    }

    if (v71 < 0)
    {
      p_p = __p;
    }

    if (v39 <= 1)
    {
      v41 = 1;
    }

    else
    {
      v41 = 0xAAAAAAAAAAAAAAABLL * (v38 >> 3);
    }

    v42 = 1;
    v43 = 1;
    while (1)
    {
      v44 = *(v36 + 23);
      v45 = v44;
      if ((v44 & 0x80u) != 0)
      {
        v44 = *(v36 + 8);
      }

      if (v40 == v44)
      {
        v46 = v45 >= 0 ? v36 : *v36;
        if (!memcmp(p_p, v46, v40))
        {
          break;
        }
      }

      v43 = v42++ < v39;
      v36 += 24;
      if (!--v41)
      {
        goto LABEL_125;
      }
    }

    v17 = 1;
    v16 = 5;
    if (v37 < 0)
    {
LABEL_126:
      operator delete(__p);
    }
  }

  else
  {
    v43 = 0;
LABEL_125:
    v16 = 0;
    v17 = 0;
    if (v37 < 0)
    {
      goto LABEL_126;
    }
  }

  if (!v43)
  {
LABEL_130:
    if (v72 < 0)
    {
      v66 = *(a1 + 164);
    }

    else
    {
      v63 = *(a1 + 160);
      v64 = *(*(a1 + 24) + 16);
      v65 = *(v64 + 4 * v72);
      if (((v65 & v63) != 0 || v72 == 95 && (v63 & 0x80) != 0) && (v73 & 0x8000000000000000) == 0 && ((*(v64 + 4 * v73) & v63) != 0 || (v63 & 0x80) != 0 && v73 == 95))
      {
        goto LABEL_148;
      }

      v66 = *(a1 + 164);
      if ((v65 & v66) != 0 || v72 == 95 && (v66 & 0x80) != 0)
      {
LABEL_147:
        v19 = v17;
LABEL_149:
        v18 = 2;
        goto LABEL_54;
      }
    }

    if ((v73 & 0x8000000000000000) == 0)
    {
      if ((*(*(*(a1 + 24) + 16) + 4 * v73) & v66) == 0)
      {
        v19 = 1;
        if (v73 != 95 || (v66 & 0x80) == 0)
        {
          goto LABEL_149;
        }
      }

      goto LABEL_147;
    }

LABEL_148:
    v19 = 1;
    goto LABEL_149;
  }

LABEL_128:
  v18 = 2;
  v19 = v17;
  if (v16)
  {
    goto LABEL_54;
  }

LABEL_32:
  v21 = **(a2 + 16);
  v72 = **(a2 + 16);
  if (*(a1 + 169) == 1)
  {
    LODWORD(v21) = (*(**(a1 + 24) + 40))(*(a1 + 24), v21);
    v72 = v21;
  }

  v22 = *(a1 + 40);
  v23 = *(a1 + 48) - v22;
  if (v23)
  {
    if (v23 <= 1)
    {
      v23 = 1;
    }

    do
    {
      v24 = *v22++;
      if (v24 == v21)
      {
        goto LABEL_53;
      }
    }

    while (--v23);
  }

  v25 = *(a1 + 164);
  if (v25 || *(a1 + 64) != *(a1 + 72))
  {
    if ((v21 & 0x80000000) != 0 || (*(*(*(a1 + 24) + 16) + 4 * v21) & v25) == 0)
    {
      v26 = (v21 == 95) & (v25 >> 7);
    }

    else
    {
      LOBYTE(v26) = 1;
    }

    v27 = *(a1 + 72);
    v28 = memchr(*(a1 + 64), v21, v27 - *(a1 + 64));
    v29 = !v28 || v28 == v27;
    v30 = !v29;
    if ((v26 & 1) == 0 && !v30)
    {
LABEL_53:
      v19 = 1;
      goto LABEL_54;
    }
  }

  v33 = *(a1 + 88);
  v34 = *(a1 + 96);
  if (v33 == v34)
  {
    goto LABEL_91;
  }

  __p = 0;
  v70 = 0;
  v71 = 0;
  if (*(a1 + 170) == 1)
  {
    sub_1001CD440(a1 + 16, &v72, &v73);
    v33 = *(a1 + 88);
    v34 = *(a1 + 96);
  }

  else
  {
    HIBYTE(v71) = 1;
    LOWORD(__p) = v21;
  }

  if (v34 == v33)
  {
LABEL_87:
    v49 = 0;
  }

  else
  {
    v47 = 0;
    v48 = 0;
    while (sub_1000068BC((v33 + v47), &__p) > 0 || sub_1000068BC(&__p, (*(a1 + 88) + v47 + 24)) >= 1)
    {
      ++v48;
      v33 = *(a1 + 88);
      v47 += 48;
      if (v48 >= 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 96) - v33) >> 4))
      {
        goto LABEL_87;
      }
    }

    v49 = 1;
    v19 = 1;
  }

  if (SHIBYTE(v71) < 0)
  {
    operator delete(__p);
  }

  if ((v49 & 1) == 0)
  {
LABEL_91:
    if (*(a1 + 136) == *(a1 + 144))
    {
LABEL_119:
      v61 = *(a1 + 160);
      if ((v72 & 0x8000000000000000) == 0 && (*(*(*(a1 + 24) + 16) + 4 * v72) & v61) != 0)
      {
        goto LABEL_53;
      }

      v62 = (v61 >> 7) & 1;
      if (v72 != 95)
      {
        LOBYTE(v62) = 0;
      }

      v19 |= v62;
      goto LABEL_54;
    }

    __p = 0;
    v70 = 0;
    v71 = 0;
    v50 = &__p;
    sub_1001CD764(a1 + 16, &v72, &v73, &__p);
    v51 = *(a1 + 136);
    v52 = *(a1 + 144) - v51;
    if (v52)
    {
      v67 = HIBYTE(v71);
      v68 = v18;
      v53 = 0xAAAAAAAAAAAAAAABLL * (v52 >> 3);
      if (v71 >= 0)
      {
        v54 = HIBYTE(v71);
      }

      else
      {
        v54 = v70;
      }

      if (v71 < 0)
      {
        v50 = __p;
      }

      if (v53 <= 1)
      {
        v55 = 1;
      }

      else
      {
        v55 = 0xAAAAAAAAAAAAAAABLL * (v52 >> 3);
      }

      v56 = 1;
      v57 = 1;
      while (1)
      {
        v58 = *(v51 + 23);
        v59 = v58;
        if ((v58 & 0x80u) != 0)
        {
          v58 = *(v51 + 8);
        }

        if (v54 == v58)
        {
          v60 = v59 >= 0 ? v51 : *v51;
          if (!memcmp(v50, v60, v54))
          {
            break;
          }
        }

        v57 = v56++ < v53;
        v51 += 24;
        if (!--v55)
        {
          goto LABEL_116;
        }
      }

      v19 = 1;
LABEL_116:
      v18 = v68;
      if ((v67 & 0x80) == 0)
      {
LABEL_118:
        if (v57)
        {
          goto LABEL_54;
        }

        goto LABEL_119;
      }
    }

    else
    {
      v57 = 0;
      if ((v71 & 0x8000000000000000) == 0)
      {
        goto LABEL_118;
      }
    }

    operator delete(__p);
    goto LABEL_118;
  }

LABEL_54:
  if (*(a1 + 168) == (v19 & 1))
  {
    v31 = 0;
    v32 = -993;
  }

  else
  {
    *(a2 + 16) += v18;
    v31 = *(a1 + 8);
    v32 = -995;
  }

  *a2 = v32;
  *(a2 + 80) = v31;
}

std::locale *sub_1001CD358(std::locale *a1)
{
  a1->__locale_ = off_101E2FC08;
  v7 = a1 + 17;
  sub_1000087B4(&v7);
  locale = a1[14].__locale_;
  if (locale)
  {
    a1[15].__locale_ = locale;
    operator delete(locale);
  }

  v7 = a1 + 11;
  sub_1001C6984(&v7);
  v3 = a1[8].__locale_;
  if (v3)
  {
    a1[9].__locale_ = v3;
    operator delete(v3);
  }

  v4 = a1[5].__locale_;
  if (v4)
  {
    a1[6].__locale_ = v4;
    operator delete(v4);
  }

  std::locale::~locale(a1 + 2);
  a1->__locale_ = off_101E2F8C0;
  v5 = a1[1].__locale_;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  return a1;
}

void sub_1001CD440(uint64_t a1, _BYTE *a2, _BYTE *a3)
{
  __p = 0;
  v7 = 0;
  v8 = 0;
  sub_1001CD6B4(&__p, a2, a3, a3 - a2);
  v4 = HIBYTE(v8);
  if (v8 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if (v8 < 0)
  {
    v4 = v7;
  }

  (*(**(a1 + 16) + 32))(*(a1 + 16), p_p, &p_p[v4]);
  if (SHIBYTE(v8) < 0)
  {
    operator delete(__p);
  }
}

void sub_1001CD4E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001CD500(uint64_t a1@<X0>, _BYTE *a2@<X1>, _BYTE *a3@<X2>, uint64_t a4@<X8>)
{
  memset(&__s, 0, sizeof(__s));
  sub_1001CD6B4(&__s, a2, a3, a3 - a2);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    if (!__s.__r_.__value_.__l.__size_)
    {
      goto LABEL_9;
    }

    p_s = __s.__r_.__value_.__r.__words[0];
  }

  else
  {
    if (!*(&__s.__r_.__value_.__s + 23))
    {
      return;
    }

    p_s = &__s;
  }

  std::__get_collation_name(&v11, p_s);
  *a4 = *&v11.__r_.__value_.__l.__data_;
  v7 = v11.__r_.__value_.__r.__words[2];
  *(a4 + 16) = *(&v11.__r_.__value_.__l + 2);
  v8 = HIBYTE(v7);
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a4 + 8);
  }

  if (v8)
  {
    goto LABEL_9;
  }

  if ((SHIBYTE(__s.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    if (__s.__r_.__value_.__l.__size_ >= 3)
    {
      goto LABEL_9;
    }
  }

  else if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) >= 3)
  {
    return;
  }

  (*(**(a1 + 16) + 32))(&v11);
  if (*(a4 + 23) < 0)
  {
    operator delete(*a4);
  }

  *a4 = v11;
  if ((*(a4 + 23) & 0x80000000) == 0)
  {
    v9 = *(a4 + 23);
    if (v9 != 12 && v9 != 1)
    {
      *a4 = 0;
      *(a4 + 23) = 0;
      goto LABEL_9;
    }

    goto LABEL_23;
  }

  v10 = *(a4 + 8);
  if (v10 == 1 || v10 == 12)
  {
LABEL_23:
    std::string::operator=(a4, &__s);
    goto LABEL_9;
  }

  **a4 = 0;
  *(a4 + 8) = 0;
LABEL_9:
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s.__r_.__value_.__l.__data_);
  }
}

void sub_1001CD680(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 + 23) < 0)
  {
    operator delete(*v17);
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_1001CD6B4(_BYTE *__dst, _BYTE *__src, _BYTE *a3, unint64_t a4)
{
  if (a4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1000A2378();
  }

  v4 = __dst;
  if (a4 > 0x16)
  {
    operator new();
  }

  __dst[23] = a4;
  v5 = a3 - __src;
  if (a3 != __src)
  {
    __dst = memmove(__dst, __src, v5);
  }

  v4[v5] = 0;
  return __dst;
}

void sub_1001CD764(uint64_t a1@<X0>, _BYTE *a2@<X1>, _BYTE *a3@<X2>, uint64_t *a4@<X8>)
{
  __p = 0;
  v12 = 0;
  v13 = 0;
  sub_1001CD6B4(&__p, a2, a3, a3 - a2);
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  v6 = HIBYTE(v13);
  if (v13 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if (v13 < 0)
  {
    v6 = v12;
  }

  (*(**(a1 + 16) + 32))(*(a1 + 16), p_p, &p_p[v6]);
  v8 = *(a4 + 23);
  v9 = v8;
  if ((v8 & 0x80u) != 0)
  {
    v8 = a4[1];
  }

  if (v8 != 1)
  {
    if (v8 == 12)
    {
      if (v9 >= 0)
      {
        v10 = a4;
      }

      else
      {
        v10 = *a4;
      }

      *(v10 + 11) = *(v10 + 3);
    }

    else if (v9 < 0)
    {
      **a4 = 0;
      a4[1] = 0;
    }

    else
    {
      *a4 = 0;
      *(a4 + 23) = 0;
    }
  }

  if (SHIBYTE(v13) < 0)
  {
    operator delete(__p);
  }
}

void sub_1001CD868(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001CD884(uint64_t a1, _BYTE *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = &v4[-*a1];
    v8 = (v7 + 1);
    if ((v7 + 1) < 0)
    {
      sub_1000CE3D4();
    }

    v9 = v3 - v6;
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

    v11 = &v4[-*a1];
    *v7 = *a2;
    v5 = v7 + 1;
    memcpy(0, v6, v11);
    *a1 = 0;
    *(a1 + 8) = v7 + 1;
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

void sub_1001CD974()
{
  exception = __cxa_allocate_exception(0x18uLL);
  std::regex_error::regex_error(exception, error_brack);
}

unsigned __int8 *sub_1001CD9CC(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t a4)
{
  v4 = a2;
  if (a2 == a3)
  {
    return v4;
  }

  v5 = *a2;
  if (v5 == 93)
  {
    return v4;
  }

  v6 = a4;
  v9 = 0;
  v10 = 0;
  v30 = 0uLL;
  v31 = 0;
  if (a2 + 1 != a3 && v5 == 91)
  {
    v11 = a2[1];
    switch(v11)
    {
      case '.':
        v4 = sub_1001CE00C(a1, a2 + 2, a3, &v30);
        v9 = HIBYTE(v31);
        v10 = *(&v30 + 1);
        break;
      case ':':
        v12 = sub_1001CDF78(a1, a2 + 2, a3, a4);
        goto LABEL_10;
      case '=':
        v12 = sub_1001CDDA4(a1, a2 + 2, a3, a4);
LABEL_10:
        v6 = v12;
        v13 = 0;
        goto LABEL_48;
      default:
        v10 = 0;
        v9 = 0;
        break;
    }
  }

  v14 = *(a1 + 24) & 0x1F0;
  if ((v9 & 0x80u) == 0)
  {
    v10 = v9;
  }

  if (v10)
  {
    v15 = v4;
    goto LABEL_28;
  }

  if ((*(a1 + 24) & 0x1B0 | 0x40) == 0x40)
  {
    v16 = *v4;
    if (v16 == 92)
    {
      if (v14)
      {
        v17 = sub_1001CE244(a1, v4 + 1, a3, &v30);
      }

      else
      {
        v17 = sub_1001CE0D4(a1, v4 + 1, a3, &v30, v6);
      }

      v15 = v17;
      goto LABEL_28;
    }
  }

  else
  {
    LOBYTE(v16) = *v4;
  }

  if ((v9 & 0x80) != 0)
  {
    v18 = v30;
    *(&v30 + 1) = 1;
  }

  else
  {
    HIBYTE(v31) = 1;
    v18 = &v30;
  }

  *v18 = v16;
  *(v18 + 1) = 0;
  v15 = v4 + 1;
LABEL_28:
  if (v15 == a3 || (v19 = *v15, v19 == 93) || (v21 = v15 + 1, v15 + 1 == a3) || v19 != 45 || *v21 == 93)
  {
    if (SHIBYTE(v31) < 0)
    {
      if (*(&v30 + 1))
      {
        if (*(&v30 + 1) != 1)
        {
          v20 = v30;
LABEL_46:
          sub_1001CE928(v6, *v20, *(v20 + 1));
          goto LABEL_47;
        }

        v20 = v30;
        goto LABEL_37;
      }
    }

    else if (HIBYTE(v31))
    {
      v20 = &v30;
      if (HIBYTE(v31) != 1)
      {
        goto LABEL_46;
      }

LABEL_37:
      sub_1001CC97C(v6, *v20);
    }

LABEL_47:
    v13 = 1;
    v4 = v15;
    goto LABEL_48;
  }

  v4 = v15 + 2;
  v28[0] = 0;
  v28[1] = 0;
  v29 = 0;
  if (v15 + 2 != a3 && *v21 == 91 && *v4 == 46)
  {
    v22 = sub_1001CE00C(a1, v15 + 3, a3, v28);
LABEL_60:
    v4 = v22;
    goto LABEL_61;
  }

  if ((v14 | 0x40) == 0x40)
  {
    LODWORD(v21) = *v21;
    if (v21 == 92)
    {
      if (v14)
      {
        v22 = sub_1001CE244(a1, v15 + 2, a3, v28);
      }

      else
      {
        v22 = sub_1001CE0D4(a1, v15 + 2, a3, v28, v6);
      }

      goto LABEL_60;
    }
  }

  else
  {
    LOBYTE(v21) = *v21;
  }

  HIBYTE(v29) = 1;
  LOWORD(v28[0]) = v21;
LABEL_61:
  *v26 = v30;
  v27 = v31;
  v31 = 0;
  v30 = 0uLL;
  *__p = *v28;
  v25 = v29;
  v28[0] = 0;
  v28[1] = 0;
  v29 = 0;
  sub_1001CE528(v6, v26, __p);
  if (SHIBYTE(v25) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v27) < 0)
  {
    operator delete(v26[0]);
  }

  if (SHIBYTE(v29) < 0)
  {
    operator delete(v28[0]);
  }

  v13 = 1;
LABEL_48:
  if (SHIBYTE(v31) < 0)
  {
    operator delete(v30);
  }

  if (v13)
  {
    return v4;
  }

  return v6;
}

void sub_1001CDD44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (*(v28 - 49) < 0)
  {
    operator delete(*(v28 - 72));
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_1001CDDA4(uint64_t a1, _BYTE *a2, _BYTE *a3, uint64_t a4)
{
  v4 = a3 - a2 - 2;
  if (a3 - a2 < 2)
  {
    goto LABEL_32;
  }

  v7 = a2;
  for (i = a2; ; v7 = i)
  {
    v9 = *i++;
    if (v9 == 61 && *i == 93)
    {
      break;
    }

    if (!v4)
    {
      goto LABEL_32;
    }

    --v4;
  }

  if (v7 == a3)
  {
LABEL_32:
    sub_1001CD974();
  }

  v19 = 0;
  v20 = 0;
  v21 = 0;
  sub_1001CEA5C(a1, a2, v7, &v19);
  v10 = SHIBYTE(v21);
  if ((SHIBYTE(v21) & 0x8000000000000000) == 0)
  {
    if (HIBYTE(v21))
    {
      __p = 0uLL;
      v11 = &v19;
      v18 = 0;
      goto LABEL_13;
    }

LABEL_33:
    sub_1001CEA04();
  }

  v10 = v20;
  if (!v20)
  {
    goto LABEL_33;
  }

  __p = 0uLL;
  v18 = 0;
  v11 = v19;
LABEL_13:
  sub_1001CEC10(a1, v11, &v11[v10], &__p);
  v12 = HIBYTE(v18);
  if (v18 < 0)
  {
    v12 = *(&__p + 1);
  }

  if (v12)
  {
    sub_100005308((a4 + 136), &__p);
  }

  else
  {
    v13 = HIBYTE(v21);
    if (v21 < 0)
    {
      v13 = v20;
    }

    if (v13 == 2)
    {
      v15 = &v19;
      if (v21 < 0)
      {
        v15 = v19;
      }

      sub_1001CE928(a4, *v15, v15[1]);
    }

    else
    {
      if (v13 != 1)
      {
        sub_1001CEA04();
      }

      v14 = &v19;
      if (v21 < 0)
      {
        v14 = v19;
      }

      sub_1001CC97C(a4, *v14);
    }
  }

  if (SHIBYTE(v18) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v21) < 0)
  {
    operator delete(v19);
  }

  return v7 + 2;
}

void sub_1001CDF40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_1001CDF78(uint64_t a1, _BYTE *a2, _BYTE *a3, uint64_t a4)
{
  v4 = a3 - a2 - 2;
  if (a3 - a2 < 2)
  {
    goto LABEL_10;
  }

  v6 = a2;
  for (i = a2; ; v6 = i)
  {
    v8 = *i++;
    if (v8 == 58 && *i == 93)
    {
      break;
    }

    if (!v4)
    {
      goto LABEL_10;
    }

    --v4;
  }

  if (v6 == a3)
  {
LABEL_10:
    sub_1001CD974();
  }

  v9 = sub_1001CED88(a1, a2, v6, *(a1 + 24) & 1);
  if (!v9)
  {
    sub_1001CED30();
  }

  *(a4 + 160) |= v9;
  return v6 + 2;
}

_BYTE *sub_1001CE00C(uint64_t a1, _BYTE *a2, _BYTE *a3, uint64_t a4)
{
  v4 = a3 - a2 - 2;
  if (a3 - a2 < 2)
  {
    goto LABEL_14;
  }

  v6 = a2;
  for (i = a2; ; v6 = i)
  {
    v8 = *i++;
    if (v8 == 46 && *i == 93)
    {
      break;
    }

    if (!v4)
    {
      goto LABEL_14;
    }

    --v4;
  }

  if (v6 == a3)
  {
LABEL_14:
    sub_1001CD974();
  }

  sub_1001CEA5C(a1, a2, v6, &v12);
  if (*(a4 + 23) < 0)
  {
    operator delete(*a4);
  }

  *a4 = v12;
  v9 = v13;
  *(a4 + 16) = v13;
  v10 = HIBYTE(v9);
  if ((v10 & 0x80u) != 0)
  {
    v10 = *(a4 + 8);
  }

  if (v10 - 1 >= 2)
  {
    sub_1001CEA04();
  }

  return v6 + 2;
}

unsigned __int8 *sub_1001CE0D4(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5)
{
  if (a2 == a3)
  {
    sub_1001CB520();
  }

  v6 = *a2;
  if (v6 > 0x61)
  {
    if (*a2 > 0x72u)
    {
      if (v6 != 115)
      {
        if (v6 != 119)
        {
          goto LABEL_25;
        }

        *(a5 + 160) |= 0x500u;
        sub_1001CC97C(a5, 95);
        return a2 + 1;
      }

      v8 = *(a5 + 160) | 0x4000;
    }

    else
    {
      if (v6 == 98)
      {
        if (*(a4 + 23) < 0)
        {
          *(a4 + 8) = 1;
          a4 = *a4;
        }

        else
        {
          *(a4 + 23) = 1;
        }

        *a4 = 8;
        return a2 + 1;
      }

      if (v6 != 100)
      {
        goto LABEL_25;
      }

      v8 = *(a5 + 160) | 0x400;
    }

    *(a5 + 160) = v8;
    return a2 + 1;
  }

  if (*a2 <= 0x52u)
  {
    if (!*a2)
    {
      if (*(a4 + 23) < 0)
      {
        *(a4 + 8) = 1;
        a4 = *a4;
      }

      else
      {
        *(a4 + 23) = 1;
      }

      *a4 = 0;
      return a2 + 1;
    }

    if (v6 == 68)
    {
      v7 = *(a5 + 164) | 0x400;
LABEL_22:
      *(a5 + 164) = v7;
      return a2 + 1;
    }

    goto LABEL_25;
  }

  if (v6 == 83)
  {
    v7 = *(a5 + 164) | 0x4000;
    goto LABEL_22;
  }

  if (v6 == 87)
  {
    *(a5 + 164) |= 0x500u;
    sub_1001CEE64(a5, 95);
    return a2 + 1;
  }

LABEL_25:

  return sub_1001CB700(a1, a2, a3, a4);
}

unsigned __int8 *sub_1001CE244(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t *a4)
{
  if (a2 == a3)
  {
LABEL_71:
    sub_1001CB520();
  }

  v5 = *a2;
  if (v5 > 0x65u)
  {
    if (v5 <= 0x71u)
    {
      if (v5 == 102)
      {
        if (a4)
        {
          if (*(a4 + 23) < 0)
          {
            a4[1] = 1;
            a4 = *a4;
          }

          else
          {
            *(a4 + 23) = 1;
          }

          v9 = 12;
          goto LABEL_66;
        }

        goto LABEL_50;
      }

      if (v5 == 110)
      {
        if (a4)
        {
          if (*(a4 + 23) < 0)
          {
            a4[1] = 1;
            a4 = *a4;
          }

          else
          {
            *(a4 + 23) = 1;
          }

          v9 = 10;
          goto LABEL_66;
        }

        goto LABEL_50;
      }
    }

    else
    {
      switch(v5)
      {
        case 'r':
          if (a4)
          {
            if (*(a4 + 23) < 0)
            {
              a4[1] = 1;
              a4 = *a4;
            }

            else
            {
              *(a4 + 23) = 1;
            }

            v9 = 13;
            goto LABEL_66;
          }

          goto LABEL_50;
        case 't':
          if (a4)
          {
            if (*(a4 + 23) < 0)
            {
              a4[1] = 1;
              a4 = *a4;
            }

            else
            {
              *(a4 + 23) = 1;
            }

            v9 = 9;
            goto LABEL_66;
          }

          goto LABEL_50;
        case 'v':
          if (a4)
          {
            if (*(a4 + 23) < 0)
            {
              a4[1] = 1;
              a4 = *a4;
            }

            else
            {
              *(a4 + 23) = 1;
            }

            v9 = 11;
            goto LABEL_66;
          }

          goto LABEL_50;
      }
    }

    goto LABEL_39;
  }

  if (v5 <= 0x5Bu)
  {
    if (v5 != 34 && v5 != 47)
    {
      goto LABEL_39;
    }

LABEL_19:
    if (a4)
    {
      if (*(a4 + 23) < 0)
      {
        a4[1] = 1;
        a4 = *a4;
      }

      else
      {
        *(a4 + 23) = 1;
      }

      *a4 = v5;
      *(a4 + 1) = 0;
      return a2 + 1;
    }

    goto LABEL_50;
  }

  switch(v5)
  {
    case '\\':
      goto LABEL_19;
    case 'a':
      if (a4)
      {
        if (*(a4 + 23) < 0)
        {
          a4[1] = 1;
          a4 = *a4;
        }

        else
        {
          *(a4 + 23) = 1;
        }

        v9 = 7;
        goto LABEL_66;
      }

LABEL_50:
      sub_1001CBAFC(a1);
    case 'b':
      if (a4)
      {
        if (*(a4 + 23) < 0)
        {
          a4[1] = 1;
          a4 = *a4;
        }

        else
        {
          *(a4 + 23) = 1;
        }

        v9 = 8;
LABEL_66:
        *a4 = v9;
        return a2 + 1;
      }

      goto LABEL_50;
  }

LABEL_39:
  if ((v5 & 0xFFFFFFF8) != 0x30)
  {
    goto LABEL_71;
  }

  v6 = v5 - 48;
  v7 = a2 + 1;
  if (a2 + 1 != a3 && (*v7 & 0xF8) == 0x30)
  {
    v6 = *v7 + 8 * v6 - 48;
    v7 = a2 + 2;
    if (a2 + 2 != a3)
    {
      v8 = *v7 + 8 * v6 - 48;
      if ((*v7 & 0xF8) == 0x30)
      {
        v7 = a2 + 3;
        v6 = v8;
      }
    }
  }

  if (!a4)
  {
    sub_1001CBAFC(a1);
  }

  if (*(a4 + 23) < 0)
  {
    a4[1] = 1;
    a4 = *a4;
  }

  else
  {
    *(a4 + 23) = 1;
  }

  *a4 = v6;
  *(a4 + 1) = 0;
  return v7;
}

void sub_1001CE528(uint64_t a1, char *a2, char *a3)
{
  v3 = a3;
  v4 = a2;
  if (*(a1 + 170) == 1)
  {
    if (*(a1 + 169))
    {
      for (i = 0; ; ++i)
      {
        v7 = v4[23];
        v8 = v7 < 0 ? *(v4 + 1) : v4[23];
        if (i >= v8)
        {
          break;
        }

        v9 = v4;
        if ((v7 & 0x80000000) != 0)
        {
          v9 = *v4;
        }

        v10 = (*(**(a1 + 24) + 40))(*(a1 + 24), v9[i]);
        v11 = v4;
        if (v4[23] < 0)
        {
          v11 = *v4;
        }

        v11[i] = v10;
      }

      for (j = 0; ; ++j)
      {
        v20 = v3[23];
        v21 = v20 < 0 ? *(v3 + 1) : v3[23];
        if (j >= v21)
        {
          break;
        }

        v22 = v3;
        if ((v20 & 0x80000000) != 0)
        {
          v22 = *v3;
        }

        v23 = (*(**(a1 + 24) + 40))(*(a1 + 24), v22[j]);
        v24 = v3;
        if (v3[23] < 0)
        {
          v24 = *v3;
        }

        v24[j] = v23;
      }
    }

    else
    {
      for (k = 0; ; ++k)
      {
        v15 = a2[23];
        v16 = v15 < 0 ? *(a2 + 1) : a2[23];
        if (k >= v16)
        {
          break;
        }

        v17 = a2;
        if ((v15 & 0x80000000) != 0)
        {
          v17 = *a2;
        }

        v18 = a2;
        if ((v15 & 0x80000000) != 0)
        {
          v18 = *a2;
        }

        v18[k] = v17[k];
      }

      for (m = 0; ; ++m)
      {
        v26 = a3[23];
        v27 = v26 < 0 ? *(a3 + 1) : a3[23];
        if (m >= v27)
        {
          break;
        }

        v28 = a3;
        if ((v26 & 0x80000000) != 0)
        {
          v28 = *a3;
        }

        v29 = a3;
        if ((v26 & 0x80000000) != 0)
        {
          v29 = *a3;
        }

        v29[m] = v28[m];
      }
    }

    v30 = v4[23];
    if (v30 < 0)
    {
      v31 = v4;
      v4 = *v4;
      v30 = *(v31 + 1);
    }

    sub_1001CF060(a1 + 16, v4, &v4[v30]);
    v32 = v3[23];
    if (v32 < 0)
    {
      v33 = v3;
      v3 = *v3;
      v32 = *(v33 + 1);
    }

    sub_1001CF060(a1 + 16, v3, &v3[v32]);
    *v45 = v43;
    v46 = v44;
    *__p = *v41;
    v48 = v42;
    sub_1001CEF00(a1 + 88, v45);
    if (SHIBYTE(v48) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v46) < 0)
    {
      operator delete(v45[0]);
    }
  }

  else
  {
    v12 = a2[23];
    if (v12 < 0)
    {
      v13 = *(a2 + 1);
    }

    else
    {
      v13 = a2[23];
    }

    if (v13 != 1)
    {
      goto LABEL_74;
    }

    v34 = a3[23];
    if (v34 < 0)
    {
      v34 = *(a3 + 1);
    }

    if (v34 != 1)
    {
LABEL_74:
      sub_1001CF120();
    }

    if (*(a1 + 169) == 1)
    {
      v35 = a2;
      if ((v12 & 0x80000000) != 0)
      {
        v35 = *a2;
      }

      v36 = (*(**(a1 + 24) + 40))(*(a1 + 24), *v35);
      v37 = v4;
      if (v4[23] < 0)
      {
        v37 = *v4;
      }

      *v37 = v36;
      v38 = v3;
      if (v3[23] < 0)
      {
        v38 = *v3;
      }

      v39 = (*(**(a1 + 24) + 40))(*(a1 + 24), *v38);
      v40 = v3;
      if (v3[23] < 0)
      {
        v40 = *v3;
      }

      *v40 = v39;
    }

    *v45 = *v4;
    v46 = *(v4 + 2);
    *(v4 + 1) = 0;
    *(v4 + 2) = 0;
    *v4 = 0;
    *__p = *v3;
    v48 = *(v3 + 2);
    *v3 = 0;
    *(v3 + 1) = 0;
    *(v3 + 2) = 0;
    sub_1001CEF00(a1 + 88, v45);
    if (SHIBYTE(v48) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v46) < 0)
    {
      operator delete(v45[0]);
    }
  }
}

void sub_1001CE928(uint64_t a1, unsigned __int8 a2, uint64_t a3)
{
  if (*(a1 + 169) == 1)
  {
    v5 = (*(**(a1 + 24) + 40))(*(a1 + 24));
    v11 = v5 | ((*(**(a1 + 24) + 40))(*(a1 + 24), a3) << 8);
    v6 = a1 + 112;
    v7 = &v11;
  }

  else
  {
    v8 = a2 | (a3 << 8);
    if (*(a1 + 170) == 1)
    {
      v10 = v8;
      v6 = a1 + 112;
      v7 = &v10;
    }

    else
    {
      v9 = v8;
      v6 = a1 + 112;
      v7 = &v9;
    }
  }

  sub_1001CF178(v6, v7);
}

void sub_1001CEA04()
{
  exception = __cxa_allocate_exception(0x18uLL);
  std::regex_error::regex_error(exception, error_collate);
}

void sub_1001CEA5C(uint64_t a1@<X0>, _BYTE *a2@<X1>, _BYTE *a3@<X2>, uint64_t a4@<X8>)
{
  memset(&__s, 0, sizeof(__s));
  sub_1001CD6B4(&__s, a2, a3, a3 - a2);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    if (!__s.__r_.__value_.__l.__size_)
    {
      goto LABEL_9;
    }

    p_s = __s.__r_.__value_.__r.__words[0];
  }

  else
  {
    if (!*(&__s.__r_.__value_.__s + 23))
    {
      return;
    }

    p_s = &__s;
  }

  std::__get_collation_name(&v11, p_s);
  *a4 = *&v11.__r_.__value_.__l.__data_;
  v7 = v11.__r_.__value_.__r.__words[2];
  *(a4 + 16) = *(&v11.__r_.__value_.__l + 2);
  v8 = HIBYTE(v7);
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a4 + 8);
  }

  if (v8)
  {
    goto LABEL_9;
  }

  if ((SHIBYTE(__s.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    if (__s.__r_.__value_.__l.__size_ >= 3)
    {
      goto LABEL_9;
    }
  }

  else if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) >= 3)
  {
    return;
  }

  (*(**(a1 + 16) + 32))(&v11);
  if (*(a4 + 23) < 0)
  {
    operator delete(*a4);
  }

  *a4 = v11;
  if ((*(a4 + 23) & 0x80000000) == 0)
  {
    v9 = *(a4 + 23);
    if (v9 != 12 && v9 != 1)
    {
      *a4 = 0;
      *(a4 + 23) = 0;
      goto LABEL_9;
    }

    goto LABEL_23;
  }

  v10 = *(a4 + 8);
  if (v10 == 1 || v10 == 12)
  {
LABEL_23:
    std::string::operator=(a4, &__s);
    goto LABEL_9;
  }

  **a4 = 0;
  *(a4 + 8) = 0;
LABEL_9:
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s.__r_.__value_.__l.__data_);
  }
}

void sub_1001CEBDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 + 23) < 0)
  {
    operator delete(*v17);
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001CEC10(uint64_t a1@<X0>, _BYTE *a2@<X1>, _BYTE *a3@<X2>, uint64_t *a4@<X8>)
{
  __p = 0;
  v12 = 0;
  v13 = 0;
  sub_1001CD6B4(&__p, a2, a3, a3 - a2);
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  v6 = HIBYTE(v13);
  if (v13 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if (v13 < 0)
  {
    v6 = v12;
  }

  (*(**(a1 + 16) + 32))(*(a1 + 16), p_p, &p_p[v6]);
  v8 = *(a4 + 23);
  v9 = v8;
  if ((v8 & 0x80u) != 0)
  {
    v8 = a4[1];
  }

  if (v8 != 1)
  {
    if (v8 == 12)
    {
      if (v9 >= 0)
      {
        v10 = a4;
      }

      else
      {
        v10 = *a4;
      }

      *(v10 + 11) = *(v10 + 3);
    }

    else if (v9 < 0)
    {
      **a4 = 0;
      a4[1] = 0;
    }

    else
    {
      *a4 = 0;
      *(a4 + 23) = 0;
    }
  }

  if (SHIBYTE(v13) < 0)
  {
    operator delete(__p);
  }
}

void sub_1001CED14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001CED30()
{
  exception = __cxa_allocate_exception(0x18uLL);
  std::regex_error::regex_error(exception, error_ctype);
}

uint64_t sub_1001CED88(uint64_t a1, _BYTE *a2, _BYTE *a3, BOOL a4)
{
  __p = 0;
  v12 = 0;
  v13 = 0;
  sub_1001CD6B4(&__p, a2, a3, a3 - a2);
  v6 = HIBYTE(v13);
  if (v13 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if (v13 < 0)
  {
    v6 = v12;
  }

  (*(**(a1 + 8) + 48))(*(a1 + 8), p_p, &p_p[v6]);
  if (v13 >= 0)
  {
    v8 = &__p;
  }

  else
  {
    v8 = __p;
  }

  classname = std::__get_classname(v8, a4);
  if (SHIBYTE(v13) < 0)
  {
    operator delete(__p);
  }

  return classname;
}

void sub_1001CEE48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001CEE64(uint64_t a1, char a2)
{
  v7 = a2;
  if (*(a1 + 169) == 1)
  {
    v6 = (*(**(a1 + 24) + 40))(*(a1 + 24));
    v3 = a1 + 64;
    v4 = &v6;
LABEL_5:
    sub_1001CD884(v3, v4);
    return;
  }

  if (*(a1 + 170) == 1)
  {
    v5 = a2;
    v3 = a1 + 64;
    v4 = &v5;
    goto LABEL_5;
  }

  sub_1001CD884(a1 + 64, &v7);
}

uint64_t sub_1001CEF00(uint64_t result, __int128 *a2)
{
  v3 = result;
  v4 = *(result + 8);
  v5 = *(result + 16);
  if (v4 >= v5)
  {
    v9 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *result) >> 4);
    v10 = v9 + 1;
    if (v9 + 1 > 0x555555555555555)
    {
      sub_1000CE3D4();
    }

    v11 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *result) >> 4);
    if (2 * v11 > v10)
    {
      v10 = 2 * v11;
    }

    if (v11 >= 0x2AAAAAAAAAAAAAALL)
    {
      v12 = 0x555555555555555;
    }

    else
    {
      v12 = v10;
    }

    v20[4] = result;
    if (v12)
    {
      sub_1001904B4(result, v12);
    }

    v13 = 48 * v9;
    v14 = *a2;
    *(v13 + 16) = *(a2 + 2);
    *v13 = v14;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v15 = *(a2 + 24);
    *(v13 + 40) = *(a2 + 5);
    *(v13 + 24) = v15;
    *(a2 + 4) = 0;
    *(a2 + 5) = 0;
    *(a2 + 3) = 0;
    v8 = 48 * v9 + 48;
    v16 = *(result + 8) - *result;
    v17 = v13 - v16;
    memcpy((v13 - v16), *result, v16);
    v18 = *v3;
    *v3 = v17;
    v3[1] = v8;
    v19 = v3[2];
    v3[2] = 0;
    v20[2] = v18;
    v20[3] = v19;
    v20[0] = v18;
    v20[1] = v18;
    result = sub_1001C7794(v20);
  }

  else
  {
    v6 = *a2;
    *(v4 + 16) = *(a2 + 2);
    *v4 = v6;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v7 = *(a2 + 24);
    *(v4 + 40) = *(a2 + 5);
    *(v4 + 24) = v7;
    *(a2 + 4) = 0;
    *(a2 + 5) = 0;
    *(a2 + 3) = 0;
    v8 = v4 + 48;
  }

  v3[1] = v8;
  return result;
}

void sub_1001CF060(uint64_t a1, _BYTE *a2, _BYTE *a3)
{
  __p = 0;
  v7 = 0;
  v8 = 0;
  sub_1001CD6B4(&__p, a2, a3, a3 - a2);
  v4 = HIBYTE(v8);
  if (v8 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if (v8 < 0)
  {
    v4 = v7;
  }

  (*(**(a1 + 16) + 32))(*(a1 + 16), p_p, &p_p[v4]);
  if (SHIBYTE(v8) < 0)
  {
    operator delete(__p);
  }
}

void sub_1001CF104(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001CF120()
{
  exception = __cxa_allocate_exception(0x18uLL);
  std::regex_error::regex_error(exception, error_range);
}

void sub_1001CF178(uint64_t a1, _WORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 1;
    if (v7 <= -2)
    {
      sub_1000CE3D4();
    }

    v8 = v4 - *a1;
    if (v8 <= v7 + 1)
    {
      v9 = v7 + 1;
    }

    else
    {
      v9 = v8;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFFELL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      sub_1001B9700(a1, v10);
    }

    v11 = (2 * v7);
    *v11 = *a2;
    v6 = 2 * v7 + 2;
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

void *sub_1001CF248(void *a1)
{
  *a1 = off_101E2F8C0;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_1001CF2B4(void *a1)
{
  *a1 = off_101E2F8C0;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  operator delete();
}

uint64_t sub_1001CF340(uint64_t result, uint64_t a2)
{
  *a2 = -994;
  *(*(a2 + 32) + 24 * (*(result + 16) - 1)) = *(a2 + 16);
  *(a2 + 80) = *(result + 8);
  return result;
}

void *sub_1001CF370(void *a1)
{
  *a1 = off_101E2F8C0;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_1001CF3DC(void *a1)
{
  *a1 = off_101E2F8C0;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  operator delete();
}

uint64_t sub_1001CF468(uint64_t result, uint64_t a2)
{
  *a2 = -994;
  v2 = *(a2 + 32) + 24 * (*(result + 16) - 1);
  *(v2 + 8) = *(a2 + 16);
  *(v2 + 16) = 1;
  *(a2 + 80) = *(result + 8);
  return result;
}

unsigned __int8 *sub_1001CF630(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, int *a4)
{
  if (a2 != a3)
  {
    v4 = *a2;
    if ((v4 & 0xF8) == 0x30 || (v4 & 0xFE) == 0x38)
    {
      v5 = v4 - 48;
      *a4 = v5;
      if (++a2 != a3)
      {
        do
        {
          v6 = *a2;
          if ((v6 & 0xF8) != 0x30 && (v6 & 0xFE) != 0x38)
          {
            break;
          }

          if (v5 >= 214748364)
          {
            sub_1001CF6CC();
          }

          v5 = v6 + 10 * v5 - 48;
          *a4 = v5;
          ++a2;
        }

        while (a2 != a3);
      }
    }
  }

  return a2;
}

void sub_1001CF6CC()
{
  exception = __cxa_allocate_exception(0x18uLL);
  std::regex_error::regex_error(exception, error_badbrace);
}

void sub_1001CF724()
{
  exception = __cxa_allocate_exception(0x18uLL);
  std::regex_error::regex_error(exception, error_brace);
}

void sub_1001CF780(void *a1)
{
  sub_1001CF8D4(a1);

  operator delete();
}

unsigned int *sub_1001CF7B8(unsigned int *result, void *a2)
{
  v2 = (a2[7] + 16 * result[10]);
  if (*a2 == -991)
  {
    v3 = *v2 + 1;
    *v2 = v3;
    v4 = *(result + 3);
    v5 = *(result + 4);
    v6 = v3 < v5;
    if (v3 < v5 && v3 >= v4)
    {
      v8 = v2[1];
      v6 = v3 < v5 && v8 != a2[2];
    }

    if (!v6 || v3 < v4)
    {
      *a2 = -994;
      if (!v6)
      {
        goto LABEL_25;
      }

LABEL_22:
      a2[10] = *(result + 1);
      return sub_1001CF988(result, a2);
    }

    goto LABEL_23;
  }

  *v2 = 0;
  if (*(result + 4))
  {
    if (*(result + 3))
    {
      *a2 = -994;
      goto LABEL_22;
    }

LABEL_23:
    *a2 = -992;
    return result;
  }

  *a2 = -994;
LABEL_25:
  a2[10] = *(result + 2);
  return result;
}

unsigned int *sub_1001CF868(unsigned int *result, int a2, void *a3)
{
  *a3 = -994;
  if (*(result + 52) == a2)
  {
    a3[10] = *(result + 2);
  }

  else
  {
    a3[10] = *(result + 1);
    return sub_1001CF988(result, a3);
  }

  return result;
}

void sub_1001CF89C(void *a1)
{
  sub_1001CF8D4(a1);

  operator delete();
}

void *sub_1001CF8D4(void *a1)
{
  *a1 = off_101E2FD40;
  v2 = a1[2];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *a1 = off_101E2F8C0;
  v3 = a1[1];
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

unsigned int *sub_1001CF988(unsigned int *result, void *a2)
{
  v2 = result[11];
  *(a2[7] + 16 * result[10] + 8) = a2[2];
  v3 = result[12];
  if (v2 != v3)
  {
    v4 = v2 - 1;
    v5 = a2[3];
    v6 = v3 - 1 - v4;
    v7 = (a2[4] + 24 * v4 + 16);
    do
    {
      *(v7 - 2) = v5;
      *(v7 - 1) = v5;
      *v7 = 0;
      v7 += 24;
      --v6;
    }

    while (v6);
  }

  return result;
}

uint64_t sub_1001CF9F0(uint64_t result, uint64_t a2)
{
  *a2 = -991;
  *(a2 + 80) = *(result + 8);
  return result;
}

void sub_1001CFA08(void *a1)
{
  sub_1001CF8D4(a1);

  operator delete();
}

uint64_t sub_1001CFA4C(uint64_t result, int a2, uint64_t a3)
{
  *a3 = -994;
  v3 = 8;
  if (a2)
  {
    v3 = 16;
  }

  *(a3 + 80) = *(result + v3);
  return result;
}

uint64_t sub_1001CFA88(uint64_t result, uint64_t a2)
{
  *a2 = -994;
  *(a2 + 80) = *(result + 8);
  return result;
}

void sub_1001CFA9C()
{
  exception = __cxa_allocate_exception(0x18uLL);
  std::regex_error::regex_error(exception, __re_err_empty);
}

unsigned __int8 *sub_1001CFAF4(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 == a3)
  {
    return a2;
  }

  v6 = sub_1001CFB90(a1, a2, a3);
  if (v6 == a2)
  {
    return a2;
  }

  return sub_1001CFC94(a1, v6, a3);
}

_BYTE *sub_1001CFB90(uint64_t a1, _BYTE *a2, _BYTE *a3)
{
  v6 = sub_1001CFE58(a1, a2, a3);
  v7 = v6;
  if (v6 == a2 && v6 != a3 && v6 + 1 != a3 && *v6 == 92)
  {
    v8 = v6[1];
    if (v8 == 40)
    {
      v9 = v6 + 2;
      sub_1001CB258(a1);
      do
      {
        v10 = v9;
        v11 = sub_1001CFAF4(a1, v9, a3);
        v9 = v11;
      }

      while (v11 != v10);
      if (v10 == a3 || v11 + 1 == a3 || *v11 != 92 || v11[1] != 41)
      {
        sub_1001C97F0();
      }

      v7 = v11 + 2;
      sub_1001CB2E0(a1);
    }

    else
    {
      v12 = sub_1001D014C(a1, v8);
      v13 = 2;
      if (!v12)
      {
        v13 = 0;
      }

      v7 += v13;
    }
  }

  return v7;
}

unsigned __int8 *sub_1001CFC94(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 != a3)
  {
    v4 = *a2;
    if (v4 == 42)
    {
      sub_1001CF4A0();
    }

    if (a2 + 1 != a3 && v4 == 92 && a2[1] == 123)
    {
      v7 = a2 + 2;
      v13 = 0;
      v8 = sub_1001CF630(a1, a2 + 2, a3, &v13);
      if (v8 == v7)
      {
        goto LABEL_24;
      }

      if (v8 != a3)
      {
        v9 = v8 + 1;
        v10 = *v8;
        if (v10 == 44)
        {
          v12 = -1;
          v11 = sub_1001CF630(a1, v9, a3, &v12);
          if (v11 != a3 && v11 + 1 != a3 && *v11 == 92 && v11[1] == 125)
          {
            if (v12 == -1 || v12 >= v13)
            {
              sub_1001CF4A0();
            }

LABEL_24:
            sub_1001CF6CC();
          }
        }

        else if (v9 != a3 && v10 == 92 && *v9 == 125)
        {
          sub_1001CF4A0();
        }
      }

      sub_1001CF724();
    }
  }

  return a2;
}

_BYTE *sub_1001CFE58(uint64_t a1, _BYTE *a2, _BYTE *a3)
{
  if (a2 != a3)
  {
    v6 = *a2;
    if ((a2 + 1 != a3 || v6 != 36) && ((v6 - 46) > 0x2E || ((1 << (v6 - 46)) & 0x600000000001) == 0))
    {
      sub_1001CBAFC(a1);
    }

    v8 = sub_1001CFF9C(a1, a2, a3);
    v9 = v8;
    if (v8 == a2)
    {
      if (*v8 == 46)
      {
        operator new();
      }

      goto LABEL_12;
    }

    return v9;
  }

  v9 = sub_1001CFF9C(a1, a2, a3);
  if (v9 != a2)
  {
    return v9;
  }

LABEL_12:

  return sub_1001CB13C(a1, a2, a3);
}

_BYTE *sub_1001CFF9C(uint64_t a1, _BYTE *a2, _BYTE *a3)
{
  if (a2 != a3 && a2 + 1 != a3 && *a2 == 92)
  {
    v3 = a2[1];
    if ((v3 - 36) <= 0x3A && ((1 << (v3 - 36)) & 0x580000000000441) != 0)
    {
      sub_1001CBAFC(a1);
    }
  }

  return a2;
}

void *sub_1001D0014(void *a1)
{
  *a1 = off_101E2F8C0;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_1001D0080(void *a1)
{
  *a1 = off_101E2F8C0;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  operator delete();
}

uint64_t sub_1001D010C(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a2 + 24) || !*v2)
  {
    v3 = 0;
    *a2 = -993;
  }

  else
  {
    *a2 = -995;
    *(a2 + 16) = v2 + 1;
    v3 = *(result + 8);
  }

  *(a2 + 80) = v3;
  return result;
}

uint64_t sub_1001D014C(uint64_t a1, unsigned __int8 a2)
{
  if (((a2 & 0xF8) == 0x30 || (a2 & 0xFE) == 0x38) && a2 - 49 <= 8)
  {
    if (a2 - 48 <= *(a1 + 28))
    {
      sub_1001CBC94(a1);
    }

    sub_1001CBC3C();
  }

  return 0;
}

unsigned __int8 *sub_1001D01AC(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v6 = sub_1001D020C(a1, a2, a3);
  if (v6 == a2)
  {
    sub_1001CFA9C();
  }

  do
  {
    v7 = v6;
    v6 = sub_1001D020C(a1, v6, a3);
  }

  while (v6 != v7);
  return v7;
}

unsigned __int8 *sub_1001D020C(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v6 = sub_1001D0350(a1, a2, a3);
  v7 = v6;
  if (v6 == a2 && v6 != a3)
  {
    v8 = *v6;
    switch(v8)
    {
      case '$':
        sub_1001C9638();
      case '(':
        sub_1001CB258(a1);
        ++*(a1 + 36);
        v9 = sub_1001C8560(a1, v7 + 1, a3);
        if (v9 == a3 || (v10 = v9, *v9 != 41))
        {
          sub_1001C97F0();
        }

        sub_1001CB2E0(a1);
        --*(a1 + 36);
        v7 = v10 + 1;
        break;
      case '^':
        sub_1001C95B4();
    }
  }

  if (v7 == a2)
  {
    return v7;
  }

  return sub_1001C92AC(a1, v7, a3);
}

unsigned __int8 *sub_1001D0350(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v6 = sub_1001D0444(a1, a2, a3);
  if (v6 != a2)
  {
    return v6;
  }

  v7 = sub_1001D04D0(a1, a2, a3);
  v6 = v7;
  if (v7 != a2)
  {
    return v6;
  }

  if (a2 != a3 && *v7 == 46)
  {
    operator new();
  }

  return sub_1001CB13C(a1, a2, a3);
}

unsigned __int8 *sub_1001D0444(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 != a3)
  {
    v3 = *a2;
    v4 = (v3 - 36);
    if (v4 > 0x3A)
    {
      goto LABEL_8;
    }

    if (((1 << (v3 - 36)) & 0x5800000080004D1) != 0)
    {
      return a2;
    }

    if (v4 == 5)
    {
      if (*(a1 + 36))
      {
        return a2;
      }
    }

    else
    {
LABEL_8:
      if ((v3 - 123) < 2)
      {
        return a2;
      }
    }

    sub_1001CBAFC(a1);
  }

  return a2;
}

unsigned __int8 *sub_1001D04D0(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 == a3)
  {
    return v3;
  }

  v4 = a2 + 1;
  if (v3 + 1 == a3 || *v3 != 92)
  {
    return v3;
  }

  v5 = *v4;
  v6 = (v5 - 36) > 0x3A || ((1 << (v5 - 36)) & 0x5800000080004F1) == 0;
  if (!v6 || (v5 - 123) < 3)
  {
    sub_1001CBAFC(a1);
  }

  if ((*(a1 + 24) & 0x1F0) != 0x40)
  {
    v8 = sub_1001D014C(a1, v5);
    v9 = 2;
    if (!v8)
    {
      v9 = 0;
    }

    v3 += v9;
    return v3;
  }

  return sub_1001CE244(a1, v4, a3, 0);
}

std::string *sub_1001D05A8(std::string *a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, int a6)
{
  v6 = a6;
  v9 = a2;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  *v26 = 0u;
  memset(v25, 0, sizeof(v25));
  sub_1001D0C24(v25, a2, a3, a4, a6);
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  *__p = 0u;
  memset(v17, 0, sizeof(v17));
  if (sub_1001D0764(v25, v17))
  {
    if ((v6 & 0x200) == 0)
    {
      while (v9 != a3)
      {
        std::string::push_back(a1, *v9++);
      }
    }
  }

  else
  {
    v11 = strlen(a5);
    v12 = 0;
    v13 = 0;
    while (!sub_1001D0764(v25, v17))
    {
      if ((v6 & 0x200) == 0)
      {
        v15 = *(&v29 + 1);
        for (i = v29; i != v15; ++i)
        {
          std::string::push_back(a1, *i);
        }
      }

      a1 = sub_1001D0800(v26, a1, a5, &a5[v11], v6);
      v12 = *(&v30 + 1);
      v13 = v31;
      if ((v6 & 0x400) != 0)
      {
        break;
      }

      sub_1001D0A60(v25);
    }

    if ((v6 & 0x200) == 0)
    {
      while (v12 != v13)
      {
        std::string::push_back(a1, *v12++);
      }
    }
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v26[0])
  {
    v26[1] = v26[0];
    operator delete(v26[0]);
  }

  return a1;
}

void sub_1001D0724(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a31)
  {
    operator delete(a31);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_1001D0764(uint64_t a1, uint64_t a2)
{
  v6 = a1 + 32;
  v4 = *(a1 + 32);
  v5 = *(v6 + 8);
  v9 = a2 + 32;
  v7 = *(a2 + 32);
  v8 = *(v9 + 8);
  v10 = v8 == v7 && v5 == v4;
  if (v5 != v4 && v8 != v7)
  {
    return *a1 == *a2 && *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24) && sub_1001D27A4(v4, v7) == 0;
  }

  return v10;
}

std::string *sub_1001D0800(std::string::value_type ***a1, std::string *this, unsigned __int8 *a3, unsigned __int8 *a4, __int16 a5)
{
  v6 = a3;
  if ((a5 & 0x100) != 0)
  {
    if (a3 == a4)
    {
      return this;
    }

    while (1)
    {
      v29 = *v6;
      if (v29 == 92)
      {
        v33 = v6 + 1;
        if (v6 + 1 != a4)
        {
          v29 = *v33;
          v34 = v29 - 48;
          if ((v29 - 48) <= 9)
          {
            v35 = &(*a1)[3 * (v29 - 48)];
            if (0xAAAAAAAAAAAAAAABLL * (a1[1] - *a1) <= v34)
            {
              v35 = (a1 + 3);
            }

            v36 = *v35;
            v37 = *(v35 + 8);
            while (v36 != v37)
            {
              v38 = *v36++;
              std::string::push_back(this, v38);
            }

            goto LABEL_54;
          }

          ++v6;
        }
      }

      else if (v29 == 38)
      {
        v30 = **a1;
        v31 = (*a1)[1];
        while (v30 != v31)
        {
          v32 = *v30++;
          std::string::push_back(this, v32);
        }

        goto LABEL_53;
      }

      std::string::push_back(this, v29);
LABEL_53:
      v33 = v6;
LABEL_54:
      v6 = v33 + 1;
      if (v33 + 1 == a4)
      {
        return this;
      }
    }
  }

  if (a3 != a4)
  {
    do
    {
      v9 = *v6;
      v10 = v6 + 1;
      if (v9 == 36 && v10 != a4)
      {
        v9 = *v10;
        if (v9 > 0x26)
        {
          if (v9 == 39)
          {
            v26 = a1[9];
            v27 = a1[10];
            while (v26 != v27)
            {
              v28 = *v26++;
              std::string::push_back(this, v28);
            }

            goto LABEL_10;
          }

          if (v9 == 96)
          {
            v15 = a1[6];
            v16 = a1[7];
            while (v15 != v16)
            {
              v17 = *v15++;
              std::string::push_back(this, v17);
            }

            goto LABEL_10;
          }
        }

        else
        {
          if (v9 == 36)
          {
            goto LABEL_9;
          }

          if (v9 == 38)
          {
            v12 = **a1;
            v13 = (*a1)[1];
            while (v12 != v13)
            {
              v14 = *v12++;
              std::string::push_back(this, v14);
            }

            goto LABEL_10;
          }
        }

        LODWORD(v18) = v9 - 48;
        if (v18 <= 9)
        {
          v18 = v18;
          if (v6 + 2 != a4)
          {
            v19 = v6[2];
            v20 = v19 - 48;
            v21 = v19 + 10 * v18 - 48;
            if (v20 > 9)
            {
              v10 = v6 + 1;
            }

            else
            {
              v18 = v21;
              v10 = v6 + 2;
            }
          }

          if (0xAAAAAAAAAAAAAAABLL * (a1[1] - *a1) <= v18)
          {
            v22 = (a1 + 3);
          }

          else
          {
            v22 = &(*a1)[3 * v18];
          }

          v23 = *v22;
          v24 = *(v22 + 8);
          while (v23 != v24)
          {
            v25 = *v23++;
            std::string::push_back(this, v25);
          }

          goto LABEL_10;
        }

        LOBYTE(v9) = 36;
      }

      v10 = v6;
LABEL_9:
      std::string::push_back(this, v9);
LABEL_10:
      v6 = v10 + 1;
    }

    while (v10 + 1 != a4);
  }

  return this;
}

uint64_t sub_1001D0A60(uint64_t a1)
{
  v3 = a1 + 32;
  v2 = *(a1 + 32);
  v4 = *(v3 - 8);
  v5 = v4 | 0x800;
  *(v3 - 8) = v4 | 0x800;
  if (*(v3 + 8) == v2)
  {
    v6 = (v3 + 24);
  }

  else
  {
    v6 = v2;
  }

  v7 = v6[1];
  if (*v6 != v7)
  {
    v8 = v6[1];
LABEL_6:
    *(a1 + 24) = v5 | 0x80;
    v10 = *(a1 + 8);
    v9 = *(a1 + 16);
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    *__p = 0u;
    v11 = sub_1001D0D18(v9, v8, v10, __p, v5 | 0x80u);
    sub_1001D0EE4(v3, v8, v10, __p, (v5 & 0x800) != 0);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (v11)
    {
      *(a1 + 80) = v7;
      *(a1 + 96) = *(a1 + 88) != v7;
      return a1;
    }

    v2 = *v3;
    goto LABEL_16;
  }

  v12 = *(a1 + 8);
  if (v12 == v7)
  {
LABEL_16:
    if (v2)
    {
      *(a1 + 40) = v2;
      operator delete(v2);
      *v3 = 0;
      *(v3 + 8) = 0;
      *(v3 + 16) = 0;
    }

    *(a1 + 128) = 0;
    *v3 = 0u;
    *(v3 + 16) = 0u;
    *(v3 + 25) = 0u;
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
    *(a1 + 96) = 0;
    *(a1 + 104) = 0;
    *(a1 + 112) = 0;
    *(a1 + 120) = 0;
    *(a1 + 136) = 0;
    return a1;
  }

  v13 = *(a1 + 16);
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  *__p = 0u;
  v14 = sub_1001D0D18(v13, v7, v12, __p, v4 | 0x860u);
  sub_1001D0EE4(v3, v7, v12, __p, 1);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if ((v14 & 1) == 0)
  {
    v8 = v7 + 1;
    v5 = *(a1 + 24);
    goto LABEL_6;
  }

  return a1;
}

void sub_1001D0C04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1001D0C24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v5 = a5;
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  *(a1 + 32) = 0u;
  v9 = a1 + 32;
  *(a1 + 24) = a5;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 57) = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  *__p = 0u;
  sub_1001D0D18(a4, a2, a3, __p, a5);
  sub_1001D0EE4(v9, a2, a3, __p, (v5 & 0x800) != 0);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return a1;
}

void sub_1001D0CEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  v13 = *v11;
  if (*v11)
  {
    *(v10 + 40) = v13;
    operator delete(v13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1001D0D18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  if ((a5 & 0x80) != 0)
  {
    v9 = a5 & 0xFFA;
  }

  else
  {
    v9 = a5;
  }

  sub_1001CA0A0(a4, *(a1 + 28) + 1, a2, a3, (v9 & 0x800) >> 11);
  if (sub_1001D1068(a1, a2, a3, a4, v9, (v9 & 0x800) == 0))
  {
    if (*(a4 + 8) == *a4)
    {
      v10 = (a4 + 24);
    }

    else
    {
      v10 = *a4;
    }

LABEL_19:
    v16 = *v10;
    *(a4 + 56) = *v10;
    *(a4 + 64) = *(a4 + 48) != v16;
    v17 = v10[1];
    *(a4 + 72) = v17;
    *(a4 + 88) = v17 != *(a4 + 80);
    return 1;
  }

  if (a2 != a3 && (v9 & 0x40) == 0)
  {
    v11 = a2 + 1;
    if (v11 != a3)
    {
      v12 = (a4 + 24);
      do
      {
        sub_1001CA4D0(a4, 0xAAAAAAAAAAAAAAABLL * ((*(a4 + 8) - *a4) >> 3), (a4 + 24));
        v13 = sub_1001D1068(a1, v11, a3, a4, v9 | 0x80u, 0);
        v15 = *a4;
        v14 = *(a4 + 8);
        if (v13)
        {
          goto LABEL_16;
        }

        sub_1001CA4D0(a4, 0xAAAAAAAAAAAAAAABLL * ((v14 - v15) >> 3), (a4 + 24));
      }

      while (++v11 != a3);
    }

    v12 = (a4 + 24);
    sub_1001CA4D0(a4, 0xAAAAAAAAAAAAAAABLL * ((*(a4 + 8) - *a4) >> 3), (a4 + 24));
    if (sub_1001D1068(a1, v11, a3, a4, v9 | 0x80u, 0))
    {
      v15 = *a4;
      v14 = *(a4 + 8);
LABEL_16:
      if (v14 == v15)
      {
        v10 = v12;
      }

      else
      {
        v10 = v15;
      }

      goto LABEL_19;
    }
  }

  result = 0;
  *(a4 + 8) = *a4;
  return result;
}

void sub_1001D0EE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, char a5)
{
  v10 = a4[6];
  sub_1001D25EC(a1, 0xAAAAAAAAAAAAAAABLL * ((a4[1] - *a4) >> 3));
  v11 = *a1;
  if (*(a1 + 8) == *a1)
  {
    v14 = a2 - v10;
  }

  else
  {
    v12 = 0;
    v13 = 0;
    v14 = a2 - v10;
    v16 = *a4;
    v15 = a4[1];
    do
    {
      v17 = 0xAAAAAAAAAAAAAAABLL * ((v15 - v16) >> 3);
      v18 = (v16 + v12);
      if (v17 <= v13)
      {
        v19 = a4 + 3;
      }

      else
      {
        v19 = v18;
      }

      *(v11 + v12) = v14 + *v19;
      if (0xAAAAAAAAAAAAAAABLL * ((a4[1] - *a4) >> 3) <= v13)
      {
        v20 = a4 + 3;
      }

      else
      {
        v20 = (*a4 + v12);
      }

      *(*a1 + v12 + 8) = v14 + v20[1];
      v16 = *a4;
      v15 = a4[1];
      if (0xAAAAAAAAAAAAAAABLL * ((v15 - *a4) >> 3) <= v13)
      {
        v21 = a4 + 3;
      }

      else
      {
        v21 = (*a4 + v12);
      }

      v22 = *(v21 + 16);
      v11 = *a1;
      v23 = *(a1 + 8);
      *(*a1 + v12 + 16) = v22;
      ++v13;
      v12 += 24;
    }

    while (v13 < 0xAAAAAAAAAAAAAAABLL * ((v23 - v11) >> 3));
  }

  *(a1 + 24) = a3;
  *(a1 + 32) = a3;
  *(a1 + 40) = 0;
  v24 = v14 + a4[6];
  *(a1 + 48) = v24;
  *(a1 + 56) = v14 + a4[7];
  *(a1 + 64) = *(a4 + 64);
  *(a1 + 72) = v14 + a4[9];
  *(a1 + 80) = v14 + a4[10];
  *(a1 + 88) = *(a4 + 88);
  if ((a5 & 1) == 0)
  {
    *(a1 + 104) = v24;
  }

  *(a1 + 96) = *(a4 + 96);
}

uint64_t sub_1001D1068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, int a5, char a6)
{
  if ((*(a1 + 24) & 0x1F0) == 0)
  {
    return sub_1001CA114(a1, a2, a3, a4, a5, a6);
  }

  if (*(a1 + 28))
  {
    return sub_1001D15E4(a1, a2, a3, a4, a5, a6);
  }

  return sub_1001D1088(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_1001D1088(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, int a5, char a6)
{
  v57 = 0u;
  v58 = 0u;
  v56 = 0u;
  v6 = *(a1 + 40);
  if (!v6)
  {
    goto LABEL_70;
  }

  LODWORD(v55[0]) = 0;
  memset(v55 + 8, 0, 80);
  *(&v55[5] + 5) = 0;
  sub_1001D1AC0(&v56, v55);
  if (*(&v55[3] + 1))
  {
    *&v55[4] = *(&v55[3] + 1);
    operator delete(*(&v55[3] + 1));
  }

  if (*&v55[2])
  {
    *(&v55[2] + 1) = *&v55[2];
    operator delete(*&v55[2]);
  }

  v51 = a4;
  v13 = v56.i64[1];
  v14 = *(&v58 + 1) + v58 - 1;
  v15 = v14 / 0x2A;
  v16 = *(v56.i64[1] + 8 * (v14 / 0x2A));
  v17 = 3 * (v14 % 0x2A);
  v18 = v16 + 32 * v17;
  *v18 = 0;
  *(v18 + 8) = a2;
  *(*(v13 + 8 * v15) + 32 * v17 + 16) = a2;
  *(*(v13 + 8 * v15) + 32 * v17 + 24) = a3;
  sub_1001CA7F0((*(v13 + 8 * v15) + 32 * v17 + 56), *(a1 + 32));
  v19 = 0;
  v54 = 0;
  v20 = 0;
  v21 = *(&v58 + 1);
  v22 = v56.i64[1];
  v23 = *(&v58 + 1) + v58 - 1;
  v24 = v23 / 0x2A;
  v25 = 3 * (v23 % 0x2A);
  *(*(v56.i64[1] + 8 * v24) + 32 * v25 + 80) = v6;
  v52 = a3;
  v53 = a2;
  v26 = a3 - a2;
  v27 = *(v22 + 8 * v24) + 32 * v25;
  *(v27 + 88) = a5;
  *(v27 + 92) = a6;
  do
  {
    if ((++v20 & 0xFFF) == 0 && (v20 >> 12) >= v26)
    {
      sub_1001CA820();
    }

    v29 = *(v56.i64[1] + 8 * ((v21 + v58 - 1) / 0x2AuLL)) + 96 * ((v21 + v58 - 1) % 0x2AuLL);
    v30 = *(v29 + 80);
    if (v30)
    {
      (*(*v30 + 16))(v30, v29);
    }

    v31 = *v29;
    if (*v29 <= -995)
    {
      if (v31 != -1000)
      {
        if (v31 == -999)
        {
          goto LABEL_52;
        }

        if (v31 != -995)
        {
          goto LABEL_72;
        }

        sub_1001D1C4C(&v56, v29);
        goto LABEL_51;
      }

      v32 = *(v29 + 16);
      v34 = (a5 & 0x1000) == 0 || v32 == v52;
      v35 = v32 != v53 || (a5 & 0x20) == 0;
      if (!v35 || !v34)
      {
        goto LABEL_51;
      }

      v36 = v32 - *(v29 + 8);
      if (v19 <= v36)
      {
        v37 = v36;
      }

      else
      {
        v37 = v19;
      }

      if (v54)
      {
        v19 = v37;
      }

      else
      {
        v19 = v36;
      }

      if (v19 != v26)
      {
        sub_1001D1BC4(&v56);
        v54 = 1;
        goto LABEL_52;
      }

      v38 = v56.i64[1];
      v39 = v57;
      if (v57 == v56.i64[1])
      {
        v39 = v56.i64[1];
      }

      else
      {
        v40 = (v56.i64[1] + 8 * (v58 / 0x2A));
        v41 = (*v40 + 96 * (v58 % 0x2A));
        v42 = *(v56.i64[1] + 8 * ((*(&v58 + 1) + v58) / 0x2AuLL)) + 96 * ((*(&v58 + 1) + v58) % 0x2AuLL);
        if (v41 != v42)
        {
          do
          {
            sub_1001CAB54(v41);
            v41 += 12;
            if ((v41 - *v40) == 4032)
            {
              v43 = v40[1];
              ++v40;
              v41 = v43;
            }
          }

          while (v41 != v42);
          v38 = v56.i64[1];
          v39 = v57;
        }
      }

      *(&v58 + 1) = 0;
      v46 = (v39 - v38) >> 3;
      if (v46 >= 3)
      {
        do
        {
          operator delete(*v38);
          v38 = (v56.i64[1] + 8);
          v56.i64[1] = v38;
          v46 = (v57 - v38) >> 3;
        }

        while (v46 > 2);
      }

      if (v46 == 1)
      {
        v47 = 21;
      }

      else
      {
        if (v46 != 2)
        {
LABEL_67:
          v54 = 1;
          v19 = v26;
          goto LABEL_52;
        }

        v47 = 42;
      }

      *&v58 = v47;
      goto LABEL_67;
    }

    if (v31 <= -993)
    {
      if (v31 == -994)
      {
        goto LABEL_52;
      }

      if (v31 != -993)
      {
        goto LABEL_72;
      }

LABEL_51:
      sub_1001D1BC4(&v56);
      goto LABEL_52;
    }

    if (v31 == -992)
    {
      memset(v55, 0, sizeof(v55));
      v44 = *(v29 + 16);
      v55[0] = *v29;
      v55[1] = v44;
      sub_1001CAEE0(&v55[2], *(v29 + 32), *(v29 + 40), 0xAAAAAAAAAAAAAAABLL * ((*(v29 + 40) - *(v29 + 32)) >> 3));
      memset(&v55[3] + 8, 0, 24);
      sub_1001CAF60(&v55[3] + 8, *(v29 + 56), *(v29 + 64), (*(v29 + 64) - *(v29 + 56)) >> 4);
      v45 = *(v29 + 80);
      *(&v55[5] + 5) = *(v29 + 85);
      *&v55[5] = v45;
      (*(**(v29 + 80) + 24))(*(v29 + 80), 1, v29);
      (*(**&v55[5] + 24))(*&v55[5], 0, v55);
      sub_1001D1AC0(&v56, v55);
      if (*(&v55[3] + 1))
      {
        *&v55[4] = *(&v55[3] + 1);
        operator delete(*(&v55[3] + 1));
      }

      if (*&v55[2])
      {
        *(&v55[2] + 1) = *&v55[2];
        operator delete(*&v55[2]);
      }
    }

    else if (v31 != -991)
    {
LABEL_72:
      sub_1001CA878();
    }

LABEL_52:
    v21 = *(&v58 + 1);
  }

  while (*(&v58 + 1));
  if ((v54 & 1) == 0)
  {
LABEL_70:
    v49 = 0;
    goto LABEL_71;
  }

  v48 = *v51;
  *v48 = v53;
  *(v48 + 8) = v53 + v19;
  v49 = 1;
  *(v48 + 16) = 1;
LABEL_71:
  sub_1001D21DC(&v56);
  return v49;
}

uint64_t sub_1001D15E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, int a5, char a6)
{
  v54 = 0;
  v55 = 0;
  v56 = 0;
  v52 = 0u;
  v53 = 0u;
  *v50 = 0u;
  *v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v6 = *(a1 + 40);
  if (!v6)
  {
    goto LABEL_47;
  }

  *(&v46 + 1) = a3;
  v47 = 0;
  *&v46 = a3;
  LODWORD(v45[0]) = 0;
  *(v45 + 8) = 0uLL;
  *(&v45[1] + 8) = 0uLL;
  *(&v45[2] + 8) = 0uLL;
  *(&v45[3] + 8) = 0uLL;
  *(&v45[4] + 8) = 0uLL;
  *(&v45[5] + 5) = 0;
  sub_1001CA6D8(&v54, v45);
  if (*(&v45[3] + 1))
  {
    *&v45[4] = *(&v45[3] + 1);
    operator delete(*(&v45[3] + 1));
  }

  if (*&v45[2])
  {
    *(&v45[2] + 1) = *&v45[2];
    operator delete(*&v45[2]);
  }

  v43 = a4;
  v13 = v55;
  *(v55 - 24) = 0;
  *(v13 - 11) = a2;
  *(v13 - 10) = a2;
  *(v13 - 9) = a3;
  sub_1001CA7B4(v13 - 8, *(a1 + 28), &v46);
  sub_1001CA7F0(v55 - 5, *(a1 + 32));
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v44 = a3;
  v17 = a3 - a2;
  v18 = v55;
  *(v55 - 2) = v6;
  *(v18 - 2) = a5;
  *(v18 - 4) = a6;
  do
  {
    v19 = (++v16 & 0xFFF) != 0 || (v16 >> 12) < v17;
    if (!v19)
    {
      sub_1001CA820();
    }

    v21 = v18 - 2;
    v20 = *(v18 - 2);
    v22 = (v18 - 12);
    if (v20)
    {
      (*(*v20 + 16))(v20, v18 - 12);
    }

    v23 = *v22;
    if (*v22 > -994)
    {
      switch(v23)
      {
        case -993:
          goto LABEL_33;
        case -992:
          memset(v45, 0, sizeof(v45));
          v32 = *(v18 - 5);
          v45[0] = *v22;
          v45[1] = v32;
          sub_1001CAEE0(&v45[2], *(v18 - 8), *(v18 - 7), 0xAAAAAAAAAAAAAAABLL * ((*(v18 - 7) - *(v18 - 8)) >> 3));
          memset(&v45[3] + 8, 0, 24);
          sub_1001CAF60(&v45[3] + 8, *(v18 - 5), *(v18 - 4), (*(v18 - 4) - *(v18 - 5)) >> 4);
          v33 = *v21;
          *(&v45[5] + 5) = *(v18 - 11);
          *&v45[5] = v33;
          (*(**v21 + 24))(*v21, 1, v18 - 12);
          (*(**&v45[5] + 24))(*&v45[5], 0, v45);
          sub_1001CA6D8(&v54, v45);
          if (*(&v45[3] + 1))
          {
            *&v45[4] = *(&v45[3] + 1);
            operator delete(*(&v45[3] + 1));
          }

          if (*&v45[2])
          {
            *(&v45[2] + 1) = *&v45[2];
            operator delete(*&v45[2]);
          }

          break;
        case -991:
          break;
        default:
LABEL_53:
          sub_1001CA878();
      }
    }

    else
    {
      if ((v23 + 995) < 2)
      {
        goto LABEL_38;
      }

      if (v23 != -1000)
      {
        goto LABEL_53;
      }

      v24 = *(v18 - 10);
      if ((a5 & 0x20) != 0 && v24 == a2 || (a5 & 0x1000) != 0 && v24 != v44)
      {
LABEL_33:
        v31 = v55 - 12;
        sub_1001CAB54(v55 - 12);
        v55 = v31;
        goto LABEL_38;
      }

      v25 = v15;
      v26 = v24 - *(v18 - 11);
      if ((v25 & (v14 >= v26)) == 0)
      {
        v27 = *(v18 - 5);
        v48 = *v22;
        v49 = v27;
        if (&v48 != v22)
        {
          sub_1001D233C(v50, *(v18 - 8), *(v18 - 7), 0xAAAAAAAAAAAAAAABLL * ((*(v18 - 7) - *(v18 - 8)) >> 3));
          sub_1001D24C8(&v51[1], *(v18 - 5), *(v18 - 4), (*(v18 - 4) - *(v18 - 5)) >> 4);
        }

        v28 = *v21;
        *(&v53 + 5) = *(v18 - 11);
        *&v53 = v28;
        v14 = v26;
      }

      v29 = v55;
      if (v14 == v17)
      {
        v30 = v54;
        while (v29 != v30)
        {
          v29 -= 12;
          sub_1001CAB54(v29);
        }

        v55 = v30;
        v15 = 1;
        v14 = v17;
      }

      else
      {
        v34 = v55 - 12;
        sub_1001CAB54(v55 - 12);
        v55 = v34;
        v15 = 1;
      }
    }

LABEL_38:
    v18 = v55;
  }

  while (v54 != v55);
  if ((v15 & 1) == 0)
  {
LABEL_47:
    v41 = 0;
    goto LABEL_48;
  }

  v35 = *v43;
  *v35 = a2;
  *(v35 + 8) = a2 + v14;
  *(v35 + 16) = 1;
  if (v50[1] != v50[0])
  {
    v36 = 0xAAAAAAAAAAAAAAABLL * ((v50[1] - v50[0]) >> 3);
    v37 = v50[0] + 16;
    v38 = 1;
    do
    {
      v39 = v35 + 24 * v38;
      *v39 = *(v37 - 1);
      v40 = *v37;
      v37 += 24;
      *(v39 + 16) = v40;
      v19 = v36 > v38++;
    }

    while (v19);
  }

  v41 = 1;
LABEL_48:
  if (v51[1])
  {
    *&v52 = v51[1];
    operator delete(v51[1]);
  }

  if (v50[0])
  {
    v50[1] = v50[0];
    operator delete(v50[0]);
  }

  *&v48 = &v54;
  sub_1001CB010(&v48);
  return v41;
}

void sub_1001D1A60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  sub_1001CA770(&a11);
  sub_1001CA770(&a27);
  a27 = v27 - 112;
  sub_1001CB010(&a27);
  _Unwind_Resume(a1);
}

__n128 sub_1001D1AC0(void *a1, uint64_t a2)
{
  v4 = a1[2];
  v5 = a1[1];
  v6 = 42 * ((v4 - v5) >> 3) - 1;
  if (v4 == v5)
  {
    v6 = 0;
  }

  v7 = a1[5] + a1[4];
  if (v6 == v7)
  {
    sub_1001D1D40(a1);
    v5 = a1[1];
    v7 = a1[5] + a1[4];
  }

  v8 = *(v5 + 8 * (v7 / 0x2A)) + 96 * (v7 % 0x2A);
  v9 = *(a2 + 16);
  *v8 = *a2;
  *(v8 + 16) = v9;
  *(v8 + 40) = 0;
  *(v8 + 48) = 0;
  *(v8 + 32) = 0;
  *(v8 + 32) = *(a2 + 32);
  *(v8 + 48) = *(a2 + 48);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(v8 + 56) = 0;
  *(v8 + 64) = 0;
  *(v8 + 72) = 0;
  result = *(a2 + 56);
  *(v8 + 56) = result;
  *(v8 + 72) = *(a2 + 72);
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  v11 = *(a2 + 80);
  *(v8 + 85) = *(a2 + 85);
  *(v8 + 80) = v11;
  ++a1[5];
  return result;
}

uint64_t sub_1001D1BC4(void *a1)
{
  v2 = a1[5] + a1[4] - 1;
  sub_1001CAB54((*(a1[1] + 8 * (v2 / 0x2A)) + 96 * (v2 % 0x2A)));
  --a1[5];

  return sub_1001D1F14(a1, 1);
}

int64x2_t sub_1001D1C4C(int64x2_t *a1, uint64_t a2)
{
  v4 = a1[2].u64[0];
  if (!v4)
  {
    sub_1001D1F8C(a1);
    v4 = a1[2].u64[0];
  }

  v5 = a1->i64[1];
  v6 = (v5 + 8 * (v4 / 0x2A));
  v7 = *v6 + 96 * (v4 % 0x2A);
  if (a1[1].i64[0] == v5)
  {
    v7 = 0;
  }

  if (v7 == *v6)
  {
    v7 = *(v6 - 1) + 4032;
  }

  v8 = *(a2 + 16);
  *(v7 - 96) = *a2;
  *(v7 - 80) = v8;
  *(v7 - 56) = 0;
  *(v7 - 48) = 0;
  *(v7 - 64) = 0;
  *(v7 - 64) = *(a2 + 32);
  *(v7 - 48) = *(a2 + 48);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(v7 - 40) = 0;
  *(v7 - 32) = 0;
  *(v7 - 24) = 0;
  *(v7 - 40) = *(a2 + 56);
  *(v7 - 24) = *(a2 + 72);
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  v9 = *(a2 + 80);
  *(v7 - 11) = *(a2 + 85);
  *(v7 - 16) = v9;
  result = vaddq_s64(a1[2], xmmword_1017DA660);
  a1[2] = result;
  return result;
}