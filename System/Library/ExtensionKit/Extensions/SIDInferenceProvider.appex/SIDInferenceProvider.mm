void sub_100001D04(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  sub_1000034A4(va);
  sub_1000034A4(va1);

  _Unwind_Resume(a1);
}

void sub_100002FE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_1000034A4(v23);
  _Unwind_Resume(a1);
}

void *sub_1000032A0(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_100003318(result, a2);
  }

  return result;
}

void sub_1000032FC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_100003318(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    sub_10000336C(a1, a2);
  }

  sub_100003354();
}

void sub_10000336C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_100003458();
}

void sub_1000033C8(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_100003424(exception, a1);
}

std::logic_error *sub_100003424(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  return result;
}

void sub_100003458()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
}

uint64_t sub_1000034A4(uint64_t a1)
{
  sub_1000034E0(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_1000034E0(int a1, void **__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void sub_10000352C(uint64_t a1)
{
  if (*(a1 + 24))
  {
    sub_1000034E0(a1, *(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

uint64_t sub_100003588(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  sub_100003600(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    sub_100003854(a1, i + 2);
  }

  return a1;
}

void sub_100003600(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      sub_1000036F0(a1, prime);
    }
  }
}

void sub_1000036F0(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    sub_100003458();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

const void **sub_100003854(void *a1, const void **a2)
{
  v4 = sub_100003B74(a1, a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    sub_100003AB4();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!sub_100004020(a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_100003A90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    sub_10000413C(&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100003B58(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_10000413C(v3, v2);
  _Unwind_Resume(a1);
}

unint64_t sub_100003B74(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v3 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v3 = v2;
  }

  return sub_100003BB4(&v5, a2, v3);
}

unint64_t sub_100003BB4(uint64_t a1, uint64_t *a2, unint64_t a3)
{
  if (a3 > 0x20)
  {
    if (a3 > 0x40)
    {
      v4 = *(a2 + a3 - 48);
      v5 = *(a2 + a3 - 40);
      v6 = *(a2 + a3 - 24);
      v7 = *(a2 + a3 - 56);
      v8 = *(a2 + a3 - 16);
      v9 = *(a2 + a3 - 8);
      v10 = v7 + v8;
      v11 = 0x9DDFEA08EB382D69 * (v6 ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))));
      v12 = 0x9DDFEA08EB382D69 * (v11 ^ (v11 >> 47));
      v13 = *(a2 + a3 - 64) + a3;
      v14 = v13 + v7 + v4;
      v15 = __ROR8__(v14, 44) + v13;
      v16 = __ROR8__(v5 + v13 + v12, 21);
      v17 = v14 + v5;
      v18 = v15 + v16;
      v19 = v10 + *(a2 + a3 - 32) - 0x4B6D499041670D8DLL;
      v20 = v19 + v6 + v8;
      v21 = v20 + v9;
      v22 = __ROR8__(v20, 44) + v19 + __ROR8__(v19 + v5 + v9, 21);
      v24 = *a2;
      v23 = a2 + 4;
      v25 = v24 - 0x4B6D499041670D8DLL * v5;
      v26 = -((a3 - 1) & 0xFFFFFFFFFFFFFFC0);
      do
      {
        v27 = *(v23 - 3);
        v28 = v25 + v17 + v10 + v27;
        v29 = v23[2];
        v30 = v23[3];
        v31 = v23[1];
        v10 = v31 + v17 - 0x4B6D499041670D8DLL * __ROR8__(v10 + v18 + v29, 42);
        v32 = v12 + v21;
        v33 = *(v23 - 2);
        v34 = *(v23 - 1);
        v35 = *(v23 - 4) - 0x4B6D499041670D8DLL * v18;
        v36 = v35 + v21 + v34;
        v37 = v35 + v27 + v33;
        v17 = v37 + v34;
        v38 = __ROR8__(v37, 44) + v35;
        v39 = (0xB492B66FBE98F273 * __ROR8__(v28, 37)) ^ v22;
        v25 = 0xB492B66FBE98F273 * __ROR8__(v32, 33);
        v18 = v38 + __ROR8__(v36 + v39, 21);
        v40 = v25 + v22 + *v23;
        v21 = v40 + v31 + v29 + v30;
        v22 = __ROR8__(v40 + v31 + v29, 44) + v40 + __ROR8__(v10 + v33 + v40 + v30, 21);
        v23 += 8;
        v12 = v39;
        v26 += 64;
      }

      while (v26);
      v41 = v39 - 0x4B6D499041670D8DLL * (v10 ^ (v10 >> 47)) - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) ^ ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) >> 47));
      v42 = v25 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) ^ ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) >> 47));
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) ^ ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) >> 47));
    }

    else
    {
      return sub_100003F60(a2, a3);
    }
  }

  else if (a3 > 0x10)
  {
    return sub_100003EB4(a2, a3);
  }

  else
  {
    return sub_100003DBC(a2, a3);
  }
}

unint64_t sub_100003DBC(_DWORD *a1, unint64_t a2)
{
  if (a2 < 9)
  {
    if (a2 < 4)
    {
      result = 0x9AE16A3B2F90404FLL;
      if (a2)
      {
        v8 = (0xC949D7C7509E6557 * (a2 | (4 * *(a1 + a2 - 1)))) ^ (0x9AE16A3B2F90404FLL * (*a1 | (*(a1 + (a2 >> 1)) << 8)));
        return 0x9AE16A3B2F90404FLL * (v8 ^ (v8 >> 47));
      }
    }

    else
    {
      v6 = *(a1 + a2 - 4);
      v7 = 0x9DDFEA08EB382D69 * (((8 * *a1) + a2) ^ v6);
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 47));
    }
  }

  else
  {
    v3 = *(a1 + a2 - 8);
    v4 = __ROR8__(v3 + a2, a2);
    return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) ^ ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) >> 47))) ^ v3;
  }

  return result;
}

unint64_t sub_100003EB4(void *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = 0xB492B66FBE98F273 * *a1;
  v4 = __ROR8__(0x9AE16A3B2F90404FLL * *(a1 + a2 - 8), 30) + __ROR8__(v3 - v2, 43);
  v5 = v3 + a2 + __ROR8__(v2 ^ 0xC949D7C7509E6557, 20) - 0x9AE16A3B2F90404FLL * *(a1 + a2 - 8);
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (v4 - 0x3C5A37A36834CED9 * *(a1 + a2 - 16)));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
}

unint64_t sub_100003F60(void *a1, uint64_t a2)
{
  v2 = *(a1 + a2 - 16);
  v3 = *a1 - 0x3C5A37A36834CED9 * (v2 + a2);
  v5 = a1[2];
  v4 = a1[3];
  v6 = __ROR8__(v3 + v4, 52);
  v7 = v3 + a1[1];
  v8 = __ROR8__(v7, 7);
  v9 = v7 + v5;
  v10 = *(a1 + a2 - 32) + v5;
  v11 = v8 + __ROR8__(*a1 - 0x3C5A37A36834CED9 * (v2 + a2), 37) + v6 + __ROR8__(v9, 31);
  v12 = *(a1 + a2 - 24) + v10 + v2;
  v13 = 0xC3A5C85C97CB3127 * (v12 + *(a1 + a2 - 8) + v4 + v11) - 0x651E95C4D06FBFB1 * (v9 + v4 + __ROR8__(v10, 37) + __ROR8__(*(a1 + a2 - 24) + v10, 7) + __ROR8__(*(a1 + a2 - 8) + v4 + v10, 52) + __ROR8__(v12, 31));
  return 0x9AE16A3B2F90404FLL * ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) ^ ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) >> 47));
}

