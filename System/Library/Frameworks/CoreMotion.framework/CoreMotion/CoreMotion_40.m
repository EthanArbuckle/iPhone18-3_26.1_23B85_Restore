uint64_t sub_19B5C1298(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return MEMORY[0x1EEE66B58](a2, sel_feedSourceDeviceIMU_, result);
  }

  return result;
}

uint64_t sub_19B5C12AC(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return MEMORY[0x1EEE66B58](a2, sel_feedAccessoryConfig_, result);
  }

  return result;
}

uint64_t sub_19B5C12C0(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return MEMORY[0x1EEE66B58](a2, sel_feedAudioAccessoryIMU_, result);
  }

  return result;
}

void sub_19B5C1D1C(_Unwind_Exception *a1)
{
  MEMORY[0x19EAE76F0](v2, 0x1080C40C3C00EEFLL);
  objc_sync_exit(v1);
  _Unwind_Resume(a1);
}

void *sub_19B5C1D50(void **a1, void *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_19B659D48(result);

    JUMPOUT(0x19EAE76F0);
  }

  return result;
}

void sub_19B5C47D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43)
{
  sub_19B51DBD4(&a43);
  sub_19B5C6074(&a39);
  _Unwind_Resume(a1);
}

void sub_19B5C5BC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_19B51DBD4(va);
  sub_19B5C6074((v4 - 136));
  _Unwind_Resume(a1);
}

void sub_19B5C5D7C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19B51DBD4(va);
  sub_19B5C6074((v2 - 104));
  _Unwind_Resume(a1);
}

os_log_t sub_19B5C6044()
{
  result = os_log_create("com.apple.locationd.Motion", "MotionContext");
  qword_1EAFE2A60 = result;
  return result;
}

uint64_t *sub_19B5C6074(uint64_t *a1)
{
  if (*(a1 + 17) == 1)
  {
    if (a1[2])
    {
      pthread_mutex_unlock(a1[1]);
    }

    else
    {
      v2 = *a1;
      (*(**a1 + 24))();
    }

    *(a1 + 17) = 0;
  }

  return a1;
}

void *sub_19B5C60E8(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 3)
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

    sub_19B4C50B4(v6, v10);
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 3)
  {
    v18 = a3 - __src;
    if (v18)
    {
      result = memmove(*result, __src, v18);
    }

    v17 = &v8[v18];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    v14 = v11;
    if (v13 != a3)
    {
      v14 = v11;
      v15 = v11;
      do
      {
        v16 = *v13;
        v13 += 8;
        *v15 = v16;
        v15 += 8;
        v14 += 8;
      }

      while (v13 != a3);
    }

    v17 = v14;
  }

  v6[1] = v17;
  return result;
}

uint64_t *sub_19B5C6210(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = 480;
    while (1)
    {
      v4 = *(v2 + v3);
      *(v2 + v3) = 0;
      if (v4)
      {
        MEMORY[0x19EAE76F0](v4, 0x1000C40FF89C88ELL);
      }

      v3 -= 8;
      if (v3 == 464)
      {
        v5 = *(v2 + 464);
        *(v2 + 464) = 0;
        if (v5)
        {
          MEMORY[0x19EAE76F0](v5, 0x1000C40FF89C88ELL);
        }

        v6 = 248;
        while (1)
        {
          v7 = *(v2 + v6);
          *(v2 + v6) = 0;
          if (v7)
          {
            MEMORY[0x19EAE76F0](v7, 0x1000C40FF89C88ELL);
          }

          v6 -= 8;
          if (v6 == 232)
          {

            JUMPOUT(0x19EAE76F0);
          }
        }
      }
    }
  }

  return result;
}

__n128 sub_19B5C62E0(uint64_t a1, __n128 *a2)
{
  sub_19B5C6388(a1);
  v4 = *(a1 + 8);
  if (*(v4 + 23) < 0)
  {
    operator delete(*v4);
  }

  result = *a2;
  *(v4 + 16) = a2[1].n128_u64[0];
  *v4 = result;
  a2[1].n128_u8[7] = 0;
  a2->n128_u8[0] = 0;
  return result;
}

__n128 sub_19B5C6334(uint64_t a1, __n128 *a2)
{
  sub_19B5C63FC(a1);
  v4 = *(a1 + 16);
  if (*(v4 + 23) < 0)
  {
    operator delete(*v4);
  }

  result = *a2;
  *(v4 + 16) = a2[1].n128_u64[0];
  *v4 = result;
  a2[1].n128_u8[7] = 0;
  a2->n128_u8[0] = 0;
  return result;
}

uint64_t sub_19B5C6388(uint64_t result)
{
  if (!*(result + 8))
  {
    operator new();
  }

  return result;
}

uint64_t sub_19B5C63FC(uint64_t result)
{
  if (!*(result + 16))
  {
    operator new();
  }

  return result;
}

void sub_19B5C6470(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = 184;
    while (1)
    {
      v4 = *(a2 + v3);
      *(a2 + v3) = 0;
      if (v4)
      {
        MEMORY[0x19EAE76F0](v4, 0x1000C40FF89C88ELL);
      }

      v3 -= 8;
      if (v3 == 168)
      {

        JUMPOUT(0x19EAE76F0);
      }
    }
  }
}

void sub_19B5C6508(uint64_t a1)
{
  sub_19B42A51C(a1);

  JUMPOUT(0x19EAE76F0);
}

void sub_19B5C6550(uint64_t a1)
{
  sub_19B42A51C(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t *sub_19B5C6594(uint64_t **a1, uint64_t *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_19B5E5718(result);

    JUMPOUT(0x19EAE76F0);
  }

  return result;
}

void sub_19B5C6608(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F0E2ACD0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x19EAE76F0);
}

void sub_19B5C6684(void *a1)
{
  v1 = *MEMORY[0x1E69E9840];
  *a1 = 0;
  sub_19B4294F0(a1 + 1);
}

void sub_19B5C692C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  sub_19B5F4684(v27);
  sub_19B4C5B2C(v26, 0);
  _Unwind_Resume(a1);
}

void sub_19B5C6AC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (a16 < 0)
  {
    operator delete(a11);
  }

  MEMORY[0x19EAE76F0](v23, v22);
  _Unwind_Resume(a1);
}

uint64_t *sub_19B5C6B1C(uint64_t *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  if (*a1)
  {
    if (qword_1EAFE2780 != -1)
    {
      dispatch_once(&qword_1EAFE2780, &unk_1F0E28DC0);
    }

    v2 = qword_1EAFE27B8;
    if (os_log_type_enabled(qword_1EAFE27B8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v2, OS_LOG_TYPE_DEFAULT, "[CMCameraWorkoutLogger] Sync'ing MSL file.", buf, 2u);
    }

    v3 = sub_19B420058();
    if (*(v3 + 160) > 1 || *(v3 + 164) > 1 || *(v3 + 168) > 1 || *(v3 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2780 != -1)
      {
        dispatch_once(&qword_1EAFE2780, &unk_1F0E28DC0);
      }

      v4 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "CMCameraWorkoutLogger::~CMCameraWorkoutLogger()", "CoreLocation: %s\n", v4);
      if (v4 != buf)
      {
        free(v4);
      }
    }

    (*(a1[1] + 16))(a1 + 1);
    sub_19B50B004(*a1);
    (*(a1[1] + 24))(a1 + 1);
  }

  sub_19B5F4684((a1 + 1));
  sub_19B4C5B2C(a1, 0);
  v5 = *MEMORY[0x1E69E9840];
  return a1;
}

void sub_19B5C6D48(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_19B45E110(a1);
  }

  _Unwind_Resume(a1);
}

void *sub_19B5C6D58(void *result, uint64_t *a2)
{
  if (*result)
  {
    v3 = result[1];
    v19 = result + 1;
    (*(v3 + 16))();
    v20 = 256;
    sub_19B517F80(v16);
    Current = CFAbsoluteTimeGetCurrent();
    v18 |= 1u;
    *&v16[87] = Current;
    sub_19B531EF8(v16);
    v5 = v17;
    v6 = *a2;
    *(v17 + 48) |= 2u;
    *(v5 + 40) = v6;
    v7 = v17;
    v8 = a2[1];
    *(v17 + 48) |= 1u;
    *(v7 + 8) = v8;
    sub_19B53DD34(v10);
    v15 |= 2u;
    v13 = 0;
    LODWORD(v21) = a2[2];
    sub_19B5C706C(v11, &v21);
    LODWORD(v21) = *(a2 + 5);
    sub_19B5C706C(v11, &v21);
    v12 = *(a2 + 42);
    v9 = *(a2 + 244);
    v15 |= 5u;
    v14 = v9;
    operator new();
  }

  return result;
}

void sub_19B5C7004(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_19B51DBD4(va);
  sub_19B5C6074((v10 - 152));
  _Unwind_Resume(a1);
}

void sub_19B5C706C(const void **a1, _DWORD *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      sub_19B5BE690();
    }

    v10 = v4 - v7;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFFCLL;
    v12 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      sub_19B4C4FA8(a1, v12);
    }

    v13 = (4 * (v8 >> 2));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

void *sub_19B5C714C(void *result, uint64_t *a2)
{
  if (*result)
  {
    v3 = result[1];
    v16 = result + 1;
    (*(v3 + 16))(result + 1, a2);
    v17 = 256;
    sub_19B517F80(v13);
    Current = CFAbsoluteTimeGetCurrent();
    v15 |= 1u;
    *&v13[87] = Current;
    sub_19B532018(v13);
    v5 = v14;
    v6 = *a2;
    *(v14 + 48) |= 2u;
    *(v5 + 40) = v6;
    v7 = v14;
    v8 = a2[1];
    *(v14 + 48) |= 1u;
    *(v7 + 8) = v8;
    sub_19B53F0C0(v9);
    v12 |= 1u;
    v11 = 0;
    LODWORD(v18) = *(a2 + 4);
    sub_19B5C706C(v10, &v18);
    LODWORD(v18) = *(a2 + 5);
    sub_19B5C706C(v10, &v18);
    LODWORD(v18) = *(a2 + 6);
    sub_19B5C706C(v10, &v18);
    operator new();
  }

  return result;
}

void sub_19B5C73D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_19B51DBD4(va);
  sub_19B5C6074((v8 - 152));
  _Unwind_Resume(a1);
}

void *sub_19B5C7440(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = MEMORY[0x1EEE9AC00](a1, a2, a3);
  if (*result)
  {
    v5 = v4;
    v6 = result[1];
    v20 = result + 1;
    (*(v6 + 16))();
    v21 = 256;
    sub_19B517F80(v17);
    Current = CFAbsoluteTimeGetCurrent();
    v19 |= 1u;
    *&v17[87] = Current;
    sub_19B531F88(v17);
    v8 = v18;
    v9 = *v5;
    *(v18 + 48) |= 2u;
    *(v8 + 40) = v9;
    v10 = v18;
    v11 = v5[1];
    *(v18 + 48) |= 1u;
    *(v10 + 8) = v11;
    sub_19B53FC60(v12);
    v16 |= 1u;
    v15 = 0;
    LODWORD(v22) = *(v5 + 4);
    sub_19B5C706C(v13, &v22);
    LODWORD(v22) = *(v5 + 5);
    sub_19B5C706C(v13, &v22);
    LODWORD(v22) = *(v5 + 6);
    sub_19B5C706C(v13, &v22);
    LODWORD(v22) = *(v5 + 104);
    sub_19B5C706C(v14, &v22);
    LODWORD(v22) = *(v5 + 105);
    sub_19B5C706C(v14, &v22);
    LODWORD(v22) = *(v5 + 106);
    sub_19B5C706C(v14, &v22);
    LODWORD(v22) = *(v5 + 107);
    sub_19B5C706C(v14, &v22);
    operator new();
  }

  return result;
}

void sub_19B5C773C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  sub_19B51DBD4(va);
  sub_19B5C6074((v12 - 152));
  _Unwind_Resume(a1);
}

uint64_t *sub_19B5C77B8(uint64_t *result, uint64_t a2, uint64_t a3, double a4, double a5)
{
  if (*result)
  {
    v9 = result;
    v10 = result[1];
    v51 = result + 1;
    (*(v10 + 16))();
    v53 = 256;
    sub_19B517F80(v48);
    Current = CFAbsoluteTimeGetCurrent();
    v50 |= 1u;
    *&v48[87] = Current;
    sub_19B5321C8(v48);
    v12 = v49;
    *(v49 + 32) |= 2u;
    *(v12 + 16) = a4;
    v13 = v49;
    *(v49 + 32) |= 1u;
    *(v13 + 8) = a5;
    sub_19B461150(v49);
    v14 = *(v49 + 24);
    v15 = *(a2 + 8);
    *(v14 + 140) |= 2u;
    *(v14 + 16) = v15;
    v16 = *(v49 + 24);
    v17 = *(a2 + 16);
    *(v16 + 140) |= 0x4000000u;
    *(v16 + 120) = v17;
    v18 = *(v49 + 24);
    v19 = *(a2 + 20);
    *(v18 + 140) |= 0x20000u;
    *(v18 + 84) = v19;
    v20 = *(v49 + 24);
    *&v15 = *(a2 + 32);
    *(v20 + 140) |= 0x100000u;
    *(v20 + 96) = v15;
    v21 = *(v49 + 24);
    *&v15 = *(a2 + 40);
    *(v21 + 140) |= 0x200000u;
    *(v21 + 100) = v15;
    v22 = *(v49 + 24);
    *&v15 = *(a2 + 48);
    *(v22 + 140) |= 0x400000u;
    *(v22 + 104) = v15;
    v23 = *(v49 + 24);
    *&v15 = *(a2 + 24);
    *(v23 + 140) |= 0x80000u;
    *(v23 + 92) = v15;
    v24 = *(v49 + 24);
    LODWORD(v15) = *(a2 + 56);
    *(v24 + 140) |= 0x8000000u;
    *(v24 + 124) = v15;
    v25 = *(v49 + 24);
    LODWORD(v15) = *(a2 + 60);
    *(v25 + 140) |= 0x10000000u;
    *(v25 + 128) = v15;
    v26 = *(v49 + 24);
    LODWORD(v15) = *(a2 + 64);
    *(v26 + 140) |= 0x20000000u;
    *(v26 + 132) = v15;
    v27 = *(v49 + 24);
    LODWORD(v15) = *(a2 + 68);
    *(v27 + 140) |= 0x8000u;
    *(v27 + 76) = v15;
    v28 = *(v49 + 24);
    LODWORD(v15) = *(a2 + 72);
    *(v28 + 140) |= 0x20u;
    *(v28 + 36) = v15;
    v29 = *(v49 + 24);
    LODWORD(v15) = *(a2 + 76);
    *(v29 + 140) |= 0x400u;
    *(v29 + 56) = v15;
    v30 = *(v49 + 24);
    LODWORD(v15) = *(a2 + 80);
    *(v30 + 140) |= 4u;
    *(v30 + 24) = v15;
    v31 = *(v49 + 24);
    LODWORD(v15) = *(a2 + 84);
    *(v31 + 140) |= 0x10u;
    *(v31 + 32) = v15;
    v32 = *(v49 + 24);
    LODWORD(v15) = *(a2 + 92);
    *(v32 + 140) |= 0x80u;
    *(v32 + 44) = v15;
    v33 = *(v49 + 24);
    LODWORD(v15) = *(a2 + 96);
    *(v33 + 140) |= 0x100u;
    *(v33 + 48) = v15;
    v34 = *(v49 + 24);
    LODWORD(v15) = *(a2 + 100);
    *(v34 + 140) |= 0x200u;
    *(v34 + 52) = v15;
    v35 = *(v49 + 24);
    LODWORD(v15) = *(a2 + 104);
    *(v35 + 140) |= 0x800u;
    *(v35 + 60) = v15;
    v36 = *(v49 + 24);
    LODWORD(v15) = *(a2 + 108);
    *(v36 + 140) |= 0x1000u;
    *(v36 + 64) = v15;
    v37 = *(v49 + 24);
    LODWORD(v15) = *(a2 + 112);
    *(v37 + 140) |= 0x2000u;
    *(v37 + 68) = v15;
    v38 = *(v49 + 24);
    LODWORD(v15) = *(a2 + 116);
    *(v38 + 140) |= 0x800000u;
    *(v38 + 108) = v15;
    v39 = *(v49 + 24);
    LODWORD(v15) = *(a2 + 120);
    *(v39 + 140) |= 0x1000000u;
    *(v39 + 112) = v15;
    v40 = *(v49 + 24);
    LODWORD(v15) = *(a2 + 124);
    *(v40 + 140) |= 0x2000000u;
    *(v40 + 116) = v15;
    v41 = *(v49 + 24);
    LOBYTE(v19) = *(a3 + 5);
    *(v41 + 140) |= 0x40000000u;
    *(v41 + 136) = v19;
    v42 = *(v49 + 24);
    v43 = *(a3 + 8);
    *(v42 + 140) |= 0x40u;
    *(v42 + 40) = v43;
    v44 = *(v49 + 24);
    LOBYTE(v43) = *(a3 + 4);
    *(v44 + 140) |= 0x80000000;
    *(v44 + 137) = v43;
    v45 = *(v49 + 24);
    LODWORD(v15) = *a3;
    *(v45 + 140) |= 8u;
    *(v45 + 28) = v15;
    v46 = *(v49 + 24);
    v47 = *(a3 + 16);
    *(v46 + 140) |= 1u;
    *(v46 + 8) = v47;
    sub_19B50AF20(*v9, v48);
    result = sub_19B51DBD4(v48);
    if (HIBYTE(v53) == 1)
    {
      if (v53)
      {
        return pthread_mutex_unlock(v52);
      }

      else
      {
        return (*(*v51 + 24))(v51);
      }
    }
  }

  return result;
}

void sub_19B5C7C28(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19B51DBD4(va);
  sub_19B5C6074((v2 - 72));
  _Unwind_Resume(a1);
}

uint64_t *sub_19B5C7C44(uint64_t *result, float a2, double a3, double a4)
{
  if (*result)
  {
    v7 = result;
    v9 = result + 1;
    v8 = result[1];
    v17 = result + 1;
    (*(v8 + 16))(result + 1);
    v18 = 256;
    sub_19B517F80(v14);
    Current = CFAbsoluteTimeGetCurrent();
    v16 |= 1u;
    *&v14[87] = Current;
    sub_19B532258(v14);
    v11 = v15;
    *(v15 + 28) |= 2u;
    *(v11 + 16) = a3;
    v12 = v15;
    *(v15 + 28) |= 1u;
    *(v12 + 8) = a4;
    v13 = v15;
    *(v15 + 28) |= 4u;
    *(v13 + 24) = a2;
    sub_19B50AF20(*v7, v14);
    sub_19B51DBD4(v14);
    return (*(*v9 + 24))(v9);
  }

  return result;
}

void sub_19B5C7D70(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19B51DBD4(va);
  sub_19B5C6074((v2 - 88));
  _Unwind_Resume(a1);
}

uint64_t *sub_19B5C7D8C(uint64_t *result, float a2, double a3, double a4)
{
  if (*result)
  {
    v7 = result;
    v9 = result + 1;
    v8 = result[1];
    v17 = result + 1;
    (*(v8 + 16))(result + 1);
    v18 = 256;
    sub_19B517F80(v14);
    Current = CFAbsoluteTimeGetCurrent();
    v16 |= 1u;
    *&v14[87] = Current;
    sub_19B5322E8(v14);
    v11 = v15;
    *(v15 + 28) |= 2u;
    *(v11 + 16) = a3;
    v12 = v15;
    *(v15 + 28) |= 1u;
    *(v12 + 8) = a4;
    v13 = v15;
    *(v15 + 28) |= 4u;
    *(v13 + 24) = a2;
    sub_19B50AF20(*v7, v14);
    sub_19B51DBD4(v14);
    return (*(*v9 + 24))(v9);
  }

  return result;
}

void sub_19B5C7EB8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19B51DBD4(va);
  sub_19B5C6074((v2 - 88));
  _Unwind_Resume(a1);
}

uint64_t *sub_19B5C7ED4(uint64_t *result, float a2, float a3, double a4, double a5)
{
  if (*result)
  {
    v9 = result;
    v11 = result + 1;
    v10 = result[1];
    v25 = result + 1;
    (*(v10 + 16))(result + 1);
    v26 = 256;
    Current = CFAbsoluteTimeGetCurrent();
    sub_19B517F80(v22);
    v24 |= 1u;
    *&v22[87] = Current;
    sub_19B532138(v22);
    v13 = v23;
    *(v23 + 32) |= 2u;
    *(v13 + 16) = a4;
    v14 = v23;
    *(v23 + 32) |= 1u;
    *(v14 + 8) = a5;
    sub_19B5628DC(v23);
    v15 = *(v23 + 24);
    *(v15 + 68) |= 0x10u;
    *(v15 + 40) = a4;
    v16 = *(v23 + 24);
    *(v16 + 68) |= 8u;
    *(v16 + 32) = Current;
    v17 = *(v23 + 24);
    *(v17 + 68) |= 0x40u;
    *(v17 + 52) = 3;
    v18 = *(v23 + 24);
    *(v18 + 68) |= 2u;
    *(v18 + 16) = a2;
    v19 = *(v23 + 24);
    *(v19 + 68) |= 4u;
    *(v19 + 24) = 0;
    v20 = *(v23 + 24);
    *(v20 + 68) |= 1u;
    *(v20 + 8) = a3;
    v21 = *(v23 + 24);
    *(v21 + 68) |= 0x80u;
    *(v21 + 56) = 2;
    sub_19B50AF20(*v9, v22);
    sub_19B51DBD4(v22);
    return (*(*v11 + 24))(v11);
  }

  return result;
}

uint64_t *sub_19B5C80E0(uint64_t *result, int **a2, double a3, double a4)
{
  if (*result)
  {
    v14 = result;
    v8 = result + 1;
    v7 = result[1];
    v22 = result + 1;
    (*(v7 + 16))(result + 1);
    v23 = 256;
    sub_19B517F80(v19);
    Current = CFAbsoluteTimeGetCurrent();
    v21 |= 1u;
    *&v19[87] = Current;
    sub_19B531B98(v19);
    v10 = v20;
    *(v20 + 48) |= 2u;
    *(v10 + 40) = a3;
    v11 = v20;
    *(v20 + 48) |= 1u;
    *(v11 + 32) = a4;
    if (a2[1] != *a2)
    {
      sub_19B5085F0(v15);
      v12 = v18;
      v18 |= 1u;
      v16 = 0;
      if (a2[1] - *a2)
      {
        v13 = **a2;
        v18 = v12 | 3;
        v17 = v13;
        operator new();
      }

      sub_19B5C9A28();
    }

    sub_19B50AF20(*v14, v19);
    sub_19B51DBD4(v19);
    return (*(*v8 + 24))(v8);
  }

  return result;
}

void sub_19B5C8364(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_19B51DBD4(va);
  sub_19B5C6074((v6 - 168));
  _Unwind_Resume(a1);
}

uint64_t *sub_19B5C83C8(uint64_t *result)
{
  if (*result)
  {
    v1 = result;
    v2 = result + 1;
    (*(result[1] + 16))(result + 1);
    sub_19B50B004(*v1);
    return (*(*v2 + 24))(v2);
  }

  return result;
}

void sub_19B5C8464(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19B5C6074(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_19B5C8478(uint64_t *result, uint64_t a2)
{
  if (*result)
  {
    v3 = result;
    v5 = result + 1;
    v4 = result[1];
    v18 = result + 1;
    (*(v4 + 16))(result + 1);
    v19 = 256;
    sub_19B517F80(v14);
    sub_19B5329A8(v14);
    Current = CFAbsoluteTimeGetCurrent();
    v17 |= 1u;
    v16 = Current;
    v7 = v15;
    LODWORD(Current) = *(a2 + 8);
    *(v15 + 64) |= 0x20u;
    *(v7 + 28) = LODWORD(Current);
    v8 = v15;
    LODWORD(Current) = *(a2 + 12);
    *(v15 + 64) |= 0x1000u;
    *(v8 + 56) = LODWORD(Current);
    v9 = v15;
    LODWORD(Current) = *(a2 + 20);
    *(v15 + 64) |= 2u;
    *(v9 + 12) = LODWORD(Current);
    v10 = v15;
    v11 = *(a2 + 48);
    *(v15 + 64) |= 0x2000u;
    *(v10 + 60) = v11;
    v12 = v15;
    v13 = *(a2 + 4);
    *(v15 + 64) |= 4u;
    *(v12 + 16) = v13;
    sub_19B50AF20(*v3, v14);
    sub_19B51DBD4(v14);
    return (*(*v5 + 24))(v5);
  }

  return result;
}

void sub_19B5C85C8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19B51DBD4(va);
  sub_19B5C6074((v2 - 56));
  _Unwind_Resume(a1);
}

uint64_t *sub_19B5C85E4(uint64_t *result, void *a2)
{
  if (*result)
  {
    v3 = result;
    v5 = result + 1;
    v4 = result[1];
    v79 = result + 1;
    (*(v4 + 16))(result + 1);
    v80 = 256;
    sub_19B517F80(v75);
    Current = CFAbsoluteTimeGetCurrent();
    v78 |= 1u;
    v77 = Current;
    sub_19B531838(v75);
    sub_19B4DF8BC(v76);
    v7 = *(v76 + 88);
    objc_msgSend_timestamp(a2, v8, v9);
    *(v7 + 152) |= 2u;
    *(v7 + 136) = v10;
    v11 = *(v76 + 88);
    v14 = objc_msgSend_attitude(a2, v12, v13);
    objc_msgSend_quaternion(v14, v15, v16);
    *&v17 = v17;
    v74 = *&v17;
    sub_19B5C706C((v11 + 56), &v74);
    v18 = *(v76 + 88);
    v21 = objc_msgSend_attitude(a2, v19, v20);
    objc_msgSend_quaternion(v21, v22, v23);
    v25 = v24;
    v74 = v25;
    sub_19B5C706C((v18 + 56), &v74);
    v26 = *(v76 + 88);
    v29 = objc_msgSend_attitude(a2, v27, v28);
    objc_msgSend_quaternion(v29, v30, v31);
    v33 = v32;
    v74 = v33;
    sub_19B5C706C((v26 + 56), &v74);
    v34 = *(v76 + 88);
    v37 = objc_msgSend_attitude(a2, v35, v36);
    objc_msgSend_quaternion(v37, v38, v39);
    v41 = v40;
    v74 = v41;
    sub_19B5C706C((v34 + 56), &v74);
    v42 = *(v76 + 88);
    objc_msgSend_rotationRate(a2, v43, v44);
    *&v45 = v45;
    v74 = *&v45;
    sub_19B5C706C((v42 + 80), &v74);
    v46 = *(v76 + 88);
    objc_msgSend_rotationRate(a2, v47, v48);
    v50 = v49;
    v74 = v50;
    sub_19B5C706C((v46 + 80), &v74);
    v51 = *(v76 + 88);
    objc_msgSend_rotationRate(a2, v52, v53);
    v55 = v54;
    v74 = v55;
    sub_19B5C706C((v51 + 80), &v74);
    v56 = *(v76 + 88);
    objc_msgSend_userAcceleration(a2, v57, v58);
    *&v59 = v59;
    v74 = *&v59;
    sub_19B5C706C((v56 + 104), &v74);
    v60 = *(v76 + 88);
    objc_msgSend_userAcceleration(a2, v61, v62);
    v64 = v63;
    v74 = v64;
    sub_19B5C706C((v60 + 104), &v74);
    v65 = *(v76 + 88);
    objc_msgSend_userAcceleration(a2, v66, v67);
    v69 = v68;
    v74 = v69;
    sub_19B5C706C((v65 + 104), &v74);
    v70 = v76;
    if (objc_msgSend_sensorLocation(a2, v71, v72) == 2)
    {
      v73 = 1;
    }

    else
    {
      v73 = 2;
    }

    *(v70 + 132) |= 0x40u;
    *(v70 + 104) = v73;
    sub_19B50AF20(*v3, v75);
    sub_19B51DBD4(v75);
    return (*(*v5 + 24))(v5);
  }

  return result;
}

void sub_19B5C8890(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19B51DBD4(va);
  sub_19B5C6074((v2 - 72));
  _Unwind_Resume(a1);
}

uint64_t *sub_19B5C88D4(uint64_t *result, int a2, double a3)
{
  if (*result)
  {
    v5 = result;
    v7 = result + 1;
    v6 = result[1];
    v16 = result + 1;
    (*(v6 + 16))(result + 1);
    v17 = 256;
    sub_19B517F80(v12);
    Current = CFAbsoluteTimeGetCurrent();
    v15 |= 1u;
    v14 = Current;
    sub_19B532EB8(v12);
    v9 = v13;
    *(v13 + 16) |= 1u;
    *(v9 + 8) = a2;
    v10 = v13;
    v11 = a3;
    *(v13 + 16) |= 2u;
    *(v10 + 12) = v11;
    sub_19B50AF20(*v5, v12);
    sub_19B51DBD4(v12);
    return (*(*v7 + 24))(v7);
  }

  return result;
}

void sub_19B5C89E4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19B51DBD4(va);
  sub_19B5C6074((v2 - 72));
  _Unwind_Resume(a1);
}

uint64_t *sub_19B5C8A00(uint64_t *result, char *a2)
{
  if (*result)
  {
    v3 = result;
    v5 = result + 1;
    v4 = result[1];
    v20 = result + 1;
    (*(v4 + 16))(result + 1);
    v21 = 256;
    sub_19B517F80(v16);
    Current = CFAbsoluteTimeGetCurrent();
    v19 |= 1u;
    v18 = Current;
    sub_19B532D98(v16);
    sub_19B4CEB20(v17);
    v7 = *(v17 + 32);
    v8 = *a2;
    *(v7 + 36) |= 2u;
    *(v7 + 28) = v8;
    v9 = *(v17 + 32);
    sub_19B428B50(&__p, a2 + 4);
    sub_19B5C62E0(v9, &__p);
    if (v15 < 0)
    {
      operator delete(__p.n128_u64[0]);
    }

    v10 = *(v17 + 32);
    sub_19B428B50(&__p, a2 + 68);
    sub_19B5C6334(v10, &__p);
    if (v15 < 0)
    {
      operator delete(__p.n128_u64[0]);
    }

    v11 = *(v17 + 32);
    v12 = *(a2 + 25);
    *(v11 + 36) |= 1u;
    *(v11 + 24) = v12;
    v13 = v17;
    LOBYTE(v12) = a2[124];
    *(v17 + 44) |= 1u;
    *(v13 + 40) = v12;
    __p.n128_u32[0] = *(a2 + 32);
    sub_19B5C706C((v17 + 8), &__p);
    __p.n128_u32[0] = *(a2 + 33);
    sub_19B5C706C((v17 + 8), &__p);
    __p.n128_u32[0] = *(a2 + 34);
    sub_19B5C706C((v17 + 8), &__p);
    __p.n128_u32[0] = *(a2 + 35);
    sub_19B5C706C((v17 + 8), &__p);
    sub_19B50AF20(*v3, v16);
    sub_19B51DBD4(v16);
    return (*(*v5 + 24))(v5);
  }

  return result;
}

void sub_19B5C8BF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_19B51DBD4(&a15);
  sub_19B5C6074((v15 - 72));
  _Unwind_Resume(a1);
}

uint64_t *sub_19B5C8C48(uint64_t *result, double *a2, int a3)
{
  if (*result)
  {
    v5 = result;
    v6 = result[1];
    v40 = result + 1;
    (*(v6 + 16))();
    v42 = 256;
    sub_19B517F80(v37);
    sub_19B532918(v37);
    Current = CFAbsoluteTimeGetCurrent();
    v39 |= 1u;
    *&v37[87] = Current;
    v8 = v38;
    v9 = *a2;
    *(v38 + 124) |= 0x10u;
    *(v8 + 40) = v9;
    v10 = v38;
    *&v9 = a2[2];
    *(v38 + 124) |= 2u;
    *(v10 + 16) = *&v9;
    v11 = v38;
    *&v9 = a2[3];
    *(v38 + 124) |= 4u;
    *(v11 + 24) = *&v9;
    v12 = v38;
    *&v9 = a2[4];
    *(v38 + 124) |= 8u;
    *(v12 + 32) = *&v9;
    v13 = v38;
    *&v9 = a2[1];
    *(v38 + 124) |= 1u;
    *(v13 + 8) = *&v9;
    v14 = v38;
    LODWORD(v9) = *(a2 + 10);
    *(v38 + 124) |= 0x40000u;
    *(v14 + 100) = LODWORD(v9);
    v15 = v38;
    LODWORD(v9) = *(a2 + 11);
    *(v38 + 124) |= 0x80000u;
    *(v15 + 104) = LODWORD(v9);
    v16 = v38;
    LODWORD(v9) = *(a2 + 12);
    *(v38 + 124) |= 0x100000u;
    *(v16 + 108) = LODWORD(v9);
    v17 = v38;
    LODWORD(v9) = *(a2 + 13);
    *(v38 + 124) |= 0x2000u;
    *(v17 + 80) = LODWORD(v9);
    v18 = v38;
    LODWORD(v9) = *(a2 + 14);
    *(v38 + 124) |= 0x4000u;
    *(v18 + 84) = LODWORD(v9);
    v19 = v38;
    LODWORD(v9) = *(a2 + 15);
    *(v38 + 124) |= 0x8000u;
    *(v19 + 88) = LODWORD(v9);
    v20 = v38;
    LODWORD(v9) = *(a2 + 16);
    *(v38 + 124) |= 0x100u;
    *(v20 + 60) = LODWORD(v9);
    v21 = v38;
    LODWORD(v9) = *(a2 + 17);
    *(v38 + 124) |= 0x200u;
    *(v21 + 64) = LODWORD(v9);
    v22 = v38;
    LODWORD(v9) = *(a2 + 18);
    *(v38 + 124) |= 0x400u;
    *(v22 + 68) = LODWORD(v9);
    v23 = v38;
    v24 = *(a2 + 19);
    *(v38 + 124) |= 0x80u;
    *(v23 + 56) = v24;
    v25 = v38;
    LODWORD(v9) = *(a2 + 21);
    *(v38 + 124) |= 0x800u;
    *(v25 + 72) = LODWORD(v9);
    v26 = v38;
    LODWORD(v9) = *(a2 + 24);
    *(v38 + 124) |= 0x20u;
    *(v26 + 48) = LODWORD(v9);
    v27 = v38;
    *(v38 + 124) |= 0x200000u;
    *(v27 + 112) = a3;
    v28 = v38;
    *(v38 + 124) |= 0x20000u;
    *(v28 + 96) = -1082130432;
    v29 = v38;
    v30 = *(a2 + 120);
    *(v38 + 124) |= 0x1000u;
    *(v29 + 76) = v30;
    v31 = v38;
    v32 = *(a2 + 29);
    *(v38 + 124) |= 0x40u;
    *(v31 + 52) = v32;
    v33 = v38;
    v34 = *(a2 + 61);
    *(v38 + 124) |= 0x10000u;
    *(v33 + 92) = v34;
    v35 = v38;
    *(v38 + 124) |= 0x800000u;
    *(v35 + 120) = 1;
    v36 = v38;
    LODWORD(v9) = *(a2 + 31);
    *(v38 + 124) |= 0x400000u;
    *(v36 + 116) = LODWORD(v9);
    sub_19B50AF20(*v5, v37);
    result = sub_19B51DBD4(v37);
    if (HIBYTE(v42) == 1)
    {
      if (v42)
      {
        return pthread_mutex_unlock(v41);
      }

      else
      {
        return (*(*v40 + 24))(v40);
      }
    }
  }

  return result;
}

