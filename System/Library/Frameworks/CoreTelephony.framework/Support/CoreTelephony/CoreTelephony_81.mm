void sub_10052EA7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a37 < 0)
  {
    operator delete(__p);
  }

  a20 = &a11;
  sub_1000087B4(&a20);
  if (a19 < 0)
  {
    operator delete(a14);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10052EB7C(uint64_t *a1, uint64_t a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x666666666666666)
  {
    sub_1000CE3D4();
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

  v16 = a1;
  if (v6)
  {
    sub_10052ED08(a1, v6);
  }

  v13 = 0;
  v14 = 40 * v2;
  sub_10052ECAC((40 * v2), a2);
  v15 = 40 * v2 + 40;
  v7 = a1[1];
  v8 = 40 * v2 + *a1 - v7;
  sub_10052ED60(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  sub_10052EEA4(&v13);
  return v12;
}

void sub_10052EC98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_10052EEA4(va);
  _Unwind_Resume(a1);
}

_WORD *sub_10052ECAC(_WORD *a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = a1 + 4;
  if (*(a2 + 31) < 0)
  {
    sub_100005F2C(v4, *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v5 = *(a2 + 8);
    *(v4 + 2) = *(a2 + 24);
    *v4 = v5;
  }

  a1[16] = *(a2 + 32);
  return a1;
}

void sub_10052ED08(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  sub_100013D10();
}

uint64_t sub_10052ED60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a4;
  v10 = 0;
  v11 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  if (a2 == a3)
  {
    LOBYTE(v10) = 1;
  }

  else
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
    v12 = a4;
    LOBYTE(v10) = 1;
    while (v5 != a3)
    {
      if (*(v5 + 31) < 0)
      {
        operator delete(*(v5 + 8));
      }

      v5 += 40;
    }
  }

  return sub_10052EE24(v9);
}

uint64_t sub_10052EE24(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_10052EE5C(a1);
  }

  return a1;
}

void sub_10052EE5C(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    if (*(v1 - 9) < 0)
    {
      operator delete(*(v1 - 32));
    }

    v1 -= 40;
  }
}

uint64_t sub_10052EEA4(uint64_t a1)
{
  sub_10052EEDC(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_10052EEDC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 40;
      *(a1 + 16) = v2 - 40;
      if (*(v2 - 9) < 0)
      {
        operator delete(*(v2 - 32));
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

void sub_10052EF38(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_10052EF8C(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_10052EF8C(uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 40)
  {
    if (*(i - 9) < 0)
    {
      operator delete(*(i - 32));
    }
  }

  a1[1] = v2;
}

void sub_10052EFDC(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_10052EFDC(a1, *a2);
    sub_10052EFDC(a1, a2[1]);
    sub_10052F038((a2 + 4));

    operator delete(a2);
  }
}

void sub_10052F038(uint64_t a1)
{
  sub_10011289C(a1 + 24);
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t sub_10052F088(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_10052F110(result, a4);
  }

  return result;
}

void sub_10052F0F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_1005235F4(&a9);
  _Unwind_Resume(a1);
}

void sub_10052F110(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2E8BA2E8BA2E8BBLL)
  {
    sub_10046A3A4(a1, a2);
  }

  sub_1000CE3D4();
}

char *sub_10052F160(uint64_t a1, __int128 *a2, __int128 *a3, char *__dst)
{
  v4 = __dst;
  v10 = __dst;
  v11 = __dst;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      sub_10046A2C0(v4, v6);
      v6 = (v6 + 88);
      v4 = v11 + 88;
      v11 += 88;
    }

    while (v6 != a3);
  }

  LOBYTE(v9) = 1;
  sub_10046A574(v8);
  return v4;
}

void *sub_10052F200(void *a1)
{
  *a1 = off_101E551A0;
  sub_10000FF50((a1 + 2));
  return a1;
}

void sub_10052F244(void *a1)
{
  *a1 = off_101E551A0;
  sub_10000FF50((a1 + 2));

  operator delete();
}

uint64_t sub_10052F324(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = off_101E551A0;
  a2[1] = v2;
  return sub_1000224C8((a2 + 2), a1 + 16);
}

void sub_10052F35C(void *a1)
{
  sub_10000FF50(a1 + 16);

  operator delete(a1);
}

uint64_t sub_10052F398(uint64_t a1, _WORD *a2)
{
  v2 = *(a1 + 8);
  sub_10000FFD0(a1 + 16, (*a2 & 0x100) == 0);
  v3 = *(**(v2 + 96) + 16);

  return v3();
}

uint64_t sub_10052F400(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10052F4BC(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E55220;
  a2[1] = v2;
  return result;
}

void sub_10052F4E8(uint64_t a1, void ***a2, unsigned __int8 *a3)
{
  v4 = *a2;
  v5 = a2[1];
  memset(v11, 0, sizeof(v11));
  sub_10052F724(v11, a3);
  v13[0] = v4;
  v13[1] = v5;
  if (LOBYTE(v11[0]) == 1)
  {
    v6 = *(a1 + 8);
    v7 = *(v6 + 40);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I active remote plan - received pending profiles", buf, 2u);
      if (LOBYTE(v11[0]) != 1)
      {
        if (LOBYTE(v11[0]) == 2)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          v9 = &ctu::ResultIsError::~ResultIsError;
          ctu::ResultIsError::ResultIsError(exception);
        }

        else
        {
          exception = __cxa_allocate_exception(0x10uLL);
          v9 = &ctu::ResultIsEmptyError::~ResultIsEmptyError;
          ctu::ResultIsEmptyError::ResultIsEmptyError(exception);
        }

        __cxa_throw(exception, v10, v9);
      }
    }

    (*(**(v6 + 160) + 40))(*(v6 + 160), v13, v11 + 8);
    (*(**(v6 + 96) + 16))(*(v6 + 96));
    if (LOBYTE(v11[0]) == 1)
    {
      v13[0] = v11 + 1;
      sub_1000DC8D4(v13);
    }
  }
}

void sub_10052F698(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t *a13)
{
  __cxa_free_exception(v13);
  if (a9 == 1)
  {
    a13 = &a10;
    sub_1000DC8D4(&a13);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10052F6D8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

unsigned __int8 *sub_10052F724(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v3 = *a2;
  if (v3 == 2)
  {
    sub_10052F7E0(a1, a2 + 8);
  }

  else if (v3 == 1)
  {
    sub_10052F77C(a1, (a2 + 8));
  }

  return a1;
}

__n128 sub_10052F77C(uint64_t a1, __n128 *a2)
{
  if (*a1 == 1)
  {
    sub_1000DDEF8((a1 + 8));
  }

  else
  {
    *a1 = 1;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 8) = 0;
  }

  result = *a2;
  *(a1 + 8) = *a2;
  *(a1 + 24) = a2[1].n128_u64[0];
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  return result;
}

void sub_10052F7E0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = *a1;
  if (v4 == 1)
  {
    v5 = (a1 + 8);
    sub_1000DC8D4(&v5);
LABEL_5:
    *a1 = 2;
    goto LABEL_6;
  }

  if (v4 != 2)
  {
    goto LABEL_5;
  }

LABEL_6:
  a1[8] = *a2;
}

uint64_t sub_10052F844(uint64_t a1)
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

uint64_t sub_10052F8C4(uint64_t a1, uint64_t a2)
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

void *sub_10052F95C(void *a1)
{
  *a1 = off_101E552B0;
  sub_10052B25C((a1 + 2));
  return a1;
}

void sub_10052F9A0(void *a1)
{
  *a1 = off_101E552B0;
  sub_10052B25C((a1 + 2));

  operator delete();
}

uint64_t sub_10052FA80(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = off_101E552B0;
  a2[1] = v2;
  return sub_10052F8C4((a2 + 2), a1 + 16);
}

void sub_10052FAB8(void *a1)
{
  sub_10052B25C(a1 + 16);

  operator delete(a1);
}

void sub_10052FAF4(uint64_t a1, uint64_t *a2, unsigned __int8 *a3)
{
  v4 = *a2;
  v5 = a2[1];
  memset(v11, 0, sizeof(v11));
  sub_10052F724(v11, a3);
  v16[0] = v4;
  v16[1] = v5;
  if (LOBYTE(v11[0]) == 1)
  {
    v6 = *(a1 + 8);
    v7 = *(v6 + 40);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT) && (*buf = 0, _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I received pending profiles", buf, 2u), LOBYTE(v11[0]) != 1))
    {
      if (LOBYTE(v11[0]) == 2)
      {
LABEL_13:
        exception = __cxa_allocate_exception(0x10uLL);
        v9 = &ctu::ResultIsError::~ResultIsError;
        ctu::ResultIsError::ResultIsError(exception);
        goto LABEL_15;
      }
    }

    else
    {
      (*(**(v6 + 160) + 40))(*(v6 + 160), v16, v11 + 8);
      if (LOBYTE(v11[0]) == 1)
      {
        sub_100520028(a1 + 16, 1);
        goto LABEL_7;
      }

      if (LOBYTE(v11[0]) == 2)
      {
        goto LABEL_13;
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    v9 = &ctu::ResultIsEmptyError::~ResultIsEmptyError;
    ctu::ResultIsEmptyError::ResultIsEmptyError(exception);
LABEL_15:
    __cxa_throw(exception, v10, v9);
  }

  *buf = 0;
  v13 = 0;
  v14 = 0;
  sub_100520028(a1 + 16, 0);
  v15 = buf;
  sub_1000DC8D4(&v15);
LABEL_7:
  if (LOBYTE(v11[0]) == 1)
  {
    *buf = v11 + 8;
    sub_1000DC8D4(buf);
  }
}

void sub_10052FD14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  __cxa_free_exception(v17);
  if (a9 == 1)
  {
    a13 = &a10;
    sub_1000DC8D4(&a13);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10052FD70(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10052FDBC(uint64_t a1, uint64_t a2)
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

uint64_t *sub_10052FE3C(uint64_t **a1)
{
  v1 = *a1;
  v14 = a1;
  v15 = v1;
  v2 = *v1;
  v61 = 0uLL;
  v3 = *(v2 + 1224);
  v4 = 328;
  if (*(v2 + 1224))
  {
    v4 = 1368;
  }

  v5 = v2 + v4;
  v6 = *(v2 + v4 + 32);
  if (*(v5 + 40) == v6 || (*(v5 + 24) & 1) == 0)
  {
    if (os_log_type_enabled(*(v2 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_1017733AC();
    }
  }

  else
  {
    v61 = *(v6 + 16);
    if (!v3)
    {
      *v31 = 0u;
      *v32 = 0u;
      *v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      *v28 = 0u;
      v25 = 0u;
      *v26 = 0u;
      *v23 = 0u;
      *v24 = 0u;
      *v21 = 0u;
      v22 = 0u;
      *v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      *v18 = 0u;
      memset(__p, 0, sizeof(__p));
      sub_100F11798(__p);
      memset(__dst, 0, 24);
      ctu::cf::assign();
      v8 = __dst[0];
      *&v59 = __dst[1];
      *(&v59 + 7) = *(&__dst[1] + 7);
      v9 = HIBYTE(__dst[2]);
      v10 = SHIBYTE(__dst[2]);
      if (SHIBYTE(__p[2]) < 0)
      {
        operator delete(__p[0]);
      }

      *(&__p[1] + 7) = *(&v59 + 7);
      v11 = v59;
      __p[0] = v8;
      __p[1] = v59;
      HIBYTE(__p[2]) = v10;
      if (v10 >= 0)
      {
        v11 = v9;
      }

      if (!v11)
      {
        (*(**(v2 + 128) + 680))(__dst);
        v13 = __dst[0];
        if (__dst[1])
        {
          sub_100004A34(__dst[1]);
        }

        if (v13)
        {
          (*(**(v2 + 128) + 680))(&v59);
          (*(*v59 + 64))(__dst);
          if (SHIBYTE(__p[2]) < 0)
          {
            operator delete(__p[0]);
          }

          *__p = *__dst;
          __p[2] = __dst[2];
          HIBYTE(__dst[2]) = 0;
          LOBYTE(__dst[0]) = 0;
          if (*(&v59 + 1))
          {
            sub_100004A34(*(&v59 + 1));
          }
        }
      }

      sub_10004ECBC(__dst, __p);
      *&v59 = _Block_copy(&stru_101E55340);
      cellplan::CellularPlanControllerPhone::fetchProfile_sync(v2, &v61, __dst, &v59);
    }

    v34 = 0;
    *v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    *v31 = 0u;
    *v28 = 0u;
    *v29 = 0u;
    *v26 = 0u;
    v27 = 0u;
    *v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    *v23 = 0u;
    v20 = 0u;
    *v21 = 0u;
    *v18 = 0u;
    *v19 = 0u;
    v17 = 0u;
    memset(__p, 0, sizeof(__p));
    v7 = v1[1];
    if (v7 && CFStringGetLength(v7))
    {
      memset(__dst, 0, 24);
      ctu::cf::assign();
      *&v59 = 0;
      *(&v59 + 7) = 0;
      if (SHIBYTE(__p[2]) < 0)
      {
        operator delete(__p[0]);
      }

      __p[0] = 0;
      __p[1] = v59;
      *(&__p[1] + 7) = *(&v59 + 7);
      HIBYTE(__p[2]) = 0;
    }

    else
    {
      if (os_log_type_enabled(*(v2 + 40), OS_LOG_TYPE_ERROR))
      {
        sub_101774030();
      }

      (*(**(v2 + 128) + 680))(&v59);
      (*(*v59 + 64))(__dst);
      if (SHIBYTE(__p[2]) < 0)
      {
        operator delete(__p[0]);
      }

      *__p = *__dst;
      __p[2] = __dst[2];
      HIBYTE(__dst[2]) = 0;
      LOBYTE(__dst[0]) = 0;
      if (*(&v59 + 1))
      {
        sub_100004A34(*(&v59 + 1));
      }
    }

    sub_100FB5378(__dst, __p);
    v59 = 0uLL;
    v60 = 0;
    sub_100530564(&v59, __dst, &v59, 1uLL);
    cellplan::CellularPlanControllerPhone::updateRemotePendingPlans_sync(v2, &v61, &v59);
    v35 = &v59;
    sub_1000DC8D4(&v35);
    if (v58 == 1)
    {
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
        operator delete(v52);
      }

      if (v51 < 0)
      {
        operator delete(v50);
      }

      if (v49 < 0)
      {
        operator delete(v48);
      }

      if (v47 < 0)
      {
        operator delete(v46);
      }

      if (v45 < 0)
      {
        operator delete(v44);
      }
    }

    if (v43 < 0)
    {
      operator delete(v42);
    }

    if (v41 < 0)
    {
      operator delete(v40);
    }

    if (v39 < 0)
    {
      operator delete(v38);
    }

    if (v37 < 0)
    {
      operator delete(__dst[3]);
    }

    if (SHIBYTE(__dst[2]) < 0)
    {
      operator delete(__dst[0]);
    }

    if (v34 == 1)
    {
      if (SHIBYTE(v33) < 0)
      {
        operator delete(v32[1]);
      }

      if (SHIBYTE(v32[0]) < 0)
      {
        operator delete(v31[0]);
      }

      if (SHIBYTE(v30) < 0)
      {
        operator delete(v29[1]);
      }

      if (SHIBYTE(v29[0]) < 0)
      {
        operator delete(v28[0]);
      }

      if (SBYTE7(v27) < 0)
      {
        operator delete(v26[0]);
      }

      if (SHIBYTE(v25) < 0)
      {
        operator delete(v24[1]);
      }

      if (SHIBYTE(v24[0]) < 0)
      {
        operator delete(v23[0]);
      }
    }

    if (SBYTE7(v22) < 0)
    {
      operator delete(v21[0]);
    }

    if (SHIBYTE(v20) < 0)
    {
      operator delete(v19[1]);
    }

    if (SHIBYTE(v19[0]) < 0)
    {
      operator delete(v18[0]);
    }

    if (SHIBYTE(v17) < 0)
    {
      operator delete(__p[3]);
    }

    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
    }
  }

  sub_100530510(&v15);
  return sub_1000049E0(&v14);
}

void sub_10053040C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, void *__p, uint64_t a54, int a55, __int16 a56, char a57, char a58)
{
  v60 = *(v58 - 96);
  if (v60)
  {
    sub_100004A34(v60);
  }

  sub_100F118F0(&a11);
  sub_100530510(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_100530510(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_100005978((v1 + 8));
    operator delete();
  }

  return result;
}

uint64_t sub_100530564(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1000DDF38(result, a4);
  }

  return result;
}

void sub_1005305CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_1000DC8D4(&a9);
  _Unwind_Resume(a1);
}

char *sub_1005305EC(uint64_t a1, __int128 *a2, __int128 *a3, char *__dst)
{
  v4 = __dst;
  v10 = __dst;
  v11 = __dst;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      sub_100FB5378(v4, v6);
      v6 = (v6 + 312);
      v4 = v11 + 312;
      v11 += 312;
    }

    while (v6 != a3);
  }

  LOBYTE(v9) = 1;
  sub_1000DE090(v8);
  return v4;
}

uint64_t sub_10053068C(uint64_t a1, uint64_t a2)
{
  sub_1005306FC(a1 + 32, a2);
  result = *(a1 + 24);
  if (result)
  {
    v4 = *(*result + 48);

    return v4();
  }

  return result;
}

void sub_1005306FC(uint64_t a1, uint64_t a2)
{
  if (*a1 == 1)
  {
    if (*a2)
    {
      std::string::operator=((a1 + 8), (a2 + 8));
      *(a1 + 32) = *(a2 + 32);
      sub_10016E810(a1 + 40, a2 + 40);
      sub_10016E810(a1 + 72, a2 + 72);
      *(a1 + 104) = *(a2 + 104);
    }

    else
    {

      sub_100220B4C(a1);
    }
  }

  else if (*a2)
  {
    v4 = (a2 + 8);

    sub_100523744(a1, v4);
  }
}

uint64_t sub_100530DA0(uint64_t a1, void *a2, char a3)
{
  sub_10000501C(__p, "jetsam");
  sub_10072A6B4(a1, a2, __p, "xpc", 0);
  *a1 = &off_101E553E0;
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  *a1 = off_101E55370;
  *(a1 + 168) = a3;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  return a1;
}

void sub_100530E58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100530F0C(uint64_t a1, xpc_connection_t *a2, uint64_t **a3)
{
  if (*(a1 + 168) == 1)
  {
    if (!*(a1 + 176))
    {
      sub_10000501C(&__p, "JetsamXpc");
      Registry::createXpcJetsamAssertion();
      v6 = *buf;
      *buf = 0;
      *&buf[8] = 0;
      v7 = *(a1 + 184);
      *(a1 + 176) = v6;
      if (v7)
      {
        sub_100004A34(v7);
        if (*&buf[8])
        {
          sub_100004A34(*&buf[8]);
        }
      }

      if (v12 < 0)
      {
        operator delete(__p);
      }
    }

    v8 = *(a1 + 32);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a3 + 23) < 0)
      {
        a3 = *a3;
      }

      pid = xpc_connection_get_pid(*a2);
      *buf = 136315394;
      *&buf[4] = a3;
      *&buf[12] = 1024;
      *&buf[14] = pid;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s(%d) requested Jetsam XPC assertion", buf, 0x12u);
    }
  }

  return 1;
}

void sub_100531050(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100531074(uint64_t a1, xpc_connection_t *a2, uint64_t *a3)
{
  if (*(a1 + 168) == 1)
  {
    v5 = *(a1 + 32);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a3 + 23) < 0)
      {
        a3 = *a3;
      }

      pid = xpc_connection_get_pid(*a2);
      v7 = 136315394;
      v8 = a3;
      v9 = 1024;
      v10 = pid;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s(%d) released its Jetsam XPC assertion", &v7, 0x12u);
    }
  }
}

void sub_10053114C(uint64_t a1)
{
  if (*(a1 + 168) == 1)
  {
    v7 = v1;
    v8 = v2;
    v4 = *(a1 + 184);
    *(a1 + 176) = 0;
    *(a1 + 184) = 0;
    if (v4)
    {
      sub_100004A34(v4);
    }

    v5 = *(a1 + 32);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I All Jetsam XPC assertions released", v6, 2u);
    }
  }
}

uint64_t sub_1005311D0(void *a1)
{
  *a1 = off_101E55370;
  v2 = a1[23];
  if (v2)
  {
    sub_100004A34(v2);
  }

  return sub_10072A870(a1);
}

void sub_10053122C(void *a1)
{
  *a1 = off_101E55370;
  v2 = a1[23];
  if (v2)
  {
    sub_100004A34(v2);
  }

  sub_10072A870(a1);

  operator delete();
}

void sub_1005312A0(uint64_t a1)
{
  sub_10072A870(a1);

  operator delete();
}

void sub_100531358(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_101774064(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_100531374(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1005313AC(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_1005313DC(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

const void **sub_10053141C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v9 = 0;
  memset(&__p, 0, sizeof(__p));
  v7 = 0;
  v3 = [NSJSONSerialization JSONObjectWithData:[NSData dataWithBytesNoCopy:*a1 length:a1[1] - *a1 freeWhenDone:0] options:0 error:&v7];
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v3;
      sub_1002A2218(&v9, &v10);
    }

    else
    {
      sub_1000167D4(&__p, "Unexpected JSON format, should be Dictionary", 0x2CuLL);
    }
  }

  else
  {
    [NSString stringWithFormat:@"Invalid JSON data input, error: %@", v7];
    v10 = 0;
    v11 = 0uLL;
    ctu::cf::assign();
    v4 = v10;
    v12[0] = v11;
    *(v12 + 7) = *(&v11 + 7);
    v5 = HIBYTE(v11);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    __p.__r_.__value_.__r.__words[0] = v4;
    __p.__r_.__value_.__l.__size_ = v12[0];
    *(&__p.__r_.__value_.__r.__words[1] + 7) = *(v12 + 7);
    *(&__p.__r_.__value_.__s + 23) = v5;
  }

  sub_100553C14(a2, &v9, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return sub_10001021C(&v9);
}

void sub_10053159C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, const void *a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  sub_10001021C(&a17);
  _Unwind_Resume(a1);
}

const __CFString *sub_1005315E0(unsigned int a1)
{
  if (a1 > 5)
  {
    return @"???";
  }

  else
  {
    return off_101E589D0[a1];
  }
}

const char *sub_100531604(int a1)
{
  if (a1 > 6200)
  {
    if (a1 > 6300)
    {
      if (a1 == 6301)
      {
        return "STATUS_AUTH_ID_REQUEST";
      }

      if (a1 == 6302)
      {
        return "STATUS_AUTH_CHALLENGE";
      }
    }

    else
    {
      if (a1 == 6201)
      {
        return "STATUS_BEARER_FAILURE";
      }

      if (a1 == 6300)
      {
        return "STATUS_AUTH_FAILED";
      }
    }

    return "????";
  }

  else
  {
    v1 = a1 - 6000;
    result = "STATUS_SUCCESS";
    switch(v1)
    {
      case 0:
        return result;
      case 1:
        result = "STATUS_UNSUPPORTED_ACTION";
        break;
      case 2:
        result = "STATUS_DISALLOWED_ACTION";
        break;
      case 3:
        result = "STATUS_UNKNOWN_DEVICE";
        break;
      case 4:
        result = "STATUS_UNKNOWN_SUBSCRIBER";
        break;
      case 5:
        result = "STATUS_TEMPORARY_FAILURE";
        break;
      case 6:
        result = "STATUS_SRVCTOKEN_EXPIRED";
        break;
      case 8:
        result = "STATUS_MAX_DEVICES_REACHED";
        break;
      case 9:
        result = "STATUS_MAX_ICCIDS_REACHED";
        break;
      case 10:
        result = "STATUS_PERMANENT_FAILURE";
        break;
      case 11:
        result = "STATUS_ACCESS_TOKEN_INVALID";
        break;
      case 12:
        result = "STATUS_OPTIN_REQUIRED";
        break;
      case 13:
        result = "STATUS_TRANSFERSIMSERVICE_REDIRECT";
        break;
      case 20:
        result = "STATUS_PNR_NOT_AVAILABLE";
        break;
      default:
        return "????";
    }
  }

  return result;
}

const char *sub_10053175C(int a1)
{
  if (a1 > 6102)
  {
    if (a1 > 6104)
    {
      if (a1 == 6105)
      {
        return "STATUS_PPACCT_ENTITLEMENT";
      }

      if (a1 == 6106)
      {
        return "STATUS_INCOMPATIBLE_ENTITLEMENT";
      }

      return "????";
    }

    if (a1 == 6103)
    {
      return "STATUS_PROVISIONING_ENTITLEMENT";
    }

    else
    {
      return "STATUS_BIZACCT_ENTITLEMENT";
    }
  }

  else
  {
    if (a1 <= 6100)
    {
      if (a1 == -1)
      {
        return "STATUS_UNKNOWN_ENTITLEMENT";
      }

      if (a1 == 6100)
      {
        return "STATUS_ENABLED_ENTITLEMENT";
      }

      return "????";
    }

    if (a1 == 6101)
    {
      return "STATUS_DISABLED_ENTITLEMENT";
    }

    else
    {
      return "STATUS_INVALID_ENTITLEMENT";
    }
  }
}

__CFString *sub_100531844(int a1)
{
  if ((a1 - 2) > 0x14)
  {
    return 0;
  }

  else
  {
    return off_101E58A00[a1 - 2];
  }
}

uint64_t sub_100531868(void *a1)
{
  if ([a1 isEqualToString:@"facetime"])
  {
    return 2;
  }

  if ([a1 isEqualToString:@"tethering"])
  {
    return 3;
  }

  if ([a1 isEqualToString:@"VoLTE"])
  {
    return 6;
  }

  if ([a1 isEqualToString:@"VoWiFi"])
  {
    return 7;
  }

  if ([a1 isEqualToString:@"iCloudVoWiFi"])
  {
    return 8;
  }

  if ([a1 isEqualToString:@"Multi-SIM"])
  {
    return 10;
  }

  if ([a1 isEqualToString:@"sa-watch"])
  {
    return 11;
  }

  if ([a1 isEqualToString:@"sa-watch-transfer"])
  {
    return 14;
  }

  if ([a1 isEqualToString:@"MultiSIM-transfer"])
  {
    return 12;
  }

  if ([a1 isEqualToString:@"iphone-plan-transfer"])
  {
    return 13;
  }

  if ([a1 isEqualToString:@"5g-service"])
  {
    return 15;
  }

  if ([a1 isEqualToString:@"ipad-signup"])
  {
    return 16;
  }

  if ([a1 isEqualToString:@"custom-qos"])
  {
    return 17;
  }

  if ([a1 isEqualToString:@"private-net-provisioning"])
  {
    return 18;
  }

  if ([a1 isEqualToString:@"nt-carrier-service"])
  {
    return 19;
  }

  if ([a1 isEqualToString:@"hera-service"])
  {
    return 20;
  }

  if ([a1 isEqualToString:@"enhanced-throughput"])
  {
    return 21;
  }

  if ([a1 isEqualToString:@"rcs"])
  {
    return 22;
  }

  return 0xFFFFFFFFLL;
}

id sub_100531A7C(void *a1)
{
  v2 = +[NSMutableArray array];
  v3 = sub_10006ED58();
  v4 = v3 + 1;
  v5 = *v3;
  if (*v3 != v3 + 1)
  {
    do
    {
      v6 = *(v5 + 7);
      if ((*a1 >> v6))
      {
        v7 = sub_100531844(v6);
        if (v7)
        {
          [v2 addObject:v7];
        }
      }

      v8 = v5[1];
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
          v9 = v5[2];
          v10 = *v9 == v5;
          v5 = v9;
        }

        while (!v10);
      }

      v5 = v9;
    }

    while (v9 != v4);
  }

  return v2;
}