BOOL sub_100004020(uint64_t a1, const void **a2, const void **a3)
{
  v3 = *(a2 + 23);
  v4 = v3;
  if ((v3 & 0x80u) != 0)
  {
    v3 = a2[1];
  }

  v5 = *(a3 + 23);
  v6 = v5;
  if (v5 < 0)
  {
    v5 = a3[1];
  }

  if (v3 != v5)
  {
    return 0;
  }

  if (v4 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if (v6 >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  return memcmp(v7, v8, v3) == 0;
}

void *sub_100004098(_BYTE *__dst, void *__src, unint64_t a3)
{
  if (a3 > 0x16)
  {
    if (a3 < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    sub_10000348C();
  }

  __dst[23] = a3;
  v3 = a3 + 1;

  return memmove(__dst, __src, v3);
}

void sub_10000413C(uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 39) < 0)
    {
      operator delete(__p[2]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

const void **sub_1000041A0(void *a1, const void **a2)
{
  v4 = sub_100003B74(a1, a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!sub_100004020(a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

uint64_t sub_100004420()
{
  v0 = sub_10000E320();
  v40 = *(v0 - 8);
  v41 = v0;
  v1 = *(v40 + 64);
  v2 = (__chkstk_darwin)();
  v39 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v42 = &v39 - v4;
  v5 = sub_100004EF8(&qword_100018350, &qword_10000F178);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v39 - v10;
  v12 = sub_10000E010();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v15);
  v20 = &v39 - v19;
  __chkstk_darwin(v18);
  v22 = &v39 - v21;
  sub_10000E1F0();
  if (v23)
  {
    sub_10000DFE0();

    v24 = *(v13 + 56);
    v24(v9, 0, 1, v12);
    (*(v13 + 32))(v11, v9, v12);
    v24(v11, 0, 1, v12);
    v25 = (*(v13 + 48))(v11, 1, v12);
  }

  else
  {
    (*(v13 + 56))(v9, 1, 1, v12);
    sub_1000049E8(v11);
    v26 = *(v13 + 48);
    if (v26(v9, 1, v12) != 1)
    {
      sub_100004F40(v9, &qword_100018350, &qword_10000F178);
    }

    v25 = v26(v11, 1, v12);
  }

  if (v25 == 1)
  {
    sub_100004F40(v11, &qword_100018350, &qword_10000F178);
    return 0;
  }

  v28 = v22;
  (*(v13 + 32))(v22, v11, v12);
  v29 = v42;
  sub_10000E210();
  v31 = v40;
  v30 = v41;
  v32 = (*(v40 + 88))(v29, v41);
  if (v32 == enum case for InferenceModelFormat.espressoV2(_:))
  {
    v43 = sub_10000E1E0();
    v44 = v33;
    v45._countAndFlagsBits = 0x6C65646F6D6C6D2ELL;
    v45._object = 0xE900000000000063;
    sub_10000E4A0(v45);
    sub_10000DFF0();

    sub_10000DFF0();
    v34 = *(v13 + 8);
    v34(v17, v12);
    v35 = sub_10000E000();
  }

  else
  {
    if (v32 != enum case for InferenceModelFormat.precompiled(_:))
    {
      v43 = 0;
      v44 = 0xE000000000000000;
      sub_10000E520(34);
      v47._object = 0x800000010000FF50;
      v47._countAndFlagsBits = 0xD000000000000020;
      sub_10000E4A0(v47);
      v37 = v39;
      sub_10000E210();
      sub_10000E540();
      v38 = *(v31 + 8);
      v38(v37, v30);
      sub_10000E030();

      (*(v13 + 8))(v28, v12);
      v38(v42, v30);
      return 0;
    }

    v43 = sub_10000E1E0();
    v44 = v36;
    v46._countAndFlagsBits = 0x656C646E75622ELL;
    v46._object = 0xE700000000000000;
    sub_10000E4A0(v46);
    sub_10000DFF0();

    v35 = sub_10000E000();
    v34 = *(v13 + 8);
  }

  v34(v20, v12);
  v34(v28, v12);
  return v35;
}

uint64_t sub_1000049E8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10000E070();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  sub_10000E060();
  sub_10000E200();
  sub_10000E050();

  if (v15)
  {
    sub_100004EF8(&qword_100018370, &qword_10000F198);
    sub_100004EF8(&qword_100018378, &unk_10000F1A0);
    if (swift_dynamicCast())
    {
      if (*(&v17 + 1))
      {
        sub_100004FA0(&v16, v19);
        sub_100004FB8(v19, v19[3]);
        *(&v17 + 1) = swift_getAssociatedTypeWitness();
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
        sub_100004FFC(&v16);
        sub_10000E090();
        sub_100004FB8(&v16, *(&v17 + 1));
        AssociatedTypeWitness = swift_getAssociatedTypeWitness();
        v7 = *(AssociatedTypeWitness - 8);
        v8 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
        __chkstk_darwin();
        v10 = v14 - v9 + 24;
        sub_10000E040();
        swift_getAssociatedConformanceWitness();
        sub_10000E080();

        (*(v7 + 8))(v10, AssociatedTypeWitness);
        v11 = sub_10000E010();
        (*(*(v11 - 8) + 56))(a1, 0, 1, v11);
        sub_1000050B0(&v16);
        return sub_1000050B0(v19);
      }
    }

    else
    {
      AssociatedConformanceWitness = 0;
      v16 = 0u;
      v17 = 0u;
    }
  }

  else
  {

    sub_100004F40(v14, &qword_100018360, &qword_10000F188);
    v16 = 0u;
    v17 = 0u;
    AssociatedConformanceWitness = 0;
  }

  sub_100004F40(&v16, &qword_100018368, &qword_10000F190);
  v5 = sub_10000E010();
  return (*(*(v5 - 8) + 56))(a1, 1, 1, v5);
}

uint64_t variable initialization expression of SIDInferenceProvider.workflow@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10000E2D0();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_100004EF8(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100004F40(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100004EF8(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100004FA0(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void *sub_100004FB8(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t *sub_100004FFC(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t *sub_100005060(uint64_t *result)
{
  v1 = *(result[3] - 8);
  if ((*(v1 + 80) & 0x20000) != 0)
  {
    v2 = *result;
    v3 = *(v1 + 64);
  }

  return result;
}

uint64_t sub_1000050B0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

void *sub_1000050FC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v65 = sub_10000E1D0();
  v62 = *(v65 - 8);
  v7 = *(v62 + 64);
  __chkstk_darwin();
  v64 = (v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_10000E2E0();
  v63 = a3;
  v10 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    v11 = 0;
    if (v10 != 2)
    {
      goto LABEL_10;
    }

    v13 = *(a2 + 16);
    v12 = *(a2 + 24);
    v14 = __OFSUB__(v12, v13);
    v11 = v12 - v13;
    if (!v14)
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v10)
  {
    v11 = BYTE6(v63);
    goto LABEL_10;
  }

  LODWORD(v11) = HIDWORD(a2) - a2;
  if (__OFSUB__(HIDWORD(a2), a2))
  {
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  v11 = v11;
LABEL_10:
  if ((v9 - 0x2000000000000000) >> 62 != 3)
  {
    goto LABEL_75;
  }

  v15 = 4 * v9;
  if (!(4 * v9))
  {
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  v58 = a2;
  if (v11 % v15)
  {
    v4 = sub_10000E340();
    sub_100005708();
    a2 = swift_allocError();
    a3 = v16;
    v66 = 0;
    v67 = 0xE000000000000000;
    sub_10000E520(81);
    v69._object = 0x800000010000FFA0;
    v69._countAndFlagsBits = 0xD000000000000041;
    sub_10000E4A0(v69);
    if (v10 <= 1)
    {
      if (!v10)
      {
        v17 = BYTE6(v63);
LABEL_29:
        v68 = v17;
        v70._countAndFlagsBits = sub_10000E580();
        sub_10000E4A0(v70);

        v71._countAndFlagsBits = 0x697320776F52202CLL;
        v71._object = 0xEC000000203A657ALL;
        sub_10000E4A0(v71);
        v68 = v15;
        v72._countAndFlagsBits = sub_10000E580();
        sub_10000E4A0(v72);

        v23 = v67;
        *a3 = v66;
        *(a3 + 8) = v23;
        (*(*(v4 - 8) + 104))(a3, enum case for UseCaseExecutionError.validationFailure(_:), v4);
        swift_willThrow();
        return v24;
      }

      goto LABEL_27;
    }

    v17 = 0;
    if (v10 != 2)
    {
      goto LABEL_29;
    }

    v20 = *(v58 + 16);
    v19 = *(v58 + 24);
    v14 = __OFSUB__(v19, v20);
    v17 = v19 - v20;
    if (!v14)
    {
      goto LABEL_29;
    }

    __break(1u);
    goto LABEL_23;
  }

  if (v10 > 1)
  {
LABEL_23:
    if (v10 == 2)
    {
      v22 = *(a2 + 16);
      v21 = *(a2 + 24);
      v14 = __OFSUB__(v21, v22);
      v18 = v21 - v22;
      if (v14)
      {
        __break(1u);
LABEL_27:
        LODWORD(v17) = HIDWORD(v58) - v58;
        if (!__OFSUB__(HIDWORD(v58), v58))
        {
          v17 = v17;
          goto LABEL_29;
        }

        goto LABEL_80;
      }
    }

    else
    {
      v18 = 0;
    }

LABEL_33:
    if (((v18 / v15) & 0x8000000000000000) == 0)
    {
      v53[1] = v4;
      if (!(v18 / v15))
      {
        return &_swiftEmptyArrayStorage;
      }

      if ((v9 & 0x8000000000000000) == 0)
      {
        v25 = 0;
        v26 = 0;
        v61 = enum case for InferenceData.float32(_:);
        v59 = v62 + 32;
        v60 = (v62 + 104);
        v24 = &_swiftEmptyArrayStorage;
        v54 = v18 / v15;
        v55 = v9;
        while (1)
        {
          v56 = v24;
          v57 = v26;
          if (v9)
          {
            break;
          }

          v29 = &_swiftEmptyArrayStorage;
LABEL_62:
          v47 = v56;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v47 = sub_100005D6C(0, v47[2] + 1, 1, v47);
          }

          v48 = v54;
          v9 = v55;
          v49 = v57;
          v51 = v47[2];
          v50 = v47[3];
          v24 = v47;
          if (v51 >= v50 >> 1)
          {
            v52 = v55;
            v24 = sub_100005D6C((v50 > 1), v51 + 1, 1, v47);
            v9 = v52;
          }

          v26 = v49 + 1;
          v24[2] = v51 + 1;
          v24[v51 + 4] = v29;
          if (v26 == v48)
          {
            return v24;
          }
        }

        v27 = v9;
        v28 = v25;
        v29 = &_swiftEmptyArrayStorage;
        while (1)
        {
          v25 = v28 + 4;
          if (__OFADD__(v28, 4))
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
            goto LABEL_76;
          }

          if (v25 < v28)
          {
            goto LABEL_71;
          }

          v30 = sub_10000E020();
          v31 = v30;
          v33 = v32;
          v34 = v32 >> 62;
          if ((v32 >> 62) > 1)
          {
            break;
          }

          if (v34)
          {
            if (v30 > v30 >> 32)
            {
              goto LABEL_72;
            }

            v41 = sub_10000DFA0();
            if (!v41)
            {
              goto LABEL_84;
            }

            v42 = v41;
            v43 = sub_10000DFC0();
            if (__OFSUB__(v31, v43))
            {
              goto LABEL_74;
            }

            v40 = (v31 - v43 + v42);
            result = sub_10000DFB0();
            if (!v40)
            {
              goto LABEL_85;
            }

LABEL_53:
            v35 = *v40;
            goto LABEL_55;
          }

          v35 = v30;
LABEL_55:
          *v64 = v35;
          (*v60)();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v29 = sub_100005EA0(0, v29[2] + 1, 1, v29);
          }

          v46 = v29[2];
          v45 = v29[3];
          if (v46 >= v45 >> 1)
          {
            v29 = sub_100005EA0(v45 > 1, v46 + 1, 1, v29);
          }

          sub_100006078(v31, v33);
          v29[2] = v46 + 1;
          (*(v62 + 32))(v29 + ((*(v62 + 80) + 32) & ~*(v62 + 80)) + *(v62 + 72) * v46, v64, v65);
          v28 += 4;
          if (!--v27)
          {
            goto LABEL_62;
          }
        }

        if (v34 != 2)
        {
          v35 = 0;
          goto LABEL_55;
        }

        v36 = *(v30 + 16);
        v37 = sub_10000DFA0();
        if (!v37)
        {
          goto LABEL_82;
        }

        v38 = v37;
        v39 = sub_10000DFC0();
        if (__OFSUB__(v36, v39))
        {
          goto LABEL_73;
        }

        v40 = (v36 - v39 + v38);
        sub_10000DFB0();
        if (!v40)
        {
          goto LABEL_83;
        }

        goto LABEL_53;
      }

LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
      goto LABEL_81;
    }

    goto LABEL_77;
  }

  if (!v10)
  {
    v18 = BYTE6(v63);
    goto LABEL_33;
  }

  LODWORD(v18) = HIDWORD(a2) - a2;
  if (!__OFSUB__(HIDWORD(a2), a2))
  {
    v18 = v18;
    goto LABEL_33;
  }

LABEL_81:
  __break(1u);
LABEL_82:
  sub_10000DFB0();
LABEL_83:
  __break(1u);
LABEL_84:
  result = sub_10000DFB0();
  __break(1u);
LABEL_85:
  __break(1u);
  return result;
}

unint64_t sub_100005708()
{
  result = qword_100018380;
  if (!qword_100018380)
  {
    sub_10000E340();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018380);
  }

  return result;
}

void *sub_100005760(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v65 = sub_10000E1D0();
  v62 = *(v65 - 8);
  v7 = *(v62 + 64);
  __chkstk_darwin();
  v64 = (v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_10000E2E0();
  v63 = a3;
  v10 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    v11 = 0;
    if (v10 != 2)
    {
      goto LABEL_10;
    }

    v13 = *(a2 + 16);
    v12 = *(a2 + 24);
    v14 = __OFSUB__(v12, v13);
    v11 = v12 - v13;
    if (!v14)
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v10)
  {
    v11 = BYTE6(v63);
    goto LABEL_10;
  }

  LODWORD(v11) = HIDWORD(a2) - a2;
  if (__OFSUB__(HIDWORD(a2), a2))
  {
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  v11 = v11;
LABEL_10:
  if ((v9 - 0x2000000000000000) >> 62 != 3)
  {
    goto LABEL_75;
  }

  v15 = 4 * v9;
  if (!(4 * v9))
  {
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  v58 = a2;
  if (v11 % v15)
  {
    v4 = sub_10000E340();
    sub_100005708();
    a2 = swift_allocError();
    a3 = v16;
    v66 = 0;
    v67 = 0xE000000000000000;
    sub_10000E520(81);
    v69._object = 0x800000010000FFA0;
    v69._countAndFlagsBits = 0xD000000000000041;
    sub_10000E4A0(v69);
    if (v10 <= 1)
    {
      if (!v10)
      {
        v17 = BYTE6(v63);
LABEL_29:
        v68 = v17;
        v70._countAndFlagsBits = sub_10000E580();
        sub_10000E4A0(v70);

        v71._countAndFlagsBits = 0x697320776F52202CLL;
        v71._object = 0xEC000000203A657ALL;
        sub_10000E4A0(v71);
        v68 = v15;
        v72._countAndFlagsBits = sub_10000E580();
        sub_10000E4A0(v72);

        v23 = v67;
        *a3 = v66;
        *(a3 + 8) = v23;
        (*(*(v4 - 8) + 104))(a3, enum case for UseCaseExecutionError.validationFailure(_:), v4);
        swift_willThrow();
        return v24;
      }

      goto LABEL_27;
    }

    v17 = 0;
    if (v10 != 2)
    {
      goto LABEL_29;
    }

    v20 = *(v58 + 16);
    v19 = *(v58 + 24);
    v14 = __OFSUB__(v19, v20);
    v17 = v19 - v20;
    if (!v14)
    {
      goto LABEL_29;
    }

    __break(1u);
    goto LABEL_23;
  }

  if (v10 > 1)
  {
LABEL_23:
    if (v10 == 2)
    {
      v22 = *(a2 + 16);
      v21 = *(a2 + 24);
      v14 = __OFSUB__(v21, v22);
      v18 = v21 - v22;
      if (v14)
      {
        __break(1u);
LABEL_27:
        LODWORD(v17) = HIDWORD(v58) - v58;
        if (!__OFSUB__(HIDWORD(v58), v58))
        {
          v17 = v17;
          goto LABEL_29;
        }

        goto LABEL_80;
      }
    }

    else
    {
      v18 = 0;
    }

LABEL_33:
    if (((v18 / v15) & 0x8000000000000000) == 0)
    {
      v53[1] = v4;
      if (!(v18 / v15))
      {
        return &_swiftEmptyArrayStorage;
      }

      if ((v9 & 0x8000000000000000) == 0)
      {
        v25 = 0;
        v26 = 0;
        v61 = enum case for InferenceData.int32(_:);
        v59 = v62 + 32;
        v60 = (v62 + 104);
        v24 = &_swiftEmptyArrayStorage;
        v54 = v18 / v15;
        v55 = v9;
        while (1)
        {
          v56 = v24;
          v57 = v26;
          if (v9)
          {
            break;
          }

          v29 = &_swiftEmptyArrayStorage;
LABEL_62:
          v47 = v56;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v47 = sub_100005D6C(0, v47[2] + 1, 1, v47);
          }

          v48 = v54;
          v9 = v55;
          v49 = v57;
          v51 = v47[2];
          v50 = v47[3];
          v24 = v47;
          if (v51 >= v50 >> 1)
          {
            v52 = v55;
            v24 = sub_100005D6C((v50 > 1), v51 + 1, 1, v47);
            v9 = v52;
          }

          v26 = v49 + 1;
          v24[2] = v51 + 1;
          v24[v51 + 4] = v29;
          if (v26 == v48)
          {
            return v24;
          }
        }

        v27 = v9;
        v28 = v25;
        v29 = &_swiftEmptyArrayStorage;
        while (1)
        {
          v25 = v28 + 4;
          if (__OFADD__(v28, 4))
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
            goto LABEL_76;
          }

          if (v25 < v28)
          {
            goto LABEL_71;
          }

          v30 = sub_10000E020();
          v31 = v30;
          v33 = v32;
          v34 = v32 >> 62;
          if ((v32 >> 62) > 1)
          {
            break;
          }

          if (v34)
          {
            if (v30 > v30 >> 32)
            {
              goto LABEL_72;
            }

            v41 = sub_10000DFA0();
            if (!v41)
            {
              goto LABEL_84;
            }

            v42 = v41;
            v43 = sub_10000DFC0();
            if (__OFSUB__(v31, v43))
            {
              goto LABEL_74;
            }

            v40 = (v31 - v43 + v42);
            result = sub_10000DFB0();
            if (!v40)
            {
              goto LABEL_85;
            }

LABEL_53:
            v35 = *v40;
            goto LABEL_55;
          }

          v35 = v30;
LABEL_55:
          *v64 = v35;
          (*v60)();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v29 = sub_100005EA0(0, v29[2] + 1, 1, v29);
          }

          v46 = v29[2];
          v45 = v29[3];
          if (v46 >= v45 >> 1)
          {
            v29 = sub_100005EA0(v45 > 1, v46 + 1, 1, v29);
          }

          sub_100006078(v31, v33);
          v29[2] = v46 + 1;
          (*(v62 + 32))(v29 + ((*(v62 + 80) + 32) & ~*(v62 + 80)) + *(v62 + 72) * v46, v64, v65);
          v28 += 4;
          if (!--v27)
          {
            goto LABEL_62;
          }
        }

        if (v34 != 2)
        {
          v35 = 0;
          goto LABEL_55;
        }

        v36 = *(v30 + 16);
        v37 = sub_10000DFA0();
        if (!v37)
        {
          goto LABEL_82;
        }

        v38 = v37;
        v39 = sub_10000DFC0();
        if (__OFSUB__(v36, v39))
        {
          goto LABEL_73;
        }

        v40 = (v36 - v39 + v38);
        sub_10000DFB0();
        if (!v40)
        {
          goto LABEL_83;
        }

        goto LABEL_53;
      }

LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
      goto LABEL_81;
    }

    goto LABEL_77;
  }

  if (!v10)
  {
    v18 = BYTE6(v63);
    goto LABEL_33;
  }

  LODWORD(v18) = HIDWORD(a2) - a2;
  if (!__OFSUB__(HIDWORD(a2), a2))
  {
    v18 = v18;
    goto LABEL_33;
  }

LABEL_81:
  __break(1u);
LABEL_82:
  sub_10000DFB0();
LABEL_83:
  __break(1u);
LABEL_84:
  result = sub_10000DFB0();
  __break(1u);
LABEL_85:
  __break(1u);
  return result;
}

void *sub_100005D6C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100004EF8(&qword_100018388, &qword_10000F1B0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100004EF8(&qword_100018390, &qword_10000F1B8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_100005EA0(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100004EF8(&qword_100018398, &qword_10000F1C0);
  v10 = *(sub_10000E1D0() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_10000E1D0() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_100006078(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1000060D0()
{
  v0 = sub_10000E3F0();
  sub_10000DE20(v0, qword_1000183A0);
  sub_10000DD8C(v0, qword_1000183A0);
  return sub_10000E3E0();
}

uint64_t sub_100006154()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return sub_10000E150();
}

uint64_t sub_100006188()
{
  v0 = sub_10000E160();

  return _swift_deallocClassInstance(v0, 16, 7);
}

uint64_t SIDInferenceProvider.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v3 + 112) = 0;
  v4 = OBJC_IVAR____TtC20SIDInferenceProvider20SIDInferenceProvider_workflow;
  v5 = sub_10000E2D0();
  (*(*(v5 - 8) + 56))(v3 + v4, 1, 1, v5);
  return v3;
}

uint64_t SIDInferenceProvider.init()()
{
  swift_defaultActor_initialize();
  *(v0 + 112) = 0;
  v1 = OBJC_IVAR____TtC20SIDInferenceProvider20SIDInferenceProvider_workflow;
  v2 = sub_10000E2D0();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  return v0;
}

uint64_t _s20SIDInferenceProviderAAC15transitionAsset_2toy20ModelManagerServices09InferencebD10DescriptorV_AE9LoadStateOtYaAE0I5ErrorOYKF(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = v3;
  v4[8] = a3;
  v4[5] = a1;
  v4[6] = a2;
  v5 = *(*(sub_100004EF8(&qword_1000183C0, &qword_10000F1D8) - 8) + 64) + 15;
  v4[9] = swift_task_alloc();
  v6 = sub_10000E0F0();
  v4[10] = v6;
  v7 = *(v6 - 8);
  v4[11] = v7;
  v8 = *(v7 + 64) + 15;
  v4[12] = swift_task_alloc();
  v9 = sub_10000E180();
  v4[13] = v9;
  v10 = *(v9 - 8);
  v4[14] = v10;
  v11 = *(v10 + 64) + 15;
  v4[15] = swift_task_alloc();

  return _swift_task_switch(sub_100006408, v3, 0);
}

uint64_t sub_100006408()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];
  (*(v2 + 16))(v1, v0[6], v3);
  v4 = (*(v2 + 88))(v1, v3);
  if (v4 == enum case for LoadState.unloaded(_:))
  {
    v5 = v0[7];
    v6 = *(v5 + 112);
    v7 = v5;
    if (v6)
    {
      [objc_opt_self() releaseESOP:v6];
      v7 = v0[7];
    }

    v8 = v0[9];
    *(v5 + 112) = 0;
    v9 = sub_10000E2D0();
    (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
    v10 = OBJC_IVAR____TtC20SIDInferenceProvider20SIDInferenceProvider_workflow;
    swift_beginAccess();
    sub_10000D190(v8, v7 + v10);
    swift_endAccess();
    v11 = v0[15];
    v12 = v0[12];
    v13 = v0[9];

    v14 = v0[1];
    goto LABEL_10;
  }

  if (v4 != enum case for LoadState.loaded(_:))
  {
    v21 = v0[14];
    v20 = v0[15];
    v22 = v0[13];
    v23 = v0[10];
    v24 = v0[11];
    v25 = v0[8];
    sub_10000D068(&_swiftEmptyArrayStorage);
    sub_10000E0E0();
    (*(v24 + 104))(v25, enum case for InferenceError.unsupportedRequestType(_:), v23);
    sub_10000D200(&qword_1000183C8, &type metadata accessor for InferenceError);
    swift_willThrowTypedImpl();
    (*(v21 + 8))(v20, v22);
    v26 = v0[15];
    v27 = v0[12];
    v28 = v0[9];

    v14 = v0[1];
LABEL_10:

    return v14();
  }

  v15 = swift_task_alloc();
  v0[16] = v15;
  *v15 = v0;
  v15[1] = sub_10000672C;
  v16 = v0[12];
  v17 = v0[7];
  v18 = v0[5];

  return sub_10000696C(v18, v16);
}

uint64_t sub_10000672C()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v4 = *v1;

  v5 = *(v2 + 56);
  if (v0)
  {
    v6 = sub_1000068D4;
  }

  else
  {
    v6 = sub_100006858;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100006858()
{
  v1 = v0[15];
  v2 = v0[12];
  v3 = v0[9];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1000068D4()
{
  (*(v0[11] + 32))(v0[8], v0[12], v0[10]);
  v1 = v0[15];
  v2 = v0[12];
  v3 = v0[9];

  v4 = v0[1];

  return v4();
}

uint64_t sub_10000696C(uint64_t a1, uint64_t a2)
{
  v3[7] = v2;
  v3[8] = a2;
  v3[6] = a1;
  v4 = sub_10000E1C0();
  v3[9] = v4;
  v5 = *(v4 - 8);
  v3[10] = v5;
  v6 = *(v5 + 64) + 15;
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v7 = sub_10000E240();
  v3[13] = v7;
  v8 = *(v7 - 8);
  v3[14] = v8;
  v9 = *(v8 + 64) + 15;
  v3[15] = swift_task_alloc();

  return _swift_task_switch(sub_100006A98, v2, 0);
}

uint64_t sub_100006A98()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);
  *(v0 + 192) = enum case for RequestType.loadInferenceAsset(_:);
  v4 = *(v3 + 104);
  *(v0 + 128) = v4;
  *(v0 + 136) = (v3 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v4(v1);
  v5 = async function pointer to static RequestContext.from(_:correlationID:)[1];
  v6 = swift_task_alloc();
  *(v0 + 144) = v6;
  *v6 = v0;
  v6[1] = sub_100006B70;
  v7 = *(v0 + 120);
  v8 = *(v0 + 96);

  return static RequestContext.from(_:correlationID:)(v7, v8, 0, 0);
}

uint64_t sub_100006B70()
{
  v1 = *v0;
  v2 = *(*v0 + 144);
  v3 = *(*v0 + 96);
  v4 = *(*v0 + 80);
  v5 = *(*v0 + 72);
  v6 = *(*v0 + 56);
  v9 = *v0;

  v7 = *(v4 + 8);
  *(v1 + 152) = v7;
  *(v1 + 160) = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v3, v5);

  return _swift_task_switch(sub_100006CF0, v6, 0);
}

uint64_t sub_100006CF0()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 120);
  v4 = *(v0 + 48);
  v3 = *(v0 + 56);
  (*(v0 + 128))(*(v0 + 88), *(v0 + 192), *(v0 + 72));
  v5 = swift_task_alloc();
  *(v0 + 168) = v5;
  v5[2] = v4;
  v5[3] = v2;
  v5[4] = v3;
  v6 = async function pointer to PerformanceTrackable.trackPerformance<A>(requestType:requestContext:operation:)[1];
  v7 = swift_task_alloc();
  *(v0 + 176) = v7;
  v8 = type metadata accessor for SIDInferenceProvider(0);
  v9 = sub_10000D200(&qword_1000183E0, type metadata accessor for SIDInferenceProvider);
  *v7 = v0;
  v7[1] = sub_100006E38;
  v10 = *(v0 + 120);
  v11 = *(v0 + 88);
  v12 = *(v0 + 56);

  return PerformanceTrackable.trackPerformance<A>(requestType:requestContext:operation:)(v9, v11, v10, &unk_10000F5F0, v5, v8, &type metadata for () + 8, v9);
}

uint64_t sub_100006E38()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v4 = *(*v1 + 168);
  v5 = *(*v1 + 160);
  v6 = *(*v1 + 152);
  v7 = *(*v1 + 88);
  v8 = *(*v1 + 72);
  v9 = *v1;
  *(*v1 + 184) = v0;

  v6(v7, v8);

  v10 = *(v2 + 56);
  if (v0)
  {
    v11 = sub_100007088;
  }

  else
  {
    v11 = sub_100006FEC;
  }

  return _swift_task_switch(v11, v10, 0);
}

uint64_t sub_100006FEC()
{
  v1 = v0[12];
  v2 = v0[11];
  (*(v0[14] + 8))(v0[15], v0[13]);

  v3 = v0[1];

  return v3();
}

uint64_t sub_100007088()
{
  v1 = v0[23];
  v2 = v0[12];
  v3 = v0[11];
  v4 = v0[8];
  (*(v0[14] + 8))(v0[15], v0[13]);
  swift_getErrorValue();
  v6 = v0[2];
  v5 = v0[3];
  v7 = v0[4];
  sub_10000E5B0();
  sub_10000D068(&_swiftEmptyArrayStorage);
  sub_10000E0E0();
  v8 = enum case for InferenceError.loadFailed(_:);
  v9 = sub_10000E0F0();
  (*(*(v9 - 8) + 104))(v4, v8, v9);
  sub_10000D200(&qword_1000183C8, &type metadata accessor for InferenceError);
  swift_willThrowTypedImpl();

  v10 = v0[1];

  return v10();
}

uint64_t sub_100007228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a3;
  v4[12] = a4;
  v4[10] = a2;
  v6 = sub_10000E220();
  v4[13] = v6;
  v7 = *(v6 - 8);
  v4[14] = v7;
  v8 = *(v7 + 64) + 15;
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v9 = sub_10000E320();
  v4[17] = v9;
  v10 = *(v9 - 8);
  v4[18] = v10;
  v11 = *(v10 + 64) + 15;
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v12 = *(*(sub_100004EF8(&qword_1000183C0, &qword_10000F1D8) - 8) + 64) + 15;
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v13 = sub_10000E2D0();
  v4[23] = v13;
  v14 = *(v13 - 8);
  v4[24] = v14;
  v15 = *(v14 + 64) + 15;
  v4[25] = swift_task_alloc();
  v16 = *(*(sub_100004EF8(&qword_100018658, &qword_10000F5F8) - 8) + 64) + 15;
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();

  return _swift_task_switch(sub_10000747C, a4, 0);
}

uint64_t sub_10000747C()
{
  v1 = v0[27];
  v2 = v0[10];
  v0[28] = sub_10000E170();
  v0[29] = v3;
  sub_10000E1A0();
  v0[30] = sub_10000E190();
  v4 = sub_10000E240();
  v0[31] = v4;
  v5 = *(v4 - 8);
  v0[32] = v5;
  v6 = *(v5 + 56);
  v0[33] = v6;
  v0[34] = (v5 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v6(v1, 1, 1, v4);
  v7 = *(&async function pointer to dispatch thunk of ServicesIntelligenceProvider.getSystemDatabaseClient(requestContext:) + 1);
  v8 = async function pointer to dispatch thunk of ServicesIntelligenceProvider.getSystemDatabaseClient(requestContext:);
  v9 = swift_task_alloc();
  v0[35] = v9;
  *v9 = v0;
  v9[1] = sub_1000075DC;
  v10 = v0[27];

  return ((&async function pointer to dispatch thunk of ServicesIntelligenceProvider.getSystemDatabaseClient(requestContext:) + v8))(v10);
}

uint64_t sub_1000075DC(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 280);
  v6 = *v2;
  v4[36] = a1;
  v4[37] = v1;

  v7 = v3[30];
  if (v1)
  {
    v8 = v4[29];
    v9 = v4[12];
    sub_100004F40(v4[27], &qword_100018658, &qword_10000F5F8);

    v10 = sub_10000869C;
  }

  else
  {
    v9 = v4[12];
    sub_100004F40(v4[27], &qword_100018658, &qword_10000F5F8);

    v10 = sub_10000779C;
  }

  return _swift_task_switch(v10, v9, 0);
}

uint64_t sub_10000779C()
{
  v22 = v0;
  if (qword_100018348 != -1)
  {
    swift_once();
  }

  v1 = v0[29];
  v2 = sub_10000E3F0();
  v0[38] = sub_10000DD8C(v2, qword_1000183A0);

  v3 = sub_10000E3D0();
  v4 = sub_10000E4F0();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[28];
    v5 = v0[29];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v21 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_10000C56C(v6, v5, &v21);
    _os_log_impl(&_mh_execute_header, v3, v4, "[SIDInferenceProvider][loadAsset] Fetching workflow for asset identifier %s", v7, 0xCu);
    sub_1000050B0(v8);
  }

  v10 = v0[33];
  v9 = v0[34];
  v11 = v0[31];
  v12 = v0[26];
  (*(v0[32] + 16))(v12, v0[11], v11);
  v10(v12, 0, 1, v11);
  v13 = async function pointer to static SystemDatabase.queryActiveWorkflowByAsset(_:using:requestContext:)[1];
  v14 = swift_task_alloc();
  v0[39] = v14;
  *v14 = v0;
  v14[1] = sub_1000079D8;
  v15 = v0[36];
  v16 = v0[28];
  v17 = v0[29];
  v18 = v0[26];
  v19 = v0[22];

  return static SystemDatabase.queryActiveWorkflowByAsset(_:using:requestContext:)(v19, v16, v17, v15, v18);
}

uint64_t sub_1000079D8()
{
  v2 = *v1;
  v3 = *(*v1 + 312);
  v4 = *v1;

  v5 = v2[29];
  v6 = v2[26];
  v7 = v2[12];
  if (v0)
  {

    sub_100004F40(v6, &qword_100018658, &qword_10000F5F8);
    v8 = sub_10000879C;
  }

  else
  {
    sub_100004F40(v6, &qword_100018658, &qword_10000F5F8);

    v8 = sub_100007BAC;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_100007BAC()
{
  v101 = v0;
  v1 = *(v0 + 184);
  v2 = *(v0 + 192);
  v3 = *(v0 + 176);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = *(v0 + 288);
    sub_100004F40(v3, &qword_1000183C0, &qword_10000F1D8);
    v5 = sub_10000E0F0();
    sub_10000D200(&qword_1000183C8, &type metadata accessor for InferenceError);
    swift_allocError();
    v7 = v6;
    sub_10000D068(&_swiftEmptyArrayStorage);
    sub_10000E0E0();
    (*(*(v5 - 8) + 104))(v7, enum case for InferenceError.loadFailed(_:), v5);
    swift_willThrow();
  }

  else
  {
    v8 = *(v0 + 200);
    v9 = *(v0 + 168);
    v10 = *(v0 + 120);
    v11 = *(v0 + 128);
    v12 = *(v0 + 112);
    v90 = *(v0 + 160);
    v95 = *(v0 + 104);
    v13 = *(v0 + 96);
    (*(v2 + 32))(v8, v3, v1);
    (*(v2 + 16))(v9, v8, v1);
    (*(v2 + 56))(v9, 0, 1, v1);
    v14 = OBJC_IVAR____TtC20SIDInferenceProvider20SIDInferenceProvider_workflow;
    swift_beginAccess();
    sub_10000D190(v9, v13 + v14);
    swift_endAccess();
    sub_10000E2C0();
    sub_10000E210();
    v15 = *(v12 + 8);
    v15(v11, v95);
    sub_10000E2C0();
    v16 = sub_100004420();
    v18 = v17;
    v15(v10, v95);
    if (v18)
    {
      v19 = *(v0 + 304);

      v20 = sub_10000E3D0();
      v21 = sub_10000E4F0();

      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v99 = v23;
        *v22 = 136315138;
        *(v22 + 4) = sub_10000C56C(v16, v18, &v99);
        _os_log_impl(&_mh_execute_header, v20, v21, "[SIDInferenceProvider][loadAsset] Retrieved model path: %s", v22, 0xCu);
        sub_1000050B0(v23);
      }

      v24 = [objc_opt_self() defaultManager];
      v25 = sub_10000E430();
      v26 = [v24 fileExistsAtPath:v25];

      if (v26)
      {
        v28 = *(v0 + 152);
        v27 = *(v0 + 160);
        v30 = *(v0 + 136);
        v29 = *(v0 + 144);
        v91 = v16;
        v31 = sub_10000E430();
        (*(v29 + 104))(v28, enum case for InferenceModelFormat.precompiled(_:), v30);
        sub_10000D200(&qword_100018660, &type metadata accessor for InferenceModelFormat);
        sub_10000E4D0();
        sub_10000E4D0();
        if (*(v0 + 40) == *(v0 + 56) && *(v0 + 48) == *(v0 + 64))
        {
          v32 = 1;
        }

        else
        {
          v47 = *(v0 + 48);
          v48 = *(v0 + 64);
          v32 = sub_10000E590();
        }

        v49 = *(v0 + 144);
        v50 = *(v0 + 152);
        v51 = *(v0 + 136);
        v52 = objc_opt_self();
        v98 = *(v49 + 8);
        v98(v50, v51);

        *(v0 + 72) = 0;
        v53 = [v52 compileAndRetrieveESOP:v31 alreadyCompiled:v32 & 1 error:v0 + 72];

        v54 = *(v0 + 72);
        v55 = *(v0 + 288);
        if (v53)
        {
          v79 = *(v0 + 216);
          v80 = *(v0 + 208);
          v57 = *(v0 + 192);
          v56 = *(v0 + 200);
          v58 = *(v0 + 184);
          v59 = *(v0 + 160);
          v81 = *(v0 + 176);
          v82 = *(v0 + 168);
          v60 = *(v0 + 136);
          v85 = *(v0 + 152);
          v88 = *(v0 + 128);
          v94 = *(v0 + 120);
          v61 = *(v0 + 96);

          v98(v59, v60);
          (*(v57 + 8))(v56, v58);
          *(v61 + 112) = v53;

          v62 = *(v0 + 8);
          goto LABEL_17;
        }

        v63 = *(v0 + 192);
        v86 = *(v0 + 184);
        v89 = *(v0 + 200);
        v64 = *(v0 + 160);
        v83 = *(v0 + 136);
        v65 = v54;
        sub_10000DFD0();

        swift_willThrow();

        v66 = sub_10000E0F0();
        sub_10000D200(&qword_1000183C8, &type metadata accessor for InferenceError);
        swift_allocError();
        v68 = v67;
        v99 = 0;
        v100 = 0xE000000000000000;
        sub_10000E520(33);

        v99 = 0xD00000000000001FLL;
        v100 = 0x80000001000102E0;
        v105._countAndFlagsBits = v91;
        v105._object = v18;
        sub_10000E4A0(v105);

        sub_10000D068(&_swiftEmptyArrayStorage);
        sub_10000E0E0();
        (*(*(v66 - 8) + 104))(v68, enum case for InferenceError.loadFailed(_:), v66);
        swift_willThrow();

        v98(v64, v83);
        (*(v63 + 8))(v89, v86);
      }

      else
      {
        v41 = *(v0 + 288);
        v42 = *(v0 + 192);
        v93 = *(v0 + 184);
        v97 = *(v0 + 200);
        v43 = *(v0 + 144);
        v84 = *(v0 + 136);
        v87 = *(v0 + 160);
        v44 = sub_10000E0F0();
        sub_10000D200(&qword_1000183C8, &type metadata accessor for InferenceError);
        swift_allocError();
        v46 = v45;
        v99 = 0;
        v100 = 0xE000000000000000;
        sub_10000E520(23);

        v99 = 0xD000000000000014;
        v100 = 0x80000001000102C0;
        v103._countAndFlagsBits = v16;
        v103._object = v18;
        sub_10000E4A0(v103);

        v104._countAndFlagsBits = 46;
        v104._object = 0xE100000000000000;
        sub_10000E4A0(v104);
        sub_10000D068(&_swiftEmptyArrayStorage);
        sub_10000E0E0();
        (*(*(v44 - 8) + 104))(v46, enum case for InferenceError.loadFailed(_:), v44);
        swift_willThrow();

        (*(v43 + 8))(v87, v84);
        (*(v42 + 8))(v97, v93);
      }
    }

    else
    {
      v33 = *(v0 + 288);
      v34 = *(v0 + 192);
      v92 = *(v0 + 184);
      v96 = *(v0 + 200);
      v35 = *(v0 + 160);
      v37 = *(v0 + 136);
      v36 = *(v0 + 144);
      v38 = sub_10000E0F0();
      sub_10000D200(&qword_1000183C8, &type metadata accessor for InferenceError);
      swift_allocError();
      v40 = v39;
      sub_10000D068(&_swiftEmptyArrayStorage);
      sub_10000E0E0();
      (*(*(v38 - 8) + 104))(v40, enum case for InferenceError.loadFailed(_:), v38);
      swift_willThrow();

      (*(v36 + 8))(v35, v37);
      (*(v34 + 8))(v96, v92);
    }
  }

  v70 = *(v0 + 208);
  v69 = *(v0 + 216);
  v71 = *(v0 + 200);
  v73 = *(v0 + 168);
  v72 = *(v0 + 176);
  v75 = *(v0 + 152);
  v74 = *(v0 + 160);
  v77 = *(v0 + 120);
  v76 = *(v0 + 128);

  v62 = *(v0 + 8);
LABEL_17:

  return v62();
}

uint64_t sub_10000869C()
{
  v1 = v0[37];
  v3 = v0[26];
  v2 = v0[27];
  v4 = v0[25];
  v6 = v0[21];
  v5 = v0[22];
  v8 = v0[19];
  v7 = v0[20];
  v10 = v0[15];
  v9 = v0[16];

  v11 = v0[1];

  return v11();
}

uint64_t sub_10000879C()
{
  (*(v0[24] + 56))(v0[22], 1, 1, v0[23]);
  v1 = v0[36];
  sub_100004F40(v0[22], &qword_1000183C0, &qword_10000F1D8);
  v2 = sub_10000E0F0();
  sub_10000D200(&qword_1000183C8, &type metadata accessor for InferenceError);
  swift_allocError();
  v4 = v3;
  sub_10000D068(&_swiftEmptyArrayStorage);
  sub_10000E0E0();
  (*(*(v2 - 8) + 104))(v4, enum case for InferenceError.loadFailed(_:), v2);
  swift_willThrow();

  v6 = v0[26];
  v5 = v0[27];
  v7 = v0[25];
  v9 = v0[21];
  v8 = v0[22];
  v11 = v0[19];
  v10 = v0[20];
  v13 = v0[15];
  v12 = v0[16];

  v14 = v0[1];

  return v14();
}

uint64_t _s20SIDInferenceProviderAAC14requestOneShot10clientData13configuration20ModelManagerServices06ClientG0VAH_AF09InferenceB20RequestConfigurationVtYaAF0M5ErrorOYKF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[7] = v4;
  v5[8] = a4;
  v5[5] = a1;
  v5[6] = a2;
  v6 = sub_10000E1C0();
  v5[9] = v6;
  v7 = *(v6 - 8);
  v5[10] = v7;
  v8 = *(v7 + 64) + 15;
  v5[11] = swift_task_alloc();
  v9 = sub_10000E240();
  v5[12] = v9;
  v10 = *(v9 - 8);
  v5[13] = v10;
  v11 = *(v10 + 64) + 15;
  v5[14] = swift_task_alloc();
  v12 = sub_10000E270();
  v5[15] = v12;
  v13 = *(v12 - 8);
  v5[16] = v13;
  v14 = *(v13 + 64) + 15;
  v5[17] = swift_task_alloc();
  v15 = *(*(sub_100004EF8(&qword_1000183D0, &qword_10000F1F0) - 8) + 64) + 15;
  v5[18] = swift_task_alloc();
  v16 = sub_10000E370();
  v5[19] = v16;
  v17 = *(v16 - 8);
  v5[20] = v17;
  v18 = *(v17 + 64) + 15;
  v5[21] = swift_task_alloc();

  return _swift_task_switch(sub_100008BCC, v4, 0);
}

uint64_t sub_100008BCC()
{
  v1 = v0[6];
  v0[22] = sub_10000E0B0();
  v0[23] = v2;
  if (v2 >> 60 == 15)
  {
    v3 = v0[8];
    sub_10000D068(&_swiftEmptyArrayStorage);
    sub_10000E0E0();
    v4 = enum case for InferenceError.invalidClientData(_:);
    v5 = sub_10000E0F0();
    (*(*(v5 - 8) + 104))(v3, v4, v5);
    sub_10000D200(&qword_1000183C8, &type metadata accessor for InferenceError);
    swift_willThrowTypedImpl();
    v11 = v0[21];
    v12 = v0[17];
    v13 = v0[18];
    v14 = v0[14];
    v15 = v0[11];

    v16 = v0[1];

    return v16();
  }

  else
  {
    v7 = v0[18];
    v6 = v0[19];
    v8 = sub_10000DF60();
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    sub_10000DF50();
    sub_10000D200(&qword_1000183D8, &type metadata accessor for EnhancedUseCaseRequest);
    sub_10000DF40();
    v19 = v0[20];
    v18 = v0[21];
    v21 = v0[18];
    v20 = v0[19];
    v22 = v0[17];
    v23 = v0[14];
    v24 = v0[10];
    v25 = v0[9];
    v36 = v0[11];
    v37 = v0[7];

    (*(v19 + 56))(v21, 0, 1, v20);
    (*(v19 + 32))(v18, v21, v20);
    sub_10000E360();
    sub_10000E350();
    (*(v24 + 104))(v36, enum case for RequestType.requestInferenceOneShot(_:), v25);
    v26 = swift_task_alloc();
    v0[24] = v26;
    *(v26 + 16) = v37;
    *(v26 + 24) = v22;
    v27 = async function pointer to PerformanceTrackable.trackPerformance<A>(requestType:requestContext:operation:)[1];
    v28 = swift_task_alloc();
    v0[25] = v28;
    v29 = type metadata accessor for SIDInferenceProvider(0);
    v30 = sub_10000E0D0();
    v31 = sub_10000D200(&qword_1000183E0, type metadata accessor for SIDInferenceProvider);
    *v28 = v0;
    v28[1] = sub_1000090D8;
    v32 = v0[14];
    v33 = v0[11];
    v34 = v0[7];
    v35 = v0[5];

    return PerformanceTrackable.trackPerformance<A>(requestType:requestContext:operation:)(v35, v33, v32, &unk_10000F200, v26, v29, v30, v31);
  }
}

uint64_t sub_1000090D8()
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v4 = *v1;
  *(*v1 + 208) = v0;

  v5 = v2[24];
  v6 = v2[11];
  v7 = v2[10];
  v8 = v2[9];
  v9 = v2[7];
  (*(v7 + 8))(v6, v8);

  if (v0)
  {
    v10 = sub_100009380;
  }

  else
  {
    v10 = sub_100009270;
  }

  return _swift_task_switch(v10, v9, 0);
}

uint64_t sub_100009270()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];
  v5 = v0[16];
  v4 = v0[17];
  v7 = v0[14];
  v6 = v0[15];
  v9 = v0[12];
  v8 = v0[13];
  v12 = v0[18];
  v13 = v0[11];
  sub_10000D248(v0[22], v0[23]);
  (*(v8 + 8))(v7, v9);
  (*(v2 + 8))(v1, v3);
  (*(v5 + 8))(v4, v6);

  v10 = v0[1];

  return v10();
}