void sub_19B5C8F98(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19B51DBD4(va);
  sub_19B5C6074((v2 - 56));
  _Unwind_Resume(a1);
}

uint64_t *sub_19B5C8FB4(uint64_t *result, uint64_t *a2)
{
  if (*result)
  {
    v3 = result;
    v5 = result + 1;
    v4 = result[1];
    v16 = result + 1;
    (*(v4 + 16))(result + 1);
    v17 = 256;
    sub_19B517F80(v12);
    sub_19B532378(v12);
    Current = CFAbsoluteTimeGetCurrent();
    v15 |= 1u;
    v14 = Current;
    v7 = v13;
    v8 = *a2;
    *(v13 + 32) |= 1u;
    *(v7 + 8) = v8;
    v9 = v13;
    LODWORD(v8) = *(a2 + 2);
    *(v13 + 32) |= 4u;
    *(v9 + 20) = v8;
    v10 = v13;
    LODWORD(v8) = *(a2 + 3);
    *(v13 + 32) |= 8u;
    *(v10 + 24) = v8;
    v11 = v13;
    LODWORD(v8) = *(a2 + 4);
    *(v13 + 32) |= 0x10u;
    *(v11 + 28) = v8;
    sub_19B50AF20(*v3, v12);
    sub_19B51DBD4(v12);
    return (*(*v5 + 24))(v5);
  }

  return result;
}

void sub_19B5C90EC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19B51DBD4(va);
  sub_19B5C6074((v2 - 56));
  _Unwind_Resume(a1);
}

uint64_t *sub_19B5C9108(uint64_t *result, uint64_t *a2)
{
  if (*result)
  {
    v3 = result;
    v5 = result + 1;
    v4 = result[1];
    v21 = result + 1;
    (*(v4 + 16))(result + 1);
    v22 = 256;
    sub_19B517F80(v18);
    sub_19B532408(v18);
    Current = CFAbsoluteTimeGetCurrent();
    v20 |= 1u;
    *&v18[87] = Current;
    v7 = v19;
    v8 = *a2;
    *(v19 + 44) |= 1u;
    *(v7 + 8) = v8;
    v9 = v19;
    LODWORD(v8) = *(a2 + 2);
    *(v19 + 44) |= 0x10u;
    *(v9 + 28) = v8;
    v10 = v19;
    LODWORD(v8) = *(a2 + 3);
    *(v19 + 44) |= 0x20u;
    *(v10 + 32) = v8;
    v11 = v19;
    LODWORD(v8) = *(a2 + 4);
    *(v19 + 44) |= 0x40u;
    *(v11 + 36) = v8;
    v12 = v19;
    *(v19 + 44) |= 8u;
    *(v12 + 24) = 0;
    v13 = v19;
    v14 = HIWORD(*(v19 + 24));
    *(v19 + 44) |= 4u;
    *(v13 + 20) = v14 % 3u;
    v15 = v19;
    LOBYTE(v14) = *(v19 + 25) & 1;
    *(v19 + 44) |= 0x80u;
    *(v15 + 40) = v14;
    v16 = v19;
    v17 = (*(v19 + 24) >> 9) & 1;
    *(v19 + 44) |= 0x100u;
    *(v16 + 41) = v17;
    sub_19B50AF20(*v3, v18);
    sub_19B51DBD4(v18);
    return (*(*v5 + 24))(v5);
  }

  return result;
}

void sub_19B5C92C4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19B51DBD4(va);
  sub_19B5C6074((v2 - 56));
  _Unwind_Resume(a1);
}

uint64_t *sub_19B5C92E4(uint64_t *result, uint64_t a2)
{
  if (*result)
  {
    v3 = result;
    v5 = result + 1;
    v4 = result[1];
    v11 = result + 1;
    (*(v4 + 16))(result + 1);
    v12 = 256;
    sub_19B517F80(v8);
    sub_19B532498(v8);
    Current = CFAbsoluteTimeGetCurrent();
    v10 |= 1u;
    *&v8[87] = Current;
    v7 = v9;
    LODWORD(Current) = *(a2 + 8);
    *(v9 + 16) |= 2u;
    *(v7 + 12) = LODWORD(Current);
    sub_19B50AF20(*v3, v8);
    sub_19B51DBD4(v8);
    return (*(*v5 + 24))(v5);
  }

  return result;
}

void sub_19B5C93D4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19B51DBD4(va);
  sub_19B5C6074((v2 - 56));
  _Unwind_Resume(a1);
}

uint64_t *sub_19B5C93F0(uint64_t *result, unsigned int a2, double a3, double a4)
{
  if (*result)
  {
    v7 = result;
    v9 = result + 1;
    v8 = result[1];
    v17 = result + 1;
    (*(v8 + 16))(result + 1);
    v18 = 256;
    sub_19B517F80(v14);
    sub_19B531E68(v14);
    Current = CFAbsoluteTimeGetCurrent();
    v16 |= 1u;
    *&v14[87] = Current;
    v11 = v15;
    *(v15 + 32) |= 4u;
    *(v11 + 24) = a3;
    v12 = v15;
    *(v15 + 32) |= 2u;
    *(v12 + 16) = a4;
    v13 = v15;
    *(v15 + 32) |= 1u;
    *(v13 + 8) = a2;
    sub_19B50AF20(*v7, v14);
    sub_19B51DBD4(v14);
    return (*(*v9 + 24))(v9);
  }

  return result;
}

void sub_19B5C9518(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19B51DBD4(va);
  sub_19B5C6074((v2 - 72));
  _Unwind_Resume(a1);
}

uint64_t *sub_19B5C9534(uint64_t *result, uint64_t *a2)
{
  if (*result)
  {
    v3 = result;
    v5 = result + 1;
    v4 = result[1];
    v21 = result + 1;
    (*(v4 + 16))(result + 1);
    v22 = 256;
    sub_19B517F80(v18);
    Current = CFAbsoluteTimeGetCurrent();
    v20 |= 1u;
    *&v18[87] = Current;
    sub_19B532A38(v18);
    v7 = v19;
    v8 = a2[3];
    *(v19 + 64) |= 2u;
    *(v7 + 16) = v8;
    v9 = v19;
    v10 = *a2;
    *(v19 + 64) |= 8u;
    *(v9 + 32) = v10;
    v11 = v19;
    *(v19 + 64) |= 1u;
    *(v11 + 8) = 0;
    v12 = v19;
    v13 = a2[2];
    *(v19 + 64) |= 0x10u;
    *(v12 + 40) = v13;
    v14 = v19;
    v15 = a2[12];
    *(v19 + 64) |= 0x200u;
    *(v14 + 60) = v15;
    v16 = v19;
    *(v19 + 64) |= 0x80u;
    *(v16 + 52) = 0;
    v17 = v19;
    *(v19 + 64) |= 0x100u;
    *(v17 + 56) = 0;
    sub_19B50AF20(*v3, v18);
    sub_19B51DBD4(v18);
    return (*(*v5 + 24))(v5);
  }

  return result;
}

void sub_19B5C96A8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19B51DBD4(va);
  sub_19B5C6074((v2 - 56));
  _Unwind_Resume(a1);
}

uint64_t *sub_19B5C96C4(uint64_t *result, uint64_t *a2)
{
  if (*result)
  {
    v3 = result;
    v4 = result[1];
    v37 = result + 1;
    (*(v4 + 16))();
    v39 = 256;
    sub_19B517F80(v34);
    Current = CFAbsoluteTimeGetCurrent();
    v36 |= 1u;
    *&v34[87] = Current;
    sub_19B5320A8(v34);
    v6 = v35;
    v7 = *a2;
    *(v35 + 112) |= 4u;
    *(v6 + 24) = v7;
    v8 = v35;
    v9 = a2[1];
    *(v35 + 112) |= 2u;
    *(v8 + 16) = v9;
    v10 = v35;
    v11 = a2[2];
    *(v35 + 112) |= 1u;
    *(v10 + 8) = v11;
    v12 = v35;
    LODWORD(v11) = *(a2 + 6);
    *(v35 + 112) |= 0x400u;
    *(v12 + 60) = v11;
    v13 = v35;
    LODWORD(v11) = *(a2 + 7);
    *(v35 + 112) |= 0x400000u;
    *(v13 + 108) = v11;
    v14 = v35;
    LODWORD(v11) = *(a2 + 8);
    *(v35 + 112) |= 0x2000u;
    *(v14 + 72) = v11;
    v15 = v35;
    LODWORD(v11) = *(a2 + 9);
    *(v35 + 112) |= 0x100u;
    *(v15 + 52) = v11;
    v16 = v35;
    v17 = *(a2 + 10);
    *(v35 + 112) |= 0x800u;
    *(v16 + 64) = v17;
    v18 = v35;
    v19 = *(a2 + 11);
    *(v35 + 112) |= 0x100000u;
    *(v18 + 100) = v19;
    v20 = v35;
    LODWORD(v11) = *(a2 + 12);
    *(v35 + 112) |= 0x200000u;
    *(v20 + 104) = v11;
    v21 = v35;
    LODWORD(v11) = *(a2 + 13);
    *(v35 + 112) |= 0x40000u;
    *(v21 + 92) = v11;
    v22 = v35;
    LODWORD(v11) = *(a2 + 14);
    *(v35 + 112) |= 0x80u;
    *(v22 + 48) = v11;
    v23 = v35;
    LODWORD(v11) = *(a2 + 15);
    *(v35 + 112) |= 0x10000u;
    *(v23 + 84) = v11;
    v24 = v35;
    LODWORD(v11) = *(a2 + 16);
    *(v35 + 112) |= 0x20u;
    *(v24 + 40) = v11;
    v25 = v35;
    LODWORD(v11) = *(a2 + 17);
    *(v35 + 112) |= 0x200u;
    *(v25 + 56) = v11;
    v26 = v35;
    LODWORD(v11) = *(a2 + 18);
    *(v35 + 112) |= 0x1000u;
    *(v26 + 68) = v11;
    v27 = v35;
    LODWORD(v11) = *(a2 + 19);
    *(v35 + 112) |= 0x80000u;
    *(v27 + 96) = v11;
    v28 = v35;
    LODWORD(v11) = *(a2 + 20);
    *(v35 + 112) |= 0x20000u;
    *(v28 + 88) = v11;
    v29 = v35;
    LODWORD(v11) = *(a2 + 21);
    *(v35 + 112) |= 0x40u;
    *(v29 + 44) = v11;
    v30 = v35;
    LODWORD(v11) = *(a2 + 22);
    *(v35 + 112) |= 0x4000u;
    *(v30 + 76) = v11;
    v31 = v35;
    LODWORD(v11) = *(a2 + 23);
    *(v35 + 112) |= 8u;
    *(v31 + 32) = v11;
    v32 = v35;
    LODWORD(v11) = *(a2 + 24);
    *(v35 + 112) |= 0x8000u;
    *(v32 + 80) = v11;
    v33 = v35;
    LODWORD(v11) = *(a2 + 25);
    *(v35 + 112) |= 0x10u;
    *(v33 + 36) = v11;
    sub_19B50AF20(*v3, v34);
    result = sub_19B51DBD4(v34);
    if (HIBYTE(v39) == 1)
    {
      if (v39)
      {
        return pthread_mutex_unlock(v38);
      }

      else
      {
        return (*(*v37 + 24))(v37);
      }
    }
  }

  return result;
}

void sub_19B5C99DC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19B51DBD4(va);
  sub_19B5C6074((v2 - 56));
  _Unwind_Resume(a1);
}

os_log_t sub_19B5C99F8()
{
  result = os_log_create("com.apple.locationd.Motion", "Workout");
  qword_1EAFE27B8 = result;
  return result;
}

void sub_19B5C9A40(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_19B5C9A9C(exception, a1);
  __cxa_throw(exception, off_1E7532778, MEMORY[0x1E69E5280]);
}

std::logic_error *sub_19B5C9A9C(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E55B8] + 16);
  return result;
}

void sub_19B5C9AD0(uint64_t a1)
{
  *a1 = xmmword_19B7B7710;
  *(a1 + 16) = xmmword_19B7B7710;
  *(a1 + 32) = xmmword_19B7B7710;
  *(a1 + 48) = xmmword_19B7B7710;
  *(a1 + 64) = xmmword_19B7B7710;
  *(a1 + 80) = xmmword_19B7B7710;
  *(a1 + 96) = xmmword_19B7B7710;
  *(a1 + 112) = xmmword_19B7B7710;
  *(a1 + 128) = xmmword_19B7B7710;
  *(a1 + 144) = xmmword_19B7B7710;
  *(a1 + 160) = xmmword_19B7B7710;
  *(a1 + 176) = xmmword_19B7B7710;
  *(a1 + 192) = xmmword_19B7B7710;
  *(a1 + 208) = xmmword_19B7B7710;
  *(a1 + 224) = xmmword_19B7B7710;
  *(a1 + 240) = xmmword_19B7B7710;
  *(a1 + 256) = xmmword_19B7B7710;
  *(a1 + 272) = xmmword_19B7B7710;
  *(a1 + 288) = xmmword_19B7B7710;
  *(a1 + 304) = xmmword_19B7B7710;
  *(a1 + 320) = xmmword_19B7B7710;
  *(a1 + 336) = xmmword_19B7B7710;
  *(a1 + 352) = xmmword_19B7B7710;
  *(a1 + 368) = xmmword_19B7B7710;
  *(a1 + 384) = xmmword_19B7B7710;
  *(a1 + 400) = xmmword_19B7B7710;
  *(a1 + 416) = xmmword_19B7B7710;
  *(a1 + 432) = xmmword_19B7B7710;
  *(a1 + 448) = xmmword_19B7B7710;
  *(a1 + 464) = xmmword_19B7B7710;
  *(a1 + 480) = xmmword_19B7B7710;
  *(a1 + 496) = xmmword_19B7B7710;
  *(a1 + 512) = xmmword_19B7B7710;
  *(a1 + 528) = xmmword_19B7B7710;
  *(a1 + 544) = xmmword_19B7B7710;
  *(a1 + 560) = xmmword_19B7B7710;
  *(a1 + 576) = xmmword_19B7B7710;
  *(a1 + 592) = xmmword_19B7B7710;
  *(a1 + 608) = xmmword_19B7B7710;
  *(a1 + 624) = xmmword_19B7B7710;
  *(a1 + 640) = xmmword_19B7B7510;
  *(a1 + 656) = 0;
  *(a1 + 664) = 0;
  *(a1 + 672) = xmmword_19B7B7510;
  *(a1 + 688) = 0;
  *(a1 + 696) = 0;
  *(a1 + 704) = xmmword_19B7B7510;
  *(a1 + 720) = 0;
  *(a1 + 728) = 0;
  *(a1 + 736) = xmmword_19B7B7510;
  *(a1 + 752) = 0;
  *(a1 + 760) = 0;
  *(a1 + 768) = xmmword_19B7B7510;
  *(a1 + 784) = 0;
  *(a1 + 792) = 0;
  *(a1 + 800) = xmmword_19B7B7510;
  *(a1 + 816) = 0;
  *(a1 + 824) = 0;
  *(a1 + 832) = xmmword_19B7B7510;
  *(a1 + 848) = 0;
  *(a1 + 856) = 0;
  *(a1 + 864) = xmmword_19B7B7510;
  *(a1 + 880) = 0;
  *(a1 + 888) = 0;
  *(a1 + 896) = xmmword_19B7B7510;
  *(a1 + 912) = 0;
  *(a1 + 920) = 0;
  *(a1 + 928) = xmmword_19B7B7510;
  *(a1 + 944) = 0;
  *(a1 + 952) = 0;
  *(a1 + 960) = xmmword_19B7B7510;
  *(a1 + 976) = 0;
  *(a1 + 984) = 0;
  *(a1 + 992) = xmmword_19B7B7510;
  *(a1 + 1008) = 0;
  *(a1 + 1016) = 0;
  *(a1 + 1024) = xmmword_19B7B7510;
  *(a1 + 1040) = 0;
  *(a1 + 1048) = 0;
  *(a1 + 1056) = xmmword_19B7B7510;
  *(a1 + 1072) = 0;
  *(a1 + 1080) = 0;
  *(a1 + 1088) = xmmword_19B7B7510;
  *(a1 + 1104) = 0;
  *(a1 + 1112) = 0;
  *(a1 + 1120) = xmmword_19B7B7510;
  *(a1 + 1136) = 0;
  *(a1 + 1144) = 0;
  *(a1 + 1152) = xmmword_19B7B7510;
  *(a1 + 1168) = 0;
  *(a1 + 1176) = 0;
  *(a1 + 1184) = xmmword_19B7B7510;
  *(a1 + 1200) = 0;
  *(a1 + 1208) = 0;
  *(a1 + 1216) = xmmword_19B7B7510;
  *(a1 + 1232) = 0;
  *(a1 + 1240) = 0;
  *(a1 + 1248) = xmmword_19B7B7510;
  *(a1 + 1264) = 0;
  *(a1 + 1272) = 0;
  *(a1 + 1280) = xmmword_19B7B7510;
  *(a1 + 1296) = 0;
  *(a1 + 1304) = 0;
  *(a1 + 1312) = xmmword_19B7B7510;
  *(a1 + 1328) = 0;
  *(a1 + 1336) = 0;
  *(a1 + 1344) = xmmword_19B7B7510;
  *(a1 + 1360) = 0;
  *(a1 + 1368) = 0;
  *(a1 + 1376) = xmmword_19B7B7510;
  *(a1 + 1392) = 0;
  *(a1 + 1400) = 0;
  *(a1 + 1408) = xmmword_19B7B7510;
  *(a1 + 1424) = 0;
  *(a1 + 1432) = 0;
  *(a1 + 1440) = xmmword_19B7B7510;
  *(a1 + 1456) = 0;
  *(a1 + 1464) = 0;
  *(a1 + 1472) = xmmword_19B7B7510;
  *(a1 + 1488) = 0;
  *(a1 + 1496) = 0;
  *(a1 + 1504) = xmmword_19B7B7510;
  *(a1 + 1520) = 0;
  *(a1 + 1528) = 0;
  *(a1 + 1536) = xmmword_19B7B7510;
  *(a1 + 1552) = 0;
  *(a1 + 1560) = 0;
  *(a1 + 1568) = xmmword_19B7B7510;
  *(a1 + 1584) = 0;
  *(a1 + 1592) = 0;
  *(a1 + 1600) = xmmword_19B7B7510;
  *(a1 + 1616) = 0;
  *(a1 + 1624) = 0;
  *(a1 + 1632) = xmmword_19B7B7510;
  *(a1 + 1648) = 0;
  *(a1 + 1656) = 0;
  *(a1 + 1664) = xmmword_19B7B7510;
  *(a1 + 1680) = 0;
  *(a1 + 1688) = 0;
  *(a1 + 1696) = xmmword_19B7B7510;
  *(a1 + 1712) = 0;
  *(a1 + 1720) = 0;
  *(a1 + 1728) = xmmword_19B7B7510;
  *(a1 + 1744) = 0;
  *(a1 + 1752) = 0;
  *(a1 + 1760) = xmmword_19B7B7510;
  *(a1 + 1776) = 0;
  *(a1 + 1784) = 0;
  *(a1 + 1792) = xmmword_19B7B7510;
  *(a1 + 1808) = 0;
  *(a1 + 1816) = 0;
  *(a1 + 1824) = xmmword_19B7B7510;
  *(a1 + 1840) = 0;
  *(a1 + 1848) = 0;
  *(a1 + 1856) = xmmword_19B7B7510;
  *(a1 + 1872) = 0;
  *(a1 + 1880) = 0;
  *(a1 + 1888) = xmmword_19B7B7510;
  *(a1 + 1904) = 0;
  *(a1 + 1912) = 0;
  *(a1 + 1920) = xmmword_19B7B7510;
  *(a1 + 1936) = 0;
  *(a1 + 1944) = 0;
  *(a1 + 2076) = 0u;
  *(a1 + 2064) = 0u;
  *(a1 + 2048) = 0u;
  *(a1 + 2032) = 0u;
  *(a1 + 2016) = 0u;
  *(a1 + 2000) = 0u;
  *(a1 + 1984) = 0u;
  *(a1 + 1968) = 0u;
  *(a1 + 1952) = 0u;
  *(a1 + 2096) = xmmword_19B7B7720;
  *(a1 + 2112) = 0;
  *(a1 + 2120) = -1;
  *(a1 + 2124) = 0u;
  *(a1 + 2144) = 0u;
  *(a1 + 2160) = 0u;
  *(a1 + 2176) = 0u;
  *(a1 + 2192) = 0u;
  *(a1 + 2208) = 0u;
  *(a1 + 2224) = -1;
  *(a1 + 2228) = 0;
  *(a1 + 2232) = 0xFFFFFFFF00000000;
  *(a1 + 2240) = -1;
  *(a1 + 2244) = 0u;
  *(a1 + 2268) = 0;
  *(a1 + 2260) = 0;
  operator new();
}

void sub_19B5C9FB0(_Unwind_Exception *exception_object)
{
  v3 = v1[281];
  if (v3)
  {
    v1[282] = v3;
    operator delete(v3);
  }

  v4 = v1[275];
  if (v4)
  {
    v1[276] = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B5C9FEC(uint64_t a1, const char *a2)
{
  v2 = a2;
  v4 = 0;
  v5 = aPdx;
  while (1)
  {
    v6 = v4 ? *(v5 - 1) : 0;
    if (v6 < a2 && *v5 >= a2)
    {
      break;
    }

    --v4;
    ++v5;
    if (v4 == -6)
    {
      v7 = 6;
      goto LABEL_10;
    }
  }

  v7 = -v4;
LABEL_10:
  v8 = *(a1 + 2224);
  if (v8 != v7)
  {
    *(a1 + 2224) = v7;
    if (v8 != -1)
    {
      v9 = *(a1 + 2200);
      v10 = (v9 + 16 * v8);
      v11 = *v10;
      if (*v10 > 0.0)
      {
        sub_19B6A80D8(v10, &stru_1F0E3D7A0);
        v9 = *(a1 + 2200);
      }

      LOWORD(v11) = *(a1 + 2228);
      v12 = *(a1 + 2232) + *&v11 * *(v9 + 16 * v8 + 8);
      *(a1 + 2232) = v12;
    }

    if (v7 == 6)
    {
      v13 = @"JBLAccumulatedEventMetric_OverLimit";
      v14 = 6;
    }

    else
    {
      v14 = v7;
      v13 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, @"JBLAccumulatedEventMetric_%d", aPdx[v7]);
    }

    sub_19B6A7EE8((*(a1 + 2200) + 16 * v14), v13);
    *(a1 + 2228) = v2;
  }
}

void sub_19B5CA124(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  if (*a1 > 0.0)
  {
    sub_19B6A80D8(a1, &stru_1F0E3D7A0);
  }

  if (*(a1 + 16) > 0.0)
  {
    sub_19B6A80D8((a1 + 16), &stru_1F0E3D7A0);
  }

  if (*(a1 + 32) > 0.0)
  {
    sub_19B6A80D8((a1 + 32), &stru_1F0E3D7A0);
  }

  if (*(a1 + 48) > 0.0)
  {
    sub_19B6A80D8((a1 + 48), &stru_1F0E3D7A0);
  }

  if (*(a1 + 64) > 0.0)
  {
    sub_19B6A80D8((a1 + 64), &stru_1F0E3D7A0);
  }

  if (*(a1 + 80) > 0.0)
  {
    sub_19B6A80D8((a1 + 80), &stru_1F0E3D7A0);
  }

  if (*(a1 + 96) > 0.0)
  {
    sub_19B6A80D8((a1 + 96), &stru_1F0E3D7A0);
  }

  if (*(a1 + 112) > 0.0)
  {
    sub_19B6A80D8((a1 + 112), &stru_1F0E3D7A0);
  }

  if (*(a1 + 128) > 0.0)
  {
    sub_19B6A80D8((a1 + 128), &stru_1F0E3D7A0);
  }

  if (*(a1 + 144) > 0.0)
  {
    sub_19B6A80D8((a1 + 144), &stru_1F0E3D7A0);
  }

  if (*(a1 + 160) > 0.0)
  {
    sub_19B6A80D8((a1 + 160), &stru_1F0E3D7A0);
  }

  if (*(a1 + 176) > 0.0)
  {
    sub_19B6A80D8((a1 + 176), &stru_1F0E3D7A0);
  }

  if (*(a1 + 192) > 0.0)
  {
    sub_19B6A80D8((a1 + 192), &stru_1F0E3D7A0);
  }

  if (*(a1 + 208) > 0.0)
  {
    sub_19B6A80D8((a1 + 208), &stru_1F0E3D7A0);
  }

  if (*(a1 + 224) > 0.0)
  {
    sub_19B6A80D8((a1 + 224), &stru_1F0E3D7A0);
  }

  if (*(a1 + 240) > 0.0)
  {
    sub_19B6A80D8((a1 + 240), &stru_1F0E3D7A0);
  }

  if (*(a1 + 256) > 0.0)
  {
    sub_19B6A80D8((a1 + 256), &stru_1F0E3D7A0);
  }

  if (*(a1 + 272) > 0.0)
  {
    sub_19B6A80D8((a1 + 272), &stru_1F0E3D7A0);
  }

  if (*(a1 + 288) > 0.0)
  {
    sub_19B6A80D8((a1 + 288), &stru_1F0E3D7A0);
  }

  if (*(a1 + 304) > 0.0)
  {
    sub_19B6A80D8((a1 + 304), &stru_1F0E3D7A0);
  }

  if (*(a1 + 320) > 0.0)
  {
    sub_19B6A80D8((a1 + 320), &stru_1F0E3D7A0);
  }

  if (*(a1 + 336) > 0.0)
  {
    sub_19B6A80D8((a1 + 336), &stru_1F0E3D7A0);
  }

  if (*(a1 + 352) > 0.0)
  {
    sub_19B6A80D8((a1 + 352), &stru_1F0E3D7A0);
  }

  if (*(a1 + 368) > 0.0)
  {
    sub_19B6A80D8((a1 + 368), &stru_1F0E3D7A0);
  }

  if (*(a1 + 384) > 0.0)
  {
    sub_19B6A80D8((a1 + 384), &stru_1F0E3D7A0);
  }

  if (*(a1 + 400) > 0.0)
  {
    sub_19B6A80D8((a1 + 400), &stru_1F0E3D7A0);
  }

  if (*(a1 + 416) > 0.0)
  {
    sub_19B6A80D8((a1 + 416), &stru_1F0E3D7A0);
  }

  if (*(a1 + 432) > 0.0)
  {
    sub_19B6A80D8((a1 + 432), &stru_1F0E3D7A0);
  }

  if (*(a1 + 448) > 0.0)
  {
    sub_19B6A80D8((a1 + 448), &stru_1F0E3D7A0);
  }

  if (*(a1 + 464) > 0.0)
  {
    sub_19B6A80D8((a1 + 464), &stru_1F0E3D7A0);
  }

  if (*(a1 + 480) > 0.0)
  {
    sub_19B6A80D8((a1 + 480), &stru_1F0E3D7A0);
  }

  if (*(a1 + 496) > 0.0)
  {
    sub_19B6A80D8((a1 + 496), &stru_1F0E3D7A0);
  }

  if (*(a1 + 512) > 0.0)
  {
    sub_19B6A80D8((a1 + 512), &stru_1F0E3D7A0);
  }

  if (*(a1 + 528) > 0.0)
  {
    sub_19B6A80D8((a1 + 528), &stru_1F0E3D7A0);
  }

  if (*(a1 + 544) > 0.0)
  {
    sub_19B6A80D8((a1 + 544), &stru_1F0E3D7A0);
  }

  if (*(a1 + 560) > 0.0)
  {
    sub_19B6A80D8((a1 + 560), &stru_1F0E3D7A0);
  }

  if (*(a1 + 576) > 0.0)
  {
    sub_19B6A80D8((a1 + 576), &stru_1F0E3D7A0);
  }

  if (*(a1 + 592) > 0.0)
  {
    sub_19B6A80D8((a1 + 592), &stru_1F0E3D7A0);
  }

  if (*(a1 + 608) > 0.0)
  {
    sub_19B6A80D8((a1 + 608), &stru_1F0E3D7A0);
  }

  if (*(a1 + 624) > 0.0)
  {
    sub_19B6A80D8((a1 + 624), &stru_1F0E3D7A0);
  }

  v2 = *(a1 + 2200);
  for (i = *(a1 + 2208); v2 != i; v2 += 2)
  {
    if (*v2 > 0.0)
    {
      sub_19B6A80D8(v2, &stru_1F0E3D7A0);
    }
  }

  if (fabs(*(a1 + 8)) <= 0.0001)
  {
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E28DE0);
    }

    v10 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v10, OS_LOG_TYPE_ERROR, "[CMMediaSessionAnalyticsTracker] Trying to send analytics but the session duration was 0.0, not sending.", buf, 2u);
    }

    v11 = sub_19B420058();
    if ((*(v11 + 160) & 0x80000000) == 0 || (*(v11 + 164) & 0x80000000) == 0 || (*(v11 + 168) & 0x80000000) == 0 || *(v11 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E28DE0);
      }

      v12 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "void CMMediaSessionAnalyticsTracker::send()", "CoreLocation: %s\n", v12);
      if (v12 != buf)
      {
        free(v12);
      }
    }
  }

  else
  {
    if (*(a1 + 2136) >= 1)
    {
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E28DE0);
      }

      v4 = off_1EAFE29A0;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_ERROR))
      {
        v5 = *(a1 + 2136);
        *buf = 67240192;
        v20 = v5;
        _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_ERROR, "[CMMediaSessionAnalyticsTracker] We've already sent analytics for this instance, was this intended? sent: %{public}d", buf, 8u);
      }

      v6 = sub_19B420058();
      if ((*(v6 + 160) & 0x80000000) == 0 || (*(v6 + 164) & 0x80000000) == 0 || (*(v6 + 168) & 0x80000000) == 0 || *(v6 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E28DE0);
        }

        v18 = *(a1 + 2136);
        v7 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 0, "void CMMediaSessionAnalyticsTracker::send()", "CoreLocation: %s\n", v7);
        if (v7 != buf)
        {
          free(v7);
        }
      }
    }

    v8 = *(a1 + 1972) != 0;
    v9 = *(a1 + 2012) != 0;
    if (*(a1 + 8) >= 10.0)
    {
      v14 = *(a1 + 1972) != 0;
      v15 = *(a1 + 2012) != 0;
    }

    else
    {
      v16 = *(a1 + 1972) != 0;
      v17 = *(a1 + 2012) != 0;
    }

    AnalyticsSendEventLazy();
    ++*(a1 + 2136);
  }

  v13 = *MEMORY[0x1E69E9840];
}

