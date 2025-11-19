uint64_t CVANetPipeGetTypeID()
{
  if (qword_27E3C87E8 != -1)
  {
    dispatch_once(&qword_27E3C87E8, &unk_285226390);
  }

  return qword_27E3C87F0;
}

uint64_t sub_2401B94C8()
{
  qword_27E3C87F8 = 0;
  unk_27E3C8800 = "CVANetPipe";
  qword_27E3C8808 = nullsub_2;
  unk_27E3C8810 = 0;
  qword_27E3C8820 = 0;
  unk_27E3C8828 = 0;
  qword_27E3C8818 = nullsub_1;
  qword_27E3C8830 = sub_2401B9590;
  qword_27E3C8838 = sub_2401B9540;
  result = _CFRuntimeRegisterClass();
  qword_27E3C87F0 = result;
  return result;
}

CFStringRef sub_2401B9540(const void *a1)
{
  v2 = CFGetAllocator(a1);
  v3 = CFGetAllocator(a1);
  return CFStringCreateWithFormat(v2, 0, @"<CVANetPipe %p [%p]>", a1, v3);
}

CFStringRef sub_2401B9590(const void *a1)
{
  v2 = CFGetAllocator(a1);
  v3 = CFGetAllocator(a1);
  return CFStringCreateWithFormat(v2, 0, @"<CVANetPipe %p [%p]>", a1, v3);
}

uint64_t CVAFaceTrackingLiteGetTypeID()
{
  if ((atomic_load_explicit(&qword_27E3C8860, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E3C8860))
  {
    qword_27E3C8858 = sub_2401B96A4();
    __cxa_guard_release(&qword_27E3C8860);
  }

  return qword_27E3C8858;
}

uint64_t sub_2401B96A4()
{
  qword_27E3C8868 = 0;
  unk_27E3C8870 = "CVAFaceTrackingLite";
  qword_27E3C8878 = sub_2401B9810;
  unk_27E3C8880 = 0;
  qword_27E3C8890 = 0;
  unk_27E3C8898 = 0;
  qword_27E3C8888 = sub_2401B97A0;
  qword_27E3C88A0 = sub_2401B9750;
  qword_27E3C88A8 = sub_2401B9700;
  return _CFRuntimeRegisterClass();
}

CFStringRef sub_2401B9700(const void *a1)
{
  v2 = CFGetAllocator(a1);
  v3 = CFGetAllocator(a1);
  return CFStringCreateWithFormat(v2, 0, @"<CVAFaceTrackingLite %p [%p]>", a1, v3);
}

CFStringRef sub_2401B9750(const void *a1)
{
  v2 = CFGetAllocator(a1);
  v3 = CFGetAllocator(a1);
  return CFStringCreateWithFormat(v2, 0, @"<CVAFaceTrackingLite %p [%p]>", a1, v3);
}

uint64_t sub_2401B97A0(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 16);
    if (v2)
    {
      v3 = *v2;
      *v2 = 0;
      if (v3)
      {
        v4 = sub_2402384D8(v3);
        MEMORY[0x245CBCA30](v4, 0x20C4093837F09);
      }

      result = MEMORY[0x245CBCA30](v2, 0x20C4093837F09);
    }

    *(v1 + 16) = 0;
  }

  return result;
}

double CVAFaceTrackingLiteGetDefaultCreateOptions@<D0>(uint64_t a1@<X8>)
{
  *a1 = 257;
  *(a1 + 8) = 0;
  *(a1 + 4) = 3;
  *(a1 + 2) = 0;
  *(a1 + 20) = 1117782016;
  *&result = 1065353216;
  *(a1 + 12) = 1065353216;
  return result;
}

uint64_t CVAFaceTrackingLiteGetCreateOptionsForFeatures@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *a3 = 257;
  *(a3 + 4) = 3;
  *(a3 + 8) = 0;
  *(a3 + 20) = 1117782016;
  *(a3 + 12) = 1065353216;
  if (result)
  {
    *(a3 + 12) = 1069547520;
  }

  if (a2)
  {
    *(a3 + 16) = 1056964608;
  }

  return result;
}

uint64_t CVAFaceTrackingLiteCreate(uint64_t a1, uint64_t a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    return 4294944343;
  }

  result = 4294944343;
  if (a2 && !*a3)
  {
    if ((atomic_load_explicit(&qword_27E3C8860, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E3C8860))
    {
      qword_27E3C8858 = sub_2401B96A4();
      __cxa_guard_release(&qword_27E3C8860);
    }

    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      v5 = operator new(8uLL, MEMORY[0x277D826F0]);
      if (v5)
      {
        *v5 = 0;
        Instance[2] = v5;
        v6 = objc_autoreleasePoolPush();
        v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v8 = [v7 resourcePath];

        if (!v8)
        {
          memset(&v13, 0, sizeof(v13));
          goto LABEL_23;
        }

        cva::Path::Path(buf, [v8 cStringUsingEncoding:4]);
        cva::Path::Path(&v14, "resources_facekit/");
        cva::Path::append();
        cva::Path::~Path(&v14);
        v9 = cva::Path::string(buf);
        if (*(v9 + 23) < 0)
        {
          sub_2401C2FCC(&v13, *v9, *(v9 + 8));
        }

        else
        {
          v10 = *v9;
          v13.__r_.__value_.__r.__words[2] = *(v9 + 16);
          *&v13.__r_.__value_.__l.__data_ = v10;
        }

        size = SHIBYTE(v13.__r_.__value_.__r.__words[2]);
        if ((SHIBYTE(v13.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
        {
          size = v13.__r_.__value_.__l.__size_;
          if (v13.__r_.__value_.__l.__size_)
          {
            v12 = v13.__r_.__value_.__r.__words[0];
LABEL_20:
            if (v12->__r_.__value_.__s.__data_[size - 1] != 47)
            {
              std::string::push_back(&v13, 47);
            }
          }
        }

        else if (*(&v13.__r_.__value_.__s + 23))
        {
          v12 = &v13;
          goto LABEL_20;
        }

        cva::Path::~Path(buf);
LABEL_23:

        objc_autoreleasePoolPop(v6);
        operator new();
      }

      Instance[2] = 0;
      CFRelease(Instance);
    }

    return 4294944342;
  }

  return result;
}

void sub_2401BB320(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *__p, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, int a45, __int16 a46, char a47, char a48)
{
  __cxa_guard_abort(&qword_280C039F0);
  os_unfair_lock_unlock(&unk_280C03818);
  kdebug_trace();
  sub_2401C1DF4(&a19);
  _Unwind_Resume(a1);
}

void sub_2401BB468(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  if (a12 == 1)
  {
    if (a11)
    {
      MEMORY[0x245CBCA30](a11, 0xC400A2AC0F1);
      _Unwind_Resume(a1);
    }
  }

  JUMPOUT(0x2401BB4B8);
}

uint64_t CVAFaceTrackingLiteSetColorImage(uint64_t a1, CVPixelBufferRef pixelBuffer, uint64_t a3)
{
  result = 4294944343;
  if (a1)
  {
    v5 = pixelBuffer;
    if (pixelBuffer)
    {
      if (a3)
      {
        texture[0] = 0;
        texture[1] = &off_285227260;
        v26 = 0x100000001;
        *&v27[4] = 0;
        *&v27[12] = 0x3F80000000000000;
        *&v27[20] = 0;
        *v27 = 1065353216;
        *&v27[28] = 0;
        *&v28[8] = 0;
        *&v28[16] = 0x3F80000000000000;
        *&v28[24] = 0;
        *&v28[32] = 0x3F80000000000000;
        __asm { FMOV            V1.2S, #1.0 }

        *v28 = _D1;
        v29 = 0;
        v30 = 0;
        LODWORD(v21) = CVPixelBufferGetWidth(pixelBuffer);
        HIDWORD(v21) = CVPixelBufferGetHeight(v5);
        v13 = *(a3 + 48);
        v12 = *(a3 + 64);
        v14 = *(a3 + 32);
        v15 = vtrn2q_s32(vextq_s8(v12, v13, 4uLL), v13);
        v16 = vtrn2q_s32(vextq_s8(v13, v12, 4uLL), v12);
        v17 = *(a3 + 8);
        v22 = *(a3 + 80);
        LODWORD(v23) = *a3;
        DWORD1(v23) = *(a3 + 12);
        DWORD2(v23) = *(a3 + 24);
        HIDWORD(v23) = *(a3 + 4);
        *v24 = *(a3 + 16);
        *&v24[4] = *(a3 + 28);
        DWORD1(v17) = HIDWORD(v17);
        *(&v17 + 1) = *(a3 + 32);
        *&v24[8] = v17;
        *&v24[24] = *(a3 + 40);
        v26 = v21;
        *&v27[16] = vextq_s8(v16, v16, 8uLL);
        *v27 = vextq_s8(v15, v15, 8uLL);
        *v28 = v22;
        *&v28[36] = v14;
        *&v28[20] = *v24;
        *&v28[4] = v23;
        v30 = HIDWORD(v14);
        v29 = *&v24[20];
        CVPixelBufferRetain(v5);
        texture[0] = v5;
        v18 = ***(a1 + 16);
        v19 = (v18 + 88);
        if (*v19)
        {
          CVPixelBufferRelease(*v19);
          *v19 = 0;
          v5 = texture[0];
        }

        *(v18 + 88) = v5;
        texture[0] = 0;
        *(v18 + 104) = v26;
        if (v19 != texture)
        {
          v20 = *&v27[16];
          *(v18 + 112) = *v27;
          *(v18 + 128) = v20;
          *(v18 + 144) = *v28;
          *(v18 + 148) = *&v28[4];
          *(v18 + 164) = *&v28[20];
          *(v18 + 180) = *&v28[36];
          *(v18 + 184) = v29;
          *(v18 + 192) = v30;
        }

        return 0;
      }
    }
  }

  return result;
}

void sub_2401BB728(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, CVPixelBufferRef texture)
{
  if (texture)
  {
    CVPixelBufferRelease(texture);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CVAFaceTrackingLiteSetTimestamp(uint64_t a1, double a2)
{
  result = 4294944343;
  if (a1)
  {
    result = 0;
    v4 = ***(a1 + 16);
    *(v4 + 24) = a2;
    *(v4 + 48) = 0;
  }

  return result;
}

uint64_t CVAFaceTrackingLiteSetDetectedFaces(uint64_t a1, int a2, uint64_t a3)
{
  result = 4294944343;
  if (a1 && (a2 & 0x80000000) == 0 && (!a2 || a3))
  {
    v6 = ***(a1 + 16);
    v7 = v6[41];
    v6[42] = v7;
    v8 = a2;
    if (a2 > ((v6[43] - v7) >> 5))
    {
      operator new();
    }

    if (a2 >= 1)
    {
      v9 = 0;
      do
      {
        v13 = v6[42];
        v12 = v6[43];
        if (v13 < v12)
        {
          *v13 = 0u;
          *(v13 + 1) = 0u;
          v10 = v13 + 32;
        }

        else
        {
          v14 = v6[41];
          v15 = (v13 - v14) >> 5;
          v16 = v15 + 1;
          if ((v15 + 1) >> 59)
          {
            sub_2401BDE28();
          }

          v17 = v12 - v14;
          if (v17 >> 4 > v16)
          {
            v16 = v17 >> 4;
          }

          if (v17 >= 0x7FFFFFFFFFFFFFE0)
          {
            v18 = 0x7FFFFFFFFFFFFFFLL;
          }

          else
          {
            v18 = v16;
          }

          if (v18)
          {
            if (!(v18 >> 59))
            {
              operator new();
            }

            sub_2401BDE28();
          }

          v19 = (32 * v15);
          *v19 = 0u;
          v19[1] = 0u;
          if (v14 != v13)
          {
            v20 = 0;
            do
            {
              v21 = *v14;
              *(v20 + 8) = *(v14 + 2);
              *v20 = v21;
              *(v20 + 12) = *(v14 + 12);
              *(v20 + 20) = *(v14 + 20);
              v14 += 32;
              v20 += 32;
            }

            while (v14 != v13);
            v14 = v6[41];
          }

          v10 = v19 + 2;
          v6[41] = 0;
          v6[42] = v19 + 2;
          v6[43] = 0;
          if (v14)
          {
            operator delete(v14);
          }
        }

        v6[42] = v10;
        v11 = a3 + 20 * v9;
        *(v10 - 20) = *v11;
        *(v10 - 6) = *(v11 + 16);
        *(v10 - 4) = 0;
        ++v9;
      }

      while (v9 != v8);
    }

    return 0;
  }

  return result;
}

uint64_t CVAFaceTrackingLiteSetLuxLevel(uint64_t a1, unsigned int a2)
{
  if (!a1)
  {
    return 4294944343;
  }

  v2 = ***(a1 + 16);
  v3 = *(v2 + 368) & 0xFFFFFF0000000000 | 0x100000000;
  if (!*(v2 + 376))
  {
    v3 = 0x100000000;
  }

  v4 = v3 | a2;
  if ((*(v2 + 376) & 1) == 0)
  {
    *(v2 + 376) = 1;
  }

  result = 0;
  *(v2 + 368) = v4;
  return result;
}

uint64_t CVAFaceTrackingLiteProcess(uint64_t a1)
{
  v39 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    return 4294944343;
  }

  v1 = *(a1 + 16);
  v2 = *v1;
  if (sub_240235E8C(**v1))
  {
    operator new();
  }

  if ((atomic_load_explicit(&qword_280C03A00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03A00))
  {
    qword_280C03978 = os_log_create("com.apple.AppleCVA", "FaceKit");
    __cxa_guard_release(&qword_280C03A00);
  }

  v4 = qword_280C03978;
  if (os_log_type_enabled(qword_280C03978, OS_LOG_TYPE_ERROR))
  {
    LOWORD(time[0].value) = 0;
    _os_log_error_impl(&dword_2401B8000, v4, OS_LOG_TYPE_ERROR, "invalid FaceKit input parameters", time, 2u);
  }

  v5 = *v2;
  if (*(*v2 + 440) == 1)
  {
    v6 = *(v5 + 424);
    if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }

    *(v5 + 440) = 0;
    v5 = *v2;
  }

  memset(v38, 0, sizeof(v38));
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  memset(v35, 0, sizeof(v35));
  memset(time, 0, sizeof(time));
  cva::DictionaryHandler::DictionaryHandler(&time[0].timescale);
  LODWORD(time[2].value) = 0;
  time[1].value = 0x7FF8000000000000;
  memset(&time[2].timescale, 0, 40);
  *&v34 = &off_285227260;
  *(&v34 + 1) = 0x100000001;
  *(v35 + 4) = 0;
  *(v35 + 12) = 0x3F80000000000000uLL;
  LODWORD(v35[0]) = 1065353216;
  HIDWORD(v35[1]) = 0;
  v35[3] = 0x3F80000000000000uLL;
  v35[4] = 0x3F80000000000000uLL;
  __asm { FMOV            V1.2S, #1.0 }

  v35[2] = _D1;
  LODWORD(v36) = 0;
  *(&v36 + 1) = 0;
  *&v37 = &off_285227260;
  *(&v37 + 1) = 0x100000001;
  *&v38[4] = 0;
  *&v38[12] = 0x3F80000000000000uLL;
  *v38 = 1065353216;
  *&v38[28] = 0;
  *&v38[48] = 0x3F80000000000000uLL;
  *&v38[64] = 0x3F80000000000000uLL;
  *&v38[32] = _D1;
  *&v38[80] = 0;
  v38[152] = 0;
  v38[156] = 0;
  v38[158] = 0;
  memset(&v38[100], 0, 45);
  *&v38[160] = 1;
  v38[162] = 0;
  *v5 = time[0].value;
  cva::DictionaryHandler::operator=();
  v12 = *&time[1].epoch;
  *(v5 + 24) = *&time[1].value;
  *(v5 + 40) = v12;
  v13 = *&time[2].timescale;
  *&time[2].timescale = 0;
  time[2].epoch = 0;
  v14 = *(v5 + 64);
  *(v5 + 56) = v13;
  if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
  }

  v15 = *&time[3].value;
  time[3].value = 0;
  *&time[3].timescale = 0;
  v16 = *(v5 + 80);
  *(v5 + 72) = v15;
  if (v16 && !atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v16->__on_zero_shared)(v16);
    std::__shared_weak_count::__release_weak(v16);
  }

  v17 = *(v5 + 88);
  if (v17)
  {
    CVPixelBufferRelease(v17);
    *(v5 + 88) = 0;
  }

  *(v5 + 88) = time[3].epoch;
  time[3].epoch = 0;
  *(v5 + 104) = *(&v34 + 1);
  if (v5 != time)
  {
    v18 = v35[0];
    v19 = v35[1];
    *(v5 + 144) = v35[2];
    *(v5 + 112) = v18;
    *(v5 + 128) = v19;
    v20 = *(&v35[2] + 4);
    v21 = *(&v35[3] + 4);
    *(v5 + 180) = DWORD1(v35[4]);
    *(v5 + 164) = v21;
    *(v5 + 148) = v20;
    v22 = *(&v35[4] + 1);
    *(v5 + 192) = v36;
    *(v5 + 184) = v22;
  }

  v23 = *(v5 + 200);
  if (v23)
  {
    CVPixelBufferRelease(v23);
    *(v5 + 200) = 0;
  }

  *(v5 + 200) = *(&v36 + 1);
  *(&v36 + 1) = 0;
  *(v5 + 216) = *(&v37 + 1);
  if (v5 != time)
  {
    v24 = *v38;
    v25 = *&v38[16];
    *(v5 + 256) = *&v38[32];
    *(v5 + 224) = v24;
    *(v5 + 240) = v25;
    v26 = *&v38[36];
    v27 = *&v38[52];
    *(v5 + 292) = *&v38[68];
    *(v5 + 260) = v26;
    *(v5 + 276) = v27;
    v28 = *&v38[72];
    *(v5 + 304) = *&v38[80];
    *(v5 + 296) = v28;
  }

  *(v5 + 312) = *&v38[88];
  v29 = *(v5 + 328);
  if (v29)
  {
    *(v5 + 336) = v29;
    operator delete(v29);
    *(v5 + 328) = 0;
    *(v5 + 336) = 0;
    *(v5 + 344) = 0;
  }

  *(v5 + 328) = *&v38[104];
  *(v5 + 336) = *&v38[112];
  memset(&v38[104], 0, 40);
  v30 = *(v5 + 360);
  *(v5 + 352) = *&v38[128];
  if (v30 && !atomic_fetch_add(&v30->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v30->__on_zero_shared)(v30);
    std::__shared_weak_count::__release_weak(v30);
  }

  v31 = *&v38[144];
  *(v5 + 383) = *&v38[159];
  *(v5 + 368) = v31;
  sub_240236180(time);
  v32 = *(*(*v2 + 408) + 400);
  if (v32)
  {
    (*(*v32 + 40))(v32);
  }

  return 4294944346;
}

void sub_2401BC560(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_240235B2C(va);
  _Unwind_Resume(a1);
}

uint64_t CVAFaceTrackingLiteProcessSecondary(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    return 4294944343;
  }

  v1 = **(a1 + 16);
  v2 = atomic_exchange((*v1 + 448), 0);
  if ((atomic_load_explicit(&qword_280C03A00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03A00))
  {
    qword_280C03978 = os_log_create("com.apple.AppleCVA", "FaceKit");
    __cxa_guard_release(&qword_280C03A00);
  }

  v3 = qword_280C03978;
  if (os_log_type_enabled(qword_280C03978, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    *&buf[4] = v2;
    _os_log_impl(&dword_2401B8000, v3, OS_LOG_TYPE_INFO, "processSecondary called after %u frame(s)", buf, 8u);
  }

  v4 = *(*v1 + 392);
  *buf = 0;
  v11 = 0;
  while ((sub_2402681A0(v4 + 8, buf, 0, 0) & 1) != 0)
  {
    v8 = 0;
    v9 = 0;
    (*(**buf + 16))(*buf, &v8);
    v5 = v9;
    if (v9)
    {
      if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }
  }

  v6 = v11;
  if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  return 0;
}

uint64_t CVAFaceTrackingLiteGetOpaqueOutput(uint64_t result)
{
  if (result)
  {
    v1 = ***(result + 16);
    if (*(v1 + 440))
    {
      return v1 + 416;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t CVAFaceTrackingGetTypeID()
{
  if (qword_280C03968 != -1)
  {
    dispatch_once(&qword_280C03968, &unk_285227AD0);
  }

  return qword_280C039E0;
}

uint64_t sub_2401BC7F8()
{
  qword_280C03980 = 0;
  *algn_280C03988 = "CVAFaceTracking";
  qword_280C03990 = sub_2401BCE08;
  unk_280C03998 = 0;
  qword_280C039A8 = 0;
  unk_280C039B0 = 0;
  qword_280C039A0 = sub_2401BC910;
  qword_280C039B8 = sub_2401BC8C0;
  qword_280C039C0 = sub_2401BC870;
  result = _CFRuntimeRegisterClass();
  qword_280C039E0 = result;
  return result;
}

CFStringRef sub_2401BC870(const void *a1)
{
  v2 = CFGetAllocator(a1);
  v3 = CFGetAllocator(a1);
  return CFStringCreateWithFormat(v2, 0, @"<CVAFaceTracking %p [%p]>", a1, v3);
}

CFStringRef sub_2401BC8C0(const void *a1)
{
  v2 = CFGetAllocator(a1);
  v3 = CFGetAllocator(a1);
  return CFStringCreateWithFormat(v2, 0, @"<CVAFaceTracking %p [%p]>", a1, v3);
}

void sub_2401BC910(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_280C03A00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03A00))
  {
    qword_280C03978 = os_log_create("com.apple.AppleCVA", "FaceKit");
    __cxa_guard_release(&qword_280C03A00);
  }

  v2 = qword_280C03978;
  if (os_log_type_enabled(qword_280C03978, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 134217984;
    v4 = a1;
    _os_log_impl(&dword_2401B8000, v2, OS_LOG_TYPE_DEFAULT, "Finalizing FaceTracking (%p).", &v3, 0xCu);
  }

  if (a1)
  {
    *(a1 + 16) = 0;
    operator new();
  }
}

uint64_t sub_2401BCA8C(uint64_t a1)
{
  v2 = std::__thread_local_data();
  v3 = *a1;
  *a1 = 0;
  pthread_setspecific(v2->__key_, v3);
  v4 = *(a1 + 8);
  if (v4)
  {
    if ((atomic_load_explicit(&qword_280C03A00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03A00))
    {
      qword_280C03978 = os_log_create("com.apple.AppleCVA", "FaceKit");
      __cxa_guard_release(&qword_280C03A00);
    }

    v5 = qword_280C03978;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v25 = 0;
      _os_log_impl(&dword_2401B8000, v5, OS_LOG_TYPE_DEFAULT, "~FaceKit", v25, 2u);
    }

    v6 = *v4;
    *v4 = 0;
    if (v6)
    {
      std::mutex::lock((v6 + 56));
      *(v6 + 168) = 1;
      std::mutex::unlock((v6 + 56));
      v7 = *(v6 + 8);
      v8 = **(v7 + 8);
      std::mutex::lock((v8 + 16));
      *(v8 + 128) = 1;
      std::mutex::unlock((v8 + 16));
      v9 = *(*(v7 + 8) + 24) - *(*(v7 + 8) + 16);
      if ((v9 >> 4) >= 1)
      {
        v10 = 0;
        v11 = (v9 >> 4) & 0x7FFFFFFF;
        do
        {
          sub_24026CDCC(*(*(*(v7 + 8) + 16) + v10), 1);
          v10 += 16;
          --v11;
        }

        while (v11);
      }

      *(v6 + 40) = &unk_285228008;
      if (*(v6 + 192))
      {
        v12 = *(v6 + 184);
        v13 = *(*(v6 + 176) + 8);
        v14 = *v12;
        *(v14 + 8) = v13;
        *v13 = v14;
        *(v6 + 192) = 0;
        if (v12 != (v6 + 176))
        {
          do
          {
            v15 = v12[1];
            v16 = v12[3];
            if (v16 && !atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              v17 = v12;
              (v16->__on_zero_shared)(v16);
              std::__shared_weak_count::__release_weak(v16);
              v12 = v17;
            }

            operator delete(v12);
            v12 = v15;
          }

          while (v15 != (v6 + 176));
        }
      }

      std::condition_variable::~condition_variable((v6 + 120));
      std::mutex::~mutex((v6 + 56));
      v18 = *(v6 + 32);
      if (v18 && !atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v18->__on_zero_shared)(v18);
        std::__shared_weak_count::__release_weak(v18);
      }

      v19 = *(v6 + 16);
      if (v19 && !atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v19->__on_zero_shared)(v19);
        std::__shared_weak_count::__release_weak(v19);
      }

      v20 = *v6;
      *v6 = 0;
      if (v20)
      {
        v21 = sub_240207570(v20);
        MEMORY[0x245CBCA30](v21, 0x20C4093837F09);
      }

      MEMORY[0x245CBCA30](v6, 0x10A0C401DB96910);
    }

    MEMORY[0x245CBCA30](v4, 0x20C4093837F09);
  }

  v22 = *a1;
  *a1 = 0;
  if (v22)
  {
    v23 = MEMORY[0x245CBC800]();
    MEMORY[0x245CBCA30](v23, 0x20C4093837F09);
  }

  MEMORY[0x245CBCA30](a1, 0x20C40A4A59CD2);
  return 0;
}

void sub_2401BCDDC(_Unwind_Exception *a1)
{
  sub_240232B80(v2);
  sub_2401C1DF4((v1 + 3));
  sub_2401C1DF4((v1 + 1));
  sub_240232C78(v1);
  _Unwind_Resume(a1);
}

uint64_t CVAFaceTrackingCreate(uint64_t a1, const void *a2, uint64_t a3)
{
  v33 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    if (qword_280C03968 != -1)
    {
      dispatch_once(&qword_280C03968, &unk_285227AD0);
    }

    if (_CFRuntimeCreateInstance())
    {
      if (a2)
      {
        v4 = CFCopyDescription(a2);
        CStringPtr = CFStringGetCStringPtr(v4, 0x8000100u);
        v6 = strlen(CStringPtr);
        if (v6 >= 0x7FFFFFFFFFFFFFF8)
        {
          sub_2401BDE28();
        }

        v7 = v6;
        if (v6 >= 0x17)
        {
          operator new();
        }

        v32 = v6;
        if (v6)
        {
          memmove(buf, CStringPtr, v6);
        }

        buf[v7] = 0;
        v12 = v32;
        v13 = v32;
        v14 = *buf;
        v15 = v31;
        if ((v32 & 0x80u) == 0)
        {
          v16 = buf;
        }

        else
        {
          v16 = *buf;
        }

        if ((v32 & 0x80u) == 0)
        {
          v17 = v32;
        }

        else
        {
          v17 = v31;
        }

        v18 = &v16[v17];
        v19 = memchr(v16, 10, v17);
        if (v19)
        {
          v20 = v19;
        }

        else
        {
          v20 = v18;
        }

        if (v20 != v18)
        {
          v21 = v20 + 1;
          if (v20 + 1 != v18)
          {
            do
            {
              v22 = *v21;
              if (v22 != 10)
              {
                *v20++ = v22;
              }

              ++v21;
            }

            while (v21 != v18);
            v12 = v32;
            v14 = *buf;
            v15 = v31;
            v13 = v32;
          }
        }

        if ((v13 & 0x80u) == 0)
        {
          v23 = &buf[v12];
        }

        else
        {
          v23 = &v14[v15];
        }

        if ((v13 & 0x80u) == 0)
        {
          v24 = buf;
        }

        else
        {
          v24 = v14;
        }

        if ((v13 & 0x80u) == 0)
        {
          v25 = v12;
        }

        else
        {
          v25 = v15;
        }

        v26 = v20 - v24;
        if (v25 < v20 - v24)
        {
          sub_2401BDE28();
        }

        if (v23 - v20 == -1)
        {
          if ((v13 & 0x80) != 0)
          {
            v31 = v20 - v24;
          }

          else
          {
            v32 = v26 & 0x7F;
            v14 = buf;
          }

          v14[v26] = 0;
        }

        else
        {
          sub_2401BDE38(buf, v26, v23 - v20);
        }

        CFRelease(v4);
        if ((atomic_load_explicit(&qword_280C03A00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03A00))
        {
          qword_280C03978 = os_log_create("com.apple.AppleCVA", "FaceKit");
          __cxa_guard_release(&qword_280C03A00);
        }

        v27 = qword_280C03978;
        if (os_log_type_enabled(qword_280C03978, OS_LOG_TYPE_DEFAULT))
        {
          v28 = buf;
          if ((v32 & 0x80u) != 0)
          {
            v28 = *buf;
          }

          *v29 = 136315138;
          *&v29[4] = v28;
          _os_log_impl(&dword_2401B8000, v27, OS_LOG_TYPE_DEFAULT, "Creating FaceKit with options: %s", v29, 0xCu);
        }

        if (v32 < 0)
        {
          operator delete(*buf);
        }
      }

      else
      {
        if ((atomic_load_explicit(&qword_280C03A00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03A00))
        {
          qword_280C03978 = os_log_create("com.apple.AppleCVA", "FaceKit");
          __cxa_guard_release(&qword_280C03A00);
        }

        v11 = qword_280C03978;
        if (os_log_type_enabled(qword_280C03978, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_2401B8000, v11, OS_LOG_TYPE_DEFAULT, "Creating FaceKit with *default* options (user has given no options).", buf, 2u);
        }
      }

      operator new();
    }

    if ((atomic_load_explicit(&qword_280C03A00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03A00))
    {
      qword_280C03978 = os_log_create("com.apple.AppleCVA", "FaceKit");
      __cxa_guard_release(&qword_280C03A00);
    }

    v10 = qword_280C03978;
    if (os_log_type_enabled(qword_280C03978, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2401B8000, v10, OS_LOG_TYPE_ERROR, "out of memory when creating instance.", buf, 2u);
    }

    return 4294944342;
  }

  else
  {
    if ((atomic_load_explicit(&qword_280C03A00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03A00))
    {
      qword_280C03978 = os_log_create("com.apple.AppleCVA", "FaceKit");
      __cxa_guard_release(&qword_280C03A00);
    }

    v8 = qword_280C03978;
    if (os_log_type_enabled(qword_280C03978, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2401B8000, v8, OS_LOG_TYPE_ERROR, "invalid argument for handle.", buf, 2u);
    }

    return 4294944343;
  }
}

void sub_2401BDD08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57)
{
  cva::ItemHandler::~ItemHandler(&a57);
  cva::DictionaryHandler::~DictionaryHandler(&a17);
  sub_240232B80(a11);
  sub_2401C1DF4(a16);
  sub_2401C1DF4(a12);
  sub_240232C78(v57);
  MEMORY[0x245CBCA30](v57, 0x10A0C401DB96910);
  _Unwind_Resume(a1);
}

uint64_t *sub_2401BDE38(uint64_t *result, uint64_t a2, unint64_t a3)
{
  if (a3)
  {
    v3 = *(result + 23);
    v4 = v3;
    v5 = result;
    if (v3 < 0)
    {
      v5 = *result;
      v4 = result[1];
    }

    if (v4 - a2 >= a3)
    {
      v6 = a3;
    }

    else
    {
      v6 = v4 - a2;
    }

    if (v4 - a2 > a3)
    {
      v7 = result;
      memmove(v5 + a2, v5 + a2 + v6, v4 - a2 - v6);
      result = v7;
      LOBYTE(v3) = *(v7 + 23);
    }

    v8 = v4 - v6;
    if ((v3 & 0x80) != 0)
    {
      result[1] = v8;
    }

    else
    {
      *(result + 23) = v8 & 0x7F;
    }

    *(v5 + v8) = 0;
  }

  return result;
}

uint64_t CVAFaceTrackingProcess(uint64_t a1, const __CFDictionary *a2)
{
  if (!a1)
  {
    if ((atomic_load_explicit(&qword_280C03A00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03A00))
    {
      qword_280C03978 = os_log_create("com.apple.AppleCVA", "FaceKit");
      __cxa_guard_release(&qword_280C03A00);
    }

    v3 = qword_280C03978;
    if (!os_log_type_enabled(qword_280C03978, OS_LOG_TYPE_ERROR))
    {
      return 4294944343;
    }

    v9 = 0;
    v4 = "invalid argument for handle.";
    v5 = &v9;
    goto LABEL_16;
  }

  if (!a2)
  {
    if ((atomic_load_explicit(&qword_280C03A00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03A00))
    {
      qword_280C03978 = os_log_create("com.apple.AppleCVA", "FaceKit");
      __cxa_guard_release(&qword_280C03A00);
    }

    v3 = qword_280C03978;
    if (!os_log_type_enabled(qword_280C03978, OS_LOG_TYPE_ERROR))
    {
      return 4294944343;
    }

    *buf = 0;
    v4 = "invalid argument for params.";
    v5 = buf;
LABEL_16:
    _os_log_error_impl(&dword_2401B8000, v3, OS_LOG_TYPE_ERROR, v4, v5, 2u);
    return 4294944343;
  }

  if (sub_240233A74(*(a1 + 16), a2))
  {
    return 0;
  }

  if ((atomic_load_explicit(&qword_280C03A00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03A00))
  {
    qword_280C03978 = os_log_create("com.apple.AppleCVA", "FaceKit");
    __cxa_guard_release(&qword_280C03A00);
  }

  v6 = qword_280C03978;
  if (os_log_type_enabled(qword_280C03978, OS_LOG_TYPE_ERROR))
  {
    *v7 = 0;
    _os_log_error_impl(&dword_2401B8000, v6, OS_LOG_TYPE_ERROR, "frame was not processed.", v7, 2u);
  }

  return 4294944346;
}

uint64_t CVAFaceTrackingCopySemantics(__CFDictionary *a1, void *a2)
{
  if (a2)
  {
    cva::DictionaryHandler::DictionaryHandler(buf, a1);
    sub_2402255F0(v9);
    v3 = v9[1];
    if (v9[0])
    {
      Dictionary = cva::DictionaryHandler::getDictionary(v9[0]);
      *a2 = Dictionary;
      CFRetain(Dictionary);
      v5 = 0;
      if (!v3)
      {
LABEL_15:
        cva::DictionaryHandler::~DictionaryHandler(buf);
        return v5;
      }
    }

    else
    {
      if ((atomic_load_explicit(&qword_280C03A00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03A00))
      {
        qword_280C03978 = os_log_create("com.apple.AppleCVA", "FaceKit");
        __cxa_guard_release(&qword_280C03A00);
      }

      v7 = qword_280C03978;
      if (os_log_type_enabled(qword_280C03978, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v9[0]) = 0;
        _os_log_error_impl(&dword_2401B8000, v7, OS_LOG_TYPE_ERROR, "error while creating semantics.", v9, 2u);
      }

      v5 = 4294944346;
      if (!v3)
      {
        goto LABEL_15;
      }
    }

    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
    }

    goto LABEL_15;
  }

  if ((atomic_load_explicit(&qword_280C03A00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03A00))
  {
    qword_280C03978 = os_log_create("com.apple.AppleCVA", "FaceKit");
    __cxa_guard_release(&qword_280C03A00);
  }

  v6 = qword_280C03978;
  if (os_log_type_enabled(qword_280C03978, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_2401B8000, v6, OS_LOG_TYPE_ERROR, "invalid argument for output.", buf, 2u);
  }

  return 4294944343;
}

uint64_t CVAFaceTrackingPostProcessRecordingExt(const __CFDictionary *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8, void *a9)
{
  v64 = *MEMORY[0x277D85DE8];
  if (a2 && a3 && a4 && a6 && a7 && a8 && (!a5 || a9))
  {
    context = objc_autoreleasePoolPush();
    cva::DictionaryHandler::DictionaryHandler(v60, a1);
    v17 = a2;
    v18 = a3;
    v58 = a4;
    v57 = a5;
    v19 = a6;
    v55 = a7;
    v56 = a8;
    v54 = a9;
    v20 = [v17 length];
    v21 = v20 >> 3;
    if ((v20 >> 3) <= 0)
    {
      if ((atomic_load_explicit(&qword_280C03A00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03A00))
      {
        qword_280C03978 = os_log_create("com.apple.AppleCVA", "FaceKit");
        __cxa_guard_release(&qword_280C03A00);
      }

      v35 = qword_280C03978;
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        v36 = [v17 length];
        *buf = 67109120;
        *&buf[4] = v36;
        _os_log_error_impl(&dword_2401B8000, v35, OS_LOG_TYPE_ERROR, "invalid recording (timestamp array incorrect: %d)", buf, 8u);
      }
    }

    else
    {
      v22 = [v19 length];
      v23 = v22 >> 3;
      if ((v22 >> 3) <= 0)
      {
        if ((atomic_load_explicit(&qword_280C03A00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03A00))
        {
          qword_280C03978 = os_log_create("com.apple.AppleCVA", "FaceKit");
          __cxa_guard_release(&qword_280C03A00);
        }

        v34 = qword_280C03978;
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_2401B8000, v34, OS_LOG_TYPE_ERROR, "invalid recording (filtered timestamp array incorrect)", buf, 2u);
        }
      }

      else
      {
        v24 = (v20 >> 3) & 0x7FFFFFFF;
        if ([v17 length] == 8 * v24)
        {
          if ([v18 length] == v24 << 6)
          {
            if (204 * v24 == [v58 length])
            {
              if (a5 && 4 * v24 != [v57 length])
              {
                v34 = sub_24024BD20();
                if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
                {
                  *buf = 0;
                  _os_log_error_impl(&dword_2401B8000, v34, OS_LOG_TYPE_ERROR, "incorrect size of tongue", buf, 2u);
                }
              }

              else if ([v19 length] == 8 * ((v22 >> 3) & 0x7FFFFFFF))
              {
                v25 = (v22 >> 3) & 0x7FFFFFFF;
                v26 = v17;
                v27 = [v17 bytes];
                if (v21 <= 2)
                {
                  v28 = 2;
                }

                else
                {
                  v28 = v21;
                }

                v29 = (v28 - 1);
                v30 = (v27 + 16);
                v31 = v29 - 1;
                while (v31)
                {
                  v32 = *(v30 - 1);
                  if (v32 > *(v30 - 2))
                  {
                    v33 = *v30++;
                    --v31;
                    if (v32 < v33)
                    {
                      continue;
                    }
                  }

                  v34 = sub_24024BD20();
                  if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 0;
                    _os_log_error_impl(&dword_2401B8000, v34, OS_LOG_TYPE_ERROR, "invalid timestamps", buf, 2u);
                  }

                  goto LABEL_51;
                }

                v39 = v19;
                v40 = [v19 bytes];
                if (v23 <= 2)
                {
                  v41 = 2;
                }

                else
                {
                  v41 = v22 >> 3;
                }

                v42 = (v41 - 1);
                v43 = (v40 + 16);
                v44 = v42 - 1;
                do
                {
                  if (!v44)
                  {
                    [v55 setLength:v25 << 6];
                    [v56 setLength:(204 * v23) & 0x3FFFFFFFCLL];
                    [v54 setLength:4 * v25];
                    v47 = v18;
                    [v18 bytes];
                    v48 = v58;
                    [v58 bytes];
                    if (a5)
                    {
                      v49 = v57;
                      [v57 bytes];
                    }

                    v50 = v55;
                    [v55 mutableBytes];
                    v51 = v56;
                    [v56 mutableBytes];
                    if (a9)
                    {
                      v52 = v54;
                      [v54 mutableBytes];
                    }

                    sub_240222D60();
                    sub_240222FB8();
                    sub_240222D60();
                    sub_240222D60();
                    sub_240222D60();
                    sub_240222D60();
                    sub_240222D60();
                    sub_240222D60();
                    sub_240222D60();
                    sub_240222D60();
                    if (cva::DictionaryHandler::hasKey(v60, @"postprocessing_rotation_std"))
                    {
                      cva::DictionaryHandler::item(buf, v60, @"postprocessing_rotation_std");
                      cva::ItemHandler::getValue<float>();
                    }

                    if (cva::DictionaryHandler::hasKey(v60, @"postprocessing_translation_std"))
                    {
                      cva::DictionaryHandler::item(buf, v60, @"postprocessing_translation_std");
                      cva::ItemHandler::getValue<float>();
                    }

                    if (cva::DictionaryHandler::hasKey(v60, @"postprocessing_blendshape_std"))
                    {
                      cva::DictionaryHandler::item(buf, v60, @"postprocessing_blendshape_std");
                      cva::ItemHandler::getValue<float>();
                    }

                    if (cva::DictionaryHandler::hasKey(v60, @"postprocessing_blendshape_brow_multiplier"))
                    {
                      cva::DictionaryHandler::item(buf, v60, @"postprocessing_blendshape_brow_multiplier");
                      cva::ItemHandler::getValue<float>();
                    }

                    if (cva::DictionaryHandler::hasKey(v60, @"postprocessing_blendshape_eye_multiplier"))
                    {
                      cva::DictionaryHandler::item(buf, v60, @"postprocessing_blendshape_eye_multiplier");
                      cva::ItemHandler::getValue<float>();
                    }

                    if (cva::DictionaryHandler::hasKey(v60, @"postprocessing_blendshape_mouth_multiplier"))
                    {
                      cva::DictionaryHandler::item(buf, v60, @"postprocessing_blendshape_mouth_multiplier");
                      cva::ItemHandler::getValue<float>();
                    }

                    if (cva::DictionaryHandler::hasKey(v60, @"postprocessing_time_std"))
                    {
                      cva::DictionaryHandler::item(buf, v60, @"postprocessing_time_std");
                      cva::ItemHandler::getValue<double>();
                    }

                    if (cva::DictionaryHandler::hasKey(v60, @"postprocessing_kernel_size"))
                    {
                      cva::DictionaryHandler::item(buf, v60, @"postprocessing_kernel_size");
                      cva::ItemHandler::getValue<int>();
                    }

                    *buf = 0;
                    v62 = 0;
                    v63 = 0;
                    sub_24022C62C(v59);
                    sub_24022B740(v59, buf);
                  }

                  v45 = *(v43 - 1);
                  if (v45 <= *(v43 - 2))
                  {
                    break;
                  }

                  v46 = *v43++;
                  --v44;
                }

                while (v45 < v46);
                v34 = sub_24024BD20();
                if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
                {
                  *buf = 0;
                  _os_log_error_impl(&dword_2401B8000, v34, OS_LOG_TYPE_ERROR, "invalid timestamps", buf, 2u);
                }
              }

              else
              {
                v34 = sub_24024BD20();
                if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
                {
                  *buf = 0;
                  _os_log_error_impl(&dword_2401B8000, v34, OS_LOG_TYPE_ERROR, "incorrect size of filtered timestamps", buf, 2u);
                }
              }
            }

            else
            {
              v34 = sub_24024BD20();
              if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_error_impl(&dword_2401B8000, v34, OS_LOG_TYPE_ERROR, "incorrect size of blendshapes", buf, 2u);
              }
            }
          }

          else
          {
            if ((atomic_load_explicit(&qword_280C03A00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03A00))
            {
              qword_280C03978 = os_log_create("com.apple.AppleCVA", "FaceKit");
              __cxa_guard_release(&qword_280C03A00);
            }

            v34 = qword_280C03978;
            if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&dword_2401B8000, v34, OS_LOG_TYPE_ERROR, "incorrect size of pose", buf, 2u);
            }
          }
        }

        else
        {
          if ((atomic_load_explicit(&qword_280C03A00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03A00))
          {
            qword_280C03978 = os_log_create("com.apple.AppleCVA", "FaceKit");
            __cxa_guard_release(&qword_280C03A00);
          }

          v34 = qword_280C03978;
          if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_2401B8000, v34, OS_LOG_TYPE_ERROR, "incorrect size of timestamps", buf, 2u);
          }
        }
      }

LABEL_51:
    }

    cva::DictionaryHandler::~DictionaryHandler(v60);
    objc_autoreleasePoolPop(context);
  }

  if ((atomic_load_explicit(&qword_280C03A00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03A00))
  {
    qword_280C03978 = os_log_create("com.apple.AppleCVA", "FaceKit");
    __cxa_guard_release(&qword_280C03A00);
  }

  v37 = qword_280C03978;
  if (os_log_type_enabled(qword_280C03978, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_2401B8000, v37, OS_LOG_TYPE_ERROR, "Postprocessing was not successful.", buf, 2u);
  }

  return 4294944346;
}

void sub_2401BEE5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, void *a21, void *a22, void *a23, void *a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, char a29)
{
  cva::ItemHandler::~ItemHandler(&a29);

  cva::DictionaryHandler::~DictionaryHandler(&a27);
  _Unwind_Resume(a1);
}

uint64_t CVAFaceTrackingGetErrorDescription(int a1)
{
  v7 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_27E3C8A08, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E3C8A08))
  {
    sub_240231660();
  }

  v2 = qword_27E3C89F8;
  if (qword_27E3C89F8)
  {
    v3 = &qword_27E3C89F8;
    do
    {
      if (*(v2 + 32) >= a1)
      {
        v3 = v2;
      }

      v2 = *(v2 + 8 * (*(v2 + 32) < a1));
    }

    while (v2);
    if (v3 != &qword_27E3C89F8 && *(v3 + 8) <= a1)
    {
      return v3[5];
    }
  }

  if ((atomic_load_explicit(&qword_280C03A00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03A00))
  {
    qword_280C03978 = os_log_create("com.apple.AppleCVA", "FaceKit");
    __cxa_guard_release(&qword_280C03A00);
  }

  v4 = qword_280C03978;
  if (os_log_type_enabled(qword_280C03978, OS_LOG_TYPE_ERROR))
  {
    v6[0] = 67109120;
    v6[1] = a1;
    _os_log_error_impl(&dword_2401B8000, v4, OS_LOG_TYPE_ERROR, "unknown failure type %d", v6, 8u);
  }

  return 0;
}

uint64_t CVAViewpointCorrectionGetTypeID()
{
  if (qword_280C03838 != -1)
  {
    dispatch_once(&qword_280C03838, &unk_285227AF0);
  }

  return qword_280C038B8;
}

uint64_t sub_2401BF10C()
{
  qword_280C03858 = 0;
  unk_280C03860 = "CVAViewpointCorrection";
  qword_280C03868 = sub_2401BF610;
  unk_280C03870 = 0;
  qword_280C03880 = 0;
  unk_280C03888 = 0;
  qword_280C03878 = sub_2401BF224;
  qword_280C03890 = sub_2401BF1D4;
  qword_280C03898 = sub_2401BF184;
  result = _CFRuntimeRegisterClass();
  qword_280C038B8 = result;
  return result;
}

CFStringRef sub_2401BF184(const void *a1)
{
  v2 = CFGetAllocator(a1);
  v3 = CFGetAllocator(a1);
  return CFStringCreateWithFormat(v2, 0, @"<CVAViewpointCorrection %p [%p]>", a1, v3);
}

CFStringRef sub_2401BF1D4(const void *a1)
{
  v2 = CFGetAllocator(a1);
  v3 = CFGetAllocator(a1);
  return CFStringCreateWithFormat(v2, 0, @"<CVAViewpointCorrection %p [%p]>", a1, v3);
}

void sub_2401BF224(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_280C03940, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03940))
  {
    qword_280C03850 = os_log_create("com.apple.AppleCVA", "ViewpointCorrection");
    __cxa_guard_release(&qword_280C03940);
  }

  v2 = qword_280C03850;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    *&buf[4] = a1;
    _os_log_impl(&dword_2401B8000, v2, OS_LOG_TYPE_DEFAULT, "Finalizing CVAViewpointCorrection (%p).", buf, 0xCu);
  }

  if (a1)
  {
    *(a1 + 16) = 0;
    operator new();
  }
}

void sub_2401BF3CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2401BF478(va);
  _Unwind_Resume(a1);
}