uint64_t sub_100009380()
{
  v1 = v0[26];
  v2 = v0[22];
  v3 = v0[23];
  v4 = v0[20];
  v21 = v0[19];
  v22 = v0[21];
  v5 = v0[16];
  v23 = v0[15];
  v24 = v0[17];
  v6 = v0[13];
  v19 = v0[12];
  v20 = v0[14];
  v7 = v0[8];
  sub_10000E520(25);
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
  v26._object = 0x8000000100010090;
  v26._countAndFlagsBits = 0xD000000000000017;
  sub_10000E4A0(v26);
  v0[4] = v1;
  sub_100004EF8(&qword_100018358, &qword_10000F180);
  sub_10000E540();
  v8 = v0[2];
  v9 = v0[3];
  sub_10000D068(&_swiftEmptyArrayStorage);
  sub_10000E0E0();
  v10 = enum case for InferenceError.internalError(_:);
  v11 = sub_10000E0F0();
  (*(*(v11 - 8) + 104))(v7, v10, v11);
  sub_10000D200(&qword_1000183C8, &type metadata accessor for InferenceError);
  swift_willThrowTypedImpl();
  sub_10000D248(v2, v3);

  (*(v6 + 8))(v20, v19);
  (*(v4 + 8))(v22, v21);
  (*(v5 + 8))(v24, v23);
  v12 = v0[21];
  v13 = v0[17];
  v14 = v0[18];
  v15 = v0[14];
  v16 = v0[11];

  v17 = v0[1];

  return v17();
}

