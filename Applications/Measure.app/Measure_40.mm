void sub_1002AD2E0(uint64_t a1)
{
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v2 = (a1 + 16);
  sub_1002A975C(a1 + 16, &v21);
  v3 = v21;
  if (v22 == v21)
  {
    v5 = 0;
    if (byte_1004BE35A != 1)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v4 = 0;
    v5 = 0;
    v6 = v22 - v21;
    if (v6 <= 1)
    {
      v6 = 1;
    }

    do
    {
      v7 = *v3;
      if (*v3)
      {
        v4 += *(v7 + 4);
        v5 += *(v7 + 8);
      }

      ++v3;
      --v6;
    }

    while (v6);
    if (!v4 && byte_1004BE35A != 1)
    {
LABEL_21:
      if (v5 && sub_100241540() >= 3)
      {
        sub_100241960(v15);
        sub_100241184(&v16, "Trace: Total skipped events: ", 29);
        std::ostream::operator<<();
        std::stringbuf::str();
        if (v14 >= 0)
        {
          v10 = __p;
        }

        else
        {
          v10 = __p[0];
        }

        sub_1002415C8(3, v10);
        if (v14 < 0)
        {
          operator delete(__p[0]);
        }

        v16 = v11;
        if (v20 < 0)
        {
          operator delete(v19);
        }

        std::locale::~locale(v18);
        std::iostream::~basic_iostream();
        std::ios::~ios();
      }

      byte_1004D54B8 = 1;
      byte_1004BE35A = 0;
      if (v21)
      {
        v22 = v21;
        operator delete(v21);
      }

      v12 = *(a1 + 32);
      if (v12)
      {
        if (atomic_fetch_add(v12 + 2, 0xFFFFFFFF) == 1)
        {
          (*(*v12 + 16))(v12);
        }
      }

      *(a1 + 32) = 0;
      *(a1 + 40) = 0;
      *v2 = off_100475768;
      sub_1002A9948();
    }
  }

  if (sub_100241540() >= 4)
  {
    sub_100241960(v15);
    sub_100241184(&v16, "Trace: Total events: ", 21);
    std::ostream::operator<<();
    std::stringbuf::str();
    if (v14 >= 0)
    {
      v8 = __p;
    }

    else
    {
      v8 = __p[0];
    }

    sub_1002415C8(4, v8);
    if (v14 < 0)
    {
      operator delete(__p[0]);
    }

    v16 = v9;
    if (v20 < 0)
    {
      operator delete(v19);
    }

    std::locale::~locale(v18);
    std::iostream::~basic_iostream();
    std::ios::~ios();
  }

  goto LABEL_21;
}