uint64_t **sub_2401BF40C(uint64_t **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = *v1;
    *v1 = 0;
    if (v3)
    {
      v4 = MEMORY[0x245CBC800]();
      MEMORY[0x245CBCA30](v4, 0x20C4093837F09);
    }

    MEMORY[0x245CBCA30](v1, 0x20C40A4A59CD2);
    return v2;
  }

  return result;
}

void *sub_2401BF478(void *a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    v4 = MEMORY[0x245CBC800]();
    MEMORY[0x245CBCA30](v4, 0x20C4093837F09);
    return v3;
  }

  return v1;
}

uint64_t sub_2401BF4CC(uint64_t a1)
{
  v2 = std::__thread_local_data();
  v3 = *a1;
  *a1 = 0;
  pthread_setspecific(v2->__key_, v3);
  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = sub_2401E408C(v4);
    MEMORY[0x245CBCA30](v5, 0x10A0C40D750F2E3);
  }

  if ((atomic_load_explicit(&qword_280C03940, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03940))
  {
    qword_280C03850 = os_log_create("com.apple.AppleCVA", "ViewpointCorrection");
    __cxa_guard_release(&qword_280C03940);
  }

  v6 = qword_280C03850;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2401B8000, v6, OS_LOG_TYPE_DEFAULT, "~ViewpointCorrectionPipeline.", buf, 2u);
  }

  v7 = *a1;
  *a1 = 0;
  if (v7)
  {
    v8 = MEMORY[0x245CBC800]();
    MEMORY[0x245CBCA30](v8, 0x20C4093837F09);
  }

  MEMORY[0x245CBCA30](a1, 0x20C40A4A59CD2);
  return 0;
}

void sub_2401BF5FC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2401BF40C(va);
  _Unwind_Resume(a1);
}

void CVAViewpointCorrectionCreate(uint64_t a1, CFTypeRef cf, uint64_t a3)
{
  v10 = *MEMORY[0x277D85DE8];
  if (cf)
  {
    v3 = CFCopyDescription(cf);
    v4 = [v3 stringByReplacingOccurrencesOfString:@"\n" withString:&stru_285229D28, a1, a3];
    if ((atomic_load_explicit(&qword_280C03940, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03940))
    {
      qword_280C03850 = os_log_create("com.apple.AppleCVA", "ViewpointCorrection");
      __cxa_guard_release(&qword_280C03940);
    }

    v5 = qword_280C03850;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      buf = 136315138;
      *buf_4 = [v4 UTF8String];
      _os_log_impl(&dword_2401B8000, v5, OS_LOG_TYPE_DEFAULT, "Creating CVAViewpointCorrection with options: %s.", &buf, 0xCu);
    }
  }

  else
  {
    if ((atomic_load_explicit(&qword_280C03940, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03940))
    {
      qword_280C03850 = os_log_create("com.apple.AppleCVA", "ViewpointCorrection");
      __cxa_guard_release(&qword_280C03940);
    }

    v3 = qword_280C03850;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_2401B8000, v3, OS_LOG_TYPE_DEFAULT, "Creating CVAViewpointCorrection with *default* options (user has given no options).", &buf, 2u);
    }
  }

  operator new();
}

void sub_2401C00D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va2, a5);
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, uint64_t *);
  va_copy(va2, va1);
  v8 = va_arg(va2, void);
  sub_2401D1E44(va1);
  sub_2401CAF84(va2);
  sub_2401C0190(va);
  _Unwind_Resume(a1);
}

uint64_t **sub_2401C0190(uint64_t **a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    v4 = sub_2401E408C(v2);
    MEMORY[0x245CBCA30](v4, 0x10A0C40D750F2E3);
    return v3;
  }

  return v1;
}

uint64_t CVAViewpointCorrectionProcess(uint64_t a1, uint64_t a2)
{
  v5 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    if (a2)
    {
      operator new();
    }

    if ((atomic_load_explicit(&qword_280C03940, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03940))
    {
      qword_280C03850 = os_log_create("com.apple.AppleCVA", "ViewpointCorrection");
      __cxa_guard_release(&qword_280C03940);
    }

    v2 = qword_280C03850;
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2401B8000, v2, OS_LOG_TYPE_ERROR, "invalid argument for params.", buf, 2u);
    }
  }

  else
  {
    if ((atomic_load_explicit(&qword_280C03940, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03940))
    {
      qword_280C03850 = os_log_create("com.apple.AppleCVA", "ViewpointCorrection");
      __cxa_guard_release(&qword_280C03940);
    }

    v2 = qword_280C03850;
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2401B8000, v2, OS_LOG_TYPE_ERROR, "invalid argument for handle.", buf, 2u);
    }
  }

  return 4294944343;
}

void sub_2401C1CCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  sub_2401C1DF4(v11 - 144);
  cva::ItemHandler::~ItemHandler(va1);
  sub_2401C1DF4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2401C1DF4(uint64_t result)
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

uint64_t CVAFaceTrackingLiteFilterGetTypeID()
{
  if (atomic_load_explicit(&qword_27E3C88D0, memory_order_acquire))
  {
    return qword_27E3C88C8;
  }

  v1 = __cxa_guard_acquire(&qword_27E3C88D0);
  v2 = 0x27E3C8000;
  if (v1)
  {
    qword_27E3C88C8 = sub_2401C1ED8();
    __cxa_guard_release(&qword_27E3C88D0);
    v2 = 0x27E3C8000uLL;
  }

  return *(v2 + 2248);
}

uint64_t sub_2401C1ED8()
{
  qword_27E3C88D8 = 0;
  unk_27E3C88E0 = "CVAFaceTrackingLiteFilter";
  qword_27E3C88E8 = sub_2401C2070;
  unk_27E3C88F0 = 0;
  qword_27E3C8900 = 0;
  unk_27E3C8908 = 0;
  qword_27E3C88F8 = sub_2401C1FD4;
  qword_27E3C8910 = sub_2401C1F84;
  qword_27E3C8918 = sub_2401C1F34;
  return _CFRuntimeRegisterClass();
}

CFStringRef sub_2401C1F34(const void *a1)
{
  v2 = CFGetAllocator(a1);
  v3 = CFGetAllocator(a1);
  return CFStringCreateWithFormat(v2, 0, @"<CVAFaceTrackingLiteFilter %p [%p]>", a1, v3);
}

CFStringRef sub_2401C1F84(const void *a1)
{
  v2 = CFGetAllocator(a1);
  v3 = CFGetAllocator(a1);
  return CFStringCreateWithFormat(v2, 0, @"<CVAFaceTrackingLiteFilter %p [%p]>", a1, v3);
}

uint64_t sub_2401C1FD4(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 16);
    if (v2)
    {
      v3 = *v2;
      if (*v2)
      {
        v4 = *(v3 + 256);
        if (v4)
        {

          MEMORY[0x245CBCA30](v4, 0x80C40B8603338);
        }

        MEMORY[0x245CBCA30](v3, 0x1020C40D05FF931);
      }

      result = MEMORY[0x245CBCA30](v2, 0x20C4093837F09);
    }

    *(v1 + 16) = 0;
  }

  return result;
}