uint64_t sub_19B5CA9E8(uint64_t a1)
{
  v43[13] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = sub_19B74FB58(*(v2 + 2128));
  v42[0] = @"sessionDuration";
  v6 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v4, v5, *(v2 + 8));
  v8 = @"unknown";
  if (v3)
  {
    v8 = v3;
  }

  v43[0] = v6;
  v43[1] = v8;
  v42[1] = @"accessoryHardwareModel";
  v42[2] = @"accessoryBudLocation";
  v43[2] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v7, *(v2 + 2132));
  v42[3] = @"percentageOfSrcSamplesThatAreVeryEarly_shortSession";
  LODWORD(v9) = *(v2 + 2000);
  v10 = v9 / *(a1 + 40);
  *&v10 = v10;
  v43[3] = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v11, v12, v10);
  v42[4] = @"percentageOfSrcSamplesThatAreVeryLate_shortSession";
  LODWORD(v13) = *(v2 + 2004);
  v14 = v13 / *(a1 + 40);
  *&v14 = v14;
  v43[4] = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v15, v16, v14);
  v42[5] = @"percentageOfAuxSamplesWithLargeGaps_shortSession";
  v17 = *(v2 + 2168) / *(a1 + 48);
  *&v17 = v17;
  v43[5] = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v18, v19, v17);
  v42[6] = @"percentageOfAuxSamplesFailedToFindSource_shortSession";
  v20 = *(v2 + 2176) / *(a1 + 48);
  *&v20 = v20;
  v43[6] = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v21, v22, v20);
  v42[7] = @"percentageOfAuxSamplesIndexUnchanged_shortSession";
  v23 = *(v2 + 2184) / *(a1 + 48);
  *&v23 = v23;
  v43[7] = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v24, v25, v23);
  v42[8] = @"percentageOfAuxSamplesSourceDataMissing_shortSession";
  v26 = *(v2 + 2192) / *(a1 + 48);
  *&v26 = v26;
  v43[8] = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v27, v28, v26);
  v42[9] = @"trackingClientMode";
  v43[9] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v29, *(v2 + 2236));
  v42[10] = @"hasDistractedViewing";
  v43[10] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v30, *(a1 + 56));
  v42[11] = @"hasJBLOverLimit";
  v43[11] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v31, *(a1 + 57));
  v42[12] = @"trackingScheme";
  v43[12] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v32, *(v2 + 2240));
  v34 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v33, v43, v42, 13);
  if (qword_1EAFE2998 != -1)
  {
    dispatch_once(&qword_1EAFE2998, &unk_1F0E28DE0);
  }

  v35 = off_1EAFE29A0;
  if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138477827;
    v41 = v34;
    _os_log_impl(&dword_19B41C000, v35, OS_LOG_TYPE_DEFAULT, "[CMMediaSessionAnalyticsTracker] Sending basic analytics: \n%{private}@", buf, 0xCu);
  }

  v36 = sub_19B420058();
  if (*(v36 + 160) > 1 || *(v36 + 164) > 1 || *(v36 + 168) > 1 || *(v36 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E28DE0);
    }

    v37 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CMMediaSessionAnalyticsTracker::send()_block_invoke", "CoreLocation: %s\n", v37);
    if (v37 != buf)
    {
      free(v37);
    }
  }

  v38 = *MEMORY[0x1E69E9840];
  return v34;
}

void *sub_19B5CADAC(uint64_t a1)
{
  v842[79] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = sub_19B74FB58(*(v2 + 2128));
  v4 = *(v2 + 8);
  v5 = *(v2 + 280);
  v8 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v6, v7);
  v841[0] = @"trackingClientMode";
  v842[0] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v9, *(v2 + 2236));
  v841[1] = @"sessionDuration";
  v842[1] = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v10, v11, *(v2 + 8));
  v841[2] = @"sessionDurationType";
  v13 = *(v2 + 8);
  if (v13 <= 60.0)
  {
    v14 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v12, 0);
  }

  else if (v13 <= 300.0)
  {
    v14 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v12, 1);
  }

  else if (v13 <= 600.0)
  {
    v14 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v12, 2);
  }

  else if (v13 <= 1200.0)
  {
    v14 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v12, 3);
  }

  else if (v13 <= 1800.0)
  {
    v14 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v12, 4);
  }

  else if (v13 <= 2400.0)
  {
    v14 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v12, 5);
  }

  else if (v13 <= 3000.0)
  {
    v14 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v12, 6);
  }

  else if (v13 <= 3600.0)
  {
    v14 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v12, 7);
  }

  else if (v13 <= 7200.0)
  {
    v14 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v12, 8);
  }

  else if (v13 <= 10800.0)
  {
    v14 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v12, 9);
  }

  else
  {
    v14 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v12, 10);
  }

  v16 = @"unknown";
  if (v3)
  {
    v16 = v3;
  }

  v842[2] = v14;
  v842[3] = v16;
  v841[3] = @"accessoryHardwareModel";
  v841[4] = @"accessoryBudLocation";
  v842[4] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v15, *(v2 + 2132));
  v841[5] = @"percentSessionInBTZ";
  v19 = 0.0;
  v20 = 0.0;
  if (v4 >= 0.001)
  {
    v21 = *(v2 + 24) / v4;
    v20 = v21;
  }

  v842[5] = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v17, v18, v20);
  v841[6] = @"percentSourceActivityStateStatic";
  if (v4 >= 0.001)
  {
    v24 = *(v2 + 40) / v4;
    v19 = v24;
  }

  v842[6] = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v22, v23, v19);
  v841[7] = @"percentSourceActivityStateVehicular";
  v27 = 0.0;
  v28 = 0.0;
  if (v4 >= 0.001)
  {
    v29 = *(v2 + 56) / v4;
    v28 = v29;
  }

  v842[7] = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v25, v26, v28);
  v841[8] = @"percentSourceActivityStatePedestrian";
  if (v4 >= 0.001)
  {
    v32 = *(v2 + 72) / v4;
    v27 = v32;
  }

  v842[8] = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v30, v31, v27);
  v841[9] = @"timeBeforeFirstAuxSample";
  v842[9] = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v33, v34, *(v2 + 2144));
  v841[10] = @"percent2IMUInVehicle";
  v37 = *(v2 + 56);
  v38 = 0.0;
  v39 = 0.0;
  if (v37 >= 0.001)
  {
    v40 = *(v2 + 88) / v37;
    v39 = v40;
  }

  v842[10] = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v35, v36, v39);
  v841[11] = @"percent2IMUWhilePedestrian";
  v43 = *(v2 + 72);
  if (v43 >= 0.001)
  {
    v44 = *(v2 + 104) / v43;
    v38 = v44;
  }

  v842[11] = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v41, v42, v38);
  v841[12] = @"percent1IMU";
  v47 = 0.0;
  if (v4 >= 0.001)
  {
    v48 = *(v2 + 120) / v4;
    v47 = v48;
  }

  v842[12] = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v45, v46, v47);
  v841[13] = @"trackingModeSwitchCount";
  v842[13] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v49, *(v2 + 1968));
  v841[14] = @"percentSessionInCT";
  v52 = 0.0;
  v53 = 0.0;
  if (v4 >= 0.001)
  {
    v53 = *(v2 + 136) / v4;
    *&v53 = v53;
  }

  v842[14] = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v50, v51, v53);
  v841[15] = @"percentSessionInCTIn1IMU";
  if (v4 >= 0.001)
  {
    v56 = *(v2 + 152) / v4;
    v52 = v56;
  }

  *&v56 = v52;
  v842[15] = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v54, v55, v56);
  v841[16] = @"percentSessionInCTInVehicle";
  v59 = 0.0;
  v60 = 0.0;
  if (v4 >= 0.001)
  {
    v60 = *(v2 + 168) / v4;
    *&v60 = v60;
  }

  v842[16] = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v57, v58, v60);
  v841[17] = @"percentSessionInCTInPedestrian";
  if (v4 >= 0.001)
  {
    v63 = *(v2 + 184) / v4;
    v59 = v63;
  }

  *&v63 = v59;
  v842[17] = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v61, v62, v63);
  v841[18] = @"numberOfCTEvents";
  v842[18] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v64, *(v2 + 1952));
  v841[19] = @"numberOfCTEventsIn1IMU";
  v842[19] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v65, *(v2 + 1956));
  v841[20] = @"numberOfCTEventsInVehicle";
  v842[20] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v66, *(v2 + 1960));
  v841[21] = @"numberOfCTEventsInPedestrian";
  v842[21] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v67, *(v2 + 1964));
  v841[22] = @"distractedViewingCount";
  v842[22] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v68, *(v2 + 1972));
  v841[23] = @"trackingReEnabledViaTouchCount";
  v842[23] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v69, *(v2 + 1976));
  v841[24] = @"trackingReEnabledViaSrcPickUpCount";
  v842[24] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v70, *(v2 + 1980));
  v841[25] = @"trackingReEnabledViaAuxStaticCount";
  v842[25] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v71, *(v2 + 1984));
  v841[26] = @"trackingReEnabledViaStandToSitCount";
  v842[26] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v72, *(v2 + 1988));
  v841[27] = @"trackingReEnabledViaJBLUnderLimitCount";
  v842[27] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v73, *(v2 + 1992));
  v841[28] = @"trackingReEnabledViaFaceDetectCount";
  v842[28] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v74, *(v2 + 1996));
  v841[29] = @"timeBeforeFirstValidPose";
  v75 = *(v2 + 2152);
  *&v75 = v75;
  v842[29] = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v76, v77, v75);
  v841[30] = @"percentSessionSrcMoving";
  v80 = 0.0;
  v81 = 0.0;
  if (v4 >= 0.001)
  {
    v81 = *(v2 + 216) / v4;
    *&v81 = v81;
  }

  v842[30] = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v78, v79, v81);
  v841[31] = @"percentSessionAuxMoving";
  if (v4 >= 0.001)
  {
    v84 = *(v2 + 200) / v4;
    v80 = v84;
  }

  *&v84 = v80;
  v842[31] = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v82, v83, v84);
  v841[32] = @"percentSessionAuxAndSrcMoving";
  v87 = 0.0;
  v88 = 0.0;
  if (v4 >= 0.001)
  {
    v88 = *(v2 + 232) / v4;
    *&v88 = v88;
  }

  v842[32] = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v85, v86, v88);
  v841[33] = @"percentSessionAuxAndSrcQuiescent";
  if (v4 >= 0.001)
  {
    v91 = *(v2 + 248) / v4;
    v87 = v91;
  }

  *&v91 = v87;
  v842[33] = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v89, v90, v91);
  v841[34] = @"percentFeedAuxSuccess";
  v94 = *(v2 + 920);
  v95 = 0.0;
  v96 = 0.0;
  if (v94 >= 1)
  {
    v96 = *(v2 + 912) / v94;
    *&v96 = v96;
  }

  v842[34] = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v92, v93, v96);
  v841[35] = @"percentRecentPoseAvailable";
  v100 = *(v2 + 952);
  if (v100 >= 1)
  {
    v99 = *(v2 + 944) / v100;
    v95 = v99;
  }

  *&v99 = v95;
  v842[35] = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v97, v98, v99);
  v841[36] = @"auxGyroBiasConvergenceDuration";
  v101 = *(v2 + 264);
  *&v101 = v101;
  v842[36] = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v102, v103, v101);
  v841[37] = @"JBLOverLimitCount";
  v842[37] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v104, *(v2 + 2012));
  v841[38] = @"percentSessionSteadyStatePedestrian";
  v107 = 0.0;
  v108 = 0.0;
  if (v4 >= 0.001)
  {
    v108 = *(v2 + 280) / v4;
    *&v108 = v108;
  }

  v842[38] = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v105, v106, v108);
  v841[39] = @"trackingDisabledViaWalkingCount";
  v842[39] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v109, *(v2 + 2016));
  v841[40] = @"trackingDisabledViaSitToStandWalkingCount";
  v842[40] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v110, *(v2 + 2020));
  v841[41] = @"trackingDisabledViaJBLCount";
  v842[41] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v111, *(v2 + 2024));
  v841[42] = @"keepBoresightCenteredDueToDynamicsCount";
  v842[42] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v112, *(v2 + 2028));
  v841[43] = @"percentSessionKeepBoresightCentered";
  if (v4 >= 0.001)
  {
    v115 = *(v2 + 296) / v4;
    v107 = v115;
  }

  *&v115 = v107;
  v842[43] = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v113, v114, v115);
  v841[44] = @"hasDistractedViewing";
  v842[44] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v116, *(a1 + 56));
  v841[45] = @"hasJBLOverLimit";
  v842[45] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v117, *(a1 + 57));
  v841[46] = @"sitCount";
  v842[46] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v118, *(v2 + 2032));
  v841[47] = @"standCount";
  v842[47] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v119, *(v2 + 2036));
  v841[48] = @"percentSessionDisabledDueToWalking";
  v122 = 0.0;
  v123 = 0.0;
  if (v4 >= 0.001)
  {
    v123 = *(v2 + 312) / v4;
    *&v123 = v123;
  }

  v842[48] = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v120, v121, v123);
  v841[49] = @"percentSessionDisabledDueToJBL";
  if (v4 >= 0.001)
  {
    v126 = *(v2 + 328) / v4;
    v122 = v126;
  }

  v127 = v5;
  *&v126 = v122;
  v842[49] = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v124, v125, v126);
  v841[50] = @"percentSessionHeadtracked";
  v130 = 0.0;
  v131 = 0.0;
  if (v4 >= 0.001)
  {
    v131 = *(v2 + 344) / v4;
    *&v131 = v131;
  }

  v842[50] = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v128, v129, v131);
  v841[51] = @"sessionEnvironmentType";
  v842[51] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v132, *(v2 + 2244));
  v841[52] = @"percentSteadyStatePedestrianCTBodyTurn";
  if (v127 >= 0.001)
  {
    v135 = *(v2 + 360) / v127;
    v130 = v135;
  }

  *&v135 = v130;
  v842[52] = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v133, v134, v135);
  v841[53] = @"percentSteadyStatePedestrianHeadTurn";
  v138 = 0.0;
  if (v127 >= 0.001)
  {
    v138 = *(v2 + 376) / v127;
    *&v138 = v138;
  }

  v842[53] = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v136, v137, v138);
  v841[54] = @"maxJBLDisablesPerMinute";
  v140 = *(v2 + 2112);
  v141 = *(v2 + 2124);
  if (v140 <= v141)
  {
    v142 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v139, v141);
  }

  else
  {
    v142 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v139, v140);
  }

  v842[54] = v142;
  v841[55] = @"bucketedMaxJBLDisablesPerMinute";
  v144 = *(v2 + 2124);
  if (*(v2 + 2112) > v144)
  {
    v144 = *(v2 + 2112);
  }

  v145 = *(v2 + 2248);
  v146 = *(v2 + 2256);
  if (v145 == v146)
  {
    v148 = *(v2 + 2248);
  }

  else
  {
    v147 = v144;
    v148 = *(v2 + 2248);
    while (*v148 <= v147)
    {
      if (++v148 == v146)
      {
        v148 = *(v2 + 2256);
        break;
      }
    }
  }

  v842[55] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v143, (v148 - v145) >> 3);
  v841[56] = @"cameraOnDuration";
  v149 = *(v2 + 392);
  *&v149 = v149;
  v842[56] = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v150, v151, v149);
  v841[57] = @"percentageOfSessionCameraOn";
  v154 = 0.0;
  v155 = 0.0;
  if (v4 >= 0.001)
  {
    v155 = *(v2 + 392) / v4;
    *&v155 = v155;
  }

  v842[57] = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v152, v153, v155);
  v841[58] = @"numberOfCameraRequest";
  v842[58] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v156, *(v2 + 2040));
  v841[59] = @"percentageOfSessionInLockScreen";
  if (v4 >= 0.001)
  {
    v159 = *(v2 + 408) / v4;
    v154 = v159;
  }

  *&v159 = v154;
  v842[59] = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v157, v158, v159);
  v841[60] = @"percentageOfSessionWithExternalScreen";
  v162 = 0.0;
  v163 = 0.0;
  if (v4 >= 0.001)
  {
    v163 = *(v2 + 424) / v4;
    *&v163 = v163;
  }

  v842[60] = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v160, v161, v163);
  v841[61] = @"numberOfExternalScreens";
  v842[61] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v164, *(v2 + 2044));
  v841[62] = @"numberOfBTZ";
  v842[62] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v165, *(v2 + 2272));
  v841[63] = @"numberOfDeviceOrientationChange";
  v842[63] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v166, *(v2 + 2276));
  v841[64] = @"trackingScheme";
  v842[64] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v167, *(v2 + 2240));
  v841[65] = @"percentHeadsetActivityOther";
  if (v4 >= 0.001)
  {
    v170 = *(v2 + 440) / v4;
    v162 = v170;
  }

  *&v170 = v162;
  v842[65] = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v168, v169, v170);
  v841[66] = @"percentHeadsetActivityWalking";
  v173 = 0.0;
  v174 = 0.0;
  if (v4 >= 0.001)
  {
    v174 = *(v2 + 456) / v4;
    *&v174 = v174;
  }

  v842[66] = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v171, v172, v174);
  v841[67] = @"percentHeadsetActivityRunning";
  if (v4 >= 0.001)
  {
    v177 = *(v2 + 472) / v4;
    v173 = v177;
  }

  *&v177 = v173;
  v842[67] = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v175, v176, v177);
  v841[68] = @"percentHeadsetActivityStationary";
  v180 = 0.0;
  v181 = 0.0;
  if (v4 >= 0.001)
  {
    v181 = *(v2 + 488) / v4;
    *&v181 = v181;
  }

  v842[68] = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v178, v179, v181);
  v841[69] = @"percentHeadsetActivityPedestrian";
  if (v4 >= 0.001)
  {
    v184 = *(v2 + 504) / v4;
    v180 = v184;
  }

  *&v184 = v180;
  v842[69] = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v182, v183, v184);
  v841[70] = @"percentageOfSessionSrcActivityStationaryAndHeadsetActivityPedestrian";
  v187 = 0.0;
  v188 = 0.0;
  if (v4 >= 0.001)
  {
    v188 = *(v2 + 520) / v4;
    *&v188 = v188;
  }

  v842[70] = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v185, v186, v188);
  v841[71] = @"percentageOfSessionSrcActivityStationaryAndHeadsetActivityOtherMoving";
  if (v4 >= 0.001)
  {
    v191 = *(v2 + 536) / v4;
    v187 = v191;
  }

  *&v191 = v187;
  v842[71] = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v189, v190, v191);
  v841[72] = @"percentageOfSessionSrcActivityStationaryAndHeadsetActivityStationary";
  v194 = 0.0;
  v195 = 0.0;
  if (v4 >= 0.001)
  {
    v195 = *(v2 + 552) / v4;
    *&v195 = v195;
  }

  v842[72] = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v192, v193, v195);
  v841[73] = @"percentageOfSrcActivityWalkingWhenHeadsetActivityWalking";
  v198 = *(v2 + 456);
  *&v198 = v198;
  if (*&v198 >= 0.001)
  {
    v198 = *(v2 + 584) / *&v198;
    v194 = v198;
  }

  *&v198 = v194;
  v842[73] = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v196, v197, v198);
  v841[74] = @"percentageOfSrcActivityPedestrianWhenHeadsetActivityPedestrian";
  v201 = *(v2 + 504);
  v202 = 0.0;
  v203 = 0.0;
  if (v201 >= 0.001)
  {
    v203 = *(v2 + 600) / v201;
    *&v203 = v203;
  }

  v842[74] = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v199, v200, v203);
  v841[75] = @"percentageOfHeadsetActivityPedestrianWhenSessionSrcActivityPedestrian";
  v206 = *(v2 + 72);
  *&v206 = v206;
  if (*&v206 >= 0.001)
  {
    v206 = *(v2 + 616) / *&v206;
    v202 = v206;
  }

  *&v206 = v202;
  v842[75] = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v204, v205, v206);
  v841[76] = @"percentageOfHeadsetActivityWalkingWhenSrcActivityWalking";
  v209 = *(v2 + 568);
  v210 = 0.0;
  if (v209 >= 0.001)
  {
    v210 = *(v2 + 632) / v209;
    *&v210 = v210;
  }

  v842[76] = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v207, v208, v210);
  v841[77] = @"percentageOfPotentiallyRejectedAnchors";
  LODWORD(v211) = *(v2 + 2284);
  v842[77] = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v212, v213, v211);
  v841[78] = @"percentageOfActuallyRejectedAnchors";
  LODWORD(v214) = *(v2 + 2288);
  v842[78] = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v215, v216, v214);
  v218 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v217, v842, v841, 79);
  objc_msgSend_setDictionary_(v8, v219, v218);
  v222 = *(v2 + 2160);
  if (v222 > 0.0)
  {
    *&v222 = v222;
    v223 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v220, v221, v222);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v224, v223, @"timeToFirstFaceposeInSession");
  }

  v225 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v220, *(v2 + 2280));
  objc_msgSend_setObject_forKeyedSubscript_(v8, v226, v225, @"maxNumberOfFaceDetectedDuringSession");
  v230 = *(v2 + 2088);
  if (v230 >= 1)
  {
    v231 = v230;
    *&v229 = *(v2 + 2080) / v230;
    v232 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v227, v228, v229);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v233, v232, @"percentageOfCameraRequestMultipleFaceDetected");
    *&v234 = *(v2 + 2084) / v231;
    v237 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v235, v236, v234);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v238, v237, @"percentageOfCameraRequestNoFaceDetected");
  }

  if (*(v2 + 640) != 1.79769313e308)
  {
    v239 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v227, v228, *(v2 + 648));
    objc_msgSend_setObject_forKeyedSubscript_(v8, v240, v239, @"maxGapBetweenAuxSamples");
    v243 = *(v2 + 664);
    if (v243 < 1)
    {
      v244 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v241, v242, 0.0);
    }

    else
    {
      v244 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v241, v242, *(v2 + 656) / v243);
    }

    objc_msgSend_setObject_forKeyedSubscript_(v8, v245, v244, @"avgGapBetweenAuxSamples");
  }

  if (*(v2 + 672) != 1.79769313e308)
  {
    v246 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v227, v228, *(v2 + 680));
    objc_msgSend_setObject_forKeyedSubscript_(v8, v247, v246, @"maxGapBetweenBTZ");
    v250 = *(v2 + 696);
    if (v250 < 1)
    {
      v251 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v248, v249, 0.0);
    }

    else
    {
      v251 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v248, v249, *(v2 + 688) / v250);
    }

    objc_msgSend_setObject_forKeyedSubscript_(v8, v252, v251, @"avgGapBetweenBTZ");
  }

  v253 = *(v2 + 704);
  if (v253 != 1.79769313e308)
  {
    *&v253 = v253;
    v254 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v227, v228, v253);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v255, v254, @"minGapBetweenCTSeconds");
    v258 = *(v2 + 728);
    if (v258 < 1)
    {
      v260 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v256, v257, 0.0);
    }

    else
    {
      v259 = *(v2 + 720) / v258;
      *&v259 = v259;
      v260 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v256, v257, v259);
    }

    objc_msgSend_setObject_forKeyedSubscript_(v8, v261, v260, @"avgGapBetweenCTSeconds");
    v262 = *(v2 + 712);
    *&v262 = v262;
    v265 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v263, v264, v262);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v266, v265, @"maxGapBetweenCTSeconds");
  }

  v267 = *(v2 + 736);
  if (v267 != 1.79769313e308)
  {
    v268 = v267 * 57.2957802;
    *&v268 = v268;
    v269 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v227, v228, v268);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v270, v269, @"minCTBTZCorrectionAngleDeg");
    v273 = *(v2 + 760);
    if (v273 < 1)
    {
      v275 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v271, v272, 0.0);
    }

    else
    {
      v274 = *(v2 + 752) / v273 * 57.2957802;
      *&v274 = v274;
      v275 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v271, v272, v274);
    }

    objc_msgSend_setObject_forKeyedSubscript_(v8, v276, v275, @"avgCTBTZCorrectionAngleDeg");
    v277 = *(v2 + 744) * 57.2957802;
    *&v277 = v277;
    v280 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v278, v279, v277);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v281, v280, @"maxCTBTZCorrectionAngleDeg");
  }

  v282 = *(v2 + 768);
  if (v282 != 1.79769313e308)
  {
    v283 = v282 * 57.2957802;
    *&v283 = v283;
    v284 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v227, v228, v283);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v285, v284, @"minCTSrcYawRateDps");
    v288 = *(v2 + 792);
    if (v288 < 1)
    {
      v290 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v286, v287, 0.0);
    }

    else
    {
      v289 = *(v2 + 784) / v288 * 57.2957802;
      *&v289 = v289;
      v290 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v286, v287, v289);
    }

    objc_msgSend_setObject_forKeyedSubscript_(v8, v291, v290, @"avgCTSrcYawRateDps");
    v292 = *(v2 + 776) * 57.2957802;
    *&v292 = v292;
    v295 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v293, v294, v292);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v296, v295, @"maxCTSrcYawRateDps");
  }

  v297 = *(v2 + 800);
  if (v297 != 1.79769313e308)
  {
    v298 = v297 * 57.2957802;
    *&v298 = v298;
    v299 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v227, v228, v298);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v300, v299, @"minCTAuxYawRateDps");
    v303 = *(v2 + 824);
    if (v303 < 1)
    {
      v305 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v301, v302, 0.0);
    }

    else
    {
      v304 = *(v2 + 816) / v303 * 57.2957802;
      *&v304 = v304;
      v305 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v301, v302, v304);
    }

    objc_msgSend_setObject_forKeyedSubscript_(v8, v306, v305, @"avgCTAuxYawRateDps");
    v307 = *(v2 + 808) * 57.2957802;
    *&v307 = v307;
    v310 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v308, v309, v307);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v311, v310, @"maxCTAuxYawRateDps");
  }

  if (*(v2 + 832) != 1.79769313e308)
  {
    v312 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v227, v228);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v313, v312, @"minDistractedViewingDuration");
    v316 = *(v2 + 856);
    if (v316 < 1)
    {
      v317 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v314, v315, 0.0);
    }

    else
    {
      v317 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v314, v315, *(v2 + 848) / v316);
    }

    objc_msgSend_setObject_forKeyedSubscript_(v8, v318, v317, @"avgDistractedViewingDuration");
    v321 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v319, v320, *(v2 + 840));
    objc_msgSend_setObject_forKeyedSubscript_(v8, v322, v321, @"maxDistractedViewingDuration");
  }

  v323 = *(v2 + 864);
  if (v323 != 1.79769313e308)
  {
    v324 = v323 * 57.2957802;
    *&v324 = v324;
    v325 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v227, v228, v324);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v326, v325, @"minBTZCorrectionAngleDeg");
    v329 = *(v2 + 888);
    if (v329 < 1)
    {
      v331 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v327, v328, 0.0);
    }

    else
    {
      v330 = *(v2 + 880) / v329 * 57.2957802;
      *&v330 = v330;
      v331 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v327, v328, v330);
    }

    objc_msgSend_setObject_forKeyedSubscript_(v8, v332, v331, @"avgBTZCorrectionAngleDeg");
    v333 = *(v2 + 872) * 57.2957802;
    *&v333 = v333;
    v336 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v334, v335, v333);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v337, v336, @"maxBTZCorrectionAngleDeg");
  }

  v338 = *(v2 + 960);
  if (v338 != 1.79769313e308)
  {
    *&v338 = v338;
    v339 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v227, v228, v338);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v340, v339, @"minAuxMotionToPoseLatency");
    v343 = *(v2 + 984);
    if (v343 < 1)
    {
      v345 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v341, v342, 0.0);
    }

    else
    {
      v344 = *(v2 + 976) / v343;
      *&v344 = v344;
      v345 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v341, v342, v344);
    }

    objc_msgSend_setObject_forKeyedSubscript_(v8, v346, v345, @"avgAuxMotionToPoseLatency");
    v347 = *(v2 + 968);
    *&v347 = v347;
    v350 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v348, v349, v347);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v351, v350, @"maxAuxMotionToPoseLatency");
  }

  v352 = *(v2 + 992);
  if (v352 != 1.79769313e308)
  {
    *&v352 = v352;
    v353 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v227, v228, v352);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v354, v353, @"minJBL");
    v355 = *(v2 + 1000);
    *&v355 = v355;
    v358 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v356, v357, v355);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v359, v358, @"maxJBL");
    LOWORD(v360) = *(v2 + 2228);
    v361 = *(v2 + 2232) + v360 * *(*(v2 + 2200) + 16 * *(v2 + 2224) + 8);
    *&v361 = v361;
    *(v2 + 2232) = LODWORD(v361);
    *&v361 = *&v361 / v4;
    v364 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v362, v363, v361);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v365, v364, @"avgJBL");
  }

  v366 = *(v2 + 1024);
  if (v366 != 1.79769313e308)
  {
    *&v366 = v366;
    v367 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v227, v228, v366);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v368, v367, @"timeBetweenStandAndWalkingEventSecondsMin");
    v369 = *(v2 + 1032);
    *&v369 = v369;
    v372 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v370, v371, v369);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v373, v372, @"timeBetweenStandAndWalkingEventSecondsMax");
    v376 = *(v2 + 1048);
    if (v376 < 1)
    {
      v378 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v374, v375, 0.0);
    }

    else
    {
      v377 = *(v2 + 1040) / v376;
      *&v377 = v377;
      v378 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v374, v375, v377);
    }

    objc_msgSend_setObject_forKeyedSubscript_(v8, v379, v378, @"timeBetweenStandAndWalkingEventSecondsAverage");
  }

  v380 = *(v2 + 1056);
  if (v380 != 1.79769313e308)
  {
    *&v380 = v380;
    v381 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v227, v228, v380);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v382, v381, @"timeBetweenSitAndWalkingEventSecondsMin");
    v383 = *(v2 + 1064);
    *&v383 = v383;
    v386 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v384, v385, v383);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v387, v386, @"timeBetweenSitAndWalkingEventSecondsMax");
    v390 = *(v2 + 1080);
    if (v390 < 1)
    {
      v392 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v388, v389, 0.0);
    }

    else
    {
      v391 = *(v2 + 1072) / v390;
      *&v391 = v391;
      v392 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v388, v389, v391);
    }

    objc_msgSend_setObject_forKeyedSubscript_(v8, v393, v392, @"timeBetweenSitAndWalkingEventSecondsAverage");
  }

  v394 = *(v2 + 1088);
  if (v394 != 1.79769313e308)
  {
    *&v394 = v394;
    v395 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v227, v228, v394);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v396, v395, @"timeBetweenStandingAndSittingSecondsMin");
    v397 = *(v2 + 1096);
    *&v397 = v397;
    v400 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v398, v399, v397);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v401, v400, @"timeBetweenStandingAndSittingSecondsMax");
    v404 = *(v2 + 1112);
    if (v404 < 1)
    {
      v406 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v402, v403, 0.0);
    }

    else
    {
      v405 = *(v2 + 1104) / v404;
      *&v405 = v405;
      v406 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v402, v403, v405);
    }

    objc_msgSend_setObject_forKeyedSubscript_(v8, v407, v406, @"timeBetweenStandingAndSittingSecondsAverage");
  }

  v408 = *(v2 + 1120);
  if (v408 != 1.79769313e308)
  {
    *&v408 = v408;
    v409 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v227, v228, v408);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v410, v409, @"timeBetweenSittingAndStandingSecondsMin");
    v411 = *(v2 + 1128);
    *&v411 = v411;
    v414 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v412, v413, v411);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v415, v414, @"timeBetweenSittingAndStandingSecondsMax");
    v418 = *(v2 + 1144);
    if (v418 < 1)
    {
      v420 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v416, v417, 0.0);
    }

    else
    {
      v419 = *(v2 + 1136) / v418;
      *&v419 = v419;
      v420 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v416, v417, v419);
    }

    objc_msgSend_setObject_forKeyedSubscript_(v8, v421, v420, @"timeBetweenSittingAndStandingSecondsAverage");
  }

  v422 = *(v2 + 1152);
  if (v422 != 1.79769313e308)
  {
    *&v422 = v422;
    v423 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v227, v228, v422);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v424, v423, @"timeBetweenStandAndDisableSecondsMin");
    v425 = *(v2 + 1160);
    *&v425 = v425;
    v428 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v426, v427, v425);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v429, v428, @"timeBetweenStandAndDisableSecondsMax");
    v432 = *(v2 + 1176);
    if (v432 < 1)
    {
      v434 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v430, v431, 0.0);
    }

    else
    {
      v433 = *(v2 + 1168) / v432;
      *&v433 = v433;
      v434 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v430, v431, v433);
    }

    objc_msgSend_setObject_forKeyedSubscript_(v8, v435, v434, @"timeBetweenStandAndDisableSecondsAverage");
  }

  v436 = *(v2 + 1184);
  if (v436 != 1.79769313e308)
  {
    *&v436 = v436;
    v437 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v227, v228, v436);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v438, v437, @"timeBetweenEnableAndDisableTrackingMin");
    v439 = *(v2 + 1192);
    *&v439 = v439;
    v442 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v440, v441, v439);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v443, v442, @"timeBetweenEnableAndDisableTrackingMax");
    v446 = *(v2 + 1208);
    if (v446 < 1)
    {
      v448 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v444, v445, 0.0);
    }

    else
    {
      v447 = *(v2 + 1200) / v446;
      *&v447 = v447;
      v448 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v444, v445, v447);
    }

    objc_msgSend_setObject_forKeyedSubscript_(v8, v449, v448, @"timeBetweenEnableAndDisableTrackingAverage");
  }

  v450 = *(v2 + 1216);
  if (v450 != 1.79769313e308)
  {
    *&v450 = v450;
    v451 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v227, v228, v450);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v452, v451, @"minTimeBetweenCameraRequest");
    v453 = *(v2 + 1224);
    *&v453 = v453;
    v456 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v454, v455, v453);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v457, v456, @"maxTimeBetweenCameraRequest");
    v460 = *(v2 + 1240);
    if (v460 < 1)
    {
      v462 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v458, v459, 0.0);
    }

    else
    {
      v461 = *(v2 + 1232) / v460;
      *&v461 = v461;
      v462 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v458, v459, v461);
    }

    objc_msgSend_setObject_forKeyedSubscript_(v8, v463, v462, @"avgTimeBetweenCameraRequest");
  }

  v464 = *(v2 + 1248);
  if (v464 != 1.79769313e308)
  {
    *&v464 = v464;
    v465 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v227, v228, v464);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v466, v465, @"minLidAngle");
    v467 = *(v2 + 1256);
    *&v467 = v467;
    v470 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v468, v469, v467);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v471, v470, @"maxLidAngle");
    v474 = *(v2 + 1272);
    if (v474 < 1)
    {
      v476 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v472, v473, 0.0);
    }

    else
    {
      v475 = *(v2 + 1264) / v474;
      *&v475 = v475;
      v476 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v472, v473, v475);
    }

    objc_msgSend_setObject_forKeyedSubscript_(v8, v477, v476, @"avgLidAngle");
  }

  v478 = *(v2 + 1280);
  if (v478 != 1.79769313e308)
  {
    *&v478 = v478;
    v479 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v227, v228, v478);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v480, v479, @"minDurationBetweenUserMovementForCameraController");
    v481 = *(v2 + 1288);
    *&v481 = v481;
    v484 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v482, v483, v481);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v485, v484, @"maxDurationBetweenUserMovementForCameraController");
    v488 = *(v2 + 1304);
    if (v488 < 1)
    {
      v490 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v486, v487, 0.0);
    }

    else
    {
      v489 = *(v2 + 1296) / v488;
      *&v489 = v489;
      v490 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v486, v487, v489);
    }

    objc_msgSend_setObject_forKeyedSubscript_(v8, v491, v490, @"avgDurationBetweenUserMovementForCameraController");
  }

  v492 = *(v2 + 1312);
  if (v492 != 1.79769313e308)
  {
    *&v492 = v492;
    v493 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v227, v228, v492);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v494, v493, @"minUserMotionDurationForCameraController");
    v495 = *(v2 + 1320);
    *&v495 = v495;
    v498 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v496, v497, v495);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v499, v498, @"maxUserMotionDurationForCameraController");
    v502 = *(v2 + 1336);
    if (v502 < 1)
    {
      v504 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v500, v501, 0.0);
    }

    else
    {
      v503 = *(v2 + 1328) / v502;
      *&v503 = v503;
      v504 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v500, v501, v503);
    }

    objc_msgSend_setObject_forKeyedSubscript_(v8, v505, v504, @"avgUserMotionDurationForCameraController");
  }

  v506 = *(v2 + 1344);
  if (v506 != 1.79769313e308)
  {
    *&v506 = v506;
    v507 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v227, v228, v506);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v508, v507, @"minUserStaticPoseAfterDisturbanceDurationForCameraController");
    v509 = *(v2 + 1352);
    *&v509 = v509;
    v512 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v510, v511, v509);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v513, v512, @"maxUserStaticPoseAfterDisturbanceDurationForCameraController");
    v516 = *(v2 + 1368);
    if (v516 < 1)
    {
      v518 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v514, v515, 0.0);
    }

    else
    {
      v517 = *(v2 + 1360) / v516;
      *&v517 = v517;
      v518 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v514, v515, v517);
    }

    objc_msgSend_setObject_forKeyedSubscript_(v8, v519, v518, @"avgUserStaticPoseAfterDisturbanceDurationForCameraController");
  }

  v520 = *(v2 + 1376);
  if (v520 != 1.79769313e308)
  {
    *&v520 = v520;
    v521 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v227, v228, v520);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v522, v521, @"minTimeToFirstFaceposeInCameraRequest");
    v523 = *(v2 + 1384);
    *&v523 = v523;
    v526 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v524, v525, v523);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v527, v526, @"maxTimeToFirstFaceposeInCameraRequest");
    v530 = *(v2 + 1400);
    if (v530 < 1)
    {
      v532 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v528, v529, 0.0);
    }

    else
    {
      v531 = *(v2 + 1392) / v530;
      *&v531 = v531;
      v532 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v528, v529, v531);
    }

    objc_msgSend_setObject_forKeyedSubscript_(v8, v533, v532, @"avgTimeToFirstFaceposeInCameraRequest");
  }

  if (*(v2 + 1408) != 1.79769313e308)
  {
    v534 = *(v2 + 1416);
    *&v534 = v534;
    v535 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v227, v228, v534);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v536, v535, @"maxFaceposeLatencySec");
    v539 = *(v2 + 1432);
    if (v539 < 1)
    {
      v541 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v537, v538, 0.0);
    }

    else
    {
      v540 = *(v2 + 1424) / v539;
      *&v540 = v540;
      v541 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v537, v538, v540);
    }

    objc_msgSend_setObject_forKeyedSubscript_(v8, v542, v541, @"avgFaceposeLatencySec");
  }

  v543 = *(v2 + 1888);
  if (v543 != 1.79769313e308)
  {
    v544 = *(v2 + 1912);
    if (v544 < 1)
    {
      v546 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v227, v228, 0.0);
    }

    else
    {
      v545 = *(v2 + 1904) / v544;
      *&v545 = v545;
      v546 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v227, v228, v545);
    }

    objc_msgSend_setObject_forKeyedSubscript_(v8, v547, v546, @"avgDistanceFromCamera");
  }

  v548 = *(v2 + 2048);
  if (v548)
  {
    v549 = *(v2 + 2056) + *(v2 + 2052);
    v550 = v548 >= v549;
    v551 = v548 - v549;
    if (v550)
    {
      *&v543 = v551 / v548;
      v552 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v227, v228, v543);
      objc_msgSend_setObject_forKeyedSubscript_(v8, v553, v552, @"percentageOfFaceposeAnchorValid");
      *&v554 = *(v2 + 2052) / *(v2 + 2048);
      v557 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v555, v556, v554);
      objc_msgSend_setObject_forKeyedSubscript_(v8, v558, v557, @"percentageOfFaceposeAnchorInvalidDueToFaceposeFailure");
      *&v559 = *(v2 + 2056) / *(v2 + 2048);
      v562 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v560, v561, v559);
      objc_msgSend_setObject_forKeyedSubscript_(v8, v563, v562, @"percentageOfFaceposeAnchorInvalidDueToConfidence");
    }
  }

  v564 = *(v2 + 2040);
  if (v564)
  {
    v565 = *(v2 + 2060);
    if (vaddvq_s32(v565) + *(v2 + 2076) <= v564)
    {
      *v565.i32 = v565.u32[0] / v564;
      v566 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v227, v228, *v565.i64);
      objc_msgSend_setObject_forKeyedSubscript_(v8, v567, v566, @"percentageOfCameraRequestDueToMaxDutyCycleStatic");
      *&v568 = *(v2 + 2064) / *(v2 + 2040);
      v571 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v569, v570, v568);
      objc_msgSend_setObject_forKeyedSubscript_(v8, v572, v571, @"percentageOfCameraRequestDueToMaxDutyCycleMoving");
      *&v573 = *(v2 + 2068) / *(v2 + 2040);
      v576 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v574, v575, v573);
      objc_msgSend_setObject_forKeyedSubscript_(v8, v577, v576, @"percentageOfCameraRequestDueToAuxAndSrcMotion");
      *&v578 = *(v2 + 2072) / *(v2 + 2040);
      v581 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v579, v580, v578);
      objc_msgSend_setObject_forKeyedSubscript_(v8, v582, v581, @"percentageOfCameraRequestDueToAuxMotion");
      *&v583 = *(v2 + 2076) / *(v2 + 2040);
      v586 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v584, v585, v583);
      objc_msgSend_setObject_forKeyedSubscript_(v8, v587, v586, @"percentageOfCameraRequestDueToSrcMotion");
    }
  }

  v588 = *(v2 + 1440);
  if (v588 != 1.79769313e308)
  {
    *&v588 = v588;
    v589 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v227, v228, v588);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v590, v589, @"minAnchorCorrectionAngleDeg");
    v593 = *(v2 + 1464);
    if (v593 < 1)
    {
      v595 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v591, v592, 0.0);
    }

    else
    {
      v594 = *(v2 + 1456) / v593;
      *&v594 = v594;
      v595 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v591, v592, v594);
    }

    objc_msgSend_setObject_forKeyedSubscript_(v8, v596, v595, @"avgAnchorCorrectionAngleDeg");
    v597 = *(v2 + 1448);
    *&v597 = v597;
    v600 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v598, v599, v597);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v601, v600, @"maxAnchorCorrectionAngleDeg");
  }

  v602 = *(v2 + 1472);
  if (v602 != 1.79769313e308)
  {
    *&v602 = v602;
    v603 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v227, v228, v602);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v604, v603, @"minAnchorCorrectionYawAngleDeg");
    v607 = *(v2 + 1496);
    if (v607 < 1)
    {
      v609 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v605, v606, 0.0);
    }

    else
    {
      v608 = *(v2 + 1488) / v607;
      *&v608 = v608;
      v609 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v605, v606, v608);
    }

    objc_msgSend_setObject_forKeyedSubscript_(v8, v610, v609, @"avgAnchorCorrectionYawAngleDeg");
    v611 = *(v2 + 1480);
    *&v611 = v611;
    v614 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v612, v613, v611);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v615, v614, @"maxAnchorCorrectionYawAngleDeg");
  }

  v616 = *(v2 + 1504);
  if (v616 != 1.79769313e308)
  {
    *&v616 = v616;
    v617 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v227, v228, v616);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v618, v617, @"minAnchorCorrectionPitchAngleDeg");
    v621 = *(v2 + 1528);
    if (v621 < 1)
    {
      v623 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v619, v620, 0.0);
    }

    else
    {
      v622 = *(v2 + 1520) / v621;
      *&v622 = v622;
      v623 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v619, v620, v622);
    }

    objc_msgSend_setObject_forKeyedSubscript_(v8, v624, v623, @"avgAnchorCorrectionPitchAngleDeg");
    v625 = *(v2 + 1512);
    *&v625 = v625;
    v628 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v626, v627, v625);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v629, v628, @"maxAnchorCorrectionPitchAngleDeg");
  }

  v630 = *(v2 + 1568);
  if (v630 != 1.79769313e308)
  {
    *&v630 = v630;
    v631 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v227, v228, v630);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v632, v631, @"minDistanceToCamera");
    v635 = *(v2 + 1592);
    if (v635 < 1)
    {
      v637 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v633, v634, 0.0);
    }

    else
    {
      v636 = *(v2 + 1584) / v635;
      *&v636 = v636;
      v637 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v633, v634, v636);
    }

    objc_msgSend_setObject_forKeyedSubscript_(v8, v638, v637, @"avgDistanceToCamera");
    v639 = *(v2 + 1576);
    *&v639 = v639;
    v642 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v640, v641, v639);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v643, v642, @"maxDistanceToCamera");
  }

  v644 = *(v2 + 1600);
  if (v644 != 1.79769313e308)
  {
    *&v644 = v644;
    v645 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v227, v228, v644);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v646, v645, @"minYawAngleInFaceFrame");
    v649 = *(v2 + 1624);
    if (v649 < 1)
    {
      v651 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v647, v648, 0.0);
    }

    else
    {
      v650 = *(v2 + 1616) / v649;
      *&v650 = v650;
      v651 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v647, v648, v650);
    }

    objc_msgSend_setObject_forKeyedSubscript_(v8, v652, v651, @"avgYawAngleInFaceFrame");
    v653 = *(v2 + 1608);
    *&v653 = v653;
    v656 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v654, v655, v653);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v657, v656, @"maxYawAngleInFaceFrame");
  }

  v658 = *(v2 + 1632);
  if (v658 != 1.79769313e308)
  {
    *&v658 = v658;
    v659 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v227, v228, v658);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v660, v659, @"minPitchAngleInFaceFrame");
    v663 = *(v2 + 1656);
    if (v663 < 1)
    {
      v665 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v661, v662, 0.0);
    }

    else
    {
      v664 = *(v2 + 1648) / v663;
      *&v664 = v664;
      v665 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v661, v662, v664);
    }

    objc_msgSend_setObject_forKeyedSubscript_(v8, v666, v665, @"avgPitchAngleInFaceFrame");
    v667 = *(v2 + 1640);
    *&v667 = v667;
    v670 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v668, v669, v667);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v671, v670, @"maxPitchAngleInFaceFrame");
  }

  v672 = *(v2 + 1664);
  if (v672 != 1.79769313e308)
  {
    *&v672 = v672;
    v673 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v227, v228, v672);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v674, v673, @"minRollAngleInFaceFrame");
    v677 = *(v2 + 1688);
    if (v677 < 1)
    {
      v679 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v675, v676, 0.0);
    }

    else
    {
      v678 = *(v2 + 1680) / v677;
      *&v678 = v678;
      v679 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v675, v676, v678);
    }

    objc_msgSend_setObject_forKeyedSubscript_(v8, v680, v679, @"avgRollAngleInFaceFrame");
    v681 = *(v2 + 1672);
    *&v681 = v681;
    v684 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v682, v683, v681);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v685, v684, @"maxRollAngleInFaceFrame");
  }

  v686 = *(v2 + 1696);
  if (v686 != 1.79769313e308)
  {
    *&v686 = v686;
    v687 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v227, v228, v686);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v688, v687, @"minFaceposeConfidence");
    v691 = *(v2 + 1720);
    if (v691 < 1)
    {
      v693 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v689, v690, 0.0);
    }

    else
    {
      v692 = *(v2 + 1712) / v691;
      *&v692 = v692;
      v693 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v689, v690, v692);
    }

    objc_msgSend_setObject_forKeyedSubscript_(v8, v694, v693, @"avgFaceposeConfidence");
    v695 = *(v2 + 1704);
    *&v695 = v695;
    v698 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v696, v697, v695);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v699, v698, @"maxFaceposeConfidence");
  }

  v700 = *(v2 + 1728);
  if (v700 != 1.79769313e308)
  {
    *&v700 = v700;
    v701 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v227, v228, v700);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v702, v701, @"minHorizontalAngleInCameraFrame");
    v705 = *(v2 + 1752);
    if (v705 < 1)
    {
      v707 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v703, v704, 0.0);
    }

    else
    {
      v706 = *(v2 + 1744) / v705;
      *&v706 = v706;
      v707 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v703, v704, v706);
    }

    objc_msgSend_setObject_forKeyedSubscript_(v8, v708, v707, @"avgHorizontalAngleInCameraFrame");
    v709 = *(v2 + 1736);
    *&v709 = v709;
    v712 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v710, v711, v709);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v713, v712, @"maxHorizontalAngleInCameraFrame");
  }

  v714 = *(v2 + 1760);
  if (v714 != 1.79769313e308)
  {
    *&v714 = v714;
    v715 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v227, v228, v714);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v716, v715, @"minVerticalAngleInCameraFrame");
    v719 = *(v2 + 1784);
    if (v719 < 1)
    {
      v721 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v717, v718, 0.0);
    }

    else
    {
      v720 = *(v2 + 1776) / v719;
      *&v720 = v720;
      v721 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v717, v718, v720);
    }

    objc_msgSend_setObject_forKeyedSubscript_(v8, v722, v721, @"avgVerticalAngleInCameraFrame");
    v723 = *(v2 + 1768);
    *&v723 = v723;
    v726 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v724, v725, v723);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v727, v726, @"maxVerticalAngleInCameraFrame");
  }

  if (*(v2 + 1792) != 1.79769313e308)
  {
    v728 = *(v2 + 1816);
    if (v728 < 1)
    {
      v730 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v227, v228, 0.0);
    }

    else
    {
      v729 = *(v2 + 1808) / v728;
      *&v729 = v729;
      v730 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v227, v228, v729);
    }

    objc_msgSend_setObject_forKeyedSubscript_(v8, v731, v730, @"avgAngleBetweenStemAndGravity");
  }

  if (*(v2 + 1824) != 1.79769313e308)
  {
    v732 = *(v2 + 1848);
    if (v732 < 1)
    {
      v734 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v227, v228, 0.0);
    }

    else
    {
      v733 = *(v2 + 1840) / v732;
      *&v733 = v733;
      v734 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v227, v228, v733);
    }

    objc_msgSend_setObject_forKeyedSubscript_(v8, v735, v734, @"avgAngleBetweenHeadRotationAxisAndGravity");
  }

  if (*(v2 + 1856) != 1.79769313e308)
  {
    v736 = *(v2 + 1880);
    if (v736 < 1)
    {
      v738 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v227, v228, 0.0);
    }

    else
    {
      v737 = *(v2 + 1872) / v736;
      *&v737 = v737;
      v738 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v227, v228, v737);
    }

    objc_msgSend_setObject_forKeyedSubscript_(v8, v739, v738, @"avgAngleBetweenStemAndFaceY");
  }

  if (*(v2 + 1536) != 1.79769313e308)
  {
    v740 = *(v2 + 1560);
    if (v740 < 1)
    {
      v742 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v227, v228, 0.0);
    }

    else
    {
      v741 = *(v2 + 1552) / v740;
      *&v741 = v741;
      v742 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v227, v228, v741);
    }

    objc_msgSend_setObject_forKeyedSubscript_(v8, v743, v742, @"avgAngleFromDefaultHeadToHeadsetDeg");
  }

  v744 = *(v2 + 1920);
  if (v744 != 1.79769313e308)
  {
    *&v744 = v744;
    v745 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v227, v228, v744);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v746, v745, @"minFwdPredictorErrorDeg");
    v749 = *(v2 + 1944);
    if (v749 < 1)
    {
      v751 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v747, v748, 0.0);
    }

    else
    {
      v750 = *(v2 + 1936) / v749;
      *&v750 = v750;
      v751 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v747, v748, v750);
    }

    objc_msgSend_setObject_forKeyedSubscript_(v8, v752, v751, @"avgFwdPredictorErrorDeg");
    v753 = *(v2 + 1928);
    *&v753 = v753;
    v756 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v754, v755, v753);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v757, v756, @"maxFwdPredictorErrorDeg");
  }

  v758 = *(v2 + 8);
  LODWORD(v744) = *(v2 + 2000);
  v759 = *&v744 / *(a1 + 40);
  *&v759 = v759;
  v761 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v227, v228, v759);
  if (v758 <= 60.0)
  {
    v762 = @"percentageOfSrcSamplesThatAreVeryEarly_shortSession";
  }

  else
  {
    v762 = @"percentageOfSrcSamplesThatAreVeryEarly";
  }

  if (v758 <= 60.0)
  {
    v763 = @"percentageOfSrcSamplesThatAreVeryLate_shortSession";
  }

  else
  {
    v763 = @"percentageOfSrcSamplesThatAreVeryLate";
  }

  if (v758 <= 60.0)
  {
    v764 = @"percentageOfAuxSamplesWithLargeGaps_shortSession";
  }

  else
  {
    v764 = @"percentageOfAuxSamplesWithLargeGaps";
  }

  if (v758 <= 60.0)
  {
    v765 = @"percentageOfAuxSamplesFailedToFindSource_shortSession";
  }

  else
  {
    v765 = @"percentageOfAuxSamplesFailedToFindSource";
  }

  if (v758 <= 60.0)
  {
    v766 = @"percentageOfAuxSamplesIndexUnchanged_shortSession";
  }

  else
  {
    v766 = @"percentageOfAuxSamplesIndexUnchanged";
  }

  if (v758 <= 60.0)
  {
    v767 = @"percentageOfAuxSamplesSourceDataMissing_shortSession";
  }

  else
  {
    v767 = @"percentageOfAuxSamplesSourceDataMissing";
  }

  objc_msgSend_setObject_forKeyedSubscript_(v8, v760, v761, v762);
  LODWORD(v768) = *(v2 + 2004);
  v769 = v768 / *(a1 + 40);
  *&v769 = v769;
  v772 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v770, v771, v769);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v773, v772, v763);
  v774 = *(v2 + 2168) / *(a1 + 48);
  *&v774 = v774;
  v777 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v775, v776, v774);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v778, v777, v764);
  v779 = *(v2 + 2176) / *(a1 + 48);
  *&v779 = v779;
  v782 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v780, v781, v779);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v783, v782, v765);
  v784 = *(v2 + 2184) / *(a1 + 48);
  *&v784 = v784;
  v787 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v785, v786, v784);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v788, v787, v766);
  v789 = *(v2 + 2192) / *(a1 + 48);
  *&v789 = v789;
  v792 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v790, v791, v789);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v793, v792, v767);
  v796 = v4;
  v797 = aPdx;
  for (i = 8; i != 104; i += 16)
  {
    v799 = 0.0;
    if (v4 >= 0.001)
    {
      v799 = *(*(v2 + 2200) + i) / v796;
      *&v799 = v799;
    }

    v800 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v794, v795, v799);
    v801 = *v797++;
    v803 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v802, @"percentSessionJBL%d", v801);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v804, v800, v803);
  }

  v805 = 0.0;
  if (v4 >= 0.001)
  {
    v805 = *(*(v2 + 2200) + 104) / v796;
    *&v805 = v805;
  }

  v806 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v794, v795, v805);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v807, v806, @"percentSessionJBLOverLimit");
  v830 = 0u;
  v831 = 0u;
  v828 = 0u;
  v829 = 0u;
  v808 = v8;
  obj = objc_msgSend_allKeys(v8, v809, v810);
  v812 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v811, &v828, v840, 16);
  if (v812)
  {
    v813 = v812;
    v814 = *v829;
    do
    {
      v815 = 0;
      do
      {
        if (*v829 != v814)
        {
          objc_enumerationMutation(obj);
        }

        v816 = *(*(&v828 + 1) + 8 * v815);
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E28DE0);
        }

        v817 = off_1EAFE29A0;
        if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
        {
          v819 = objc_msgSend_objectForKey_(v808, v818, v816);
          *buf = 138478083;
          v837 = v816;
          v838 = 2113;
          v839 = v819;
          _os_log_impl(&dword_19B41C000, v817, OS_LOG_TYPE_DEFAULT, "[CMMediaSessionAnalyticsTracker] %{private}@ -> %{private}@", buf, 0x16u);
        }

        v820 = sub_19B420058();
        if (*(v820 + 160) > 1 || *(v820 + 164) > 1 || *(v820 + 168) > 1 || *(v820 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2998 != -1)
          {
            dispatch_once(&qword_1EAFE2998, &unk_1F0E28DE0);
          }

          v823 = objc_msgSend_objectForKey_(v808, v822, v816);
          v832 = 138478083;
          v833 = v816;
          v834 = 2113;
          v835 = v823;
          v824 = _os_log_send_and_compose_impl();
          sub_19B6BB7CC("Generic", 1, 0, 2, "void CMMediaSessionAnalyticsTracker::send()_block_invoke", "CoreLocation: %s\n", v824);
          if (v824 != buf)
          {
            free(v824);
          }
        }

        ++v815;
      }

      while (v813 != v815);
      v813 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v821, &v828, v840, 16);
    }

    while (v813);
  }

  v825 = *MEMORY[0x1E69E9840];
  return v808;
}