void *sub_1002AD7AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1002ABC0C();
  result = sub_1002A9C00((v4 + 16));
  if (!result)
  {
    v9 = 0;
    v10 = 0;
    v6 = sub_1002A80E0(&v9, 3);
    *v6 = 29808;
    *(v6 + 2) = 114;
    sub_1002A8980(-215, &v9, "getRef", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/include/opencv2/core/utility.hpp", 701);
  }

  v7 = result[13];
  if (v7 != a1)
  {
    if (v7)
    {
      v9 = 0;
      v10 = 0;
      qmemcpy(sub_1002A80E0(&v9, 36), "ctx.dummy_stack_top.region == __null", 36);
      sub_1002A8980(-215, &v9, "parallelForSetRootRegion", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/trace.cpp", 917);
    }

    result[13] = a1;
    result[14] = 0;
    result[15] = -1;
    if (result == a2)
    {
      *(result + 32) = *(result + 20);
      *(result + 20) = 0;
      result[17] = result[11];
      result[11] = 0;
      *(result + 36) = *(result + 24);
      result[19] = result[8];
    }

    else
    {
      if (result[8])
      {
        v9 = 0;
        v10 = 0;
        v8 = sub_1002A80E0(&v9, 17);
        *(v8 + 16) = 41;
        *v8 = *"ctx.stack.empty()";
        sub_1002A8980(-215, &v9, "parallelForSetRootRegion", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/trace.cpp", 928);
      }

      result[2] = a1;
      result[9] = *(a2 + 72);
      result[19] = 0;
      *(result + 24) = -1;
      *(result + 24) = *(a2 + 96) >> 31;
    }
  }

  return result;
}

void *sub_1002AD9B8()
{
  v0 = sub_1002ABC0C();
  result = sub_1002A9C00((v0 + 16));
  if (!result)
  {
    v3[0] = 0;
    v3[1] = 0;
    v2 = sub_1002A80E0(v3, 3);
    *v2 = 29808;
    *(v2 + 2) = 114;
    sub_1002A8980(-215, v3, "getRef", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/include/opencv2/core/utility.hpp", 701);
  }

  return result;
}

void sub_1002ADA50(uint64_t a1)
{
  v2 = sub_1002ABC0C();
  v3 = sub_1002A9C00((v2 + 16));
  if (!v3)
  {
    v13 = 0;
    v14 = 0;
    v4 = sub_1002A80E0(&v13, 3);
    *v4 = 29808;
    *(v4 + 2) = 114;
    sub_1002A8980(-215, &v13, "getRef", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/include/opencv2/core/utility.hpp", 701);
  }

  j__mach_absolute_time();
  if ((atomic_load_explicit(&qword_1004BE380, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1004BE380))
  {
    *&qword_1004BE378 = 1000000000.0 / sub_1002A8918();
    __cxa_guard_release(&qword_1004BE380);
  }

  v13 = 0;
  v14 = 0;
  v15 = 0;
  v5 = sub_1002ABC0C();
  sub_1002A975C(v5 + 16, &v13);
  v6 = v13;
  if (v14 != v13)
  {
    v7 = 0;
    v8 = (v14 - v13) >> 3;
    if (v8 <= 1)
    {
      v8 = 1;
    }

    v9 = v13;
    while (1)
    {
      v10 = *v9;
      if (*v9)
      {
        v11 = *(v10 + 64);
        if (v11)
        {
          if (*(*(*(v10 + 32) + 8 * ((v11 + *(v10 + 56) - 1) / 0xAAuLL)) + 24 * ((v11 + *(v10 + 56) - 1) % 0xAAuLL)) == a1)
          {
            goto LABEL_15;
          }
        }

        else if (*(v10 + 104) == a1)
        {
LABEL_15:
          v12 = *(v10 + 80);
          *(v10 + 80) = 0;
          *(v10 + 88) = 0;
          if (v10 == v3)
          {
            *(v3 + 20) = *(v3 + 32);
            *(v3 + 32) = 0;
            v3[11] = v3[17];
            v3[17] = 0;
            *(v3 + 24) = *(v3 + 36);
          }

          v7 += v12;
          *(v10 + 104) = 0;
          *(v10 + 112) = 0;
          *(v10 + 120) = -1;
        }
      }

      ++v9;
      if (!--v8)
      {
        *(v3 + 20) += v7;
        goto LABEL_19;
      }
    }
  }

  if (v13)
  {
LABEL_19:
    v14 = v6;
    operator delete(v6);
  }
}

void *sub_1002ADC84(void *result)
{
  if (!*result)
  {
    v1 = result;
    v2 = sub_1002A814C();
    sub_1002A93EC(v2);
    if (!*v1)
    {
      operator new();
    }

    return sub_1002A93F4(v2);
  }

  return result;
}

void *sub_1002ADCFC(void **a1)
{
  v2 = sub_1002ABC0C();
  result = sub_1002A9C00((v2 + 16));
  if (!result)
  {
    v6 = 0;
    v7 = 0;
    v4 = sub_1002A80E0(&v6, 3);
    *v4 = 29808;
    *(v4 + 2) = 114;
    sub_1002A8980(-215, &v6, "getRef", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/include/opencv2/core/utility.hpp", 701);
  }

  v5 = result[2];
  if (v5)
  {
    if (!*v5)
    {
      v6 = 0;
      v7 = 0;
      qmemcpy(sub_1002A80E0(&v6, 13), "region->pImpl", 13);
      sub_1002A8980(-215, &v6, "traceArg", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/trace.cpp", 1090);
    }

    return sub_1002ADC84(*a1);
  }

  return result;
}

void *sub_1002ADE1C(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0xAA;
  v3 = v1 - 170;
  if (!v2)
  {
    v7 = a1[2];
    v6 = a1[3];
    v8 = v6 - *a1;
    if (v7 - a1[1] < v8)
    {
      if (v6 != v7)
      {
        operator new();
      }

      operator new();
    }

    v9 = v8 >> 2;
    if (v6 == *a1)
    {
      v10 = 1;
    }

    else
    {
      v10 = v9;
    }

    if (!(v10 >> 61))
    {
      operator new();
    }

    sub_10000927C();
  }

  a1[4] = v3;
  v4 = a1[1];
  v11 = *v4;
  a1[1] = v4 + 1;
  return sub_1002AE1E4(a1, &v11);
}

void sub_1002AE18C(_Unwind_Exception *a1)
{
  operator delete(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

void *sub_1002AE1E4(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      v11 = &v4[-*result] >> 2;
      if (v4 == *result)
      {
        v11 = 1;
      }

      if (!(v11 >> 61))
      {
        operator new();
      }

      sub_10000927C();
    }

    v7 = ((v6 >> 3) + 1) / 2;
    v8 = ((v6 >> 3) + 1) / -2;
    v9 = &v5[-8 * v7];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v7], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v8];
  }

  *v4 = *a2;
  v3[2] = v4 + 8;
  return result;
}

const void **sub_1002AE370(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      v9 = (v7 - v4) >> 2;
      if (v7 == v4)
      {
        v9 = 1;
      }

      if (!(v9 >> 61))
      {
        operator new();
      }

      sub_10000927C();
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v5 - 8;
  return result;
}

uint64_t sub_1002AE508(uint64_t a1, __int128 *a2)
{
  *a1 = off_100475698;
  v4 = (a1 + 8);
  sub_1002AE71C((a1 + 8));
  if (*(a2 + 23) < 0)
  {
    sub_1002824C8((a1 + 576), *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    *(a1 + 592) = *(a2 + 2);
    *(a1 + 576) = v5;
  }

  v6 = sub_100241184(v4, "#description: OpenCV trace file", 31);
  std::ios_base::getloc((v6 + *(*v6 - 24)));
  v7 = std::locale::use_facet(&v11, &std::ctype<char>::id);
  (v7->__vftable[2].~facet_0)(v7, 10);
  std::locale::~locale(&v11);
  std::ostream::put();
  std::ostream::flush();
  v8 = sub_100241184(v4, "#version: 1.0", 13);
  std::ios_base::getloc((v8 + *(*v8 - 24)));
  v9 = std::locale::use_facet(&v11, &std::ctype<char>::id);
  (v9->__vftable[2].~facet_0)(v9, 10);
  std::locale::~locale(&v11);
  std::ostream::put();
  std::ostream::flush();
  return a1;
}

void sub_1002AE6E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale a10)
{
  std::locale::~locale(&a10);
  if (*(v11 + 599) < 0)
  {
    operator delete(*v12);
  }

  sub_1002AE8E8(v10);
  _Unwind_Resume(a1);
}

void (__cdecl ***sub_1002AE71C(void (__cdecl ***a1)(std::ofstream *__hidden this)))(std::ofstream *__hidden this)
{
  a1[58] = 0;
  *a1 = v3;
  *(*(v3 - 3) + a1) = v2;
  v4 = (*(*a1 - 3) + a1);
  std::ios_base::init(v4, a1 + 1);
  v4[1].__vftable = 0;
  v4[1].__fmtflags_ = -1;
  std::filebuf::basic_filebuf();
  if (!std::filebuf::open())
  {
    std::ios_base::clear((*(*a1 - 3) + a1), *(*(*a1 - 3) + a1 + 32) | 4);
  }

  return a1;
}

void sub_1002AE8A4(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  std::ios::~ios();
  _Unwind_Resume(a1);
}

void *sub_1002AE8E8(void *a1)
{
  std::filebuf::~filebuf();
  std::ostream::~ostream();
  std::ios::~ios();
  return a1;
}

void sub_1002AE9B8(uint64_t a1)
{
  sub_1002AEA40(a1);

  operator delete();
}

uint64_t sub_1002AE9F0(uint64_t a1, char *__s)
{
  v2 = __s[1032];
  if ((v2 & 1) == 0)
  {
    v5 = strlen(__s);
    sub_100241184((a1 + 8), __s, v5);
  }

  return v2 ^ 1u;
}

uint64_t sub_1002AEA40(uint64_t a1)
{
  *a1 = off_100475698;
  v2 = (a1 + 8);
  if (!std::filebuf::close())
  {
    std::ios_base::clear((v2 + *(*v2 - 24)), *(v2 + *(*v2 - 24) + 32) | 4);
  }

  if (*(a1 + 599) < 0)
  {
    operator delete(*(a1 + 576));
  }

  std::filebuf::~filebuf();
  std::ostream::~ostream();
  std::ios::~ios();
  return a1;
}

void sub_1002AEB7C(uint64_t a1)
{
  *a1 = off_1004756E8;
  sub_1002AE71C((a1 + 8));
  sub_1002A8270();
}

void sub_1002AED4C(_Unwind_Exception *a1)
{
  sub_1002A9380((v2 + 576));
  sub_1002AE8E8(v1);
  _Unwind_Resume(a1);
}

void sub_1002AED7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale a10)
{
  std::locale::~locale(&a10);
  if (*(v11 + 607) < 0)
  {
    operator delete(*v12);
  }

  sub_1002A9380((v11 + 576));
  sub_1002AE8E8(v10);
  _Unwind_Resume(a1);
}

void sub_1002AEDC0(uint64_t a1)
{
  sub_1002AEE7C(a1);

  operator delete();
}

uint64_t sub_1002AEDF8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 1032);
  if ((v2 & 1) == 0)
  {
    sub_1002A93EC((a1 + 576));
    v5 = strlen(a2);
    sub_100241184((a1 + 8), a2, v5);
    std::ostream::flush();
    sub_1002A93F4((a1 + 576));
  }

  return v2 ^ 1u;
}

uint64_t sub_1002AEE7C(uint64_t a1)
{
  *a1 = off_1004756E8;
  sub_1002A93EC((a1 + 576));
  v2 = (a1 + 8);
  if (!std::filebuf::close())
  {
    std::ios_base::clear((v2 + *(*v2 - 24)), *(v2 + *(*v2 - 24) + 32) | 4);
  }

  sub_1002A93F4((a1 + 576));
  if (*(a1 + 607) < 0)
  {
    operator delete(*(a1 + 584));
  }

  sub_1002A9380((a1 + 576));
  std::filebuf::~filebuf();
  std::ostream::~ostream();
  std::ios::~ios();
  return a1;
}

uint64_t sub_1002AEFD0(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  *(a1 + 40) = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = *(a1 + 16);
      v2 = (*(a1 + 8) + 8);
      *(a1 + 8) = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 85;
    goto LABEL_7;
  }

  if (v4 == 2)
  {
    v5 = 170;
LABEL_7:
    *(a1 + 32) = v5;
  }

  if (v2 != v3)
  {
    do
    {
      v6 = *v2++;
      operator delete(v6);
    }

    while (v2 != v3);
    v8 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (v7 != v8)
    {
      *(a1 + 16) = v7 + ((v8 - v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_1002AF0B4(void *a1)
{
  v1 = a1[2];
  if (v1)
  {
    v2 = a1;
    (*(*v1 + 8))(a1[2]);
    a1 = v2;
  }

  v3 = *(*a1 + 8);

  return v3();
}

void sub_1002AF250(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = (a2 + 160);
    v3 = *(a2 + 160);
    if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v3 + 16))(v3);
    }

    *v4 = 0;
    v4[1] = 0;
    sub_1002AEFD0(a2 + 24);

    operator delete();
  }
}

uint64_t sub_1002AF310(void *a1)
{
  v1 = a1[2];
  if (v1)
  {
    v2 = a1;
    (*(*v1 + 8))(a1[2]);
    a1 = v2;
  }

  v3 = *(*a1 + 8);

  return v3();
}

uint64_t sub_1002AF394()
{
  byte_1004BE358 = sub_1002AA29C("OPENCV_TRACE", 0);
  dword_1004BE35C = sub_1002AA518("OPENCV_TRACE_DEPTH_OPENCV", 1);
  dword_1004BE360 = sub_1002AA518("OPENCV_TRACE_MAX_CHILDREN_OPENCV", 1000);
  dword_1004BE364 = sub_1002AA518("OPENCV_TRACE_MAX_CHILDREN", 10000);
  sub_1002AA910("OPENCV_TRACE_LOCATION", "OpenCVTrace", &qword_1004BE390);

  return __cxa_atexit(sub_1002422D0, &qword_1004BE390, &_mh_execute_header);
}

double sub_1002AF44C(uint64_t a1, uint64_t a2)
{
  *a1 = a2;
  *(a1 + 8) = a2;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  return result;
}

uint64_t sub_1002AF468(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  if (*(a1 + 76))
  {
    v5[0] = 0;
    v5[1] = 0;
    qmemcpy(sub_1002A80E0(v5, 13), "mapcount == 0", 13);
    sub_1002A8980(-215, v5, "~UMatData", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/umatrix.cpp", 77);
  }

  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 48) = 0;
  *(a1 + 40) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  v2 = *(a1 + 80);
  if (v2)
  {
    atomic_fetch_add((v2 + 16), 0xFFFFFFFF);
    atomic_fetch_add((v2 + 20), 0xFFFFFFFF);
    if (!*(v2 + 20))
    {
      if (!*(v2 + 76))
      {
        goto LABEL_15;
      }

      v4 = *(v2 + 8);
      if (!v4)
      {
        v4 = sub_100268CC8();
      }

      (*(*v4 + 48))(v4, v2);
      if (!*(v2 + 20))
      {
LABEL_15:
        if (!*(v2 + 16))
        {
          (*(**(v2 + 8) + 32))(*(v2 + 8), v2);
        }
      }
    }

    *(a1 + 80) = 0;
  }

  return a1;
}

void sub_1002AF5B8(uint64_t a1, int a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a2 >= 0x21)
  {
    v29 = 0;
    v30 = 0;
    qmemcpy(sub_1002A80E0(&v29, 25), "0 <= _dims && _dims <= 32", 25);
    sub_1002A8980(-215, &v29, "setSize", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/umatrix.cpp", 182);
  }

  if (*(a1 + 4) != a2)
  {
    v10 = *(a1 + 56);
    if (v10 != (a1 + 64))
    {
      j__free(v10);
      *(a1 + 48) = a1 + 8;
      *(a1 + 56) = a1 + 64;
    }

    if (a2 >= 3)
    {
      v11 = 8 * a2;
      v12 = sub_1001D8FE8(v11 + 4 * (a2 + 1));
      *(a1 + 56) = v12;
      *&v12[v11] = a2;
      *(a1 + 48) = &v12[v11 + 4];
      *(a1 + 8) = -1;
    }
  }

  *(a1 + 4) = a2;
  if (a3)
  {
    v13 = (a2 - 1);
    if (a2 >= 1)
    {
      v14 = ((*a1 >> 3) & 0x1FF) + 1;
      v15 = (v14 << ((0xFA50u >> (2 * (*a1 & 7))) & 3));
      if (a4)
      {
        v16 = *(a3 + 4 * v13);
        if (v16 < 0)
        {
          v29 = 0;
          v30 = 0;
          v17 = sub_1002A80E0(&v29, 6);
          *v17 = 1027481715;
          *(v17 + 4) = 12320;
          sub_1002A8980(-215, &v29, "setSize", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/umatrix.cpp", 209);
        }

        *(*(a1 + 48) + 4 * v13) = v16;
        *(*(a1 + 56) + 8 * v13) = v15;
        if (a2 != 1)
        {
          v18 = (a2 - 1);
          do
          {
            v20 = *(a3 - 4 + 4 * v18);
            if (v20 < 0)
            {
              v29 = 0;
              v30 = 0;
              v21 = sub_1002A80E0(&v29, 6);
              *v21 = 1027481715;
              *(v21 + 4) = 12320;
              sub_1002A8980(-215, &v29, "setSize", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/umatrix.cpp", 209);
            }

            *(*(a1 + 48) + 4 * v18 - 4) = v20;
            v22 = v15;
            if (v18 <= v13)
            {
              v22 = *(a4 - 8 + 8 * v18);
            }

            v19 = *(a1 + 56) + 8 * v18--;
            *(v19 - 8) = v22;
          }

          while (v18 + 1 > 1);
        }
      }

      else if (a5)
      {
        v23 = (v14 << ((0xFA50u >> (2 * (*a1 & 7))) & 3));
        do
        {
          v25 = *(a3 + 4 * v13);
          if (v25 < 0)
          {
            v29 = 0;
            v30 = 0;
            v26 = sub_1002A80E0(&v29, 6);
            *v26 = 1027481715;
            *(v26 + 4) = 12320;
            sub_1002A8980(-215, &v29, "setSize", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/umatrix.cpp", 209);
          }

          *(*(a1 + 48) + 4 * v13) = v25;
          *(*(a1 + 56) + 8 * v13) = v23;
          v23 *= v25;
          v24 = v13-- <= 0;
        }

        while (!v24);
      }

      else
      {
        do
        {
          v27 = *(a3 + 4 * v13);
          if (v27 < 0)
          {
            v29 = 0;
            v30 = 0;
            v28 = sub_1002A80E0(&v29, 6);
            *v28 = 1027481715;
            *(v28 + 4) = 12320;
            sub_1002A8980(-215, &v29, "setSize", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/umatrix.cpp", 209);
          }

          *(*(a1 + 48) + 4 * v13) = v27;
          v24 = v13-- <= 0;
        }

        while (!v24);
      }

      if (a2 == 1)
      {
        *(a1 + 4) = 2;
        *(a1 + 12) = 1;
        *(*(a1 + 56) + 8) = v15;
      }
    }
  }
}

void sub_1002AF980(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v63 = 1124007936;
  v65 = 0;
  v66 = 0;
  memset(v64, 0, 24);
  v67 = &v64[1];
  v68 = v69;
  v69[0] = 0;
  v69[1] = 0;
  v5 = *(a1 + 16);
  if (!v5)
  {
    *a4 = 1124007936;
    *(a4 + 4) = 0;
    *(a4 + 20) = 0;
    *(a4 + 12) = 0;
    *(a4 + 32) = 0;
    *(a4 + 40) = 0;
    *(a4 + 64) = 0;
    *(a4 + 48) = a4 + 8;
    *(a4 + 56) = a4 + 64;
    *(a4 + 72) = 0;
LABEL_38:
    memset(v64, 0, 20);
    v66 = 0;
    goto LABEL_39;
  }

  if (v5 == *(a1 + 24))
  {
LABEL_6:
    v10 = *(a1 + 48);
    v11 = sub_100268CC8();
    if (v10)
    {
      v11 = v10;
    }

    v12 = (*(*v11 + 16))(v11, *(a1 + 4), *(a1 + 64), *a1 & 0xFFF, *(a1 + 16), *(a1 + 72), a2 | 0x3000000, a3);
    v13 = sub_100268CC8();
    if (((*(*v13 + 24))(v13, v12, a2 | 0x3000000, a3) & 1) == 0)
    {
      v14 = sub_100268CC8();
      if (((*(*v14 + 24))(v14, v12, a2 | 0x3000000, a3) & 1) == 0)
      {
        v53 = 0uLL;
        v15 = sub_1002A80E0(&v53, 9);
        *(v15 + 8) = 100;
        *v15 = *"allocated";
        sub_1002A8980(-215, &v53, "getUMat", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/umatrix.cpp", 309);
      }
    }

    v16 = *(a1 + 56);
    if (v16)
    {
      *(v12 + 80) = v16;
      atomic_fetch_add((v16 + 20), 1u);
      atomic_fetch_add((*(a1 + 56) + 16), 1u);
    }

    v17 = *(a1 + 4);
    v63 = *a1;
    sub_1002AF5B8(&v63, v17, *(a1 + 64), *(a1 + 72), 0);
    v18 = v64[0];
    v19 = v64[0];
    if (v64[0] < 1)
    {
      v28 = 0;
    }

    else
    {
      v20 = 0;
      while (v67[v20] <= 1)
      {
        if (v64[0] == ++v20)
        {
          LODWORD(v20) = v64[0];
          break;
        }
      }

      v28 = v20;
    }

    v29 = v68;
    while (1)
    {
      v30 = v19 - 1;
      if (v19 - 1 <= v28)
      {
        break;
      }

      v31 = v67[v19 - 1];
      v32 = &v68[8 * v19];
      v33 = *(v32 - 2);
      v34 = *(v32 - 1) * v31;
      v19 = v30;
      if (v34 < v33)
      {
        v35 = v63 & 0xFFFFBFFF;
        v63 &= ~0x4000u;
        if (v64[0] < 3)
        {
          goto LABEL_31;
        }

        goto LABEL_30;
      }
    }

    v35 = v63 & 0xFFFFBFFF | 0x4000;
    v63 = v35;
    if (v64[0] < 3)
    {
      goto LABEL_31;
    }

LABEL_30:
    *&v64[1] = -1;
LABEL_31:
    v65 = v12;
    v66 = 0;
    if (v12)
    {
      atomic_fetch_add((v12 + 16), 1u);
      v35 = v63;
      v18 = v64[0];
      v37 = v65;
      v36 = v66;
      v29 = v68;
    }

    else
    {
      v36 = 0;
      v37 = 0;
    }

    *a4 = v35;
    *(a4 + 4) = v18;
    *(a4 + 8) = *&v64[1];
    *(a4 + 16) = *&v64[3];
    *(a4 + 24) = v64[5];
    *(a4 + 32) = v37;
    *(a4 + 40) = v36;
    *(a4 + 64) = 0;
    *(a4 + 48) = a4 + 8;
    *(a4 + 56) = a4 + 64;
    *(a4 + 72) = 0;
    if (v18 > 2)
    {
      *(a4 + 48) = v67;
      *(a4 + 56) = v29;
      v67 = &v64[1];
      v68 = v69;
    }

    else
    {
      *(a4 + 64) = *v29;
      *(a4 + 72) = v29[1];
    }

    v63 = 1124007936;
    goto LABEL_38;
  }

  v61 = 0;
  v62 = 0;
  sub_10026BBAC(a1, &v62, &v61);
  if (!*&v61)
  {
    if (*(a1 + 16) != *(a1 + 24))
    {
      v53 = 0uLL;
      v9 = sub_1002A80E0(&v53, 17);
      *(v9 + 16) = 116;
      *v9 = *"data == datastart";
      sub_1002A8980(-215, &v53, "getUMat", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/umatrix.cpp", 287);
    }

    goto LABEL_6;
  }

  v21 = *a1;
  *&v22 = *a1;
  v46 = *(a1 + 8);
  *(&v22 + 1) = v46;
  v23 = *(a1 + 16);
  v24 = *(a1 + 32);
  v53 = v22;
  v54 = v23;
  v55 = v24;
  v25 = *(a1 + 56);
  v56 = *(a1 + 48);
  v57 = v25;
  v58 = &v53 + 8;
  v59 = v60;
  v60[0] = 0;
  v60[1] = 0;
  if (v25)
  {
    atomic_fetch_add((v25 + 20), 1u);
    if (*(a1 + 4) <= 2)
    {
LABEL_21:
      v26 = *(a1 + 72);
      v27 = v59;
      *v59 = *v26;
      v27[1] = v26[1];
      goto LABEL_44;
    }
  }

  else if (SHIDWORD(v21) <= 2)
  {
    goto LABEL_21;
  }

  DWORD1(v53) = 0;
  sub_100269B58(&v53, a1);
LABEL_44:
  sub_10026BD20(&v53, v61.u32[1], HIDWORD(v62) - (v61.i32[1] + DWORD2(v53)), v61.u32[0], v62 - (v61.i32[0] + HIDWORD(v53)));
  sub_1002AF980(v48, &v53, a2, a3);
  v47[0] = v61;
  v47[1] = vrev64_s32(v46);
  sub_1002B10EC(a4, v48, v47);
  if (v49 && atomic_fetch_add((v49 + 16), 0xFFFFFFFF) == 1)
  {
    v38 = v49;
    v49 = 0;
    (*(**(v38 + 8) + 32))(*(v38 + 8));
  }

  if (SHIDWORD(v48[0]) >= 1)
  {
    v39 = 0;
    v40 = v50;
    do
    {
      *(v40 + 4 * v39++) = 0;
    }

    while (v39 < SHIDWORD(v48[0]));
  }

  v49 = 0;
  if (v51 != &v52)
  {
    j__free(v51);
  }

  if (v57 && atomic_fetch_add((v57 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(&v53);
  }

  v57 = 0;
  v54 = 0u;
  v55 = 0u;
  if (SDWORD1(v53) >= 1)
  {
    v41 = 0;
    v42 = v58;
    do
    {
      *&v42[4 * v41++] = 0;
    }

    while (v41 < SDWORD1(v53));
  }

  if (v59 != v60)
  {
    j__free(v59);
  }

  if (v65 && atomic_fetch_add((v65 + 16), 0xFFFFFFFF) == 1)
  {
    v43 = v65;
    v65 = 0;
    (*(**(v43 + 8) + 32))(*(v43 + 8));
  }

  if (v64[0] >= 1)
  {
    v44 = 0;
    v45 = v67;
    do
    {
      v45[v44++] = 0;
    }

    while (v44 < v64[0]);
  }

LABEL_39:
  v65 = 0;
  if (v68 != v69)
  {
    j__free(v68);
  }
}

uint64_t sub_1002B00D8(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 && atomic_fetch_add((v2 + 16), 0xFFFFFFFF) == 1)
  {
    v3 = *(a1 + 32);
    *(a1 + 32) = 0;
    (*(**(v3 + 8) + 32))(*(v3 + 8));
  }

  if (*(a1 + 4) >= 1)
  {
    v4 = 0;
    v5 = *(a1 + 48);
    do
    {
      *(v5 + 4 * v4++) = 0;
    }

    while (v4 < *(a1 + 4));
  }

  *(a1 + 32) = 0;
  v6 = *(a1 + 56);
  if (v6 != (a1 + 64))
  {
    j__free(v6);
  }

  return a1;
}

void sub_1002B018C(uint64_t a1, int a2, uint64_t *__src, __int16 a4, int a5)
{
  v5 = __src;
  *(a1 + 24) = a5;
  if (a2 > 0x20 || !__src)
  {
    __dst[0] = 0;
    __dst[1] = 0;
    qmemcpy(sub_1002A80E0(__dst, 27), "0 <= d && d <= 32 && _sizes", 27);
    sub_1002A8980(-215, __dst, "create", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/umatrix.cpp", 337);
  }

  v8 = a4 & 0xFFF;
  v9 = *(a1 + 32);
  if (!v9)
  {
    goto LABEL_25;
  }

  v10 = *(a1 + 4);
  if (v10 == a2)
  {
    if (v8 != (*a1 & 0xFFF))
    {
      goto LABEL_25;
    }

    if (a2 == 2)
    {
      if (*(a1 + 8) == *__src && *(a1 + 12) == *(__src + 1))
      {
        return;
      }
    }

    else if (a2 < 1)
    {
      LODWORD(v12) = 0;
      goto LABEL_22;
    }

LABEL_17:
    v12 = 0;
    while (*(*(a1 + 48) + 4 * v12) == *(__src + v12))
    {
      if (a2 == ++v12)
      {
        goto LABEL_23;
      }
    }

LABEL_22:
    if (v12 == a2)
    {
LABEL_23:
      if (a2 > 1 || *(*(a1 + 48) + 4) == 1)
      {
        return;
      }
    }

LABEL_25:
    v11 = (a1 + 48);
    if (*(a1 + 48) != __src)
    {
      if (!v9)
      {
        goto LABEL_33;
      }

      goto LABEL_31;
    }

    if (a2 < 1)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  if (a2 != 1 || v10 >= 3)
  {
    goto LABEL_25;
  }

  if (v8 == (*a1 & 0xFFF))
  {
    goto LABEL_17;
  }

  v11 = (a1 + 48);
  if (*(a1 + 48) == __src)
  {
LABEL_29:
    memcpy(__dst, __src, 4 * a2);
LABEL_30:
    v5 = __dst;
    if (!v9)
    {
      goto LABEL_33;
    }
  }

LABEL_31:
  if (atomic_fetch_add((v9 + 16), 0xFFFFFFFF) == 1)
  {
    v13 = *(a1 + 32);
    *(a1 + 32) = 0;
    (*(**(v13 + 8) + 32))(*(v13 + 8));
  }

LABEL_33:
  if (*(a1 + 4) >= 1)
  {
    v14 = 0;
    v15 = *v11;
    do
    {
      *(v15 + 4 * v14++) = 0;
    }

    while (v14 < *(a1 + 4));
  }

  *(a1 + 32) = 0;
  if (!a2)
  {
    return;
  }

  *a1 = v8 | 0x42FF0000;
  sub_1002AF5B8(a1, a2, v5, 0, 1);
  *(a1 + 40) = 0;
  v16 = *(a1 + 4);
  if (v16 >= 3)
  {
    v18 = (*v11 + 4);
    v19 = 1;
    v20 = v16 & 0x7FFFFFFE;
    v21 = 1;
    do
    {
      v19 *= *(v18 - 1);
      v21 *= *v18;
      v18 += 2;
      v20 -= 2;
    }

    while (v20);
    v17 = v21 * v19;
    v22 = v16 - (v16 & 0x7FFFFFFE);
    if (v22)
    {
      v23 = (*v11 + 8 * ((v16 >> 1) & 0x3FFFFFFF));
      do
      {
        v24 = *v23++;
        v17 *= v24;
        --v22;
      }

      while (v22);
    }
  }

  else
  {
    v17 = *(a1 + 12) * *(a1 + 8);
  }

  if (v17)
  {
    v25 = *(a1 + 16);
    v26 = sub_100268CC8();
    if (!v25)
    {
      sub_100268CC8();
      v25 = v26;
    }

    v27 = (*(*v25 + 16))(v25, *(a1 + 4), *(a1 + 48), v8, 0, *(a1 + 56), 0, *(a1 + 24));
    *(a1 + 32) = v27;
    if (!v27)
    {
      v37 = 0;
      v38 = 0;
      v28 = sub_1002A80E0(&v37, 6);
      *(v28 + 4) = 12320;
      *v28 = 1025581173;
      sub_1002A8980(-215, &v37, "create", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/umatrix.cpp", 377);
    }

    v29 = *(a1 + 4);
    if (*(*(a1 + 56) + 8 * v29 - 8) != (((*a1 >> 3) & 0x1FF) + 1) << ((0xFA50u >> (2 * (*a1 & 7))) & 3))
    {
      v37 = 0;
      v38 = 0;
      qmemcpy(sub_1002A80E0(&v37, 146), "step[dims-1] == (size_t)(((((flags) & ((512 - 1) << 3)) >> 3) + 1) << ((((sizeof(size_t)/4+1)*16384|0x3a50) >> ((flags) & ((1 << 3) - 1))*2) & 3))", 146);
      sub_1002A8980(-215, &v37, "create", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/umatrix.cpp", 385);
    }

    v16 = v29;
    v30 = *v11;
    if (v29 >= 1)
    {
LABEL_52:
      v31 = 0;
      while (*(v30 + 4 * v31) <= 1)
      {
        if (v16 == ++v31)
        {
          LODWORD(v31) = v16;
          break;
        }
      }

      v31 = v31;
      goto LABEL_59;
    }
  }

  else
  {
    v16 = v16;
    v30 = *v11;
    if (*(a1 + 4) >= 1)
    {
      goto LABEL_52;
    }
  }

  v31 = 0;
LABEL_59:
  v32 = (*(a1 + 56) + 8 * v16 - 8);
  v33 = v16 - 1;
  while (v33 > v31)
  {
    v34 = *v32 * *(v30 + 4 * v33);
    v35 = *--v32;
    --v33;
    if (v34 < v35)
    {
      *a1 &= ~0x4000u;
      if (v16 < 3)
      {
        goto LABEL_66;
      }

      goto LABEL_65;
    }
  }

  *a1 = *a1 & 0xFFFFBFFF | 0x4000;
  if (v16 < 3)
  {
    goto LABEL_66;
  }

LABEL_65:
  *(a1 + 8) = -1;
LABEL_66:
  v36 = *(a1 + 32);
  if (v36)
  {
    atomic_fetch_add((v36 + 16), 1u);
  }
}

void sub_1002B06C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12)
{
  if (a2)
  {
    sub_100008E3C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002B07FC(uint64_t a1, uint64_t a2)
{
  sub_1002AF5B8(a1, *(a2 + 4), 0, 0, 0);
  if (*(a1 + 4) >= 1)
  {
    v4 = 0;
    v5 = *(a2 + 48);
    v6 = *(a2 + 56);
    v7 = *(a1 + 48);
    v8 = *(a1 + 56);
    do
    {
      *(v7 + 4 * v4) = *(v5 + 4 * v4);
      *(v8 + 8 * v4) = *(v6 + 8 * v4);
      ++v4;
    }

    while (v4 < *(a1 + 4));
  }
}

uint64_t sub_1002B086C(uint64_t a1)
{
  v1 = *(a1 + 32);
  *(a1 + 32) = 0;
  return (*(**(v1 + 8) + 32))();
}

uint64_t sub_1002B089C(uint64_t a1, _DWORD *a2, int *a3, uint64_t *a4)
{
  *a1 = 1124007936;
  *(a1 + 4) = 0;
  v8 = (a1 + 4);
  *(a1 + 32) = 0;
  v9 = a1 + 32;
  v10 = (a1 + 8);
  *(a1 + 20) = 0;
  *(a1 + 12) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = a1 + 8;
  *(a1 + 64) = 0;
  v11 = (a1 + 64);
  *(a1 + 56) = a1 + 64;
  *(a1 + 72) = 0;
  v12 = a2[1];
  if (v12 < 2)
  {
    v48 = 0;
    v49 = 0;
    v13 = sub_1002A80E0(&v48, 11);
    *(v13 + 7) = 840973630;
    *v13 = *"m.dims >= 2";
    sub_1002A8980(-215, &v48, "UMat", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/umatrix.cpp", 426);
  }

  if (v12 > 2)
  {
    v40 = a1 + 8;
    bzero(v50, 0x440uLL);
    v48 = v50;
    v49 = v12;
    if (v12 > 0x88)
    {
      operator new[]();
    }

    v19 = *a4;
    v50[0] = *a3;
    v50[1] = v19;
    v20 = 2;
    do
    {
      v48[v20++] = 0x7FFFFFFF80000000;
    }

    while (v20 < a2[1]);
    sub_1002B13FC(v41, a2, v48);
    if (v41 == a1)
    {
      if (v43 && atomic_fetch_add((v43 + 16), 0xFFFFFFFF) == 1)
      {
        v28 = v43;
        v43 = 0;
        (*(**(v28 + 8) + 32))(*(v28 + 8));
      }

      goto LABEL_45;
    }

    if (*v9 && atomic_fetch_add((*v9 + 16), 0xFFFFFFFF) == 1)
    {
      v21 = *v9;
      *v9 = 0;
      (*(**(v21 + 8) + 32))(*(v21 + 8));
    }

    if (*v8 >= 1)
    {
      v22 = 0;
      v23 = *(a1 + 48);
      do
      {
        *(v23 + 4 * v22++) = 0;
      }

      while (v22 < *v8);
    }

    v24 = *&v41[4];
    *a1 = *v41;
    *(a1 + 16) = *&v41[16];
    *(a1 + 24) = v42;
    v25 = v44;
    *(a1 + 32) = v43;
    *(a1 + 40) = v25;
    v26 = *(a1 + 56);
    if (v26 == v11)
    {
      v27 = v46;
      if (v24 <= 2)
      {
        goto LABEL_32;
      }
    }

    else
    {
      j__free(v26);
      *(a1 + 48) = v40;
      *(a1 + 56) = v11;
      v26 = v11;
      v27 = v46;
      if (*&v41[4] <= 2)
      {
LABEL_32:
        *v26 = *v27;
        v26[1] = v27[1];
LABEL_44:
        *v41 = 1124007936;
        memset(&v41[4], 0, 20);
        v43 = 0;
        v44 = 0;
LABEL_45:
        if (*&v41[4] >= 1)
        {
          v32 = 0;
          v33 = v45;
          do
          {
            *&v33[4 * v32++] = 0;
          }

          while (v32 < *&v41[4]);
        }

        v43 = 0;
        if (v46 != v47)
        {
          j__free(v46);
        }

        if (v48 != v50 && v48 != 0)
        {
          operator delete[]();
        }

        return a1;
      }
    }

    *(a1 + 48) = v45;
    *(a1 + 56) = v27;
    v45 = &v41[8];
    v46 = v47;
    goto LABEL_44;
  }

  sub_1002B0F5C(a1, a2);
  v14 = *a3;
  v15 = a3[1];
  if ((*a3 != 0x80000000 || v15 != 0x7FFFFFFF) && (v14 || v15 != *v10))
  {
    if (v14 < 0 || v14 > v15 || v15 > a2[2])
    {
      v48 = 0;
      v49 = 0;
      qmemcpy(sub_1002A80E0(&v48, 83), "0 <= _rowRange.start && _rowRange.start <= _rowRange.end && _rowRange.end <= m.rows", 83);
      sub_1002A8980(-215, &v48, "UMat", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/umatrix.cpp", 441);
    }

    *(a1 + 8) = v15 - v14;
    *(a1 + 40) += *(a1 + 64) * v14;
    *a1 |= 0x8000u;
  }

  v16 = *a4;
  v17 = *(a4 + 1);
  if (*a4 == 0x80000000 && v17 == 0x7FFFFFFF || !v16 && v17 == *(a1 + 12))
  {
    v18 = *v10 < 1;
    if (*v10 == 1)
    {
LABEL_20:
      *a1 |= 0x4000u;
      goto LABEL_61;
    }
  }

  else
  {
    if (v16 < 0 || v16 > v17 || v17 > a2[3])
    {
      v48 = 0;
      v49 = 0;
      qmemcpy(sub_1002A80E0(&v48, 83), "0 <= _colRange.start && _colRange.start <= _colRange.end && _colRange.end <= m.cols", 83);
      sub_1002A8980(-215, &v48, "UMat", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/umatrix.cpp", 449);
    }

    v29 = v17 - v16;
    *(a1 + 12) = v29;
    v30 = *(a1 + 4);
    if (v30 < 1)
    {
      v31 = 0;
    }

    else
    {
      v31 = *(*(a1 + 56) + 8 * v30 - 8);
    }

    *(a1 + 40) += v31 * v16;
    if (v29 >= a2[3])
    {
      v35 = -32769;
    }

    else
    {
      v35 = -49153;
    }

    *a1 = v35 & *a1 | 0x8000;
    v18 = *v10 < 1;
    if (*v10 == 1)
    {
      goto LABEL_20;
    }
  }

  if (!v18)
  {
LABEL_61:
    if (*(a1 + 12) > 0)
    {
      return a1;
    }
  }

  if (*v9 && atomic_fetch_add((*v9 + 16), 0xFFFFFFFF) == 1)
  {
    v36 = *v9;
    *v9 = 0;
    (*(**(v36 + 8) + 32))(*(v36 + 8));
  }

  if (*v8 >= 1)
  {
    v37 = 0;
    v38 = *(a1 + 48);
    do
    {
      *(v38 + 4 * v37++) = 0;
    }

    while (v37 < *v8);
  }

  *v9 = 0;
  *v10 = 0;
  return a1;
}

void sub_1002B0ED4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_1002A8124(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1002B0F5C(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return result;
  }

  v3 = *(a2 + 32);
  if (v3)
  {
    atomic_fetch_add((v3 + 16), 1u);
  }

  v4 = *(result + 32);
  if (v4 && atomic_fetch_add((v4 + 16), 0xFFFFFFFF) == 1)
  {
    v5 = *(result + 32);
    *(result + 32) = 0;
    v6 = result;
    (*(**(v5 + 8) + 32))(*(v5 + 8));
    result = v6;
  }

  if (*(result + 4) <= 0)
  {
    *(result + 32) = 0;
    *result = *a2;
  }

  else
  {
    v7 = 0;
    v8 = *(result + 48);
    do
    {
      *(v8 + 4 * v7++) = 0;
      v9 = *(result + 4);
    }

    while (v7 < v9);
    *(result + 32) = 0;
    *result = *a2;
    if (v9 >= 3)
    {
      v10 = *(a2 + 4);
      goto LABEL_15;
    }
  }

  v10 = *(a2 + 4);
  if (v10 > 2)
  {
LABEL_15:
    v13 = result;
    sub_1002AF5B8(result, v10, 0, 0, 0);
    result = v13;
    if (*(v13 + 4) >= 1)
    {
      v14 = 0;
      v15 = *(a2 + 48);
      v16 = *(a2 + 56);
      v17 = *(v13 + 48);
      v18 = *(v13 + 56);
      do
      {
        *(v17 + 4 * v14) = *(v15 + 4 * v14);
        *(v18 + 8 * v14) = *(v16 + 8 * v14);
        ++v14;
      }

      while (v14 < *(v13 + 4));
    }

    goto LABEL_18;
  }

  *(result + 4) = v10;
  *(result + 8) = *(a2 + 8);
  v11 = *(a2 + 56);
  v12 = *(result + 56);
  *v12 = *v11;
  v12[1] = v11[1];
LABEL_18:
  *(result + 16) = *(a2 + 16);
  if (!*(result + 24))
  {
    *(result + 24) = *(a2 + 24);
  }

  v19 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v19;
  return result;
}

int32x2_t *sub_1002B10EC(int32x2_t *result, uint64_t a2, int32x2_t *a3)
{
  v3 = result;
  v4 = *a2;
  result->i32[0] = *a2;
  result->i32[1] = 2;
  result[1] = vrev64_s32(a3[1]);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  v9 = a3->i32[1];
  v10 = **(a2 + 56);
  result[8] = 0;
  result[2] = v5;
  result[3].i32[0] = v6;
  v11 = (v8 + v10 * v9);
  result[4] = v7;
  result[5] = v11;
  result[6] = &result[1];
  result[7] = &result[8];
  result[9] = 0;
  if (*(a2 + 4) >= 3)
  {
    v26 = 0;
    v27 = 0;
    v12 = sub_1002A80E0(&v26, 11);
    *(v12 + 7) = 840973628;
    *v12 = *"m.dims <= 2";
    sub_1002A8980(-215, &v26, "UMat", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/umatrix.cpp", 471);
  }

  v13 = *(a2 + 12);
  v15 = a3[1].i32[0];
  v14 = a3[1].i32[1];
  if (v15 >= v13)
  {
    v16 = -1;
  }

  else
  {
    v16 = -16385;
  }

  result->i32[0] = v16 & v4 | ((v14 == 1) << 14);
  v17 = (((v4 >> 3) & 0x1FF) + 1) << ((0xFA50u >> (2 * (v4 & 7))) & 3);
  v18 = a3->i32[0];
  result[5] = (*&v11 + v17 * a3->i32[0]);
  if (v18 < 0 || v15 < 0 || v18 + v15 > v13 || (v19 = a3->i32[1], v19 < 0) || v14 < 0 || v19 + v14 > *(a2 + 8))
  {
    v26 = 0;
    v27 = 0;
    qmemcpy(sub_1002A80E0(&v26, 124), "0 <= roi.x && 0 <= roi.width && roi.x + roi.width <= m.cols && 0 <= roi.y && 0 <= roi.height && roi.y + roi.height <= m.rows", 124);
    sub_1002A8980(-215, &v26, "UMat", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/umatrix.cpp", 478);
  }

  v20 = result[4];
  if (v20)
  {
    atomic_fetch_add((*&v20 + 16), 1u);
  }

  if (a3[1].i32[0] < *(a2 + 12) || a3[1].i32[1] < *(a2 + 8))
  {
    result->i32[0] |= 0x8000u;
  }

  v21 = result[7];
  *v21 = **(a2 + 56);
  v21[1] = v17;
  if (result[1].i32[0] < 1 || result[1].i32[1] <= 0)
  {
    v22 = result[4];
    if (*&v22 && atomic_fetch_add((*&v22 + 16), 0xFFFFFFFF) == 1)
    {
      v23 = result[4];
      result[4] = 0;
      (*(**(*&v23 + 8) + 32))(*(*&v23 + 8));
    }

    if (v3->i32[1] >= 1)
    {
      v24 = 0;
      v25 = v3[6];
      do
      {
        *(*&v25 + 4 * v24++) = 0;
      }

      while (v24 < v3->i32[1]);
    }

    v3[4] = 0;
    v3[1] = 0;
    return v3;
  }

  return result;
}

uint64_t sub_1002B13FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = 1124007936;
  *(a1 + 20) = 0;
  *(a1 + 12) = 0;
  *(a1 + 4) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = a1 + 8;
  *(a1 + 56) = a1 + 64;
  *(a1 + 72) = 0;
  v5 = *(a2 + 4);
  if (!a3)
  {
    v26 = 0;
    v27 = 0;
    v6 = sub_1002A80E0(&v26, 6);
    *v6 = 1735287154;
    *(v6 + 4) = 29541;
    sub_1002A8980(-215, &v26, "UMat", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/umatrix.cpp", 499);
  }

  if (v5 <= 0)
  {
    sub_1002B0F5C(a1, a2);
  }

  else
  {
    for (i = 0; i != v5; ++i)
    {
      v8 = *(a3 + 8 * i);
      v9 = v8 == 0x80000000 && HIDWORD(v8) == 0x7FFFFFFF;
      if (!v9 && ((v8 & 0x80000000) != 0 || v8 >= SHIDWORD(v8) || *(*(a2 + 48) + 4 * i) < SHIDWORD(v8)))
      {
        v26 = 0;
        v27 = 0;
        qmemcpy(sub_1002A80E0(&v26, 76), "r == Range::all() || (0 <= r.start && r.start < r.end && r.end <= m.size[i])", 76);
        sub_1002A8980(-215, &v26, "UMat", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/umatrix.cpp", 503);
      }
    }

    sub_1002B0F5C(a1, a2);
    for (j = 0; j != v5; ++j)
    {
      v11 = *(a3 + 8 * j);
      if (v11 != 0x80000000 || HIDWORD(v11) != 0x7FFFFFFF)
      {
        v13 = *(a1 + 48);
        if (v11)
        {
          v14 = 0;
        }

        else
        {
          v14 = *(v13 + 4 * j) == HIDWORD(v11);
        }

        if (!v14)
        {
          *(v13 + 4 * j) = HIDWORD(v11) - v11;
          *(a1 + 40) += *(*(a1 + 56) + 8 * j) * v11;
          *a1 |= 0x8000u;
        }
      }
    }
  }

  v15 = *(a1 + 4);
  v16 = v15;
  v17 = *(a1 + 48);
  if (v15 < 1)
  {
    v19 = 0;
  }

  else
  {
    v18 = 0;
    while (*(v17 + 4 * v18) <= 1)
    {
      if (v15 == ++v18)
      {
        LODWORD(v18) = *(a1 + 4);
        break;
      }
    }

    v19 = v18;
  }

  v20 = (*(a1 + 56) + 8 * v16 - 8);
  v21 = v16 - 1;
  while (v21 > v19)
  {
    v22 = *v20 * *(v17 + 4 * v21);
    v23 = *--v20;
    --v21;
    if (v22 < v23)
    {
      v24 = 0;
      goto LABEL_38;
    }
  }

  v24 = 0x4000;
LABEL_38:
  *a1 = *a1 & 0xFFFFBFFF | v24;
  return a1;
}

void sub_1002B16DC(uint64_t a1, uint64_t a2)
{
  sub_1002ACE7C(v67, &off_1004757F0);
  v4 = sub_100271A88(a2, -1);
  if (sub_100275364(a2) && v4 != (*a1 & 0xFFF))
  {
    if (((*a1 ^ v4) & 0xFF8) != 0)
    {
      v71[0] = 0uLL;
      qmemcpy(sub_1002A80E0(v71, 55), "channels() == ((((dtype) & ((512 - 1) << 3)) >> 3) + 1)", 55);
      sub_1002A8980(-215, v71, "copyTo", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/umatrix.cpp", 820);
    }

    sub_1002B2164(a1, a2, v4, 1.0, 0.0);
    goto LABEL_20;
  }

  if (!*(a1 + 32))
  {
    goto LABEL_19;
  }

  v5 = *(a1 + 4);
  if (v5 >= 3)
  {
    v7 = *(a1 + 48);
    v8 = (v7 + 4);
    v9 = 1;
    v10 = v5 & 0x7FFFFFFE;
    v11 = 1;
    do
    {
      v9 *= *(v8 - 1);
      v11 *= *v8;
      v8 += 2;
      v10 -= 2;
    }

    while (v10);
    v6 = v11 * v9;
    v12 = v5 - (v5 & 0x7FFFFFFE);
    if (v12)
    {
      v13 = (v7 + 8 * ((v5 >> 1) & 0x3FFFFFFF));
      do
      {
        v14 = *v13++;
        v6 *= v14;
        --v12;
      }

      while (v12);
    }
  }

  else
  {
    v6 = *(a1 + 12) * *(a1 + 8);
  }

  if (!v5 || !v6)
  {
LABEL_19:
    sub_100274CEC(a2);
    goto LABEL_20;
  }

  memset(v72, 0, sizeof(v72));
  memset(v71, 0, sizeof(v71));
  if (v5 < 1)
  {
    v15 = 0;
    v16 = *(a1 + 48);
  }

  else
  {
    v15 = *(*(a1 + 56) + 8 * v5 - 8);
    v16 = *(a1 + 48);
    if (v5 < 8)
    {
      v17 = 0;
LABEL_27:
      v26 = v5 - v17;
      v27 = v71 + v17;
      v28 = (v16 + 4 * v17);
      do
      {
        v29 = *v28++;
        *v27++ = v29;
        --v26;
      }

      while (v26);
      goto LABEL_29;
    }
  }

  v17 = v5 & 0xFFFFFFFFFFFFFFF8;
  v18 = v16 + 16;
  v19 = v72;
  v20 = v5 & 0xFFFFFFFFFFFFFFF8;
  do
  {
    v21 = *(v18 - 16);
    *&v22 = v21;
    *(&v22 + 1) = SDWORD1(v21);
    v23 = v22;
    *&v22 = SDWORD2(v21);
    *(&v22 + 1) = SHIDWORD(v21);
    v24 = v22;
    *&v22 = *v18;
    *(&v22 + 1) = HIDWORD(*v18);
    v25 = v22;
    *&v22 = *(v18 + 8);
    *(&v22 + 1) = HIDWORD(*v18);
    *(v19 - 2) = v23;
    *(v19 - 1) = v24;
    *v19 = v25;
    v19[1] = v22;
    v19 += 4;
    v18 += 32;
    v20 -= 8;
  }

  while (v20);
  if (v17 != v5)
  {
    goto LABEL_27;
  }

LABEL_29:
  *(v71 + v5 - 1) *= v15;
  if (v5 >= 1)
  {
    v30 = *(a1 + 40);
    v31 = *(a1 + 56);
    v32 = v70;
    v33 = v5;
    do
    {
      v34 = *v31++;
      *v32++ = v30 / v34;
      v30 %= v34;
      --v33;
    }

    while (v33);
  }

  v70[v5 - 1] *= v15;
  sub_10026BEEC(a2, v5, *(a1 + 48), *a1 & 0xFFF, -1, 0, 0);
  if (sub_100271148(a2) == 655360)
  {
    sub_100271FE8(a2, -1, &v58);
    v35 = v60;
    if (!v60)
    {
      v66[0] = 0;
      v66[1] = 0;
      v36 = sub_1002A80E0(v66, 5);
      *(v36 + 4) = 117;
      *v36 = 779383652;
      sub_1002A8980(-215, v66, "copyTo", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/umatrix.cpp", 842);
    }

    if (v60 != *(a1 + 32))
    {
      v37 = *(*(a1 + 32) + 8);
      if (v37 != *(v60 + 8))
      {
        if (atomic_fetch_add((v60 + 16), 0xFFFFFFFF) == 1)
        {
          v38 = v60;
          *&v60 = 0;
          (*(**(v38 + 8) + 32))(*(v38 + 8));
        }

        if (SDWORD1(v58) >= 1)
        {
          v39 = 0;
          v40 = v61;
          do
          {
            *(v40 + 4 * v39++) = 0;
          }

          while (v39 < SDWORD1(v58));
        }

        *&v60 = 0;
        if (v62 != &v63)
        {
          j__free(v62);
        }

        goto LABEL_44;
      }

      if (v58 > 0)
      {
        v47 = 0;
        v48 = *(&v60 + 1);
        v49 = v62;
        v50 = 8 * DWORD1(v58);
        do
        {
          v51 = *&v49[v47];
          *&v69[v47] = v48 / v51;
          v48 %= v51;
          v47 += 8;
        }

        while (v50 != v47);
      }

      *&v69[8 * *(a1 + 4) - 8] *= v15;
      (*(*v37 + 72))(v37);
      v35 = v60;
    }

    if (v35 && atomic_fetch_add((v35 + 16), 0xFFFFFFFF) == 1)
    {
      v55 = v60;
      *&v60 = 0;
      (*(**(v55 + 8) + 32))(*(v55 + 8));
    }

    if (SDWORD1(v58) >= 1)
    {
      v56 = 0;
      v57 = v61;
      do
      {
        *(v57 + 4 * v56++) = 0;
      }

      while (v56 < SDWORD1(v58));
    }

    *&v60 = 0;
    v54 = v62;
    if (v62 != &v63)
    {
      goto LABEL_62;
    }

    goto LABEL_20;
  }

LABEL_44:
  if (sub_100271148(a2) != 0x10000)
  {
    sub_1002703C0(a2, -1, &v58);
    goto LABEL_55;
  }

  v41 = *(a2 + 8);
  v42 = *v41;
  v43 = *(v41 + 16);
  v58 = *v41;
  v59 = v43;
  v60 = *(v41 + 32);
  v44 = *(v41 + 56);
  v61 = *(v41 + 48);
  v62 = v44;
  v63 = &v58 + 8;
  v64 = v65;
  v65[0] = 0;
  v65[1] = 0;
  if (!v44)
  {
    if (SDWORD1(v42) <= 2)
    {
      goto LABEL_47;
    }

LABEL_54:
    DWORD1(v58) = 0;
    sub_100269B58(&v58, v41);
    goto LABEL_55;
  }

  atomic_fetch_add(v44 + 5, 1u);
  if (*(v41 + 4) > 2)
  {
    goto LABEL_54;
  }

LABEL_47:
  v45 = *(v41 + 72);
  v46 = v64;
  *v64 = *v45;
  v46[1] = v45[1];
LABEL_55:
  (*(**(*(a1 + 32) + 8) + 56))(*(*(a1 + 32) + 8), *(a1 + 32), v59, *(a1 + 4), v71, v70, *(a1 + 56), v64);
  if (v62 && atomic_fetch_add(v62 + 5, 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(&v58);
  }

  v62 = 0;
  v59 = 0u;
  v60 = 0u;
  if (SDWORD1(v58) >= 1)
  {
    v52 = 0;
    v53 = v63;
    do
    {
      *&v53[4 * v52++] = 0;
    }

    while (v52 < SDWORD1(v58));
  }

  v54 = v64;
  if (v64 != v65)
  {
LABEL_62:
    j__free(v54);
  }

LABEL_20:
  if (v68)
  {
    sub_1002ACC1C(v67);
  }
}

void sub_1002B1D7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  sub_1002B00D8(va);
  sub_1001D8BF4(va1);
  _Unwind_Resume(a1);
}

void sub_1002B1DBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_1001D8BF4(va);
  _Unwind_Resume(a1);
}

void sub_1002B1DD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_1002A8124(&STACK[0x290]);
  sub_1001D8BF4(va);
  _Unwind_Resume(a1);
}

void sub_1002B1DE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_1001D8BF4(va);
  _Unwind_Resume(a1);
}

void sub_1002B1E00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  sub_100006D14(va);
  sub_1001D8BF4(va1);
  _Unwind_Resume(a1);
}

void sub_1002B1E1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_1001D8BF4(va);
  _Unwind_Resume(a1);
}

void sub_1002B1E30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_1001D8BF4(va);
  _Unwind_Resume(a1);
}

void sub_1002B1E44(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_100008E3C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1002B1E74@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v4 = *(result + 32);
  if (v4)
  {
    v6 = result;
    v14 = *(result + 32);
    sub_1002A93EC(&unk_1004BE3D0 + v4 % 0x1F);
    if (!atomic_fetch_add((*(v6 + 32) + 20), 1u))
    {
      (*(**(*(v6 + 32) + 8) + 40))(*(*(v6 + 32) + 8), *(v6 + 32), a2 | 0x3000000u);
    }

    v7 = *(v6 + 32);
    v8 = *(v7 + 24);
    if (v8)
    {
      sub_100267C58(a3, *(v6 + 4), *(v6 + 48), *v6 & 0xFFF, v8 + *(v6 + 40), *(v6 + 56));
      *a3 = *v6;
      v9 = *(v6 + 32);
      v10 = *(v6 + 40);
      *(a3 + 56) = v9;
      v11 = *(v9 + 24);
      *(a3 + 16) = v11 + v10;
      *(a3 + 24) = v11;
      v12 = v11 + *(v9 + 40);
      *(a3 + 32) = v12;
      *(a3 + 40) = v12;
    }

    else
    {
      atomic_fetch_add((v7 + 20), 0xFFFFFFFF);
      if (!*(*(v6 + 32) + 24))
      {
        v13[0] = 0;
        v13[1] = 0;
        qmemcpy(sub_1002A80E0(v13, 55), "u->data != 0 && Error mapping of UMat to host memory.", 55);
        sub_1002A8980(-215, v13, "getMat", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/umatrix.cpp", 778);
      }

      *a3 = 1124007936;
      *(a3 + 4) = 0u;
      *(a3 + 20) = 0u;
      *(a3 + 36) = 0u;
      *(a3 + 48) = 0u;
      *(a3 + 80) = 0;
      *(a3 + 64) = a3 + 8;
      *(a3 + 72) = a3 + 80;
      *(a3 + 88) = 0;
    }

    return sub_1002A93F4(&unk_1004BE3D0 + v14 % 0x1F);
  }

  else
  {
    *a3 = 1124007936;
    *(a3 + 4) = 0u;
    *(a3 + 20) = 0u;
    *(a3 + 36) = 0u;
    *(a3 + 48) = 0u;
    *(a3 + 80) = 0;
    *(a3 + 64) = a3 + 8;
    *(a3 + 72) = a3 + 80;
    *(a3 + 88) = 0;
  }

  return result;
}

void sub_1002B20A0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  sub_1002A8124(va);
  sub_1002B20D0(va1);
  _Unwind_Resume(a1);
}

void *sub_1002B20D0(void *a1)
{
  v2 = (*a1 * 0x842108421084211uLL) >> 64;
  sub_1002A93F4(&unk_1004BE3D0 + *a1 - 31 * ((v2 + ((*a1 - v2) >> 1)) >> 4));
  return a1;
}

uint64_t sub_1002B2134(uint64_t result, unint64_t *a2)
{
  v2 = *(result + 4);
  if (v2 >= 1)
  {
    v3 = *(result + 40);
    v4 = *(result + 56);
    do
    {
      v5 = *v4++;
      *a2++ = v3 / v5;
      v3 %= v5;
      --v2;
    }

    while (v2);
  }

  return result;
}

void sub_1002B2164(uint64_t a1, int *a2, int a3, double a4, double a5)
{
  sub_1002ACE7C(v48, &off_100475810);
  v10 = fabs(a4 + -1.0) >= 2.22044605e-16;
  v11 = fabs(a5) >= 2.22044605e-16 || v10;
  v12 = *a1;
  if ((a3 & 0x80000000) == 0)
  {
    v13 = *a1 & 0xFF8 | a3 & 7;
    if (((v13 ^ v12) & 7) != 0)
    {
      v14 = 1;
    }

    else
    {
      v14 = v11;
    }

    if (v14)
    {
      goto LABEL_17;
    }

LABEL_15:
    sub_1002B16DC(a1, a2);
    goto LABEL_40;
  }

  if (!sub_100275364(a2))
  {
    v13 = v12 & 0xFFF;
    if (v11)
    {
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  v13 = sub_100271A88(a2, -1);
  if (((v13 ^ v12) & 7) != 0)
  {
    v15 = 1;
  }

  else
  {
    v15 = v11;
  }

  if ((v15 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_17:
  v16 = *a1;
  v40 = *a1;
  v41 = *(a1 + 16);
  v42 = *(a1 + 24);
  v17 = *(a1 + 32);
  v18 = *(a1 + 40);
  v43 = v17;
  v44 = v18;
  v45 = &v40 + 8;
  v46 = v47;
  v47[0] = 0;
  v47[1] = 0;
  if (!v17)
  {
    v19 = DWORD1(v16);
    if (SDWORD1(v16) <= 2)
    {
      goto LABEL_19;
    }

LABEL_21:
    DWORD1(v40) = 0;
    sub_1002AF5B8(&v40, v19, 0, 0, 0);
    if (SDWORD1(v40) >= 1)
    {
      v22 = 0;
      v23 = *(a1 + 48);
      v24 = *(a1 + 56);
      v25 = v45;
      v26 = v46;
      do
      {
        *&v25[4 * v22] = *(v23 + 4 * v22);
        v26[v22] = *(v24 + 8 * v22);
        ++v22;
      }

      while (v22 < SDWORD1(v40));
    }

    goto LABEL_24;
  }

  atomic_fetch_add((v17 + 16), 1u);
  v19 = *(a1 + 4);
  if (v19 > 2)
  {
    goto LABEL_21;
  }

LABEL_19:
  v20 = *(a1 + 56);
  v21 = v46;
  *v46 = *v20;
  v21[1] = v20[1];
LABEL_24:
  sub_1002B1E74(a1, 0x1000000, &v32);
  sub_10020EF14(&v32, a2, v13, a4, a5);
  if (v36 && atomic_fetch_add((v36 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(&v32);
  }

  v36 = 0;
  v34 = 0u;
  v35 = 0u;
  if (v33 >= 1)
  {
    v27 = 0;
    v28 = v37;
    do
    {
      *(v28 + 4 * v27++) = 0;
    }

    while (v27 < v33);
  }

  if (v38 != &v39)
  {
    j__free(v38);
  }

  if (v43 && atomic_fetch_add((v43 + 16), 0xFFFFFFFF) == 1)
  {
    v29 = v43;
    v43 = 0;
    (*(**(v29 + 8) + 32))(*(v29 + 8));
  }

  if (SDWORD1(v40) >= 1)
  {
    v30 = 0;
    v31 = v45;
    do
    {
      *&v31[4 * v30++] = 0;
    }

    while (v30 < SDWORD1(v40));
  }

  v43 = 0;
  if (v46 != v47)
  {
    j__free(v46);
  }

LABEL_40:
  if (v49)
  {
    sub_1002ACC1C(v48);
  }
}

void sub_1002B247C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  sub_100006D14(&a9);
  sub_1002B00D8(&a21);
  sub_1001D8BF4(v21 - 96);
  _Unwind_Resume(a1);
}

uint64_t sub_1002B24D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1002ACE7C(v18, &off_100475830);
  if (sub_1002743D4(a3))
  {
    v6 = 0x2000000;
  }

  else
  {
    v6 = 50331648;
  }

  sub_1002B1E74(a1, v6, v10);
  sub_10022CDA0(v10, a2, a3);
  if (v14 && atomic_fetch_add((v14 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v10);
  }

  v14 = 0;
  v12 = 0u;
  v13 = 0u;
  if (v11 >= 1)
  {
    v7 = 0;
    v8 = v15;
    do
    {
      *(v8 + 4 * v7++) = 0;
    }

    while (v7 < v11);
  }

  if (v16 != &v17)
  {
    j__free(v16);
  }

  if (v19)
  {
    sub_1002ACC1C(v18);
  }

  return a1;
}

void sub_1002B25DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_100006D14(&a9);
  sub_1001D8BF4(v9 - 48);
  _Unwind_Resume(a1);
}

pthread_mutex_t **sub_1002B2620()
{
  sub_1002A9380(&qword_1004BE4C0);
  sub_1002A9380(&qword_1004BE4B8);
  sub_1002A9380(&qword_1004BE4B0);
  sub_1002A9380(&qword_1004BE4A8);
  sub_1002A9380(&qword_1004BE4A0);
  sub_1002A9380(&qword_1004BE498);
  sub_1002A9380(&qword_1004BE490);
  sub_1002A9380(&qword_1004BE488);
  sub_1002A9380(&qword_1004BE480);
  sub_1002A9380(&qword_1004BE478);
  sub_1002A9380(&qword_1004BE470);
  sub_1002A9380(&qword_1004BE468);
  sub_1002A9380(&qword_1004BE460);
  sub_1002A9380(&qword_1004BE458);
  sub_1002A9380(&qword_1004BE450);
  sub_1002A9380(&qword_1004BE448);
  sub_1002A9380(&qword_1004BE440);
  sub_1002A9380(&qword_1004BE438);
  sub_1002A9380(&qword_1004BE430);
  sub_1002A9380(&qword_1004BE428);
  sub_1002A9380(&qword_1004BE420);
  sub_1002A9380(&qword_1004BE418);
  sub_1002A9380(&qword_1004BE410);
  sub_1002A9380(&qword_1004BE408);
  sub_1002A9380(&qword_1004BE400);
  sub_1002A9380(&qword_1004BE3F8);
  sub_1002A9380(&qword_1004BE3F0);
  sub_1002A9380(&qword_1004BE3E8);
  sub_1002A9380(&qword_1004BE3E0);
  sub_1002A9380(&qword_1004BE3D8);

  return sub_1002A9380(&qword_1004BE3D0);
}

void sub_1002B2984(_Unwind_Exception *a1)
{
  do
  {
    sub_1002A9380(--v2);
  }

  while (v2 != v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1002B29AC(uint64_t result)
{
  if ((*(result + 8) & 1) == 0)
  {
    operator new[]();
  }

  return result;
}

double sub_1002B2A0C(uint64_t a1)
{
  *a1 = off_100475860;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *&result = 0x8000;
  *(a1 + 48) = 0x8000;
  *(a1 + 56) = 0;
  *(a1 + 8) = 0;
  return result;
}

uint64_t sub_1002B2A48(uint64_t a1)
{
  *a1 = off_100475860;
  v2 = *(a1 + 40);
  if (v2)
  {
    fclose(v2);
    *(a1 + 40) = 0;
  }

  *(a1 + 56) = 0;
  if ((*(a1 + 8) & 1) == 0)
  {
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
  }

  (*(*a1 + 48))(a1);
  return a1;
}

void sub_1002B2AD8(uint64_t a1)
{
  *a1 = off_100475860;
  v2 = *(a1 + 40);
  if (v2)
  {
    fclose(v2);
    *(a1 + 40) = 0;
  }

  *(a1 + 56) = 0;
  if ((*(a1 + 8) & 1) == 0)
  {
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
  }

  (*(*a1 + 48))(a1);

  operator delete();
}

int64_t sub_1002B2B88(int64_t result)
{
  v1 = *(result + 16);
  v2 = *(result + 52) + (*(result + 32) - v1);
  v3 = *(result + 40);
  if (v3)
  {
    v4 = v2 / *(result + 48) * *(result + 48);
    *(result + 32) = v1 + v2 % *(result + 48);
    *(result + 52) = v4;
    v5 = result;
    fseek(v3, v4, 0);
    result = fread(*(v5 + 16), 1uLL, *(v5 + 48), *(v5 + 40));
    v6 = *(v5 + 16);
    *(v5 + 24) = v6 + result;
    *(v5 + 32) = v6;
    if (result <= 0)
    {
      exception = __cxa_allocate_exception(0x58uLL);
      sub_1001FA81C(v11, "Unexpected end of input stream");
      sub_1001FA81C(v10, "readBlock");
      sub_1001FA81C(v9, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgcodecs/src/bitstrm.cpp");
      sub_1002A833C(exception, -2, v11, v10, v9, 110);
      *exception = &off_100475AD8;
    }
  }

  else
  {
    *(result + 32) = v1 + v2;
    *(result + 52) = 0;
    if ((v1 + v2) >= *(result + 24))
    {
      v8 = __cxa_allocate_exception(0x58uLL);
      sub_1001FA81C(v11, "Unexpected end of input stream");
      sub_1001FA81C(v10, "readBlock");
      sub_1001FA81C(v9, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgcodecs/src/bitstrm.cpp");
      sub_1002A833C(v8, -2, v11, v10, v9, 101);
      *v8 = &off_100475AD8;
    }
  }

  return result;
}

void sub_1002B2D80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  sub_1002A8124(&a9);
  sub_1002A8124(&a11);
  sub_1002A8124(&a13);
  if (v14)
  {
    __cxa_free_exception(v13);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1002B2E24(uint64_t result, int a2)
{
  v2 = *(result + 40);
  if (v2)
  {
    LODWORD(v2) = a2 / *(result + 48) * *(result + 48);
    a2 %= *(result + 48);
  }

  *(result + 32) = *(result + 16) + a2;
  *(result + 52) = v2;
  return result;
}

FILE *sub_1002B2E6C(uint64_t a1, const char **a2)
{
  (*(*a1 + 32))(a1);
  (*(*a1 + 56))(a1);
  if (*a2)
  {
    v4 = *a2;
  }

  else
  {
    v4 = "";
  }

  result = fopen(v4, "rb");
  *(a1 + 40) = result;
  if (result)
  {
    *(a1 + 56) = 1;
    *(a1 + 32) = *(a1 + 16);
    *(a1 + 52) = 0;
    (*(*a1 + 40))(a1);
    return (*(a1 + 40) != 0);
  }

  return result;
}

uint64_t sub_1002B2F4C(uint64_t a1, uint64_t a2)
{
  (*(*a1 + 32))(a1);
  v4 = *(a2 + 16);
  if (!v4)
  {
    return 0;
  }

  v5 = *(a2 + 4);
  if (v5 >= 3)
  {
    v8 = *(a2 + 64);
    v9 = (v8 + 4);
    v10 = 1;
    v11 = v5 & 0x7FFFFFFE;
    v12 = 1;
    do
    {
      v10 *= *(v9 - 1);
      v12 *= *v9;
      v9 += 2;
      v11 -= 2;
    }

    while (v11);
    v6 = v12 * v10;
    v13 = v5 - (v5 & 0x7FFFFFFE);
    if (v13)
    {
      v14 = (v8 + 8 * ((v5 >> 1) & 0x3FFFFFFF));
      do
      {
        v15 = *v14++;
        v6 *= v15;
        --v13;
      }

      while (v13);
    }
  }

  else
  {
    v6 = *(a2 + 12) * *(a2 + 8);
  }

  result = 0;
  if (v5 && v6)
  {
    if ((*(a2 + 1) & 0x40) == 0)
    {
      v19[0] = 0;
      v19[1] = 0;
      v16 = sub_1002A80E0(v19, 18);
      *(v16 + 16) = 10536;
      *v16 = *"buf.isContinuous()";
      sub_1002A8980(-215, v19, "open", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgcodecs/src/bitstrm.cpp", 134);
    }

    *(a1 + 16) = v4;
    v17 = *(a2 + 8) * *(a2 + 12);
    if (v5 < 1)
    {
      v18 = 0;
    }

    else
    {
      v18 = *(*(a2 + 72) + 8 * v5 - 8);
    }

    *(a1 + 8) = 0;
    result = 1;
    *(a1 + 56) = 1;
    *(a1 + 24) = v4 + v18 * v17;
    *(a1 + 32) = v4;
    *(a1 + 52) = 0;
  }

  return result;
}

FILE *sub_1002B30EC(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    result = fclose(result);
    *(a1 + 40) = 0;
  }

  *(a1 + 56) = 0;
  if ((*(a1 + 8) & 1) == 0)
  {
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
  }

  return result;
}

uint64_t sub_1002B3130(uint64_t result)
{
  if (*(result + 8) == 1 && *(result + 16))
  {
    operator delete[]();
  }

  *(result + 8) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 16) = 0;
  return result;
}

uint64_t sub_1002B31A0(uint64_t a1)
{
  *a1 = off_100475860;
  v2 = *(a1 + 40);
  if (v2)
  {
    fclose(v2);
    *(a1 + 40) = 0;
  }

  *(a1 + 56) = 0;
  if ((*(a1 + 8) & 1) == 0)
  {
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
  }

  (*(*a1 + 48))(a1);
  return a1;
}

void sub_1002B3230(uint64_t a1)
{
  *a1 = off_100475860;
  v2 = *(a1 + 40);
  if (v2)
  {
    fclose(v2);
    *(a1 + 40) = 0;
  }

  *(a1 + 56) = 0;
  if ((*(a1 + 8) & 1) == 0)
  {
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
  }

  (*(*a1 + 48))(a1);

  operator delete();
}

uint64_t sub_1002B32E0(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  if (v3 >= v2)
  {
    (*(*a1 + 40))(a1);
    v2 = a1[3];
    v3 = a1[4];
  }

  if (v3 >= v2)
  {
    v5[0] = 0;
    v5[1] = 0;
    qmemcpy(sub_1002A80E0(v5, 15), "current < m_end", 15);
    sub_1002A8980(-215, v5, "getByte", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgcodecs/src/bitstrm.cpp", 212);
  }

  result = *v3;
  a1[4] = v3 + 1;
  return result;
}

uint64_t sub_1002B33BC(uint64_t a1, char *__dst, int a3)
{
  if (a3 < 1)
  {
    return 0;
  }

  v3 = a3;
  LODWORD(v6) = 0;
  v7 = *(a1 + 32);
  do
  {
    v10 = *(a1 + 24) - v7;
    if (v10 <= 0)
    {
      do
      {
        (*(*a1 + 40))(a1);
        v7 = *(a1 + 32);
        v10 = *(a1 + 24) - v7;
      }

      while (v10 < 1);
    }

    if (v3 >= v10)
    {
      v8 = v10;
    }

    else
    {
      v8 = v3;
    }

    memcpy(__dst, v7, v8);
    v7 = (*(a1 + 32) + v8);
    *(a1 + 32) = v7;
    __dst += v8;
    v6 = (v8 + v6);
    v9 = __OFSUB__(v3, v8);
    v3 -= v8;
  }

  while (!((v3 < 0) ^ v9 | (v3 == 0)));
  return v6;
}

uint64_t sub_1002B3490(uint64_t a1)
{
  *a1 = off_100475860;
  v2 = *(a1 + 40);
  if (v2)
  {
    fclose(v2);
    *(a1 + 40) = 0;
  }

  *(a1 + 56) = 0;
  if ((*(a1 + 8) & 1) == 0)
  {
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
  }

  (*(*a1 + 48))(a1);
  return a1;
}

void sub_1002B3520(uint64_t a1)
{
  *a1 = off_100475860;
  v2 = *(a1 + 40);
  if (v2)
  {
    fclose(v2);
    *(a1 + 40) = 0;
  }

  *(a1 + 56) = 0;
  if ((*(a1 + 8) & 1) == 0)
  {
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
  }

  (*(*a1 + 48))(a1);

  operator delete();
}

uint64_t sub_1002B35D0(void *a1)
{
  v1 = a1[4];
  if (v1 + 1 >= a1[3])
  {
    v5 = sub_1002B32E0(a1);
    return v5 | (sub_1002B32E0(a1) << 8);
  }

  else
  {
    v2 = *v1;
    a1[4] = v1 + 1;
    return v2;
  }
}

uint64_t sub_1002B3628(void *a1)
{
  v1 = a1[4];
  if (v1 + 3 >= a1[3])
  {
    v5 = sub_1002B32E0(a1);
    v6 = v5 | (sub_1002B32E0(a1) << 8);
    v7 = v6 | (sub_1002B32E0(a1) << 16);
    return v7 | (sub_1002B32E0(a1) << 24);
  }

  else
  {
    v2 = *v1;
    a1[4] = v1 + 1;
    return v2;
  }
}

uint64_t sub_1002B3698(void *a1)
{
  v1 = a1[4];
  if (v1 + 3 >= a1[3])
  {
    v5 = sub_1002B32E0(a1);
    v6 = (sub_1002B32E0(a1) << 16) | (v5 << 24);
    v7 = v6 | (sub_1002B32E0(a1) << 8);
    return v7 | sub_1002B32E0(a1);
  }

  else
  {
    v2 = *v1;
    a1[4] = v1 + 1;
    return bswap32(v2);
  }
}

double sub_1002B3710(uint64_t a1)
{
  *(a1 + 40) = 0;
  *a1 = off_1004758C8;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0u;
  *&result = 0x8000;
  *(a1 + 32) = 0x8000;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  return result;
}

uint64_t sub_1002B3754(uint64_t a1)
{
  *a1 = off_1004758C8;
  if (*(a1 + 48) == 1)
  {
    sub_1002B390C(a1);
  }

  v2 = *(a1 + 40);
  if (v2)
  {
    fclose(v2);
    *(a1 + 40) = 0;
  }

  *(a1 + 56) = 0;
  *(a1 + 48) = 0;
  (*(*a1 + 48))(a1);
  return a1;
}

void sub_1002B37EC(uint64_t a1)
{
  *a1 = off_1004758C8;
  if (*(a1 + 48) == 1)
  {
    sub_1002B390C(a1);
  }

  v2 = *(a1 + 40);
  if (v2)
  {
    fclose(v2);
    *(a1 + 40) = 0;
  }

  *(a1 + 56) = 0;
  *(a1 + 48) = 0;
  (*(*a1 + 48))(a1);

  operator delete();
}

uint64_t sub_1002B38A4(uint64_t a1)
{
  result = *(a1 + 8);
  if (!result)
  {
    operator new[]();
  }

  *(a1 + 16) = result + *(a1 + 32);
  *(a1 + 24) = result;
  return result;
}

const void *sub_1002B390C(uint64_t a1)
{
  v2 = *(a1 + 24);
  result = *(a1 + 8);
  v4 = v2 - result;
  if (v2 != result)
  {
    v5 = *(a1 + 56);
    if (v5)
    {
      v6 = v5[1];
      v7 = &v6[-*v5];
      v8 = &v7[v4];
      if (v7 >= v8)
      {
        if (v7 > v8)
        {
          v5[1] = *v5 + v8;
        }
      }

      else
      {
        v9 = v5[2];
        if (v9 - v6 < v4)
        {
          if ((v8 & 0x8000000000000000) == 0)
          {
            operator new();
          }

          sub_10000918C();
        }

        v10 = &v6[v4];
        bzero(v6, v4);
        v5[1] = v10;
      }

      result = memcpy(&v7[**(a1 + 56)], *(a1 + 8), v4);
    }

    else
    {
      result = fwrite(result, 1uLL, v4, *(a1 + 40));
    }

    *(a1 + 24) = *(a1 + 8);
    *(a1 + 36) += v4;
  }

  return result;
}

BOOL sub_1002B3A90(uint64_t a1, const char **a2)
{
  (*(*a1 + 32))(a1);
  (*(*a1 + 56))(a1);
  if (*a2)
  {
    v4 = *a2;
  }

  else
  {
    v4 = "";
  }

  v5 = fopen(v4, "wb");
  *(a1 + 40) = v5;
  if (v5)
  {
    *(a1 + 48) = 1;
    *(a1 + 36) = 0;
    *(a1 + 24) = *(a1 + 8);
  }

  return v5 != 0;
}

uint64_t sub_1002B3B44(uint64_t a1, uint64_t a2)
{
  (*(*a1 + 32))(a1);
  (*(*a1 + 56))(a1);
  *(a1 + 56) = a2;
  *(a1 + 48) = 1;
  *(a1 + 36) = 0;
  *(a1 + 24) = *(a1 + 8);
  return 1;
}

FILE *sub_1002B3BD0(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    (*(*a1 + 40))(a1);
  }

  result = *(a1 + 40);
  if (result)
  {
    result = fclose(result);
    *(a1 + 40) = 0;
  }

  *(a1 + 56) = 0;
  *(a1 + 48) = 0;
  return result;
}

uint64_t sub_1002B3C3C(uint64_t a1)
{
  v2 = (a1 + 8);
  result = *(a1 + 8);
  if (result)
  {
    operator delete[]();
  }

  *v2 = 0;
  v2[1] = 0;
  v2[2] = 0;
  return result;
}

uint64_t sub_1002B3C80(uint64_t a1)
{
  *a1 = off_1004758C8;
  if (*(a1 + 48) == 1)
  {
    sub_1002B390C(a1);
  }

  v2 = *(a1 + 40);
  if (v2)
  {
    fclose(v2);
    *(a1 + 40) = 0;
  }

  *(a1 + 56) = 0;
  *(a1 + 48) = 0;
  (*(*a1 + 48))(a1);
  return a1;
}

void sub_1002B3D18(uint64_t a1)
{
  *a1 = off_1004758C8;
  if (*(a1 + 48) == 1)
  {
    sub_1002B390C(a1);
  }

  v2 = *(a1 + 40);
  if (v2)
  {
    fclose(v2);
    *(a1 + 40) = 0;
  }

  *(a1 + 56) = 0;
  *(a1 + 48) = 0;
  (*(*a1 + 48))(a1);

  operator delete();
}

void *sub_1002B3DD0(void *result, char *__src, int a3)
{
  if (a3)
  {
    v3 = a3;
    v5 = result;
    do
    {
      v6 = v5[2];
      result = v5[3];
      if (v3 >= v6 - result)
      {
        v7 = (v6 - result);
      }

      else
      {
        v7 = v3;
      }

      if (v7 >= 1)
      {
        memcpy(result, __src, v7);
        v6 = v5[2];
        result = (v5[3] + v7);
        v5[3] = result;
        __src += v7;
        v3 -= v7;
      }

      if (result == v6)
      {
        result = (*(*v5 + 40))(v5);
      }
    }

    while (v3);
  }

  return result;
}

void *sub_1002B3E7C(void *result, __int16 a2)
{
  v2 = result[3];
  if (v2 + 1 < result[2])
  {
    *v2 = a2;
    v3 = v2 + 1;
    result[3] = v3;
    if (v3 != result[2])
    {
      return result;
    }

    goto LABEL_7;
  }

  result[3] = v2 + 1;
  *v2 = a2;
  v4 = result[3];
  if (v4 >= result[2])
  {
    v5 = result;
    v6 = HIBYTE(a2);
    (*(*result + 40))();
    HIBYTE(a2) = v6;
    result = v5;
    v4 = v5[3];
  }

  result[3] = v4 + 1;
  *v4 = HIBYTE(a2);
  if (result[3] >= result[2])
  {
LABEL_7:
    v7 = *(*result + 40);

    return v7();
  }

  return result;
}

void *sub_1002B3F60(void *result, int a2)
{
  v3 = result;
  v4 = result[3];
  if (v4 + 3 < result[2])
  {
    *v4 = a2;
    v5 = v4 + 1;
    result[3] = v5;
    if (v5 != result[2])
    {
      return result;
    }

    goto LABEL_11;
  }

  result[3] = v4 + 1;
  *v4 = a2;
  v6 = result[3];
  if (v6 >= result[2])
  {
    result = (*(*result + 40))(result);
    v6 = v3[3];
  }

  v3[3] = v6 + 1;
  *v6 = BYTE1(a2);
  v7 = v3[3];
  if (v7 >= v3[2])
  {
    result = (*(*v3 + 40))(v3);
    v7 = v3[3];
  }

  v3[3] = v7 + 1;
  *v7 = BYTE2(a2);
  v8 = v3[3];
  if (v8 >= v3[2])
  {
    result = (*(*v3 + 40))(v3);
    v8 = v3[3];
  }

  v3[3] = v8 + 1;
  *v8 = HIBYTE(a2);
  if (v3[3] >= v3[2])
  {
LABEL_11:
    v9 = *(*v3 + 40);

    return v9(v3);
  }

  return result;
}

uint64_t sub_1002B40D8(uint64_t a1)
{
  *a1 = off_1004758C8;
  if (*(a1 + 48) == 1)
  {
    sub_1002B390C(a1);
  }

  v2 = *(a1 + 40);
  if (v2)
  {
    fclose(v2);
    *(a1 + 40) = 0;
  }

  *(a1 + 56) = 0;
  *(a1 + 48) = 0;
  (*(*a1 + 48))(a1);
  return a1;
}

void sub_1002B4170(uint64_t a1)
{
  *a1 = off_1004758C8;
  if (*(a1 + 48) == 1)
  {
    sub_1002B390C(a1);
  }

  v2 = *(a1 + 40);
  if (v2)
  {
    fclose(v2);
    *(a1 + 40) = 0;
  }

  *(a1 + 56) = 0;
  *(a1 + 48) = 0;
  (*(*a1 + 48))(a1);

  operator delete();
}

void *sub_1002B4228(void *result, unsigned int a2)
{
  v3 = result;
  v4 = result[3];
  if (v4 + 3 < result[2])
  {
    *v4 = bswap32(a2);
    v5 = v4 + 1;
    result[3] = v5;
    if (v5 != result[2])
    {
      return result;
    }

    goto LABEL_11;
  }

  result[3] = v4 + 1;
  *v4 = HIBYTE(a2);
  v6 = result[3];
  if (v6 >= result[2])
  {
    result = (*(*result + 40))(result);
    v6 = v3[3];
  }

  v3[3] = v6 + 1;
  *v6 = BYTE2(a2);
  v7 = v3[3];
  if (v7 >= v3[2])
  {
    result = (*(*v3 + 40))(v3);
    v7 = v3[3];
  }

  v3[3] = v7 + 1;
  *v7 = BYTE1(a2);
  v8 = v3[3];
  if (v8 >= v3[2])
  {
    result = (*(*v3 + 40))(v3);
    v8 = v3[3];
  }

  v3[3] = v8 + 1;
  *v8 = a2;
  if (v3[3] >= v3[2])
  {
LABEL_11:
    v9 = *(*v3 + 40);

    return v9(v3);
  }

  return result;
}

void sub_1002B43A4(uint64_t a1)
{
  sub_1002A85B8(a1);

  operator delete();
}

double sub_1002B43DC(uint64_t a1)
{
  *a1 = off_100475B00;
  *(a1 + 8) = 0;
  result = 0.0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 1124007936;
  *(a1 + 60) = 0u;
  *(a1 + 76) = 0u;
  *(a1 + 92) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 136) = 0;
  *(a1 + 120) = a1 + 64;
  *(a1 + 128) = a1 + 136;
  *(a1 + 144) = 0;
  *(a1 + 16) = 0x1FFFFFFFFLL;
  *(a1 + 152) = 0;
  return result;
}

uint64_t sub_1002B4440(uint64_t a1, uint64_t *a2)
{
  v3 = (a1 + 24);
  if (v3 != a2)
  {
    sub_1002A8124(v3);
    v5 = *a2;
    if (*a2)
    {
      atomic_fetch_add((v5 - 4), 1u);
      v5 = *a2;
    }

    v6 = a2[1];
    *(a1 + 24) = v5;
    *(a1 + 32) = v6;
  }

  v7 = *(a1 + 112);
  if (v7 && atomic_fetch_add((v7 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(a1 + 56);
  }

  *(a1 + 112) = 0;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  if (*(a1 + 60) >= 1)
  {
    v8 = 0;
    v9 = *(a1 + 120);
    do
    {
      *(v9 + 4 * v8++) = 0;
    }

    while (v8 < *(a1 + 60));
  }

  return 1;
}

uint64_t sub_1002B44F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 152);
  if (v2 == 1)
  {
    v18 = 0;
    v19 = 0;
    v5 = (a1 + 24);
    if (&v18 != v5)
    {
      sub_1002A8124(v5);
      v6 = v18;
      if (v18)
      {
        atomic_fetch_add((v18 - 4), 1u);
        v6 = v18;
      }

      v7 = v19;
      *(a1 + 24) = v6;
      *(a1 + 32) = v7;
    }

    sub_1002A8124(&v18);
    v8 = (a1 + 56);
    if (a1 + 56 != a2)
    {
      v9 = *(a2 + 56);
      if (v9)
      {
        atomic_fetch_add((v9 + 20), 1u);
      }

      v10 = *(a1 + 112);
      if (v10 && atomic_fetch_add((v10 + 20), 0xFFFFFFFF) == 1)
      {
        sub_100269BC8(a1 + 56);
      }

      *(a1 + 112) = 0;
      *(a1 + 72) = 0u;
      *(a1 + 88) = 0u;
      if (*(a1 + 60) <= 0)
      {
        *v8 = *a2;
        v14 = *(a2 + 4);
        if (v14 <= 2)
        {
LABEL_17:
          *(a1 + 60) = v14;
          *(a1 + 64) = *(a2 + 8);
          v15 = *(a2 + 72);
          v16 = *(a1 + 128);
          *v16 = *v15;
          v16[1] = v15[1];
LABEL_20:
          *(a1 + 72) = *(a2 + 16);
          *(a1 + 88) = *(a2 + 32);
          *(a1 + 104) = *(a2 + 48);
          return v2;
        }
      }

      else
      {
        v11 = 0;
        v12 = *(a1 + 120);
        do
        {
          *(v12 + 4 * v11++) = 0;
          v13 = *(a1 + 60);
        }

        while (v11 < v13);
        *v8 = *a2;
        if (v13 <= 2)
        {
          v14 = *(a2 + 4);
          if (v14 <= 2)
          {
            goto LABEL_17;
          }
        }
      }

      sub_100269B58(a1 + 56, a2);
      goto LABEL_20;
    }
  }

  return v2;
}

BOOL sub_1002B4694(void *a1, uint64_t a2)
{
  v4 = (*(*a1 + 72))(a1);
  if (*(a2 + 8) < v4)
  {
    return 0;
  }

  v6 = v4;
  if (*a2)
  {
    v7 = *a2;
  }

  else
  {
    v7 = "";
  }

  if (a1[5])
  {
    v8 = a1[5];
  }

  else
  {
    v8 = "";
  }

  return memcmp(v7, v8, v6) == 0;
}

uint64_t sub_1002B4728(uint64_t a1, _DWORD *a2)
{
  v2 = *(a1 + 20);
  *(a1 + 20) = *a2;
  return v2;
}

double sub_1002B4744(uint64_t a1)
{
  *a1 = off_100475B70;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 33) = 0u;
  return result;
}

uint64_t sub_1002B4784@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 8);
  v3 = *(result + 16);
  *a2 = v2;
  a2[1] = v3;
  if (v2)
  {
    atomic_fetch_add((v2 - 4), 1u);
  }

  return result;
}

uint64_t sub_1002B47A0(void *a1, uint64_t *a2)
{
  v3 = a1 + 3;
  if (v3 != a2)
  {
    sub_1002A8124(v3);
    v5 = *a2;
    if (*a2)
    {
      atomic_fetch_add((v5 - 4), 1u);
      v5 = *a2;
    }

    v6 = a2[1];
    a1[3] = v5;
    a1[4] = v6;
  }

  a1[5] = 0;
  return 1;
}

uint64_t sub_1002B47FC(uint64_t a1, void *a2)
{
  v2 = *(a1 + 48);
  if (v2 == 1)
  {
    *(a1 + 40) = a2;
    a2[1] = *a2;
    v8 = 0;
    v9 = 0;
    v4 = (a1 + 24);
    if (&v8 != v4)
    {
      sub_1002A8124(v4);
      v5 = v8;
      if (v8)
      {
        atomic_fetch_add((v8 - 4), 1u);
        v5 = v8;
      }

      v6 = v9;
      *(a1 + 24) = v5;
      *(a1 + 32) = v6;
    }

    sub_1002A8124(&v8);
  }

  return v2;
}

uint64_t sub_1002B48A4(uint64_t result)
{
  v1 = *(result + 64);
  if (v1)
  {
    v2 = result;
    __s[0] = 0;
    __s[1] = 0;
    sub_1002A80E0(__s, v1 + 25);
    v3 = __s[0];
    *__s[0] = *"Raw image encoder error: ";
    *(v3 + 9) = *" encoder error: ";
    v4 = *(v2 + 64);
    if (v4)
    {
      memcpy(v3 + 25, *(v2 + 56), v4);
    }

    v8[0] = 0;
    v8[1] = 0;
    v5 = strlen(v3);
    if (v5)
    {
      v6 = v5;
      v7 = sub_1002A80E0(v8, v5);
      memcpy(v7, v3, v6);
    }

    sub_1002A8980(-10, v8, "throwOnEror", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgcodecs/src/grfmt_base.cpp", 140);
  }

  return result;
}

void sub_1002B4970(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1002A8124(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1002B49C8(uint64_t a1)
{
  sub_1002B43DC(a1);
  *v2 = off_100475BE8;
  sub_1002B2A0C((v2 + 20));
  *(a1 + 160) = off_100475928;
  sub_1002A8124((a1 + 40));
  *sub_1002A80E0((a1 + 40), 2) = 19778;
  *(a1 + 1256) = 0xFFFFFFFFLL;
  *(a1 + 152) = 1;
  *(a1 + 1248) = 0;
  return a1;
}

void sub_1002B4A84(_Unwind_Exception *a1)
{
  sub_1002B31A0(v2);
  sub_1002B4AA0(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1002B4AA0(uint64_t a1)
{
  *a1 = off_100475B00;
  v2 = *(a1 + 112);
  if (v2 && atomic_fetch_add((v2 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(a1 + 56);
  }

  *(a1 + 112) = 0;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  if (*(a1 + 60) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 120);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 60));
  }

  v5 = *(a1 + 128);
  if (v5 != (a1 + 136))
  {
    j__free(v5);
  }

  sub_1002A8124((a1 + 40));
  sub_1002A8124((a1 + 24));
  return a1;
}

uint64_t sub_1002B4B70(void *a1)
{
  *a1 = off_100475BE8;
  sub_1002B31A0((a1 + 20));

  return sub_1002B4AA0(a1);
}

void sub_1002B4BC4(void *a1)
{
  *a1 = off_100475BE8;
  sub_1002B31A0((a1 + 20));
  sub_1002B4AA0(a1);

  operator delete();
}

uint64_t sub_1002B4D14(uint64_t a1)
{
  if (!*(a1 + 72))
  {
    goto LABEL_13;
  }

  v2 = *(a1 + 60);
  if (v2 >= 3)
  {
    v4 = *(a1 + 120);
    v5 = (v4 + 4);
    v6 = 1;
    v7 = v2 & 0x7FFFFFFE;
    v8 = 1;
    do
    {
      v6 *= *(v5 - 1);
      v8 *= *v5;
      v5 += 2;
      v7 -= 2;
    }

    while (v7);
    v3 = v8 * v6;
    v9 = v2 - (v2 & 0x7FFFFFFE);
    if (v9)
    {
      v10 = (v4 + 8 * ((v2 >> 1) & 0x3FFFFFFF));
      do
      {
        v11 = *v10++;
        v3 *= v11;
        --v9;
      }

      while (v9);
    }
  }

  else
  {
    v3 = *(a1 + 68) * *(a1 + 64);
  }

  if (v2 && v3)
  {
    if ((sub_1002B2F4C(a1 + 160, a1 + 56) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
LABEL_13:
    result = sub_1002B2E6C(a1 + 160, (a1 + 24));
    if (!result)
    {
      return result;
    }
  }

  sub_1002B3190(a1 + 160, 10);
  *(a1 + 1256) = sub_1002B3628((a1 + 160));
  v13 = sub_1002B3628((a1 + 160));
  v14 = v13 - 36;
  if (v13 < 36)
  {
    if (v13 == 12)
    {
      *(a1 + 8) = sub_1002B35D0((a1 + 160));
      *(a1 + 12) = sub_1002B35D0((a1 + 160));
      v20 = sub_1002B3628((a1 + 160)) >> 16;
      *(a1 + 1252) = v20;
      *(a1 + 1260) = 0;
      if (*(a1 + 8) >= 1 && *(a1 + 12) && v20 <= 0x20 && ((1 << v20) & 0x101000112) != 0)
      {
        if (v20 <= 8)
        {
          sub_1002B33BC(a1 + 160, __dst, 3 << v20);
          v21 = (__dst + 1);
          v22 = a1 + 226;
          v23 = 1;
          do
          {
            *(v22 - 2) = *(v21 - 1);
            v24 = *v21;
            v21 = (v21 + 3);
            *(v22 - 1) = v24;
            v25 = v23++ >> v20;
            v22 += 4;
          }

          while (!v25);
        }

        goto LABEL_71;
      }
    }

    goto LABEL_55;
  }

  *(a1 + 8) = sub_1002B3628((a1 + 160));
  *(a1 + 12) = sub_1002B3628((a1 + 160));
  *(a1 + 1252) = sub_1002B3628((a1 + 160)) >> 16;
  *(a1 + 1260) = sub_1002B3628((a1 + 160));
  sub_1002B3190(a1 + 160, 12);
  v15 = sub_1002B3628((a1 + 160));
  sub_1002B3190(a1 + 160, v14);
  if (*(a1 + 8) < 1)
  {
    goto LABEL_55;
  }

  if (!*(a1 + 12))
  {
    goto LABEL_55;
  }

  v16 = *(a1 + 1252);
  if (v16 > 0x20)
  {
    goto LABEL_55;
  }

  if (((1 << v16) & 0x101000112) != 0)
  {
    v17 = *(a1 + 1260);
    if (!v17)
    {
      if (v16 <= 8)
      {
        goto LABEL_51;
      }

      if (v16 == 16)
      {
        goto LABEL_49;
      }

LABEL_63:
      v30 = 1;
      goto LABEL_64;
    }

    HIDWORD(v19) = v16 - 4;
    LODWORD(v19) = v16 - 4;
    v18 = v19 >> 2;
    if (v18 <= 2)
    {
      if (v18)
      {
        if (v18 == 1 && v17 == 1)
        {
LABEL_51:
          if (v15 >= 0x101)
          {
            sub_1001FA81C(__dst, "clrused >= 0 && clrused <= 256");
            sub_1002A8980(-215, __dst, "readHeader", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgcodecs/src/grfmt_bmp.cpp", 121);
          }

          bzero((a1 + 224), 0x400uLL);
          if (!v15)
          {
            v15 = 1 << v16;
          }

          sub_1002B33BC(a1 + 160, (a1 + 224), 4 * v15);
          if (sub_1002C79E4((a1 + 224), *(a1 + 1252)))
          {
            goto LABEL_63;
          }

LABEL_71:
          v33 = *(a1 + 12);
          *(a1 + 1248) = v33 > 0;
          if (v33 < 0)
          {
            v33 = -v33;
          }

          *(a1 + 12) = v33;
          *(a1 + 16) = 0;
          return 1;
        }
      }

      else if (v17 == 2)
      {
        goto LABEL_51;
      }

LABEL_55:
      v29 = *(a1 + 12);
      *(a1 + 1248) = v29 > 0;
      if (v29 < 0)
      {
        v29 = -v29;
      }

      *(a1 + 12) = v29;
      *(a1 + 16) = 0;
      goto LABEL_58;
    }

    if (v18 != 7 && v18 != 3)
    {
      goto LABEL_55;
    }
  }

  else
  {
    if (v16 != 16)
    {
      goto LABEL_55;
    }

    v17 = *(a1 + 1260);
  }

  if (v17 && v17 != 3)
  {
    goto LABEL_55;
  }

  if (v16 != 16)
  {
    goto LABEL_63;
  }

  if (!v17 || (v26 = sub_1002B3628((a1 + 160)), v27 = sub_1002B3628((a1 + 160)), v28 = sub_1002B3628((a1 + 160)), v28 == 31) && v27 == 992 && v26 == 31744)
  {
LABEL_49:
    *(a1 + 1252) = 15;
    goto LABEL_63;
  }

  v30 = v28 == 31 && v27 == 2016 && v26 == 63488;
LABEL_64:
  if (*(a1 + 1252) == 32)
  {
    v31 = 24;
  }

  else
  {
    v31 = 16;
  }

  v32 = *(a1 + 12);
  *(a1 + 1248) = v32 > 0;
  if (v32 < 0)
  {
    v32 = -v32;
  }

  *(a1 + 12) = v32;
  *(a1 + 16) = v31;
  if (v30)
  {
    return 1;
  }

LABEL_58:
  *(a1 + 1256) = -1;
  *(a1 + 8) = -1;
  sub_1002B30EC(a1 + 160);
  return 0;
}

void sub_1002B51B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2)
  {
    __cxa_begin_catch(exception_object);
    __cxa_rethrow();
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_1002B522C(uint64_t a1, int *a2)
{
  v4 = *(a2 + 2);
  v67 = sub_1002C5884(*(a2 + 10));
  v5 = *a2;
  v6 = *(a1 + 8);
  v7 = *(a1 + 1252);
  if (v7 == 15)
  {
    v7 = 16;
  }

  v8 = v7 * v6;
  v10 = v8 + 7;
  v9 = v8 < -7;
  v11 = v8 + 14;
  if (v9)
  {
    v12 = v11;
  }

  else
  {
    v12 = v10;
  }

  v92 = 0u;
  v93 = 0u;
  v13 = v5 & 0xFF8;
  v90 = 0u;
  v91 = 0u;
  v88 = 0u;
  v89 = 0u;
  v86 = 0u;
  v87 = 0u;
  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  *__c = 0u;
  v79 = 0u;
  if ((v5 & 0xFF8) != 0)
  {
    v14 = 3;
  }

  else
  {
    v14 = 1;
  }

  if ((*(a1 + 1256) & 0x80000000) != 0 || !sub_1002B29A4(a1 + 160))
  {
    return 0;
  }

  v15 = ((v12 >> 3) + 3) & 0xFFFFFFFC;
  if (*(a1 + 1248) == 1)
  {
    v4 += (*(a1 + 12) - 1) * v67;
    v67 = -v67;
  }

  v70 = 0;
  v72 = v74;
  v73 = 1032;
  v75 = v77;
  v76 = (v15 + 32);
  if (v15 + 32 >= 0x409)
  {
    operator new[]();
  }

  if (!v13)
  {
    v16 = *(a1 + 1252);
    if (v16 <= 8)
    {
      sub_1002C7778((a1 + 224), __c, 1 << v16);
    }

    v17 = 3 * *(a1 + 8) + 32;
    if (v73 >= v17)
    {
      v73 = 3 * *(a1 + 8) + 32;
    }

    else
    {
      if (v72 != v74)
      {
        if (v72)
        {
          operator delete[]();
        }

        v72 = v74;
      }

      v73 = v17;
      if (v17 >= 0x409)
      {
        operator new[]();
      }
    }
  }

  v20 = v75;
  sub_1002B2E24(a1 + 160, *(a1 + 1256));
  v21 = *(a1 + 1252);
  if (v21 > 14)
  {
    if (v21 <= 23)
    {
      if (v21 == 15)
      {
        v70 = 0;
        if (*(a1 + 12) >= 1)
        {
          do
          {
            sub_1002B33BC(a1 + 160, v20, v15);
            v31 = *(a1 + 8);
            if (v13)
            {
              sub_1002C6D7C(v20, 0, v4, 0, v31 | &_mh_execute_header);
            }

            else
            {
              sub_1002C648C(v20, 0, v4, 0, v31 | &_mh_execute_header);
            }

            ++v70;
            v4 += v67;
          }

          while (v70 < *(a1 + 12));
        }

        goto LABEL_91;
      }

      if (v21 == 16)
      {
        v70 = 0;
        if (*(a1 + 12) >= 1)
        {
          do
          {
            sub_1002B33BC(a1 + 160, v20, v15);
            v22 = *(a1 + 8);
            if (v13)
            {
              sub_1002C6F64(v20, 0, v4, 0, v22 | &_mh_execute_header);
            }

            else
            {
              sub_1002C6900(v20, 0, v4, 0, v22 | &_mh_execute_header);
            }

            ++v70;
            v4 += v67;
          }

          while (v70 < *(a1 + 12));
          goto LABEL_91;
        }

        goto LABEL_76;
      }

LABEL_156:
      sub_1001FA81C(v71, "Invalid/unsupported mode");
      sub_1002B5F3C(v71);
    }

    if (v21 == 24)
    {
      v70 = 0;
      if (*(a1 + 12) >= 1)
      {
        do
        {
          sub_1002B33BC(a1 + 160, v20, v15);
          v32 = *(a1 + 8);
          if (v13)
          {
            memcpy(v4, v20, 3 * v32);
          }

          else
          {
            sub_1002C5924(v20, 0, v4, 0, v32 | &_mh_execute_header, 0);
          }

          ++v70;
          v4 += v67;
        }

        while (v70 < *(a1 + 12));
      }

      goto LABEL_91;
    }

    if (v21 != 32)
    {
      goto LABEL_156;
    }

    v70 = 0;
    if (*(a1 + 12) >= 1)
    {
      if (v13)
      {
        do
        {
          sub_1002B33BC(a1 + 160, v20, v15);
          v26 = (*a2 >> 3) & 0x1FF;
          if (v26 == 3)
          {
            memcpy(v4, v20, 4 * *(a1 + 8));
          }

          else if (v26 == 2)
          {
            sub_1002C5F3C(v20, 0, v4, 0, *(a1 + 8) | &_mh_execute_header, 0);
          }

          ++v70;
          v4 += v67;
        }

        while (v70 < *(a1 + 12));
      }

      else
      {
        do
        {
          sub_1002B33BC(a1 + 160, v20, v15);
          sub_1002C5C78(v20, 0, v4, 0, *(a1 + 8) | &_mh_execute_header, 0);
          ++v70;
          v4 += v67;
        }

        while (v70 < *(a1 + 12));
      }

      goto LABEL_91;
    }

LABEL_76:
    v18 = 1;
    goto LABEL_77;
  }

  if (v21 == 1)
  {
    v70 = 0;
    if (*(a1 + 12) >= 1)
    {
      do
      {
        sub_1002B33BC(a1 + 160, v20, v15);
        if (v13)
        {
          v29 = v4;
        }

        else
        {
          v29 = v72;
        }

        sub_1002C815C(v29, v20, *(a1 + 8), a1 + 224);
        if (!v13)
        {
          sub_1002C5924(v72, 0, v4, 0, *(a1 + 8) | &_mh_execute_header, 0);
        }

        ++v70;
        v4 += v67;
      }

      while (v70 < *(a1 + 12));
      goto LABEL_91;
    }

    goto LABEL_76;
  }

  v23 = v6 * v14;
  if (v21 == 4)
  {
    v27 = *(a1 + 1260);
    if (v27 != 2)
    {
      if (!v27)
      {
        v70 = 0;
        if (*(a1 + 12) >= 1)
        {
          do
          {
            sub_1002B33BC(a1 + 160, v20, v15);
            v28 = *(a1 + 8);
            if (v13)
            {
              sub_1002C8060(v4, v20, v28, a1 + 224);
            }

            else
            {
              sub_1002C80F0(v4, v20, v28, __c);
            }

            ++v70;
            v4 += v67;
            v18 = 1;
          }

          while (v70 < *(a1 + 12));
LABEL_92:
          v30 = v72;
          if (v72 != v74)
          {
            goto LABEL_93;
          }

          goto LABEL_96;
        }

LABEL_91:
        v18 = 1;
        goto LABEL_92;
      }

LABEL_99:
      v18 = 0;
      v30 = v72;
      if (v72 != v74)
      {
        goto LABEL_93;
      }

      goto LABEL_96;
    }

    v65 = v6 * v14;
    v33 = (a1 + 224);
    v69 = &v4[v23];
    v70 = 0;
    while (1)
    {
      while (1)
      {
        v34 = sub_1002B35D0((a1 + 160));
        if (v34)
        {
          break;
        }

        v39 = v34 >> 8;
        v18 = v34 >> 8 < 3;
        if (v34 >> 8 < 3)
        {
          if (v39 == 2)
          {
            v40 = sub_1002B32E0((a1 + 160));
            sub_1002B32E0((a1 + 160));
            v41 = v40 * v14;
          }

          else
          {
            v41 = v69 - v4;
          }

          v42 = *(a1 + 12);
          if (v13)
          {
            v64 = v64 & 0xFFFFFFFF00000000 | *v33;
            v43 = sub_1002C7A50(v4, &v69, v67, v65, &v70, v42, v41, v64);
          }

          else
          {
            v43 = sub_1002C7F14(v4, &v69, v67, v65, &v70, v42, v41, __c[0]);
          }

          v4 = v43;
          if (v70 >= *(a1 + 12))
          {
            goto LABEL_77;
          }
        }

        else
        {
          if (&v4[(v39 * v14)] > v69)
          {
            goto LABEL_77;
          }

          if (v76 <= ((((v39 + 1) >> 1) + 1) & 0x7FFFFFFE))
          {
            sub_1001FA81C(v71, "(size_t)sz < _src.size()");
            sub_1002A8980(-215, v71, "readData", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgcodecs/src/grfmt_bmp.cpp", 296);
          }

          sub_1002B33BC(a1 + 160, v20, (((v39 + 1) >> 1) + 1) & 0x7FFFFFFE);
          if (v13)
          {
            v4 = sub_1002C8060(v4, v20, v39, a1 + 224);
          }

          else
          {
            v4 = sub_1002C80F0(v4, v20, v39, __c);
          }
        }
      }

      v35 = v33[(v34 >> 8) & 0xF];
      LODWORD(v71[0]) = v33[v34 >> 12];
      HIDWORD(v71[0]) = v35;
      v68[0] = __c[v34 >> 12];
      v68[1] = *(__c | (v34 >> 8) & 0xF);
      v36 = &v4[v34 * v14];
      if (v36 > v69)
      {
        break;
      }

      v37 = 0;
      if (v13)
      {
        do
        {
          v38 = v71 + 4 * v37;
          *v4 = *v38;
          v4[1] = v38[1];
          v4[2] = v38[2];
          v37 ^= 1uLL;
          v4 += v14;
        }

        while (v4 < v36);
      }

      else
      {
        do
        {
          *v4 = v68[v37];
          v37 ^= 1uLL;
          v4 += v14;
        }

        while (v4 < v36);
      }
    }

    v18 = 0;
  }

  else
  {
    if (v21 != 8)
    {
      goto LABEL_156;
    }

    v24 = *(a1 + 1260);
    if (v24 != 1)
    {
      if (!v24)
      {
        v70 = 0;
        if (*(a1 + 12) >= 1)
        {
          do
          {
            sub_1002B33BC(a1 + 160, v20, v15);
            v25 = *(a1 + 8);
            if (v13)
            {
              sub_1002C7FE4(v4, v20, v25, a1 + 224);
            }

            else
            {
              sub_1002C8034(v4, v20, v25, __c);
            }

            ++v70;
            v4 += v67;
            v18 = 1;
          }

          while (v70 < *(a1 + 12));
          goto LABEL_92;
        }

        goto LABEL_91;
      }

      goto LABEL_99;
    }

    v44 = 0;
    v66 = v23;
    v69 = &v4[v23];
    v70 = 0;
    v45 = (a1 + 224);
    do
    {
      while (1)
      {
        while (1)
        {
          v47 = sub_1002B35D0((a1 + 160));
          v48 = v47;
          v49 = v47 >> 8;
          if (!v47)
          {
            break;
          }

          v51 = v47 * v14;
          v18 = &v4[v51] <= v69;
          if (&v4[v51] <= v69)
          {
            v52 = v70;
            v53 = *(a1 + 12);
            if (v13)
            {
              v54 = v64 & 0xFFFFFFFF00000000 | v45[v49];
              v4 = sub_1002C7A50(v4, &v69, v67, v66, &v70, v53, v51, v54);
              v64 = v54;
            }

            else
            {
              v4 = sub_1002C7F14(v4, &v69, v67, v66, &v70, v53, v51, __c[v49]);
            }

            v44 = v70 - v52;
            if (v70 < *(a1 + 12))
            {
              continue;
            }
          }

          goto LABEL_77;
        }

        v18 = v49 < 3;
        if (v49 < 3)
        {
          break;
        }

        if (&v4[(v49 * v14)] > v69)
        {
          goto LABEL_77;
        }

        v50 = v70;
        if (v76 <= ((v49 + 1) & 0x7FFFFFFEu))
        {
          sub_1001FA81C(v71, "(size_t)sz < _src.size()");
          sub_1002A8980(-215, v71, "readData", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgcodecs/src/grfmt_bmp.cpp", 390);
        }

        sub_1002B33BC(a1 + 160, v20, (v49 + 1) & 0x7FFFFFFE);
        if (v13)
        {
          v46 = sub_1002C7FE4(v4, v20, v49, a1 + 224);
        }

        else
        {
          v46 = sub_1002C8034(v4, v20, v49, __c);
        }

        v4 = v46;
        v44 = v70 - v50;
      }

      v55 = v69 - v4;
      v56 = v70;
      v57 = *(a1 + 12);
      if (v47 > 0xFF || !v44 || v66 > v55)
      {
        if (v49 == 2)
        {
          v58 = v66;
          v59 = sub_1002B32E0((a1 + 160));
          v60 = sub_1002B32E0((a1 + 160));
          v55 = v59 * v14;
          v56 = v70;
          v57 = *(a1 + 12);
        }

        else
        {
          v60 = v57 - v70;
          v58 = v66;
        }

        v61 = v60 * v58;
        if (v48 <= 0xFF)
        {
          v61 = 0;
        }

        if (v56 >= v57)
        {
          break;
        }

        if (v13)
        {
          v63 = v63 & 0xFFFFFFFF00000000 | *v45;
          v62 = sub_1002C7A50(v4, &v69, v67, v58, &v70, v57, v61 + v55, v63);
        }

        else
        {
          v62 = sub_1002C7F14(v4, &v69, v67, v58, &v70, v57, v61 + v55, __c[0]);
        }

        v4 = v62;
        v56 = v70;
        v57 = *(a1 + 12);
        if (v70 >= v57)
        {
          break;
        }
      }

      v44 = 0;
    }

    while (v56 < v57);
  }

LABEL_77:
  v30 = v72;
  if (v72 != v74)
  {
LABEL_93:
    if (v30)
    {
      operator delete[]();
    }

    v72 = v74;
  }

LABEL_96:
  if (v75 != v77 && v75)
  {
    operator delete[]();
  }

  return v18;
}

uint64_t *sub_1002B5F6C(uint64_t *a1)
{
  *a1 = off_100475B70;
  sub_1002A8124(a1 + 7);
  sub_1002A8124(a1 + 3);
  sub_1002A8124(a1 + 1);
  return a1;
}

uint64_t sub_1002B5FCC(uint64_t a1)
{
  sub_1002B4744(a1);
  *v2 = off_100475C58;
  v3 = v2 + 1;
  sub_1002A8124(v2 + 1);
  qmemcpy(sub_1002A80E0(v3, 28), "Windows bitmap (*.bmp;*.dib)", 28);
  *(a1 + 48) = 1;
  return a1;
}

uint64_t *sub_1002B605C(uint64_t *a1)
{
  *a1 = off_100475B70;
  sub_1002A8124(a1 + 7);
  sub_1002A8124(a1 + 3);
  sub_1002A8124(a1 + 1);
  return a1;
}

void sub_1002B60BC(uint64_t *a1)
{
  *a1 = off_100475B70;
  sub_1002A8124(a1 + 7);
  sub_1002A8124(a1 + 3);
  sub_1002A8124(a1 + 1);

  operator delete();
}

uint64_t sub_1002B62E0(uint64_t a1, unsigned int *a2)
{
  v4 = a2[3];
  v5 = a2[2];
  v6 = *a2;
  v23 = 0;
  v22 = 0;
  sub_1002B3710(v21);
  v21[0] = off_100475A08;
  v7 = *(a1 + 40);
  if (!v7)
  {
    if (sub_1002B3A90(v21, (a1 + 24)))
    {
      goto LABEL_3;
    }

LABEL_21:
    v16 = 0;
    goto LABEL_22;
  }

  if ((sub_1002B3B44(v21, v7) & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_3:
  v8 = (v6 >> 3) & 0x1FF;
  v19 = v8;
  v20 = v8 + 1;
  v9 = (v8 + 1) * v4;
  if (v8)
  {
    v10 = 54;
  }

  else
  {
    v10 = 1078;
  }

  v18 = (v9 + 3) & 0xFFFFFFFC;
  v11 = v10 + v5 * v18;
  v12 = *(a1 + 40);
  if (v12 && v12[2] - *v12 < ((v11 + 271) & 0xFFFFFFFFFFFFFF00))
  {
    if (v11 > -272)
    {
      operator new();
    }

    sub_10000918C();
  }

  sub_1002B3DD0(v21, "BM", 2);
  v13 = sub_1002C5884(v11);
  sub_1002B3F60(v21, v13);
  sub_1002B3F60(v21, 0);
  sub_1002B3F60(v21, v10);
  sub_1002B3F60(v21, 40);
  sub_1002B3F60(v21, v4);
  sub_1002B3F60(v21, v5);
  sub_1002B3E7C(v21, 1);
  sub_1002B3E7C(v21, 8 * v20);
  sub_1002B3F60(v21, 0);
  sub_1002B3F60(v21, 0);
  sub_1002B3F60(v21, 0);
  sub_1002B3F60(v21, 0);
  sub_1002B3F60(v21, 0);
  sub_1002B3F60(v21, 0);
  if (!v19)
  {
    sub_1002C7958(__src, 8, 0);
    sub_1002B3DD0(v21, __src, 1024);
  }

  if (v5 >= 1)
  {
    v14 = (v5 - 1);
    if (v18 <= v9)
    {
      do
      {
        sub_1002B3DD0(v21, (*(a2 + 2) + **(a2 + 9) * v14), v9);
        v15 = v14-- <= 0;
      }

      while (!v15);
    }

    else
    {
      do
      {
        sub_1002B3DD0(v21, (*(a2 + 2) + **(a2 + 9) * v14), v9);
        sub_1002B3DD0(v21, &v22, v18 - v9);
        v15 = v14-- <= 0;
      }

      while (!v15);
    }
  }

  sub_1002B3BD0(v21);
  v16 = 1;
LABEL_22:
  sub_1002B3C80(v21);
  return v16;
}

void sub_1002B6610(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1002B3C80(va);
  _Unwind_Resume(a1);
}

void sub_1002B6628(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1002B3C80(va);
  _Unwind_Resume(a1);
}

void sub_1002B663C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1002B3C80(va);
  _Unwind_Resume(a1);
}

void sub_1002B6650(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1002B3C80(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1002B667C(void *a1)
{
  v1 = a1[2];
  if (v1)
  {
    v2 = a1;
    (*(*v1 + 8))(a1[2]);
    a1 = v2;
  }

  v3 = *(*a1 + 8);

  return v3();
}

uint64_t sub_1002B6718(void *a1)
{
  v1 = a1[2];
  if (v1)
  {
    v2 = a1;
    (*(*v1 + 8))(a1[2]);
    a1 = v2;
  }

  v3 = *(*a1 + 8);

  return v3();
}

uint64_t sub_1002B679C(uint64_t a1)
{
  sub_1002B43DC(a1);
  *v2 = off_100475D60;
  v2[20] = 0;
  v3 = v2 + 20;
  v2[21] = 0;
  sub_1002A8124(v2 + 5);
  v4 = sub_1002A80E0((a1 + 40), 6);
  *(v4 + 4) = 17730;
  *v4 = 1196572451;
  sub_1002A8124(v3);
  v5 = sub_1002A80E0(v3, 10);
  *(v5 + 8) = 17731;
  *v5 = *"#?RADIANCE";
  *(a1 + 176) = 0;
  *(a1 + 16) = 21;
  return a1;
}

void sub_1002B6854(_Unwind_Exception *a1)
{
  sub_1002A8124(v2);
  sub_1002B4AA0(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1002B6878(void *a1)
{
  *a1 = off_100475D60;
  sub_1002A8124(a1 + 20);

  return sub_1002B4AA0(a1);
}

void sub_1002B68D0(void *a1)
{
  *a1 = off_100475D60;
  sub_1002A8124(a1 + 20);
  sub_1002B4AA0(a1);

  operator delete();
}

uint64_t sub_1002B693C(uint64_t a1)
{
  if (*(a1 + 48) <= *(a1 + 168))
  {
    return *(a1 + 168);
  }

  else
  {
    return *(a1 + 48);
  }
}

FILE *sub_1002B6950(uint64_t a1)
{
  if (*(a1 + 24))
  {
    v2 = *(a1 + 24);
  }

  else
  {
    v2 = "";
  }

  result = fopen(v2, "rb");
  *(a1 + 176) = result;
  if (result)
  {
    sub_1002C4530(result, a1 + 8, a1 + 12, 0);
    if (*(a1 + 8) < 1 || *(a1 + 12) <= 0)
    {
      fclose(*(a1 + 176));
      result = 0;
      *(a1 + 176) = 0;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_1002B69E0(uint64_t a1, _DWORD *a2)
{
  LODWORD(v11[0]) = 1124007936;
  memset(v11 + 4, 0, 48);
  v11[3] = 0u;
  v12 = v11 + 8;
  v13 = v14;
  v14[0] = 0;
  v14[1] = 0;
  __src = vrev64_s32(*(a1 + 8));
  sub_100268ED0(v11, 2, &__src, 21);
  v4 = *(a1 + 176);
  if (v4)
  {
    goto LABEL_4;
  }

  if ((*(*a1 + 48))(a1))
  {
    v4 = *(a1 + 176);
LABEL_4:
    sub_1002C50EC(v4, *&v11[1], HIDWORD(v11[0]), SDWORD2(v11[0]));
    fclose(*(a1 + 176));
    *(a1 + 176) = 0;
    v5 = *a2;
    if (((LOBYTE(v11[0]) ^ *a2) & 7) != 0)
    {
      __src.i32[0] = 33619968;
      v16 = a2;
      v17 = 0;
      sub_10020EF14(v11, &__src, v5 & 0xFFF, 255.0, 0.0);
    }

    else
    {
      __src.i32[0] = 33619968;
      v16 = a2;
      v17 = 0;
      sub_10020EF14(v11, &__src, v5 & 0xFFF, 1.0, 0.0);
    }

    v6 = 1;
    v7 = *(&v11[3] + 1);
    if (!*(&v11[3] + 1))
    {
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  v6 = 0;
  v7 = *(&v11[3] + 1);
  if (!*(&v11[3] + 1))
  {
    goto LABEL_10;
  }

LABEL_8:
  if (atomic_fetch_add((v7 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v11);
  }

LABEL_10:
  *(&v11[3] + 1) = 0;
  memset(&v11[1], 0, 32);
  if (SDWORD1(v11[0]) >= 1)
  {
    v8 = 0;
    v9 = v12;
    do
    {
      *&v9[4 * v8++] = 0;
    }

    while (v8 < SDWORD1(v11[0]));
  }

  if (v13 != v14)
  {
    j__free(v13);
  }

  return v6;
}

void sub_1002B6BF0(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_100008E3C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_1002B6C20(void *a1, void *a2)
{
  v2 = a1[6];
  result = 0;
  if (a2[1] >= v2)
  {
    v4 = *a2 ? *a2 : "";
    v5 = a1[5] ? a1[5] : "";
    if (!memcmp(v4, v5, v2))
    {
      return 1;
    }

    v6 = a1[20] ? a1[20] : "";
    if (!memcmp(v4, v6, a1[21]))
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_1002B6D9C(uint64_t a1)
{
  sub_1002B4744(a1);
  *v2 = off_100475DD0;
  v3 = v2 + 1;
  sub_1002A8124(v2 + 1);
  qmemcpy(sub_1002A80E0(v3, 26), "Radiance HDR (*.hdr;*.pic)", 26);
  return a1;
}

uint64_t *sub_1002B6E24(uint64_t *a1)
{
  *a1 = off_100475B70;
  sub_1002A8124(a1 + 7);
  sub_1002A8124(a1 + 3);
  sub_1002A8124(a1 + 1);
  return a1;
}

void sub_1002B6E84(uint64_t *a1)
{
  *a1 = off_100475B70;
  sub_1002A8124(a1 + 7);
  sub_1002A8124(a1 + 3);
  sub_1002A8124(a1 + 1);

  operator delete();
}

BOOL sub_1002B6F04(uint64_t a1, _DWORD *a2, void *a3)
{
  LODWORD(v18[0]) = 1124007936;
  memset(v18 + 4, 0, 48);
  v18[3] = 0u;
  v19 = v18 + 8;
  v20 = v21;
  v21[0] = 0;
  v21[1] = 0;
  if (((*a2 >> 3) & 0x1FD | 2) != 2)
  {
    v15 = 0;
    v16 = 0;
    qmemcpy(sub_1002A80E0(&v15, 54), "input_img.channels() == 3 || input_img.channels() == 1", 54);
    sub_1002A8980(-215, &v15, "write", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgcodecs/src/grfmt_hdr.cpp", 128);
  }

  if ((*a2 & 0xFF8) != 0)
  {
    LODWORD(v15) = 33619968;
    v16 = v18;
    v17 = 0;
    sub_10022B754(a2, &v15);
    if ((v18[0] & 7) == 5)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  sub_1002B74D8(&v15, 3uLL);
  v14[1] = &v15;
  v14[2] = 0;
  LODWORD(v14[0]) = 17104896;
  v11 = 33619968;
  v12 = v18;
  v13 = 0;
  sub_100200B5C(v14, &v11);
  v14[0] = &v15;
  sub_10022A2B4(v14);
  if ((v18[0] & 7) != 5)
  {
LABEL_7:
    LODWORD(v15) = 33619968;
    v16 = v18;
    v17 = 0;
    sub_10020EF14(v18, &v15, 21, 0.00392156886, 0.0);
  }

LABEL_8:
  if (*a3 != a3[1] && **a3 >= 2u)
  {
    v15 = 0;
    v16 = 0;
    qmemcpy(sub_1002A80E0(&v15, 63), "params.empty() || params[0] == HDR_NONE || params[0] == HDR_RLE", 63);
    sub_1002A8980(-215, &v15, "write", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgcodecs/src/grfmt_hdr.cpp", 138);
  }

  if (*(a1 + 24))
  {
    v5 = *(a1 + 24);
  }

  else
  {
    v5 = "";
  }

  v6 = fopen(v5, "wb");
  v7 = v6;
  if (v6)
  {
    sub_1002C4084(v6, SHIDWORD(v18[0]), SDWORD2(v18[0]), 0);
    if (*a3 == a3[1] || **a3 == 1)
    {
      sub_1002C4D10(v7, *&v18[1], HIDWORD(v18[0]), SDWORD2(v18[0]));
    }

    else
    {
      sub_1002C4BEC(v7, *&v18[1], DWORD2(v18[0]) * HIDWORD(v18[0]));
    }

    fclose(v7);
  }

  if (*(&v18[3] + 1) && atomic_fetch_add((*(&v18[3] + 1) + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v18);
  }

  *(&v18[3] + 1) = 0;
  memset(&v18[1], 0, 32);
  if (SDWORD1(v18[0]) >= 1)
  {
    v8 = 0;
    v9 = v19;
    do
    {
      *&v9[4 * v8++] = 0;
    }

    while (v8 < SDWORD1(v18[0]));
  }

  if (v20 != v21)
  {
    j__free(v20);
  }

  return v7 != 0;
}

void sub_1002B7214(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v9 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  sub_1002A8124(va);
  sub_100006D14(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_1002B7454(void *a1)
{
  v1 = a1[2];
  if (v1)
  {
    v2 = a1;
    (*(*v1 + 8))(a1[2]);
    a1 = v2;
  }

  v3 = *(*a1 + 8);

  return v3();
}

void *sub_1002B74D8(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    if (a2 < 0x2AAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_10000918C();
  }

  return result;
}

uint64_t sub_1002B7660(void *a1)
{
  v1 = a1[2];
  if (v1)
  {
    v2 = a1;
    (*(*v1 + 8))(a1[2]);
    a1 = v2;
  }

  v3 = *(*a1 + 8);

  return v3();
}

uint64_t sub_1002B76E4(uint64_t a1)
{
  sub_1002B43DC(a1);
  *v2 = off_100475ED8;
  v3 = v2 + 5;
  sub_1002A8124(v2 + 5);
  v4 = sub_1002A80E0(v3, 3);
  *v4 = -9985;
  *(v4 + 2) = asc_100417FAC[2];
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 152) = 1;
  return a1;
}

uint64_t sub_1002B7774(uint64_t a1)
{
  *a1 = off_100475ED8;
  if (*(a1 + 168))
  {
    sub_100390114(*(a1 + 168));
    operator delete();
  }

  v2 = *(a1 + 160);
  if (v2)
  {
    fclose(v2);
    *(a1 + 160) = 0;
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = -1;

  return sub_1002B4AA0(a1);
}

void sub_1002B7810(uint64_t a1)
{
  *a1 = off_100475ED8;
  if (*(a1 + 168))
  {
    sub_100390114(*(a1 + 168));
    operator delete();
  }

  v2 = *(a1 + 160);
  if (v2)
  {
    fclose(v2);
    *(a1 + 160) = 0;
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = -1;
  sub_1002B4AA0(a1);

  operator delete();
}

void sub_1002B7A64(uint64_t a1)
{
  if (*(a1 + 168))
  {
    sub_100390114(*(a1 + 168));
    operator delete();
  }

  v2 = *(a1 + 160);
  if (v2)
  {
    fclose(v2);
    *(a1 + 160) = 0;
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = -1;
  operator new();
}

uint64_t sub_1002B7D54(uint64_t a1, int *a2)
{
  v27 = 0;
  v3 = *(a1 + 168);
  if (v3)
  {
    if (*(a1 + 8))
    {
      if (*(a1 + 12))
      {
        v4 = *(a2 + 10);
        v5 = *a2;
        if (!setjmp((v3 + 800)))
        {
          if (!*(v3 + 248) && !*(v3 + 256) && !*(v3 + 216) && !*(v3 + 224))
          {
            sub_1002B7FB4(v3, v3 + 248, v3 + 216);
          }

          v7 = *(v3 + 56);
          if (v7 == 4)
          {
            v8 = 4;
          }

          else
          {
            v8 = 2;
          }

          if (v7 == 4)
          {
            v9 = 4;
          }

          else
          {
            v9 = 3;
          }

          if (v7 == 4)
          {
            v10 = 4;
          }

          else
          {
            v10 = 1;
          }

          if ((v5 & 0xFF8) != 0)
          {
            v10 = v9;
          }

          else
          {
            v8 = v10;
          }

          *(v3 + 64) = v8;
          *(v3 + 124) = v10;
          sub_1003A5794(v3);
          v11 = (*(*(v3 + 8) + 16))(v3, 1, (4 * *(a1 + 8)), 1);
          v12 = *(a2 + 2);
          v13 = *(a1 + 12);
          *(a1 + 12) = v13 - 1;
          if (v13)
          {
            v14 = v11;
            if ((v5 & 0xFF8) != 0)
            {
              do
              {
                while (1)
                {
                  sub_1003A59A8(v3, v14, 1);
                  v16 = *v14;
                  v17 = *(a1 + 8);
                  if (*(v3 + 124) == 3)
                  {
                    break;
                  }

                  sub_1002C7148(v16, 0, v12, 0, v17 | &_mh_execute_header);
                  v12 += v4;
                  v15 = *(a1 + 12);
                  *(a1 + 12) = v15 - 1;
                  if (!v15)
                  {
                    goto LABEL_32;
                  }
                }

                sub_1002C6134(v16, 0, v12, 0, v17 | &_mh_execute_header);
                v12 += v4;
                v18 = *(a1 + 12);
                *(a1 + 12) = v18 - 1;
              }

              while (v18);
            }

            else
            {
              do
              {
                while (1)
                {
                  sub_1003A59A8(v3, v14, 1);
                  v23 = *(a1 + 8);
                  if (*(v3 + 124) != 1)
                  {
                    break;
                  }

                  memcpy(v12, *v14, v23);
                  v12 += v4;
                  v19 = *(a1 + 12);
                  *(a1 + 12) = v19 - 1;
                  if (!v19)
                  {
                    goto LABEL_32;
                  }
                }

                sub_1002C73B8(*v14, 0, v12, 0, v23 | &_mh_execute_header, v20, v21, v22);
                v12 += v4;
                v24 = *(a1 + 12);
                *(a1 + 12) = v24 - 1;
              }

              while (v24);
            }
          }

LABEL_32:
          v27 = 1;
          sub_1003A56A8(v3);
        }
      }
    }

    if (*(a1 + 168))
    {
      sub_100390114(*(a1 + 168));
      operator delete();
    }
  }

  v25 = *(a1 + 160);
  if (v25)
  {
    fclose(v25);
    *(a1 + 160) = 0;
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = -1;
  return v27;
}

uint64_t sub_1002B7FB4(uint64_t result, uint64_t a2, uint64_t a3)
{
  v49 = result;
  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v3 = 416;
  v4 = &dword_100000004;
  v62 = 0u;
  v63 = 0u;
  while (1)
  {
    v15 = *(&unk_1003E60E8 + v4 + 1);
    v16 = *(&unk_1003E60E8 + v4 + 2);
    v17 = *(&unk_1003E60E8 + v4 + 3);
    v18 = *(&unk_1003E60E8 + v4 + 4);
    v19 = *(&unk_1003E60E8 + v4 + 5);
    v20 = *(&unk_1003E60E8 + v4 + 6);
    v21 = *(&unk_1003E60E8 + v4 + 7);
    LODWORD(v22) = *(&unk_1003E60E8 + v4 + 8);
    v23 = *(&unk_1003E60E8 + v4 + 9);
    v24 = *(&unk_1003E60E8 + v4 + 10);
    v25 = *(&unk_1003E60E8 + v4 + 11);
    v26 = *(&unk_1003E60E8 + v4 + 12);
    LODWORD(v27) = *(&unk_1003E60E8 + v4 + 13);
    v28 = *(&unk_1003E60E8 + v4 + 14);
    v29 = *(&unk_1003E60E8 + v4 + 15);
    v30 = *(&unk_1003E60E8 + v4 + 16);
    v31 = v15 + v16 + v17 + v18 + v19 + v20 + v21 + v22 + v23 + v24 + v25 + v26 + v27 + v28 + v29 + v30;
    v32 = v3 - 17;
    if (v31 > 0x100 || v32 < v31)
    {
      return result;
    }

    v34 = v4 + 17;
    if (!v31)
    {
      v36 = v4 + 17;
      goto LABEL_16;
    }

    if (v31 < 0x20 || -18 - v4 < v31 - 1)
    {
      v35 = 0;
      v36 = v4 + 17;
LABEL_12:
      v37 = v36;
      do
      {
        v36 = v37 + 1;
        *(&v62 + v35++) = *(&unk_1003E60E8 + v37++);
      }

      while (v35 < v31);
      goto LABEL_16;
    }

    v44 = *(&unk_1003E60E8 + v4 + 16);
    result = *(&unk_1003E60E8 + v4 + 15);
    v35 = (v15 + v16 + v17 + v18 + v19 + v20 + v21 + v22 + v23 + v24 + v25 + v26 + v27 + v28 + v29 + v30) & 0x1E0;
    v36 = v34 + ((v15 + v16 + v17 + v18 + v19 + v20 + v21 + v22 + v23 + v24 + v25 + v26 + v27 + v28 + v29 + v30) & 0x1E0);
    v45 = v35;
    v46 = &v63;
    do
    {
      v47 = (&unk_1003E60E8 + v34);
      v48 = v47[1];
      *(v46 - 1) = *v47;
      *v46 = v48;
      v46 += 2;
      v34 += 32;
      v45 -= 32;
    }

    while (v45);
    LOBYTE(v29) = result;
    LOBYTE(v30) = v44;
    if (v35 != v31)
    {
      goto LABEL_12;
    }

LABEL_16:
    v38 = *(&unk_1003E60E8 + v4);
    v39 = (a2 + 8 * (v38 & 0xFFFFFFFFFFFFFFEFLL));
    if ((v38 & 0x10) != 0)
    {
      LODWORD(v38) = v38 & 0xFFFFFFEF;
      v40 = v39;
    }

    else
    {
      v40 = (a3 + 8 * v38);
    }

    if (v38 <= 3)
    {
      result = *v40;
      if (*v40 || (v56 = v23, v57 = v22, v22 = a3, v52 = v27, v53 = v26, v27 = a2, v26 = v32, v54 = v25, v55 = v24, v41 = v15, v42 = v16, v43 = v17, v60 = v19, v61 = v18, v58 = v21, v59 = v20, v51 = v29, v50 = v30, result = sub_10039D4C0(v49), LOBYTE(v30) = v50, LOBYTE(v29) = v51, LOBYTE(v21) = v58, LOBYTE(v20) = v59, LOBYTE(v19) = v60, LOBYTE(v18) = v61, LOBYTE(v17) = v43, LOBYTE(v16) = v42, LOBYTE(v24) = v55, LOBYTE(v23) = v56, LOBYTE(v15) = v41, v32 = v26, LOBYTE(v26) = v53, LOBYTE(v25) = v54, a2 = v27, LOBYTE(v27) = v52, a3 = v22, LOBYTE(v22) = v57, (*v40 = result) != 0))
      {
        *result = 0;
        *(result + 1) = v15;
        *(result + 2) = v16;
        *(result + 3) = v17;
        *(result + 4) = v18;
        *(result + 5) = v19;
        *(result + 6) = v20;
        *(result + 7) = v21;
        *(result + 8) = v22;
        *(result + 9) = v23;
        *(result + 10) = v24;
        *(result + 11) = v25;
        *(result + 12) = v26;
        *(result + 13) = v27;
        *(result + 14) = v28;
        *(result + 15) = v29;
        *(result + 16) = v30;
        v5 = *v40;
        v6 = v75;
        *(v5 + 209) = v74;
        *(v5 + 225) = v6;
        v7 = v77;
        *(v5 + 241) = v76;
        v8 = v71;
        *(v5 + 145) = v70;
        *(v5 + 161) = v8;
        v9 = v73;
        *(v5 + 177) = v72;
        *(v5 + 193) = v9;
        v10 = v67;
        *(v5 + 81) = v66;
        *(v5 + 97) = v10;
        v11 = v69;
        *(v5 + 113) = v68;
        *(v5 + 129) = v11;
        v12 = v63;
        *(v5 + 17) = v62;
        *(v5 + 33) = v12;
        v13 = v65;
        *(v5 + 49) = v64;
        *(v5 + 65) = v13;
        v3 = v32 - v31;
        v14 = v5 + 17;
        v4 = v36;
        *(v14 + 240) = v7;
        if (v32 - v31 > 0x10)
        {
          continue;
        }
      }
    }

    return result;
  }
}

uint64_t sub_1002B833C(uint64_t a1)
{
  sub_1002B4744(a1);
  *v2 = off_100475F48;
  v3 = v2 + 1;
  sub_1002A8124(v2 + 1);
  qmemcpy(sub_1002A80E0(v3, 31), "JPEG files (*.jpeg;*.jpg;*.jpe)", 31);
  *(a1 + 48) = 1;
  return a1;
}

uint64_t *sub_1002B83CC(uint64_t *a1)
{
  *a1 = off_100475B70;
  sub_1002A8124(a1 + 7);
  sub_1002A8124(a1 + 3);
  sub_1002A8124(a1 + 1);
  return a1;
}

void sub_1002B842C(uint64_t *a1)
{
  *a1 = off_100475B70;
  sub_1002A8124(a1 + 7);
  sub_1002A8124(a1 + 3);
  sub_1002A8124(a1 + 1);

  operator delete();
}

void sub_1002B8CF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p)
{
  v20 = v19;
  if (STACK[0x4D8] != a11 && STACK[0x4D8] != 0)
  {
    operator delete[]();
  }

  if (__p)
  {
    operator delete(__p);
    if (!v20)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v20)
  {
    goto LABEL_8;
  }

  fclose(v20);
  _Unwind_Resume(a1);
}

uint64_t sub_1002B8D90(uint64_t result, uint64_t a2)
{
  v2 = *(result + 40);
  v4 = *v2;
  v3 = v2[1];
  v5 = a2 - v3;
  v6 = v3 - a2;
  if (v3 < a2)
  {
    v6 = 0;
  }

  else
  {
    v3 = a2;
    v5 = 0;
  }

  *(v2 + 14) = v5;
  *v2 = v4 + v3;
  v2[1] = v6;
  return result;
}

uint64_t sub_1002B8DC0(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(v1 + 48);
  v3 = v2[1];
  v4 = &v3[-*v2];
  v5 = *(*(v1 + 40) + 8) - **(v1 + 40);
  v6 = &v4[v5];
  if (v4 >= &v4[v5])
  {
    if (v4 > v6)
    {
      v2[1] = *v2 + v6;
    }
  }

  else
  {
    v7 = v2[2];
    if (v7 - v3 < v5)
    {
      if ((v6 & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_10000918C();
    }

    v8 = &v3[v5];
    bzero(v3, v5);
    v2[1] = v8;
  }

  memcpy(&v4[**(v1 + 48)], **(v1 + 40), v5);
  *v1 = **(v1 + 40);
  *(v1 + 8) = v5;
  return 1;
}

void *sub_1002B8F18(void *result)
{
  v1 = result[5];
  v2 = *(v1[5] + 8) - *v1[5];
  v3 = v1[1];
  v4 = v2 - v3;
  if (v2 != v3)
  {
    v5 = v1[6];
    v6 = v5[1];
    v7 = &v6[-*v5];
    v8 = &v7[v4];
    if (v7 >= &v7[v4])
    {
      if (v7 > &v7[v4])
      {
        v5[1] = &v8[*v5];
      }
    }

    else
    {
      v9 = v5[2];
      if (v9 - v6 < v4)
      {
        if ((v8 & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_10000918C();
      }

      v10 = &v6[v4];
      bzero(v6, v4);
      v5[1] = v10;
    }

    v11 = *v1[5];
    v12 = &v7[*v1[6]];

    return memcpy(v12, v11, v4);
  }

  return result;
}

uint64_t sub_1002B90B4(void *a1)
{
  v1 = a1[2];
  if (v1)
  {
    v2 = a1;
    (*(*v1 + 8))(a1[2]);
    a1 = v2;
  }

  v3 = *(*a1 + 8);

  return v3();
}

uint64_t sub_1002B9150(void *a1)
{
  v1 = a1[2];
  if (v1)
  {
    v2 = a1;
    (*(*v1 + 8))(a1[2]);
    a1 = v2;
  }

  v3 = *(*a1 + 8);

  return v3();
}

uint64_t sub_1002B91D4(uint64_t a1)
{
  sub_1002B43DC(a1);
  *v2 = off_100476050;
  sub_1002B2A0C((v2 + 20));
  *(a1 + 160) = off_100475928;
  *(a1 + 152) = 1;
  *(a1 + 244) = 0;
  *(a1 + 240) = 0;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0xFFFFFFFF00000000;
  return a1;
}

uint64_t sub_1002B9264(void *a1)
{
  *a1 = off_100476050;
  v2 = (a1 + 20);
  sub_1002B30EC((a1 + 20));
  sub_1002B31A0(v2);

  return sub_1002B4AA0(a1);
}

void sub_1002B92CC(void *a1)
{
  *a1 = off_100476050;
  v2 = (a1 + 20);
  sub_1002B30EC((a1 + 20));
  sub_1002B31A0(v2);
  sub_1002B4AA0(a1);

  operator delete();
}

BOOL sub_1002B9350(uint64_t a1, void *a2)
{
  if (a2[1] < 3uLL)
  {
    return 0;
  }

  v2 = *a2;
  if (**a2 != 80 || v2[1] != 55)
  {
    return 0;
  }

  v3 = v2[2];
  if (v3 < 0)
  {
    return __maskrune(v3, 0x4000uLL) != 0;
  }

  else
  {
    return (_DefaultRuneLocale.__runetype[v3] & 0x4000) != 0;
  }
}

FILE *sub_1002B9578(uint64_t a1)
{
  if (!*(a1 + 72))
  {
    goto LABEL_13;
  }

  v2 = *(a1 + 60);
  if (v2 >= 3)
  {
    v4 = *(a1 + 120);
    v5 = (v4 + 4);
    v6 = 1;
    v7 = v2 & 0x7FFFFFFE;
    v8 = 1;
    do
    {
      v6 *= *(v5 - 1);
      v8 *= *v5;
      v5 += 2;
      v7 -= 2;
    }

    while (v7);
    v3 = v8 * v6;
    v9 = v2 - (v2 & 0x7FFFFFFE);
    if (v9)
    {
      v10 = (v4 + 8 * ((v2 >> 1) & 0x3FFFFFFF));
      do
      {
        v11 = *v10++;
        v3 *= v11;
        --v9;
      }

      while (v9);
    }
  }

  else
  {
    v3 = *(a1 + 68) * *(a1 + 64);
  }

  if (v2 && v3)
  {
    if ((sub_1002B2F4C(a1 + 160, a1 + 56) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
LABEL_13:
    result = sub_1002B2E6C(a1 + 160, (a1 + 24));
    if (!result)
    {
      return result;
    }
  }

  if (sub_1002B32E0((a1 + 160)) != 80)
  {
    exception = __cxa_allocate_exception(0x58uLL);
    sub_1001FA81C(__str, "Invalid header");
    sub_1001FA81C(&__endptr, "readHeader");
    sub_1001FA81C(v80, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgcodecs/src/grfmt_pam.cpp");
    sub_1002A833C(exception, -2, __str, &__endptr, v80, 381);
    *exception = &off_100476820;
  }

  if (sub_1002B32E0((a1 + 160)) != 55)
  {
    v75 = __cxa_allocate_exception(0x58uLL);
    sub_1001FA81C(__str, "Invalid header");
    sub_1001FA81C(&__endptr, "readHeader");
    sub_1001FA81C(v80, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgcodecs/src/grfmt_pam.cpp");
    sub_1002A833C(v75, -2, __str, &__endptr, v80, 385);
    *v75 = &off_100476820;
  }

  v13 = sub_1002B32E0((a1 + 160));
  if (v13 != 10 && v13 != 13)
  {
    v76 = __cxa_allocate_exception(0x58uLL);
    sub_1001FA81C(__str, "Invalid header");
    sub_1001FA81C(&__endptr, "readHeader");
    sub_1001FA81C(v80, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgcodecs/src/grfmt_pam.cpp");
    sub_1002A833C(v76, -2, __str, &__endptr, v80, 389);
    *v76 = &off_100476820;
  }

  v14 = 0;
  v77 = 0;
  v78 = 0;
  while (1)
  {
    do
    {
      while (1)
      {
        while (1)
        {
          v82 = 0;
          do
          {
            v17 = sub_1002B32E0((a1 + 160));
            v18 = v17;
            if (v17 <= 0x7F)
            {
              v16 = _DefaultRuneLocale.__runetype[v17] & 0x4000;
            }

            else
            {
              v16 = __maskrune(v17, 0x4000uLL);
            }
          }

          while (v16);
          v15 = 0;
          if (v18 != 10 && v18 != 13)
          {
            break;
          }

LABEL_20:
          v14 = v15;
        }

        if (v18 == 35)
        {
          do
          {
            v19 = sub_1002B32E0((a1 + 160));
          }

          while (v19 != 10 && v19 != 13);
          v15 = 1;
          goto LABEL_20;
        }

        __endptr = 0;
        if (v18 <= 0x7F)
        {
          if ((_DefaultRuneLocale.__runetype[v18] & 0x4000) != 0)
          {
            goto LABEL_62;
          }
        }

        else if (__maskrune(v18, 0x4000uLL))
        {
          goto LABEL_62;
        }

        LOBYTE(__endptr) = v18;
        v20 = sub_1002B32E0((a1 + 160));
        v18 = v20;
        if (v20 <= 0x7F)
        {
          if ((_DefaultRuneLocale.__runetype[v20] & 0x4000) != 0)
          {
            goto LABEL_62;
          }
        }

        else if (__maskrune(v20, 0x4000uLL))
        {
          goto LABEL_62;
        }

        BYTE1(__endptr) = v18;
        v21 = sub_1002B32E0((a1 + 160));
        v18 = v21;
        if (v21 <= 0x7F)
        {
          if ((_DefaultRuneLocale.__runetype[v21] & 0x4000) != 0)
          {
            goto LABEL_62;
          }
        }

        else if (__maskrune(v21, 0x4000uLL))
        {
          goto LABEL_62;
        }

        BYTE2(__endptr) = v18;
        v22 = sub_1002B32E0((a1 + 160));
        v18 = v22;
        if (v22 <= 0x7F)
        {
          if ((_DefaultRuneLocale.__runetype[v22] & 0x4000) != 0)
          {
            goto LABEL_62;
          }
        }

        else if (__maskrune(v22, 0x4000uLL))
        {
          goto LABEL_62;
        }

        BYTE3(__endptr) = v18;
        v23 = sub_1002B32E0((a1 + 160));
        v18 = v23;
        if (v23 <= 0x7F)
        {
          if ((_DefaultRuneLocale.__runetype[v23] & 0x4000) != 0)
          {
            goto LABEL_62;
          }
        }

        else if (__maskrune(v23, 0x4000uLL))
        {
          goto LABEL_62;
        }

        BYTE4(__endptr) = v18;
        v24 = sub_1002B32E0((a1 + 160));
        v18 = v24;
        if (v24 <= 0x7F)
        {
          if ((_DefaultRuneLocale.__runetype[v24] & 0x4000) != 0)
          {
            goto LABEL_62;
          }
        }

        else if (__maskrune(v24, 0x4000uLL))
        {
          goto LABEL_62;
        }

        BYTE5(__endptr) = v18;
        v25 = sub_1002B32E0((a1 + 160));
        v18 = v25;
        if (v25 <= 0x7F)
        {
          if ((_DefaultRuneLocale.__runetype[v25] & 0x4000) != 0)
          {
            goto LABEL_62;
          }
        }

        else if (__maskrune(v25, 0x4000uLL))
        {
          goto LABEL_62;
        }

        BYTE6(__endptr) = v18;
        v26 = sub_1002B32E0((a1 + 160));
        v18 = v26;
        if (v26 <= 0x7F)
        {
          if ((_DefaultRuneLocale.__runetype[v26] & 0x4000) != 0)
          {
LABEL_62:
            if (v18 > 0x7F)
            {
              goto LABEL_63;
            }

            goto LABEL_66;
          }
        }

        else if (__maskrune(v26, 0x4000uLL))
        {
          goto LABEL_62;
        }

        HIBYTE(__endptr) = v18;
        v18 = sub_1002B32E0((a1 + 160));
        if (v18 > 0x7F)
        {
LABEL_63:
          v27 = __maskrune(v18, 0x4000uLL);
          goto LABEL_67;
        }

LABEL_66:
        v27 = _DefaultRuneLocale.__runetype[v18] & 0x4000;
LABEL_67:
        if (!v27)
        {
          goto LABEL_187;
        }

        v28 = __endptr == 1448624461 && *(&__endptr + 3) == 4997462;
        if (v28)
        {
          if (__endptr ^ 0x455059544C505554 | v82)
          {
            v14 = 6;
          }

          else
          {
            v14 = 7;
          }
        }

        else
        {
          v29 = WORD2(__endptr) ^ 0x48;
          v30 = __endptr ^ 0x54504544 | v29;
          v31 = __endptr ^ 0x48444E45 | *(&__endptr + 3) ^ 0x524448;
          v28 = v31 == 0;
          v32 = v31 != 0;
          v33 = __endptr ^ 0x47494548 | *(&__endptr + 3) ^ 0x544847;
          if (v28)
          {
            v34 = 2;
          }

          else
          {
            v34 = v14;
          }

          v28 = v33 == 0;
          v35 = v33 != 0;
          v36 = __endptr ^ 0x54444957 | v29;
          if (v28)
          {
            v37 = 3;
          }

          else
          {
            v37 = v34;
          }

          v28 = v36 == 0;
          v38 = v36 != 0;
          if (v28)
          {
            v39 = 4;
          }

          else
          {
            v39 = v37;
          }

          v40 = v30 != 0;
          if (v30)
          {
            v41 = v39;
          }

          else
          {
            v41 = 5;
          }

          v42 = __endptr ^ 0x455059544C505554 | v82;
          if (v42)
          {
            v14 = v41;
          }

          else
          {
            v14 = 7;
          }

          if (v42 && v40 && v38 && v35 && v32)
          {
            goto LABEL_187;
          }
        }

        v96 = 0u;
        memset(v97, 0, sizeof(v97));
        v94 = 0u;
        v95 = 0u;
        v92 = 0u;
        v93 = 0u;
        v90 = 0u;
        v91 = 0u;
        v88 = 0u;
        v89 = 0u;
        v86 = 0u;
        v87 = 0u;
        v84 = 0u;
        v85 = 0u;
        *__str = 0u;
        if (v18 != 10 && v18 != 13)
        {
          do
          {
            v44 = sub_1002B32E0((a1 + 160));
            v45 = v44;
            if (v44 <= 0x7F)
            {
              v43 = _DefaultRuneLocale.__runetype[v44] & 0x4000;
            }

            else
            {
              v43 = __maskrune(v44, 0x4000uLL);
            }
          }

          while (v43);
          for (i = 0; i != 255; ++i)
          {
            if (v45 == 10 || v45 == 13)
            {
              goto LABEL_109;
            }

            __str[i] = v45;
            v47 = sub_1002B32E0((a1 + 160));
            v45 = v47;
          }

          i = 255;
          if (v47 != 10 && v47 != 13)
          {
LABEL_187:
            v64 = __cxa_allocate_exception(0x58uLL);
            sub_1001FA81C(&__endptr, "Invalid header");
            sub_1001FA81C(v80, "readHeader");
            sub_1001FA81C(v79, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgcodecs/src/grfmt_pam.cpp");
            sub_1002A833C(v64, -2, &__endptr, v80, v79, 395);
            *v64 = &off_100476820;
          }

          do
          {
LABEL_109:
            v48 = __str[i];
            if (v48 < 0)
            {
              v49 = __maskrune(v48, 0x4000uLL);
            }

            else
            {
              v49 = _DefaultRuneLocale.__runetype[v48] & 0x4000;
            }

            if (!v49)
            {
              break;
            }

            __str[i--] = 0;
          }

          while (i != -1);
        }

        if (v14 <= 3)
        {
          break;
        }

        if (v14 > 5)
        {
          if (v14 == 6)
          {
            if (v77)
            {
              v70 = __cxa_allocate_exception(0x58uLL);
              sub_1001FA81C(&__endptr, "Invalid header");
              sub_1001FA81C(v80, "readHeader");
              sub_1001FA81C(v79, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgcodecs/src/grfmt_pam.cpp");
              sub_1002A833C(v70, -2, &__endptr, v80, v79, 426);
              *v70 = &off_100476820;
            }

            __endptr = 0;
            v56 = strtol(__str, &__endptr, 0);
            if (*__error() == 34 && (v56 - 0x7FFFFFFFFFFFFFFFLL) < 2 || ((v57 = *__error(), !v56) ? (v58 = v57 == 0) : (v58 = 1), !v58 || __endptr == __str))
            {
              v65 = __cxa_allocate_exception(0x58uLL);
              sub_1001FA81C(&__endptr, "Invalid header");
              sub_1001FA81C(v80, "readHeader");
              sub_1001FA81C(v79, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgcodecs/src/grfmt_pam.cpp");
              sub_1002A833C(v65, -2, &__endptr, v80, v79, 428);
              *v65 = &off_100476820;
            }

            *(a1 + 224) = v56;
            if (v56 >= 0x10000)
            {
              v73 = __cxa_allocate_exception(0x58uLL);
              sub_1001FA81C(&__endptr, "Invalid header");
              sub_1001FA81C(v80, "readHeader");
              sub_1001FA81C(v79, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgcodecs/src/grfmt_pam.cpp");
              sub_1002A833C(v73, -2, &__endptr, v80, v79, 430);
              *v73 = &off_100476820;
            }

            if (v56 < 256)
            {
              *(a1 + 232) = 0;
              LODWORD(v77) = 1;
              v14 = 6;
              if (v56 == 1)
              {
                *(a1 + 244) = 1;
              }
            }

            else
            {
              *(a1 + 232) = 2;
              LODWORD(v77) = 1;
              v14 = 6;
            }
          }

          else
          {
            if (!strncmp(byte_1004760CC, __str, 0x100uLL))
            {
              *(a1 + 240) = 0;
              if (strncmp("BLACKANDWHITE", __str, 0x100uLL))
              {
LABEL_164:
                if (strncmp("GRAYSCALE", __str, 0x100uLL))
                {
                  goto LABEL_165;
                }

                goto LABEL_173;
              }
            }

            else if (strncmp("BLACKANDWHITE", __str, 0x100uLL))
            {
              goto LABEL_164;
            }

            *(a1 + 240) = 1;
            if (strncmp("GRAYSCALE", __str, 0x100uLL))
            {
LABEL_165:
              if (strncmp("GRAYSCALE_ALPHA", __str, 0x100uLL))
              {
                goto LABEL_166;
              }

              goto LABEL_174;
            }

LABEL_173:
            *(a1 + 240) = 2;
            if (strncmp("GRAYSCALE_ALPHA", __str, 0x100uLL))
            {
LABEL_166:
              if (!strncmp("RGB", __str, 0x100uLL))
              {
                goto LABEL_175;
              }

              goto LABEL_167;
            }

LABEL_174:
            *(a1 + 240) = 3;
            if (!strncmp("RGB", __str, 0x100uLL))
            {
LABEL_175:
              *(a1 + 240) = 4;
            }

LABEL_167:
            v14 = 7;
            if (!strncmp("RGB_ALPHA", __str, 0x100uLL))
            {
              *(a1 + 240) = 5;
            }
          }
        }

        else if (v14 == 4)
        {
          if (v78)
          {
            v72 = __cxa_allocate_exception(0x58uLL);
            sub_1001FA81C(&__endptr, "Invalid header");
            sub_1001FA81C(v80, "readHeader");
            sub_1001FA81C(v79, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgcodecs/src/grfmt_pam.cpp");
            sub_1002A833C(v72, -2, &__endptr, v80, v79, 412);
            *v72 = &off_100476820;
          }

          __endptr = 0;
          v50 = strtol(__str, &__endptr, 0);
          if (*__error() == 34 && (v50 - 0x7FFFFFFFFFFFFFFFLL) < 2 || ((v51 = *__error(), !v50) ? (v52 = v51 == 0) : (v52 = 1), !v52 || __endptr == __str))
          {
            v68 = __cxa_allocate_exception(0x58uLL);
            sub_1001FA81C(&__endptr, "Invalid header");
            sub_1001FA81C(v80, "readHeader");
            sub_1001FA81C(v79, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgcodecs/src/grfmt_pam.cpp");
            sub_1002A833C(v68, -2, &__endptr, v80, v79, 414);
            *v68 = &off_100476820;
          }

          *(a1 + 8) = v50;
          LODWORD(v78) = 1;
          v14 = 4;
        }

        else
        {
          if ((v77 & 0x100000000) != 0)
          {
            v69 = __cxa_allocate_exception(0x58uLL);
            sub_1001FA81C(&__endptr, "Invalid header");
            sub_1001FA81C(v80, "readHeader");
            sub_1001FA81C(v79, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgcodecs/src/grfmt_pam.cpp");
            sub_1002A833C(v69, -2, &__endptr, v80, v79, 419);
            *v69 = &off_100476820;
          }

          __endptr = 0;
          v59 = strtol(__str, &__endptr, 0);
          if (*__error() == 34 && (v59 - 0x7FFFFFFFFFFFFFFFLL) < 2 || ((v60 = *__error(), !v59) ? (v61 = v60 == 0) : (v61 = 1), !v61 || __endptr == __str))
          {
            v67 = __cxa_allocate_exception(0x58uLL);
            sub_1001FA81C(&__endptr, "Invalid header");
            sub_1001FA81C(v80, "readHeader");
            sub_1001FA81C(v79, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgcodecs/src/grfmt_pam.cpp");
            sub_1002A833C(v67, -2, &__endptr, v80, v79, 421);
            *v67 = &off_100476820;
          }

          *(a1 + 228) = v59;
          HIDWORD(v77) = 1;
          v14 = 5;
        }
      }
    }

    while (v14 < 2);
    if (v14 != 3)
    {
      break;
    }

    if ((v78 & 0x100000000) != 0)
    {
      v71 = __cxa_allocate_exception(0x58uLL);
      sub_1001FA81C(&__endptr, "Invalid header");
      sub_1001FA81C(v80, "readHeader");
      sub_1001FA81C(v79, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgcodecs/src/grfmt_pam.cpp");
      sub_1002A833C(v71, -2, &__endptr, v80, v79, 405);
      *v71 = &off_100476820;
    }

    __endptr = 0;
    v53 = strtol(__str, &__endptr, 0);
    if (*__error() == 34 && (v53 - 0x7FFFFFFFFFFFFFFFLL) < 2 || ((v54 = *__error(), !v53) ? (v55 = v54 == 0) : (v55 = 1), !v55 || __endptr == __str))
    {
      v66 = __cxa_allocate_exception(0x58uLL);
      sub_1001FA81C(&__endptr, "Invalid header");
      sub_1001FA81C(v80, "readHeader");
      sub_1001FA81C(v79, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgcodecs/src/grfmt_pam.cpp");
      sub_1002A833C(v66, -2, &__endptr, v80, v79, 407);
      *v66 = &off_100476820;
    }

    *(a1 + 12) = v53;
    HIDWORD(v78) = 1;
    v14 = 3;
  }

  if ((HIDWORD(v78) & v78 & HIDWORD(v77) & v77 & 1) == 0)
  {
    *(a1 + 236) = -1;
    *(a1 + 8) = -1;
    sub_1002B30EC(a1 + 160);
    return 0;
  }

  v62 = *(a1 + 228);
  if (*(a1 + 240))
  {
    goto LABEL_178;
  }

  if (v62 == 3)
  {
    if (*(a1 + 224) <= 255)
    {
      v63 = 4;
LABEL_186:
      *(a1 + 240) = v63;
    }
  }

  else if (v62 == 1)
  {
    v63 = *(a1 + 224);
    if (v63 == 1)
    {
      goto LABEL_186;
    }

    if (v63 < 256)
    {
      v63 = 2;
      goto LABEL_186;
    }
  }

LABEL_178:
  *(a1 + 16) = (*(a1 + 232) & 7 | (8 * v62)) - 8;
  *(a1 + 236) = sub_1002B2E50((a1 + 160));
  return 1;
}

uint64_t sub_1002BAC90(uint64_t a1, int *a2)
{
  v4 = *(a2 + 2);
  v5 = *a2;
  v6 = *(a2 + 10);
  v7 = *(a1 + 16);
  v8 = (*(a1 + 228) * *(a1 + 8));
  v132 = &v134;
  v133 = 2 * v8;
  if ((2 * v8) >= 0x409)
  {
    operator new[]();
  }

  if ((*(a1 + 236) & 0x80000000) != 0 || (sub_1002B29A4(a1 + 160) & 1) == 0)
  {
    v14 = 0;
    goto LABEL_145;
  }

  v9 = *(a1 + 240);
  if (v9)
  {
    v126 = 0;
    v127 = 0;
    v10 = &unk_1004760C8 + 288 * v9;
  }

  else
  {
    v10 = 0;
    v127 = *(a1 + 228) > 2;
    v126 = 2 * v127;
  }

  sub_1002B2E24(a1 + 160, *(a1 + 236));
  v11 = (v5 >> 3) & 0x1FF;
  v128 = v11 + 1;
  v130 = ((0x88442211 >> (4 * (v7 & 7))) & 0xF) * v8;
  v12 = *(a1 + 232);
  if (v12 != (*a2 & 7) || v128 != *(a1 + 228) || (*(a1 + 244) & 1) != 0)
  {
    if (*(a1 + 244))
    {
      if (v11 == 2)
      {
        sub_1002C7958(v138, 1, 0);
        if (*(a1 + 12) >= 1)
        {
          v86 = 0;
          do
          {
            sub_1002B33BC(a1 + 160, &v134, v130);
            sub_1002C815C(v4, &v134, *(a1 + 8), v138);
            ++v86;
            v4 = (v4 + v6);
            v14 = 1;
          }

          while (v86 < *(a1 + 12));
          goto LABEL_145;
        }
      }

      else if (!v11)
      {
        v131[0] = -256;
        if (*(a1 + 12) >= 1)
        {
          v13 = 0;
          do
          {
            sub_1002B33BC(a1 + 160, &v134, v130);
            sub_1002C8260(v4, &v134, *(a1 + 8), v131);
            ++v13;
            v4 = (v4 + v6);
            v14 = 1;
          }

          while (v13 < *(a1 + 12));
          goto LABEL_145;
        }
      }

      goto LABEL_123;
    }

    if (*(a1 + 12) >= 1)
    {
      v124 = (v5 >> 3) & 0x1FF;
      v15 = 0;
      v125 = v8 & 0x7FFFFFE0;
      v16 = v4 + 1;
      v17 = v4 + 2;
      while (1)
      {
        sub_1002B33BC(a1 + 160, &v134, v130);
        if (*(a1 + 232) != 2 || v8 < 1)
        {
          v19 = *a2;
          v20 = *a2 & 7;
          v21 = *(a1 + 228);
          if (v128 == v21)
          {
            goto LABEL_20;
          }

          goto LABEL_44;
        }

        if (v8 < 8)
        {
          v22 = 0;
LABEL_40:
          v32 = &v135[2 * v22];
          v33 = v8 - v22;
          do
          {
            v34 = *(v32 - 1);
            *(v32 - 1) = *v32;
            *v32 = v34;
            v32 += 2;
            --v33;
          }

          while (v33);
          goto LABEL_42;
        }

        if (v8 >= 0x20)
        {
          v24 = v8 & 0x7FFFFFE0;
          v25 = v137;
          do
          {
            v26 = v25 - 32;
            v141 = vld2q_s8(v26);
            v143 = vld2q_s8(v25);
            v27 = v141.val[0];
            v28 = v143.val[0];
            vst2q_s8(v26, *(&v141 + 16));
            vst2q_s8(v25, *(&v143 + 16));
            v25 += 64;
            v24 -= 32;
          }

          while (v24);
          if (v125 == v8)
          {
            goto LABEL_42;
          }

          v22 = v8 & 0x7FFFFFE0;
          v23 = v22;
          if ((v8 & 0x18) == 0)
          {
            goto LABEL_40;
          }
        }

        else
        {
          v23 = 0;
        }

        v29 = &v135[2 * v23 - 1];
        v30 = v23 - (v8 & 0x7FFFFFF8);
        do
        {
          v139 = vld2_s8(v29);
          v31 = v139.val[0];
          vst2_s8(v29, *(&v139 + 8));
          v29 += 16;
          v30 += 8;
        }

        while (v30);
        v22 = v8 & 0x7FFFFFF8;
        if (v22 != v8)
        {
          goto LABEL_40;
        }

LABEL_42:
        v19 = *a2;
        v20 = *a2 & 7;
        if ((*a2 & 7) != 0)
        {
          v21 = *(a1 + 228);
          if (v128 == v21)
          {
            goto LABEL_20;
          }

          goto LABEL_44;
        }

        if (v8 < 4)
        {
          v41 = 0;
          do
          {
LABEL_86:
            v135[v41 - 1] = v135[2 * v41];
            ++v41;
          }

          while (v8 != v41);
          goto LABEL_87;
        }

        if (v8 >= 0x20)
        {
          v59 = v8 & 0x7FFFFFE0;
          v60 = &v136;
          v61 = v137;
          do
          {
            v63 = v61[-2];
            v62 = v61[-1];
            v65 = *v61;
            v64 = v61[1];
            v61 += 4;
            v60[-1] = vuzp2q_s8(v63, v62);
            *v60 = vuzp2q_s8(v65, v64);
            v60 += 2;
            v59 -= 32;
          }

          while (v59);
          v41 = v8 & 0x7FFFFFE0;
          if (v125 == v8)
          {
            goto LABEL_87;
          }

          v47 = v8 & 0x7FFFFFE0;
          if ((v8 & 0x1C) == 0)
          {
            goto LABEL_86;
          }
        }

        else
        {
          v47 = 0;
        }

        v66 = &v135[2 * v47 - 1];
        v67 = &v135[v47 - 1];
        v68 = v47 - (v8 & 0x7FFFFFFC);
        do
        {
          v69 = *v66++;
          v70 = vshr_n_u16(v69, 8uLL);
          *v67++ = vuzp1_s8(v70, v70).u32[0];
          v68 += 4;
        }

        while (v68);
        v41 = v8 & 0x7FFFFFFC;
        if (v41 != v8)
        {
          goto LABEL_86;
        }

LABEL_87:
        v20 = 0;
        v21 = *(a1 + 228);
        if (v128 == v21)
        {
LABEL_20:
          memcpy(v4, &v134, v6);
          goto LABEL_21;
        }

LABEL_44:
        if (!v10)
        {
          v42 = v21;
          v43 = *(a1 + 8);
          if (v20 == 2)
          {
            v55 = &v135[2 * v43 - 1];
            if (v124)
            {
              if (v124 == 2 && v43 >= 1)
              {
                v56 = 2 * v42;
                v57 = &v134;
                v58 = v4;
                do
                {
                  *v58 = *v57;
                  *(v58 + 1) = *&v57[2 * v127];
                  *(v58 + 2) = *&v57[2 * v126];
                  v58 = (v58 + 6);
                  v57 += v56;
                }

                while (v57 < v55);
              }
            }

            else if (v43 >= 1)
            {
              v82 = 2 * v42;
              v83 = v16;
              v84 = &v134;
              do
              {
                v85 = *v84;
                *v83 = *v84;
                *(v83 - 1) = v85;
                *(v83 - 2) = v85;
                v84 += v82;
                v83 = (v83 + 6);
              }

              while (v84 < v55);
            }
          }

          else if (!v20)
          {
            v44 = &v135[v43 - 1];
            if (v124)
            {
              if (v124 == 2)
              {
                v45 = v4;
                v46 = &v134;
                if (v43 >= 1)
                {
                  do
                  {
                    *v45 = *v46;
                    v45[1] = v46[v127];
                    v45[2] = v46[v126];
                    v45 += 3;
                    v46 += v42;
                  }

                  while (v46 < v44);
                }
              }
            }

            else if (v43 >= 1)
            {
              v79 = v17;
              v80 = &v134;
              do
              {
                v81 = *v80;
                *v79 = *v80;
                *(v79 - 1) = v81;
                *(v79 - 2) = v81;
                v80 += v42;
                v79 += 3;
              }

              while (v80 < v44);
            }
          }

          goto LABEL_21;
        }

        v35 = *(v10 + 33);
        if (!v35)
        {
          goto LABEL_48;
        }

        if ((v35(&v134, v4, *(a1 + 8), v128, v20) & 1) == 0)
        {
          v21 = *(a1 + 228);
          v19 = *a2;
LABEL_48:
          v36 = *(a1 + 8);
          v37 = v19 & 7;
          if (v37 == 2)
          {
            v48 = &v135[2 * v36 - 1];
            if (v124)
            {
              if (v124 == 2 && v36 >= 1)
              {
                v49 = *(v10 + 70);
                v50 = *(v10 + 69);
                v51 = *(v10 + 68);
                v52 = 2 * v21;
                v53 = &v134;
                v54 = v4;
                do
                {
                  *v54 = *&v53[2 * v49];
                  *(v54 + 1) = *&v53[2 * v50];
                  *(v54 + 2) = *&v53[2 * v51];
                  v54 = (v54 + 6);
                  v53 += v52;
                }

                while (v53 < v48);
              }
            }

            else if (v36 >= 1)
            {
              v74 = *(v10 + 71);
              v75 = 2 * v21;
              v76 = v16;
              v77 = &v134;
              do
              {
                v78 = *&v77[2 * v74];
                *v76 = v78;
                *(v76 - 1) = v78;
                *(v76 - 2) = v78;
                v77 += v75;
                v76 = (v76 + 6);
              }

              while (v77 < v48);
            }
          }

          else if (!v37)
          {
            v38 = &v135[v36 - 1];
            if (v124)
            {
              if (v124 == 2 && v36 >= 1)
              {
                v39 = v4;
                v40 = &v134;
                do
                {
                  *v39 = v40[*(v10 + 70)];
                  *(v39 + 1) = v40[*(v10 + 69)];
                  *(v39 + 2) = v40[*(v10 + 68)];
                  v39 = (v39 + 3);
                  v40 += v21;
                }

                while (v40 < v38);
              }
            }

            else if (v36 >= 1)
            {
              v71 = v17;
              v72 = &v134;
              do
              {
                v73 = v72[*(v10 + 71)];
                *v71 = v73;
                *(v71 - 1) = v73;
                *(v71 - 2) = v73;
                v72 += v21;
                v71 += 3;
              }

              while (v72 < v38);
            }
          }
        }

LABEL_21:
        ++v15;
        v4 = (v4 + v6);
        v16 = (v16 + v6);
        v17 += v6;
        if (v15 >= *(a1 + 12))
        {
          goto LABEL_123;
        }
      }
    }

    goto LABEL_123;
  }

  v87 = *(a1 + 12);
  if (v12 != 2)
  {
    sub_1002B33BC(a1 + 160, v4, v87 * v130);
    goto LABEL_123;
  }

  if (v87 < 1)
  {
LABEL_123:
    v14 = 1;
    goto LABEL_145;
  }

  if (v8 <= 0)
  {
    v97 = 0;
    do
    {
      sub_1002B33BC(a1 + 160, &v134, v130);
      ++v97;
      v14 = 1;
    }

    while (v97 < *(a1 + 12));
    goto LABEL_145;
  }

  if (v8 >= 8)
  {
    v98 = 0;
    v99 = 2 * v8;
    v100 = &v135[v99 - 1];
    v129 = v4 + v99;
    v101 = (v4 + 8);
    while (1)
    {
      sub_1002B33BC(a1 + 160, &v134, v130);
      if (v4 >= v100 || &v134 >= &v129[v6 * v98])
      {
        if (v8 < 0x20)
        {
          v103 = 0;
LABEL_138:
          v111 = 2 * v103;
          v112 = v103 - (v8 & 0x7FFFFFF8);
          do
          {
            v113 = &v135[v111 - 1];
            v140 = vld2_s8(v113);
            v114 = v140.val[0];
            v115 = v4 + v111;
            vst2_s8(v115, *(&v140 + 8));
            v111 += 16;
            v112 += 8;
          }

          while (v112);
          v102 = v8 & 0x7FFFFFF8;
          if (v102 == v8)
          {
            goto LABEL_128;
          }

          goto LABEL_141;
        }

        v104 = v8 & 0x7FFFFFE0;
        v105 = v137;
        v106 = v101;
        do
        {
          v107 = v105 - 32;
          v142 = vld2q_s8(v107);
          v144 = vld2q_s8(v105);
          v108 = v142.val[0];
          v109 = v106 - 32;
          vst2q_s8(v109, *(&v142 + 16));
          v110 = v144.val[0];
          vst2q_s8(v106, *(&v144 + 16));
          v106 += 64;
          v105 += 64;
          v104 -= 32;
        }

        while (v104);
        if ((v8 & 0x7FFFFFE0) == v8)
        {
          goto LABEL_128;
        }

        v103 = v8 & 0x7FFFFFE0;
        v102 = v103;
        if ((v8 & 0x18) != 0)
        {
          goto LABEL_138;
        }
      }

      else
      {
        v102 = 0;
      }

LABEL_141:
      v116 = v8 - v102;
      v117 = 2 * v102;
      v118 = v4 + 2 * v102;
      v119 = &v135[v117];
      do
      {
        v120 = *(v119 - 1);
        v121 = *v119;
        v119 += 2;
        *v118 = v121;
        v118[1] = v120;
        v118 += 2;
        --v116;
      }

      while (v116);
LABEL_128:
      ++v98;
      v4 = (v4 + v6);
      v101 += v6;
      v14 = 1;
      if (v98 >= *(a1 + 12))
      {
        goto LABEL_145;
      }
    }
  }

  v88 = 0;
  v89 = v4 + 6;
  do
  {
    sub_1002B33BC(a1 + 160, &v134, v130);
    v90 = v134;
    *(v89 - 6) = v135[0];
    *(v89 - 5) = v90;
    if (v8 != 1)
    {
      v91 = v135[1];
      *(v89 - 4) = v135[2];
      *(v89 - 3) = v91;
      if (v8 != 2)
      {
        v92 = v135[3];
        *(v89 - 2) = v135[4];
        *(v89 - 1) = v92;
        if (v8 != 3)
        {
          v93 = v135[5];
          *v89 = v135[6];
          v89[1] = v93;
          if (v8 != 4)
          {
            v94 = v135[7];
            v89[2] = v135[8];
            v89[3] = v94;
            if (v8 != 5)
            {
              v95 = v135[9];
              v89[4] = v135[10];
              v89[5] = v95;
              if (v8 != 6)
              {
                v96 = v135[11];
                v89[6] = v135[12];
                v89[7] = v96;
              }
            }
          }
        }
      }
    }

    ++v88;
    v89 += v6;
    v14 = 1;
  }

  while (v88 < *(a1 + 12));
LABEL_145:
  if (v132 != &v134 && v132 != 0)
  {
    operator delete[]();
  }

  return v14;
}

void sub_1002BB790(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  if (a27 != a24 && a27)
  {
    operator delete[]();
  }

  if (STACK[0x4A8] != a21)
  {
    if (STACK[0x4A8])
    {
      operator delete[]();
    }
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1002BB7EC(uint64_t a1)
{
  sub_1002B4744(a1);
  *v2 = off_100476798;
  v3 = v2 + 1;
  sub_1002A8124(v2 + 1);
  qmemcpy(sub_1002A80E0(v3, 33), "Portable arbitrary format (*.pam)", 33);
  *(a1 + 48) = 1;
  return a1;
}

uint64_t *sub_1002BB87C(uint64_t *a1)
{
  *a1 = off_100475B70;
  sub_1002A8124(a1 + 7);
  sub_1002A8124(a1 + 3);
  sub_1002A8124(a1 + 1);
  return a1;
}

void sub_1002BB8DC(uint64_t *a1)
{
  *a1 = off_100475B70;
  sub_1002A8124(a1 + 7);
  sub_1002A8124(a1 + 3);
  sub_1002A8124(a1 + 1);

  operator delete();
}

uint64_t sub_1002BBB0C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_1002B3710(v51);
  v51[0] = off_100475A08;
  v6 = *(a2 + 4);
  if (v6 >= 1)
  {
    v7 = *(*(a2 + 72) + 8 * v6 - 8);
    v8 = *(a2 + 8);
    v9 = *(a2 + 12);
    v10 = *a3;
    v11 = a3[1];
    v12 = v11 - *a3;
    if (v11 != *a3)
    {
      goto LABEL_3;
    }

LABEL_9:
    v14 = 0;
    goto LABEL_10;
  }

  v7 = 0;
  v8 = *(a2 + 8);
  v9 = *(a2 + 12);
  v10 = *a3;
  v17 = a3[1];
  v12 = v17 - *a3;
  if (v17 == *a3)
  {
    goto LABEL_9;
  }

LABEL_3:
  v13 = 0;
  v14 = 0;
  v15 = v12 >> 2;
  do
  {
    if (*(v10 + 4 * v13) == 128)
    {
      v16 = *(v10 + 4 * v13 + 4);
      if (v16 - 1 <= 4)
      {
        v14 = &unk_1004760C8 + 288 * v16;
      }
    }

    v13 += 2;
  }

  while (v13 < v15);
LABEL_10:
  v18 = v7 * v9;
  __src = *(a2 + 16);
  v19 = *(a1 + 40);
  if (!v19)
  {
    if (sub_1002B3A90(v51, (a1 + 24)))
    {
      goto LABEL_16;
    }

LABEL_18:
    v22 = 0;
    goto LABEL_42;
  }

  if ((sub_1002B3B44(v51, v19) & 1) == 0)
  {
    goto LABEL_18;
  }

  if (*(*(a1 + 40) + 16) - **(a1 + 40) < ((v18 * v8 + 511) & 0xFFFFFFFFFFFFFF00))
  {
    if (v18 * v8 > -512)
    {
      operator new();
    }

    sub_10000918C();
  }

LABEL_16:
  v20 = *(a2 + 4);
  if (v20 < 1)
  {
    v21 = 0;
  }

  else
  {
    v21 = *(*(a2 + 72) + 8 * v20 - 8);
  }

  v23 = v21 * v9;
  if (v23 <= 256)
  {
    v24 = 256;
  }

  else
  {
    v24 = v23;
  }

  v52 = v54;
  v53 = v24;
  if (v23 >= 1033)
  {
    operator new[]();
  }

  v54[0] = 669520;
  v25 = sprintf(v54 + 3, "WIDTH %d\n", v9) + 3;
  v26 = v25 + sprintf(v54 + v25, "HEIGHT %d\n", v8);
  LODWORD(v26) = sprintf(v54 + v26, "DEPTH %d\n", ((*a2 >> 3) & 0x1FF) + 1) + v26;
  v27 = sprintf(v54 + v26, "MAXVAL %d\n", ~(-1 << (8 * ((0x88442211 >> (4 * (*a2 & 7))) & 0xF)))) + v26;
  if (v14)
  {
    v27 += sprintf(v54 + v27, "TUPLTYPE %s\n", v14 + 4);
  }

  *(v54 + v27) = 0xA524448444E45;
  v28 = strlen(v54);
  sub_1002B3DD0(v51, v54, v28);
  if ((*a2 & 7) != 0)
  {
    if ((*a2 & 7) == 2 && v8 >= 1)
    {
      if (v18 > 0)
      {
        if (v18 <= 0xE)
        {
          for (i = 0; i != v8; ++i)
          {
            memcpy(v54, (*(a2 + 16) + **(a2 + 72) * i), v18);
            for (j = 0; j < v18; j += 2)
            {
              v31 = v54 + j;
              v32 = *(v54 + j);
              *v31 = *(v54 + j + 1);
              v31[1] = v32;
            }

            sub_1002B3DD0(v51, v54, v18);
          }

          goto LABEL_38;
        }

        v35 = 0;
        v36 = ((v18 - 1) >> 1) + 1;
        while (1)
        {
          memcpy(v54, (*(a2 + 16) + **(a2 + 72) * v35), v18);
          if (v18 < 0x3F)
          {
            break;
          }

          v38 = v36 & 0xFFFFFFFFFFFFFFE0;
          v39 = &v55;
          do
          {
            v40 = v39 - 32;
            v57 = vld2q_s8(v40);
            v58 = vld2q_s8(v39);
            v41 = v57.val[0];
            v42 = v58.val[0];
            vst2q_s8(v40, *(&v57 + 16));
            vst2q_s8(v39, *(&v58 + 16));
            v39 += 64;
            v38 -= 32;
          }

          while (v38);
          if (v36 == (v36 & 0xFFFFFFFFFFFFFFE0))
          {
            goto LABEL_58;
          }

          v37 = v36 & 0xFFFFFFFFFFFFFFE0;
          v43 = v36 & 0xFFFFFFFFFFFFFFE0;
          if ((v36 & 0x18) != 0)
          {
            goto LABEL_53;
          }

LABEL_56:
          v47 = 2 * v43;
          v48 = v54 + v47 + 1;
          do
          {
            v49 = *(v48 - 1);
            *(v48 - 1) = *v48;
            *v48 = v49;
            v48 += 2;
            v47 += 2;
          }

          while (v47 < v18);
LABEL_58:
          sub_1002B3DD0(v51, v54, v18);
          if (++v35 == v8)
          {
            goto LABEL_38;
          }
        }

        v37 = 0;
LABEL_53:
        v44 = v54 + 2 * v37;
        v45 = v37 - (v36 & 0xFFFFFFFFFFFFFFF8);
        do
        {
          v56 = vld2_s8(v44);
          v46 = v56.val[0];
          vst2_s8(v44, *(&v56 + 8));
          v44 += 16;
          v45 += 8;
        }

        while (v45);
        v43 = v36 & 0xFFFFFFFFFFFFFFF8;
        if (v36 == (v36 & 0xFFFFFFFFFFFFFFF8))
        {
          goto LABEL_58;
        }

        goto LABEL_56;
      }

      for (k = 0; k != v8; ++k)
      {
        memcpy(v54, (*(a2 + 16) + **(a2 + 72) * k), v18);
        sub_1002B3DD0(v51, v54, v18);
      }
    }
  }

  else
  {
    sub_1002B3DD0(v51, __src, v18 * v8);
  }

LABEL_38:
  sub_1002B3BD0(v51);
  if (v52 != v54 && v52)
  {
    operator delete[]();
  }

  v22 = 1;
LABEL_42:
  sub_1002B3C80(v51);
  return v22;
}

void sub_1002BC098(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_1002B3C80(va);
  _Unwind_Resume(a1);
}

void sub_1002BC0FC(uint64_t a1)
{
  sub_1002A85B8(a1);

  operator delete();
}

uint64_t sub_1002BC134(char *a1, char *a2, unsigned int a3, int a4, int a5)
{
  if (a4 == 1)
  {
    if (a5 != 2)
    {
      if (!a5)
      {
        sub_1002C5924(a1, 0, a2, 0, a3 | &_mh_execute_header, 2);
        return 1;
      }

      return 0;
    }

    sub_1002C5BE4(a1, 0, a2, 0, a3 | &_mh_execute_header, 3, 2);
    return 1;
  }

  else
  {
    if (a4 != 3)
    {
      return 0;
    }

    if (a5 != 2)
    {
      if (!a5)
      {
        sub_1002C6134(a1, 0, a2, 0, a3 | &_mh_execute_header);
        return 1;
      }

      return 0;
    }

    sub_1002C62D4(a1, 0, a2, 0, a3 | &_mh_execute_header);
    return 1;
  }
}

uint64_t sub_1002BC22C(void *a1)
{
  v1 = a1[2];
  if (v1)
  {
    v2 = a1;
    (*(*v1 + 8))(a1[2]);
    a1 = v2;
  }

  v3 = *(*a1 + 8);

  return v3();
}

uint64_t sub_1002BC2C8(void *a1)
{
  v1 = a1[2];
  if (v1)
  {
    v2 = a1;
    (*(*v1 + 8))(a1[2]);
    a1 = v2;
  }

  v3 = *(*a1 + 8);

  return v3();
}

uint64_t sub_1002BC34C(uint64_t a1)
{
  sub_1002B43DC(a1);
  *v2 = off_1004768C8;
  v3 = v2 + 5;
  sub_1002A8124(v2 + 5);
  *sub_1002A80E0(v3, 8) = 0xA1A0A0D474E5089;
  *(a1 + 192) = 0;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 152) = 1;
  *(a1 + 200) = 0;
  *(a1 + 156) = 0;
  return a1;
}

uint64_t sub_1002BC3EC(void *a1)
{
  *a1 = off_1004768C8;
  v2 = a1[23];
  if (v2)
  {
    fclose(v2);
    a1[23] = 0;
  }

  if (a1[20])
  {
    v7 = a1[20];
    v3 = a1[21];
    v5 = a1[22];
    v6 = v3;
    sub_10037CE44(&v7, &v6, &v5);
    a1[20] = 0;
    a1[21] = 0;
    a1[22] = 0;
  }

  return sub_1002B4AA0(a1);
}

void sub_1002BC47C(void *a1)
{
  *a1 = off_1004768C8;
  v2 = a1[23];
  if (v2)
  {
    fclose(v2);
    a1[23] = 0;
  }

  if (a1[20])
  {
    v6 = a1[20];
    v3 = a1[21];
    v4 = a1[22];
    v5 = v3;
    sub_10037CE44(&v6, &v5, &v4);
    a1[20] = 0;
    a1[21] = 0;
    a1[22] = 0;
  }

  sub_1002B4AA0(a1);
  operator delete();
}

void *sub_1002BC6D4(uint64_t a1, void *a2, size_t a3)
{
  v6 = sub_100376E68(a1);
  v7 = v6;
  if (!v6)
  {
    v13[0] = 0;
    v13[1] = 0;
    v8 = sub_1002A80E0(v13, 7);
    *v8 = 1868784996;
    *(v8 + 3) = 1919247471;
    sub_1002A8980(-215, v13, "readDataFromBuf", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgcodecs/src/grfmt_png.cpp", 131);
  }

  v9 = *(v6 + 200);
  v10 = v9 + a3;
  v11 = *(v6 + 60);
  if (v11 < 1)
  {
    if (!v10)
    {
      goto LABEL_5;
    }

LABEL_7:
    sub_10037A948(a1, "PNG input buffer is incomplete");
  }

  if (v10 > *(*(v6 + 128) + 8 * v11 - 8) * *(v6 + 64) * *(v6 + 68))
  {
    goto LABEL_7;
  }

LABEL_5:
  result = memcpy(a2, (*(v6 + 72) + v9), a3);
  *(v7 + 200) += a3;
  return result;
}

uint64_t sub_1002BC7F8(uint64_t a1)
{
  v48 = 0;
  v2 = *(a1 + 184);
  if (v2)
  {
    fclose(v2);
    *(a1 + 184) = 0;
  }

  v3 = (a1 + 160);
  if (*(a1 + 160))
  {
    v51 = *(a1 + 160);
    v4 = *(a1 + 168);
    v49 = *(a1 + 176);
    v50 = v4;
    sub_10037CE44(&v51, &v50, &v49);
    *v3 = 0;
    *(a1 + 168) = 0;
    *(a1 + 176) = 0;
  }

  v5 = sub_10037BDE8("1.6.34", 0, 0, 0);
  if (v5)
  {
    v6 = v5;
    v7 = sub_100376918(v5);
    v8 = sub_100376918(v6);
    *(a1 + 160) = v6;
    *(a1 + 168) = v7;
    *(a1 + 176) = v8;
    *(a1 + 200) = 0;
    if (v7)
    {
      if (v8)
      {
        v9 = sub_10037B6FC(v6, &_longjmp, 0xC0uLL);
        if (!setjmp(v9))
        {
          if (!*(a1 + 72))
          {
            goto LABEL_59;
          }

          v13 = *(a1 + 60);
          if (v13 >= 3)
          {
            v15 = *(a1 + 120);
            v16 = v13 & 0x7FFFFFFE;
            v17 = (v15 + 4);
            v18 = 1;
            v19 = 1;
            do
            {
              v20 = v18 * *(v17 - 1);
              v18 = v20;
              v21 = v19 * *v17;
              v19 = v21;
              v17 += 2;
              v16 -= 2;
            }

            while (v16);
            v22 = v21 * v20;
            if (v13 == (v13 & 0x7FFFFFFE))
            {
              v14 = v21 * v20;
            }

            else
            {
              v23 = (v15 + 8 * ((v13 >> 1) & 0x3FFFFFFF));
              v24 = v13 - (v13 & 0x7FFFFFFE);
              do
              {
                v25 = *v23++;
                v22 *= v25;
                v14 = v22;
                --v24;
              }

              while (v24);
            }
          }

          else
          {
            v14 = *(a1 + 68) * *(a1 + 64);
          }

          if (v13 && v14)
          {
            sub_10037D010(v6, a1, sub_1002BC6D4);
          }

          else
          {
LABEL_59:
            if (*(a1 + 24))
            {
              v26 = *(a1 + 24);
            }

            else
            {
              v26 = "";
            }

            v27 = fopen(v26, "rb");
            *(a1 + 184) = v27;
            if (v27)
            {
              sub_100376E74(v6, v27);
            }
          }

          if (*(a1 + 72))
          {
            v28 = *(a1 + 60);
            if (v28 >= 3)
            {
              v30 = *(a1 + 120);
              v31 = v28 & 0x7FFFFFFE;
              v32 = (v30 + 4);
              v33 = 1;
              v34 = 1;
              do
              {
                v35 = v33 * *(v32 - 1);
                v33 = v35;
                v36 = v34 * *v32;
                v34 = v36;
                v32 += 2;
                v31 -= 2;
              }

              while (v31);
              v37 = v36 * v35;
              if (v28 == (v28 & 0x7FFFFFFE))
              {
                v29 = v36 * v35;
              }

              else
              {
                v38 = (v30 + 8 * ((v28 >> 1) & 0x3FFFFFFF));
                v39 = v28 - (v28 & 0x7FFFFFFE);
                do
                {
                  v40 = *v38++;
                  v37 *= v40;
                  v29 = v37;
                  --v39;
                }

                while (v39);
              }
            }

            else
            {
              v29 = *(a1 + 68) * *(a1 + 64);
            }

            if (v28 && v29)
            {
              goto LABEL_45;
            }
          }

          if (*(a1 + 184))
          {
LABEL_45:
            LODWORD(v49) = 0;
            v47 = 0;
            v46 = 0;
            v45 = 0;
            v50 = 0;
            v51 = 0;
            sub_10037BE48(v6, v7);
            sub_10037B8E8(v6, v7, &v49, &v47, &v46 + 1, &v46, 0, 0, 0);
            v41 = HIDWORD(v46);
            v42 = v47;
            *(a1 + 8) = v49;
            *(a1 + 12) = v42;
            v43 = v46;
            *(a1 + 192) = v46;
            *(a1 + 156) = v41;
            if (v41 < 9 || v41 == 16)
            {
              if ((v43 - 2) < 2)
              {
                sub_10037B988(v6, v7, &v51, &v45, &v50);
                if (v45 < 1)
                {
                  *(a1 + 16) = 16;
                  v44 = 18;
                  if (HIDWORD(v46) != 16)
                  {
                    goto LABEL_54;
                  }

                  goto LABEL_53;
                }
              }

              else if (v43 != 4 && v43 != 6)
              {
                *(a1 + 16) = 0;
                v44 = 2;
                if (HIDWORD(v46) != 16)
                {
                  goto LABEL_54;
                }

                goto LABEL_53;
              }

              *(a1 + 16) = 24;
              v44 = 26;
              if (HIDWORD(v46) != 16)
              {
LABEL_54:
                v48 = 1;
                goto LABEL_9;
              }

LABEL_53:
              *(a1 + 16) = v44;
              goto LABEL_54;
            }
          }
        }
      }
    }
  }

LABEL_9:
  if ((v48 & 1) == 0)
  {
    v10 = *(a1 + 184);
    if (v10)
    {
      fclose(v10);
      *(a1 + 184) = 0;
    }

    if (*v3)
    {
      v51 = *v3;
      v11 = *(a1 + 168);
      v49 = *(a1 + 176);
      v50 = v11;
      sub_10037CE44(&v51, &v50, &v49);
      *v3 = 0;
      *(a1 + 168) = 0;
      *(a1 + 176) = 0;
    }
  }

  return v48;
}

uint64_t sub_1002BCBC4(uint64_t a1, int *a2)
{
  v28 = 0;
  if (*(a1 + 12) >= 0x89u)
  {
    operator new[]();
  }

  v5 = (a1 + 160);
  v4 = *(a1 + 160);
  if (v4)
  {
    v6 = *(a1 + 168);
    if (v6)
    {
      v7 = *(a1 + 176);
      if (v7)
      {
        if (*(a1 + 8))
        {
          if (*(a1 + 12))
          {
            v8 = *a2;
            v9 = sub_10037B6FC(*(a1 + 160), &_longjmp, 0xC0uLL);
            if (!setjmp(v9))
            {
              if ((*a2 & 7) != 0 || *(a1 + 156) != 16)
              {
                sub_1003888FC(v4);
              }

              else
              {
                sub_10037D070(v4);
              }

              if ((*a2 & 0xFF8u) > 0x17)
              {
                sub_10037D0D0(v4);
              }

              else
              {
                sub_10037D0A0(v4);
              }

              v10 = *(a1 + 192);
              if (v10 == 3)
              {
                sub_10037D0D0(v4);
                v10 = *(a1 + 192);
              }

              v11 = v8 & 0xFF8;
              if ((v10 & 2) != 0)
              {
                if (!v11)
                {
LABEL_26:
                  sub_10037D2BC(v4, 1, 0.299, 0.587);
LABEL_27:
                  sub_100388944(v4);
                  sub_10037C320(v4, v6);
                  v12 = *(a1 + 12);
                  if (v12 >= 1)
                  {
                    v13 = *(a2 + 10);
                    v14 = *(a2 + 2);
                    if (v12 == 1)
                    {
                      v15 = 0;
                    }

                    else
                    {
                      v16 = *(a2 + 2);
                      v15 = v12 & 0x7FFFFFFE;
                      v17 = &v27;
                      v18 = v15;
                      do
                      {
                        *(v17 - 1) = v16;
                        *v17 = v16 + v13;
                        v16 += 2 * v13;
                        v17 += 2;
                        v18 -= 2;
                      }

                      while (v18);
                      if ((v12 & 0x7FFFFFFE) == v12)
                      {
                        goto LABEL_35;
                      }
                    }

                    v19 = &(&v26)[v15];
                    v20 = (v14 + v15 * v13);
                    v21 = v12 - v15;
                    v22 = v20;
                    do
                    {
                      *v19++ = v22;
                      v22 += v13;
                      --v21;
                    }

                    while (v21);
                  }

LABEL_35:
                  sub_10037C7A0(v4, &v26);
                  sub_10037C8A4(v4, v7);
                  v28 = 1;
                  goto LABEL_36;
                }
              }

              else if (*(a1 + 156) > 7 || (sub_10037D108(v4), (*(a1 + 192) & 2) == 0) || !v11)
              {
                if (v11)
                {
                  sub_10037D138(v4);
                  goto LABEL_27;
                }

                goto LABEL_26;
              }

              sub_1003888E8(v4);
              goto LABEL_27;
            }
          }
        }
      }
    }
  }

LABEL_36:
  v23 = *(a1 + 184);
  if (v23)
  {
    fclose(v23);
    *(a1 + 184) = 0;
  }

  if (*v5)
  {
    v31 = *v5;
    v24 = *(a1 + 168);
    v29 = *(a1 + 176);
    v30 = v24;
    sub_10037CE44(&v31, &v30, &v29);
    *v5 = 0;
    *(a1 + 168) = 0;
    *(a1 + 176) = 0;
  }

  return v28;
}

void sub_1002BCEA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a9 != v9 && a9 != 0)
  {
    operator delete[]();
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1002BCED8(uint64_t a1)
{
  sub_1002B4744(a1);
  *v2 = off_100476938;
  v3 = v2 + 1;
  sub_1002A8124(v2 + 1);
  qmemcpy(sub_1002A80E0(v3, 39), "Portable Network Graphics files (*.png)", 39);
  *(a1 + 48) = 1;
  return a1;
}

uint64_t *sub_1002BCF68(uint64_t *a1)
{
  *a1 = off_100475B70;
  sub_1002A8124(a1 + 7);
  sub_1002A8124(a1 + 3);
  sub_1002A8124(a1 + 1);
  return a1;
}

void sub_1002BCFC8(uint64_t *a1)
{
  *a1 = off_100475B70;
  sub_1002A8124(a1 + 7);
  sub_1002A8124(a1 + 3);
  sub_1002A8124(a1 + 1);

  operator delete();
}

void *sub_1002BD1F8(void *result, const void *a2, size_t a3)
{
  if (a3)
  {
    v5 = sub_100376E68(result);
    v6 = v5;
    if (!v5 || (v7 = *(v5 + 40)) == 0)
    {
      v13[0] = 0;
      v13[1] = 0;
      qmemcpy(sub_1002A80E0(v13, 25), "encoder && encoder->m_buf", 25);
      sub_1002A8980(-215, v13, "writeDataToBuf", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgcodecs/src/grfmt_png.cpp", 328);
    }

    v8 = v7[1];
    v9 = &v8[-*v7];
    v10 = &v9[a3];
    if (v9 >= &v9[a3])
    {
      if (v9 > &v9[a3])
      {
        v7[1] = &v10[*v7];
      }
    }

    else
    {
      v11 = v7[2];
      if (v11 - v8 < a3)
      {
        if ((v10 & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_10000918C();
      }

      v12 = &v8[a3];
      bzero(v8, a3);
      v7[1] = v12;
    }

    return memcpy(&v9[**(v6 + 40)], a2, a3);
  }

  return result;
}

void sub_1002BD3C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1002A8124(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1002BD3DC(uint64_t a1, unsigned int *a2, uint64_t *a3)
{
  v6 = sub_100389B3C("1.6.34", 0, 0, 0);
  v43 = 0;
  v44 = v6;
  v42 = 0;
  v7 = a2[3];
  v8 = a2[2];
  v9 = *a2;
  v41 = 0;
  v10 = 0;
  if ((v9 & 5) == 0)
  {
    if (v6)
    {
      v11 = v6;
      v12 = sub_100376918(v6);
      v43 = v12;
      if (v12)
      {
        v13 = v12;
        v14 = sub_10037B6FC(v11, &_longjmp, 0xC0uLL);
        if (!setjmp(v14))
        {
          if (*(a1 + 40))
          {
            sub_10038935C(v11, a1, sub_1002BD1F8, nullsub_34);
          }

          else
          {
            if (*(a1 + 24))
            {
              v15 = *(a1 + 24);
            }

            else
            {
              v15 = "";
            }

            v42 = fopen(v15, "wb");
            if (v42)
            {
              sub_100376E74(v11, v42);
            }
          }

          v16 = *a3;
          v17 = a3[1];
          if (v17 != *a3)
          {
            v18 = 0;
            v19 = (v17 - *a3) >> 2;
            v20 = -1;
            v21 = 3;
            v22 = 0;
            while (1)
            {
              v27 = v22;
              v28 = *(v16 + 4 * v22);
              switch(v28)
              {
                case 18:
                  v18 = *(v16 + 4 * v27 + 4) != 0;
                  break;
                case 17:
                  v23 = *(v16 + 4 * v27 + 4) & ~(*(v16 + 4 * v27 + 4) >> 31);
                  if (v23 >= 4)
                  {
                    v24 = 4;
                  }

                  else
                  {
                    v24 = v23;
                  }

                  goto LABEL_17;
                case 16:
                  v24 = 0;
                  if ((*(v16 + 4 * v27 + 4) & ~(*(v16 + 4 * v27 + 4) >> 31)) >= 9)
                  {
                    v20 = 9;
                  }

                  else
                  {
                    v20 = *(v16 + 4 * v27 + 4) & ~(*(v16 + 4 * v27 + 4) >> 31);
                  }

                  goto LABEL_17;
              }

              v24 = v21;
LABEL_17:
              v25 = v18;
              v22 = v27 + 2;
              v26 = v20;
              v21 = v24;
              if (v22 >= v19)
              {
                goto LABEL_27;
              }
            }
          }

          LODWORD(v24) = 3;
          v26 = -1;
          v25 = 0;
LABEL_27:
          if (*(a1 + 40) || v42)
          {
            v29 = v26;
            if (v26 < 0)
            {
              sub_10038A10C(v11, 0, 0x10u);
              v29 = 1;
            }

            sub_10038A310(v11, v29);
            sub_10038A31C(v11, v24);
            v30 = (v9 >> 3) & 0x1FF;
            if (v25)
            {
              v31 = 1;
            }

            else
            {
              v31 = 8;
            }

            if ((v9 & 7) != 0)
            {
              v32 = 16;
            }

            else
            {
              v32 = v31;
            }

            if (v30 == 2)
            {
              v33 = 2;
            }

            else
            {
              v33 = 6;
            }

            if (v30)
            {
              v34 = v33;
            }

            else
            {
              v34 = 0;
            }

            sub_100387868(v11, v13, v7, v8, v32, v34, 0, 0, 0);
            sub_100389590(v11, v13);
            if (v25)
            {
              sub_10038891C(v11);
            }

            sub_1003888E8(v11);
            sub_1003888FC(v11);
            if (v8 > 0x88)
            {
              operator new[]();
            }

            if (v8 >= 1)
            {
              v35 = *(a2 + 10);
              v36 = v8;
              v37 = 0;
              v38 = v40;
              do
              {
                *v38++ = *(a2 + 2) + v37;
                v37 += v35;
                --v36;
              }

              while (v36);
            }

            sub_100389F50(v11, v40);
            sub_100389908(v11, v13);
            v41 = 1;
          }
        }
      }
    }

    sub_10038A044(&v44, &v43);
    if (v42)
    {
      fclose(v42);
    }

    return v41;
  }

  return v10;
}

void sub_1002BD7D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10 != v10 && a10 != 0)
  {
    operator delete[]();
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1002BD824(void *a1)
{
  v1 = a1[2];
  if (v1)
  {
    v2 = a1;
    (*(*v1 + 8))(a1[2]);
    a1 = v2;
  }

  v3 = *(*a1 + 8);

  return v3();
}

uint64_t sub_1002BD8C0(void *a1)
{
  v1 = a1[2];
  if (v1)
  {
    v2 = a1;
    (*(*v1 + 8))(a1[2]);
    a1 = v2;
  }

  v3 = *(*a1 + 8);

  return v3();
}

uint64_t sub_1002BD944(uint64_t a1)
{
  sub_1002B43DC(a1);
  *v2 = off_100476A40;
  sub_1002B2A0C((v2 + 20));
  *(a1 + 160) = off_100475928;
  *(a1 + 152) = 1;
  *(a1 + 1248) = 0xFFFFFFFF00000000;
  *(a1 + 1256) = 0;
  *(a1 + 1260) = 0;
  return a1;
}

uint64_t sub_1002BD9D4(void *a1)
{
  *a1 = off_100476A40;
  v2 = (a1 + 20);
  sub_1002B30EC((a1 + 20));
  sub_1002B31A0(v2);

  return sub_1002B4AA0(a1);
}

void sub_1002BDA3C(void *a1)
{
  *a1 = off_100476A40;
  v2 = (a1 + 20);
  sub_1002B30EC((a1 + 20));
  sub_1002B31A0(v2);
  sub_1002B4AA0(a1);

  operator delete();
}

BOOL sub_1002BDAC0(uint64_t a1, void *a2)
{
  if (a2[1] < 3uLL)
  {
    return 0;
  }

  v2 = *a2;
  if (**a2 != 80 || v2[1] - 49 > 5)
  {
    return 0;
  }

  v3 = v2[2];
  if (v3 < 0)
  {
    return __maskrune(v3, 0x4000uLL) != 0;
  }

  else
  {
    return (_DefaultRuneLocale.__runetype[v3] & 0x4000) != 0;
  }
}

FILE *sub_1002BDCEC(uint64_t a1)
{
  if (!*(a1 + 72))
  {
    goto LABEL_13;
  }

  v2 = *(a1 + 60);
  if (v2 >= 3)
  {
    v4 = *(a1 + 120);
    v5 = (v4 + 4);
    v6 = 1;
    v7 = v2 & 0x7FFFFFFE;
    v8 = 1;
    do
    {
      v6 *= *(v5 - 1);
      v8 *= *v5;
      v5 += 2;
      v7 -= 2;
    }

    while (v7);
    v3 = v8 * v6;
    v9 = v2 - (v2 & 0x7FFFFFFE);
    if (v9)
    {
      v10 = (v4 + 8 * ((v2 >> 1) & 0x3FFFFFFF));
      do
      {
        v11 = *v10++;
        v3 *= v11;
        --v9;
      }

      while (v9);
    }
  }

  else
  {
    v3 = *(a1 + 68) * *(a1 + 64);
  }

  if (v2 && v3)
  {
    if ((sub_1002B2F4C(a1 + 160, a1 + 56) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
LABEL_13:
    result = sub_1002B2E6C(a1 + 160, (a1 + 24));
    if (!result)
    {
      return result;
    }
  }

  if (sub_1002B32E0((a1 + 160)) != 80)
  {
    exception = __cxa_allocate_exception(0x58uLL);
    sub_1001FA81C(v23, "Invalid header");
    sub_1001FA81C(v22, "readHeader");
    sub_1001FA81C(v21, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgcodecs/src/grfmt_pxm.cpp");
    sub_1002A833C(exception, -2, v23, v22, v21, 155);
    *exception = &off_100476820;
  }

  v13 = sub_1002B32E0((a1 + 160));
  v14 = v13 - 49;
  if (v13 - 49 >= 6)
  {
    v19 = __cxa_allocate_exception(0x58uLL);
    sub_1001FA81C(v23, "Invalid header");
    sub_1001FA81C(v22, "readHeader");
    sub_1001FA81C(v21, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgcodecs/src/grfmt_pxm.cpp");
    sub_1002A833C(v19, -2, v23, v22, v21, 163);
    *v19 = &off_100476820;
  }

  v15 = dword_1003E658C[v14];
  v16 = dword_1003E65A4[v14];
  *(a1 + 1248) = v15;
  *(a1 + 1256) = v13 > 0x33;
  *(a1 + 16) = v16;
  *(a1 + 8) = sub_1002BE240((a1 + 160), 0);
  *(a1 + 12) = sub_1002BE240((a1 + 160), 0);
  if (*(a1 + 1248) == 1)
  {
    v17 = 1;
    *(a1 + 1260) = 1;
  }

  else
  {
    v17 = sub_1002BE240((a1 + 160), 0);
    *(a1 + 1260) = v17;
    if (v17 >= 0x10000)
    {
      v20 = __cxa_allocate_exception(0x58uLL);
      sub_1001FA81C(v23, "Invalid header");
      sub_1001FA81C(v22, "readHeader");
      sub_1001FA81C(v21, "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgcodecs/src/grfmt_pxm.cpp");
      sub_1002A833C(v20, -2, v23, v22, v21, 174);
      *v20 = &off_100476820;
    }

    if (v17 >= 256)
    {
      *(a1 + 16) = *(a1 + 16) & 0xFF8 | 2;
    }
  }

  if (*(a1 + 8) < 1 || *(a1 + 12) < 1 || v17 < 1)
  {
    *(a1 + 1252) = -1;
    *(a1 + 8) = -1;
    sub_1002B30EC(a1 + 160);
    return 0;
  }

  else
  {
    *(a1 + 1252) = sub_1002B2E50((a1 + 160));
    return 1;
  }
}

void sub_1002BE0C8(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  sub_1002A8124(&a9);
  sub_1002A8124(&a11);
  sub_1002A8124(&a13);
  if (v14)
  {
    __cxa_free_exception(v13);
  }

  __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    __cxa_rethrow();
  }

  v17 = sub_100241184(&std::cerr, "PXM::readHeader(): unknown C++ exception", 40);
  sub_100241C10(v17);
  std::ostream::flush();
  __cxa_rethrow();
}

uint64_t sub_1002BE240(void *a1, int a2)
{
LABEL_1:
  v4 = sub_1002B32E0(a1);
  while (1)
  {
LABEL_2:
    if (v4 > 0xFF)
    {
LABEL_6:
      if (!__maskrune(v4, 0x4000uLL))
      {
        goto LABEL_26;
      }

      goto LABEL_7;
    }

    v5 = _DefaultRuneLocale.__runetype[v4];
    if ((v5 & 0x400) != 0)
    {
      break;
    }

    if (v4 == 35)
    {
      do
      {
        v6 = sub_1002B32E0(a1);
      }

      while (v6 != 10 && v6 != 13);
      goto LABEL_1;
    }

    if (v4 > 0x7F)
    {
      goto LABEL_6;
    }

    if ((v5 & 0x4000) == 0)
    {
LABEL_26:
      sub_1002A8688(v10, "PXM: Unexpected code in ReadNumber(): 0x%x (%d)", v4, HIDWORD(v4));
      sub_1002BF15C(v10, "ReadNumber", 80);
    }

LABEL_7:
    if (v4 <= 0x7F)
    {
      goto LABEL_10;
    }

    while (__maskrune(v4, 0x4000uLL))
    {
      while (1)
      {
        v4 = sub_1002B32E0(a1);
        if (v4 > 0x7F)
        {
          break;
        }

LABEL_10:
        if ((_DefaultRuneLocale.__runetype[v4] & 0x4000) == 0)
        {
          goto LABEL_2;
        }
      }
    }
  }

  if (a2)
  {
    return (v4 - 48);
  }

  v7 = 0;
  do
  {
    v7 = 10 * v7 + v4 - 48;
    if (v7 >= 0x80000000)
    {
      v10[0] = 0;
      v10[1] = 0;
      qmemcpy(sub_1002A80E0(v10, 61), "val <= 2147483647 && PXM: ReadNumber(): result is too large", 61);
      sub_1002A8980(-215, v10, "ReadNumber", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgcodecs/src/grfmt_pxm.cpp", 90);
    }

    v8 = sub_1002B32E0(a1);
    if (v8 > 0xFF)
    {
      break;
    }

    LODWORD(v4) = v8;
  }

  while ((_DefaultRuneLocale.__runetype[v8] & 0x400) != 0);
  return v7;
}

void sub_1002BE420(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1002A8124(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1002BE44C(uint64_t a1, int *a2)
{
  if ((*(a1 + 1252) & 0x80000000) != 0)
  {
    return 0;
  }

  v4 = *a2;
  v5 = *(a2 + 2);
  v6 = *(a1 + 16);
  v7 = *(a1 + 8);
  v8 = *(a1 + 1248);
  result = sub_1002B29A4(a1 + 160);
  if (!result)
  {
    return result;
  }

  v10 = 0x442211088uLL >> (4 * (v6 & 7));
  v11 = v10 & 0x78;
  memset(v122, 0, 256);
  if (v11 == 8)
  {
    v12 = *(a1 + 1260);
    if (v12 >= 256)
    {
      v116 = 0;
      v117 = 0;
      qmemcpy(sub_1002A80E0(&v116, 14), "m_maxval < 256", 14);
      sub_1002A8980(-215, &v116, "readData", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgcodecs/src/grfmt_pxm.cpp", 226);
    }

    v13 = *(a1 + 1248);
    if ((v12 & 0x80000000) != 0)
    {
      goto LABEL_20;
    }

    if (v13 == 1)
    {
      v14 = -1;
    }

    else
    {
      v14 = 0;
    }

    v15 = v12 + 1;
    if (v12)
    {
      v16 = 0;
      v17 = v15 & 0xFFFFFFFE;
      v18 = &v122[1];
      do
      {
        *(v18 - 1) = (v16 / v12) ^ v14;
        *v18 = ((v16 + 255) / v12) ^ v14;
        v18 += 2;
        v16 += 510;
      }

      while (510 * (v15 >> 1) != v16);
      if (v17 == v15)
      {
LABEL_20:
        if (v13 == 1)
        {
          v22 = 1;
        }

        else
        {
          v22 = 8;
        }

        sub_1002C7958(v123, v22, v13 == 1);
        goto LABEL_24;
      }
    }

    else
    {
      v17 = 0;
    }

    v19 = 255 * v17;
    v20 = &v122[v17];
    v21 = v15 - v17;
    do
    {
      *v20++ = (v19 / v12) ^ v14;
      v19 += 255;
      --v21;
    }

    while (v21);
    goto LABEL_20;
  }

LABEL_24:
  sub_1002B2E24(a1 + 160, *(a1 + 1252));
  v23 = v4 & 0xFF8;
  v115 = (v8 * v7 * ((v10 >> 3) & 0xF) + 7) >> 3;
  v24 = *(a1 + 1248);
  if (v24 == 1)
  {
    if ((*(a1 + 16) & 7) != 0)
    {
      v116 = 0;
      v117 = 0;
      qmemcpy(sub_1002A80E0(&v116, 32), "((m_type) & ((1 << 3) - 1)) == 0", 32);
      sub_1002A8980(-215, &v116, "readData", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgcodecs/src/grfmt_pxm.cpp", 242);
    }

    if (*(a1 + 1256))
    {
      v116 = &v118;
      v117 = (v8 * v7 * ((v10 >> 3) & 0xF) + 7) >> 3;
      if (v115 >= 0x409)
      {
        operator new[]();
      }

      if (*(a1 + 12) >= 1)
      {
        if ((v4 & 0xFF8) != 0)
        {
          v103 = 0;
          do
          {
            sub_1002B33BC(a1 + 160, &v118, v115);
            sub_1002C815C(v5, &v118, *(a1 + 8), v123);
            ++v103;
            v5 = (v5 + *(a2 + 10));
          }

          while (v103 < *(a1 + 12));
        }

        else
        {
          do
          {
            sub_1002B33BC(a1 + 160, &v118, v115);
            sub_1002C8260(v5, &v118, *(a1 + 8), v122);
            ++v23;
            v5 = (v5 + *(a2 + 10));
          }

          while (v23 < *(a1 + 12));
        }
      }

      if (v116 != &v118 && v116 != 0)
      {
        goto LABEL_176;
      }
    }

    else
    {
      v105 = *(a1 + 8);
      v116 = &v118;
      v117 = v105;
      if (v105 >= 0x409)
      {
        operator new[]();
      }

      if (*(a1 + 12) >= 1)
      {
        v106 = 0;
        if ((v4 & 0xFF8) != 0)
        {
          do
          {
            LODWORD(v107) = *(a1 + 8);
            if (v107 >= 1)
            {
              v108 = 0;
              do
              {
                v119[v108++ - 2] = sub_1002BE240((a1 + 160), 1) != 0;
                v107 = *(a1 + 8);
              }

              while (v108 < v107);
            }

            sub_1002C7FE4(v5, &v118, v107, v123);
            ++v106;
            v5 = (v5 + *(a2 + 10));
          }

          while (v106 < *(a1 + 12));
        }

        else
        {
          do
          {
            LODWORD(v109) = *(a1 + 8);
            if (v109 >= 1)
            {
              v110 = 0;
              do
              {
                v119[v110++ - 2] = sub_1002BE240((a1 + 160), 1) != 0;
                v109 = *(a1 + 8);
              }

              while (v110 < v109);
            }

            sub_1002C8034(v5, &v118, v109, v122);
            ++v106;
            v5 = (v5 + *(a2 + 10));
          }

          while (v106 < *(a1 + 12));
        }
      }

      if (v116 != &v118 && v116 != 0)
      {
        goto LABEL_176;
      }
    }
  }

  else
  {
    if (v24 != 8 && v24 != 24)
    {
      sub_1001FA81C(&v116, "m_bpp is not supported");
      sub_1002BF15C(&v116, "readData", 357);
    }

    v25 = v7 + v7 * ((v6 >> 3) & 0x1FF);
    if (2 * v25 <= v115)
    {
      v26 = v115;
    }

    else
    {
      v26 = 2 * v25;
    }

    v116 = &v118;
    v117 = v26;
    v27 = &v118;
    if (v26 >= 0x409)
    {
      operator new[]();
    }

    if (*(a1 + 12) >= 1)
    {
      v28 = 0;
      v30 = v11 != 16 || v25 < 1;
      v114 = v30;
      v112 = ~&v118;
      v113 = v25 & 0x7FFFFFE0;
      while ((*(a1 + 1256) & 1) == 0)
      {
        if (v25 < 1)
        {
          goto LABEL_82;
        }

        for (i = 0; i != v25; ++i)
        {
          while (1)
          {
            v33 = sub_1002BE240((a1 + 160), 0);
            v34 = *(a1 + 1260);
            if (v33 < v34)
            {
              v34 = v33;
            }

            if (v11 == 8)
            {
              break;
            }

            *&v119[2 * i++ - 2] = v34;
            if (v25 == i)
            {
              goto LABEL_65;
            }
          }

          v119[i - 2] = v122[v34];
        }

LABEL_65:
        if (v11 == 16 && (*a2 & 7) == 0 && v25 >= 1)
        {
          if (v25 < 4)
          {
            v48 = 0;
            do
            {
LABEL_81:
              v119[v48 - 2] = v119[2 * v48 - 1];
              ++v48;
            }

            while (v25 != v48);
            goto LABEL_82;
          }

          if (v25 >= 0x20)
          {
            v50 = v25 & 0x7FFFFFE0;
            v51 = v120;
            v52 = v121;
            do
            {
              v54 = v52[-2];
              v53 = v52[-1];
              v56 = *v52;
              v55 = v52[1];
              v52 += 4;
              v51[-1] = vuzp2q_s8(v54, v53);
              *v51 = vuzp2q_s8(v56, v55);
              v51 += 2;
              v50 -= 32;
            }

            while (v50);
            if (v113 == v25)
            {
              goto LABEL_82;
            }

            v48 = v25 & 0x7FFFFFE0;
            v49 = v48;
            if ((v25 & 0x1C) == 0)
            {
              goto LABEL_81;
            }
          }

          else
          {
            v49 = 0;
          }

          v57 = &v119[2 * v49 - 2];
          v58 = &v119[v49 - 2];
          v59 = v49 - (v25 & 0x7FFFFFFC);
          do
          {
            v60 = *v57++;
            v61 = vshr_n_u16(v60, 8uLL);
            *v58++ = vuzp1_s8(v61, v61).u32[0];
            v59 += 4;
          }

          while (v59);
          v48 = v25 & 0x7FFFFFFC;
          if (v48 != v25)
          {
            goto LABEL_81;
          }
        }

LABEL_82:
        v62 = *a2;
        if (*(a1 + 1248) != 8)
        {
          v72 = *a2 & 7;
          v73 = *(a1 + 8);
          if (v23)
          {
            if (v72)
            {
              sub_1002C62D4(&v118, 0, v5, 0, v73 | &_mh_execute_header);
            }

            else
            {
              sub_1002C6134(&v118, 0, v5, 0, v73 | &_mh_execute_header);
            }
          }

          else if (v72)
          {
            sub_1002C5BE4(&v118, 0, v5, 0, v73 | &_mh_execute_header, 3, 2);
          }

          else
          {
            sub_1002C5924(&v118, 0, v5, 0, v73 | &_mh_execute_header, 2);
          }

          goto LABEL_41;
        }

        if (v23)
        {
          v63 = *(a1 + 8);
          if ((v62 & 7) != 0)
          {
            if (v63 >= 1)
            {
              v64 = &v119[2 * v63 - 2];
              v65 = v119;
              if (v64 > v119)
              {
                v65 = v64;
              }

              v66 = &v65[v112];
              v67 = &v118;
              v68 = v5;
              if (&v65[v112] < 6)
              {
                goto LABEL_129;
              }

              v69 = v5 >= &v119[v66 & 0xFFFFFFFFFFFFFFFELL] || &v118 >= v5 + 3 * (v66 >> 1) + 3;
              v67 = &v118;
              v68 = v5;
              if (!v69)
              {
                goto LABEL_129;
              }

              v70 = (v66 >> 1) + 1;
              if (v66 >= 0x1E)
              {
                v71 = v70 & 0xFFFFFFFFFFFFFFF0;
                v80 = v5;
                v81 = v70 & 0xFFFFFFFFFFFFFFF0;
                v82 = v120;
                do
                {
                  v129.val[0] = v82[-1];
                  v131.val[0] = *v82;
                  v129.val[1] = v129.val[0];
                  v129.val[2] = v129.val[0];
                  v131.val[1] = *v82;
                  v131.val[2] = *v82;
                  v83 = v80 + 48;
                  vst3q_s16(v80, v129);
                  v84 = v80 + 24;
                  vst3q_s16(v84, v131);
                  v82 += 2;
                  v80 = v83;
                  v81 -= 16;
                }

                while (v81);
                if (v70 == v71)
                {
                  goto LABEL_41;
                }

                if ((v70 & 0xC) == 0)
                {
                  v68 = (v5 + 6 * v71);
                  v67 = &v119[2 * v71 - 2];
LABEL_129:
                  v98 = v68 + 1;
                  do
                  {
                    v99 = *v67++;
                    *v98 = v99;
                    *(v98 - 1) = v99;
                    *(v98 - 2) = v99;
                    v98 += 3;
                  }

                  while (v67 < v64);
                  goto LABEL_41;
                }
              }

              else
              {
                v71 = 0;
              }

              v67 = &v119[2 * (v70 & 0xFFFFFFFFFFFFFFFCLL) - 2];
              v68 = (v5 + 6 * (v70 & 0xFFFFFFFFFFFFFFFCLL));
              v85 = &v119[2 * v71 - 2];
              v86 = v71 - (v70 & 0xFFFFFFFFFFFFFFFCLL);
              v87 = v5 + 3 * v71;
              do
              {
                v88 = *v85++;
                v127.val[0] = v88;
                v127.val[1] = v88;
                v127.val[2] = v88;
                vst3_s16(v87, v127);
                v87 += 12;
                v86 += 4;
              }

              while (v86);
              if (v70 == (v70 & 0xFFFFFFFFFFFFFFFCLL))
              {
                goto LABEL_41;
              }

              goto LABEL_129;
            }
          }

          else if (v63 >= 1)
          {
            v74 = &v119[v63 - 2];
            if (v74 <= (&v118 + 1))
            {
              v75 = (&v118 + 1);
            }

            else
            {
              v75 = v74;
            }

            v76 = v75 - &v118;
            v77 = &v118;
            v78 = v5;
            if ((v75 - &v118) >= 8)
            {
              if (v5 >= v75 || (v77 = &v118, v78 = v5, &v118 >= (v5 + 3 * v75 + -3 * &v118)))
              {
                if (v76 >= 0x20)
                {
                  v79 = v76 & 0xFFFFFFFFFFFFFFE0;
                  v89 = v5;
                  v90 = v76 & 0xFFFFFFFFFFFFFFE0;
                  v91 = v120;
                  do
                  {
                    v130.val[0] = v91[-1];
                    v132.val[0] = *v91;
                    v130.val[1] = v130.val[0];
                    v130.val[2] = v130.val[0];
                    v132.val[1] = *v91;
                    v132.val[2] = *v91;
                    v92 = v89 + 96;
                    vst3q_s8(v89, v130);
                    v93 = v89 + 48;
                    vst3q_s8(v93, v132);
                    v91 += 2;
                    v89 = v92;
                    v90 -= 32;
                  }

                  while (v90);
                  if (v76 == v79)
                  {
                    goto LABEL_41;
                  }

                  if ((v76 & 0x18) != 0)
                  {
                    goto LABEL_124;
                  }

                  v78 = (v5 + 3 * v79);
                  v77 = &v119[v79 - 2];
                }

                else
                {
                  v79 = 0;
LABEL_124:
                  v77 = &v119[(v76 & 0xFFFFFFFFFFFFFFF8) - 2];
                  v78 = (v5 + 3 * (v76 & 0xFFFFFFFFFFFFFFF8));
                  v94 = &v119[v79 - 2];
                  v95 = v79 - (v76 & 0xFFFFFFFFFFFFFFF8);
                  v96 = v5 + 3 * v79;
                  do
                  {
                    v97 = *v94++;
                    v128.val[0] = v97;
                    v128.val[1] = v97;
                    v128.val[2] = v97;
                    vst3_s8(v96, v128);
                    v96 += 24;
                    v95 += 8;
                  }

                  while (v95);
                  if (v76 == (v76 & 0xFFFFFFFFFFFFFFF8))
                  {
                    goto LABEL_41;
                  }
                }
              }
            }

            v100 = v78 + 2;
            do
            {
              v101 = *v77;
              v77 = (v77 + 1);
              *v100 = v101;
              *(v100 - 1) = v101;
              *(v100 - 2) = v101;
              v100 += 3;
            }

            while (v77 < v74);
          }
        }

        else
        {
          memcpy(v5, &v118, ((0x88442211uLL >> (4 * (v62 & 7u))) & 0xF) * *(a1 + 8));
        }

LABEL_41:
        ++v28;
        v5 = (v5 + *(a2 + 10));
        if (v28 >= *(a1 + 12))
        {
          v27 = v116;
          goto LABEL_137;
        }
      }

      sub_1002B33BC(a1 + 160, &v118, v115);
      if (v114)
      {
        goto LABEL_82;
      }

      if (v25 < 8)
      {
        v31 = 0;
LABEL_63:
        v44 = &v119[2 * v31 - 1];
        v45 = v25 - v31;
        do
        {
          v46 = *(v44 - 1);
          *(v44 - 1) = *v44;
          *v44 = v46;
          v44 += 2;
          --v45;
        }

        while (v45);
        goto LABEL_65;
      }

      if (v25 >= 0x20)
      {
        v36 = v25 & 0x7FFFFFE0;
        v37 = v121;
        do
        {
          v38 = v37 - 32;
          v125 = vld2q_s8(v38);
          v126 = vld2q_s8(v37);
          v39 = v125.val[0];
          v40 = v126.val[0];
          vst2q_s8(v38, *(&v125 + 16));
          vst2q_s8(v37, *(&v126 + 16));
          v37 += 64;
          v36 -= 32;
        }

        while (v36);
        if (v113 == v25)
        {
          goto LABEL_65;
        }

        v31 = v25 & 0x7FFFFFE0;
        v35 = v31;
        if ((v25 & 0x18) == 0)
        {
          goto LABEL_63;
        }
      }

      else
      {
        v35 = 0;
      }

      v41 = &v119[2 * v35 - 2];
      v42 = v35 - (v25 & 0x7FFFFFF8);
      do
      {
        v124 = vld2_s8(v41);
        v43 = v124.val[0];
        vst2_s8(v41, *(&v124 + 8));
        v41 += 16;
        v42 += 8;
      }

      while (v42);
      v31 = v25 & 0x7FFFFFF8;
      if (v31 == v25)
      {
        goto LABEL_65;
      }

      goto LABEL_63;
    }

LABEL_137:
    if (v27 != &v118 && v27 != 0)
    {
LABEL_176:
      operator delete[]();
    }
  }

  return 1;
}