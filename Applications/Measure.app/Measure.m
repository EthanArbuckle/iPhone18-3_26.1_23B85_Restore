void sub_100002F48()
{
  v0 = objc_opt_class();
  InstanceMethod = class_getInstanceMethod(v0, "interfaceOrientation");
  v2 = class_getInstanceMethod(v0, "xxx_interfaceOrientation");
  Implementation = method_getImplementation(v2);
  TypeEncoding = method_getTypeEncoding(v2);
  if (class_addMethod(v0, "interfaceOrientation", Implementation, TypeEncoding))
  {
    v5 = method_getImplementation(InstanceMethod);
    v6 = method_getTypeEncoding(InstanceMethod);

    class_replaceMethod(v0, "xxx_interfaceOrientation", v5, v6);
  }

  else
  {

    method_exchangeImplementations(InstanceMethod, v2);
  }
}

double sub_100003088(double a1, double a2)
{
  if (a2 <= 3.14159265)
  {
    if (a2 < -3.14159265)
    {
      a2 = a2 + 6.28318531;
    }
  }

  else
  {
    a2 = -(6.28318531 - a2);
  }

  v2 = a2 - a1;
  if (a2 - a1 > 3.14159265)
  {
    return a1 - (6.28318531 - v2);
  }

  if (v2 < -3.14159265)
  {
    return v2 + 6.28318531 + a1;
  }

  return a2;
}

id sub_100003284(uint64_t a1)
{
  v2.receiver = *(a1 + 32);
  v2.super_class = NonRotatingARSCNView;
  return objc_msgSendSuper2(&v2, "layoutSubviews");
}

uint64_t sub_1000065A8(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_100006754(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = v3;
  if (!v3)
  {
    v4 = [*(*(a1 + 32) + 16) path];
    UISaveVideoAtPathToSavedPhotosAlbum(v4, *(a1 + 32), "video:didFinishSavingWithError:contextInfo:", 0);

    v3 = 0;
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    v5 = (*(v5 + 16))(v5, v7);
    v3 = v7;
  }

  return _objc_release_x1(v5, v3);
}

uint64_t sub_1000067E8(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_100006A68(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 24);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "ARScreenRecording: Failed to start screen recording: %@", &v5, 0xCu);
  }
}

void sub_100006CEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_100006D14(va);

  _Unwind_Resume(a1);
}

uint64_t sub_100006D14(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2 && atomic_fetch_add((v2 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(a1);
  }

  *(a1 + 56) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  if (*(a1 + 4) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 64);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 4));
  }

  v5 = *(a1 + 72);
  if (v5 != (a1 + 80))
  {
    j__free(v5);
  }

  return a1;
}

void sub_100006EF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_100006D14(va);

  _Unwind_Resume(a1);
}

void sub_1000070D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_100006D14(va);

  _Unwind_Resume(a1);
}

void sub_10000735C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26)
{
  if (a2)
  {
    sub_100008E3C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000073EC(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = sub_100009304(a1, a2);
  }

  else
  {
    sub_1000092B0(a1, a2);
    result = v3 + 24;
  }

  *(a1 + 8) = result;
  return result;
}

void sub_1000076B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_100007B18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  if (a2)
  {
    sub_100008E3C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_100007C98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void **a13, uint64_t a14, uint64_t a15, char a16)
{
  a13 = &a16;
  sub_100009030(&a13);

  _Unwind_Resume(a1);
}

uint64_t sub_100007D24(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  v3 = *(a1 + 8);
  if (*a1 == v3)
  {
    goto LABEL_22;
  }

  if ((a2 & 0x80000000) != 0)
  {
    sub_1003C8340();
  }

  v5 = *(a1 + 8);
  v6 = a2 & 0x7FFFFFFF;
  v7 = a2;
  while (v6 <= (v4->n128_u64[1] - v4->n128_u64[0]) >> 3)
  {
    v13 = v4;
    v14 = 0;
    v12 = -2130509812;
    sub_10035BADC(&v12, v15);
    if (v16 < v7 && v17 < v7)
    {
      break;
    }

    v4 = (v4 + 24);
    if (v4 == v3)
    {
      return sub_1000085A8(a1, v5, *(a1 + 8));
    }
  }

  if (v4 != v3)
  {
    v9 = (v4 + 24);
    if (&v4[1].n128_i8[8] != v3)
    {
      v5 = v4;
      do
      {
        if (v6 <= (v9->n128_u64[1] - v9->n128_u64[0]) >> 3)
        {
          v13 = v9;
          v14 = 0;
          v12 = -2130509812;
          sub_10035BADC(&v12, v15);
          if (v16 >= v7 || v17 >= v7)
          {
            sub_100009864(v5, v9);
            v5 += 24;
          }
        }

        v9 = (v9 + 24);
      }

      while (v9 != v3);
      return sub_1000085A8(a1, v5, *(a1 + 8));
    }

LABEL_22:
    v5 = v4;
  }

  return sub_1000085A8(a1, v5, *(a1 + 8));
}

void sub_100008070(_Unwind_Exception *a1)
{
  sub_100006D14(v3 - 176);

  _Unwind_Resume(a1);
}

void sub_10000833C(_Unwind_Exception *a1)
{
  sub_100006D14(v2 - 184);

  _Unwind_Resume(a1);
}

void sub_10000856C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1000085A8(uint64_t a1, uint64_t a2, __n128 *a3)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *(a1 + 8);
    v7 = a2;
    if (a3 != v6)
    {
      do
      {
        sub_100009864(v7, v4);
        v4 = (v4 + 24);
        v7 += 24;
      }

      while (v4 != v6);
      v6 = *(a1 + 8);
    }

    if (v6 != v7)
    {
      v8 = v6;
      do
      {
        v10 = v8[-2].n128_u64[1];
        v8 = (v8 - 24);
        v9 = v10;
        if (v10)
        {
          v6[-1].n128_u64[0] = v9;
          operator delete(v9);
        }

        v6 = v8;
      }

      while (v8 != v7);
    }

    *(a1 + 8) = v7;
  }

  return a2;
}

uint64_t sub_100008958(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return 0;
  }

  else
  {
    return dword_1003D2F44[a1 - 1];
  }
}

void sub_10000897C(const void **a1, void *a2, _DWORD *a3, int a4)
{
  v5 = 0;
  __src = 0;
  v70 = 0;
  v71 = 0;
  __p = 0;
  v67 = 0;
  v68 = 0;
  v6 = (a2[1] - *a2) >> 3;
  if (v6 >= 0x14)
  {
    v7 = v6 - 20;
  }

  else
  {
    v7 = 0;
  }

  if (v6 >= 0x15)
  {
    v11 = 0;
    v12 = 0.0;
    v13 = 0xFFFFFFFFLL;
    do
    {
      v14 = (*a2 + 8 * v11);
      v15 = vcvt_f32_s32(*v14);
      v16 = vcvt_f32_s32(v14[10]);
      v17 = vcvt_f32_s32(v14[20]);
      v18 = vsub_f32(v16, v15);
      v19 = vsub_f32(v17, v15);
      v20 = vmul_f32(v19, v19);
      v21 = vmul_f32(v18, v18);
      v22 = vsub_f32(v17, v16);
      v23 = vmul_f32(v22, v22);
      v24 = vadd_f32(vzip1_s32(v23, v21), vzip2_s32(v23, v21));
      v25 = sqrtf(fabsf(vmul_f32(v24, vmul_lane_f32(vadd_f32(v20, vdup_lane_s32(v20, 1)), v24, 1)).f32[0]));
      if (v25 != 0.0)
      {
        v19.f32[0] = vmuls_lane_f32(-v19.f32[0], v18, 1);
        v26 = ((v19.f32[0] + (v18.f32[0] * v19.f32[1])) + (v19.f32[0] + (v18.f32[0] * v19.f32[1]))) / v25;
        v27 = fabsf(v26);
        if (v27 >= 0.08)
        {
          if (v27 > fabsf(v12))
          {
            if (v11 + 10 >= 0x7FFFFFFF)
            {
              __assert_rtn("safeSignedCast", "OpenCVWrapperInternal.h", 67, "value < INT_MAX && size_t outside of valid range to cast to int");
            }

            v13 = (v11 + 10);
            v12 = v26;
          }
        }

        else if ((v13 & 0x80000000) == 0)
        {
          v28 = v70;
          if (v70 >= v71)
          {
            v30 = __src;
            v31 = v70 - __src;
            v32 = (v70 - __src) >> 3;
            v33 = v32 + 1;
            if ((v32 + 1) >> 61)
            {
              sub_10000918C();
            }

            v34 = v71 - __src;
            if ((v71 - __src) >> 2 > v33)
            {
              v33 = v34 >> 2;
            }

            v35 = v34 >= 0x7FFFFFFFFFFFFFF8;
            v36 = 0x1FFFFFFFFFFFFFFFLL;
            if (!v35)
            {
              v36 = v33;
            }

            if (v36)
            {
              sub_1000091A4(&__src, v36);
            }

            *(8 * v32) = v13;
            v29 = 8 * v32 + 8;
            memcpy(0, v30, v31);
            v37 = __src;
            __src = 0;
            v70 = v29;
            v71 = 0;
            if (v37)
            {
              operator delete(v37);
            }
          }

          else
          {
            *v70 = v13;
            v29 = (v28 + 8);
          }

          v70 = v29;
          v38 = v67;
          if (v67 >= v68)
          {
            v40 = __p;
            v41 = v67 - __p;
            v42 = (v67 - __p) >> 2;
            v43 = v42 + 1;
            if ((v42 + 1) >> 62)
            {
              sub_10000918C();
            }

            v44 = v68 - __p;
            if ((v68 - __p) >> 1 > v43)
            {
              v43 = v44 >> 1;
            }

            v35 = v44 >= 0x7FFFFFFFFFFFFFFCLL;
            v45 = 0x3FFFFFFFFFFFFFFFLL;
            if (!v35)
            {
              v45 = v43;
            }

            if (v45)
            {
              sub_1000098B8(&__p, v45);
            }

            *(4 * v42) = v12;
            v39 = 4 * v42 + 4;
            memcpy(0, v40, v41);
            v46 = __p;
            __p = 0;
            v67 = v39;
            v68 = 0;
            if (v46)
            {
              operator delete(v46);
            }
          }

          else
          {
            *v67 = v12;
            v39 = (v38 + 4);
          }

          v67 = v39;
          v12 = 0.0;
          v13 = 0xFFFFFFFFLL;
        }
      }

      ++v11;
    }

    while (v11 < v7);
    v5 = __src;
    v47 = v70;
    if (v70 != __src)
    {
      v48 = 0;
      do
      {
        v49 = (*a2 + 8 * *&v5[8 * v48]);
        v50 = *v49;
        if (*v49 >= a4)
        {
          v51 = v49[1];
          if (v51 >= a4 && v50 <= *a3 - a4 && v51 <= a3[1] - a4)
          {
            v52 = *(__p + v48);
            v53 = v50;
            v54 = v51;
            v56 = a1[1];
            v55 = a1[2];
            if (v56 >= v55)
            {
              v58 = *a1;
              v59 = v56 - *a1;
              v60 = 0xAAAAAAAAAAAAAAABLL * (v59 >> 3) + 1;
              if (v60 > 0xAAAAAAAAAAAAAAALL)
              {
                sub_10000918C();
              }

              v61 = 0xAAAAAAAAAAAAAAABLL * ((v55 - v58) >> 3);
              if (2 * v61 > v60)
              {
                v60 = 2 * v61;
              }

              if (v61 >= 0x555555555555555)
              {
                v62 = 0xAAAAAAAAAAAAAAALL;
              }

              else
              {
                v62 = v60;
              }

              if (v62)
              {
                sub_100009900(a1, v62);
              }

              v63 = 8 * (v59 >> 3);
              *v63 = v53;
              *(v63 + 8) = v54;
              *(v63 + 16) = v52;
              v57 = v63 + 24;
              v64 = v63 - v59;
              memcpy((v63 - v59), v58, v59);
              v65 = *a1;
              *a1 = v64;
              a1[1] = v57;
              a1[2] = 0;
              if (v65)
              {
                operator delete(v65);
              }
            }

            else
            {
              *v56 = v53;
              v56[1] = v54;
              v57 = (v56 + 3);
              *(v56 + 4) = v52;
            }

            a1[1] = v57;
            v5 = __src;
            v47 = v70;
          }
        }

        ++v48;
      }

      while (v48 < (v47 - v5) >> 3);
    }
  }

  if (__p)
  {
    v67 = __p;
    operator delete(__p);
    v5 = __src;
  }

  if (v5)
  {
    v70 = v5;
    operator delete(v5);
  }
}

void sub_100008DFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100008E50(uint64_t a1)
{
  v2 = *(a1 + 264);
  if (v2 && atomic_fetch_add((v2 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(a1 + 208);
  }

  *(a1 + 264) = 0;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  if (*(a1 + 212) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 272);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 212));
  }

  v5 = *(a1 + 280);
  if (v5 != (a1 + 288))
  {
    j__free(v5);
  }

  v6 = *(a1 + 168);
  if (v6 && atomic_fetch_add((v6 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(a1 + 112);
  }

  *(a1 + 168) = 0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  if (*(a1 + 116) >= 1)
  {
    v7 = 0;
    v8 = *(a1 + 176);
    do
    {
      *(v8 + 4 * v7++) = 0;
    }

    while (v7 < *(a1 + 116));
  }

  v9 = *(a1 + 184);
  if (v9 != (a1 + 192))
  {
    j__free(v9);
  }

  v10 = *(a1 + 72);
  if (v10 && atomic_fetch_add((v10 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(a1 + 16);
  }

  *(a1 + 72) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  if (*(a1 + 20) >= 1)
  {
    v11 = 0;
    v12 = *(a1 + 80);
    do
    {
      *(v12 + 4 * v11++) = 0;
    }

    while (v11 < *(a1 + 20));
  }

  v13 = *(a1 + 88);
  if (v13 != (a1 + 96))
  {
    j__free(v13);
  }

  return a1;
}

uint64_t sub_100008FC4(uint64_t a1)
{
  v2 = *a1;
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v2 + 16))(v2);
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  return a1;
}

void sub_100009030(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_100009084(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_100009084(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = a1[1];
    do
    {
      v6 = *(v4 - 24);
      v4 -= 24;
      v5 = v6;
      if (v6)
      {
        *(v2 - 16) = v5;
        operator delete(v5);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  a1[1] = v3;
}

uint64_t sub_1000090DC(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_100009150(result, a4);
  }

  return result;
}

void sub_100009134(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_100009150(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    sub_1000091A4(a1, a2);
  }

  sub_10000918C();
}

void sub_1000091A4(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_10000927C();
}

void sub_1000091EC(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_100009248(exception, a1);
}

std::logic_error *sub_100009248(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  return result;
}

void sub_10000927C()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
}

uint64_t sub_1000092B0(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  result = sub_100009434(v3, *a2, a2[1], (a2[1] - *a2) >> 3);
  *(a1 + 8) = v3 + 3;
  return result;
}

uint64_t sub_100009304(uint64_t a1, uint64_t *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_10000918C();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    sub_1000094A8(a1, v6);
  }

  v7 = 24 * v2;
  v14 = 0;
  v15 = v7;
  v16 = 24 * v2;
  v17 = 0;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  sub_100009434(24 * v2, *a2, a2[1], (a2[1] - *a2) >> 3);
  v8 = v16 + 24;
  v9 = *(a1 + 8) - *a1;
  v10 = &v15[-v9];
  memcpy(&v15[-v9], *a1, v9);
  v11 = *a1;
  *a1 = v10;
  *(a1 + 8) = v8;
  v12 = *(a1 + 16);
  *(a1 + 16) = v17;
  v16 = v11;
  v17 = v12;
  v14 = v11;
  v15 = v11;
  sub_100009500(&v14);
  return v8;
}

void sub_100009420(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100009500(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100009434(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_100009150(result, a4);
  }

  return result;
}

void sub_10000948C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000094A8(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_10000927C();
}

uint64_t sub_100009500(uint64_t a1)
{
  sub_100009538(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_100009538(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  while (v2 != a2)
  {
    v5 = *(v2 - 24);
    *(a1 + 16) = v2 - 24;
    if (v5)
    {
      *(v2 - 16) = v5;
      operator delete(v5);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 24;
    }
  }
}

uint64_t sub_100009598(uint64_t a1, void *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 3;
  v3 = v2 + 1;
  if ((v2 + 1) >> 61)
  {
    sub_10000918C();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 2 > v3)
  {
    v3 = v6 >> 2;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    v7 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v14 = a1;
  if (v7)
  {
    sub_1000091A4(a1, v7);
  }

  __p = 0;
  v11 = (8 * v2);
  *v11 = *a2;
  v12 = 8 * v2 + 8;
  v13 = 0;
  sub_1000096B4(a1, &__p);
  v8 = *(a1 + 8);
  if (v12 != v11)
  {
    v12 += (v11 - v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v8;
}

void sub_10000967C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t **sub_1000096B4(uint64_t **result, void *a2)
{
  v2 = *result;
  v3 = result[1];
  v4 = (a2[1] + *result - v3);
  if (v3 != *result)
  {
    v5 = *result;
    v6 = (a2[1] + *result - v3);
    do
    {
      v7 = *v5++;
      *v6++ = v7;
    }

    while (v5 != v3);
  }

  a2[1] = v4;
  v8 = *result;
  *result = v4;
  result[1] = v2;
  a2[1] = v8;
  v9 = result[1];
  result[1] = a2[2];
  a2[2] = v9;
  v10 = result[2];
  result[2] = a2[3];
  a2[3] = v10;
  *a2 = a2[1];
  return result;
}

__int128 *sub_100009720(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    v7 = *(a4 + 8);
    do
    {
      v8 = *(a4 + 16);
      if (v7 >= v8)
      {
        v10 = 0xAAAAAAAAAAAAAAABLL * ((v7 - *a4) >> 3);
        v11 = v10 + 1;
        if (v10 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          sub_10000918C();
        }

        v12 = 0xAAAAAAAAAAAAAAABLL * ((v8 - *a4) >> 3);
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
          sub_100009900(a4, v13);
        }

        v14 = 8 * ((v7 - *a4) >> 3);
        v15 = *v5;
        *(v14 + 16) = *(v5 + 2);
        *v14 = v15;
        v7 = 24 * v10 + 24;
        v16 = *(a4 + 8) - *a4;
        v17 = 24 * v10 - v16;
        memcpy((v14 - v16), *a4, v16);
        v18 = *a4;
        *a4 = v17;
        *(a4 + 8) = v7;
        *(a4 + 16) = 0;
        if (v18)
        {
          operator delete(v18);
        }
      }

      else
      {
        v9 = *v5;
        *(v7 + 16) = *(v5 + 2);
        *v7 = v9;
        v7 += 24;
      }

      *(a4 + 8) = v7;
      v5 = (v5 + 24);
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

__n128 sub_100009864(uint64_t a1, __n128 *a2)
{
  v4 = *a1;
  if (v4)
  {
    *(a1 + 8) = v4;
    operator delete(v4);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }

  result = *a2;
  *a1 = *a2;
  *(a1 + 16) = a2[1].n128_u64[0];
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  return result;
}

void sub_1000098B8(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  sub_10000927C();
}

void sub_100009900(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_10000927C();
}

void sub_100009C44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_100006D14(va);

  _Unwind_Resume(a1);
}

void sub_100009D78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_100006D14(&a9);

  _Unwind_Resume(a1);
}

void sub_100009EF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  sub_100006D14(&a9);
  sub_100008E50(&a21);

  _Unwind_Resume(a1);
}

void sub_10000A03C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100006D14(va);
  _Unwind_Resume(a1);
}

void sub_10000A234(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  if (__p)
  {
    a12 = __p;
    operator delete(__p);
  }

  sub_1002A8124(&a9);
  sub_100006D14(&a17);

  _Unwind_Resume(a1);
}

uint64_t sub_10000A690(uint64_t result, int a2, int a3, unsigned int a4, uint64_t a5, unint64_t a6)
{
  v6 = a6;
  *result = a4 & 0xFFF | 0x42FF0000;
  *(result + 4) = 2;
  *(result + 8) = a2;
  *(result + 12) = a3;
  *(result + 16) = a5;
  *(result + 24) = a5;
  *(result + 80) = 0;
  *(result + 64) = result + 8;
  *(result + 72) = result + 80;
  *(result + 32) = 0u;
  *(result + 48) = 0u;
  *(result + 88) = 0;
  if (a3 * a2 && !a5)
  {
    v11 = 0;
    v12 = 0;
    qmemcpy(sub_1002A80E0(&v11, 30), "total() == 0 || data != __null", 30);
    sub_1002A8980(-215, &v11, "Mat", "/Library/Caches/com.apple.xbs/Sources/Measure/.OpenCV/opencv2.framework/Headers/core/mat.inl.hpp", 500);
  }

  v7 = (((a4 >> 3) & 0x1FF) + 1) << ((0xFA50u >> (2 * (a4 & 7))) & 3);
  v8 = a3 * v7;
  if (!a6)
  {
    v6 = a3 * v7;
LABEL_11:
    *result |= 0x4000u;
    goto LABEL_12;
  }

  if (a6 % ((0x88442211uLL >> (4 * (a4 & 7))) & 0xF))
  {
    v11 = 0;
    v12 = 0;
    qmemcpy(sub_1002A80E0(&v11, 31), "Step must be a multiple of esz1", 31);
    sub_1002A8980(-13, &v11, "Mat", "/Library/Caches/com.apple.xbs/Sources/Measure/.OpenCV/opencv2.framework/Headers/core/mat.inl.hpp", 515);
  }

  if (v8 == a6 || *(result + 8) == 1)
  {
    goto LABEL_11;
  }

LABEL_12:
  v9 = *(result + 72);
  *v9 = v6;
  v9[1] = v7;
  v10 = *(result + 24) + v6 * *(result + 8);
  *(result + 32) = v10 - v6 + v8;
  *(result + 40) = v10;
  return result;
}

void sub_10000A884(uint64_t *a1, uint64_t **a2, uint64_t **a3, unint64_t a4)
{
  v8 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) < a4)
  {
    sub_10000A9FC(a1);
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

      sub_10000AA3C(a1, v10);
    }

    sub_10000918C();
  }

  v11 = a1[1] - v8;
  if (0xAAAAAAAAAAAAAAABLL * (v11 >> 3) >= a4)
  {
    sub_10000ABC4(&v19, a2, a3, v8);
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
    sub_10000ABC4(&v18, a2, (a2 + v11), v8);
    a1[1] = sub_10000AA88(a1, (a2 + v11), a3, a1[1]);
  }
}

void sub_10000A9FC(uint64_t *a1)
{
  if (*a1)
  {
    sub_100009084(a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void sub_10000AA3C(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    sub_1000094A8(a1, a2);
  }

  sub_10000918C();
}

void *sub_10000AA88(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
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
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      sub_100009434(v4, *v6, v6[1], (v6[1] - *v6) >> 3);
      v6 += 3;
      v4 = v11 + 3;
      v11 += 3;
    }

    while (v6 != a3);
  }

  v9 = 1;
  sub_10000AB3C(v8);
  return v4;
}

uint64_t sub_10000AB3C(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_10000AB74(a1);
  }

  return a1;
}

void sub_10000AB74(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  if (v1 != v2)
  {
    v3 = **(a1 + 16);
    do
    {
      v5 = *(v3 - 24);
      v3 -= 24;
      v4 = v5;
      if (v5)
      {
        *(v1 - 16) = v4;
        operator delete(v4);
      }

      v1 = v3;
    }

    while (v3 != v2);
  }
}

uint64_t **sub_10000ABC4(uint64_t a1, uint64_t **a2, uint64_t **a3, char **a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      if (v5 != a4)
      {
        sub_10000AC34(a4, *v5, v5[1], v5[1] - *v5);
      }

      v5 += 3;
      a4 += 3;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

char *sub_10000AC34(char **a1, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  v5 = a2;
  v7 = a1[2];
  result = *a1;
  if (a4 > (v7 - result) >> 3)
  {
    if (result)
    {
      a1[1] = result;
      operator delete(result);
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (!(a4 >> 61))
    {
      v9 = v7 >> 2;
      if (v7 >> 2 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF8)
      {
        v10 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      sub_100009150(a1, v10);
    }

    sub_10000918C();
  }

  v11 = a1[1];
  v12 = v11 - result;
  if (a4 <= (v11 - result) >> 3)
  {
    while (v5 != a3)
    {
      v17 = *v5++;
      *result = v17;
      result += 8;
    }

    a1[1] = result;
  }

  else
  {
    v13 = (a2 + v12);
    if (v11 != result)
    {
      do
      {
        v14 = *v5++;
        *result = v14;
        result += 8;
        v12 -= 8;
      }

      while (v12);
    }

    if (v13 == a3)
    {
      v15 = v11;
    }

    else
    {
      v15 = v11;
      do
      {
        v16 = *v13++;
        *v11 = v16;
        v11 += 8;
        v15 += 8;
      }

      while (v13 != a3);
    }

    a1[1] = v15;
  }

  return result;
}

void *sub_10000AD58(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (0xAAAAAAAAAAAAAAABLL * ((v7 - *result) >> 3) < a4)
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

    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 3);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x555555555555555)
      {
        v11 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v11 = v10;
      }

      sub_10000AEB4(v6, v11);
    }

    sub_10000918C();
  }

  v12 = result[1];
  v13 = v12 - v8;
  if (0xAAAAAAAAAAAAAAABLL * ((v12 - v8) >> 3) >= a4)
  {
    v16 = a3 - __src;
    if (v16)
    {
      result = memmove(*result, __src, v16);
    }

    v15 = &v8[v16];
  }

  else
  {
    v14 = &__src[v13];
    if (v12 != v8)
    {
      result = memmove(*result, __src, v13);
      v12 = v6[1];
    }

    if (a3 != v14)
    {
      result = memmove(v12, v14, a3 - v14);
    }

    v15 = &v12[a3 - v14];
  }

  v6[1] = v15;
  return result;
}

