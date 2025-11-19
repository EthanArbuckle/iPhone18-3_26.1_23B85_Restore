void sub_1E53F0928(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36, char a37)
{
  if (a37 == 1 && a36 < 0)
  {
    operator delete(__p);
  }

  __cxa_guard_abort(&qword_1ECFDBB40);
  sub_1E53EAA0C(&a12);
  _Unwind_Resume(a1);
}

void sub_1E53F096C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  sub_1E53F8434(&a26);
  sub_1E53F8434(&a22);
  sub_1E53F816C(&a31);
  sub_1E53EAA0C(&a12);
  _Unwind_Resume(a1);
}

void sub_1E53F09A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, char a29)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  sub_1E53F816C(&a29);
  sub_1E53EAA0C(&a12);
  _Unwind_Resume(a1);
}

void sub_1E53F09D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  MEMORY[0x1E6928650](v4, 0x10D0C40B950D02ALL);
  sub_1E53EAA0C(va);
  _Unwind_Resume(a1);
}

void sub_1E53F0A00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1E53EAA0C(va);
  _Unwind_Resume(a1);
}

void sub_1E53F0A14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *object, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a2)
  {
    sub_1E53DDDDC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CVHWAFeatureExtractionGetKeypointAndDescriptorSizeInBytes(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  if (!a1 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/product/AppleCVHWA/AppleCVHWA/src/CVHWAFeatureExtraction.cpp", 374, "ctx != nullptr", 14, &unk_1E549A011, 0, sub_1E548FDE0))
  {
    abort();
  }

  if (*(a1 + 16) == 1)
  {
    sub_1E53EA72C(&v20);
    if (**(v20 + 56) <= 4)
    {
      v2 = *(v20 + 72);
      v3 = sub_1E53E3554(v20, "OSLogSurrogateAppender", 1, 0);
      if (v3 || v2)
      {
        v13[0] = &v20;
        v13[1] = std::chrono::steady_clock::now().__d_.__rep_;
        v13[2] = std::chrono::system_clock::now().__d_.__rep_;
        v14 = 4;
        v15 = "unknown file";
        v16 = 376;
        v18 = 0;
        v19 = 0;
        v17 = "unknown function";
        v4 = (v20 + 16);
        v5 = *(v20 + 39);
        if ((v5 & 0x8000000000000000) != 0)
        {
          v4 = *(v20 + 16);
          v5 = *(v20 + 24);
        }

        if ((atomic_load_explicit(&qword_1ECFDBB40, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ECFDBB40))
        {
          sub_1E548E6E4(&object);
          sub_1E53F807C("com.apple.AppleCVHWA", &object, &qword_1ECFDBB28);
          if (v23 == 1 && SHIBYTE(v22) < 0)
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

        v24 = v7;
        if (v7)
        {
          memmove(&object + 8, v6, v7);
        }

        *(&object + v7 + 8) = 0;
        LOBYTE(v25) = 1;
        if (v5 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_1E53DF584();
        }

        if (v5 >= 0x17)
        {
          operator new();
        }

        v27 = v5;
        if (v5)
        {
          memmove(&__p, v4, v5);
        }

        *(&__p + v5) = 0;
        v28 = 1;
        v8 = object;
        if (v27 < 0)
        {
          operator delete(__p);
        }

        if (v25 == 1 && v24 < 0)
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
        *(&object + 4) = "CVHWAFeatureExtractionGetKeypointAndDescriptorSizeInBytes";
        v10 = _os_log_send_and_compose_impl();
        if (v10)
        {
          free(v10);
        }

        if (v2)
        {
          sub_1E53DFB24(v13, "%s has no effect in swproxy", "CVHWAFeatureExtractionGetKeypointAndDescriptorSizeInBytes");
          sub_1E53EA844(v13);
        }

        sub_1E53EA844(v13);
        v11 = v19;
        if (v19 && !atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v11->__on_zero_shared)(v11);
          std::__shared_weak_count::__release_weak(v11);
        }
      }
    }
  }

  return sub_1E54247EC(*a1);
}

void sub_1E53F13C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36, char a37)
{
  if (a37 == 1 && a36 < 0)
  {
    operator delete(__p);
  }

  __cxa_guard_abort(&qword_1ECFDBB40);
  sub_1E53EAA0C(&a12);
  _Unwind_Resume(a1);
}

void sub_1E53F1404(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  sub_1E53F8434(&a26);
  sub_1E53F8434(&a22);
  sub_1E53F816C(&a31);
  sub_1E53EAA0C(&a12);
  _Unwind_Resume(a1);
}

void sub_1E53F1438(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, char a29)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  sub_1E53F816C(&a29);
  sub_1E53EAA0C(&a12);
  _Unwind_Resume(a1);
}

void sub_1E53F146C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  MEMORY[0x1E6928650](v4, 0x10D0C40B950D02ALL);
  sub_1E53EAA0C(va);
  _Unwind_Resume(a1);
}

void sub_1E53F1498(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1E53EAA0C(va);
  _Unwind_Resume(a1);
}

void sub_1E53F14AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *object, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a2)
  {
    sub_1E53DDDDC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CVHWAFeatureExtractionGetOutputReserveSizeInBytes(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  if (!a1 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/product/AppleCVHWA/AppleCVHWA/src/CVHWAFeatureExtraction.cpp", 383, "ctx != nullptr", 14, &unk_1E549A011, 0, sub_1E548FDE0))
  {
    abort();
  }

  if (*(a1 + 16) == 1)
  {
    sub_1E53EA72C(&v20);
    if (**(v20 + 56) <= 4)
    {
      v2 = *(v20 + 72);
      v3 = sub_1E53E3554(v20, "OSLogSurrogateAppender", 1, 0);
      if (v3 || v2)
      {
        v13[0] = &v20;
        v13[1] = std::chrono::steady_clock::now().__d_.__rep_;
        v13[2] = std::chrono::system_clock::now().__d_.__rep_;
        v14 = 4;
        v15 = "unknown file";
        v16 = 385;
        v18 = 0;
        v19 = 0;
        v17 = "unknown function";
        v4 = (v20 + 16);
        v5 = *(v20 + 39);
        if ((v5 & 0x8000000000000000) != 0)
        {
          v4 = *(v20 + 16);
          v5 = *(v20 + 24);
        }

        if ((atomic_load_explicit(&qword_1ECFDBB40, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ECFDBB40))
        {
          sub_1E548E6E4(&object);
          sub_1E53F807C("com.apple.AppleCVHWA", &object, &qword_1ECFDBB28);
          if (v23 == 1 && SHIBYTE(v22) < 0)
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

        v24 = v7;
        if (v7)
        {
          memmove(&object + 8, v6, v7);
        }

        *(&object + v7 + 8) = 0;
        LOBYTE(v25) = 1;
        if (v5 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_1E53DF584();
        }

        if (v5 >= 0x17)
        {
          operator new();
        }

        v27 = v5;
        if (v5)
        {
          memmove(&__p, v4, v5);
        }

        *(&__p + v5) = 0;
        v28 = 1;
        v8 = object;
        if (v27 < 0)
        {
          operator delete(__p);
        }

        if (v25 == 1 && v24 < 0)
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
        *(&object + 4) = "CVHWAFeatureExtractionGetOutputReserveSizeInBytes";
        v10 = _os_log_send_and_compose_impl();
        if (v10)
        {
          free(v10);
        }

        if (v2)
        {
          sub_1E53DFB24(v13, "%s has no effect in swproxy", "CVHWAFeatureExtractionGetOutputReserveSizeInBytes");
          sub_1E53EA844(v13);
        }

        sub_1E53EA844(v13);
        v11 = v19;
        if (v19 && !atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v11->__on_zero_shared)(v11);
          std::__shared_weak_count::__release_weak(v11);
        }
      }
    }
  }

  return sub_1E54247EC(*a1);
}

void sub_1E53F1E54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36, char a37)
{
  if (a37 == 1 && a36 < 0)
  {
    operator delete(__p);
  }

  __cxa_guard_abort(&qword_1ECFDBB40);
  sub_1E53EAA0C(&a12);
  _Unwind_Resume(a1);
}

void sub_1E53F1E98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  sub_1E53F8434(&a26);
  sub_1E53F8434(&a22);
  sub_1E53F816C(&a31);
  sub_1E53EAA0C(&a12);
  _Unwind_Resume(a1);
}

void sub_1E53F1ECC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, char a29)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  sub_1E53F816C(&a29);
  sub_1E53EAA0C(&a12);
  _Unwind_Resume(a1);
}

void sub_1E53F1F00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  MEMORY[0x1E6928650](v4, 0x10D0C40B950D02ALL);
  sub_1E53EAA0C(va);
  _Unwind_Resume(a1);
}

void sub_1E53F1F2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1E53EAA0C(va);
  _Unwind_Resume(a1);
}

void sub_1E53F1F40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *object, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a2)
  {
    sub_1E53DDDDC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

CVPixelBufferRef CVHWAFeatureExtractionGetLaccBuffer(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  if (!a1 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/product/AppleCVHWA/AppleCVHWA/src/CVHWAFeatureExtraction.cpp", 392, "ctx != nullptr", 14, &unk_1E549A011, 0, sub_1E548FDE0))
  {
    abort();
  }

  if (*(a1 + 16) == 1)
  {
    sub_1E53EA72C(&v20);
    if (**(v20 + 56) <= 4)
    {
      v2 = *(v20 + 72);
      v3 = sub_1E53E3554(v20, "OSLogSurrogateAppender", 1, 0);
      if (v3 || v2)
      {
        v13[0] = &v20;
        v13[1] = std::chrono::steady_clock::now().__d_.__rep_;
        v13[2] = std::chrono::system_clock::now().__d_.__rep_;
        v14 = 4;
        v15 = "unknown file";
        v16 = 394;
        v18 = 0;
        v19 = 0;
        v17 = "unknown function";
        v4 = (v20 + 16);
        v5 = *(v20 + 39);
        if ((v5 & 0x8000000000000000) != 0)
        {
          v4 = *(v20 + 16);
          v5 = *(v20 + 24);
        }

        if ((atomic_load_explicit(&qword_1ECFDBB40, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ECFDBB40))
        {
          sub_1E548E6E4(&object);
          sub_1E53F807C("com.apple.AppleCVHWA", &object, &qword_1ECFDBB28);
          if (v23 == 1 && SHIBYTE(v22) < 0)
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

        v24 = v7;
        if (v7)
        {
          memmove(&object + 8, v6, v7);
        }

        *(&object + v7 + 8) = 0;
        LOBYTE(v25) = 1;
        if (v5 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_1E53DF584();
        }

        if (v5 >= 0x17)
        {
          operator new();
        }

        v27 = v5;
        if (v5)
        {
          memmove(&__p, v4, v5);
        }

        *(&__p + v5) = 0;
        v28 = 1;
        v8 = object;
        if (v27 < 0)
        {
          operator delete(__p);
        }

        if (v25 == 1 && v24 < 0)
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
        *(&object + 4) = "CVHWAFeatureExtractionGetLaccBuffer";
        v10 = _os_log_send_and_compose_impl();
        if (v10)
        {
          free(v10);
        }

        if (v2)
        {
          sub_1E53DFB24(v13, "%s has no effect in swproxy", "CVHWAFeatureExtractionGetLaccBuffer");
          sub_1E53EA844(v13);
        }

        sub_1E53EA844(v13);
        v11 = v19;
        if (v19 && !atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v11->__on_zero_shared)(v11);
          std::__shared_weak_count::__release_weak(v11);
        }
      }
    }
  }

  return sub_1E5424854(*a1);
}

void sub_1E53F28E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36, char a37)
{
  if (a37 == 1 && a36 < 0)
  {
    operator delete(__p);
  }

  __cxa_guard_abort(&qword_1ECFDBB40);
  sub_1E53EAA0C(&a12);
  _Unwind_Resume(a1);
}

void sub_1E53F292C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  sub_1E53F8434(&a26);
  sub_1E53F8434(&a22);
  sub_1E53F816C(&a31);
  sub_1E53EAA0C(&a12);
  _Unwind_Resume(a1);
}

void sub_1E53F2960(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, char a29)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  sub_1E53F816C(&a29);
  sub_1E53EAA0C(&a12);
  _Unwind_Resume(a1);
}

void sub_1E53F2994(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  MEMORY[0x1E6928650](v4, 0x10D0C40B950D02ALL);
  sub_1E53EAA0C(va);
  _Unwind_Resume(a1);
}

void sub_1E53F29C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1E53EAA0C(va);
  _Unwind_Resume(a1);
}

void sub_1E53F29D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *object, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a2)
  {
    sub_1E53DDDDC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CVHWAFeatureExtractionGetLaccSizeInBytes(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  if (!a1 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/product/AppleCVHWA/AppleCVHWA/src/CVHWAFeatureExtraction.cpp", 401, "ctx != nullptr", 14, &unk_1E549A011, 0, sub_1E548FDE0))
  {
    abort();
  }

  if (*(a1 + 16) == 1)
  {
    sub_1E53EA72C(&v20);
    if (**(v20 + 56) <= 4)
    {
      v2 = *(v20 + 72);
      v3 = sub_1E53E3554(v20, "OSLogSurrogateAppender", 1, 0);
      if (v3 || v2)
      {
        v13[0] = &v20;
        v13[1] = std::chrono::steady_clock::now().__d_.__rep_;
        v13[2] = std::chrono::system_clock::now().__d_.__rep_;
        v14 = 4;
        v15 = "unknown file";
        v16 = 403;
        v18 = 0;
        v19 = 0;
        v17 = "unknown function";
        v4 = (v20 + 16);
        v5 = *(v20 + 39);
        if ((v5 & 0x8000000000000000) != 0)
        {
          v4 = *(v20 + 16);
          v5 = *(v20 + 24);
        }

        if ((atomic_load_explicit(&qword_1ECFDBB40, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ECFDBB40))
        {
          sub_1E548E6E4(&object);
          sub_1E53F807C("com.apple.AppleCVHWA", &object, &qword_1ECFDBB28);
          if (v23 == 1 && SHIBYTE(v22) < 0)
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

        v24 = v7;
        if (v7)
        {
          memmove(&object + 8, v6, v7);
        }

        *(&object + v7 + 8) = 0;
        LOBYTE(v25) = 1;
        if (v5 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_1E53DF584();
        }

        if (v5 >= 0x17)
        {
          operator new();
        }

        v27 = v5;
        if (v5)
        {
          memmove(&__p, v4, v5);
        }

        *(&__p + v5) = 0;
        v28 = 1;
        v8 = object;
        if (v27 < 0)
        {
          operator delete(__p);
        }

        if (v25 == 1 && v24 < 0)
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
        *(&object + 4) = "CVHWAFeatureExtractionGetLaccSizeInBytes";
        v10 = _os_log_send_and_compose_impl();
        if (v10)
        {
          free(v10);
        }

        if (v2)
        {
          sub_1E53DFB24(v13, "%s has no effect in swproxy", "CVHWAFeatureExtractionGetLaccSizeInBytes");
          sub_1E53EA844(v13);
        }

        sub_1E53EA844(v13);
        v11 = v19;
        if (v19 && !atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v11->__on_zero_shared)(v11);
          std::__shared_weak_count::__release_weak(v11);
        }
      }
    }
  }

  return sub_1E54248E4(*a1);
}

void sub_1E53F3378(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36, char a37)
{
  if (a37 == 1 && a36 < 0)
  {
    operator delete(__p);
  }

  __cxa_guard_abort(&qword_1ECFDBB40);
  sub_1E53EAA0C(&a12);
  _Unwind_Resume(a1);
}

void sub_1E53F33BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  sub_1E53F8434(&a26);
  sub_1E53F8434(&a22);
  sub_1E53F816C(&a31);
  sub_1E53EAA0C(&a12);
  _Unwind_Resume(a1);
}

void sub_1E53F33F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, char a29)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  sub_1E53F816C(&a29);
  sub_1E53EAA0C(&a12);
  _Unwind_Resume(a1);
}

void sub_1E53F3424(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  MEMORY[0x1E6928650](v4, 0x10D0C40B950D02ALL);
  sub_1E53EAA0C(va);
  _Unwind_Resume(a1);
}

void sub_1E53F3450(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1E53EAA0C(va);
  _Unwind_Resume(a1);
}

void sub_1E53F3464(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *object, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a2)
  {
    sub_1E53DDDDC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CVHWAFeatureExtractionGetDynamicThresholdingEnable(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  if (!a1 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/product/AppleCVHWA/AppleCVHWA/src/CVHWAFeatureExtraction.cpp", 410, "ctx != nullptr", 14, &unk_1E549A011, 0, sub_1E548FDE0))
  {
    abort();
  }

  if (*(a1 + 16) == 1)
  {
    sub_1E53EA72C(&v20);
    if (**(v20 + 56) <= 4)
    {
      v2 = *(v20 + 72);
      v3 = sub_1E53E3554(v20, "OSLogSurrogateAppender", 1, 0);
      if (v3 || v2)
      {
        v13[0] = &v20;
        v13[1] = std::chrono::steady_clock::now().__d_.__rep_;
        v13[2] = std::chrono::system_clock::now().__d_.__rep_;
        v14 = 4;
        v15 = "unknown file";
        v16 = 412;
        v18 = 0;
        v19 = 0;
        v17 = "unknown function";
        v4 = (v20 + 16);
        v5 = *(v20 + 39);
        if ((v5 & 0x8000000000000000) != 0)
        {
          v4 = *(v20 + 16);
          v5 = *(v20 + 24);
        }

        if ((atomic_load_explicit(&qword_1ECFDBB40, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ECFDBB40))
        {
          sub_1E548E6E4(&object);
          sub_1E53F807C("com.apple.AppleCVHWA", &object, &qword_1ECFDBB28);
          if (v23 == 1 && SHIBYTE(v22) < 0)
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

        v24 = v7;
        if (v7)
        {
          memmove(&object + 8, v6, v7);
        }

        *(&object + v7 + 8) = 0;
        LOBYTE(v25) = 1;
        if (v5 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_1E53DF584();
        }

        if (v5 >= 0x17)
        {
          operator new();
        }

        v27 = v5;
        if (v5)
        {
          memmove(&__p, v4, v5);
        }

        *(&__p + v5) = 0;
        v28 = 1;
        v8 = object;
        if (v27 < 0)
        {
          operator delete(__p);
        }

        if (v25 == 1 && v24 < 0)
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
        *(&object + 4) = "CVHWAFeatureExtractionGetDynamicThresholdingEnable";
        v10 = _os_log_send_and_compose_impl();
        if (v10)
        {
          free(v10);
        }

        if (v2)
        {
          sub_1E53DFB24(v13, "%s has no effect in swproxy", "CVHWAFeatureExtractionGetDynamicThresholdingEnable");
          sub_1E53EA844(v13);
        }

        sub_1E53EA844(v13);
        v11 = v19;
        if (v19 && !atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v11->__on_zero_shared)(v11);
          std::__shared_weak_count::__release_weak(v11);
        }
      }
    }
  }

  return sub_1E5427488(*a1);
}

void sub_1E53F3E10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36, char a37)
{
  if (a37 == 1 && a36 < 0)
  {
    operator delete(__p);
  }

  __cxa_guard_abort(&qword_1ECFDBB40);
  sub_1E53EAA0C(&a12);
  _Unwind_Resume(a1);
}

void sub_1E53F3E54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  sub_1E53F8434(&a26);
  sub_1E53F8434(&a22);
  sub_1E53F816C(&a31);
  sub_1E53EAA0C(&a12);
  _Unwind_Resume(a1);
}

void sub_1E53F3E88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, char a29)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  sub_1E53F816C(&a29);
  sub_1E53EAA0C(&a12);
  _Unwind_Resume(a1);
}

void sub_1E53F3EBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  MEMORY[0x1E6928650](v4, 0x10D0C40B950D02ALL);
  sub_1E53EAA0C(va);
  _Unwind_Resume(a1);
}

void sub_1E53F3EE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1E53EAA0C(va);
  _Unwind_Resume(a1);
}

void sub_1E53F3EFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *object, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a2)
  {
    sub_1E53DDDDC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CVHWAFeatureExtractionGetDynamicThresholdingTargetKeypointsConfigCount(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  if (!a1 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/product/AppleCVHWA/AppleCVHWA/src/CVHWAFeatureExtraction.cpp", 419, "ctx != nullptr", 14, &unk_1E549A011, 0, sub_1E548FDE0))
  {
    abort();
  }

  if (*(a1 + 16) == 1)
  {
    sub_1E53EA72C(&v20);
    if (**(v20 + 56) <= 4)
    {
      v2 = *(v20 + 72);
      v3 = sub_1E53E3554(v20, "OSLogSurrogateAppender", 1, 0);
      if (v3 || v2)
      {
        v13[0] = &v20;
        v13[1] = std::chrono::steady_clock::now().__d_.__rep_;
        v13[2] = std::chrono::system_clock::now().__d_.__rep_;
        v14 = 4;
        v15 = "unknown file";
        v16 = 421;
        v18 = 0;
        v19 = 0;
        v17 = "unknown function";
        v4 = (v20 + 16);
        v5 = *(v20 + 39);
        if ((v5 & 0x8000000000000000) != 0)
        {
          v4 = *(v20 + 16);
          v5 = *(v20 + 24);
        }

        if ((atomic_load_explicit(&qword_1ECFDBB40, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ECFDBB40))
        {
          sub_1E548E6E4(&object);
          sub_1E53F807C("com.apple.AppleCVHWA", &object, &qword_1ECFDBB28);
          if (v23 == 1 && SHIBYTE(v22) < 0)
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

        v24 = v7;
        if (v7)
        {
          memmove(&object + 8, v6, v7);
        }

        *(&object + v7 + 8) = 0;
        LOBYTE(v25) = 1;
        if (v5 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_1E53DF584();
        }

        if (v5 >= 0x17)
        {
          operator new();
        }

        v27 = v5;
        if (v5)
        {
          memmove(&__p, v4, v5);
        }

        *(&__p + v5) = 0;
        v28 = 1;
        v8 = object;
        if (v27 < 0)
        {
          operator delete(__p);
        }

        if (v25 == 1 && v24 < 0)
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
        *(&object + 4) = "CVHWAFeatureExtractionGetDynamicThresholdingTargetKeypointsConfigCount";
        v10 = _os_log_send_and_compose_impl();
        if (v10)
        {
          free(v10);
        }

        if (v2)
        {
          sub_1E53DFB24(v13, "%s has no effect in swproxy", "CVHWAFeatureExtractionGetDynamicThresholdingTargetKeypointsConfigCount");
          sub_1E53EA844(v13);
        }

        sub_1E53EA844(v13);
        v11 = v19;
        if (v19 && !atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v11->__on_zero_shared)(v11);
          std::__shared_weak_count::__release_weak(v11);
        }
      }
    }
  }

  return sub_1E54274F0(*a1);
}

void sub_1E53F48A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36, char a37)
{
  if (a37 == 1 && a36 < 0)
  {
    operator delete(__p);
  }

  __cxa_guard_abort(&qword_1ECFDBB40);
  sub_1E53EAA0C(&a12);
  _Unwind_Resume(a1);
}

void sub_1E53F48EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  sub_1E53F8434(&a26);
  sub_1E53F8434(&a22);
  sub_1E53F816C(&a31);
  sub_1E53EAA0C(&a12);
  _Unwind_Resume(a1);
}

void sub_1E53F4920(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, char a29)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  sub_1E53F816C(&a29);
  sub_1E53EAA0C(&a12);
  _Unwind_Resume(a1);
}

void sub_1E53F4954(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  MEMORY[0x1E6928650](v4, 0x10D0C40B950D02ALL);
  sub_1E53EAA0C(va);
  _Unwind_Resume(a1);
}

void sub_1E53F4980(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1E53EAA0C(va);
  _Unwind_Resume(a1);
}