uint64_t sub_1000095F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[9] = a2;
  v3[10] = a3;
  v3[8] = a1;
  v5 = sub_10000E2F0();
  v3[11] = v5;
  v6 = *(v5 - 8);
  v3[12] = v6;
  v7 = *(v6 + 64) + 15;
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v8 = sub_10000E380();
  v3[15] = v8;
  v9 = *(v8 - 8);
  v3[16] = v9;
  v10 = *(v9 + 64) + 15;
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v11 = sub_10000E1B0();
  v3[19] = v11;
  v12 = *(v11 - 8);
  v3[20] = v12;
  v13 = *(v12 + 64) + 15;
  v3[21] = swift_task_alloc();
  v14 = sub_10000E3C0();
  v3[22] = v14;
  v15 = *(v14 - 8);
  v3[23] = v15;
  v16 = *(v15 + 64) + 15;
  v3[24] = swift_task_alloc();
  v17 = sub_10000E290();
  v3[25] = v17;
  v18 = *(v17 - 8);
  v3[26] = v18;
  v19 = *(v18 + 64) + 15;
  v3[27] = swift_task_alloc();
  v20 = sub_10000E3B0();
  v3[28] = v20;
  v21 = *(v20 - 8);
  v3[29] = v21;
  v22 = *(v21 + 64) + 15;
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  v23 = *(*(sub_100004EF8(&qword_100018630, &qword_10000F5C8) - 8) + 64) + 15;
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();
  v24 = *(*(sub_100004EF8(&qword_100018638, &qword_10000F5D0) - 8) + 64) + 15;
  v3[34] = swift_task_alloc();
  v25 = *(*(sub_100004EF8(&qword_1000183C0, &qword_10000F1D8) - 8) + 64) + 15;
  v3[35] = swift_task_alloc();
  v26 = sub_10000E2D0();
  v3[36] = v26;
  v27 = *(v26 - 8);
  v3[37] = v27;
  v28 = *(v27 + 64) + 15;
  v3[38] = swift_task_alloc();

  return _swift_task_switch(sub_1000099EC, a2, 0);
}