os_log_t sub_19B5CD93C()
{
  result = os_log_create("com.apple.locationd.Motion", "RelativeDeviceMotion");
  off_1EAFE29A0 = result;
  return result;
}

void sub_19B5CDA58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x19EAE76F0](v16, v15);
  _Unwind_Resume(a1);
}

void sub_19B5CDA88(uint64_t a1, CLConnectionMessage **a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DFD8];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v7 = objc_msgSend_setWithObjects_(v3, v6, v4, v5, 0);
  if (*a2 && (DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v7)) != 0 && (v10 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v9, @"CMErrorMessage")) != 0)
  {
    v13 = objc_msgSend_intValue(v10, v11, v12);
  }

  else
  {
    v13 = 103;
  }

  if (qword_1ED71C830 != -1)
  {
    dispatch_once(&qword_1ED71C830, &unk_1F0E28BA0);
  }

  v14 = off_1ED71C838;
  if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_FAULT))
  {
    *buf = 67240192;
    v19 = v13;
    _os_log_impl(&dword_19B41C000, v14, OS_LOG_TYPE_FAULT, "SedentaryAlarm,Error response,%{public}d", buf, 8u);
  }

  v15 = sub_19B420058();
  if ((*(v15 + 160) & 0x80000000) == 0 || (*(v15 + 164) & 0x80000000) == 0 || (*(v15 + 168) & 0x80000000) == 0 || *(v15 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E28BA0);
    }

    v16 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 0, "[CMSedentaryTimer_Internal init]_block_invoke", "CoreLocation: %s\n", v16);
    if (v16 != buf)
    {
      free(v16);
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

void sub_19B5CDF54()
{
  v4 = *MEMORY[0x1E69E9840];
  if (qword_1ED71C830 != -1)
  {
    dispatch_once(&qword_1ED71C830, &unk_1F0E28BA0);
  }

  v0 = off_1ED71C838;
  if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v0, OS_LOG_TYPE_DEFAULT, "[SedentaryTimerTriage] SedentaryAlarm _isActive dispatch sync.", buf, 2u);
  }

  v1 = sub_19B420058();
  if (*(v1 + 160) > 1 || *(v1 + 164) > 1 || *(v1 + 168) > 1 || *(v1 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E28BA0);
    }

    v2 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMSedentaryTimer_Internal _isActive]_block_invoke", "CoreLocation: %s\n", v2);
    if (v2 != buf)
    {
      free(v2);
    }
  }

  sub_19B5D1194();
}

void sub_19B5CE348(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_19B41FFEC(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B5CEC4C(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if (qword_1ED71C830 != -1)
  {
    dispatch_once(&qword_1ED71C830, &unk_1F0E28BA0);
  }

  v2 = off_1ED71C838;
  if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v2, OS_LOG_TYPE_DEFAULT, "[SedentaryTimerTriage] SedentaryAlarm _handleStartStopTimerResponse calling handler.", buf, 2u);
  }

  v3 = sub_19B420058();
  if (*(v3 + 160) > 1 || *(v3 + 164) > 1 || *(v3 + 168) > 1 || *(v3 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E28BA0);
    }

    v5 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMSedentaryTimer_Internal _handleStartStopTimerResponse:withHandler:]_block_invoke", "CoreLocation: %s\n", v5);
    if (v5 != buf)
    {
      free(v5);
    }
  }

  v6 = *(a1 + 32);
  v7 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], v4, @"CMErrorDomain", 103, 0);
  result = (*(v6 + 16))(v6, v7);
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_19B5CEE34(uint64_t a1, const char *a2, uint64_t a3)
{
  v23 = *MEMORY[0x1E69E9840];
  if (objc_msgSend_intValue(*(a1 + 32), a2, a3) != 100)
  {
    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E28BA0);
    }

    v6 = off_1ED71C838;
    if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_ERROR))
    {
      v9 = objc_msgSend_intValue(*(a1 + 32), v7, v8);
      *buf = 67240192;
      v22 = v9;
      _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_ERROR, "SedentaryAlarm,Error start / stop response,%{public}d", buf, 8u);
    }

    v10 = sub_19B420058();
    if ((*(v10 + 160) & 0x80000000) == 0 || (*(v10 + 164) & 0x80000000) == 0 || (*(v10 + 168) & 0x80000000) == 0 || *(v10 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C830 != -1)
      {
        dispatch_once(&qword_1ED71C830, &unk_1F0E28BA0);
      }

      objc_msgSend_intValue(*(a1 + 32), v11, v12);
      v13 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CMSedentaryTimer_Internal _handleStartStopTimerResponse:withHandler:]_block_invoke", "CoreLocation: %s\n", v13);
      if (v13 != buf)
      {
        free(v13);
      }
    }
  }

  v14 = MEMORY[0x1E696ABC0];
  v15 = *(a1 + 40);
  v16 = objc_msgSend_integerValue(*(a1 + 32), v4, v5);
  v18 = objc_msgSend_errorWithDomain_code_userInfo_(v14, v17, @"CMErrorDomain", v16, 0);
  result = (*(v15 + 16))(v15, v18);
  v20 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_19B5CF058(uint64_t a1, const char *a2)
{
  v2 = *(a1 + 32);
  v3 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], a2, @"CMErrorDomain", 103, 0);
  v4 = *(v2 + 16);

  return v4(v2, v3);
}

uint64_t sub_19B5CF834(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if (qword_1ED71C830 != -1)
  {
    dispatch_once(&qword_1ED71C830, &unk_1F0E28BA0);
  }

  v2 = off_1ED71C838;
  if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v2, OS_LOG_TYPE_DEFAULT, "[SedentaryTimerTriage] SedentaryAlarm _handleAlarmDataResponse nil response calling handler.", buf, 2u);
  }

  v3 = sub_19B420058();
  if (*(v3 + 160) > 1 || *(v3 + 164) > 1 || *(v3 + 168) > 1 || *(v3 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E28BA0);
    }

    v5 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMSedentaryTimer_Internal _handleAlarmDataResponse:withHandler:]_block_invoke", "CoreLocation: %s\n", v5);
    if (v5 != buf)
    {
      free(v5);
    }
  }

  v6 = *(a1 + 32);
  v7 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], v4, @"CMErrorDomain", 103, 0);
  result = (*(v6 + 16))(v6, 0, v7);
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_19B5CFA20(uint64_t a1, const char *a2, uint64_t a3)
{
  v26 = *MEMORY[0x1E69E9840];
  if (objc_msgSend_intValue(*(a1 + 32), a2, a3) != 100)
  {
    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E28BA0);
    }

    v4 = off_1ED71C838;
    if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_ERROR))
    {
      v7 = objc_msgSend_intValue(*(a1 + 32), v5, v6);
      *buf = 67240192;
      v25 = v7;
      _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_ERROR, "SedentaryAlarm,Error query response,%{public}d", buf, 8u);
    }

    v8 = sub_19B420058();
    if ((*(v8 + 160) & 0x80000000) == 0 || (*(v8 + 164) & 0x80000000) == 0 || (*(v8 + 168) & 0x80000000) == 0 || *(v8 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C830 != -1)
      {
        dispatch_once(&qword_1ED71C830, &unk_1F0E28BA0);
      }

      objc_msgSend_intValue(*(a1 + 32), v9, v10);
      v11 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CMSedentaryTimer_Internal _handleAlarmDataResponse:withHandler:]_block_invoke", "CoreLocation: %s\n", v11);
      if (v11 != buf)
      {
        free(v11);
      }
    }
  }

  if (qword_1ED71C830 != -1)
  {
    dispatch_once(&qword_1ED71C830, &unk_1F0E28BA0);
  }

  v12 = off_1ED71C838;
  if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v12, OS_LOG_TYPE_DEFAULT, "[SedentaryTimerTriage] SedentaryAlarm _handleAlarmDataResponse error dispatching.", buf, 2u);
  }

  v13 = sub_19B420058();
  if (*(v13 + 160) > 1 || *(v13 + 164) > 1 || *(v13 + 168) > 1 || *(v13 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E28BA0);
    }

    v16 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMSedentaryTimer_Internal _handleAlarmDataResponse:withHandler:]_block_invoke", "CoreLocation: %s\n", v16);
    if (v16 != buf)
    {
      free(v16);
    }
  }

  v17 = MEMORY[0x1E696ABC0];
  v18 = *(a1 + 40);
  v19 = objc_msgSend_integerValue(*(a1 + 32), v14, v15);
  v21 = objc_msgSend_errorWithDomain_code_userInfo_(v17, v20, @"CMErrorDomain", v19, 0);
  result = (*(v18 + 16))(v18, 0, v21);
  v23 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_19B5CFD8C(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  if (qword_1ED71C830 != -1)
  {
    dispatch_once(&qword_1ED71C830, &unk_1F0E28BA0);
  }

  v2 = off_1ED71C838;
  if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v2, OS_LOG_TYPE_DEFAULT, "[SedentaryTimerTriage] SedentaryAlarm _handleAlarmDataResponse alarmDataArray dispatching.", buf, 2u);
  }

  v3 = sub_19B420058();
  if (*(v3 + 160) > 1 || *(v3 + 164) > 1 || *(v3 + 168) > 1 || *(v3 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E28BA0);
    }

    v4 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMSedentaryTimer_Internal _handleAlarmDataResponse:withHandler:]_block_invoke", "CoreLocation: %s\n", v4);
    if (v4 != buf)
    {
      free(v4);
    }
  }

  v5 = *(a1 + 32);
  result = (*(*(a1 + 40) + 16))();
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_19B5CFF50(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if (qword_1ED71C830 != -1)
  {
    dispatch_once(&qword_1ED71C830, &unk_1F0E28BA0);
  }

  v2 = off_1ED71C838;
  if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v2, OS_LOG_TYPE_DEFAULT, "[SedentaryTimerTriage] SedentaryAlarm _handleAlarmDataResponse else dispatching.", buf, 2u);
  }

  v3 = sub_19B420058();
  if (*(v3 + 160) > 1 || *(v3 + 164) > 1 || *(v3 + 168) > 1 || *(v3 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E28BA0);
    }

    v5 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMSedentaryTimer_Internal _handleAlarmDataResponse:withHandler:]_block_invoke", "CoreLocation: %s\n", v5);
    if (v5 != buf)
    {
      free(v5);
    }
  }

  v6 = *(a1 + 32);
  v7 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], v4, @"CMErrorDomain", 103, 0);
  result = (*(v6 + 16))(v6, 0, v7);
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19B5D036C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B5D0390(uint64_t a1, uint64_t *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (qword_1ED71C830 != -1)
  {
    dispatch_once(&qword_1ED71C830, &unk_1F0E28BA0);
  }

  v4 = off_1ED71C838;
  if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_DEFAULT, "[SedentaryTimerTriage] SedentaryAlarm _registerForAlarmsWithHandler, setting handler for message.", buf, 2u);
  }

  v5 = sub_19B420058();
  if (*(v5 + 160) > 1 || *(v5 + 164) > 1 || *(v5 + 168) > 1 || *(v5 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E28BA0);
    }

    v13 = 0;
    v7 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMSedentaryTimer_Internal _registerForAlarmsWithHandler:]_block_invoke", "CoreLocation: %s\n", v7);
    if (v7 != buf)
    {
      free(v7);
    }
  }

  v8 = *(a1 + 32);
  v9 = a2[1];
  v11 = *a2;
  v12 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  objc_msgSend__handleAlarmDataResponse_withHandler_(v8, v6, &v11, *(a1 + 40));
  if (v12)
  {
    sub_19B41FFEC(v12);
  }

  v10 = *MEMORY[0x1E69E9840];
}

void sub_19B5D0578(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_19B41FFEC(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B5D080C(uint64_t a1, const char *a2, uint64_t a3)
{
  v14[4] = *MEMORY[0x1E69E9840];
  v13[0] = @"CMSedentaryTimerStartTime";
  v4 = MEMORY[0x1E696AD98];
  objc_msgSend_timeIntervalSinceReferenceDate(*(a1 + 32), a2, a3);
  v14[0] = objc_msgSend_numberWithDouble_(v4, v5, v6);
  v13[1] = @"CMSedentaryTimerPeriodInterval";
  v14[1] = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v7, v8, *(a1 + 56));
  v13[2] = @"CMSedentaryTimerReminderInterval";
  v14[2] = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v9, v10, *(a1 + 64));
  v13[3] = @"CMSedentaryTimerAutoReschedule";
  v14[3] = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v11, *(a1 + 72));
  objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v12, v14, v13, 4);
  sub_19B5D12C8();
}