uint64_t CVAFaceTrackingLiteFilterCreate(uint64_t a1, void *a2)
{
  if (!a2 || *a2)
  {
    return 4294944343;
  }

  if ((atomic_load_explicit(&qword_27E3C88D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E3C88D0))
  {
    qword_27E3C88C8 = sub_2401C1ED8();
    __cxa_guard_release(&qword_27E3C88D0);
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    return 4294944342;
  }

  v4 = Instance;
  v5 = operator new(8uLL, MEMORY[0x277D826F0]);
  if (v5)
  {
    *v5 = 0;
    operator new();
  }

  v4[2] = 0;
  CFRelease(v4);
  return 4294944342;
}

uint64_t CVAFaceTrackingLiteFilterProcess(uint64_t a1, uint64_t a2)
{
  result = 4294944343;
  if (a1 && a2)
  {
    if (sub_24024A078(*(a1 + 16), *a2, *(a2 + 16)))
    {
      return 0;
    }

    else
    {
      return 4294944346;
    }
  }

  return result;
}

uint64_t CVAFaceTrackingLiteFilterProcessVanilla(uint64_t a1, const __CFDictionary *a2)
{
  v2 = 4294944343;
  if (a1 && a2)
  {
    cva::DictionaryHandler::DictionaryHandler(v5, a2);
    if (sub_24024A078(*(a1 + 16), v5, 0))
    {
      v2 = 0;
    }

    else
    {
      v2 = 4294944346;
    }

    cva::DictionaryHandler::~DictionaryHandler(v5);
  }

  return v2;
}

uint64_t CVAFaceTrackingLiteFilterGetOutput(uint64_t result)
{
  if (result)
  {
    if (*(**(result + 16) + 248))
    {
      return **(result + 16);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t CVAFaceTrackingLiteFilterCopyDecodedOutput(uint64_t a1, void *a2, uint64_t a3)
{
  v11 = *MEMORY[0x277D85DE8];
  result = 4294944343;
  if (a1 && a2 && a3 && !*a2)
  {
    cva::DictionaryHandler::DictionaryHandler(v7);
    cva::DictionaryHandler::DictionaryHandler(v6);
    cva::DictionaryHandler::DictionaryHandler(v9);
    *&v10.timescale = 8;
    memptr[0] = 0;
    malloc_type_posix_memalign(memptr, 0x20uLL, 0x20uLL, 0xE1AC2527uLL);
    v5 = memptr[0];
    v10.value = memptr[0];
    LODWORD(v10.epoch) = 3;
    *memptr[0] = 8;
    v5[2] = 0;
    cva::ItemHandler::createVector<unsigned int>();
  }

  return result;
}

uint64_t CVAFaceTrackingLiteFilterClientAccessibilityGetTypeID()
{
  if (atomic_load_explicit(&qword_27E3C8940, memory_order_acquire))
  {
    return qword_27E3C8938;
  }

  v1 = __cxa_guard_acquire(&qword_27E3C8940);
  v2 = 0x27E3C8000;
  if (v1)
  {
    qword_27E3C8938 = sub_2401C2CC0();
    __cxa_guard_release(&qword_27E3C8940);
    v2 = 0x27E3C8000uLL;
  }

  return *(v2 + 2360);
}

uint64_t sub_2401C2CC0()
{
  qword_27E3C8948 = 0;
  unk_27E3C8950 = "CVAFaceTrackingLiteFilterClientAccessibility";
  qword_27E3C8958 = sub_2401C2E38;
  unk_27E3C8960 = 0;
  qword_27E3C8970 = 0;
  unk_27E3C8978 = 0;
  qword_27E3C8968 = sub_2401C2DBC;
  qword_27E3C8980 = sub_2401C2D6C;
  qword_27E3C8988 = sub_2401C2D1C;
  return _CFRuntimeRegisterClass();
}

CFStringRef sub_2401C2D1C(const void *a1)
{
  v2 = CFGetAllocator(a1);
  v3 = CFGetAllocator(a1);
  return CFStringCreateWithFormat(v2, 0, @"<CVAFaceTrackingLiteFilterClientAccessibility %p [%p]>", a1, v3);
}

CFStringRef sub_2401C2D6C(const void *a1)
{
  v2 = CFGetAllocator(a1);
  v3 = CFGetAllocator(a1);
  return CFStringCreateWithFormat(v2, 0, @"<CVAFaceTrackingLiteFilterClientAccessibility %p [%p]>", a1, v3);
}

uint64_t sub_2401C2DBC(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 16);
    if (v2)
    {
      v3 = *v2;
      if (*v2)
      {

        MEMORY[0x245CBCA30](v3, 0x80C40B8603338);
      }

      result = MEMORY[0x245CBCA30](v2, 0x20C4093837F09);
    }

    *(v1 + 16) = 0;
  }

  return result;
}

uint64_t CVAFaceTrackingLiteFilterClientAccessibilityCreate(uint64_t a1, void *a2)
{
  if (!a2 || *a2)
  {
    return 4294944343;
  }

  if ((atomic_load_explicit(&qword_27E3C8940, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E3C8940))
  {
    qword_27E3C8938 = sub_2401C2CC0();
    __cxa_guard_release(&qword_27E3C8940);
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    return 4294944342;
  }

  v4 = Instance;
  v5 = operator new(8uLL, MEMORY[0x277D826F0]);
  if (v5)
  {
    *v5 = 0;
    operator new();
  }

  v4[2] = 0;
  CFRelease(v4);
  return 4294944342;
}

uint64_t CVAFaceTrackingLiteFilterClientAccessibilityProcess(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = 4294944343;
  if (a1 && a2)
  {
    if (a3)
    {
      sub_240232110(*(a1 + 16), a2, a3);
      return 0;
    }
  }

  return result;
}

uint64_t CVAFaceTrackingLiteFilterClientAccessibilityCopyDecodedOutput(uint64_t a1)
{
  if (a1)
  {
    return sub_2402327F4(a1);
  }

  return a1;
}

void *sub_2401C2FCC(_BYTE *a1, const void *a2, unint64_t a3)
{
  if (a3 > 0x16)
  {
    if (a3 < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    sub_2401BDE28();
  }

  a1[23] = a3;
  v3 = a3 + 1;

  return memmove(a1, a2, v3);
}

uint64_t CVASegmentationGetTypeID()
{
  if (qword_280C03840 != -1)
  {
    dispatch_once(&qword_280C03840, &unk_285227B10);
  }

  return qword_280C03920;
}

uint64_t sub_2401C30B0()
{
  qword_280C038C0 = 0;
  *algn_280C038C8 = "CVASegmentation";
  qword_280C038D0 = sub_2401C35A8;
  unk_280C038D8 = 0;
  qword_280C038E8 = 0;
  unk_280C038F0 = 0;
  qword_280C038E0 = sub_2401C31C8;
  qword_280C038F8 = sub_2401C3178;
  qword_280C03900 = sub_2401C3128;
  result = _CFRuntimeRegisterClass();
  qword_280C03920 = result;
  return result;
}

CFStringRef sub_2401C3128(const void *a1)
{
  v2 = CFGetAllocator(a1);
  v3 = CFGetAllocator(a1);
  return CFStringCreateWithFormat(v2, 0, @"<CVASegmentation %p [%p]>", a1, v3);
}

CFStringRef sub_2401C3178(const void *a1)
{
  v2 = CFGetAllocator(a1);
  v3 = CFGetAllocator(a1);
  return CFStringCreateWithFormat(v2, 0, @"<CVASegmentation %p [%p]>", a1, v3);
}

uint64_t sub_2401C31C8(uint64_t result)
{
  if (result)
  {
    *(result + 16) = 0;
    operator new();
  }

  return result;
}

uint64_t sub_2401C3284(uint64_t a1)
{
  v2 = std::__thread_local_data();
  v3 = *a1;
  *a1 = 0;
  pthread_setspecific(v2->__key_, v3);
  v4 = *(a1 + 8);
  if (v4)
  {
    if ((atomic_load_explicit(&qword_280C03938, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03938))
    {
      qword_280C03848 = os_log_create("com.apple.AppleCVA", "Segmentation");
      __cxa_guard_release(&qword_280C03938);
    }

    v5 = qword_280C03848;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *v24 = 0;
      _os_log_debug_impl(&dword_2401B8000, v5, OS_LOG_TYPE_DEBUG, "~Segmentation", v24, 2u);
    }

    v6 = *v4;
    *v4 = 0;
    if (v6)
    {
      v7 = *(v6 + 8);
      v8 = **(v7 + 8);
      std::mutex::lock((v8 + 16));
      *(v8 + 128) = 1;
      std::mutex::unlock((v8 + 16));
      v9 = *(*(v7 + 8) + 24) - *(*(v7 + 8) + 16);
      if ((v9 >> 4) >= 1)
      {
        v10 = 0;
        v11 = (v9 >> 4) & 0x7FFFFFFF;
        do
        {
          sub_24026CDCC(*(*(*(v7 + 8) + 16) + v10), 1);
          v10 += 16;
          --v11;
        }

        while (v11);
      }

      *(v6 + 24) = &unk_285227118;
      if (*(v6 + 176))
      {
        v12 = *(v6 + 168);
        v13 = *(*(v6 + 160) + 8);
        v14 = *v12;
        *(v14 + 8) = v13;
        *v13 = v14;
        *(v6 + 176) = 0;
        if (v12 != (v6 + 160))
        {
          do
          {
            v15 = v12[1];
            v16 = v12[3];
            if (v16 && !atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              v17 = v12;
              (v16->__on_zero_shared)(v16);
              std::__shared_weak_count::__release_weak(v16);
              v12 = v17;
            }

            operator delete(v12);
            v12 = v15;
          }

          while (v15 != (v6 + 160));
        }
      }

      std::condition_variable::~condition_variable((v6 + 104));
      std::mutex::~mutex((v6 + 40));
      v18 = *(v6 + 16);
      if (v18 && !atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v18->__on_zero_shared)(v18);
        std::__shared_weak_count::__release_weak(v18);
      }

      v19 = *v6;
      *v6 = 0;
      if (v19)
      {
        v20 = *v19;
        *v19 = 0;
        if (v20)
        {
          sub_2401C6440(*(v20 + 8));
          MEMORY[0x245CBCA30](v20, 0x1020C4062D53EE8);
        }

        MEMORY[0x245CBCA30](v19, 0x20C4093837F09);
      }

      MEMORY[0x245CBCA30](v6, 0x10A0C40F9FBC3BELL);
    }

    MEMORY[0x245CBCA30](v4, 0x20C4093837F09);
  }

  v21 = *a1;
  *a1 = 0;
  if (v21)
  {
    v22 = MEMORY[0x245CBC800]();
    MEMORY[0x245CBCA30](v22, 0x20C4093837F09);
  }

  MEMORY[0x245CBCA30](a1, 0x20C40A4A59CD2);
  return 0;
}

uint64_t CVASegmentationCreate(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v7 = *MEMORY[0x277D85DE8];
  if (qword_280C03840 != -1)
  {
    dispatch_once(&qword_280C03840, &unk_285227B10);
  }

  if (_CFRuntimeCreateInstance())
  {
    operator new();
  }

  if ((atomic_load_explicit(&qword_280C03938, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03938))
  {
    qword_280C03848 = os_log_create("com.apple.AppleCVA", "Segmentation");
    __cxa_guard_release(&qword_280C03938);
  }

  v4 = qword_280C03848;
  if (os_log_type_enabled(qword_280C03848, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_2401B8000, v4, OS_LOG_TYPE_ERROR, "out of memory when creating instance.", buf, 2u);
    if (!a3)
    {
      return 0;
    }

    goto LABEL_8;
  }

  if (a3)
  {
LABEL_8:
    *a3 = -22954;
  }

  return 0;
}

void sub_2401C4518(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, char a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  __cxa_guard_abort(&qword_280C03930);
  if (a24 < 0)
  {
    operator delete(__p);
  }

  sub_2401C1DF4(&a26);
  if (a33 < 0)
  {
    operator delete(a28);
  }

  std::mutex::unlock(&stru_280C037D8);
  kdebug_trace();
  cva::DictionaryHandler::~DictionaryHandler(&a15);
  sub_2401CA658(a9);
  sub_2401C1DF4(a10);
  sub_2401CA750(v33);
  MEMORY[0x245CBCA30](v33, 0x10A0C40F9FBC3BELL);
  _Unwind_Resume(a1);
}

uint64_t CVASegmentationCreateOutputInfo(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v38 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    if ((atomic_load_explicit(&qword_280C03938, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03938))
    {
      qword_280C03848 = os_log_create("com.apple.AppleCVA", "Segmentation");
      __cxa_guard_release(&qword_280C03938);
    }

    v17 = qword_280C03848;
    if (os_log_type_enabled(qword_280C03848, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2401B8000, v17, OS_LOG_TYPE_ERROR, "invalid argument for handle.", buf, 2u);
      if (!a5)
      {
        return 0;
      }
    }

    else if (!a5)
    {
      return 0;
    }

    result = 0;
    *a5 = -22953;
    return result;
  }

  v6 = *(a1 + 16);
  if (!v6)
  {
    if ((atomic_load_explicit(&qword_280C03938, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03938))
    {
      qword_280C03848 = os_log_create("com.apple.AppleCVA", "Segmentation");
      __cxa_guard_release(&qword_280C03938);
    }

    v18 = qword_280C03848;
    if (os_log_type_enabled(qword_280C03848, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2401B8000, v18, OS_LOG_TYPE_ERROR, "invalid state for handle.", buf, 2u);
      if (!a5)
      {
        return 0;
      }

LABEL_24:
      result = 0;
      *a5 = -22961;
      return result;
    }

    if (a5)
    {
      goto LABEL_24;
    }

    return 0;
  }

  if (a5)
  {
    *a5 = 0;
  }

  v7 = *v6;
  if (!v7)
  {
    if ((atomic_load_explicit(&qword_280C03938, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03938))
    {
      qword_280C03848 = os_log_create("com.apple.AppleCVA", "Segmentation");
      __cxa_guard_release(&qword_280C03938);
    }

    v19 = qword_280C03848;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2401B8000, v19, OS_LOG_TYPE_ERROR, "Segmentation is not properly initialized", buf, 2u);
    }

    goto LABEL_32;
  }

  v8 = *v7;
  if (!*v7)
  {
    if ((atomic_load_explicit(&qword_280C03938, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03938))
    {
      qword_280C03848 = os_log_create("com.apple.AppleCVA", "Segmentation");
      __cxa_guard_release(&qword_280C03938);
    }

    v19 = qword_280C03848;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2401B8000, v19, OS_LOG_TYPE_ERROR, "Segmentation does nto support the camera type", buf, 2u);
    }

LABEL_32:

    return 0;
  }

  std::mutex::lock(&stru_280C037D8);
  v10 = *v8;
  if (!*(*v8 + 16))
  {
    goto LABEL_15;
  }

  v13 = *(v10 + 8);
  v11 = v10 + 8;
  v12 = v13;
  if (!v13)
  {
    goto LABEL_15;
  }

  v14 = v11;
  do
  {
    if (*(v12 + 32) >= a2)
    {
      v14 = v12;
    }

    v12 = *(v12 + 8 * (*(v12 + 32) < a2));
  }

  while (v12);
  if (v14 != v11 && *(v14 + 32) <= a2)
  {
    v20 = *(v14 + 40);
    v21 = *(v14 + 48);
    if (v21)
    {
      atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v22 = *v20;
    v30[0] = @"camera_type";
    v23 = [MEMORY[0x277CCABB0] numberWithInt:a2];
    *buf = v23;
    v30[1] = @"width";
    v24 = [MEMORY[0x277CCABB0] numberWithInt:*(v22 + 16)];
    v32 = v24;
    v30[2] = @"height";
    v25 = [MEMORY[0x277CCABB0] numberWithInt:*(v22 + 20)];
    v33 = v25;
    v30[3] = @"foreground_pixelformat";
    v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v22 + 24)];
    v34 = v26;
    v30[4] = @"segmentation_pixelformat";
    v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v22 + 28)];
    v35 = v27;
    v30[5] = @"requires_depth";
    v28 = [MEMORY[0x277CCABB0] numberWithBool:*(v22 + 32)];
    v36 = v28;
    v30[6] = @"supports_foreground";
    v29 = [MEMORY[0x277CCABB0] numberWithBool:*(v22 + 33)];
    v37 = v29;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v30 count:7];

    if (v21)
    {
      if (!atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v21->__on_zero_shared)(v21);
        std::__shared_weak_count::__release_weak(v21);
      }
    }
  }

  else
  {
LABEL_15:
    v15 = 0;
  }

  std::mutex::unlock(&stru_280C037D8);
  return v15;
}

void sub_2401C4C18(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  sub_2401C1DF4(va);
  std::mutex::unlock(&stru_280C037D8);
  _Unwind_Resume(a1);
}

uint64_t CVASegmentationProcess(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    if ((atomic_load_explicit(&qword_280C03938, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03938))
    {
      qword_280C03848 = os_log_create("com.apple.AppleCVA", "Segmentation");
      __cxa_guard_release(&qword_280C03938);
    }

    v3 = qword_280C03848;
    if (!os_log_type_enabled(qword_280C03848, OS_LOG_TYPE_ERROR))
    {
      return 4294944343;
    }

    *buf = 0;
    v4 = "invalid argument for handle.";
    goto LABEL_24;
  }

  if (!a2)
  {
    if ((atomic_load_explicit(&qword_280C03938, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03938))
    {
      qword_280C03848 = os_log_create("com.apple.AppleCVA", "Segmentation");
      __cxa_guard_release(&qword_280C03938);
    }

    v3 = qword_280C03848;
    if (!os_log_type_enabled(qword_280C03848, OS_LOG_TYPE_ERROR))
    {
      return 4294944343;
    }

    *buf = 0;
    v4 = "invalid argument for params.";
LABEL_24:
    _os_log_error_impl(&dword_2401B8000, v3, OS_LOG_TYPE_ERROR, v4, buf, 2u);
    return 4294944343;
  }

  v2 = *(a1 + 16);
  if (v2)
  {
    if (*v2 && *(***v2 + 16))
    {
      operator new();
    }

    if ((atomic_load_explicit(&qword_280C03938, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03938))
    {
      qword_280C03848 = os_log_create("com.apple.AppleCVA", "Segmentation");
      __cxa_guard_release(&qword_280C03938);
    }

    v6 = qword_280C03848;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2401B8000, v6, OS_LOG_TYPE_ERROR, "Segmentation is not properly initialized", buf, 2u);
    }

    if ((atomic_load_explicit(&qword_280C03938, memory_order_acquire) & 1) == 0)
    {
      if (__cxa_guard_acquire(&qword_280C03938))
      {
        qword_280C03848 = os_log_create("com.apple.AppleCVA", "Segmentation");
        __cxa_guard_release(&qword_280C03938);
      }
    }

    v7 = qword_280C03848;
    if (!os_log_type_enabled(qword_280C03848, OS_LOG_TYPE_ERROR))
    {
      return 4294944346;
    }

    *buf = 0;
    v8 = "frame was not processed.";
  }

  else
  {
    if ((atomic_load_explicit(&qword_280C03938, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03938))
    {
      qword_280C03848 = os_log_create("com.apple.AppleCVA", "Segmentation");
      __cxa_guard_release(&qword_280C03938);
    }

    v7 = qword_280C03848;
    if (!os_log_type_enabled(qword_280C03848, OS_LOG_TYPE_ERROR))
    {
      return 4294944346;
    }

    *buf = 0;
    v8 = "invalid segmentation module.";
  }

  _os_log_error_impl(&dword_2401B8000, v7, OS_LOG_TYPE_ERROR, v8, buf, 2u);
  return 4294944346;
}

void sub_2401C62BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va2, a7);
  va_start(va1, a7);
  va_start(va, a7);
  v9 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  va_copy(va2, va1);
  v12 = va_arg(va2, void);
  v14 = va_arg(va2, void);
  sub_2401C1DF4(v7 - 80);
  sub_2401C1DF4(va2);
  sub_2401C1DF4(va);
  sub_2401C1DF4(va1);
  _Unwind_Resume(a1);
}

uint64_t CVASegmentationDestroy(const void *a1)
{
  if (a1)
  {
    CFRelease(a1);
    return 0;
  }

  else
  {
    if ((atomic_load_explicit(&qword_280C03938, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03938))
    {
      qword_280C03848 = os_log_create("com.apple.AppleCVA", "Segmentation");
      __cxa_guard_release(&qword_280C03938);
    }

    v2 = qword_280C03848;
    if (os_log_type_enabled(qword_280C03848, OS_LOG_TYPE_ERROR))
    {
      *v3 = 0;
      _os_log_error_impl(&dword_2401B8000, v2, OS_LOG_TYPE_ERROR, "invalid argument for handle.", v3, 2u);
    }

    return 4294944343;
  }
}

void sub_2401C6440(void *a1)
{
  if (a1)
  {
    sub_2401C6440(*a1);
    sub_2401C6440(a1[1]);
    v2 = a1[6];
    if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v2->__on_zero_shared)(v2);
      std::__shared_weak_count::__release_weak(v2);
    }

    operator delete(a1);
  }
}

void sub_2401C6748(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, void *a13)
{
  cva::ItemHandler::~ItemHandler(&a13);
  sub_2401C1DF4(&a9);
  cva::DictionaryHandler::~DictionaryHandler(&a11);
  sub_2401C1DF4(v13);
  _Unwind_Resume(a1);
}

void sub_2401C67D8(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_2401C67FC(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285226CF0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CBCA30);
}

void **sub_2401C6870(void **a1, char *__s)
{
  v4 = strlen(__s);

  return sub_2401C6A4C(a1, __s, v4);
}

uint64_t *sub_2401C68B8(uint64_t *result, uint64_t *a2)
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
            v10 = a2[2];
          }

          else
          {
            v10 = v2[1];
            v11 = *v10;
            v2[1] = *v10;
            v12 = v2;
            if (v11)
            {
              v11[2] = v2;
              v3 = v2[2];
              v12 = *v3;
            }

            v10[2] = v3;
            v3[v12 != v2] = v10;
            *v10 = v2;
            v2[2] = v10;
            v3 = v10[2];
            v4 = *v3;
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          *(v4 + 16) = v19;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v13 = *v2;
          if (*v2 == a2)
          {
            v14 = v13[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = v2[2];
            }

            v3[*v3 != v2] = v13;
            v13[1] = v2;
            v13[2] = v3;
            v2[2] = v13;
            v3 = v13[2];
          }

          else
          {
            v13 = a2[2];
          }

          *(v13 + 24) = 1;
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

void **sub_2401C6A4C(void **__dst, const void *a2, size_t __len)
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
      sub_2401BDE28();
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

uint64_t sub_2401C6BEC(uint64_t result)
{
  v1 = *(result + 24);
  *(result + 24) = 0;
  if (v1)
  {
    v2 = *(v1 + 224);
    if (v2)
    {
      free(v2);
      *(v1 + 224) = 0;
    }

    v3 = *(v1 + 192);
    if (v3)
    {
      CVPixelBufferRelease(v3);
    }

    v4 = *(v1 + 184);
    if (v4)
    {
      CVPixelBufferRelease(v4);
    }

    v5 = *(v1 + 176);
    if (v5)
    {
      CVPixelBufferRelease(v5);
    }

    v6 = *(v1 + 168);
    if (v6)
    {
      CVPixelBufferRelease(v6);
    }

    v7 = *(v1 + 160);
    if (v7)
    {
      CVPixelBufferRelease(v7);
    }

    free(*(v1 + 136));
    free(*(v1 + 112));
    v8 = *(v1 + 104);
    if (v8)
    {
      VTPixelTransferSessionInvalidate(v8);
      CFRelease(*(v1 + 104));
    }

    v9 = *(v1 + 96);
    if (v9)
    {
      VTPixelTransferSessionInvalidate(v9);
      CFRelease(*(v1 + 96));
    }

    if (*(v1 + 80))
    {
      MEMORY[0x245CBC070]();
      CFRelease(*(v1 + 80));
    }

    v10 = *(v1 + 72);
    if (v10)
    {
      CVPixelBufferRelease(v10);
    }

    v11 = *(v1 + 64);
    if (v11)
    {
      VTPixelTransferSessionInvalidate(v11);
      CFRelease(*(v1 + 64));
    }

    if (*(v1 + 48))
    {
      MEMORY[0x245CBC070]();
      CFRelease(*(v1 + 48));
    }

    v12 = *(v1 + 40);
    if (v12)
    {
      CVPixelBufferRelease(v12);
    }

    v13 = *(v1 + 8);
    if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v13->__on_zero_shared)(v13);
      std::__shared_weak_count::__release_weak(v13);
    }

    JUMPOUT(0x245CBCA30);
  }

  return result;
}

void sub_2401C6D64(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285226D60;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CBCA30);
}

