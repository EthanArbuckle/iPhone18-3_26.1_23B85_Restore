void sub_1011B5220(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, int a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, xpc_object_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, xpc_object_t object)
{
  *(v32 - 104) = v29;
  object = (v32 - 112);
  sub_1000087B4(&object);
  if (SLOBYTE(STACK[0x24F]) < 0)
  {
    operator delete(STACK[0x238]);
  }

  if (SLOBYTE(STACK[0x267]) < 0)
  {
    operator delete(STACK[0x250]);
  }

  if (*(v32 - 233) < 0)
  {
    operator delete(*(v32 - 256));
  }

  if (*(v32 - 201) < 0)
  {
    operator delete(*(v32 - 224));
  }

  if ((a14 & 1) == 0)
  {
    sub_100004A34(a12);
  }

  sub_1001A8E08(v32 - 192, *(v32 - 184));
  xpc_release(*(v32 - 120));
  if ((v31 & 1) == 0)
  {
    sub_100004A34(v30);
  }

  _Unwind_Resume(a1);
}

void sub_1011B56A4(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  if (sSupportsPartialActiveProfiles())
  {
    v10[4] = a1;
    v11 = a2;
    if (*(a3 + 23) < 0)
    {
      sub_100005F2C(__p, *a3, *(a3 + 8));
    }

    else
    {
      *__p = *a3;
      __p[2] = *(a3 + 16);
    }

    sub_1011CE6BC(&v13, a4);
    v10[0] = 0;
    v10[1] = 0;
    sub_100004AA0(v10, (a1 + 8));
    operator new();
  }

  sub_10000501C(v8, "");
  sub_1011B5934(*(a4 + 24), v8, 0x100000003);
  if (v9 < 0)
  {
    operator delete(v8[0]);
  }
}

void sub_1011B58E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

uint64_t sub_1011B5934(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  if (!a1)
  {
    sub_100022DB4();
  }

  return (*(*a1 + 48))(a1, a2, &v4);
}

void sub_1011B5984(uint64_t a1, uint64_t a2, void **a3, uint64_t a4)
{
  if (sSupportsPartialActiveProfiles())
  {
    v10[4] = a1;
    if (*(a2 + 23) < 0)
    {
      sub_100005F2C(__p, *a2, *(a2 + 8));
    }

    else
    {
      *__p = *a2;
      __p[2] = *(a2 + 16);
    }

    __p[3] = *a3;
    sub_1004F1F78(&v12, (a3 + 1));
    sub_1011CEEA8(&v13, a4);
    v10[0] = 0;
    v10[1] = 0;
    sub_100004AA0(v10, (a1 + 8));
    operator new();
  }

  v9[0] = 0;
  v9[1] = 0;
  v8 = v9;
  sub_1011B5C70(*(a4 + 24), &v8, 0x100000003);
  sub_10004EC58(&v8, v9[0]);
}

void sub_1011B5BEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

uint64_t sub_1011B5C70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  if (!a1)
  {
    sub_100022DB4();
  }

  return (*(*a1 + 48))(a1, a2, &v4);
}

