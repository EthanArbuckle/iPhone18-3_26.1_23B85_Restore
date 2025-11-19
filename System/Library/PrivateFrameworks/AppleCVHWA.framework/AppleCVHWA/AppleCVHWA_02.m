void sub_1E540B338(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  if (*(v6 - 152) == 1 && *(v6 - 153) < 0)
  {
    operator delete(*(v6 - 176));
  }

  __cxa_guard_abort(&qword_1ECFDBB40);
  sub_1E53EAA0C(va);
  _Unwind_Resume(a1);
}

void sub_1E540B37C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  sub_1E53F8434(&a28);
  sub_1E53F8434(&a24);
  sub_1E53F816C(v28 - 176);
  sub_1E53EAA0C(&a14);
  _Unwind_Resume(a1);
}

void sub_1E540B3B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, char a31)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  sub_1E53F816C(&a31);
  sub_1E53EAA0C(&a14);
  _Unwind_Resume(a1);
}

void sub_1E540B3E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  MEMORY[0x1E6928650](v6, 0x10D0C40B950D02ALL);
  sub_1E53EAA0C(va);
  _Unwind_Resume(a1);
}

void sub_1E540B410(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_1E53EAA0C(va);
  _Unwind_Resume(a1);
}

void sub_1E540B424(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  if (a2)
  {
    sub_1E53DDDDC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void CVHWAFeatureExtractionConfigSetParedGrid(uint64_t a1, _DWORD *a2, _DWORD *a3, _DWORD *a4, _DWORD *a5, _DWORD *a6)
{
  v40 = *MEMORY[0x1E69E9840];
  if (!a1 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/product/AppleCVHWA/AppleCVHWA/src/CVHWAFeatureExtractionConfig.cpp", 882, "cfg != nullptr", 14, &unk_1E549A011, 0, sub_1E548FDE0))
  {
    abort();
  }

  if ((*(a1 + 512) & 1) == 0)
  {
    sub_1E53FA6B0(&v31);
    if (**(v31 + 56) <= 4)
    {
      v12 = *(v31 + 72);
      v13 = sub_1E53E3554(v31, "OSLogSurrogateAppender", 1, 0);
      if (v13 || v12)
      {
        v24[0] = &v31;
        v24[1] = std::chrono::steady_clock::now().__d_.__rep_;
        v24[2] = std::chrono::system_clock::now().__d_.__rep_;
        v25 = 4;
        v26 = "unknown file";
        v27 = 884;
        v29 = 0;
        v30 = 0;
        v28 = "unknown function";
        if ((*(v31 + 39) & 0x8000000000000000) != 0)
        {
          category = *(v31 + 16);
          __len = *(v31 + 24);
          v20 = v12;
          if ((atomic_load_explicit(&qword_1ECFDBB40, memory_order_acquire) & 1) == 0)
          {
            goto LABEL_48;
          }
        }

        else
        {
          category = (v31 + 16);
          __len = *(v31 + 39);
          v20 = v12;
          if ((atomic_load_explicit(&qword_1ECFDBB40, memory_order_acquire) & 1) == 0)
          {
LABEL_48:
            if (__cxa_guard_acquire(&qword_1ECFDBB40))
            {
              sub_1E548E6E4(&v32);
              sub_1E53F807C("com.apple.AppleCVHWA", &v32, &qword_1ECFDBB28);
              if (v34 == 1 && SHIBYTE(v33) < 0)
              {
                operator delete(v32);
              }

              __cxa_atexit(MEMORY[0x1E69E52C0], &qword_1ECFDBB28, &dword_1E53D8000);
              __cxa_guard_release(&qword_1ECFDBB40);
            }
          }
        }

        if (byte_1ECFDBB3F >= 0)
        {
          v14 = &qword_1ECFDBB28;
        }

        else
        {
          v14 = qword_1ECFDBB28;
        }

        if (byte_1ECFDBB3F >= 0)
        {
          v15 = byte_1ECFDBB3F;
        }

        else
        {
          v15 = unk_1ECFDBB30;
        }

        *&v32 = os_log_create(v14, category);
        if (v15 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_1E53DF584();
        }

        v22 = v13;
        if (v15 >= 0x17)
        {
          operator new();
        }

        v35 = v15;
        if (v15)
        {
          memmove(&v32 + 8, v14, v15);
        }

        *(&v32 + v15 + 8) = 0;
        LOBYTE(v36) = 1;
        if (__len > 0x7FFFFFFFFFFFFFF7)
        {
          sub_1E53DF584();
        }

        if (__len >= 0x17)
        {
          operator new();
        }

        v38 = __len;
        if (__len)
        {
          memmove(&v37, category, __len);
        }

        *(&v37 + __len) = 0;
        v39 = 1;
        v16 = v32;
        if (v38 < 0)
        {
          operator delete(v37);
        }

        if (v36 == 1 && v35 < 0)
        {
          operator delete(*(&v32 + 1));
        }

        if (v16)
        {
          os_release(v16);
        }

        if (v22 && *(v22 + 24))
        {
          v17 = _os_log_pack_size();
          operator new(v17, 8uLL);
          operator new();
        }

        os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);
        LODWORD(v32) = 136315138;
        *(&v32 + 4) = "CVHWAFeatureExtractionConfigSetParedGrid";
        v18 = _os_log_send_and_compose_impl();
        if (v18)
        {
          free(v18);
        }

        if (v20)
        {
          sub_1E53DFB24(v24, "%s only has effect in swproxy", "CVHWAFeatureExtractionConfigSetParedGrid");
          sub_1E53EA844(v24);
        }

        sub_1E53EA844(v24);
        v19 = v30;
        if (v30 && !atomic_fetch_add(&v30->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v19->__on_zero_shared)(v19);
          std::__shared_weak_count::__release_weak(v19);
        }
      }
    }
  }

  *(a1 + 332) = *a2;
  *(a1 + 352) = *a3;
  *(a1 + 372) = *a4;
  *(a1 + 392) = *a5;
  *(a1 + 412) = *a6;
  *(a1 + 336) = a2[1];
  *(a1 + 356) = a3[1];
  *(a1 + 376) = a4[1];
  *(a1 + 396) = a5[1];
  *(a1 + 416) = a6[1];
  *(a1 + 340) = a2[2];
  *(a1 + 360) = a3[2];
  *(a1 + 380) = a4[2];
  *(a1 + 400) = a5[2];
  *(a1 + 420) = a6[2];
  *(a1 + 344) = a2[3];
  *(a1 + 364) = a3[3];
  *(a1 + 384) = a4[3];
  *(a1 + 404) = a5[3];
  *(a1 + 424) = a6[3];
  *(a1 + 348) = a2[4];
  *(a1 + 368) = a3[4];
  *(a1 + 388) = a4[4];
  *(a1 + 408) = a5[4];
  *(a1 + 428) = a6[4];
}

void sub_1E540BECC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  if (*(v10 - 152) == 1 && *(v10 - 153) < 0)
  {
    operator delete(*(v10 - 176));
  }

  __cxa_guard_abort(&qword_1ECFDBB40);
  sub_1E53EAA0C(va);
  _Unwind_Resume(a1);
}

void sub_1E540BF10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  sub_1E53F8434(&a32);
  sub_1E53F8434(&a28);
  sub_1E53F816C(v32 - 176);
  sub_1E53EAA0C(&a18);
  _Unwind_Resume(a1);
}

void sub_1E540BF44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34, char a35)
{
  if (a34 < 0)
  {
    operator delete(__p);
  }

  sub_1E53F816C(&a35);
  sub_1E53EAA0C(&a18);
  _Unwind_Resume(a1);
}

void sub_1E540BF78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  MEMORY[0x1E6928650](v10, 0x10D0C40B950D02ALL);
  sub_1E53EAA0C(va);
  _Unwind_Resume(a1);
}

void sub_1E540BFA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_1E53EAA0C(va);
  _Unwind_Resume(a1);
}

void sub_1E540BFB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  if (a2)
  {
    sub_1E53DDDDC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CVHWAFeatureExtractionHwBufferInfoCreate(void *a1)
{
  if (!a1)
  {
    return 4;
  }

  v2 = operator new(0xA8uLL, MEMORY[0x1E69E5398]);
  if (!v2)
  {
    return 3;
  }

  v3 = v2;
  result = 0;
  *a1 = v3;
  *v3 = 0;
  *(v3 + 12) = 0;
  *(v3 + 4) = 0;
  *(v3 + 24) = 0u;
  *(v3 + 40) = 0u;
  *(v3 + 56) = 0u;
  *(v3 + 72) = 0u;
  *(v3 + 88) = 0u;
  *(v3 + 104) = 0u;
  *(v3 + 120) = 0u;
  *(v3 + 136) = 0u;
  *(v3 + 152) = 0u;
  return result;
}

uint64_t CVHWAFeatureExtractionGetHwBufferInfo(__CVBuffer *a1, uint64_t a2)
{
  v30 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = sub_1E5458F24(a1, a2);
    if (v2 > 6)
    {
      return 12;
    }

    else
    {
      return dword_1E5491BC8[v2];
    }
  }

  else
  {
    sub_1E540CAF0(&v21);
    if (**(v21 + 56) <= 5)
    {
      v4 = *(v21 + 72);
      v5 = sub_1E53E3554(v21, "OSLogSurrogateAppender", 1, 0);
      if (v5 || v4)
      {
        v14[0] = &v21;
        v14[1] = std::chrono::steady_clock::now().__d_.__rep_;
        v14[2] = std::chrono::system_clock::now().__d_.__rep_;
        v15 = 5;
        v16 = "unknown file";
        v17 = 57;
        v19 = 0;
        v20 = 0;
        v18 = "unknown function";
        v6 = (v21 + 16);
        v7 = *(v21 + 39);
        if ((v7 & 0x8000000000000000) != 0)
        {
          v6 = *(v21 + 16);
          v7 = *(v21 + 24);
        }

        if ((atomic_load_explicit(&qword_1ECFDBB40, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ECFDBB40))
        {
          sub_1E548E6E4(&object);
          sub_1E53F807C("com.apple.AppleCVHWA", &object, &qword_1ECFDBB28);
          if (v24 == 1 && SHIBYTE(v23) < 0)
          {
            operator delete(object);
          }

          __cxa_atexit(MEMORY[0x1E69E52C0], &qword_1ECFDBB28, &dword_1E53D8000);
          __cxa_guard_release(&qword_1ECFDBB40);
        }

        if (byte_1ECFDBB3F >= 0)
        {
          v8 = &qword_1ECFDBB28;
        }

        else
        {
          v8 = qword_1ECFDBB28;
        }

        if (byte_1ECFDBB3F >= 0)
        {
          v9 = byte_1ECFDBB3F;
        }

        else
        {
          v9 = unk_1ECFDBB30;
        }

        *&object = os_log_create(v8, v6);
        if (v9 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_1E53DF584();
        }

        if (v9 >= 0x17)
        {
          operator new();
        }

        v25 = v9;
        if (v9)
        {
          memmove(&object + 8, v8, v9);
        }

        *(&object + v9 + 8) = 0;
        LOBYTE(v26) = 1;
        if (v7 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_1E53DF584();
        }

        if (v7 >= 0x17)
        {
          operator new();
        }

        v28 = v7;
        if (v7)
        {
          memmove(&__p, v6, v7);
        }

        *(&__p + v7) = 0;
        v29 = 1;
        v10 = object;
        if (v28 < 0)
        {
          operator delete(__p);
        }

        if (v26 == 1 && v25 < 0)
        {
          operator delete(*(&object + 1));
        }

        if (v10)
        {
          os_release(v10);
        }

        if (v5 && *(v5 + 24))
        {
          v11 = _os_log_pack_size();
          operator new(v11, 8uLL);
          operator new();
        }

        os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
        LODWORD(object) = 136315138;
        *(&object + 4) = "CVHWAFeatureExtractionGetHwBufferInfo";
        v12 = _os_log_send_and_compose_impl();
        if (v12)
        {
          free(v12);
        }

        if (v4)
        {
          sub_1E53DFB24(v14, "%s: Invalid input buffer", "CVHWAFeatureExtractionGetHwBufferInfo");
          sub_1E53EA844(v14);
        }

        sub_1E53EA844(v14);
        v13 = v20;
        if (v20 && !atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v13->__on_zero_shared)(v13);
          std::__shared_weak_count::__release_weak(v13);
        }
      }
    }

    return 2;
  }
}

void sub_1E540C994(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36, char a37)
{
  if (a37 == 1 && a36 < 0)
  {
    operator delete(__p);
  }

  __cxa_guard_abort(&qword_1ECFDBB40);
  sub_1E53EAA0C(&a12);
  _Unwind_Resume(a1);
}

void sub_1E540C9D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  sub_1E53F8434(&a26);
  sub_1E53F8434(&a22);
  sub_1E53F816C(&a31);
  sub_1E53EAA0C(&a12);
  _Unwind_Resume(a1);
}

void sub_1E540CA0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, char a29)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  sub_1E53F816C(&a29);
  sub_1E53EAA0C(&a12);
  _Unwind_Resume(a1);
}

void sub_1E540CA40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  MEMORY[0x1E6928650](v4, 0x10D0C40B950D02ALL);
  sub_1E53EAA0C(va);
  _Unwind_Resume(a1);
}

void sub_1E540CA6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1E53EAA0C(va);
  _Unwind_Resume(a1);
}

void sub_1E540CA80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *object, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a2)
  {
    sub_1E53DDDDC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E540CAF0(void *a1)
{
  if ((atomic_load_explicit(&qword_1EE30C3A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE30C3A0))
  {
    sub_1E548B75C(&v4);
    sub_1E53F7C9C(__p, "cvhwa.vio");
    sub_1E53E3CC0(&v4, __p, &qword_1EE30C398);
    if (v3 < 0)
    {
      operator delete(__p[0]);
    }

    __cxa_atexit(nullsub_3, &qword_1EE30C398, &dword_1E53D8000);
    __cxa_guard_release(&qword_1EE30C3A0);
  }

  *a1 = qword_1EE30C398;
}

void sub_1E540CBB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    __cxa_guard_abort(&qword_1EE30C3A0);
    _Unwind_Resume(a1);
  }

  __cxa_guard_abort(&qword_1EE30C3A0);
  _Unwind_Resume(a1);
}

uint64_t CVHWAFeatureExtractionHwBufferInfoRelease(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    MEMORY[0x1E6928650](a1, 0x1020C4005052BACLL);
    return 0;
  }

  else
  {
    sub_1E540CAF0(&v19);
    if (**(v19 + 56) <= 5)
    {
      v2 = *(v19 + 72);
      v3 = sub_1E53E3554(v19, "OSLogSurrogateAppender", 1, 0);
      if (v3 || v2)
      {
        v12[0] = &v19;
        v12[1] = std::chrono::steady_clock::now().__d_.__rep_;
        v12[2] = std::chrono::system_clock::now().__d_.__rep_;
        v13 = 5;
        v14 = "unknown file";
        v15 = 69;
        v17 = 0;
        v18 = 0;
        v16 = "unknown function";
        v4 = (v19 + 16);
        v5 = *(v19 + 39);
        if ((v5 & 0x8000000000000000) != 0)
        {
          v4 = *(v19 + 16);
          v5 = *(v19 + 24);
        }

        if ((atomic_load_explicit(&qword_1ECFDBB40, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ECFDBB40))
        {
          sub_1E548E6E4(&object);
          sub_1E53F807C("com.apple.AppleCVHWA", &object, &qword_1ECFDBB28);
          if (v22 == 1 && SHIBYTE(v21) < 0)
          {
            operator delete(object);
          }

          __cxa_atexit(MEMORY[0x1E69E52C0], &qword_1ECFDBB28, &dword_1E53D8000);
          __cxa_guard_release(&qword_1ECFDBB40);
        }

        if (byte_1ECFDBB3F >= 0)
        {
          v6 = &qword_1ECFDBB28;
        }

        else
        {
          v6 = qword_1ECFDBB28;
        }

        if (byte_1ECFDBB3F >= 0)
        {
          v7 = byte_1ECFDBB3F;
        }

        else
        {
          v7 = unk_1ECFDBB30;
        }

        *&object = os_log_create(v6, v4);
        if (v7 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_1E53DF584();
        }

        if (v7 >= 0x17)
        {
          operator new();
        }

        v23 = v7;
        if (v7)
        {
          memmove(&object + 8, v6, v7);
        }

        *(&object + v7 + 8) = 0;
        LOBYTE(v24) = 1;
        if (v5 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_1E53DF584();
        }

        if (v5 >= 0x17)
        {
          operator new();
        }

        v26 = v5;
        if (v5)
        {
          memmove(&__p, v4, v5);
        }

        *(&__p + v5) = 0;
        v27 = 1;
        v8 = object;
        if (v26 < 0)
        {
          operator delete(__p);
        }

        if (v24 == 1 && v23 < 0)
        {
          operator delete(*(&object + 1));
        }

        if (v8)
        {
          os_release(v8);
        }

        if (v3 && *(v3 + 24))
        {
          v9 = _os_log_pack_size();
          operator new(v9, 8uLL);
          operator new();
        }

        os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
        LODWORD(object) = 136315138;
        *(&object + 4) = "CVHWAFeatureExtractionHwBufferInfoRelease";
        v10 = _os_log_send_and_compose_impl();
        if (v10)
        {
          free(v10);
        }

        if (v2)
        {
          sub_1E53DFB24(v12, "%s: Invalid extrDataInfo_hdl", "CVHWAFeatureExtractionHwBufferInfoRelease");
          sub_1E53EA844(v12);
        }

        sub_1E53EA844(v12);
        v11 = v18;
        if (v18)
        {
          if (!atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v11->__on_zero_shared)(v11);
            std::__shared_weak_count::__release_weak(v11);
          }
        }
      }
    }

    return 4;
  }
}

void sub_1E540D4E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36, char a37)
{
  if (a37 == 1 && a36 < 0)
  {
    operator delete(__p);
  }

  __cxa_guard_abort(&qword_1ECFDBB40);
  sub_1E53EAA0C(&a12);
  _Unwind_Resume(a1);
}

void sub_1E540D52C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  sub_1E53F8434(&a26);
  sub_1E53F8434(&a22);
  sub_1E53F816C(&a31);
  sub_1E53EAA0C(&a12);
  _Unwind_Resume(a1);
}

void sub_1E540D560(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, char a29)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  sub_1E53F816C(&a29);
  sub_1E53EAA0C(&a12);
  _Unwind_Resume(a1);
}

void sub_1E540D594(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  MEMORY[0x1E6928650](v4, 0x10D0C40B950D02ALL);
  sub_1E53EAA0C(va);
  _Unwind_Resume(a1);
}

void sub_1E540D5C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1E53EAA0C(va);
  _Unwind_Resume(a1);
}

