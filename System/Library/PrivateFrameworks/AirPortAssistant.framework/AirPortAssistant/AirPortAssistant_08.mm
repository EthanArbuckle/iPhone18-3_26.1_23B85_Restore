void sub_23EBD1550(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBD15AC(uint64_t a1, char *a2, void **a3, uint64_t *a4)
{
  memset(&v17, 0, sizeof(v17));
  sub_23EB8CCB8(v15, a2);
  v14 = 0;
  cf = 0;
  sub_23EB8FB78(v15, 2003060332, &v17);
  v7 = sub_23EB97374(a1, &v17, &v14, 0);
  if (!v7)
  {
    sub_23EB8CCB8(__p, "legacywds");
    sub_23EB90814(v15, __p, &v17);
    if (v12 < 0)
    {
      operator delete(__p[0]);
    }

    v7 = sub_23EB912D0(a1, &v17, &cf, 0);
    if (!v7)
    {
      v8 = CFGetTypeID(cf);
      if (v8 != CFArrayGetTypeID())
      {
        v7 = 4294960540;
        goto LABEL_13;
      }

      if (CFArrayGetCount(cf) <= 5)
      {
        if ((v14 & 3) == 0 || CFArrayGetCount(cf))
        {
          goto LABEL_12;
        }

        v9 = 1999720036;
      }

      else
      {
        v9 = 1732604488;
      }

      sub_23EBCB1D8(2003061875, v9, a3, a4);
LABEL_12:
      v7 = 0;
    }
  }

LABEL_13:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v16 < 0)
  {
    operator delete(v15[0]);
  }

  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }

  return v7;
}