uint64_t sub_1011B5CC0(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 == v3)
  {
    v4 = (a1 + 40);
    v10 = *(a1 + 8);
  }

  else
  {
    v4 = (a1 + 40);
    v5 = *(a1 + 32);
    v6 = &v3[v5 >> 7];
    v7 = *v6 + 32 * (v5 & 0x7F);
    v8 = *(v3 + (((*(a1 + 40) + v5) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * ((*(a1 + 40) + v5) & 0x7F);
    if (v7 != v8)
    {
      do
      {
        v7 = sub_10002B644(v7) + 32;
        if (v7 - *v6 == 4096)
        {
          v9 = v6[1];
          ++v6;
          v7 = v9;
        }
      }

      while (v7 != v8);
      v3 = *(a1 + 8);
      v2 = *(a1 + 16);
    }

    v10 = v2;
  }

  *v4 = 0;
  v11 = v10 - v3;
  if (v11 >= 3)
  {
    do
    {
      operator delete(*v3);
      v2 = *(a1 + 16);
      v3 = (*(a1 + 8) + 8);
      *(a1 + 8) = v3;
      v11 = v2 - v3;
    }

    while (v11 > 2);
    v10 = v2;
  }

  if (v11 == 1)
  {
    v12 = 64;
  }

  else
  {
    if (v11 != 2)
    {
      goto LABEL_17;
    }

    v12 = 128;
  }

  *(a1 + 32) = v12;
LABEL_17:
  if (v3 != v10)
  {
    do
    {
      v13 = *v3++;
      operator delete(v13);
    }

    while (v3 != v10);
    v10 = *(a1 + 8);
    v2 = *(a1 + 16);
  }

  if (v2 != v10)
  {
    *(a1 + 16) = v2 + ((v10 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_1011B5E18(uint64_t a1)
{
  sub_10006DCAC(a1 + 80, *(a1 + 88));
  sub_100077CD4(a1 + 56, *(a1 + 64));
  sub_100077CD4(a1 + 32, *(a1 + 40));
  if (*(a1 + 24) == 1 && *(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1011B5E7C(char *a1)
{
  if (a1)
  {
    sub_1011B5E7C(*a1);
    sub_1011B5E7C(*(a1 + 1));
    if (a1[64] == 1 && a1[63] < 0)
    {
      operator delete(*(a1 + 5));
    }

    operator delete(a1);
  }
}

uint64_t sub_1011B5EE4(uint64_t a1)
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

uint64_t sub_1011B5F64(uint64_t a1)
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

uint64_t sub_1011B6054(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F17FB8;
  a2[1] = v2;
  return result;
}

uint64_t sub_1011B6088(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1011B6144(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F18038;
  a2[1] = v2;
  return result;
}

uint64_t sub_1011B6178(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1011B61C4(uint64_t a1, xpc_object_t *a2)
{
  v3 = *a2;
  if (*a2 && xpc_get_type(*a2) == &_xpc_type_array)
  {
    xpc_retain(v3);
  }

  else
  {
    v3 = xpc_null_create();
  }

  sub_10006DCAC(a1, *(a1 + 8));
  *a1 = a1 + 8;
  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  if (xpc_get_type(v3) == &_xpc_type_array)
  {
    object[0] = v3;
    if (v3)
    {
      xpc_retain(v3);
    }

    else
    {
      object[0] = xpc_null_create();
    }

    sub_100008EA4(&v10, object, 0);
    xpc_release(object[0]);
    v7[0] = v3;
    if (v3)
    {
      xpc_retain(v3);
    }

    else
    {
      v7[0] = xpc_null_create();
    }

    if (xpc_get_type(v3) == &_xpc_type_array)
    {
      count = xpc_array_get_count(v3);
    }

    else
    {
      count = 0;
    }

    sub_100008EA4(object, v7, count);
    xpc_release(v7[0]);
    for (i = v11; i != object[1] || v10 != object[0]; i = ++v11)
    {
      v7[1] = i;
      v8 = 0;
      v7[0] = &v10;
      sub_10003EAD4(v7, &v8);
      if (xpc_get_type(v8) == &_xpc_type_dictionary)
      {
        v6 = v8;
        v7[0] = 0;
        if (v8)
        {
          xpc_retain(v8);
        }

        else
        {
          v6 = xpc_null_create();
        }

        sub_1011B6440(v7, &v6);
        xpc_release(v6);
        sub_10062E828(a1, v7);
      }

      xpc_release(v8);
    }

    xpc_release(object[0]);
    xpc_release(v10);
  }

  xpc_release(v3);
}

void sub_1011B63B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t a9, xpc_object_t object, uint64_t a11, xpc_object_t a12, xpc_object_t a13, uint64_t a14, xpc_object_t a15)
{
  xpc_release(object);
  xpc_release(a15);
  xpc_release(v15);
  _Unwind_Resume(a1);
}

void sub_1011B6440(int *a1, xpc_object_t *a2)
{
  v3 = *a2;
  v10 = v3;
  if (v3 && xpc_get_type(v3) == &_xpc_type_dictionary)
  {
    xpc_retain(v3);
  }

  else
  {
    v3 = xpc_null_create();
    v10 = v3;
  }

  if (xpc_get_type(v3) == &_xpc_type_dictionary)
  {
    v7 = &v10;
    v8 = "first";
    sub_100006354(&v7, &object);
    type = xpc_get_type(object);
    if (type == &_xpc_type_string)
    {
      v11 = *a1;
      ctu::rest::detail::read_enum_string_value(&v11, &object, v5);
      *a1 = v11;
    }

    else if (type == &_xpc_type_BOOL || type == &_xpc_type_int64 || type == &_xpc_type_uint64)
    {
      *a1 = xpc::dyn_cast_or_default(&object, 0, v5);
    }

    xpc_release(object);
    v7 = &v10;
    v8 = "second";
    sub_100006354(&v7, &object);
    *(a1 + 2) = xpc::dyn_cast_or_default(&object, 0, v6);
    xpc_release(object);
    v3 = v10;
  }

  xpc_release(v3);
}

void sub_1011B65A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t object, xpc_object_t a13)
{
  xpc_release(object);
  xpc_release(a13);
  _Unwind_Resume(a1);
}

void sub_1011B65F8(void ***a1)
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
        if (*(v4 - 1) < 0)
        {
          operator delete(*(v4 - 3));
        }

        v8 = v4 - 6;
        sub_100034D1C(&v8);
        v6 = *(v4 - 9);
        if (v6)
        {
          *(v4 - 8) = v6;
          operator delete(v6);
        }

        v7 = *(v4 - 13);
        if (v7)
        {
          *(v4 - 12) = v7;
          operator delete(v7);
        }

        v4 -= 18;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_1011B66C0(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (!(a4 >> 62))
    {
      sub_100016740(result, a4);
    }

    sub_1000CE3D4();
  }

  return result;
}

void sub_1011B6740(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1011B675C(uint64_t a1)
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

uint64_t sub_1011B67DC(uint64_t a1)
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

uint64_t sub_1011B685C(uint64_t *a1, uint64_t a2)
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
  sub_1011B69A0(168 * v2, a2);
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

void sub_1011B698C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_10010AB74(va);
  _Unwind_Resume(a1);
}

__n128 sub_1011B69A0(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  v2 = *(a2 + 64);
  *(a1 + 68) = *(a2 + 68);
  *(a1 + 64) = v2;
  v3 = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 72) = v3;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a2 + 72) = 0;
  v4 = *(a2 + 96);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 96) = v4;
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  *(a2 + 96) = 0;
  v5 = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 120) = v5;
  *(a2 + 120) = 0;
  *(a2 + 128) = 0;
  *(a2 + 136) = 0;
  result = *(a2 + 144);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 144) = result;
  *(a2 + 144) = 0;
  *(a2 + 152) = 0;
  *(a2 + 160) = 0;
  return result;
}

uint64_t **sub_1011B6A5C(uint64_t **a1, uint64_t a2)
{
  v3 = *a1;
  v4 = (*a1)[1];
  if (v4 >= (*a1)[2])
  {
    v5 = sub_1011B685C(*a1, a2);
  }

  else
  {
    sub_1011B69A0((*a1)[1], a2);
    v5 = v4 + 168;
  }

  v3[1] = v5;
  return a1;
}

void sub_1011B6AB4(uint64_t a1, unint64_t a2, uint64_t a3, char a4)
{
  v7 = 0xCF3CF3CF3CF3CF3DLL;
LABEL_2:
  v8 = a2 - 168;
  v9 = a1;
LABEL_3:
  v10 = 1 - a3;
  while (1)
  {
    a1 = v9;
    v11 = v10;
    v12 = a2 - v9;
    v13 = ((a2 - v9) >> 3) * v7;
    if (v13 > 2)
    {
      switch(v13)
      {
        case 3uLL:
          sub_1011B7644(v9, v9 + 168, a2 - 168);
          return;
        case 4uLL:
          sub_1011B7BA4(v9, v9 + 168, v9 + 336, a2 - 168);
          return;
        case 5uLL:
          sub_1011B7F14(v9, v9 + 168, v9 + 336, v9 + 504, a2 - 168);
          return;
      }
    }

    else
    {
      if (v13 < 2)
      {
        return;
      }

      if (v13 == 2)
      {
        sub_100032BFC(v94, a2 - 168);
        sub_100032BFC(v82, v9);
        v26 = v94[0];
        v27 = v82[0];
        if (v93 < 0)
        {
          operator delete(v92);
        }

        if (v91 < 0)
        {
          operator delete(v90);
        }

        if (v89 < 0)
        {
          operator delete(v88);
        }

        if (v87 < 0)
        {
          operator delete(v86);
        }

        v156[0] = &v85;
        sub_100034D1C(v156);
        if (v83)
        {
          v84 = v83;
          operator delete(v83);
        }

        if (v105 < 0)
        {
          operator delete(v104);
        }

        if (v103 < 0)
        {
          operator delete(v102);
        }

        if (v101 < 0)
        {
          operator delete(v100);
        }

        if (v99 < 0)
        {
          operator delete(v98);
        }

        v156[0] = &v97;
        sub_100034D1C(v156);
        if (v95)
        {
          v96 = v95;
          operator delete(v95);
        }

        if (v26 < v27)
        {
          sub_1011BA0AC(v9, v8);
        }

        return;
      }
    }

    if (v12 <= 4031)
    {
      break;
    }

    if (v11 == 1)
    {
      sub_1011B8390(v9, a2, a2);
      return;
    }

    v14 = v13 >> 1;
    v15 = v9 + 168 * (v13 >> 1);
    if (v12 < 0x5401)
    {
      sub_1011B7644(v15, v9, a2 - 168);
      if (a4)
      {
        goto LABEL_38;
      }
    }

    else
    {
      sub_1011B7644(v9, v15, a2 - 168);
      v16 = v9 + 168;
      v17 = v7;
      v18 = 168 * v14;
      v19 = 168 * v14 + a1 - 168;
      sub_1011B7644(a1 + 168, v19, a2 - 336);
      sub_1011B7644(a1 + 336, v16 + v18, a2 - 504);
      v20 = v16 + v18;
      v7 = v17;
      sub_1011B7644(v19, v15, v20);
      sub_1011BA0AC(a1, v15);
      if (a4)
      {
        goto LABEL_38;
      }
    }

    sub_100032BFC(v70, a1 - 168);
    sub_100032BFC(v58, a1);
    v21 = v70[0];
    v22 = v58[0];
    if (v69 < 0)
    {
      operator delete(__p);
    }

    if (v67 < 0)
    {
      operator delete(v66);
    }

    if (v65 < 0)
    {
      operator delete(v64);
    }

    if (v63 < 0)
    {
      operator delete(v62);
    }

    v156[0] = &v61;
    sub_100034D1C(v156);
    if (v59)
    {
      v60 = v59;
      operator delete(v59);
    }

    if (v81 < 0)
    {
      operator delete(v80);
    }

    if (v79 < 0)
    {
      operator delete(v78);
    }

    if (v77 < 0)
    {
      operator delete(v76);
    }

    if (v75 < 0)
    {
      operator delete(v74);
    }

    v156[0] = &v73;
    sub_100034D1C(v156);
    if (v71)
    {
      v72 = v71;
      operator delete(v71);
    }

    if (v21 >= v22)
    {
      v9 = sub_1011B8BE4(a1, a2);
      goto LABEL_43;
    }

LABEL_38:
    v23 = sub_1011B93C0(a1, a2);
    if ((v24 & 1) == 0)
    {
      goto LABEL_41;
    }

    v25 = sub_1011B9AC0(a1, v23);
    v9 = v23 + 168;
    if (sub_1011B9AC0(v23 + 168, a2))
    {
      a3 = -v11;
      a2 = v23;
      if (v25)
      {
        return;
      }

      goto LABEL_2;
    }

    v10 = v11 + 1;
    if (!v25)
    {
LABEL_41:
      sub_1011B6AB4(a1, v23, -v11, a4 & 1);
      v9 = v23 + 168;
LABEL_43:
      a4 = 0;
      a3 = -v11;
      goto LABEL_3;
    }
  }

  if ((a4 & 1) == 0)
  {
    if (v9 != a2)
    {
      v45 = v9 + 168;
      if (v9 + 168 != a2)
      {
        do
        {
          v46 = v45;
          sub_100032BFC(v156, v45);
          sub_100032BFC(v144, a1);
          v47 = v156[0];
          v48 = v144[0];
          if (v155 < 0)
          {
            operator delete(v154);
          }

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

          *&v130 = v147;
          sub_100034D1C(&v130);
          if (v145)
          {
            v146 = v145;
            operator delete(v145);
          }

          if (v167 < 0)
          {
            operator delete(v166);
          }

          if (v165 < 0)
          {
            operator delete(v164);
          }

          if (v163 < 0)
          {
            operator delete(v162);
          }

          if (v161 < 0)
          {
            operator delete(v160);
          }

          *&v130 = v159;
          sub_100034D1C(&v130);
          if (v157)
          {
            v158 = v157;
            operator delete(v157);
          }

          if (v47 < v48)
          {
            v135 = 0;
            v49 = *(a1 + 184);
            v130 = *v46;
            *v131 = v49;
            v50 = *(a1 + 200);
            *(a1 + 184) = 0;
            *(a1 + 192) = 0;
            v133 = *(a1 + 208);
            v51 = *(a1 + 224);
            v132 = v50;
            v134 = v51;
            *(a1 + 200) = 0;
            *(a1 + 208) = 0;
            *(a1 + 216) = 0;
            *(a1 + 224) = 0;
            LODWORD(v50) = *(a1 + 232);
            WORD2(v135) = *(a1 + 236);
            LODWORD(v135) = v50;
            v52 = *(a1 + 240);
            v137 = *(a1 + 256);
            v136 = v52;
            *(a1 + 240) = 0;
            *(a1 + 248) = 0;
            v53 = *(a1 + 264);
            v139 = *(a1 + 280);
            v138 = v53;
            *(a1 + 256) = 0;
            *(a1 + 264) = 0;
            *(a1 + 272) = 0;
            *(a1 + 280) = 0;
            v54 = *(a1 + 288);
            v141 = *(a1 + 304);
            v140 = v54;
            *(a1 + 288) = 0;
            *(a1 + 296) = 0;
            v55 = *(a1 + 312);
            v143 = *(a1 + 328);
            v142 = v55;
            *(a1 + 304) = 0;
            *(a1 + 312) = 0;
            *(a1 + 320) = 0;
            *(a1 + 328) = 0;
            do
            {
              sub_100FFD8F0(a1 + 168, a1);
              sub_100032BFC(v118, &v130);
              a1 -= 168;
              sub_100032BFC(v106, a1);
              v56 = v118[0];
              v57 = v106[0];
              if (v117 < 0)
              {
                operator delete(v116);
              }

              if (v115 < 0)
              {
                operator delete(v114);
              }

              if (v113 < 0)
              {
                operator delete(v112);
              }

              if (v111 < 0)
              {
                operator delete(v110);
              }

              v168[0] = v109;
              sub_100034D1C(v168);
              if (v107)
              {
                v108 = v107;
                operator delete(v107);
              }

              if (v129 < 0)
              {
                operator delete(v128);
              }

              if (v127 < 0)
              {
                operator delete(v126);
              }

              if (v125 < 0)
              {
                operator delete(v124);
              }

              if (v123 < 0)
              {
                operator delete(v122);
              }

              v168[0] = v121;
              sub_100034D1C(v168);
              if (v119)
              {
                v120 = v119;
                operator delete(v119);
              }
            }

            while (v56 < v57);
            sub_100FFD8F0(a1 + 168, &v130);
            if (SHIBYTE(v143) < 0)
            {
              operator delete(v142);
            }

            if (SHIBYTE(v141) < 0)
            {
              operator delete(v140);
            }

            if (SHIBYTE(v139) < 0)
            {
              operator delete(v138);
            }

            if (SHIBYTE(v137) < 0)
            {
              operator delete(v136);
            }

            v168[0] = &v133;
            sub_100034D1C(v168);
            if (v131[0])
            {
              v131[1] = v131[0];
              operator delete(v131[0]);
            }
          }

          v45 = v46 + 168;
          a1 = v46;
        }

        while ((v46 + 168) != a2);
      }
    }

    return;
  }

  if (v9 == a2)
  {
    return;
  }

  v28 = v9 + 168;
  if (v9 + 168 == a2)
  {
    return;
  }

  v29 = 0;
  v30 = v9;
  while (2)
  {
    v31 = v28;
    sub_100032BFC(v156, v28);
    sub_100032BFC(v144, v30);
    v32 = v156[0];
    v33 = v144[0];
    if (v155 < 0)
    {
      operator delete(v154);
    }

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

    *&v130 = v147;
    sub_100034D1C(&v130);
    if (v145)
    {
      v146 = v145;
      operator delete(v145);
    }

    if (v167 < 0)
    {
      operator delete(v166);
    }

    if (v165 < 0)
    {
      operator delete(v164);
    }

    if (v163 < 0)
    {
      operator delete(v162);
    }

    if (v161 < 0)
    {
      operator delete(v160);
    }

    *&v130 = v159;
    sub_100034D1C(&v130);
    if (v157)
    {
      v158 = v157;
      operator delete(v157);
    }

    if (v32 >= v33)
    {
      goto LABEL_133;
    }

    v135 = 0;
    v34 = *(v30 + 184);
    v130 = *v31;
    *v131 = v34;
    v35 = *(v30 + 200);
    *(v30 + 184) = 0;
    *(v30 + 192) = 0;
    v133 = *(v30 + 208);
    v36 = *(v30 + 224);
    v132 = v35;
    v134 = v36;
    *(v30 + 200) = 0;
    *(v30 + 208) = 0;
    *(v30 + 216) = 0;
    *(v30 + 224) = 0;
    LODWORD(v35) = *(v30 + 232);
    WORD2(v135) = *(v30 + 236);
    LODWORD(v135) = v35;
    v37 = *(v30 + 240);
    v137 = *(v30 + 256);
    v136 = v37;
    *(v30 + 240) = 0;
    *(v30 + 248) = 0;
    v38 = *(v30 + 264);
    v139 = *(v30 + 280);
    v138 = v38;
    *(v30 + 256) = 0;
    *(v30 + 264) = 0;
    *(v30 + 272) = 0;
    *(v30 + 280) = 0;
    v39 = *(v30 + 288);
    v141 = *(v30 + 304);
    v140 = v39;
    *(v30 + 288) = 0;
    *(v30 + 296) = 0;
    v40 = *(v30 + 312);
    v143 = *(v30 + 328);
    v142 = v40;
    *(v30 + 304) = 0;
    *(v30 + 312) = 0;
    *(v30 + 320) = 0;
    *(v30 + 328) = 0;
    sub_100FFD8F0(v31, v30);
    v41 = a1;
    if (v30 == a1)
    {
      goto LABEL_123;
    }

    v42 = v29;
    while (2)
    {
      sub_100032BFC(v118, &v130);
      sub_100032BFC(v106, a1 + v42 - 168);
      v43 = v118[0];
      v44 = v106[0];
      if (v117 < 0)
      {
        operator delete(v116);
      }

      if (v115 < 0)
      {
        operator delete(v114);
      }

      if (v113 < 0)
      {
        operator delete(v112);
      }

      if (v111 < 0)
      {
        operator delete(v110);
      }

      v168[0] = v109;
      sub_100034D1C(v168);
      if (v107)
      {
        v108 = v107;
        operator delete(v107);
      }

      if (v129 < 0)
      {
        operator delete(v128);
      }

      if (v127 < 0)
      {
        operator delete(v126);
      }

      if (v125 < 0)
      {
        operator delete(v124);
      }

      if (v123 < 0)
      {
        operator delete(v122);
      }

      v168[0] = v121;
      sub_100034D1C(v168);
      if (v119)
      {
        v120 = v119;
        operator delete(v119);
        if (v43 >= v44)
        {
          v41 = a1 + v42;
          goto LABEL_123;
        }

LABEL_120:
        v30 -= 168;
        sub_100FFD8F0(a1 + v42, a1 + v42 - 168);
        v42 -= 168;
        if (!v42)
        {
          v41 = a1;
          goto LABEL_123;
        }

        continue;
      }

      break;
    }

    if (v43 < v44)
    {
      goto LABEL_120;
    }

    v41 = v30;
LABEL_123:
    sub_100FFD8F0(v41, &v130);
    if (SHIBYTE(v143) < 0)
    {
      operator delete(v142);
    }

    if (SHIBYTE(v141) < 0)
    {
      operator delete(v140);
    }

    if (SHIBYTE(v139) < 0)
    {
      operator delete(v138);
    }

    if (SHIBYTE(v137) < 0)
    {
      operator delete(v136);
    }

    v168[0] = &v133;
    sub_100034D1C(v168);
    if (v131[0])
    {
      v131[1] = v131[0];
      operator delete(v131[0]);
    }

LABEL_133:
    v28 = v31 + 168;
    v29 += 168;
    v30 = v31;
    if ((v31 + 168) != a2)
    {
      continue;
    }

    break;
  }
}

void sub_1011B7644(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100032BFC(v126, a2);
  sub_100032BFC(v114, a1);
  v6 = v126[0];
  v7 = v114[0];
  if (v125 < 0)
  {
    operator delete(__p);
  }

  if (v123 < 0)
  {
    operator delete(v122);
  }

  if (v121 < 0)
  {
    operator delete(v120);
  }

  if (v119 < 0)
  {
    operator delete(v118);
  }

  v137 = &v117;
  sub_100034D1C(&v137);
  if (v115)
  {
    v116 = v115;
    operator delete(v115);
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
    operator delete(v129[4]);
  }

  v137 = v129;
  sub_100034D1C(&v137);
  if (v127)
  {
    v128 = v127;
    operator delete(v127);
  }

  if (v6 >= v7)
  {
    sub_100032BFC(v102, a3);
    sub_100032BFC(v90, a2);
    v14 = v102[0];
    v15 = v90[0];
    if (v101 < 0)
    {
      operator delete(v100);
    }

    if (v99 < 0)
    {
      operator delete(v98);
    }

    if (v97 < 0)
    {
      operator delete(v96);
    }

    if (v95 < 0)
    {
      operator delete(v94);
    }

    v137 = &v93;
    sub_100034D1C(&v137);
    if (v91)
    {
      v92 = v91;
      operator delete(v91);
    }

    if (v113 < 0)
    {
      operator delete(v112);
    }

    if (v111 < 0)
    {
      operator delete(v110);
    }

    if (v109 < 0)
    {
      operator delete(v108);
    }

    if (v107 < 0)
    {
      operator delete(v106);
    }

    v137 = &v105;
    sub_100034D1C(&v137);
    if (v103)
    {
      v104 = v103;
      operator delete(v103);
    }

    if (v14 < v15)
    {
      sub_1011BA0AC(a2, a3);
      sub_100032BFC(v78, a2);
      sub_100032BFC(v66, a1);
      v16 = v78[0];
      v17 = v66[0];
      if (v77 < 0)
      {
        operator delete(v76);
      }

      if (v75 < 0)
      {
        operator delete(v74);
      }

      if (v73 < 0)
      {
        operator delete(v72);
      }

      if (v71 < 0)
      {
        operator delete(v70);
      }

      v137 = &v69;
      sub_100034D1C(&v137);
      if (v67)
      {
        v68 = v67;
        operator delete(v67);
      }

      if (v89 < 0)
      {
        operator delete(v88);
      }

      if (v87 < 0)
      {
        operator delete(v86);
      }

      if (v85 < 0)
      {
        operator delete(v84);
      }

      if (v83 < 0)
      {
        operator delete(v82);
      }

      v137 = &v81;
      sub_100034D1C(&v137);
      if (v79)
      {
        v80 = v79;
        operator delete(v79);
      }

      if (v16 < v17)
      {
        v10 = a1;
        v13 = a2;
        goto LABEL_109;
      }
    }
  }

  else
  {
    sub_100032BFC(v54, a3);
    sub_100032BFC(v42, a2);
    v8 = v54[0];
    v9 = v42[0];
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

    v137 = &v45;
    sub_100034D1C(&v137);
    if (v43)
    {
      v44 = v43;
      operator delete(v43);
    }

    if (v65 < 0)
    {
      operator delete(v64);
    }

    if (v63 < 0)
    {
      operator delete(v62);
    }

    if (v61 < 0)
    {
      operator delete(v60);
    }

    if (v59 < 0)
    {
      operator delete(v58);
    }

    v137 = &v57;
    sub_100034D1C(&v137);
    if (v55)
    {
      v56 = v55;
      operator delete(v55);
    }

    v10 = a1;
    if (v8 < v9)
    {
      goto LABEL_65;
    }

    sub_1011BA0AC(a1, a2);
    sub_100032BFC(v30, a3);
    sub_100032BFC(v18, a2);
    v11 = v30[0];
    v12 = v18[0];
    if (v29 < 0)
    {
      operator delete(v28);
    }

    if (v27 < 0)
    {
      operator delete(v26);
    }

    if (v25 < 0)
    {
      operator delete(v24);
    }

    if (v23 < 0)
    {
      operator delete(v22);
    }

    v137 = &v21;
    sub_100034D1C(&v137);
    if (v19)
    {
      v20 = v19;
      operator delete(v19);
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
      operator delete(v36);
    }

    if (v35 < 0)
    {
      operator delete(v34);
    }

    v137 = &v33;
    sub_100034D1C(&v137);
    if (v31)
    {
      v32 = v31;
      operator delete(v31);
    }

    if (v11 < v12)
    {
      v10 = a2;
LABEL_65:
      v13 = a3;
LABEL_109:
      sub_1011BA0AC(v10, v13);
    }
  }
}

void sub_1011B7BA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1011B7644(a1, a2, a3);
  sub_100032BFC(v74, a4);
  sub_100032BFC(v62, a3);
  v8 = v74[0];
  v9 = v62[0];
  if (v73 < 0)
  {
    operator delete(__p);
  }

  if (v71 < 0)
  {
    operator delete(v70);
  }

  if (v69 < 0)
  {
    operator delete(v68);
  }

  if (v67 < 0)
  {
    operator delete(v66);
  }

  v85 = &v65;
  sub_100034D1C(&v85);
  if (v63)
  {
    v64 = v63;
    operator delete(v63);
  }

  if (v84 < 0)
  {
    operator delete(v83);
  }

  if (v82 < 0)
  {
    operator delete(v81);
  }

  if (v80 < 0)
  {
    operator delete(v79);
  }

  if (v78 < 0)
  {
    operator delete(v77[4]);
  }

  v85 = v77;
  sub_100034D1C(&v85);
  if (v75)
  {
    v76 = v75;
    operator delete(v75);
  }

  if (v8 < v9)
  {
    sub_1011BA0AC(a3, a4);
    sub_100032BFC(v50, a3);
    sub_100032BFC(v38, a2);
    v10 = v50[0];
    v11 = v38[0];
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

    if (v43 < 0)
    {
      operator delete(v42);
    }

    v85 = &v41;
    sub_100034D1C(&v85);
    if (v39)
    {
      v40 = v39;
      operator delete(v39);
    }

    if (v61 < 0)
    {
      operator delete(v60);
    }

    if (v59 < 0)
    {
      operator delete(v58);
    }

    if (v57 < 0)
    {
      operator delete(v56);
    }

    if (v55 < 0)
    {
      operator delete(v54);
    }

    v85 = &v53;
    sub_100034D1C(&v85);
    if (v51)
    {
      v52 = v51;
      operator delete(v51);
    }

    if (v10 < v11)
    {
      sub_1011BA0AC(a2, a3);
      sub_100032BFC(v26, a2);
      sub_100032BFC(v14, a1);
      v12 = v26[0];
      v13 = v14[0];
      if (v25 < 0)
      {
        operator delete(v24);
      }

      if (v23 < 0)
      {
        operator delete(v22);
      }

      if (v21 < 0)
      {
        operator delete(v20);
      }

      if (v19 < 0)
      {
        operator delete(v18);
      }

      v85 = &v17;
      sub_100034D1C(&v85);
      if (v15)
      {
        v16 = v15;
        operator delete(v15);
      }

      if (v37 < 0)
      {
        operator delete(v36);
      }

      if (v35 < 0)
      {
        operator delete(v34);
      }

      if (v33 < 0)
      {
        operator delete(v32);
      }

      if (v31 < 0)
      {
        operator delete(v30);
      }

      v85 = &v29;
      sub_100034D1C(&v85);
      if (v27)
      {
        v28 = v27;
        operator delete(v27);
      }

      if (v12 < v13)
      {
        sub_1011BA0AC(a1, a2);
      }
    }
  }
}

void sub_1011B7F14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1011B7BA4(a1, a2, a3, a4);
  sub_100032BFC(v102, a5);
  sub_100032BFC(v90, a4);
  v10 = v102[0];
  v11 = v90[0];
  if (v101 < 0)
  {
    operator delete(__p);
  }

  if (v99 < 0)
  {
    operator delete(v98);
  }

  if (v97 < 0)
  {
    operator delete(v96);
  }

  if (v95 < 0)
  {
    operator delete(v94);
  }

  v113 = &v93;
  sub_100034D1C(&v113);
  if (v91)
  {
    v92 = v91;
    operator delete(v91);
  }

  if (v112 < 0)
  {
    operator delete(v111);
  }

  if (v110 < 0)
  {
    operator delete(v109);
  }

  if (v108 < 0)
  {
    operator delete(v107);
  }

  if (v106 < 0)
  {
    operator delete(v105[4]);
  }

  v113 = v105;
  sub_100034D1C(&v113);
  if (v103)
  {
    v104 = v103;
    operator delete(v103);
  }

  if (v10 < v11)
  {
    sub_1011BA0AC(a4, a5);
    sub_100032BFC(v78, a4);
    sub_100032BFC(v66, a3);
    v12 = v78[0];
    v13 = v66[0];
    if (v77 < 0)
    {
      operator delete(v76);
    }

    if (v75 < 0)
    {
      operator delete(v74);
    }

    if (v73 < 0)
    {
      operator delete(v72);
    }

    if (v71 < 0)
    {
      operator delete(v70);
    }

    v113 = &v69;
    sub_100034D1C(&v113);
    if (v67)
    {
      v68 = v67;
      operator delete(v67);
    }

    if (v89 < 0)
    {
      operator delete(v88);
    }

    if (v87 < 0)
    {
      operator delete(v86);
    }

    if (v85 < 0)
    {
      operator delete(v84);
    }

    if (v83 < 0)
    {
      operator delete(v82);
    }

    v113 = &v81;
    sub_100034D1C(&v113);
    if (v79)
    {
      v80 = v79;
      operator delete(v79);
    }

    if (v12 < v13)
    {
      sub_1011BA0AC(a3, a4);
      sub_100032BFC(v54, a3);
      sub_100032BFC(v42, a2);
      v14 = v54[0];
      v15 = v42[0];
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

      v113 = &v45;
      sub_100034D1C(&v113);
      if (v43)
      {
        v44 = v43;
        operator delete(v43);
      }

      if (v65 < 0)
      {
        operator delete(v64);
      }

      if (v63 < 0)
      {
        operator delete(v62);
      }

      if (v61 < 0)
      {
        operator delete(v60);
      }

      if (v59 < 0)
      {
        operator delete(v58);
      }

      v113 = &v57;
      sub_100034D1C(&v113);
      if (v55)
      {
        v56 = v55;
        operator delete(v55);
      }

      if (v14 < v15)
      {
        sub_1011BA0AC(a2, a3);
        sub_100032BFC(v30, a2);
        sub_100032BFC(v18, a1);
        v16 = v30[0];
        v17 = v18[0];
        if (v29 < 0)
        {
          operator delete(v28);
        }

        if (v27 < 0)
        {
          operator delete(v26);
        }

        if (v25 < 0)
        {
          operator delete(v24);
        }

        if (v23 < 0)
        {
          operator delete(v22);
        }

        v113 = &v21;
        sub_100034D1C(&v113);
        if (v19)
        {
          v20 = v19;
          operator delete(v19);
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
          operator delete(v36);
        }

        if (v35 < 0)
        {
          operator delete(v34);
        }

        v113 = &v33;
        sub_100034D1C(&v113);
        if (v31)
        {
          v32 = v31;
          operator delete(v31);
        }

        if (v16 < v17)
        {
          sub_1011BA0AC(a1, a2);
        }
      }
    }
  }
}

void sub_1011B8390(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v46 = a2;
    v5 = a2 - a1;
    v6 = 0xCF3CF3CF3CF3CF3DLL * ((a2 - a1) >> 3);
    if (a2 - a1 >= 169)
    {
      v7 = (v6 - 2) >> 1;
      v8 = v7 + 1;
      v9 = a1 + 168 * v7;
      do
      {
        sub_1011BA1DC(a1, v6, v9);
        v9 -= 168;
        --v8;
      }

      while (v8);
    }

    if (v46 != a3)
    {
      v10 = v46;
      do
      {
        sub_100032BFC(v59, v10);
        sub_100032BFC(v47, a1);
        v11 = v59[0];
        v12 = v47[0];
        if (v58 < 0)
        {
          operator delete(__p);
        }

        if (v56 < 0)
        {
          operator delete(v55);
        }

        if (v54 < 0)
        {
          operator delete(v53);
        }

        if (v52 < 0)
        {
          operator delete(v51);
        }

        v135[0] = &v50;
        sub_100034D1C(v135);
        if (v48)
        {
          v49 = v48;
          operator delete(v48);
        }

        if (v70 < 0)
        {
          operator delete(v69);
        }

        if (v68 < 0)
        {
          operator delete(v67);
        }

        if (v66 < 0)
        {
          operator delete(v65);
        }

        if (v64 < 0)
        {
          operator delete(v63);
        }

        v135[0] = &v62;
        sub_100034D1C(v135);
        if (v60)
        {
          v61 = v60;
          operator delete(v60);
        }

        if (v11 < v12)
        {
          sub_1011BA0AC(v10, a1);
          sub_1011BA1DC(a1, v6, a1);
        }

        v10 += 168;
      }

      while (v10 != a3);
    }

    if (v5 >= 169)
    {
      v13 = 0xCF3CF3CF3CF3CF3DLL * (v5 >> 3);
      do
      {
        v14 = 0;
        v15 = *(a1 + 16);
        v71 = *a1;
        *v72 = v15;
        v73 = *(a1 + 32);
        *(a1 + 16) = 0;
        *(a1 + 24) = 0;
        v74 = *(a1 + 40);
        v75 = *(a1 + 56);
        v76 = 0;
        *(a1 + 32) = 0;
        *(a1 + 40) = 0;
        *(a1 + 48) = 0;
        *(a1 + 56) = 0;
        v16 = *(a1 + 64);
        WORD2(v76) = *(a1 + 68);
        LODWORD(v76) = v16;
        v17 = *(a1 + 72);
        v78 = *(a1 + 88);
        v77 = v17;
        *(a1 + 72) = 0;
        *(a1 + 80) = 0;
        v18 = *(a1 + 96);
        v80 = *(a1 + 112);
        v79 = v18;
        *(a1 + 88) = 0;
        *(a1 + 96) = 0;
        *(a1 + 104) = 0;
        *(a1 + 112) = 0;
        v19 = *(a1 + 120);
        v82 = *(a1 + 136);
        v81 = v19;
        *(a1 + 120) = 0;
        *(a1 + 128) = 0;
        v20 = *(a1 + 144);
        v84 = *(a1 + 160);
        v83 = v20;
        *(a1 + 136) = 0;
        *(a1 + 144) = 0;
        v21 = a1;
        *(a1 + 152) = 0;
        *(a1 + 160) = 0;
        do
        {
          v22 = v21;
          v23 = v21 + 168 * v14;
          v21 = v23 + 168;
          v24 = 2 * v14;
          v14 = (2 * v14) | 1;
          v25 = v24 + 2;
          if (v24 + 2 < v13)
          {
            sub_100032BFC(v135, v23 + 168);
            v26 = v23 + 336;
            sub_100032BFC(v123, v26);
            v27 = v135[0];
            v28 = v123[0];
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

            *&v109 = v126;
            sub_100034D1C(&v109);
            if (v124)
            {
              v125 = v124;
              operator delete(v124);
            }

            if (v146 < 0)
            {
              operator delete(v145);
            }

            if (v144 < 0)
            {
              operator delete(v143);
            }

            if (v142 < 0)
            {
              operator delete(v141);
            }

            if (v140 < 0)
            {
              operator delete(v139);
            }

            *&v109 = v138;
            sub_100034D1C(&v109);
            if (v136)
            {
              v137 = v136;
              operator delete(v136);
            }

            if (v27 < v28)
            {
              v21 = v26;
              v14 = v25;
            }
          }

          sub_100FFD8F0(v22, v21);
        }

        while (v14 <= ((v13 - 2) >> 1));
        v29 = v46 - 168;
        v30 = v21 == v46 - 168;
        v46 -= 168;
        if (v30)
        {
          sub_100FFD8F0(v21, &v71);
        }

        else
        {
          sub_100FFD8F0(v21, v29);
          sub_100FFD8F0(v29, &v71);
          v31 = v21 - a1 + 168;
          if (v31 >= 169)
          {
            v32 = (-2 - 0x30C30C30C30C30C3 * (v31 >> 3)) >> 1;
            v33 = a1 + 168 * v32;
            sub_100032BFC(v135, v33);
            sub_100032BFC(v123, v21);
            v34 = v135[0];
            v35 = v123[0];
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

            *&v109 = v126;
            sub_100034D1C(&v109);
            if (v124)
            {
              v125 = v124;
              operator delete(v124);
            }

            if (v146 < 0)
            {
              operator delete(v145);
            }

            if (v144 < 0)
            {
              operator delete(v143);
            }

            if (v142 < 0)
            {
              operator delete(v141);
            }

            if (v140 < 0)
            {
              operator delete(v139);
            }

            *&v109 = v138;
            sub_100034D1C(&v109);
            if (v136)
            {
              v137 = v136;
              operator delete(v136);
            }

            if (v34 < v35)
            {
              v114 = 0;
              v36 = *(v21 + 16);
              v109 = *v21;
              *v110 = v36;
              v111 = *(v21 + 32);
              *(v21 + 24) = 0;
              *(v21 + 32) = 0;
              *(v21 + 16) = 0;
              v112 = *(v21 + 40);
              v113 = *(v21 + 56);
              *(v21 + 48) = 0;
              *(v21 + 56) = 0;
              *(v21 + 40) = 0;
              v37 = *(v21 + 68);
              LODWORD(v114) = *(v21 + 64);
              WORD2(v114) = v37;
              v38 = *(v21 + 72);
              v116 = *(v21 + 88);
              v115 = v38;
              *(v21 + 72) = 0;
              *(v21 + 80) = 0;
              *(v21 + 88) = 0;
              v39 = *(v21 + 96);
              v118 = *(v21 + 112);
              v117 = v39;
              *(v21 + 96) = 0;
              *(v21 + 104) = 0;
              *(v21 + 112) = 0;
              v40 = *(v21 + 120);
              v120 = *(v21 + 136);
              v119 = v40;
              *(v21 + 120) = 0;
              *(v21 + 128) = 0;
              *(v21 + 136) = 0;
              v41 = *(v21 + 144);
              v122 = *(v21 + 160);
              v121 = v41;
              *(v21 + 144) = 0;
              *(v21 + 152) = 0;
              *(v21 + 160) = 0;
              do
              {
                v42 = v33;
                sub_100FFD8F0(v21, v33);
                if (!v32)
                {
                  break;
                }

                v32 = (v32 - 1) >> 1;
                v33 = a1 + 168 * v32;
                sub_100032BFC(v97, v33);
                sub_100032BFC(v85, &v109);
                v43 = v97[0];
                v44 = v85[0];
                if (v96 < 0)
                {
                  operator delete(v95);
                }

                if (v94 < 0)
                {
                  operator delete(v93);
                }

                if (v92 < 0)
                {
                  operator delete(v91);
                }

                if (v90 < 0)
                {
                  operator delete(v89);
                }

                v147[0] = &v88;
                sub_100034D1C(v147);
                if (v86)
                {
                  v87 = v86;
                  operator delete(v86);
                }

                if (v108 < 0)
                {
                  operator delete(v107);
                }

                if (v106 < 0)
                {
                  operator delete(v105);
                }

                if (v104 < 0)
                {
                  operator delete(v103);
                }

                if (v102 < 0)
                {
                  operator delete(v101);
                }

                v147[0] = &v100;
                sub_100034D1C(v147);
                if (v98)
                {
                  v99 = v98;
                  operator delete(v98);
                }

                v21 = v42;
              }

              while (v43 < v44);
              sub_100FFD8F0(v42, &v109);
              if (SHIBYTE(v122) < 0)
              {
                operator delete(v121);
              }

              if (SHIBYTE(v120) < 0)
              {
                operator delete(v119);
              }

              if (SHIBYTE(v118) < 0)
              {
                operator delete(v117);
              }

              if (SHIBYTE(v116) < 0)
              {
                operator delete(v115);
              }

              v147[0] = &v112;
              sub_100034D1C(v147);
              if (v110[0])
              {
                v110[1] = v110[0];
                operator delete(v110[0]);
              }
            }
          }
        }

        if (SHIBYTE(v84) < 0)
        {
          operator delete(v83);
        }

        if (SHIBYTE(v82) < 0)
        {
          operator delete(v81);
        }

        if (SHIBYTE(v80) < 0)
        {
          operator delete(v79);
        }

        if (SHIBYTE(v78) < 0)
        {
          operator delete(v77);
        }

        v135[0] = &v74;
        sub_100034D1C(v135);
        if (v72[0])
        {
          v72[1] = v72[0];
          operator delete(v72[0]);
        }
      }

      while (v13-- > 2);
    }
  }
}