void sub_2401C6DD8(void *a1, uint64_t *a2, __CVBuffer ****a3)
{
  v146 = *MEMORY[0x277D85DE8];
  if (!*a3)
  {
    if ((atomic_load_explicit(&qword_280C03938, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03938))
    {
      qword_280C03848 = os_log_create("com.apple.AppleCVA", "Segmentation");
      __cxa_guard_release(&qword_280C03938);
    }

    v10 = qword_280C03848;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2401B8000, v10, OS_LOG_TYPE_ERROR, "nextData should never be nullptr", buf, 2u);
    }

    sub_2401C93A8();
  }

  std::mutex::lock(&stru_280C037D8);
  v6 = *a3;
  v7 = **a3;
  v8 = *v7;
  if (!*v7)
  {
    if ((atomic_load_explicit(&qword_280C03938, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03938))
    {
      qword_280C03848 = os_log_create("com.apple.AppleCVA", "Segmentation");
      __cxa_guard_release(&qword_280C03938);
    }

    v11 = qword_280C03848;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2401B8000, v11, OS_LOG_TYPE_ERROR, "color should never be nullptr", buf, 2u);
    }

    sub_2401C93A8();
  }

  v9 = *a2;
  if (cva::DictionaryHandler::hasKey((v7 + 5), @"camera_type"))
  {
    cva::DictionaryHandler::item(buf, (*v6 + 5), @"camera_type");
    cva::ItemHandler::getValue<int>();
  }

  v14 = *(v9 + 8);
  v13 = v9 + 8;
  v12 = v14;
  if (!v14)
  {
    goto LABEL_20;
  }

  v15 = v13;
  do
  {
    if (*(v12 + 32) >= -1)
    {
      v15 = v12;
    }

    v12 = *(v12 + 8 * (*(v12 + 32) < -1));
  }

  while (v12);
  if (v15 == v13 || *(v15 + 32) > -1)
  {
LABEL_20:
    v15 = v13;
  }

  if (v15 == *a2 + 8)
  {
    if ((atomic_load_explicit(&qword_280C03938, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03938))
    {
      qword_280C03848 = os_log_create("com.apple.AppleCVA", "Segmentation");
      __cxa_guard_release(&qword_280C03938);
    }

    v21 = qword_280C03848;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2401B8000, v21, OS_LOG_TYPE_ERROR, "segmentation processor should not be called for unsupported camera type", buf, 2u);
    }

    sub_2401C93A8();
  }

  kdebug_trace();
  CVPixelBufferGetWidth(v8);
  CVPixelBufferGetHeight(v8);
  v17 = *(v15 + 40);
  v16 = *(v15 + 48);
  pixelBufferOut[1] = v17;
  pixelBufferOut[2] = v16;
  if (v16)
  {
    atomic_fetch_add_explicit(v16 + 1, 1uLL, memory_order_relaxed);
  }

  v18 = *v17;
  v19 = **a3;
  v20 = v19[2];
  texture = v19[3];
  pixelBufferOut[0] = v20;
  if (v20)
  {
    CVPixelBufferRetain(v20);
  }

  else
  {
    if ((atomic_load_explicit(&qword_280C03938, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03938))
    {
      qword_280C03848 = os_log_create("com.apple.AppleCVA", "Segmentation");
      __cxa_guard_release(&qword_280C03938);
    }

    v22 = qword_280C03848;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_2401B8000, v22, OS_LOG_TYPE_DEBUG, "segmentation algorithm supports segmentation output, but no segmentation buffer available - creating buffer locally", buf, 2u);
    }

    CVPixelBufferCreate(0, *(v18 + 4), *(v18 + 5), *(v18 + 7), 0, pixelBufferOut);
    IOSurface = CVPixelBufferGetIOSurface(pixelBufferOut[0]);
    if (IOSurface)
    {
      IOSurfaceSetValue(IOSurface, *MEMORY[0x277CD2A50], @"AppleCVA:Seg:OutputSeg");
    }
  }

  if (texture)
  {
    CVPixelBufferRetain(texture);
  }

  else
  {
    v34 = **v17;
    if (v34 && *(v34 + 65) == 1)
    {
      if ((atomic_load_explicit(&qword_280C03938, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03938))
      {
        qword_280C03848 = os_log_create("com.apple.AppleCVA", "Segmentation");
        __cxa_guard_release(&qword_280C03938);
      }

      v35 = qword_280C03848;
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_2401B8000, v35, OS_LOG_TYPE_DEBUG, "segmentation algorithm supports foreground color, but no foreground buffer available - creating buffer locally", buf, 2u);
      }

      CVPixelBufferCreate(0, *(v18 + 4), *(v18 + 5), *(v18 + 6), 0, &texture);
      v36 = CVPixelBufferGetIOSurface(texture);
      if (v36)
      {
        IOSurfaceSetValue(v36, *MEMORY[0x277CD2A50], @"AppleCVA:Seg:OutputFG");
      }
    }
  }

  *a1 = 0;
  a1[1] = 0;
  v25 = *a3;
  v24 = a3[1];
  v132 = *a3;
  v133 = v24;
  if (v24)
  {
    atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v25)
  {
    v26 = **v25;
    if (v26)
    {
      v27 = pixelBufferOut[0];
      pixelBuffer = texture;
      v28 = *(*v25 + 8);
      v29 = *v17;
      v30 = **v17;
      if (v30)
      {
        v31 = v28 != 0;
        if (*(v30 + 64) == 1 && v28 == 0)
        {
          if ((atomic_load_explicit(&qword_280C03938, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03938))
          {
            qword_280C03848 = os_log_create("com.apple.AppleCVA", "Segmentation");
            __cxa_guard_release(&qword_280C03938);
          }

          v33 = qword_280C03848;
          if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_2401B8000, v33, OS_LOG_TYPE_ERROR, "no valid buffer for depth input", buf, 2u);
          }

          goto LABEL_84;
        }
      }

      else
      {
        v31 = v28 != 0;
      }

      if (pixelBufferOut[0])
      {
        v38 = *(v29 + 4);
        v37 = *(v29 + 5);
        if (v38 == CVPixelBufferGetWidth(pixelBufferOut[0]) && v37 == CVPixelBufferGetHeight(v27))
        {
          if (!pixelBuffer || (v40 = *(*v17 + 16), v39 = *(*v17 + 20), v40 == CVPixelBufferGetWidth(pixelBuffer)) && v39 == CVPixelBufferGetHeight(pixelBuffer))
          {
            v41 = 0x3F80000000000000;
            v42 = *(*v17 + 36);
            if (v42 > 2)
            {
              if (v42 == 3)
              {
                v41 = 3212836864;
              }

              else if (v42 == 4)
              {
                v41 = 0xBF80000000000000;
              }
            }

            else
            {
              if (!v42)
              {
                if (v31)
                {
                  sub_2401CA080(v25);
                }

                v51 = 0;
                goto LABEL_113;
              }

              if (v42 == 1)
              {
                v41 = 1065353216;
              }
            }

            v48 = sub_2401C9CBC(v25, *&v41);
            if (v31)
            {
              v49 = *(*v17 + 36);
              switch(v49)
              {
                case 4:
                  v50 = 0xBF80000000000000;
                  break;
                case 3:
                  v50 = 3212836864;
                  break;
                case 1:
                  v50 = 1065353216;
                  break;
                default:
                  v50 = 0x3F80000000000000;
                  break;
              }

              sub_2401CA2D8(v25, *&v50);
            }

            v51 = v48;
LABEL_113:
            v52 = *v17;
            v53 = *(***v17 + 8) + 40 * *(**v17 + 56);
            if (*(v53 + 23) < 0)
            {
              sub_2401C2FCC(buf, *v53, *(v53 + 8));
              v52 = *v17;
            }

            else
            {
              *buf = *v53;
              *v145 = *(v53 + 16);
            }

            *&v145[8] = *(v53 + 24);
            v54 = *&v145[16];
            v55 = *&v145[20];
            if (sub_2401CDC50(v52 + 21, *&v145[20], *&v145[16], 1111970369) == 2)
            {
              sub_2401CDD8C(*(*v17 + 168), @"AppleCVA:Seg:InputTransform");
            }

            v56 = **v17;
            if (*(v56 + 64) == 1)
            {
              sub_2401CEA0C(v136, v56);
              v126 = HIDWORD(v138);
              v127 = v138;
              v129 = v139;
              v130 = v140;
            }

            else
            {
              v129 = -1;
              v130 = 0xFFFFFFFFLL;
              v126 = -1;
              v127 = -1;
            }

            v57 = *v17;
            v58 = *&v145[16] * *&v145[8] * *&v145[20] * *&v145[12];
            if (*(*v17 + 128) != v58)
            {
              sub_2401CDDE0((v57 + 14), v58);
              v57 = *v17;
            }

            if (*v57)
            {
              if (*(*v57 + 64) & v31)
              {
                v59 = v129 * v130 * v126 * v127;
                if (*(v57 + 38) != v59)
                {
                  sub_2401CDDE0((v57 + 17), v59);
                  v136[0] = 0;
                  CVPixelBufferCreateWithBytes(0, v130, v129, 0x66646570u, *(*v17 + 136), 4 * v130, 0, 0, 0, v136);
                  sub_2401CDD8C(v136[0], @"AppleCVA:Seg:NetworkInputDepth");
                  v128 = v51;
                  v60 = v136[0];
                  if (v136[0])
                  {
                    CVPixelBufferRetain(v136[0]);
                  }

                  v61 = *v17;
                  v62 = *(*v17 + 160);
                  if (v62)
                  {
                    CVPixelBufferRelease(v62);
                    v61[20] = 0;
                  }

                  v61[20] = v60;
                  CVPixelBufferRelease(v136[0]);
                  v51 = v128;
                }
              }
            }

            kdebug_trace();
            if ((sub_2401CEDD8(*v17 + 40, v51, v26, *(*v17 + 168)) & 1) == 0)
            {
              v63 = sub_2401CB704();
              if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
              {
                LOWORD(v136[0]) = 0;
                _os_log_error_impl(&dword_2401B8000, v63, OS_LOG_TYPE_ERROR, "invalid image rotation", v136, 2u);
              }
            }

            kdebug_trace();
            kdebug_trace();
            CVPixelBufferLockBaseAddress(*(*v17 + 168), 1uLL);
            BaseAddress = CVPixelBufferGetBaseAddress(*(*v17 + 168));
            BytesPerRow = CVPixelBufferGetBytesPerRow(*(*v17 + 168));
            v68 = *v17;
            v69 = *(*v17 + 112);
            v71 = v54 > 0 && v55 > 0;
            if (*(*v17 + 232))
            {
              if (v71)
              {
                v72 = 0;
                v73 = v55 & 0xF;
                if ((v55 & 0xF) == 0)
                {
                  v73 = 16;
                }

                v74 = v55 - v73;
                v75 = BaseAddress;
                do
                {
                  if (v55 >= 0x11)
                  {
                    v76 = 0;
                    v78 = BaseAddress >= v69 + 12 * (v55 - 1) + 12 || v69 >= BaseAddress->u64 + 4 * (v55 - 1) + BytesPerRow * (v54 - 1) + 3;
                    if (v78 && (BytesPerRow & 0x8000000000000000) == 0)
                    {
                      v79 = v69 + 12 * v74;
                      v80 = v75;
                      v81 = v74;
                      do
                      {
                        v82 = v80[2];
                        v83 = v80[3];
                        v84 = *v80;
                        v85 = v80[1];
                        v80 += 4;
                        v149.val[2] = vcvtq_f32_u32(vqtbl1q_s8(v84, xmmword_240270810));
                        v150.val[2] = vcvtq_f32_u32(vqtbl1q_s8(v85, xmmword_240270810));
                        v150.val[1] = vcvtq_f32_u32(vqtbl1q_s8(v85, xmmword_240270820));
                        v150.val[0] = vcvtq_f32_u32(vqtbl1q_s8(v85, xmmword_240270830));
                        v149.val[1] = vcvtq_f32_u32(vqtbl1q_s8(v84, xmmword_240270820));
                        v149.val[0] = vcvtq_f32_u32(vqtbl1q_s8(v84, xmmword_240270830));
                        v86 = v69;
                        vst3q_f32(v86, v149);
                        v86 += 12;
                        vst3q_f32(v86, v150);
                        v149.val[0] = vcvtq_f32_u32(vqtbl1q_s8(v82, xmmword_240270810));
                        v87 = vcvtq_f32_u32(vqtbl1q_s8(v82, xmmword_240270820));
                        v88 = vcvtq_f32_u32(vqtbl1q_s8(v82, xmmword_240270830));
                        v89 = (v69 + 96);
                        vst3q_f32(v89, v149);
                        v147.val[2] = vcvtq_f32_u32(vqtbl1q_s8(v83, xmmword_240270810));
                        v66 = vqtbl1q_s8(v83, xmmword_240270830);
                        v90 = (v69 + 144);
                        v147.val[1] = vcvtq_f32_u32(vqtbl1q_s8(v83, xmmword_240270820));
                        v147.val[0] = vcvtq_f32_u32(v66);
                        vst3q_f32(v90, v147);
                        v69 += 192;
                        v81 -= 16;
                      }

                      while (v81);
                      v77 = (v75 + 4 * v74);
                      v69 = v79;
                      v76 = v74;
                      goto LABEL_158;
                    }
                  }

                  else
                  {
                    v76 = 0;
                  }

                  v77 = v75;
LABEL_158:
                  v91 = &v77->i8[2];
                  v92 = v55 - v76;
                  do
                  {
                    v66.i8[0] = *v91;
                    v93 = v66.u32[0];
                    *v69 = v93;
                    LOBYTE(v93) = *(v91 - 1);
                    v94 = LODWORD(v93);
                    *(v69 + 4) = v94;
                    LOBYTE(v94) = *(v91 - 2);
                    *v66.i32 = LODWORD(v94);
                    *(v69 + 8) = v66.i32[0];
                    v69 += 12;
                    v91 += 4;
                    --v92;
                  }

                  while (v92);
                  ++v72;
                  v75 = (v75 + BytesPerRow);
                }

                while (v72 != v54);
              }

LABEL_181:
              CVPixelBufferUnlockBaseAddress(v68[21], 1uLL);
              kdebug_trace();
              if (*(**v17 + 64) != 1)
              {
                goto LABEL_192;
              }

              kdebug_trace();
              v116 = *(*v17 + 136);
              v136[0] = 0;
              LODWORD(v136[1]) = v130;
              HIDWORD(v136[1]) = v129;
              v137 = (v130 << 34) | 4;
              v138 = v116;
              if (sub_2401C9A18(v132))
              {
                sub_2401C9B10(v132);
                v118 = v117;
                sub_2401C9BA0(v132);
                v120 = v119;
                v121 = sub_2401C9C30(v132);
                __p = v118;
                __p_4 = v120;
                LOWORD(v143) = v121;
                if (sub_2401CDE78(v28))
                {
LABEL_191:
                  kdebug_trace();
LABEL_192:
                  kdebug_trace();
                  operator new();
                }

                v122 = sub_2401CB704();
                if (!os_log_type_enabled(v122, OS_LOG_TYPE_ERROR))
                {
LABEL_190:

                  goto LABEL_191;
                }

                LOWORD(__p) = 0;
              }

              else
              {
                sub_2401C9A80(v132);
                v124 = *(*v17 + 236);
                v125 = 1.0 / *(*v17 + 240);
                if (*(*v17 + 232))
                {
                  v125 = v125 * 255.0;
                }

                __p = v123;
                __p_4 = v124;
                *&v143 = v125;
                if (sub_2401CE3BC(v28))
                {
                  goto LABEL_191;
                }

                v122 = sub_2401CB704();
                if (!os_log_type_enabled(v122, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_190;
                }

                LOWORD(__p) = 0;
              }

              _os_log_error_impl(&dword_2401B8000, v122, OS_LOG_TYPE_ERROR, "invalid depth resampling", &__p, 2u);
              goto LABEL_190;
            }

            if (!v71)
            {
              goto LABEL_181;
            }

            v95 = 0;
            v96 = v55 & 0xF;
            if ((v55 & 0xF) == 0)
            {
              v96 = 16;
            }

            v97 = v55 - v96;
            v98 = vdupq_n_s32(0x3B808081u);
            v99 = BaseAddress;
            while (1)
            {
              if (v55 >= 0x11)
              {
                v100 = 0;
                v102 = BaseAddress >= v69 + 12 * (v55 - 1) + 12 || v69 >= BaseAddress->u64 + 4 * (v55 - 1) + BytesPerRow * (v54 - 1) + 3;
                if (v102 && (BytesPerRow & 0x8000000000000000) == 0)
                {
                  v103 = v69 + 12 * v97;
                  v104 = v99;
                  v105 = v97;
                  do
                  {
                    v106 = v104[1];
                    v108 = v104[2];
                    v107 = v104[3];
                    v151.val[2] = vmulq_f32(vcvtq_f32_u32(vqtbl1q_s8(*v104, xmmword_240270810)), v98);
                    v152.val[2] = vmulq_f32(vcvtq_f32_u32(vqtbl1q_s8(v106, xmmword_240270810)), v98);
                    v153.val[2] = vmulq_f32(vcvtq_f32_u32(vqtbl1q_s8(v108, xmmword_240270810)), v98);
                    v148.val[2] = vmulq_f32(vcvtq_f32_u32(vqtbl1q_s8(v107, xmmword_240270810)), v98);
                    v152.val[1] = vmulq_f32(vcvtq_f32_u32(vqtbl1q_s8(v106, xmmword_240270820)), v98);
                    v152.val[0] = vmulq_f32(vcvtq_f32_u32(vqtbl1q_s8(v106, xmmword_240270830)), v98);
                    v151.val[1] = vmulq_f32(vcvtq_f32_u32(vqtbl1q_s8(*v104, xmmword_240270820)), v98);
                    v151.val[0] = vmulq_f32(vcvtq_f32_u32(vqtbl1q_s8(*v104, xmmword_240270830)), v98);
                    v109 = v69;
                    vst3q_f32(v109, v151);
                    v109 += 12;
                    vst3q_f32(v109, v152);
                    v153.val[1] = vmulq_f32(vcvtq_f32_u32(vqtbl1q_s8(v108, xmmword_240270820)), v98);
                    v153.val[0] = vmulq_f32(vcvtq_f32_u32(vqtbl1q_s8(v108, xmmword_240270830)), v98);
                    v110 = (v69 + 96);
                    vst3q_f32(v110, v153);
                    v67 = vcvtq_f32_u32(vqtbl1q_s8(v107, xmmword_240270830));
                    v111 = (v69 + 144);
                    v148.val[1] = vmulq_f32(vcvtq_f32_u32(vqtbl1q_s8(v107, xmmword_240270820)), v98);
                    v148.val[0] = vmulq_f32(v67, v98);
                    vst3q_f32(v111, v148);
                    v104 += 4;
                    v69 += 192;
                    v105 -= 16;
                  }

                  while (v105);
                  v101 = (v99 + 4 * v97);
                  v69 = v103;
                  v100 = v97;
                  goto LABEL_178;
                }
              }

              else
              {
                v100 = 0;
              }

              v101 = v99;
LABEL_178:
              v112 = &v101->i8[2];
              v113 = v55 - v100;
              do
              {
                v67.i8[0] = *v112;
                *&v114 = v67.u32[0] * 0.0039216;
                *v69 = *&v114;
                LOBYTE(v114) = *(v112 - 1);
                *&v115 = v114 * 0.0039216;
                *(v69 + 4) = *&v115;
                LOBYTE(v115) = *(v112 - 2);
                v67.f32[0] = v115 * 0.0039216;
                *(v69 + 8) = v67.i32[0];
                v69 += 12;
                v112 += 4;
                --v113;
              }

              while (v113);
              ++v95;
              v99 = (v99 + BytesPerRow);
              if (v95 == v54)
              {
                goto LABEL_181;
              }
            }
          }

          v33 = sub_2401CB704();
          if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_2401B8000, v33, OS_LOG_TYPE_ERROR, "invalid foreground buffer size", buf, 2u);
          }
        }

        else
        {
          if ((atomic_load_explicit(&qword_280C03938, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03938))
          {
            qword_280C03848 = os_log_create("com.apple.AppleCVA", "Segmentation");
            __cxa_guard_release(&qword_280C03938);
          }

          v33 = qword_280C03848;
          if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
          {
            Width = CVPixelBufferGetWidth(v27);
            Height = CVPixelBufferGetHeight(v27);
            v47 = *(*v17 + 16);
            v46 = *(*v17 + 20);
            *buf = 67109888;
            *&buf[4] = Width;
            *&buf[8] = 1024;
            *&buf[10] = Height;
            *&buf[14] = 1024;
            *v145 = v47;
            *&v145[4] = 1024;
            *&v145[6] = v46;
            _os_log_error_impl(&dword_2401B8000, v33, OS_LOG_TYPE_ERROR, "invalid segmentation buffer size (%d %d vs %d %d)", buf, 0x1Au);
          }
        }
      }

      else
      {
        if ((atomic_load_explicit(&qword_280C03938, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03938))
        {
          qword_280C03848 = os_log_create("com.apple.AppleCVA", "Segmentation");
          __cxa_guard_release(&qword_280C03938);
        }

        v33 = qword_280C03848;
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_2401B8000, v33, OS_LOG_TYPE_ERROR, "no valid buffer for segmentation output", buf, 2u);
        }
      }
    }

    else
    {
      if ((atomic_load_explicit(&qword_280C03938, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03938))
      {
        qword_280C03848 = os_log_create("com.apple.AppleCVA", "Segmentation");
        __cxa_guard_release(&qword_280C03938);
      }

      v33 = qword_280C03848;
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_2401B8000, v33, OS_LOG_TYPE_ERROR, "no valid buffer for color input", buf, 2u);
      }
    }
  }

  else
  {
    if ((atomic_load_explicit(&qword_280C03938, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03938))
    {
      qword_280C03848 = os_log_create("com.apple.AppleCVA", "Segmentation");
      __cxa_guard_release(&qword_280C03938);
    }

    v33 = qword_280C03848;
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2401B8000, v33, OS_LOG_TYPE_ERROR, "no valid input data", buf, 2u);
    }
  }

LABEL_84:

  if (v133 && !atomic_fetch_add(&v133->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v133->__on_zero_shared)(v133);
    std::__shared_weak_count::__release_weak(v133);
  }

  if ((atomic_load_explicit(&qword_280C03938, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03938))
  {
    qword_280C03848 = os_log_create("com.apple.AppleCVA", "Segmentation");
    __cxa_guard_release(&qword_280C03938);
  }

  v43 = qword_280C03848;
  if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_2401B8000, v43, OS_LOG_TYPE_ERROR, "segmentation failed", buf, 2u);
  }

  sub_2401C93A8();
}

void sub_2401C9198(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16, int a17, uint64_t a18, char a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  if (v26)
  {
    CVPixelBufferRelease(v26);
    if (a17)
    {
LABEL_3:
      operator delete(__p);
      if ((*(v27 - 185) & 0x80000000) == 0)
      {
        goto LABEL_8;
      }

LABEL_7:
      operator delete(*(v27 - 208));
LABEL_8:
      sub_2401C1DF4(&a21);
      sub_2401C1DF4(v25);
      sub_2401C1DF4(&a25);
      kdebug_trace();
      std::mutex::unlock(&stru_280C037D8);
      _Unwind_Resume(a1);
    }
  }

  else if (a17)
  {
    goto LABEL_3;
  }

  if ((*(v27 - 185) & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void sub_2401C9484(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16)
{
  cva::ItemHandler::~ItemHandler(&a16);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_2401C1DF4(v16);
  _Unwind_Resume(a1);
}

void sub_2401C94B8(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void *sub_2401C94D0(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    cva::DictionaryHandler::~DictionaryHandler((v1 + 40));

    MEMORY[0x245CBCA30](v1, 0x10A0C40987147F0);
    return v2;
  }

  return result;
}

__n128 sub_2401C9528(uint64_t a1)
{
  cva::DictionaryHandler::item(v6, (a1 + 40), @"color_camera_x_direction");
  Data = cva::ItemHandler::getData(v6);
  v2 = Data;
  v5 = 0u;
  if (Data)
  {
    if (CFDataGetLength(Data) == 16)
    {
      *&buffer[8] = 0;
      *buffer = 0;
      v8.location = 0;
      v8.length = 16;
      CFDataGetBytes(v2, v8, buffer);
      v5 = *buffer;
    }

    else
    {
      if ((atomic_load_explicit(&qword_280C03938, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03938))
      {
        qword_280C03848 = os_log_create("com.apple.AppleCVA", "Segmentation");
        __cxa_guard_release(&qword_280C03938);
      }

      v3 = qword_280C03848;
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        *buffer = 0;
        _os_log_error_impl(&dword_2401B8000, v3, OS_LOG_TYPE_ERROR, "direction size should be of size = sizeof(vector_float3)", buffer, 2u);
      }
    }
  }

  cva::ItemHandler::~ItemHandler(v6);
  return v5;
}

void sub_2401C9650(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  cva::ItemHandler::~ItemHandler(va);
  _Unwind_Resume(a1);
}

__n128 sub_2401C9664(uint64_t a1)
{
  cva::DictionaryHandler::item(v6, (a1 + 40), @"color_camera_y_direction");
  Data = cva::ItemHandler::getData(v6);
  v2 = Data;
  v5 = 0u;
  if (Data)
  {
    if (CFDataGetLength(Data) == 16)
    {
      *&buffer[8] = 0;
      *buffer = 0;
      v8.location = 0;
      v8.length = 16;
      CFDataGetBytes(v2, v8, buffer);
      v5 = *buffer;
    }

    else
    {
      if ((atomic_load_explicit(&qword_280C03938, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03938))
      {
        qword_280C03848 = os_log_create("com.apple.AppleCVA", "Segmentation");
        __cxa_guard_release(&qword_280C03938);
      }

      v3 = qword_280C03848;
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        *buffer = 0;
        _os_log_error_impl(&dword_2401B8000, v3, OS_LOG_TYPE_ERROR, "direction size should be of size = sizeof(vector_float3)", buffer, 2u);
      }
    }
  }

  cva::ItemHandler::~ItemHandler(v6);
  return v5;
}

void sub_2401C978C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  cva::ItemHandler::~ItemHandler(va);
  _Unwind_Resume(a1);
}

__n128 sub_2401C97A0(uint64_t a1)
{
  cva::DictionaryHandler::item(v6, (a1 + 40), @"depth_camera_x_direction");
  Data = cva::ItemHandler::getData(v6);
  v2 = Data;
  v5 = 0u;
  if (Data)
  {
    if (CFDataGetLength(Data) == 16)
    {
      *&buffer[8] = 0;
      *buffer = 0;
      v8.location = 0;
      v8.length = 16;
      CFDataGetBytes(v2, v8, buffer);
      v5 = *buffer;
    }

    else
    {
      if ((atomic_load_explicit(&qword_280C03938, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03938))
      {
        qword_280C03848 = os_log_create("com.apple.AppleCVA", "Segmentation");
        __cxa_guard_release(&qword_280C03938);
      }

      v3 = qword_280C03848;
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        *buffer = 0;
        _os_log_error_impl(&dword_2401B8000, v3, OS_LOG_TYPE_ERROR, "direction size should be of size = sizeof(vector_float3)", buffer, 2u);
      }
    }
  }

  cva::ItemHandler::~ItemHandler(v6);
  return v5;
}

void sub_2401C98C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  cva::ItemHandler::~ItemHandler(va);
  _Unwind_Resume(a1);
}

__n128 sub_2401C98DC(uint64_t a1)
{
  cva::DictionaryHandler::item(v6, (a1 + 40), @"depth_camera_y_direction");
  Data = cva::ItemHandler::getData(v6);
  v2 = Data;
  v5 = 0u;
  if (Data)
  {
    if (CFDataGetLength(Data) == 16)
    {
      *&buffer[8] = 0;
      *buffer = 0;
      v8.location = 0;
      v8.length = 16;
      CFDataGetBytes(v2, v8, buffer);
      v5 = *buffer;
    }

    else
    {
      if ((atomic_load_explicit(&qword_280C03938, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03938))
      {
        qword_280C03848 = os_log_create("com.apple.AppleCVA", "Segmentation");
        __cxa_guard_release(&qword_280C03938);
      }

      v3 = qword_280C03848;
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        *buffer = 0;
        _os_log_error_impl(&dword_2401B8000, v3, OS_LOG_TYPE_ERROR, "direction size should be of size = sizeof(vector_float3)", buffer, 2u);
      }
    }
  }

  cva::ItemHandler::~ItemHandler(v6);
  return v5;
}

void sub_2401C9A04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  cva::ItemHandler::~ItemHandler(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2401C9A18(uint64_t a1)
{
  if (cva::DictionaryHandler::hasKey((*a1 + 40), @"depth"))
  {
    return 0;
  }

  v3 = (*a1 + 40);

  return cva::DictionaryHandler::hasKey(v3, @"normalized_disparity");
}

uint64_t sub_2401C9A80(uint64_t a1)
{
  result = cva::DictionaryHandler::hasKey((*a1 + 40), @"depth_unit");
  if (result)
  {
    cva::DictionaryHandler::item(&v3, (*a1 + 40), @"depth_unit");
    cva::ItemHandler::getValue<float>();
  }

  return result;
}

uint64_t sub_2401C9B10(uint64_t a1)
{
  result = cva::DictionaryHandler::hasKey((*a1 + 40), @"disparity_normalization_offset");
  if (result)
  {
    cva::DictionaryHandler::item(&v3, (*a1 + 40), @"disparity_normalization_offset");
    cva::ItemHandler::getValue<float>();
  }

  return result;
}

uint64_t sub_2401C9BA0(uint64_t a1)
{
  result = cva::DictionaryHandler::hasKey((*a1 + 40), @"disparity_normalization_multiplier");
  if (result)
  {
    cva::DictionaryHandler::item(&v3, (*a1 + 40), @"disparity_normalization_multiplier");
    cva::ItemHandler::getValue<float>();
  }

  return result;
}

uint64_t sub_2401C9C30(uint64_t a1)
{
  if (cva::DictionaryHandler::hasKey((*a1 + 40), @"disparity_invalid_value"))
  {
    cva::DictionaryHandler::item(&v3, (*a1 + 40), @"disparity_invalid_value");
    cva::ItemHandler::getValue<int>();
  }

  return 0x1FFFLL;
}

uint64_t sub_2401C9CBC(uint64_t *a1, double a2)
{
  v35 = sub_2401C9528(*a1);
  v37 = sub_2401C9664(*a1);
  cva::DictionaryHandler::item(v40, (*a1 + 40), @"gravity_direction");
  Data = cva::ItemHandler::getData(v40);
  v4 = Data;
  v39 = 0u;
  if (Data)
  {
    if (CFDataGetLength(Data) == 16)
    {
      *&buffer[4] = 0;
      *buffer = 0;
      v42.location = 0;
      v42.length = 16;
      CFDataGetBytes(v4, v42, buffer);
      v39 = *buffer;
    }

    else
    {
      if ((atomic_load_explicit(&qword_280C03938, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03938))
      {
        qword_280C03848 = os_log_create("com.apple.AppleCVA", "Segmentation");
        __cxa_guard_release(&qword_280C03938);
      }

      v5 = qword_280C03848;
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *buffer = 0;
        _os_log_error_impl(&dword_2401B8000, v5, OS_LOG_TYPE_ERROR, "direction size should be of size = sizeof(vector_float3)", buffer, 2u);
      }
    }
  }

  v6 = vmulq_f32(v35, v35);
  v7 = vaddv_f32(*v6.f32);
  *v6.f32 = vrsqrte_f32(COERCE_UNSIGNED_INT(v6.f32[2] + v7));
  *v6.f32 = vmul_f32(*v6.f32, vrsqrts_f32(COERCE_UNSIGNED_INT(v6.f32[2] + v7), vmul_f32(*v6.f32, *v6.f32)));
  v6.i32[0] = vmul_f32(*v6.f32, vrsqrts_f32(COERCE_UNSIGNED_INT(v6.f32[2] + v7), vmul_f32(*v6.f32, *v6.f32))).u32[0];
  v8 = vmulq_f32(v37, v37);
  *&v9 = v8.f32[2] + vaddv_f32(*v8.f32);
  v10 = vmulq_n_f32(v35, v6.f32[0]);
  *v6.f32 = vrsqrte_f32(v9);
  *v6.f32 = vmul_f32(*v6.f32, vrsqrts_f32(v9, vmul_f32(*v6.f32, *v6.f32)));
  v33 = vmulq_n_f32(v37, vmul_f32(*v6.f32, vrsqrts_f32(v9, vmul_f32(*v6.f32, *v6.f32))).f32[0]);
  v11 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v33, v33), v33, 0xCuLL), vnegq_f32(v10)), v33, vextq_s8(vuzp1q_s32(v10, v10), v10, 0xCuLL));
  v36 = v10;
  v38 = vextq_s8(vuzp1q_s32(v11, v11), v11, 0xCuLL);
  cva::ItemHandler::~ItemHandler(v40);
  v12 = vmulq_f32(v39, v39);
  *&v13 = v12.f32[2] + vaddv_f32(*v12.f32);
  *v12.f32 = vrsqrte_f32(v13);
  *v12.f32 = vmul_f32(*v12.f32, vrsqrts_f32(v13, vmul_f32(*v12.f32, *v12.f32)));
  v14 = vmulq_n_f32(v39, vmul_f32(*v12.f32, vrsqrts_f32(v13, vmul_f32(*v12.f32, *v12.f32))).f32[0]);
  v15 = vmulq_f32(v14, v38);
  if (fabsf(v15.f32[2] + vaddv_f32(*v15.f32)) > 0.75)
  {
    return 0;
  }

  v16 = vmulq_f32(v33, v14);
  v17 = v16.f32[2] + vaddv_f32(*v16.f32);
  v18 = vmulq_f32(v36, v14);
  v19 = v18.f32[2] + vaddv_f32(*v18.f32);
  v20 = atan2f(*(&a2 + 1), *&a2) / 3.14159265 * 180.0;
  v21 = fmodf(v20, 360.0);
  v22 = fmodf(v21 + 360.0, 360.0);
  v23 = atan2f(v17, v19) / 3.14159265 * 180.0;
  v24 = fmodf(v23, 360.0);
  v25 = fmodf(v24 + 360.0, 360.0);
  v26 = fmodf(v22 - v25, 360.0);
  v27 = fmodf(v26 + 360.0, 360.0);
  if (v27 < 45.0 || v27 >= 315.0)
  {
    return 0;
  }

  if (v27 >= 45.0 && v27 < 135.0)
  {
    return 1;
  }

  if (v27 >= 135.0 && v27 < 225.0)
  {
    return 2;
  }

  if (v27 >= 315.0 || v27 < 225.0)
  {
    return 0;
  }

  else
  {
    return 3;
  }
}

void sub_2401CA06C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  cva::ItemHandler::~ItemHandler(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2401CA080(uint64_t *a1)
{
  v2 = sub_2401C9528(*a1);
  v3 = vmulq_f32(v2, v2);
  *&v4 = v3.f32[2] + vaddv_f32(*v3.f32);
  *v3.f32 = vrsqrte_f32(v4);
  *v3.f32 = vmul_f32(*v3.f32, vrsqrts_f32(v4, vmul_f32(*v3.f32, *v3.f32)));
  v22 = vmulq_n_f32(v2, vmul_f32(*v3.f32, vrsqrts_f32(v4, vmul_f32(*v3.f32, *v3.f32))).f32[0]);
  v5 = sub_2401C9664(*a1);
  v6 = vmulq_f32(v5, v5);
  *&v7 = v6.f32[2] + vaddv_f32(*v6.f32);
  *v6.f32 = vrsqrte_f32(v7);
  *v6.f32 = vmul_f32(*v6.f32, vrsqrts_f32(v7, vmul_f32(*v6.f32, *v6.f32)));
  v21 = vmulq_n_f32(v5, vmul_f32(*v6.f32, vrsqrts_f32(v7, vmul_f32(*v6.f32, *v6.f32))).f32[0]);
  v8 = sub_2401C97A0(*a1);
  v9 = vmulq_f32(v8, v8);
  *&v10 = v9.f32[2] + vaddv_f32(*v9.f32);
  *v9.f32 = vrsqrte_f32(v10);
  *v9.f32 = vmul_f32(*v9.f32, vrsqrts_f32(v10, vmul_f32(*v9.f32, *v9.f32)));
  v11 = vmulq_n_f32(v8, vmul_f32(*v9.f32, vrsqrts_f32(v10, vmul_f32(*v9.f32, *v9.f32))).f32[0]);
  v12 = vmulq_f32(v22, v11);
  v13 = vmulq_f32(v21, v11);
  v14 = atan2f(v13.f32[2] + vaddv_f32(*v13.f32), v12.f32[2] + vaddv_f32(*v12.f32)) / 3.14159265 * 180.0;
  v15 = fmodf(v14, 360.0);
  v16 = fmodf(v15 + 360.0, 360.0);
  v17 = fabsf(fmodf(v16, 90.0));
  v18 = vabds_f32(90.0, v17);
  v19 = v17 < 0.001 || v18 < 0.001;
  if (!v19 || fabsf(v16) < 0.001)
  {
    return 0;
  }

  if (fabsf(v16 + -90.0) < 0.001)
  {
    return 1;
  }

  if (fabsf(v16 + -180.0) < 0.001)
  {
    return 2;
  }

  if (fabsf(v16 + -270.0) >= 0.001 && fabsf(v16 + 180.0) >= 0.001)
  {
    return 0;
  }

  return 3;
}

uint64_t sub_2401CA2D8(uint64_t *a1, double a2)
{
  v3 = sub_2401C9CBC(a1, a2);
  v4 = sub_2401C9528(*a1);
  v5 = vmulq_f32(v4, v4);
  *&v6 = v5.f32[2] + vaddv_f32(*v5.f32);
  *v5.f32 = vrsqrte_f32(v6);
  *v5.f32 = vmul_f32(*v5.f32, vrsqrts_f32(v6, vmul_f32(*v5.f32, *v5.f32)));
  v25 = vmulq_n_f32(v4, vmul_f32(*v5.f32, vrsqrts_f32(v6, vmul_f32(*v5.f32, *v5.f32))).f32[0]);
  v7 = sub_2401C9664(*a1);
  v8 = vmulq_f32(v7, v7);
  *&v9 = v8.f32[2] + vaddv_f32(*v8.f32);
  *v8.f32 = vrsqrte_f32(v9);
  *v8.f32 = vmul_f32(*v8.f32, vrsqrts_f32(v9, vmul_f32(*v8.f32, *v8.f32)));
  v24 = vmulq_n_f32(v7, vmul_f32(*v8.f32, vrsqrts_f32(v9, vmul_f32(*v8.f32, *v8.f32))).f32[0]);
  v10 = sub_2401C97A0(*a1);
  v11 = vmulq_f32(v10, v10);
  *&v12 = v11.f32[2] + vaddv_f32(*v11.f32);
  *v11.f32 = vrsqrte_f32(v12);
  *v11.f32 = vmul_f32(*v11.f32, vrsqrts_f32(v12, vmul_f32(*v11.f32, *v11.f32)));
  v13 = vmulq_n_f32(v10, vmul_f32(*v11.f32, vrsqrts_f32(v12, vmul_f32(*v11.f32, *v11.f32))).f32[0]);
  v14 = vmulq_f32(v25, v13);
  v15 = vmulq_f32(v24, v13);
  v16 = atan2f(v15.f32[2] + vaddv_f32(*v15.f32), v14.f32[2] + vaddv_f32(*v14.f32)) / 3.14159265 * 180.0;
  v17 = fmodf(v16, 360.0);
  v18 = fmodf(v17 + 360.0, 360.0);
  v19 = fabsf(fmodf(v18, 90.0));
  v20 = vabds_f32(90.0, v19);
  v21 = v19 < 0.001 || v20 < 0.001;
  if (v21 && fabsf(v18) >= 0.001)
  {
    if (fabsf(v18 + -90.0) < 0.001)
    {
      v22 = 1;
      return (v3 + v22) & 3;
    }

    if (fabsf(v18 + -180.0) < 0.001)
    {
      v22 = 2;
      return (v3 + v22) & 3;
    }

    if (fabsf(v18 + -270.0) < 0.001 || fabsf(v18 + 180.0) < 0.001)
    {
      v22 = 3;
      return (v3 + v22) & 3;
    }
  }

  v22 = 0;
  return (v3 + v22) & 3;
}

void sub_2401CA5D0()
{
  v0 = qword_280C03830;
  qword_280C03830 = 0;
  if (v0)
  {
    if (*(v0 + 55) < 0)
    {
      operator delete(*(v0 + 32));
      if ((*(v0 + 31) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }
    }

    else if ((*(v0 + 31) & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

    operator delete(*(v0 + 8));
LABEL_4:

    JUMPOUT(0x245CBCA30);
  }
}

uint64_t sub_2401CA658(uint64_t a1)
{
  *a1 = &unk_285227118;
  if (*(a1 + 152))
  {
    v2 = (a1 + 136);
    v3 = *(a1 + 144);
    v4 = *(*(a1 + 136) + 8);
    v5 = *v3;
    *(v5 + 8) = v4;
    *v4 = v5;
    *(a1 + 152) = 0;
    if (v3 != (a1 + 136))
    {
      do
      {
        v6 = v3[1];
        v7 = v3[3];
        if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          v8 = v3;
          (v7->__on_zero_shared)(v7);
          std::__shared_weak_count::__release_weak(v7);
          v3 = v8;
        }

        operator delete(v3);
        v3 = v6;
      }

      while (v6 != v2);
    }
  }

  std::condition_variable::~condition_variable((a1 + 80));
  std::mutex::~mutex((a1 + 16));
  return a1;
}

uint64_t **sub_2401CA750(uint64_t **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = *v1;
    *v1 = 0;
    if (v3)
    {
      sub_2401C6440(*(v3 + 8));
      MEMORY[0x245CBCA30](v3, 0x1020C4062D53EE8);
    }

    MEMORY[0x245CBCA30](v1, 0x20C4093837F09);
    return v2;
  }

  return result;
}

uint64_t sub_2401CA7CC(uint64_t a1)
{
  std::mutex::lock((a1 + 16));
  v2 = *(a1 + 152);
  std::mutex::unlock((a1 + 16));
  return v2;
}

void sub_2401CA804(uint64_t a1)
{
  std::mutex::lock((a1 + 16));
  if (*(a1 + 152))
  {
    v2 = *(a1 + 144);
    v3 = *(*(a1 + 136) + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    *(a1 + 152) = 0;
    if (v2 != (a1 + 136))
    {
      do
      {
        v5 = v2[1];
        v6 = v2[3];
        if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          v7 = v2;
          (v6->__on_zero_shared)(v6);
          std::__shared_weak_count::__release_weak(v6);
          v2 = v7;
        }

        operator delete(v2);
        v2 = v5;
      }

      while (v5 != (a1 + 136));
    }
  }

  std::mutex::unlock((a1 + 16));
}

uint64_t sub_2401CA8E8(uint64_t a1)
{
  std::mutex::lock((a1 + 16));
  if (*(a1 + 128) != 1)
  {
    operator new();
  }

  std::mutex::unlock((a1 + 16));
  return 0;
}

void sub_2401CAA44(uint64_t a1, void *a2, int a3, uint64_t a4)
{
  v23.__m_ = (a1 + 16);
  v23.__owns_ = 1;
  std::mutex::lock((a1 + 16));
  v8 = 0;
  v9 = *(a1 + 152);
  if (a3 < 1 || v9)
  {
    goto LABEL_18;
  }

  v8 = a4 != 0;
  if (a4)
  {
    if ((*(a4 + 8) & 1) == 0)
    {
      goto LABEL_37;
    }

    std::mutex::unlock(*a4);
    *(a4 + 8) = 0;
  }

  std::chrono::steady_clock::now();
  v10.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
  if (!v10.__d_.__rep_)
  {
    v11 = 0;
    goto LABEL_14;
  }

  if (v10.__d_.__rep_ < 1)
  {
    if (v10.__d_.__rep_ < 0xFFDF3B645A1CAC09)
    {
      v11 = 0x8000000000000000;
      goto LABEL_14;
    }

LABEL_13:
    v11 = 1000 * v10.__d_.__rep_;
    goto LABEL_14;
  }

  if (v10.__d_.__rep_ <= 0x20C49BA5E353F7)
  {
    goto LABEL_13;
  }

  v11 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_14:
  if (v11 <= ((1000000 * a3) ^ 0x7FFFFFFFFFFFFFFFLL))
  {
    v12.__d_.__rep_ = v11 + 1000000 * a3;
  }

  else
  {
    v12.__d_.__rep_ = 0x7FFFFFFFFFFFFFFFLL;
  }

  std::condition_variable::__do_timed_wait((a1 + 80), &v23, v12);
  std::chrono::steady_clock::now();
  v9 = *(a1 + 152);
LABEL_18:
  if (v9)
  {
    v13 = *(a1 + 144);
    v15 = *(v13 + 16);
    v14 = *(v13 + 24);
    if (v14)
    {
      atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
    }

    v16 = a2[1];
    *a2 = v15;
    a2[1] = v14;
    if (v16 && !atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v16->__on_zero_shared)(v16);
      std::__shared_weak_count::__release_weak(v16);
    }

    v17 = *(a1 + 144);
    v18 = *(a1 + 152);
    v20 = *v17;
    v19 = v17[1];
    *(v20 + 8) = v19;
    *v19 = v20;
    *(a1 + 152) = v18 - 1;
    v21 = v17[3];
    if (v21 && !atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v22 = v17;
      (v21->__on_zero_shared)(v21);
      std::__shared_weak_count::__release_weak(v21);
      v17 = v22;
    }

    operator delete(v17);
  }

  if (v23.__owns_)
  {
    std::mutex::unlock(v23.__m_);
  }

  if (v8)
  {
    if (*a4)
    {
      if (*(a4 + 8) != 1)
      {
        std::mutex::lock(*a4);
        *(a4 + 8) = 1;
        return;
      }
    }

    else
    {
      std::__throw_system_error(1, "unique_lock::lock: references null mutex");
    }

    std::__throw_system_error(11, "unique_lock::lock: already locked");
LABEL_37:
    std::__throw_system_error(1, "unique_lock::unlock: not locked");
    __break(1u);
  }
}

void sub_2401CACD4(uint64_t a1@<X0>, void *a2@<X8>)
{
  v11.__m_ = (a1 + 16);
  v11.__owns_ = 1;
  std::mutex::lock((a1 + 16));
  for (i = *(a1 + 152); !i; i = *(a1 + 152))
  {
    std::condition_variable::wait((a1 + 80), &v11);
  }

  v5 = *(a1 + 144);
  v6 = v5[3];
  *a2 = v5[2];
  a2[1] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    v5 = *(a1 + 144);
    i = *(a1 + 152);
    v7 = v5[3];
  }

  else
  {
    v7 = 0;
  }

  v9 = *v5;
  v8 = v5[1];
  *(v9 + 8) = v8;
  *v8 = v9;
  *(a1 + 152) = i - 1;
  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v10 = v5;
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
    v5 = v10;
  }

  operator delete(v5);
  if (v11.__owns_)
  {
    std::mutex::unlock(v11.__m_);
  }
}

