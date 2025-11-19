uint64_t sub_1000E5D6C(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1000E5D88(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    sub_100008350(v1);
  }
}

void *sub_1000E5D98(void *a1)
{
  *a1 = off_1002B0BE0;
  v2 = a1[2];
  if (v2)
  {
    sub_100008350(v2);
  }

  return a1;
}

void sub_1000E5DE4(void *a1)
{
  *a1 = off_1002B0BE0;
  v1 = a1[2];
  if (v1)
  {
    sub_100008350(v1);
  }

  operator delete();
}

uint64_t sub_1000E5E78@<X0>(void *a1@<X8>)
{
  v2 = 0;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  return sub_100033F5C(a1, &v2, &vars0, 1);
}

uint64_t sub_1000E5ED4(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1000E5EF0(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    sub_100008350(v1);
  }
}

uint64_t sub_1000E5F00()
{
  if ((byte_1002D4A50 & 1) == 0)
  {
    byte_1002D4A50 = 1;
    return __cxa_atexit(sub_100032AD4, &stru_1002D4A00, &_mh_execute_header);
  }

  return result;
}

uint64_t sub_1000E5F3C()
{
  if ((byte_1002D4C60 & 1) == 0)
  {
    byte_1002D4C60 = 1;
    return __cxa_atexit(sub_10004F8F4, &stru_1002D4C10, &_mh_execute_header);
  }

  return result;
}

void sub_1000E5FD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a9)
  {
    sub_100208454(a9);
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000E6008(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1000A92A0(__p);
  *a2 = *__p;
  *(a2 + 16) = v8;
  __p[1] = 0;
  v8 = 0;
  __p[0] = 0;
  v4 = *(a1 + 23);
  if (v4 < 0)
  {
    v5 = *a1;
  }

  if (v4 >= 0)
  {
    v6 = *(a1 + 23);
  }

  else
  {
    v6 = a1[1];
  }

  ctu::path_join_impl();
  if (SHIBYTE(v8) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1000E6084(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (*(v2 + 23) < 0)
  {
    operator delete(*v2);
  }

  sub_1001FCE7C(va);
  _Unwind_Resume(a1);
}

void sub_1000E60F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000E6110(int a1@<W0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  sub_1000A91A4(a1, __p);
  *a3 = *__p;
  *(a3 + 16) = v9;
  __p[1] = 0;
  v9 = 0;
  __p[0] = 0;
  v5 = *(a2 + 23);
  if (v5 < 0)
  {
    v6 = *a2;
  }

  if (v5 >= 0)
  {
    v7 = *(a2 + 23);
  }

  else
  {
    v7 = a2[1];
  }

  ctu::path_join_impl();
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1000E618C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (*(v2 + 23) < 0)
  {
    operator delete(*v2);
  }

  sub_1001FCE7C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000E61B0(unsigned int a1)
{
  sub_10000A448(&v9);
  v2 = sub_100008EEC(&v9, "wirelessinsightsd-", 18);
  if (a1 > 3)
  {
    v3 = "<unknown>";
  }

  else
  {
    v3 = off_1002B0C78[a1];
  }

  v4 = strlen(v3);
  v5 = sub_100008EEC(v2, v3, v4);
  v13 = 45;
  sub_100008EEC(v5, &v13, 1);
  v6 = std::ostream::operator<<();
  sub_100008EEC(v6, "-fragment-", 10);
  v7 = std::ostream::operator<<();
  sub_100008EEC(v7, ".metriclog", 10);
  std::stringbuf::str();
  if (v12 < 0)
  {
    operator delete(v11[7].__locale_);
  }

  std::locale::~locale(v11);
  std::ostream::~ostream();
  return std::ios::~ios();
}

uint64_t sub_1000E63AC()
{
  sub_10003A908(&v20);
  sub_10000A448(&v16);
  sub_100008EEC(&v16, "wirelessinsightsd-", 18);
  v0 = std::ostream::operator<<();
  v21 = 45;
  v1 = sub_100008EEC(v0, &v21, 1);
  *(v1 + *(*v1 - 24) + 24) = 2;
  v15 = 48;
  sub_10005D750(v1, &v15);
  v2 = std::ostream::operator<<();
  v21 = 45;
  v3 = sub_100008EEC(v2, &v21, 1);
  *(v3 + *(*v3 - 24) + 24) = 2;
  v14 = 48;
  sub_10005D750(v3, &v14);
  v4 = std::ostream::operator<<();
  v21 = 45;
  v5 = sub_100008EEC(v4, &v21, 1);
  *(v5 + *(*v5 - 24) + 24) = 2;
  v13 = 48;
  sub_10005D750(v5, &v13);
  v6 = std::ostream::operator<<();
  *(v6 + *(*v6 - 24) + 24) = 2;
  v12 = 48;
  sub_10005D750(v6, &v12);
  v7 = std::ostream::operator<<();
  *(v7 + *(*v7 - 24) + 24) = 2;
  v11 = 48;
  sub_10005D750(v7, &v11);
  v8 = std::ostream::operator<<();
  v21 = 45;
  sub_100008EEC(v8, &v21, 1);
  v9 = std::ostream::operator<<();
  sub_100008EEC(v9, ".consolidated.metriclog", 23);
  std::stringbuf::str();
  if (v19 < 0)
  {
    operator delete(v18[7].__locale_);
  }

  std::locale::~locale(v18);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_1000E66A0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100039C48(va);
  _Unwind_Resume(a1);
}

void *sub_1000E67F0(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  a1[3] = 0;
  a1[2] = a1 + 3;
  a1[4] = 0;
  a1[6] = 0;
  a1[5] = a1 + 6;
  a1[9] = 0;
  a1[8] = a1 + 9;
  a1[7] = 0;
  a1[10] = 0;
  a1[12] = 0;
  a1[11] = a1 + 12;
  a1[13] = 0;
  ctu::OsLogLogger::OsLogLogger((a1 + 14), "com.apple.wis.wirelessinsightsd", "cond");
  return a1;
}

void sub_1000E68A8(_Unwind_Exception *a1)
{
  sub_10001C4B0(v4, *(v1 + 96));
  sub_10001C4B0(v5, *(v1 + 72));
  sub_10001C4B0(v3, *(v1 + 48));
  sub_1000E713C(v2, *(v1 + 24));
  v7 = *(v1 + 8);
  if (v7)
  {
    sub_100008350(v7);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1000E68F0(uint64_t a1)
{
  ctu::OsLogLogger::~OsLogLogger((a1 + 112));
  sub_10001C4B0(a1 + 88, *(a1 + 96));
  sub_10001C4B0(a1 + 64, *(a1 + 72));
  sub_10001C4B0(a1 + 40, *(a1 + 48));
  sub_1000E713C(a1 + 16, *(a1 + 24));
  v2 = *(a1 + 8);
  if (v2)
  {
    sub_100008350(v2);
  }

  return a1;
}

void sub_1000E6A7C()
{
  *v1 = 0;
  sub_1000E68F0(v0);
  operator delete();
}

void sub_1000E6AA8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3)
  {
    v4 = *(a2 + 8);
    v27 = &v4[v3];
    do
    {
      v28 = v4;
      v5 = *v4;
      v6 = *(*v4 + 16);
      if (v6)
      {
        v7 = *(v5 + 8);
        v8 = &v7[v6];
        v9 = *(v5 + 56);
        v29 = v8;
        do
        {
          v10 = *v7;
          if (*(*v7 + 132))
          {
            v30 = v7;
            v34 = *(v10 + 8);
            v12 = *(v10 + 48);
            if (v12)
            {
              v13 = *(v10 + 40);
              v14 = &v13[v12];
              do
              {
                v15 = *v13;
                if (*(*v13 + 132))
                {
                  v17 = *(v15 + 8);
                  v18 = *(v15 + 56);
                  if (v18)
                  {
                    v19 = *(v15 + 48);
                    v20 = 8 * v18;
                    do
                    {
                      v21 = *v19;
                      *buf = v17;
                      v32 = 0;
                      v33 = 0;
                      __p = 0;
                      sub_100050BD4(&__p, buf, &buf[4], 1uLL);
                      sub_1000E6DB4(v21, &__p, buf);
                      if (v37)
                      {
                        sub_1000E7218();
                      }

                      sub_1000E7198(buf);
                      if (__p)
                      {
                        v32 = __p;
                        operator delete(__p);
                      }

                      ++v19;
                      v20 -= 8;
                    }

                    while (v20);
                  }

                  *buf = v9 | (v34 << 32);
                  v36 = v17;
                  LODWORD(__p) = *(v10 + 68);
                  sub_1000E7430(a1 + 40, buf);
                  *buf = *(v10 + 68);
                  sub_1000E7574(a1 + 88, &v34);
                }

                else
                {
                  v16 = *(a1 + 112);
                  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 67109120;
                    *&buf[4] = v34;
                    _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "cond:MetricProcessingMap: Got metric with no metric id in profile 0x%x", buf, 8u);
                  }
                }

                ++v13;
              }

              while (v13 != v14);
            }

            v8 = v29;
            v7 = v30;
          }

          else
          {
            v11 = *(a1 + 112);
            if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "cond:#E MetricProcessingMap: Got profile with no profile id.", buf, 2u);
            }
          }

          ++v7;
        }

        while (v7 != v8);
      }

      v4 = v28 + 1;
    }

    while (v28 + 1 != v27);
  }

  v22 = *(a2 + 80);
  if (v22)
  {
    v23 = *(a2 + 72);
    v24 = 8 * v22;
    do
    {
      v25 = *(*v23 + 12);
      *buf = *(*v23 + 8);
      LOBYTE(__p) = v25 == 1;
      sub_1000E7648(a1 + 64, buf);
      v23 += 8;
      v24 -= 8;
    }

    while (v24);
  }
}

void sub_1000E6D80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  sub_1000E7198(&a23);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1000E6DB4(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = (a1 + 52);
  if (*(a1 + 52))
  {
    v6 = a1;
    while (1)
    {
      v7 = *(v6 + 16);
      v9 = a2[1];
      v8 = a2[2];
      if (v9 >= v8)
      {
        v11 = *a2;
        v12 = v9 - *a2;
        v13 = (v12 >> 2) + 1;
        if (v13 >> 62)
        {
          sub_100033FD0();
        }

        v14 = v8 - v11;
        if (v14 >> 1 > v13)
        {
          v13 = v14 >> 1;
        }

        if (v14 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v15 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v15 = v13;
        }

        if (v15)
        {
          sub_10000A8C0(a2, v15);
        }

        v16 = (4 * (v12 >> 2));
        *v16 = v7;
        v10 = (v16 + 1);
        memcpy(0, v11, v12);
        a1 = *a2;
        *a2 = 0;
        a2[1] = v10;
        a2[2] = 0;
        if (a1)
        {
          operator delete(a1);
        }
      }

      else
      {
        *v9 = v7;
        v10 = (v9 + 1);
      }

      a2[1] = v10;
      v17 = *v4;
      if ((*v4 & 2) != 0)
      {
        v18 = *(v6 + 8);
        v33 = 0;
        v34 = 0;
        v35 = 0;
        sub_10000A964(&v33, *a2, v10, (v10 - *a2) >> 2);
        sub_1001168C4(&v33, v18, a3);
        v19 = v33;
        if (!v33)
        {
          return;
        }

        v34 = v33;
        goto LABEL_35;
      }

      if ((v17 & 4) != 0)
      {
        v20 = *(v6 + 24);
        memset(v32, 0, sizeof(v32));
        sub_10000A964(v32, *a2, v10, (v10 - *a2) >> 2);
        sub_100116A4C(v32, a3, v20);
      }

      if ((v17 & 8) != 0)
      {
        v21 = *(v6 + 20);
        v29 = 0;
        v30 = 0;
        v31 = 0;
        sub_10000A964(&v29, *a2, v10, (v10 - *a2) >> 2);
        sub_100116984(&v29, v21, a3);
        v19 = v29;
        if (!v29)
        {
          return;
        }

        v30 = v29;
        goto LABEL_35;
      }

      if ((v17 & 0x10) != 0)
      {
        v22 = *(v6 + 40);
        v27 = 0;
        v28 = 0;
        v26 = 0;
        sub_10000A964(&v26, *a2, v10, (v10 - *a2) >> 2);
        sub_100116B10(&v26, v22, a3);
        v19 = v26;
        if (!v26)
        {
          return;
        }

        v27 = v26;
        goto LABEL_35;
      }

      if ((v17 & 0x20) == 0)
      {
        break;
      }

      v6 = *(v6 + 32);
      if (!v6)
      {
        a1 = awd::profile::ProcessingRule::default_instance(a1);
        v6 = *(a1 + 32);
      }

      v4 = (v6 + 52);
      if ((*(v6 + 52) & 1) == 0)
      {
        goto LABEL_2;
      }
    }

    if ((v17 & 0x40) == 0)
    {
      goto LABEL_2;
    }

    __p = 0;
    v24 = 0;
    v25 = 0;
    sub_10000A964(&__p, *a2, v10, (v10 - *a2) >> 2);
    sub_100116BC8(&__p, *(v6 + 44), a3);
    v19 = __p;
    if (__p)
    {
      v24 = __p;
LABEL_35:
      operator delete(v19);
    }
  }

  else
  {
LABEL_2:
    *(a3 + 24) = 0;
  }
}

void sub_1000E7090(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  if (__p)
  {
    *a10 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000E70E8()
{
  if (!*(v0 - 128))
  {
    JUMPOUT(0x1000E70E0);
  }

  JUMPOUT(0x1000E70D4);
}

uint64_t sub_1000E70F8(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    sub_100008350(v2);
  }

  v3 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v3)
  {
    sub_100084E80(a1 + 8, v3);
  }

  return a1;
}

void sub_1000E713C(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_1000E713C(a1, *a2);
    sub_1000E713C(a1, a2[1]);
    sub_1000E7198((a2 + 6));

    operator delete(a2);
  }
}

uint64_t sub_1000E7198(uint64_t a1)
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

void sub_1000E72D0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000E7364(va);
  _Unwind_Resume(a1);
}

void *sub_1000E72E4(uint64_t a1, void *a2, unsigned int *a3)
{
  v5 = *(a1 + 8);
  v3 = (a1 + 8);
  v4 = v5;
  if (v5)
  {
    v6 = *a3;
    v7 = a3[1];
    do
    {
      while (1)
      {
        v3 = v4;
        v8 = *(v4 + 8);
        if (v6 >= v8)
        {
          if (v8 < v6)
          {
            break;
          }

          v10 = *(v4 + 9);
          if (v7 >= v10 && (v10 < v7 || a3[2] >= *(v4 + 10)))
          {
            break;
          }
        }

        v4 = *v4;
        v9 = v3;
        if (!*v3)
        {
          goto LABEL_14;
        }
      }

      v4 = v4[1];
    }

    while (v4);
    v9 = v3 + 1;
  }

  else
  {
    v9 = v3;
  }

LABEL_14:
  *a2 = v3;
  return v9;
}

uint64_t sub_1000E7364(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_1000E7198(v2 + 48);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t sub_1000E73B0(uint64_t a1, uint64_t a2)
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

uint64_t sub_1000E7430(uint64_t a1, unsigned int *a2)
{
  v2 = *sub_1000E74DC(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t *sub_1000E74DC(uint64_t a1, void *a2, unsigned int *a3)
{
  v5 = *(a1 + 8);
  result = (a1 + 8);
  v4 = v5;
  if (v5)
  {
    v6 = *a3;
    v7 = a3[1];
    v8 = a3[2];
    while (1)
    {
      while (1)
      {
        v9 = v4;
        v10 = *(v4 + 7);
        if (v6 >= v10)
        {
          break;
        }

LABEL_4:
        v4 = *v9;
        result = v9;
        if (!*v9)
        {
          goto LABEL_17;
        }
      }

      if (v10 >= v6)
      {
        v11 = *(v9 + 8);
        if (v7 < v11 || v11 >= v7 && v8 < *(v9 + 9))
        {
          goto LABEL_4;
        }

        v12 = *(v9 + 8);
        if (v12 >= v7 && (v7 < v12 || *(v9 + 9) >= v8))
        {
          goto LABEL_17;
        }
      }

      result = v9 + 1;
      v4 = v9[1];
      if (!v4)
      {
        goto LABEL_17;
      }
    }
  }

  v9 = result;
LABEL_17:
  *a2 = v9;
  return result;
}

uint64_t *sub_1000E7574(uint64_t a1, unsigned int *a2)
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
      v5 = *(v2 + 28);
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

uint64_t *sub_1000E7648(uint64_t a1, unsigned int *a2)
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
      v5 = *(v2 + 28);
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

uint64_t *sub_1000E7720(uint64_t a1, unsigned int *a2, uint64_t *a3, uint64_t *a4)
{
  result = a4;
  if (a3)
  {
    v5 = *a2;
    v6 = a2[1];
    v7 = a2[2];
    while (1)
    {
      v8 = *(a3 + 8);
      if (v8 >= v5)
      {
        if (v5 < v8)
        {
          goto LABEL_6;
        }

        v9 = *(a3 + 9);
        if (v9 >= v6)
        {
          break;
        }
      }

      ++a3;
LABEL_7:
      a3 = *a3;
      if (!a3)
      {
        return result;
      }
    }

    if (v6 >= v9)
    {
      v10 = *(a3 + 10);
      v11 = v10 >= v7;
      v12 = v10 < v7;
      if (v11)
      {
        result = a3;
      }

      a3 += v12;
      goto LABEL_7;
    }

LABEL_6:
    result = a3;
    goto LABEL_7;
  }

  return result;
}

uint64_t *sub_1000E778C(uint64_t a1, unsigned int *a2, uint64_t *a3, uint64_t *a4)
{
  result = a4;
  if (a3)
  {
    v5 = *a2;
    v6 = a2[1];
    v7 = a2[2];
    while (1)
    {
      v8 = *(a3 + 8);
      if (v5 >= v8)
      {
        if (v8 < v5)
        {
          goto LABEL_6;
        }

        v9 = *(a3 + 9);
        if (v6 >= v9)
        {
          break;
        }
      }

      result = a3;
LABEL_7:
      a3 = *a3;
      if (!a3)
      {
        return result;
      }
    }

    if (v9 >= v6)
    {
      if (v7 < *(a3 + 10))
      {
        result = a3;
      }

      a3 += v7 >= *(a3 + 10);
      goto LABEL_7;
    }

LABEL_6:
    ++a3;
    goto LABEL_7;
  }

  return result;
}

void sub_1000E77F8(awd::profile::Condition *a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 6);
  if (!v3)
  {
    v3 = *(awd::profile::Condition::default_instance(a1) + 48);
  }

  v4 = sub_1000F6468(v3);
  if (v4 > 5)
  {
    if (v4 > 11)
    {
      if (v4 == 12)
      {
        v10 = *(v3 + 44);
        operator new();
      }

      if (v4 == 13)
      {
        v7 = *(v3 + 48);
        if (*(v7 + 23) < 0)
        {
          sub_10000FFF8(__p, *v7, *(v7 + 1));
        }

        else
        {
          v8 = *v7;
          v13 = *(v7 + 2);
          *__p = v8;
        }

        operator new();
      }
    }

    else
    {
      if (v4 == 6)
      {
        v9 = *(v3 + 16);
        operator new();
      }

      if (v4 == 7)
      {
        v6 = *(v3 + 20);
        operator new();
      }
    }
  }

  else
  {
    if ((v4 - 1) < 2)
    {
      if (os_log_type_enabled(*(qword_1002DBE98 + 88), OS_LOG_TYPE_ERROR))
      {
        goto LABEL_22;
      }

      goto LABEL_23;
    }

    if (v4 == 3)
    {
      v11 = *(v3 + 8);
      operator new();
    }

    if (v4 == 4)
    {
      v5 = *(v3 + 24);
      operator new();
    }
  }

  if (os_log_type_enabled(*(qword_1002DBE98 + 88), OS_LOG_TYPE_ERROR))
  {
LABEL_22:
    sub_10020848C(v3);
  }

LABEL_23:
  *a2 = 0;
}

void sub_1000E7B6C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, char a17)
{
  sub_1000690B8(&a17);
  if (v18 < 0)
  {
    operator delete(v17);
  }

  operator delete();
}

void *sub_1000E7BF4(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = off_1002B0CA8;
  v7[0] = off_1002B0CE8;
  v7[3] = v7;
  sub_100068C74(a1, a2, v7);
  sub_1000690B8(v7);
  *a1 = off_1002B0CA8;
  a1[6] = a3;
  sub_100068E40(a2, a1 + 7);
  return a1;
}

void sub_1000E7CC4(_Unwind_Exception *a1)
{
  *v1 = off_1002ACE88;
  sub_1000690B8((v1 + 2));
  _Unwind_Resume(a1);
}

void *sub_1000E7D00(void *a1)
{
  *a1 = off_1002B0CA8;
  v2 = a1[7];
  a1[7] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *a1 = off_1002ACE88;
  sub_1000690B8((a1 + 2));
  return a1;
}

void sub_1000E7D94(void *a1)
{
  *a1 = off_1002B0CA8;
  v2 = a1[7];
  a1[7] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *a1 = off_1002ACE88;
  sub_1000690B8((a1 + 2));

  operator delete();
}

BOOL sub_1000E7ED0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = *a2;
  v6 = *(*a2 + 8);
  v7 = *(*a2 + 12);
  MetricFileMetadataHelper::MetricFileMetadataHelper();
  v54 = v5;
  v55 = v7;
LABEL_2:
  while (1)
  {
    v9 = wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(a4);
    if (v9 < 1)
    {
      break;
    }

    v10 = *(a4 + 8);
    if (v10 >= *(a4 + 16) || (TagFallback = *v10, (TagFallback & 0x80000000) != 0))
    {
      TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a4);
      *(a4 + 32) = TagFallback;
      if (!TagFallback)
      {
LABEL_14:
        sub_1000E8954(a4, 0);
        continue;
      }
    }

    else
    {
      *(a4 + 32) = TagFallback;
      *(a4 + 8) = v10 + 1;
      if (!TagFallback)
      {
        goto LABEL_14;
      }
    }

    v12 = wis::reflect::decodeTag(TagFallback, v8);
    v13 = v12;
    v14 = HIDWORD(v12);
    memset(v64, 0, sizeof(v64));
    v65 = 0xFFFFFFFFLL;
    MetricFileMetadataHelper::getSubfieldType();
    *v64 = v62;
    v65 = v63;
    BuiltinType = MetadataHelper::getBuiltinType();
    DecodingType = wis::reflect::getDecodingType();
    v17 = DecodingType;
    if (DecodingType > 13)
    {
      if ((DecodingType - 15) >= 0xC)
      {
        if (DecodingType == 14)
        {
          LODWORD(__p) = 0;
          v30 = *(a4 + 8);
          if (v30 >= *(a4 + 16) || (v31 = *v30, (v31 & 0x80000000) != 0))
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a4, &__p))
            {
              goto LABEL_12;
            }

            v31 = __p;
          }

          else
          {
            LODWORD(__p) = *v30;
            *(a4 + 8) = v30 + 1;
          }

          goto LABEL_137;
        }

        if (DecodingType != 27)
        {
          goto LABEL_12;
        }

        v64[0] = 0;
        v27 = *(a4 + 8);
        if (v27 >= *(a4 + 16) || (v28 = *v27, v28 < 0))
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a4, v64))
          {
            goto LABEL_12;
          }

          v28 = v64[0];
        }

        else
        {
          v64[0] = *v27;
          *(a4 + 8) = v27 + 1;
        }

        v42 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a4, v28);
        ++*(a4 + 56);
        v43 = wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(a4);
        wireless_diagnostics::google::protobuf::io::CodedInputStream::Skip(a4, v43);
        v44 = *(a4 + 56);
        v45 = __OFSUB__(v44, 1);
        v46 = v44 - 1;
        if (v46 < 0 == v45)
        {
          *(a4 + 56) = v46;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a4, v42);
      }

      else
      {
        v61 = 0;
        v18 = *(a4 + 8);
        if (v18 >= *(a4 + 16) || *v18 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a4, &v61))
          {
            goto LABEL_12;
          }
        }

        else
        {
          v61 = *v18;
          *(a4 + 8) = v18 + 1;
        }

        wis::reflect::getUnpackedType();
        WireTypeForType = wis::reflect::getWireTypeForType();
        v59 = a4;
        v20 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a4, v61);
        v60 = v20;
        __p = 0;
        v57 = 0;
        v58 = 0;
        do
        {
          while (1)
          {
            while (1)
            {
              if (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(a4) < 1)
              {
                if (v17 > 20)
                {
                  if (v17 <= 23)
                  {
                    if (v17 == 22)
                    {
                      sub_100045278(&__p, v64);
                      goto LABEL_121;
                    }

                    goto LABEL_53;
                  }

                  if (v17 == 26)
                  {
                    sub_100044F80(&__p, v64);
                    v39 = *v64;
                    if (*v64)
                    {
                      goto LABEL_123;
                    }

                    goto LABEL_124;
                  }

                  if (v17 == 25)
                  {
                    goto LABEL_120;
                  }

                  if (v17 != 24)
                  {
LABEL_156:
                    exception = __cxa_allocate_exception(0x10uLL);
                    std::runtime_error::runtime_error(exception, "This should never happen, no matter what the input!");
                  }
                }

                else
                {
                  if (v17 <= 17)
                  {
                    switch(v17)
                    {
                      case 15:
                        sub_100044BD0(&__p, v64);
                        break;
                      case 16:
                        sub_100044E44(&__p, v64);
                        break;
                      case 17:
LABEL_120:
                        sub_100045004(&__p, v64);
                        break;
                      default:
                        goto LABEL_156;
                    }

LABEL_121:
                    v39 = *v64;
                    if (*v64)
                    {
                      *&v64[2] = *v64;
LABEL_123:
                      operator delete(v39);
                    }

LABEL_124:
                    if (__p)
                    {
                      v57 = __p;
                      operator delete(__p);
                    }

                    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a4, v20);
                    goto LABEL_2;
                  }

                  if (v17 != 18)
                  {
                    if (v17 == 19)
                    {
                      sub_10004513C(&__p, v64);
                      goto LABEL_121;
                    }

LABEL_53:
                    sub_100044D0C(&__p, v64);
                    goto LABEL_121;
                  }
                }

                sub_100044B50(&__p, v64);
                goto LABEL_121;
              }

              *v64 = 0;
              sub_10004490C(&__p, v64);
              if (WireTypeForType > 1)
              {
                break;
              }

              if (WireTypeForType)
              {
                if (WireTypeForType == 1)
                {
                  LittleEndian64Fallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a4, v57 - 1);
LABEL_30:
                  if ((LittleEndian64Fallback & 1) == 0)
                  {
                    goto LABEL_47;
                  }
                }
              }

              else
              {
                v23 = v57 - 1;
                v24 = *(a4 + 8);
                if (v24 >= *(a4 + 16) || (v25 = *v24, (v25 & 0x8000000000000000) != 0))
                {
                  LittleEndian64Fallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a4, v23);
                  goto LABEL_30;
                }

                *v23 = v25;
                *(a4 + 8) = v24 + 1;
              }
            }

            if (WireTypeForType != 5)
            {
              break;
            }

            v64[0] = 0;
            LittleEndian32Fallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a4, v64);
            *(v57 - 1) = v64[0];
            if ((LittleEndian32Fallback & 1) == 0)
            {
              goto LABEL_47;
            }
          }
        }

        while (WireTypeForType != 2);
