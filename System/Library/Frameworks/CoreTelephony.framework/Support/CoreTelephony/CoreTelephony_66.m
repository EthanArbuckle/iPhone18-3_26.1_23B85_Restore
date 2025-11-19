void sub_1004388CC(_Unwind_Exception *a1, void *a2, uint64_t a3, int a4, __int16 a5, char a6, char a7, uint64_t a8, ...)
{
  va_start(va, a8);
  if (a7 < 0)
  {
    operator delete(a2);
  }

  sub_100005978(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100438918(uint64_t *a1, uint64_t a2)
{
  v2 = 0xCF3CF3CF3CF3CF3DLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x186186186186186)
  {
    sub_1000CE3D4();
  }

  if (0x9E79E79E79E79E7ALL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x9E79E79E79E79E7ALL * ((a1[2] - *a1) >> 3);
  }

  if (0xCF3CF3CF3CF3CF3DLL * ((a1[2] - *a1) >> 3) >= 0xC30C30C30C30C3)
  {
    v6 = 0x186186186186186;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    sub_1000B2200(a1, v6);
  }

  v13 = 0;
  v14 = 168 * v2;
  sub_100032BFC(168 * v2, a2);
  v15 = 168 * v2 + 168;
  v7 = a1[1];
  v8 = 168 * v2 + *a1 - v7;
  sub_10010A9B4(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  sub_10010AB74(&v13);
  return v12;
}

void sub_100438A4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_10010AB74(va);
  _Unwind_Resume(a1);
}

void sub_100438AE0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_1017705C8(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_100438AFC(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_100438B34(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_100438B64(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_100438BA4(void (******a1)(Registry **__return_ptr))
{
  v1 = *a1;
  v2 = a1;
  v3 = v1;
  CellularPlanSourceTransferModel::init_sync(*v1);
}

void sub_100438BE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10024BAAC(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

void *sub_100438C78(void *a1, void *a2, const ctu::OsLogLogger **a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E4CA30;
  ctu::OsLogLogger::OsLogLogger((a1 + 3), *a3);
  v5 = a2[1];
  a1[4] = *a2;
  a1[5] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  return a1;
}

void sub_100438D14(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E4CA30;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_100438D74(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_100438D74(a1, *a2);
    sub_100438D74(a1, a2[1]);
    sub_10027CB9C(a1, (a2 + 4));

    operator delete(a2);
  }
}

void sub_100438DE0(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_100438DE0(a1, *a2);
    sub_100438DE0(a1, *(a2 + 1));
    v4 = *(a2 + 18);
    if (v4)
    {
      *(a2 + 19) = v4;
      operator delete(v4);
    }

    if (a2[143] < 0)
    {
      operator delete(*(a2 + 15));
    }

    if (a2[103] < 0)
    {
      operator delete(*(a2 + 10));
    }

    if (a2[79] < 0)
    {
      operator delete(*(a2 + 7));
    }

    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
    }

    operator delete(a2);
  }
}

uint64_t sub_100438EF4(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E4CA80;
  a2[1] = v2;
  return result;
}

void sub_100438F20(uint64_t a1, xpc_object_t *a2)
{
  v2 = *(a1 + 8);
  v5[0] = 0;
  v5[1] = 0;
  v4 = v5;
  sub_10032C208(&v4, a2);
  sub_100288F04(v3, &v4);
  sub_100439008(v2, v3);
  sub_100077CD4(v3, v3[1]);
  sub_100077CD4(&v4, v5[0]);
}

void sub_100438F90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char *a10, uint64_t a11, char a12, char *a13)
{
  sub_100077CD4(&a9, a10);
  sub_100077CD4(&a12, a13);
  _Unwind_Resume(a1);
}

uint64_t sub_100438FBC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100439008(uint64_t result, void *a2)
{
  v2 = a2 + 1;
  v3 = *a2;
  if (*a2 != a2 + 1)
  {
    v4 = result;
    while ((*(v3 + 63) & 0x8000000000000000) == 0)
    {
      if (*(v3 + 63))
      {
        goto LABEL_5;
      }

LABEL_6:
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
      if (v6 == v2)
      {
        return result;
      }
    }

    if (!v3[6])
    {
      goto LABEL_6;
    }

LABEL_5:
    result = sub_100005BA0(v4, v3 + 5);
    goto LABEL_6;
  }

  return result;
}

uint64_t sub_100439114(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E4CB00;
  a2[1] = v2;
  return result;
}

uint64_t sub_100439148(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100439204(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E4CB80;
  a2[1] = v2;
  return result;
}

uint64_t sub_100439238(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_100439284(std::string **a1, xpc_object_t *a2)
{
  v2 = *a1;
  v4 = 0;
  v5 = 0;
  v6 = 0;
  sub_10010A62C(&v4, a2);
  memset(v3, 0, sizeof(v3));
  sub_1000B2128(v3, v4, v5, 0xCF3CF3CF3CF3CF3DLL * ((v5 - v4) >> 3));
  sub_100D21B04(v2, v3);
  v7 = v3;
  sub_1000B2AF8(&v7);
  v7 = &v4;
  sub_1000B2AF8(&v7);
}

void sub_100439318(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  *(v14 - 24) = v13;
  sub_1000B2AF8((v14 - 24));
  *(v14 - 24) = &a13;
  sub_1000B2AF8((v14 - 24));
  _Unwind_Resume(a1);
}

void sub_100439424(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_1004394D4(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E4CC00;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_10043950C(void *a1)
{
  v9 = 0;
  v7 = 0u;
  *__p = 0u;
  *v5 = 0u;
  *v6 = 0u;
  rest::read_rest_value();
  v2 = a1[2];
  v3 = a1[3];
  v4 = (a1[1] + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  v2(v4, v5);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v7) < 0)
  {
    operator delete(v6[1]);
  }

  if (SHIBYTE(v6[0]) < 0)
  {
    operator delete(v5[0]);
  }
}

uint64_t sub_1004395DC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_100439628(void *a1)
{
  *a1 = off_101E4CC80;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_100439674(void *a1)
{
  *a1 = off_101E4CC80;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_100439754(uint64_t result, uint64_t a2)
{
  *a2 = off_101E4CC80;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_100439794(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1004397A4(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

const void **sub_1004397E4(void *a1, uint64_t a2, CFTypeRef *a3, uint64_t a4)
{
  cf[0] = *a3;
  *a3 = 0;
  sub_1000636AC(v14, a4);
  v6 = a1[1];
  v12 = 0;
  if (!v15)
  {
    sub_100022DB4();
  }

  (*(*v15 + 48))(v15, &v12);
  sub_10001021C(&v12);
  v7 = a1[3];
  if (v7)
  {
    v8 = std::__shared_weak_count::lock(v7);
    if (v8 && a1[2])
    {
      cf[1] = v6;
      if (*(a2 + 23) < 0)
      {
        sub_100005F2C(__p, *a2, *(a2 + 8));
      }

      else
      {
        *__p = *a2;
        __p[2] = *(a2 + 16);
      }

      __p[3] = cf[0];
      if (cf[0])
      {
        CFRetain(cf[0]);
      }

      v13[0] = 0;
      v13[1] = 0;
      sub_100004AA0(v13, v6 + 1);
      operator new();
    }
  }

  else
  {
    v8 = 0;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1017705EC();
  }

  if (v8)
  {
    sub_100004A34(v8);
  }

  sub_10006372C(v14);
  return sub_10001021C(cf);
}

void sub_100439A3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  sub_100004A34(v20);
  sub_10006372C(&a20);
  sub_10001021C(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_100439A90(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_100439ADC(uint64_t *a1)
{
  v1 = *a1;
  v21 = a1;
  v22 = v1;
  v2 = *v1;
  v3 = *(*v1 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = (v1 + 8);
    if (*(v1 + 31) < 0)
    {
      v4 = *v4;
    }

    v5 = *(v1 + 32);
    LODWORD(buf[0].__r_.__value_.__l.__data_) = 136315394;
    *(buf[0].__r_.__value_.__r.__words + 4) = v4;
    WORD2(buf[0].__r_.__value_.__r.__words[1]) = 2112;
    *(&buf[0].__r_.__value_.__r.__words[1] + 6) = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Received: [%s], payload: [%@]", buf, 0x16u);
  }

  v6 = sub_100649C38(2);
  v7 = (v1 + 8);
  v8 = strlen(v6);
  v9 = *(v1 + 31);
  if (v9 < 0)
  {
    if (v8 != *(v1 + 16))
    {
      goto LABEL_62;
    }

    if (v8 == -1)
    {
      sub_10013C334();
    }

    v7 = *v7;
  }

  else if (v8 != v9)
  {
    goto LABEL_62;
  }

  if (!memcmp(v7, v6, v8))
  {
    CFDictionaryGetValue(*(v1 + 32), @"kSourceIccid");
    memset(buf, 0, 24);
    ctu::cf::assign();
    size = buf[0].__r_.__value_.__l.__size_;
    __src = buf[0].__r_.__value_.__r.__words[0];
    v27[0] = buf[0].__r_.__value_.__r.__words[2];
    *(v27 + 3) = *(&buf[0].__r_.__value_.__r.__words[2] + 3);
    v11 = SHIBYTE(buf[0].__r_.__value_.__r.__words[2]);
    CFDictionaryGetValue(*(v1 + 32), @"kTargetEid");
    memset(buf, 0, 24);
    ctu::cf::assign();
    v12 = buf[0].__r_.__value_.__l.__size_;
    v19 = buf[0].__r_.__value_.__r.__words[0];
    v26[0] = buf[0].__r_.__value_.__r.__words[2];
    *(v26 + 3) = *(&buf[0].__r_.__value_.__r.__words[2] + 3);
    v13 = SHIBYTE(buf[0].__r_.__value_.__r.__words[2]);
    CFDictionaryGetValue(*(v1 + 32), @"kTargetName");
    memset(buf, 0, 24);
    ctu::cf::assign();
    v14 = *&buf[0].__r_.__value_.__l.__data_;
    v25[0] = buf[0].__r_.__value_.__r.__words[2];
    *(v25 + 3) = *(&buf[0].__r_.__value_.__r.__words[2] + 3);
    v15 = SHIBYTE(buf[0].__r_.__value_.__r.__words[2]);
    v16 = *(v2 + 168);
    memset(&v24, 0, sizeof(v24));
    if (v16)
    {
      std::string::operator=(&v24, (*(v2 + 152) + 32));
    }

    else if (os_log_type_enabled(*(v2 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_10177066C();
    }

    v54 = 0;
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v45 = 0u;
    memset(buf, 0, sizeof(buf));
    if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100005F2C(&buf[1], v24.__r_.__value_.__l.__data_, v24.__r_.__value_.__l.__size_);
    }

    else
    {
      buf[1] = v24;
    }

    v45 = 0uLL;
    *&v46 = 0;
    if (v11 < 0)
    {
      sub_100005F2C(&v46 + 8, __src, size);
    }

    else
    {
      *(&v46 + 1) = __src;
      *&v47 = size;
      DWORD2(v47) = v27[0];
      *(&v47 + 11) = *(v27 + 3);
      HIBYTE(v47) = v11;
    }

    v48 = 0uLL;
    *&v49 = 0;
    if (v13 < 0)
    {
      sub_100005F2C(&v49 + 8, v19, v12);
    }

    else
    {
      *(&v49 + 1) = v19;
      *&v50 = v12;
      DWORD2(v50) = v26[0];
      *(&v50 + 11) = *(v26 + 3);
      HIBYTE(v50) = v13;
    }

    LODWORD(__dst[0]) = 2;
    __dst[1] = 0;
    if (v15 < 0)
    {
      sub_100005F2C(&v30, v14, *(&v14 + 1));
    }

    else
    {
      v30 = v14;
      LODWORD(v31) = v25[0];
      *(&v31 + 3) = *(v25 + 3);
      HIBYTE(v31) = v15;
    }

    v51 = *__dst;
    v52 = v30;
    *&v53 = v31;
    BYTE8(v53) = 0;
    LOBYTE(v54) = 1;
    sub_10028ABF0(__dst, buf);
    memset(v23, 0, sizeof(v23));
    sub_10043A1BC(v23, __dst, buf, 1uLL);
    CellularPlanSourceTransferModel::recalculateTransferredPlans_sync(v2, v23, v17);
    v28 = v23;
    sub_10027B2AC(&v28);
    if (v43 == 1 && v42 < 0)
    {
      operator delete(__p);
    }

    if (v40 < 0)
    {
      operator delete(v39);
    }

    if (v38 < 0)
    {
      operator delete(v37);
    }

    if (v36 < 0)
    {
      operator delete(v35);
    }

    if (v34 < 0)
    {
      operator delete(v33);
    }

    if (v32 < 0)
    {
      operator delete(*(&v30 + 1));
    }

    if (SBYTE7(v30) < 0)
    {
      operator delete(__dst[0]);
    }

    if (v54 == 1 && SBYTE7(v53) < 0)
    {
      operator delete(v52);
    }

    if (SHIBYTE(v50) < 0)
    {
      operator delete(*(&v49 + 1));
    }

    if (SBYTE7(v49) < 0)
    {
      operator delete(v48);
    }

    if (SHIBYTE(v47) < 0)
    {
      operator delete(*(&v46 + 1));
    }

    if (SBYTE7(v46) < 0)
    {
      operator delete(v45);
    }

    if (SHIBYTE(buf[1].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf[1].__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(buf[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf[0].__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v24.__r_.__value_.__l.__data_);
      if ((v15 & 0x80000000) == 0)
      {
LABEL_60:
        if ((v13 & 0x80000000) == 0)
        {
          goto LABEL_61;
        }

        goto LABEL_65;
      }
    }

    else if ((v15 & 0x80000000) == 0)
    {
      goto LABEL_60;
    }

    operator delete(v14);
    if ((v13 & 0x80000000) == 0)
    {
LABEL_61:
      if ((v11 & 0x80000000) == 0)
      {
        goto LABEL_62;
      }

LABEL_66:
      operator delete(__src);
      goto LABEL_62;
    }

LABEL_65:
    operator delete(v19);
    if ((v11 & 0x80000000) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_66;
  }

LABEL_62:
  sub_10043A15C(&v22);
  return sub_1000049E0(&v21);
}

uint64_t *sub_10043A15C(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_10001021C((v1 + 32));
    if (*(v1 + 31) < 0)
    {
      operator delete(*(v1 + 8));
    }

    operator delete();
  }

  return result;
}

uint64_t sub_10043A1BC(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_10028AB1C(result, a4);
  }

  return result;
}

void sub_10043A224(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_10027B2AC(&a9);
  _Unwind_Resume(a1);
}

char *sub_10043A244(int a1, __int128 *a2, __int128 *a3, char *__dst)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      sub_10028ABF0(__dst, v6);
      v6 = (v6 + 200);
      __dst += 200;
      v7 -= 200;
    }

    while (v6 != a3);
  }

  return __dst;
}

void sub_10043A2A4(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 - 200;
    do
    {
      v4 = sub_10027B330(v4) - 200;
      v2 += 200;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10043A2C8(uint64_t a1, void **a2)
{
  v3 = 0;
  result = *sub_100005C2C(a1, &v3, a2);
  if (!result)
  {
    sub_10043A35C();
  }

  return result;
}

void sub_10043A3DC(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_10043A48C(v3, v2);
  _Unwind_Resume(a1);
}

char *sub_10043A3F8(char *__dst, __int128 *a2, __int128 *a3)
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

  v6 = *a3;
  *(__dst + 5) = *(a3 + 2);
  *(__dst + 24) = v6;
  *(a3 + 1) = 0;
  *(a3 + 2) = 0;
  *a3 = 0;
  v7 = *(a3 + 24);
  *(__dst + 8) = *(a3 + 5);
  *(__dst + 3) = v7;
  *(a3 + 4) = 0;
  *(a3 + 5) = 0;
  *(a3 + 3) = 0;
  v8 = *(a3 + 24);
  __dst[74] = *(a3 + 50);
  *(__dst + 36) = v8;
  return __dst;
}

void sub_10043A48C(uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    sub_10027CB9C(*a1, __p + 32);
  }

  if (__p)
  {

    operator delete(__p);
  }
}

uint64_t **sub_10043A4EC@<X0>(uint64_t **result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = result;
  v5 = *a2;
  if (!*a2)
  {
    *a3 = result + 1;
    *(a3 + 8) = 0;
LABEL_9:
    *(a3 + 16) = 0;
    *(a3 + 24) = 0;
    return result;
  }

  v8 = 0;
  result = sub_100005C2C(result, &v8, (v5 + 32));
  if (!*result)
  {
    result = sub_1000070DC(v3, v8, result, v5);
    *a2 = 0;
    if (*(a2 + 9) == 1)
    {
      *(a2 + 9) = 0;
    }

    *a3 = v5;
    *(a3 + 8) = 1;
    goto LABEL_9;
  }

  *a3 = *result;
  *(a3 + 8) = 0;
  *(a3 + 16) = *a2;
  v7 = *(a2 + 4);
  *(a3 + 24) = v7;
  *a2 = 0;
  if ((v7 & 0x100) != 0)
  {
    *(a2 + 9) = 0;
  }

  return result;
}

uint64_t sub_10043A5B8(uint64_t **a1, void **a2)
{
  v3 = sub_100007A6C(a1, a2);
  if (a1 + 1 == v3)
  {
    return 0;
  }

  sub_10043A600(a1, v3);
  return 1;
}

uint64_t *sub_10043A600(uint64_t **a1, uint64_t *a2)
{
  v4 = sub_1000194D8(a1, a2);
  sub_10027CB9C(a1, (a2 + 4));
  operator delete(a2);
  return v4;
}

void sub_10043A6A8(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E4CD00;
  sub_100188678();
}

void sub_10043A724(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E4CD00;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10043A778(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    sub_100004A34(v1);
  }
}

uint64_t sub_10043A78C(uint64_t a1, uint64_t a2)
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

void *sub_10043A824(void *a1)
{
  *a1 = off_101E4CD50;
  sub_10039D5CC((a1 + 1));
  return a1;
}

void sub_10043A868(void *a1)
{
  *a1 = off_101E4CD50;
  sub_10039D5CC((a1 + 1));

  operator delete();
}

void sub_10043A978(void *a1)
{
  sub_10039D5CC(a1 + 8);

  operator delete(a1);
}

uint64_t sub_10043A9B4(uint64_t a1, _BYTE *a2)
{
  if (*a2)
  {
    v2 = *a2 | 0x100;
  }

  else
  {
    v2 = 0;
  }

  return sub_10025BA88(a1 + 8, v2);
}

uint64_t sub_10043A9CC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10043AA18(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

void sub_10043AA98(void **a1)
{
  v1 = **a1;
  if (v1[13])
  {
    v2 = v1[5];
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I session invalidate", buf, 2u);
    }

    v3 = v1[12];
    if (v3)
    {
      v4 = std::__shared_weak_count::lock(v3);
      if (v4)
      {
        v5 = v4;
        v6 = v1[11];
        if (v6)
        {
          (*(*v6 + 24))(v6);
        }

        sub_100004A34(v5);
      }
    }

    v7 = v1[14];
    v1[13] = 0;
    v1[14] = 0;
    if (v7)
    {
      sub_100004A34(v7);
    }
  }

  operator delete();
}

uint64_t sub_10043ABB8(uint64_t a1, void **a2)
{
  v3 = 0;
  result = *sub_100005C2C(a1, &v3, a2);
  if (!result)
  {
    sub_10043AC5C();
  }

  return result;
}

void sub_10043AD18(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_10043AD34(v3, v2);
  _Unwind_Resume(a1);
}

void sub_10043AD34(uint64_t a1, char *__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = *(__p + 18);
    if (v3)
    {
      *(__p + 19) = v3;
      operator delete(v3);
    }

    if (__p[143] < 0)
    {
      operator delete(*(__p + 15));
    }

    if (__p[103] < 0)
    {
      operator delete(*(__p + 10));
    }

    if (__p[79] < 0)
    {
      operator delete(*(__p + 7));
    }

    if (__p[55] < 0)
    {
      operator delete(*(__p + 4));
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void *sub_10043ADD8(void *a1)
{
  *a1 = off_101E4CDD0;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_10043AE24(void *a1)
{
  *a1 = off_101E4CDD0;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_10043AF04(uint64_t result, uint64_t a2)
{
  *a2 = off_101E4CDD0;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_10043AF44(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_10043AF54(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_10043AF94(void *a1, uint64_t a2, id *a3, uint64_t a4)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(v17, *a2, *(a2 + 8));
  }

  else
  {
    *v17 = *a2;
    v18 = *(a2 + 16);
  }

  sub_1000636AC(v21, a4);
  v7 = a1[1];
  v19 = 0;
  if (!v22)
  {
    sub_100022DB4();
  }

  (*(*v22 + 48))(v22, &v19);
  sub_10001021C(&v19);
  v8 = a1[3];
  if (v8)
  {
    v9 = std::__shared_weak_count::lock(v8);
    if (v9 && a1[2])
    {
      v32 = 0;
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v25 = 0u;
      sub_10092E504(a3, &v25);
      if ((SBYTE7(v30) & 0x80u) == 0)
      {
        v10 = BYTE7(v30);
      }

      else
      {
        v10 = *(&v29 + 1);
      }

      v11 = HIBYTE(v18);
      v12 = HIBYTE(v18);
      if (v18 < 0)
      {
        v11 = v17[1];
      }

      if (v10 == v11)
      {
        v13 = (SBYTE7(v30) & 0x80u) == 0 ? &v29 : v29;
        v14 = v18 >= 0 ? v17 : v17[0];
        if (!memcmp(v13, v14, v10))
        {
          v23 = v7;
          sub_10043B654(&v24, &v25);
          v20[0] = 0;
          v20[1] = 0;
          sub_100004AA0(v20, (v7 + 8));
          operator new();
        }
      }

      v15 = *(v7 + 40);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_1017706A0(v17, v12 < 0, v15);
      }

      if (*(&v30 + 1))
      {
        *&v31 = *(&v30 + 1);
        operator delete(*(&v30 + 1));
      }

      if (SBYTE7(v30) < 0)
      {
        operator delete(v29);
      }

      if (SHIBYTE(v27) < 0)
      {
        operator delete(*(&v26 + 1));
      }

      if (SBYTE7(v26) < 0)
      {
        operator delete(v25);
      }

LABEL_37:
      sub_100004A34(v9);
      goto LABEL_38;
    }
  }

  else
  {
    v9 = 0;
  }

  ctu::OsLogContext::OsLogContext(&v23, kCtLoggingSystemName, "cp.s.tr.model");
  v16 = v24;
  ctu::OsLogContext::~OsLogContext(&v23);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    sub_101770728();
  }

  if (v9)
  {
    goto LABEL_37;
  }

LABEL_38:
  sub_10006372C(v21);
  if (SHIBYTE(v18) < 0)
  {
    operator delete(v17[0]);
  }
}

void sub_10043B360(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10043B3D4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_10043B420(uint64_t *a1)
{
  v1 = *a1;
  v5 = a1;
  v6 = v1;
  v2 = *v1;
  if (*(v1 + 31) < 0)
  {
    sub_100005F2C(&__dst, *(v1 + 8), *(v1 + 16));
  }

  else
  {
    v3 = *(v1 + 8);
    v15 = *(v1 + 24);
    __dst = v3;
  }

  if (*(v1 + 55) < 0)
  {
    sub_100005F2C(v12, *(v1 + 32), *(v1 + 40));
  }

  else
  {
    *v12 = *(v1 + 32);
    v13 = *(v1 + 48);
  }

  if (*(v1 + 95) < 0)
  {
    sub_100005F2C(v10, *(v1 + 72), *(v1 + 80));
  }

  else
  {
    *v10 = *(v1 + 72);
    v11 = *(v1 + 88);
  }

  __p = 0;
  v8 = 0;
  v9 = 0;
  sub_100034C50(&__p, *(v1 + 96), *(v1 + 104), *(v1 + 104) - *(v1 + 96));
  CellularPlanSourceTransferModel::handleGenericTransferPayloadRequest_sync(v2, &__dst, v12, 0, 0, v10, &__p);
  if (__p)
  {
    v8 = __p;
    operator delete(__p);
  }

  if (SHIBYTE(v11) < 0)
  {
    operator delete(v10[0]);
  }

  if (SHIBYTE(v13) < 0)
  {
    operator delete(v12[0]);
  }

  if (SHIBYTE(v15) < 0)
  {
    operator delete(__dst);
  }

  sub_10043B5CC(&v6);
  return sub_1000049E0(&v5);
}

void sub_10043B550(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  if (*(v27 - 25) < 0)
  {
    operator delete(*(v27 - 48));
  }

  sub_10043B5CC(&a11);
  sub_1000049E0(&a10);
  _Unwind_Resume(a1);
}

uint64_t *sub_10043B5CC(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = *(v1 + 96);
    if (v2)
    {
      *(v1 + 104) = v2;
      operator delete(v2);
    }

    if (*(v1 + 95) < 0)
    {
      operator delete(*(v1 + 72));
    }

    if (*(v1 + 55) < 0)
    {
      operator delete(*(v1 + 32));
    }

    if (*(v1 + 31) < 0)
    {
      operator delete(*(v1 + 8));
    }

    operator delete();
  }

  return result;
}

char *sub_10043B654(char *__dst, __int128 *a2)
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

  *(__dst + 3) = a2[3];
  if (*(a2 + 87) < 0)
  {
    sub_100005F2C(__dst + 64, *(a2 + 8), *(a2 + 9));
  }

  else
  {
    v6 = a2[4];
    *(__dst + 10) = *(a2 + 10);
    *(__dst + 4) = v6;
  }

  *(__dst + 11) = 0;
  *(__dst + 12) = 0;
  *(__dst + 13) = 0;
  sub_100034C50((__dst + 88), *(a2 + 11), *(a2 + 12), *(a2 + 12) - *(a2 + 11));
  __dst[112] = *(a2 + 112);
  return __dst;
}

void sub_10043B71C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10043B768(__CFDictionary *a1, void *cf, uint64_t a3)
{
  key = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  v6 = a3;
  if (a3)
  {
    CFRetain(a3);
    if (key)
    {
      CFDictionaryAddValue(a1, key, a3);
      a3 = 1;
    }

    else
    {
      a3 = 0;
    }
  }

  sub_100DA3324(&v6);
  sub_100DA3324(&key);
  return a3;
}

void sub_10043B7E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  sub_100DA3324(&a9);
  sub_100DA3324(&a10);
  _Unwind_Resume(a1);
}

uint64_t sub_10043B80C(uint64_t a1)
{
  *a1 = off_101E4CE50;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

void sub_10043B85C(uint64_t a1)
{
  *a1 = off_101E4CE50;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  operator delete();
}

char *sub_10043B968(char *result, uint64_t a2)
{
  v2 = *(result + 1);
  *a2 = off_101E4CE50;
  *(a2 + 8) = v2;
  if (result[39] < 0)
  {
    return sub_100005F2C((a2 + 16), *(result + 2), *(result + 3));
  }

  v3 = *(result + 1);
  *(a2 + 32) = *(result + 4);
  *(a2 + 16) = v3;
  return result;
}

void sub_10043B9B4(uint64_t a1)
{
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }
}

void sub_10043B9C8(void **__p)
{
  if (*(__p + 39) < 0)
  {
    operator delete(__p[2]);
  }

  operator delete(__p);
}

BOOL sub_10043BA0C(_BOOL8 result, _BYTE *a2)
{
  if (*a2 == 1)
  {
    v3 = *(result + 8);
    sub_10043BAC0((v3 + 280), (result + 16));
    v4 = *(v3 + 72);

    return sub_100436CA4(v4, v3 + 280, @"no_backup/com.apple.commcenter.cellular_plan.transferred.plist", @"transferredBackPairs");
  }

  return result;
}

uint64_t sub_10043BA74(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10043BAC0(uint64_t **a1, void **a2)
{
  v3 = sub_100007A6C(a1, a2);
  if (a1 + 1 == v3)
  {
    return 0;
  }

  v4 = v3;
  sub_1000194D8(a1, v3);
  sub_1000DD108((v4 + 4));
  operator delete(v4);
  return 1;
}

uint64_t sub_10043BB1C(uint64_t a1, void **a2)
{
  v3 = 0;
  result = *sub_100005C2C(a1, &v3, a2);
  if (!result)
  {
    sub_10043BBC0();
  }

  return result;
}

void sub_10043BC6C(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_10043A48C(v3, v2);
  _Unwind_Resume(a1);
}

uint64_t sub_10043BC88(uint64_t a1)
{
  *a1 = off_101E4CED0;
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  v2 = *(a1 + 24);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_10043BCE4(uint64_t a1)
{
  *a1 = off_101E4CED0;
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  v2 = *(a1 + 24);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete();
}

void sub_10043BE04(_Unwind_Exception *a1)
{
  v3 = v1[3];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

char *sub_10043BE24(char *result, uint64_t a2)
{
  *a2 = off_101E4CED0;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 3);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  if (result[55] < 0)
  {
    return sub_100005F2C((a2 + 32), *(result + 4), *(result + 5));
  }

  v3 = *(result + 2);
  *(a2 + 48) = *(result + 6);
  *(a2 + 32) = v3;
  return result;
}

void sub_10043BEA8(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 24);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_10043BEC8(void *a1)
{
  sub_10028F698(a1 + 8);

  operator delete(a1);
}

void sub_10043BF04(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    v3 = *(a1 + 8);
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      if (*(a1 + 16))
      {
        if (*(a1 + 55) < 0)
        {
          sub_100005F2C(__p, *(a1 + 32), *(a1 + 40));
        }

        else
        {
          *__p = *(a1 + 32);
          v6 = *(a1 + 48);
        }

        v7[0] = 0;
        v7[1] = 0;
        sub_100004AA0(v7, (v3 + 8));
        operator new();
      }

      sub_100004A34(v4);
    }
  }
}

uint64_t sub_10043C08C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_10043C0D8(uint64_t *a1)
{
  v1 = *a1;
  v30 = a1;
  v31 = v1;
  v2 = (v1 + 8);
  v3 = *v1;
  if (!sub_10016FA58(*v1 + 256, (v1 + 8)))
  {
    v6 = *(v3 + 40);
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_63;
    }

    if (*(v1 + 31) < 0)
    {
      v2 = *v2;
    }

    *buf = 136315138;
    *&buf[4] = v2;
    v7 = "#I %s is removed from maybe transferred map";
LABEL_44:
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, v7, buf, 0xCu);
    goto LABEL_63;
  }

  v4 = *(v3 + 176);
  if (*(v1 + 31) < 0)
  {
    sub_100005F2C(__p, *(v1 + 8), *(v1 + 16));
  }

  else
  {
    v5 = *v2;
    v36 = *(v1 + 24);
    *__p = v5;
  }

  v8 = (v3 + 184);
  if (v4 != (v3 + 184))
  {
    while (1)
    {
      v9 = *(v4 + 135);
      if (v9 >= 0)
      {
        v10 = *(v4 + 135);
      }

      else
      {
        v10 = v4[15];
      }

      v11 = HIBYTE(v36);
      if (v36 < 0)
      {
        v11 = __p[1];
      }

      if (v10 == v11)
      {
        v12 = v9 >= 0 ? v4 + 14 : v4[14];
        v13 = v36 >= 0 ? __p : __p[0];
        if (!memcmp(v12, v13, v10) && (subscriber::isSimReady() & 1) != 0)
        {
          break;
        }
      }

      v14 = v4[1];
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
          v15 = v4[2];
          v16 = *v15 == v4;
          v4 = v15;
        }

        while (!v16);
      }

      v4 = v15;
      if (v15 == v8)
      {
        v4 = (v3 + 184);
        break;
      }
    }
  }

  if (SHIBYTE(v36) < 0)
  {
    operator delete(__p[0]);
  }

  if (v4 == v8)
  {
    v6 = *(v3 + 40);
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_63;
    }

    if (*(v1 + 31) < 0)
    {
      v2 = *v2;
    }

    *buf = 136315138;
    *&buf[4] = v2;
    v7 = "#I %s is inactive";
    goto LABEL_44;
  }

  v33 = 0;
  v34 = 0;
  (***(v3 + 56))(buf);
  ServiceMap = Registry::getServiceMap(*buf);
  v18 = ServiceMap;
  if (v19 < 0)
  {
    v20 = (v19 & 0x7FFFFFFFFFFFFFFFLL);
    v21 = 5381;
    do
    {
      v19 = v21;
      v22 = *v20++;
      v21 = (33 * v21) ^ v22;
    }

    while (v22);
  }

  std::mutex::lock(ServiceMap);
  v32[0] = v19;
  v23 = sub_100009510(&v18[1].__m_.__sig, v32);
  if (!v23)
  {
    v25 = 0;
    goto LABEL_46;
  }

  v25 = v23[3];
  v24 = v23[4];
  if (!v24)
  {
LABEL_46:
    std::mutex::unlock(v18);
    v24 = 0;
    v26 = 1;
    goto LABEL_47;
  }

  atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v18);
  atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v24);
  v26 = 0;
LABEL_47:
  (*(*v25 + 8))(&v33, v25, *(v4 + 8));
  if ((v26 & 1) == 0)
  {
    sub_100004A34(v24);
  }

  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }

  if (v33)
  {
    v41 = 0;
    *v39 = 0u;
    v40 = 0u;
    v38 = 0u;
    memset(buf, 0, sizeof(buf));
    buf[1] = 1;
    buf[3] = 1;
    v32[3] = 0x2000;
    (*(*v33 + 304))(v33, buf);
    if (os_log_type_enabled(*(v3 + 40), OS_LOG_TYPE_DEFAULT))
    {
      sub_1001E9530();
    }

    if (v41 == 1 && SHIBYTE(v40) < 0)
    {
      operator delete(v39[1]);
    }

    if (LOBYTE(v39[0]) == 1 && SHIBYTE(v38) < 0)
    {
      operator delete(*&buf[24]);
    }
  }

  else
  {
    v27 = *(v3 + 40);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v29 = subscriber::asString();
      if (*(v1 + 31) < 0)
      {
        v2 = *v2;
      }

      *buf = 136315394;
      *&buf[4] = v29;
      *&buf[12] = 2080;
      *&buf[14] = v2;
      _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "invalid entitlement controller. slot:%s, iccid:%s", buf, 0x16u);
    }
  }

  if (v34)
  {
    sub_100004A34(v34);
  }

LABEL_63:
  sub_1000EF424(&v31);
  return sub_1000049E0(&v30);
}

void sub_10043C5B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27)
{
  sub_100270CFC(&a26);
  if (a16)
  {
    sub_100004A34(a16);
  }

  sub_1000EF424(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

void *sub_10043C648(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_10043C6A0(a1, *a2, (a2 + 8));
  return a1;
}

void *sub_10043C6A0(void *result, void **a2, void **a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_10043C728(v5, (v5 + 1), v4 + 4);
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

void *sub_10043C728(void *a1, uint64_t a2, void **a3)
{
  v4 = 0;
  v5 = 0;
  result = *sub_100074A00(a1, a2, &v5, &v4, a3);
  if (!result)
  {
    sub_10043C7B8();
  }

  return result;
}

void sub_10043C830(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_10043A48C(v3, v2);
  _Unwind_Resume(a1);
}

char *sub_10043C84C(char *__dst, __int128 *a2)
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

  if (*(a2 + 71) < 0)
  {
    sub_100005F2C(__dst + 48, *(a2 + 6), *(a2 + 7));
  }

  else
  {
    v6 = a2[3];
    *(__dst + 8) = *(a2 + 8);
    *(__dst + 3) = v6;
  }

  v7 = *(a2 + 36);
  __dst[74] = *(a2 + 74);
  *(__dst + 36) = v7;
  return __dst;
}

void sub_10043C8FC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t DDBControlImpl::DDBControlImpl(uint64_t a1, void *a2, NSObject **a3, void *a4, void *a5, char *a6, void *a7)
{
  *a1 = off_101E4D098;
  v13 = (a1 + 8);
  ctu::OsLogContext::OsLogContext(buf, kCtLoggingSystemName, a6);
  sub_1001303E4(v13, a3, buf);
  ctu::OsLogContext::~OsLogContext(buf);
  *(a1 + 56) = 1;
  *a1 = off_101E4CF50;
  *(a1 + 48) = off_101E4D018;
  *(a1 + 64) = &off_101E4D070;
  *(a1 + 72) = *a2;
  v14 = a2[1];
  *(a1 + 80) = v14;
  if (v14)
  {
    atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
  }

  v30 = 10;
  v15 = *(a1 + 24);
  v28 = v15;
  strcpy(__p, "DDBControl");
  if (v15)
  {
    dispatch_retain(v15);
  }

  ctu::RestModule::RestModule();
  if (v28)
  {
    dispatch_release(v28);
  }

  if (v30 < 0)
  {
    operator delete(__p[0]);
  }

  *(a1 + 104) = *a7;
  v16 = a7[1];
  *(a1 + 112) = v16;
  if (v16)
  {
    atomic_fetch_add_explicit((v16 + 16), 1uLL, memory_order_relaxed);
  }

  *(a1 + 120) = *a4;
  v17 = a4[1];
  *(a1 + 128) = v17;
  if (v17)
  {
    atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 136) = *a5;
  v18 = a5[1];
  *(a1 + 144) = v18;
  if (v18)
  {
    atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 176) = 0;
  *(a1 + 168) = a1 + 176;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 184) = 0;
  v19 = *(a1 + 40);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = PersonalityInfo::logPrefix(***(a1 + 120));
    v21 = ***(a1 + 120);
    v24 = *(v21 + 24);
    v22 = (v21 + 24);
    v23 = v24;
    v25 = *(v22 + 23);
    v26 = v25;
    if ((v25 & 0x80u) != 0)
    {
      v25 = *(v22 + 1);
    }

    if (v26 < 0)
    {
      v22 = v23;
    }

    if (!v25)
    {
      v22 = "<invalid>";
    }

    *buf = 136315650;
    v32 = v20;
    v33 = 2080;
    v34 = " ";
    v35 = 2080;
    v36 = v22;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I %s%sCreated for %s", buf, 0x20u);
  }

  return a1;
}

void sub_10043CCE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, dispatch_object_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  sub_1002472DC(v20, *(v18 + 176));
  v22 = *(v18 + 160);
  if (v22)
  {
    sub_100004A34(v22);
  }

  v23 = *(v18 + 144);
  if (v23)
  {
    sub_100004A34(v23);
  }

  v24 = *(v18 + 128);
  if (v24)
  {
    sub_100004A34(v24);
  }

  v25 = *(v18 + 112);
  if (v25)
  {
    std::__shared_weak_count::__release_weak(v25);
  }

  v26 = *(v18 + 96);
  if (v26)
  {
    sub_100004A34(v26);
  }

  v27 = *(v18 + 80);
  if (v27)
  {
    sub_100004A34(v27);
  }

  TMKXPCServer.shutdown()();
  TMKXPCServer.shutdown()();
  ctu::OsLogLogger::~OsLogLogger((v18 + 40));
  sub_1000C0544(v19);
  _Unwind_Resume(a1);
}

void DDBControlImpl::~DDBControlImpl(DDBControlImpl *this)
{
  *this = off_101E4CF50;
  *(this + 6) = off_101E4D018;
  *(this + 8) = &off_101E4D070;
  ctu::RestModule::disconnect((this + 88));
  sub_1002472DC(this + 168, *(this + 22));
  v2 = *(this + 20);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(this + 18);
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = *(this + 16);
  if (v4)
  {
    sub_100004A34(v4);
  }

  v5 = *(this + 14);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  v6 = *(this + 12);
  if (v6)
  {
    sub_100004A34(v6);
  }

  v7 = *(this + 10);
  if (v7)
  {
    sub_100004A34(v7);
  }

  TMKXPCServer.shutdown()();
  TMKXPCServer.shutdown()();
  ctu::OsLogLogger::~OsLogLogger((this + 40));
  sub_1000C0544(this + 1);
}

{
  DDBControlImpl::~DDBControlImpl(this);

  operator delete();
}

void non-virtual thunk toDDBControlImpl::~DDBControlImpl(DDBControlImpl *this)
{
  DDBControlImpl::~DDBControlImpl((this - 48));
}

{
  DDBControlImpl::~DDBControlImpl((this - 64));
}

{
  DDBControlImpl::~DDBControlImpl((this - 48));

  operator delete();
}

{
  DDBControlImpl::~DDBControlImpl((this - 64));

  operator delete();
}

const void **DDBControlImpl::readAuthTokenForDriver@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v18 = 0;
  ServiceMap = Registry::getServiceMap(*(a1 + 72));
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
  *&v19 = v6;
  v10 = sub_100009510(&v5[1].__m_.__sig, &v19);
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
      goto LABEL_9;
    }
  }

  else
  {
    v12 = 0;
  }

  std::mutex::unlock(v5);
  v11 = 0;
  v13 = 1;