void sub_19B5D09BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, std::__shared_weak_count *a19)
{
  if (a17)
  {
    sub_19B41FFEC(a17);
  }

  if (a19)
  {
    sub_19B41FFEC(a19);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B5D09F0(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = objc_msgSend__internal(*(a1 + 32), a2, a3);
  v7 = *(a2 + 1);
  v8 = *a2;
  v9 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  objc_msgSend__handleStartStopTimerResponse_withHandler_(v5, v6, &v8, *(a1 + 40));
  if (v9)
  {
    sub_19B41FFEC(v9);
  }
}

void sub_19B5D0A54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_19B41FFEC(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B5D0C10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a17)
  {
    sub_19B41FFEC(a17);
  }

  v19 = *(v17 - 32);
  if (v19)
  {
    sub_19B41FFEC(v19);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B5D0C3C(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = objc_msgSend__internal(*(a1 + 32), a2, a3);
  v7 = *(a2 + 1);
  v8 = *a2;
  v9 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  objc_msgSend__handleStartStopTimerResponse_withHandler_(v5, v6, &v8, *(a1 + 40));
  if (v9)
  {
    sub_19B41FFEC(v9);
  }
}

void sub_19B5D0CA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_19B41FFEC(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B5D0D94(uint64_t a1, const char *a2, uint64_t a3)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v7 = @"CMSedentaryTimerStartTime";
  v3 = MEMORY[0x1E696AD98];
  objc_msgSend_timeIntervalSinceReferenceDate(*(a1 + 32), a2, a3);
  v8[0] = objc_msgSend_numberWithDouble_(v3, v4, v5);
  objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v6, v8, &v7, 1);
  sub_19B5D12C8();
}

void sub_19B5D0EDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, std::__shared_weak_count *a19)
{
  if (a17)
  {
    sub_19B41FFEC(a17);
  }

  if (a19)
  {
    sub_19B41FFEC(a19);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B5D0F10(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = objc_msgSend__internal(*(a1 + 32), a2, a3);
  v7 = *(a2 + 1);
  v8 = *a2;
  v9 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  objc_msgSend__handleAlarmDataResponse_withHandler_(v5, v6, &v8, *(a1 + 40));
  if (v9)
  {
    sub_19B41FFEC(v9);
  }
}

void sub_19B5D0F74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_19B41FFEC(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B5D1060(uint64_t a1, const char *a2, uint64_t a3)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v3 = a1 + 32;
  v4 = objc_msgSend__internal(*(a1 + 32), a2, a3);
  objc_msgSend__registerForAlarmsWithHandler_(v4, v5, *(v3 + 8));
  v7 = @"kCLConnectionMessageSubscribeKey";
  v8[0] = MEMORY[0x1E695E118];
  objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v6, v8, &v7, 1);
  sub_19B5D12C8();
}

void sub_19B5D1158(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a11)
  {
    sub_19B41FFEC(a11);
  }

  if (a13)
  {
    sub_19B41FFEC(a13);
  }

  _Unwind_Resume(exception_object);
}

void *sub_19B5D1200(void *a1, char *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F0E2AD08;
  sub_19B5D125C((a1 + 3), a2);
  return a1;
}

uint64_t sub_19B5D125C(uint64_t a1, char *a2)
{
  sub_19B428B50(__p, a2);
  MEMORY[0x19EAE71E0](a1, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_19B5D12AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_19B5D133C(void *a1, char *a2, void *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F0E2AD08;
  sub_19B5D1398((a1 + 3), a2, a3);
  return a1;
}

uint64_t sub_19B5D1398(uint64_t a1, char *a2, void *a3)
{
  sub_19B428B50(__p, a2);
  MEMORY[0x19EAE71F0](a1, __p, *a3);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_19B5D13F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_19B5D1478(void *a1, char *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F0E2AD08;
  sub_19B5D14D4((a1 + 3), a2);
  return a1;
}

uint64_t sub_19B5D14D4(uint64_t a1, char *a2)
{
  sub_19B428B50(__p, a2);
  MEMORY[0x19EAE71E0](a1, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_19B5D1524(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B5D1984(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 24);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B5D1A0C;
  block[3] = &unk_1E7532C58;
  v4 = *(a1 + 40);
  v5 = v1;
  v6 = *(a1 + 56);
  dispatch_async(v2, block);
}

void sub_19B5D1A0C(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v18 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  if (objc_msgSend_countByEnumeratingWithState_objects_count_(*(a1 + 32), v2, &v19, v27, 16))
  {
    *v20;
    *v20;
    v5 = **(&v19 + 1);
    v25[0] = @"CMMotionActivityStartTime";
    v6 = MEMORY[0x1E696AD98];
    objc_msgSend_timeIntervalSinceReferenceDate(v5, v3, v4);
    v26[0] = objc_msgSend_numberWithDouble_(v6, v7, v8);
    v25[1] = @"CMMotionActivityStopTime";
    v9 = MEMORY[0x1E696AD98];
    v11 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 40), v10, 0);
    objc_msgSend_timeIntervalSinceReferenceDate(v11, v12, v13);
    v26[1] = objc_msgSend_numberWithDouble_(v9, v14, v15);
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v16, v26, v25, 2);
    sub_19B5D12C8();
  }

  v23 = @"CMMotionActivityDataArray";
  v24 = objc_msgSend_arrayWithArray_(MEMORY[0x1E695DEC8], v3, v18);
  objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v17, &v24, &v23, 1);
  sub_19B5D379C();
}

void sub_19B5D1D98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  if (v27)
  {
    sub_19B41FFEC(v27);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B5D1F34(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  v1 = *(a1 + 48);
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 32) + 16);
  block[2] = sub_19B5D1FB4;
  block[3] = &unk_1E7532C80;
  v6 = v1;
  v5 = v2;
  dispatch_async(v3, block);
}

id sub_19B5D1FB4(uint64_t a1, const char *a2)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = *(*(a1 + 32) + 32);
  if (!v3)
  {
    v9 = @"kCLConnectionMessageSubscribeKey";
    v10[0] = MEMORY[0x1E695E118];
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v10, &v9, 1);
    sub_19B45280C();
  }

  _Block_release(v3);

  v4 = _Block_copy(*(a1 + 48));
  v6 = *(a1 + 32);
  v5 = (a1 + 32);
  *(v6 + 32) = v4;
  result = v5[1];
  *(*v5 + 5) = result;
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19B5D20D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a11)
  {
    sub_19B41FFEC(a11);
  }

  if (a13)
  {
    sub_19B41FFEC(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B5D2374(uint64_t a1, const char *a2)
{
  v2 = *(a1 + 32);
  v3 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], a2, @"CMErrorDomain", 103, 0);
  v4 = *(v2 + 16);

  return v4(v2, 0, v3);
}

uint64_t sub_19B5D23D8(uint64_t a1, const char *a2)
{
  v2 = *(a1 + 32);
  v3 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], a2, @"CMErrorDomain", 103, 0);
  v4 = *(v2 + 16);

  return v4(v2, 0, v3);
}

uint64_t sub_19B5D243C(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = MEMORY[0x1E696ABC0];
  v4 = *(a1 + 40);
  v5 = objc_msgSend_intValue(*(a1 + 32), a2, a3);
  v7 = objc_msgSend_errorWithDomain_code_userInfo_(v3, v6, @"CMErrorDomain", v5, 0);
  v8 = *(v4 + 16);

  return v8(v4, 0, v7);
}

uint64_t sub_19B5D24CC(uint64_t a1, const char *a2)
{
  v2 = *(a1 + 32);
  v3 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], a2, @"CMErrorDomain", 103, 0);
  v4 = *(v2 + 16);

  return v4(v2, 0, v3);
}

void sub_19B5D2648(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  v1 = *(a1 + 48);
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 32) + 16);
  block[2] = sub_19B5D26C8;
  block[3] = &unk_1E7532C80;
  v6 = v1;
  v5 = v2;
  dispatch_async(v3, block);
}

id sub_19B5D26C8(uint64_t a1, const char *a2)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = *(*(a1 + 32) + 32);
  if (!v3)
  {
    v9 = @"kCLConnectionMessageSubscribeKey";
    v10[0] = MEMORY[0x1E695E118];
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v10, &v9, 1);
    sub_19B5D38E0();
  }

  _Block_release(v3);

  v4 = _Block_copy(*(a1 + 48));
  v6 = *(a1 + 32);
  v5 = (a1 + 32);
  *(v6 + 32) = v4;
  result = v5[1];
  *(*v5 + 5) = result;
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19B5D27E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_19B41FFEC(a10);
  }

  if (v10)
  {
    sub_19B41FFEC(v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B5D2884(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B5D28F8;
  block[3] = &unk_1E7532988;
  block[4] = v1;
  dispatch_async(v2, block);
}

uint64_t sub_19B5D28F8(uint64_t result, const char *a2)
{
  v4[1] = *MEMORY[0x1E69E9840];
  if (*(*(result + 32) + 32))
  {
    v3 = @"kCLConnectionMessageSubscribeKey";
    v4[0] = MEMORY[0x1E695E110];
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v4, &v3, 1);
    sub_19B5D38E0();
  }

  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19B5D2A04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_19B41FFEC(a10);
  }

  if (v10)
  {
    sub_19B41FFEC(v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B5D2DAC(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  v1 = *(a1 + 48);
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 32) + 16);
  block[2] = sub_19B5D2E2C;
  block[3] = &unk_1E7532C80;
  v6 = v1;
  v5 = v2;
  dispatch_async(v3, block);
}

id sub_19B5D2E2C(uint64_t a1, const char *a2)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = *(*(a1 + 32) + 32);
  if (!v3)
  {
    v9 = @"kCLConnectionMessageSubscribeKey";
    v10[0] = MEMORY[0x1E695E118];
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v10, &v9, 1);
    sub_19B5D39B8();
  }

  _Block_release(v3);

  v4 = _Block_copy(*(a1 + 48));
  v6 = *(a1 + 32);
  v5 = (a1 + 32);
  *(v6 + 32) = v4;
  result = v5[1];
  *(*v5 + 5) = result;
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19B5D2F44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_19B41FFEC(a10);
  }

  if (v10)
  {
    sub_19B41FFEC(v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B5D3238(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B5D32AC;
  block[3] = &unk_1E7532988;
  block[4] = v1;
  dispatch_async(v2, block);
}

uint64_t sub_19B5D32AC(uint64_t result, const char *a2)
{
  v4[1] = *MEMORY[0x1E69E9840];
  if (*(*(result + 32) + 32))
  {
    v3 = @"kCLConnectionMessageSubscribeKey";
    v4[0] = MEMORY[0x1E695E110];
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v4, &v3, 1);
    sub_19B5D39B8();
  }

  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19B5D33B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_19B41FFEC(a10);
  }

  if (v10)
  {
    sub_19B41FFEC(v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B5D359C(uint64_t a1, char *a2, uint64_t a3)
{
  v22 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v4 = *(a1 + 56);
    v5 = *(*(a1 + 56) + 16);
    v6 = *MEMORY[0x1E69E9840];
LABEL_3:

    v5();
    return;
  }

  if (a2 && objc_msgSend_count(a2, a2, 0))
  {
    objc_msgSend_filterActivities_withAttribute_(*(a1 + 48), a2, a2, *(a1 + 64));
    v5 = *(*(a1 + 56) + 16);
    v8 = *MEMORY[0x1E69E9840];
    goto LABEL_3;
  }

  v9 = *(a1 + 56);
  v10 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], a2, @"CMErrorDomain", 107, 0);
  (*(v9 + 16))(v9, 0, v10);
  if (qword_1ED71C7A0 != -1)
  {
    dispatch_once(&qword_1ED71C7A0, &unk_1F0E28E20);
  }

  v11 = qword_1ED71C7A8;
  if (os_log_type_enabled(qword_1ED71C7A8, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *(a1 + 32);
    v13 = *(a1 + 40);
    v15[0] = 68289539;
    v15[1] = 0;
    v16 = 2082;
    v17 = "";
    v18 = 2113;
    v19 = v12;
    v20 = 2113;
    v21 = v13;
    _os_log_impl(&dword_19B41C000, v11, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Query out-of-bounds of available data, start:%{private, location:escape_only}@, end:%{private, location:escape_only}@}", v15, 0x26u);
  }

  v14 = *MEMORY[0x1E69E9840];
}

os_log_t sub_19B5D376C()
{
  result = os_log_create("com.apple.locationd.Motion", "Activity");
  qword_1ED71C7A8 = result;
  return result;
}

void *sub_19B5D3810(void *a1, char *a2, void *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F0E2AD08;
  sub_19B5D386C((a1 + 3), a2, a3);
  return a1;
}

uint64_t sub_19B5D386C(uint64_t a1, char *a2, void *a3)
{
  sub_19B428B50(__p, a2);
  MEMORY[0x19EAE71F0](a1, __p, *a3);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_19B5D38C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B5D3988(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::__shared_weak_count::~__shared_weak_count(v15);
  operator delete(v17);
  _Unwind_Resume(a1);
}

void sub_19B5D3A60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::__shared_weak_count::~__shared_weak_count(v15);
  operator delete(v17);
  _Unwind_Resume(a1);
}

void *sub_19B5D3E20(void *a1)
{
  *a1 = &unk_1F0E32348;
  sub_19B427AEC(a1);
  sub_19B423148(a1);
  sub_19B5D3E78(a1);
  return a1;
}

void *sub_19B5D3E78(void *result)
{
  if (result[7])
  {
    v1 = result;
    v2 = sub_19B43A6F0();
    sub_19B426A14(v2, 0, v1[7]);
    v3 = v1[7];
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    v1[7] = 0;
    v4 = sub_19B43A6F0();
    sub_19B426A14(v4, 1, v1[8]);
    result = v1[8];
    if (result)
    {
      result = (*(*result + 8))(result);
    }

    v1[8] = 0;
  }

  return result;
}

uint64_t sub_19B5D3F2C(uint64_t result)
{
  if (!*(result + 56))
  {
    operator new();
  }

  return result;
}

void sub_19B5D40D0(uint64_t a1)
{
  sub_19B42A51C(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B5D5B20(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0x3200000000;
  *(a1 + 1216) = 0x3200000000;
  *(a1 + 2424) = 0x3200000000;
  *(a1 + 3632) = 0x9600000000;
  *(a1 + 4240) = 0x3200000000;
  *(a1 + 4448) = 0x3200000000;
  *(a1 + 4656) = 0x700000000;
  *(a1 + 4720) = 0x700000000;
  *(a1 + 4816) = 0x7FF8000000000000;
  *(a1 + 4824) = vneg_f32(0x3F0000003FLL);
  *(a1 + 4832) = 2143289344;
  *(a1 + 4840) = 0;
  *(a1 + 4848) = 0x7FF8000000000000;
  *(a1 + 4856) = 0;
  *(a1 + 4864) = 0;
  *(a1 + 4872) = 0x7FF8000000000000;
  *(a1 + 4880) = 0;
  *(a1 + 4888) = 0;
  *(a1 + 4896) = 0;
  *(a1 + 4904) = 0x300000000;
  *(a1 + 4936) = 0x300000000;
  *(a1 + 4976) = 0;
  *(a1 + 4968) = 0;
  *(a1 + 4980) = 1065353216;
  v2 = a1 + 4984;
  v18 = a1 + 5040;
  v17 = a1 + 5096;
  v16 = a1 + 5152;
  v15 = a1 + 5224;
  v14 = a1 + 5296;
  v13 = a1 + 5360;
  v12 = a1 + 5376;
  v3 = a1 + 5392;
  v4 = (a1 + 5448);
  v5 = a1 + 5504;
  v6 = (a1 + 5560);
  v7 = a1 + 5632;
  v8 = (a1 + 5704);
  v9 = a1 + 5768;
  v10 = a1 + 5784;
  *(a1 + 5928) = 0u;
  *(a1 + 5944) = 0x7FF8000000000000;
  *(a1 + 5952) = 0;
  __src[0] = xmmword_19B7B79C8;
  __src[1] = unk_19B7B79D8;
  __src[2] = xmmword_19B7B79E8;
  *&__src[3] = 0x3FE1532617C1BDA5;
  *(&__src[6] + 1) = 0;
  *(&__src[3] + 8) = xmmword_19B7B7A00;
  *(&__src[4] + 8) = unk_19B7B7A10;
  *(&__src[5] + 8) = xmmword_19B7B7A20;
  __src[8] = unk_19B7B7A48;
  __src[9] = xmmword_19B7B7A58;
  __src[7] = xmmword_19B7B7A38;
  *&__src[10] = 0;
  *(&__src[14] + 1) = 0;
  *(&__src[13] + 8) = unk_19B7B7AA0;
  *(&__src[12] + 8) = xmmword_19B7B7A90;
  *(&__src[11] + 8) = unk_19B7B7A80;
  *(&__src[10] + 8) = xmmword_19B7B7A70;
  *&__src[19] = 0;
  __src[17] = xmmword_19B7B7AD8;
  __src[18] = unk_19B7B7AE8;
  __src[15] = xmmword_19B7B7AB8;
  __src[16] = unk_19B7B7AC8;
  *(&__src[21] + 8) = xmmword_19B7B7B20;
  *(&__src[22] + 8) = unk_19B7B7B30;
  *(&__src[19] + 8) = xmmword_19B7B7B00;
  *(&__src[20] + 8) = unk_19B7B7B10;
  memcpy((a1 + 4984), __src, 0x178uLL);
  *(a1 + 5360) = xmmword_19B7B7990;
  *(a1 + 5376) = xmmword_19B7B79A0;
  *(a1 + 5392) = xmmword_19B7B7B40;
  *(a1 + 5408) = unk_19B7B7B50;
  *(a1 + 5424) = xmmword_19B7B7B60;
  *(a1 + 5440) = 0x7FEFFFFFFFFFFFFFLL;
  *v4 = xmmword_19B7B7B78;
  v4[1] = unk_19B7B7B88;
  v4[2] = xmmword_19B7B7B98;
  *(a1 + 5496) = 0x7FEFFFFFFFFFFFFFLL;
  *(a1 + 5552) = 0x7FEFFFFFFFFFFFFFLL;
  *(a1 + 5536) = unk_19B7B7BD0;
  *(a1 + 5520) = xmmword_19B7B7BC0;
  *(a1 + 5504) = xmmword_19B7B7BB0;
  *(a1 + 5624) = 0x7FEFFFFFFFFFFFFFLL;
  v6[2] = xmmword_19B7B7C08;
  v6[3] = unk_19B7B7C18;
  *v6 = xmmword_19B7B7BE8;
  v6[1] = unk_19B7B7BF8;
  *(a1 + 5632) = xmmword_19B7B7BE8;
  *(a1 + 5696) = 0x7FEFFFFFFFFFFFFFLL;
  *(a1 + 5680) = unk_19B7B7C18;
  *(a1 + 5664) = xmmword_19B7B7C08;
  *(a1 + 5648) = unk_19B7B7BF8;
  v8[2] = xmmword_19B7B7C50;
  v8[3] = unk_19B7B7C60;
  *v8 = xmmword_19B7B7C30;
  v8[1] = unk_19B7B7C40;
  *(a1 + 5768) = 0x3F1A36E2EB1C432DLL;
  *(a1 + 5776) = xmmword_19B7B79B0;
  *(a1 + 5792) = 0x7FEFFFFFFFFFFFFFLL;
  *(a1 + 5800) = v2;
  *(a1 + 5808) = v18;
  *(a1 + 5816) = v17;
  *(a1 + 5824) = v16;
  *(a1 + 5832) = v15;
  *(a1 + 5840) = v14;
  *(a1 + 5848) = v13;
  *(a1 + 5856) = v12;
  *(a1 + 5864) = v3;
  *(a1 + 5872) = v4;
  *(a1 + 5880) = v5;
  *(a1 + 5888) = v6;
  *(a1 + 5896) = v7;
  *(a1 + 5904) = v8;
  *(a1 + 5912) = v9;
  *(a1 + 5920) = v10;
  return a1;
}

void sub_19B5D5EC8(unsigned __int8 *a1)
{
  v2 = *(a1 + 741);
  if (v2 && *(a1 + 742))
  {
    v2(*a1);
  }

  v3 = *(a1 + 744);
  v4 = *a1;
  if (v3 && v4 != a1[2])
  {
    sub_19B5E7A0C(v3, v4 & 1);
    LOBYTE(v4) = *a1;
  }

  a1[2] = v4;
}

uint64_t sub_19B5D5F28(unsigned __int16 *a1, unint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if (*(a1 + 1) <= a2)
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E282A0);
    }

    v8 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      v9 = *(a1 + 1);
      *buf = 134218240;
      v14 = a2;
      v15 = 1024;
      v16 = v9;
      _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_FAULT, "Assertion failed: i < fCapacity, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/CMQueue.h, line 233,i,%zu,capacity,%u.", buf, 0x12u);
    }

    v10 = sub_19B420058();
    if ((*(v10 + 160) & 0x80000000) == 0 || (*(v10 + 164) & 0x80000000) == 0 || (*(v10 + 168) & 0x80000000) == 0 || *(v10 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E282A0);
      }

      v12 = *(a1 + 1);
      v11 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "const T &CMQueue<CMAccessoryStepDetector::AggAccelSample>::operator[](const size_t) const [T = CMAccessoryStepDetector::AggAccelSample]", "CoreLocation: %s\n", v11);
      if (v11 != buf)
      {
        free(v11);
      }
    }
  }

  v4 = *a1 + a2;
  v5 = *(a1 + 1);
  if (v4 < v5)
  {
    v5 = 0;
  }

  v6 = *MEMORY[0x1E69E9840];
  return &a1[12 * (v4 - v5) + 4];
}

float sub_19B5D6144(uint64_t a1, unint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  if (a2 >= 3)
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E282A0);
    }

    v6 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      *buf = 134218240;
      v10 = a2;
      v11 = 2048;
      v12 = 3;
      _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_FAULT, "Assertion failed: i < N, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/Math/CMVector.h, line 273,invalid index %zu >= %zu.", buf, 0x16u);
    }

    v7 = sub_19B420058();
    if ((*(v7 + 160) & 0x80000000) == 0 || (*(v7 + 164) & 0x80000000) == 0 || (*(v7 + 168) & 0x80000000) == 0 || *(v7 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E282A0);
      }

      v8 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "T CMVector<float, 3>::operator[](const size_t) const [T = float, N = 3]", "CoreLocation: %s\n", v8);
      if (v8 != buf)
      {
        free(v8);
      }
    }
  }

  result = *(a1 + 4 * a2);
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

unsigned __int16 *sub_19B5D6350(unsigned __int16 *result, __int128 *a2)
{
  v2 = *(result + 1);
  v3 = *result + result[1];
  if (v3 < v2)
  {
    v2 = 0;
  }

  v4 = &result[12 * (v3 - v2)];
  v5 = *a2;
  *(v4 + 3) = *(a2 + 2);
  *(v4 + 4) = v5;
  v6 = result[1];
  v7 = *(result + 1);
  if (v7 <= v6)
  {
    v8 = *result + 1;
    if (v8 < v7)
    {
      LOWORD(v7) = 0;
    }

    *result = v8 - v7;
  }

  else
  {
    result[1] = v6 + 1;
  }

  return result;
}

uint64_t sub_19B5D63BC(uint64_t result, _DWORD *a2, _DWORD *a3, double a4, double a5)
{
  *a2 = 0;
  *a3 = 0;
  if (*(result + 10))
  {
    v9 = result;
    v10 = 0;
    v11 = INFINITY;
    do
    {
      v12 = vabdd_f64(a4, *sub_19B5D5F28((v9 + 8), v10));
      if (v12 < v11)
      {
        *a2 = v10;
        v11 = v12;
      }

      result = sub_19B5D5F28((v9 + 8), v10);
      if (vabdd_f64(*result, a5) <= 0.000001)
      {
        *a3 = v10;
      }

      ++v10;
    }

    while (v10 < *(v9 + 10));
  }

  return result;
}

uint64_t sub_19B5D6480(unsigned __int16 *a1, unint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if (*(a1 + 1) <= a2)
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E282A0);
    }

    v8 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      v9 = *(a1 + 1);
      *buf = 134218240;
      v14 = a2;
      v15 = 1024;
      v16 = v9;
      _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_FAULT, "Assertion failed: i < fCapacity, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/CMQueue.h, line 233,i,%zu,capacity,%u.", buf, 0x12u);
    }

    v10 = sub_19B420058();
    if ((*(v10 + 160) & 0x80000000) == 0 || (*(v10 + 164) & 0x80000000) == 0 || (*(v10 + 168) & 0x80000000) == 0 || *(v10 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E282A0);
      }

      v12 = *(a1 + 1);
      v11 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "const T &CMQueue<CMAccessoryStepDetector::VectorSample>::operator[](const size_t) const [T = CMAccessoryStepDetector::VectorSample]", "CoreLocation: %s\n", v11);
      if (v11 != buf)
      {
        free(v11);
      }
    }
  }

  v4 = *a1 + a2;
  v5 = *(a1 + 1);
  if (v4 < v5)
  {
    v5 = 0;
  }

  v6 = *MEMORY[0x1E69E9840];
  return &a1[12 * (v4 - v5) + 4];
}

uint64_t sub_19B5D669C(unsigned __int16 *a1, unint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if (*(a1 + 1) <= a2)
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E282A0);
    }

    v8 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      v9 = *(a1 + 1);
      *buf = 134218240;
      v14 = a2;
      v15 = 1024;
      v16 = v9;
      _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_FAULT, "Assertion failed: i < fCapacity, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/CMQueue.h, line 233,i,%zu,capacity,%u.", buf, 0x12u);
    }

    v10 = sub_19B420058();
    if ((*(v10 + 160) & 0x80000000) == 0 || (*(v10 + 164) & 0x80000000) == 0 || (*(v10 + 168) & 0x80000000) == 0 || *(v10 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E282A0);
      }

      v12 = *(a1 + 1);
      v11 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "const T &CMQueue<CMAccessoryStepDetector::FaceRotationRateSample>::operator[](const size_t) const [T = CMAccessoryStepDetector::FaceRotationRateSample]", "CoreLocation: %s\n", v11);
      if (v11 != buf)
      {
        free(v11);
      }
    }
  }

  v4 = *a1 + a2;
  v5 = *(a1 + 1);
  if (v4 < v5)
  {
    v5 = 0;
  }

  v6 = *MEMORY[0x1E69E9840];
  return &a1[12 * (v4 - v5) + 4];
}

uint64_t sub_19B5D68B8(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a2 >= 3)
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E282A0);
    }

    v8 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      *buf = 134218240;
      v15 = a2;
      v16 = 2048;
      v17 = 3;
      _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_FAULT, "Assertion failed: row < M, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/Math/CMMatrix.h, line 77,invalid row %zu > %zu.", buf, 0x16u);
    }

    v9 = sub_19B420058();
    if ((*(v9 + 160) & 0x80000000) == 0 || (*(v9 + 164) & 0x80000000) == 0 || (*(v9 + 168) & 0x80000000) == 0 || *(v9 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E282A0);
      }

      v10 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "T &CMMatrix<float, 3>::operator()(size_t, size_t) [T = float, M = 3, N = 3]", "CoreLocation: %s\n", v10);
      if (v10 != buf)
      {
        free(v10);
      }
    }
  }

  if (a3 >= 3)
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E282A0);
    }

    v11 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      *buf = 134218240;
      v15 = a3;
      v16 = 2048;
      v17 = 3;
      _os_log_impl(&dword_19B41C000, v11, OS_LOG_TYPE_FAULT, "Assertion failed: col < N, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/Math/CMMatrix.h, line 78,invalid col %zu > %zu.", buf, 0x16u);
    }

    v12 = sub_19B420058();
    if ((*(v12 + 160) & 0x80000000) == 0 || (*(v12 + 164) & 0x80000000) == 0 || (*(v12 + 168) & 0x80000000) == 0 || *(v12 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E282A0);
      }

      v13 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "T &CMMatrix<float, 3>::operator()(size_t, size_t) [T = float, M = 3, N = 3]", "CoreLocation: %s\n", v13);
      if (v13 != buf)
      {
        free(v13);
      }
    }
  }

  v6 = *MEMORY[0x1E69E9840];
  return a1 + 4 * (3 * a3 + a2);
}

unsigned __int16 *sub_19B5D6C44(unsigned __int16 *result, void *a2)
{
  v2 = result[1];
  v3 = *(result + 1);
  v4 = *result;
  if (v4 + v2 >= v3)
  {
    v5 = *(result + 1);
  }

  else
  {
    v5 = 0;
  }

  *&result[4 * (v4 + v2 - v5) + 4] = *a2;
  if (v3 <= v2)
  {
    if (v4 + 1 < v3)
    {
      LOWORD(v3) = 0;
    }

    *result = v4 + 1 - v3;
  }

  else
  {
    result[1] = v2 + 1;
  }

  return result;
}

uint64_t sub_19B5D6C98(unsigned __int16 *a1, unint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if (*(a1 + 1) <= a2)
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E282A0);
    }

    v8 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      v9 = *(a1 + 1);
      *buf = 134218240;
      v14 = a2;
      v15 = 1024;
      v16 = v9;
      _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_FAULT, "Assertion failed: i < fCapacity, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/CMQueue.h, line 233,i,%zu,capacity,%u.", buf, 0x12u);
    }

    v10 = sub_19B420058();
    if ((*(v10 + 160) & 0x80000000) == 0 || (*(v10 + 164) & 0x80000000) == 0 || (*(v10 + 168) & 0x80000000) == 0 || *(v10 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E282A0);
      }

      v12 = *(a1 + 1);
      v11 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "const T &CMQueue<double>::operator[](const size_t) const [T = double]", "CoreLocation: %s\n", v11);
      if (v11 != buf)
      {
        free(v11);
      }
    }
  }

  v4 = *a1 + a2;
  v5 = *(a1 + 1);
  if (v4 < v5)
  {
    v5 = 0;
  }

  v6 = *MEMORY[0x1E69E9840];
  return &a1[4 * (v4 - v5) + 4];
}

void sub_19B5D6EB0(char *a1)
{
  *(a1 + 1164) = 0;
  *(a1 + 1226) = 0;
  *(a1 + 612) = 0x7FF8000000000000;
  *a1 = 0;
  v2 = *(a1 + 744);
  if (v2 && a1[2] == 1)
  {
    sub_19B5E7A0C(v2, 0);
    v3 = *a1;
  }

  else
  {
    v3 = 0;
  }

  a1[2] = v3;
}