uint64_t sub_1000099EC()
{
  v1 = v0;
  v2 = v0[37];
  v3 = v1[35];
  v4 = v1[36];
  v5 = v1[9];
  v6 = OBJC_IVAR____TtC20SIDInferenceProvider20SIDInferenceProvider_workflow;
  swift_beginAccess();
  sub_10000DA8C(v5 + v6, v3);
  v213 = v1;
  if ((*(v2 + 48))(v3, 1, v4) == 1)
  {
    sub_100004F40(v1[35], &qword_1000183C0, &qword_10000F1D8);
    v7 = sub_10000E0F0();
    sub_10000D200(&qword_1000183C8, &type metadata accessor for InferenceError);
    swift_allocError();
    v9 = v8;
    sub_10000D068(&_swiftEmptyArrayStorage);
    sub_10000E0E0();
    (*(*(v7 - 8) + 104))(v9, enum case for InferenceError.loadFailed(_:), v7);
    swift_willThrow();
    goto LABEL_7;
  }

  v10 = v1[34];
  v11 = v1[10];
  (*(v1[37] + 32))(v1[38], v1[35], v1[36]);
  sub_10000E260();
  v12 = sub_10000E310();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v10, 1, v12) == 1)
  {
    sub_100004F40(v1[34], &qword_100018638, &qword_10000F5D0);
    v19 = v1[37];
    v18 = v1[38];
    v20 = v1[36];
    v21 = sub_10000E0F0();
    sub_10000D200(&qword_1000183C8, &type metadata accessor for InferenceError);
    swift_allocError();
    v23 = v22;
    sub_10000D068(&_swiftEmptyArrayStorage);
    sub_10000E0E0();
    v24 = &enum case for InferenceError.invalidClientData(_:);
LABEL_6:
    (*(*(v21 - 8) + 104))(v23, *v24, v21);
    swift_willThrow();
    (*(v19 + 8))(v18, v20);
    goto LABEL_7;
  }

  v14 = v1[38];
  v15 = v1[34];
  sub_10000E2A0();
  sub_10000E300();
  v16 = v1[34];
  v17 = (v13 + 8);
  v37 = v1[9];

  (*v17)(v16, v12);
  v38 = *(v37 + 112);
  if (!v38)
  {
    v19 = v1[37];
    v18 = v1[38];
    v20 = v1[36];

    v21 = sub_10000E0F0();
    sub_10000D200(&qword_1000183C8, &type metadata accessor for InferenceError);
    swift_allocError();
    v23 = v131;
    sub_10000D068(&_swiftEmptyArrayStorage);
    sub_10000E0E0();
    v24 = &enum case for InferenceError.loadFailed(_:);
    goto LABEL_6;
  }

  v39 = objc_opt_self();
  isa = sub_10000E400().super.isa;

  v1[7] = 0;
  v41 = [v39 executeESOP:v38 inputData:isa error:v1 + 7];

  v42 = v1[7];
  v43 = v1[38];
  if (v41)
  {
    v183 = v1[33];
    v173 = v1[32];
    v44 = v1[29];
    v45 = v1;
    v46 = v1[16];
    v47 = v45[12];
    v48 = sub_10000E410();
    v49 = v42;

    v50 = sub_10000DAFC(&_swiftEmptyArrayStorage);
    v51 = sub_10000E2B0();
    v52 = 0;
    v53 = *(v51 + 64);
    v169 = v51 + 64;
    v179 = v51;
    v54 = -1;
    v55 = -1 << *(v51 + 32);
    if (-v55 < 64)
    {
      v54 = ~(-1 << -v55);
    }

    v56 = v54 & v53;
    v57 = (63 - v55) >> 6;
    v193 = (v44 + 32);
    v177 = (v46 + 88);
    v175 = enum case for InferenceFeatureDataType.float32(_:);
    v170 = enum case for InferenceFeatureDataType.int32(_:);
    v174 = (v47 + 8);
    v171 = v57;
    v172 = v44;
    v181 = (v44 + 8);
    v187 = v48;
    if ((v54 & v53) != 0)
    {
      goto LABEL_16;
    }

    while (1)
    {
      if (v57 <= v52 + 1)
      {
        v59 = v52 + 1;
      }

      else
      {
        v59 = v57;
      }

      v1 = v213;
      do
      {
        v58 = v52 + 1;
        if (__OFADD__(v52, 1))
        {
          __break(1u);
          goto LABEL_65;
        }

        if (v58 >= v57)
        {
          v190 = v59 - 1;
          v127 = v213[32];
          v128 = sub_100004EF8(&qword_100018640, &qword_10000F5D8);
          (*(*(v128 - 8) + 56))(v127, 1, 1, v128);
          v56 = 0;
          goto LABEL_26;
        }

        v56 = *(v169 + 8 * v58);
        ++v52;
      }

      while (!v56);
      v207 = v50;
LABEL_25:
      v60 = v1[31];
      v61 = v1[32];
      v62 = v1[28];
      v63 = __clz(__rbit64(v56));
      v56 &= v56 - 1;
      v64 = v63 | (v58 << 6);
      v65 = (*(v179 + 48) + 16 * v64);
      v66 = *v65;
      v67 = v65[1];
      (*(v172 + 16))(v60, *(v179 + 56) + *(v172 + 72) * v64, v62);
      v68 = sub_100004EF8(&qword_100018640, &qword_10000F5D8);
      v69 = *(v68 + 48);
      *v61 = v66;
      *(v173 + 8) = v67;
      (*(v172 + 32))(&v61[v69], v60, v62);
      v70 = *(*(v68 - 8) + 56);
      v71 = v68;
      v1 = v213;
      v70(v61, 0, 1, v71);

      v190 = v58;
      v48 = v187;
      v57 = v171;
      v50 = v207;
LABEL_26:
      v72 = v1[33];
      sub_10000DC14(v1[32], v72);
      v73 = sub_100004EF8(&qword_100018640, &qword_10000F5D8);
      if ((*(*(v73 - 8) + 48))(v72, 1, v73) == 1)
      {
        v142 = v1[37];
        v141 = v1[38];
        v143 = v1[36];
        v204 = v1[27];
        v210 = v1[25];
        v144 = v1;
        v145 = v1[24];
        v146 = v144[23];
        v147 = v144[20];
        v148 = v144[21];
        v194 = v144[22];
        v199 = v144[19];

        (*(v142 + 16))(v145, v141, v143);
        (*(v146 + 104))(v145, enum case for Workflow.inference(_:), v194);
        (*(v147 + 104))(v148, enum case for CacheStatus.miss(_:), v199);
        sub_10000E280();
        v149 = sub_10000DF90();
        v150 = *(v149 + 48);
        v151 = *(v149 + 52);
        swift_allocObject();
        sub_10000DF80();
        sub_10000D200(&qword_100018648, &type metadata accessor for UseCaseResponse);
        sub_10000DF70();
        v153 = v144[37];
        v152 = v144[38];
        v211 = v144[36];
        v176 = v144[35];
        v178 = v144[34];
        v180 = v144[33];
        v182 = v144[32];
        v185 = v144[31];
        v186 = v144[30];
        v166 = v144[26];
        v165 = v144[27];
        v167 = v144[25];
        v189 = v144[24];
        v191 = v144[21];
        v196 = v144[18];
        v200 = v144[17];
        v205 = v144[14];
        v214 = v144[13];
        v168 = v144[8];

        sub_10000E0C0();
        (*(v166 + 8))(v165, v167);
        (*(v153 + 8))(v152, v211);

        v35 = v144[1];
        goto LABEL_8;
      }

      v74 = v1[33];
      v75 = *v74;
      v76 = *(v183 + 8);
      (*v193)(v1[30], v74 + *(v73 + 48), v1[28]);
      if (!*(v48 + 16) || (v77 = sub_10000CFE4(v75, v76, sub_10000CB14), (v78 & 1) == 0))
      {
        v209 = v1[38];
        v135 = v1[37];
        v203 = v1[36];
        v136 = v1[30];
        v137 = v1[28];

        v138 = sub_10000E0F0();
        sub_10000D200(&qword_1000183C8, &type metadata accessor for InferenceError);
        swift_allocError();
        v140 = v139;
        sub_10000E520(18);

        v218._countAndFlagsBits = v75;
        v218._object = v76;
        sub_10000E4A0(v218);

        sub_10000D068(&_swiftEmptyArrayStorage);
        sub_10000E0E0();
        (*(*(v138 - 8) + 104))(v140, enum case for InferenceError.invalidClientData(_:), v138);
        swift_willThrow();

        (*v181)(v136, v137);
        (*(v135 + 8))(v209, v203);
        goto LABEL_7;
      }

      v208 = v75;
      v202 = v76;
      v79 = v1[30];
      v80 = v1[18];
      v81 = v1[15];
      v82 = v48;
      v83 = (*(v48 + 56) + 16 * v77);
      v85 = *v83;
      v84 = v83[1];
      sub_10000DC84(*v83, v84);
      sub_10000E3A0();
      v86 = (*v177)(v80, v81);
      v198 = v84;
      if (v86 == v175)
      {
        v87 = v1[30];
        v88 = v1[14];
        sub_10000E390();
        v89 = v85;
        v90 = sub_1000050FC(v88, v85, v84);
        (*v174)(v1[14], v1[11]);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v215 = v50;
        v92 = sub_10000CFE4(v208, v202, sub_10000CB14);
        v94 = *(v50 + 16);
        v95 = (v93 & 1) == 0;
        v96 = __OFADD__(v94, v95);
        v97 = v94 + v95;
        if (!v96)
        {
          v98 = v93;
          v48 = v82;
          if (*(v50 + 24) >= v97)
          {
            v99 = v202;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v129 = v92;
              sub_10000CE74();
              v92 = v129;
            }
          }

          else
          {
            sub_10000CBCC(v97, isUniquelyReferenced_nonNull_native);
            v99 = v202;
            v92 = sub_10000CFE4(v208, v202, sub_10000CB14);
            if ((v98 & 1) != (v100 & 1))
            {
              goto LABEL_61;
            }
          }

          v113 = v213[30];
          v114 = v213[28];
          if (v98)
          {
            v115 = v92;

            v50 = v215;
            v116 = v215[7];
            v117 = *(v116 + 8 * v115);
            *(v116 + 8 * v115) = v90;
            v48 = v187;

            v118 = v89;
            goto LABEL_50;
          }

          v50 = v215;
          v215[(v92 >> 6) + 8] |= 1 << v92;
          v119 = (v215[6] + 16 * v92);
          *v119 = v208;
          v119[1] = v99;
          *(v215[7] + 8 * v92) = v90;
          sub_100006078(v89, v198);
          (*v181)(v113, v114);
          v120 = v215[2];
          v96 = __OFADD__(v120, 1);
          v121 = v120 + 1;
          if (!v96)
          {
LABEL_53:
            *(v50 + 16) = v121;
            v52 = v190;
            if (!v56)
            {
              continue;
            }

LABEL_16:
            v207 = v50;
            v58 = v52;
            v1 = v213;
            goto LABEL_25;
          }

LABEL_67:
          __break(1u);
LABEL_68:
          __break(1u);
        }

LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
        goto LABEL_67;
      }

      if (v86 != v170)
      {
        v154 = v1[37];
        v188 = v1[38];
        v195 = v1[36];
        v155 = v1[30];
        v184 = v1[28];
        v156 = v1[17];
        v212 = v1[18];
        v157 = v213[16];
        v158 = v213[15];

        v159 = sub_10000E0F0();
        sub_10000D200(&qword_1000183C8, &type metadata accessor for InferenceError);
        swift_allocError();
        v161 = v160;
        sub_10000E520(64);
        v213[5] = 0;
        v213[6] = 0xE000000000000000;
        v219._object = 0x8000000100010240;
        v219._countAndFlagsBits = 0xD00000000000001FLL;
        sub_10000E4A0(v219);
        sub_10000E3A0();
        sub_10000E540();
        v162 = *(v157 + 8);
        v162(v156, v158);
        v220._object = 0x8000000100010260;
        v220._countAndFlagsBits = 0xD00000000000001FLL;
        sub_10000E4A0(v220);
        v163 = v213[5];
        v164 = v213[6];
        sub_10000D068(&_swiftEmptyArrayStorage);
        sub_10000E0E0();
        (*(*(v159 - 8) + 104))(v161, enum case for InferenceError.unsupportedRequestType(_:), v159);
        swift_willThrow();

        sub_100006078(v85, v198);
        (*v181)(v155, v184);
        (*(v154 + 8))(v188, v195);
        v162(v212, v158);
        v1 = v213;
        goto LABEL_7;
      }

      v101 = v1[30];
      v102 = v1[13];
      sub_10000E390();
      v103 = sub_100005760(v102, v85, v84);
      v48 = v82;
      v104 = v103;
      (*v174)(v1[13], v1[11]);
      v105 = swift_isUniquelyReferenced_nonNull_native();
      v216 = v50;
      v106 = sub_10000CFE4(v208, v202, sub_10000CB14);
      v108 = *(v50 + 16);
      v109 = (v107 & 1) == 0;
      v96 = __OFADD__(v108, v109);
      v110 = v108 + v109;
      if (v96)
      {
        goto LABEL_66;
      }

      v111 = v107;
      if (*(v50 + 24) >= v110)
      {
        if ((v105 & 1) == 0)
        {
          v130 = v106;
          sub_10000CE74();
          v106 = v130;
        }
      }

      else
      {
        sub_10000CBCC(v110, v105);
        v106 = sub_10000CFE4(v208, v202, sub_10000CB14);
        if ((v111 & 1) != (v112 & 1))
        {
LABEL_61:

          return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for String);
        }
      }

      v113 = v213[30];
      v114 = v213[28];
      if ((v111 & 1) == 0)
      {
        v50 = v216;
        v216[(v106 >> 6) + 8] |= 1 << v106;
        v125 = (v216[6] + 16 * v106);
        *v125 = v208;
        v125[1] = v202;
        *(v216[7] + 8 * v106) = v104;
        sub_100006078(v85, v198);
        (*v181)(v113, v114);
        v126 = v216[2];
        v96 = __OFADD__(v126, 1);
        v121 = v126 + 1;
        if (!v96)
        {
          goto LABEL_53;
        }

        goto LABEL_68;
      }

      v122 = v106;

      v50 = v216;
      v123 = v216[7];
      v124 = *(v123 + 8 * v122);
      *(v123 + 8 * v122) = v104;
      v48 = v187;

      v118 = v85;