LABEL_47:
        if (__p)
        {
          v57 = __p;
          operator delete(__p);
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a4, v20);
LABEL_12:
        sub_1000E8954(a4, v14);
      }
    }

    else
    {
      if ((DecodingType - 1) < 0xC)
      {
        *v64 = 0;
        if (v13 > 1u)
        {
          if (v13 == 2)
          {
            goto LABEL_12;
          }

          if (v13 == 5)
          {
            LODWORD(__p) = 0;
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a4, &__p))
            {
              goto LABEL_12;
            }

            *v64 = __p;
          }
        }

        else if (v13)
        {
          if (v13 == 1 && (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a4, v64) & 1) == 0)
          {
            goto LABEL_12;
          }
        }

        else
        {
          v29 = *(a4 + 8);
          if (v29 >= *(a4 + 16) || (*v29 & 0x8000000000000000) != 0)
          {
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a4, v64) & 1) == 0)
            {
              goto LABEL_12;
            }
          }

          else
          {
            *v64 = *v29;
            *(a4 + 8) = v29 + 1;
          }
        }

        v32 = *v64;
        switch(BuiltinType)
        {
          case 1:
          case 15:
            wis::protobuf::NumberConverter<(wis::reflect::Type)1>::decode();
            continue;
          case 2:
          case 16:
            wis::protobuf::NumberConverter<(wis::reflect::Type)2>::decode();
            continue;
          case 3:
          case 17:
            if (v55 != v14)
            {
              continue;
            }

            v33 = v54;
            v34 = *(v54 + 56);
            if (v34)
            {
              goto LABEL_95;
            }

            goto LABEL_96;
          case 4:
          case 7:
          case 9:
          case 10:
          case 12:
          case 18:
          case 21:
          case 23:
          case 24:
          case 26:
            continue;
          case 5:
          case 19:
            v32 = wis::protobuf::NumberConverter<(wis::reflect::Type)5>::decode();
            if (v55 != v14)
            {
              continue;
            }

            v33 = v54;
            v34 = *(v54 + 56);
            if (v34)
            {
              goto LABEL_95;
            }

            goto LABEL_96;
          case 6:
          case 20:
            if (v55 == v14)
            {
              v35 = *(v54 + 56);
              if (v35)
              {
                LODWORD(v32) = (*(*v35 + 32))(v35, *v64);
              }

              if (*(v54 + 48) == v32)
              {
                goto LABEL_153;
              }
            }

            continue;
          case 8:
          case 22:
            v36 = wis::protobuf::NumberConverter<(wis::reflect::Type)8>::decode();
            if (v55 == v14)
            {
              v37 = *(v54 + 56);
              if (v37)
              {
                LODWORD(v36) = (*(*v37 + 32))(v37, v36);
              }

              if (*(v54 + 48) == v36)
              {
                goto LABEL_153;
              }
            }

            continue;
          case 11:
          case 25:
            if (v55 != v14)
            {
              continue;
            }

            v33 = v54;
            v34 = *(v54 + 56);
            if (v34)
            {
LABEL_95:
              v32 = (*(*v34 + 40))(v34, v32);
            }

LABEL_96:
            if (*(v33 + 48) == v32)
            {
              goto LABEL_153;
            }

            continue;
          default:
            v51 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v51, "This should never happen, no matter what the input!");
        }
      }

      if (DecodingType)
      {
        if (DecodingType != 13)
        {
          goto LABEL_12;
        }

        LODWORD(__p) = 0;
        v26 = *(a4 + 8);
        if (v26 >= *(a4 + 16) || *v26 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a4, &__p))
          {
            goto LABEL_12;
          }
        }

        else
        {
          LODWORD(__p) = *v26;
          *(a4 + 8) = v26 + 1;
        }

        memset(v64, 0, sizeof(v64));
        v65 = 0;
        String = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadString();
        if ((SHIBYTE(v65) & 0x80000000) == 0)
        {
          goto LABEL_140;
        }

        v41 = *v64;
        goto LABEL_139;
      }

      if (v13 > 1u)
      {
        if (v13 != 2)
        {
          if (v13 != 5)
          {
            goto LABEL_12;
          }

          v64[0] = 0;
          Varint64Fallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a4, v64);
          goto LABEL_149;
        }

        LODWORD(__p) = 0;
        v48 = *(a4 + 8);
        if (v48 >= *(a4 + 16) || (v31 = *v48, (v31 & 0x80000000) != 0))
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a4, &__p))
          {
            goto LABEL_12;
          }

          v31 = __p;
        }

        else
        {
          LODWORD(__p) = *v48;
          *(a4 + 8) = v48 + 1;
        }

LABEL_137:
        sub_100045794(v64, v31);
        String = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadRaw(a4, *v64, __p);
        v41 = *v64;
        if (*v64)
        {
          *&v64[2] = *v64;
LABEL_139:
          operator delete(v41);
        }

LABEL_140:
        if ((String & 1) == 0)
        {
          goto LABEL_12;
        }
      }

      else if (v13)
      {
        if (v13 != 1)
        {
          goto LABEL_12;
        }

        *v64 = 0;
        if (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a4, v64))
        {
          goto LABEL_12;
        }
      }

      else
      {
        *v64 = 0;
        v47 = *(a4 + 8);
        if (v47 < *(a4 + 16) && (*v47 & 0x80000000) == 0)
        {
          *(a4 + 8) = v47 + 1;
          continue;
        }

        Varint64Fallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a4, v64);
LABEL_149:
        if ((Varint64Fallback & 1) == 0)
        {
          goto LABEL_12;
        }
      }
    }
  }

LABEL_153:
  sub_1000447B8(&v53);
  if (v52)
  {
    sub_100008350(v52);
  }

  return v9 > 0;
}

uint64_t sub_1000E8908(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000E8954(uint64_t result, int a2)
{
  if (a2 || *(result + 36) != 1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Parsing failed in metric");
  }

  return result;
}

void *sub_1000E89CC(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = off_1002B0D78;
  v7[0] = off_1002B0DB8;
  v7[3] = v7;
  sub_100068C74(a1, a2, v7);
  sub_1000690B8(v7);
  *a1 = off_1002B0D78;
  a1[6] = a3;
  sub_100068E40(a2, a1 + 7);
  return a1;
}

void sub_1000E8A9C(_Unwind_Exception *a1)
{
  *v1 = off_1002ACE88;
  sub_1000690B8((v1 + 2));
  _Unwind_Resume(a1);
}

void *sub_1000E8AD8(void *a1)
{
  *a1 = off_1002B0D78;
  v2 = a1[7];
  a1[7] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *a1 = off_1002ACE88;
  sub_1000690B8((a1 + 2));
  return a1;
}

void sub_1000E8B6C(void *a1)
{
  *a1 = off_1002B0D78;
  v2 = a1[7];
  a1[7] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *a1 = off_1002ACE88;
  sub_1000690B8((a1 + 2));

  operator delete();
}

BOOL sub_1000E8CA8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = *a2;
  v6 = *(*a2 + 8);
  v7 = *(*a2 + 12);
  MetricFileMetadataHelper::MetricFileMetadataHelper();
  v53 = v5;
  v54 = v7;
LABEL_2:
  while (1)
  {
    v9 = wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(a4);
    if (v9 < 1)
    {
      break;
    }

    v10 = *(a4 + 8);
    if (v10 >= *(a4 + 16) || (TagFallback = *v10, (TagFallback & 0x80000000) != 0))
    {
      TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a4);
      *(a4 + 32) = TagFallback;
      if (!TagFallback)
      {
LABEL_14:
        sub_1000E96DC(a4, 0);
        continue;
      }
    }

    else
    {
      *(a4 + 32) = TagFallback;
      *(a4 + 8) = v10 + 1;
      if (!TagFallback)
      {
        goto LABEL_14;
      }
    }

    v12 = wis::reflect::decodeTag(TagFallback, v8);
    v13 = v12;
    v14 = HIDWORD(v12);
    memset(v63, 0, sizeof(v63));
    v64 = 0xFFFFFFFFLL;
    MetricFileMetadataHelper::getSubfieldType();
    *v63 = v61;
    v64 = v62;
    BuiltinType = MetadataHelper::getBuiltinType();
    DecodingType = wis::reflect::getDecodingType();
    v17 = DecodingType;
    if (DecodingType > 13)
    {
      if ((DecodingType - 15) >= 0xC)
      {
        if (DecodingType == 14)
        {
          LODWORD(__p) = 0;
          v30 = *(a4 + 8);
          if (v30 >= *(a4 + 16) || (v31 = *v30, (v31 & 0x80000000) != 0))
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a4, &__p))
            {
              goto LABEL_12;
            }

            v31 = __p;
          }

          else
          {
            LODWORD(__p) = *v30;
            *(a4 + 8) = v30 + 1;
          }

          goto LABEL_134;
        }

        if (DecodingType != 27)
        {
          goto LABEL_12;
        }

        v63[0] = 0;
        v27 = *(a4 + 8);
        if (v27 >= *(a4 + 16) || (v28 = *v27, v28 < 0))
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a4, v63))
          {
            goto LABEL_12;
          }

          v28 = v63[0];
        }

        else
        {
          v63[0] = *v27;
          *(a4 + 8) = v27 + 1;
        }

        v41 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a4, v28);
        ++*(a4 + 56);
        v42 = wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(a4);
        wireless_diagnostics::google::protobuf::io::CodedInputStream::Skip(a4, v42);
        v43 = *(a4 + 56);
        v44 = __OFSUB__(v43, 1);
        v45 = v43 - 1;
        if (v45 < 0 == v44)
        {
          *(a4 + 56) = v45;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a4, v41);
      }

      else
      {
        v60 = 0;
        v18 = *(a4 + 8);
        if (v18 >= *(a4 + 16) || *v18 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a4, &v60))
          {
            goto LABEL_12;
          }
        }

        else
        {
          v60 = *v18;
          *(a4 + 8) = v18 + 1;
        }

        wis::reflect::getUnpackedType();
        WireTypeForType = wis::reflect::getWireTypeForType();
        v58 = a4;
        v20 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a4, v60);
        v59 = v20;
        __p = 0;
        v56 = 0;
        v57 = 0;
        do
        {
          while (1)
          {
            while (1)
            {
              if (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(a4) < 1)
              {
                if (v17 > 20)
                {
                  if (v17 <= 23)
                  {
                    if (v17 == 22)
                    {
                      sub_100045278(&__p, v63);
                      goto LABEL_118;
                    }

                    goto LABEL_53;
                  }

                  if (v17 == 26)
                  {
                    sub_100044F80(&__p, v63);
                    v38 = *v63;
                    if (*v63)
                    {
                      goto LABEL_120;
                    }

                    goto LABEL_121;
                  }

                  if (v17 == 25)
                  {
                    goto LABEL_117;
                  }

                  if (v17 != 24)
                  {
LABEL_153:
                    exception = __cxa_allocate_exception(0x10uLL);
                    std::runtime_error::runtime_error(exception, "This should never happen, no matter what the input!");
                  }
                }

                else
                {
                  if (v17 <= 17)
                  {
                    switch(v17)
                    {
                      case 15:
                        sub_100044BD0(&__p, v63);
                        break;
                      case 16:
                        sub_100044E44(&__p, v63);
                        break;
                      case 17:
LABEL_117:
                        sub_100045004(&__p, v63);
                        break;
                      default:
                        goto LABEL_153;
                    }

LABEL_118:
                    v38 = *v63;
                    if (*v63)
                    {
                      *&v63[2] = *v63;
LABEL_120:
                      operator delete(v38);
                    }

LABEL_121:
                    if (__p)
                    {
                      v56 = __p;
                      operator delete(__p);
                    }

                    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a4, v20);
                    goto LABEL_2;
                  }

                  if (v17 != 18)
                  {
                    if (v17 == 19)
                    {
                      sub_10004513C(&__p, v63);
                      goto LABEL_118;
                    }

LABEL_53:
                    sub_100044D0C(&__p, v63);
                    goto LABEL_118;
                  }
                }

                sub_100044B50(&__p, v63);
                goto LABEL_118;
              }

              *v63 = 0;
              sub_10004490C(&__p, v63);
              if (WireTypeForType > 1)
              {
                break;
              }

              if (WireTypeForType)
              {
                if (WireTypeForType == 1)
                {
                  LittleEndian64Fallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a4, v56 - 1);
LABEL_30:
                  if ((LittleEndian64Fallback & 1) == 0)
                  {
                    goto LABEL_47;
                  }
                }
              }

              else
              {
                v23 = v56 - 1;
                v24 = *(a4 + 8);
                if (v24 >= *(a4 + 16) || (v25 = *v24, (v25 & 0x8000000000000000) != 0))
                {
                  LittleEndian64Fallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a4, v23);
                  goto LABEL_30;
                }

                *v23 = v25;
                *(a4 + 8) = v24 + 1;
              }
            }

            if (WireTypeForType != 5)
            {
              break;
            }

            v63[0] = 0;
            LittleEndian32Fallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a4, v63);
            *(v56 - 1) = v63[0];
            if ((LittleEndian32Fallback & 1) == 0)
            {
              goto LABEL_47;
            }
          }
        }

        while (WireTypeForType != 2);
LABEL_47:
        if (__p)
        {
          v56 = __p;
          operator delete(__p);
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a4, v20);
LABEL_12:
        sub_1000E96DC(a4, v14);
      }
    }

    else
    {
      if ((DecodingType - 1) < 0xC)
      {
        *v63 = 0;
        if (v13 > 1u)
        {
          if (v13 == 2)
          {
            goto LABEL_12;
          }

          if (v13 == 5)
          {
            LODWORD(__p) = 0;
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a4, &__p))
            {
              goto LABEL_12;
            }

            *v63 = __p;
          }
        }

        else if (v13)
        {
          if (v13 == 1 && (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a4, v63) & 1) == 0)
          {
            goto LABEL_12;
          }
        }

        else
        {
          v29 = *(a4 + 8);
          if (v29 >= *(a4 + 16) || (*v29 & 0x8000000000000000) != 0)
          {
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a4, v63) & 1) == 0)
            {
              goto LABEL_12;
            }
          }

          else
          {
            *v63 = *v29;
            *(a4 + 8) = v29 + 1;
          }
        }

        v32 = *v63;
        switch(BuiltinType)
        {
          case 1:
          case 15:
            wis::protobuf::NumberConverter<(wis::reflect::Type)1>::decode();
            continue;
          case 2:
          case 16:
            wis::protobuf::NumberConverter<(wis::reflect::Type)2>::decode();
            continue;
          case 3:
          case 6:
          case 11:
          case 12:
          case 17:
          case 20:
          case 25:
          case 26:
            continue;
          case 4:
          case 18:
            if (v54 != v14)
            {
              continue;
            }

            v33 = v53;
            v34 = *(v53 + 56);
            if (v34)
            {
              goto LABEL_97;
            }

            goto LABEL_98;
          case 5:
          case 19:
            wis::protobuf::NumberConverter<(wis::reflect::Type)5>::decode();
            continue;
          case 7:
          case 21:
            if (v54 != v14)
            {
              continue;
            }

            v35 = v53;
            v36 = *(v53 + 56);
            if (v36)
            {
              goto LABEL_102;
            }

            goto LABEL_103;
          case 8:
          case 22:
            wis::protobuf::NumberConverter<(wis::reflect::Type)8>::decode();
            continue;
          case 9:
          case 23:
            if (v54 != v14)
            {
              continue;
            }

            v35 = v53;
            v36 = *(v53 + 56);
            if (v36)
            {
LABEL_102:
              LODWORD(v32) = (*(*v36 + 16))(v36, *v63);
            }

LABEL_103:
            if (*(v35 + 48) == v32)
            {
              goto LABEL_150;
            }

            continue;
          case 10:
          case 24:
            if (v54 != v14)
            {
              continue;
            }

            v33 = v53;
            v34 = *(v53 + 56);
            if (v34)
            {
LABEL_97:
              v32 = (*(*v34 + 24))(v34, *v63);
            }

LABEL_98:
            if (*(v33 + 48) == v32)
            {
              goto LABEL_150;
            }

            continue;
          default:
            v50 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v50, "This should never happen, no matter what the input!");
        }
      }

      if (DecodingType)
      {
        if (DecodingType != 13)
        {
          goto LABEL_12;
        }

        LODWORD(__p) = 0;
        v26 = *(a4 + 8);
        if (v26 >= *(a4 + 16) || *v26 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a4, &__p))
          {
            goto LABEL_12;
          }
        }

        else
        {
          LODWORD(__p) = *v26;
          *(a4 + 8) = v26 + 1;
        }

        memset(v63, 0, sizeof(v63));
        v64 = 0;
        String = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadString();
        if ((SHIBYTE(v64) & 0x80000000) == 0)
        {
          goto LABEL_137;
        }

        v40 = *v63;
        goto LABEL_136;
      }

      if (v13 > 1u)
      {
        if (v13 != 2)
        {
          if (v13 != 5)
          {
            goto LABEL_12;
          }

          v63[0] = 0;
          Varint64Fallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a4, v63);
          goto LABEL_146;
        }

        LODWORD(__p) = 0;
        v47 = *(a4 + 8);
        if (v47 >= *(a4 + 16) || (v31 = *v47, (v31 & 0x80000000) != 0))
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a4, &__p))
          {
            goto LABEL_12;
          }

          v31 = __p;
        }

        else
        {
          LODWORD(__p) = *v47;
          *(a4 + 8) = v47 + 1;
        }

LABEL_134:
        sub_100045794(v63, v31);
        String = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadRaw(a4, *v63, __p);
        v40 = *v63;
        if (*v63)
        {
          *&v63[2] = *v63;
LABEL_136:
          operator delete(v40);
        }