LABEL_9:
  (*(*v12 + 24))(&v17, v12, ***(a1 + 120) + 24, @"service-token", off_101FB1CA0, 0, 4);
  sub_1001B1A54(&v18, &v17);
  sub_10000A1EC(&v17);
  if ((v13 & 1) == 0)
  {
    sub_100004A34(v11);
  }

  if (v18)
  {
    v19 = 0uLL;
    v20 = 0;
    ctu::cf::assign();
    v14 = v20;
    *a2 = v19;
    *(a2 + 16) = v14;
    v15 = 1;
  }

  else
  {
    v15 = 0;
    *a2 = 0;
  }

  *(a2 + 24) = v15;
  return sub_10002D760(&v18);
}

void sub_10043D124(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    a12 = __p;
    operator delete(__p);
  }

  sub_10002D760(&a10);
  _Unwind_Resume(a1);
}

void DDBControlImpl::saveAuthTokenForDriver(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  ServiceMap = Registry::getServiceMap(*(a1 + 72));
  v7 = ServiceMap;
  if (v5 != 1)
  {
    if (v8 < 0)
    {
      v16 = (v8 & 0x7FFFFFFFFFFFFFFFLL);
      v17 = 5381;
      do
      {
        v8 = v17;
        v18 = *v16++;
        v17 = (33 * v17) ^ v18;
      }

      while (v18);
    }

    std::mutex::lock(ServiceMap);
    __p = v8;
    v19 = sub_100009510(&v7[1].__m_.__sig, &__p);
    if (v19)
    {
      v20 = v19[3];
      v13 = v19[4];
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v7);
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v13);
        v15 = 0;
LABEL_26:
        (*(*v20 + 32))(v20, ***(a1 + 120) + 24, @"service-token", off_101FB1CA0, 0, 4);
        goto LABEL_27;
      }
    }

    else
    {
      v20 = 0;
    }

    std::mutex::unlock(v7);
    v13 = 0;
    v15 = 1;
    goto LABEL_26;
  }

  if (v8 < 0)
  {
    v9 = (v8 & 0x7FFFFFFFFFFFFFFFLL);
    v10 = 5381;
    do
    {
      v8 = v10;
      v11 = *v9++;
      v10 = (33 * v10) ^ v11;
    }

    while (v11);
  }

  std::mutex::lock(ServiceMap);
  __p = v8;
  v12 = sub_100009510(&v7[1].__m_.__sig, &__p);
  if (!v12)
  {
    v14 = 0;
    goto LABEL_15;
  }

  v14 = v12[3];
  v13 = v12[4];
  if (!v13)
  {
LABEL_15:
    std::mutex::unlock(v7);
    v13 = 0;
    v15 = 1;
    goto LABEL_16;
  }

  atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v7);
  atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v13);
  v15 = 0;
LABEL_16:
  v21 = ***(a1 + 120);
  v25 = 0;
  v26 = 0;
  v24 = 0;
  sub_100034C50(&v24, *a3, *(a3 + 8), *(a3 + 8) - *a3);
  v30 = 0;
  v31 = 0;
  v29 = 0;
  sub_100034C50(&v29, v24, v25, v25 - v24);
  v28 = 0;
  __p = 0;
  v33 = 0;
  v34 = 0;
  sub_100034C50(&__p, v29, v30, v30 - v29);
  v35 = 0;
  if (ctu::cf::convert_copy())
  {
    v22 = v28;
    v28 = v35;
    v36 = v22;
    sub_10002D760(&v36);
  }

  if (__p)
  {
    v33 = __p;
    operator delete(__p);
  }

  v23 = v28;
  v27 = v28;
  v28 = 0;
  sub_10002D760(&v28);
  if (v29)
  {
    v30 = v29;
    operator delete(v29);
  }

  (*(*v14 + 16))(v14, v21 + 24, @"service-token", v23, off_101FB1CA0, 0, 4, 0);
  sub_10002D760(&v27);
  if (v24)
  {
    v25 = v24;
    operator delete(v24);
  }

LABEL_27:
  if ((v15 & 1) == 0)
  {
    sub_100004A34(v13);
  }
}