LABEL_50:
      sub_100006078(v118, v198);
      (*v181)(v113, v114);
      v52 = v190;
      if (v56)
      {
        goto LABEL_16;
      }
    }
  }

  v133 = v1[36];
  v132 = v1[37];
  v134 = v42;
  sub_10000DFD0();

  swift_willThrow();
  (*(v132 + 8))(v43, v133);
LABEL_7:
  v25 = v1[38];
  v26 = v1[34];
  v27 = v1[35];
  v29 = v1[32];
  v28 = v1[33];
  v31 = v1[30];
  v30 = v1[31];
  v32 = v1[27];
  v33 = v1[24];
  v34 = v213[21];
  v192 = v213[18];
  v197 = v213[17];
  v201 = v213[14];
  v206 = v213[13];

  v35 = v213[1];
LABEL_8:

  return v35();
}

uint64_t SIDInferenceProvider.requestStream(clientData:configuration:)@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(*(sub_10000E470() - 8) + 64);
  __chkstk_darwin();
  v3 = sub_10000E0B0();
  if (v4 >> 60 != 15)
  {
    v5 = v3;
    v6 = v4;
    sub_10000E460();
    v7 = sub_10000E450();
    if (v8)
    {
      v9 = v7;
      v10 = v8;
      a1[3] = &type metadata for SIDInferenceProvider.ExampleStream;
      a1[4] = sub_10000D348();
      result = sub_10000D248(v5, v6);
      *a1 = v9;
      a1[1] = v10;
      return result;
    }

    sub_10000D248(v5, v6);
  }

  a1[3] = type metadata accessor for SIDInferenceProvider.ErrorStream(0);
  a1[4] = sub_10000D200(&qword_1000183E8, type metadata accessor for SIDInferenceProvider.ErrorStream);
  v12 = sub_100004FFC(a1);
  sub_10000D068(&_swiftEmptyArrayStorage);
  sub_10000E0E0();
  v13 = enum case for InferenceError.invalidClientData(_:);
  v14 = sub_10000E0F0();
  return (*(*(v14 - 8) + 104))(v12, v13, v14);
}

