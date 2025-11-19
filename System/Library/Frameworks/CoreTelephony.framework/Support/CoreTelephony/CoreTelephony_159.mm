void sub_1013A1D48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, int a23, const void *a24, const void *a25, const void *a26, __int16 a27, char a28, char a29, int a30, const void *a31, uint64_t a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  sub_100005978(&a31);
  if (*(v39 - 105) < 0)
  {
    operator delete(*(v39 - 128));
  }

  if (a21 < 0)
  {
    operator delete(__p);
  }

  sub_100005978(&a24);
  sub_100005978(&a25);
  if (v38)
  {
    sub_100004A34(v38);
  }

  if (a27 == 1)
  {
    sub_100005978(&a26);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1013A1ECC(void *a1, uint64_t a2, uint64_t a3, unsigned int a4, int a5)
{
  *a1 = 0;
  a1[1] = 0;
  (*(**(a2 + 120) + 24))(cf);
  v9 = *cf;
  LODWORD(v32) = 0;
  if (*cf)
  {
    v10 = CFGetTypeID(*cf);
    if (v10 == CFNumberGetTypeID())
    {
      ctu::cf::assign(&v32, v9, v11);
    }
  }

  v12 = v32;
  result = sub_10000A1EC(cf);
  if (a5)
  {
    v14 = v12 | a4;
  }

  else
  {
    v14 = v12 & ~a4;
  }

  if (v14 != v12)
  {
    v15 = *(a2 + 40);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(a3 + 23);
      v18 = *a3;
      v17 = *(a3 + 8);
      v19 = asString();
      v20 = v16;
      *cf = 136316674;
      *&cf[4] = "";
      if (v16 >= 0)
      {
        v21 = a3;
      }

      else
      {
        v20 = v17;
        v21 = v18;
      }

      *&cf[14] = "";
      v22 = "data-only";
      if (!v14)
      {
        v22 = "voice+data";
      }

      *&cf[12] = 2080;
      v23 = v20 == 0;
      v24 = "<invalid>";
      v34 = 2080;
      if (!v23)
      {
        v24 = v21;
      }

      v35 = v24;
      v36 = 2080;
      v37 = v22;
      v38 = 2080;
      v39 = v19;
      v40 = 1024;
      v41 = v12;
      v42 = 1024;
      v43 = v14;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I %s%sPersonality %s marked as %s (update reason:%s, mask:0x%X->0x%X)", cf, 0x40u);
    }

    v25 = *(a2 + 120);
    if (v14)
    {
      v32 = 0;
      *cf = v14;
      v26 = CFNumberCreate(kCFAllocatorDefault, kCFNumberLongLongType, cf);
      if (v26)
      {
        v32 = v26;
        *cf = 0;
        sub_100029A48(cf);
        v27 = v32;
      }

      else
      {
        v27 = 0;
      }

      v32 = 0;
      sub_100029A48(&v32);
      (*(*v25 + 16))(v25, a3, @"data-only-plan", v27, @"info", 0, 0, 0, v27);
      result = sub_100029A48(&v31);
    }

    else
    {
      result = (*(*v25 + 32))(*(a2 + 120), a3, @"data-only-plan", @"info", 0, 0);
    }

    v28 = *(a2 + 656);
    v29 = *v28;
    v30 = v28[1];
    if (*v28 != v30)
    {
      while (1)
      {
        result = sub_100071DF8((*v29 + 24), a3);
        if (result)
        {
          if (!*(*v29 + 49))
          {
            result = isReal();
            if (result)
            {
              break;
            }
          }
        }

        v29 += 16;
        if (v29 == v30)
        {
          v29 = v30;
          break;
        }
      }

      v30 = *(*(a2 + 656) + 8);
    }

    if (v29 != v30)
    {
      *cf = 0;
      *&cf[8] = 0;
      sub_1004CA38C();
    }
  }

  return result;
}

void sub_1013A22B8(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (!*(a1 + 40))
      {
LABEL_40:
        sub_100004A34(v5);
        return;
      }

      v6 = (v3[52] + 16 * subscriber::simSlotAsInstance());
      v7 = v6[1];
      *v6 = 0;
      v6[1] = 0;
      if (v7)
      {
        sub_100004A34(v7);
      }

      v8 = v3[5];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = subscriber::asString();
        v10 = (a1 + 56);
        v11 = *(a1 + 79);
        v12 = v11;
        if ((v11 & 0x80u) != 0)
        {
          v11 = *(a1 + 64);
        }

        if (v12 < 0)
        {
          v10 = *(a1 + 56);
        }

        v24 = 136315906;
        v25 = "";
        v26 = 2080;
        if (!v11)
        {
          v10 = "<invalid>";
        }

        v27 = "";
        v28 = 2080;
        v29 = v9;
        v30 = 2080;
        v31 = v10;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%sUntrusted CB Timer for slot %s (%s) expired", &v24, 0x2Au);
      }

      v13 = v3[82];
      v14 = *v13;
      v15 = *(v13 + 8);
      if (v14 != v15)
      {
        while (*(*v14 + 49) || *(*v14 + 52) != *(a1 + 80))
        {
          v14 += 2;
          if (v14 == v15)
          {
            goto LABEL_35;
          }
        }
      }

      if (v14 == v15)
      {
LABEL_35:
        v16 = 0;
      }

      else
      {
        v17 = *v14;
        v16 = v14[1];
        if (v16)
        {
          atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v17 && sub_100071DF8((v17 + 24), (a1 + 56)))
        {
          if ((*(v17 + 48) & 1) == 0)
          {
            v18 = v3[56];
            if (v18)
            {
              v19 = *(a1 + 80);
              v20 = (v3 + 56);
              do
              {
                if (*(v18 + 32) >= v19)
                {
                  v20 = v18;
                }

                v18 = *(v18 + 8 * (*(v18 + 32) < v19));
              }

              while (v18);
              if (v20 != (v3 + 56) && v19 >= *(v20 + 8))
              {
                v21 = v3[5];
                if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
                {
                  v22 = subscriber::asString();
                  v24 = 136315650;
                  v25 = "";
                  v26 = 2080;
                  v27 = "";
                  v28 = 2080;
                  v29 = v22;
                  _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I %s%ssimulating CB event in case incorrect ICCID was caught on slot %s", &v24, 0x20u);
                  v19 = *(a1 + 80);
                }

                sub_10139F448(v3, v19, v20 + 64);
              }
            }
          }

          goto LABEL_38;
        }
      }

      v23 = v3[5];
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = 136315394;
        v25 = "";
        v26 = 2080;
        v27 = "";
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I %s%stimer ignored. Personality swapped", &v24, 0x16u);
      }

LABEL_38:
      if (v16)
      {
        sub_100004A34(v16);
      }

      goto LABEL_40;
    }
  }
}

void sub_1013A25B4(_Unwind_Exception *a1)
{
  if (v2)
  {
    sub_100004A34(v2);
  }

  sub_100004A34(v1);
  _Unwind_Resume(a1);
}

char *sub_1013A25E4(char *result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 5) = *(a2 + 40);
  *(result + 6) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  if (*(a2 + 79) < 0)
  {
    return sub_100005F2C(result + 56, *(a2 + 56), *(a2 + 64));
  }

  v3 = *(a2 + 56);
  *(result + 9) = *(a2 + 72);
  *(result + 56) = v3;
  return result;
}

void sub_1013A2648(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 48);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1013A2660(uint64_t a1)
{
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  v2 = *(a1 + 48);
  if (v2)
  {

    std::__shared_weak_count::__release_weak(v2);
  }
}

void sub_1013A26B4(uint64_t a1, uint64_t a2, char a3)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    __p[2] = *(a2 + 16);
  }

  v7 = a3;
  v5 = *(a1 + 16);
  if (v5)
  {
    if (std::__shared_weak_count::lock(v5))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_1013A2818(uint64_t a1, uint64_t a2, int a3, char a4)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    __p[2] = *(a2 + 16);
  }

  v9 = a3;
  v10 = a4;
  v7 = *(a1 + 16);
  if (v7)
  {
    if (std::__shared_weak_count::lock(v7))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_1013A2B04(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_1013A2B20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(v8, *a2, *(a2 + 8));
  }

  else
  {
    *v8 = *a2;
    v9 = *(a2 + 16);
  }

  if (*(a3 + 23) < 0)
  {
    sub_100005F2C(v10, *a3, *(a3 + 8));
  }

  else
  {
    *v10 = *a3;
    v11 = *(a3 + 16);
  }

  if (*(a4 + 23) < 0)
  {
    sub_100005F2C(__p, *a4, *(a4 + 8));
  }

  else
  {
    *__p = *a4;
    v13 = *(a4 + 16);
  }

  v7 = *(a1 + 16);
  if (v7)
  {
    if (std::__shared_weak_count::lock(v7))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_1013A2D28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1013A2D64(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v5 = *(a2 + 16);
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    if (std::__shared_weak_count::lock(v3))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_1013A2EB8(uint64_t a1, uint64_t a2, char a3)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    __p[2] = *(a2 + 16);
  }

  v7 = a3;
  v5 = *(a1 + 16);
  if (v5)
  {
    if (std::__shared_weak_count::lock(v5))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_1013A301C(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v5 = *(a2 + 16);
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    if (std::__shared_weak_count::lock(v3))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_1013A3170(uint64_t a1, uint64_t a2, char *a3)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    __p[2] = *(a2 + 16);
  }

  v7 = *a3;
  v5 = *(a1 + 16);
  if (v5)
  {
    if (std::__shared_weak_count::lock(v5))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_1013A32D8(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v5 = *(a2 + 16);
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    if (std::__shared_weak_count::lock(v3))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_1013A342C(uint64_t a1, uint64_t a2, char a3)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    __p[2] = *(a2 + 16);
  }

  v7 = a3;
  v5 = *(a1 + 16);
  if (v5)
  {
    if (std::__shared_weak_count::lock(v5))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_1013A3590(void *a1, uint64_t a2, const void *a3)
{
  cf = 0;
  if (a3)
  {
    v8 = a3;
    sub_1002A2218(&cf, &v8);
  }

  else
  {
    v5 = CFDictionaryCreate(0, 0, 0, 0, 0, 0);
    v6 = cf;
    cf = v5;
    v8 = v6;
    sub_10001021C(&v8);
  }

  v8 = a1;
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v10 = *(a2 + 16);
  }

  v11 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  v7 = a1[2];
  if (v7)
  {
    if (std::__shared_weak_count::lock(v7))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_1013A3754(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_10001021C(va);
  _Unwind_Resume(a1);
}

void sub_1013A377C(uint64_t a1@<X0>, void **a2@<X1>, const void **a3@<X8>)
{
  std::mutex::lock((a1 + 1232));
  v6 = *(a1 + 1304);
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = a1 + 1304;
  do
  {
    v8 = sub_1000068BC((v6 + 32), a2);
    if ((v8 & 0x80u) == 0)
    {
      v7 = v6;
    }

    v6 = *(v6 + ((v8 >> 4) & 8));
  }

  while (v6);
  if (v7 == a1 + 1304 || (sub_1000068BC(a2, (v7 + 32)) & 0x80) != 0)
  {
LABEL_9:
    *a3 = 0;
  }

  else
  {
    sub_100010024(a3, (v7 + 56));
  }

  std::mutex::unlock((a1 + 1232));
}

const void **sub_1013A3834@<X0>(uint64_t a1@<X0>, void *a2@<X2>, const void *a3@<X3>, const void **a4@<X8>)
{
  v16 = 0;
  (*(*a1 + 112))(&cf);
  v7 = cf;
  theDict = cf;
  if (cf)
  {
    CFRetain(cf);
    sub_10001021C(&cf);
    v8 = a2[1] - *a2;
    if (v8)
    {
      v9 = 0;
      v10 = v8 >> 3;
      v11 = (v8 >> 3) - 1;
      do
      {
        v12 = CFGetTypeID(v7);
        if (v12 != CFDictionaryGetTypeID() || v9 >= v10)
        {
          break;
        }

        if (v9 >= (a2[1] - *a2) >> 3)
        {
          sub_1002030E0();
        }

        cf = CFDictionaryGetValue(theDict, *(*a2 + 8 * v9));
        sub_1000673E0(&theDict, &cf);
        if (v11 == v9)
        {
          sub_1000420D0(&v16, &theDict);
        }

        ++v9;
        v7 = theDict;
      }

      while (theDict);
    }

    else
    {
      sub_1000420D0(&v16, &theDict);
    }
  }

  else
  {
    sub_10001021C(&cf);
  }

  if (v16)
  {
    sub_100060E84(a4, &v16);
  }

  else if (a3)
  {
    *a4 = a3;
    CFRetain(a3);
  }

  else
  {
    *a4 = 0;
  }

  sub_10000A1EC(&theDict);
  return sub_10000A1EC(&v16);
}

void sub_1013A39B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_10000A1EC(va);
  _Unwind_Resume(a1);
}

void sub_1013A39E0(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = *(a1 + 656);
  v11 = *v10;
  v12 = *(v10 + 8);
  if (*v10 != v12)
  {
    while (!sub_100071DF8((*v11 + 24), a2))
    {
      v11 += 2;
      if (v11 == v12)
      {
        v11 = v12;
        break;
      }
    }

    v12 = *(v10 + 8);
  }

  if (v11 == v12)
  {
    v13 = 0;
    goto LABEL_22;
  }

  v14 = *v11;
  v13 = v11[1];
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v14 || a3[1] == *a3)
  {
    goto LABEL_22;
  }

  v15 = *(v14 + 49);
  if ((v15 - 2) < 2)
  {
    (*(*a1 + 120))(a1, a2, a3, a4);
    goto LABEL_23;
  }

  if (v15 != 1)
  {
    if (!*(v14 + 49))
    {
      ServiceMap = Registry::getServiceMap(*(a1 + 64));
      v17 = ServiceMap;
      if ((v18 & 0x8000000000000000) != 0)
      {
        v19 = (v18 & 0x7FFFFFFFFFFFFFFFLL);
        v20 = 5381;
        do
        {
          v18 = v20;
          v21 = *v19++;
          v20 = (33 * v20) ^ v21;
        }

        while (v21);
      }

      std::mutex::lock(ServiceMap);
      v37 = v18;
      v22 = sub_100009510(&v17[1].__m_.__sig, &v37);
      if (v22)
      {
        v24 = v22[3];
        v23 = v22[4];
        if (v23)
        {
          atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
          std::mutex::unlock(v17);
          atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v23);
          if (!v24)
          {
            v25 = v23;
LABEL_50:
            sub_100004A34(v25);
            goto LABEL_22;
          }

          goto LABEL_43;
        }

        std::mutex::unlock(v17);
        if (v24)
        {
LABEL_43:
          (*(*v24 + 104))(v24, *(v14 + 52), 1, a3, a4, 0);
          if (!v23)
          {
            goto LABEL_23;
          }

          v36 = v23;
          goto LABEL_45;
        }
      }

      else
      {
        std::mutex::unlock(v17);
      }
    }

LABEL_22:
    *a5 = 0;
    goto LABEL_23;
  }

  v26 = Registry::getServiceMap(*(a1 + 64));
  v27 = v26;
  if ((v28 & 0x8000000000000000) != 0)
  {
    v29 = (v28 & 0x7FFFFFFFFFFFFFFFLL);
    v30 = 5381;
    do
    {
      v28 = v30;
      v31 = *v29++;
      v30 = (33 * v30) ^ v31;
    }

    while (v31);
  }

  std::mutex::lock(v26);
  v37 = v28;
  v32 = sub_100009510(&v27[1].__m_.__sig, &v37);
  if (v32)
  {
    v34 = v32[3];
    v33 = v32[4];
    if (v33)
    {
      atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v27);
      atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v33);
      v35 = 0;
      goto LABEL_36;
    }
  }

  else
  {
    v34 = 0;
  }

  std::mutex::unlock(v27);
  v33 = 0;
  v35 = 1;
LABEL_36:
  if (!v34)
  {
    goto LABEL_48;
  }

  v37 = 0;
  v38 = 0;
  (**v34)(&v37, v34, v14 + 24);
  if (!v37)
  {
    if (v38)
    {
      sub_100004A34(v38);
    }

LABEL_48:
    if ((v35 & 1) == 0)
    {
      v25 = v33;
      goto LABEL_50;
    }

    goto LABEL_22;
  }

  (*(*v37 + 120))(v37, a3, a4);
  if (v38)
  {
    sub_100004A34(v38);
  }

  if ((v35 & 1) == 0)
  {
    v36 = v33;
LABEL_45:
    sub_100004A34(v36);
  }

LABEL_23:
  if (v13)
  {
    sub_100004A34(v13);
  }
}

void sub_1013A3D34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  if ((v12 & 1) == 0)
  {
    sub_100004A34(v11);
  }

  if (v10)
  {
    sub_100004A34(v10);
  }

  _Unwind_Resume(exception_object);
}