void sub_2401CADD4(uint64_t a1)
{
  *a1 = &unk_285227118;
  if (*(a1 + 152))
  {
    v2 = (a1 + 136);
    v3 = *(a1 + 144);
    v4 = *(*(a1 + 136) + 8);
    v5 = *v3;
    *(v5 + 8) = v4;
    *v4 = v5;
    *(a1 + 152) = 0;
    if (v3 != (a1 + 136))
    {
      do
      {
        v6 = v3[1];
        v7 = v3[3];
        if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          v8 = v3;
          (v7->__on_zero_shared)(v7);
          std::__shared_weak_count::__release_weak(v7);
          v3 = v8;
        }

        operator delete(v3);
        v3 = v6;
      }

      while (v6 != v2);
    }
  }

  std::condition_variable::~condition_variable((a1 + 80));
  std::mutex::~mutex((a1 + 16));

  JUMPOUT(0x245CBCA30);
}

void sub_2401CAEEC(void *a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 23) < 0)
  {
    sub_2401C2FCC(__p, *a3, *(a3 + 8));
  }

  else
  {
    *__p = *a3;
    v5 = *(a3 + 16);
  }

  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  sub_24026DB30(a1);
}

uint64_t sub_2401CAF84(uint64_t result)
{
  if (*(result + 64) != 1 || (v1 = *(result + 56)) == 0 || atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((*(result + 23) & 0x80000000) == 0)
    {
      return result;
    }

    goto LABEL_5;
  }

  v3 = result;
  (v1->__on_zero_shared)(v1);
  std::__shared_weak_count::__release_weak(v1);
  result = v3;
  if (*(v3 + 23) < 0)
  {
LABEL_5:
    v2 = result;
    operator delete(*result);
    return v2;
  }

  return result;
}

void sub_2401CB04C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285226858;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CBCA30);
}

void *sub_2401CB0C0(void *a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    a1[2] = 0;
    if (v2 != a1)
    {
      do
      {
        v5 = v2[1];
        v6 = v2[3];
        if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          v7 = v2;
          (v6->__on_zero_shared)(v6);
          std::__shared_weak_count::__release_weak(v6);
          v2 = v7;
        }

        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }

  return a1;
}