void sub_10043D460(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, const void *a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21)
{
  sub_10002D760(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  if ((v22 & 1) == 0)
  {
    sub_100004A34(v21);
  }

  _Unwind_Resume(a1);
}

void DDBControlImpl::initialize(DDBControlImpl *this)
{
  sub_100004AA0(&v3, this + 1);
  v2 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v2);
  }

  v3 = 0;
  v4 = 0;
  sub_100004AA0(&v3, this + 1);
  operator new();
}

void DDBControlImpl::start(DDBControlImpl *this)
{
  sub_100004AA0(&v3, this + 1);
  v2 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v2);
  }

  v3 = 0;
  v4 = 0;
  sub_100004AA0(&v3, this + 1);
  operator new();
}

void DDBControlImpl::init_sync(DDBControlImpl *this)
{
  v2 = *(this + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = PersonalityInfo::logPrefix(***(this + 15));
    *buf = 136315394;
    *&buf[4] = v3;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s%sInitializing Dedicated Bearer Controller", buf, 0x16u);
  }

  v4 = *(this + 15);
  sub_100004AA0(&v6, this + 1);
  if (v6)
  {
    v5 = v6 + 64;
  }

  else
  {
    v5 = 0;
  }

  *buf = v5;
  *&buf[8] = v7;
  v6 = 0;
  v7 = 0;
  sub_100441558(v4, buf);
  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }

  if (v7)
  {
    sub_100004A34(v7);
  }
}

void sub_10043D808(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
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

uint64_t DDBControlImpl::start_sync(DDBControlImpl *this)
{
  v2 = *(this + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = PersonalityInfo::logPrefix(***(this + 15));
    v5 = 136315394;
    v6 = v3;
    v7 = 2080;
    v8 = " ";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s%sStarting Dedicared Bearer Controller", &v5, 0x16u);
  }

  result = *(this + 19);
  if (result)
  {
    return (*(*result + 336))(result, *(***(this + 15) + 48));
  }

  return result;
}

void DDBControlImpl::activate(uint64_t a1, uint64_t a2, uint64_t a3, NSObject **a4)
{
  sub_100004AA0(&v8, (a1 + 8));
  v6 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v6);
  }

  v7 = *a4;
  if (v7)
  {
    dispatch_retain(v7);
    dispatch_group_enter(v7);
  }

  v8 = 0;
  v9 = 0;
  sub_100004AA0(&v8, (a1 + 8));
  operator new();
}

void DDBControlImpl::personality_recovered(uint64_t a1)
{
  sub_100004AA0(&v3, (a1 + 8));
  v2 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v2);
  }

  v3 = 0;
  v4 = 0;
  sub_100004AA0(&v3, (a1 + 8));
  operator new();
}

void DDBControlImpl::cfg_updated(uint64_t a1)
{
  sub_100004AA0(&v3, (a1 + 8));
  v2 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v2);
  }

  v3 = 0;
  v4 = 0;
  sub_100004AA0(&v3, (a1 + 8));
  operator new();
}

void DDBControlImpl::contextChanged(uint64_t a1)
{
  v1[0] = 0;
  v1[1] = 0;
  sub_100004AA0(v1, (a1 + 8));
  operator new();
}

void DDBControlImpl::handleEntitlementStatesChanged(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = PersonalityInfo::logPrefix(***(a1 + 120));
    LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
    *(buf.__r_.__value_.__r.__words + 4) = v5;
    WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
    *(&buf.__r_.__value_.__r.__words[1] + 6) = " ";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s%shandleEntitlementStatesChanged", &buf, 0x16u);
  }

  v7 = (a1 + 120);
  v6 = *(a1 + 120);
  *__dst = 0u;
  v46 = 0u;
  v8 = sub_100007A6C(a2, (**v6 + 24));
  if (a2 + 8 == v8)
  {
    goto LABEL_70;
  }

  if ((*(v8 + 58) & 2) == 0)
  {
    goto LABEL_70;
  }

  v9 = *(v8 + 72);
  if (!v9)
  {
    goto LABEL_70;
  }

  v10 = v8 + 72;
  do
  {
    if (*(v9 + 28) >= 17)
    {
      v10 = v9;
    }

    v9 = *(v9 + 8 * (*(v9 + 28) < 17));
  }

  while (v9);
  if (v10 == v8 + 72 || *(v10 + 28) > 17 || *(v10 + 32) != 2)
  {
    goto LABEL_70;
  }

  v13 = *(v8 + 96);
  v11 = v8 + 96;
  v12 = v13;
  if (!v13)
  {
    goto LABEL_29;
  }

  v14 = v11;
  do
  {
    if (*(v12 + 32) >= 17)
    {
      v14 = v12;
    }

    v12 = *(v12 + 8 * (*(v12 + 32) < 17));
  }

  while (v12);
  if (v14 == v11 || *(v14 + 32) > 17)
  {
LABEL_29:
    v23 = *(a1 + 40);
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_33;
    }

    v24 = PersonalityInfo::logPrefix(***v7);
    LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
    *(buf.__r_.__value_.__r.__words + 4) = v24;
    WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
    *(&buf.__r_.__value_.__r.__words[1] + 6) = " ";
    v20 = "#I %s%sno details given - Allowed with ES url";
LABEL_31:
    v21 = v23;
    v22 = 22;
LABEL_32:
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, v20, &buf, v22);
    goto LABEL_33;
  }

  v15 = *(v14 + 64);
  if (!v15 || (*(v15 + 24) & 1) == 0)
  {
    v23 = *(a1 + 40);
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_33;
    }

    v40 = PersonalityInfo::logPrefix(***v7);
    LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
    *(buf.__r_.__value_.__r.__words + 4) = v40;
    WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
    *(&buf.__r_.__value_.__r.__words[1] + 6) = " ";
    v20 = "#I %s%sNo alt server given. Allowed with ES url";
    goto LABEL_31;
  }

  v16 = *(v15 + 23);
  if (v16 < 0)
  {
    v16 = *(v15 + 8);
  }

  if (!v16)
  {
    v41 = *(a1 + 40);
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      v42 = PersonalityInfo::logPrefix(***v7);
      LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
      *(buf.__r_.__value_.__r.__words + 4) = v42;
      WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
      *(&buf.__r_.__value_.__r.__words[1] + 6) = " ";
      _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "#I %s%sAllowed with alternative url, which is not yet given - waiting", &buf, 0x16u);
    }

LABEL_70:
    v28 = *(a1 + 40);
    if (!os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_73;
    }

    v43 = PersonalityInfo::logPrefix(***v7);
    LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
    *(buf.__r_.__value_.__r.__words + 4) = v43;
    WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
    *(&buf.__r_.__value_.__r.__words[1] + 6) = " ";
    v30 = "#I %s%sservice is not allowed";
    goto LABEL_72;
  }

  sub_10012BF3C(__dst, v15);
  v17 = *(a1 + 40);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = PersonalityInfo::logPrefix(***v7);
    v19 = __dst;
    if (SBYTE7(v46) < 0)
    {
      v19 = __dst[0];
    }

    LODWORD(buf.__r_.__value_.__l.__data_) = 136315650;
    *(buf.__r_.__value_.__r.__words + 4) = v18;
    WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
    *(&buf.__r_.__value_.__r.__words[1] + 6) = " ";
    HIWORD(buf.__r_.__value_.__r.__words[2]) = 2080;
    v50 = v19;
    v20 = "#I %s%sAllowed with alternative url: %s";
    v21 = v17;
    v22 = 32;
    goto LABEL_32;
  }

LABEL_33:
  if (BYTE8(v46))
  {
    goto LABEL_41;
  }

  memset(&buf, 0, sizeof(buf));
  sub_100A8161C(*(a1 + 136), &buf);
  size = HIBYTE(buf.__r_.__value_.__r.__words[2]);
  v26 = HIBYTE(buf.__r_.__value_.__r.__words[2]);
  if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = buf.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    sub_1001696A4(__dst, &buf);
    v26 = HIBYTE(buf.__r_.__value_.__r.__words[2]);
  }

  if (v26 < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }

  if (BYTE8(v46))
  {
LABEL_41:
    v27 = *(a1 + 152);
    if (!v27)
    {
      goto LABEL_59;
    }

    __p[0] = 0;
    __p[1] = 0;
    v48 = 0;
    if (*(v27 + 455) < 0)
    {
      sub_100005F2C(__p, *(v27 + 432), *(v27 + 440));
    }

    else
    {
      *__p = *(v27 + 432);
      v48 = *(v27 + 448);
    }

    if (!sub_100071DF8(__dst, __p))
    {
      v31 = *(a1 + 40);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        v32 = PersonalityInfo::logPrefix(***v7);
        v33 = __p;
        if (v48 < 0)
        {
          v33 = __p[0];
        }

        v34 = __dst;
        if (SBYTE7(v46) < 0)
        {
          v34 = __dst[0];
        }

        LODWORD(buf.__r_.__value_.__l.__data_) = 136315906;
        *(buf.__r_.__value_.__r.__words + 4) = v32;
        WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
        *(&buf.__r_.__value_.__r.__words[1] + 6) = " ";
        HIWORD(buf.__r_.__value_.__r.__words[2]) = 2080;
        v50 = v33;
        v51 = 2080;
        v52 = v34;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "#I %s%sserver address is changing from %s to %s", &buf, 0x2Au);
      }

      v35 = *(a1 + 160);
      *(a1 + 152) = 0;
      *(a1 + 160) = 0;
      if (v35)
      {
        sub_100004A34(v35);
      }
    }

    if (SHIBYTE(v48) < 0)
    {
      operator delete(__p[0]);
    }

    if (!*(a1 + 152))
    {
LABEL_59:
      v36 = *(a1 + 40);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        v37 = PersonalityInfo::logPrefix(***v7);
        v38 = __dst;
        if (SBYTE7(v46) < 0)
        {
          v38 = __dst[0];
        }

        LODWORD(buf.__r_.__value_.__l.__data_) = 136315650;
        *(buf.__r_.__value_.__r.__words + 4) = v37;
        WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
        *(&buf.__r_.__value_.__r.__words[1] + 6) = " ";
        HIWORD(buf.__r_.__value_.__r.__words[2]) = 2080;
        v50 = v38;
        _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "#I %s%screating driver with url: %s", &buf, 0x20u);
      }

      v39 = *(a1 + 24);
      if (v39)
      {
        dispatch_retain(v39);
      }

      sub_100004AA0(__p, (a1 + 8));
      __p[0] = 0;
      __p[1] = 0;
      entitlements::CEHTTPDriver::create();
    }

    goto LABEL_75;
  }

  v28 = *(a1 + 40);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    v29 = PersonalityInfo::logPrefix(***v7);
    LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
    *(buf.__r_.__value_.__r.__words + 4) = v29;
    WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
    *(&buf.__r_.__value_.__r.__words[1] + 6) = " ";
    v30 = "#W %s%sserver address is missing. Driver is not created";
LABEL_72:
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, v30, &buf, 0x16u);
  }

LABEL_73:
  v44 = *(a1 + 160);
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  if (v44)
  {
    sub_100004A34(v44);
  }

LABEL_75:
  if (BYTE8(v46) == 1 && SBYTE7(v46) < 0)
  {
    operator delete(__dst[0]);
  }
}

void sub_10043E5F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, dispatch_object_t object, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a23 == 1 && a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10043E720(uint64_t a1, char **a2)
{
  if (*(a1 + 24) == 1)
  {
    if (a1 != a2)
    {
      sub_1001122C4(a1, *a2, a2[1], a2[1] - *a2);
    }
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    sub_100034C50(a1, *a2, a2[1], a2[1] - *a2);
    *(a1 + 24) = 1;
  }

  return a1;
}

void DDBControlImpl::queryGetLinkCharacteristics(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 152))
  {
    v15 = 0;
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (Mutable)
    {
      v5 = v15;
      v15 = Mutable;
      *buf = v5;
      sub_1000296E0(buf);
    }

    v6 = v15;
    if (*(a2 + 23) < 0)
    {
      sub_100005F2C(v12, *a2, *(a2 + 8));
    }

    else
    {
      *v12 = *a2;
      v13 = *(a2 + 16);
    }

    if (SHIBYTE(v13) < 0)
    {
      sub_100005F2C(__p, v12[0], v12[1]);
    }

    else
    {
      *__p = *v12;
      v18 = v13;
    }

    v16 = 0;
    if (SHIBYTE(v18) < 0)
    {
      sub_100005F2C(buf, __p[0], __p[1]);
    }

    else
    {
      *buf = *__p;
      *&buf[16] = v18;
    }

    v19 = 0;
    if (ctu::cf::convert_copy())
    {
      v9 = v16;
      v16 = v19;
      v20 = v9;
      sub_100005978(&v20);
    }

    if ((buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    v10 = v16;
    v14 = v16;
    v16 = 0;
    sub_100005978(&v16);
    if (SHIBYTE(v18) < 0)
    {
      operator delete(__p[0]);
    }

    CFDictionarySetValue(v6, @"service", v10);
    sub_100005978(&v14);
    if (SHIBYTE(v13) < 0)
    {
      operator delete(v12[0]);
    }

    *buf = 0;
    *&buf[8] = 0;
    sub_100010180(&v20, &v15);
    __p[0] = 0;
    v11 = v20;
    v20 = 0;
    *buf = v11;
    sub_10001021C(__p);
    sub_10001021C(&v20);
    (*(**(a1 + 152) + 200))(*(a1 + 152), 22, buf);
    (*(**(a1 + 152) + 352))(*(a1 + 152));
    sub_10000A1EC(&buf[8]);
    sub_10001021C(buf);
    sub_1000296E0(&v15);
  }

  else
  {
    v7 = *(a1 + 40);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = PersonalityInfo::logPrefix(***(a1 + 120));
      *buf = 136315394;
      *&buf[4] = v8;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s%sDriver is not yet created, maybe carrier doesnt support dedicated bearer", buf, 0x16u);
    }
  }
}

void sub_10043EA70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, int a16, const void *a17, const void *a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  sub_100005978(&a18);
  if (a24 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  sub_1000296E0(&a17);
  _Unwind_Resume(a1);
}

BOOL DDBControlImpl::addSession(uint64_t a1, uint64_t a2, uint64_t a3, const void ****a4)
{
  if (!*(a1 + 152))
  {
    v12 = *(a1 + 40);
    result = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    v14 = PersonalityInfo::logPrefix(***(a1 + 120));
    *buf = 136315394;
    *&buf[4] = v14;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v15 = "#I %s%sDriver is not yet created, maybe carrier doesnt support dedicated bearer";
    v16 = v12;
    v17 = 22;
    goto LABEL_21;
  }

  v8 = sub_100007A6C(a1 + 168, a2);
  if (a1 + 176 == v8)
  {
    v18 = *(a1 + 40);
    result = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    v19 = PersonalityInfo::logPrefix(***(a1 + 120));
    if (*(a2 + 23) >= 0)
    {
      v20 = a2;
    }

    else
    {
      v20 = *a2;
    }

    *buf = 136315650;
    *&buf[4] = v19;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    *&buf[22] = 2080;
    v59 = v20;
    v15 = "#I %s%sLink statistics is not yet available for service %s. Rejecting request";
LABEL_20:
    v16 = v18;
    v17 = 32;
LABEL_21:
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, v15, buf, v17);
    return 0;
  }

  if (!*(v8 + 56))
  {
    v18 = *(a1 + 40);
    result = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    v21 = PersonalityInfo::logPrefix(***(a1 + 120));
    if (*(a2 + 23) >= 0)
    {
      v22 = a2;
    }

    else
    {
      v22 = *a2;
    }

    *buf = 136315650;
    *&buf[4] = v21;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    *&buf[22] = 2080;
    v59 = v22;
    v15 = "#I %s%sServer do not support service %s";
    goto LABEL_20;
  }

  theDict = 0;
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (Mutable)
  {
    v10 = theDict;
    theDict = Mutable;
    *buf = v10;
    sub_1000296E0(buf);
  }

  CFDictionarySetValue(theDict, @"operation", @"enable");
  v11 = theDict;
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__dst, *a2, *(a2 + 8));
  }

  else
  {
    *__dst = *a2;
    v51 = *(a2 + 16);
  }

  if (SHIBYTE(v51) < 0)
  {
    sub_100005F2C(__p, __dst[0], __dst[1]);
  }

  else
  {
    *__p = *__dst;
    v55 = v51;
  }

  v56 = 0;
  if (SHIBYTE(v55) < 0)
  {
    sub_100005F2C(buf, __p[0], __p[1]);
  }

  else
  {
    *buf = *__p;
    *&buf[16] = v55;
  }

  v57 = 0;
  if (ctu::cf::convert_copy())
  {
    v23 = v56;
    v56 = v57;
    v47 = v23;
    sub_100005978(&v47);
  }

  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  value = v56;
  v56 = 0;
  sub_100005978(&v56);
  if (SHIBYTE(v55) < 0)
  {
    operator delete(__p[0]);
  }

  CFDictionarySetValue(v11, @"service", value);
  sub_100005978(&value);
  if (SHIBYTE(v51) < 0)
  {
    operator delete(__dst[0]);
  }

  theArray = 0;
  v24 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  if (v24)
  {
    v25 = theArray;
    theArray = v24;
    *buf = v25;
    sub_1000279DC(buf);
  }

  v26 = *a4;
  v27 = a4[1];
  if (*a4 != v27)
  {
    do
    {
      __p[0] = 0;
      v28 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      if (v28)
      {
        v29 = __p[0];
        __p[0] = v28;
        *buf = v29;
        sub_1000296E0(buf);
      }

      v30 = *v26;
      v31 = **v26;
      if (v31)
      {
        CFDictionarySetValue(__p[0], @"src-ip", v31);
        v30 = *v26;
      }

      v32 = v30[1];
      if (v32)
      {
        CFDictionarySetValue(__p[0], @"src-port", v32);
        v30 = *v26;
      }

      v33 = v30[2];
      if (v33)
      {
        CFDictionarySetValue(__p[0], @"remote-ip", v33);
        v30 = *v26;
      }

      v34 = v30[3];
      if (v34)
      {
        CFDictionarySetValue(__p[0], @"remote-port", v34);
        v30 = *v26;
      }

      v35 = v30[4];
      if (v35)
      {
        if (v35 == 6)
        {
          v36 = @"tcp";
        }

        else
        {
          if (v35 != 17)
          {
            goto LABEL_57;
          }

          v36 = @"udp";
        }
      }

      else
      {
        v36 = @"ip";
      }

      CFDictionarySetValue(__p[0], @"protocol", v36);
LABEL_57:
      v37 = *v26;
      v38 = (*v26)[5];
      if (v38)
      {
        CFDictionarySetValue(__p[0], @"traffic-class", v38);
        v37 = *v26;
      }

      v39 = v37[6];
      if (!v39)
      {
        v40 = @"UL";
        goto LABEL_63;
      }

      if (v39 == 1)
      {
        v40 = @"DL";
LABEL_63:
        CFDictionarySetValue(__p[0], @"direction", v40);
      }

      CFArrayAppendValue(theArray, __p[0]);
      sub_1000296E0(__p);
      v26 += 2;
    }

    while (v26 != v27);
  }

  CFDictionarySetValue(theDict, @"flow-rules", theArray);
  v47 = 0;
  v48 = 0;
  sub_100010180(__p, &theDict);
  *buf = v47;
  v47 = __p[0];
  __p[0] = 0;
  sub_10001021C(buf);
  sub_10001021C(__p);
  if (*(a3 + 23) < 0)
  {
    sub_100005F2C(v43, *a3, *(a3 + 8));
  }

  else
  {
    *v43 = *a3;
    v44 = *(a3 + 16);
  }

  if (SHIBYTE(v44) < 0)
  {
    sub_100005F2C(__p, v43[0], v43[1]);
  }

  else
  {
    *__p = *v43;
    v55 = v44;
  }

  value = 0;
  if (SHIBYTE(v55) < 0)
  {
    sub_100005F2C(buf, __p[0], __p[1]);
  }

  else
  {
    *buf = *__p;
    *&buf[16] = v55;
  }

  v56 = 0;
  if (ctu::cf::convert_copy())
  {
    v41 = value;
    value = v56;
    v57 = v41;
    sub_100005978(&v57);
  }

  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  v42 = value;
  v45 = value;
  value = 0;
  sub_100005978(&value);
  if (SHIBYTE(v55) < 0)
  {
    operator delete(__p[0]);
  }

  v46 = v42;
  if (v42)
  {
    CFRetain(v42);
  }

  *buf = v48;
  v48 = v42;
  v46 = 0;
  sub_10000A1EC(buf);
  sub_10000A1EC(&v46);
  sub_100005978(&v45);
  if (SHIBYTE(v44) < 0)
  {
    operator delete(v43[0]);
  }

  (*(**(a1 + 152) + 208))(*(a1 + 152), 23, &v47);
  (*(**(a1 + 152) + 352))(*(a1 + 152));
  sub_10000A1EC(&v48);
  sub_10001021C(&v47);
  sub_1000279DC(&theArray);
  sub_1000296E0(&theDict);
  return 1;
}

void sub_10043F258(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, const void *a19, uint64_t a20, const void *a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, const void *a29, const void *a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, char a38)
{
  sub_100005978(&a30);
  if (a36 < 0)
  {
    operator delete(__p);
  }

  if (a16 < 0)
  {
    operator delete(a11);
  }

  sub_10000A1EC(&a20);
  sub_10001021C(&a19);
  sub_1000279DC(&a21);
  sub_1000296E0(&a29);
  _Unwind_Resume(a1);
}