LABEL_137:
        if ((String & 1) == 0)
        {
          goto LABEL_12;
        }
      }

      else if (v13)
      {
        if (v13 != 1)
        {
          goto LABEL_12;
        }

        *v63 = 0;
        if (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a4, v63))
        {
          goto LABEL_12;
        }
      }

      else
      {
        *v63 = 0;
        v46 = *(a4 + 8);
        if (v46 < *(a4 + 16) && (*v46 & 0x80000000) == 0)
        {
          *(a4 + 8) = v46 + 1;
          continue;
        }

        Varint64Fallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a4, v63);
LABEL_146:
        if ((Varint64Fallback & 1) == 0)
        {
          goto LABEL_12;
        }
      }
    }
  }

LABEL_150:
  sub_1000447B8(&v52);
  if (v51)
  {
    sub_100008350(v51);
  }

  return v9 > 0;
}

uint64_t sub_1000E9690(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000E96DC(uint64_t result, int a2)
{
  if (a2 || *(result + 36) != 1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Parsing failed in metric");
  }

  return result;
}

void *sub_1000E9754(void *a1)
{
  *a1 = off_1002ACE88;
  sub_1000690B8((a1 + 2));
  return a1;
}

void sub_1000E9798(void *a1)
{
  *a1 = off_1002ACE88;
  sub_1000690B8((a1 + 2));

  operator delete();
}

BOOL sub_1000E9884(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = *a2;
  v6 = *(*a2 + 8);
  v7 = *(*a2 + 12);
  MetricFileMetadataHelper::MetricFileMetadataHelper();
  v48 = v5;
  v49 = v7;
LABEL_2:
  while (1)
  {
    v9 = wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(a4);
    if (v9 < 1)
    {
      break;
    }

    v10 = *(a4 + 8);
    if (v10 >= *(a4 + 16) || (TagFallback = *v10, (TagFallback & 0x80000000) != 0))
    {
      TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a4);
      *(a4 + 32) = TagFallback;
      if (!TagFallback)
      {
LABEL_14:
        sub_1000EA1A8(a4, 0);
        continue;
      }
    }

    else
    {
      *(a4 + 32) = TagFallback;
      *(a4 + 8) = v10 + 1;
      if (!TagFallback)
      {
        goto LABEL_14;
      }
    }

    v12 = wis::reflect::decodeTag(TagFallback, v8);
    v13 = v12;
    v14 = HIDWORD(v12);
    memset(v58, 0, sizeof(v58));
    v59 = 0xFFFFFFFFLL;
    MetricFileMetadataHelper::getSubfieldType();
    *v58 = v56;
    v59 = v57;
    BuiltinType = MetadataHelper::getBuiltinType();
    DecodingType = wis::reflect::getDecodingType();
    v17 = DecodingType;
    if (DecodingType > 13)
    {
      if ((DecodingType - 15) >= 0xC)
      {
        if (DecodingType == 14)
        {
          LODWORD(__p) = 0;
          v30 = *(a4 + 8);
          if (v30 >= *(a4 + 16) || (v31 = *v30, (v31 & 0x80000000) != 0))
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a4, &__p))
            {
              goto LABEL_12;
            }

            v31 = __p;
          }

          else
          {
            LODWORD(__p) = *v30;
            *(a4 + 8) = v30 + 1;
          }

          goto LABEL_121;
        }

        if (DecodingType != 27)
        {
          goto LABEL_12;
        }

        v58[0] = 0;
        v27 = *(a4 + 8);
        if (v27 >= *(a4 + 16) || (v28 = *v27, v28 < 0))
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a4, v58))
          {
            goto LABEL_12;
          }

          v28 = v58[0];
        }

        else
        {
          v58[0] = *v27;
          *(a4 + 8) = v27 + 1;
        }

        v36 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a4, v28);
        ++*(a4 + 56);
        v37 = wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(a4);
        wireless_diagnostics::google::protobuf::io::CodedInputStream::Skip(a4, v37);
        v38 = *(a4 + 56);
        v39 = __OFSUB__(v38, 1);
        v40 = v38 - 1;
        if (v40 < 0 == v39)
        {
          *(a4 + 56) = v40;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a4, v36);
      }

      else
      {
        v55 = 0;
        v18 = *(a4 + 8);
        if (v18 >= *(a4 + 16) || *v18 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a4, &v55))
          {
            goto LABEL_12;
          }
        }

        else
        {
          v55 = *v18;
          *(a4 + 8) = v18 + 1;
        }

        wis::reflect::getUnpackedType();
        WireTypeForType = wis::reflect::getWireTypeForType();
        v53 = a4;
        v20 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a4, v55);
        v54 = v20;
        __p = 0;
        v51 = 0;
        v52 = 0;
        do
        {
          while (1)
          {
            while (1)
            {
              if (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(a4) < 1)
              {
                if (v17 > 20)
                {
                  if (v17 <= 23)
                  {
                    if (v17 == 22)
                    {
                      sub_100045278(&__p, v58);
                      goto LABEL_105;
                    }

                    goto LABEL_53;
                  }

                  if (v17 == 26)
                  {
                    sub_100044F80(&__p, v58);
                    v33 = *v58;
                    if (*v58)
                    {
                      goto LABEL_107;
                    }

                    goto LABEL_108;
                  }

                  if (v17 == 25)
                  {
                    goto LABEL_104;
                  }

                  if (v17 != 24)
                  {
LABEL_140:
                    exception = __cxa_allocate_exception(0x10uLL);
                    std::runtime_error::runtime_error(exception, "This should never happen, no matter what the input!");
                  }
                }

                else
                {
                  if (v17 <= 17)
                  {
                    switch(v17)
                    {
                      case 15:
                        sub_100044BD0(&__p, v58);
                        break;
                      case 16:
                        sub_100044E44(&__p, v58);
                        break;
                      case 17:
LABEL_104:
                        sub_100045004(&__p, v58);
                        break;
                      default:
                        goto LABEL_140;
                    }

LABEL_105:
                    v33 = *v58;
                    if (*v58)
                    {
                      *&v58[2] = *v58;
LABEL_107:
                      operator delete(v33);
                    }

LABEL_108:
                    if (__p)
                    {
                      v51 = __p;
                      operator delete(__p);
                    }

                    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a4, v20);
                    goto LABEL_2;
                  }

                  if (v17 != 18)
                  {
                    if (v17 == 19)
                    {
                      sub_10004513C(&__p, v58);
                      goto LABEL_105;
                    }

LABEL_53:
                    sub_100044D0C(&__p, v58);
                    goto LABEL_105;
                  }
                }

                sub_100044B50(&__p, v58);
                goto LABEL_105;
              }

              *v58 = 0;
              sub_10004490C(&__p, v58);
              if (WireTypeForType > 1)
              {
                break;
              }

              if (WireTypeForType)
              {
                if (WireTypeForType == 1)
                {
                  LittleEndian64Fallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a4, v51 - 1);
LABEL_30:
                  if ((LittleEndian64Fallback & 1) == 0)
                  {
                    goto LABEL_47;
                  }
                }
              }

              else
              {
                v23 = v51 - 1;
                v24 = *(a4 + 8);
                if (v24 >= *(a4 + 16) || (v25 = *v24, (v25 & 0x8000000000000000) != 0))
                {
                  LittleEndian64Fallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a4, v23);
                  goto LABEL_30;
                }

                *v23 = v25;
                *(a4 + 8) = v24 + 1;
              }
            }

            if (WireTypeForType != 5)
            {
              break;
            }

            v58[0] = 0;
            LittleEndian32Fallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a4, v58);
            *(v51 - 1) = v58[0];
            if ((LittleEndian32Fallback & 1) == 0)
            {
              goto LABEL_47;
            }
          }
        }

        while (WireTypeForType != 2);
LABEL_47:
        if (__p)
        {
          v51 = __p;
          operator delete(__p);
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a4, v20);
LABEL_12:
        sub_1000EA1A8(a4, v14);
      }
    }

    else
    {
      if ((DecodingType - 1) < 0xC)
      {
        *v58 = 0;
        if (v13 > 1u)
        {
          if (v13 == 2)
          {
            goto LABEL_12;
          }

          if (v13 == 5)
          {
            LODWORD(__p) = 0;
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a4, &__p))
            {
              goto LABEL_12;
            }

            *v58 = __p;
          }
        }

        else if (v13)
        {
          if (v13 == 1 && (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a4, v58) & 1) == 0)
          {
            goto LABEL_12;
          }
        }

        else
        {
          v29 = *(a4 + 8);
          if (v29 >= *(a4 + 16) || (*v29 & 0x8000000000000000) != 0)
          {
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a4, v58) & 1) == 0)
            {
              goto LABEL_12;
            }
          }

          else
          {
            *v58 = *v29;
            *(a4 + 8) = v29 + 1;
          }
        }

        switch(BuiltinType)
        {
          case 1:
          case 15:
            wis::protobuf::NumberConverter<(wis::reflect::Type)1>::decode();
            continue;
          case 2:
          case 16:
            wis::protobuf::NumberConverter<(wis::reflect::Type)2>::decode();
            continue;
          case 3:
          case 4:
          case 6:
          case 7:
          case 9:
          case 10:
          case 11:
          case 17:
          case 18:
          case 20:
          case 21:
          case 23:
          case 24:
          case 25:
            continue;
          case 5:
          case 19:
            wis::protobuf::NumberConverter<(wis::reflect::Type)5>::decode();
            continue;
          case 8:
          case 22:
            wis::protobuf::NumberConverter<(wis::reflect::Type)8>::decode();
            continue;
          case 12:
          case 26:
            if (v49 == v14 && *(v48 + 48) == (*v58 != 0))
            {
              goto LABEL_137;
            }

            continue;
          default:
            v45 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v45, "This should never happen, no matter what the input!");
        }
      }

      if (DecodingType)
      {
        if (DecodingType != 13)
        {
          goto LABEL_12;
        }

        LODWORD(__p) = 0;
        v26 = *(a4 + 8);
        if (v26 >= *(a4 + 16) || *v26 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a4, &__p))
          {
            goto LABEL_12;
          }
        }

        else
        {
          LODWORD(__p) = *v26;
          *(a4 + 8) = v26 + 1;
        }

        memset(v58, 0, sizeof(v58));
        v59 = 0;
        String = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadString();
        if ((SHIBYTE(v59) & 0x80000000) == 0)
        {
          goto LABEL_124;
        }

        v35 = *v58;
        goto LABEL_123;
      }

      if (v13 > 1u)
      {
        if (v13 != 2)
        {
          if (v13 != 5)
          {
            goto LABEL_12;
          }

          v58[0] = 0;
          Varint64Fallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a4, v58);
          goto LABEL_133;
        }

        LODWORD(__p) = 0;
        v42 = *(a4 + 8);
        if (v42 >= *(a4 + 16) || (v31 = *v42, (v31 & 0x80000000) != 0))
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a4, &__p))
          {
            goto LABEL_12;
          }

          v31 = __p;
        }

        else
        {
          LODWORD(__p) = *v42;
          *(a4 + 8) = v42 + 1;
        }

LABEL_121:
        sub_100045794(v58, v31);
        String = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadRaw(a4, *v58, __p);
        v35 = *v58;
        if (*v58)
        {
          *&v58[2] = *v58;
LABEL_123:
          operator delete(v35);
        }

LABEL_124:
        if ((String & 1) == 0)
        {
          goto LABEL_12;
        }
      }

      else if (v13)
      {
        if (v13 != 1)
        {
          goto LABEL_12;
        }

        *v58 = 0;
        if (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a4, v58))
        {
          goto LABEL_12;
        }
      }

      else
      {
        *v58 = 0;
        v41 = *(a4 + 8);
        if (v41 < *(a4 + 16) && (*v41 & 0x80000000) == 0)
        {
          *(a4 + 8) = v41 + 1;
          continue;
        }

        Varint64Fallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a4, v58);
LABEL_133:
        if ((Varint64Fallback & 1) == 0)
        {
          goto LABEL_12;
        }
      }
    }
  }

LABEL_137:
  sub_1000447B8(&v47);
  if (v46)
  {
    sub_100008350(v46);
  }

  return v9 > 0;
}

uint64_t sub_1000EA15C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000EA1A8(uint64_t result, int a2)
{
  if (a2 || *(result + 36) != 1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Parsing failed in metric");
  }

  return result;
}

uint64_t sub_1000EA220(uint64_t a1)
{
  *a1 = off_1002B0EF8;
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  *a1 = off_1002ACE88;
  sub_1000690B8(a1 + 16);
  return a1;
}

void sub_1000EA294(uint64_t a1)
{
  *a1 = off_1002B0EF8;
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  *a1 = off_1002ACE88;
  sub_1000690B8(a1 + 16);

  operator delete();
}

BOOL sub_1000EA3B0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = *a2;
  v6 = *(*a2 + 8);
  v7 = *(*a2 + 12);
  MetricFileMetadataHelper::MetricFileMetadataHelper();
  v55 = v5;
  v56 = v7;
LABEL_2:
  while (1)
  {
    v9 = wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(a4);
    if (v9 < 1)
    {
      break;
    }

    v10 = *(a4 + 8);
    if (v10 >= *(a4 + 16) || (TagFallback = *v10, (TagFallback & 0x80000000) != 0))
    {
      TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a4);
      *(a4 + 32) = TagFallback;
      if (!TagFallback)
      {
LABEL_13:
        sub_1000EAD20(a4, 0);
        continue;
      }
    }

    else
    {
      *(a4 + 32) = TagFallback;
      *(a4 + 8) = v10 + 1;
      if (!TagFallback)
      {
        goto LABEL_13;
      }
    }

    v12 = wis::reflect::decodeTag(TagFallback, v8);
    v13 = v12;
    v14 = HIDWORD(v12);
    memset(v65, 0, sizeof(v65));
    v66 = 0xFFFFFFFFLL;
    MetricFileMetadataHelper::getSubfieldType();
    *v65 = v63;
    v66 = v64;
    BuiltinType = MetadataHelper::getBuiltinType();
    DecodingType = wis::reflect::getDecodingType();
    v17 = DecodingType;
    if (DecodingType > 13)
    {
      if ((DecodingType - 15) >= 0xC)
      {
        if (DecodingType == 14)
        {
          LODWORD(__p) = 0;
          v31 = *(a4 + 8);
          if (v31 >= *(a4 + 16) || (v32 = *v31, (v32 & 0x80000000) != 0))
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a4, &__p))
            {
              goto LABEL_49;
            }

            v32 = __p;
          }

          else
          {
            LODWORD(__p) = *v31;
            *(a4 + 8) = v31 + 1;
          }

          goto LABEL_136;
        }

        if (DecodingType != 27)
        {
          goto LABEL_49;
        }

        v65[0] = 0;
        v28 = *(a4 + 8);
        if (v28 >= *(a4 + 16) || (v29 = *v28, v29 < 0))
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a4, v65))
          {
            goto LABEL_49;
          }

          v29 = v65[0];
        }

        else
        {
          v65[0] = *v28;
          *(a4 + 8) = v28 + 1;
        }

        v42 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a4, v29);
        ++*(a4 + 56);
        v43 = wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(a4);
        wireless_diagnostics::google::protobuf::io::CodedInputStream::Skip(a4, v43);
        v44 = *(a4 + 56);
        v45 = __OFSUB__(v44, 1);
        v46 = v44 - 1;
        if (v46 < 0 == v45)
        {
          *(a4 + 56) = v46;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a4, v42);
      }

      else
      {
        v62 = 0;
        v19 = *(a4 + 8);
        if (v19 >= *(a4 + 16) || *v19 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a4, &v62))
          {
            goto LABEL_49;
          }
        }

        else
        {
          v62 = *v19;
          *(a4 + 8) = v19 + 1;
        }

        wis::reflect::getUnpackedType();
        WireTypeForType = wis::reflect::getWireTypeForType();
        v60 = a4;
        v21 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a4, v62);
        v61 = v21;
        __p = 0;
        v58 = 0;
        v59 = 0;
        do
        {
          while (1)
          {
            while (1)
            {
              if (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(a4) < 1)
              {
                if (v17 > 20)
                {
                  if (v17 <= 23)
                  {
                    if (v17 == 22)
                    {
                      sub_100045278(&__p, v65);
                      goto LABEL_101;
                    }

                    goto LABEL_52;
                  }

                  if (v17 == 26)
                  {
                    sub_100044F80(&__p, v65);
                    v34 = *v65;
                    if (*v65)
                    {
                      goto LABEL_103;
                    }

                    goto LABEL_104;
                  }

                  if (v17 == 25)
                  {
                    goto LABEL_100;
                  }

                  if (v17 != 24)
                  {
LABEL_156:
                    exception = __cxa_allocate_exception(0x10uLL);
                    std::runtime_error::runtime_error(exception, "This should never happen, no matter what the input!");
                  }
                }

                else
                {
                  if (v17 <= 17)
                  {
                    switch(v17)
                    {
                      case 15:
                        sub_100044BD0(&__p, v65);
                        break;
                      case 16:
                        sub_100044E44(&__p, v65);
                        break;
                      case 17:
LABEL_100:
                        sub_100045004(&__p, v65);
                        break;
                      default:
                        goto LABEL_156;
                    }

LABEL_101:
                    v34 = *v65;
                    if (*v65)
                    {
                      *&v65[2] = *v65;
LABEL_103:
                      operator delete(v34);
                    }

LABEL_104:
                    if (__p)
                    {
                      v58 = __p;
                      operator delete(__p);
                    }

                    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a4, v21);
                    goto LABEL_2;
                  }

                  if (v17 != 18)
                  {
                    if (v17 == 19)
                    {
                      sub_10004513C(&__p, v65);
                      goto LABEL_101;
                    }

LABEL_52:
                    sub_100044D0C(&__p, v65);
                    goto LABEL_101;
                  }
                }

                sub_100044B50(&__p, v65);
                goto LABEL_101;
              }

              *v65 = 0;
              sub_10004490C(&__p, v65);
              if (WireTypeForType > 1)
              {
                break;
              }

              if (WireTypeForType)
              {
                if (WireTypeForType == 1)
                {
                  LittleEndian64Fallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a4, v58 - 1);
LABEL_29:
                  if ((LittleEndian64Fallback & 1) == 0)
                  {
                    goto LABEL_46;
                  }
                }
              }

              else
              {
                v24 = v58 - 1;
                v25 = *(a4 + 8);
                if (v25 >= *(a4 + 16) || (v26 = *v25, (v26 & 0x8000000000000000) != 0))
                {
                  LittleEndian64Fallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a4, v24);
                  goto LABEL_29;
                }

                *v24 = v26;
                *(a4 + 8) = v25 + 1;
              }
            }

            if (WireTypeForType != 5)
            {
              break;
            }

            v65[0] = 0;
            LittleEndian32Fallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a4, v65);
            *(v58 - 1) = v65[0];
            if ((LittleEndian32Fallback & 1) == 0)
            {
              goto LABEL_46;
            }
          }
        }

        while (WireTypeForType != 2);
LABEL_46:
        if (__p)
        {
          v58 = __p;
          operator delete(__p);
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a4, v21);
LABEL_49:
        sub_1000EAD20(a4, v14);
      }
    }

    else
    {
      if ((DecodingType - 1) < 0xC)
      {
        *v65 = 0;
        if (v13 > 1u)
        {
          if (v13 == 2)
          {
            goto LABEL_49;
          }

          if (v13 == 5)
          {
            LODWORD(__p) = 0;
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a4, &__p))
            {
              goto LABEL_49;
            }

            *v65 = __p;
          }
        }

        else if (v13)
        {
          if (v13 == 1)
          {
            Varint64Fallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a4, v65);
LABEL_83:
            if ((Varint64Fallback & 1) == 0)
            {
              goto LABEL_49;
            }
          }
        }

        else
        {
          v30 = *(a4 + 8);
          if (v30 >= *(a4 + 16) || (*v30 & 0x8000000000000000) != 0)
          {
            Varint64Fallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a4, v65);
            goto LABEL_83;
          }

          *v65 = *v30;
          *(a4 + 8) = v30 + 1;
        }

        switch(BuiltinType)
        {
          case 1:
          case 15:
            wis::protobuf::NumberConverter<(wis::reflect::Type)1>::decode();
            break;
          case 2:
          case 16:
            wis::protobuf::NumberConverter<(wis::reflect::Type)2>::decode();
            break;
          case 3:
          case 4:
          case 6:
          case 7:
          case 9:
          case 10:
          case 11:
          case 12:
          case 17:
          case 18:
          case 20:
          case 21:
          case 23:
          case 24:
          case 25:
          case 26:
            continue;
          case 5:
          case 19:
            wis::protobuf::NumberConverter<(wis::reflect::Type)5>::decode();
            break;
          case 8:
          case 22:
            wis::protobuf::NumberConverter<(wis::reflect::Type)8>::decode();
            break;
          default:
            v52 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v52, "This should never happen, no matter what the input!");
        }

        continue;
      }

      if (DecodingType)
      {
        if (DecodingType != 13)
        {
          goto LABEL_49;
        }

        LODWORD(__p) = 0;
        v27 = *(a4 + 8);
        if (v27 >= *(a4 + 16) || *v27 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a4, &__p))
          {
            goto LABEL_49;
          }
        }

        else
        {
          LODWORD(__p) = *v27;
          *(a4 + 8) = v27 + 1;
        }

        memset(v65, 0, sizeof(v65));
        v66 = 0;
        String = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadString();
        if (String)
        {
          v36 = HIBYTE(v66);
          v37 = HIBYTE(v66);
          if (v56 != v14)
          {
            goto LABEL_140;
          }

          v38 = *(v55 + 71);
          if (v38 >= 0)
          {
            v39 = *(v55 + 71);
          }

          else
          {
            v39 = *(v55 + 56);
          }

          if (v66 < 0)
          {
            v36 = *&v65[2];
          }

          if (v39 == v36)
          {
            if (v38 >= 0)
            {
              v40 = (v55 + 48);
            }

            else
            {
              v40 = *(v55 + 48);
            }

            if (v66 >= 0)
            {
              v41 = v65;
            }

            else
            {
              v41 = *v65;
            }

            v13 = memcmp(v40, v41, v39) == 0;
            if ((v37 & 0x80) == 0)
            {
              goto LABEL_126;
            }
          }

          else
          {
LABEL_140:
            v13 = 0;
            if ((v66 & 0x8000000000000000) == 0)
            {
              goto LABEL_126;
            }
          }

LABEL_125:
          operator delete(*v65);
          goto LABEL_126;
        }

        if (v66 < 0)
        {
          goto LABEL_125;
        }