id sub_100531B28(void *a1)
{
  v2 = +[NSMutableArray array];
  v3 = sub_10006ED58();
  v4 = v3 + 1;
  v5 = *v3;
  if (*v3 != v3 + 1)
  {
    do
    {
      v6 = *(v5 + 7);
      if (v6 >= 0x17)
      {
        sub_1000A58E4("bitset test argument out of range");
      }

      if ((*a1 >> v6))
      {
        v7 = sub_100531844(v6);
        if (v7)
        {
          [v2 addObject:v7];
        }
      }

      v8 = v5[1];
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
          v9 = v5[2];
          v10 = *v9 == v5;
          v5 = v9;
        }

        while (!v10);
      }

      v5 = v9;
    }

    while (v9 != v4);
  }

  return v2;
}

id sub_100531BE8(uint64_t a1)
{
  v2 = +[NSMutableArray array];
  v3 = sub_10006ED58();
  v4 = v3 + 1;
  v5 = *v3;
  if (*v3 != v3 + 1)
  {
    v6 = (a1 + 8);
    do
    {
      v7 = *v6;
      if (*v6)
      {
        v8 = *(v5 + 7);
        v9 = v6;
        do
        {
          if (*(v7 + 32) >= v8)
          {
            v9 = v7;
          }

          v7 = *(v7 + 8 * (*(v7 + 32) < v8));
        }

        while (v7);
        if (v9 != v6 && *(v9 + 8) <= v8)
        {
          v10 = sub_100531844(*(v5 + 7));
          if (v10)
          {
            v11 = v10;
            v12 = +[NSMutableDictionary dictionary];
            [v12 setObject:v11 forKey:@"name"];
            [v12 setObject:+[NSNumber numberWithInt:](NSNumber forKey:{"numberWithInt:", *(v9[5] + 8)), @"state"}];
            if (v8 == 8)
            {
              v14 = v9[5];
              v13 = v9[6];
              if (v13)
              {
                atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v15 = +[NSMutableDictionary dictionary];
              v21 = &v22;
              v22 = v15;
              sub_100531E68(&v21, @"CSR", v14 + 16);
              sub_100531E68(&v21, @"sip-reg-uri", v14 + 48);
              sub_100531E68(&v21, @"apn", v14 + 80);
              sub_100531E68(&v21, @"sip-username", v14 + 112);
              sub_100531E68(&v21, @"sip-password", v14 + 144);
              sub_100531E68(&v21, @"imsi", v14 + 176);
              sub_100531E68(&v21, @"public-id", v14 + 208);
              sub_100531E68(&v21, @"pcscf-address", v14 + 240);
              if ([v22 count])
              {
                v16 = +[NSMutableArray array];
                [v16 addObject:v22];
                [v12 setObject:v16 forKey:@"data"];
              }

              if (v13)
              {
                sub_100004A34(v13);
              }
            }

            [v2 addObject:v12];
          }
        }
      }

      v17 = v5[1];
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
          v18 = v5[2];
          v19 = *v18 == v5;
          v5 = v18;
        }

        while (!v19);
      }

      v5 = v18;
    }

    while (v18 != v4);
  }

  return v2;
}

void sub_100531E48(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

const void **sub_100531E68(const void **result, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 24) == 1)
  {
    v4 = result;
    if (*(a3 + 23) < 0)
    {
      sub_100005F2C(v7, *a3, *(a3 + 8));
    }

    else
    {
      *v7 = *a3;
      v8 = *(a3 + 16);
    }

    if (SHIBYTE(v8) < 0)
    {
      sub_100005F2C(__dst, v7[0], v7[1]);
    }

    else
    {
      *__dst = *v7;
      v12 = v8;
    }

    v10 = 0;
    if (SHIBYTE(v12) < 0)
    {
      sub_100005F2C(__p, __dst[0], __dst[1]);
    }

    else
    {
      *__p = *__dst;
      v14 = v12;
    }

    v15 = 0;
    if (ctu::cf::convert_copy())
    {
      v5 = v10;
      v10 = v15;
      v16 = v5;
      sub_100005978(&v16);
    }

    if (SHIBYTE(v14) < 0)
    {
      operator delete(__p[0]);
    }

    v6 = v10;
    v9 = v10;
    v10 = 0;
    sub_100005978(&v10);
    if (SHIBYTE(v12) < 0)
    {
      operator delete(__dst[0]);
    }

    if (SHIBYTE(v8) < 0)
    {
      operator delete(v7[0]);
    }

    [**v4 setObject:v6 forKey:{a2, v7[0]}];
    return sub_100005978(&v9);
  }

  return result;
}

void sub_100531FC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16, int a17, const void *a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
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

  _Unwind_Resume(a1);
}

id sub_100532024(uint64_t a1, int a2, uint64_t a3)
{
  v6 = objc_alloc_init(NSMutableDictionary);
  if (a2)
  {
    if (*(a3 + 23) < 0)
    {
      v7 = *(a3 + 8);
      if (!v7)
      {
        goto LABEL_43;
      }

      v21 = 0;
      sub_100005F2C(__dst, *a3, v7);
    }

    else
    {
      if (!*(a3 + 23))
      {
        goto LABEL_43;
      }

      v21 = 0;
      *__dst = *a3;
      v20 = *(a3 + 16);
    }

    if (SHIBYTE(v20) < 0)
    {
      sub_100005F2C(__p, __dst[0], __dst[1]);
    }

    else
    {
      *__p = *__dst;
      v24 = v20;
    }

    v22 = 0;
    if (SHIBYTE(v24) < 0)
    {
      sub_100005F2C(&v25, __p[0], __p[1]);
    }

    else
    {
      v25 = *__p;
      v26 = v24;
    }

    v27 = 0;
    if (ctu::cf::convert_copy())
    {
      v9 = v22;
      v22 = v27;
      v28 = v9;
      sub_100005978(&v28);
    }

    if (SHIBYTE(v26) < 0)
    {
      operator delete(v25);
    }

    v21 = v22;
    v22 = 0;
    sub_100005978(&v22);
    if (SHIBYTE(v24) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v20) < 0)
    {
      operator delete(__dst[0]);
    }

    [v6 setObject:v21 forKey:@"unique-id"];
  }

  else
  {
    if (*(a1 + 23) < 0)
    {
      v8 = *(a1 + 8);
      if (!v8)
      {
        goto LABEL_43;
      }

      v21 = 0;
      sub_100005F2C(v17, *a1, v8);
    }

    else
    {
      if (!*(a1 + 23))
      {
        goto LABEL_43;
      }

      v21 = 0;
      *v17 = *a1;
      v18 = *(a1 + 16);
    }

    if (SHIBYTE(v18) < 0)
    {
      sub_100005F2C(__p, v17[0], v17[1]);
    }

    else
    {
      *__p = *v17;
      v24 = v18;
    }

    v22 = 0;
    if (SHIBYTE(v24) < 0)
    {
      sub_100005F2C(&v25, __p[0], __p[1]);
    }

    else
    {
      v25 = *__p;
      v26 = v24;
    }

    v27 = 0;
    if (ctu::cf::convert_copy())
    {
      v10 = v22;
      v22 = v27;
      v28 = v10;
      sub_100005978(&v28);
    }

    if (SHIBYTE(v26) < 0)
    {
      operator delete(v25);
    }

    v21 = v22;
    v22 = 0;
    sub_100005978(&v22);
    if (SHIBYTE(v24) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v18) < 0)
    {
      operator delete(v17[0]);
    }

    [v6 setObject:v21 forKey:@"display-name"];
  }

  sub_100005978(&v21);
LABEL_43:
  if (*(a1 + 47) < 0)
  {
    v11 = *(a1 + 32);
    if (!v11)
    {
      return v6;
    }

    sub_100005F2C(v15, *(a1 + 24), v11);
  }

  else
  {
    if (!*(a1 + 47))
    {
      return v6;
    }

    *v15 = *(a1 + 24);
    v16 = *(a1 + 40);
  }

  if (SHIBYTE(v16) < 0)
  {
    sub_100005F2C(__p, v15[0], v15[1]);
  }

  else
  {
    *__p = *v15;
    v24 = v16;
  }

  v22 = 0;
  if (SHIBYTE(v24) < 0)
  {
    sub_100005F2C(&v25, __p[0], __p[1]);
  }

  else
  {
    v25 = *__p;
    v26 = v24;
  }

  v27 = 0;
  if (ctu::cf::convert_copy())
  {
    v12 = v22;
    v22 = v27;
    v28 = v12;
    sub_100005978(&v28);
  }

  if (SHIBYTE(v26) < 0)
  {
    operator delete(v25);
  }

  v13 = v22;
  v21 = v22;
  v22 = 0;
  sub_100005978(&v22);
  if (SHIBYTE(v24) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v16) < 0)
  {
    operator delete(v15[0]);
  }

  [v6 setObject:v13 forKey:{@"sip-username", v15[0]}];
  sub_100005978(&v21);
  return v6;
}

void sub_1005323F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, char a30, int a31, const void *a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  sub_100005978(&a32);
  if (a38 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(a1);
}

id sub_1005324F4(uint64_t *a1)
{
  v2 = +[NSMutableArray array];
  v3 = *a1;
  v4 = a1[1];
  if (*a1 != v4)
  {
    do
    {
      v5 = sub_1005328B0(*v3);
      if (v5)
      {
        v6 = v5;
        v7 = +[NSMutableDictionary dictionary];
        [v7 setObject:v6 forKey:@"notification-name"];
        if (*(v3 + 32) == 1)
        {
          v16 = 0;
          if (*(v3 + 31) < 0)
          {
            sub_100005F2C(__dst, *(v3 + 8), *(v3 + 16));
          }

          else
          {
            v8 = *(v3 + 8);
            v15 = *(v3 + 24);
            *__dst = v8;
          }

          if (SHIBYTE(v15) < 0)
          {
            sub_100005F2C(v18, __dst[0], __dst[1]);
          }

          else
          {
            *v18 = *__dst;
            v19 = v15;
          }

          v17 = 0;
          if (SHIBYTE(v19) < 0)
          {
            sub_100005F2C(__p, v18[0], v18[1]);
          }

          else
          {
            *__p = *v18;
            v21 = v19;
          }

          v22 = 0;
          if (ctu::cf::convert_copy())
          {
            v9 = v17;
            v17 = v22;
            v23[0] = v9;
            sub_100005978(v23);
          }

          if (SHIBYTE(v21) < 0)
          {
            operator delete(__p[0]);
          }

          v16 = v17;
          v17 = 0;
          sub_100005978(&v17);
          if (SHIBYTE(v19) < 0)
          {
            operator delete(v18[0]);
          }

          if (SHIBYTE(v15) < 0)
          {
            operator delete(__dst[0]);
          }

          [v7 setObject:v16 forKey:{@"old-apns-token", v12[0]}];
          sub_100005978(&v16);
        }

        if (*(v3 + 64) == 1)
        {
          v16 = 0;
          if (*(v3 + 63) < 0)
          {
            sub_100005F2C(v12, *(v3 + 40), *(v3 + 48));
          }

          else
          {
            *v12 = *(v3 + 40);
            v13 = *(v3 + 56);
          }

          if (SHIBYTE(v13) < 0)
          {
            sub_100005F2C(v18, v12[0], v12[1]);
          }

          else
          {
            *v18 = *v12;
            v19 = v13;
          }

          v17 = 0;
          if (SHIBYTE(v19) < 0)
          {
            sub_100005F2C(__p, v18[0], v18[1]);
          }

          else
          {
            *__p = *v18;
            v21 = v19;
          }

          v22 = 0;
          if (ctu::cf::convert_copy())
          {
            v10 = v17;
            v17 = v22;
            v23[0] = v10;
            sub_100005978(v23);
          }

          if (SHIBYTE(v21) < 0)
          {
            operator delete(__p[0]);
          }

          v16 = v17;
          v17 = 0;
          sub_100005978(&v17);
          if (SHIBYTE(v19) < 0)
          {
            operator delete(v18[0]);
          }

          if (SHIBYTE(v13) < 0)
          {
            operator delete(v12[0]);
          }

          [v7 setObject:v16 forKey:{@"apns-token", v12[0]}];
          sub_100005978(&v16);
        }

        [v2 addObject:v7];
      }

      v3 += 72;
    }

    while (v3 != v4);
  }

  return v2;
}

void sub_1005327FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, char a23, int a24, const void *a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  sub_100005978(&a25);
  if (a31 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(a1);
}

__CFString *sub_1005328B0(int a1)
{
  if ((a1 - 1) > 9)
  {
    return 0;
  }

  else
  {
    return off_101E58AA8[a1 - 1];
  }
}

id sub_1005328D4(uint64_t *a1)
{
  v2 = +[NSMutableArray array];
  v3 = *a1;
  v4 = a1[1];
  if (*a1 != v4)
  {
    do
    {
      v5 = sub_1005328B0(*v3);
      if (v5)
      {
        v6 = v5;
        v7 = +[NSMutableDictionary dictionary];
        [v7 setObject:v6 forKey:@"notification-name"];
        if (*(v3 + 32) == 1)
        {
          v13 = 0;
          if (*(v3 + 31) < 0)
          {
            sub_100005F2C(v11, *(v3 + 8), *(v3 + 16));
          }

          else
          {
            v8 = *(v3 + 8);
            v12 = *(v3 + 24);
            *v11 = v8;
          }

          if (SHIBYTE(v12) < 0)
          {
            sub_100005F2C(__dst, v11[0], v11[1]);
          }

          else
          {
            *__dst = *v11;
            v16 = v12;
          }

          v14 = 0;
          if (SHIBYTE(v16) < 0)
          {
            sub_100005F2C(__p, __dst[0], __dst[1]);
          }

          else
          {
            *__p = *__dst;
            v18 = v16;
          }

          v19 = 0;
          if (ctu::cf::convert_copy())
          {
            v9 = v14;
            v14 = v19;
            v20 = v9;
            sub_100005978(&v20);
          }

          if (SHIBYTE(v18) < 0)
          {
            operator delete(__p[0]);
          }

          v13 = v14;
          v14 = 0;
          sub_100005978(&v14);
          if (SHIBYTE(v16) < 0)
          {
            operator delete(__dst[0]);
          }

          if (SHIBYTE(v12) < 0)
          {
            operator delete(v11[0]);
          }

          [v7 setObject:v13 forKey:{@"apns-token", v11[0]}];
          sub_100005978(&v13);
        }

        [v2 addObject:v7];
      }

      v3 += 40;
    }

    while (v3 != v4);
  }

  return v2;
}

void sub_100532AB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16, int a17, const void *a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
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

  _Unwind_Resume(a1);
}

id sub_100532B1C(uint64_t **a1)
{
  v2 = objc_alloc_init(NSMutableDictionary);
  if (*(a1 + 23) < 0)
  {
    if (!a1[1])
    {
      goto LABEL_7;
    }

    v3 = *a1;
    goto LABEL_6;
  }

  v3 = a1;
  if (*(a1 + 23))
  {
LABEL_6:
    [v2 setObject:+[NSString stringWithCString:encoding:](NSString forKey:{"stringWithCString:encoding:", v3, 1), @"client-nonce"}];
  }

LABEL_7:
  if (*(a1 + 24) - 3 <= 1)
  {
    [v2 setObject:+[NSNumber numberWithUnsignedInt:](NSNumber forKey:{"numberWithUnsignedInt:"), @"signing-version"}];
  }

  return v2;
}

id sub_100532BC8(uint64_t *a1)
{
  v2 = objc_alloc_init(NSMutableDictionary);
  if ((*(a1 + 23) & 0x80000000) == 0)
  {
    if (!*(a1 + 23))
    {
      return v2;
    }

    goto LABEL_6;
  }

  if (a1[1])
  {
    a1 = *a1;
LABEL_6:
    [v2 setObject:+[NSString stringWithCString:encoding:](NSString forKey:{"stringWithCString:encoding:", a1, 4), @"apns-token"}];
  }

  return v2;
}

id sub_100532C44(uint64_t a1)
{
  v2 = objc_alloc_init(NSMutableDictionary);
  if (*(a1 + 23) < 0)
  {
    v3 = *(a1 + 8);
    if (!v3)
    {
      goto LABEL_21;
    }

    v23 = 0;
    sub_100005F2C(__dst, *a1, v3);
  }

  else
  {
    if (!*(a1 + 23))
    {
      goto LABEL_21;
    }

    v23 = 0;
    *__dst = *a1;
    v22 = *(a1 + 16);
  }

  if (SHIBYTE(v22) < 0)
  {
    sub_100005F2C(__p, __dst[0], __dst[1]);
  }

  else
  {
    *__p = *__dst;
    v26 = v22;
  }

  v24 = 0;
  if (SHIBYTE(v26) < 0)
  {
    sub_100005F2C(&v27, __p[0], __p[1]);
  }

  else
  {
    v27 = *__p;
    v28 = v26;
  }

  v29 = 0;
  if (ctu::cf::convert_copy())
  {
    v4 = v24;
    v24 = v29;
    v30 = v4;
    sub_100005978(&v30);
  }

  if (SHIBYTE(v28) < 0)
  {
    operator delete(v27);
  }

  v23 = v24;
  v24 = 0;
  sub_100005978(&v24);
  if (SHIBYTE(v26) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v22) < 0)
  {
    operator delete(__dst[0]);
  }

  [v2 setObject:v23 forKey:@"primary-iccid"];
  sub_100005978(&v23);
LABEL_21:
  if (*(a1 + 48) == 1)
  {
    v23 = 0;
    if (*(a1 + 47) < 0)
    {
      sub_100005F2C(v19, *(a1 + 24), *(a1 + 32));
    }

    else
    {
      *v19 = *(a1 + 24);
      v20 = *(a1 + 40);
    }

    if (SHIBYTE(v20) < 0)
    {
      sub_100005F2C(__p, v19[0], v19[1]);
    }

    else
    {
      *__p = *v19;
      v26 = v20;
    }

    v24 = 0;
    if (SHIBYTE(v26) < 0)
    {
      sub_100005F2C(&v27, __p[0], __p[1]);
    }

    else
    {
      v27 = *__p;
      v28 = v26;
    }

    v29 = 0;
    if (ctu::cf::convert_copy())
    {
      v5 = v24;
      v24 = v29;
      v30 = v5;
      sub_100005978(&v30);
    }

    if (SHIBYTE(v28) < 0)
    {
      operator delete(v27);
    }

    v23 = v24;
    v24 = 0;
    sub_100005978(&v24);
    if (SHIBYTE(v26) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v20) < 0)
    {
      operator delete(v19[0]);
    }

    [v2 setObject:v23 forKey:@"eid"];
    sub_100005978(&v23);
  }

  if (*(a1 + 79) < 0)
  {
    v6 = *(a1 + 64);
    if (!v6)
    {
      goto LABEL_60;
    }

    sub_100005F2C(v17, *(a1 + 56), v6);
  }

  else
  {
    if (!*(a1 + 79))
    {
      goto LABEL_60;
    }

    *v17 = *(a1 + 56);
    v18 = *(a1 + 72);
  }

  if (SHIBYTE(v18) < 0)
  {
    sub_100005F2C(__p, v17[0], v17[1]);
  }

  else
  {
    *__p = *v17;
    v26 = v18;
  }

  v24 = 0;
  if (SHIBYTE(v26) < 0)
  {
    sub_100005F2C(&v27, __p[0], __p[1]);
  }

  else
  {
    v27 = *__p;
    v28 = v26;
  }

  v29 = 0;
  if (ctu::cf::convert_copy())
  {
    v7 = v24;
    v24 = v29;
    v30 = v7;
    sub_100005978(&v30);
  }

  if (SHIBYTE(v28) < 0)
  {
    operator delete(v27);
  }

  v8 = v24;
  v23 = v24;
  v24 = 0;
  sub_100005978(&v24);
  if (SHIBYTE(v26) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v18) < 0)
  {
    operator delete(v17[0]);
  }

  [v2 setObject:v8 forKey:{@"imei", v17[0]}];
  sub_100005978(&v23);