void sub_1011B8B90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59)
{
  sub_100D1F238(&STACK[0x4E8]);
  sub_100D1F238(&a59);
  _Unwind_Resume(a1);
}

unint64_t sub_1011B8BE4(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 16);
  v171 = *a1;
  *v172 = v4;
  v5 = *(a1 + 32);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  v174 = *(a1 + 40);
  v6 = *(a1 + 56);
  v173 = v5;
  v175 = v6;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  LOWORD(v5) = *(a1 + 68);
  v7 = *(a1 + 88);
  v176 = 0;
  WORD2(v176) = v5;
  LODWORD(v176) = *(a1 + 64);
  v8 = *(a1 + 72);
  v178 = v7;
  v177 = v8;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  v9 = *(a1 + 112);
  *v179 = *(a1 + 96);
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  v10 = *(a1 + 120);
  v11 = *(a1 + 136);
  v180 = v9;
  v182 = v11;
  v181 = v10;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  v12 = *(a1 + 144);
  v184 = *(a1 + 160);
  *v183 = v12;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  sub_100032BFC(v159, &v171);
  sub_100032BFC(v147, a2 - 168);
  v13 = v159[0];
  v14 = v147[0];
  if (v158 < 0)
  {
    operator delete(__p);
  }

  if (v156 < 0)
  {
    operator delete(v155);
  }

  if (v154 < 0)
  {
    operator delete(v153);
  }

  if (v152 < 0)
  {
    operator delete(v151);
  }

  v185[0] = &v150;
  sub_100034D1C(v185);
  if (v148)
  {
    v149 = v148;
    operator delete(v148);
  }

  if (v170 < 0)
  {
    operator delete(v169);
  }

  if (v168 < 0)
  {
    operator delete(v167);
  }

  if (v166 < 0)
  {
    operator delete(v165);
  }

  if (v164 < 0)
  {
    operator delete(v163);
  }

  v185[0] = &v162;
  sub_100034D1C(v185);
  if (v160)
  {
    v161 = v160;
    operator delete(v160);
  }

  if (v13 >= v14)
  {
    for (i = a1 + 168; i < a2; i += 168)
    {
      sub_100032BFC(v111, &v171);
      sub_100032BFC(v99, i);
      v18 = v111[0];
      v19 = v99[0];
      if (v110 < 0)
      {
        operator delete(v109);
      }

      if (v108 < 0)
      {
        operator delete(v107);
      }

      if (v106 < 0)
      {
        operator delete(v105);
      }

      if (v104 < 0)
      {
        operator delete(v103);
      }

      v185[0] = &v102;
      sub_100034D1C(v185);
      if (v100)
      {
        v101 = v100;
        operator delete(v100);
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

      v185[0] = &v114;
      sub_100034D1C(v185);
      if (v112)
      {
        v113 = v112;
        operator delete(v112);
      }

      if (v18 < v19)
      {
        break;
      }
    }
  }

  else
  {
    i = a1;
    do
    {
      sub_100032BFC(v135, &v171);
      i += 168;
      sub_100032BFC(v123, i);
      v16 = v135[0];
      v17 = v123[0];
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

      v185[0] = &v126;
      sub_100034D1C(v185);
      if (v124)
      {
        v125 = v124;
        operator delete(v124);
      }

      if (v146 < 0)
      {
        operator delete(v145);
      }

      if (v144 < 0)
      {
        operator delete(v143);
      }

      if (v142 < 0)
      {
        operator delete(v141);
      }

      if (v140 < 0)
      {
        operator delete(v139);
      }

      v185[0] = &v138;
      sub_100034D1C(v185);
      if (v136)
      {
        v137 = v136;
        operator delete(v136);
      }
    }

    while (v16 >= v17);
  }

  if (i < a2)
  {
    do
    {
      sub_100032BFC(v87, &v171);
      a2 -= 168;
      sub_100032BFC(v75, a2);
      v20 = v87[0];
      v21 = v75[0];
      if (v86 < 0)
      {
        operator delete(v85);
      }

      if (v84 < 0)
      {
        operator delete(v83);
      }

      if (v82 < 0)
      {
        operator delete(v81);
      }

      if (v80 < 0)
      {
        operator delete(v79);
      }

      v185[0] = &v78;
      sub_100034D1C(v185);
      if (v76)
      {
        v77 = v76;
        operator delete(v76);
      }

      if (v98 < 0)
      {
        operator delete(v97);
      }

      if (v96 < 0)
      {
        operator delete(v95);
      }

      if (v94 < 0)
      {
        operator delete(v93);
      }

      if (v92 < 0)
      {
        operator delete(v91);
      }

      v185[0] = &v90;
      sub_100034D1C(v185);
      if (v88)
      {
        v89 = v88;
        operator delete(v88);
      }
    }

    while (v20 < v21);
  }

  while (i < a2)
  {
    sub_1011BA0AC(i, a2);
    do
    {
      sub_100032BFC(v63, &v171);
      i += 168;
      sub_100032BFC(v51, i);
      v22 = v63[0];
      v23 = v51[0];
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

      v185[0] = &v54;
      sub_100034D1C(v185);
      if (v52)
      {
        v53 = v52;
        operator delete(v52);
      }

      if (v74 < 0)
      {
        operator delete(v73);
      }

      if (v72 < 0)
      {
        operator delete(v71);
      }

      if (v70 < 0)
      {
        operator delete(v69);
      }

      if (v68 < 0)
      {
        operator delete(v67);
      }

      v185[0] = &v66;
      sub_100034D1C(v185);
      if (v64)
      {
        v65 = v64;
        operator delete(v64);
      }
    }

    while (v22 >= v23);
    do
    {
      sub_100032BFC(v39, &v171);
      a2 -= 168;
      sub_100032BFC(v27, a2);
      v24 = v39[0];
      v25 = v27[0];
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
        operator delete(v31);
      }

      v185[0] = &v30;
      sub_100034D1C(v185);
      if (v28)
      {
        v29 = v28;
        operator delete(v28);
      }

      if (v50 < 0)
      {
        operator delete(v49);
      }

      if (v48 < 0)
      {
        operator delete(v47);
      }

      if (v46 < 0)
      {
        operator delete(v45);
      }

      if (v44 < 0)
      {
        operator delete(v43);
      }

      v185[0] = &v42;
      sub_100034D1C(v185);
      if (v40)
      {
        v41 = v40;
        operator delete(v40);
      }
    }

    while (v24 < v25);
  }

  if (i - 168 != a1)
  {
    sub_100FFD8F0(a1, i - 168);
  }

  sub_100FFD8F0(i - 168, &v171);
  if (SHIBYTE(v184) < 0)
  {
    operator delete(v183[0]);
  }

  if (SHIBYTE(v182) < 0)
  {
    operator delete(v181);
  }

  if (SHIBYTE(v180) < 0)
  {
    operator delete(v179[0]);
  }

  if (SHIBYTE(v178) < 0)
  {
    operator delete(v177);
  }

  v185[0] = &v174;
  sub_100034D1C(v185);
  if (v172[0])
  {
    v172[1] = v172[0];
    operator delete(v172[0]);
  }

  return i;
}

void sub_1011B934C(_Unwind_Exception *a1)
{
  sub_100D1F238(&STACK[0x738]);
  sub_100D1F238(&STACK[0x7E0]);
  _Unwind_Resume(a1);
}

uint64_t sub_1011B93C0(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  v5 = *(a1 + 16);
  v149 = *a1;
  *v150 = v5;
  v6 = *(a1 + 32);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  v152 = *(a1 + 40);
  v7 = *(a1 + 56);
  v151 = v6;
  v153 = v7;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  LOWORD(v6) = *(a1 + 68);
  v8 = *(a1 + 88);
  v154 = 0;
  WORD2(v154) = v6;
  LODWORD(v154) = *(a1 + 64);
  v9 = *(a1 + 72);
  v156 = v8;
  v155 = v9;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  v10 = *(a1 + 112);
  *v157 = *(a1 + 96);
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  v11 = *(a1 + 120);
  v12 = *(a1 + 136);
  v158 = v10;
  v160 = v12;
  v159 = v11;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  v13 = *(a1 + 144);
  v162 = *(a1 + 160);
  *v161 = v13;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  do
  {
    sub_100032BFC(v137, a1 + v4 + 168);
    sub_100032BFC(v125, &v149);
    v14 = v137[0];
    v15 = v125[0];
    if (v136 < 0)
    {
      operator delete(__p);
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

    v163[0] = &v128;
    sub_100034D1C(v163);
    if (v126)
    {
      v127 = v126;
      operator delete(v126);
    }

    if (v148 < 0)
    {
      operator delete(v147);
    }

    if (v146 < 0)
    {
      operator delete(v145);
    }

    if (v144 < 0)
    {
      operator delete(v143);
    }

    if (v142 < 0)
    {
      operator delete(v141);
    }

    v163[0] = &v140;
    sub_100034D1C(v163);
    if (v138)
    {
      v139 = v138;
      operator delete(v138);
    }

    v4 += 168;
  }

  while (v14 < v15);
  v16 = a1 + v4;
  if (v4 == 168)
  {
    if (v16 < a2)
    {
      do
      {
        a2 -= 168;
        sub_100032BFC(v113, a2);
        sub_100032BFC(v101, &v149);
        v19 = v113[0];
        v20 = v101[0];
        if (v112 < 0)
        {
          operator delete(v111);
        }

        if (v110 < 0)
        {
          operator delete(v109);
        }

        if (v108 < 0)
        {
          operator delete(v107);
        }

        if (v106 < 0)
        {
          operator delete(v105);
        }

        v163[0] = &v104;
        sub_100034D1C(v163);
        if (v102)
        {
          v103 = v102;
          operator delete(v102);
        }

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

        v163[0] = &v116;
        sub_100034D1C(v163);
        if (v114)
        {
          v115 = v114;
          operator delete(v114);
        }
      }

      while (v16 < a2 && v19 >= v20);
    }
  }

  else
  {
    do
    {
      a2 -= 168;
      sub_100032BFC(v89, a2);
      sub_100032BFC(v77, &v149);
      v17 = v89[0];
      v18 = v77[0];
      if (v88 < 0)
      {
        operator delete(v87);
      }

      if (v86 < 0)
      {
        operator delete(v85);
      }

      if (v84 < 0)
      {
        operator delete(v83);
      }

      if (v82 < 0)
      {
        operator delete(v81);
      }

      v163[0] = &v80;
      sub_100034D1C(v163);
      if (v78)
      {
        v79 = v78;
        operator delete(v78);
      }

      if (v100 < 0)
      {
        operator delete(v99);
      }

      if (v98 < 0)
      {
        operator delete(v97);
      }

      if (v96 < 0)
      {
        operator delete(v95);
      }

      if (v94 < 0)
      {
        operator delete(v93);
      }

      v163[0] = &v92;
      sub_100034D1C(v163);
      if (v90)
      {
        v91 = v90;
        operator delete(v90);
      }
    }

    while (v17 >= v18);
  }

  if (v16 >= a2)
  {
    v27 = v16 - 168;
  }

  else
  {
    v21 = a1 + v4;
    v22 = a2;
    do
    {
      sub_1011BA0AC(v21, v22);
      do
      {
        v21 += 168;
        sub_100032BFC(v65, v21);
        sub_100032BFC(v53, &v149);
        v23 = v65[0];
        v24 = v53[0];
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

        v163[0] = &v56;
        sub_100034D1C(v163);
        if (v54)
        {
          v55 = v54;
          operator delete(v54);
        }

        if (v76 < 0)
        {
          operator delete(v75);
        }

        if (v74 < 0)
        {
          operator delete(v73);
        }

        if (v72 < 0)
        {
          operator delete(v71);
        }

        if (v70 < 0)
        {
          operator delete(v69);
        }

        v163[0] = &v68;
        sub_100034D1C(v163);
        if (v66)
        {
          v67 = v66;
          operator delete(v66);
        }
      }

      while (v23 < v24);
      do
      {
        v22 -= 168;
        sub_100032BFC(v41, v22);
        sub_100032BFC(v29, &v149);
        v25 = v41[0];
        v26 = v29[0];
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

        v163[0] = &v32;
        sub_100034D1C(v163);
        if (v30)
        {
          v31 = v30;
          operator delete(v30);
        }

        if (v52 < 0)
        {
          operator delete(v51);
        }

        if (v50 < 0)
        {
          operator delete(v49);
        }

        if (v48 < 0)
        {
          operator delete(v47);
        }

        if (v46 < 0)
        {
          operator delete(v45);
        }

        v163[0] = &v44;
        sub_100034D1C(v163);
        if (v42)
        {
          v43 = v42;
          operator delete(v42);
        }
      }

      while (v25 >= v26);
    }

    while (v21 < v22);
    v27 = v21 - 168;
  }

  if (v27 != a1)
  {
    sub_100FFD8F0(a1, v27);
  }

  sub_100FFD8F0(v27, &v149);
  if (SHIBYTE(v162) < 0)
  {
    operator delete(v161[0]);
  }

  if (SHIBYTE(v160) < 0)
  {
    operator delete(v159);
  }

  if (SHIBYTE(v158) < 0)
  {
    operator delete(v157[0]);
  }

  if (SHIBYTE(v156) < 0)
  {
    operator delete(v155);
  }

  v163[0] = &v152;
  sub_100034D1C(v163);
  if (v150[0])
  {
    v150[1] = v150[0];
    operator delete(v150[0]);
  }

  return v27;
}

BOOL sub_1011B9AC0(uint64_t a1, uint64_t a2)
{
  v3 = 0xCF3CF3CF3CF3CF3DLL * ((a2 - a1) >> 3);
  if (v3 <= 2)
  {
    if (v3 >= 2)
    {
      if (v3 == 2)
      {
        v4 = a2 - 168;
        sub_100032BFC(v97, a2 - 168);
        sub_100032BFC(v85, a1);
        v5 = v97[0];
        v6 = v85[0];
        if (v96 < 0)
        {
          operator delete(__p);
        }

        if (v94 < 0)
        {
          operator delete(v93);
        }

        if (v92 < 0)
        {
          operator delete(v91);
        }

        if (v90 < 0)
        {
          operator delete(v89);
        }

        *&v47 = &v88;
        sub_100034D1C(&v47);
        if (v86)
        {
          v87 = v86;
          operator delete(v86);
        }

        if (v108 < 0)
        {
          operator delete(v107);
        }

        if (v106 < 0)
        {
          operator delete(v105);
        }

        if (v104 < 0)
        {
          operator delete(v103);
        }

        if (v102 < 0)
        {
          operator delete(v101);
        }

        *&v47 = &v100;
        sub_100034D1C(&v47);
        if (v98)
        {
          v99 = v98;
          operator delete(v98);
        }

        if (v5 < v6)
        {
          sub_1011BA0AC(a1, v4);
        }

        return 1;
      }

      goto LABEL_31;
    }

    return 1;
  }

  switch(v3)
  {
    case 3:
      sub_1011B7644(a1, a1 + 168, a2 - 168);
      return 1;
    case 4:
      sub_1011B7BA4(a1, a1 + 168, a1 + 336, a2 - 168);
      return 1;
    case 5:
      sub_1011B7F14(a1, a1 + 168, a1 + 336, a1 + 504, a2 - 168);
      return 1;
  }

LABEL_31:
  v7 = a1 + 336;
  sub_1011B7644(a1, a1 + 168, a1 + 336);
  v8 = a1 + 504;
  if (a1 + 504 == a2)
  {
    return 1;
  }

  v9 = 0;
  v21 = 0;
  while (1)
  {
    sub_100032BFC(v73, v8);
    sub_100032BFC(v61, v7);
    v10 = v73[0];
    v11 = v61[0];
    if (v72 < 0)
    {
      operator delete(v71);
    }

    if (v70 < 0)
    {
      operator delete(v69);
    }

    if (v68 < 0)
    {
      operator delete(v67);
    }

    if (v66 < 0)
    {
      operator delete(v65);
    }

    *&v47 = &v64;
    sub_100034D1C(&v47);
    if (v62)
    {
      v63 = v62;
      operator delete(v62);
    }

    if (v84 < 0)
    {
      operator delete(v83);
    }

    if (v82 < 0)
    {
      operator delete(v81);
    }

    if (v80 < 0)
    {
      operator delete(v79);
    }

    if (v78 < 0)
    {
      operator delete(v77);
    }

    *&v47 = &v76;
    sub_100034D1C(&v47);
    if (v74)
    {
      v75 = v74;
      operator delete(v74);
    }

    if (v10 < v11)
    {
      v12 = *(v8 + 16);
      v47 = *v8;
      *v48 = v12;
      v49 = *(v8 + 32);
      *(v8 + 16) = 0;
      *(v8 + 24) = 0;
      v50 = *(v8 + 40);
      v51 = *(v8 + 56);
      v52 = 0;
      *(v8 + 32) = 0;
      *(v8 + 40) = 0;
      *(v8 + 48) = 0;
      *(v8 + 56) = 0;
      WORD2(v52) = *(v8 + 68);
      LODWORD(v52) = *(v8 + 64);
      v13 = *(v8 + 72);
      v54 = *(v8 + 88);
      v53 = v13;
      *(v8 + 72) = 0;
      *(v8 + 80) = 0;
      v14 = *(v8 + 96);
      v56 = *(v8 + 112);
      v55 = v14;
      *(v8 + 88) = 0;
      *(v8 + 96) = 0;
      *(v8 + 104) = 0;
      *(v8 + 112) = 0;
      v15 = *(v8 + 120);
      v58 = *(v8 + 136);
      v57 = v15;
      *(v8 + 120) = 0;
      *(v8 + 128) = 0;
      v16 = *(v8 + 144);
      v60 = *(v8 + 160);
      v59 = v16;
      *(v8 + 136) = 0;
      *(v8 + 144) = 0;
      *(v8 + 152) = 0;
      *(v8 + 160) = 0;
      sub_100FFD8F0(v8, v7);
      v17 = v9;
      do
      {
        sub_100032BFC(v35, &v47);
        sub_100032BFC(v23, a1 + v17 + 168);
        v18 = v35[0];
        v19 = v23[0];
        if (v34 < 0)
        {
          operator delete(v33);
        }

        if (v32 < 0)
        {
          operator delete(v31);
        }

        if (v30 < 0)
        {
          operator delete(v29);
        }

        if (v28 < 0)
        {
          operator delete(v27);
        }

        v109[0] = &v26;
        sub_100034D1C(v109);
        if (v24)
        {
          v25 = v24;
          operator delete(v24);
        }

        if (v46 < 0)
        {
          operator delete(v45);
        }

        if (v44 < 0)
        {
          operator delete(v43);
        }

        if (v42 < 0)
        {
          operator delete(v41);
        }

        if (v40 < 0)
        {
          operator delete(v39);
        }

        v109[0] = &v38;
        sub_100034D1C(v109);
        if (v36)
        {
          v37 = v36;
          operator delete(v36);
          if (v18 >= v19)
          {
            v7 = a1 + v17 + 336;
            goto LABEL_79;
          }
        }

        else if (v18 >= v19)
        {
          goto LABEL_79;
        }

        v7 -= 168;
        sub_100FFD8F0(a1 + v17 + 336, a1 + v17 + 168);
        v17 -= 168;
      }

      while (v17 != -336);
      v7 = a1;
LABEL_79:
      sub_100FFD8F0(v7, &v47);
      if (SHIBYTE(v60) < 0)
      {
        operator delete(v59);
      }

      if (SHIBYTE(v58) < 0)
      {
        operator delete(v57);
      }

      if (SHIBYTE(v56) < 0)
      {
        operator delete(v55);
      }

      if (SHIBYTE(v54) < 0)
      {
        operator delete(v53);
      }

      v109[0] = &v50;
      sub_100034D1C(v109);
      if (v48[0])
      {
        v48[1] = v48[0];
        operator delete(v48[0]);
      }

      if (++v21 == 8)
      {
        return v8 + 168 == a2;
      }
    }

    v7 = v8;
    v9 += 168;
    v8 += 168;
    if (v8 == a2)
    {
      return 1;
    }
  }
}

void sub_1011BA0AC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v8 = *a1;
  *v9 = v3;
  v10 = *(a1 + 32);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  v11 = *(a1 + 40);
  v12 = *(a1 + 56);
  v13 = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  WORD2(v13) = *(a1 + 68);
  LODWORD(v13) = *(a1 + 64);
  v4 = *(a1 + 72);
  v15 = *(a1 + 88);
  *v14 = v4;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  v5 = *(a1 + 96);
  v17 = *(a1 + 112);
  *v16 = v5;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  v6 = *(a1 + 120);
  v19 = *(a1 + 136);
  *v18 = v6;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  v7 = *(a1 + 144);
  v21 = *(a1 + 160);
  *__p = v7;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  sub_100FFD8F0(a1, a2);
  sub_100FFD8F0(a2, &v8);
  if (SHIBYTE(v21) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v19) < 0)
  {
    operator delete(v18[0]);
  }

  if (SHIBYTE(v17) < 0)
  {
    operator delete(v16[0]);
  }

  if (SHIBYTE(v15) < 0)
  {
    operator delete(v14[0]);
  }

  v22 = &v11;
  sub_100034D1C(&v22);
  if (v9[0])
  {
    v9[1] = v9[0];
    operator delete(v9[0]);
  }
}