const void **sub_1013A3D94(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = (*(*(v1 + 656) + 8) - **(v1 + 656)) >> 4;
    LODWORD(buf[0].__locale_) = 136315650;
    *(&buf[0].__locale_ + 4) = "";
    WORD2(buf[1].__locale_) = 2080;
    *(&buf[1].__locale_ + 6) = "";
    HIWORD(buf[2].__locale_) = 2048;
    buf[3].__locale_ = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s%sPersonalities: %zu items", buf, 0x20u);
  }

  v4 = *(v1 + 656);
  v5 = *v4;
  v188 = v4[1];
  v191 = v1;
  if (*v4 != v188)
  {
    do
    {
      v6 = *(*v5 + 49);
      if (*(*v5 + 49))
      {
        v7 = v6 == 3;
      }

      else
      {
        v7 = 1;
      }

      v8 = v7;
      memset(__p, 0, 24);
      memset(v199, 0, 24);
      v197 = 0;
      v198 = 0uLL;
      v250 = 0;
      v248 = 0u;
      v249 = 0u;
      v246 = 0u;
      v247 = 0u;
      v244 = 0u;
      v245 = 0u;
      v242 = 0u;
      v243 = 0u;
      v240 = 0u;
      v241 = 0u;
      v239 = 0u;
      memset(v238, 0, sizeof(v238));
      memset(buf, 0, sizeof(buf));
      sub_10000C320(buf);
      theDict = 0;
      v196 = 0uLL;
      if ((v6 == 3 || !v6) && isReal())
      {
        (*(**(v1 + 120) + 24))(v236);
        memset(cf, 0, sizeof(cf));
        ctu::cf::assign();
        v9 = cf[0];
        *&v234 = cf[1];
        *(&v234 + 7) = *(&cf[1] + 7);
        v10 = HIBYTE(cf[2]);
        if (SHIBYTE(__p[2]) < 0)
        {
          operator delete(__p[0]);
        }

        __p[0] = v9;
        __p[1] = v234;
        *(&__p[1] + 7) = *(&v234 + 7);
        HIBYTE(__p[2]) = v10;
        sub_10000A1EC(v236);
        (*(**(v1 + 120) + 24))(v236);
        memset(cf, 0, sizeof(cf));
        ctu::cf::assign();
        v11 = cf[0];
        *&v234 = cf[1];
        *(&v234 + 7) = *(&cf[1] + 7);
        v12 = HIBYTE(cf[2]);
        if (SHIBYTE(v199[2]) < 0)
        {
          operator delete(v199[0]);
        }

        v199[0] = v11;
        v199[1] = v234;
        *(&v199[1] + 7) = *(&v234 + 7);
        HIBYTE(v199[2]) = v12;
        sub_10000A1EC(v236);
        v13 = *v5;
        v233 = @"CarrierName";
        v234 = 0uLL;
        v235 = 0;
        sub_10005B328(&v234, &v233, &v234, 1uLL);
        (*(*v1 + 128))(&v194, v1, v13 + 24, &v234, 0);
        memset(cf, 0, sizeof(cf));
        ctu::cf::assign();
        v14 = cf[0];
        *v236 = cf[1];
        *&v236[7] = *(&cf[1] + 7);
        v15 = HIBYTE(cf[2]);
        if (SHIBYTE(v198) < 0)
        {
          operator delete(v197);
        }

        v197 = v14;
        *&v198 = *v236;
        *(&v198 + 7) = *&v236[7];
        HIBYTE(v198) = v15;
        sub_10000A1EC(&v194);
        if (v234)
        {
          *(&v234 + 1) = v234;
          operator delete(v234);
        }

        (*(**(v1 + 120) + 24))(v236);
        memset(cf, 0, sizeof(cf));
        ctu::cf::assign();
        v16 = cf[0];
        *&v234 = cf[1];
        *(&v234 + 7) = *(&cf[1] + 7);
        v17 = HIBYTE(cf[2]);
        if (SHIBYTE(v196) < 0)
        {
          operator delete(theDict);
        }

        theDict = v16;
        *&v196 = v234;
        *(&v196 + 7) = *(&v234 + 7);
        HIBYTE(v196) = v17;
        sub_10000A1EC(v236);
        v18 = *v5;
        if (*(*v5 + 96) == 1)
        {
          (*(**(v1 + 120) + 24))(cf);
          v19 = cf[0];
          LODWORD(v234) = 0;
          if (cf[0])
          {
            v20 = CFGetTypeID(cf[0]);
            if (v20 == CFNumberGetTypeID())
            {
              ctu::cf::assign(&v234, v19, v21);
            }
          }

          sub_10000A1EC(cf);
          v22 = sub_10000C030(&buf[2]);
          *(v22 + *(*v22 - 24) + 8) = *(v22 + *(*v22 - 24) + 8) & 0xFFFFFFB5 | 8;
          v23 = std::ostream::operator<<();
          sub_10000C030(v23);
          v18 = *v5;
        }

        if (*(v18 + 63) == 1)
        {
          sub_10000C030(&buf[2]);
          v18 = *v5;
        }

        if (*(v18 + 62) == 1)
        {
          sub_10000C030(&buf[2]);
        }
      }

      v24 = *(v1 + 40);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v25 = *(*v5 + 14);
        v26 = PersonalityInfo::logPrefix(*v5);
        v27 = asString();
        v28 = *v5;
        v29 = *(*v5 + 47);
        v30 = (v29 & 0x80u) != 0;
        if ((v29 & 0x80u) != 0)
        {
          v29 = *(*v5 + 4);
        }

        v31 = v28 + 24;
        if (v30)
        {
          v31 = *(v28 + 3);
        }

        if (v29)
        {
          v32 = v31;
        }

        else
        {
          v32 = "<invalid>";
        }

        if (v6 == 3 || (v33 = "", !v6))
        {
          if (*(v28 + 61))
          {
            v33 = " (e)";
          }

          else
          {
            v33 = " (f)";
          }
        }

        v34 = " slot:";
        if (*(v28 + 49))
        {
          v34 = "";
        }

        v183 = v34;
        v35 = "";
        if (!*(v28 + 49))
        {
          v35 = subscriber::asString();
        }

        if (v8)
        {
          v36 = " cb:";
        }

        else
        {
          v36 = "";
        }

        v37 = v199;
        if (SHIBYTE(v199[2]) < 0)
        {
          v37 = v199[0];
        }

        v180 = v37;
        v181 = v36;
        if (SHIBYTE(__p[2]) >= 0)
        {
          v38 = __p;
        }

        else
        {
          v38 = __p[0];
        }

        v39 = v197;
        if (v198 >= 0)
        {
          v39 = &v197;
        }

        v182 = v33;
        v178 = v39;
        v179 = v38;
        v40 = v32;
        if (SHIBYTE(v196) < 0)
        {
          v42 = " ";
          if (!v196)
          {
            v42 = "";
          }

          v176 = v42;
          p_theDict = theDict;
        }

        else
        {
          if (HIBYTE(v196))
          {
            v41 = " ";
          }

          else
          {
            v41 = "";
          }

          v176 = v41;
          p_theDict = &theDict;
        }

        v43 = *v5;
        if (*(*v5 + 48))
        {
          v44 = "active";
        }

        else
        {
          v44 = "inactive";
        }

        if (v6 == 3 || (v45 = "", !v6))
        {
          if (*(v43 + 64))
          {
            v45 = ", turned OFF";
            if ((*(v43 + 65) & 1) == 0)
            {
              if (*(v43 + 66))
              {
                v45 = ", unauthorized";
              }

              else
              {
                v45 = "";
              }
            }
          }

          else
          {
            v45 = ", noSIM";
          }
        }

        v46 = (v43 + 72);
        if (*(v43 + 95) < 0)
        {
          v46 = *v46;
        }

        sub_100061574(buf, &v234);
        v47 = &v234;
        if (v235 < 0)
        {
          v47 = v234;
        }

        LODWORD(cf[0]) = 136319746;
        *(cf + 4) = "";
        WORD2(cf[1]) = 2080;
        *(&cf[1] + 6) = "";
        HIWORD(cf[2]) = 1024;
        *v202 = v25;
        *&v202[4] = 2080;
        *&v202[6] = v26;
        v203 = 2080;
        v204 = v27;
        v205 = 2080;
        v206 = v40;
        v207 = 2080;
        v208 = v182;
        v209 = 2080;
        v210 = v183;
        v211 = 2080;
        v212 = v35;
        v213 = 2080;
        v214 = v181;
        v215 = 2082;
        v216 = v180;
        v217 = 2082;
        v218 = v179;
        v219 = 2082;
        v220 = v178;
        v221 = 2080;
        v222 = v176;
        v223 = 2082;
        v224 = p_theDict;
        v225 = 2080;
        v226 = v44;
        v227 = 2080;
        v228 = v45;
        v229 = 2080;
        v230 = v46;
        v231 = 2082;
        v232 = v47;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#I %s%s | [%d] %s %-5s %s%s%s%s%s%{public}s:%{public}s %{public}s%s%{public}s - %s%s %s%{public}s", cf, 0xBCu);
        if (SHIBYTE(v235) < 0)
        {
          operator delete(v234);
        }

        v1 = v191;
      }

      if (SHIBYTE(v196) < 0)
      {
        operator delete(theDict);
      }

      buf[0].__locale_ = v186;
      *(&buf[0].__locale_ + *(v186 - 3)) = v185;
      buf[2].__locale_ = v184;
      if (SHIBYTE(v239) < 0)
      {
        operator delete(*(&v238[1] + 1));
      }

      std::locale::~locale(&buf[4]);
      std::iostream::~basic_iostream();
      std::ios::~ios();
      if (SHIBYTE(v198) < 0)
      {
        operator delete(v197);
      }

      if (SHIBYTE(v199[2]) < 0)
      {
        operator delete(v199[0]);
      }

      if (SHIBYTE(__p[2]) < 0)
      {
        operator delete(__p[0]);
      }

      v5 += 2;
    }

    while (v5 != v188);
  }

  v48 = *(v1 + 40);
  if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf[0].__locale_) = 136315394;
    *(&buf[0].__locale_ + 4) = "";
    WORD2(buf[1].__locale_) = 2080;
    *(&buf[1].__locale_ + 6) = "";
    _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "#I %s%sLabel assignments:", buf, 0x16u);
  }

  v49 = *(v1 + 880);
  v50 = (v1 + 888);
  if (v49 != (v1 + 888))
  {
    v189 = (v1 + 952);
    v51 = @"unique-sim-label-store";
    do
    {
      theDict = 0;
      v52 = v49 + 13;
      if (*(v49 + 127) < 0)
      {
        sub_100005F2C(__dst, v49[13], v49[14]);
      }

      else
      {
        *__dst = *v52;
        v193 = v49[15];
      }

      if (SHIBYTE(v193) < 0)
      {
        sub_100005F2C(cf, __dst[0], __dst[1]);
      }

      else
      {
        *cf = *__dst;
        cf[2] = v193;
      }

      v197 = 0;
      v1 = v191;
      if (SHIBYTE(cf[2]) < 0)
      {
        sub_100005F2C(buf, cf[0], cf[1]);
      }

      else
      {
        *&buf[0].__locale_ = *cf;
        buf[2] = cf[2];
      }

      v199[0] = 0;
      if (ctu::cf::convert_copy())
      {
        v53 = v197;
        v197 = v199[0];
        __p[0] = v53;
        sub_100005978(__p);
      }

      if (SHIBYTE(buf[2].__locale_) < 0)
      {
        operator delete(buf[0].__locale_);
      }

      theDict = v197;
      v197 = 0;
      sub_100005978(&v197);
      if (SHIBYTE(cf[2]) < 0)
      {
        operator delete(cf[0]);
      }

      if (SHIBYTE(v193) < 0)
      {
        operator delete(__dst[0]);
      }

      v199[0] = 0;
      v54 = *(v191 + 104);
      cf[0] = v51;
      cf[1] = theDict;
      memset(buf, 0, 24);
      sub_10005B328(buf, cf, &cf[2], 2uLL);
      sub_10071C330(v54, @"ts", buf, 0, __p);
      sub_10010B240(v199, __p);
      sub_10000A1EC(__p);
      if (buf[0].__locale_)
      {
        buf[1] = buf[0];
        operator delete(buf[0].__locale_);
      }

      v55 = *(v191 + 40);
      if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
      {
        v56 = v51;
        v57 = (v49 + 4);
        v58 = *(v49 + 55);
        v59 = (v58 & 0x80u) != 0;
        if ((v58 & 0x80u) != 0)
        {
          v58 = v49[5];
        }

        if (v59)
        {
          v57 = v49[4];
        }

        if (v58)
        {
          v60 = v57;
        }

        else
        {
          v60 = "<invalid>";
        }

        asString();
        if (SHIBYTE(cf[2]) >= 0)
        {
          v62 = cf;
        }

        else
        {
          v62 = cf[0];
        }

        __p[0] = 0;
        ctu::cf::assign(__p, v199[0], v61);
        v63 = __p[0];
        if (*(v191 + 976) != 1)
        {
          goto LABEL_147;
        }

        v64 = *(v49 + 127);
        if (v64 >= 0)
        {
          v65 = *(v49 + 127);
        }

        else
        {
          v65 = v49[14];
        }

        v66 = *(v191 + 975);
        v67 = v66;
        if ((v66 & 0x80u) != 0)
        {
          v66 = *(v191 + 960);
        }

        if (v65 == v66)
        {
          if (v64 >= 0)
          {
            v68 = v49 + 13;
          }

          else
          {
            v68 = *v52;
          }

          if (v67 >= 0)
          {
            v69 = v189;
          }

          else
          {
            v69 = *v189;
          }

          v70 = memcmp(v68, v69, v65);
          v71 = " -SUPER";
          if (v70)
          {
            v71 = "";
          }
        }

        else
        {
LABEL_147:
          v71 = "";
        }

        LODWORD(buf[0].__locale_) = 136316418;
        *(&buf[0].__locale_ + 4) = "";
        WORD2(buf[1].__locale_) = 2080;
        *(&buf[1].__locale_ + 6) = "";
        HIWORD(buf[2].__locale_) = 2080;
        buf[3].__locale_ = v60;
        LOWORD(buf[4].__locale_) = 2080;
        *(&buf[4].__locale_ + 2) = v62;
        WORD1(buf[5].__locale_) = 2048;
        *(&buf[5].__locale_ + 4) = v63;
        WORD2(buf[6].__locale_) = 2080;
        *(&buf[6].__locale_ + 6) = v71;
        _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "#I %s%s | %s: %s dated:%ld%s", buf, 0x3Eu);
        if (SHIBYTE(cf[2]) < 0)
        {
          operator delete(cf[0]);
        }

        v1 = v191;
        v51 = v56;
      }

      sub_100029A48(v199);
      sub_100005978(&theDict);
      v72 = v49[1];
      if (v72)
      {
        do
        {
          v73 = v72;
          v72 = *v72;
        }

        while (v72);
      }

      else
      {
        do
        {
          v73 = v49[2];
          v7 = *v73 == v49;
          v49 = v73;
        }

        while (!v7);
      }

      v49 = v73;
    }

    while (v73 != v50);
  }

  v74 = v1;
  v75 = *(v1 + 904);
  v76 = (v74 + 912);
  if (v75 != (v74 + 912))
  {
    do
    {
      v77 = *(v191 + 40);
      if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
      {
        v78 = v75[4];
        v79 = *(v75 + 55);
        v80 = v79;
        if ((v79 & 0x80u) != 0)
        {
          v79 = v75[5];
        }

        if (v80 >= 0)
        {
          v78 = (v75 + 4);
        }

        if (v79)
        {
          v81 = v78;
        }

        else
        {
          v81 = "<invalid>";
        }

        asString();
        if (SHIBYTE(cf[2]) >= 0)
        {
          v82 = cf;
        }

        else
        {
          v82 = cf[0];
        }

        LODWORD(buf[0].__locale_) = 136315906;
        *(&buf[0].__locale_ + 4) = "";
        WORD2(buf[1].__locale_) = 2080;
        *(&buf[1].__locale_ + 6) = "";
        HIWORD(buf[2].__locale_) = 2080;
        buf[3].__locale_ = v81;
        LOWORD(buf[4].__locale_) = 2080;
        *(&buf[4].__locale_ + 2) = v82;
        _os_log_impl(&_mh_execute_header, v77, OS_LOG_TYPE_DEFAULT, "#I %s%s | %s: thumper %s", buf, 0x2Au);
        if (SHIBYTE(cf[2]) < 0)
        {
          operator delete(cf[0]);
        }
      }

      v83 = v75[1];
      if (v83)
      {
        do
        {
          v84 = v83;
          v83 = *v83;
        }

        while (v83);
      }

      else
      {
        do
        {
          v84 = v75[2];
          v7 = *v84 == v75;
          v75 = v84;
        }

        while (!v7);
      }

      v75 = v84;
    }

    while (v84 != v76);
  }

  v85 = *(v191 + 928);
  if (v85 != (v191 + 936))
  {
    do
    {
      v86 = *(v191 + 40);
      if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
      {
        v87 = v85[4];
        v88 = *(v85 + 55);
        v89 = v88;
        if ((v88 & 0x80u) != 0)
        {
          v88 = v85[5];
        }

        if (v89 >= 0)
        {
          v87 = (v85 + 4);
        }

        if (v88)
        {
          v90 = v87;
        }

        else
        {
          v90 = "<invalid>";
        }

        asString();
        if (SHIBYTE(cf[2]) >= 0)
        {
          v91 = cf;
        }

        else
        {
          v91 = cf[0];
        }

        LODWORD(buf[0].__locale_) = 136315906;
        *(&buf[0].__locale_ + 4) = "";
        WORD2(buf[1].__locale_) = 2080;
        *(&buf[1].__locale_ + 6) = "";
        HIWORD(buf[2].__locale_) = 2080;
        buf[3].__locale_ = v90;
        LOWORD(buf[4].__locale_) = 2080;
        *(&buf[4].__locale_ + 2) = v91;
        _os_log_impl(&_mh_execute_header, v86, OS_LOG_TYPE_DEFAULT, "#I %s%s | %s: prefixed %s", buf, 0x2Au);
        if (SHIBYTE(cf[2]) < 0)
        {
          operator delete(cf[0]);
        }
      }

      v92 = v85[1];
      if (v92)
      {
        do
        {
          v93 = v92;
          v92 = *v92;
        }

        while (v92);
      }

      else
      {
        do
        {
          v93 = v85[2];
          v7 = *v93 == v85;
          v85 = v93;
        }

        while (!v7);
      }

      v85 = v93;
    }

    while (v93 != (v191 + 936));
  }

  std::mutex::lock((v191 + 984));
  v94 = v191;
  v95 = *(v191 + 40);
  if (os_log_type_enabled(v95, OS_LOG_TYPE_DEFAULT))
  {
    v96 = (v191 + 1160);
    if (*(v191 + 1183) < 0)
    {
      v96 = *v96;
    }

    LODWORD(buf[0].__locale_) = 136315650;
    *(&buf[0].__locale_ + 4) = "";
    WORD2(buf[1].__locale_) = 2080;
    *(&buf[1].__locale_ + 6) = "";
    HIWORD(buf[2].__locale_) = 2082;
    buf[3].__locale_ = v96;
    _os_log_impl(&_mh_execute_header, v95, OS_LOG_TYPE_DEFAULT, "#I %s%sbadges language: %{public}s", buf, 0x20u);
  }

  v97 = *(v191 + 1112);
  if (v97 != (v191 + 1120))
  {
    do
    {
      memset(__p, 0, 24);
      v98 = *(v94 + 1184);
      if (v98)
      {
        v101 = *(v98 + 8);
        v99 = v98 + 8;
        v100 = v101;
        if (v101)
        {
          v102 = *(v97 + 8);
          v103 = v99;
          do
          {
            if (*(v100 + 32) >= v102)
            {
              v103 = v100;
            }

            v100 = *(v100 + 8 * (*(v100 + 32) < v102));
          }

          while (v100);
          if (v103 != v99 && v102 >= *(v103 + 32))
          {
            asString();
            if (SHIBYTE(__p[2]) < 0)
            {
              operator delete(__p[0]);
            }

            *__p = *&buf[0].__locale_;
            __p[2] = buf[2].__locale_;
          }
        }
      }

      v104 = *(v94 + 40);
      if (os_log_type_enabled(v104, OS_LOG_TYPE_DEFAULT))
      {
        v105 = subscriber::asString();
        v106 = SHIBYTE(__p[2]);
        v107 = __p[0];
        memset(cf, 0, sizeof(cf));
        ctu::cf::assign();
        v108 = __p;
        if (v106 < 0)
        {
          v108 = v107;
        }

        *v199 = *cf;
        v199[2] = cf[2];
        v109 = cf[0];
        if (SHIBYTE(cf[2]) >= 0)
        {
          v109 = v199;
        }

        LODWORD(buf[0].__locale_) = 136316162;
        *(&buf[0].__locale_ + 4) = "";
        WORD2(buf[1].__locale_) = 2080;
        *(&buf[1].__locale_ + 6) = "";
        HIWORD(buf[2].__locale_) = 2080;
        buf[3].__locale_ = v105;
        LOWORD(buf[4].__locale_) = 2080;
        *(&buf[4].__locale_ + 2) = v108;
        WORD1(buf[5].__locale_) = 2080;
        *(&buf[5].__locale_ + 4) = v109;
        _os_log_impl(&_mh_execute_header, v104, OS_LOG_TYPE_DEFAULT, "#I %s%sbadge %s [%s] -> %s", buf, 0x34u);
        if (SHIBYTE(v199[2]) < 0)
        {
          operator delete(v199[0]);
        }

        v94 = v191;
      }

      if (SHIBYTE(__p[2]) < 0)
      {
        operator delete(__p[0]);
      }

      v110 = v97[1];
      if (v110)
      {
        do
        {
          v111 = v110;
          v110 = *v110;
        }

        while (v110);
      }

      else
      {
        do
        {
          v111 = v97[2];
          v7 = *v111 == v97;
          v97 = v111;
        }

        while (!v7);
      }

      v97 = v111;
    }

    while (v111 != (v191 + 1120));
  }

  std::mutex::unlock((v94 + 984));
  if (*(v94 + 552))
  {
    v250 = 0;
    v248 = 0u;
    v249 = 0u;
    v246 = 0u;
    v247 = 0u;
    v244 = 0u;
    v245 = 0u;
    v242 = 0u;
    v243 = 0u;
    v240 = 0u;
    v241 = 0u;
    v239 = 0u;
    memset(v238, 0, sizeof(v238));
    memset(buf, 0, sizeof(buf));
    sub_10000C320(buf);
    v94 = v191;
    v112 = *(v191 + 536);
    if (v112 != (v191 + 544))
    {
      v113 = 0;
      do
      {
        if (v113)
        {
          sub_10000C030(&buf[2]);
        }

        sub_10000C030(&buf[2]);
        v114 = v112[1];
        if (v114)
        {
          do
          {
            v115 = v114;
            v114 = *v114;
          }

          while (v114);
        }

        else
        {
          do
          {
            v115 = v112[2];
            v7 = *v115 == v112;
            v112 = v115;
          }

          while (!v7);
        }

        ++v113;
        v112 = v115;
      }

      while (v115 != (v191 + 544));
    }

    v116 = *(v191 + 40);
    if (os_log_type_enabled(v116, OS_LOG_TYPE_DEFAULT))
    {
      sub_100061574(buf, __p);
      v117 = SHIBYTE(__p[2]) >= 0 ? __p : __p[0];
      LODWORD(cf[0]) = 136315650;
      *(cf + 4) = "";
      WORD2(cf[1]) = 2080;
      *(&cf[1] + 6) = "";
      HIWORD(cf[2]) = 2080;
      *v202 = v117;
      _os_log_impl(&_mh_execute_header, v116, OS_LOG_TYPE_DEFAULT, "#I %s%shidden 4FF sims: [%s]", cf, 0x20u);
      if (SHIBYTE(__p[2]) < 0)
      {
        operator delete(__p[0]);
      }
    }

    buf[2].__locale_ = v118;
    if (SHIBYTE(v239) < 0)
    {
      operator delete(*(&v238[1] + 1));
    }

    std::locale::~locale(&buf[4]);
    std::iostream::~basic_iostream();
    std::ios::~ios();
  }

  os_unfair_lock_lock((v94 + 608));
  if (*(v94 + 632))
  {
    v250 = 0;
    v248 = 0u;
    v249 = 0u;
    v246 = 0u;
    v247 = 0u;
    v244 = 0u;
    v245 = 0u;
    v242 = 0u;
    v243 = 0u;
    v240 = 0u;
    v241 = 0u;
    v239 = 0u;
    memset(v238, 0, sizeof(v238));
    memset(buf, 0, sizeof(buf));
    sub_10000C320(buf);
    v119 = *(v94 + 616);
    if (v119 != (v94 + 624))
    {
      v120 = 0;
      do
      {
        if (v120)
        {
          sub_10000C030(&buf[2]);
        }

        sub_10000C030(&buf[2]);
        v121 = v119[1];
        if (v121)
        {
          do
          {
            v122 = v121;
            v121 = *v121;
          }

          while (v121);
        }

        else
        {
          do
          {
            v122 = v119[2];
            v7 = *v122 == v119;
            v119 = v122;
          }

          while (!v7);
        }

        ++v120;
        v119 = v122;
      }

      while (v122 != (v94 + 624));
    }

    v123 = *(v94 + 40);
    if (os_log_type_enabled(v123, OS_LOG_TYPE_DEFAULT))
    {
      sub_100061574(buf, __p);
      v124 = SHIBYTE(__p[2]) >= 0 ? __p : __p[0];
      LODWORD(cf[0]) = 136315650;
      *(cf + 4) = "";
      WORD2(cf[1]) = 2080;
      *(&cf[1] + 6) = "";
      HIWORD(cf[2]) = 2080;
      *v202 = v124;
      _os_log_impl(&_mh_execute_header, v123, OS_LOG_TYPE_DEFAULT, "#I %s%sabandoned sims: [%s]", cf, 0x20u);
      if (SHIBYTE(__p[2]) < 0)
      {
        operator delete(__p[0]);
      }
    }

    buf[2].__locale_ = v125;
    if (SHIBYTE(v239) < 0)
    {
      operator delete(*(&v238[1] + 1));
    }

    std::locale::~locale(&buf[4]);
    std::iostream::~basic_iostream();
    std::ios::~ios();
  }

  os_unfair_lock_unlock((v94 + 608));
  theDict = 0;
  sub_100061A94(@"label-remap-history", kDevicePersistentStoreDataArchive, 0, &buf[0].__locale_);
  sub_100010180(&theDict, &buf[0].__locale_);
  sub_10000A1EC(&buf[0].__locale_);
  if (!theDict)
  {
    v172 = *(v191 + 40);
    if (!os_log_type_enabled(v172, OS_LOG_TYPE_DEFAULT))
    {
      return sub_10001021C(&theDict);
    }

    LODWORD(buf[0].__locale_) = 136315394;
    *(&buf[0].__locale_ + 4) = "";
    WORD2(buf[1].__locale_) = 2080;
    *(&buf[1].__locale_ + 6) = "";
    v173 = "#I %s%sLabelID remap journal is missing";
    v174 = v172;
LABEL_326:
    _os_log_impl(&_mh_execute_header, v174, OS_LOG_TYPE_DEFAULT, v173, buf, 0x16u);
    return sub_10001021C(&theDict);
  }

  Count = CFDictionaryGetCount(theDict);
  v127 = *(v191 + 40);
  v128 = os_log_type_enabled(v127, OS_LOG_TYPE_DEFAULT);
  if (!Count)
  {
    if (!v128)
    {
      return sub_10001021C(&theDict);
    }

    LODWORD(buf[0].__locale_) = 136315394;
    *(&buf[0].__locale_ + 4) = "";
    WORD2(buf[1].__locale_) = 2080;
    *(&buf[1].__locale_ + 6) = "";
    v173 = "#I %s%sLabelID remap journal is empty";
    v174 = v127;
    goto LABEL_326;
  }

  if (v128)
  {
    v129 = " (max)";
    LODWORD(buf[0].__locale_) = 136315906;
    if (Count != 30)
    {
      v129 = "";
    }

    *(&buf[0].__locale_ + 4) = "";
    WORD2(buf[1].__locale_) = 2080;
    *(&buf[1].__locale_ + 6) = "";
    HIWORD(buf[2].__locale_) = 1024;
    LODWORD(buf[3].__locale_) = Count;
    WORD2(buf[3].__locale_) = 2080;
    *(&buf[3].__locale_ + 6) = v129;
    _os_log_impl(&_mh_execute_header, v127, OS_LOG_TYPE_DEFAULT, "#I %s%sLabelID remap journal: %d element(s)%s", buf, 0x26u);
  }

  memset(cf, 0, sizeof(cf));
  sub_100222418(cf, Count);
  memset(__p, 0, 24);
  sub_10007D780(__p, Count);
  CFDictionaryGetKeysAndValues(theDict, cf[0], __p[0]);
  memset(v199, 0, 24);
  sub_1013B0250(v199, Count);
  for (i = 0; i != Count; i = (i + 1))
  {
    v131 = *(__p[0] + i);
    if (v131)
    {
      v132 = CFGetTypeID(*(__p[0] + i));
      if (v132 == CFDictionaryGetTypeID())
      {
        Value = CFDictionaryGetValue(v131, @"ts");
        v134 = Value;
        if (Value && (v135 = CFGetTypeID(Value), v135 == CFNumberGetTypeID()))
        {
          v197 = 0;
          ctu::cf::assign(&v197, v134, v136);
          v137 = v197;
        }

        else
        {
          v137 = 0;
        }

        buf[0].__locale_ = i;
        buf[1].__locale_ = v137;
        sub_1013B02F4(v199, buf);
      }
    }
  }

  v138 = v199[0];
  v139 = v199[1];
  v140 = (v199[1] - v199[0]) >> 4;
  v141 = 126 - 2 * __clz(v140);
  if (v199[1] == v199[0])
  {
    v142 = 0;
  }

  else
  {
    v142 = v141;
  }

  sub_1013B2230(v199[0], v199[1], v142, 1);
  v187 = v138;
  if (v139 != v138)
  {
    v143 = 0;
    if (v140 <= 1)
    {
      v144 = 1;
    }

    else
    {
      v144 = v140;
    }

    v190 = v144;
    v145 = v138;
    do
    {
      v146 = *v145;
      v147 = *(cf[0] + *v145);
      if (v147)
      {
        v148 = CFGetTypeID(*(cf[0] + *v145));
        if (v148 == CFStringGetTypeID())
        {
          v149 = v147;
        }

        else
        {
          v149 = 0;
        }

        v146 = *v145;
      }

      else
      {
        v149 = 0;
      }

      v150 = *(__p[0] + v146);
      if (v150 && (v151 = CFGetTypeID(*(__p[0] + v146)), v151 == CFDictionaryGetTypeID()))
      {
        v152 = CFDictionaryGetValue(v150, @"to");
        v153 = v152;
        if (v152)
        {
          v154 = CFGetTypeID(v152);
          if (v154 == CFStringGetTypeID())
          {
            v155 = v153;
          }

          else
          {
            v155 = 0;
          }
        }

        else
        {
          v155 = 0;
        }

        v159 = CFDictionaryGetValue(v150, @"action");
        v160 = v159;
        if (v159)
        {
          v161 = CFGetTypeID(v159);
          if (v161 == CFStringGetTypeID())
          {
            v157 = v160;
          }

          else
          {
            v157 = 0;
          }
        }

        else
        {
          v157 = 0;
        }

        v162 = CFDictionaryGetValue(v150, @"from_dated");
        v163 = v162;
        buf[0].__locale_ = 0;
        if (v162)
        {
          v164 = CFGetTypeID(v162);
          if (v164 == CFNumberGetTypeID())
          {
            ctu::cf::assign(buf, v163, v165);
          }
        }

        locale = buf[0].__locale_;
        v166 = CFDictionaryGetValue(v150, @"to_dated");
        v167 = v166;
        buf[0].__locale_ = 0;
        if (v166)
        {
          v168 = CFGetTypeID(v166);
          if (v168 == CFNumberGetTypeID())
          {
            ctu::cf::assign(buf, v167, v169);
          }
        }

        v158 = buf[0].__locale_;
      }

      else
      {
        locale = -1;
        v157 = @"?";
        v155 = @"?";
        v158 = -1;
      }

      v170 = *(v191 + 40);
      if (os_log_type_enabled(v170, OS_LOG_TYPE_DEFAULT))
      {
        v171 = v145[1];
        LODWORD(buf[0].__locale_) = 136317186;
        *(&buf[0].__locale_ + 4) = "";
        WORD2(buf[1].__locale_) = 2080;
        *(&buf[1].__locale_ + 6) = "";
        HIWORD(buf[2].__locale_) = 2048;
        buf[3].__locale_ = v143;
        LOWORD(buf[4].__locale_) = 2114;
        *(&buf[4].__locale_ + 2) = v149;
        WORD1(buf[5].__locale_) = 2048;
        *(&buf[5].__locale_ + 4) = locale;
        WORD2(buf[6].__locale_) = 2114;
        *(&buf[6].__locale_ + 6) = v155;
        HIWORD(buf[7].__locale_) = 2048;
        *&v238[0] = v158;
        WORD4(v238[0]) = 2048;
        *(v238 + 10) = v171;
        WORD1(v238[1]) = 2114;
        *(&v238[1] + 4) = v157;
        _os_log_impl(&_mh_execute_header, v170, OS_LOG_TYPE_DEFAULT, "#I %s%s  %02zu: %{public}@ dated:%ld -> %{public}@ dated:%ld ts:%ld, %{public}@", buf, 0x5Cu);
      }

      v143 = (v143 + 1);
      v145 += 2;
    }

    while (v190 != v143);
    goto LABEL_328;
  }

  if (v138)
  {
LABEL_328:
    operator delete(v187);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (cf[0])
  {
    cf[1] = cf[0];
    operator delete(cf[0]);
  }

  return sub_10001021C(&theDict);
}