LABEL_60:
  if (*(a1 + 80) != *(a1 + 88))
  {
    v9 = objc_opt_new();
    v10 = *(a1 + 80);
    for (i = *(a1 + 88); v10 != i; v10 += 3)
    {
      v12 = v10;
      if (*(v10 + 23) < 0)
      {
        v12 = *v10;
      }

      [v9 addObject:{+[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", v12)}];
    }

    [v2 setValue:v9 forKey:@"secondary-device-iccids"];
  }

  if (*(a1 + 168) == 1)
  {
    v13 = +[NSMutableDictionary dictionary];
    if (*(a1 + 140) == 1)
    {
      [v13 setObject:+[NSNumber numberWithUnsignedInt:](NSNumber forKey:{"numberWithUnsignedInt:", *(a1 + 136)), @"associated-subscription"}];
    }

    if (*(a1 + 132) == 1)
    {
      [v13 setObject:+[NSNumber numberWithUnsignedInt:](NSNumber forKey:{"numberWithUnsignedInt:", *(a1 + 128)), @"associated-plans"}];
    }

    v14 = (a1 + 104);
    if (*(a1 + 127) < 0)
    {
      if (!*(a1 + 112))
      {
        goto LABEL_77;
      }

      v14 = *v14;
    }

    else if (!*(a1 + 127))
    {
LABEL_77:
      v15 = (a1 + 144);
      if (*(a1 + 167) < 0)
      {
        if (!*(a1 + 152))
        {
          goto LABEL_83;
        }

        v15 = *v15;
      }

      else if (!*(a1 + 167))
      {
LABEL_83:
        if ([v13 count])
        {
          [v2 setObject:v13 forKey:@"subscription-query"];
        }

        return v2;
      }

      [v13 setObject:+[NSString stringWithUTF8String:](NSString forKey:{"stringWithUTF8String:", v15), @"device-type"}];
      goto LABEL_83;
    }

    [v13 setObject:+[NSString stringWithUTF8String:](NSString forKey:{"stringWithUTF8String:", v14), @"iccid"}];
    goto LABEL_77;
  }

  return v2;
}

void sub_100533190(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, char a30, int a31, const void *a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  sub_100005978(&a32);
  if (a38 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(a1);
}

id sub_100533294(uint64_t a1)
{
  v18 = &v19;
  v19 = objc_alloc_init(NSMutableDictionary);
  v17 = 0;
  if (*(a1 + 23) < 0)
  {
    sub_100005F2C(__dst, *a1, *(a1 + 8));
  }

  else
  {
    *__dst = *a1;
    v16 = *(a1 + 16);
  }

  if (SHIBYTE(v16) < 0)
  {
    sub_100005F2C(&v21, __dst[0], __dst[1]);
  }

  else
  {
    v21 = *__dst;
    v22 = v16;
  }

  v20 = 0;
  if (SHIBYTE(v22) < 0)
  {
    sub_100005F2C(__p, v21, *(&v21 + 1));
  }

  else
  {
    *__p = v21;
    v13 = v22;
  }

  v23 = 0;
  if (ctu::cf::convert_copy())
  {
    v2 = v20;
    v20 = v23;
    *__str = v2;
    sub_100005978(__str);
  }

  if (SHIBYTE(v13) < 0)
  {
    operator delete(__p[0]);
  }

  v17 = v20;
  v20 = 0;
  sub_100005978(&v20);
  if (SHIBYTE(v22) < 0)
  {
    operator delete(v21);
  }

  if (SHIBYTE(v16) < 0)
  {
    operator delete(__dst[0]);
  }

  [v19 setObject:v17 forKey:@"primary-iccid"];
  sub_100533788(&v18, @"eid", a1 + 24);
  sub_100533788(&v18, @"secondary-device-imei", a1 + 88);
  if (*(a1 + 241) == 1)
  {
    if (*(a1 + 240))
    {
      v3 = &__kCFBooleanTrue;
    }

    else
    {
      v3 = &__kCFBooleanFalse;
    }

    [v19 setValue:v3 forKey:@"euicc-pairing"];
  }

  if (*(a1 + 243) == 1)
  {
    if (*(a1 + 242))
    {
      v4 = &__kCFBooleanTrue;
    }

    else
    {
      v4 = &__kCFBooleanFalse;
    }

    [v19 setValue:v4 forKey:@"live-id-supported"];
  }

  sub_100533788(&v18, @"secondary-device-meid", a1 + 120);
  sub_100533788(&v18, @"secondary-device-type", a1 + 152);
  sub_100533788(&v18, @"service", a1 + 192);
  if (*(a1 + 188) == 1)
  {
    v5 = [NSNumber numberWithUnsignedInt:*(a1 + 184)];
    [v19 setObject:v5 forKeyedSubscript:@"associated-subscription"];
  }

  v25 = 0;
  *__str = 0;
  if (*(a1 + 228) == 1)
  {
    snprintf(__str, 0xAuLL, "%d.%d.%d", BYTE2(*(a1 + 224)), BYTE1(*(a1 + 224)), *(a1 + 224));
    sub_10000501C(&v21, __str);
    *__p = v21;
    v13 = v22;
    v22 = 0;
    v21 = 0uLL;
    v14 = 1;
    sub_100533788(&v18, @"sim-alliance-profile-version", __p);
    if (SHIBYTE(v13) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v22) < 0)
    {
      operator delete(v21);
    }
  }

  if (*(a1 + 236) == 1)
  {
    snprintf(__str, 0xAuLL, "%d.%d.%d", BYTE2(*(a1 + 232)), BYTE1(*(a1 + 232)), *(a1 + 232));
    sub_10000501C(&v21, __str);
    *__p = v21;
    v13 = v22;
    v22 = 0;
    v21 = 0uLL;
    v14 = 1;
    sub_100533788(&v18, @"gsma-sgp22-version", __p);
    if (SHIBYTE(v13) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v22) < 0)
    {
      operator delete(v21);
    }
  }

  if (*(a1 + 80) == 1)
  {
    v6 = objc_opt_new();
    v8 = *(a1 + 56);
    for (i = *(a1 + 64); v8 != i; v8 += 3)
    {
      v9 = v8;
      if (*(v8 + 23) < 0)
      {
        v9 = *v8;
      }

      [v6 addObject:{+[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", v9)}];
    }

    [v19 setValue:v6 forKey:@"secondary-device-iccids"];
  }

  v10 = v19;
  sub_100005978(&v17);
  return v10;
}

void sub_1005336E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, char a27)
{
  sub_100005978((v27 - 104));
  if (*(v27 - 73) < 0)
  {
    operator delete(*(v27 - 96));
  }

  if (a25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

const void **sub_100533788(const void **result, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 24) == 1)
  {
    v4 = result;
    if (*(a3 + 23) < 0)
    {
      sub_100005F2C(v7, *a3, *(a3 + 8));
    }

    else
    {
      *v7 = *a3;
      v8 = *(a3 + 16);
    }

    if (SHIBYTE(v8) < 0)
    {
      sub_100005F2C(__dst, v7[0], v7[1]);
    }

    else
    {
      *__dst = *v7;
      v12 = v8;
    }

    v10 = 0;
    if (SHIBYTE(v12) < 0)
    {
      sub_100005F2C(__p, __dst[0], __dst[1]);
    }

    else
    {
      *__p = *__dst;
      v14 = v12;
    }

    v15 = 0;
    if (ctu::cf::convert_copy())
    {
      v5 = v10;
      v10 = v15;
      v16 = v5;
      sub_100005978(&v16);
    }

    if (SHIBYTE(v14) < 0)
    {
      operator delete(__p[0]);
    }

    v6 = v10;
    v9 = v10;
    v10 = 0;
    sub_100005978(&v10);
    if (SHIBYTE(v12) < 0)
    {
      operator delete(__dst[0]);
    }

    if (SHIBYTE(v8) < 0)
    {
      operator delete(v7[0]);
    }

    [**v4 setObject:v6 forKey:{a2, v7[0]}];
    return sub_100005978(&v9);
  }

  return result;
}

void sub_1005338E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16, int a17, const void *a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
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

  _Unwind_Resume(a1);
}

id sub_100533944(uint64_t **a1)
{
  v2 = objc_alloc_init(NSMutableDictionary);
  v3 = objc_opt_new();
  if (*(a1 + 24) == 1)
  {
    v4 = *a1;
    v5 = a1[1];
    if (*a1 != v5)
    {
      do
      {
        v6 = objc_alloc_init(NSMutableDictionary);
        v7 = v4;
        if (*(v4 + 23) < 0)
        {
          v7 = *v4;
        }

        [v6 setObject:+[NSString stringWithCString:](NSString forKey:{"stringWithCString:", v7), @"profile-name"}];
        v8 = v4 + 3;
        if (*(v4 + 47) < 0)
        {
          v8 = *v8;
        }

        [v6 setObject:+[NSString stringWithCString:](NSString forKey:{"stringWithCString:", v8), @"version"}];
        [v3 addObject:v6];
        v4 += 9;
      }

      while (v4 != v5);
    }
  }

  [v2 setObject:v3 forKey:@"configuration-profiles"];
  return v2;
}

id sub_100533A68(uint64_t **a1)
{
  v2 = objc_alloc_init(NSMutableDictionary);
  v3 = objc_opt_new();
  v5 = *a1;
  for (i = a1[1]; v5 != i; v5 += 3)
  {
    v6 = v5;
    if (*(v5 + 23) < 0)
    {
      v6 = *v5;
    }

    [v3 addObject:{+[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", v6)}];
  }

  [v2 setObject:v3 forKey:@"service-names"];
  return v2;
}

id sub_100533B18(uint64_t ***a1)
{
  v16 = objc_alloc_init(NSMutableDictionary);
  v2 = objc_opt_new();
  v4 = *a1;
  v3 = a1[1];
  if (*a1 != v3)
  {
    do
    {
      v5 = objc_alloc_init(NSMutableDictionary);
      v6 = objc_opt_new();
      v7 = *v4;
      v8 = v4[1];
      while (v7 != v8)
      {
        v9 = v7;
        if (*(v7 + 23) < 0)
        {
          v9 = *v7;
        }

        [v6 addObject:{+[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", v9)}];
        v7 += 3;
      }

      [v5 setObject:v6 forKey:@"blind-token"];
      v10 = objc_opt_new();
      v11 = v4[3];
      v12 = v4[4];
      while (v11 != v12)
      {
        v13 = v11;
        if (*(v11 + 23) < 0)
        {
          v13 = *v11;
        }

        [v10 addObject:{+[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", v13)}];
        v11 += 3;
      }

      [v5 setObject:v10 forKey:@"scopes"];
      v14 = v4 + 6;
      if (*(v4 + 71) < 0)
      {
        v14 = *v14;
      }

      [v5 setObject:+[NSString stringWithUTF8String:](NSString forKey:{"stringWithUTF8String:", v14), @"device-type"}];
      [v2 addObject:v5];
      v4 += 9;
    }

    while (v4 != v3);
  }

  [v16 setObject:v2 forKey:@"blinded-messages"];
  return v16;
}

id sub_100533CC8(uint64_t *a1)
{
  v2 = objc_alloc_init(NSMutableDictionary);
  v3 = objc_opt_new();
  if (*(a1 + 47) >= 0)
  {
    v4 = (a1 + 3);
  }

  else
  {
    v4 = a1[3];
  }

  [v2 setObject:+[NSString stringWithUTF8String:](NSString forKey:{"stringWithUTF8String:", v4), @"device-type"}];
  if (*(a1 + 23) >= 0)
  {
    v5 = a1;
  }

  else
  {
    v5 = *a1;
  }

  [v2 setObject:+[NSString stringWithUTF8String:](NSString forKey:{"stringWithUTF8String:", v5), @"service-name"}];
  v6 = a1[6];
  for (i = a1[7]; v6 != i; v6 += 6)
  {
    v8 = objc_alloc_init(NSMutableDictionary);
    v9 = v6;
    if (*(v6 + 23) < 0)
    {
      v9 = *v6;
    }

    [v8 setObject:+[NSString stringWithUTF8String:](NSString forKey:{"stringWithUTF8String:", v9), @"name"}];
    v10 = v6 + 3;
    if (*(v6 + 47) < 0)
    {
      v10 = *v10;
    }

    [v8 setObject:+[NSString stringWithUTF8String:](NSString forKey:{"stringWithUTF8String:", v10), @"metadata-value"}];
    [v3 addObject:v8];
  }

  [v2 setObject:v3 forKey:@"service-metadata"];
  return v2;
}

id sub_100533E3C(uint64_t a1)
{
  v2 = objc_alloc_init(NSMutableDictionary);
  if (*(a1 + 23) < 0)
  {
    sub_100005F2C(v6, *a1, *(a1 + 8));
  }

  else
  {
    *v6 = *a1;
    v7 = *(a1 + 16);
  }

  if (SHIBYTE(v7) < 0)
  {
    sub_100005F2C(__p, v6[0], v6[1]);
  }

  else
  {
    *__p = *v6;
    v11 = v7;
  }

  v9 = 0;
  if (SHIBYTE(v11) < 0)
  {
    sub_100005F2C(&__dst, __p[0], __p[1]);
  }

  else
  {
    __dst = *__p;
    v13 = v11;
  }

  v14 = 0;
  if (ctu::cf::convert_copy())
  {
    v3 = v9;
    v9 = v14;
    v15 = v3;
    sub_100005978(&v15);
  }

  if (SHIBYTE(v13) < 0)
  {
    operator delete(__dst);
  }

  v4 = v9;
  v8 = v9;
  v9 = 0;
  sub_100005978(&v9);
  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v7) < 0)
  {
    operator delete(v6[0]);
  }

  [v2 setObject:v4 forKey:{@"signature", v6[0]}];
  sub_100005978(&v8);
  return v2;
}

void sub_100533F94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16, int a17, const void *a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
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

  _Unwind_Resume(a1);
}

id sub_100534000(id *a1)
{
  v1 = *a1;

  return v1;
}

id sub_10053402C(int **a1)
{
  v2 = objc_opt_new();
  if (*a1 != a1[1])
  {
    v3 = +[NSMutableArray array];
    v4 = *a1;
    v5 = a1[1];
    if (*a1 != v5)
    {
      do
      {
        v7 = *v4++;
        v6 = v7;
        if (v7 == 1)
        {
          v8 = @"rcs-config";
        }

        else
        {
          v8 = 0;
        }

        if (v6)
        {
          v9 = v8;
        }

        else
        {
          v9 = @"wifi-pseudonym";
        }

        [v3 addObject:v9];
      }

      while (v4 != v5);
    }

    [v2 setValue:v3 forKey:@"token-scopes"];
  }

  if (a1[3] != a1[4])
  {
    v24 = v2;
    v10 = +[NSMutableArray array];
    v11 = a1[3];
    for (i = a1[4]; v11 != i; v11 += 10)
    {
      v13 = objc_opt_new();
      v14 = v13;
      v15 = @"rcs-config";
      if (*v11 != 1)
      {
        v15 = 0;
      }

      if (*v11)
      {
        v16 = v15;
      }

      else
      {
        v16 = @"wifi-pseudonym";
      }

      [v13 setValue:v16 forKey:@"scope"];
      if (*(v11 + 1) != *(v11 + 2))
      {
        v17 = +[NSMutableArray array];
        v18 = *(v11 + 1);
        v19 = *(v11 + 2);
        while (v18 != v19)
        {
          if (*(v18 + 23) < 0)
          {
            sub_100005F2C(__dst, *v18, *(v18 + 1));
          }

          else
          {
            v20 = *v18;
            v26 = *(v18 + 2);
            *__dst = v20;
          }

          if (SHIBYTE(v26) < 0)
          {
            sub_100005F2C(v29, __dst[0], __dst[1]);
          }

          else
          {
            *v29 = *__dst;
            v30 = v26;
          }

          v28 = 0;
          if (SHIBYTE(v30) < 0)
          {
            sub_100005F2C(__p, v29[0], v29[1]);
          }

          else
          {
            *__p = *v29;
            v32 = v30;
          }

          v33 = 0;
          if (ctu::cf::convert_copy())
          {
            v21 = v28;
            v28 = v33;
            v34 = v21;
            sub_100005978(&v34);
          }

          if (SHIBYTE(v32) < 0)
          {
            operator delete(__p[0]);
          }

          v27 = v28;
          v28 = 0;
          sub_100005978(&v28);
          if (SHIBYTE(v30) < 0)
          {
            operator delete(v29[0]);
          }

          [v17 addObject:v27];
          sub_100005978(&v27);
          if (SHIBYTE(v26) < 0)
          {
            operator delete(__dst[0]);
          }

          v18 = (v18 + 24);
        }

        if ([v17 count])
        {
          [v14 setValue:v17 forKey:@"devices"];
        }
      }

      v22 = *(v11 + 4);
      if (v22)
      {
        [v14 setValue:v22 forKey:@"embedded"];
      }

      [v10 addObject:v14];
    }

    v2 = v24;
    [v24 setValue:v10 forKey:@"mp-tokens-scopes"];
  }

  return v2;
}

void sub_10053431C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, int a19, const void *a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  sub_100005978(&a20);
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a16 < 0)
  {
    operator delete(a11);
  }

  _Unwind_Resume(a1);
}

const __CFDictionary *sub_100534380@<X0>(const __CFDictionary *result@<X0>, void *a2@<X8>)
{
  if (result && (result = CFDictionaryGetValue(result, @"mp-tokens-scopes")) != 0 && (v3 = result, v4 = CFGetTypeID(result), result = CFArrayGetTypeID(), v4 == result) && (result = CFArrayGetCount(v3)) != 0)
  {
    v5 = result;
    v6 = 0;
    while (1)
    {
      result = CFArrayGetValueAtIndex(v3, v6);
      if (result)
      {
        v7 = result;
        v8 = CFGetTypeID(result);
        result = CFDictionaryGetTypeID();
        if (v8 == result)
        {
          result = CFDictionaryGetValue(v7, @"scope");
          if (result)
          {
            v9 = result;
            v10 = CFGetTypeID(result);
            result = CFStringGetTypeID();
            if (v10 == result)
            {
              result = CFStringCompare(v9, @"rcs-config", 0);
              if (!result)
              {
                break;
              }
            }
          }
        }
      }

      if (v5 == ++v6)
      {
        goto LABEL_12;
      }
    }

    return sub_1000101E4(a2, v7);
  }

  else
  {
LABEL_12:
    *a2 = 0;
  }

  return result;
}

NSArray *sub_1005344B8(capabilities::ct *a1)
{
  if (capabilities::ct::supportsVoiceCall(a1))
  {
    return [NSArray arrayWithObjects:@"voice", @"data", @"message", @"account-info", 0];
  }

  else
  {
    return [NSArray arrayWithObjects:@"data", @"account-info", 0, v2, v3];
  }
}

NSArray *sub_10053452C(capabilities::ct *a1)
{
  if (capabilities::ct::supportsVoiceCall(a1))
  {
    return [NSArray arrayWithObjects:@"voice", @"data", @"message", 0];
  }

  else
  {
    return [NSArray arrayWithObjects:@"data", 0, v2, v3];
  }
}

void sub_100534590(uint64_t a1, void *a2, const char *a3, uint64_t a4, uint64_t a5, void *a6)
{
  *a1 = *a2;
  v6 = a2[1];
  *(a1 + 8) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 16) = *a6;
  v7 = a6[1];
  *(a1 + 24) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = ++dword_101FBA7F0;
  ctu::OsLogContext::OsLogContext(&v8, kCtLoggingSystemName, a3);
  operator new();
}

ctu::OsLogLogger **sub_100534838(ctu::OsLogLogger **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    ctu::OsLogLogger::~OsLogLogger(v2);
    operator delete();
  }

  return a1;
}

uint64_t sub_100534884(uint64_t a1)
{
  v5 = (a1 + 96);
  sub_1000212F4(&v5);
  sub_100534838((a1 + 56));
  v2 = *(a1 + 24);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    sub_100004A34(v3);
  }

  return a1;
}

id sub_1005348F0(uint64_t a1)
{
  *(a1 + 32) = 0;
  result = [*(a1 + 40) removeAllObjects];
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  return result;
}

void sub_100534920(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = objc_autoreleasePoolPush();
  if (a3 && a2 && *(a1 + 40))
  {
    v7 = a3;
    v8 = **(a1 + 56);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = PersonalityInfo::logPrefix(**(a1 + 16));
      v10 = *(a1 + 64);
      v11 = *(a1 + 72);
      v12 = [objc_msgSend(*(a1 + 40) "description")];
      *buf = 136316162;
      v42 = v9;
      v43 = 2080;
      v44 = " ";
      v45 = 2080;
      v46 = v10;
      v47 = 2080;
      v48 = v11;
      v49 = 2080;
      v50 = v12;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sExisting Requests: %s", buf, 0x34u);
    }

    v13 = sub_100534DF0(a1, a2);
    if (v13)
    {
      v14 = v13;
      v15 = **(a1 + 56);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = PersonalityInfo::logPrefix(**(a1 + 16));
        v17 = *(a1 + 64);
        v18 = *(a1 + 72);
        v19 = [objc_msgSend(v14 "description")];
        *buf = 136316162;
        v42 = v16;
        v43 = 2080;
        v44 = " ";
        v45 = 2080;
        v46 = v17;
        v47 = 2080;
        v48 = v18;
        v49 = 2080;
        v50 = v19;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sRemoving: %s", buf, 0x34u);
      }

      [*(a1 + 40) removeObjectForKey:{objc_msgSend(v14, "identifier")}];
    }

    ++*(a1 + 32);
    [a3 setIdentifier:?];
    *(a1 + 48) = ++dword_101FBA7F0;
    v20 = **(a1 + 56);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = PersonalityInfo::logPrefix(**(a1 + 16));
      v22 = *(a1 + 64);
      v23 = *(a1 + 72);
      v24 = [objc_msgSend(a3 "description")];
      *buf = 136316162;
      v42 = v21;
      v43 = 2080;
      v44 = " ";
      v45 = 2080;
      v46 = v22;
      v47 = 2080;
      v48 = v23;
      v49 = 2080;
      v50 = v24;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sAdding: %s", buf, 0x34u);
    }

    [*(a1 + 40) setObject:a3 forKey:{objc_msgSend(a3, "identifier")}];
    v25 = **(a1 + 56);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = PersonalityInfo::logPrefix(**(a1 + 16));
      v27 = *(a1 + 64);
      v28 = *(a1 + 72);
      v29 = [objc_msgSend(*(a1 + 40) "description")];
      *buf = 136316162;
      v42 = v26;
      v43 = 2080;
      v44 = " ";
      v45 = 2080;
      v46 = v27;
      v47 = 2080;
      v48 = v28;
      v49 = 2080;
      v50 = v29;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sResulting Requests: %s", buf, 0x34u);
      v25 = **(a1 + 56);
    }

    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v30 = PersonalityInfo::logPrefix(**(a1 + 16));
      v31 = *(a1 + 64);
      v32 = *(a1 + 72);
      v33 = [objc_msgSend(a3 "action")];
      sub_100535024(a1, __p);
      if (v40 >= 0)
      {
        v34 = __p;
      }

      else
      {
        v34 = __p[0];
      }

      *buf = 136316418;
      v42 = v30;
      v43 = 2080;
      v44 = " ";
      v45 = 2080;
      v46 = v31;
      v47 = 2080;
      v48 = v32;
      v49 = 2080;
      v50 = v33;
      v51 = 2082;
      v52 = v34;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sAdded %s, query become %{public}s", buf, 0x3Eu);
      if (v40 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  else
  {
    v35 = **(a1 + 56);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      v36 = PersonalityInfo::logPrefix(**(a1 + 16));
      v37 = *(a1 + 64);
      v38 = *(a1 + 72);
      *buf = 136315906;
      v42 = v36;
      v43 = 2080;
      v44 = " ";
      v45 = 2080;
      v46 = v37;
      v47 = 2080;
      v48 = v38;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "#W %s%s%s%sInvalid Add Request", buf, 0x2Au);
    }
  }

  objc_autoreleasePoolPop(v6);
}

id sub_100534DF0(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    v12 = **(a1 + 56);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = PersonalityInfo::logPrefix(**(a1 + 16));
      v14 = *(a1 + 64);
      v15 = *(a1 + 72);
      *buf = 136315906;
      v27 = v13;
      v28 = 2080;
      v29 = " ";
      v30 = 2080;
      v31 = v14;
      v32 = 2080;
      v33 = v15;
      v16 = "#W %s%s%s%sNo type to get";
LABEL_18:
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, v16, buf, 0x2Au);
    }

    return 0;
  }

  if (!*(a1 + 40))
  {
    v12 = **(a1 + 56);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v17 = PersonalityInfo::logPrefix(**(a1 + 16));
      v18 = *(a1 + 64);
      v19 = *(a1 + 72);
      *buf = 136315906;
      v27 = v17;
      v28 = 2080;
      v29 = " ";
      v30 = 2080;
      v31 = v18;
      v32 = 2080;
      v33 = v19;
      v16 = "#W %s%s%s%sgetRequest, fRequests is empty";
      goto LABEL_18;
    }

    return 0;
  }

  v4 = objc_autoreleasePoolPush();
  v5 = [*(a1 + 40) objectEnumerator];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v22;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v21 + 1) + 8 * i);
        if ([objc_msgSend(v10 "action")])
        {
          v11 = v10;
          goto LABEL_15;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_15:
  objc_autoreleasePoolPop(v4);
  return v11;
}

uint64_t sub_100535024@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v31 = 0;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  *__p = 0u;
  v20 = 0u;
  v17 = 0u;
  *__src = 0u;
  v15 = 0u;
  v16 = 0u;
  v14 = 0u;
  sub_10000C320(&v14);
  v4 = objc_autoreleasePoolPush();
  [*(a1 + 40) count];
  v5 = std::ostream::operator<<();
  sub_10000C030(v5);
  v6 = [*(a1 + 40) objectEnumerator];
  for (i = 0; ; --i)
  {
    v8 = [v6 nextObject];
    if (!v8)
    {
      break;
    }

    if (i)
    {
      sub_10000C030(&v15);
    }

    strlen([objc_msgSend(v8 "action")]);
    sub_10000C030(&v15);
  }

  objc_autoreleasePoolPop(v4);
  if ((BYTE8(v21) & 0x10) != 0)
  {
    v10 = v21;
    if (v21 < __src[1])
    {
      *&v21 = __src[1];
      v10 = __src[1];
    }

    v11 = __src[0];
  }

  else
  {
    if ((BYTE8(v21) & 8) == 0)
    {
      v9 = 0;
      a2[23] = 0;
      goto LABEL_19;
    }

    v11 = *(&v16 + 1);
    v10 = *(&v17 + 1);
  }

  v9 = v10 - v11;
  if ((v10 - v11) >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1000A2378();
  }

  if (v9 >= 0x17)
  {
    operator new();
  }

  a2[23] = v9;
  if (v9)
  {
    memmove(a2, v11, v9);
  }

LABEL_19:
  a2[v9] = 0;
  *&v15 = v12;
  if (SHIBYTE(v20) < 0)
  {
    operator delete(__p[1]);
  }

  std::locale::~locale(&v16);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_100535324(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::ios::~ios();
  _Unwind_Resume(a1);
}

void sub_100535354(uint64_t a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = sub_100534DF0(a1, a2);
  if (v5)
  {
    sub_1005353B8(a1, v5);
  }

  objc_autoreleasePoolPop(v4);
}

void sub_1005353B8(uint64_t a1, void *a2)
{
  v4 = objc_autoreleasePoolPush();
  if (a2)
  {
    v5 = **(a1 + 56);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = PersonalityInfo::logPrefix(**(a1 + 16));
      v7 = *(a1 + 64);
      v8 = *(a1 + 72);
      v9 = 136316162;
      v10 = v6;
      v11 = 2080;
      v12 = " ";
      v13 = 2080;
      v14 = v7;
      v15 = 2080;
      v16 = v8;
      v17 = 2080;
      v18 = [objc_msgSend(a2 "description")];
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sRemoving %s", &v9, 0x34u);
    }

    [*(a1 + 40) removeObjectForKey:{objc_msgSend(a2, "identifier")}];
  }

  objc_autoreleasePoolPop(v4);
}

const void **sub_1005354F0@<X0>(uint64_t a1@<X0>, int a2@<W1>, const void **a3@<X8>)
{
  v13 = 0;
  v14 = 0;
  v12 = 0;
  sub_10053562C(a1, a2, &v15);
  v5 = sub_100534DF0(a1, v15);
  sub_100005978(&v15);
  if (v5)
  {
    v6 = [v5 info];
    if (v6)
    {
      v11 = v6;
      v15 = 0;
      v7 = sub_100010180(&v15, &v11);
      v8 = v14;
      v14 = v15;
      v15 = v8;
      sub_10001021C(v7);
    }

    v15 = v5;
    sub_1000673E0(&v13, &v15);
    v9 = [v5 annotation];
    if (v9)
    {
      v15 = v9;
      sub_1000673E0(&v12, &v15);
    }
  }

  sub_100010024(a3, &v14);
  sub_100060E84(a3 + 1, &v13);
  sub_100060E84(a3 + 2, &v12);
  sub_10000A1EC(&v12);
  sub_10000A1EC(&v13);
  return sub_10001021C(&v14);
}