BOOL DDBControlImpl::removeSession(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 152);
  if (v5)
  {
    theDict = 0;
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (Mutable)
    {
      v9 = theDict;
      theDict = Mutable;
      *buf = v9;
      sub_1000296E0(buf);
    }

    CFDictionarySetValue(theDict, @"operation", @"delete");
    v10 = theDict;
    if (*(a4 + 23) < 0)
    {
      sub_100005F2C(__dst, *a4, *(a4 + 8));
    }

    else
    {
      *__dst = *a4;
      v24 = *(a4 + 16);
    }

    if (SHIBYTE(v24) < 0)
    {
      sub_100005F2C(__p, __dst[0], __dst[1]);
    }

    else
    {
      *__p = *__dst;
      v28 = v24;
    }

    v29 = 0;
    if (SHIBYTE(v28) < 0)
    {
      sub_100005F2C(buf, __p[0], __p[1]);
    }

    else
    {
      *buf = *__p;
      *&buf[16] = v28;
    }

    v30 = 0;
    if (ctu::cf::convert_copy())
    {
      v13 = v29;
      v29 = v30;
      v21 = v13;
      sub_100005978(&v21);
    }

    if ((buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    value = v29;
    v29 = 0;
    sub_100005978(&v29);
    if (SHIBYTE(v28) < 0)
    {
      operator delete(__p[0]);
    }

    CFDictionarySetValue(v10, @"session-id", value);
    sub_100005978(&value);
    if (SHIBYTE(v24) < 0)
    {
      operator delete(__dst[0]);
    }

    v21 = 0;
    v22 = 0;
    sub_100010180(__p, &theDict);
    *buf = v21;
    v21 = __p[0];
    __p[0] = 0;
    sub_10001021C(buf);
    sub_10001021C(__p);
    if (*(a3 + 23) < 0)
    {
      sub_100005F2C(v17, *a3, *(a3 + 8));
    }

    else
    {
      *v17 = *a3;
      v18 = *(a3 + 16);
    }

    if (SHIBYTE(v18) < 0)
    {
      sub_100005F2C(__p, v17[0], v17[1]);
    }

    else
    {
      *__p = *v17;
      v28 = v18;
    }

    value = 0;
    if (SHIBYTE(v28) < 0)
    {
      sub_100005F2C(buf, __p[0], __p[1]);
    }

    else
    {
      *buf = *__p;
      *&buf[16] = v28;
    }

    v29 = 0;
    if (ctu::cf::convert_copy())
    {
      v14 = value;
      value = v29;
      v30 = v14;
      sub_100005978(&v30);
    }

    if ((buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    v15 = value;
    v19 = value;
    value = 0;
    sub_100005978(&value);
    if (SHIBYTE(v28) < 0)
    {
      operator delete(__p[0]);
    }

    v20 = v15;
    if (v15)
    {
      CFRetain(v15);
    }

    *buf = v22;
    v22 = v15;
    v20 = 0;
    sub_10000A1EC(buf);
    sub_10000A1EC(&v20);
    sub_100005978(&v19);
    if (SHIBYTE(v18) < 0)
    {
      operator delete(v17[0]);
    }

    (*(**(a1 + 152) + 208))(*(a1 + 152), 23, &v21);
    (*(**(a1 + 152) + 352))(*(a1 + 152));
    sub_10000A1EC(&v22);
    sub_10001021C(&v21);
    sub_1000296E0(&theDict);
  }

  else
  {
    v11 = *(a1 + 40);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = PersonalityInfo::logPrefix(***(a1 + 120));
      *buf = 136315394;
      *&buf[4] = v12;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I %s%sDriver is not yet created, maybe carrier doesnt support dedicated bearer", buf, 0x16u);
    }
  }

  return v5 != 0;
}

void sub_10043F7BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, const void *a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, const void *a27, const void *a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  sub_100005978(&a28);
  if (a34 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  sub_10000A1EC(&a19);
  sub_10001021C(&a18);
  sub_1000296E0(&a27);
  _Unwind_Resume(a1);
}

void sub_10043F8B8(uint64_t a1, int a2, int **a3)
{
  if (a2 == 3)
  {
    v5 = *(a1 + 40);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = PersonalityInfo::logPrefix(***(a1 + 120));
      v7 = sub_100531604(**a3);
      v8 = 136315650;
      v9 = v6;
      v10 = 2080;
      v11 = " ";
      v12 = 2080;
      v13 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s%s_____________   Process Authentication response with status: %s", &v8, 0x20u);
    }
  }
}

void sub_10043F9A4(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_1017707A0(a1, v2);
  }
}

void sub_10043F9E8(uint64_t a1, int a2, int **a3, CFDictionaryRef *a4)
{
  v8 = *(a1 + 40);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = PersonalityInfo::logPrefix(***(a1 + 120));
    *buf = 136315650;
    *&buf[4] = v9;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    *&buf[22] = 2080;
    v47 = sub_100A38E30(a2);
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%sgetLinkCharacteristics: Event cause is %s", buf, 0x20u);
    v8 = *(a1 + 40);
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = PersonalityInfo::logPrefix(***(a1 + 120));
    *buf = 136315394;
    *&buf[4] = v10;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%srequest: ", buf, 0x16u);
  }

  *buf = off_101E4D2C0;
  *&buf[8] = a1;
  v47 = buf;
  logger::CFTypeRefLogger();
  sub_100007E44(buf);
  __p[0] = 0;
  __p[1] = 0;
  v45 = 0;
  Value = CFDictionaryGetValue(*a4, @"service");
  if (Value)
  {
    CFGetTypeID(Value);
    CFStringGetTypeID();
  }

  memset(buf, 0, sizeof(buf));
  ctu::cf::assign();
  *__p = *buf;
  v45 = *&buf[16];
  v12 = sub_100007A6C(a1 + 168, __p);
  if (a2 == 3)
  {
    v13 = v12;
    v14 = **a3;
    if (v14 > 6005)
    {
      if (v14 != 6006 && v14 != 6300)
      {
        goto LABEL_53;
      }
    }

    else if ((v14 - 6003) >= 2)
    {
      if (v14 == 6000)
      {
        v15 = **(*a3 + 3);
        v16 = *(a1 + 40);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v17 = PersonalityInfo::logPrefix(***(a1 + 120));
          *buf = 136315394;
          *&buf[4] = v17;
          *&buf[12] = 2080;
          *&buf[14] = " ";
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I %s%sresponse: ", buf, 0x16u);
        }

        *buf = off_101E4D340;
        *&buf[8] = a1;
        v47 = buf;
        logger::CFTypeRefLogger();
        sub_100007E44(buf);
        v18 = CFDictionaryGetValue(v15, @"qos-flow-allowed");
        v20 = v18;
        if (v18)
        {
          v21 = CFGetTypeID(v18);
          if (v21 == CFBooleanGetTypeID())
          {
            v22 = v20;
          }

          else
          {
            v22 = 0;
          }
        }

        else
        {
          v22 = 0;
        }

        buf[0] = 0;
        ctu::cf::assign(buf, v22, v19);
        if (buf[0] == 1)
        {
          operator new();
        }

        if (a1 + 176 == v13 || *(v13 + 56))
        {
          v35 = *(a1 + 40);
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
          {
            v36 = PersonalityInfo::logPrefix(***(a1 + 120));
            v37 = __p;
            if (v45 < 0)
            {
              v37 = __p[0];
            }

            *buf = 136315650;
            *&buf[4] = v36;
            *&buf[12] = 2080;
            *&buf[14] = " ";
            *&buf[22] = 2080;
            v47 = v37;
            _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "#I %s%snew link characteristics for %s received", buf, 0x20u);
          }

          *buf = __p;
          v38 = sub_1004428EC(a1 + 168, __p);
          v39 = *(v38 + 64);
          *(v38 + 56) = 0;
          *(v38 + 64) = 0;
          if (v39)
          {
            sub_100004A34(v39);
          }

          v40 = *(a1 + 112);
          if (v40)
          {
            v41 = std::__shared_weak_count::lock(v40);
            if (v41)
            {
              v42 = v41;
              v43 = *(a1 + 104);
              if (v43)
              {
                (*(*v43 + 16))(v43, ***(a1 + 120) + 24, __p);
              }

              sub_100004A34(v42);
            }
          }
        }
      }

      goto LABEL_53;
    }

    v23 = *(a1 + 40);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = PersonalityInfo::logPrefix(***(a1 + 120));
      v25 = __p;
      if (v45 < 0)
      {
        v25 = __p[0];
      }

      *buf = 136315650;
      *&buf[4] = v24;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      *&buf[22] = 2080;
      v47 = v25;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I %s%sServer rejects the device. Disable service at least for service %s", buf, 0x20u);
    }

    if (a1 + 176 == v13 || *(v13 + 56))
    {
      v26 = *(a1 + 40);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v27 = PersonalityInfo::logPrefix(***(a1 + 120));
        v28 = __p;
        if (v45 < 0)
        {
          v28 = __p[0];
        }

        *buf = 136315650;
        *&buf[4] = v27;
        *&buf[12] = 2080;
        *&buf[14] = " ";
        *&buf[22] = 2080;
        v47 = v28;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#I %s%snew link characteristics for %s received", buf, 0x20u);
      }

      *buf = __p;
      v29 = sub_1004428EC(a1 + 168, __p);
      v30 = *(v29 + 64);
      *(v29 + 56) = 0;
      *(v29 + 64) = 0;
      if (v30)
      {
        sub_100004A34(v30);
      }

      v31 = *(a1 + 112);
      if (v31)
      {
        v32 = std::__shared_weak_count::lock(v31);
        if (v32)
        {
          v33 = v32;
          v34 = *(a1 + 104);
          if (v34)
          {
            (*(*v34 + 16))(v34, ***(a1 + 120) + 24, __p);
          }

          sub_100004A34(v33);
        }
      }
    }
  }

LABEL_53:
  if (SHIBYTE(v45) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1004401FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  sub_100004A34(v22);
  if (v21)
  {
    sub_100004A34(v21);
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

const void **sub_1004402AC(const void **a1, CFTypeRef *a2)
{
  v3 = *a2;
  if (*a2)
  {
    CFRetain(*a2);
  }

  v4 = *a1;
  *a1 = v3;
  v6 = v4;
  sub_100029A48(&v6);
  return a1;
}

void sub_100440300(uint64_t a1, int a2, int **a3, CFDictionaryRef *a4, const void **a5)
{
  v10 = *(a1 + 40);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = PersonalityInfo::logPrefix(***(a1 + 120));
    *buf = 136315650;
    *&buf[4] = v11;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    *&buf[22] = 2080;
    v49 = sub_100A38E30(a2);
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I %s%ssetEnhancedSession: Event cause is %s", buf, 0x20u);
    v10 = *(a1 + 40);
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v12 = PersonalityInfo::logPrefix(***(a1 + 120));
    *buf = 136315394;
    *&buf[4] = v12;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I %s%srequest: ", buf, 0x16u);
  }

  *buf = off_101E4D410;
  *&buf[8] = a1;
  v49 = buf;
  logger::CFTypeRefLogger();
  sub_100007E44(buf);
  Value = CFDictionaryGetValue(*a4, @"operation");
  v14 = Value;
  if (Value)
  {
    v15 = CFGetTypeID(Value);
    if (v15 == CFStringGetTypeID())
    {
      v16 = v14;
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  v17 = CFEqual(@"enable", v16);
  v45[0] = 0;
  v45[1] = 0;
  v46 = 0;
  v18 = CFDictionaryGetValue(*a4, @"service");
  if (v18)
  {
    CFGetTypeID(v18);
    CFStringGetTypeID();
  }

  memset(buf, 0, sizeof(buf));
  ctu::cf::assign();
  *v45 = *buf;
  v46 = *&buf[16];
  v43[0] = 0;
  v43[1] = 0;
  v44 = 0;
  sub_100060E84(&cf, a5);
  __p = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  v47 = 0;
  *buf = 0;
  sub_100060DE8(buf, &__p);
  if (*buf)
  {
    sub_100222570(&v47, buf);
  }

  sub_100005978(buf);
  v42 = v47;
  v47 = 0;
  sub_100005978(&v47);
  sub_10000A1EC(&__p);
  memset(buf, 0, sizeof(buf));
  ctu::cf::assign();
  *v43 = *buf;
  v44 = *&buf[16];
  sub_100005978(&v42);
  sub_10000A1EC(&cf);
  __p = 0;
  v40 = 0uLL;
  if (a2 == 3)
  {
    v19 = **a3;
    if (v19 > 6005)
    {
      if (v19 != 6006)
      {
        if (v19 == 6201)
        {
          v33 = 0;
LABEL_44:
          v34 = *(a1 + 112);
          if (v34)
          {
            v35 = std::__shared_weak_count::lock(v34);
            if (v35)
            {
              v36 = v35;
              v37 = *(a1 + 104);
              if (v37)
              {
                if (v17 == 1)
                {
                  v38 = (*v37 + 24);
                }

                else
                {
                  v38 = (*v37 + 32);
                }

                (*v38)();
              }

              sub_100004A34(v36);
              v33 = HIBYTE(v40);
            }
          }

          if ((v33 & 0x80) != 0)
          {
            operator delete(__p);
          }

          goto LABEL_54;
        }

        if (v19 != 6300)
        {
          goto LABEL_54;
        }
      }
    }

    else if ((v19 - 6003) >= 2)
    {
      if (v19 != 6000)
      {
        goto LABEL_54;
      }

      v20 = **(*a3 + 3);
      v21 = *(a1 + 40);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = PersonalityInfo::logPrefix(***(a1 + 120));
        *buf = 136315394;
        *&buf[4] = v22;
        *&buf[12] = 2080;
        *&buf[14] = " ";
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I %s%sresponse: ", buf, 0x16u);
      }

      *buf = off_101E4D490;
      *&buf[8] = a1;
      v49 = buf;
      logger::CFTypeRefLogger();
      sub_100007E44(buf);
      v23 = CFDictionaryGetValue(v20, @"session-id");
      if (v23)
      {
        CFGetTypeID(v23);
        CFStringGetTypeID();
      }

      memset(buf, 0, sizeof(buf));
      ctu::cf::assign();
      __p = *buf;
      *&v40 = *&buf[8];
      *(&v40 + 7) = *&buf[15];
      v33 = buf[23];
      HIBYTE(v40) = buf[23];
      goto LABEL_44;
    }

    v24 = *(a1 + 40);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = PersonalityInfo::logPrefix(***(a1 + 120));
      v26 = "disable";
      if (v17 == 1)
      {
        v26 = "enable";
      }

      *buf = 136315906;
      v27 = v45;
      *&buf[4] = v25;
      if (v46 < 0)
      {
        v27 = v45[0];
      }

      *&buf[12] = 2080;
      *&buf[14] = " ";
      *&buf[22] = 2080;
      v49 = v26;
      v50 = 2080;
      v51 = v27;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#I %s%sServer rejects the request to %s for service %s", buf, 0x2Au);
    }

    v28 = *(a1 + 112);
    if (v28)
    {
      v29 = std::__shared_weak_count::lock(v28);
      if (v29)
      {
        v30 = v29;
        v31 = *(a1 + 104);
        if (v31)
        {
          v32 = ***(a1 + 120);
          memset(buf, 0, sizeof(buf));
          if (v17 == 1)
          {
            (*(*v31 + 24))(v31, v32 + 24, v43, buf, 0);
          }

          else
          {
            (*(*v31 + 32))(v31, v32 + 24, v43, buf, 0);
          }

          if (buf[23] < 0)
          {
            operator delete(*buf);
          }
        }

        sub_100004A34(v30);
      }
    }
  }

LABEL_54:
  if (SHIBYTE(v44) < 0)
  {
    operator delete(v43[0]);
  }

  if (SHIBYTE(v46) < 0)
  {
    operator delete(v45[0]);
  }
}

void sub_1004409C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, char a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  sub_100004A34(v40);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  _Unwind_Resume(a1);
}

void DDBControlImpl::handleDumpState(DDBControlImpl *this)
{
  v2 = (this + 40);
  v3 = *(this + 5);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = PersonalityInfo::logPrefix(***(this + 15));
    *buf = 136315394;
    v18 = v4;
    v19 = 2080;
    v20 = " ";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s%s |--- Dedicated Bearer Controller:", buf, 0x16u);
    v3 = *(this + 5);
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = PersonalityInfo::logPrefix(***(this + 15));
    v6 = asStringBool(*(this + 19) != 0);
    *buf = 136315650;
    v18 = v5;
    v19 = 2080;
    v20 = " ";
    v21 = 2080;
    v22 = v6;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s%s | Has driver: %s", buf, 0x20u);
  }

  if (*(this + 23))
  {
    v7 = *(this + 21);
    if (v7 != (this + 176))
    {
      do
      {
        v8 = *v2;
        if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEFAULT))
        {
          v9 = (v7 + 32);
          v10 = PersonalityInfo::logPrefix(***(this + 15));
          if (*(v7 + 55) < 0)
          {
            v9 = *v9;
          }

          *buf = 136315906;
          v18 = v10;
          v19 = 2080;
          v20 = " ";
          v21 = 2080;
          v22 = v9;
          v23 = 2080;
          v24 = "TBD";
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%s | links characteristics for '%s': %s", buf, 0x2Au);
        }

        v11 = *(v7 + 1);
        if (v11)
        {
          do
          {
            v12 = v11;
            v11 = *v11;
          }

          while (v11);
        }

        else
        {
          do
          {
            v12 = *(v7 + 2);
            v13 = *v12 == v7;
            v7 = v12;
          }

          while (!v13);
        }

        v7 = v12;
      }

      while (v12 != (this + 176));
    }
  }

  else
  {
    v14 = *v2;
    if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEFAULT))
    {
      v15 = PersonalityInfo::logPrefix(***(this + 15));
      *buf = 136315394;
      v18 = v15;
      v19 = 2080;
      v20 = " ";
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I %s%s | No link characteristics", buf, 0x16u);
    }
  }

  v16 = *(this + 19);
  if (v16)
  {
    (*(*v16 + 328))(v16);
  }

  sub_1009C4560(*(this + 15), v2);
}

void sub_100440DF0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, const void **a5, const void **a6)
{
  v9 = a4[1];
  v10 = a1 - 48;
  v13[0] = *a4;
  v13[1] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  sub_100010024(&v12, a5);
  sub_100060E84(&v11, a6);
  sub_100440EBC(v10, a2, a3, v13, &v12, &v11);
}

void sub_100440E94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  sub_10000A1EC(&a9);
  sub_10001021C(&a10);
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(a1);
}

void sub_100440EBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const void **a5, const void **a6)
{
  sub_100004AA0(&v14, (a1 + 8));
  v10 = v15;
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v10);
  }

  v11 = *(a4 + 8);
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  sub_100010024(&v12, a5);
  sub_100060E84(&v13, a6);
  sub_100442DD8((a1 + 8));
}

void sub_100440F9C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, const void **a5, const void **a6)
{
  v9 = a4[1];
  v10 = a1 - 48;
  v13[0] = *a4;
  v13[1] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  sub_100010024(&v12, a5);
  sub_100060E84(&v11, a6);
  sub_100441068(v10, a2, a3, v13, &v12, &v11);
}

void sub_100441040(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  sub_10000A1EC(&a9);
  sub_10001021C(&a10);
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(a1);
}

void sub_100441068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const void **a5, const void **a6)
{
  sub_100004AA0(&v14, (a1 + 8));
  v10 = v15;
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v10);
  }

  v11 = *(a4 + 8);
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  sub_100010024(&v12, a5);
  sub_100060E84(&v13, a6);
  sub_1004430A8((a1 + 8));
}

void sub_100441148(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, const void **a5, const void **a6)
{
  v9 = a4[1];
  v10 = a1 - 48;
  v13[0] = *a4;
  v13[1] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  sub_100010024(&v12, a5);
  sub_100060E84(&v11, a6);
  sub_100441214(v10, a2, a3, v13, &v12, &v11);
}

void sub_1004411EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  sub_10000A1EC(&a9);
  sub_10001021C(&a10);
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(a1);
}

void sub_100441214(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const void **a5, const void **a6)
{
  sub_100004AA0(&v14, (a1 + 8));
  v10 = v15;
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v10);
  }

  v11 = *(a4 + 8);
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  sub_100010024(&v12, a5);
  sub_100060E84(&v13, a6);
  sub_10044330C((a1 + 8));
}

void sub_1004412F4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, const void **a5, const void **a6)
{
  v9 = a4[1];
  v10 = a1 - 48;
  v13[0] = *a4;
  v13[1] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  sub_100010024(&v12, a5);
  sub_100060E84(&v11, a6);
  sub_1004413C0(v10, a2, a3, v13, &v12, &v11);
}

void sub_100441398(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  sub_10000A1EC(&a9);
  sub_10001021C(&a10);
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(a1);
}

void sub_1004413C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const void **a5, const void **a6)
{
  sub_100004AA0(&v14, (a1 + 8));
  v10 = v15;
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v10);
  }

  v11 = *(a4 + 8);
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  sub_100010024(&v12, a5);
  sub_100060E84(&v13, a6);
  sub_100443568((a1 + 8));
}

uint64_t DDBControlImpl::hasDedicatedBearerSupport(DDBControlImpl *this)
{
  v1 = *(this + 19);
  if (v1)
  {
    LOBYTE(v1) = *(***(this + 15) + 48);
  }

  return v1 & 1;
}

void DDBControlImpl::getLinkCharacteristics(uint64_t a1@<X0>, void **a2@<X1>, void *a3@<X8>)
{
  v6 = sub_100007A6C(a1 + 168, a2);
  if (a1 + 176 == v6)
  {
    DDBControlImpl::queryGetLinkCharacteristics(a1, a2);
    *a3 = 0;
    a3[1] = 0;
  }

  else
  {
    v7 = *(v6 + 64);
    *a3 = *(v6 + 56);
    a3[1] = v7;
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    }
  }
}

void sub_100441558(uint64_t a1, void *a2)
{
  v2 = a2[1];
  *&v3 = *a2;
  *(&v3 + 1) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  sub_1004415C4((a1 + 544), &v3);
  if (*(&v3 + 1))
  {
    std::__shared_weak_count::__release_weak(*(&v3 + 1));
  }
}

void sub_1004415AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_weak(a10);
  }

  _Unwind_Resume(exception_object);
}

void **sub_1004415C4(void **result, __int128 *a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (v4 >= v5)
  {
    v8 = (v4 - *result) >> 4;
    v9 = v8 + 1;
    if ((v8 + 1) >> 60)
    {
      sub_1000CE3D4();
    }

    v10 = v5 - *result;
    if (v10 >> 3 > v9)
    {
      v9 = v10 >> 3;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    v18[4] = result;
    if (v11)
    {
      sub_1000210A8(result, v11);
    }

    v12 = 16 * v8;
    v13 = *a2;
    *(16 * v8) = *a2;
    if (*(&v13 + 1))
    {
      atomic_fetch_add_explicit((*(&v13 + 1) + 16), 1uLL, memory_order_relaxed);
    }

    v7 = (v12 + 16);
    v14 = result[1] - *result;
    v15 = v12 - v14;
    memcpy((v12 - v14), *result, v14);
    v16 = *v3;
    *v3 = v15;
    v3[1] = v7;
    v17 = v3[2];
    v3[2] = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    result = sub_1004416D8(v18);
  }

  else
  {
    v6 = *(a2 + 1);
    *v4 = *a2;
    *(v4 + 1) = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 16), 1uLL, memory_order_relaxed);
    }

    v7 = v4 + 16;
  }

  v3[1] = v7;
  return result;
}