void sub_1013A5AD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, os_unfair_lock_s *a28)
{
  sub_10068C9D8(&STACK[0x220]);
  os_unfair_lock_unlock(a28 + 152);
  _Unwind_Resume(a1);
}

void sub_1013A5D7C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 896) == 1)
  {
    __dst = 0uLL;
    v22 = 0;
    v4 = *(a1 + 880);
    if (*(v4 + 55) < 0)
    {
      sub_100005F2C(&__dst, *(v4 + 32), *(v4 + 40));
      v4 = *(a1 + 880);
    }

    else
    {
      __dst = *(v4 + 32);
      v22 = *(v4 + 48);
    }

    v20 = 0;
    v18 = 0u;
    *v19 = 0u;
    *v16 = 0u;
    *v17 = 0u;
    *v14 = 0u;
    v15 = 0u;
    *v12 = 0u;
    v13 = 0u;
    *v11 = 0u;
    sub_100DFECD0(v11, v4 + 56);
    v5 = *(a2 + 24) == 1 && sub_100071DF8(&__dst, a2);
    if (!sub_10139D330(a1, v11))
    {
      sub_1001696A4((a1 + 952), v14);
    }

    if (v5)
    {
      v6 = *(a1 + 40);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = (SBYTE7(v15) & 0x80u) == 0 ? v14 : v14[0];
        strcpy(__p, "parked_super_label");
        v9 = unk_10195CC73;
        v10 = unk_10195CC74;
        *buf = 136315906;
        *&buf[4] = "";
        *&buf[12] = 2080;
        *&buf[14] = "";
        *&buf[22] = 2080;
        v24 = v7;
        v25 = 2080;
        v26 = __p;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s%spark label '%s' with persona [%s]", buf, 0x2Au);
        if (SHIBYTE(v10) < 0)
        {
          operator delete(*__p);
        }
      }

      strcpy(buf, "parked_super_label");
      buf[19] = unk_10195CC73;
      *&buf[20] = unk_10195CC74;
      sub_1013A925C(a1, buf, (a1 + 952));
      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }
    }

    if (SHIBYTE(v20) < 0)
    {
      operator delete(v19[0]);
    }

    if (SHIBYTE(v18) < 0)
    {
      operator delete(v17[1]);
    }

    if (SHIBYTE(v17[0]) < 0)
    {
      operator delete(v16[0]);
    }

    if (SBYTE7(v15) < 0)
    {
      operator delete(v14[0]);
    }

    if (SHIBYTE(v13) < 0)
    {
      operator delete(v12[1]);
    }

    if (SHIBYTE(v12[0]) < 0)
    {
      operator delete(v11[0]);
    }

    if (SHIBYTE(v22) < 0)
    {
      operator delete(__dst);
    }
  }
}

void sub_1013A6030(uint64_t a1, uint64_t a2, void *a3)
{
  v169 = 0;
  v168 = 0;
  v170 = 0;
  sub_10139D0E0(&v168, a2);
  v110 = a1;
  v6 = *(a2 + 40);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a2 + 896);
    v8 = *(a2 + 944);
    v9 = a3[2];
    *buf = 136316418;
    *&buf[4] = "";
    *&buf[12] = 2080;
    *&buf[14] = "";
    *&buf[22] = 2048;
    *&buf[24] = v7;
    *&buf[32] = 2048;
    *&buf[34] = v170;
    *&buf[42] = 2048;
    *&buf[44] = v8;
    *&buf[52] = 2048;
    *&buf[54] = v9;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s%sHave %zu labeled sims from which %zu present, + %zu prefixed labeled sims, %zu need labels", buf, 0x3Eu);
  }

  v167 = 0;
  v166 = 0;
  v165 = &v166;
  v111 = a3;
  v12 = *a3;
  v10 = a3 + 1;
  v11 = v12;
  if (v12 != v10)
  {
    while (1)
    {
      (*(**(a2 + 120) + 24))(buf);
      v13 = *buf;
      LOBYTE(v140[0]) = 0;
      if (*buf)
      {
        v14 = CFGetTypeID(*buf);
        if (v14 == CFBooleanGetTypeID())
        {
          ctu::cf::assign(v140, v13, v15);
        }
      }

      v16 = LOBYTE(v140[0]);
      sub_10000A1EC(buf);
      if (v16 == 1)
      {
        v17 = *(a2 + 40);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v18 = *(v11 + 55);
          v19 = (v18 & 0x80u) != 0;
          if ((v18 & 0x80u) != 0)
          {
            v18 = v11[5];
          }

          if (v19)
          {
            v20 = v11[4];
          }

          else
          {
            v20 = (v11 + 4);
          }

          v21 = v18 == 0;
          v22 = "<invalid>";
          if (!v21)
          {
            v22 = v20;
          }

          *buf = 136315650;
          *&buf[4] = "";
          *&buf[12] = 2080;
          *&buf[14] = "";
          *&buf[22] = 2080;
          *&buf[24] = v22;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I %s%sNeed to label bootstrap sim %s", buf, 0x20u);
        }

        sub_1013A8F04(v154, a2, (v11 + 4), "Provisioning", &xmmword_101FCA9A8);
        if (v164 < 0)
        {
          operator delete(__p);
        }

        if (v162 < 0)
        {
          operator delete(v161);
        }

        if (v160 < 0)
        {
          operator delete(v159);
        }

        if (v158 < 0)
        {
          operator delete(v157);
        }

        if (v156 < 0)
        {
          operator delete(v155);
        }

        if ((v154[23] & 0x80000000) == 0)
        {
          goto LABEL_56;
        }

        v23 = v154;
      }

      else
      {
        (*(**(a2 + 120) + 24))(buf);
        v24 = *buf;
        LOBYTE(v140[0]) = 0;
        if (*buf)
        {
          v25 = CFGetTypeID(*buf);
          if (v25 == CFBooleanGetTypeID())
          {
            ctu::cf::assign(v140, v24, v26);
          }
        }

        v27 = LOBYTE(v140[0]);
        sub_10000A1EC(buf);
        if (v27 != 1)
        {
          sub_1013B731C(&v165, v11 + 4);
          goto LABEL_56;
        }

        v28 = *(a2 + 40);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          v29 = *(v11 + 55);
          v30 = (v29 & 0x80u) != 0;
          if ((v29 & 0x80u) != 0)
          {
            v29 = v11[5];
          }

          if (v30)
          {
            v31 = v11[4];
          }

          else
          {
            v31 = (v11 + 4);
          }

          v21 = v29 == 0;
          v32 = "<invalid>";
          if (!v21)
          {
            v32 = v31;
          }

          *buf = 136315650;
          *&buf[4] = "";
          *&buf[12] = 2080;
          *&buf[14] = "";
          *&buf[22] = 2080;
          *&buf[24] = v32;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "#I %s%sNeed to label offload sim %s", buf, 0x20u);
        }

        sub_1013A8F04(v143, a2, (v11 + 4), "Other", &xmmword_101FCA9C0);
        if (v153 < 0)
        {
          operator delete(v152);
        }

        if (v151 < 0)
        {
          operator delete(v150);
        }

        if (v149 < 0)
        {
          operator delete(v148);
        }

        if (v147 < 0)
        {
          operator delete(v146);
        }

        if (v145 < 0)
        {
          operator delete(v144);
        }

        if ((v143[23] & 0x80000000) == 0)
        {
          goto LABEL_56;
        }

        v23 = v143;
      }

      operator delete(*v23);
LABEL_56:
      v33 = v11[1];
      if (v33)
      {
        do
        {
          v34 = v33;
          v33 = *v33;
        }

        while (v33);
      }

      else
      {
        do
        {
          v34 = v11[2];
          v21 = *v34 == v11;
          v11 = v34;
        }

        while (!v21);
      }

      v11 = v34;
      if (v34 == v10)
      {
        v35 = v167;
        goto LABEL_64;
      }
    }
  }

  v35 = 0;
LABEL_64:
  v36 = v170 + v35;
  v38 = *(a2 + 896) < 2uLL && v36 < 2;
  v39 = *(a2 + 40);
  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
  {
    v40 = "MultiSim";
    *buf = 136315650;
    *&buf[4] = "";
    *&buf[12] = 2080;
    *&buf[14] = "";
    if (v38)
    {
      v40 = "SingleSim";
    }

    *&buf[22] = 2080;
    *&buf[24] = v40;
    _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "#I %s%sLabeling mode is %s", buf, 0x20u);
  }

  v142 = 0;
  memset(v141, 0, sizeof(v141));
  *v140 = 0u;
  v41 = *(a2 + 880);
  v42 = (a2 + 888);
  if (v41 != (a2 + 888))
  {
    while (!sub_10139D330(a2, (v41 + 7)))
    {
      v43 = v41[1];
      if (v43)
      {
        do
        {
          v44 = v43;
          v43 = *v43;
        }

        while (v43);
      }

      else
      {
        do
        {
          v44 = v41[2];
          v21 = *v44 == v41;
          v41 = v44;
        }

        while (!v21);
      }

      v41 = v44;
      if (v44 == v42)
      {
        goto LABEL_93;
      }
    }

    if (*(v41 + 55) < 0)
    {
      sub_100005F2C(buf, v41[4], v41[5]);
    }

    else
    {
      *buf = *(v41 + 2);
      *&buf[16] = v41[6];
    }

    if (*(v41 + 127) < 0)
    {
      sub_100005F2C(&buf[24], v41[13], v41[14]);
    }

    else
    {
      *&buf[24] = *(v41 + 13);
      *&buf[40] = v41[15];
    }

    sub_1013A91A8(v140, buf);
    if ((buf[47] & 0x80000000) != 0)
    {
      operator delete(*&buf[24]);
    }

    if ((buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }
  }

LABEL_93:
  v45 = a2 + 880;
  v46 = v165;
  if (v165 == &v166)
  {
    goto LABEL_261;
  }

  v112 = v38;
  do
  {
    v47 = v46 + 4;
    v48 = *(a2 + 40);
    if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
    {
      v49 = *(v46 + 55);
      v50 = v49 < 0;
      if (v49 < 0)
      {
        v49 = v46[5];
      }

      if (v50)
      {
        v51 = v46[4];
      }

      else
      {
        v51 = (v46 + 4);
      }

      v21 = v49 == 0;
      v52 = "<invalid>";
      if (!v21)
      {
        v52 = v51;
      }

      *buf = 136315650;
      *&buf[4] = "";
      *&buf[12] = 2080;
      *&buf[14] = "";
      *&buf[22] = 2080;
      *&buf[24] = v52;
      _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "#I %s%sNeed to label %s", buf, 0x20u);
    }

    if (v42 != sub_100007A6C(v45, v46 + 4))
    {
      __assert_rtn("createLabels", "PersonalityImpl.cpp", 3236, "fAssignedLabels.find(in_need) == fAssignedLabels.end()");
    }

    if (v170)
    {
      v53 = v38;
    }

    else
    {
      v53 = 1;
    }

    if (v53 == 1)
    {
      if (v142 == 1)
      {
        v54 = *(a2 + 40);
        if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
        {
          v55 = &v141[1];
          if (SHIBYTE(v141[3]) < 0)
          {
            v55 = v141[1];
          }

          v56 = HIBYTE(v141[0]);
          if (SHIBYTE(v141[0]) < 0)
          {
            v56 = v140[1];
          }

          v57 = v140;
          if (SHIBYTE(v141[0]) < 0)
          {
            v57 = v140[0];
          }

          v58 = *(v46 + 55);
          v59 = v58 < 0;
          if (v58 < 0)
          {
            v58 = v46[5];
          }

          if (v59)
          {
            v60 = v46[4];
          }

          else
          {
            v60 = (v46 + 4);
          }

          if (v56)
          {
            v61 = v57;
          }

          else
          {
            v61 = "<invalid>";
          }

          if (v58)
          {
            v62 = v60;
          }

          else
          {
            v62 = "<invalid>";
          }

          *buf = 136316162;
          *&buf[4] = "";
          *&buf[12] = 2080;
          *&buf[14] = "";
          *&buf[22] = 2080;
          *&buf[24] = v55;
          *&buf[32] = 2080;
          *&buf[34] = v61;
          *&buf[42] = 2080;
          *&buf[44] = v62;
          _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "#I %s%sReassigned label %s from '%s' to '%s'", buf, 0x34u);
        }

        sub_1013A925C(a2, (v46 + 4), &v141[1]);
        if (*(v46 + 55) < 0)
        {
          sub_100005F2C(buf, v46[4], v46[5]);
        }

        else
        {
          *buf = *v47;
          *&buf[16] = v46[6];
        }

        if (SHIBYTE(v141[3]) < 0)
        {
          sub_100005F2C(&buf[24], v141[1], v141[2]);
        }

        else
        {
          *&buf[24] = *&v141[1];
          *&buf[40] = v141[3];
        }

        sub_1013A91A8(v140, buf);
      }

      else
      {
        v81 = *(a2 + 40);
        if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
        {
          v82 = *(v46 + 55);
          v83 = v82 < 0;
          if (v82 < 0)
          {
            v82 = v46[5];
          }

          if (v83)
          {
            v84 = v46[4];
          }

          else
          {
            v84 = (v46 + 4);
          }

          v21 = v82 == 0;
          v85 = "<invalid>";
          if (!v21)
          {
            v85 = v84;
          }

          *v182 = 136315650;
          *&v182[4] = "";
          v183 = 2080;
          v184 = "";
          v185 = 2080;
          v186 = v85;
          _os_log_impl(&_mh_execute_header, v81, OS_LOG_TYPE_DEFAULT, "#I %s%screating super label for %s", v182, 0x20u);
        }

        v181 = 0;
        *v180 = 0u;
        *v178 = 0u;
        v179 = 0u;
        v176 = 0u;
        *v177 = 0u;
        memset(buf, 0, sizeof(buf));
        sub_10000501C(v173, "");
        sub_10000501C(v171, "");
        v182[0] = 0;
        LOBYTE(v186) = 0;
        sub_1013AA2B0(buf, a2, (v46 + 4), v173, v171, v182);
        if (v172 < 0)
        {
          operator delete(v171[0]);
        }

        if (v174 < 0)
        {
          operator delete(v173[0]);
        }

        sub_1001696A4((a2 + 952), &buf[48]);
        if (*(v46 + 55) < 0)
        {
          sub_100005F2C(&__dst, v46[4], v46[5]);
        }

        else
        {
          *&__dst.__r_.__value_.__l.__data_ = *v47;
          __dst.__r_.__value_.__r.__words[2] = v46[6];
        }

        v138 = *&buf[48];
        v139 = v176;
        *&buf[56] = 0;
        *&v176 = 0;
        *&buf[48] = 0;
        sub_1013A91A8(v140, &__dst);
        if (SHIBYTE(v139) < 0)
        {
          operator delete(v138);
        }

        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v181) < 0)
        {
          operator delete(v180[0]);
        }

        if (SHIBYTE(v179) < 0)
        {
          operator delete(v178[1]);
        }

        if (SHIBYTE(v178[0]) < 0)
        {
          operator delete(v177[0]);
        }

        if (SBYTE7(v176) < 0)
        {
          operator delete(*&buf[48]);
        }
      }

      if ((buf[47] & 0x80000000) != 0)
      {
        operator delete(*&buf[24]);
      }

      if ((buf[23] & 0x80000000) != 0)
      {
        v86 = *buf;
LABEL_217:
        operator delete(v86);
      }

      goto LABEL_218;
    }

    v63 = *(a2 + 40);
    if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
    {
      v64 = *(v46 + 55);
      v65 = v64 < 0;
      if (v64 < 0)
      {
        v64 = v46[5];
      }

      if (v65)
      {
        v66 = v46[4];
      }

      else
      {
        v66 = (v46 + 4);
      }

      v21 = v64 == 0;
      v67 = "<invalid>";
      if (!v21)
      {
        v67 = v66;
      }

      *buf = 136315650;
      *&buf[4] = "";
      *&buf[12] = 2080;
      *&buf[14] = "";
      *&buf[22] = 2080;
      *&buf[24] = v67;
      _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "#I %s%screating default label for %s", buf, 0x20u);
    }

    if (!*(a2 + 896))
    {
LABEL_178:
      sub_10000501C(&__dst, "");
      sub_10000501C(v182, "USER_LABEL_PRIMARY");
      buf[0] = 0;
      buf[24] = 0;
      sub_1013AA2B0(v125, a2, (v46 + 4), &__dst, v182, buf);
      goto LABEL_179;
    }

    v68 = time(0);
    srand(v68);
    v69 = v45;
    for (i = 0; i != 3; ++i)
    {
      v71 = rand() % 5uLL + 1;
      v72 = *(a2 + 40);
      if (os_log_type_enabled(v72, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315906;
        *&buf[4] = "";
        *&buf[12] = 2080;
        *&buf[14] = "";
        *&buf[22] = 2048;
        *&buf[24] = i;
        *&buf[32] = 2048;
        *&buf[34] = v71;
        _os_log_debug_impl(&_mh_execute_header, v72, OS_LOG_TYPE_DEBUG, "#D %s%sdice %zu: %zu", buf, 0x2Au);
      }

      v73 = off_101F33090[v71];
      v74 = *v69;
      if (*v69 == v42)
      {
LABEL_162:
        sub_10000501C(&__dst, "");
        v45 = v69;
        v38 = v112;
        sub_10000501C(v182, v73);
        buf[0] = 0;
        buf[24] = 0;
        sub_1013AA2B0(v125, a2, (v46 + 4), &__dst, v182, buf);
        goto LABEL_179;
      }

      v75 = strlen(v73);
      v76 = *v69;
      while (1)
      {
        v77 = v76 + 10;
        v78 = *(v76 + 103);
        if ((v78 & 0x8000000000000000) == 0)
        {
          break;
        }

        if (v75 == v76[11])
        {
          if (v75 == -1)
          {
            sub_10013C334();
          }

          v77 = *v77;
          goto LABEL_152;
        }

LABEL_153:
        v79 = v76[1];
        if (v79)
        {
          do
          {
            v80 = v79;
            v79 = *v79;
          }

          while (v79);
        }

        else
        {
          do
          {
            v80 = v76[2];
            v21 = *v80 == v76;
            v76 = v80;
          }

          while (!v21);
        }

        v76 = v80;
        if (v80 == v42)
        {
          goto LABEL_162;
        }
      }

      if (v75 != v78)
      {
        goto LABEL_153;
      }

LABEL_152:
      if (memcmp(v77, v73, v75))
      {
        goto LABEL_153;
      }
    }

    for (j = 1; j != 6; ++j)
    {
      v90 = *(a2 + 40);
      if (os_log_type_enabled(v90, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315650;
        *&buf[4] = "";
        *&buf[12] = 2080;
        *&buf[14] = "";
        *&buf[22] = 2048;
        *&buf[24] = j;
        _os_log_debug_impl(&_mh_execute_header, v90, OS_LOG_TYPE_DEBUG, "#D %s%spassthrough %zu", buf, 0x20u);
        v74 = *v69;
      }

      v73 = off_101F33090[j];
      if (v74 == v42)
      {
        goto LABEL_162;
      }

      v91 = strlen(off_101F33090[j]);
      v92 = v74;
      while (1)
      {
        v93 = v92 + 10;
        v94 = *(v92 + 103);
        if ((v94 & 0x8000000000000000) == 0)
        {
          break;
        }

        if (v91 == v92[11])
        {
          if (v91 == -1)
          {
            sub_10013C334();
          }

          v93 = *v93;
          goto LABEL_235;
        }

LABEL_236:
        v95 = v92[1];
        if (v95)
        {
          do
          {
            v96 = v95;
            v95 = *v95;
          }

          while (v95);
        }

        else
        {
          do
          {
            v96 = v92[2];
            v21 = *v96 == v92;
            v92 = v96;
          }

          while (!v21);
        }

        v92 = v96;
        if (v96 == v42)
        {
          goto LABEL_162;
        }
      }

      if (v91 != v94)
      {
        goto LABEL_236;
      }

LABEL_235:
      if (memcmp(v93, v73, v91))
      {
        goto LABEL_236;
      }

      v38 = v112;
    }

    v97 = strlen("USER_LABEL_PRIMARY");
    v45 = v69;
    while (1)
    {
      v98 = v74 + 10;
      v99 = *(v74 + 103);
      if ((v99 & 0x8000000000000000) == 0)
      {
        break;
      }

      if (v97 == v74[11])
      {
        if (v97 == -1)
        {
          sub_10013C334();
        }

        v98 = *v98;
        goto LABEL_252;
      }

LABEL_253:
      v100 = v74[1];
      if (v100)
      {
        do
        {
          v101 = v100;
          v100 = *v100;
        }

        while (v100);
      }

      else
      {
        do
        {
          v101 = v74[2];
          v21 = *v101 == v74;
          v74 = v101;
        }

        while (!v21);
      }

      v74 = v101;
      if (v101 == v42)
      {
        goto LABEL_178;
      }
    }

    if (v97 != v99)
    {
      goto LABEL_253;
    }

LABEL_252:
    if (memcmp(v98, "USER_LABEL_PRIMARY", v97))
    {
      goto LABEL_253;
    }

    v102 = rand();
    sub_10000501C(&__dst, "");
    sub_10000501C(v182, off_101F33090[v102 % 5uLL + 1]);
    buf[0] = 0;
    buf[24] = 0;
    sub_1013AA2B0(v125, a2, (v46 + 4), &__dst, v182, buf);
LABEL_179:
    if (SHIBYTE(v185) < 0)
    {
      operator delete(*v182);
    }

    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }

    if (v136 < 0)
    {
      operator delete(v135);
    }

    if (v134 < 0)
    {
      operator delete(v133);
    }

    if (v132 < 0)
    {
      operator delete(v131);
    }

    if (v130 < 0)
    {
      operator delete(v129);
    }

    if (v128 < 0)
    {
      operator delete(v127);
    }

    if (v126 < 0)
    {
      v86 = v125[0];
      goto LABEL_217;
    }

LABEL_218:
    sub_1013B731C(&v168, v46 + 4);
    v87 = v46[1];
    if (v87)
    {
      do
      {
        v88 = v87;
        v87 = *v87;
      }

      while (v87);
    }

    else
    {
      do
      {
        v88 = v46[2];
        v21 = *v88 == v46;
        v46 = v88;
      }

      while (!v21);
    }

    v46 = v88;
  }

  while (v88 != &v166);