void sub_1005355E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v6 = va_arg(va2, const void *);
  sub_10000A1EC(va);
  sub_10000A1EC(va1);
  sub_10001021C(va2);
  _Unwind_Resume(a1);
}

const void **sub_10053562C@<X0>(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  v4 = (*(a1 + 96) + 16 * a2);
  v5 = *v4;
  v6 = v4[1];
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = (*(*v5 + 40))(v5);
  if (v6)
  {
    sub_100004A34(v6);
  }

  v11 = 0;
  v12 = 0;
  if (ctu::cf::convert_copy(&v12, v8, 0x8000100, kCFAllocatorDefault, v7))
  {
    v11 = v12;
    v13 = 0;
    sub_100005978(&v13);
    v9 = v11;
  }

  else
  {
    v9 = 0;
  }

  *a3 = v9;
  v11 = 0;
  return sub_100005978(&v11);
}

void sub_100535704(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100005978(va);
  _Unwind_Resume(a1);
}

id sub_10053572C(uint64_t a1, int a2)
{
  sub_10053562C(a1, a2, &v5);
  v3 = sub_100534DF0(a1, v5);
  sub_100005978(&v5);
  return v3;
}

void sub_100535778(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100005978(va);
  _Unwind_Resume(a1);
}

void sub_10053578C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = [v3 objectEnumerator];
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v10;
      do
      {
        v8 = 0;
        do
        {
          if (*v10 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [*(*(&v9 + 1) + 8 * v8) decreaseAttempts];
          v8 = v8 + 1;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v6);
    }
  }

  objc_autoreleasePoolPop(v2);
}

void *sub_1005358AC(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return ([result count] != 0);
  }

  return result;
}

id sub_1005358D8(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return [result count];
  }

  return result;
}

void sub_1005358F0(uint64_t a1, uint64_t a2)
{
  v71 = 0;
  ctu::ns::AutoPool::AutoPool(&v71);
  v4 = 0;
  v5 = 0;
  *&v6 = 136315138;
  v69 = v6;
  v70 = a2;
  do
  {
    if (v5 <= 4)
    {
      if (v5 <= 1)
      {
        if (v5)
        {
          if (v5 == 1)
          {
            v17 = sub_10053572C(a2, 1);
            v18 = v17;
            if (v17)
            {
              if ([v17 info])
              {
                [v18 info];
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v19 = **(a1 + 56);
                  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
                  {
                    v20 = PersonalityInfo::logPrefix(**(a1 + 16));
                    v21 = *(a1 + 64);
                    v22 = *(a1 + 72);
                    *buf = 136315906;
                    v73 = v20;
                    v74 = 2080;
                    v75 = " ";
                    v76 = 2080;
                    v77 = v21;
                    v78 = 2080;
                    v79 = v22;
                    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%smerging setEntitlements", buf, 0x2Au);
                  }

                  sub_1005363F8(a1, [objc_msgSend(v18 info]);
                }
              }
            }
          }
        }

        else
        {
          v35 = sub_10053572C(a2, 0);
          v36 = v35;
          if (v35)
          {
            if ([v35 info])
            {
              [v36 info];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v37 = **(a1 + 56);
                if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
                {
                  v38 = PersonalityInfo::logPrefix(**(a1 + 16));
                  v39 = *(a1 + 64);
                  v40 = *(a1 + 72);
                  *buf = 136315906;
                  v73 = v38;
                  v74 = 2080;
                  v75 = " ";
                  v76 = 2080;
                  v77 = v39;
                  v78 = 2080;
                  v79 = v40;
                  _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%smerging getEntitlements", buf, 0x2Au);
                }

                sub_100536380(a1, [objc_msgSend(v36 info]);
              }
            }
          }
        }
      }

      else
      {
        switch(v5)
        {
          case 2:
            v47 = sub_10053572C(a2, 2);
            v48 = v47;
            if (v47)
            {
              if ([v47 info])
              {
                [v48 info];
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v49 = **(a1 + 56);
                  if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
                  {
                    v50 = PersonalityInfo::logPrefix(**(a1 + 16));
                    v51 = *(a1 + 64);
                    v52 = *(a1 + 72);
                    *buf = 136315906;
                    v73 = v50;
                    v74 = 2080;
                    v75 = " ";
                    v76 = 2080;
                    v77 = v51;
                    v78 = 2080;
                    v79 = v52;
                    _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%smerging getProvisioning", buf, 0x2Au);
                  }

                  sub_100536470(a1, [objc_msgSend(v48 info]);
                }
              }
            }

            break;
          case 3:
            v41 = sub_10053572C(a2, 3);
            v42 = v41;
            if (v41)
            {
              if ([v41 info])
              {
                [v42 info];
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v43 = **(a1 + 56);
                  if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
                  {
                    v44 = PersonalityInfo::logPrefix(**(a1 + 16));
                    v45 = *(a1 + 64);
                    v46 = *(a1 + 72);
                    *buf = 136315906;
                    v73 = v44;
                    v74 = 2080;
                    v75 = " ";
                    v76 = 2080;
                    v77 = v45;
                    v78 = 2080;
                    v79 = v46;
                    _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%smerging setProvisioning", buf, 0x2Au);
                  }

                  sub_1005364E8(a1, [objc_msgSend(v42 info]);
                }
              }
            }

            break;
          case 4:
LABEL_5:
            v7 = sub_10053572C(a2, v5);
            if (v7)
            {
              v8 = **(a1 + 56);
              if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
              {
                v9 = PersonalityInfo::logPrefix(**(a1 + 16));
                v10 = *(a1 + 64);
                v11 = *(a1 + 72);
                v12 = a1;
                v13 = (*(a1 + 96) + v4);
                v14 = *v13;
                v15 = v13[1];
                if (v15)
                {
                  atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                v16 = (*(*v14 + 40))(v14);
                if (v15)
                {
                  sub_100004A34(v15);
                }

                *buf = 136316162;
                v73 = v9;
                v74 = 2080;
                v75 = " ";
                v76 = 2080;
                v77 = v10;
                v78 = 2080;
                v79 = v11;
                v80 = 2080;
                v81 = v16;
                _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%smerging %s", buf, 0x34u);
                a2 = v70;
                a1 = v12;
              }

              sub_10053866C(a1, v7);
            }

            break;
          default:
            break;
        }
      }
    }

    else
    {
      if (v5 <= 0x1B)
      {
        if (((1 << v5) & 0xFDFFF00) != 0)
        {
          goto LABEL_5;
        }

        if (v5 == 7)
        {
          v58 = sub_10053572C(a2, 7);
          v59 = v58;
          if (v58)
          {
            if ([v58 info])
            {
              [v59 info];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v60 = **(a1 + 56);
                if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
                {
                  v61 = PersonalityInfo::logPrefix(**(a1 + 16));
                  v62 = *(a1 + 64);
                  v63 = *(a1 + 72);
                  *buf = 136315906;
                  v73 = v61;
                  v74 = 2080;
                  v75 = " ";
                  v76 = 2080;
                  v77 = v62;
                  v78 = 2080;
                  v79 = v63;
                  _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sMerging getVVMAccountStatus", buf, 0x2Au);
                }

                sub_100536CE0(a1, [objc_msgSend(v59 info]);
              }
            }
          }

          goto LABEL_13;
        }

        if (v5 == 21)
        {
          v23 = sub_10053572C(a2, 21);
          if (v23)
          {
            v24 = **(a1 + 56);
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
            {
              v25 = (*(a1 + 96) + v4);
              v26 = *v25;
              v27 = v25[1];
              if (v27)
              {
                atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v28 = (*(*v26 + 40))(v26);
              if (v27)
              {
                sub_100004A34(v27);
              }

              *buf = v69;
              v73 = v28;
              _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#I merging %s", buf, 0xCu);
            }

            sub_100536F38(a1, [v23 info]);
          }

          goto LABEL_13;
        }
      }

      if (v5 == 5)
      {
        v53 = sub_10053572C(a2, 5);
        v30 = v53;
        if (v53)
        {
          if ([v53 info])
          {
            [v30 info];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v54 = **(a1 + 56);
              if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
              {
                v55 = PersonalityInfo::logPrefix(**(a1 + 16));
                v56 = *(a1 + 64);
                v57 = *(a1 + 72);
                *buf = 136315906;
                v73 = v55;
                v74 = 2080;
                v75 = " ";
                v76 = 2080;
                v77 = v56;
                v78 = 2080;
                v79 = v57;
                _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%smerging EnablePushNotification", buf, 0x2Au);
              }

              goto LABEL_45;
            }
          }
        }
      }

      else if (v5 == 6)
      {
        v29 = sub_10053572C(a2, 6);
        v30 = v29;
        if (v29)
        {
          if ([v29 info])
          {
            [v30 info];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v31 = **(a1 + 56);
              if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
              {
                v32 = PersonalityInfo::logPrefix(**(a1 + 16));
                v33 = *(a1 + 64);
                v34 = *(a1 + 72);
                *buf = 136315906;
                v73 = v32;
                v74 = 2080;
                v75 = " ";
                v76 = 2080;
                v77 = v33;
                v78 = 2080;
                v79 = v34;
                _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%smerging DisablePushNotification", buf, 0x2Au);
              }

LABEL_45:
              sub_100536E30(a1, [objc_msgSend(v30 info]);
            }
          }
        }
      }
    }

LABEL_13:
    ++v5;
    v4 += 16;
  }

  while (v5 != 28);
  v64 = **(a1 + 56);
  if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
  {
    v66 = PersonalityInfo::logPrefix(**(a1 + 16));
    v67 = *(a1 + 64);
    v68 = *(a1 + 72);
    *buf = 136315906;
    v73 = v66;
    v74 = 2080;
    v75 = " ";
    v76 = 2080;
    v77 = v67;
    v78 = 2080;
    v79 = v68;
    _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%s=== DUMPING MERGE RESULT", buf, 0x2Au);
  }

  sub_10053722C(a1);
  ctu::ns::AutoPool::~AutoPool(&v71);
}

void sub_1005362E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  ctu::ns::AutoPool::~AutoPool(va);
  _Unwind_Resume(a1);
}

void *sub_100536380(uint64_t a1, void *a2)
{
  v6 = 0;
  sub_10053562C(a1, 0, &v6);
  v4 = sub_1005378F8(a1, a2, v6, @"entitlement-names");
  sub_100005978(&v6);
  return v4;
}

void sub_1005363E4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100005978(va);
  _Unwind_Resume(a1);
}

void *sub_1005363F8(uint64_t a1, void *a2)
{
  v6 = 0;
  sub_10053562C(a1, 1, &v6);
  v4 = sub_1005378F8(a1, a2, v6, @"entitlement-names");
  sub_100005978(&v6);
  return v4;
}

void sub_10053645C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100005978(va);
  _Unwind_Resume(a1);
}

void *sub_100536470(uint64_t a1, void *a2)
{
  v6 = 0;
  sub_10053562C(a1, 2, &v6);
  v4 = sub_1005378F8(a1, a2, v6, @"provisioning-names");
  sub_100005978(&v6);
  return v4;
}

void sub_1005364D4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100005978(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1005364E8(uint64_t a1, void *a2)
{
  v3 = a1;
  v72 = 0;
  sub_10053562C(a1, 3, &v72);
  v4 = 0;
  if (a2 && *(v3 + 40))
  {
    v58 = v72;
    if ([a2 count])
    {
      v5 = sub_100534DF0(v3, v58);
      if (v5)
      {
        goto LABEL_8;
      }

      v6 = **(v3 + 56);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = PersonalityInfo::logPrefix(**(v3 + 16));
        v9 = *(v3 + 64);
        v8 = *(v3 + 72);
        v10 = [v58 cStringUsingEncoding:4];
        *buf = 136316162;
        v76 = v7;
        v77 = 2080;
        v78 = " ";
        v79 = 2080;
        v80 = v9;
        v81 = 2080;
        v82 = v8;
        v83 = 2080;
        v84 = v10;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sNo existing %s action to append - adding", buf, 0x34u);
      }

      v5 = [SubscriberRequestTransactionElement requestWithAction:v58 andAnnotation:0];
      if (v5)
      {
LABEL_8:
        v55 = v5;
        v11 = [objc_msgSend(v5 "info")];
        v12 = v11;
        if (v11)
        {
          if ([v11 isEqual:a2])
          {
            v13 = **(v3 + 56);
            if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
            {
              v14 = PersonalityInfo::logPrefix(**(v3 + 16));
              v16 = *(v3 + 64);
              v15 = *(v3 + 72);
              v17 = [v58 cStringUsingEncoding:4];
              *buf = 136316162;
              v76 = v14;
              v77 = 2080;
              v78 = " ";
              v79 = 2080;
              v80 = v16;
              v81 = 2080;
              v82 = v15;
              v83 = 2080;
              v84 = v17;
              _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sEntitlement arrays %s are the same, nothing to be done", buf, 0x34u);
            }

            goto LABEL_54;
          }

          v63 = [v12 mutableCopy];
          v70 = 0u;
          v71 = 0u;
          v68 = 0u;
          v69 = 0u;
          v60 = [a2 countByEnumeratingWithState:&v68 objects:v74 count:16];
          if (v60)
          {
            v19 = *v69;
            v20 = @"data";
            *&v18 = 136315650;
            v54 = v18;
            v59 = *v69;
            v56 = a2;
            v57 = v3;
            do
            {
              v62 = 0;
              do
              {
                if (*v69 != v19)
                {
                  objc_enumerationMutation(a2);
                }

                v61 = *(*(&v68 + 1) + 8 * v62);
                v21 = [v61 objectForKey:{@"name", v54}];
                if (v21)
                {
                  for (i = 0; ; ++i)
                  {
                    v23 = v20;
                    if (i >= [v63 count])
                    {
                      goto LABEL_40;
                    }

                    v24 = [v63 objectAtIndex:i];
                    v25 = [v24 objectForKey:@"name"];
                    if (v25)
                    {
                      if ([v25 isEqual:v21])
                      {
                        break;
                      }
                    }
                  }

                  v26 = [v24 objectForKey:@"state"];
                  v27 = [v61 objectForKey:@"state"];
                  if (!v27 || !v26 || ![v27 isEqual:v26])
                  {
                    v37 = **(v3 + 56);
                    if (!os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
                    {
                      goto LABEL_40;
                    }

                    v42 = PersonalityInfo::logPrefix(**(v3 + 16));
                    v44 = *(v3 + 64);
                    v43 = *(v3 + 72);
                    v45 = [v21 cStringUsingEncoding:4];
                    *buf = 136316162;
                    v76 = v42;
                    v77 = 2080;
                    v78 = " ";
                    v79 = 2080;
                    v80 = v44;
                    v81 = 2080;
                    v82 = v43;
                    v83 = 2080;
                    v84 = v45;
                    _os_log_error_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "#E %s%s%s%ssetProvisioning '%s' state is missing or mismatch", buf, 0x34u);
LABEL_50:
                    v19 = v59;
                    goto LABEL_40;
                  }

                  v28 = [v24 objectForKey:v20];
                  v29 = [v61 objectForKey:v20];
                  if (!v28)
                  {
                    v38 = **(v3 + 56);
                    if (!os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
                    {
                      goto LABEL_40;
                    }

                    v39 = PersonalityInfo::logPrefix(**(v3 + 16));
                    v40 = [v21 cStringUsingEncoding:4];
                    *buf = v54;
                    v76 = v39;
                    v77 = 2080;
                    v78 = " ";
                    v79 = 2080;
                    v80 = v40;
                    _os_log_debug_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEBUG, "#D %s%sskip adding. Existing setProvisioning '%s' cover everything", buf, 0x20u);
                    goto LABEL_50;
                  }

                  v30 = v29;
                  if (v29)
                  {
                    v31 = [v28 mutableCopy];
                    v66 = 0u;
                    v67 = 0u;
                    v64 = 0u;
                    v65 = 0u;
                    v32 = [v30 countByEnumeratingWithState:&v64 objects:v73 count:16];
                    if (v32)
                    {
                      v33 = *v65;
                      do
                      {
                        for (j = 0; j != v32; j = j + 1)
                        {
                          if (*v65 != v33)
                          {
                            objc_enumerationMutation(v30);
                          }

                          v35 = *(*(&v64 + 1) + 8 * j);
                          if (([v28 containsObject:v35] & 1) == 0)
                          {
                            [v31 addObject:v35];
                          }
                        }

                        v32 = [v30 countByEnumeratingWithState:&v64 objects:v73 count:16];
                      }

                      while (v32);
                    }

                    a2 = v56;
                    v3 = v57;
                    v19 = v59;
                    v36 = [v24 mutableCopy];
                    [v36 setValue:v31 forKey:v23];
                    [v63 replaceObjectAtIndex:i withObject:v36];
                  }

                  else
                  {
                    v41 = **(v3 + 56);
                    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
                    {
                      v46 = PersonalityInfo::logPrefix(**(v3 + 16));
                      v47 = [v21 cStringUsingEncoding:4];
                      *buf = v54;
                      v76 = v46;
                      v77 = 2080;
                      v78 = " ";
                      v79 = 2080;
                      v80 = v47;
                      _os_log_debug_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEBUG, "#D %s%sreplace existing setProvisioning '%s' with new one since it covers everything", buf, 0x20u);
                      v19 = v59;
                    }

                    [v63 replaceObjectAtIndex:i withObject:v61];
                  }

LABEL_40:
                  v20 = v23;
                  if ([v63 count] == i)
                  {
                    [v63 addObject:v61];
                  }
                }

                v62 = v62 + 1;
              }

              while (v62 != v60);
              v48 = [a2 countByEnumeratingWithState:&v68 objects:v74 count:16];
              v60 = v48;
            }

            while (v48);
          }

          [objc_msgSend(v55 "info")];
        }

        else
        {
          [objc_msgSend(v55 "info")];
        }

        sub_100534920(v3, v58, v55);
LABEL_54:
        v4 = 1;
        goto LABEL_58;
      }

      v49 = **(v3 + 56);
      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
      {
        v50 = PersonalityInfo::logPrefix(**(v3 + 16));
        v51 = *(v3 + 64);
        v52 = *(v3 + 72);
        *buf = 136315906;
        v76 = v50;
        v77 = 2080;
        v78 = " ";
        v79 = 2080;
        v80 = v51;
        v81 = 2080;
        v82 = v52;
        _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "#W %s%s%s%sUnable to allocate entitlement request", buf, 0x2Au);
      }
    }

    v4 = 0;
  }

LABEL_58:
  sub_100005978(&v72);
  return v4;
}

BOOL sub_100536CE0(uint64_t a1, void *a2)
{
  if (![a2 count])
  {
    return 1;
  }

  v4 = sub_10053572C(a1, 7);
  if (v4)
  {
    v5 = v4;
    if (![v4 info])
    {
      return 0;
    }

    v6 = [objc_msgSend(v5 "info")];
    if (v6)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = 0;
        ctu::ns::AutoPool::AutoPool(&v10);
        v7 = [NSMutableSet setWithArray:v6];
        v8 = v7;
        v6 = v7 != 0;
        if (v7)
        {
          [(NSMutableSet *)v7 addObjectsFromArray:a2];
          [objc_msgSend(v5 "info")];
        }

        ctu::ns::AutoPool::~AutoPool(&v10);
        return v6;
      }

      return 0;
    }

    return v6;
  }

  return sub_1005375C4(a1, a2);
}

void sub_100536E1C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::ns::AutoPool::~AutoPool(va);
  _Unwind_Resume(a1);
}

void *sub_100536E30(uint64_t a1, void *a2)
{
  v6 = 0;
  sub_10053562C(a1, 5, &v6);
  v4 = sub_100537F90(a1, a2, v6, @"notifications", @"notification-name");
  sub_100005978(&v6);
  return v4;
}

void sub_100536E9C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100005978(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100536EB0(uint64_t a1, int a2)
{
  v2 = (*(a1 + 96) + 16 * a2);
  v3 = *v2;
  v4 = v2[1];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = (*(*v3 + 40))(v3);
  if (v4)
  {
    sub_100004A34(v4);
  }

  return v5;
}

void sub_100536F20(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

id sub_100536F38(uint64_t a1, void *a2)
{
  v24 = 0;
  sub_10053562C(a1, 21, &v24);
  v4 = v24;
  v5 = [a2 objectForKey:@"token-scopes"];
  v6 = [a2 objectForKey:@"mp-tokens-scopes"];
  if (v5)
  {
    v5 = sub_1005378F8(a1, v5, v4, @"token-scopes");
  }

  if (v6)
  {
    theDict = 0;
    sub_100534380([v5 info], &theDict);
    v22 = 0;
    sub_100534380(a2, &v22);
    if (!theDict || !v22)
    {
      goto LABEL_24;
    }

    Value = CFDictionaryGetValue(theDict, off_101FB24C0);
    if (Value)
    {
      v8 = CFGetTypeID(Value);
      v9 = v8 != CFStringGetTypeID();
    }

    else
    {
      v9 = 1;
    }

    v10 = CFDictionaryGetValue(v22, off_101FB24C0);
    if (v10)
    {
      v11 = CFGetTypeID(v10);
      if (v11 == CFStringGetTypeID() || v9)
      {
        goto LABEL_24;
      }
    }

    else if (v9)
    {
LABEL_24:
      v5 = sub_100537F90(a1, v6, v4, @"mp-tokens-scopes", @"scope");
      sub_10001021C(&v22);
      sub_10001021C(&theDict);
      goto LABEL_25;
    }

    v12 = objc_opt_new();
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v13 = [v6 countByEnumeratingWithState:&v18 objects:v25 count:16];
    if (v13)
    {
      v14 = *v19;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v19 != v14)
          {
            objc_enumerationMutation(v6);
          }

          v16 = *(*(&v18 + 1) + 8 * i);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && ([objc_msgSend(v16 objectForKey:{@"scope", "isEqual:", @"rcs-config"}] & 1) == 0)
          {
            [v12 addObject:v16];
          }
        }

        v13 = [v6 countByEnumeratingWithState:&v18 objects:v25 count:16];
      }

      while (v13);
    }

    v6 = v12;
    goto LABEL_24;
  }

LABEL_25:
  sub_100005978(&v24);
  return v5;
}

void sub_1005371D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va2, a12);
  va_start(va1, a12);
  va_start(va, a12);
  v13 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v15 = va_arg(va2, const void *);
  sub_10001021C(va);
  sub_10001021C(va1);
  sub_100005978(va2);
  _Unwind_Resume(a1);
}

void sub_10053722C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = **(a1 + 56);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = PersonalityInfo::logPrefix(**(a1 + 16));
    v5 = *(a1 + 64);
    v6 = *(a1 + 72);
    sub_100535024(a1, __p);
    if (v18 >= 0)
    {
      v7 = __p;
    }

    else
    {
      v7 = __p[0];
    }

    *buf = 136316162;
    v20 = v4;
    v21 = 2080;
    v22 = " ";
    v23 = 2080;
    v24 = v5;
    v25 = 2080;
    v26 = v6;
    v27 = 2082;
    *v28 = v7;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%s | Query has %{public}s", buf, 0x34u);
    if (v18 < 0)
    {
      operator delete(__p[0]);
    }

    v3 = **(a1 + 56);
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v8 = PersonalityInfo::logPrefix(**(a1 + 16));
    v9 = *(a1 + 64);
    v10 = *(a1 + 72);
    v11 = [objc_msgSend(*(a1 + 40) "description")];
    *buf = 136316162;
    v20 = v8;
    v21 = 2080;
    v22 = " ";
    v23 = 2080;
    v24 = v9;
    v25 = 2080;
    v26 = v10;
    v27 = 2080;
    *v28 = v11;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%s | Requests: %s", buf, 0x34u);
    v3 = **(a1 + 56);
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v12 = PersonalityInfo::logPrefix(**(a1 + 16));
    v13 = *(a1 + 64);
    v14 = *(a1 + 72);
    v15 = *(a1 + 32);
    v16 = *(a1 + 48);
    *buf = 136316418;
    v20 = v12;
    v21 = 2080;
    v22 = " ";
    v23 = 2080;
    v24 = v13;
    v25 = 2080;
    v26 = v14;
    v27 = 1024;
    *v28 = v15;
    *&v28[4] = 1024;
    *&v28[6] = v16;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%s | Current Transaction ID: %d, generation: %u", buf, 0x36u);
  }

  objc_autoreleasePoolPop(v2);
}

uint64_t sub_100537494(uint64_t a1, _BYTE *a2)
{
  if ((*a2 & 0x20) == 0 || sub_100534DF0(a1, @"authenticate"))
  {
    return 0;
  }

  v4 = [SubscriberRequestTransactionElement requestWithAction:@"authenticate" andAnnotation:0];
  v5 = **(a1 + 56);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = PersonalityInfo::logPrefix(**(a1 + 16));
    v7 = *(a1 + 64);
    v8 = *(a1 + 72);
    v9 = 136315906;
    v10 = v6;
    v11 = 2080;
    v12 = " ";
    v13 = 2080;
    v14 = v7;
    v15 = 2080;
    v16 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sadding AuthOnly action", &v9, 0x2Au);
  }

  sub_100534920(a1, @"authenticate", v4);
  return 1;
}

BOOL sub_1005375C4(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v9 = 0;
  ctu::ns::AutoPool::AutoPool(&v9);
  v8 = 0;
  sub_10053562C(a1, 7, &v8);
  v4 = [SubscriberRequestTransactionElement requestWithAction:v8 andAnnotation:0];
  v5 = v4;
  v6 = v4 != 0;
  if (v4)
  {
    [objc_msgSend(v4 "info")];
    sub_100534920(a1, v8, v5);
  }

  sub_100005978(&v8);
  ctu::ns::AutoPool::~AutoPool(&v9);
  return v6;
}