void sub_23EBD1720(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (*(v23 - 33) < 0)
  {
    operator delete(*(v23 - 56));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBD1770(uint64_t a1, char *a2, void **a3, uint64_t *a4)
{
  memset(&v24, 0, sizeof(v24));
  sub_23EB8CCB8(&v22, a2);
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v18 = 0;
  sub_23EB8CCB8(v16, a2);
  sub_23EB8CCB8(__p, "raI1");
  sub_23EB90814(v16, __p, &v24);
  if (v15 < 0)
  {
    operator delete(__p[0]);
  }

  if (v17 < 0)
  {
    operator delete(v16[0]);
  }

  v8 = sub_23EB97710(a1, &v24, &v19, 0);
  v9 = v8;
  if (v8 == -5 || !v8)
  {
    if (SHIBYTE(v21) < 0)
    {
      if (v20)
      {
        v10 = v19;
        goto LABEL_12;
      }
    }

    else if (HIBYTE(v21))
    {
      v10 = &v19;
LABEL_12:
      v9 = sub_23EB7DE5C(v10, 0, &v18, 0, 0, 0, 0);
      goto LABEL_14;
    }

    v9 = 0;
LABEL_14:
    if (sub_23EBD19C0(a1, a2))
    {
      v11 = 1732604481;
      if (v9 || (v12 = v18, v18 + 1 < 2) || HIBYTE(v18) - 225 < 0xEu)
      {
LABEL_24:
        sub_23EBCB1D8(1918978353, v11, a3, a4);
        goto LABEL_25;
      }
    }

    else
    {
      v12 = v18;
      if (!v18)
      {
        goto LABEL_25;
      }
    }

    if (v12 + 1 >= 2)
    {
      if (HIBYTE(v12) - 225 > 0xDu)
      {
        goto LABEL_25;
      }

      v11 = 1732604485;
    }

    else
    {
      v11 = 1732604485;
    }

    goto LABEL_24;
  }

LABEL_25:
  if (SHIBYTE(v21) < 0)
  {
    operator delete(v19);
  }

  if (v23 < 0)
  {
    operator delete(v22);
  }

  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  return v9;
}

void sub_23EBD1948(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (*(v33 - 49) < 0)
  {
    operator delete(*(v33 - 72));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBD19C0(uint64_t a1, char *a2)
{
  memset(&v12, 0, sizeof(v12));
  sub_23EB8CCB8(v10, a2);
  v9 = 0;
  v8 = 0;
  v7 = 0;
  sub_23EB8CCB8(__p, "raWM");
  sub_23EB90814(v10, __p, &v12);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (sub_23EB97374(a1, &v12, &v9, 0))
  {
    goto LABEL_10;
  }

  sub_23EB8CCB8(__p, "raEA");
  sub_23EB90814(v10, __p, &v12);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (sub_23EB97588(a1, &v12, &v8, 0))
  {
    goto LABEL_10;
  }

  sub_23EB8CCB8(__p, "raFl");
  sub_23EB90814(v10, __p, &v12);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (sub_23EB97374(a1, &v12, &v7, 0))
  {
LABEL_10:
    v3 = 0;
  }

  else if (v8 && (v9 - 3) < 6)
  {
    v3 = 1;
  }

  else
  {
    v3 = v7 & 1;
  }

  if (v11 < 0)
  {
    operator delete(v10[0]);
  }

  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }

  return v3;
}

void sub_23EBD1B34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (*(v23 - 17) < 0)
  {
    operator delete(*(v23 - 40));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBD1B94(uint64_t a1, char *a2, void **a3, uint64_t *a4)
{
  memset(&v17, 0, sizeof(v17));
  sub_23EB8CCB8(v15, a2);
  v14 = 0;
  sub_23EB8FB78(v15, 1651724337, &v17);
  if (!sub_23EB9C430(a1, &v17))
  {
    goto LABEL_10;
  }

  sub_23EB8CCB8(__p, "raAu");
  sub_23EB90814(v15, __p, &v17);
  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  v8 = sub_23EB97374(a1, &v17, &v14, 0);
  if (!v8)
  {
    v9 = sub_23EBD19C0(a1, a2);
    v10 = 1732604481;
    if (!v9 || v14)
    {
      if (v14 < 0x10000)
      {
LABEL_10:
        v8 = 0;
        goto LABEL_11;
      }

      v10 = 1732604486;
    }

    sub_23EBCB1D8(1651724337, v10, a3, a4);
    goto LABEL_10;
  }

LABEL_11:
  if (v16 < 0)
  {
    operator delete(v15[0]);
  }

  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }

  return v8;
}

void sub_23EBD1CC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBD1D14(uint64_t a1, char *a2, void **a3, uint64_t *a4)
{
  memset(&v24, 0, sizeof(v24));
  sub_23EB8CCB8(v22, a2);
  v8 = sub_23EB8BE08(a1, 909398611);
  v19 = 0;
  v20 = 0;
  v21 = 0;
  sub_23EB8CCB8(__p, "raSe");
  sub_23EB90814(v22, __p, &v24);
  if (v18 < 0)
  {
    operator delete(__p[0]);
  }

  v9 = sub_23EB97710(a1, &v24, &v19, 0);
  if (!v9)
  {
    v10 = sub_23EBD19C0(a1, a2);
    v11 = 1732604481;
    v12 = HIBYTE(v21);
    if (v10)
    {
      v13 = v20;
      if (v21 >= 0)
      {
        v14 = HIBYTE(v21);
      }

      else
      {
        v14 = v20;
      }

      if (!v14)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v13 = v20;
    }

    if (v21 < 0)
    {
      v12 = v13;
    }

    v15 = 32;
    if (v8)
    {
      v15 = 64;
    }

    if (v12 > v15)
    {
      v11 = 1732604483;
LABEL_17:
      sub_23EBCB1D8(1918980965, v11, a3, a4);
    }
  }

  if (SHIBYTE(v21) < 0)
  {
    operator delete(v19);
  }

  if (v23 < 0)
  {
    operator delete(v22[0]);
  }

  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  return v9;
}

void sub_23EBD1E78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBD1EDC(uint64_t a1, char *a2, void **a3, uint64_t *a4)
{
  memset(&v18, 0, sizeof(v18));
  sub_23EB8CCB8(v16, a2);
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v12 = 0;
  sub_23EB8CCB8(__p, "raI2");
  sub_23EB90814(v16, __p, &v18);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  v7 = sub_23EB97710(a1, &v18, &v13, 0);
  if (!v7)
  {
    if (SHIBYTE(v15) < 0)
    {
      if (v14)
      {
        v8 = v13;
        goto LABEL_9;
      }
    }

    else if (HIBYTE(v15))
    {
      v8 = &v13;
LABEL_9:
      v7 = sub_23EB7DE5C(v8, 0, &v12, 0, 0, 0, 0);
      if (v7 || v12 + 1 < 2 || HIBYTE(v12) - 225 <= 0xDu)
      {
        sub_23EBCB1D8(1918978354, 1732604485, a3, a4);
        goto LABEL_14;
      }
    }

    v7 = 0;
  }

LABEL_14:
  if (SHIBYTE(v15) < 0)
  {
    operator delete(v13);
  }

  if (v17 < 0)
  {
    operator delete(v16[0]);
  }

  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }

  return v7;
}

void sub_23EBD2038(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (*(v28 - 33) < 0)
  {
    operator delete(*(v28 - 56));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBD2098(uint64_t a1, char *a2, void **a3, uint64_t *a4)
{
  memset(&v14, 0, sizeof(v14));
  sub_23EB8CCB8(v12, a2);
  v11 = 0;
  sub_23EB8FB78(v12, 1651724338, &v14);
  if (!sub_23EB9C430(a1, &v14))
  {
    goto LABEL_7;
  }

  sub_23EB8CCB8(__p, "raU2");
  sub_23EB90814(v12, __p, &v14);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  v7 = sub_23EB97374(a1, &v14, &v11, 0);
  if (!v7 && HIWORD(v11))
  {
    sub_23EBCB1D8(1651724338, 1732604486, a3, a4);
LABEL_7:
    v7 = 0;
  }

  if (v13 < 0)
  {
    operator delete(v12[0]);
  }

  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  return v7;
}

void sub_23EBD21A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBD21F4(uint64_t a1, char *a2, void **a3, uint64_t *a4)
{
  memset(&v19, 0, sizeof(v19));
  sub_23EB8CCB8(v17, a2);
  v7 = sub_23EB8BE08(a1, 909398611);
  v14 = 0;
  v15 = 0;
  v16 = 0;
  sub_23EB8CCB8(__p, "raS2");
  sub_23EB90814(v17, __p, &v19);
  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  v8 = sub_23EB97710(a1, &v19, &v14, 0);
  if (!v8)
  {
    v9 = HIBYTE(v16);
    if (v16 < 0)
    {
      v9 = v15;
    }

    v10 = 32;
    if (v7)
    {
      v10 = 64;
    }

    if (v9 > v10)
    {
      sub_23EBCB1D8(1918980914, 1732604483, a3, a4);
    }
  }

  if (SHIBYTE(v16) < 0)
  {
    operator delete(v14);
  }

  if (v18 < 0)
  {
    operator delete(v17[0]);
  }

  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__r_.__value_.__l.__data_);
  }

  return v8;
}

void sub_23EBD2320(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (*(v26 - 33) < 0)
  {
    operator delete(*(v26 - 56));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBD2384(uint64_t a1, char *a2, void **a3, uint64_t *a4)
{
  memset(&v15, 0, sizeof(v15));
  sub_23EB8CCB8(v13, a2);
  __p = 0;
  v11 = 0;
  v12 = 0;
  sub_23EB8FB78(v13, 1853117270, &v15);
  v7 = sub_23EB97710(a1, &v15, &__p, 0);
  v8 = HIBYTE(v12);
  if (!v7 && SHIBYTE(v12) < 0 && v11 > 0xFF)
  {
    sub_23EBCB1D8(1651723856, 1732604483, a3, a4);
    v8 = HIBYTE(v12);
  }

  if (v8 < 0)
  {
    operator delete(__p);
  }

  if (v14 < 0)
  {
    operator delete(v13[0]);
  }

  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  return v7;
}

void sub_23EBD2468(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBD24AC(uint64_t a1, char *a2, void **a3, uint64_t *a4)
{
  memset(&v17, 0, sizeof(v17));
  sub_23EB8CCB8(v15, a2);
  v14 = 0;
  v12 = 0;
  v13 = 0;
  v7 = sub_23EB975E8(a1, 1918977107, &v14 + 1, 0);
  if (!v7)
  {
    v7 = sub_23EB975E8(a1, 1918979649, &v14, 0);
    if (!v7)
    {
      v7 = sub_23EB89D74(a1, 2002864494, &v13, 0);
      if (!v7)
      {
        sub_23EB8CCB8(__p, "raSt");
        sub_23EB90814(v15, __p, &v17);
        if (v11 < 0)
        {
          operator delete(__p[0]);
        }

        v7 = sub_23EB97374(a1, &v17, &v12, 0);
        if (!v7)
        {
          if (sub_23EBCF168(a1) || v13 == 4)
          {
            v8 = 1919763024;
            if (HIBYTE(v14) && v14)
            {
              goto LABEL_16;
            }
          }

          else
          {
            if (v12 != 1)
            {
              goto LABEL_16;
            }

            v8 = 1919767380;
            if ((v14 & 0x100) == 0 && v14 != 1)
            {
              goto LABEL_16;
            }
          }

          sub_23EBCB1D8(1651724877, v8, a3, a4);
LABEL_16:
          v7 = 0;
        }
      }
    }
  }

  if (v16 < 0)
  {
    operator delete(v15[0]);
  }

  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }

  return v7;
}

void sub_23EBD2640(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (*(v23 - 33) < 0)
  {
    operator delete(*(v23 - 56));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBD2690(uint64_t a1, char *a2, void **a3, uint64_t *a4)
{
  memset(&v16, 0, sizeof(v16));
  sub_23EB8CCB8(v14, a2);
  __p = 0;
  v12 = 0;
  v13 = 0;
  if (!sub_23EB97B0C(a1, 1718842224))
  {
    goto LABEL_10;
  }

  sub_23EB8FB78(v14, 1718842224, &v16);
  v7 = sub_23EB97710(a1, &v16, &__p, 0);
  if (v7)
  {
    goto LABEL_11;
  }

  if (sub_23EB97B0C(a1, 1651721805))
  {
    v10 = 0;
    v7 = sub_23EB89D74(a1, 1651721805, &v10, 0);
    if (!v7 && v10 == 1)
    {
      v8 = HIBYTE(v13);
      if (v13 < 0)
      {
        v8 = v12;
      }

      if (!v8)
      {
        sub_23EBCB1D8(1718842224, 1732604481, a3, a4);
      }
    }
  }

  else
  {
LABEL_10:
    v7 = 0;
  }

LABEL_11:
  if (SHIBYTE(v13) < 0)
  {
    operator delete(__p);
  }

  if (v15 < 0)
  {
    operator delete(v14[0]);
  }

  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  return v7;
}

void sub_23EBD27D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBD2820(uint64_t a1, char *a2, void **a3, uint64_t *a4)
{
  memset(&v17, 0, sizeof(v17));
  sub_23EB8CCB8(v15, a2);
  __p = 0;
  v13 = 0;
  v14 = 0;
  sub_23EB8FB78(v15, 1635077710, &v17);
  v7 = sub_23EB97710(a1, &v17, &__p, 0);
  if (!v7)
  {
    if (v14 >= 0)
    {
      v9 = HIBYTE(v14);
    }

    else
    {
      v9 = v13;
    }

    if (v9)
    {
      v11 = 0;
      sub_23EB8FB78(v15, 1635078258, &v17);
      v7 = sub_23EB97588(a1, &v17, &v11, 0);
      if (v7)
      {
        goto LABEL_2;
      }

      v10 = 1732604483;
      if (v11)
      {
        if (v9 < 0x33)
        {
          goto LABEL_2;
        }
      }

      else
      {
        v10 = 1732604484;
      }

      sub_23EBCB1D8(1635077710, v10, a3, a4);
    }

    else
    {
      v7 = 0;
    }
  }

LABEL_2:
  if (SHIBYTE(v14) < 0)
  {
    operator delete(__p);
  }

  if (v16 < 0)
  {
    operator delete(v15[0]);
  }

  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }

  return v7;
}

void sub_23EBD296C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBD29B4(uint64_t a1, char *a2, void **a3, uint64_t *a4)
{
  memset(&v16, 0, sizeof(v16));
  sub_23EB8CCB8(v14, a2);
  __p = 0;
  v12 = 0;
  v13 = 0;
  sub_23EB8FB78(v14, 1635077712, &v16);
  v7 = sub_23EB97710(a1, &v16, &__p, 0);
  if (!v7)
  {
    if (v13 >= 0)
    {
      v9 = HIBYTE(v13);
    }

    else
    {
      v9 = v12;
    }

    if (v9)
    {
      v10 = 0;
      sub_23EB8FB78(v14, 1635078258, &v16);
      v7 = sub_23EB97588(a1, &v16, &v10, 0);
      if (!v7)
      {
        if (!v10)
        {
          sub_23EBCB1D8(1635077712, 1732604484, a3, a4);
        }

        if (v9 >= 0x21)
        {
          sub_23EBCB1D8(1635077712, 1732604483, a3, a4);
        }
      }
    }

    else
    {
      v7 = 0;
    }
  }

  if (SHIBYTE(v13) < 0)
  {
    operator delete(__p);
  }

  if (v15 < 0)
  {
    operator delete(v14[0]);
  }

  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  return v7;
}

void sub_23EBD2B10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBD2B58(uint64_t a1, char *a2, void **a3, uint64_t *a4)
{
  memset(&v13, 0, sizeof(v13));
  sub_23EB8CCB8(__p, a2);
  if (!sub_23EB8BE08(a1, 1400460148) || !sub_23EB8BE08(a1, 1396928343))
  {
LABEL_11:
    v7 = 0;
    goto LABEL_12;
  }

  v10 = 0;
  v9 = 0;
  sub_23EB8FB78(__p, 1918979649, &v13);
  v7 = sub_23EB97588(a1, &v13, &v9 + 1, 0);
  if (!v7)
  {
    sub_23EB8FB78(__p, 1918977107, &v13);
    v7 = sub_23EB97588(a1, &v13, &v9, 0);
    if (!v7)
    {
      sub_23EB8FB78(__p, 1936605510, &v13);
      v7 = sub_23EB97374(a1, &v13, &v10, 0);
      if (!v7)
      {
        if (HIBYTE(v9) == 1 && v9 == 1 && (v10 & 1) == 0 && !sub_23EBCB438(a1, 2002867022))
        {
          sub_23EBCB1D8(1651725143, 2002867022, a3, a4);
        }

        goto LABEL_11;
      }
    }
  }

LABEL_12:
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  return v7;
}

void sub_23EBD2CD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBD2D10(uint64_t a1, char *a2, void **a3, uint64_t *a4)
{
  memset(&v13, 0, sizeof(v13));
  sub_23EB8CCB8(__p, a2);
  if (!sub_23EB8BE08(a1, 2000834122))
  {
LABEL_7:
    v7 = 0;
    goto LABEL_8;
  }

  v10 = 0;
  v9 = 0;
  sub_23EB8FB78(__p, 1970496070, &v13);
  v7 = sub_23EB97374(a1, &v13, &v10, 0);
  if (!v7)
  {
    sub_23EB8FB78(__p, 2002929006, &v13);
    v7 = sub_23EB97588(a1, &v13, &v9, 0);
    if (!v7)
    {
      if ((v10 & 0x100) != 0 && !v9)
      {
        sub_23EBCB1D8(1651726160, 1918320962, a3, a4);
      }

      goto LABEL_7;
    }
  }

LABEL_8:
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  return v7;
}

void sub_23EBD2E28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBD2E60(uint64_t a1, char *a2, void **a3, uint64_t *a4)
{
  memset(&v13, 0, sizeof(v13));
  sub_23EB8CCB8(__p, a2);
  if (!sub_23EB8BE08(a1, 1400460148) || !sub_23EB8BE08(a1, 1396928343))
  {
LABEL_11:
    v7 = 0;
    goto LABEL_12;
  }

  v10 = 0;
  v9 = 0;
  sub_23EB8FB78(__p, 1918979649, &v13);
  v7 = sub_23EB97588(a1, &v13, &v10 + 1, 0);
  if (!v7)
  {
    sub_23EB8FB78(__p, 1918977107, &v13);
    v7 = sub_23EB97588(a1, &v13, &v10, 0);
    if (!v7)
    {
      sub_23EB8FB78(__p, 2002865741, &v13);
      v7 = sub_23EB97588(a1, &v13, &v9, 0);
      if (!v7)
      {
        if (HIBYTE(v10) == 1 && v10 == 1 && !v9 && !sub_23EBCB438(a1, 2002862918))
        {
          sub_23EBCB1D8(1651726147, 2002862918, a3, a4);
        }

        goto LABEL_11;
      }
    }
  }

LABEL_12:
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  return v7;
}

void sub_23EBD2FE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBD3020(uint64_t a1, char *a2, void **a3, uint64_t *a4)
{
  memset(&v13, 0, sizeof(v13));
  sub_23EB8CCB8(__p, a2);
  if (!sub_23EB8BE08(a1, 2000834122))
  {
LABEL_7:
    v7 = 0;
    goto LABEL_8;
  }

  v10 = 0;
  v9 = 0;
  sub_23EB8FB78(__p, 1970496070, &v13);
  v7 = sub_23EB97374(a1, &v13, &v10, 0);
  if (!v7)
  {
    sub_23EB8FB78(__p, 2002929006, &v13);
    v7 = sub_23EB97588(a1, &v13, &v9, 0);
    if (!v7)
    {
      if ((v10 & 0x200) != 0 && !v9)
      {
        sub_23EBCB1D8(1651726150, 1918320962, a3, a4);
      }

      goto LABEL_7;
    }
  }

LABEL_8:
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  return v7;
}

void sub_23EBD3138(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBD3170(uint64_t a1, char *a2, void **a3, uint64_t *a4)
{
  v29 = *MEMORY[0x277D85DE8];
  memset(&v27, 0, sizeof(v27));
  sub_23EB8CCB8(v25, a2);
  v23[0] = 0;
  v23[1] = 0;
  v24 = 0;
  v22 = 0;
  v8 = sub_23EBB65EC(v28, 0x11uLL);
  MEMORY[0x23EF1EFD0](v25, v8);
  sub_23EB8CCB8(&__p, "raNm");
  sub_23EB90814(v25, &__p, &v27);
  if (SHIBYTE(v21) < 0)
  {
    operator delete(__p);
  }

  v9 = sub_23EB97710(a1, &v27, v23, 0);
  if (!v9)
  {
    sub_23EB8FB78(v25, 1918979649, &v27);
    v9 = sub_23EB97588(a1, &v27, &v22, 0);
    if (!v9)
    {
      if (!sub_23EB8BE08(a1, 1198748750) || !sub_23EB9C128(a1) || !v22)
      {
        v9 = 0;
        goto LABEL_23;
      }

      v18 = 0;
      __p = 0;
      v20 = 0;
      v21 = 0;
      sub_23EB8CCB8(v16, a2);
      sub_23EB8CCB8(v14, "raNm");
      v9 = (*(*a1 + 16))(a1, v16, v14, &v27);
      if (v15 < 0)
      {
        operator delete(v14[0]);
      }

      if (v17 < 0)
      {
        operator delete(v16[0]);
      }

      if (v9)
      {
        goto LABEL_34;
      }

      v9 = sub_23EB97710(a1, &v27, &__p, 0);
      if (v9)
      {
        goto LABEL_34;
      }

      v10 = 1732604481;
      v11 = HIBYTE(v21);
      if (v21 < 0)
      {
        v11 = v20;
      }

      if (v11)
      {
        v9 = sub_23EBB4964(1651722062, &v18);
        if (v9)
        {
          goto LABEL_34;
        }

        v12 = HIBYTE(v21);
        if (v21 < 0)
        {
          v12 = v20;
        }

        if (v12 <= *(v18 + 20))
        {
          if (!sub_23EB9B1C4(&__p, v23))
          {
LABEL_33:
            v9 = 0;
LABEL_34:
            if (SHIBYTE(v21) < 0)
            {
              operator delete(__p);
            }

            goto LABEL_23;
          }

          v10 = 1735283310;
        }

        else
        {
          v10 = 1732604483;
        }
      }

      sub_23EBCB1D8(1651722062, v10, a3, a4);
      goto LABEL_33;
    }
  }

LABEL_23:
  if (SHIBYTE(v24) < 0)
  {
    operator delete(v23[0]);
  }

  if (v26 < 0)
  {
    operator delete(v25[0]);
  }

  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }

  return v9;
}

void sub_23EBD3440(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  if (a34 < 0)
  {
    operator delete(a29);
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  if (*(v40 - 81) < 0)
  {
    operator delete(*(v40 - 104));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBD34D4(uint64_t a1, char *a2, void **a3, uint64_t *a4)
{
  memset(&v26, 0, sizeof(v26));
  sub_23EB8CCB8(v24, a2);
  v23 = 0;
  cf = 0;
  sub_23EB8FB78(v24, 1918979649, &v26);
  v8 = sub_23EB97588(a1, &v26, &v23, 0);
  if (v8)
  {
    goto LABEL_15;
  }

  if (!sub_23EB8BE08(a1, 1198748750) || !sub_23EB9C128(a1) || !v23)
  {
    v8 = 0;
    goto LABEL_15;
  }

  v21 = 0;
  v20 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  sub_23EB8CCB8(v15, a2);
  sub_23EB8CCB8(__p, "raWM");
  v8 = (*(*a1 + 16))(a1, v15, __p, &v26);
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  if (v16 < 0)
  {
    operator delete(v15[0]);
  }

  if (!v8)
  {
    v8 = sub_23EB97374(a1, &v26, &v20, 0);
    if (!v8)
    {
      if (v20)
      {
        sub_23EB8CCB8(v15, "raWE");
        sub_23EB90814(&v26, v15, &v26);
        if (v16 < 0)
        {
          operator delete(v15[0]);
        }

        sub_23EB912D0(a1, &v26, &cf, 0);
        if ((v20 - 3) >= 3)
        {
          if (v20 == 2)
          {
            v11 = 1769419083;
            if (cf && CFDataGetLength(cf) == 13)
            {
              goto LABEL_54;
            }
          }

          else
          {
            if (v20 != 1 || cf && CFDataGetLength(cf) == 5)
            {
              goto LABEL_54;
            }

            v11 = 1769419851;
          }
        }

        else
        {
          sub_23EB8CCB8(v15, "raEA");
          sub_23EB90814(&v26, v15, &v26);
          if (v16 < 0)
          {
            operator delete(v15[0]);
          }

          sub_23EB97588(a1, &v26, &v21 + 1, 0);
          sub_23EB8CCB8(v15, "raCr");
          sub_23EB90814(&v26, v15, &v26);
          if (v16 < 0)
          {
            operator delete(v15[0]);
          }

          sub_23EB97710(a1, &v26, &v17, 0);
          sub_23EB8CCB8(v15, "rTSN");
          sub_23EB90814(&v26, v15, &v26);
          if (v16 < 0)
          {
            operator delete(v15[0]);
          }

          v8 = sub_23EB97588(a1, &v26, &v21, 0);
          if (v8)
          {
            goto LABEL_11;
          }

          if (sub_23EB8BE08(a1, 1414745645) && v21 == 1)
          {
            v10 = HIBYTE(v19);
            if (v19 < 0)
            {
              v10 = v18;
            }

            if (v10 == 13)
            {
              goto LABEL_54;
            }

            v11 = 1767134030;
          }

          else
          {
            if ((v21 & 0x100) != 0)
            {
              goto LABEL_54;
            }

            v11 = 1767329857;
            if (cf && CFDataGetLength(cf) == 32)
            {
              v12 = HIBYTE(v19);
              if (v19 < 0)
              {
                v12 = v18;
              }

              if (v12)
              {
                goto LABEL_54;
              }
            }
          }
        }

        sub_23EBCB1D8(1651722064, v11, a3, a4);
      }

LABEL_54:
      v8 = 0;
    }
  }

LABEL_11:
  if (SHIBYTE(v19) < 0)
  {
    operator delete(v17);
  }

LABEL_15:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v25 < 0)
  {
    operator delete(v24[0]);
  }

  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
  }

  return v8;
}

void sub_23EBD38B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  if (*(v35 - 49) < 0)
  {
    operator delete(*(v35 - 72));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBD3954(uint64_t a1, char *a2, void **a3, uint64_t *a4)
{
  v26 = *MEMORY[0x277D85DE8];
  if (!sub_23EB8BE08(a1, 1768961614))
  {
    return 0;
  }

  memset(&v24, 0, sizeof(v24));
  sub_23EB8CCB8(v22, a2);
  __p = 0;
  v20 = 0;
  v21 = 0;
  v18 = 0;
  v17 = 0;
  v8 = strlen(a2);
  if (v8 >= 4)
  {
    v9 = 4;
  }

  else
  {
    v9 = v8;
  }

  if (!strncmp(a2, "6Wad", v9))
  {
    v10 = 911696228;
  }

  else
  {
    v10 = 1651717697;
  }

  sub_23EB8FB78(v22, 912483943, &v24);
  v11 = sub_23EB97374(a1, &v24, &v18, 0);
  if (!v11)
  {
    sub_23EB8FB78(v22, 912356724, &v24);
    v11 = sub_23EB97588(a1, &v24, &v17, 0);
    if (!v11)
    {
      sub_23EB8FB78(v22, 911696228, &v24);
      v11 = sub_23EB97710(a1, &v24, &__p, 0);
      if (!v11)
      {
        v12 = v18 == 5 || (v18 & 0xFFFFFFFD) == 1;
        v13 = v17;
        v14 = !v12;
        v25 = 0uLL;
        if (v17)
        {
LABEL_29:
          v11 = 0;
          goto LABEL_30;
        }

        if (SHIBYTE(v21) < 0)
        {
          if (v20)
          {
            p_p = __p;
LABEL_24:
            v11 = sub_23EB7D978(p_p, 0, &v25, 0, 0, 0, 0);
            if (v11)
            {
              sub_23EBCB1D8(v10, 1732604485, a3, a4);
              goto LABEL_30;
            }
          }
        }

        else if (HIBYTE(v21))
        {
          p_p = &__p;
          goto LABEL_24;
        }

        if (((v14 | v13) & 1) == 0 && sub_23EB7D7E4(&v25, 0))
        {
          sub_23EBCB1D8(v10, 1732604485, a3, a4);
        }

        goto LABEL_29;
      }
    }
  }

LABEL_30:
  if (SHIBYTE(v21) < 0)
  {
    operator delete(__p);
  }

  if (v23 < 0)
  {
    operator delete(v22[0]);
  }

  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  return v11;
}

void sub_23EBD3BB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBD3BF8(uint64_t a1, char *a2, void **a3, uint64_t *a4)
{
  v24 = *MEMORY[0x277D85DE8];
  if (!sub_23EB8BE08(a1, 1768961614))
  {
    return 0;
  }

  memset(&v22, 0, sizeof(v22));
  sub_23EB8CCB8(v20, a2);
  __p = 0;
  v18 = 0;
  v19 = 0;
  v16 = 0;
  v15 = 0;
  sub_23EB8FB78(v20, 912483943, &v22);
  v8 = sub_23EB97374(a1, &v22, &v16, 0);
  if (!v8)
  {
    sub_23EB8FB78(v20, 912356724, &v22);
    v8 = sub_23EB97588(a1, &v22, &v15, 0);
    if (!v8)
    {
      sub_23EB8FB78(v20, 911697783, &v22);
      v8 = sub_23EB97710(a1, &v22, &__p, 0);
      if (!v8)
      {
        v9 = v16 == 5 || (v16 & 0xFFFFFFFD) == 1;
        v10 = v15;
        v11 = !v9;
        v23 = 0uLL;
        if (v15)
        {
LABEL_26:
          v8 = 0;
          goto LABEL_27;
        }

        if (SHIBYTE(v19) < 0)
        {
          if (v18)
          {
            p_p = __p;
LABEL_18:
            v8 = sub_23EB7D978(p_p, 0, &v23, 0, 0, 0, 0);
            if (v8)
            {
              sub_23EBCB1D8(911697783, 1732604485, a3, a4);
              goto LABEL_27;
            }
          }
        }

        else if (HIBYTE(v19))
        {
          p_p = &__p;
          goto LABEL_18;
        }

        if (((v11 | v10) & 1) == 0)
        {
          v13 = v15 || v16 != 3 ? 3 : 0;
          if (sub_23EB7D7E4(&v23, v13))
          {
            sub_23EBCB1D8(911697783, 1732604485, a3, a4);
          }
        }

        goto LABEL_26;
      }
    }
  }

LABEL_27:
  if (SHIBYTE(v19) < 0)
  {
    operator delete(__p);
  }

  if (v21 < 0)
  {
    operator delete(v20[0]);
  }

  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

  return v8;
}

void sub_23EBD3E40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBD3E84(uint64_t a1, char *a2, void **a3, uint64_t *a4)
{
  v23 = *MEMORY[0x277D85DE8];
  if (!sub_23EB8BE08(a1, 1768961614))
  {
    return 0;
  }

  memset(&v21, 0, sizeof(v21));
  sub_23EB8CCB8(v19, a2);
  __p = 0;
  v17 = 0;
  v18 = 0;
  v15 = 0;
  v14 = 0;
  sub_23EB8FB78(v19, 912483943, &v21);
  v8 = sub_23EB97374(a1, &v21, &v15, 0);
  if (!v8)
  {
    sub_23EB8FB78(v19, 912356724, &v21);
    v8 = sub_23EB97588(a1, &v21, &v14, 0);
    if (!v8)
    {
      sub_23EB8FB78(v19, 910975332, &v21);
      v8 = sub_23EB97710(a1, &v21, &__p, 0);
      if (!v8)
      {
        v10 = v15 != 3 && v15 != 5;
        v11 = v14;
        v22 = 0uLL;
        if (v14)
        {
LABEL_23:
          v8 = 0;
          goto LABEL_24;
        }

        if (SHIBYTE(v18) < 0)
        {
          if (v17)
          {
            p_p = __p;
LABEL_18:
            v8 = sub_23EB7D978(p_p, 0, &v22, 0, 0, 0, 0);
            if (v8)
            {
              sub_23EBCB1D8(910975332, 1732604485, a3, a4);
              goto LABEL_24;
            }
          }
        }

        else if (HIBYTE(v18))
        {
          p_p = &__p;
          goto LABEL_18;
        }

        if (!v10 && !v11 && sub_23EB7D7E4(&v22, 0))
        {
          sub_23EBCB1D8(910975332, 1732604485, a3, a4);
        }

        goto LABEL_23;
      }
    }
  }

LABEL_24:
  if (SHIBYTE(v18) < 0)
  {
    operator delete(__p);
  }

  if (v20 < 0)
  {
    operator delete(v19[0]);
  }

  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

  return v8;
}

void sub_23EBD40AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBD40F0(uint64_t a1, char *a2, void **a3, uint64_t *a4)
{
  v26 = *MEMORY[0x277D85DE8];
  if (!sub_23EB8BE08(a1, 1768961614))
  {
    return 0;
  }

  memset(&v24, 0, sizeof(v24));
  sub_23EB8CCB8(v22, a2);
  __p = 0;
  v20 = 0;
  v21 = 0;
  v18 = 0;
  v17 = 0;
  v8 = strlen(a2);
  if (v8 >= 4)
  {
    v9 = 4;
  }

  else
  {
    v9 = v8;
  }

  if (!strncmp(a2, "6PDa", v9))
  {
    v10 = 911230049;
  }

  else
  {
    v10 = 1651717712;
  }

  sub_23EB8FB78(v22, 912483943, &v24);
  v11 = sub_23EB97374(a1, &v24, &v18, 0);
  if (!v11)
  {
    sub_23EB8FB78(v22, 912356724, &v24);
    v11 = sub_23EB97588(a1, &v24, &v17, 0);
    if (!v11)
    {
      sub_23EB8FB78(v22, 911230049, &v24);
      v11 = sub_23EB97710(a1, &v24, &__p, 0);
      if (!v11)
      {
        v13 = v18 != 3 && v18 != 5;
        v14 = v17;
        v25 = 0uLL;
        if (v17)
        {
LABEL_29:
          v11 = 0;
          goto LABEL_30;
        }

        if (SHIBYTE(v21) < 0)
        {
          if (v20)
          {
            p_p = __p;
LABEL_24:
            v11 = sub_23EB7D978(p_p, 0, &v25, 0, 0, 0, 0);
            if (v11)
            {
              sub_23EBCB1D8(v10, 1732604485, a3, a4);
              goto LABEL_30;
            }
          }
        }

        else if (HIBYTE(v21))
        {
          p_p = &__p;
          goto LABEL_24;
        }

        if (!v13 && !v14 && sub_23EB7D7E4(&v25, 0))
        {
          sub_23EBCB1D8(v10, 1732604485, a3, a4);
        }

        goto LABEL_29;
      }
    }
  }

LABEL_30:
  if (SHIBYTE(v21) < 0)
  {
    operator delete(__p);
  }

  if (v23 < 0)
  {
    operator delete(v22[0]);
  }

  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  return v11;
}

void sub_23EBD434C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBD4390(uint64_t a1, char *a2, void **a3, uint64_t *a4)
{
  if (!sub_23EB8BE08(a1, 1768961614))
  {
    return 0;
  }

  memset(&v21, 0, sizeof(v21));
  sub_23EB8CCB8(v19, a2);
  __p = 0;
  v17 = 0;
  v18 = 0;
  v15 = 0;
  v14 = 0;
  sub_23EB8FB78(v19, 912483943, &v21);
  v8 = sub_23EB97374(a1, &v21, &v15, 0);
  if (!v8)
  {
    sub_23EB8FB78(v19, 912356724, &v21);
    v8 = sub_23EB97588(a1, &v21, &v14, 0);
    if (!v8)
    {
      sub_23EB8FB78(v19, 911701093, &v21);
      v8 = sub_23EB97710(a1, &v21, &__p, 0);
      if (!v8)
      {
        v9 = v15 != 3;
        v10 = v14;
        v13 = 0;
        if (v14)
        {
LABEL_17:
          v8 = 0;
          goto LABEL_18;
        }

        if (SHIBYTE(v18) < 0)
        {
          if (v17)
          {
            p_p = __p;
LABEL_12:
            v8 = sub_23EB7DE5C(p_p, 0, &v13, 0, 0, 0, 0);
            if (v8)
            {
              sub_23EBCB1D8(911701093, 1732604485, a3, a4);
              goto LABEL_18;
            }
          }
        }

        else if (HIBYTE(v18))
        {
          p_p = &__p;
          goto LABEL_12;
        }

        if (!v9 && !v10 && sub_23EB7D704(bswap32(v13)))
        {
          sub_23EBCB1D8(911701093, 1732604485, a3, a4);
        }

        goto LABEL_17;
      }
    }
  }

LABEL_18:
  if (SHIBYTE(v18) < 0)
  {
    operator delete(__p);
  }

  if (v20 < 0)
  {
    operator delete(v19[0]);
  }

  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

  return v8;
}

void sub_23EBD4588(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_23EBD45CC()
{
  if (!qword_27E383818)
  {
    operator new();
  }

  v0 = &dword_281A6C3A8;
  do
  {
    result = sub_23EBD5254(qword_27E383818, v0);
    result[5] = v0;
    v2 = *v0;
    v0 += 14;
  }

  while (v2 != 1651721040);
  return result;
}

uint64_t sub_23EBD4674(uint64_t a1, const char *a2, void *a3, uint64_t a4)
{
  if (!a3)
  {
    return 4294967292;
  }

  v8 = sub_23EB9AC64(a2);
  v9 = *(qword_27E383818 + 8);
  if (!v9)
  {
    goto LABEL_9;
  }

  v10 = qword_27E383818 + 8;
  do
  {
    if (*(v9 + 32) >= v8)
    {
      v10 = v9;
    }

    v9 = *(v9 + 8 * (*(v9 + 32) < v8));
  }

  while (v9);
  if (v10 == qword_27E383818 + 8 || v8 < *(v10 + 32))
  {
LABEL_9:
    v10 = qword_27E383818 + 8;
  }

  *a3 = 0;
  if (v10 == qword_27E383818 + 8)
  {
    return 0;
  }

  v11 = *(*(v10 + 40) + 48);
  if (!v11)
  {
    return 0;
  }

  return v11(a1, a2, a3, a4);
}

uint64_t sub_23EBD4754(const __CFDictionary *a1)
{
  v32 = *MEMORY[0x277D85DE8];
  memset(&v28, 0, sizeof(v28));
  if (!a1)
  {
    return 4294967292;
  }

  Value = CFDictionaryGetValue(a1, @"legacywds");
  if (!Value)
  {
    return 0;
  }

  v2 = Value;
  Count = CFArrayGetCount(Value);
  if (Count < 1)
  {
    return 0;
  }

  v9 = Count;
  v10 = 0;
  v11 = *MEMORY[0x277CBECE8];
  while (1)
  {
    sub_23EB6FF14(v2, v29, "[*].%kO:mac", v4, v5, v6, v7, v8, v10);
    v13 = v12;
    if (v12)
    {
      break;
    }

    *cStr = 0u;
    v31 = 0u;
    sub_23EB7E798(v29, 6, cStr);
    v14 = CFStringCreateWithCString(v11, cStr, 0x8000100u);
    if (v14)
    {
      snprintf(cStr, 0x20uLL, "%ld", v10);
      MEMORY[0x23EF1EFD0](&v28, "[*].");
      if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v15 = &v28;
      }

      else
      {
        v15 = v28.__r_.__value_.__r.__words[0];
      }

      if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = SHIBYTE(v28.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v28.__r_.__value_.__l.__size_;
      }

      v17 = v15 + size;
      if (size >= 1)
      {
        v18 = v15;
        do
        {
          v19 = memchr(v18, 42, size);
          if (!v19)
          {
            break;
          }

          if (*v19 == 42)
          {
            goto LABEL_19;
          }

          v18 = (v19 + 1);
          size = v17 - v18;
        }

        while (v17 - v18 > 0);
      }

      v19 = v17;
LABEL_19:
      if (v19 == v17)
      {
        v20 = -1;
      }

      else
      {
        v20 = v19 - v15;
      }

      std::string::replace(&v28, v20, 1uLL, cStr);
      std::string::append(&v28, "PeerMAC");
      if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v26 = &v28;
      }

      else
      {
        v26 = v28.__r_.__value_.__r.__words[0];
      }

      v13 = sub_23EB71598(v2, v26, v14, v21, v22, v23, v24, v25);
      CFRelease(v14);
      if (v13)
      {
        break;
      }

      if (++v10 != v9)
      {
        continue;
      }
    }

    v13 = 0;
    break;
  }

  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }

  return v13;
}

void sub_23EBD4974(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBD4990(const __CFDictionary *a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v28 = 0;
  memset(&v26, 0, sizeof(v26));
  if (!a1)
  {
    return 4294967292;
  }

  cf = 0;
  Value = CFDictionaryGetValue(a1, @"legacywds");
  if (!Value)
  {
    return 0;
  }

  v2 = Value;
  Count = CFArrayGetCount(Value);
  if (Count < 1)
  {
    return 0;
  }

  v9 = Count;
  v10 = 0;
  while (1)
  {
    sub_23EB6FF14(v2, &v28, "[*].%kO", v4, v5, v6, v7, v8, v10);
    v12 = v11;
    if (v11)
    {
      break;
    }

    v12 = sub_23EB4EF94(1918979393, v28, 1, &cf);
    if (v12)
    {
      break;
    }

    snprintf(__str, 0x20uLL, "%ld", v10);
    MEMORY[0x23EF1EFD0](&v26, "[*].");
    if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v13 = &v26;
    }

    else
    {
      v13 = v26.__r_.__value_.__r.__words[0];
    }

    if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = SHIBYTE(v26.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v26.__r_.__value_.__l.__size_;
    }

    v15 = v13 + size;
    if (size >= 1)
    {
      v16 = v13;
      do
      {
        v17 = memchr(v16, 42, size);
        if (!v17)
        {
          break;
        }

        if (*v17 == 42)
        {
          goto LABEL_19;
        }

        v16 = (v17 + 1);
        size = v15 - v16;
      }

      while (v15 - v16 > 0);
    }

    v17 = v15;
LABEL_19:
    v18 = v17 == v15 ? -1 : v17 - v13;
    std::string::replace(&v26, v18, 1uLL, __str);
    std::string::append(&v26, "PeerMAC");
    v24 = (v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v26 : v26.__r_.__value_.__r.__words[0];
    v12 = sub_23EB71598(v2, v24, cf, v19, v20, v21, v22, v23);
    CFRelease(cf);
    if (v12)
    {
      break;
    }

    if (++v10 == v9)
    {
      v12 = 0;
      break;
    }
  }

  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
  }

  return v12;
}

void sub_23EBD4B9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBD4BB8(const __CFDictionary *a1)
{
  v33 = *MEMORY[0x277D85DE8];
  memset(&v29, 0, sizeof(v29));
  if (!a1)
  {
    return 4294967292;
  }

  v30 = 0;
  cf = 0;
  Value = CFDictionaryGetValue(a1, @"vaps");
  if (!Value)
  {
    return 0;
  }

  v2 = Value;
  Count = CFArrayGetCount(Value);
  if (Count < 1)
  {
    return 0;
  }

  v9 = Count;
  v10 = 0;
  while (1)
  {
    sub_23EB6FF14(v2, &cf, "[*].%kO", v4, v5, v6, v7, v8, v10);
    v12 = v11;
    if (v11 != -6727)
    {
      break;
    }

LABEL_29:
    if (++v10 == v9)
    {
      goto LABEL_30;
    }
  }

  if (v11)
  {
    goto LABEL_31;
  }

  if (cf)
  {
    v13 = CFGetTypeID(cf);
    if (v13 == CFDataGetTypeID())
    {
      v14 = cf;
      TypeID = CFStringGetTypeID();
      v12 = sub_23EBD4E00(TypeID, v14, TypeID, &v30);
      if (v12)
      {
        goto LABEL_31;
      }

      snprintf(__str, 0x20uLL, "%ld", v10);
      MEMORY[0x23EF1EFD0](&v29, "[*].");
      if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v16 = &v29;
      }

      else
      {
        v16 = v29.__r_.__value_.__r.__words[0];
      }

      if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = SHIBYTE(v29.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v29.__r_.__value_.__l.__size_;
      }

      v18 = v16 + size;
      if (size >= 1)
      {
        v19 = v16;
        do
        {
          v20 = memchr(v19, 42, size);
          if (!v20)
          {
            break;
          }

          if (*v20 == 42)
          {
            goto LABEL_22;
          }

          v19 = (v20 + 1);
          size = v18 - v19;
        }

        while (v18 - v19 > 0);
      }

      v20 = v18;
LABEL_22:
      v21 = v20 == v18 ? -1 : v20 - v16;
      std::string::replace(&v29, v21, 1uLL, __str);
      std::string::append(&v29, "raCr");
      v27 = (v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v29 : v29.__r_.__value_.__r.__words[0];
      v12 = sub_23EB71598(v2, v27, v30, v22, v23, v24, v25, v26);
      CFRelease(v30);
      if (v12)
      {
        goto LABEL_31;
      }
    }

    goto LABEL_29;
  }

LABEL_30:
  v12 = 0;
LABEL_31:
  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
  }

  return v12;
}

void sub_23EBD4DE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBD4E00(int a1, const __CFString *cf, uint64_t a3, void *a4)
{
  result = 4294967292;
  if (cf && a4)
  {
    v8 = CFGetTypeID(cf);
    if (v8 == a3)
    {
      *a4 = cf;
      CFRetain(cf);
      return 0;
    }

    v9 = v8;
    TypeID = CFStringGetTypeID();
    v11 = CFDataGetTypeID();
    if (v9 == TypeID)
    {
      if (v11 == a3)
      {
        v21 = 0;
        __s = 0;
        result = sub_23EB70FE4(cf, &__s, &v21);
        if (result)
        {
          return result;
        }

        v12 = strlen(__s);
        *a4 = CFDataCreate(*MEMORY[0x277CBECE8], __s, v12);
        free(v21);
        v13 = *a4 == 0;
        goto LABEL_16;
      }

      return 4294967292;
    }

    if (v9 == v11)
    {
      if (CFStringGetTypeID() != a3)
      {
        return 4294967292;
      }

      v14 = *MEMORY[0x277CBECE8];
      BytePtr = CFDataGetBytePtr(cf);
      Length = CFDataGetLength(cf);
      v17 = CFStringCreateWithBytes(v14, BytePtr, Length, 0x8000100u, 0);
LABEL_15:
      *a4 = v17;
      v13 = v17 == 0;
LABEL_16:
      if (v13)
      {
        return 4294967293;
      }

      else
      {
        return 0;
      }
    }

    v18 = CFBooleanGetTypeID();
    v19 = CFNumberGetTypeID();
    if (v9 == v18)
    {
      if (v19 != a3)
      {
        return 4294967292;
      }

      LODWORD(__s) = *MEMORY[0x277CBED10] != cf;
      v17 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, &__s);
      goto LABEL_15;
    }

    if (v9 != v19 || CFBooleanGetTypeID() != a3)
    {
      return 4294967292;
    }

    LODWORD(__s) = 0;
    if (!CFNumberGetValue(cf, kCFNumberSInt32Type, &__s))
    {
      return 4294967293;
    }

    if (__s > 1)
    {
      return 4294967292;
    }

    result = 0;
    if (__s)
    {
      v20 = MEMORY[0x277CBED28];
    }

    else
    {
      v20 = MEMORY[0x277CBED10];
    }

    *a4 = *v20;
  }

  return result;
}

uint64_t sub_23EBD500C(const __CFDictionary *a1)
{
  v33 = *MEMORY[0x277D85DE8];
  memset(&v29, 0, sizeof(v29));
  if (!a1)
  {
    return 4294967292;
  }

  v30 = 0;
  cf = 0;
  Value = CFDictionaryGetValue(a1, @"vaps");
  if (!Value)
  {
    return 0;
  }

  v2 = Value;
  Count = CFArrayGetCount(Value);
  if (Count < 1)
  {
    return 0;
  }

  v9 = Count;
  v10 = 0;
  while (1)
  {
    sub_23EB6FF14(v2, &cf, "[*].%kO", v4, v5, v6, v7, v8, v10);
    v12 = v11;
    if (v11 != -6727)
    {
      break;
    }

LABEL_29:
    if (++v10 == v9)
    {
      goto LABEL_30;
    }
  }

  if (v11)
  {
    goto LABEL_31;
  }

  if (cf)
  {
    v13 = CFGetTypeID(cf);
    if (v13 == CFStringGetTypeID())
    {
      v14 = cf;
      TypeID = CFDataGetTypeID();
      v12 = sub_23EBD4E00(TypeID, v14, TypeID, &v30);
      if (v12)
      {
        goto LABEL_31;
      }

      snprintf(__str, 0x20uLL, "%ld", v10);
      MEMORY[0x23EF1EFD0](&v29, "[*].");
      if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v16 = &v29;
      }

      else
      {
        v16 = v29.__r_.__value_.__r.__words[0];
      }

      if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = SHIBYTE(v29.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v29.__r_.__value_.__l.__size_;
      }

      v18 = v16 + size;
      if (size >= 1)
      {
        v19 = v16;
        do
        {
          v20 = memchr(v19, 42, size);
          if (!v20)
          {
            break;
          }

          if (*v20 == 42)
          {
            goto LABEL_22;
          }

          v19 = (v20 + 1);
          size = v18 - v19;
        }

        while (v18 - v19 > 0);
      }

      v20 = v18;
LABEL_22:
      v21 = v20 == v18 ? -1 : v20 - v16;
      std::string::replace(&v29, v21, 1uLL, __str);
      std::string::append(&v29, "raCr");
      v27 = (v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v29 : v29.__r_.__value_.__r.__words[0];
      v12 = sub_23EB71598(v2, v27, v30, v22, v23, v24, v25, v26);
      CFRelease(v30);
      if (v12)
      {
        goto LABEL_31;
      }
    }

    goto LABEL_29;
  }

LABEL_30:
  v12 = 0;
LABEL_31:
  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
  }

  return v12;
}

void sub_23EBD5238(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_23EBD5254(uint64_t a1, int *a2)
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

uint64_t *sub_23EBD5328(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = sub_23EBD5380(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

uint64_t *sub_23EBD5380(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (v2[3])
      {
        break;
      }

      v3 = v2[2];
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = v2[1];
            v12 = *v11;
            v2[1] = *v11;
            v13 = v2;
            if (v12)
            {
              v12[2] = v2;
              v3 = v2[2];
              v13 = *v3;
            }

            v11[2] = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            v2[2] = v11;
            v3 = v11[2];
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = v2[2];
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            v2[2] = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

__CFString *sub_23EBD551C(uint64_t a1, const char *a2, uint64_t a3)
{
  result = objc_msgSend_systemTimeZone(MEMORY[0x277CBEBB0], a2, a3);
  if (result)
  {
    v6 = objc_msgSend_name(result, v4, v5);
    if (objc_msgSend_length(v6, v7, v8))
    {
      return v6;
    }

    else
    {
      return @"GMT";
    }
  }

  return result;
}

uint64_t sub_23EBD557C(CFStringRef theString, void *a2)
{
  result = 4294960591;
  if (theString && a2)
  {
    if (CFStringGetLength(theString))
    {
      v6 = objc_msgSend_timeZoneWithName_(MEMORY[0x277CBEBB0], v5, theString);
      if (v6 || (v6 = objc_msgSend_timeZoneWithAbbreviation_(MEMORY[0x277CBEBB0], v7, theString)) != 0)
      {
        v8 = v6;
        v9 = objc_msgSend_dictionaryWithCapacity_(MEMORY[0x277CBEB38], v7, 3);
        if (v9)
        {
          v12 = v9;
          v13 = objc_msgSend_name(v8, v10, v11);
          objc_msgSend_setObject_forKey_(v12, v14, v13, @"zoneName");
          v17 = objc_msgSend_data(v8, v15, v16);
          objc_msgSend_setObject_forKey_(v12, v18, v17, @"zoneFile");
          v21 = objc_msgSend_timeZoneDataVersion(MEMORY[0x277CBEBB0], v19, v20);
          objc_msgSend_setObject_forKey_(v12, v22, v21, @"zoneVersion");
          result = 0;
          *a2 = v12;
        }

        else
        {
          return 4294960568;
        }
      }

      else
      {
        return 4294960569;
      }
    }

    else
    {
      return 4294960591;
    }
  }

  return result;
}

const __CFString *sub_23EBD5674(const __CFString *result, const char *a2, uint64_t a3)
{
  if (result)
  {
    v3 = result;
    result = sub_23EBD5564(result, a2, a3);
    if (result)
    {
      v4 = result;
      result = CFStringGetLength(result);
      if (result)
      {
        theString2 = 0;
        sub_23EB6FF14(v3, &theString2, "%kO", v5, v6, v7, v8, v9, @"zoneVersion");
        if (v10 || !theString2)
        {
          return 0;
        }

        else
        {
          return (CFStringCompare(v4, theString2, 1uLL) == kCFCompareGreaterThan);
        }
      }
    }
  }

  return result;
}

uint64_t sub_23EBD5700(const __CFString *a1, __CFString **a2)
{
  if (a1)
  {
    Length = CFStringGetLength(a1);
    v5 = 0;
    if (a2 && Length)
    {
      v5 = 0;
      v6 = off_27E382AB0;
      v7 = 18;
      do
      {
        v8 = *v6;
        if (CFStringCompare(a1, *(v6 - 1), 1uLL) == kCFCompareEqualTo)
        {
          *a2 = v8;
          v5 = 1;
        }

        v6 += 2;
        --v7;
      }

      while (v7);
    }
  }

  else
  {
    return 0;
  }

  return v5;
}

__CFDictionary *sub_23EBD578C(const __CFString *a1)
{
  v21 = 0;
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    sub_23EB6FF14(a1, &v21, "%kO:int", v2, v3, v4, v5, v6, @"Version");
    if (v21 > 1 || (v13 = CFDictionaryGetValue(a1, @"Changed"), v14 = CFDictionaryGetValue(a1, @"Unchanged"), !v13) || (v15 = v14) == 0)
    {
      theDict = 0;
      sub_23EB6FF14(a1, &theDict, "%kO.[0]", v8, v9, v10, v11, v12, @"Configurations");
      if (v16)
      {
        return Mutable;
      }

      if (!theDict)
      {
        return Mutable;
      }

      Value = CFDictionaryGetValue(theDict, @"Changed");
      if (!Value)
      {
        return Mutable;
      }

      v13 = Value;
      v18 = CFDictionaryGetValue(theDict, @"Unchanged");
      if (!v18)
      {
        return Mutable;
      }

      v15 = v18;
    }

    if (!sub_23EB6FED4(Mutable, v15))
    {
      CFDictionarySetValue(Mutable, @"APPLE-CONFIG", &stru_285145FE8);
      CFDictionaryApplyFunction(v13, sub_23EBD58E8, Mutable);
    }
  }

  return Mutable;
}

void sub_23EBD58E8(const void *a1, CFDictionaryRef theDict, __CFDictionary *a3)
{
  if (a3)
  {
    Value = CFDictionaryGetValue(theDict, @"Current");
    if (Value)
    {

      CFDictionarySetValue(a3, a1, Value);
    }
  }
}

uint64_t sub_23EBD5950(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_27E382BC8 <= 800 && (dword_27E382BC8 != -1 || sub_23EB74AC8(&dword_27E382BC8, 0x320u)))
  {
    sub_23EB75374(&dword_27E382BC8, "OSStatus SBSEngine_Create(StepByStepContextRef *)", 800, " \n", a5, a6, a7, a8, v23);
  }

  if (!a1)
  {
    return 4294960591;
  }

  v9 = malloc_type_calloc(1uLL, 0x60uLL, 0x106004078599C16uLL);
  if (!v9)
  {
    return 4294960568;
  }

  v10 = v9;
  *v9 = 0u;
  v9[1] = 0u;
  *(v9 + 4) = dispatch_group_create();
  *(v10 + 40) = 1;
  v11 = *MEMORY[0x277CBECE8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  *(v10 + 48) = Mutable;
  if (!Mutable)
  {
    goto LABEL_13;
  }

  v20 = CFDictionaryCreateMutable(v11, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  *(v10 + 56) = v20;
  if (!v20)
  {
    goto LABEL_13;
  }

  *(v10 + 64) = 0;
  *(v10 + 80) = 0;
  v21 = sub_23EBE9B10((v10 + 88), v13, v14, v15, v16, v17, v18, v19);
  if (v21)
  {
LABEL_14:
    sub_23EBD5A9C(v10, v13, v14, v15, v16, v17, v18, v19);
    return v21;
  }

  if (!*(v10 + 88))
  {
LABEL_13:
    v21 = 4294960568;
    goto LABEL_14;
  }

  v21 = 0;
  *a1 = v10;
  return v21;
}

uint64_t sub_23EBD5A9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_27E382BC8 <= 800 && (dword_27E382BC8 != -1 || sub_23EB74AC8(&dword_27E382BC8, 0x320u)))
  {
    sub_23EB75374(&dword_27E382BC8, "OSStatus SBSEngine_Release(StepByStepContextRef)", 800, " \n", a5, a6, a7, a8, v26);
  }

  if (!a1)
  {
    return 4294960591;
  }

  dispatch_group_wait(*(a1 + 32), 0xFFFFFFFFFFFFFFFFLL);
  if (*a1)
  {
    CFRelease(*a1);
    *a1 = 0;
  }

  v16 = *(a1 + 8);
  if (v16)
  {
    sub_23EBB0D6C(v16);
  }

  v17 = *(a1 + 16);
  if (v17)
  {
    CFRelease(v17);
    *(a1 + 16) = 0;
  }

  v18 = *(a1 + 24);
  if (v18)
  {
    sub_23EBB0D6C(v18);
  }

  v19 = *(a1 + 32);
  if (v19)
  {
    dispatch_release(v19);
  }

  v20 = *(a1 + 48);
  if (v20)
  {
    CFRelease(v20);
    *(a1 + 48) = 0;
  }

  v21 = *(a1 + 56);
  if (v21)
  {
    CFRelease(v21);
    *(a1 + 56) = 0;
  }

  v22 = *(a1 + 72);
  if (v22)
  {
    CFRelease(v22);
    *(a1 + 72) = 0;
  }

  v23 = *(a1 + 64);
  if (v23)
  {
    CFRelease(v23);
    *(a1 + 64) = 0;
  }

  v24 = *(a1 + 80);
  if (v24)
  {
    CFRelease(v24);
    *(a1 + 80) = 0;
  }

  sub_23EBE9CC0(*(a1 + 88), v9, v10, v11, v12, v13, v14, v15);
  free(a1);
  return 0;
}

uint64_t sub_23EBD5BC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_27E382BC8 <= 800 && (dword_27E382BC8 != -1 || sub_23EB74AC8(&dword_27E382BC8, 0x320u)))
  {
    sub_23EB75374(&dword_27E382BC8, "OSStatus SBSEngine_Cancel(StepByStepContextRef)", 800, " \n", a5, a6, a7, a8, v11);
  }

  if (!a1)
  {
    return 4294960591;
  }

  v9 = *(a1 + 88);

  return sub_23EBEA004(v9, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_23EBD5C5C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_27E382BC8 <= 800 && (dword_27E382BC8 != -1 || sub_23EB74AC8(&dword_27E382BC8, 0x320u)))
  {
    sub_23EB75374(&dword_27E382BC8, "OSStatus SBSEngine_Resume(StepByStepContextRef)", 800, " \n", a5, a6, a7, a8, v23);
  }

  if (!a1)
  {
    return 4294960591;
  }

  v9 = a1[4];
  if (!v9 || !a1[6])
  {
    return 4294960591;
  }

  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_group_async_f(v9, global_queue, a1, sub_23EBD5D34);
  result = sub_23EBEA0DC(a1[11], v11, v12, v13, v14, v15, v16, v17);
  if (!result)
  {
    sub_23EBEB0B0(a1[11], 14, 0, 0, v19, v20, v21, v22);
    return 0;
  }

  return result;
}

void sub_23EBD5D34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_27E382BC8 <= 800 && (dword_27E382BC8 != -1 || sub_23EB74AC8(&dword_27E382BC8, 0x320u)))
  {
    sub_23EB75374(&dword_27E382BC8, "void __SBSEngine_StepByStepSync(void *)", 800, " \n", a5, a6, a7, a8, v221);
  }

  if (!a1)
  {
    return;
  }

  if (!*a1 || !*(a1 + 8))
  {
LABEL_685:
    v9 = 4294960591;
    goto LABEL_686;
  }

  v9 = 4294960573;
  if (sub_23EBEA238(*(a1 + 88)))
  {
    goto LABEL_686;
  }

  allocator = *MEMORY[0x277CBECE8];
  while (2)
  {
    switch(sub_23EBDA4C0(a1))
    {
      case 1u:
        if (dword_27E382BC8 <= 800 && (dword_27E382BC8 != -1 || sub_23EB74AC8(&dword_27E382BC8, 0x320u)))
        {
          sub_23EB75374(&dword_27E382BC8, "void __SBSEngine_StepByStepSync(void *)", 800, "\n\n\t\t          \t\t++++++++++ SBS state: %s ++++++++++\n\n", a5, a6, a7, a8, "eSBSStep_CreateExtendOrReplace");
        }

        v229 = 0;
        if (!*(a1 + 48))
        {
          goto LABEL_685;
        }

        v230 = 0;
        v231[0] = 0;
        LODWORD(ValueAtIndex) = 0;
        sub_23EBDAC08(a1, v231);
        if (v10)
        {
          goto LABEL_17;
        }

        if (!v231[0])
        {
          v9 = 4294960568;
          goto LABEL_18;
        }

        if (*(a1 + 80))
        {
          v10 = sub_23EB6FDFC(allocator, v231[0], "%ks=%O", v11, a5, a6, a7, a8, "kSBSKey_AutoGuessRecommendation");
        }

        else
        {
          if (CFDictionaryContainsKey(v231[0], @"kSBSKey_SelectorChoice"))
          {
            goto LABEL_425;
          }

          v10 = sub_23EB6FDFC(allocator, v231[0], "%ks=%i", v157, a5, a6, a7, a8, "kSBSKey_SelectorChoice");
        }

        if (v10)
        {
LABEL_17:
          v9 = v10;
          goto LABEL_18;
        }

LABEL_425:
        if (*(a1 + 64))
        {
          if (!CFDictionaryContainsKey(v231[0], @"kSBSKey_RestoreRecommendation"))
          {
            v10 = sub_23EB6FDFC(allocator, v231[0], "%ks=%O", v158, a5, a6, a7, a8, "kSBSKey_RestoreRecommendation");
            if (v10)
            {
              goto LABEL_17;
            }
          }
        }

        v230 = 0;
        v10 = sub_23EBDAC94(a1, 1, v231[0], &v230, a5, a6, a7, a8);
        if (v10)
        {
          goto LABEL_17;
        }

        if (!v230)
        {
          v9 = 4294960569;
          goto LABEL_18;
        }

        sub_23EB6FF14(v230, &ValueAtIndex, "%ks:int", v159, a5, a6, a7, a8, "kSBSKey_SelectorChoice");
        if (v10)
        {
          goto LABEL_17;
        }

        v10 = sub_23EB6FDFC(allocator, v231[0], "%ks=%i", v160, a5, a6, a7, a8, "kSBSKey_SelectorChoice");
        if (v10)
        {
          goto LABEL_17;
        }

        v9 = 4294960587;
        if (ValueAtIndex <= 299)
        {
          if (ValueAtIndex != 100)
          {
            if (ValueAtIndex == 200)
            {
              if (*a1 && !sub_23EC0F77C(v10, v161, v162))
              {
                v164 = 0;
                v165 = 5;
              }

              else
              {
                v164 = 0;
                v165 = 7;
              }

              goto LABEL_631;
            }

LABEL_18:
            if (v229)
            {
              CFRelease(v229);
            }

            if (!v9)
            {
              if (dword_27E382BC8 <= 800 && (dword_27E382BC8 != -1 || sub_23EB74AC8(&dword_27E382BC8, 0x320u)))
              {
                v12 = "eSBSStep_CreateExtendOrReplace";
                goto LABEL_565;
              }

              goto LABEL_675;
            }

            goto LABEL_686;
          }

          v164 = 0;
          v165 = 2;
LABEL_631:
          v10 = sub_23EBD8E80(a1, v165, v164);
          goto LABEL_17;
        }

        if (ValueAtIndex == 300)
        {
          v164 = 0;
          v165 = 10;
          goto LABEL_631;
        }

        if (ValueAtIndex != 400)
        {
          goto LABEL_18;
        }

        v228 = 0;
        sub_23EB6FF14(v231[0], &v228, "%ks", v163, a5, a6, a7, a8, "kSBSKey_RestoreRecommendation");
        if (v202)
        {
LABEL_570:
          v9 = v202;
          goto LABEL_18;
        }

        if (v228)
        {
          v202 = sub_23EB6F348(allocator, &v229, "{%ks=%O}", v203, a5, a6, a7, a8, "kSBSKey_RestoreRecommendation");
          if (v202)
          {
            goto LABEL_570;
          }

          v164 = v229;
          if (v229)
          {
            v165 = 16;
            goto LABEL_631;
          }
        }

        v9 = 4294960569;
        goto LABEL_18;
      case 2u:
        if (dword_27E382BC8 <= 800 && (dword_27E382BC8 != -1 || sub_23EB74AC8(&dword_27E382BC8, 0x320u)))
        {
          sub_23EB75374(&dword_27E382BC8, "void __SBSEngine_StepByStepSync(void *)", 800, "\n\n\t\t          \t\t++++++++++ SBS state: %s ++++++++++\n\n", a5, a6, a7, a8, "eSBSStep_Create_Config");
        }

        v25 = sub_23EBDA528(a1);
        if (v25)
        {
          goto LABEL_689;
        }

        v34 = sub_23EBDA4C0(a1);
        LOBYTE(v23) = v34 == 2;
        if (dword_27E382BC8 > 800)
        {
          goto LABEL_674;
        }

        v35 = v34;
        if (dword_27E382BC8 == -1 && !sub_23EB74AC8(&dword_27E382BC8, 0x320u))
        {
          goto LABEL_674;
        }

        sub_23EB75374(&dword_27E382BC8, "void __SBSEngine_StepByStepSync(void *)", 800, "\n\n\t\t          \t\t---------- SBS state: %s ----------\n\n", v19, v20, v21, v22, "eSBSStep_Create_Config");
        if (v35 != 2)
        {
          goto LABEL_675;
        }

        goto LABEL_688;
      case 3u:
        if (dword_27E382BC8 <= 800 && (dword_27E382BC8 != -1 || sub_23EB74AC8(&dword_27E382BC8, 0x320u)))
        {
          sub_23EB75374(&dword_27E382BC8, "void __SBSEngine_StepByStepSync(void *)", 800, "\n\n\t\t          \t\t++++++++++ SBS state: %s ++++++++++\n\n", a5, a6, a7, a8, "eSBSStep_Guest_Config");
        }

        v230 = 0;
        if (!*(a1 + 48))
        {
          goto LABEL_685;
        }

        v231[0] = 0;
        v229 = 0;
        if (*a1 && *(a1 + 8) && *(a1 + 72))
        {
          sub_23EBDAC08(a1, v231);
          if (v27)
          {
            goto LABEL_90;
          }

          if (v231[0])
          {
            sub_23EB6FF14(*(a1 + 72), &v229, "%ks", v28, a5, a6, a7, a8, "kSBSKey_Result_ConfigurationOptions");
            if (v27)
            {
              goto LABEL_90;
            }

            if (v229)
            {
              v27 = sub_23EB6FDFC(allocator, v231[0], "%##O", v153, a5, a6, a7, a8, v229);
              if (v27)
              {
                goto LABEL_90;
              }

              v154 = sub_23EBDAC94(a1, 3, v231[0], &v230, a5, a6, a7, a8);
              if (v154 == -6769)
              {
                v27 = sub_23EBD8E80(a1, 0, 0);
LABEL_90:
                v9 = v27;
                goto LABEL_182;
              }

              v9 = v154;
              if (!v154)
              {
                if (!v230)
                {
                  v9 = 4294960569;
                  goto LABEL_686;
                }

                v27 = sub_23EB6FDFC(allocator, v229, "%##O", v155, a5, a6, a7, a8, v230);
                goto LABEL_90;
              }
            }

            else
            {
              v9 = 4294960569;
            }
          }

          else
          {
            v9 = 4294960568;
          }
        }

        else
        {
          v9 = 4294960591;
        }

LABEL_182:
        if (v230)
        {
          CFRelease(v230);
        }

        if (v9)
        {
          goto LABEL_686;
        }

        v47 = sub_23EBDA4C0(a1);
        v23 = v47 == 3;
        if (dword_27E382BC8 <= 800)
        {
          v48 = v47;
          if (dword_27E382BC8 != -1 || sub_23EB74AC8(&dword_27E382BC8, 0x320u))
          {
            sub_23EB75374(&dword_27E382BC8, "void __SBSEngine_StepByStepSync(void *)", 800, "\n\n\t\t          \t\t---------- SBS state: %s ----------\n\n", v19, v20, v21, v22, "eSBSStep_Guest_Config");
            if (v48 == 3)
            {
              goto LABEL_688;
            }

            goto LABEL_675;
          }
        }

LABEL_674:
        if (!v23)
        {
LABEL_675:
          if (sub_23EBEA238(*(a1 + 88)))
          {
            v9 = 4294960573;
            goto LABEL_686;
          }

          continue;
        }

LABEL_688:
        v25 = sub_23EBEA18C(*(a1 + 88), v16, v17, v18, v19, v20, v21, v22);
LABEL_689:
        v9 = v25;
LABEL_686:
        sub_23EBEAB18(*(a1 + 88), 15, v9, *(a1 + 72), a5, a6, a7, a8);
        return;
      case 4u:
        if (dword_27E382BC8 <= 800 && (dword_27E382BC8 != -1 || sub_23EB74AC8(&dword_27E382BC8, 0x320u)))
        {
          sub_23EB75374(&dword_27E382BC8, "void __SBSEngine_StepByStepSync(void *)", 800, "\n\n\t\t          \t\t++++++++++ SBS state: %s ++++++++++\n\n", a5, a6, a7, a8, "eSBSStep_ExtendWiredOrWireless");
        }

        v229 = 0;
        if (!*(a1 + 48))
        {
          goto LABEL_685;
        }

        v230 = 0;
        v231[0] = 0;
        LODWORD(cf) = 0;
        if (!*a1)
        {
          v9 = 4294960591;
          goto LABEL_238;
        }

        sub_23EBDAC08(a1, v231);
        if (v31)
        {
          goto LABEL_108;
        }

        if (!v231[0])
        {
          v9 = 4294960568;
          goto LABEL_238;
        }

        if (!CFDictionaryContainsKey(v231[0], @"kSBSKey_SelectorChoice"))
        {
          v166 = v231[0];
          sub_23EB6B5A0(*a1, v92, v93, v94, a5, a6, a7, a8);
          v31 = sub_23EB6FDFC(allocator, v166, "%ks=%i", v167, v168, v169, v170, v171, "kSBSKey_SelectorChoice");
          if (v31)
          {
            goto LABEL_108;
          }
        }

        v230 = 0;
        v95 = sub_23EBDAC94(a1, 4, v231[0], &v230, a5, a6, a7, a8);
        if (v95 == -6769)
        {
          v99 = 0;
          v100 = 0;
          goto LABEL_461;
        }

        v9 = v95;
        if (v95)
        {
          goto LABEL_238;
        }

        if (!v230)
        {
          v9 = 4294960569;
          goto LABEL_238;
        }

        sub_23EB6FF14(v230, &cf, "%ks:int", v96, a5, a6, a7, a8, "kSBSKey_SelectorChoice");
        if (v31)
        {
          goto LABEL_108;
        }

        v31 = sub_23EB6FDFC(allocator, v231[0], "%ks=%i", v97, a5, a6, a7, a8, "kSBSKey_SelectorChoice");
        if (v31)
        {
          goto LABEL_108;
        }

        if (cf == 220)
        {
          v99 = 0;
          v100 = 5;
          goto LABEL_461;
        }

        if (cf != 210)
        {
          v9 = 4294960587;
          goto LABEL_238;
        }

        v228 = 0;
        v98 = sub_23EBDAEEC(a1, &v228);
        if (v98 == -6727)
        {
          goto LABEL_299;
        }

        v9 = v98;
        ValueAtIndex = 0;
        if (v98)
        {
          goto LABEL_238;
        }

        if (!v228)
        {
          goto LABEL_637;
        }

        if (sub_23EBB4248(*(a1 + 8), 1852787795))
        {
          v204 = 14;
        }

        else
        {
          v204 = 6;
        }

        v205 = sub_23EBDB10C(v228, v204, *a1, &ValueAtIndex);
        if (v205 == -6727)
        {
LABEL_299:
          v99 = 0;
          v100 = 8;
LABEL_461:
          v31 = sub_23EBD8E80(a1, v100, v99);
LABEL_108:
          v9 = v31;
          goto LABEL_238;
        }

        v9 = v205;
        if (!v205)
        {
          if (ValueAtIndex)
          {
            if (CFArrayGetCount(ValueAtIndex))
            {
              v9 = sub_23EB6F348(allocator, &v229, "{%ks=%O}", v206, a5, a6, a7, a8, "kSBSKey_NetworkScanRecordList");
              if (ValueAtIndex)
              {
                CFRelease(ValueAtIndex);
              }

              if (!v9)
              {
                v99 = v229;
                if (v229)
                {
                  v100 = 7;
                  goto LABEL_461;
                }

                v9 = 4294960569;
              }
            }

            else
            {
              v9 = 4294960591;
            }
          }

          else
          {
LABEL_637:
            v9 = 4294960568;
          }
        }

LABEL_238:
        if (v229)
        {
          CFRelease(v229);
        }

        if (v9)
        {
          goto LABEL_686;
        }

        if (dword_27E382BC8 > 800 || dword_27E382BC8 == -1 && !sub_23EB74AC8(&dword_27E382BC8, 0x320u))
        {
          goto LABEL_675;
        }

        v12 = "eSBSStep_ExtendWiredOrWireless";
        goto LABEL_565;
      case 5u:
        if (dword_27E382BC8 <= 800 && (dword_27E382BC8 != -1 || sub_23EB74AC8(&dword_27E382BC8, 0x320u)))
        {
          sub_23EB75374(&dword_27E382BC8, "void __SBSEngine_StepByStepSync(void *)", 800, "\n\n\t\t          \t\t++++++++++ SBS state: %s ++++++++++\n\n", a5, a6, a7, a8, "eSBSStep_ExtendWired_Connections");
        }

        v25 = sub_23EBDA850(a1);
        if (v25)
        {
          goto LABEL_689;
        }

        if (dword_27E382BC8 > 800 || dword_27E382BC8 == -1 && !sub_23EB74AC8(&dword_27E382BC8, 0x320u))
        {
          goto LABEL_675;
        }

        v12 = "eSBSStep_ExtendWired_Connections";
        goto LABEL_565;
      case 6u:
        if (dword_27E382BC8 <= 800 && (dword_27E382BC8 != -1 || sub_23EB74AC8(&dword_27E382BC8, 0x320u)))
        {
          sub_23EB75374(&dword_27E382BC8, "void __SBSEngine_StepByStepSync(void *)", 800, "\n\n\t\t          \t\t++++++++++ SBS state: %s ++++++++++\n\n", a5, a6, a7, a8, "eSBSStep_ExtendWired_Config");
        }

        v230 = 0;
        v231[0] = 0;
        ValueAtIndex = 0;
        v228 = 0;
        v229 = 0;
        if (!*(a1 + 48))
        {
          goto LABEL_685;
        }

        sub_23EBDAC08(a1, v231);
        if (v36)
        {
          goto LABEL_133;
        }

        if (!v231[0])
        {
          goto LABEL_370;
        }

        v57 = sub_23EBDAC94(a1, 6, v231[0], &v230, a5, a6, a7, a8);
        if (v57 == -6769)
        {
          v36 = sub_23EBD8E80(a1, 0, 0);
LABEL_133:
          v9 = v36;
          goto LABEL_134;
        }

        v9 = v57;
        if (!v57)
        {
          if (v230)
          {
            sub_23EB6FF14(v230, &ValueAtIndex, "%ks", v58, a5, a6, a7, a8, "kSBSKey_SourceBase");
            if (v36)
            {
              goto LABEL_133;
            }

            if (ValueAtIndex)
            {
              v36 = sub_23EBB4234(*(a1 + 8), &v228);
              if (v36)
              {
                goto LABEL_133;
              }

              if (!v228)
              {
                v9 = 4294960569;
                goto LABEL_136;
              }

              v36 = sub_23EB6F348(allocator, &v229, "{%ks=%i%ks=%O%ks=%O%ks=%O%ks=%O}", v59, a5, a6, a7, a8, "kSBSKey_Result_ConfigurationChoice");
              if (v36)
              {
                goto LABEL_133;
              }

              if (v229)
              {
                v9 = 0;
                *(a1 + 72) = v229;
                v229 = 0;
              }

              else
              {
                v9 = 4294960568;
              }
            }

            else
            {
LABEL_370:
              v9 = 4294960568;
            }
          }

          else
          {
            v9 = 4294960569;
          }
        }

LABEL_134:
        if (v228)
        {
          CFRelease(v228);
          v228 = 0;
        }

LABEL_136:
        if (v230)
        {
          CFRelease(v230);
          v230 = 0;
        }

        if (v229)
        {
          CFRelease(v229);
        }

        if (v9)
        {
          goto LABEL_686;
        }

        v37 = sub_23EBDA4C0(a1);
        v23 = v37 == 6;
        if (dword_27E382BC8 > 800)
        {
          goto LABEL_674;
        }

        v38 = v37;
        if (dword_27E382BC8 == -1 && !sub_23EB74AC8(&dword_27E382BC8, 0x320u))
        {
          goto LABEL_674;
        }

        sub_23EB75374(&dword_27E382BC8, "void __SBSEngine_StepByStepSync(void *)", 800, "\n\n\t\t          \t\t---------- SBS state: %s ----------\n\n", v19, v20, v21, v22, "eSBSStep_ExtendWired_Config");
        if (v38 == 6)
        {
          goto LABEL_688;
        }

        goto LABEL_675;
      case 7u:
        if (dword_27E382BC8 <= 800 && (dword_27E382BC8 != -1 || sub_23EB74AC8(&dword_27E382BC8, 0x320u)))
        {
          sub_23EB75374(&dword_27E382BC8, "void __SBSEngine_StepByStepSync(void *)", 800, "\n\n\t\t          \t\t++++++++++ SBS state: %s ++++++++++\n\n", a5, a6, a7, a8, "eSBSStep_ExtendNetworkChoice");
        }

        v229 = 0;
        v230 = 0;
        v228 = 0;
        cf = 0;
        ValueAtIndex = 0;
        v225 = 0;
        if (!*(a1 + 48))
        {
          goto LABEL_685;
        }

        if (!*a1)
        {
          v42 = 0;
          v9 = 4294960591;
          goto LABEL_523;
        }

        sub_23EBDAC08(a1, &v230);
        if (v41)
        {
          goto LABEL_163;
        }

        if (!v230)
        {
          goto LABEL_522;
        }

        if (!CFDictionaryContainsKey(v230, @"kSBSKey_SelectorChoice"))
        {
          v41 = sub_23EB6FDFC(allocator, v230, "%ks=%i", v101, v102, v103, v104, v105, "kSBSKey_SelectorChoice");
          if (v41)
          {
            goto LABEL_163;
          }
        }

        v106 = sub_23EBDAEEC(a1, &v225);
        if (v106 == -6727)
        {
          goto LABEL_494;
        }

        v9 = v106;
        if (v106)
        {
          goto LABEL_164;
        }

        if (!v225)
        {
          goto LABEL_522;
        }

        if (sub_23EBB4248(*(a1 + 8), 1112757313))
        {
          LODWORD(v231[0]) = 0;
          v41 = sub_23EBB3F7C(*(a1 + 8), 1937326416, v231);
          if (v41)
          {
            goto LABEL_163;
          }

          v108 = LODWORD(v231[0]) >= 0x77 && !sub_23EBB4248(*(a1 + 8), 1632923251);
        }

        else
        {
          v108 = 1;
        }

        if (sub_23EBB4248(*(a1 + 8), 1852787795))
        {
          v178 = 14;
        }

        else
        {
          v178 = 6;
        }

        if (sub_23EBDB10C(v225, (v178 | v108), *a1, &v228) != -6727)
        {
          v41 = sub_23EB6FDFC(allocator, v230, "%ks=%O", v107, a5, a6, a7, a8, "kSBSKey_NetworkScanRecordList");
          if (v41)
          {
LABEL_163:
            v9 = v41;
LABEL_164:
            v42 = 0;
            goto LABEL_523;
          }
        }

LABEL_494:
        sub_23EB6FF14(v230, &v228, "%ks", v107, a5, a6, a7, a8, "kSBSKey_NetworkScanRecordList");
        if (v41)
        {
          goto LABEL_163;
        }

        if (!v228)
        {
          goto LABEL_522;
        }

        if (CFDictionaryContainsKey(v230, @"kSBSKey_SourceNetwork"))
        {
          goto LABEL_504;
        }

        if (!v228)
        {
          goto LABEL_504;
        }

        v184 = sub_23EBEBA44(*(a1 + 88), &cf, 0, v179, v180, v181, v182, v183);
        if (v184 == -6727)
        {
          goto LABEL_504;
        }

        v9 = v184;
        if (v184)
        {
          goto LABEL_164;
        }

        if (!cf)
        {
          v42 = 0;
          v9 = 4294960568;
          goto LABEL_525;
        }

        v185 = sub_23EB6B6FC(cf, 0, v228);
        if (v185 == -1)
        {
          goto LABEL_504;
        }

        if (!CFArrayGetValueAtIndex(v228, v185))
        {
LABEL_522:
          v42 = 0;
          v9 = 4294960568;
          goto LABEL_523;
        }

        v41 = sub_23EB6FDFC(allocator, v230, "%ks=%O", v186, a5, a6, a7, a8, "kSBSKey_SourceNetwork");
        if (v41)
        {
          goto LABEL_163;
        }

LABEL_504:
        v42 = sub_23EBB426C(*(a1 + 8));
        if (v42)
        {
          v190 = sub_23EB6FDFC(allocator, v230, "%ks=%O", v189, a5, a6, a7, a8, "kSBSKey_TargetBaseFeatures");
          if (v190)
          {
            goto LABEL_575;
          }
        }

        if (*(a1 + 41))
        {
          goto LABEL_507;
        }

        if (!sub_23EB6B5A0(*a1, v187, v188, v189, a5, a6, a7, a8))
        {
          goto LABEL_507;
        }

        v231[0] = 0;
        if (!sub_23EBDB28C(a1, @"kSBSCacheKey_TargetRemoteBrowseRecords", v231))
        {
          if (v231[0])
          {
            goto LABEL_507;
          }
        }

        v231[0] = 0;
        v9 = sub_23EBEE8B0(*(a1 + 88), *a1, 0, 0, 0, 0, v231, a8);
        if (v9)
        {
          goto LABEL_523;
        }

        if (v231[0])
        {
          v9 = sub_23EBD8C7C(a1, v231[0]);
          if (v231[0])
          {
            CFRelease(v231[0]);
            v231[0] = 0;
          }

          if (v9)
          {
            goto LABEL_523;
          }
        }

        sub_23EBDB4B8(a1, &v225);
        v225 = 0;
        *(a1 + 41) = 1;
LABEL_507:
        v229 = 0;
        v191 = sub_23EBDAC94(a1, 7, v230, &v229, a5, a6, a7, a8);
        if (v191 == -6769)
        {
          v199 = 0;
          v198 = 0;
LABEL_574:
          v190 = sub_23EBD8E80(a1, v198, v199);
LABEL_575:
          v9 = v190;
          goto LABEL_523;
        }

        v9 = v191;
        if (v191 != -6723)
        {
          v231[0] = 0;
          LODWORD(theArray) = 0;
          if (!v191)
          {
            if (v229)
            {
              sub_23EB6FF14(v229, &theArray, "%ks:int", v192, a5, a6, a7, a8, "kSBSKey_SelectorChoice");
              if (v190)
              {
                goto LABEL_575;
              }

              v190 = sub_23EB6FDFC(allocator, v230, "%ks=%i", v193, a5, a6, a7, a8, "kSBSKey_SelectorChoice");
              if (v190)
              {
                goto LABEL_575;
              }

              sub_23EB6FF14(v229, v231, "%ks", v194, a5, a6, a7, a8, "kSBSKey_SourceNetwork");
              if (v190)
              {
                goto LABEL_575;
              }

              if (v231[0])
              {
                v190 = sub_23EB6FDFC(allocator, v230, "%ks=%O", v195, a5, a6, a7, a8, "kSBSKey_SourceNetwork");
                if (v190)
                {
                  goto LABEL_575;
                }

                v190 = sub_23EB6F348(allocator, &ValueAtIndex, "{%ks=%i%ks=%O}", v196, a5, a6, a7, a8, "kSBSKey_SelectorChoice");
                if (v190)
                {
                  goto LABEL_575;
                }

                if (ValueAtIndex)
                {
                  if (sub_23EC0FA70(v231[0], v197))
                  {
                    v198 = 8;
                  }

                  else
                  {
                    v198 = 9;
                  }

                  v199 = ValueAtIndex;
                  goto LABEL_574;
                }
              }
            }

            v9 = 4294960569;
          }
        }

LABEL_523:
        if (cf)
        {
          CFRelease(cf);
          cf = 0;
        }

LABEL_525:
        if (ValueAtIndex)
        {
          CFRelease(ValueAtIndex);
          ValueAtIndex = 0;
        }

        if (v42)
        {
          CFRelease(v42);
        }

        if (v9)
        {
          goto LABEL_686;
        }

        if (dword_27E382BC8 > 800 || dword_27E382BC8 == -1 && !sub_23EB74AC8(&dword_27E382BC8, 0x320u))
        {
          goto LABEL_675;
        }

        v12 = "eSBSStep_ExtendNetworkChoice";
        goto LABEL_565;
      case 8u:
        if (dword_27E382BC8 <= 800 && (dword_27E382BC8 != -1 || sub_23EB74AC8(&dword_27E382BC8, 0x320u)))
        {
          sub_23EB75374(&dword_27E382BC8, "void __SBSEngine_StepByStepSync(void *)", 800, "\n\n\t\t          \t\t++++++++++ SBS state: %s ++++++++++\n\n", a5, a6, a7, a8, "eSBSStep_ExtendWireless_Config");
        }

        v230 = 0;
        v231[0] = 0;
        cf = 0;
        ValueAtIndex = 0;
        theArray = 0;
        v225 = 0;
        v223 = 0;
        v228 = 0;
        v229 = 0;
        if (!*a1)
        {
          v9 = 4294960591;
          goto LABEL_666;
        }

        if (!*(a1 + 48))
        {
          goto LABEL_369;
        }

        sub_23EBDAC08(a1, v231);
        if (v32)
        {
          goto LABEL_116;
        }

        if (!v231[0])
        {
          goto LABEL_661;
        }

        sub_23EB6FF14(v231[0], &cf, "%ks", v33, a5, a6, a7, a8, "kSBSKey_SourceNetwork");
        if (v32)
        {
          goto LABEL_116;
        }

        if (!cf)
        {
          goto LABEL_661;
        }

        v134 = sub_23EC0F94C(cf, v133);
        if (!v134)
        {
          goto LABEL_369;
        }

        v136 = v134;
        if (sub_23EBEBC34(*(a1 + 88), v134, 0, v135, a5, a6, a7, a8))
        {
          v138 = 0;
        }

        else
        {
          v138 = 1;
          v177 = sub_23EBEE390(*(a1 + 88), cf, 0, 0, 1, a6, a7, a8);
          if (v177 == -6723)
          {
            goto LABEL_678;
          }

          v9 = v177;
          if (v177)
          {
            goto LABEL_662;
          }
        }

        sub_23EB6FF14(v231[0], &v223, "%ks:int", v137, a5, a6, a7, a8, "kSBSKey_SelectorChoice");
        if (v32)
        {
          goto LABEL_116;
        }

        v139 = sub_23EBDB638(a1, v138, &v225);
        if (v139 == -6727)
        {
LABEL_677:
          v32 = sub_23EBEDA58(*(a1 + 88), @"kAskUserWarning_Prompt", 0, 0, @"kAskUserWarning_NoBaseStationsFound_OnNetwork", v136, 0, 0, 0);
          if (!v32)
          {
LABEL_678:
            v32 = sub_23EBD8E80(a1, 0, 0);
          }

LABEL_116:
          v9 = v32;
          goto LABEL_662;
        }

        v9 = v139;
        if (!v139)
        {
          if (!v225)
          {
            goto LABEL_661;
          }

          v140 = sub_23EBDB8C4(a1, v225, *a1, 1, v223 == 211, 0, v136, &theArray);
          if (v140 == -6727)
          {
            goto LABEL_677;
          }

          v9 = v140;
          if (!v140)
          {
            if (!theArray)
            {
              goto LABEL_661;
            }

            Count = CFArrayGetCount(theArray);
            if (!Count)
            {
LABEL_369:
              v9 = 4294960591;
              goto LABEL_662;
            }

            v143 = Count;
            v9 = sub_23EB6FDFC(allocator, v231[0], "%ks=%O", v142, a5, a6, a7, a8, "kSBSKey_BrowseRecordList");
            CFRelease(theArray);
            if (v9)
            {
              goto LABEL_662;
            }

            if (v143 < 2)
            {
              if (v143 != 1)
              {
                goto LABEL_677;
              }

              ValueAtIndex = CFArrayGetValueAtIndex(theArray, 0);
              if (!ValueAtIndex)
              {
                goto LABEL_661;
              }

              v145 = v231[0];
              v146 = "kSBSKey_SourceBase";
            }

            else
            {
              v145 = v231[0];
              v146 = "kSBSKey_BrowseRecordList";
            }

            v32 = sub_23EB6FDFC(allocator, v145, "%ks=%O", v144, a5, a6, a7, a8, v146);
            if (v32)
            {
              goto LABEL_116;
            }

            v211 = sub_23EBDAC94(a1, 8, v231[0], &v230, a5, a6, a7, a8);
            if (v211 == -6769)
            {
              goto LABEL_678;
            }

            v9 = v211;
            if (!v211)
            {
              if (v230)
              {
                sub_23EB6FF14(v230, &ValueAtIndex, "%ks", v212, a5, a6, a7, a8, "kSBSKey_SourceBase");
                if (v32)
                {
                  goto LABEL_116;
                }

                if (ValueAtIndex)
                {
                  v32 = sub_23EBB4234(*(a1 + 8), &v229);
                  if (v32)
                  {
                    goto LABEL_116;
                  }

                  if (!v229)
                  {
                    v9 = 4294960569;
                    goto LABEL_664;
                  }

                  v32 = sub_23EB6FDFC(allocator, v230, "%ks=%i", v213, a5, a6, a7, a8, "kSBSKey_SelectorChoice");
                  if (v32)
                  {
                    goto LABEL_116;
                  }

                  sub_23EBDBD64(a1, ValueAtIndex);
                  v32 = sub_23EB6F348(allocator, &v228, "{%ks=%i%ks=%O%ks=%O%ks=%O%ks=%O}", v214, v215, v216, v217, v218, "kSBSKey_Result_ConfigurationChoice");
                  if (v32)
                  {
                    goto LABEL_116;
                  }

                  if (v228)
                  {
                    v9 = 0;
                    *(a1 + 72) = v228;
                    v228 = 0;
                    goto LABEL_662;
                  }
                }

LABEL_661:
                v9 = 4294960568;
                goto LABEL_662;
              }

              v9 = 4294960569;
            }
          }
        }

LABEL_662:
        if (v229)
        {
          CFRelease(v229);
          v229 = 0;
        }

LABEL_664:
        if (v230)
        {
          CFRelease(v230);
          v230 = 0;
        }

LABEL_666:
        if (v228)
        {
          CFRelease(v228);
        }

        if (v9)
        {
          goto LABEL_686;
        }

        v219 = sub_23EBDA4C0(a1);
        v23 = v219 == 8;
        if (dword_27E382BC8 > 800)
        {
          goto LABEL_674;
        }

        v220 = v219;
        if (dword_27E382BC8 == -1 && !sub_23EB74AC8(&dword_27E382BC8, 0x320u))
        {
          goto LABEL_674;
        }

        sub_23EB75374(&dword_27E382BC8, "void __SBSEngine_StepByStepSync(void *)", 800, "\n\n\t\t          \t\t---------- SBS state: %s ----------\n\n", v19, v20, v21, v22, "eSBSStep_ExtendWireless_Config");
        if (v220 == 8)
        {
          goto LABEL_688;
        }

        goto LABEL_675;
      case 9u:
        if (dword_27E382BC8 <= 800 && (dword_27E382BC8 != -1 || sub_23EB74AC8(&dword_27E382BC8, 0x320u)))
        {
          sub_23EB75374(&dword_27E382BC8, "void __SBSEngine_StepByStepSync(void *)", 800, "\n\n\t\t          \t\t++++++++++ SBS state: %s ++++++++++\n\n", a5, a6, a7, a8, "eSBSStep_Join_Config");
        }

        v228 = 0;
        v229 = 0;
        v230 = 0;
        if (!*a1)
        {
          goto LABEL_685;
        }

        v231[0] = 0;
        cf = 0;
        ValueAtIndex = 0;
        if (!*(a1 + 48))
        {
          v9 = 4294960591;
          goto LABEL_384;
        }

        sub_23EBDAC08(a1, v231);
        if (v45)
        {
          goto LABEL_180;
        }

        if (!v231[0])
        {
          goto LABEL_383;
        }

        sub_23EB6FF14(v231[0], &ValueAtIndex, "%ks", v46, a5, a6, a7, a8, "kSBSKey_SourceNetwork");
        if (v45)
        {
          goto LABEL_180;
        }

        if (!ValueAtIndex)
        {
          goto LABEL_383;
        }

        v127 = sub_23EBECA80(*(a1 + 88), @"keychainNetworkType", ValueAtIndex, &cf, a5, a6, a7, a8);
        if (v127 == -6727)
        {
          goto LABEL_345;
        }

        v9 = v127;
        if (v127)
        {
          goto LABEL_384;
        }

        if (cf)
        {
          v9 = sub_23EB6FDFC(allocator, v231[0], "%ks=%O", v128, a5, a6, a7, a8, "kSBSKey_NetworkPassword");
          if (cf)
          {
            CFRelease(cf);
            cf = 0;
          }

          if (!v9)
          {
LABEL_345:
            v129 = sub_23EBDAC94(a1, 9, v231[0], &v230, a5, a6, a7, a8);
            if (v129 == -6769)
            {
              v45 = sub_23EBD8E80(a1, 0, 0);
LABEL_180:
              v9 = v45;
              goto LABEL_384;
            }

            v9 = v129;
            if (!v129)
            {
              if (v230)
              {
                sub_23EB6FF14(v230, &ValueAtIndex, "%ks", v130, a5, a6, a7, a8, "kSBSKey_SourceNetwork");
                if (v45)
                {
                  goto LABEL_180;
                }

                if (!ValueAtIndex)
                {
                  goto LABEL_622;
                }

                v131 = sub_23EBB4234(*(a1 + 8), &v229);
                if (v131)
                {
                  goto LABEL_351;
                }

                if (!v229)
                {
                  v9 = 4294960569;
                  goto LABEL_386;
                }

                v131 = sub_23EB6F348(allocator, &v228, "{%ks=%i%ks=%O%ks=%O%ks=%O%ks=%O}", v132, a5, a6, a7, a8, "kSBSKey_Result_ConfigurationChoice");
                if (v131)
                {
LABEL_351:
                  v9 = v131;
                  goto LABEL_384;
                }

                if (v228)
                {
                  v9 = 0;
                  *(a1 + 72) = v228;
                  v228 = 0;
                }

                else
                {
LABEL_622:
                  v9 = 4294960568;
                }
              }

              else
              {
                v9 = 4294960569;
              }
            }
          }
        }

        else
        {
LABEL_383:
          v9 = 4294960568;
        }

LABEL_384:
        if (v229)
        {
          CFRelease(v229);
          v229 = 0;
        }

LABEL_386:
        if (v230)
        {
          CFRelease(v230);
          v230 = 0;
        }

        if (v228)
        {
          CFRelease(v228);
        }

        if (v9)
        {
          goto LABEL_686;
        }

        v151 = sub_23EBDA4C0(a1);
        v23 = v151 == 9;
        if (dword_27E382BC8 > 800)
        {
          goto LABEL_674;
        }

        v152 = v151;
        if (dword_27E382BC8 == -1 && !sub_23EB74AC8(&dword_27E382BC8, 0x320u))
        {
          goto LABEL_674;
        }

        sub_23EB75374(&dword_27E382BC8, "void __SBSEngine_StepByStepSync(void *)", 800, "\n\n\t\t          \t\t---------- SBS state: %s ----------\n\n", v19, v20, v21, v22, "eSBSStep_Join_Config");
        if (v152 == 9)
        {
          goto LABEL_688;
        }

        goto LABEL_675;
      case 0xAu:
        if (dword_27E382BC8 <= 800 && (dword_27E382BC8 != -1 || sub_23EB74AC8(&dword_27E382BC8, 0x320u)))
        {
          sub_23EB75374(&dword_27E382BC8, "void __SBSEngine_StepByStepSync(void *)", 800, "\n\n\t\t          \t\t++++++++++ SBS state: %s ++++++++++\n\n", a5, a6, a7, a8, "eSBSStep_ReplaceChoice");
        }

        v229 = 0;
        if (!*(a1 + 48))
        {
          goto LABEL_685;
        }

        v230 = 0;
        v231[0] = 0;
        LODWORD(cf) = 0;
        if (!*a1)
        {
          v9 = 4294960591;
          goto LABEL_230;
        }

        sub_23EBDAC08(a1, v231);
        if (v26)
        {
          goto LABEL_80;
        }

        if (!v231[0])
        {
          v9 = 4294960568;
          goto LABEL_230;
        }

        v230 = 0;
        v86 = sub_23EBDAC94(a1, 10, v231[0], &v230, a5, a6, a7, a8);
        if (v86 == -6769)
        {
          v90 = 0;
          v91 = 0;
        }

        else
        {
          v9 = v86;
          if (v86)
          {
            goto LABEL_230;
          }

          if (!v230)
          {
            v9 = 4294960569;
            goto LABEL_230;
          }

          sub_23EB6FF14(v230, &cf, "%ks:int", v87, a5, a6, a7, a8, "kSBSKey_SelectorChoice");
          if (v26)
          {
            goto LABEL_80;
          }

          v26 = sub_23EB6FDFC(allocator, v231[0], "%ks=%i", v88, a5, a6, a7, a8, "kSBSKey_SelectorChoice");
          if (v26)
          {
            goto LABEL_80;
          }

          if (cf == 330)
          {
            v90 = 0;
            v91 = 13;
            goto LABEL_447;
          }

          if (cf == 320)
          {
            v90 = 0;
            v91 = 12;
            goto LABEL_447;
          }

          if (cf != 310)
          {
            v9 = 4294960587;
            goto LABEL_230;
          }

          v228 = 0;
          v89 = sub_23EBDAEEC(a1, &v228);
          if (v89 == -6727)
          {
            goto LABEL_288;
          }

          v9 = v89;
          ValueAtIndex = 0;
          if (v89)
          {
LABEL_230:
            if (v229)
            {
              CFRelease(v229);
            }

            if (v9)
            {
              goto LABEL_686;
            }

            if (dword_27E382BC8 <= 800 && (dword_27E382BC8 != -1 || sub_23EB74AC8(&dword_27E382BC8, 0x320u)))
            {
              v12 = "eSBSStep_ReplaceChoice";
LABEL_565:
              sub_23EB75374(&dword_27E382BC8, "void __SBSEngine_StepByStepSync(void *)", 800, "\n\n\t\t          \t\t---------- SBS state: %s ----------\n\n", a5, a6, a7, a8, v12);
            }

            goto LABEL_675;
          }

          if (!v228)
          {
LABEL_639:
            v9 = 4294960568;
            goto LABEL_230;
          }

          v207 = sub_23EBDB10C(v228, 2, *a1, &ValueAtIndex);
          if (v207 != -6727)
          {
            v9 = v207;
            if (v207)
            {
              goto LABEL_230;
            }

            if (ValueAtIndex)
            {
              if (CFArrayGetCount(ValueAtIndex))
              {
                v9 = sub_23EB6F348(allocator, &v229, "{%ks=%O}", v208, a5, a6, a7, a8, "kSBSKey_NetworkScanRecordList");
                if (ValueAtIndex)
                {
                  CFRelease(ValueAtIndex);
                }

                if (!v9)
                {
                  v90 = v229;
                  if (v229)
                  {
                    v91 = 11;
                    goto LABEL_447;
                  }

                  v9 = 4294960569;
                }
              }

              else
              {
                v9 = 4294960591;
              }

              goto LABEL_230;
            }

            goto LABEL_639;
          }

LABEL_288:
          v90 = 0;
          v91 = 15;
        }

LABEL_447:
        v26 = sub_23EBD8E80(a1, v91, v90);
LABEL_80:
        v9 = v26;
        goto LABEL_230;
      case 0xBu:
        if (dword_27E382BC8 <= 800 && (dword_27E382BC8 != -1 || sub_23EB74AC8(&dword_27E382BC8, 0x320u)))
        {
          sub_23EB75374(&dword_27E382BC8, "void __SBSEngine_StepByStepSync(void *)", 800, "\n\n\t\t          \t\t++++++++++ SBS state: %s ++++++++++\n\n", a5, a6, a7, a8, "eSBSStep_ReplaceNetworkChoice");
        }

        v230 = 0;
        v231[0] = 0;
        v228 = 0;
        v229 = 0;
        cf = 0;
        ValueAtIndex = 0;
        theArray = 0;
        v225 = 0;
        if (!*(a1 + 48))
        {
          goto LABEL_685;
        }

        if (!*a1)
        {
          goto LABEL_551;
        }

        sub_23EBDAC08(a1, v231);
        if (v43)
        {
          goto LABEL_172;
        }

        if (!v231[0])
        {
          goto LABEL_552;
        }

        sub_23EB6FF14(v231[0], &v228, "%ks", v44, a5, a6, a7, a8, "kSBSKey_NetworkScanRecordList");
        if (v43)
        {
          goto LABEL_172;
        }

        if (!v228)
        {
          goto LABEL_552;
        }

        if (CFDictionaryContainsKey(v231[0], @"kSBSKey_SourceNetwork"))
        {
          goto LABEL_320;
        }

        if (!v228)
        {
          goto LABEL_320;
        }

        v110 = sub_23EBEBA44(*(a1 + 88), &ValueAtIndex, 0, v109, a5, a6, a7, a8);
        if (v110 == -6727)
        {
          goto LABEL_320;
        }

        v9 = v110;
        if (v110)
        {
          goto LABEL_553;
        }

        if (!ValueAtIndex)
        {
          goto LABEL_552;
        }

        v111 = sub_23EB6B6FC(ValueAtIndex, 0, v228);
        if (v111 == -1)
        {
          goto LABEL_320;
        }

        if (!CFArrayGetValueAtIndex(v228, v111))
        {
          goto LABEL_552;
        }

        v43 = sub_23EB6FDFC(allocator, v231[0], "%ks=%O", v112, a5, a6, a7, a8, "kSBSKey_SourceNetwork");
        if (v43)
        {
          goto LABEL_172;
        }

        do
        {
LABEL_320:
          v230 = 0;
          v113 = sub_23EBDAC94(a1, 11, v231[0], &v230, a5, a6, a7, a8);
          if (v113)
          {
            v9 = v113;
            if (v113 == -6769)
            {
              v175 = 0;
              v176 = 0;
              goto LABEL_479;
            }

            goto LABEL_553;
          }

          if (!v230)
          {
            goto LABEL_480;
          }

          sub_23EB6FF14(v230, &theArray, "%ks", v114, a5, a6, a7, a8, "kSBSKey_SourceNetwork");
          if (v43)
          {
            goto LABEL_172;
          }

          if (!theArray)
          {
LABEL_480:
            v9 = 4294960569;
            goto LABEL_553;
          }

          v43 = sub_23EB6FDFC(allocator, v231[0], "%ks=%O", v115, a5, a6, a7, a8, "kSBSKey_SourceNetwork");
          if (v43)
          {
            goto LABEL_172;
          }

          v117 = sub_23EC0F94C(theArray, v116);
          if (!v117)
          {
            goto LABEL_551;
          }

          v119 = v117;
          if (sub_23EBEBC34(*(a1 + 88), v117, 0, v118, a5, a6, a7, a8))
          {
            v123 = 0;
            goto LABEL_330;
          }

          v123 = 1;
          v124 = sub_23EBEE390(*(a1 + 88), theArray, 0, 0, 1, v120, v121, v122);
        }

        while (v124 == -6723);
        v9 = v124;
        if (v124)
        {
          goto LABEL_553;
        }

LABEL_330:
        v125 = sub_23EBDB638(a1, v123, &cf);
        if (v125 == -6727)
        {
LABEL_334:
          v9 = sub_23EBEDA58(*(a1 + 88), @"kAskUserWarning_Prompt", 0, 0, @"kAskUserWarning_NoBaseStationsFound_OnNetwork", v119, 0, 0, 0);
          if (v9)
          {
            goto LABEL_553;
          }

          goto LABEL_320;
        }

        v9 = v125;
        if (v125)
        {
          goto LABEL_553;
        }

        if (!cf)
        {
          goto LABEL_552;
        }

        v126 = sub_23EBDB8C4(a1, cf, *a1, 0, 0, 1, v119, &v225);
        if (v126 == -6727)
        {
          goto LABEL_334;
        }

        v9 = v126;
        if (v126)
        {
          goto LABEL_553;
        }

        if (!v225)
        {
LABEL_552:
          v9 = 4294960568;
          goto LABEL_553;
        }

        if (!CFArrayGetCount(v225))
        {
LABEL_551:
          v9 = 4294960591;
          goto LABEL_553;
        }

        v201 = v225;
        v9 = 4294960569;
        if (theArray && v225)
        {
          v43 = sub_23EB6F348(allocator, &v229, "{%ks=%O%ks=%O}", v200, a5, a6, a7, a8, "kSBSKey_SourceNetwork");
          if (v43)
          {
            goto LABEL_172;
          }

          v175 = v229;
          if (v229)
          {
            v176 = 15;
LABEL_479:
            v43 = sub_23EBD8E80(a1, v176, v175);
LABEL_172:
            v9 = v43;
          }

LABEL_553:
          v201 = v225;
        }

        if (v201)
        {
          CFRelease(v201);
          v225 = 0;
        }

        if (ValueAtIndex)
        {
          CFRelease(ValueAtIndex);
          ValueAtIndex = 0;
        }

        if (v229)
        {
          CFRelease(v229);
        }

        if (v9)
        {
          goto LABEL_686;
        }

        if (dword_27E382BC8 > 800 || dword_27E382BC8 == -1 && !sub_23EB74AC8(&dword_27E382BC8, 0x320u))
        {
          goto LABEL_675;
        }

        v12 = "eSBSStep_ReplaceNetworkChoice";
        goto LABEL_565;
      case 0xCu:
        if (dword_27E382BC8 <= 800 && (dword_27E382BC8 != -1 || sub_23EB74AC8(&dword_27E382BC8, 0x320u)))
        {
          sub_23EB75374(&dword_27E382BC8, "void __SBSEngine_StepByStepSync(void *)", 800, "\n\n\t\t          \t\t++++++++++ SBS state: %s ++++++++++\n\n", a5, a6, a7, a8, "eSBSStep_ReplaceConfiguration_Config");
        }

        v230 = 0;
        v231[0] = 0;
        v228 = 0;
        v229 = 0;
        cf = 0;
        ValueAtIndex = 0;
        if (!*(a1 + 48))
        {
          goto LABEL_685;
        }

        sub_23EBDAC08(a1, v231);
        if (v14)
        {
          goto LABEL_42;
        }

        if (!v231[0])
        {
          goto LABEL_421;
        }

        if (CFDictionaryContainsKey(v231[0], @"kSBSKey_PreviousConfigurationList"))
        {
          goto LABEL_219;
        }

        v14 = sub_23EB6F348(allocator, &v228, "[%C%C%C%C%C%C%C%C%C]", v53, a5, a6, a7, a8, 1717920116);
        if (v14)
        {
          goto LABEL_42;
        }

        if (!v228)
        {
          goto LABEL_421;
        }

        v9 = sub_23EBEB874(*(a1 + 88), 0, v228, &ValueAtIndex, a5, a6, a7, a8);
        if (v228)
        {
          CFRelease(v228);
          v228 = 0;
        }

        if (v9 == -6727)
        {
          goto LABEL_219;
        }

        v225 = 0;
        if (v9)
        {
          goto LABEL_43;
        }

        if (!ValueAtIndex)
        {
LABEL_421:
          v9 = 4294960568;
          goto LABEL_43;
        }

        v9 = sub_23EBDBDF8(ValueAtIndex, *a1, &v225);
        if (ValueAtIndex)
        {
          CFRelease(ValueAtIndex);
          ValueAtIndex = 0;
        }

        if (v9 == -6727)
        {
          goto LABEL_219;
        }

        if (v9)
        {
          goto LABEL_43;
        }

        if (!v225)
        {
          goto LABEL_581;
        }

        if (CFArrayGetCount(v225))
        {
          v9 = sub_23EB6FDFC(allocator, v231[0], "%ks=%O", v156, a5, a6, a7, a8, "kSBSKey_PreviousConfigurationList");
          if (v225)
          {
            CFRelease(v225);
          }

          if (!v9)
          {
LABEL_219:
            v54 = sub_23EBDAC94(a1, 12, v231[0], &v230, a5, a6, a7, a8);
            if (v54 == -6769)
            {
              v14 = sub_23EBD8E80(a1, 0, 0);
LABEL_42:
              v9 = v14;
              goto LABEL_43;
            }

            v9 = v54;
            if (v54 != -6723)
            {
              v225 = 0;
              if (!v54)
              {
                if (!v230)
                {
                  goto LABEL_473;
                }

                v14 = sub_23EBB4234(*(a1 + 8), &cf);
                if (v14)
                {
                  goto LABEL_42;
                }

                if (cf)
                {
                  sub_23EB6FF14(v230, &v225, "%ks", v55, a5, a6, a7, a8, "kSBSKey_SourceConfiguration");
                  if (v14)
                  {
                    goto LABEL_42;
                  }

                  if (v225)
                  {
                    v9 = sub_23EB6F348(allocator, &v229, "{%ks=%i%ks=%O%ks=%O%ks=%O%ks=%O}", v56, a5, a6, a7, a8, "kSBSKey_Result_ConfigurationChoice");
                    if (!v9)
                    {
                      *(a1 + 72) = v229;
                      v229 = 0;
                    }
                  }

                  else
                  {
LABEL_581:
                    v9 = 4294960568;
                  }
                }

                else
                {
LABEL_473:
                  v9 = 4294960569;
                }
              }
            }
          }
        }

        else
        {
          v9 = 4294960591;
        }

LABEL_43:
        if (cf)
        {
          CFRelease(cf);
          cf = 0;
        }

        if (v230)
        {
          CFRelease(v230);
          v230 = 0;
        }

        if (v229)
        {
          CFRelease(v229);
        }

        if (v9)
        {
          goto LABEL_686;
        }

        v15 = sub_23EBDA4C0(a1);
        v23 = v15 == 12;
        if (dword_27E382BC8 > 800)
        {
          goto LABEL_674;
        }

        v24 = v15;
        if (dword_27E382BC8 == -1 && !sub_23EB74AC8(&dword_27E382BC8, 0x320u))
        {
          goto LABEL_674;
        }

        sub_23EB75374(&dword_27E382BC8, "void __SBSEngine_StepByStepSync(void *)", 800, "\n\n\t\t          \t\t---------- SBS state: %s ----------\n\n", v19, v20, v21, v22, "eSBSStep_ReplaceConfiguration_Config");
        if (v24 == 12)
        {
          goto LABEL_688;
        }

        goto LABEL_675;
      case 0xDu:
        if (dword_27E382BC8 <= 800 && (dword_27E382BC8 != -1 || sub_23EB74AC8(&dword_27E382BC8, 0x320u)))
        {
          sub_23EB75374(&dword_27E382BC8, "void __SBSEngine_StepByStepSync(void *)", 800, "\n\n\t\t          \t\t++++++++++ SBS state: %s ++++++++++\n\n", a5, a6, a7, a8, "eSBSStep_ReplaceOther_Connections");
        }

        v25 = sub_23EBDA850(a1);
        if (v25)
        {
          goto LABEL_689;
        }

        if (dword_27E382BC8 > 800 || dword_27E382BC8 == -1 && !sub_23EB74AC8(&dword_27E382BC8, 0x320u))
        {
          goto LABEL_675;
        }

        v12 = "eSBSStep_ReplaceOther_Connections";
        goto LABEL_565;
      case 0xEu:
        if (dword_27E382BC8 <= 800 && (dword_27E382BC8 != -1 || sub_23EB74AC8(&dword_27E382BC8, 0x320u)))
        {
          sub_23EB75374(&dword_27E382BC8, "void __SBSEngine_StepByStepSync(void *)", 800, "\n\n\t\t          \t\t++++++++++ SBS state: %s ++++++++++\n\n", a5, a6, a7, a8, "eSBSStep_ReplaceOther_Config");
        }

        v25 = sub_23EBDA528(a1);
        if (v25)
        {
          goto LABEL_689;
        }

        v39 = sub_23EBDA4C0(a1);
        LOBYTE(v23) = v39 == 14;
        if (dword_27E382BC8 > 800)
        {
          goto LABEL_674;
        }

        v40 = v39;
        if (dword_27E382BC8 == -1 && !sub_23EB74AC8(&dword_27E382BC8, 0x320u))
        {
          goto LABEL_674;
        }

        sub_23EB75374(&dword_27E382BC8, "void __SBSEngine_StepByStepSync(void *)", 800, "\n\n\t\t          \t\t---------- SBS state: %s ----------\n\n", v19, v20, v21, v22, "eSBSStep_ReplaceOther_Config");
        if (v40 == 14)
        {
          goto LABEL_688;
        }

        goto LABEL_675;
      case 0xFu:
        if (dword_27E382BC8 <= 800 && (dword_27E382BC8 != -1 || sub_23EB74AC8(&dword_27E382BC8, 0x320u)))
        {
          sub_23EB75374(&dword_27E382BC8, "void __SBSEngine_StepByStepSync(void *)", 800, "\n\n\t\t          \t\t++++++++++ SBS state: %s ++++++++++\n\n", a5, a6, a7, a8, "eSBSStep_ReplaceBaseStation_Config");
        }

        v230 = 0;
        v231[0] = 0;
        cf = 0;
        ValueAtIndex = 0;
        v228 = 0;
        v229 = 0;
        v225 = 0;
        if (!*(a1 + 48))
        {
          v9 = 4294960591;
          goto LABEL_204;
        }

        sub_23EBDAC08(a1, v231);
        if (v13)
        {
          goto LABEL_31;
        }

        if (!v231[0])
        {
          goto LABEL_459;
        }

        if (!CFDictionaryContainsKey(v231[0], @"kSBSKey_SelectorChoice"))
        {
          v13 = sub_23EB6FDFC(allocator, v231[0], "%ks=%i", v60, v61, v62, v63, v64, "kSBSKey_SelectorChoice");
          if (v13)
          {
            goto LABEL_31;
          }
        }

        if (CFDictionaryContainsKey(v231[0], @"kSBSKey_BrowseRecordList"))
        {
          goto LABEL_266;
        }

        theArray = 0;
        v172 = sub_23EBDB638(a1, 0, &theArray);
        if (v172 == -6727)
        {
          goto LABEL_469;
        }

        v9 = v172;
        if (v172)
        {
          goto LABEL_32;
        }

        if (!theArray)
        {
          goto LABEL_459;
        }

        v173 = sub_23EBDB8C4(a1, theArray, *a1, 0, 0, 1, 0, &v225);
        if (v173 == -6727)
        {
LABEL_469:
          v9 = sub_23EBEDA58(*(a1 + 88), @"kAskUserWarning_Prompt", 0, 0, @"kAskUserWarning_NoBaseStationsFound_OnEthernet", 0, 0, 0, 0);
          if (!v9)
          {
LABEL_470:
            v13 = sub_23EBD8E80(a1, 0, 0);
LABEL_31:
            v9 = v13;
          }
        }

        else
        {
          v9 = v173;
          if (v173)
          {
            goto LABEL_32;
          }

          if (!v225)
          {
LABEL_459:
            v9 = 4294960568;
            goto LABEL_32;
          }

          if (!CFArrayGetCount(v225))
          {
            v9 = 4294960591;
            goto LABEL_32;
          }

          v9 = sub_23EB6FDFC(allocator, v231[0], "%ks=%O", v174, a5, a6, a7, a8, "kSBSKey_BrowseRecordList");
          if (v225)
          {
            CFRelease(v225);
            v225 = 0;
          }

          if (!v9)
          {
LABEL_266:
            v65 = sub_23EBDAC94(a1, 15, v231[0], &v230, a5, a6, a7, a8);
            if (v65 == -6769)
            {
              goto LABEL_470;
            }

            v9 = v65;
            if (!v65)
            {
              if (!v230)
              {
                v9 = 4294960569;
                goto LABEL_32;
              }

              sub_23EB6FF14(v230, &ValueAtIndex, "%ks", v66, a5, a6, a7, a8, "kSBSKey_SourceBase");
              if (v13)
              {
                goto LABEL_31;
              }

              if (!ValueAtIndex)
              {
                goto LABEL_459;
              }

              v70 = sub_23EB6A2C0(ValueAtIndex, v67, v68, v69, a5, a6, a7, a8);
              v78 = sub_23EB6C1A0(ValueAtIndex, v71, v72, v73, v74, v75, v76, v77);
              if (v70 == 3 || v70 == 102 || !v78)
              {
                v13 = sub_23EB6F348(allocator, &v229, "{%ks=%O%ks=%i}", v79, v80, v81, v82, v83, "kSBSKey_SourceBase");
                if (v13)
                {
                  goto LABEL_31;
                }

                if (v229)
                {
                  v84 = sub_23EBD8E80(a1, 2, v229);
LABEL_615:
                  v9 = v84;
                  goto LABEL_32;
                }

                v9 = 4294960569;
              }

              else
              {
                v84 = sub_23EBB4234(*(a1 + 8), &cf);
                if (v84)
                {
                  goto LABEL_615;
                }

                if (!cf)
                {
                  v9 = 4294960569;
                  goto LABEL_34;
                }

                v9 = sub_23EB6F348(allocator, &v228, "{%ks=%i%ks=%O%ks=%O%ks=%O%ks=%O}", v85, a5, a6, a7, a8, "kSBSKey_Result_ConfigurationChoice");
                if (!v9)
                {
                  *(a1 + 72) = v228;
                  v228 = 0;
                }
              }
            }
          }
        }

LABEL_32:
        if (cf)
        {
          CFRelease(cf);
          cf = 0;
        }

LABEL_34:
        if (v230)
        {
          CFRelease(v230);
          v230 = 0;
        }

LABEL_204:
        if (v228)
        {
          CFRelease(v228);
          v228 = 0;
        }

        if (v229)
        {
          CFRelease(v229);
          v229 = 0;
        }

        if (v225)
        {
          CFRelease(v225);
        }

        if (v9)
        {
          goto LABEL_686;
        }

        v51 = sub_23EBDA4C0(a1);
        v23 = v51 == 15;
        if (dword_27E382BC8 > 800)
        {
          goto LABEL_674;
        }

        v52 = v51;
        if (dword_27E382BC8 == -1 && !sub_23EB74AC8(&dword_27E382BC8, 0x320u))
        {
          goto LABEL_674;
        }

        sub_23EB75374(&dword_27E382BC8, "void __SBSEngine_StepByStepSync(void *)", 800, "\n\n\t\t          \t\t---------- SBS state: %s ----------\n\n", v19, v20, v21, v22, "eSBSStep_ReplaceBaseStation_Config");
        if (v52 == 15)
        {
          goto LABEL_688;
        }

        goto LABEL_675;
      case 0x10u:
        if (dword_27E382BC8 <= 800 && (dword_27E382BC8 != -1 || sub_23EB74AC8(&dword_27E382BC8, 0x320u)))
        {
          sub_23EB75374(&dword_27E382BC8, "void __SBSEngine_StepByStepSync(void *)", 800, "\n\n\t\t          \t\t++++++++++ SBS state: %s ++++++++++\n\n", a5, a6, a7, a8, "eSBSStep_Restore_Config");
        }

        v230 = 0;
        v231[0] = 0;
        v228 = 0;
        v229 = 0;
        if (!*(a1 + 48))
        {
          goto LABEL_685;
        }

        if (!*a1 || !*(a1 + 8))
        {
          Mutable = 0;
          v9 = 4294960591;
          goto LABEL_191;
        }

        sub_23EBDAC08(a1, v231);
        if (v29)
        {
          goto LABEL_99;
        }

        if (!v231[0])
        {
          Mutable = 0;
          v9 = 4294960568;
          goto LABEL_191;
        }

        v147 = sub_23EBDAC94(a1, 16, v231[0], &v230, a5, a6, a7, a8);
        if (v147 == -6769)
        {
          v29 = sub_23EBD8E80(a1, 0, 0);
LABEL_99:
          v9 = v29;
LABEL_100:
          Mutable = 0;
          goto LABEL_191;
        }

        v9 = v147;
        if (v147 == -6723)
        {
          goto LABEL_100;
        }

        ValueAtIndex = 0;
        if (v147)
        {
          goto LABEL_100;
        }

        if (!v230)
        {
          goto LABEL_481;
        }

        v29 = sub_23EBB4234(*(a1 + 8), &v229);
        if (v29)
        {
          goto LABEL_99;
        }

        if (!v229)
        {
LABEL_481:
          Mutable = 0;
          v9 = 4294960569;
          goto LABEL_482;
        }

        Mutable = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        if (!Mutable)
        {
          goto LABEL_645;
        }

        v149 = sub_23EB6FDFC(allocator, Mutable, "%ks=%i%ks=%O%ks=%O%ks=%O", v148, a5, a6, a7, a8, "kSBSKey_Result_ConfigurationChoice");
        if (v149 || (sub_23EB6FF14(*a1, &ValueAtIndex, "%ks.%ks", v150, a5, a6, a7, a8, "txt"), v149))
        {
          v9 = v149;
          goto LABEL_191;
        }

        if (!ValueAtIndex)
        {
          goto LABEL_645;
        }

        if (sub_23EBEB874(*(a1 + 88), ValueAtIndex, 0, &v228, a5, a6, a7, a8) == -6727)
        {
          goto LABEL_634;
        }

        if (CFArrayGetValueAtIndex(v228, 0))
        {
          v210 = sub_23EB6FDFC(allocator, Mutable, "%ks=%O", v209, a5, a6, a7, a8, "kSBSKey_Result_ConfigChangeLogDict");
          if (v210)
          {
            v9 = v210;
          }

          else
          {
LABEL_634:
            v9 = 0;
            *(a1 + 72) = Mutable;
            Mutable = 0;
          }
        }

        else
        {
LABEL_645:
          v9 = 4294960568;
        }

LABEL_482:
        if (v228)
        {
          CFRelease(v228);
          v228 = 0;
        }

LABEL_191:
        if (v229)
        {
          CFRelease(v229);
          v229 = 0;
        }

        if (v230)
        {
          CFRelease(v230);
          v230 = 0;
        }

        if (Mutable)
        {
          CFRelease(Mutable);
        }

        if (v9)
        {
          goto LABEL_686;
        }

        v49 = sub_23EBDA4C0(a1);
        v23 = v49 == 16;
        if (dword_27E382BC8 > 800)
        {
          goto LABEL_674;
        }

        v50 = v49;
        if (dword_27E382BC8 == -1 && !sub_23EB74AC8(&dword_27E382BC8, 0x320u))
        {
          goto LABEL_674;
        }

        sub_23EB75374(&dword_27E382BC8, "void __SBSEngine_StepByStepSync(void *)", 800, "\n\n\t\t          \t\t---------- SBS state: %s ----------\n\n", v19, v20, v21, v22, "eSBSStep_Restore_Config");
        if (v50 == 16)
        {
          goto LABEL_688;
        }

        goto LABEL_675;
      default:
        v9 = 4294960587;
        goto LABEL_686;
    }
  }
}