LABEL_261:
  if (!v38)
  {
    if (v142 == 1)
    {
      v103 = sub_100007A6C(v45, v140);
      v104 = v103;
      if (v42 != v103)
      {
        if ((*(v103 + 79) & 0x8000000000000000) != 0)
        {
          if (!*(v103 + 64))
          {
            goto LABEL_268;
          }
        }

        else if (!*(v103 + 79))
        {
LABEL_268:
          v105 = *(v103 + 103);
          if (v105 < 0)
          {
            v105 = *(v103 + 88);
          }

          if (!v105)
          {
            sub_10000501C(buf, "");
            sub_10000501C(&__dst, "USER_LABEL_PRIMARY");
            sub_1013A9B98(&v113, a2, v140, buf, &__dst, *(v104 + 128));
            if (v124 < 0)
            {
              operator delete(v123);
            }

            if (v122 < 0)
            {
              operator delete(v121);
            }

            if (v120 < 0)
            {
              operator delete(v119);
            }

            if (v118 < 0)
            {
              operator delete(v117);
            }

            if (v116 < 0)
            {
              operator delete(v115);
            }

            if (v114 < 0)
            {
              operator delete(v113);
            }

            if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__dst.__r_.__value_.__l.__data_);
            }

            if ((buf[23] & 0x80000000) != 0)
            {
              operator delete(*buf);
            }
          }
        }
      }
    }

    if (*(a2 + 976) == 1)
    {
      v106 = (a2 + 952);
      v107 = *(a2 + 40);
      if (!os_log_type_enabled(v107, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_292;
      }

      v108 = (a2 + 952);
      if (*(a2 + 975) < 0)
      {
        v108 = *v106;
      }

      *buf = 136315650;
      *&buf[4] = "";
      *&buf[12] = 2080;
      *&buf[14] = "";
      *&buf[22] = 2080;
      *&buf[24] = v108;
      _os_log_impl(&_mh_execute_header, v107, OS_LOG_TYPE_DEFAULT, "#I %s%slabel %s stopped being super", buf, 0x20u);
      if (*(a2 + 976))
      {
LABEL_292:
        if (*(a2 + 975) < 0)
        {
          operator delete(*v106);
        }

        *(a2 + 976) = 0;
      }
    }
  }

  v109 = sub_100007A6C(v45, (*v111 + 32));
  if (v42 == v109)
  {
    v109 = sub_100007A6C(a2 + 928, (*v111 + 32));
  }

  sub_100DFECD0(v110, v109 + 56);
  if (v142 == 1)
  {
    if (SHIBYTE(v141[3]) < 0)
    {
      operator delete(v141[1]);
    }

    if (SHIBYTE(v141[0]) < 0)
    {
      operator delete(v140[0]);
    }
  }

  sub_100009970(&v165, v166);
  sub_100009970(&v168, v169);
}

void sub_1013A7370(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, void *__p, uint64_t a60, int a61, __int16 a62, char a63)
{
  if (*(v68 - 121) < 0)
  {
    operator delete(*(v68 - 144));
  }

  if (a64 < 0)
  {
    operator delete(__p);
  }

  sub_10038E598(&a68);
  sub_100009970(&STACK[0x330], STACK[0x338]);
  sub_100009970(&STACK[0x348], STACK[0x350]);
  _Unwind_Resume(a1);
}

uint64_t sub_1013A74F4(uint64_t a1, void *a2)
{
  sub_10084A8C4(a1 + 32, a2);
  result = *(a1 + 24);
  if (result)
  {
    v4 = *(*result + 48);

    return v4();
  }

  return result;
}

void *sub_1013A7564(void *a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v4 = sub_1007960D0(a1, a2 + 880);
  sub_100796128(v4, *(a2 + 904), (a2 + 912));
  return sub_100796128(a1, *(a2 + 928), (a2 + 936));
}

uint64_t sub_1013A75CC(uint64_t a1, const void **a2)
{
  v2 = *(a1 + 880);
  v3 = (a1 + 888);
  if (v2 == (a1 + 888))
  {
    return 0;
  }

  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  if (v4 >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  while (1)
  {
    v7 = *(v2 + 127);
    v8 = v7;
    if ((v7 & 0x80u) != 0)
    {
      v7 = v2[14];
    }

    if (v7 == v5)
    {
      v9 = v8 >= 0 ? v2 + 13 : v2[13];
      if (!memcmp(v9, v6, v5))
      {
        break;
      }
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
        v12 = *v11 == v2;
        v2 = v11;
      }

      while (!v12);
    }

    v2 = v11;
    if (v11 == v3)
    {
      return 0;
    }
  }

  return 1;
}

void sub_1013A7698(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a1[5];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v8 = *(a2 + 23);
    v9 = (v8 & 0x80u) != 0;
    v10 = *a2;
    if ((v8 & 0x80u) != 0)
    {
      v8 = *(a2 + 8);
    }

    if (!v9)
    {
      v10 = a2;
    }

    if (v8)
    {
      v11 = v10;
    }

    else
    {
      v11 = "<invalid>";
    }

    LODWORD(v12[0]) = 136315650;
    *(v12 + 4) = "";
    WORD2(v12[1]) = 2080;
    *(&v12[1] + 6) = "";
    HIWORD(v12[2]) = 2080;
    v12[3] = v11;
    _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "#D %s%sgetLocalizedSimLabel, %s", v12, 0x20u);
  }

  v20 = 0;
  v18 = 0u;
  *__p = 0u;
  *v16 = 0u;
  *v17 = 0u;
  *v14 = 0u;
  v15 = 0u;
  v13 = 0u;
  memset(v12, 0, sizeof(v12));
  (*(*a1 + 192))(v12, a1, a2);
  v7 = BYTE7(v15);
  if (SBYTE7(v15) < 0)
  {
    v7 = v14[1];
  }

  if (v7)
  {
    (*(*a1 + 168))(a1, v12);
  }

  else
  {
    *(a3 + 57) = 0u;
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 80) = 0u;
    *(a3 + 96) = 0u;
    *(a3 + 112) = 0u;
    *(a3 + 128) = 0u;
    *(a3 + 144) = 0;
  }

  if (SHIBYTE(v20) < 0)
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

  if (SBYTE7(v15) < 0)
  {
    operator delete(v14[0]);
  }

  if (SHIBYTE(v13) < 0)
  {
    operator delete(v12[3]);
  }

  if (SHIBYTE(v12[2]) < 0)
  {
    operator delete(v12[0]);
  }
}

void sub_1013A78BC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1 + 40);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v9 = *(a2 + 23);
    v10 = (v9 & 0x80u) != 0;
    v11 = *a2;
    if ((v9 & 0x80u) != 0)
    {
      v9 = *(a2 + 8);
    }

    if (!v10)
    {
      v11 = a2;
    }

    if (v9)
    {
      v12 = v11;
    }

    else
    {
      v12 = "<invalid>";
    }

    v13 = 136315650;
    v14 = "";
    v15 = 2080;
    v16 = "";
    v17 = 2080;
    v18 = v12;
    _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "#D %s%sgetRawSimLabel, %s", &v13, 0x20u);
  }

  std::mutex::lock((a1 + 984));
  v7 = *(a2 + 23);
  if ((v7 & 0x80u) != 0)
  {
    v7 = *(a2 + 8);
  }

  if (v7 && *(a1 + 1104) == 1 && (v8 = sub_100007A6C(a1 + 1080, a2), a1 + 1088 != v8))
  {
    sub_100DFECD0(a3, v8 + 56);
  }

  else
  {
    *(a3 + 57) = 0u;
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 80) = 0u;
    *(a3 + 96) = 0u;
    *(a3 + 112) = 0u;
    *(a3 + 128) = 0u;
    *(a3 + 144) = 0;
  }

  std::mutex::unlock((a1 + 984));
}

uint64_t sub_1013A7A44(uint64_t a1, uint64_t a2)
{
  std::mutex::lock((a1 + 984));
  v4 = *(a2 + 23);
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a2 + 8);
  }

  if (v4 && *(a1 + 1104) == 1 && a1 + 1088 != sub_100007A6C(a1 + 1080, a2))
  {
    theDict = 0;
    (*(**(a1 + 120) + 24))(&v13);
    sub_100010180(&theDict, &v13);
    sub_10000A1EC(&v13);
    if (theDict)
    {
      Value = CFDictionaryGetValue(theDict, @"type");
      v6 = Value;
      if (Value)
      {
        v7 = CFGetTypeID(Value);
        if (v7 == CFStringGetTypeID() && CFStringCompare(v6, @"sim", 0) == kCFCompareEqualTo)
        {
          v10 = CFDictionaryGetValue(theDict, @"no_src");
          v11 = v10;
          if (!v10 || (v12 = CFGetTypeID(v10), v12 != CFBooleanGetTypeID()) || !CFBooleanGetValue(v11))
          {
            sub_10001021C(&theDict);
            v8 = 1;
            goto LABEL_12;
          }
        }
      }
    }

    sub_10001021C(&theDict);
  }

  v8 = 0;
LABEL_12:
  std::mutex::unlock((a1 + 984));
  return v8;
}

void sub_1013A7BC8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10001021C(va);
  std::mutex::unlock((v2 + 984));
  _Unwind_Resume(a1);
}

void sub_1013A7C04(uint64_t a1@<X0>, void *a2@<X8>)
{
  a2[1] = 0;
  v4 = a2 + 1;
  a2[2] = 0;
  *a2 = a2 + 1;
  std::mutex::lock((a1 + 984));
  if (*(a1 + 1104) == 1)
  {
    v5 = *(a1 + 1080);
    if (v5 != (a1 + 1088))
    {
      do
      {
        theDict = 0;
        (*(**(a1 + 120) + 24))(buf);
        sub_100010180(&theDict, buf);
        sub_10000A1EC(buf);
        if (theDict)
        {
          Value = CFDictionaryGetValue(theDict, @"type");
          v7 = Value;
          if (Value)
          {
            v8 = CFGetTypeID(Value);
            if (v8 == CFStringGetTypeID() && CFStringCompare(v7, @"sim", 0) == kCFCompareEqualTo)
            {
              v9 = CFDictionaryGetValue(theDict, @"no_src");
              v10 = v9;
              if (!v9 || (v11 = CFGetTypeID(v9), v11 != CFBooleanGetTypeID()) || !CFBooleanGetValue(v10))
              {
                __p[0] = 0;
                __p[1] = 0;
                v25 = 0;
                CFDictionaryGetValue(theDict, @"mdn");
                memset(buf, 0, sizeof(buf));
                ctu::cf::assign();
                *__p = *buf;
                v25 = *&buf[16];
                v12 = *&buf[8];
                v13 = buf[23];
                if ((buf[23] & 0x80u) == 0)
                {
                  v12 = HIBYTE(*&buf[16]);
                }

                if (v12)
                {
                  sub_10017695C(a2, __p);
                  v13 = HIBYTE(v25);
                }

                if ((v13 & 0x80) != 0)
                {
                  operator delete(__p[0]);
                }
              }
            }
          }
        }

        sub_10001021C(&theDict);
        v14 = v5[1];
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
            v15 = v5[2];
            v16 = *v15 == v5;
            v5 = v15;
          }

          while (!v16);
        }

        v5 = v15;
      }

      while (v15 != (a1 + 1088));
    }
  }

  v17 = *(a1 + 40);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = a2[2];
    *buf = 136315650;
    *&buf[4] = "";
    *&buf[12] = 2080;
    *&buf[14] = "";
    *&buf[22] = 2048;
    v28 = v18;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I %s%s--- %zu MDNs from present labeled SIMs --", buf, 0x20u);
  }

  v19 = *a2;
  if (*a2 != v4)
  {
    do
    {
      v20 = *(a1 + 40);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = v19 + 4;
        if (*(v19 + 55) < 0)
        {
          v21 = *v21;
        }

        *buf = 136315650;
        *&buf[4] = "";
        *&buf[12] = 2080;
        *&buf[14] = "";
        *&buf[22] = 2080;
        v28 = v21;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I %s%s  %s", buf, 0x20u);
      }

      v22 = v19[1];
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
          v23 = v19[2];
          v16 = *v23 == v19;
          v19 = v23;
        }

        while (!v16);
      }

      v19 = v23;
    }

    while (v23 != v4);
  }

  std::mutex::unlock((a1 + 984));
}

void sub_1013A7F90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, const void *a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  sub_10001021C(&a17);
  std::mutex::unlock((v23 + 984));
  sub_100009970(v24, *(v24 + 8));
  _Unwind_Resume(a1);
}

uint64_t sub_1013A800C(uint64_t a1)
{
  if (*(a1 + 175) < 0)
  {
    operator delete(*(a1 + 152));
  }

  if (*(a1 + 151) < 0)
  {
    operator delete(*(a1 + 128));
  }

  if (*(a1 + 127) < 0)
  {
    operator delete(*(a1 + 104));
  }

  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1013A80A0(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = a1;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 0x40000000;
  v5[2] = sub_1013BC7A8;
  v5[3] = &unk_101F33BF8;
  v5[4] = a1 + 8;
  v5[5] = &v4;
  v6 = v5;
  v3 = a1 + 24;
  v2 = *(a1 + 24);
  if (*(v3 + 8))
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    block = _NSConcreteStackBlock;
    v8 = 0x40000000;
    v9 = sub_1013BC910;
    v10 = &unk_101F33C38;
    v11 = a2;
    v12 = &v6;
    dispatch_async_and_wait(v2, &block);
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    block = _NSConcreteStackBlock;
    v8 = 0x40000000;
    v9 = sub_1013BC8A0;
    v10 = &unk_101F33C18;
    v11 = a2;
    v12 = &v6;
    dispatch_sync(v2, &block);
  }
}

void sub_1013A81C4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      v6 = v5;
      (*(*v3 + 24))(v3, v5);
    }

    else
    {
      v6 = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    v6 = 0;
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    if (std::__shared_weak_count::lock(v4))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_1013A83B0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1013A83CC(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a1 + 8;
  v7 = a1;
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(&__p, *a2, *(a2 + 1));
  }

  else
  {
    __p = *a2;
    v9 = *(a2 + 2);
  }

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 0x40000000;
  v10[2] = sub_1013BCD80;
  v10[3] = &unk_101F33C58;
  v10[4] = v5;
  v10[5] = &v7;
  v11 = v10;
  v6 = *(a1 + 24);
  if (*(a1 + 32))
  {
    *(a3 + 144) = 0;
    *(a3 + 112) = 0u;
    *(a3 + 128) = 0u;
    *(a3 + 80) = 0u;
    *(a3 + 96) = 0u;
    *(a3 + 48) = 0u;
    *(a3 + 64) = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *a3 = 0u;
    block = _NSConcreteStackBlock;
    v13 = 0x40000000;
    v14 = sub_1013BD1E8;
    v15 = &unk_101F33C98;
    v16 = a3;
    v17 = &v11;
    dispatch_async_and_wait(v6, &block);
  }

  else
  {
    *(a3 + 144) = 0;
    *(a3 + 112) = 0u;
    *(a3 + 128) = 0u;
    *(a3 + 80) = 0u;
    *(a3 + 96) = 0u;
    *(a3 + 48) = 0u;
    *(a3 + 64) = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *a3 = 0u;
    block = _NSConcreteStackBlock;
    v13 = 0x40000000;
    v14 = sub_1013BD0D4;
    v15 = &unk_101F33C78;
    v16 = a3;
    v17 = &v11;
    dispatch_sync(v6, &block);
  }

  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p);
  }
}

void sub_1013A8574(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v12 = a1;
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(v13, *a2, *(a2 + 8));
  }

  else
  {
    *v13 = *a2;
    v14 = *(a2 + 16);
  }

  if (*(a3 + 23) < 0)
  {
    sub_100005F2C(v15, *a3, *(a3 + 8));
  }

  else
  {
    *v15 = *a3;
    v16 = *(a3 + 16);
  }

  if (*(a4 + 23) < 0)
  {
    sub_100005F2C(__p, *a4, *(a4 + 8));
  }

  else
  {
    *__p = *a4;
    v18 = *(a4 + 16);
  }

  v19 = a5;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 0x40000000;
  v20[2] = sub_1013BD2FC;
  v20[3] = &unk_101F33CB8;
  v20[4] = a1 + 8;
  v20[5] = &v12;
  v21 = v20;
  v11 = *(a1 + 24);
  if (*(a1 + 32))
  {
    *(a6 + 144) = 0;
    *(a6 + 112) = 0u;
    *(a6 + 128) = 0u;
    *(a6 + 80) = 0u;
    *(a6 + 96) = 0u;
    *(a6 + 48) = 0u;
    *(a6 + 64) = 0u;
    *(a6 + 16) = 0u;
    *(a6 + 32) = 0u;
    *a6 = 0u;
    block = _NSConcreteStackBlock;
    v23 = 0x40000000;
    v24 = sub_1013BD1E8;
    v25 = &unk_101F33C98;
    v26 = a6;
    v27 = &v21;
    dispatch_async_and_wait(v11, &block);
  }

  else
  {
    *(a6 + 144) = 0;
    *(a6 + 112) = 0u;
    *(a6 + 128) = 0u;
    *(a6 + 80) = 0u;
    *(a6 + 96) = 0u;
    *(a6 + 48) = 0u;
    *(a6 + 64) = 0u;
    *(a6 + 16) = 0u;
    *(a6 + 32) = 0u;
    *a6 = 0u;
    block = _NSConcreteStackBlock;
    v23 = 0x40000000;
    v24 = sub_1013BD0D4;
    v25 = &unk_101F33C78;
    v26 = a6;
    v27 = &v21;
    dispatch_sync(v11, &block);
  }

  if (SHIBYTE(v18) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v16) < 0)
  {
    operator delete(v15[0]);
  }

  if (SHIBYTE(v14) < 0)
  {
    operator delete(v13[0]);
  }
}

void sub_1013A87AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1013A87E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(v6, *a2, *(a2 + 8));
  }

  else
  {
    *v6 = *a2;
    v6[2] = *(a2 + 16);
  }

  if (*(a3 + 23) < 0)
  {
    sub_100005F2C(__p, *a3, *(a3 + 8));
  }

  else
  {
    *__p = *a3;
    __p[2] = *(a3 + 16);
  }

  v5 = *(a1 + 16);
  if (v5)
  {
    if (std::__shared_weak_count::lock(v5))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_1013A8988(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1013A89AC(uint64_t a1, uint64_t a2, char a3)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    __p[2] = *(a2 + 16);
  }

  v7 = a3;
  v5 = *(a1 + 16);
  if (v5)
  {
    if (std::__shared_weak_count::lock(v5))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_1013A8B10(uint64_t a1, uint64_t a2, _BOOL4 a3)
{
  v6 = *(a1 + 40);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a2 + 23);
    v8 = (v7 & 0x80u) != 0;
    if ((v7 & 0x80u) != 0)
    {
      v7 = *(a2 + 8);
    }

    if (v8)
    {
      v9 = *a2;
    }

    else
    {
      v9 = a2;
    }

    if (v7)
    {
      v10 = v9;
    }

    else
    {
      v10 = "<invalid>";
    }

    *buf = 136315906;
    *&buf[4] = "";
    *&buf[12] = 2080;
    *&buf[14] = "";
    *&buf[22] = 2080;
    v22 = v10;
    v23 = 2080;
    v24 = asStringBool(a3);
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s%smarkDidSetup, %s -> %s", buf, 0x2Au);
  }

  memset(buf, 0, sizeof(buf));
  v11 = *(a2 + 23);
  if ((v11 & 0x80u) != 0)
  {
    v11 = *(a2 + 8);
  }

  if (v11)
  {
    sub_1013A8D68(buf, a2);
  }

  else
  {
    v17 = *(a1 + 656);
    v18 = *v17;
    v19 = v17[1];
    while (v18 != v19)
    {
      if (!*(*v18 + 49))
      {
        sub_1013A8D68(buf, (*v18 + 24));
      }

      v18 += 16;
    }
  }

  v12 = *buf;
  v13 = *&buf[8];
  if (*buf != *&buf[8])
  {
    do
    {
      v14 = sub_100007A6C(a1 + 880, v12);
      if (a1 + 888 != v14)
      {
        *(v14 + 128) = a3;
      }

      v12 += 3;
    }

    while (v12 != v13);
    v12 = *buf;
    v13 = *&buf[8];
  }

  if (v12 != v13)
  {
    v15 = &kCFBooleanTrue;
    if (!a3)
    {
      v15 = &kCFBooleanFalse;
    }

    v16 = *v15;
    do
    {
      (*(**(a1 + 120) + 16))(*(a1 + 120), v12, @"label-id-confirmed", v16, @"info", 0, 0, 0);
      v12 += 3;
    }

    while (v12 != v13);
  }

  v20 = buf;
  sub_10005AAF8(&v20);
}

void sub_1013A8D40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, char a11)
{
  a10 = &a11;
  sub_10005AAF8(&a10);
  _Unwind_Resume(a1);
}

void *sub_1013A8D68(void *result, __int128 *a2)
{
  v3 = result;
  v5 = result[1];
  v4 = result[2];
  if (v5 >= v4)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *result) >> 3);
    if (v7 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_1000CE3D4();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *result) >> 3);
    v9 = 2 * v8;
    if (2 * v8 <= v7 + 1)
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x555555555555555)
    {
      v10 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v10 = v9;
    }

    v23 = result;
    if (v10)
    {
      sub_100005348(result, v10);
    }

    v12 = 24 * v7;
    v20 = 0;
    v21 = 24 * v7;
    v22 = 24 * v7;
    if (*(a2 + 23) < 0)
    {
      sub_100005F2C(v12, *a2, *(a2 + 1));
      v12 = v21;
      v14 = v22;
    }

    else
    {
      v13 = *a2;
      *(24 * v7 + 0x10) = *(a2 + 2);
      *v12 = v13;
      v14 = 24 * v7;
    }

    *&v22 = v14 + 24;
    v15 = *(v3 + 8);
    v16 = (v12 + *v3 - v15);
    sub_10005A560(v3, *v3, v15, v16);
    v17 = *v3;
    *v3 = v16;
    v18 = *(v3 + 16);
    v19 = v22;
    *(v3 + 8) = v22;
    *&v22 = v17;
    *(&v22 + 1) = v18;
    v20 = v17;
    v21 = v17;
    result = sub_1000054E0(&v20);
    v11 = v19;
  }

  else
  {
    if (*(a2 + 23) < 0)
    {
      result = sub_100005F2C(result[1], *a2, *(a2 + 1));
    }

    else
    {
      v6 = *a2;
      *(v5 + 16) = *(a2 + 2);
      *v5 = v6;
    }

    v11 = v5 + 24;
    *(v3 + 8) = v5 + 24;
  }

  *(v3 + 8) = v11;
  return result;
}

void sub_1013A8F04(char *__dst, uint64_t a2, uint64_t a3, __int128 *a4, __int128 *a5)
{
  v10 = *(a2 + 656);
  v11 = *v10;
  v12 = *(v10 + 8);
  if (*v10 != v12)
  {
    while (!sub_100071DF8((*v11 + 24), a3))
    {
      v11 += 2;
      if (v11 == v12)
      {
        v11 = v12;
        break;
      }
    }

    v12 = *(v10 + 8);
  }

  if (v11 == v12)
  {
    v13 = 0;
  }

  else
  {
    v13 = v11[1];
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  *(__dst + 18) = 0;
  *(__dst + 7) = 0u;
  *(__dst + 8) = 0u;
  *(__dst + 5) = 0u;
  *(__dst + 6) = 0u;
  *(__dst + 3) = 0u;
  *(__dst + 4) = 0u;
  *(__dst + 1) = 0u;
  *(__dst + 2) = 0u;
  *__dst = 0u;
  memset(buf, 0, sizeof(buf));
  __p = 0uLL;
  v27 = 0;
  v24 = 0uLL;
  v25 = 0;
  v22 = 0uLL;
  v23 = 0;
  sub_1013B1DD4(__dst, a5, buf, a4, 1, &__p, &v24, &v22);
  v14 = *(a2 + 40);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = *(a3 + 23);
    v17 = *a3;
    v16 = *(a3 + 8);
    asString();
    if ((v15 & 0x80u) == 0)
    {
      v18 = v15;
    }

    else
    {
      v18 = v16;
    }

    if ((v15 & 0x80u) == 0)
    {
      v19 = a3;
    }

    else
    {
      v19 = v17;
    }

    p_p = __p;
    *buf = 136315906;
    if (!v18)
    {
      v19 = "<invalid>";
    }

    *&buf[4] = "";
    *&buf[12] = 2080;
    *&buf[14] = "";
    if (v27 >= 0)
    {
      p_p = &__p;
    }

    *&buf[22] = 2080;
    v29 = v19;
    v30 = 2080;
    v31 = p_p;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I %s%screatePrefixedLabel, %s <- %s", buf, 0x2Au);
    if (SHIBYTE(v27) < 0)
    {
      operator delete(__p);
    }
  }

  *buf = a3;
  v21 = sub_1013BBEE8(a2 + 928, a3);
  std::string::operator=((v21 + 56), __dst);
  std::string::operator=((v21 + 80), __dst + 1);
  std::string::operator=((v21 + 104), __dst + 2);
  *(v21 + 128) = __dst[72];
  std::string::operator=((v21 + 136), (__dst + 80));
  std::string::operator=((v21 + 160), (__dst + 104));
  std::string::operator=((v21 + 184), (__dst + 128));
  if (v13)
  {
    sub_100004A34(v13);
  }
}

void sub_1013A917C(_Unwind_Exception *a1)
{
  sub_100FB0A00(v1);
  if (v2)
  {
    sub_100004A34(v2);
  }

  _Unwind_Resume(a1);
}