void sub_100537684(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::ns::AutoPool::~AutoPool(va);
  _Unwind_Resume(a1);
}

id sub_1005376A8(uint64_t a1)
{
  result = sub_10053572C(a1, 1);
  if (result)
  {
    v2 = [result info];

    return [v2 objectForKey:@"entitlement-names"];
  }

  return result;
}

id sub_1005376EC(uint64_t a1)
{
  result = sub_10053572C(a1, 0);
  if (result)
  {
    v2 = [result info];

    return [v2 objectForKey:@"entitlement-names"];
  }

  return result;
}

id sub_100537730(uint64_t a1, void *a2)
{
  if (!*(a1 + 40))
  {
    return 0;
  }

  v4 = sub_100534DF0(a1, a2);
  if (!v4)
  {
    v5 = **(a1 + 56);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = PersonalityInfo::logPrefix(**(a1 + 16));
      v7 = *(a1 + 64);
      v8 = *(a1 + 72);
      v15 = 136316162;
      v16 = v6;
      v17 = 2080;
      v18 = " ";
      v19 = 2080;
      v20 = v7;
      v21 = 2080;
      v22 = v8;
      v23 = 2080;
      v24 = [a2 cStringUsingEncoding:4];
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sNo existing %s action to append - adding", &v15, 0x34u);
    }

    v4 = [SubscriberRequestTransactionElement requestWithAction:a2 andAnnotation:0];
    if (!v4)
    {
      v10 = **(a1 + 56);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = PersonalityInfo::logPrefix(**(a1 + 16));
        v12 = *(a1 + 64);
        v13 = *(a1 + 72);
        v15 = 136315906;
        v16 = v11;
        v17 = 2080;
        v18 = " ";
        v19 = 2080;
        v20 = v12;
        v21 = 2080;
        v22 = v13;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#W %s%s%s%sUnable to allocate entitlement request", &v15, 0x2Au);
      }

      return 0;
    }
  }

  v9 = v4;
  sub_100534920(a1, a2, v4);
  return v9;
}

void *sub_1005378F8(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v4 = 0;
  if (!a2 || !*(a1 + 40))
  {
    return v4;
  }

  if (![a2 count])
  {
    return 0;
  }

  v9 = sub_100534DF0(a1, a3);
  if (!v9)
  {
    v10 = **(a1 + 56);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = PersonalityInfo::logPrefix(**(a1 + 16));
      v12 = *(a1 + 64);
      v13 = *(a1 + 72);
      *buf = 136316162;
      v48 = v11;
      v49 = 2080;
      v50 = " ";
      v51 = 2080;
      v52 = v12;
      v53 = 2080;
      v54 = v13;
      v55 = 2080;
      v56 = [a3 cStringUsingEncoding:4];
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sNo existing %s action to append - adding", buf, 0x34u);
    }

    v9 = [SubscriberRequestTransactionElement requestWithAction:a3 andAnnotation:0];
    if (!v9)
    {
      v33 = **(a1 + 56);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        v34 = PersonalityInfo::logPrefix(**(a1 + 16));
        v35 = *(a1 + 64);
        v36 = *(a1 + 72);
        *buf = 136315906;
        v48 = v34;
        v49 = 2080;
        v50 = " ";
        v51 = 2080;
        v52 = v35;
        v53 = 2080;
        v54 = v36;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "#W %s%s%s%sUnable to allocate entitlement request", buf, 0x2Au);
      }

      return 0;
    }
  }

  v4 = v9;
  v14 = [objc_msgSend(v9 "info")];
  if (!v14)
  {
    [objc_msgSend(v4 "info")];
LABEL_25:
    sub_100534920(a1, a3, v4);
    return v4;
  }

  v15 = v14;
  if (![v14 isEqual:a2])
  {
    v38 = a4;
    v39 = v4;
    v40 = a3;
    v21 = [v15 mutableCopy];
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v22 = [a2 countByEnumeratingWithState:&v42 objects:v46 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v43;
      v41 = v21;
      do
      {
        for (i = 0; i != v23; i = i + 1)
        {
          if (*v43 != v24)
          {
            objc_enumerationMutation(a2);
          }

          v26 = *(*(&v42 + 1) + 8 * i);
          if (([v21 containsObject:v26] & 1) == 0)
          {
            v27 = **(a1 + 56);
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
            {
              v28 = PersonalityInfo::logPrefix(**(a1 + 16));
              v29 = v23;
              v30 = *(a1 + 64);
              v31 = *(a1 + 72);
              v32 = [v26 cStringUsingEncoding:4];
              *buf = 136316162;
              v48 = v28;
              v49 = 2080;
              v50 = " ";
              v51 = 2080;
              v52 = v30;
              v23 = v29;
              v21 = v41;
              v53 = 2080;
              v54 = v31;
              v55 = 2080;
              v56 = v32;
              _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sAdding %s", buf, 0x34u);
            }

            [v21 addObject:v26];
          }
        }

        v23 = [a2 countByEnumeratingWithState:&v42 objects:v46 count:16];
      }

      while (v23);
    }

    v4 = v39;
    [objc_msgSend(v39 "info")];
    a3 = v40;
    goto LABEL_25;
  }

  v16 = **(a1 + 56);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = PersonalityInfo::logPrefix(**(a1 + 16));
    v19 = *(a1 + 64);
    v18 = *(a1 + 72);
    v20 = [a3 cStringUsingEncoding:4];
    *buf = 136316162;
    v48 = v17;
    v49 = 2080;
    v50 = " ";
    v51 = 2080;
    v52 = v19;
    v53 = 2080;
    v54 = v18;
    v55 = 2080;
    v56 = v20;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sEntitlement arrays %s are the same, nothing to be done", buf, 0x34u);
  }

  return v4;
}

id sub_100537D54(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  obj = a2;
  if (a2)
  {
    if (*(a1 + 40))
    {
      if ([a2 count])
      {
        v6 = sub_100534DF0(a1, a3);
        if (v6)
        {
          v7 = [objc_msgSend(v6 "info")];
          if (v7)
          {
            v8 = v7;
            v9 = objc_opt_new();
            v28 = 0u;
            v29 = 0u;
            v30 = 0u;
            v31 = 0u;
            v10 = [obj countByEnumeratingWithState:&v28 objects:v44 count:16];
            if (v10)
            {
              v12 = v10;
              v13 = *v29;
              *&v11 = 136316418;
              v24 = v11;
              v25 = v8;
              do
              {
                for (i = 0; i != v12; i = i + 1)
                {
                  if (*v29 != v13)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v15 = *(*(&v28 + 1) + 8 * i);
                  if ([v8 containsObject:{v15, v24}])
                  {
                    v16 = **(a1 + 56);
                    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
                    {
                      v17 = PersonalityInfo::logPrefix(**(a1 + 16));
                      v18 = v9;
                      v20 = *(a1 + 64);
                      v19 = *(a1 + 72);
                      v21 = [v15 cStringUsingEncoding:4];
                      v22 = [a3 cStringUsingEncoding:4];
                      *buf = v24;
                      v33 = v17;
                      v34 = 2080;
                      v35 = " ";
                      v36 = 2080;
                      v37 = v20;
                      v9 = v18;
                      v38 = 2080;
                      v39 = v19;
                      v8 = v25;
                      v40 = 2080;
                      v41 = v21;
                      v42 = 2080;
                      v43 = v22;
                      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%staking out %s from %s - already queried", buf, 0x3Eu);
                    }
                  }

                  else
                  {
                    [v9 addObject:v15];
                  }
                }

                v12 = [obj countByEnumeratingWithState:&v28 objects:v44 count:16];
              }

              while (v12);
            }

            return v9;
          }
        }
      }
    }
  }

  return obj;
}

void *sub_100537F90(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v5 = 0;
  if (!a2)
  {
    return v5;
  }

  v6 = a1;
  if (!*(a1 + 40))
  {
    return v5;
  }

  if (![a2 count])
  {
    return 0;
  }

  v11 = sub_100534DF0(v6, a3);
  if (!v11)
  {
    v12 = **(v6 + 56);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = PersonalityInfo::logPrefix(**(v6 + 16));
      v14 = a4;
      v15 = *(v6 + 64);
      v16 = *(v6 + 72);
      *buf = 136316162;
      v48 = v13;
      v49 = 2080;
      v50 = " ";
      v51 = 2080;
      v52 = v15;
      a4 = v14;
      v53 = 2080;
      v54 = v16;
      v55 = 2080;
      v56 = [a3 cStringUsingEncoding:4];
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sNo existing %s action to append - adding", buf, 0x34u);
    }

    v11 = [SubscriberRequestTransactionElement requestWithAction:a3 andAnnotation:0];
    if (!v11)
    {
      v34 = **(v6 + 56);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        v35 = PersonalityInfo::logPrefix(**(v6 + 16));
        v36 = *(v6 + 64);
        v37 = *(v6 + 72);
        *buf = 136315906;
        v48 = v35;
        v49 = 2080;
        v50 = " ";
        v51 = 2080;
        v52 = v36;
        v53 = 2080;
        v54 = v37;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "#W %s%s%s%sUnable to allocate entitlement request", buf, 0x2Au);
      }

      return 0;
    }
  }

  v5 = v11;
  v17 = [objc_msgSend(v11 "info")];
  if (!v17)
  {
    [objc_msgSend(v5 "info")];
LABEL_30:
    sub_100534920(v6, a3, v5);
    return v5;
  }

  v18 = v17;
  if (![v17 isEqual:a2])
  {
    v39 = a4;
    v40 = a3;
    v41 = v6;
    v24 = [v18 mutableCopy];
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v25 = [a2 countByEnumeratingWithState:&v42 objects:v46 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v43;
      do
      {
        for (i = 0; i != v26; i = i + 1)
        {
          if (*v43 != v27)
          {
            objc_enumerationMutation(a2);
          }

          v29 = *(*(&v42 + 1) + 8 * i);
          v30 = [v29 objectForKey:a5];
          if (v30)
          {
            v31 = v30;
            v32 = 0;
            if ([v24 count])
            {
              while (1)
              {
                v33 = [objc_msgSend(v24 objectAtIndex:{v32), "objectForKey:", a5}];
                if (v33)
                {
                  if ([v33 isEqual:v31])
                  {
                    break;
                  }
                }

                if (++v32 >= [v24 count])
                {
                  goto LABEL_25;
                }
              }

              [v24 replaceObjectAtIndex:v32 withObject:v29];
            }

LABEL_25:
            if (v32 == [v24 count])
            {
              [v24 addObject:v29];
            }
          }
        }

        v26 = [a2 countByEnumeratingWithState:&v42 objects:v46 count:16];
      }

      while (v26);
    }

    [objc_msgSend(v5 "info")];
    a3 = v40;
    v6 = v41;
    goto LABEL_30;
  }

  v19 = **(v6 + 56);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = PersonalityInfo::logPrefix(**(v6 + 16));
    v21 = *(v6 + 64);
    v22 = *(v6 + 72);
    v23 = [a3 cStringUsingEncoding:4];
    *buf = 136316162;
    v48 = v20;
    v49 = 2080;
    v50 = " ";
    v51 = 2080;
    v52 = v21;
    v53 = 2080;
    v54 = v22;
    v55 = 2080;
    v56 = v23;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sEntitlement arrays %s are the same, nothing to be done", buf, 0x34u);
  }

  return v5;
}

id sub_1005383A8(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v5 = a2;
  if (a2)
  {
    if (*(a1 + 40))
    {
      if ([a2 count])
      {
        v9 = sub_100534DF0(a1, a3);
        if (v9)
        {
          v10 = [objc_msgSend(v9 "info")];
          if (v10)
          {
            v11 = v10;
            v12 = objc_opt_new();
            v34 = 0u;
            v35 = 0u;
            v36 = 0u;
            v37 = 0u;
            v33 = [v5 countByEnumeratingWithState:&v34 objects:v50 count:16];
            if (v33)
            {
              v32 = *v35;
              *&v13 = 136316418;
              v28 = v13;
              v29 = v12;
              do
              {
                for (i = 0; i != v33; i = i + 1)
                {
                  if (*v35 != v32)
                  {
                    objc_enumerationMutation(v5);
                  }

                  v15 = *(*(&v34 + 1) + 8 * i);
                  v16 = [v15 objectForKey:{a5, v28}];
                  if (v16)
                  {
                    v17 = v16;
                    for (j = 0; j < [v11 count]; ++j)
                    {
                      v19 = [v11 objectAtIndex:j];
                      v20 = [v19 objectForKey:a5];
                      if (v20 && [v20 isEqual:v17] && (objc_msgSend(v19, "isEqual:", v15) & 1) != 0)
                      {
                        break;
                      }
                    }

                    if (j == [v11 count])
                    {
                      [v12 addObject:v15];
                    }

                    else
                    {
                      v21 = **(a1 + 56);
                      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
                      {
                        v22 = PersonalityInfo::logPrefix(**(a1 + 16));
                        v23 = v5;
                        v24 = *(a1 + 64);
                        v31 = *(a1 + 72);
                        v25 = [v17 cStringUsingEncoding:4];
                        v26 = [a3 cStringUsingEncoding:4];
                        *buf = v28;
                        v39 = v22;
                        v40 = 2080;
                        v41 = " ";
                        v42 = 2080;
                        v43 = v24;
                        v5 = v23;
                        v12 = v29;
                        v44 = 2080;
                        v45 = v31;
                        v46 = 2080;
                        v47 = v25;
                        v48 = 2080;
                        v49 = v26;
                        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%staking out %s from %s - already queried", buf, 0x3Eu);
                      }
                    }
                  }
                }

                v33 = [v5 countByEnumeratingWithState:&v34 objects:v50 count:16];
              }

              while (v33);
            }

            return v12;
          }
        }
      }
    }
  }

  return v5;
}

id sub_10053866C(uint64_t a1, void *a2)
{
  v2 = 0;
  if (a2 && *(a1 + 40))
  {
    v5 = [a2 action];
    v6 = sub_100534DF0(a1, v5);
    if (!v6)
    {
LABEL_8:
      v2 = a2;
      sub_100534920(a1, v5, v2);
      return v2;
    }

    v2 = v6;
    if (([v6 matchContent:{objc_msgSend(a2, "info")}] & 1) == 0)
    {
      v7 = **(a1 + 56);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = PersonalityInfo::logPrefix(**(a1 + 16));
        v9 = *(a1 + 64);
        v10 = *(a1 + 72);
        v12 = 136316162;
        v13 = v8;
        v14 = 2080;
        v15 = " ";
        v16 = 2080;
        v17 = v9;
        v18 = 2080;
        v19 = v10;
        v20 = 2112;
        v21 = v5;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sRemoving the existing %@", &v12, 0x34u);
      }

      sub_1005353B8(a1, v2);
      goto LABEL_8;
    }
  }

  return v2;
}

void *sub_1005387D4(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v4 = 0;
  if (a2 && *(a1 + 40))
  {
    if (![a2 count])
    {
      return 0;
    }

    v9 = sub_100534DF0(a1, a3);
    if (!v9)
    {
LABEL_9:
      v14 = [SubscriberRequestTransactionElement requestWithAction:a3 andAnnotation:a4];
      if (v14)
      {
        v4 = v14;
        [objc_msgSend(v14 "info")];
        sub_100534920(a1, a3, v4);
        return v4;
      }

      v15 = **(a1 + 56);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = PersonalityInfo::logPrefix(**(a1 + 16));
        v17 = *(a1 + 64);
        v18 = *(a1 + 72);
        v20 = 136315906;
        v21 = v16;
        v22 = 2080;
        v23 = " ";
        v24 = 2080;
        v25 = v17;
        v26 = 2080;
        v27 = v18;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#W %s%s%s%sUnable to allocate entitlement request", &v20, 0x2Au);
      }

      return 0;
    }

    v4 = v9;
    if (([v9 matchContent:a2] & 1) == 0)
    {
      v10 = **(a1 + 56);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = PersonalityInfo::logPrefix(**(a1 + 16));
        v12 = *(a1 + 64);
        v13 = *(a1 + 72);
        v20 = 136316162;
        v21 = v11;
        v22 = 2080;
        v23 = " ";
        v24 = 2080;
        v25 = v12;
        v26 = 2080;
        v27 = v13;
        v28 = 2080;
        v29 = [a3 cStringUsingEncoding:4];
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sRemoving the existing %s", &v20, 0x34u);
      }

      sub_1005353B8(a1, v4);
      goto LABEL_9;
    }
  }

  return v4;
}

void *sub_1005389F8(uint64_t a1, void *a2, void *a3)
{
  v3 = a2;
  if (a2)
  {
    if (*(a1 + 40))
    {
      if ([a2 count])
      {
        v6 = sub_100534DF0(a1, a3);
        if (v6)
        {
          if ([v6 matchContent:v3])
          {
            v7 = **(a1 + 56);
            if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
            {
              v8 = PersonalityInfo::logPrefix(**(a1 + 16));
              v10 = *(a1 + 64);
              v9 = *(a1 + 72);
              v12 = 136316162;
              v13 = v8;
              v14 = 2080;
              v15 = " ";
              v16 = 2080;
              v17 = v10;
              v18 = 2080;
              v19 = v9;
              v20 = 2080;
              v21 = [a3 cStringUsingEncoding:4];
              _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%staking out %s - already queried", &v12, 0x34u);
            }

            return 0;
          }
        }
      }
    }
  }

  return v3;
}

void *sub_100538B38(uint64_t a1, void *a2)
{
  v6 = 0;
  sub_10053562C(a1, 24, &v6);
  v4 = sub_1005387D4(a1, a2, v6, 0);
  sub_100005978(&v6);
  return v4;
}

void sub_100538B98(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100005978(va);
  _Unwind_Resume(a1);
}

void *sub_100538BAC(uint64_t a1, void *a2)
{
  v6 = 0;
  sub_10053562C(a1, 24, &v6);
  v4 = sub_1005389F8(a1, a2, v6);
  sub_100005978(&v6);
  return v4;
}

void sub_100538C08(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100005978(va);
  _Unwind_Resume(a1);
}

void *sub_100538C1C(uint64_t a1, void *a2)
{
  v6 = 0;
  sub_10053562C(a1, 25, &v6);
  v4 = sub_1005387D4(a1, a2, v6, 0);
  sub_100005978(&v6);
  return v4;
}

void sub_100538C7C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100005978(va);
  _Unwind_Resume(a1);
}

void *sub_100538C90(uint64_t a1, void *a2)
{
  v6 = 0;
  sub_10053562C(a1, 25, &v6);
  v4 = sub_1005389F8(a1, a2, v6);
  sub_100005978(&v6);
  return v4;
}

void sub_100538CEC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100005978(va);
  _Unwind_Resume(a1);
}

void *sub_100538D00(uint64_t a1, void *a2)
{
  v6 = 0;
  sub_10053562C(a1, 26, &v6);
  v4 = sub_1005387D4(a1, a2, v6, 0);
  sub_100005978(&v6);
  return v4;
}

void sub_100538D60(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100005978(va);
  _Unwind_Resume(a1);
}

void *sub_100538D74(uint64_t a1, void *a2)
{
  v6 = 0;
  sub_10053562C(a1, 26, &v6);
  v4 = sub_1005389F8(a1, a2, v6);
  sub_100005978(&v6);
  return v4;
}

void sub_100538DD0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100005978(va);
  _Unwind_Resume(a1);
}

void *sub_100538DE4(uint64_t a1, void *a2)
{
  v6 = 0;
  sub_10053562C(a1, 27, &v6);
  v4 = sub_1005387D4(a1, a2, v6, 0);
  sub_100005978(&v6);
  return v4;
}

void sub_100538E44(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100005978(va);
  _Unwind_Resume(a1);
}

void *sub_100538E58(uint64_t a1, void *a2)
{
  v6 = 0;
  sub_10053562C(a1, 27, &v6);
  v4 = sub_1005389F8(a1, a2, v6);
  sub_100005978(&v6);
  return v4;
}

void sub_100538EB4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100005978(va);
  _Unwind_Resume(a1);
}

id sub_100538EC8(uint64_t a1, void *a2)
{
  v6 = 0;
  sub_10053562C(a1, 0, &v6);
  v4 = sub_100537D54(a1, a2, v6, @"entitlement-names");
  sub_100005978(&v6);
  return v4;
}

void sub_100538F2C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100005978(va);
  _Unwind_Resume(a1);
}

id sub_100538F40(uint64_t a1, void *a2)
{
  v6 = 0;
  sub_10053562C(a1, 1, &v6);
  v4 = sub_100537D54(a1, a2, v6, @"entitlement-names");
  sub_100005978(&v6);
  return v4;
}

void sub_100538FA4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100005978(va);
  _Unwind_Resume(a1);
}

id sub_100538FB8(uint64_t a1, void *a2)
{
  v6 = 0;
  sub_10053562C(a1, 2, &v6);
  v4 = sub_100537D54(a1, a2, v6, @"provisioning-names");
  sub_100005978(&v6);
  return v4;
}

void sub_10053901C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100005978(va);
  _Unwind_Resume(a1);
}

void *sub_100539030(uint64_t a1, void *a2)
{
  v3 = a1;
  v71 = 0;
  sub_10053562C(a1, 3, &v71);
  if (a2)
  {
    if (*(v3 + 40))
    {
      v53 = v71;
      if ([a2 count])
      {
        v4 = sub_100534DF0(v3, v53);
        if (v4)
        {
          v5 = [objc_msgSend(v4 "info")];
          if (v5)
          {
            v56 = objc_opt_new();
            v69 = 0u;
            v70 = 0u;
            v67 = 0u;
            v68 = 0u;
            v58 = [a2 countByEnumeratingWithState:&v67 objects:v85 count:16];
            if (v58)
            {
              v57 = *v68;
              v7 = @"state";
              v8 = @"data";
              *&v6 = 136316418;
              v52 = v6;
              v54 = v3;
              v55 = a2;
              do
              {
                for (i = 0; i != v58; i = i + 1)
                {
                  if (*v68 != v57)
                  {
                    objc_enumerationMutation(a2);
                  }

                  v62 = *(*(&v67 + 1) + 8 * i);
                  v9 = [v62 objectForKey:{@"name", v52}];
                  if (v9)
                  {
                    for (j = 0; ; ++j)
                    {
                      v11 = v8;
                      v12 = v7;
                      if (j >= [v5 count])
                      {
                        goto LABEL_43;
                      }

                      v13 = [v5 objectAtIndex:j];
                      v14 = [v13 objectForKey:@"name"];
                      if (v14)
                      {
                        if ([v14 isEqual:v9] && objc_msgSend(v13, "isEqual:", v62))
                        {
                          break;
                        }
                      }
                    }

                    v15 = [v13 objectForKey:v7];
                    v16 = [v62 objectForKey:v12];
                    if (v16 && v15 && [v16 isEqual:v15])
                    {
                      v17 = [v13 objectForKey:v8];
                      v18 = [v62 objectForKey:v8];
                      if (!v17)
                      {
                        v34 = **(v3 + 56);
                        if (!os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
                        {
                          goto LABEL_43;
                        }

                        v35 = PersonalityInfo::logPrefix(**(v3 + 16));
                        v37 = *(v54 + 64);
                        v36 = *(v54 + 72);
                        v38 = [v9 cStringUsingEncoding:4];
                        v39 = [v53 cStringUsingEncoding:4];
                        *buf = v52;
                        v74 = v35;
                        v75 = 2080;
                        v76 = " ";
                        v77 = 2080;
                        v78 = v37;
                        v79 = 2080;
                        v80 = v36;
                        v81 = 2080;
                        v82 = v38;
                        v83 = 2080;
                        v84 = v39;
                        v26 = v34;
                        v27 = "#I %s%s%s%staking out %s from %s - wide one already queried";
                        goto LABEL_42;
                      }

                      v19 = v18;
                      if (!v18)
                      {
                        [v56 addObject:v62];
                        goto LABEL_43;
                      }

                      if ([v17 isEqual:v18])
                      {
                        v20 = **(v3 + 56);
                        if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
                        {
                          goto LABEL_43;
                        }

                        v21 = PersonalityInfo::logPrefix(**(v3 + 16));
                        v23 = *(v54 + 64);
                        v22 = *(v54 + 72);
                        v24 = [v9 cStringUsingEncoding:4];
                        v25 = [v53 cStringUsingEncoding:4];
                        *buf = v52;
                        v74 = v21;
                        v75 = 2080;
                        v76 = " ";
                        v77 = 2080;
                        v78 = v23;
                        v79 = 2080;
                        v80 = v22;
                        v81 = 2080;
                        v82 = v24;
                        v83 = 2080;
                        v84 = v25;
                        v26 = v20;
                        v27 = "#I %s%s%s%staking out %s from %s - already queried";
                        goto LABEL_42;
                      }

                      v59 = objc_opt_new();
                      v65 = 0u;
                      v66 = 0u;
                      v63 = 0u;
                      v64 = 0u;
                      obj = v19;
                      v40 = [v19 countByEnumeratingWithState:&v63 objects:v72 count:16];
                      if (v40)
                      {
                        v41 = *v64;
                        do
                        {
                          for (k = 0; k != v40; k = k + 1)
                          {
                            if (*v64 != v41)
                            {
                              objc_enumerationMutation(obj);
                            }

                            v43 = *(*(&v63 + 1) + 8 * k);
                            if (([v17 containsObject:v43] & 1) == 0)
                            {
                              [v59 addObject:v43];
                            }
                          }

                          v40 = [obj countByEnumeratingWithState:&v63 objects:v72 count:16];
                        }

                        while (v40);
                      }

                      v44 = [v62 mutableCopy];
                      [v44 setValue:v59 forKey:v11];
                      [v56 addObject:v44];
                      v3 = v54;
                      v45 = **(v54 + 56);
                      a2 = v55;
                      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
                      {
                        v46 = PersonalityInfo::logPrefix(**(v54 + 16));
                        v48 = *(v54 + 64);
                        v47 = *(v54 + 72);
                        v49 = [v9 cStringUsingEncoding:4];
                        v50 = [v53 cStringUsingEncoding:4];
                        *buf = v52;
                        v74 = v46;
                        v75 = 2080;
                        v76 = " ";
                        v77 = 2080;
                        v78 = v48;
                        v79 = 2080;
                        v80 = v47;
                        v81 = 2080;
                        v82 = v49;
                        v83 = 2080;
                        v84 = v50;
                        v26 = v45;
                        v27 = "#I %s%s%s%sreplace %s in %s with wide one";
LABEL_42:
                        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, v27, buf, 0x3Eu);
                        v3 = v54;
                      }
                    }

                    else
                    {
                      v28 = **(v3 + 56);
                      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
                      {
                        v29 = PersonalityInfo::logPrefix(**(v3 + 16));
                        v30 = v3;
                        v32 = *(v3 + 64);
                        v31 = *(v3 + 72);
                        v33 = [v9 cStringUsingEncoding:4];
                        *buf = 136316162;
                        v74 = v29;
                        v75 = 2080;
                        v76 = " ";
                        v77 = 2080;
                        v78 = v32;
                        v79 = 2080;
                        v80 = v31;
                        v81 = 2080;
                        v82 = v33;
                        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%ssetProvisioning '%s' state is missing or mismatch. Ignore", buf, 0x34u);
                        v3 = v30;
                        a2 = v55;
                      }
                    }

LABEL_43:
                    v7 = v12;
                    v8 = v11;
                    if ([v5 count] == j)
                    {
                      [v56 addObject:v62];
                    }
                  }
                }

                v58 = [a2 countByEnumeratingWithState:&v67 objects:v85 count:16];
              }

              while (v58);
            }

            a2 = v56;
          }
        }
      }
    }
  }

  sub_100005978(&v71);
  return a2;
}