void sub_2401CB188(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = objc_autoreleasePoolPush();
  std::mutex::lock((v1 + 40));
  v3 = *(v1 + 176);
  std::mutex::unlock((v1 + 40));
  v12 = 0uLL;
  sub_2401CAA44(v1 + 24, &v12, 0, 0);
  if (v4)
  {
    v5 = v12;
    if (v12)
    {
      v11[0] = 0;
      v11[1] = 0;
      if (v3 != 1 && (!*(*v12 + 8) || v3 > 10))
      {
        v7 = *(&v12 + 1);
        if (*(&v12 + 1))
        {
          atomic_fetch_add_explicit((*(&v12 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        std::mutex::lock(&stru_280C037D8);
        v13[0] = v5;
        v13[1] = v7;
        if (v7)
        {
          atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
        }

        sub_2401C64D4();
      }

      v8 = *v1;
      v10 = v12;
      if (*(&v12 + 1))
      {
        atomic_fetch_add_explicit((*(&v12 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      sub_2401C6DD8(v13, v8, &v10);
    }
  }

  v9 = *(&v12 + 1);
  if (*(&v12 + 1) && !atomic_fetch_add((*(&v12 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
  }

  objc_autoreleasePoolPop(v2);
}

void sub_2401CB488(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, char a15)
{
  sub_2401C1DF4(v15 - 48);
  std::mutex::unlock(&stru_280C037D8);
  sub_2401C1DF4(&a9);
  sub_2401C1DF4(&a13);
  sub_2401C1DF4(&a15);
  _Unwind_Resume(a1);
}

uint64_t sub_2401CB4F4(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285226E90;
  a2[1] = v2;
  return result;
}

void sub_2401CB5B0(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2852269A8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CBCA30);
}

uint64_t sub_2401CB628(uint64_t result)
{
  v1 = *(result + 24);
  *(result + 24) = 0;
  if (v1)
  {
    cva::DictionaryHandler::~DictionaryHandler((v1 + 40));

    JUMPOUT(0x245CBCA30);
  }

  return result;
}

void sub_2401CB690(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285226D28;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CBCA30);
}

uint64_t sub_2401CB704()
{
  if (atomic_load_explicit(&qword_280C03938, memory_order_acquire))
  {
    return qword_280C03848;
  }

  v1 = __cxa_guard_acquire(&qword_280C03938);
  v2 = 0x280C03000;
  if (v1)
  {
    qword_280C03848 = os_log_create("com.apple.AppleCVA", "Segmentation");
    __cxa_guard_release(&qword_280C03938);
    v2 = 0x280C03000uLL;
  }

  return *(v2 + 2120);
}

uint64_t sub_2401CB77C(char *a1, int *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  strcpy(__p, "Undefined");
  if (cva::utils::string::iequals())
  {
    *a2 = 0;
    return 1;
  }

  strcpy(__p, "PositiveX");
  if (cva::utils::string::iequals())
  {
    result = 1;
    *a2 = 1;
    return result;
  }

  strcpy(__p, "PositiveY");
  if (cva::utils::string::iequals())
  {
    v5 = 2;
LABEL_11:
    *a2 = v5;
    return 1;
  }

  strcpy(__p, "NegativeX");
  if (cva::utils::string::iequals())
  {
    v5 = 3;
    goto LABEL_11;
  }

  v9 = 9;
  strcpy(__p, "NegativeY");
  if (cva::utils::string::iequals())
  {
    v5 = 4;
    goto LABEL_11;
  }

  if ((atomic_load_explicit(&qword_280C03938, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03938))
  {
    qword_280C03848 = os_log_create("com.apple.AppleCVA", "Segmentation");
    __cxa_guard_release(&qword_280C03938);
  }

  v6 = qword_280C03848;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    if (a1[23] >= 0)
    {
      v7 = a1;
    }

    else
    {
      v7 = *a1;
    }

    LODWORD(__p[0]) = 136315138;
    *(__p + 4) = v7;
    _os_log_error_impl(&dword_2401B8000, v6, OS_LOG_TYPE_ERROR, "invalid string for gravity direction: %s", __p, 0xCu);
  }

  return 0;
}

void sub_2401CBA58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2401CBA84(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    VTPixelTransferSessionInvalidate(v2);
    CFRelease(*(a1 + 24));
  }

  if (*(a1 + 8))
  {
    MEMORY[0x245CBC070]();
    CFRelease(*(a1 + 8));
  }

  if (*a1)
  {
    CVPixelBufferRelease(*a1);
  }

  return a1;
}

void sub_2401CBB84(_Unwind_Exception *a1)
{
  sub_2401CBA84(v1 + 40);
  v4 = sub_2401C1DF4(v1);
  MEMORY[0x245CBCA30](v4, v2);
  _Unwind_Resume(a1);
}

uint64_t sub_2401CBBB0(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  kdebug_trace();
  v3 = *(a2 + 23);
  if ((v3 & 0x80u) != 0)
  {
    v3 = *(a2 + 8);
  }

  if (v3)
  {
    operator new();
  }

  if ((atomic_load_explicit(&qword_280C03938, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03938))
  {
    qword_280C03848 = os_log_create("com.apple.AppleCVA", "Segmentation");
    __cxa_guard_release(&qword_280C03938);
  }

  v4 = qword_280C03848;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    LOWORD(__p[0]) = 0;
    _os_log_error_impl(&dword_2401B8000, v4, OS_LOG_TYPE_ERROR, "cannot find resources", __p, 2u);
  }

  kdebug_trace();
  return 0;
}

void sub_2401CD478(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13, int a14, __int16 a15, char a16, char a17, int a18, void **a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41)
{
  cva::ItemHandler::~ItemHandler(&a36);
  sub_2401CD9BC(*(v41 - 120));
  sub_2401CDA18(&a19);
  sub_2401C1DF4(&a11);
  cva::Path::~Path(&a13);
  cva::Path::~Path(&a15);
  if (a30 < 0)
  {
    operator delete(__p);
  }

  kdebug_trace();
  _Unwind_Resume(a1);
}

void *sub_2401CD5BC(void *result, uint64_t *a2, const void **a3)
{
  v5 = result;
  v6 = result + 1;
  if (result + 1 == a2)
  {
    goto LABEL_23;
  }

  v7 = *(a3 + 23);
  if (v7 >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  if (v7 >= 0)
  {
    v9 = *(a3 + 23);
  }

  else
  {
    v9 = a3[1];
  }

  v10 = *(a2 + 55);
  if (v10 >= 0)
  {
    v11 = a2 + 4;
  }

  else
  {
    v11 = a2[4];
  }

  if (v10 >= 0)
  {
    v12 = *(a2 + 55);
  }

  else
  {
    v12 = a2[5];
  }

  if (v12 >= v9)
  {
    v13 = v9;
  }

  else
  {
    v13 = v12;
  }

  result = memcmp(v8, v11, v13);
  if (result)
  {
    if ((result & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

LABEL_23:
    v14 = *a2;
    if (*v5 == a2)
    {
      v16 = a2;
    }

    else
    {
      if (v14)
      {
        v15 = *a2;
        do
        {
          v16 = v15;
          v15 = v15[1];
        }

        while (v15);
      }

      else
      {
        v17 = a2;
        do
        {
          v16 = v17[2];
          v18 = *v16 == v17;
          v17 = v16;
        }

        while (v18);
      }

      v19 = *(v16 + 55);
      if (v19 >= 0)
      {
        v20 = v16 + 4;
      }

      else
      {
        v20 = v16[4];
      }

      if (v19 >= 0)
      {
        v21 = *(v16 + 55);
      }

      else
      {
        v21 = v16[5];
      }

      v22 = *(a3 + 23);
      if (v22 >= 0)
      {
        v23 = a3;
      }

      else
      {
        v23 = *a3;
      }

      if (v22 >= 0)
      {
        v24 = *(a3 + 23);
      }

      else
      {
        v24 = a3[1];
      }

      if (v24 >= v21)
      {
        v25 = v21;
      }

      else
      {
        v25 = v24;
      }

      result = memcmp(v20, v23, v25);
      if (result)
      {
        if ((result & 0x80000000) == 0)
        {
          goto LABEL_48;
        }
      }

      else if (v21 >= v24)
      {
LABEL_48:
        v26 = *v6;
        if (!*v6)
        {
          goto LABEL_75;
        }

        while (1)
        {
          v27 = v26;
          v30 = v26[4];
          v28 = v26 + 4;
          v29 = v30;
          v31 = *(v28 + 23);
          if (v31 >= 0)
          {
            v32 = v28;
          }

          else
          {
            v32 = v29;
          }

          if (v31 >= 0)
          {
            v33 = *(v28 + 23);
          }

          else
          {
            v33 = v28[1];
          }

          if (v33 >= v24)
          {
            v34 = v24;
          }

          else
          {
            v34 = v33;
          }

          v35 = memcmp(v23, v32, v34);
          if (v35)
          {
            if (v35 < 0)
            {
              goto LABEL_50;
            }

LABEL_64:
            result = memcmp(v32, v23, v34);
            if (result)
            {
              if ((result & 0x80000000) == 0)
              {
                goto LABEL_120;
              }
            }

            else if (v33 >= v24)
            {
LABEL_120:
              v36 = v6;
              goto LABEL_74;
            }

            v6 = v27 + 1;
            v26 = v27[1];
            if (!v26)
            {
              goto LABEL_75;
            }
          }

          else
          {
            if (v24 >= v33)
            {
              goto LABEL_64;
            }

LABEL_50:
            v26 = *v27;
            v6 = v27;
            if (!*v27)
            {
              goto LABEL_75;
            }
          }
        }
      }
    }

    if (v14)
    {
      v36 = v16 + 1;
    }

    else
    {
      v36 = a2;
    }

    goto LABEL_74;
  }

  if (v9 < v12)
  {
    goto LABEL_23;
  }

LABEL_19:
  result = memcmp(v11, v8, v13);
  if (result)
  {
    if ((result & 0x80000000) == 0)
    {
      return result;
    }
  }

  else if (v12 >= v9)
  {
    return result;
  }

  v36 = a2 + 1;
  v37 = a2[1];
  if (!v37)
  {
    v38 = a2;
    do
    {
      v39 = v38;
      v38 = v38[2];
    }

    while (*v38 != v39);
    if (v38 == v6)
    {
      goto LABEL_74;
    }

LABEL_85:
    v42 = v38[4];
    v40 = v38 + 4;
    v41 = v42;
    v43 = *(v40 + 23);
    if (v43 >= 0)
    {
      v44 = v40;
    }

    else
    {
      v44 = v41;
    }

    if (v43 >= 0)
    {
      v45 = *(v40 + 23);
    }

    else
    {
      v45 = v40[1];
    }

    if (v45 >= v9)
    {
      v46 = v9;
    }

    else
    {
      v46 = v45;
    }

    result = memcmp(v8, v44, v46);
    if (result)
    {
      if ((result & 0x80000000) != 0)
      {
        goto LABEL_74;
      }
    }

    else if (v9 < v45)
    {
      goto LABEL_74;
    }

    v47 = *v6;
    if (!*v6)
    {
LABEL_75:
      operator new();
    }

    while (1)
    {
      v48 = v47;
      v51 = v47[4];
      v49 = v47 + 4;
      v50 = v51;
      v52 = *(v49 + 23);
      if (v52 >= 0)
      {
        v53 = v49;
      }

      else
      {
        v53 = v50;
      }

      if (v52 >= 0)
      {
        v54 = *(v49 + 23);
      }

      else
      {
        v54 = v49[1];
      }

      if (v54 >= v9)
      {
        v55 = v9;
      }

      else
      {
        v55 = v54;
      }

      v56 = memcmp(v8, v53, v55);
      if (v56)
      {
        if (v56 < 0)
        {
          goto LABEL_100;
        }

LABEL_114:
        result = memcmp(v53, v8, v55);
        if (result)
        {
          if ((result & 0x80000000) == 0)
          {
            goto LABEL_120;
          }
        }

        else if (v54 >= v9)
        {
          goto LABEL_120;
        }

        v6 = v48 + 1;
        v47 = v48[1];
        if (!v47)
        {
          goto LABEL_75;
        }
      }

      else
      {
        if (v9 >= v54)
        {
          goto LABEL_114;
        }

LABEL_100:
        v47 = *v48;
        v6 = v48;
        if (!*v48)
        {
          goto LABEL_75;
        }
      }
    }
  }

  do
  {
    v36 = v37;
    v37 = *v37;
    v38 = v36;
  }

  while (v37);
  if (v36 != v6)
  {
    goto LABEL_85;
  }

LABEL_74:
  if (!*v36)
  {
    goto LABEL_75;
  }

  return result;
}

void sub_2401CD9A8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2401CDA8C(va);
  _Unwind_Resume(a1);
}

void sub_2401CD9BC(char *a1)
{
  if (a1)
  {
    sub_2401CD9BC(*a1);
    sub_2401CD9BC(*(a1 + 1));
    if (a1[55] < 0)
    {
      operator delete(*(a1 + 4));
    }

    operator delete(a1);
  }
}

void ***sub_2401CDA18(void ***a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void *sub_2401CDA8C(void *a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    if (*(v1 + 16) == 1 && *(v2 + 55) < 0)
    {
      v4 = v2;
      operator delete(*(v2 + 32));
      v2 = v4;
    }

    operator delete(v2);
    return v3;
  }

  return v1;
}

uint64_t **sub_2401CDAF4(uint64_t **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    free(v1[4]);
    free(v1[1]);
    v3 = *v1;
    *v1 = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    MEMORY[0x245CBCA30](v1, 0x10A0C40BEBECBA6);
    return v2;
  }

  return result;
}

uint64_t sub_2401CDB80(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    free(v1[4]);
    free(v1[1]);
    v2 = *v1;
    *v1 = 0;
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    JUMPOUT(0x245CBCA30);
  }

  return result;
}

void sub_2401CDC14(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CBCA30);
}

uint64_t sub_2401CDC50(CVPixelBufferRef *a1, cva *this, uint64_t a3, uint64_t a4)
{
  v8 = *a1;
  if (*a1)
  {
    IsPlanar = CVPixelBufferIsPlanar(*a1);
    if (CVPixelBufferGetWidth(v8) == this && CVPixelBufferGetHeight(v8) == a3 && CVPixelBufferGetPixelFormatType(v8) == a4)
    {
      if (IsPlanar)
      {
        v10 = 0;
        v11 = 1;
        while (v10 < CVPixelBufferGetPlaneCount(v8))
        {
          v11 = v11 && (CVPixelBufferGetBytesPerRowOfPlane(v8, v10++) & 0xF) == 0;
        }

        if (v11)
        {
          return 1;
        }
      }

      else if ((CVPixelBufferGetBytesPerRow(v8) & 0xF) == 0)
      {
        return 1;
      }
    }

    if (*a1)
    {
      CVPixelBufferRelease(*a1);
      *a1 = 0;
    }
  }

  cva::pixelBufferCreate(this, a3, a4, a1, 0x10, 0x10u, 0, 1u, 0, v13);
  return 2 * (*a1 != 0);
}

void sub_2401CDD8C(__CVBuffer *a1, const void *a2)
{
  IOSurface = CVPixelBufferGetIOSurface(a1);
  if (IOSurface)
  {
    v4 = *MEMORY[0x277CD2A50];

    IOSurfaceSetValue(IOSurface, v4, a2);
  }
}

void sub_2401CDDE0(uint64_t a1, unsigned int a2)
{
  *(a1 + 16) = a2;
  if (a2)
  {
    v2 = a2;
    if (*(a1 + 8) < a2)
    {
      free(*a1);
      v4 = (4 * v2 + 31) & 0x7FFFFFFE0;
      *a1 = 0;
      *(a1 + 8) = v4 >> 2;
      memptr = 0;
      malloc_type_posix_memalign(&memptr, 0x20uLL, v4, 0xE1AC2527uLL);
      *a1 = memptr;
    }
  }

  else
  {
    free(*a1);
    *a1 = 0;
    *(a1 + 8) = 0;
  }
}

uint64_t sub_2401CDE78(__CVBuffer *a1)
{
  if (a1)
  {
    CVPixelBufferLockBaseAddress(a1, 1uLL);
    PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
    if (PixelFormatType <= 1278226533)
    {
      if (PixelFormatType != 825306677 && PixelFormatType != 825437747)
      {
LABEL_12:
        CVPixelBufferUnlockBaseAddress(a1, 1uLL);
        return 0;
      }
    }

    else
    {
      if (PixelFormatType == 1278226534 || PixelFormatType == 1717855600)
      {
        cva::imageViewFromPixelBuffer<float>();
      }

      if (PixelFormatType != 1647392359)
      {
        goto LABEL_12;
      }
    }

    cva::imageViewFromPixelBuffer<unsigned short>();
  }

  return 0;
}

uint64_t sub_2401CE3BC(__CVBuffer *a1)
{
  if (a1)
  {
    CVPixelBufferLockBaseAddress(a1, 1uLL);
    PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
    if (PixelFormatType <= 1278226533)
    {
      if (PixelFormatType != 825306677 && PixelFormatType != 825437747)
      {
LABEL_12:
        CVPixelBufferUnlockBaseAddress(a1, 1uLL);
        return 0;
      }
    }

    else
    {
      if (PixelFormatType == 1278226534 || PixelFormatType == 1717855600)
      {
        cva::imageViewFromPixelBuffer<float>();
      }

      if (PixelFormatType != 1647392359)
      {
        goto LABEL_12;
      }
    }

    cva::imageViewFromPixelBuffer<unsigned short>();
  }

  return 0;
}

void *sub_2401CE8B4(void *result, unsigned int a2, uint64_t a3)
{
  v3 = a3;
  v4 = result;
  if (*(result + 2) >= a2 && *(result + 3) >= a3)
  {
    *result = 0;
    result[1] = a2 | (a3 << 32);
  }

  else
  {
    v6 = result[3];
    if (v6)
    {
      v7 = a2;
      free(v6);
      a2 = v7;
      v4[3] = 0;
    }

    *v4 = 0;
    v4[1] = a2 | (v3 << 32);
    v4[2] = ((((4 * a2 + 15) & 0xFFFFFFF0) >> 4) << 36) | 4;
    size = ((4 * a2 + 15) & 0xFFFFFFF0) * v3;
    if (size)
    {
      result = malloc_type_malloc(size, 0x100004052888210uLL);
    }

    else
    {
      result = 0;
    }

    v4[3] = result;
  }

  return result;
}

float *sub_2401CE980(float *result, float **a2)
{
  v2 = result;
  v3 = *a2;
  if (*a2 == result || (v4 = a2[1], v4 == result))
  {
    v5 = 0;
    result = sub_2401CE980(&v5);
    *v2 = v5;
  }

  else
  {
    *result = ((*v3 * *v4) + 0.0) + (v3[2] * v4[1]);
    result[1] = ((v3[1] * *v4) + 0.0) + (v3[3] * v4[1]);
  }

  return result;
}

__n128 sub_2401CEA0C(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 64) == 1)
  {
    v3 = *(*a2 + 8) + 40 * *(a2 + 60);
    if (*(v3 + 23) < 0)
    {
      sub_2401C2FCC(a1, *v3, *(v3 + 8));
    }

    else
    {
      *a1 = *v3;
      *(a1 + 16) = *(v3 + 16);
    }

    result = *(v3 + 24);
    *(a1 + 24) = result;
  }

  else
  {
    if ((atomic_load_explicit(&qword_280C03938, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03938))
    {
      qword_280C03848 = os_log_create("com.apple.AppleCVA", "Segmentation");
      __cxa_guard_release(&qword_280C03938);
    }

    v4 = qword_280C03848;
    if (os_log_type_enabled(qword_280C03848, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_error_impl(&dword_2401B8000, v4, OS_LOG_TYPE_ERROR, "no depth support in regressor", v6, 2u);
    }

    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = -1;
    *(a1 + 23) = 5;
    *a1 = 1835890020;
    *(a1 + 4) = 121;
    *(a1 + 32) = -1;
  }

  return result;
}

__n128 sub_2401CEB40(uint64_t a1, _BYTE *a2)
{
  if (a2[65] == 1)
  {
    v3 = *(*a2 + 32);
    if (*(v3 + 23) < 0)
    {
      sub_2401C2FCC(a1, *v3, *(v3 + 8));
    }

    else
    {
      *a1 = *v3;
      *(a1 + 16) = *(v3 + 16);
    }

    result = *(v3 + 24);
    *(a1 + 24) = result;
  }

  else
  {
    if ((atomic_load_explicit(&qword_280C03938, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03938))
    {
      qword_280C03848 = os_log_create("com.apple.AppleCVA", "Segmentation");
      __cxa_guard_release(&qword_280C03938);
    }

    v4 = qword_280C03848;
    if (os_log_type_enabled(qword_280C03848, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_error_impl(&dword_2401B8000, v4, OS_LOG_TYPE_ERROR, "no foreground color support in regressor", v6, 2u);
    }

    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = -1;
    *(a1 + 23) = 5;
    *a1 = 1835890020;
    *(a1 + 4) = 121;
    *(a1 + 32) = -1;
  }

  return result;
}

CFTypeRef *sub_2401CEC68(CFTypeRef *a1)
{
  v2 = *a1;
  if (v2)
  {
    VTPixelTransferSessionInvalidate(v2);
    CFRelease(*a1);
  }

  return a1;
}

CFTypeRef *sub_2401CECA0(CFTypeRef *a1)
{
  if (*a1)
  {
    MEMORY[0x245CBC070]();
    CFRelease(*a1);
  }

  return a1;
}

uint64_t sub_2401CECD8(uint64_t a1)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  if (VTPixelTransferSessionCreate(0, (a1 + 24)))
  {
    if ((atomic_load_explicit(&qword_280C03938, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03938))
    {
      qword_280C03848 = os_log_create("com.apple.AppleCVA", "Segmentation");
      __cxa_guard_release(&qword_280C03938);
    }

    v2 = qword_280C03848;
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      *v4 = 0;
      _os_log_error_impl(&dword_2401B8000, v2, OS_LOG_TYPE_ERROR, "Could not initialize scaler", v4, 2u);
    }
  }

  return a1;
}

void sub_2401CEDB0(_Unwind_Exception *a1)
{
  sub_2401CEC68((v1 + 24));
  sub_2401CECA0((v1 + 8));
  if (*v1)
  {
    CVPixelBufferRelease(*v1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2401CEDD8(uint64_t a1, int a2, CVPixelBufferRef pixelBuffer, __CVBuffer *a4)
{
  v68 = *MEMORY[0x277D85DE8];
  if (!pixelBuffer || !a4)
  {
    if ((atomic_load_explicit(&qword_280C03938, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03938))
    {
      qword_280C03848 = os_log_create("com.apple.AppleCVA", "Segmentation");
      __cxa_guard_release(&qword_280C03938);
    }

    v35 = qword_280C03848;
    if (!os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_125;
    }

    LOWORD(src.data) = 0;
    v36 = "invalid call";
LABEL_123:
    v57 = v35;
    v58 = 2;
    goto LABEL_124;
  }

  v5 = pixelBuffer;
  PixelFormatType = CVPixelBufferGetPixelFormatType(pixelBuffer);
  v9 = CVPixelBufferGetPixelFormatType(a4);
  v11 = PixelFormatType != 1278226488 && v9 != 1278226488;
  Width = CVPixelBufferGetWidth(v5);
  Height = CVPixelBufferGetHeight(v5);
  v14 = CVPixelBufferGetWidth(a4);
  v15 = CVPixelBufferGetHeight(a4);
  if (!Width || !Height || !v14 || (v16 = v15) == 0)
  {
    if ((atomic_load_explicit(&qword_280C03938, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03938))
    {
      qword_280C03848 = os_log_create("com.apple.AppleCVA", "Segmentation");
      __cxa_guard_release(&qword_280C03938);
    }

    v35 = qword_280C03848;
    if (!os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_125;
    }

    LOWORD(src.data) = 0;
    v36 = "zero width or height";
    goto LABEL_123;
  }

  v62 = Height;
  v63 = Width;
  v61 = PixelFormatType;
  v17 = CVPixelBufferGetWidth(v5);
  v18 = CVPixelBufferGetHeight(v5);
  v19 = CVPixelBufferGetWidth(a4);
  v20 = CVPixelBufferGetHeight(a4);
  v21 = 1.0;
  if (!v17 || !v18)
  {
    goto LABEL_24;
  }

  v22 = v19;
  if (((1 << a2) & 0x15) != 0)
  {
    v23 = v19;
  }

  else
  {
    v23 = v20;
  }

  if (((1 << a2) & 0x15) != 0)
  {
    v22 = v20;
  }

  v21 = v23 / v17;
  if ((v22 / v18) < v21)
  {
    v21 = v22 / v18;
  }

  if (v21 >= 0.25)
  {
LABEL_24:
    if (v11 || fabsf(v21 + -1.0) <= 0.000001)
    {
      v25 = a2;
      goto LABEL_48;
    }
  }

  v24 = __PAIR64__(v16, v14);
  v25 = a2;
  if ((a2 | 2) == 3)
  {
    v24 = vrev64_s32(__PAIR64__(v16, v14));
  }

  v26 = v24;
  if (v11)
  {
    v27 = v24;
    v28 = SHIDWORD(v24);
    v29 = v63 + 3;
    if ((v63 & 0x80000000) == 0)
    {
      v29 = v63;
    }

    v30 = v62 + 3;
    if ((v62 & 0x80000000) == 0)
    {
      v30 = v62;
    }

    if ((v63 & 3) == 0 && (v62 & 3) == 0)
    {
      v31 = (v29 >> 2);
      if (v31 >= v26)
      {
        v32 = (v30 >> 2);
        if (v32 >= SHIDWORD(v24))
        {
          v47 = v27 / v31;
          if ((v28 / v32) < v47)
          {
            v47 = v28 / v32;
          }

          if (v47 >= 0.25)
          {
            goto LABEL_76;
          }
        }
      }
    }

    if (v63)
    {
      goto LABEL_40;
    }

    if (v62)
    {
      goto LABEL_40;
    }

    v31 = (v63 / 2);
    if (v31 < v26)
    {
      goto LABEL_40;
    }

    v32 = (v62 / 2);
    if (v32 < SHIDWORD(v24))
    {
      goto LABEL_40;
    }

    v33 = v27 / v31;
    v34 = v28 / v32;
    if (v34 < v33)
    {
      v33 = v34;
    }

    if (v33 < 0.25)
    {
LABEL_40:
      v32 = v62;
      v26 = v63;
    }

    else
    {
LABEL_76:
      v26 = v31;
    }

    if (v61 > 875704949)
    {
      if (v61 == 875704950 || v61 == 2037741171)
      {
        goto LABEL_85;
      }

      v48 = 2037741158;
    }

    else
    {
      if (v61 == 875704422 || v61 == 875704438)
      {
        goto LABEL_85;
      }

      v48 = 875704934;
    }

    if (v61 == v48)
    {
LABEL_85:
      v26 = (v26 & 1) + v26;
      v32 = (v32 & 1) + v32;
    }
  }

  else
  {
    v32 = HIDWORD(v24);
  }

  v49 = *a1;
  if (!*a1)
  {
LABEL_109:
    cva::pixelBufferCreate(v26, v32, v61, a1, 0x10, 0x10u, 0, 1u, 0, v60);
    if (*a1)
    {
      IOSurface = CVPixelBufferGetIOSurface(*a1);
      if (IOSurface)
      {
        IOSurfaceSetValue(IOSurface, *MEMORY[0x277CD2A50], @"AppleCVA:Seg:RotationHelper");
      }
    }

    goto LABEL_112;
  }

  IsPlanar = CVPixelBufferIsPlanar(*a1);
  if (v26 != CVPixelBufferGetWidth(v49) || v32 != CVPixelBufferGetHeight(v49) || CVPixelBufferGetPixelFormatType(v49) != v61)
  {
    goto LABEL_107;
  }

  if (IsPlanar)
  {
    v51 = 0;
    v52 = 1;
    while (v51 < CVPixelBufferGetPlaneCount(v49))
    {
      v52 = v52 && (CVPixelBufferGetBytesPerRowOfPlane(v49, v51++) & 0xF) == 0;
    }

    if (v52)
    {
      goto LABEL_112;
    }

    goto LABEL_107;
  }

  if ((CVPixelBufferGetBytesPerRow(v49) & 0xF) != 0)
  {
LABEL_107:
    if (*a1)
    {
      CVPixelBufferRelease(*a1);
      *a1 = 0;
    }

    goto LABEL_109;
  }

LABEL_112:
  v56 = *(a1 + 24);
  if (!v56 || VTPixelTransferSessionTransferImage(v56, v5, *a1))
  {
    if ((atomic_load_explicit(&qword_280C03938, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03938))
    {
      qword_280C03848 = os_log_create("com.apple.AppleCVA", "Segmentation");
      __cxa_guard_release(&qword_280C03938);
    }

    v35 = qword_280C03848;
    if (!os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_125;
    }

    LODWORD(src.data) = 67110400;
    HIDWORD(src.data) = v63;
    LOWORD(src.height) = 1024;
    *(&src.height + 2) = v62;
    HIWORD(src.height) = 1024;
    LODWORD(src.width) = v61;
    WORD2(src.width) = 1024;
    *(&src.width + 6) = v26;
    WORD1(src.rowBytes) = 1024;
    HIDWORD(src.rowBytes) = v32;
    v66 = 1024;
    v67 = v61;
    v36 = "failed to scale image (%ux%u 0x%x -> %ux%u 0x%x)";
    v57 = v35;
    v58 = 38;
LABEL_124:
    _os_log_error_impl(&dword_2401B8000, v57, OS_LOG_TYPE_ERROR, v36, &src, v58);
LABEL_125:

    return 0;
  }

  v5 = *a1;
LABEL_48:
  if (CVPixelBufferGetPixelFormatType(v5) == 1278226488 && CVPixelBufferGetPixelFormatType(a4) == 1278226488)
  {
    CVPixelBufferLockBaseAddress(v5, 1uLL);
    CVPixelBufferLockBaseAddress(a4, 0);
    cva::imageViewFromPixelBuffer<unsigned char>();
  }

  v37 = (a1 + 8);
  if (*(a1 + 8))
  {
    if (*(a1 + 16) == v25)
    {
      goto LABEL_53;
    }

    MEMORY[0x245CBC070]();
    CFRelease(*v37);
    *v37 = 0;
  }

  v42 = VTImageRotationSessionCreate();
  if (v42)
  {
    v43 = v42;
    if ((atomic_load_explicit(&qword_280C03938, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03938))
    {
      qword_280C03848 = os_log_create("com.apple.AppleCVA", "Segmentation");
      __cxa_guard_release(&qword_280C03938);
    }

    v40 = qword_280C03848;
    if (!os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_120;
    }

    LODWORD(src.data) = 67109120;
    HIDWORD(src.data) = v43;
    v41 = "failed creating rotation session (%d)";
LABEL_63:
    p_src = &src;
    v45 = v40;
    v46 = 8;
LABEL_69:
    _os_log_error_impl(&dword_2401B8000, v45, OS_LOG_TYPE_ERROR, v41, p_src, v46);
LABEL_120:

    if ((atomic_load_explicit(&qword_280C03938, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03938))
    {
      qword_280C03848 = os_log_create("com.apple.AppleCVA", "Segmentation");
      __cxa_guard_release(&qword_280C03938);
    }

    v35 = qword_280C03848;
    if (!os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_125;
    }

    LOWORD(src.data) = 0;
    v36 = "Error rotating/scaling buffer";
    goto LABEL_123;
  }

  VTSessionSetProperty(*(a1 + 8), *MEMORY[0x277CE2800], *MEMORY[0x277CBED28]);
  *(a1 + 16) = v25;
  src.data = 0;
  if (VTSessionCopyProperty(*(a1 + 8), *MEMORY[0x277CE2810], *MEMORY[0x277CBECE8], &src))
  {
    if ((atomic_load_explicit(&qword_280C03938, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03938))
    {
      qword_280C03848 = os_log_create("com.apple.AppleCVA", "Segmentation");
      __cxa_guard_release(&qword_280C03938);
    }

    v40 = qword_280C03848;
    if (!os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_120;
    }

    LOWORD(dest.data) = 0;
    v41 = "could not get scaling property";
    goto LABEL_68;
  }

  if (!src.data)
  {
    if ((atomic_load_explicit(&qword_280C03938, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03938))
    {
      qword_280C03848 = os_log_create("com.apple.AppleCVA", "Segmentation");
      __cxa_guard_release(&qword_280C03938);
    }

    v40 = qword_280C03848;
    if (!os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_120;
    }

    LOWORD(dest.data) = 0;
    v41 = "could not get scaling property";
LABEL_68:
    p_src = &dest;
    v45 = v40;
    v46 = 2;
    goto LABEL_69;
  }

  Value = CFBooleanGetValue(src.data);
  CFRelease(src.data);
  src.data = 0;
  if (!Value)
  {
    if ((atomic_load_explicit(&qword_280C03938, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03938))
    {
      qword_280C03848 = os_log_create("com.apple.AppleCVA", "Segmentation");
      __cxa_guard_release(&qword_280C03938);
    }

    v40 = qword_280C03848;
    if (!os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_120;
    }

    LOWORD(dest.data) = 0;
    v41 = "scaling is not supported in for VTImageRotationSessionTransferImage";
    goto LABEL_68;
  }

LABEL_53:
  v38 = MEMORY[0x245CBC080]();
  if (v38)
  {
    v39 = v38;
    if ((atomic_load_explicit(&qword_280C03938, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03938))
    {
      qword_280C03848 = os_log_create("com.apple.AppleCVA", "Segmentation");
      __cxa_guard_release(&qword_280C03938);
    }

    v40 = qword_280C03848;
    if (!os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_120;
    }

    LODWORD(src.data) = 67109120;
    HIDWORD(src.data) = v39;
    v41 = "failed rotating the image(%d)";
    goto LABEL_63;
  }

  return 1;
}

void *sub_2401CF8EC(void *a1, void *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = a2[1] ^ *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = a2[1] ^ *a2;
    if (v3 >= *&v2)
    {
      v5 = v3 % *&v2;
    }
  }

  else
  {
    v5 = (*&v2 - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  result = *v6;
  if (*v6)
  {
    if (v4.u32[0] < 2uLL)
    {
      v8 = *&v2 - 1;
      while (1)
      {
        v10 = result[1];
        if (v3 == v10)
        {
          if (result[2] == *a2 && result[3] == a2[1])
          {
            return result;
          }
        }

        else if ((v10 & v8) != v5)
        {
          return 0;
        }

        result = *result;
        if (!result)
        {
          return result;
        }
      }
    }

    do
    {
      v12 = result[1];
      if (v3 == v12)
      {
        if (result[2] == *a2 && result[3] == a2[1])
        {
          return result;
        }
      }

      else
      {
        if (v12 >= *&v2)
        {
          v12 %= *&v2;
        }

        if (v12 != v5)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

uint64_t sub_2401CF9D8(uint64_t a1, __int128 *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  if ((*(a2 + 12) & 1) == 0)
  {
    if ((atomic_load_explicit(&qword_280C03940, memory_order_acquire) & 1) == 0)
    {
      if (__cxa_guard_acquire(&qword_280C03940))
      {
        qword_280C03850 = os_log_create("com.apple.AppleCVA", "ViewpointCorrection");
        __cxa_guard_release(&qword_280C03940);
      }
    }

    v2 = qword_280C03850;
    if (!os_log_type_enabled(qword_280C03850, OS_LOG_TYPE_ERROR))
    {
      return 1;
    }

    LOWORD(v15.value) = 0;
    v9 = "Precondition violated: CMTIME_IS_VALID(timestamp)";
    p_lhs = &v15;
    v11 = v2;
    v12 = 2;
    goto LABEL_15;
  }

  memset(&v15, 0, sizeof(v15));
  lhs = *a2;
  v14 = *a1;
  CMTimeSubtract(&v15, &lhs, &v14);
  if ((v15.flags & 1) == 0)
  {
    if (*(a1 + 32) == 1)
    {
      *(a1 + 32) = 0;
    }

    goto LABEL_13;
  }

  lhs = v15;
  Seconds = CMTimeGetSeconds(&lhs);
  if (Seconds >= 0.0)
  {
    *(a1 + 24) = Seconds;
    *(a1 + 32) = 1;
LABEL_13:
    result = 0;
    v13 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v13;
    return result;
  }

  v7 = *&Seconds;
  if ((atomic_load_explicit(&qword_280C03940, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03940))
  {
    qword_280C03850 = os_log_create("com.apple.AppleCVA", "ViewpointCorrection");
    __cxa_guard_release(&qword_280C03940);
  }

  v8 = qword_280C03850;
  if (!os_log_type_enabled(qword_280C03850, OS_LOG_TYPE_ERROR))
  {
    return 1;
  }

  LODWORD(lhs.value) = 134217984;
  *(&lhs.value + 4) = v7;
  v9 = "Timestamps must be increasing, got a diff of %f";
  p_lhs = &lhs;
  v11 = v8;
  v12 = 12;
LABEL_15:
  _os_log_error_impl(&dword_2401B8000, v11, OS_LOG_TYPE_ERROR, v9, p_lhs, v12);
  return 1;
}

uint64_t sub_2401CFC08(uint64_t a1, int a2, uint64_t a3)
{
  v13 = *MEMORY[0x277D85DE8];
  *v12 = *a3;
  *&v12[16] = *(a3 + 16);
  if (sub_2401CF9D8(a1 + 16, v12))
  {
    if ((atomic_load_explicit(&qword_280C03940, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03940))
    {
      qword_280C03850 = os_log_create("com.apple.AppleCVA", "ViewpointCorrection");
      __cxa_guard_release(&qword_280C03940);
    }

    v5 = qword_280C03850;
    if (os_log_type_enabled(qword_280C03850, OS_LOG_TYPE_ERROR))
    {
      *v12 = 136315394;
      *&v12[4] = "Precondition was violated";
      *&v12[12] = 2080;
      *&v12[14] = "Assertion failed";
      _os_log_error_impl(&dword_2401B8000, v5, OS_LOG_TYPE_ERROR, "Running m_timeDiff.update(timestamp) failed with %s, returning %s", v12, 0x16u);
    }

    return 2;
  }

  else if (*(a1 + 48))
  {
    v7 = *(a1 + 40);
    v8 = 0.0;
    if (a2)
    {
      v8 = *(a1 + 8) + v7;
    }

    *(a1 + 8) = v8;
    v9 = *(a1 + 12);
    v10 = v7 / *(a1 + 4);
    result = 0;
    if (v8 >= *a1)
    {
      v11 = fminf(v10 + v9, 1.0);
    }

    else
    {
      v11 = fmaxf(v9 - v10, 0.0);
    }

    *(a1 + 12) = v11;
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t sub_2401CFDA4(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  kdebug_trace();
  v2 = MTLCreateSystemDefaultDevice();
  if (v2)
  {
    kdebug_trace();
    v3 = objc_opt_new();
    [v3 setCommitSynchronously:1];
    inactive = dispatch_workloop_create_inactive("com.apple.applecva.viewpointcorrection.metal.workloop");
    if (inactive)
    {
      dispatch_workloop_set_scheduler_priority();
      dispatch_activate(inactive);
      v5 = dispatch_queue_create_with_target_V2("com.apple.applecva.viewpointcorrection.metal.queue", 0, inactive);
      [v3 setCompletionQueue:v5];
      if (v5)
      {
        v6 = [v2 newCommandQueueWithDescriptor:v3];
        v7 = *(a1 + 208);
        *(a1 + 208) = v6;

        if (v6)
        {
          v8 = 1;
          goto LABEL_22;
        }

        if ((atomic_load_explicit(&qword_280C03940, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03940))
        {
          qword_280C03850 = os_log_create("com.apple.AppleCVA", "ViewpointCorrection");
          __cxa_guard_release(&qword_280C03940);
        }

        v10 = qword_280C03850;
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_2401B8000, v10, OS_LOG_TYPE_ERROR, "Assertion failed: m_queue = [device newCommandQueueWithDescriptor:queueDescriptor]", buf, 2u);
        }

        v6 = 6;
      }

      else
      {
        if ((atomic_load_explicit(&qword_280C03940, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03940))
        {
          qword_280C03850 = os_log_create("com.apple.AppleCVA", "ViewpointCorrection");
          __cxa_guard_release(&qword_280C03940);
        }

        v10 = qword_280C03850;
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          v6 = 2;
          _os_log_error_impl(&dword_2401B8000, v10, OS_LOG_TYPE_ERROR, "Assertion failed: queueDescriptor.completionQueue = completionQueue", buf, 2u);
        }

        else
        {
          v6 = 2;
        }
      }
    }

    else
    {
      if ((atomic_load_explicit(&qword_280C03940, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03940))
      {
        qword_280C03850 = os_log_create("com.apple.AppleCVA", "ViewpointCorrection");
        __cxa_guard_release(&qword_280C03940);
      }

      v5 = qword_280C03850;
      if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v8 = 0;
        v6 = 2;
        goto LABEL_22;
      }

      *buf = 0;
      v6 = 2;
      _os_log_error_impl(&dword_2401B8000, v5, OS_LOG_TYPE_ERROR, "Assertion failed: completionWorkloop", buf, 2u);
    }

    v8 = 0;
LABEL_22:

    kdebug_trace();
    if (v8)
    {
      kdebug_trace();
      sub_2401F10D4(buf, v2);
    }

    goto LABEL_26;
  }

  if ((atomic_load_explicit(&qword_280C03940, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03940))
  {
    qword_280C03850 = os_log_create("com.apple.AppleCVA", "ViewpointCorrection");
    __cxa_guard_release(&qword_280C03940);
  }

  v9 = qword_280C03850;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_2401B8000, v9, OS_LOG_TYPE_ERROR, "Assertion failed: device = (id<MTLDeviceSPI>)MTLCreateSystemDefaultDevice()", buf, 2u);
  }

  v6 = 6;
LABEL_26:

  kdebug_trace();
  return v6;
}

void sub_2401D1980(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, void *a8, void *a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v17 = va_arg(va1, void);
  v19 = va_arg(va1, void);

  sub_2401F3FC4(v15);
  sub_2401E9A88(va1);

  kdebug_trace();
  cva::DictionaryHandler::~DictionaryHandler(va);

  kdebug_trace();
  _Unwind_Resume(a1);
}

uint64_t sub_2401D1B7C(uint64_t a1)
{
  v2 = *(a1 + 328);
  *(a1 + 328) = 0;
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      v4 = *(v2 + 16);
      v5 = *(v2 + 8);
      if (v4 != v3)
      {
        do
        {
          v6 = *(v4 - 8);
          if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v6->__on_zero_shared)(v6);
            std::__shared_weak_count::__release_weak(v6);
          }

          v4 -= 16;
        }

        while (v4 != v3);
        v5 = *(v2 + 8);
      }

      *(v2 + 16) = v3;
      operator delete(v5);
    }

    MEMORY[0x245CBCA30](v2, 0x1020C404F8A9440);
  }

  v7 = *(a1 + 320);
  *(a1 + 320) = 0;
  if (v7)
  {

    MEMORY[0x245CBCA30](v7, 0x80C40803F642BLL);
  }

  v8 = *(a1 + 312);
  *(a1 + 312) = 0;
  if (v8)
  {
    v9 = sub_2401E9978(v8);
    MEMORY[0x245CBCA30](v9, 0x10A2C40987185A4);
  }

  v10 = *(a1 + 280);
  if (v10)
  {
    v11 = *(a1 + 288);
    v12 = *(a1 + 280);
    if (v11 != v10)
    {
      do
      {

        sub_2401D1E98((v11 - 56));
        v13 = *(v11 - 64);
        *(v11 - 64) = 0;
        if (v13)
        {
          v14 = sub_2401D1F74(v13);
          MEMORY[0x245CBCA30](v14, 0x10A0C40130DBE62);
        }

        v11 -= 592;
        sub_2401D21DC(v11);
      }

      while (v11 != v10);
      v12 = *(a1 + 280);
    }

    *(a1 + 288) = v10;
    operator delete(v12);
  }

  v15 = *(a1 + 272);
  *(a1 + 272) = 0;
  if (v15)
  {
    v16 = *(v15 + 16);
    if (v16)
    {
      do
      {
        v17 = *v16;
        operator delete(v16);
        v16 = v17;
      }

      while (v17);
    }

    v18 = *v15;
    *v15 = 0;
    if (v18)
    {
      operator delete(v18);
    }

    MEMORY[0x245CBCA30](v15, 0x10A0C4069927905);
  }

  sub_2401D22A0((a1 + 264), 0);
  v19 = *(a1 + 256);
  *(a1 + 256) = 0;
  if (v19)
  {
    v20 = *(v19 + 8);
    if (v20)
    {
      CFRelease(v20);
      *(v19 + 8) = 0;
    }

    MEMORY[0x245CBCA30](v19, 0xA0C40BD48D6D6);
  }

  v21 = *(a1 + 248);
  *(a1 + 248) = 0;
  if (v21)
  {

    MEMORY[0x245CBCA30](v21, 0x80C4018A671A6);
  }

  v22 = *(a1 + 160);
  if (v22)
  {
    *(a1 + 168) = v22;
    operator delete(v22);
  }

  return a1;
}

uint64_t *sub_2401D1E44(uint64_t *a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    v4 = sub_2401D1B7C(v2);
    MEMORY[0x245CBCA30](v4, 0x10A0C408B1AEA8CLL);
    return v3;
  }

  return v1;
}

id **sub_2401D1E98(id **a1)
{
  v2 = a1[3];
  a1[3] = 0;
  if (v2)
  {

    MEMORY[0x245CBCA30](v2, 0x80C40803F642BLL);
  }

  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {

    MEMORY[0x245CBCA30](v3, 0x80C40803F642BLL);
  }

  v4 = a1[1];
  a1[1] = 0;
  if (v4)
  {

    MEMORY[0x245CBCA30](v4, 0x80C40803F642BLL);
  }

  v5 = *a1;
  *a1 = 0;
  if (v5)
  {

    MEMORY[0x245CBCA30](v5, 0x80C40803F642BLL);
  }

  return a1;
}

void *sub_2401D1F74(void *a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = a1[31];
  a1[31] = 0;
  if (v2)
  {
    v3 = e5rt_execution_stream_operation_release();
    if (v3)
    {
      v19 = v3;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v22 = v19;
        _os_log_error_impl(&dword_2401B8000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "e5rt::AssertSuccess failed with error code %d.", buf, 8u);
      }
    }
  }

  v4 = a1[30];
  a1[30] = 0;
  if (v4)
  {
    v5 = e5rt_execution_stream_release();
    if (v5)
    {
      v20 = v5;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v22 = v20;
        _os_log_error_impl(&dword_2401B8000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "e5rt::AssertSuccess failed with error code %d.", buf, 8u);
      }
    }
  }

  v6 = a1[27];
  if (v6)
  {
    do
    {
      v15 = *v6;
      if (*(v6 + 39) < 0)
      {
        operator delete(v6[2]);
      }

      operator delete(v6);
      v6 = v15;
    }

    while (v15);
  }

  v7 = a1[25];
  a1[25] = 0;
  if (v7)
  {
    operator delete(v7);
  }

  v8 = a1[22];
  if (v8)
  {
    do
    {
      v16 = *v8;
      if (*(v8 + 39) < 0)
      {
        operator delete(v8[2]);
      }

      operator delete(v8);
      v8 = v16;
    }

    while (v16);
  }

  v9 = a1[20];
  a1[20] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  v10 = a1[17];
  if (v10)
  {
    do
    {
      v17 = *v10;

      if (*(v10 + 39) < 0)
      {
        operator delete(v10[2]);
      }

      operator delete(v10);
      v10 = v17;
    }

    while (v17);
  }

  v11 = a1[15];
  a1[15] = 0;
  if (v11)
  {
    operator delete(v11);
  }

  v12 = a1[12];
  if (v12)
  {
    do
    {
      v18 = *v12;

      if (*(v12 + 39) < 0)
      {
        operator delete(v12[2]);
      }

      operator delete(v12);
      v12 = v18;
    }

    while (v18);
  }

  v13 = a1[10];
  a1[10] = 0;
  if (v13)
  {
    operator delete(v13);
  }

  sub_2401D235C((a1 + 5));
  sub_2401D235C(a1);
  return a1;
}

uint64_t sub_2401D21DC(uint64_t a1)
{
  v2 = *(a1 + 504);
  *(a1 + 504) = 0;
  if (v2)
  {

    MEMORY[0x245CBCA30](v2, 0x80C40803F642BLL);
  }

  v3 = *(a1 + 328);
  *(a1 + 328) = 0;
  if (v3)
  {

    MEMORY[0x245CBCA30](v3, 0x80C40803F642BLL);
  }

  v4 = *(a1 + 168);
  *(a1 + 168) = 0;
  if (v4)
  {

    MEMORY[0x245CBCA30](v4, 0x80C40803F642BLL);
  }

  return a1;
}

uint64_t *sub_2401D22A0(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *(v2 + 16);
    *(v2 + 16) = 0;
    if (v3)
    {

      MEMORY[0x245CBCA30](v3, 0x1080C4057E67DB5);
    }

    v4 = *(v2 + 8);
    *(v2 + 8) = 0;
    if (v4)
    {

      MEMORY[0x245CBCA30](v4, 0x1080C4057E67DB5);
    }

    JUMPOUT(0x245CBCA30);
  }

  return result;
}

uint64_t sub_2401D235C(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = MEMORY[0x277D86220];
    do
    {
      v4 = *v2;
      v5 = *(v2 + 5);
      *(v2 + 5) = 0;
      if (v5)
      {
        v6 = e5rt_io_port_release();
        if (v6)
        {
          v7 = v6;
          if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109120;
            v11 = v7;
            _os_log_error_impl(&dword_2401B8000, v3, OS_LOG_TYPE_ERROR, "e5rt::AssertSuccess failed with error code %d.", buf, 8u);
          }
        }
      }

      if (v2[39] < 0)
      {
        operator delete(*(v2 + 2));
      }

      operator delete(v2);
      v2 = v4;
    }

    while (v4);
  }

  v8 = *a1;
  *a1 = 0;
  if (v8)
  {
    operator delete(v8);
  }

  return a1;
}

uint64_t sub_2401D2490(uint64_t a1, unsigned int a2)
{
  v83 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 280);
  v2 = *(a1 + 288);
  v4 = 0x14C1BACF914C1BADLL * ((v2 - v3) >> 4);
  _CF = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && _CF)
  {
    v7 = *(a1 + 296);
    if (0x14C1BACF914C1BADLL * ((v7 - v2) >> 4) < v6)
    {
      v8 = 0x14C1BACF914C1BADLL * ((v7 - v3) >> 4);
      v9 = 2 * v8;
      if (2 * v8 <= a2)
      {
        v9 = a2;
      }

      if (v8 >= 0x3759F22983759FLL)
      {
        v10 = 0x6EB3E45306EB3ELL;
      }

      else
      {
        v10 = v9;
      }

      if (v10 <= 0x6EB3E45306EB3ELL)
      {
        operator new();
      }

      sub_2401BDE28();
    }

    v15 = v2 + 592 * v6;
    v16 = MEMORY[0x277D860B0];
    v17 = v2 + 400;
    __asm { FMOV            V9.2S, #1.0 }

    do
    {
      bzero(v2, 0x250uLL);
      v21 = *v16;
      v22 = v16[1];
      v23 = v16[2];
      *(v2 + 16) = *v16;
      *(v2 + 32) = v22;
      *(v2 + 48) = v23;
      *(v2 + 64) = &off_285227260;
      *(v2 + 72) = 0x100000001;
      *(v2 + 80) = 1065353216;
      *(v2 + 84) = 0;
      *(v2 + 92) = 0x3F80000000000000;
      *(v2 + 100) = 0;
      *(v2 + 108) = 0;
      *(v2 + 120) = 0;
      *(v2 + 128) = 0;
      *(v2 + 136) = 0;
      *(v2 + 144) = 0x3F80000000000000;
      *(v2 + 112) = _D9;
      *(v2 + 132) = 1065353216;
      *(v2 + 160) = 0;
      *(v2 + 152) = 0;
      v24 = v16[1];
      v25 = v16[2];
      *(v2 + 176) = v21;
      *(v2 + 192) = v24;
      *(v2 + 208) = v25;
      *(v2 + 224) = &off_285227260;
      *(v2 + 232) = 0x100000001;
      *(v2 + 240) = 1065353216;
      *(v2 + 244) = 0;
      *(v2 + 252) = 0;
      *(v2 + 256) = 1065353216;
      v26 = v2 + 260;
      *(v2 + 268) = 0;
      *(v2 + 260) = 0;
      *(v2 + 280) = 0;
      *(v2 + 288) = 0;
      *(v2 + 296) = 0;
      *(v2 + 304) = 0x3F80000000000000;
      *(v2 + 272) = _D9;
      *(v2 + 292) = 1065353216;
      *(v2 + 320) = 0;
      *(v2 + 312) = 0;
      *(v2 + 328) = 0;
      *(v2 + 336) = 0;
      *(v2 + 352) = v21;
      *(v2 + 368) = v24;
      *(v2 + 384) = v25;
      *(v2 + 400) = &off_285227260;
      *(v2 + 408) = 0x100000001;
      *(v2 + 416) = 1065353216;
      *(v2 + 428) = 0;
      *(v2 + 420) = 0;
      *(v2 + 432) = 1065353216;
      *(v2 + 444) = 0;
      *(v2 + 456) = 0;
      *(v2 + 464) = 0;
      *(v2 + 480) = 0;
      *(v2 + 472) = 0;
      *(v2 + 448) = _D9;
      *(v2 + 468) = 1065353216;
      *(v2 + 484) = 1065353216;
      *(v2 + 496) = 0;
      *(v2 + 488) = 0;
      *(v2 + 504) = 0;
      *(v2 + 512) = 0;
      *(v2 + 576) = 0;
      *(v2 + 544) = 0u;
      *(v2 + 560) = 0u;
      *(v2 + 528) = 0u;
      v17 += 592;
      v2 += 592;
      *(v26 + 176) = 0;
    }

    while (v2 != v15);
    v11 = a1;
    *(a1 + 288) = v15;
  }

  else
  {
    v11 = a1;
    if (!_CF)
    {
      v12 = v3 + 592 * a2;
      while (v2 != v12)
      {

        sub_2401D1E98((v2 - 56));
        v13 = *(v2 - 64);
        *(v2 - 64) = 0;
        if (v13)
        {
          v14 = sub_2401D1F74(v13);
          MEMORY[0x245CBCA30](v14, 0x10A0C40130DBE62);
        }

        v2 -= 592;
        sub_2401D21DC(v2);
      }

      *(v11 + 288) = v12;
    }
  }

  kdebug_trace();
  sub_24024BD98(&__p, "resources_viewpointcorrection/");
  if (*(v11 + 280) != *(v11 + 288))
  {
    operator new();
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  kdebug_trace();
  kdebug_trace();
  v27 = *(a1 + 280);
  if (*(a1 + 288) != v27)
  {
    *&v77 = **(a1 + 256);
    *v80 = 0;
    operator new();
  }

  v28 = *(v27 + 528);
  buf[23] = 13;
  strcpy(buf, "camera_offset");
  v29 = sub_2401D71D8((v28 + 80), buf);
  if (!v29)
  {
    if ((atomic_load_explicit(&qword_280C03940, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03940))
    {
      qword_280C03850 = os_log_create("com.apple.AppleCVA", "ViewpointCorrection");
      __cxa_guard_release(&qword_280C03940);
    }

    v67 = qword_280C03850;
    if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v68 = 2;
      _os_log_error_impl(&dword_2401B8000, v67, OS_LOG_TYPE_ERROR, "Assertion failed: it != inputSurfaceProps.end()", buf, 2u);
    }

    else
    {
      v68 = 2;
    }

    goto LABEL_103;
  }

  v30 = [objc_alloc(MEMORY[0x277CD2930]) initWithProperties:v29[5]];
  v31 = *(a1 + 304);
  *(a1 + 304) = v30;

  kdebug_trace();
  kdebug_trace();
  if (*(a1 + 288) == *(a1 + 280))
  {
    kdebug_trace();
    kdebug_trace();
    v64 = *(a1 + 280);
    if (v64 != *(a1 + 288))
    {
      v65 = *(a1 + 304);
      memset(buf, 0, sizeof(buf));
      v82 = 1065353216;
      v66 = **(v64 + 168);
      operator new();
    }

    v68 = 0;
    goto LABEL_104;
  }

  v32 = *(a1 + 280);
  v33 = **(a1 + 256);
  *&v77 = v33;
  *v79 = 0;
  v34 = *(v32 + 528);
  buf[23] = 9;
  strcpy(buf, "landmarks");
  v35 = sub_2401D78FC(buf, 9uLL);
  v36 = v34[26];
  if (!*&v36)
  {
    goto LABEL_108;
  }

  v37 = vcnt_s8(v36);
  v37.i16[0] = vaddlv_u8(v37);
  if (v37.u32[0] > 1uLL)
  {
    v38 = v35;
    if (v35 >= *&v36)
    {
      v38 = v35 % *&v36;
    }
  }

  else
  {
    v38 = (*&v36 - 1) & v35;
  }

  v39 = *(v34[25] + 8 * v38);
  if (!v39)
  {
    goto LABEL_108;
  }

  v40 = *v39;
  if (!v40)
  {
    goto LABEL_108;
  }

  if (v37.u32[0] < 2uLL)
  {
    v41 = *&v36 - 1;
    while (1)
    {
      v49 = v40[1];
      if (v35 == v49)
      {
        v50 = *(v40 + 39);
        v51 = v50;
        if (v50 < 0)
        {
          v50 = v40[3];
        }

        if (v50 == 9)
        {
          v52 = v51 >= 0 ? (v40 + 2) : v40[2];
          v53 = *v52;
          v54 = *(v52 + 8);
          if (v53 == *buf && v54 == buf[8])
          {
            goto LABEL_69;
          }
        }
      }

      else if ((v49 & v41) != v38)
      {
        goto LABEL_108;
      }

      v40 = *v40;
      if (!v40)
      {
        goto LABEL_108;
      }
    }
  }

  while (1)
  {
    v42 = v40[1];
    if (v35 == v42)
    {
      break;
    }

    if (v42 >= *&v36)
    {
      v42 %= *&v36;
    }

    if (v42 != v38)
    {
      goto LABEL_108;
    }

LABEL_39:
    v40 = *v40;
    if (!v40)
    {
      goto LABEL_108;
    }
  }

  v43 = *(v40 + 39);
  v44 = v43;
  if (v43 < 0)
  {
    v43 = v40[3];
  }

  if (v43 != 9)
  {
    goto LABEL_39;
  }

  v45 = v44 >= 0 ? (v40 + 2) : v40[2];
  v46 = *v45;
  v47 = *(v45 + 8);
  if (v46 != *buf || v47 != buf[8])
  {
    goto LABEL_39;
  }

LABEL_69:
  if (v40[8] != 24)
  {
    if ((atomic_load_explicit(&qword_280C03940, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03940))
    {
      qword_280C03850 = os_log_create("com.apple.AppleCVA", "ViewpointCorrection");
      __cxa_guard_release(&qword_280C03940);
    }

    v69 = qword_280C03850;
    if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2401B8000, v69, OS_LOG_TYPE_ERROR, "Precondition violated: outputDims.at(ViewpointCorrectionRegressor::kOutputNameLandmarks)[2] == 2 * TrackedFace::kLandmarkCount", buf, 2u);
    }

    v70 = 1;
    goto LABEL_97;
  }

  buf[23] = 21;
  strcpy(buf, "left_eye_warp_field_X");
  v56 = sub_2401D71D8(v34 + 15, buf);
  if (!v56 || (v57 = v56, buf[23] = 21, strcpy(buf, "left_eye_warp_field_Y"), (v58 = sub_2401D71D8(v34 + 15, buf)) == 0) || (v59 = v58, strcpy(buf, "right_eye_warp_field_X"), buf[23] = 22, (v60 = sub_2401D71D8(v34 + 15, buf)) == 0) || (v61 = v60, strcpy(buf, "right_eye_warp_field_Y"), buf[23] = 22, (v62 = sub_2401D71D8(v34 + 15, buf)) == 0))
  {
LABEL_108:
    abort();
  }

  v63 = v62;
  if (([v57[5] isEqualToDictionary:v59[5]] & 1) == 0)
  {
    if ((atomic_load_explicit(&qword_280C03940, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03940))
    {
      qword_280C03850 = os_log_create("com.apple.AppleCVA", "ViewpointCorrection");
      __cxa_guard_release(&qword_280C03940);
    }

    v69 = qword_280C03850;
    if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v71 = "Assertion failed: [leftWarpSurfacePropsX isEqualToDictionary:leftWarpSurfacePropsY]";
      goto LABEL_107;
    }

LABEL_96:
    v70 = 2;
    goto LABEL_97;
  }

  if (([v57[5] isEqualToDictionary:v61[5]] & 1) == 0)
  {
    if ((atomic_load_explicit(&qword_280C03940, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03940))
    {
      qword_280C03850 = os_log_create("com.apple.AppleCVA", "ViewpointCorrection");
      __cxa_guard_release(&qword_280C03940);
    }

    v69 = qword_280C03850;
    if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v71 = "Assertion failed: [leftWarpSurfacePropsX isEqualToDictionary:rightWarpSurfacePropsX]";
      goto LABEL_107;
    }

    goto LABEL_96;
  }

  if ([v57[5] isEqualToDictionary:v63[5]])
  {
    *v78 = v79;
    *&v78[8] = &v77;
    sub_2401D7D9C(v78, v32 + 536, v57[5], @"leftEyeWarpfieldX");
  }

  if ((atomic_load_explicit(&qword_280C03940, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03940))
  {
    qword_280C03850 = os_log_create("com.apple.AppleCVA", "ViewpointCorrection");
    __cxa_guard_release(&qword_280C03940);
  }

  v69 = qword_280C03850;
  if (!os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_96;
  }

  *buf = 0;
  v71 = "Assertion failed: [leftWarpSurfacePropsX isEqualToDictionary:rightWarpSurfacePropsY]";
LABEL_107:
  v70 = 2;
  _os_log_error_impl(&dword_2401B8000, v69, OS_LOG_TYPE_ERROR, v71, buf, 2u);
LABEL_97:

  if (v70 == 1)
  {
    v68 = 2;
  }

  else
  {
    v68 = v70;
  }

  if ((atomic_load_explicit(&qword_280C03940, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03940))
  {
    qword_280C03850 = os_log_create("com.apple.AppleCVA", "ViewpointCorrection");
    __cxa_guard_release(&qword_280C03940);
  }

  v67 = qword_280C03850;
  if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
  {
    v73 = off_278C9DF08[v70 - 1];
    v74 = off_278C9DF08[(v68 - 1)];
    *buf = 136315394;
    *&buf[4] = v73;
    *&buf[12] = 2080;
    *&buf[14] = v74;
    _os_log_error_impl(&dword_2401B8000, v67, OS_LOG_TYPE_ERROR, "Running setupRegressorOutputs(m_regressorsWithData[i], m_metalHelpers->device(), i) failed with %s, returning %s", buf, 0x16u);
  }

LABEL_103:

LABEL_104:
  kdebug_trace();
  return v68;
}

void sub_2401D647C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46, void *a47)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a29)
  {
    operator delete(a29);
  }

  sub_2401E54DC(&a47);
  if (a46 < 0)
  {
    operator delete(a41);
  }

  kdebug_trace();
  _Unwind_Resume(a1);
}

uint64_t sub_2401D67F0(uint64_t a1)
{
  v27[5] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 280);
  if (v1 == *(a1 + 288))
  {
    if ((atomic_load_explicit(&qword_280C03940, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03940))
    {
      qword_280C03850 = os_log_create("com.apple.AppleCVA", "ViewpointCorrection");
      __cxa_guard_release(&qword_280C03940);
    }

    v17 = qword_280C03850;
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }

    *buf = 0;
    v19 = "Precondition violated: !m_regressorsWithData.empty()";
    goto LABEL_17;
  }

  v2 = *(v1 + 168);
  if (!*v2)
  {
    if ((atomic_load_explicit(&qword_280C03940, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03940))
    {
      qword_280C03850 = os_log_create("com.apple.AppleCVA", "ViewpointCorrection");
      __cxa_guard_release(&qword_280C03940);
    }

    v17 = qword_280C03850;
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }

    *buf = 0;
    v19 = "Precondition violated: faceCrop->surface()";
LABEL_17:
    _os_log_error_impl(&dword_2401B8000, v17, OS_LOG_TYPE_ERROR, v19, buf, 2u);
LABEL_10:
    v20 = 1;
    goto LABEL_15;
  }

  v26[0] = *MEMORY[0x277CD2928];
  v4 = MEMORY[0x277CCABB0];
  v24 = *v2;
  v23 = [v4 numberWithInteger:{objc_msgSend(v24, "width")}];
  v27[0] = v23;
  v26[1] = *MEMORY[0x277CD28D0];
  v5 = MEMORY[0x277CCABB0];
  v6 = **(v1 + 168);
  v7 = [v5 numberWithInteger:{objc_msgSend(v6, "height") / 2}];
  v27[1] = v7;
  v26[2] = *MEMORY[0x277CD28B0];
  v8 = MEMORY[0x277CCABB0];
  v9 = **(v1 + 168);
  v10 = [v8 numberWithInteger:{objc_msgSend(v9, "bytesPerElement")}];
  v27[2] = v10;
  v26[3] = *MEMORY[0x277CD28B8];
  v11 = MEMORY[0x277CCABB0];
  v12 = **(v1 + 168);
  v13 = [v11 numberWithInteger:{objc_msgSend(v12, "bytesPerRow")}];
  v27[3] = v13;
  v26[4] = *MEMORY[0x277CD28D8];
  v14 = MEMORY[0x277CCABB0];
  v15 = **(v1 + 168);
  v16 = [v14 numberWithUnsignedInt:{objc_msgSend(v15, "pixelFormat")}];
  v27[4] = v16;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:5];

  v18 = [objc_alloc(MEMORY[0x277CD2930]) initWithProperties:v17];
  if (v18)
  {
    sub_2401F4DD8(buf, **(a1 + 256), v18, @"faceCropNoise.texture");
  }

  if ((atomic_load_explicit(&qword_280C03940, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03940))
  {
    qword_280C03850 = os_log_create("com.apple.AppleCVA", "ViewpointCorrection");
    __cxa_guard_release(&qword_280C03940);
  }

  v21 = qword_280C03850;
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_2401B8000, v21, OS_LOG_TYPE_ERROR, "Assertion failed: noiseSurface", buf, 2u);
  }

  v20 = 2;
LABEL_15:

  return v20;
}

uint64_t sub_2401D6F10(uint64_t result, uint64_t a2)
{
  v3 = *result;
  v4 = *a2;
  *a2 = 0;
  v5 = *v3;
  *v3 = v4;
  if (v5)
  {
    v6 = result;

    MEMORY[0x245CBCA30](v5, 0x80C4018A671A6);
    result = v6;
  }

  **(result + 8) = *(a2 + 8);
  return result;
}

id **sub_2401D6F9C(id **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;

    MEMORY[0x245CBCA30](v1, 0x80C4018A671A6);
    return v2;
  }

  return result;
}

uint64_t sub_2401D7004(uint64_t result, uint64_t *a2)
{
  v3 = *result;
  v4 = *a2;
  *a2 = 0;
  v5 = *v3;
  *v3 = v4;
  if (v5)
  {
    v6 = result;
    v7 = *(v5 + 8);
    if (v7)
    {
      v8 = *(v5 + 16);
      v9 = *(v5 + 8);
      if (v8 != v7)
      {
        do
        {
          v10 = *(v8 - 8);
          if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v10->__on_zero_shared)(v10);
            std::__shared_weak_count::__release_weak(v10);
          }

          v8 -= 16;
        }

        while (v8 != v7);
        v9 = *(v5 + 8);
      }

      *(v5 + 16) = v7;
      operator delete(v9);
    }

    MEMORY[0x245CBCA30](v5, 0x1020C404F8A9440);
    result = v6;
  }

  **(result + 8) = *(a2 + 2);
  return result;
}

void *sub_2401D7100(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = *(v1 + 8);
    if (v3)
    {
      v4 = *(v1 + 16);
      v5 = *(v1 + 8);
      if (v4 != v3)
      {
        do
        {
          v6 = *(v4 - 8);
          if (v6)
          {
            if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v6->__on_zero_shared)(v6);
              std::__shared_weak_count::__release_weak(v6);
            }
          }

          v4 -= 16;
        }

        while (v4 != v3);
        v5 = *(v1 + 8);
      }

      *(v1 + 16) = v3;
      operator delete(v5);
    }

    MEMORY[0x245CBCA30](v1, 0x1020C404F8A9440);
    return v2;
  }

  return result;
}

uint64_t **sub_2401D71D8(void *a1, uint64_t a2)
{
  v3 = *(a2 + 23);
  if (v3 >= 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = *a2;
  }

  if (v3 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = *(a2 + 8);
  }

  v6 = sub_2401D78FC(v4, v5);
  v7 = a1[1];
  if (!*&v7)
  {
    return 0;
  }

  v8 = v6;
  v9 = vcnt_s8(v7);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = v6;
    if (v6 >= *&v7)
    {
      v10 = v6 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v6;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11)
  {
    return 0;
  }

  v12 = *v11;
  if (*v11)
  {
    if (v9.u32[0] < 2uLL)
    {
      v13 = *&v7 - 1;
      while (1)
      {
        v14 = v12[1];
        if (v8 == v14)
        {
          v15 = *(v12 + 39);
          v16 = v15;
          if (v15 < 0)
          {
            v15 = v12[3];
          }

          if (v15 == v5)
          {
            v17 = v16 >= 0 ? (v12 + 2) : v12[2];
            if (!memcmp(v17, v4, v5))
            {
              return v12;
            }
          }
        }

        else if ((v14 & v13) != v10)
        {
          return 0;
        }

        v12 = *v12;
        if (!v12)
        {
          return v12;
        }
      }
    }

    do
    {
      v18 = v12[1];
      if (v8 == v18)
      {
        v19 = *(v12 + 39);
        v20 = v19;
        if (v19 < 0)
        {
          v19 = v12[3];
        }

        if (v19 == v5)
        {
          v21 = v20 >= 0 ? (v12 + 2) : v12[2];
          if (!memcmp(v21, v4, v5))
          {
            return v12;
          }
        }
      }

      else
      {
        if (v18 >= *&v7)
        {
          v18 %= *&v7;
        }

        if (v18 != v10)
        {
          return 0;
        }
      }

      v12 = *v12;
    }

    while (v12);
  }

  return v12;
}

uint64_t **sub_2401D736C(void *a1, uint64_t a2)
{
  v3 = *(a2 + 23);
  if (v3 >= 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = *a2;
  }

  if (v3 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = *(a2 + 8);
  }

  v6 = sub_2401D78FC(v4, v5);
  v7 = v6;
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_41;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = v6;
    if (v6 >= *&v8)
    {
      v10 = v6 % *&v8;
    }
  }

  else
  {
    v10 = (*&v8 - 1) & v6;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_41:
    operator new();
  }

  if (v9.u32[0] < 2uLL)
  {
    while (1)
    {
      v13 = v12[1];
      if (v13 == v7)
      {
        v14 = *(v12 + 39);
        v15 = v14;
        if (v14 < 0)
        {
          v14 = v12[3];
        }

        if (v14 == v5)
        {
          v16 = v15 >= 0 ? (v12 + 2) : v12[2];
          if (!memcmp(v16, v4, v5))
          {
            return v12;
          }
        }
      }

      else if ((v13 & (*&v8 - 1)) != v10)
      {
        goto LABEL_41;
      }

      v12 = *v12;
      if (!v12)
      {
        goto LABEL_41;
      }
    }
  }

  while (1)
  {
    v17 = v12[1];
    if (v17 == v7)
    {
      break;
    }

    if (v17 >= *&v8)
    {
      v17 %= *&v8;
    }

    if (v17 != v10)
    {
      goto LABEL_41;
    }

LABEL_29:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_41;
    }
  }

  v18 = *(v12 + 39);
  v19 = v18;
  if (v18 < 0)
  {
    v18 = v12[3];
  }

  if (v18 != v5)
  {
    goto LABEL_29;
  }

  v20 = v19 >= 0 ? (v12 + 2) : v12[2];
  if (memcmp(v20, v4, v5))
  {
    goto LABEL_29;
  }

  return v12;
}

void sub_2401D7874(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2401D7D40(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2401D7888(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v5 = *v2;

      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

      operator delete(v2);
      v2 = v5;
    }

    while (v5);
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return a1;
}

unint64_t sub_2401D78FC(uint64_t *a1, unint64_t a2)
{
  if (a2 > 0x20)
  {
    if (a2 <= 0x40)
    {
      v5 = *(a1 + a2 - 16);
      v6 = *a1 - 0x3C5A37A36834CED9 * (v5 + a2);
      v8 = a1[2];
      v7 = a1[3];
      v9 = __ROR8__(v6 + v7, 52);
      v10 = v6 + a1[1];
      v11 = __ROR8__(v10, 7);
      v12 = v10 + v8;
      v13 = *(a1 + a2 - 32) + v8;
      v14 = *(a1 + a2 - 8) + v7;
      v15 = __ROR8__(v14 + v13, 52);
      v16 = v11 + __ROR8__(*a1 - 0x3C5A37A36834CED9 * (v5 + a2), 37) + v9;
      v17 = __ROR8__(v13, 37);
      v18 = *(a1 + a2 - 24) + v13;
      v19 = __ROR8__(v18, 7);
      v20 = v16 + __ROR8__(v12, 31);
      v21 = v18 + v5;
      v22 = v21 + v14;
      v23 = 0x9AE16A3B2F90404FLL;
      v24 = 0xC3A5C85C97CB3127 * (v22 + v20) - 0x651E95C4D06FBFB1 * (v12 + v7 + v17 + v19 + v15 + __ROR8__(v21, 31));
      v25 = v20 - 0x3C5A37A36834CED9 * (v24 ^ (v24 >> 47));
      return (v25 ^ (v25 >> 47)) * v23;
    }

    v32 = *(a1 + a2 - 48);
    v33 = *(a1 + a2 - 40);
    v34 = *(a1 + a2 - 24);
    v35 = *(a1 + a2 - 56);
    v36 = *(a1 + a2 - 16);
    v37 = *(a1 + a2 - 8);
    v38 = v35 + v36;
    v39 = 0x9DDFEA08EB382D69 * (v34 ^ ((0x9DDFEA08EB382D69 * (v34 ^ (v32 + a2))) >> 47) ^ (0x9DDFEA08EB382D69 * (v34 ^ (v32 + a2))));
    v40 = 0x9DDFEA08EB382D69 * (v39 ^ (v39 >> 47));
    v41 = *(a1 + a2 - 64) + a2;
    v42 = v41 + v35 + v32;
    v43 = __ROR8__(v42, 44) + v41;
    v44 = __ROR8__(v33 + v41 + v40, 21);
    v45 = v42 + v33;
    v46 = v43 + v44;
    v47 = v38 + *(a1 + a2 - 32) - 0x4B6D499041670D8DLL;
    v48 = v47 + v34 + v36;
    v49 = v48 + v37;
    v50 = __ROR8__(v48, 44) + v47 + __ROR8__(v47 + v33 + v37, 21);
    v52 = *a1;
    v51 = a1 + 4;
    v53 = v52 - 0x4B6D499041670D8DLL * v33;
    v54 = -((a2 - 1) & 0xFFFFFFFFFFFFFFC0);
    do
    {
      v55 = *(v51 - 3);
      v56 = v53 + v45 + v38 + v55;
      v57 = v51[2];
      v58 = v51[3];
      v59 = v51[1];
      v38 = v59 + v45 - 0x4B6D499041670D8DLL * __ROR8__(v38 + v46 + v57, 42);
      v60 = v40 + v49;
      v61 = *(v51 - 2);
      v62 = *(v51 - 1);
      v63 = *(v51 - 4) - 0x4B6D499041670D8DLL * v46;
      v64 = v63 + v49 + v62;
      v65 = v63 + v55 + v61;
      v45 = v65 + v62;
      v66 = __ROR8__(v65, 44) + v63;
      v67 = (0xB492B66FBE98F273 * __ROR8__(v56, 37)) ^ v50;
      v53 = 0xB492B66FBE98F273 * __ROR8__(v60, 33);
      v46 = v66 + __ROR8__(v64 + v67, 21);
      v68 = v53 + v50 + *v51;
      v49 = v68 + v59 + v57 + v58;
      v50 = __ROR8__(v68 + v59 + v57, 44) + v68 + __ROR8__(v38 + v61 + v68 + v58, 21);
      v51 += 8;
      v40 = v67;
      v54 += 64;
    }

    while (v54);
    v69 = v67 - 0x4B6D499041670D8DLL * (v38 ^ (v38 >> 47)) - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v49 ^ ((0x9DDFEA08EB382D69 * (v49 ^ v45)) >> 47) ^ (0x9DDFEA08EB382D69 * (v49 ^ v45)))) ^ ((0x9DDFEA08EB382D69 * (v49 ^ ((0x9DDFEA08EB382D69 * (v49 ^ v45)) >> 47) ^ (0x9DDFEA08EB382D69 * (v49 ^ v45)))) >> 47));
    v70 = v53 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v50 ^ ((0x9DDFEA08EB382D69 * (v50 ^ v46)) >> 47) ^ (0x9DDFEA08EB382D69 * (v50 ^ v46)))) ^ ((0x9DDFEA08EB382D69 * (v50 ^ ((0x9DDFEA08EB382D69 * (v50 ^ v46)) >> 47) ^ (0x9DDFEA08EB382D69 * (v50 ^ v46)))) >> 47));
    return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v70 ^ ((0x9DDFEA08EB382D69 * (v70 ^ v69)) >> 47) ^ (0x9DDFEA08EB382D69 * (v70 ^ v69)))) ^ ((0x9DDFEA08EB382D69 * (v70 ^ ((0x9DDFEA08EB382D69 * (v70 ^ v69)) >> 47) ^ (0x9DDFEA08EB382D69 * (v70 ^ v69)))) >> 47));
  }

  else
  {
    if (a2 > 0x10)
    {
      v26 = a1[1];
      v27 = 0xB492B66FBE98F273 * *a1;
      v28 = __ROR8__(0x9AE16A3B2F90404FLL * *(a1 + a2 - 8), 30) + __ROR8__(v27 - v26, 43);
      v29 = v27 + a2 + __ROR8__(v26 ^ 0xC949D7C7509E6557, 20) - 0x9AE16A3B2F90404FLL * *(a1 + a2 - 8);
      v23 = 0x9DDFEA08EB382D69;
      v30 = 0x9DDFEA08EB382D69 * ((v28 - 0x3C5A37A36834CED9 * *(a1 + a2 - 16)) ^ v29);
      v31 = v29 ^ (v30 >> 47) ^ v30;
LABEL_8:
      v25 = 0x9DDFEA08EB382D69 * v31;
      return (v25 ^ (v25 >> 47)) * v23;
    }

    if (a2 >= 9)
    {
      v2 = *(a1 + a2 - 8);
      v3 = __ROR8__(v2 + a2, a2);
      return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v3 ^ ((0x9DDFEA08EB382D69 * (v3 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v3 ^ *a1)))) ^ ((0x9DDFEA08EB382D69 * (v3 ^ ((0x9DDFEA08EB382D69 * (v3 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v3 ^ *a1)))) >> 47))) ^ v2;
    }

    if (a2 >= 4)
    {
      v71 = *(a1 + a2 - 4);
      v23 = 0x9DDFEA08EB382D69;
      v72 = 0x9DDFEA08EB382D69 * (((8 * *a1) + a2) ^ v71);
      v31 = v71 ^ (v72 >> 47) ^ v72;
      goto LABEL_8;
    }

    if (a2)
    {
      v73 = 0x9AE16A3B2F90404FLL * (*a1 | (*(a1 + (a2 >> 1)) << 8));
      v74 = 0xC949D7C7509E6557 * (a2 | (4 * *(a1 + a2 - 1)));
      return 0x9AE16A3B2F90404FLL * (v74 ^ v73 ^ ((v74 ^ v73) >> 47));
    }

    else
    {
      return 0x9AE16A3B2F90404FLL;
    }
  }
}