uint64_t sub_23EBD879C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_27E382BC8 <= 800 && (dword_27E382BC8 != -1 || sub_23EB74AC8(&dword_27E382BC8, 0x320u)))
  {
    sub_23EB75374(&dword_27E382BC8, "OSStatus SBSEngine_SetProgressCallback(StepByStepContextRef, assistant_progress_t, void *)", 800, " \n", a5, a6, a7, a8, v13);
  }

  if (!a1)
  {
    return 4294960591;
  }

  v11 = *(a1 + 88);

  return sub_23EBEAA74(v11, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_23EBD884C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_27E382BC8 <= 800 && (dword_27E382BC8 != -1 || sub_23EB74AC8(&dword_27E382BC8, 0x320u)))
  {
    sub_23EB75374(&dword_27E382BC8, "OSStatus SBSEngine_SetAssistantCallback(StepByStepContextRef, assistant_callback_t, void *)", 800, " \n", a5, a6, a7, a8, v13);
  }

  if (!a1)
  {
    return 4294960591;
  }

  v11 = *(a1 + 88);

  return sub_23EBEA4E8(v11, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_23EBD88FC(uint64_t a1, CFTypeRef cf)
{
  if (!a1)
  {
    return 4294960591;
  }

  v4 = *(a1 + 80);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 80) = 0;
  }

  if (cf)
  {
    *(a1 + 80) = cf;
    CFRetain(cf);
  }

  return 0;
}