void sub_1011BA1DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a2 - 2;
  if (a2 >= 2)
  {
    v4 = a3;
    v6 = v3 >> 1;
    if ((v3 >> 1) >= (0xCF3CF3CF3CF3CF3DLL * ((a3 - a1) >> 3)))
    {
      v8 = (0x9E79E79E79E79E7ALL * ((a3 - a1) >> 3)) | 1;
      v9 = a1 + 168 * v8;
      v10 = 0x9E79E79E79E79E7ALL * ((a3 - a1) >> 3) + 2;
      v32 = v3 >> 1;
      if (v10 < a2)
      {
        sub_100032BFC(v131, a1 + 168 * v8);
        sub_100032BFC(v119, v9 + 168);
        v11 = v131[0];
        v12 = v119[0];
        if (v130 < 0)
        {
          operator delete(__p);
        }

        if (v128 < 0)
        {
          operator delete(v127);
        }

        if (v126 < 0)
        {
          operator delete(v125);
        }

        if (v124 < 0)
        {
          operator delete(v123);
        }

        *&v81 = &v122;
        sub_100034D1C(&v81);
        if (v120)
        {
          v121 = v120;
          operator delete(v120);
        }

        if (v142 < 0)
        {
          operator delete(v141);
        }

        if (v140 < 0)
        {
          operator delete(v139);
        }

        if (v138 < 0)
        {
          operator delete(v137);
        }

        if (v136 < 0)
        {
          operator delete(v135);
        }

        *&v81 = &v134;
        sub_100034D1C(&v81);
        if (v132)
        {
          v133 = v132;
          operator delete(v132);
        }

        v13 = v11 < v12;
        v6 = v32;
        if (v13)
        {
          v9 += 168;
          v8 = v10;
        }
      }

      sub_100032BFC(v107, v9);
      sub_100032BFC(v95, v4);
      v14 = v107[0];
      v15 = v95[0];
      if (v106 < 0)
      {
        operator delete(v105);
      }

      if (v104 < 0)
      {
        operator delete(v103);
      }

      if (v102 < 0)
      {
        operator delete(v101);
      }

      if (v100 < 0)
      {
        operator delete(v99);
      }

      *&v81 = &v98;
      sub_100034D1C(&v81);
      if (v96)
      {
        v97 = v96;
        operator delete(v96);
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

      if (v112 < 0)
      {
        operator delete(v111);
      }

      *&v81 = &v110;
      sub_100034D1C(&v81);
      if (v108)
      {
        v109 = v108;
        operator delete(v108);
      }

      if (v14 >= v15)
      {
        v16 = *(v4 + 16);
        v81 = *v4;
        *v82 = v16;
        v17 = *(v4 + 32);
        *(v4 + 16) = 0;
        *(v4 + 24) = 0;
        v84 = *(v4 + 40);
        v18 = *(v4 + 56);
        v83 = v17;
        v85 = v18;
        *(v4 + 32) = 0;
        *(v4 + 40) = 0;
        *(v4 + 48) = 0;
        *(v4 + 56) = 0;
        LOWORD(v17) = *(v4 + 68);
        v19 = *(v4 + 88);
        v86 = 0;
        WORD2(v86) = v17;
        LODWORD(v86) = *(v4 + 64);
        v20 = *(v4 + 72);
        v88 = v19;
        v87 = v20;
        *(v4 + 72) = 0;
        *(v4 + 80) = 0;
        v21 = *(v4 + 112);
        *v89 = *(v4 + 96);
        *(v4 + 88) = 0;
        *(v4 + 96) = 0;
        *(v4 + 104) = 0;
        *(v4 + 112) = 0;
        v22 = *(v4 + 120);
        v23 = *(v4 + 136);
        v90 = v21;
        v92 = v23;
        v91 = v22;
        *(v4 + 120) = 0;
        *(v4 + 128) = 0;
        v24 = *(v4 + 144);
        v94 = *(v4 + 160);
        *v93 = v24;
        *(v4 + 136) = 0;
        *(v4 + 144) = 0;
        *(v4 + 152) = 0;
        *(v4 + 160) = 0;
        do
        {
          v25 = v9;
          sub_100FFD8F0(v4, v9);
          if (v6 < v8)
          {
            break;
          }

          v26 = 2 * v8;
          v8 = (2 * v8) | 1;
          v9 = a1 + 168 * v8;
          v27 = v26 + 2;
          if (v26 + 2 < a2)
          {
            sub_100032BFC(v69, a1 + 168 * v8);
            sub_100032BFC(v57, v9 + 168);
            v28 = v69[0];
            v29 = v57[0];
            if (v68 < 0)
            {
              operator delete(v67);
            }

            if (v66 < 0)
            {
              operator delete(v65);
            }

            if (v64 < 0)
            {
              operator delete(v63);
            }

            if (v62 < 0)
            {
              operator delete(v61);
            }

            v143[0] = &v60;
            sub_100034D1C(v143);
            if (v58)
            {
              v59 = v58;
              operator delete(v58);
            }

            if (v80 < 0)
            {
              operator delete(v79);
            }

            if (v78 < 0)
            {
              operator delete(v77);
            }

            if (v76 < 0)
            {
              operator delete(v75);
            }

            if (v74 < 0)
            {
              operator delete(v73);
            }

            v143[0] = &v72;
            sub_100034D1C(v143);
            if (v70)
            {
              v71 = v70;
              operator delete(v70);
            }

            v13 = v28 < v29;
            v6 = v32;
            if (v13)
            {
              v9 += 168;
              v8 = v27;
            }
          }

          sub_100032BFC(v45, v9);
          sub_100032BFC(v33, &v81);
          v30 = v45[0];
          v31 = v33[0];
          if (v44 < 0)
          {
            operator delete(v43);
          }

          if (v42 < 0)
          {
            operator delete(v41);
          }

          if (v40 < 0)
          {
            operator delete(v39);
          }

          if (v38 < 0)
          {
            operator delete(v37);
          }

          v143[0] = &v36;
          sub_100034D1C(v143);
          if (v34)
          {
            v35 = v34;
            operator delete(v34);
          }

          if (v56 < 0)
          {
            operator delete(v55);
          }

          if (v54 < 0)
          {
            operator delete(v53);
          }

          if (v52 < 0)
          {
            operator delete(v51);
          }

          if (v50 < 0)
          {
            operator delete(v49);
          }

          v143[0] = &v48;
          sub_100034D1C(v143);
          if (v46)
          {
            v47 = v46;
            operator delete(v46);
          }

          v4 = v25;
        }

        while (v30 >= v31);
        sub_100FFD8F0(v25, &v81);
        if (SHIBYTE(v94) < 0)
        {
          operator delete(v93[0]);
        }

        if (SHIBYTE(v92) < 0)
        {
          operator delete(v91);
        }

        if (SHIBYTE(v90) < 0)
        {
          operator delete(v89[0]);
        }

        if (SHIBYTE(v88) < 0)
        {
          operator delete(v87);
        }

        v143[0] = &v84;
        sub_100034D1C(v143);
        if (v82[0])
        {
          v82[1] = v82[0];
          operator delete(v82[0]);
        }
      }
    }
  }
}

void sub_1011BA814(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1011BA868(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1011BA8A8(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_1011BA8D4(ServiceManager::Service *this)
{
  *this = off_101F18118;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ServiceManager::Service::~Service(this);
}

void sub_1011BA930(ServiceManager::Service *this)
{
  *this = off_101F18118;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ServiceManager::Service::~Service(this);

  operator delete();
}

uint64_t sub_1011BA9B0@<X0>(void *a1@<X8>)
{
  v2 = 768;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  return sub_1000FF040(a1, &v2, &vars0, 2);
}

void sub_1011BA9F4(uint64_t a1, dispatch_object_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v3);
    sub_1011AA5FC(v2, v3);
  }

  v4 = *(a1 + 8);

  sub_1011AA5FC(v4, 0);
}

void sub_1011BAA94(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2[0] = 0;
  v2[1] = 0;
  sub_100004AA0(v2, (v1 + 8));
  operator new();
}

void sub_1011BAB70(uint64_t a1, int a2, ServiceStage *this)
{
  v3 = *(a1 + 8);
  ServiceStage::holdOffStage(&group, this);
  v5[0] = 0;
  v5[1] = 0;
  sub_100004AA0(v5, (v3 + 8));
  operator new();
}

void *sub_1011BAC98(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_10010935C(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t sub_1011BACF0(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 == v3)
  {
    v4 = (a1 + 40);
    v10 = *(a1 + 8);
  }

  else
  {
    v4 = (a1 + 40);
    v5 = *(a1 + 32);
    v6 = &v3[v5 >> 6];
    v7 = *v6 + 64 * (v5 & 0x3F);
    v8 = *(v3 + (((*(a1 + 40) + v5) >> 3) & 0x1FFFFFFFFFFFFFF8)) + 64 * ((*(a1 + 40) + v5) & 0x3F);
    if (v7 != v8)
    {
      do
      {
        sub_1004F26B0((v7 + 32));
        sub_10004EC58((v7 + 8), *(v7 + 2));
        v7 += 64;
        if (v7 - *v6 == 4096)
        {
          v9 = v6[1];
          ++v6;
          v7 = v9;
        }
      }

      while (v7 != v8);
      v3 = *(a1 + 8);
      v2 = *(a1 + 16);
    }

    v10 = v2;
  }

  *v4 = 0;
  v11 = v10 - v3;
  if (v11 >= 3)
  {
    do
    {
      operator delete(*v3);
      v2 = *(a1 + 16);
      v3 = (*(a1 + 8) + 8);
      *(a1 + 8) = v3;
      v11 = v2 - v3;
    }

    while (v11 > 2);
    v10 = v2;
  }

  if (v11 == 1)
  {
    v12 = 32;
  }

  else
  {
    if (v11 != 2)
    {
      goto LABEL_17;
    }

    v12 = 64;
  }

  *(a1 + 32) = v12;
LABEL_17:
  if (v3 != v10)
  {
    do
    {
      v13 = *v3++;
      operator delete(v13);
    }

    while (v3 != v10);
    v10 = *(a1 + 8);
    v2 = *(a1 + 16);
  }

  if (v2 != v10)
  {
    *(a1 + 16) = v2 + ((v10 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1011BAE58(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_1011BAE58(a1, *a2);
    sub_1011BAE58(a1, a2[1]);
    sub_1011BAEB4((a2 + 4));

    operator delete(a2);
  }
}

void sub_1011BAEB4(uint64_t a1)
{
  sub_100077CD4(a1 + 24, *(a1 + 32));
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t *sub_1011BAF08(_BYTE **a1)
{
  v1 = *a1;
  v10 = a1;
  v11 = v1;
  v2 = *v1;
  v3 = *(*v1 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v13 = asString();
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Shutting down subscriber service %s", buf, 0xCu);
  }

  if (v1[8] == 3)
  {
    ctu::RestModule::disconnect((v2 + 80));
    (*(**(v2 + 104) + 64))(*(v2 + 104));
  }

  else if (!v1[8])
  {
    v4 = *(v2 + 168);
    for (i = *(v2 + 176); v4 != i; v4 += 2)
    {
      v6 = *(v2 + 40);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Clearing PIN cache upon shutdown", buf, 2u);
      }

      sub_10173E164(*v4);
      v7 = *(v2 + 152);
      if (v7)
      {
        (*(*v7 + 40))(v7, *(*v4 + 36));
      }
    }
  }

  v8 = *(v2 + 136);
  if (v8)
  {
    (*(*v8 + 24))(v8, v1[8]);
  }

  sub_100D89210(&v11);
  return sub_1000049E0(&v10);
}

void sub_1011BB0E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100D89210(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

void sub_1011BB108(void *a1)
{
  v1 = *a1;
  v2 = a1;
  v3 = v1;
  sub_100004AA0(&v4, (*v1 + 8));
  operator new();
}

void sub_1011BBA44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, dispatch_group_t group, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1011BBB40(uint64_t **a1)
{
  v1 = **a1;
  (*(**(v1 + 104) + 56))(*(v1 + 104));
  sub_101195758(v1);
  ServiceMap = Registry::getServiceMap(*(v1 + 64));
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
  *buf = v4;
  v8 = sub_100009510(&v3[1].__m_.__sig, buf);
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
    v12 = *(v1 + 40);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Could not initialize analytics metrics.", buf, 2u);
    }

    goto LABEL_31;
  }

LABEL_11:
  sub_100004AA0(buf, (v1 + 8));
  v14 = *buf;
  v13 = v21;
  if (v21)
  {
    atomic_fetch_add_explicit((v21 + 16), 1uLL, memory_order_relaxed);
    sub_100004A34(v13);
  }

  v15 = *(v1 + 24);
  if (v15)
  {
    dispatch_retain(*(v1 + 24));
  }

  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 0x40000000;
  aBlock[2] = sub_1011B3D10;
  aBlock[3] = &unk_101F17EB0;
  aBlock[4] = v1;
  if (v15)
  {
    v16 = _Block_copy(aBlock);
    v17 = v16;
    v27 = v15;
    *buf = _NSConcreteStackBlock;
    v21 = 1174405120;
    v22 = sub_1011CE2C0;
    v23 = &unk_101F19488;
    v24 = v14;
    v25 = v13;
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    if (v16)
    {
      v18 = _Block_copy(v16);
    }

    else
    {
      v18 = 0;
    }

    v26 = v18;
    (*(*v10 + 40))(v10, "commCenterFullSimInfo", 1, &v27, buf);
    if (v27)
    {
      dispatch_release(v27);
    }

    if (v26)
    {
      _Block_release(v26);
    }

    if (v25)
    {
      std::__shared_weak_count::__release_weak(v25);
    }

    if (v17)
    {
      _Block_release(v17);
    }
  }

  if (v13)
  {
    std::__shared_weak_count::__release_weak(v13);
  }

LABEL_31:
  if ((v11 & 1) == 0)
  {
    sub_100004A34(v9);
  }

  operator delete();
}

void sub_1011BBE48(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20, void *aBlock)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (a20)
  {
    std::__shared_weak_count::__release_weak(a20);
  }

  v26 = *(v25 - 72);
  if (v26)
  {
    dispatch_release(v26);
  }

  if (v23)
  {
    _Block_release(v23);
  }

  if (v22)
  {
    std::__shared_weak_count::__release_weak(v22);
  }

  if ((v24 & 1) == 0)
  {
    sub_100004A34(v21);
  }

  operator delete();
}

void sub_1011BBEFC(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F18198;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1011BBF78(SubscriberSimCommandDriverDelegateInterface *this)
{
  *this = off_101F18298;
  v2 = *(this + 2);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  SubscriberSimCommandDriverDelegateInterface::~SubscriberSimCommandDriverDelegateInterface(this);
}

void sub_1011BBFD4(SubscriberSimCommandDriverDelegateInterface *this)
{
  *this = off_101F18298;
  v2 = *(this + 2);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  SubscriberSimCommandDriverDelegateInterface::~SubscriberSimCommandDriverDelegateInterface(this);

  operator delete();
}

void sub_1011BC044(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    v9 = std::__shared_weak_count::lock(v5);
    if (v9)
    {
      v10 = v9;
      v11 = *(a1 + 8);
      if (v11)
      {
        (*(*v11 + 336))(v11, a2, a3, a4);
      }

      sub_100004A34(v10);
    }
  }
}

void sub_1011BC110(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      v7 = *(a1 + 8);
      if (v7)
      {
        memset(v8, 0, sizeof(v8));
        sub_1011BCB90(v8, *a2, a2[1], 0x8E38E38E38E38E39 * ((a2[1] - *a2) >> 4));
        (*(*v7 + 344))(v7, v8);
        v9 = v8;
        sub_1011B65F8(&v9);
      }

      sub_100004A34(v6);
    }
  }
}

void sub_1011BC1DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1011B65F8(va);
  sub_100004A34(v4);
  _Unwind_Resume(a1);
}

void sub_1011BC204(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      v7 = *(a1 + 8);
      if (v7)
      {
        (*(*v7 + 360))(v7, a2);
      }

      sub_100004A34(v6);
    }
  }
}

void sub_1011BC2B4(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = v7;
      v9 = *(a1 + 8);
      if (v9)
      {
        sub_10006F264(__p, a3);
        (*(*v9 + 352))(v9, a2, __p);
        if (v12 == 1 && v11 < 0)
        {
          operator delete(__p[0]);
        }
      }

      sub_100004A34(v8);
    }
  }
}

void sub_1011BC370(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  sub_100004A34(v15);
  _Unwind_Resume(a1);
}

void sub_1011BC3A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *(a1 + 16);
  if (v8)
  {
    v15 = std::__shared_weak_count::lock(v8);
    if (v15)
    {
      v16 = v15;
      v17 = *(a1 + 8);
      if (v17)
      {
        (*(*v17 + 368))(v17, a2, a3, a4, a5, a6, a7);
      }

      sub_100004A34(v16);
    }
  }
}

void sub_1011BC498(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *(a1 + 16);
  if (v8)
  {
    v15 = std::__shared_weak_count::lock(v8);
    if (v15)
    {
      v16 = v15;
      v17 = *(a1 + 8);
      if (v17)
      {
        (*(*v17 + 376))(v17, a2, a3, a4, a5, a6, a7);
      }

      sub_100004A34(v16);
    }
  }
}

void sub_1011BC588(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *(a1 + 16);
  if (v8)
  {
    v15 = std::__shared_weak_count::lock(v8);
    if (v15)
    {
      v16 = v15;
      v17 = *(a1 + 8);
      if (v17)
      {
        (*(*v17 + 384))(v17, a2, a3, a4, a5, a6, a7);
      }

      sub_100004A34(v16);
    }
  }
}

void sub_1011BC678(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    v9 = std::__shared_weak_count::lock(v5);
    if (v9)
    {
      v10 = v9;
      v11 = *(a1 + 8);
      if (v11)
      {
        (*(*v11 + 392))(v11, a2, a3, a4);
      }

      sub_100004A34(v10);
    }
  }
}

void sub_1011BC744(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    v9 = std::__shared_weak_count::lock(v5);
    if (v9)
    {
      v10 = v9;
      v11 = *(a1 + 8);
      if (v11)
      {
        v12 = *a3;
        v13 = *(a3 + 2);
        v15 = 0;
        v16 = 0;
        __p = 0;
        sub_1011B66C0(&__p, a3[2], a3[3], (a3[3] - a3[2]) >> 2);
        v17 = *(a3 + 20);
        sub_100A72FF4(v18, a4);
        (*(*v11 + 400))(v11, a2, &v12, v18);
        sub_100A6EFFC(v18);
        if (__p)
        {
          v15 = __p;
          operator delete(__p);
        }
      }

      sub_100004A34(v10);
    }
  }
}

void sub_1011BC870(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  sub_100A6EFFC(&a16);
  if (__p)
  {
    operator delete(__p);
  }

  sub_100004A34(v16);
  _Unwind_Resume(a1);
}

void sub_1011BC8AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = v7;
      v9 = *(a1 + 8);
      if (v9)
      {
        (*(*v9 + 408))(v9, a2, a3);
      }

      sub_100004A34(v8);
    }
  }
}

void sub_1011BC964(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      v7 = *(a1 + 8);
      if (v7)
      {
        (*(*v7 + 416))(v7, a2);
      }

      sub_100004A34(v6);
    }
  }
}

void sub_1011BCA14(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      v7 = *(a1 + 8);
      if (v7)
      {
        (*(*v7 + 424))(v7, a2);
      }

      sub_100004A34(v6);
    }
  }
}

void sub_1011BCAC4(SubscriberSimCommandDriverDelegateInterface *this)
{
  *this = off_101F18298;
  v2 = *(this + 2);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  SubscriberSimCommandDriverDelegateInterface::~SubscriberSimCommandDriverDelegateInterface(this);
}