uint64_t *sub_2401D7D40(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    if (*(result + 16) == 1)
    {

      if (*(v1 + 39) < 0)
      {
        operator delete(*(v1 + 16));
      }
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void sub_2401D7D9C(unsigned int **a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = [objc_alloc(MEMORY[0x277CD2930]) initWithProperties:v6];
  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%d", v7, **a1];
  sub_2401F4DD8(buf, *a1[1], v8, v9);
}

_BYTE *sub_2401D7F74(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_2401BDE28();
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

uint64_t sub_2401D802C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [objc_alloc(MEMORY[0x277CD2930]) initWithProperties:**a1];
  v7 = *(a3 + 160);
  *(a3 + 160) = v6;

  if (*(a3 + 160))
  {
    v8 = [objc_alloc(MEMORY[0x277CD2930]) initWithProperties:**(a1 + 8)];
    v9 = v8;
    if (v8)
    {
      v10 = [v8 width];
      if (v10 == [v9 height])
      {
        v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%d", v5, **(a1 + 16)];
        sub_2401F4DD8(buf, **(a1 + 24), v9, v11);
      }

      if ((atomic_load_explicit(&qword_280C03940, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03940))
      {
        qword_280C03850 = os_log_create("com.apple.AppleCVA", "ViewpointCorrection");
        __cxa_guard_release(&qword_280C03940);
      }

      v12 = qword_280C03850;
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_13;
      }

      *buf = 0;
      v13 = "Currently only square crops are supported.";
    }

    else
    {
      if ((atomic_load_explicit(&qword_280C03940, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03940))
      {
        qword_280C03850 = os_log_create("com.apple.AppleCVA", "ViewpointCorrection");
        __cxa_guard_release(&qword_280C03940);
      }

      v12 = qword_280C03850;
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_13;
      }

      *buf = 0;
      v13 = "Assertion failed: cropSurface";
    }

    _os_log_error_impl(&dword_2401B8000, v12, OS_LOG_TYPE_ERROR, v13, buf, 2u);
LABEL_13:

    goto LABEL_14;
  }

  if ((atomic_load_explicit(&qword_280C03940, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03940))
  {
    qword_280C03850 = os_log_create("com.apple.AppleCVA", "ViewpointCorrection");
    __cxa_guard_release(&qword_280C03940);
  }

  v9 = qword_280C03850;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_2401B8000, v9, OS_LOG_TYPE_ERROR, "Assertion failed: data.rayfieldSurface", buf, 2u);
  }

LABEL_14:

  return 2;
}

uint64_t sub_2401D8420(void *a1, CVPixelBufferRef *a2)
{
  v34 = *MEMORY[0x277D85DE8];
  v28 = 0;
  image = 0;
  PixelFormatType = CVPixelBufferGetPixelFormatType(*a2);
  if (PixelFormatType > 792229423)
  {
    if (PixelFormatType <= 875704437)
    {
      if (PixelFormatType != 792229424 && PixelFormatType != 875704422)
      {
        goto LABEL_24;
      }
    }

    else if (PixelFormatType != 875704438 && PixelFormatType != 2084070960 && PixelFormatType != 2084075056)
    {
      goto LABEL_24;
    }
  }

  else if (PixelFormatType <= 758670895)
  {
    if (PixelFormatType != 641230384 && PixelFormatType != 641234480)
    {
      goto LABEL_24;
    }
  }

  else if (PixelFormatType != 758670896 && PixelFormatType != 758674992 && PixelFormatType != 792225328)
  {
LABEL_24:
    v10 = PixelFormatType;
    if ((atomic_load_explicit(&qword_280C03940, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03940))
    {
      qword_280C03850 = os_log_create("com.apple.AppleCVA", "ViewpointCorrection");
      __cxa_guard_release(&qword_280C03940);
    }

    v11 = qword_280C03850;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      LODWORD(v31) = v10;
      _os_log_error_impl(&dword_2401B8000, v11, OS_LOG_TYPE_ERROR, "Unsupported pixel format %d", buf, 8u);
    }

    v12 = 1;
    goto LABEL_57;
  }

  if (cva::DictionaryHandler::hasKey((a2 + 2), @"DrawDebugLandmarksAndBBoxes"))
  {
    cva::DictionaryHandler::item(buf, (a2 + 2), @"DrawDebugLandmarksAndBBoxes");
    cva::ItemHandler::getValue<BOOL>();
  }

  v14 = sub_2401F148C(a1[32], *a2, MTLPixelFormatR8Unorm, 0, 3, &image);
  v15 = v14 - 1;
  if (v14 == 1)
  {
    v12 = 2;
  }

  else
  {
    v12 = v14;
  }

  if (v14)
  {
    if ((atomic_load_explicit(&qword_280C03940, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03940))
    {
      qword_280C03850 = os_log_create("com.apple.AppleCVA", "ViewpointCorrection");
      __cxa_guard_release(&qword_280C03940);
    }

    v11 = qword_280C03850;
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_57;
    }

    v16 = off_278C9DF08[v15];
    v17 = off_278C9DF08[(v12 - 1)];
    *buf = 136315394;
    v31 = v16;
    v32 = 2080;
    v33 = v17;
    v18 = "Running m_metalHelpers->createTextureFrom(data.image(), MTLPixelFormatR8Unorm, 0, textureUsage, Y) failed with %s, returning %s";
    goto LABEL_49;
  }

  v19 = sub_2401F148C(a1[32], *a2, MTLPixelFormatRG8Unorm, 1uLL, 3, &v28);
  v20 = v19 - 1;
  if (v19 == 1)
  {
    v12 = 2;
  }

  else
  {
    v12 = v19;
  }

  if (v19)
  {
    if ((atomic_load_explicit(&qword_280C03940, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03940))
    {
      qword_280C03850 = os_log_create("com.apple.AppleCVA", "ViewpointCorrection");
      __cxa_guard_release(&qword_280C03940);
    }

    v11 = qword_280C03850;
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_57;
    }

    v21 = off_278C9DF08[v20];
    v22 = off_278C9DF08[(v12 - 1)];
    *buf = 136315394;
    v31 = v21;
    v32 = 2080;
    v33 = v22;
    v18 = "Running m_metalHelpers->createTextureFrom(data.image(), MTLPixelFormatRG8Unorm, 1, textureUsage, CbCr) failed with %s, returning %s";
LABEL_49:
    _os_log_error_impl(&dword_2401B8000, v11, OS_LOG_TYPE_ERROR, v18, buf, 0x16u);
    goto LABEL_57;
  }

  v23 = CVMetalTextureGetTexture(image);
  v24 = a1[27];
  a1[27] = v23;

  v25 = CVMetalTextureGetTexture(v28);
  v26 = a1[28];
  a1[28] = v25;

  if (a1[27] && a1[28])
  {
    v12 = 0;
    goto LABEL_58;
  }

  if ((atomic_load_explicit(&qword_280C03940, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03940))
  {
    qword_280C03850 = os_log_create("com.apple.AppleCVA", "ViewpointCorrection");
    __cxa_guard_release(&qword_280C03940);
  }

  v11 = qword_280C03850;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_2401B8000, v11, OS_LOG_TYPE_ERROR, "Could not convert pixel buffer to metal textures in get", buf, 2u);
  }

  v12 = 6;
LABEL_57:

LABEL_58:
  if (v28)
  {
    CFRelease(v28);
  }

  if (image)
  {
    CFRelease(image);
  }

  return v12;
}