LABEL_126:
        if ((String & 1) == 0)
        {
          goto LABEL_49;
        }

        if (v13)
        {
          break;
        }
      }

      else if (v13 > 1u)
      {
        if (v13 != 2)
        {
          if (v13 != 5)
          {
            goto LABEL_49;
          }

          v65[0] = 0;
          v33 = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a4, v65);
          goto LABEL_149;
        }

        LODWORD(__p) = 0;
        v49 = *(a4 + 8);
        if (v49 >= *(a4 + 16) || (v32 = *v49, (v32 & 0x80000000) != 0))
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a4, &__p))
          {
            goto LABEL_49;
          }

          v32 = __p;
        }

        else
        {
          LODWORD(__p) = *v49;
          *(a4 + 8) = v49 + 1;
        }

LABEL_136:
        sub_100045794(v65, v32);
        Raw = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadRaw(a4, *v65, __p);
        if (*v65)
        {
          *&v65[2] = *v65;
          operator delete(*v65);
        }

        if ((Raw & 1) == 0)
        {
          goto LABEL_49;
        }
      }

      else if (v13)
      {
        if (v13 != 1)
        {
          goto LABEL_49;
        }

        *v65 = 0;
        if (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a4, v65))
        {
          goto LABEL_49;
        }
      }

      else
      {
        *v65 = 0;
        v48 = *(a4 + 8);
        if (v48 < *(a4 + 16) && (*v48 & 0x80000000) == 0)
        {
          *(a4 + 8) = v48 + 1;
          continue;
        }

        v33 = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a4, v65);
LABEL_149:
        if ((v33 & 1) == 0)
        {
          goto LABEL_49;
        }
      }
    }
  }

  sub_1000447B8(&v54);
  if (v53)
  {
    sub_100008350(v53);
  }

  return v9 > 0;
}

uint64_t sub_1000EACD4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000EAD20(uint64_t result, int a2)
{
  if (a2 || *(result + 36) != 1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Parsing failed in metric");
  }

  return result;
}

void sub_1000EAD98(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 8u);
}

void *sub_1000EB468(void *a1)
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
    sub_100008350(v3);
  }

  return a1;
}

void sub_1000EB4AC(wireless_diagnostics::google::protobuf::MessageLite **a1, uint64_t *a2)
{
  if (*a2)
  {
    if (*a1)
    {
      v4 = sub_10005DF2C(*a2, &__p);
      if (__p == v14)
      {
        if (os_log_type_enabled(*(qword_1002DBE98 + 128), OS_LOG_TYPE_ERROR))
        {
          sub_100208888();
        }
      }

      else
      {
        v5 = *a1;
        v6 = **a2;
        *(v5 + 16) = *(*a1 + 16) | 2;
        *(v5 + 14) = v6;
        WISTimestamp = wis::getWISTimestamp(v4);
        *(v5 + 16) |= 1u;
        *(v5 + 1) = WISTimestamp;
        v8 = **a2;
        if (v8 > 4353)
        {
          if (v8 == 4354)
          {
            operator new();
          }

          if (v8 == 4355)
          {
            operator new();
          }
        }

        else
        {
          if (v8 == 4097)
          {
            operator new();
          }

          if (v8 == 4353)
          {
            operator new();
          }
        }

        v9 = (*(**a1 + 72))();
        v10 = a1[2];
        v11 = a1[3];
        if (v9 <= (v11 - v10))
        {
          if (v9 < (v11 - v10))
          {
            a1[3] = (v10 + v9);
          }
        }

        else
        {
          sub_10000CA0C(a1 + 2, v9 - (v11 - v10));
          v10 = a1[2];
          v12 = a1[3];
        }

        if ((wireless_diagnostics::google::protobuf::MessageLite::SerializeToArray(*a1, v10) & 1) == 0)
        {
          if (os_log_type_enabled(*(qword_1002DBE98 + 128), OS_LOG_TYPE_ERROR))
          {
            sub_100208854();
          }

          a1[3] = a1[2];
        }
      }

      if (__p)
      {
        v14 = __p;
        operator delete(__p);
      }
    }

    else if (os_log_type_enabled(*(qword_1002DBE98 + 128), OS_LOG_TYPE_ERROR))
    {
      sub_1002088BC();
    }
  }

  else if (os_log_type_enabled(*(qword_1002DBE98 + 128), OS_LOG_TYPE_ERROR))
  {
    sub_1002088F0();
  }
}

void *sub_1000EB964(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_1002B0FB8;
  sub_10010FB00((a1 + 3));
  return a1;
}

void sub_1000EB9E0(std::__shared_weak_count *a1)
{
  a1->__vftable = off_1002B0FB8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1000EBC34(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = qword_1002D85B0;
  qword_1002D85B0 = v1;
}

void sub_1000EBE54(uint64_t a1)
{
  v2 = [*(a1 + 32) fmOosModel];
  if (v2 || ([*(a1 + 32) fmCongestionModel], (v2 = objc_claimAutoreleasedReturnValue()) != 0) || (objc_msgSend(*(a1 + 32), "fmTimeSeriesModel"), (v2 = objc_claimAutoreleasedReturnValue()) != 0) || (objc_msgSend(*(a1 + 32), "fmCellMapModel"), (v2 = objc_claimAutoreleasedReturnValue()) != 0))
  {
  }

  else
  {
    v39 = [*(a1 + 32) fmCoreData];

    if (!v39)
    {
      goto LABEL_9;
    }
  }

  v3 = *(qword_1002DBE98 + 136);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    LOWORD(v40) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "FederatedMobility:#I Federated Mobility set, unsetting to shut it down", &v40, 2u);
  }

  [*(a1 + 32) setFmOosModel:0];
  [*(a1 + 32) setFmCongestionModel:0];
  [*(a1 + 32) setFmTimeSeriesModel:0];
  [*(a1 + 32) setFmCellMapModel:0];
  [*(a1 + 32) setFmCoreData:0];
LABEL_9:
  [FMConfiguration replaceSharedInstanceWithValuesOrDefaults:*(a1 + 40)];
  v4 = +[FMConfiguration sharedInstance];
  v5 = v4 == 0;

  v6 = *(qword_1002DBE98 + 136);
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100208A90();
    }
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = *(a1 + 40);
      v40 = 138412290;
      v41 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "FederatedMobility:#I Initializing Federated Mobility with config: %@", &v40, 0xCu);
    }

    v8 = [[FMCoreRoutineController alloc] initWithDelegate:*(a1 + 32)];
    [*(a1 + 32) setFmCoreRoutineController:v8];

    v9 = [*(a1 + 32) fmCoreRoutineController];
    LODWORD(v8) = v9 == 0;

    if (v8)
    {
      if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_ERROR))
      {
        sub_100208A5C();
      }
    }

    else
    {
      v10 = objc_alloc_init(FMCoreData);
      [*(a1 + 32) setFmCoreData:v10];

      v11 = [*(a1 + 32) fmCoreData];
      LODWORD(v10) = v11 == 0;

      if (v10)
      {
        if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_ERROR))
        {
          sub_100208A28();
        }
      }

      else
      {
        v12 = +[FMConfiguration sharedInstance];
        v13 = [v12 enableFedMobilityOOSLearnings];

        if (v13)
        {
          v14 = [FMOOSModel alloc];
          v15 = [*(a1 + 32) fmCoreData];
          v16 = [*(a1 + 32) locationController];
          v17 = [(FMOOSModel *)v14 initWithFMCoreData:v15 locationController:v16];
          [*(a1 + 32) setFmOosModel:v17];

          v18 = [*(a1 + 32) fmOosModel];
          dispatch_group_notify([v18 _initialSyncGroup], objc_msgSend(*(a1 + 32), "queue"), &stru_1002B0FF8);
        }

        else
        {
          v20 = *(qword_1002DBE98 + 136);
          v19 = os_log_type_enabled(v20, OS_LOG_TYPE_INFO);
          if (v19)
          {
            LOWORD(v40) = 0;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "FederatedMobility:#I Not Initializing Federated Mobility OOS predictions due to config setting", &v40, 2u);
          }
        }

        if (capabilities::abs::supportsCongestionPrediction(v19) && (+[FMConfiguration sharedInstance](FMConfiguration, "sharedInstance"), v21 = objc_claimAutoreleasedReturnValue(), v22 = [v21 enableCongestionPredictions], v21, v22))
        {
          if (TelephonyRadiosGetRadioVendor() == 3)
          {
            v23 = [FMCellMapModel alloc];
            v24 = [*(a1 + 32) fmCoreData];
            v25 = [*(a1 + 32) locationController];
            v26 = [(FMCellMapModel *)v23 initWithFMCoreData:v24 locationController:v25];
            [*(a1 + 32) setFmCellMapModel:v26];

            if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
            {
              sub_10020898C();
            }
          }

          else
          {
            v35 = [FMCongestionModel alloc];
            v36 = [*(a1 + 32) fmCoreData];
            v37 = [*(a1 + 32) locationController];
            v38 = [(FMCongestionModel *)v35 initWithFMCoreData:v36 locationController:v37];
            [*(a1 + 32) setFmCongestionModel:v38];

            if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
            {
              sub_100208958();
            }
          }
        }

        else
        {
          v27 = *(qword_1002DBE98 + 136);
          if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
          {
            LOWORD(v40) = 0;
            _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "FederatedMobility:#I Not Initializing Federated Mobility congestion predictions due to config setting", &v40, 2u);
          }
        }

        v28 = +[FMConfiguration sharedInstance];
        v29 = [v28 FMTSEnableTimeSeriesPredictions];

        if (v29)
        {
          v30 = [FMTimeSeriesModel alloc];
          v31 = [*(a1 + 32) fmCoreData];
          v32 = [*(a1 + 32) locationController];
          v33 = [(FMTimeSeriesModel *)v30 initWithFMCoreData:v31 locationController:v32];
          [*(a1 + 32) setFmTimeSeriesModel:v33];

          if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
          {
            sub_1002089C0();
          }
        }

        else
        {
          v34 = *(qword_1002DBE98 + 136);
          if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
          {
            LOWORD(v40) = 0;
            _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_INFO, "FederatedMobility:#I Not Initializing Federated Mobility time series predictions due to config setting", &v40, 2u);
          }
        }

        if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
        {
          sub_1002089F4();
        }
      }
    }
  }
}

void sub_1000EC518(id a1)
{
  if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
  {
    sub_100208AC4();
  }
}

void sub_1000EC560(uint64_t a1)
{
  v1 = [*(a1 + 32) locationController];
  [v1 start];
}

void sub_1000EC6E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = FederatedMobility;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

id sub_1000EC814(uint64_t *a1)
{
  v2 = +[FMConfiguration sharedInstance];
  v3 = [v2 FMCellMapInternalOverrideEnabled];

  if (v3)
  {
    v4 = +[FederatedMobility getSharedInstance];
    v5 = [v4 fmCoreData];
    if (*(a1 + 23) < 0)
    {
      a1 = *a1;
    }

    v6 = [NSString stringWithUTF8String:a1];
    v7 = [v5 resetAndPopulateCellMapDatabaseWithJSON:v6];
  }

  else
  {
    if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
    {
      sub_100208B2C();
    }

    return 0;
  }

  return v7;
}

void sub_1000ECB00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_1000ECB3C(uint64_t a1)
{
  if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
  {
    sub_100208BD4();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained delegate];
  [v3 significantLocationsDidClear];
}

void sub_1000ECC80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = FMCoreRoutineController;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1000ED21C(uint64_t a1@<X8>)
{
  v13 = 0;
  v2 = [BatteryUtils batteryInfoWithError:&v13];
  v3 = v13;
  v4 = v3;
  if (v2)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    v8 = [v2 manufactureDate];
    [v8 timeIntervalSince1970];
    v10 = v9;
    v11 = [v2 firstUseDate];
    [v11 timeIntervalSince1970];
    *a1 = v10;
    *(a1 + 8) = v12;
    *(a1 + 16) = 1;
  }

  else
  {
    v6 = *(qword_1002DBE98 + 48);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [v4 localizedDescription];
      sub_100208C3C(v7, buf, v6);
    }

    *a1 = 0;
    *(a1 + 16) = 0;
  }
}

uint64_t *sub_1000ED388(uint64_t a1, unsigned int a2)
{
  v5 = a2;
  result = sub_1000E7648(a1 + 8, &v5);
  v4 = v5;
  if (v5 == 8 || v5 == 72 || v5 == 34)
  {
    *(a1 + 32) = 1;
    if (v4 == 8)
    {
      *(a1 + 33) = 1;
    }
  }

  return result;
}

void sub_1000ED3FC(uint64_t a1@<X0>, const void **a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = *(a1 + 8);
  v3 = (a1 + 16);
  if (v2 != (a1 + 16))
  {
    v5 = 0;
    do
    {
      v6 = a2[2];
      if (v5 >= v6)
      {
        v7 = *a2;
        v8 = v5 - *a2;
        v9 = v8 >> 2;
        v10 = (v8 >> 2) + 1;
        if (v10 >> 62)
        {
          sub_100033FD0();
        }

        v11 = v6 - v7;
        if (v11 >> 1 > v10)
        {
          v10 = v11 >> 1;
        }

        if (v11 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v12 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v12 = v10;
        }

        if (v12)
        {
          sub_10000A8C0(a2, v12);
        }

        *(4 * v9) = *(v2 + 7);
        v5 = (4 * v9 + 4);
        memcpy(0, v7, v8);
        v13 = *a2;
        *a2 = 0;
        a2[1] = v5;
        a2[2] = 0;
        if (v13)
        {
          operator delete(v13);
        }
      }

      else
      {
        *v5 = *(v2 + 7);
        v5 += 4;
      }

      a2[1] = v5;
      v14 = v2[1];
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
          v15 = v2[2];
          v16 = *v15 == v2;
          v2 = v15;
        }

        while (!v16);
      }

      v2 = v15;
    }

    while (v15 != v3);
  }
}