void sub_1011BCB20(SubscriberSimCommandDriverDelegateInterface *this)
{
  *this = off_101F18298;
  v2 = *(this + 2);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  SubscriberSimCommandDriverDelegateInterface::~SubscriberSimCommandDriverDelegateInterface(this);

  operator delete();
}

void sub_1011BCB90(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x1C71C71C71C71C8)
    {
      operator new();
    }

    sub_1000CE3D4();
  }
}

void sub_1011BCD4C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1011B65F8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1011BCDB8(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      if (*(v3 - 1) < 0)
      {
        operator delete(*(v3 - 24));
      }

      v7 = (v3 - 48);
      sub_100034D1C(&v7);
      v5 = *(v3 - 72);
      if (v5)
      {
        *(v3 - 64) = v5;
        operator delete(v5);
      }

      v6 = *(v3 - 104);
      if (v6)
      {
        *(v3 - 96) = v6;
        operator delete(v6);
      }

      v3 -= 144;
    }
  }

  return a1;
}

uint64_t sub_1011BCEC0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F18318;
  a2[1] = v2;
  return result;
}

void sub_1011BCEEC(uint64_t a1, const BasicSimInfo **a2)
{
  v6 = 0;
  sub_1011BD024(&v6, a2);
  sub_10000501C(&__p, "/cc/props/sims_on_device");
  v2 = v6;
  object = v6;
  if (v6)
  {
    xpc_retain(v6);
  }

  else
  {
    object = xpc_null_create();
  }

  ctu::RestModule::setProperty();
  xpc_release(object);
  if (v5 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v2);
}

void sub_1011BCF90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  xpc_release(object);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v16);
  _Unwind_Resume(a1);
}

uint64_t sub_1011BCFD8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1011BD024(xpc_object_t *a1, const BasicSimInfo **a2)
{
  v4 = xpc_array_create(0, 0);
  if (v4 || (v4 = xpc_null_create()) != 0)
  {
    if (xpc_get_type(v4) == &_xpc_type_array)
    {
      xpc_retain(v4);
      v5 = v4;
    }

    else
    {
      v5 = xpc_null_create();
    }
  }

  else
  {
    v5 = xpc_null_create();
    v4 = 0;
  }

  xpc_release(v4);
  v7 = *a2;
  v6 = a2[1];
  while (v7 != v6)
  {
    write_rest_value(v7);
    xpc_array_append_value(v5, value);
    xpc_release(value);
    v7 = (v7 + 168);
  }

  *a1 = v5;
  if (v5)
  {
    xpc_retain(v5);
  }

  else
  {
    *a1 = xpc_null_create();
  }

  xpc_release(v5);
}

void *sub_1011BD160(void *result, void *a2)
{
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        memset(v5, 0, sizeof(v5));
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

void sub_1011BD3C0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

uint64_t sub_1011BD43C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F183A8;
  a2[1] = v2;
  return result;
}

void sub_1011BD468(uint64_t a1, const BasicSimInfo **a2)
{
  v6 = 0;
  sub_1011BD024(&v6, a2);
  sub_10000501C(&__p, "/cc/props/sims_in_use");
  v2 = v6;
  object = v6;
  if (v6)
  {
    xpc_retain(v6);
  }

  else
  {
    object = xpc_null_create();
  }

  ctu::RestModule::setProperty();
  xpc_release(object);
  if (v5 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v2);
}

void sub_1011BD50C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  xpc_release(object);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v16);
  _Unwind_Resume(a1);
}

uint64_t sub_1011BD554(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1011BD610(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F18428;
  a2[1] = v2;
  return result;
}

void sub_1011BD63C(uint64_t a1, void *a2)
{
  v3 = xpc_array_create(0, 0);
  if (v3 || (v3 = xpc_null_create()) != 0)
  {
    if (xpc_get_type(v3) == &_xpc_type_array)
    {
      xpc_retain(v3);
      v4 = v3;
    }

    else
    {
      v4 = xpc_null_create();
    }
  }

  else
  {
    v4 = xpc_null_create();
    v3 = 0;
  }

  xpc_release(v3);
  v7 = *a2;
  v5 = a2 + 1;
  v6 = v7;
  if (v7 != v5)
  {
    do
    {
      v8 = xpc_dictionary_create(0, 0, 0);
      v9 = v8;
      if (v8)
      {
        v27 = v8;
      }

      else
      {
        v9 = xpc_null_create();
        v27 = v9;
        if (!v9)
        {
          v10 = xpc_null_create();
          v9 = 0;
          goto LABEL_15;
        }
      }

      if (xpc_get_type(v9) == &_xpc_type_dictionary)
      {
        xpc_retain(v9);
        goto LABEL_16;
      }

      v10 = xpc_null_create();
LABEL_15:
      v27 = v10;
LABEL_16:
      xpc_release(v9);
      v11 = *(v6 + 8);
      v12 = subscriber::asString();
      ctu::rest::detail::write_enum_string_value(&v25, v11, v12, v13);
      __p = &v27;
      v21 = "first";
      sub_10000F688(&__p, &v25, &object);
      xpc_release(object);
      object = 0;
      xpc_release(v25);
      v25 = 0;
      if (*(v6 + 64) != 1 || (*(v6 + 63) >= 0 ? (v14 = (v6 + 5)) : (v14 = v6[5]), (v23 = xpc_string_create(v14)) == 0))
      {
        v23 = xpc_null_create();
      }

      __p = &v27;
      v21 = "second";
      sub_10000F688(&__p, &v23, &v24);
      xpc_release(v24);
      v24 = 0;
      xpc_release(v23);
      v23 = 0;
      v15 = v27;
      if (v27)
      {
        xpc_retain(v27);
      }

      else
      {
        v15 = xpc_null_create();
      }

      xpc_release(v27);
      xpc_array_append_value(v4, v15);
      xpc_release(v15);
      v16 = v6[1];
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
          v17 = v6[2];
          v18 = *v17 == v6;
          v6 = v17;
        }

        while (!v18);
      }

      v6 = v17;
    }

    while (v17 != v5);
  }

  if (v4)
  {
    xpc_retain(v4);
    v19 = v4;
  }

  else
  {
    v19 = xpc_null_create();
  }

  xpc_release(v4);
  sub_10000501C(&__p, "/cc/props/sim_msisdn");
  v27 = v19;
  if (v19)
  {
    xpc_retain(v19);
  }

  else
  {
    v27 = xpc_null_create();
  }

  ctu::RestModule::setProperty();
  xpc_release(v27);
  v27 = 0;
  if (v22 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v19);
}

void sub_1011BD934(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, xpc_object_t object)
{
  xpc_release(object);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v19);
  _Unwind_Resume(a1);
}

uint64_t sub_1011BD9F8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1011BDAB4(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F184B8;
  a2[1] = v2;
  return result;
}

void sub_1011BDAE0(uint64_t a1, void *a2)
{
  v5 = 0;
  sub_10031DD58(a2, &v5);
  sub_10000501C(&__p, "/cc/props/cdma_aux_info_ready");
  object = v5;
  if (v5)
  {
    xpc_retain(v5);
  }

  else
  {
    object = xpc_null_create();
  }

  ctu::RestModule::setProperty();
  xpc_release(object);
  if (v4 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v5);
}

void sub_1011BDB84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  xpc_release(object);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  xpc_release(*(v16 - 24));
  _Unwind_Resume(a1);
}

uint64_t sub_1011BDBC8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1011BDC84(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F18538;
  a2[1] = v2;
  return result;
}

xpc_type_t sub_1011BDCB0(uint64_t a1, xpc_object_t *a2)
{
  v3 = *(a1 + 8);
  result = xpc_get_type(*a2);
  if (result == &_xpc_type_string)
  {
    v8 = *v3;
    result = ctu::rest::detail::read_enum_string_value(&v8, a2, v5);
    *v3 = v8;
  }

  else if (result == &_xpc_type_BOOL || result == &_xpc_type_int64 || result == &_xpc_type_uint64)
  {
    result = xpc::dyn_cast_or_default(a2, 0, v5);
    *v3 = result;
  }

  return result;
}

uint64_t sub_1011BDD4C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1011BDE08(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F185B8;
  a2[1] = v2;
  return result;
}

void sub_1011BDE34(uint64_t a1, void *a2)
{
  v5 = 0;
  sub_10031DD58(a2, &v5);
  sub_10000501C(&__p, "/cc/props/isim_files_status");
  object = v5;
  if (v5)
  {
    xpc_retain(v5);
  }

  else
  {
    object = xpc_null_create();
  }

  ctu::RestModule::setProperty();
  xpc_release(object);
  if (v4 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v5);
}

void sub_1011BDED8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  xpc_release(object);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  xpc_release(*(v16 - 24));
  _Unwind_Resume(a1);
}

uint64_t sub_1011BDF1C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1011BDFD8(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F18638;
  a2[1] = v2;
  return result;
}

void sub_1011BE004(uint64_t a1, void *a2)
{
  v5 = 0;
  sub_100B7C264(a2, &v5);
  sub_10000501C(&__p, "/cc/props/psi_smsc");
  object = v5;
  if (v5)
  {
    xpc_retain(v5);
  }

  else
  {
    object = xpc_null_create();
  }

  ctu::RestModule::setProperty();
  xpc_release(object);
  if (v4 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v5);
}

void sub_1011BE0A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  xpc_release(object);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  xpc_release(*(v16 - 24));
  _Unwind_Resume(a1);
}

uint64_t sub_1011BE0EC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1011BE1B4(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F186B8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1011BE1EC(void *a1)
{
  v2 = a1[1];
  v3 = *v2;
  v9 = *(v2 + 2);
  v8 = v3;
  read_rest_value();
  v4 = a1[3];
  v5 = a1[4];
  v6 = (a1[2] + (v5 >> 1));
  if (v5)
  {
    v4 = *(*v6 + v4);
  }

  return v4(v6, &v8);
}

uint64_t sub_1011BE278(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1011BE334(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F18738;
  a2[1] = v2;
  return result;
}

xpc_type_t sub_1011BE360(uint64_t a1, xpc_object_t *a2)
{
  v3 = *(a1 + 8);
  result = xpc_get_type(*a2);
  if (result == &_xpc_type_string)
  {
    v8 = *v3;
    result = ctu::rest::detail::read_enum_string_value(&v8, a2, v5);
    *v3 = v8;
  }

  else if (result == &_xpc_type_BOOL || result == &_xpc_type_int64 || result == &_xpc_type_uint64)
  {
    result = xpc::dyn_cast_or_default(a2, 0, v5);
    *v3 = result;
  }

  return result;
}

uint64_t sub_1011BE3FC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1011BE4B8(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F187B8;
  a2[1] = v2;
  return result;
}

uint64_t sub_1011BE4EC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1011BE5B4(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F18838;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1011BE5EC(void *a1)
{
  v1 = a1[2];
  v2 = a1[3];
  v3 = (a1[1] + (v2 >> 1));
  if (v2)
  {
    return (*(*v3 + v1))();
  }

  else
  {
    return v1(v3);
  }
}

uint64_t sub_1011BE634(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_1011BE680(uint64_t *a1)
{
  v1 = *a1;
  v47 = a1;
  v48 = v1;
  v2 = *v1;
  v3 = *(*v1 + 168);
  v4 = *(*v1 + 176);
  if (v3 == v4)
  {
LABEL_5:
    if (*(v1 + 16))
    {
      v7 = *(v2 + 40);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        buf.var0 = 136315138;
        *&buf.var1 = subscriber::asString();
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#E Got SIM file update, but there is no SIM info for phy slot [%s]????", &buf, 0xCu);
      }
    }

    goto LABEL_86;
  }

  v5 = *(v1 + 12);
  while (1)
  {
    v6 = *v3;
    if (*(*v3 + 32) == *(v1 + 8))
    {
      break;
    }

    v3 += 2;
    if (v3 == v4)
    {
      goto LABEL_5;
    }
  }

  v8 = v3[1];
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v9 = *(v6 + 36);
  v55 = 0;
  v53 = 0;
  v54 = 0;
  v52 = 0;
  v10 = *(v1 + 16);
  if (v10)
  {
    if (&v52 != v10)
    {
      sub_1001122C4(&v52, *v10, v10[1], v10[1] - *v10);
      v10 = *(v1 + 16);
    }

    LOBYTE(v57[0]) = 0;
    v50 = 0;
    v51 = 0;
    __p = 0;
    sub_100034C50(&__p, *v10, v10[1], v10[1] - *v10);
    v11 = sub_10173CDFC(v6, v5, &__p);
    LOBYTE(v57[0]) = HIBYTE(v11);
    v55 = v11;
    if (__p)
    {
      v50 = __p;
      operator delete(__p);
    }

    v12 = *(*(**(v2 + 56) + 16))(*(v2 + 56), v9);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = subscriber::asString();
      v14 = *(v1 + 16);
      v15 = *v14;
      v16 = v14[1];
      v18 = printers::asString(&v55, v17);
      v20 = printers::asString(v57, v19);
      buf.var0 = 136315906;
      *&buf.var1 = v13;
      WORD2(buf.var2.__rep_.__l.__data_) = 2048;
      *(&buf.var2.__rep_.__l.__data_ + 6) = (v16 - v15);
      HIWORD(buf.var2.__rep_.__l.__size_) = 2080;
      *(&buf.var2.__rep_.__l + 2) = v18;
      LOWORD(v68[0]) = 2080;
      *(v68 + 2) = v20;
      v21 = "#I Marking SIM file %s present with %lu bytes (success=%s changed=%s)";
      v22 = v12;
      v23 = 42;
LABEL_19:
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, v21, &buf, v23);
    }
  }

  else
  {
    v24 = sub_1014138CC(v6 + 184, v5);
    LOBYTE(v57[0]) = HIBYTE(v24);
    v55 = v24;
    v25 = *(*(**(v2 + 56) + 16))(*(v2 + 56), v9);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = subscriber::asString();
      v28 = printers::asString(&v55, v27);
      v30 = printers::asString(v57, v29);
      buf.var0 = 136315650;
      *&buf.var1 = v26;
      WORD2(buf.var2.__rep_.__l.__data_) = 2080;
      *(&buf.var2.__rep_.__l.__data_ + 6) = v28;
      HIWORD(buf.var2.__rep_.__l.__size_) = 2080;
      *(&buf.var2.__rep_.__l + 2) = v30;
      v21 = "#I Marking SIM file %s not present (success=%s changed=%s)";
      v22 = v25;
      v23 = 32;
      goto LABEL_19;
    }
  }

  if (v55 == 1 && subscriber::isSimFileEssential() && (sub_100065108(v6) & 1) == 0)
  {
    sub_1011AF664(v2, v31, v32);
  }

  if (v55 == 1)
  {
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v66 = v5;
    if (sSupportsPartialActiveProfiles())
    {
      v64[0] = 0;
      v64[1] = 0;
      v65 = 0;
      sub_10173C120(v6, v33, v64);
      if (sub_1011CE3EC(*(v2 + 984), v64))
      {
        *&buf.var0 = v64;
        for (i = *(sub_1011CE454(v2 + 976, v64) + 64); i; i = *i)
        {
          v35 = *(i + 8);
          if (v35 <= v5)
          {
            if (v35 >= v5)
            {
              goto LABEL_63;
            }

            ++i;
          }
        }
      }

      memset(&__str, 0, sizeof(__str));
      if (v5 == 4)
      {
        __src = 0;
        v61 = 0;
        v62 = 0;
        sub_1011B2F00(&__src, v2, *(v6 + 36), 4);
        v36 = sub_101413A80(v6 + 184, 4);
        v37 = __src;
        if ((v36 & 0x1000000000000) != 0)
        {
          v59 = 0;
          *v57 = 0u;
          v58 = 0u;
          WORD1(v59) = WORD1(v36);
          WORD2(v59) = WORD2(v36);
          HIDWORD(v57[0]) = 4;
          sub_1001122C4(&v57[1], __src, v61, v61 - __src);
          v76 = 0;
          *v74 = 0u;
          v75 = 0u;
          *v72 = 0u;
          v73 = 0u;
          *v70 = 0u;
          v71 = 0u;
          *v68 = 0u;
          v69 = 0u;
          memset(&buf, 0, sizeof(buf));
          subscriber::sDecodePhoneBookFile();
          if (v76 == 1)
          {
            CSIPhoneNumber::getFullNumber(&v56, &buf);
            __str = v56;
            if (v76)
            {
              if (SBYTE7(v75) < 0)
              {
                operator delete(v74[0]);
              }

              if (SHIBYTE(v73) < 0)
              {
                operator delete(v72[1]);
              }

              if (SBYTE7(v71) < 0)
              {
                operator delete(v70[0]);
              }

              if (SBYTE7(v69) < 0)
              {
                operator delete(v68[0]);
              }

              if (*(&buf.var2.__rep_.__l + 23) < 0)
              {
                operator delete(buf.var2.__rep_.__l.__data_);
              }
            }
          }

          if (v57[1])
          {
            *&v58 = v57[1];
            operator delete(v57[1]);
          }

          v37 = __src;
        }

        if (v37)
        {
          v61 = v37;
          operator delete(v37);
        }
      }

      else if (v5 == 3)
      {
        sub_1011AF438(v2, *(v6 + 36), 3, &__str);
      }

      size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
      v39 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = __str.__r_.__value_.__l.__size_;
      }

      if (size)
      {
        *&buf.var0 = v64;
        v40 = sub_1011CE454(v2 + 976, v64);
        *&buf.var0 = &v66;
        v41 = sub_1011CE5F8(v40 + 56, v5);
        std::string::operator=((v41 + 5), &__str);
        v39 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
      }

      if (v39 < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

LABEL_63:
      if (SHIBYTE(v65) < 0)
      {
        operator delete(v64[0]);
      }
    }

    if (v8)
    {
      sub_100004A34(v8);
      goto LABEL_67;
    }
  }

  else if (v8)
  {
LABEL_67:
    v42 = 0;
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    goto LABEL_69;
  }

  v42 = 1;
LABEL_69:
  *&buf.var0 = _NSConcreteStackBlock;
  buf.var2.__rep_.__l.__data_ = 0x40000000;
  buf.var2.__rep_.__l.__size_ = sub_1011B2A5C;
  *(&buf.var2.__rep_.__l + 2) = &unk_101F17E60;
  v68[0] = v2;
  sub_10173CBD4(v6, &buf);
  if ((v42 & 1) == 0)
  {
    sub_100004A34(v8);
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v57[0] = v6;
  v57[1] = v8;
  LODWORD(v64[0]) = v5;
  sub_1008235B0(&buf, v64, 1);
  sub_1011B01B0(v2, v57, &buf);
  sub_10006DCAC(&buf, buf.var2.__rep_.__l.__data_);
  if ((v42 & 1) == 0)
  {
    sub_100004A34(v8);
  }

  v45 = *(v2 + 168);
  v44 = *(v2 + 176);
  while (v45 != v44)
  {
    if (*(*v45 + 36) == v9)
    {
      if (v45 != v44)
      {
        *&buf.var0 = v6;
        buf.var2.__rep_.__l.__data_ = v8;
        if ((v42 & 1) == 0)
        {
          atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_1011B08AC(v2, &buf.var0, v43);
        if ((v42 & 1) == 0)
        {
          sub_100004A34(v8);
        }
      }

      break;
    }

    v45 += 16;
  }

  if (v52)
  {
    v53 = v52;
    operator delete(v52);
  }

  if (v8)
  {
    sub_100004A34(v8);
  }

LABEL_86:
  sub_1011BEED0(&v48);
  return sub_1000049E0(&v47);
}

void sub_1011BEDB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, uint64_t a42, char a43, uint64_t a44)
{
  sub_100AC7908(&a43);
  if (__p)
  {
    a23 = __p;
    operator delete(__p);
  }

  if (a26)
  {
    a27 = a26;
    operator delete(a26);
  }

  if (a34 < 0)
  {
    operator delete(a29);
  }

  if (a41 < 0)
  {
    operator delete(a36);
  }

  if (v44)
  {
    sub_100004A34(v44);
  }

  if (a14)
  {
    a15 = a14;
    operator delete(a14);
  }

  if (v44)
  {
    sub_100004A34(v44);
  }

  sub_1011BEED0(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_1011BEED0(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = *(v1 + 24);
    if (v2)
    {
      sub_100004A34(v2);
    }

    operator delete();
  }

  return result;
}

uint64_t *sub_1011BEF24(uint64_t **a1)
{
  v1 = *a1;
  v81 = a1;
  v82 = v1;
  v2 = *v1;
  v84 = 0;
  v85 = 0;
  v83 = 0;
  sub_1011BCB90(&v83, v1[1], v1[2], 0x8E38E38E38E38E39 * ((v1[2] - v1[1]) >> 4));
  if (v83 == v84)
  {
    v9 = *(v2 + 40);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I Received empty Sim list", buf, 2u);
      v9 = *(v2 + 40);
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I Resetting SIM information due to BB reset/loss of information", buf, 2u);
    }

    v88 = 0;
    v89 = 0;
    v90 = 0;
    v12 = *(v2 + 168);
    for (i = *(v2 + 176); v12 != i; v12 += 2)
    {
      sub_10173CF60(*v12, v11, buf);
      v14 = v89;
      if (v89 >= v90)
      {
        v89 = sub_1011B685C(&v88, buf);
        if (SHIBYTE(v107) < 0)
        {
          operator delete(__p);
        }
      }

      else
      {
        *v89 = *buf;
        *(v14 + 2) = 0;
        *(v14 + 3) = 0;
        *(v14 + 4) = 0;
        *(v14 + 5) = 0;
        v14[1] = *v94;
        *(v14 + 4) = v95;
        v94[0] = 0;
        v94[1] = 0;
        v95 = 0;
        *(v14 + 6) = 0;
        *(v14 + 7) = 0;
        *(v14 + 40) = v96;
        *(v14 + 7) = v97;
        v96 = 0uLL;
        v97 = 0;
        v15 = v98;
        *(v14 + 34) = v99;
        *(v14 + 16) = v15;
        v16 = v100;
        *(v14 + 11) = v101;
        *(v14 + 72) = v16;
        v100 = 0uLL;
        v17 = v102;
        *(v14 + 14) = v103;
        v14[6] = v17;
        v103 = 0;
        v101 = 0;
        v102 = 0uLL;
        v18 = v104;
        *(v14 + 17) = v105;
        *(v14 + 120) = v18;
        v104 = 0uLL;
        v19 = __p;
        *(v14 + 20) = v107;
        v14[9] = v19;
        v105 = 0;
        __p = 0uLL;
        v107 = 0;
        v89 = (v14 + 168);
      }

      if (SHIBYTE(v105) < 0)
      {
        operator delete(v104);
      }

      if (SHIBYTE(v103) < 0)
      {
        operator delete(v102);
      }

      if (SHIBYTE(v101) < 0)
      {
        operator delete(v100);
      }

      v91 = &v96;
      sub_100034D1C(&v91);
      if (v94[0])
      {
        v94[1] = v94[0];
        operator delete(v94[0]);
      }

      sub_10173BC8C(*v12);
    }

    sub_1011AF664(v2, v10, v11);
    sub_1011AFFC4(v2, &v88);
    memset(buf, 0, sizeof(buf));
    v20 = (v2 + 392);
    v94[0] = 0;
    sub_1000517E4(buf, v2 + 392);
    v21 = *(v2 + 392);
    v22 = (v2 + 400);
    if (v21 != (v2 + 400))
    {
      do
      {
        v91 = (v21 + 28);
        *(sub_100051AD8(buf, v21 + 7) + 32) = 0;
        v23 = v21[1];
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
            v24 = v21[2];
            v27 = *v24 == v21;
            v21 = v24;
          }

          while (!v27);
        }

        v21 = v24;
      }

      while (v24 != v22);
    }

    if (*(v2 + 408) == v94[0])
    {
      v25 = *v20;
      if (*v20 == v22)
      {
        goto LABEL_62;
      }

      v26 = *buf;
      while (1)
      {
        v27 = *(v25 + 7) == *(v26 + 7) && *(v25 + 32) == *(v26 + 32);
        if (!v27)
        {
          break;
        }

        v28 = v25[1];
        v29 = v25;
        if (v28)
        {
          do
          {
            v25 = v28;
            v28 = *v28;
          }

          while (v28);
        }

        else
        {
          do
          {
            v25 = v29[2];
            v27 = *v25 == v29;
            v29 = v25;
          }

          while (!v27);
        }

        v30 = v26[1];
        if (v30)
        {
          do
          {
            v31 = v30;
            v30 = *v30;
          }

          while (v30);
        }

        else
        {
          do
          {
            v31 = v26[2];
            v27 = *v31 == v26;
            v26 = v31;
          }

          while (!v27);
        }

        v26 = v31;
        if (v25 == v22)
        {
          goto LABEL_62;
        }
      }
    }

    if (v20 != buf)
    {
      sub_10062AA68((v2 + 392), *buf, &buf[8]);
    }

    v32 = *(v2 + 384);
    if (v32)
    {
      (*(*v32 + 48))(v32, v2 + 392);
    }

LABEL_62:
    sub_10006DCAC(buf, *&buf[8]);
    *buf = 1;
    *v94 = 0u;
    v95 = 0;
    *&buf[8] = v2 + 304;
    sub_1011C0374(v94, (v2 + 336));
    sub_1011B5E7C(v94[1]);
    v94[1] = 0;
    v95 = 0;
    v94[0] = &v94[1];
    if (buf[0] == 1)
    {
      v33 = *&buf[8];
      if (*(*&buf[8] + 48))
      {
LABEL_64:
        v34 = v33 + 40;
        sub_1011B5E7C(*(v33 + 40));
        v35 = v94[1];
        *(v33 + 32) = v94[0];
        *(v33 + 40) = v35;
        v36 = v95;
        *(v33 + 48) = v95;
        if (v36)
        {
          *(v35 + 2) = v34;
          v35 = 0;
          v94[0] = &v94[1];
          v94[1] = 0;
          v95 = 0;
        }

        else
        {
          *(v33 + 32) = v34;
        }

        v78 = *(v33 + 24);
        if (v78)
        {
          (*(*v78 + 48))(*(v33 + 24));
          v35 = v94[1];
        }

        goto LABEL_164;
      }

      v62 = *(*&buf[8] + 32);
      v63 = *&buf[8] + 40;
      if (v62 != (*&buf[8] + 40))
      {
        v64 = &v94[1];
        while (*(v62 + 8) == *(v64 + 8))
        {
          v65 = *(v62 + 64);
          v66 = *(v64 + 64);
          if (v65 != v66 || v65 == 0)
          {
            if (v65 != v66)
            {
              goto LABEL_64;
            }
          }

          else
          {
            v68 = *(v62 + 63);
            if (v68 >= 0)
            {
              v69 = *(v62 + 63);
            }

            else
            {
              v69 = v62[6];
            }

            v70 = *(v64 + 63);
            v71 = v70;
            if (v70 < 0)
            {
              v70 = v64[6];
            }

            if (v69 != v70)
            {
              goto LABEL_64;
            }

            v72 = v68 >= 0 ? v62 + 5 : v62[5];
            v73 = v71 >= 0 ? v64 + 5 : v64[5];
            if (memcmp(v72, v73, v69))
            {
              goto LABEL_64;
            }
          }

          v74 = v62[1];
          if (v74)
          {
            do
            {
              v75 = v74;
              v74 = *v74;
            }

            while (v74);
          }

          else
          {
            do
            {
              v75 = v62[2];
              v27 = *v75 == v62;
              v62 = v75;
            }

            while (!v27);
          }

          v76 = v64[1];
          if (v76)
          {
            do
            {
              v77 = v76;
              v76 = *v76;
            }

            while (v76);
          }

          else
          {
            do
            {
              v77 = v64[2];
              v27 = *v77 == v64;
              v64 = v77;
            }

            while (!v27);
          }

          v64 = v77;
          v62 = v75;
          if (v75 == v63)
          {
            goto LABEL_160;
          }
        }

        goto LABEL_64;
      }
    }

LABEL_160:
    v35 = 0;
LABEL_164:
    sub_1011B5E7C(v35);
    *buf = &v88;
    goto LABEL_165;
  }

  if (capabilities::ct::supportsHydra(v3) && *(v2 + 440) == 2)
  {
    v7 = *(v2 + 168);
    v6 = *(v2 + 176);
    if (v7 != v6)
    {
      if (v83 != v84)
      {
        while (1)
        {
          v8 = v83;
          while (*(*v7 + 32) != *v8)
          {
            v8 += 36;
            if (v8 == v84)
            {
              goto LABEL_66;
            }
          }

          if (v8 == v84)
          {
            break;
          }

          v7 += 2;
          if (v7 == v6)
          {
            goto LABEL_86;
          }
        }
      }

LABEL_66:
      if (v7 != v6)
      {
        v37 = v7 + 2;
        if (v7 + 2 != v6)
        {
          do
          {
            v38 = v83;
            if (v83 != v84)
            {
              while (*(*v37 + 32) != *v38)
              {
                v38 += 36;
                if (v38 == v84)
                {
                  goto LABEL_76;
                }
              }
            }

            if (v38 != v84)
            {
              v39 = *v37;
              *v37 = 0;
              v37[1] = 0;
              v40 = v7[1];
              *v7 = v39;
              if (v40)
              {
                sub_100004A34(v40);
              }

              v7 += 2;
            }

LABEL_76:
            v37 += 2;
          }

          while (v37 != v6);
          v6 = *(v2 + 176);
        }
      }
    }

    if (v7 != v6)
    {
      while (v6 != v7)
      {
        v41 = *(v6 - 1);
        if (v41)
        {
          sub_100004A34(v41);
        }

        v6 -= 2;
      }

      *(v2 + 176) = v7;
      v42 = *(v2 + 40);
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        v80 = (v7 - *(v2 + 168)) >> 4;
        *buf = 134217984;
        *&buf[4] = v80;
        _os_log_error_impl(&_mh_execute_header, v42, OS_LOG_TYPE_ERROR, "Updated SimsOnDevice slot count to %zu", buf, 0xCu);
      }
    }
  }