void **sub_1004416D8(void **a1)
{
  sub_10044170C(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_10044170C(uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  while (v1 != v2)
  {
    *(a1 + 16) = v1 - 16;
    v4 = *(v1 - 8);
    if (v4)
    {
      std::__shared_weak_count::__release_weak(v4);
      v1 = *(a1 + 16);
    }

    else
    {
      v1 -= 16;
    }
  }
}

BOOL sub_100441760(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  if ((v4 != 0) == (v5 == 0) || v4 && CFEqual(v4, v5) != 1)
  {
    return 0;
  }

  v6 = *(a1 + 8);
  v7 = *(a2 + 8);
  if ((v6 != 0) == (v7 == 0) || v6 && CFEqual(v6, v7) != 1)
  {
    return 0;
  }

  v8 = *(a1 + 16);
  v9 = *(a2 + 16);
  if ((v8 != 0) == (v9 == 0) || v8 && CFEqual(v8, v9) != 1)
  {
    return 0;
  }

  v10 = *(a1 + 24);
  v11 = *(a2 + 24);
  result = (v10 == 0) == (v11 == 0);
  if (v10)
  {
    if (v11)
    {
      return CFEqual(*(a1 + 24), v11) == 1;
    }
  }

  return result;
}

void sub_1004418D4(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, sub_1004419A8);
  __cxa_rethrow();
}

void sub_100441914(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_100441968(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1004419A8(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_1004419D4(std::mutex *this@<X0>, void *a2@<X8>)
{
  if ((v4 & 0x8000000000000000) != 0)
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

  std::mutex::lock(this);
  v11 = v4;
  v8 = sub_100009510(&this[1].__m_.__sig, &v11);
  if (v8)
  {
    v10 = v8[3];
    v9 = v8[4];
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v10 = 0;
    v9 = 0;
  }

  std::mutex::unlock(this);
  *a2 = v10;
  a2[1] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v9);
  }
}

uint64_t *sub_100441A98(uint64_t *a1)
{
  v1 = *a1;
  v7 = a1;
  v8 = v1;
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *v1;
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (*(v1 + 8))
      {
        DDBControlImpl::init_sync(v3);
      }

      sub_100004A34(v5);
    }
  }

  sub_10007060C(&v8);
  return sub_1000049E0(&v7);
}

void sub_100441B0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100004A34(v10);
  sub_10007060C(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_100441B30(uint64_t *a1)
{
  v1 = *a1;
  v7 = a1;
  v8 = v1;
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *v1;
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (*(v1 + 8))
      {
        DDBControlImpl::start_sync(v3);
      }

      sub_100004A34(v5);
    }
  }

  sub_10007060C(&v8);
  return sub_1000049E0(&v7);
}

void sub_100441BA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100004A34(v10);
  sub_10007060C(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_100441BC8(uint64_t *a1)
{
  v1 = *a1;
  v11 = a1;
  v12 = v1;
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *v1;
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (*(v1 + 8))
      {
        v6 = *(v3 + 40);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v7 = PersonalityInfo::logPrefix(***(v3 + 120));
          v8 = asStringBool(*(v1 + 24));
          *buf = 136315650;
          v14 = v7;
          v15 = 2080;
          v16 = " ";
          v17 = 2080;
          v18 = v8;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s%sactivate : %s", buf, 0x20u);
        }

        v9 = *(v3 + 152);
        if (v9)
        {
          (*(*v9 + 336))(v9, *(***(v3 + 120) + 48));
        }
      }

      sub_100004A34(v5);
    }
  }

  sub_100441D54(&v12);
  return sub_1000049E0(&v11);
}

void sub_100441D2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100004A34(v10);
  sub_100441D54(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_100441D54(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = *(v1 + 32);
    if (v2)
    {
      dispatch_group_leave(v2);
      v3 = *(v1 + 32);
      if (v3)
      {
        dispatch_release(v3);
      }
    }

    v4 = *(v1 + 16);
    if (v4)
    {
      std::__shared_weak_count::__release_weak(v4);
    }

    operator delete();
  }

  return result;
}

uint64_t *sub_100441DC0(void **a1)
{
  v1 = *a1;
  v8 = a1;
  v9 = v1;
  v2 = v1[2];
  if (v2)
  {
    v3 = *v1;
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (v1[1])
      {
        v6 = *(v3 + 152);
        if (v6)
        {
          (*(*v6 + 16))(v6, 4);
        }
      }

      sub_100004A34(v5);
    }
  }

  sub_10007060C(&v9);
  return sub_1000049E0(&v8);
}

void sub_100441E5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100004A34(v10);
  sub_10007060C(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_100441E80(void **a1)
{
  v1 = *a1;
  v20 = a1;
  v21 = v1;
  v2 = v1[2];
  if (v2)
  {
    v3 = *v1;
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (!v1[1])
      {
LABEL_20:
        sub_100004A34(v5);
        goto LABEL_21;
      }

      v6 = *(v3 + 40);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = PersonalityInfo::logPrefix(***(v3 + 120));
        *buf = 136315394;
        *&buf[4] = v7;
        *&buf[12] = 2080;
        *&buf[14] = " ";
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s%sToken might not be actual, cleaning the wallet", buf, 0x16u);
      }

      ServiceMap = Registry::getServiceMap(*(v3 + 72));
      v9 = ServiceMap;
      if (v10 < 0)
      {
        v11 = (v10 & 0x7FFFFFFFFFFFFFFFLL);
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
      v14 = sub_100009510(&v9[1].__m_.__sig, buf);
      if (v14)
      {
        v16 = v14[3];
        v15 = v14[4];
        if (v15)
        {
          atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
          std::mutex::unlock(v9);
          atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v15);
          v17 = 0;
LABEL_14:
          (*(*v16 + 32))(v16, ***(v3 + 120) + 24, @"service-token", off_101FB1CA0, 0, 4);
          if ((v17 & 1) == 0)
          {
            sub_100004A34(v15);
          }

          v18 = *(v3 + 152);
          if (v18)
          {
            memset(buf, 0, sizeof(buf));
            (*(*v18 + 280))(v18, buf);
            if (*buf)
            {
              *&buf[8] = *buf;
              operator delete(*buf);
            }

            (*(**(v3 + 152) + 16))(*(v3 + 152), 3);
          }

          goto LABEL_20;
        }
      }

      else
      {
        v16 = 0;
      }

      std::mutex::unlock(v9);
      v15 = 0;
      v17 = 1;
      goto LABEL_14;
    }
  }

LABEL_21:
  sub_10007060C(&v21);
  return sub_1000049E0(&v20);
}

void sub_100442108(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  sub_100004A34(v12);
  sub_10007060C(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

void sub_100442174(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(v2 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = PersonalityInfo::logPrefix(***(v2 + 120));
    *buf = 136315394;
    *&buf[4] = v4;
    v19 = 2080;
    v20 = " ";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s%sCEContext changed", buf, 0x16u);
  }

  v5 = *(v2 + 152);
  if (!v5)
  {
LABEL_20:
    operator delete();
  }

  if (*(v1 + 2) != 1 || *(*(v2 + 120) + 504) != 1)
  {
    (*(*v5 + 16))(v5, 4);
    goto LABEL_20;
  }

  v17 = 0;
  ServiceMap = Registry::getServiceMap(*(v2 + 72));
  v7 = ServiceMap;
  if (v8 < 0)
  {
    v9 = (v8 & 0x7FFFFFFFFFFFFFFFLL);
    v10 = 5381;
    do
    {
      v8 = v10;
      v11 = *v9++;
      v10 = (33 * v10) ^ v11;
    }

    while (v11);
  }

  std::mutex::lock(ServiceMap);
  *buf = v8;
  v12 = sub_100009510(&v7[1].__m_.__sig, buf);
  if (v12)
  {
    v14 = v12[3];
    v13 = v12[4];
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v7);
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v13);
      v15 = 0;
LABEL_15:
      (*(*v14 + 24))(&v16, v14, ***(v2 + 120) + 24, @"service-token", off_101FB1CA0, 0, 4);
      sub_1001B1A54(&v17, &v16);
      sub_10000A1EC(&v16);
      if ((v15 & 1) == 0)
      {
        sub_100004A34(v13);
      }

      if (!v17)
      {
        (*(**(v2 + 152) + 280))(*(v2 + 152), *(v2 + 120) + 480);
      }

      sub_10002D760(&v17);
      goto LABEL_20;
    }
  }

  else
  {
    v14 = 0;
  }

  std::mutex::unlock(v7);
  v13 = 0;
  v15 = 1;
  goto LABEL_15;
}

void sub_100442420(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10002D760(va);
  operator delete();
}

uint64_t sub_100442500(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E4D2C0;
  a2[1] = v2;
  return result;
}

void sub_10044252C(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  v4 = *(v3 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = PersonalityInfo::logPrefix(***(v3 + 120));
    if (*(a2 + 23) >= 0)
    {
      v6 = a2;
    }

    else
    {
      v6 = *a2;
    }

    v7 = 136315650;
    v8 = v5;
    v9 = 2080;
    v10 = " ";
    v11 = 2080;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s%s%s", &v7, 0x20u);
  }
}

uint64_t sub_100442610(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1004426CC(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E4D340;
  a2[1] = v2;
  return result;
}

void sub_1004426F8(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  v4 = *(v3 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = PersonalityInfo::logPrefix(***(v3 + 120));
    if (*(a2 + 23) >= 0)
    {
      v6 = a2;
    }

    else
    {
      v6 = *a2;
    }

    v7 = 136315650;
    v8 = v5;
    v9 = 2080;
    v10 = " ";
    v11 = 2080;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s%s%s", &v7, 0x20u);
  }
}

uint64_t sub_1004427DC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_100442848(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E4D3C0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

const void **sub_10044289C(const void **a1)
{
  sub_100029A48(a1 + 6);
  sub_100029A48(a1 + 5);
  sub_100029A48(a1 + 4);

  return sub_100029A48(a1 + 3);
}

uint64_t sub_1004428EC(uint64_t a1, void **a2)
{
  v7 = 0;
  v2 = *sub_100005C2C(a1, &v7, a2);
  if (!v2)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    sub_1004429A0();
  }

  return v2;
}

uint64_t sub_100442AB0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E4D410;
  a2[1] = v2;
  return result;
}

void sub_100442ADC(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  v4 = *(v3 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = PersonalityInfo::logPrefix(***(v3 + 120));
    if (*(a2 + 23) >= 0)
    {
      v6 = a2;
    }

    else
    {
      v6 = *a2;
    }

    v7 = 136315650;
    v8 = v5;
    v9 = 2080;
    v10 = " ";
    v11 = 2080;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s%s%s", &v7, 0x20u);
  }
}

uint64_t sub_100442BC0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100442C7C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E4D490;
  a2[1] = v2;
  return result;
}

void sub_100442CA8(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  v4 = *(v3 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = PersonalityInfo::logPrefix(***(v3 + 120));
    if (*(a2 + 23) >= 0)
    {
      v6 = a2;
    }

    else
    {
      v6 = *a2;
    }

    v7 = 136315650;
    v8 = v5;
    v9 = 2080;
    v10 = " ";
    v11 = 2080;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s%s%s", &v7, 0x20u);
  }
}

uint64_t sub_100442D8C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_100442DD8(void *a1)
{
  v1[0] = 0;
  v1[1] = 0;
  sub_100004AA0(v1, a1);
  operator new();
}

void sub_100442ECC(uint64_t *a1)
{
  v2 = a1;
  v3 = *a1;
  sub_100442F44(v3);
  sub_100443038(&v3);
  v1 = v2;
  v2 = 0;
  if (v1)
  {
    sub_1002B78C4(&v2, v1);
  }
}

void sub_100442F1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100443038(&a10);
  v11 = a9;
  a9 = 0;
  if (v11)
  {
    sub_1002B78C4(&a9, v11);
  }

  _Unwind_Resume(a1);
}

void sub_100442F44(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = *a1;
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (*(a1 + 8))
      {
        v6 = *(a1 + 24);
        v7 = *(a1 + 40);
        v10[0] = *(a1 + 32);
        v10[1] = v7;
        if (v7)
        {
          atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
        }

        sub_100010024(&v9, (a1 + 48));
        sub_100060E84(&v8, (a1 + 56));
        sub_10043F9E8(v3, v6, v10, &v9);
        sub_10000A1EC(&v8);
        sub_10001021C(&v9);
        if (v7)
        {
          sub_100004A34(v7);
        }
      }

      sub_100004A34(v5);
    }
  }
}

void sub_100443008(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  sub_10000A1EC(&a9);
  sub_10001021C(&a10);
  if (v11)
  {
    sub_100004A34(v11);
  }

  sub_100004A34(v10);
  _Unwind_Resume(a1);
}

uint64_t *sub_100443038(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_10000A1EC((v1 + 56));
    sub_10001021C((v1 + 48));
    v2 = *(v1 + 40);
    if (v2)
    {
      sub_100004A34(v2);
    }

    v3 = *(v1 + 16);
    if (v3)
    {
      std::__shared_weak_count::__release_weak(v3);
    }

    operator delete();
  }

  return result;
}

void sub_1004430A8(void *a1)
{
  v1[0] = 0;
  v1[1] = 0;
  sub_100004AA0(v1, a1);
  operator new();
}

void sub_10044319C(uint64_t *a1)
{
  v2 = a1;
  v3 = *a1;
  sub_100443214(v3);
  sub_100443038(&v3);
  v1 = v2;
  v2 = 0;
  if (v1)
  {
    sub_1002B78C4(&v2, v1);
  }
}

void sub_1004431EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100443038(&a10);
  v11 = a9;
  a9 = 0;
  if (v11)
  {
    sub_1002B78C4(&a9, v11);
  }

  _Unwind_Resume(a1);
}

void sub_100443214(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = *a1;
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (*(a1 + 8))
      {
        v6 = *(a1 + 24);
        v7 = *(a1 + 40);
        v10[0] = *(a1 + 32);
        v10[1] = v7;
        if (v7)
        {
          atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
        }

        sub_100010024(&v9, (a1 + 48));
        sub_100060E84(&v8, (a1 + 56));
        sub_100440300(v3, v6, v10, &v9, &v8);
        sub_10000A1EC(&v8);
        sub_10001021C(&v9);
        if (v7)
        {
          sub_100004A34(v7);
        }
      }

      sub_100004A34(v5);
    }
  }
}

void sub_1004432DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  sub_10000A1EC(&a9);
  sub_10001021C(&a10);
  if (v11)
  {
    sub_100004A34(v11);
  }

  sub_100004A34(v10);
  _Unwind_Resume(a1);
}

void sub_10044330C(void *a1)
{
  v1[0] = 0;
  v1[1] = 0;
  sub_100004AA0(v1, a1);
  operator new();
}

void sub_100443400(uint64_t *a1)
{
  v2 = a1;
  v3 = *a1;
  sub_100443478(v3);
  sub_100443038(&v3);
  v1 = v2;
  v2 = 0;
  if (v1)
  {
    sub_1002B78C4(&v2, v1);
  }
}

void sub_100443450(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100443038(&a10);
  v11 = a9;
  a9 = 0;
  if (v11)
  {
    sub_1002B78C4(&a9, v11);
  }

  _Unwind_Resume(a1);
}

void sub_100443478(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = *a1;
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (*(a1 + 8))
      {
        v6 = *(a1 + 24);
        v7 = *(a1 + 40);
        v10[0] = *(a1 + 32);
        v10[1] = v7;
        if (v7)
        {
          atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
        }

        sub_100010024(&v9, (a1 + 48));
        sub_100060E84(&v8, (a1 + 56));
        sub_10043F8B8(v3, v6, v10);
        sub_10000A1EC(&v8);
        sub_10001021C(&v9);
        if (v7)
        {
          sub_100004A34(v7);
        }
      }

      sub_100004A34(v5);
    }
  }
}

void sub_100443538(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  sub_10000A1EC(&a9);
  sub_10001021C(&a10);
  if (v11)
  {
    sub_100004A34(v11);
  }

  sub_100004A34(v10);
  _Unwind_Resume(a1);
}

void sub_100443568(void *a1)
{
  v1[0] = 0;
  v1[1] = 0;
  sub_100004AA0(v1, a1);
  operator new();
}

void sub_10044365C(uint64_t *a1)
{
  v2 = a1;
  v3 = *a1;
  sub_1004436D4(v3);
  sub_100443038(&v3);
  v1 = v2;
  v2 = 0;
  if (v1)
  {
    sub_1002B78C4(&v2, v1);
  }
}

void sub_1004436AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100443038(&a10);
  v11 = a9;
  a9 = 0;
  if (v11)
  {
    sub_1002B78C4(&a9, v11);
  }

  _Unwind_Resume(a1);
}

void sub_1004436D4(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = *a1;
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (*(a1 + 8))
      {
        v6 = *(a1 + 40);
        if (v6)
        {
          atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_100010024(&v8, (a1 + 48));
        sub_100060E84(&v7, (a1 + 56));
        sub_10043F9A4(v3);
        sub_10000A1EC(&v7);
        sub_10001021C(&v8);
        if (v6)
        {
          sub_100004A34(v6);
        }
      }

      sub_100004A34(v5);
    }
  }
}

void sub_10044377C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  sub_10000A1EC(&a9);
  sub_10001021C(&a10);
  if (v11)
  {
    sub_100004A34(v11);
  }

  sub_100004A34(v10);
  _Unwind_Resume(a1);
}

uint64_t sub_1004437AC(const __CFString *a1)
{
  v1 = sub_100443868(a1);
  if (v1)
  {
    if (sub_1001883A0() || sub_1000B1374())
    {
      v5 = 0;
      v4 = CFPreferencesCopyValue(v1, kCommCenterPreferencesNoBackupAppID, kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
      sub_10017A3BC(&v5, &v4);
      LOBYTE(v4) = 0;
      ctu::cf::assign(&v4, v5, v2);
      LOBYTE(v1) = v4;
      sub_100045C8C(&v5);
    }

    else
    {
      LOBYTE(v1) = 0;
    }
  }

  return v1 & 1;
}

void sub_100443854(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100045C8C(va);
  _Unwind_Resume(a1);
}

const __CFString *sub_100443868(const __CFString *result)
{
  if (result)
  {
    v1 = result;
    if (CFEqual(result, @"kCTAutomaticSMS"))
    {
      return @"DisallowAutomaticSMS";
    }

    else if (CFEqual(v1, @"kCTCarrierEntitlements"))
    {
      return @"DisallowCarrierEntitlements";
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1004438D4(const __CFString *a1, int a2)
{
  result = sub_100443868(a1);
  if (result)
  {
    v4 = result;
    if (sub_1001883A0() || (result = sub_1000B1374(), result))
    {
      v5 = &kCFBooleanTrue;
      if (!a2)
      {
        v5 = &kCFBooleanFalse;
      }

      v6 = *v5;
      v7 = kCommCenterPreferencesNoBackupAppID;

      return persistentSaveValue(v7, v4, v6);
    }
  }

  return result;
}

uint64_t sub_100443958(uint64_t a1, uint64_t *a2)
{
  *a1 = off_101E4D510;
  v4 = (a1 + 8);
  ctu::OsLogContext::OsLogContext(&v8, kCtLoggingSystemName, "cp.pst");
  sub_100443A94(v4, "CellularPlanPersistenceControllerImpl", QOS_CLASS_UTILITY, &v8);
  ctu::OsLogContext::~OsLogContext(&v8);
  *a1 = off_101E4D510;
  v5 = *a2;
  v6 = a2[1];
  *(a1 + 48) = *a2;
  *(a1 + 56) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    v5 = *(a1 + 48);
  }

  (*(*v5 + 624))(v5);
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 80) = 0u;
  return a1;
}

void sub_100443A4C(_Unwind_Exception *a1)
{
  v4 = *(v1 + 56);
  if (v4)
  {
    sub_100004A34(v4);
  }

  ctu::OsLogLogger::~OsLogLogger((v1 + 40));
  sub_1000C0544(v2);
  TMKXPCServer.shutdown()();
  _Unwind_Resume(a1);
}

void *sub_100443A94(void *a1, const char *a2, dispatch_qos_class_t a3, const OsLogContext *a4)
{
  object = 0;
  sub_1000B9CE0(a1, a2, a3, &object);
  if (object)
  {
    dispatch_release(object);
  }

  ctu::OsLogLogger::OsLogLogger(&object, a4);
  ctu::OsLogLogger::OsLogLogger((a1 + 4), &object);
  ctu::OsLogLogger::~OsLogLogger(&object);
  return a1;
}

void sub_100443AFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object)
{
  ctu::OsLogLogger::~OsLogLogger(&object);
  sub_1000C0544(v10);
  _Unwind_Resume(a1);
}

void sub_100443B38(uint64_t a1)
{
  *a1 = off_101E4D510;
  if (*(a1 + 127) < 0)
  {
    operator delete(*(a1 + 104));
  }

  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 88) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 72);
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = *(a1 + 56);
  if (v4)
  {
    sub_100004A34(v4);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 40));
  sub_1000C0544((a1 + 8));

  TMKXPCServer.shutdown()();
}

void sub_100443BD4(uint64_t a1)
{
  sub_100443B38(a1);

  operator delete();
}

void sub_100443C0C(uint64_t a1)
{
  v1[0] = 0;
  v1[1] = 0;
  sub_100004AA0(v1, (a1 + 8));
  operator new();
}

void sub_100443CE8(uint64_t a1, uint64_t a2)
{
  sub_10016A310(&v3 + 8, a2);
  v4[0] = 0;
  v4[1] = 0;
  sub_100004AA0(v4, (a1 + 8));
  operator new();
}

void sub_100443F64(uint64_t a1, uint64_t a2)
{
  v52 = [[NSKeyedArchiver alloc] initRequiringSecureCoding:1];
  v2 = [NSNumber numberWithInt:4];
  [v52 encodeObject:v2 forKey:@"version"];

  if (*(a2 + 16))
  {
    v3 = objc_opt_new();
    v4 = *a2;
    if (*a2 != a2 + 8)
    {
      do
      {
        v5 = v4 + 4;
        if (*(v4 + 55) < 0)
        {
          v5 = *v5;
        }

        v6 = [NSString stringWithUTF8String:v5];
        [v3 addObject:v6];

        v7 = v4[1];
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
            v8 = v4[2];
            v9 = *v8 == v4;
            v4 = v8;
          }

          while (!v9);
        }

        v4 = v8;
      }

      while (v8 != (a2 + 8));
    }

    [v52 encodeObject:v3 forKey:@"userEnabledIccids"];
  }

  if (*(a2 + 40))
  {
    v10 = objc_opt_new();
    v11 = *(a2 + 24);
    if (v11 != (a2 + 32))
    {
      do
      {
        v12 = v11 + 4;
        if (*(v11 + 55) < 0)
        {
          v12 = *v12;
        }

        v13 = [NSString stringWithUTF8String:v12];
        [v10 addObject:v13];

        v14 = v11[1];
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
            v15 = v11[2];
            v9 = *v15 == v11;
            v11 = v15;
          }

          while (!v9);
        }

        v11 = v15;
      }

      while (v15 != (a2 + 32));
    }

    [v52 encodeObject:v10 forKey:@"usableIccids"];
  }

  v16 = (a2 + 48);
  if (*(a2 + 71) < 0)
  {
    if (!*(a2 + 56))
    {
      goto LABEL_29;
    }

    v16 = *v16;
    goto LABEL_28;
  }

  if (*(a2 + 71))
  {
LABEL_28:
    v17 = [NSString stringWithUTF8String:v16];
    [v52 encodeObject:v17 forKey:@"userActiveDataSelectedPlanIccid"];
  }