double sub_19B5D6F10(uint64_t a1, float32x2_t *a2, double a3)
{
  v324 = *MEMORY[0x1E69E9840];
  v6.f32[0] = sub_19B447000(&a2[7]);
  v7 = a2[1].f32[1] - v6.f32[0];
  v9 = a2[2].f32[0] - v8;
  v11 = a2[2].f32[1] - v10;
  *buf = sub_19B66BFF4(a2 + 7, v6);
  *&buf[4] = v12;
  *&buf[8] = v13;
  *&buf[12] = v14;
  v15 = sub_19B66C1A4(buf, v7, v9, v11);
  v272 = v16.i32[0];
  v276 = v15;
  v18 = v17;
  v19 = 0;
  v20 = 0.0;
  do
  {
    v20 = v20 + (a2->f32[v19] * a2->f32[v19]);
    ++v19;
  }

  while (v19 != 3);
  v21 = v16;
  v21.f32[0] = -v16.f32[0];
  v22 = sqrtf(v20);
  v23 = *(a1 + 3634);
  v24 = *(a1 + 3636);
  v25 = *(a1 + 3632);
  if (v25 + v23 >= v24)
  {
    v26 = *(a1 + 3636);
  }

  else
  {
    v26 = 0;
  }

  *(a1 + 4 * (v25 + v23 - v26) + 3640) = v22;
  if (v24 <= v23)
  {
    if (v25 + 1 < v24)
    {
      LOWORD(v24) = 0;
    }

    *(a1 + 3632) = v25 + 1 - v24;
  }

  else
  {
    *(a1 + 3634) = v23 + 1;
  }

  v27 = *(a1 + 1220);
  v28 = *(a1 + 1216) + *(a1 + 1218);
  if (v28 >= v27)
  {
    v29 = *(a1 + 1220);
  }

  else
  {
    v29 = 0;
  }

  v30 = a1 + 24 * (v28 - v29);
  *(v30 + 1224) = a3;
  *(v30 + 1232) = -v276;
  *(v30 + 1236) = v21.i32[0];
  *(v30 + 1240) = -v17;
  v31 = *(a1 + 1218);
  if (v27 <= v31)
  {
    v32 = *(a1 + 1216) + 1;
    if (v32 < v27)
    {
      LOWORD(v27) = 0;
    }

    *(a1 + 1216) = v32 - v27;
  }

  else
  {
    *(a1 + 1218) = v31 + 1;
  }

  if (*(a1 + 10))
  {
    v33 = *(a1 + 10) + *(a1 + 8) - 1;
    v34 = *(a1 + 12);
    if (v33 < v34)
    {
      v34 = 0;
    }

    v35 = (a1 + 24 * (v33 - v34));
    v36 = v35[3];
    v37 = v35[4].f32[0];
  }

  else
  {
    v36 = 0;
    v37 = 0.0;
  }

  *buf = sub_19B66BFF4(a2 + 7, v21);
  *&buf[4] = v38;
  *&buf[8] = v39;
  *&buf[12] = v40;
  v41.f32[0] = sub_19B66C1A4(buf, a2->f32[0], a2->f32[1], a2[1].f32[0]);
  v43 = *(a1 + 4450);
  v44 = *(a1 + 4452);
  v45 = *(a1 + 4448);
  if (v45 + v43 >= v44)
  {
    v46 = *(a1 + 4452);
  }

  else
  {
    v46 = 0;
  }

  *(a1 + 4 * (v45 + v43 - v46) + 4456) = v42;
  if (v44 <= v43)
  {
    if (v45 + 1 < v44)
    {
      LOWORD(v44) = 0;
    }

    *(a1 + 4448) = v45 + 1 - v44;
  }

  else
  {
    *(a1 + 4450) = v43 + 1;
  }

  *buf = sub_19B66BFF4((a1 + 4968), v41);
  *&buf[4] = v47;
  *&buf[8] = v48;
  *&buf[12] = v49;
  v50 = sub_19B66C1A4(buf, a2->f32[0], a2->f32[1], a2[1].f32[0]);
  v53 = *(a1 + 2428);
  v54 = *(a1 + 2424) + *(a1 + 2426);
  if (v54 >= v53)
  {
    v55 = *(a1 + 2428);
  }

  else
  {
    v55 = 0;
  }

  v56 = a1 + 24 * (v54 - v55);
  *(v56 + 2432) = a3;
  *(v56 + 2440) = v50;
  *(v56 + 2444) = v51;
  *(v56 + 2448) = v52;
  v57 = *(a1 + 2426);
  if (v53 <= v57)
  {
    v58 = *(a1 + 2424) + 1;
    if (v58 < v53)
    {
      LOWORD(v53) = 0;
    }

    *(a1 + 2424) = v58 - v53;
  }

  else
  {
    *(a1 + 2426) = v57 + 1;
  }

  *&v280 = a3;
  *(&v280 + 1) = vsub_f32(v36, __PAIR64__(v272, LODWORD(v276)));
  v281 = v37 - v18;
  sub_19B5D6350((a1 + 8), &v280);
  v59 = *(a1 + 4836);
  if (v59)
  {
    v60 = v59 == 2 && *(a1 + 4844) == 0;
  }

  else
  {
    v60 = 1;
  }

  *(a1 + 3) = v60;
  v61 = *(a1 + 4816);
  v62 = *(a1 + 8) + *(a1 + 10) - 1;
  v63 = *(a1 + 12);
  if (v62 >= v63)
  {
    v64 = *(a1 + 12);
  }

  else
  {
    v64 = 0;
  }

  v65 = (a1 + 24 * (v62 - v64));
  if (vabds_f32(v65[4].f32[0], *(a1 + 4832)) <= 0.125)
  {
    v79 = *(a1 + 4656) + *(a1 + 4658) - 1;
    v80 = *(a1 + 4660);
    if (v79 < v80)
    {
      v80 = 0;
    }

    if (*(a1 + 8 * (v79 - v80) + 4664) + 5.0 <= a3)
    {
      *a1 = 0;
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E28E60);
      }

      v81 = off_1EAFE29A0;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v81, OS_LOG_TYPE_DEBUG, "[AccessoryStepDetector] No spatial sample for 5s. Set detectedSteps = false", buf, 2u);
      }

      v82 = sub_19B420058();
      v83 = a3;
      if (*(v82 + 160) > 1 || *(v82 + 164) > 1 || *(v82 + 168) > 1 || *(v82 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E28E60);
        }

        *v304 = 0;
        v84 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "CMAccessoryStepDetector::Impulse CMAccessoryStepDetector::feedImuData(const CMRelDM::IMUData *const, const double)", "CoreLocation: %s\n", v84);
        if (v84 != buf)
        {
          free(v84);
        }

        v83 = a3;
      }

      if (*(a1 + 5944) + 2.5 < v83)
      {
        sub_19B5D5EC8(a1);
        *(a1 + 5944) = a3;
      }
    }
  }

  else
  {
    v66 = sqrtf(vaddv_f32(vmul_f32(v65[3], v65[3]))) - sqrtf(vaddv_f32(vmul_f32(*(a1 + 4824), *(a1 + 4824))));
    v67 = a1 + 16;
    if (v62 < v63)
    {
      v63 = 0;
    }

    v68 = v67 + 24 * (v62 - v63);
    v69 = *(v68 + 8);
    *(a1 + 4832) = *(v68 + 16);
    *(a1 + 4824) = v69;
    *(a1 + 4816) = *v68;
    sub_19B5D6C44((a1 + 4656), (a1 + 4816));
    sub_19B5BE720((a1 + 4720), a1 + 4824);
    if (*(a1 + 4660) == *(a1 + 4658))
    {
      v70 = *(sub_19B5BEC4C((a1 + 4720), 0) + 8);
      v71 = *(sub_19B5BEC4C((a1 + 4720), 3uLL) + 8);
      v72 = *(sub_19B5BEC4C((a1 + 4720), 3uLL) + 8);
      v73 = *(sub_19B5BEC4C((a1 + 4720), 6uLL) + 8);
      v74 = sub_19B5D6C98((a1 + 4656), 0);
      if (*(a1 + 10))
      {
        v75 = 0;
        v76 = v70 - v71;
        v77 = v72 - v73;
        v78 = *v74;
        while (*sub_19B5D5F28((a1 + 8), v75) < v78)
        {
          if (++v75 >= *(a1 + 10))
          {
            LODWORD(v75) = -1;
            goto LABEL_100;
          }
        }

        if (v75 < *(a1 + 1218))
        {
          v86 = v77 < 0.0 && v76 > 0.0;
          if (v86)
          {
            v87 = *(a1 + 10);
            if (!*(a1 + 10))
            {
              if (qword_1ED71C820 != -1)
              {
                dispatch_once(&qword_1ED71C820, &unk_1F0E282A0);
              }

              v259 = off_1ED71C828;
              if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_19B41C000, v259, OS_LOG_TYPE_FAULT, "Assertion failed: n > 0, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/CMQueue.h, line 179,.", buf, 2u);
              }

              v260 = sub_19B420058();
              if ((*(v260 + 160) & 0x80000000) == 0 || (*(v260 + 164) & 0x80000000) == 0 || (*(v260 + 168) & 0x80000000) == 0 || *(v260 + 152))
              {
                bzero(buf, 0x65CuLL);
                if (qword_1ED71C820 != -1)
                {
                  dispatch_once(&qword_1ED71C820, &unk_1F0E282A0);
                }

                *v304 = 0;
                v261 = _os_log_send_and_compose_impl();
                sub_19B6BB7CC("Generic", 1, 0, 0, "T CMQueue<CMAccessoryStepDetector::AggAccelSample>::getComparison(int (*)(const T, const T), size_t) const [T = CMAccessoryStepDetector::AggAccelSample]", "CoreLocation: %s\n", v261);
                if (v261 != buf)
                {
                  free(v261);
                }
              }
            }

            v88 = sub_19B5D5F28((a1 + 8), v75);
            v85 = *v88;
            v89 = *(v88 + 8);
            v3.i32[0] = *(v88 + 16);
            if (v75 < v87)
            {
              v90 = v75;
              do
              {
                v91 = sub_19B5D5F28((a1 + 8), v90);
                v92.i32[0] = v91[2].i32[0];
                v93 = *v91;
                v89 = vbsl_s8(vdup_lane_s32(vmvn_s8(vcgt_f32(v3, v92)), 0), v89, v91[1]);
                if (v92.f32[0] < v3.f32[0])
                {
                  v85 = *v91;
                  v3.i32[0] = v91[2].i32[0];
                }

                ++v90;
              }

              while (v87 != v90);
            }

            if (qword_1EAFE2998 != -1)
            {
              dispatch_once(&qword_1EAFE2998, &unk_1F0E28E60);
            }

            v94 = off_1EAFE29A0;
            if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
            {
              *buf = 134218496;
              *&buf[4] = a3;
              *&buf[12] = 2048;
              *&buf[14] = v85;
              *&buf[22] = 2048;
              *&buf[24] = v3.f32[0];
              _os_log_impl(&dword_19B41C000, v94, OS_LOG_TYPE_DEBUG, "[AccessoryStepDetector] downInflectionDetected,time,%f,minTime,%f,minAggAccel,%f", buf, 0x20u);
            }

            v95 = sub_19B420058();
            if (*(v95 + 160) > 1 || *(v95 + 164) > 1 || *(v95 + 168) > 1 || *(v95 + 152))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1EAFE2998 != -1)
              {
                dispatch_once(&qword_1EAFE2998, &unk_1F0E28E60);
              }

              *v304 = 134218496;
              *&v304[4] = a3;
              *&v304[12] = 2048;
              *&v304[14] = v85;
              v305 = 2048;
              v306 = v3.f32[0];
              v96 = _os_log_send_and_compose_impl();
              sub_19B6BB7CC("Generic", 1, 0, 2, "void CMAccessoryStepDetector::detectInflection(double, BOOL &, AggAccelSample &, BOOL &, AggAccelSample &) const", "CoreLocation: %s\n", v96);
              if (v96 != buf)
              {
                free(v96);
              }
            }
          }

          else
          {
            v89 = 0;
            v3.i32[0] = 0;
            v85 = NAN;
          }

          if (v76 < 0.0 && v77 > 0.0)
          {
            if (v75 >= *(a1 + 10))
            {
              if (qword_1EAFE2998 != -1)
              {
                dispatch_once(&qword_1EAFE2998, &unk_1F0E28E60);
              }

              v199 = off_1EAFE29A0;
              if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_ERROR))
              {
                v200 = *(a1 + 10);
                *buf = 134349312;
                *&buf[4] = v200;
                *&buf[12] = 1026;
                *&buf[14] = v75;
                _os_log_impl(&dword_19B41C000, v199, OS_LOG_TYPE_ERROR, "[AccessoryStepDetector] Error: queue size: %{public}zu start: %{public}d", buf, 0x12u);
              }

              v201 = sub_19B420058();
              if ((*(v201 + 160) & 0x80000000) == 0 || (*(v201 + 164) & 0x80000000) == 0 || (*(v201 + 168) & 0x80000000) == 0 || *(v201 + 152))
              {
                bzero(buf, 0x65CuLL);
                if (qword_1EAFE2998 != -1)
                {
                  dispatch_once(&qword_1EAFE2998, &unk_1F0E28E60);
                }

                v202 = *(a1 + 10);
                *v304 = 134349312;
                *&v304[4] = v202;
                *&v304[12] = 1026;
                *&v304[14] = v75;
                v203 = _os_log_send_and_compose_impl();
                sub_19B6BB7CC("Generic", 1, 0, 0, "CMAccessoryStepDetector::AggAccelSample CMAccessoryStepDetector::calculateMaxFilteredMedianValue(const CMQueue<CMAccessoryStepDetector::AggAccelSample> &, const int) const", "CoreLocation: %s\n", v203);
                if (v203 != buf)
                {
                  free(v203);
                }
              }

              v104 = 0;
              v204 = 0.0;
              *&v205 = NAN;
            }

            else
            {
              *buf = 0x3200000000;
              do
              {
                for (i = 0; i != 72; i += 24)
                {
                  v133 = &v304[i];
                  *v133 = 0x7FF8000000000000;
                  *(v133 + 1) = 0;
                  *(v133 + 4) = 0;
                }

                if (v75)
                {
                  v134 = v75 - 1;
                }

                else
                {
                  v134 = 0;
                }

                *&v304[16] = *(sub_19B5D5F28((a1 + 8), v134) + 16);
                *v304 = *sub_19B5D5F28((a1 + 8), v134);
                *&v308[6] = *(sub_19B5D5F28((a1 + 8), v75) + 16);
                v306 = *sub_19B5D5F28((a1 + 8), v75);
                v135 = v75 + 1;
                v136 = *(a1 + 10);
                if (v75 + 1 >= v136)
                {
                  v138 = v136 + *(a1 + 8) - 1;
                  v139 = *(a1 + 12);
                  if (v138 < v139)
                  {
                    v139 = 0;
                  }

                  v137 = v67 + 24 * (v138 - v139);
                  LODWORD(v311) = *(v137 + 16);
                }

                else
                {
                  LODWORD(v311) = *(sub_19B5D5F28((a1 + 8), v75 + 1) + 16);
                  v137 = sub_19B5D5F28((a1 + 8), v75 + 1);
                }

                *&v309[4] = *v137;
                *v285 = sub_19B5D633C;
                sub_19B5D95D4(v304, &v312, v285, 2, 1);
                v306 = *sub_19B5D5F28((a1 + 8), v75);
                sub_19B5D6350(buf, &v306);
                ++v75;
              }

              while (v135 < *(a1 + 10));
              v140 = *&buf[2] - 1;
              if (v140 < 2)
              {
                v144 = 2;
              }

              else
              {
                v141 = 1;
                v142 = -INFINITY;
                v143 = 1;
                do
                {
                  if (v142 <= *(sub_19B5D5F28(buf, v141) + 16))
                  {
                    v142 = *(sub_19B5D5F28(buf, v141) + 16);
                    v143 = v141;
                  }

                  ++v141;
                  v140 = *&buf[2] - 1;
                }

                while (v140 > v141);
                v144 = v143 + 1;
              }

              if (v140 >= v144)
              {
                v207 = v144;
              }

              else
              {
                v207 = v140;
              }

              v208 = sub_19B5D5F28(buf, v207);
              v205 = *v208;
              v104 = *(v208 + 8);
              v204 = *(v208 + 16);
            }

            if (qword_1EAFE2998 != -1)
            {
              dispatch_once(&qword_1EAFE2998, &unk_1F0E28E60);
            }

            v209 = off_1EAFE29A0;
            v105 = v204;
            v210 = v204;
            if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
            {
              v211 = *(a1 + 10);
              *buf = 134218752;
              *&buf[4] = a3;
              *&buf[12] = 2048;
              *&buf[14] = v210;
              *&buf[22] = 2048;
              *&buf[24] = v205;
              *&buf[32] = 2048;
              *&buf[34] = v211;
              _os_log_impl(&dword_19B41C000, v209, OS_LOG_TYPE_DEBUG, "[AccessoryStepDetector] upInflectionDetected,time,%f,maxMedianValue,%f,maxMedianTime,%f,bufSize,%zu", buf, 0x2Au);
            }

            v212 = sub_19B420058();
            if (*(v212 + 160) > 1 || *(v212 + 164) > 1 || *(v212 + 168) > 1 || *(v212 + 152))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1EAFE2998 != -1)
              {
                dispatch_once(&qword_1EAFE2998, &unk_1F0E28E60);
              }

              v213 = *(a1 + 10);
              *v304 = 134218752;
              *&v304[4] = a3;
              *&v304[12] = 2048;
              *&v304[14] = v210;
              v305 = 2048;
              v306 = *&v205;
              v307 = 2048;
              *v308 = v213;
              v214 = _os_log_send_and_compose_impl();
              sub_19B6BB7CC("Generic", 1, 0, 2, "void CMAccessoryStepDetector::detectInflection(double, BOOL &, AggAccelSample &, BOOL &, AggAccelSample &) const", "CoreLocation: %s\n", v214);
              if (v214 != buf)
              {
                free(v214);
              }
            }

            v102 = *(a1 + 4836);
            v103 = 1;
            v106 = *&v205;
            goto LABEL_114;
          }

LABEL_112:
          v102 = *(a1 + 4836);
          if (!v86)
          {
            *(a1 + 4840) = v102;
            v107 = a3;
            if (v102)
            {
              v108 = *(a1 + 4938);
              if (*(a1 + 4938))
              {
                v109 = v108 + *(a1 + 4936) - 1;
                v110 = *(a1 + 4940);
                if (v109 < v110)
                {
                  v110 = 0;
                }

                v111 = *(a1 + 8 * (v109 - v110) + 4944);
                if (*(a1 + 4906))
                {
                  v112 = *(a1 + 4906) + *(a1 + 4904) - 1;
                  v113 = *(a1 + 4908);
                  if (v112 < v113)
                  {
                    v113 = 0;
                  }

                  v114 = a1 + 8 * (v112 - v113);
                  if (v111 < *(v114 + 4912))
                  {
                    v111 = *(v114 + 4912);
                  }
                }

                if (a3 - v111 > 1.5)
                {
                  if (v102 == 2)
                  {
                    *(a1 + 4938) = v108 - 1;
                  }

                  *(a1 + 4836) = 0;
                  *(a1 + 4844) = v102;
                  *a1 = 0;
                  sub_19B5D5EC8(a1);
                  v107 = a3;
                  *(a1 + 5944) = a3;
                }
              }
            }

            if (*(a1 + 5944) + 2.5 < v107)
            {
              v85 = NAN;
              if (*a1)
              {
LABEL_256:
                *a1 = 0;
                goto LABEL_257;
              }

              sub_19B5D5EC8(a1);
              *(a1 + 5944) = a3;
            }

            goto LABEL_255;
          }

          v103 = 0;
          v104 = 0;
          v105 = 0.0;
          v106 = NAN;
LABEL_114:
          if (v102 != 2)
          {
            if (v102 == 1)
            {
              if ((v103 & 1) == 0 && v85 > *(a1 + 4848) && v85 - *(a1 + 4872) > 0.25)
              {
                *(a1 + 4836) = 2;
                *(a1 + 4844) = 1;
                *(a1 + 4872) = v85;
                *(a1 + 4880) = v89;
                *(a1 + 4888) = v3.i32[0];
                sub_19B5D6C44((a1 + 4936), (a1 + 4872));
                goto LABEL_144;
              }
            }

            else
            {
              if (v102)
              {
                __assert_rtn("updateFSM", "CMAccessoryStepDetector.m", 722, "false");
              }

              if ((v103 & 1) == 0)
              {
                *(a1 + 4836) = 2;
                *(a1 + 4844) = 0;
                *(a1 + 4872) = v85;
                *(a1 + 4880) = v89;
                *(a1 + 4888) = v3.i32[0];
                sub_19B5D6C44((a1 + 4936), (a1 + 4872));
LABEL_144:
                if (qword_1EAFE2998 != -1)
                {
                  dispatch_once(&qword_1EAFE2998, &unk_1F0E28E60);
                }

                v115 = off_1EAFE29A0;
                if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 134217984;
                  *&buf[4] = v85;
                  _os_log_impl(&dword_19B41C000, v115, OS_LOG_TYPE_DEBUG, "[AccessoryStepDetector] startImpulse,time,%f", buf, 0xCu);
                }

                v116 = sub_19B420058();
                if (*(v116 + 160) > 1 || *(v116 + 164) > 1 || *(v116 + 168) > 1 || *(v116 + 152))
                {
                  bzero(buf, 0x65CuLL);
                  if (qword_1EAFE2998 != -1)
                  {
                    dispatch_once(&qword_1EAFE2998, &unk_1F0E28E60);
                  }

                  *v304 = 134217984;
                  *&v304[4] = v85;
                  v117 = _os_log_send_and_compose_impl();
                  sub_19B6BB7CC("Generic", 1, 0, 2, "CMAccessoryStepDetector::Impulse CMAccessoryStepDetector::feedImuData(const CMRelDM::IMUData *const, const double)", "CoreLocation: %s\n", v117);
                  if (v117 != buf)
                  {
                    free(v117);
                  }
                }

                goto LABEL_256;
              }
            }

            goto LABEL_255;
          }

          if (v86)
          {
            if (vabdd_f64(*(a1 + 4872), v85) > 0.000001)
            {
              *(a1 + 4872) = v85;
              *(a1 + 4880) = v89;
              *(a1 + 4888) = v3.i32[0];
              if (*(a1 + 4938))
              {
                --*(a1 + 4938);
              }

              sub_19B5D6C44((a1 + 4936), (a1 + 4872));
              goto LABEL_144;
            }

            goto LABEL_255;
          }

          v268 = v105;
          v262 = v104;
          *(a1 + 1) = 1;
          if (!*(a1 + 4906) || (*(a1 + 3) & 1) != 0)
          {
            goto LABEL_162;
          }

          v118 = *(a1 + 4906) + *(a1 + 4904) - 1;
          v119 = *(a1 + 4908);
          if (v118 < v119)
          {
            v119 = 0;
          }

          v120 = *(a1 + 8 * (v118 - v119) + 4912);
          if (v106 - v120 > 1.0)
          {
LABEL_162:
            v120 = v106 + -1.0;
          }

          v269 = v106;
          v266 = v106 - *(a1 + 4872);
          v267 = v106 - *(a1 + 4848);
          *v285 = v267;
          *&v285[8] = v266;
          v282[0] = 0.0;
          v283.i32[0] = 0;
          v121 = *(a1 + 4888);
          v122 = sub_19B5D5F28((a1 + 8), *(a1 + 10) - 1);
          v123 = *(a1 + 4872);
          if (*v122 > v123)
          {
            sub_19B5D63BC(a1, v282, &v283, v123, 0.0);
            v121 = *(sub_19B5D5F28((a1 + 8), SLODWORD(v282[0])) + 16);
          }

          v124 = sub_19B5D5F28((a1 + 8), *(a1 + 10) - 1);
          v125 = v269;
          v126 = v105;
          if (*v124 > v269)
          {
            v282[0] = 0.0;
            sub_19B5D63BC(a1, v282, &v283, v269, 0.0);
            v126 = *(sub_19B5D5F28((a1 + 8), SLODWORD(v282[0])) + 16);
            v125 = v269;
          }

          v265 = v126 - v121;
          *&v285[16] = v265;
          *buf = 0;
          *v304 = 0;
          sub_19B5D63BC(a1, buf, v304, v120, v125);
          if (*buf <= 1)
          {
            v127 = 1;
          }

          else
          {
            v127 = *buf;
          }

          v128 = (v127 - 1);
          v129 = *v304;
          v264 = v127;
          if (v128 <= *v304)
          {
            v145 = v127 - 1;
            v146 = *v304 + 1;
            v147 = 0;
            v148 = 0.0;
            v149 = vdup_n_s32(0x411CE80Au);
            v131 = 0;
            v150 = 0;
            do
            {
              v151 = 0.02;
              if (v145)
              {
                v152 = *sub_19B5D6480((a1 + 1216), v145);
                v151 = v152 - *sub_19B5D6480((a1 + 1216), v145 - 1);
              }

              v153 = sub_19B5D669C((a1 + 2424), v145);
              v154.i32[0] = *(v153 + 16);
              v155 = v151;
              v154.i32[1] = *(v153 + 8);
              v273 = v154;
              v278 = v155;
              v156 = *sub_19B5BFE1C((a1 + 4448), v145);
              v157 = *(sub_19B5D6480((a1 + 1216), v145) + 8);
              v158 = sub_19B5D6480((a1 + 1216), v145);
              v147 = vadd_f32(v147, vmul_n_f32(v273, v278));
              v148 = v148 + v156 * v151;
              v159 = vmul_n_f32(v150, v278);
              v150 = vadd_f32(v150, vmul_n_f32(vmul_f32(v157, v149), v278));
              v131 = vadd_f32(v131, vadd_f32(v159, vmul_n_f32(vmul_n_f32(vmul_f32(vmul_f32(v158[1], 0x3F0000003F000000), v149), v278), v278)));
              ++v145;
            }

            while (v146 != v145);
            v130 = vmul_f32(v147, vdup_n_s32(0x42652EE1u));
            v277 = (v148 * 57.296);
          }

          else
          {
            v130 = 0;
            v277 = 0.0;
            v131 = 0;
          }

          v270 = *sub_19B5D6480((a1 + 1216), v129);
          v263 = *sub_19B5D6480((a1 + 1216), v128);
          v160 = sqrtf(vaddv_f32(vmul_f32(v131, v131)));
          v274 = vcvtq_f64_f32(vabs_f32(v130));
          *&v285[24] = v274;
          *&v285[40] = v160;
          buf[0] = 1;
          *&buf[20] = 0;
          *&buf[12] = 0;
          *&buf[28] = 0x400000000;
          v161 = *(a1 + 1218);
          v162 = 1.0;
          if (*(a1 + 1220) == v161)
          {
            v162 = 0.0;
            if (v161 >= 2)
            {
              v163 = 1;
              do
              {
                v164 = *(sub_19B5D6480((a1 + 1216), v163) + 16);
                v165 = v163 - 1;
                *v304 = v164 - *(sub_19B5D6480((a1 + 1216), v165) + 16);
                sub_19B5BC034(buf, v304);
                if (buf[0] == 1)
                {
                  sub_19B5BE7E0(buf);
                }

                v166 = *&buf[8];
                if (*&buf[8] < 0.0)
                {
                  v166 = 0.0;
                }

                if (v166 <= 0.003)
                {
                  v167 = 0.0;
                }

                else
                {
                  v167 = v166 + -0.003;
                }

                v162 = v162 + v167;
                v163 = v165 + 2;
              }

              while (v163 < *(a1 + 1218));
            }
          }

          v168 = *(a1 + 3634);
          v169 = 0.0;
          if (*(a1 + 3636) == v168 && (v168 - 17) <= 0xFFFFFFFFFFFFFFF6)
          {
            v170 = 0;
            v171 = 8;
            v172 = 9;
            do
            {
              v173 = *sub_19B5BFE1C((a1 + 3632), v171);
              v174 = v172;
              v175 = 7;
              while (1)
              {
                v176 = 0.0;
                if (v173 < *sub_19B5BFE1C((a1 + 3632), v170 + v175) || v173 < *sub_19B5BFE1C((a1 + 3632), v174))
                {
                  break;
                }

                --v175;
                ++v174;
                if (v175 == 3)
                {
                  v177 = 0;
                  v178 = 0;
                  v179 = v173 + -0.5;
                  v180 = v172;
                  v181 = 7;
                  while (1)
                  {
                    v178 |= v179 > *sub_19B5BFE1C((a1 + 3632), v170 + v181);
                    v177 |= v179 > *sub_19B5BFE1C((a1 + 3632), v180);
                    if (v178 & v177)
                    {
                      break;
                    }

                    --v181;
                    ++v180;
                    if (v181 == -1)
                    {
                      goto LABEL_222;
                    }
                  }

                  v176 = v173;
                  break;
                }
              }

LABEL_222:
              v169 = v169 + v176;
              ++v171;
              ++v172;
              ++v170;
            }

            while (v171 < *(a1 + 3634) - 8);
          }

          v182 = 0;
          v183 = -1.0;
          if (v162 < 1.0)
          {
            v183 = v169;
          }

          v184 = v162;
          v185 = v183;
          *&v286 = v162;
          *(&v286 + 1) = v183;
          v186 = 1.0;
          do
          {
            LOBYTE(v187) = 0;
            while (1)
            {
              v187 = v187;
              if (*(*(a1 + 5864 + 8 * v182) + 8 * v187) > *&v285[8 * v182])
              {
                break;
              }

              LOBYTE(v187) = v187 + 1;
              if (dword_19B7B7C70[v182] <= v187)
              {
                v187 = v187;
                break;
              }
            }

            v186 = v186 * *(*(a1 + 5800 + 8 * v182++) + 8 * v187);
          }

          while (v182 != 8);
          if (qword_1EAFE2998 != -1)
          {
            dispatch_once(&qword_1EAFE2998, &unk_1F0E28E60);
          }

          v188 = off_1EAFE29A0;
          if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
          {
            *buf = 134221056;
            *&buf[4] = a3;
            *&buf[12] = 2048;
            *&buf[14] = v186;
            *&buf[22] = 2048;
            *&buf[24] = v267;
            *&buf[32] = 2048;
            *&buf[34] = v266;
            v288 = 2048;
            *v289 = v265;
            *&v289[8] = 2048;
            *&v289[10] = v274.f64[0];
            v290 = 2048;
            v291 = v274.f64[1];
            v292 = 2048;
            v293 = v160;
            v294 = 2048;
            v295 = v277;
            v296 = 2048;
            v297 = a3;
            v298 = 2048;
            v299 = (v129 - v264 + 2) / (v270 - v263);
            v300 = 2048;
            v301 = v184;
            v302 = 2048;
            v303 = v185;
            _os_log_impl(&dword_19B41C000, v188, OS_LOG_TYPE_DEBUG, "[AccessoryStepDetector] stepLLR,%f,llr,%f,kTimeSinceLastStepSec,%f,kImpulseDurationSec,%f,kDeltaInertialZVel,%f,kThetaRollFaceDegrees,%f,kThetaPitchFaceDegrees,%f,kHorizontalDisplacement,%f,yawRotationAmountDegrees,%f,sensorTime,%f,bufferSampleRate,%f,peakiness,%f,bobbiness,%f\n", buf, 0x84u);
          }

          v189 = sub_19B420058();
          if (*(v189 + 160) > 1 || *(v189 + 164) > 1 || *(v189 + 168) > 1 || *(v189 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1EAFE2998 != -1)
            {
              dispatch_once(&qword_1EAFE2998, &unk_1F0E28E60);
            }

            *v304 = 134221056;
            *&v304[4] = a3;
            *&v304[12] = 2048;
            *&v304[14] = v186;
            v305 = 2048;
            v306 = v267;
            v307 = 2048;
            *v308 = v266;
            *&v308[8] = 2048;
            *v309 = v265;
            *&v309[8] = 2048;
            *&v309[10] = v274.f64[0];
            v310 = 2048;
            v311 = v274.f64[1];
            v312 = 2048;
            v313 = v160;
            v314 = 2048;
            v315 = v277;
            v316 = 2048;
            v317 = a3;
            v318 = 2048;
            v319 = (v129 - v264 + 2) / (v270 - v263);
            v320 = 2048;
            v321 = v184;
            v322 = 2048;
            v323 = v185;
            v190 = _os_log_send_and_compose_impl();
            sub_19B6BB7CC("Generic", 1, 0, 2, "double CMAccessoryStepDetector::computeStepLikelihood(const AggAccelSample &, const double, const double, const double) const", "CoreLocation: %s\n", v190);
            if (v190 != buf)
            {
              free(v190);
            }
          }

          if (v186 <= 1.0)
          {
            *(a1 + 4844) = 2;
          }

          else
          {
            v191 = v269;
            if (*(a1 + 3) != 1)
            {
              *(a1 + 4844) = 2;
              v206 = v268;
LABEL_328:
              *(a1 + 4836) = 1;
              *(a1 + 4848) = v191;
              *(a1 + 4856) = v262;
              *(a1 + 4864) = v206;
              *(a1 + 4896) = v191;
              sub_19B5D6C44((a1 + 4904), (a1 + 4896));
              if (*(a1 + 4908) == *(a1 + 4906))
              {
                v252 = *(a1 + 4896) - *(a1 + 8 * *(a1 + 4904) + 4912);
                if (v252 < 0.0)
                {
                  if (qword_1EAFE2998 != -1)
                  {
                    dispatch_once(&qword_1EAFE2998, &unk_1F0E28E60);
                  }

                  v253 = off_1EAFE29A0;
                  if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 0;
                    _os_log_impl(&dword_19B41C000, v253, OS_LOG_TYPE_ERROR, "[AccessoryStepDetector] Steps in _endImpulseTimestampHistory have times going backwards", buf, 2u);
                  }

                  v254 = sub_19B420058();
                  if ((*(v254 + 160) & 0x80000000) == 0 || (*(v254 + 164) & 0x80000000) == 0 || (*(v254 + 168) & 0x80000000) == 0 || *(v254 + 152))
                  {
                    bzero(buf, 0x65CuLL);
                    if (qword_1EAFE2998 != -1)
                    {
                      dispatch_once(&qword_1EAFE2998, &unk_1F0E28E60);
                    }

                    *v304 = 0;
                    v255 = _os_log_send_and_compose_impl();
                    sub_19B6BB7CC("Generic", 1, 0, 0, "CMAccessoryStepDetector::Impulse CMAccessoryStepDetector::feedImuData(const CMRelDM::IMUData *const, const double)", "CoreLocation: %s\n", v255);
                    if (v255 != buf)
                    {
                      free(v255);
                    }
                  }
                }

                if (v252 <= 5.0)
                {
                  *a1 = 1;
                  sub_19B5D5EC8(a1);
                  *(a1 + 5944) = a3;
                }
              }

              if (qword_1EAFE2998 != -1)
              {
                dispatch_once(&qword_1EAFE2998, &unk_1F0E28E60);
              }

              v256 = off_1EAFE29A0;
              if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
              {
                *buf = 134217984;
                *&buf[4] = v269;
                _os_log_impl(&dword_19B41C000, v256, OS_LOG_TYPE_DEBUG, "[AccessoryStepDetector] endImpulse,time,%f", buf, 0xCu);
              }

              v257 = sub_19B420058();
              if (*(v257 + 160) > 1 || *(v257 + 164) > 1 || *(v257 + 168) > 1 || *(v257 + 152))
              {
                bzero(buf, 0x65CuLL);
                if (qword_1EAFE2998 != -1)
                {
                  dispatch_once(&qword_1EAFE2998, &unk_1F0E28E60);
                }

                *v304 = 134217984;
                *&v304[4] = v269;
                v258 = _os_log_send_and_compose_impl();
                sub_19B6BB7CC("Generic", 1, 0, 2, "CMAccessoryStepDetector::Impulse CMAccessoryStepDetector::feedImuData(const CMRelDM::IMUData *const, const double)", "CoreLocation: %s\n", v258);
                if (v258 != buf)
                {
                  free(v258);
                }
              }

              v85 = NAN;
              goto LABEL_256;
            }

            v192 = vabdd_f64(v268, *(a1 + 4888));
            if (v192 <= 0.4)
            {
              v193 = -1;
            }

            else
            {
              v193 = 2;
            }

            *v304 = 0x3200000000;
            if (*(a1 + 4938))
            {
              v194 = *(a1 + 4938) + *(a1 + 4936) - 1;
              v195 = *(a1 + 4940);
              if (v194 < v195)
              {
                v195 = 0;
              }

              v196 = *(a1 + 8 * (v194 - v195) + 4944);
            }

            else
            {
              v196 = 0.0;
            }

            if (*(a1 + 10))
            {
              v215 = 0;
              v216 = 0;
              v217 = 0.0;
              do
              {
                if (v196 + -0.4 <= *sub_19B5D5F28((a1 + 8), v215) && *sub_19B5D5F28((a1 + 8), v215) <= v196)
                {
                  v218 = *(sub_19B5D5F28((a1 + 8), v215) + 8);
                  v219 = *(sub_19B5D5F28((a1 + 8), v215) + 12);
                  *buf = __PAIR64__(*(sub_19B5D5F28((a1 + 8), v215) + 16), COERCE_UNSIGNED_INT(sqrtf((v218 * v218) + (v219 * v219))));
                  *&buf[8] = 0;
                  sub_19B5BE720(v304, buf);
                  v216 = vadd_f32(v216, *buf);
                  v217 = v217 + *&buf[8];
                }

                ++v215;
              }

              while (v215 < *(a1 + 10));
              v220 = *&v304[2];
              v221 = *v304;
              v222 = *&v304[4];
              LODWORD(v267) = *&v304[12 * *v304 + 8];
            }

            else
            {
              v220 = 0;
              v221 = 0;
              v216 = 0;
              v217 = 0.0;
              v222 = 50;
            }

            v223 = v221 + v220 - 1;
            if (v223 < v222)
            {
              v222 = 0;
            }

            v224 = &v304[12 * (v223 - v222) + 8];
            v271 = *v224;
            v275 = v224[1];
            v225 = *&v304[12 * v221 + 12];
            v226 = 0.0;
            v227 = v220;
            if (v220 >= 2)
            {
              v228 = 1;
              do
              {
                v229 = *sub_19B5BEC4C(v304, v228);
                v230 = v228 - 1;
                v231 = *sub_19B5BEC4C(v304, v230++);
                v232 = *(sub_19B5BEC4C(v304, v230--) + 4);
                v233 = sub_19B5BEC4C(v304, v230);
                v226 = v226 + sqrt((v229 - v231) * (v229 - v231) + (v232 - *(v233 + 4)) * (v232 - *(v233 + 4)));
                v227 = *&v304[2];
                v228 = v230 + 2;
              }

              while (v228 < *&v304[2]);
            }

            v234.i32[1] = 0;
            memset(v285, 0, 36);
            v191 = v269;
            if (v227)
            {
              v235 = 0;
              *v234.i32 = v220;
              v236 = vdiv_f32(v216, vdup_lane_s32(v234, 0));
              v237 = v217 / v220;
              do
              {
                v238 = sub_19B5BEC4C(v304, v235);
                v239 = v238[1].f32[0] - v237;
                v283 = vsub_f32(*v238, v236);
                v284 = v239;
                sub_19B5DB70C(&v283, buf);
                for (j = 0; j != 9; ++j)
                {
                  *&v285[4 * j] = sub_19B5DB794(buf, j) + *&v285[4 * j];
                }

                ++v235;
              }

              while (v235 < *&v304[2]);
            }

            *buf = *v285;
            *&buf[16] = *&v285[16];
            *&buf[32] = *&v285[32];
            v283.i32[0] = sub_19B5DB98C(buf, v282);
            v283.i32[1] = v241;
            v284 = v242;
            *buf = &v283;
            *&buf[8] = v282;
            sub_19B5DBFAC(buf, 0, 1uLL);
            sub_19B5DBFAC(buf, 0, 2uLL);
            sub_19B5DBFAC(buf, 1uLL, 2uLL);
            v243 = sqrtf(((v271 - *&v267) * (v271 - *&v267)) + ((v275 - v225) * (v275 - v225)));
            v244 = fabsf(atanf(v282[1] / v282[0]));
            v245 = v226 / v243 < 1.22;
            v246 = v192 > 0.35;
            if (v244 >= 0.785398157)
            {
              v245 = 0;
            }

            v247 = v246 && v245;
            if (v246 && v245)
            {
              v248 = 1;
            }

            else
            {
              v248 = v193;
            }

            if (qword_1EAFE2998 != -1)
            {
              dispatch_once(&qword_1EAFE2998, &unk_1F0E28E60);
            }

            v249 = off_1EAFE29A0;
            if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
            {
              *buf = 134219264;
              *&buf[4] = v226;
              *&buf[12] = 2048;
              *&buf[14] = v243;
              *&buf[22] = 2048;
              *&buf[24] = v244 * 57.2957802;
              *&buf[32] = 2048;
              *&buf[34] = v192;
              v288 = 1024;
              *v289 = v248;
              *&v289[4] = 2048;
              *&v289[6] = a3;
              _os_log_impl(&dword_19B41C000, v249, OS_LOG_TYPE_DEBUG, "[AccessoryStepDetector] arcLength,%f,curveDistance,%f,firstLoftAngleDegrees,%f,aggAccelZDelta,%f,isFirstStep, %d,sensorTime,%f\n", buf, 0x3Au);
            }

            v250 = sub_19B420058();
            if (*(v250 + 160) > 1 || *(v250 + 164) > 1 || *(v250 + 168) > 1 || *(v250 + 152))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1EAFE2998 != -1)
              {
                dispatch_once(&qword_1EAFE2998, &unk_1F0E28E60);
              }

              *v285 = 134219264;
              *&v285[4] = v226;
              *&v285[12] = 2048;
              *&v285[14] = v243;
              *&v285[22] = 2048;
              *&v285[24] = v244 * 57.2957802;
              *&v285[32] = 2048;
              *&v285[34] = v192;
              *&v285[42] = 1024;
              *&v285[44] = v248;
              LOWORD(v286) = 2048;
              *(&v286 + 2) = a3;
              v251 = _os_log_send_and_compose_impl();
              sub_19B6BB7CC("Generic", 1, 0, 2, "int CMAccessoryStepDetector::isFirstStep(const double, const double, const double) const", "CoreLocation: %s\n", v251);
              if (v251 != buf)
              {
                free(v251);
              }
            }

            *(a1 + 4844) = 2;
            v206 = v268;
            if (v192 > 0.4 || v247)
            {
              goto LABEL_328;
            }
          }

          *(a1 + 4836) = 0;
          if (*(a1 + 4938))
          {
            --*(a1 + 4938);
          }