void sub_1E540D5D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *object, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a2)
  {
    sub_1E53DDDDC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CVHWAFeatureExtractionGetKeyPoints(uint64_t a1)
{
  if (!a1 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/product/AppleCVHWA/AppleCVHWA/src/CVHWAFeatureExtractionHwBufferInfo.cpp", 81, "hdl != nullptr", 14, &unk_1E549A011, 0, sub_1E548FDE0))
  {
    abort();
  }

  return *(a1 + 136);
}

uint64_t CVHWAFeatureExtractionGetDescriptors(uint64_t a1)
{
  if (!a1 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/product/AppleCVHWA/AppleCVHWA/src/CVHWAFeatureExtractionHwBufferInfo.cpp", 88, "hdl != nullptr", 14, &unk_1E549A011, 0, sub_1E548FDE0))
  {
    abort();
  }

  return *(a1 + 144);
}

uint64_t CVHWAFeatureExtractionGetNumberOfOctaves(unsigned __int16 *a1)
{
  if (!a1 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/product/AppleCVHWA/AppleCVHWA/src/CVHWAFeatureExtractionHwBufferInfo.cpp", 95, "hdl != nullptr", 14, &unk_1E549A011, 0, sub_1E548FDE0))
  {
    abort();
  }

  return *a1;
}

uint64_t CVHWAFeatureExtractionGetNumberOfKeypoints(uint64_t a1)
{
  if (!a1 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/product/AppleCVHWA/AppleCVHWA/src/CVHWAFeatureExtractionHwBufferInfo.cpp", 102, "hdl != nullptr", 14, &unk_1E549A011, 0, sub_1E548FDE0))
  {
    abort();
  }

  return *(a1 + 4);
}

uint64_t CVHWAFeatureExtractionGetNumberOfPrunedKeypointsAtTopLevel(uint64_t a1)
{
  if (!a1 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/product/AppleCVHWA/AppleCVHWA/src/CVHWAFeatureExtractionHwBufferInfo.cpp", 109, "hdl != nullptr", 14, &unk_1E549A011, 0, sub_1E548FDE0))
  {
    abort();
  }

  return *(a1 + 12);
}

uint64_t CVHWAFeatureExtractionGetInputImageWidth(uint64_t a1)
{
  if (!a1 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/product/AppleCVHWA/AppleCVHWA/src/CVHWAFeatureExtractionHwBufferInfo.cpp", 116, "hdl != nullptr", 14, &unk_1E549A011, 0, sub_1E548FDE0))
  {
    abort();
  }

  return *(a1 + 32);
}

uint64_t CVHWAFeatureExtractionGetInputImageHeight(uint64_t a1)
{
  if (!a1 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/product/AppleCVHWA/AppleCVHWA/src/CVHWAFeatureExtractionHwBufferInfo.cpp", 123, "hdl != nullptr", 14, &unk_1E549A011, 0, sub_1E548FDE0))
  {
    abort();
  }

  return *(a1 + 36);
}

uint64_t CVHWAFeatureExtractionGetNumberOfFeatureMatches(uint64_t a1)
{
  if (!a1 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/product/AppleCVHWA/AppleCVHWA/src/CVHWAFeatureExtractionHwBufferInfo.cpp", 130, "hdl != nullptr", 14, &unk_1E549A011, 0, sub_1E548FDE0))
  {
    abort();
  }

  return *(a1 + 8);
}

uint64_t CVHWAFeatureExtractionGetMatchedPairs(uint64_t a1)
{
  if (!a1 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/product/AppleCVHWA/AppleCVHWA/src/CVHWAFeatureExtractionHwBufferInfo.cpp", 137, "hdl != nullptr", 14, &unk_1E549A011, 0, sub_1E548FDE0))
  {
    abort();
  }

  return *(a1 + 152);
}

uint64_t CVHWAFeatureExtractionGetTids(uint64_t a1)
{
  if (!a1 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/product/AppleCVHWA/AppleCVHWA/src/CVHWAFeatureExtractionHwBufferInfo.cpp", 144, "hdl != nullptr", 14, &unk_1E549A011, 0, sub_1E548FDE0))
  {
    abort();
  }

  return *(a1 + 160);
}

uint64_t CVHWAFeatureExtractionGetFeatureMatchingEnabled(uint64_t a1)
{
  if (!a1 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/product/AppleCVHWA/AppleCVHWA/src/CVHWAFeatureExtractionHwBufferInfo.cpp", 151, "hdl != nullptr", 14, &unk_1E549A011, 0, sub_1E548FDE0))
  {
    abort();
  }

  return *(a1 + 18);
}

uint64_t CVHWAFeatureExtractionGetGaussianOutputEnabled(uint64_t a1)
{
  if (!a1 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/product/AppleCVHWA/AppleCVHWA/src/CVHWAFeatureExtractionHwBufferInfo.cpp", 158, "hdl != nullptr", 14, &unk_1E549A011, 0, sub_1E548FDE0))
  {
    abort();
  }

  return *(a1 + 16);
}

uint64_t CVHWAFeatureExtractionGetFlowType(uint64_t a1)
{
  if (!a1 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/product/AppleCVHWA/AppleCVHWA/src/CVHWAFeatureExtractionHwBufferInfo.cpp", 165, "hdl != nullptr", 14, &unk_1E549A011, 0, sub_1E548FDE0))
  {
    abort();
  }

  return *(a1 + 17);
}

uint64_t CVHWAFeatureExtractionGetLaccEnabled(uint64_t a1)
{
  if (!a1 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/product/AppleCVHWA/AppleCVHWA/src/CVHWAFeatureExtractionHwBufferInfo.cpp", 172, "hdl != nullptr", 14, &unk_1E549A011, 0, sub_1E548FDE0))
  {
    abort();
  }

  return *(a1 + 19);
}

uint64_t CVHWAFeatureExtractionGetFrameId(uint64_t a1)
{
  if (!a1 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/product/AppleCVHWA/AppleCVHWA/src/CVHWAFeatureExtractionHwBufferInfo.cpp", 179, "hdl != nullptr", 14, &unk_1E549A011, 0, sub_1E548FDE0))
  {
    abort();
  }

  return *(a1 + 24);
}

unint64_t CVHWAGetFeatureMatchingSupported()
{
  sub_1E548F388();
  v0 = sub_1E548ED74();
  if ((v1 & 1) == 0)
  {
    return 0;
  }

  if ((v0 & 0xFFFFFFFFFFFFFFFDLL) == 0x8120)
  {
    return 1;
  }

  if ((v0 - 33072) <= 0x20)
  {
    return (0x100050005uLL >> (v0 - 48)) & 1;
  }

  else
  {
    return 0;
  }
}

unint64_t CVHWAGetFeatureDetectionFlowSupported(int a1)
{
  sub_1E548F388();
  v2 = sub_1E548ED74();
  if (v3)
  {
    if (a1 == 2)
    {
      if ((v2 - 33042) <= 0x3E)
      {
        return (0x4001400140014001uLL >> (v2 - 18)) & 1;
      }
    }

    else if (a1 == 1)
    {
      if ((v2 - 33025) <= 0x11 && ((1 << (v2 - 1)) & 0x28005) != 0)
      {
        return 1;
      }

      if ((v2 - 32800) <= 0x10 && ((1 << (v2 - 32)) & 0x10081) != 0)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t CVHWAGetLaccMatchSupported()
{
  if (qword_1EE30C490 == 1)
  {
    v0 = qword_1EE30C488;
  }

  else
  {
    sub_1E548F388();
    v0 = sub_1E548ED74();
    qword_1EE30C488 = v0;
    LOBYTE(qword_1EE30C490) = v1;
  }

  if (qword_1EE30C490)
  {
    v2 = v0 - 33056;
  }

  else
  {
    v2 = -33056;
  }

  return (v2 < 0x31) & (0x1000500050005uLL >> v2);
}

uint64_t CVHWAGetLaccArchVersion()
{
  if (qword_1EE30C490 == 1)
  {
    v0 = qword_1EE30C488;
    v1 = qword_1EE30C490;
    if ((qword_1EE30C490 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else
  {
    sub_1E548F388();
    v0 = sub_1E548ED74();
    qword_1EE30C488 = v0;
    LOBYTE(qword_1EE30C490) = v2;
    v1 = v2;
    if ((v2 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  if (v0 == 33072)
  {
    return 2;
  }

LABEL_7:
  if ((v1 & 1) == 0)
  {
    sub_1E548F388();
    v0 = sub_1E548ED74();
    qword_1EE30C488 = v0;
    LOBYTE(qword_1EE30C490) = v4;
    v1 = v4;
  }

  if ((v1 & 1) != 0 && v0 == 33074)
  {
    return 2;
  }

  if ((v1 & 1) == 0)
  {
    sub_1E548F388();
    v0 = sub_1E548ED74();
    qword_1EE30C488 = v0;
    LOBYTE(qword_1EE30C490) = v5;
    v1 = v5;
  }

  if ((v1 & 1) != 0 && v0 == 33088)
  {
    return 2;
  }

  if ((v1 & 1) == 0)
  {
    sub_1E548F388();
    v0 = sub_1E548ED74();
    qword_1EE30C488 = v0;
    LOBYTE(qword_1EE30C490) = v6;
    v1 = v6;
  }

  if ((v1 & 1) != 0 && v0 == 33090)
  {
    return 2;
  }

  if ((v1 & 1) == 0)
  {
    sub_1E548F388();
    v0 = sub_1E548ED74();
    qword_1EE30C488 = v0;
    LOBYTE(qword_1EE30C490) = v7;
    v1 = v7;
  }

  if ((v1 & 1) != 0 && v0 == 33104)
  {
    return 2;
  }

  if ((v1 & 1) == 0)
  {
    sub_1E548F388();
    v0 = sub_1E548ED74();
    qword_1EE30C488 = v0;
    LOBYTE(qword_1EE30C490) = v8;
    v1 = v8;
  }

  if ((v1 & 1) != 0 && v0 == 33056)
  {
    return 1;
  }

  else
  {
    return sub_1E5459E6C();
  }
}

uint64_t CVHWAGeneralProcessingCreate(uint64_t a1)
{
  if (a1)
  {
    sub_1E548B810(&v2);
    sub_1E53E33F8(v2);
    operator new();
  }

  return 2;
}

uint64_t sub_1E540E33C(void *a1)
{
  MEMORY[0x1E6928650](v2, 0x10B2C402501FFA3);
  __cxa_begin_catch(a1);
  v4 = sub_1E540EEA0(v1);
  MEMORY[0x1E6928650](v4, 0x20C4093837F09);
  __cxa_end_catch();
  return 1;
}

void sub_1E540E3A0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  sub_1E53F7E98(va1);
  sub_1E53F7D54(va);
  _Unwind_Resume(a1);
}

void sub_1E540E3BC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1E53F7D54(va);
  _Unwind_Resume(a1);
}

void sub_1E540E3D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21)
{
  if (a20 < 0)
  {
    operator delete(__p);
    if ((*(v23 - 65) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(v23 - 41) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((*(v23 - 65) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v23 - 88));
  if ((*(v23 - 41) & 0x80000000) == 0)
  {
LABEL_4:
    MEMORY[0x1E6928650](v22, v21);
    _Unwind_Resume(a1);
  }

LABEL_7:
  operator delete(*(v23 - 64));
  MEMORY[0x1E6928650](v22, v21);
  _Unwind_Resume(a1);
}

uint64_t CVHWAGeneralProcessingRelease(uint64_t *a1)
{
  if (!a1)
  {
    return 4;
  }

  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    v2 = a1;
    v3 = sub_1E542EB48(v1);
    MEMORY[0x1E6928650](v3, 0x10B2C402501FFA3);
    a1 = v2;
  }

  MEMORY[0x1E6928650](a1, 0x20C4093837F09);
  return 0;
}

uint64_t CVHWAGeneralProcessingInit(uint64_t *a1, _DWORD *a2)
{
  if (!a1)
  {
    return 4;
  }

  if (!a2)
  {
    return 2;
  }

  if ((*a2 & 0xFFFFFFFD) == 0)
  {
    return 1;
  }

  v2 = sub_1E542ED9C(*a1, a2);
  if (v2 == 6)
  {
    v3 = 6;
  }

  else
  {
    v3 = 0;
  }

  if (v2 == 4)
  {
    return 1;
  }

  else
  {
    return v3;
  }
}

uint64_t CVHWAGeneralProcessingLoadProgramSegment(uint64_t *a1, const void *a2, size_t a3, unsigned int a4)
{
  if (!a1)
  {
    return 4;
  }

  if (!a2)
  {
    return 2;
  }

  v4 = *a1;
  if (*(v4 + 8) - *(v4 + 16) <= a4)
  {
    if (sub_1E542F494(v4, a2, a3, a4, a4))
    {
      return 0;
    }

    else
    {
      return 3;
    }
  }

  else if (sub_1E542F6AC(v4, a2, a3, a4, a4))
  {
    return 0;
  }

  else
  {
    return 3;
  }
}

uint64_t CVHWAGeneralProcessingLoadProgramSegmentWithLma(uint64_t *a1, const void *a2, size_t a3, unsigned int a4, unsigned int a5)
{
  if (!a1)
  {
    return 4;
  }

  if (!a2)
  {
    return 2;
  }

  v5 = *a1;
  if (*(v5 + 8) - *(v5 + 16) <= a4)
  {
    if (sub_1E542F494(v5, a2, a3, a4, a5))
    {
      return 0;
    }

    else
    {
      return 3;
    }
  }

  else if (sub_1E542F6AC(v5, a2, a3, a4, a5))
  {
    return 0;
  }

  else
  {
    return 3;
  }
}

uint64_t CVHWAGeneralProcessingClearProgram(void *a1)
{
  if (!a1)
  {
    return 4;
  }

  v1 = *a1;
  *(v1 + 228) = 0u;
  v1 = (v1 + 228);
  v1[6] = 0u;
  v1[7] = 0u;
  v1[4] = 0u;
  v1[5] = 0u;
  v1[2] = 0u;
  v1[3] = 0u;
  v1[1] = 0u;
  bzero(v1 + 132, 0x400uLL);
  result = 0;
  *(v1 - 148) = *(v1 - 156);
  *(v1 - 124) = *(v1 - 132);
  v3 = *(v1 - 52);
  *(v1 - 108) = *(v1 - 54);
  *(v1 - 100) = v3;
  return result;
}

uint64_t CVHWAGeneralProcessingAllocateBuffer(int a1, uint64_t a2)
{
  result = 2;
  if (a1)
  {
    if (a2)
    {
      sub_1E542D20C();
    }
  }

  return result;
}

uint64_t CVHWAGeneralProcessingFreeBuffer(uint64_t a1)
{
  if (a1)
  {
    return sub_1E542D4CC(a1) ^ 1;
  }

  else
  {
    return 2;
  }
}

uint64_t CVHWAGeneralProcessingSetupDMASourceBuffer(uint64_t *a1, uint64_t a2, const void *a3, size_t a4)
{
  v5 = a4;
  if (!a1)
  {
    return 4;
  }

  if (!a3)
  {
    return 2;
  }

  if (sub_1E542F868(*a1, a3, &v5, 1))
  {
    return 0;
  }

  return 3;
}

uint64_t CVHWAGeneralProcessingSetupDMADestinationBuffer(uint64_t *a1, uint64_t a2, const void *a3, size_t a4)
{
  v5 = a4;
  if (!a1)
  {
    return 4;
  }

  if (!a3)
  {
    return 2;
  }

  if (sub_1E542F868(*a1, a3, &v5, 0))
  {
    return 0;
  }

  return 3;
}

uint64_t CVHWAGeneralProcessingWriteStackData(uint64_t *a1, void *a2, unsigned int a3, size_t a4)
{
  if (!a1)
  {
    return 4;
  }

  if (!a2)
  {
    return 2;
  }

  if (sub_1E5430030(*a1, a2, a3, a4))
  {
    return 0;
  }

  return 3;
}

uint64_t CVHWAGeneralProcessingReadStackData(uint64_t *a1, unsigned int a2, void *a3, size_t a4)
{
  if (!a1)
  {
    return 4;
  }

  result = 2;
  if (a3 && a4)
  {
    if (sub_1E5430164(*a1, a2, a3, a4))
    {
      return 0;
    }

    else
    {
      return 2;
    }
  }

  return result;
}

uint64_t CVHWAGeneralProcessingClearRegisters(void *a1)
{
  if (!a1)
  {
    return 4;
  }

  v1 = *a1;
  *(v1 + 228) = 0u;
  v1 = (v1 + 228);
  v1[6] = 0u;
  v1[7] = 0u;
  v1[4] = 0u;
  v1[5] = 0u;
  v1[2] = 0u;
  v1[3] = 0u;
  v1[1] = 0u;
  bzero(v1 + 132, 0x400uLL);
  return 0;
}

uint64_t CVHWAGeneralProcessingSetRegisters(uint64_t *a1, const void *a2, uint64_t a3)
{
  if (!a1)
  {
    return 4;
  }

  result = 2;
  if (a2)
  {
    if (a3)
    {
      sub_1E543023C(*a1, a2, a3);
      return 0;
    }
  }

  return result;
}

uint64_t CVHWAGeneralProcessingSetUint32Register(uint64_t *a1, unint64_t a2, int a3)
{
  if (!a1)
  {
    return 4;
  }

  if (a2 > 0x1F)
  {
    return 2;
  }

  sub_1E543048C(*a1, a2, a3);
  return 0;
}

uint64_t CVHWAGeneralProcessingSetVecFloatRegister(uint64_t *a1, unint64_t a2, void *a3, unint64_t a4)
{
  if (!a1)
  {
    return 4;
  }

  result = 2;
  if (a3 && a2 <= 0x1F && a4 - 9 >= 0xFFFFFFFFFFFFFFF8)
  {
    sub_1E543050C(*a1, a2, a3, a4);
    return 0;
  }

  return result;
}

uint64_t CVHWAGeneralProcessingSetVecDoubleRegister(uint64_t *a1, unint64_t a2, void *a3, unint64_t a4)
{
  if (!a1)
  {
    return 4;
  }

  result = 2;
  if (a3 && a2 <= 0x1F && a4 - 5 >= 0xFFFFFFFFFFFFFFFCLL)
  {
    sub_1E543067C(*a1, a2, a3, a4);
    return 0;
  }

  return result;
}

uint64_t CVHWAGeneralProcessingGetUint32Register(uint64_t *a1, unint64_t a2, int *a3)
{
  if (!a1)
  {
    return 4;
  }

  result = 2;
  if (a2 <= 0x1F && a3)
  {
    v5 = *a1;
    if (*(v5 + 2216) == 1)
    {
      v6 = a3;
      v7 = (*(**(v5 + 32) + 224))(*(v5 + 32), *(v5 + 2048), a2);
      a3 = v6;
      v8 = v7;
    }

    else
    {
      v8 = -1;
    }

    result = 0;
    *a3 = v8;
  }

  return result;
}

uint64_t CVHWAGeneralProcessingGetVecFloatRegister(uint64_t *a1, unint64_t a2, _DWORD *a3, uint64_t a4)
{
  if (!a1)
  {
    return 4;
  }

  result = 2;
  if (a2 <= 0x1F && a3 && (a4 - 9) >= 0xFFFFFFFFFFFFFFF8)
  {
    v6 = *a1;
    if (*(v6 + 2216) == 1)
    {
      (*(**(v6 + 32) + 232))(*(v6 + 32), *(v6 + 2048), a2);
      return 0;
    }

    else
    {
      result = 0;
      *a3 = 2139095039;
    }
  }

  return result;
}

uint64_t CVHWAGeneralProcessingGetVecDoubleRegister(uint64_t *a1, unint64_t a2, void *a3, uint64_t a4)
{
  if (!a1)
  {
    return 4;
  }

  result = 2;
  if (a2 <= 0x1F && a3 && (a4 - 5) >= 0xFFFFFFFFFFFFFFFCLL)
  {
    v6 = *a1;
    if (*(v6 + 2216) == 1)
    {
      (*(**(v6 + 32) + 240))(*(v6 + 32), *(v6 + 2048), a2);
      return 0;
    }

    else
    {
      result = 0;
      *a3 = 0x7FEFFFFFFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t CVHWAGeneralProcessingRunProgram(uint64_t **a1, int a2, int a3)
{
  if (!a1)
  {
    return 4;
  }

  v3 = sub_1E5430AEC(*a1, a2, a3);
  if (v3 == 9)
  {
    v4 = 10;
  }

  else
  {
    v4 = 1;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t CVHWAGeneralProcessingCallFunction(uint64_t *a1, char *__s, char *a3)
{
  if (!a1)
  {
    return 4;
  }

  if (!__s)
  {
    return 2;
  }

  v6 = strlen(__s);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1E53DF584();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  v16 = v6;
  if (v6)
  {
    memcpy(&__dst, __s, v6);
    *(&__dst + v7) = 0;
    __p = 0;
    v13 = 0;
    v14 = 0;
    if (a3)
    {
      goto LABEL_7;
    }
  }

  else
  {
    LOBYTE(__dst) = 0;
    __p = 0;
    v13 = 0;
    v14 = 0;
    if (a3)
    {
LABEL_7:
      sub_1E540F090(&__p, a3);
      goto LABEL_14;
    }
  }

  HIBYTE(v14) = 6;
  strcpy(&__p, "__stop");
LABEL_14:
  v9 = sub_1E5432DCC(*a1, &__dst, &__p);
  if (v9 < 0xA)
  {
    result = dword_1E5491BE8[v9];
    if ((SHIBYTE(v14) & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  result = 1;
  if (SHIBYTE(v14) < 0)
  {
LABEL_16:
    v10 = result;
    operator delete(__p);
    result = v10;
  }

LABEL_17:
  if (v16 < 0)
  {
    v11 = result;
    operator delete(__dst);
    return v11;
  }

  return result;
}

void sub_1E540EDD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((a20 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a20 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a15);
  _Unwind_Resume(exception_object);
}

uint64_t CVHWAGeneralProcessingReadSpecialRegister(uint64_t *a1, uint64_t a2, _DWORD *a3, uint64_t a4)
{
  if (!a1)
  {
    return 4;
  }

  result = 2;
  if (a3 && a4)
  {
    v6 = *a1;
    if (*(v6 + 2216) == 1)
    {
      return (*(**(v6 + 32) + 248))(*(v6 + 32), *(v6 + 2048), a2, a3) ^ 1;
    }

    else
    {
      *a3 = -1;
      return 1;
    }
  }

  return result;
}

uint64_t *sub_1E540EEA0(uint64_t *a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    v4 = sub_1E542EB48(v2);
    MEMORY[0x1E6928650](v4, 0x10B2C402501FFA3);
    return v3;
  }

  return v1;
}

void **sub_1E540EEF4(void **__dst, const void *a2, size_t __len)
{
  LODWORD(v5) = *(__dst + 23);
  if ((v5 & 0x80000000) != 0)
  {
    v7 = __dst[2];
    v8 = (v7 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (__len > v8)
    {
      if (0x7FFFFFFFFFFFFFF7 - (v7 & 0x7FFFFFFFFFFFFFFFLL) >= __len - v8)
      {
        if (v8 >= 0x3FFFFFFFFFFFFFF3)
        {
          operator new();
        }

LABEL_8:
        operator new();
      }

LABEL_17:
      sub_1E53DF584();
    }

    v5 = HIBYTE(v7);
    v6 = *__dst;
  }

  else
  {
    v6 = __dst;
    if (__len > 0x16)
    {
      if (__len - 0x7FFFFFFFFFFFFFF7 >= 0x800000000000001FLL)
      {
        goto LABEL_8;
      }

      goto LABEL_17;
    }
  }

  if (__len)
  {
    memmove(v6, a2, __len);
    LOBYTE(v5) = *(__dst + 23);
  }

  if ((v5 & 0x80) != 0)
  {
    __dst[1] = __len;
  }

  else
  {
    *(__dst + 23) = __len & 0x7F;
  }

  *(v6 + __len) = 0;
  return __dst;
}

void **sub_1E540F090(void **a1, char *__s)
{
  v4 = strlen(__s);

  return sub_1E540EEF4(a1, __s, v4);
}

uint64_t CVHWAGeneralProcessingConfigCreate(void *a1)
{
  if (!a1)
  {
    return 4;
  }

  v2 = operator new(0x20uLL, MEMORY[0x1E69E5398]);
  if (!v2)
  {
    return 3;
  }

  v3 = v2;
  result = 0;
  *v3 = 0;
  v3[31] = 0;
  v3[8] = 0;
  *a1 = v3;
  return result;
}

uint64_t CVHWAGeneralProcessingConfigRelease(uint64_t a1)
{
  if (!a1)
  {
    return 4;
  }

  if (*(a1 + 31) < 0)
  {
    v1 = a1;
    operator delete(*(a1 + 8));
    a1 = v1;
  }

  MEMORY[0x1E6928650](a1, 0x1012C40849EBCB1);
  return 0;
}

uint64_t CVHWAGeneralProcessingConfigSetAccelInstance(unsigned int *a1, unsigned int a2)
{
  if (!a1)
  {
    return 4;
  }

  if (a2 > 2)
  {
    return 2;
  }

  result = 0;
  *a1 = a2;
  return result;
}

unsigned int *CVHWAGeneralProcessingConfigGetAccelInstance(unsigned int *result)
{
  if (result)
  {
    return *result;
  }

  return result;
}

uint64_t CVHWAGeneralProcessingConfigSetBinaryPath(uint64_t a1, char *a2)
{
  if (!a1)
  {
    return 4;
  }

  sub_1E540F090((a1 + 8), a2);
  return 0;
}

uint64_t CVHWAGeneralProcessingConfigGetBinaryPath(uint64_t a1)
{
  result = a1 + 8;
  if (*(a1 + 31) < 0)
  {
    return *result;
  }

  return result;
}

uint64_t sub_1E540F22C(uint64_t a1, int a2)
{
  *a1 = &unk_1F5F0A4F0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 20) = 0;
  *(a1 + 28) = 2;
  *(a1 + 200) = 0;
  *(a1 + 180) = 0u;
  *(a1 + 196) = 0;
  *(a1 + 204) = 0;
  *(a1 + 228) = 0;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  *(a1 + 256) = 0;
  *(a1 + 236) = 0u;
  *(a1 + 252) = 0;
  *(a1 + 260) = 0;
  *(a1 + 284) = 0;
  *(a1 + 280) = 0;
  *(a1 + 264) = 0u;
  *(a1 + 288) = 0;
  *(a1 + 312) = 0;
  *(a1 + 292) = 0u;
  *(a1 + 308) = 0;
  *(a1 + 316) = 0;
  *(a1 + 340) = 0;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0;
  *(a1 + 344) = 0;
  *(a1 + 368) = 0;
  *(a1 + 348) = 0u;
  *(a1 + 364) = 0;
  *(a1 + 372) = 0;
  *(a1 + 396) = 0;
  *(a1 + 376) = 0u;
  *(a1 + 392) = 0;
  *(a1 + 400) = 0;
  *(a1 + 424) = 0;
  *(a1 + 420) = 0;
  *(a1 + 404) = 0u;
  *(a1 + 428) = 0;
  *(a1 + 452) = 0;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0;
  *(a1 + 456) = 0;
  *(a1 + 480) = 0;
  *(a1 + 460) = 0u;
  *(a1 + 476) = 0;
  *(a1 + 484) = 0;
  *(a1 + 508) = 0;
  *(a1 + 488) = 0u;
  *(a1 + 504) = 0;
  *(a1 + 512) = 0;
  *(a1 + 536) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 532) = 0;
  *(a1 + 516) = 0u;
  *(a1 + 540) = 0;
  *(a1 + 564) = 0;
  *(a1 + 544) = 0u;
  *(a1 + 560) = 0;
  *(a1 + 568) = 0;
  *(a1 + 592) = 0;
  *(a1 + 588) = 0;
  *(a1 + 572) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0;
  *(a1 + 660) = 0u;
  *(a1 + 632) = 0u;
  *(a1 + 648) = 0u;
  *(a1 + 600) = 0u;
  *(a1 + 616) = 0u;
  *(a1 + 703) = 17;
  strcpy((a1 + 680), "lacc_DpKernel.bin");
  *(a1 + 704) = 0;
  *(a1 + 712) = 6;
  *(a1 + 720) = xmmword_1E5491C20;
  *(a1 + 736) = xmmword_1E5491C30;
  *(a1 + 752) = xmmword_1E5491C40;
  *(a1 + 768) = xmmword_1E5491C50;
  *(a1 + 784) = 4;
  *(a1 + 788) = 5;
  *(a1 + 792) = 0xFFFF0000003FLL;
  *(a1 + 800) = xmmword_1E5491C60;
  *(a1 + 816) = 0x3F80000000000000;
  *(a1 + 824) = 511;
  *(a1 + 848) = 0;
  *(a1 + 832) = 0u;
  *(a1 + 856) = 26;
  *(a1 + 864) = 0;
  if (a2 == 7)
  {
    v3 = xmmword_1E5491C70;
    v4 = 0x29B000000;
    goto LABEL_5;
  }

  if (a2 == 8)
  {
    v3 = xmmword_1E5491C80;
    v4 = 0x48F000000;
LABEL_5:
    *(a1 + 864) = v4;
    *(a1 + 656) = v3;
    goto LABEL_7;
  }

  if (sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwColl.cpp", 48, "0 && unsupported platform", 27, &unk_1E549A011, 0, sub_1E548FDE0))
  {
    abort();
  }

LABEL_7:
  *(a1 + 856) = 26;
  return a1;
}

void sub_1E540F500(_Unwind_Exception *a1)
{
  v5 = v3;
  if (*v5)
  {
    *(v1 + 840) = *v5;
    MEMORY[0x1E6928640]();
    if ((*(v1 + 703) & 0x80000000) == 0)
    {
LABEL_3:
      sub_1E5414CDC(v2);
      _Unwind_Resume(a1);
    }
  }

  else if ((*(v1 + 703) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*v4);
  sub_1E5414CDC(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_1E540F554(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 68) != 2)
  {
    return 0;
  }

  *(a2 + 50) = sub_1E54789D8(*a2, *(a2 + 4));
  result = sub_1E541DFEC(a1 + 720, a2);
  if (!result)
  {
    return result;
  }

  if (*(a2 + 113) == 1)
  {
    if (*(a2 + 185) != 1 || *(a2 + 192))
    {
      v5 = sub_1E544CFB4(a2, a1 + 600, 7);
      *(a1 + 29) = v5;
      if ((v5 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (*(a2 + 192))
  {
    return 0;
  }

  *(a1 + 8) = *a2;
  v6 = *(a2 + 50);
  *(a1 + 16) = v6;
  *(a1 + 20) = *(a2 + 24);
  *(a1 + 24) = *(a2 + 72);
  v7 = *(a2 + 68);
  *(a1 + 28) = v7;
  sub_1E541C1E0((a1 + 32), v6, v7);
  if (*(a1 + 28) == 2)
  {
    v8 = *(a1 + 840);
    v9 = *(a1 + 832);
    v10 = 0xFAFAFAFAFAFAFAFBLL * ((v8 - v9) >> 7);
    if (v8 == v9)
    {
      if (0xFAFAFAFAFAFAFAFBLL * ((*(a1 + 848) - v8) >> 7) >= 1 - v10)
      {
        if (v8 - v9 != 6528)
        {
          bzero(*(a1 + 840), 0x1980uLL);
          v8 += 6528;
        }

        *(a1 + 840) = v8;
      }

      else
      {
        v11 = operator new(0x1980uLL, 0x40uLL);
        bzero(v11, 0x1980uLL);
        *(a1 + 832) = v11;
        *(a1 + 840) = v11 + 6528;
        *(a1 + 848) = v11 + 6528;
        if (v8)
        {
          MEMORY[0x1E6928640](v9, 64);
        }
      }

      v9 = *(a1 + 832);
    }

    else if (v10 >= 2)
    {
      *(a1 + 840) = v9 + 6528;
    }

    bzero(v9, 0x1980uLL);
    *(a1 + 672) = (*(a1 + 600) != 0) << 12;
    v12 = *(a1 + 616);
    v13 = *(a1 + 620);
    bzero((v9 + 64), 0xF80uLL);
    *(v9 + 64) = *(a2 + 113);
    v14 = *a2;
    if (*a2 >= 0x280u)
    {
      v15 = 640;
    }

    else
    {
      v15 = *a2;
    }

    *(v9 + 68) = v15;
    v16 = *(a2 + 4);
    *(v9 + 72) = v16;
    *(v9 + 76) = 8;
    v17 = *(a2 + 50);
    if ((v17 & 0xFFFE) != 4)
    {
      if (sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwDesgenConfigurationUtilsImpl.h", 271, "(input_cfg.numberOfOctaves == 4 || input_cfg.numberOfOctaves == 5) && Number of octaves can only be 4 or 5.", 109, &unk_1E549A011, 0, sub_1E548FDE0))
      {
        goto LABEL_218;
      }

      v17 = *(a2 + 50);
      v14 = *a2;
      v16 = *(a2 + 4);
    }

    if (sub_1E54789D8(v14, v16) != v17 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwDesgenConfigurationUtilsImpl.h", 276, "(input_cfg.numberOfOctaves == hw::desgen::ComputeNumOctavesFlow2( input_cfg.inputImageWidth, input_cfg.inputImageHeight)) && If width and height are > 320 then number of octaves should be 5 else, number of octaves should be 4.", 230, &unk_1E549A011, 0, sub_1E548FDE0))
    {
LABEL_218:
      abort();
    }

    v18 = *(a2 + 50);
    bzero((v9 + 128), 0xE80uLL);
    *(v9 + 128) = 4128;
    v19 = *a2;
    v20 = *(a2 + 4);
    if (*a2 >= 0x280u)
    {
      LOWORD(v19) = 640;
    }

    *(v9 + 140) = 0u;
    *(v9 + 136) = v19;
    *(v9 + 138) = v20;
    *(v9 + 396) = 0;
    *(v9 + 364) = 0u;
    *(v9 + 380) = 0u;
    *(v9 + 332) = 0u;
    *(v9 + 348) = 0u;
    *(v9 + 300) = 0u;
    *(v9 + 316) = 0u;
    *(v9 + 268) = 0u;
    *(v9 + 284) = 0u;
    *(v9 + 236) = 0u;
    *(v9 + 252) = 0u;
    *(v9 + 204) = 0u;
    *(v9 + 220) = 0u;
    *(v9 + 172) = 0u;
    *(v9 + 188) = 0u;
    *(v9 + 156) = 0u;
    if (*(a2 + 50) == 5)
    {
      v21 = 1023;
    }

    else
    {
      v21 = 255;
    }

    if (*(a2 + 84))
    {
      v22 = v21;
    }

    else
    {
      v22 = 0;
    }

    *(v9 + 404) = v22;
    if (*(a2 + 50) == 5)
    {
      v23 = 1023;
    }

    else
    {
      v23 = 255;
    }

    if (*(a2 + 85))
    {
      v24 = v23;
    }

    else
    {
      v24 = 0;
    }

    *(v9 + 408) = v24;
    v25 = *(a2 + 86);
    if (*(a2 + 50) == 5)
    {
      v26 = 510;
    }

    else
    {
      v26 = 126;
    }

    if (*(a2 + 86))
    {
      v27 = v26;
    }

    else
    {
      v27 = 0;
    }

    *(v9 + 412) = v27;
    if ((v25 & 1) == 0 && (*(a2 + 87) & 1) == 0 && (*(a2 + 88) & 1) == 0 && (*(a2 + 89) & 1) == 0 && (*(a2 + 173) & 1) == 0 && *(a2 + 113) != 1)
    {
      v26 = 0;
    }

    v28 = 2 * v18;
    *(v9 + 416) = v26;
    if (v18)
    {
      if (v18 > 3)
      {
        v30 = xmmword_1E5491C90;
        v31 = xmmword_1E5491CA0;
        v32 = xmmword_1E5491CB0;
        v33 = xmmword_1E5491CC0;
        v29 = v28 & 0x1FFF8;
        *&v34 = 0x3000300030003;
        *(&v34 + 1) = 0x3000300030003;
        v35.i64[0] = 0x20002000200020;
        v35.i64[1] = 0x20002000200020;
        v36 = vdupq_n_s64(1uLL);
        v37.i64[0] = 0x10001000100010;
        v37.i64[1] = 0x10001000100010;
        v38 = vdupq_n_s64(8uLL);
        v39 = v28 & 0x1FFF8;
        v40 = v9 + 420;
        do
        {
          *v40 = v34;
          *(v40 + 124) = vbslq_s8(vuzp1q_s16(vuzp1q_s32(vceqzq_s64(vandq_s8(v33, v36)), vceqzq_s64(vandq_s8(v32, v36))), vuzp1q_s32(vceqzq_s64(vandq_s8(v31, v36)), vceqzq_s64(vandq_s8(v30, v36)))), v37, v35);
          v31 = vaddq_s64(v31, v38);
          v32 = vaddq_s64(v32, v38);
          v33 = vaddq_s64(v33, v38);
          v30 = vaddq_s64(v30, v38);
          v40 += 16;
          v39 -= 8;
        }

        while (v39);
        if (v28 == v29)
        {
          goto LABEL_69;
        }
      }

      else
      {
        v29 = 0;
      }

      v41 = v29 - v28;
      v42 = (v9 + 2 * v29 + 544);
      do
      {
        *(v42 - 62) = 3;
        if (v29)
        {
          v43 = 32;
        }

        else
        {
          v43 = 16;
        }

        *v42++ = v43;
        LOBYTE(v29) = v29 + 1;
        _CF = __CFADD__(v41++, 1);
      }

      while (!_CF);
    }

LABEL_69:
    *(v9 + 440) = 0;
    v45 = *(a1 + 788);
    if (*(a1 + 788))
    {
      v46 = 0;
      v47 = *(a2 + 20);
      v48 = v9 + 444;
      v49 = vdupq_n_s32(v47);
      v50 = (v9 + 460);
      do
      {
        v51 = v45 & 0xFFF8;
        v52 = v50;
        if (v45 >= 8)
        {
          do
          {
            v52[-1] = v49;
            *v52 = v49;
            v52 += 2;
            v51 -= 8;
          }

          while (v51);
          v53 = v45 & 0xFFF8;
          if (v53 == v45)
          {
            goto LABEL_71;
          }
        }

        else
        {
          v53 = 0;
        }

        v54 = v45 - v53;
        v55 = (v48 + 4 * v53);
        do
        {
          *v55++ = v47;
          --v54;
        }

        while (v54);
LABEL_71:
        ++v46;
        v50 = (v50 + 20);
        v48 += 20;
      }

      while (v46 != v45);
    }

    *(v9 + 1944) = *(a2 + 24);
    *(v9 + 1948) = 2047;
    *(v9 + 1952) = sub_1E5478AA8(*a2, 0);
    v56 = sub_1E5478AA8(*a2, 1u);
    *(v9 + 1956) = v56;
    *(v9 + 1960) = v56;
    v57 = sub_1E5478AA8(*a2, 2u);
    *(v9 + 1964) = v57;
    *(v9 + 1968) = v57;
    v58 = sub_1E5478AA8(*a2, 3u);
    *(v9 + 1972) = v58;
    if (*(a2 + 50) == 5)
    {
      *(v9 + 1976) = v58;
      *(v9 + 1980) = sub_1E5478AA8(*a2, 4u);
    }

    *(v9 + 2048) = 1023;
    *(v9 + 2052) = xmmword_1E5491CD0;
    *(v9 + 2068) = 9437297;
    if (v18 >= 2)
    {
      v59 = v9 + 2072;
      v60 = 2;
      do
      {
        *v59 = xmmword_1E5491CE0;
        *(v59 + 16) = 9830514;
        v60 += 2;
        v59 += 20;
      }

      while (v60 < v28);
    }

    v61 = *(v9 + 2176) & 0xFFFFFFFD;
    *(v9 + 2176) = v61;
    if ((*(a2 + 88) & 1) != 0 && *(a2 + 89) == 1)
    {
      if (sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwDesgenConfigurationUtilsImpl.h", 391, "!(input_cfg.enableShortDescriptorOutputFlow2 && input_cfg.enableLongDescriptorOutputFlow2) && short and long descriptor should not be enabled at the same time", 160, &unk_1E549A011, 0, sub_1E548FDE0))
      {
        goto LABEL_218;
      }

      v61 = *(v9 + 2176);
    }

    v62 = v61 & 0xFFFFFFF3;
    *(v9 + 2176) = v61 & 0xFFFFFFF3;
    if (*(a2 + 89) == 1)
    {
      v62 = v61 | 0xC;
    }

    else if (*(a2 + 88) == 1)
    {
      v63 = v62 | 4;
      if (*(a2 + 112) == 1)
      {
        v62 |= 8u;
      }

      if (!*(a2 + 112))
      {
        v62 = v63;
      }
    }

    *(v9 + 2176) = v62 & 0xFFE0018F | 0x88000;
    if (*(a2 + 50) == 5)
    {
      v64 = 510;
    }

    else
    {
      v64 = 126;
    }

    if (*(a2 + 87))
    {
      v65 = v64;
    }

    else
    {
      v65 = 0;
    }

    *(v9 + 2180) = v65;
    v66 = *(a2 + 28);
    v287[0] = v66;
    v287[1] = v66;
    v287[2] = v66;
    v287[3] = v66;
    v288[0] = v66;
    v288[1] = v66;
    v288[2] = v66;
    v288[3] = v66;
    if (*(a2 + 76) == 1)
    {
      sub_1E5478504(v66, 2 * v18, v287);
    }

    v67 = v28 - 1;
    if (v28 != 2)
    {
      v68 = 2;
      if (v67 > 2)
      {
        v68 = v28 - 1;
      }

      if (v67 <= 8)
      {
        v69 = 1;
LABEL_111:
        v78 = v68 - v69;
        v79 = (v9 + 4 * v69 + 2184);
        v80 = &v287[v69 - 1];
        do
        {
          v81 = *v80++;
          *v79++ = v81;
          --v78;
        }

        while (v78);
        goto LABEL_113;
      }

      v70 = (v68 - 1) & 0xFFFFFFFFFFFFFFF8;
      v69 = v70 | 1;
      v71 = v288;
      v72 = (v9 + 2204);
      v73 = v70;
      do
      {
        v75 = v71[-2];
        v74 = v71[-1];
        v77 = *v71;
        v76 = v71[1];
        v71 += 4;
        v72[-1] = vuzp1q_s32(v75, v74);
        *v72 = vuzp1q_s32(v77, v76);
        v72 += 2;
        v73 -= 8;
      }

      while (v73);
      if (v68 - 1 != v70)
      {
        goto LABEL_111;
      }
    }

LABEL_113:
    v82 = v13 * v12;
    v83 = *(v9 + 2220) & 0xFFFFFC00 | *a2 & 0x3FF;
    *(v9 + 2220) = v83;
    *(v9 + 2220) = v83 & 0xE000FFFF | ((*(a2 + 4) & 0x1FFF) << 16);
    *(v9 + 2224) = xmmword_1E5491CF0;
    *(v9 + 2240) = xmmword_1E5491D00;
    *(v9 + 2256) = xmmword_1E5491D10;
    *(v9 + 2272) = xmmword_1E5491D20;
    *(v9 + 2288) = 0x1D002E00230039;
    v84 = (a2 + 20);
    if (v67 > 7 && (v9 + 2316 >= (a2 + 22) || v84 >= v9 + 4 * v18 + 2368))
    {
      v86 = (v9 + 2370);
      v85 = v67 & 0xFFFFFFFFFFFFFFF8;
      v87.i64[0] = 0x1000100010001;
      v87.i64[1] = 0x1000100010001;
      v88.i64[0] = -1;
      v88.i64[1] = -1;
      v89 = v67 & 0xFFFFFFFFFFFFFFF8;
      do
      {
        *(v86 - 54) = v87;
        *(v86 - 36) = v88;
        v90 = vld1q_dup_s16(v84);
        *v86 = v90;
        *(v86++ - 18) = v90;
        v89 -= 8;
      }

      while (v89);
    }

    else
    {
      v85 = 0;
    }

    v91 = v9 + 3912;
    v92 = v85 - v28 + 1;
    v93 = (v9 + 2 * v85 + 2370);
    do
    {
      *(v93 - 27) = 1;
      *(v93 - 18) = -1;
      v94 = *v84;
      *v93 = *v84;
      *(v93 - 9) = v94;
      ++v93;
      _CF = __CFADD__(v92++, 1);
    }

    while (!_CF);
    *(v9 + 2388) = xmmword_1E5491D30;
    *(v9 + 2404) = 0;
    v95 = *(a2 + 50);
    if (v95 == 5)
    {
      v96 = 15;
    }

    else
    {
      v96 = 7;
    }

    *(v9 + 2412) = v96;
    if (v95 != 1)
    {
      v97 = 0;
      v98 = v9 + 2418;
      do
      {
        *(v98 - 2) = 19267693;
        ++v97;
        v98 += 4;
      }

      while (v97 < *(a2 + 50) - 1);
    }

    if (v67 < 4 || v9 + 564 < (a2 + 48) && a2 + 43 < (v9 + 8 * v18 + 560))
    {
      v99 = 0;
      goto LABEL_139;
    }

    if (v67 >= 0x10)
    {
      v99 = v67 & 0xFFFFFFFFFFFFFFF0;
      v100.i64[0] = 0xFFFFFF00FFFFFF00;
      v100.i64[1] = 0xFFFFFF00FFFFFF00;
      v101 = v67 & 0xFFFFFFFFFFFFFFF0;
      v102 = v9 + 564;
      do
      {
        v103 = vqtbl1q_s8(*(a2 + 43), v100);
        v104.i64[0] = __PAIR64__(HIDWORD(*v102), *v102) & 0xFFFFFFFEFFFFFFFELL;
        v104.i32[2] = *(v102 + 8) & 0xFFFFFFFE;
        v104.i32[3] = HIDWORD(*v102) & 0xFFFFFFFE;
        v105 = vorrq_s8((*(v102 + 16) & __PAIR128__(0xFFFFFFFEFFFFFFFELL, 0xFFFFFFFEFFFFFFFELL)), v103);
        v106 = vorrq_s8(v104, v103);
        v107 = vorrq_s8((*(v102 + 48) & __PAIR128__(0xFFFFFFFEFFFFFFFELL, 0xFFFFFFFEFFFFFFFELL)), v103);
        v108 = vorrq_s8((*(v102 + 32) & __PAIR128__(0xFFFFFFFEFFFFFFFELL, 0xFFFFFFFEFFFFFFFELL)), v103);
        *(v102 + 32) = v108;
        *(v102 + 48) = v107;
        *v102 = v106;
        *(v102 + 16) = v105;
        _Q6 = vdupq_lane_s16(vand_s8(*(a2 + 46), 0x3F003F003F003FLL), 0);
        __asm { SHLL2           V7.4S, V6.8H, #0x10 }

        v114 = vshll_n_s16(*_Q6.i8, 0x10uLL);
        *(v102 + 32) = vorrq_s8(v114, (*&v108 & __PAIR128__(0xFFC0FFFFFFC0FFFFLL, 0xFFC0FFFFFFC0FFFFLL)));
        *(v102 + 48) = vorrq_s8(_Q7, (*&v107 & __PAIR128__(0xFFC0FFFFFFC0FFFFLL, 0xFFC0FFFFFFC0FFFFLL)));
        *v102 = vorrq_s8(v114, (*&v106 & __PAIR128__(0xFFC0FFFFFFC0FFFFLL, 0xFFC0FFFFFFC0FFFFLL)));
        *(v102 + 16) = vorrq_s8(_Q7, (*&v105 & __PAIR128__(0xFFC0FFFFFFC0FFFFLL, 0xFFC0FFFFFFC0FFFFLL)));
        v102 += 64;
        v101 -= 16;
      }

      while (v101);
      if ((v67 & 0xC) == 0)
      {
LABEL_139:
        v121 = v99 - v28 + 1;
        v122 = (v9 + 4 * v99 + 564);
        do
        {
          v123 = *v122 & 0xFFFFFFFE | *(a2 + 43);
          *v122 = v123;
          *v122++ = v123 & 0xFFC0FFFF | ((*(a2 + 46) & 0x3F) << 16);
          _CF = __CFADD__(v121++, 1);
        }

        while (!_CF);
        if (*(a2 + 113))
        {
          v124 = 1;
        }

        else
        {
          v124 = *(a2 + 173);
        }

        v125 = *(v9 + 2432) & 0xFFFFFFFE | v124;
        *(v9 + 2432) = v125;
        if ((*(a2 + 113) & 1) != 0 || *(a2 + 173) == 1)
        {
          v126 = v125 & 0xFFFE00FF | (((vcvts_n_u32_f32(ceilf(*(a2 + 24) * 0.0019531) + 1.0, 9uLL) >> 5) & 0x1FF) << 8);
          *(v9 + 2432) = v126;
          *(v9 + 2432) = v126 & 0xF8FFFFFF | ((*(a2 + 152) & 3) << 24);
          *(v9 + 2452) = sub_1E541F5EC(*(a2 + 24));
          v127 = *(a1 + 672);
          v128 = *(a1 + 664) + v127;
          *(v9 + 2436) = v128;
          *(a1 + 392) = 1;
          *(a1 + 396) = v127;
          v129 = *(a2 + 152);
          if (v129 > 2)
          {
            v130 = 16;
          }

          else
          {
            v130 = *&asc_1E5491DE4[4 * v129];
          }

          if (sub_1E544E3D8(v130 * vcvts_n_u32_f32(ceilf(vcvts_n_f32_u32(*(a2 + 24), 9uLL)) + 1.0, 9uLL), 0, 64, a1 + 372) >= 0x4B001 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwDesgenConfigurationUtilsImpl.h", 553, "curr_desc_size <= kCurrDescriptorDTCMSizeColl", 45, &unk_1E549A011, 0, sub_1E548FDE0))
          {
            goto LABEL_218;
          }

          v131 = *(a1 + 672) + 307200;
          *(v9 + 2444) = v128 + 307200;
          *(a1 + 672) = v131 + (*(v9 + 2452) << 6);
        }

        *(v9 + 1560) = vandq_s8(*(v9 + 1560), xmmword_1E5491D40);
        *(v9 + 1904) = *&vandq_s8(*(v9 + 1904), vdupq_n_s32(0xE000F000)) | __PAIR128__(0x10001000100010, 0x10001000100010);
        *(v9 + 1576) &= 0xFFFFFFF0FFFFFFF0;
        *(v9 + 1920) = vorrq_s8(vandq_s8(*(v9 + 1920), xmmword_1E5491D50), xmmword_1E5491D60);
        *(v9 + 1936) = vorr_s8(vand_s8(*(v9 + 1936), vdup_n_s32(0xFFFF8080)), vdup_n_s32(0x101u));
        v132 = vdupq_n_s32(0xF000F800);
        *(v9 + 1584) = *&vandq_s8(*(v9 + 1584), v132) | __PAIR128__(0x5000500050005, 0x5000500050005);
        *(v9 + 1600) = *(v9 + 1600) & 0xF000F800 | 0x50005;
        *(v9 + 1604) = *&vandq_s8(*(v9 + 1604), v132) | __PAIR128__(0x5000500050005, 0x5000500050005);
        *(v9 + 1620) = *(v9 + 1620) & 0xF000F800 | 0x50005;
        *(v9 + 1624) = *&vandq_s8(*(v9 + 1624), v132) | __PAIR128__(0x5000500050005, 0x5000500050005);
        *(v9 + 1640) = *(v9 + 1640) & 0xF000F800 | 0x50005;
        *(v9 + 1644) = *&vandq_s8(*(v9 + 1644), v132) | __PAIR128__(0x5000500050005, 0x5000500050005);
        *(v9 + 1660) = *(v9 + 1660) & 0xF000F800 | 0x50005;
        *(v9 + 1664) = *&vandq_s8(*(v9 + 1664), v132) | __PAIR128__(0x5000500050005, 0x5000500050005);
        *(v9 + 1680) = *(v9 + 1680) & 0xF000F800 | 0x50005;
        *(v9 + 1684) = *&vandq_s8(*(v9 + 1684), v132) | __PAIR128__(0x5000500050005, 0x5000500050005);
        *(v9 + 1700) = *(v9 + 1700) & 0xF000F800 | 0x50005;
        *(v9 + 1704) = *&vandq_s8(*(v9 + 1704), v132) | __PAIR128__(0x5000500050005, 0x5000500050005);
        *(v9 + 1720) = *(v9 + 1720) & 0xF000F800 | 0x50005;
        *(v9 + 1724) = *&vandq_s8(*(v9 + 1724), v132) | __PAIR128__(0x5000500050005, 0x5000500050005);
        *(v9 + 1740) = *(v9 + 1740) & 0xF000F800 | 0x50005;
        *(v9 + 1744) = *&vandq_s8(*(v9 + 1744), v132) | __PAIR128__(0x5000500050005, 0x5000500050005);
        *(v9 + 1760) = *(v9 + 1760) & 0xF000F800 | 0x50005;
        *(v9 + 1764) = *&vandq_s8(*(v9 + 1764), v132) | __PAIR128__(0x5000500050005, 0x5000500050005);
        *(v9 + 1780) = *(v9 + 1780) & 0xF000F800 | 0x50005;
        *(v9 + 1784) = *&vandq_s8(*(v9 + 1784), v132) | __PAIR128__(0x5000500050005, 0x5000500050005);
        *(v9 + 1800) = *(v9 + 1800) & 0xF000F800 | 0x50005;
        *(v9 + 1804) = *&vandq_s8(*(v9 + 1804), v132) | __PAIR128__(0x5000500050005, 0x5000500050005);
        *(v9 + 1820) = *(v9 + 1820) & 0xF000F800 | 0x50005;
        *(v9 + 1824) = *&vandq_s8(*(v9 + 1824), v132) | __PAIR128__(0x5000500050005, 0x5000500050005);
        *(v9 + 1840) = *(v9 + 1840) & 0xF000F800 | 0x50005;
        *(v9 + 1844) = *&vandq_s8(*(v9 + 1844), v132) | __PAIR128__(0x5000500050005, 0x5000500050005);
        *(v9 + 1860) = *(v9 + 1860) & 0xF000F800 | 0x50005;
        *(v9 + 1864) = *&vandq_s8(*(v9 + 1864), v132) | __PAIR128__(0x5000500050005, 0x5000500050005);
        *(v9 + 1880) = *(v9 + 1880) & 0xF000F800 | 0x50005;
        *(v9 + 1884) = *&vandq_s8(*(v9 + 1884), v132) | __PAIR128__(0x5000500050005, 0x5000500050005);
        *(v9 + 1900) = *(v9 + 1900) & 0xF000F800 | 0x50005;
        if (*a2 > 0x280u)
        {
          sub_1E5478B6C(640, *a2, *(a2 + 4), *(a2 + 42), v230);
          v142 = v230[0] & 0x1F;
          v143 = *(v9 + 128) & 0xFFFFFFE0FFFFFFFFLL | ((v230[0] & 0x1F) << 32);
          *(v9 + 128) = v143;
          v144 = HIDWORD(v143) & 0x1F;
          if (v142)
          {
            v145 = 0;
            v146 = 0;
            v147 = 496;
            do
            {
              *(v9 + v147 * 4) = *(v9 + v147 * 4) & 0xFFFFE000 | v230[v147 - 495] & 0x1FFF;
              v148 = (v9 + v145);
              v148[150] = *(v9 + v145 + 600) & 0xE000F800 | *(&v232 + v146) & 0x7FF | ((*(&v233 + v146) & 0x1FFF) << 16);
              v149 = *(&v242 + v146);
              v148[230] = *(v9 + v145 + 920) & 0xE000FC00 | (v149 / 5) & 0x3FF | (((((1717986919 * *(&v243 + v146)) >> 33) + ((1717986919 * *(&v243 + v146)) >> 63)) & 0x1FFF) << 16);
              v148[310] = *(v9 + v145 + 1240) & 0xFFFFFC00 | (v149 % 5) & 0x3FF;
              v148[151] = *(v9 + v145 + 604) & 0xE000F800 | *(&v234 + v146) & 0x7FF | ((*(&v235 + v146) & 0x1FFF) << 16);
              v150 = *(&v244 + v146);
              v148[231] = *(v9 + v145 + 924) & 0xE000FC00 | (v150 / 5) & 0x3FF | (((((1717986919 * *(&v245 + v146)) >> 33) + ((1717986919 * *(&v245 + v146)) >> 63)) & 0x1FFF) << 16);
              v148[311] = *(v9 + v145 + 1244) & 0xFFFFFC00 | (v150 % 5) & 0x3FF;
              v148[152] = *(v9 + v145 + 608) & 0xE000F800 | *(&v236 + v146) & 0x7FF | ((*(&v237 + v146) & 0x1FFF) << 16);
              v151 = *(&v246 + v146);
              v148[232] = *(v9 + v145 + 928) & 0xE000FC00 | (v151 / 5) & 0x3FF | (((((1717986919 * *(&v247 + v146)) >> 33) + ((1717986919 * *(&v247 + v146)) >> 63)) & 0x1FFF) << 16);
              v148[312] = *(v9 + v145 + 1248) & 0xFFFFFC00 | (v151 % 5) & 0x3FF;
              v148[153] = *(v9 + v145 + 612) & 0xE000F800 | *(&v238 + v146) & 0x7FF | ((*(&v239 + v146) & 0x1FFF) << 16);
              v152 = *(&v248 + v146);
              v153 = *(v9 + v145 + 1252) & 0xFFFFFC00 | (v152 % 5) & 0x3FF;
              v148[233] = *(v9 + v145 + 932) & 0xE000FC00 | (v152 / 5) & 0x3FF | (((((1717986919 * *(&v249 + v146)) >> 33) + ((1717986919 * *(&v249 + v146)) >> 63)) & 0x1FFF) << 16);
              v148[313] = v153;
              v148[154] = *(v9 + v145 + 616) & 0xE000F800 | v241[v146 / 4 - 1] & 0x7FF | ((v241[v146 / 4] & 0x1FFF) << 16);
              v154 = v251[v146 / 4 - 1];
              v155 = *(v9 + v145 + 1256);
              v148[234] = *(v9 + v145 + 936) & 0xE000FC00 | (v154 / 5) & 0x3FF | (((((1717986919 * v251[v146 / 4]) >> 33) + ((1717986919 * v251[v146 / 4]) >> 63)) & 0x1FFF) << 16);
              v148[314] = v155 & 0xFFFFFC00 | (v154 % 5) & 0x3FF;
              v146 += 40;
              ++v147;
              v145 += 20;
            }

            while (40 * v144 != v146);
          }

          *(v9 + 1560) = *(v9 + 1560) & 0xFFFFFFFE | *(a2 + 42);
          if (*(a2 + 42) == 1)
          {
            *(v9 + 1924) = *(v9 + 1924) & 0xFFFF8080 | v262 & 0x7F | ((v263 & 0x7F) << 8);
            *(v9 + 1904) = *(v9 + 1904) & 0xE000F000 | v272 & 0xFFF | ((v273 & 0x1FFF) << 16);
            *(v9 + 1564) = *(v9 + 1564) & 0xFFFFFFF0 | v282 & 0xF;
            *(v9 + 1928) = *(v9 + 1928) & 0xFFFF8080 | v264 & 0x7F | ((v265 & 0x7F) << 8);
            *(v9 + 1908) = *(v9 + 1908) & 0xE000F000 | v274 & 0xFFF | ((v275 & 0x1FFF) << 16);
            *(v9 + 1568) = *(v9 + 1568) & 0xFFFFFFF0 | v283 & 0xF;
            *(v9 + 1932) = *(v9 + 1932) & 0xFFFF8080 | v266 & 0x7F | ((v267 & 0x7F) << 8);
            *(v9 + 1912) = *(v9 + 1912) & 0xE000F000 | v276 & 0xFFF | ((v277 & 0x1FFF) << 16);
            *(v9 + 1572) = *(v9 + 1572) & 0xFFFFFFF0 | v284 & 0xF;
            *(v9 + 1936) = *(v9 + 1936) & 0xFFFF8080 | v268 & 0x7F | ((v269 & 0x7F) << 8);
            *(v9 + 1916) = *(v9 + 1916) & 0xE000F000 | v278 & 0xFFF | ((v279 & 0x1FFF) << 16);
            *(v9 + 1576) = *(v9 + 1576) & 0xFFFFFFF0 | v285 & 0xF;
            *(v9 + 1940) = *(v9 + 1940) & 0xFFFF8080 | v270 & 0x7F | ((v271 & 0x7F) << 8);
            *(v9 + 1920) = *(v9 + 1920) & 0xE000F000 | v280 & 0xFFF | ((v281 & 0x1FFF) << 16);
            *(v9 + 1580) = *(v9 + 1580) & 0xFFFFFFF0 | v286 & 0xF;
            if (v142)
            {
              v156 = &v261;
              v157 = (v9 + 1600);
              v158 = HIDWORD(v143) & 0x1F;
              do
              {
                v159 = *(v157 - 3);
                *(v157 - 4) = *(v157 - 4) & 0xF000F800 | *(v156 - 9) & 0x7FF | ((*(v156 - 8) & 0xFFF) << 16);
                *(v157 - 3) = v159 & 0xF000F800 | *(v156 - 7) & 0x7FF | ((*(v156 - 6) & 0xFFF) << 16);
                v160 = *(v157 - 1);
                *(v157 - 2) = *(v157 - 2) & 0xF000F800 | *(v156 - 5) & 0x7FF | ((*(v156 - 4) & 0xFFF) << 16);
                *(v157 - 1) = v160 & 0xF000F800 | *(v156 - 3) & 0x7FF | ((*(v156 - 2) & 0xFFF) << 16);
                v161 = *v157 & 0xF000F800 | *(v156 - 1) & 0x7FF;
                v162 = *v156;
                v156 += 10;
                *v157 = v161 | ((v162 & 0xFFF) << 16);
                v157 += 5;
                --v158;
              }

              while (v158);
            }
          }

          *(v9 + 2496) = *(v9 + 2496) & 0xE0000000 | (2 * (*(v9 + 136) & 0x3FFF)) & 0x7FFF | ((*(v9 + 138) & 0x3FFF) << 15) | 1;
          *(v9 + 2500) = v142;
          if (v144)
          {
            if (v144 > 7)
            {
              v180 = (v9 + 1984);
              v181 = HIDWORD(v143) & 7;
              v163 = v144 - v181;
              v182.i64[0] = 0x1F0000001FLL;
              v182.i64[1] = 0x1F0000001FLL;
              v183 = v144 - v181;
              do
              {
                v184 = (v180 + 524);
                v185 = *v180;
                v186 = *(v180 + 1);
                v180 += 2;
                *v184 = vandq_s8(v185, v182);
                v184[1] = vandq_s8(v186, v182);
                v183 -= 8;
              }

              while (v183);
              if (!v181)
              {
                goto LABEL_183;
              }
            }

            else
            {
              v163 = 0;
            }

            v187 = v163 - v144;
            v188 = (v9 + 4 * v163 + 1984);
            do
            {
              v188[131] = *v188 & 0x1FFF;
              ++v188;
              _CF = __CFADD__(v187++, 1);
            }

            while (!_CF);
          }
        }

        else
        {
          v229 = v82;
          *(v9 + 128) = *(v9 + 128) & 0xFFFFFFE0FFFFFFFFLL | 0x100000000;
          v133 = vdupq_n_s32(0xC000E000);
          *(v9 + 1984) = vandq_s8(*(v9 + 1984), v133);
          *(v9 + 2000) = vandq_s8(*(v9 + 2000), v133);
          *(v9 + 2016) = vandq_s8(*(v9 + 2016), v133);
          *(v9 + 2032) = vandq_s8(*(v9 + 2032), v133);
          if (*(a1 + 784) != 4 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwDesgenConfigurationUtilsImpl.h", 232, "hal.minBlockSize == feature_detection::kMinBlockSize", 52, &unk_1E549A011, 0, sub_1E548FDE0) || *(a1 + 788) != 5 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwDesgenConfigurationUtilsImpl.h", 233, "hal.numberOfGridElements == feature_detection::kNumRegionOfInterestBlocks", 73, &unk_1E549A011, 0, sub_1E548FDE0))
          {
            goto LABEL_218;
          }

          if (*(a2 + 50))
          {
            v134 = 0;
            do
            {
              v136 = sub_1E5478AA8(*a2, v134);
              v137 = sub_1E5478AA8(*(a2 + 4), v134);
              v138 = *(a2 + 14);
              v139 = v136;
              if (*(a2 + 18))
              {
                v139 = sub_1E5478AA8(*(a2 + 18), v134);
              }

              v140 = *(a2 + 12);
              v141 = v137;
              if (*(a2 + 16))
              {
                v141 = sub_1E5478AA8(*(a2 + 16), v134);
              }

              v230[0] = 0;
              *v290 = 0;
              v289 = 0;
              sub_1E541E498(a1 + 720, v136, v230, &v290[1], v138 >> v134, v139);
              sub_1E541E498(a1 + 720, v137, v290, &v289, v140 >> v134, v141);
              v135 = v9 + 4 * v134;
              *(v135 + 600) = *(v135 + 600) & 0xE000F800 | v230[0] & 0x7FF | ((v290[0] & 0x1FFF) << 16);
              *(v135 + 920) = *(v135 + 920) & 0xE000FC00 | v290[1] & 0x3FF | ((v289 & 0x1FFF) << 16);
              ++v134;
            }

            while (v134 < *(a2 + 50));
          }

          v91 = v9 + 3912;
          *(v9 + 1560) = *(v9 + 1560) & 0xFFFFFFFE | *(a2 + 42);
          v82 = v229;
          if (*(a2 + 42) == 1)
          {
            bzero(v231, 0x824uLL);
            v164 = *(v9 + 600);
            v165 = v164 & 0x7FF;
            v230[0] = 1;
            v166 = HIWORD(v164) & 0x1FFF;
            v167 = *(v9 + 920);
            v243 = 5 * (HIWORD(v167) & 0x1FFF);
            v242 = (*(v9 + 1240) & 0x3FF) + 5 * (v167 & 0x3FF);
            v168 = *(v9 + 604);
            v232 = v165;
            v233 = v166;
            v234 = v168 & 0x7FF;
            v169 = HIWORD(v168) & 0x1FFF;
            v170 = *(v9 + 924);
            v245 = 5 * (HIWORD(v170) & 0x1FFF);
            v244 = (*(v9 + 1244) & 0x3FF) + 5 * (v170 & 0x3FF);
            v171 = *(v9 + 608);
            v235 = v169;
            v236 = v171 & 0x7FF;
            v172 = HIWORD(v171) & 0x1FFF;
            v173 = *(v9 + 928);
            v247 = 5 * (HIWORD(v173) & 0x1FFF);
            v246 = (*(v9 + 1248) & 0x3FF) + 5 * (v173 & 0x3FF);
            v174 = *(v9 + 612);
            v237 = v172;
            v238 = v174 & 0x7FF;
            v175 = HIWORD(v174) & 0x1FFF;
            v176 = *(v9 + 932);
            v249 = 5 * (HIWORD(v176) & 0x1FFF);
            v248 = (*(v9 + 1252) & 0x3FF) + 5 * (v176 & 0x3FF);
            v177 = *(v9 + 616);
            v239 = v175;
            v240 = v177 & 0x7FF;
            v178 = *(v9 + 936);
            v251[0] = 5 * (HIWORD(v178) & 0x1FFF);
            v179 = (*(v9 + 1256) & 0x3FF) + 5 * (v178 & 0x3FF);
            v241[0] = HIWORD(v177) & 0x1FFF;
            v250 = v179;
            sub_1E5478B6C(640, *a2, *(a2 + 4), 1, v230);
            *(v9 + 1924) = *(v9 + 1924) & 0xFFFF8080 | v262 & 0x7F | ((v263 & 0x7F) << 8);
            *(v9 + 1904) = *(v9 + 1904) & 0xE000F000 | v272 & 0xFFF | ((v273 & 0x1FFF) << 16);
            *(v9 + 1564) = *(v9 + 1564) & 0xFFFFFFF0 | v282 & 0xF;
            *(v9 + 1584) = *(v9 + 1584) & 0xF000F800 | v252 & 0x7FF | ((v253 & 0xFFF) << 16);
            *(v9 + 1928) = *(v9 + 1928) & 0xFFFF8080 | v264 & 0x7F | ((v265 & 0x7F) << 8);
            *(v9 + 1908) = *(v9 + 1908) & 0xE000F000 | v274 & 0xFFF | ((v275 & 0x1FFF) << 16);
            *(v9 + 1568) = *(v9 + 1568) & 0xFFFFFFF0 | v283 & 0xF;
            *(v9 + 1588) = *(v9 + 1588) & 0xF000F800 | v254 & 0x7FF | ((v255 & 0xFFF) << 16);
            *(v9 + 1932) = *(v9 + 1932) & 0xFFFF8080 | v266 & 0x7F | ((v267 & 0x7F) << 8);
            *(v9 + 1912) = *(v9 + 1912) & 0xE000F000 | v276 & 0xFFF | ((v277 & 0x1FFF) << 16);
            *(v9 + 1572) = *(v9 + 1572) & 0xFFFFFFF0 | v284 & 0xF;
            *(v9 + 1592) = *(v9 + 1592) & 0xF000F800 | v256 & 0x7FF | ((v257 & 0xFFF) << 16);
            *(v9 + 1936) = *(v9 + 1936) & 0xFFFF8080 | v268 & 0x7F | ((v269 & 0x7F) << 8);
            *(v9 + 1916) = *(v9 + 1916) & 0xE000F000 | v278 & 0xFFF | ((v279 & 0x1FFF) << 16);
            *(v9 + 1576) = *(v9 + 1576) & 0xFFFFFFF0 | v285 & 0xF;
            *(v9 + 1596) = *(v9 + 1596) & 0xF000F800 | v258 & 0x7FF | ((v259 & 0xFFF) << 16);
            *(v9 + 1940) = *(v9 + 1940) & 0xFFFF8080 | v270 & 0x7F | ((v271 & 0x7F) << 8);
            *(v9 + 1920) = *(v9 + 1920) & 0xE000F000 | v280 & 0xFFF | ((v281 & 0x1FFF) << 16);
            *(v9 + 1580) = *(v9 + 1580) & 0xFFFFFFF0 | v286 & 0xF;
            *(v9 + 1600) = *(v9 + 1600) & 0xF000F800 | v260 & 0x7FF | ((v261 & 0xFFF) << 16);
          }
        }

LABEL_183:
        v189 = *(v9 + 3840);
        if (*(a2 + 113))
        {
          *(v9 + 3840) = v189 & 0xFFFFFFFE;
          v190 = vcvts_n_u32_f32(ceilf(*(a2 + 24) * 0.0019531) + 1.0, 9uLL) & 0x3FFF;
          *(v9 + 3904) = *(v9 + 3904) & 0xFFFFC000 | v190;
          v191 = v189 & 0xFFFE00FE | (((vcvts_n_u32_f32(ceilf(*(a2 + 24) * 0.0019531) + 1.0, 9uLL) >> 5) & 0x1FF) << 8);
          *(v9 + 3840) = v191;
          *(v9 + 3840) = v191 & 0xFCFFFFFF | ((*(a2 + 152) & 3) << 24);
          v192 = *(v9 + 2436);
          *(v9 + 3844) = v192;
          *(v9 + 3848) = *(v9 + 2440);
          *(v9 + 3868) = *(v9 + 2444);
          *(v9 + 3872) = *(v9 + 2448);
          v193 = *(a2 + 152);
          if (v193 > 2)
          {
            v194 = 0;
            v195 = 512;
          }

          else
          {
            v194 = dword_1E5491DF0[v193];
            v195 = dword_1E5491DFC[v193];
          }

          *(v9 + 3852) = v194;
          *(v9 + 3856) = v195;
          v197 = v192 & 0x7FFFF;
          *(v9 + 3860) = v197 + 384;
          *(v9 + 3864) = v197 + 512;
          *(v9 + 3876) = *(v9 + 2452);
          v198 = *(a1 + 672);
          v199 = *(a1 + 664) + v198;
          *(v9 + 3880) = v199;
          v200 = 4 * v190;
          v201 = v199 + v200;
          LODWORD(v200) = v198 + v200;
          *(a1 + 672) = v200;
          *(v9 + 3888) = v201;
          v202 = v201 + 16 * (*(v9 + 3904) & 0x3FFF);
          LODWORD(v200) = 16 * (*(v9 + 3904) & 0x3FFF) + v200;
          *(a1 + 672) = v200;
          *(v9 + 3896) = v202;
          *(a1 + 420) = 1;
          *(a1 + 424) = v200;
          *(a1 + 672) += sub_1E544E3D8(32 * (*(v9 + 3904) & 0x3FFFu) + 32, 0, 64, a1 + 400);
          *(v9 + 3904) &= 0xC0FFFFFF;
          *(v9 + 3908) = 1;
          v203 = *(a2 + 116);
          *v91 = vcvtq_u32_f32(v203);
          v204.i64[0] = 0x300000003;
          v204.i64[1] = 0x300000003;
          *(v91 + 36) = vandq_s8(vcvtq_n_u32_f32(vabsq_f32(v203), 0x12uLL), v204);
          v205 = *(a2 + 132);
          *(v91 + 16) = vcvtq_u32_f32(v205);
          *(v91 + 52) = vandq_s8(vcvtq_n_u32_f32(vabsq_f32(v205), 0x12uLL), v204);
          v205.i32[0] = *(a2 + 148);
          *(v9 + 3944) = v205.f32[0];
          *(v9 + 3980) = vcvts_n_u32_f32(fabsf(v205.f32[0]), 0x12uLL) & 0x3FFFF;
          v206 = *(v9 + 3984);
          *(v9 + 3984) = v206 & 0xFFFFFFFFC000E000;
          v207 = v206 & 0xFFFFE000C000E000 | ((*a2 & 0x1FFF) << 32);
          *(v9 + 3984) = v207;
          *(v9 + 3984) = v207 & 0xC000FFFFFFFFFFFFLL | ((*(a2 + 4) & 0x3FFF) << 48);
          v208 = *(v9 + 3992) & 0xFFFFFF00 | vcvtas_u32_f32((*(a2 + 156) * 256.0) / 360.0);
          *(v9 + 3992) = v208;
          *(v9 + 3992) = v208 & 0xFEC000FF | ((vcvtas_u32_f32(*(a2 + 160) * 512.0) & 0x3FFF) << 8);
          *(v9 + 3996) = (*(a2 + 164) * ((*(a2 + 164) * *a2) * *a2));
          *(v9 + 4000) = *(a2 + 168);
          v196 = *(v9 + 4) & 0xFFFFFFFC;
          if (v82)
          {
            ++v196;
          }

          *(v9 + 4) = v196;
          if (!v82)
          {
            goto LABEL_197;
          }
        }

        else
        {
          *(v9 + 3840) = v189 | 1;
          v196 = *(v9 + 4) & 0xFFFFFFFC;
          if (v82)
          {
            ++v196;
          }

          *(v9 + 4) = v196;
          if (!v82)
          {
            goto LABEL_197;
          }
        }

        *(a1 + 504) = 1;
        *(a1 + 508) = 0;
        v209 = *(a1 + 616);
        v210 = *(a1 + 620);
        v211 = *(a1 + 612);
        *(a1 + 484) = 1;
        *(a1 + 488) = v209;
        *(a1 + 492) = v210;
        v212 = (v209 + 63) & 0xFFFFFFC0;
        *(a1 + 496) = v212;
        *(a1 + 500) = v211;
        if (v212 * v210 != v82 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwCvdAllConfigurationUtilsImpl.h", 460, "size == itcm_size", 17, &unk_1E549A011, 0, sub_1E548FDE0))
        {
          goto LABEL_218;
        }

        v196 = *(v9 + 4) & 0xFFFFFFF3 | 4;
        *(v9 + 4) = v196;
        *(v9 + 6376) = *(a1 + 656);
        *(v9 + 6384) = v82;
LABEL_197:
        v213 = *(a1 + 628);
        v214 = *(a1 + 632);
        v215 = v214 * v213;
        if ((v214 * v213) > 0x1000)
        {
          if (sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwCvdAllConfigurationUtilsImpl.h", 470, "data_segment_size <= kDataSegmentSize && Data segment size larger than expected", 81, &unk_1E549A011, 0, sub_1E548FDE0))
          {
            goto LABEL_218;
          }

          v213 = *(a1 + 628);
          v214 = *(a1 + 632);
        }

        else if (!v215)
        {
LABEL_205:
          v218 = *(a1 + 640);
          v219 = *(a1 + 644);
          v220 = v219 * v218;
          if (!(v219 * v218))
          {
            goto LABEL_210;
          }

          *(a1 + 560) = 1;
          v221 = *(a1 + 672);
          *(a1 + 564) = v221;
          v222 = *(a1 + 636);
          *(a1 + 540) = 1;
          *(a1 + 544) = v218;
          *(a1 + 548) = v219;
          v223 = (v218 + 63) & 0xFFFFFFC0;
          *(a1 + 552) = v223;
          *(a1 + 556) = v222;
          v224 = v223 * v219;
          v225 = v221;
          if (v224 == v220)
          {
LABEL_209:
            *(a1 + 672) = v225 + v220;
            v226 = *(a1 + 664) + v221;
            v196 = *(v9 + 4) & 0xFFFFFF3F | 0x40;
            *(v9 + 4) = v196;
            *(v9 + 6400) = v226;
            *(v9 + 6408) = v220;
LABEL_210:
            if (*(a1 + 392) == 1)
            {
              v227 = *(a1 + 664) + *(a1 + 396);
              v196 = v196 & 0xFFFFF3FF | 0x400;
              *(v9 + 4) = v196;
              *(v9 + 6424) = v227;
              *(v9 + 6432) = *(a1 + 380) * *(a1 + 384);
              if (*(a1 + 420) != 1)
              {
                goto LABEL_212;
              }
            }

            else if (*(a1 + 420) != 1)
            {
LABEL_212:
              if (!v82)
              {
                return 1;
              }

LABEL_213:
              *(v9 + 5336) = *(a1 + 608);
              *(v9 + 5340) = 0x80000000;
              *(v9 + 5344) = 0;
              *(v9 + 5208) = 0x600000006;
              *(v9 + 5180) = 0x80000;
              return 1;
            }

            v228 = *(a1 + 664) + *(a1 + 424);
            *(v9 + 4) = v196 & 0xFFFFCFFF | 0x1000;
            *(v9 + 6436) = v228;
            *(v9 + 6444) = *(a1 + 408) * *(a1 + 412);
            if (!v82)
            {
              return 1;
            }

            goto LABEL_213;
          }

          if ((sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwCvdAllConfigurationUtilsImpl.h", 505, "size == extra_input_size", 24, &unk_1E549A011, 0, sub_1E548FDE0) & 1) == 0)
          {
            v225 = *(a1 + 672);
            v221 = *(a1 + 564);
            goto LABEL_209;
          }

          goto LABEL_218;
        }

        *(a1 + 532) = 1;
        *(a1 + 536) = 0;
        v216 = *(a1 + 624);
        *(a1 + 512) = 1;
        *(a1 + 516) = v213;
        *(a1 + 520) = v214;
        v217 = (v213 + 63) & 0xFFFFFFC0;
        *(a1 + 524) = v217;
        *(a1 + 528) = v216;
        if (v217 * v214 != v215 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwCvdAllConfigurationUtilsImpl.h", 484, "size == data_segment_size", 25, &unk_1E549A011, 0, sub_1E548FDE0))
        {
          goto LABEL_218;
        }

        v196 = *(v9 + 4) & 0xFFFFFFCF | 0x10;
        *(v9 + 4) = v196;
        *(v9 + 6388) = *(a1 + 664);
        *(v9 + 6396) = v215;
        goto LABEL_205;
      }
    }

    else
    {
      v99 = 0;
    }

    v115 = v99;
    v99 = v67 & 0xFFFFFFFFFFFFFFFCLL;
    v116 = (v9 + 4 * v115 + 564);
    v117 = v115 - v99;
    v118.i64[0] = 0xFF000000FFLL;
    v118.i64[1] = 0xFF000000FFLL;
    do
    {
      v119.i64[0] = __PAIR64__(HIDWORD(*v116), *v116) & 0xFFFFFFFEFFFFFFFELL;
      v119.i32[2] = v116[1] & 0xFFFFFFFE;
      v119.i32[3] = HIDWORD(*v116) & 0xFFFFFFFE;
      v120 = vorrq_s8(v119, vandq_s8(vmovl_u16(vdup_n_s16(*(a2 + 43))), v118));
      *v116 = v120;
      *v116 = vorrq_s8(vshll_n_s16(vdup_lane_s16(vand_s8(*(a2 + 46), 0x3F003F003F003FLL), 0), 0x10uLL), (*&v120 & __PAIR128__(0xFFC0FFFFFFC0FFFFLL, 0xFFC0FFFFFFC0FFFFLL)));
      v116 += 2;
      v117 += 4;
    }

    while (v117);
    goto LABEL_139;
  }

  return 0;
}

__n128 sub_1E54115BC(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v4 = a1;
  v5 = *(a1 + 832);
  v6 = *(a1 + 16);
  v32 = (*(*a1 + 72))(a1);
  if (v6)
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v33 = 28 * v6;
    v12 = v4;
    do
    {
      if (((3 << v8) & v5[101]) != 0)
      {
        v13 = *(v4 + 32) + v10;
        v14 = sub_1E5478AA8(a2, v9);
        v15 = sub_1E5478AA8(a3, v9);
        *v13 = 1;
        *(v13 + 4) = 2 * v14;
        *(v13 + 8) = v15;
        v16 = (2 * v14 + 63) & 0xFFFFFFC0;
        *(v13 + 12) = v16;
        *(v13 + 16) = v11;
        v11 += v16 * v15;
      }

      v4 = v12;
      if (((3 << v8) & v5[102]) != 0)
      {
        v17 = *(v12 + 104) + v10;
        v18 = sub_1E5478AA8(a2, v9);
        v19 = sub_1E5478AA8(a3, v9);
        *v17 = 1;
        *(v17 + 4) = 2 * v18;
        *(v17 + 8) = v19;
        v20 = (4 * v18 + 63) & 0xFFFFFFC0;
        *(v17 + 12) = v20;
        *(v17 + 16) = v11;
        v11 += v20 * v19;
      }

      v10 += 28;
      ++v9;
      v8 += 2;
    }

    while (v33 != v10);
  }

  else
  {
    v11 = 0;
  }

  if (v5[545])
  {
    v11 += sub_1E544E3D8(0x186A00u, v11, 64, v4 + 288);
  }

  if (v5[103])
  {
    v11 += sub_1E544E3D8(8 * v5[486], v11, 64, v4 + 316);
  }

  v21 = (v5[544] >> 2) & 3;
  if (v21 > 1)
  {
    if (v21 == 3)
    {
      v22 = 76;
    }

    else
    {
      v22 = 44;
    }
  }

  else
  {
    if (!v21)
    {
      goto LABEL_29;
    }

    v22 = 28;
  }

  v23 = v5[486] * v22;
  v24 = (v23 + 65471) / 0xFFC0;
  if (v23 >= 0xFFC1)
  {
    v25 = (v23 + 65471) / 0xFFC0;
  }

  else
  {
    v25 = 1;
  }

  if (v23 >= 0xFFC1)
  {
    v26 = 65472;
  }

  else
  {
    v26 = (v23 + 63) & 0x1FFC0;
  }

  *(v4 + 204) = 1;
  *(v4 + 208) = v26;
  *(v4 + 212) = v25;
  *(v4 + 216) = v26;
  *(v4 + 220) = v11;
  v27 = v11 + v26 * v25;
  if (v23 >= 0xFFC1)
  {
    v28 = 65472;
  }

  else
  {
    v24 = 1;
    v28 = (v23 + 63) & 0x1FFC0;
  }

  *(v4 + 176) = 1;
  *(v4 + 180) = v28;
  *(v4 + 184) = v24;
  *(v4 + 188) = v28;
  *(v4 + 192) = v27;
  v11 = v27 + v28 * v24;
LABEL_29:
  v29 = *(v4 + 152);
  v30 = (v32 + 63) & 0xFFFFFFC0;
  *v29 = 1;
  *(v29 + 4) = v30;
  *(v29 + 8) = 1;
  *(v29 + 12) = v30;
  *(v29 + 16) = v11;
  v31 = v11 + v30;
  if (*(v4 + 372) == 1)
  {
    *(v4 + 388) = v31;
    v31 += *(v4 + 380) * *(v4 + 384);
  }

  if (*(v4 + 400) == 1)
  {
    *(v4 + 416) = v31;
    *(v4 + 360) = *(v4 + 388);
    result = *(v4 + 372);
    *(v4 + 344) = result;
    *(v4 + 364) = 0;
    *(v4 + 368) = 0;
  }

  return result;
}

void *sub_1E54118C4(uint64_t a1, _DWORD *a2, int a3, int a4)
{
  if (a4 != 8 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwColl.cpp", 196, "input_format == CISP_INPUT_FORMAT_RAW8", 38, &unk_1E549A011, 0, sub_1E548FDE0))
  {
    goto LABEL_10;
  }

  v7 = *(a1 + 856);
  if (a3 || (v8 = *(a1 + 832), *(a1 + 840) - v8 != 6528))
  {
    if ((sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwCvdAllConfigurationUtilsImpl.h", 42, "cvd_all_cfg.size() == 1 && octave == 0 && Operation buffer is only programmed once for flow2", 94, &unk_1E549A011, 0, sub_1E548FDE0) & 1) == 0)
    {
      v8 = *(a1 + 832);
      goto LABEL_7;
    }

LABEL_10:
    abort();
  }

LABEL_7:
  *a2 = -1;
  a2[1] = v7;
  a2[3] = 6528;

  return memcpy(a2 + 4, v8, 0x1980uLL);
}

uint64_t sub_1E54119C4(uint64_t a1, _DWORD *a2, int a3, unsigned int a4, unsigned int a5, unsigned int a6, int a7)
{
  if (a7 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwColl.cpp", 202, "octave == 0", 11, &unk_1E549A011, 0, sub_1E548FDE0))
  {
    abort();
  }

  v13 = (*(*a1 + 56))(a1);
  v14 = *(a1 + 24);

  return sub_1E5411AA4(a2, v13, a3, a4, a5, a6, v14, (a1 + 32));
}

uint64_t sub_1E5411AA4(_DWORD *a1, size_t a2, int a3, unsigned int a4, unsigned int a5, unsigned int a6, int a7, uint64_t *a8)
{
  bzero(a1, a2);
  *a1 = -1;
  a1[1] = a3 | 0x80000000;
  *(a1 + 1) = 0;
  a1[38] |= 0x7FFFFFFFu;
  a1[59] |= 0x7FFFFFFFu;
  a1[80] |= 0x7FFFFFFFu;
  a1[101] |= 0x7FFFFFFFu;
  a1[122] |= 0x7FFFFFFFu;
  a1[143] |= 0x7FFFFFFFu;
  a1[164] |= 0x7FFFFFFFu;
  a1[185] |= 0x7FFFFFFFu;
  a1[206] |= 0x7FFFFFFFu;
  a1[227] |= 0x7FFFFFFFu;
  a1[248] |= 0x7FFFFFFFu;
  a1[269] |= 0x7FFFFFFFu;
  a1[290] |= 0x7FFFFFFFu;
  a1[311] |= 0x7FFFFFFFu;
  a1[332] |= 0x7FFFFFFFu;
  a1[353] |= 0x7FFFFFFFu;
  a1[374] |= 0x7FFFFFFFu;
  a1[395] |= 0x7FFFFFFFu;
  v15 = a8[1] - *a8;
  *(a1 + 18) = 0x100000012;
  if (((0x6DB6DB6DB6DB6DB7 * (v15 >> 2)) & 0xFFFFFFFFFFFFFFFELL) != 4 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwCvdAllConfigurationUtilsImpl.h", 221, "num_octaves == 4 || num_octaves == 5 && number of octaves can only be 4 or 5", 78, &unk_1E549A011, 0, sub_1E548FDE0))
  {
    abort();
  }

  result = sub_1E544DF60((a1 + 80), a4, a5, a6, 8, 0, 0);
  v17 = *a8;
  if (**a8 == 1)
  {
    result = sub_1E544DF60((a1 + 101), *(v17 + 4), *(v17 + 8), *(v17 + 12), 8, 1, *(v17 + 16) + a7);
    v17 = *a8;
    if (*(*a8 + 28) != 1)
    {
LABEL_5:
      if (*(v17 + 56) != 1)
      {
        goto LABEL_6;
      }

      goto LABEL_15;
    }
  }

  else if (*(v17 + 28) != 1)
  {
    goto LABEL_5;
  }

  result = sub_1E544DF60((a1 + 122), *(v17 + 32), *(v17 + 36), *(v17 + 40), 8, 1, *(v17 + 44) + a7);
  v17 = *a8;
  if (*(*a8 + 56) != 1)
  {
LABEL_6:
    if (*(v17 + 84) != 1)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  result = sub_1E544DF60((a1 + 143), *(v17 + 60), *(v17 + 64), *(v17 + 68), 8, 1, *(v17 + 72) + a7);
  v17 = *a8;
  if (*(*a8 + 84) != 1)
  {
LABEL_7:
    v18 = a8[9];
    if (*v18 != 1)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:
  result = sub_1E544DF60((a1 + 164), *(v17 + 88), *(v17 + 92), *(v17 + 96), 8, 1, *(v17 + 100) + a7);
  v18 = a8[9];
  if (*v18 != 1)
  {
LABEL_8:
    if (*(v18 + 28) != 1)
    {
      goto LABEL_9;
    }

    goto LABEL_18;
  }

LABEL_17:
  result = sub_1E544DF60((a1 + 101), *(v18 + 4), *(v18 + 8), *(v18 + 12), 4, 1, *(v18 + 16) + a7);
  v18 = a8[9];
  if (*(v18 + 28) != 1)
  {
LABEL_9:
    if (*(v18 + 56) != 1)
    {
      goto LABEL_10;
    }

    goto LABEL_19;
  }

LABEL_18:
  result = sub_1E544DF60((a1 + 122), *(v18 + 32), *(v18 + 36), *(v18 + 40), 4, 1, *(v18 + 44) + a7);
  v18 = a8[9];
  if (*(v18 + 56) != 1)
  {
LABEL_10:
    if (*(v18 + 84) != 1)
    {
      goto LABEL_11;
    }

    goto LABEL_20;
  }

LABEL_19:
  result = sub_1E544DF60((a1 + 143), *(v18 + 60), *(v18 + 64), *(v18 + 68), 4, 1, *(v18 + 72) + a7);
  v18 = a8[9];
  if (*(v18 + 84) != 1)
  {
LABEL_11:
    if (v15 != 140)
    {
      goto LABEL_25;
    }

    goto LABEL_21;
  }

LABEL_20:
  result = sub_1E544DF60((a1 + 164), *(v18 + 88), *(v18 + 92), *(v18 + 96), 4, 1, *(v18 + 100) + a7);
  if (v15 != 140)
  {
    goto LABEL_25;
  }

LABEL_21:
  if (*(*a8 + 112) == 1)
  {
    result = sub_1E544DF60((a1 + 185), *(*a8 + 116), *(*a8 + 120), *(*a8 + 124), 8, 1, *(*a8 + 128) + a7);
  }

  v19 = a8[9];
  if (*(v19 + 112) == 1)
  {
    result = sub_1E544DF60((a1 + 185), *(v19 + 116), *(v19 + 120), *(v19 + 124), 4, 1, *(v19 + 128) + a7);
  }

LABEL_25:
  v20 = a8[15];
  if (*v20 == 1)
  {
    result = sub_1E544DF60((a1 + 395), *(v20 + 4), *(v20 + 8), *(v20 + 12), 8, 1, *(v20 + 16) + a7);
    if (*(a8 + 256) != 1)
    {
LABEL_27:
      if (*(a8 + 284) != 1)
      {
        goto LABEL_28;
      }

      goto LABEL_40;
    }
  }

  else if (*(a8 + 256) != 1)
  {
    goto LABEL_27;
  }

  result = sub_1E544DF60((a1 + 206), *(a8 + 65), *(a8 + 66), *(a8 + 67), 8, 1, *(a8 + 68) + a7);
  if (*(a8 + 284) != 1)
  {
LABEL_28:
    if (*(a8 + 144) != 1)
    {
      goto LABEL_29;
    }

    goto LABEL_41;
  }

LABEL_40:
  result = sub_1E544DF60((a1 + 227), *(a8 + 72), *(a8 + 73), *(a8 + 74), 8, 1, *(a8 + 75) + a7);
  if (*(a8 + 144) != 1)
  {
LABEL_29:
    if (*(a8 + 172) != 1)
    {
      goto LABEL_30;
    }

    goto LABEL_42;
  }

LABEL_41:
  result = sub_1E544DF60((a1 + 206), *(a8 + 37), *(a8 + 38), *(a8 + 39), 8, 1, *(a8 + 40) + a7);
  if (*(a8 + 172) != 1)
  {
LABEL_30:
    if (*(a8 + 340) != 1)
    {
      goto LABEL_31;
    }

    goto LABEL_43;
  }

LABEL_42:
  result = sub_1E544DF60((a1 + 227), *(a8 + 44), *(a8 + 45), *(a8 + 46), 8, 1, *(a8 + 47) + a7);
  if (*(a8 + 340) != 1)
  {
LABEL_31:
    if (*(a8 + 312) != 1)
    {
      goto LABEL_32;
    }

    goto LABEL_44;
  }

LABEL_43:
  result = sub_1E544DF60((a1 + 248), *(a8 + 86), *(a8 + 87), *(a8 + 88), 8, 1, *(a8 + 89) + a7);
  if (*(a8 + 312) != 1)
  {
LABEL_32:
    if (*(a8 + 368) != 1)
    {
      goto LABEL_33;
    }

    goto LABEL_45;
  }

LABEL_44:
  result = sub_1E544DF60((a1 + 59), *(a8 + 79), *(a8 + 80), *(a8 + 81), 8, 2, *(a8 + 82) + a7);
  if (*(a8 + 368) != 1)
  {
LABEL_33:
    if (*(a8 + 452) != 1)
    {
      goto LABEL_34;
    }

LABEL_46:
    result = sub_1E544DF60((a1 + 38), *(a8 + 114), *(a8 + 115), *(a8 + 116), 8, 3, *(a8 + 117));
    if (*(a8 + 480) != 1)
    {
      return result;
    }

    goto LABEL_35;
  }

LABEL_45:
  result = sub_1E544DF60((a1 + 332), *(a8 + 93), *(a8 + 94), *(a8 + 95), 8, 1, *(a8 + 96) + a7);
  if (*(a8 + 452) == 1)
  {
    goto LABEL_46;
  }

LABEL_34:
  if (*(a8 + 480) != 1)
  {
    return result;
  }

LABEL_35:
  v21 = *(a8 + 121);
  v22 = *(a8 + 122);
  v23 = *(a8 + 123);
  v24 = *(a8 + 124);

  return sub_1E544DF60((a1 + 269), v21, v22, v23, 8, 3, v24);
}

__n128 sub_1E5412104(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = 0;
  *(a3 + 92) = *(a2 + 100);
  v4 = *a2;
  *(a3 + 8) = *(a2 + 4);
  *a3 = v4;
  v5 = *(a2 + 10);
  *(a3 + 18) = *(a2 + 9);
  *(a3 + 10) = v5;
  v6 = *(a2 + 20);
  *(a3 + 28) = *(a2 + 14);
  *(a3 + 20) = v6;
  v7 = *(a2 + 30);
  *(a3 + 38) = *(a2 + 19);
  *(a3 + 30) = v7;
  v8 = a2[5];
  *(a3 + 48) = *(a2 + 24);
  *(a3 + 40) = v8;
  v9 = *(a2 + 52);
  v10 = *(a2 + 68);
  *(a3 + 84) = *(a2 + 84);
  *(a3 + 68) = v10;
  *(a3 + 52) = v9;
  v11 = *(a2 + 126);
  *(a3 + 124) = *(a2 + 71);
  *(a3 + 108) = v11;
  v12 = *(a2 + 108);
  *(a3 + 142) = *(a2 + 62);
  *(a3 + 126) = v12;
  v13 = *(a2 + 82);
  *(a3 + 144) = *(a2 + 81);
  *(a3 + 160) = v13;
  v14 = (a2 + 49);
  do
  {
    v15 = *(a3 + 240 + v3);
    v16 = vmovl_u16(v14[-14]);
    *v15 = vmovl_u16(v14[-15]);
    v15[1] = v16;
    v17 = vmovl_u16(v14[-12]);
    v15[2] = vmovl_u16(v14[-13]);
    v15[3] = v17;
    v18 = vmovl_u16(v14[-10]);
    v15[4] = vmovl_u16(v14[-11]);
    v15[5] = v18;
    v19 = vmovl_u16(v14[-8]);
    v15[6] = vmovl_u16(v14[-9]);
    v15[7] = v19;
    v20 = vmovl_u16(v14[-6]);
    v15[8] = vmovl_u16(v14[-7]);
    v15[9] = v20;
    v21 = vmovl_u16(v14[-4]);
    v15[10] = vmovl_u16(v14[-5]);
    v15[11] = v21;
    v22 = vmovl_u16(v14[-2]);
    v15[12] = vmovl_u16(v14[-3]);
    v15[13] = v22;
    v23 = vmovl_u16(v14[-1]);
    v24 = vmovl_u16(*v14);
    v3 += 24;
    v14 += 16;
    v15[14] = v23;
    v15[15] = v24;
  }

  while (v3 != 192);
  *(a3 + 176) = *(a2 + 664);
  *(a3 + 436) = *(a2 + 24);
  *(a3 + 180) = *(a2 + 100);
  *(a3 + 196) = *(a2 + 101);
  *(a3 + 212) = *(a2 + 102);
  *(a3 + 228) = a2[206];
  *(a3 + 236) = *(a2 + 414);
  *(a3 + 432) = *(a2 + 866);
  v25 = *(a2 + 1660);
  v26 = *(a2 + 1676);
  *(a3 + 512) = *(a2 + 423);
  *(a3 + 480) = v25;
  *(a3 + 496) = v26;
  result = *(a2 + 106);
  v28 = *(a2 + 107);
  *(a3 + 548) = *(a2 + 432);
  *(a3 + 516) = result;
  *(a3 + 532) = v28;
  return result;
}

uint64_t sub_1E54122B0(uint64_t a1, int a2, unsigned int a3)
{
  switch(a2)
  {
    case 0:
      return *(a1 + 32) + 28 * a3;
    case 1:
      if (*(a1 + 28) != 1)
      {
        v15 = a3;
        v16 = sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwColl.cpp", 292, "FlowType::kFlow1 == flow_ && Only valid for flow1", 51, &unk_1E549A011, 0, sub_1E548FDE0);
        a3 = v15;
        if (v16)
        {
          goto LABEL_54;
        }
      }

      result = *(a1 + 56) + 28 * a3;
      break;
    case 2:
      if (*(a1 + 28) != 1)
      {
        v11 = a3;
        v12 = sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwColl.cpp", 295, "FlowType::kFlow1 == flow_ && Only valid for flow1", 51, &unk_1E549A011, 0, sub_1E548FDE0);
        a3 = v11;
        if (v12)
        {
          goto LABEL_54;
        }
      }

      result = *(a1 + 80) + 28 * a3;
      break;
    case 3:
      return *(a1 + 104) + 28 * a3;
    case 4:
      if (*(a1 + 28) != 1)
      {
        v7 = a3;
        v8 = sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwColl.cpp", 300, "FlowType::kFlow1 == flow_ && Only valid for flow1", 51, &unk_1E549A011, 0, sub_1E548FDE0);
        a3 = v7;
        if (v8)
        {
          goto LABEL_54;
        }
      }

      result = *(a1 + 128) + 28 * a3;
      break;
    case 5:
      v17 = *(a1 + 28);
      if (v17 != 1 && (a3 || v17 != 2))
      {
        v18 = a3;
        v19 = sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwColl.cpp", 304, "(FlowType::kFlow1 == flow_) || ((FlowType::kFlow2 == flow_) && octave == 0) && Invalid request", 96, &unk_1E549A011, 0, sub_1E548FDE0);
        a3 = v18;
        if (v19)
        {
          goto LABEL_54;
        }
      }

      result = *(a1 + 152) + 28 * a3;
      break;
    case 6:
      if (*(a1 + 28) != 2)
      {
        v20 = a3;
        v21 = sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwColl.cpp", 307, "FlowType::kFlow2 == flow_ && Only valid for flow2", 51, &unk_1E549A011, 0, sub_1E548FDE0);
        a3 = v20;
        if (v21)
        {
          goto LABEL_54;
        }
      }

      if (a3 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwColl.cpp", 308, "octave == 0 && Invalid request", 32, &unk_1E549A011, 0, sub_1E548FDE0))
      {
        goto LABEL_54;
      }

      result = a1 + 176;
      break;
    case 7:
      if (*(a1 + 28) != 2)
      {
        v13 = a3;
        v14 = sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwColl.cpp", 311, "FlowType::kFlow2 == flow_ && Only valid for flow2", 51, &unk_1E549A011, 0, sub_1E548FDE0);
        a3 = v13;
        if (v14)
        {
          goto LABEL_54;
        }
      }

      if (a3 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwColl.cpp", 312, "octave == 0 && Invalid request", 32, &unk_1E549A011, 0, sub_1E548FDE0))
      {
        goto LABEL_54;
      }

      result = a1 + 204;
      break;
    case 8:
      if (*(a1 + 28) != 2)
      {
        v24 = a3;
        v25 = sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwColl.cpp", 315, "FlowType::kFlow2 == flow_ && Only valid for flow2", 51, &unk_1E549A011, 0, sub_1E548FDE0);
        a3 = v24;
        if (v25)
        {
          goto LABEL_54;
        }
      }

      if (a3 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwColl.cpp", 316, "octave == 0 && Invalid request", 32, &unk_1E549A011, 0, sub_1E548FDE0))
      {
        goto LABEL_54;
      }

      result = a1 + 232;
      break;
    case 9:
      if (*(a1 + 28) != 2)
      {
        v9 = a3;
        v10 = sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwColl.cpp", 319, "FlowType::kFlow2 == flow_ && Only valid for flow2", 51, &unk_1E549A011, 0, sub_1E548FDE0);
        a3 = v9;
        if (v10)
        {
          goto LABEL_54;
        }
      }

      if (a3 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwColl.cpp", 320, "octave == 0 && Invalid request", 32, &unk_1E549A011, 0, sub_1E548FDE0))
      {
        goto LABEL_54;
      }

      result = a1 + 260;
      break;
    case 10:
      if (*(a1 + 28) != 2)
      {
        v22 = a3;
        v23 = sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwColl.cpp", 323, "FlowType::kFlow2 == flow_ && Only valid for flow2", 51, &unk_1E549A011, 0, sub_1E548FDE0);
        a3 = v22;
        if (v23)
        {
          goto LABEL_54;
        }
      }

      if (a3 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwColl.cpp", 324, "octave == 0 && Invalid request", 32, &unk_1E549A011, 0, sub_1E548FDE0))
      {
        goto LABEL_54;
      }

      result = a1 + 288;
      break;
    case 11:
      if (*(a1 + 28) != 2)
      {
        v5 = a3;
        v6 = sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwColl.cpp", 327, "FlowType::kFlow2 == flow_ && Only valid for flow2", 51, &unk_1E549A011, 0, sub_1E548FDE0);
        a3 = v5;
        if (v6)
        {
          goto LABEL_54;
        }
      }

      if (a3 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwColl.cpp", 328, "octave == 0 && Invalid request", 32, &unk_1E549A011, 0, sub_1E548FDE0))
      {
        goto LABEL_54;
      }

      result = a1 + 316;
      break;
    case 12:
      if (a3 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwColl.cpp", 331, "octave == 0 && Invalid request", 32, &unk_1E549A011, 0, sub_1E548FDE0))
      {
        goto LABEL_54;
      }

      result = a1 + 372;
      break;
    case 13:
      if (a3 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwColl.cpp", 334, "octave == 0 && Invalid request", 32, &unk_1E549A011, 0, sub_1E548FDE0))
      {
LABEL_54:
        abort();
      }

      result = a1 + 400;
      break;
    default:
      sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwColl.cpp", 337, &unk_1E549A011, 0, "Unsupported buffer type", 23, sub_1E548FDE0);
      abort();
  }

  return result;
}

uint64_t sub_1E5412994(uint64_t result, int32x4_t *a2)
{
  v3 = result;
  if (*(result + 28) != 2)
  {
    result = sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwColl.cpp", 343, "FlowType::kFlow2 == flow_ && Only supported in flow2", 54, &unk_1E549A011, 0, sub_1E548FDE0);
    if (result)
    {
      abort();
    }
  }

  v4 = *(v3 + 16);
  v5 = 2 * v4 - 2;
  if (2 * v4 != 2)
  {
    v6 = *(v3 + 832);
    if (v5 < 4)
    {
      v7 = 0;
      goto LABEL_15;
    }

    if (v5 >= 0x10)
    {
      v7 = v5 & 0xFFFFFFFFFFFFFFF0;
      v8 = (v6 + 2388);
      v9 = a2 + 4;
      v10 = v5 & 0xFFFFFFFFFFFFFFF0;
      do
      {
        v11 = vuzp1q_s16(vuzp1q_s32(v9[-4], v9[-3]), vuzp1q_s32(v9[-2], v9[-1]));
        v12 = vuzp1q_s16(vuzp1q_s32(*v9, v9[1]), vuzp1q_s32(v9[2], v9[3]));
        v8[-1] = v11;
        *v8 = v12;
        *(v8 - 34) = v11;
        *(v8 - 18) = v12;
        v8 += 2;
        v9 += 8;
        v10 -= 16;
      }

      while (v10);
      if (v7 == v5)
      {
        return result;
      }

      if ((v5 & 0xC) == 0)
      {
LABEL_15:
        v19 = v7 - 2 * v4 + 2;
        v20 = (v6 + 2 * v7 + 2354);
        v21 = &a2->i16[4 * v7];
        do
        {
          v22 = *v21;
          v21 += 4;
          v20[9] = v22;
          *v20++ = v22;
        }

        while (!__CFADD__(v19++, 1));
        return result;
      }
    }

    else
    {
      v7 = 0;
    }

    v13 = v7;
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL;
    v14 = (v6 + 2 * v13 + 2372);
    v15 = (a2 + 8 * v13);
    v16 = v13 - (v5 & 0xFFFFFFFFFFFFFFFCLL);
    do
    {
      v18 = *v15;
      v17 = v15[1];
      v15 += 2;
      *v17.i8 = vmovn_s32(vuzp1q_s32(v18, v17));
      *v14 = v17.i64[0];
      *(v14++ - 18) = v17.i64[0];
      v16 += 4;
    }

    while (v16);
    if (v7 != v5)
    {
      goto LABEL_15;
    }
  }

  return result;
}

uint64_t sub_1E5412B04()
{
  result = sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwColl.cpp", 353, "0 && Update config not supported", 34, &unk_1E549A011, 0, sub_1E548FDE0);
  if (result)
  {
    abort();
  }

  return result;
}

__n128 sub_1E5412B58@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  v2 = (*(a1 + 832) + 2188);
  v3 = *(*(a1 + 832) + 2196);
  v4.n128_u64[0] = *v2;
  v4.n128_u64[1] = HIDWORD(*v2);
  v5 = v4;
  v4.n128_u64[0] = v3;
  v4.n128_u64[1] = HIDWORD(v3);
  *a2 = v5;
  a2[1] = v4;
  v5.n128_u64[0] = v2[2];
  v6 = v2[3];
  v4.n128_u64[0] = v5.n128_u32[0];
  v4.n128_u64[1] = v5.n128_u32[1];
  result = v4;
  v4.n128_u64[0] = v6;
  v4.n128_u64[1] = HIDWORD(v6);
  a2[2] = result;
  a2[3] = v4;
  return result;
}

uint64_t sub_1E5412B94(uint64_t result, int a2)
{
  v3 = result;
  if (*(result + 28) != 2)
  {
    result = sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwColl.cpp", 371, "FlowType::kFlow2 == flow_ && Only supported in flow2", 54, &unk_1E549A011, 0, sub_1E548FDE0);
    if (result)
    {
      abort();
    }
  }

  *(*(v3 + 832) + 3908) = a2;
  return result;
}

uint64_t sub_1E5412C18(uint64_t result, int *a2, uint64_t a3)
{
  v3 = *a2;
  *(a3 + 8) = 2;
  *(a3 + 12) = v3;
  if (v3 == 1)
  {
    v6 = 0x20000;
    v4 = 0x80000;
    v5 = 0x200000;
    goto LABEL_5;
  }

  if (v3 == 2)
  {
    v4 = 98304;
    v5 = 0x400000;
    v6 = 98304;
LABEL_5:
    *a3 = *(result + 864) + v5;
    *(a3 + 16) = 0;
    *(a3 + 20) = v4;
    *(a3 + 24) = 0x100000;
    *(a3 + 28) = v6;
    return result;
  }

  *a3 = -1;
  *(a3 + 16) = -1;
  *(a3 + 20) = 0;
  *(a3 + 24) = 0;
  *(a3 + 28) = 0;
  return result;
}

double sub_1E5412C94(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwPlatformInterface.h", 423, "(operation_buffer_base_addr_) && HwPlatformInterface::InitLaccOperation() called with NULL argument.", 102, &unk_1E549A011, 0, sub_1E548FDE0);
    abort();
  }

  *a2 = xmmword_1E5491D70;
  *&result = 0x198000000000;
  *(a2 + 16) = 0x198000000000;
  return result;
}

double sub_1E5412CFC(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v5 = *(a2 + 4);
  if (qword_1EE30C490 == 1)
  {
    v6 = qword_1EE30C488;
    v7 = qword_1EE30C490;
    if ((qword_1EE30C490 & 1) == 0)
    {
      goto LABEL_6;
    }

LABEL_5:
    if (v6 == 33072)
    {
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  sub_1E548F388();
  v6 = sub_1E548ED74();
  qword_1EE30C488 = v6;
  LOBYTE(qword_1EE30C490) = v8;
  v7 = v8;
  if (v8)
  {
    goto LABEL_5;
  }

LABEL_6:
  if ((v7 & 1) == 0 && (sub_1E548F388(), v6 = sub_1E548ED74(), qword_1EE30C488 = v6, LOBYTE(qword_1EE30C490) = v9, (v9 & 1) == 0) || v6 != 33074)
  {
    if (sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwCvdAllConfigurationUtils.h", 137, "HasHardwareFeaturePointsColl() || HasHardwareFeaturePointsDonan() && Configuration not supported.", 99, &unk_1E549A011, 0, sub_1E548FDE0))
    {
      goto LABEL_48;
    }
  }

LABEL_10:
  v10 = *a3;
  if (v10 >= 4)
  {
    if (sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwCvdAllConfigurationUtils.h", 168, "(config.laccMode < 4) && LaccMode has to be set to a value between 0 and 3 inclusive.", 87, &unk_1E549A011, 0, sub_1E548FDE0))
    {
      goto LABEL_48;
    }

    LOBYTE(v10) = *a3;
  }

  v11 = a2 + v5;
  *(v11 + 20) = *(v11 + 20) & 0xFFFFFFFC | v10 & 3;
  *(v11 + 80) &= ~1u;
  *(v11 + 144) |= 1uLL;
  *(v11 + 3856) |= 1u;
  if (a3[2] >= 3u && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwCvdAllConfigurationUtils.h", 205, "(config.rmaInitiator[i] >= 0 && config.rmaInitiator[i] < 3) && RMA initiator setting is either 0, 1, or 2.", 108, &unk_1E549A011, 0, sub_1E548FDE0) || a3[6] >= 3u && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwCvdAllConfigurationUtils.h", 207, "(config.wmaInitiator[i] >= 0 && config.wmaInitiator[i] < 3) && WMA initiator setting is either 0, 1, or 2.", 108, &unk_1E549A011, 0, sub_1E548FDE0) || a3[3] >= 3u && (sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwCvdAllConfigurationUtils.h", 205, "(config.rmaInitiator[i] >= 0 && config.rmaInitiator[i] < 3) && RMA initiator setting is either 0, 1, or 2.", 108, &unk_1E549A011, 0, sub_1E548FDE0) & 1) != 0 || a3[7] >= 3u && (sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwCvdAllConfigurationUtils.h", 207, "(config.wmaInitiator[i] >= 0 && config.wmaInitiator[i] < 3) && WMA initiator setting is either 0, 1, or 2.", 108, &unk_1E549A011, 0, sub_1E548FDE0) & 1) != 0 || a3[4] >= 3u && (sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwCvdAllConfigurationUtils.h", 205, "(config.rmaInitiator[i] >= 0 && config.rmaInitiator[i] < 3) && RMA initiator setting is either 0, 1, or 2.", 108, &unk_1E549A011, 0, sub_1E548FDE0) & 1) != 0 || a3[8] >= 3u && (sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwCvdAllConfigurationUtils.h", 207, "(config.wmaInitiator[i] >= 0 && config.wmaInitiator[i] < 3) && WMA initiator setting is either 0, 1, or 2.", 108, &unk_1E549A011, 0, sub_1E548FDE0) & 1) != 0 || a3[5] >= 3u && (sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwCvdAllConfigurationUtils.h", 205, "(config.rmaInitiator[i] >= 0 && config.rmaInitiator[i] < 3) && RMA initiator setting is either 0, 1, or 2.", 108, &unk_1E549A011, 0, sub_1E548FDE0) & 1) != 0 || a3[9] >= 3u && (sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwCvdAllConfigurationUtils.h", 207, "(config.wmaInitiator[i] >= 0 && config.wmaInitiator[i] < 3) && WMA initiator setting is either 0, 1, or 2.", 108, &unk_1E549A011, 0, sub_1E548FDE0) & 1) != 0)
  {
LABEL_48:
    abort();
  }

  if (a3[2])
  {
    *(v11 + 20) = *(v11 + 20) & 0xFFFFFFF3 | (4 * (a3[2] & 3));
    *(v11 + 6392) = *(a3 + 162);
    *(v11 + 6400) = *(a3 + 326);
  }

  if (a3[3])
  {
    *(v11 + 20) = *(v11 + 20) & 0xFFFFFFCF | (16 * (a3[3] & 3));
    *(v11 + 6404) = *(a3 + 327);
    *(v11 + 6408) = *(a3 + 164);
  }

  if (a3[4])
  {
    *(v11 + 20) = *(v11 + 20) & 0xFFFFFF3F | ((a3[4] & 3) << 6);
    *(v11 + 6416) = *(a3 + 165);
    *(v11 + 6424) = *(a3 + 332);
  }

  if (a3[5])
  {
    *(v11 + 20) = *(v11 + 20) & 0xFFFFFCFF | ((a3[5] & 3) << 8);
    *(v11 + 6428) = *(a3 + 333);
    *(v11 + 6432) = *(a3 + 167);
  }

  if (a3[6])
  {
    *(v11 + 20) = *(v11 + 20) & 0xFFFFF3FF | ((a3[6] & 3) << 10);
    *(v11 + 6440) = *(a3 + 168);
    *(v11 + 6448) = *(a3 + 338);
  }

  if (a3[7])
  {
    *(v11 + 20) = *(v11 + 20) & 0xFFFFCFFF | ((a3[7] & 3) << 12);
    *(v11 + 6452) = *(a3 + 339);
    *(v11 + 6456) = *(a3 + 170);
  }

  if (a3[8])
  {
    *(v11 + 20) = *(v11 + 20) & 0xFFFF3FFF | ((a3[8] & 3) << 14);
    *(v11 + 6464) = *(a3 + 171);
    *(v11 + 6472) = *(a3 + 344);
  }

  if (a3[9])
  {
    *(v11 + 20) = *(v11 + 20) & 0xFFFCFFFF | ((a3[9] & 3) << 16);
    *(v11 + 6476) = *(a3 + 345);
    *(v11 + 6480) = *(a3 + 173);
  }

  v12 = 0;
  v13 = 4048;
  do
  {
    *(v11 + v12 + 5072) = *&a3[v12 + 12];
    v14 = (v11 + v13);
    *v14 = *&a3[v13 - 3904];
    v14[1] = *&a3[v13 - 3900];
    v14[2] = *&a3[v13 - 3896];
    v14[3] = *&a3[v13 - 3892];
    v14[4] = *&a3[v13 - 3888];
    v14[5] = *&a3[v13 - 3884];
    v14[6] = *&a3[v13 - 3880];
    v14[7] = *&a3[v13 - 3876];
    v12 += 4;
    v13 += 32;
  }

  while (v12 != 128);
  *(v11 + 5216) = *(a3 + 292);
  *(v11 + 5356) = *(a3 + 293);
  *(v11 + 5360) = *(a3 + 294);
  *(v11 + 5364) = *(a3 + 295);
  *(v11 + 5220) = a3[1184];
  result = *(a3 + 1188);
  *(v11 + 5224) = result;
  *(v11 + 5232) = a3[1196];
  *(v11 + 5236) = *(a3 + 300);
  *(v11 + 5252) = a3[1216];
  *(v11 + 5268) = *(a3 + 306);
  *(v11 + 5284) = *(a3 + 310);
  *(v11 + 5300) = a3[1256];
  *(v11 + 5316) = *(a3 + 316);
  *(v11 + 5240) = *(a3 + 301);
  *(v11 + 5256) = a3[1217];
  *(v11 + 5272) = *(a3 + 307);
  *(v11 + 5288) = *(a3 + 311);
  *(v11 + 5304) = a3[1257];
  *(v11 + 5320) = *(a3 + 317);
  *(v11 + 5244) = *(a3 + 302);
  *(v11 + 5260) = a3[1218];
  *(v11 + 5276) = *(a3 + 308);
  *(v11 + 5292) = *(a3 + 312);
  *(v11 + 5308) = a3[1258];
  *(v11 + 5324) = *(a3 + 318);
  *(v11 + 5248) = *(a3 + 303);
  *(v11 + 5264) = a3[1219];
  *(v11 + 5280) = *(a3 + 309);
  *(v11 + 5296) = *(a3 + 313);
  *(v11 + 5312) = a3[1259];
  v16 = *(a3 + 323);
  *(v11 + 5332) = *(a3 + 320);
  *(v11 + 5336) = a3[1284];
  *(v11 + 5340) = a3[1286];
  *(v11 + 5344) = a3[1287];
  *(v11 + 5348) = a3[1288];
  *(v11 + 5352) = v16;
  return result;
}

double sub_1E5413394(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwPlatformInterface.h", 441, "(action_buffer_base_addr_) && HwCrete::InitLaccAction() called with NULL argument.", 84, &unk_1E549A011, 0, sub_1E548FDE0);
    abort();
  }

  *a2 = xmmword_1E5491D80;
  *(a2 + 16) = 0;
  *&result = 0x100000012;
  *(a2 + 152) = 0x100000012;
  *(a2 + 160) |= 0x7FFFFFFFu;
  *(a2 + 244) |= 0x7FFFFFFFu;
  *(a2 + 328) |= 0x7FFFFFFFu;
  *(a2 + 412) |= 0x7FFFFFFFu;
  *(a2 + 496) |= 0x7FFFFFFFu;
  *(a2 + 580) |= 0x7FFFFFFFu;
  *(a2 + 664) |= 0x7FFFFFFFu;
  *(a2 + 748) |= 0x7FFFFFFFu;
  *(a2 + 832) |= 0x7FFFFFFFu;
  *(a2 + 916) |= 0x7FFFFFFFu;
  *(a2 + 1000) |= 0x7FFFFFFFu;
  *(a2 + 1084) |= 0x7FFFFFFFu;
  *(a2 + 1168) |= 0x7FFFFFFFu;
  *(a2 + 1252) |= 0x7FFFFFFFu;
  *(a2 + 1336) |= 0x7FFFFFFFu;
  *(a2 + 1420) |= 0x7FFFFFFFu;
  *(a2 + 1504) |= 0x7FFFFFFFu;
  *(a2 + 1588) |= 0x7FFFFFFFu;
  return result;
}

void sub_1E54134D8(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v6 = a2 + *(a2 + 4);
  if (*(v6 + 144) <= *(a3 + 2) && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwPlatformInterface.h", 466, "(info.index < max_index) && Action buffer index out-of-range", 62, &unk_1E549A011, 0, sub_1E548FDE0))
  {
    abort();
  }

  if (*a3 == 1)
  {
    v7 = v6 + 84 * *(a3 + 2);
    *(v7 + 152) = *(v7 + 152) & 0x80000000 | a4 & 0x7FFFFFFF;
    *(v7 + 166) = *(a3 + 4);
    v8 = *(a3 + 24);
    *(v7 + 164) = *(a3 + 20);
    *(v7 + 162) = v8;
    v9 = *(a3 + 32);
    *(v7 + 160) = *(a3 + 28);
    *(v7 + 156) = v9;
  }
}

uint64_t sub_1E54135A0(uint64_t a1, _OWORD *a2, unint64_t a3)
{
  v4 = a2[201];
  v9[4] = a2[200];
  v9[5] = v4;
  v5 = a2[203];
  v9[6] = a2[202];
  v9[7] = v5;
  v6 = a2[197];
  v9[0] = a2[196];
  v9[1] = v6;
  v7 = a2[199];
  v9[2] = a2[198];
  v9[3] = v7;
  if (a3 >= 0x20 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwPlatformInterface.h", 199, "(reg < grf.size()) && register number out of range.", 53, &unk_1E549A011, 0, sub_1E548FDE0))
  {
    abort();
  }

  return *(v9 + a3);
}

void *sub_1E5413648(uint64_t a1, uint64_t a2, unint64_t a3, void *a4, unint64_t a5)
{
  memcpy(v9, (a2 + 2112), sizeof(v9));
  if (!a4 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwPlatformInterface.h", 208, "val && NULL pointer", 21, &unk_1E549A011, 0, sub_1E548FDE0) || a3 >= 0x20 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwPlatformInterface.h", 209, "(reg < vrf.size()) && register number out of range.", 53, &unk_1E549A011, 0, sub_1E548FDE0))
  {
    goto LABEL_10;
  }

  if (a5)
  {
    if (a5 < 9 || !sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwPlatformInterface.h", 211, "(n <= 8) && number of vector lanes cannot exceed 8", 52, &unk_1E549A011, 0, sub_1E548FDE0))
    {
      return memcpy(a4, &v9[2 * a3], 4 * a5);
    }

LABEL_10:
    abort();
  }

  result = sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwPlatformInterface.h", 210, "(n) && number of vector lanes cannot be 0", 43, &unk_1E549A011, 0, sub_1E548FDE0);
  if (result)
  {
    goto LABEL_10;
  }

  return result;
}

void *sub_1E54137C4(uint64_t a1, uint64_t a2, unint64_t a3, void *a4, unint64_t a5)
{
  memcpy(v9, (a2 + 2112), sizeof(v9));
  if (!a4 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwPlatformInterface.h", 220, "val && NULL pointer", 21, &unk_1E549A011, 0, sub_1E548FDE0) || a3 >= 0x20 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwPlatformInterface.h", 221, "(reg < vrf.size()) && register number out of range.", 53, &unk_1E549A011, 0, sub_1E548FDE0))
  {
    goto LABEL_10;
  }

  if (a5)
  {
    if (a5 < 5 || !sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwPlatformInterface.h", 223, "(n <= 4) && number of vector lanes cannot exceed 4", 52, &unk_1E549A011, 0, sub_1E548FDE0))
    {
      return memcpy(a4, &v9[2 * a3], 8 * a5);
    }

LABEL_10:
    abort();
  }

  result = sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwPlatformInterface.h", 222, "(n) && number of vector lanes cannot be 0", 43, &unk_1E549A011, 0, sub_1E548FDE0);
  if (result)
  {
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_1E5413940(uint64_t a1, _DWORD *a2, unint64_t a3, uint64_t a4, _DWORD *a5)
{
  if (!a4 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwPlatformInterface.h", 229, "val && NULL pointer", 21, &unk_1E549A011, 0, sub_1E548FDE0))
  {
    abort();
  }

  *a5 = 0;
  if (a3 <= 0x7F)
  {
    v9 = *(a2 + (a3 & 0xFFFFFFFFFFFFFFFCLL) + 3136);
LABEL_8:
    *a4 = v9;
    *a5 = 4;
    return 1;
  }

  if (a3 == 2004)
  {
    *a5 = 4;
    v10 = a2[834];
LABEL_12:
    *a4 = v10;
    return 1;
  }

  if (a3 == 2000)
  {
    v9 = a2[835];
    goto LABEL_8;
  }

  if (a3 - 2008 <= 0xB)
  {
    *a5 = 4;
    v10 = *(a2 + (a3 & 0x7FC) + 1336);
    goto LABEL_12;
  }

  if (a3 - 6000 <= 0x3FF)
  {
    *a5 = 32;
    v12 = (a2 + ((a3 - 6000) & 0xFFFFFFFFFFFFFFE0) + ((8 * a3 - 13952) & 0xFFE0));
    v13 = v12[1];
    *a4 = *v12;
    *(a4 + 16) = v13;
    return 1;
  }

  result = 0;
  switch(__ROR8__(a3 - 10000, 2))
  {
    case 0:
      *a5 = 4;
      v10 = a2[848];
      goto LABEL_12;
    case 1:
      *a5 = 4;
      v10 = a2[850];
      goto LABEL_12;
    case 2:
      *a5 = 4;
      v10 = a2[854];
      goto LABEL_12;
    case 5:
      *a5 = 4;
      v10 = a2[857];
      goto LABEL_12;
    case 7:
      *a5 = 4;
      v10 = a2[856];
      goto LABEL_12;
    case 0xDLL:
      *a5 = 4;
      v10 = a2[846];
      goto LABEL_12;
    case 0xELL:
      *a5 = 4;
      v10 = a2[847];
      goto LABEL_12;
    case 0xFLL:
      *a5 = 4;
      v10 = a2[849];
      goto LABEL_12;
    case 0x10:
      *a5 = 4;
      v10 = a2[851];
      goto LABEL_12;
    case 0x11:
      *a5 = 4;
      v10 = a2[852];
      goto LABEL_12;
    case 0x12:
      *a5 = 4;
      v10 = a2[853];
      goto LABEL_12;
    case 0x13:
      *a5 = 4;
      v10 = a2[855];
      goto LABEL_12;
    case 0x14:
      *a5 = 4;
      v10 = a2[858];
      goto LABEL_12;
    case 0x15:
      *a5 = 4;
      v10 = a2[859];
      goto LABEL_12;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1E5413B84(uint64_t a1, uint64_t a2)
{
  sub_1E5414D60(v34, 16);
  v3 = a2 + 3136;
  v4 = a2 + 2140;
  v5 = -32;
  do
  {
    v6 = v34 + *(v34[0] - 24);
    if (*(v6 + 36) == -1)
    {
      std::ios_base::getloc((v34 + *(v34[0] - 24)));
      v7 = std::locale::use_facet(&v41, MEMORY[0x1E69E5318]);
      (v7->__vftable[2].~facet_0)(v7, 32);
      std::locale::~locale(&v41);
    }

    *(v6 + 36) = 48;
    v8 = sub_1E53DF59C(&v35, "GRF ", 4);
    v9 = MEMORY[0x1E6928450](v8, v5 + 32);
    v10 = sub_1E53DF59C(v9, " = 0x", 5);
    v11 = *v10;
    *(v10 + *(*v10 - 24) + 8) = *(v10 + *(*v10 - 24) + 8) & 0xFFFFFFB5 | 8;
    *(v10 + *(v11 - 24) + 24) = 8;
    v12 = MEMORY[0x1E6928460]();
    v13 = sub_1E53DF59C(v12, "\t\t", 2);
    *(v13 + *(*v13 - 24) + 8) = *(v13 + *(*v13 - 24) + 8) & 0xFFFFFFB5 | 2;
    v14 = MEMORY[0x1E6928450]();
    sub_1E53DF59C(v14, " = (", 4);
    v15 = sub_1E53DF59C(&v35, "0x", 2);
    v16 = *v15;
    *(v15 + *(*v15 - 24) + 8) = *(v15 + *(*v15 - 24) + 8) & 0xFFFFFFB5 | 8;
    *(v15 + *(v16 - 24) + 24) = 8;
    MEMORY[0x1E6928460]();
    sub_1E53DF59C(&v35, ", ", 2);
    v17 = sub_1E53DF59C(&v35, "0x", 2);
    v18 = *v17;
    *(v17 + *(*v17 - 24) + 8) = *(v17 + *(*v17 - 24) + 8) & 0xFFFFFFB5 | 8;
    *(v17 + *(v18 - 24) + 24) = 8;
    MEMORY[0x1E6928460]();
    sub_1E53DF59C(&v35, ", ", 2);
    v19 = sub_1E53DF59C(&v35, "0x", 2);
    v20 = *v19;
    *(v19 + *(*v19 - 24) + 8) = *(v19 + *(*v19 - 24) + 8) & 0xFFFFFFB5 | 8;
    *(v19 + *(v20 - 24) + 24) = 8;
    MEMORY[0x1E6928460]();
    sub_1E53DF59C(&v35, ", ", 2);
    v21 = sub_1E53DF59C(&v35, "0x", 2);
    v22 = *v21;
    *(v21 + *(*v21 - 24) + 8) = *(v21 + *(*v21 - 24) + 8) & 0xFFFFFFB5 | 8;
    *(v21 + *(v22 - 24) + 24) = 8;
    MEMORY[0x1E6928460]();
    sub_1E53DF59C(&v35, ", ", 2);
    v23 = sub_1E53DF59C(&v35, "0x", 2);
    v24 = *v23;
    *(v23 + *(*v23 - 24) + 8) = *(v23 + *(*v23 - 24) + 8) & 0xFFFFFFB5 | 8;
    *(v23 + *(v24 - 24) + 24) = 8;
    MEMORY[0x1E6928460]();
    sub_1E53DF59C(&v35, ", ", 2);
    v25 = sub_1E53DF59C(&v35, "0x", 2);
    v26 = *v25;
    *(v25 + *(*v25 - 24) + 8) = *(v25 + *(*v25 - 24) + 8) & 0xFFFFFFB5 | 8;
    *(v25 + *(v26 - 24) + 24) = 8;
    MEMORY[0x1E6928460]();
    sub_1E53DF59C(&v35, ", ", 2);
    v27 = sub_1E53DF59C(&v35, "0x", 2);
    v28 = *v27;
    *(v27 + *(*v27 - 24) + 8) = *(v27 + *(*v27 - 24) + 8) & 0xFFFFFFB5 | 8;
    *(v27 + *(v28 - 24) + 24) = 8;
    MEMORY[0x1E6928460]();
    sub_1E53DF59C(&v35, ", ", 2);
    v29 = sub_1E53DF59C(&v35, "0x", 2);
    v30 = *v29;
    *(v29 + *(*v29 - 24) + 8) = *(v29 + *(*v29 - 24) + 8) & 0xFFFFFFB5 | 8;
    *(v29 + *(v30 - 24) + 24) = 8;
    MEMORY[0x1E6928460]();
    sub_1E53DF59C(&v35, ")", 1);
    if (v39 < 0)
    {
      operator delete(__p);
    }

    LOBYTE(__p) = 0;
    v39 = 0;
    sub_1E53E768C(&v36);
    v3 += 4;
    v4 += 32;
  }

  while (!__CFADD__(v5++, 1));
  v34[0] = *MEMORY[0x1E69E54D8];
  v32 = *(MEMORY[0x1E69E54D8] + 72);
  *(v34 + *(v34[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v35 = v32;
  v36 = MEMORY[0x1E69E5548] + 16;
  if (v39 < 0)
  {
    operator delete(__p);
  }

  v36 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&v37);
  std::iostream::~basic_iostream();
  return MEMORY[0x1E69285E0](&v40);
}

void sub_1E5414308(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  std::locale::~locale((v26 - 96));
  sub_1E5415094(&a10, MEMORY[0x1E69E54D8]);
  MEMORY[0x1E69285E0](&a26);
  _Unwind_Resume(a1);
}

uint64_t sub_1E5414350(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  v6 = (*(a3 + 2192) >> 2) & 3;
  if (v6 > 1)
  {
    if (v6 == 3)
    {
      v11 = 76;
    }

    else
    {
      v11 = 44;
    }
  }

  else
  {
    if (!v6)
    {
      v8 = a2;
      v9 = sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwColl.cpp", 472, "false && dmaDescSize not supported", 36, &unk_1E549A011, 0, sub_1E548FDE0);
      a2 = v8;
      if (v9)
      {
        abort();
      }

      *(a4 + 4) = *(a1 + 16);
      v10 = *(v5 + 148) & 0x1F;
      if (v10 == 1)
      {
        goto LABEL_14;
      }

      goto LABEL_11;
    }

    v11 = 28;
  }

  *(a4 + 8) = v11;
  *(a4 + 4) = *(a1 + 16);
  v10 = *(a3 + 148) & 0x1F;
  if (v10 == 1)
  {
LABEL_14:
    result = 0;
    *a4 = 0xFFFF;
    return result;
  }

LABEL_11:
  if (v10 <= *a4)
  {
    goto LABEL_14;
  }

  if ((*(v5 + 1576) & 1) == 0)
  {
    return 0;
  }

  v13 = *(a4 + 32);
  v14 = a2[228];
  *(a4 + 12) = a2[207];
  *(a4 + 16) = v14;
  *(a4 + 20) = a2[396];
  v15 = HIDWORD(*(v5 + 144)) & 0x1FLL;
  *(a4 + 24) = v15;
  v16 = (*(a4 + 40) - v13) >> 2;
  if (v15 <= v16)
  {
    if (v15 < v16)
    {
      *(a4 + 40) = v13 + 4 * v15;
    }
  }

  else
  {
    sub_1E54151E4(a4 + 32, v15 - v16);
  }

  v17 = *(a4 + 56);
  v18 = 0xAAAAAAAAAAAAAAABLL * ((*(a4 + 64) - v17) >> 3);
  if (v15 <= v18)
  {
    if (v15 < v18)
    {
      *(a4 + 64) = v17 + 24 * v15;
    }
  }

  else
  {
    sub_1E5415350(a4 + 56, v15 - v18);
  }

  v19 = *(a4 + 80);
  v20 = 0xAAAAAAAAAAAAAAABLL * ((*(a4 + 88) - v19) >> 3);
  if (v15 <= v20)
  {
    if (v15 < v20)
    {
      *(a4 + 88) = v19 + 24 * v15;
    }
  }

  else
  {
    sub_1E5415350(a4 + 80, v15 - v20);
  }

  v21 = *(a4 + 104);
  v22 = 0xAAAAAAAAAAAAAAABLL * ((*(a4 + 112) - v21) >> 3);
  if (v15 <= v22)
  {
    if (v15 < v22)
    {
      *(a4 + 112) = v21 + 24 * v15;
    }
  }

  else
  {
    sub_1E5415350(a4 + 104, v15 - v22);
  }

  v23 = *(a4 + 128);
  v24 = 0xAAAAAAAAAAAAAAABLL * ((*(a4 + 136) - v23) >> 3);
  if (v15 <= v24)
  {
    if (v15 < v24)
    {
      *(a4 + 136) = v23 + 24 * v15;
    }
  }

  else
  {
    sub_1E5415350(a4 + 128, v15 - v24);
  }

  v25 = *(a4 + 152);
  v26 = 0xAAAAAAAAAAAAAAABLL * ((*(a4 + 160) - v25) >> 3);
  if (v15 <= v26)
  {
    if (v15 < v26)
    {
      *(a4 + 160) = v25 + 24 * v15;
    }
  }

  else
  {
    sub_1E5415350(a4 + 152, v15 - v26);
  }

  v27 = *(a4 + 176);
  v28 = 0xAAAAAAAAAAAAAAABLL * ((*(a4 + 184) - v27) >> 3);
  if (v15 <= v28)
  {
    if (v15 < v28)
    {
      *(a4 + 184) = v27 + 24 * v15;
    }
  }

  else
  {
    sub_1E5415350(a4 + 176, v15 - v28);
  }

  v29 = *(a4 + 200);
  v30 = 0xAAAAAAAAAAAAAAABLL * ((*(a4 + 208) - v29) >> 3);
  if (v15 <= v30)
  {
    if (v15 < v30)
    {
      *(a4 + 208) = v29 + 24 * v15;
    }
  }

  else
  {
    sub_1E5415350(a4 + 200, v15 - v30);
  }

  if (v15)
  {
    v31 = 0;
    v32 = v5 + 2000;
    v33 = *(a4 + 32);
    v34 = *(a4 + 56);
    v35 = *(a4 + 80);
    v36 = *(a4 + 104);
    v37 = *(a4 + 128);
    v38 = *(a4 + 152);
    v39 = *(a4 + 176);
    v40 = *(a4 + 200);
    do
    {
      *(v33 + 4 * v31) = *(v32 + 4 * v31) & 0x1FFF;
      if (*(a4 + 4))
      {
        v41 = 0;
        v42 = 936;
        do
        {
          v43 = 4 * v41;
          v44 = v5 + 4 * v41;
          *(v34 + v43) = *(v44 + 616) & 0x7FF;
          *(v35 + v43) = *(v44 + 618) & 0x1FFF;
          *(v36 + v43) = *(v5 + v42) & 0x3FF;
          *(v37 + v43) = *(v5 + v42 + 2) & 0x1FFF;
          *(v38 + v43) = *(v5 + v42 + 320) & 0x3FF;
          *(v39 + v43) = *(v5 + v42 + 664) & 0x7FF;
          *(v40 + v43) = *(v5 + v42 + 666) & 0xFFF;
          ++v41;
          v42 += 4;
        }

        while (v41 < *(a4 + 4));
      }

      ++v31;
      v40 += 24;
      v39 += 24;
      v5 += 20;
      v38 += 24;
      v34 += 24;
      v37 += 24;
      v36 += 24;
      v35 += 24;
    }

    while (v31 != v15);
  }

  return 1;
}

void sub_1E5414794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 8);
  v7 = *(a4 + 12) + v6 * *(a4 + 232);
  v8 = *(a4 + 16) + *(a4 + 236) * v6;
  v9 = (v7 + 63) & 0xFFFFFFC0;
  *(a2 + 828) = v9;
  v10 = (v8 + 63) & 0xFFFFFFC0;
  *(a2 + 912) = v10;
  *(a4 + 240) = v7;
  *(a4 + 244) = v9;
  *(a4 + 248) = v8;
  *(a4 + 252) = v10;
  v12 = *(a4 + 224);
  v11 = *(a4 + 228);
  v13 = (v11 - v12);
  if (v11 == v12 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwDesgenConfigurationUtilsImpl.h", 155, "num_stripes > 0 && Invalid number of stripes", 46, &unk_1E549A011, 0, sub_1E548FDE0))
  {
    abort();
  }

  *(a3 + 144) = *(a3 + 144) & 0xFFFFFFE0FFFFFFFFLL | ((v13 & 0x1F) << 32);
  *(a3 + 2516) = v13;
  v14 = *(a4 + 224);
  if (v14 < *(a4 + 228))
  {
    v15 = 24 * v14;
    do
    {
      v16 = v14 - *(a4 + 224);
      *(a3 + 2000 + 4 * v16) = *(a3 + 2000 + 4 * v16) & 0xFFFFE000 | *(*(a4 + 32) + 4 * v14) & 0x1FFF;
      *(a3 + 2524 + 4 * v16) = *(*(a4 + 32) + 4 * v14);
      if (*(a4 + 4))
      {
        v17 = 0;
        v18 = a3 + 20 * v16;
        v19 = 936;
        do
        {
          v20 = v18 + 4 * v17;
          v21 = *(v20 + 616) & 0xFFFFF800 | *(*(a4 + 56) + v15 + 4 * v17) & 0x7FF;
          *(v20 + 616) = v21;
          *(v20 + 616) = v21 & 0xE000FFFF | ((*(*(a4 + 80) + v15 + 4 * v17) & 0x1FFF) << 16);
          v22 = (v18 + v19);
          v23 = *(v18 + v19) & 0xFFFFFC00 | *(*(a4 + 104) + v15 + 4 * v17) & 0x3FF;
          *v22 = v23;
          *v22 = v23 & 0xE000FFFF | ((*(*(a4 + 128) + v15 + 4 * v17) & 0x1FFF) << 16);
          v22[80] = *(v18 + v19 + 320) & 0xFFFFFC00 | *(*(a4 + 152) + v15 + 4 * v17) & 0x3FF;
          v24 = *(v18 + v19 + 664) & 0xFFFFF800 | *(*(a4 + 176) + v15 + 4 * v17) & 0x7FF;
          v22[166] = v24;
          v22[166] = v24 & 0xF000FFFF | ((*(*(a4 + 200) + v15 + 4 * v17++) & 0xFFF) << 16);
          v19 += 4;
        }

        while (v17 < *(a4 + 4));
      }

      ++v14;
      v15 += 24;
    }

    while (v14 < *(a4 + 228));
  }

  if (v13 < *(a4 + 24))
  {
    v25 = (a3 + 20 * v13);
    do
    {
      *(a3 + 2000 + 4 * v13) &= 0xFFFFE000;
      *(a3 + 2524 + 4 * v13) = 0;
      if (*(a4 + 4))
      {
        v26 = v25;
        v27 = 400;
        do
        {
          v26[154] &= 0xE000F800;
          v26[234] &= 0xE000FC00;
          v26[314] &= 0xFFFFFC00;
          v26[400] = v26[400] & 0xF000F800 | 0x50005;
          v28 = v27 - 399;
          ++v27;
          ++v26;
        }

        while (v28 < *(a4 + 4));
      }

      ++v13;
      v25 += 5;
    }

    while (v13 < *(a4 + 24));
  }
}

void *sub_1E5414A48(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  v5 = a2 + a3[2].u32[1];
  v6 = *(v5 + 100);
  a3[29] = vadd_s32(a3[29], v6);
  v7 = a3[30].u32[0];
  v8 = a3[30].u32[1];
  if (v7 == v8)
  {
    v9 = a3[31].u32[0];
    v10 = a3[31].u32[1];
    if (v9 == v10)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v12 = v6.i32[1];
    result = memcpy((a2 + v7), (a2 + v8), (a3[1].i32[0] * v6.i32[0]));
    v6.i32[1] = v12;
    v9 = a3[31].u32[0];
    v10 = a3[31].u32[1];
    if (v9 == v10)
    {
LABEL_3:
      if (a3[32].i8[0] != 1)
      {
        return result;
      }

LABEL_7:
      *(v5 + 100) = a3[29].i32[0];
      *(v5 + 104) = a3[29].i32[1];
      return result;
    }
  }

  result = memcpy((a2 + v9), (a2 + v10), (a3[1].i32[0] * v6.i32[1]));
  if (a3[32].i8[0] == 1)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1E5414B2C(uint64_t a1)
{
  *a1 = &unk_1F5F0A4F0;
  v2 = *(a1 + 832);
  if (v2)
  {
    *(a1 + 840) = v2;
    MEMORY[0x1E6928640]();
  }

  if (*(a1 + 703) < 0)
  {
    operator delete(*(a1 + 680));
  }

  v3 = *(a1 + 152);
  if (v3)
  {
    *(a1 + 160) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 128);
  if (v4)
  {
    *(a1 + 136) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 104);
  if (v5)
  {
    *(a1 + 112) = v5;
    operator delete(v5);
  }

  v6 = *(a1 + 80);
  if (v6)
  {
    *(a1 + 88) = v6;
    operator delete(v6);
  }

  v7 = *(a1 + 56);
  if (v7)
  {
    *(a1 + 64) = v7;
    operator delete(v7);
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    *(a1 + 40) = v8;
    operator delete(v8);
  }

  return a1;
}

void sub_1E5414BF0(uint64_t a1)
{
  *a1 = &unk_1F5F0A4F0;
  v2 = *(a1 + 832);
  if (v2)
  {
    *(a1 + 840) = v2;
    MEMORY[0x1E6928640]();
  }

  if (*(a1 + 703) < 0)
  {
    operator delete(*(a1 + 680));
  }

  v3 = *(a1 + 152);
  if (v3)
  {
    *(a1 + 160) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 128);
  if (v4)
  {
    *(a1 + 136) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 104);
  if (v5)
  {
    *(a1 + 112) = v5;
    operator delete(v5);
  }

  v6 = *(a1 + 80);
  if (v6)
  {
    *(a1 + 88) = v6;
    operator delete(v6);
  }

  v7 = *(a1 + 56);
  if (v7)
  {
    *(a1 + 64) = v7;
    operator delete(v7);
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    *(a1 + 40) = v8;
    operator delete(v8);
  }

  JUMPOUT(0x1E6928650);
}

uint64_t sub_1E5414CDC(uint64_t a1)
{
  v2 = *(a1 + 120);
  if (v2)
  {
    *(a1 + 128) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 96);
  if (v3)
  {
    *(a1 + 104) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 72);
  if (v4)
  {
    *(a1 + 80) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 48);
  if (v5)
  {
    *(a1 + 56) = v5;
    operator delete(v5);
  }

  v6 = *(a1 + 24);
  if (v6)
  {
    *(a1 + 32) = v6;
    operator delete(v6);
  }

  v7 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v7;
    operator delete(v7);
  }

  return a1;
}

uint64_t sub_1E5414D60(uint64_t a1, int a2)
{
  *(a1 + 176) = 0;
  v4 = MEMORY[0x1E69E5560] + 104;
  *(a1 + 128) = MEMORY[0x1E69E5560] + 104;
  v5 = a1 + 16;
  v6 = MEMORY[0x1E69E5560] + 64;
  *(a1 + 16) = MEMORY[0x1E69E5560] + 64;
  v7 = a1 + 24;
  v8 = MEMORY[0x1E69E54D8];
  v9 = *(MEMORY[0x1E69E54D8] + 24);
  v10 = *(MEMORY[0x1E69E54D8] + 16);
  *a1 = v10;
  *(a1 + *(v10 - 24)) = v9;
  *(a1 + 8) = 0;
  v11 = (a1 + *(*a1 - 24));
  std::ios_base::init(v11, (a1 + 24));
  v12 = MEMORY[0x1E69E5560] + 24;
  v11[1].__vftable = 0;
  v11[1].__fmtflags_ = -1;
  v13 = v8[5];
  v14 = v8[4];
  *(a1 + 16) = v14;
  *(v5 + *(v14 - 24)) = v13;
  v15 = v8[1];
  *a1 = v15;
  *(a1 + *(v15 - 24)) = v8[6];
  *a1 = v12;
  *(a1 + 128) = v4;
  v16 = MEMORY[0x1E69E5538] + 16;
  *(a1 + 16) = v6;
  *(a1 + 24) = v16;
  MEMORY[0x1E6928590](a1 + 32);
  *(a1 + 88) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 24) = MEMORY[0x1E69E5548] + 16;
  *(a1 + 104) = 0u;
  *(a1 + 120) = a2;
  sub_1E53E768C(v7);
  return a1;
}

void sub_1E5415044(_Unwind_Exception *a1)
{
  if (*(v2 + 111) < 0)
  {
    operator delete(*v4);
  }

  *(v2 + 24) = v3;
  std::locale::~locale((v2 + 32));
  std::iostream::~basic_iostream();
  MEMORY[0x1E69285E0](v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1E5415094(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[8];
  *(a1 + 16) = a2[9];
  *(a1 + 24) = MEMORY[0x1E69E5548] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale((a1 + 32));

  return std::iostream::~basic_iostream();
}

void sub_1E54151E4(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2 <= (v3 - v4) >> 2)
  {
    if (a2)
    {
      v10 = 4 * a2;
      bzero(*(a1 + 8), 4 * a2);
      v4 += v10;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = *a1;
    v6 = v4 - *a1;
    v7 = (v6 >> 2) + a2;
    if (v7 >> 62)
    {
      sub_1E5415338();
    }

    v8 = v3 - v5;
    if (v8 >> 1 > v7)
    {
      v7 = v8 >> 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v9 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (!(v9 >> 62))
      {
        operator new();
      }

      sub_1E53E5340();
    }

    v11 = (4 * (v6 >> 2));
    v12 = 4 * a2;
    bzero(v11, 4 * a2);
    memcpy(0, v5, v6);
    *a1 = 0;
    *(a1 + 8) = &v11[v12];
    *(a1 + 16) = 0;
    if (v5)
    {

      operator delete(v5);
    }
  }
}

void sub_1E5415350(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v3 - v4) >> 3) >= a2)
  {
    if (a2)
    {
      v9 = 24 * ((24 * a2 - 24) / 0x18) + 24;
      bzero(*(a1 + 8), v9);
      v4 += v9;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = *a1;
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3) + a2;
    if (v6 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_1E5415338();
    }

    v7 = 0xAAAAAAAAAAAAAAABLL * ((v3 - v5) >> 3);
    if (2 * v7 > v6)
    {
      v6 = 2 * v7;
    }

    if (v7 >= 0x555555555555555)
    {
      v8 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v8 = v6;
    }

    if (v8)
    {
      if (v8 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_1E53E5340();
    }

    v10 = (8 * ((v4 - *a1) >> 3));
    v11 = 24 * ((24 * a2 - 24) / 0x18) + 24;
    bzero(v10, v11);
    v12 = v4 - v5;
    v13 = &v10[-(v4 - v5)];
    memcpy(v13, v5, v12);
    *a1 = v13;
    *(a1 + 8) = &v10[v11];
    *(a1 + 16) = 0;
    if (v5)
    {

      operator delete(v5);
    }
  }
}

uint64_t sub_1E54154F8(uint64_t result, int a2)
{
  v2 = result;
  *result = &unk_1F5F0A3D8;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 20) = 0;
  *(result + 28) = 2;
  *(result + 200) = 0;
  *(result + 180) = 0u;
  *(result + 196) = 0;
  *(result + 204) = 0;
  *(result + 228) = 0;
  *(result + 208) = 0u;
  *(result + 224) = 0;
  *(result + 232) = 0;
  *(result + 256) = 0;
  *(result + 236) = 0u;
  *(result + 252) = 0;
  *(result + 260) = 0;
  *(result + 284) = 0;
  *(result + 280) = 0;
  *(result + 264) = 0u;
  *(result + 288) = 0;
  *(result + 312) = 0;
  *(result + 292) = 0u;
  *(result + 308) = 0;
  *(result + 316) = 0;
  *(result + 340) = 0;
  *(result + 320) = 0u;
  *(result + 336) = 0;
  *(result + 344) = 0;
  *(result + 368) = 0;
  *(result + 348) = 0u;
  *(result + 364) = 0;
  *(result + 372) = 0;
  *(result + 396) = 0;
  *(result + 376) = 0u;
  *(result + 392) = 0;
  *(result + 400) = 0;
  *(result + 424) = 0;
  *(result + 420) = 0;
  *(result + 404) = 0u;
  *(result + 428) = 0;
  *(result + 452) = 0;
  *(result + 432) = 0u;
  *(result + 448) = 0;
  *(result + 456) = 0;
  *(result + 480) = 0;
  *(result + 460) = 0u;
  *(result + 476) = 0;
  *(result + 484) = 0;
  *(result + 508) = 0;
  *(result + 488) = 0u;
  *(result + 504) = 0;
  *(result + 512) = 0;
  *(result + 536) = 0;
  *(result + 32) = 0u;
  *(result + 532) = 0;
  *(result + 516) = 0u;
  *(result + 540) = 0;
  *(result + 564) = 0;
  *(result + 544) = 0u;
  *(result + 560) = 0;
  *(result + 568) = 0;
  *(result + 592) = 0;
  *(result + 588) = 0;
  *(result + 572) = 0u;
  *(result + 48) = 0u;
  *(result + 64) = 0u;
  *(result + 80) = 0u;
  *(result + 96) = 0u;
  *(result + 112) = 0u;
  *(result + 128) = 0u;
  *(result + 144) = 0u;
  *(result + 160) = 0u;
  *(result + 176) = 0;
  *(result + 660) = 0u;
  *(result + 632) = 0u;
  *(result + 648) = 0u;
  *(result + 600) = 0u;
  *(result + 616) = 0u;
  *(result + 703) = 17;
  strcpy((result + 680), "lacc_DpKernel.bin");
  *(result + 704) = 0;
  *(result + 712) = 6;
  *(result + 720) = xmmword_1E5491C20;
  *(result + 736) = xmmword_1E5491C30;
  *(result + 752) = xmmword_1E5491C40;
  *(result + 768) = xmmword_1E5491C50;
  *(result + 784) = 4;
  *(result + 788) = 5;
  *(result + 792) = 0xFFFF0000003FLL;
  *(result + 800) = xmmword_1E5491C60;
  *(result + 816) = 0x3F80000000000000;
  *(result + 824) = 511;
  *(result + 848) = 0;
  *(result + 832) = 0u;
  *(result + 856) = 21;
  *(result + 864) = 0;
  if (a2 == 6)
  {
    v3 = xmmword_1E5491E10;
    v4 = 754974720;
    goto LABEL_5;
  }

  if (a2 == 5)
  {
    v3 = xmmword_1E5491E20;
    v4 = 2801795072;
LABEL_5:
    *(result + 856) = 21;
    *(result + 864) = v4 & 0xFFFF0000FFFFFFFFLL | 0x200000000;
    *(result + 656) = v3;
    return result;
  }

  if (sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwCrete.cpp", 54, "0 && unsupported platform", 27, &unk_1E549A011, 0, sub_1E548FDE0))
  {
    abort();
  }

  return v2;
}

void sub_1E54157D4(_Unwind_Exception *a1)
{
  v5 = v3;
  if (*v5)
  {
    *(v1 + 840) = *v5;
    MEMORY[0x1E6928640]();
    if (*(v1 + 703) < 0)
    {
LABEL_3:
      operator delete(*v4);
      sub_1E5414CDC(v2);
      _Unwind_Resume(a1);
    }
  }

  else if (*(v1 + 703) < 0)
  {
    goto LABEL_3;
  }

  sub_1E5414CDC(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_1E5415828(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 68) != 2)
  {
    return 0;
  }

  *(a2 + 50) = sub_1E54789D8(*a2, *(a2 + 4));
  result = sub_1E541DFEC(a1 + 720, a2);
  if (result)
  {
    if (*(a2 + 113) == 1)
    {
      if (*(a2 + 185) != 1 || *(a2 + 192))
      {
        v5 = sub_1E544CFB4(a2, a1 + 600, 6);
        *(a1 + 29) = v5;
        if ((v5 & 1) == 0)
        {
          return 0;
        }
      }
    }

    else if (*(a2 + 192))
    {
      return 0;
    }

    *(a1 + 8) = *a2;
    v6 = *(a2 + 50);
    *(a1 + 16) = v6;
    v7 = *(a2 + 72);
    *(a1 + 20) = *(a2 + 24);
    *(a1 + 24) = v7;
    v8 = *(a2 + 68);
    *(a1 + 28) = v8;
    sub_1E541C1E0((a1 + 32), v6, v8);
    if (*(a1 + 28) == 2)
    {
      v9 = *(a1 + 840);
      v10 = *(a1 + 832);
      v11 = 0xCBEEA4E1A08AD8F3 * ((v9 - v10) >> 6);
      if (v9 == v10)
      {
        if (0xCBEEA4E1A08AD8F3 * ((*(a1 + 848) - v9) >> 6) >= 1 - v11)
        {
          if (v9 - v10 != 3776)
          {
            bzero(*(a1 + 840), 0xEC0uLL);
            v9 += 3776;
          }

          *(a1 + 840) = v9;
        }

        else
        {
          v12 = *(a1 + 832);
          v13 = operator new(0xEC0uLL, 0x40uLL);
          bzero(v13, 0xEC0uLL);
          *(a1 + 832) = v13;
          *(a1 + 840) = v13 + 3776;
          *(a1 + 848) = v13 + 3776;
          if (v9)
          {
            MEMORY[0x1E6928640](v12, 64);
          }
        }

        v10 = *(a1 + 832);
      }

      else if (v11 >= 2)
      {
        *(a1 + 840) = v10 + 3776;
      }

      sub_1E541B4A8(a1 + 720, a2, v10, a1 + 600, a1 + 32);
      return 1;
    }

    return 0;
  }

  return result;
}

__n128 sub_1E5415A2C(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v4 = a1;
  v5 = *(a1 + 832);
  v6 = *(a1 + 16);
  v42 = (*(*a1 + 72))(a1);
  if (v6)
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v43 = 28 * v6;
    v12 = v4;
    v13 = v5;
    do
    {
      if (((3 << v8) & *(v5 + 400)) != 0)
      {
        v14 = *(v4 + 32) + v10;
        v15 = sub_1E5478AA8(a2, v9);
        v16 = sub_1E5478AA8(a3, v9);
        *v14 = 1;
        v17 = 2 * v15;
        v5 = v13;
        *(v14 + 4) = v17;
        *(v14 + 8) = v16;
        v18 = (v17 + 63) & 0xFFFFFFC0;
        *(v14 + 12) = v18;
        *(v14 + 16) = v11;
        v11 += v18 * v16;
      }

      v4 = v12;
      if (((3 << v8) & *(v5 + 404)) != 0)
      {
        v19 = *(v12 + 104) + v10;
        v20 = sub_1E5478AA8(a2, v9);
        v21 = sub_1E5478AA8(a3, v9);
        *v19 = 1;
        *(v19 + 4) = 2 * v20;
        *(v19 + 8) = v21;
        v22 = 4 * v20;
        v5 = v13;
        v23 = (v22 + 63) & 0xFFFFFFC0;
        *(v19 + 12) = v23;
        *(v19 + 16) = v11;
        v11 += v23 * v21;
      }

      v10 += 28;
      ++v9;
      v8 += 2;
    }

    while (v43 != v10);
  }

  else
  {
    v11 = 0;
  }

  if (*(v5 + 840))
  {
    v11 += sub_1E544E3D8(0x186A00u, v11, 64, v4 + 288);
  }

  if (*(v5 + 408))
  {
    v11 += sub_1E544E3D8(8 * *(v5 + 652), v11, 64, v4 + 316);
  }

  v24 = *(v5 + 832);
  if (v24)
  {
    v25 = 72 * *(v5 + 652);
    v26 = (v25 + 65471) / 0xFFC0;
    if (v25 >= 0xFFC1)
    {
      v27 = (v25 + 65471) / 0xFFC0;
    }

    else
    {
      v27 = 1;
    }

    if (v25 >= 0xFFC1)
    {
      v28 = 65472;
    }

    else
    {
      v28 = (v25 + 63) & 0x1FFC0;
    }

    *(v4 + 204) = 1;
    *(v4 + 208) = v28;
    *(v4 + 212) = v27;
    *(v4 + 216) = v28;
    *(v4 + 220) = v11;
    v29 = v11 + v28 * v27;
    if (v25 >= 0xFFC1)
    {
      v30 = 65472;
    }

    else
    {
      v26 = 1;
      v30 = (v25 + 63) & 0x1FFC0;
    }

    *(v4 + 176) = 1;
    *(v4 + 180) = v30;
    *(v4 + 184) = v26;
    *(v4 + 188) = v30;
    *(v4 + 192) = v29;
    v11 = v29 + v30 * v26;
    v24 = *(v5 + 832);
  }

  v31 = (v24 >> 2) & 3;
  if (v31 <= 1)
  {
    if (!v31)
    {
      goto LABEL_41;
    }

    v32 = 40;
    goto LABEL_31;
  }

  if (v31 != 3)
  {
    v32 = 24;
LABEL_31:
    v33 = *(v5 + 652) * v32;
    v34 = (v33 + 65471) / 0xFFC0;
    if (v33 >= 0xFFC1)
    {
      v35 = (v33 + 65471) / 0xFFC0;
    }

    else
    {
      v35 = 1;
    }

    if (v33 >= 0xFFC1)
    {
      v36 = 65472;
    }

    else
    {
      v36 = (v33 + 63) & 0x1FFC0;
    }

    *(v4 + 260) = 1;
    *(v4 + 264) = v36;
    *(v4 + 268) = v35;
    *(v4 + 272) = v36;
    *(v4 + 276) = v11;
    v37 = v11 + v36 * v35;
    if (v33 >= 0xFFC1)
    {
      v38 = 65472;
    }

    else
    {
      v34 = 1;
      v38 = (v33 + 63) & 0x1FFC0;
    }

    *(v4 + 232) = 1;
    *(v4 + 236) = v38;
    *(v4 + 240) = v34;
    *(v4 + 244) = v38;
    *(v4 + 248) = v37;
    v11 = v37 + v38 * v34;
    goto LABEL_41;
  }

  if (sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwCvdAllConfigurationUtilsImpl.h", 128, "shortDescriptorSel == static_cast<uint32_t>(ShortDescriptorSel::kNone) && shall be kNone here", 95, &unk_1E549A011, 0, sub_1E548FDE0))
  {
    abort();
  }

LABEL_41:
  v39 = *(v4 + 152);
  v40 = (v42 + 63) & 0xFFFFFFC0;
  *v39 = 1;
  *(v39 + 4) = v40;
  *(v39 + 8) = 1;
  *(v39 + 12) = v40;
  *(v39 + 16) = v11;
  v41 = v11 + v40;
  if (*(v4 + 372) == 1)
  {
    *(v4 + 388) = v41;
    v41 += *(v4 + 380) * *(v4 + 384);
  }

  if (*(v4 + 400) == 1)
  {
    *(v4 + 416) = v41;
    *(v4 + 360) = *(v4 + 388);
    result = *(v4 + 372);
    *(v4 + 344) = result;
    *(v4 + 364) = 0;
    *(v4 + 368) = 0;
  }

  return result;
}

void *sub_1E5415E04(uint64_t a1, _DWORD *a2, int a3, int a4)
{
  if (a4 != 8 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwCrete.cpp", 194, "input_format == CISP_INPUT_FORMAT_RAW8", 38, &unk_1E549A011, 0, sub_1E548FDE0))
  {
    goto LABEL_10;
  }

  v7 = *(a1 + 856);
  if (a3 || (v8 = *(a1 + 832), *(a1 + 840) - v8 != 3776))
  {
    if ((sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwCvdAllConfigurationUtilsImpl.h", 42, "cvd_all_cfg.size() == 1 && octave == 0 && Operation buffer is only programmed once for flow2", 94, &unk_1E549A011, 0, sub_1E548FDE0) & 1) == 0)
    {
      v8 = *(a1 + 832);
      goto LABEL_7;
    }

LABEL_10:
    abort();
  }

LABEL_7:
  *a2 = -1;
  a2[1] = v7;
  a2[3] = 3776;

  return memcpy(a2 + 4, v8, 0xEC0uLL);
}

uint64_t sub_1E5415F00(uint64_t a1, _DWORD *a2, int a3, unsigned int a4, unsigned int a5, unsigned int a6, int a7)
{
  if (a7 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwCrete.cpp", 200, "octave == 0", 11, &unk_1E549A011, 0, sub_1E548FDE0) || (v13 = (*(*a1 + 56))(a1), v14 = *(a1 + 24), bzero(a2, v13), *a2 = -1, a2[1] = a3 | 0x80000000, *(a2 + 1) = 0, a2[38] |= 0x7FFFFFFFu, a2[59] |= 0x7FFFFFFFu, a2[80] |= 0x7FFFFFFFu, a2[101] |= 0x7FFFFFFFu, a2[122] |= 0x7FFFFFFFu, a2[143] |= 0x7FFFFFFFu, a2[164] |= 0x7FFFFFFFu, a2[185] |= 0x7FFFFFFFu, a2[206] |= 0x7FFFFFFFu, a2[227] |= 0x7FFFFFFFu, a2[248] |= 0x7FFFFFFFu, a2[269] |= 0x7FFFFFFFu, a2[290] |= 0x7FFFFFFFu, a2[311] |= 0x7FFFFFFFu, a2[332] |= 0x7FFFFFFFu, a2[353] |= 0x7FFFFFFFu, a2[374] |= 0x7FFFFFFFu, a2[395] |= 0x7FFFFFFFu, a2[416] |= 0x7FFFFFFFu, a2[437] |= 0x7FFFFFFFu, v15 = *(a1 + 40) - *(a1 + 32), *(a2 + 18) = 0x100000014, ((0x6DB6DB6DB6DB6DB7 * (v15 >> 2)) & 0xFFFFFFFFFFFFFFFELL) != 4) && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwCvdAllConfigurationUtilsImpl.h", 221, "num_octaves == 4 || num_octaves == 5 && number of octaves can only be 4 or 5", 78, &unk_1E549A011, 0, sub_1E548FDE0))
  {
    abort();
  }

  result = sub_1E544DF60((a2 + 80), a4, a5, a6, 8, 0, 0);
  v17 = *(a1 + 32);
  if (*v17 == 1)
  {
    result = sub_1E544DF60((a2 + 101), *(v17 + 4), *(v17 + 8), *(v17 + 12), 8, 1, *(v17 + 16) + v14);
    v17 = *(a1 + 32);
    if (*(v17 + 28) != 1)
    {
LABEL_7:
      if (*(v17 + 56) != 1)
      {
        goto LABEL_8;
      }

      goto LABEL_17;
    }
  }

  else if (*(v17 + 28) != 1)
  {
    goto LABEL_7;
  }

  result = sub_1E544DF60((a2 + 122), *(v17 + 32), *(v17 + 36), *(v17 + 40), 8, 1, *(v17 + 44) + v14);
  v17 = *(a1 + 32);
  if (*(v17 + 56) != 1)
  {
LABEL_8:
    if (*(v17 + 84) != 1)
    {
      goto LABEL_9;
    }

    goto LABEL_18;
  }

LABEL_17:
  result = sub_1E544DF60((a2 + 143), *(v17 + 60), *(v17 + 64), *(v17 + 68), 8, 1, *(v17 + 72) + v14);
  v17 = *(a1 + 32);
  if (*(v17 + 84) != 1)
  {
LABEL_9:
    v18 = *(a1 + 104);
    if (*v18 != 1)
    {
      goto LABEL_10;
    }

    goto LABEL_19;
  }

LABEL_18:
  result = sub_1E544DF60((a2 + 164), *(v17 + 88), *(v17 + 92), *(v17 + 96), 8, 1, *(v17 + 100) + v14);
  v18 = *(a1 + 104);
  if (*v18 != 1)
  {
LABEL_10:
    if (*(v18 + 28) != 1)
    {
      goto LABEL_11;
    }

    goto LABEL_20;
  }

LABEL_19:
  result = sub_1E544DF60((a2 + 101), *(v18 + 4), *(v18 + 8), *(v18 + 12), 4, 1, *(v18 + 16) + v14);
  v18 = *(a1 + 104);
  if (*(v18 + 28) != 1)
  {
LABEL_11:
    if (*(v18 + 56) != 1)
    {
      goto LABEL_12;
    }

    goto LABEL_21;
  }

LABEL_20:
  result = sub_1E544DF60((a2 + 122), *(v18 + 32), *(v18 + 36), *(v18 + 40), 4, 1, *(v18 + 44) + v14);
  v18 = *(a1 + 104);
  if (*(v18 + 56) != 1)
  {
LABEL_12:
    if (*(v18 + 84) != 1)
    {
      goto LABEL_13;
    }

    goto LABEL_22;
  }

LABEL_21:
  result = sub_1E544DF60((a2 + 143), *(v18 + 60), *(v18 + 64), *(v18 + 68), 4, 1, *(v18 + 72) + v14);
  v18 = *(a1 + 104);
  if (*(v18 + 84) != 1)
  {
LABEL_13:
    if (v15 != 140)
    {
      goto LABEL_27;
    }

    goto LABEL_23;
  }

LABEL_22:
  result = sub_1E544DF60((a2 + 164), *(v18 + 88), *(v18 + 92), *(v18 + 96), 4, 1, *(v18 + 100) + v14);
  if (v15 != 140)
  {
    goto LABEL_27;
  }

LABEL_23:
  v19 = *(a1 + 32);
  if (*(v19 + 112) == 1)
  {
    result = sub_1E544DF60((a2 + 185), *(v19 + 116), *(v19 + 120), *(v19 + 124), 8, 1, *(v19 + 128) + v14);
  }

  v20 = *(a1 + 104);
  if (*(v20 + 112) == 1)
  {
    result = sub_1E544DF60((a2 + 185), *(v20 + 116), *(v20 + 120), *(v20 + 124), 4, 1, *(v20 + 128) + v14);
  }

LABEL_27:
  v21 = *(a1 + 152);
  if (*v21 == 1)
  {
    result = sub_1E544DF60((a2 + 437), *(v21 + 4), *(v21 + 8), *(v21 + 12), 8, 1, *(v21 + 16) + v14);
    if (*(a1 + 288) != 1)
    {
LABEL_29:
      if (*(a1 + 316) != 1)
      {
        goto LABEL_30;
      }

      goto LABEL_44;
    }
  }

  else if (*(a1 + 288) != 1)
  {
    goto LABEL_29;
  }

  result = sub_1E544DF60((a2 + 206), *(a1 + 292), *(a1 + 296), *(a1 + 300), 8, 1, *(a1 + 304) + v14);
  if (*(a1 + 316) != 1)
  {
LABEL_30:
    if (*(a1 + 176) != 1)
    {
      goto LABEL_31;
    }

    goto LABEL_45;
  }

LABEL_44:
  result = sub_1E544DF60((a2 + 227), *(a1 + 320), *(a1 + 324), *(a1 + 328), 8, 1, *(a1 + 332) + v14);
  if (*(a1 + 176) != 1)
  {
LABEL_31:
    if (*(a1 + 204) != 1)
    {
      goto LABEL_32;
    }

    goto LABEL_46;
  }

LABEL_45:
  result = sub_1E544DF60((a2 + 206), *(a1 + 180), *(a1 + 184), *(a1 + 188), 8, 1, *(a1 + 192) + v14);
  if (*(a1 + 204) != 1)
  {
LABEL_32:
    if (*(a1 + 232) != 1)
    {
      goto LABEL_33;
    }

    goto LABEL_47;
  }

LABEL_46:
  result = sub_1E544DF60((a2 + 227), *(a1 + 208), *(a1 + 212), *(a1 + 216), 8, 1, *(a1 + 220) + v14);
  if (*(a1 + 232) != 1)
  {
LABEL_33:
    if (*(a1 + 260) != 1)
    {
      goto LABEL_34;
    }

    goto LABEL_48;
  }

LABEL_47:
  result = sub_1E544DF60((a2 + 248), *(a1 + 236), *(a1 + 240), *(a1 + 244), 8, 1, *(a1 + 248) + v14);
  if (*(a1 + 260) != 1)
  {
LABEL_34:
    if (*(a1 + 372) != 1)
    {
      goto LABEL_35;
    }

    goto LABEL_49;
  }

LABEL_48:
  result = sub_1E544DF60((a2 + 269), *(a1 + 264), *(a1 + 268), *(a1 + 272), 8, 1, *(a1 + 276) + v14);
  if (*(a1 + 372) != 1)
  {
LABEL_35:
    if (*(a1 + 344) != 1)
    {
      goto LABEL_36;
    }

    goto LABEL_50;
  }

LABEL_49:
  result = sub_1E544DF60((a2 + 290), *(a1 + 376), *(a1 + 380), *(a1 + 384), 8, 1, *(a1 + 388) + v14);
  if (*(a1 + 344) != 1)
  {
LABEL_36:
    if (*(a1 + 400) != 1)
    {
      goto LABEL_37;
    }

    goto LABEL_51;
  }

LABEL_50:
  result = sub_1E544DF60((a2 + 59), *(a1 + 348), *(a1 + 352), *(a1 + 356), 8, 2, *(a1 + 360) + v14);
  if (*(a1 + 400) != 1)
  {
LABEL_37:
    if (*(a1 + 484) != 1)
    {
      goto LABEL_38;
    }

LABEL_52:
    result = sub_1E544DF60((a2 + 38), *(a1 + 488), *(a1 + 492), *(a1 + 496), 8, 3, *(a1 + 500));
    if (*(a1 + 512) != 1)
    {
      return result;
    }

    goto LABEL_39;
  }

LABEL_51:
  result = sub_1E544DF60((a2 + 374), *(a1 + 404), *(a1 + 408), *(a1 + 412), 8, 1, *(a1 + 416) + v14);
  if (*(a1 + 484) == 1)
  {
    goto LABEL_52;
  }

LABEL_38:
  if (*(a1 + 512) != 1)
  {
    return result;
  }

LABEL_39:
  v22 = *(a1 + 516);
  v23 = *(a1 + 520);
  v24 = *(a1 + 524);
  v25 = *(a1 + 528);

  return sub_1E544DF60((a2 + 311), v22, v23, v24, 8, 3, v25);
}

__n128 sub_1E5416658(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = 0;
  *(a3 + 92) = *(a2 + 100);
  v4 = *a2;
  *(a3 + 8) = *(a2 + 4);
  *a3 = v4;
  v5 = *(a2 + 10);
  *(a3 + 18) = *(a2 + 9);
  *(a3 + 10) = v5;
  v6 = *(a2 + 20);
  *(a3 + 28) = *(a2 + 14);
  *(a3 + 20) = v6;
  v7 = *(a2 + 30);
  *(a3 + 38) = *(a2 + 19);
  *(a3 + 30) = v7;
  v8 = a2[5];
  *(a3 + 48) = *(a2 + 24);
  *(a3 + 40) = v8;
  v9 = *(a2 + 52);
  v10 = *(a2 + 68);
  *(a3 + 84) = *(a2 + 84);
  *(a3 + 68) = v10;
  *(a3 + 52) = v9;
  v11 = *(a2 + 134);
  *(a3 + 124) = *(a2 + 75);
  *(a3 + 108) = v11;
  v12 = *(a2 + 116);
  *(a3 + 142) = *(a2 + 66);
  *(a3 + 126) = v12;
  v13 = *(a2 + 165);
  *(a3 + 144) = *(a2 + 163);
  *(a3 + 160) = v13;
  v14 = (a2 + 50);
  do
  {
    v15 = *(a3 + 240 + v3);
    v16 = vmovl_u16(v14[-14]);
    *v15 = vmovl_u16(v14[-15]);
    v15[1] = v16;
    v17 = vmovl_u16(v14[-12]);
    v15[2] = vmovl_u16(v14[-13]);
    v15[3] = v17;
    v18 = vmovl_u16(v14[-10]);
    v15[4] = vmovl_u16(v14[-11]);
    v15[5] = v18;
    v19 = vmovl_u16(v14[-8]);
    v15[6] = vmovl_u16(v14[-9]);
    v15[7] = v19;
    v20 = vmovl_u16(v14[-6]);
    v15[8] = vmovl_u16(v14[-7]);
    v15[9] = v20;
    v21 = vmovl_u16(v14[-4]);
    v15[10] = vmovl_u16(v14[-5]);
    v15[11] = v21;
    v22 = vmovl_u16(v14[-2]);
    v15[12] = vmovl_u16(v14[-3]);
    v15[13] = v22;
    v23 = vmovl_u16(v14[-1]);
    v24 = vmovl_u16(*v14);
    v3 += 24;
    v14 += 16;
    v15[14] = v23;
    v15[15] = v24;
  }

  while (v3 != 192);
  *(a3 + 176) = *(a2 + 668);
  *(a3 + 436) = *(a2 + 24);
  *(a3 + 180) = *(a2 + 100);
  *(a3 + 196) = *(a2 + 101);
  *(a3 + 212) = *(a2 + 102);
  *(a3 + 228) = a2[206];
  *(a3 + 236) = *(a2 + 414);
  *(a3 + 432) = *(a2 + 857);
  result = *(a2 + 1660);
  v26 = *(a2 + 1676);
  *(a3 + 476) = *(a2 + 423);
  *(a3 + 444) = result;
  *(a3 + 460) = v26;
  return result;
}

uint64_t sub_1E54167F0(uint64_t a1, int a2, unsigned int a3)
{
  switch(a2)
  {
    case 0:
      return *(a1 + 32) + 28 * a3;
    case 1:
      if (*(a1 + 28) != 1)
      {
        v15 = a3;
        v16 = sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwCrete.cpp", 285, "FlowType::kFlow1 == flow_ && Only valid for flow1", 51, &unk_1E549A011, 0, sub_1E548FDE0);
        a3 = v15;
        if (v16)
        {
          goto LABEL_54;
        }
      }

      result = *(a1 + 56) + 28 * a3;
      break;
    case 2:
      if (*(a1 + 28) != 1)
      {
        v11 = a3;
        v12 = sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwCrete.cpp", 288, "FlowType::kFlow1 == flow_ && Only valid for flow1", 51, &unk_1E549A011, 0, sub_1E548FDE0);
        a3 = v11;
        if (v12)
        {
          goto LABEL_54;
        }
      }

      result = *(a1 + 80) + 28 * a3;
      break;
    case 3:
      return *(a1 + 104) + 28 * a3;
    case 4:
      if (*(a1 + 28) != 1)
      {
        v7 = a3;
        v8 = sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwCrete.cpp", 293, "FlowType::kFlow1 == flow_ && Only valid for flow1", 51, &unk_1E549A011, 0, sub_1E548FDE0);
        a3 = v7;
        if (v8)
        {
          goto LABEL_54;
        }
      }

      result = *(a1 + 128) + 28 * a3;
      break;
    case 5:
      v17 = *(a1 + 28);
      if (v17 != 1 && (a3 || v17 != 2))
      {
        v18 = a3;
        v19 = sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwCrete.cpp", 297, "(FlowType::kFlow1 == flow_) || ((FlowType::kFlow2 == flow_) && octave == 0) && Invalid request", 96, &unk_1E549A011, 0, sub_1E548FDE0);
        a3 = v18;
        if (v19)
        {
          goto LABEL_54;
        }
      }

      result = *(a1 + 152) + 28 * a3;
      break;
    case 6:
      if (*(a1 + 28) != 2)
      {
        v20 = a3;
        v21 = sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwCrete.cpp", 300, "FlowType::kFlow2 == flow_ && Only valid for flow2", 51, &unk_1E549A011, 0, sub_1E548FDE0);
        a3 = v20;
        if (v21)
        {
          goto LABEL_54;
        }
      }

      if (a3 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwCrete.cpp", 301, "octave == 0 && Invalid request", 32, &unk_1E549A011, 0, sub_1E548FDE0))
      {
        goto LABEL_54;
      }

      result = a1 + 176;
      break;
    case 7:
      if (*(a1 + 28) != 2)
      {
        v13 = a3;
        v14 = sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwCrete.cpp", 304, "FlowType::kFlow2 == flow_ && Only valid for flow2", 51, &unk_1E549A011, 0, sub_1E548FDE0);
        a3 = v13;
        if (v14)
        {
          goto LABEL_54;
        }
      }

      if (a3 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwCrete.cpp", 305, "octave == 0 && Invalid request", 32, &unk_1E549A011, 0, sub_1E548FDE0))
      {
        goto LABEL_54;
      }

      result = a1 + 204;
      break;
    case 8:
      if (*(a1 + 28) != 2)
      {
        v24 = a3;
        v25 = sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwCrete.cpp", 308, "FlowType::kFlow2 == flow_ && Only valid for flow2", 51, &unk_1E549A011, 0, sub_1E548FDE0);
        a3 = v24;
        if (v25)
        {
          goto LABEL_54;
        }
      }

      if (a3 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwCrete.cpp", 309, "octave == 0 && Invalid request", 32, &unk_1E549A011, 0, sub_1E548FDE0))
      {
        goto LABEL_54;
      }

      result = a1 + 232;
      break;
    case 9:
      if (*(a1 + 28) != 2)
      {
        v9 = a3;
        v10 = sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwCrete.cpp", 312, "FlowType::kFlow2 == flow_ && Only valid for flow2", 51, &unk_1E549A011, 0, sub_1E548FDE0);
        a3 = v9;
        if (v10)
        {
          goto LABEL_54;
        }
      }

      if (a3 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwCrete.cpp", 313, "octave == 0 && Invalid request", 32, &unk_1E549A011, 0, sub_1E548FDE0))
      {
        goto LABEL_54;
      }

      result = a1 + 260;
      break;
    case 10:
      if (*(a1 + 28) != 2)
      {
        v22 = a3;
        v23 = sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwCrete.cpp", 316, "FlowType::kFlow2 == flow_ && Only valid for flow2", 51, &unk_1E549A011, 0, sub_1E548FDE0);
        a3 = v22;
        if (v23)
        {
          goto LABEL_54;
        }
      }

      if (a3 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwCrete.cpp", 317, "octave == 0 && Invalid request", 32, &unk_1E549A011, 0, sub_1E548FDE0))
      {
        goto LABEL_54;
      }

      result = a1 + 288;
      break;
    case 11:
      if (*(a1 + 28) != 2)
      {
        v5 = a3;
        v6 = sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwCrete.cpp", 320, "FlowType::kFlow2 == flow_ && Only valid for flow2", 51, &unk_1E549A011, 0, sub_1E548FDE0);
        a3 = v5;
        if (v6)
        {
          goto LABEL_54;
        }
      }

      if (a3 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwCrete.cpp", 321, "octave == 0 && Invalid request", 32, &unk_1E549A011, 0, sub_1E548FDE0))
      {
        goto LABEL_54;
      }

      result = a1 + 316;
      break;
    case 12:
      if (a3 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwCrete.cpp", 324, "octave == 0 && Invalid request", 32, &unk_1E549A011, 0, sub_1E548FDE0))
      {
        goto LABEL_54;
      }

      result = a1 + 372;
      break;
    case 13:
      if (a3 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwCrete.cpp", 327, "octave == 0 && Invalid request", 32, &unk_1E549A011, 0, sub_1E548FDE0))
      {
LABEL_54:
        abort();
      }

      result = a1 + 400;
      break;
    default:
      sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwCrete.cpp", 330, &unk_1E549A011, 0, "Unsupported buffer type", 23, sub_1E548FDE0);
      abort();
  }

  return result;
}

uint64_t sub_1E5416ED4(uint64_t result, int32x4_t *a2)
{
  v3 = result;
  if (*(result + 28) != 2)
  {
    result = sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwCrete.cpp", 336, "FlowType::kFlow2 == flow_ && Only supported in flow2", 54, &unk_1E549A011, 0, sub_1E548FDE0);
    if (result)
    {
      abort();
    }
  }

  v4 = *(v3 + 16);
  v5 = 2 * v4 - 2;
  if (2 * v4 != 2)
  {
    v6 = *(v3 + 832);
    if (v5 < 4)
    {
      v7 = 0;
      goto LABEL_15;
    }

    if (v5 >= 0x10)
    {
      v7 = v5 & 0xFFFFFFFFFFFFFFF0;
      v8 = (v6 + 1084);
      v9 = a2 + 4;
      v10 = v5 & 0xFFFFFFFFFFFFFFF0;
      do
      {
        v11 = vuzp1q_s16(vuzp1q_s32(v9[-4], v9[-3]), vuzp1q_s32(v9[-2], v9[-1]));
        v12 = vuzp1q_s16(vuzp1q_s32(*v9, v9[1]), vuzp1q_s32(v9[2], v9[3]));
        v8[-1] = v11;
        *v8 = v12;
        *(v8 - 34) = v11;
        *(v8 - 18) = v12;
        v8 += 2;
        v9 += 8;
        v10 -= 16;
      }

      while (v10);
      if (v7 == v5)
      {
        return result;
      }

      if ((v5 & 0xC) == 0)
      {
LABEL_15:
        v19 = v7 - 2 * v4 + 2;
        v20 = (v6 + 2 * v7 + 1050);
        v21 = &a2->i16[4 * v7];
        do
        {
          v22 = *v21;
          v21 += 4;
          v20[9] = v22;
          *v20++ = v22;
        }

        while (!__CFADD__(v19++, 1));
        return result;
      }
    }

    else
    {
      v7 = 0;
    }

    v13 = v7;
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL;
    v14 = (v6 + 2 * v13 + 1068);
    v15 = (a2 + 8 * v13);
    v16 = v13 - (v5 & 0xFFFFFFFFFFFFFFFCLL);
    do
    {
      v18 = *v15;
      v17 = v15[1];
      v15 += 2;
      *v17.i8 = vmovn_s32(vuzp1q_s32(v18, v17));
      *v14 = v17.i64[0];
      *(v14++ - 18) = v17.i64[0];
      v16 += 4;
    }

    while (v16);
    if (v7 != v5)
    {
      goto LABEL_15;
    }
  }

  return result;
}

uint64_t sub_1E5417044()
{
  result = sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwCrete.cpp", 346, "0 && Update config not supported", 34, &unk_1E549A011, 0, sub_1E548FDE0);
  if (result)
  {
    abort();
  }

  return result;
}

__n128 sub_1E5417098@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  v2 = *(a1 + 832);
  v3 = v2[106];
  v4.n128_u64[0] = v3;
  v4.n128_u64[1] = HIDWORD(v3);
  v5 = v4;
  v6 = v2[107];
  v4.n128_u64[0] = v6;
  v4.n128_u64[1] = HIDWORD(v6);
  *a2 = v5;
  a2[1] = v4;
  v5.n128_u64[0] = v2[108];
  v4.n128_u64[0] = v5.n128_u32[0];
  v4.n128_u64[1] = v5.n128_u32[1];
  result = v4;
  v8 = v2[109];
  v4.n128_u64[0] = v8;
  v4.n128_u64[1] = HIDWORD(v8);
  a2[2] = result;
  a2[3] = v4;
  return result;
}

uint64_t sub_1E54170D8(uint64_t result, int a2)
{
  v3 = result;
  if (*(result + 28) != 2)
  {
    result = sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwCrete.cpp", 364, "FlowType::kFlow2 == flow_ && Only supported in flow2", 54, &unk_1E549A011, 0, sub_1E548FDE0);
    if (result)
    {
      abort();
    }
  }

  *(*(v3 + 832) + 1284) = a2;
  return result;
}

uint64_t sub_1E541715C(uint64_t result, int *a2, uint64_t a3)
{
  v3 = *a2;
  *(a3 + 8) = 1;
  *(a3 + 12) = v3;
  if (v3 == 1)
  {
    v6 = 0x20000;
    v4 = 0x80000;
    v5 = 0x200000;
    goto LABEL_5;
  }

  if (v3 == 2)
  {
    v4 = 98304;
    v5 = 0x400000;
    v6 = 98304;
LABEL_5:
    *a3 = *(result + 864) + v5;
    *(a3 + 16) = 0;
    *(a3 + 20) = v4;
    *(a3 + 24) = 0x100000;
    *(a3 + 28) = v6;
    return result;
  }

  *a3 = -1;
  *(a3 + 16) = -1;
  *(a3 + 20) = 0;
  *(a3 + 24) = 0;
  *(a3 + 28) = 0;
  return result;
}

double sub_1E54171D8(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwPlatformInterface.h", 423, "(operation_buffer_base_addr_) && HwPlatformInterface::InitLaccOperation() called with NULL argument.", 102, &unk_1E549A011, 0, sub_1E548FDE0);
    abort();
  }

  *a2 = xmmword_1E5491E30;
  *&result = 0xEC000000000;
  *(a2 + 16) = 0xEC000000000;
  return result;
}

uint32x4_t sub_1E5417240(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v5 = *(a2 + 4);
  if (qword_1EE30C490 == 1)
  {
    v6 = qword_1EE30C488;
    v7 = qword_1EE30C490;
    if ((qword_1EE30C490 & 1) == 0)
    {
      goto LABEL_6;
    }

LABEL_5:
    if (v6 == 33056)
    {
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  sub_1E548F388();
  v6 = sub_1E548ED74();
  qword_1EE30C488 = v6;
  LOBYTE(qword_1EE30C490) = v8;
  v7 = v8;
  if (v8)
  {
    goto LABEL_5;
  }

LABEL_6:
  if ((v7 & 1) == 0 && (sub_1E548F388(), v6 = sub_1E548ED74(), qword_1EE30C488 = v6, LOBYTE(qword_1EE30C490) = v9, (v9 & 1) == 0) || v6 != 33058)
  {
    if (sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwCvdAllConfigurationUtils.h", 160, "isPlatformMatched && Configuration not supported.", 51, &unk_1E549A011, 0, sub_1E548FDE0))
    {
      goto LABEL_48;
    }
  }

LABEL_10:
  v10 = *a3;
  if (v10 >= 4)
  {
    if (sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwCvdAllConfigurationUtils.h", 168, "(config.laccMode < 4) && LaccMode has to be set to a value between 0 and 3 inclusive.", 87, &unk_1E549A011, 0, sub_1E548FDE0))
    {
      goto LABEL_48;
    }

    LOBYTE(v10) = *a3;
  }

  v11 = a2 + v5;
  *(v11 + 20) = *(v11 + 20) & 0xFFFFFFFC | v10 & 3;
  *(v11 + 80) &= ~1u;
  *(v11 + 144) |= 1u;
  *(v11 + 1232) |= 1u;
  if (a3[2] >= 3u && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwCvdAllConfigurationUtils.h", 205, "(config.rmaInitiator[i] >= 0 && config.rmaInitiator[i] < 3) && RMA initiator setting is either 0, 1, or 2.", 108, &unk_1E549A011, 0, sub_1E548FDE0) || a3[6] >= 3u && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwCvdAllConfigurationUtils.h", 207, "(config.wmaInitiator[i] >= 0 && config.wmaInitiator[i] < 3) && WMA initiator setting is either 0, 1, or 2.", 108, &unk_1E549A011, 0, sub_1E548FDE0) || a3[3] >= 3u && (sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwCvdAllConfigurationUtils.h", 205, "(config.rmaInitiator[i] >= 0 && config.rmaInitiator[i] < 3) && RMA initiator setting is either 0, 1, or 2.", 108, &unk_1E549A011, 0, sub_1E548FDE0) & 1) != 0 || a3[7] >= 3u && (sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwCvdAllConfigurationUtils.h", 207, "(config.wmaInitiator[i] >= 0 && config.wmaInitiator[i] < 3) && WMA initiator setting is either 0, 1, or 2.", 108, &unk_1E549A011, 0, sub_1E548FDE0) & 1) != 0 || a3[4] >= 3u && (sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwCvdAllConfigurationUtils.h", 205, "(config.rmaInitiator[i] >= 0 && config.rmaInitiator[i] < 3) && RMA initiator setting is either 0, 1, or 2.", 108, &unk_1E549A011, 0, sub_1E548FDE0) & 1) != 0 || a3[8] >= 3u && (sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwCvdAllConfigurationUtils.h", 207, "(config.wmaInitiator[i] >= 0 && config.wmaInitiator[i] < 3) && WMA initiator setting is either 0, 1, or 2.", 108, &unk_1E549A011, 0, sub_1E548FDE0) & 1) != 0 || a3[5] >= 3u && (sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwCvdAllConfigurationUtils.h", 205, "(config.rmaInitiator[i] >= 0 && config.rmaInitiator[i] < 3) && RMA initiator setting is either 0, 1, or 2.", 108, &unk_1E549A011, 0, sub_1E548FDE0) & 1) != 0 || a3[9] >= 3u && (sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwCvdAllConfigurationUtils.h", 207, "(config.wmaInitiator[i] >= 0 && config.wmaInitiator[i] < 3) && WMA initiator setting is either 0, 1, or 2.", 108, &unk_1E549A011, 0, sub_1E548FDE0) & 1) != 0)
  {
LABEL_48:
    abort();
  }

  if (a3[2])
  {
    *(v11 + 20) = *(v11 + 20) & 0xFFFFFFF3 | (4 * (a3[2] & 3));
    *(v11 + 3696) = *(a3 + 162);
    *(v11 + 3704) = *(a3 + 326);
  }

  if (a3[3])
  {
    *(v11 + 20) = *(v11 + 20) & 0xFFFFFFCF | (16 * (a3[3] & 3));
    *(v11 + 3708) = *(a3 + 327);
    *(v11 + 3712) = *(a3 + 164);
  }

  if (a3[4])
  {
    *(v11 + 20) = *(v11 + 20) & 0xFFFFFF3F | ((a3[4] & 3) << 6);
    *(v11 + 3720) = *(a3 + 165);
    *(v11 + 3728) = *(a3 + 332);
  }

  if (a3[5])
  {
    *(v11 + 20) = *(v11 + 20) & 0xFFFFFCFF | ((a3[5] & 3) << 8);
    *(v11 + 3732) = *(a3 + 333);
    *(v11 + 3736) = *(a3 + 167);
  }

  if (a3[6])
  {
    *(v11 + 20) = *(v11 + 20) & 0xFFFFF3FF | ((a3[6] & 3) << 10);
    *(v11 + 3744) = *(a3 + 168);
    *(v11 + 3752) = *(a3 + 338);
  }

  if (a3[7])
  {
    *(v11 + 20) = *(v11 + 20) & 0xFFFFCFFF | ((a3[7] & 3) << 12);
    *(v11 + 3756) = *(a3 + 339);
    *(v11 + 3760) = *(a3 + 170);
  }

  if (a3[8])
  {
    *(v11 + 20) = *(v11 + 20) & 0xFFFF3FFF | ((a3[8] & 3) << 14);
    *(v11 + 3768) = *(a3 + 171);
    *(v11 + 3776) = *(a3 + 344);
  }

  if (a3[9])
  {
    *(v11 + 20) = *(v11 + 20) & 0xFFFCFFFF | ((a3[9] & 3) << 16);
    *(v11 + 3780) = *(a3 + 345);
    *(v11 + 3784) = *(a3 + 173);
  }

  v12 = 2384;
  v13 = 1360;
  do
  {
    *(v11 + v12) = *&a3[v12 - 2372];
    v14 = (v11 + v13);
    *v14 = *&a3[v13 - 1216];
    v14[1] = *&a3[v13 - 1212];
    v14[2] = *&a3[v13 - 1208];
    v14[3] = *&a3[v13 - 1204];
    v14[4] = *&a3[v13 - 1200];
    v14[5] = *&a3[v13 - 1196];
    v14[6] = *&a3[v13 - 1192];
    v14[7] = *&a3[v13 - 1188];
    v12 += 4;
    v13 += 32;
  }

  while (v12 != 2512);
  *(v11 + 2528) = *(a3 + 292);
  *(v11 + 2676) = *(a3 + 293);
  *(v11 + 2680) = *(a3 + 294);
  *(v11 + 2684) = *(a3 + 295);
  *(v11 + 2532) = a3[1184];
  v15 = *(a3 + 1188);
  *(v11 + 2536) = v15;
  *(v11 + 2544) = *(a3 + 300);
  *(v11 + 2560) = a3[1216];
  *(v11 + 2580) = *(a3 + 306);
  *(v11 + 2596) = *(a3 + 310);
  *(v11 + 2612) = a3[1256];
  *(v11 + 2632) = *(a3 + 316);
  *(v11 + 2548) = *(a3 + 301);
  *(v11 + 2564) = a3[1217];
  *(v11 + 2584) = *(a3 + 307);
  *(v11 + 2600) = *(a3 + 311);
  *(v11 + 2616) = a3[1257];
  *(v11 + 2636) = *(a3 + 317);
  *(v11 + 2552) = *(a3 + 302);
  *(v11 + 2568) = a3[1218];
  *(v11 + 2588) = *(a3 + 308);
  *(v11 + 2604) = *(a3 + 312);
  *(v11 + 2620) = a3[1258];
  *(v11 + 2640) = *(a3 + 318);
  *(v11 + 2556) = *(a3 + 303);
  *(v11 + 2572) = a3[1219];
  *(v11 + 2592) = *(a3 + 309);
  *(v11 + 2608) = *(a3 + 313);
  *(v11 + 2624) = a3[1259];
  v16 = *(a3 + 323);
  v17 = *(a3 + 320);
  v18 = a3[1276];
  *(v11 + 2576) = a3[1220];
  *(v11 + 2628) = a3[1260];
  *(v11 + 2644) = v18;
  *(v11 + 2648) = v17;
  v15.i32[0] = *(a3 + 321);
  result = vmovl_u16((vmovl_u8(v15).u64[0] & 0xFF01FF01FF01FF01));
  *(v11 + 2652) = result;
  *(v11 + 2668) = a3[1288];
  *(v11 + 2672) = v16;
  return result;
}

double sub_1E54178E8(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwPlatformInterface.h", 441, "(action_buffer_base_addr_) && HwCrete::InitLaccAction() called with NULL argument.", 84, &unk_1E549A011, 0, sub_1E548FDE0);
    abort();
  }

  *a2 = xmmword_1E5491D80;
  *(a2 + 16) = 0;
  *&result = 0x100000014;
  *(a2 + 152) = 0x100000014;
  *(a2 + 160) |= 0x7FFFFFFFu;
  *(a2 + 244) |= 0x7FFFFFFFu;
  *(a2 + 328) |= 0x7FFFFFFFu;
  *(a2 + 412) |= 0x7FFFFFFFu;
  *(a2 + 496) |= 0x7FFFFFFFu;
  *(a2 + 580) |= 0x7FFFFFFFu;
  *(a2 + 664) |= 0x7FFFFFFFu;
  *(a2 + 748) |= 0x7FFFFFFFu;
  *(a2 + 832) |= 0x7FFFFFFFu;
  *(a2 + 916) |= 0x7FFFFFFFu;
  *(a2 + 1000) |= 0x7FFFFFFFu;
  *(a2 + 1084) |= 0x7FFFFFFFu;
  *(a2 + 1168) |= 0x7FFFFFFFu;
  *(a2 + 1252) |= 0x7FFFFFFFu;
  *(a2 + 1336) |= 0x7FFFFFFFu;
  *(a2 + 1420) |= 0x7FFFFFFFu;
  *(a2 + 1504) |= 0x7FFFFFFFu;
  *(a2 + 1588) |= 0x7FFFFFFFu;
  *(a2 + 1672) |= 0x7FFFFFFFu;
  *(a2 + 1756) |= 0x7FFFFFFFu;
  return result;
}

void sub_1E5417A44(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v6 = a2 + *(a2 + 4);
  if (*(v6 + 144) <= *(a3 + 2) && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwPlatformInterface.h", 466, "(info.index < max_index) && Action buffer index out-of-range", 62, &unk_1E549A011, 0, sub_1E548FDE0))
  {
    abort();
  }

  if (*a3 == 1)
  {
    v7 = v6 + 84 * *(a3 + 2);
    *(v7 + 152) = *(v7 + 152) & 0x80000000 | a4 & 0x7FFFFFFF;
    *(v7 + 166) = *(a3 + 4);
    v8 = *(a3 + 24);
    *(v7 + 164) = *(a3 + 20);
    *(v7 + 162) = v8;
    v9 = *(a3 + 32);
    *(v7 + 160) = *(a3 + 28);
    *(v7 + 156) = v9;
  }
}

uint64_t sub_1E5417B0C(uint64_t a1, _OWORD *a2, unint64_t a3)
{
  v4 = a2[197];
  v9[4] = a2[196];
  v9[5] = v4;
  v5 = a2[199];
  v9[6] = a2[198];
  v9[7] = v5;
  v6 = a2[193];
  v9[0] = a2[192];
  v9[1] = v6;
  v7 = a2[195];
  v9[2] = a2[194];
  v9[3] = v7;
  if (a3 >= 0x20 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwPlatformInterface.h", 199, "(reg < grf.size()) && register number out of range.", 53, &unk_1E549A011, 0, sub_1E548FDE0))
  {
    abort();
  }

  return *(v9 + a3);
}

void *sub_1E5417BB4(uint64_t a1, uint64_t a2, unint64_t a3, void *a4, unint64_t a5)
{
  memcpy(v9, (a2 + 2048), sizeof(v9));
  if (!a4 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwPlatformInterface.h", 208, "val && NULL pointer", 21, &unk_1E549A011, 0, sub_1E548FDE0) || a3 >= 0x20 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwPlatformInterface.h", 209, "(reg < vrf.size()) && register number out of range.", 53, &unk_1E549A011, 0, sub_1E548FDE0))
  {
    goto LABEL_10;
  }

  if (a5)
  {
    if (a5 < 9 || !sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwPlatformInterface.h", 211, "(n <= 8) && number of vector lanes cannot exceed 8", 52, &unk_1E549A011, 0, sub_1E548FDE0))
    {
      return memcpy(a4, &v9[2 * a3], 4 * a5);
    }

LABEL_10:
    abort();
  }

  result = sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwPlatformInterface.h", 210, "(n) && number of vector lanes cannot be 0", 43, &unk_1E549A011, 0, sub_1E548FDE0);
  if (result)
  {
    goto LABEL_10;
  }

  return result;
}

void *sub_1E5417D30(uint64_t a1, uint64_t a2, unint64_t a3, void *a4, unint64_t a5)
{
  memcpy(v9, (a2 + 2048), sizeof(v9));
  if (!a4 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwPlatformInterface.h", 220, "val && NULL pointer", 21, &unk_1E549A011, 0, sub_1E548FDE0) || a3 >= 0x20 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwPlatformInterface.h", 221, "(reg < vrf.size()) && register number out of range.", 53, &unk_1E549A011, 0, sub_1E548FDE0))
  {
    goto LABEL_10;
  }

  if (a5)
  {
    if (a5 < 5 || !sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwPlatformInterface.h", 223, "(n <= 4) && number of vector lanes cannot exceed 4", 52, &unk_1E549A011, 0, sub_1E548FDE0))
    {
      return memcpy(a4, &v9[2 * a3], 8 * a5);
    }

LABEL_10:
    abort();
  }

  result = sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwPlatformInterface.h", 222, "(n) && number of vector lanes cannot be 0", 43, &unk_1E549A011, 0, sub_1E548FDE0);
  if (result)
  {
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_1E5417EAC(uint64_t a1, _DWORD *a2, unint64_t a3, uint64_t a4, _DWORD *a5)
{
  if (!a4 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwPlatformInterface.h", 229, "val && NULL pointer", 21, &unk_1E549A011, 0, sub_1E548FDE0))
  {
    abort();
  }

  *a5 = 0;
  if (a3 <= 0x7F)
  {
    v9 = *(a2 + (a3 & 0xFFFFFFFFFFFFFFFCLL) + 3072);
LABEL_8:
    *a4 = v9;
    *a5 = 4;
    return 1;
  }

  if (a3 == 2004)
  {
    *a5 = 4;
    v10 = a2[818];
LABEL_12:
    *a4 = v10;
    return 1;
  }

  if (a3 == 2000)
  {
    v9 = a2[853];
    goto LABEL_8;
  }

  if (a3 - 2008 <= 0xB)
  {
    *a5 = 4;
    v10 = *(a2 + (a3 & 0x7FC) + 1268);
    goto LABEL_12;
  }

  if (a3 - 6000 <= 0x3FF)
  {
    *a5 = 32;
    v12 = (a2 + ((a3 - 6000) & 0xFFFFFFFFFFFFFFE0) + ((8 * a3 - 14016) & 0xFFE0));
    v13 = v12[1];
    *a4 = *v12;
    *(a4 + 16) = v13;
    return 1;
  }

  result = 0;
  v14 = __ROR8__(a3 - 10000, 2);
  if (v14 > 15)
  {
    if (v14 <= 18)
    {
      if (v14 == 16)
      {
        *a5 = 4;
        v10 = a2[833];
      }

      else
      {
        *a5 = 4;
        if (v14 == 17)
        {
          v10 = a2[834];
        }

        else
        {
          v10 = a2[835];
        }
      }

      goto LABEL_12;
    }

    switch(v14)
    {
      case 19:
        *a5 = 4;
        v10 = a2[837];
        goto LABEL_12;
      case 20:
        *a5 = 4;
        v10 = a2[838];
        goto LABEL_12;
      case 21:
        *a5 = 4;
        v10 = a2[839];
        goto LABEL_12;
    }
  }

  else
  {
    if (v14 > 12)
    {
      if (v14 == 13)
      {
        *a5 = 4;
        v10 = a2[828];
      }

      else
      {
        *a5 = 4;
        if (v14 == 14)
        {
          v10 = a2[829];
        }

        else
        {
          v10 = a2[831];
        }
      }

      goto LABEL_12;
    }

    switch(v14)
    {
      case 0:
        *a5 = 4;
        v10 = a2[830];
        goto LABEL_12;
      case 1:
        *a5 = 4;
        v10 = a2[832];
        goto LABEL_12;
      case 2:
        *a5 = 4;
        v10 = a2[836];
        goto LABEL_12;
    }
  }

  return result;
}

uint64_t sub_1E541811C(uint64_t a1, uint64_t a2)
{
  sub_1E5414D60(v34, 16);
  v3 = a2 + 3072;
  v4 = a2 + 2076;
  v5 = -32;
  do
  {
    v6 = v34 + *(v34[0] - 24);
    if (*(v6 + 36) == -1)
    {
      std::ios_base::getloc((v34 + *(v34[0] - 24)));
      v7 = std::locale::use_facet(&v41, MEMORY[0x1E69E5318]);
      (v7->__vftable[2].~facet_0)(v7, 32);
      std::locale::~locale(&v41);
    }

    *(v6 + 36) = 48;
    v8 = sub_1E53DF59C(&v35, "GRF ", 4);
    v9 = MEMORY[0x1E6928450](v8, v5 + 32);
    v10 = sub_1E53DF59C(v9, " = 0x", 5);
    v11 = *v10;
    *(v10 + *(*v10 - 24) + 8) = *(v10 + *(*v10 - 24) + 8) & 0xFFFFFFB5 | 8;
    *(v10 + *(v11 - 24) + 24) = 8;
    v12 = MEMORY[0x1E6928460]();
    v13 = sub_1E53DF59C(v12, "\t\t", 2);
    *(v13 + *(*v13 - 24) + 8) = *(v13 + *(*v13 - 24) + 8) & 0xFFFFFFB5 | 2;
    v14 = MEMORY[0x1E6928450]();
    sub_1E53DF59C(v14, " = (", 4);
    v15 = sub_1E53DF59C(&v35, "0x", 2);
    v16 = *v15;
    *(v15 + *(*v15 - 24) + 8) = *(v15 + *(*v15 - 24) + 8) & 0xFFFFFFB5 | 8;
    *(v15 + *(v16 - 24) + 24) = 8;
    MEMORY[0x1E6928460]();
    sub_1E53DF59C(&v35, ", ", 2);
    v17 = sub_1E53DF59C(&v35, "0x", 2);
    v18 = *v17;
    *(v17 + *(*v17 - 24) + 8) = *(v17 + *(*v17 - 24) + 8) & 0xFFFFFFB5 | 8;
    *(v17 + *(v18 - 24) + 24) = 8;
    MEMORY[0x1E6928460]();
    sub_1E53DF59C(&v35, ", ", 2);
    v19 = sub_1E53DF59C(&v35, "0x", 2);
    v20 = *v19;
    *(v19 + *(*v19 - 24) + 8) = *(v19 + *(*v19 - 24) + 8) & 0xFFFFFFB5 | 8;
    *(v19 + *(v20 - 24) + 24) = 8;
    MEMORY[0x1E6928460]();
    sub_1E53DF59C(&v35, ", ", 2);
    v21 = sub_1E53DF59C(&v35, "0x", 2);
    v22 = *v21;
    *(v21 + *(*v21 - 24) + 8) = *(v21 + *(*v21 - 24) + 8) & 0xFFFFFFB5 | 8;
    *(v21 + *(v22 - 24) + 24) = 8;
    MEMORY[0x1E6928460]();
    sub_1E53DF59C(&v35, ", ", 2);
    v23 = sub_1E53DF59C(&v35, "0x", 2);
    v24 = *v23;
    *(v23 + *(*v23 - 24) + 8) = *(v23 + *(*v23 - 24) + 8) & 0xFFFFFFB5 | 8;
    *(v23 + *(v24 - 24) + 24) = 8;
    MEMORY[0x1E6928460]();
    sub_1E53DF59C(&v35, ", ", 2);
    v25 = sub_1E53DF59C(&v35, "0x", 2);
    v26 = *v25;
    *(v25 + *(*v25 - 24) + 8) = *(v25 + *(*v25 - 24) + 8) & 0xFFFFFFB5 | 8;
    *(v25 + *(v26 - 24) + 24) = 8;
    MEMORY[0x1E6928460]();
    sub_1E53DF59C(&v35, ", ", 2);
    v27 = sub_1E53DF59C(&v35, "0x", 2);
    v28 = *v27;
    *(v27 + *(*v27 - 24) + 8) = *(v27 + *(*v27 - 24) + 8) & 0xFFFFFFB5 | 8;
    *(v27 + *(v28 - 24) + 24) = 8;
    MEMORY[0x1E6928460]();
    sub_1E53DF59C(&v35, ", ", 2);
    v29 = sub_1E53DF59C(&v35, "0x", 2);
    v30 = *v29;
    *(v29 + *(*v29 - 24) + 8) = *(v29 + *(*v29 - 24) + 8) & 0xFFFFFFB5 | 8;
    *(v29 + *(v30 - 24) + 24) = 8;
    MEMORY[0x1E6928460]();
    sub_1E53DF59C(&v35, ")", 1);
    if (v39 < 0)
    {
      operator delete(__p);
    }

    LOBYTE(__p) = 0;
    v39 = 0;
    sub_1E53E768C(&v36);
    v3 += 4;
    v4 += 32;
  }

  while (!__CFADD__(v5++, 1));
  v34[0] = *MEMORY[0x1E69E54D8];
  v32 = *(MEMORY[0x1E69E54D8] + 72);
  *(v34 + *(v34[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v35 = v32;
  v36 = MEMORY[0x1E69E5548] + 16;
  if (v39 < 0)
  {
    operator delete(__p);
  }

  v36 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&v37);
  std::iostream::~basic_iostream();
  return MEMORY[0x1E69285E0](&v40);
}

void sub_1E54188A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  std::locale::~locale((v26 - 96));
  sub_1E5415094(&a10, MEMORY[0x1E69E54D8]);
  MEMORY[0x1E69285E0](&a26);
  _Unwind_Resume(a1);
}

uint64_t sub_1E54188E8(uint64_t a1)
{
  *a1 = &unk_1F5F0A3D8;
  v2 = *(a1 + 832);
  if (v2)
  {
    *(a1 + 840) = v2;
    MEMORY[0x1E6928640]();
  }

  if (*(a1 + 703) < 0)
  {
    operator delete(*(a1 + 680));
  }

  v3 = *(a1 + 152);
  if (v3)
  {
    *(a1 + 160) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 128);
  if (v4)
  {
    *(a1 + 136) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 104);
  if (v5)
  {
    *(a1 + 112) = v5;
    operator delete(v5);
  }

  v6 = *(a1 + 80);
  if (v6)
  {
    *(a1 + 88) = v6;
    operator delete(v6);
  }

  v7 = *(a1 + 56);
  if (v7)
  {
    *(a1 + 64) = v7;
    operator delete(v7);
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    *(a1 + 40) = v8;
    operator delete(v8);
  }

  return a1;
}

void sub_1E54189AC(uint64_t a1)
{
  *a1 = &unk_1F5F0A3D8;
  v2 = *(a1 + 832);
  if (v2)
  {
    *(a1 + 840) = v2;
    MEMORY[0x1E6928640]();
  }

  if (*(a1 + 703) < 0)
  {
    operator delete(*(a1 + 680));
  }

  v3 = *(a1 + 152);
  if (v3)
  {
    *(a1 + 160) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 128);
  if (v4)
  {
    *(a1 + 136) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 104);
  if (v5)
  {
    *(a1 + 112) = v5;
    operator delete(v5);
  }

  v6 = *(a1 + 80);
  if (v6)
  {
    *(a1 + 88) = v6;
    operator delete(v6);
  }

  v7 = *(a1 + 56);
  if (v7)
  {
    *(a1 + 64) = v7;
    operator delete(v7);
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    *(a1 + 40) = v8;
    operator delete(v8);
  }

  JUMPOUT(0x1E6928650);
}

uint64_t sub_1E5418A98()
{
  result = sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwPlatformInterface.h", 174, "false && function not implemented", 35, &unk_1E549A011, 0, sub_1E548FDE0);
  if (result)
  {
    abort();
  }

  return result;
}

uint64_t sub_1E5418AEC()
{
  result = sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwPlatformInterface.h", 184, "false && function not implemented", 35, &unk_1E549A011, 0, sub_1E548FDE0);
  if (result)
  {
    abort();
  }

  return result;
}

uint64_t sub_1E5418B40()
{
  result = sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwPlatformInterface.h", 191, "false && function not implemented", 35, &unk_1E549A011, 0, sub_1E548FDE0);
  if (result)
  {
    abort();
  }

  return result;
}

uint64_t sub_1E5418B94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27)
{
  result = kdebug_trace();
  if (*(a3 + 89) != 1)
  {
    if ((*(a3 + 113) & 1) == 0)
    {
      return result;
    }

LABEL_12:
    sub_1E541B450(a4, *(a4 + 8));
    *a4 = a4 + 8;
    *(a4 + 16) = 0;
    *(a4 + 8) = 0;
    if ((*(a3 + 68) == 2 || !sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwCreteUtils.cpp", 107, "config.flow == FlowType::kFlow2 && This function is only valid in flow2", 73, &unk_1E549A011, 0, sub_1E548FDE0)) && ((*(a3 + 76) & 1) != 0 || !sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwCreteUtils.cpp", 110, "config.enableDynamicThresholding && Dynamic Thresholding should be enabled", 76, &unk_1E549A011, 0, sub_1E548FDE0)))
    {
      v36 = *(a1 + 176);
      v37 = *(a1 + 152);
      if (v36 >= v37 && *(a3 + 24))
      {
        if (sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwCreteUtils.cpp", 121, "(full_desc_max_data.offset < full_desc_min_data.offset || config.maxNumberOfKeypoints == 0) && Full desc maxima offset should be lower than Full desc minima offset.", 166, &unk_1E549A011, 0, sub_1E548FDE0))
        {
          goto LABEL_23;
        }

        v37 = *(a1 + 152);
        v36 = *(a1 + 176);
      }

      if (v37 == *(a1 + 180) + v36 || !sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwCreteUtils.cpp", 125, "full_desc_min_data.offset == full_desc_max_data.offset + full_desc_max_data.max_size && Full desc maxima and Full desc minima should be contiguous in memory", 158, &unk_1E549A011, 0, sub_1E548FDE0))
      {
        operator new();
      }
    }

LABEL_23:
    abort();
  }

  if (*(a3 + 113))
  {
    goto LABEL_12;
  }

  if (*(a1 + 184))
  {
    v32 = 0;
    v33 = (*(a1 + 192) + 64);
    do
    {
      *v33 &= ~0x8000000000000000;
      v33 += 9;
      ++v32;
    }

    while (v32 < *(a1 + 184));
  }

  if (*(a1 + 160))
  {
    v34 = 0;
    v35 = (*(a1 + 168) + 64);
    do
    {
      *v35 |= 0x8000000000000000;
      v35 += 9;
      ++v34;
    }

    while (v34 < *(a1 + 160));
  }

  sub_1E5419BDC(a1, a3);
  if (*(a3 + 76) == 1 && *(a3 + 90) == 1)
  {
    v38 = 2 * *(a3 + 50);
    v39 = *(a3 + 20);
    v41[0] = v39;
    v41[1] = v39;
    v41[2] = v39;
    v41[3] = v39;
    v41[4] = v39;
    v41[5] = v39;
    v41[6] = v39;
    v41[7] = v39;
    (*(*a2 + 96))(&v40, a2);
    sub_1E5478704(&v40, *(a1 + 296) + 240, v38, v39, v41, *(a3 + 80));
    (*(*a2 + 112))(a2, v41);
  }

  (*(*a2 + 136))(a2, *(*(a1 + 296) + 180));
  return kdebug_trace();
}

void sub_1E5419BDC(uint64_t a1, unsigned int *a2)
{
  v4 = *(a1 + 176);
  v5 = *(a1 + 152);
  if (v4 >= v5 && a2[6] != 0)
  {
    if (sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwDesgenUtils.h", 56, "(full_desc_max_data.offset < full_desc_min_data.offset || config.maxNumberOfKeypoints == 0) && Full desc maxima offset should be lower than Full desc minima offset.", 166, &unk_1E549A011, 0, sub_1E548FDE0))
    {
      goto LABEL_22;
    }

    v5 = *(a1 + 152);
    v4 = *(a1 + 176);
  }

  if (v5 != *(a1 + 180) + v4 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwDesgenUtils.h", 60, "full_desc_min_data.offset == full_desc_max_data.offset + full_desc_max_data.max_size && Full desc maxima and Full desc minima should be contiguous in memory", 158, &unk_1E549A011, 0, sub_1E548FDE0))
  {
LABEL_22:
    abort();
  }

  v22 = 0;
  __dst = 0;
  v24 = 0;
  v7 = *(a1 + 168);
  sub_1E5421438(*(a1 + 192), *(a1 + 184), &v22);
  __p = 0;
  v20 = 0;
  v21 = 0;
  sub_1E5421438(v7, *(a1 + 160), &__p);
  v8 = __dst;
  v9 = __p;
  v10 = v20;
  if (__p != v20)
  {
    v11 = ((__dst - v22) >> 3);
    v12 = v20 - __p - 8;
    v13 = __p;
    if (v12 <= 0x17)
    {
      goto LABEL_25;
    }

    v14 = (v12 >> 3) + 1;
    v13 = __p + 8 * (v14 & 0x3FFFFFFFFFFFFFFCLL);
    v15 = vdupq_n_s64(v11);
    v16 = (__p + 16);
    v17 = v14 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v18 = vaddq_s64(*v16, v15);
      v16[-1] = vaddq_s64(v16[-1], v15);
      *v16 = v18;
      v16 += 2;
      v17 -= 4;
    }

    while (v17);
    if (v14 != (v14 & 0x3FFFFFFFFFFFFFFCLL))
    {
LABEL_25:
      do
      {
        *v13++ += v11;
      }

      while (v13 != v10);
    }
  }

  sub_1E541A8EC(&v22, v8, v9, v10, (v10 - v9) >> 3);
  if (__p)
  {
    v20 = __p;
    operator delete(__p);
  }

  sub_1E5419E50(a1);
  if (*(a2 + 77) == 1)
  {
    sub_1E541A31C(*(a1 + 288), *(a1 + 284), *(a1 + 168), *(a1 + 160), *(a2 + 16), *(a2 + 17), *(a2 + 18), a2[6], *a2, a2[1], &v22);
  }

  sub_1E5419F90(a1, &v22);
  if (v22)
  {
    __dst = v22;
    operator delete(v22);
  }
}

void sub_1E5419DF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_1E5419E50(_BYTE *result)
{
  v1 = result;
  if (result[20] != 2 && (result = sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwIspDataHandler.h", 297, "FlowType::kFlow2 == flow_ && Only valid in flow2", 50, &unk_1E549A011, 0, sub_1E548FDE0), result) || (v1[385] & 1) == 0 && (v1[386] & 1) == 0 && (result = sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwIspDataHandler.h", 299, "(full_descriptor_output_enabled_ || short_descriptor_output_enabled_) && Only valid when full desc enabled or short desc enabled", 130, &unk_1E549A011, 0, sub_1E548FDE0), result))
  {
    abort();
  }

  v2 = *(v1 + 24);
  if (*(v1 + 75))
  {
    *(v1 + 36) = v2;
    *(v1 + 70) = *(v1 + 44);
    *(v1 + 71) = *(v1 + 46);
    *(v1 + 23) = 0;
    *(v1 + 24) = 0;
    *(v1 + 22) = 0;
  }

  else
  {
    v3 = *(v1 + 21);
    v4 = *(v1 + 46);
    v5 = *(v1 + 40);
    *(v1 + 36) = v2;
    *(v1 + 70) = *(v1 + 44);
    *(v1 + 71) = v5 + v4;
    *(v1 + 168) = 0u;
    *(v1 + 152) = 0u;
    *(v1 + 184) = 0u;
    if (v5)
    {

      return memcpy((v2 + 72 * v4), v3, 72 * v5);
    }
  }

  return result;
}

void sub_1E5419F90(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 20) != 2 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwIspDataHandler.h", 359, "FlowType::kFlow2 == flow_ && Only valid in flow2", 50, &unk_1E549A011, 0, sub_1E548FDE0) || (v28 = *(a1 + 168), v29 = *(a1 + 288), v4 = (*(a1 + 160) + *(a1 + 284)), v6 = *a2, v5 = a2[1], v7 = v5 - *a2, v7 >> 3 > v4) && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwIspDataHandler.h", 374, "final_num_keypoints <= (full_desc_data_.num_descriptors + full_desc_min_data_.num_descriptors)", 94, &unk_1E549A011, 0, sub_1E548FDE0))
  {
LABEL_28:
    abort();
  }

  v8 = *(a1 + 144);
  if (v5 != v6)
  {
    if ((v7 >> 3) < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_1E5415338();
  }

  v26 = a2[1] - *a2;
  if (v26)
  {
    v27 = v7;
    v9 = 0;
    v10 = (v4 - 1);
    v11 = v26 >> 3;
    if (v11 <= 1)
    {
      v12 = 1;
    }

    else
    {
      v12 = v11;
    }

    v13 = 12;
    do
    {
      v17 = *(*a2 + 8 * v9);
      if (v17 > v10)
      {
        if (sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/include/VIO/HWFeatureDetection/HwIspDataHandler.h", 389, "idx[i] <= max_valid_idx", 23, &unk_1E549A011, 0, sub_1E548FDE0))
        {
          goto LABEL_28;
        }

        v17 = *(*a2 + 8 * v9);
      }

      v18 = *(a1 + 284);
      v19 = (v29 + 72 * v17);
      v20 = v17 >= v18;
      v21 = (v28 + 72 * (v17 - v18));
      if (v20)
      {
        v22 = v21;
      }

      else
      {
        v22 = v19;
      }

      v23 = *(v22 + 8);
      *(v13 - 12) = vcvts_n_f32_u64(v23, 6uLL);
      *(v13 - 8) = vcvts_n_f32_u64(WORD1(v23), 6uLL);
      v24 = pow(1.41421356, vcvts_n_f32_u64(BYTE5(v23), 4uLL));
      *(v13 + 4) = v23 < 0;
      v25 = BYTE4(v23) * 3.14159265 * 0.0078125;
      *(v13 - 4) = v25;
      *v13 = v24;
      *(v13 + 8) = (HIWORD(v23) & 0x7FFF);
      if (*(a1 + 388) == 1)
      {
        sub_1E5436DE8(v22, v8);
      }

      else
      {
        v14 = *v22;
        v15 = v22[1];
        v16 = v22[3];
        v8[2] = v22[2];
        v8[3] = v16;
        *v8 = v14;
        v8[1] = v15;
      }

      ++v9;
      v8 += 4;
      v13 += 24;
    }

    while (v12 != v9);
    *(*(a1 + 400) + 4) = v27 >> 3;

    operator delete(0);
  }

  else
  {
    *(*(a1 + 400) + 4) = v7 >> 3;
  }
}

void sub_1E541A31C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7, int a8, unint64_t a9, unint64_t a10, void *a11)
{
  if ((a5 != 1 || a6 != 1) && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/Hardware/include/VIO/Hardware/KeyPointAndDescriptorGeneratorUtils.h", 64, "(num_buckets_x == 1 && num_buckets_y == 1) && num_buckets x and y should be 1, other settings are currently not supported", 123, &unk_1E549A011, 0, sub_1E548FDE0) || a7 <= 0 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/Hardware/include/VIO/Hardware/KeyPointAndDescriptorGeneratorUtils.h", 65, "num_buckets_scale >= 1 && num of buckets scale should be >= 1", 63, &unk_1E549A011, 0, sub_1E548FDE0) || (v17 = a4 + a2, a4 + a2 != (a11[1] - *a11) >> 3) && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/Hardware/include/VIO/Hardware/KeyPointAndDescriptorGeneratorUtils.h", 68, "(kp_desc_size + kp_desc_size_min) == kp_idx.size() && total kp_desc_size and kp_idx size should match", 103, &unk_1E549A011, 0, sub_1E548FDE0))
  {
LABEL_56:
    abort();
  }

  v18 = a6 * a5;
  v19 = a6 * a5 * a7;
  __p = 0;
  v59 = 0;
  v60 = 0;
  p_p = &__p;
  v62 = 0;
  if (v19)
  {
    if ((v19 & 0x80000000) == 0)
    {
      operator new();
    }

    sub_1E5415338();
  }

  if (v17)
  {
    v20 = a6;
    v21 = 0;
    v22 = (a7 - 1);
    v23 = a10 / v20;
    do
    {
      v24 = *(*a11 + 8 * v21);
      v25 = a3;
      if (v24 >= a2)
      {
        v26 = a2;
      }

      else
      {
        v25 = a1;
        v26 = 0;
      }

      v27 = v25 + 72 * (v24 - v26);
      v30 = *(v27 + 64);
      v29 = (v27 + 64);
      v28 = v30;
      v31 = vcvtms_s32_f32((v30 / (a9 / a5)) * 0.015625) + vcvtms_s32_f32((WORD1(v30) / v23) * 0.015625) * a5;
      if (v31)
      {
        if (sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/Hardware/include/VIO/Hardware/KeyPointAndDescriptorGeneratorUtils.h", 97, "bin_index == 0 && bin index should always be 0", 48, &unk_1E549A011, 0, sub_1E548FDE0))
        {
          goto LABEL_56;
        }

        v28 = *v29;
        v24 = *(*a11 + 8 * v21);
      }

      v32 = vcvts_n_f32_u64(BYTE5(v28), 4uLL) * 0.25;
      if (v32 > v22)
      {
        v32 = v22;
      }

      *&p_p = (HIWORD(v28) & 0x7FFF);
      HIDWORD(p_p) = v24;
      sub_1E541AC90(__p + 24 * (v31 + v18 * vcvtms_s32_f32(v32)), &p_p);
      ++v21;
    }

    while (v17 != v21);
  }

  a11[1] = *a11;
  v33 = 0;
  do
  {
    v34 = __p + 24 * v33;
    v35 = *v34;
    v36 = *(v34 + 1);
    v37 = (v36 - *v34) >> 3;
    if (v37 >= a8 / 0)
    {
      v38 = a8 / 0;
    }

    else
    {
      v38 = v37;
    }

    v39 = &v35[2 * v38];
    if (v39 != v36)
    {
      sub_1E541AF28(v35, v39, v36);
    }

    if (v38)
    {
      v40 = a11[1];
      v41 = 4;
      do
      {
        v42 = *(*(__p + 3 * v33) + v41);
        v43 = a11[2];
        if (v40 < v43)
        {
          *v40++ = v42;
        }

        else
        {
          v44 = *a11;
          v45 = v40 - *a11;
          v46 = v45 >> 3;
          v47 = (v45 >> 3) + 1;
          if (v47 >> 61)
          {
            sub_1E5415338();
          }

          v48 = v43 - v44;
          if (v48 >> 2 > v47)
          {
            v47 = v48 >> 2;
          }

          if (v48 >= 0x7FFFFFFFFFFFFFF8)
          {
            v49 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v49 = v47;
          }

          if (v49)
          {
            if (!(v49 >> 61))
            {
              operator new();
            }

            sub_1E53E5340();
          }

          *(8 * v46) = v42;
          v40 = (8 * v46 + 8);
          memcpy(0, v44, v45);
          *a11 = 0;
          a11[1] = v40;
          a11[2] = 0;
          if (v44)
          {
            operator delete(v44);
          }
        }

        a11[1] = v40;
        v41 += 8;
        --v38;
      }

      while (v38);
    }

    ++v33;
  }

  while (v33);
  sub_1E541ADA8(a11);
  v50 = __p;
  if (__p)
  {
    v51 = v59;
    v52 = __p;
    if (v59 != __p)
    {
      v53 = v59;
      do
      {
        v55 = *(v53 - 3);
        v53 -= 24;
        v54 = v55;
        if (v55)
        {
          *(v51 - 2) = v54;
          operator delete(v54);
        }

        v51 = v53;
      }

      while (v53 != v50);
      v52 = __p;
    }

    v59 = v50;
    operator delete(v52);
  }
}

void sub_1E541A860(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_1E541B3D8(va);
  _Unwind_Resume(a1);
}

void sub_1E541A874(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1E541AEA0(va);
  _Unwind_Resume(a1);
}

void sub_1E541A888(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_1E541B3D8(va);
  _Unwind_Resume(a1);
}

void sub_1E541A89C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_1E541B3D8(va);
  _Unwind_Resume(a1);
}

void sub_1E541A8B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_1E541B3D8(va);
  _Unwind_Resume(a1);
}

void sub_1E541A8C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_1E541B3D8(va);
  _Unwind_Resume(a1);
}

void sub_1E541A8D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_1E541B3D8(va);
  _Unwind_Resume(a1);
}

char *sub_1E541A8EC(uint64_t a1, char *__dst, char *__src, unint64_t a4, uint64_t a5)
{
  v5 = __dst;
  v6 = a5 - 1;
  if (a5 < 1)
  {
    return v5;
  }

  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if (a5 > (v9 - v10) >> 3)
  {
    v11 = *a1;
    v12 = a5 + ((v10 - *a1) >> 3);
    if (v12 >> 61)
    {
      sub_1E5415338();
    }

    v13 = v9 - v11;
    if (v13 >> 2 > v12)
    {
      v12 = v13 >> 2;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      v14 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v12;
    }

    if (v14)
    {
      if (!(v14 >> 61))
      {
        operator new();
      }

      sub_1E53E5340();
    }

    v47 = (__dst - v11);
    v48 = 8 * ((__dst - v11) >> 3);
    v49 = (v48 + 8 * a5);
    v50 = v6 & 0x1FFFFFFFFFFFFFFFLL;
    if ((v6 & 0x1FFFFFFFFFFFFFFFuLL) >= 7 && (v47 - __src) >= 0x20)
    {
      v59 = v50 + 1;
      v60 = (v50 + 1) & 0x3FFFFFFFFFFFFFFCLL;
      v51 = (v48 + 8 * v60);
      v52 = &__src[8 * v60];
      v61 = (__src + 16);
      v62 = (v48 + 16);
      v63 = v60;
      do
      {
        v64 = *v61;
        *(v62 - 1) = *(v61 - 1);
        *v62 = v64;
        v61 += 2;
        v62 += 2;
        v63 -= 4;
      }

      while (v63);
      if (v59 == v60)
      {
        goto LABEL_42;
      }
    }

    else
    {
      v51 = v48;
      v52 = __src;
    }

    do
    {
      v53 = *v52;
      v52 += 8;
      *v51++ = v53;
    }

    while (v51 != v49);
LABEL_42:
    v54 = *(a1 + 8) - __dst;
    memcpy((v48 + 8 * a5), __dst, v54);
    v55 = v49 + v54;
    *(a1 + 8) = v5;
    v56 = *a1;
    v57 = &v5[-*a1];
    v58 = v48 - v57;
    memcpy((v48 - v57), *a1, v57);
    *a1 = v58;
    *(a1 + 8) = v55;
    *(a1 + 16) = 0;
    if (v56)
    {
      operator delete(v56);
    }

    return v48;
  }

  v15 = v10 - __dst;
  v16 = (v10 - __dst) >> 3;
  if (v16 >= a5)
  {
    v15 = 8 * a5;
    v34 = &__dst[8 * a5];
    v35 = (v10 - 8 * a5);
    if (v35 >= v10)
    {
      v39 = *(a1 + 8);
    }

    else
    {
      v36 = v35 + 1;
      if (v10 > (v35 + 1))
      {
        v36 = *(a1 + 8);
      }

      v37 = v36 + v15 + ~v10;
      v38 = v37 < 0x18 || (a5 & 0x1FFFFFFFFFFFFFFCLL) == 0;
      v39 = *(a1 + 8);
      if (v38)
      {
        goto LABEL_62;
      }

      v40 = (v37 >> 3) + 1;
      v41 = 8 * (v40 & 0x3FFFFFFFFFFFFFFCLL);
      v35 = (v35 + v41);
      v39 = (v10 + v41);
      v42 = (v10 + 16);
      v43 = (v10 + 16 - v15);
      v44 = v40 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v45 = *v43;
        *(v42 - 1) = *(v43 - 1);
        *v42 = v45;
        v42 += 2;
        v43 += 2;
        v44 -= 4;
      }

      while (v44);
      if (v40 != (v40 & 0x3FFFFFFFFFFFFFFCLL))
      {
LABEL_62:
        do
        {
          v46 = *v35++;
          *v39++ = v46;
        }

        while (v35 < v10);
      }
    }

    *(a1 + 8) = v39;
    if (v10 != v34)
    {
      memmove(&__dst[8 * a5], __dst, v10 - v34);
    }

    goto LABEL_56;
  }

  v17 = a4 - &__src[v15];
  if (a4 != &__src[v15])
  {
    v18 = a5;
    v19 = a4;
    memmove(*(a1 + 8), &__src[v15], a4 - &__src[v15]);
    a4 = v19;
    a5 = v18;
  }

  v20 = (v10 + v17);
  *(a1 + 8) = v10 + v17;
  if (v16 >= 1)
  {
    v21 = 8 * a5;
    v22 = &v5[8 * a5];
    v23 = &v20[-8 * a5];
    if (v23 >= v10)
    {
      v26 = (v10 + v17);
    }

    else
    {
      v24 = &v5[a4] - &__src[v21] + 8;
      if (v10 > v24)
      {
        v24 = v10;
      }

      v25 = &__src[v21 + ~a4 + v24] - v5;
      v26 = (v10 + v17);
      if (v25 < 0x18)
      {
        goto LABEL_63;
      }

      if ((a5 & 0x1FFFFFFFFFFFFFFCLL) == 0)
      {
        goto LABEL_63;
      }

      v27 = (v25 >> 3) + 1;
      v28 = 8 * (v27 & 0x3FFFFFFFFFFFFFFCLL);
      v23 += v28;
      v26 = &v20[v28];
      v29 = (&v5[a4] - __src + 16);
      v30 = (v29 - v21);
      v31 = v27 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v32 = *v30;
        *(v29 - 1) = *(v30 - 1);
        *v29 = v32;
        v29 += 2;
        v30 += 2;
        v31 -= 4;
      }

      while (v31);
      if (v27 != (v27 & 0x3FFFFFFFFFFFFFFCLL))
      {
LABEL_63:
        do
        {
          v33 = *v23;
          v23 += 8;
          *v26 = v33;
          v26 += 8;
        }

        while (v23 < v10);
      }
    }

    *(a1 + 8) = v26;
    if (v20 != v22)
    {
      memmove(&v5[8 * a5], v5, v20 - v22);
    }

    if (v10 != v5)
    {
LABEL_56:
      memmove(v5, __src, v15);
    }
  }

  return v5;
}

void sub_1E541AC90(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 < v3)
  {
    *v4 = *a2;
    v5 = (v4 + 1);
LABEL_3:
    *(a1 + 8) = v5;
    return;
  }

  v6 = *a1;
  v7 = v4 - *a1;
  v8 = v7 >> 3;
  v9 = (v7 >> 3) + 1;
  if (v9 >> 61)
  {
    sub_1E5415338();
  }

  v10 = v3 - v6;
  if (v10 >> 2 > v9)
  {
    v9 = v10 >> 2;
  }

  if (v10 >= 0x7FFFFFFFFFFFFFF8)
  {
    v11 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    if (!(v11 >> 61))
    {
      operator new();
    }

    sub_1E53E5340();
  }

  *(8 * v8) = *a2;
  v5 = 8 * v8 + 8;
  memcpy(0, v6, v7);
  *a1 = 0;
  *(a1 + 8) = v5;
  *(a1 + 16) = 0;
  if (!v6)
  {
    goto LABEL_3;
  }

  operator delete(v6);
  *(a1 + 8) = v5;
}

void sub_1E541ADA8(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *a1;
  v3 = *(a1 + 16) - *a1;
  v4 = v1 - *a1;
  if (v3 > v4)
  {
    v6 = v4 >> 3;
    if (v1 != v2)
    {
      if (!(v6 >> 61))
      {
        operator new();
      }

      sub_1E53E5340();
    }

    if (v4 < v3)
    {
      v7 = 8 * v6;
      v8 = *(a1 + 8) - v2;
      v9 = v7 - v8;
      memcpy((v7 - v8), v2, v8);
      *a1 = v9;
      *(a1 + 8) = v7;
      *(a1 + 16) = v7;
      if (v2)
      {

        operator delete(v2);
      }
    }
  }
}

void ***sub_1E541AEA0(void ***a1)
{
  if ((a1[1] & 1) == 0)
  {
    v2 = *a1;
    v3 = **a1;
    if (v3)
    {
      v4 = v2[1];
      v5 = **a1;
      if (v4 != v3)
      {
        v6 = v2[1];
        do
        {
          v8 = *(v6 - 3);
          v6 -= 24;
          v7 = v8;
          if (v8)
          {
            *(v4 - 2) = v7;
            operator delete(v7);
          }

          v4 = v6;
        }

        while (v6 != v3);
        v5 = **a1;
      }

      v2[1] = v3;
      operator delete(v5);
    }
  }

  return a1;
}

float *sub_1E541AF28(float *result, float *a2, float *a3)
{
  if (a3 != a2)
  {
    while (1)
    {
      v3 = (a3 - result) >> 3;
      if (v3 < 2)
      {
        return result;
      }

      if (v3 == 3)
      {
        v44 = result[2];
        v45 = *result;
        v46 = *(a3 - 2);
        if (v44 <= *result)
        {
          if (v46 > v44)
          {
            result[2] = v46;
            *(a3 - 2) = v44;
            v60 = *(result + 3);
            result[3] = *(a3 - 1);
            *(a3 - 1) = v60;
            v61 = result[2];
            v62 = *result;
            if (v61 > *result)
            {
              *result = v61;
              result[2] = v62;
              v63 = *(result + 1);
              result[1] = result[3];
              *(result + 3) = v63;
            }
          }
        }

        else if (v46 <= v44)
        {
          *result = v44;
          result[2] = v45;
          v64 = *(result + 1);
          result[1] = result[3];
          *(result + 3) = v64;
          v65 = *(a3 - 2);
          if (v65 > v45)
          {
            result[2] = v65;
            *(a3 - 2) = v45;
            result[3] = *(a3 - 1);
            *(a3 - 1) = v64;
          }
        }

        else
        {
          *result = v46;
          *(a3 - 2) = v45;
          v47 = *(result + 1);
          result[1] = *(a3 - 1);
          *(a3 - 1) = v47;
        }

        return result;
      }

      if (v3 == 2)
      {
        v48 = *(a3 - 2);
        v49 = *result;
        if (v48 > *result)
        {
          *result = v48;
          *(a3 - 2) = v49;
          v50 = *(result + 1);
          result[1] = *(a3 - 1);
          *(a3 - 1) = v50;
        }

        return result;
      }

      if (v3 <= 7)
      {
        while (result != a3 - 2)
        {
          v51 = result;
          result += 2;
          if (v51 != a3 && result != a3)
          {
            v52 = *v51;
            v53 = *v51;
            v54 = result;
            v55 = v51;
            v56 = result;
            do
            {
              v57 = *v56;
              v56 += 2;
              v58 = v57;
              if (v57 > v53)
              {
                v53 = v58;
                v55 = v54;
              }

              v54 = v56;
            }

            while (v56 != a3);
            if (v55 != v51)
            {
              *v51 = *v55;
              *v55 = v52;
              v59 = *(v51 + 1);
              v51[1] = v55[1];
              *(v55 + 1) = v59;
            }
          }
        }

        return result;
      }

      v4 = &result[2 * ((a3 - result) >> 4)];
      v5 = a3 - 2;
      v6 = *(a3 - 2);
      v7 = *v4;
      v8 = *result;
      if (*v4 > *result)
      {
        break;
      }

      if (v6 > v7)
      {
        *v4 = v6;
        *(a3 - 2) = v7;
        v10 = *(v4 + 1);
        v4[1] = *(a3 - 1);
        *(a3 - 1) = v10;
        v11 = *result;
        if (*v4 > *result)
        {
          *result = *v4;
          *v4 = v11;
          v12 = *(result + 1);
          result[1] = v4[1];
          *(v4 + 1) = v12;
          v13 = 1;
          v14 = *result;
          v15 = *v4;
          if (*result <= *v4)
          {
            goto LABEL_29;
          }

          goto LABEL_18;
        }

        goto LABEL_17;
      }

      v13 = 0;
      v14 = *result;
      v15 = *v4;
      if (*result <= *v4)
      {
LABEL_29:
        v16 = a3 - 2;
        while (1)
        {
          v16 -= 2;
          if (v16 == result)
          {
            break;
          }

          if (*v16 > v15)
          {
            *result = *v16;
            *v16 = v14;
            v26 = *(result + 1);
            result[1] = v16[1];
            *(v16 + 1) = v26;
            if (v13)
            {
              v13 = 2;
            }

            else
            {
              v13 = 1;
            }

            v17 = result + 2;
            if (result + 2 < v16)
            {
              goto LABEL_19;
            }

            goto LABEL_36;
          }
        }

        v31 = result + 2;
        if (v14 <= *v5)
        {
          if (v31 == v5)
          {
            return result;
          }

          while (1)
          {
            v32 = *v31;
            if (v14 > *v31)
            {
              break;
            }

            v31 += 2;
            if (v31 == v5)
            {
              return result;
            }
          }

          *v31 = *v5;
          *(a3 - 2) = v32;
          v36 = *(v31 + 1);
          v31[1] = *(a3 - 1);
          *(a3 - 1) = v36;
          v31 += 2;
        }

        if (v31 == v5)
        {
          return result;
        }

        while (1)
        {
          v37 = *result;
          do
          {
            v38 = *v31;
            v31 += 2;
            v39 = v38;
          }

          while (v37 <= v38);
          v40 = v31 - 2;
          do
          {
            v41 = *(v5 - 2);
            v5 -= 2;
            v42 = v41;
          }

          while (v37 > v41);
          if (v40 >= v5)
          {
            break;
          }

          *(v31 - 2) = v42;
          *v5 = v39;
          v43 = *(v31 - 1);
          *(v31 - 1) = v5[1];
          *(v5 + 1) = v43;
        }

        result = v31 - 2;
        if (v40 > a2)
        {
          return result;
        }

        goto LABEL_67;
      }

LABEL_18:
      v16 = a3 - 2;
      v17 = result + 2;
      if (result + 2 >= a3 - 2)
      {
LABEL_36:
        v22 = v17;
      }

      else
      {
LABEL_19:
        v18 = v17;
        while (1)
        {
          v19 = *v4;
          do
          {
            v20 = *v18;
            v18 += 2;
            v21 = v20;
          }

          while (v20 > v19);
          v22 = v18 - 2;
          do
          {
            v23 = *(v16 - 2);
            v16 -= 2;
            v24 = v23;
          }

          while (v23 <= v19);
          if (v22 >= v16)
          {
            break;
          }

          *(v18 - 2) = v24;
          *v16 = v21;
          v25 = *(v18 - 1);
          *(v18 - 1) = v16[1];
          *(v16 + 1) = v25;
          ++v13;
          if (v22 == v4)
          {
            v4 = v16;
          }
        }
      }

      if (v22 != v4)
      {
        v27 = *v22;
        if (*v4 > *v22)
        {
          *v22 = *v4;
          *v4 = v27;
          v28 = *(v22 + 1);
          v22[1] = v4[1];
          *(v4 + 1) = v28;
          ++v13;
        }
      }

      if (v22 == a2)
      {
        return result;
      }

      if (!v13)
      {
        if (v22 <= a2)
        {
          v33 = v22 + 2;
          while (v33 != a3)
          {
            v34 = *v33;
            v35 = *(v33 - 2);
            v33 += 2;
            if (v34 > v35)
            {
              goto LABEL_42;
            }
          }
        }

        else
        {
          while (v17 != v22)
          {
            v29 = *v17;
            v30 = *(v17 - 2);
            v17 += 2;
            if (v29 > v30)
            {
              goto LABEL_42;
            }
          }
        }

        return result;
      }

LABEL_42:
      if (v22 <= a2)
      {
        result = v22 + 2;
      }

      else
      {
        a3 = v22;
      }

LABEL_67:
      if (a3 == a2)
      {
        return result;
      }
    }

    if (v6 <= v7)
    {
      *result = v7;
      *v4 = v8;
      v9 = *(result + 1);
      result[1] = v4[1];
      *(v4 + 1) = v9;
      if (*v5 <= v8)
      {
        goto LABEL_17;
      }

      *v4 = *v5;
      *(a3 - 2) = v8;
      v4[1] = *(a3 - 1);
    }

    else
    {
      *result = v6;
      *(a3 - 2) = v8;
      v9 = *(result + 1);
      result[1] = *(a3 - 1);
    }

    *(a3 - 1) = v9;
LABEL_17:
    v13 = 1;
    v14 = *result;
    v15 = *v4;
    if (*result <= *v4)
    {
      goto LABEL_29;
    }

    goto LABEL_18;
  }

  return result;
}

void **sub_1E541B3D8(void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      v5 = a1[1];
      do
      {
        v7 = *(v5 - 3);
        v5 -= 24;
        v6 = v7;
        if (v7)
        {
          *(v3 - 2) = v6;
          operator delete(v6);
        }

        v3 = v5;
      }

      while (v5 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_1E541B450(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_1E541B450(a1, *a2);
    sub_1E541B450(a1, a2[1]);

    operator delete(a2);
  }
}

void sub_1E541B4A8(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5)
{
  bzero(a3, 0xEC0uLL);
  *(a4 + 72) = (*a4 != 0) << 12;
  v10 = *(a4 + 20) * *(a4 + 16);
  bzero(a3 + 64, 0x500uLL);
  *(a3 + 16) = *(a2 + 113);
  *(a3 + 68) = *a2;
  *(a3 + 19) = 8;
  sub_1E541F66C(a1, a2, a3 + 32, a4, a5);
  v11 = *(a3 + 304);
  if (*(a2 + 113))
  {
    *(a3 + 304) = v11 & 0xFFFFFFFE;
    *(a3 + 320) = *(a3 + 320) & 0xFFFFC000 | vcvts_n_u32_f32(ceilf(*(a2 + 24) * 0.0019531) + 1.0, 9uLL) & 0x3FFF;
    v12 = v11 & 0xFFFE00FE | (((vcvts_n_u32_f32(ceilf(*(a2 + 24) * 0.0019531) + 1.0, 9uLL) >> 5) & 0x1FF) << 8);
    *(a3 + 304) = v12;
    *(a3 + 304) = v12 & 0xFCFFFFFF | ((*(a2 + 152) & 3) << 24);
    v13 = *(a3 + 142);
    *(a3 + 1220) = v13;
    *(a3 + 1244) = *(a3 + 143);
    v14 = *(a2 + 152);
    if (v14 > 2)
    {
      v15 = 0;
      v16 = 384;
    }

    else
    {
      v15 = dword_1E5491F88[v14];
      v16 = dword_1E5491F94[v14];
    }

    *(a3 + 307) = v15;
    *(a3 + 308) = v16;
    *(a3 + 309) = v13 + 256;
    *(a3 + 310) = v13 + 384;
    *(a3 + 313) = *(a3 + 288);
    v24 = *(a4 + 72);
    v25 = *(a4 + 64) + v24;
    *(a3 + 318) = v25 & 0xFFFFF;
    *(a3 + 319) = v25 >> 20;
    *(a5 + 388) = 1;
    *(a5 + 392) = v24;
    v26 = sub_1E544E3D8(16 * (*(a3 + 320) & 0x3FFFu) + 16, 0, 64, a5 + 368);
    v27 = v25 + v26;
    v28 = *(a4 + 72) + v26;
    *(a4 + 72) = v28;
    *(a3 + 314) = v27 & 0xFFFFF;
    *(a3 + 315) = v27 >> 20;
    v29 = v27 + 4 * (*(a3 + 320) & 0x3FFF);
    v30 = 4 * (*(a3 + 320) & 0x3FFF) + v28;
    *(a4 + 72) = v30;
    *(a3 + 316) = v29 & 0xFFFFF;
    *(a3 + 317) = v29 >> 20;
    *(a4 + 72) = 16 * (*(a3 + 320) & 0x3FFF) + v30;
    *(a3 + 320) &= 0xC0FFFFFF;
    *(a3 + 1288) = vcvtq_n_u32_f32(*(a2 + 116), 0xEuLL);
    *(a3 + 1304) = vcvtq_n_u32_f32(*(a2 + 132), 0xEuLL);
    *(a3 + 330) = vcvts_n_u32_f32(*(a2 + 148), 0xEuLL);
    v31 = *(a3 + 1324);
    *(a3 + 1324) = v31 & 0xFFFFFFFFF800F800;
    v32 = v31 & 0xFFFFF800F800F800 | ((*a2 & 0x7FF) << 32);
    *(a3 + 1324) = v32;
    *(a3 + 1324) = v32 & 0xF800FFFFFFFFFFFFLL | ((*(a2 + 4) & 0x7FF) << 48);
    LOBYTE(v32) = vcvtas_u32_f32((*(a2 + 156) * 256.0) / 360.0);
    *(a3 + 321) = 108000000;
    LODWORD(v29) = *(a3 + 333) & 0xFFFFFF00 | v32;
    *(a3 + 333) = v29;
    *(a3 + 333) = v29 & 0xFEC000FF | ((vcvtas_u32_f32(*(a2 + 160) * 512.0) & 0x3FFF) << 8);
    *(a3 + 334) = (*(a2 + 164) * ((*(a2 + 164) * *a2) * *a2));
    *(a3 + 335) = *(a2 + 168);
    v17 = *(a3 + 1) & 0xFFFFFFFC;
    if (v10)
    {
      ++v17;
    }

    *(a3 + 1) = v17;
    if (v10)
    {
      goto LABEL_19;
    }
  }

  else
  {
    *(a3 + 304) = v11 | 1;
    v17 = *(a3 + 1) & 0xFFFFFFFC;
    if (v10)
    {
      ++v17;
    }

    *(a3 + 1) = v17;
    if (v10)
    {
LABEL_19:
      *(a5 + 472) = 1;
      *(a5 + 476) = 0;
      v34 = *(a4 + 16);
      v33 = *(a4 + 20);
      v35 = *(a4 + 12);
      *(a5 + 452) = 1;
      *(a5 + 456) = v34;
      *(a5 + 460) = v33;
      v36 = (v34 + 63) & 0xFFFFFFC0;
      *(a5 + 464) = v36;
      *(a5 + 468) = v35;
      if (v36 * v33 != v10 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwCvdAllConfigurationUtils.cpp", 69, "size == itcm_size", 17, &unk_1E549A011, 0, sub_1E548FDE0))
      {
        goto LABEL_34;
      }

      v17 = *(a3 + 1) & 0xFFFFFFF3 | 4;
      *(a3 + 1) = v17;
      *(a3 + 460) = *(a4 + 56);
      *(a3 + 922) = v10;
      v19 = *(a4 + 28);
      v18 = *(a4 + 32);
      v20 = v18 * v19;
      if ((v18 * v19) > 0x1000)
      {
        goto LABEL_22;
      }

      goto LABEL_8;
    }
  }

  v19 = *(a4 + 28);
  v18 = *(a4 + 32);
  v20 = v18 * v19;
  if ((v18 * v19) > 0x1000)
  {
LABEL_22:
    if (sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwCvdAllConfigurationUtils.cpp", 79, "data_segment_size <= kDataSegmentSize && Data segment size larger than expected", 81, &unk_1E549A011, 0, sub_1E548FDE0))
    {
      goto LABEL_34;
    }

    v19 = *(a4 + 28);
    v18 = *(a4 + 32);
    goto LABEL_24;
  }

LABEL_8:
  if (!v20)
  {
    v22 = *(a4 + 40);
    v21 = *(a4 + 44);
    v23 = v21 * v22;
    if (v21 * v22)
    {
      goto LABEL_27;
    }

LABEL_10:
    if (*(a5 + 360) == 1)
    {
      goto LABEL_31;
    }

LABEL_11:
    if (*(a5 + 388) == 1)
    {
      goto LABEL_32;
    }

LABEL_12:
    if (!v10)
    {
      return;
    }

    goto LABEL_13;
  }

LABEL_24:
  *(a5 + 500) = 1;
  *(a5 + 504) = 0;
  v37 = *(a4 + 24);
  *(a5 + 480) = 1;
  *(a5 + 484) = v19;
  *(a5 + 488) = v18;
  v38 = (v19 + 63) & 0xFFFFFFC0;
  *(a5 + 492) = v38;
  *(a5 + 496) = v37;
  if (v38 * v18 != v20 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwCvdAllConfigurationUtils.cpp", 93, "size == data_segment_size", 25, &unk_1E549A011, 0, sub_1E548FDE0))
  {
    goto LABEL_34;
  }

  v17 = *(a3 + 1) & 0xFFFFFFCF | 0x10;
  *(a3 + 1) = v17;
  *(a3 + 3692) = *(a4 + 64);
  *(a3 + 925) = v20;
  v22 = *(a4 + 40);
  v21 = *(a4 + 44);
  v23 = v21 * v22;
  if (!(v21 * v22))
  {
    goto LABEL_10;
  }

LABEL_27:
  *(a5 + 528) = 1;
  v39 = *(a4 + 72);
  *(a5 + 532) = v39;
  v40 = *(a4 + 36);
  *(a5 + 508) = 1;
  *(a5 + 512) = v22;
  *(a5 + 516) = v21;
  v41 = (v22 + 63) & 0xFFFFFFC0;
  *(a5 + 520) = v41;
  *(a5 + 524) = v40;
  v42 = v41 * v21;
  v43 = v39;
  if (v42 == v23)
  {
    goto LABEL_30;
  }

  if (sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwCvdAllConfigurationUtils.cpp", 114, "size == extra_input_size", 24, &unk_1E549A011, 0, sub_1E548FDE0))
  {
LABEL_34:
    abort();
  }

  v43 = *(a4 + 72);
  v39 = *(a5 + 532);
LABEL_30:
  *(a4 + 72) = v43 + v23;
  v44 = *(a4 + 64) + v39;
  v17 = *(a3 + 1) & 0xFFFFFF3F | 0x40;
  *(a3 + 1) = v17;
  *(a3 + 463) = v44;
  *(a3 + 928) = v23;
  if (*(a5 + 360) != 1)
  {
    goto LABEL_11;
  }

LABEL_31:
  v45 = *(a4 + 64) + *(a5 + 364);
  v17 = v17 & 0xFFFFF3FF | 0x400;
  *(a3 + 1) = v17;
  *(a3 + 466) = v45;
  *(a3 + 934) = *(a5 + 348) * *(a5 + 352);
  if (*(a5 + 388) != 1)
  {
    goto LABEL_12;
  }

LABEL_32:
  v46 = *(a4 + 64) + *(a5 + 392);
  *(a3 + 1) = v17 & 0xFFFFCFFF | 0x1000;
  *(a3 + 3740) = v46;
  *(a3 + 937) = *(a5 + 376) * *(a5 + 380);
  if (v10)
  {
LABEL_13:
    *(a3 + 664) = *(a4 + 8);
    *(a3 + 665) = 0x80000000;
    *(a3 + 333) = 0;
    *(a3 + 315) = 0x600000006;
    *(a3 + 623) = 0x80000;
  }
}

uint64_t sub_1E541BB34(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_1E53E91E8();
  }

  (*(*v2 + 48))(v2);
  v3 = *(a1 + 24);
  if (v3 == a1)
  {
    (*(*v3 + 32))(v3);
    return a1;
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    return a1;
  }
}

void *sub_1E541BBF8(void *a1)
{
  v2 = MEMORY[0x1E69E54C8];
  v3 = *MEMORY[0x1E69E54C8];
  *a1 = *MEMORY[0x1E69E54C8];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  MEMORY[0x1E69283E0](a1 + 2);
  std::istream::~istream();
  MEMORY[0x1E69285E0](a1 + 53);
  return a1;
}

uint64_t sub_1E541BCC4(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21[19] = *MEMORY[0x1E69E9840];
  pixelBuffer = 0;
  v21[6] = 0;
  v8 = MEMORY[0x1E69E5528] + 64;
  v21[0] = MEMORY[0x1E69E5528] + 64;
  v9 = MEMORY[0x1E69E54C8];
  v10 = *(MEMORY[0x1E69E54C8] + 16);
  v19[0] = *(MEMORY[0x1E69E54C8] + 8);
  *(v19 + *(v19[0] - 24)) = v10;
  v19[1] = 0;
  v11 = (v19 + *(v19[0] - 24));
  std::ios_base::init(v11, v20);
  v12 = MEMORY[0x1E69E5528] + 24;
  v11[1].__vftable = 0;
  v11[1].__fmtflags_ = -1;
  v19[0] = v12;
  v21[0] = v8;
  MEMORY[0x1E69283D0](v20);
  v13 = *(a2 + 23);
  v14 = v13;
  if ((v13 & 0x80u) != 0)
  {
    v13 = *(a2 + 8);
  }

  if (v13 || a3 && a4)
  {
    if (v14 < 0)
    {
      if (!a4 || !a3 || *(a2 + 8))
      {
        v15 = *a2;
        goto LABEL_17;
      }
    }

    else if (!a4 || !a3 || v14)
    {
      v15 = a2;
LABEL_17:
      if (stat(v15, &v18))
      {
        goto LABEL_18;
      }

      if (!v18.st_size)
      {
        goto LABEL_18;
      }

      std::ifstream::open();
      if ((*&v20[*(v19[0] - 24) + 16] & 5) != 0)
      {
        goto LABEL_18;
      }
    }

    if (!sub_1E53E95C0(a1, 1u, 0x4C303038u, &pixelBuffer, 16, 16, 0, 1, 0))
    {
      CVPixelBufferLockBaseAddress(pixelBuffer, 0);
      operator new();
    }
  }

LABEL_18:
  v19[0] = *v9;
  *(v19 + *(v19[0] - 24)) = v9[3];
  MEMORY[0x1E69283E0](v20);
  std::istream::~istream();
  MEMORY[0x1E69285E0](v21);
  return 0;
}

void sub_1E541C1AC(_Unwind_Exception *a1)
{
  std::istream::~istream();
  MEMORY[0x1E69285E0](v1);
  _Unwind_Resume(a1);
}

void sub_1E541C1E0(void *a1, unsigned int a2, int a3)
{
  if (!a3 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwCvdAllConfigurationUtils.cpp", 416, "FlowType::kFlow0 != flow && Flow 0 not supported", 50, &unk_1E549A011, 0, sub_1E548FDE0))
  {
    abort();
  }

  v6 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 2);
  if (a2 <= v6)
  {
    if (a2 < v6)
    {
      a1[1] = *a1 + 28 * a2;
    }
  }

  else
  {
    sub_1E541C3F8(a1, a2 - v6);
  }

  v7 = a1[9];
  v8 = 0x6DB6DB6DB6DB6DB7 * ((a1[10] - v7) >> 2);
  if (a2 <= v8)
  {
    if (a2 < v8)
    {
      a1[10] = v7 + 28 * a2;
    }
  }

  else
  {
    sub_1E541C3F8((a1 + 9), a2 - v8);
  }

  if (a3 == 2)
  {
    v12 = a1[15];
    v11 = (a1 + 15);
    v13 = 0x6DB6DB6DB6DB6DB7 * ((a1[16] - v12) >> 2);
    if (a1[16] != v12)
    {
      if (v13 < 2)
      {
        return;
      }

      v14 = v12 + 28;
LABEL_31:
      a1[16] = v14;
      return;
    }

    v21 = 1 - v13;
  }

  else
  {
    if (a3 != 1)
    {
      return;
    }

    v9 = a1[3];
    v10 = 0x6DB6DB6DB6DB6DB7 * ((a1[4] - v9) >> 2);
    if (a2 <= v10)
    {
      if (a2 < v10)
      {
        a1[4] = v9 + 28 * a2;
      }
    }

    else
    {
      sub_1E541C3F8((a1 + 3), a2 - v10);
    }

    v15 = a1[6];
    v16 = 0x6DB6DB6DB6DB6DB7 * ((a1[7] - v15) >> 2);
    if (a2 <= v16)
    {
      if (a2 < v16)
      {
        a1[7] = v15 + 28 * a2;
      }
    }

    else
    {
      sub_1E541C3F8((a1 + 6), a2 - v16);
    }

    v17 = a1[12];
    v18 = 0x6DB6DB6DB6DB6DB7 * ((a1[13] - v17) >> 2);
    if (a2 <= v18)
    {
      if (a2 < v18)
      {
        a1[13] = v17 + 28 * a2;
      }
    }

    else
    {
      sub_1E541C3F8((a1 + 12), a2 - v18);
    }

    v19 = a1[15];
    v11 = (a1 + 15);
    v20 = 0x6DB6DB6DB6DB6DB7 * ((a1[16] - v19) >> 2);
    v21 = a2 - v20;
    if (a2 <= v20)
    {
      if (a2 >= v20)
      {
        return;
      }

      v14 = v19 + 28 * a2;
      goto LABEL_31;
    }
  }

  sub_1E541C3F8(v11, v21);
}

void sub_1E541C3F8(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (0x6DB6DB6DB6DB6DB7 * ((v3 - v4) >> 2) >= a2)
  {
    if (a2)
    {
      v10 = 28 * ((28 * a2 - 28) / 0x1C) + 28;
      bzero(*(a1 + 8), v10);
      v4 += v10;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = *a1;
    v6 = 0x6DB6DB6DB6DB6DB7 * ((v4 - *a1) >> 2);
    if (v6 + a2 > 0x924924924924924)
    {
      sub_1E5415338();
    }

    v7 = 0x6DB6DB6DB6DB6DB7 * ((v3 - v5) >> 2);
    v8 = 2 * v7;
    if (2 * v7 <= v6 + a2)
    {
      v8 = v6 + a2;
    }

    if (v7 >= 0x492492492492492)
    {
      v9 = 0x924924924924924;
    }

    else
    {
      v9 = v8;
    }

    if (v9)
    {
      if (v9 <= 0x924924924924924)
      {
        operator new();
      }

      sub_1E53E5340();
    }

    v11 = (4 * ((v4 - *a1) >> 2));
    v12 = 28 * ((28 * a2 - 28) / 0x1C) + 28;
    bzero(v11, v12);
    v13 = v4 - v5;
    v14 = &v11[-(v4 - v5)];
    memcpy(v14, v5, v13);
    *a1 = v14;
    *(a1 + 8) = &v11[v12];
    *(a1 + 16) = 0;
    if (v5)
    {

      operator delete(v5);
    }
  }
}

__n128 sub_1E541C648(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5F09FF0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1E541C690(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "N4cv3d3esn5Defer11BindWrapperINSt3__16__bindIRPFiP10__CVBufferyEJRS6_iEEEEE")
  {
    return a1 + 8;
  }

  if (((v2 & "N4cv3d3esn5Defer11BindWrapperINSt3__16__bindIRPFiP10__CVBufferyEJRS6_iEEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "N4cv3d3esn5Defer11BindWrapperINSt3__16__bindIRPFiP10__CVBufferyEJRS6_iEEEEE"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("N4cv3d3esn5Defer11BindWrapperINSt3__16__bindIRPFiP10__CVBufferyEJRS6_iEEEEE" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void *sub_1E541C708(void *result, uint64_t *a2, unsigned int a3, unsigned int a4)
{
  v4 = *a2;
  v5 = *(*a2 + 4 * a4);
  if (*(*result + 4 * a3) == -1)
  {
    if (v5 == -1)
    {
      *(*result + 4 * a3) = a4;
      *(v4 + 4 * a4) = a3;
      return result;
    }

    v6 = "false && Unexpected: prev idx is duplicate";
    v7 = 621;
  }

  else
  {
    if (v5 != -1)
    {
      v6 = "false && Unexpected: curr & prev idx are duplicates";
      v7 = 613;
      v8 = 53;
      goto LABEL_8;
    }

    v6 = "false && Unexpected: curr idx is duplicate";
    v7 = 617;
  }

  v8 = 44;
LABEL_8:
  result = sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/HWFeatureDetection/src/HwDebugUtils.cpp", v7, v6, v8, &unk_1E549A011, 0, sub_1E548FDE0);
  if (result)
  {
    abort();
  }

  return result;
}