void *sub_100539720(uint64_t a1, void *a2)
{
  v6 = 0;
  sub_10053562C(a1, 4, &v6);
  v4 = sub_1005387D4(a1, a2, v6, 0);
  sub_100005978(&v6);
  return v4;
}

void sub_100539780(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100005978(va);
  _Unwind_Resume(a1);
}

void *sub_100539794(uint64_t a1, void *a2)
{
  v6 = 0;
  sub_10053562C(a1, 4, &v6);
  v4 = sub_1005389F8(a1, a2, v6);
  sub_100005978(&v6);
  return v4;
}

void sub_1005397F0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100005978(va);
  _Unwind_Resume(a1);
}

id sub_100539804(uint64_t a1, void *a2)
{
  v6 = 0;
  sub_10053562C(a1, 5, &v6);
  v4 = sub_1005383A8(a1, a2, v6, @"notifications", @"notification-name");
  sub_100005978(&v6);
  return v4;
}

void sub_100539870(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100005978(va);
  _Unwind_Resume(a1);
}

void *sub_100539884(uint64_t a1, void *a2)
{
  v6 = 0;
  sub_10053562C(a1, 6, &v6);
  v4 = sub_100537F90(a1, a2, v6, @"notifications", @"notification-name");
  sub_100005978(&v6);
  return v4;
}

void sub_1005398F0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100005978(va);
  _Unwind_Resume(a1);
}

id sub_100539904(uint64_t a1, void *a2)
{
  v6 = 0;
  sub_10053562C(a1, 6, &v6);
  v4 = sub_1005383A8(a1, a2, v6, @"notifications", @"notification-name");
  sub_100005978(&v6);
  return v4;
}

void sub_100539970(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100005978(va);
  _Unwind_Resume(a1);
}

BOOL sub_100539984(uint64_t a1, void *a2)
{
  v6 = 0;
  sub_10053562C(a1, 13, &v6);
  v4 = sub_1005387D4(a1, a2, v6, 0) != 0;
  sub_100005978(&v6);
  return v4;
}

void sub_1005399E8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100005978(va);
  _Unwind_Resume(a1);
}

void *sub_1005399FC(uint64_t a1, void *a2)
{
  v6 = 0;
  sub_10053562C(a1, 13, &v6);
  v4 = sub_1005389F8(a1, a2, v6);
  sub_100005978(&v6);
  return v4;
}

void sub_100539A58(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100005978(va);
  _Unwind_Resume(a1);
}

BOOL sub_100539A6C(uint64_t a1, void *a2)
{
  v6 = 0;
  sub_10053562C(a1, 12, &v6);
  v4 = sub_1005387D4(a1, a2, v6, 0) != 0;
  sub_100005978(&v6);
  return v4;
}

void sub_100539AD0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100005978(va);
  _Unwind_Resume(a1);
}

void *sub_100539AE4(uint64_t a1, void *a2)
{
  v6 = 0;
  sub_10053562C(a1, 12, &v6);
  v4 = sub_1005389F8(a1, a2, v6);
  sub_100005978(&v6);
  return v4;
}

void sub_100539B40(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100005978(va);
  _Unwind_Resume(a1);
}

void *sub_100539B54(uint64_t a1, void *a2)
{
  v6 = 0;
  sub_10053562C(a1, 14, &v6);
  v4 = sub_1005387D4(a1, a2, v6, 0);
  sub_100005978(&v6);
  return v4;
}

void sub_100539BB4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100005978(va);
  _Unwind_Resume(a1);
}

void *sub_100539BC8(uint64_t a1, void *a2)
{
  v6 = 0;
  sub_10053562C(a1, 14, &v6);
  v4 = sub_1005389F8(a1, a2, v6);
  sub_100005978(&v6);
  return v4;
}

void sub_100539C24(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100005978(va);
  _Unwind_Resume(a1);
}

void *sub_100539C38(uint64_t a1, void *a2)
{
  v6 = 0;
  sub_10053562C(a1, 15, &v6);
  v4 = sub_1005387D4(a1, a2, v6, 0);
  sub_100005978(&v6);
  return v4;
}

void sub_100539C98(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100005978(va);
  _Unwind_Resume(a1);
}

void *sub_100539CAC(uint64_t a1, void *a2)
{
  v6 = 0;
  sub_10053562C(a1, 15, &v6);
  v4 = sub_1005389F8(a1, a2, v6);
  sub_100005978(&v6);
  return v4;
}

void sub_100539D08(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100005978(va);
  _Unwind_Resume(a1);
}

id sub_100539D1C(uint64_t a1)
{
  v4 = 0;
  sub_10053562C(a1, 16, &v4);
  v2 = sub_100537730(a1, v4);
  sub_100005978(&v4);
  return v2;
}

void sub_100539D70(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100005978(va);
  _Unwind_Resume(a1);
}

void *sub_100539D84(uint64_t a1, void *a2)
{
  v6 = 0;
  sub_10053562C(a1, 17, &v6);
  v4 = sub_1005387D4(a1, a2, v6, 0);
  sub_100005978(&v6);
  return v4;
}

void sub_100539DE4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100005978(va);
  _Unwind_Resume(a1);
}

void *sub_100539DF8(uint64_t a1, void *a2)
{
  v6 = 0;
  sub_10053562C(a1, 17, &v6);
  v4 = sub_1005389F8(a1, a2, v6);
  sub_100005978(&v6);
  return v4;
}

void sub_100539E54(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100005978(va);
  _Unwind_Resume(a1);
}

void *sub_100539E68(uint64_t a1, void *a2)
{
  v6 = 0;
  sub_10053562C(a1, 18, &v6);
  v4 = sub_1005387D4(a1, a2, v6, 0);
  sub_100005978(&v6);
  return v4;
}

void sub_100539EC8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100005978(va);
  _Unwind_Resume(a1);
}

void *sub_100539EDC(uint64_t a1, void *a2)
{
  v6 = 0;
  sub_10053562C(a1, 20, &v6);
  v4 = sub_1005387D4(a1, a2, v6, 0);
  sub_100005978(&v6);
  return v4;
}

void sub_100539F3C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100005978(va);
  _Unwind_Resume(a1);
}

void *sub_100539F50(uint64_t a1, void *a2)
{
  v6 = 0;
  sub_10053562C(a1, 18, &v6);
  v4 = sub_1005389F8(a1, a2, v6);
  sub_100005978(&v6);
  return v4;
}

void sub_100539FAC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100005978(va);
  _Unwind_Resume(a1);
}

void *sub_100539FC0(uint64_t a1, void *a2)
{
  v6 = 0;
  sub_10053562C(a1, 20, &v6);
  v4 = sub_1005389F8(a1, a2, v6);
  sub_100005978(&v6);
  return v4;
}

void sub_10053A01C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100005978(va);
  _Unwind_Resume(a1);
}

BOOL sub_10053A030(uint64_t a1)
{
  v4 = 0;
  sub_10053562C(a1, 19, &v4);
  v2 = sub_100537730(a1, v4) != 0;
  sub_100005978(&v4);
  return v2;
}

void sub_10053A088(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100005978(va);
  _Unwind_Resume(a1);
}

BOOL sub_10053A09C(uint64_t a1)
{
  v4 = 0;
  sub_10053562C(a1, 8, &v4);
  v2 = sub_100537730(a1, v4) != 0;
  sub_100005978(&v4);
  return v2;
}

void sub_10053A0F4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100005978(va);
  _Unwind_Resume(a1);
}

BOOL sub_10053A108(uint64_t a1, int a2, void *a3, uint64_t a4)
{
  v9 = 0;
  sub_10053562C(a1, a2, &v9);
  v7 = sub_1005387D4(a1, a3, v9, a4) != 0;
  sub_100005978(&v9);
  return v7;
}

void sub_10053A174(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100005978(va);
  _Unwind_Resume(a1);
}

void *sub_10053A188(uint64_t a1, int a2, void *a3)
{
  v7 = 0;
  sub_10053562C(a1, a2, &v7);
  v5 = sub_1005389F8(a1, a3, v7);
  sub_100005978(&v7);
  return v5;
}

void sub_10053A1E0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100005978(va);
  _Unwind_Resume(a1);
}

BOOL sub_10053A1F4(uint64_t a1, int a2, void *a3, uint64_t a4)
{
  v9 = 0;
  sub_10053562C(a1, a2, &v9);
  v7 = sub_1005387D4(a1, a3, v9, a4) != 0;
  sub_100005978(&v9);
  return v7;
}

void sub_10053A260(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100005978(va);
  _Unwind_Resume(a1);
}

id sub_10053A274(uint64_t a1, int a2, int a3)
{
  v16 = 0;
  ctu::ns::AutoPool::AutoPool(&v16);
  if (*(a1 + 40))
  {
    v6 = sub_10053572C(a1, 11);
    v15 = 0;
    sub_10053562C(a1, 11, &v15);
    v7 = v6;
    if (v6 || (v7 = [SubscriberRequestTransactionElement requestWithAction:v15 andAnnotation:0]) != 0)
    {
      if (a3)
      {
        v8 = [v7 info];
        [v8 setObject:sub_10053452C(v8) forKey:@"usage-types"];
      }

      if (a2)
      {
        v9 = [v7 info];
        [v9 setObject:sub_1005344B8(v9) forKey:@"subscription-types"];
      }

      if (!v6)
      {
        sub_100534920(a1, v15, v7);
      }
    }

    else
    {
      v10 = **(a1 + 56);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = PersonalityInfo::logPrefix(**(a1 + 16));
        v12 = *(a1 + 64);
        v13 = *(a1 + 72);
        *buf = 136315906;
        v18 = v11;
        v19 = 2080;
        v20 = " ";
        v21 = 2080;
        v22 = v12;
        v23 = 2080;
        v24 = v13;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#W %s%s%s%sUnable to allocate subscription and usage status request", buf, 0x2Au);
      }

      v7 = 0;
    }

    sub_100005978(&v15);
  }

  else
  {
    v7 = 0;
  }

  ctu::ns::AutoPool::~AutoPool(&v16);
  return v7;
}

void sub_10053A444(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, char a10)
{
  sub_100005978(&a9);
  ctu::ns::AutoPool::~AutoPool(&a10);
  _Unwind_Resume(a1);
}

uint64_t sub_10053A478(uint64_t a1, uint64_t a2)
{
  v109 = 0;
  ctu::ns::AutoPool::AutoPool(&v109);
  if (*(a1 + 40))
  {
    if (*a2)
    {
      v108 = 0;
      sub_10053562C(a1, 28, &v108);
      v4 = [SubscriberRequestTransactionElement requestWithAction:v108 andAnnotation:0];
      v5 = v4;
      if (!v4)
      {
        v21 = **(a1 + 56);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v22 = PersonalityInfo::logPrefix(**(a1 + 16));
          v23 = *(a1 + 64);
          v24 = *(a1 + 72);
          *buf = 136315906;
          *&buf[4] = v22;
          *&buf[12] = 2080;
          *&buf[14] = " ";
          *&buf[22] = 2080;
          v116 = v23;
          v117 = 2080;
          v118 = v24;
          v15 = "#W %s%s%s%sUnable to allocation authentication request";
          v25 = v21;
          v26 = 42;
LABEL_103:
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, v15, buf, v26);
          goto LABEL_119;
        }

        goto LABEL_119;
      }

      [objc_msgSend(v4 "info")];
      v6 = *a2;
      if ((*a2 - 3) > 2)
      {
LABEL_66:
        if (v6 - 1 <= 1)
        {
          if (sub_10053B684(a1))
          {
            [objc_msgSend(v5 "info")];
          }

          else
          {
            v42 = *(a2 + 127);
            if ((v42 & 0x80u) != 0)
            {
              v42 = *(a2 + 112);
            }

            if (v42 && (sub_10053B7A0(a1) & 1) == 0)
            {
              v114 = 0;
              *&__dst = 0;
              if ((ctu::cf::convert_copy() & 1) == 0)
              {
                v74 = **(a1 + 56);
                if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
                {
                  v75 = PersonalityInfo::logPrefix(**(a1 + 16));
                  v76 = *(a1 + 64);
                  v77 = *(a1 + 72);
                  *buf = 136315906;
                  *&buf[4] = v75;
                  *&buf[12] = 2080;
                  *&buf[14] = " ";
                  *&buf[22] = 2080;
                  v116 = v76;
                  v117 = 2080;
                  v118 = v77;
                  _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_DEFAULT, "#W %s%s%s%sError converting token", buf, 0x2Au);
                }

                p_value = &v114;
                goto LABEL_118;
              }

              v43 = v114;
              v114 = __dst;
              *buf = v43;
              sub_100005978(buf);
              v44 = [v5 info];
              sub_10005C7A4(&v97, &v114);
              [v44 setValue:v97 forKey:@"token"];
              sub_100005978(&v97);
              sub_100005978(&v114);
            }
          }

          v6 = *a2;
        }

        if (v6 == 5)
        {
LABEL_77:
          sub_100534920(a1, v108, v5);
          v17 = 1;
LABEL_120:
          sub_100005978(&v108);
          goto LABEL_121;
        }

        v45 = *(a2 + 31);
        if ((v45 & 0x80u) != 0)
        {
          v45 = *(a2 + 16);
        }

        if (!v45)
        {
          v10 = **(a1 + 56);
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            v58 = PersonalityInfo::logPrefix(**(a1 + 16));
            v60 = *(a1 + 64);
            v59 = *(a1 + 72);
            v61 = sub_100A7F778(*a2);
            *buf = 136316162;
            *&buf[4] = v58;
            *&buf[12] = 2080;
            *&buf[14] = " ";
            *&buf[22] = 2080;
            v116 = v60;
            v117 = 2080;
            v118 = v59;
            v119 = 2080;
            v120 = v61;
            v15 = "#W %s%s%s%sAuthType is '%s' but SubscriberID is missing";
            goto LABEL_102;
          }

          goto LABEL_119;
        }

        value = 0;
        *&__dst = 0;
        if ((ctu::cf::convert_copy() & 1) == 0)
        {
          v62 = **(a1 + 56);
          if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
          {
            v63 = PersonalityInfo::logPrefix(**(a1 + 16));
            v64 = *(a1 + 64);
            v65 = *(a1 + 72);
            *buf = 136315906;
            *&buf[4] = v63;
            *&buf[12] = 2080;
            *&buf[14] = " ";
            *&buf[22] = 2080;
            v116 = v64;
            v117 = 2080;
            v118 = v65;
            _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, "#W %s%s%s%sError converting subscriber string", buf, 0x2Au);
          }

          goto LABEL_117;
        }

        v46 = value;
        value = __dst;
        *buf = v46;
        sub_100005978(buf);
        v47 = [v5 info];
        sub_10005C7A4(&v96, &value);
        [v47 setValue:v96 forKey:@"subscriber-id"];
        sub_100005978(&v96);
        v48 = *(a2 + 55);
        if ((v48 & 0x80u) != 0)
        {
          v48 = *(a2 + 40);
        }

        if (v48)
        {
          v114 = 0;
          *&__dst = 0;
          if ((ctu::cf::convert_copy() & 1) == 0)
          {
            v66 = **(a1 + 56);
            if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
            {
              v67 = PersonalityInfo::logPrefix(**(a1 + 16));
              v68 = *(a1 + 64);
              v69 = *(a1 + 72);
              *buf = 136315906;
              *&buf[4] = v67;
              *&buf[12] = 2080;
              *&buf[14] = " ";
              *&buf[22] = 2080;
              v116 = v68;
              v117 = 2080;
              v118 = v69;
              v70 = "#W %s%s%s%sError converting uniqueId";
LABEL_115:
              _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_DEFAULT, v70, buf, 0x2Au);
            }

LABEL_116:
            sub_100005978(&v114);
LABEL_117:
            p_value = &value;
LABEL_118:
            sub_100005978(p_value);
            goto LABEL_119;
          }

          v49 = v114;
          v114 = __dst;
          *buf = v49;
          sub_100005978(buf);
          v50 = [v5 info];
          sub_10005C7A4(&v95, &v114);
          [v50 setValue:v95 forKey:@"unique-id"];
          sub_100005978(&v95);
          sub_100005978(&v114);
        }

        v51 = *(a2 + 79);
        if ((v51 & 0x80u) != 0)
        {
          v51 = *(a2 + 64);
        }

        if (!v51)
        {
          goto LABEL_92;
        }

        v114 = 0;
        *&__dst = 0;
        if (ctu::cf::convert_copy())
        {
          v52 = v114;
          v114 = __dst;
          *buf = v52;
          sub_100005978(buf);
          v53 = [v5 info];
          sub_10005C7A4(&v94, &v114);
          [v53 setValue:v94 forKey:@"alias-id"];
          sub_100005978(&v94);
          sub_100005978(&v114);
LABEL_92:
          v54 = *(a2 + 103);
          if ((v54 & 0x80u) != 0)
          {
            v54 = *(a2 + 88);
          }

          if (!v54)
          {
            goto LABEL_97;
          }

          v114 = 0;
          *&__dst = 0;
          if (ctu::cf::convert_copy())
          {
            v55 = v114;
            v114 = __dst;
            *buf = v55;
            sub_100005978(buf);
            v56 = [v5 info];
            sub_10005C7A4(&v93, &v114);
            [v56 setValue:v93 forKey:@"device-account-identifier"];
            sub_100005978(&v93);
            sub_100005978(&v114);
LABEL_97:
            if (*(a2 + 200) == 1)
            {
              v57 = [v5 info];
              if (*(a2 + 199) < 0)
              {
                sub_100005F2C(v90, *(a2 + 176), *(a2 + 184));
              }

              else
              {
                *v90 = *(a2 + 176);
                v91 = *(a2 + 192);
              }

              if (SHIBYTE(v91) < 0)
              {
                sub_100005F2C(&__dst, v90[0], v90[1]);
              }

              else
              {
                __dst = *v90;
                v112 = v91;
              }

              v110 = 0;
              if (SHIBYTE(v112) < 0)
              {
                sub_100005F2C(buf, __dst, *(&__dst + 1));
              }

              else
              {
                *buf = __dst;
                *&buf[16] = v112;
              }

              v113 = 0;
              if (ctu::cf::convert_copy())
              {
                v83 = v110;
                v110 = v113;
                v114 = v83;
                sub_100005978(&v114);
              }

              if ((buf[23] & 0x80000000) != 0)
              {
                operator delete(*buf);
              }

              v92 = v110;
              v110 = 0;
              sub_100005978(&v110);
              if (SHIBYTE(v112) < 0)
              {
                operator delete(__dst);
              }

              [v57 setValue:v92 forKey:@"gid1"];
              sub_100005978(&v92);
              if (SHIBYTE(v91) < 0)
              {
                operator delete(v90[0]);
              }
            }

            if (*(a2 + 232) == 1)
            {
              v84 = [v5 info];
              if (*(a2 + 231) < 0)
              {
                sub_100005F2C(v87, *(a2 + 208), *(a2 + 216));
              }

              else
              {
                *v87 = *(a2 + 208);
                v88 = *(a2 + 224);
              }

              if (SHIBYTE(v88) < 0)
              {
                sub_100005F2C(&__dst, v87[0], v87[1]);
              }

              else
              {
                __dst = *v87;
                v112 = v88;
              }

              v110 = 0;
              if (SHIBYTE(v112) < 0)
              {
                sub_100005F2C(buf, __dst, *(&__dst + 1));
              }

              else
              {
                *buf = __dst;
                *&buf[16] = v112;
              }

              v113 = 0;
              if (ctu::cf::convert_copy())
              {
                v85 = v110;
                v110 = v113;
                v114 = v85;
                sub_100005978(&v114);
              }

              if ((buf[23] & 0x80000000) != 0)
              {
                operator delete(*buf);
              }

              v86 = v110;
              v89 = v110;
              v110 = 0;
              sub_100005978(&v110);
              if (SHIBYTE(v112) < 0)
              {
                operator delete(__dst);
              }

              [v84 setValue:v86 forKey:{@"gid2", v87[0]}];
              sub_100005978(&v89);
              if (SHIBYTE(v88) < 0)
              {
                operator delete(v87[0]);
              }
            }

            sub_100005978(&value);
            goto LABEL_77;
          }

          v66 = **(a1 + 56);
          if (!os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_116;
          }

          v79 = PersonalityInfo::logPrefix(**(a1 + 16));
          v80 = *(a1 + 64);
          v81 = *(a1 + 72);
          *buf = 136315906;
          *&buf[4] = v79;
          *&buf[12] = 2080;
          *&buf[14] = " ";
          *&buf[22] = 2080;
          v116 = v80;
          v117 = 2080;
          v118 = v81;
          v70 = "#W %s%s%s%sError converting deviceAccountId";
          goto LABEL_115;
        }

        v66 = **(a1 + 56);
        if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
        {
          v71 = PersonalityInfo::logPrefix(**(a1 + 16));
          v72 = *(a1 + 64);
          v73 = *(a1 + 72);
          *buf = 136315906;
          *&buf[4] = v71;
          *&buf[12] = 2080;
          *&buf[14] = " ";
          *&buf[22] = 2080;
          v116 = v72;
          v117 = 2080;
          v118 = v73;
          v70 = "#W %s%s%s%sError converting aliasId";
          goto LABEL_115;
        }

        goto LABEL_116;
      }

      v7 = *(a2 + 127);
      v8 = v7;
      v9 = *(a2 + 112);
      if ((v7 & 0x80u) != 0)
      {
        v7 = *(a2 + 112);
      }

      if (!v7)
      {
        v10 = **(a1 + 56);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v27 = PersonalityInfo::logPrefix(**(a1 + 16));
          v29 = *(a1 + 64);
          v28 = *(a1 + 72);
          v30 = sub_100A7F778(*a2);
          *buf = 136316162;
          *&buf[4] = v27;
          *&buf[12] = 2080;
          *&buf[14] = " ";
          *&buf[22] = 2080;
          v116 = v29;
          v117 = 2080;
          v118 = v28;
          v119 = 2080;
          v120 = v30;
          v15 = "#I %s%s%s%sAuthType is '%s' but token-element is missing";
          goto LABEL_102;
        }