uint64_t sub_23EBD8954(uint64_t a1, CFTypeRef cf)
{
  if (!a1)
  {
    return 4294960591;
  }

  v4 = *(a1 + 64);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 64) = 0;
  }

  if (cf)
  {
    *(a1 + 64) = cf;
    CFRetain(cf);
  }

  return 0;
}

uint64_t sub_23EBD89AC(uint64_t a1, uint64_t a2, int a3)
{
  if (!a1 || !a2 || (a3 - 1) > 1)
  {
    return 4294960591;
  }

  if (a3 == 1)
  {
    v4 = @"kSBSCacheKey_ScanRecordsMerged";
  }

  else
  {
    v4 = @"kSBSCacheKey_ScanRecordsUnmerged";
  }

  return sub_23EBD89EC(a1, v4, a2);
}

uint64_t sub_23EBD89EC(uint64_t a1, CFStringRef theString1, uint64_t a3)
{
  cf = 0;
  v3 = 4294960591;
  if (!theString1 || !a3)
  {
    return v3;
  }

  if (*(a1 + 56))
  {
    if (CFStringCompare(theString1, @"kSBSCacheKey_BrowseRecords", 0))
    {
      if (CFStringCompare(theString1, @"kSBSCacheKey_BaseSettings", 0) == kCFCompareEqualTo)
      {
        goto LABEL_8;
      }

      v16 = sub_23EB6FDFC(*MEMORY[0x277CBECE8], *(a1 + 56), "%kO=%O", v11, v12, v13, v14, v15, theString1);
      goto LABEL_7;
    }

    v18 = sub_23EBEBA44(*(a1 + 88), &cf, 0, v6, v7, v8, v9, v10);
    v19 = theString1;
    if (v18 != -6727)
    {
      v3 = v18;
      if (v18)
      {
        goto LABEL_8;
      }

      v19 = cf;
      if (!cf)
      {
        return 4294960568;
      }
    }

    v38 = 0;
    if (CFDictionaryContainsKey(*(a1 + 56), theString1))
    {
      sub_23EB6FF14(*(a1 + 56), &v38, "%kO", v20, v21, v22, v23, v24, theString1);
      if (v16)
      {
LABEL_7:
        v3 = v16;
        goto LABEL_8;
      }

      v30 = v38;
      if (v38)
      {
        v31 = *MEMORY[0x277CBECE8];
LABEL_20:
        v16 = sub_23EB6FDFC(v31, v30, "%kO=%O", v25, v26, v27, v28, v29, v19);
        goto LABEL_7;
      }

      goto LABEL_22;
    }

    v31 = *MEMORY[0x277CBECE8];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v38 = Mutable;
    if (!Mutable)
    {
LABEL_22:
      v3 = 4294960568;
      goto LABEL_8;
    }

    v30 = Mutable;
    v3 = sub_23EB6FDFC(v31, *(a1 + 56), "%kO=%O", v33, v34, v35, v36, v37, theString1);
    CFRelease(v30);
    if (!v3)
    {
      goto LABEL_20;
    }
  }

LABEL_8:
  if (cf)
  {
    CFRelease(cf);
  }

  return v3;
}