void sub_10000AEB4(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    sub_100009900(a1, a2);
  }

  sub_10000918C();
}

id sub_10000B190(uint64_t a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10000B20C;
  v2[3] = &unk_100464AA0;
  v2[4] = *(a1 + 32);
  return [UIView performWithoutAnimation:v2];
}

int main(int argc, const char **argv, const char **envp)
{
  v3 = static CommandLine.argc.getter();
  v4 = static CommandLine.unsafeArgv.getter();
  sub_10000BAE8();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = NSStringFromClass(ObjCClassFromMetadata);
  if (!v6)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = String._bridgeToObjectiveC()();
  }

  type metadata accessor for AppDelegate();
  v7 = swift_getObjCClassFromMetadata();
  v8 = NSStringFromClass(v7);
  if (!v8)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = String._bridgeToObjectiveC()();
  }

  UIApplicationMain(v3, v4, v6, v8);

  return 0;
}

unint64_t sub_10000BAE8()
{
  result = qword_1004A0870;
  if (!qword_1004A0870)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1004A0870);
  }

  return result;
}

double variable initialization expression of SCNPatchDebugger.SKDebugRenderer.textureBuffer@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1;
  return result;
}

__n128 initializeBufferWithCopyOfBuffer for CVOptions(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_10000BC40(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10000BC60(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

uint64_t sub_10000BCA8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10000BCC8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

__n128 sub_10000BD18(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

__n128 sub_10000BD38(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_10000BD4C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10000BD6C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 48) = v3;
  return result;
}

__n128 sub_10000BDB8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10000BDCC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 64))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10000BDEC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 64) = v3;
  return result;
}

uint64_t sub_10000BE3C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10000BE5C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

__n128 sub_10000BED8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_10000BEEC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10000BF0C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 24) = v3;
  return result;
}

uint64_t sub_10000BF70@<X0>(uint64_t *a1@<X8>)
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_10000BFA4(uint64_t a1, uint64_t a2)
{
  result = static CGFloat._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  *(a2 + 8) = 1;
  return result;
}

uint64_t sub_10000BFF8(uint64_t a1, uint64_t a2)
{
  v3 = static CGFloat._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  *(a2 + 8) = 1;
  return v3 & 1;
}

uint64_t sub_10000C050@<X0>(void *a1@<X8>)
{
  result = static CGFloat._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = v3;
  return result;
}