LABEL_119:
        v17 = 0;
        goto LABEL_120;
      }

      if (v6 == 5 && (*(a2 + 152) & 1) == 0)
      {
        v10 = **(a1 + 56);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v11 = PersonalityInfo::logPrefix(**(a1 + 16));
          v13 = *(a1 + 64);
          v12 = *(a1 + 72);
          v14 = sub_100A7F778(*a2);
          *buf = 136316162;
          *&buf[4] = v11;
          *&buf[12] = 2080;
          *&buf[14] = " ";
          *&buf[22] = 2080;
          v116 = v13;
          v117 = 2080;
          v118 = v12;
          v119 = 2080;
          v120 = v14;
          v15 = "#I %s%s%s%sAuthType is '%s' but token-element association is missing";
LABEL_102:
          v25 = v10;
          v26 = 52;
          goto LABEL_103;
        }

        goto LABEL_119;
      }

      value = 0;
      if (v8 < 0)
      {
        sub_100005F2C(__p, *(a2 + 104), v9);
      }

      else
      {
        *__p = *(a2 + 104);
        v106 = *(a2 + 120);
      }

      if (SHIBYTE(v106) < 0)
      {
        sub_100005F2C(&__dst, __p[0], __p[1]);
      }

      else
      {
        __dst = *__p;
        v112 = v106;
      }

      v110 = 0;
      if (SHIBYTE(v112) < 0)
      {
        sub_100005F2C(buf, __dst, *(&__dst + 1));
      }

      else
      {
        *buf = __dst;
        *&buf[16] = v112;
      }

      v113 = 0;
      if (ctu::cf::convert_copy())
      {
        v31 = v110;
        v110 = v113;
        v114 = v31;
        sub_100005978(&v114);
      }

      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }

      value = v110;
      v110 = 0;
      sub_100005978(&v110);
      if (SHIBYTE(v112) < 0)
      {
        operator delete(__dst);
      }

      if (SHIBYTE(v106) < 0)
      {
        operator delete(__p[0]);
      }

      v32 = *a2;
      if (*a2 == 3)
      {
        v39 = [v5 info];
        sub_10005C7A4(&v104, &value);
        [v39 setValue:v104 forKey:@"service-token"];
        v38 = &v104;
      }

      else
      {
        if (v32 != 4)
        {
          if (v32 == 5)
          {
            theDict = 0;
            Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
            if (Mutable)
            {
              v34 = theDict;
              theDict = Mutable;
              *buf = v34;
              sub_1000296E0(buf);
            }

            CFDictionarySetValue(theDict, @"unblinded-sig", value);
            v35 = theDict;
            if (*(a2 + 151) < 0)
            {
              sub_100005F2C(v99, *(a2 + 128), *(a2 + 136));
            }

            else
            {
              *v99 = *(a2 + 128);
              v100 = *(a2 + 144);
            }

            if (SHIBYTE(v100) < 0)
            {
              sub_100005F2C(&__dst, v99[0], v99[1]);
            }

            else
            {
              __dst = *v99;
              v112 = v100;
            }

            v110 = 0;
            if (SHIBYTE(v112) < 0)
            {
              sub_100005F2C(buf, __dst, *(&__dst + 1));
            }

            else
            {
              *buf = __dst;
              *&buf[16] = v112;
            }

            v113 = 0;
            if (ctu::cf::convert_copy())
            {
              v40 = v110;
              v110 = v113;
              v114 = v40;
              sub_100005978(&v114);
            }

            if ((buf[23] & 0x80000000) != 0)
            {
              operator delete(*buf);
            }

            v101 = v110;
            v110 = 0;
            sub_100005978(&v110);
            if (SHIBYTE(v112) < 0)
            {
              operator delete(__dst);
            }

            CFDictionarySetValue(v35, @"unblinded-token", v101);
            sub_100005978(&v101);
            if (SHIBYTE(v100) < 0)
            {
              operator delete(v99[0]);
            }

            v41 = [v5 info];
            sub_100029714(&v98, &theDict);
            [v41 setValue:v98 forKey:@"unblinded-data"];
            sub_1000296E0(&v98);
            sub_1000296E0(&theDict);
          }

          goto LABEL_65;
        }

        if (*(a2 + 168) == 1)
        {
          v36 = [v5 info];
          if ((*(a2 + 168) & 1) == 0)
          {
            sub_1000D1644();
          }

          [v36 setValue:+[NSNumber numberWithLongLong:](NSNumber forKey:{"numberWithLongLong:", *(a2 + 160)), @"token-type"}];
        }

        v37 = [v5 info];
        sub_10005C7A4(&v103, &value);
        [v37 setValue:v103 forKey:@"transfer-token"];
        v38 = &v103;
      }

      sub_100005978(v38);
LABEL_65:
      sub_100005978(&value);
      v6 = *a2;
      goto LABEL_66;
    }

    v17 = 1;
  }

  else
  {
    v16 = **(a1 + 56);
    v17 = 0;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v18 = PersonalityInfo::logPrefix(**(a1 + 16));
      v19 = *(a1 + 64);
      v20 = *(a1 + 72);
      *buf = 136315906;
      *&buf[4] = v18;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      *&buf[22] = 2080;
      v116 = v19;
      v117 = 2080;
      v118 = v20;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#W %s%s%s%s'fRequests' empty - nothing to add Authentication to - bail-out", buf, 0x2Au);
      v17 = 0;
    }
  }

LABEL_121:
  ctu::ns::AutoPool::~AutoPool(&v109);
  return v17;
}

void sub_10053B404(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36, uint64_t a37, const void *a38)
{
  sub_100005978((v38 - 184));
  if (*(v38 - 153) < 0)
  {
    operator delete(*(v38 - 176));
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_100005978(&a38);
  sub_100005978((v38 - 200));
  ctu::ns::AutoPool::~AutoPool((v38 - 192));
  _Unwind_Resume(a1);
}

uint64_t sub_10053B684(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 40) objectEnumerator];
  if (v3 && (v4 = v3, v13 = 0u, v14 = 0u, v11 = 0u, v12 = 0u, (v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16]) != 0))
  {
    v6 = v5;
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        if ([*(*(&v11 + 1) + 8 * i) requiresSecureIntent])
        {
          v9 = 1;
          goto LABEL_13;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      v9 = 0;
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v9 = 0;
  }

LABEL_13:
  objc_autoreleasePoolPop(v2);
  return v9;
}

uint64_t sub_10053B7A0(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 40) objectEnumerator];
  if (v3 && (v4 = v3, v13 = 0u, v14 = 0u, v11 = 0u, v12 = 0u, (v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16]) != 0))
  {
    v6 = v5;
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        if ([*(*(&v11 + 1) + 8 * i) requiresFullAuthentication])
        {
          v9 = 1;
          goto LABEL_13;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      v9 = 0;
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v9 = 0;
  }

LABEL_13:
  objc_autoreleasePoolPop(v2);
  return v9;
}

void sub_10053B8BC(uint64_t a1)
{
  v3 = 0;
  ctu::ns::AutoPool::AutoPool(&v3);
  v2 = 0;
  sub_10053562C(a1, 28, &v2);
  sub_100535354(a1, v2);
  sub_100005978(&v2);
  ctu::ns::AutoPool::~AutoPool(&v3);
}

void sub_10053B920(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, char a10)
{
  sub_100005978(&a9);
  ctu::ns::AutoPool::~AutoPool(&a10);
  _Unwind_Resume(a1);
}

BOOL sub_10053B944(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v25 = 0;
  ctu::ns::AutoPool::AutoPool(&v25);
  v6 = *(a2 + 23);
  if ((v6 & 0x80u) != 0)
  {
    v6 = a2[1];
  }

  if (v6)
  {
    v24 = 0;
    sub_10053562C(a1, 29, &v24);
    v7 = [SubscriberRequestTransactionElement requestWithAction:v24 andAnnotation:0];
    v8 = v7;
    v9 = v7 != 0;
    if (v7)
    {
      v10 = [v7 info];
      if (*(a2 + 23) >= 0)
      {
        v11 = a2;
      }

      else
      {
        v11 = *a2;
      }

      [v10 setObject:+[NSString stringWithUTF8String:](NSString forKey:{"stringWithUTF8String:", v11), @"payload"}];
      v12 = *(a3 + 23);
      if ((v12 & 0x80u) != 0)
      {
        v12 = a3[1];
      }

      if (v12)
      {
        v13 = [v8 info];
        if (*(a3 + 23) >= 0)
        {
          v14 = a3;
        }

        else
        {
          v14 = *a3;
        }

        [v13 setObject:+[NSString stringWithUTF8String:](NSString forKey:{"stringWithUTF8String:", v14), @"euicc-signature"}];
      }

      sub_100534920(a1, v24, v8);
    }

    else
    {
      v19 = **(a1 + 56);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = PersonalityInfo::logPrefix(**(a1 + 16));
        v21 = *(a1 + 64);
        v22 = *(a1 + 72);
        *buf = 136315906;
        v27 = v20;
        v28 = 2080;
        v29 = " ";
        v30 = 2080;
        v31 = v21;
        v32 = 2080;
        v33 = v22;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#W %s%s%s%sUnable to allocate challenge request", buf, 0x2Au);
      }
    }

    sub_100005978(&v24);
  }

  else
  {
    v15 = **(a1 + 56);
    v9 = 0;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = PersonalityInfo::logPrefix(**(a1 + 16));
      v17 = *(a1 + 64);
      v18 = *(a1 + 72);
      *buf = 136315906;
      v27 = v16;
      v28 = 2080;
      v29 = " ";
      v30 = 2080;
      v31 = v17;
      v32 = 2080;
      v33 = v18;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#W %s%s%s%sChallenge Payload is invalid", buf, 0x2Au);
      v9 = 0;
    }
  }

  ctu::ns::AutoPool::~AutoPool(&v25);
  return v9;
}

void sub_10053BBD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, char a10)
{
  sub_100005978(&a9);
  ctu::ns::AutoPool::~AutoPool(&a10);
  _Unwind_Resume(a1);
}

void sub_10053BC08(uint64_t a1)
{
  v3 = 0;
  ctu::ns::AutoPool::AutoPool(&v3);
  sub_10053562C(a1, 29, &v2);
  sub_100535354(a1, v2);
  sub_100005978(&v2);
  ctu::ns::AutoPool::~AutoPool(&v3);
}

void sub_10053BC68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, char a10)
{
  sub_100005978(&a9);
  ctu::ns::AutoPool::~AutoPool(&a10);
  _Unwind_Resume(a1);
}

BOOL sub_10053BC8C(uint64_t a1, void *a2)
{
  v26 = 0;
  ctu::ns::AutoPool::AutoPool(&v26);
  if (!a2[2])
  {
    v14 = **(a1 + 56);
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_27;
    }

    v15 = PersonalityInfo::logPrefix(**(a1 + 16));
    v16 = *(a1 + 64);
    v17 = *(a1 + 72);
    LODWORD(__p[0]) = 136315906;
    *(__p + 4) = v15;
    WORD2(__p[1]) = 2080;
    *(&__p[1] + 6) = " ";
    HIWORD(__p[2]) = 2080;
    v28 = v16;
    v29 = 2080;
    v30 = v17;
    v18 = "#W %s%s%s%sVVM command is invalid";
LABEL_26:
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, v18, __p, 0x2Au);
    goto LABEL_27;
  }

  v4 = [NSMutableArray arrayWithCapacity:?];
  if (!v4)
  {
    v14 = **(a1 + 56);
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_27;
    }

    v19 = PersonalityInfo::logPrefix(**(a1 + 16));
    v20 = *(a1 + 64);
    v21 = *(a1 + 72);
    LODWORD(__p[0]) = 136315906;
    *(__p + 4) = v19;
    WORD2(__p[1]) = 2080;
    *(&__p[1] + 6) = " ";
    HIWORD(__p[2]) = 2080;
    v28 = v20;
    v29 = 2080;
    v30 = v21;
    v18 = "#W %s%s%s%sUnable to allocate VVM command array";
    goto LABEL_26;
  }

  v7 = *a2;
  v5 = a2 + 1;
  v6 = v7;
  if (v7 != v5)
  {
    do
    {
      v8 = *(v6 + 25);
      if (v8 != 4)
      {
        memset(__p, 0, sizeof(__p));
        sub_100A3E530(v8, __p);
        if (SHIBYTE(__p[2]) < 0)
        {
          if (!__p[1])
          {
            goto LABEL_11;
          }

          v9 = __p[0];
        }

        else
        {
          if (!HIBYTE(__p[2]))
          {
            goto LABEL_12;
          }

          v9 = __p;
        }

        [(NSMutableArray *)v4 addObject:[NSString stringWithCString:v9 encoding:1]];
        if (SHIBYTE(__p[2]) < 0)
        {
LABEL_11:
          operator delete(__p[0]);
        }
      }

LABEL_12:
      v10 = v6[1];
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
          v11 = v6[2];
          v12 = *v11 == v6;
          v6 = v11;
        }

        while (!v12);
      }

      v6 = v11;
    }

    while (v11 != v5);
  }

  if (![(NSMutableArray *)v4 count])
  {
    v14 = **(a1 + 56);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v22 = PersonalityInfo::logPrefix(**(a1 + 16));
      v23 = *(a1 + 64);
      v24 = *(a1 + 72);
      LODWORD(__p[0]) = 136315906;
      *(__p + 4) = v22;
      WORD2(__p[1]) = 2080;
      *(&__p[1] + 6) = " ";
      HIWORD(__p[2]) = 2080;
      v28 = v23;
      v29 = 2080;
      v30 = v24;
      v18 = "#W %s%s%s%sVVM command array contained no commands";
      goto LABEL_26;
    }

LABEL_27:
    v13 = 0;
    goto LABEL_28;
  }

  v13 = sub_1005375C4(a1, v4);
LABEL_28:
  ctu::ns::AutoPool::~AutoPool(&v26);
  return v13;
}

void sub_10053BF9C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v10 = 0;
  ctu::ns::AutoPool::AutoPool(&v10);
  v4 = sub_10053C0EC(a1);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  if (!sub_10053C6DC(a1, v5, v4, a2))
  {
    v6 = **(a1 + 56);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = PersonalityInfo::logPrefix(**(a1 + 16));
      v8 = *(a1 + 64);
      v9 = *(a1 + 72);
      *buf = 136315906;
      v12 = v7;
      v13 = 2080;
      v14 = " ";
      v15 = 2080;
      v16 = v8;
      v17 = 2080;
      v18 = v9;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#W %s%s%s%sUnable to generate JSON request", buf, 0x2Au);
    }
  }

  ctu::ns::AutoPool::~AutoPool(&v10);
}

void sub_10053C0B4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v4 = *v2;
  if (*v2)
  {
    *(v2 + 8) = v4;
    operator delete(v4);
  }

  ctu::ns::AutoPool::~AutoPool(va);
  _Unwind_Resume(a1);
}

id sub_10053C0EC(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v5 = [*(a1 + 40) allValues];
  v6 = [v5 countByEnumeratingWithState:&v49 objects:v65 count:16];
  if (!v6)
  {
    v33 = 0;
    goto LABEL_20;
  }

  v33 = 0;
  v7 = *v50;
  do
  {
    v8 = 0;
    do
    {
      if (*v50 != v7)
      {
        objc_enumerationMutation(v5);
      }

      v9 = *(*(&v49 + 1) + 8 * v8);
      v10 = [v9 action];
      sub_10053562C(a1, 28, buf);
      if ([v10 isEqualToString:*buf])
      {
        sub_100005978(buf);
LABEL_9:
        [v2 addObject:v9];
        goto LABEL_10;
      }

      v11 = [v9 action];
      sub_10053562C(a1, 29, __p);
      LODWORD(v11) = [v11 isEqualToString:__p[0]];
      sub_100005978(__p);
      sub_100005978(buf);
      if (v11)
      {
        goto LABEL_9;
      }

      v12 = [v9 action];
      sub_10053562C(a1, 4, buf);
      LODWORD(v12) = [v12 isEqualToString:*buf];
      sub_100005978(buf);
      if (v12)
      {
        v33 = v9;
      }

      else if ([objc_msgSend(v9 "action")])
      {
        [v4 addObject:v9];
      }

      else
      {
        [v3 addObject:v9];
      }

LABEL_10:
      v8 = v8 + 1;
    }

    while (v6 != v8);
    v13 = [v5 countByEnumeratingWithState:&v49 objects:v65 count:16];
    v6 = v13;
  }

  while (v13);
LABEL_20:
  [*(a1 + 40) removeAllObjects];
  v14 = objc_opt_new();
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v15 = [v2 countByEnumeratingWithState:&v45 objects:v64 count:16];
  if (v15)
  {
    v16 = *v46;
    do
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v46 != v16)
        {
          objc_enumerationMutation(v2);
        }

        v18 = *(*(&v45 + 1) + 8 * i);
        ++*(a1 + 32);
        [v18 setIdentifier:?];
        [*(a1 + 40) setObject:v18 forKey:{objc_msgSend(v18, "identifier")}];
        [v14 addObject:{objc_msgSend(v18, "info")}];
      }

      v15 = [v2 countByEnumeratingWithState:&v45 objects:v64 count:16];
    }

    while (v15);
  }

  v44 = 0u;
  v42 = 0u;
  v43 = 0u;
  v41 = 0u;
  v19 = [v3 countByEnumeratingWithState:&v41 objects:v63 count:16];
  if (v19)
  {
    v20 = *v42;
    do
    {
      for (j = 0; j != v19; j = j + 1)
      {
        if (*v42 != v20)
        {
          objc_enumerationMutation(v3);
        }

        v22 = *(*(&v41 + 1) + 8 * j);
        ++*(a1 + 32);
        [v22 setIdentifier:?];
        [*(a1 + 40) setObject:v22 forKey:{objc_msgSend(v22, "identifier")}];
        [v14 addObject:{objc_msgSend(v22, "info")}];
      }

      v19 = [v3 countByEnumeratingWithState:&v41 objects:v63 count:16];
    }

    while (v19);
  }

  if (v34)
  {
    ++*(a1 + 32);
    [v34 setIdentifier:?];
    [*(a1 + 40) setObject:v34 forKey:{objc_msgSend(v34, "identifier")}];
    [v14 addObject:{objc_msgSend(v34, "info")}];
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v23 = [v4 countByEnumeratingWithState:&v37 objects:v62 count:16];
  if (v23)
  {
    v24 = *v38;
    do
    {
      for (k = 0; k != v23; k = k + 1)
      {
        if (*v38 != v24)
        {
          objc_enumerationMutation(v4);
        }

        v26 = *(*(&v37 + 1) + 8 * k);
        ++*(a1 + 32);
        [v26 setIdentifier:?];
        [*(a1 + 40) setObject:v26 forKey:{objc_msgSend(v26, "identifier")}];
        [v14 addObject:{objc_msgSend(v26, "info")}];
      }

      v23 = [v4 countByEnumeratingWithState:&v37 objects:v62 count:16];
    }

    while (v23);
  }

  v27 = **(a1 + 56);
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    v28 = PersonalityInfo::logPrefix(**(a1 + 16));
    v30 = *(a1 + 64);
    v29 = *(a1 + 72);
    sub_100535024(a1, __p);
    if (v36 >= 0)
    {
      v31 = __p;
    }

    else
    {
      v31 = __p[0];
    }

    *buf = 136316162;
    *&buf[4] = v28;
    v54 = 2080;
    v55 = " ";
    v56 = 2080;
    v57 = v30;
    v58 = 2080;
    v59 = v29;
    v60 = 2082;
    v61 = v31;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sFinal request includes %{public}s", buf, 0x34u);
    if (v36 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return v14;
}

BOOL sub_10053C6DC(uint64_t a1, uint64_t a2, void *a3, char **a4)
{
  if (!a3 || ![a3 count] || !+[NSJSONSerialization isValidJSONObject:](NSJSONSerialization, "isValidJSONObject:", a3))
  {
    v17 = **(a1 + 56);
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
    result = 0;
    if (!v18)
    {
      return result;
    }

    v19 = PersonalityInfo::logPrefix(**(a1 + 16));
    v20 = *(a1 + 64);
    v21 = *(a1 + 72);
    *buf = 136315906;
    *&buf[4] = v19;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v28 = 2080;
    v29 = v20;
    v30 = 2080;
    v31 = v21;
    v22 = "#W %s%s%s%sInvalid JSON Object";
LABEL_12:
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, v22, buf, 0x2Au);
    return 0;
  }

  v26 = 0;
  v7 = [NSJSONSerialization dataWithJSONObject:a3 options:1 error:&v26];
  v8 = v7;
  if (!v7 || ![(NSData *)v7 length])
  {
    v17 = **(a1 + 56);
    result = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    v23 = PersonalityInfo::logPrefix(**(a1 + 16));
    v24 = *(a1 + 64);
    v25 = *(a1 + 72);
    *buf = 136315906;
    *&buf[4] = v23;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v28 = 2080;
    v29 = v24;
    v30 = 2080;
    v31 = v25;
    v22 = "#W %s%s%s%sUnable to serialize properly";
    goto LABEL_12;
  }

  a4[1] = *a4;
  v9 = [(NSData *)v8 bytes];
  if (!v9)
  {
    return 0;
  }

  v10 = *a4;
  v11 = [(NSData *)v8 length];
  sub_100553C7C(a4, v10, v9, &v11[v9], v11);
  v12 = **(a1 + 56);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = PersonalityInfo::logPrefix(**(a1 + 16));
    v14 = *(a1 + 64);
    v15 = *(a1 + 72);
    *buf = 136315906;
    *&buf[4] = v13;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v28 = 2080;
    v29 = v14;
    v30 = 2080;
    v31 = v15;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sGenerated Request:", buf, 0x2Au);
  }

  *buf = off_101E55860;
  *&buf[8] = a1;
  v29 = buf;
  logger::CFTypeRefLogger();
  sub_100007E44(buf);
  return 1;
}

void sub_10053C990(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100007E44(va);
  _Unwind_Resume(a1);
}