uint64_t sub_23EBD8BAC(void *a1, const __CFString *a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_27E382BC8 <= 800 && (dword_27E382BC8 != -1 || sub_23EB74AC8(&dword_27E382BC8, 0x320u)))
  {
    sub_23EB75374(&dword_27E382BC8, "OSStatus SBSEngine_SetTargetBaseAndSettings(StepByStepContextRef, CFDictionaryRef, CFDictionaryRef)", 800, " \n", a5, a6, a7, a8, v13);
  }

  result = 4294960591;
  if (a1 && a2)
  {
    if (*a1)
    {
      return 4294960577;
    }

    else
    {
      result = sub_23EBD8C7C(a1, a2);
      if (a3 && !result)
      {
        v12 = a1[1];

        return sub_23EBB1354(v12, a3);
      }
    }
  }

  return result;
}

uint64_t sub_23EBD8C7C(uint64_t a1, const __CFString *cf)
{
  v3 = *a1;
  if (*a1 == cf)
  {
    return 0;
  }

  if (!v3)
  {
    goto LABEL_11;
  }

  v5 = CFEqual(cf, v3);
  if (!v5 || dword_27E382BC8 > 800)
  {
    if (v5)
    {
      return 0;
    }

    if (*a1)
    {
      CFRelease(*a1);
    }

LABEL_11:
    *a1 = cf;
    CFRetain(cf);
    v20 = *a1;
    v19 = *(a1 + 8);
    if (v19)
    {
      if (v20)
      {
        result = sub_23EBB10D4(v19, v20);
        if (result)
        {
          return result;
        }
      }

      else
      {
        sub_23EBB0D6C(v19);
        *(a1 + 8) = 0;
      }
    }

    else if (v20)
    {
      v21 = 0;
      result = sub_23EBB0E1C(&v21);
      if (result)
      {
        return result;
      }

      if (!v21)
      {
        return 4294960568;
      }

      *(a1 + 8) = v21;
    }

    return 0;
  }

  if (dword_27E382BC8 != -1 || (result = sub_23EB74AC8(&dword_27E382BC8, 0x320u), result))
  {
    v14 = sub_23EB6AE14(cf, v6, v7, v8, v9, v10, v11, v12);
    sub_23EB75374(&dword_27E382BC8, "OSStatus _SetTargetBase(StepByStepContextRef, CFDictionaryRef)", 800, "equal SKIPPING update for: %@\n", v15, v16, v17, v18, v14);
    return 0;
  }

  return result;
}