std::string *sub_1013A91A8(std::string *__dst, std::string *__str)
{
  if (__dst[2].__r_.__value_.__s.__data_[0] == 1)
  {
    std::string::operator=(__dst, __str);
    if (SHIBYTE(__dst[1].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst[1].__r_.__value_.__l.__data_);
    }

    v4 = *&__str[1].__r_.__value_.__l.__data_;
    __dst[1].__r_.__value_.__r.__words[2] = __str[1].__r_.__value_.__r.__words[2];
    *&__dst[1].__r_.__value_.__l.__data_ = v4;
    *(&__str[1].__r_.__value_.__s + 23) = 0;
    __str[1].__r_.__value_.__s.__data_[0] = 0;
  }

  else
  {
    if (SHIBYTE(__str->__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100005F2C(__dst, __str->__r_.__value_.__l.__data_, __str->__r_.__value_.__l.__size_);
    }

    else
    {
      v5 = *&__str->__r_.__value_.__l.__data_;
      __dst->__r_.__value_.__r.__words[2] = __str->__r_.__value_.__r.__words[2];
      *&__dst->__r_.__value_.__l.__data_ = v5;
    }

    v6 = *&__str[1].__r_.__value_.__l.__data_;
    __dst[1].__r_.__value_.__r.__words[2] = __str[1].__r_.__value_.__r.__words[2];
    *&__dst[1].__r_.__value_.__l.__data_ = v6;
    __str[1].__r_.__value_.__l.__size_ = 0;
    __str[1].__r_.__value_.__r.__words[2] = 0;
    __str[1].__r_.__value_.__r.__words[0] = 0;
    __dst[2].__r_.__value_.__s.__data_[0] = 1;
  }

  return __dst;
}

void sub_1013A925C(uint64_t a1, std::string::size_type a2, const void **a3)
{
  v6 = *(a1 + 880);
  v7 = (a1 + 888);
  if (v6 != (a1 + 888))
  {
    v8 = *(a3 + 23);
    if (v8 >= 0)
    {
      v9 = *(a3 + 23);
    }

    else
    {
      v9 = a3[1];
    }

    if (v8 >= 0)
    {
      v10 = a3;
    }

    else
    {
      v10 = *a3;
    }

    while (1)
    {
      v11 = *(v6 + 127);
      v12 = v11;
      if ((v11 & 0x80u) != 0)
      {
        v11 = v6[14];
      }

      if (v11 == v9)
      {
        v13 = v12 >= 0 ? v6 + 13 : v6[13];
        if (!memcmp(v13, v10, v9))
        {
          break;
        }
      }

      v14 = v6[1];
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
          v15 = v6[2];
          v16 = *v15 == v6;
          v6 = v15;
        }

        while (!v16);
      }

      v6 = v15;
      if (v15 == v7)
      {
        goto LABEL_37;
      }
    }
  }

  if (v6 != v7)
  {
    if (sub_100071DF8(v6 + 4, a2))
    {
      v17 = *(a1 + 40);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        if (*(a3 + 23) >= 0)
        {
          v18 = a3;
        }

        else
        {
          v18 = *a3;
        }

        v19 = *(a2 + 23);
        v20 = (v19 & 0x80u) != 0;
        if ((v19 & 0x80u) != 0)
        {
          v19 = *(a2 + 8);
        }

        if (v20)
        {
          v21 = *a2;
        }

        else
        {
          v21 = a2;
        }

        if (v19)
        {
          v22 = v21;
        }

        else
        {
          v22 = "<invalid>";
        }

        LODWORD(buf.__r_.__value_.__l.__data_) = 136315906;
        *(buf.__r_.__value_.__r.__words + 4) = "";
        WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
        *(&buf.__r_.__value_.__r.__words[1] + 6) = "";
        HIWORD(buf.__r_.__value_.__r.__words[2]) = 2080;
        v61 = v18;
        v62 = 2080;
        v63 = v22;
        v23 = "#W %s%sassignLabel, called for label %s to be assigned to it's own persona %s - suppressed";
        goto LABEL_50;
      }

      return;
    }

    __dst[0] = 0;
    __dst[1] = 0;
    v55 = 0;
    if (*(v6 + 55) < 0)
    {
      sub_100005F2C(__dst, v6[4], v6[5]);
    }

    else
    {
      *__dst = *(v6 + 2);
      v55 = v6[6];
    }

    v53 = 0;
    if (*(a3 + 23) < 0)
    {
      sub_100005F2C(v51, *a3, a3[1]);
    }

    else
    {
      *v51 = *a3;
      v52 = a3[2];
    }

    if (SHIBYTE(v52) < 0)
    {
      sub_100005F2C(__p, v51[0], v51[1]);
    }

    else
    {
      *__p = *v51;
      *&v50 = v52;
    }

    v56 = 0;
    if (SBYTE7(v50) < 0)
    {
      sub_100005F2C(&buf, __p[0], __p[1]);
    }

    else
    {
      *&buf.__r_.__value_.__l.__data_ = *__p;
      buf.__r_.__value_.__r.__words[2] = v50;
    }

    v57 = 0;
    if (ctu::cf::convert_copy())
    {
      v29 = v56;
      v56 = v57;
      *v58 = v29;
      sub_100005978(v58);
    }

    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }

    v53 = v56;
    v56 = 0;
    sub_100005978(&v56);
    if (SBYTE7(v50) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v52) < 0)
    {
      operator delete(v51[0]);
    }

    *__p = 0u;
    v50 = 0u;
    v30 = sub_100007A6C(a1 + 880, a2);
    if (v7 != v30)
    {
      sub_1001696A4(__p, (v30 + 104));
    }

    buf.__r_.__value_.__r.__words[0] = a2;
    v31 = sub_1013BBEE8(a1 + 880, a2);
    std::string::operator=((v31 + 56), (v6 + 7));
    std::string::operator=((v31 + 80), (v6 + 10));
    std::string::operator=((v31 + 104), (v6 + 13));
    *(v31 + 128) = *(v6 + 128);
    std::string::operator=((v31 + 136), (v6 + 17));
    std::string::operator=((v31 + 160), (v6 + 20));
    std::string::operator=((v31 + 184), (v6 + 23));
    *(v31 + 128) = 0;
    v32 = *(a1 + 656);
    v33 = *v32;
    v34 = *(v32 + 8);
    if (*v32 != v34)
    {
      while (!sub_100071DF8((*v33 + 24), a2))
      {
        v33 += 2;
        if (v33 == v34)
        {
          v33 = v34;
          break;
        }
      }

      v34 = *(v32 + 8);
    }

    if (v33 == v34)
    {
      v36 = 0;
    }

    else
    {
      v35 = *v33;
      v36 = v33[1];
      if (v36)
      {
        atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v35)
      {
        if (*(v35 + 95) < 0)
        {
          sub_100005F2C(&buf, *(v35 + 72), *(v35 + 80));
        }

        else
        {
          buf = *(v35 + 72);
        }

        goto LABEL_86;
      }
    }

    memset(&buf, 0, sizeof(buf));
LABEL_86:
    std::string::operator=((v31 + 136), &buf);
    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }

    (*(**(a1 + 120) + 24))(&v57);
    memset(&buf, 0, sizeof(buf));
    ctu::cf::assign();
    *v58 = buf.__r_.__value_.__l.__size_;
    v37 = buf.__r_.__value_.__r.__words[0];
    *&v58[7] = *(&buf.__r_.__value_.__r.__words[1] + 7);
    v38 = HIBYTE(buf.__r_.__value_.__r.__words[2]);
    if (*(v31 + 183) < 0)
    {
      operator delete(*(v31 + 160));
    }

    v39 = *v58;
    *(v31 + 160) = v37;
    *(v31 + 168) = v39;
    *(v31 + 175) = *&v58[7];
    *(v31 + 183) = v38;
    sub_10000A1EC(&v57);
    v40 = *(a1 + 40);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      v41 = *(a2 + 23);
      v43 = *a2;
      v42 = *(a2 + 8);
      asString();
      if ((v41 & 0x80u) == 0)
      {
        v44 = v41;
      }

      else
      {
        v44 = v42;
      }

      if ((v41 & 0x80u) == 0)
      {
        v45 = a2;
      }

      else
      {
        v45 = v43;
      }

      v46 = *v58;
      LODWORD(buf.__r_.__value_.__l.__data_) = 136315906;
      if (!v44)
      {
        v45 = "<invalid>";
      }

      *(buf.__r_.__value_.__r.__words + 4) = "";
      WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
      *(&buf.__r_.__value_.__r.__words[1] + 6) = "";
      if (v59 >= 0)
      {
        v46 = v58;
      }

      HIWORD(buf.__r_.__value_.__r.__words[2]) = 2080;
      v61 = v45;
      v62 = 2080;
      v63 = v46;
      _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "#I %s%sassignLabel, %s <- %s", &buf, 0x2Au);
      if (v59 < 0)
      {
        operator delete(*v58);
      }
    }

    sub_1013B7834((a1 + 880), __dst);
    (*(**(a1 + 120) + 32))(*(a1 + 120), __dst, @"label-id", @"info", 0, 0);
    (*(**(a1 + 120) + 32))(*(a1 + 120), __dst, @"label-id-confirmed", @"info", 0, 0);
    if (BYTE8(v50) == 1 && (sub_1013A75CC(a1, __p) & 1) == 0)
    {
      *v58 = @"unique-sim-label-store";
      memset(&buf, 0, sizeof(buf));
      sub_10005B328(&buf, v58, &v58[8], 1uLL);
      v48 = (SBYTE7(v50) & 0x80u) == 0 ? __p : __p[0];
      sub_10071C520(*(a1 + 104), v48, &buf.__r_.__value_.__l.__data_, 0, v47);
      if (buf.__r_.__value_.__r.__words[0])
      {
        buf.__r_.__value_.__l.__size_ = buf.__r_.__value_.__r.__words[0];
        operator delete(buf.__r_.__value_.__l.__data_);
      }
    }

    (*(**(a1 + 120) + 16))(*(a1 + 120), a2, @"label-id", v53, @"info", 0, 0, 0);
    (*(**(a1 + 120) + 32))(*(a1 + 120), a2, @"label-id-confirmed", @"info", 0, 0);
    if (v36)
    {
      sub_100004A34(v36);
    }

    if (BYTE8(v50) == 1 && SBYTE7(v50) < 0)
    {
      operator delete(__p[0]);
    }

    sub_100005978(&v53);
    if (SHIBYTE(v55) < 0)
    {
      operator delete(__dst[0]);
    }

    return;
  }

LABEL_37:
  v17 = *(a1 + 40);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v24 = *(a2 + 23);
    v25 = (v24 & 0x80u) != 0;
    if ((v24 & 0x80u) != 0)
    {
      v24 = *(a2 + 8);
    }

    if (v25)
    {
      v26 = *a2;
    }

    else
    {
      v26 = a2;
    }

    if (v24)
    {
      v27 = v26;
    }

    else
    {
      v27 = "<invalid>";
    }

    if (*(a3 + 23) >= 0)
    {
      v28 = a3;
    }

    else
    {
      v28 = *a3;
    }

    LODWORD(buf.__r_.__value_.__l.__data_) = 136315906;
    *(buf.__r_.__value_.__r.__words + 4) = "";
    WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
    *(&buf.__r_.__value_.__r.__words[1] + 6) = "";
    HIWORD(buf.__r_.__value_.__r.__words[2]) = 2080;
    v61 = v27;
    v62 = 2080;
    v63 = v28;
    v23 = "#W %s%sassignLabel, %s <- %s failed : label not found";
LABEL_50:
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, v23, &buf, 0x2Au);
  }
}

void sub_1013A9A84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, const void *a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, char a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  if (v42)
  {
    sub_100004A34(v42);
  }

  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  sub_100005978(&a22);
  if (a28 < 0)
  {
    operator delete(a23);
  }

  _Unwind_Resume(a1);
}

void sub_1013A9B98(uint64_t a1, uint64_t a2, uint64_t a3, const std::string *a4, const std::string *a5, int a6)
{
  *buf = a3;
  v12 = sub_1013BBEE8(a2 + 880, a3);
  std::string::operator=((v12 + 56), a4);
  std::string::operator=((v12 + 80), a5);
  *(v12 + 128) = a6;
  v13 = *(a2 + 40);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = (v12 + 104);
    if (*(v12 + 127) < 0)
    {
      v14 = v14->isa;
    }

    if ((a4->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v15 = a4;
    }

    else
    {
      v15 = a4->__r_.__value_.__r.__words[0];
    }

    if ((a5->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v16 = a5;
    }

    else
    {
      v16 = a5->__r_.__value_.__r.__words[0];
    }

    v17 = *(a3 + 23);
    v18 = (v17 & 0x80u) != 0;
    if ((v17 & 0x80u) != 0)
    {
      v17 = *(a3 + 8);
    }

    if (v18)
    {
      v19 = *a3;
    }

    else
    {
      v19 = a3;
    }

    if (v17)
    {
      v20 = v19;
    }

    else
    {
      v20 = "<invalid>";
    }

    *buf = 136316418;
    *&buf[4] = "";
    *&buf[12] = 2080;
    *&buf[14] = "";
    *&buf[22] = 2080;
    v53 = v14;
    v54 = 2080;
    v55 = v15;
    v56 = 2080;
    v57 = v16;
    v58 = 2080;
    v59 = v20;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I %s%supdateLabelText, %s <- text:%s (tag:%s) : belongs to %s", buf, 0x3Eu);
  }

  *buf = @"unique-sim-label-store";
  v45 = 0;
  v46 = 0;
  v44 = 0;
  sub_10005B328(&v44, buf, &buf[8], 1uLL);
  theDict = 0;
  v22 = (v12 + 104);
  v23 = (v12 + 104);
  if (*(v12 + 127) < 0)
  {
    v23 = *v22;
  }

  v36 = a1;
  sub_10071C448(*(a2 + 104), v23, &v44, 0, v21, buf);
  v24 = *buf;
  if (*buf && (v25 = CFGetTypeID(*buf), v25 == CFDictionaryGetTypeID()))
  {
    theDict = v24;
    CFRetain(v24);
  }

  else
  {
    theDict = 0;
  }

  sub_10000A1EC(buf);
  v42 = 0;
  if (theDict)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, theDict);
LABEL_32:
    v29 = v42;
    v42 = MutableCopy;
    *buf = v29;
    sub_1000296E0(buf);
    goto LABEL_33;
  }

  v27 = *(a2 + 40);
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    v28 = (v12 + 104);
    if (*(v12 + 127) < 0)
    {
      v28 = *v22;
    }

    *buf = 136315650;
    *&buf[4] = "";
    *&buf[12] = 2080;
    *&buf[14] = "";
    *&buf[22] = 2080;
    v53 = v28;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "#W %s%supdateLabelText called for missing labelID %s", buf, 0x20u);
  }

  MutableCopy = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (MutableCopy)
  {
    goto LABEL_32;
  }

LABEL_33:
  v30 = v42;
  if (SHIBYTE(a4->__r_.__value_.__r.__words[2]) < 0)
  {
    sub_100005F2C(__dst, a4->__r_.__value_.__l.__data_, a4->__r_.__value_.__l.__size_);
  }

  else
  {
    *__dst = *&a4->__r_.__value_.__l.__data_;
    v40 = a4->__r_.__value_.__r.__words[2];
  }

  if (SHIBYTE(v40) < 0)
  {
    sub_100005F2C(__p, __dst[0], __dst[1]);
  }

  else
  {
    *__p = *__dst;
    v49 = v40;
  }

  v47 = 0;
  if (SHIBYTE(v49) < 0)
  {
    sub_100005F2C(buf, __p[0], __p[1]);
  }

  else
  {
    *buf = *__p;
    *&buf[16] = v49;
  }

  v50 = 0;
  if (ctu::cf::convert_copy())
  {
    v31 = v47;
    v47 = v50;
    v51 = v31;
    sub_100005978(&v51);
  }

  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  value = v47;
  v47 = 0;
  sub_100005978(&v47);
  if (SHIBYTE(v49) < 0)
  {
    operator delete(__p[0]);
  }

  CFDictionarySetValue(v30, @"text", value);
  sub_100005978(&value);
  if (SHIBYTE(v40) < 0)
  {
    operator delete(__dst[0]);
  }

  v32 = v42;
  if (SHIBYTE(a5->__r_.__value_.__r.__words[2]) < 0)
  {
    sub_100005F2C(v37, a5->__r_.__value_.__l.__data_, a5->__r_.__value_.__l.__size_);
  }

  else
  {
    *v37 = *&a5->__r_.__value_.__l.__data_;
    v38 = a5->__r_.__value_.__r.__words[2];
  }

  if (SHIBYTE(v38) < 0)
  {
    sub_100005F2C(__p, v37[0], v37[1]);
  }

  else
  {
    *__p = *v37;
    v49 = v38;
  }

  v47 = 0;
  if (SHIBYTE(v49) < 0)
  {
    sub_100005F2C(buf, __p[0], __p[1]);
  }

  else
  {
    *buf = *__p;
    *&buf[16] = v49;
  }

  v50 = 0;
  if (ctu::cf::convert_copy())
  {
    v33 = v47;
    v47 = v50;
    v51 = v33;
    sub_100005978(&v51);
  }

  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  v34 = v47;
  value = v47;
  v47 = 0;
  sub_100005978(&v47);
  if (SHIBYTE(v49) < 0)
  {
    operator delete(__p[0]);
  }

  CFDictionarySetValue(v32, @"tag", v34);
  sub_100005978(&value);
  if (SHIBYTE(v38) < 0)
  {
    operator delete(v37[0]);
  }

  if (*(v12 + 127) < 0)
  {
    v22 = *v22;
  }

  sub_10071C350(*(a2 + 104), v22, v42, &v44, 0, 0, 0);
  v35 = &kCFBooleanTrue;
  if (!a6)
  {
    v35 = &kCFBooleanFalse;
  }

  (*(**(a2 + 120) + 16))(*(a2 + 120), a3, @"label-id-confirmed", *v35, @"info", 0, 0, 0);
  sub_100DFECD0(v36, v12 + 56);
  sub_1000296E0(&v42);
  sub_1000296E0(&theDict);
  if (v44)
  {
    v45 = v44;
    operator delete(v44);
  }
}

void sub_1013AA18C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24, int a25, __int16 a26, char a27, char a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, uint64_t a35, char a36, void *__p, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, void *a46, uint64_t a47, int a48, __int16 a49, char a50, char a51)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1013AA2B0(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, __int128 *a5, uint64_t a6)
{
  v12 = *(a2 + 656);
  v13 = *v12;
  v14 = *(v12 + 8);
  if (*v12 != v14)
  {
    while (!sub_100071DF8((*v13 + 24), a3))
    {
      v13 += 2;
      if (v13 == v14)
      {
        v13 = v14;
        break;
      }
    }

    v14 = *(v12 + 8);
  }

  if (v13 == v14)
  {
    v16 = 0;
LABEL_13:
    v67 = 0uLL;
    v68 = 0;
    goto LABEL_14;
  }

  v15 = *v13;
  v16 = v13[1];
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v67 = 0uLL;
  v68 = 0;
  if (!v15)
  {
    goto LABEL_13;
  }

  if (*(v15 + 95) < 0)
  {
    sub_100005F2C(&v67, *(v15 + 72), *(v15 + 80));
  }

  else
  {
    v67 = *(v15 + 72);
    v68 = *(v15 + 88);
  }

LABEL_14:
  v65 = 0uLL;
  v66 = 0;
  (*(**(a2 + 120) + 24))(&cf);
  __p[0] = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  *&v76 = 0;
  *buf = 0;
  sub_100060DE8(buf, __p);
  if (*buf)
  {
    sub_100222570(&v76, buf);
  }

  sub_100005978(buf);
  *&v62 = v76;
  *&v76 = 0;
  sub_100005978(&v76);
  sub_10000A1EC(__p);
  memset(buf, 0, sizeof(buf));
  ctu::cf::assign();
  v65 = *buf;
  v66 = *&buf[16];
  sub_100005978(&v62);
  sub_10000A1EC(&cf);
  v62 = 0uLL;
  v63 = 0;
  (*(**(a2 + 120) + 24))(&v61);
  __p[0] = v61;
  if (v61)
  {
    CFRetain(v61);
  }

  *&v76 = 0;
  *buf = 0;
  sub_100060DE8(buf, __p);
  if (*buf)
  {
    sub_100222570(&v76, buf);
  }

  sub_100005978(buf);
  v71 = v76;
  *&v76 = 0;
  sub_100005978(&v76);
  sub_10000A1EC(__p);
  memset(buf, 0, sizeof(buf));
  ctu::cf::assign();
  v62 = *buf;
  v63 = *&buf[16];
  sub_100005978(&v71);
  sub_10000A1EC(&v61);
  *(a1 + 144) = 0;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  if (*(a6 + 24) == 1)
  {
    if (*(a6 + 23) < 0)
    {
      sub_100005F2C(__p, *a6, *(a6 + 8));
    }

    else
    {
      *__p = *a6;
      *&v60 = *(a6 + 16);
    }
  }

  else
  {
    *&v76 = CFUUIDCreate(0);
    v71 = CFUUIDCreateString(0, v76);
    memset(buf, 0, sizeof(buf));
    ctu::cf::assign();
    *__p = *buf;
    *&v60 = *&buf[16];
    sub_100005978(&v71);
    sub_1000475BC(&v76);
  }

  sub_1013B1DD4(a1, __p, a4, a5, 0, &v67, &v65, &v62);
  if (SBYTE7(v60) < 0)
  {
    operator delete(__p[0]);
  }

  v17 = *(a2 + 40);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v48 = v16;
    v18 = *(a3 + 23);
    v19 = *a3;
    v20 = *(a3 + 8);
    asString();
    if ((v18 & 0x80u) == 0)
    {
      v21 = v18;
    }

    else
    {
      v21 = v20;
    }

    if ((v18 & 0x80u) == 0)
    {
      v22 = a3;
    }

    else
    {
      v22 = v19;
    }

    v23 = __p[0];
    *buf = 136315906;
    if (!v21)
    {
      v22 = "<invalid>";
    }

    *&buf[4] = "";
    *&buf[12] = 2080;
    *&buf[14] = "";
    if ((SBYTE7(v60) & 0x80u) == 0)
    {
      v23 = __p;
    }

    *&buf[22] = 2080;
    v73 = v22;
    v74 = 2080;
    v75 = v23;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I %s%screateNewLabel, %s <- %s", buf, 0x2Au);
    if (SBYTE7(v60) < 0)
    {
      operator delete(__p[0]);
    }

    v16 = v48;
  }

  v60 = 0u;
  *__p = 0u;
  v24 = sub_100007A6C(a2 + 880, a3);
  if (a2 + 888 != v24)
  {
    sub_1001696A4(__p, (v24 + 104));
    v25 = *(a2 + 40);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = __p;
      if (SBYTE7(v60) < 0)
      {
        v26 = __p[0];
      }

      v27 = *(a3 + 23);
      v28 = (v27 & 0x80u) != 0;
      if ((v27 & 0x80u) != 0)
      {
        v27 = *(a3 + 8);
      }

      if (v28)
      {
        v29 = *a3;
      }

      else
      {
        v29 = a3;
      }

      if (v27)
      {
        v30 = v29;
      }

      else
      {
        v30 = "<invalid>";
      }

      *buf = 136315906;
      *&buf[4] = "";
      *&buf[12] = 2080;
      *&buf[14] = "";
      *&buf[22] = 2080;
      v73 = v26;
      v74 = 2080;
      v75 = v30;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#W %s%slabel '%s' was assigned to %s. Will be destroyed", buf, 0x2Au);
    }
  }

  *buf = a3;
  v31 = sub_1013BBEE8(a2 + 880, a3);
  std::string::operator=((v31 + 56), a1);
  std::string::operator=((v31 + 80), (a1 + 24));
  std::string::operator=((v31 + 104), (a1 + 48));
  *(v31 + 128) = *(a1 + 72);
  std::string::operator=((v31 + 136), (a1 + 80));
  std::string::operator=((v31 + 160), (a1 + 104));
  std::string::operator=((v31 + 184), (a1 + 128));
  v58 = 0;
  if (*(a1 + 71) < 0)
  {
    sub_100005F2C(__dst, *(a1 + 48), *(a1 + 56));
  }

  else
  {
    *__dst = *(a1 + 48);
    v57 = *(a1 + 64);
  }

  if (SHIBYTE(v57) < 0)
  {
    sub_100005F2C(&v76, __dst[0], __dst[1]);
  }

  else
  {
    v76 = *__dst;
    v77 = v57;
  }

  v69 = 0;
  if (SHIBYTE(v77) < 0)
  {
    sub_100005F2C(buf, v76, *(&v76 + 1));
  }

  else
  {
    *buf = v76;
    *&buf[16] = v77;
  }

  v70 = 0;
  if (ctu::cf::convert_copy())
  {
    v32 = v69;
    v69 = v70;
    v71 = v32;
    sub_100005978(&v71);
  }

  if (buf[23] < 0)
  {
    operator delete(*buf);
  }

  v58 = v69;
  v69 = 0;
  sub_100005978(&v69);
  if (SHIBYTE(v77) < 0)
  {
    operator delete(v76);
  }

  if (SHIBYTE(v57) < 0)
  {
    operator delete(__dst[0]);
  }

  theDict = 0;
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (Mutable)
  {
    v34 = theDict;
    theDict = Mutable;
    *buf = v34;
    sub_1000296E0(buf);
  }

  v35 = theDict;
  if (*(a1 + 23) < 0)
  {
    sub_100005F2C(v52, *a1, *(a1 + 8));
  }

  else
  {
    *v52 = *a1;
    v53 = *(a1 + 16);
  }

  if (SHIBYTE(v53) < 0)
  {
    sub_100005F2C(&v76, v52[0], v52[1]);
  }

  else
  {
    v76 = *v52;
    v77 = v53;
  }

  v69 = 0;
  if (SHIBYTE(v77) < 0)
  {
    sub_100005F2C(buf, v76, *(&v76 + 1));
  }

  else
  {
    *buf = v76;
    *&buf[16] = v77;
  }

  v70 = 0;
  if (ctu::cf::convert_copy())
  {
    v36 = v69;
    v69 = v70;
    v71 = v36;
    sub_100005978(&v71);
  }

  if (buf[23] < 0)
  {
    operator delete(*buf);
  }

  value = v69;
  v69 = 0;
  sub_100005978(&v69);
  if (SHIBYTE(v77) < 0)
  {
    operator delete(v76);
  }

  CFDictionaryAddValue(v35, @"text", value);
  sub_100005978(&value);
  if (SHIBYTE(v53) < 0)
  {
    operator delete(v52[0]);
  }

  if (*(a1 + 47) < 0)
  {
    v38 = *(a1 + 32);
    if (!v38)
    {
      goto LABEL_111;
    }

    v37 = theDict;
    sub_100005F2C(v50, *(a1 + 24), v38);
  }

  else
  {
    if (!*(a1 + 47))
    {
      goto LABEL_111;
    }

    v37 = theDict;
    *v50 = *(a1 + 24);
    v51 = *(a1 + 40);
  }

  if (SHIBYTE(v51) < 0)
  {
    sub_100005F2C(&v76, v50[0], v50[1]);
  }

  else
  {
    v76 = *v50;
    v77 = v51;
  }

  v69 = 0;
  if (SHIBYTE(v77) < 0)
  {
    sub_100005F2C(buf, v76, *(&v76 + 1));
  }

  else
  {
    *buf = v76;
    *&buf[16] = v77;
  }

  v70 = 0;
  if (ctu::cf::convert_copy())
  {
    v39 = v69;
    v69 = v70;
    v71 = v39;
    sub_100005978(&v71);
  }

  if (buf[23] < 0)
  {
    operator delete(*buf);
  }

  value = v69;
  v69 = 0;
  sub_100005978(&v69);
  if (SHIBYTE(v77) < 0)
  {
    operator delete(v76);
  }

  CFDictionaryAddValue(v37, @"tag", value);
  sub_100005978(&value);
  if (SHIBYTE(v51) < 0)
  {
    operator delete(v50[0]);
  }