void sub_1000ED540(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000ED824(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  pthread_mutex_unlock(&stru_1002D4A00);
  if (a14)
  {
    sub_100008350(a14);
  }

  v16 = *(v14 + 8);
  if (v16)
  {
    sub_100008350(v16);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1000ED8B8(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1000ED8D4(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    sub_100008350(v1);
  }
}

void *sub_1000ED8E4(void *a1, const char *a2, dispatch_qos_class_t qos_class, const char *a4)
{
  v7 = dispatch_queue_attr_make_with_qos_class(0, qos_class, 0);
  v8 = dispatch_queue_create(a2, v7);
  *a1 = 0;
  a1[1] = 0;
  a1[2] = v8;
  if (v8)
  {
    v9 = v8;
    dispatch_retain(v8);
    a1[3] = 0;
    dispatch_release(v9);
  }

  else
  {
    a1[3] = 0;
  }

  ctu::OsLogLogger::OsLogLogger((a1 + 4), "com.apple.wis.wirelessinsightsd", a4);
  return a1;
}

uint64_t sub_1000ED988(uint64_t a1)
{
  *a1 = off_1002B1058;
  v5 = (a1 + 88);
  sub_1000F1890(&v5);
  sub_1000F17E8(a1 + 64, *(a1 + 72));
  XPCEventPublisher.Token.rawValue.getter(v2, v3);
  ctu::OsLogLogger::~OsLogLogger((a1 + 40));
  sub_100032AD8((a1 + 8));
  return a1;
}

void sub_1000EDA08(uint64_t a1)
{
  sub_1000ED988(a1);

  operator delete();
}

void sub_1000EDA40(uint64_t a1)
{
  pthread_mutex_lock(&stru_1002D4A58);
  v2 = xmmword_1002D4A98;
  if (!xmmword_1002D4A98)
  {
    sub_1000927A0();
  }

  v3 = *(&xmmword_1002D4A98 + 1);
  if (*(&xmmword_1002D4A98 + 1))
  {
    atomic_fetch_add_explicit((*(&xmmword_1002D4A98 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&stru_1002D4A58);
  v4 = sub_1000DF7A0(v2);
  sub_1000EDC94(a1, v4);
  if (v3)
  {
    sub_100008350(v3);
  }

  pthread_mutex_lock(&stru_1002D4A58);
  v5 = xmmword_1002D4A98;
  if (!xmmword_1002D4A98)
  {
    sub_1000927A0();
  }

  v6 = *(&xmmword_1002D4A98 + 1);
  if (*(&xmmword_1002D4A98 + 1))
  {
    atomic_fetch_add_explicit((*(&xmmword_1002D4A98 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&stru_1002D4A58);
  *(a1 + 51) = sub_1000DFAD8(v5);
  if (v6)
  {
    sub_100008350(v6);
  }

  pthread_mutex_lock(&stru_1002D4A58);
  v7 = xmmword_1002D4A98;
  if (!xmmword_1002D4A98)
  {
    sub_1000927A0();
  }

  v8 = *(&xmmword_1002D4A98 + 1);
  if (*(&xmmword_1002D4A98 + 1))
  {
    atomic_fetch_add_explicit((*(&xmmword_1002D4A98 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&stru_1002D4A58);
  *(a1 + 52) = sub_1000DF9B4(v7);
  if (v8)
  {
    sub_100008350(v8);
  }
}

uint64_t sub_1000EDC94(uint64_t a1, int a2)
{
  result = sub_1000EDD88(a1, a2);
  if (result != *(a1 + 50))
  {
    *(a1 + 50) = result;
    pthread_mutex_lock(&stru_1002D4C68);
    v4 = xmmword_1002D4CA8;
    if (!xmmword_1002D4CA8)
    {
      sub_1000A1C94();
    }

    if (*(&xmmword_1002D4CA8 + 1))
    {
      atomic_fetch_add_explicit((*(&xmmword_1002D4CA8 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&stru_1002D4C68);
    v5 = *(a1 + 50);
    sub_1000A28FC(v4);
  }

  return result;
}

uint64_t sub_1000EDD88(uint64_t a1, int a2)
{
  if (a2)
  {
    sub_1000F61F8();
  }

  return 0;
}

void sub_1000EDE1C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000E4850(va);
  _Unwind_Resume(a1);
}

void sub_1000EDE44(uint64_t a1, uint64_t a2, NSObject **a3)
{
  sub_100160D30(a3, &object);
  sub_1000081C8(&v5, (a1 + 8));
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = object;
  if (object)
  {
    dispatch_retain(object);
    dispatch_group_enter(v4);
  }

  sub_1000081C8(&v8, (a1 + 8));
  operator new();
}

void sub_1000EE06C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, dispatch_group_t group, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, std::__shared_weak_count *a26)
{
  if (a26)
  {
    sub_100008350(a26);
  }

  if (v26)
  {
    sub_100008350(v26);
  }

  if (a16)
  {
    sub_100008350(a16);
  }

  if (group)
  {
    dispatch_group_leave(group);
    dispatch_release(group);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000EE0C4(uint64_t a1, NSObject **a2)
{
  v3 = *(a1 + 32);
  sub_1000EE208(v3);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 1174405120;
  v6[2] = sub_1000EE2BC;
  v6[3] = &unk_1002B1070;
  v4 = *a2;
  v6[4] = v3;
  group = v4;
  if (v4)
  {
    dispatch_retain(v4);
    dispatch_group_enter(group);
  }

  sub_1000081C8(&v10, (v3 + 8));
  v5 = *(v3 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 1174405120;
  block[2] = sub_1000F168C;
  block[3] = &unk_1002B1350;
  block[5] = v10;
  v9 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  block[4] = v6;
  dispatch_async(v5, block);
  if (v9)
  {
    sub_100008350(v9);
  }

  if (v11)
  {
    sub_100008350(v11);
  }

  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }
}

void sub_1000EE208(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "client:#I Cancelling all client connections", v8, 2u);
  }

  v3 = *(a1 + 64);
  v4 = (a1 + 72);
  if (v3 != v4)
  {
    do
    {
      xpc_connection_cancel(v3[4]);
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

    while (v6 != v4);
  }
}

void sub_1000EE2BC(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 40);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "client:#N ClientManager closed all XPC services", v2, 2u);
  }
}

void sub_1000EE320(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 40);
  *(a1 + 40) = v3;
  if (v3)
  {
    dispatch_retain(v3);
    v4 = *(a1 + 40);
    if (v4)
    {

      dispatch_group_enter(v4);
    }
  }
}

void sub_1000EE374(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    dispatch_group_leave(v2);
    v3 = *(a1 + 40);
    if (v3)
    {

      dispatch_release(v3);
    }
  }
}

void sub_1000EE3C4(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 2)
  {
    sub_1000081C8(&v9, (a1 + 8));
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 0x40000000;
    v8[2] = sub_1000EE5FC;
    v8[3] = &unk_1002B10E0;
    v8[4] = a1;
    v14 = _NSConcreteStackBlock;
    v15 = 1174405120;
    v16 = sub_1000F19E4;
    v17 = &unk_1002B13E0;
    v7 = v9;
    v19 = v9;
    v20 = v10;
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v18 = v8;
    sub_100160E88(a3, (v7 + 24), &v14);
    if (v20)
    {
      sub_100008350(v20);
    }

    v6 = v10;
    if (v10)
    {
      goto LABEL_8;
    }
  }

  else if (!a2)
  {
    sub_1000081C8(&v12, (a1 + 8));
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 0x40000000;
    v11[2] = sub_1000EE5F4;
    v11[3] = &unk_1002B10C0;
    v11[4] = a1;
    v14 = _NSConcreteStackBlock;
    v15 = 1174405120;
    v16 = sub_1000F19E4;
    v17 = &unk_1002B13E0;
    v5 = v12;
    v19 = v12;
    v20 = v13;
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v18 = v11;
    sub_100160E88(a3, (v5 + 24), &v14);
    if (v20)
    {
      sub_100008350(v20);
    }

    v6 = v13;
    if (v13)
    {
LABEL_8:
      sub_100008350(v6);
    }
  }
}

void sub_1000EE5B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  v18 = *(v16 - 24);
  if (v18)
  {
    sub_100008350(v18);
  }

  if (a16)
  {
    sub_100008350(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000EE5D8()
{
  v1 = *(v0 - 24);
  if (v1)
  {
    sub_100008350(v1);
  }

  if (!*(v0 - 80))
  {
    JUMPOUT(0x1000EE5D0);
  }

  JUMPOUT(0x1000EE5CCLL);
}

void sub_1000EE608(uint64_t a1, int a2)
{
  if (*(a1 + 51) == a2)
  {
    if ((*(a1 + 48) & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else
  {
    *(a1 + 48) = 1;
    *(a1 + 51) = a2;
  }

  v3 = *(a1 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "client:#I Diag & Usage switch in location system services status changed, going to try to blast trigger", v4, 2u);
  }

  sub_1000EEA60(a1);
  *(a1 + 48) = 0;
LABEL_7:
  sub_1000EEBC4(a1);
}

void sub_1000EE77C(uint64_t a1, uint64_t a2, uint64_t a3, const wireless_diagnostics::google::protobuf::MessageLite *a4)
{
  v7 = *(a1 + 40);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 67109376;
    v14 = HIDWORD(a2);
    LOWORD(v15) = 1024;
    *(&v15 + 2) = a2;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "client:#I Going to submit a Diagnostics Allowed Metric since there was a trigger for this 0x%x from component 0x%x", buf, 0xEu);
  }

  v8 = awd::metrics::MetricCCDiagnosticsAllowed::MetricCCDiagnosticsAllowed(buf);
  v9 = *(a1 + 51);
  v17 |= 1u;
  v16 = v9;
  WISTimestamp = wis::getWISTimestamp(v8);
  v17 |= 2u;
  v15 = WISTimestamp;
  pthread_mutex_lock(&stru_1002D4AB0);
  if (!off_1002D4AF0)
  {
    sub_10005DFD0();
  }

  if (*(&off_1002D4AF0 + 1))
  {
    atomic_fetch_add_explicit((*(&off_1002D4AF0 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&stru_1002D4AB0);
  wis::serializeMetric(&v12, buf, a4, v11);
  operator new();
}

void sub_1000EE9D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  pthread_mutex_unlock(&stru_1002D4AB0);
  awd::metrics::MetricCCDiagnosticsAllowed::~MetricCCDiagnosticsAllowed(&a15);
  _Unwind_Resume(a1);
}

void sub_1000EEA60(uint64_t a1)
{
  v1 = *(a1 + 49);
  v2 = *(a1 + 40);
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_INFO);
  if (v1 == 1)
  {
    if (v3)
    {
      LOWORD(v5) = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "client:#I Blasting DiagAllowed as trigger since it defined in the config as a trigger", &v5, 2u);
    }

    pthread_mutex_lock(&stru_1002D4AB0);
    v4 = off_1002D4AF0;
    if (!off_1002D4AF0)
    {
      sub_10005DFD0();
    }

    if (*(&off_1002D4AF0 + 1))
    {
      atomic_fetch_add_explicit((*(&off_1002D4AF0 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&stru_1002D4AB0);
    sub_100060530(v4, 0x70006);
  }

  if (v3)
  {
    LOWORD(v5) = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "client:#I Not blasting DiagAllowed as trigger since it was not in the config as a trigger", &v5, 2u);
  }
}

void sub_1000EEBC4(uint64_t a1)
{
  if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_DEBUG))
  {
    sub_100208C94(a1);
  }

  v2 = *(a1 + 64);
  if (v2 != (a1 + 72))
  {
    do
    {
      sub_1000ACB10(v6, *(a1 + 50), *(a1 + 51), *(a1 + 52));
      sub_1000EEC84(a1, v2 + 4, v6);
      v3 = v2[1];
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
        do
        {
          v4 = v2[2];
          v5 = *v4 == v2;
          v2 = v4;
        }

        while (!v5);
      }

      v2 = v4;
    }

    while (v4 != (a1 + 72));
  }
}

void sub_1000EEC84(uint64_t a1, uint64_t *a2, void (***a3)(xpc_object_t *__return_ptr, void))
{
  if (xpc_get_type(*a2) == &_xpc_type_connection)
  {
    (**a3)(&object, a3);
    type = xpc_get_type(object);
    v8 = *(a1 + 40);
    if (type == &_xpc_type_dictionary)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        int64 = xpc_dictionary_get_int64(object, "WISMessageType");
        sub_100208D0C(a2, buf, int64, v8);
      }

      xpc_connection_send_message(*a2, object);
    }

    else if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "client:#E Failed to create xpc message in sendMessage_sync in wirelessinsightsd client manager", buf, 2u);
    }

    xpc_release(object);
  }

  else
  {
    v6 = *(a1 + 40);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "client:#E Got NULL connection in sendMessage_sync in wirelessinsightsd client manager", buf, 2u);
    }
  }
}

uint64_t sub_1000EEE44(uint64_t a1, int a2, unsigned int a3, uint64_t *a4, int a5, int a6)
{
  if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_DEBUG))
  {
    sub_100208D68();
  }

  v12 = *(a1 + 72);
  if (!v12)
  {
    goto LABEL_45;
  }

  v13 = *a4;
  v14 = (a1 + 72);
  do
  {
    v15 = v12[4];
    v16 = v15 >= v13;
    v17 = v15 < v13;
    if (v16)
    {
      v14 = v12;
    }

    v12 = v12[v17];
  }

  while (v12);
  if (v14 == (a1 + 72) || v13 < v14[4])
  {
LABEL_45:
    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_DEBUG))
    {
      sub_100208DDC();
    }

    LODWORD(v28) = a5;
    v30 = 0;
    v31 = 0;
    v29 = &v30;
    v32 = 0;
    v18 = *a4;
    object[0] = v18;
    if (v18)
    {
      xpc_retain(v18);
    }

    else
    {
      object[0] = xpc_null_create();
    }

    LODWORD(object[1]) = v28;
    v34 = v29;
    v35[0] = v30;
    v35[1] = v31;
    if (v31)
    {
      v30[2] = v35;
      v29 = &v30;
      v30 = 0;
      v31 = 0;
    }

    else
    {
      v34 = v35;
    }

    v36 = v32;
    v14 = sub_1000F1CB4(a1 + 64, object);
    sub_10001C4B0(&v34, v35[0]);
    xpc_release(object[0]);
    object[0] = 0;
    sub_10001C4B0(&v29, v30);
  }

  sub_1000ED388((v14 + 5), a3);
  if (*(v14 + 72) == 1)
  {
    v19 = *(a1 + 40);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      LOWORD(object[0]) = 0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "client:#I Add client to timer notificaiton", object, 2u);
    }
  }

  if (*(a1 + 56) != a2)
  {
    goto LABEL_32;
  }

  v20 = v14[7];
  if (!v20)
  {
    goto LABEL_32;
  }

  v21 = v14 + 7;
  do
  {
    v22 = *(v20 + 28);
    v16 = v22 >= a3;
    v23 = v22 < a3;
    if (v16)
    {
      v21 = v20;
    }

    v20 = *(v20 + 8 * v23);
  }

  while (v20);
  if (v21 != v14 + 7 && *(v21 + 7) <= a3)
  {
    v24 = *(v21 + 32);
  }

  else
  {
LABEL_32:
    v24 = 1;
  }

  v25 = *(a1 + 40);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(object[0]) = 67109632;
    HIDWORD(object[0]) = a3;
    LOWORD(object[1]) = 1024;
    *(&object[1] + 2) = a6;
    HIWORD(object[1]) = 1024;
    LODWORD(v34) = v24 & 1;
    _os_log_debug_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEBUG, "client:#D In block for registering component 0x%x needs config is %d and local needs config is %d", object, 0x14u);
  }

  sub_1000EF344(a1);
  if ((a6 | v24))
  {
    pthread_mutex_lock(&stru_1002D4A58);
    v26 = xmmword_1002D4A98;
    if (!xmmword_1002D4A98)
    {
      sub_1000927A0();
    }

    if (*(&xmmword_1002D4A98 + 1))
    {
      atomic_fetch_add_explicit((*(&xmmword_1002D4A98 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&stru_1002D4A58);
    sub_1000DF52C(v26, a3);
  }

  sub_1000ACB40(object, a3, *(a1 + 50), *(a1 + 51), *(a1 + 52));
  sub_1000EEC84(a1, a4, object);
  return sub_1000EF6A4(a1, a4, a3);
}

uint64_t sub_1000EF344(uint64_t result)
{
  v1 = *(result + 64);
  v16 = (result + 72);
  v17 = result;
  if (v1 != (result + 72))
  {
    do
    {
      sub_10000A448(&v20);
      sub_1000ED3FC((v1 + 5), buf);
      v3 = *buf;
      v2 = *&buf[8];
      if (*buf != *&buf[8])
      {
        do
        {
          v4 = *v3;
          v5 = sub_100008EEC(&v20, "0x", 2);
          *(v5 + *(*v5 - 24) + 8) = *(v5 + *(*v5 - 24) + 8) & 0xFFFFFFB5 | 8;
          v6 = std::ostream::operator<<();
          sub_100008EEC(v6, ",", 1);
          ++v3;
        }

        while (v3 != v2);
        v3 = *buf;
      }

      if (v3)
      {
        *&buf[8] = v3;
        operator delete(v3);
      }

      v7 = *(v17 + 40);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = v1[4];
        v9 = *(v1 + 10);
        std::stringbuf::str();
        p_p = &__p;
        if (v19 < 0)
        {
          p_p = __p;
        }

        *buf = 134218498;
        *&buf[4] = v8;
        *&buf[12] = 1024;
        *&buf[14] = v9;
        v25 = 2080;
        v26 = p_p;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "client:#I \tClient with connection %p and pid %d: components {%s}", buf, 0x1Cu);
        if (v19 < 0)
        {
          operator delete(__p);
        }
      }

      v20 = v15;
      *(&v20 + *(v15 - 3)) = v14;
      if (v23 < 0)
      {
        operator delete(v22[7].__locale_);
      }

      std::locale::~locale(v22);
      std::ostream::~ostream();
      result = std::ios::~ios();
      v11 = v1[1];
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
          v12 = v1[2];
          v13 = *v12 == v1;
          v1 = v12;
        }

        while (!v13);
      }

      v1 = v12;
    }

    while (v12 != v16);
  }

  return result;
}

void sub_1000EF65C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1000EF6A4(uint64_t result, uint64_t a2, int a3)
{
  v4 = *(result + 88);
  for (i = *(result + 96); v4 != i; v4 += 6)
  {
    v6 = v4[3];
    v7 = v4[4];
    if (v6 != v7)
    {
      while (*v6 != a3)
      {
        if (++v6 == v7)
        {
          goto LABEL_8;
        }
      }
    }

    if (v6 != v7)
    {
      v8 = *v4;
      v9 = v4[1];
      v10 = v3 & 0xFFFFFFFF00000000 | *(v4 + 4);
      sub_1000EFDAC();
    }

LABEL_8:
    ;
  }

  return result;
}

void sub_1000EF748(uint64_t a1, void **a2)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1174405120;
  v5[2] = sub_1000EF878;
  v5[3] = &unk_1002B1100;
  v3 = *a2;
  v5[4] = a1;
  object = v3;
  if (v3)
  {
    xpc_retain(v3);
  }

  else
  {
    object = xpc_null_create();
  }

  sub_1000081C8(&v9, (a1 + 8));
  v4 = *(a1 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 1174405120;
  block[2] = sub_1000F168C;
  block[3] = &unk_1002B1350;
  block[5] = v9;
  v8 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  block[4] = v5;
  dispatch_async(v4, block);
  if (v8)
  {
    sub_100008350(v8);
  }

  if (v10)
  {
    sub_100008350(v10);
  }

  xpc_release(object);
}

xpc_object_t sub_1000EF88C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 40);
  *(a1 + 40) = v3;
  if (v3)
  {
    return xpc_retain(v3);
  }

  result = xpc_null_create();
  *(a1 + 40) = result;
  return result;
}

void **sub_1000EF8CC(void **a1, void **a2)
{
  v3 = *a2;
  *a1 = *a2;
  if (v3)
  {
    xpc_retain(v3);
  }

  else
  {
    *a1 = xpc_null_create();
  }

  return a1;
}

void sub_1000EF940(uint64_t a1, int a2, int a3, uint64_t a4, int a5, int a6)
{
  v10 = *(a1 + 40);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    block[0] = 67109888;
    block[1] = a3;
    v13 = 1024;
    v14 = a5;
    v15 = 1024;
    v16 = a6;
    v17 = 1024;
    v18 = a2;
    _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "client:#D Registering component 0x%x for pid %d (Needs config:%d, dcid=%u)", block, 0x1Au);
  }

  sub_100007ECC(__p, "Client-new");
  sub_100008BF8(__p);
}

void sub_1000EFB94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a2)
  {
    sub_10002205C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000EFBD0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 64);
  v4 = *(a1 + 68);
  v5 = *(a1 + 56);
  v6 = v5;
  if (v5)
  {
    xpc_retain(v5);
  }

  else
  {
    v5 = xpc_null_create();
    v6 = v5;
  }

  sub_1000EEE44(v2, v3, v4, &v6, *(a1 + 72), *(a1 + 76));
  xpc_release(v5);
}

xpc_object_t sub_1000EFC78(void *a1, void *a2)
{
  v3 = a2[6];
  a1[5] = a2[5];
  a1[6] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = a2[7];
  a1[7] = v4;
  if (v4)
  {
    return xpc_retain(v4);
  }

  result = xpc_null_create();
  a1[7] = result;
  return result;
}

void sub_1000EFCD0(uint64_t a1)
{
  xpc_release(*(a1 + 56));
  *(a1 + 56) = 0;
  v2 = *(a1 + 48);
  if (v2)
  {

    sub_100008350(v2);
  }
}

void sub_1000EFD24(uint64_t a1, uint64_t a2)
{
  v4[0] = a1;
  v4[1] = a2;
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_1000F1EAC;
  block[3] = &unk_1002B1410;
  block[4] = a1 + 8;
  block[5] = v4;
  v3 = a1 + 24;
  v2 = *(a1 + 24);
  if (*(v3 + 8))
  {
    dispatch_async_and_wait(v2, block);
  }

  else
  {
    dispatch_sync(v2, block);
  }
}

void sub_1000EFDAC()
{
  pthread_mutex_lock(&stru_1002D4AB0);
  v0 = off_1002D4AF0;
  if (!off_1002D4AF0)
  {
    sub_10005DFD0();
  }

  if (*(&off_1002D4AF0 + 1))
  {
    atomic_fetch_add_explicit((*(&off_1002D4AF0 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&stru_1002D4AB0);
  sub_10005FFA8(v0);
}

uint64_t sub_1000EFFB8(void *a1, uint64_t a2, uint64_t a3, int a4, uint64_t *a5)
{
  v21 = a2;
  v22 = a3;
  v23 = a4;
  v7 = *a5;
  v6 = a5[1];
  if (*a5 != v6)
  {
    v8 = a1 + 9;
    do
    {
      v9 = *v7;
      v10 = a1[8];
      if (v10 != v8)
      {
        do
        {
          for (i = v10[7]; i; i = *i)
          {
            v12 = *(i + 7);
            if (v12 <= v9)
            {
              if (v12 >= v9)
              {
                sub_1000EFDAC();
              }

              ++i;
            }
          }

          v13 = v10[1];
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
              v14 = v10[2];
              v15 = *v14 == v10;
              v10 = v14;
            }

            while (!v15);
          }

          v10 = v14;
        }

        while (v14 != v8);
      }

      if (static xpc_event_publisher_action_t.add.getter())
      {
        v16 = a1[5];
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          *buf = 67109120;
          v25 = v9;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "client:#I Sent notification to hopefully launch cid 0x%x in order to absorb the trigger", buf, 8u);
        }
      }

      ++v7;
    }

    while (v7 != v6);
  }

  v17 = a1[12];
  v18 = (a1 + 11);
  if (v17 >= a1[13])
  {
    result = sub_1000F2004(v18, &v21, &v22, a5);
  }

  else
  {
    sub_1000F1F9C(v18, &v21, &v22, a5);
    result = v17 + 48;
  }

  a1[12] = result;
  return result;
}

void sub_1000F0190(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t *a5)
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1174405120;
  v7[2] = sub_1000F02C8;
  v7[3] = &unk_1002B1160;
  v7[4] = a1;
  v7[5] = a2;
  v12 = a4;
  v10 = 0;
  v11 = a3;
  __p = 0;
  v9 = 0;
  sub_10000A964(&__p, *a5, a5[1], (a5[1] - *a5) >> 2);
  sub_1000081C8(&v15, (a1 + 8));
  v6 = *(a1 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 1174405120;
  block[2] = sub_1000F168C;
  block[3] = &unk_1002B1350;
  block[5] = v15;
  v14 = v16;
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  block[4] = v7;
  dispatch_async(v6, block);
  if (v14)
  {
    sub_100008350(v14);
  }

  if (v16)
  {
    sub_100008350(v16);
  }

  if (__p)
  {
    v9 = __p;
    operator delete(__p);
  }
}

uint64_t sub_1000F02E0(uint64_t a1, uint64_t a2)
{
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  v2 = a1 + 48;
  *(v2 + 16) = 0;
  return sub_10000A964(v2, *(a2 + 48), *(a2 + 56), (*(a2 + 56) - *(a2 + 48)) >> 2);
}

void sub_1000F02FC(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void sub_1000F0314(uint64_t a1, int a2)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 0x40000000;
  v4[2] = sub_1000F0420;
  v4[3] = &unk_1002B1190;
  v4[4] = a1;
  v5 = a2;
  sub_1000081C8(&v8, (a1 + 8));
  v3 = *(a1 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 1174405120;
  block[2] = sub_1000F168C;
  block[3] = &unk_1002B1350;
  block[5] = v8;
  v7 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  block[4] = v4;
  dispatch_async(v3, block);
  if (v7)
  {
    sub_100008350(v7);
  }

  if (v9)
  {
    sub_100008350(v9);
  }
}

void sub_1000F0420(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 64);
  if (v2 != (v1 + 72))
  {
    do
    {
      if (*(v2 + 72) == 1)
      {
        sub_1000A6D74(v7, *(a1 + 40));
        sub_1000EEC84(v1, v2 + 4, v7);
      }

      v4 = v2[1];
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
          v5 = v2[2];
          v6 = *v5 == v2;
          v2 = v5;
        }

        while (!v6);
      }

      v2 = v5;
    }

    while (v5 != (v1 + 72));
  }
}

void sub_1000F04C4(uint64_t a1, int a2)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 0x40000000;
  v4[2] = sub_1000F05D0;
  v4[3] = &unk_1002B11B0;
  v4[4] = a1;
  v5 = a2;
  sub_1000081C8(&v8, (a1 + 8));
  v3 = *(a1 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 1174405120;
  block[2] = sub_1000F168C;
  block[3] = &unk_1002B1350;
  block[5] = v8;
  v7 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  block[4] = v4;
  dispatch_async(v3, block);
  if (v7)
  {
    sub_100008350(v7);
  }

  if (v9)
  {
    sub_100008350(v9);
  }
}

void sub_1000F05D0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = *(a1 + 40);
    v5[0] = 67109120;
    v5[1] = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "client:#I Registering For AnomalyInsights, component = 0x%x", v5, 8u);
  }

  sub_1000F0688(v2, *(a1 + 40));
}

void sub_1000F0688(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 64);
  v3 = (a1 + 72);
  if (v2 == (a1 + 72))
  {
    return;
  }

  do
  {
    v5 = v2[7];
    if (!v5)
    {
      goto LABEL_16;
    }

    while (1)
    {
      v6 = *(v5 + 7);
      if (v6 <= a2)
      {
        break;
      }

LABEL_6:
      v5 = *v5;
      if (!v5)
      {
        goto LABEL_16;
      }
    }

    if (v6 < a2)
    {
      ++v5;
      goto LABEL_6;
    }

    *(v2 + 73) = 1;
    pthread_mutex_lock(&stru_1002D4E78);
    v7 = xmmword_1002D4EB8;
    if (!xmmword_1002D4EB8)
    {
      sub_100101458();
    }

    v8 = *(&xmmword_1002D4EB8 + 1);
    if (*(&xmmword_1002D4EB8 + 1))
    {
      atomic_fetch_add_explicit((*(&xmmword_1002D4EB8 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&stru_1002D4E78);
    if (v7)
    {
      sub_100101EE0(v7);
    }

    if (v8)
    {
      sub_100008350(v8);
    }

LABEL_16:
    v9 = v2[1];
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
        v10 = v2[2];
        v11 = *v10 == v2;
        v2 = v10;
      }

      while (!v11);
    }

    v2 = v10;
  }

  while (v10 != v3);
}

void sub_1000F0804(uint64_t a1, const void **a2)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 1174405120;
  v4[2] = sub_1000F0924;
  v4[3] = &unk_1002B11D0;
  v4[4] = a1;
  sub_1000A9494(&cf, a2);
  sub_1000081C8(&v8, (a1 + 8));
  v3 = *(a1 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 1174405120;
  block[2] = sub_1000F168C;
  block[3] = &unk_1002B1350;
  block[5] = v8;
  v7 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  block[4] = v4;
  dispatch_async(v3, block);
  if (v7)
  {
    sub_100008350(v7);
  }

  if (v9)
  {
    sub_100008350(v9);
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_1000F0924(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 64);
  if (v2 != (v1 + 72))
  {
    do
    {
      if (*(v2 + 73) == 1)
      {
        v4 = *(v1 + 40);
        if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "client:#I Sending Anomaly insight notification to registered components", buf, 2u);
        }

        sub_1000A9494(&v8, (a1 + 40));
        sub_1000A94CC(buf, &v8);
        sub_1000EEC84(v1, v2 + 4, buf);
        *buf = off_1002AF0A0;
        if (cf)
        {
          CFRelease(cf);
        }

        if (v8)
        {
          CFRelease(v8);
        }
      }

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

    while (v6 != (v1 + 72));
  }
}

void sub_1000F0A68(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100092DA4(va);
  _Unwind_Resume(a1);
}

void sub_1000F0A98(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    CFRelease(v1);
  }
}