BOOL sub_10000C094(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_10000C100@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_10000C260()
{
  swift_getWitnessTable();

  return static _CFObject.== infix(_:_:)();
}

uint64_t sub_10000C2CC(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_10000C344(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_10000C3C4@<X0>(void *a1@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
  return result;
}

void *sub_10000C420@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_10000C44C@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_10000C4C0(uint64_t a1)
{
  v2 = sub_10000C8E0(&qword_1004A8740, type metadata accessor for ARError);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_10000C52C(uint64_t a1)
{
  v2 = sub_10000C8E0(&qword_1004A8740, type metadata accessor for ARError);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_10000C598(void *a1, uint64_t a2)
{
  v4 = sub_10000C8E0(&qword_1004A8740, type metadata accessor for ARError);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_10000C64C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C8E0(&qword_1004A8740, type metadata accessor for ARError);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

Swift::Int sub_10000C6C8()
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10000C728()
{
  swift_getWitnessTable();

  return static _CFObject.== infix(_:_:)();
}

uint64_t sub_10000C794()
{
  sub_10000C8E0(&qword_1004A0978, type metadata accessor for Name);
  sub_10000C8E0(&qword_1004A0980, type metadata accessor for Name);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_10000C8E0(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000C970()
{
  sub_10000C8E0(&qword_1004A0C70, type metadata accessor for UIContentSizeCategory);
  sub_10000C8E0(&qword_1004A0C78, type metadata accessor for UIContentSizeCategory);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

double sub_10000CA2C@<D0>(void *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t sub_10000CA38()
{
  sub_10000C8E0(&qword_1004A0CB0, type metadata accessor for Weight);
  sub_10000C8E0(&qword_1004A0CB8, type metadata accessor for Weight);
  sub_10000ED44();
  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_10000CB00()
{
  sub_10000C8E0(&qword_1004A0C40, type metadata accessor for NSKeyValueChangeKey);
  sub_10000C8E0(&qword_1004A0C48, type metadata accessor for NSKeyValueChangeKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_10000CBBC()
{
  sub_10000C8E0(&qword_1004A0C20, type metadata accessor for LaunchOptionsKey);
  sub_10000C8E0(&qword_1004A0C28, type metadata accessor for LaunchOptionsKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_10000CC78()
{
  sub_10000C8E0(&qword_1004A0CA0, type metadata accessor for VNImageOption);
  sub_10000C8E0(&qword_1004A0CA8, type metadata accessor for VNImageOption);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_10000CD34@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_10000ED0C(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_10000CD74()
{
  sub_10000C8E0(&qword_1004A0C50, type metadata accessor for FileAttributeKey);
  sub_10000C8E0(&qword_1004A0C58, type metadata accessor for FileAttributeKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_10000CE30()
{
  sub_10000C8E0(&qword_1004A72A0, type metadata accessor for Key);
  sub_10000C8E0(&qword_1004A0D00, type metadata accessor for Key);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_10000CEEC()
{
  sub_10000C8E0(&qword_1004A0C30, type metadata accessor for SCNHitTestOption);
  sub_10000C8E0(&qword_1004A0C38, type metadata accessor for SCNHitTestOption);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_10000CFA8(uint64_t a1)
{
  v2 = sub_10000C8E0(&qword_1004A0B90, type metadata accessor for ARError);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_10000D014(uint64_t a1)
{
  v2 = sub_10000C8E0(&qword_1004A0B90, type metadata accessor for ARError);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_10000D084(uint64_t a1)
{
  v2 = sub_10000C8E0(&qword_1004A8740, type metadata accessor for ARError);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_10000D0F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000C8E0(&qword_1004A8740, type metadata accessor for ARError);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_10000D174()
{
  sub_10000C8E0(&qword_1004A0C80, type metadata accessor for DocumentAttributeKey);
  sub_10000C8E0(&qword_1004A0C88, type metadata accessor for DocumentAttributeKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_10000D230()
{
  sub_10000C8E0(&qword_1004A0C90, type metadata accessor for DocumentType);
  sub_10000C8E0(&qword_1004A0C98, type metadata accessor for DocumentType);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_10000D2EC()
{
  sub_10000C8E0(&qword_1004A0C60, type metadata accessor for SCNShaderModifierEntryPoint);
  sub_10000C8E0(&qword_1004A0C68, type metadata accessor for SCNShaderModifierEntryPoint);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

Swift::Int sub_10000D464()
{
  Hasher.init(_seed:)();
  swift_getWitnessTable();
  _CFObject.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10000D4C8()
{
  sub_10000C8E0(&qword_1004A0CD8, type metadata accessor for AttributeName);
  sub_10000C8E0(&qword_1004A0CE0, type metadata accessor for AttributeName);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_10000D584()
{
  sub_10000C8E0(&qword_1004A0CC8, type metadata accessor for TraitKey);
  sub_10000C8E0(&qword_1004A0CD0, type metadata accessor for TraitKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_10000D640@<X0>(void *a1@<X8>)
{
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
  return result;
}

__n128 sub_10000D6EC(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 sub_10000D784(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t sub_10000D7A8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 128))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10000D7C8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 128) = v3;
  return result;
}

uint64_t sub_10000D878(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t sub_10000D88C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 12))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10000D8AC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 12) = v3;
  return result;
}

uint64_t sub_10000D9E0()
{
  sub_10000C8E0(&qword_1004A0CE8, type metadata accessor for FeatureKey);
  sub_10000C8E0(&unk_1004A0CF0, type metadata accessor for FeatureKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

void sub_10000DD74()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  Hasher._combine(_:)(*&v1);
}

uint64_t sub_10000DDC8()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v0 = String.hashValue.getter();

  return v0;
}

uint64_t sub_10000DE04()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_10000DE58()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v0 = Hasher._finalize()();

  return v0;
}

uint64_t sub_10000E048()
{
  v0 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = v1;
  if (v0 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v5 & 1;
}

unint64_t sub_10000E958()
{
  result = qword_1004A0BB8;
  if (!qword_1004A0BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A0BB8);
  }

  return result;
}

uint64_t sub_10000ED0C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

unint64_t sub_10000ED44()
{
  result = qword_1004A0CC0;
  if (!qword_1004A0CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A0CC0);
  }

  return result;
}

void sub_10000EDAC(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

Swift::Int sub_10000EFC8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10000F03C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t sub_10000F098()
{
  _StringGuts.grow(_:)(33);
  if (qword_1004A01C0 != -1)
  {
    swift_once();
  }

  v0._object = 0x80000001003FEF00;
  v0._countAndFlagsBits = 0xD00000000000001FLL;
  String.append(_:)(v0);
  v1 = String._bridgeToObjectiveC()();

  qword_1004D4978 = v1;
  return result;
}

char *sub_10000F16C()
{
  ObjectType = swift_getObjectType();
  p_prots = &OBJC_PROTOCOL___RPScreenRecorderDelegate.prots;
  v3 = OBJC_IVAR____TtC7Measure30AccessiblityUISettingsObserver_eventLookup;
  sub_10000F974(&qword_1004A0F58);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1003D5230;
  *(inited + 32) = UIAccessibilityInvertColorsStatusDidChangeNotification;
  *(inited + 40) = 0;
  *(inited + 48) = UIAccessibilityDarkerSystemColorsStatusDidChangeNotification;
  *(inited + 56) = 1;
  *(inited + 64) = UIAccessibilityBoldTextStatusDidChangeNotification;
  *(inited + 72) = 2;
  *(inited + 80) = UIContentSizeCategoryDidChangeNotification;
  *(inited + 88) = 3;
  v5 = UIAccessibilityInvertColorsStatusDidChangeNotification;
  v6 = UIAccessibilityDarkerSystemColorsStatusDidChangeNotification;
  v7 = UIAccessibilityBoldTextStatusDidChangeNotification;
  v8 = UIContentSizeCategoryDidChangeNotification;
  v9 = sub_100199C60(inited);
  swift_setDeallocating();
  sub_10000F974(&unk_1004A0F60);
  swift_arrayDestroy();
  *&v0[v3] = v9;
  v34.receiver = v0;
  v34.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v34, "init");
  if (qword_1004A0050 != -1)
  {
LABEL_14:
    swift_once();
  }

  v11 = [objc_opt_self() sharedApplication];
  v12 = [v11 preferredContentSizeCategory];

  v13 = qword_1004D4970;
  qword_1004D4970 = v12;

  v14 = *&v10[p_prots[484]];
  v15 = 1 << *(v14 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(v14 + 64);
  v18 = (v15 + 63) >> 6;
  v31 = v33;

  v19 = 0;
  if (v17)
  {
    while (1)
    {
      v20 = v19;
LABEL_10:
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      v22 = *(*(v14 + 48) + ((v20 << 9) | (8 * v21)));
      v23 = objc_opt_self();
      v24 = v22;
      v25 = [v23 defaultCenter];
      v26 = swift_allocObject();
      *(v26 + 16) = v10;
      v33[2] = sub_10000F9F4;
      v33[3] = v26;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      v33[0] = sub_1000DB768;
      v33[1] = &unk_1004676A0;
      p_prots = _Block_copy(aBlock);
      v27 = v24;
      v28 = v10;

      v29 = [v25 addObserverForName:v27 object:0 queue:0 usingBlock:p_prots];
      _Block_release(p_prots);
      swift_unknownObjectRelease();

      if (!v17)
      {
        goto LABEL_6;
      }
    }
  }

  while (1)
  {
LABEL_6:
    v20 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      __break(1u);
      goto LABEL_14;
    }

    if (v20 >= v18)
    {
      break;
    }

    v17 = *(v14 + 64 + 8 * v20);
    ++v19;
    if (v17)
    {
      v19 = v20;
      goto LABEL_10;
    }
  }

  return v10;
}

uint64_t sub_10000F500()
{
  v1 = Notification.name.getter();
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  if (v2 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v4 == v5)
  {
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v7 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  if (qword_1004A0050 != -1)
  {
    swift_once();
  }

  v8 = [objc_opt_self() sharedApplication];
  v9 = [v8 preferredContentSizeCategory];

  v10 = qword_1004D4970;
  qword_1004D4970 = v9;

LABEL_11:
  v11 = [objc_opt_self() defaultCenter];
  if (qword_1004A0058 != -1)
  {
    swift_once();
  }

  v12 = qword_1004D4978;
  v13 = *(v0 + OBJC_IVAR____TtC7Measure30AccessiblityUISettingsObserver_eventLookup);
  v14 = Notification.name.getter();
  v15 = v14;
  if (*(v13 + 16) && (sub_10019C358(v14), (v16 & 1) != 0))
  {

    v17 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  }

  else
  {

    v17 = 0;
  }

  [v11 postNotificationName:v12 object:v17];

  return swift_unknownObjectRelease();
}

id sub_10000F740()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t getEnumTagSinglePayload for AccessibilityEvent(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AccessibilityEvent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10000F920()
{
  result = qword_1004A0F50;
  if (!qword_1004A0F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A0F50);
  }

  return result;
}

uint64_t sub_10000F974(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_10000F9BC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000FA18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_10000FA30()
{
  v0 = objc_allocWithZone(UIFontMetrics);
  v1 = UIFontTextStyleHeadline;
  v2 = [v0 initForTextStyle:v1];

  [v2 scaledValueForValue:45.0];
  v4 = v3;

  v5 = 65.0;
  if (v4 <= 65.0)
  {
    v5 = v4;
  }

  qword_1004D4980 = *&v5;
}

uint64_t sub_10000FAD4()
{
  sub_10000FB70();
  result = static UIDevice.isIPhone()();
  v1 = 0.0;
  xmmword_1004D4990 = xmmword_1003D5320;
  if (result)
  {
    v1 = 16.0;
  }

  qword_1004D49A0 = 0;
  qword_1004D49A8 = *&v1;
  return result;
}

uint64_t sub_10000FB2C()
{
  sub_10000FB70();
  result = static UIDevice.isIPhone()();
  v1 = 0.0;
  if (result)
  {
    v1 = 16.0;
  }

  qword_1004D49B0 = *&v1;
  return result;
}

unint64_t sub_10000FB70()
{
  result = qword_1004A1930;
  if (!qword_1004A1930)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1004A1930);
  }

  return result;
}

uint64_t sub_10000FE60(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *sub_10000FEBC(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_10000FF00(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

void sub_10000FF4C()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = [v0 showGuideSnapPoints];

  byte_1004D49B8 = v1;
}

void sub_10000FFA8()
{
  v1 = v0;
  *(v0 + 64) = &_swiftEmptyArrayStorage;
  *(v0 + 72) = &_swiftEmptyArrayStorage;
  *(v0 + 80) = 0;
  *(v0 + 88) = 1092616192;
  *(v0 + 96) = 1;
  *(v0 + 104) = 0;
  *(v0 + 112) = 0;
  *(v0 + 120) = 0;
  *(v0 + 128) = 0;
  v2 = sub_10000F974(&qword_1004A11C8);
  KeyPath = swift_getKeyPath();
  if (qword_1004A04D8 != -1)
  {
    swift_once();
  }

  v4 = qword_1004D5058;
  v5 = *(v2 + 272);
  swift_retain_n();
  *(v1 + 136) = v5(KeyPath, v4);
  v6 = swift_getKeyPath();
  v7 = *(sub_10000F974(&qword_1004A11D0) + 272);

  *(v1 + 144) = v7(v6, v4);
  v8 = sub_10000F974(&qword_1004A11D8);
  v9 = swift_getKeyPath();
  v10 = *(v8 + 272);

  *(v1 + 152) = v10(v9, v4);
  v11 = sub_10000F974(&qword_1004A11E0);
  v12 = swift_getKeyPath();
  v13 = *(v11 + 272);

  *(v1 + 160) = v13(v12, v4);
  sub_10000F974(&qword_1004A11E8);
  swift_getKeyPath();
  *(v1 + 168) = MutableStateValue.__allocating_init(_:_:)();
  sub_10000F974(&qword_1004A11F0);
  swift_getKeyPath();
  *(v1 + 176) = MutableStateBinding.__allocating_init(_:_:)();
  v14 = swift_getKeyPath();
  v15 = sub_10000F974(&qword_1004A11F8);
  *(v1 + 184) = (*(v15 + 272))(v14, v4);
  v16 = swift_getKeyPath();
  v17 = sub_10000F974(&qword_1004A1200);
  v18 = (*(v17 + 272))(v16, v4);
  *(v1 + 200) = 0;
  *(v1 + 208) = 0;
  *(v1 + 192) = v18;
  *(v1 + 216) = 256;
  *(v1 + 224) = 0;
  if (qword_1004A0078 != -1)
  {
    swift_once();
  }

  if (byte_1004D49B8 != 1)
  {
    goto LABEL_11;
  }

  v19 = [objc_allocWithZone(SCNNode) init];
  v20 = *(v1 + 224);
  *(v1 + 224) = v19;

  if (qword_1004A0180 != -1)
  {
    swift_once();
  }

  v21 = *(&xmmword_1004D4AB8 + 1);
  if (*(&xmmword_1004D4AB8 + 1))
  {
    v32 = qword_1004D4B10;
    v22 = *(&xmmword_1004D4AE8 + 1);
    v23 = xmmword_1004D4AE8;
    v24 = qword_1004D4AD0;
    v25 = xmmword_1004D4AB8;
    v34 = qword_1004D4B18;
    v36 = v25;
    v26 = v21;

    v35 = v24;

    v33 = v23;
    v27 = v22;

    v28 = v32;
    v29 = sub_1001CC7B0();
    v30 = [v29 scene];

    v31 = [v30 rootNode];

    if (*(v1 + 224))
    {
      [v31 addChildNode:?];

LABEL_11:
      StateObserver.init(configuration:)();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_10001050C()
{
  v1 = v0;
  *(v0 + 64) = &_swiftEmptyArrayStorage;
  *(v0 + 72) = &_swiftEmptyArrayStorage;
  *(v0 + 80) = 0;
  *(v0 + 88) = 1092616192;
  *(v0 + 96) = 1;
  *(v0 + 104) = 0;
  *(v0 + 112) = 0;
  *(v0 + 120) = 0;
  *(v0 + 128) = 0;
  v2 = sub_10000F974(&qword_1004A11C8);
  KeyPath = swift_getKeyPath();
  if (qword_1004A04D8 != -1)
  {
    swift_once();
  }

  v4 = qword_1004D5058;
  v5 = *(v2 + 272);
  swift_retain_n();
  *(v1 + 136) = v5(KeyPath, v4);
  v6 = swift_getKeyPath();
  v7 = *(sub_10000F974(&qword_1004A11D0) + 272);

  *(v1 + 144) = v7(v6, v4);
  v8 = sub_10000F974(&qword_1004A11D8);
  v9 = swift_getKeyPath();
  v10 = *(v8 + 272);

  *(v1 + 152) = v10(v9, v4);
  v11 = sub_10000F974(&qword_1004A11E0);
  v12 = swift_getKeyPath();
  v13 = *(v11 + 272);

  *(v1 + 160) = v13(v12, v4);
  sub_10000F974(&qword_1004A11E8);
  swift_getKeyPath();
  *(v1 + 168) = MutableStateValue.__allocating_init(_:_:)();
  sub_10000F974(&qword_1004A11F0);
  swift_getKeyPath();
  *(v1 + 176) = MutableStateBinding.__allocating_init(_:_:)();
  v14 = swift_getKeyPath();
  v15 = sub_10000F974(&qword_1004A11F8);
  *(v1 + 184) = (*(v15 + 272))(v14, v4);
  v16 = swift_getKeyPath();
  v17 = sub_10000F974(&qword_1004A1200);
  v18 = (*(v17 + 272))(v16, v4);
  *(v1 + 200) = 0;
  *(v1 + 208) = 0;
  *(v1 + 192) = v18;
  *(v1 + 216) = 256;
  *(v1 + 224) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_100010850()
{
  v1 = v0;
  v2 = *(**(v0 + 184) + 200);

  v4 = v2(v3);

  v22 = sub_100013740;
  v23 = v0;
  v5 = *(*v4 + 296);

  v5(sub_100013748, v21);

  v6 = *(**(v0 + 144) + 144);

  v6(v24, v7);

  v9 = v24[0];
  v8 = v24[1];

  if (v8)
  {
    v10 = (*((swift_isaMask & *v8) + 0x2F0))();
  }

  else
  {
    v10 = 0;
  }

  *(v1 + 120) = v10;
  *(v1 + 128) = v8 == 0;

  StateValue.ifUpdated(_:)();

  __chkstk_darwin(v11);
  v19 = sub_100013754;
  v20 = v1;

  StateValue.ifUpdated(_:)();

  v12 = *(**(v1 + 176) + 200);

  v14 = v12(v13);

  __chkstk_darwin(v15);
  v19 = sub_100013760;
  v20 = v1;
  v16 = *(*v14 + 296);

  v16(sub_100013764, &v18);
}

uint64_t sub_100010B80(uint64_t result, uint64_t a2)
{
  if (result >= 2u)
  {
    v4 = *(**(a2 + 168) + 400);

    v5 = v4(v10);
    *(v6 + 8) = &_swiftEmptyArrayStorage;

    v5(v10, 0);

    v7 = *(**(a2 + 168) + 400);

    v8 = v7(v10);
    *v9 = &_swiftEmptyArrayStorage;

    v8(v10, 0);

    v3 = 0;
  }

  else
  {
    v3 = 1;
  }

  *(a2 + 217) = v3;
  return result;
}

void sub_100010CBC()
{
  if (*(v0 + 217) != 1)
  {
    return;
  }

  v1 = v0;
  if (qword_1004A0078 != -1)
  {
    goto LABEL_66;
  }

  while (byte_1004D49B8 != 1)
  {
LABEL_14:
    v18 = [objc_opt_self() standardUserDefaults];
    v19 = [v18 guideSnapPointsEnabled];

    if (v19)
    {
      v20 = *(v1 + 200);
      if (v20)
      {
        v21 = *((swift_isaMask & *v20) + 0x258);
        v22 = v20;
        if (!v21() || v21() == 1)
        {

          StateValue.wrappedValue.getter();

          v23 = v91.n128_u64[1];
          if (v91.n128_u64[1])
          {
            v24 = sub_1000124A4(v22, v91.n128_i64[1]);
            if ((v26 & 1) == 0)
            {
              v27 = v24;
              v28 = v25;
              (*((swift_isaMask & *v22) + 0x2A0))();
              simd_float4x4.forward.getter();
              static simd_float4x4.make(position:normalizedForward:)();
              v77 = v30;
              v78 = v29;
              v75 = v32;
              v76 = v31;
              if (qword_1004A0228 != -1)
              {
                swift_once();
              }

              v91.n128_u64[0] = 0;
              v91.n128_u64[1] = 0xE000000000000000;
              _StringGuts.grow(_:)(57);
              v33._object = 0x80000001003FF160;
              v33._countAndFlagsBits = 0xD000000000000037;
              String.append(_:)(v33);
              v81._countAndFlagsBits = v27;
              v81._object = v28;
              sub_10000F974(&qword_1004A3EF0);
              sub_100013B4C();
              v34._countAndFlagsBits = SIMD.description.getter();
              String.append(_:)(v34);

              Log.default(_:isPrivate:)(v91, 0);

              v35 = *(**(v1 + 176) + 400);

              v36 = v35(&v91);
              v38 = v37;
              v39 = *(v37 + 144);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              *(v38 + 144) = v39;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v39 = sub_100067114(0, *(v39 + 2) + 1, 1, v39);
                *(v38 + 144) = v39;
              }

              v42 = *(v39 + 2);
              v41 = *(v39 + 3);
              if (v42 >= v41 >> 1)
              {
                v39 = sub_100067114((v41 > 1), v42 + 1, 1, v39);
                *(v38 + 144) = v39;
              }

              *(v39 + 2) = v42 + 1;
              v43 = &v39[64 * v42];
              *(v43 + 2) = v78;
              *(v43 + 3) = v77;
              *(v43 + 4) = v76;
              *(v43 + 5) = v75;
              v36(&v91, 0);
            }
          }
        }
      }
    }

    v44 = *(v1 + 200);
    if (v44)
    {
      v45 = *((swift_isaMask & *v44) + 0x258);
      v46 = v44;
      if (!v45() || v45() == 3)
      {
        goto LABEL_58;
      }

      v47 = v45();

      if (v47 == 1)
      {
        goto LABEL_59;
      }
    }

    v48 = *(**(v1 + 144) + 144);

    v48(&v91, v49);

    v50 = v91;

    if (v50._object)
    {
      v51 = (*((swift_isaMask & *v50._object) + 0x2F0))();

      if (v51 == 8)
      {
        goto LABEL_59;
      }
    }

    v52 = *(v1 + 112);
    v53 = v52;

    StateValue.wrappedValue.getter();

    v54 = v91.n128_u64[0];

    if (!v52)
    {
      if (!v54)
      {
LABEL_57:

        StateValue.wrappedValue.getter();

        v46 = v91.n128_u64[0];

        if (v46)
        {
LABEL_58:
        }

        else
        {
LABEL_62:
          swift_beginAccess();
          *(v1 + 64) = &_swiftEmptyArrayStorage;

          v71 = *(**(v1 + 176) + 400);

          v72 = v71(&v91);
          *(v73 + 144) = &_swiftEmptyArrayStorage;

          v72(&v91, 0);
        }

LABEL_59:
        v70 = v1;
LABEL_60:
        sub_1000123A4(v70);
        return;
      }

      v53 = v54;
LABEL_41:

      goto LABEL_42;
    }

    if (!v54)
    {
      goto LABEL_41;
    }

    type metadata accessor for WorldEdge();
    v55 = static NSObject.== infix(_:_:)();

    if (v55)
    {
      goto LABEL_57;
    }

LABEL_42:

    StateValue.wrappedValue.getter();

    v56 = v91.n128_u64[0];

    v79 = v56;
    if (!v56)
    {
      goto LABEL_62;
    }

    swift_beginAccess();
    *(v1 + 64) = &_swiftEmptyArrayStorage;

    v57 = *(**(v1 + 176) + 400);

    v58 = v57(&v91);
    *(v59 + 144) = &_swiftEmptyArrayStorage;

    v58(&v91, 0);

    sub_100013008();
    v60 = *(v1 + 64);
    v74 = v1;
    if (v60 >> 62)
    {
      v61 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v61 = *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v62 = (v56 + direct field offset for WorldEdge.p1);
    v63 = (v56 + direct field offset for WorldEdge.p2);

    swift_beginAccess();
    swift_beginAccess();
    if (!v61)
    {
LABEL_56:

      v70 = v74;
      goto LABEL_60;
    }

    v64 = 0;
    v1 = v60 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((v60 & 0xC000000000000001) != 0)
      {
        v65 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v64 >= *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_65;
        }

        v65 = *(v60 + 8 * v64 + 32);
      }

      v66 = v65;
      v67 = v64 + 1;
      if (__OFADD__(v64, 1))
      {
        break;
      }

      v68 = sub_10001385C(v79, &v91);
      v69 = (*((swift_isaMask & *v66) + 0x2D0))(v68, v91, v92, v93, v94, v95, v96, v97, v98);
      if (v62[1].n128_u8[0])
      {
        goto LABEL_69;
      }

      if (v63[1].n128_u8[0])
      {
        goto LABEL_70;
      }

      (*((swift_isaMask & *v66) + 0x2D8))(v69, *v62, *v63);

      ++v64;
      if (v67 == v61)
      {
        goto LABEL_56;
      }
    }

LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    swift_once();
  }

  v2 = *(v1 + 224);
  if (v2)
  {
    v3 = v2;
    SCNNode.removeAllChildren()();
  }

  v4 = v1;
  v5 = *(**(v1 + 176) + 144);

  v5(&v81, v6);

  v97 = v87;
  v98 = v88;
  v99 = v89;
  v100 = v90;
  v93 = v83;
  v94 = v84;
  v95 = v85;
  v96 = v86;
  v91 = v81;
  v92 = v82;
  v7 = v90;

  sub_100013BF8(&v91);
  v8 = *(v7 + 16);
  if (!v8)
  {
LABEL_13:

    v1 = v4;
    goto LABEL_14;
  }

  v9 = 0;
  v1 = v7 + 80;
  while (1)
  {
    if (v9 >= *(v7 + 16))
    {
      __break(1u);
      goto LABEL_64;
    }

    v10 = [objc_opt_self() orangeColor];
    v11 = [objc_opt_self() sphereWithRadius:0.001];
    v12 = [v11 firstMaterial];
    if (!v12)
    {
      break;
    }

    v13 = v12;
    v14 = [v12 diffuse];

    [v14 setContents:v10];
    v15 = [objc_allocWithZone(SCNNode) init];
    SCNMatrix4.init(_:)();
    v80[0] = v81;
    v80[1] = v82;
    v80[2] = v83;
    v80[3] = v84;
    [v15 setTransform:v80];
    [v15 setGeometry:v11];

    v16 = *(v4 + 224);
    if (v16)
    {
      v17 = v16;
      [v17 addChildNode:v15];
    }

    ++v9;
    v1 += 64;
    if (v8 == v9)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
}

uint64_t sub_1000117D4(unint64_t a1)
{
  v2 = v1;
  if ([objc_opt_self() jasperAvailable])
  {
    if (a1 >> 62 == 1 || a1 >> 62 == 2 && a1 == 0x8000000000000020)
    {
      *(v2 + 216) = 1;
      swift_beginAccess();
      v4 = *(v2 + 64);
      if (!(v4 >> 62))
      {
        if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_9;
        }

        goto LABEL_7;
      }

      if (_CocoaArrayWrapper.endIndex.getter())
      {
LABEL_7:
        *(v2 + 64) = &_swiftEmptyArrayStorage;
      }
    }

    else
    {
      *(v2 + 216) = 0;
    }
  }

LABEL_9:
  if (a1 != 0x8000000000000010)
  {
    v32 = *(v2 + 80);
    *(v2 + 80) = 0;

    v18 = (v2 + 72);
LABEL_20:
    *v18 = &_swiftEmptyArrayStorage;

    return sub_100011DCC(v2);
  }

  v5 = *(v2 + 208);
  if (v5)
  {
    v6 = *(v2 + 80);
    *(v2 + 80) = v5;
    v7 = v5;

    v8 = *(v2 + 80);
    if (v8)
    {
      v9 = direct field offset for WorldEdge.connectedSurfaces;
      swift_beginAccess();
      v10 = *&v7[v9];
      v11 = direct field offset for WorldEdge.connectedSurfaces;
      swift_beginAccess();
      *&v8[v11] = v10;
      v12 = v8;
    }

    *(v2 + 72) = &_swiftEmptyArrayStorage;

    v13 = *(v2 + 80);
    if (!v13)
    {

      return sub_100011DCC(v2);
    }

    v14 = *(**(v2 + 144) + 144);

    v15 = v13;
    v14(&v40);

    v38 = v40;

    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    *(v2 + 96) = v38;
    sub_1000136FC(v16, v17);
    v18 = (v2 + 64);
    swift_beginAccess();
    v19 = *(v2 + 64);
    if (*(v2 + 96) == 1 || (v20 = *(v2 + 104)) == 0)
    {
      LOBYTE(v40) = 1;

      v31 = v40;
      v29 = 0uLL;
      v30 = 0uLL;
      v27 = 0uLL;
      v28 = 0uLL;
    }

    else
    {
      v21 = *((swift_isaMask & *v20) + 0x2B0);

      v22 = v20;
      *&v23 = v21();
      v37 = v24;
      v39 = v23;
      v35 = v26;
      v36 = v25;

      v28 = v35;
      v27 = v36;
      v30 = v37;
      v29 = v39;
      v31 = 0;
    }

    v40 = v29;
    v41 = v30;
    v42 = v27;
    v43 = v28;
    v44 = v31;
    v33 = sub_100011F8C(v15, &v40);
    sub_100103A50(v33);

    *(v2 + 72) = v19;

    goto LABEL_20;
  }

  return sub_100011DCC(v2);
}

void sub_100011B08(__int128 *a1)
{
  v2 = v1;
  v3 = a1[5];
  v4 = a1[7];
  v38 = a1[6];
  v39 = v4;
  v5 = a1[1];
  v6 = a1[3];
  v34 = a1[2];
  v35 = v6;
  v7 = a1[3];
  v8 = a1[5];
  v36 = a1[4];
  v37 = v8;
  v9 = a1[1];
  v32 = *a1;
  v33 = v9;
  v10 = a1[7];
  v41[6] = v38;
  v41[7] = v10;
  v41[2] = v34;
  v41[3] = v7;
  v41[4] = v36;
  v41[5] = v3;
  v11 = *(v1 + 200);
  v40 = *(a1 + 128);
  v42 = *(a1 + 128);
  v41[0] = v32;
  v41[1] = v5;
  if (sub_10001376C(v41) == 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *&v41[0];
  }

  if (!v11)
  {
    if (!v12)
    {
      sub_100013784(&v32, &v23);
      sub_100013784(&v32, &v23);
LABEL_17:
      v29 = v38;
      v30 = v39;
      v31 = v40;
      v25 = v34;
      v26 = v35;
      v27 = v36;
      v28 = v37;
      v23 = v32;
      v24 = v33;
      if (sub_10001376C(&v23) == 1)
      {
        v18 = 0;
      }

      else
      {
        v18 = v23;
      }

      goto LABEL_21;
    }

    goto LABEL_9;
  }

  if (!v12)
  {
LABEL_9:
    sub_100013784(&v32, &v23);
    sub_100013784(&v32, &v23);
    sub_100013784(&v32, &v23);
    goto LABEL_10;
  }

  type metadata accessor for WorldLineGuide();
  sub_100013784(&v32, &v23);
  sub_100013784(&v32, &v23);
  sub_100013784(&v32, &v23);
  v13 = v11;
  v14 = static NSObject.== infix(_:_:)();

  if (v14)
  {
    sub_1000137F4(&v32);
    sub_1000137F4(&v32);
    goto LABEL_17;
  }

LABEL_10:
  v29 = v38;
  v30 = v39;
  v31 = v40;
  v25 = v34;
  v26 = v35;
  v27 = v36;
  v28 = v37;
  v23 = v32;
  v24 = v33;
  if (sub_10001376C(&v23) != 1)
  {
    v15 = (*((swift_isaMask & *v23) + 0x258))();
    sub_1000137F4(&v32);
    if (!v15)
    {

      StateValue.wrappedValue.getter();
      sub_1000137F4(&v32);

      v19 = *(v2 + 208);
      *(v2 + 208) = *&v21[0];

      v18 = v32;
      goto LABEL_21;
    }

    sub_1000137F4(&v32);
  }

  v16 = *(v2 + 208);
  *(v2 + 208) = 0;

  v21[6] = v38;
  v21[7] = v39;
  v22 = v40;
  v21[2] = v34;
  v21[3] = v35;
  v21[4] = v36;
  v21[5] = v37;
  v21[0] = v32;
  v21[1] = v33;
  v17 = sub_10001376C(v21);
  v18 = *&v21[0];
  if (v17 == 1)
  {
    v18 = 0;
  }

LABEL_21:
  v20 = *(v2 + 200);
  *(v2 + 200) = v18;

  sub_100010CBC();
}

uint64_t sub_100011DCC(uint64_t a1)
{
  v2 = *(a1 + 72);
  v3 = *(**(a1 + 168) + 400);

  v4 = v3(v17);
  *v5 = v2;

  v4(v17, 0);

  v6 = *(a1 + 80);
  v7 = *(**(a1 + 176) + 400);
  v8 = v6;

  v9 = v7(v17);
  v11 = *(v10 + 136);
  *(v10 + 136) = v6;

  v9(v17, 0);

  swift_beginAccess();
  v12 = *(a1 + 64);
  v13 = *(**(a1 + 168) + 400);

  v14 = v13(v17);
  *(v15 + 8) = v12;

  v14(v17, 0);
}

void *sub_100011F8C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (*(a2 + 64))
  {
    swift_beginAccess();
  }

  v5 = &_swiftEmptyArrayStorage;
  v31 = &_swiftEmptyArrayStorage;
  v6 = direct field offset for WorldEdge.connectedSurfaces;
  swift_beginAccess();
  v7 = *(a1 + v6);
  v8 = *(v7 + 16);
  if (v8)
  {
    simd_float4x4.position.getter();

    SIMD3<>.zero.unsafeMutableAddressor();
    v9 = (v7 + 64);
    do
    {
      v26 = *v9;
      v28 = *(v9 - 1);
      createTransform(forward:normal:position:)();
      simd_float4x4.translated(to:)();
      simd_float4x4.translated(to:)();
      sub_10000F974(&qword_1004A4000);
      v10 = swift_allocObject();
      v10[1] = xmmword_1003D5360;
      v10[2] = v28;
      v10[3] = v26;
      v11 = objc_allocWithZone(type metadata accessor for WorldLineGuide());
      LOBYTE(v23) = 1;
      v12 = WorldLineGuide.init(guideType:end1:end2:primarySegmentEnd1:primarySegmentEnd2:backingPlanes:anchorState:)();
      v13 = *(**(v3 + 192) + 144);

      v13(__src, v14);

      memcpy(__dst, __src, 0x200uLL);
      v15 = sub_10008D4F0();
      sub_100013C4C(__dst);
      if (v15)
      {
        v16 = [v15 camera];

        [v16 transform];
        v27 = v18;
        v29 = v17;
        v24 = v20;
        v25 = v19;

        if (qword_1004A0350 != -1)
        {
          swift_once();
        }

        sub_100120ED0(v12, a1, v29, v27, v25, v24);
      }

      v21 = v12;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v9 += 4;
      --v8;
    }

    while (v8);
    v5 = v31;
  }

  return v5;
}

uint64_t sub_1000123A4(uint64_t a1)
{

  StateValue.wrappedValue.getter();

  v2 = v9[0];

  v3 = *(a1 + 112);
  *(a1 + 112) = v2;

  swift_beginAccess();
  v4 = *(a1 + 64);
  v5 = *(**(a1 + 168) + 400);

  v6 = v5(v9);
  *(v7 + 8) = v4;

  v6(v9, 0);
}

uint64_t sub_1000124A4(void *a1, uint64_t a2)
{
  v5 = (a2 + direct field offset for WorldEdge.p1);
  swift_beginAccess();
  if ((v5[1].i8[0] & 1) == 0)
  {
    v6 = v5->i64[0];
    v107 = *v5;
    v7 = (a2 + direct field offset for WorldEdge.p2);
    swift_beginAccess();
    if ((v7[1].i8[0] & 1) == 0)
    {
      v8 = v7->i64[0];
      v106 = *v7;
      v105 = v2;
      v9 = *(**(v2 + 144) + 144);

      v9(&v136, v10);

      v11 = v136;

      if (*(&v11 + 1))
      {
        (*((swift_isaMask & **(&v11 + 1)) + 0x2B0))();

        v12 = simd_float4x4.position.getter();
        v116 = v13;
        result = (*((swift_isaMask & *a1) + 0x228))(v12);
        if (!result)
        {
          return result;
        }

        v15 = result;
        v16 = direct field offset for WorldEdge.connectedSurfaces;
        swift_beginAccess();
        v17 = *(a2 + v16);
        v18 = *(v17 + 16);
        v19 = &_swiftEmptyArrayStorage;
        if (v18)
        {
          *&v136 = &_swiftEmptyArrayStorage;

          sub_1000A246C(0, v18, 0);
          v19 = v136;
          v20 = *(v136 + 16);
          v21 = 2 * v20;
          v22 = (v17 + 64);
          do
          {
            v23 = *(v22 - 1);
            v24 = *v22;
            *&v136 = v19;
            v25 = v19[1].u64[1];
            v26 = v19;
            v27 = v20 + 1;
            if (v20 >= v25 >> 1)
            {
              v119 = v24;
              v122 = v23;
              sub_1000A246C((v25 > 1), v20 + 1, 1);
              v24 = v119;
              v23 = v122;
              v26 = v136;
            }

            v26[1].i64[0] = v27;
            v28 = &v26[v21];
            v28[2] = v23;
            v28[3] = v24;
            v21 += 2;
            v22 += 4;
            v20 = v27;
            --v18;
            v19 = v26;
          }

          while (v18);
        }

        v109 = *(v15 + 16);
        if (v109)
        {
          v104 = v8;
          v111 = 0;
          v112 = 0;
          v113 = 0;
          v110 = 0.0;
          v29 = 0;
          v30 = v19[1].i64[0];
          v114 = 1;
          v31 = 1;
          v108 = v30;
          do
          {
            if (v30)
            {
              v32 = v19 + 3;
              v33 = v15 + 32 + 32 * v29;
              v34 = *(v33 + 16);
              v36 = *v33;
              v35 = *(v33 + 8);
              v37 = v34;
              v117 = v34;
              do
              {
                v38 = vmulq_f32(v34, *v32);
                if ((v38.f32[2] + vaddv_f32(*v38.f32)) >= 0.7)
                {
                  type metadata accessor for PlaneUtil();
                  static PlaneUtil.distance(point:plane:)();
                  v34 = v117;
                  if (v39 <= 0.05)
                  {
                    v114 = 0;
                    v31 = 0;
                    v111 = v35;
                    v112 = v36;
                    v113 = *v37.f32;
                    v110 = v37.f32[2];
                  }
                }

                v32 += 2;
                --v30;
              }

              while (v30);
            }

            ++v29;
            v30 = v108;
          }

          while (v29 != v109);

          if (((v31 | v114) & 1) == 0)
          {
            v42 = vdup_lane_s32(v113, 1);
            v42.i32[0] = v113.i32[0];
            v44 = v106;
            v43 = v107;
            v45 = vzip1_s32(*&vextq_s8(v44, v44, 8uLL), *&vextq_s8(v43, v43, 8uLL));
            *v41.f32 = vadd_f32(vmul_n_f32(vsub_f32(v45, vdup_lane_s32(v111, 0)), v110), vadd_f32(vmul_n_f32(vsub_f32(__PAIR64__(v6, v104), vdup_lane_s32(v112, 0)), v113.f32[0]), vmul_lane_f32(vsub_f32(vzip2_s32(*v106.i8, *v107.i8), vdup_lane_s32(v112, 1)), v113, 1)));
            v43.i32[0] = v6;
            v46 = vsub_f32(*v43.i8, vmul_lane_f32(v42, *v41.f32, 1));
            v47 = vsub_f32(v45, vmul_n_f32(*v41.f32, v110));
            v44.i32[0] = v104;
            *v41.f32 = vsub_f32(vsub_f32(*v44.i8, vmul_n_f32(v42, v41.f32[0])), v46);
            v48 = *&v47.i32[1];
            v41.f32[2] = *v47.i32 - *&v47.i32[1];
            v49 = vmulq_f32(v41, v41);
            *&v50 = v49.f32[2] + vaddv_f32(*v49.f32);
            *v49.f32 = vrsqrte_f32(v50);
            *v49.f32 = vmul_f32(*v49.f32, vrsqrts_f32(v50, vmul_f32(*v49.f32, *v49.f32)));
            v51 = vmulq_n_f32(v41, vmul_f32(*v49.f32, vrsqrts_f32(v50, vmul_f32(*v49.f32, *v49.f32))).f32[0]);
            v52 = vmulq_f32(v51, v51);
            v49.f32[0] = v52.f32[2] + vaddv_f32(*v52.f32);
            *v52.f32 = vrsqrte_f32(v49.u32[0]);
            *v52.f32 = vmul_f32(*v52.f32, vrsqrts_f32(v49.u32[0], vmul_f32(*v52.f32, *v52.f32)));
            v53 = vmulq_n_f32(v51, vmul_f32(*v52.f32, vrsqrts_f32(v49.u32[0], vmul_f32(*v52.f32, *v52.f32))).f32[0]);
            v54 = vmul_f32(vsub_f32(*&vextq_s8(v116, v116, 4uLL), vzip2_s32(v46, v47)), *&vextq_s8(v53, v53, 4uLL));
            v54.f32[0] = v54.f32[1] + (((*v116.i32 - v46.f32[0]) * v53.f32[0]) + v54.f32[0]);
            v49.f32[0] = (v48 + vmuls_lane_f32(v54.f32[0], v53, 2)) - *&v116.i32[2];
            v55 = vsub_f32(vadd_f32(v46, vmul_n_f32(*v53.f32, v54.f32[0])), *v116.i8);
            if (((v49.f32[0] * v49.f32[0]) + vaddv_f32(vmul_f32(v55, v55))) < 0.0025)
            {
              v118 = v51;
              v120 = v46;
              (*((swift_isaMask & *a1) + 0x2A8))(v40);
              v56 = simd_float4x4.position.getter();
              v123 = v57;
              v58 = *((swift_isaMask & *a1) + 0x2A0);
              v58(v56);
              v59 = simd_float4x4.position.getter();
              v61 = vsubq_f32(v123, v60);
              v62 = vmulq_f32(v61, v61);
              *&v63 = v62.f32[2] + vaddv_f32(*v62.f32);
              *v62.f32 = vrsqrte_f32(v63);
              *v62.f32 = vmul_f32(*v62.f32, vrsqrts_f32(v63, vmul_f32(*v62.f32, *v62.f32)));
              v124 = vmulq_n_f32(v61, vmul_f32(*v62.f32, vrsqrts_f32(v63, vmul_f32(*v62.f32, *v62.f32))).f32[0]);
              v58(v59);
              simd_float4x4.position.getter();
              *v65.f32 = vsub_f32(v120, v64);
              v121 = v64;
              v67 = v66;
              v65.f32[2] = v48 - v66;
              v68 = vextq_s8(vuzp1q_s32(v118, v118), v118, 0xCuLL);
              v69 = vmlaq_f32(vmulq_f32(v68, vnegq_f32(v65)), v118, vextq_s8(vuzp1q_s32(v65, v65), v65, 0xCuLL));
              v70 = vmlaq_f32(vmulq_f32(v68, vnegq_f32(v124)), v118, vextq_s8(vuzp1q_s32(v124, v124), v124, 0xCuLL));
              v71 = vmulq_f32(v69, v69);
              v71.i64[0] = vextq_s8(v71, v71, 4uLL).u64[0];
              v72 = vmulq_f32(v70, v70);
              v72.i64[0] = vextq_s8(v72, v72, 4uLL).u64[0];
              *v69.f32 = vzip1_s32(*v69.f32, *v70.f32);
              *v69.f32 = vsqrt_f32(vadd_f32(vzip1_s32(*v71.i8, *v72.i8), vadd_f32(vzip2_s32(*v71.i8, *v72.i8), vmul_f32(*v69.f32, *v69.f32))));
              v115 = vdiv_f32(*v69.f32, vdup_lane_s32(*v69.f32, 1)).f32[0];
              type metadata accessor for LineUtil();
              v73 = static LineUtil.isParallel(_:_:)();
              v74 = -v115;
              if (v73 != -1)
              {
                v74 = v115;
              }

              v75 = vmuls_lane_f32(v74, v124, 2);
              v76 = vmul_n_f32(*v124.f32, v74);
              sub_10000F974(&qword_1004A46E0);
              v77 = swift_allocObject();
              *(v77 + 16) = xmmword_1003D5360;
              v78 = *(**(v105 + 176) + 144);

              v78(v135, v79);

              v142 = *&v135[96];
              v143 = *&v135[112];
              v144 = *&v135[128];
              v145 = *&v135[144];
              v138 = *&v135[32];
              v139 = *&v135[48];
              v140 = *&v135[64];
              v141 = *&v135[80];
              v136 = *v135;
              v137 = *&v135[16];
              v80 = *&v135[144];

              sub_100013BF8(&v136);
              v81 = *(v80 + 16);

              *(v77 + 56) = &type metadata for Int;
              *(v77 + 32) = v81;
              print(_:separator:terminator:)();

              v82 = *(**(v105 + 176) + 144);

              v82(v135, v83);

              v84 = *v135;
              *v132 = *&v135[104];
              *&v132[16] = *&v135[120];
              v133 = *&v135[136];
              v128 = *&v135[40];
              v129 = *&v135[56];
              v130 = *&v135[72];
              v131 = *&v135[88];
              v126 = *&v135[8];
              v127 = *&v135[24];
              v152 = *&v135[88];
              v148 = *&v135[24];
              v151 = *&v135[72];
              v153[0] = *&v135[104];
              *(v153 + 9) = *&v132[9];
              v147 = *&v135[8];
              v149 = *&v135[40];
              v150 = *&v135[56];
              v146 = *v135;
              if (sub_10001376C(&v146) == 1)
              {
                *&v135[88] = v131;
                *&v135[104] = *v132;
                *&v135[120] = *&v132[16];
                *&v135[136] = v133;
                *&v135[24] = v127;
                *&v135[40] = v128;
                *&v135[56] = v129;
                *&v135[72] = v130;
                *v135 = v84;
                *&v135[8] = v126;
                v85 = sub_100013BF8(v135);
                v86 = 0;
                v87 = 0;
              }

              else
              {
                *&v135[88] = v131;
                *&v135[104] = *v132;
                *&v135[120] = *&v132[16];
                *&v135[136] = v133;
                *&v135[24] = v127;
                *&v135[40] = v128;
                *&v135[56] = v129;
                *&v135[72] = v130;
                *v135 = v84;
                *&v135[8] = v126;
                v88 = v84;
                v89 = sub_100013BF8(v135);
                v86 = (*((swift_isaMask & *v88) + 0xB8))(v89);
                v87 = v90;
              }

              v125 = vadd_f32(v121, v76);
              v91 = (*((swift_isaMask & *a1) + 0xB8))(v85);
              if (v87)
              {
                if (v86 == v91 && v87 == v92)
                {

                  v93 = v105;
                }

                else
                {
                  v94 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  v93 = v105;
                  if ((v94 & 1) == 0)
                  {
                    return v125;
                  }
                }

                v95 = *(**(v93 + 176) + 144);

                v95(&v126, v96);

                *&v135[96] = *v132;
                *&v135[112] = *&v132[16];
                *&v135[128] = v133;
                *&v135[144] = v134;
                *&v135[32] = v128;
                *&v135[48] = v129;
                *&v135[64] = v130;
                *&v135[80] = v131;
                *v135 = v126;
                *&v135[16] = v127;
                v97 = v134;

                sub_100013BF8(v135);
                v98 = v97 + 80;
                v99 = *(v97 + 16) + 1;
                while (--v99)
                {
                  v100 = v98 + 64;
                  simd_float4x4.position.getter();
                  v103 = vsub_f32(v102, v125);
                  v98 = v100;
                  if ((((v101 - (v67 + v75)) * (v101 - (v67 + v75))) + vaddv_f32(vmul_f32(v103, v103))) < 0.0025)
                  {
                    goto LABEL_27;
                  }
                }
              }

              return v125;
            }
          }
        }

        else
        {

LABEL_27:
        }
      }
    }
  }

  return 0;
}

void sub_100013008()
{
  v1 = v0;

  StateValue.wrappedValue.getter();

  if (v4)
  {
    v2 = v4;
    if ((*(v0 + 216) & 1) == 0)
    {
      v3 = sub_1000130F8(v4);
      swift_beginAccess();
      v2 = v3;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*(v1 + 64) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 64) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      swift_endAccess();
    }
  }
}

void *sub_1000130F8(uint64_t a1)
{
  v2 = v1;
  sub_10001385C(a1, __dst);
  swift_beginAccess();
  swift_beginAccess();
  v4 = direct field offset for WorldEdge.connectedSurfaces;
  swift_beginAccess();
  v5 = *(a1 + v4);
  v6 = *(v5 + 16);
  if (v6)
  {
    v30 = v2;
    *&__dst[0] = &_swiftEmptyArrayStorage;

    sub_1000A246C(0, v6, 0);
    v7 = *&__dst[0];
    v8 = *(*&__dst[0] + 16);
    v9 = 32 * v8;
    v10 = (v5 + 64);
    do
    {
      v11 = *(v10 - 1);
      v12 = *v10;
      *&__dst[0] = v7;
      v13 = *(v7 + 24);
      v14 = v8 + 1;
      if (v8 >= v13 >> 1)
      {
        v28 = v12;
        v29 = v11;
        sub_1000A246C((v13 > 1), v8 + 1, 1);
        v12 = v28;
        v11 = v29;
        v7 = *&__dst[0];
      }

      *(v7 + 16) = v14;
      v15 = v7 + v9;
      *(v15 + 32) = v11;
      *(v15 + 48) = v12;
      v9 += 32;
      v10 += 4;
      v8 = v14;
      --v6;
    }

    while (v6);

    v2 = v30;
  }

  v16 = objc_allocWithZone(type metadata accessor for WorldLineGuide());
  LOBYTE(v27) = 0;
  v17 = WorldLineGuide.init(guideType:end1:end2:primarySegmentEnd1:primarySegmentEnd2:backingPlanes:anchorState:)();
  v18 = *(**(v2 + 192) + 144);

  v18(__src, v19);

  memcpy(__dst, __src, 0x200uLL);
  v20 = sub_10008D4F0();
  sub_100013C4C(__dst);
  if (v20)
  {
    v21 = [v20 camera];

    [v21 transform];
    v33 = v23;
    v34 = v22;
    v31 = v25;
    v32 = v24;

    if (qword_1004A0350 != -1)
    {
      swift_once();
    }

    sub_1001207A4(v17, a1, v34, v33, v32, v31);
  }

  return v17;
}

void sub_1000133EC()
{

  sub_1000136FC(*(v0 + 96), *(v0 + 104));

  v1 = *(v0 + 224);
}

id *sub_10001348C()
{
  v0 = StateObserver.deinit();

  sub_1000136FC(v0[12], v0[13]);

  return v0;
}

uint64_t sub_100013534()
{
  sub_10001348C();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for EdgeGuidesInstrument()
{
  result = qword_1004A1028;
  if (!qword_1004A1028)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_100013654@<X0>(uint64_t *a1@<X8>)
{
  if (qword_1004A0180 != -1)
  {
    swift_once();
  }

  result = *(&xmmword_1004D4AE8 + 1);
  if (*(&xmmword_1004D4AE8 + 1))
  {
    v3 = *(&xmmword_1004D4AE8 + 1);
    *a1 = Contexts.PrivateQueue.init(_:)();

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1000136FC(void *a1, void *a2)
{
  if (a1 != 1)
  {
  }
}

uint64_t sub_10001376C(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_100013784(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000F974(&qword_1004A1208);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000137F4(uint64_t a1)
{
  v2 = sub_10000F974(&qword_1004A1208);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10001385C@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = a1 + direct field offset for WorldEdge.p1;
  swift_beginAccess();
  swift_beginAccess();
  simd_float4x4.forward.getter();
  simd_float4x4.position.getter();
  if ((*(v3 + 16) & 1) == 0)
  {
    swift_beginAccess();
  }

  simd_float4x4.translated(to:)();
  v15 = v5;
  v16 = v4;
  v13 = v7;
  v14 = v6;
  result = simd_float4x4.translated(to:)();
  *a2 = v16;
  a2[1] = v15;
  a2[2] = v14;
  a2[3] = v13;
  a2[4] = v9;
  a2[5] = v10;
  a2[6] = v11;
  a2[7] = v12;
  return result;
}

unint64_t sub_100013B4C()
{
  result = qword_1004A1210;
  if (!qword_1004A1210)
  {
    sub_100013BB0(&qword_1004A3EF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A1210);
  }

  return result;
}

uint64_t sub_100013BB0(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

id sub_100013CDC(uint64_t a1, SEL *a2, void *a3)
{
  result = [objc_opt_self() *a2];
  *a3 = result;
  return result;
}

id sub_100013D20()
{
  result = [objc_opt_self() systemFontOfSize:16.0 weight:UIFontWeightMedium];
  qword_1004D49D8 = result;
  return result;
}

id sub_100013DA0(char a1, double a2, double a3)
{
  v6 = [objc_allocWithZone(CAShapeLayer) init];
  v7 = [objc_opt_self() bezierPathWithArcCenter:1 radius:a2 startAngle:a3 endAngle:4.0 clockwise:{0.0, 6.28318531}];
  v8 = [v7 CGPath];

  [v6 setPath:v8];
  if (a1)
  {
    if (qword_1004A0090 != -1)
    {
      swift_once();
    }

    v9 = &qword_1004D49D0;
  }

  else
  {
    if (qword_1004A0080 != -1)
    {
      swift_once();
    }

    v9 = &qword_1004D49C0;
  }

  v10 = [*v9 CGColor];
  [v6 setFillColor:v10];

  v11 = [objc_opt_self() clearColor];
  v12 = [v11 CGColor];

  [v6 setStrokeColor:v12];
  return v6;
}

char *sub_100013F6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v7 = OBJC_IVAR____TtC7Measure32DetailedPlatterCellTableViewCell_measureContent;
  *&v3[v7] = [objc_allocWithZone(type metadata accessor for MeasureTableViewCellCommonContentView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  if (a3)
  {
    v8 = String._bridgeToObjectiveC()();
  }

  else
  {
    v8 = 0;
  }

  v15.receiver = v3;
  v15.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v15, "initWithStyle:reuseIdentifier:", a1, v8);

  v10 = v9;
  v11 = [v10 contentView];
  v12 = OBJC_IVAR____TtC7Measure32DetailedPlatterCellTableViewCell_measureContent;
  [v11 addSubview:*&v10[OBJC_IVAR____TtC7Measure32DetailedPlatterCellTableViewCell_measureContent]];

  [*&v10[v12] setTranslatesAutoresizingMaskIntoConstraints:0];
  v13 = [v10 contentView];
  sub_10012B618(v13, UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right);

  return v10;
}

id sub_10001411C(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC7Measure32DetailedPlatterCellTableViewCell_measureContent;
  *&v1[v4] = [objc_allocWithZone(type metadata accessor for MeasureTableViewCellCommonContentView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v12.receiver = v1;
  v12.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v12, "initWithCoder:", a1);
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    v8 = [v7 contentView];
    v9 = OBJC_IVAR____TtC7Measure32DetailedPlatterCellTableViewCell_measureContent;
    [v8 addSubview:*&v7[OBJC_IVAR____TtC7Measure32DetailedPlatterCellTableViewCell_measureContent]];

    [*&v7[v9] setTranslatesAutoresizingMaskIntoConstraints:0];
    v10 = [v7 contentView];
    sub_10012B618(v10, UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right);

    a1 = v10;
  }

  return v6;
}

id sub_1000142EC(uint64_t *a1, uint64_t (*a2)(void))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2();
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

uint64_t sub_10001434C()
{
  v1 = OBJC_IVAR____TtC7Measure16SCNPatchDebugger____lazy_storage___pointPool;
  if (*&v0[OBJC_IVAR____TtC7Measure16SCNPatchDebugger____lazy_storage___pointPool])
  {
    v2 = *&v0[OBJC_IVAR____TtC7Measure16SCNPatchDebugger____lazy_storage___pointPool];
  }

  else
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v0;
    v4 = swift_allocObject();
    *(v4 + 16) = sub_100019004;
    *(v4 + 24) = v3;
    sub_10000F974(&qword_1004A1400);
    swift_allocObject();
    v5 = v0;
    v2 = ObjectPool.init(allocator:deallocator:synchronized:)();
    *&v0[v1] = v2;
  }

  return v2;
}

uint64_t sub_10001444C()
{
  v1 = OBJC_IVAR____TtC7Measure16SCNPatchDebugger____lazy_storage___paintPool;
  if (*&v0[OBJC_IVAR____TtC7Measure16SCNPatchDebugger____lazy_storage___paintPool])
  {
    v2 = *&v0[OBJC_IVAR____TtC7Measure16SCNPatchDebugger____lazy_storage___paintPool];
  }

  else
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v0;
    v4 = swift_allocObject();
    *(v4 + 16) = sub_100018EC0;
    *(v4 + 24) = v3;
    sub_10000F974(&qword_1004A1400);
    swift_allocObject();
    v5 = v0;
    v2 = ObjectPool.init(allocator:deallocator:synchronized:)();
    *&v0[v1] = v2;
  }

  return v2;
}

id sub_10001454C()
{
  v1 = OBJC_IVAR____TtC7Measure16SCNPatchDebugger____lazy_storage___skRenderer;
  v2 = *(v0 + OBJC_IVAR____TtC7Measure16SCNPatchDebugger____lazy_storage___skRenderer);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC7Measure16SCNPatchDebugger____lazy_storage___skRenderer);
  }

  else
  {
    v4 = *(v0 + OBJC_IVAR____TtC7Measure16SCNPatchDebugger_sceneView);
    v5 = *(v0 + OBJC_IVAR____TtC7Measure16SCNPatchDebugger_tracker);
    objc_allocWithZone(type metadata accessor for SCNPatchDebugger.SKDebugRenderer());
    v6 = v4;

    v7 = v5;
    v8 = v0;
    SCNPatchDebugger.SKDebugRenderer.init(sceneView:tracker:)(v6, v7);
    v9 = *(v0 + v1);
    *(v8 + v1) = v10;
    v3 = v10;

    v2 = 0;
  }

  v11 = v2;
  return v3;
}

id SCNPatchDebugger.init(sceneView:tracker:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = OBJC_IVAR____TtC7Measure16SCNPatchDebugger____lazy_storage___pointContainerNode;
  *&v3[OBJC_IVAR____TtC7Measure16SCNPatchDebugger____lazy_storage___pointContainerNode] = 0;
  v7 = OBJC_IVAR____TtC7Measure16SCNPatchDebugger____lazy_storage___paintContainerNode;
  *&v3[OBJC_IVAR____TtC7Measure16SCNPatchDebugger____lazy_storage___paintContainerNode] = 0;
  *&v3[OBJC_IVAR____TtC7Measure16SCNPatchDebugger____lazy_storage___pointPool] = 0;
  *&v3[OBJC_IVAR____TtC7Measure16SCNPatchDebugger____lazy_storage___paintPool] = 0;
  v8 = OBJC_IVAR____TtC7Measure16SCNPatchDebugger____lazy_storage___skRenderer;
  *&v3[OBJC_IVAR____TtC7Measure16SCNPatchDebugger____lazy_storage___skRenderer] = 0;
  objc_opt_self();
  v9 = swift_dynamicCastObjCClass();
  if (v9)
  {
    *&v3[OBJC_IVAR____TtC7Measure16SCNPatchDebugger_sceneView] = v9;
    *&v3[OBJC_IVAR____TtC7Measure16SCNPatchDebugger_tracker] = a3;
    v10 = v9;
    v18.receiver = v3;
    v18.super_class = type metadata accessor for SCNPatchDebugger();
    v11 = a1;

    v12 = objc_msgSendSuper2(&v18, "init");
    v13 = String._bridgeToObjectiveC()();
    [v12 setName:{v13, v18.receiver, v18.super_class}];

    v14 = objc_opt_self();
    [v14 begin];
    v15 = [v10 scene];
    v16 = [v15 rootNode];

    [v16 addChildNode:v12];
    [v14 commit];
    sub_100018630(0, &unk_1004A7540);
    PatchTracker.DebugOptions.keys.unsafeMutableAddressor();

    static NSUserDefaults.observe(observer:keys:)();
  }

  else
  {

    type metadata accessor for SCNPatchDebugger();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v12;
}

void SCNPatchDebugger.update(intersections:candidates:confidentPoint:result:)(uint64_t a1, float32x4_t *a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, char a8)
{
  v9 = v8;
  v16 = (*(**(v8 + OBJC_IVAR____TtC7Measure16SCNPatchDebugger_tracker) + 1232))();
  if ((*PatchTracker.DebugOptions.showPoints.unsafeMutableAddressor() & ~v16) != 0)
  {
    return;
  }

  v87 = a8;
  v88 = a5;
  v86 = *&a3;
  v17 = sub_10001434C();
  v18 = sub_1000142AC();
  v19 = [v18 childNodes];

  sub_100018630(0, &qword_1004A1318);
  v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  (*(*v17 + 216))(v20);

  v21 = OBJC_IVAR____TtC7Measure16SCNPatchDebugger____lazy_storage___pointContainerNode;
  v22 = *(v9 + OBJC_IVAR____TtC7Measure16SCNPatchDebugger____lazy_storage___pointContainerNode);
  SCNNode.removeAllChildren()();

  v90 = a2;
  v89 = *&a6;
  if (a2)
  {
    v23 = a2[1].i64[0] == 0;
  }

  else
  {
    v23 = 1;
  }

  v94 = v23;
  v24 = &off_100494000;
  v93 = *(a1 + 16);
  if (!v93)
  {
LABEL_44:
    v25 = v89;
    if (v88)
    {
      goto LABEL_62;
    }

    v24 = [objc_opt_self() magentaColor];
    v61 = *(**(v9 + OBJC_IVAR____TtC7Measure16SCNPatchDebugger____lazy_storage___pointPool) + 200);

    v61(v97, v62);

    v43 = v97[0];
    v63 = [v97[0] geometry];
    if (!v63)
    {
LABEL_59:
      [v43 setSimdPosition:v86];
      v69 = String._bridgeToObjectiveC()();
      v70 = [v43 childNodeWithName:v69 recursively:0];

      if (v70)
      {
        [v70 setHidden:1];
      }

      [*(v21 + v9) addChildNode:v43];

LABEL_62:
      if (v87)
      {
        return;
      }

      v71 = [objc_opt_self() greenColor];
      v72 = *(**(v9 + OBJC_IVAR____TtC7Measure16SCNPatchDebugger____lazy_storage___pointPool) + 200);

      v72(v97, v73);

      v74 = v97[0];
      v75 = [v97[0] geometry];
      if (!v75)
      {
        goto LABEL_75;
      }

      v76 = v75;
      objc_opt_self();
      v77 = swift_dynamicCastObjCClass();
      if (!v77)
      {
LABEL_74:

LABEL_75:
        [v74 setSimdPosition:v25];
        v84 = String._bridgeToObjectiveC()();
        v85 = [v74 childNodeWithName:v84 recursively:0];

        if (v85)
        {
          [v85 setHidden:1];
        }

        [*(v21 + v9) addChildNode:v74];

        return;
      }

      v78 = v77;
      v79 = [v77 materials];
      sub_100018630(0, &qword_1004AF720);
      v80 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v80 >> 62)
      {
        if (_CocoaArrayWrapper.endIndex.getter())
        {
          goto LABEL_67;
        }
      }

      else if (*((v80 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_67:
        if ((v80 & 0xC000000000000001) != 0)
        {
          v81 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (!*((v80 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_82;
          }

          v81 = *(v80 + 32);
        }

        v82 = v81;

        v83 = [v82 diffuse];

        [v83 setContents:v71];
        goto LABEL_73;
      }

LABEL_73:
      [v78 setRadius:0.005];
      goto LABEL_74;
    }

    v47 = v63;
    objc_opt_self();
    v64 = swift_dynamicCastObjCClass();
    if (!v64)
    {
LABEL_58:

      goto LABEL_59;
    }

    v45 = v64;
    v65 = [v64 materials];
    sub_100018630(0, &qword_1004AF720);
    v48 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v48 >> 62)
    {
      goto LABEL_55;
    }

    if (*((v48 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_49;
    }

LABEL_56:

LABEL_57:
    [v45 setRadius:0.003];
    goto LABEL_58;
  }

  v25 = 0.0;
  v91 = OBJC_IVAR____TtC7Measure16SCNPatchDebugger____lazy_storage___pointPool;
  v92 = a1 + 32;
  while (1)
  {
    v26 = v92 + 176 * *&v25;
    v27 = *(v26 + 144);
    v105 = *(v26 + 128);
    v106 = v27;
    v107 = *(v26 + 160);
    v28 = *(v26 + 80);
    v101 = *(v26 + 64);
    v102 = v28;
    v29 = *(v26 + 112);
    v103 = *(v26 + 96);
    v104 = v29;
    v30 = *(v26 + 16);
    *v97 = *v26;
    v98 = v30;
    v31 = *(v26 + 48);
    v99 = *(v26 + 32);
    v100 = v31;
    v95 = v97[0];
    if (v94)
    {
      goto LABEL_16;
    }

    if (!v90)
    {
      goto LABEL_83;
    }

    v32 = v90[1].i64[0];
    v33 = v90 + 2;
    if (!v32)
    {
LABEL_16:
      v36 = objc_opt_self();
      sub_1000185C0(v97, v96);
      v37 = &selRef_redColor;
      v38 = 0.001;
    }

    else
    {
      while (1)
      {
        v34 = vsubq_f32(*v33, *v97);
        v35 = vmulq_f32(v34, v34);
        if ((v35.f32[2] + vaddv_f32(*v35.f32)) == 0.0)
        {
          break;
        }

        v33 += 11;
        if (!--v32)
        {
          goto LABEL_16;
        }
      }

      v36 = objc_opt_self();
      sub_1000185C0(v97, v96);
      v37 = &selRef_yellowColor;
      v38 = 0.002;
    }

    v39 = [v36 *v37];
    sub_1000185C0(v97, v96);

    v40 = *(**(v9 + v91) + 200);
    v41 = v39;

    v40(v96, v42);

    v43 = v96[0];
    v44 = [v96[0] geometry];
    if (v44)
    {
      break;
    }

LABEL_30:
    [v43 setSimdPosition:*&v95];
    v53 = String._bridgeToObjectiveC()();
    v45 = [v43 childNodeWithName:v53 recursively:0];

    if (!v45)
    {
      goto LABEL_10;
    }

    v54 = [v45 geometry];
    if (v54)
    {
      v55 = v54;
      objc_opt_self();
      v56 = swift_dynamicCastObjCClass();
      if (v56)
      {
        v47 = v56;
        v24 = v21;
        [v45 setHidden:0];
        v21 = [v47 materials];
        sub_100018630(0, &qword_1004AF720);
        v48 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if (v48 >> 62)
        {
          if (!_CocoaArrayWrapper.endIndex.getter())
          {
            goto LABEL_41;
          }

LABEL_35:
          if ((v48 & 0xC000000000000001) != 0)
          {
            v57 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (!*((v48 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_54;
            }

            v57 = *(v48 + 32);
          }

          v58 = v57;

          v59 = [v58 diffuse];

          [v59 setContents:v41];
        }

        else
        {
          if (*((v48 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_35;
          }

LABEL_41:
        }

        v21 = v24;
        v60 = v38 * 0.25;
        [v47 setWidth:v60];
        [v47 setHeight:v60];
        SCNNode.setForwardDirection(direction:)();

        v24 = &off_100494000;
        goto LABEL_9;
      }
    }

    [v45 setHidden:1];
LABEL_9:

LABEL_10:
    ++*&v25;
    [*(v21 + v9) v24[41]];

    sub_100018F04(v97, &qword_1004A1320);
    if (*&v25 == v93)
    {
      goto LABEL_44;
    }
  }

  v45 = v44;
  objc_opt_self();
  v46 = swift_dynamicCastObjCClass();
  if (!v46)
  {
LABEL_29:

    goto LABEL_30;
  }

  v47 = v46;
  v48 = [v46 materials];
  sub_100018630(0, &qword_1004AF720);
  v49 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v49 >> 62))
  {
    if (*((v49 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_21;
    }

LABEL_27:

    goto LABEL_28;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_27;
  }

LABEL_21:
  if ((v49 & 0xC000000000000001) != 0)
  {
    v50 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_24;
  }

  if (*((v49 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v50 = *(v49 + 32);
LABEL_24:
    v51 = v50;

    v52 = [v51 diffuse];

    [v52 setContents:v41];
LABEL_28:
    [v47 setRadius:v38];
    goto LABEL_29;
  }

  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_56;
  }

LABEL_49:
  if ((v48 & 0xC000000000000001) != 0)
  {
    v66 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_52:
    v67 = v66;

    v68 = [v67 diffuse];

    [v68 setContents:v24];
    goto LABEL_57;
  }

  if (*((v48 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v66 = *(v48 + 32);
    goto LABEL_52;
  }

  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
}

id sub_100015618()
{
  v1 = v0;
  v2 = [objc_allocWithZone(SCNNode) init];
  v3 = String._bridgeToObjectiveC()();
  [v2 setName:v3];

  v4 = (*(**&v1[OBJC_IVAR____TtC7Measure16SCNPatchDebugger_tracker] + 1232))();
  [v2 setHidden:(*PatchTracker.DebugOptions.showPoints.unsafeMutableAddressor() & ~v4) != 0];
  [v1 addChildNode:v2];
  return v2;
}

id sub_100015714()
{
  v1 = v0;
  v2 = [objc_allocWithZone(SCNNode) init];
  v3 = String._bridgeToObjectiveC()();
  [v2 setName:v3];

  v4 = (*(**&v1[OBJC_IVAR____TtC7Measure16SCNPatchDebugger_tracker] + 1232))();
  [v2 setHidden:(*PatchTracker.DebugOptions.paintMode.unsafeMutableAddressor() & ~v4) != 0];
  [v1 addChildNode:v2];
  return v2;
}

Swift::Void __swiftcall SCNPatchDebugger.clearPatches()()
{
  v0 = sub_10001454C();
  v1 = *&v0[OBJC_IVAR____TtCC7Measure16SCNPatchDebugger15SKDebugRenderer_drawingTexture];
  if (v1)
  {
    v2 = v0;
    v3 = swift_allocObject();
    *(v3 + 16) = v2;
    v7[4] = sub_100018BC0;
    v7[5] = v3;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 1107296256;
    v7[2] = sub_1000166BC;
    v7[3] = &unk_100467700;
    v4 = _Block_copy(v7);
    v5 = v1;
    v6 = v2;

    [v5 modifyPixelDataWithBlock:v4];
    _Block_release(v4);
  }

  else
  {
    __break(1u);
  }
}

void SCNPatchDebugger.drawPatch(_:)(uint64_t a1)
{
  v2 = sub_10001454C();
  sub_10000F974(&unk_1004A3F10);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1003D56B0;
  *(v3 + 32) = a1;
  v4 = *&v2[OBJC_IVAR____TtCC7Measure16SCNPatchDebugger15SKDebugRenderer_drawingTexture];
  if (v4)
  {
    v5 = v3;
    v6 = swift_allocObject();
    v6[2] = v2;
    v6[3] = v5;
    v6[4] = 0;
    v10[4] = sub_100018BE0;
    v10[5] = v6;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 1107296256;
    v10[2] = sub_1000166BC;
    v10[3] = &unk_100467750;
    v7 = _Block_copy(v10);

    v8 = v4;
    v9 = v2;

    [v8 modifyPixelDataWithBlock:v7];
    _Block_release(v7);
  }

  else
  {
    __break(1u);
  }
}

void sub_100015A78()
{
  v1 = v0 + OBJC_IVAR____TtCC7Measure16SCNPatchDebugger15SKDebugRenderer____lazy_storage___width;
  if (*(v0 + OBJC_IVAR____TtCC7Measure16SCNPatchDebugger15SKDebugRenderer____lazy_storage___width + 8) == 1)
  {
    v2 = *(v0 + OBJC_IVAR____TtCC7Measure16SCNPatchDebugger15SKDebugRenderer_tracker);
    v3 = *(v2 + 224);
    v4 = __OFADD__(v3, 5);
    v5 = v3 + 5;
    if (v4)
    {
      __break(1u);
    }

    else
    {
      v6 = *(v2 + 240);
      v7 = v5 * v6;
      if ((v5 * v6) >> 64 == (v5 * v6) >> 63)
      {
        if (!__OFADD__(v7, 5))
        {
          *v1 = v7 + 5;
          *(v1 + 8) = 0;
          return;
        }

        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_9:
    __break(1u);
  }
}

void sub_100015AE4()
{
  v1 = v0 + OBJC_IVAR____TtCC7Measure16SCNPatchDebugger15SKDebugRenderer____lazy_storage___height;
  if (*(v0 + OBJC_IVAR____TtCC7Measure16SCNPatchDebugger15SKDebugRenderer____lazy_storage___height + 8) == 1)
  {
    v2 = *(*(v0 + OBJC_IVAR____TtCC7Measure16SCNPatchDebugger15SKDebugRenderer_tracker) + 224);
    v3 = __OFADD__(v2, 5);
    v4 = v2 + 5;
    if (v3)
    {
      __break(1u);
    }

    else if (v4 + 0x4000000000000000 >= 0)
    {
      v5 = 2 * v4;
      if (!__OFADD__(v5, 5))
      {
        *v1 = v5 + 5;
        *(v1 + 8) = 0;
        return;
      }

      goto LABEL_9;
    }

    __break(1u);
LABEL_9:
    __break(1u);
  }
}

uint64_t sub_100015B4C()
{
  v1 = (v0 + OBJC_IVAR____TtCC7Measure16SCNPatchDebugger15SKDebugRenderer____lazy_storage___patchSizeInPixels);
  if (*(v0 + OBJC_IVAR____TtCC7Measure16SCNPatchDebugger15SKDebugRenderer____lazy_storage___patchSizeInPixels + 8) != 1)
  {
    return *v1;
  }

  result = *(*(v0 + OBJC_IVAR____TtCC7Measure16SCNPatchDebugger15SKDebugRenderer_tracker) + 224);
  *v1 = result;
  v1[8] = 0;
  return result;
}

uint64_t sub_100015B88()
{
  v1 = v0 + OBJC_IVAR____TtCC7Measure16SCNPatchDebugger15SKDebugRenderer____lazy_storage___patchAlphaBuffer;
  if (*(v0 + OBJC_IVAR____TtCC7Measure16SCNPatchDebugger15SKDebugRenderer____lazy_storage___patchAlphaBuffer + 32) != 1)
  {
    return *v1;
  }

  sub_100015B4C();
  static vImage_Buffer.make(width:height:rowBytes:allocating:)();
  result = vImage_Buffer.fill(value:)();
  *v1 = result;
  *(v1 + 8) = v3;
  *(v1 + 16) = v4;
  *(v1 + 24) = v5;
  *(v1 + 32) = 0;
  return result;
}

uint64_t sub_100015C14()
{
  v1 = v0 + OBJC_IVAR____TtCC7Measure16SCNPatchDebugger15SKDebugRenderer____lazy_storage___patchEmbossBuffer;
  if (*(v0 + OBJC_IVAR____TtCC7Measure16SCNPatchDebugger15SKDebugRenderer____lazy_storage___patchEmbossBuffer + 32) != 1)
  {
    return *v1;
  }

  sub_100015B4C();
  result = static vImage_Buffer.make(width:height:rowBytes:allocating:)();
  *v1 = result;
  *(v1 + 8) = v3;
  *(v1 + 16) = v4;
  *(v1 + 24) = v5;
  *(v1 + 32) = 0;
  return result;
}

uint64_t sub_100015C84()
{
  v1 = v0 + OBJC_IVAR____TtCC7Measure16SCNPatchDebugger15SKDebugRenderer____lazy_storage___patchARGBBuffer;
  if (*(v0 + OBJC_IVAR____TtCC7Measure16SCNPatchDebugger15SKDebugRenderer____lazy_storage___patchARGBBuffer + 32) != 1)
  {
    return *v1;
  }

  result = *(*(v0 + OBJC_IVAR____TtCC7Measure16SCNPatchDebugger15SKDebugRenderer_tracker) + 224);
  if ((result - 0x2000000000000000) >> 62 == 3)
  {
    result = static vImage_Buffer.make(width:height:rowBytes:allocating:)();
    *v1 = result;
    *(v1 + 8) = v3;
    *(v1 + 16) = v4;
    *(v1 + 24) = v5;
    *(v1 + 32) = 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100015D0C()
{
  v1 = v0 + OBJC_IVAR____TtCC7Measure16SCNPatchDebugger15SKDebugRenderer____lazy_storage___lineOnBuffer;
  if (*(v0 + OBJC_IVAR____TtCC7Measure16SCNPatchDebugger15SKDebugRenderer____lazy_storage___lineOnBuffer + 32) != 1)
  {
    return *v1;
  }

  sub_100015B4C();
  static vImage_Buffer.make(width:height:rowBytes:allocating:)();
  result = vImage_Buffer.fill(value:)();
  *v1 = result;
  *(v1 + 8) = v3;
  *(v1 + 16) = v4;
  *(v1 + 24) = v5;
  *(v1 + 32) = 0;
  return result;
}

uint64_t sub_100015D90()
{
  v1 = v0 + OBJC_IVAR____TtCC7Measure16SCNPatchDebugger15SKDebugRenderer____lazy_storage___lineOffBuffer;
  if (*(v0 + OBJC_IVAR____TtCC7Measure16SCNPatchDebugger15SKDebugRenderer____lazy_storage___lineOffBuffer + 32) != 1)
  {
    return *v1;
  }

  sub_100015D0C();
  vImage_Buffer.clone()();
  result = vImage_Buffer.fill(value:)();
  *v1 = result;
  *(v1 + 8) = v3;
  *(v1 + 16) = v4;
  *(v1 + 24) = v5;
  *(v1 + 32) = 0;
  return result;
}

uint64_t sub_100015E00()
{
  v1 = v0 + OBJC_IVAR____TtCC7Measure16SCNPatchDebugger15SKDebugRenderer____lazy_storage___lineARGBBuffer;
  if (*(v0 + OBJC_IVAR____TtCC7Measure16SCNPatchDebugger15SKDebugRenderer____lazy_storage___lineARGBBuffer + 32) != 1)
  {
    return *v1;
  }

  result = sub_100015D0C();
  if (v3 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = *(v0 + OBJC_IVAR____TtCC7Measure16SCNPatchDebugger15SKDebugRenderer____lazy_storage___lineOnBuffer + 16);
    if (((v4 | *(v0 + OBJC_IVAR____TtCC7Measure16SCNPatchDebugger15SKDebugRenderer____lazy_storage___lineOnBuffer + 8)) & 0x8000000000000000) == 0)
    {
      if ((v4 - 0x2000000000000000) >> 62 == 3)
      {
        result = static vImage_Buffer.make(width:height:rowBytes:allocating:)();
        *v1 = result;
        *(v1 + 8) = v5;
        *(v1 + 16) = v6;
        *(v1 + 24) = v7;
        *(v1 + 32) = 0;
        return result;
      }

      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_9:
  __break(1u);
  return result;
}

void SCNPatchDebugger.SKDebugRenderer.init(sceneView:tracker:)(void *a1, uint64_t a2)
{
  *&v2[OBJC_IVAR____TtCC7Measure16SCNPatchDebugger15SKDebugRenderer_patchPadding] = 5;
  *&v2[OBJC_IVAR____TtCC7Measure16SCNPatchDebugger15SKDebugRenderer_bytesPerPixel] = 4;
  *&v2[OBJC_IVAR____TtCC7Measure16SCNPatchDebugger15SKDebugRenderer_textureBgColor] = &off_100464CB0;
  v2[OBJC_IVAR____TtCC7Measure16SCNPatchDebugger15SKDebugRenderer_renderEmboss] = 1;
  *&v2[OBJC_IVAR____TtCC7Measure16SCNPatchDebugger15SKDebugRenderer_drawingTexture] = 0;
  *&v2[OBJC_IVAR____TtCC7Measure16SCNPatchDebugger15SKDebugRenderer_drawingNode] = 0;
  v5 = &v2[OBJC_IVAR____TtCC7Measure16SCNPatchDebugger15SKDebugRenderer_textureBuffer];
  *v5 = 0u;
  *(v5 + 1) = 0u;
  v5[32] = 1;
  v6 = &v2[OBJC_IVAR____TtCC7Measure16SCNPatchDebugger15SKDebugRenderer____lazy_storage___width];
  *v6 = 0;
  v6[8] = 1;
  v7 = &v2[OBJC_IVAR____TtCC7Measure16SCNPatchDebugger15SKDebugRenderer____lazy_storage___height];
  *v7 = 0;
  v7[8] = 1;
  v8 = &v2[OBJC_IVAR____TtCC7Measure16SCNPatchDebugger15SKDebugRenderer____lazy_storage___patchSizeInPixels];
  *v8 = 0;
  v8[8] = 1;
  v9 = &v2[OBJC_IVAR____TtCC7Measure16SCNPatchDebugger15SKDebugRenderer____lazy_storage___patchAlphaBuffer];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  v9[32] = 1;
  v10 = &v2[OBJC_IVAR____TtCC7Measure16SCNPatchDebugger15SKDebugRenderer____lazy_storage___patchEmbossBuffer];
  *v10 = 0u;
  *(v10 + 1) = 0u;
  v10[32] = 1;
  v11 = &v2[OBJC_IVAR____TtCC7Measure16SCNPatchDebugger15SKDebugRenderer____lazy_storage___patchARGBBuffer];
  *v11 = 0u;
  *(v11 + 1) = 0u;
  v11[32] = 1;
  v12 = &v2[OBJC_IVAR____TtCC7Measure16SCNPatchDebugger15SKDebugRenderer____lazy_storage___lineOnBuffer];
  *v12 = 0u;
  *(v12 + 1) = 0u;
  v12[32] = 1;
  v13 = &v2[OBJC_IVAR____TtCC7Measure16SCNPatchDebugger15SKDebugRenderer____lazy_storage___lineOffBuffer];
  *v13 = 0u;
  *(v13 + 1) = 0u;
  v13[32] = 1;
  v14 = &v2[OBJC_IVAR____TtCC7Measure16SCNPatchDebugger15SKDebugRenderer____lazy_storage___lineARGBBuffer];
  *v14 = 0u;
  *(v14 + 1) = 0u;
  v14[32] = 1;
  *&v2[OBJC_IVAR____TtCC7Measure16SCNPatchDebugger15SKDebugRenderer_tracker] = a2;
  v40.receiver = v2;
  v40.super_class = type metadata accessor for SCNPatchDebugger.SKDebugRenderer();

  v15 = objc_msgSendSuper2(&v40, "init");
  sub_100015A78();
  v17 = v16;
  sub_100015AE4();
  v19 = v18;
  v20 = objc_allocWithZone(SKMutableTexture);
  v21 = v15;
  v22 = [v20 initWithSize:1380401729 pixelFormat:v17, v19, v40.receiver, v40.super_class];
  v23 = *&v21[OBJC_IVAR____TtCC7Measure16SCNPatchDebugger15SKDebugRenderer_drawingTexture];
  *&v21[OBJC_IVAR____TtCC7Measure16SCNPatchDebugger15SKDebugRenderer_drawingTexture] = v22;
  v24 = v22;

  v25 = [objc_allocWithZone(SKSpriteNode) initWithTexture:v24];
  v26 = OBJC_IVAR____TtCC7Measure16SCNPatchDebugger15SKDebugRenderer_drawingNode;
  v27 = *&v21[OBJC_IVAR____TtCC7Measure16SCNPatchDebugger15SKDebugRenderer_drawingNode];
  *&v21[OBJC_IVAR____TtCC7Measure16SCNPatchDebugger15SKDebugRenderer_drawingNode] = v25;
  v28 = v25;

  if (!v28)
  {
    __break(1u);
    goto LABEL_12;
  }

  [v28 setScale:2.0];

  v29 = *&v21[v26];
  if (!v29)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v30 = v29;
  [v30 yScale];
  [v30 setYScale:-v31];

  v32 = *&v21[v26];
  if (!v32)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v33 = v32;
  [v33 anchorPoint];
  [v33 setAnchorPoint:0.5];

  v34 = *&v21[v26];
  if (!v34)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v35 = v34;
  [v35 anchorPoint];
  [v35 setAnchorPoint:?];

  v36 = *&v21[v26];
  if (!v36)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  [v36 setZRotation:-1.57079633];
  if (!*&v21[v26])
  {
LABEL_16:
    __break(1u);
    return;
  }

  v37 = (*(*a2 + 1232))([v21 addChild:?]);
  if ((*PatchTracker.DebugOptions.drawPatches.unsafeMutableAddressor() & ~v37) != 0 || (v38 = [a1 overlaySKScene]) == 0)
  {
  }

  else
  {
    v39 = v38;
    [v38 addChild:v21];
  }
}

id SCNPatchDebugger.SKDebugRenderer.__deallocating_deinit()
{
  v1 = sub_100015B88();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  vImage_Buffer.deallocate()();
  v8 = &v0[OBJC_IVAR____TtCC7Measure16SCNPatchDebugger15SKDebugRenderer____lazy_storage___patchAlphaBuffer];
  *v8 = v1;
  *(v8 + 1) = v3;
  *(v8 + 2) = v5;
  *(v8 + 3) = v7;
  v8[32] = 0;
  v9 = sub_100015C14();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  vImage_Buffer.deallocate()();
  v16 = &v0[OBJC_IVAR____TtCC7Measure16SCNPatchDebugger15SKDebugRenderer____lazy_storage___patchEmbossBuffer];
  *v16 = v9;
  *(v16 + 1) = v11;
  *(v16 + 2) = v13;
  *(v16 + 3) = v15;
  v16[32] = 0;
  v17 = sub_100015C84();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  vImage_Buffer.deallocate()();
  v24 = &v0[OBJC_IVAR____TtCC7Measure16SCNPatchDebugger15SKDebugRenderer____lazy_storage___patchARGBBuffer];
  *v24 = v17;
  *(v24 + 1) = v19;
  *(v24 + 2) = v21;
  *(v24 + 3) = v23;
  v24[32] = 0;
  v25 = sub_100015D0C();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  vImage_Buffer.deallocate()();
  v32 = &v0[OBJC_IVAR____TtCC7Measure16SCNPatchDebugger15SKDebugRenderer____lazy_storage___lineOnBuffer];
  *v32 = v25;
  *(v32 + 1) = v27;
  *(v32 + 2) = v29;
  *(v32 + 3) = v31;
  v32[32] = 0;
  v33 = sub_100015D90();
  v35 = v34;
  v37 = v36;
  v39 = v38;
  vImage_Buffer.deallocate()();
  v40 = &v0[OBJC_IVAR____TtCC7Measure16SCNPatchDebugger15SKDebugRenderer____lazy_storage___lineOffBuffer];
  *v40 = v33;
  *(v40 + 1) = v35;
  *(v40 + 2) = v37;
  *(v40 + 3) = v39;
  v40[32] = 0;
  v41 = sub_100015E00();
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v51 = v41;
  v52 = v42;
  v53 = v44;
  v54 = v46;
  vImage_Buffer.deallocate()();
  v48 = &v0[OBJC_IVAR____TtCC7Measure16SCNPatchDebugger15SKDebugRenderer____lazy_storage___lineARGBBuffer];
  *v48 = v41;
  *(v48 + 1) = v43;
  *(v48 + 2) = v45;
  *(v48 + 3) = v47;
  v48[32] = 0;
  v50.receiver = v0;
  v50.super_class = type metadata accessor for SCNPatchDebugger.SKDebugRenderer();
  return objc_msgSendSuper2(&v50, "dealloc");
}

Swift::Void __swiftcall SCNPatchDebugger.SKDebugRenderer.clear()()
{
  v1 = *&v0[OBJC_IVAR____TtCC7Measure16SCNPatchDebugger15SKDebugRenderer_drawingTexture];
  if (v1)
  {
    v2 = swift_allocObject();
    *(v2 + 16) = v0;
    v6[4] = sub_100019084;
    v6[5] = v2;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 1107296256;
    v6[2] = sub_1000166BC;
    v6[3] = &unk_1004677A0;
    v3 = _Block_copy(v6);
    v4 = v1;
    v5 = v0;

    [v4 modifyPixelDataWithBlock:v3];
    _Block_release(v3);
  }

  else
  {
    __break(1u);
  }
}

vImage_Error sub_10001663C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (a3 + OBJC_IVAR____TtCC7Measure16SCNPatchDebugger15SKDebugRenderer_textureBuffer);
  if ((*(a3 + OBJC_IVAR____TtCC7Measure16SCNPatchDebugger15SKDebugRenderer_textureBuffer + 32) & 1) == 0)
  {
    v4 = v3[1];
    *&v6.data = *v3;
    *&v6.width = v4;
    return vImageBufferFill_ARGB8888(&v6, (*(a3 + OBJC_IVAR____TtCC7Measure16SCNPatchDebugger15SKDebugRenderer_textureBgColor) + 32), 0);
  }

  return result;
}

uint64_t sub_1000166BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v5(a2, a3);
}

void SCNPatchDebugger.SKDebugRenderer.drawPatches(goodPatches:badPatches:result:)(uint64_t a1, uint64_t a2)
{
  v3 = *&v2[OBJC_IVAR____TtCC7Measure16SCNPatchDebugger15SKDebugRenderer_drawingTexture];
  if (v3)
  {
    v6 = swift_allocObject();
    v6[2] = v2;
    v6[3] = a1;
    v6[4] = a2;
    v10[4] = sub_100019088;
    v10[5] = v6;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 1107296256;
    v10[2] = sub_1000166BC;
    v10[3] = &unk_1004677F0;
    v7 = _Block_copy(v10);

    v8 = v3;
    v9 = v2;

    [v8 modifyPixelDataWithBlock:v7];
    _Block_release(v7);
  }

  else
  {
    __break(1u);
  }
}

void sub_100016834(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, uint64_t a5)
{
  if (!a1)
  {
    goto LABEL_10;
  }

  v8 = &a3[OBJC_IVAR____TtCC7Measure16SCNPatchDebugger15SKDebugRenderer_textureBuffer];
  if (a3[OBJC_IVAR____TtCC7Measure16SCNPatchDebugger15SKDebugRenderer_textureBuffer + 32] != 1)
  {
    goto LABEL_10;
  }

  sub_100015A78();
  if (v11 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v12 = v11;
  sub_100015AE4();
  if (v13 < 0)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v14 = *&a3[OBJC_IVAR____TtCC7Measure16SCNPatchDebugger15SKDebugRenderer____lazy_storage___height];
  if (!v14)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (a2 != 0x8000000000000000 || v14 != -1)
  {
    *v8 = a1;
    *(v8 + 1) = v13;
    *(v8 + 2) = v12;
    *(v8 + 3) = a2 / v14;
    v8[32] = 0;
    v15 = [a3 scene];
    if (v15)
    {
      v16 = v15;
      [v15 size];
      v18 = v17;
      [a3 position];
      [a3 setPosition:v18];
      [v16 size];
      [a3 position];
      [a3 setPosition:?];
    }

LABEL_10:
    sub_100016994(a4, a5);
    return;
  }

LABEL_14:
  __break(1u);
}

uint64_t sub_100016994(uint64_t result, uint64_t a2)
{
  height = v2;
  v5 = (v2 + OBJC_IVAR____TtCC7Measure16SCNPatchDebugger15SKDebugRenderer_textureBuffer);
  if ((*(v2 + OBJC_IVAR____TtCC7Measure16SCNPatchDebugger15SKDebugRenderer_textureBuffer + 32) & 1) == 0)
  {
    v7 = result;
    v8 = v5[1];
    *&dest.data = *v5;
    *&dest.width = v8;
    vImageBufferFill_ARGB8888(&dest, (*(height + OBJC_IVAR____TtCC7Measure16SCNPatchDebugger15SKDebugRenderer_textureBgColor) + 32), 0);
    v88 = v7;
    if (a2)
    {
      v98[0] = a2;
      v9 = v7 >> 62;
      if (v7 >> 62)
      {
        goto LABEL_85;
      }

      v3 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:
      v10 = *(height + OBJC_IVAR____TtCC7Measure16SCNPatchDebugger15SKDebugRenderer_tracker);
      v11 = *(v10 + 232);

      if (v3 < v11)
      {

        v3 = 0;
        sub_1000170DC(v98);
        v12 = *(v10 + 232);
        if (v9)
        {
          goto LABEL_47;
        }

        v13 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_48:
        v65 = __OFSUB__(v12, v13);
        v14 = v12 - v13;
        if (v65)
        {
          goto LABEL_87;
        }

        v3 = v98[0];
        if (v98[0] >> 62)
        {
          goto LABEL_88;
        }

        for (i = *((v98[0] & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
        {
          if (i >= v14)
          {
            v76 = v14;
          }

          else
          {
            v76 = i;
          }

          if ((v76 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_90:
            __break(1u);
          }

          if (v76)
          {
            if ((v3 & 0xC000000000000001) == 0 && v76 > *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_90;
            }

            for (j = 0; j != v76; ++j)
            {
              if ((v3 & 0xC000000000000001) != 0)
              {
                specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
              }

              specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
              if (*((v88 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v88 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              }

              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            }

            v7 = v88;
          }

          if (v7 >> 62)
          {
LABEL_67:
            v14 = _CocoaArrayWrapper.endIndex.getter();
            if (!v14)
            {
            }
          }

          else
          {
LABEL_10:
            v14 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (!v14)
            {
            }
          }

          if (v14 >= 1)
          {
            break;
          }

          __break(1u);
LABEL_87:
          __break(1u);
LABEL_88:
          ;
        }

        type metadata accessor for CVUtil();
        v15 = 0;
        v3 = height + OBJC_IVAR____TtCC7Measure16SCNPatchDebugger15SKDebugRenderer____lazy_storage___patchARGBBuffer;
        v80 = height + OBJC_IVAR____TtCC7Measure16SCNPatchDebugger15SKDebugRenderer____lazy_storage___lineOnBuffer;
        v81 = (height + OBJC_IVAR____TtCC7Measure16SCNPatchDebugger15SKDebugRenderer____lazy_storage___patchARGBBuffer);
        v79 = (height + OBJC_IVAR____TtCC7Measure16SCNPatchDebugger15SKDebugRenderer____lazy_storage___lineOffBuffer);
        v78 = (height + OBJC_IVAR____TtCC7Measure16SCNPatchDebugger15SKDebugRenderer____lazy_storage___patchAlphaBuffer);
        v84 = OBJC_IVAR____TtCC7Measure16SCNPatchDebugger15SKDebugRenderer____lazy_storage___patchSizeInPixels;
        v85 = v7 & 0xC000000000000001;
        v82 = v14;
        v83 = v7;
        while (1)
        {
          v87 = v15;
          if (v85)
          {
            v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            v19 = v16;
          }

          else
          {
            v19 = *(v7 + 8 * v15 + 32);
          }

          v86 = v19;
          srcG.data = (*(*v19 + 232))(v16, v17, v18);
          srcG.height = v20;
          srcG.width = v21;
          srcG.rowBytes = v22;
          v23 = height;
          srcB.data = sub_100015B88();
          srcB.height = v24;
          srcB.width = v25;
          srcB.rowBytes = v26;
          srcR.data = sub_100015C84();
          srcR.height = v27;
          srcR.width = v28;
          srcR.rowBytes = v29;
          vImageConvert_Planar8toARGB8888(&srcG, &srcG, &srcG, &srcB, &srcR, 0);
          v9 = *(v3 + 16);
          v7 = *(v3 + 24);
          height = dest.height;
          v30 = sub_100015B4C();
          v31 = v30 + 5;
          if (__OFADD__(v30, 5))
          {
            __break(1u);
LABEL_71:
            __break(1u);
LABEL_72:
            __break(1u);
LABEL_73:
            __break(1u);
LABEL_74:
            __break(1u);
LABEL_75:
            __break(1u);
LABEL_76:
            __break(1u);
LABEL_77:
            __break(1u);
LABEL_78:
            __break(1u);
LABEL_79:
            __break(1u);
LABEL_80:
            __break(1u);
LABEL_81:
            __break(1u);
LABEL_82:
            __break(1u);
LABEL_83:
            __break(1u);
LABEL_84:
            __break(1u);
LABEL_85:
            v3 = _CocoaArrayWrapper.endIndex.getter();
            goto LABEL_5;
          }

          if ((v87 * v31) >> 64 != (v87 * v31) >> 63)
          {
            goto LABEL_71;
          }

          if (__OFADD__(v87 * v31, 5))
          {
            goto LABEL_72;
          }

          vImage_Buffer.draw(onto:offsetX:offsetY:bytesPerPixel:)();
          v9 = v87;
          v32 = v86[30];
          height = v23;
          if (v32 > 0.0)
          {
            break;
          }

LABEL_41:
          v98[0] = sub_100015C14();
          v98[1] = v68;
          v98[2] = v69;
          v98[3] = v70;
          v99 = 0;
          static CVUtil.emboss(srcBuffer:dstBuffer:tempBuffer:flags:)();
          v12 = v82;
          v7 = v83;
          v3 = v81;
          if ((v97 & 1) == 0)
          {
            srcB = v96;
            v71 = v78[1];
            *&srcR.data = *v78;
            *&srcR.width = v71;
            v72 = v81[1];
            *&v91.data = *v81;
            *&v91.width = v72;
            vImageConvert_Planar8toARGB8888(&srcB, &srcB, &srcB, &srcR, &v91, 0);
            v73 = *(v23 + v84);
            v74 = v87 * (v73 + 5);
            if ((v87 * (v73 + 5)) >> 64 != v74 >> 63)
            {
              goto LABEL_78;
            }

            if (__OFADD__(v74, 5))
            {
              goto LABEL_80;
            }

            if (__OFADD__(v73, 10))
            {
              __break(1u);
LABEL_47:
              v13 = _CocoaArrayWrapper.endIndex.getter();
              goto LABEL_48;
            }

            vImage_Buffer.draw(onto:offsetX:offsetY:bytesPerPixel:)();
          }

          v15 = v87 + 1;
          if (v82 == v87 + 1)
          {
          }
        }

        if (v32 <= 1.0)
        {
          v33 = v86[30];
        }

        else
        {
          v33 = 1.0;
        }

        v34 = sub_100015D0C();
        v36 = roundf(v33 * v35);
        if (LODWORD(v36) >> 23 > 0xFE)
        {
          goto LABEL_73;
        }

        if (v36 <= -9.2234e18)
        {
          goto LABEL_74;
        }

        if (v36 >= 9.2234e18)
        {
          goto LABEL_75;
        }

        v37 = (*(*v86 + 208))(v34);
        if (v37)
        {
          srcB.data = sub_100015D90();
          srcB.height = v40;
          srcB.width = v41;
          srcB.rowBytes = v42;
          v43 = v80;
          v44 = *v80;
          v45 = *(v80 + 8);
          v46 = *(v80 + 16);
          v47 = *(v80 + 24);
          srcR.data = *v80;
          srcR.height = v45;
          srcR.width = v46;
          srcR.rowBytes = v47;
          v48 = v79[1];
          *&v91.data = *v79;
          *&v91.width = v48;
        }

        else
        {
          v43 = v80;
          if (((*(*v86 + 216))(v37, v38, v39) & 1) == 0)
          {
            v53 = *(v80 + 16);
            *&srcB.data = *v80;
            *&srcB.width = v53;
            srcR.data = sub_100015D90();
            srcR.height = v54;
            srcR.width = v55;
            srcR.rowBytes = v56;
            v57 = v79[1];
            *&v91.data = *v79;
            *&v91.width = v57;
            v58 = *(v80 + 16);
            *&v90.data = *v80;
            *&v90.width = v58;
            goto LABEL_33;
          }

          srcB.data = sub_100015D90();
          srcB.height = v49;
          srcB.width = v50;
          srcB.rowBytes = v51;
          v52 = v79[1];
          *&srcR.data = *v79;
          *&srcR.width = v52;
          v44 = *v80;
          v45 = *(v80 + 8);
          v46 = *(v80 + 16);
          v47 = *(v80 + 24);
          v91.data = *v80;
          v91.height = v45;
          v91.width = v46;
          v91.rowBytes = v47;
        }

        v90.data = v44;
        v90.height = v45;
        v90.width = v46;
        v90.rowBytes = v47;
LABEL_33:
        v89.data = sub_100015E00();
        v89.height = v59;
        v89.width = v60;
        v89.rowBytes = v61;
        vImageConvert_Planar8toARGB8888(&srcB, &srcR, &v91, &v90, &v89, 0);
        v62 = *(v23 + v84);
        v63 = v62 + 5;
        if (__OFADD__(v62, 5))
        {
          goto LABEL_76;
        }

        v64 = v87 * v63;
        if ((v87 * v63) >> 64 != (v87 * v63) >> 63)
        {
          goto LABEL_77;
        }

        v65 = __OFADD__(v64, 5);
        v66 = v64 + 5;
        if (v65)
        {
          goto LABEL_79;
        }

        if (__OFADD__(v66, v62))
        {
          goto LABEL_81;
        }

        v67 = *(v43 + 8);
        if (__OFADD__(v67, 5))
        {
          goto LABEL_82;
        }

        if (__OFSUB__(v67 + 5, v36))
        {
          goto LABEL_83;
        }

        if ((*(v43 + 16) | v67) < 0)
        {
          goto LABEL_84;
        }

        sub_100015E00();
        vImage_Buffer.draw(onto:within:bytesPerPixel:)();
        goto LABEL_41;
      }
    }

    else
    {
    }

    if (v7 >> 62)
    {
      goto LABEL_67;
    }

    goto LABEL_10;
  }

  return result;
}

Swift::Int sub_1000170DC(uint64_t *a1)
{
  v2 = *a1;
  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || v2 < 0 || (v2 & 0x4000000000000000) != 0)
  {
    v2 = sub_10006CB88(v2);
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v5[0] = (v2 & 0xFFFFFFFFFFFFFF8) + 32;
  v5[1] = v3;
  result = sub_100017430(v5);
  *a1 = v2;
  return result;
}

id SCNSegmentationDebugger.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SCNPatchDebugger.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SCNPatchDebugger();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_100017318@<X0>(void *a1@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v6 = objc_allocWithZone(type metadata accessor for SCNPatchDebugger());
  result = SCNPatchDebugger.init(sceneView:tracker:)(a1, v6, a2);
  *a3 = result;
  return result;
}

Swift::Int sub_100017430(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = &_swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for PatchTracker.Patch();
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_1000175A0(v8, v9, a1, v4);
      *(v7 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_100017534(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_100017534(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 8 * a3 - 8;
    v6 = result - a3;
LABEL_5:
    v7 = *(v4 + 8 * a3);
    v8 = v6;
    v9 = v5;
    while (1)
    {
      v10 = *v9;
      if (*(*v9 + 120) > *(v7 + 120))
      {
LABEL_4:
        ++a3;
        v5 += 8;
        --v6;
        if (a3 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v4)
      {
        break;
      }

      *v9 = v7;
      v9[1] = v10;
      --v9;
      if (__CFADD__(v8++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1000175A0(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v82 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v10 = &_swiftEmptyArrayStorage;
LABEL_88:
    v5 = *v82;
    if (!*v82)
    {
      goto LABEL_126;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_120:
      result = sub_1000A4894(v10);
      v10 = result;
    }

    v77 = *(v10 + 2);
    if (v77 >= 2)
    {
      while (*a3)
      {
        v78 = *&v10[16 * v77];
        v79 = *&v10[16 * v77 + 24];
        sub_100017B10((*a3 + 8 * v78), (*a3 + 8 * *&v10[16 * v77 + 16]), (*a3 + 8 * v79), v5);
        if (v4)
        {
        }

        if (v79 < v78)
        {
          goto LABEL_113;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_1000A4894(v10);
        }

        if (v77 - 2 >= *(v10 + 2))
        {
          goto LABEL_114;
        }

        v80 = &v10[16 * v77];
        *v80 = v78;
        *(v80 + 1) = v79;
        result = sub_1000A4808(v77 - 1);
        v77 = *(v10 + 2);
        if (v77 <= 1)
        {
        }
      }

      goto LABEL_124;
    }
  }

  v8 = a4;
  v9 = 0;
  v10 = &_swiftEmptyArrayStorage;
  while (1)
  {
    v11 = v9++;
    if (v9 < v7)
    {
      v12 = *(*(*a3 + 8 * v9) + 120);
      v13 = *(*(*a3 + 8 * v11) + 120);
      v14 = v11 + 2;
      v15 = v12;
      while (v7 != v14)
      {
        v16 = *(*(*a3 + 8 * v14) + 120);
        v17 = v15 > v16;
        ++v14;
        v15 = v16;
        if ((((v13 <= v12) ^ v17) & 1) == 0)
        {
          v9 = v14 - 1;
          if (v13 > v12)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v9 = v7;
      if (v13 > v12)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v9 < v11)
      {
        goto LABEL_117;
      }

      if (v11 < v9)
      {
        v18 = 8 * v9 - 8;
        v19 = 8 * v11;
        v20 = v9;
        v21 = v11;
        do
        {
          if (v21 != --v20)
          {
            v23 = *a3;
            if (!*a3)
            {
              goto LABEL_123;
            }

            v22 = *(v23 + v19);
            *(v23 + v19) = *(v23 + v18);
            *(v23 + v18) = v22;
          }

          ++v21;
          v18 -= 8;
          v19 += 8;
        }

        while (v21 < v20);
        v7 = a3[1];
      }
    }

LABEL_20:
    if (v9 < v7)
    {
      if (__OFSUB__(v9, v11))
      {
        goto LABEL_116;
      }

      if (v9 - v11 < v8)
      {
        if (__OFADD__(v11, v8))
        {
          goto LABEL_118;
        }

        if (v11 + v8 < v7)
        {
          v7 = v11 + v8;
        }

        if (v7 < v11)
        {
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (v9 != v7)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v9 < v11)
    {
      goto LABEL_115;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_100067218(0, *(v10 + 2) + 1, 1, v10);
      v10 = result;
    }

    v5 = *(v10 + 2);
    v32 = *(v10 + 3);
    v33 = v5 + 1;
    if (v5 >= v32 >> 1)
    {
      result = sub_100067218((v32 > 1), v5 + 1, 1, v10);
      v10 = result;
    }

    *(v10 + 2) = v33;
    v34 = &v10[16 * v5];
    *(v34 + 4) = v11;
    *(v34 + 5) = v9;
    v35 = *v82;
    if (!*v82)
    {
      goto LABEL_125;
    }

    if (v5)
    {
      while (1)
      {
        v36 = v33 - 1;
        if (v33 >= 4)
        {
          break;
        }

        if (v33 == 3)
        {
          v37 = *(v10 + 4);
          v38 = *(v10 + 5);
          v47 = __OFSUB__(v38, v37);
          v39 = v38 - v37;
          v40 = v47;
LABEL_57:
          if (v40)
          {
            goto LABEL_104;
          }

          v53 = &v10[16 * v33];
          v55 = *v53;
          v54 = *(v53 + 1);
          v56 = __OFSUB__(v54, v55);
          v57 = v54 - v55;
          v58 = v56;
          if (v56)
          {
            goto LABEL_107;
          }

          v59 = &v10[16 * v36 + 32];
          v61 = *v59;
          v60 = *(v59 + 1);
          v47 = __OFSUB__(v60, v61);
          v62 = v60 - v61;
          if (v47)
          {
            goto LABEL_110;
          }

          if (__OFADD__(v57, v62))
          {
            goto LABEL_111;
          }

          if (v57 + v62 >= v39)
          {
            if (v39 < v62)
            {
              v36 = v33 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        v63 = &v10[16 * v33];
        v65 = *v63;
        v64 = *(v63 + 1);
        v47 = __OFSUB__(v64, v65);
        v57 = v64 - v65;
        v58 = v47;
LABEL_71:
        if (v58)
        {
          goto LABEL_106;
        }

        v66 = &v10[16 * v36];
        v68 = *(v66 + 4);
        v67 = *(v66 + 5);
        v47 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v47)
        {
          goto LABEL_109;
        }

        if (v69 < v57)
        {
          goto LABEL_3;
        }

LABEL_78:
        v74 = v36 - 1;
        if (v36 - 1 >= v33)
        {
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
          goto LABEL_119;
        }

        if (!*a3)
        {
          goto LABEL_122;
        }

        v75 = *&v10[16 * v74 + 32];
        v5 = *&v10[16 * v36 + 40];
        sub_100017B10((*a3 + 8 * v75), (*a3 + 8 * *&v10[16 * v36 + 32]), (*a3 + 8 * v5), v35);
        if (v4)
        {
        }

        if (v5 < v75)
        {
          goto LABEL_100;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_1000A4894(v10);
        }

        if (v74 >= *(v10 + 2))
        {
          goto LABEL_101;
        }

        v76 = &v10[16 * v74];
        *(v76 + 4) = v75;
        *(v76 + 5) = v5;
        result = sub_1000A4808(v36);
        v33 = *(v10 + 2);
        if (v33 <= 1)
        {
          goto LABEL_3;
        }
      }

      v41 = &v10[16 * v33 + 32];
      v42 = *(v41 - 64);
      v43 = *(v41 - 56);
      v47 = __OFSUB__(v43, v42);
      v44 = v43 - v42;
      if (v47)
      {
        goto LABEL_102;
      }

      v46 = *(v41 - 48);
      v45 = *(v41 - 40);
      v47 = __OFSUB__(v45, v46);
      v39 = v45 - v46;
      v40 = v47;
      if (v47)
      {
        goto LABEL_103;
      }

      v48 = &v10[16 * v33];
      v50 = *v48;
      v49 = *(v48 + 1);
      v47 = __OFSUB__(v49, v50);
      v51 = v49 - v50;
      if (v47)
      {
        goto LABEL_105;
      }

      v47 = __OFADD__(v39, v51);
      v52 = v39 + v51;
      if (v47)
      {
        goto LABEL_108;
      }

      if (v52 >= v44)
      {
        v70 = &v10[16 * v36 + 32];
        v72 = *v70;
        v71 = *(v70 + 1);
        v47 = __OFSUB__(v71, v72);
        v73 = v71 - v72;
        if (v47)
        {
          goto LABEL_112;
        }

        if (v39 < v73)
        {
          v36 = v33 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

LABEL_3:
    v7 = a3[1];
    v8 = a4;
    if (v9 >= v7)
    {
      goto LABEL_88;
    }
  }

  v24 = *a3;
  v25 = *a3 + 8 * v9 - 8;
  v26 = v11 - v9;
LABEL_30:
  v27 = *(v24 + 8 * v9);
  v28 = v26;
  v29 = v25;
  while (1)
  {
    v30 = *v29;
    if (*(*v29 + 120) > *(v27 + 120))
    {
LABEL_29:
      ++v9;
      v25 += 8;
      --v26;
      if (v9 != v7)
      {
        goto LABEL_30;
      }

      v9 = v7;
      goto LABEL_37;
    }

    if (!v24)
    {
      break;
    }

    *v29 = v27;
    v29[1] = v30;
    --v29;
    if (__CFADD__(v28++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_122:
  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
  return result;
}

uint64_t sub_100017B10(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*(*v4 + 120) <= *(*v6 + 120))
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4;
      v4 += 8;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6;
    v6 += 8;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 8;
    v5 -= 8;
    v18 = v14;
    do
    {
      v19 = v5 + 8;
      v21 = *(v18 - 8);
      v18 -= 8;
      v20 = v21;
      if (*(*v17 + 120) <= *(v21 + 120))
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 8, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v20;
      }

      v5 -= 8;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= &v4[v22 & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

uint64_t sub_100017D14()
{
  v0 = [objc_opt_self() sphereWithRadius:0.002];
  v1 = objc_opt_self();
  v2 = [v1 nodeWithGeometry:v0];
  v3 = String._bridgeToObjectiveC()();
  [v2 setName:v3];

  [v2 setOpacity:0.5];
  v4 = [objc_opt_self() boxWithWidth:0.0005 height:0.0005 length:0.5 chamferRadius:0.0];
  v5 = [v1 nodeWithGeometry:v4];

  v6 = String._bridgeToObjectiveC()();
  [v5 setName:v6];

  v7 = [v5 geometry];
  if (!v7)
  {
    goto LABEL_10;
  }

  v8 = v7;
  v9 = [v7 materials];

  sub_100018630(0, &qword_1004AF720);
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v10 >> 62))
  {
    result = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_4;
    }

LABEL_9:

    goto LABEL_10;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
    goto LABEL_9;
  }

LABEL_4:
  if ((v10 & 0xC000000000000001) != 0)
  {
    v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_7;
  }

  if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v12 = *(v10 + 32);
LABEL_7:
    v13 = v12;

    v14 = [v13 diffuse];

    v15 = [objc_opt_self() redColor];
    [v14 setContents:v15];

LABEL_10:
    [v5 position];
    [v5 setPosition:?];
    [v5 setHidden:1];
    [v2 addChildNode:v5];

    return v2;
  }

  __break(1u);
  return result;
}

uint64_t sub_100017FEC()
{
  v0 = [objc_opt_self() sphereWithRadius:0.001];
  v1 = [v0 materials];
  sub_100018630(0, &qword_1004AF720);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v2 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:

    goto LABEL_9;
  }

  result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v2 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_21;
    }

    v4 = *(v2 + 32);
  }

  v5 = v4;

  v6 = [v5 diffuse];

  v7 = [objc_opt_self() yellowColor];
  [v6 setContents:v7];

LABEL_9:
  v8 = [v0 materials];
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v9 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
      goto LABEL_11;
    }

LABEL_16:

    goto LABEL_17;
  }

  result = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_16;
  }

LABEL_11:
  if ((v9 & 0xC000000000000001) != 0)
  {
    v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_14;
  }

  if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v10 = *(v9 + 32);
LABEL_14:
    v11 = v10;

    [v11 setBlendMode:4];

LABEL_17:
    v12 = [objc_opt_self() nodeWithGeometry:v0];

    v13 = String._bridgeToObjectiveC()();
    [v12 setName:v13];

    [v12 setOpacity:0.1];
    return v12;
  }

LABEL_21:
  __break(1u);
  return result;
}

void _s7Measure16SCNPatchDebuggerC12observeValue10forKeyPath2of6change7contextySSSg_ypSgSDySo05NSKeye6ChangeG0aypGSgSvSgtF_0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = v2;
    v6 = PatchTracker.DebugOptions.keyForFeature.unsafeMutableAddressor();
    v7 = *v6;
    if (*(*v6 + 16))
    {

      v8 = sub_100198230(a1, a2);
      if (v9)
      {
        v10 = *(*(v7 + 56) + 8 * v8);

        sub_100018630(0, &unk_1004A7540);
        v11 = *(v3 + OBJC_IVAR____TtC7Measure16SCNPatchDebugger_tracker);
        v26 = v10;
        v12 = (*(*v11 + 1248))(v25);
        sub_100019008();
        v13 = static NSUserDefaults.update<A>(_:key:feature:)();
        v12(v25, 0);
        if (*PatchTracker.DebugOptions.showPoints.unsafeMutableAddressor() == v10)
        {
          v14 = sub_1000142AC();
          [v14 setHidden:(v13 & 1) == 0];
LABEL_6:

          return;
        }

        if (*PatchTracker.DebugOptions.paintMode.unsafeMutableAddressor() == v10)
        {
          v15 = sub_1000142CC();
          [v15 setHidden:(v13 & 1) == 0];

          if (v13)
          {
            v16 = sub_10001444C();
            v17 = OBJC_IVAR____TtC7Measure16SCNPatchDebugger____lazy_storage___paintContainerNode;
            v18 = [*(v3 + OBJC_IVAR____TtC7Measure16SCNPatchDebugger____lazy_storage___paintContainerNode) childNodes];
            sub_100018630(0, &qword_1004A1318);
            v19 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

            (*(*v16 + 216))(v19);

            v20 = *(v3 + v17);
            SCNNode.removeAllChildren()();
          }
        }

        else if (*PatchTracker.DebugOptions.drawPatches.unsafeMutableAddressor() == v10)
        {
          v21 = sub_10001454C();
          v22 = [v21 parent];

          if (v13)
          {
            if (v22)
            {

              return;
            }

            v23 = [*(v3 + OBJC_IVAR____TtC7Measure16SCNPatchDebugger_sceneView) overlaySKScene];
            if (v23)
            {
              v24 = *(v3 + OBJC_IVAR____TtC7Measure16SCNPatchDebugger____lazy_storage___skRenderer);
              v14 = v23;
              [v23 addChild:v24];
              goto LABEL_6;
            }
          }

          else if (v22)
          {

            [*(v3 + OBJC_IVAR____TtC7Measure16SCNPatchDebugger____lazy_storage___skRenderer) removeFromParent];
          }
        }
      }

      else
      {
      }
    }
  }
}

uint64_t sub_1000185C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000F974(&qword_1004A1320);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100018630(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_100018678(float *a1, float32x4_t a2, float a3, float a4)
{
  v7 = v4;
  v11 = sub_1000142CC();
  v12 = [v11 childNodes];

  sub_100018630(0, &qword_1004A1318);
  v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v13 >> 62))
  {
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v14)
    {
      goto LABEL_3;
    }

LABEL_11:

LABEL_12:
    v22 = sub_10001444C();
    (*(*v22 + 200))(&v42);

    v12 = v42;
    SCNVector3.init(_:)();
    [v12 setPosition:?];
    v6 = OBJC_IVAR____TtC7Measure16SCNPatchDebugger____lazy_storage___paintContainerNode;
    [*(v7 + OBJC_IVAR____TtC7Measure16SCNPatchDebugger____lazy_storage___paintContainerNode) addChildNode:v12];
    v23 = [v12 geometry];
    if (!v23)
    {
      goto LABEL_31;
    }

    v13 = v23;
    if ((1.0 - a3) * 50.0 <= 1.0)
    {
      v24 = (1.0 - a3) * 50.0;
    }

    else
    {
      v24 = 1.0;
    }

    a1 = [objc_allocWithZone(UIColor) initWithDisplayP3Red:(1.0 - a4) green:a1[30] blue:v24 alpha:1.0];
    v25 = [v13 materials];
    sub_100018630(0, &qword_1004AF720);
    v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (!(v5 >> 62))
    {
      if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_18:
        if ((v5 & 0xC000000000000001) != 0)
        {
          v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_46;
          }

          v26 = *(v5 + 32);
        }

        v27 = v26;

        v28 = [v27 diffuse];

        if (a4 >= 0.0)
        {
          v29 = a1;
        }

        else
        {
          v29 = [objc_opt_self() redColor];
        }

        v30 = v29;
        [v28 setContents:{v29, *&v40}];

LABEL_31:
        v31 = [*(v7 + v6) childNodes];
        v32 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if (v32 >> 62)
        {
          v33 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v33 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v33 >= 2001)
        {
          v34 = [*(v7 + v6) childNodes];
          v35 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          if (v35 >> 62)
          {
            if (_CocoaArrayWrapper.endIndex.getter())
            {
LABEL_36:
              if ((v35 & 0xC000000000000001) == 0)
              {
                if (!*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  __break(1u);
                  return;
                }

                v36 = *(v35 + 32);
LABEL_39:
                v37 = v36;

                [v37 removeFromParentNode];
                v38 = *(v7 + OBJC_IVAR____TtC7Measure16SCNPatchDebugger____lazy_storage___paintPool);
                v42 = v37;
                v39 = *(*v38 + 208);

                v39(&v42);

                return;
              }

LABEL_46:
              v36 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              goto LABEL_39;
            }
          }

          else if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_36;
          }
        }

        return;
      }

LABEL_30:

      goto LABEL_31;
    }

LABEL_29:
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_18;
    }

    goto LABEL_30;
  }

  v14 = _CocoaArrayWrapper.endIndex.getter();
  if (!v14)
  {
    goto LABEL_11;
  }

LABEL_3:
  v15 = __OFSUB__(v14, 1);
  v16 = v14 - 1;
  if (v15)
  {
    __break(1u);
  }

  else if ((v13 & 0xC000000000000001) == 0)
  {
    if ((v16 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v16 < *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v17 = *(v13 + 8 * v16 + 32);
      goto LABEL_8;
    }

    __break(1u);
    goto LABEL_29;
  }

  v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_8:
  v18 = v17;

  [v18 position];
  SCNVector3.floats.getter();
  v40 = v19;

  v20 = vsubq_f32(v40, a2);
  v21 = vmulq_f32(v20, v20);
  if ((v21.f32[2] + vaddv_f32(*v21.f32)) >= 0.000001)
  {
    goto LABEL_12;
  }
}

uint64_t sub_100018B88()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100018BC8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void _s7Measure16SCNPatchDebuggerC11drawPatches04goodE003badE06resultySay0A10Foundation12PatchTrackerC0J0CG_AMSgs5SIMD3VySfG8position_AQSg6normalAQ9sourceHit_AQ6origin_AQ9directiont0O3RayAL0oJ0AqV_AqWt04destS0AL0tJ0Sf5depthSf06rayDotS0Sf10confidencet4testtSgtF_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10001454C();
  v5 = *&v4[OBJC_IVAR____TtCC7Measure16SCNPatchDebugger15SKDebugRenderer_drawingTexture];
  if (v5)
  {
    v6 = v4;
    v7 = swift_allocObject();
    v7[2] = v6;
    v7[3] = a1;
    v7[4] = a2;
    v11[4] = sub_100019088;
    v11[5] = v7;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 1107296256;
    v11[2] = sub_1000166BC;
    v11[3] = &unk_1004678C8;
    v8 = _Block_copy(v11);

    v9 = v5;
    v10 = v6;

    [v9 modifyPixelDataWithBlock:v8];
    _Block_release(v8);
  }

  else
  {
    __break(1u);
  }
}

void sub_100018D3C()
{
  *(v0 + OBJC_IVAR____TtCC7Measure16SCNPatchDebugger15SKDebugRenderer_patchPadding) = 5;
  *(v0 + OBJC_IVAR____TtCC7Measure16SCNPatchDebugger15SKDebugRenderer_bytesPerPixel) = 4;
  *(v0 + OBJC_IVAR____TtCC7Measure16SCNPatchDebugger15SKDebugRenderer_textureBgColor) = &off_100464D00;
  *(v0 + OBJC_IVAR____TtCC7Measure16SCNPatchDebugger15SKDebugRenderer_renderEmboss) = 1;
  *(v0 + OBJC_IVAR____TtCC7Measure16SCNPatchDebugger15SKDebugRenderer_drawingTexture) = 0;
  *(v0 + OBJC_IVAR____TtCC7Measure16SCNPatchDebugger15SKDebugRenderer_drawingNode) = 0;
  v1 = v0 + OBJC_IVAR____TtCC7Measure16SCNPatchDebugger15SKDebugRenderer_textureBuffer;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 1;
  v2 = v0 + OBJC_IVAR____TtCC7Measure16SCNPatchDebugger15SKDebugRenderer____lazy_storage___width;
  *v2 = 0;
  *(v2 + 8) = 1;
  v3 = v0 + OBJC_IVAR____TtCC7Measure16SCNPatchDebugger15SKDebugRenderer____lazy_storage___height;
  *v3 = 0;
  *(v3 + 8) = 1;
  v4 = v0 + OBJC_IVAR____TtCC7Measure16SCNPatchDebugger15SKDebugRenderer____lazy_storage___patchSizeInPixels;
  *v4 = 0;
  *(v4 + 8) = 1;
  v5 = v0 + OBJC_IVAR____TtCC7Measure16SCNPatchDebugger15SKDebugRenderer____lazy_storage___patchAlphaBuffer;
  *v5 = 0u;
  *(v5 + 16) = 0u;
  *(v5 + 32) = 1;
  v6 = v0 + OBJC_IVAR____TtCC7Measure16SCNPatchDebugger15SKDebugRenderer____lazy_storage___patchEmbossBuffer;
  *v6 = 0u;
  *(v6 + 16) = 0u;
  *(v6 + 32) = 1;
  v7 = v0 + OBJC_IVAR____TtCC7Measure16SCNPatchDebugger15SKDebugRenderer____lazy_storage___patchARGBBuffer;
  *v7 = 0u;
  *(v7 + 16) = 0u;
  *(v7 + 32) = 1;
  v8 = v0 + OBJC_IVAR____TtCC7Measure16SCNPatchDebugger15SKDebugRenderer____lazy_storage___lineOnBuffer;
  *v8 = 0u;
  *(v8 + 16) = 0u;
  *(v8 + 32) = 1;
  v9 = v0 + OBJC_IVAR____TtCC7Measure16SCNPatchDebugger15SKDebugRenderer____lazy_storage___lineOffBuffer;
  *v9 = 0u;
  *(v9 + 16) = 0u;
  *(v9 + 32) = 1;
  v10 = v0 + OBJC_IVAR____TtCC7Measure16SCNPatchDebugger15SKDebugRenderer____lazy_storage___lineARGBBuffer;
  *v10 = 0u;
  *(v10 + 16) = 0u;
  *(v10 + 32) = 1;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_100018EC4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100018F04(uint64_t a1, uint64_t *a2)
{
  v3 = sub_10000F974(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_100018F64()
{
  result = qword_1004A0C40;
  if (!qword_1004A0C40)
  {
    type metadata accessor for NSKeyValueChangeKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A0C40);
  }

  return result;
}

uint64_t sub_100018FBC()
{

  return _swift_deallocObject(v0, 40, 7);
}

unint64_t sub_100019008()
{
  result = qword_1004A1408;
  if (!qword_1004A1408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A1408);
  }

  return result;
}

void sub_1000190A4(void *a1, double a2)
{
  v3 = [a1 tabBar];
  [v3 setAlpha:a2];
}

uint64_t sub_10001912C(__int128 *a1)
{
  v2 = a1[1];
  v18 = *a1;
  v19[0] = v2;
  *(v19 + 14) = *(a1 + 30);
  v3 = *(a1 + 56);
  v15 = *(a1 + 40);
  v16[0] = v3;
  *(v16 + 14) = *(a1 + 70);
  v4 = sub_10010DD4C(&v18, &v15);
  sub_10000F974(&unk_1004AF710);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1003D5730;
    v20 = v18;
    *(v5 + 56) = &type metadata for String;
    v6 = sub_1000192D0();
    *(v5 + 64) = v6;
    *(v5 + 32) = v18;
    v17 = a1[5];
    v7 = v17;
    *(v5 + 96) = &type metadata for String;
    *(v5 + 104) = v6;
    *(v5 + 72) = v7;
    sub_100019324(&v20, &v14);
    sub_100019324(&v17, &v14);
  }

  else
  {
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1003D5720;
    v20 = v18;
    *(v8 + 56) = &type metadata for String;
    v9 = sub_1000192D0();
    *(v8 + 64) = v9;
    *(v8 + 32) = v18;
    v10 = v15;
    v17 = v15;
    *(v8 + 96) = &type metadata for String;
    *(v8 + 104) = v9;
    *(v8 + 72) = v10;
    v14 = a1[5];
    v11 = v14;
    *(v8 + 136) = &type metadata for String;
    *(v8 + 144) = v9;
    *(v8 + 112) = v11;
    sub_100019324(&v20, v13);
    sub_100019324(&v17, v13);
    sub_100019324(&v14, v13);
  }

  return String.init(format:_:)();
}

unint64_t sub_1000192D0()
{
  result = qword_1004A7310;
  if (!qword_1004A7310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A7310);
  }

  return result;
}

void sub_1000193A8()
{
  v1 = v0;
  *(v0 + 80) = 0;
  *(v0 + 88) = 1106247680;
  *(v0 + 96) = 0;
  *(v0 + 112) = 0;
  *(v0 + 120) = 0;
  KeyPath = swift_getKeyPath();
  v3 = sub_10000F974(&unk_1004A72D0);
  if (qword_1004A04D8 != -1)
  {
    swift_once();
  }

  v4 = qword_1004D5058;
  v5 = *(v3 + 272);
  swift_retain_n();
  v1[16] = v5(KeyPath, v4);
  v6 = swift_getKeyPath();
  v7 = *(sub_10000F974(&qword_1004A11D0) + 272);

  v1[17] = v7(v6, v4);
  v8 = swift_getKeyPath();
  v9 = *(sub_10000F974(&qword_1004A7530) + 272);

  v1[18] = v9(v8, v4);
  v10 = sub_10000F974(&qword_1004A3F50);
  v11 = swift_getKeyPath();
  v12 = *(v10 + 272);

  v1[19] = v12(v11, v4);
  v13 = sub_10000F974(&qword_1004A11D8);
  v14 = swift_getKeyPath();
  v1[20] = (*(v13 + 272))(v14, v4);
  v15 = sub_10000F974(&qword_1004A1638);
  v16 = swift_getKeyPath();
  v1[21] = (*(v15 + 272))(v16, v4);
  sub_10000F974(&qword_1004A1640);
  swift_getKeyPath();
  v1[22] = MutableStateValue.__allocating_init(_:_:)();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_10001968C()
{

  StateValue.ifUpdated(_:)();

  StateValue.ifUpdated(_:)();
}

void sub_100019718(_BYTE *a1, uint64_t a2)
{
  v3 = a1[2];
  if (*a1)
  {
    v4 = *(**(a2 + 176) + 144);

    v4(v8, v5);

    if (LOBYTE(v8[0]) == 2)
    {
      sub_10001A9B4();
    }
  }

  if ((v3 & 1) == 0)
  {
    v6 = *(**(a2 + 176) + 144);

    v6(v8, v7);

    if (LOBYTE(v8[0]) == 2)
    {
      sub_10001A584(*(a2 + 112), *(a2 + 120));
    }
  }
}

void sub_100019804()
{
  v1 = v0;

  StateValue.wrappedValue.getter();

  v2 = aBlock;
  if (aBlock != 0x8000000000000018)
  {
    goto LABEL_27;
  }

  v3 = *(**(v0 + 176) + 144);

  v3(&aBlock, v4);

  if (aBlock != 1)
  {
    goto LABEL_27;
  }

  v5 = *(**(v0 + 136) + 144);

  v5(&aBlock, v6);

  v8 = aBlock;
  v7 = v73;
  v9 = v74;
  v10 = v75;
  if (!v74)
  {
    v13 = 0;
    if (v75)
    {
      goto LABEL_5;
    }

LABEL_14:

    return;
  }

  v11 = *((swift_isaMask & *v74) + 0x200);
  v12 = v74;
  v13 = COERCE_FLOAT32X2_T(v11());

  if (!v10)
  {
    goto LABEL_14;
  }

LABEL_5:
  v68 = v7;
  v14 = *(v1 + 64);
  v15 = v10;
  v16 = [v14 session];
  v17 = [v16 currentFrame];

  if (!v17)
  {

    return;
  }

  v18 = [v17 camera];
  [v18 transform];
  v65 = v19;
  v64 = v20;

  v21 = simd_float4x4.position.getter();
  v69 = v22;
  (*((swift_isaMask & *v15) + 0x2B0))(v21);
  simd_float4x4.position.getter();
  v66 = v23;

  v24 = vsubq_f32(v69, v66);
  v25 = vmulq_f32(v24, v24);
  v26 = sqrtf(v25.f32[2] + vaddv_f32(*v25.f32));
  v27 = 1.0;
  if (v26 >= 0.25 && v26 < 1.0)
  {
    v27 = (((v26 + -0.25) / 0.75) * 0.5) + 1.0;
  }

  else if (v26 > 1.0)
  {
    v27 = 1.5;
  }

  v70 = v27;
  v29 = *(**(v1 + 176) + 400);

  v30 = v29(&aBlock);
  *v31 = 2;
  v30(&aBlock, 0);

  if (v9)
  {
    *(v1 + 80) = v13;
    if (qword_1004A0188 != -1)
    {
      swift_once();
    }

    LOBYTE(aBlock) = 0;

    Synchronized.wrappedValue.setter();

    sub_10008A8FC(6u);
    [v14 center];
    SIMD2<>.init(_:)();
    v33 = vsub_f32(v13, v32);
    v34 = v70;
    v35 = vmul_n_f32(v33, v70);
    if (qword_1004A0500 != -1)
    {
      swift_once();
      v34 = v70;
    }

    v71 = v34;
    v36 = vmul_n_f32(vsub_f32(vadd_f32(v13, qword_1004D5070), *(v1 + 80)), v34);
    *(v1 + 96) = v36;
    *v67.f32 = vadd_f32(vsub_f32(v33, v35), v36);
    [v14 bounds];
    v37 = CGRectGetHeight(v78) * v71;
    v38 = fabsf(v67.f32[1] + v67.f32[1]);
    [v14 bounds];
    if (v37 - CGRectGetHeight(v79) < v38)
    {
      [v14 bounds];
      v39 = CGRectGetHeight(v80) + v38;
      [v14 bounds];
      v40 = v39 / CGRectGetHeight(v81);
      v71 = v40;
    }

    v41 = objc_opt_self();
    v42 = swift_allocObject();
    *(v42 + 16) = v1;
    *(v42 + 24) = v71;
    *(v42 + 32) = v67.i64[0];
    v76 = sub_10001B3B4;
    v77 = v42;
    aBlock = _NSConcreteStackBlock;
    v73 = 1107296256;
    v74 = sub_100041180;
    v75 = &unk_1004679D8;
    v43 = _Block_copy(&aBlock);

    [v41 animateWithDuration:0 delay:v43 options:0 animations:0.3 completion:0.0];
    _Block_release(v43);
    [v14 frame];
    static CGPoint.- prefix(_:)();
    v45 = v44;
    v47 = v46;
    [v14 frame];
    v49 = v45 / v48;
    [v14 frame];
    v51 = v47 / v50;
    [v14 bounds];
    CGSize.divide(by:)();
    v53 = v52;
    v55 = v54;
    [v14 bounds];
    v56 = v49 * CGRectGetWidth(v82);
    [v14 bounds];
    v57 = v51 * CGRectGetHeight(v83);
    v58 = *(**(v1 + 176) + 400);

    v59 = v58(&aBlock);
    *(v60 + 8) = v56;
    *(v60 + 16) = v57;
    *(v60 + 24) = v53;
    *(v60 + 32) = v55;
    *(v60 + 40) = 0;
    v59(&aBlock, 0);

    v61 = *(v1 + 104);
    sub_1001CC5CC(0, 0.3);

    v15 = v8;
    v8 = v68;
  }

  else
  {
    v9 = v68;
  }

LABEL_27:
  v62 = *(**(v1 + 176) + 144);

  v62(&aBlock, v63);

  if (aBlock > 2u)
  {
    if (v2 == 0x8000000000000018)
    {
      return;
    }

    sub_10001A9B4();
  }

  sub_10001B360(v2);
}

void sub_100019F64(double a1, double a2)
{

  StateValue.wrappedValue.getter();

  if ((v40 & 0x100000000) != 0)
  {
    return;
  }

  v5 = *(**(v2 + 144) + 144);

  v5(&v40, v6);

  v43 = v40;

  sub_10000F974(&qword_1004A1648);
  sub_10000F974(&qword_1004A1650);
  swift_dynamicCast();
  v7 = v40;
  v39 = v2;
  if (!(v40 >> 62))
  {
    v8 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      goto LABEL_4;
    }

LABEL_28:

    return;
  }

LABEL_27:
  v8 = _CocoaArrayWrapper.endIndex.getter();
  if (!v8)
  {
    goto LABEL_28;
  }

LABEL_4:
  v9 = 0;
  while (1)
  {
    if ((v7 & 0xC000000000000001) != 0)
    {
      v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_26;
      }

      v10 = *(v7 + 8 * v9 + 32);
    }

    v11 = v10;
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    v13 = (*((swift_isaMask & *v10) + 0x118))();
    v14 = v13(a1, a2);

    if (v14)
    {
      break;
    }

    ++v9;
    if (v12 == v8)
    {
      goto LABEL_28;
    }
  }

  *(v2 + 112) = a1;
  *(v2 + 120) = a2;
  v15 = *(**(v2 + 176) + 144);

  v15(&v40, v16);

  if (v40 > 1u || v40)
  {
    goto LABEL_24;
  }

  SIMD2<>.init(_:)();
  if (qword_1004A0508 != -1)
  {
    v38 = v17;
    swift_once();
    v17 = v38;
  }

  *(v2 + 80) = vadd_f32(v17, qword_1004D5078);
  *(v2 + 88) = 1114636288;
  v18 = *(**(v2 + 128) + 144);

  v18(&v40, v19);

  v21 = v40;
  v20 = v41;
  v22 = v42;
  v23 = *(v41 + 16);
  if (v23)
  {
    v24 = sub_1001983A8(6u);
    if (v25)
    {
      v23 = *(*(v20 + 56) + 8 * v24);
    }

    else
    {
      v23 = 0;
    }
  }

  v26 = v23 + 1;
  if (!__OFADD__(v23, 1))
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v40 = v20;
    sub_1000BB434(v26, 6u, isUniquelyReferenced_nonNull_native);
    v28 = v40;
    v29 = *(v39 + 80);
    v30 = *(v39 + 88);
    v31 = *(**(v39 + 128) + 200);

    v33 = v31(v32);

    v34 = swift_allocObject();
    *(v34 + 16) = v21;
    *(v34 + 24) = v28;
    *(v34 + 32) = v22;
    *(v34 + 40) = v29;
    *(v34 + 48) = v30;
    *(v34 + 56) = a1;
    *(v34 + 64) = a2;
    (*(*v33 + 280))(sub_10001B434, v34);

    v35 = *(**(v39 + 176) + 400);

    v36 = v35(&v40);
    *v37 = 1;
    v36(&v40, 0);

LABEL_24:

    return;
  }

  __break(1u);
}

uint64_t sub_10001A428(double a1, double a2)
{
  *(v2 + 112) = a1;
  *(v2 + 120) = a2;
  v3 = *(**(v2 + 176) + 144);

  v3(v11, v4);

  if (LOBYTE(v11[0]) == 2)
  {
    SIMD2<>.init(_:)();
    *(v2 + 80) = vadd_f32(v6, *(v2 + 96));
    *(v2 + 88) = 1106247680;
    v7 = *(**(v2 + 128) + 200);

    v9 = v7(v8);

    v10 = *(*v9 + 280);

    v10(sub_10001B2F8, v2);
  }

  return result;
}

uint64_t sub_10001A584(double a1, double a2)
{
  v3 = v2;
  *(v2 + 112) = a1;
  *(v2 + 120) = a2;
  v4 = *(**(v2 + 176) + 144);

  v4(&v32, v5);

  if (v32 - 1 <= 1)
  {
    SIMD2<>.init(_:)();
    *(v2 + 80) = vadd_f32(v7, *(v2 + 96));
    v8 = *(**(v2 + 128) + 144);

    v8(&v32, v9);

    v11 = v32;
    v10 = v33;
    v12 = v34;
    v13 = v35;
    v14 = v36;
    v15 = *(v33 + 16);
    if (v15)
    {
      result = sub_1001983A8(7u);
      if (v16)
      {
        v15 = *(*(v10 + 56) + 8 * result);
      }

      else
      {
        v15 = 0;
      }
    }

    v17 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
    }

    else
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v32 = v10;
      sub_1000BB434(v17, 7u, isUniquelyReferenced_nonNull_native);
      v19 = v32;
      v20 = *(v3 + 80);
      v21 = *(v3 + 88);
      v22 = *(**(v3 + 128) + 200);

      v24 = v22(v23);

      v25 = swift_allocObject();
      *(v25 + 16) = v11;
      *(v25 + 24) = v19;
      *(v25 + 32) = v12;
      *(v25 + 40) = v20;
      *(v25 + 48) = v21;
      *(v25 + 56) = v13;
      *(v25 + 64) = v14;
      (*(*v24 + 280))(sub_10001B280, v25);

      v26 = *(**(v3 + 176) + 144);

      v26(&v32, v27);

      v28 = v32;
      v29 = *(**(v3 + 176) + 400);

      v31 = v29(&v32);
      if (v28 == 2)
      {
        *v30 = 3;
      }

      else
      {
        *v30 = 0;
      }

      v31(&v32, 0);
    }
  }

  return result;
}

uint64_t sub_10001A888(uint64_t a1, uint64_t a2)
{

  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  return sub_10001B29C(a2, v6);
}

id sub_10001A8FC(uint64_t a1, float a2, double a3)
{
  v3 = *(a1 + 64);
  CGAffineTransformMakeScale(&t1, a2, a2);
  tx = t1.tx;
  ty = t1.ty;
  v6 = *&a3;
  v7 = *(&a3 + 1);
  v12 = *&t1.c;
  v14 = *&t1.a;
  CGAffineTransformMakeTranslation(&t1, v6, v7);
  v8 = *&t1.a;
  v9 = *&t1.c;
  v10 = *&t1.tx;
  *&t1.a = v14;
  *&t1.c = v12;
  t1.tx = tx;
  t1.ty = ty;
  *&t2.a = v8;
  *&t2.c = v9;
  *&t2.tx = v10;
  CGAffineTransformConcat(&v15, &t1, &t2);
  t1 = v15;
  return [v3 setTransform:&t1];
}

void sub_10001A9B4()
{
  v1 = v0;
  v2 = *(**(v0 + 176) + 400);

  v3 = v2(&v16);
  *v4 = 0;
  v3(&v16, 0);

  v5 = objc_opt_self();
  v20 = sub_10001B3DC;
  v21 = v1;
  v16 = _NSConcreteStackBlock;
  v17 = 1107296256;
  v18 = sub_100041180;
  v19 = &unk_100467A00;
  v6 = _Block_copy(&v16);

  [v5 animateWithDuration:0 delay:v6 options:0 animations:0.3 completion:0.0];
  _Block_release(v6);
  v7 = *(**(v1 + 176) + 400);

  v8 = v7(&v16);
  *(v9 + 8) = 0u;
  *(v9 + 24) = 0u;
  *(v9 + 40) = 1;
  v8(&v16, 0);

  v10 = *(v1 + 104);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = 0x3FF0000000000000;
  *(v11 + 32) = 1;
  v12 = objc_allocWithZone(UIViewPropertyAnimator);
  v20 = sub_10001B41C;
  v21 = v11;
  v16 = _NSConcreteStackBlock;
  v17 = 1107296256;
  v18 = sub_100041180;
  v19 = &unk_100467A50;
  v13 = _Block_copy(&v16);
  v14 = v10;

  v15 = [v12 initWithDuration:v13 dampingRatio:0.3 animations:1.0];
  _Block_release(v13);
  [v15 setInterruptible:0];
  [v15 startAnimation];

  if (qword_1004A0188 != -1)
  {
    swift_once();
  }

  sub_10008A8FC(7u);
}

id sub_10001ACC8(uint64_t a1)
{
  v1 = *(a1 + 64);
  CGAffineTransformMakeScale(&v3, 1.0, 1.0);
  return [v1 setTransform:&v3];
}

uint64_t sub_10001AD24()
{
}

id *sub_10001AD94()
{
  v0 = StateObserver.deinit();

  return v0;
}

uint64_t sub_10001AE0C()
{
  sub_10001AD94();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ActionController()
{
  result = qword_1004A14D0;
  if (!qword_1004A14D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10001AF10@<X0>(uint64_t *a1@<X8>)
{
  result = Contexts.UIKit.init()();
  *a1 = result;
  return result;
}

uint64_t sub_10001AF38(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  *(v3 + 80) = 0;
  *(v3 + 88) = 1106247680;
  *(v3 + 96) = 0;
  *(v3 + 112) = 0;
  *(v3 + 120) = 0;
  KeyPath = swift_getKeyPath();
  v9 = sub_10000F974(&unk_1004A72D0);
  if (qword_1004A04D8 != -1)
  {
    swift_once();
  }

  v10 = qword_1004D5058;
  v11 = *(v9 + 272);
  swift_retain_n();
  v4[16] = v11(KeyPath, v10);
  v12 = swift_getKeyPath();
  v13 = *(sub_10000F974(&qword_1004A11D0) + 272);

  v4[17] = v13(v12, v10);
  v14 = swift_getKeyPath();
  v15 = *(sub_10000F974(&qword_1004A7530) + 272);

  v4[18] = v15(v14, v10);
  v16 = sub_10000F974(&qword_1004A3F50);
  v17 = swift_getKeyPath();
  v18 = *(v16 + 272);

  v4[19] = v18(v17, v10);
  v19 = sub_10000F974(&qword_1004A11D8);
  v20 = swift_getKeyPath();
  v4[20] = (*(v19 + 272))(v20, v10);
  v21 = sub_10000F974(&qword_1004A1638);
  v22 = swift_getKeyPath();
  v4[21] = (*(v21 + 272))(v22, v10);
  sub_10000F974(&qword_1004A1640);
  swift_getKeyPath();
  v4[22] = MutableStateValue.__allocating_init(_:_:)();
  v4[8] = a1;
  v4[9] = a2;
  v4[13] = a3;
  v23 = a2;
  v24 = StateObserver.init(configuration:)();
  *&v23[OBJC_IVAR____TtC7Measure10ActionView_delegate + 8] = &off_100467940;
  swift_unknownObjectWeakAssign();
  return v24;
}

double sub_10001B2F8(uint64_t a1)
{
  result = *(v1 + 80);
  v3 = *(v1 + 88);
  *(a1 + 24) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_10001B30C()
{

  return _swift_deallocObject(v0, 72, 7);
}

void sub_10001B360(unint64_t a1)
{
  if (a1 >> 62)
  {
    if (a1 >> 62 != 1)
    {
      return;
    }

    a1 &= 0x3FFFFFFFFFFFFFFFuLL;
  }
}

uint64_t sub_10001B37C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10001B3C4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10001B3E4()
{

  return _swift_deallocObject(v0, 33, 7);
}

void sub_10001B4B8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  sub_10001B92C();
  sub_10001B978();
  isa = Set._bridgeToObjectiveC()().super.isa;
  v16.receiver = v3;
  v16.super_class = ObjectType;
  objc_msgSendSuper2(&v16, "touchesBegan:withEvent:", isa, a2);

  v8 = sub_10008CA00(a1);
  if (v8)
  {
    v9 = v8;
    [v8 locationInView:v3];
    v11 = v10;
    v13 = v12;
    v14 = *&v3[OBJC_IVAR____TtC7Measure10ActionView_shouldPreventManipulatingPoint];

    LOBYTE(v14) = v14(v15, v11, v13);

    if ((v14 & 1) != 0 || !swift_unknownObjectWeakLoadStrong())
    {
    }

    else
    {
      sub_100019F64(v11, v13);

      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_10001B69C(void *a1, uint64_t a2, uint64_t a3, void *a4, SEL *a5, void (*a6)(double, double))
{
  sub_10001B92C();
  sub_10001B978();
  v10 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = a4;
  v12 = a1;
  sub_10001B764(v10, a4, a5, a6);
}

void sub_10001B764(uint64_t a1, uint64_t a2, SEL *a3, void (*a4)(double, double))
{
  ObjectType = swift_getObjectType();
  sub_10001B92C();
  sub_10001B978();
  isa = Set._bridgeToObjectiveC()().super.isa;
  v17.receiver = v4;
  v17.super_class = ObjectType;
  objc_msgSendSuper2(&v17, *a3, isa, a2);

  v11 = sub_10008CA00(a1);
  if (v11)
  {
    v12 = v11;
    [v11 locationInView:v4];
    v14 = v13;
    v16 = v15;
    if (swift_unknownObjectWeakLoadStrong())
    {
      a4(v14, v16);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

unint64_t sub_10001B92C()
{
  result = qword_1004A1690;
  if (!qword_1004A1690)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1004A1690);
  }

  return result;
}

unint64_t sub_10001B978()
{
  result = qword_1004A1698;
  if (!qword_1004A1698)
  {
    sub_10001B92C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A1698);
  }

  return result;
}

unint64_t sub_10001B9FC()
{
  result = qword_1004A16A0;
  if (!qword_1004A16A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A16A0);
  }

  return result;
}

unint64_t sub_10001BA50()
{
  result = qword_1004A16A8;
  if (!qword_1004A16A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A16A8);
  }

  return result;
}

uint64_t sub_10001BAA4()
{
  v0 = type metadata accessor for LocalizedStringResource();
  sub_10001D4FC(v0, qword_1004D49E0);
  sub_10001D4C4(v0, qword_1004D49E0);
  return LocalizedStringResource.init(stringLiteral:)();
}

uint64_t sub_10001BB34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[13] = a2;
  v3[14] = a3;
  v3[12] = a1;
  type metadata accessor for MainActor();
  v3[15] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10001BBD0, v5, v4);
}

uint64_t sub_10001BBD0()
{

  sub_10001D910();
  v1 = OS_os_log.init(subsystem:category:)();
  static os_log_type_t.default.getter();
  os_log(_:dso:log:_:_:)();
  v2 = [objc_opt_self() currentDevice];
  v3 = [v2 userInterfaceIdiom];

  if (v3 != 1)
  {
    AppDependency.wrappedValue.getter();
    sub_10001D95C((v0 + 56), v0 + 16);
    sub_10000FEBC((v0 + 16), *(v0 + 40));
    IntentParameter.wrappedValue.getter();
    if (*(v0 + 56) == 1)
    {

      v4 = 1;
    }

    else
    {
      v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v4 = v5 & 1;
    }

    sub_1000326F8(v4);
    sub_10000FF00(v0 + 16);
  }

  static os_log_type_t.default.getter();
  os_log(_:dso:log:_:_:)();
  static IntentResult.result<>()();

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_10001BDC4@<X0>(_BYTE *a1@<X8>)
{
  result = IntentParameter.wrappedValue.getter();
  *a1 = v3;
  return result;
}

void (*sub_10001BE38(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = IntentParameter.wrappedValue.modify();
  return sub_10001BEAC;
}

void sub_10001BEAC(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

unint64_t sub_10001BEFC()
{
  result = qword_1004A16B0;
  if (!qword_1004A16B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A16B0);
  }

  return result;
}

unint64_t sub_10001BF54()
{
  result = qword_1004A16B8;
  if (!qword_1004A16B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A16B8);
  }

  return result;
}

unint64_t sub_10001BFAC()
{
  result = qword_1004A16C0;
  if (!qword_1004A16C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A16C0);
  }

  return result;
}

uint64_t sub_10001C070(uint64_t a1)
{
  v2 = sub_10001D9A0();

  return static OpenIntent.openAppWhenRun.getter(a1, v2);
}

uint64_t sub_10001C0B8()
{
  v0 = sub_10000F974(&qword_1004A1788);
  __chkstk_darwin(v0 - 8);
  v1 = sub_10000F974(&qword_1004A1790);
  __chkstk_darwin(v1);
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v2._object = 0x80000001003FF890;
  v2._countAndFlagsBits = 0xD000000000000015;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v2);
  swift_getKeyPath();
  sub_10000F974(&qword_1004A1798);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v3);
  ParameterSummaryString.init(stringInterpolation:)();
  return IntentParameterSummary.init(_:table:)();
}

uint64_t sub_10001C254(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10001C300;

  return sub_10001BB34(a1, v5, v4);
}

uint64_t sub_10001C300()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10001C3F4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10001D560();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_10001C41C(uint64_t a1)
{
  v2 = sub_10001BEFC();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_10001C458()
{
  v0 = sub_10000F974(&qword_1004A1758);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = type metadata accessor for LocalizedStringResource();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = type metadata accessor for TypeDisplayRepresentation();
  sub_10001D4FC(v5, qword_1004D49F8);
  sub_10001D4C4(v5, qword_1004D49F8);
  LocalizedStringResource.init(stringLiteral:)();
  (*(v4 + 56))(v2, 1, 1, v3);
  return TypeDisplayRepresentation.init(name:numericFormat:)();
}

uint64_t sub_10001C5C8()
{
  v0 = sub_10000F974(&qword_1004A1750);
  __chkstk_darwin(v0 - 8);
  v1 = sub_10000F974(&qword_1004A1758);
  __chkstk_darwin(v1 - 8);
  v3 = &v15 - v2;
  v16 = type metadata accessor for LocalizedStringResource();
  v4 = *(v16 - 8);
  __chkstk_darwin(v16);
  sub_10000F974(&qword_1004A1760);
  v5 = *(sub_10000F974(&qword_1004AE1C0) - 8);
  v6 = *(v5 + 72);
  v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1003D5730;
  v9 = (v8 + v7);
  *v9 = 0;
  LocalizedStringResource.init(stringLiteral:)();
  v10 = v4 + 56;
  v11 = *(v4 + 56);
  v15 = v10;
  v12 = v16;
  v11(v3, 1, 1, v16);
  DisplayRepresentation.Image.init(systemName:tintColor:symbolConfiguration:)();
  DisplayRepresentation.init(title:subtitle:image:)();
  v9[v6] = 1;
  LocalizedStringResource.init(stringLiteral:)();
  v11(v3, 1, 1, v12);
  DisplayRepresentation.Image.init(systemName:tintColor:symbolConfiguration:)();
  DisplayRepresentation.init(title:subtitle:image:)();
  v13 = sub_10019A06C(v8);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_1004D4A10 = v13;
  return result;
}

uint64_t sub_10001C90C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6C6576656CLL;
  }

  else
  {
    v3 = 0x6572757361656DLL;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  if (*a2)
  {
    v5 = 0x6C6576656CLL;
  }

  else
  {
    v5 = 0x6572757361656DLL;
  }

  if (*a2)
  {
    v6 = 0xE500000000000000;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

unint64_t sub_10001C9B4()
{
  result = qword_1004A16C8;
  if (!qword_1004A16C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A16C8);
  }

  return result;
}

Swift::Int sub_10001CA08()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10001CA88()
{
  String.hash(into:)();
}

Swift::Int sub_10001CAF4()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10001CB70@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_100464DA0, *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_10001CBD0(uint64_t *a1@<X8>)
{
  v2 = 0x6572757361656DLL;
  if (*v1)
  {
    v2 = 0x6C6576656CLL;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_10001CC14()
{
  result = qword_1004A16D0;
  if (!qword_1004A16D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A16D0);
  }

  return result;
}

unint64_t sub_10001CC6C()
{
  result = qword_1004A16D8;
  if (!qword_1004A16D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A16D8);
  }

  return result;
}

unint64_t sub_10001CCD0()
{
  result = qword_1004A16E0;
  if (!qword_1004A16E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A16E0);
  }

  return result;
}

unint64_t sub_10001CD28()
{
  result = qword_1004A16E8;
  if (!qword_1004A16E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A16E8);
  }

  return result;
}

unint64_t sub_10001CD80()
{
  result = qword_1004A16F0;
  if (!qword_1004A16F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A16F0);
  }

  return result;
}

unint64_t sub_10001CDD8()
{
  result = qword_1004A16F8;
  if (!qword_1004A16F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A16F8);
  }

  return result;
}

uint64_t sub_10001CE68@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  if (*a1 == -1)
  {
    v6 = a2(0);
  }

  else
  {
    swift_once();
    v6 = a2(0);
  }

  v7 = v6;
  v8 = sub_10001D4C4(v6, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

unint64_t sub_10001CF60()
{
  result = qword_1004A1700;
  if (!qword_1004A1700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A1700);
  }

  return result;
}

uint64_t sub_10001CFB4(uint64_t a1)
{
  v2 = sub_10001CF60();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10001D004()
{
  result = qword_1004A1708;
  if (!qword_1004A1708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A1708);
  }

  return result;
}

unint64_t sub_10001D05C()
{
  result = qword_1004A1710;
  if (!qword_1004A1710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A1710);
  }

  return result;
}

unint64_t sub_10001D0B4()
{
  result = qword_1004A1718;
  if (!qword_1004A1718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A1718);
  }

  return result;
}

uint64_t sub_10001D108()
{
  if (qword_1004A00B0 != -1)
  {
    swift_once();
  }
}

uint64_t sub_10001D164(uint64_t a1)
{
  v2 = sub_10001CDD8();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t getEnumTagSinglePayload for Tab(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Tab(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_10001D360(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10001D3A8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10001D47C(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_100013BB0(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10001D4C4(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_10001D4FC(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_10001D560()
{
  v19 = type metadata accessor for InputConnectionBehavior();
  v0 = *(v19 - 8);
  __chkstk_darwin(v19);
  v2 = &v17 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10000F974(&qword_1004A1768);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v17 - v7;
  v9 = sub_10000F974(&qword_1004A1758);
  __chkstk_darwin(v9 - 8);
  v11 = &v17 - v10;
  v12 = type metadata accessor for LocalizedStringResource();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  sub_10000F974(&qword_1004A1770);
  sub_10001D8BC();
  AnyHashable.init<A>(_:)();
  type metadata accessor for AppDependencyManager();
  static AppDependencyManager.shared.getter();
  v18 = AppDependency.__allocating_init(key:manager:)();
  sub_10000F974(&qword_1004A1778);
  LocalizedStringResource.init(stringLiteral:)();
  (*(v13 + 56))(v11, 1, 1, v12);
  v20 = 2;
  v14 = type metadata accessor for IntentDialog();
  v15 = *(*(v14 - 8) + 56);
  v15(v8, 1, 1, v14);
  v15(v6, 1, 1, v14);
  (*(v0 + 104))(v2, enum case for InputConnectionBehavior.default(_:), v19);
  sub_10001CF60();
  IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:supportedValues:)();
  return v18;
}