LABEL_111:
  v69 = 0;
  if (*(a6 + 24) != 1)
  {
    goto LABEL_119;
  }

  *&v76 = @"unique-sim-label-store";
  *(&v76 + 1) = v58;
  memset(buf, 0, sizeof(buf));
  sub_10005B328(buf, &v76, &v77, 2uLL);
  sub_10071C330(*(a2 + 104), @"ts", buf, 0, &v49);
  v71 = v49;
  if (v49)
  {
    CFRetain(v49);
  }

  v70 = 0;
  *&v76 = 0;
  sub_10010B240(&v76, &v71);
  if (v76)
  {
    sub_1003F510C(&v70, &v76);
  }

  sub_100029A48(&v76);
  value = v70;
  v70 = 0;
  sub_100029A48(&v70);
  sub_10000A1EC(&v71);
  *&v76 = v69;
  v69 = value;
  value = 0;
  sub_100029A48(&v76);
  sub_100029A48(&value);
  sub_10000A1EC(&v49);
  if (*buf)
  {
    *&buf[8] = *buf;
    operator delete(*buf);
  }

  v40 = v69;
  if (!v69)
  {
LABEL_119:
    v41 = time(0);
    *&v76 = 0;
    *buf = v41;
    v42 = CFNumberCreate(kCFAllocatorDefault, kCFNumberLongType, buf);
    if (v42)
    {
      v43 = v76;
      *&v76 = v42;
      *buf = v43;
      sub_100029A48(buf);
    }

    v71 = v76;
    *&v76 = 0;
    sub_100029A48(&v76);
    v44 = v69;
    v69 = v71;
    v71 = 0;
    *buf = v44;
    sub_100029A48(buf);
    sub_100029A48(&v71);
    v40 = v69;
  }

  CFDictionaryAddValue(theDict, @"ts", v40);
  *&v76 = @"unique-sim-label-store";
  memset(buf, 0, sizeof(buf));
  sub_10005B328(buf, &v76, &v76 + 8, 1uLL);
  if (*(a1 + 71) >= 0)
  {
    v45 = (a1 + 48);
  }

  else
  {
    v45 = *(a1 + 48);
  }

  sub_10071C350(*(a2 + 104), v45, theDict, buf, 0, 0, 0);
  if (BYTE8(v60) == 1 && (sub_1013A75CC(a2, __p) & 1) == 0)
  {
    if ((SBYTE7(v60) & 0x80u) == 0)
    {
      v47 = __p;
    }

    else
    {
      v47 = __p[0];
    }

    sub_10071C520(*(a2 + 104), v47, buf, 0, v46);
  }

  (*(**(a2 + 120) + 16))(*(a2 + 120), a3, @"label-id", v58, @"info", 0, 0, 0);
  (*(**(a2 + 120) + 32))(*(a2 + 120), a3, @"label-id-confirmed", @"info", 0, 0);
  if (*buf)
  {
    *&buf[8] = *buf;
    operator delete(*buf);
  }

  sub_100029A48(&v69);
  sub_1000296E0(&theDict);
  sub_100005978(&v58);
  if (BYTE8(v60) == 1 && SBYTE7(v60) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v63) < 0)
  {
    operator delete(v62);
  }

  if (SHIBYTE(v66) < 0)
  {
    operator delete(v65);
  }

  if (SHIBYTE(v68) < 0)
  {
    operator delete(v67);
  }

  if (v16)
  {
    sub_100004A34(v16);
  }
}

void sub_1013AAF0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, char a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, char a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, char a43, uint64_t a44, char a45, void *a46, uint64_t a47, int a48, __int16 a49, char a50, char a51, char a52, void *a53, uint64_t a54, int a55, __int16 a56, char a57, char a58)
{
  if (v58)
  {
    sub_100004A34(v58);
  }

  _Unwind_Resume(exception_object);
}

void sub_1013AB290(uint64_t a1, __int128 *a2, uint64_t a3, const void *a4)
{
  v84 = 0;
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(&__dst, *a2, *(a2 + 1));
  }

  else
  {
    __dst = *a2;
    v83 = *(a2 + 2);
  }

  if (SHIBYTE(v83) < 0)
  {
    sub_100005F2C(&v94, __dst, *(&__dst + 1));
  }

  else
  {
    v94 = __dst;
    v95 = v83;
  }

  v73 = 0;
  if (SHIBYTE(v95) < 0)
  {
    sub_100005F2C(valuePtr, v94, *(&v94 + 1));
  }

  else
  {
    *valuePtr = v94;
    *&valuePtr[16] = v95;
  }

  v76 = 0;
  if (ctu::cf::convert_copy())
  {
    v8 = v73;
    v73 = v76;
    __p[0] = v8;
    sub_100005978(__p);
  }

  if ((valuePtr[23] & 0x80000000) != 0)
  {
    operator delete(*valuePtr);
  }

  v84 = v73;
  v73 = 0;
  sub_100005978(&v73);
  if (SHIBYTE(v95) < 0)
  {
    operator delete(v94);
  }

  if (SHIBYTE(v83) < 0)
  {
    operator delete(__dst);
  }

  v81 = 0;
  if (*(a3 + 23) < 0)
  {
    sub_100005F2C(__p, *a3, *(a3 + 8));
  }

  else
  {
    *__p = *a3;
    v80 = *(a3 + 16);
  }

  if (SHIBYTE(v80) < 0)
  {
    sub_100005F2C(&v94, __p[0], __p[1]);
  }

  else
  {
    v94 = *__p;
    v95 = v80;
  }

  v66[0] = 0;
  if (SHIBYTE(v95) < 0)
  {
    sub_100005F2C(valuePtr, v94, *(&v94 + 1));
  }

  else
  {
    *valuePtr = v94;
    *&valuePtr[16] = v95;
  }

  v73 = 0;
  if (ctu::cf::convert_copy())
  {
    v9 = v66[0];
    v66[0] = v73;
    v76 = v9;
    sub_100005978(&v76);
  }

  if ((valuePtr[23] & 0x80000000) != 0)
  {
    operator delete(*valuePtr);
  }

  v81 = v66[0];
  v66[0] = 0;
  sub_100005978(v66);
  if (SHIBYTE(v95) < 0)
  {
    operator delete(v94);
  }

  if (SHIBYTE(v80) < 0)
  {
    operator delete(__p[0]);
  }

  *valuePtr = @"unique-sim-label-store";
  *&valuePtr[8] = v84;
  v77 = 0;
  v78 = 0;
  v76 = 0;
  sub_10005B328(&v76, valuePtr, &valuePtr[16], 2uLL);
  *valuePtr = @"unique-sim-label-store";
  *&valuePtr[8] = v81;
  v74 = 0;
  v75 = 0;
  v73 = 0;
  sub_10005B328(&v73, valuePtr, &valuePtr[16], 2uLL);
  v72 = 0;
  sub_10071C330(*(a1 + 104), @"ts", &v76, 0, &cf);
  *&v94 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  v66[0] = 0;
  *valuePtr = 0;
  sub_10010B240(valuePtr, &v94);
  if (*valuePtr)
  {
    sub_1003F510C(v66, valuePtr);
  }

  sub_100029A48(valuePtr);
  v72 = v66[0];
  v66[0] = 0;
  sub_100029A48(v66);
  sub_10000A1EC(&v94);
  sub_10000A1EC(&cf);
  v70 = 0;
  sub_10071C330(*(a1 + 104), @"ts", &v73, 0, &v69);
  *&v94 = v69;
  if (v69)
  {
    CFRetain(v69);
  }

  v66[0] = 0;
  *valuePtr = 0;
  sub_10010B240(valuePtr, &v94);
  if (*valuePtr)
  {
    sub_1003F510C(v66, valuePtr);
  }

  sub_100029A48(valuePtr);
  v70 = v66[0];
  v66[0] = 0;
  sub_100029A48(v66);
  sub_10000A1EC(&v94);
  sub_10000A1EC(&v69);
  theDict = 0;
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (Mutable)
  {
    v11 = theDict;
    theDict = Mutable;
    *valuePtr = v11;
    sub_1000296E0(valuePtr);
  }

  v12 = theDict;
  if (*(a3 + 23) < 0)
  {
    sub_100005F2C(v66, *a3, *(a3 + 8));
  }

  else
  {
    *v66 = *a3;
    v67 = *(a3 + 16);
  }

  if (SHIBYTE(v67) < 0)
  {
    sub_100005F2C(&v94, v66[0], v66[1]);
  }

  else
  {
    v94 = *v66;
    v95 = v67;
  }

  values = 0;
  if (SHIBYTE(v95) < 0)
  {
    sub_100005F2C(valuePtr, v94, *(&v94 + 1));
  }

  else
  {
    *valuePtr = v94;
    *&valuePtr[16] = v95;
  }

  v60[0] = 0;
  if (ctu::cf::convert_copy())
  {
    v13 = values;
    values = v60[0];
    v63 = v13;
    sub_100005978(&v63);
  }

  if ((valuePtr[23] & 0x80000000) != 0)
  {
    operator delete(*valuePtr);
  }

  value = values;
  values = 0;
  sub_100005978(&values);
  if (SHIBYTE(v95) < 0)
  {
    operator delete(v94);
  }

  CFDictionarySetValue(v12, @"to", value);
  sub_100005978(&value);
  if (SHIBYTE(v67) < 0)
  {
    operator delete(v66[0]);
  }

  v14 = theDict;
  v15 = time(0);
  *&v94 = 0;
  *valuePtr = v15;
  v16 = CFNumberCreate(kCFAllocatorDefault, kCFNumberLongType, valuePtr);
  if (v16)
  {
    v17 = v94;
    *&v94 = v16;
    *valuePtr = v17;
    sub_100029A48(valuePtr);
  }

  v63 = v94;
  *&v94 = 0;
  sub_100029A48(&v94);
  CFDictionarySetValue(v14, @"ts", v63);
  sub_100029A48(&v63);
  CFDictionarySetValue(theDict, @"action", a4);
  if (v72)
  {
    CFDictionarySetValue(theDict, @"from_dated", v72);
  }

  if (v70)
  {
    CFDictionarySetValue(theDict, @"to_dated", v70);
  }

  *valuePtr = @"label-remap-history";
  v64 = 0;
  v65 = 0;
  v63 = 0;
  sub_10005B328(&v63, valuePtr, &valuePtr[8], 1uLL);
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(v60, *a2, *(a2 + 1));
  }

  else
  {
    *v60 = *a2;
    v61 = *(a2 + 2);
  }

  if (SHIBYTE(v61) < 0)
  {
    sub_100005F2C(&v94, v60[0], v60[1]);
  }

  else
  {
    v94 = *v60;
    v95 = v61;
  }

  v85 = 0;
  if (SHIBYTE(v95) < 0)
  {
    sub_100005F2C(valuePtr, v94, *(&v94 + 1));
  }

  else
  {
    *valuePtr = v94;
    *&valuePtr[16] = v95;
  }

  value = 0;
  if (ctu::cf::convert_copy())
  {
    v18 = v85;
    v85 = value;
    values = v18;
    sub_100005978(&values);
  }

  v19 = kDevicePersistentStoreDataArchive;
  if ((valuePtr[23] & 0x80000000) != 0)
  {
    operator delete(*valuePtr);
  }

  MutableCopy = v85;
  v85 = 0;
  sub_100005978(&v85);
  if (SHIBYTE(v95) < 0)
  {
    operator delete(v94);
  }

  sub_10071A6F8(v19, MutableCopy, theDict, &v63);
  sub_100005978(&MutableCopy);
  if (SHIBYTE(v61) < 0)
  {
    operator delete(v60[0]);
  }

  v85 = 0;
  sub_100061A94(@"label-remap-history", v19, 0, valuePtr);
  sub_100010180(&v85, valuePtr);
  sub_10000A1EC(valuePtr);
  if (v85)
  {
    Count = CFDictionaryGetCount(v85);
    if (Count >= 0x1F)
    {
      MutableCopy = 0;
      MutableCopy = CFDictionaryCreateMutableCopy(0, 0, v85);
      v94 = 0uLL;
      v95 = 0;
      sub_100222418(&v94, Count);
      values = 0;
      v58 = 0;
      v59 = 0;
      sub_10007D780(&values, Count);
      CFDictionaryGetKeysAndValues(MutableCopy, v94, values);
      v53 = v19;
      value = 0;
      v55 = 0;
      v56 = 0;
      sub_1013B0250(&value, Count);
      v52 = a3;
      for (i = 0; i != Count; ++i)
      {
        v22 = values[i];
        if (v22 && (v23 = CFGetTypeID(values[i]), v23 == CFDictionaryGetTypeID()) && (v24 = CFDictionaryGetValue(v22, @"ts"), (v25 = v24) != 0) && (v26 = CFGetTypeID(v24), v26 == CFNumberGetTypeID()))
        {
          *valuePtr = 0;
          ctu::cf::assign(valuePtr, v25, v27);
          v28 = *valuePtr;
        }

        else
        {
          v28 = 0;
        }

        *valuePtr = i;
        *&valuePtr[8] = v28;
        sub_1013B02F4(&value, valuePtr);
      }

      v29 = value;
      v30 = 126 - 2 * __clz((v55 - value) >> 4);
      if (v55 == value)
      {
        v31 = 0;
      }

      else
      {
        v31 = v30;
      }

      sub_1013B2230(value, v55, v31, 1);
      v32 = Count - 30;
      v51 = v29;
      v33 = v29;
      do
      {
        v34 = values[*v33];
        if (v34 && (v35 = CFGetTypeID(values[*v33]), v35 == CFDictionaryGetTypeID()))
        {
          v36 = CFDictionaryGetValue(v34, @"to");
          v37 = v36;
          if (v36)
          {
            v38 = CFGetTypeID(v36);
            if (v38 == CFStringGetTypeID())
            {
              v39 = v37;
            }

            else
            {
              v39 = 0;
            }
          }

          else
          {
            v39 = 0;
          }

          v41 = CFDictionaryGetValue(v34, @"action");
          v40 = v41;
          if (v41)
          {
            v42 = CFGetTypeID(v41);
            if (v42 != CFStringGetTypeID())
            {
              v40 = 0;
            }
          }
        }

        else
        {
          v39 = @"?";
          v40 = @"?";
        }

        v43 = *(a1 + 40);
        v44 = os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT);
        v45 = *v33;
        if (v44)
        {
          v46 = *(v94 + 8 * v45);
          v47 = v33[1];
          *valuePtr = 136316418;
          *&valuePtr[4] = "";
          *&valuePtr[12] = 2080;
          *&valuePtr[14] = "";
          *&valuePtr[22] = 2114;
          v87 = v46;
          v88 = 2114;
          v89 = v39;
          v90 = 2048;
          v91 = v47;
          v92 = 2114;
          v93 = v40;
          _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "#I %s%sremoving oldest record from remap journal: %{public}@ -> %{public}@ ts:%ld, %{public}@", valuePtr, 0x3Eu);
          v45 = *v33;
        }

        CFDictionaryRemoveValue(MutableCopy, *(v94 + 8 * v45));
        v33 += 2;
        --v32;
      }

      while (v32);
      sub_10071A6F8(v53, @"label-remap-history", MutableCopy, 0);
      operator delete(v51);
      a3 = v52;
      if (values)
      {
        v58 = values;
        operator delete(values);
      }

      v19 = v53;
      if (v94)
      {
        *(&v94 + 1) = v94;
        operator delete(v94);
      }

      sub_1000296E0(&MutableCopy);
    }
  }

  else
  {
    v48 = *(a1 + 40);
    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      *valuePtr = 136315650;
      *&valuePtr[4] = "";
      *&valuePtr[12] = 2080;
      *&valuePtr[14] = "";
      *&valuePtr[22] = 2112;
      v87 = @"label-remap-history";
      _os_log_error_impl(&_mh_execute_header, v48, OS_LOG_TYPE_ERROR, "#E %s%sfailed to read %@ on updateRemapHistory", valuePtr, 0x20u);
    }
  }

  sub_10071A9CC(v19);
  sub_10001021C(&v85);
  if (v63)
  {
    v64 = v63;
    operator delete(v63);
  }

  sub_1000296E0(&theDict);
  sub_100029A48(&v70);
  sub_100029A48(&v72);
  if (v73)
  {
    v74 = v73;
    operator delete(v73);
  }

  if (v76)
  {
    v77 = v76;
    operator delete(v76);
  }

  sub_100005978(&v81);
  sub_100005978(&v84);
  *&v94 = @"unique-sim-label-store";
  memset(valuePtr, 0, sizeof(valuePtr));
  sub_10005B328(valuePtr, &v94, &v94 + 8, 1uLL);
  if (*(a2 + 23) >= 0)
  {
    v50 = a2;
  }

  else
  {
    v50 = *a2;
  }

  sub_10071C520(*(a1 + 104), v50, valuePtr, 0, v49);
  (*(**(a1 + 1200) + 24))(*(a1 + 1200), a2, a3);
  if (*valuePtr)
  {
    *&valuePtr[8] = *valuePtr;
    operator delete(*valuePtr);
  }
}

void sub_1013ABE58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, const void *a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, const void *a32, uint64_t a33, const void *a34, uint64_t a35, const void *a36, void *a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a18)
  {
    operator delete(a18);
  }

  v43 = *(v41 - 128);
  if (v43)
  {
    *(v41 - 120) = v43;
    operator delete(v43);
  }

  sub_1000296E0(&a25);
  sub_10001021C((v41 - 200));
  if (a26)
  {
    a27 = a26;
    operator delete(a26);
  }

  sub_1000296E0(&a32);
  sub_100029A48(&a34);
  sub_100029A48(&a36);
  if (a37)
  {
    a38 = a37;
    operator delete(a37);
  }

  if (a40)
  {
    a41 = a40;
    operator delete(a40);
  }

  sub_100005978((v41 - 248));
  sub_100005978((v41 - 208));
  _Unwind_Resume(a1);
}

void sub_1013AC17C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a2 + 23);
  if ((v5 & 0x80u) != 0)
  {
    v5 = *(a2 + 8);
  }

  if (v5)
  {

    sub_100DFECD0(a3, a2);
  }

  else
  {
    *(a3 + 144) = 0;
    *(a3 + 112) = 0u;
    *(a3 + 128) = 0u;
    *(a3 + 80) = 0u;
    *(a3 + 96) = 0u;
    *(a3 + 48) = 0u;
    *(a3 + 64) = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *a3 = 0u;
    sub_100DFECD0(a3, a2);
    v7 = *(a2 + 47);
    if ((v7 & 0x80u) != 0)
    {
      v7 = *(a2 + 32);
    }

    if (!v7)
    {
      sub_10000501C(&v10, "USER_LABEL_PRIMARY");
      if (*(a3 + 47) < 0)
      {
        operator delete(*(a3 + 24));
      }

      *(a3 + 24) = v10;
      *(a3 + 40) = v11;
    }

    std::mutex::lock((a1 + 984));
    v8 = sub_100007A6C(a1 + 1136, (a3 + 24));
    if (a1 + 1144 == v8)
    {
      v9 = (a3 + 24);
    }

    else
    {
      v9 = (v8 + 56);
    }

    std::string::operator=(a3, v9);
    std::mutex::unlock((a1 + 984));
  }
}

void sub_1013AC2C8(Registry **a1@<X0>, uint64_t a2@<X1>, const void **a3@<X8>)
{
  *a3 = 0;
  v45 = 0;
  v46 = 0;
  (**a1)(&v45);
  if (!v45)
  {
    v17 = a1[5];
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_90;
    }

    v18 = *(a2 + 23);
    v19 = (v18 & 0x80u) != 0;
    if ((v18 & 0x80u) != 0)
    {
      v18 = *(a2 + 8);
    }

    if (v19)
    {
      v20 = *a2;
    }

    else
    {
      v20 = a2;
    }

    if (v18)
    {
      v21 = v20;
    }

    else
    {
      v21 = "<invalid>";
    }

    *buf = 136315650;
    *&buf[4] = "";
    *&buf[12] = 2080;
    *&buf[14] = "";
    *&buf[22] = 2080;
    *&buf[24] = v21;
    v14 = "#I %s%spersona '%s' is not present";
    v15 = v17;
    v16 = 32;
    goto LABEL_24;
  }

  if (*(v45 + 49))
  {
    v6 = a1[5];
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_90;
    }

    v7 = *(a2 + 23);
    v9 = *a2;
    v8 = *(a2 + 8);
    v10 = asString();
    if ((v7 & 0x80u) == 0)
    {
      v11 = v7;
    }

    else
    {
      v11 = v8;
    }

    if ((v7 & 0x80u) == 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = v9;
    }

    *buf = 136315906;
    *&buf[4] = "";
    *&buf[12] = 2080;
    *&buf[14] = "";
    *&buf[22] = 2080;
    if (v11)
    {
      v13 = v12;
    }

    else
    {
      v13 = "<invalid>";
    }

    *&buf[24] = v13;
    LOWORD(v66) = 2080;
    *(&v66 + 2) = v10;
    v14 = "#I %s%spersona '%s' is of %s type - currently don't support UserFacingName";
    v15 = v6;
    v16 = 42;