void sub_1000F0ABC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 64);
  if (v3 != (a1 + 72))
  {
    do
    {
      v4 = v3[6];
      if (v4 != v3 + 7)
      {
        do
        {
          *(v4 + 32) = 1;
          v5 = v4[1];
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
              v6 = v4[2];
              v17 = *v6 == v4;
              v4 = v6;
            }

            while (!v17);
          }

          v4 = v6;
        }

        while (v6 != v3 + 7);
      }

      v7 = v3[1];
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
          v8 = v3[2];
          v17 = *v8 == v3;
          v3 = v8;
        }

        while (!v17);
      }

      v3 = v8;
    }

    while (v8 != (a1 + 72));
  }

  *(a1 + 56) = *(a2 + 32);
  v9 = *(a2 + 16);
  if (v9)
  {
    v10 = 8 * v9;
    v11 = *(a2 + 8);
    while (*(*v11 + 56) != 7)
    {
      v11 += 8;
      v10 -= 8;
      if (!v10)
      {
        goto LABEL_30;
      }
    }
  }

  else
  {
    v11 = *(a2 + 8);
  }

  if (v11 == *(a2 + 8) + 8 * v9)
  {
LABEL_30:
    *(a1 + 49) = 0;
  }

  else
  {
    v12 = *(*v11 + 16);
    if (v12)
    {
      v13 = *(*v11 + 8);
      v14 = 8 * v12 - 8;
      do
      {
        v15 = *v13++;
        v16 = *(v15 + 32) == 458758;
        v17 = *(v15 + 32) == 458758 || v14 == 0;
        v14 -= 8;
      }

      while (!v17);
    }

    else
    {
      v16 = 0;
    }

    *(a1 + 49) = v16;
  }

  sub_1000EDC94(a1, *(a2 + 36) & ((*(a2 + 208) & 8u) >> 3));
  pthread_mutex_lock(&stru_1002D4A58);
  v18 = xmmword_1002D4A98;
  if (!xmmword_1002D4A98)
  {
    sub_1000927A0();
  }

  if (*(&xmmword_1002D4A98 + 1))
  {
    atomic_fetch_add_explicit((*(&xmmword_1002D4A98 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&stru_1002D4A58);
  sub_1000DF6B4(v18, *(a1 + 50));
}

void sub_1000F0D94(uint64_t a1)
{
  if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_DEBUG))
  {
    sub_100208E50(a1);
  }

  v2 = *(a1 + 64);
  if (v2 != (a1 + 72))
  {
    do
    {
      v3 = *(a1 + 40);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
      {
        v9 = v2[4];
        *buf = 134217984;
        *&buf[4] = v9;
        _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "client:#D In sendAllConfigurations_sync for connection %p", buf, 0xCu);
      }

      sub_1000ED3FC((v2 + 5), &v10);
      if (v10 != v11)
      {
        v4 = *v10;
        pthread_mutex_lock(&stru_1002D4A58);
        v5 = xmmword_1002D4A98;
        if (!xmmword_1002D4A98)
        {
          sub_1000927A0();
        }

        if (*(&xmmword_1002D4A98 + 1))
        {
          atomic_fetch_add_explicit((*(&xmmword_1002D4A98 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        pthread_mutex_unlock(&stru_1002D4A58);
        sub_1000DF52C(v5, v4);
      }

      if (v10)
      {
        v11 = v10;
        operator delete(v10);
      }

      sub_1000ACB10(buf, *(a1 + 50), *(a1 + 51), *(a1 + 52));
      sub_1000EEC84(a1, v2 + 4, buf);
      v6 = v2[1];
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
          v7 = v2[2];
          v8 = *v7 == v2;
          v2 = v7;
        }

        while (!v8);
      }

      v2 = v7;
    }

    while (v7 != (a1 + 72));
  }
}

void sub_1000F1144(uint64_t a1, int a2)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 0x40000000;
  v4[2] = sub_1000F1250;
  v4[3] = &unk_1002B1200;
  v4[4] = a1;
  v5 = a2;
  sub_1000081C8(&v8, (a1 + 8));
  v3 = *(a1 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 1174405120;
  block[2] = sub_1000F168C;
  block[3] = &unk_1002B1350;
  block[5] = v8;
  v7 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  block[4] = v4;
  dispatch_async(v3, block);
  if (v7)
  {
    sub_100008350(v7);
  }

  if (v9)
  {
    sub_100008350(v9);
  }
}

void sub_1000F1260(uint64_t a1, int a2)
{
  v2 = *(a1 + 64);
  v3 = (a1 + 72);
  if (v2 != (a1 + 72))
  {
    do
    {
      v6 = *(a1 + 40);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        v10 = *(v2 + 10);
        LODWORD(buf) = 67109376;
        HIDWORD(buf) = a2;
        v12 = 1024;
        v13 = v10;
        _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "client:#D Sending ctrl message 0x%x to connection for pid %d", &buf, 0xEu);
      }

      sub_1000A68A8(&buf, a2);
      sub_1000EEC84(a1, v2 + 4, &buf);
      v7 = v2[1];
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
          v8 = v2[2];
          v9 = *v8 == v2;
          v2 = v8;
        }

        while (!v9);
      }

      v2 = v8;
    }

    while (v8 != v3);
  }
}

uint64_t sub_1000F13A8(uint64_t a1)
{
  sub_10001C4B0(a1 + 16, *(a1 + 24));
  xpc_release(*a1);
  *a1 = 0;
  return a1;
}

void *sub_1000F13E8(void *a1)
{
  *a1 = off_1002AF0A0;
  v2 = a1[1];
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t *sub_1000F1438(uint64_t a1, unsigned int *a2)
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
      v5 = *(v2 + 28);
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

void sub_1000F158C(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, sub_1000F1660);
  __cxa_rethrow();
}

void sub_1000F15CC(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1000F1620(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000F1660(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_1000F169C(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1000F16B8(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    sub_100008350(v1);
  }
}

void *sub_1000F16C8(void *a1)
{
  *a1 = off_1002B1390;
  v2 = a1[2];
  if (v2)
  {
    sub_100008350(v2);
  }

  return a1;
}

void sub_1000F1714(void *a1)
{
  *a1 = off_1002B1390;
  v1 = a1[2];
  if (v1)
  {
    sub_100008350(v1);
  }

  operator delete();
}

uint64_t sub_1000F1790@<X0>(void *a1@<X8>)
{
  v2 = 1;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  return sub_100033F5C(a1, &v2, &vars0, 1);
}

void sub_1000F17E8(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_1000F17E8(a1, *a2);
    sub_1000F17E8(a1, a2[1]);
    sub_1000F1854(a1, (a2 + 4));

    operator delete(a2);
  }
}

void sub_1000F1854(uint64_t a1, uint64_t a2)
{
  sub_10001C4B0(a2 + 16, *(a2 + 24));
  xpc_release(*a2);
  *a2 = 0;
}

void sub_1000F1890(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_1000F18E4(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_1000F18E4(uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 48)
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

void sub_1000F1934(uint64_t *a1)
{
  v6 = a1;
  v1 = *a1;
  v2 = *(**a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "client:#N Flush of all incoming requests complete", buf, 2u);
  }

  v3 = *(v1 + 24);
  if (v3)
  {
    dispatch_group_leave(v3);
    v4 = *(v1 + 24);
    if (v4)
    {
      dispatch_release(v4);
    }
  }

  v5 = *(v1 + 16);
  if (v5)
  {
    sub_100008350(v5);
  }

  operator delete();
}

void sub_1000F19E4(uint64_t a1, NSObject **a2)
{
  v2 = *(a1 + 32);
  group = *a2;
  *a2 = 0;
  (*(v2 + 16))();
  if (group)
  {
    dispatch_group_leave(group);
    dispatch_release(group);
  }
}

void sub_1000F1A40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_group_t group)
{
  if (group)
  {
    dispatch_group_leave(group);
    dispatch_release(group);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000F1A64(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1000F1A80(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    sub_100008350(v1);
  }
}

void sub_1000F1A90(uint64_t **a1)
{
  v8 = a1;
  v1 = **a1;
  pthread_mutex_lock(&stru_1002D4A58);
  v2 = xmmword_1002D4A98;
  if (!xmmword_1002D4A98)
  {
    sub_1000927A0();
  }

  v3 = *(&xmmword_1002D4A98 + 1);
  if (*(&xmmword_1002D4A98 + 1))
  {
    atomic_fetch_add_explicit((*(&xmmword_1002D4A98 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&stru_1002D4A58);
  v4 = sub_1000DF9B4(v2);
  if (v3)
  {
    sub_100008350(v3);
  }

  v5 = *(v1 + 52);
  v6 = *(v1 + 40);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
  if (v4 == v5)
  {
    if (v7)
    {
      *buf = 67109120;
      *&buf[4] = v4;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "client:#I Shim mode has not changed; skipping update. (enabled=%d)", buf, 8u);
    }
  }

  else
  {
    if (v7)
    {
      *buf = 67109376;
      *&buf[4] = v5;
      *&buf[8] = 1024;
      *&buf[10] = v4;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "client:#I Shim mode changed; updating clients. (enabled=%d -> %d)", buf, 0xEu);
    }

    sub_1000EEBC4(v1);
  }

  operator delete();
}

void *sub_1000F1CB4(uint64_t a1, unint64_t *a2)
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
      v5 = v2[4];
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

void **sub_1000F1D84(void **a1, uint64_t a2)
{
  result = sub_1000EF8CC(a1, a2);
  result[2] = *(a2 + 16);
  v4 = (a2 + 24);
  v5 = *(a2 + 24);
  v6 = *(a2 + 8);
  result[3] = v5;
  v7 = result + 3;
  *(result + 2) = v6;
  v8 = *(a2 + 32);
  result[4] = v8;
  if (v8)
  {
    v5[2] = v7;
    *(a2 + 16) = v4;
    *v4 = 0;
    *(a2 + 32) = 0;
  }

  else
  {
    result[2] = v7;
  }

  *(result + 20) = *(a2 + 40);
  return result;
}

uint64_t sub_1000F1DF0(uint64_t **a1, unint64_t *a2)
{
  v2 = a1[1];
  if (!v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = (a1 + 1);
  do
  {
    v5 = v2[4];
    v6 = v5 >= v3;
    v7 = v5 < v3;
    if (v6)
    {
      v4 = v2;
    }

    v2 = v2[v7];
  }

  while (v2);
  if (v4 == (a1 + 1) || v3 < v4[4])
  {
    return 0;
  }

  sub_1000F1E60(a1, v4);
  return 1;
}

uint64_t *sub_1000F1E60(uint64_t **a1, uint64_t *a2)
{
  v4 = sub_10001756C(a1, a2);
  sub_1000F1854(a1, (a2 + 4));
  operator delete(a2);
  return v4;
}

void sub_1000F1EAC(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *v1;
  v3 = sub_10012A4C4(v1[1]);
  sub_1000F0ABC(v2, v3);
}

uint64_t sub_1000F1F9C(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4)
{
  v5 = *(a1 + 8);
  *v5 = *a2;
  v6 = *a3;
  *(v5 + 16) = *(a3 + 2);
  *(v5 + 8) = v6;
  *(v5 + 32) = 0;
  *(v5 + 40) = 0;
  *(v5 + 24) = 0;
  result = sub_10000A964(v5 + 24, *a4, a4[1], (a4[1] - *a4) >> 2);
  *(a1 + 8) = v5 + 48;
  return result;
}

uint64_t sub_1000F2004(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 4);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_100033FD0();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 4) > v5)
  {
    v5 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v8 = 0x555555555555555;
  }

  else
  {
    v8 = v5;
  }

  v23 = a1;
  if (v8)
  {
    sub_1000F215C(a1, v8);
  }

  v9 = 48 * v4;
  v19 = 0;
  v20 = v9;
  v21 = 48 * v4;
  v22 = 0;
  *v9 = *a2;
  v10 = *a3;
  v11 = *(a3 + 2);
  *(v9 + 24) = 0;
  v12 = 48 * v4 + 24;
  *(v12 - 8) = v11;
  *(v12 - 16) = v10;
  *(v12 + 8) = 0;
  *(v12 + 16) = 0;
  sub_10000A964(v12, *a4, a4[1], (a4[1] - *a4) >> 2);
  v13 = v21 + 48;
  v14 = *(a1 + 8) - *a1;
  v15 = &v20[-v14];
  memcpy(&v20[-v14], *a1, v14);
  v16 = *a1;
  *a1 = v15;
  *(a1 + 8) = v13;
  v17 = *(a1 + 16);
  *(a1 + 16) = v22;
  v21 = v16;
  v22 = v17;
  v19 = v16;
  v20 = v16;
  sub_1000F21B4(&v19);
  return v13;
}

void sub_1000F2148(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000F21B4(va);
  _Unwind_Resume(a1);
}

void sub_1000F215C(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  sub_100033BCC();
}

uint64_t sub_1000F21B4(uint64_t a1)
{
  sub_1000F21EC(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1000F21EC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  while (v2 != a2)
  {
    *(a1 + 16) = v2 - 48;
    v5 = *(v2 - 24);
    if (v5)
    {
      *(v2 - 16) = v5;
      operator delete(v5);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 48;
    }
  }
}

uint64_t sub_1000F224C()
{
  if ((byte_1002D4A50 & 1) == 0)
  {
    byte_1002D4A50 = 1;
    return __cxa_atexit(sub_100032AD4, &stru_1002D4A00, &_mh_execute_header);
  }

  return result;
}

uint64_t sub_1000F2288()
{
  if ((byte_1002D4AA8 & 1) == 0)
  {
    byte_1002D4AA8 = 1;
    return __cxa_atexit(sub_10004F8E0, &stru_1002D4A58, &_mh_execute_header);
  }

  return result;
}

uint64_t sub_1000F22C4()
{
  if ((byte_1002D4CB8 & 1) == 0)
  {
    byte_1002D4CB8 = 1;
    return __cxa_atexit(sub_10004F8F8, &stru_1002D4C68, &_mh_execute_header);
  }

  return result;
}

uint64_t sub_1000F2300()
{
  if ((byte_1002D4B00 & 1) == 0)
  {
    byte_1002D4B00 = 1;
    return __cxa_atexit(sub_10004F8E4, &stru_1002D4AB0, &_mh_execute_header);
  }

  return result;
}

uint64_t sub_1000F233C()
{
  if ((byte_1002D4EC8 & 1) == 0)
  {
    byte_1002D4EC8 = 1;
    return __cxa_atexit(sub_10004F910, &stru_1002D4E78, &_mh_execute_header);
  }

  return result;
}

void sub_1000F2884(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1000F2BC8(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = qword_1002D85D0;
  qword_1002D85D0 = v1;
}

id sub_1000F2D48(uint64_t a1)
{
  v2 = +[TelephonyStateRelay sharedInstance];
  [*(a1 + 32) setCtRelay:v2];

  v3 = [*(a1 + 32) ctRelay];
  [v3 addTelephonyStateDelegate:*(a1 + 32) withQueue:{objc_msgSend(*(a1 + 32), "queue")}];

  [*(a1 + 32) setIsAirplaneModeActive:0];
  v4 = [*(a1 + 32) ctRelay];
  [v4 getAirplaneModeStatus:*(a1 + 32)];

  v5 = *(a1 + 32);

  return [v5 populateSubscriptionContextsInUse];
}

void sub_1000F353C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_ERROR))
    {
      [*(a1 + 32) uuid];
      objc_claimAutoreleasedReturnValue();
      [v6 localizedDescription];
      objc_claimAutoreleasedReturnValue();
      sub_1002090C0();
    }
  }

  else
  {
    v7 = *(qword_1002DBE98 + 48);
    if (v5)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        [*(a1 + 32) uuid];
        objc_claimAutoreleasedReturnValue();
        sub_10020911C();
      }

      v8 = [*(a1 + 40) queue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000F374C;
      block[3] = &unk_1002B1438;
      block[4] = *(a1 + 40);
      v10 = v5;
      v11 = *(a1 + 32);
      v13 = *(a1 + 56);
      v12 = *(a1 + 48);
      dispatch_async(v8, block);
    }

    else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [*(a1 + 32) uuid];
      objc_claimAutoreleasedReturnValue();
      sub_100209160();
    }
  }
}

void sub_1000F374C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v17 = 0;
  v4 = [v2 extractCellInfo:v3 error:&v17];
  v5 = v17;
  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 == 0;
  }

  if (v6)
  {
    v7 = v5;
    v8 = *(qword_1002DBE98 + 48);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [*(a1 + 48) uuid];
      v10 = [v7 localizedDescription];
      *buf = 138412546;
      v19 = v9;
      v20 = 2112;
      v21 = v10;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "OOSRecoveryMetric:#N Error while extracting data from cell for context %@: %@", buf, 0x16u);
    }

    v4 = 0;
  }

  v11 = [OOSRecoveryMetricState alloc];
  v12 = *(a1 + 64);
  v13 = [*(a1 + 56) registrationDisplayStatus];
  v14 = [(OOSRecoveryMetricState *)v11 initWithIsDataContext:v12 registrationState:v13 cellInfo:v4];

  if (v14)
  {
    v15 = [*(a1 + 32) contextUUIDToStateMap];
    v16 = [*(a1 + 48) uuid];
    [v15 setObject:v14 forKey:v16];

    if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_DEBUG))
    {
      [*(a1 + 48) uuid];
      objc_claimAutoreleasedReturnValue();
      sub_1002091A4();
    }
  }

  else if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_ERROR))
  {
    [*(a1 + 48) uuid];
    objc_claimAutoreleasedReturnValue();
    sub_1002091EC();
  }
}

void sub_1000F4248(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) uuid];
  [v5 setIsDataContext:{objc_msgSend(v7, "isEqual:", v6)}];
}

void sub_1000F5B70()
{
  ctu::cf::assign();
  *v6 = 0u;
  v7 = 0;
  memset(buf, 0, sizeof(buf));
  ctu::cf::assign();
  *__p = 0u;
  v5 = 0;
  v0 = *(qword_1002DBE98 + 80);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    v1 = v6;
    if (v7 < 0)
    {
      v1 = v6[0];
    }

    v2 = __p;
    if (v5 < 0)
    {
      v2 = __p[0];
    }

    *buf = 136315394;
    *&buf[4] = v1;
    *&buf[12] = 2080;
    *&buf[14] = v2;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_INFO, "prefs:#I Getting preference from domain:%s key:%s", buf, 0x16u);
  }

  propertyList = 0;
  operator new();
}

void sub_1000F6148(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, const void *a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  sub_10006703C(&a17);
  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  _Unwind_Resume(a1);
}

void sub_1000F6208(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 23);
  if (v3 >= 0)
  {
    v4 = a1;
  }

  else
  {
    v4 = *a1;
  }

  if (v3 >= 0)
  {
    v5 = *(a1 + 23);
  }

  else
  {
    v5 = *(a1 + 8);
  }

  v6 = CFURLCreateFromFileSystemRepresentation(kCFAllocatorDefault, v4, v5, 0);
  data[1] = v6;
  if (v6)
  {
    v7 = v6;
    data[0] = 0;
    errorCode = 0;
    resourceData[0] = 0;
    resourceData[1] = data;
    v8 = CFURLCreateDataAndPropertiesFromResource(kCFAllocatorDefault, v6, resourceData, 0, 0, &errorCode);
    sub_1000F6410(resourceData);
    if (v8)
    {
      resourceData[0] = CFPropertyListCreateWithData(kCFAllocatorDefault, data[0], 2uLL, 0, 0);
      sub_1000E4384(a2, resourceData);
    }

    else
    {
      *a2 = 0;
    }

    sub_1000F63A8(data);
    CFRelease(v7);
  }

  else
  {
    *a2 = 0;
  }
}

void sub_1000F62FC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, const void *);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  va_copy(va2, va1);
  v7 = va_arg(va2, const void *);
  sub_1000F6410(va);
  sub_1000F63A8(va1);
  sub_1000F63DC(va2);
  _Unwind_Resume(a1);
}

const void **sub_1000F6328(const void **a1, CFTypeRef *a2)
{
  v3 = *a2;
  if (*a2)
  {
    CFRetain(*a2);
  }

  v4 = *a1;
  *a1 = v3;
  if (v4)
  {
    CFRelease(v4);
  }

  return a1;
}

const void **sub_1000F6374(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **sub_1000F63A8(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **sub_1000F63DC(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **sub_1000F6410(const void **a1)
{
  v2 = a1[1];
  if (*a1)
  {
    v3 = *v2;
    *v2 = *a1;
    v6 = v3;
  }

  else
  {
    v4 = *v2;
    *v2 = 0;
    v6 = v4;
  }

  sub_1000F63A8(&v6);
  return a1;
}

uint64_t sub_1000F6468(uint64_t a1)
{
  v1 = *(a1 + 72);
  if ((v1 & 4) != 0)
  {
    return 7;
  }

  if ((v1 & 8) != 0)
  {
    return 4;
  }

  if (v1)
  {
    return 6;
  }

  if ((v1 & 2) != 0)
  {
    return 3;
  }

  if ((v1 & 0x40) != 0)
  {
    return 13;
  }

  if ((v1 & 0x20) != 0)
  {
    v2 = 1;
  }

  else
  {
    v2 = (v1 >> 3) & 2;
  }

  if ((v1 & 0x100) != 0)
  {
    v3 = 14;
  }

  else
  {
    v3 = v2;
  }

  if ((v1 & 0x80) != 0)
  {
    return 12;
  }

  else
  {
    return v3;
  }
}

void sub_1000F64D8(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = a1;
  v5 = *(a1 + 8);
  v4 = *(a1 + 12);
  v6 = *(a1 + 32);
  if (!v6)
  {
    a1 = awd::profile::Condition::default_instance(a1);
    v6 = *(a1 + 32);
  }

  v7 = *(v2 + 40);
  if (!v7)
  {
    v7 = *(awd::profile::Condition::default_instance(a1) + 40);
  }

  v8 = sub_1000F6468(v6);
  v9 = sub_1000F6468(v7);
  if (v8 == v9)
  {
    if (v8 <= 3)
    {
      if (!v8)
      {
        v13 = *(qword_1002DBE98 + 88);
        if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_14;
        }

        v21 = 67109888;
        v22 = v5;
        v23 = 1024;
        v24 = v4;
        v25 = 1024;
        v26 = 0;
        v27 = 1024;
        v28 = 0;
        v14 = "rule:#E Range metric rule creation failed due to bad types (mid=0x%x, field=%d, lowerType=%u, upperType=%u)";
        goto LABEL_13;
      }

      if (v8 == 3)
      {
        v15 = *(v6 + 8);
        v16 = *(v7 + 8);
        operator new();
      }
    }

    else
    {
      switch(v8)
      {
        case 4:
          v17 = *(v6 + 24);
          v18 = *(v7 + 24);
          operator new();
        case 6:
          v19 = *(v6 + 16);
          v20 = *(v7 + 16);
          operator new();
        case 7:
          v10 = *(v6 + 20);
          v11 = *(v7 + 20);
          operator new();
      }
    }

    v13 = *(qword_1002DBE98 + 88);
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    v21 = 67109888;
    v22 = v5;
    v23 = 1024;
    v24 = v4;
    v25 = 1024;
    v26 = v8;
    v27 = 1024;
    v28 = v8;
    v14 = "rule:#E Range metric rule creation failed due invalid type (mid=0x%x, field=%d, lowerType=%u, upperType=%u)";
LABEL_13:
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, v14, &v21, 0x1Au);
    goto LABEL_14;
  }

  v12 = v9;
  v13 = *(qword_1002DBE98 + 88);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 67109888;
    v22 = v5;
    v23 = 1024;
    v24 = v4;
    v25 = 1024;
    v26 = v8;
    v27 = 1024;
    v28 = v12;
    v14 = "rule:#E Range metric rule creation failed due to type mismatch (mid=0x%x, field=%d, lowerType=%u, upperType=%u)";
    goto LABEL_13;
  }

LABEL_14:
  *a2 = 0;
}