LABEL_255:
          v85 = NAN;
          goto LABEL_256;
        }
      }

      else
      {
        LODWORD(v75) = -1;
      }

LABEL_100:
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E28E60);
      }

      v97 = off_1EAFE29A0;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_ERROR))
      {
        v98 = *(a1 + 1218);
        *buf = 67240448;
        *&buf[4] = v75;
        *&buf[8] = 2050;
        *&buf[10] = v98;
        _os_log_impl(&dword_19B41C000, v97, OS_LOG_TYPE_ERROR, "[AccessoryStepDetector] Error: Spatial sample buffer is starting at the end of the inertial buffer. startIndex:%{public}d size:%{public}zu", buf, 0x12u);
      }

      v99 = sub_19B420058();
      if ((*(v99 + 160) & 0x80000000) == 0 || (*(v99 + 164) & 0x80000000) == 0 || (*(v99 + 168) & 0x80000000) == 0 || *(v99 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E28E60);
        }

        v100 = *(a1 + 1218);
        *v304 = 67240448;
        *&v304[4] = v75;
        *&v304[8] = 2050;
        *&v304[10] = v100;
        v101 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 0, "void CMAccessoryStepDetector::detectInflection(double, BOOL &, AggAccelSample &, BOOL &, AggAccelSample &) const", "CoreLocation: %s\n", v101);
        if (v101 != buf)
        {
          free(v101);
        }
      }

      v86 = 0;
      v89 = 0;
      v3.i32[0] = 0;
      v85 = NAN;
      goto LABEL_112;
    }
  }

  v85 = NAN;
LABEL_257:
  v197 = *MEMORY[0x1E69E9840];
  return v85;
}

os_log_t sub_19B5D95A4()
{
  result = os_log_create("com.apple.locationd.Motion", "RelativeDeviceMotion");
  off_1EAFE29A0 = result;
  return result;
}

void sub_19B5D95D4(uint64_t a1, __n128 *a2, unsigned int (**a3)(__n128 *, __n128 *), uint64_t a4, char a5)
{
LABEL_1:
  v9 = (a2 - 24);
  v10 = a2 - 3;
  v11 = &a2[-5].n128_i8[8];
  v12 = a1;
  v333 = a2;
  while (1)
  {
    a1 = v12;
    v13 = a2 - v12;
    v14 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v12) >> 3);
    if (v14 > 2)
    {
      break;
    }

    if (v14 < 2)
    {
      return;
    }

    if (v14 == 2)
    {
      v230 = *a3;
      v231 = *(a2 - 24);
      v341 = a2[-1].n128_u64[1];
      v340 = v231;
      v232 = *a1;
      v339 = *(a1 + 16);
      v338 = v232;
      if (!v230(&v340, &v338))
      {
        return;
      }

LABEL_111:
      v239 = *a1;
      v341 = *(a1 + 16);
      v340 = v239;
      v240 = *v9;
      *(a1 + 16) = v9[1].n128_u32[0];
      *a1 = v240;
      v241 = v340;
      v9[1].n128_u32[0] = v341;
      goto LABEL_112;
    }

LABEL_9:
    if (v13 <= 575)
    {
      v242 = (a1 + 24);
      v243 = a1 == a2 || v242 == a2;
      v244 = v243;
      if (a5)
      {
        if ((v244 & 1) == 0)
        {
          v245 = 0;
          v246 = a1;
          do
          {
            v247 = v246;
            v246 = v242;
            v248 = *a3;
            v249 = *v246;
            v341 = *(v246 + 16);
            v340 = v249;
            v250 = *v247;
            v339 = *(v247 + 16);
            v338 = v250;
            if (v248(&v340, &v338))
            {
              v251 = *v246;
              v341 = *(v246 + 16);
              v340 = v251;
              v252 = v245;
              while (1)
              {
                v253 = a1 + v252;
                *(v253 + 24) = *(a1 + v252);
                *(v253 + 40) = *(a1 + v252 + 16);
                if (!v252)
                {
                  break;
                }

                v254 = *a3;
                v338 = v340;
                v339 = v341;
                v255 = *(v253 - 24);
                v337 = *(v253 - 8);
                v336 = v255;
                v252 -= 24;
                if (!v254(&v338, &v336))
                {
                  v256 = a1 + v252 + 24;
                  goto LABEL_129;
                }
              }

              v256 = a1;
LABEL_129:
              v257 = v340;
              *(v256 + 16) = v341;
              *v256 = v257;
              a2 = v333;
            }

            v242 = (v246 + 24);
            v245 += 24;
          }

          while ((v246 + 24) != a2);
        }
      }

      else if ((v244 & 1) == 0)
      {
        do
        {
          v308 = a1;
          a1 = v242;
          v309 = *a3;
          v310 = *a1;
          v341 = *(a1 + 16);
          v340 = v310;
          v311 = *v308;
          v339 = *(v308 + 16);
          v338 = v311;
          if (v309(&v340, &v338))
          {
            v312 = *a1;
            v341 = *(a1 + 16);
            v340 = v312;
            v313 = a1;
            do
            {
              v314 = v313 - 24;
              *v313 = *(v313 - 24);
              *(v313 + 16) = *(v313 - 8);
              v315 = *a3;
              v338 = v340;
              v339 = v341;
              v316 = *(v313 - 48);
              v337 = *(v313 - 32);
              v336 = v316;
              v317 = v315(&v338, &v336);
              v313 = v314;
            }

            while (v317);
            v318 = v340;
            *(v314 + 16) = v341;
            *v314 = v318;
            a2 = v333;
          }

          v242 = (a1 + 24);
        }

        while ((a1 + 24) != a2);
      }

      return;
    }

    if (!a4)
    {
      if (a1 != a2)
      {
        v258 = (v14 - 2) >> 1;
        v332 = v258;
        do
        {
          v259 = v258;
          if (v332 >= v258)
          {
            v260 = (2 * v258) | 1;
            v261 = a1 + 24 * v260;
            if (2 * v258 + 2 < v14)
            {
              v262 = *a3;
              v263 = *v261;
              v341 = *(v261 + 16);
              v340 = v263;
              v264 = *(v261 + 24);
              v339 = *(v261 + 40);
              v338 = v264;
              if (v262(&v340, &v338))
              {
                v261 += 24;
                v260 = 2 * v259 + 2;
              }
            }

            v265 = a1 + 24 * v259;
            v266 = *a3;
            v267 = *v261;
            v341 = *(v261 + 16);
            v340 = v267;
            v268 = *v265;
            v339 = *(v265 + 16);
            v338 = v268;
            a2 = v333;
            if (!v266(&v340, &v338))
            {
              v269 = *v265;
              v341 = *(v265 + 16);
              v340 = v269;
              do
              {
                v270 = v261;
                v271 = *v261;
                *(v265 + 16) = *(v261 + 16);
                *v265 = v271;
                if (v332 < v260)
                {
                  break;
                }

                v272 = (2 * v260) | 1;
                v261 = a1 + 24 * v272;
                v273 = 2 * v260 + 2;
                if (v273 < v14)
                {
                  v274 = *a3;
                  v275 = *v261;
                  v339 = *(v261 + 16);
                  v338 = v275;
                  v276 = *(v261 + 24);
                  v337 = *(v261 + 40);
                  v336 = v276;
                  if (v274(&v338, &v336))
                  {
                    v261 += 24;
                    v272 = v273;
                  }
                }

                v277 = *a3;
                v278 = *v261;
                v339 = *(v261 + 16);
                v338 = v278;
                v336 = v340;
                v337 = v341;
                v265 = v270;
                v260 = v272;
              }

              while (!v277(&v338, &v336));
              v279 = v340;
              *(v270 + 16) = v341;
              *v270 = v279;
              a2 = v333;
            }
          }

          v258 = v259 - 1;
        }

        while (v259);
        v280 = 0xAAAAAAAAAAAAAAABLL * (v13 >> 3);
        do
        {
          v281 = 0;
          v335 = *(a1 + 16);
          v334 = *a1;
          v282 = a1;
          do
          {
            v283 = v282 + 24 * v281;
            v284 = (v283 + 24);
            v285 = (2 * v281) | 1;
            v286 = 2 * v281 + 2;
            if (v286 < v280)
            {
              v287 = *a3;
              v288 = *v284;
              v341 = *(v283 + 40);
              v340 = v288;
              v289 = (v283 + 48);
              v290 = *(v283 + 48);
              v339 = *(v283 + 64);
              v338 = v290;
              if (v287(&v340, &v338))
              {
                v284 = v289;
                v285 = v286;
              }
            }

            v291 = *v284;
            *(v282 + 16) = v284[1].n128_u32[0];
            *v282 = v291;
            v282 = v284;
            v281 = v285;
          }

          while (v285 <= (v280 - 2) / 2);
          v292 = &a2[-2].n128_i8[8];
          if (v284 == &a2[-2].n128_i8[8])
          {
            v294 = (a2 - 24);
            v284[1].n128_u32[0] = v335;
            *v284 = v334;
          }

          else
          {
            v293 = *v292;
            v284[1].n128_u32[0] = a2[-1].n128_u32[2];
            *v284 = v293;
            a2[-1].n128_u32[2] = v335;
            v294 = (a2 - 24);
            *v292 = v334;
            v295 = &v284[1].n128_i64[1] - a1;
            if (v295 >= 25)
            {
              v296 = (-2 - 0x5555555555555555 * (v295 >> 3)) >> 1;
              v297 = a1 + 24 * v296;
              v298 = *a3;
              v299 = *v297;
              v341 = *(v297 + 16);
              v340 = v299;
              v300 = *v284;
              v339 = v284[1].n128_u64[0];
              v338 = v300;
              if (v298(&v340, &v338))
              {
                v301 = *v284;
                v341 = v284[1].n128_u64[0];
                v340 = v301;
                do
                {
                  v302 = v297;
                  v303 = *v297;
                  v284[1].n128_u32[0] = *(v297 + 16);
                  *v284 = v303;
                  if (!v296)
                  {
                    break;
                  }

                  v296 = (v296 - 1) >> 1;
                  v297 = a1 + 24 * v296;
                  v304 = *a3;
                  v305 = *v297;
                  v339 = *(v297 + 16);
                  v338 = v305;
                  v336 = v340;
                  v337 = v341;
                  v284 = v302;
                }

                while (v304(&v338, &v336));
                v306 = v340;
                v302[1].n128_u32[0] = v341;
                *v302 = v306;
              }
            }
          }

          v307 = v280-- <= 2;
          a2 = v294;
        }

        while (!v307);
      }

      return;
    }

    v15 = v14 >> 1;
    v16 = a1 + 24 * (v14 >> 1);
    v17 = *a3;
    if (v13 >= 0xC01)
    {
      v18 = *v16;
      v341 = *(v16 + 16);
      v340 = v18;
      v19 = *a1;
      v339 = *(a1 + 16);
      v338 = v19;
      v20 = v17(&v340, &v338);
      v21 = *a3;
      if (v20)
      {
        v22 = *v9;
        v341 = v9[1].n128_u64[0];
        v340 = v22;
        v23 = *v16;
        v339 = *(v16 + 16);
        v338 = v23;
        if (v21(&v340, &v338))
        {
          v24 = *a1;
          v341 = *(a1 + 16);
          v340 = v24;
          v25 = *v9;
          *(a1 + 16) = v9[1].n128_u32[0];
          *a1 = v25;
          goto LABEL_26;
        }

        v56 = *a1;
        v341 = *(a1 + 16);
        v340 = v56;
        v57 = *v16;
        *(a1 + 16) = *(v16 + 16);
        *a1 = v57;
        v58 = v340;
        *(v16 + 16) = v341;
        *v16 = v58;
        v59 = *a3;
        v60 = *v9;
        v341 = v9[1].n128_u64[0];
        v340 = v60;
        v61 = *v16;
        v339 = *(v16 + 16);
        v338 = v61;
        if (v59(&v340, &v338))
        {
          v62 = *v16;
          v341 = *(v16 + 16);
          v340 = v62;
          v63 = *v9;
          *(v16 + 16) = v9[1].n128_u32[0];
          *v16 = v63;
LABEL_26:
          v64 = v340;
          v9[1].n128_u32[0] = v341;
          *v9 = v64;
        }
      }

      else
      {
        v34 = *v9;
        v341 = v9[1].n128_u64[0];
        v340 = v34;
        v35 = *v16;
        v339 = *(v16 + 16);
        v338 = v35;
        if (v21(&v340, &v338))
        {
          v36 = *v16;
          v341 = *(v16 + 16);
          v340 = v36;
          v37 = *v9;
          *(v16 + 16) = v9[1].n128_u32[0];
          *v16 = v37;
          v38 = v340;
          v9[1].n128_u32[0] = v341;
          *v9 = v38;
          v39 = *a3;
          v40 = *v16;
          v341 = *(v16 + 16);
          v340 = v40;
          v41 = *a1;
          v339 = *(a1 + 16);
          v338 = v41;
          if (v39(&v340, &v338))
          {
            v42 = *a1;
            v341 = *(a1 + 16);
            v340 = v42;
            v43 = *v16;
            *(a1 + 16) = *(v16 + 16);
            *a1 = v43;
            v44 = v340;
            *(v16 + 16) = v341;
            *v16 = v44;
          }
        }
      }

      v65 = a1 + 24 * v15;
      v66 = v65 - 24;
      v67 = *a3;
      v68 = *(v65 - 24);
      v341 = *(v65 - 8);
      v340 = v68;
      v338 = *(a1 + 24);
      v339 = *(a1 + 40);
      v69 = v67(&v340, &v338);
      v70 = *a3;
      if (v69)
      {
        v71 = *v10;
        v341 = v10[1].n128_u64[0];
        v340 = v71;
        v72 = *v66;
        v339 = *(v66 + 16);
        v338 = v72;
        if (v70(&v340, &v338))
        {
          v73 = *(a1 + 24);
          v340 = v73;
          v341 = *(a1 + 40);
          v74 = v341;
          v75 = v10[1].n128_u32[0];
          *(a1 + 24) = *v10;
          *(a1 + 40) = v75;
          v10[1].n128_u32[0] = v74;
          goto LABEL_38;
        }

        v340 = *(a1 + 24);
        v95 = v340;
        v341 = *(a1 + 40);
        v96 = v341;
        v97 = *(v66 + 16);
        *(a1 + 24) = *v66;
        *(a1 + 40) = v97;
        *(v66 + 16) = v96;
        *v66 = v95;
        v98 = *a3;
        v99 = *v10;
        v341 = v10[1].n128_u64[0];
        v340 = v99;
        v100 = *v66;
        v339 = *(v66 + 16);
        v338 = v100;
        if (v98(&v340, &v338))
        {
          v101 = *v66;
          v341 = *(v66 + 16);
          v340 = v101;
          v102 = *v10;
          *(v66 + 16) = v10[1].n128_u32[0];
          *v66 = v102;
          v73 = v340;
          v10[1].n128_u32[0] = v341;
LABEL_38:
          *v10 = v73;
        }
      }

      else
      {
        v76 = *v10;
        v341 = v10[1].n128_u64[0];
        v340 = v76;
        v77 = *v66;
        v339 = *(v66 + 16);
        v338 = v77;
        if (v70(&v340, &v338))
        {
          v78 = *v66;
          v341 = *(v66 + 16);
          v340 = v78;
          v79 = *v10;
          *(v66 + 16) = v10[1].n128_u32[0];
          *v66 = v79;
          v80 = v340;
          v10[1].n128_u32[0] = v341;
          *v10 = v80;
          v81 = *a3;
          v82 = *v66;
          v341 = *(v66 + 16);
          v340 = v82;
          v338 = *(a1 + 24);
          v339 = *(a1 + 40);
          if (v81(&v340, &v338))
          {
            v340 = *(a1 + 24);
            v83 = v340;
            v341 = *(a1 + 40);
            v84 = v341;
            v85 = *(v66 + 16);
            *(a1 + 24) = *v66;
            *(a1 + 40) = v85;
            *(v66 + 16) = v84;
            *v66 = v83;
          }
        }
      }

      v103 = a1 + 24 * v15;
      v104 = *a3;
      v105 = *(v103 + 24);
      v341 = *(v103 + 40);
      v340 = v105;
      v338 = *(a1 + 48);
      v339 = *(a1 + 64);
      v106 = v104(&v340, &v338);
      v107 = *a3;
      if (v106)
      {
        v108 = *v11;
        v341 = *(v11 + 2);
        v340 = v108;
        v109 = *(v103 + 24);
        v339 = *(v103 + 40);
        v338 = v109;
        if (v107(&v340, &v338))
        {
          v110 = *(a1 + 48);
          v340 = v110;
          v341 = *(a1 + 64);
          v111 = v341;
          v112 = *(v11 + 4);
          *(a1 + 48) = *v11;
          *(a1 + 64) = v112;
          *(v11 + 4) = v111;
          goto LABEL_47;
        }

        v340 = *(a1 + 48);
        v123 = v340;
        v341 = *(a1 + 64);
        v124 = v341;
        v125 = *(v103 + 40);
        *(a1 + 48) = *(v103 + 24);
        *(a1 + 64) = v125;
        *(v103 + 40) = v124;
        *(v103 + 24) = v123;
        v126 = *a3;
        v127 = *v11;
        v341 = *(v11 + 2);
        v340 = v127;
        v128 = *(v103 + 24);
        v339 = *(v103 + 40);
        v338 = v128;
        if (v126(&v340, &v338))
        {
          v129 = *(v103 + 24);
          v341 = *(v103 + 40);
          v340 = v129;
          v130 = *v11;
          *(v103 + 40) = *(v11 + 4);
          *(v103 + 24) = v130;
          v110 = v340;
          *(v11 + 4) = v341;
LABEL_47:
          *v11 = v110;
        }
      }

      else
      {
        v113 = *v11;
        v341 = *(v11 + 2);
        v340 = v113;
        v114 = *(v103 + 24);
        v339 = *(v103 + 40);
        v338 = v114;
        if (v107(&v340, &v338))
        {
          v115 = *(v103 + 24);
          v341 = *(v103 + 40);
          v340 = v115;
          v116 = *v11;
          *(v103 + 40) = *(v11 + 4);
          *(v103 + 24) = v116;
          v117 = v340;
          *(v11 + 4) = v341;
          *v11 = v117;
          v118 = *a3;
          v119 = *(v103 + 24);
          v341 = *(v103 + 40);
          v340 = v119;
          v338 = *(a1 + 48);
          v339 = *(a1 + 64);
          if (v118(&v340, &v338))
          {
            v340 = *(a1 + 48);
            v120 = v340;
            v341 = *(a1 + 64);
            v121 = v341;
            v122 = *(v103 + 40);
            *(a1 + 48) = *(v103 + 24);
            *(a1 + 64) = v122;
            *(v103 + 40) = v121;
            *(v103 + 24) = v120;
          }
        }
      }

      v131 = *a3;
      v132 = *v16;
      v341 = *(v16 + 16);
      v340 = v132;
      v133 = *v66;
      v339 = *(v66 + 16);
      v338 = v133;
      v134 = v131(&v340, &v338);
      v135 = *a3;
      if (v134)
      {
        v136 = *(v103 + 24);
        v341 = *(v103 + 40);
        v340 = v136;
        v137 = *v16;
        v339 = *(v16 + 16);
        v338 = v137;
        if (v135(&v340, &v338))
        {
          v138 = *v66;
          v341 = *(v66 + 16);
          v340 = v138;
          *v66 = *(v103 + 24);
          *(v66 + 16) = *(v103 + 40);
          goto LABEL_56;
        }

        v148 = *v66;
        v341 = *(v66 + 16);
        v340 = v148;
        *v66 = *v16;
        *(v66 + 16) = *(v16 + 16);
        v149 = v340;
        *(v16 + 16) = v341;
        *v16 = v149;
        v150 = *a3;
        v151 = *(v103 + 24);
        v341 = *(v103 + 40);
        v340 = v151;
        v152 = *v16;
        v339 = *(v16 + 16);
        v338 = v152;
        if (v150(&v340, &v338))
        {
          v153 = *v16;
          v341 = *(v16 + 16);
          v340 = v153;
          *v16 = *(v103 + 24);
          *(v16 + 16) = *(v103 + 40);
LABEL_56:
          v154 = v340;
          *(v103 + 40) = v341;
          *(v103 + 24) = v154;
        }
      }

      else
      {
        v139 = *(v103 + 24);
        v341 = *(v103 + 40);
        v340 = v139;
        v140 = *v16;
        v339 = *(v16 + 16);
        v338 = v140;
        if (v135(&v340, &v338))
        {
          v141 = *v16;
          v341 = *(v16 + 16);
          v340 = v141;
          *v16 = *(v103 + 24);
          *(v16 + 16) = *(v103 + 40);
          v142 = v340;
          *(v103 + 40) = v341;
          *(v103 + 24) = v142;
          v143 = *a3;
          v144 = *v16;
          v341 = *(v16 + 16);
          v340 = v144;
          v145 = *v66;
          v339 = *(v66 + 16);
          v338 = v145;
          if (v143(&v340, &v338))
          {
            v146 = *v66;
            v341 = *(v66 + 16);
            v340 = v146;
            *v66 = *v16;
            *(v66 + 16) = *(v16 + 16);
            v147 = v340;
            *(v16 + 16) = v341;
            *v16 = v147;
          }
        }
      }

      v155 = *a1;
      v341 = *(a1 + 16);
      v340 = v155;
      v156 = *v16;
      *(a1 + 16) = *(v16 + 16);
      *a1 = v156;
      v157 = v340;
      *(v16 + 16) = v341;
      *v16 = v157;
      goto LABEL_58;
    }

    v26 = *a1;
    v341 = *(a1 + 16);
    v340 = v26;
    v27 = *v16;
    v339 = *(v16 + 16);
    v338 = v27;
    v28 = v17(&v340, &v338);
    v29 = *a3;
    if (!v28)
    {
      v45 = *v9;
      v341 = v9[1].n128_u64[0];
      v340 = v45;
      v46 = *a1;
      v339 = *(a1 + 16);
      v338 = v46;
      if (v29(&v340, &v338))
      {
        v47 = *a1;
        v341 = *(a1 + 16);
        v340 = v47;
        v48 = *v9;
        *(a1 + 16) = v9[1].n128_u32[0];
        *a1 = v48;
        v49 = v340;
        v9[1].n128_u32[0] = v341;
        *v9 = v49;
        v50 = *a3;
        v51 = *a1;
        v341 = *(a1 + 16);
        v340 = v51;
        v52 = *v16;
        v339 = *(v16 + 16);
        v338 = v52;
        if (v50(&v340, &v338))
        {
          v53 = *v16;
          v341 = *(v16 + 16);
          v340 = v53;
          v54 = *a1;
          *(v16 + 16) = *(a1 + 16);
          *v16 = v54;
          v55 = v340;
          *(a1 + 16) = v341;
          *a1 = v55;
        }
      }

      goto LABEL_58;
    }

    v30 = *v9;
    v341 = v9[1].n128_u64[0];
    v340 = v30;
    v31 = *a1;
    v339 = *(a1 + 16);
    v338 = v31;
    if (v29(&v340, &v338))
    {
      v32 = *v16;
      v341 = *(v16 + 16);
      v340 = v32;
      v33 = *v9;
      *(v16 + 16) = v9[1].n128_u32[0];
      *v16 = v33;
    }

    else
    {
      v86 = *v16;
      v341 = *(v16 + 16);
      v340 = v86;
      v87 = *a1;
      *(v16 + 16) = *(a1 + 16);
      *v16 = v87;
      v88 = v340;
      *(a1 + 16) = v341;
      *a1 = v88;
      v89 = *a3;
      v90 = *v9;
      v341 = v9[1].n128_u64[0];
      v340 = v90;
      v91 = *a1;
      v339 = *(a1 + 16);
      v338 = v91;
      if (!v89(&v340, &v338))
      {
        goto LABEL_58;
      }

      v92 = *a1;
      v341 = *(a1 + 16);
      v340 = v92;
      v93 = *v9;
      *(a1 + 16) = v9[1].n128_u32[0];
      *a1 = v93;
    }

    v94 = v340;
    v9[1].n128_u32[0] = v341;
    *v9 = v94;