LABEL_24:
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, v14, buf, v16);
    goto LABEL_90;
  }

  v73 = 0;
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v66 = 0u;
  memset(buf, 0, sizeof(buf));
  (*(*a1 + 24))(buf, a1, a2);
  v22 = BYTE7(v68);
  if (SBYTE7(v68) < 0)
  {
    v22 = *(&v67 + 1);
  }

  if (!v22)
  {
    v33 = a1[5];
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      v34 = *(a2 + 23);
      v35 = (v34 & 0x80u) != 0;
      if ((v34 & 0x80u) != 0)
      {
        v34 = *(a2 + 8);
      }

      if (v35)
      {
        v36 = *a2;
      }

      else
      {
        v36 = a2;
      }

      if (v34)
      {
        v37 = v36;
      }

      else
      {
        v37 = "<invalid>";
      }

      *v54 = 136315650;
      *&v54[4] = "";
      *&v54[12] = 2080;
      *&v54[14] = "";
      *&v54[22] = 2080;
      v55 = v37;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "#I %s%sNo label found for persona '%s'", v54, 0x20u);
    }

    goto LABEL_78;
  }

  v44 = 0;
  if (!sub_10139D330(a1, buf))
  {
LABEL_51:
    (*(*a1 + 21))(v54, a1, buf);
    v39 = *v54;
    v38 = *&v54[8];
    *v42 = *&v54[16];
    *&v42[3] = *&v54[19];
    v40 = v54[23];
    memset(v54, 0, sizeof(v54));
    if (v40 < 0)
    {
      sub_100005F2C(__dst, v39, v38);
      v47 = 0;
      if (SHIBYTE(v49) < 0)
      {
        sub_100005F2C(__p, __dst[0], __dst[1]);
        goto LABEL_55;
      }
    }

    else
    {
      __dst[0] = v39;
      __dst[1] = v38;
      LODWORD(v49) = *v42;
      *(&v49 + 3) = *&v42[3];
      HIBYTE(v49) = v40;
      v47 = 0;
    }

    *__p = *__dst;
    v51 = v49;
LABEL_55:
    v52 = 0;
    if (ctu::cf::convert_copy())
    {
      v41 = v47;
      v47 = v52;
      v53 = v41;
      sub_100005978(&v53);
    }

    if (SHIBYTE(v51) < 0)
    {
      operator delete(__p[0]);
    }

    v43 = v47;
    v47 = 0;
    sub_100005978(&v47);
    if (SHIBYTE(v49) < 0)
    {
      operator delete(__dst[0]);
    }

    if (&v43 != a3)
    {
      __p[0] = *a3;
      *a3 = v43;
      v43 = 0;
      sub_100005978(__p);
    }

    sub_100005978(&v43);
    if (v40 < 0)
    {
      operator delete(v39);
    }

    if (v64 < 0)
    {
      operator delete(v63);
    }

    if (v62 < 0)
    {
      operator delete(v61);
    }

    if (v60 < 0)
    {
      operator delete(v59);
    }

    if (v58 < 0)
    {
      operator delete(v57);
    }

    if (v56 < 0)
    {
      operator delete(v55);
    }

    if (v54[23] < 0)
    {
      operator delete(*v54);
    }

    goto LABEL_77;
  }

  ServiceMap = Registry::getServiceMap(a1[8]);
  v24 = ServiceMap;
  if (v25 < 0)
  {
    v26 = (v25 & 0x7FFFFFFFFFFFFFFFLL);
    v27 = 5381;
    do
    {
      v25 = v27;
      v28 = *v26++;
      v27 = (33 * v27) ^ v28;
    }

    while (v28);
  }

  std::mutex::lock(ServiceMap);
  *v54 = v25;
  v29 = sub_100009510(&v24[1].__m_.__sig, v54);
  if (v29)
  {
    v31 = v29[3];
    v30 = v29[4];
    if (v30)
    {
      atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v24);
      atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v30);
      v32 = 0;
      goto LABEL_47;
    }
  }

  else
  {
    v31 = 0;
  }

  std::mutex::unlock(v24);
  v30 = 0;
  v32 = 1;
LABEL_47:
  (*(*v31 + 80))(__dst, v31, *(v45 + 52), 1, @"CarrierName", 0, 0);
  sub_100060DE8(__p, __dst);
  *v54 = v44;
  v44 = __p[0];
  __p[0] = 0;
  sub_100005978(v54);
  sub_100005978(__p);
  sub_10000A1EC(__dst);
  if ((v32 & 1) == 0)
  {
    sub_100004A34(v30);
  }

  if (!v44)
  {
    goto LABEL_51;
  }

  sub_100222570(a3, &v44);
LABEL_77:
  sub_100005978(&v44);
LABEL_78:
  if (SHIBYTE(v73) < 0)
  {
    operator delete(v72);
  }

  if (SHIBYTE(v71) < 0)
  {
    operator delete(*(&v70 + 1));
  }

  if (SBYTE7(v70) < 0)
  {
    operator delete(v69);
  }

  if (SBYTE7(v68) < 0)
  {
    operator delete(v67);
  }

  if (SHIBYTE(v66) < 0)
  {
    operator delete(*&buf[24]);
  }

  if (buf[23] < 0)
  {
    operator delete(*buf);
  }

LABEL_90:
  if (v46)
  {
    sub_100004A34(v46);
  }
}

void sub_1013AC928(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, const void *a12, uint64_t a13, std::__shared_weak_count *a14, const void *a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  sub_100005978(&a15);
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (v33 < 0)
  {
    operator delete(v32);
  }

  sub_100FB0A00(&a31);
  sub_100005978(&a12);
  sub_100FB0A00(v34 - 240);
  if (a14)
  {
    sub_100004A34(a14);
  }

  sub_100005978(v31);
  _Unwind_Resume(a1);
}

void sub_1013AC9F8(uint64_t a1, uint64_t a2)
{
  sub_10016C5E8(a2, *a2);
  std::mutex::lock((a1 + 984));
  v4 = *(a1 + 1136);
  v26 = a1;
  v5 = (a1 + 1144);
  if (v4 != (a1 + 1144))
  {
    do
    {
      if (*(v4 + 55) < 0)
      {
        sub_100005F2C(__dst, v4[4], v4[5]);
      }

      else
      {
        *__dst = *(v4 + 2);
        v31 = v4[6];
      }

      if (SHIBYTE(v31) < 0)
      {
        sub_100005F2C(__p, __dst[0], __dst[1]);
      }

      else
      {
        *__p = *__dst;
        v36 = v31;
      }

      v34 = 0;
      if (SHIBYTE(v36) < 0)
      {
        sub_100005F2C(&v37, __p[0], __p[1]);
      }

      else
      {
        v37 = *__p;
        v38 = v36;
      }

      v39 = 0;
      if (ctu::cf::convert_copy())
      {
        v6 = v34;
        v34 = v39;
        v40[0] = v6;
        sub_100005978(v40);
      }

      if (SHIBYTE(v38) < 0)
      {
        operator delete(v37);
      }

      v32 = v34;
      v34 = 0;
      sub_100005978(&v34);
      if (SHIBYTE(v36) < 0)
      {
        operator delete(__p[0]);
      }

      if (*(v4 + 79) < 0)
      {
        sub_100005F2C(v27, v4[7], v4[8]);
      }

      else
      {
        *v27 = *(v4 + 7);
        v28 = v4[9];
      }

      if (SHIBYTE(v28) < 0)
      {
        sub_100005F2C(__p, v27[0], v27[1]);
      }

      else
      {
        *__p = *v27;
        v36 = v28;
      }

      v34 = 0;
      if (SHIBYTE(v36) < 0)
      {
        sub_100005F2C(&v37, __p[0], __p[1]);
      }

      else
      {
        v37 = *__p;
        v38 = v36;
      }

      v39 = 0;
      if (ctu::cf::convert_copy())
      {
        v7 = v34;
        v34 = v39;
        v40[0] = v7;
        sub_100005978(v40);
      }

      if (SHIBYTE(v38) < 0)
      {
        operator delete(v37);
      }

      v29 = v34;
      v34 = 0;
      sub_100005978(&v34);
      if (SHIBYTE(v36) < 0)
      {
        operator delete(__p[0]);
      }

      v8 = v32;
      v32 = 0;
      *&v33 = v8;
      v9 = v29;
      *(&v33 + 1) = v29;
      v29 = 0;
      v11 = *(a2 + 8);
      v10 = *(a2 + 16);
      if (v11 >= v10)
      {
        v13 = *a2;
        v14 = (v11 - *a2) >> 4;
        v15 = v14 + 1;
        if ((v14 + 1) >> 60)
        {
          sub_1000CE3D4();
        }

        v16 = v10 - v13;
        if (v16 >> 3 > v15)
        {
          v15 = v16 >> 3;
        }

        if (v16 >= 0x7FFFFFFFFFFFFFF0)
        {
          v17 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v17 = v15;
        }

        if (v17)
        {
          if (!(v17 >> 60))
          {
            operator new();
          }

          sub_100013D10();
        }

        v18 = (v11 - *a2) >> 4;
        v19 = (16 * v14);
        *v19 = v8;
        v19[1] = v9;
        v33 = 0uLL;
        v20 = &v19[-2 * v18];
        if (v13 != v11)
        {
          v21 = &v19[-2 * v18];
          v22 = v13;
          do
          {
            *v21 = 0;
            *v21 = *v22;
            *v22 = 0;
            v21[1] = 0;
            v21[1] = v22[1];
            v22[1] = 0;
            v22 += 2;
            v21 += 2;
          }

          while (v22 != v11);
          do
          {
            sub_100005978(v13 + 1);
            sub_100005978(v13);
            v13 += 2;
          }

          while (v13 != v11);
          v13 = *a2;
        }

        v12 = v19 + 2;
        *a2 = v20;
        *(a2 + 8) = v19 + 2;
        *(a2 + 16) = 0;
        if (v13)
        {
          operator delete(v13);
        }
      }

      else
      {
        *v11 = 0u;
        *v11 = v33;
        v33 = 0u;
        v12 = v11 + 2;
      }

      *(a2 + 8) = v12;
      sub_100005978(&v33 + 1);
      sub_100005978(&v33);
      sub_100005978(&v29);
      if (SHIBYTE(v28) < 0)
      {
        operator delete(v27[0]);
      }

      sub_100005978(&v32);
      if (SHIBYTE(v31) < 0)
      {
        operator delete(__dst[0]);
      }

      v23 = v4[1];
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
          v24 = v4[2];
          v25 = *v24 == v4;
          v4 = v24;
        }

        while (!v25);
      }

      v4 = v24;
    }

    while (v24 != v5);
  }

  std::mutex::unlock((v26 + 984));
}

void sub_1013ACE38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, const void *a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, const void *a24, const void *a25, uint64_t a26, uint64_t a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  sub_100005978((v34 | 8));
  sub_100005978(&a25);
  sub_100005978(&a17);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  sub_100005978(&a24);
  if (a23 < 0)
  {
    operator delete(a18);
  }

  std::mutex::unlock((a10 + 984));
  _Unwind_Resume(a1);
}

void sub_1013ACEF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, const void *a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (*(v28 - 105) < 0)
  {
    operator delete(*(v28 - 128));
  }

  sub_100005978(&a22);
  if (a28 < 0)
  {
    operator delete(a23);
  }

  JUMPOUT(0x1013ACED0);
}

void sub_1013ACF24(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v5 = *(a2 + 16);
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    if (std::__shared_weak_count::lock(v3))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_1013AD078(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 4;
    if ((v7 + 1) >> 60)
    {
      sub_1000CE3D4();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 3;
    if (v8 >> 3 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      sub_1000210A8(a1, v10);
    }

    v11 = (16 * v7);
    *v11 = *a2;
    v6 = 16 * v7 + 16;
    *a2 = 0;
    *(a2 + 8) = 0;
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
    *a2 = 0;
    *(a2 + 8) = 0;
  }

  *(a1 + 8) = v6;
}

void sub_1013AD154(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(v6, *a2, *(a2 + 8));
  }

  else
  {
    *v6 = *a2;
    v6[2] = *(a2 + 16);
  }

  if (*(a3 + 23) < 0)
  {
    sub_100005F2C(__p, *a3, *(a3 + 8));
  }

  else
  {
    *__p = *a3;
    __p[2] = *(a3 + 16);
  }

  v5 = *(a1 + 16);
  if (v5)
  {
    if (std::__shared_weak_count::lock(v5))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_1013AD318(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (*(v16 + 31) < 0)
  {
    operator delete(*v17);
  }

  sub_10004F058(a1);
}

void sub_1013AD35C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 40);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a2 + 23);
    v8 = (v7 & 0x80u) != 0;
    if ((v7 & 0x80u) != 0)
    {
      v7 = *(a2 + 8);
    }

    if (v8)
    {
      v9 = *a2;
    }

    else
    {
      v9 = a2;
    }

    if (v7)
    {
      v10 = v9;
    }

    else
    {
      v10 = "<invalid>";
    }

    v11 = *(a3 + 23);
    v12 = (v11 & 0x80u) != 0;
    if ((v11 & 0x80u) != 0)
    {
      v11 = *(a3 + 8);
    }

    if (v12)
    {
      v13 = *a3;
    }

    else
    {
      v13 = a3;
    }

    if (v11)
    {
      v14 = v13;
    }

    else
    {
      v14 = "<invalid>";
    }

    *buf = 136315906;
    *&buf[4] = "";
    *&buf[12] = 2080;
    *&buf[14] = "";
    *&buf[22] = 2080;
    v44 = v10;
    v45 = 2080;
    v46 = v14;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s%sremapSimLabel %s -> %s", buf, 0x2Au);
  }

  memset(&v42, 0, sizeof(v42));
  memset(&__p, 0, sizeof(__p));
  v15 = sub_100007A6C(a1 + 880, a2);
  if (a1 + 888 != v15)
  {
    std::string::operator=(&v42, (v15 + 104));
  }

  v16 = *(a2 + 23);
  if ((v16 & 0x80u) != 0)
  {
    v16 = *(a2 + 8);
  }

  if (!v16 || sub_100071DF8(a2, a3))
  {
    goto LABEL_37;
  }

  size = HIBYTE(v42.__r_.__value_.__r.__words[2]);
  if ((v42.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v42.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    sub_1013AD8B4(a1, a2);
    v18 = *(a3 + 23);
    if ((v18 & 0x80u) != 0)
    {
      v18 = *(a3 + 8);
    }

    if (v18)
    {
      v19 = sub_100007A6C(a1 + 880, a3);
      if (a1 + 888 != v19)
      {
        std::string::operator=(&__p, (v19 + 104));
      }
    }

    v20 = *(a1 + 896);
    if (v20 != 1)
    {
      sub_1013B7834((a1 + 880), a2);
    }

    if (*(a2 + 23) < 0)
    {
      sub_100005F2C(buf, *a2, *(a2 + 8));
    }

    else
    {
      *buf = *a2;
      *&buf[16] = *(a2 + 16);
    }

    LOBYTE(v44) = 1;
    sub_1013A5D7C(a1, buf);
    if (v44 == 1 && (buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    sub_10139C67C(a1, "remapping", 0);
    v30 = *(a1 + 40);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v31 = *(a2 + 23);
      v32 = (v31 & 0x80u) != 0;
      v33 = *a2;
      if ((v31 & 0x80u) != 0)
      {
        v31 = *(a2 + 8);
      }

      if (!v32)
      {
        v33 = a2;
      }

      if (v31)
      {
        v34 = v33;
      }

      else
      {
        v34 = "<invalid>";
      }

      *buf = 136315650;
      *&buf[4] = "";
      *&buf[12] = 2080;
      *&buf[14] = "";
      *&buf[22] = 2080;
      v44 = v34;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "#I %s%spersona %s destroyed", buf, 0x20u);
    }

    (*(**(a1 + 120) + 112))(*(a1 + 120), a2);
    if (v20 != 1)
    {
      v35 = *(a1 + 40);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        v36 = *(a2 + 23);
        v37 = (v36 & 0x80u) != 0;
        if ((v36 & 0x80u) != 0)
        {
          v36 = *(a2 + 8);
        }

        if (v37)
        {
          v38 = *a2;
        }

        else
        {
          v38 = a2;
        }

        if (!v36)
        {
          v38 = "<invalid>";
        }

        v39 = &v42;
        if ((v42.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v39 = v42.__r_.__value_.__r.__words[0];
        }

        p_p = &__p;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        *buf = 136316162;
        *&buf[4] = "";
        *&buf[12] = 2080;
        *&buf[14] = "";
        *&buf[22] = 2080;
        v44 = v38;
        v45 = 2080;
        v46 = v39;
        v47 = 2080;
        v48 = p_p;
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "#I %s%sexecute remapSimLabel %s '%s' -> '%s'", buf, 0x34u);
      }

      sub_1013AB290(a1, &v42, &__p, @"remap");
      (*(**(a1 + 1200) + 16))(*(a1 + 1200));
    }
  }

  else
  {
LABEL_37:
    v21 = *(a1 + 40);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = *(a2 + 23);
      v23 = (v22 & 0x80u) != 0;
      if ((v22 & 0x80u) != 0)
      {
        v22 = *(a2 + 8);
      }

      if (v23)
      {
        v24 = *a2;
      }

      else
      {
        v24 = a2;
      }

      v25 = *(a3 + 23);
      v26 = (v25 & 0x80u) != 0;
      v27 = *a3;
      if ((v25 & 0x80u) != 0)
      {
        v25 = *(a3 + 8);
      }

      if (!v26)
      {
        v27 = a3;
      }

      if (v22)
      {
        v28 = v24;
      }

      else
      {
        v28 = "<invalid>";
      }

      if (v25)
      {
        v29 = v27;
      }

      else
      {
        v29 = "<invalid>";
      }

      *buf = 136315906;
      *&buf[4] = "";
      *&buf[12] = 2080;
      *&buf[14] = "";
      *&buf[22] = 2080;
      v44 = v28;
      v45 = 2080;
      v46 = v29;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#W %s%signoring inadequate request to remap persona '%s' -> '%s'", buf, 0x2Au);
    }
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v42.__r_.__value_.__l.__data_);
  }
}

void sub_1013AD854(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1013AD8B4(uint64_t a1, uint64_t a2)
{
  v4 = a1 + 656;
  v5 = *(a1 + 656);
  v6 = *v5;
  v7 = v5[1];
  if (*v5 != v7)
  {
    while (!sub_100071DF8(*v6 + 3, a2))
    {
      v6 += 2;
      if (v6 == v7)
      {
        v6 = v7;
        break;
      }
    }

    v7 = *(*v4 + 8);
  }

  if (v6 == v7)
  {
    v8 = *(a1 + 40);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a2 + 23);
      v10 = (v9 & 0x80u) != 0;
      if ((v9 & 0x80u) != 0)
      {
        v9 = *(a2 + 8);
      }

      if (v10)
      {
        v11 = *a2;
      }

      else
      {
        v11 = a2;
      }

      if (v9)
      {
        v12 = v11;
      }

      else
      {
        v12 = "<invalid>";
      }

      *buf = 136315650;
      *&buf[4] = "";
      *&buf[12] = 2080;
      *&buf[14] = "";
      *&buf[22] = 2080;
      *v24 = v12;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%sPersonality %s is not listed as present. Nothing to do. (makeSurePersonalityIsNotIN)", buf, 0x20u);
    }

    return 1;
  }

  else
  {
    if (*(*v6 + 64) != 2 || sub_101395904(a1, a2))
    {
      memset(buf, 0, sizeof(buf));
      v22 = v6;
      sub_10139C06C(a1, &v22);
    }

    v14 = *(a1 + 40);
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
    result = 0;
    if (v15)
    {
      v16 = *(*v6 + 14);
      v17 = PersonalityInfo::logPrefix(*v6);
      v18 = *(*v6 + 3);
      v19 = *(*v6 + 47);
      v20 = v19;
      if ((v19 & 0x80u) != 0)
      {
        v19 = *(*v6 + 4);
      }

      if (v20 >= 0)
      {
        v18 = *v6 + 24;
      }

      if (v19)
      {
        v21 = v18;
      }

      else
      {
        v21 = "<invalid>";
      }

      *buf = 136316418;
      *&buf[4] = "";
      *&buf[12] = 2080;
      *&buf[14] = "";
      *&buf[22] = 1024;
      *v24 = v16;
      *&v24[4] = 2080;
      *&v24[6] = v17;
      v25 = 2080;
      v26 = v21;
      v27 = 2080;
      v28 = subscriber::asString();
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I %s%sCannot remove Personality [%d] %s %s from <Present> since it is available on slot %s", buf, 0x3Au);
      return 0;
    }
  }

  return result;
}

void sub_1013ADB7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, char a11)
{
  a10 = &a11;
  sub_1013B1D50(&a10);
  _Unwind_Resume(a1);
}