LABEL_86:
  v88 = 0;
  v89 = 0;
  v90 = 0;
  v43 = *(v2 + 168);
  v44 = *(v2 + 176);
  for (v86[0] = &v88; v43 != v44; v43 += 2)
  {
    sub_10173CF60(*v43, v5, buf);
    sub_1011B6A5C(v86, buf);
    if (SHIBYTE(v107) < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v105) < 0)
    {
      operator delete(v104);
    }

    if (SHIBYTE(v103) < 0)
    {
      operator delete(v102);
    }

    if (SHIBYTE(v101) < 0)
    {
      operator delete(v100);
    }

    v91 = &v96;
    sub_100034D1C(&v91);
    if (v94[0])
    {
      v94[1] = v94[0];
      operator delete(v94[0]);
    }
  }

  v45 = v83;
  for (j = v84; v45 != j; v45 += 36)
  {
    v47 = *(v2 + 168);
    v48 = *(v2 + 176);
    if (v47 != v48)
    {
      while (*(*v47 + 32) != *v45)
      {
        v47 += 2;
        if (v47 == v48)
        {
          goto LABEL_106;
        }
      }
    }

    if (v47 == v48)
    {
LABEL_106:
      sub_1011AA720(buf);
      operator new();
    }

    v50 = *v47;
    v49 = v47[1];
    if (v49)
    {
      atomic_fetch_add_explicit(&v49->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (*v45 == 1 && *(v50 + 40) != v45[2])
    {
      *buf = _NSConcreteStackBlock;
      *&buf[8] = 0x40000000;
      v94[0] = sub_101196980;
      v94[1] = &unk_101F16578;
      v95 = (v45 + 2);
      sub_1011967D4(0x800A1);
    }

    v51 = (*(**(v2 + 56) + 16))(*(v2 + 56), v45[1]);
    sub_10173BD60(v50, v51, v45);
    v52 = *v45;
    v53 = *(v45 + 3);
    LODWORD(v92) = *v45;
    if ((v53 & 0x100000000) == 0 || subscriber::isSimAbsent())
    {
      *buf = &v92;
      v54 = sub_1011CA7D0(v2 + 592, v52);
      v55 = v54 + 6;
      sub_10006DCAC((v54 + 5), v54[6]);
      *v55 = 0;
      v55[1] = 0;
      *(v55 - 1) = v55;
    }

    sub_1011AA720(buf);
    v56 = *buf;
    v57 = *&buf[8];
    if (*buf != *&buf[8])
    {
      do
      {
        v87 = *v56;
        v58 = v87;
        v91 = &v92;
        v59 = sub_1011CA7D0(v2 + 592, v92);
        sub_10008528C((v59 + 5), v58);
        ++v56;
      }

      while (v56 != v57);
      v56 = *buf;
    }

    if (v56)
    {
      *&buf[8] = v56;
      operator delete(v56);
    }

    v86[0] = v50;
    v86[1] = v49;
    if (v49)
    {
      atomic_fetch_add_explicit(&v49->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_1011B121C(v2, v86);
    if (v49)
    {
      sub_100004A34(v49);
      atomic_fetch_add_explicit(&v49->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    *buf = _NSConcreteStackBlock;
    *&buf[8] = 0x40000000;
    v94[0] = sub_1011B2A5C;
    v94[1] = &unk_101F17E60;
    v95 = v2;
    sub_10173CBD4(v50, buf);
    if (v49)
    {
      sub_100004A34(v49);
      sub_100004A34(v49);
    }
  }

  sub_1011AF664(v2, v4, v5);
  sub_1011B1834(v2, v60, v61);
  sub_1011AFFC4(v2, &v88);
  *buf = &v88;
LABEL_165:
  sub_1000B2AF8(buf);
  *buf = &v83;
  sub_1011B65F8(buf);
  sub_1011BFD9C(&v82);
  return sub_1000049E0(&v81);
}

void sub_1011BFC4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, int a12, __int16 a13, char a14, char a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_1011BFD9C(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = (v1 + 8);
    sub_1011B65F8(&v2);
    operator delete();
  }

  return result;
}

uint64_t *sub_1011BFDFC(uint64_t *a1)
{
  v1 = *a1;
  v36 = a1;
  v37 = v1;
  v2 = *v1;
  if (*(v1 + 8))
  {
    v38 = 0;
    v39 = 0;
    v40 = 0;
    sub_1011C0374(&v38, v2 + 42);
    v3 = v39;
    if (!v39)
    {
LABEL_13:
      operator new();
    }

    v4 = *(v1 + 8);
    while (1)
    {
      while (1)
      {
        v5 = v3;
        v6 = *(v3 + 8);
        if (v6 <= v4)
        {
          break;
        }

        v3 = *v5;
        if (!*v5)
        {
          goto LABEL_13;
        }
      }

      if (v6 >= v4)
      {
        break;
      }

      v3 = *(v5 + 1);
      if (!v3)
      {
        goto LABEL_13;
      }
    }

    sub_10012BF3C((v5 + 40), (v1 + 16));
    v8 = v2[44];
    if (v8 == v40)
    {
      v9 = v2[42];
      if (v9 == v2 + 43)
      {
LABEL_79:
        sub_1011B5E7C(v39);
        goto LABEL_80;
      }

      v10 = v38;
      while (*(v9 + 8) == *(v10 + 8))
      {
        v11 = *(v9 + 64);
        v12 = *(v10 + 64);
        v13 = v11 != v12 || v11 == 0;
        if (v13)
        {
          if (v11 != v12)
          {
            break;
          }
        }

        else
        {
          v14 = *(v9 + 63);
          if (v14 >= 0)
          {
            v15 = *(v9 + 63);
          }

          else
          {
            v15 = v9[6];
          }

          v16 = *(v10 + 63);
          v17 = v16;
          if ((v16 & 0x80u) != 0)
          {
            v16 = v10[6];
          }

          if (v15 != v16)
          {
            break;
          }

          v18 = v14 >= 0 ? v9 + 5 : v9[5];
          v19 = v17 >= 0 ? v10 + 5 : v10[5];
          if (memcmp(v18, v19, v15))
          {
            break;
          }
        }

        v20 = v9[1];
        if (v20)
        {
          do
          {
            v21 = v20;
            v20 = *v20;
          }

          while (v20);
        }

        else
        {
          do
          {
            v21 = v9[2];
            v13 = *v21 == v9;
            v9 = v21;
          }

          while (!v13);
        }

        v22 = v10[1];
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
            v23 = v10[2];
            v13 = *v23 == v10;
            v10 = v23;
          }

          while (!v13);
        }

        v10 = v23;
        v9 = v21;
        if (v21 == v2 + 43)
        {
          goto LABEL_79;
        }
      }
    }

    if (v2 + 42 != &v38)
    {
      v24 = v38;
      if (v8)
      {
        v25 = v2 + 43;
        v26 = v2[42];
        v27 = v2[43];
        v2[42] = (v2 + 43);
        v27[2] = 0;
        v2[43] = 0;
        v2[44] = 0;
        if (*(v26 + 8))
        {
          v28 = *(v26 + 8);
        }

        else
        {
          v28 = v26;
        }

        *&buf = v2 + 42;
        *(&buf + 1) = v28;
        v42 = v28;
        if (!v28 || (*(&buf + 1) = sub_1000685CC(v28), v24 == &v39))
        {
          v33 = v24;
        }

        else
        {
          do
          {
            *(v28 + 32) = *(v24 + 8);
            sub_10012BF3C((v28 + 40), (v24 + 5));
            v29 = *v25;
            v30 = v2 + 43;
            v31 = v2 + 43;
            if (*v25)
            {
              do
              {
                while (1)
                {
                  v30 = v29;
                  if (*(v42 + 8) >= *(v29 + 8))
                  {
                    break;
                  }

                  v29 = *v29;
                  v31 = v30;
                  if (!*v30)
                  {
                    goto LABEL_63;
                  }
                }

                v29 = v29[1];
              }

              while (v29);
              v31 = v30 + 1;
            }

LABEL_63:
            sub_1000070DC(v2 + 42, v30, v31, v42);
            v28 = *(&buf + 1);
            v42 = *(&buf + 1);
            if (*(&buf + 1))
            {
              *(&buf + 1) = sub_1000685CC(*(&buf + 1));
            }

            v32 = v24[1];
            if (v32)
            {
              do
              {
                v33 = v32;
                v32 = *v32;
              }

              while (v32);
            }

            else
            {
              do
              {
                v33 = v24[2];
                v13 = *v33 == v24;
                v24 = v33;
              }

              while (!v13);
            }

            if (!v28)
            {
              break;
            }

            v24 = v33;
          }

          while (v33 != &v39);
        }

        sub_1011C05E4(&buf);
        v24 = v33;
      }

      if (v24 != &v39)
      {
        buf = 0uLL;
        v42 = 0;
        sub_1011C04F0();
      }
    }

    v34 = v2[41];
    if (v34)
    {
      (*(*v34 + 48))(v34, v2 + 42);
    }

    goto LABEL_79;
  }

  v7 = v2[5];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = subscriber::asString();
    _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Invalid instance %s", &buf, 0xCu);
  }

LABEL_80:
  sub_1011C0310(&v37);
  return sub_1000049E0(&v36);
}

void sub_1011C02D0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  sub_1011C0310(va1);
  sub_1000049E0(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_1011C0310(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    if (*(v1 + 40) == 1 && *(v1 + 39) < 0)
    {
      operator delete(*(v1 + 16));
    }

    operator delete();
  }

  return result;
}

void *sub_1011C0374(void *result, void *a2)
{
  result[1] = 0;
  result[2] = 0;
  *result = result + 1;
  v2 = *a2;
  if (*a2 != a2 + 1)
  {
    do
    {
      v3 = *(v2 + 8);
      v4 = result[1];
      v5 = result + 1;
      if (*result == result + 1)
      {
        goto LABEL_8;
      }

      v6 = result[1];
      v7 = result + 1;
      if (v4)
      {
        do
        {
          v5 = v6;
          v6 = v6[1];
        }

        while (v6);
      }

      else
      {
        do
        {
          v5 = v7[2];
          v8 = *v5 == v7;
          v7 = v5;
        }

        while (v8);
      }

      if (*(v5 + 8) < v3)
      {
LABEL_8:
        if (v4)
        {
          v9 = v5 + 1;
        }

        else
        {
          v9 = result + 1;
        }

        if (!*v9)
        {
LABEL_19:
          sub_1011C04F0();
        }
      }

      else
      {
        if (!v4)
        {
          goto LABEL_19;
        }

        while (1)
        {
          while (1)
          {
            v10 = v4;
            v11 = *(v4 + 32);
            if (v11 <= v3)
            {
              break;
            }

            v4 = *v10;
            if (!*v10)
            {
              goto LABEL_19;
            }
          }

          if (v11 >= v3)
          {
            break;
          }

          v4 = v10[1];
          if (!v4)
          {
            goto LABEL_19;
          }
        }
      }

      v12 = v2[1];
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
          v13 = v2[2];
          v8 = *v13 == v2;
          v2 = v13;
        }

        while (!v8);
      }

      v2 = v13;
    }

    while (v13 != a2 + 1);
  }

  return result;
}

void sub_1011C0560(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1011C057C(0, v2);
  _Unwind_Resume(a1);
}

void sub_1011C057C(char a1, void **__p)
{
  if (a1)
  {
    if (*(__p + 64) == 1 && *(__p + 63) < 0)
    {
      operator delete(__p[5]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t sub_1011C05E4(uint64_t a1)
{
  sub_1011B5E7C(*(a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      do
      {
        v2 = v3;
        v3 = *(v3 + 16);
      }

      while (v3);
      *(a1 + 8) = v2;
    }

    sub_1011B5E7C(v2);
  }

  return a1;
}

void *sub_1011C0634(void *result, void *a2)
{
  result[1] = 0;
  result[2] = 0;
  *result = result + 1;
  v2 = *a2;
  if (*a2 != a2 + 1)
  {
    do
    {
      v3 = result[1];
      v4 = result + 1;
      if (*result == result + 1)
      {
        goto LABEL_8;
      }

      v5 = result[1];
      v6 = result + 1;
      if (v3)
      {
        do
        {
          v4 = v5;
          v5 = v5[1];
        }

        while (v5);
      }

      else
      {
        do
        {
          v4 = v6[2];
          v7 = *v4 == v6;
          v6 = v4;
        }

        while (v7);
      }

      v8 = *(v2 + 7);
      if (*(v4 + 7) < v8)
      {
LABEL_8:
        if (v3)
        {
          v9 = v4 + 1;
        }

        else
        {
          v9 = result + 1;
        }

        if (!*v9)
        {
LABEL_19:
          operator new();
        }
      }

      else
      {
        if (!v3)
        {
          goto LABEL_19;
        }

        while (1)
        {
          while (1)
          {
            v10 = v3;
            v11 = *(v3 + 28);
            if (v11 <= v8)
            {
              break;
            }

            v3 = *v10;
            if (!*v10)
            {
              goto LABEL_19;
            }
          }

          if (v11 >= v8)
          {
            break;
          }

          v3 = v10[1];
          if (!v3)
          {
            goto LABEL_19;
          }
        }
      }

      v12 = v2[1];
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
          v13 = v2[2];
          v7 = *v13 == v2;
          v2 = v13;
        }

        while (!v7);
      }

      v2 = v13;
    }

    while (v13 != a2 + 1);
  }

  return result;
}

uint64_t *sub_1011C07E0(void **a1)
{
  v1 = *a1;
  v14 = a1;
  v15 = v1;
  v2 = *v1;
  v17[0] = 1;
  v18 = 0u;
  v19 = 0;
  v17[1] = v2 + 45;
  sub_1000517E4(&v18, (v2 + 49));
  v3 = v1[1];
  if (v3 != v1 + 2)
  {
    while (2)
    {
      for (i = v2[21]; ; i += 2)
      {
        if (i == v2[22])
        {
          v11 = v2[5];
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            v12 = subscriber::asString();
            *buf = 136315138;
            *&buf[4] = v12;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I %s: sim not available", buf, 0xCu);
          }

          goto LABEL_19;
        }

        v5 = *i;
        if (*(*i + 32) == *(v3 + 7))
        {
          break;
        }
      }

      v6 = i[1];
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v7 = *(v3 + 32);
      v16 = *(v5 + 36);
      *buf = &v16;
      *(sub_100051AD8(&v18, &v16) + 32) = v7;
      if (v6)
      {
        sub_100004A34(v6);
      }

      v8 = v3[1];
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
          v9 = v3[2];
          v10 = *v9 == v3;
          v3 = v9;
        }

        while (!v10);
      }

      v3 = v9;
      if (v9 != v1 + 2)
      {
        continue;
      }

      break;
    }
  }