LABEL_58:
    --a4;
    if ((a5 & 1) != 0 || (v158 = *a3, v159 = *(a1 - 24), v341 = *(a1 - 8), v340 = v159, v160 = *a1, v339 = *(a1 + 16), v338 = v160, v158(&v340, &v338)))
    {
      v161 = 0;
      v162 = *a1;
      v339 = *(a1 + 16);
      v338 = v162;
      do
      {
        v163 = *a3;
        v164 = *(a1 + v161 + 24);
        v341 = *(a1 + v161 + 40);
        v340 = v164;
        v336 = v338;
        v337 = v339;
        v161 += 24;
      }

      while (v163(&v340, &v336));
      v165 = a1 + v161;
      v166 = v333;
      v243 = v161 == 24;
      a2 = v333;
      if (v243)
      {
        v171 = v333;
        while (v165 < v171)
        {
          v172 = *a3;
          v167 = (v171 - 24);
          v173 = *(v171 - 24);
          v341 = v171[-1].n128_u64[1];
          v340 = v173;
          v336 = v338;
          v337 = v339;
          v174 = v172(&v340, &v336);
          v171 = v167;
          if (v174)
          {
            goto LABEL_70;
          }
        }

        v167 = v171;
      }

      else
      {
        do
        {
          v167 = (v166 - 24);
          v168 = *a3;
          v169 = *(v166 - 24);
          v341 = v166[-1].n128_u64[1];
          v340 = v169;
          v336 = v338;
          v337 = v339;
          v170 = v168(&v340, &v336);
          v166 = v167;
        }

        while (!v170);
      }

LABEL_70:
      if (v165 >= v167)
      {
        v186 = (v165 - 24);
      }

      else
      {
        v175 = v165;
        v176 = v167;
        do
        {
          v177 = *v175;
          v341 = *(v175 + 16);
          v340 = v177;
          v178 = *v176;
          *(v175 + 16) = v176[1].n128_u32[0];
          *v175 = v178;
          v179 = v340;
          v176[1].n128_u32[0] = v341;
          *v176 = v179;
          do
          {
            v180 = *(v175 + 24);
            v181 = *(v175 + 40);
            v175 += 24;
            v182 = *a3;
            v340 = v180;
            v341 = v181;
            v336 = v338;
            v337 = v339;
          }

          while (v182(&v340, &v336));
          do
          {
            v183 = *(v176 - 24);
            v184 = v176[-1].n128_u64[1];
            v176 = (v176 - 24);
            v185 = *a3;
            v341 = v184;
            v340 = v183;
            v336 = v338;
            v337 = v339;
          }

          while (!v185(&v340, &v336));
        }

        while (v175 < v176);
        v186 = (v175 - 24);
        a2 = v333;
      }

      if (v186 != a1)
      {
        v187 = *v186;
        *(a1 + 16) = v186[1].n128_u32[0];
        *a1 = v187;
      }

      v188 = v338;
      v186[1].n128_u32[0] = v339;
      *v186 = v188;
      if (v165 < v167)
      {
        goto LABEL_83;
      }

      v189 = sub_19B5DB09C(a1, v186, a3);
      v12 = &v186[1].n128_i8[8];
      if (sub_19B5DB09C(&v186[1].n128_i64[1], a2, a3))
      {
        a2 = v186;
        if (!v189)
        {
          goto LABEL_1;
        }

        return;
      }

      if (!v189)
      {
LABEL_83:
        sub_19B5D95D4(a1, v186, a3, a4, a5 & 1);
        a5 = 0;
        v12 = &v186[1].n128_i8[8];
      }
    }

    else
    {
      v190 = *a1;
      v339 = *(a1 + 16);
      v338 = v190;
      v191 = *a3;
      v192 = *a1;
      v341 = *(a1 + 16);
      v340 = v192;
      v193 = *v9;
      v337 = v9[1].n128_u64[0];
      v336 = v193;
      v194 = v191(&v340, &v336);
      v195 = a1;
      a2 = v333;
      if (v194)
      {
        do
        {
          v12 = (v195 + 24);
          v196 = *a3;
          v340 = v338;
          v341 = v339;
          v336 = *(v195 + 24);
          v337 = *(v195 + 40);
          v197 = v196(&v340, &v336);
          v195 = v12;
        }

        while (!v197);
      }

      else
      {
        v198 = a1 + 24;
        do
        {
          v12 = v198;
          if (v198 >= v333)
          {
            break;
          }

          v199 = *a3;
          v340 = v338;
          v341 = v339;
          v200 = *v12;
          v337 = *(v12 + 2);
          v336 = v200;
          v201 = v199(&v340, &v336);
          v198 = (v12 + 24);
        }

        while (!v201);
      }

      v202 = v333;
      if (v12 < v333)
      {
        v203 = v333;
        do
        {
          v202 = (v203 - 24);
          v204 = *a3;
          v340 = v338;
          v341 = v339;
          v205 = *(v203 - 24);
          v337 = v203[-1].n128_u64[1];
          v336 = v205;
          v206 = v204(&v340, &v336);
          v203 = v202;
        }

        while (v206);
      }

      while (v12 < v202)
      {
        v207 = *v12;
        v341 = *(v12 + 2);
        v340 = v207;
        v208 = *v202;
        *(v12 + 4) = v202[1].n128_u32[0];
        *v12 = v208;
        v209 = v340;
        v202[1].n128_u32[0] = v341;
        *v202 = v209;
        do
        {
          v210 = *(v12 + 24);
          v211 = *(v12 + 5);
          v12 += 24;
          v212 = *a3;
          v340 = v338;
          v341 = v339;
          v336 = v210;
          v337 = v211;
        }

        while (!v212(&v340, &v336));
        do
        {
          v340 = v338;
          v341 = v339;
          v213 = *(v202 - 24);
          v214 = v202[-1].n128_u64[1];
          v202 = (v202 - 24);
          v215 = *a3;
          v337 = v214;
          v336 = v213;
        }

        while (v215(&v340, &v336));
      }

      v216 = v12 - 24;
      if (v12 - 24 != a1)
      {
        v217 = *v216;
        *(a1 + 16) = *(v12 - 2);
        *a1 = v217;
      }

      a5 = 0;
      v218 = v338;
      *(v12 - 2) = v339;
      *v216 = v218;
    }
  }

  if (v14 != 3)
  {
    if (v14 == 4)
    {
      sub_19B5DADB8(a1, (a1 + 24), (a1 + 48), v9, a3);
      return;
    }

    if (v14 == 5)
    {
      sub_19B5DADB8(a1, (a1 + 24), (a1 + 48), (a1 + 72), a3);
      v219 = *a3;
      v220 = *(a2 - 24);
      v341 = a2[-1].n128_u64[1];
      v340 = v220;
      v338 = *(a1 + 72);
      v339 = *(a1 + 88);
      if (v219(&v340, &v338))
      {
        v340 = *(a1 + 72);
        v221 = v340;
        v341 = *(a1 + 88);
        v222 = v341;
        v223 = v9[1].n128_u32[0];
        *(a1 + 72) = *v9;
        *(a1 + 88) = v223;
        v9[1].n128_u32[0] = v222;
        *v9 = v221;
        v224 = *a3;
        v340 = *(a1 + 72);
        v341 = *(a1 + 88);
        v338 = *(a1 + 48);
        v339 = *(a1 + 64);
        if (v224(&v340, &v338))
        {
          v225 = *(a1 + 64);
          v226 = *(a1 + 48);
          *(a1 + 48) = *(a1 + 72);
          *(a1 + 64) = *(a1 + 88);
          *(a1 + 72) = v226;
          *(a1 + 88) = v225;
          v227 = *a3;
          v340 = *(a1 + 48);
          v341 = *(a1 + 64);
          v338 = *(a1 + 24);
          v339 = *(a1 + 40);
          if (v227(&v340, &v338))
          {
            v228 = *(a1 + 40);
            v229 = *(a1 + 24);
            *(a1 + 24) = *(a1 + 48);
            *(a1 + 40) = *(a1 + 64);
            *(a1 + 48) = v229;
            *(a1 + 64) = v228;
LABEL_173:
            v323 = *a3;
            v340 = *(a1 + 24);
            v341 = *(a1 + 40);
            v324 = *a1;
            v339 = *(a1 + 16);
            v338 = v324;
            if (v323(&v340, &v338))
            {
              v325 = *a1;
              v341 = *(a1 + 16);
              v340 = v325;
              *a1 = *(a1 + 24);
              *(a1 + 16) = *(a1 + 40);
              *(a1 + 24) = v340;
              *(a1 + 40) = v341;
            }
          }
        }
      }

      return;
    }

    goto LABEL_9;
  }

  v234 = *a3;
  v340 = *(a1 + 24);
  v341 = *(a1 + 40);
  v235 = *a1;
  v339 = *(a1 + 16);
  v338 = v235;
  v236 = v234(&v340, &v338);
  v237 = *a3;
  if (v236)
  {
    v238 = *v9;
    v341 = v9[1].n128_u64[0];
    v340 = v238;
    v338 = *(a1 + 24);
    v339 = *(a1 + 40);
    if (v237(&v340, &v338))
    {
      goto LABEL_111;
    }

    v326 = *a1;
    v341 = *(a1 + 16);
    v340 = v326;
    *a1 = *(a1 + 24);
    *(a1 + 16) = *(a1 + 40);
    *(a1 + 24) = v340;
    *(a1 + 40) = v341;
    v327 = *a3;
    v328 = *v9;
    v341 = v9[1].n128_u64[0];
    v340 = v328;
    v338 = *(a1 + 24);
    v339 = *(a1 + 40);
    if (!v327(&v340, &v338))
    {
      return;
    }

    v241 = *(a1 + 24);
    v340 = v241;
    v341 = *(a1 + 40);
    v329 = v341;
    v330 = v9[1].n128_u32[0];
    *(a1 + 24) = *v9;
    *(a1 + 40) = v330;
    v9[1].n128_u32[0] = v329;
LABEL_112:
    *v9 = v241;
    return;
  }

  v319 = *v9;
  v341 = v9[1].n128_u64[0];
  v340 = v319;
  v338 = *(a1 + 24);
  v339 = *(a1 + 40);
  if (v237(&v340, &v338))
  {
    v340 = *(a1 + 24);
    v320 = v340;
    v341 = *(a1 + 40);
    v321 = v341;
    v322 = v9[1].n128_u32[0];
    *(a1 + 24) = *v9;
    *(a1 + 40) = v322;
    v9[1].n128_u32[0] = v321;
    *v9 = v320;
    goto LABEL_173;
  }
}

__n128 sub_19B5DADB8(__n128 *a1, __n128 *a2, __n128 *a3, __n128 *a4, unsigned int (**a5)(__n128 *, __n128 *))
{
  v10 = *a5;
  v42 = *a2;
  v43 = a2[1].n128_u64[0];
  v40 = *a1;
  v41 = a1[1].n128_u64[0];
  v11 = v10(&v42, &v40);
  v12 = *a5;
  if (v11)
  {
    v42 = *a3;
    v43 = a3[1].n128_u64[0];
    v40 = *a2;
    v41 = a2[1].n128_u64[0];
    if (v12(&v42, &v40))
    {
      v13 = *a1;
      v14 = a1[1].n128_u64[0];
      v15 = a3[1].n128_u32[0];
      *a1 = *a3;
      a1[1].n128_u32[0] = v15;
LABEL_9:
      a3[1].n128_u32[0] = v14;
      *a3 = v13;
      goto LABEL_10;
    }

    v23 = *a1;
    v24 = a1[1].n128_u64[0];
    v25 = a2[1].n128_u32[0];
    *a1 = *a2;
    a1[1].n128_u32[0] = v25;
    a2[1].n128_u32[0] = v24;
    *a2 = v23;
    v26 = *a5;
    v42 = *a3;
    v43 = a3[1].n128_u64[0];
    v40 = *a2;
    v41 = a2[1].n128_u64[0];
    if (v26(&v42, &v40))
    {
      v13 = *a2;
      v14 = a2[1].n128_u64[0];
      v27 = a3[1].n128_u32[0];
      *a2 = *a3;
      a2[1].n128_u32[0] = v27;
      goto LABEL_9;
    }
  }

  else
  {
    v42 = *a3;
    v43 = a3[1].n128_u64[0];
    v40 = *a2;
    v41 = a2[1].n128_u64[0];
    if (v12(&v42, &v40))
    {
      v16 = *a2;
      v17 = a2[1].n128_u64[0];
      v18 = a3[1].n128_u32[0];
      *a2 = *a3;
      a2[1].n128_u32[0] = v18;
      a3[1].n128_u32[0] = v17;
      *a3 = v16;
      v19 = *a5;
      v42 = *a2;
      v43 = a2[1].n128_u64[0];
      v40 = *a1;
      v41 = a1[1].n128_u64[0];
      if (v19(&v42, &v40))
      {
        v20 = *a1;
        v21 = a1[1].n128_u64[0];
        v22 = a2[1].n128_u32[0];
        *a1 = *a2;
        a1[1].n128_u32[0] = v22;
        a2[1].n128_u32[0] = v21;
        *a2 = v20;
      }
    }
  }

LABEL_10:
  v28 = *a5;
  v42 = *a4;
  v43 = a4[1].n128_u64[0];
  v40 = *a3;
  v41 = a3[1].n128_u64[0];
  if (v28(&v42, &v40))
  {
    v30 = *a3;
    v31 = a3[1].n128_u64[0];
    v32 = a4[1].n128_u32[0];
    *a3 = *a4;
    a3[1].n128_u32[0] = v32;
    a4[1].n128_u32[0] = v31;
    *a4 = v30;
    v33 = *a5;
    v42 = *a3;
    v43 = a3[1].n128_u64[0];
    v40 = *a2;
    v41 = a2[1].n128_u64[0];
    if (v33(&v42, &v40))
    {
      v34 = *a2;
      v35 = a2[1].n128_u64[0];
      v36 = a3[1].n128_u32[0];
      *a2 = *a3;
      a2[1].n128_u32[0] = v36;
      a3[1].n128_u32[0] = v35;
      *a3 = v34;
      v37 = *a5;
      v42 = *a2;
      v43 = a2[1].n128_u64[0];
      v40 = *a1;
      v41 = a1[1].n128_u64[0];
      if (v37(&v42, &v40))
      {
        result = *a1;
        v38 = a1[1].n128_u64[0];
        v39 = a2[1].n128_u32[0];
        *a1 = *a2;
        a1[1].n128_u32[0] = v39;
        a2[1].n128_u32[0] = v38;
        *a2 = result;
      }
    }
  }

  return result;
}

BOOL sub_19B5DB09C(uint64_t a1, __n128 *a2, unsigned int (**a3)(__n128 *, __n128 *))
{
  v6 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        v23 = (a2 - 24);
        v24 = *a3;
        v68 = *(a1 + 24);
        v69 = *(a1 + 40);
        v66 = *a1;
        v67 = *(a1 + 16);
        v25 = v24(&v68, &v66);
        v26 = *a3;
        if (v25)
        {
          v68 = *v23;
          v69 = v23[1].n128_i64[0];
          v66 = *(a1 + 24);
          v67 = *(a1 + 40);
          if (v26(&v68, &v66))
          {
            v27 = *a1;
            v28 = *(a1 + 16);
            v29 = v23[1].n128_i32[0];
            *a1 = *v23;
            *(a1 + 16) = v29;
          }

          else
          {
            v47 = *(a1 + 16);
            v48 = *a1;
            *a1 = *(a1 + 24);
            *(a1 + 16) = *(a1 + 40);
            *(a1 + 24) = v48;
            *(a1 + 40) = v47;
            v49 = *a3;
            v68 = *v23;
            v69 = v23[1].n128_i64[0];
            v66 = *(a1 + 24);
            v67 = *(a1 + 40);
            if (!v49(&v68, &v66))
            {
              return 1;
            }

            v27 = *(a1 + 24);
            v28 = *(a1 + 40);
            v50 = v23[1].n128_i32[0];
            *(a1 + 24) = *v23;
            *(a1 + 40) = v50;
          }

          v23[1].n128_u32[0] = v28;
          *v23 = v27;
          return 1;
        }

        v68 = *v23;
        v69 = v23[1].n128_i64[0];
        v66 = *(a1 + 24);
        v67 = *(a1 + 40);
        if (!v26(&v68, &v66))
        {
          return 1;
        }

        v36 = *(a1 + 24);
        v37 = *(a1 + 40);
        v38 = v23[1].n128_i32[0];
        *(a1 + 24) = *v23;
        *(a1 + 40) = v38;
        v23[1].n128_u32[0] = v37;
        *v23 = v36;
        break;
      case 4:
        sub_19B5DADB8(a1, (a1 + 24), (a1 + 48), (a2 - 24), a3);
        return 1;
      case 5:
        sub_19B5DADB8(a1, (a1 + 24), (a1 + 48), (a1 + 72), a3);
        v12 = *a3;
        v68 = *(a2 - 24);
        v69 = a2[-1].n128_i64[1];
        v66 = *(a1 + 72);
        v67 = *(a1 + 88);
        if (!v12(&v68, &v66))
        {
          return 1;
        }

        v13 = &a2[-2].n128_i64[1];
        v14 = *(a1 + 72);
        v15 = *(a1 + 88);
        v16 = a2[-1].n128_i32[2];
        *(a1 + 72) = *(a2 - 24);
        *(a1 + 88) = v16;
        *(v13 + 4) = v15;
        *v13 = v14;
        v17 = *a3;
        v68 = *(a1 + 72);
        v69 = *(a1 + 88);
        v66 = *(a1 + 48);
        v67 = *(a1 + 64);
        if (!v17(&v68, &v66))
        {
          return 1;
        }

        v18 = *(a1 + 64);
        v19 = *(a1 + 48);
        *(a1 + 48) = *(a1 + 72);
        *(a1 + 64) = *(a1 + 88);
        *(a1 + 72) = v19;
        *(a1 + 88) = v18;
        v20 = *a3;
        v68 = *(a1 + 48);
        v69 = *(a1 + 64);
        v66 = *(a1 + 24);
        v67 = *(a1 + 40);
        if (!v20(&v68, &v66))
        {
          return 1;
        }

        v21 = *(a1 + 40);
        v22 = *(a1 + 24);
        *(a1 + 24) = *(a1 + 48);
        *(a1 + 40) = *(a1 + 64);
        *(a1 + 48) = v22;
        *(a1 + 64) = v21;
        break;
      default:
        goto LABEL_16;
    }

    v39 = *a3;
    v68 = *(a1 + 24);
    v69 = *(a1 + 40);
    v66 = *a1;
    v67 = *(a1 + 16);
    if (v39(&v68, &v66))
    {
      v40 = *(a1 + 16);
      v41 = *a1;
      *a1 = *(a1 + 24);
      *(a1 + 16) = *(a1 + 40);
      *(a1 + 24) = v41;
      *(a1 + 40) = v40;
    }

    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    v7 = *a3;
    v68 = *(a2 - 24);
    v69 = a2[-1].n128_i64[1];
    v66 = *a1;
    v67 = *(a1 + 16);
    if (v7(&v68, &v66))
    {
      v8 = (a2 - 24);
      v9 = *a1;
      v10 = *(a1 + 16);
      v11 = a2[-1].n128_i32[2];
      *a1 = *(a2 - 24);
      *(a1 + 16) = v11;
      v8[1].n128_u32[0] = v10;
      *v8 = v9;
    }

    return 1;
  }

LABEL_16:
  v30 = (a1 + 48);
  v31 = *a3;
  v68 = *(a1 + 24);
  v69 = *(a1 + 40);
  v66 = *a1;
  v67 = *(a1 + 16);
  v32 = v31(&v68, &v66);
  v33 = *a3;
  if (v32)
  {
    v68 = *v30;
    v69 = *(a1 + 64);
    v66 = *(a1 + 24);
    v67 = *(a1 + 40);
    if (v33(&v68, &v66))
    {
      v34 = *(a1 + 16);
      v35 = *a1;
      *a1 = *v30;
      *(a1 + 16) = *(a1 + 64);
    }

    else
    {
      v51 = *(a1 + 16);
      v52 = *a1;
      *a1 = *(a1 + 24);
      *(a1 + 16) = *(a1 + 40);
      *(a1 + 24) = v52;
      *(a1 + 40) = v51;
      v53 = *a3;
      v68 = *v30;
      v69 = *(a1 + 64);
      v66 = *(a1 + 24);
      v67 = *(a1 + 40);
      if (!v53(&v68, &v66))
      {
        goto LABEL_33;
      }

      v34 = *(a1 + 40);
      v35 = *(a1 + 24);
      *(a1 + 24) = *v30;
      *(a1 + 40) = *(a1 + 64);
    }

    *v30 = v35;
    *(a1 + 64) = v34;
  }

  else
  {
    v68 = *v30;
    v69 = *(a1 + 64);
    v66 = *(a1 + 24);
    v67 = *(a1 + 40);
    if (v33(&v68, &v66))
    {
      v42 = *(a1 + 40);
      v43 = *(a1 + 24);
      *(a1 + 24) = *v30;
      *(a1 + 40) = *(a1 + 64);
      *v30 = v43;
      *(a1 + 64) = v42;
      v44 = *a3;
      v68 = *(a1 + 24);
      v69 = *(a1 + 40);
      v66 = *a1;
      v67 = *(a1 + 16);
      if (v44(&v68, &v66))
      {
        v45 = *(a1 + 16);
        v46 = *a1;
        *a1 = *(a1 + 24);
        *(a1 + 16) = *(a1 + 40);
        *(a1 + 24) = v46;
        *(a1 + 40) = v45;
      }
    }
  }

LABEL_33:
  v54 = (a1 + 72);
  if ((a1 + 72) == a2)
  {
    return 1;
  }

  v55 = 0;
  v56 = 0;
  while (1)
  {
    v57 = *a3;
    v68 = *v54;
    v69 = v54[1].n128_i64[0];
    v58 = *v30;
    v67 = v30[1].n128_i64[0];
    v66 = v58;
    if (v57(&v68, &v66))
    {
      v68 = *v54;
      v69 = v54[1].n128_i64[0];
      v59 = v55;
      while (1)
      {
        v60 = a1 + v59;
        *(v60 + 72) = *(a1 + v59 + 48);
        *(v60 + 88) = *(a1 + v59 + 64);
        if (v59 == -48)
        {
          break;
        }

        v61 = *a3;
        v66 = v68;
        v67 = v69;
        v64 = *(v60 + 24);
        v65 = *(v60 + 40);
        v59 -= 24;
        if (!v61(&v66, &v64))
        {
          v62 = a1 + v59 + 72;
          goto LABEL_41;
        }
      }

      v62 = a1;
LABEL_41:
      *v62 = v68;
      *(v62 + 16) = v69;
      if (++v56 == 8)
      {
        return &v54[1].n128_i8[8] == a2;
      }
    }

    v30 = v54;
    v55 += 24;
    v54 = (v54 + 24);
    if (v54 == a2)
    {
      return 1;
    }
  }
}

float *sub_19B5DB70C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  for (i = 0; i != 3; ++i)
  {
    for (j = 0; j != 3; ++j)
    {
      v6 = sub_19B5D6144(a1, i);
      v7 = v6 * sub_19B5D6144(a1, j);
      result = sub_19B5D68B8(a2, i, j);
      *result = v7;
    }
  }

  return result;
}

float sub_19B5DB794(uint64_t a1, unint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  if (a2 >= 9)
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E282A0);
    }

    v6 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      *buf = 134218240;
      v10 = a2;
      v11 = 2048;
      v12 = 9;
      _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_FAULT, "Assertion failed: ldx < M*N, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/Math/CMMatrix.h, line 84,invalid element %zu >= %zu.", buf, 0x16u);
    }

    v7 = sub_19B420058();
    if ((*(v7 + 160) & 0x80000000) == 0 || (*(v7 + 164) & 0x80000000) == 0 || (*(v7 + 168) & 0x80000000) == 0 || *(v7 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E282A0);
      }

      v8 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "T CMMatrix<float, 3>::operator[](size_t) const [T = float, M = 3, N = 3]", "CoreLocation: %s\n", v8);
      if (v8 != buf)
      {
        free(v8);
      }
    }
  }

  result = *(a1 + 4 * a2);
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

float32_t sub_19B5DB98C(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  do
  {
    *sub_19B5D68B8(a2, v4, v4) = 1065353216;
    v5 = *sub_19B5D68B8(a1, v4, v4);
    *sub_19B5BC0F0(&v76, v4) = v5;
    v6 = *sub_19B5D68B8(a1, v4, v4);
    *sub_19B5BC0F0(&v74, v4) = v6;
    *sub_19B5BC0F0(&v72, v4++) = 0;
  }

  while (v4 != 3);
  v7 = 0;
  do
  {
    v8 = 0;
    v9 = 1;
    v10 = 0.0;
    do
    {
      v11 = v9;
      v12 = v8 + 1;
      do
      {
        v13 = *sub_19B5D68B8(a1, v8, v12);
        v14 = sub_19B5D68B8(a1, v8, v12);
        v15 = *v14;
        if (v13 < 0.0)
        {
          v15 = -*v14;
        }

        v10 = v10 + v15;
        ++v12;
      }

      while (v12 != 3);
      v9 = 0;
      v8 = 1;
    }

    while ((v11 & 1) != 0);
    if (v10 == 0.0)
    {
      break;
    }

    v16 = 0.0;
    if (v7 <= 2)
    {
      v16 = (v10 * 0.2) / 9.0;
    }

    v17 = 0;
    v18 = 0;
    v71 = v7 + 1;
    v19 = 1;
    do
    {
      v20 = v19;
      v21 = v18 + 1;
      do
      {
        v22 = *sub_19B5D68B8(a1, v18, v21);
        v23 = sub_19B5D68B8(a1, v18, v21);
        v24 = *v23;
        if (v22 < 0.0)
        {
          v24 = -*v23;
        }

        v25 = v24 * 100.0;
        if (v7 < 4)
        {
          goto LABEL_31;
        }

        v26 = v25 + *sub_19B5BC0F0(&v76, v18);
        v27 = sub_19B5BC0F0(&v76, v18);
        if (v26 >= 0.0)
        {
          v28 = v25 + *v27;
        }

        else
        {
          v28 = -(v25 + *v27);
        }

        v29 = *sub_19B5BC0F0(&v76, v18);
        v30 = sub_19B5BC0F0(&v76, v18);
        v31 = *v30;
        if (v29 < 0.0)
        {
          v31 = -*v30;
        }

        if (v28 != v31)
        {
          goto LABEL_31;
        }

        v32 = v25 + *sub_19B5BC0F0(&v76, v21);
        v33 = sub_19B5BC0F0(&v76, v21);
        if (v32 >= 0.0)
        {
          v34 = v25 + *v33;
        }

        else
        {
          v34 = -(v25 + *v33);
        }

        v35 = *sub_19B5BC0F0(&v76, v21);
        v36 = sub_19B5BC0F0(&v76, v21);
        v37 = *v36;
        if (v35 < 0.0)
        {
          v37 = -*v36;
        }

        if (v34 == v37)
        {
          *sub_19B5D68B8(a1, v18, v21) = 0;
        }

        else
        {
LABEL_31:
          v38 = *sub_19B5D68B8(a1, v18, v21);
          v39 = sub_19B5D68B8(a1, v18, v21);
          v40 = *v39;
          if (v38 < 0.0)
          {
            v40 = -*v39;
          }

          if (v40 > v16)
          {
            v41 = *sub_19B5BC0F0(&v76, v21);
            v42 = v41 - *sub_19B5BC0F0(&v76, v18);
            v43 = v25 + v42;
            if ((v25 + v42) < 0.0)
            {
              v43 = -(v25 + v42);
            }

            v44 = -v42;
            if (v42 >= 0.0)
            {
              v44 = v42;
            }

            if (v43 == v44)
            {
              v45 = *sub_19B5D68B8(a1, v18, v21) / v42;
            }

            else
            {
              v46 = sub_19B5D68B8(a1, v18, v21);
              v47 = (v42 * 0.5) / *v46;
              v48 = -v47;
              v49 = v47 < 0.0;
              if (v47 >= 0.0)
              {
                v48 = (v42 * 0.5) / *v46;
              }

              v50 = 1.0 / (v48 + sqrtf((v47 * v47) + 1.0));
              if (v49)
              {
                v45 = -v50;
              }

              else
              {
                v45 = v50;
              }
            }

            v51 = 1.0 / sqrtf((v45 * v45) + 1.0);
            v52 = v45 * v51;
            v53 = (v45 * v51) / (v51 + 1.0);
            v54 = v45 * *sub_19B5D68B8(a1, v18, v21);
            v55 = sub_19B5BC0F0(&v72, v18);
            *v55 = *v55 - v54;
            v56 = sub_19B5BC0F0(&v72, v21);
            *v56 = v54 + *v56;
            v57 = sub_19B5BC0F0(&v76, v18);
            *v57 = *v57 - v54;
            v58 = sub_19B5BC0F0(&v76, v21);
            *v58 = v54 + *v58;
            *sub_19B5D68B8(a1, v18, v21) = 0;
            if (v17)
            {
              v59 = *(a1 + 12);
              v60 = sub_19B5D68B8(a1, 0, v21);
              v61 = *v60;
              *(a1 + 12) = v59 - (v52 * (*v60 + (v59 * v53)));
              *sub_19B5D68B8(a1, 0, v21) = v61 + (v52 * (v59 - (v61 * v53)));
            }

            if (v18 + 1 < v21)
            {
              v62 = *sub_19B5D68B8(a1, v18, 1uLL);
              v63 = *(a1 + 28);
              *sub_19B5D68B8(a1, v18, 1uLL) = v62 - (v52 * (v63 + (v62 * v53)));
              *(a1 + 28) = v63 + (v52 * (v62 - (v63 * v53)));
            }

            if (v21 != 2)
            {
              v64 = *sub_19B5D68B8(a1, v18, 2uLL);
              v65 = *(a1 + 28);
              *sub_19B5D68B8(a1, v18, 2uLL) = v64 - (v52 * (v65 + (v64 * v53)));
              *(a1 + 28) = v65 + (v52 * (v64 - (v65 * v53)));
            }

            for (i = 0; i != 3; ++i)
            {
              v67 = *sub_19B5D68B8(a2, i, v18);
              v68 = *sub_19B5D68B8(a2, i, v21);
              *sub_19B5D68B8(a2, i, v18) = v67 + (-v52 * (v68 + (v67 * v53)));
              *sub_19B5D68B8(a2, i, v21) = v68 + (v52 * (v67 - (v68 * v53)));
            }
          }
        }

        v69 = v21 == 2;
        v21 = 2;
      }

      while (!v69);
      v19 = 0;
      v17 = 1;
      v18 = 1;
    }

    while ((v20 & 1) != 0);
    v74 = vadd_f32(v72, v74);
    v75 = v73 + v75;
    v76 = v74;
    v77 = v75;
    v73 = 0.0;
    v72 = 0;
    ++v7;
  }

  while (v71 != 10);
  return v76.f32[0];
}

int *sub_19B5DBFAC(uint64_t *a1, unint64_t a2, unint64_t a3)
{
  v6 = *sub_19B5BC0F0(*a1, a2);
  result = sub_19B5BC0F0(*a1, a3);
  if (v6 < *result)
  {
    v8 = sub_19B5BC0F0(*a1, a2);
    v9 = sub_19B5BC0F0(*a1, a3);
    v10 = *v8;
    *v8 = *v9;
    *v9 = v10;
    v11 = sub_19B5D68B8(a1[1], 0, a2);
    v12 = sub_19B5D68B8(a1[1], 0, a3);
    v13 = *v11;
    *v11 = *v12;
    *v12 = v13;
    v14 = sub_19B5D68B8(a1[1], 1uLL, a2);
    v15 = sub_19B5D68B8(a1[1], 1uLL, a3);
    v16 = *v14;
    *v14 = *v15;
    *v15 = v16;
    v17 = sub_19B5D68B8(a1[1], 2uLL, a2);
    result = sub_19B5D68B8(a1[1], 2uLL, a3);
    v18 = *v17;
    *v17 = *result;
    *result = v18;
  }

  return result;
}

uint64_t sub_19B5DC0D0()
{
  result = sub_19B61C754();
  if (result)
  {
    operator new();
  }

  return result;
}

void sub_19B5DC230(_Unwind_Exception *a1)
{
  if (v3)
  {
    sub_19B41FFEC(v3);
  }

  sub_19B674784(v1);
  MEMORY[0x19EAE76F0](v1, v2);
  _Unwind_Resume(a1);
}

void sub_19B5DC28C(void *a1)
{
  *a1 = &unk_1F0E32B18;
  sub_19B674784(a1);

  JUMPOUT(0x19EAE76F0);
}

void sub_19B5DC2E0(uint64_t a1, int a2, uint64_t a3)
{
  v14 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (qword_1EAFE2840 != -1)
    {
      dispatch_once(&qword_1EAFE2840, &unk_1F0E27CC0);
    }

    v4 = qword_1EAFE2860;
    if (os_log_type_enabled(qword_1EAFE2860, OS_LOG_TYPE_FAULT))
    {
      *buf = 67109120;
      v13 = a2;
      _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_FAULT, "[CLFilteredPressure] Unrecognized notification: %d", buf, 8u);
    }

    v5 = sub_19B420058();
    if ((*(v5 + 160) & 0x80000000) == 0 || (*(v5 + 164) & 0x80000000) == 0 || (*(v5 + 168) & 0x80000000) == 0 || *(v5 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2840 != -1)
      {
        dispatch_once(&qword_1EAFE2840, &unk_1F0E27CC0);
      }

      v6 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "virtual void CLFilteredPressure::numberOfSpectatorsChanged(int, size_t)", "CoreLocation: %s\n", v6);
      if (v6 != buf)
      {
        free(v6);
      }
    }
  }

  else
  {
    v8 = *(a1 + 32);
    if (a3)
    {
      if (!v8)
      {
        operator new();
      }
    }

    else if (v8)
    {
      v9 = sub_19B61C754();
      sub_19B426A14(v9, 1, *(a1 + 32));
      v10 = *(a1 + 32);
      if (v10)
      {
        (*(*v10 + 8))(v10);
      }

      *(a1 + 32) = 0;
      *(a1 + 56) = 0;
      *(a1 + 92) = 0;
      *(a1 + 100) = 0;
      *(a1 + 104) = 0;
      *(a1 + 108) = 0;
      *(a1 + 880) = 0;
      *(a1 + 808) = 0;
      *(a1 + 788) = 0;
      *(a1 + 772) = 0u;
      *(a1 + 64) = 3212836864;
      *(a1 + 72) = 0;
      *(a1 + 84) = 1025758986;
      *(a1 + 848) = 0;
      *(a1 + 792) = 0u;
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

void sub_19B5DC630(uint64_t a1, uint64_t a2)
{
  v32 = *MEMORY[0x1E69E9840];
  *buf = *(a1 + 8);
  *v20 = 0;
  *&v20[4] = (*a1 * 1000000.0);
  sub_19B7497F0(a2 + 56, buf);
  v4 = *(a2 + 72);
  v5 = *(a2 + 64);
  if ((*(a2 + 60) == 2 || *(a2 + 56) == 2) && v4 > *(a2 + 48))
  {
    v16 = v4 / 1000000.0;
    v17 = v5;
    v6 = *(a1 + 12);
    v18 = v6;
    if (qword_1EAFE2840 != -1)
    {
      dispatch_once(&qword_1EAFE2840, &unk_1F0E27CC0);
    }

    v7 = qword_1EAFE2860;
    if (os_log_type_enabled(qword_1EAFE2860, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315906;
      *v20 = "PressureFiltered";
      *&v20[8] = 2048;
      *&v20[10] = v5;
      v21 = 2048;
      v22 = v6;
      v23 = 2048;
      v24 = v4 / 1000000.0;
      _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_DEBUG, "Type,%s,pressure,%.6f,temperature,%.3f,timestamp,%f", buf, 0x2Au);
    }

    v8 = sub_19B420058();
    if (*(v8 + 160) > 1 || *(v8 + 164) > 1 || *(v8 + 168) > 1 || *(v8 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2840 != -1)
      {
        dispatch_once(&qword_1EAFE2840, &unk_1F0E27CC0);
      }

      *v28 = 136315906;
      *&v28[4] = "PressureFiltered";
      *&v28[12] = 2048;
      *&v28[14] = v5;
      v29 = 2048;
      v30 = v6;
      *v31 = 2048;
      *&v31[2] = v4 / 1000000.0;
      v9 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "void CLFilteredPressure::onPressureData(const CLPressure::Sample *)", "CoreLocation: %s\n", v9);
      if (v9 != buf)
      {
        free(v9);
      }
    }

    if (*(a2 + 40) == 1)
    {
      *v28 = &unk_1F0E312F0;
      Current = CFAbsoluteTimeGetCurrent();
      *v31 = v5;
      *&v31[4] = v6;
      *&v28[8] = Current;
      v30 = v4 / 1000000.0;
      v11 = sub_19B720E40();
      sub_19B7223F8(v11, v28);
      sub_19B517F80(buf);
      sub_19B5327F8(buf);
      v27 |= 1u;
      v25 = *&v28[8];
      sub_19B5A06B4(v26);
      v12 = *(v26 + 8);
      *(v12 + 24) |= 1u;
      *(v12 + 8) = v4 / 1000000.0;
      v13 = *(v26 + 8);
      *(v13 + 24) |= 2u;
      *(v13 + 16) = v5;
      v14 = *(v26 + 8);
      *(v14 + 24) |= 4u;
      *(v14 + 20) = v6;
      sub_19B51DBD4(buf);
    }

    sub_19B41DF08(a2, 0, &v16, 16);
    *(a2 + 48) = v4;
  }

  v15 = *MEMORY[0x1E69E9840];
}