void sub_1013ADBA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __dst[0] = 0;
  __dst[1] = 0;
  v10 = 0;
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__dst, *a2, *(a2 + 8));
  }

  else
  {
    *__dst = *a2;
    v10 = *(a2 + 16);
  }

  std::mutex::lock((a1 + 984));
  v5 = HIBYTE(v10);
  if (SHIBYTE(v10) < 0)
  {
    v5 = __dst[1];
  }

  if (v5 && *(a1 + 1104) == 1)
  {
    sub_100007A6C(a1 + 1080, __dst);
  }

  std::mutex::unlock((a1 + 984));
  if (SHIBYTE(v10) < 0)
  {
    sub_100005F2C(v7, __dst[0], __dst[1]);
  }

  else
  {
    *v7 = *__dst;
    v7[2] = v10;
  }

  if (*(a3 + 23) < 0)
  {
    sub_100005F2C(__p, *a3, *(a3 + 8));
  }

  else
  {
    *__p = *a3;
    __p[2] = *(a3 + 16);
  }

  v6 = *(a1 + 16);
  if (v6)
  {
    if (std::__shared_weak_count::lock(v6))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_1013ADDFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  std::mutex::unlock((v25 + 984));
  if (a25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1013ADE6C(uint64_t a1, uint64_t a2, uint64_t a3, _BOOL4 a4)
{
  v8 = *(a1 + 40);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a2 + 23);
    v10 = (v9 & 0x80u) != 0;
    v11 = *a2;
    if ((v9 & 0x80u) != 0)
    {
      v9 = *(a2 + 8);
    }

    if (!v10)
    {
      v11 = a2;
    }

    if (v9)
    {
      v12 = v11;
    }

    else
    {
      v12 = "<invalid>";
    }

    v13 = *(a3 + 23);
    v14 = (v13 & 0x80u) != 0;
    if ((v13 & 0x80u) != 0)
    {
      v13 = *(a3 + 8);
    }

    if (v14)
    {
      v15 = *a3;
    }

    else
    {
      v15 = a3;
    }

    if (v13)
    {
      v16 = v15;
    }

    else
    {
      v16 = "<invalid>";
    }

    *buf = 136316162;
    *&buf[4] = "";
    *&buf[12] = 2080;
    *&buf[14] = "";
    *&buf[22] = 2080;
    *v77 = v12;
    *&v77[8] = 2080;
    *&v77[10] = v16;
    *&v77[18] = 2080;
    *&v77[20] = asStringBool(a4);
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%stransferPersonality %s -> %s (userAction:%s)", buf, 0x34u);
  }

  v17 = *(a2 + 23);
  if ((v17 & 0x80u) != 0)
  {
    v17 = *(a2 + 8);
  }

  if (!v17)
  {
    goto LABEL_25;
  }

  v18 = *(a3 + 23);
  if ((v18 & 0x80u) != 0)
  {
    v18 = *(a3 + 8);
  }

  if (!v18 || sub_100071DF8(a2, a3))
  {
LABEL_25:
    v19 = *(a1 + 40);
    v20 = 0;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v21 = *(a2 + 23);
      v22 = (v21 & 0x80u) != 0;
      if ((v21 & 0x80u) != 0)
      {
        v21 = *(a2 + 8);
      }

      if (v22)
      {
        v23 = *a2;
      }

      else
      {
        v23 = a2;
      }

      if (v21)
      {
        v24 = v23;
      }

      else
      {
        v24 = "<invalid>";
      }

      v25 = *(a3 + 23);
      v26 = (v25 & 0x80u) != 0;
      if ((v25 & 0x80u) != 0)
      {
        v25 = *(a3 + 8);
      }

      if (v26)
      {
        v27 = *a3;
      }

      else
      {
        v27 = a3;
      }

      if (v25)
      {
        v28 = v27;
      }

      else
      {
        v28 = "<invalid>";
      }

      *buf = 136315906;
      *&buf[4] = "";
      *&buf[12] = 2080;
      *&buf[14] = "";
      *&buf[22] = 2080;
      *v77 = v24;
      *&v77[8] = 2080;
      *&v77[10] = v28;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#W %s%signoring inadequate request to transfer persona '%s' -> '%s'", buf, 0x2Au);
      return 0;
    }

    return v20;
  }

  memset(&v72, 0, sizeof(v72));
  v29 = sub_100007A6C(a1 + 880, a2);
  if (a1 + 888 == v29)
  {
    v30 = *(a1 + 40);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v31 = *(a2 + 23);
      v32 = (v31 & 0x80u) != 0;
      v33 = *a2;
      if ((v31 & 0x80u) != 0)
      {
        v31 = *(a2 + 8);
      }

      if (!v32)
      {
        v33 = a2;
      }

      if (v31)
      {
        v34 = v33;
      }

      else
      {
        v34 = "<invalid>";
      }

      *buf = 136315650;
      *&buf[4] = "";
      *&buf[12] = 2080;
      *&buf[14] = "";
      *&buf[22] = 2080;
      *v77 = v34;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "#W %s%sPersonality (from) %s is unlabeled", buf, 0x20u);
    }
  }

  else
  {
    std::string::operator=(&v72, (v29 + 104));
  }

  v35 = sub_1013AD8B4(a1, a2);
  v36 = *(a1 + 40);
  v37 = os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT);
  if (!v35)
  {
    if (v37)
    {
      v49 = *(a2 + 23);
      v50 = (v49 & 0x80u) != 0;
      if ((v49 & 0x80u) != 0)
      {
        v49 = *(a2 + 8);
      }

      if (v50)
      {
        v51 = *a2;
      }

      else
      {
        v51 = a2;
      }

      v52 = *(a3 + 23);
      v53 = (v52 & 0x80u) != 0;
      v54 = *a3;
      if ((v52 & 0x80u) != 0)
      {
        v52 = *(a3 + 8);
      }

      if (!v53)
      {
        v54 = a3;
      }

      if (v49)
      {
        v55 = v51;
      }

      else
      {
        v55 = "<invalid>";
      }

      if (v52)
      {
        v56 = v54;
      }

      else
      {
        v56 = "<invalid>";
      }

      *buf = 136315906;
      *&buf[4] = "";
      *&buf[12] = 2080;
      *&buf[14] = "";
      *&buf[22] = 2080;
      *v77 = v55;
      *&v77[8] = 2080;
      *&v77[10] = v56;
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "#I %s%sUnable to transferPersonality from '%s' to '%s'", buf, 0x2Au);
    }

    goto LABEL_135;
  }

  if (v37)
  {
    v38 = &v72;
    if ((v72.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v38 = v72.__r_.__value_.__r.__words[0];
    }

    v39 = *(a2 + 23);
    v40 = (v39 & 0x80u) != 0;
    if ((v39 & 0x80u) != 0)
    {
      v39 = *(a2 + 8);
    }

    if (v40)
    {
      v41 = *a2;
    }

    else
    {
      v41 = a2;
    }

    v42 = *(a3 + 23);
    v43 = (v42 & 0x80u) != 0;
    if ((v42 & 0x80u) != 0)
    {
      v42 = *(a3 + 8);
    }

    if (v43)
    {
      v44 = *a3;
    }

    else
    {
      v44 = a3;
    }

    if (v39)
    {
      v45 = v41;
    }

    else
    {
      v45 = "<invalid>";
    }

    if (v42)
    {
      v46 = v44;
    }

    else
    {
      v46 = "<invalid>";
    }

    *buf = 136316162;
    *&buf[4] = "";
    *&buf[12] = 2080;
    *&buf[14] = "";
    *&buf[22] = 2080;
    *v77 = v38;
    *&v77[8] = 2080;
    *&v77[10] = v45;
    *&v77[18] = 2080;
    *&v77[20] = v46;
    _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "#I %s%sexecute transferPersonality '%s' %s -> %s", buf, 0x34u);
  }

  v74.__r_.__value_.__r.__words[0] = 0;
  (*(**(a1 + 120) + 24))(buf);
  sub_100010180(&v74, buf);
  sub_10000A1EC(buf);
  v47 = v74.__r_.__value_.__r.__words[0];
  if (v74.__r_.__value_.__r.__words[0])
  {
    theDict = 0;
    (*(**(a1 + 120) + 24))(buf);
    sub_100010180(&theDict, buf);
    sub_10000A1EC(buf);
    (*(**(a1 + 120) + 104))(*(a1 + 120), a2, a3);
    object = 0;
    if (theDict)
    {
      MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, theDict);
    }

    else
    {
      MutableCopy = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      if (!MutableCopy)
      {
LABEL_97:
        v58 = object;
        v59 = v74.__r_.__value_.__r.__words[0];
        size = HIBYTE(v72.__r_.__value_.__r.__words[2]);
        if ((v72.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          size = v72.__r_.__value_.__l.__size_;
        }

        if (size)
        {
          Value = CFDictionaryGetValue(v74.__r_.__value_.__l.__data_, @"label-id");
          if (Value)
          {
            CFDictionarySetValue(v58, @"label-id", Value);
          }

          else
          {
            CFDictionaryRemoveValue(v58, @"label-id");
          }

          v62 = CFDictionaryGetValue(v59, @"label-id-confirmed");
          if (v62)
          {
            CFDictionarySetValue(v58, @"label-id-confirmed", v62);
          }

          else
          {
            CFDictionaryRemoveValue(v58, @"label-id-confirmed");
          }
        }

        v63 = CFDictionaryGetValue(v59, @"mdn");
        if (v63)
        {
          CFDictionarySetValue(v58, @"mdn", v63);
        }

        else
        {
          CFDictionaryRemoveValue(v58, @"mdn");
        }

        v64 = CFDictionaryGetValue(v59, @"formatted-mdn");
        if (v64)
        {
          CFDictionarySetValue(v58, @"formatted-mdn", v64);
        }

        else
        {
          CFDictionaryRemoveValue(v58, @"formatted-mdn");
        }

        (*(**(a1 + 120) + 16))(*(a1 + 120), a3, @"info", object, 0, 0, 0, 0);
        sub_1000296E0(&object);
        sub_10001021C(&theDict);
        goto LABEL_113;
      }
    }

    v57 = object;
    object = MutableCopy;
    *buf = v57;
    sub_1000296E0(buf);
    goto LABEL_97;
  }

LABEL_113:
  sub_10001021C(&v74.__r_.__value_.__l.__data_);
  v65 = HIBYTE(v72.__r_.__value_.__r.__words[2]);
  if ((v72.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v65 = v72.__r_.__value_.__l.__size_;
  }

  if (v65)
  {
    memset(&v74, 0, sizeof(v74));
    v66 = sub_100007A6C(a1 + 880, a3);
    if (a1 + 888 != v66)
    {
      std::string::operator=(&v74, (v66 + 104));
    }

    *buf = a3;
    v67 = sub_1013BBEE8(a1 + 880, a3);
    std::string::operator=((v67 + 56), (v29 + 56));
    std::string::operator=((v67 + 80), (v29 + 80));
    std::string::operator=((v67 + 104), (v29 + 104));
    *(v67 + 128) = *(v29 + 128);
    std::string::operator=((v67 + 136), (v29 + 136));
    std::string::operator=((v67 + 160), (v29 + 160));
    std::string::operator=((v67 + 184), (v29 + 184));
    sub_1013B7834((a1 + 880), a2);
    if (a4)
    {
      sub_1013A8B10(a1, a3, 1);
    }

    buf[0] = 0;
    v77[0] = 0;
    sub_1013A5D7C(a1, buf);
    if (v77[0] == 1 && (buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    sub_10139C67C(a1, "label transfer", 0);
    v68 = HIBYTE(v74.__r_.__value_.__r.__words[2]);
    if ((v74.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v68 = v74.__r_.__value_.__l.__size_;
    }

    if (v68)
    {
      if (a4)
      {
        v69 = @"manual transfer";
      }

      else
      {
        v69 = @"mdn match transfer";
      }

      sub_1013AB290(a1, &v74, &v72, v69);
    }

    (*(**(a1 + 1200) + 16))(*(a1 + 1200));
    if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v74.__r_.__value_.__l.__data_);
    }
  }

  if (v47)
  {
    v74.__r_.__value_.__r.__words[0] = a3;
    v70 = sub_1013BBEE8(a1 + 880, a3);
    if (*(a2 + 23) < 0)
    {
      sub_100005F2C(buf, *a2, *(a2 + 8));
    }

    else
    {
      *buf = *a2;
      *&buf[16] = *(a2 + 16);
    }

    if (*(a3 + 23) < 0)
    {
      sub_100005F2C(v77, *a3, *(a3 + 8));
    }

    else
    {
      *v77 = *a3;
      *&v77[16] = *(a3 + 16);
    }

    if (*(v70 + 159) < 0)
    {
      sub_100005F2C(&v77[24], *(v70 + 136), *(v70 + 144));
    }

    else
    {
      *&v77[24] = *(v70 + 136);
      v78 = *(v70 + 152);
    }

    theDict = 0;
    rest::write_rest_value();
    sub_10000501C(&v74, "/cc/events/service_transferred");
    object = theDict;
    theDict = xpc_null_create();
    ctu::RestModule::sendEvent();
    xpc_release(object);
    object = 0;
    if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v74.__r_.__value_.__l.__data_);
    }

    xpc_release(theDict);
    if (SHIBYTE(v78) < 0)
    {
      operator delete(*&v77[24]);
    }

    if ((v77[23] & 0x80000000) != 0)
    {
      operator delete(*v77);
    }

    if ((buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    v20 = 1;
    goto LABEL_152;
  }

LABEL_135:
  v20 = 0;
LABEL_152:
  if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v72.__r_.__value_.__l.__data_);
  }

  return v20;
}

void sub_1013AE884(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, xpc_object_t object, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, xpc_object_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a34 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(exception_object);
}

void sub_1013AE9CC(uint64_t a1@<X0>, void *a2@<X8>)
{
  std::mutex::lock((a1 + 984));
  sub_1013BF894(a2, (a1 + 1112));

  std::mutex::unlock((a1 + 984));
}

void sub_1013AEA2C(unint64_t a1, void *a2, uint64_t a3)
{
  v8[0] = a1;
  v8[1] = 0uLL;
  v4 = a2[1];
  if (v4 != *a2)
  {
    v5 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a2) >> 4);
    if (v5 < 0x555555555555556)
    {
      sub_1001904B4(v8 + 8, v5);
    }

    sub_1000CE3D4();
  }

  v6 = *(a3 + 24);
  if (v6)
  {
    if (v6 == a3)
    {
      v10 = v9;
      (*(*v6 + 24))(v6, v9);
      goto LABEL_9;
    }

    v6 = (*(*v6 + 16))(v6);
  }

  v10 = v6;
LABEL_9:
  v7 = *(a1 + 16);
  if (v7 && std::__shared_weak_count::lock(v7))
  {
    operator new();
  }

  sub_100013CC4();
}

void sub_1013AECC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1013AED2C(uint64_t a1)
{
  v76 = 0;
  v73 = 0;
  v74 = 0;
  v75 = 0;
  v2 = *(a1 + 216);
  v3 = (a1 + 224);
  if (v2 != (a1 + 224))
  {
    v61 = (a1 + 880);
    v4 = (a1 + 888);
    do
    {
      v5 = *(v2 + 55);
      if ((v5 & 0x80u) != 0)
      {
        v5 = v2[5];
      }

      if (!v5 || *(v2 + 136) != 1)
      {
        goto LABEL_156;
      }

      v6 = *(a1 + 656);
      v7 = *v6;
      v8 = *(v6 + 8);
      if (*v6 != v8)
      {
        while (!sub_100071DF8((*v7 + 24), v2 + 4))
        {
          v7 += 2;
          if (v7 == v8)
          {
            v7 = v8;
            break;
          }
        }

        v8 = *(v6 + 8);
      }

      if (v7 == v8)
      {
        v10 = 0;
      }

      else
      {
        v9 = *v7;
        v10 = v7[1];
        if (v10)
        {
          atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v9)
        {
          v11 = (v2 + 10);
          v12 = *(v9 + 95);
          if (v12 >= 0)
          {
            v13 = *(v9 + 95);
          }

          else
          {
            v13 = *(v9 + 80);
          }

          v14 = *(v2 + 103);
          v15 = v2[11];
          if ((v14 & 0x80u) == 0)
          {
            v15 = *(v2 + 103);
          }

          if (v13 != v15 || ((v18 = *(v9 + 72), v16 = (v9 + 72), v17 = v18, v12 >= 0) ? (v19 = v16) : (v19 = v17), (v14 & 0x80u) == 0 ? (v20 = v2 + 10) : (v20 = *v11), memcmp(v19, v20, v13)))
          {
            v21 = *(a1 + 40);
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
            {
              v22 = v2 + 10;
              if ((v14 & 0x80) != 0)
              {
                v22 = *v11;
              }

              v23 = asString();
              v24 = v2 + 7;
              v25 = *(v2 + 55);
              v26 = (v25 & 0x80u) != 0;
              if ((v25 & 0x80u) != 0)
              {
                v25 = v2[5];
              }

              if (v26)
              {
                v27 = v2[4];
              }

              else
              {
                v27 = (v2 + 4);
              }

              v28 = v25 == 0;
              v29 = "<invalid>";
              if (!v28)
              {
                v29 = v27;
              }

              if (*(v2 + 79) < 0)
              {
                v24 = *v24;
              }

              buf[0].var0 = 136316418;
              *&buf[0].var1 = "";
              WORD2(buf[0].var2.__rep_.__l.__data_) = 2080;
              *(&buf[0].var2.__rep_.__l.__data_ + 6) = "";
              HIWORD(buf[0].var2.__rep_.__l.__size_) = 2080;
              *(&buf[0].var2.__rep_.__l + 2) = v22;
              LOWORD(buf[1].var0) = 2080;
              *(&buf[1].var0 + 2) = v23;
              WORD1(buf[1].var2.__rep_.__l.__data_) = 2080;
              *(&buf[1].var2.__rep_.__l.__data_ + 4) = v29;
              WORD2(buf[1].var2.__rep_.__l.__size_) = 2080;
              *(&buf[1].var2.__rep_.__l.__size_ + 6) = v24;
              _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I %s%sAssigning MDN '%s src:%s' to %s (msisdn:%s)", buf, 0x3Eu);
              v14 = *(v2 + 103);
            }

            if ((v14 & 0x80) != 0)
            {
              v30 = v2[11];
              if (!v30)
              {
                goto LABEL_50;
              }

              theString2 = 0;
              sub_100005F2C(__dst, *v11, v30);
LABEL_48:
              if (SHIBYTE(v71) < 0)
              {
                sub_100005F2C(&__p, __dst[0], __dst[1]);
              }

              else
              {
                *&__p.var0 = *__dst;
                __p.var2.__rep_.__l.__size_ = v71;
              }

              v77 = 0;
              if (__p.var2.__rep_.__s.__data_[15] < 0)
              {
                sub_100005F2C(buf, *&__p.var0, __p.var2.__rep_.__l.__data_);
              }

              else
              {
                *&buf[0].var0 = *&__p.var0;
                buf[0].var2.__rep_.__l.__size_ = __p.var2.__rep_.__l.__size_;
              }

              v63[0] = 0;
              if (ctu::cf::convert_copy())
              {
                v31 = v77;
                v77 = v63[0];
                v62.__r_.__value_.__r.__words[0] = v31;
                sub_100005978(&v62.__r_.__value_.__l.__data_);
              }

              if (buf[0].var2.__rep_.__s.__data_[15] < 0)
              {
                operator delete(*&buf[0].var0);
              }

              theString2 = v77;
              v77 = 0;
              sub_100005978(&v77);
              if (__p.var2.__rep_.__s.__data_[15] < 0)
              {
                operator delete(*&__p.var0);
              }

              if (SHIBYTE(v71) < 0)
              {
                operator delete(__dst[0]);
              }

              memset(&v62, 0, sizeof(v62));
              v32 = *v61;
              if (*(v2 + 103) < 0)
              {
                sub_100005F2C(v66, v2[10], v2[11]);
              }

              else
              {
                *v66 = *v11;
                v67 = v2[12];
              }

              v68 = a1;
              v69 = &v76;
              if (v32 != v4)
              {
                while (1)
                {
                  v33 = v68;
                  *v92 = 0u;
                  v93 = 0u;
                  *v90 = 0u;
                  v91 = 0u;
                  *v88 = 0u;
                  v89 = 0u;
                  memset(buf, 0, sizeof(buf));
                  CSIPhoneNumber::CSIPhoneNumber();
                  *v85 = 0u;
                  v86 = 0u;
                  *v83 = 0u;
                  v84 = 0u;
                  *v81 = 0u;
                  v82 = 0u;
                  *v79 = 0u;
                  v80 = 0u;
                  memset(&__p, 0, sizeof(__p));
                  CSIPhoneNumber::CSIPhoneNumber();
                  isOriginalNumberSame = CSIPhoneNumber::isOriginalNumberSame(buf, &__p);
                  if (SBYTE7(v86) < 0)
                  {
                    operator delete(v85[0]);
                  }

                  if (SHIBYTE(v84) < 0)
                  {
                    operator delete(v83[1]);
                  }

                  if (SBYTE7(v82) < 0)
                  {
                    operator delete(v81[0]);
                  }

                  if (SBYTE7(v80) < 0)
                  {
                    operator delete(v79[0]);
                  }

                  if (*(&__p.var2.__rep_.__l + 23) < 0)
                  {
                    operator delete(__p.var2.__rep_.__l.__data_);
                  }

                  if (SBYTE7(v93) < 0)
                  {
                    operator delete(v92[0]);
                  }

                  if (SHIBYTE(v91) < 0)
                  {
                    operator delete(v90[1]);
                  }

                  if (SBYTE7(v89) < 0)
                  {
                    operator delete(v88[0]);
                  }

                  if (buf[1].var2.__rep_.__s.__data_[15] < 0)
                  {
                    operator delete(*&buf[1].var0);
                  }

                  if (*(&buf[0].var2.__rep_.__l + 23) < 0)
                  {
                    operator delete(buf[0].var2.__rep_.__l.__data_);
                    if (isOriginalNumberSame)
                    {
LABEL_89:
                      if (sub_10005B0C0(v33, v32 + 4))
                      {
                        break;
                      }
                    }
                  }

                  else if (isOriginalNumberSame)
                  {
                    goto LABEL_89;
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
                      v28 = *v36 == v32;
                      v32 = v36;
                    }

                    while (!v28);
                  }

                  v32 = v36;
                  if (v36 == v4)
                  {
                    v32 = (a1 + 888);
                    break;
                  }
                }
              }

              if (SHIBYTE(v67) < 0)
              {
                operator delete(v66[0]);
              }

              if (v32 == v4)
              {
                memset(buf, 0, 24);
                (*(**(a1 + 120) + 80))(buf);
                v38 = *&buf[0].var0;
                data = buf[0].var2.__rep_.__l.__data_;
                while (v38 != data)
                {
                  if (!sub_100071DF8(v38, v2 + 4))
                  {
                    *&__p.var0 = 0;
                    (*(**(a1 + 120) + 24))(v63);
                    sub_100060DE8(&__p, v63);
                    sub_10000A1EC(v63);
                    if (*&__p.var0 && CFStringCompare(*&__p.var0, theString2, 0) == kCFCompareEqualTo && sub_10005B0C0(a1, v38))
                    {
                      std::string::operator=(&v62, v38);
                      sub_100005978(&__p);
                      break;
                    }

                    sub_100005978(&__p);
                  }

                  ++v38;
                }

                *&__p.var0 = buf;
                sub_10005AAF8(&__p);
              }

              else if (!sub_100071DF8(v32 + 4, v2 + 4))
              {
                std::string::operator=(&v62, (v32 + 4));
              }

              size = HIBYTE(v62.__r_.__value_.__r.__words[2]);
              v40 = SHIBYTE(v62.__r_.__value_.__r.__words[2]);
              if ((v62.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                size = v62.__r_.__value_.__l.__size_;
              }

              if (size)
              {
                v41 = *(a1 + 40);
                if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
                {
                  v42 = v62.__r_.__value_.__r.__words[0];
                  if (v40 >= 0)
                  {
                    v42 = &v62;
                  }

                  v43 = v2 + 10;
                  if (*(v2 + 103) < 0)
                  {
                    v43 = *v11;
                  }

                  buf[0].var0 = 136315906;
                  *&buf[0].var1 = "";
                  WORD2(buf[0].var2.__rep_.__l.__data_) = 2080;
                  *(&buf[0].var2.__rep_.__l.__data_ + 6) = "";
                  HIWORD(buf[0].var2.__rep_.__l.__size_) = 2080;
                  *(&buf[0].var2.__rep_.__l + 2) = v42;
                  LOWORD(buf[1].var0) = 2080;
                  *(&buf[1].var0 + 2) = v43;
                  _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "#I %s%sDetected older Personality %s with the same MDN %s. Executing automatic transfer", buf, 0x2Au);
                }

                sub_1013ADE6C(a1, &v62, (v2 + 4), 0);
              }

              (*(**(a1 + 120) + 16))(*(a1 + 120), v2 + 4, @"mdn", theString2, @"info", 0, 0, 0);
              if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v62.__r_.__value_.__l.__data_);
              }

              sub_100005978(&theString2);
            }

            else
            {
              if (v14)
              {
                theString2 = 0;
                *__dst = *v11;
                v71 = v2[12];
                goto LABEL_48;
              }

LABEL_50:
              (*(**(a1 + 120) + 32))(*(a1 + 120), v2 + 4, @"mdn", @"info", 0, 0);
              (*(**(a1 + 120) + 32))(*(a1 + 120), v2 + 4, @"formatted-mdn", @"info", 0, 0);
            }

            v44 = sub_100007A6C(v61, v2 + 4);
            if (v4 != v44)
            {
              v45 = (v44 + 136);
              v46 = *(v44 + 159);
              if (v46 >= 0)
              {
                v47 = *(v44 + 159);
              }

              else
              {
                v47 = *(v44 + 144);
              }

              v48 = *(v2 + 103);
              v49 = v48;
              if ((v48 & 0x80u) != 0)
              {
                v48 = v2[11];
              }

              if (v47 != v48 || (v46 >= 0 ? (v50 = (v44 + 136)) : (v50 = v45->__r_.__value_.__r.__words[0]), v49 >= 0 ? (v51 = v2 + 10) : (v51 = *v11), memcmp(v50, v51, v47)))
              {
                std::string::operator=(v45, (v2 + 10));
              }
            }

            v52 = *(a1 + 656);
            v53 = *v52;
            v54 = v52[1];
            if (*(v2 + 55) < 0)
            {
              sub_100005F2C(v64, v2[4], v2[5]);
            }

            else
            {
              *v64 = *(v2 + 2);
              v65 = v2[6];
            }

            if (v53 != v54)
            {
              while (*(*v53 + 49) || !sub_100071DF8((*v53 + 24), v64))
              {
                v53 += 16;
                if (v53 == v54)
                {
                  v53 = v54;
                  break;
                }
              }
            }

            if (SHIBYTE(v65) < 0)
            {
              operator delete(v64[0]);
            }

            if (v53 != *(*(a1 + 656) + 8))
            {
              v63[0] = 0;
              v63[1] = 0;
              sub_1004CA38C();
            }
          }
        }
      }

      v55 = sub_100007A6C(v61, v2 + 4);
      if (v4 != v55)
      {
        sub_1013A153C(a1, (v2 + 4), v55 + 56, 0);
      }

      if (v10)
      {
        sub_100004A34(v10);
      }

LABEL_156:
      v56 = v2[1];
      if (v56)
      {
        do
        {
          v57 = v56;
          v56 = *v56;
        }

        while (v56);
      }

      else
      {
        do
        {
          v57 = v2[2];
          v28 = *v57 == v2;
          v2 = v57;
        }

        while (!v28);
      }

      v2 = v57;
    }

    while (v57 != v3);
  }

  v58 = v73;
  if (v74 != v73)
  {
    v59 = 0;
    v60 = 0;
    do
    {
      sub_101399700(a1, v58 + v59);
      ++v60;
      v58 = v73;
      v59 += 48;
    }

    while (v60 < 0xAAAAAAAAAAAAAAABLL * ((v74 - v73) >> 4));
  }

  sub_10139C67C(a1, "phone number changed", 0);
  *&buf[0].var0 = &v73;
  sub_1013B1D50(buf);
}

void sub_1013AF9BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, uint64_t a38, uint64_t a39, const void *a40, __int16 a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, void *a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_100005978(&a46);
  a46 = &a66;
  sub_10005AAF8(&a46);
  if (a22 < 0)
  {
    operator delete(__p);
  }

  sub_100005978(&a40);
  if (v66)
  {
    sub_100004A34(v66);
  }

  __p = &a41;
  sub_1013B1D50(&__p);
  _Unwind_Resume(a1);
}

void sub_1013AFB50(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5[0] = a1;
  v5[1] = a2;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 0x40000000;
  v6[2] = sub_1013BFC80;
  v6[3] = &unk_101F33F18;
  v6[4] = a1 + 8;
  v6[5] = v5;
  v7 = v6;
  v4 = a1 + 24;
  v3 = *(a1 + 24);
  if (*(v4 + 8))
  {
    *a3 = 0;
    a3[1] = 0;
    block = _NSConcreteStackBlock;
    v9 = 0x40000000;
    v10 = sub_1013BFE80;
    v11 = &unk_101F33F58;
    v12 = a3;
    v13 = &v7;
    dispatch_async_and_wait(v3, &block);
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    block = _NSConcreteStackBlock;
    v9 = 0x40000000;
    v10 = sub_1013BFE18;
    v11 = &unk_101F33F38;
    v12 = a3;
    v13 = &v7;
    dispatch_sync(v3, &block);
  }
}

void sub_1013AFC70(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v5 = *(a2 + 16);
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    if (std::__shared_weak_count::lock(v3))
    {
      operator new();
    }
  }

  sub_100013CC4();
}