void sub_2401D8918(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, CFTypeRef cf, CFTypeRef a10, char a11)
{
  if (cf)
  {
    CFRelease(cf);
  }

  if (!a10)
  {
    _Unwind_Resume(exception_object);
  }

  CFRelease(a10);
  _Unwind_Resume(exception_object);
}

uint64_t sub_2401D896C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = a2;
  v151 = *MEMORY[0x277D85DE8];
  *a3 = 0;
  *(a3 + 4) = 0;
  v6 = *(a1 + 232);
  v140 = a1;
  if (!v6)
  {
    v7 = [MEMORY[0x277CD6CD8] sharedCaptureManager];
    v8 = [v7 newCaptureScopeWithCommandQueue:*(a1 + 208)];
    v9 = *(a1 + 232);
    *(a1 + 232) = v8;

    [*(a1 + 232) setLabel:@"ViewpointCorrectionProcessor"];
    v6 = *(a1 + 232);
    v4 = a2;
  }

  [v6 beginScope];
  v144 = 0uLL;
  if (cva::DictionaryHandler::hasKey((v4 + 16), @"DrawDebugLandmarksAndBBoxes"))
  {
    cva::DictionaryHandler::item(&buf[0].value, (v4 + 16), @"DrawDebugLandmarksAndBBoxes");
    cva::ItemHandler::getValue<BOOL>();
  }

  v10 = *(v4 + 64);
  v11 = vneg_f32(v10);
  v138 = atan2f(v11.f32[0], v11.f32[1]);
  v12 = *(a1 + 328);
  v13 = *(v4 + 128);
  v14 = *(v4 + 136);
  if (v14 != v13)
  {
    if (((v14 - v13) >> 5) <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_2401BDE28();
  }

  v141 = *(a1 + 328);
  *v145 = *(v4 + 36);
  *&v146 = *(v4 + 52);
  v15 = v4;
  v17 = (v141 + 2);
  v16 = *(v141 + 1);
  v18 = *(v141 + 2);
  if (*v141 < ((v18 - v16) >> 4))
  {
    if ((atomic_load_explicit(&qword_280C03940, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03940))
    {
      qword_280C03850 = os_log_create("com.apple.AppleCVA", "ViewpointCorrection");
      __cxa_guard_release(&qword_280C03940);
    }

    v19 = qword_280C03850;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf[0].value) = 0;
      _os_log_error_impl(&dword_2401B8000, v19, OS_LOG_TYPE_ERROR, "Assertion failed: m_trackedFaces.size() <= m_maxNumberOfTrackedFaces", buf, 2u);
    }

    goto LABEL_25;
  }

  v20 = *(v15 + 32);
  v21 = a1;
  if (v16 != v18)
  {
    while ((*(*v16 + 497) & 1) != 0)
    {
      v16 += 16;
      if (v16 == v18)
      {
        goto LABEL_19;
      }
    }

    if ((atomic_load_explicit(&qword_280C03940, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03940))
    {
      qword_280C03850 = os_log_create("com.apple.AppleCVA", "ViewpointCorrection");
      __cxa_guard_release(&qword_280C03940);
    }

    v19 = qword_280C03850;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf[0].value) = 0;
      _os_log_error_impl(&dword_2401B8000, v19, OS_LOG_TYPE_ERROR, "Assertion failed: trackedFace->isValid()", buf, 2u);
    }

LABEL_25:

    v22 = 2;
    goto LABEL_26;
  }

  if (v20)
  {
    v22 = 0;
    goto LABEL_27;
  }

LABEL_19:
  v23 = sqrtf(vaddv_f32(vmul_f32(v10, v10))) / 0.069;
  if (v141[11])
  {
    buf[0] = *(a2 + 36);
    time2 = *(v141 + 8);
    if (CMTimeCompare(buf, &time2) < 0)
    {
      v121 = sub_2401F3718();
      if (os_log_type_enabled(v121, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(buf[0].value) = 0;
        _os_log_debug_impl(&dword_2401B8000, v121, OS_LOG_TYPE_DEBUG, "Input data has no face detection, use cached data.", buf, 2u);
      }

      *&buf[0].value = *v145;
      buf[0].epoch = v146;
      v21 = a1;
      v22 = sub_2401EE290(v17, buf, v20 == 0, v138 / 0.017453, v23);
      goto LABEL_27;
    }
  }

  *&time2.value = *v145;
  time2.epoch = v146;
  CMTimeMakeWithSeconds(&rhs, 0.0500000007, 1000);
  CMTimeAdd(buf, &time2, &rhs);
  *(v141 + 8) = buf[0];
  *&__src.value = *v145;
  __src.epoch = v146;
  memset(&time2, 0, sizeof(time2));
  LODWORD(buf[0].value) = 0;
  v43 = *(v141 + 1);
  v42 = *(v141 + 2);
  v135 = v138 / 0.017453;
  v136 = v20;
  if (v42 != v43)
  {
    v44 = 0;
    do
    {
      LODWORD(v12) = v12 & 0xFFFFFF00;
      LODWORD(buf[0].value) = ++v44;
      v45 = (v42 - v43) >> 4;
    }

    while (v45 > v44);
    if (v42 != v43)
    {
      if (!(v45 >> 61))
      {
        operator new();
      }

      sub_2401BDE28();
    }
  }

  v47 = *(v141 + 1);
  v46 = *(v141 + 2);
  if (v46 == v47)
  {
LABEL_83:
    if (v47 != v46)
    {
      while (*(*v47 + 497) == 1)
      {
        v47 += 2;
        if (v47 == v46)
        {
          v47 = v46;
          goto LABEL_228;
        }
      }

      if (v47 != v46)
      {
        v107 = v47 + 2;
        if (v47 + 2 != v46)
        {
          do
          {
            v108 = *v107;
            if (*(*v107 + 497) == 1)
            {
              v109 = v107[1];
              *v107 = 0;
              v107[1] = 0;
              v110 = v47[1];
              *v47 = v108;
              v47[1] = v109;
              if (v110 && !atomic_fetch_add(&v110->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                (v110->__on_zero_shared)(v110);
                std::__shared_weak_count::__release_weak(v110);
              }

              v47 += 2;
            }

            v107 += 2;
          }

          while (v107 != v46);
          v46 = *(v141 + 2);
        }
      }
    }

LABEL_228:
    sub_2401EE758(v17, v47, v46);
    v120 = 0;
    goto LABEL_237;
  }

  v48 = 0;
  v49 = 0;
  v50 = 4;
  while (*v50 == 1)
  {
    v51 = v47[v48];
    v52 = (24 * *(v50 - 4));
    buf[0] = *v52;
    LOBYTE(buf[1].value) = 1;
    rhs = __src;
    v53 = sub_2401F28CC(v51, buf, v136 == 0, &rhs, v135, v23);
    if (v53)
    {
      v117 = v53 - 1;
      if (v53 == 1)
      {
        v112 = 2;
      }

      else
      {
        v112 = v53;
      }

      if ((atomic_load_explicit(&qword_280C03940, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03940))
      {
        qword_280C03850 = os_log_create("com.apple.AppleCVA", "ViewpointCorrection");
        __cxa_guard_release(&qword_280C03940);
      }

      v113 = qword_280C03850;
      if (os_log_type_enabled(v113, OS_LOG_TYPE_ERROR))
      {
        v118 = off_278C9DF08[v117];
        v119 = off_278C9DF08[v112 - 1];
        LODWORD(buf[0].value) = 136315394;
        *(&buf[0].value + 4) = v118;
        LOWORD(buf[0].flags) = 2080;
        *(&buf[0].flags + 2) = v119;
        v116 = "Running trackedFace->update(faceDetection, correctionEnabled, uprightFaceRollAngle, distanceThresholdsMultiplier, timestamp) failed with %s, returning %s";
        goto LABEL_226;
      }

      goto LABEL_236;
    }

    v52->timescale = 0;
LABEL_77:
    if ((*(v47[v48] + 497) & 1) == 0)
    {
      if ((atomic_load_explicit(&qword_280C03940, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03940))
      {
        qword_280C03850 = os_log_create("com.apple.AppleCVA", "ViewpointCorrection");
        __cxa_guard_release(&qword_280C03940);
      }

      v56 = qword_280C03850;
      if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
      {
        v57 = v47[v48];
        memset(buf, 0, 37);
        uuid_unparse_upper(v57, buf);
        operator new();
      }
    }

    ++v49;
    v47 = *(v141 + 1);
    v46 = *(v141 + 2);
    v50 += 8;
    v48 += 2;
    if (v49 >= (v46 - v47) >> 4)
    {
      goto LABEL_83;
    }
  }

  v54 = v47[v48];
  LOBYTE(buf[0].value) = 0;
  LOBYTE(buf[1].value) = 0;
  rhs = __src;
  v55 = sub_2401F28CC(v54, buf, v136 == 0, &rhs, v135, v23);
  if (!v55)
  {
    goto LABEL_77;
  }

  v111 = v55 - 1;
  if (v55 == 1)
  {
    v112 = 2;
  }

  else
  {
    v112 = v55;
  }

  if ((atomic_load_explicit(&qword_280C03940, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03940))
  {
    qword_280C03850 = os_log_create("com.apple.AppleCVA", "ViewpointCorrection");
    __cxa_guard_release(&qword_280C03940);
  }

  v113 = qword_280C03850;
  if (os_log_type_enabled(v113, OS_LOG_TYPE_ERROR))
  {
    v114 = off_278C9DF08[v111];
    v115 = off_278C9DF08[v112 - 1];
    LODWORD(buf[0].value) = 136315394;
    *(&buf[0].value + 4) = v114;
    LOWORD(buf[0].flags) = 2080;
    *(&buf[0].flags + 2) = v115;
    v116 = "Running trackedFace->update(std::nullopt, correctionEnabled, uprightFaceRollAngle, distanceThresholdsMultiplier, timestamp) failed with %s, returning %s";
LABEL_226:
    _os_log_error_impl(&dword_2401B8000, v113, OS_LOG_TYPE_ERROR, v116, buf, 0x16u);
  }

LABEL_236:

  operator delete(0);
  v120 = v112;
LABEL_237:
  value = time2.value;
  if (time2.value)
  {
    v127 = *&time2.timescale;
    if (*&time2.timescale != time2.value)
    {
      v128 = *&time2.timescale;
      do
      {
        v130 = *(v128 - 3);
        v128 -= 24;
        v129 = v130;
        if (v130)
        {
          *(v127 - 2) = v129;
          operator delete(v129);
        }

        v127 = v128;
      }

      while (v128 != value);
    }

    operator delete(value);
  }

  v22 = v120;
  if (v120)
  {
    if ((atomic_load_explicit(&qword_280C03940, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03940))
    {
      qword_280C03850 = os_log_create("com.apple.AppleCVA", "ViewpointCorrection");
      __cxa_guard_release(&qword_280C03940);
    }

    v131 = qword_280C03850;
    if (os_log_type_enabled(v131, OS_LOG_TYPE_ERROR))
    {
      v132 = off_278C9DF08[v120 - 1];
      LODWORD(buf[0].value) = 136315394;
      *(&buf[0].value + 4) = v132;
      LOWORD(buf[0].flags) = 2080;
      *(&buf[0].flags + 2) = v132;
      _os_log_error_impl(&dword_2401B8000, v131, OS_LOG_TYPE_ERROR, "Running updateTrackedFacesWithFaceDetections(m_trackedFaces, faces, timestamp, correctionEnabled, uprightFaceRollAngle, distanceThresholdsMultiplier) failed with %s, returning %s", buf, 0x16u);
    }
  }

  else
  {
    if (!v136 && *v141 > ((*(v141 + 2) - *(v141 + 1)) >> 4))
    {
      sub_2401EE92C(0, 0, 0, 1);
    }

    v22 = 0;
  }

LABEL_26:
  v21 = v140;
LABEL_27:
  if (v22 == 1)
  {
    v24 = 2;
  }

  else
  {
    v24 = v22;
  }

  if (v22)
  {
    if ((atomic_load_explicit(&qword_280C03940, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03940))
    {
      qword_280C03850 = os_log_create("com.apple.AppleCVA", "ViewpointCorrection");
      __cxa_guard_release(&qword_280C03940);
    }

    v25 = qword_280C03850;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v105 = off_278C9DF08[v22 - 1];
      v106 = off_278C9DF08[v24 - 1];
      LODWORD(buf[0].value) = 136315394;
      *(&buf[0].value + 4) = v105;
      LOWORD(buf[0].flags) = 2080;
      *(&buf[0].flags + 2) = v106;
      _os_log_error_impl(&dword_2401B8000, v25, OS_LOG_TYPE_ERROR, "Running m_tracker->update(data.faces(), data.timestamp(), data.correctionEnabled(), uprightFaceRollAngle, distanceThresholdsMultiplier) failed with %s, returning %s", buf, 0x16u);
    }

    v139 = v24;
LABEL_35:
    v21 = v140;
    goto LABEL_36;
  }

  v28 = *(v21 + 328);
  v29 = *(v28 + 8);
  v30 = *(v28 + 16);
  if (v29 == v30)
  {
    if (!v144 || ((v38 = sub_2401ED810(&v144), v39 = v38 - 1, v38 != 1) ? (v40 = v38) : (v40 = 2), v139 = v40, !v38))
    {
      v139 = 0;
      goto LABEL_36;
    }

    if ((atomic_load_explicit(&qword_280C03940, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03940))
    {
      qword_280C03850 = os_log_create("com.apple.AppleCVA", "ViewpointCorrection");
      __cxa_guard_release(&qword_280C03940);
    }

    v41 = qword_280C03850;
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      v124 = off_278C9DF08[v39];
      v125 = off_278C9DF08[v139 - 1];
      LODWORD(buf[0].value) = 136315394;
      *(&buf[0].value + 4) = v124;
      LOWORD(buf[0].flags) = 2080;
      *(&buf[0].flags + 2) = v125;
      _os_log_error_impl(&dword_2401B8000, v41, OS_LOG_TYPE_ERROR, "Running m_debugRenderer->commitAndWait(std::move(debugRendererState)) failed with %s, returning %s", buf, 0x16u);
    }

    goto LABEL_35;
  }

  if (!(*a4 | v144))
  {
    goto LABEL_192;
  }

  v31 = *(v21 + 272);
  if (!v31)
  {
    operator new();
  }

  v32 = *(v21 + 328);
  v34 = *(v32 + 8);
  v33 = *(v32 + 16);
  if ((v33 - v34) >= 0x41)
  {
    if ((atomic_load_explicit(&qword_280C03940, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03940))
    {
      qword_280C03850 = os_log_create("com.apple.AppleCVA", "ViewpointCorrection");
      __cxa_guard_release(&qword_280C03940);
    }

    v35 = qword_280C03850;
    if (os_log_type_enabled(qword_280C03850, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf[0].value) = 0;
      _os_log_error_impl(&dword_2401B8000, v35, OS_LOG_TYPE_ERROR, "Precondition violated: trackedFaces.size() <= kAvailableColors.size()", buf, 2u);
    }

    v36 = 0;
LABEL_48:
    if ((atomic_load_explicit(&qword_280C03940, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03940))
    {
      qword_280C03850 = os_log_create("com.apple.AppleCVA", "ViewpointCorrection");
      __cxa_guard_release(&qword_280C03940);
    }

    v37 = qword_280C03850;
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      v123 = off_278C9DF08[v36];
      LODWORD(buf[0].value) = 136315394;
      *(&buf[0].value + 4) = v123;
      LOWORD(buf[0].flags) = 2080;
      *(&buf[0].flags + 2) = "Assertion failed";
      _os_log_error_impl(&dword_2401B8000, v37, OS_LOG_TYPE_ERROR, "Running m_debugColorMap->update(m_tracker->trackedFaces()) failed with %s, returning %s", buf, 0x16u);
    }

    v139 = 2;
    goto LABEL_35;
  }

  v31[5].i32[0] = 0;
  v58 = v31 + 5;
  if (v34 != v33)
  {
    v59 = v31[1];
    v60 = vcnt_s8(v59);
    v60.i16[0] = vaddlv_u8(v60);
    v61 = *&v59 - 1;
    do
    {
      if (v59)
      {
        v62 = *v34;
        v63 = (*v34)[1] ^ **v34;
        if (v60.u32[0] > 1uLL)
        {
          v64 = (*v34)[1] ^ **v34;
          if (v63 >= *&v59)
          {
            v64 = v63 % *&v59;
          }
        }

        else
        {
          v64 = v61 & v63;
        }

        v65 = *(*v31 + 8 * v64);
        if (v65)
        {
          v66 = *v65;
          if (v66)
          {
            if (v60.u32[0] < 2uLL)
            {
              while (1)
              {
                v68 = v66[1];
                if (v68 == v63)
                {
                  if (v66[2] == *v62 && v66[3] == v62[1])
                  {
                    goto LABEL_89;
                  }
                }

                else if ((v68 & v61) != v64)
                {
                  goto LABEL_90;
                }

                v66 = *v66;
                if (!v66)
                {
                  goto LABEL_90;
                }
              }
            }

            do
            {
              v70 = v66[1];
              if (v70 == v63)
              {
                if (v66[2] == *v62 && v66[3] == v62[1])
                {
LABEL_89:
                  v58->i8[*(v66 + 8)] = 1;
                  break;
                }
              }

              else
              {
                if (v70 >= *&v59)
                {
                  v70 %= *&v59;
                }

                if (v70 != v64)
                {
                  break;
                }
              }

              v66 = *v66;
            }

            while (v66);
          }
        }
      }

LABEL_90:
      v34 += 2;
    }

    while (v34 != v33);
  }

  v71 = v31[2];
  if (v71)
  {
    do
    {
      v75 = *v71;
      if (v58->i8[v71[4].i32[0]])
      {
        goto LABEL_122;
      }

      v76 = v31[1];
      v77 = v71[1];
      v78 = vcnt_s8(v76);
      v78.i16[0] = vaddlv_u8(v78);
      if (v78.u32[0] > 1uLL)
      {
        if (v77 >= *&v76)
        {
          v77 %= *&v76;
        }
      }

      else
      {
        v77 &= *&v76 - 1;
      }

      v79 = *v31;
      v80 = *(*v31 + 8 * v77);
      do
      {
        v81 = v80;
        v80 = *v80;
      }

      while (v80 != v71);
      if (v81 == &v31[2])
      {
        goto LABEL_278;
      }

      v82 = v81[1];
      if (v78.u32[0] > 1uLL)
      {
        if (v82 >= *&v76)
        {
          v82 %= *&v76;
        }
      }

      else
      {
        v82 &= *&v76 - 1;
      }

      v83 = *v71;
      if (v82 != v77)
      {
LABEL_278:
        if (v75)
        {
          v84 = v75[1];
          if (v78.u32[0] > 1uLL)
          {
            if (v84 >= *&v76)
            {
              v84 %= *&v76;
            }
          }

          else
          {
            v84 &= *&v76 - 1;
          }

          v83 = *v71;
          if (v84 == v77)
          {
LABEL_144:
            v85 = v83[1];
            if (v78.u32[0] > 1uLL)
            {
              if (v85 >= *&v76)
              {
                v85 %= *&v76;
              }
            }

            else
            {
              v85 &= *&v76 - 1;
            }

            if (v85 != v77)
            {
              *(*&v79 + 8 * v85) = v81;
              v83 = *v71;
            }

            goto LABEL_121;
          }
        }

        *(*&v79 + 8 * v77) = 0;
        v83 = *v71;
      }

      if (v83)
      {
        goto LABEL_144;
      }

LABEL_121:
      *v81 = v83;
      *v71 = 0;
      --*&v31[3];
      operator delete(v71);
LABEL_122:
      v71 = v75;
    }

    while (v75);
  }

  v73 = *(v32 + 8);
  v72 = *(v32 + 16);
  if (v73 == v72)
  {
    goto LABEL_191;
  }

  v74 = 0;
  v143 = *(v32 + 16);
  while (2)
  {
    v86 = *v73;
    if (sub_2401CF8EC(v31, *v73))
    {
      goto LABEL_150;
    }

    v87 = v58 + v74;
    if (v58->i8[v74] == 1)
    {
      if (v74 > 2)
      {
        goto LABEL_232;
      }

      v88 = v74 + 1;
      v87 = v58 + v74 + 1;
      if (*v87 == 1)
      {
        if (v74 == 2)
        {
          goto LABEL_232;
        }

        v88 = v74 + 2;
        v87 = v58 + v74 + 2;
        if (*v87 == 1)
        {
          if (!v74 && v31[5].i8[3] != 1)
          {
            LODWORD(v74) = 3;
            v87 = &v31[5] + 3;
            goto LABEL_161;
          }

LABEL_232:
          if ((atomic_load_explicit(&qword_280C03940, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03940))
          {
            qword_280C03850 = os_log_create("com.apple.AppleCVA", "ViewpointCorrection");
            __cxa_guard_release(&qword_280C03940);
          }

          v122 = qword_280C03850;
          if (os_log_type_enabled(qword_280C03850, OS_LOG_TYPE_ERROR))
          {
            LOWORD(buf[0].value) = 0;
            _os_log_error_impl(&dword_2401B8000, v122, OS_LOG_TYPE_ERROR, "Assertion failed: nextIndex < m_isColorAssigned.size()", buf, 2u);
          }

          v36 = 1;
          goto LABEL_48;
        }
      }

      LODWORD(v74) = v88;
    }

LABEL_161:
    v89 = v86[1];
    v90 = v89 ^ *v86;
    v91 = v31[1];
    if (!*&v91)
    {
      goto LABEL_190;
    }

    v92 = vcnt_s8(v91);
    v92.i16[0] = vaddlv_u8(v92);
    if (v92.u32[0] > 1uLL)
    {
      v93 = v89 ^ *v86;
      if (v90 >= *&v91)
      {
        v93 = v90 % *&v91;
      }
    }

    else
    {
      v93 = (*&v91 - 1) & v90;
    }

    v94 = *(*v31 + 8 * v93);
    if (!v94 || (v95 = *v94) == 0)
    {
LABEL_190:
      operator new();
    }

    if (v92.u32[0] < 2uLL)
    {
      while (1)
      {
        v98 = v95[1];
        if (v98 == v90)
        {
          if (v95[2] == *v86 && v95[3] == v86[1])
          {
            goto LABEL_189;
          }
        }

        else if ((v98 & (*&v91 - 1)) != v93)
        {
          goto LABEL_190;
        }

        v95 = *v95;
        if (!v95)
        {
          goto LABEL_190;
        }
      }
    }

    while (2)
    {
      v96 = v95[1];
      if (v96 != v90)
      {
        if (v96 >= *&v91)
        {
          v96 %= *&v91;
        }

        if (v96 != v93)
        {
          goto LABEL_190;
        }

        goto LABEL_171;
      }

      if (v95[2] != *v86 || v95[3] != v86[1])
      {
LABEL_171:
        v95 = *v95;
        if (!v95)
        {
          goto LABEL_190;
        }

        continue;
      }

      break;
    }

LABEL_189:
    v72 = v143;
    v74 = v74;
    *(v95 + 8) = v74;
    *v87 = 1;
    v21 = v140;
LABEL_150:
    v73 += 2;
    if (v73 != v72)
    {
      continue;
    }

    break;
  }

LABEL_191:
  v100 = *(v21 + 328);
  v29 = *(v100 + 8);
  v30 = *(v100 + 16);
LABEL_192:
  if (v30 != v29)
  {
    if (((v30 - v29) >> 4) <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_2401BDE28();
  }

  if (v144 && ((v101 = sub_2401ED810(&v144), v102 = v101 - 1, v101 != 1) ? (v103 = v101) : (v103 = 2), v139 = v103, v101))
  {
    v104 = sub_2401F3718();
    if (os_log_type_enabled(v104, OS_LOG_TYPE_ERROR))
    {
      v133 = off_278C9DF08[v102];
      v134 = off_278C9DF08[v139 - 1];
      LODWORD(buf[0].value) = 136315394;
      *(&buf[0].value + 4) = v133;
      LOWORD(buf[0].flags) = 2080;
      *(&buf[0].flags + 2) = v134;
      _os_log_error_impl(&dword_2401B8000, v104, OS_LOG_TYPE_ERROR, "Running m_debugRenderer->commitAndWait(std::move(debugRendererState)) failed with %s, returning %s", buf, 0x16u);
    }

    v21 = v140;
  }

  else
  {
    v139 = 0;
  }

LABEL_36:
  v26 = *(&v144 + 1);
  if (*(&v144 + 1) && !atomic_fetch_add((*(&v144 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v26->__on_zero_shared)(v26);
    std::__shared_weak_count::__release_weak(v26);
  }

  [*(v21 + 232) endScope];
  return v139;
}