void sub_1E53F4994(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *object, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a2)
  {
    sub_1E53DDDDC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CVHWAFeatureExtractionGetDynamicThresholdingTargetKeypointsAtIndex(uint64_t a1, unsigned int a2)
{
  v31 = *MEMORY[0x1E69E9840];
  if (!a1 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/product/AppleCVHWA/AppleCVHWA/src/CVHWAFeatureExtraction.cpp", 428, "ctx != nullptr", 14, &unk_1E549A011, 0, sub_1E548FDE0))
  {
LABEL_49:
    abort();
  }

  if (*(a1 + 16) == 1)
  {
    sub_1E53EA72C(&v22);
    if (**(v22 + 56) <= 4)
    {
      v4 = *(v22 + 72);
      v5 = sub_1E53E3554(v22, "OSLogSurrogateAppender", 1, 0);
      if (v5 || v4)
      {
        v15[0] = &v22;
        v15[1] = std::chrono::steady_clock::now().__d_.__rep_;
        v15[2] = std::chrono::system_clock::now().__d_.__rep_;
        v16 = 4;
        v17 = "unknown file";
        v18 = 430;
        v20 = 0;
        v21 = 0;
        v19 = "unknown function";
        v6 = *(v22 + 39);
        if ((v6 & 0x8000000000000000) != 0)
        {
          v7 = *(v22 + 16);
          v6 = *(v22 + 24);
          if ((atomic_load_explicit(&qword_1ECFDBB40, memory_order_acquire) & 1) == 0)
          {
            goto LABEL_50;
          }
        }

        else
        {
          v7 = (v22 + 16);
          if ((atomic_load_explicit(&qword_1ECFDBB40, memory_order_acquire) & 1) == 0)
          {
LABEL_50:
            if (__cxa_guard_acquire(&qword_1ECFDBB40))
            {
              sub_1E548E6E4(&v23);
              sub_1E53F807C("com.apple.AppleCVHWA", &v23, &qword_1ECFDBB28);
              if (v25 == 1 && SHIBYTE(v24) < 0)
              {
                operator delete(v23);
              }

              __cxa_atexit(MEMORY[0x1E69E52C0], &qword_1ECFDBB28, &dword_1E53D8000);
              __cxa_guard_release(&qword_1ECFDBB40);
            }
          }
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

        *&v23 = os_log_create(v8, v7);
        if (v9 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_1E53DF584();
        }

        if (v9 >= 0x17)
        {
          operator new();
        }

        v26 = v9;
        if (v9)
        {
          memmove(&v23 + 8, v8, v9);
        }

        *(&v23 + v9 + 8) = 0;
        LOBYTE(v27) = 1;
        if (v6 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_1E53DF584();
        }

        if (v6 >= 0x17)
        {
          operator new();
        }

        v29 = v6;
        if (v6)
        {
          memmove(&v28, v7, v6);
        }

        *(&v28 + v6) = 0;
        v30 = 1;
        v10 = v23;
        if (v29 < 0)
        {
          operator delete(v28);
        }

        if (v27 == 1 && v26 < 0)
        {
          operator delete(*(&v23 + 1));
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
        LODWORD(v23) = 136315138;
        *(&v23 + 4) = "CVHWAFeatureExtractionGetDynamicThresholdingTargetKeypointsAtIndex";
        v12 = _os_log_send_and_compose_impl();
        if (v12)
        {
          free(v12);
        }

        if (v4)
        {
          sub_1E53DFB24(v15, "%s has no effect in swproxy", "CVHWAFeatureExtractionGetDynamicThresholdingTargetKeypointsAtIndex");
          sub_1E53EA844(v15);
        }

        sub_1E53EA844(v15);
        v13 = v21;
        if (v21 && !atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v13->__on_zero_shared)(v13);
          std::__shared_weak_count::__release_weak(v13);
        }
      }
    }
  }

  if (a2 >= 9 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/product/AppleCVHWA/AppleCVHWA/src/CVHWAFeatureExtraction.cpp", 431, "target_kp_idx < DYN_THRESH_NUM_KEYPOINTS", 40, &unk_1E549A011, 0, sub_1E548FDE0))
  {
    goto LABEL_49;
  }

  return sub_1E542754C(*a1, a2);
}

void sub_1E53F53A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
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

void sub_1E53F53EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  sub_1E53F8434(&a28);
  sub_1E53F8434(&a24);
  sub_1E53F816C(v28 - 176);
  sub_1E53EAA0C(&a14);
  _Unwind_Resume(a1);
}

void sub_1E53F5420(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, char a31)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  sub_1E53F816C(&a31);
  sub_1E53EAA0C(&a14);
  _Unwind_Resume(a1);
}

void sub_1E53F5454(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  MEMORY[0x1E6928650](v6, 0x10D0C40B950D02ALL);
  sub_1E53EAA0C(va);
  _Unwind_Resume(a1);
}

void sub_1E53F5480(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_1E53EAA0C(va);
  _Unwind_Resume(a1);
}

void sub_1E53F5494(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  if (a2)
  {
    sub_1E53DDDDC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CVHWAFeatureExtractionGetDynamicThresholdingMaxKeypointsConfigCount(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  if (!a1 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/product/AppleCVHWA/AppleCVHWA/src/CVHWAFeatureExtraction.cpp", 440, "ctx != nullptr", 14, &unk_1E549A011, 0, sub_1E548FDE0))
  {
    abort();
  }

  if (*(a1 + 16) == 1)
  {
    sub_1E53EA72C(&v20);
    if (**(v20 + 56) <= 4)
    {
      v2 = *(v20 + 72);
      v3 = sub_1E53E3554(v20, "OSLogSurrogateAppender", 1, 0);
      if (v3 || v2)
      {
        v13[0] = &v20;
        v13[1] = std::chrono::steady_clock::now().__d_.__rep_;
        v13[2] = std::chrono::system_clock::now().__d_.__rep_;
        v14 = 4;
        v15 = "unknown file";
        v16 = 442;
        v18 = 0;
        v19 = 0;
        v17 = "unknown function";
        v4 = (v20 + 16);
        v5 = *(v20 + 39);
        if ((v5 & 0x8000000000000000) != 0)
        {
          v4 = *(v20 + 16);
          v5 = *(v20 + 24);
        }

        if ((atomic_load_explicit(&qword_1ECFDBB40, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ECFDBB40))
        {
          sub_1E548E6E4(&object);
          sub_1E53F807C("com.apple.AppleCVHWA", &object, &qword_1ECFDBB28);
          if (v23 == 1 && SHIBYTE(v22) < 0)
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

        v24 = v7;
        if (v7)
        {
          memmove(&object + 8, v6, v7);
        }

        *(&object + v7 + 8) = 0;
        LOBYTE(v25) = 1;
        if (v5 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_1E53DF584();
        }

        if (v5 >= 0x17)
        {
          operator new();
        }

        v27 = v5;
        if (v5)
        {
          memmove(&__p, v4, v5);
        }

        *(&__p + v5) = 0;
        v28 = 1;
        v8 = object;
        if (v27 < 0)
        {
          operator delete(__p);
        }

        if (v25 == 1 && v24 < 0)
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
        *(&object + 4) = "CVHWAFeatureExtractionGetDynamicThresholdingMaxKeypointsConfigCount";
        v10 = _os_log_send_and_compose_impl();
        if (v10)
        {
          free(v10);
        }

        if (v2)
        {
          sub_1E53DFB24(v13, "%s has no effect in swproxy", "CVHWAFeatureExtractionGetDynamicThresholdingMaxKeypointsConfigCount");
          sub_1E53EA844(v13);
        }

        sub_1E53EA844(v13);
        v11 = v19;
        if (v19 && !atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v11->__on_zero_shared)(v11);
          std::__shared_weak_count::__release_weak(v11);
        }
      }
    }
  }

  return sub_1E5427600(*a1);
}

void sub_1E53F5E44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36, char a37)
{
  if (a37 == 1 && a36 < 0)
  {
    operator delete(__p);
  }

  __cxa_guard_abort(&qword_1ECFDBB40);
  sub_1E53EAA0C(&a12);
  _Unwind_Resume(a1);
}

void sub_1E53F5E88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  sub_1E53F8434(&a26);
  sub_1E53F8434(&a22);
  sub_1E53F816C(&a31);
  sub_1E53EAA0C(&a12);
  _Unwind_Resume(a1);
}

void sub_1E53F5EBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, char a29)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  sub_1E53F816C(&a29);
  sub_1E53EAA0C(&a12);
  _Unwind_Resume(a1);
}

void sub_1E53F5EF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  MEMORY[0x1E6928650](v4, 0x10D0C40B950D02ALL);
  sub_1E53EAA0C(va);
  _Unwind_Resume(a1);
}

void sub_1E53F5F1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1E53EAA0C(va);
  _Unwind_Resume(a1);
}

void sub_1E53F5F30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *object, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a2)
  {
    sub_1E53DDDDC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CVHWAFeatureExtractionGetDynamicThresholdingMaxKeypointsAtIndex(uint64_t a1, unsigned int a2)
{
  v31 = *MEMORY[0x1E69E9840];
  if (!a1 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/product/AppleCVHWA/AppleCVHWA/src/CVHWAFeatureExtraction.cpp", 449, "ctx != nullptr", 14, &unk_1E549A011, 0, sub_1E548FDE0))
  {
LABEL_49:
    abort();
  }

  if (*(a1 + 16) == 1)
  {
    sub_1E53EA72C(&v22);
    if (**(v22 + 56) <= 4)
    {
      v4 = *(v22 + 72);
      v5 = sub_1E53E3554(v22, "OSLogSurrogateAppender", 1, 0);
      if (v5 || v4)
      {
        v15[0] = &v22;
        v15[1] = std::chrono::steady_clock::now().__d_.__rep_;
        v15[2] = std::chrono::system_clock::now().__d_.__rep_;
        v16 = 4;
        v17 = "unknown file";
        v18 = 451;
        v20 = 0;
        v21 = 0;
        v19 = "unknown function";
        v6 = *(v22 + 39);
        if ((v6 & 0x8000000000000000) != 0)
        {
          v7 = *(v22 + 16);
          v6 = *(v22 + 24);
          if ((atomic_load_explicit(&qword_1ECFDBB40, memory_order_acquire) & 1) == 0)
          {
            goto LABEL_50;
          }
        }

        else
        {
          v7 = (v22 + 16);
          if ((atomic_load_explicit(&qword_1ECFDBB40, memory_order_acquire) & 1) == 0)
          {
LABEL_50:
            if (__cxa_guard_acquire(&qword_1ECFDBB40))
            {
              sub_1E548E6E4(&v23);
              sub_1E53F807C("com.apple.AppleCVHWA", &v23, &qword_1ECFDBB28);
              if (v25 == 1 && SHIBYTE(v24) < 0)
              {
                operator delete(v23);
              }

              __cxa_atexit(MEMORY[0x1E69E52C0], &qword_1ECFDBB28, &dword_1E53D8000);
              __cxa_guard_release(&qword_1ECFDBB40);
            }
          }
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

        *&v23 = os_log_create(v8, v7);
        if (v9 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_1E53DF584();
        }

        if (v9 >= 0x17)
        {
          operator new();
        }

        v26 = v9;
        if (v9)
        {
          memmove(&v23 + 8, v8, v9);
        }

        *(&v23 + v9 + 8) = 0;
        LOBYTE(v27) = 1;
        if (v6 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_1E53DF584();
        }

        if (v6 >= 0x17)
        {
          operator new();
        }

        v29 = v6;
        if (v6)
        {
          memmove(&v28, v7, v6);
        }

        *(&v28 + v6) = 0;
        v30 = 1;
        v10 = v23;
        if (v29 < 0)
        {
          operator delete(v28);
        }

        if (v27 == 1 && v26 < 0)
        {
          operator delete(*(&v23 + 1));
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
        LODWORD(v23) = 136315138;
        *(&v23 + 4) = "CVHWAFeatureExtractionGetDynamicThresholdingMaxKeypointsAtIndex";
        v12 = _os_log_send_and_compose_impl();
        if (v12)
        {
          free(v12);
        }

        if (v4)
        {
          sub_1E53DFB24(v15, "%s has no effect in swproxy", "CVHWAFeatureExtractionGetDynamicThresholdingMaxKeypointsAtIndex");
          sub_1E53EA844(v15);
        }

        sub_1E53EA844(v15);
        v13 = v21;
        if (v21 && !atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v13->__on_zero_shared)(v13);
          std::__shared_weak_count::__release_weak(v13);
        }
      }
    }
  }

  if (a2 >= 9 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/product/AppleCVHWA/AppleCVHWA/src/CVHWAFeatureExtraction.cpp", 452, "max_kp_idx < DYN_THRESH_NUM_KEYPOINTS", 37, &unk_1E549A011, 0, sub_1E548FDE0))
  {
    goto LABEL_49;
  }

  return sub_1E542765C(*a1, a2);
}

void sub_1E53F6944(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
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

void sub_1E53F6988(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  sub_1E53F8434(&a28);
  sub_1E53F8434(&a24);
  sub_1E53F816C(v28 - 176);
  sub_1E53EAA0C(&a14);
  _Unwind_Resume(a1);
}

void sub_1E53F69BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, char a31)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  sub_1E53F816C(&a31);
  sub_1E53EAA0C(&a14);
  _Unwind_Resume(a1);
}

void sub_1E53F69F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  MEMORY[0x1E6928650](v6, 0x10D0C40B950D02ALL);
  sub_1E53EAA0C(va);
  _Unwind_Resume(a1);
}

void sub_1E53F6A1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_1E53EAA0C(va);
  _Unwind_Resume(a1);
}

void sub_1E53F6A30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  if (a2)
  {
    sub_1E53DDDDC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CVHWAFeatureExtractionUpdateConfig(uint64_t a1, _OWORD *a2)
{
  v42 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 4;
  }

  if (!a2)
  {
    return 2;
  }

  if (*(a1 + 16) == 1)
  {
    sub_1E53EA72C(&v33);
    if (**(v33 + 56) <= 4)
    {
      v4 = *(v33 + 72);
      v5 = sub_1E53E3554(v33, "OSLogSurrogateAppender", 1, 0);
      if (v5 || v4)
      {
        v26[0] = &v33;
        v26[1] = std::chrono::steady_clock::now().__d_.__rep_;
        v26[2] = std::chrono::system_clock::now().__d_.__rep_;
        v27 = 4;
        v28 = "unknown file";
        v29 = 471;
        v31 = 0;
        v32 = 0;
        v30 = "unknown function";
        v6 = *(v33 + 39);
        if ((v6 & 0x8000000000000000) != 0)
        {
          v7 = *(v33 + 16);
          v6 = *(v33 + 24);
        }

        else
        {
          v7 = (v33 + 16);
        }

        if ((atomic_load_explicit(&qword_1ECFDBB40, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ECFDBB40))
        {
          sub_1E548E6E4(&v34);
          sub_1E53F807C("com.apple.AppleCVHWA", &v34, &qword_1ECFDBB28);
          if (v36 == 1 && SHIBYTE(v35) < 0)
          {
            operator delete(v34);
          }

          __cxa_atexit(MEMORY[0x1E69E52C0], &qword_1ECFDBB28, &dword_1E53D8000);
          __cxa_guard_release(&qword_1ECFDBB40);
        }

        if (byte_1ECFDBB3F >= 0)
        {
          v9 = &qword_1ECFDBB28;
        }

        else
        {
          v9 = qword_1ECFDBB28;
        }

        if (byte_1ECFDBB3F >= 0)
        {
          v10 = byte_1ECFDBB3F;
        }

        else
        {
          v10 = unk_1ECFDBB30;
        }

        *&v34 = os_log_create(v9, v7);
        if (v10 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_1E53DF584();
        }

        if (v10 >= 0x17)
        {
          operator new();
        }

        v37 = v10;
        if (v10)
        {
          memmove(&v34 + 8, v9, v10);
        }

        *(&v34 + v10 + 8) = 0;
        LOBYTE(v38) = 1;
        if (v6 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_1E53DF584();
        }

        if (v6 >= 0x17)
        {
          operator new();
        }

        v40 = v6;
        if (v6)
        {
          memmove(&v39, v7, v6);
        }

        *(&v39 + v6) = 0;
        v41 = 1;
        v11 = v34;
        if (v40 < 0)
        {
          operator delete(v39);
        }

        if (v38 == 1 && v37 < 0)
        {
          operator delete(*(&v34 + 1));
        }

        if (v11)
        {
          os_release(v11);
        }

        if (v5 && *(v5 + 24))
        {
          v12 = _os_log_pack_size();
          operator new(v12, 8uLL);
          operator new();
        }

        os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);
        LODWORD(v34) = 136315138;
        *(&v34 + 4) = "CVHWAFeatureExtractionUpdateConfig";
        v13 = _os_log_send_and_compose_impl();
        if (v13)
        {
          free(v13);
        }

        if (v4)
        {
          sub_1E53DFB24(v26, "%s has no effect in swproxy", "CVHWAFeatureExtractionUpdateConfig");
          sub_1E53EA844(v26);
        }

        sub_1E53EA844(v26);
        v14 = v32;
        if (v32 && !atomic_fetch_add(&v32->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v14->__on_zero_shared)(v14);
          std::__shared_weak_count::__release_weak(v14);
        }
      }
    }
  }

  v15 = *a1;
  if (!v15 || !sub_1E542B088((v15 + 3), a2))
  {
    return 1;
  }

  v16 = *(v15 + 37);
  *(v15 + 198) = 0;
  v17 = a2[1];
  v18 = a2[2];
  v19 = a2[3];
  *(v15 + 11) = a2[4];
  *(v15 + 9) = v19;
  v20 = a2[5];
  v21 = a2[6];
  v22 = a2[7];
  *(v15 + 19) = a2[8];
  *(v15 + 17) = v22;
  *(v15 + 15) = v21;
  *(v15 + 13) = v20;
  v23 = a2[9];
  v24 = a2[10];
  v25 = a2[11];
  *(v15 + 27) = a2[12];
  *(v15 + 25) = v25;
  *(v15 + 23) = v24;
  *(v15 + 21) = v23;
  *(v15 + 3) = *a2;
  *(v15 + 7) = v18;
  *(v15 + 5) = v17;
  *(v15 + 37) = v16;
  (*(***v15 + 88))(**v15, v15 + 3);
  sub_1E54243C0(v15);
  return 0;
}

void sub_1E53F74A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
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

void sub_1E53F74EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  sub_1E53F8434(&a28);
  sub_1E53F8434(&a24);
  sub_1E53F816C(v28 - 176);
  sub_1E53EAA0C(&a14);
  _Unwind_Resume(a1);
}

void sub_1E53F7518(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_1E53F816C(v6 - 176);
  sub_1E53EAA0C(va);
  _Unwind_Resume(a1);
}

void sub_1E53F7534(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, char a31)
{
  if (a30 < 0)
  {
    operator delete(__p);
    sub_1E53F816C(&a31);
    sub_1E53EAA0C(&a14);
    _Unwind_Resume(a1);
  }

  sub_1E53F816C(&a31);
  sub_1E53EAA0C(&a14);
  _Unwind_Resume(a1);
}

void sub_1E53F757C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  MEMORY[0x1E6928650](v6, 0x10D0C40B950D02ALL);
  sub_1E53EAA0C(va);
  _Unwind_Resume(a1);
}

void sub_1E53F75A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_1E53EAA0C(va);
  _Unwind_Resume(a1);
}

void sub_1E53F75BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  if (a2)
  {
    sub_1E53DDDDC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CVHWAFeatureExtractionExtractKeyPoints(uint64_t a1)
{
  v15 = 0;
  v14 = 0x10000;
  v2[0] = 0;
  v4 = 0;
  v3 = 0;
  v5 = 0u;
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  sub_1E545920C(a1, &v14, v2);
  return v12;
}

uint64_t CVHWAFeatureExtractionExtractDescriptors(uint64_t a1)
{
  v15 = 0;
  v14 = 0x1000000;
  v2[0] = 0;
  v4 = 0;
  v3 = 0;
  v5 = 0u;
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  sub_1E545920C(a1, &v14, v2);
  return *(&v12 + 1);
}

uint64_t CVHWAFeatureExtractionExtractNumberOfOctaves(uint64_t a1)
{
  v15 = 0;
  v14 = 0;
  v2[0] = 0;
  v4 = 0;
  v3 = 0;
  v5 = 0u;
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  sub_1E545920C(a1, &v14, v2);
  return v2[0];
}

uint64_t CVHWAFeatureExtractionExtractNumberOfKeypoints(uint64_t a1)
{
  v15 = 0;
  v14 = 0;
  v2[0] = 0;
  v4 = 0;
  v3 = 0;
  v5 = 0u;
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  sub_1E545920C(a1, &v14, v2);
  return v3;
}

uint64_t CVHWAFeatureExtractionExtractNumberOfPrunedKeypointsAtTopLevel(uint64_t a1)
{
  v15 = 0;
  v14 = 0;
  v2[0] = 0;
  v4 = 0;
  v3 = 0;
  v5 = 0u;
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  sub_1E545920C(a1, &v14, v2);
  return v4;
}

uint64_t CVHWAFeatureExtractionExtractInputImageWidth(uint64_t a1)
{
  v15 = 0;
  v14 = 0;
  v2[0] = 0;
  v4 = 0;
  v3 = 0;
  v5 = 0u;
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  sub_1E545920C(a1, &v14, v2);
  return DWORD2(v5);
}

uint64_t CVHWAFeatureExtractionExtractInputImageHeight(uint64_t a1)
{
  v15 = 0;
  v14 = 0;
  v2[0] = 0;
  v4 = 0;
  v3 = 0;
  v5 = 0u;
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  sub_1E545920C(a1, &v14, v2);
  return HIDWORD(v5);
}

uint64_t CVHWAFeatureExtractionExtractNumberOfFeatureMatches(uint64_t a1)
{
  v15 = 0;
  v14 = 0;
  v2[0] = 0;
  v4 = 0;
  v3 = 0;
  v5 = 0u;
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  sub_1E545920C(a1, &v14, v2);
  return HIDWORD(v3);
}

uint64_t CVHWAFeatureExtractionExtractMatchedPairs(uint64_t a1)
{
  v15 = 1;
  v14 = 0;
  v2[0] = 0;
  v4 = 0;
  v3 = 0;
  v5 = 0u;
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  sub_1E545920C(a1, &v14, v2);
  return v13;
}

uint64_t CVHWAFeatureExtractionExtractTids(uint64_t a1)
{
  v15 = 256;
  v14 = 0;
  v2[0] = 0;
  v4 = 0;
  v3 = 0;
  v5 = 0u;
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  sub_1E545920C(a1, &v14, v2);
  return *(&v13 + 1);
}

uint64_t CVHWAFeatureExtractionExtractFeatureMatchingEnabled(uint64_t a1)
{
  v15 = 0;
  v14 = 0;
  v2[0] = 0;
  v4 = 0;
  v3 = 0;
  v5 = 0u;
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  sub_1E545920C(a1, &v14, v2);
  return BYTE6(v4);
}

uint64_t CVHWAFeatureExtractionExtractGaussianOutputEnabled(uint64_t a1)
{
  v15 = 0;
  v14 = 0;
  v2[0] = 0;
  v4 = 0;
  v3 = 0;
  v5 = 0u;
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  sub_1E545920C(a1, &v14, v2);
  return BYTE4(v4);
}

uint64_t CVHWAFeatureExtractionExtractFlowType(uint64_t a1)
{
  v15 = 0;
  v14 = 0;
  v2[0] = 0;
  v4 = 0;
  v3 = 0;
  v5 = 0u;
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  sub_1E545920C(a1, &v14, v2);
  return BYTE5(v4);
}

uint64_t CVHWAFeatureExtractionExtractLaccEnabled(uint64_t a1)
{
  v15 = 0;
  v14 = 0;
  v2[0] = 0;
  v4 = 0;
  v3 = 0;
  v5 = 0u;
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  sub_1E545920C(a1, &v14, v2);
  return HIBYTE(v4);
}

uint64_t CVHWAFeatureExtractionExtractFrameId(uint64_t a1)
{
  v15 = 0;
  v14 = 0;
  v2[0] = 0;
  v4 = 0;
  v3 = 0;
  v5 = 0u;
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  sub_1E545920C(a1, &v14, v2);
  return v5;
}

_BYTE *sub_1E53F7C9C(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1E53DF584();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

uint64_t *sub_1E53F7D54(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(v2 + 40);
    if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
    }

    v4 = *(v2 + 16);
    *(v2 + 16) = 0;
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    v5 = nullsub_2(v2);
    MEMORY[0x1E6928650](v5, 0x10A1C40DEDFD569);
  }

  return a1;
}