LABEL_29:
  v18 = (a2 + 72);
  if (*(a2 + 95) < 0)
  {
    if (!*(a2 + 80))
    {
      goto LABEL_35;
    }

    v18 = *v18;
    goto LABEL_34;
  }

  if (*(a2 + 95))
  {
LABEL_34:
    v19 = [NSString stringWithUTF8String:v18];
    [v52 encodeObject:v19 forKey:@"userDefaultVoiceSelectedPlanIccid"];
  }

LABEL_35:
  if (*(a2 + 112))
  {
    v20 = objc_alloc_init(NSMutableDictionary);
    v21 = *(a2 + 96);
    if (v21 != (a2 + 104))
    {
      do
      {
        v22 = v21 + 7;
        if (*(v21 + 79) < 0)
        {
          v22 = *v22;
        }

        v23 = [NSString stringWithUTF8String:v22];
        v24 = v21 + 4;
        if (*(v21 + 55) < 0)
        {
          v24 = *v24;
        }

        v25 = [NSString stringWithUTF8String:v24];
        [v20 setObject:v23 forKeyedSubscript:v25];

        v26 = v21[1];
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
            v27 = v21[2];
            v9 = *v27 == v21;
            v21 = v27;
          }

          while (!v9);
        }

        v21 = v27;
      }

      while (v27 != (a2 + 104));
    }

    v28 = [v20 copy];
    [v52 encodeObject:v28 forKey:@"carrierNames"];
  }

  if (*(a2 + 136))
  {
    v29 = objc_alloc_init(NSMutableDictionary);
    v30 = *(a2 + 120);
    if (v30 != (a2 + 128))
    {
      do
      {
        v59[0] = @"mcc";
        v31 = v30 + 11;
        if (*(v30 + 111) < 0)
        {
          v31 = *v31;
        }

        v32 = [NSString stringWithUTF8String:v31];
        v60[0] = v32;
        v59[1] = @"mnc";
        v33 = v30 + 14;
        if (*(v30 + 135) < 0)
        {
          v33 = *v33;
        }

        v34 = [NSString stringWithUTF8String:v33];
        v60[1] = v34;
        v59[2] = @"gid1";
        v35 = v30 + 17;
        if (*(v30 + 159) < 0)
        {
          v35 = *v35;
        }

        v36 = [NSString stringWithUTF8String:v35];
        v60[2] = v36;
        v59[3] = @"gid2";
        v37 = v30 + 20;
        if (*(v30 + 183) < 0)
        {
          v37 = *v37;
        }

        v38 = [NSString stringWithUTF8String:v37];
        v60[3] = v38;
        v39 = [NSDictionary dictionaryWithObjects:v60 forKeys:v59 count:4];
        v40 = v30 + 4;
        if (*(v30 + 55) < 0)
        {
          v40 = *v40;
        }

        v41 = [NSString stringWithUTF8String:v40];
        [v29 setObject:v39 forKeyedSubscript:v41];

        v42 = v30[1];
        if (v42)
        {
          do
          {
            v43 = v42;
            v42 = *v42;
          }

          while (v42);
        }

        else
        {
          do
          {
            v43 = v30[2];
            v9 = *v43 == v30;
            v30 = v43;
          }

          while (!v9);
        }

        v30 = v43;
      }

      while (v43 != (a2 + 128));
    }

    v44 = [v29 copy];
    [v52 encodeObject:v44 forKey:@"carrierDescriptors"];
  }

  v45 = (a2 + 144);
  if (*(a2 + 167) < 0)
  {
    if (!*(a2 + 152))
    {
      goto LABEL_73;
    }

    v45 = *v45;
    goto LABEL_72;
  }

  if (*(a2 + 167))
  {
LABEL_72:
    v46 = [NSString stringWithUTF8String:v45];
    [v52 encodeObject:v46 forKey:@"userDisabledPhySimIccid"];
  }

LABEL_73:
  v47 = [v52 encodedData];
  cf = v47;
  if (v47)
  {
    CFRetain(v47);
  }

  v48 = *(a1 + 48);
  sub_100444744(&v55);
  v49 = std::string::append(&v55, "com.apple.CommCenter.CellularPlan.plist", 0x27uLL);
  v50 = *&v49->__r_.__value_.__l.__data_;
  v57 = v49->__r_.__value_.__r.__words[2];
  *__p = v50;
  v49->__r_.__value_.__l.__size_ = 0;
  v49->__r_.__value_.__r.__words[2] = 0;
  v49->__r_.__value_.__r.__words[0] = 0;
  v54 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  (*(*v48 + 896))(v48, __p, &v54);
  sub_10002D760(&v54);
  if (SHIBYTE(v57) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v55.__r_.__value_.__l.__data_);
  }

  sub_10002D760(&cf);
}

void sub_100444744(std::string *a1@<X8>)
{
  WirelessUserDirectory = _GetWirelessUserDirectory();
  sub_10000501C(&v4, WirelessUserDirectory);
  v3 = std::string::append(&v4, "/Library/Preferences/no_backup/", 0x1FuLL);
  *a1 = *v3;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v4.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v4.__r_.__value_.__l.__data_);
  }
}

void sub_1004447B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1004447D4(uint64_t a1, uint64_t a2)
{
  v3[4] = a1;
  sub_100450FA0(&v4, a2);
  v3[0] = 0;
  v3[1] = 0;
  sub_100004AA0(v3, (a1 + 8));
  operator new();
}

void sub_100444900(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

void sub_100444918(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v2 = *(a1 + 48);
  sub_100444744(&__dst);
  v3 = std::string::append(&__dst, "com.apple.CommCenter.CellularPlan.plist", 0x27uLL);
  v4 = *&v3->__r_.__value_.__l.__data_;
  v103 = v3->__r_.__value_.__r.__words[2];
  *__p = v4;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  (*(*v2 + 904))(&v90, v2, __p);
  v70 = v90.__r_.__value_.__l.__data_;
  sub_10002D760(&v90.__r_.__value_.__l.__data_);
  if (SHIBYTE(v103) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  if (v70)
  {
    __p[1] = 0;
    __p[0] = &__p[1];
    v105[1] = 0;
    v105[0] = 0;
    v103 = 0;
    v104 = v105;
    *v106 = 0u;
    *v107 = 0u;
    v108 = 0u;
    v110[0] = 0;
    v109 = v110;
    memset(v112, 0, sizeof(v112));
    v110[1] = 0;
    v111 = v112;
    v5 = [NSKeyedUnarchiver alloc];
    v101 = 0;
    v6 = [v5 initForReadingFromData:v70 error:&v101];
    v7 = v101;
    v60 = v6;
    v62 = v7;
    if (!v6 || v7)
    {
      sub_100445C60(a2, __p);
    }

    else
    {
      v8 = objc_opt_class();
      v9 = objc_opt_class();
      v10 = objc_opt_class();
      v57 = [NSSet setWithObjects:v8, v9, v10, objc_opt_class(), 0];
      v58 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"version"];
      if (v58 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        if ([v58 intValue] == 2)
        {
          v66 = 0;
          [v6 decodeObjectOfClass:objc_opt_class() forKey:@"lastSelectedIccid"];
          v61 = 0;
          v64 = 0;
          v65 = 0;
          v67 = 0;
          v63 = v68 = 0;
        }

        else if ([v58 intValue] < 3)
        {
          v65 = 0;
          v66 = 0;
          v61 = 0;
          v63 = 0;
          v64 = 0;
          v67 = 0;
          v68 = 0;
        }

        else
        {
          v11 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"lastSelectedIccid"];
          v12 = [v60 decodeObjectOfClass:objc_opt_class() forKey:@"userActiveDataSelectedPlanIccid"];
          v13 = [v60 decodeObjectOfClass:objc_opt_class() forKey:@"userDefaultVoiceSelectedPlanIccid"];
          v14 = [v60 decodeObjectOfClasses:v57 forKey:@"carrierNames"];
          v15 = [v60 decodeObjectOfClasses:v57 forKey:@"carrierDescriptors"];
          v16 = [v60 decodeObjectOfClasses:v57 forKey:@"userDisabledPhySimIccid"];
          [v60 decodeObjectOfClasses:v57 forKey:@"userEnabledIccids"];
          v65 = v15;
          v61 = v66 = v16;
          v63 = v11;
          v64 = v14;
          v67 = v12;
          v68 = v13;
        }

        if ([v58 intValue] == 4)
        {
          v69 = [v60 decodeObjectOfClasses:v57 forKey:@"usableIccids"];
        }

        else
        {
          v69 = 0;
        }

        [v60 finishDecoding];
        if (v63)
        {
          v17 = v63;
          __dst.__r_.__value_.__r.__words[0] = [v63 UTF8String];
          sub_100072D94();
        }

        if (v61)
        {
          memset(v100, 0, sizeof(v100));
          v18 = v61;
          if ([v18 countByEnumeratingWithState:v100 objects:v117 count:16])
          {
            __dst.__r_.__value_.__r.__words[0] = [**(&v100[0] + 1) UTF8String];
            sub_100072D94();
          }
        }

        if (v69)
        {
          memset(v99, 0, sizeof(v99));
          v19 = v69;
          if ([v19 countByEnumeratingWithState:v99 objects:v116 count:16])
          {
            __dst.__r_.__value_.__r.__words[0] = [**(&v99[0] + 1) UTF8String];
            sub_100072D94();
          }
        }

        if (v67)
        {
          v20 = v67;
          sub_100016890(v106, [v67 UTF8String]);
        }

        if (v68)
        {
          v21 = v68;
          sub_100016890(&v107[1], [v68 UTF8String]);
        }

        if (v64)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v97 = 0u;
            v98 = 0u;
            v95 = 0u;
            v96 = 0u;
            v22 = v64;
            v23 = [v22 countByEnumeratingWithState:&v95 objects:v115 count:16];
            if (v23)
            {
              v24 = 0;
              v25 = *v96;
              for (i = *v96; ; i = *v96)
              {
                if (i != v25)
                {
                  objc_enumerationMutation(v22);
                }

                v27 = *(*(&v95 + 1) + 8 * v24);
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v28 = [v22 objectForKey:v27];
                  objc_opt_class();
                  isKindOfClass = objc_opt_isKindOfClass();

                  if (isKindOfClass)
                  {
                    v30 = [v22 objectForKey:v27];
                    v31 = v30;
                    v32 = [v30 UTF8String];
                    v33 = v27;
                    sub_10000501C(&__dst, [v27 UTF8String]);
                    v90.__r_.__value_.__r.__words[0] = &__dst;
                    v34 = sub_1000E9F90(&v109, &__dst.__r_.__value_.__l.__data_);
                    sub_100016890((v34 + 56), v32);
                    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(__dst.__r_.__value_.__l.__data_);
                    }
                  }
                }

                if (++v24 >= v23)
                {
                  v23 = [v22 countByEnumeratingWithState:&v95 objects:v115 count:16];
                  if (!v23)
                  {
                    break;
                  }

                  v24 = 0;
                }
              }
            }
          }
        }

        if (v65)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v93 = 0u;
            v94 = 0u;
            v91 = 0u;
            v92 = 0u;
            obj = v65;
            v35 = [obj countByEnumeratingWithState:&v91 objects:v114 count:16];
            if (v35)
            {
              v36 = *v92;
              do
              {
                for (j = 0; j != v35; j = j + 1)
                {
                  if (*v92 != v36)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v38 = *(*(&v91 + 1) + 8 * j);
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v39 = [obj objectForKeyedSubscript:v38];
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v40 = [v39 objectForKeyedSubscript:@"mcc"];
                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        v41 = [v39 objectForKeyedSubscript:@"mnc"];
                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          v42 = [v39 objectForKeyedSubscript:@"gid1"];
                          objc_opt_class();
                          if (objc_opt_isKindOfClass())
                          {
                            v43 = [v39 objectForKeyedSubscript:@"gid2"];
                            objc_opt_class();
                            v44 = objc_opt_isKindOfClass();

                            if (v44)
                            {
                              memset(&v90, 0, sizeof(v90));
                              v45 = v38;
                              sub_10000501C(&v90, [v38 UTF8String]);
                              v88[0] = 0;
                              v88[1] = 0;
                              v89 = 0;
                              v46 = [v39 objectForKeyedSubscript:@"mcc"];
                              v47 = v46;
                              sub_10000501C(v88, [v46 UTF8String]);

                              v86 = 0uLL;
                              v87 = 0;
                              v48 = [v39 objectForKeyedSubscript:@"mnc"];
                              v49 = v48;
                              sub_10000501C(&v86, [v48 UTF8String]);

                              v84[0] = 0;
                              v84[1] = 0;
                              v85 = 0;
                              v50 = [v39 objectForKeyedSubscript:@"gid1"];
                              v51 = v50;
                              sub_10000501C(v84, [v50 UTF8String]);

                              v82 = 0uLL;
                              v83 = 0;
                              v52 = [v39 objectForKeyedSubscript:@"gid2"];
                              v53 = v52;
                              sub_10000501C(&v82, [v52 UTF8String]);

                              if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
                              {
                                sub_100005F2C(&__dst, v90.__r_.__value_.__l.__data_, v90.__r_.__value_.__l.__size_);
                              }

                              else
                              {
                                __dst = v90;
                              }

                              v73 = 1;
                              if (SHIBYTE(v89) < 0)
                              {
                                sub_100005F2C(&v74, v88[0], v88[1]);
                              }

                              else
                              {
                                v74 = *v88;
                                v75 = v89;
                              }

                              if (SHIBYTE(v87) < 0)
                              {
                                sub_100005F2C(&v76, v86, *(&v86 + 1));
                              }

                              else
                              {
                                v76 = v86;
                                v77 = v87;
                              }

                              if (SHIBYTE(v85) < 0)
                              {
                                sub_100005F2C(&v78, v84[0], v84[1]);
                              }

                              else
                              {
                                v78 = *v84;
                                v79 = v85;
                              }

                              if (SHIBYTE(v83) < 0)
                              {
                                sub_100005F2C(&v80, v82, *(&v82 + 1));
                              }

                              else
                              {
                                v80 = v82;
                                v81 = v83;
                              }

                              v113 = &v90;
                              v54 = sub_100174060(&v111, &v90.__r_.__value_.__l.__data_);
                              sub_10016A270(v54 + 56, &__dst);
                              if (*(v54 + 111) < 0)
                              {
                                operator delete(*(v54 + 88));
                              }

                              *(v54 + 104) = v75;
                              *(v54 + 88) = v74;
                              HIBYTE(v75) = 0;
                              LOBYTE(v74) = 0;
                              if (*(v54 + 135) < 0)
                              {
                                operator delete(*(v54 + 112));
                              }

                              *(v54 + 128) = v77;
                              *(v54 + 112) = v76;
                              HIBYTE(v77) = 0;
                              LOBYTE(v76) = 0;
                              if (*(v54 + 159) < 0)
                              {
                                operator delete(*(v54 + 136));
                              }

                              *(v54 + 152) = v79;
                              *(v54 + 136) = v78;
                              HIBYTE(v79) = 0;
                              LOBYTE(v78) = 0;
                              if (*(v54 + 183) < 0)
                              {
                                operator delete(*(v54 + 160));
                                v55 = SHIBYTE(v79);
                                *(v54 + 160) = v80;
                                *(v54 + 176) = v81;
                                HIBYTE(v81) = 0;
                                LOBYTE(v80) = 0;
                                if (v55 < 0)
                                {
                                  operator delete(v78);
                                }
                              }

                              else
                              {
                                *(v54 + 160) = v80;
                                *(v54 + 176) = v81;
                                HIBYTE(v81) = 0;
                                LOBYTE(v80) = 0;
                              }

                              if (SHIBYTE(v77) < 0)
                              {
                                operator delete(v76);
                              }

                              if (SHIBYTE(v75) < 0)
                              {
                                operator delete(v74);
                              }

                              if (v73 == 1 && SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
                              {
                                operator delete(__dst.__r_.__value_.__l.__data_);
                              }

                              if (SHIBYTE(v83) < 0)
                              {
                                operator delete(v82);
                              }

                              if (SHIBYTE(v85) < 0)
                              {
                                operator delete(v84[0]);
                              }

                              if (SHIBYTE(v87) < 0)
                              {
                                operator delete(v86);
                              }

                              if (SHIBYTE(v89) < 0)
                              {
                                operator delete(v88[0]);
                              }

                              if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
                              {
                                operator delete(v90.__r_.__value_.__l.__data_);
                              }
                            }
                          }

                          else
                          {
                          }
                        }

                        else
                        {
                        }
                      }

                      else
                      {
                      }
                    }
                  }
                }

                v35 = [obj countByEnumeratingWithState:&v91 objects:v114 count:16];
              }

              while (v35);
            }
          }
        }

        if (v66)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v56 = v66;
            sub_10000501C(&__dst, [v66 UTF8String]);
            if ((v112[39] & 0x80000000) != 0)
            {
              operator delete(*&v112[16]);
            }

            *&v112[16] = __dst;
          }
        }

        sub_100445C60(a2, __p);
      }

      else
      {
        [v6 finishDecoding];
        v65 = 0;
        v66 = 0;
        v61 = 0;
        v68 = 0;
        v69 = 0;
        v64 = 0;
        v67 = 0;
        sub_100445C60(a2, __p);
      }

      v6 = v60;
    }

    if ((v112[39] & 0x80000000) != 0)
    {
      operator delete(*&v112[16]);
    }

    sub_10016A798(&v111, *v112);
    sub_1000DD0AC(&v109, v110[0]);
    if (SHIBYTE(v108) < 0)
    {
      operator delete(v107[1]);
    }

    if (SHIBYTE(v107[0]) < 0)
    {
      operator delete(v106[0]);
    }

    sub_100009970(&v104, v105[0]);
    sub_100009970(__p, __p[1]);
  }

  else
  {
    *a2 = 0;
    a2[168] = 0;
  }
}

void sub_10044595C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, void *a22, void *a23, void *a24, void *a25, void *a26, void *a27)
{
  sub_1001589C8(&STACK[0x2B0]);

  _Unwind_Resume(a1);
}

__n128 sub_100445C60(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = (a2 + 8);
  v3 = *(a2 + 8);
  *(a1 + 8) = v3;
  v4 = a1 + 8;
  v5 = *(a2 + 16);
  *(a1 + 16) = v5;
  if (v5)
  {
    *(v3 + 16) = v4;
    *a2 = v2;
    *v2 = 0;
    *(a2 + 16) = 0;
  }

  else
  {
    *a1 = v4;
  }

  *(a1 + 24) = *(a2 + 24);
  v6 = (a2 + 32);
  v7 = *(a2 + 32);
  *(a1 + 32) = v7;
  v8 = a1 + 32;
  v9 = *(a2 + 40);
  *(a1 + 40) = v9;
  if (v9)
  {
    *(v7 + 16) = v8;
    *(a2 + 24) = v6;
    *v6 = 0;
    *(a2 + 40) = 0;
  }

  else
  {
    *(a1 + 24) = v8;
  }

  v10 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 48) = v10;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 48) = 0;
  v11 = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 72) = v11;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a2 + 72) = 0;
  *(a1 + 96) = *(a2 + 96);
  v12 = (a2 + 104);
  v13 = *(a2 + 104);
  *(a1 + 104) = v13;
  v14 = a1 + 104;
  v15 = *(a2 + 112);
  *(a1 + 112) = v15;
  if (v15)
  {
    *(v13 + 16) = v14;
    *(a2 + 96) = v12;
    *v12 = 0;
    *(a2 + 112) = 0;
  }

  else
  {
    *(a1 + 96) = v14;
  }

  *(a1 + 120) = *(a2 + 120);
  v16 = (a2 + 128);
  v17 = *(a2 + 128);
  *(a1 + 128) = v17;
  v18 = a1 + 128;
  v19 = *(a2 + 136);
  *(a1 + 136) = v19;
  if (v19)
  {
    *(v17 + 16) = v18;
    *(a2 + 120) = v16;
    *v16 = 0;
    *(a2 + 136) = 0;
  }

  else
  {
    *(a1 + 120) = v18;
  }

  result = *(a2 + 144);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 144) = result;
  *(a2 + 152) = 0;
  *(a2 + 160) = 0;
  *(a2 + 144) = 0;
  *(a1 + 168) = 1;
  return result;
}

void sub_100445D94(uint64_t a1, uint64_t *a2)
{
  memset(v3, 0, sizeof(v3));
  sub_10044EDCC(v3, *a2, a2[1], 0x34F72C234F72C235 * ((a2[1] - *a2) >> 3));
  v4[0] = 0;
  v4[1] = 0;
  sub_100004AA0(v4, (a1 + 8));
  operator new();
}

void sub_100445EE0(uint64_t a1, uint64_t a2)
{
  v3[4] = a1;
  sub_1004519AC(&v4, a2);
  v3[0] = 0;
  v3[1] = 0;
  sub_100004AA0(v3, (a1 + 8));
  operator new();
}

void sub_10044600C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

void sub_100446024(uint64_t a1, uint64_t *a2)
{
  memset(v3, 0, sizeof(v3));
  sub_1002831D0(v3, *a2, a2[1], 0x8E38E38E38E38E39 * ((a2[1] - *a2) >> 3));
  v4[0] = 0;
  v4[1] = 0;
  sub_100004AA0(v4, (a1 + 8));
  operator new();
}

void sub_100446170(uint64_t a1, uint64_t a2)
{
  v3[4] = a1;
  sub_10045318C(&v4, a2);
  v3[0] = 0;
  v3[1] = 0;
  sub_100004AA0(v3, (a1 + 8));
  operator new();
}

void sub_10044629C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