uint64_t sub_10000B294(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = sub_10000E470();
  v2[6] = v3;
  v4 = *(v3 - 8);
  v2[7] = v4;
  v5 = *(v4 + 64) + 15;
  v2[8] = swift_task_alloc();

  return _swift_task_switch(sub_10000B354, 0, 0);
}

uint64_t sub_10000B354()
{
  v1 = v0[5];
  sub_10000E4B0();
  if (v2)
  {
    v0[2] = 0;
    v4 = v0[7];
    v3 = v0[8];
    v5 = v0[6];
    v0[3] = 0xE000000000000000;
    sub_10000E420();
    v6 = v0[2];
    v7 = v0[3];
    sub_10000E460();
    sub_10000E440();
    v9 = v8;

    result = (*(v4 + 8))(v3, v5);
    if (v9 >> 60 == 15)
    {
      __break(1u);
      return result;
    }

    v11 = v0[4];

    sub_10000E0C0();
    v12 = sub_10000E0D0();
    (*(*(v12 - 8) + 56))(v11, 0, 1, v12);
  }

  else
  {
    v13 = v0[4];
    v14 = sub_10000E0D0();
    (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  }

  v15 = v0[8];

  v16 = v0[1];

  return v16();
}

uint64_t sub_10000B508(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10000B5A0;

  return sub_10000B294(a1);
}

uint64_t sub_10000B5A0()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10000B694(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v6 = sub_10000E0F0();
  v4[3] = v6;
  v7 = *(v6 - 8);
  v4[4] = v7;
  v8 = *(v7 + 64) + 15;
  v4[5] = swift_task_alloc();
  v9 = swift_task_alloc();
  v4[6] = v9;
  *v9 = v4;
  v9[1] = sub_10000B7C8;

  return sub_10000B8FC(a1);
}

uint64_t sub_10000B7C8()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v4 = *v1;

  if (v0)
  {
    (*(v2[4] + 32))(v2[2], v2[5], v2[3]);
  }

  else
  {
    v6 = v2[5];
  }

  v5 = *(v4 + 8);

  return v5();
}