void sub_1000F67F4(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 12);
  v5 = *(a1 + 32);
  if (!v5)
  {
    v5 = *(awd::profile::Condition::default_instance(a1) + 32);
  }

  v6 = sub_1000F6468(v5);
  if (v6 > 5)
  {
    if (v6 == 7)
    {
      v11 = *(v5 + 20);
      operator new();
    }

    if (v6 == 6)
    {
      v8 = *(v5 + 16);
      operator new();
    }
  }

  else
  {
    if (v6 == 3)
    {
      v10 = *(v5 + 8);
      operator new();
    }

    if (v6 == 4)
    {
      v7 = *(v5 + 24);
      operator new();
    }
  }

  v9 = *(qword_1002DBE98 + 88);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v12[0] = 67109632;
    v12[1] = v4;
    v13 = 1024;
    v14 = v3;
    v15 = 1024;
    v16 = sub_1000F6468(v5);
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "rule:#E Min metric rule creation failed due invalid type (mid=0x%x, field=%d, lowerType=%u)", v12, 0x14u);
  }

  *a2 = 0;
}

void sub_1000F6A08(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 12);
  v5 = *(a1 + 40);
  if (!v5)
  {
    v5 = *(awd::profile::Condition::default_instance(a1) + 40);
  }

  v6 = sub_1000F6468(v5);
  if (v6 > 5)
  {
    if (v6 == 7)
    {
      v11 = *(v5 + 20);
      operator new();
    }

    if (v6 == 6)
    {
      v8 = *(v5 + 16);
      operator new();
    }
  }

  else
  {
    if (v6 == 3)
    {
      v10 = *(v5 + 8);
      operator new();
    }

    if (v6 == 4)
    {
      v7 = *(v5 + 24);
      operator new();
    }
  }

  v9 = *(qword_1002DBE98 + 88);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v12[0] = 67109632;
    v12[1] = v4;
    v13 = 1024;
    v14 = v3;
    v15 = 1024;
    v16 = sub_1000F6468(v5);
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "rule:#E Max metric rule creation failed due invalid type (mid=0x%x, field=%d, upperType=%u)", v12, 0x14u);
  }

  *a2 = 0;
}

void sub_1000F6C1C(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v6 = sub_1000F6468(a1);
  v7 = sub_1000F6468(a2);
  if (v6 != v7)
  {
    v10 = v7;
    v11 = *(qword_1002DBE98 + 88);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
LABEL_11:
      *a3 = 0;
      return;
    }

    v15 = 67109376;
    v16 = v6;
    v17 = 1024;
    v18 = v10;
    v12 = "rule:#E Random range metric rule creation failed due to type mismatch (lowerType=%u, upperType=%u)";
    goto LABEL_9;
  }

  if (v6 <= 3)
  {
    if (!v6)
    {
      v14 = *(qword_1002DBE98 + 88);
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_11;
      }

      v15 = 67109376;
      v16 = 0;
      v17 = 1024;
      v18 = 0;
      v12 = "rule:#E Random range metric rule creation failed due to bad types (lowerType=%u, upperType=%u)";
      v13 = v14;
      goto LABEL_10;
    }

    if (v6 == 3)
    {
      v8 = *(a1 + 8);
      v9 = *(a2 + 8);
      goto LABEL_17;
    }

    goto LABEL_22;
  }

  if (v6 == 4)
  {
    v8 = *(a1 + 24);
    v9 = *(a2 + 24);
    goto LABEL_17;
  }

  if (v6 == 6)
  {
    v8 = *(a1 + 16);
    v9 = *(a2 + 16);
    goto LABEL_17;
  }

  if (v6 != 7)
  {
LABEL_22:
    v11 = *(qword_1002DBE98 + 88);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    v15 = 67109376;
    v16 = v6;
    v17 = 1024;
    v18 = v6;
    v12 = "rule:#E Range metric rule creation failed due invalid type (lowerType=%u, upperType=%u)";
LABEL_9:
    v13 = v11;
LABEL_10:
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, v12, &v15, 0xEu);
    goto LABEL_11;
  }

  v8 = *(a1 + 20);
  v9 = *(a2 + 20);
LABEL_17:

  sub_1000F6E50(v8, v9, a3);
}

uint64_t sub_1000F6E50@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  if (a1 <= 0x2710 && a2 < 0x2711)
  {
    operator new();
  }

  v7 = *(qword_1002DBE98 + 88);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 134218240;
    v10 = a1;
    v11 = 2048;
    v12 = a2;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "rule:#E Random metric rule creation failed due to invalid random range (lowerValue=%llu, upperValue=%llu)", &v9, 0x16u);
  }

  result = 0;
  *a3 = 0;
  return result;
}

uint64_t sub_1000F6F70@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  result = sub_1000F6468(a1);
  if (result > 5)
  {
    if (result == 7)
    {
      v5 = *(a1 + 20);
      goto LABEL_11;
    }

    if (result == 6)
    {
      v5 = *(a1 + 16);
      goto LABEL_11;
    }

LABEL_8:
    *a2 = 0;
    return result;
  }

  if (result == 3)
  {
    v5 = *(a1 + 8);
    goto LABEL_11;
  }

  if (result != 4)
  {
    goto LABEL_8;
  }

  v5 = *(a1 + 24);
LABEL_11:

  return sub_1000F6E50(v5, 0x2710uLL, a2);
}

uint64_t sub_1000F7008@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  result = sub_1000F6468(a1);
  if (result > 5)
  {
    if (result == 7)
    {
      v5 = *(a1 + 20);
      goto LABEL_11;
    }

    if (result == 6)
    {
      v5 = *(a1 + 16);
      goto LABEL_11;
    }

LABEL_8:
    *a2 = 0;
    return result;
  }

  if (result == 3)
  {
    v5 = *(a1 + 8);
    goto LABEL_11;
  }

  if (result != 4)
  {
    goto LABEL_8;
  }

  v5 = *(a1 + 24);
LABEL_11:

  return sub_1000F6E50(0, v5, a2);
}

uint64_t sub_1000F70A0(uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_1000F70F4(uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  operator delete();
}

BOOL sub_1000F7168(void *a1)
{
  v2 = sub_100068C14();
  v3 = a1[3];
  if (v3)
  {
    LODWORD(v2) = (*(*v3 + 16))(v3, v2);
  }

  return a1[1] <= v2 && a1[2] > v2;
}

void *sub_1000F71E8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = off_1002B1568;
  v9[0] = off_1002B15D8;
  v9[3] = v9;
  sub_100068C74(a1, a2, v9);
  sub_1000690B8(v9);
  a1[6] = a3;
  a1[7] = a4;
  sub_100068E40(a2, a1 + 8);
  *a1 = off_1002B1568;
  return a1;
}

void sub_1000F72C4(_Unwind_Exception *a1)
{
  *v1 = off_1002ACE88;
  sub_1000690B8((v1 + 2));
  _Unwind_Resume(a1);
}

void *sub_1000F7300(void *a1)
{
  v2 = a1[8];
  a1[8] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *a1 = off_1002ACE88;
  sub_1000690B8((a1 + 2));
  return a1;
}

void sub_1000F7378(void *a1)
{
  v2 = a1[8];
  a1[8] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *a1 = off_1002ACE88;
  sub_1000690B8((a1 + 2));

  operator delete();
}

BOOL sub_1000F7498(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = *a2;
  v6 = *(*a2 + 8);
  v7 = *(*a2 + 12);
  MetricFileMetadataHelper::MetricFileMetadataHelper();
  v54 = v5;
  v55 = v7;
LABEL_2:
  while (1)
  {
    v9 = wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(a4);
    if (v9 < 1)
    {
      break;
    }

    v10 = *(a4 + 8);
    if (v10 >= *(a4 + 16) || (TagFallback = *v10, (TagFallback & 0x80000000) != 0))
    {
      TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a4);
      *(a4 + 32) = TagFallback;
      if (!TagFallback)
      {
LABEL_14:
        sub_1000F7F38(a4, 0);
        continue;
      }
    }

    else
    {
      *(a4 + 32) = TagFallback;
      *(a4 + 8) = v10 + 1;
      if (!TagFallback)
      {
        goto LABEL_14;
      }
    }

    v12 = wis::reflect::decodeTag(TagFallback, v8);
    v13 = v12;
    v14 = HIDWORD(v12);
    memset(v64, 0, sizeof(v64));
    v65 = 0xFFFFFFFFLL;
    MetricFileMetadataHelper::getSubfieldType();
    *v64 = v62;
    v65 = v63;
    BuiltinType = MetadataHelper::getBuiltinType();
    DecodingType = wis::reflect::getDecodingType();
    v17 = DecodingType;
    if (DecodingType > 13)
    {
      if ((DecodingType - 15) >= 0xC)
      {
        if (DecodingType == 14)
        {
          LODWORD(__p) = 0;
          v30 = *(a4 + 8);
          if (v30 >= *(a4 + 16) || (v31 = *v30, (v31 & 0x80000000) != 0))
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a4, &__p))
            {
              goto LABEL_12;
            }

            v31 = __p;
          }

          else
          {
            LODWORD(__p) = *v30;
            *(a4 + 8) = v30 + 1;
          }

          goto LABEL_139;
        }

        if (DecodingType != 27)
        {
          goto LABEL_12;
        }

        v64[0] = 0;
        v27 = *(a4 + 8);
        if (v27 >= *(a4 + 16) || (v28 = *v27, v28 < 0))
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a4, v64))
          {
            goto LABEL_12;
          }

          v28 = v64[0];
        }

        else
        {
          v64[0] = *v27;
          *(a4 + 8) = v27 + 1;
        }

        v42 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a4, v28);
        ++*(a4 + 56);
        v43 = wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(a4);
        wireless_diagnostics::google::protobuf::io::CodedInputStream::Skip(a4, v43);
        v44 = *(a4 + 56);
        v45 = __OFSUB__(v44, 1);
        v46 = v44 - 1;
        if (v46 < 0 == v45)
        {
          *(a4 + 56) = v46;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a4, v42);
      }

      else
      {
        v61 = 0;
        v18 = *(a4 + 8);
        if (v18 >= *(a4 + 16) || *v18 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a4, &v61))
          {
            goto LABEL_12;
          }
        }

        else
        {
          v61 = *v18;
          *(a4 + 8) = v18 + 1;
        }

        wis::reflect::getUnpackedType();
        WireTypeForType = wis::reflect::getWireTypeForType();
        v59 = a4;
        v20 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a4, v61);
        v60 = v20;
        __p = 0;
        v57 = 0;
        v58 = 0;
        do
        {
          while (1)
          {
            while (1)
            {
              if (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(a4) < 1)
              {
                if (v17 > 20)
                {
                  if (v17 <= 23)
                  {
                    if (v17 == 22)
                    {
                      sub_100045278(&__p, v64);
                      goto LABEL_123;
                    }

                    goto LABEL_53;
                  }

                  if (v17 == 26)
                  {
                    sub_100044F80(&__p, v64);
                    v39 = *v64;
                    if (*v64)
                    {
                      goto LABEL_125;
                    }

                    goto LABEL_126;
                  }

                  if (v17 == 25)
                  {
                    goto LABEL_122;
                  }

                  if (v17 != 24)
                  {
LABEL_158:
                    exception = __cxa_allocate_exception(0x10uLL);
                    std::runtime_error::runtime_error(exception, "This should never happen, no matter what the input!");
                  }
                }

                else
                {
                  if (v17 <= 17)
                  {
                    switch(v17)
                    {
                      case 15:
                        sub_100044BD0(&__p, v64);
                        break;
                      case 16:
                        sub_100044E44(&__p, v64);
                        break;
                      case 17:
LABEL_122:
                        sub_100045004(&__p, v64);
                        break;
                      default:
                        goto LABEL_158;
                    }

LABEL_123:
                    v39 = *v64;
                    if (*v64)
                    {
                      *&v64[2] = *v64;
LABEL_125:
                      operator delete(v39);
                    }

LABEL_126:
                    if (__p)
                    {
                      v57 = __p;
                      operator delete(__p);
                    }

                    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a4, v20);
                    goto LABEL_2;
                  }

                  if (v17 != 18)
                  {
                    if (v17 == 19)
                    {
                      sub_10004513C(&__p, v64);
                      goto LABEL_123;
                    }

LABEL_53:
                    sub_100044D0C(&__p, v64);
                    goto LABEL_123;
                  }
                }

                sub_100044B50(&__p, v64);
                goto LABEL_123;
              }

              *v64 = 0;
              sub_10004490C(&__p, v64);
              if (WireTypeForType > 1)
              {
                break;
              }

              if (WireTypeForType)
              {
                if (WireTypeForType == 1)
                {
                  LittleEndian64Fallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a4, v57 - 1);
LABEL_30:
                  if ((LittleEndian64Fallback & 1) == 0)
                  {
                    goto LABEL_47;
                  }
                }
              }

              else
              {
                v23 = v57 - 1;
                v24 = *(a4 + 8);
                if (v24 >= *(a4 + 16) || (v25 = *v24, (v25 & 0x8000000000000000) != 0))
                {
                  LittleEndian64Fallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a4, v23);
                  goto LABEL_30;
                }

                *v23 = v25;
                *(a4 + 8) = v24 + 1;
              }
            }

            if (WireTypeForType != 5)
            {
              break;
            }

            v64[0] = 0;
            LittleEndian32Fallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a4, v64);
            *(v57 - 1) = v64[0];
            if ((LittleEndian32Fallback & 1) == 0)
            {
              goto LABEL_47;
            }
          }
        }

        while (WireTypeForType != 2);
LABEL_47:
        if (__p)
        {
          v57 = __p;
          operator delete(__p);
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a4, v20);
LABEL_12:
        sub_1000F7F38(a4, v14);
      }
    }

    else
    {
      if ((DecodingType - 1) < 0xC)
      {
        *v64 = 0;
        if (v13 > 1u)
        {
          if (v13 == 2)
          {
            goto LABEL_12;
          }

          if (v13 == 5)
          {
            LODWORD(__p) = 0;
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a4, &__p))
            {
              goto LABEL_12;
            }

            *v64 = __p;
          }
        }

        else if (v13)
        {
          if (v13 == 1 && (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a4, v64) & 1) == 0)
          {
            goto LABEL_12;
          }
        }

        else
        {
          v29 = *(a4 + 8);
          if (v29 >= *(a4 + 16) || (*v29 & 0x8000000000000000) != 0)
          {
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a4, v64) & 1) == 0)
            {
              goto LABEL_12;
            }
          }

          else
          {
            *v64 = *v29;
            *(a4 + 8) = v29 + 1;
          }
        }

        v32 = *v64;
        switch(BuiltinType)
        {
          case 1:
          case 15:
            wis::protobuf::NumberConverter<(wis::reflect::Type)1>::decode();
            continue;
          case 2:
          case 16:
            wis::protobuf::NumberConverter<(wis::reflect::Type)2>::decode();
            continue;
          case 3:
          case 17:
            if (v55 != v14)
            {
              continue;
            }

            v33 = v54;
            v34 = *(v54 + 64);
            if (v34)
            {
              goto LABEL_95;
            }

            goto LABEL_96;
          case 4:
          case 7:
          case 9:
          case 10:
          case 12:
          case 18:
          case 21:
          case 23:
          case 24:
          case 26:
            continue;
          case 5:
          case 19:
            v32 = wis::protobuf::NumberConverter<(wis::reflect::Type)5>::decode();
            if (v55 != v14)
            {
              continue;
            }

            v33 = v54;
            v34 = *(v54 + 64);
            if (v34)
            {
              goto LABEL_95;
            }

            goto LABEL_96;
          case 6:
          case 20:
            if (v55 == v14)
            {
              v35 = v54;
              v36 = *(v54 + 64);
              if (v36)
              {
                LODWORD(v32) = (*(*v36 + 32))(v36, *v64);
              }

              if (*(v54 + 48) <= v32)
              {
                goto LABEL_109;
              }
            }

            continue;
          case 8:
          case 22:
            v32 = wis::protobuf::NumberConverter<(wis::reflect::Type)8>::decode();
            if (v55 != v14)
            {
              continue;
            }

            v35 = v54;
            v37 = *(v54 + 64);
            if (v37)
            {
              LODWORD(v32) = (*(*v37 + 32))(v37, v32);
            }

            if (*(v54 + 48) > v32)
            {
              continue;
            }

LABEL_109:
            if (*(v35 + 56) > v32)
            {
              goto LABEL_155;
            }

            continue;
          case 11:
          case 25:
            if (v55 != v14)
            {
              continue;
            }

            v33 = v54;
            v34 = *(v54 + 64);
            if (v34)
            {
LABEL_95:
              v32 = (*(*v34 + 40))(v34, v32);
            }

LABEL_96:
            if (*(v33 + 48) <= v32 && v32 < *(v33 + 56))
            {
              goto LABEL_155;
            }

            continue;
          default:
            v51 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v51, "This should never happen, no matter what the input!");
        }
      }

      if (DecodingType)
      {
        if (DecodingType != 13)
        {
          goto LABEL_12;
        }

        LODWORD(__p) = 0;
        v26 = *(a4 + 8);
        if (v26 >= *(a4 + 16) || *v26 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a4, &__p))
          {
            goto LABEL_12;
          }
        }

        else
        {
          LODWORD(__p) = *v26;
          *(a4 + 8) = v26 + 1;
        }

        memset(v64, 0, sizeof(v64));
        v65 = 0;
        String = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadString();
        if ((SHIBYTE(v65) & 0x80000000) == 0)
        {
          goto LABEL_142;
        }

        v41 = *v64;
        goto LABEL_141;
      }

      if (v13 > 1u)
      {
        if (v13 != 2)
        {
          if (v13 != 5)
          {
            goto LABEL_12;
          }

          v64[0] = 0;
          Varint64Fallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a4, v64);
          goto LABEL_151;
        }

        LODWORD(__p) = 0;
        v48 = *(a4 + 8);
        if (v48 >= *(a4 + 16) || (v31 = *v48, (v31 & 0x80000000) != 0))
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a4, &__p))
          {
            goto LABEL_12;
          }

          v31 = __p;
        }

        else
        {
          LODWORD(__p) = *v48;
          *(a4 + 8) = v48 + 1;
        }

LABEL_139:
        sub_100045794(v64, v31);
        String = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadRaw(a4, *v64, __p);
        v41 = *v64;
        if (*v64)
        {
          *&v64[2] = *v64;
LABEL_141:
          operator delete(v41);
        }

LABEL_142:
        if ((String & 1) == 0)
        {
          goto LABEL_12;
        }
      }

      else if (v13)
      {
        if (v13 != 1)
        {
          goto LABEL_12;
        }

        *v64 = 0;
        if (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a4, v64))
        {
          goto LABEL_12;
        }
      }

      else
      {
        *v64 = 0;
        v47 = *(a4 + 8);
        if (v47 < *(a4 + 16) && (*v47 & 0x80000000) == 0)
        {
          *(a4 + 8) = v47 + 1;
          continue;
        }

        Varint64Fallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a4, v64);
LABEL_151:
        if ((Varint64Fallback & 1) == 0)
        {
          goto LABEL_12;
        }
      }
    }
  }

LABEL_155:
  sub_1000447B8(&v53);
  if (v52)
  {
    sub_100008350(v52);
  }

  return v9 > 0;
}

uint64_t sub_1000F7EEC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000F7F38(uint64_t result, int a2)
{
  if (a2 || *(result + 36) != 1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Parsing failed in metric");
  }

  return result;
}

void *sub_1000F7FB0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = off_1002B1658;
  v9[0] = off_1002B16B8;
  v9[3] = v9;
  sub_100068C74(a1, a2, v9);
  sub_1000690B8(v9);
  a1[6] = a3;
  a1[7] = a4;
  sub_100068E40(a2, a1 + 8);
  *a1 = off_1002B1658;
  return a1;
}

void sub_1000F808C(_Unwind_Exception *a1)
{
  *v1 = off_1002ACE88;
  sub_1000690B8((v1 + 2));
  _Unwind_Resume(a1);
}

void *sub_1000F80C8(void *a1)
{
  v2 = a1[8];
  a1[8] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *a1 = off_1002ACE88;
  sub_1000690B8((a1 + 2));
  return a1;
}

void sub_1000F8140(void *a1)
{
  v2 = a1[8];
  a1[8] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *a1 = off_1002ACE88;
  sub_1000690B8((a1 + 2));

  operator delete();
}