uint64_t sub_23EBD8D8C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_27E382BC8 <= 800 && (dword_27E382BC8 != -1 || sub_23EB74AC8(&dword_27E382BC8, 0x320u)))
  {
    sub_23EB75374(&dword_27E382BC8, "OSStatus SBSEngine_StepByStepAsync(StepByStepContextRef)", 800, " \n", a5, a6, a7, a8, v24);
  }

  if (!a1)
  {
    return 4294960591;
  }

  if (!a1[4])
  {
    return 4294960591;
  }

  v9 = a1[6];
  if (!v9)
  {
    return 4294960591;
  }

  CFArrayRemoveAllValues(v9);
  result = sub_23EBD8E80(a1, 1, 0);
  if (!result)
  {
    v11 = a1[4];
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_group_async_f(v11, global_queue, a1, sub_23EBD5D34);
    result = sub_23EBEA0DC(a1[11], v13, v14, v15, v16, v17, v18, v19);
    if (!result)
    {
      sub_23EBEB0B0(a1[11], 14, 0, 0, v20, v21, v22, v23);
      return 0;
    }
  }

  return result;
}

uint64_t sub_23EBD8E80(uint64_t a1, int a2, uint64_t a3)
{
  v4 = *(a1 + 48);
  if (!v4 || !*a1)
  {
    return 4294960591;
  }

  if (a2)
  {
    v6 = *MEMORY[0x277CBECE8];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      v13 = Mutable;
      v14 = sub_23EB6FDFC(v6, Mutable, "%ks=%i", v8, v9, v10, v11, v12, "kSBSKey_Step");
      if (!v14)
      {
        v14 = sub_23EB6FDFC(v6, v13, "%ks=%i", v15, v16, v17, v18, v19, "kSBSKey_Mode");
        if (!v14)
        {
          v14 = sub_23EB6FDFC(v6, v13, "%ks=%O", v20, v21, v22, v23, v24, "kSBSKey_TargetBase");
          if (!v14)
          {
            if (!a3 || (v14 = sub_23EB6FDFC(v6, v13, "%##O", v25, v26, v27, v28, v29, a3), !v14))
            {
              v14 = sub_23EB6FDFC(v6, *(a1 + 48), "%O", v25, v26, v27, v28, v29, v13);
            }
          }
        }
      }

      v30 = v14;
      CFRelease(v13);
    }

    else
    {
      return 4294960568;
    }
  }

  else
  {
    Count = CFArrayGetCount(v4);
    if (Count)
    {
      CFArrayRemoveValueAtIndex(*(a1 + 48), Count - 1);
      return 0;
    }

    else
    {
      return 4294960586;
    }
  }

  return v30;
}

uint64_t sub_23EBD8FF8(const __CFString *a1, __CFArray **a2)
{
  v2 = 4294960591;
  if (a1 && a2)
  {
    v5 = *MEMORY[0x277CBECE8];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (!Mutable)
    {
      return 4294960568;
    }

    v12 = Mutable;
    v48 = 0;
    v47 = 0;
    sub_23EB6FF14(a1, &v48, "%ks", v7, v8, v9, v10, v11, "kSBSKey_GuestNetwork_On");
    if (v13)
    {
      goto LABEL_5;
    }

    if (v48)
    {
      v13 = sub_23EB6FDFC(v5, v12, "%ks=%O", v14, v15, v16, v17, v18, "kBSAutoGuessSetupOptionKey_GuestNetwork_On");
      if (v13)
      {
        goto LABEL_5;
      }

      sub_23EB6FF14(a1, &v48, "%ks", v20, v21, v22, v23, v24, "kSBSKey_GuestNetwork_Name");
      if (v25 != -6727)
      {
        v2 = v25;
        if (v25)
        {
          goto LABEL_6;
        }

        if (!v48)
        {
          goto LABEL_25;
        }

        v13 = sub_23EB6FDFC(v5, v12, "%ks=%O", v26, v27, v28, v29, v30, "kBSAutoGuessSetupOptionKey_GuestNetwork_Name");
        if (v13)
        {
          goto LABEL_5;
        }
      }

      sub_23EB6FF14(a1, &v47, "%ks:int", v26, v27, v28, v29, v30, "kSBSKey_GuestNetwork_Security");
      v2 = v31;
      if (v31 == -6727)
      {
LABEL_20:
        *a2 = v12;
        return v2;
      }

      if (v31)
      {
        goto LABEL_6;
      }

      if (v48)
      {
        v13 = sub_23EB6FDFC(v5, v12, "%ks=%i", v32, v33, v34, v35, v36, "kBSAutoGuessSetupOptionKey_GuestNetwork_Security");
        if (v13)
        {
          goto LABEL_5;
        }

        if (v47 == 1)
        {
          goto LABEL_20;
        }

        sub_23EB6FF14(a1, &v48, "%ks", v37, v38, v39, v40, v41, "kSBSKey_GuestNetwork_Password");
        if (v13)
        {
LABEL_5:
          v2 = v13;
LABEL_6:
          CFRelease(v12);
          return v2;
        }

        if (v48)
        {
          v13 = sub_23EB6FDFC(v5, v12, "%ks=%O", v42, v43, v44, v45, v46, "kBSAutoGuessSetupOptionKey_GuestNetwork_Password");
          if (!v13)
          {
            goto LABEL_20;
          }

          goto LABEL_5;
        }
      }
    }

LABEL_25:
    v2 = 4294960568;
    goto LABEL_6;
  }

  return v2;
}