BOOL sub_10053C9AC(uint64_t a1, const __CFData *a2, uint64_t *a3)
{
  v146 = 0;
  ctu::ns::AutoPool::AutoPool(&v146);
  if (a2)
  {
    Length = CFDataGetLength(a2);
  }

  else
  {
    Length = 0;
  }

  v6 = **(a1 + 56);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = PersonalityInfo::logPrefix(**(a1 + 16));
    sub_101774178(v7, v157, Length, v6);
  }

  v8 = **(a1 + 56);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (!Length)
  {
    if (v9)
    {
      v99 = PersonalityInfo::logPrefix(**(a1 + 16));
      v100 = *(a1 + 64);
      v101 = *(a1 + 72);
      *buf = 136315906;
      *&buf[4] = v99;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      v148 = 2080;
      v149 = v100;
      v150 = 2080;
      v151 = v101;
      v102 = "#W %s%s%s%sError with input data";
LABEL_93:
      v103 = v8;
LABEL_98:
      v108 = 42;
      goto LABEL_99;
    }

LABEL_100:
    v18 = 0;
    goto LABEL_101;
  }

  if (v9)
  {
    v10 = PersonalityInfo::logPrefix(**(a1 + 16));
    v11 = *(a1 + 64);
    v12 = *(a1 + 72);
    *buf = 136315906;
    *&buf[4] = v10;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v148 = 2080;
    v149 = v11;
    v150 = 2080;
    v151 = v12;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sRAW JSON Response:", buf, 0x2Au);
  }

  *buf = off_101E558E0;
  *&buf[8] = a1;
  v149 = buf;
  logger::CFTypeRefLogger();
  sub_100007E44(buf);
  v145 = 0;
  v13 = [NSJSONSerialization JSONObjectWithData:a2 options:0 error:&v145];
  if (!v13)
  {
    v104 = **(a1 + 56);
    if (os_log_type_enabled(v104, OS_LOG_TYPE_DEFAULT))
    {
      v105 = PersonalityInfo::logPrefix(**(a1 + 16));
      v106 = *(a1 + 64);
      v107 = *(a1 + 72);
      *buf = 136316162;
      *&buf[4] = v105;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      v148 = 2080;
      v149 = v106;
      v150 = 2080;
      v151 = v107;
      v152 = 2112;
      v153 = v145;
      v102 = "#W %s%s%s%sInvalid JSON response, error: %@";
      v103 = v104;
      v108 = 52;
LABEL_99:
      _os_log_impl(&_mh_execute_header, v103, OS_LOG_TYPE_DEFAULT, v102, buf, v108);
      goto LABEL_100;
    }

    goto LABEL_100;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v109 = **(a1 + 56);
    if (os_log_type_enabled(v109, OS_LOG_TYPE_DEFAULT))
    {
      v110 = PersonalityInfo::logPrefix(**(a1 + 16));
      v111 = *(a1 + 64);
      v112 = *(a1 + 72);
      *buf = 136315906;
      *&buf[4] = v110;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      v148 = 2080;
      v149 = v111;
      v150 = 2080;
      v151 = v112;
      v102 = "#W %s%s%s%sUnexpected JSON format, should be Array";
      v103 = v109;
      goto LABEL_98;
    }

    goto LABEL_100;
  }

  v14 = [v13 count];
  v15 = v14;
  v16 = v14 << 32;
  v8 = **(a1 + 56);
  v17 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (!v16)
  {
    if (!v17)
    {
      goto LABEL_100;
    }

    v119 = PersonalityInfo::logPrefix(**(a1 + 16));
    v120 = *(a1 + 64);
    v121 = *(a1 + 72);
    *buf = 136315906;
    *&buf[4] = v119;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v148 = 2080;
    v149 = v120;
    v150 = 2080;
    v151 = v121;
    v102 = "#W %s%s%s%sEmpty JSON response";
    goto LABEL_93;
  }

  v18 = v15;
  if (v17)
  {
    v19 = PersonalityInfo::logPrefix(**(a1 + 16));
    v20 = *(a1 + 64);
    v21 = *(a1 + 72);
    v22 = "";
    if (v15 > 1)
    {
      v22 = "s";
    }

    *buf = 136316418;
    *&buf[4] = v19;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v148 = 2080;
    v149 = v20;
    v150 = 2080;
    v151 = v21;
    v152 = 2048;
    v153 = v15;
    v154 = 2080;
    *v155 = v22;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sReceived %lu Response%s", buf, 0x3Eu);
  }

  v143 = 0u;
  v144 = 0u;
  v141 = 0u;
  v142 = 0u;
  v23 = [v13 countByEnumeratingWithState:&v141 objects:v156 count:16];
  if (v23)
  {
    obj = v13;
    v129 = v15;
    v130 = 0;
    v137 = *v142;
    while (1)
    {
      v24 = 0;
      v136 = v23;
      do
      {
        if (*v142 != v137)
        {
          objc_enumerationMutation(obj);
        }

        v25 = *(*(&v141 + 1) + 8 * v24);
        v26 = objc_autoreleasePoolPush();
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v39 = **(a1 + 56);
          if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
          {
            v40 = PersonalityInfo::logPrefix(**(a1 + 16));
            v41 = *(a1 + 64);
            v42 = *(a1 + 72);
            *buf = 136315906;
            *&buf[4] = v40;
            *&buf[12] = 2080;
            *&buf[14] = " ";
            v148 = 2080;
            v149 = v41;
            v150 = 2080;
            v151 = v42;
            v36 = v39;
            v37 = "#W %s%s%s%sInvalid action response, skipping";
            goto LABEL_31;
          }

LABEL_33:
          LOBYTE(v47) = 0;
          goto LABEL_34;
        }

        v27 = [SubscriberResponseTransactionElement responseWithInfo:v25];
        [v27 identifier];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v43 = **(a1 + 56);
          if (!os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_33;
          }

          v44 = PersonalityInfo::logPrefix(**(a1 + 16));
          v45 = *(a1 + 64);
          v46 = *(a1 + 72);
          *buf = 136315906;
          *&buf[4] = v44;
          *&buf[12] = 2080;
          *&buf[14] = " ";
          v148 = 2080;
          v149 = v45;
          v150 = 2080;
          v151 = v46;
          v36 = v43;
          v37 = "#W %s%s%s%sResponse identifier is not a number";
LABEL_31:
          v38 = 42;
          goto LABEL_32;
        }

        v28 = [*(a1 + 40) objectForKey:{objc_msgSend(v27, "identifier")}];
        v29 = v28;
        if (v28)
        {
          [v27 setAction:{objc_msgSend(v28, "action")}];
          [v27 action];
          v30 = sub_10053DA28(a1);
          if (v30 == 30)
          {
            v31 = **(a1 + 56);
            if (!os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_33;
            }

            v32 = PersonalityInfo::logPrefix(**(a1 + 16));
            v34 = *(a1 + 64);
            v33 = *(a1 + 72);
            v35 = [objc_msgSend(v27 "action")];
            *buf = 136316162;
            *&buf[4] = v32;
            *&buf[12] = 2080;
            *&buf[14] = " ";
            v148 = 2080;
            v149 = v34;
            v150 = 2080;
            v151 = v33;
            v152 = 2080;
            v153 = v35;
            v36 = v31;
            v37 = "#I %s%s%s%sSkipping unknown action '%s'";
            v38 = 52;
LABEL_32:
            _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, v37, buf, v38);
            goto LABEL_33;
          }

          v53 = objc_autoreleasePoolPush();
          if ([objc_msgSend(v29 "description")])
          {
            v54 = **(a1 + 56);
            if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
            {
              log = v54;
              v55 = PersonalityInfo::logPrefix(**(a1 + 16));
              v131 = v53;
              v122 = *(a1 + 64);
              v123 = *(a1 + 72);
              v56 = (*(a1 + 96) + 16 * v30);
              v57 = *v56;
              v58 = v56[1];
              if (v58)
              {
                atomic_fetch_add_explicit(&v58->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v59 = (*(*v57 + 40))(v57);
              if (v58)
              {
                sub_100004A34(v58);
              }

              *buf = 136316162;
              *&buf[4] = v55;
              *&buf[12] = 2080;
              *&buf[14] = " ";
              v148 = 2080;
              v149 = v122;
              v150 = 2080;
              v151 = v123;
              v152 = 2080;
              v153 = v59;
              _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%s%s request:", buf, 0x34u);
              v53 = v131;
            }

            *buf = off_101E55960;
            *&buf[8] = a1;
            v149 = buf;
            logger::CFTypeRefLogger();
            sub_100007E44(buf);
          }

          v60 = **(a1 + 56);
          v61 = os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT);
          if (v30 == 19)
          {
            if (v61)
            {
              v62 = PersonalityInfo::logPrefix(**(a1 + 16));
              v132 = v53;
              v124 = *(a1 + 64);
              loga = *(a1 + 72);
              v63 = *(a1 + 96);
              v64 = *(v63 + 304);
              v65 = *(v63 + 312);
              if (v65)
              {
                atomic_fetch_add_explicit(&v65->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v66 = (*(*v64 + 40))(v64);
              if (v65)
              {
                sub_100004A34(v65);
              }

              *buf = 136316162;
              *&buf[4] = v62;
              *&buf[12] = 2080;
              *&buf[14] = " ";
              v148 = 2080;
              v149 = v124;
              v150 = 2080;
              v151 = loga;
              v152 = 2080;
              v153 = v66;
              _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%s%s response: received", buf, 0x34u);
              v53 = v132;
            }
          }

          else
          {
            if (v61)
            {
              v67 = PersonalityInfo::logPrefix(**(a1 + 16));
              v133 = v53;
              v125 = *(a1 + 64);
              logb = *(a1 + 72);
              v68 = (*(a1 + 96) + 16 * v30);
              v69 = *v68;
              v70 = v68[1];
              if (v70)
              {
                atomic_fetch_add_explicit(&v70->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v71 = (*(*v69 + 40))(v69);
              if (v70)
              {
                sub_100004A34(v70);
              }

              *buf = 136316162;
              *&buf[4] = v67;
              *&buf[12] = 2080;
              *&buf[14] = " ";
              v148 = 2080;
              v149 = v125;
              v150 = 2080;
              v151 = logb;
              v152 = 2080;
              v153 = v71;
              _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%s%s response:", buf, 0x34u);
              v53 = v133;
            }

            [v27 description];
            *buf = off_101E559E0;
            *&buf[8] = a1;
            v149 = buf;
            logger::CFTypeRefLogger();
            sub_100007E44(buf);
          }

          objc_autoreleasePoolPop(v53);
          v140 = 0;
          sub_10053562C(a1, v30, buf);
          v72 = sub_10053DBBC(a1, *buf, [v27 info], &v140);
          sub_100005978(buf);
          if (v72)
          {
            v73 = (*(a1 + 96) + 16 * v30);
            v74 = *v73;
            v75 = v73[1];
            if (v75)
            {
              atomic_fetch_add_explicit(&v75->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            if (v74)
            {
              v138 = 0;
              v139 = 0;
              (*(*v74 + 16))(&v138, v74, v140, [v27 info], objc_msgSend(v29, "info"), a3);
              v76 = v138;
              if (v138)
              {
                v77 = v139;
                if (v139)
                {
                  atomic_fetch_add_explicit(&v139->__shared_owners_, 1uLL, memory_order_relaxed);
                  v78 = *a3;
                  atomic_fetch_add_explicit(&v77->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                else
                {
                  v78 = *a3;
                }

                v89 = (v78 + 16 * v30);
                v90 = v89[1];
                *v89 = v76;
                v89[1] = v77;
                if (v90)
                {
                  sub_100004A34(v90);
                }

                if (v77)
                {
                  sub_100004A34(v77);
                }

                ++v130;
              }

              else
              {
                v84 = **(a1 + 56);
                if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
                {
                  v85 = PersonalityInfo::logPrefix(**(a1 + 16));
                  v87 = *(a1 + 64);
                  v86 = *(a1 + 72);
                  v88 = sub_100536EB0(a1, v30);
                  *buf = 136316162;
                  *&buf[4] = v85;
                  *&buf[12] = 2080;
                  *&buf[14] = " ";
                  v148 = 2080;
                  v149 = v87;
                  v150 = 2080;
                  v151 = v86;
                  v152 = 2080;
                  v153 = v88;
                  _os_log_impl(&_mh_execute_header, v84, OS_LOG_TYPE_DEFAULT, "#W %s%s%s%saction %s response parsed to DevNull", buf, 0x34u);
                }
              }

              if (v139)
              {
                sub_100004A34(v139);
              }
            }

            else
            {
              v79 = **(a1 + 56);
              if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
              {
                v80 = PersonalityInfo::logPrefix(**(a1 + 16));
                v82 = *(a1 + 64);
                v81 = *(a1 + 72);
                v83 = sub_100536EB0(a1, v30);
                *buf = 136316162;
                *&buf[4] = v80;
                *&buf[12] = 2080;
                *&buf[14] = " ";
                v148 = 2080;
                v149 = v82;
                v150 = 2080;
                v151 = v81;
                v152 = 2080;
                v153 = v83;
                _os_log_error_impl(&_mh_execute_header, v79, OS_LOG_TYPE_ERROR, "#E %s%s%s%sprocessor not found for action %s", buf, 0x34u);
              }
            }

            if (v75)
            {
              sub_100004A34(v75);
            }
          }

          LOBYTE(v47) = !v72;
        }

        else
        {
          v48 = **(a1 + 56);
          if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
          {
            v91 = PersonalityInfo::logPrefix(**(a1 + 16));
            v93 = *(a1 + 64);
            v92 = *(a1 + 72);
            v94 = [v27 identifier];
            v95 = v94;
            LODWORD(v138) = 0;
            if (v94)
            {
              v96 = CFGetTypeID(v94);
              if (v96 == CFNumberGetTypeID())
              {
                ctu::cf::assign(&v138, v95, v97);
              }
            }

            *buf = 136316162;
            *&buf[4] = v91;
            *&buf[12] = 2080;
            *&buf[14] = " ";
            v148 = 2080;
            v149 = v93;
            v150 = 2080;
            v151 = v92;
            v152 = 1024;
            LODWORD(v153) = v138;
            _os_log_error_impl(&_mh_execute_header, v48, OS_LOG_TYPE_ERROR, "#E %s%s%s%sUnable to find matching request for response %d", buf, 0x30u);
          }

          v47 = [objc_msgSend(v27 description];
          if (v47)
          {
            v49 = **(a1 + 56);
            if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
            {
              v50 = PersonalityInfo::logPrefix(**(a1 + 16));
              v51 = *(a1 + 64);
              v52 = *(a1 + 72);
              *buf = 136316162;
              *&buf[4] = v50;
              *&buf[12] = 2080;
              *&buf[14] = " ";
              v148 = 2080;
              v149 = v51;
              v150 = 2080;
              v151 = v52;
              v152 = 2080;
              v153 = v47;
              _os_log_error_impl(&_mh_execute_header, v49, OS_LOG_TYPE_ERROR, "#E %s%s%s%sresponse: %s", buf, 0x34u);
            }

            goto LABEL_33;
          }
        }

LABEL_34:
        objc_autoreleasePoolPop(v26);
        if (v47)
        {
          goto LABEL_90;
        }

        v24 = v24 + 1;
      }

      while (v136 != v24);
      v23 = [obj countByEnumeratingWithState:&v141 objects:v156 count:16];
      if (!v23)
      {
LABEL_90:
        v18 = v129;
        v98 = v130;
        goto LABEL_102;
      }
    }
  }

LABEL_101:
  v98 = 0;
LABEL_102:
  v113 = **(a1 + 56);
  if (os_log_type_enabled(v113, OS_LOG_TYPE_DEFAULT))
  {
    v114 = PersonalityInfo::logPrefix(**(a1 + 16));
    v115 = *(a1 + 64);
    v116 = *(a1 + 72);
    v117 = "";
    if (!v98)
    {
      v117 = " not";
    }

    *buf = 136316674;
    *&buf[4] = v114;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v148 = 2080;
    v149 = v115;
    v150 = 2080;
    v151 = v116;
    v152 = 2080;
    v153 = v117;
    v154 = 1024;
    *v155 = v98;
    *&v155[4] = 2048;
    *&v155[6] = v18;
    _os_log_impl(&_mh_execute_header, v113, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sEntitlement Response was%s successfully parsed %d responses out of %lu", buf, 0x44u);
  }

  ctu::ns::AutoPool::~AutoPool(&v146);
  return v98 != 0;
}

void sub_10053D938(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, std::__shared_weak_count *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36)
{
  if (a25)
  {
    sub_100004A34(a25);
  }

  if (v36)
  {
    sub_100004A34(v36);
  }

  ctu::ns::AutoPool::~AutoPool(&a36);
  _Unwind_Resume(a1);
}

uint64_t sub_10053DA28(uint64_t a1)
{
  v14 = 0uLL;
  v15 = 0;
  ctu::cf::assign();
  v2 = 0;
  v3 = 0;
  v4 = 0;
  v13 = 0;
  v12 = 0uLL;
  while (1)
  {
    v5 = (*(a1 + 96) + v2);
    v6 = *v5;
    v7 = v5[1];
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v8 = (*(*v6 + 40))(v6);
    if (v7)
    {
      sub_100004A34(v7);
    }

    v9 = strlen(v8);
    if (!v9 && !memcmp(&v12, v8, 0))
    {
      break;
    }

    v4 = v3 > 0x1C;
    v2 += 16;
    if (++v3 == 30)
    {
      return 30;
    }
  }

  if (v4)
  {
    return 30;
  }

  else
  {
    return v3;
  }
}

void sub_10053DB80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_10053DBBC(uint64_t a1, void *a2, void *a3, int *a4)
{
  v7 = [a3 objectForKey:@"status"];
  if (!v7)
  {
    v20 = **(a1 + 56);
    result = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    v21 = PersonalityInfo::logPrefix(**(a1 + 16));
    v23 = *(a1 + 64);
    v22 = *(a1 + 72);
    v35 = 136316162;
    v36 = v21;
    v37 = 2080;
    v38 = " ";
    v39 = 2080;
    v40 = v23;
    v41 = 2080;
    v42 = v22;
    v43 = 2080;
    v44 = [a2 UTF8String];
    v24 = "#W %s%s%s%s%s, no action atatus in response";
LABEL_21:
    v28 = v20;
    v29 = 52;
LABEL_22:
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, v24, &v35, v29);
    return 0;
  }

  v8 = v7;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v20 = **(a1 + 56);
    result = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    v25 = PersonalityInfo::logPrefix(**(a1 + 16));
    v27 = *(a1 + 64);
    v26 = *(a1 + 72);
    v35 = 136316162;
    v36 = v25;
    v37 = 2080;
    v38 = " ";
    v39 = 2080;
    v40 = v27;
    v41 = 2080;
    v42 = v26;
    v43 = 2080;
    v44 = [a2 UTF8String];
    v24 = "#W %s%s%s%s%s, invalid action status format, expected number";
    goto LABEL_21;
  }

  v9 = [v8 intValue];
  v10 = v9;
  if (v9 - 6000 <= 0x14 && ((1 << (v9 - 112)) & 0x103F7F) != 0 || v9 - 6300 < 3 || v9 == 6201)
  {
    *a4 = v9;
    v14 = **(a1 + 56);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = PersonalityInfo::logPrefix(**(a1 + 16));
      v17 = *(a1 + 64);
      v16 = *(a1 + 72);
      v18 = [a2 UTF8String];
      v19 = sub_100531604(*a4);
      v35 = 136316418;
      v36 = v15;
      v37 = 2080;
      v38 = " ";
      v39 = 2080;
      v40 = v17;
      v41 = 2080;
      v42 = v16;
      v43 = 2080;
      v44 = v18;
      v45 = 2080;
      v46 = v19;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%s%s, action status: %s", &v35, 0x3Eu);
    }

    return 1;
  }

  else
  {
    v30 = **(a1 + 56);
    result = os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT);
    if (result)
    {
      v32 = PersonalityInfo::logPrefix(**(a1 + 16));
      v34 = *(a1 + 64);
      v33 = *(a1 + 72);
      v35 = 136316418;
      v36 = v32;
      v37 = 2080;
      v38 = " ";
      v39 = 2080;
      v40 = v34;
      v41 = 2080;
      v42 = v33;
      v43 = 2080;
      v44 = [a2 UTF8String];
      v45 = 1024;
      LODWORD(v46) = v10;
      v24 = "#W %s%s%s%s%s, unknown action status: %d";
      v28 = v30;
      v29 = 58;
      goto LABEL_22;
    }
  }

  return result;
}

uint64_t sub_10053DF18@<X0>(uint64_t result@<X0>, int a2@<W1>, _OWORD *a3@<X8>)
{
  v3 = *(*(result + 96) + 16 * a2);
  *a3 = v3;
  if (*(&v3 + 1))
  {
    atomic_fetch_add_explicit((*(&v3 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void *sub_10053DF3C(void *a1)
{
  *a1 = off_101E554B8;
  v2 = a1[4];
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    sub_100004A34(v3);
  }

  return a1;
}

uint64_t sub_10053DF9C(uint64_t a1, CFDictionaryRef theDict, void *key)
{
  *__p = 0u;
  v17 = 0u;
  Value = CFDictionaryGetValue(theDict, key);
  sub_10053E1F4(Value, a1, key, 0, __p);
  if (BYTE8(v17) == 1)
  {
    if ((SBYTE7(v17) & 0x80u) == 0)
    {
      v7 = __p;
    }

    else
    {
      v7 = __p[0];
    }

    v18 = 0;
    v19 = 0;
    if (ctu::cf::convert_copy(&v19, v7, 0x8000100, kCFAllocatorDefault, v6))
    {
      v18 = v19;
      *buf = 0;
      sub_100005978(buf);
      v8 = v18;
    }

    else
    {
      v8 = 0;
    }

    v15 = v8;
    v18 = 0;
    sub_100005978(&v18);
    v9 = sub_100531868(v8);
    sub_100005978(&v15);
    if (v9 != -1)
    {
      goto LABEL_14;
    }

    v10 = **(a1 + 40);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = PersonalityInfo::logPrefix(**(a1 + 24));
      v12 = (*(*a1 + 40))(a1);
      v13 = __p;
      if (SBYTE7(v17) < 0)
      {
        v13 = __p[0];
      }

      *buf = 136316162;
      *&buf[4] = v11;
      v21 = 2080;
      v22 = " ";
      v23 = 2080;
      v24 = v12;
      v25 = 2080;
      v26 = ", ";
      v27 = 2080;
      v28 = v13;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sUnsupported EntitlementType value: %s", buf, 0x34u);
    }
  }

  v9 = 0xFFFFFFFFLL;
LABEL_14:
  if (BYTE8(v17) == 1 && SBYTE7(v17) < 0)
  {
    operator delete(__p[0]);
  }

  return v9;
}

void sub_10053E1A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, int a18, __int16 a19, char a20, char a21)
{
  if (a17 == 1 && a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10053E1F4(CFTypeRef cf@<X1>, uint64_t a2@<X0>, void *a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  *a5 = 0u;
  *(a5 + 16) = 0u;
  if (cf)
  {
    v8 = CFGetTypeID(cf);
    if (v8 == CFStringGetTypeID())
    {
      *&v15[2] = 0;
      ctu::cf::assign();
      *a5 = 0;
      *(a5 + 8) = 0;
      *(a5 + 15) = 0;
      *(a5 + 23) = 0;
      *(a5 + 24) = 1;
    }

    else if (os_log_type_enabled(**(a2 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_1017741E4();
    }
  }

  else if (a4)
  {
    v9 = **(a2 + 40);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = PersonalityInfo::logPrefix(**(a2 + 24));
      v11 = (*(*a2 + 40))(a2);
      buf = 136316162;
      *buf_4 = v10;
      v14 = 2080;
      *v15 = " ";
      *&v15[8] = 2080;
      v16 = v11;
      v17 = 2080;
      v18 = ", ";
      v19 = 2080;
      v20 = [a3 UTF8String];
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#W %s%s%s%sMissing element %s", &buf, 0x34u);
    }
  }
}

unint64_t sub_10053E3E8(uint64_t a1, CFDictionaryRef theDict, void *key)
{
  Value = CFDictionaryGetValue(theDict, key);
  v6 = sub_10053E54C(a1, Value, key, 0);
  if ((v6 & 0x100000000) != 0)
  {
    v7 = v6;
    if ((v6 - 6100) < 7)
    {
      return v7;
    }

    v9 = **(a1 + 40);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = PersonalityInfo::logPrefix(**(a1 + 24));
      v11 = (*(*a1 + 40))(a1);
      v12 = 136316162;
      v13 = v10;
      v14 = 2080;
      v15 = " ";
      v16 = 2080;
      v17 = v11;
      v18 = 2080;
      v19 = ", ";
      v20 = 1024;
      v21 = v7;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sInvalid EntitlementStatus value: %d", &v12, 0x30u);
    }
  }

  return 0xFFFFFFFFLL;
}

unint64_t sub_10053E54C(uint64_t a1, void *cf, void *a3, int a4)
{
  if (!cf)
  {
    if (a4)
    {
      v15 = **(a1 + 40);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = PersonalityInfo::logPrefix(**(a1 + 24));
        v17 = (*(*a1 + 40))(a1);
        v19 = 136316162;
        v20 = v16;
        v21 = 2080;
        v22 = " ";
        v23 = 2080;
        v24 = v17;
        v25 = 2080;
        v26 = ", ";
        v27 = 2080;
        v28 = [a3 UTF8String];
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#W %s%s%s%sMissing element %s", &v19, 0x34u);
      }
    }

    goto LABEL_11;
  }

  v7 = CFGetTypeID(cf);
  if (v7 != CFNumberGetTypeID())
  {
    if (os_log_type_enabled(**(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_1017742A0();
    }

LABEL_11:
    v14 = 0;
    v13 = 0;
    v12 = 0;
    return v14 | v12 | v13;
  }

  v19 = 0;
  v8 = CFGetTypeID(cf);
  TypeID = CFNumberGetTypeID();
  v11 = 0;
  if (v8 == TypeID)
  {
    ctu::cf::assign(&v19, cf, v10);
    v11 = v19;
  }

  v12 = v11 & 0xFFFFFF00;
  v13 = v11;
  v14 = &_mh_execute_header;
  return v14 | v12 | v13;
}

void sub_10053E718(uint64_t a1, int a2, int a3, uint64_t a4)
{
  v7 = sub_10053E9A8(a3);
  v8 = **(a1 + 40);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = PersonalityInfo::logPrefix(**(a1 + 24));
    v10 = (*(*a1 + 40))(a1);
    *buf = 136316418;
    *&buf[4] = v9;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v13 = 2080;
    v14 = v10;
    v15 = 2080;
    v16 = ", ";
    v17 = 2080;
    v18 = sub_10006EE44(a2);
    v19 = 2080;
    v20 = sub_100A38E08(v7);
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sUpdate entitlement %s with %s", buf, 0x3Eu);
  }

  v11 = *(*a4 + 8);
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  *buf = 0;
  *&buf[8] = 0;
  sub_10055AD48();
}

void sub_10053E978(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_100004A34(a14);
  }

  if (v14)
  {
    sub_100004A34(v14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10053E9A8(int a1)
{
  if ((a1 - 6100) > 6)
  {
    return 3;
  }

  else
  {
    return dword_1018196B0[a1 - 6100];
  }
}

void sub_10053E9D0(void **a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    v4 = *a1;
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v4 = *a1;
  }

  v5 = v4[1];
  *v4 = v2;
  v4[1] = v3;
  if (v5)
  {
    sub_100004A34(v5);
  }

  if (v3)
  {

    sub_100004A34(v3);
  }
}

uint64_t sub_10053EA44(uint64_t a1, CFDictionaryRef theDict, void *key)
{
  *__p = 0u;
  v17 = 0u;
  Value = CFDictionaryGetValue(theDict, key);
  sub_10053E1F4(Value, a1, key, 0, __p);
  if (BYTE8(v17) != 1)
  {
    goto LABEL_32;
  }

  if ((SBYTE7(v17) & 0x80u) == 0)
  {
    v7 = __p;
  }

  else
  {
    v7 = __p[0];
  }

  v18 = 0;
  v19 = 0;
  if (ctu::cf::convert_copy(&v19, v7, 0x8000100, kCFAllocatorDefault, v6))
  {
    v8 = v18;
    v18 = v19;
    *buf = v8;
    sub_100005978(buf);
  }

  v15 = v18;
  v18 = 0;
  sub_100005978(&v18);
  if (([v15 isEqualToString:@"VoWiFi"] & 1) == 0)
  {
    if ([v15 isEqualToString:@"VVM"])
    {
      v9 = 2;
      goto LABEL_27;
    }

    if ([v15 isEqualToString:@"Multi-SIM"])
    {
      v9 = 3;
      goto LABEL_27;
    }

    if ([v15 isEqualToString:@"PreferredNetworks"])
    {
      v9 = 4;
      goto LABEL_27;
    }

    if ([v15 isEqualToString:@"CarrierSpace"])
    {
      v9 = 5;
      goto LABEL_27;
    }

    if ([v15 isEqualToString:@"sa-watch"])
    {
      v9 = 6;
      goto LABEL_27;
    }

    if ([v15 isEqualToString:@"esim-profile-released"])
    {
      v9 = 7;
      goto LABEL_27;
    }

    if ([v15 isEqualToString:@"AuthorizationTokens"])
    {
      v9 = 8;
      goto LABEL_27;
    }

    if ([v15 isEqualToString:@"geofence-data"])
    {
      v9 = 9;
      goto LABEL_27;
    }

    if ([v15 isEqualToString:@"msisdn-event"])
    {
      v9 = 10;
      goto LABEL_27;
    }

    sub_100005978(&v15);
    v10 = **(a1 + 40);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = PersonalityInfo::logPrefix(**(a1 + 24));
      v12 = (*(*a1 + 40))(a1);
      v13 = __p;
      if (SBYTE7(v17) < 0)
      {
        v13 = __p[0];
      }

      *buf = 136316162;
      *&buf[4] = v11;
      v21 = 2080;
      v22 = " ";
      v23 = 2080;
      v24 = v12;
      v25 = 2080;
      v26 = ", ";
      v27 = 2080;
      v28 = v13;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sUnsupported EntitlementTopicType value: %s", buf, 0x34u);
    }

LABEL_32:
    v9 = 0;
    goto LABEL_33;
  }

  v9 = 1;
LABEL_27:
  sub_100005978(&v15);
LABEL_33:
  if (BYTE8(v17) == 1 && SBYTE7(v17) < 0)
  {
    operator delete(__p[0]);
  }

  return v9;
}