BOOL sub_1000F8260(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = *a2;
  v6 = *(*a2 + 8);
  v7 = *(*a2 + 12);
  MetricFileMetadataHelper::MetricFileMetadataHelper();
  v53 = v5;
  v54 = v7;
LABEL_2:
  while (1)
  {
    v9 = wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(a4);
    if (v9 < 1)
    {
      break;
    }

    v10 = *(a4 + 8);
    if (v10 >= *(a4 + 16) || (TagFallback = *v10, (TagFallback & 0x80000000) != 0))
    {
      TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a4);
      *(a4 + 32) = TagFallback;
      if (!TagFallback)
      {
LABEL_14:
        sub_1000F8CB0(a4, 0);
        continue;
      }
    }

    else
    {
      *(a4 + 32) = TagFallback;
      *(a4 + 8) = v10 + 1;
      if (!TagFallback)
      {
        goto LABEL_14;
      }
    }

    v12 = wis::reflect::decodeTag(TagFallback, v8);
    v13 = v12;
    v14 = HIDWORD(v12);
    memset(v63, 0, sizeof(v63));
    v64 = 0xFFFFFFFFLL;
    MetricFileMetadataHelper::getSubfieldType();
    *v63 = v61;
    v64 = v62;
    BuiltinType = MetadataHelper::getBuiltinType();
    DecodingType = wis::reflect::getDecodingType();
    v17 = DecodingType;
    if (DecodingType > 13)
    {
      if ((DecodingType - 15) >= 0xC)
      {
        if (DecodingType == 14)
        {
          LODWORD(__p) = 0;
          v30 = *(a4 + 8);
          if (v30 >= *(a4 + 16) || (v31 = *v30, (v31 & 0x80000000) != 0))
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a4, &__p))
            {
              goto LABEL_12;
            }

            v31 = __p;
          }

          else
          {
            LODWORD(__p) = *v30;
            *(a4 + 8) = v30 + 1;
          }

          goto LABEL_136;
        }

        if (DecodingType != 27)
        {
          goto LABEL_12;
        }

        v63[0] = 0;
        v27 = *(a4 + 8);
        if (v27 >= *(a4 + 16) || (v28 = *v27, v28 < 0))
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a4, v63))
          {
            goto LABEL_12;
          }

          v28 = v63[0];
        }

        else
        {
          v63[0] = *v27;
          *(a4 + 8) = v27 + 1;
        }

        v41 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a4, v28);
        ++*(a4 + 56);
        v42 = wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(a4);
        wireless_diagnostics::google::protobuf::io::CodedInputStream::Skip(a4, v42);
        v43 = *(a4 + 56);
        v44 = __OFSUB__(v43, 1);
        v45 = v43 - 1;
        if (v45 < 0 == v44)
        {
          *(a4 + 56) = v45;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a4, v41);
      }

      else
      {
        v60 = 0;
        v18 = *(a4 + 8);
        if (v18 >= *(a4 + 16) || *v18 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a4, &v60))
          {
            goto LABEL_12;
          }
        }

        else
        {
          v60 = *v18;
          *(a4 + 8) = v18 + 1;
        }

        wis::reflect::getUnpackedType();
        WireTypeForType = wis::reflect::getWireTypeForType();
        v58 = a4;
        v20 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a4, v60);
        v59 = v20;
        __p = 0;
        v56 = 0;
        v57 = 0;
        do
        {
          while (1)
          {
            while (1)
            {
              if (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(a4) < 1)
              {
                if (v17 > 20)
                {
                  if (v17 <= 23)
                  {
                    if (v17 == 22)
                    {
                      sub_100045278(&__p, v63);
                      goto LABEL_120;
                    }

                    goto LABEL_53;
                  }

                  if (v17 == 26)
                  {
                    sub_100044F80(&__p, v63);
                    v38 = *v63;
                    if (*v63)
                    {
                      goto LABEL_122;
                    }

                    goto LABEL_123;
                  }

                  if (v17 == 25)
                  {
                    goto LABEL_119;
                  }

                  if (v17 != 24)
                  {
LABEL_155:
                    exception = __cxa_allocate_exception(0x10uLL);
                    std::runtime_error::runtime_error(exception, "This should never happen, no matter what the input!");
                  }
                }

                else
                {
                  if (v17 <= 17)
                  {
                    switch(v17)
                    {
                      case 15:
                        sub_100044BD0(&__p, v63);
                        break;
                      case 16:
                        sub_100044E44(&__p, v63);
                        break;
                      case 17:
LABEL_119:
                        sub_100045004(&__p, v63);
                        break;
                      default:
                        goto LABEL_155;
                    }

LABEL_120:
                    v38 = *v63;
                    if (*v63)
                    {
                      *&v63[2] = *v63;
LABEL_122:
                      operator delete(v38);
                    }

LABEL_123:
                    if (__p)
                    {
                      v56 = __p;
                      operator delete(__p);
                    }

                    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a4, v20);
                    goto LABEL_2;
                  }

                  if (v17 != 18)
                  {
                    if (v17 == 19)
                    {
                      sub_10004513C(&__p, v63);
                      goto LABEL_120;
                    }

LABEL_53:
                    sub_100044D0C(&__p, v63);
                    goto LABEL_120;
                  }
                }

                sub_100044B50(&__p, v63);
                goto LABEL_120;
              }

              *v63 = 0;
              sub_10004490C(&__p, v63);
              if (WireTypeForType > 1)
              {
                break;
              }

              if (WireTypeForType)
              {
                if (WireTypeForType == 1)
                {
                  LittleEndian64Fallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a4, v56 - 1);
LABEL_30:
                  if ((LittleEndian64Fallback & 1) == 0)
                  {
                    goto LABEL_47;
                  }
                }
              }

              else
              {
                v23 = v56 - 1;
                v24 = *(a4 + 8);
                if (v24 >= *(a4 + 16) || (v25 = *v24, (v25 & 0x8000000000000000) != 0))
                {
                  LittleEndian64Fallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a4, v23);
                  goto LABEL_30;
                }

                *v23 = v25;
                *(a4 + 8) = v24 + 1;
              }
            }

            if (WireTypeForType != 5)
            {
              break;
            }

            v63[0] = 0;
            LittleEndian32Fallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a4, v63);
            *(v56 - 1) = v63[0];
            if ((LittleEndian32Fallback & 1) == 0)
            {
              goto LABEL_47;
            }
          }
        }

        while (WireTypeForType != 2);
LABEL_47:
        if (__p)
        {
          v56 = __p;
          operator delete(__p);
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a4, v20);
LABEL_12:
        sub_1000F8CB0(a4, v14);
      }
    }

    else
    {
      if ((DecodingType - 1) < 0xC)
      {
        *v63 = 0;
        if (v13 > 1u)
        {
          if (v13 == 2)
          {
            goto LABEL_12;
          }

          if (v13 == 5)
          {
            LODWORD(__p) = 0;
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a4, &__p))
            {
              goto LABEL_12;
            }

            *v63 = __p;
          }
        }

        else if (v13)
        {
          if (v13 == 1 && (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a4, v63) & 1) == 0)
          {
            goto LABEL_12;
          }
        }

        else
        {
          v29 = *(a4 + 8);
          if (v29 >= *(a4 + 16) || (*v29 & 0x8000000000000000) != 0)
          {
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a4, v63) & 1) == 0)
            {
              goto LABEL_12;
            }
          }

          else
          {
            *v63 = *v29;
            *(a4 + 8) = v29 + 1;
          }
        }

        v32 = *v63;
        switch(BuiltinType)
        {
          case 1:
          case 15:
            wis::protobuf::NumberConverter<(wis::reflect::Type)1>::decode();
            continue;
          case 2:
          case 16:
            wis::protobuf::NumberConverter<(wis::reflect::Type)2>::decode();
            continue;
          case 3:
          case 6:
          case 11:
          case 12:
          case 17:
          case 20:
          case 25:
          case 26:
            continue;
          case 4:
          case 18:
            if (v54 != v14)
            {
              continue;
            }

            v33 = v53;
            v34 = *(v53 + 64);
            if (v34)
            {
              goto LABEL_97;
            }

            goto LABEL_98;
          case 5:
          case 19:
            wis::protobuf::NumberConverter<(wis::reflect::Type)5>::decode();
            continue;
          case 7:
          case 21:
            if (v54 != v14)
            {
              continue;
            }

            v35 = v53;
            v36 = *(v53 + 64);
            if (v36)
            {
              goto LABEL_103;
            }

            goto LABEL_104;
          case 8:
          case 22:
            wis::protobuf::NumberConverter<(wis::reflect::Type)8>::decode();
            continue;
          case 9:
          case 23:
            if (v54 != v14)
            {
              continue;
            }

            v35 = v53;
            v36 = *(v53 + 64);
            if (v36)
            {
LABEL_103:
              LODWORD(v32) = (*(*v36 + 16))(v36, *v63);
            }

LABEL_104:
            if (*(v35 + 48) <= v32 && *(v35 + 56) > v32)
            {
              goto LABEL_152;
            }

            continue;
          case 10:
          case 24:
            if (v54 != v14)
            {
              continue;
            }

            v33 = v53;
            v34 = *(v53 + 64);
            if (v34)
            {
LABEL_97:
              v32 = (*(*v34 + 24))(v34, *v63);
            }

LABEL_98:
            if (*(v33 + 48) <= v32 && v32 < *(v33 + 56))
            {
              goto LABEL_152;
            }

            continue;
          default:
            v50 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v50, "This should never happen, no matter what the input!");
        }
      }

      if (DecodingType)
      {
        if (DecodingType != 13)
        {
          goto LABEL_12;
        }

        LODWORD(__p) = 0;
        v26 = *(a4 + 8);
        if (v26 >= *(a4 + 16) || *v26 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a4, &__p))
          {
            goto LABEL_12;
          }
        }

        else
        {
          LODWORD(__p) = *v26;
          *(a4 + 8) = v26 + 1;
        }

        memset(v63, 0, sizeof(v63));
        v64 = 0;
        String = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadString();
        if ((SHIBYTE(v64) & 0x80000000) == 0)
        {
          goto LABEL_139;
        }

        v40 = *v63;
        goto LABEL_138;
      }

      if (v13 > 1u)
      {
        if (v13 != 2)
        {
          if (v13 != 5)
          {
            goto LABEL_12;
          }

          v63[0] = 0;
          Varint64Fallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a4, v63);
          goto LABEL_148;
        }

        LODWORD(__p) = 0;
        v47 = *(a4 + 8);
        if (v47 >= *(a4 + 16) || (v31 = *v47, (v31 & 0x80000000) != 0))
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a4, &__p))
          {
            goto LABEL_12;
          }

          v31 = __p;
        }

        else
        {
          LODWORD(__p) = *v47;
          *(a4 + 8) = v47 + 1;
        }

LABEL_136:
        sub_100045794(v63, v31);
        String = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadRaw(a4, *v63, __p);
        v40 = *v63;
        if (*v63)
        {
          *&v63[2] = *v63;
LABEL_138:
          operator delete(v40);
        }

LABEL_139:
        if ((String & 1) == 0)
        {
          goto LABEL_12;
        }
      }

      else if (v13)
      {
        if (v13 != 1)
        {
          goto LABEL_12;
        }

        *v63 = 0;
        if (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a4, v63))
        {
          goto LABEL_12;
        }
      }

      else
      {
        *v63 = 0;
        v46 = *(a4 + 8);
        if (v46 < *(a4 + 16) && (*v46 & 0x80000000) == 0)
        {
          *(a4 + 8) = v46 + 1;
          continue;
        }

        Varint64Fallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a4, v63);
LABEL_148:
        if ((Varint64Fallback & 1) == 0)
        {
          goto LABEL_12;
        }
      }
    }
  }

LABEL_152:
  sub_1000447B8(&v52);
  if (v51)
  {
    sub_100008350(v51);
  }

  return v9 > 0;
}

uint64_t sub_1000F8C64(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000F8CB0(uint64_t result, int a2)
{
  if (a2 || *(result + 36) != 1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Parsing failed in metric");
  }

  return result;
}

void *sub_1000F8D28(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = off_1002B1738;
  v7[0] = off_1002B17A8;
  v7[3] = v7;
  sub_100068C74(a1, a2, v7);
  sub_1000690B8(v7);
  a1[6] = a3;
  sub_100068E40(a2, a1 + 7);
  *a1 = off_1002B1738;
  return a1;
}

void sub_1000F8DF8(_Unwind_Exception *a1)
{
  *v1 = off_1002ACE88;
  sub_1000690B8((v1 + 2));
  _Unwind_Resume(a1);
}

void *sub_1000F8E34(void *a1)
{
  v2 = a1[7];
  a1[7] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *a1 = off_1002ACE88;
  sub_1000690B8((a1 + 2));
  return a1;
}

void sub_1000F8EAC(void *a1)
{
  v2 = a1[7];
  a1[7] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *a1 = off_1002ACE88;
  sub_1000690B8((a1 + 2));

  operator delete();
}

BOOL sub_1000F8FCC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = *a2;
  v6 = *(*a2 + 8);
  v7 = *(*a2 + 12);
  MetricFileMetadataHelper::MetricFileMetadataHelper();
  v54 = v5;
  v55 = v7;
LABEL_2:
  while (1)
  {
    v9 = wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(a4);
    if (v9 < 1)
    {
      break;
    }

    v10 = *(a4 + 8);
    if (v10 >= *(a4 + 16) || (TagFallback = *v10, (TagFallback & 0x80000000) != 0))
    {
      TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a4);
      *(a4 + 32) = TagFallback;
      if (!TagFallback)
      {
LABEL_14:
        sub_1000F9A50(a4, 0);
        continue;
      }
    }

    else
    {
      *(a4 + 32) = TagFallback;
      *(a4 + 8) = v10 + 1;
      if (!TagFallback)
      {
        goto LABEL_14;
      }
    }

    v12 = wis::reflect::decodeTag(TagFallback, v8);
    v13 = v12;
    v14 = HIDWORD(v12);
    memset(v64, 0, sizeof(v64));
    v65 = 0xFFFFFFFFLL;
    MetricFileMetadataHelper::getSubfieldType();
    *v64 = v62;
    v65 = v63;
    BuiltinType = MetadataHelper::getBuiltinType();
    DecodingType = wis::reflect::getDecodingType();
    v17 = DecodingType;
    if (DecodingType > 13)
    {
      if ((DecodingType - 15) >= 0xC)
      {
        if (DecodingType == 14)
        {
          LODWORD(__p) = 0;
          v30 = *(a4 + 8);
          if (v30 >= *(a4 + 16) || (v31 = *v30, (v31 & 0x80000000) != 0))
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a4, &__p))
            {
              goto LABEL_12;
            }

            v31 = __p;
          }

          else
          {
            LODWORD(__p) = *v30;
            *(a4 + 8) = v30 + 1;
          }

          goto LABEL_137;
        }

        if (DecodingType != 27)
        {
          goto LABEL_12;
        }

        v64[0] = 0;
        v27 = *(a4 + 8);
        if (v27 >= *(a4 + 16) || (v28 = *v27, v28 < 0))
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a4, v64))
          {
            goto LABEL_12;
          }

          v28 = v64[0];
        }

        else
        {
          v64[0] = *v27;
          *(a4 + 8) = v27 + 1;
        }

        v42 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a4, v28);
        ++*(a4 + 56);
        v43 = wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(a4);
        wireless_diagnostics::google::protobuf::io::CodedInputStream::Skip(a4, v43);
        v44 = *(a4 + 56);
        v45 = __OFSUB__(v44, 1);
        v46 = v44 - 1;
        if (v46 < 0 == v45)
        {
          *(a4 + 56) = v46;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a4, v42);
      }

      else
      {
        v61 = 0;
        v18 = *(a4 + 8);
        if (v18 >= *(a4 + 16) || *v18 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a4, &v61))
          {
            goto LABEL_12;
          }
        }

        else
        {
          v61 = *v18;
          *(a4 + 8) = v18 + 1;
        }

        wis::reflect::getUnpackedType();
        WireTypeForType = wis::reflect::getWireTypeForType();
        v59 = a4;
        v20 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a4, v61);
        v60 = v20;
        __p = 0;
        v57 = 0;
        v58 = 0;
        do
        {
          while (1)
          {
            while (1)
            {
              if (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(a4) < 1)
              {
                if (v17 > 20)
                {
                  if (v17 <= 23)
                  {
                    if (v17 == 22)
                    {
                      sub_100045278(&__p, v64);
                      goto LABEL_121;
                    }

                    goto LABEL_53;
                  }

                  if (v17 == 26)
                  {
                    sub_100044F80(&__p, v64);
                    v39 = *v64;
                    if (*v64)
                    {
                      goto LABEL_123;
                    }

                    goto LABEL_124;
                  }

                  if (v17 == 25)
                  {
                    goto LABEL_120;
                  }

                  if (v17 != 24)
                  {
LABEL_156:
                    exception = __cxa_allocate_exception(0x10uLL);
                    std::runtime_error::runtime_error(exception, "This should never happen, no matter what the input!");
                  }
                }

                else
                {
                  if (v17 <= 17)
                  {
                    switch(v17)
                    {
                      case 15:
                        sub_100044BD0(&__p, v64);
                        break;
                      case 16:
                        sub_100044E44(&__p, v64);
                        break;
                      case 17:
LABEL_120:
                        sub_100045004(&__p, v64);
                        break;
                      default:
                        goto LABEL_156;
                    }

LABEL_121:
                    v39 = *v64;
                    if (*v64)
                    {
                      *&v64[2] = *v64;
LABEL_123:
                      operator delete(v39);
                    }

LABEL_124:
                    if (__p)
                    {
                      v57 = __p;
                      operator delete(__p);
                    }

                    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a4, v20);
                    goto LABEL_2;
                  }

                  if (v17 != 18)
                  {
                    if (v17 == 19)
                    {
                      sub_10004513C(&__p, v64);
                      goto LABEL_121;
                    }

LABEL_53:
                    sub_100044D0C(&__p, v64);
                    goto LABEL_121;
                  }
                }

                sub_100044B50(&__p, v64);
                goto LABEL_121;
              }

              *v64 = 0;
              sub_10004490C(&__p, v64);
              if (WireTypeForType > 1)
              {
                break;
              }

              if (WireTypeForType)
              {
                if (WireTypeForType == 1)
                {
                  LittleEndian64Fallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a4, v57 - 1);
LABEL_30:
                  if ((LittleEndian64Fallback & 1) == 0)
                  {
                    goto LABEL_47;
                  }
                }
              }

              else
              {
                v23 = v57 - 1;
                v24 = *(a4 + 8);
                if (v24 >= *(a4 + 16) || (v25 = *v24, (v25 & 0x8000000000000000) != 0))
                {
                  LittleEndian64Fallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a4, v23);
                  goto LABEL_30;
                }

                *v23 = v25;
                *(a4 + 8) = v24 + 1;
              }
            }

            if (WireTypeForType != 5)
            {
              break;
            }

            v64[0] = 0;
            LittleEndian32Fallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a4, v64);
            *(v57 - 1) = v64[0];
            if ((LittleEndian32Fallback & 1) == 0)
            {
              goto LABEL_47;
            }
          }
        }

        while (WireTypeForType != 2);
LABEL_47:
        if (__p)
        {
          v57 = __p;
          operator delete(__p);
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a4, v20);
LABEL_12:
        sub_1000F9A50(a4, v14);
      }
    }

    else
    {
      if ((DecodingType - 1) < 0xC)
      {
        *v64 = 0;
        if (v13 > 1u)
        {
          if (v13 == 2)
          {
            goto LABEL_12;
          }

          if (v13 == 5)
          {
            LODWORD(__p) = 0;
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a4, &__p))
            {
              goto LABEL_12;
            }

            *v64 = __p;
          }
        }

        else if (v13)
        {
          if (v13 == 1 && (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a4, v64) & 1) == 0)
          {
            goto LABEL_12;
          }
        }

        else
        {
          v29 = *(a4 + 8);
          if (v29 >= *(a4 + 16) || (*v29 & 0x8000000000000000) != 0)
          {
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a4, v64) & 1) == 0)
            {
              goto LABEL_12;
            }
          }

          else
          {
            *v64 = *v29;
            *(a4 + 8) = v29 + 1;
          }
        }

        v32 = *v64;
        switch(BuiltinType)
        {
          case 1:
          case 15:
            wis::protobuf::NumberConverter<(wis::reflect::Type)1>::decode();
            continue;
          case 2:
          case 16:
            wis::protobuf::NumberConverter<(wis::reflect::Type)2>::decode();
            continue;
          case 3:
          case 17:
            if (v55 != v14)
            {
              continue;
            }

            v33 = v54;
            v34 = *(v54 + 56);
            if (v34)
            {
              goto LABEL_95;
            }

            goto LABEL_96;
          case 4:
          case 7:
          case 9:
          case 10:
          case 12:
          case 18:
          case 21:
          case 23:
          case 24:
          case 26:
            continue;
          case 5:
          case 19:
            v32 = wis::protobuf::NumberConverter<(wis::reflect::Type)5>::decode();
            if (v55 != v14)
            {
              continue;
            }

            v33 = v54;
            v34 = *(v54 + 56);
            if (v34)
            {
              goto LABEL_95;
            }

            goto LABEL_96;
          case 6:
          case 20:
            if (v55 == v14)
            {
              v35 = *(v54 + 56);
              if (v35)
              {
                LODWORD(v32) = (*(*v35 + 32))(v35, *v64);
              }

              if (*(v54 + 48) <= v32)
              {
                goto LABEL_153;
              }
            }

            continue;
          case 8:
          case 22:
            v36 = wis::protobuf::NumberConverter<(wis::reflect::Type)8>::decode();
            if (v55 == v14)
            {
              v37 = *(v54 + 56);
              if (v37)
              {
                LODWORD(v36) = (*(*v37 + 32))(v37, v36);
              }

              if (*(v54 + 48) <= v36)
              {
                goto LABEL_153;
              }
            }

            continue;
          case 11:
          case 25:
            if (v55 != v14)
            {
              continue;
            }

            v33 = v54;
            v34 = *(v54 + 56);
            if (v34)
            {
LABEL_95:
              v32 = (*(*v34 + 40))(v34, v32);
            }

LABEL_96:
            if (*(v33 + 48) <= v32)
            {
              goto LABEL_153;
            }

            continue;
          default:
            v51 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v51, "This should never happen, no matter what the input!");
        }
      }

      if (DecodingType)
      {
        if (DecodingType != 13)
        {
          goto LABEL_12;
        }

        LODWORD(__p) = 0;
        v26 = *(a4 + 8);
        if (v26 >= *(a4 + 16) || *v26 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a4, &__p))
          {
            goto LABEL_12;
          }
        }

        else
        {
          LODWORD(__p) = *v26;
          *(a4 + 8) = v26 + 1;
        }

        memset(v64, 0, sizeof(v64));
        v65 = 0;
        String = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadString();
        if ((SHIBYTE(v65) & 0x80000000) == 0)
        {
          goto LABEL_140;
        }

        v41 = *v64;
        goto LABEL_139;
      }

      if (v13 > 1u)
      {
        if (v13 != 2)
        {
          if (v13 != 5)
          {
            goto LABEL_12;
          }

          v64[0] = 0;
          Varint64Fallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a4, v64);
          goto LABEL_149;
        }

        LODWORD(__p) = 0;
        v48 = *(a4 + 8);
        if (v48 >= *(a4 + 16) || (v31 = *v48, (v31 & 0x80000000) != 0))
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a4, &__p))
          {
            goto LABEL_12;
          }

          v31 = __p;
        }

        else
        {
          LODWORD(__p) = *v48;
          *(a4 + 8) = v48 + 1;
        }

LABEL_137:
        sub_100045794(v64, v31);
        String = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadRaw(a4, *v64, __p);
        v41 = *v64;
        if (*v64)
        {
          *&v64[2] = *v64;
LABEL_139:
          operator delete(v41);
        }

LABEL_140:
        if ((String & 1) == 0)
        {
          goto LABEL_12;
        }
      }

      else if (v13)
      {
        if (v13 != 1)
        {
          goto LABEL_12;
        }

        *v64 = 0;
        if (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a4, v64))
        {
          goto LABEL_12;
        }
      }

      else
      {
        *v64 = 0;
        v47 = *(a4 + 8);
        if (v47 < *(a4 + 16) && (*v47 & 0x80000000) == 0)
        {
          *(a4 + 8) = v47 + 1;
          continue;
        }

        Varint64Fallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a4, v64);
LABEL_149:
        if ((Varint64Fallback & 1) == 0)
        {
          goto LABEL_12;
        }
      }
    }
  }

LABEL_153:
  sub_1000447B8(&v53);
  if (v52)
  {
    sub_100008350(v52);
  }

  return v9 > 0;
}