uint64_t sub_23EBD9210(const __CFString *a1, __CFArray **a2, __CFArray **a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = 4294960591;
  if (a2 && a3)
  {
    v256 = 0;
    v255 = 0;
    v253 = 0;
    v254 = 0;
    v252 = 0;
    sub_23EB6FF14(a1, &v256, "%ks:int", a4, a5, a6, a7, a8, "kSBSKey_Result_ConfigurationChoice");
    if (v12)
    {
      return v12;
    }

    sub_23EB6FF14(a1, &v255, "%ks", v13, v14, v15, v16, v17, "kSBSKey_Result_ConfigurationOptions");
    if (v12)
    {
      return v12;
    }

    if (v255)
    {
      sub_23EB6FF14(a1, &v254, "%ks", v18, v19, v20, v21, v22, "kSBSKey_Result_TargetBase");
      if (v12)
      {
        return v12;
      }

      if (!v254)
      {
        return 4294960568;
      }

      sub_23EB6FF14(a1, &v253, "%ks", v24, v25, v26, v27, v28, "kSBSKey_Result_TargetBaseSettings");
      if (v12)
      {
        return v12;
      }

      if (v253)
      {
        v29 = *MEMORY[0x277CBECE8];
        Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        if (Mutable)
        {
          v36 = Mutable;
          v37 = sub_23EB6FDFC(v29, Mutable, "%ks=%O", v31, v32, v33, v34, v35, "BSAutoGuess_UnconfiguredBase");
          if (v37 || (v37 = sub_23EB6FDFC(v29, v36, "%ks=%O", v38, v39, v40, v41, v42, "BSAutoGuess_UnconfiguredBaseSettings"), v37) || (v37 = sub_23EB6FDFC(v29, v36, "%ks=%b", v43, v44, v45, v46, v47, "kBSAutoGuessSetupOptionKey_RecommendationIsAutomatic"), v37))
          {
            v8 = v37;
LABEL_17:
            v53 = v36;
LABEL_18:
            CFRelease(v53);
            return v8;
          }

          v249 = a1;
          v54 = a2;
          v55 = a3;
          if (v256 <= 3)
          {
            if (v256 == 1)
            {
              cf = 0;
              v250 = 0;
              v62 = CFDictionaryCreateMutable(v29, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
              if (!v62)
              {
                goto LABEL_129;
              }

              sub_23EB6FF14(v255, &v252, "%ks", v113, v114, v115, v116, v117, "kSBSKey_BaseName");
              if (v118 != -6727)
              {
                v8 = v118;
                if (v118)
                {
                  goto LABEL_116;
                }

                if (!v252)
                {
                  goto LABEL_129;
                }

                v95 = sub_23EB6FDFC(v29, v62, "%ks=%O", v119, v120, v121, v122, v123, "kBSAutoGuessSetupOptionKey_BaseName");
                if (v95)
                {
                  goto LABEL_115;
                }
              }

              sub_23EB6FF14(v255, &v252, "%ks", v119, v120, v121, v122, v123, "kSBSKey_BasePassword");
              if (v95)
              {
                goto LABEL_115;
              }

              if (!v252)
              {
                goto LABEL_129;
              }

              v95 = sub_23EB6FDFC(v29, v62, "%ks=%O", v124, v125, v126, v127, v128, "kBSAutoGuessSetupOptionKey_BasePassword");
              if (v95)
              {
                goto LABEL_115;
              }

              sub_23EB6FF14(v255, &v252, "%ks", v129, v130, v131, v132, v133, "kSBSKey_NetworkName");
              if (v95)
              {
                goto LABEL_115;
              }

              if (!v252)
              {
                goto LABEL_129;
              }

              v95 = sub_23EB6FDFC(v29, v62, "%ks=%O", v134, v135, v136, v137, v138, "kBSAutoGuessSetupOptionKey_NetworkName");
              if (v95)
              {
                goto LABEL_115;
              }

              sub_23EB6FF14(v255, &v252, "%ks", v139, v140, v141, v142, v143, "kSBSKey_NetworkPassword");
              if (v95)
              {
                goto LABEL_115;
              }

              if (!v252)
              {
                goto LABEL_129;
              }

              v95 = sub_23EB6FDFC(v29, v62, "%ks=%O", v144, v145, v146, v147, v148, "kBSAutoGuessSetupOptionKey_NetworkPassword");
              if (v95)
              {
                goto LABEL_115;
              }

              v149 = sub_23EBD8FF8(v255, &cf);
              if (v149 == -6727)
              {
                goto LABEL_76;
              }

              v8 = v149;
              if (!v149)
              {
                if (!cf)
                {
                  goto LABEL_129;
                }

                v8 = sub_23EB6FDFC(v29, v62, "%k##O", v150, v151, v152, v153, v154, cf);
                if (cf)
                {
                  CFRelease(cf);
                  cf = 0;
                }

                if (!v8)
                {
LABEL_76:
                  sub_23EB6FF14(v255, &v252, "%ks", v150, v151, v152, v153, v154, "kSBSKey_DiskSharing_Password");
                  if (v155 != -6727)
                  {
                    v8 = v155;
                    if (v155)
                    {
                      goto LABEL_116;
                    }

                    if (!v252)
                    {
                      goto LABEL_129;
                    }

                    v95 = sub_23EB6FDFC(v29, v62, "%ks=%O", v156, v157, v158, v159, v160, "kBSAutoGuessSetupOptionKey_DiskSharing_Password");
                    if (v95)
                    {
                      goto LABEL_115;
                    }
                  }

                  sub_23EB6FF14(v255, &v250, "%ks:int", v156, v157, v158, v159, v160, "kSBSKey_SelectorChoice");
                  if (v161 == -6727)
                  {
LABEL_134:
                    v95 = sub_23EB6FDFC(v29, v36, "%ks=%s", v162, v163, v164, v165, v166, "BSAutoGuess_Recommendation");
                    if (!v95)
                    {
                      goto LABEL_55;
                    }

                    goto LABEL_115;
                  }

                  v8 = v161;
                  if (!v161)
                  {
                    if ((v250 - 101) > 1)
                    {
                      goto LABEL_55;
                    }

                    sub_23EB6FF14(v249, &v252, "%ks", v162, v163, v164, v165, v166, "kSBSKey_Result_SourceBase");
                    if (v95)
                    {
                      goto LABEL_115;
                    }

                    if (!v252)
                    {
                      goto LABEL_129;
                    }

                    v95 = sub_23EB6FDFC(v29, v36, "%ks=%O", v167, v168, v169, v170, v171, "BSAutoGuess_SourceBase");
                    if (v95)
                    {
                      goto LABEL_115;
                    }

                    goto LABEL_134;
                  }
                }
              }

LABEL_116:
              CFRelease(v36);
LABEL_131:
              v53 = v62;
              goto LABEL_18;
            }

            if (v256 != 2)
            {
              if (v256 != 3)
              {
                goto LABEL_17;
              }

              LODWORD(cf) = 0;
              v62 = CFDictionaryCreateMutable(v29, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
              if (!v62)
              {
                goto LABEL_129;
              }

              sub_23EB6FF14(v255, &v252, "%ks", v84, v85, v86, v87, v88, "kSBSKey_BaseName");
              if (v89 != -6727)
              {
                v8 = v89;
                if (v89)
                {
                  goto LABEL_116;
                }

                if (!v252)
                {
                  goto LABEL_129;
                }

                v95 = sub_23EB6FDFC(v29, v62, "%ks=%O", v90, v91, v92, v93, v94, "kBSAutoGuessSetupOptionKey_BaseName");
                if (v95)
                {
                  goto LABEL_115;
                }
              }

              sub_23EB6FF14(v255, &cf, "%ks:int", v90, v91, v92, v93, v94, "kSBSKey_SelectorChoice");
              if (v96 != -6727)
              {
                v8 = v96;
                if (v96)
                {
                  goto LABEL_116;
                }

                if (!v252)
                {
                  goto LABEL_129;
                }

                if (cf == 212)
                {
                  v95 = sub_23EB6FDFC(v29, v62, "%ks=%b", v97, v98, v99, v100, v101, "kBSAutoGuessSetupOptionKey_ExtendOption_JoinApple");
                  if (v95)
                  {
                    goto LABEL_115;
                  }
                }
              }

              sub_23EB6FF14(v249, &v252, "%ks", v97, v98, v99, v100, v101, "kSBSKey_Result_SourceBase");
              if (!v95)
              {
                if (!v252)
                {
                  goto LABEL_129;
                }

                v95 = sub_23EB6FDFC(v29, v36, "%ks=%O", v102, v103, v104, v105, v106, "BSAutoGuess_SourceBase");
                if (!v95)
                {
                  v8 = sub_23EB6FDFC(v29, v36, "%ks=%s", v107, v108, v109, v110, v111, "BSAutoGuess_Recommendation");
                  if (!v8)
                  {
                    goto LABEL_55;
                  }

                  goto LABEL_130;
                }
              }

              goto LABEL_115;
            }

            v212 = CFDictionaryCreateMutable(v29, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
            if (v212)
            {
              v62 = v212;
              sub_23EB6FF14(v255, &v252, "%ks", v213, v214, v215, v216, v217, "kSBSKey_BaseName");
              if (v218 != -6727)
              {
                v8 = v218;
                if (v218)
                {
                  goto LABEL_116;
                }

                if (!v252)
                {
                  goto LABEL_136;
                }

                v95 = sub_23EB6FDFC(v29, v62, "%ks=%O", v219, v220, v221, v222, v223, "kBSAutoGuessSetupOptionKey_BaseName");
                if (v95)
                {
                  goto LABEL_115;
                }
              }

              sub_23EB6FF14(v249, &v252, "%ks", v219, v220, v221, v222, v223, "kSBSKey_Result_SourceBase");
              if (v95)
              {
                goto LABEL_115;
              }

              if (v252)
              {
                v95 = sub_23EB6FDFC(v29, v36, "%ks=%O", v224, v225, v226, v227, v228, "BSAutoGuess_SourceBase");
                if (!v95)
                {
                  goto LABEL_134;
                }

                goto LABEL_115;
              }

LABEL_136:
              v8 = 4294960568;
              goto LABEL_116;
            }
          }

          else
          {
            if (v256 > 5)
            {
              if (v256 == 6)
              {
                cf = 0;
                sub_23EB6FF14(v249, &cf, "%ks", v48, v49, v50, v51, v52, "kSBSKey_Result_ConfigChangeLogDict");
                if (v211)
                {
                  v8 = v211;
                  v62 = 0;
                  goto LABEL_130;
                }

                if (cf)
                {
                  v62 = CFDictionaryCreateMutable(v29, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
                  if (v62)
                  {
                    v68 = sub_23EB6FDFC(v29, v62, "%ks=%O", v234, v235, v236, v237, v238, "kBSAutoGuessSetupOptionKey_ConfigChangeLogDict");
                    if (v68)
                    {
                      goto LABEL_127;
                    }

                    sub_23EB6FF14(v255, &v252, "%ks", v239, v240, v241, v242, v243, "kSBSKey_BasePassword");
                    if (v68)
                    {
                      goto LABEL_127;
                    }

                    if (v252)
                    {
                      v68 = sub_23EB6FDFC(v29, v62, "%ks=%O", v244, v245, v246, v247, v248, "kBSAutoGuessSetupOptionKey_BasePassword");
                      if (!v68)
                      {
                        goto LABEL_54;
                      }

                      goto LABEL_127;
                    }
                  }

LABEL_129:
                  v8 = 4294960568;
LABEL_130:
                  CFRelease(v36);
                  if (!v62)
                  {
                    return v8;
                  }

                  goto LABEL_131;
                }

                goto LABEL_128;
              }

              if (v256 != 7)
              {
                goto LABEL_17;
              }

              cf = 0;
              sub_23EB6FF14(v249, &cf, "%ks", v48, v49, v50, v51, v52, "kSBSKey_Result_ConfigChangeLogDict");
              v62 = 0;
              if (v112 == -6727)
              {
LABEL_54:
                v68 = sub_23EB6FDFC(v29, v36, "%ks=%s", v79, v80, v81, v82, v83, "BSAutoGuess_Recommendation");
                if (!v68)
                {
LABEL_55:
                  v8 = 0;
                  *v54 = v36;
                  *v55 = v62;
                  return v8;
                }

                goto LABEL_127;
              }

              v8 = v112;
              v62 = CFDictionaryCreateMutable(v29, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
              if (!v62)
              {
                goto LABEL_129;
              }

              if (!v8)
              {
                if (!cf)
                {
                  goto LABEL_129;
                }

                v8 = sub_23EB6FDFC(v29, v62, "%ks=%O", v229, v230, v231, v232, v233, "kBSAutoGuessSetupOptionKey_ConfigChangeLogDict");
                if (!v8)
                {
                  goto LABEL_54;
                }
              }

              goto LABEL_116;
            }

            if (v256 != 4)
            {
              LODWORD(cf) = 0;
              sub_23EB6FF14(v255, &v252, "%ks", v48, v49, v50, v51, v52, "kSBSKey_BaseName");
              v62 = 0;
              if (v56 == -6727)
              {
LABEL_28:
                sub_23EB6FF14(v249, &v252, "%ks", v57, v58, v59, v60, v61, "kSBSKey_Result_SourceBase");
                if (v68)
                {
                  goto LABEL_127;
                }

                if (v252)
                {
                  v68 = sub_23EB6FDFC(v29, v36, "%ks=%O", v69, v70, v71, v72, v73, "BSAutoGuess_SourceBase");
                  if (!v68)
                  {
                    sub_23EB6FF14(v255, &cf, "%ks:int", v74, v75, v76, v77, v78, "kSBSKey_SelectorChoice");
                    if (!v68)
                    {
                      goto LABEL_54;
                    }
                  }

LABEL_127:
                  v8 = v68;
                  goto LABEL_130;
                }

                goto LABEL_129;
              }

              v8 = v56;
              if (v56)
              {
                goto LABEL_130;
              }

              if (v252)
              {
                v62 = CFDictionaryCreateMutable(v29, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
                if (!v62)
                {
                  goto LABEL_129;
                }

                v68 = sub_23EB6FDFC(v29, v62, "%ks=%O", v63, v64, v65, v66, v67, "kBSAutoGuessSetupOptionKey_BaseName");
                if (v68)
                {
                  goto LABEL_127;
                }

                goto LABEL_28;
              }

LABEL_128:
              v62 = 0;
              goto LABEL_129;
            }

            v172 = CFDictionaryCreateMutable(v29, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
            if (v172)
            {
              v62 = v172;
              sub_23EB6FF14(v255, &v252, "%ks", v173, v174, v175, v176, v177, "kSBSKey_BaseName");
              if (v178 != -6727)
              {
                v8 = v178;
                if (v178)
                {
                  goto LABEL_116;
                }

                if (!v252)
                {
                  goto LABEL_136;
                }

                v95 = sub_23EB6FDFC(v29, v62, "%ks=%O", v179, v180, v181, v182, v183, "kBSAutoGuessSetupOptionKey_BaseName");
                if (v95)
                {
                  goto LABEL_115;
                }
              }

              sub_23EB6FF14(v255, &v252, "%ks", v179, v180, v181, v182, v183, "kSBSKey_BasePassword");
              if (v95)
              {
                goto LABEL_115;
              }

              if (!v252)
              {
                goto LABEL_136;
              }

              v95 = sub_23EB6FDFC(v29, v62, "%ks=%O", v184, v185, v186, v187, v188, "kBSAutoGuessSetupOptionKey_BasePassword");
              if (v95)
              {
                goto LABEL_115;
              }

              sub_23EB6FF14(v255, &v252, "%ks", v189, v190, v191, v192, v193, "kSBSKey_AirPlayPassword");
              if (v194 != -6727)
              {
                v8 = v194;
                if (v194)
                {
                  goto LABEL_116;
                }

                if (!v252)
                {
                  goto LABEL_136;
                }

                v95 = sub_23EB6FDFC(v29, v62, "%ks=%O", v195, v196, v197, v198, v199, "kBSAutoGuessSetupOptionKey_AirPlayPassword");
                if (v95)
                {
                  goto LABEL_115;
                }
              }

              sub_23EB6FF14(v249, &v252, "%ks", v195, v196, v197, v198, v199, "kSBSKey_Result_SourceNetwork");
              if (v95)
              {
                goto LABEL_115;
              }

              if (!v252)
              {
                goto LABEL_136;
              }

              v95 = sub_23EB6FDFC(v29, v36, "%ks=%O", v200, v201, v202, v203, v204, "BSAutoGuess_SourceNetwork");
              if (v95)
              {
                goto LABEL_115;
              }

              sub_23EB6FF14(v255, &v252, "%ks", v205, v206, v207, v208, v209, "kSBSKey_NetworkPassword");
              if (v210 == -6727)
              {
                goto LABEL_134;
              }

              v8 = v210;
              if (!v210)
              {
                if (v252)
                {
                  v95 = sub_23EB6FDFC(v29, v62, "%ks=%O", v162, v163, v164, v165, v166, "kBSAutoGuessSetupOptionKey_NetworkPassword");
                  if (!v95)
                  {
                    goto LABEL_134;
                  }

LABEL_115:
                  v8 = v95;
                  goto LABEL_116;
                }

                goto LABEL_136;
              }

              goto LABEL_116;
            }
          }

          v8 = 4294960568;
          goto LABEL_17;
        }
      }
    }

    return 4294960568;
  }

  return v8;
}

uint64_t sub_23EBD9E90(const __CFString *a1, const __CFArray *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  values[1] = *MEMORY[0x277D85DE8];
  v97 = 0;
  valuePtr = 0;
  v8 = 4294960591;
  if (a1 && a3)
  {
    v95 = 0;
    v96 = 0;
    v93 = 0;
    v94 = 0;
    Mutable = 0;
    v92 = 0;
    v90 = 0;
    sub_23EB6FF14(a1, &v96, "%ks", a4, a5, a6, a7, a8, "BSAutoGuess_Recommendation");
    if (v12)
    {
      return v12;
    }

    if (!v96)
    {
      return 4294960568;
    }

    v94 = 0;
    v95 = 0;
    sub_23EB6FF14(a1, &v95, "%ks", v13, v14, v15, v16, v17, "BSAutoGuess_UnconfiguredBase");
    if (v18 == -6727)
    {
      sub_23EB6FF14(a1, &v94, "%ks", v19, v20, v21, v22, v23, "BSAutoGuess_UnconfiguredNetwork");
      if (v12)
      {
        return v12;
      }

      if (!v94)
      {
        return 4294960568;
      }
    }

    else
    {
      v8 = v18;
      if (v18)
      {
        return v8;
      }

      if (!v95)
      {
        return 4294960568;
      }
    }

    if (CFStringCompare(v96, @"BSSetupRecommend_OfferExtendWirelessly", 0))
    {
      if (CFStringCompare(v96, @"BSSetupRecommend_AskUserChooseBaseWireless", 0))
      {
        if (CFStringCompare(v96, @"BSSetupRecommend_OfferExtendOverEthernet", 0))
        {
          if (CFStringCompare(v96, @"BSSetupRecommend_AskUserChooseBaseWired", 0))
          {
            if (CFStringCompare(v96, @"BSSetupRecommend_OfferCreate", 0) == kCFCompareEqualTo)
            {
              v72 = 0;
              goto LABEL_41;
            }

            if (CFStringCompare(v96, @"BSSetupRecommend_OfferJoinNetwork", 0))
            {
              if (CFStringCompare(v96, @"BSSetupRecommend_AskUserChooseNetworkToJoin", 0))
              {
                if (CFStringCompare(v96, @"BSSetupRecommend_OfferReplace", 0))
                {
                  if (CFStringCompare(v96, @"BSSetupRecommend_OfferReplaceSourceIsUnconfigurable", 0))
                  {
                    CFStringCompare(v96, @"BSSetupRecommend_NoNetworkToJoin", 0);
                    return 4294960561;
                  }

                  LODWORD(values[0]) = 0;
                  sub_23EB6FF14(a1, &v93, "%ks", v64, v65, v66, v67, v68, "BSAutoGuess_SourceBase");
                  if (v12)
                  {
                    return v12;
                  }

                  if (v93)
                  {
                    sub_23EB6FF14(a1, values, "%ks:int", v81, v82, v83, v84, v85, "kBSAutoGuessSetupOptionKey_NoConfigureReason");
                    if (v12)
                    {
                      return v12;
                    }

                    if (LODWORD(values[0]) == 2)
                    {
                      v86 = 102;
                    }

                    else
                    {
                      if (LODWORD(values[0]) != 1)
                      {
LABEL_71:
                        v87 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, &valuePtr);
                        if (!v87)
                        {
                          return 4294960568;
                        }

                        v72 = v87;
LABEL_41:
                        v8 = sub_23EB6F348(*MEMORY[0x277CBECE8], &v97, "{%ks=%i%ks=%i%ks=%O%ks=%O%ks=%O%ks=%O%ks=%O%ks=%O}", v44, v45, v46, v47, v48, "kSBSKey_Step");
                        if (v8)
                        {
                          if (!v97)
                          {
                            goto LABEL_47;
                          }

                          CFRelease(v97);
                        }

                        else
                        {
                          if (!v97)
                          {
                            v8 = 4294960568;
                            if (!v72)
                            {
                              return v8;
                            }

                            goto LABEL_48;
                          }

                          v8 = 0;
                          *a3 = v97;
                        }

                        v97 = 0;
LABEL_47:
                        if (!v72)
                        {
                          return v8;
                        }

LABEL_48:
                        CFRelease(v72);
                        return v8;
                      }

                      v86 = 101;
                    }

                    valuePtr = v86;
                    goto LABEL_71;
                  }
                }

                else
                {
                  sub_23EB6FF14(a1, &v93, "%ks", v59, v60, v61, v62, v63, "BSAutoGuess_SourceBase");
                  if (v12)
                  {
                    return v12;
                  }

                  if (v93)
                  {
                    valuePtr = 313;
                    v80 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, &valuePtr);
                    if (v80)
                    {
                      v72 = v80;
                      goto LABEL_41;
                    }
                  }
                }

                return 4294960568;
              }

              sub_23EB6FF14(a1, &v90, "%ks", v54, v55, v56, v57, v58, "BSAutoGuess_AskUserList");
              if (v12)
              {
                return v12;
              }
            }

            else
            {
              sub_23EB6FF14(a1, &v92, "%ks", v49, v50, v51, v52, v53, "BSAutoGuess_SourceNetwork");
              if (v12)
              {
                return v12;
              }

              if (!v92)
              {
                return 4294960568;
              }

              sub_23EB6FF14(a1, &v90, "%ks", v74, v75, v76, v77, v78, "BSAutoGuess_AskUserList");
              if (v79 == -6727)
              {
LABEL_58:
                v72 = 0;
                goto LABEL_41;
              }

              v8 = v79;
              if (v79)
              {
                return v8;
              }
            }

            if (!v90)
            {
              return 4294960568;
            }

            goto LABEL_58;
          }

          sub_23EB6FF14(a1, &v90, "%ks", v39, v40, v41, v42, v43, "BSAutoGuess_AskUserList");
          if (v12)
          {
            return v12;
          }

          if (!v90)
          {
            return 4294960568;
          }
        }

        else
        {
          sub_23EB6FF14(a1, &v93, "%ks", v34, v35, v36, v37, v38, "BSAutoGuess_SourceBase");
          if (v12)
          {
            return v12;
          }

          if (!v93)
          {
            return 4294960568;
          }
        }

        v72 = 0;
        goto LABEL_41;
      }

      sub_23EB6FF14(a1, &v90, "%ks", v29, v30, v31, v32, v33, "BSAutoGuess_AskUserList");
      if (v12)
      {
        return v12;
      }

      if (!v90)
      {
        return 4294960568;
      }

      v73 = sub_23EBB07FC(a2, v90, &Mutable);
      v72 = 0;
      if (v73 == -6727)
      {
        goto LABEL_41;
      }

      v8 = v73;
      if (!v73)
      {
        goto LABEL_41;
      }
    }

    else
    {
      sub_23EB6FF14(a1, &v93, "%ks", v24, v25, v26, v27, v28, "BSAutoGuess_SourceBase");
      if (v12)
      {
        return v12;
      }

      if (!v93)
      {
        return 4294960568;
      }

      v69 = *MEMORY[0x277CBECE8];
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (!Mutable)
      {
        return 4294960568;
      }

      values[0] = v93;
      v70 = CFArrayCreate(v69, values, 1, MEMORY[0x277CBF128]);
      if (!v70)
      {
        return 4294960568;
      }

      v71 = v70;
      v8 = sub_23EBB07FC(a2, v70, &Mutable);
      CFRelease(v71);
      if (!v8 || v8 == -6727)
      {
        v72 = 0;
        goto LABEL_41;
      }
    }
  }

  return v8;
}

const __CFArray *sub_23EBDA4C0(uint64_t a1)
{
  v8 = 0;
  result = *(a1 + 48);
  if (result)
  {
    result = CFArrayGetCount(result);
    if (result)
    {
      sub_23EB6FF14(*(a1 + 48), &v8, "[*].%ks:int", v3, v4, v5, v6, v7, result - 1);
      return v8;
    }
  }

  return result;
}

uint64_t sub_23EBDA528(uint64_t a1)
{
  v46 = 0;
  cf = 0;
  if (!*(a1 + 48))
  {
    return 4294960591;
  }

  v48 = 0;
  v47 = 0;
  if (!*a1 || !*(a1 + 8))
  {
    goto LABEL_26;
  }

  sub_23EBDAC08(a1, &v48);
  if (!v2)
  {
    if (!v48)
    {
      v9 = 0;
      Mutable = 0;
      goto LABEL_37;
    }

    sub_23EB6FF14(v48, &v47, "%kO:int", v3, v4, v5, v6, v7, @"kSBSKey_Step");
    if (v2)
    {
      goto LABEL_5;
    }

    if (v47 == 14 || v47 == 2)
    {
      v9 = sub_23EBB426C(*(a1 + 8));
      if (!v9 || (v16 = sub_23EB6FDFC(*MEMORY[0x277CBECE8], v48, "%ks=%O", v11, v12, v13, v14, v15, "kSBSKey_TargetBaseFeatures"), !v16))
      {
        v17 = sub_23EBDAC94(a1, v47, v48, &v46, v12, v13, v14, v15);
        if (v17 == -6769)
        {
          v16 = sub_23EBD8E80(a1, 0, 0);
        }

        else
        {
          v8 = v17;
          if (v17 == -6723)
          {
            goto LABEL_6;
          }

          v44 = 0;
          v43 = 0;
          if (v17)
          {
            goto LABEL_6;
          }

          if (!v46)
          {
            goto LABEL_40;
          }

          v16 = sub_23EBB4234(*(a1 + 8), &cf);
          if (!v16)
          {
            if (cf)
            {
              v18 = *MEMORY[0x277CBECE8];
              Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
              if (Mutable)
              {
                sub_23EB6FF14(v48, &v43, "%ks:int", v19, v20, v21, v22, v23, "kSBSKey_SelectorChoice");
                if (v24 != -6727)
                {
                  v8 = v24;
                  if (v24)
                  {
                    goto LABEL_27;
                  }

                  v30 = sub_23EB6FDFC(v18, v46, "%ks=%i", v25, v26, v27, v28, v29, "kSBSKey_SelectorChoice");
                  if (v30)
                  {
                    goto LABEL_25;
                  }
                }

                v30 = sub_23EB6FDFC(v18, Mutable, "%ks=%i%ks=%O%ks=%O%ks=%O", v25, v26, v27, v28, v29, "kSBSKey_Result_ConfigurationChoice");
                if (v30)
                {
LABEL_25:
                  v8 = v30;
                  goto LABEL_27;
                }

                sub_23EB6FF14(v48, &v44, "%ks", v31, v32, v33, v34, v35, "kSBSKey_SourceBase");
                if (v37 == -6727)
                {
LABEL_45:
                  v8 = 0;
                  *(a1 + 72) = Mutable;
                  goto LABEL_6;
                }

                v8 = v37;
                if (v37)
                {
                  goto LABEL_27;
                }

                if (v44)
                {
                  v30 = sub_23EB6FDFC(v18, Mutable, "%ks=%O", v38, v39, v40, v41, v42, "kSBSKey_Result_SourceBase");
                  if (v30)
                  {
                    goto LABEL_25;
                  }

                  goto LABEL_45;
                }
              }

LABEL_37:
              v8 = 4294960568;
              goto LABEL_27;
            }

LABEL_40:
            Mutable = 0;
            v8 = 4294960569;
            goto LABEL_27;
          }
        }
      }

      v8 = v16;
      goto LABEL_6;
    }

LABEL_26:
    v9 = 0;
    Mutable = 0;
    v8 = 4294960591;
    goto LABEL_27;
  }

LABEL_5:
  v8 = v2;
  v9 = 0;
LABEL_6:
  Mutable = 0;
LABEL_27:
  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  if (v46)
  {
    CFRelease(v46);
    v46 = 0;
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  return v8;
}

uint64_t sub_23EBDA850(uint64_t a1)
{
  v61 = 0;
  v60 = 0;
  ValueAtIndex = 0;
  v58 = 0;
  theArray = 0;
  v57 = 0;
  cf = 0;
  if (!*(a1 + 48))
  {
    v8 = 4294960591;
    goto LABEL_51;
  }

  if (!*a1 || !*(a1 + 8))
  {
    goto LABEL_46;
  }

  sub_23EBDAC08(a1, &v61);
  if (v2)
  {
LABEL_5:
    v8 = v2;
    goto LABEL_47;
  }

  if (!v61)
  {
    goto LABEL_54;
  }

  sub_23EB6FF14(v61, &v60, "%ks:int", v3, v4, v5, v6, v7, "kSBSKey_Step");
  if (v2)
  {
    goto LABEL_5;
  }

  if ((v60 & 0xFFFFFFF7) != 5)
  {
    goto LABEL_46;
  }

  v14 = *MEMORY[0x277CBECE8];
  v2 = sub_23EB6FDFC(*MEMORY[0x277CBECE8], v61, "%ks=%b", v9, v10, v11, v12, v13, "kSBSKey_CannotBeBackedInto");
  if (v2)
  {
    goto LABEL_5;
  }

  v2 = sub_23EBEE8B0(*(a1 + 88), *a1, 0, 0, 0, 0, &ValueAtIndex, v15);
  if (v2)
  {
    goto LABEL_5;
  }

  if (ValueAtIndex)
  {
    v8 = sub_23EBD8C7C(a1, ValueAtIndex);
    if (ValueAtIndex)
    {
      CFRelease(ValueAtIndex);
      ValueAtIndex = 0;
    }

    if (v8)
    {
      goto LABEL_47;
    }
  }

  v2 = sub_23EBB4DE4(*(a1 + 8), 1937327724);
  if (v2)
  {
    goto LABEL_5;
  }

  v2 = sub_23EBB3F7C(*(a1 + 8), 1937327724, &v58);
  if (v2)
  {
    goto LABEL_5;
  }

  if ((v58 & 0x200) == 0)
  {
    v54 = 0;
    v2 = sub_23EBE9E2C(*(a1 + 88), &v57);
    if (v2)
    {
      goto LABEL_5;
    }

    if (!v57)
    {
      goto LABEL_54;
    }

    v2 = sub_23EBEECB0(v57, *(a1 + 8), 512, &v54, v16, v17, v18, v19);
    if (v2)
    {
      goto LABEL_5;
    }

    if (!v54)
    {
      goto LABEL_54;
    }

    sub_23EBDAD80(v57, v60, v61, 0, v20, v21, v22, v23);
    v8 = v24;
    sub_23EBB1474(*(a1 + 8));
    sub_23EBEEBCC(v54, v25, v26, v27, v28, v29, v30, v31);
    if (v8 == -6769)
    {
LABEL_30:
      v41 = 0;
      v42 = 0;
      goto LABEL_34;
    }

    if (v8)
    {
      goto LABEL_47;
    }

    v2 = sub_23EBDB3B8(a1, v32, v33, v34, v35, v36, v37, v38);
    if (v2)
    {
      goto LABEL_5;
    }
  }

  if (v60 != 5)
  {
    v42 = 14;
LABEL_32:
    v2 = sub_23EBD8E80(a1, 0, 0);
    if (v2)
    {
      goto LABEL_5;
    }

    v41 = cf;
LABEL_34:
    v2 = sub_23EBD8E80(a1, v42, v41);
    goto LABEL_5;
  }

  v54 = 0;
  v39 = sub_23EBDB4B8(a1, &v54);
  if ((v39 & 0xFFFFFFF7) == 0xFFFFE5B1)
  {
    goto LABEL_28;
  }

  v8 = v39;
  v53 = 0;
  if (v39)
  {
    goto LABEL_47;
  }

  if (!v54)
  {
LABEL_54:
    v8 = 4294960568;
    goto LABEL_47;
  }

  v43 = sub_23EBDB638(a1, 0, &v53);
  if (v43 != -6727)
  {
    v8 = v43;
    if (v43)
    {
      goto LABEL_47;
    }

    if (!v53)
    {
      goto LABEL_54;
    }

    v44 = sub_23EBDB73C(v54, v53, &theArray);
    if (v44 != -6727)
    {
      v8 = v44;
      if (v44)
      {
        goto LABEL_47;
      }

      if (theArray)
      {
        Count = CFArrayGetCount(theArray);
        if (Count)
        {
          if (Count < 2)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(theArray, 0);
            if (!ValueAtIndex)
            {
              goto LABEL_61;
            }

            v51 = "kSBSKey_SourceBase";
          }

          else
          {
            v51 = "kSBSKey_BrowseRecordList";
          }

          v2 = sub_23EB6F348(v14, &cf, "{%ks=%O}", v46, v47, v48, v49, v50, v51);
          if (v2)
          {
            goto LABEL_5;
          }

          if (cf)
          {
            v42 = 6;
            goto LABEL_32;
          }

LABEL_61:
          v8 = 4294960569;
          goto LABEL_47;
        }

LABEL_46:
        v8 = 4294960591;
        goto LABEL_47;
      }

      goto LABEL_54;
    }
  }

LABEL_28:
  v40 = sub_23EBEDA58(*(a1 + 88), @"kAskUserWarning_Prompt", 0, 0, @"kAskUserWarning_NoBaseStationsFound_OnEthernet", 0, 0, 0, 0);
  if (v40 == -6723)
  {
    v8 = 4294960573;
    goto LABEL_47;
  }

  v8 = v40;
  if (!v40)
  {
    goto LABEL_30;
  }

LABEL_47:
  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  if (theArray)
  {
    CFRelease(theArray);
    theArray = 0;
  }

LABEL_51:
  if (v57)
  {
    sub_23EBE9F5C(v57);
  }

  return v8;
}

void sub_23EBDAC08(uint64_t a1, void *a2)
{
  if (a2)
  {
    if (*(a1 + 48))
    {
      Count = CFArrayGetCount(*(a1 + 48));
      if (Count)
      {
        v10 = *(a1 + 48);
        v12 = 0;
        sub_23EB6FF14(v10, &v12, "[*]", v5, v6, v7, v8, v9, Count - 1);
        if (!v11)
        {
          if (v12)
          {
            *a2 = v12;
          }
        }
      }
    }
  }
}

uint64_t sub_23EBDAC94(uint64_t a1, uint64_t a2, uint64_t a3, CFTypeRef *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_27E382BC8 <= 800 && (dword_27E382BC8 != -1 || sub_23EB74AC8(&dword_27E382BC8, 0x320u)))
  {
    sub_23EB75374(&dword_27E382BC8, "OSStatus _CopyAndWaitResultsDictFromStep(StepByStepContextRef, eSBSStep, CFDictionaryRef, CFDictionaryRef *)", 800, " \n", a5, a6, a7, a8, v20);
  }

  v21 = 0;
  v16 = sub_23EBE9E2C(*(a1 + 88), &v21);
  v17 = v21;
  if (!v16)
  {
    if (!v21)
    {
      return 4294960568;
    }

    if (*(v21 + 24))
    {
      sub_23EBDAD80(v21, a2, a3, a4, v12, v13, v14, v15);
      v16 = v19;
      v17 = v21;
      if (!v21)
      {
        return v16;
      }
    }

    else
    {
      v16 = 4294960591;
    }

    goto LABEL_7;
  }

  if (v21)
  {
LABEL_7:
    sub_23EBE9F5C(v17);
  }

  return v16;
}

void sub_23EBDAD80(uint64_t a1, uint64_t a2, uint64_t a3, CFTypeRef *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_27E382BC8 <= 800 && (dword_27E382BC8 != -1 || sub_23EB74AC8(&dword_27E382BC8, 0x320u)))
  {
    sub_23EB75374(&dword_27E382BC8, "OSStatus _CopyAndWaitResultsDictFromStepWithCallbackContext(AssistantCallbackContextRef, eSBSStep, CFDictionaryRef, CFDictionaryRef *)", 800, " \n", a5, a6, a7, a8, v32);
  }

  if (a1 && *a1 == 1634561902 && !sub_23EB6FDFC(*MEMORY[0x277CBECE8], *(a1 + 24), "%ks=%i", a4, a5, a6, a7, a8, "kBSAssistantCallbackKey_SBS_SBSStep") && (!a3 || !sub_23EBEB5E8(a1, @"kBSAssistantCallbackKey_SBS_SBSParamDict", a3, v12, v13, v14, v15, v16)) && !sub_23EBEA59C(a1, 1, v11, v12, v13, v14, v15, v16))
  {
    v24 = sub_23EBEA92C(a1, v17, v18, v19, v20, v21, v22, v23);
    if (!*(a1 + 32) && !v24)
    {
      if (a4)
      {
        if (sub_23EBEB5B8(a1, @"kBSAssistantCallbackKey_SBS_SBSOptionsDict"))
        {
          cf = 0;
          sub_23EBEB494(a1, @"kBSAssistantCallbackKey_SBS_SBSOptionsDict", &cf, v25, v26, v27, v28, v29);
          if (!v30)
          {
            v31 = cf;
            if (cf)
            {
              *a4 = cf;
              CFRetain(v31);
            }
          }
        }
      }
    }
  }
}

uint64_t sub_23EBDAEEC(uint64_t a1, CFTypeRef *a2)
{
  v31 = 0;
  cf = 0;
  if (!a2)
  {
    return 4294960591;
  }

  v4 = sub_23EBDB28C(a1, @"kSBSCacheKey_ScanRecordsMerged", &cf);
  if (v4 == -6727)
  {
    if (!cf)
    {
      v16 = sub_23EBEC5F4(*(a1 + 88), 0, 3, 1, &cf, v7, v8, v9);
      v10 = v16;
      v17 = cf;
      if (v16 || !cf)
      {
        if (v16)
        {
          goto LABEL_29;
        }
      }

      else
      {
        v10 = sub_23EBD89EC(a1, @"kSBSCacheKey_ScanRecordsMerged", cf);
        CFRelease(cf);
        if (v10)
        {
          goto LABEL_29;
        }

        v17 = cf;
      }

      if (!v17)
      {
        goto LABEL_28;
      }
    }
  }

  else
  {
    v10 = v4;
    if (v4)
    {
      goto LABEL_29;
    }

    if (!cf)
    {
      goto LABEL_28;
    }
  }

  *v30 = 0;
  v11 = sub_23EBEBA44(*(a1 + 88), v30, 0, v5, v6, v7, v8, v9);
  if (v11 == -6727)
  {
LABEL_12:
    v10 = 0;
    *a2 = cf;
    cf = 0;
    goto LABEL_29;
  }

  v10 = v11;
  if (!v11)
  {
    if (*v30)
    {
      if (sub_23EB6B6FC(*v30, 0, cf) != -1)
      {
        goto LABEL_12;
      }

      v18 = sub_23EBEC4F4(*(a1 + 88), *v30, 3, &v31, v12, v13, v14, v15);
      if (v18)
      {
        v10 = v18;
        goto LABEL_29;
      }

      if (v31)
      {
        v19 = *MEMORY[0x277CBECE8];
        if (cf)
        {
          Count = CFArrayGetCount(cf);
          MutableCopy = CFArrayCreateMutableCopy(v19, Count + 1, cf);
          if (MutableCopy)
          {
LABEL_25:
            v27 = MutableCopy;
            v28 = sub_23EB6FDFC(v19, MutableCopy, "%O", v22, v23, v24, v25, v26, v31);
            if (v28)
            {
              v10 = v28;
              CFRelease(v27);
              goto LABEL_29;
            }

            v10 = sub_23EBD89EC(a1, @"kSBSCacheKey_ScanRecordsMerged", v27);
            cf = v27;
            CFRelease(v27);
            if (v10)
            {
              goto LABEL_29;
            }

            goto LABEL_12;
          }
        }

        else
        {
          MutableCopy = CFArrayCreateMutable(v19, 1, MEMORY[0x277CBF128]);
          if (MutableCopy)
          {
            goto LABEL_25;
          }
        }
      }
    }

LABEL_28:
    v10 = 4294960568;
  }

LABEL_29:
  if (v31)
  {
    CFRelease(v31);
    v31 = 0;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v10;
}

uint64_t sub_23EBDB10C(CFArrayRef theArray, const char *a2, const __CFString *a3, CFMutableArrayRef *a4)
{
  v4 = 4294960591;
  if (!theArray)
  {
    return v4;
  }

  if (!a4)
  {
    return v4;
  }

  v6 = a3;
  if (!a2 && !a3)
  {
    return v4;
  }

  Count = CFArrayGetCount(theArray);
  if (!Count)
  {
    return 4294960569;
  }

  v10 = Count;
  v11 = *MEMORY[0x277CBECE8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  if (!Mutable)
  {
    return 4294960568;
  }

  v18 = Mutable;
  v29 = 0;
  if (v10 >= 1)
  {
    for (i = 0; v10 != i; ++i)
    {
      sub_23EB6FF14(theArray, &v29, "[*]", v13, v14, v15, v16, v17, i);
      if (v20)
      {
LABEL_24:
        v4 = v20;
        goto LABEL_27;
      }

      v27 = v29;
      if (!v29)
      {
        v4 = 4294960568;
LABEL_27:
        CFRelease(v18);
        return v4;
      }

      if (v6)
      {
        if (sub_23EB6B600(v6, v29, v21, v22, v23, v24, v25, v26))
        {
          v6 = 0;
          continue;
        }

        v27 = v29;
      }

      if (!sub_23EC0FB00(v27, a2))
      {
        v20 = sub_23EB6FDFC(v11, v18, "%O", v13, v14, v15, v16, v17, v29);
        if (v20)
        {
          goto LABEL_24;
        }
      }
    }
  }

  if (!CFArrayGetCount(v18))
  {
    v4 = 4294960569;
    goto LABEL_27;
  }

  v4 = 0;
  *a4 = v18;
  return v4;
}

uint64_t sub_23EBDB28C(uint64_t a1, CFStringRef theString1, CFTypeRef *a3)
{
  cf = 0;
  v26 = 0;
  v3 = 4294960591;
  if (!theString1 || !a3)
  {
    return v3;
  }

  if (!*(a1 + 56))
  {
    goto LABEL_16;
  }

  if (CFStringCompare(theString1, @"kSBSCacheKey_BrowseRecords", 0))
  {
    if (CFStringCompare(theString1, @"kSBSCacheKey_BaseSettings", 0) == kCFCompareEqualTo)
    {
      goto LABEL_16;
    }

    sub_23EB6FF14(*(a1 + 56), &v26, "%kO", v12, v13, v14, v15, v16, theString1);
    goto LABEL_11;
  }

  v18 = sub_23EBEBA44(*(a1 + 88), &cf, 0, v7, v8, v9, v10, v11);
  if (v18 == -6727)
  {
    goto LABEL_10;
  }

  v3 = v18;
  if (v18)
  {
    goto LABEL_16;
  }

  if (cf)
  {
LABEL_10:
    sub_23EB6FF14(*(a1 + 56), &v26, "%kO.%kO", v19, v20, v21, v22, v23, theString1);
LABEL_11:
    if (v17)
    {
      v3 = v17;
    }

    else if (v26)
    {
      v3 = 0;
      *a3 = v26;
      v26 = 0;
    }

    else
    {
      v3 = 4294960568;
    }

LABEL_16:
    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    goto LABEL_18;
  }

  v3 = 4294960568;
LABEL_18:
  if (v26)
  {
    CFRelease(v26);
  }

  return v3;
}

uint64_t sub_23EBDB3B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_27E382BC8 <= 800 && (dword_27E382BC8 != -1 || sub_23EB74AC8(&dword_27E382BC8, 0x320u)))
  {
    sub_23EB75374(&dword_27E382BC8, "OSStatus _SendResetContextCommand(StepByStepContextRef)", 800, " \n", a5, a6, a7, a8, v24);
  }

  context = 0;
  v14 = sub_23EBE9E2C(*(a1 + 88), &context);
  v15 = context;
  if (!v14)
  {
    if (!context)
    {
      return 4294960568;
    }

    v17 = *(context + 3);
    if (!v17)
    {
      v14 = 4294960591;
      goto LABEL_7;
    }

    v14 = sub_23EB6FDFC(*MEMORY[0x277CBECE8], v17, "%ks=%i", v9, v10, v11, v12, v13, "kBSAssistantCallbackKey_SBS_SBSStep");
    v15 = context;
    if (!v14)
    {
      v14 = sub_23EBEA814(context, 1, v18, v19, v20, v21, v22, v23);
      v15 = context;
    }
  }

  if (v15)
  {
LABEL_7:
    sub_23EBE9F5C(v15);
  }

  return v14;
}

uint64_t sub_23EBDB4B8(uint64_t *a1, CFArrayRef *a2)
{
  theArray = 0;
  if (!a2)
  {
    return 4294960591;
  }

  v4 = sub_23EBDB28C(a1, @"kSBSCacheKey_TargetRemoteBrowseRecords", &theArray);
  if (v4 != -6727)
  {
    v9 = v4;
    if (!v4)
    {
      v10 = theArray;
      if (!theArray)
      {
        return 4294960568;
      }

      v9 = 0;
      goto LABEL_9;
    }

    goto LABEL_21;
  }

  v10 = theArray;
  if (theArray)
  {
    v9 = 4294960569;
LABEL_9:
    *a2 = v10;
    return v9;
  }

  cf = 0;
  sub_23EBEAB18(a1[11], 3, 0, 0, v5, v6, v7, v8);
  v9 = sub_23EBB7360(*a1, @"local.", @"_airport._tcp", @"wan", 2u, 1, &cf);
  sub_23EBEAB18(a1[11], 4, 0, 0, v11, v12, v13, v14);
  if (!v9)
  {
    if (!cf)
    {
      goto LABEL_20;
    }

    v9 = sub_23EB6B2C8(cf, &theArray);
    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    if (v9)
    {
      goto LABEL_21;
    }

    if (theArray)
    {
      if (CFArrayGetCount(theArray))
      {
        v9 = sub_23EBD89EC(a1, @"kSBSCacheKey_TargetRemoteBrowseRecords", theArray);
        CFRelease(theArray);
        if (!v9)
        {
          v10 = theArray;
          goto LABEL_9;
        }
      }

      else
      {
        v9 = 4294960569;
      }
    }

    else
    {
LABEL_20:
      v9 = 4294960568;
    }
  }

LABEL_21:
  if (theArray)
  {
    CFRelease(theArray);
  }

  return v9;
}

uint64_t sub_23EBDB638(uint64_t a1, int a2, void *a3)
{
  cf = 0;
  if (!a3)
  {
    return 4294960591;
  }

  v6 = sub_23EBDB28C(a1, @"kSBSCacheKey_BrowseRecords", &cf);
  if (v6 == -6727)
  {
    v13 = cf;
    if (cf)
    {
      v12 = 4294960569;
      goto LABEL_9;
    }

    if (a2 && (v14 = sub_23EBEC174(*(a1 + 88), 8), v14) || (v14 = sub_23EBED960(*(a1 + 88), 15, &cf, v7, v8, v9, v10, v11), v14))
    {
      v12 = v14;
    }

    else
    {
      if (!cf)
      {
        return 4294960568;
      }

      v12 = sub_23EBD89EC(a1, @"kSBSCacheKey_BrowseRecords", cf);
      CFRelease(cf);
      if (!v12)
      {
        v13 = cf;
        goto LABEL_9;
      }
    }
  }

  else
  {
    v12 = v6;
    if (!v6)
    {
      v13 = cf;
      if (cf)
      {
        v12 = 0;
LABEL_9:
        *a3 = v13;
        return v12;
      }

      return 4294960568;
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v12;
}

uint64_t sub_23EBDB73C(const __CFArray *a1, const __CFArray *a2, __CFArray **a3)
{
  v3 = 4294960591;
  if (a1 && a3)
  {
    Count = CFArrayGetCount(a1);
    if (Count && (v8 = Count, CFArrayGetCount(a2)))
    {
      v9 = *MEMORY[0x277CBECE8];
      Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
      if (Mutable)
      {
        v16 = Mutable;
        v28 = 0;
        if (v8 >= 1)
        {
          v17 = 0;
          while (1)
          {
            sub_23EB6FF14(a1, &v28, "[*].%kO.%kO", v11, v12, v13, v14, v15, v17);
            if (v18 != -6727)
            {
              v3 = v18;
              if (v18)
              {
                goto LABEL_23;
              }

              if (!v28)
              {
LABEL_21:
                v3 = 4294960568;
                goto LABEL_23;
              }

              v19 = sub_23EB6B3A8(a2, v28);
              if (v19 != -1)
              {
                ValueAtIndex = CFArrayGetValueAtIndex(a2, v19);
                if (!ValueAtIndex)
                {
                  goto LABEL_21;
                }

                v26 = sub_23EB6FDFC(v9, v16, "%O", v21, v22, v23, v24, v25, ValueAtIndex);
                if (v26)
                {
                  break;
                }
              }
            }

            if (v8 == ++v17)
            {
              goto LABEL_15;
            }
          }

          v3 = v26;
          goto LABEL_23;
        }

LABEL_15:
        if (!CFArrayGetCount(v16))
        {
          v3 = 4294960569;
LABEL_23:
          CFRelease(v16);
          return v3;
        }

        v3 = 0;
        *a3 = v16;
      }

      else
      {
        return 4294960568;
      }
    }

    else
    {
      return 4294960569;
    }
  }

  return v3;
}

uint64_t sub_23EBDB8C4(uint64_t a1, CFArrayRef theArray, const __CFString *a3, int a4, int a5, int a6, const __CFString *a7, CFMutableArrayRef *a8)
{
  if (!a8)
  {
    return 4294960591;
  }

  Count = CFArrayGetCount(theArray);
  if (!Count)
  {
    return 4294960569;
  }

  v17 = Count;
  v72 = *MEMORY[0x277CBECE8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  if (!Mutable)
  {
    return 4294960568;
  }

  v24 = Mutable;
  v68 = a1;
  v71 = a6;
  v70 = a7;
  v73 = 0;
  if (v17 >= 1)
  {
    v25 = 0;
    v26 = 0;
    v69 = Mutable;
    while (1)
    {
      sub_23EB6FF14(theArray, &v73, "[*]", v19, v20, v21, v22, v23, v26);
      if (v27)
      {
LABEL_73:
        v64 = v27;
        goto LABEL_76;
      }

      if (!v73)
      {
        v64 = 4294960568;
LABEL_76:
        CFRelease(v24);
        return v64;
      }

      if (a5)
      {
        v25 = sub_23EB6A2C0(v73, v28, v29, v19, v20, v21, v22, v23);
      }

      if (a3 && sub_23EB6B674(a3, v73, v29, v19, v20, v21, v22, v23))
      {
        a3 = 0;
        goto LABEL_57;
      }

      if (a4 && !sub_23EB6AF6C(v73, v28, v29, v19, v20, v21, v22, v23))
      {
        if (dword_27E382BC8 > 800 || dword_27E382BC8 == -1 && !sub_23EB74AC8(&dword_27E382BC8, 0x320u))
        {
          goto LABEL_57;
        }

        v30 = "Skipping non-wireless %@\n";
LABEL_33:
        v42 = sub_23EB6AE14(v73, v28, v29, v19, v20, v21, v22, v23);
        sub_23EB75374(&dword_27E382BC8, "OSStatus _CopyNarrowedDownBrowseRecords(StepByStepContextRef, CFArrayRef, CFDictionaryRef, Boolean, Boolean, Boolean, CFStringRef, CFArrayRef *)", 800, v30, v43, v44, v45, v46, v42);
        v24 = v69;
        goto LABEL_57;
      }

      if (a5 && (v25 == 3 || v25 == 102 || sub_23EB6C138(v73, v28, v29, v19, v20, v21, v22, v23)))
      {
        if (dword_27E382BC8 > 800 || dword_27E382BC8 == -1 && !sub_23EB74AC8(&dword_27E382BC8, 0x320u))
        {
          goto LABEL_57;
        }

        v30 = "Skipping non-extendable %@\n";
        goto LABEL_33;
      }

      if (v71)
      {
        v31 = v73;
        if (v73)
        {
          if (*(v68 + 8))
          {
            break;
          }
        }
      }

LABEL_52:
      v56 = v73;
      if (v70)
      {
        v59 = sub_23EB6A394(v73, v70, v29, v19, v20, v21, v22, v23);
        v56 = v73;
        if (!v59)
        {
          if (!sub_23EB6A560(v73, v57, v58, v19, v20, v21, v22, v23))
          {
            goto LABEL_57;
          }

          v56 = v73;
        }
      }

      v27 = sub_23EB6FDFC(v72, v24, "%O", v19, v20, v21, v22, v23, v56);
      if (v27)
      {
        goto LABEL_73;
      }

LABEL_57:
      if (v17 == ++v26)
      {
        goto LABEL_71;
      }
    }

    v32 = sub_23EB6AF6C(v73, v28, v29, v19, v20, v21, v22, v23);
    if (v32 && (v40 = v32, CFStringGetLength(v32)))
    {
      v41 = sub_23EC0F96C(v40, 3, v34);
    }

    else
    {
      v47 = sub_23EB6ADC8(v31, v33, v34, v35, v36, v37, v38, v39);
      v48 = v47;
      if (!v47)
      {
        goto LABEL_38;
      }

      if (!CFStringGetLength(v47))
      {
        v48 = 0;
LABEL_38:
        if (sub_23EBB4248(*(v68 + 8), 1852787795))
        {
          v74 = 0;
          if (v48)
          {
            if (sub_23EC0F8D8(v48, &v74, 0) && (v74 & 0xFFFFFFFE) == 2)
            {
              v24 = v69;
              if (dword_27E382BC8 <= 800 && (dword_27E382BC8 != -1 || sub_23EB74AC8(&dword_27E382BC8, 0x320u)))
              {
                v66 = sub_23EB6AE14(v31, v28, v29, v19, v20, v21, v22, v23);
                sub_23EB75374(&dword_27E382BC8, "Boolean _IsSourceBaseReplaceable(StepByStepContextRef, CFDictionaryRef)", 800, "This base is irreplaceable because it's WEP %@\n", v51, v52, v53, v54, v66);
              }

LABEL_64:
              if (dword_27E382BC8 > 800 || dword_27E382BC8 == -1 && !sub_23EB74AC8(&dword_27E382BC8, 0x320u))
              {
                goto LABEL_57;
              }

              v30 = "Skipping irreplaceable %@\n";
              goto LABEL_33;
            }
          }
        }

        v24 = v69;
        if (!sub_23EB6C138(v31, v28, v29, v19, v20, v21, v22, v23) && sub_23EB6AFB8(v31, v55, v29, v19, v20, v21, v22, v23) == 1)
        {
          if (!sub_23EBB4248(*(v68 + 8), 1112757313) || (v74 = 0, !sub_23EBB3F7C(*(v68 + 8), 1937326416, &v74)) && v74 >= 0x77 && !sub_23EBB4248(*(v68 + 8), 1632923251))
          {
            if (dword_27E382BC8 > 800)
            {
              goto LABEL_57;
            }

            if (dword_27E382BC8 != -1 || sub_23EB74AC8(&dword_27E382BC8, 0x320u))
            {
              v67 = sub_23EB6AE14(v31, v28, v29, v19, v20, v21, v22, v23);
              sub_23EB75374(&dword_27E382BC8, "Boolean _IsSourceBaseReplaceable(StepByStepContextRef, CFDictionaryRef)", 800, "This base is irreplaceable because it's a STA %@\n", v60, v61, v62, v63, v67);
            }

            goto LABEL_64;
          }
        }

        goto LABEL_52;
      }

      v41 = sub_23EC0F9B4(v48, v49, v50);
    }

    v48 = v41;
    goto LABEL_38;
  }

LABEL_71:
  if (!CFArrayGetCount(v24))
  {
    v64 = 4294960569;
    goto LABEL_76;
  }

  v64 = 0;
  *a8 = v24;
  return v64;
}

BOOL sub_23EBDBD64(uint64_t *a1, const __CFString *a2)
{
  if (!a2)
  {
    return 0;
  }

  v10 = 0;
  v11 = 0;
  if (sub_23EBDB4B8(a1, &v10))
  {
    return 0;
  }

  sub_23EB6FF14(a2, &v11, "%kO.%kO", v3, v4, v5, v6, v7, @"txt");
  return !v8 && v11 && sub_23EB6B3A8(v10, v11) != -1;
}

uint64_t sub_23EBDBDF8(const __CFArray *a1, const __CFString *a2, __CFArray **a3)
{
  v3 = 4294960591;
  if (a2 && a3)
  {
    v5 = a2;
    Count = CFArrayGetCount(a1);
    if (Count)
    {
      v8 = Count;
      v9 = *MEMORY[0x277CBECE8];
      Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
      if (Mutable)
      {
        v16 = Mutable;
        v26 = 0;
        v27 = 0;
        if (v8 >= 1)
        {
          v17 = 0;
          while (1)
          {
            sub_23EB6FF14(a1, &v27, "[*]", v11, v12, v13, v14, v15, v17);
            if (v18)
            {
              goto LABEL_21;
            }

            if (!v27)
            {
              break;
            }

            sub_23EB6FF14(v27, &v26, "%ks", v19, v20, v21, v22, v23, "macAddress");
            if (v18)
            {
LABEL_21:
              v3 = v18;
              goto LABEL_24;
            }

            if (!v26)
            {
              break;
            }

            if (v5 && sub_23EB6B424(v5, v26, v24, v11, v12, v13, v14, v15))
            {
              v5 = 0;
            }

            else
            {
              v18 = sub_23EB6FDFC(v9, v16, "%O", v11, v12, v13, v14, v15, v27);
              if (v18)
              {
                goto LABEL_21;
              }
            }

            if (v8 == ++v17)
            {
              goto LABEL_17;
            }
          }

          v3 = 4294960568;
          goto LABEL_24;
        }

LABEL_17:
        if (!CFArrayGetCount(v16))
        {
          v3 = 4294960569;
LABEL_24:
          CFRelease(v16);
          return v3;
        }

        v3 = 0;
        *a3 = v16;
      }

      else
      {
        return 4294960568;
      }
    }

    else
    {
      return 4294960569;
    }
  }

  return v3;
}

__CFString *sub_23EBDBFC4(const __CFString *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = &stru_285145FE8;
  v10 = &stru_285145FE8;
  if (a1)
  {
    sub_23EB6FF14(a1, &v10, "%ks.%ks", a4, a5, a6, a7, a8, "txt");
    return v10;
  }

  return v8;
}

void sub_23EBDC01C(uint64_t a1, CFArrayRef theArray, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v64 = 0;
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
    if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
    {
      sub_23EB75374(&dword_27E382C08, "void dlog_user__BaseStationArray(const char *, CFArrayRef)", 800, "%s BaseStation list count: %d\n", a5, a6, a7, a8, a1);
    }

    if (Count)
    {
      v11 = *MEMORY[0x277CBECE8];
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 8, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (Mutable)
      {
        if (Count < 1)
        {
LABEL_62:
          CFRelease(Mutable);
          return;
        }

        v14 = 0;
        while (1)
        {
          sub_23EB6FF14(theArray, &v64, "[*].%ks", v12, a5, a6, a7, a8, v14);
          if (v20)
          {
            v21 = 1;
          }

          else
          {
            v21 = v64 == 0;
          }

          if (v21)
          {
            v64 = @"<Not found>";
          }

          v22 = sub_23EB6FDFC(v11, Mutable, "%ks=%O", v15, v16, v17, v18, v19, "name");
          if (v22)
          {
            break;
          }

          sub_23EB6FF14(theArray, &v64, "[*].%ks.%kC", v23, a5, a6, a7, a8, v14);
          if (v29 || !v64)
          {
            v64 = @"<Not found>";
          }

          v22 = sub_23EB6FDFC(v11, Mutable, "%kC=%O", v24, v25, v26, v27, v28, 1937327724);
          if (v22)
          {
            break;
          }

          sub_23EB6FF14(theArray, &v64, "[*].%ks.%kC", v30, a5, a6, a7, a8, v14);
          if (v36 || !v64)
          {
            v64 = @"<Not found>";
          }

          v22 = sub_23EB6FDFC(v11, Mutable, "%kC=%O", v31, v32, v33, v34, v35, 1937326416);
          if (v22)
          {
            break;
          }

          sub_23EB6FF14(theArray, &v64, "[*].%ks.%ks", v37, a5, a6, a7, a8, v14);
          if (v43 || !v64)
          {
            v64 = @"<Not found>";
          }

          v22 = sub_23EB6FDFC(v11, Mutable, "%ks=%O", v38, v39, v40, v41, v42, "raMA");
          if (v22)
          {
            break;
          }

          sub_23EB6FF14(theArray, &v64, "[*].%ks.%ks", v44, a5, a6, a7, a8, v14);
          if (v45 != -6727)
          {
            if (v45 || !v64)
            {
              v64 = @"<Not found>";
            }

            v22 = sub_23EB6FDFC(v11, Mutable, "%ks=%O", v46, a5, a6, a7, a8, "raM2");
            if (v22)
            {
              break;
            }
          }

          sub_23EB6FF14(theArray, &v64, "[*].%ks.%ks", v46, a5, a6, a7, a8, v14);
          if (v52 || !v64)
          {
            v64 = @"<Not found>";
          }

          v22 = sub_23EB6FDFC(v11, Mutable, "%ks=%O", v47, v48, v49, v50, v51, "raNm");
          if (v22)
          {
            break;
          }

          sub_23EB6FF14(theArray, &v64, "[*].%ks.%ks", v53, a5, a6, a7, a8, v14);
          if (v59 || !v64)
          {
            v64 = @"<Not found>";
          }

          v22 = sub_23EB6FDFC(v11, Mutable, "%ks=%O", v54, v55, v56, v57, v58, "syVs");
          if (v22)
          {
            break;
          }

          sub_23EB6FF14(theArray, &v64, "[*].%ks.%ks", v60, a5, a6, a7, a8, v14);
          if (v61 != -6727)
          {
            if (v61 || !v64)
            {
              v64 = @"<Not found>";
            }

            v22 = sub_23EB6FDFC(v11, Mutable, "%ks=%O", v62, a5, a6, a7, a8, "prob");
            if (v22)
            {
              break;
            }
          }

          if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
          {
            sub_23EB75374(&dword_27E382C08, "void dlog_user__BaseStationArray(const char *, CFArrayRef)", 800, "\t%@", a5, a6, a7, a8, Mutable);
          }

          CFDictionaryRemoveAllValues(Mutable);
          if (Count == ++v14)
          {
            goto LABEL_61;
          }
        }

        v63 = v22;
      }

      else
      {
        v63 = 4294960568;
      }
    }

    else
    {
      Mutable = 0;
      v63 = 4294960569;
    }
  }

  else
  {
    Mutable = 0;
    v63 = 4294960591;
  }

  if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C08, "void dlog_user__BaseStationArray(const char *, CFArrayRef)", 800, "err: %d index: %d", a5, a6, a7, a8, v63);
  }

LABEL_61:
  if (Mutable)
  {
    goto LABEL_62;
  }
}

void sub_23EBDC50C(uint64_t a1, CFArrayRef theArray, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v52 = 0;
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
    if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
    {
      sub_23EB75374(&dword_27E382C08, "void dlog_user__NetworkArray(const char *, CFArrayRef)", 800, "%sNetwork list count: %d\n", a5, a6, a7, a8, a1);
    }

    if (Count)
    {
      v11 = *MEMORY[0x277CBECE8];
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 3, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (Mutable)
      {
        if (Count < 1)
        {
LABEL_50:
          CFRelease(Mutable);
          return;
        }

        v14 = 0;
        while (1)
        {
          sub_23EB6FF14(theArray, &v52, "[*].%kO", v12, a5, a6, a7, a8, v14);
          if (v20)
          {
            v21 = 1;
          }

          else
          {
            v21 = v52 == 0;
          }

          if (v21)
          {
            v52 = @"<Not found>";
          }

          v22 = sub_23EB6FDFC(v11, Mutable, "%kO=%O", v15, v16, v17, v18, v19, @"SSID_STR");
          if (v22)
          {
            break;
          }

          sub_23EB6FF14(theArray, &v52, "[*].%kO", v23, a5, a6, a7, a8, v14);
          if (v24 == -6727)
          {
            sub_23EB6FF14(theArray, &v52, "[*].%kO", v25, v26, v27, v28, v29, v14);
          }

          if (v24 || !v52)
          {
            v52 = @"<Not found>";
          }

          v22 = sub_23EB6FDFC(v11, Mutable, "%kO=%O", v25, v26, v27, v28, v29, @"BSSID");
          if (v22)
          {
            break;
          }

          sub_23EB6FF14(theArray, &v52, "[*].%kO", v30, a5, a6, a7, a8, v14);
          if (v36 || !v52)
          {
            v52 = @"<Not found>";
          }

          v22 = sub_23EB6FDFC(v11, Mutable, "%kO=%O", v31, v32, v33, v34, v35, @"CHANNEL");
          if (v22)
          {
            break;
          }

          sub_23EB6FF14(theArray, &v52, "[*].%kO", v37, a5, a6, a7, a8, v14);
          if (v43 || !v52)
          {
            v52 = @"<Not found>";
          }

          v22 = sub_23EB6FDFC(v11, Mutable, "%kO=%O", v38, v39, v40, v41, v42, @"IE");
          if (v22)
          {
            break;
          }

          sub_23EB6FF14(theArray, &v52, "[*].%kO", v44, a5, a6, a7, a8, v14);
          if (v50 || !v52)
          {
            v52 = @"<Not found>";
          }

          v22 = sub_23EB6FDFC(v11, Mutable, "%kO=%O", v45, v46, v47, v48, v49, @"APPLE_IE");
          if (v22)
          {
            break;
          }

          if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
          {
            sub_23EB75374(&dword_27E382C08, "void dlog_user__NetworkArray(const char *, CFArrayRef)", 800, "\t%@", a5, a6, a7, a8, Mutable);
          }

          CFDictionaryRemoveAllValues(Mutable);
          if (Count == ++v14)
          {
            goto LABEL_49;
          }
        }

        v51 = v22;
      }

      else
      {
        v51 = 4294960568;
      }
    }

    else
    {
      Mutable = 0;
      v51 = 4294960569;
    }
  }

  else
  {
    Mutable = 0;
    v51 = 4294960591;
  }

  if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C08, "void dlog_user__NetworkArray(const char *, CFArrayRef)", 800, "err: %d index: %d", a5, a6, a7, a8, v51);
  }

LABEL_49:
  if (Mutable)
  {
    goto LABEL_50;
  }
}