uint64_t sub_1E53F7E20(uint64_t result)
{
  v1 = *(result + 64);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

uint64_t sub_1E53F7E98(uint64_t result)
{
  v1 = *(result + 8);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void sub_1E53F7F14(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E6928650);
}

uint64_t sub_1E53F7F4C(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    v2 = *(v1 + 40);
    if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v2->__on_zero_shared)(v2);
      std::__shared_weak_count::__release_weak(v2);
    }

    v3 = *(v1 + 16);
    *(v1 + 16) = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    nullsub_2(v1);

    JUMPOUT(0x1E6928650);
  }

  return result;
}

uint64_t sub_1E53F801C(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIN4cv3d3esn4elog13OSLogAppenderEEE")
  {
    if (((v2 & "NSt3__114default_deleteIN4cv3d3esn4elog13OSLogAppenderEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIN4cv3d3esn4elog13OSLogAppenderEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIN4cv3d3esn4elog13OSLogAppenderEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_1E53F807C@<X0>(char *__s@<X1>, unint64_t result@<X0>, void *a3@<X8>)
{
  if (*(result + 24) == 1)
  {
    *a3 = *result;
    a3[2] = *(result + 16);
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = 0;
  }

  else
  {
    result = strlen(__s);
    if (result >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_1E53DF584();
    }

    v5 = result;
    if (result >= 0x17)
    {
      operator new();
    }

    *(a3 + 23) = result;
    if (result)
    {
      result = memcpy(a3, __s, result);
      *(a3 + v5) = 0;
    }

    else
    {
      *a3 = 0;
    }
  }

  return result;
}

uint64_t sub_1E53F816C(uint64_t result)
{
  v1 = *(result + 32);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v2 = result;
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    result = v2;
  }

  v3 = *(result + 16);
  if (v3)
  {
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return v4;
    }
  }

  return result;
}

uint64_t sub_1E53F8234(uint64_t result)
{
  if (*(result + 31) < 0)
  {
    v1 = result;
    operator delete(*(result + 8));
    return v1;
  }

  return result;
}

void sub_1E53F8278(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E6928650);
}

uint64_t sub_1E53F82B0(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    JUMPOUT(0x1E6928650);
  }

  return result;
}

uint64_t sub_1E53F82D0(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__110shared_ptrIvE27__shared_ptr_default_deleteIv13os_log_pack_sEE")
  {
    if (((v2 & "NSt3__110shared_ptrIvE27__shared_ptr_default_deleteIv13os_log_pack_sEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__110shared_ptrIvE27__shared_ptr_default_deleteIv13os_log_pack_sEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__110shared_ptrIvE27__shared_ptr_default_deleteIv13os_log_pack_sEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_1E53F8350(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5F0AB68;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E6928650);
}

void sub_1E53F83A4(uint64_t a1)
{
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }
}

void sub_1E53F83BC(uint64_t a1)
{
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  JUMPOUT(0x1E6928650);
}

uint64_t *sub_1E53F8434(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(v2 + 32);
    if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
    }

    v4 = *(v2 + 16);
    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }

    MEMORY[0x1E6928650](v2, 0x10F0C40B62ED6C6);
  }

  return a1;
}

uint64_t CVHWAFeatureExtractionConfigCreateWithPreset(uint64_t *a1, int a2)
{
  v58 = *MEMORY[0x1E69E9840];
  *v35 = 0x1E000000280;
  *&v35[8] = 640;
  *&v35[12] = 0;
  strcpy(&v35[20], "-");
  v35[22] = -1;
  *&v35[24] = vdup_n_s32(0x1388u);
  *v36 = 0xA000500010001;
  strcpy(&v36[8], "\n");
  *&v36[10] = 0xB000901010100;
  *&v36[18] = 3;
  *&v36[20] = xmmword_1E5491B30;
  v36[36] = 1;
  *&v36[40] = 0;
  *&v36[43] = 0;
  *v37 = 1061997773;
  v37[8] = 0;
  *&v37[9] = 1;
  *&v37[12] = xmmword_1E5491B40;
  *&v37[28] = 0xFFFFF;
  *v38 = 1;
  *&v38[36] = 1065353216;
  *&v38[4] = xmmword_1E5491B80;
  *&v38[20] = unk_1E5491B90;
  v38[40] = 1;
  *&v38[44] = 0x3F00000041A00000;
  *&v38[52] = 0xB43E4CCCCDLL;
  *&v38[60] = 0;
  LOBYTE(v39) = 0;
  DWORD1(v39) = 2;
  WORD4(v39) = 0;
  *&v40 = 0;
  *(&v40 + 1) = 0xDEC000005CCLL;
  *v41 = 2;
  v41[4] = 0;
  *&v41[8] = vdupq_n_s64(0x280uLL);
  v41[24] = 0;
  __p[23] = 5;
  strcpy(__p, "/tmp/");
  __p[24] = 1;
  *&__p[28] = 0x90000002DLL;
  *&v43 = 5000;
  BYTE8(v43) = 1;
  HIDWORD(v43) = 1061997773;
  v44[0] = 0;
  *&v44[8] = vdupq_n_s64(1uLL);
  *&v44[24] = 5;
  *v45 = 256;
  *&v45[104] = 0;
  *&v45[108] = xmmword_1E5491B50;
  *&v45[124] = xmmword_1E5491B60;
  *&v45[140] = xmmword_1E5491BA4;
  *&v45[156] = unk_1E5491BB4;
  *&v45[172] = 0x4000;
  v46 = 1045220557;
  v47 = 0;
  if (a2 > 2)
  {
    if (a2 == 3)
    {
      *&v56[3] = 0;
      *&v56[6] = 0;
      *(&v53[2] + 2) = 1065353216;
      *(v53 + 2) = xmmword_1E5491B80;
      *(&v53[1] + 2) = unk_1E5491B90;
      *v35 = 0x1E000000280;
      *&v35[8] = 640;
      *&v35[12] = 0;
      strcpy(&v35[20], "-");
      v35[22] = -1;
      *&v35[24] = vdup_n_s32(0x1388u);
      *v36 = 0xA000500010001;
      strcpy(&v36[8], "\n");
      *&v36[10] = 16843008;
      *&v36[14] = 720905;
      *&v36[18] = 3;
      *&v36[20] = xmmword_1E5491B30;
      v36[36] = 1;
      *&v36[37] = *v56;
      *&v36[45] = 0;
      *v37 = 1061997773;
      v37[8] = 0;
      *&v37[9] = 1;
      *&v37[12] = xmmword_1E5491B40;
      *&v37[28] = 0xFFFFF;
      *v38 = 1;
      *&v38[2] = v53[0];
      *&v38[18] = v53[1];
      *&v38[32] = *(&v53[1] + 14);
      v38[40] = 1;
      *&v38[44] = 0x3F00000041A00000;
      *&v38[52] = 0xB43E4CCCCDLL;
      LOBYTE(v39) = 0;
      *&v38[60] = 0;
      DWORD1(v39) = 2;
      WORD4(v39) = 0;
      *&v40 = 0;
      *(&v40 + 1) = 0xDEC000005CCLL;
      *v41 = 2;
      goto LABEL_18;
    }

    if (a2 == 4)
    {
      *&v56[3] = 0;
      *&v56[6] = 0;
      *(&v53[2] + 2) = 1065353216;
      *(v53 + 2) = xmmword_1E5491B80;
      *(&v53[1] + 2) = unk_1E5491B90;
      *v35 = 0x1E000000280;
      *&v35[8] = 640;
      *&v35[12] = 0;
      strcpy(&v35[20], "-");
      v35[22] = -1;
      *&v35[24] = vdup_n_s32(0x1388u);
      *v36 = 0xA000500010001;
      strcpy(&v36[8], "\n");
      *&v36[10] = 16843008;
      *&v36[14] = 720905;
      *&v36[18] = 3;
      *&v36[20] = xmmword_1E5491B30;
      v36[36] = 1;
      *&v36[37] = *v56;
      *&v36[45] = 0;
      *v37 = 1061997773;
      v37[8] = 0;
      *&v37[9] = 1;
      *&v37[12] = xmmword_1E5491B40;
      *&v37[28] = 0xFFFFF;
      *v38 = 1;
      *&v38[2] = v53[0];
      *&v38[18] = v53[1];
      *&v38[32] = *(&v53[1] + 14);
      v38[40] = 1;
      *&v38[44] = 0x3F00000041A00000;
      *&v38[52] = 0xB43E4CCCCDLL;
      LOBYTE(v39) = 0;
      *&v38[60] = 0;
      DWORD1(v39) = 2;
      WORD4(v39) = 0;
      *&v40 = 0;
      *(&v40 + 1) = 0xDEC000005CCLL;
      *v41 = 3;
      v41[4] = 0;
      *&v41[8] = vdupq_n_s64(0x280uLL);
      v41[24] = 0;
      *&__p[23] = 261;
      *&__p[28] = 0x90000002DLL;
      *__p = 0x2F706D742FLL;
      *&v43 = 5000;
      BYTE8(v43) = 1;
      HIDWORD(v43) = 1061997773;
      goto LABEL_19;
    }

LABEL_8:
    *&v56[3] = 0;
    *&v56[6] = 0;
    *(&v53[2] + 2) = 1065353216;
    *(v53 + 2) = xmmword_1E5491B80;
    *(&v53[1] + 2) = unk_1E5491B90;
    *v35 = 0x1E000000280;
    *&v35[8] = 640;
    *&v35[12] = 0;
    strcpy(&v35[20], "-");
    v35[22] = -1;
    *&v35[24] = vdup_n_s32(0x1388u);
    *v36 = 0xA000500010001;
    strcpy(&v36[8], "\n");
    *&v36[10] = 16843008;
    *&v36[14] = 720905;
    *&v36[18] = 3;
    *&v36[20] = xmmword_1E5491B30;
    v36[36] = 1;
    *&v36[37] = *v56;
    *&v36[45] = 0;
    *v37 = 1061997773;
    v37[8] = 0;
    *&v37[9] = 1;
    *&v37[12] = xmmword_1E5491B40;
    *&v37[28] = 0xFFFFF;
    *v38 = 1;
    *&v38[2] = v53[0];
    *&v38[18] = v53[1];
    *&v38[32] = *(&v53[1] + 14);
    v38[40] = 1;
    *&v38[44] = 0x3F00000041A00000;
    *&v38[52] = 0xB43E4CCCCDLL;
    LOBYTE(v39) = 0;
    *&v38[60] = 0;
    DWORD1(v39) = 2;
    WORD4(v39) = 0;
    *&v40 = 0;
    *(&v40 + 1) = 0xDEC000005CCLL;
    *v41 = 2;
    v41[4] = 0;
    *&v41[8] = vdupq_n_s64(0x280uLL);
    v41[24] = 0;
    *&__p[23] = 261;
    *&__p[28] = 0x90000002DLL;
    *__p = 0x2F706D742FLL;
    *&v43 = 5000;
    BYTE8(v43) = 1;
    HIDWORD(v43) = 1061997773;
    v44[0] = 0;
    *&v44[8] = vdupq_n_s64(1uLL);
    *&v44[24] = 5;
    *v45 = 256;
    *&v45[104] = 0;
    *&v45[108] = xmmword_1E5491B50;
    *&v45[124] = xmmword_1E5491B60;
    *&v45[172] = 0x4000;
    *&v45[140] = xmmword_1E5491BA4;
    *&v45[156] = unk_1E5491BB4;
    v46 = 1045220557;
    v47 = 0;
    result = CVHWAFeatureExtractionConfigCreate(a1);
    if (result)
    {
      return result;
    }

LABEL_20:
    v8 = *a1;
    *v8 = *v35;
    v9 = *&v35[16];
    v10 = *v36;
    v11 = *&v36[32];
    *(v8 + 48) = *&v36[16];
    *(v8 + 64) = v11;
    *(v8 + 16) = v9;
    *(v8 + 32) = v10;
    v12 = *v37;
    v13 = *&v37[16];
    v14 = *&v38[16];
    *(v8 + 112) = *v38;
    *(v8 + 128) = v14;
    *(v8 + 80) = v12;
    *(v8 + 96) = v13;
    v15 = *&v38[32];
    v16 = *&v38[48];
    v17 = v40;
    *(v8 + 176) = v39;
    *(v8 + 192) = v17;
    *(v8 + 144) = v15;
    *(v8 + 160) = v16;
    v18 = *v41;
    *(v8 + 217) = *&v41[9];
    *(v8 + 208) = v18;
    if (v8 != v35)
    {
      if (*(v8 + 263) < 0)
      {
        if (__p[23] >= 0)
        {
          v20 = __p;
        }

        else
        {
          v20 = *__p;
        }

        if (__p[23] >= 0)
        {
          v21 = __p[23];
        }

        else
        {
          v21 = *&__p[8];
        }

        sub_1E53E6DF0(v8 + 240, v20, v21);
      }

      else if ((__p[23] & 0x80) != 0)
      {
        sub_1E53E6D20((v8 + 240), *__p, *&__p[8]);
      }

      else
      {
        v19 = *__p;
        *(v8 + 256) = *&__p[16];
        *(v8 + 240) = v19;
      }
    }

    result = 0;
    v22 = *&__p[24];
    v23 = v43;
    v24 = *&v44[16];
    *(v8 + 296) = *v44;
    *(v8 + 312) = v24;
    *(v8 + 264) = v22;
    *(v8 + 280) = v23;
    v25 = *v45;
    v26 = *&v45[16];
    v27 = *&v45[48];
    *(v8 + 360) = *&v45[32];
    *(v8 + 376) = v27;
    *(v8 + 328) = v25;
    *(v8 + 344) = v26;
    v28 = *&v45[64];
    v29 = *&v45[80];
    v30 = *&v45[112];
    *(v8 + 424) = *&v45[96];
    *(v8 + 440) = v30;
    *(v8 + 392) = v28;
    *(v8 + 408) = v29;
    v31 = *&v45[128];
    v32 = *&v45[144];
    v33 = *&v45[160];
    *(v8 + 504) = v46;
    *(v8 + 472) = v32;
    *(v8 + 488) = v33;
    *(v8 + 456) = v31;
    *(v8 + 512) = v47;
    if ((__p[23] & 0x80000000) != 0)
    {
      goto LABEL_36;
    }

    return result;
  }

  if (a2 != 1)
  {
    if (a2 == 2)
    {
      *&v56[3] = 0;
      *&v56[6] = 0;
      *(&v53[2] + 2) = 1065353216;
      *(v53 + 2) = xmmword_1E5491B80;
      *(&v53[1] + 2) = unk_1E5491B90;
      *v35 = 0x1E000000280;
      *&v35[8] = 640;
      *&v35[12] = 0;
      strcpy(&v35[20], "-");
      v35[22] = -1;
      *&v35[24] = vdup_n_s32(0x1388u);
      *v36 = 0xA000500010001;
      strcpy(&v36[8], "\n");
      *&v36[10] = 16843008;
      *&v36[14] = 720905;
      *&v36[18] = 3;
      *&v36[20] = xmmword_1E5491B30;
      v36[36] = 1;
      *&v36[37] = *v56;
      *&v36[45] = 0;
      *v37 = 1061997773;
      v37[8] = 0;
      *&v37[9] = 1;
      *&v37[12] = xmmword_1E5491B40;
      *&v37[28] = 0xFFFFF;
      *v38 = 1;
      *&v38[2] = v53[0];
      *&v38[18] = v53[1];
      *&v38[32] = *(&v53[1] + 14);
      v38[40] = 1;
      *&v38[44] = 0x3F00000041A00000;
      *&v38[52] = 0xB43E4CCCCDLL;
      LOBYTE(v39) = 0;
      *&v38[60] = 0;
      DWORD1(v39) = 2;
      WORD4(v39) = 0;
      *&v40 = 0;
      *(&v40 + 1) = 0xDEC000005CCLL;
      *v41 = 0;
LABEL_18:
      v41[4] = 0;
      *&v41[8] = vdupq_n_s64(0x280uLL);
      v41[24] = 0;
      *&__p[23] = 261;
      *&__p[28] = 0x90000002DLL;
      *__p = 0x2F706D742FLL;
      *&v43 = 5000;
      BYTE8(v43) = 1;
      HIDWORD(v43) = 1061997773;
LABEL_19:
      v44[0] = 0;
      *&v44[8] = vdupq_n_s64(1uLL);
      *&v44[24] = 5;
      *v45 = 256;
      *&v45[104] = 0;
      *&v45[108] = xmmword_1E5491B50;
      *&v45[124] = xmmword_1E5491B60;
      *&v45[172] = 0x4000;
      *&v45[140] = xmmword_1E5491BA4;
      *&v45[156] = unk_1E5491BB4;
      v46 = 1045220557;
      v47 = 1;
      result = CVHWAFeatureExtractionConfigCreate(a1);
      if (result)
      {
        return result;
      }

      goto LABEL_20;
    }

    goto LABEL_8;
  }

  sub_1E548F388();
  v4 = sub_1E548ED74();
  if (v5)
  {
    v6 = v4;
    result = 7;
    v7 = v6 - 33072;
    if (v7 <= 0x20 && ((1 << v7) & 0x100050005) != 0)
    {
      *&v57[3] = 0;
      *&v57[6] = 0;
      *&v56[34] = 1065353216;
      *&v56[2] = xmmword_1E5491B80;
      *&v56[18] = unk_1E5491B90;
      *v35 = 0x96000000C80;
      *&v35[8] = 3200;
      *&v35[12] = 0;
      *&v35[20] = 300;
      v35[22] = -1;
      *&v35[24] = 0x138800004268;
      *v36 = 0xA000500010001;
      strcpy(&v36[8], "\n");
      *&v36[10] = 0xB000901010101;
      *&v36[18] = 3;
      *&v36[20] = xmmword_1E5491B70;
      v36[36] = 2;
      *&v36[37] = *v57;
      *&v36[45] = 0;
      *v37 = 1061997773;
      *&v37[8] = 1;
      v37[10] = 0;
      *&v37[12] = xmmword_1E5491B40;
      *&v37[28] = 0xFFFFF;
      *v38 = 0;
      *&v38[2] = *v56;
      *&v38[18] = *&v56[16];
      *&v38[32] = *&v56[30];
      v38[40] = 1;
      *&v38[44] = 0x3F00000041A00000;
      *&v38[52] = 1045220557;
      *&v38[56] = 0x1000000B4;
      LOBYTE(v39) = 1;
      DWORD1(v39) = 2;
      WORD4(v39) = 0;
      *&v40 = 0;
      *(&v40 + 1) = 0xDEC000005CCLL;
      *v41 = 2;
      v41[4] = 0;
      *&v41[8] = vdupq_n_s64(0x280uLL);
      v41[24] = 0;
      if ((__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }

      *__p = 0x2F706D742FLL;
      *&__p[8] = v55[0];
      *&__p[15] = *(v55 + 7);
      *&__p[23] = 261;
      *&__p[25] = v51;
      __p[27] = v52;
      *&__p[28] = 0x90000002DLL;
      *&v43 = 5000;
      BYTE8(v43) = 1;
      *(&v43 + 9) = v49;
      BYTE11(v43) = v50;
      HIDWORD(v43) = 1061997773;
      v44[0] = 0;
      *&v44[1] = *v48;
      *&v44[4] = *&v48[3];
      *&v44[8] = vdupq_n_s64(1uLL);
      *&v44[24] = 5;
      *v45 = 256;
      *&v45[66] = v53[4];
      *&v45[82] = *v54;
      *&v45[2] = v53[0];
      *&v45[18] = v53[1];
      *&v45[34] = v53[2];
      *&v45[50] = v53[3];
      *&v45[96] = *&v54[14];
      *&v45[104] = 0;
      *&v45[108] = xmmword_1E5491B50;
      *&v45[124] = xmmword_1E5491B60;
      *&v45[172] = 0x4000;
      *&v45[140] = xmmword_1E5491BA4;
      *&v45[156] = unk_1E5491BB4;
      v46 = 1045220557;
      v47 = 0;
      result = CVHWAFeatureExtractionConfigCreate(a1);
      if (result)
      {
        return result;
      }

      goto LABEL_20;
    }
  }

  else
  {
    result = 7;
  }

  if ((__p[23] & 0x80000000) != 0)
  {
LABEL_36:
    v34 = result;
    operator delete(*__p);
    return v34;
  }

  return result;
}

void sub_1E53F90F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, void *__p, uint64_t a55, int a56, __int16 a57, char a58, char a59)
{
  if (a59 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CVHWAFeatureExtractionConfigCreate(void *a1)
{
  if (!a1)
  {
    return 4;
  }

  v2 = operator new(0x208uLL, MEMORY[0x1E69E5398]);
  v3 = 3;
  if (v2)
  {
    *v2 = 0x1E000000280;
    *(v2 + 2) = 640;
    *(v2 + 12) = 0;
    *(v2 + 10) = 45;
    v2[22] = -1;
    *(v2 + 3) = vdup_n_s32(0x1388u);
    *(v2 + 4) = 0xA000500010001;
    *(v2 + 20) = 10;
    *(v2 + 42) = 16843008;
    *(v2 + 46) = 720905;
    *(v2 + 25) = 3;
    *(v2 + 52) = xmmword_1E5491B30;
    v2[68] = 1;
    *(v2 + 18) = 0;
    *(v2 + 75) = 0;
    *(v2 + 10) = 1061997773;
    v2[88] = 0;
    *(v2 + 89) = 1;
    *(v2 + 92) = xmmword_1E5491B40;
    *(v2 + 27) = 0xFFFFF;
    *(v2 + 56) = 1;
    *(v2 + 37) = 1065353216;
    *(v2 + 116) = xmmword_1E5491B80;
    *(v2 + 132) = unk_1E5491B90;
    v2[152] = 1;
    *(v2 + 156) = 0x3F00000041A00000;
    *(v2 + 164) = 0xB43E4CCCCDLL;
    *(v2 + 43) = 0;
    v2[176] = 0;
    *(v2 + 45) = 2;
    *(v2 + 92) = 0;
    *(v2 + 24) = 0;
    *(v2 + 25) = 0xDEC000005CCLL;
    *(v2 + 52) = 2;
    v2[212] = 0;
    *(v2 + 216) = vdupq_n_s64(0x280uLL);
    v2[232] = 0;
    v2[263] = 5;
    strcpy(v2 + 240, "/tmp/");
    v2[264] = 1;
    *(v2 + 268) = 0x90000002DLL;
    *(v2 + 35) = 5000;
    v2[288] = 1;
    *(v2 + 73) = 1061997773;
    v2[296] = 0;
    *(v2 + 19) = vdupq_n_s64(1uLL);
    *(v2 + 40) = 5;
    *(v2 + 164) = 256;
    *(v2 + 216) = 0;
    *(v2 + 436) = xmmword_1E5491B50;
    *(v2 + 452) = xmmword_1E5491B60;
    *(v2 + 125) = 0x4000;
    *(v2 + 468) = xmmword_1E5491BA4;
    *(v2 + 484) = unk_1E5491BB4;
    *(v2 + 126) = 1045220557;
    v2[512] = 0;
    *a1 = v2;
    return 0;
  }

  return v3;
}

uint64_t CVHWAFeatureExtractionConfigRelease(uint64_t a1)
{
  if (!a1)
  {
    return 4;
  }

  if (*(a1 + 263) < 0)
  {
    v1 = a1;
    operator delete(*(a1 + 240));
    a1 = v1;
  }

  MEMORY[0x1E6928650](a1, 0x1032C400871F700);
  return 0;
}

uint64_t CVHWAFeatureExtractionConfigSetImageSize(uint64_t result, unsigned int a2, unsigned int a3, int a4)
{
  v7 = result;
  if (!result)
  {
    result = sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/product/AppleCVHWA/AppleCVHWA/src/CVHWAFeatureExtractionConfig.cpp", 179, "cfg != nullptr", 14, &unk_1E549A011, 0, sub_1E548FDE0);
    if (result)
    {
      abort();
    }
  }

  if (*(v7 + 512) == 1)
  {
    *(v7 + 216) = a2;
    *(v7 + 224) = a3;
  }

  else
  {
    *v7 = a2;
    *(v7 + 4) = a3;
    *(v7 + 8) = a4;
  }

  return result;
}

uint64_t CVHWAFeatureExtractionConfigGetWidth(unsigned int *a1)
{
  if (!a1 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/product/AppleCVHWA/AppleCVHWA/src/CVHWAFeatureExtractionConfig.cpp", 192, "cfg != nullptr", 14, &unk_1E549A011, 0, sub_1E548FDE0))
  {
    abort();
  }

  if (*(a1 + 512) == 1)
  {
    return a1[54];
  }

  else
  {
    return *a1;
  }
}

uint64_t CVHWAFeatureExtractionConfigGetHeight(uint64_t a1)
{
  if (!a1 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/product/AppleCVHWA/AppleCVHWA/src/CVHWAFeatureExtractionConfig.cpp", 198, "cfg != nullptr", 14, &unk_1E549A011, 0, sub_1E548FDE0))
  {
    abort();
  }

  if (*(a1 + 512) == 1)
  {
    return *(a1 + 224);
  }

  else
  {
    return *(a1 + 4);
  }
}

uint64_t CVHWAFeatureExtractionConfigGetStride(uint64_t a1)
{
  if (!a1 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/product/AppleCVHWA/AppleCVHWA/src/CVHWAFeatureExtractionConfig.cpp", 204, "cfg != nullptr", 14, &unk_1E549A011, 0, sub_1E548FDE0))
  {
    abort();
  }

  if (*(a1 + 512) == 1)
  {
    return (*(a1 + 216) + 63) & 0xFFFFFFC0;
  }

  else
  {
    return *(a1 + 8);
  }
}

uint64_t CVHWAFeatureExtractionConfigSetEnableDynamicThresholding(uint64_t result, char a2)
{
  v3 = result;
  if (!result)
  {
    result = sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/product/AppleCVHWA/AppleCVHWA/src/CVHWAFeatureExtractionConfig.cpp", 214, "cfg != nullptr", 14, &unk_1E549A011, 0, sub_1E548FDE0);
    if (result)
    {
      abort();
    }
  }

  if (v3[512] == 1)
  {
    v3[288] = a2;
  }

  else
  {
    v3[76] = a2;
  }

  return result;
}

uint64_t CVHWAFeatureExtractionConfigGetEnableDynamicThresholding(uint64_t a1)
{
  if (!a1 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/product/AppleCVHWA/AppleCVHWA/src/CVHWAFeatureExtractionConfig.cpp", 226, "cfg != nullptr", 14, &unk_1E549A011, 0, sub_1E548FDE0))
  {
    abort();
  }

  v2 = 76;
  if (*(a1 + 512))
  {
    v2 = 288;
  }

  return *(a1 + v2);
}

uint64_t CVHWAFeatureExtractionConfigSetTargetNumberOfKeypoints(uint64_t result, unsigned int a2)
{
  v3 = result;
  if (!result)
  {
    result = sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/product/AppleCVHWA/AppleCVHWA/src/CVHWAFeatureExtractionConfig.cpp", 235, "cfg != nullptr", 14, &unk_1E549A011, 0, sub_1E548FDE0);
    if (result)
    {
      abort();
    }
  }

  if (*(v3 + 512) == 1)
  {
    *(v3 + 280) = a2;
  }

  else
  {
    *(v3 + 28) = a2;
  }

  return result;
}

uint64_t CVHWAFeatureExtractionConfigGetTargetNumberOfKeypoints(uint64_t a1)
{
  if (!a1 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/product/AppleCVHWA/AppleCVHWA/src/CVHWAFeatureExtractionConfig.cpp", 247, "cfg != nullptr", 14, &unk_1E549A011, 0, sub_1E548FDE0))
  {
    abort();
  }

  if (*(a1 + 512) == 1)
  {
    return *(a1 + 280);
  }

  else
  {
    return *(a1 + 28);
  }
}

uint64_t CVHWAFeatureExtractionConfigSetMaxNumberOfKeypoints(uint64_t result, unsigned int a2)
{
  v3 = result;
  if (!result)
  {
    result = sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/product/AppleCVHWA/AppleCVHWA/src/CVHWAFeatureExtractionConfig.cpp", 255, "cfg != nullptr", 14, &unk_1E549A011, 0, sub_1E548FDE0);
    if (result)
    {
      abort();
    }
  }

  if (*(v3 + 512) == 1)
  {
    *(v3 + 280) = a2;
  }

  else
  {
    *(v3 + 24) = a2;
  }

  return result;
}

uint64_t CVHWAFeatureExtractionConfigGetMaxNumberOfKeypoints(uint64_t a1)
{
  if (!a1 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/product/AppleCVHWA/AppleCVHWA/src/CVHWAFeatureExtractionConfig.cpp", 266, "cfg != nullptr", 14, &unk_1E549A011, 0, sub_1E548FDE0))
  {
    abort();
  }

  if (*(a1 + 512) == 1)
  {
    return *(a1 + 280);
  }

  else
  {
    return *(a1 + 24);
  }
}

uint64_t CVHWAFeatureExtractionConfigSetResponseThreshold(uint64_t result, int a2)
{
  v3 = result;
  if (!result)
  {
    result = sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/product/AppleCVHWA/AppleCVHWA/src/CVHWAFeatureExtractionConfig.cpp", 274, "cfg != nullptr", 14, &unk_1E549A011, 0, sub_1E548FDE0);
    if (result)
    {
      abort();
    }
  }

  if (*(v3 + 512) == 1)
  {
    *(v3 + 268) = a2;
  }

  else
  {
    *(v3 + 20) = a2;
  }

  return result;
}

uint64_t CVHWAFeatureExtractionConfigGetResponseThreshold(uint64_t a1)
{
  if (!a1 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/product/AppleCVHWA/AppleCVHWA/src/CVHWAFeatureExtractionConfig.cpp", 285, "cfg != nullptr", 14, &unk_1E549A011, 0, sub_1E548FDE0))
  {
    abort();
  }

  if (*(a1 + 512) == 1)
  {
    return *(a1 + 268);
  }

  else
  {
    return *(a1 + 20);
  }
}

uint64_t CVHWAFeatureExtractionConfigSetEnableParedGrid(uint64_t result, char a2)
{
  v3 = result;
  if (!result)
  {
    result = sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/product/AppleCVHWA/AppleCVHWA/src/CVHWAFeatureExtractionConfig.cpp", 293, "cfg != nullptr", 14, &unk_1E549A011, 0, sub_1E548FDE0);
    if (result)
    {
      abort();
    }
  }

  if (v3[512] == 1)
  {
    v3[328] = a2;
  }

  else
  {
    v3[42] = a2;
  }

  return result;
}

uint64_t CVHWAFeatureExtractionConfigGetEnableParedGrid(uint64_t a1)
{
  if (!a1 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/product/AppleCVHWA/AppleCVHWA/src/CVHWAFeatureExtractionConfig.cpp", 304, "cfg != nullptr", 14, &unk_1E549A011, 0, sub_1E548FDE0))
  {
    abort();
  }

  v2 = 42;
  if (*(a1 + 512))
  {
    v2 = 328;
  }

  return *(a1 + v2);
}

uint64_t CVHWAFeatureExtractionConfigSetDisablePostProcessing(uint64_t result, char a2)
{
  v3 = result;
  if (!result)
  {
    result = sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/product/AppleCVHWA/AppleCVHWA/src/CVHWAFeatureExtractionConfig.cpp", 312, "cfg != nullptr", 14, &unk_1E549A011, 0, sub_1E548FDE0);
    if (result)
    {
      abort();
    }
  }

  if (v3[512] == 1)
  {
    v3[212] = a2;
  }

  else
  {
    v3[78] = a2;
  }

  return result;
}

uint64_t CVHWAFeatureExtractionConfigGetDisablePostProcessing(uint64_t a1)
{
  if (!a1 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/product/AppleCVHWA/AppleCVHWA/src/CVHWAFeatureExtractionConfig.cpp", 325, "cfg != nullptr", 14, &unk_1E549A011, 0, sub_1E548FDE0))
  {
    abort();
  }

  v2 = 78;
  if (*(a1 + 512))
  {
    v2 = 212;
  }

  return *(a1 + v2);
}

void CVHWAFeatureExtractionConfigSetEnableOrientationAssignment(uint64_t a1, char a2)
{
  v30 = *MEMORY[0x1E69E9840];
  if (!a1 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/product/AppleCVHWA/AppleCVHWA/src/CVHWAFeatureExtractionConfig.cpp", 335, "cfg != nullptr", 14, &unk_1E549A011, 0, sub_1E548FDE0))
  {
    abort();
  }

  if (*(a1 + 512) == 1)
  {
    sub_1E53FA6B0(&v21);
    if (**(v21 + 56) <= 4)
    {
      v4 = *(v21 + 72);
      v5 = sub_1E53E3554(v21, "OSLogSurrogateAppender", 1, 0);
      if (v5 || v4)
      {
        v14[0] = &v21;
        v14[1] = std::chrono::steady_clock::now().__d_.__rep_;
        v14[2] = std::chrono::system_clock::now().__d_.__rep_;
        v15 = 4;
        v16 = "unknown file";
        v17 = 337;
        v19 = 0;
        v20 = 0;
        v18 = "unknown function";
        v6 = *(v21 + 39);
        if ((v6 & 0x8000000000000000) != 0)
        {
          v7 = *(v21 + 16);
          v6 = *(v21 + 24);
          if ((atomic_load_explicit(&qword_1ECFDBB40, memory_order_acquire) & 1) == 0)
          {
            goto LABEL_48;
          }
        }

        else
        {
          v7 = (v21 + 16);
          if ((atomic_load_explicit(&qword_1ECFDBB40, memory_order_acquire) & 1) == 0)
          {
LABEL_48:
            if (__cxa_guard_acquire(&qword_1ECFDBB40))
            {
              sub_1E548E6E4(&v22);
              sub_1E53F807C("com.apple.AppleCVHWA", &v22, &qword_1ECFDBB28);
              if (v24 == 1 && SHIBYTE(v23) < 0)
              {
                operator delete(v22);
              }

              __cxa_atexit(MEMORY[0x1E69E52C0], &qword_1ECFDBB28, &dword_1E53D8000);
              __cxa_guard_release(&qword_1ECFDBB40);
            }
          }
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

        *&v22 = os_log_create(v8, v7);
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
          memmove(&v22 + 8, v8, v9);
        }

        *(&v22 + v9 + 8) = 0;
        LOBYTE(v26) = 1;
        if (v6 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_1E53DF584();
        }

        if (v6 >= 0x17)
        {
          operator new();
        }

        v28 = v6;
        if (v6)
        {
          memmove(&v27, v7, v6);
        }

        *(&v27 + v6) = 0;
        v29 = 1;
        v10 = v22;
        if (v28 < 0)
        {
          operator delete(v27);
        }

        if (v26 == 1 && v25 < 0)
        {
          operator delete(*(&v22 + 1));
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
        LODWORD(v22) = 136315138;
        *(&v22 + 4) = "CVHWAFeatureExtractionConfigSetEnableOrientationAssignment";
        v12 = _os_log_send_and_compose_impl();
        if (v12)
        {
          free(v12);
        }

        if (v4)
        {
          sub_1E53DFB24(v14, "%s has no effect in swproxy", "CVHWAFeatureExtractionConfigSetEnableOrientationAssignment");
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
  }

  *(a1 + 44) = a2;
}

void sub_1E53FA554(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
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

void sub_1E53FA598(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  sub_1E53F8434(&a28);
  sub_1E53F8434(&a24);
  sub_1E53F816C(v28 - 176);
  sub_1E53EAA0C(&a14);
  _Unwind_Resume(a1);
}

void sub_1E53FA5CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, char a31)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  sub_1E53F816C(&a31);
  sub_1E53EAA0C(&a14);
  _Unwind_Resume(a1);
}

void sub_1E53FA600(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  MEMORY[0x1E6928650](v6, 0x10D0C40B950D02ALL);
  sub_1E53EAA0C(va);
  _Unwind_Resume(a1);
}

void sub_1E53FA62C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_1E53EAA0C(va);
  _Unwind_Resume(a1);
}

void sub_1E53FA640(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  if (a2)
  {
    sub_1E53DDDDC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E53FA6B0(void *a1)
{
  if ((atomic_load_explicit(&qword_1EE30C390, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE30C390))
  {
    sub_1E548B75C(&v4);
    sub_1E53F7C9C(__p, "cvhwa.vio");
    sub_1E53E3CC0(&v4, __p, &qword_1EE30C388);
    if (v3 < 0)
    {
      operator delete(__p[0]);
    }

    __cxa_atexit(nullsub_3, &qword_1EE30C388, &dword_1E53D8000);
    __cxa_guard_release(&qword_1EE30C390);
  }

  *a1 = qword_1EE30C388;
}

void sub_1E53FA770(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    __cxa_guard_abort(&qword_1EE30C390);
    _Unwind_Resume(a1);
  }

  __cxa_guard_abort(&qword_1EE30C390);
  _Unwind_Resume(a1);
}

uint64_t CVHWAFeatureExtractionConfigGetEnableOrientationAssignment(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  if (!a1 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/product/AppleCVHWA/AppleCVHWA/src/CVHWAFeatureExtractionConfig.cpp", 346, "cfg != nullptr", 14, &unk_1E549A011, 0, sub_1E548FDE0))
  {
    abort();
  }

  if (*(a1 + 512) == 1)
  {
    sub_1E53FA6B0(&v20);
    if (**(v20 + 56) <= 4)
    {
      v2 = *(v20 + 72);
      v3 = sub_1E53E3554(v20, "OSLogSurrogateAppender", 1, 0);
      if (v3 || v2)
      {
        v13[0] = &v20;
        v13[1] = std::chrono::steady_clock::now().__d_.__rep_;
        v13[2] = std::chrono::system_clock::now().__d_.__rep_;
        v14 = 4;
        v15 = "unknown file";
        v16 = 348;
        v18 = 0;
        v19 = 0;
        v17 = "unknown function";
        v4 = (v20 + 16);
        v5 = *(v20 + 39);
        if ((v5 & 0x8000000000000000) != 0)
        {
          v4 = *(v20 + 16);
          v5 = *(v20 + 24);
        }

        if ((atomic_load_explicit(&qword_1ECFDBB40, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ECFDBB40))
        {
          sub_1E548E6E4(&object);
          sub_1E53F807C("com.apple.AppleCVHWA", &object, &qword_1ECFDBB28);
          if (v23 == 1 && SHIBYTE(v22) < 0)
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

        v24 = v7;
        if (v7)
        {
          memmove(&object + 8, v6, v7);
        }

        *(&object + v7 + 8) = 0;
        LOBYTE(v25) = 1;
        if (v5 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_1E53DF584();
        }

        if (v5 >= 0x17)
        {
          operator new();
        }

        v27 = v5;
        if (v5)
        {
          memmove(&__p, v4, v5);
        }

        *(&__p + v5) = 0;
        v28 = 1;
        v8 = object;
        if (v27 < 0)
        {
          operator delete(__p);
        }

        if (v25 == 1 && v24 < 0)
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
        *(&object + 4) = "CVHWAFeatureExtractionConfigGetEnableOrientationAssignment";
        v10 = _os_log_send_and_compose_impl();
        if (v10)
        {
          free(v10);
        }

        if (v2)
        {
          sub_1E53DFB24(v13, "%s has no effect in swproxy", "CVHWAFeatureExtractionConfigGetEnableOrientationAssignment");
          sub_1E53EA844(v13);
        }

        sub_1E53EA844(v13);
        v11 = v19;
        if (v19 && !atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v11->__on_zero_shared)(v11);
          std::__shared_weak_count::__release_weak(v11);
        }
      }
    }
  }

  return *(a1 + 44);
}

void sub_1E53FB100(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36, char a37)
{
  if (a37 == 1 && a36 < 0)
  {
    operator delete(__p);
  }

  __cxa_guard_abort(&qword_1ECFDBB40);
  sub_1E53EAA0C(&a12);
  _Unwind_Resume(a1);
}

void sub_1E53FB144(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  sub_1E53F8434(&a26);
  sub_1E53F8434(&a22);
  sub_1E53F816C(&a31);
  sub_1E53EAA0C(&a12);
  _Unwind_Resume(a1);
}

void sub_1E53FB178(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, char a29)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  sub_1E53F816C(&a29);
  sub_1E53EAA0C(&a12);
  _Unwind_Resume(a1);
}

void sub_1E53FB1AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  MEMORY[0x1E6928650](v4, 0x10D0C40B950D02ALL);
  sub_1E53EAA0C(va);
  _Unwind_Resume(a1);
}

void sub_1E53FB1D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1E53EAA0C(va);
  _Unwind_Resume(a1);
}

void sub_1E53FB1EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *object, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a2)
  {
    sub_1E53DDDDC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void CVHWAFeatureExtractionConfigSetDetectionFlow(uint64_t a1, char a2)
{
  v30 = *MEMORY[0x1E69E9840];
  if (!a1 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/product/AppleCVHWA/AppleCVHWA/src/CVHWAFeatureExtractionConfig.cpp", 357, "cfg != nullptr", 14, &unk_1E549A011, 0, sub_1E548FDE0))
  {
    abort();
  }

  if (*(a1 + 512) == 1)
  {
    sub_1E53FA6B0(&v21);
    if (**(v21 + 56) <= 4)
    {
      v4 = *(v21 + 72);
      v5 = sub_1E53E3554(v21, "OSLogSurrogateAppender", 1, 0);
      if (v5 || v4)
      {
        v14[0] = &v21;
        v14[1] = std::chrono::steady_clock::now().__d_.__rep_;
        v14[2] = std::chrono::system_clock::now().__d_.__rep_;
        v15 = 4;
        v16 = "unknown file";
        v17 = 359;
        v19 = 0;
        v20 = 0;
        v18 = "unknown function";
        v6 = *(v21 + 39);
        if ((v6 & 0x8000000000000000) != 0)
        {
          v7 = *(v21 + 16);
          v6 = *(v21 + 24);
          if ((atomic_load_explicit(&qword_1ECFDBB40, memory_order_acquire) & 1) == 0)
          {
            goto LABEL_48;
          }
        }

        else
        {
          v7 = (v21 + 16);
          if ((atomic_load_explicit(&qword_1ECFDBB40, memory_order_acquire) & 1) == 0)
          {
LABEL_48:
            if (__cxa_guard_acquire(&qword_1ECFDBB40))
            {
              sub_1E548E6E4(&v22);
              sub_1E53F807C("com.apple.AppleCVHWA", &v22, &qword_1ECFDBB28);
              if (v24 == 1 && SHIBYTE(v23) < 0)
              {
                operator delete(v22);
              }

              __cxa_atexit(MEMORY[0x1E69E52C0], &qword_1ECFDBB28, &dword_1E53D8000);
              __cxa_guard_release(&qword_1ECFDBB40);
            }
          }
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

        *&v22 = os_log_create(v8, v7);
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
          memmove(&v22 + 8, v8, v9);
        }

        *(&v22 + v9 + 8) = 0;
        LOBYTE(v26) = 1;
        if (v6 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_1E53DF584();
        }

        if (v6 >= 0x17)
        {
          operator new();
        }

        v28 = v6;
        if (v6)
        {
          memmove(&v27, v7, v6);
        }

        *(&v27 + v6) = 0;
        v29 = 1;
        v10 = v22;
        if (v28 < 0)
        {
          operator delete(v27);
        }

        if (v26 == 1 && v25 < 0)
        {
          operator delete(*(&v22 + 1));
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
        LODWORD(v22) = 136315138;
        *(&v22 + 4) = "CVHWAFeatureExtractionConfigSetDetectionFlow";
        v12 = _os_log_send_and_compose_impl();
        if (v12)
        {
          free(v12);
        }

        if (v4)
        {
          sub_1E53DFB24(v14, "%s has no effect in swproxy", "CVHWAFeatureExtractionConfigSetDetectionFlow");
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
  }

  *(a1 + 68) = a2;
}

void sub_1E53FBBAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
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

void sub_1E53FBBF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  sub_1E53F8434(&a28);
  sub_1E53F8434(&a24);
  sub_1E53F816C(v28 - 176);
  sub_1E53EAA0C(&a14);
  _Unwind_Resume(a1);
}

void sub_1E53FBC24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, char a31)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  sub_1E53F816C(&a31);
  sub_1E53EAA0C(&a14);
  _Unwind_Resume(a1);
}

void sub_1E53FBC58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  MEMORY[0x1E6928650](v6, 0x10D0C40B950D02ALL);
  sub_1E53EAA0C(va);
  _Unwind_Resume(a1);
}

void sub_1E53FBC84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_1E53EAA0C(va);
  _Unwind_Resume(a1);
}

void sub_1E53FBC98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  if (a2)
  {
    sub_1E53DDDDC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CVHWAFeatureExtractionConfigGetDetectionFlow(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  if (!a1 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/product/AppleCVHWA/AppleCVHWA/src/CVHWAFeatureExtractionConfig.cpp", 368, "cfg != nullptr", 14, &unk_1E549A011, 0, sub_1E548FDE0))
  {
    abort();
  }

  if (*(a1 + 512) == 1)
  {
    sub_1E53FA6B0(&v20);
    if (**(v20 + 56) <= 4)
    {
      v2 = *(v20 + 72);
      v3 = sub_1E53E3554(v20, "OSLogSurrogateAppender", 1, 0);
      if (v3 || v2)
      {
        v13[0] = &v20;
        v13[1] = std::chrono::steady_clock::now().__d_.__rep_;
        v13[2] = std::chrono::system_clock::now().__d_.__rep_;
        v14 = 4;
        v15 = "unknown file";
        v16 = 370;
        v18 = 0;
        v19 = 0;
        v17 = "unknown function";
        v4 = (v20 + 16);
        v5 = *(v20 + 39);
        if ((v5 & 0x8000000000000000) != 0)
        {
          v4 = *(v20 + 16);
          v5 = *(v20 + 24);
        }

        if ((atomic_load_explicit(&qword_1ECFDBB40, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ECFDBB40))
        {
          sub_1E548E6E4(&object);
          sub_1E53F807C("com.apple.AppleCVHWA", &object, &qword_1ECFDBB28);
          if (v23 == 1 && SHIBYTE(v22) < 0)
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

        v24 = v7;
        if (v7)
        {
          memmove(&object + 8, v6, v7);
        }

        *(&object + v7 + 8) = 0;
        LOBYTE(v25) = 1;
        if (v5 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_1E53DF584();
        }

        if (v5 >= 0x17)
        {
          operator new();
        }

        v27 = v5;
        if (v5)
        {
          memmove(&__p, v4, v5);
        }

        *(&__p + v5) = 0;
        v28 = 1;
        v8 = object;
        if (v27 < 0)
        {
          operator delete(__p);
        }

        if (v25 == 1 && v24 < 0)
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
        *(&object + 4) = "CVHWAFeatureExtractionConfigGetDetectionFlow";
        v10 = _os_log_send_and_compose_impl();
        if (v10)
        {
          free(v10);
        }

        if (v2)
        {
          sub_1E53DFB24(v13, "%s has no effect in swproxy", "CVHWAFeatureExtractionConfigGetDetectionFlow");
          sub_1E53EA844(v13);
        }

        sub_1E53EA844(v13);
        v11 = v19;
        if (v19 && !atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v11->__on_zero_shared)(v11);
          std::__shared_weak_count::__release_weak(v11);
        }
      }
    }
  }

  return *(a1 + 68);
}

void sub_1E53FC638(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36, char a37)
{
  if (a37 == 1 && a36 < 0)
  {
    operator delete(__p);
  }

  __cxa_guard_abort(&qword_1ECFDBB40);
  sub_1E53EAA0C(&a12);
  _Unwind_Resume(a1);
}

void sub_1E53FC67C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  sub_1E53F8434(&a26);
  sub_1E53F8434(&a22);
  sub_1E53F816C(&a31);
  sub_1E53EAA0C(&a12);
  _Unwind_Resume(a1);
}

void sub_1E53FC6B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, char a29)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  sub_1E53F816C(&a29);
  sub_1E53EAA0C(&a12);
  _Unwind_Resume(a1);
}

void sub_1E53FC6E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  MEMORY[0x1E6928650](v4, 0x10D0C40B950D02ALL);
  sub_1E53EAA0C(va);
  _Unwind_Resume(a1);
}

void sub_1E53FC710(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1E53EAA0C(va);
  _Unwind_Resume(a1);
}

void sub_1E53FC724(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *object, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a2)
  {
    sub_1E53DDDDC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void CVHWAFeatureExtractionConfigSetMaxImageSize(uint64_t a1, int a2, int a3)
{
  v32 = *MEMORY[0x1E69E9840];
  if (!a1 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/product/AppleCVHWA/AppleCVHWA/src/CVHWAFeatureExtractionConfig.cpp", 379, "cfg != nullptr", 14, &unk_1E549A011, 0, sub_1E548FDE0))
  {
    abort();
  }

  if (*(a1 + 512) == 1)
  {
    sub_1E53FA6B0(&v23);
    if (**(v23 + 56) <= 4)
    {
      v6 = *(v23 + 72);
      v7 = sub_1E53E3554(v23, "OSLogSurrogateAppender", 1, 0);
      if (v7 || v6)
      {
        v16[0] = &v23;
        v16[1] = std::chrono::steady_clock::now().__d_.__rep_;
        v16[2] = std::chrono::system_clock::now().__d_.__rep_;
        v17 = 4;
        v18 = "unknown file";
        v19 = 381;
        v21 = 0;
        v22 = 0;
        v20 = "unknown function";
        v8 = *(v23 + 39);
        if ((v8 & 0x8000000000000000) != 0)
        {
          v9 = *(v23 + 16);
          v8 = *(v23 + 24);
          if ((atomic_load_explicit(&qword_1ECFDBB40, memory_order_acquire) & 1) == 0)
          {
            goto LABEL_48;
          }
        }

        else
        {
          v9 = (v23 + 16);
          if ((atomic_load_explicit(&qword_1ECFDBB40, memory_order_acquire) & 1) == 0)
          {
LABEL_48:
            if (__cxa_guard_acquire(&qword_1ECFDBB40))
            {
              sub_1E548E6E4(&v24);
              sub_1E53F807C("com.apple.AppleCVHWA", &v24, &qword_1ECFDBB28);
              if (v26 == 1 && SHIBYTE(v25) < 0)
              {
                operator delete(v24);
              }

              __cxa_atexit(MEMORY[0x1E69E52C0], &qword_1ECFDBB28, &dword_1E53D8000);
              __cxa_guard_release(&qword_1ECFDBB40);
            }
          }
        }

        if (byte_1ECFDBB3F >= 0)
        {
          v10 = &qword_1ECFDBB28;
        }

        else
        {
          v10 = qword_1ECFDBB28;
        }

        if (byte_1ECFDBB3F >= 0)
        {
          v11 = byte_1ECFDBB3F;
        }

        else
        {
          v11 = unk_1ECFDBB30;
        }

        *&v24 = os_log_create(v10, v9);
        if (v11 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_1E53DF584();
        }

        if (v11 >= 0x17)
        {
          operator new();
        }

        v27 = v11;
        if (v11)
        {
          memmove(&v24 + 8, v10, v11);
        }

        *(&v24 + v11 + 8) = 0;
        LOBYTE(v28) = 1;
        if (v8 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_1E53DF584();
        }

        if (v8 >= 0x17)
        {
          operator new();
        }

        v30 = v8;
        if (v8)
        {
          memmove(&v29, v9, v8);
        }

        *(&v29 + v8) = 0;
        v31 = 1;
        v12 = v24;
        if (v30 < 0)
        {
          operator delete(v29);
        }

        if (v28 == 1 && v27 < 0)
        {
          operator delete(*(&v24 + 1));
        }

        if (v12)
        {
          os_release(v12);
        }

        if (v7 && *(v7 + 24))
        {
          v13 = _os_log_pack_size();
          operator new(v13, 8uLL);
          operator new();
        }

        os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
        LODWORD(v24) = 136315138;
        *(&v24 + 4) = "CVHWAFeatureExtractionConfigSetMaxImageSize";
        v14 = _os_log_send_and_compose_impl();
        if (v14)
        {
          free(v14);
        }

        if (v6)
        {
          sub_1E53DFB24(v16, "%s has no effect in swproxy", "CVHWAFeatureExtractionConfigSetMaxImageSize");
          sub_1E53EA844(v16);
        }

        sub_1E53EA844(v16);
        v15 = v22;
        if (v22 && !atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v15->__on_zero_shared)(v15);
          std::__shared_weak_count::__release_weak(v15);
        }
      }
    }
  }

  *(a1 + 56) = a2;
  *(a1 + 60) = a3;
}

void sub_1E53FD0F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
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

void sub_1E53FD13C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  sub_1E53F8434(&a28);
  sub_1E53F8434(&a24);
  sub_1E53F816C(v28 - 176);
  sub_1E53EAA0C(&a14);
  _Unwind_Resume(a1);
}

void sub_1E53FD170(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, char a31)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  sub_1E53F816C(&a31);
  sub_1E53EAA0C(&a14);
  _Unwind_Resume(a1);
}

void sub_1E53FD1A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  MEMORY[0x1E6928650](v6, 0x10D0C40B950D02ALL);
  sub_1E53EAA0C(va);
  _Unwind_Resume(a1);
}

void sub_1E53FD1D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_1E53EAA0C(va);
  _Unwind_Resume(a1);
}

void sub_1E53FD1E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  if (a2)
  {
    sub_1E53DDDDC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CVHWAFeatureExtractionConfigGetMaxWidth(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  if (!a1 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/product/AppleCVHWA/AppleCVHWA/src/CVHWAFeatureExtractionConfig.cpp", 389, "cfg != nullptr", 14, &unk_1E549A011, 0, sub_1E548FDE0))
  {
    abort();
  }

  if (*(a1 + 512) == 1)
  {
    sub_1E53FA6B0(&v20);
    if (**(v20 + 56) <= 4)
    {
      v2 = *(v20 + 72);
      v3 = sub_1E53E3554(v20, "OSLogSurrogateAppender", 1, 0);
      if (v3 || v2)
      {
        v13[0] = &v20;
        v13[1] = std::chrono::steady_clock::now().__d_.__rep_;
        v13[2] = std::chrono::system_clock::now().__d_.__rep_;
        v14 = 4;
        v15 = "unknown file";
        v16 = 391;
        v18 = 0;
        v19 = 0;
        v17 = "unknown function";
        v4 = (v20 + 16);
        v5 = *(v20 + 39);
        if ((v5 & 0x8000000000000000) != 0)
        {
          v4 = *(v20 + 16);
          v5 = *(v20 + 24);
        }

        if ((atomic_load_explicit(&qword_1ECFDBB40, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ECFDBB40))
        {
          sub_1E548E6E4(&object);
          sub_1E53F807C("com.apple.AppleCVHWA", &object, &qword_1ECFDBB28);
          if (v23 == 1 && SHIBYTE(v22) < 0)
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

        v24 = v7;
        if (v7)
        {
          memmove(&object + 8, v6, v7);
        }

        *(&object + v7 + 8) = 0;
        LOBYTE(v25) = 1;
        if (v5 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_1E53DF584();
        }

        if (v5 >= 0x17)
        {
          operator new();
        }

        v27 = v5;
        if (v5)
        {
          memmove(&__p, v4, v5);
        }

        *(&__p + v5) = 0;
        v28 = 1;
        v8 = object;
        if (v27 < 0)
        {
          operator delete(__p);
        }

        if (v25 == 1 && v24 < 0)
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
        *(&object + 4) = "CVHWAFeatureExtractionConfigGetMaxWidth";
        v10 = _os_log_send_and_compose_impl();
        if (v10)
        {
          free(v10);
        }

        if (v2)
        {
          sub_1E53DFB24(v13, "%s has no effect in swproxy", "CVHWAFeatureExtractionConfigGetMaxWidth");
          sub_1E53EA844(v13);
        }

        sub_1E53EA844(v13);
        v11 = v19;
        if (v19 && !atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v11->__on_zero_shared)(v11);
          std::__shared_weak_count::__release_weak(v11);
        }
      }
    }
  }

  return *(a1 + 56);
}

void sub_1E53FDB84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36, char a37)
{
  if (a37 == 1 && a36 < 0)
  {
    operator delete(__p);
  }

  __cxa_guard_abort(&qword_1ECFDBB40);
  sub_1E53EAA0C(&a12);
  _Unwind_Resume(a1);
}

void sub_1E53FDBC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  sub_1E53F8434(&a26);
  sub_1E53F8434(&a22);
  sub_1E53F816C(&a31);
  sub_1E53EAA0C(&a12);
  _Unwind_Resume(a1);
}

void sub_1E53FDBFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, char a29)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  sub_1E53F816C(&a29);
  sub_1E53EAA0C(&a12);
  _Unwind_Resume(a1);
}

void sub_1E53FDC30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  MEMORY[0x1E6928650](v4, 0x10D0C40B950D02ALL);
  sub_1E53EAA0C(va);
  _Unwind_Resume(a1);
}

void sub_1E53FDC5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1E53EAA0C(va);
  _Unwind_Resume(a1);
}

void sub_1E53FDC70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *object, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a2)
  {
    sub_1E53DDDDC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CVHWAFeatureExtractionConfigGetMaxHeight(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  if (!a1 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/product/AppleCVHWA/AppleCVHWA/src/CVHWAFeatureExtractionConfig.cpp", 398, "cfg != nullptr", 14, &unk_1E549A011, 0, sub_1E548FDE0))
  {
    abort();
  }

  if (*(a1 + 512) == 1)
  {
    sub_1E53FA6B0(&v20);
    if (**(v20 + 56) <= 4)
    {
      v2 = *(v20 + 72);
      v3 = sub_1E53E3554(v20, "OSLogSurrogateAppender", 1, 0);
      if (v3 || v2)
      {
        v13[0] = &v20;
        v13[1] = std::chrono::steady_clock::now().__d_.__rep_;
        v13[2] = std::chrono::system_clock::now().__d_.__rep_;
        v14 = 4;
        v15 = "unknown file";
        v16 = 400;
        v18 = 0;
        v19 = 0;
        v17 = "unknown function";
        v4 = (v20 + 16);
        v5 = *(v20 + 39);
        if ((v5 & 0x8000000000000000) != 0)
        {
          v4 = *(v20 + 16);
          v5 = *(v20 + 24);
        }

        if ((atomic_load_explicit(&qword_1ECFDBB40, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ECFDBB40))
        {
          sub_1E548E6E4(&object);
          sub_1E53F807C("com.apple.AppleCVHWA", &object, &qword_1ECFDBB28);
          if (v23 == 1 && SHIBYTE(v22) < 0)
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

        v24 = v7;
        if (v7)
        {
          memmove(&object + 8, v6, v7);
        }

        *(&object + v7 + 8) = 0;
        LOBYTE(v25) = 1;
        if (v5 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_1E53DF584();
        }

        if (v5 >= 0x17)
        {
          operator new();
        }

        v27 = v5;
        if (v5)
        {
          memmove(&__p, v4, v5);
        }

        *(&__p + v5) = 0;
        v28 = 1;
        v8 = object;
        if (v27 < 0)
        {
          operator delete(__p);
        }

        if (v25 == 1 && v24 < 0)
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
        *(&object + 4) = "CVHWAFeatureExtractionConfigGetMaxHeight";
        v10 = _os_log_send_and_compose_impl();
        if (v10)
        {
          free(v10);
        }

        if (v2)
        {
          sub_1E53DFB24(v13, "%s has no effect in swproxy", "CVHWAFeatureExtractionConfigGetMaxHeight");
          sub_1E53EA844(v13);
        }

        sub_1E53EA844(v13);
        v11 = v19;
        if (v19 && !atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v11->__on_zero_shared)(v11);
          std::__shared_weak_count::__release_weak(v11);
        }
      }
    }
  }

  return *(a1 + 60);
}

void sub_1E53FE610(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36, char a37)
{
  if (a37 == 1 && a36 < 0)
  {
    operator delete(__p);
  }

  __cxa_guard_abort(&qword_1ECFDBB40);
  sub_1E53EAA0C(&a12);
  _Unwind_Resume(a1);
}

void sub_1E53FE654(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  sub_1E53F8434(&a26);
  sub_1E53F8434(&a22);
  sub_1E53F816C(&a31);
  sub_1E53EAA0C(&a12);
  _Unwind_Resume(a1);
}

void sub_1E53FE688(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, char a29)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  sub_1E53F816C(&a29);
  sub_1E53EAA0C(&a12);
  _Unwind_Resume(a1);
}

void sub_1E53FE6BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  MEMORY[0x1E6928650](v4, 0x10D0C40B950D02ALL);
  sub_1E53EAA0C(va);
  _Unwind_Resume(a1);
}

void sub_1E53FE6E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1E53EAA0C(va);
  _Unwind_Resume(a1);
}

void sub_1E53FE6FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *object, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a2)
  {
    sub_1E53DDDDC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void CVHWAFeatureExtractionConfigSetNumberOfOctaves(uint64_t a1, __int16 a2)
{
  v30 = *MEMORY[0x1E69E9840];
  if (!a1 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/product/AppleCVHWA/AppleCVHWA/src/CVHWAFeatureExtractionConfig.cpp", 408, "cfg != nullptr", 14, &unk_1E549A011, 0, sub_1E548FDE0))
  {
    abort();
  }

  if (*(a1 + 512) == 1)
  {
    sub_1E53FA6B0(&v21);
    if (**(v21 + 56) <= 4)
    {
      v4 = *(v21 + 72);
      v5 = sub_1E53E3554(v21, "OSLogSurrogateAppender", 1, 0);
      if (v5 || v4)
      {
        v14[0] = &v21;
        v14[1] = std::chrono::steady_clock::now().__d_.__rep_;
        v14[2] = std::chrono::system_clock::now().__d_.__rep_;
        v15 = 4;
        v16 = "unknown file";
        v17 = 410;
        v19 = 0;
        v20 = 0;
        v18 = "unknown function";
        v6 = *(v21 + 39);
        if ((v6 & 0x8000000000000000) != 0)
        {
          v7 = *(v21 + 16);
          v6 = *(v21 + 24);
          if ((atomic_load_explicit(&qword_1ECFDBB40, memory_order_acquire) & 1) == 0)
          {
            goto LABEL_48;
          }
        }

        else
        {
          v7 = (v21 + 16);
          if ((atomic_load_explicit(&qword_1ECFDBB40, memory_order_acquire) & 1) == 0)
          {
LABEL_48:
            if (__cxa_guard_acquire(&qword_1ECFDBB40))
            {
              sub_1E548E6E4(&v22);
              sub_1E53F807C("com.apple.AppleCVHWA", &v22, &qword_1ECFDBB28);
              if (v24 == 1 && SHIBYTE(v23) < 0)
              {
                operator delete(v22);
              }

              __cxa_atexit(MEMORY[0x1E69E52C0], &qword_1ECFDBB28, &dword_1E53D8000);
              __cxa_guard_release(&qword_1ECFDBB40);
            }
          }
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

        *&v22 = os_log_create(v8, v7);
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
          memmove(&v22 + 8, v8, v9);
        }

        *(&v22 + v9 + 8) = 0;
        LOBYTE(v26) = 1;
        if (v6 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_1E53DF584();
        }

        if (v6 >= 0x17)
        {
          operator new();
        }

        v28 = v6;
        if (v6)
        {
          memmove(&v27, v7, v6);
        }

        *(&v27 + v6) = 0;
        v29 = 1;
        v10 = v22;
        if (v28 < 0)
        {
          operator delete(v27);
        }

        if (v26 == 1 && v25 < 0)
        {
          operator delete(*(&v22 + 1));
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
        LODWORD(v22) = 136315138;
        *(&v22 + 4) = "CVHWAFeatureExtractionConfigSetNumberOfOctaves";
        v12 = _os_log_send_and_compose_impl();
        if (v12)
        {
          free(v12);
        }

        if (v4)
        {
          sub_1E53DFB24(v14, "%s has no effect in swproxy", "CVHWAFeatureExtractionConfigSetNumberOfOctaves");
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
  }

  *(a1 + 50) = a2;
}

void sub_1E53FF0BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
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

void sub_1E53FF100(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  sub_1E53F8434(&a28);
  sub_1E53F8434(&a24);
  sub_1E53F816C(v28 - 176);
  sub_1E53EAA0C(&a14);
  _Unwind_Resume(a1);
}

void sub_1E53FF134(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, char a31)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  sub_1E53F816C(&a31);
  sub_1E53EAA0C(&a14);
  _Unwind_Resume(a1);
}

void sub_1E53FF168(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  MEMORY[0x1E6928650](v6, 0x10D0C40B950D02ALL);
  sub_1E53EAA0C(va);
  _Unwind_Resume(a1);
}

void sub_1E53FF194(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_1E53EAA0C(va);
  _Unwind_Resume(a1);
}

void sub_1E53FF1A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  if (a2)
  {
    sub_1E53DDDDC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CVHWAFeatureExtractionConfigGetNumberOfOctaves(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  if (!a1 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/product/AppleCVHWA/AppleCVHWA/src/CVHWAFeatureExtractionConfig.cpp", 418, "cfg != nullptr", 14, &unk_1E549A011, 0, sub_1E548FDE0))
  {
    abort();
  }

  if (*(a1 + 512) == 1)
  {
    sub_1E53FA6B0(&v20);
    if (**(v20 + 56) <= 4)
    {
      v2 = *(v20 + 72);
      v3 = sub_1E53E3554(v20, "OSLogSurrogateAppender", 1, 0);
      if (v3 || v2)
      {
        v13[0] = &v20;
        v13[1] = std::chrono::steady_clock::now().__d_.__rep_;
        v13[2] = std::chrono::system_clock::now().__d_.__rep_;
        v14 = 4;
        v15 = "unknown file";
        v16 = 420;
        v18 = 0;
        v19 = 0;
        v17 = "unknown function";
        v4 = (v20 + 16);
        v5 = *(v20 + 39);
        if ((v5 & 0x8000000000000000) != 0)
        {
          v4 = *(v20 + 16);
          v5 = *(v20 + 24);
        }

        if ((atomic_load_explicit(&qword_1ECFDBB40, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ECFDBB40))
        {
          sub_1E548E6E4(&object);
          sub_1E53F807C("com.apple.AppleCVHWA", &object, &qword_1ECFDBB28);
          if (v23 == 1 && SHIBYTE(v22) < 0)
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

        v24 = v7;
        if (v7)
        {
          memmove(&object + 8, v6, v7);
        }

        *(&object + v7 + 8) = 0;
        LOBYTE(v25) = 1;
        if (v5 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_1E53DF584();
        }

        if (v5 >= 0x17)
        {
          operator new();
        }

        v27 = v5;
        if (v5)
        {
          memmove(&__p, v4, v5);
        }

        *(&__p + v5) = 0;
        v28 = 1;
        v8 = object;
        if (v27 < 0)
        {
          operator delete(__p);
        }

        if (v25 == 1 && v24 < 0)
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
        *(&object + 4) = "CVHWAFeatureExtractionConfigGetNumberOfOctaves";
        v10 = _os_log_send_and_compose_impl();
        if (v10)
        {
          free(v10);
        }

        if (v2)
        {
          sub_1E53DFB24(v13, "%s has no effect in swproxy", "CVHWAFeatureExtractionConfigGetNumberOfOctaves");
          sub_1E53EA844(v13);
        }

        sub_1E53EA844(v13);
        v11 = v19;
        if (v19 && !atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v11->__on_zero_shared)(v11);
          std::__shared_weak_count::__release_weak(v11);
        }
      }
    }
  }

  return *(a1 + 50);
}

void sub_1E53FFB48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36, char a37)
{
  if (a37 == 1 && a36 < 0)
  {
    operator delete(__p);
  }

  __cxa_guard_abort(&qword_1ECFDBB40);
  sub_1E53EAA0C(&a12);
  _Unwind_Resume(a1);
}

void sub_1E53FFB8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  sub_1E53F8434(&a26);
  sub_1E53F8434(&a22);
  sub_1E53F816C(&a31);
  sub_1E53EAA0C(&a12);
  _Unwind_Resume(a1);
}

void sub_1E53FFBC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, char a29)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  sub_1E53F816C(&a29);
  sub_1E53EAA0C(&a12);
  _Unwind_Resume(a1);
}

void sub_1E53FFBF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  MEMORY[0x1E6928650](v4, 0x10D0C40B950D02ALL);
  sub_1E53EAA0C(va);
  _Unwind_Resume(a1);
}

void sub_1E53FFC20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1E53EAA0C(va);
  _Unwind_Resume(a1);
}

void sub_1E53FFC34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *object, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a2)
  {
    sub_1E53DDDDC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CVHWAFeatureExtractionConfigSetNumberOfBinsXYZ(uint64_t result, unsigned int a2, unsigned int a3, unsigned int a4)
{
  v7 = result;
  if (!result)
  {
    result = sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/product/AppleCVHWA/AppleCVHWA/src/CVHWAFeatureExtractionConfig.cpp", 435, "cfg != nullptr", 14, &unk_1E549A011, 0, sub_1E548FDE0);
    if (result)
    {
      abort();
    }
  }

  if (*(v7 + 512) == 1)
  {
    *(v7 + 304) = a2;
    *(v7 + 312) = a3;
    *(v7 + 320) = a4;
  }

  else
  {
    *(v7 + 32) = a2;
    *(v7 + 34) = a3;
    *(v7 + 36) = a4;
  }

  return result;
}

uint64_t CVHWAFeatureExtractionConfigGetNumberOfBinsX(uint64_t a1)
{
  if (!a1 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/product/AppleCVHWA/AppleCVHWA/src/CVHWAFeatureExtractionConfig.cpp", 450, "cfg != nullptr", 14, &unk_1E549A011, 0, sub_1E548FDE0))
  {
    abort();
  }

  if (*(a1 + 512) == 1)
  {
    return *(a1 + 304);
  }

  else
  {
    return *(a1 + 32);
  }
}

uint64_t CVHWAFeatureExtractionConfigGetNumberOfBinsY(uint64_t a1)
{
  if (!a1 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/product/AppleCVHWA/AppleCVHWA/src/CVHWAFeatureExtractionConfig.cpp", 458, "cfg != nullptr", 14, &unk_1E549A011, 0, sub_1E548FDE0))
  {
    abort();
  }

  if (*(a1 + 512) == 1)
  {
    return *(a1 + 312);
  }

  else
  {
    return *(a1 + 34);
  }
}

uint64_t CVHWAFeatureExtractionConfigGetNumberOfBinsZ(uint64_t a1)
{
  if (!a1 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/product/AppleCVHWA/AppleCVHWA/src/CVHWAFeatureExtractionConfig.cpp", 466, "cfg != nullptr", 14, &unk_1E549A011, 0, sub_1E548FDE0))
  {
    abort();
  }

  if (*(a1 + 512) == 1)
  {
    return *(a1 + 320);
  }

  else
  {
    return *(a1 + 36);
  }
}

uint64_t CVHWAFeatureExtractionConfigSetNumberOfBinsHardwareXY(uint64_t result, unsigned int a2, unsigned int a3)
{
  v5 = result;
  if (!result)
  {
    result = sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/product/AppleCVHWA/AppleCVHWA/src/CVHWAFeatureExtractionConfig.cpp", 475, "cfg != nullptr", 14, &unk_1E549A011, 0, sub_1E548FDE0);
    if (result)
    {
      abort();
    }
  }

  if (*(v5 + 512) == 1)
  {
    *(v5 + 304) = a2;
    *(v5 + 312) = a3;
  }

  else
  {
    *(v5 + 38) = a2;
    *(v5 + 40) = a3;
  }

  return result;
}

uint64_t CVHWAFeatureExtractionConfigGetNumberOfBinsHardwareX(uint64_t a1)
{
  if (!a1 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/product/AppleCVHWA/AppleCVHWA/src/CVHWAFeatureExtractionConfig.cpp", 488, "cfg != nullptr", 14, &unk_1E549A011, 0, sub_1E548FDE0))
  {
    abort();
  }

  if (*(a1 + 512) == 1)
  {
    return *(a1 + 304);
  }

  else
  {
    return *(a1 + 38);
  }
}

uint64_t CVHWAFeatureExtractionConfigGetNumberOfBinsHardwareY(uint64_t a1)
{
  if (!a1 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/product/AppleCVHWA/AppleCVHWA/src/CVHWAFeatureExtractionConfig.cpp", 496, "cfg != nullptr", 14, &unk_1E549A011, 0, sub_1E548FDE0))
  {
    abort();
  }

  if (*(a1 + 512) == 1)
  {
    return *(a1 + 312);
  }

  else
  {
    return *(a1 + 40);
  }
}

uint64_t CVHWAFeatureExtractionConfigSetExtraTestEnable(uint64_t result, char a2)
{
  v3 = result;
  if (!result)
  {
    result = sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/product/AppleCVHWA/AppleCVHWA/src/CVHWAFeatureExtractionConfig.cpp", 504, "cfg != nullptr", 14, &unk_1E549A011, 0, sub_1E548FDE0);
    if (result)
    {
      abort();
    }
  }

  if (v3[512] == 1)
  {
    v3[264] = a2;
  }

  else
  {
    v3[43] = a2;
  }

  return result;
}

uint64_t CVHWAFeatureExtractionConfigGetExtraTestEnable(uint64_t a1)
{
  if (!a1 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/product/AppleCVHWA/AppleCVHWA/src/CVHWAFeatureExtractionConfig.cpp", 514, "cfg != nullptr", 14, &unk_1E549A011, 0, sub_1E548FDE0))
  {
    abort();
  }

  v2 = 43;
  if (*(a1 + 512))
  {
    v2 = 264;
  }

  return *(a1 + v2);
}

uint64_t CVHWAFeatureExtractionConfigSetExtraTestThreshold(uint64_t result, int a2)
{
  v3 = result;
  if (!result)
  {
    result = sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/product/AppleCVHWA/AppleCVHWA/src/CVHWAFeatureExtractionConfig.cpp", 523, "cfg != nullptr", 14, &unk_1E549A011, 0, sub_1E548FDE0);
    if (result)
    {
      abort();
    }
  }

  if (*(v3 + 512) == 1)
  {
    *(v3 + 272) = a2;
  }

  else
  {
    *(v3 + 46) = a2;
  }

  return result;
}

uint64_t CVHWAFeatureExtractionConfigGetExtraTestThreshold(uint64_t a1)
{
  if (!a1 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/product/AppleCVHWA/AppleCVHWA/src/CVHWAFeatureExtractionConfig.cpp", 534, "cfg != nullptr", 14, &unk_1E549A011, 0, sub_1E548FDE0))
  {
    abort();
  }

  if (*(a1 + 512) == 1)
  {
    return *(a1 + 272);
  }

  else
  {
    return *(a1 + 46);
  }
}

void CVHWAFeatureExtractionConfigSetRoi(uint64_t a1, __int16 a2, __int16 a3, __int16 a4, __int16 a5)
{
  v37 = *MEMORY[0x1E69E9840];
  if (!a1 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/product/AppleCVHWA/AppleCVHWA/src/CVHWAFeatureExtractionConfig.cpp", 544, "cfg != nullptr", 14, &unk_1E549A011, 0, sub_1E548FDE0))
  {
    abort();
  }

  if (*(a1 + 512) == 1)
  {
    sub_1E53FA6B0(&v28);
    if (**(v28 + 56) <= 4)
    {
      v10 = *(v28 + 72);
      v11 = sub_1E53E3554(v28, "OSLogSurrogateAppender", 1, 0);
      if (v11 || v10)
      {
        v20 = a5;
        v21[0] = &v28;
        v21[1] = std::chrono::steady_clock::now().__d_.__rep_;
        v21[2] = std::chrono::system_clock::now().__d_.__rep_;
        v22 = 4;
        v23 = "unknown file";
        v24 = 546;
        v26 = 0;
        v27 = 0;
        v25 = "unknown function";
        v12 = *(v28 + 39);
        if ((v12 & 0x8000000000000000) != 0)
        {
          v13 = *(v28 + 16);
          v12 = *(v28 + 24);
          if ((atomic_load_explicit(&qword_1ECFDBB40, memory_order_acquire) & 1) == 0)
          {
            goto LABEL_48;
          }
        }

        else
        {
          v13 = (v28 + 16);
          if ((atomic_load_explicit(&qword_1ECFDBB40, memory_order_acquire) & 1) == 0)
          {
LABEL_48:
            if (__cxa_guard_acquire(&qword_1ECFDBB40))
            {
              sub_1E548E6E4(&v29);
              sub_1E53F807C("com.apple.AppleCVHWA", &v29, &qword_1ECFDBB28);
              if (v31 == 1 && SHIBYTE(v30) < 0)
              {
                operator delete(v29);
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

        *&v29 = os_log_create(v14, v13);
        if (v15 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_1E53DF584();
        }

        if (v15 >= 0x17)
        {
          operator new();
        }

        v32 = v15;
        if (v15)
        {
          memmove(&v29 + 8, v14, v15);
        }

        *(&v29 + v15 + 8) = 0;
        LOBYTE(v33) = 1;
        if (v12 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_1E53DF584();
        }

        if (v12 >= 0x17)
        {
          operator new();
        }

        v35 = v12;
        if (v12)
        {
          memmove(&v34, v13, v12);
        }

        *(&v34 + v12) = 0;
        v36 = 1;
        v16 = v29;
        if (v35 < 0)
        {
          operator delete(v34);
        }

        if (v33 == 1 && v32 < 0)
        {
          operator delete(*(&v29 + 1));
        }

        if (v16)
        {
          os_release(v16);
        }

        if (v11 && *(v11 + 24))
        {
          v17 = _os_log_pack_size();
          operator new(v17, 8uLL);
          operator new();
        }

        os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);
        LODWORD(v29) = 136315138;
        *(&v29 + 4) = "CVHWAFeatureExtractionConfigSetRoi";
        v18 = _os_log_send_and_compose_impl();
        if (v18)
        {
          free(v18);
        }

        if (v10)
        {
          sub_1E53DFB24(v21, "%s has no effect in swproxy", "CVHWAFeatureExtractionConfigSetRoi");
          sub_1E53EA844(v21);
        }

        sub_1E53EA844(v21);
        v19 = v27;
        a5 = v20;
        if (v27 && !atomic_fetch_add(&v27->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v19->__on_zero_shared)(v19);
          std::__shared_weak_count::__release_weak(v19);
        }
      }
    }
  }

  *(a1 + 12) = a2;
  *(a1 + 14) = a3;
  *(a1 + 16) = a4;
  *(a1 + 18) = a5;
}

void sub_1E5400C44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  if (*(v8 - 152) == 1 && *(v8 - 153) < 0)
  {
    operator delete(*(v8 - 176));
  }

  __cxa_guard_abort(&qword_1ECFDBB40);
  sub_1E53EAA0C(va);
  _Unwind_Resume(a1);
}

void sub_1E5400C88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  sub_1E53F8434(&a30);
  sub_1E53F8434(&a26);
  sub_1E53F816C(v30 - 176);
  sub_1E53EAA0C(&a16);
  _Unwind_Resume(a1);
}

void sub_1E5400CBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, char a33)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  sub_1E53F816C(&a33);
  sub_1E53EAA0C(&a16);
  _Unwind_Resume(a1);
}

void sub_1E5400CF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  MEMORY[0x1E6928650](v8, 0x10D0C40B950D02ALL);
  sub_1E53EAA0C(va);
  _Unwind_Resume(a1);
}

void sub_1E5400D1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_1E53EAA0C(va);
  _Unwind_Resume(a1);
}

void sub_1E5400D30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  if (a2)
  {
    sub_1E53DDDDC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CVHWAFeatureExtractionConfigGetRoiTop(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  if (!a1 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/product/AppleCVHWA/AppleCVHWA/src/CVHWAFeatureExtractionConfig.cpp", 556, "cfg != nullptr", 14, &unk_1E549A011, 0, sub_1E548FDE0))
  {
    abort();
  }

  if (*(a1 + 512) == 1)
  {
    sub_1E53FA6B0(&v20);
    if (**(v20 + 56) <= 4)
    {
      v2 = *(v20 + 72);
      v3 = sub_1E53E3554(v20, "OSLogSurrogateAppender", 1, 0);
      if (v3 || v2)
      {
        v13[0] = &v20;
        v13[1] = std::chrono::steady_clock::now().__d_.__rep_;
        v13[2] = std::chrono::system_clock::now().__d_.__rep_;
        v14 = 4;
        v15 = "unknown file";
        v16 = 558;
        v18 = 0;
        v19 = 0;
        v17 = "unknown function";
        v4 = (v20 + 16);
        v5 = *(v20 + 39);
        if ((v5 & 0x8000000000000000) != 0)
        {
          v4 = *(v20 + 16);
          v5 = *(v20 + 24);
        }

        if ((atomic_load_explicit(&qword_1ECFDBB40, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ECFDBB40))
        {
          sub_1E548E6E4(&object);
          sub_1E53F807C("com.apple.AppleCVHWA", &object, &qword_1ECFDBB28);
          if (v23 == 1 && SHIBYTE(v22) < 0)
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

        v24 = v7;
        if (v7)
        {
          memmove(&object + 8, v6, v7);
        }

        *(&object + v7 + 8) = 0;
        LOBYTE(v25) = 1;
        if (v5 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_1E53DF584();
        }

        if (v5 >= 0x17)
        {
          operator new();
        }

        v27 = v5;
        if (v5)
        {
          memmove(&__p, v4, v5);
        }

        *(&__p + v5) = 0;
        v28 = 1;
        v8 = object;
        if (v27 < 0)
        {
          operator delete(__p);
        }

        if (v25 == 1 && v24 < 0)
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
        *(&object + 4) = "CVHWAFeatureExtractionConfigGetRoiTop";
        v10 = _os_log_send_and_compose_impl();
        if (v10)
        {
          free(v10);
        }

        if (v2)
        {
          sub_1E53DFB24(v13, "%s has no effect in swproxy", "CVHWAFeatureExtractionConfigGetRoiTop");
          sub_1E53EA844(v13);
        }

        sub_1E53EA844(v13);
        v11 = v19;
        if (v19 && !atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v11->__on_zero_shared)(v11);
          std::__shared_weak_count::__release_weak(v11);
        }
      }
    }
  }

  return *(a1 + 12);
}

void sub_1E54016D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36, char a37)
{
  if (a37 == 1 && a36 < 0)
  {
    operator delete(__p);
  }

  __cxa_guard_abort(&qword_1ECFDBB40);
  sub_1E53EAA0C(&a12);
  _Unwind_Resume(a1);
}

void sub_1E5401714(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  sub_1E53F8434(&a26);
  sub_1E53F8434(&a22);
  sub_1E53F816C(&a31);
  sub_1E53EAA0C(&a12);
  _Unwind_Resume(a1);
}

void sub_1E5401748(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, char a29)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  sub_1E53F816C(&a29);
  sub_1E53EAA0C(&a12);
  _Unwind_Resume(a1);
}

void sub_1E540177C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  MEMORY[0x1E6928650](v4, 0x10D0C40B950D02ALL);
  sub_1E53EAA0C(va);
  _Unwind_Resume(a1);
}

void sub_1E54017A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1E53EAA0C(va);
  _Unwind_Resume(a1);
}

void sub_1E54017BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *object, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a2)
  {
    sub_1E53DDDDC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CVHWAFeatureExtractionConfigGetRoiLeft(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  if (!a1 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/product/AppleCVHWA/AppleCVHWA/src/CVHWAFeatureExtractionConfig.cpp", 565, "cfg != nullptr", 14, &unk_1E549A011, 0, sub_1E548FDE0))
  {
    abort();
  }

  if (*(a1 + 512) == 1)
  {
    sub_1E53FA6B0(&v20);
    if (**(v20 + 56) <= 4)
    {
      v2 = *(v20 + 72);
      v3 = sub_1E53E3554(v20, "OSLogSurrogateAppender", 1, 0);
      if (v3 || v2)
      {
        v13[0] = &v20;
        v13[1] = std::chrono::steady_clock::now().__d_.__rep_;
        v13[2] = std::chrono::system_clock::now().__d_.__rep_;
        v14 = 4;
        v15 = "unknown file";
        v16 = 567;
        v18 = 0;
        v19 = 0;
        v17 = "unknown function";
        v4 = (v20 + 16);
        v5 = *(v20 + 39);
        if ((v5 & 0x8000000000000000) != 0)
        {
          v4 = *(v20 + 16);
          v5 = *(v20 + 24);
        }

        if ((atomic_load_explicit(&qword_1ECFDBB40, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ECFDBB40))
        {
          sub_1E548E6E4(&object);
          sub_1E53F807C("com.apple.AppleCVHWA", &object, &qword_1ECFDBB28);
          if (v23 == 1 && SHIBYTE(v22) < 0)
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

        v24 = v7;
        if (v7)
        {
          memmove(&object + 8, v6, v7);
        }

        *(&object + v7 + 8) = 0;
        LOBYTE(v25) = 1;
        if (v5 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_1E53DF584();
        }

        if (v5 >= 0x17)
        {
          operator new();
        }

        v27 = v5;
        if (v5)
        {
          memmove(&__p, v4, v5);
        }

        *(&__p + v5) = 0;
        v28 = 1;
        v8 = object;
        if (v27 < 0)
        {
          operator delete(__p);
        }

        if (v25 == 1 && v24 < 0)
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
        *(&object + 4) = "CVHWAFeatureExtractionConfigGetRoiLeft";
        v10 = _os_log_send_and_compose_impl();
        if (v10)
        {
          free(v10);
        }

        if (v2)
        {
          sub_1E53DFB24(v13, "%s has no effect in swproxy", "CVHWAFeatureExtractionConfigGetRoiLeft");
          sub_1E53EA844(v13);
        }

        sub_1E53EA844(v13);
        v11 = v19;
        if (v19 && !atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v11->__on_zero_shared)(v11);
          std::__shared_weak_count::__release_weak(v11);
        }
      }
    }
  }

  return *(a1 + 14);
}

void sub_1E540215C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36, char a37)
{
  if (a37 == 1 && a36 < 0)
  {
    operator delete(__p);
  }

  __cxa_guard_abort(&qword_1ECFDBB40);
  sub_1E53EAA0C(&a12);
  _Unwind_Resume(a1);
}

void sub_1E54021A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  sub_1E53F8434(&a26);
  sub_1E53F8434(&a22);
  sub_1E53F816C(&a31);
  sub_1E53EAA0C(&a12);
  _Unwind_Resume(a1);
}

void sub_1E54021D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, char a29)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  sub_1E53F816C(&a29);
  sub_1E53EAA0C(&a12);
  _Unwind_Resume(a1);
}

void sub_1E5402208(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  MEMORY[0x1E6928650](v4, 0x10D0C40B950D02ALL);
  sub_1E53EAA0C(va);
  _Unwind_Resume(a1);
}

void sub_1E5402234(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1E53EAA0C(va);
  _Unwind_Resume(a1);
}

void sub_1E5402248(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *object, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a2)
  {
    sub_1E53DDDDC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CVHWAFeatureExtractionConfigGetRoiBottom(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  if (!a1 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/product/AppleCVHWA/AppleCVHWA/src/CVHWAFeatureExtractionConfig.cpp", 574, "cfg != nullptr", 14, &unk_1E549A011, 0, sub_1E548FDE0))
  {
    abort();
  }

  if (*(a1 + 512) == 1)
  {
    sub_1E53FA6B0(&v20);
    if (**(v20 + 56) <= 4)
    {
      v2 = *(v20 + 72);
      v3 = sub_1E53E3554(v20, "OSLogSurrogateAppender", 1, 0);
      if (v3 || v2)
      {
        v13[0] = &v20;
        v13[1] = std::chrono::steady_clock::now().__d_.__rep_;
        v13[2] = std::chrono::system_clock::now().__d_.__rep_;
        v14 = 4;
        v15 = "unknown file";
        v16 = 576;
        v18 = 0;
        v19 = 0;
        v17 = "unknown function";
        v4 = (v20 + 16);
        v5 = *(v20 + 39);
        if ((v5 & 0x8000000000000000) != 0)
        {
          v4 = *(v20 + 16);
          v5 = *(v20 + 24);
        }

        if ((atomic_load_explicit(&qword_1ECFDBB40, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ECFDBB40))
        {
          sub_1E548E6E4(&object);
          sub_1E53F807C("com.apple.AppleCVHWA", &object, &qword_1ECFDBB28);
          if (v23 == 1 && SHIBYTE(v22) < 0)
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

        v24 = v7;
        if (v7)
        {
          memmove(&object + 8, v6, v7);
        }

        *(&object + v7 + 8) = 0;
        LOBYTE(v25) = 1;
        if (v5 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_1E53DF584();
        }

        if (v5 >= 0x17)
        {
          operator new();
        }

        v27 = v5;
        if (v5)
        {
          memmove(&__p, v4, v5);
        }

        *(&__p + v5) = 0;
        v28 = 1;
        v8 = object;
        if (v27 < 0)
        {
          operator delete(__p);
        }

        if (v25 == 1 && v24 < 0)
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
        *(&object + 4) = "CVHWAFeatureExtractionConfigGetRoiBottom";
        v10 = _os_log_send_and_compose_impl();
        if (v10)
        {
          free(v10);
        }

        if (v2)
        {
          sub_1E53DFB24(v13, "%s has no effect in swproxy", "CVHWAFeatureExtractionConfigGetRoiBottom");
          sub_1E53EA844(v13);
        }

        sub_1E53EA844(v13);
        v11 = v19;
        if (v19 && !atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v11->__on_zero_shared)(v11);
          std::__shared_weak_count::__release_weak(v11);
        }
      }
    }
  }

  return *(a1 + 16);
}

void sub_1E5402BE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36, char a37)
{
  if (a37 == 1 && a36 < 0)
  {
    operator delete(__p);
  }

  __cxa_guard_abort(&qword_1ECFDBB40);
  sub_1E53EAA0C(&a12);
  _Unwind_Resume(a1);
}

void sub_1E5402C2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  sub_1E53F8434(&a26);
  sub_1E53F8434(&a22);
  sub_1E53F816C(&a31);
  sub_1E53EAA0C(&a12);
  _Unwind_Resume(a1);
}

void sub_1E5402C60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, char a29)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  sub_1E53F816C(&a29);
  sub_1E53EAA0C(&a12);
  _Unwind_Resume(a1);
}

void sub_1E5402C94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  MEMORY[0x1E6928650](v4, 0x10D0C40B950D02ALL);
  sub_1E53EAA0C(va);
  _Unwind_Resume(a1);
}

void sub_1E5402CC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1E53EAA0C(va);
  _Unwind_Resume(a1);
}

void sub_1E5402CD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *object, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a2)
  {
    sub_1E53DDDDC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CVHWAFeatureExtractionConfigGetRoiRight(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  if (!a1 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/product/AppleCVHWA/AppleCVHWA/src/CVHWAFeatureExtractionConfig.cpp", 583, "cfg != nullptr", 14, &unk_1E549A011, 0, sub_1E548FDE0))
  {
    abort();
  }

  if (*(a1 + 512) == 1)
  {
    sub_1E53FA6B0(&v20);
    if (**(v20 + 56) <= 4)
    {
      v2 = *(v20 + 72);
      v3 = sub_1E53E3554(v20, "OSLogSurrogateAppender", 1, 0);
      if (v3 || v2)
      {
        v13[0] = &v20;
        v13[1] = std::chrono::steady_clock::now().__d_.__rep_;
        v13[2] = std::chrono::system_clock::now().__d_.__rep_;
        v14 = 4;
        v15 = "unknown file";
        v16 = 585;
        v18 = 0;
        v19 = 0;
        v17 = "unknown function";
        v4 = (v20 + 16);
        v5 = *(v20 + 39);
        if ((v5 & 0x8000000000000000) != 0)
        {
          v4 = *(v20 + 16);
          v5 = *(v20 + 24);
        }

        if ((atomic_load_explicit(&qword_1ECFDBB40, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ECFDBB40))
        {
          sub_1E548E6E4(&object);
          sub_1E53F807C("com.apple.AppleCVHWA", &object, &qword_1ECFDBB28);
          if (v23 == 1 && SHIBYTE(v22) < 0)
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

        v24 = v7;
        if (v7)
        {
          memmove(&object + 8, v6, v7);
        }

        *(&object + v7 + 8) = 0;
        LOBYTE(v25) = 1;
        if (v5 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_1E53DF584();
        }

        if (v5 >= 0x17)
        {
          operator new();
        }

        v27 = v5;
        if (v5)
        {
          memmove(&__p, v4, v5);
        }

        *(&__p + v5) = 0;
        v28 = 1;
        v8 = object;
        if (v27 < 0)
        {
          operator delete(__p);
        }

        if (v25 == 1 && v24 < 0)
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
        *(&object + 4) = "CVHWAFeatureExtractionConfigGetRoiRight";
        v10 = _os_log_send_and_compose_impl();
        if (v10)
        {
          free(v10);
        }

        if (v2)
        {
          sub_1E53DFB24(v13, "%s has no effect in swproxy", "CVHWAFeatureExtractionConfigGetRoiRight");
          sub_1E53EA844(v13);
        }

        sub_1E53EA844(v13);
        v11 = v19;
        if (v19 && !atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v11->__on_zero_shared)(v11);
          std::__shared_weak_count::__release_weak(v11);
        }
      }
    }
  }

  return *(a1 + 18);
}

void sub_1E5403674(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36, char a37)
{
  if (a37 == 1 && a36 < 0)
  {
    operator delete(__p);
  }

  __cxa_guard_abort(&qword_1ECFDBB40);
  sub_1E53EAA0C(&a12);
  _Unwind_Resume(a1);
}

void sub_1E54036B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  sub_1E53F8434(&a26);
  sub_1E53F8434(&a22);
  sub_1E53F816C(&a31);
  sub_1E53EAA0C(&a12);
  _Unwind_Resume(a1);
}

void sub_1E54036EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, char a29)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  sub_1E53F816C(&a29);
  sub_1E53EAA0C(&a12);
  _Unwind_Resume(a1);
}

void sub_1E5403720(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  MEMORY[0x1E6928650](v4, 0x10D0C40B950D02ALL);
  sub_1E53EAA0C(va);
  _Unwind_Resume(a1);
}

void sub_1E540374C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1E53EAA0C(va);
  _Unwind_Resume(a1);
}

void sub_1E5403760(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *object, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a2)
  {
    sub_1E53DDDDC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void CVHWAFeatureExtractionConfigSetMaxNumberOfKeypointsPerOctave(uint64_t a1, int a2)
{
  v30 = *MEMORY[0x1E69E9840];
  if (!a1 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/product/AppleCVHWA/AppleCVHWA/src/CVHWAFeatureExtractionConfig.cpp", 593, "cfg != nullptr", 14, &unk_1E549A011, 0, sub_1E548FDE0))
  {
    abort();
  }

  if (*(a1 + 512) == 1)
  {
    sub_1E53FA6B0(&v21);
    if (**(v21 + 56) <= 4)
    {
      v4 = *(v21 + 72);
      v5 = sub_1E53E3554(v21, "OSLogSurrogateAppender", 1, 0);
      if (v5 || v4)
      {
        v14[0] = &v21;
        v14[1] = std::chrono::steady_clock::now().__d_.__rep_;
        v14[2] = std::chrono::system_clock::now().__d_.__rep_;
        v15 = 4;
        v16 = "unknown file";
        v17 = 595;
        v19 = 0;
        v20 = 0;
        v18 = "unknown function";
        v6 = *(v21 + 39);
        if ((v6 & 0x8000000000000000) != 0)
        {
          v7 = *(v21 + 16);
          v6 = *(v21 + 24);
          if ((atomic_load_explicit(&qword_1ECFDBB40, memory_order_acquire) & 1) == 0)
          {
            goto LABEL_48;
          }
        }

        else
        {
          v7 = (v21 + 16);
          if ((atomic_load_explicit(&qword_1ECFDBB40, memory_order_acquire) & 1) == 0)
          {
LABEL_48:
            if (__cxa_guard_acquire(&qword_1ECFDBB40))
            {
              sub_1E548E6E4(&v22);
              sub_1E53F807C("com.apple.AppleCVHWA", &v22, &qword_1ECFDBB28);
              if (v24 == 1 && SHIBYTE(v23) < 0)
              {
                operator delete(v22);
              }

              __cxa_atexit(MEMORY[0x1E69E52C0], &qword_1ECFDBB28, &dword_1E53D8000);
              __cxa_guard_release(&qword_1ECFDBB40);
            }
          }
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

        *&v22 = os_log_create(v8, v7);
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
          memmove(&v22 + 8, v8, v9);
        }

        *(&v22 + v9 + 8) = 0;
        LOBYTE(v26) = 1;
        if (v6 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_1E53DF584();
        }

        if (v6 >= 0x17)
        {
          operator new();
        }

        v28 = v6;
        if (v6)
        {
          memmove(&v27, v7, v6);
        }

        *(&v27 + v6) = 0;
        v29 = 1;
        v10 = v22;
        if (v28 < 0)
        {
          operator delete(v27);
        }

        if (v26 == 1 && v25 < 0)
        {
          operator delete(*(&v22 + 1));
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
        LODWORD(v22) = 136315138;
        *(&v22 + 4) = "CVHWAFeatureExtractionConfigSetMaxNumberOfKeypointsPerOctave";
        v12 = _os_log_send_and_compose_impl();
        if (v12)
        {
          free(v12);
        }

        if (v4)
        {
          sub_1E53DFB24(v14, "%s has no effect in swproxy", "CVHWAFeatureExtractionConfigSetMaxNumberOfKeypointsPerOctave");
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
  }

  *(a1 + 52) = a2;
}

void sub_1E5404128(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
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

void sub_1E540416C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  sub_1E53F8434(&a28);
  sub_1E53F8434(&a24);
  sub_1E53F816C(v28 - 176);
  sub_1E53EAA0C(&a14);
  _Unwind_Resume(a1);
}

void sub_1E54041A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, char a31)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  sub_1E53F816C(&a31);
  sub_1E53EAA0C(&a14);
  _Unwind_Resume(a1);
}

void sub_1E54041D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  MEMORY[0x1E6928650](v6, 0x10D0C40B950D02ALL);
  sub_1E53EAA0C(va);
  _Unwind_Resume(a1);
}

void sub_1E5404200(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_1E53EAA0C(va);
  _Unwind_Resume(a1);
}

void sub_1E5404214(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  if (a2)
  {
    sub_1E53DDDDC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CVHWAFeatureExtractionConfigGetMaxNumberOfKeypointsPerOctave(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  if (!a1 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/product/AppleCVHWA/AppleCVHWA/src/CVHWAFeatureExtractionConfig.cpp", 603, "cfg != nullptr", 14, &unk_1E549A011, 0, sub_1E548FDE0))
  {
    abort();
  }

  if (*(a1 + 512) == 1)
  {
    sub_1E53FA6B0(&v20);
    if (**(v20 + 56) <= 4)
    {
      v2 = *(v20 + 72);
      v3 = sub_1E53E3554(v20, "OSLogSurrogateAppender", 1, 0);
      if (v3 || v2)
      {
        v13[0] = &v20;
        v13[1] = std::chrono::steady_clock::now().__d_.__rep_;
        v13[2] = std::chrono::system_clock::now().__d_.__rep_;
        v14 = 4;
        v15 = "unknown file";
        v16 = 605;
        v18 = 0;
        v19 = 0;
        v17 = "unknown function";
        v4 = (v20 + 16);
        v5 = *(v20 + 39);
        if ((v5 & 0x8000000000000000) != 0)
        {
          v4 = *(v20 + 16);
          v5 = *(v20 + 24);
        }

        if ((atomic_load_explicit(&qword_1ECFDBB40, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ECFDBB40))
        {
          sub_1E548E6E4(&object);
          sub_1E53F807C("com.apple.AppleCVHWA", &object, &qword_1ECFDBB28);
          if (v23 == 1 && SHIBYTE(v22) < 0)
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

        v24 = v7;
        if (v7)
        {
          memmove(&object + 8, v6, v7);
        }

        *(&object + v7 + 8) = 0;
        LOBYTE(v25) = 1;
        if (v5 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_1E53DF584();
        }

        if (v5 >= 0x17)
        {
          operator new();
        }

        v27 = v5;
        if (v5)
        {
          memmove(&__p, v4, v5);
        }

        *(&__p + v5) = 0;
        v28 = 1;
        v8 = object;
        if (v27 < 0)
        {
          operator delete(__p);
        }

        if (v25 == 1 && v24 < 0)
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
        *(&object + 4) = "CVHWAFeatureExtractionConfigGetMaxNumberOfKeypointsPerOctave";
        v10 = _os_log_send_and_compose_impl();
        if (v10)
        {
          free(v10);
        }

        if (v2)
        {
          sub_1E53DFB24(v13, "%s has no effect in swproxy", "CVHWAFeatureExtractionConfigGetMaxNumberOfKeypointsPerOctave");
          sub_1E53EA844(v13);
        }

        sub_1E53EA844(v13);
        v11 = v19;
        if (v19 && !atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v11->__on_zero_shared)(v11);
          std::__shared_weak_count::__release_weak(v11);
        }
      }
    }
  }

  return *(a1 + 52);
}

void sub_1E5404BBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36, char a37)
{
  if (a37 == 1 && a36 < 0)
  {
    operator delete(__p);
  }

  __cxa_guard_abort(&qword_1ECFDBB40);
  sub_1E53EAA0C(&a12);
  _Unwind_Resume(a1);
}

void sub_1E5404C00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  sub_1E53F8434(&a26);
  sub_1E53F8434(&a22);
  sub_1E53F816C(&a31);
  sub_1E53EAA0C(&a12);
  _Unwind_Resume(a1);
}

void sub_1E5404C34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, char a29)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  sub_1E53F816C(&a29);
  sub_1E53EAA0C(&a12);
  _Unwind_Resume(a1);
}

void sub_1E5404C68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  MEMORY[0x1E6928650](v4, 0x10D0C40B950D02ALL);
  sub_1E53EAA0C(va);
  _Unwind_Resume(a1);
}

void sub_1E5404C94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1E53EAA0C(va);
  _Unwind_Resume(a1);
}

void sub_1E5404CA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *object, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a2)
  {
    sub_1E53DDDDC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void CVHWAFeatureExtractionConfigSetShouldCheckTopLevelPruning(uint64_t a1, char a2)
{
  v30 = *MEMORY[0x1E69E9840];
  if (!a1 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/product/AppleCVHWA/AppleCVHWA/src/CVHWAFeatureExtractionConfig.cpp", 614, "cfg != nullptr", 14, &unk_1E549A011, 0, sub_1E548FDE0))
  {
    abort();
  }

  if (*(a1 + 512) == 1)
  {
    sub_1E53FA6B0(&v21);
    if (**(v21 + 56) <= 4)
    {
      v4 = *(v21 + 72);
      v5 = sub_1E53E3554(v21, "OSLogSurrogateAppender", 1, 0);
      if (v5 || v4)
      {
        v14[0] = &v21;
        v14[1] = std::chrono::steady_clock::now().__d_.__rep_;
        v14[2] = std::chrono::system_clock::now().__d_.__rep_;
        v15 = 4;
        v16 = "unknown file";
        v17 = 616;
        v19 = 0;
        v20 = 0;
        v18 = "unknown function";
        v6 = *(v21 + 39);
        if ((v6 & 0x8000000000000000) != 0)
        {
          v7 = *(v21 + 16);
          v6 = *(v21 + 24);
          if ((atomic_load_explicit(&qword_1ECFDBB40, memory_order_acquire) & 1) == 0)
          {
            goto LABEL_48;
          }
        }

        else
        {
          v7 = (v21 + 16);
          if ((atomic_load_explicit(&qword_1ECFDBB40, memory_order_acquire) & 1) == 0)
          {
LABEL_48:
            if (__cxa_guard_acquire(&qword_1ECFDBB40))
            {
              sub_1E548E6E4(&v22);
              sub_1E53F807C("com.apple.AppleCVHWA", &v22, &qword_1ECFDBB28);
              if (v24 == 1 && SHIBYTE(v23) < 0)
              {
                operator delete(v22);
              }

              __cxa_atexit(MEMORY[0x1E69E52C0], &qword_1ECFDBB28, &dword_1E53D8000);
              __cxa_guard_release(&qword_1ECFDBB40);
            }
          }
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

        *&v22 = os_log_create(v8, v7);
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
          memmove(&v22 + 8, v8, v9);
        }

        *(&v22 + v9 + 8) = 0;
        LOBYTE(v26) = 1;
        if (v6 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_1E53DF584();
        }

        if (v6 >= 0x17)
        {
          operator new();
        }

        v28 = v6;
        if (v6)
        {
          memmove(&v27, v7, v6);
        }

        *(&v27 + v6) = 0;
        v29 = 1;
        v10 = v22;
        if (v28 < 0)
        {
          operator delete(v27);
        }

        if (v26 == 1 && v25 < 0)
        {
          operator delete(*(&v22 + 1));
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
        LODWORD(v22) = 136315138;
        *(&v22 + 4) = "CVHWAFeatureExtractionConfigSetShouldCheckTopLevelPruning";
        v12 = _os_log_send_and_compose_impl();
        if (v12)
        {
          free(v12);
        }

        if (v4)
        {
          sub_1E53DFB24(v14, "%s has no effect in swproxy", "CVHWAFeatureExtractionConfigSetShouldCheckTopLevelPruning");
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
  }

  *(a1 + 45) = a2;
}

void sub_1E5405670(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
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

void sub_1E54056B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  sub_1E53F8434(&a28);
  sub_1E53F8434(&a24);
  sub_1E53F816C(v28 - 176);
  sub_1E53EAA0C(&a14);
  _Unwind_Resume(a1);
}

void sub_1E54056E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, char a31)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  sub_1E53F816C(&a31);
  sub_1E53EAA0C(&a14);
  _Unwind_Resume(a1);
}

void sub_1E540571C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  MEMORY[0x1E6928650](v6, 0x10D0C40B950D02ALL);
  sub_1E53EAA0C(va);
  _Unwind_Resume(a1);
}

void sub_1E5405748(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_1E53EAA0C(va);
  _Unwind_Resume(a1);
}

void sub_1E540575C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  if (a2)
  {
    sub_1E53DDDDC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CVHWAFeatureExtractionConfigGetShouldCheckTopLevelPruning(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  if (!a1 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/product/AppleCVHWA/AppleCVHWA/src/CVHWAFeatureExtractionConfig.cpp", 626, "cfg != nullptr", 14, &unk_1E549A011, 0, sub_1E548FDE0))
  {
    abort();
  }

  if (*(a1 + 512) == 1)
  {
    sub_1E53FA6B0(&v20);
    if (**(v20 + 56) <= 4)
    {
      v2 = *(v20 + 72);
      v3 = sub_1E53E3554(v20, "OSLogSurrogateAppender", 1, 0);
      if (v3 || v2)
      {
        v13[0] = &v20;
        v13[1] = std::chrono::steady_clock::now().__d_.__rep_;
        v13[2] = std::chrono::system_clock::now().__d_.__rep_;
        v14 = 4;
        v15 = "unknown file";
        v16 = 628;
        v18 = 0;
        v19 = 0;
        v17 = "unknown function";
        v4 = (v20 + 16);
        v5 = *(v20 + 39);
        if ((v5 & 0x8000000000000000) != 0)
        {
          v4 = *(v20 + 16);
          v5 = *(v20 + 24);
        }

        if ((atomic_load_explicit(&qword_1ECFDBB40, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ECFDBB40))
        {
          sub_1E548E6E4(&object);
          sub_1E53F807C("com.apple.AppleCVHWA", &object, &qword_1ECFDBB28);
          if (v23 == 1 && SHIBYTE(v22) < 0)
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

        v24 = v7;
        if (v7)
        {
          memmove(&object + 8, v6, v7);
        }

        *(&object + v7 + 8) = 0;
        LOBYTE(v25) = 1;
        if (v5 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_1E53DF584();
        }

        if (v5 >= 0x17)
        {
          operator new();
        }

        v27 = v5;
        if (v5)
        {
          memmove(&__p, v4, v5);
        }

        *(&__p + v5) = 0;
        v28 = 1;
        v8 = object;
        if (v27 < 0)
        {
          operator delete(__p);
        }

        if (v25 == 1 && v24 < 0)
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
        *(&object + 4) = "CVHWAFeatureExtractionConfigGetShouldCheckTopLevelPruning";
        v10 = _os_log_send_and_compose_impl();
        if (v10)
        {
          free(v10);
        }

        if (v2)
        {
          sub_1E53DFB24(v13, "%s has no effect in swproxy", "CVHWAFeatureExtractionConfigGetShouldCheckTopLevelPruning");
          sub_1E53EA844(v13);
        }

        sub_1E53EA844(v13);
        v11 = v19;
        if (v19 && !atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v11->__on_zero_shared)(v11);
          std::__shared_weak_count::__release_weak(v11);
        }
      }
    }
  }

  return *(a1 + 45);
}

void sub_1E5406104(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36, char a37)
{
  if (a37 == 1 && a36 < 0)
  {
    operator delete(__p);
  }

  __cxa_guard_abort(&qword_1ECFDBB40);
  sub_1E53EAA0C(&a12);
  _Unwind_Resume(a1);
}

void sub_1E5406148(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  sub_1E53F8434(&a26);
  sub_1E53F8434(&a22);
  sub_1E53F816C(&a31);
  sub_1E53EAA0C(&a12);
  _Unwind_Resume(a1);
}

void sub_1E540617C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, char a29)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  sub_1E53F816C(&a29);
  sub_1E53EAA0C(&a12);
  _Unwind_Resume(a1);
}

void sub_1E54061B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  MEMORY[0x1E6928650](v4, 0x10D0C40B950D02ALL);
  sub_1E53EAA0C(va);
  _Unwind_Resume(a1);
}

void sub_1E54061DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1E53EAA0C(va);
  _Unwind_Resume(a1);
}

void sub_1E54061F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *object, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a2)
  {
    sub_1E53DDDDC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CVHWAFeatureExtractionConfigSetEnableFeatureMatching(uint64_t result, char a2)
{
  v3 = result;
  if (!result)
  {
    result = sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/product/AppleCVHWA/AppleCVHWA/src/CVHWAFeatureExtractionConfig.cpp", 641, "cfg != nullptr", 14, &unk_1E549A011, 0, sub_1E548FDE0);
    if (result)
    {
      abort();
    }
  }

  if (v3[512] == 1)
  {
    v3[433] = a2;
    v3[432] = a2;
  }

  else
  {
    v3[113] = a2;
  }

  return result;
}

uint64_t CVHWAFeatureExtractionConfigGetEnableFeatureMatching(uint64_t a1)
{
  if (!a1 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/product/AppleCVHWA/AppleCVHWA/src/CVHWAFeatureExtractionConfig.cpp", 654, "cfg != nullptr", 14, &unk_1E549A011, 0, sub_1E548FDE0))
  {
    abort();
  }

  v2 = 113;
  if (*(a1 + 512))
  {
    v2 = 433;
  }

  return *(a1 + v2);
}

uint64_t CVHWAFeatureExtractionConfigSetFeatureMatchingDescriptorSize(uint64_t result, int a2)
{
  v3 = result;
  if (!result)
  {
    result = sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/product/AppleCVHWA/AppleCVHWA/src/CVHWAFeatureExtractionConfig.cpp", 663, "cfg != nullptr", 14, &unk_1E549A011, 0, sub_1E548FDE0);
    if (result)
    {
      abort();
    }
  }

  if (*(v3 + 512) == 1)
  {
    switch(a2)
    {
      case 2:
        *(v3 + 436) = 512;
        break;
      case 1:
        *(v3 + 436) = 256;
        break;
      case 0:
        *(v3 + 436) = 128;
        break;
    }
  }

  else
  {
    *(v3 + 152) = a2;
  }

  return result;
}

uint64_t CVHWAFeatureExtractionConfigGetFeatureMatchingDescriptorSize(uint64_t a1)
{
  if (!a1)
  {
    if (sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/product/AppleCVHWA/AppleCVHWA/src/CVHWAFeatureExtractionConfig.cpp", 688, "cfg != nullptr", 14, &unk_1E549A011, 0, sub_1E548FDE0))
    {
      abort();
    }
  }

  if (*(a1 + 512) != 1)
  {
    return *(a1 + 152);
  }

  v2 = *(a1 + 436);
  if (v2 == 128)
  {
    return 0;
  }

  if (v2 != 512)
  {
    if (v2 == 256)
    {
      return 1;
    }

    return *(a1 + 152);
  }

  return 2;
}

uint64_t CVHWAFeatureExtractionConfigSetOrientationDistanceThreshold(uint64_t result, float a2)
{
  v3 = result;
  if (!result)
  {
    result = sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/product/AppleCVHWA/AppleCVHWA/src/CVHWAFeatureExtractionConfig.cpp", 712, "cfg != nullptr", 14, &unk_1E549A011, 0, sub_1E548FDE0);
    if (result)
    {
      abort();
    }
  }

  if (*(v3 + 512) == 1)
  {
    *(v3 + 452) = vcvtas_u32_f32((a2 * 256.0) / 360.0);
  }

  else
  {
    *(v3 + 156) = a2;
  }

  return result;
}

float CVHWAFeatureExtractionConfigGetOrientationDistanceThreshold(uint64_t a1)
{
  if (!a1 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/product/AppleCVHWA/AppleCVHWA/src/CVHWAFeatureExtractionConfig.cpp", 725, "cfg != nullptr", 14, &unk_1E549A011, 0, sub_1E548FDE0))
  {
    abort();
  }

  if (*(a1 + 512) == 1)
  {
    return (*(a1 + 452) * 360.0) * 0.0039062;
  }

  else
  {
    return *(a1 + 156);
  }
}

uint64_t CVHWAFeatureExtractionConfigSetSigmaDistanceThreshold(uint64_t result, float a2)
{
  v3 = result;
  if (!result)
  {
    result = sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/product/AppleCVHWA/AppleCVHWA/src/CVHWAFeatureExtractionConfig.cpp", 735, "cfg != nullptr", 14, &unk_1E549A011, 0, sub_1E548FDE0);
    if (result)
    {
      abort();
    }
  }

  if (*(v3 + 512) == 1)
  {
    *(v3 + 448) = vcvtas_u32_f32(a2 * 512.0);
  }

  else
  {
    *(v3 + 160) = a2;
  }

  return result;
}

float CVHWAFeatureExtractionConfigGetSigmaDistanceThreshold(uint64_t a1)
{
  if (!a1 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/product/AppleCVHWA/AppleCVHWA/src/CVHWAFeatureExtractionConfig.cpp", 748, "cfg != nullptr", 14, &unk_1E549A011, 0, sub_1E548FDE0))
  {
    abort();
  }

  if (*(a1 + 512) == 1)
  {
    return *(a1 + 448) * 0.0019531;
  }

  else
  {
    return *(a1 + 160);
  }
}

uint64_t CVHWAFeatureExtractionConfigSetSquareDistanceDisparityFraction(uint64_t result, float a2)
{
  v3 = result;
  if (!result)
  {
    result = sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/product/AppleCVHWA/AppleCVHWA/src/CVHWAFeatureExtractionConfig.cpp", 758, "cfg != nullptr", 14, &unk_1E549A011, 0, sub_1E548FDE0);
    if (result)
    {
      abort();
    }
  }

  if (*(v3 + 512) == 1)
  {
    *(v3 + 504) = a2;
  }

  else
  {
    *(v3 + 164) = a2;
  }

  return result;
}

float CVHWAFeatureExtractionConfigGetSquareDistanceDisparityFraction(uint64_t a1)
{
  if (!a1 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/product/AppleCVHWA/AppleCVHWA/src/CVHWAFeatureExtractionConfig.cpp", 770, "cfg != nullptr", 14, &unk_1E549A011, 0, sub_1E548FDE0))
  {
    abort();
  }

  v2 = 164;
  if (*(a1 + 512))
  {
    v2 = 504;
  }

  return *(a1 + v2);
}

uint64_t CVHWAFeatureExtractionConfigSetHammingDistanceThreshold(uint64_t result, int a2)
{
  v3 = result;
  if (!result)
  {
    result = sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/product/AppleCVHWA/AppleCVHWA/src/CVHWAFeatureExtractionConfig.cpp", 779, "cfg != nullptr", 14, &unk_1E549A011, 0, sub_1E548FDE0);
    if (result)
    {
      abort();
    }
  }

  v4 = 168;
  if (*(v3 + 512))
  {
    v4 = 440;
  }

  *(v3 + v4) = a2;
  return result;
}

uint64_t CVHWAFeatureExtractionConfigGetHammingDistanceThreshold(uint64_t a1)
{
  if (!a1 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/product/AppleCVHWA/AppleCVHWA/src/CVHWAFeatureExtractionConfig.cpp", 791, "cfg != nullptr", 14, &unk_1E549A011, 0, sub_1E548FDE0))
  {
    abort();
  }

  v2 = 168;
  if (*(a1 + 512))
  {
    v2 = 440;
  }

  return *(a1 + v2);
}

void CVHWAFeatureExtractionConfigSetFeatureMatchingMaxElements(uint64_t a1, int a2)
{
  v30 = *MEMORY[0x1E69E9840];
  if (!a1 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/product/AppleCVHWA/AppleCVHWA/src/CVHWAFeatureExtractionConfig.cpp", 804, "cfg != nullptr", 14, &unk_1E549A011, 0, sub_1E548FDE0))
  {
    abort();
  }

  if ((*(a1 + 512) & 1) == 0)
  {
    sub_1E53FA6B0(&v21);
    if (**(v21 + 56) <= 4)
    {
      v4 = *(v21 + 72);
      v5 = sub_1E53E3554(v21, "OSLogSurrogateAppender", 1, 0);
      if (v5 || v4)
      {
        v14[0] = &v21;
        v14[1] = std::chrono::steady_clock::now().__d_.__rep_;
        v14[2] = std::chrono::system_clock::now().__d_.__rep_;
        v15 = 4;
        v16 = "unknown file";
        v17 = 806;
        v19 = 0;
        v20 = 0;
        v18 = "unknown function";
        v6 = *(v21 + 39);
        if ((v6 & 0x8000000000000000) != 0)
        {
          v7 = *(v21 + 16);
          v6 = *(v21 + 24);
          if ((atomic_load_explicit(&qword_1ECFDBB40, memory_order_acquire) & 1) == 0)
          {
            goto LABEL_48;
          }
        }

        else
        {
          v7 = (v21 + 16);
          if ((atomic_load_explicit(&qword_1ECFDBB40, memory_order_acquire) & 1) == 0)
          {
LABEL_48:
            if (__cxa_guard_acquire(&qword_1ECFDBB40))
            {
              sub_1E548E6E4(&v22);
              sub_1E53F807C("com.apple.AppleCVHWA", &v22, &qword_1ECFDBB28);
              if (v24 == 1 && SHIBYTE(v23) < 0)
              {
                operator delete(v22);
              }

              __cxa_atexit(MEMORY[0x1E69E52C0], &qword_1ECFDBB28, &dword_1E53D8000);
              __cxa_guard_release(&qword_1ECFDBB40);
            }
          }
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

        *&v22 = os_log_create(v8, v7);
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
          memmove(&v22 + 8, v8, v9);
        }

        *(&v22 + v9 + 8) = 0;
        LOBYTE(v26) = 1;
        if (v6 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_1E53DF584();
        }

        if (v6 >= 0x17)
        {
          operator new();
        }

        v28 = v6;
        if (v6)
        {
          memmove(&v27, v7, v6);
        }

        *(&v27 + v6) = 0;
        v29 = 1;
        v10 = v22;
        if (v28 < 0)
        {
          operator delete(v27);
        }

        if (v26 == 1 && v25 < 0)
        {
          operator delete(*(&v22 + 1));
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
        LODWORD(v22) = 136315138;
        *(&v22 + 4) = "CVHWAFeatureExtractionConfigSetFeatureMatchingMaxElements";
        v12 = _os_log_send_and_compose_impl();
        if (v12)
        {
          free(v12);
        }

        if (v4)
        {
          sub_1E53DFB24(v14, "%s only has effect in swproxy", "CVHWAFeatureExtractionConfigSetFeatureMatchingMaxElements");
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
  }

  *(a1 + 464) = a2;
}

void sub_1E54072D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
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

void sub_1E5407314(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  sub_1E53F8434(&a28);
  sub_1E53F8434(&a24);
  sub_1E53F816C(v28 - 176);
  sub_1E53EAA0C(&a14);
  _Unwind_Resume(a1);
}

void sub_1E5407348(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, char a31)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  sub_1E53F816C(&a31);
  sub_1E53EAA0C(&a14);
  _Unwind_Resume(a1);
}

void sub_1E540737C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  MEMORY[0x1E6928650](v6, 0x10D0C40B950D02ALL);
  sub_1E53EAA0C(va);
  _Unwind_Resume(a1);
}

void sub_1E54073A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_1E53EAA0C(va);
  _Unwind_Resume(a1);
}

void sub_1E54073BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  if (a2)
  {
    sub_1E53DDDDC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CVHWAFeatureExtractionConfigGetFeatureMatchingMaxElements(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  if (!a1 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/product/AppleCVHWA/AppleCVHWA/src/CVHWAFeatureExtractionConfig.cpp", 814, "cfg != nullptr", 14, &unk_1E549A011, 0, sub_1E548FDE0))
  {
    abort();
  }

  if ((*(a1 + 512) & 1) == 0)
  {
    sub_1E53FA6B0(&v20);
    if (**(v20 + 56) <= 4)
    {
      v2 = *(v20 + 72);
      v3 = sub_1E53E3554(v20, "OSLogSurrogateAppender", 1, 0);
      if (v3 || v2)
      {
        v13[0] = &v20;
        v13[1] = std::chrono::steady_clock::now().__d_.__rep_;
        v13[2] = std::chrono::system_clock::now().__d_.__rep_;
        v14 = 4;
        v15 = "unknown file";
        v16 = 816;
        v18 = 0;
        v19 = 0;
        v17 = "unknown function";
        v4 = (v20 + 16);
        v5 = *(v20 + 39);
        if ((v5 & 0x8000000000000000) != 0)
        {
          v4 = *(v20 + 16);
          v5 = *(v20 + 24);
        }

        if ((atomic_load_explicit(&qword_1ECFDBB40, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ECFDBB40))
        {
          sub_1E548E6E4(&object);
          sub_1E53F807C("com.apple.AppleCVHWA", &object, &qword_1ECFDBB28);
          if (v23 == 1 && SHIBYTE(v22) < 0)
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

        v24 = v7;
        if (v7)
        {
          memmove(&object + 8, v6, v7);
        }

        *(&object + v7 + 8) = 0;
        LOBYTE(v25) = 1;
        if (v5 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_1E53DF584();
        }

        if (v5 >= 0x17)
        {
          operator new();
        }

        v27 = v5;
        if (v5)
        {
          memmove(&__p, v4, v5);
        }

        *(&__p + v5) = 0;
        v28 = 1;
        v8 = object;
        if (v27 < 0)
        {
          operator delete(__p);
        }

        if (v25 == 1 && v24 < 0)
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
        *(&object + 4) = "CVHWAFeatureExtractionConfigGetFeatureMatchingMaxElements";
        v10 = _os_log_send_and_compose_impl();
        if (v10)
        {
          free(v10);
        }

        if (v2)
        {
          sub_1E53DFB24(v13, "%s only has effect in swproxy", "CVHWAFeatureExtractionConfigGetFeatureMatchingMaxElements");
          sub_1E53EA844(v13);
        }

        sub_1E53EA844(v13);
        v11 = v19;
        if (v19 && !atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v11->__on_zero_shared)(v11);
          std::__shared_weak_count::__release_weak(v11);
        }
      }
    }
  }

  return *(a1 + 464);
}

void sub_1E5407D60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36, char a37)
{
  if (a37 == 1 && a36 < 0)
  {
    operator delete(__p);
  }

  __cxa_guard_abort(&qword_1ECFDBB40);
  sub_1E53EAA0C(&a12);
  _Unwind_Resume(a1);
}

void sub_1E5407DA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  sub_1E53F8434(&a26);
  sub_1E53F8434(&a22);
  sub_1E53F816C(&a31);
  sub_1E53EAA0C(&a12);
  _Unwind_Resume(a1);
}

void sub_1E5407DD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, char a29)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  sub_1E53F816C(&a29);
  sub_1E53EAA0C(&a12);
  _Unwind_Resume(a1);
}

void sub_1E5407E0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  MEMORY[0x1E6928650](v4, 0x10D0C40B950D02ALL);
  sub_1E53EAA0C(va);
  _Unwind_Resume(a1);
}

void sub_1E5407E38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1E53EAA0C(va);
  _Unwind_Resume(a1);
}

void sub_1E5407E4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *object, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a2)
  {
    sub_1E53DDDDC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void CVHWAFeatureExtractionConfigSetFeatureMatchingMaxNumSets(uint64_t a1, int a2)
{
  v30 = *MEMORY[0x1E69E9840];
  if (!a1 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/product/AppleCVHWA/AppleCVHWA/src/CVHWAFeatureExtractionConfig.cpp", 824, "cfg != nullptr", 14, &unk_1E549A011, 0, sub_1E548FDE0))
  {
    abort();
  }

  if ((*(a1 + 512) & 1) == 0)
  {
    sub_1E53FA6B0(&v21);
    if (**(v21 + 56) <= 4)
    {
      v4 = *(v21 + 72);
      v5 = sub_1E53E3554(v21, "OSLogSurrogateAppender", 1, 0);
      if (v5 || v4)
      {
        v14[0] = &v21;
        v14[1] = std::chrono::steady_clock::now().__d_.__rep_;
        v14[2] = std::chrono::system_clock::now().__d_.__rep_;
        v15 = 4;
        v16 = "unknown file";
        v17 = 826;
        v19 = 0;
        v20 = 0;
        v18 = "unknown function";
        v6 = *(v21 + 39);
        if ((v6 & 0x8000000000000000) != 0)
        {
          v7 = *(v21 + 16);
          v6 = *(v21 + 24);
          if ((atomic_load_explicit(&qword_1ECFDBB40, memory_order_acquire) & 1) == 0)
          {
            goto LABEL_48;
          }
        }

        else
        {
          v7 = (v21 + 16);
          if ((atomic_load_explicit(&qword_1ECFDBB40, memory_order_acquire) & 1) == 0)
          {
LABEL_48:
            if (__cxa_guard_acquire(&qword_1ECFDBB40))
            {
              sub_1E548E6E4(&v22);
              sub_1E53F807C("com.apple.AppleCVHWA", &v22, &qword_1ECFDBB28);
              if (v24 == 1 && SHIBYTE(v23) < 0)
              {
                operator delete(v22);
              }

              __cxa_atexit(MEMORY[0x1E69E52C0], &qword_1ECFDBB28, &dword_1E53D8000);
              __cxa_guard_release(&qword_1ECFDBB40);
            }
          }
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

        *&v22 = os_log_create(v8, v7);
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
          memmove(&v22 + 8, v8, v9);
        }

        *(&v22 + v9 + 8) = 0;
        LOBYTE(v26) = 1;
        if (v6 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_1E53DF584();
        }

        if (v6 >= 0x17)
        {
          operator new();
        }

        v28 = v6;
        if (v6)
        {
          memmove(&v27, v7, v6);
        }

        *(&v27 + v6) = 0;
        v29 = 1;
        v10 = v22;
        if (v28 < 0)
        {
          operator delete(v27);
        }

        if (v26 == 1 && v25 < 0)
        {
          operator delete(*(&v22 + 1));
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
        LODWORD(v22) = 136315138;
        *(&v22 + 4) = "CVHWAFeatureExtractionConfigSetFeatureMatchingMaxNumSets";
        v12 = _os_log_send_and_compose_impl();
        if (v12)
        {
          free(v12);
        }

        if (v4)
        {
          sub_1E53DFB24(v14, "%s only has effect in swproxy", "CVHWAFeatureExtractionConfigSetFeatureMatchingMaxNumSets");
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
  }

  *(a1 + 456) = a2;
}

void sub_1E5408810(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
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

void sub_1E5408854(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  sub_1E53F8434(&a28);
  sub_1E53F8434(&a24);
  sub_1E53F816C(v28 - 176);
  sub_1E53EAA0C(&a14);
  _Unwind_Resume(a1);
}

void sub_1E5408888(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, char a31)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  sub_1E53F816C(&a31);
  sub_1E53EAA0C(&a14);
  _Unwind_Resume(a1);
}

void sub_1E54088BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  MEMORY[0x1E6928650](v6, 0x10D0C40B950D02ALL);
  sub_1E53EAA0C(va);
  _Unwind_Resume(a1);
}

void sub_1E54088E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_1E53EAA0C(va);
  _Unwind_Resume(a1);
}

void sub_1E54088FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  if (a2)
  {
    sub_1E53DDDDC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CVHWAFeatureExtractionConfigGetFeatureMatchingMaxNumSets(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  if (!a1 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/product/AppleCVHWA/AppleCVHWA/src/CVHWAFeatureExtractionConfig.cpp", 834, "cfg != nullptr", 14, &unk_1E549A011, 0, sub_1E548FDE0))
  {
    abort();
  }

  if ((*(a1 + 512) & 1) == 0)
  {
    sub_1E53FA6B0(&v20);
    if (**(v20 + 56) <= 4)
    {
      v2 = *(v20 + 72);
      v3 = sub_1E53E3554(v20, "OSLogSurrogateAppender", 1, 0);
      if (v3 || v2)
      {
        v13[0] = &v20;
        v13[1] = std::chrono::steady_clock::now().__d_.__rep_;
        v13[2] = std::chrono::system_clock::now().__d_.__rep_;
        v14 = 4;
        v15 = "unknown file";
        v16 = 836;
        v18 = 0;
        v19 = 0;
        v17 = "unknown function";
        v4 = (v20 + 16);
        v5 = *(v20 + 39);
        if ((v5 & 0x8000000000000000) != 0)
        {
          v4 = *(v20 + 16);
          v5 = *(v20 + 24);
        }

        if ((atomic_load_explicit(&qword_1ECFDBB40, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ECFDBB40))
        {
          sub_1E548E6E4(&object);
          sub_1E53F807C("com.apple.AppleCVHWA", &object, &qword_1ECFDBB28);
          if (v23 == 1 && SHIBYTE(v22) < 0)
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

        v24 = v7;
        if (v7)
        {
          memmove(&object + 8, v6, v7);
        }

        *(&object + v7 + 8) = 0;
        LOBYTE(v25) = 1;
        if (v5 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_1E53DF584();
        }

        if (v5 >= 0x17)
        {
          operator new();
        }

        v27 = v5;
        if (v5)
        {
          memmove(&__p, v4, v5);
        }

        *(&__p + v5) = 0;
        v28 = 1;
        v8 = object;
        if (v27 < 0)
        {
          operator delete(__p);
        }

        if (v25 == 1 && v24 < 0)
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
        *(&object + 4) = "CVHWAFeatureExtractionConfigGetFeatureMatchingMaxNumSets";
        v10 = _os_log_send_and_compose_impl();
        if (v10)
        {
          free(v10);
        }

        if (v2)
        {
          sub_1E53DFB24(v13, "%s only has effect in swproxy", "CVHWAFeatureExtractionConfigGetFeatureMatchingMaxNumSets");
          sub_1E53EA844(v13);
        }

        sub_1E53EA844(v13);
        v11 = v19;
        if (v19 && !atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v11->__on_zero_shared)(v11);
          std::__shared_weak_count::__release_weak(v11);
        }
      }
    }
  }

  return *(a1 + 456);
}

void sub_1E54092A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36, char a37)
{
  if (a37 == 1 && a36 < 0)
  {
    operator delete(__p);
  }

  __cxa_guard_abort(&qword_1ECFDBB40);
  sub_1E53EAA0C(&a12);
  _Unwind_Resume(a1);
}

void sub_1E54092E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  sub_1E53F8434(&a26);
  sub_1E53F8434(&a22);
  sub_1E53F816C(&a31);
  sub_1E53EAA0C(&a12);
  _Unwind_Resume(a1);
}

void sub_1E5409318(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, char a29)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  sub_1E53F816C(&a29);
  sub_1E53EAA0C(&a12);
  _Unwind_Resume(a1);
}

void sub_1E540934C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  MEMORY[0x1E6928650](v4, 0x10D0C40B950D02ALL);
  sub_1E53EAA0C(va);
  _Unwind_Resume(a1);
}

void sub_1E5409378(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1E53EAA0C(va);
  _Unwind_Resume(a1);
}

void sub_1E540938C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *object, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a2)
  {
    sub_1E53DDDDC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void CVHWAFeatureExtractionConfigSetFeatureMatchingHomographyMatrix(uint64_t a1, _DWORD *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  if (!a1 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/product/AppleCVHWA/AppleCVHWA/src/CVHWAFeatureExtractionConfig.cpp", 844, "cfg != nullptr", 14, &unk_1E549A011, 0, sub_1E548FDE0))
  {
    abort();
  }

  if ((*(a1 + 512) & 1) == 0)
  {
    sub_1E53FA6B0(&v21);
    if (**(v21 + 56) <= 4)
    {
      v4 = *(v21 + 72);
      v5 = sub_1E53E3554(v21, "OSLogSurrogateAppender", 1, 0);
      if (v5 || v4)
      {
        v14[0] = &v21;
        v14[1] = std::chrono::steady_clock::now().__d_.__rep_;
        v14[2] = std::chrono::system_clock::now().__d_.__rep_;
        v15 = 4;
        v16 = "unknown file";
        v17 = 846;
        v19 = 0;
        v20 = 0;
        v18 = "unknown function";
        v6 = *(v21 + 39);
        if ((v6 & 0x8000000000000000) != 0)
        {
          v7 = *(v21 + 16);
          v6 = *(v21 + 24);
          if ((atomic_load_explicit(&qword_1ECFDBB40, memory_order_acquire) & 1) == 0)
          {
            goto LABEL_48;
          }
        }

        else
        {
          v7 = (v21 + 16);
          if ((atomic_load_explicit(&qword_1ECFDBB40, memory_order_acquire) & 1) == 0)
          {
LABEL_48:
            if (__cxa_guard_acquire(&qword_1ECFDBB40))
            {
              sub_1E548E6E4(&v22);
              sub_1E53F807C("com.apple.AppleCVHWA", &v22, &qword_1ECFDBB28);
              if (v24 == 1 && SHIBYTE(v23) < 0)
              {
                operator delete(v22);
              }

              __cxa_atexit(MEMORY[0x1E69E52C0], &qword_1ECFDBB28, &dword_1E53D8000);
              __cxa_guard_release(&qword_1ECFDBB40);
            }
          }
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

        *&v22 = os_log_create(v8, v7);
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
          memmove(&v22 + 8, v8, v9);
        }

        *(&v22 + v9 + 8) = 0;
        LOBYTE(v26) = 1;
        if (v6 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_1E53DF584();
        }

        if (v6 >= 0x17)
        {
          operator new();
        }

        v28 = v6;
        if (v6)
        {
          memmove(&v27, v7, v6);
        }

        *(&v27 + v6) = 0;
        v29 = 1;
        v10 = v22;
        if (v28 < 0)
        {
          operator delete(v27);
        }

        if (v26 == 1 && v25 < 0)
        {
          operator delete(*(&v22 + 1));
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
        LODWORD(v22) = 136315138;
        *(&v22 + 4) = "CVHWAFeatureExtractionConfigSetFeatureMatchingHomographyMatrix";
        v12 = _os_log_send_and_compose_impl();
        if (v12)
        {
          free(v12);
        }

        if (v4)
        {
          sub_1E53DFB24(v14, "%s only has effect in swproxy", "CVHWAFeatureExtractionConfigSetFeatureMatchingHomographyMatrix");
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
  }

  *(a1 + 468) = *a2;
  *(a1 + 472) = a2[1];
  *(a1 + 476) = a2[2];
  *(a1 + 480) = a2[3];
  *(a1 + 484) = a2[4];
  *(a1 + 488) = a2[5];
  *(a1 + 492) = a2[6];
  *(a1 + 496) = a2[7];
  *(a1 + 500) = a2[8];
}

void sub_1E5409D94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
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

void sub_1E5409DD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  sub_1E53F8434(&a28);
  sub_1E53F8434(&a24);
  sub_1E53F816C(v28 - 176);
  sub_1E53EAA0C(&a14);
  _Unwind_Resume(a1);
}

void sub_1E5409E0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, char a31)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  sub_1E53F816C(&a31);
  sub_1E53EAA0C(&a14);
  _Unwind_Resume(a1);
}

void sub_1E5409E40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  MEMORY[0x1E6928650](v6, 0x10D0C40B950D02ALL);
  sub_1E53EAA0C(va);
  _Unwind_Resume(a1);
}

void sub_1E5409E6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_1E53EAA0C(va);
  _Unwind_Resume(a1);
}

void sub_1E5409E80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  if (a2)
  {
    sub_1E53DDDDC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void CVHWAFeatureExtractionConfigGetFeatureMatchingHomographyMatrix(uint64_t a1, _DWORD *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  if (!a1 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/product/AppleCVHWA/AppleCVHWA/src/CVHWAFeatureExtractionConfig.cpp", 856, "cfg != nullptr", 14, &unk_1E549A011, 0, sub_1E548FDE0))
  {
    abort();
  }

  if ((*(a1 + 512) & 1) == 0)
  {
    sub_1E53FA6B0(&v21);
    if (**(v21 + 56) <= 4)
    {
      v4 = *(v21 + 72);
      v5 = sub_1E53E3554(v21, "OSLogSurrogateAppender", 1, 0);
      if (v5 || v4)
      {
        v14[0] = &v21;
        v14[1] = std::chrono::steady_clock::now().__d_.__rep_;
        v14[2] = std::chrono::system_clock::now().__d_.__rep_;
        v15 = 4;
        v16 = "unknown file";
        v17 = 858;
        v19 = 0;
        v20 = 0;
        v18 = "unknown function";
        v6 = *(v21 + 39);
        if ((v6 & 0x8000000000000000) != 0)
        {
          v7 = *(v21 + 16);
          v6 = *(v21 + 24);
          if ((atomic_load_explicit(&qword_1ECFDBB40, memory_order_acquire) & 1) == 0)
          {
            goto LABEL_48;
          }
        }

        else
        {
          v7 = (v21 + 16);
          if ((atomic_load_explicit(&qword_1ECFDBB40, memory_order_acquire) & 1) == 0)
          {
LABEL_48:
            if (__cxa_guard_acquire(&qword_1ECFDBB40))
            {
              sub_1E548E6E4(&v22);
              sub_1E53F807C("com.apple.AppleCVHWA", &v22, &qword_1ECFDBB28);
              if (v24 == 1 && SHIBYTE(v23) < 0)
              {
                operator delete(v22);
              }

              __cxa_atexit(MEMORY[0x1E69E52C0], &qword_1ECFDBB28, &dword_1E53D8000);
              __cxa_guard_release(&qword_1ECFDBB40);
            }
          }
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

        *&v22 = os_log_create(v8, v7);
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
          memmove(&v22 + 8, v8, v9);
        }

        *(&v22 + v9 + 8) = 0;
        LOBYTE(v26) = 1;
        if (v6 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_1E53DF584();
        }

        if (v6 >= 0x17)
        {
          operator new();
        }

        v28 = v6;
        if (v6)
        {
          memmove(&v27, v7, v6);
        }

        *(&v27 + v6) = 0;
        v29 = 1;
        v10 = v22;
        if (v28 < 0)
        {
          operator delete(v27);
        }

        if (v26 == 1 && v25 < 0)
        {
          operator delete(*(&v22 + 1));
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
        LODWORD(v22) = 136315138;
        *(&v22 + 4) = "CVHWAFeatureExtractionConfigGetFeatureMatchingHomographyMatrix";
        v12 = _os_log_send_and_compose_impl();
        if (v12)
        {
          free(v12);
        }

        if (v4)
        {
          sub_1E53DFB24(v14, "%s only has effect in swproxy", "CVHWAFeatureExtractionConfigGetFeatureMatchingHomographyMatrix");
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
  }

  *a2 = *(a1 + 468);
  a2[1] = *(a1 + 472);
  a2[2] = *(a1 + 476);
  a2[3] = *(a1 + 480);
  a2[4] = *(a1 + 484);
  a2[5] = *(a1 + 488);
  a2[6] = *(a1 + 492);
  a2[7] = *(a1 + 496);
  a2[8] = *(a1 + 500);
}

void sub_1E540A888(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
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

void sub_1E540A8CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  sub_1E53F8434(&a28);
  sub_1E53F8434(&a24);
  sub_1E53F816C(v28 - 176);
  sub_1E53EAA0C(&a14);
  _Unwind_Resume(a1);
}

void sub_1E540A900(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, char a31)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  sub_1E53F816C(&a31);
  sub_1E53EAA0C(&a14);
  _Unwind_Resume(a1);
}

void sub_1E540A934(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  MEMORY[0x1E6928650](v6, 0x10D0C40B950D02ALL);
  sub_1E53EAA0C(va);
  _Unwind_Resume(a1);
}

void sub_1E540A960(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_1E53EAA0C(va);
  _Unwind_Resume(a1);
}

void sub_1E540A974(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  if (a2)
  {
    sub_1E53DDDDC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void CVHWAFeatureExtractionConfigSetUseDefaultParedGridSetting(uint64_t a1, char a2)
{
  v30 = *MEMORY[0x1E69E9840];
  if (!a1 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/product/AppleCVHWA/AppleCVHWA/src/CVHWAFeatureExtractionConfig.cpp", 868, "cfg != nullptr", 14, &unk_1E549A011, 0, sub_1E548FDE0))
  {
    abort();
  }

  if ((*(a1 + 512) & 1) == 0)
  {
    sub_1E53FA6B0(&v21);
    if (**(v21 + 56) <= 4)
    {
      v4 = *(v21 + 72);
      v5 = sub_1E53E3554(v21, "OSLogSurrogateAppender", 1, 0);
      if (v5 || v4)
      {
        v14[0] = &v21;
        v14[1] = std::chrono::steady_clock::now().__d_.__rep_;
        v14[2] = std::chrono::system_clock::now().__d_.__rep_;
        v15 = 4;
        v16 = "unknown file";
        v17 = 870;
        v19 = 0;
        v20 = 0;
        v18 = "unknown function";
        v6 = *(v21 + 39);
        if ((v6 & 0x8000000000000000) != 0)
        {
          v7 = *(v21 + 16);
          v6 = *(v21 + 24);
          if ((atomic_load_explicit(&qword_1ECFDBB40, memory_order_acquire) & 1) == 0)
          {
            goto LABEL_48;
          }
        }

        else
        {
          v7 = (v21 + 16);
          if ((atomic_load_explicit(&qword_1ECFDBB40, memory_order_acquire) & 1) == 0)
          {
LABEL_48:
            if (__cxa_guard_acquire(&qword_1ECFDBB40))
            {
              sub_1E548E6E4(&v22);
              sub_1E53F807C("com.apple.AppleCVHWA", &v22, &qword_1ECFDBB28);
              if (v24 == 1 && SHIBYTE(v23) < 0)
              {
                operator delete(v22);
              }

              __cxa_atexit(MEMORY[0x1E69E52C0], &qword_1ECFDBB28, &dword_1E53D8000);
              __cxa_guard_release(&qword_1ECFDBB40);
            }
          }
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

        *&v22 = os_log_create(v8, v7);
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
          memmove(&v22 + 8, v8, v9);
        }

        *(&v22 + v9 + 8) = 0;
        LOBYTE(v26) = 1;
        if (v6 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_1E53DF584();
        }

        if (v6 >= 0x17)
        {
          operator new();
        }

        v28 = v6;
        if (v6)
        {
          memmove(&v27, v7, v6);
        }

        *(&v27 + v6) = 0;
        v29 = 1;
        v10 = v22;
        if (v28 < 0)
        {
          operator delete(v27);
        }

        if (v26 == 1 && v25 < 0)
        {
          operator delete(*(&v22 + 1));
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
        LODWORD(v22) = 136315138;
        *(&v22 + 4) = "CVHWAFeatureExtractionConfigSetUseDefaultParedGridSetting";
        v12 = _os_log_send_and_compose_impl();
        if (v12)
        {
          free(v12);
        }

        if (v4)
        {
          sub_1E53DFB24(v14, "%s only has effect in swproxy", "CVHWAFeatureExtractionConfigSetUseDefaultParedGridSetting");
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
  }

  *(a1 + 329) = a2;
}