uint64_t sub_10000B8FC(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = sub_10000E470();
  v2[6] = v3;
  v4 = *(v3 - 8);
  v2[7] = v4;
  v5 = *(v4 + 64) + 15;
  v2[8] = swift_task_alloc();

  return _swift_task_switch(sub_10000DF2C, 0, 0);
}

void sub_10000B9BC(void *a1@<X8>)
{
  v2 = v1[1];
  v3 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v3 = *v1 & 0xFFFFFFFFFFFFLL;
  }

  *a1 = *v1;
  a1[1] = v2;
  a1[2] = 0;
  a1[3] = v3;
}

uint64_t sub_10000B9E8(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = v2;
  v4 = *(*(a2 - 8) + 64) + 15;
  *(v3 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_10000BA70, 0, 0);
}

uint64_t sub_10000BA70()
{
  v1 = v0[3];
  sub_10000DA28(v0[2], v1);
  v2 = sub_10000E0F0();
  sub_10000D200(&qword_1000183C8, &type metadata accessor for InferenceError);
  swift_allocError();
  (*(*(v2 - 8) + 32))(v3, v1, v2);
  swift_willThrow();

  v4 = v0[1];

  return v4();
}

uint64_t sub_10000BB84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[5] = v5;
  v6[6] = a4;
  v6[3] = a2;
  v6[4] = a3;
  v7 = *(*(a5 - 8) + 64) + 15;
  v6[7] = swift_task_alloc();

  return _swift_task_switch(sub_10000BC10, 0, 0);
}

uint64_t sub_10000BC10()
{
  v1 = v0[7];
  v2 = v0[3];
  sub_10000DA28(v0[5], v1);
  v3 = sub_10000E0F0();
  v0[8] = v3;
  v0[9] = sub_10000D200(&qword_1000183C8, &type metadata accessor for InferenceError);
  v0[10] = swift_allocError();
  (*(*(v3 - 8) + 32))(v4, v1, v3);
  swift_willThrow();
  if (v2)
  {
    v6 = v0[3];
    v5 = v0[4];
    swift_getObjectType();
    v7 = sub_10000E4E0();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  return _swift_task_switch(sub_10000BD58, v7, v9);
}

uint64_t sub_10000BD58()
{
  v1 = v0[9];
  v3 = v0[7];
  v2 = v0[8];
  v4 = v0[6];
  v0[2] = v0[10];
  sub_100004EF8(&qword_100018358, &qword_10000F180);
  swift_dynamicCast();
  swift_willThrowTypedImpl();

  v5 = v0[1];

  return v5();
}

uint64_t SIDInferenceProvider.deinit()
{
  sub_100004F40(v0 + OBJC_IVAR____TtC20SIDInferenceProvider20SIDInferenceProvider_workflow, &qword_1000183C0, &qword_10000F1D8);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t SIDInferenceProvider.__deallocating_deinit()
{
  sub_100004F40(v0 + OBJC_IVAR____TtC20SIDInferenceProvider20SIDInferenceProvider_workflow, &qword_1000183C0, &qword_10000F1D8);
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_10000BEB8@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for SIDInferenceProvider(0);
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  v5 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v5 + 112) = 0;
  v6 = OBJC_IVAR____TtC20SIDInferenceProvider20SIDInferenceProvider_workflow;
  v7 = sub_10000E2D0();
  result = (*(*(v7 - 8) + 56))(v5 + v6, 1, 1, v7);
  *a1 = v5;
  return result;
}

uint64_t sub_10000BF4C()
{
  type metadata accessor for SIDInferenceProvider(0);
  v1 = sub_10000E130();
  v2 = *(v0 + 8);
  v3 = v1 & 1;

  return v2(v3);
}

uint64_t sub_10000BFD4()
{
  type metadata accessor for SIDInferenceProvider(0);
  v1 = sub_10000E100();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_10000C098()
{
  type metadata accessor for SIDInferenceProvider(0);
  sub_10000E110();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10000C118(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[2] = a3;
  v7 = sub_10000E0F0();
  v4[3] = v7;
  v8 = *(v7 - 8);
  v4[4] = v8;
  v9 = *(v8 + 64) + 15;
  v10 = swift_task_alloc();
  v4[5] = v10;
  v11 = *v3;
  v12 = swift_task_alloc();
  v4[6] = v12;
  *v12 = v4;
  v12[1] = sub_10000DF3C;

  return _s20SIDInferenceProviderAAC15transitionAsset_2toy20ModelManagerServices09InferencebD10DescriptorV_AE9LoadStateOtYaAE0I5ErrorOYKF(a1, a2, v10);
}

uint64_t sub_10000C240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = async function pointer to InferenceProviding.requestInputStreamStep(clientDataArray:configuration:)[1];
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = type metadata accessor for SIDInferenceProvider(0);
  *v11 = v5;
  v11[1] = sub_10000DF28;

  return InferenceProviding.requestInputStreamStep(clientDataArray:configuration:)(a1, a2, a3, v12, a5);
}

uint64_t sub_10000C310(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = async function pointer to InferenceProviding.inputStreamEnded(requestID:)[1];
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  v8 = type metadata accessor for SIDInferenceProvider(0);
  *v7 = v3;
  v7[1] = sub_10000DF28;

  return InferenceProviding.inputStreamEnded(requestID:)(a1, v8, a3);
}

uint64_t sub_10000C3C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[2] = a4;
  v8 = sub_10000E0F0();
  v5[3] = v8;
  v9 = *(v8 - 8);
  v5[4] = v9;
  v10 = *(v9 + 64) + 15;
  v11 = swift_task_alloc();
  v5[5] = v11;
  v12 = *v4;
  v14 = swift_task_alloc();
  v5[6] = v14;
  *v14 = v5;
  v14[1] = sub_10000DF3C;

  return _s20SIDInferenceProviderAAC14requestOneShot10clientData13configuration20ModelManagerServices06ClientG0VAH_AF09InferenceB20RequestConfigurationVtYaAF0M5ErrorOYKF(a1, a2, v13, v11);
}

int main(int argc, const char **argv, const char **envp)
{
  type metadata accessor for SIDInferenceProviderService(0);
  sub_10000D200(&qword_1000183F8, type metadata accessor for SIDInferenceProviderService);
  sub_10000E0A0();
  return 0;
}

uint64_t sub_10000C56C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10000C638(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_10000DDC4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_1000050B0(v11);
  return v7;
}

unint64_t sub_10000C638(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_10000C744(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_10000E530();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_10000C744(uint64_t a1, unint64_t a2)
{
  v4 = sub_10000C790(a1, a2);
  sub_10000C8C0(&off_100014BB0);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_10000C790(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_10000C9AC(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_10000E530();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_10000E4C0();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10000C9AC(v10, 0);
        result = sub_10000E510();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_10000C8C0(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_10000CA20(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_10000C9AC(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_100004EF8(&qword_100018668, &qword_10000F600);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10000CA20(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100004EF8(&qword_100018668, &qword_10000F600);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

unint64_t sub_10000CB14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_10000E590())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_10000CBCC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100004EF8(&qword_100018650, &qword_10000F5E0);
  v38 = a2;
  result = sub_10000E560();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_10000E5C0();
      sub_10000E490();
      result = sub_10000E5D0();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

void *sub_10000CE74()
{
  v1 = v0;
  sub_100004EF8(&qword_100018650, &qword_10000F5E0);
  v2 = *v0;
  v3 = sub_10000E550();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_10000CFE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, Swift::Int))
{
  v6 = *(v3 + 40);
  sub_10000E5C0();
  sub_10000E490();
  v7 = sub_10000E5D0();

  return a3(a1, a2, v7);
}

unint64_t sub_10000D068(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100004EF8(&unk_100018670, &qword_10000F608);
    v3 = sub_10000E570();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_10000CFE4(v5, v6, sub_10000CB14);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_10000D190(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004EF8(&qword_1000183C0, &qword_10000F1D8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000D200(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000D248(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100006078(a1, a2);
  }

  return a1;
}

uint64_t sub_10000D25C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000B5A0;

  return sub_1000095F0(a1, v5, v4);
}

unint64_t sub_10000D348()
{
  result = qword_1000183F0;
  if (!qword_1000183F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000183F0);
  }

  return result;
}

uint64_t sub_10000D3BC(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10000D48C()
{
  sub_10000D534();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_10000D534()
{
  if (!qword_100018490)
  {
    sub_10000E2D0();
    v0 = sub_10000E500();
    if (!v1)
    {
      atomic_store(v0, &qword_100018490);
    }
  }
}

__n128 sub_10000D58C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_10000D598(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10000D5E0(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_10000D640(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000E0F0();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10000D6C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000E0F0();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_10000D730()
{
  result = sub_10000E0F0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_10000D82C()
{
  result = qword_100018608;
  if (!qword_100018608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018608);
  }

  return result;
}

unint64_t sub_10000D884()
{
  result = qword_100018610;
  if (!qword_100018610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018610);
  }

  return result;
}

unint64_t sub_10000D8DC()
{
  result = qword_100018618;
  if (!qword_100018618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018618);
  }

  return result;
}

uint64_t sub_10000D9C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SIDInferenceProvider.ErrorStream(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000DA28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SIDInferenceProvider.ErrorStream(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000DA8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004EF8(&qword_1000183C0, &qword_10000F1D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10000DAFC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100004EF8(&qword_100018650, &qword_10000F5E0);
    v3 = sub_10000E570();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_10000CFE4(v5, v6, sub_10000CB14);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_10000DC14(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004EF8(&qword_100018630, &qword_10000F5C8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000DC84(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_10000DCD8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000DF28;

  return sub_100007228(a1, v4, v5, v6);
}

uint64_t sub_10000DD8C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_10000DDC4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t *sub_10000DE20(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

__n128 sub_10000DE84(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_10000DE90(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10000DED8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void operator delete(void *__p)
{
    ;
  }
}

void operator new()
{
    ;
  }
}