void sub_23EBDC8C0(uint64_t a1, CFDictionaryRef theDict, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v21 = 0;
  v22 = 0;
  if (!theDict)
  {
    Mutable = 0;
    v14 = 4294960591;
    goto LABEL_13;
  }

  Count = CFDictionaryGetCount(theDict);
  if (!Count)
  {
    Mutable = 0;
    v14 = 4294960569;
    goto LABEL_13;
  }

  v11 = *MEMORY[0x277CBECE8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], Count, MEMORY[0x277CBF128]);
  if (!Mutable)
  {
LABEL_12:
    v14 = 4294960568;
    goto LABEL_13;
  }

  v13 = sub_23EB71A18(theDict, &v22);
  if (!v13)
  {
    if (v22)
    {
      while (sub_23EB71AC0(v22, 0, &v21))
      {
        v13 = sub_23EB6FDFC(v11, Mutable, "%O", v16, v17, v18, v19, v20, v21);
        if (v13)
        {
          goto LABEL_5;
        }
      }

      sub_23EBDC01C(a1, Mutable, v15, v16, v17, v18, v19, v20);
      goto LABEL_18;
    }

    goto LABEL_12;
  }

LABEL_5:
  v14 = v13;
LABEL_13:
  if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C08, "void dlog_user__BaseStationDictionaryList(const char *, CFDictionaryRef)", 800, "err: %d", a5, a6, a7, a8, v14);
  }

  if (Mutable)
  {
LABEL_18:
    CFRelease(Mutable);
  }

  if (v22)
  {
    sub_23EB71AB4(v22);
  }
}

void sub_23EBDCA2C(uint64_t a1, CFDictionaryRef theDict, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v21 = 0;
  v22 = 0;
  if (!theDict)
  {
    Mutable = 0;
    v14 = 4294960591;
    goto LABEL_13;
  }

  Count = CFDictionaryGetCount(theDict);
  if (!Count)
  {
    Mutable = 0;
    v14 = 4294960569;
    goto LABEL_13;
  }

  v11 = *MEMORY[0x277CBECE8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], Count, MEMORY[0x277CBF128]);
  if (!Mutable)
  {
LABEL_12:
    v14 = 4294960568;
    goto LABEL_13;
  }

  v13 = sub_23EB71A18(theDict, &v22);
  if (!v13)
  {
    if (v22)
    {
      while (sub_23EB71AC0(v22, 0, &v21))
      {
        v13 = sub_23EB6FDFC(v11, Mutable, "%O", v16, v17, v18, v19, v20, v21);
        if (v13)
        {
          goto LABEL_5;
        }
      }

      sub_23EBDC50C(a1, Mutable, v15, v16, v17, v18, v19, v20);
      goto LABEL_18;
    }

    goto LABEL_12;
  }

LABEL_5:
  v14 = v13;
LABEL_13:
  if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C08, "void dlog_user__NetworkDictionaryList(const char *, CFDictionaryRef)", 800, "err: %d ", a5, a6, a7, a8, v14);
  }

  if (Mutable)
  {
LABEL_18:
    CFRelease(Mutable);
  }

  if (v22)
  {
    sub_23EB71AB4(v22);
  }
}

void sub_23EBDCB98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    v10 = *MEMORY[0x277CBECE8];
    Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 1, MEMORY[0x277CBF128]);
    if (Mutable)
    {
      v13 = sub_23EB6FDFC(v10, Mutable, "%O", v11, a5, a6, a7, a8, a2);
      if (!v13)
      {
        sub_23EBDC01C(a1, Mutable, v14, v15, a5, a6, a7, a8);
LABEL_14:

        CFRelease(Mutable);
        return;
      }

      v16 = v13;
    }

    else
    {
      v16 = 4294960568;
    }
  }

  else
  {
    Mutable = 0;
    v16 = 4294960591;
  }

  if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C08, "void dlog_user__BaseStationDictionary(const char *, CFDictionaryRef)", 800, "err: %d", a5, a6, a7, a8, v16);
  }

  if (Mutable)
  {
    goto LABEL_14;
  }
}

void sub_23EBDCCB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    v10 = *MEMORY[0x277CBECE8];
    Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 1, MEMORY[0x277CBF128]);
    if (Mutable)
    {
      v13 = sub_23EB6FDFC(v10, Mutable, "%O", v11, a5, a6, a7, a8, a2);
      if (!v13)
      {
        sub_23EBDC50C(a1, Mutable, v14, v15, a5, a6, a7, a8);
LABEL_14:

        CFRelease(Mutable);
        return;
      }

      v16 = v13;
    }

    else
    {
      v16 = 4294960568;
    }
  }

  else
  {
    Mutable = 0;
    v16 = 4294960591;
  }

  if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C08, "void dlog_user__NetworkDictionary(const char *, CFDictionaryRef)", 800, "err: %d", a5, a6, a7, a8, v16);
  }

  if (Mutable)
  {
    goto LABEL_14;
  }
}

uint64_t sub_23EBDCDD0(const __CFString *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C08, "Boolean _BaseStationHasPPPoEAvailable(CFDictionaryRef)", 800, "\n", a5, a6, a7, a8, v11);
  }

  if (a1 && (v12 = 0, sub_23EB6FF14(a1, &v12, "%ks.%kC:int", a4, a5, a6, a7, a8, "txt"), !v9))
  {
    return (v12 >> 10) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23EBDCE88(const __CFString *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C08, "Boolean _BaseStationHasDHCPLease(CFDictionaryRef)", 800, "\n", a5, a6, a7, a8, v11);
  }

  if (a1 && (v12 = 0, sub_23EB6FF14(a1, &v12, "%ks.%kC:int", a4, a5, a6, a7, a8, "txt"), !v9))
  {
    return (v12 >> 11) & 1;
  }

  else
  {
    return 0;
  }
}