LABEL_19:
  sub_1011CE194(v17);
  sub_1011C09FC(&v15);
  return sub_1000049E0(&v14);
}

void sub_1011C09BC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  va_copy(va2, va1);
  v5 = va_arg(va2, void);
  v7 = va_arg(va2, void);
  sub_1011CE194(va2);
  sub_1011C09FC(va1);
  sub_1000049E0(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_1011C09FC(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_100034450(*(v1 + 16));
    operator delete();
  }

  return result;
}

uint64_t *sub_1011C0A4C(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v3 = *a1;
  v23 = a1;
  v24 = v3;
  v4 = *v3;
  v5 = *(v3 + 48);
  v6 = *(v3 + 80);
  v7 = *(*v3 + 168);
  v8 = *(*v3 + 176);
  if (v7 == v8)
  {
LABEL_4:
    v9 = 0;
    v10 = 0;
  }

  else
  {
    while (1)
    {
      v9 = *v7;
      if (*(*v7 + 32) == *(v3 + 8))
      {
        break;
      }

      v7 += 2;
      if (v7 == v8)
      {
        goto LABEL_4;
      }
    }

    v10 = v7[1];
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  if (v5 == 1)
  {
    v12 = *(v3 + 12);
    *buf = _NSConcreteStackBlock;
    v26 = 0x40000000;
    v27 = sub_101196F60;
    v28 = &unk_101F165D8;
    v30 = v6;
    v29 = v12;
    sub_101196DB4(0x800A4);
  }

  else if (!v5)
  {
    sub_10173C09C(v9, 0);
    v11 = *(v3 + 12);
    *buf = _NSConcreteStackBlock;
    v26 = 0x40000000;
    v27 = sub_101196D68;
    v28 = &unk_101F165B8;
    v30 = v6;
    v29 = v11;
    sub_101196BBC(0x800A3);
  }

  v13 = *(v3 + 84);
  v14 = *(v3 + 92);
  if ((v13 & 0x100000000) != 0)
  {
    *(v9 + 59) = v13;
    if ((v14 & 0x100000000) == 0)
    {
LABEL_13:
      if (v6)
      {
        goto LABEL_14;
      }

      goto LABEL_19;
    }
  }

  else if ((v14 & 0x100000000) == 0)
  {
    goto LABEL_13;
  }

  *(v9 + 60) = v14;
  if (v6)
  {
LABEL_14:
    v15 = **(v9 + 352);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I PIN Entry result is success #sim-pin", buf, 2u);
    }

    sub_10173DC1C(v9, v3 + 56, v16);
  }

LABEL_19:
  if (v5 == 1)
  {
    v17 = *(v4 + 120);
    v18 = *(v3 + 12);
    v19 = sub_100064FC8(v9, a2, a3);
    if (*(v3 + 96))
    {
      v20 = *(v3 + 92);
    }

    else
    {
      v20 = -1;
    }

    v21 = (*v17 + 56);
  }

  else
  {
    if (v5)
    {
      goto LABEL_30;
    }

    v17 = *(v4 + 120);
    v18 = *(v3 + 12);
    v19 = sub_100064FC8(v9, a2, a3);
    if (*(v3 + 88))
    {
      v20 = *(v3 + 84);
    }

    else
    {
      v20 = -1;
    }

    v21 = (*v17 + 40);
  }

  (*v21)(v17, v18, v19, v20);
LABEL_30:
  *buf = *(v3 + 12);
  *&buf[4] = 44;
  sub_1011B3AC8(v4 + 80, buf);
  if (v10)
  {
    sub_100004A34(v10);
  }

  sub_1011C0D68(&v24);
  return sub_1000049E0(&v23);
}

void sub_1011C0D3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (v10)
  {
    sub_100004A34(v10);
  }

  sub_1011C0D68(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_1011C0D68(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    if (*(v1 + 79) < 0)
    {
      operator delete(*(v1 + 56));
    }

    v2 = *(v1 + 24);
    if (v2)
    {
      *(v1 + 32) = v2;
      operator delete(v2);
    }

    operator delete();
  }

  return result;
}

uint64_t *sub_1011C0DD0(uint64_t *a1)
{
  v1 = *a1;
  v14 = a1;
  v15 = v1;
  v2 = *v1;
  v3 = *(v1 + 72);
  v4 = *(v1 + 76);
  v6 = *(v1 + 80);
  v5 = *(v1 + 88);
  v7 = *(*v1 + 168);
  v8 = *(*v1 + 176);
  if (v7 == v8)
  {
LABEL_4:
    v9 = 0;
    v10 = 0;
  }

  else
  {
    while (1)
    {
      v9 = *v7;
      if (*(*v7 + 32) == *(v1 + 8))
      {
        break;
      }

      v7 += 2;
      if (v7 == v8)
      {
        goto LABEL_4;
      }
    }

    v10 = v7[1];
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  if ((v6 & 0x100000000) != 0)
  {
    *(v9 + 59) = v6;
    if ((v5 & 0x100000000) == 0)
    {
LABEL_9:
      if (v3)
      {
        goto LABEL_10;
      }

      goto LABEL_15;
    }
  }

  else if ((v5 & 0x100000000) == 0)
  {
    goto LABEL_9;
  }

  *(v9 + 60) = v5;
  if (v3)
  {
LABEL_10:
    v11 = **(v9 + 352);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I PIN Entry result is success #sim-pin", buf, 2u);
    }

    sub_10173DC1C(v9, v1 + 48, v12);
  }

LABEL_15:
  (*(**(v2 + 120) + 104))(*(v2 + 120), *(v1 + 12), v4);
  *buf = *(v1 + 12);
  *&buf[4] = v4;
  sub_1011B3AC8(v2 + 80, buf);
  if (v10)
  {
    sub_100004A34(v10);
  }

  sub_1011C0FF8(&v15);
  return sub_1000049E0(&v14);
}

void sub_1011C0FCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (v10)
  {
    sub_100004A34(v10);
  }

  sub_1011C0FF8(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_1011C0FF8(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    if (*(v1 + 71) < 0)
    {
      operator delete(*(v1 + 48));
    }

    v2 = *(v1 + 24);
    if (v2)
    {
      *(v1 + 32) = v2;
      operator delete(v2);
    }

    operator delete();
  }

  return result;
}

uint64_t *sub_1011C1060(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a1;
  v20 = a1;
  v21 = v8;
  v9 = *v8;
  v10 = *(v8 + 48);
  v12 = *(v8 + 80);
  v11 = *(v8 + 88);
  v13 = *(*v8 + 168);
  v14 = *(*v8 + 176);
  if (v13 == v14)
  {
LABEL_4:
    v15 = 0;
    v16 = 0;
  }

  else
  {
    while (1)
    {
      v15 = *v13;
      if (*(*v13 + 32) == *(v8 + 8))
      {
        break;
      }

      v13 += 2;
      if (v13 == v14)
      {
        goto LABEL_4;
      }
    }

    v16 = v13[1];
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  if ((v12 & 0x100000000) != 0)
  {
    *(v15 + 59) = v12;
    if ((v11 & 0x100000000) == 0)
    {
LABEL_9:
      if (v10)
      {
        goto LABEL_10;
      }

      goto LABEL_15;
    }
  }

  else if ((v11 & 0x100000000) == 0)
  {
    goto LABEL_9;
  }

  *(v15 + 60) = v11;
  if (v10)
  {
LABEL_10:
    v17 = **(v15 + 352);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I PIN Enabled Changed result is success #sim-pin", buf, 2u);
    }

    sub_10173DC1C(v15, v8 + 56, v18);
  }

LABEL_15:
  (*(**(v9 + 120) + 88))(*(v9 + 120), *(v8 + 12), a3, a4, a5, a6, a7, a8);
  if (v16)
  {
    sub_100004A34(v16);
  }

  sub_1011C1284(&v21);
  return sub_1000049E0(&v20);
}

void sub_1011C125C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (v10)
  {
    sub_100004A34(v10);
  }

  sub_1011C1284(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_1011C1284(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    if (*(v1 + 79) < 0)
    {
      operator delete(*(v1 + 56));
    }

    v2 = *(v1 + 24);
    if (v2)
    {
      *(v1 + 32) = v2;
      operator delete(v2);
    }

    operator delete();
  }

  return result;
}

uint64_t *sub_1011C12EC(_DWORD **a1)
{
  v1 = *a1;
  v8 = a1;
  v9 = v1;
  v2 = *(*v1 + 168);
  v3 = *(*v1 + 176);
  if (v2 != v3)
  {
    v4 = v1[12];
    while (1)
    {
      v5 = *v2;
      if (*(*v2 + 32) == v1[2])
      {
        break;
      }

      v2 += 2;
      if (v2 == v3)
      {
        goto LABEL_9;
      }
    }

    v6 = v2[1];
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_101413A24(v5 + 184, v4, (v1 + 13));
      sub_100004A34(v6);
    }

    else
    {
      sub_101413A24(v5 + 184, v4, (v1 + 13));
    }
  }

LABEL_9:
  sub_1011C1398(&v9);
  return sub_1000049E0(&v8);
}

uint64_t *sub_1011C1398(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = *(v1 + 24);
    if (v2)
    {
      *(v1 + 32) = v2;
      operator delete(v2);
    }

    operator delete();
  }

  return result;
}

uint64_t sub_1011C13F0(uint64_t a1, uint64_t a2)
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

uint64_t *sub_1011C1470(void *a1)
{
  v1 = *a1;
  v31 = a1;
  v32 = v1;
  v2 = *v1;
  *v33 = *(v1 + 48);
  *&v33[8] = *(v1 + 56);
  v35 = 0;
  v36 = 0;
  __p = 0;
  sub_1011B66C0(&__p, *(v1 + 64), *(v1 + 72), (*(v1 + 72) - *(v1 + 64)) >> 2);
  v37 = *(v1 + 88);
  sub_100A72FF4(v41, v1 + 96);
  v3 = *(v1 + 8);
  if (v3)
  {
    for (i = v2[21]; i != v2[22]; i += 2)
    {
      v5 = *i;
      if (*(*i + 32) == v3)
      {
        goto LABEL_16;
      }
    }

    goto LABEL_11;
  }

  v6 = *(v1 + 12);
  if (v6)
  {
    for (i = v2[21]; ; i += 2)
    {
      if (i == v2[22])
      {
        goto LABEL_11;
      }

      v5 = *i;
      if (*(*i + 36) == v6)
      {
        break;
      }
    }

LABEL_16:
    v9 = i[1];
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v10 = **(v5 + 352);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = subscriber::asString();
      v12 = subscriber::asString();
      v14 = printers::asString(&v37, v13);
      v16 = printers::asString((&v37 + 1), v15);
      *buf = 136315906;
      *&buf[4] = v11;
      *&buf[12] = 2080;
      *&buf[14] = v12;
      *&buf[22] = 2080;
      v43 = v14;
      LOWORD(v44[0]) = 2080;
      *(v44 + 2) = v16;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I handling refresh type %s for card %s, clear cache %s, rebuild cache %s", buf, 0x2Au);
    }

    LODWORD(v38) = *(v5 + 36);
    *(&v38 + 4) = *&v33[4];
    v40 = 0;
    rest::write_rest_value();
    sub_10000501C(buf, "/cc/events/sim_refresh_event");
    object = v40;
    v40 = xpc_null_create();
    ctu::RestModule::sendEvent();
    xpc_release(object);
    object = 0;
    if ((buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    xpc_release(v40);
    if (v37 == 1)
    {
      if (*v33 > 7u)
      {
        goto LABEL_40;
      }

      if (((1 << v33[0]) & 0xD2) != 0)
      {
        *&buf[8] = 0;
        *&buf[16] = 0;
        *buf = &buf[8];
        v17 = *(v5 + 32);
        v18 = v2[75];
        if (!v18)
        {
LABEL_42:
          operator new();
        }

        while (1)
        {
          while (1)
          {
            v19 = v18;
            v20 = *(v18 + 32);
            if (v20 <= v17)
            {
              break;
            }

            v18 = *v19;
            if (!*v19)
            {
              goto LABEL_42;
            }
          }

          if (v20 >= v17)
          {
            break;
          }

          v18 = v19[1];
          if (!v18)
          {
            goto LABEL_42;
          }
        }

        v25 = v19[5];
        v26 = v19 + 6;
        if (v25 != v19 + 6)
        {
          do
          {
            LODWORD(v38) = *(v25 + 7);
            v27 = v38;
            if (*&v33[4] == subscriber::getSimCardForSimFilePath())
            {
              sub_10173CD3C(v5, v27);
              sub_10008528C(buf, v27);
            }

            v28 = v25[1];
            if (v28)
            {
              do
              {
                v29 = v28;
                v28 = *v28;
              }

              while (v28);
            }

            else
            {
              do
              {
                v29 = v25[2];
                v30 = *v29 == v25;
                v25 = v29;
              }

              while (!v30);
            }

            v25 = v29;
          }

          while (v29 != v26);
        }

        *&v38 = v5;
        *(&v38 + 1) = v9;
        if (v9)
        {
          atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        goto LABEL_54;
      }

      if (((1 << v33[0]) & 0xC) != 0)
      {
        *&buf[8] = 0;
        *&buf[16] = 0;
        *buf = &buf[8];
        v21 = __p;
        v22 = v35;
        while (v21 != v22)
        {
          LODWORD(v38) = *v21;
          v23 = v38;
          sub_10173CD3C(v5, v38);
          sub_10008528C(buf, v23);
          ++v21;
        }

        *&v38 = v5;
        *(&v38 + 1) = v9;
        if (v9)
        {
          atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
        }

LABEL_54:
        sub_1011B01B0(v2, &v38, buf);
        if (v9)
        {
          sub_100004A34(v9);
        }

        sub_10006DCAC(buf, *&buf[8]);
        goto LABEL_57;
      }

      if (*v33 != 5)
      {
LABEL_40:
        v24 = **(v5 + 352);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Invalid refresh type", buf, 2u);
        }
      }
    }

LABEL_57:
    if (HIBYTE(v37) == 1)
    {
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      *buf = _NSConcreteStackBlock;
      *&buf[8] = 0x40000000;
      *&buf[16] = sub_1011B2A5C;
      v43 = &unk_101F17E60;
      v44[0] = v2;
      sub_10173CBD4(v5, buf);
      if (v9)
      {
        sub_100004A34(v9);
      }
    }

    sub_100A6AC68(v41, *(v1 + 12));
    if (v9)
    {
      sub_100004A34(v9);
    }

    goto LABEL_13;
  }

LABEL_11:
  v7 = v2[5];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Cannot find sim", buf, 2u);
  }

LABEL_13:
  sub_100A6EFFC(v41);
  if (__p)
  {
    v35 = __p;
    operator delete(__p);
  }

  sub_1011C1AEC(&v32);
  return sub_1000049E0(&v31);
}

void sub_1011C19F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, xpc_object_t object, xpc_object_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, void *a26, int a27, __int16 a28, char a29, char a30)
{
  if (v30)
  {
    sub_100004A34(v30);
  }

  sub_10006DCAC(&a25, a26);
  if (v30)
  {
    sub_100004A34(v30);
  }

  sub_100A6EFFC(&a21);
  if (__p)
  {
    a14 = __p;
    operator delete(__p);
  }

  sub_1011C1AEC(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

void *sub_1011C1AEC(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_100A6EFFC((v1 + 12));
    v2 = v1[8];
    if (v2)
    {
      v1[9] = v2;
      operator delete(v2);
    }

    v3 = v1[3];
    if (v3)
    {
      v1[4] = v3;
      operator delete(v3);
    }

    operator delete();
  }

  return result;
}

uint64_t *sub_1011C1B5C(uint64_t *a1)
{
  v1 = *a1;
  v14 = a1;
  v15 = v1;
  v2 = *v1;
  memset(&v27[1], 0, 32);
  v28 = 0u;
  v33 = 0u;
  v32 = 0u;
  memset(&v30, 0, sizeof(v30));
  v29 = 0u;
  v31 = 23;
  qmemcpy(&v27[2] + 7, "\tSIM", 4);
  LOBYTE(v27[1]) = 121;
  v27[0] = *"Telephony";
  BYTE7(v28) = 3;
  std::string::operator=((&v28 + 8), (v1 + 8));
  std::string::operator=(&v30, (v1 + 32));
  __dst = &v31;
  v17 = 0;
  sub_1001E9F04(&__dst, 5uLL);
  v31 |= 0x11uLL;
  ServiceMap = Registry::getServiceMap(*(v2 + 64));
  v4 = ServiceMap;
  if (v5 < 0)
  {
    v6 = (v5 & 0x7FFFFFFFFFFFFFFFLL);
    v7 = 5381;
    do
    {
      v5 = v7;
      v8 = *v6++;
      v7 = (33 * v7) ^ v8;
    }

    while (v8);
  }

  std::mutex::lock(ServiceMap);
  __dst = v5;
  v9 = sub_100009510(&v4[1].__m_.__sig, &__dst);
  if (v9)
  {
    v11 = v9[3];
    v10 = v9[4];
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v4);
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v10);
      v12 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v11 = 0;
  }

  std::mutex::unlock(v4);
  v10 = 0;
  v12 = 1;
LABEL_9:
  sub_100D9EC48(&__dst, v27);
  v35 = 0;
  (*(*v11 + 16))(v11, &__dst, v34);
  sub_10010DF14(v34);
  if (v26 < 0)
  {
    operator delete(__p);
  }

  if (v24 < 0)
  {
    operator delete(v23);
  }

  if (v22 < 0)
  {
    operator delete(v21);
  }

  if (v20 < 0)
  {
    operator delete(v19);
  }

  if ((v18 & 0x80000000) == 0)
  {
    if (v12)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  operator delete(__dst);
  if ((v12 & 1) == 0)
  {
LABEL_19:
    sub_100004A34(v10);
  }

LABEL_20:
  if (SBYTE7(v33) < 0)
  {
    operator delete(v32);
  }

  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v29) < 0)
  {
    operator delete(*(&v28 + 1));
  }

  if (SBYTE7(v28) < 0)
  {
    operator delete(v27[3]);
  }

  if (SHIBYTE(v27[2]) < 0)
  {
    operator delete(v27[0]);
  }

  sub_1011C1E7C(&v15);
  return sub_1000049E0(&v14);
}

void sub_1011C1E14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  sub_10010DF14(v31 - 88);
  sub_100D9E764(&a12);
  if ((v30 & 1) == 0)
  {
    sub_100004A34(v29);
  }

  sub_100D9E764(&a29);
  sub_1011C1E7C(&a11);
  sub_1000049E0(&a10);
  _Unwind_Resume(a1);
}