void sub_1004462B4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  sub_100004AA0(&v11, (a1 + 8));
  v6 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v6);
  }

  v7[1] = 0;
  v8 = 0;
  v7[0] = 0;
  sub_100034C50(v7, *a2, a2[1], a2[1] - *a2);
  if (*(a3 + 23) < 0)
  {
    sub_100005F2C(__p, *a3, *(a3 + 8));
  }

  else
  {
    *__p = *a3;
    v10 = *(a3 + 16);
  }

  v11 = 0;
  v12 = 0;
  sub_100004AA0(&v11, (a1 + 8));
  operator new();
}

void sub_100446454(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a10)
  {
    std::__shared_weak_count::__release_weak(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_10044648C(uint64_t a1, uint64_t a2)
{
  sub_100004AA0(&v5, (a1 + 8));
  v4 = v6;
  v7[0] = v5;
  v7[1] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v4);
  }

  sub_1004541AC(&v8, a2);
  v5 = 0;
  v6 = 0;
  sub_100004AA0(&v5, (a1 + 8));
  operator new();
}

void sub_1004465F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

void sub_10044662C(void *a1, uint64_t *a2)
{
  v4 = [[NSKeyedArchiver alloc] initRequiringSecureCoding:1];
  v5 = [NSNumber numberWithInt:4];
  [v4 encodeObject:v5 forKey:@"version"];

  if (a2[1] == *a2)
  {
    v6 = 0;
  }

  else
  {
    v6 = sub_10044683C(a2);
  }

  [v4 encodeObject:v6 forKey:@"pendingTransferInfo"];
  v7 = [v4 encodedData];
  v8 = v7;
  v13 = v7;
  if (v7)
  {
    CFRetain(v7);
    v10 = v8;
    CFRetain(v8);
  }

  else
  {
    v10 = 0;
  }

  v9 = a1[7];
  v11 = a1[6];
  v12 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  v14[0] = 0;
  v14[1] = 0;
  sub_100004AA0(v14, a1 + 1);
  operator new();
}

id sub_10044683C(uint64_t *a1)
{
  v1 = a1[1] - *a1;
  if (v1)
  {
    v3 = [NSMutableArray arrayWithCapacity:0xCCCCCCCCCCCCCCCDLL * (v1 >> 8)];
    v4 = *a1;
    v5 = a1[1];
    while (v4 != v5)
    {
      v6 = sub_100736C50(v4);
      if (v6)
      {
        [v3 addObject:v6];
      }

      v4 += 1280;
    }

    if ([v3 count])
    {
      v7 = v3;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void sub_100446928(uint64_t a1, uint64_t a2)
{
  v3[4] = a1;
  sub_1004551EC(&v4, a2);
  v3[0] = 0;
  v3[1] = 0;
  sub_100004AA0(v3, (a1 + 8));
  operator new();
}

void sub_100446A54(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

void sub_100446A64(uint64_t a1, uint64_t *a2, std::string *__str, char **a4, __int128 *a5, uint64_t a6)
{
  v21 = 0;
  v20 = 0u;
  memset(v19, 0, sizeof(v19));
  std::string::operator=(v19, __str);
  if (&v19[24] != a4)
  {
    sub_1001122C4(&v19[24], *a4, a4[1], a4[1] - *a4);
  }

  v12 = *(a1 + 40);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = v19;
    if (v19[23] < 0)
    {
      v13 = *v19;
    }

    *buf = 136315394;
    *&buf[4] = v13;
    *&buf[12] = 2048;
    *&buf[14] = v20 - *&v19[24];
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I Upload to cloud for [%s] with [%ld] bytes", buf, 0x16u);
  }

  if ((v19[23] & 0x80000000) != 0)
  {
    sub_100005F2C(v16, *v19, *&v19[8]);
  }

  else
  {
    *v16 = *v19;
    v17 = *&v19[16];
  }

  memset(__p, 0, 24);
  sub_100034C50(__p, *&v19[24], v20, v20 - *&v19[24]);
  __p[3] = v21;
  sub_100004AA0(buf, (a1 + 8));
  v14 = *&buf[8];
  v22 = *buf;
  if (*&buf[8])
  {
    atomic_fetch_add_explicit((*&buf[8] + 16), 1uLL, memory_order_relaxed);
    sub_100004A34(v14);
  }

  v23 = a1;
  if ((v19[23] & 0x80000000) != 0)
  {
    sub_100005F2C(&v24, *v19, *&v19[8]);
  }

  else
  {
    v24 = *v19;
    v25 = *&v19[16];
  }

  v26 = 0uLL;
  v27 = 0;
  sub_100034C50(&v26, *&v19[24], v20, v20 - *&v19[24]);
  v28 = v21;
  v15 = a2[1];
  v29 = *a2;
  v30 = v15;
  if (v15)
  {
    atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
  }

  v31 = 0uLL;
  v32 = 0;
  sub_100034C50(&v31, *a4, a4[1], a4[1] - *a4);
  if (SHIBYTE(__str->__r_.__value_.__r.__words[2]) < 0)
  {
    sub_100005F2C(&v33, __str->__r_.__value_.__l.__data_, __str->__r_.__value_.__l.__size_);
  }

  else
  {
    v33 = *&__str->__r_.__value_.__l.__data_;
    v34 = __str->__r_.__value_.__r.__words[2];
  }

  if (*(a5 + 23) < 0)
  {
    sub_100005F2C(&v35, *a5, *(a5 + 1));
  }

  else
  {
    v35 = *a5;
    v36 = *(a5 + 2);
  }

  v37 = *(a5 + 24);
  v38 = *(a5 + 40);
  sub_100456684(v39, a6);
  v39[8] = 0;
  operator new();
}

void sub_100446EAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, std::__shared_weak_count *a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, void *__p, uint64_t a47, int a48, __int16 a49, char a50, char a51, void *a52, uint64_t a53, int a54, __int16 a55, char a56, char a57)
{
  if (*(v57 + 151) < 0)
  {
    operator delete(*(v57 + 128));
  }

  v59 = *(v57 + 104);
  if (v59)
  {
    *(v57 + 112) = v59;
    operator delete(v59);
  }

  v60 = *(v57 + 96);
  if (v60)
  {
    sub_100004A34(v60);
  }

  sub_1001DE0AC(v57 + 32);
  v61 = *(v57 + 16);
  if (v61)
  {
    std::__shared_weak_count::__release_weak(v61);
  }

  operator delete(v57);
  sub_100446FF0(&a28);
  sub_1001DE0AC(&a9);
  sub_1001DE0AC(&a20);
  _Unwind_Resume(a1);
}

uint64_t sub_100446FF0(uint64_t a1)
{
  sub_100297224(a1 + 200);
  if (*(a1 + 167) < 0)
  {
    operator delete(*(a1 + 144));
  }

  if (*(a1 + 143) < 0)
  {
    operator delete(*(a1 + 120));
  }

  v2 = *(a1 + 96);
  if (v2)
  {
    *(a1 + 104) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 88);
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = *(a1 + 48);
  if (v4)
  {
    *(a1 + 56) = v4;
    operator delete(v4);
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v5 = *(a1 + 8);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  return a1;
}

void sub_100447084(uint64_t a1@<X0>, uint64_t a2@<X1>, char **a3@<X2>, std::string **a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  v24 = 0;
  v25 = 0;
  v23 = &v24;
  if (*(a2 + 16))
  {
    v5 = *a3;
    v6 = a3[1];
    if (*a3 != v6)
    {
      do
      {
        v40 = 0;
        v38 = 0u;
        memset(v39, 0, sizeof(v39));
        v36 = 0u;
        *v37 = 0u;
        v34 = 0u;
        *v35 = 0u;
        v32 = 0u;
        *v33 = 0u;
        v30 = 0u;
        *v31 = 0u;
        v28 = 0u;
        *v29 = 0u;
        *v27 = 0u;
        v22 = 0;
        v20 = 0u;
        v21 = 0u;
        v18 = 0u;
        *__p = 0u;
        *v16 = 0u;
        *v17 = 0u;
        *v14 = 0u;
        v15 = 0u;
        *v13 = 0u;
        if (sub_100833B90(a1 + 40, v5 + 24, v27, v13))
        {
          v9 = *(&v21 + 1);
          for (i = v21; i != v9; i += 80)
          {
            if (sub_10016FA58(a2, (i + 8)))
            {
              v11 = *(a1 + 40);
              if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
              {
                v12 = v5;
                if (v5[23] < 0)
                {
                  v12 = *v5;
                }

                *buf = 136315138;
                *&buf[4] = v12;
                _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I Found matched uuid: %s", buf, 0xCu);
              }

              sub_100005BA0(&v23, v5);
              break;
            }
          }
        }

        *buf = &v21;
        sub_100111D64(buf);
        if (SBYTE7(v20) < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v18) < 0)
        {
          operator delete(v17[1]);
        }

        if (SHIBYTE(v17[0]) < 0)
        {
          operator delete(v16[0]);
        }

        if (SHIBYTE(v15) < 0)
        {
          operator delete(v14[1]);
        }

        if (SHIBYTE(v14[0]) < 0)
        {
          operator delete(v13[0]);
        }

        if (v40 == 1)
        {
          v13[0] = v39 + 8;
          sub_100112048(v13);
          if (SHIBYTE(v38) < 0)
          {
            operator delete(v37[1]);
          }

          if (SBYTE7(v36) < 0)
          {
            operator delete(v35[0]);
          }

          if (BYTE8(v32) == 1)
          {
            if (SBYTE7(v34) < 0)
            {
              operator delete(v33[0]);
            }

            BYTE8(v32) = 0;
          }

          if (BYTE8(v30) == 1)
          {
            if (SBYTE7(v32) < 0)
            {
              operator delete(v31[0]);
            }

            BYTE8(v30) = 0;
          }

          if (SBYTE7(v30) < 0)
          {
            operator delete(v29[0]);
          }

          if (LOBYTE(v27[0]) == 1 && SHIBYTE(v28) < 0)
          {
            operator delete(v27[1]);
          }
        }

        v5 += 56;
      }

      while (v5 != v6);
      if (v25)
      {
        sub_10044739C(a4, *a4, v23, &v24);
      }
    }
  }

  sub_100009970(&v23, v24);
}

void sub_10044735C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, char *a31, uint64_t a32, uint64_t a33, uint64_t a34, void **a35)
{
  sub_100009970(&a30, a31);
  sub_1000087B4(&a35);
  _Unwind_Resume(a1);
}

std::string *sub_10044739C(void *a1, std::string *a2, void *a3, void *a4)
{
  if (a3 == a4)
  {
    v4 = 0;
  }

  else
  {
    v4 = 0;
    v5 = a3;
    do
    {
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

      ++v4;
      v5 = v7;
    }

    while (v7 != a4);
  }

  return sub_10044F518(a1, a2, a3, a4, v4);
}

uint64_t sub_1004473F4(uint64_t a1, uint64_t a2, std::string **a3, uint64_t a4)
{
  v6 = a3[1];
  v7 = *a3;
  v8 = v6 - *a3;
  if (v6 != *a3)
  {
    *buf = 0;
    v15 = 0;
    v16 = 0;
    if (buf == a3)
    {
      v10 = 0;
      v9 = 0;
    }

    else
    {
      sub_100008234(buf, v7, v6, 0xAAAAAAAAAAAAAAABLL * (v8 >> 3));
      v9 = *buf;
      v10 = v15;
    }

    memset(v13, 0, sizeof(v13));
    sub_10004EFD0(v13, v9, v10, 0xAAAAAAAAAAAAAAABLL * ((v10 - v9) >> 3));
    sub_100457018(v17, a4);
    v18 = 0;
    operator new();
  }

  v11 = *(a1 + 40);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I No records to delete", buf, 2u);
  }

  return sub_100447630(a4, 0, 0);
}

uint64_t sub_100447630(uint64_t a1, char a2, char a3)
{
  v6 = a2;
  v5 = a3;
  v3 = *(a1 + 24);
  if (!v3)
  {
    sub_100022DB4();
  }

  return (*(*v3 + 48))(v3, &v6, &v5);
}

void sub_10044768C(uint64_t a1, uint64_t a2)
{
  v3[4] = a1;
  sub_1000224C8(&v4, a2);
  v3[0] = 0;
  v3[1] = 0;
  sub_100004AA0(v3, (a1 + 8));
  operator new();
}

void sub_1004477B8(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

void sub_1004477D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5[4] = a1;
  sub_100074920(&v6, a2);
  sub_100457A54(&v7, a3);
  v5[0] = 0;
  v5[1] = 0;
  sub_100004AA0(v5, (a1 + 8));
  operator new();
}

void sub_10044794C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

void sub_100447984(uint64_t a1, int a2, uint64_t *a3, uint64_t a4, const std::string **a5, uint64_t a6, uint64_t a7)
{
  v18 = 0uLL;
  v17 = &v18;
  for (i = *(a4 + 24); ; i += 168)
  {
    if (i == *(a4 + 32))
    {
      goto LABEL_22;
    }

    v14 = *(i + 95);
    if ((v14 & 0x80u) != 0)
    {
      v14 = *(i + 80);
    }

    if (v14)
    {
      v15 = *(i + 119);
      if ((v15 & 0x80u) != 0)
      {
        v15 = *(i + 104);
      }

      if (!v15)
      {
        break;
      }
    }
  }

  *__p = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  *v29 = 0u;
  *v30 = 0u;
  memset(v28, 0, sizeof(v28));
  *v27 = 0u;
  sub_100444918(a1, v27);
  if (BYTE8(v36) == 1)
  {
    sub_10016A798(&v17, v18);
    v17 = *(&v33 + 1);
    v18 = v34;
    if (*(&v34 + 1))
    {
      *(v34 + 16) = &v18;
      *(&v33 + 1) = &v34;
      v34 = 0uLL;
    }

    else
    {
      v17 = &v18;
    }
  }

  if (BYTE8(v36) == 1)
  {
    if (SBYTE7(v36) < 0)
    {
      operator delete(__p[0]);
    }

    sub_10016A798(&v33 + 8, v34);
    sub_1000DD0AC(&v32, *(&v32 + 1));
    if (SHIBYTE(v31) < 0)
    {
      operator delete(v30[1]);
    }

    if (SHIBYTE(v30[0]) < 0)
    {
      operator delete(v29[0]);
    }

    sub_100009970(&v28[1], v28[2]);
    sub_100009970(v27, v27[1]);
  }

LABEL_22:
  *v29 = 0u;
  *v30 = 0u;
  memset(v28, 0, sizeof(v28));
  *v27 = 0u;
  sub_10092ABC4(a3, a4, (a1 + 48), (a1 + 40), a5, a6, &v17, 0, v27);
  memset(v16, 0, sizeof(v16));
  sub_100034C50(v16, v27[0], v27[1], v27[1] - v27[0]);
  v19 = a1;
  sub_10044FA5C(v20, a4);
  *&v20[152] = *&v28[1];
  v21 = v28[3];
  memset(&v28[1], 0, 24);
  v22 = *v29;
  v23 = *v30;
  sub_10045923C(v24, a7);
  v24[2] = *v27;
  v25 = v28[0];
  v27[1] = 0;
  v28[0] = 0;
  v26 = 0;
  v27[0] = 0;
  operator new();
}

void sub_100447D60(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  (***(a1 + 48))(&theDate);
  ServiceMap = Registry::getServiceMap(theDate);
  v9 = ServiceMap;
  if (v10 < 0)
  {
    v11 = (v10 & 0x7FFFFFFFFFFFFFFFLL);
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
  v14 = sub_100009510(&v9[1].__m_.__sig, buf);
  if (v14)
  {
    v16 = v14[3];
    v15 = v14[4];
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v9);
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v15);
      v17 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v16 = 0;
  }

  std::mutex::unlock(v9);
  v15 = 0;
  v17 = 1;
LABEL_9:
  if (v22)
  {
    sub_100004A34(v22);
  }

  if ((v17 & 1) == 0)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v15);
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v16)
  {
    theDate = 0;
    (*(*v16 + 40))(buf, v16, @"kLastUploadTimestamp", kCommCenterPreferencesNoBackupAppID, kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
    sub_100432018(&theDate, buf);
    sub_10000A1EC(buf);
    if (theDate)
    {
      AbsoluteTime = CFDateGetAbsoluteTime(theDate);
    }

    else
    {
      v20 = *(a1 + 40);
      AbsoluteTime = 0.0;
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I cannot load device info last upload timestamp from preferences", buf, 2u);
      }
    }

    sub_1003EC530(&theDate);
    v19 = AbsoluteTime + 2592000.0;
  }

  else
  {
    v19 = 2592000.0;
    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_10177084C();
    }
  }

  if ((v17 & 1) == 0)
  {
    sub_100004A34(v15);
  }

  if ((a2 & 1) != 0 || CFAbsoluteTimeGetCurrent() > v19)
  {
    v24 = a1;
    sub_10045ECD0(&v25, a4);
    *__p = *a3;
    v27 = *(a3 + 16);
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *a3 = 0;
    v28 = 0;
    operator new();
  }

  sub_100449E18(a4, 0);
  if ((v17 & 1) == 0)
  {
    sub_100004A34(v15);
  }
}