uint64_t *sub_1011C1E7C(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
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

void sub_1011C1EE4(void *a1)
{
  v1 = *a1;
  v9 = a1;
  v10 = v1;
  v2 = *v1;
  sub_10000501C(&v15, "SimInfo::SIM_PIN_");
  v3 = *(v1 + 31);
  if (v3 >= 0)
  {
    v4 = (v1 + 1);
  }

  else
  {
    v4 = v1[1];
  }

  if (v3 >= 0)
  {
    v5 = *(v1 + 31);
  }

  else
  {
    v5 = v1[2];
  }

  v6 = std::string::append(&v15, v4, v5);
  v7 = *&v6->__r_.__value_.__l.__data_;
  v14 = v6->__r_.__value_.__r.__words[2];
  *v13 = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  v11 = v2;
  if (*(v1 + 31) < 0)
  {
    sub_100005F2C(__p, v1[1], v1[2]);
  }

  else
  {
    v8 = *(v1 + 1);
    __p[2] = v1[3];
    *__p = v8;
  }

  v16 = 0;
  operator new();
}

void sub_1011C20B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  operator delete(v29);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  sub_1000EF424(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_1011C2130(uint64_t a1)
{
  *a1 = off_101F188B8;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

void sub_1011C2180(uint64_t a1)
{
  *a1 = off_101F188B8;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  operator delete();
}

char *sub_1011C228C(char *result, uint64_t a2)
{
  v2 = *(result + 1);
  *a2 = off_101F188B8;
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

void sub_1011C22D8(uint64_t a1)
{
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }
}

void sub_1011C22EC(void **__p)
{
  if (*(__p + 39) < 0)
  {
    operator delete(__p[2]);
  }

  operator delete(__p);
}

void sub_1011C2330(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (*(a1 + 39) < 0)
  {
    sub_100005F2C(v4, *(a1 + 16), *(a1 + 24));
  }

  else
  {
    *v4 = *(a1 + 16);
    v4[2] = *(a1 + 32);
  }

  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    __p[2] = *(a2 + 16);
  }

  v6[0] = 0;
  v6[1] = 0;
  sub_100004AA0(v6, (v3 + 8));
  operator new();
}

void sub_1011C24E4(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (*(v16 + 31) < 0)
  {
    operator delete(*v17);
  }

  sub_10004F058(a1);
}

uint64_t sub_1011C2528(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_1011C2574(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v3 = *a1;
  v20 = a1;
  v21 = v3;
  v4 = *v3;
  if ((*(v3 + 55) & 0x8000000000000000) == 0)
  {
    if (*(v3 + 55))
    {
      goto LABEL_3;
    }

LABEL_30:
    v16 = *(v4 + 40);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v19 = (v3 + 8);
      if (*(v3 + 31) < 0)
      {
        v19 = *v19;
      }

      LODWORD(__p) = 136315138;
      *(&__p + 4) = v19;
      _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Pin not available for:(%s)", &__p, 0xCu);
    }

    goto LABEL_31;
  }

  if (!*(v3 + 40))
  {
    goto LABEL_30;
  }

LABEL_3:
  v5 = *(v3 + 31);
  if ((v5 & 0x80u) != 0)
  {
    v5 = *(v3 + 16);
  }

  if (!v5 || (v6 = *(v4 + 168), v7 = *(v4 + 176), v6 == v7))
  {
LABEL_25:
    v14 = 0;
    goto LABEL_26;
  }

  while (1)
  {
    sub_10173C120(*v6, a3, &__p);
    v8 = v23;
    if ((v23 & 0x80u) == 0)
    {
      a3 = v23;
    }

    else
    {
      a3 = *(&__p + 1);
    }

    v9 = *(v3 + 31);
    v10 = v9;
    if ((v9 & 0x80u) != 0)
    {
      v9 = *(v3 + 16);
    }

    if (a3 != v9)
    {
      v13 = 0;
      if ((v23 & 0x80000000) == 0)
      {
        goto LABEL_23;
      }

LABEL_22:
      operator delete(__p);
      goto LABEL_23;
    }

    if ((v23 & 0x80u) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if (v10 >= 0)
    {
      v12 = (v3 + 8);
    }

    else
    {
      v12 = *(v3 + 8);
    }

    v13 = memcmp(p_p, v12, a3) == 0;
    if (v8 < 0)
    {
      goto LABEL_22;
    }

LABEL_23:
    if (v13)
    {
      break;
    }

    v6 += 16;
    if (v6 == v7)
    {
      goto LABEL_25;
    }
  }

  v18 = *v6;
  v14 = *(v6 + 8);
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v18)
  {
    LODWORD(__p) = *(v18 + 13);
    if ((subscriber::isEsimCapable() & 1) == 0)
    {
      v15 = *(v18 + 8) | &_mh_execute_header;
      goto LABEL_27;
    }
  }

LABEL_26:
  v15 = 0x100000002;
LABEL_27:
  (*(**(v4 + 104) + 160))(*(v4 + 104), v15, v3 + 8, v3 + 32);
  if (v14)
  {
    sub_100004A34(v14);
  }

LABEL_31:
  sub_10036FBEC(&v21);
  return sub_1000049E0(&v20);
}

void sub_1011C27A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (v10)
  {
    sub_100004A34(v10);
  }

  sub_10036FBEC(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_1011C27D4(uint64_t a1)
{
  result = (*(**(a1 + 40) + 16))();
  **(a1 + 32) = result;
  return result;
}

unint64_t sub_1011C2810(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*v1 + 168);
  v3 = *(*v1 + 176);
  if (v2 == v3)
  {
    return 0;
  }

  v4 = v1[2];
  while (1)
  {
    v5 = *v2;
    if (*(*v2 + 36) == v4)
    {
      break;
    }

    v2 += 2;
    if (v2 == v3)
    {
      return 0;
    }
  }

  v7 = v2[1];
  if (!v7)
  {
    return *(v5 + 32) | (*(v5 + 52) << 32);
  }

  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  v6 = *(v5 + 32) | (*(v5 + 52) << 32);
  sub_100004A34(v7);
  return v6;
}

uint64_t sub_1011C28A0(uint64_t a1)
{
  result = (*(**(a1 + 40) + 16))();
  **(a1 + 32) = result;
  return result;
}

uint64_t sub_1011C28DC(uint64_t a1)
{
  result = (*(**(a1 + 40) + 16))();
  **(a1 + 32) = result;
  return result;
}

uint64_t *sub_1011C2918(uint64_t **a1)
{
  v1 = *a1;
  v11 = a1;
  v12 = v1;
  v2 = *(*v1 + 168);
  v3 = *(*v1 + 176);
  if (v2 == v3)
  {
LABEL_9:
    v7 = 1;
    v8 = 1;
  }

  else
  {
    v4 = *(*v1 + 168);
    do
    {
      v5 = *v4;
      if (*(*v4 + 32) == 1)
      {
        v9 = v4[1];
        if (v9)
        {
          atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_1011C2A8C(v1[4], *(v5 + 40));
        if (v9)
        {
          sub_100004A34(v9);
        }

        goto LABEL_15;
      }

      v4 += 2;
    }

    while (v4 != v3);
    if (v2 == v3)
    {
      goto LABEL_9;
    }

    while (1)
    {
      v6 = *(*v2 + 52);
      if (v6 < 3)
      {
        break;
      }

      v2 += 2;
      if (v2 == v3)
      {
        v7 = 0;
        v8 = 0;
        goto LABEL_10;
      }
    }

    v7 = 1;
    v8 = 1u >> (v6 & 7);
  }

LABEL_10:
  sub_1011C2A8C(v1[4], (v7 | v8) ^ 1);
LABEL_15:
  sub_1011C2A3C(&v12);
  return sub_1000049E0(&v11);
}

void sub_1011C2A0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (v10)
  {
    sub_100004A34(v10);
  }

  sub_1011C2A3C(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_1011C2A3C(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_1011B675C(v1 + 8);
    operator delete();
  }

  return result;
}

uint64_t sub_1011C2A8C(uint64_t a1, int a2)
{
  v3 = a2;
  if (!a1)
  {
    sub_100022DB4();
  }

  return (*(*a1 + 48))(a1, &v3);
}

uint64_t sub_1011C2ADC(uint64_t a1)
{
  v1 = **(a1 + 40);
  v2 = *(v1 + 168);
  v3 = *(v1 + 176);
  if (v2 == v3)
  {
    v5 = 0;
    v6 = 0;
  }

  else
  {
    while (1)
    {
      v4 = *(*v2 + 52);
      if (v4 < 3)
      {
        break;
      }

      v2 += 16;
      if (v2 == v3)
      {
        v5 = 1;
        v6 = 1;
        return v5 | (v6 << 8);
      }
    }

    v5 = 0;
    v6 = 0x10100u >> (8 * v4);
  }

  return v5 | (v6 << 8);
}

uint64_t sub_1011C2B40(uint64_t a1)
{
  result = (*(**(a1 + 40) + 16))();
  **(a1 + 32) = result;
  return result;
}

uint64_t sub_1011C2B7C(uint64_t a1)
{
  result = (*(**(a1 + 40) + 16))();
  **(a1 + 32) = result;
  return result;
}

uint64_t *sub_1011C2BB8(uint64_t *a1)
{
  v1 = *a1;
  v74 = a1;
  v75 = v1;
  v2 = *v1;
  if (subscriber::isValidSimSlot())
  {
    v3 = dispatch_group_create();
    v4 = v3;
    if (v3)
    {
      dispatch_retain(v3);
      dispatch_group_enter(v4);
      v5 = *(v1 + 8);
      dispatch_retain(v4);
      dispatch_group_enter(v4);
    }

    else
    {
      v5 = *(v1 + 8);
    }

    v76 = 0;
    v80 = v5;
    if (*(v2 + 488) != 1 || (v8 = *(v2 + 504)) == 0)
    {
LABEL_16:
      v10 = *(*(**(v2 + 56) + 16))(*(v2 + 56), v5);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v19 = *(v2 + 488);
        v20 = *(v2 + 504);
        if (v20)
        {
          v21 = 1;
          do
          {
            v22 = *(v20 + 8);
            if (v22 <= v5)
            {
              if (v22 >= v5)
              {
                goto LABEL_37;
              }

              ++v20;
            }

            v20 = *v20;
          }

          while (v20);
        }

        v21 = 0;
LABEL_37:
        *buf = 67109376;
        *&buf[4] = v19;
        *&buf[8] = 2048;
        *&buf[10] = v21;
        _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Unable to supply dictionary; MEID(ready=%d) and IMEI(ready=%lu)", buf, 0x12u);
      }

      v11 = 0;
      v76 = 0;
      if (!v4)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }

    while (1)
    {
      v9 = *(v8 + 8);
      if (v9 <= v5)
      {
        if (v9 >= v5)
        {
          *v79 = 0;
          Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
          if (!Mutable)
          {
            v23 = *(*(**(v2 + 56) + 16))(*(v2 + 56), v80);
            if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Failed to create CFMutableDictionarySharedRef", buf, 2u);
            }

            v11 = 0;
            v76 = 0;
            goto LABEL_146;
          }

          v14 = *v79;
          *v79 = Mutable;
          *buf = v14;
          sub_1000296E0(buf);
          v15 = subscriber::simSlotAsInstance();
          sub_1011AF5B0(*v79, @"kCTMobileEquipmentInfoSlotId", v15, kCFAllocatorDefault);
          v16 = sub_100007DEC(v2 + 496, &v80);
          sub_1011AF38C(*v79, @"kCTMobileEquipmentInfoIMEI", v16);
          v77[0] = 0;
          v77[1] = 0;
          v78 = 0;
          sub_1011AF438(v2, v80, 0, v77);
          sub_1011AF38C(*v79, @"kCTMobileEquipmentInfoICCID", v77);
          v17 = v80;
          v18 = *v79;
          if (v4)
          {
            dispatch_retain(v4);
            dispatch_group_enter(v4);
          }

          if (v18)
          {
            if (*(v2 + 488) == 1)
            {
              if (*(v2 + 487) < 0)
              {
                v25 = *(v2 + 472);
                if (v25)
                {
                  sub_100005F2C(buf, *(v2 + 464), v25);
                  goto LABEL_45;
                }
              }

              else if (*(v2 + 487))
              {
                *buf = *(v2 + 464);
                *&buf[16] = *(v2 + 480);
LABEL_45:
                sub_1010C4F2C(v18, @"kCTMobileEquipmentInfoMEID");
                if (buf[23] < 0)
                {
                  operator delete(*buf);
                }
              }
            }

            for (i = *(v2 + 168); ; i += 2)
            {
              if (i == *(v2 + 176))
              {
                goto LABEL_106;
              }

              v27 = *i;
              if (*(*i + 36) == v17)
              {
                break;
              }
            }

            v28 = i[1];
            if (v28)
            {
              atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v29 = *(v2 + 552);
            v73 = v28;
            if (v29)
            {
              v30 = v2 + 552;
              do
              {
                if (*(v29 + 28) >= v17)
                {
                  v30 = v29;
                }

                v29 = *(v29 + 8 * (*(v29 + 28) < v17));
              }

              while (v29);
              if (v30 != v2 + 552 && *(v30 + 28) <= v17 && *(v30 + 32))
              {
                sub_1011AF5B0(v18, @"kCTMobileEquipmentInfoPRLVersion", *(v30 + 32), kCFAllocatorDefault);
              }
            }

            v31 = *(v2 + 528);
            if (v31)
            {
              v32 = v2 + 528;
              do
              {
                if (*(v31 + 32) >= v17)
                {
                  v32 = v31;
                }

                v31 = *(v31 + 8 * (*(v31 + 32) < v17));
              }

              while (v31);
              if (v32 != v2 + 528 && *(v32 + 32) <= v17)
              {
                sub_1011AF38C(v18, @"kCTMobileEquipmentInfoMIN", v32 + 40);
              }
            }

            ServiceMap = Registry::getServiceMap(*(v2 + 64));
            v34 = ServiceMap;
            if (v35 < 0)
            {
              v36 = (v35 & 0x7FFFFFFFFFFFFFFFLL);
              v37 = 5381;
              do
              {
                v35 = v37;
                v38 = *v36++;
                v37 = (33 * v37) ^ v38;
              }

              while (v38);
            }

            std::mutex::lock(ServiceMap);
            *buf = v35;
            v39 = sub_100009510(&v34[1].__m_.__sig, buf);
            if (v39)
            {
              v41 = v39[3];
              v40 = v39[4];
              if (v40)
              {
                atomic_fetch_add_explicit(&v40->__shared_owners_, 1uLL, memory_order_relaxed);
                std::mutex::unlock(v34);
                atomic_fetch_add_explicit(&v40->__shared_owners_, 1uLL, memory_order_relaxed);
                sub_100004A34(v40);
                v72 = 0;
LABEL_78:
                v71 = v40;
                v42 = v73;
                v43 = v18;
                if (v41)
                {
                  memset(buf, 0, sizeof(buf));
                  (*(*v41 + 328))(buf, v41, v17);
                  sub_1011AF38C(v18, @"kCTMobileEquipmentInfoNAI", buf);
                  if (buf[23] < 0)
                  {
                    operator delete(*buf);
                  }
                }

                if (*(v27 + 96) == 4)
                {
                  v87[0] = 0;
                  v87[1] = 0;
                  v88 = 0;
                  sub_1011AF438(v2, v17, 12, v87);
                  sub_1011AF38C(v18, @"kCTMobileEquipmentInfo1xIMSI", v87);
                  __p[0] = 0;
                  __p[1] = 0;
                  v86 = 0;
                  sub_1011AF438(v2, v17, 11, __p);
                  sub_1011AF38C(v18, @"kCTMobileEquipmentInfoEUIMID", __p);
                  v44 = Registry::getServiceMap(*(v2 + 64));
                  v45 = v44;
                  if (v46 < 0)
                  {
                    v47 = (v46 & 0x7FFFFFFFFFFFFFFFLL);
                    v48 = 5381;
                    do
                    {
                      v46 = v48;
                      v49 = *v47++;
                      v48 = (33 * v48) ^ v49;
                    }

                    while (v49);
                  }

                  std::mutex::lock(v44);
                  *buf = v46;
                  v50 = sub_100009510(&v45[1].__m_.__sig, buf);
                  if (v50)
                  {
                    v52 = v50[3];
                    v51 = v50[4];
                    if (v51)
                    {
                      v53 = v50[4];
                      v54 = (v51 + 8);
                      atomic_fetch_add_explicit((v51 + 8), 1uLL, memory_order_relaxed);
                      std::mutex::unlock(v45);
                      atomic_fetch_add_explicit(v54, 1uLL, memory_order_relaxed);
                      v55 = v53;
                      v42 = v73;
                      sub_100004A34(v55);
                      v56 = 0;
                      goto LABEL_90;
                    }
                  }

                  else
                  {
                    v52 = 0;
                  }

                  std::mutex::unlock(v45);
                  v55 = 0;
                  v56 = 1;
LABEL_90:
                  if (v52)
                  {
                    sub_100004AA0(buf, (v2 + 8));
                    v57 = *&buf[8];
                    v81 = *buf;
                    v82 = *&buf[8];
                    if (*&buf[8])
                    {
                      atomic_fetch_add_explicit((*&buf[8] + 16), 1uLL, memory_order_relaxed);
                      sub_100004A34(v57);
                    }

                    v83 = v43;
                    group = v4;
                    if (v4)
                    {
                      dispatch_retain(v4);
                      dispatch_group_enter(v4);
                    }

                    v90 = 0;
                    operator new();
                  }

                  if ((v56 & 1) == 0)
                  {
                    sub_100004A34(v55);
                  }

                  if (SHIBYTE(v86) < 0)
                  {
                    operator delete(__p[0]);
                  }

                  if (SHIBYTE(v88) < 0)
                  {
                    operator delete(v87[0]);
                  }
                }

                if ((v72 & 1) == 0)
                {
                  sub_100004A34(v71);
                }

                if (v42)
                {
                  sub_100004A34(v42);
                }

LABEL_106:
                if (v4)
                {
                  dispatch_group_leave(v4);
                  dispatch_release(v4);
                  v58 = v80;
                  v59 = *v79;
                  dispatch_retain(v4);
                  dispatch_group_enter(v4);
                }

                else
                {
                  v58 = v80;
                  v59 = *v79;
                }

                if (v59)
                {
                  for (j = *(v2 + 168); j != *(v2 + 176); j += 2)
                  {
                    v61 = *j;
                    if (*(*j + 36) == v58)
                    {
                      v64 = j[1];
                      if (v64)
                      {
                        atomic_fetch_add_explicit(&v64->__shared_owners_, 1uLL, memory_order_relaxed);
                      }

                      if (*(v61 + 64) == 4)
                      {
                        memset(buf, 0, sizeof(buf));
                        sub_1011AF438(v2, v58, 3, buf);
                        sub_1011AF38C(v59, @"kCTMobileEquipmentInfoIMSI", buf);
                        if (buf[23] < 0)
                        {
                          operator delete(*buf);
                        }
                      }

                      if (v64)
                      {
                        sub_100004A34(v64);
                      }

LABEL_126:
                      if (v4)
                      {
                        dispatch_group_leave(v4);
                        dispatch_release(v4);
                        v65 = v80;
                        v66 = *v79;
                        dispatch_retain(v4);
                        dispatch_group_enter(v4);
                      }

                      else
                      {
                        v65 = v80;
                        v66 = *v79;
                      }

                      if (v66)
                      {
                        v67 = *(v2 + 576);
                        if (v67)
                        {
                          v68 = v2 + 576;
                          do
                          {
                            if (*(v67 + 28) >= v65)
                            {
                              v68 = v67;
                            }

                            v67 = *(v67 + 8 * (*(v67 + 28) < v65));
                          }

                          while (v67);
                          if (v68 != v2 + 576 && *(v68 + 28) <= v65)
                          {
                            v69 = *(v68 + 32);
                            if (v69 == 3)
                            {
                              sub_1011AF33C(v66, @"kCTMobileEquipmentInfoMEID", @"kCTMobileEquipmentInfoCurrentMobileId");
                              if (!sub_1011AF33C(v66, @"kCTMobileEquipmentInfoMIN", @"kCTMobileEquipmentInfoCurrentSubscriberId"))
                              {
                                sub_1011AF33C(v66, @"kCTMobileEquipmentInfo1xIMSI", @"kCTMobileEquipmentInfoCurrentSubscriberId");
                              }
                            }

                            else if ((v69 - 1) <= 1)
                            {
                              sub_1011AF33C(v66, @"kCTMobileEquipmentInfoIMSI", @"kCTMobileEquipmentInfoCurrentSubscriberId");
                              sub_1011AF33C(v66, @"kCTMobileEquipmentInfoIMEI", @"kCTMobileEquipmentInfoCurrentMobileId");
                            }
                          }
                        }
                      }

                      else
                      {
                        v70 = *(v2 + 40);
                        if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
                        {
                          *buf = 0;
                          _os_log_error_impl(&_mh_execute_header, v70, OS_LOG_TYPE_ERROR, "dict is null", buf, 2u);
                        }
                      }

                      if (v4)
                      {
                        dispatch_group_leave(v4);
                        dispatch_release(v4);
                      }

                      v11 = *v79;
                      v76 = *v79;
                      *v79 = 0;
                      if (SHIBYTE(v78) < 0)
                      {
                        operator delete(v77[0]);
                      }

LABEL_146:
                      sub_1000296E0(v79);
                      if (!v4)
                      {
LABEL_19:
                        *buf = v11;
                        if (v11)
                        {
                          CFRetain(v11);
                        }

                        sub_100063614(&buf[8], v1 + 16);
                        operator new();
                      }

LABEL_18:
                      dispatch_group_leave(v4);
                      dispatch_release(v4);
                      goto LABEL_19;
                    }
                  }

                  v62 = *(*(**(v2 + 56) + 16))(*(v2 + 56), v58);
                  if (!os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
                  {
                    goto LABEL_126;
                  }

                  *buf = 0;
                  v63 = "Sim specific information not available";
                }

                else
                {
                  v62 = *(*(**(v2 + 56) + 16))(*(v2 + 56), v58);
                  if (!os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
                  {
                    goto LABEL_126;
                  }

                  *buf = 0;
                  v63 = "dict is null";
                }

                _os_log_error_impl(&_mh_execute_header, v62, OS_LOG_TYPE_ERROR, v63, buf, 2u);
                goto LABEL_126;
              }
            }

            else
            {
              v41 = 0;
            }

            std::mutex::unlock(v34);
            v40 = 0;
            v72 = 1;
            goto LABEL_78;
          }

          v24 = *(*(**(v2 + 56) + 16))(*(v2 + 56), v17);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "dict is null", buf, 2u);
          }

          goto LABEL_106;
        }

        ++v8;
      }

      v8 = *v8;
      if (!v8)
      {
        goto LABEL_16;
      }
    }
  }

  v6 = *(v2 + 40);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    *&buf[4] = subscriber::asString();
    _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Invalid slot %s for copyMobileEquipmentInfo", buf, 0xCu);
  }

  *buf = 0;
  v7 = *(v1 + 40);
  if (!v7)
  {
    sub_100022DB4();
  }

  (*(*v7 + 48))(v7, buf);
  sub_10001021C(buf);
  sub_100064C94(&v75);
  return sub_1000049E0(&v74);
}