void sub_1004480CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9)
{
  sub_1003EC530(&a9);
  if ((v10 & 1) == 0)
  {
    sub_100004A34(v9);
    sub_100004A34(v9);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100448164(uint64_t a1)
{
  v2 = *(a1 + 248);
  if (v2)
  {
    *(a1 + 256) = v2;
    operator delete(v2);
  }

  sub_10044FE7C(a1 + 216);
  if (*(a1 + 183) < 0)
  {
    operator delete(*(a1 + 160));
  }

  sub_10028C89C(a1 + 136, *(a1 + 144));
  if (*(a1 + 135) < 0)
  {
    operator delete(*(a1 + 112));
  }

  if (*(a1 + 104) == 1 && *(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  sub_100077CD4(a1 + 56, *(a1 + 64));
  v4 = (a1 + 32);
  sub_1000B2AF8(&v4);
  v4 = (a1 + 8);
  sub_100112048(&v4);
  return a1;
}

void sub_10044821C(uint64_t a1, uint64_t a2)
{
  v3[4] = a1;
  sub_10045A754(&v4, a2);
  v3[0] = 0;
  v3[1] = 0;
  sub_100004AA0(v3, (a1 + 8));
  operator new();
}

void sub_100448348(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

void sub_100448360(uint64_t a1, __int128 *a2, uint64_t a3)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(&__dst, *a2, *(a2 + 1));
  }

  else
  {
    __dst = *a2;
    v8 = *(a2 + 2);
  }

  sub_10011C9B0(v5, &__dst, 1);
  sub_100457018(v6, a3);
  sub_100448478(a1, v5, v6);
  sub_1003F2928(v6);
  sub_100009970(v5, v5[1]);
  if (SHIBYTE(v8) < 0)
  {
    operator delete(__dst);
  }
}

uint64_t sub_100448478(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __p[0] = 0;
  __p[1] = 0;
  v11[0] = 0;
  sub_1000727F0(a2, __p);
  if (SHIBYTE(v11[0]) < 0)
  {
    operator delete(__p[0]);
  }

  v6 = *(a2 + 16);
  if (v6)
  {
    v7 = *a2;
    __p[0] = a1;
    __p[1] = v7;
    v11[0] = *(a2 + 8);
    v11[1] = v6;
    *(v11[0] + 16) = v11;
    *a2 = a2 + 8;
    *(a2 + 16) = 0;
    *(a2 + 8) = 0;
    sub_100457018(&v12, a3);
    v9[0] = 0;
    v9[1] = 0;
    sub_100004AA0(v9, (a1 + 8));
    operator new();
  }

  if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
  {
    sub_101770880();
  }

  return sub_100447630(a3, 0, 0);
}

void sub_1004486A4(uint64_t a1, void *a2, uint64_t a3)
{
  sub_10092F704(a2, v5);
  sub_100457018(v6, a3);
  sub_100448478(a1, v5, v6);
  sub_1003F2928(v6);
  sub_100009970(v5, v5[1]);
}

void sub_100448738(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char *a10, uint64_t a11, char a12)
{
  sub_1003F2928(&a12);
  sub_100009970(&a9, a10);
  _Unwind_Resume(a1);
}

void sub_100448760(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5[4] = a1;
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    __p[2] = *(a2 + 16);
  }

  sub_1000224C8(&v7, a3);
  v5[0] = 0;
  v5[1] = 0;
  sub_100004AA0(v5, (a1 + 8));
  operator new();
}

void sub_10044892C(unint64_t a1, uint64_t *a2)
{
  v3[0] = a1;
  v3[1] = 0uLL;
  sub_10016B908(v3 + 8, *a2, a2[1], 0x8F5C28F5C28F5C29 * ((a2[1] - *a2) >> 3));
  v4[0] = 0;
  v4[1] = 0;
  sub_100004AA0(v4, (a1 + 8));
  operator new();
}

void sub_100448A64(uint64_t a1, uint64_t a2)
{
  v3[4] = a1;
  sub_10045CA70(&v4, a2);
  v3[0] = 0;
  v3[1] = 0;
  sub_100004AA0(v3, (a1 + 8));
  operator new();
}

void sub_100448B90(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

void sub_100448BA8(uint64_t a1, uint64_t *a2)
{
  memset(v3, 0, sizeof(v3));
  sub_100171D18(v3, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 6));
  v4[0] = 0;
  v4[1] = 0;
  sub_100004AA0(v4, (a1 + 8));
  operator new();
}

void sub_100448CF4(uint64_t a1, uint64_t a2)
{
  v3[4] = a1;
  sub_10045D9B4(&v4, a2);
  v3[0] = 0;
  v3[1] = 0;
  sub_100004AA0(v3, (a1 + 8));
  operator new();
}

void sub_100448E20(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

void sub_100448E38(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v4 = *(a2 + 16);
  }

  v5[0] = 0;
  v5[1] = 0;
  sub_100004AA0(v5, (a1 + 8));
  operator new();
}

void sub_100448F68(uint64_t a1, uint64_t a2)
{
  sub_10001C168(v4, a2);
  v3[0] = 0;
  v3[1] = 0;
  sub_100004AA0(v3, (a1 + 8));
  operator new();
}

void sub_10044907C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

void sub_1004490CC(uint64_t a1, void *a2, const char *a3, const char *a4, _BYTE *a5)
{
  if (sub_10064AAD8(a2))
  {
    v10 = 0;
    value = 0;
  }

  else
  {
    +[NSMutableDictionary dictionary];
    v26 = a4;
    v29 = v27 = a5;
    v11 = [NSMutableArray arrayWithCapacity:a2[2]];
    v28 = a2;
    v12 = *a2;
    if (*a2 != a2 + 1)
    {
      do
      {
        v13 = +[NSMutableDictionary dictionary];
        v14 = v12 + 4;
        if (*(v12 + 55) < 0)
        {
          v14 = *v14;
        }

        v15 = [NSString stringWithUTF8String:v14];
        [v13 setObject:v15 forKeyedSubscript:@"kActiveSimIdIccidKey"];
        v16 = v12 + 7;

        if (*(v12 + 79) < 0)
        {
          v16 = *v16;
        }

        v17 = [NSString stringWithUTF8String:v16];
        [v13 setObject:v17 forKeyedSubscript:@"kActiveSimIdPhNumKey"];

        [v11 addObject:v13];
        v18 = v12[1];
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
            v19 = v12[2];
            v20 = *v19 == v12;
            v12 = v19;
          }

          while (!v20);
        }

        v12 = v19;
      }

      while (v19 != a2 + 1);
    }

    v10 = v29;
    if ([v11 count])
    {
      [v29 setObject:v11 forKeyedSubscript:@"kActiveSimIdListKey"];
    }

    sub_100449C78(v29, @"kDataSimIccidKey", v28 + 3);
    sub_100449C78(v29, @"kVoiceSimIccidKey", v28 + 6);

    value = v29;
    a5 = v27;
    a4 = v26;
    if (v29)
    {
      CFRetain(v29);
    }
  }

  v31 = CFStringCreateWithCStringNoCopy(kCFAllocatorDefault, a3, 0x8000100u, kCFAllocatorNull);
  v21 = CFStringCreateWithCStringNoCopy(kCFAllocatorDefault, a4, 0x8000100u, kCFAllocatorNull);
  v30 = v21;
  CFPreferencesSetValue(v31, value, v21, kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  if (a5[1] == 1)
  {
    v22 = &kCFBooleanTrue;
    if (!*a5)
    {
      v22 = &kCFBooleanFalse;
    }

    CFPreferencesSetValue(@"kRestoredFlagKey", *v22, v21, kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
    v21 = v30;
  }

  v23 = CFPreferencesSynchronize(v21, kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  v24 = *(a1 + 40);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v25 = "yes";
    if (!v23)
    {
      v25 = "no";
    }

    *buf = 138412802;
    v34 = v31;
    v35 = 2112;
    v36 = v30;
    v37 = 2080;
    v38 = v25;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#I written key (%@) to file (%@) successfully: %s", buf, 0x20u);
  }

  sub_100005978(&v30);
  sub_100005978(&v31);
  sub_10001021C(&value);
}

void sub_100449470(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, int a17, __int16 a18, char a19, char a20, int a21, __int16 a22, char a23, char a24)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

const void **sub_100449520@<X0>(uint64_t a1@<X0>, const char *a2@<X1>, const char *a3@<X2>, _BYTE *a4@<X3>, std::string *a5@<X8>)
{
  key = CFStringCreateWithCStringNoCopy(kCFAllocatorDefault, a2, 0x8000100u, kCFAllocatorNull);
  v31 = 0;
  applicationID = CFStringCreateWithCStringNoCopy(kCFAllocatorDefault, a3, 0x8000100u, kCFAllocatorNull);
  *buf = CFPreferencesCopyValue(key, applicationID, kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  sub_100138C38(&v31, buf);
  if (v31)
  {
    v8 = v31;
    *&buf[8] = 0;
    *&buf[16] = 0;
    *buf = &buf[8];
    memset(v36, 0, sizeof(v36));
    v24 = v8;
    v9 = [v8 objectForKeyedSubscript:@"kActiveSimIdListKey"];
    v22 = v9;
    if (v9)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = v22;
      }

      else
      {
        v9 = 0;
      }
    }

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v11 = v9;
    v12 = [v11 countByEnumeratingWithState:&v27 objects:v34 count:16];
    if (v12)
    {
      v13 = *v28;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v28 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v15 = *(*(&v27 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v16 = v15;
            memset(&v26, 0, sizeof(v26));
            memset(&__p, 0, sizeof(__p));
            sub_100449D3C(v16, @"kActiveSimIdIccidKey", &v26);
            sub_100449D3C(v16, @"kActiveSimIdPhNumKey", &__p);
            sub_10045EB0C(buf, &v26.__r_.__value_.__l.__data_);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v26.__r_.__value_.__l.__data_);
            }
          }
        }

        v12 = [v11 countByEnumeratingWithState:&v27 objects:v34 count:16];
      }

      while (v12);
    }

    sub_100449D3C(v24, @"kDataSimIccidKey", v36);
    sub_100449D3C(v24, @"kVoiceSimIccidKey", &v36[1]);
    if (a4)
    {
      *a4 = 0;
      v26.__r_.__value_.__r.__words[0] = 0;
      __p.__r_.__value_.__r.__words[0] = CFPreferencesCopyValue(@"kRestoredFlagKey", applicationID, kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
      sub_10017A3BC(&v26, &__p.__r_.__value_.__l.__data_);
      if (v26.__r_.__value_.__r.__words[0])
      {
        __p.__r_.__value_.__s.__data_[0] = 0;
        ctu::cf::assign(&__p, v26.__r_.__value_.__l.__data_, v17);
        *a4 = __p.__r_.__value_.__s.__data_[0];
      }

      sub_100045C8C(&v26.__r_.__value_.__l.__data_);
    }

    v18 = *&buf[8];
    a5->__r_.__value_.__r.__words[0] = *buf;
    a5->__r_.__value_.__l.__size_ = v18;
    p_size = &a5->__r_.__value_.__l.__size_;
    v20 = *&buf[16];
    a5->__r_.__value_.__r.__words[2] = *&buf[16];
    if (v20)
    {
      *(v18 + 16) = p_size;
      *buf = &buf[8];
      *&buf[8] = 0;
      *&buf[16] = 0;
    }

    else
    {
      a5->__r_.__value_.__r.__words[0] = p_size;
    }

    a5[1] = v36[0];
    memset(v36, 0, 24);
    a5[2] = v36[1];
    memset(&v36[1], 0, sizeof(std::string));
    a5[3].__r_.__value_.__s.__data_[0] = 1;

    if (SHIBYTE(v36[1].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v36[1].__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v36[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v36[0].__r_.__value_.__l.__data_);
    }

    sub_1000DD0AC(buf, *&buf[8]);
  }

  else
  {
    v10 = *(a1 + 40);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      *&buf[4] = key;
      *&buf[12] = 2112;
      *&buf[14] = applicationID;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I user preferences key (%@) not found in file %@", buf, 0x16u);
    }

    a5->__r_.__value_.__s.__data_[0] = 0;
    a5[3].__r_.__value_.__s.__data_[0] = 0;
  }

  sub_10001021C(&v31);
  sub_100005978(&applicationID);
  return sub_100005978(&key);
}

void sub_100449984(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, void *a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, const void *a36, const void *a37, const void *a38)
{
  sub_100045C8C(&a21);

  sub_10014C84C(v39 - 176);
  sub_10001021C(&a36);
  sub_100005978(&a37);
  sub_100005978(&a38);
  _Unwind_Resume(a1);
}

void sub_100449A38(uint64_t a1, void *a2, std::string::value_type a3)
{
  sub_100444744(&v9);
  v6 = std::string::append(&v9, "com.apple.CommCenter.RestoredMultiSimPreferences.plist", 0x36uLL);
  v7 = *&v6->__r_.__value_.__l.__data_;
  v11 = v6->__r_.__value_.__r.__words[2];
  *__p = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }

  if (v11 >= 0)
  {
    v8 = __p;
  }

  else
  {
    v8 = __p[0];
  }

  v9.__r_.__value_.__s.__data_[0] = a3;
  v9.__r_.__value_.__s.__data_[1] = 1;
  sub_1004490CC(a1, a2, "kRestoredMultiSimPreferencesKey", v8, &v9);
  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_100449AFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100449B2C(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  sub_100444744(__p);
  v4 = std::string::append(__p, "com.apple.CommCenter.RestoredMultiSimPreferences.plist", 0x36uLL);
  v5 = *&v4->__r_.__value_.__l.__data_;
  v14 = v4->__r_.__value_.__r.__words[2];
  v13 = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  if (SBYTE7(v8) < 0)
  {
    operator delete(__p[0]);
  }

  v12 = 0;
  *v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  *__p = 0u;
  if (v14 >= 0)
  {
    v6 = &v13;
  }

  else
  {
    v6 = v13;
  }

  sub_100449520(a1, "kRestoredMultiSimPreferencesKey", v6, &v12, __p);
  *a2 = v12;
  sub_10045004C((a2 + 8), __p);
  if (BYTE8(v11) == 1)
  {
    if (SBYTE7(v11) < 0)
    {
      operator delete(v10[0]);
    }

    if (SHIBYTE(v9) < 0)
    {
      operator delete(*(&v8 + 1));
    }

    sub_1000DD0AC(__p, __p[1]);
  }

  if (SHIBYTE(v14) < 0)
  {
    operator delete(v13);
  }
}

void sub_100449C38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  sub_1001510E4(&__p);
  if (*(v14 - 25) < 0)
  {
    operator delete(*(v14 - 48));
  }

  _Unwind_Resume(a1);
}

void sub_100449C78(void *a1, void *a2, uint64_t *a3)
{
  v8 = a1;
  v5 = a2;
  if (v8 && v5)
  {
    if (*(a3 + 23) >= 0)
    {
      v6 = a3;
    }

    else
    {
      v6 = *a3;
    }

    v7 = [NSString stringWithUTF8String:v6];
    [v8 setObject:v7 forKeyedSubscript:v5];
  }
}

void sub_100449D3C(void *a1, void *a2, std::string *a3)
{
  v7 = a1;
  v5 = a2;
  if (v7 && v5)
  {
    v6 = [v7 objectForKeyedSubscript:v5];
    if (v6)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        sub_100016890(a3, [v6 UTF8String]);
      }
    }
  }
}

uint64_t sub_100449E18(uint64_t a1, int a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_100022DB4();
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t sub_100449E6C(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }

  sub_10045A6D4(a1 + 8);
  return a1;
}

void sub_100449EA8(uint64_t a1)
{
  v1[0] = 0;
  v1[1] = 0;
  sub_100004AA0(v1, (a1 + 8));
  operator new();
}

void sub_100449F88(uint64_t a1, uint64_t a2)
{
  sub_10045ECD0(v4, a2);
  v3[0] = 0;
  v3[1] = 0;
  sub_100004AA0(v3, (a1 + 8));
  operator new();
}

void sub_10044A09C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

void sub_10044A0B4(uint64_t a1)
{
  v1[0] = 0;
  v1[1] = 0;
  sub_100004AA0(v1, (a1 + 8));
  operator new();
}

void sub_10044A194(uint64_t a1, uint64_t a2)
{
  sub_10045F64C(v4, a2);
  v3[0] = 0;
  v3[1] = 0;
  sub_100004AA0(v3, (a1 + 8));
  operator new();
}

void sub_10044A2A8(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

void sub_10044A2C0(uint64_t a1, uint64_t a2)
{
  sub_10045ECD0(v4, a2);
  v3[0] = 0;
  v3[1] = 0;
  sub_100004AA0(v3, (a1 + 8));
  operator new();
}

void sub_10044A3D4(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

void sub_10044A3EC(uint64_t a1, const void **a2)
{
  sub_10006F22C(&v3 + 1, a2);
  v4[0] = 0;
  v4[1] = 0;
  sub_100004AA0(v4, (a1 + 8));
  operator new();
}

void sub_10044A4F0(uint64_t a1@<X0>, const void **a2@<X8>)
{
  *a2 = 0;
  (***(a1 + 48))(&buf);
  ServiceMap = Registry::getServiceMap(buf);
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
  v22 = v6;
  v10 = sub_100009510(&v5[1].__m_.__sig, &v22);
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
      goto LABEL_9;
    }
  }

  else
  {
    v12 = 0;
  }

  std::mutex::unlock(v5);
  v11 = 0;
  v13 = 1;
LABEL_9:
  if (*(&buf + 1))
  {
    sub_100004A34(*(&buf + 1));
  }

  if (v12)
  {
    v22 = 0;
    (*(*v12 + 40))(&buf, v12, @"AddOnRemotePlanList", @"no_backup/com.apple.CommCenter.AddOnRemotePlanList.plist", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
    sub_1001B1A54(&v22, &buf);
    sub_10000A1EC(&buf);
    if (v22)
    {
      v14 = objc_opt_class();
      v15 = [NSSet setWithObjects:v14, objc_opt_class(), 0];
      v21 = 0;
      v16 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v15 fromData:v22 error:&v21];
      v17 = v21;

      if (v17)
      {
        v18 = *(a1 + 40);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          sub_1017708B4(v17, v18);
        }
      }

      else if (v16)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          *&buf = v16;
          sub_10044A870(a2, &buf);
          v19 = *(a1 + 40);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            Count = CFArrayGetCount(*a2);
            LODWORD(buf) = 134217984;
            *(&buf + 4) = Count;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I Loaded (%lu) add on remote devices", &buf, 0xCu);
          }
        }
      }
    }

    sub_10002D760(&v22);
  }

  if ((v13 & 1) == 0)
  {
    sub_100004A34(v11);
  }
}

void sub_10044A7E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);

  sub_10002D760(va);
  if ((v7 & 1) == 0)
  {
    sub_100004A34(v5);
  }

  sub_100010250(v4);
  _Unwind_Resume(a1);
}

const void **sub_10044A870(const void **a1, CFTypeRef *a2)
{
  v3 = *a2;
  if (*a2)
  {
    CFRetain(*a2);
  }

  v4 = *a1;
  *a1 = v3;
  v6 = v4;
  sub_100010250(&v6);
  return a1;
}

const void **sub_10044A8C4(double a1)
{
  v5 = 0;
  valuePtr = *&a1;
  v1 = CFNumberCreate(kCFAllocatorDefault, kCFNumberDoubleType, &valuePtr);
  if (v1)
  {
    v5 = v1;
    valuePtr = 0;
    sub_100029A48(&valuePtr);
    v2 = v5;
  }

  else
  {
    v2 = 0;
  }

  v4 = v2;
  v5 = 0;
  sub_100029A48(&v5);
  CFPreferencesSetValue(@"AddOnRemotePlanListExpiryTime", v2, kCommCenterPreferencesNoBackupAppID, kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  sub_1000929F0();
  return sub_100029A48(&v4);
}

void sub_10044A970(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100029A48(va);
  _Unwind_Resume(a1);
}

double sub_10044A990()
{
  sub_1000929F0();
  v3 = 0;
  v4 = CFPreferencesCopyValue(@"AddOnRemotePlanListExpiryTime", kCommCenterPreferencesNoBackupAppID, kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  sub_100209D88(&v3, &v4);
  if (v3)
  {
    v4 = 0;
    ctu::cf::assign(&v4, v3, v0);
    v1 = *&v4;
  }

  else
  {
    v1 = 0.0;
  }

  sub_100029A48(&v3);
  return v1;
}

const void **sub_10044AA44(double a1)
{
  v5 = 0;
  valuePtr = *&a1;
  v1 = CFNumberCreate(kCFAllocatorDefault, kCFNumberDoubleType, &valuePtr);
  if (v1)
  {
    v5 = v1;
    valuePtr = 0;
    sub_100029A48(&valuePtr);
    v2 = v5;
  }

  else
  {
    v2 = 0;
  }

  v4 = v2;
  v5 = 0;
  sub_100029A48(&v5);
  CFPreferencesSetValue(@"AccountCreationTimestamp", v2, kCommCenterPreferencesNoBackupAppID, kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  sub_1000929F0();
  return sub_100029A48(&v4);
}

void sub_10044AAF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100029A48(va);
  _Unwind_Resume(a1);
}

double sub_10044AB10()
{
  sub_1000929F0();
  v3 = 0;
  v4 = CFPreferencesCopyValue(@"AccountCreationTimestamp", kCommCenterPreferencesNoBackupAppID, kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  sub_100209D88(&v3, &v4);
  if (v3)
  {
    v4 = 0;
    ctu::cf::assign(&v4, v3, v0);
    v1 = *&v4;
  }

  else
  {
    v1 = 0.0;
  }

  sub_100029A48(&v3);
  return v1;
}

const void **sub_10044ABC4(double a1)
{
  v5 = 0;
  valuePtr = *&a1;
  v1 = CFNumberCreate(kCFAllocatorDefault, kCFNumberDoubleType, &valuePtr);
  if (v1)
  {
    v5 = v1;
    valuePtr = 0;
    sub_100029A48(&valuePtr);
    v2 = v5;
  }

  else
  {
    v2 = 0;
  }

  v4 = v2;
  v5 = 0;
  sub_100029A48(&v5);
  CFPreferencesSetValue(@"PrivateNetworkAllowDynamicDataSwitchWaitTimestamp", v2, kCommCenterPreferencesNoBackupAppID, kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  sub_1000929F0();
  return sub_100029A48(&v4);
}

void sub_10044AC70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100029A48(va);
  _Unwind_Resume(a1);
}

double sub_10044AC90()
{
  sub_1000929F0();
  v3 = 0;
  v4 = CFPreferencesCopyValue(@"PrivateNetworkAllowDynamicDataSwitchWaitTimestamp", kCommCenterPreferencesNoBackupAppID, kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  sub_100209D88(&v3, &v4);
  if (v3)
  {
    v4 = 0;
    ctu::cf::assign(&v4, v3, v0);
    v1 = *&v4;
  }

  else
  {
    v1 = 0.0;
  }

  sub_100029A48(&v3);
  return v1;
}

void sub_10044AD44(uint64_t a1, uint64_t a2)
{
  sub_1004501B4(&v4 + 1, a2);
  sub_10045051C(&v5, a2 + 24);
  v6[0] = 0;
  v6[1] = 0;
  sub_100004AA0(v6, (a1 + 8));
  operator new();
}

void sub_10044AFAC(uint64_t a1, uint64_t a2)
{
  v3[4] = a1;
  sub_10045FE64(&v4, a2);
  v3[0] = 0;
  v3[1] = 0;
  sub_100004AA0(v3, (a1 + 8));
  operator new();
}

void sub_10044B0D8(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

void sub_10044B0F0(uint64_t a1, void *a2)
{
  v2 = a2 + 1;
  v3 = a2[1];
  v4 = a2[2];
  v5[0] = v3;
  v5[1] = v4;
  if (v4)
  {
    *(v3 + 16) = v5;
    *a2 = v2;
    *v2 = 0;
    a2[2] = 0;
  }

  v6[0] = 0;
  v6[1] = 0;
  sub_100004AA0(v6, (a1 + 8));
  operator new();
}

void sub_10044B244(uint64_t a1, uint64_t a2)
{
  v3[4] = a1;
  sub_100460164(&v4, a2);
  v3[0] = 0;
  v3[1] = 0;
  sub_100004AA0(v3, (a1 + 8));
  operator new();
}

void sub_10044B370(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

void sub_10044B388(uint64_t a1, void *a2)
{
  v3 = objc_opt_new();
  v6 = *a2;
  v4 = a2 + 1;
  v5 = v6;
  if (v6 != v4)
  {
    do
    {
      v7 = objc_opt_new();
      v8 = [NSNumber numberWithBool:*(v5 + 256)];
      [v7 setValue:v8 forKey:@"supportPrivateNetworkKey"];

      v9 = v5 + 12;
      if (*(v5 + 119) < 0)
      {
        v9 = *v9;
      }

      v10 = [NSString stringWithUTF8String:v9];
      [v7 setValue:v10 forKey:@"mccKey"];

      v11 = v5 + 15;
      if (*(v5 + 143) < 0)
      {
        v11 = *v11;
      }

      v12 = [NSString stringWithUTF8String:v11];
      [v7 setValue:v12 forKey:@"mncKey"];

      v13 = v5 + 18;
      if (*(v5 + 167) < 0)
      {
        v13 = *v13;
      }

      v14 = [NSString stringWithUTF8String:v13];
      [v7 setValue:v14 forKey:@"gid1Key"];

      v15 = v5 + 21;
      if (*(v5 + 191) < 0)
      {
        v15 = *v15;
      }

      v16 = [NSString stringWithUTF8String:v15];
      [v7 setValue:v16 forKey:@"gid2Key"];

      v17 = [NSNumber numberWithBool:*(v5 + 257)];
      [v7 setValue:v17 forKey:@"allowsAutomaticToggling"];

      if (*(v5 + 216) == 1)
      {
        v18 = v5 + 24;
        if (*(v5 + 215) < 0)
        {
          v18 = *v18;
        }

        v19 = [NSString stringWithUTF8String:v18];
        [v7 setValue:v19 forKey:@"simCsgIdentifierKey"];
      }

      if (*(v5 + 248) == 1)
      {
        v20 = v5 + 28;
        if (*(v5 + 247) < 0)
        {
          v20 = *v20;
        }

        v21 = [NSString stringWithUTF8String:v20];
        [v7 setValue:v21 forKey:@"simNidIdentifierKey"];
      }

      v22 = v5 + 4;
      if (*(v5 + 55) < 0)
      {
        v22 = *v22;
      }

      v23 = [NSString stringWithUTF8String:v22];
      [v3 setValue:v7 forKey:v23];

      v24 = v5[1];
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
          v25 = v5[2];
          v26 = *v25 == v5;
          v5 = v25;
        }

        while (!v26);
      }

      v5 = v25;
    }

    while (v25 != v4);
  }

  v40 = 0;
  v27 = [NSJSONSerialization dataWithJSONObject:v3 options:0 error:&v40];
  v28 = v40;
  if (v28)
  {
    v29 = *(a1 + 40);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = [v28 description];
      v31 = v30;
      v32 = [v30 UTF8String];
      *buf = 136315138;
      *&buf[4] = v32;
      _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "Encode Error: %s", buf, 0xCu);
    }
  }

  else
  {
    cf = v27;
    if (v27)
    {
      CFRetain(v27);
    }

    v33 = *(a1 + 48);
    sub_100444744(&v38);
    v34 = std::string::append(&v38, "com.apple.CommCenter.PrivateNetworkData.plist", 0x2DuLL);
    v35 = *&v34->__r_.__value_.__l.__data_;
    v42 = v34->__r_.__value_.__r.__words[2];
    *buf = v35;
    v34->__r_.__value_.__l.__size_ = 0;
    v34->__r_.__value_.__r.__words[2] = 0;
    v34->__r_.__value_.__r.__words[0] = 0;
    v37 = cf;
    if (cf)
    {
      CFRetain(cf);
    }

    (*(*v33 + 896))(v33, buf, &v37);
    sub_10002D760(&v37);
    if (SHIBYTE(v42) < 0)
    {
      operator delete(*buf);
    }

    if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v38.__r_.__value_.__l.__data_);
    }

    sub_10002D760(&cf);
  }
}