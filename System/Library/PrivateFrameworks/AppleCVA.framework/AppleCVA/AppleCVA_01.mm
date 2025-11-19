void sub_2401DFC14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47)
{
  sub_2401E2FF8(&STACK[0x560]);
  sub_2401E3110(&a43);
  sub_2401C1DF4(&a47);
  [*(a30 + 232) endScope];
  _Unwind_Resume(a1);
}

void sub_2401DFFBC(uint64_t a1, uint64_t *a2, int a3, uint64_t a4, cva::DictionaryHandler **a5)
{
  v22[4] = *MEMORY[0x277D85DE8];
  v21[0] = @"Timestamp";
  cva::DictionaryHandler::item(v20, (a2 + 2), @"Timestamp");
  cva::ItemHandler::getDictionary(&v18, v20);
  cva::ItemHandler::~ItemHandler(v20);
  Dictionary = cva::DictionaryHandler::getDictionary(v18);
  v10 = *a2;
  v22[0] = Dictionary;
  v22[1] = v10;
  v21[1] = @"CorrectedImage";
  v21[2] = @"Status";
  if ((a3 - 1) > 7)
  {
    v11 = 0;
  }

  else
  {
    v11 = dword_240270DD0[a3 - 1];
  }

  v12 = [MEMORY[0x277CCABB0] numberWithInt:v11];
  v22[2] = v12;
  v21[3] = @"ModificationStatus";
  v13 = [MEMORY[0x277CCABB0] numberWithBool:a4];
  v22[3] = v13;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:4];
  v15 = [v14 mutableCopy];

  v16 = v19;
  if (v19 && !atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v16->__on_zero_shared)(v16);
    std::__shared_weak_count::__release_weak(v16);
    v17 = *a5;
    if (!*a5)
    {
LABEL_8:
      operator new();
    }
  }

  else
  {
    v17 = *a5;
    if (!*a5)
    {
      goto LABEL_8;
    }
  }

  [v15 setObject:cva::DictionaryHandler::getDictionary(v17) forKeyedSubscript:@"DebugMetadata"];
  goto LABEL_8;
}

void sub_2401E01D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12)
{
  std::__shared_weak_count::~__shared_weak_count(v12);
  operator delete(v15);

  _Unwind_Resume(a1);
}

void sub_2401E024C(uint64_t a1, uint64_t a2, int a3, uint64_t a4, CMTime *a5)
{
  v110 = *MEMORY[0x277D85DE8];
  memset(&v75, 0, sizeof(v75));
  HostTimeClock = CMClockGetHostTimeClock();
  CMClockGetTime(&v75, HostTimeClock);
  lhs = v75;
  v73 = *a5;
  CMTimeSubtract(&time, &lhs, &v73);
  Seconds = CMTimeGetSeconds(&time);
  if (Seconds < 0.0)
  {
    if ((atomic_load_explicit(&qword_280C03940, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03940))
    {
      qword_280C03850 = os_log_create("com.apple.AppleCVA", "ViewpointCorrection");
      __cxa_guard_release(&qword_280C03940);
    }

    v12 = qword_280C03850;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      lhs = *a5;
      v13 = CMTimeGetSeconds(&lhs);
      lhs = v75;
      v14 = CMTimeGetSeconds(&lhs);
      LODWORD(time.value) = 134218496;
      *(&time.value + 4) = Seconds;
      LOWORD(time.flags) = 2048;
      *(&time.flags + 2) = v13;
      HIWORD(time.epoch) = 2048;
      *v77 = v14;
      _os_log_impl(&dword_2401B8000, v12, OS_LOG_TYPE_DEFAULT, "Negative latency %f. Start time %f, end time %f.", &time, 0x20u);
    }
  }

  v15 = 24;
  v16 = 8;
  v17 = 16;
  v18 = (a1 + 64);
  v19 = 88;
  v20 = 72;
  v21 = 80;
  if (a3 == 7)
  {
    v18 = (a1 + 32);
    v21 = 48;
    v20 = 40;
    v19 = 56;
  }

  if (a3)
  {
    v17 = v21;
  }

  else
  {
    v18 = a1;
  }

  ++*v18;
  if (a3)
  {
    v16 = v20;
  }

  ++*(a1 + v17);
  if (a3)
  {
    v15 = v19;
  }

  *(a1 + v16) = Seconds + *(a1 + v16);
  *(a1 + v15) = Seconds + *(a1 + v15);
  if (*a4 == 1)
  {
    ++*(a1 + 96);
    ++*(a1 + 112);
    *(a1 + 104) = Seconds + *(a1 + 104);
    *(a1 + 120) = Seconds + *(a1 + 120);
  }

  v22 = *(a4 + 4);
  if (v22 >= 1)
  {
    v23 = *(a1 + 160) + 32 * v22;
    ++*(v23 - 32);
    ++*(v23 - 16);
    *(v23 - 24) = Seconds + *(v23 - 24);
    *(v23 - 8) = Seconds + *(v23 - 8);
  }

  if (*(a2 + 32) == 2)
  {
    ++*(a1 + 128);
    ++*(a1 + 144);
    *(a1 + 136) = Seconds + *(a1 + 136);
    *(a1 + 152) = Seconds + *(a1 + 152);
  }

  if ((*(a1 + 196) & 1) == 0 || (lhs = v75, v73 = *(a1 + 184), CMTimeSubtract(&time, &lhs, &v73), CMTimeGetSeconds(&time) >= 5.0))
  {
    PixelFormatType = CVPixelBufferGetPixelFormatType(*a2);
    LOBYTE(lhs.value) = HIBYTE(PixelFormatType);
    BYTE1(lhs.value) = BYTE2(PixelFormatType);
    BYTE2(lhs.value) = BYTE1(PixelFormatType);
    *(&lhs.value + 3) = PixelFormatType;
    if ((atomic_load_explicit(&qword_280C03940, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03940))
    {
      qword_280C03850 = os_log_create("com.apple.AppleCVA", "ViewpointCorrection");
      __cxa_guard_release(&qword_280C03940);
    }

    v25 = qword_280C03850;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = *(a2 + 152);
      v27 = *(a2 + 156);
      LODWORD(time.value) = 67109634;
      HIDWORD(time.value) = v26;
      LOWORD(time.timescale) = 1024;
      *(&time.timescale + 2) = v27;
      HIWORD(time.flags) = 2080;
      time.epoch = &lhs;
      _os_log_impl(&dword_2401B8000, v25, OS_LOG_TYPE_DEFAULT, "ViewpointCorrection last frame: %dx%d %s", &time, 0x18u);
    }

    if ((atomic_load_explicit(&qword_280C03940, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03940))
    {
      qword_280C03850 = os_log_create("com.apple.AppleCVA", "ViewpointCorrection");
      __cxa_guard_release(&qword_280C03940);
    }

    v28 = qword_280C03850;
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v29 = *a1;
      v30 = *(a1 + 16);
      v31 = 0.0;
      v32 = 0.0;
      if (*a1)
      {
        v32 = *(a1 + 8) / v29 * 1000.0;
      }

      if (v30)
      {
        v31 = *(a1 + 24) / v30 * 1000.0;
      }

      v33 = *(a1 + 32);
      v34 = *(a1 + 48);
      v35 = 0.0;
      v36 = 0.0;
      if (v33)
      {
        v36 = *(a1 + 40) / v33 * 1000.0;
      }

      if (v34)
      {
        v35 = *(a1 + 56) / v34 * 1000.0;
      }

      v37 = *(a1 + 64);
      v38 = *(a1 + 80);
      v39 = 0.0;
      v40 = 0.0;
      if (v37)
      {
        v40 = *(a1 + 72) / v37 * 1000.0;
      }

      if (v38)
      {
        v39 = *(a1 + 88) / v38 * 1000.0;
      }

      v41 = *(a1 + 96);
      v42 = *(a1 + 112);
      v43 = 0.0;
      v44 = 0.0;
      if (v41)
      {
        v44 = *(a1 + 104) / v41 * 1000.0;
      }

      if (v42)
      {
        v43 = *(a1 + 120) / v42 * 1000.0;
      }

      v45 = *(a1 + 128);
      v46 = *(a1 + 144);
      v47 = 0.0;
      v48 = 0.0;
      if (v45)
      {
        v48 = *(a1 + 136) / v45 * 1000.0;
      }

      if (v46)
      {
        v47 = *(a1 + 152) / v46 * 1000.0;
      }

      LODWORD(time.value) = 67113984;
      HIDWORD(time.value) = v29;
      LOWORD(time.timescale) = 1024;
      *(&time.timescale + 2) = v30;
      HIWORD(time.flags) = 2048;
      *&time.epoch = v32;
      *v77 = 2048;
      *&v77[2] = v31;
      v78 = 1024;
      v79 = v33;
      v80 = 1024;
      v81 = v34;
      v82 = 2048;
      v83 = v36;
      v84 = 2048;
      v85 = v35;
      v86 = 1024;
      v87 = v37;
      v88 = 1024;
      v89 = v38;
      v90 = 2048;
      v91 = v40;
      v92 = 2048;
      v93 = v39;
      v94 = 1024;
      v95 = v41;
      v96 = 1024;
      v97 = v42;
      v98 = 2048;
      v99 = v44;
      v100 = 2048;
      v101 = v43;
      v102 = 1024;
      v103 = v45;
      v104 = 1024;
      v105 = v46;
      v106 = 2048;
      v107 = v48;
      v108 = 2048;
      v109 = v47;
      _os_log_impl(&dword_2401B8000, v28, OS_LOG_TYPE_DEFAULT, "ViewpointCorrection # frames: success (%i (+%i), %.1f ms (%.1f ms)), dropped (%i (+%i), %.1f ms (%.1f ms)), error (%i (+%i), %.1f ms (%.1f ms)), modified (%i (+%i), %.1f ms (%.1f ms)), skipped due to distortion (%i (+%i), %.1f ms (%.1f ms))", &time, 0xA2u);
    }

    if ((atomic_load_explicit(&qword_280C03940, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03940))
    {
      qword_280C03850 = os_log_create("com.apple.AppleCVA", "ViewpointCorrection");
      __cxa_guard_release(&qword_280C03940);
    }

    v49 = qword_280C03850;
    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
    {
      v50 = *(a1 + 160);
      v51 = *v50;
      v52 = *(v50 + 16);
      v53 = 0.0;
      v54 = 0.0;
      if (*v50)
      {
        v54 = *(v50 + 8) / v51 * 1000.0;
      }

      if (v52)
      {
        v53 = *(v50 + 24) / v52 * 1000.0;
      }

      v55 = *(v50 + 32);
      v56 = *(v50 + 48);
      v57 = 0.0;
      v58 = 0.0;
      if (v55)
      {
        v58 = *(v50 + 40) / v55 * 1000.0;
      }

      if (v56)
      {
        v57 = *(v50 + 56) / v56 * 1000.0;
      }

      v59 = *(v50 + 64);
      v60 = *(v50 + 80);
      v61 = 0.0;
      v62 = 0.0;
      if (v59)
      {
        v62 = *(v50 + 72) / v59 * 1000.0;
      }

      if (v60)
      {
        v61 = *(v50 + 88) / v60 * 1000.0;
      }

      v63 = *(v50 + 96);
      v64 = *(v50 + 112);
      v65 = 0.0;
      v66 = 0.0;
      if (v63)
      {
        v66 = *(v50 + 104) / v63 * 1000.0;
      }

      if (v64)
      {
        v65 = *(v50 + 120) / v64 * 1000.0;
      }

      LODWORD(time.value) = 67112960;
      HIDWORD(time.value) = v51;
      LOWORD(time.timescale) = 1024;
      *(&time.timescale + 2) = v52;
      HIWORD(time.flags) = 2048;
      *&time.epoch = v54;
      *v77 = 2048;
      *&v77[2] = v53;
      v78 = 1024;
      v79 = v55;
      v80 = 1024;
      v81 = v56;
      v82 = 2048;
      v83 = v58;
      v84 = 2048;
      v85 = v57;
      v86 = 1024;
      v87 = v59;
      v88 = 1024;
      v89 = v60;
      v90 = 2048;
      v91 = v62;
      v92 = 2048;
      v93 = v61;
      v94 = 1024;
      v95 = v63;
      v96 = 1024;
      v97 = v64;
      v98 = 2048;
      v99 = v66;
      v100 = 2048;
      v101 = v65;
      _os_log_impl(&dword_2401B8000, v49, OS_LOG_TYPE_DEFAULT, "ViewpointCorrection # corrected faces: 1 (%i (+%i), %.1f ms (%.1f ms)), 2 (%i (+%i), %.1f ms (%.1f ms)), 3 (%i (+%i), %.1f ms (%.1f ms)), 4 (%i (+%i), %.1f ms (%.1f ms))", &time, 0x82u);
    }

    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
    *(a1 + 112) = 0;
    *(a1 + 120) = 0;
    *(a1 + 144) = 0;
    *(a1 + 152) = 0;
    v67 = *(a1 + 160);
    v68 = *(a1 + 168);
    if (v67 == v68)
    {
      goto LABEL_75;
    }

    v69 = v68 - v67 - 32;
    if (v69 >= 0x20)
    {
      v70 = (v69 >> 5) + 1;
      v71 = (v67 + 56);
      v72 = v70 & 0xFFFFFFFFFFFFFFELL;
      do
      {
        *(v71 - 10) = 0;
        *(v71 - 2) = 0;
        *(v71 - 4) = 0;
        *v71 = 0;
        v71 += 8;
        v72 -= 2;
      }

      while (v72);
      if (v70 == (v70 & 0xFFFFFFFFFFFFFFELL))
      {
        goto LABEL_75;
      }

      v67 += 32 * (v70 & 0xFFFFFFFFFFFFFFELL);
    }

    do
    {
      *(v67 + 16) = 0;
      *(v67 + 24) = 0;
      v67 += 32;
    }

    while (v67 != v68);
LABEL_75:
    *(a1 + 184) = v75;
  }
}

uint64_t sub_2401E0C4C(cva::DictionaryHandler **a1, const unsigned __int8 *a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = *a1;
  if (v6)
  {
    if ((cva::DictionaryHandler::hasKey(v6, @"DebugFaces") & 1) == 0)
    {
      v9 = *a1;
      cva::ArrayHandler::ArrayHandler(v17);
      cva::ItemHandler::ItemHandler();
      cva::DictionaryHandler::setItem(v9, @"DebugFaces", out);
      cva::ItemHandler::~ItemHandler(out);
      cva::ArrayHandler::~ArrayHandler(v17);
    }

    cva::DictionaryHandler::item(out, *a1, @"DebugFaces");
    cva::ItemHandler::getArray(&v16, out);
    cva::ItemHandler::~ItemHandler(out);
    cva::DictionaryHandler::DictionaryHandler(v15);
    v10 = v16;
    cva::ItemHandler::ItemHandler();
    cva::ArrayHandler::addItem(v10, out);
    cva::ItemHandler::~ItemHandler(out);
    memset(out, 0, 37);
    uuid_unparse_upper(a2, out);
    v11 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], out, 0x8000100u);
    cva::ItemHandler::ItemHandler(out, v11);
    cva::DictionaryHandler::setItem(v15, @"DebugFaceUUID", out);
    cva::ItemHandler::~ItemHandler(out);
    cva::ArrayHandler::ArrayHandler(v14);
    v17[0] = *a5;
    cva::ItemHandler::createValue<float>();
  }

  if ((atomic_load_explicit(&qword_280C03940, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03940))
  {
    qword_280C03850 = os_log_create("com.apple.AppleCVA", "ViewpointCorrection");
    __cxa_guard_release(&qword_280C03940);
  }

  v12 = qword_280C03850;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    LOWORD(out[0]) = 0;
    _os_log_error_impl(&dword_2401B8000, v12, OS_LOG_TYPE_ERROR, "Assertion failed: debugDictionary", out, 2u);
  }

  return 2;
}

void sub_2401E19C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, char a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  cva::ArrayHandler::~ArrayHandler(&a12);
  if (v21)
  {
    CFRelease(v21);
  }

  cva::DictionaryHandler::~DictionaryHandler(&a14);
  sub_2401C1DF4(&a16);
  _Unwind_Resume(a1);
}

void sub_2401E1AA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  cva::ItemHandler::~ItemHandler(va);
  JUMPOUT(0x2401E1A74);
}

void sub_2401E1AB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  cva::ItemHandler::~ItemHandler(va);
  JUMPOUT(0x2401E1A80);
}

void sub_2401E1AD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  cva::ItemHandler::~ItemHandler(va);
  _Unwind_Resume(a1);
}

void *sub_2401E1AF0(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_2401BDE28();
  }

  return result;
}

void sub_2401E1C8C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2401E3600(va);
  _Unwind_Resume(a1);
}

void *sub_2401E1CA0(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 7)
  {
    if (!(a2 >> 57))
    {
      operator new();
    }

    sub_2401BDE28();
  }

  return result;
}

void *sub_2401E1D7C(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (!(a2 >> 60))
    {
      operator new();
    }

    sub_2401BDE28();
  }

  return result;
}

uint64_t sub_2401E1E44(uint64_t *a1, void *a2, void *a3)
{
  v3 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v4 = v3 + 1;
  if (v3 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_2401BDE28();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 3) > v4)
  {
    v4 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v4;
  }

  v20 = a1;
  if (v6)
  {
    if (v6 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_2401BDE28();
  }

  v7 = 24 * v3;
  __p = 0;
  v17 = v7;
  v19 = 0;
  v8 = a2[1];
  *v7 = *a2;
  *(v7 + 8) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  *(24 * v3 + 0x10) = *a3;
  *a3 = 0;
  v18 = v7 + 24;
  sub_2401E3484(a1, &__p);
  v9 = a1[1];
  v10 = v17;
  for (i = v18; v18 != v10; i = v18)
  {
    v18 = i - 24;
    v12 = *(i - 8);
    if (v12)
    {

      v13 = *v12;
      if (*v12 && !atomic_fetch_add(v13 + 1, 0xFFFFFFFFFFFFFFFFLL))
      {
        (*(*v13 + 16))(v13);
      }

      MEMORY[0x245CBCA30](v12, 0xA0C40A8488062);
    }

    v14 = *(i - 16);
    if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v14->__on_zero_shared)(v14);
      std::__shared_weak_count::__release_weak(v14);
    }
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v9;
}

void sub_2401E204C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2401E3600(va);
  _Unwind_Resume(a1);
}

char **sub_2401E2060(char **a1)
{
  if (*(a1 + 24) == 1)
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
          v6 = *(v3 - 1);
          v3 -= 8;
          v5 = v6;
          if (v6)
          {

            v7 = *v5;
            if (*v5 && !atomic_fetch_add(v7 + 1, 0xFFFFFFFFFFFFFFFFLL))
            {
              (*(*v7 + 16))(v7);
            }

            MEMORY[0x245CBCA30](v5, 0xA0C40A8488062);
          }
        }

        while (v3 != v2);
        v4 = *a1;
      }

      a1[1] = v2;
      operator delete(v4);
    }
  }

  return a1;
}

void **sub_2401E213C(void **a1)
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
        if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v5->__on_zero_shared)(v5);
          std::__shared_weak_count::__release_weak(v5);
        }

        v3 -= 16;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void **sub_2401E21F0(void **a1)
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

        v3 -= 16;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_2401E2270(uint64_t a1, float32x2_t *a2)
{
  v3 = *(a1 + 304);
  if (!v3)
  {
    if ((atomic_load_explicit(&qword_280C03940, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03940))
    {
      qword_280C03850 = os_log_create("com.apple.AppleCVA", "ViewpointCorrection");
      __cxa_guard_release(&qword_280C03940);
    }

    v12 = qword_280C03850;
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }

    *buf = 0;
    v13 = "Precondition violated: m_correctionIntensitySurface";
    v14 = buf;
    goto LABEL_12;
  }

  if ([v3 width] == 1 && objc_msgSend(*(a1 + 304), "height") == 1)
  {
    _S0 = sqrtf(vaddv_f32(vmul_f32(*a2, *a2)));
    __asm { FCVT            H8, S0 }

    [*(a1 + 304) lockWithOptions:0 seed:0];
    *[*(a1 + 304) baseAddress] = _H8;
    [*(a1 + 304) unlockWithOptions:0 seed:0];
    return 0;
  }

  if ((atomic_load_explicit(&qword_280C03940, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_280C03940))
    {
      qword_280C03850 = os_log_create("com.apple.AppleCVA", "ViewpointCorrection");
      __cxa_guard_release(&qword_280C03940);
    }
  }

  v12 = qword_280C03850;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v15 = 0;
    v13 = "Precondition violated: m_correctionIntensitySurface.width == 1 && m_correctionIntensitySurface.height == 1";
    v14 = &v15;
LABEL_12:
    _os_log_error_impl(&dword_2401B8000, v12, OS_LOG_TYPE_ERROR, v13, v14, 2u);
  }

LABEL_10:

  return 1;
}

uint64_t sub_2401E242C(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v94 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = v9;
  v12 = v11;
  if (!v11)
  {
    if ((atomic_load_explicit(&qword_280C03940, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03940))
    {
      qword_280C03850 = os_log_create("com.apple.AppleCVA", "ViewpointCorrection");
      __cxa_guard_release(&qword_280C03940);
    }

    v57 = qword_280C03850;
    if (!os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_35;
    }

    *buf = 0;
    v58 = "Precondition violated: surface";
    goto LABEL_34;
  }

  if ([v11 width] != 1)
  {
    if ((atomic_load_explicit(&qword_280C03940, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03940))
    {
      qword_280C03850 = os_log_create("com.apple.AppleCVA", "ViewpointCorrection");
      __cxa_guard_release(&qword_280C03940);
    }

    v57 = qword_280C03850;
    if (!os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_35;
    }

    *buf = 0;
    v58 = "Precondition violated: surface.width == 1";
    goto LABEL_34;
  }

  if ([v12 height] != 48)
  {
    if ((atomic_load_explicit(&qword_280C03940, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03940))
    {
      qword_280C03850 = os_log_create("com.apple.AppleCVA", "ViewpointCorrection");
      __cxa_guard_release(&qword_280C03940);
    }

    v57 = qword_280C03850;
    if (!os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_35;
    }

    *buf = 0;
    v58 = "Precondition violated: surface.height == 2 * 2 * TrackedFace::kLandmarkCount";
    goto LABEL_34;
  }

  if ([v12 bytesPerElement] != 2)
  {
    if ((atomic_load_explicit(&qword_280C03940, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03940))
    {
      qword_280C03850 = os_log_create("com.apple.AppleCVA", "ViewpointCorrection");
      __cxa_guard_release(&qword_280C03940);
    }

    v57 = qword_280C03850;
    if (!os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_35;
    }

    *buf = 0;
    v58 = "Precondition violated: surface.bytesPerElement == 2";
    goto LABEL_34;
  }

  if ([v12 bytesPerRow] != 64)
  {
    if ((atomic_load_explicit(&qword_280C03940, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03940))
    {
      qword_280C03850 = os_log_create("com.apple.AppleCVA", "ViewpointCorrection");
      __cxa_guard_release(&qword_280C03940);
    }

    v57 = qword_280C03850;
    if (!os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_35;
    }

    *buf = 0;
    v58 = "Precondition violated: surface.bytesPerRow == 64";
LABEL_34:
    _os_log_error_impl(&dword_2401B8000, v57, OS_LOG_TYPE_ERROR, v58, buf, 2u);
LABEL_35:

    if ((atomic_load_explicit(&qword_280C03940, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03940))
    {
      qword_280C03850 = os_log_create("com.apple.AppleCVA", "ViewpointCorrection");
      __cxa_guard_release(&qword_280C03940);
    }

    v59 = qword_280C03850;
    if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v91 = "Precondition was violated";
      v92 = 2080;
      v93 = "Assertion failed";
      _os_log_error_impl(&dword_2401B8000, v59, OS_LOG_TYPE_ERROR, "Running readLandmarksFromIOSurface(landmarksSurface, landmarks) failed with %s, returning %s", buf, 0x16u);
    }

    goto LABEL_38;
  }

  [v12 lockWithOptions:1 seed:0];
  v13 = [v12 baseAddress];
  v14.i16[0] = *v13;
  v14.i16[1] = v13[32];
  *&v15 = vcvtq_f32_f16(v14).u64[0];
  v16.i16[0] = v13[64];
  v16.i16[1] = v13[96];
  v17 = vcvtq_f32_f16(v16).u64[0];
  *(&v15 + 1) = v17;
  v70 = v15;
  LOWORD(v15) = v13[768];
  WORD1(v15) = v13[800];
  *&v15 = vcvtq_f32_f16(*&v15).u64[0];
  v17.i16[0] = v13[832];
  v17.i16[1] = v13[864];
  v18 = vcvtq_f32_f16(v17).u64[0];
  *(&v15 + 1) = v18;
  v18.i16[0] = v13[128];
  v18.i16[1] = v13[160];
  v79 = v15;
  *&v15 = vcvtq_f32_f16(v18).u64[0];
  v18.i16[0] = v13[896];
  v18.i16[1] = v13[928];
  v71 = v15;
  *&v15 = vcvtq_f32_f16(v18).u64[0];
  v18.i16[0] = v13[192];
  v18.i16[1] = v13[224];
  v80 = v15;
  *&v15 = vcvtq_f32_f16(v18).u64[0];
  v18.i16[0] = v13[256];
  v18.i16[1] = v13[288];
  v19 = vcvtq_f32_f16(v18).u64[0];
  *(&v15 + 1) = v19;
  v72 = v15;
  LOWORD(v15) = v13[960];
  WORD1(v15) = v13[992];
  v19.i16[0] = v13[1024];
  v19.i16[1] = v13[1056];
  *&v15 = vcvtq_f32_f16(*&v15).u64[0];
  v20 = vcvtq_f32_f16(v19).u64[0];
  *(&v15 + 1) = v20;
  v81 = v15;
  LOWORD(v15) = v13[320];
  WORD1(v15) = v13[352];
  *&v15 = vcvtq_f32_f16(*&v15).u64[0];
  v20.i16[0] = v13[384];
  v20.i16[1] = v13[416];
  v21 = vcvtq_f32_f16(v20).u64[0];
  *(&v15 + 1) = v21;
  v73 = v15;
  LOWORD(v15) = v13[1088];
  WORD1(v15) = v13[1120];
  *&v15 = vcvtq_f32_f16(*&v15).u64[0];
  v21.i16[0] = v13[1152];
  v21.i16[1] = v13[1184];
  v22 = vcvtq_f32_f16(v21).u64[0];
  v82 = v15;
  v83 = v22;
  LOWORD(v15) = v13[448];
  WORD1(v15) = v13[480];
  *&v15 = vcvtq_f32_f16(*&v15).u64[0];
  v22.i16[0] = v13[1216];
  v22.i16[1] = v13[1248];
  v23 = vcvtq_f32_f16(v22).u64[0];
  v24.i16[0] = v13[512];
  v24.i16[1] = v13[544];
  v25 = vcvtq_f32_f16(v24).u64[0];
  v74 = v15;
  v75 = v25;
  LOWORD(v15) = v13[1280];
  WORD1(v15) = v13[1312];
  *&v15 = vcvtq_f32_f16(*&v15).u64[0];
  v84 = v23;
  v85 = v15;
  LOWORD(v15) = v13[576];
  WORD1(v15) = v13[608];
  *&v15 = vcvtq_f32_f16(*&v15).u64[0];
  v23.i16[0] = v13[1344];
  v23.i16[1] = v13[1376];
  v25.i16[0] = v13[640];
  v25.i16[1] = v13[672];
  v76 = v15;
  v77 = vcvtq_f32_f16(v25).u64[0];
  LOWORD(v15) = v13[1408];
  WORD1(v15) = v13[1440];
  *&v15 = vcvtq_f32_f16(*&v15).u64[0];
  v86 = vcvtq_f32_f16(v23).u64[0];
  v87 = v15;
  LOWORD(v15) = v13[704];
  WORD1(v15) = v13[736];
  *&v15 = vcvtq_f32_f16(*&v15).u64[0];
  v78 = v15;
  LOWORD(v15) = v13[1472];
  WORD1(v15) = v13[1504];
  v88 = vcvtq_f32_f16(*&v15).u64[0];
  [v12 unlockWithOptions:1 seed:0];

  v26 = v10;
  v27 = v26;
  if (v26)
  {
    if ([v26 width] == 1)
    {
      if ([v27 height] == 6)
      {
        if ([v27 bytesPerElement] == 2)
        {
          if ([v27 bytesPerRow] == 64)
          {
            [v27 lockWithOptions:1 seed:0];
            v28 = [v27 baseAddress];
            v29.i16[0] = *v28;
            v29.i16[1] = v28[32];
            v68 = v29;
            _H8 = v28[64];
            [v27 unlockWithOptions:1 seed:0];

            v31 = [*(*(a2 + 168) + 8) width];
            v32 = 0;
            v69 = vcvtq_f32_f16(v68);
            __asm { FCVT            S8, H8 }

            v38 = *a2;
            v39 = *(a2 + 8);
            v40 = *(a2 + 16);
            v41 = *(a2 + 32);
            __asm { FMOV            V5.2S, #1.0 }

            v43 = *(a2 + 48);
            do
            {
              v44 = vmul_n_f32(vmul_f32(vadd_f32(*(&v70 + v32), _D5), 0x3F0000003F000000), v31);
              v45 = vaddq_f32(v43, vmlaq_lane_f32(vmulq_n_f32(v40, v44.f32[0]), v41, v44, 1));
              *&buf[v32] = vdiv_f32(vsub_f32(vdiv_f32(*v45.i8, vdup_laneq_s32(v45, 2)), v38), v39);
              v32 += 8;
            }

            while (v32 != 96);
            *v89 = *a5;
            *&v89[16] = *(a5 + 16);
            v46 = sub_2401F1F30(a1, buf, v89);
            v51 = v46 - 1;
            if (v46 == 1)
            {
              v52 = 2;
            }

            else
            {
              v52 = v46;
            }

            if (v46)
            {
              v53 = sub_2401F3718();
              if (!os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
              {
LABEL_60:

                goto LABEL_39;
              }

              v54 = off_278C9DF08[v51];
              v55 = off_278C9DF08[(v52 - 1)];
              *v89 = 136315394;
              *&v89[4] = v54;
              *&v89[12] = 2080;
              *&v89[14] = v55;
              v56 = "Running trackedFace.updateLandmarks(transformedLandmarks, timestamp) failed with %s, returning %s";
            }

            else
            {
              LODWORD(v47) = -1011613696;
              v63 = v69;
              v63.f32[2] = (((*(a1 + 112) + -90.0) + (floorf(((*(a1 + 112) + -90.0) + 180.0) / 360.0) * -360.0)) / 57.296) + _S8;
              *v89 = *a5;
              *&v89[16] = *(a5 + 16);
              sub_2401F2480(a1, v89, vdivq_f32(v63, vdupq_n_s32(0x3C8EFA35u)), *v89, v47, v48, v49, v50);
              *v89 = *a5;
              *&v89[16] = *(a5 + 16);
              v64 = sub_2401E31C4(a1, *(*(a2 + 168) + 8), &v70, v89);
              v65 = v64 - 1;
              if (v64 == 1)
              {
                v52 = 2;
              }

              else
              {
                v52 = v64;
              }

              if (!v64)
              {
                v52 = 0;
                goto LABEL_39;
              }

              v53 = sub_2401F3718();
              if (!os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_60;
              }

              v66 = off_278C9DF08[v65];
              v67 = off_278C9DF08[(v52 - 1)];
              *v89 = 136315394;
              *&v89[4] = v66;
              *&v89[12] = 2080;
              *&v89[14] = v67;
              v56 = "Running updateJitterValue(trackedFace, crops, landmarks, jitterOffset, timestamp) failed with %s, returning %s";
            }

            _os_log_error_impl(&dword_2401B8000, v53, OS_LOG_TYPE_ERROR, v56, v89, 0x16u);
            goto LABEL_60;
          }

          v61 = sub_2401F3718();
          if (!os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_51;
          }

          *buf = 0;
          v62 = "Precondition violated: surface.bytesPerRow == 64";
        }

        else
        {
          v61 = sub_2401F3718();
          if (!os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_51;
          }

          *buf = 0;
          v62 = "Precondition violated: surface.bytesPerElement == 2";
        }
      }

      else
      {
        v61 = sub_2401F3718();
        if (!os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_51;
        }

        *buf = 0;
        v62 = "Precondition violated: surface.height == 2 * 3";
      }
    }

    else
    {
      v61 = sub_2401F3718();
      if (!os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_51;
      }

      *buf = 0;
      v62 = "Precondition violated: surface.width == 1";
    }
  }

  else
  {
    v61 = sub_2401F3718();
    if (!os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_51;
    }

    *buf = 0;
    v62 = "Precondition violated: surface";
  }

  _os_log_error_impl(&dword_2401B8000, v61, OS_LOG_TYPE_ERROR, v62, buf, 2u);
LABEL_51:

  if ((atomic_load_explicit(&qword_280C03940, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03940))
  {
    qword_280C03850 = os_log_create("com.apple.AppleCVA", "ViewpointCorrection");
    __cxa_guard_release(&qword_280C03940);
  }

  v59 = qword_280C03850;
  if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v91 = "Precondition was violated";
    v92 = 2080;
    v93 = "Assertion failed";
    _os_log_error_impl(&dword_2401B8000, v59, OS_LOG_TYPE_ERROR, "Running readAnglesFromIOSurface(anglesSurface, rigidPoseAngles) failed with %s, returning %s", buf, 0x16u);
  }

LABEL_38:

  v52 = 2;
LABEL_39:

  return v52;
}

void sub_2401E2EF8(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  if (v3 != *a1)
  {
    do
    {
      v4 = *(v3 - 8);
      if (v4)
      {

        v5 = *v4;
        if (*v4 && !atomic_fetch_add(v5 + 1, 0xFFFFFFFFFFFFFFFFLL))
        {
          (*(*v5 + 16))(v5);
        }

        MEMORY[0x245CBCA30](v4, 0xA0C40A8488062);
      }

      v6 = *(v3 - 16);
      if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v6->__on_zero_shared)(v6);
        std::__shared_weak_count::__release_weak(v6);
      }

      v3 -= 24;
    }

    while (v3 != v2);
  }

  a1[1] = v2;
}

void **sub_2401E2FF8(void **a1)
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
        if (v5)
        {

          v6 = *v5;
          if (*v5 && !atomic_fetch_add(v6 + 1, 0xFFFFFFFFFFFFFFFFLL))
          {
            (*(*v6 + 16))(v6);
          }

          MEMORY[0x245CBCA30](v5, 0xA0C40A8488062);
        }

        v7 = *(v3 - 2);
        if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v7->__on_zero_shared)(v7);
          std::__shared_weak_count::__release_weak(v7);
        }

        v3 -= 24;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void **sub_2401E3110(void **a1)
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
        v5 = *(v3 - 2);
        if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v5->__on_zero_shared)(v5);
          std::__shared_weak_count::__release_weak(v5);
        }

        v3 -= 24;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_2401E31C4(uint64_t a1, void *a2, float32x2_t *a3, uint64_t a4)
{
  v33 = *MEMORY[0x277D85DE8];
  *v7.i32 = 10.0 / [a2 width];
  v8 = vdup_lane_s32(v7, 0);
  v9 = vsub_f32(a3[1], a3[13]);
  v10 = (vaddv_f32(vabd_f32(vsub_f32(*a3, a3[12]), v8)) + vabds_f32(v9.f32[0], *v7.i32)) + vabds_f32(v9.f32[1], *v7.i32);
  v11 = vsub_f32(a3[2], a3[14]);
  v12 = (v10 + vabds_f32(v11.f32[0], *v7.i32)) + vabds_f32(v11.f32[1], *v7.i32);
  v13 = vsub_f32(a3[3], a3[15]);
  v14 = (v12 + vabds_f32(v13.f32[0], *v7.i32)) + vabds_f32(v13.f32[1], *v7.i32);
  v15 = vsub_f32(a3[4], a3[16]);
  v16 = (v14 + vabds_f32(v15.f32[0], *v7.i32)) + vabds_f32(v15.f32[1], *v7.i32);
  v17 = vsub_f32(a3[5], a3[17]);
  v18 = fmaxf((v16 + vabds_f32(v17.f32[0], *v7.i32)) + vabds_f32(v17.f32[1], *v7.i32), 0.0);
  v19 = vsub_f32(a3[7], a3[19]);
  v8.f32[0] = (vaddv_f32(vabd_f32(vsub_f32(a3[6], a3[18]), v8)) + vabds_f32(v19.f32[0], *v7.i32)) + vabds_f32(v19.f32[1], *v7.i32);
  v20 = vsub_f32(a3[8], a3[20]);
  v8.f32[0] = (v8.f32[0] + vabds_f32(v20.f32[0], *v7.i32)) + vabds_f32(v20.f32[1], *v7.i32);
  v21 = vsub_f32(a3[9], a3[21]);
  v8.f32[0] = (v8.f32[0] + vabds_f32(v21.f32[0], *v7.i32)) + vabds_f32(v21.f32[1], *v7.i32);
  v22 = vsub_f32(a3[10], a3[22]);
  v8.f32[0] = (v8.f32[0] + vabds_f32(v22.f32[0], *v7.i32)) + vabds_f32(v22.f32[1], *v7.i32);
  v23 = vsub_f32(a3[11], a3[23]);
  v24 = (v8.f32[0] + vabds_f32(v23.f32[0], *v7.i32)) + vabds_f32(v23.f32[1], *v7.i32);
  *v32 = *a4;
  if (v18 >= v24)
  {
    v24 = v18;
  }

  *&v32[16] = *(a4 + 16);
  *(a1 + 392) = v24;
  v25 = sub_2401F22B8(a1 + 400, (a1 + 392), v32);
  v26 = v25 - 1;
  if (v25 == 1)
  {
    v27 = 2;
  }

  else
  {
    v27 = v25;
  }

  if (v25)
  {
    if ((atomic_load_explicit(&qword_280C03940, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03940))
    {
      qword_280C03850 = os_log_create("com.apple.AppleCVA", "ViewpointCorrection");
      __cxa_guard_release(&qword_280C03940);
    }

    v28 = qword_280C03850;
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v30 = off_278C9DF08[v26];
      v31 = off_278C9DF08[(v27 - 1)];
      *v32 = 136315394;
      *&v32[4] = v30;
      *&v32[12] = 2080;
      *&v32[14] = v31;
      _os_log_error_impl(&dword_2401B8000, v28, OS_LOG_TYPE_ERROR, "Running trackedFace.updateLandmarksJitter(sum, timestamp) failed with %s, returning %s", v32, 0x16u);
    }
  }

  return v27;
}

void sub_2401E3484(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a2[1] + *a1 - v5;
  if (v5 != *a1)
  {
    v7 = *a1;
    v8 = a2[1] + *a1 - v5;
    do
    {
      *v8 = *v7;
      *v7 = 0;
      *(v7 + 8) = 0;
      *(v8 + 16) = *(v7 + 16);
      *(v7 + 16) = 0;
      v7 += 24;
      v8 += 24;
    }

    while (v7 != v5);
    do
    {
      v9 = *(v4 + 16);
      if (v9)
      {

        v10 = *v9;
        if (*v9 && !atomic_fetch_add(v10 + 1, 0xFFFFFFFFFFFFFFFFLL))
        {
          (*(*v10 + 16))(v10);
        }

        MEMORY[0x245CBCA30](v9, 0xA0C40A8488062);
      }

      v11 = *(v4 + 8);
      if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v11->__on_zero_shared)(v11);
        std::__shared_weak_count::__release_weak(v11);
      }

      v4 += 24;
    }

    while (v4 != v5);
    v4 = *a1;
  }

  a2[1] = v6;
  *a1 = v6;
  a1[1] = v4;
  a2[1] = v4;
  v12 = a1[1];
  a1[1] = a2[2];
  a2[2] = v12;
  v13 = a1[2];
  a1[2] = a2[3];
  a2[3] = v13;
  *a2 = a2[1];
}

uint64_t sub_2401E3600(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 24;
    v4 = *(i - 8);
    if (v4)
    {

      v5 = *v4;
      if (*v4 && !atomic_fetch_add(v5 + 1, 0xFFFFFFFFFFFFFFFFLL))
      {
        (*(*v5 + 16))(v5);
      }

      MEMORY[0x245CBCA30](v4, 0xA0C40A8488062);
    }

    v6 = *(i - 16);
    if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_2401E3714(id **a1, void *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = (a2[1] + *a1 - v5);
  if (v5 != *a1)
  {
    v7 = *a1;
    v8 = (a2[1] + *a1 - v5);
    do
    {
      v9 = *v7;
      v10 = *(v7 + 2);
      v8[1] = *(v7 + 1);
      v8[2] = v10;
      *v8 = v9;
      v11 = *(v7 + 3);
      *(v7 + 3) = 0uLL;
      v8[3] = v11;
      v12 = *(v7 + 4);
      v13 = *(v7 + 6);
      v8[5] = *(v7 + 5);
      v8[6] = v13;
      v8[4] = v12;
      v14 = *(v7 + 7);
      *(v7 + 7) = 0uLL;
      v8[7] = v14;
      v7 += 16;
      v8 += 8;
    }

    while (v7 != v5);
    do
    {

      v4 += 16;
    }

    while (v4 != v5);
    v4 = *a1;
  }

  a2[1] = v6;
  *a1 = v6;
  a1[1] = v4;
  a2[1] = v4;
  v15 = a1[1];
  a1[1] = a2[2];
  a2[2] = v15;
  v16 = a1[2];
  a1[2] = a2[3];
  a2[3] = v16;
  *a2 = a2[1];
}

void sub_2401E3828(std::exception *a1)
{
  std::exception::~exception(a1);

  JUMPOUT(0x245CBCA30);
}

uint64_t sub_2401E3864(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v43 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = v7;
  v10 = v8;
  v11 = [v9 width];
  v12 = &qword_280C03940;
  v13 = 0x280C03000uLL;
  if (v11 != [v10 width])
  {
    if ((atomic_load_explicit(&qword_280C03940, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03940))
    {
      qword_280C03850 = os_log_create("com.apple.AppleCVA", "ViewpointCorrection");
      __cxa_guard_release(&qword_280C03940);
    }

    v27 = qword_280C03850;
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_34;
    }

    *buf = 0;
    v28 = "Precondition violated: xSurface.width == ySurface.width";
LABEL_33:
    _os_log_error_impl(&dword_2401B8000, v27, OS_LOG_TYPE_ERROR, v28, buf, 2u);
    goto LABEL_34;
  }

  v14 = [v9 height];
  if (v14 != [v10 height])
  {
    if ((atomic_load_explicit(&qword_280C03940, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03940))
    {
      qword_280C03850 = os_log_create("com.apple.AppleCVA", "ViewpointCorrection");
      __cxa_guard_release(&qword_280C03940);
    }

    v27 = qword_280C03850;
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_34;
    }

    *buf = 0;
    v28 = "Precondition violated: xSurface.height == ySurface.height";
    goto LABEL_33;
  }

  v15 = [v9 bytesPerRow];
  if (v15 != [v10 bytesPerRow])
  {
    if ((atomic_load_explicit(&qword_280C03940, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03940))
    {
      qword_280C03850 = os_log_create("com.apple.AppleCVA", "ViewpointCorrection");
      __cxa_guard_release(&qword_280C03940);
    }

    v27 = qword_280C03850;
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_34;
    }

    *buf = 0;
    v28 = "Precondition violated: xSurface.bytesPerRow == ySurface.bytesPerRow";
    goto LABEL_33;
  }

  v16 = [v9 bytesPerElement];
  if (v16 != [v10 bytesPerElement])
  {
    if ((atomic_load_explicit(&qword_280C03940, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03940))
    {
      qword_280C03850 = os_log_create("com.apple.AppleCVA", "ViewpointCorrection");
      __cxa_guard_release(&qword_280C03940);
    }

    v27 = qword_280C03850;
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_34;
    }

    *buf = 0;
    v28 = "Precondition violated: xSurface.bytesPerElement == ySurface.bytesPerElement";
    goto LABEL_33;
  }

  if ([v9 bytesPerElement] != 2)
  {
    if ((atomic_load_explicit(&qword_280C03940, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03940))
    {
      qword_280C03850 = os_log_create("com.apple.AppleCVA", "ViewpointCorrection");
      __cxa_guard_release(&qword_280C03940);
    }

    v27 = qword_280C03850;
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_34;
    }

    *buf = 0;
    v28 = "Precondition violated: xSurface.bytesPerElement == sizeof(_Float16)";
    goto LABEL_33;
  }

  v17 = [v9 bytesPerRow];
  v18 = [v9 bytesPerElement];
  v19 = [v9 bytesPerElement];
  v20 = v17 / v18;
  if (v19 * (v17 / v18) != [v9 bytesPerRow])
  {
    v27 = sub_2401F3718();
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_34;
    }

    *buf = 0;
    v28 = "Precondition violated: elementsPerRow * xSurface.bytesPerElement == xSurface.bytesPerRow";
    goto LABEL_33;
  }

  v21 = [v10 bytesPerElement];
  if (v21 * v20 == [v10 bytesPerRow])
  {
    [v9 lockWithOptions:1 seed:0];
    [v10 lockWithOptions:1 seed:0];
    v38 = v10;
    v22 = [v9 baseAddress];
    v23 = [v10 baseAddress];
    v24 = 0;
    v25 = 2 * v20;
    v26 = 0.0;
    while ([v9 height] > v24)
    {
      v29 = a1;
      v30 = a4;
      v31 = v12;
      v32 = v13;
      for (i = 0; [v9 width] > i; ++i)
      {
        v34.i16[0] = *(v22 + 2 * i);
        v34.i16[1] = *(v23 + 2 * i);
        v35 = vcvtq_f32_f16(v34).u64[0];
        v26 = v26 + sqrtf(vaddv_f32(vmul_f32(v35, v35)));
      }

      ++v24;
      v23 += v25;
      v22 += v25;
      v13 = v32;
      v12 = v31;
      a4 = v30;
      a1 = v29;
      v10 = v38;
    }

    [v10 unlockWithOptions:1 seed:0];
    [v9 unlockWithOptions:1 seed:0];
    [v9 width];
    [v9 height];

    cva::ItemHandler::createValue<float>();
  }

  v27 = sub_2401F3718();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    v28 = "Precondition violated: elementsPerRow * ySurface.bytesPerElement == ySurface.bytesPerRow";
    goto LABEL_33;
  }

LABEL_34:

  if ((atomic_load_explicit(&qword_280C03940, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03940))
  {
    qword_280C03850 = os_log_create("com.apple.AppleCVA", "ViewpointCorrection");
    __cxa_guard_release(&qword_280C03940);
  }

  v36 = qword_280C03850;
  if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v40 = "Precondition was violated";
    v41 = 2080;
    v42 = "Assertion failed";
    _os_log_error_impl(&dword_2401B8000, v36, OS_LOG_TYPE_ERROR, "Running computeWarpFieldAverageIntensity(xSurface, ySurface, averageWarpFieldIntensity) failed with %s, returning %s", buf, 0x16u);
  }

  return 2;
}

void sub_2401E3F40(_Unwind_Exception *a1, void *a2, uint64_t a3, ...)
{
  va_start(va, a3);
  cva::ItemHandler::~ItemHandler(va);

  _Unwind_Resume(a1);
}

float32x2_t sub_2401E3FA0(simd_float3x3 *a1)
{
  v2 = *(a1[3].columns[0].i64[1] + 8);
  [v2 width];
  [*(a1[3].columns[0].i64[1] + 8) height];

  v5 = __invert_f3(*a1);
  v3 = vaddq_f32(v5.columns[2], vmlaq_f32(vmulq_f32(v5.columns[0], 0), 0, v5.columns[1]));
  return vdiv_f32(*v3.i8, vdup_laneq_s32(v3, 2));
}

uint64_t *sub_2401E408C(uint64_t *a1)
{
  std::mutex::lock((a1 + 3));
  *(a1 + 136) = 1;
  std::mutex::unlock((a1 + 3));
  v2 = *a1;
  v3 = **(*a1 + 8);
  std::mutex::lock((v3 + 16));
  *(v3 + 128) = 1;
  std::mutex::unlock((v3 + 16));
  v4 = *(*(v2 + 8) + 24) - *(*(v2 + 8) + 16);
  if ((v4 >> 4) >= 1)
  {
    v5 = 0;
    v6 = (v4 >> 4) & 0x7FFFFFFF;
    do
    {
      sub_24026CDCC(*(*(*(v2 + 8) + 16) + v5), 1);
      v5 += 16;
      --v6;
    }

    while (v6);
  }

  v7 = a1[21];
  a1[21] = 0;
  if (v7)
  {
    v8 = sub_2401D1B7C(v7);
    MEMORY[0x245CBCA30](v8, 0x10A0C408B1AEA8CLL);
  }

  a1[1] = &unk_2852270D0;
  if (a1[20])
  {
    v9 = a1[19];
    v10 = *(a1[18] + 8);
    v11 = *v9;
    *(v11 + 8) = v10;
    *v10 = v11;
    a1[20] = 0;
    if (v9 != a1 + 18)
    {
      do
      {
        v12 = v9[1];
        v13 = v9[3];
        if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          v14 = v9;
          (v13->__on_zero_shared)(v13);
          std::__shared_weak_count::__release_weak(v13);
          v9 = v14;
        }

        operator delete(v9);
        v9 = v12;
      }

      while (v12 != a1 + 18);
    }
  }

  std::condition_variable::~condition_variable((a1 + 11));
  std::mutex::~mutex((a1 + 3));
  v15 = *a1;
  *a1 = 0;
  if (v15)
  {
    (*(*v15 + 8))(v15);
  }

  return a1;
}

void sub_2401E4254(_Unwind_Exception *a1)
{
  sub_2401D1E44(v1 + 21);
  sub_2401E42A0(v2);
  v4 = *v1;
  *v1 = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2401E42A0(uint64_t a1)
{
  *a1 = &unk_2852270D0;
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

uint64_t sub_2401E4398(uint64_t a1)
{
  std::mutex::lock((a1 + 16));
  v2 = *(a1 + 152);
  std::mutex::unlock((a1 + 16));
  return v2;
}

void sub_2401E43D0(uint64_t a1)
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

uint64_t sub_2401E44B4(uint64_t a1)
{
  std::mutex::lock((a1 + 16));
  if (*(a1 + 128) != 1)
  {
    operator new();
  }

  std::mutex::unlock((a1 + 16));
  return 0;
}

void sub_2401E4610(uint64_t a1, void *a2, int a3, uint64_t a4)
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

void sub_2401E48A0(uint64_t a1@<X0>, void *a2@<X8>)
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

void sub_2401E49A0(uint64_t a1)
{
  *a1 = &unk_2852270D0;
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

uint64_t sub_2401E4AB8(uint64_t a1)
{
  *a1 = &unk_2852270D0;
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

uint64_t sub_2401E4BB0(void *a1)
{
  v1 = a1[2];
  v2 = a1[1];
  v3 = (a1[3] + (v1 >> 1));
  if (v1)
  {
    return (*(*v3 + v2))();
  }

  else
  {
    return v2(v3);
  }
}

__n128 sub_2401E4BE0(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_285226FF8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_2401E4C8C(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v21 = 0;
  v22 = 0;
  sub_2401E4610(a1 + 8, &v21, 0, 0);
  if (v3)
  {
    v4 = v21;
    if (v21)
    {
      std::mutex::lock((a1 + 24));
      v5 = *(a1 + 160);
      std::mutex::unlock((a1 + 24));
      kdebug_trace();
      time = *(v4 + 36);
      Seconds = CMTimeGetSeconds(&time);
      v20[0] = 0;
      v20[1] = 0;
      explicit = atomic_load_explicit(&qword_280C03940, memory_order_acquire);
      if (v5)
      {
        if ((explicit & 1) == 0 && __cxa_guard_acquire(&qword_280C03940))
        {
          qword_280C03850 = os_log_create("com.apple.AppleCVA", "ViewpointCorrection");
          __cxa_guard_release(&qword_280C03940);
        }

        v8 = qword_280C03850;
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          LODWORD(time.value) = 134217984;
          *(&time.value + 4) = Seconds;
          _os_log_debug_impl(&dword_2401B8000, v8, OS_LOG_TYPE_DEBUG, "Dropping frame with timestamp %.4f", &time, 0xCu);
        }

        kdebug_trace();
        v9 = v21;
        memset(&time, 0, sizeof(time));
        HostTimeClock = CMClockGetHostTimeClock();
        CMClockGetTime(&time, HostTimeClock);
        LOBYTE(v23[0]) = 0;
        HIDWORD(v23[0]) = 0;
        v28 = 0;
        v29 = 0;
        sub_2401DFFBC(&v24, v9, 7, 0, &v28);
      }

      if ((explicit & 1) == 0 && __cxa_guard_acquire(&qword_280C03940))
      {
        qword_280C03850 = os_log_create("com.apple.AppleCVA", "ViewpointCorrection");
        __cxa_guard_release(&qword_280C03940);
      }

      v12 = qword_280C03850;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        LODWORD(time.value) = 134217984;
        *(&time.value + 4) = Seconds;
        _os_log_debug_impl(&dword_2401B8000, v12, OS_LOG_TYPE_DEBUG, "Processing frame with timestamp %.4f", &time, 0xCu);
      }

      kdebug_trace();
      v13 = *(a1 + 168);
      v14 = v21;
      memset(&time, 0, sizeof(time));
      v15 = CMClockGetHostTimeClock();
      CMClockGetTime(&time, v15);
      v25[0] = 0;
      v26 = 0;
      if (cva::DictionaryHandler::hasKey((v14 + 2), @"ReturnDebugMetadata"))
      {
        cva::DictionaryHandler::item(&v27, (v14 + 2), @"ReturnDebugMetadata");
        cva::ItemHandler::getValue<BOOL>();
      }

      v28 = 0;
      v29 = 0;
      v24 = 0uLL;
      v16 = sub_2401D896C(v13, v14, v25, &v24);
      v17 = v25[0];
      v23[0] = v28;
      v23[1] = v29;
      if (v29)
      {
        atomic_fetch_add_explicit(v29 + 1, 1uLL, memory_order_relaxed);
      }

      sub_2401DFFBC(&v19, v14, v16, v17, v23);
    }

    if ((atomic_load_explicit(&qword_280C03940, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03940))
    {
      qword_280C03850 = os_log_create("com.apple.AppleCVA", "ViewpointCorrection");
      __cxa_guard_release(&qword_280C03940);
    }

    v11 = qword_280C03850;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      LOWORD(time.value) = 0;
      _os_log_error_impl(&dword_2401B8000, v11, OS_LOG_TYPE_ERROR, "The queue should not contain nullptr", &time, 2u);
    }
  }

  else
  {
    if ((atomic_load_explicit(&qword_280C03940, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03940))
    {
      qword_280C03850 = os_log_create("com.apple.AppleCVA", "ViewpointCorrection");
      __cxa_guard_release(&qword_280C03940);
    }

    v11 = qword_280C03850;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      LOWORD(time.value) = 0;
      _os_log_error_impl(&dword_2401B8000, v11, OS_LOG_TYPE_ERROR, "We call process once for each input item - so there should always be at least one item in the queue", &time, 2u);
    }
  }

  v18 = v22;
  if (v22 && !atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v18->__on_zero_shared)(v18);
    std::__shared_weak_count::__release_weak(v18);
  }

  objc_autoreleasePoolPop(v2);
}

void sub_2401E53FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13, uint64_t a14, char a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  std::__shared_weak_count::~__shared_weak_count(v25);
  operator delete(v27);
  kdebug_trace();
  sub_2401C1DF4(&a11);
  sub_2401C1DF4(&a13);
  _Unwind_Resume(a1);
}

void *sub_2401E54DC(void **a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    v4 = sub_2401D1F74(v2);
    MEMORY[0x245CBCA30](v4, 0x10A0C40130DBE62);
    return v3;
  }

  return v1;
}

uint64_t **sub_2401E5530(uint64_t **result)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = **result;
  **result = result[1];
  if (v1)
  {
    v2 = result;
    v3 = e5rt_io_port_release();
    if (v3)
    {
      v4 = v3;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v6 = v4;
        _os_log_error_impl(&dword_2401B8000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "e5rt::AssertSuccess failed with error code %d.", buf, 8u);
      }
    }

    return v2;
  }

  return result;
}

uint64_t *sub_2401E5600(void *a1, uint64_t a2)
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
            return (v12 + 5);
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

  return (v12 + 5);
}

void sub_2401E5904(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2401E73D0(va);
  _Unwind_Resume(a1);
}

void *sub_2401E5918(void *result)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = e5rt_io_port_release();
    if (v3)
    {
      v4 = v3;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v6 = v4;
        _os_log_error_impl(&dword_2401B8000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "e5rt::AssertSuccess failed with error code %d.", buf, 8u);
      }
    }

    return v2;
  }

  return result;
}

void sub_2401E59E4(int64x2_t *a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0;
  v13 = 0;
  v11 = &v13;
  v2 = e5rt_io_port_retain_tensor_desc();
  if (v2)
  {
    snprintf(__str, 0x40uLL, "e5rt::EnsureSuccess failed with error code %d.", v2);
    shape = _os_crash();
    __break(1u);
    goto LABEL_9;
  }

  v3 = *v11;
  *v11 = v12;
  if (v3)
  {
    v14 = v3;
    v4 = e5rt_tensor_desc_release();
    if (v4)
    {
      goto LABEL_10;
    }
  }

  while (1)
  {
    v11 = 0;
    v14 = 0;
    shape = e5rt_tensor_desc_get_shape();
    if (!shape)
    {
      break;
    }

LABEL_9:
    snprintf(__str, 0x40uLL, "e5rt::EnsureSuccess failed with error code %d.", shape);
    v4 = _os_crash();
    __break(1u);
LABEL_10:
    v9 = v4;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *__str = 67109120;
      v16 = v9;
      _os_log_error_impl(&dword_2401B8000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "e5rt::AssertSuccess failed with error code %d.", __str, 8u);
    }
  }

  v6 = vdupq_n_s64(1uLL);
  *a1 = v6;
  a1[1] = v6;
  v7 = v13;
  v13 = 0;
  if (v7)
  {
    v11 = v7;
    v8 = e5rt_tensor_desc_release();
    if (v8)
    {
      v10 = v8;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *__str = 67109120;
        v16 = v10;
        _os_log_error_impl(&dword_2401B8000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "e5rt::AssertSuccess failed with error code %d.", __str, 8u);
      }
    }
  }
}

void sub_2401E5C04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_2401E7074(va);
  _Unwind_Resume(a1);
}

uint64_t **sub_2401E5C28(void *a1, uint64_t a2)
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

void sub_2401E6154(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2401E7140(va);
  _Unwind_Resume(a1);
}

id sub_2401E616C()
{
  v59 = *MEMORY[0x277D85DE8];
  v52 = 0;
  v48 = &v52;
  v49 = 0;
  v0 = e5rt_io_port_retain_tensor_desc();
  if (v0)
  {
    snprintf(__str, 0x40uLL, "e5rt::EnsureSuccess failed with error code %d.", v0);
    shape = _os_crash();
    __break(1u);
    goto LABEL_32;
  }

  v1 = *v48;
  *v48 = v49;
  if (v1)
  {
    v54 = v1;
    v2 = e5rt_tensor_desc_release();
    if (v2)
    {
      goto LABEL_39;
    }
  }

  while (1)
  {
    v48 = 0;
    v54 = 0;
    shape = e5rt_tensor_desc_get_shape();
    if (shape)
    {
LABEL_32:
      snprintf(__str, 0x40uLL, "e5rt::EnsureSuccess failed with error code %d.", shape);
      v10 = _os_crash();
      __break(1u);
LABEL_33:
      snprintf(__str, 0x40uLL, "e5rt::EnsureSuccess failed with error code %d.", v10);
      component_size = _os_crash();
      __break(1u);
LABEL_34:
      snprintf(__str, 0x40uLL, "e5rt::EnsureSuccess failed with error code %d.", component_size);
      element_size = _os_crash();
      __break(1u);
LABEL_35:
      snprintf(__str, 0x40uLL, "e5rt::EnsureSuccess failed with error code %d.", element_size);
      num_components = _os_crash();
      __break(1u);
LABEL_36:
      snprintf(__str, 0x40uLL, "e5rt::EnsureSuccess failed with error code %d.", num_components);
      component_dtype = _os_crash();
      __break(1u);
LABEL_37:
      snprintf(__str, 0x40uLL, "e5rt::EnsureSuccess failed with error code %d.", component_dtype);
      strides = _os_crash();
      __break(1u);
      goto LABEL_38;
    }

    v4 = v48;
    if (v48)
    {
      v5 = 0;
      v6 = v54 - 8;
      v7 = vdupq_n_s64(1uLL);
      v8 = v7;
      do
      {
        v9 = *(v6 + 8 * v4);
        v46 = v7;
        v47 = v8;
        v46.i64[v5 & 3] = v9;
        v7 = v46;
        v8 = v47;
        ++v5;
        v4 = (v4 - 1);
      }

      while (v4);
    }

    else
    {
      v7 = vdupq_n_s64(1uLL);
      v8 = v7;
    }

    v42 = v8;
    v43 = v7;
    v51 = 0;
    v48 = &v51;
    v49 = 0;
    v10 = e5rt_tensor_desc_retain_dtype();
    if (v10)
    {
      goto LABEL_33;
    }

    v11 = *v48;
    *v48 = v49;
    if (v11)
    {
      v54 = v11;
      v12 = e5rt_tensor_desc_dtype_release();
      if (v12)
      {
        v38 = v12;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          *__str = 67109120;
          v58 = v38;
          _os_log_error_impl(&dword_2401B8000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "e5rt::AssertSuccess failed with error code %d.", __str, 8u);
        }
      }
    }

    v49 = 0;
    v50 = 0;
    v48 = 0;
    component_size = e5rt_tensor_desc_dtype_get_component_size();
    if (component_size)
    {
      goto LABEL_34;
    }

    element_size = e5rt_tensor_desc_dtype_get_element_size();
    if (element_size)
    {
      goto LABEL_35;
    }

    num_components = e5rt_tensor_desc_dtype_get_num_components();
    if (num_components)
    {
      goto LABEL_36;
    }

    component_dtype = e5rt_tensor_desc_dtype_get_component_dtype();
    if (component_dtype)
    {
      goto LABEL_37;
    }

    v53 = 0;
    v54 = 0;
    strides = e5rt_tensor_desc_get_strides();
    if (!strides)
    {
      break;
    }

LABEL_38:
    snprintf(__str, 0x40uLL, "e5rt::EnsureSuccess failed with error code %d.", strides);
    v2 = _os_crash();
    __break(1u);
LABEL_39:
    v37 = v2;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *__str = 67109120;
      v58 = v37;
      _os_log_error_impl(&dword_2401B8000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "e5rt::AssertSuccess failed with error code %d.", __str, 8u);
    }
  }

  v19 = v53;
  v18 = v54;
  v20 = vld1q_dup_f64(v19);
  if (v54)
  {
    v21 = 0;
    v22 = v53 - 1;
    v23 = v20;
    do
    {
      v24 = v22[v18];
      v44 = v20;
      v45 = v23;
      v44.f64[v21 & 3] = v24;
      v20 = v44;
      v23 = v45;
      ++v21;
      --v18;
    }

    while (v18);
  }

  v41 = v20.f64[1];
  v55[0] = *MEMORY[0x277CD2928];
  v25 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v43.i64[0]];
  v56[0] = v25;
  v55[1] = *MEMORY[0x277CD28D0];
  v26 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v43.i64[1] * v42.i64[0] * v42.i64[1]];
  v56[1] = v26;
  v55[2] = *MEMORY[0x277CD28B0];
  v27 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v49];
  v56[2] = v27;
  v55[3] = *MEMORY[0x277CD28B8];
  v28 = [MEMORY[0x277CCABB0] numberWithLong:*&v41];
  v56[3] = v28;
  v55[4] = *MEMORY[0x277CD28D8];
  if (v49 == 2)
  {
    v29 = 1278226536;
  }

  else
  {
    v29 = 1278226534;
  }

  v30 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v29];
  v56[4] = v30;
  v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v56 forKeys:v55 count:5];

  v32 = v51;
  v51 = 0;
  if (v32)
  {
    v48 = v32;
    v33 = e5rt_tensor_desc_dtype_release();
    if (v33)
    {
      v39 = v33;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *__str = 67109120;
        v58 = v39;
        _os_log_error_impl(&dword_2401B8000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "e5rt::AssertSuccess failed with error code %d.", __str, 8u);
      }
    }
  }

  v34 = v52;
  v52 = 0;
  if (v34)
  {
    v48 = v34;
    v35 = e5rt_tensor_desc_release();
    if (v35)
    {
      v40 = v35;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *__str = 67109120;
        v58 = v40;
        _os_log_error_impl(&dword_2401B8000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "e5rt::AssertSuccess failed with error code %d.", __str, 8u);
      }
    }
  }

  return v31;
}

void sub_2401E6770(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  sub_2401E6FA8(&a29);
  sub_2401E7074(&a30);
  _Unwind_Resume(a1);
}

uint64_t **sub_2401E67F8(void *a1, uint64_t a2)
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

void sub_2401E6D20(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2401D7D40(va);
  _Unwind_Resume(a1);
}

uint64_t **sub_2401E6D38(uint64_t **result)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = **result;
  **result = result[1];
  if (v1)
  {
    v2 = result;
    v3 = e5rt_execution_stream_release();
    if (v3)
    {
      v4 = v3;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v6 = v4;
        _os_log_error_impl(&dword_2401B8000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "e5rt::AssertSuccess failed with error code %d.", buf, 8u);
      }
    }

    return v2;
  }

  return result;
}

uint64_t **sub_2401E6E08(uint64_t **result)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = **result;
  **result = result[1];
  if (v1)
  {
    v2 = result;
    v3 = e5rt_tensor_desc_release();
    if (v3)
    {
      v4 = v3;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v6 = v4;
        _os_log_error_impl(&dword_2401B8000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "e5rt::AssertSuccess failed with error code %d.", buf, 8u);
      }
    }

    return v2;
  }

  return result;
}

uint64_t **sub_2401E6ED8(uint64_t **result)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = **result;
  **result = result[1];
  if (v1)
  {
    v2 = result;
    v3 = e5rt_tensor_desc_dtype_release();
    if (v3)
    {
      v4 = v3;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v6 = v4;
        _os_log_error_impl(&dword_2401B8000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "e5rt::AssertSuccess failed with error code %d.", buf, 8u);
      }
    }

    return v2;
  }

  return result;
}

void *sub_2401E6FA8(void *result)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = e5rt_tensor_desc_dtype_release();
    if (v3)
    {
      v4 = v3;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v6 = v4;
        _os_log_error_impl(&dword_2401B8000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "e5rt::AssertSuccess failed with error code %d.", buf, 8u);
      }
    }

    return v2;
  }

  return result;
}

void *sub_2401E7074(void *result)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = e5rt_tensor_desc_release();
    if (v3)
    {
      v4 = v3;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v6 = v4;
        _os_log_error_impl(&dword_2401B8000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "e5rt::AssertSuccess failed with error code %d.", buf, 8u);
      }
    }

    return v2;
  }

  return result;
}

void *sub_2401E7140(void *a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    if (*(v1 + 16) == 1 && *(v2 + 39) < 0)
    {
      v4 = v2;
      operator delete(*(v2 + 16));
      v2 = v4;
    }

    operator delete(v2);
    return v3;
  }

  return v1;
}

void sub_2401E71A8(uint64_t a1, size_t __n)
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
LABEL_6:
    if (!(prime >> 61))
    {
      operator new();
    }

    sub_2401BDE28();
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
      if (prime)
      {
        goto LABEL_6;
      }

      v8 = *a1;
      *a1 = 0;
      if (v8)
      {
        operator delete(v8);
      }

      *(a1 + 8) = 0;
    }
  }
}

uint64_t *sub_2401E73D0(uint64_t *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      v3 = *(v2 + 40);
      *(v2 + 40) = 0;
      if (v3)
      {
        v4 = e5rt_io_port_release();
        if (v4)
        {
          v6 = v4;
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            *buf = 67109120;
            v8 = v6;
            _os_log_error_impl(&dword_2401B8000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "e5rt::AssertSuccess failed with error code %d.", buf, 8u);
          }
        }
      }

      if (*(v2 + 39) < 0)
      {
        operator delete(*(v2 + 16));
      }
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t sub_2401E74D0(uint64_t result, const char **a2, uint64_t a3, char a4)
{
  v6 = result;
LABEL_2:
  v136 = a2 - 1;
  v138 = a2;
  v7 = v6;
  while (1)
  {
    v6 = v7;
    v8 = a2 - v7;
    v9 = v8 - 2;
    if (v8 <= 2)
    {
      if (v8 < 2)
      {
        return result;
      }

      if (v8 == 2)
      {
        v80 = *v136;
        v81 = *v6;
        result = strcmp(*v136, *v6);
        if ((result & 0x80000000) != 0)
        {
          *v6 = v80;
          *v136 = v81;
        }

        return result;
      }

      goto LABEL_10;
    }

    if (v8 == 3)
    {
      break;
    }

    if (v8 == 4)
    {

      return sub_2401E7F40(v6, v6 + 1, v6 + 2, v136);
    }

    if (v8 == 5)
    {
      sub_2401E7F40(v6, v6 + 1, v6 + 2, v6 + 3);
      v75 = *v136;
      v76 = v6[3];
      result = strcmp(*v136, v76);
      if ((result & 0x80000000) == 0)
      {
        return result;
      }

      v6[3] = v75;
      *v136 = v76;
      v78 = v6[2];
      v77 = v6[3];
      result = strcmp(v77, v78);
      if ((result & 0x80000000) == 0)
      {
        return result;
      }

      v6[2] = v77;
      v6[3] = v78;
      v79 = v6[1];
      result = strcmp(v77, v79);
      if ((result & 0x80000000) == 0)
      {
        return result;
      }

      v6[1] = v77;
      v6[2] = v79;
      goto LABEL_164;
    }

LABEL_10:
    if (v8 <= 23)
    {
      v86 = v6 + 1;
      v88 = v6 == a2 || v86 == a2;
      if (a4)
      {
        if (!v88)
        {
          v89 = 8;
          v90 = v6;
          do
          {
            v93 = *v90;
            v92 = v90[1];
            v90 = v86;
            result = strcmp(v92, v93);
            if ((result & 0x80000000) != 0)
            {
              v94 = v89;
              do
              {
                *(v6 + v94) = v93;
                v95 = v94 - 8;
                if (v94 == 8)
                {
                  v91 = v6;
                  goto LABEL_123;
                }

                v93 = *(v6 + v94 - 16);
                result = strcmp(v92, v93);
                v94 = v95;
              }

              while ((result & 0x80000000) != 0);
              v91 = (v6 + v95);
LABEL_123:
              a2 = v138;
              *v91 = v92;
            }

            v86 = v90 + 1;
            v89 += 8;
          }

          while (v90 + 1 != a2);
        }
      }

      else if (!v88)
      {
        do
        {
          v131 = *v6;
          v130 = v6[1];
          v6 = v86;
          result = strcmp(v130, v131);
          if ((result & 0x80000000) != 0)
          {
            v132 = v6;
            do
            {
              *v132 = v131;
              v131 = *(v132 - 2);
              result = strcmp(v130, v131);
              --v132;
            }

            while ((result & 0x80000000) != 0);
            *v132 = v130;
            a2 = v138;
          }

          v86 = v6 + 1;
        }

        while (v6 + 1 != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v6 != a2)
      {
        v137 = v6;
        v96 = v9 >> 1;
        v97 = v9 >> 1;
        do
        {
          v98 = v97;
          if (v96 >= v97)
          {
            v99 = (2 * v97) | 1;
            v100 = &v137[v99];
            v101 = *v100;
            if (2 * v97 + 2 < v8)
            {
              v102 = v100[1];
              if (strcmp(*v100, v102) < 0)
              {
                v101 = v102;
                ++v100;
                v99 = 2 * v98 + 2;
              }
            }

            v103 = &v137[v98];
            v104 = *v103;
            result = strcmp(v101, *v103);
            a2 = v138;
            if ((result & 0x80000000) == 0)
            {
              do
              {
                v105 = v100;
                *v103 = v101;
                if (v96 < v99)
                {
                  break;
                }

                v106 = (2 * v99) | 1;
                v100 = &v137[v106];
                v107 = 2 * v99 + 2;
                v101 = *v100;
                if (v107 < v8)
                {
                  v108 = v100[1];
                  if (strcmp(*v100, v108) < 0)
                  {
                    v101 = v108;
                    ++v100;
                    v106 = v107;
                  }
                }

                result = strcmp(v101, v104);
                v103 = v105;
                v99 = v106;
              }

              while ((result & 0x80000000) == 0);
              *v105 = v104;
              a2 = v138;
            }
          }

          v97 = v98 - 1;
        }

        while (v98);
        do
        {
          v139 = a2;
          v111 = 0;
          v135 = *v137;
          v112 = v137;
          do
          {
            v118 = &v112[v111];
            v117 = v118 + 1;
            v116 = v118[1];
            v119 = (2 * v111) | 1;
            v120 = 2 * v111 + 2;
            if (v120 < v8)
            {
              v115 = v118[2];
              v114 = v118 + 2;
              v113 = v115;
              result = strcmp(v116, v115);
              if (result >= 0)
              {
                v111 = v119;
              }

              else
              {
                v116 = v113;
                v117 = v114;
                v111 = v120;
              }
            }

            else
            {
              v111 = (2 * v111) | 1;
            }

            *v112 = v116;
            v112 = v117;
          }

          while (v111 <= ((v8 - 2) >> 1));
          v121 = v139 - 1;
          if (v117 == v139 - 1)
          {
            v109 = v139 - 1;
            *v117 = v135;
          }

          else
          {
            *v117 = *v121;
            v109 = v139 - 1;
            *v121 = v135;
            v122 = (v117 - v137 + 8) >> 3;
            v110 = v122 < 2;
            v123 = v122 - 2;
            if (!v110)
            {
              v124 = v123 >> 1;
              v125 = &v137[v123 >> 1];
              v126 = *v125;
              v127 = *v117;
              result = strcmp(*v125, *v117);
              if ((result & 0x80000000) != 0)
              {
                do
                {
                  v128 = v125;
                  *v117 = v126;
                  if (!v124)
                  {
                    break;
                  }

                  v124 = (v124 - 1) >> 1;
                  v125 = &v137[v124];
                  v126 = *v125;
                  result = strcmp(*v125, v127);
                  v117 = v128;
                }

                while ((result & 0x80000000) != 0);
                *v128 = v127;
              }
            }
          }

          v110 = v8-- <= 2;
          a2 = v109;
        }

        while (!v110);
      }

      return result;
    }

    v10 = &v6[v8 >> 1];
    v11 = v10;
    v12 = *v136;
    if (v8 >= 0x81)
    {
      v13 = *v10;
      v14 = *v6;
      v15 = strcmp(*v10, *v6);
      v16 = strcmp(v12, v13);
      if (v15 < 0)
      {
        if (v16 < 0)
        {
          *v6 = v12;
          goto LABEL_27;
        }

        *v6 = v13;
        *v10 = v14;
        v25 = *v136;
        if (strcmp(*v136, v14) < 0)
        {
          *v10 = v25;
LABEL_27:
          *v136 = v14;
        }
      }

      else if (v16 < 0)
      {
        *v10 = v12;
        *v136 = v13;
        v21 = *v10;
        v22 = *v6;
        if (strcmp(*v10, *v6) < 0)
        {
          *v6 = v21;
          *v10 = v22;
        }
      }

      v26 = v10 - 1;
      v27 = *(v10 - 1);
      v28 = v6[1];
      v29 = strcmp(v27, v28);
      v30 = *(a2 - 2);
      v31 = strcmp(v30, v27);
      if (v29 < 0)
      {
        if (v31 < 0)
        {
          v6[1] = v30;
          goto LABEL_39;
        }

        v6[1] = v27;
        *v26 = v28;
        v35 = *(a2 - 2);
        if (strcmp(v35, v28) < 0)
        {
          *v26 = v35;
LABEL_39:
          *(a2 - 2) = v28;
        }
      }

      else if (v31 < 0)
      {
        *v26 = v30;
        *(a2 - 2) = v27;
        v32 = *v26;
        v33 = v6[1];
        if (strcmp(*v26, v33) < 0)
        {
          v6[1] = v32;
          *v26 = v33;
        }
      }

      v38 = v10[1];
      v37 = v10 + 1;
      v36 = v38;
      v39 = v6[2];
      v40 = strcmp(v38, v39);
      v41 = *(a2 - 3);
      v42 = strcmp(v41, v38);
      if (v40 < 0)
      {
        if (v42 < 0)
        {
          v6[2] = v41;
          goto LABEL_48;
        }

        v6[2] = v36;
        *v37 = v39;
        v45 = *(a2 - 3);
        if (strcmp(v45, v39) < 0)
        {
          *v37 = v45;
LABEL_48:
          *(a2 - 3) = v39;
        }
      }

      else if (v42 < 0)
      {
        *v37 = v41;
        *(a2 - 3) = v36;
        v43 = *v37;
        v44 = v6[2];
        if (strcmp(*v37, v44) < 0)
        {
          v6[2] = v43;
          *v37 = v44;
        }
      }

      v46 = *v11;
      v47 = *v26;
      v48 = strcmp(*v11, *v26);
      v49 = *v37;
      v50 = strcmp(*v37, v46);
      if (v48 < 0)
      {
        if ((v50 & 0x80000000) == 0)
        {
          *v26 = v46;
          *v11 = v47;
          v26 = v11;
          v46 = v49;
          if ((strcmp(v49, v47) & 0x80000000) == 0)
          {
            v46 = v47;
LABEL_56:
            v51 = *v6;
            *v6 = v46;
            *v11 = v51;
            goto LABEL_57;
          }
        }
      }

      else
      {
        if ((v50 & 0x80000000) == 0)
        {
          goto LABEL_56;
        }

        *v11 = v49;
        *v37 = v46;
        v37 = v11;
        v46 = v47;
        if ((strcmp(v49, v47) & 0x80000000) == 0)
        {
          v46 = v49;
          goto LABEL_56;
        }
      }

      *v26 = v49;
      *v37 = v47;
      goto LABEL_56;
    }

    v17 = *v6;
    v18 = *v10;
    v19 = strcmp(*v6, *v10);
    v20 = strcmp(v12, v17);
    if ((v19 & 0x80000000) == 0)
    {
      if (v20 < 0)
      {
        *v6 = v12;
        *v136 = v17;
        v23 = *v6;
        v24 = *v10;
        if (strcmp(*v6, *v10) < 0)
        {
          *v10 = v23;
          *v6 = v24;
        }
      }

      goto LABEL_57;
    }

    if (v20 < 0)
    {
      *v10 = v12;
    }

    else
    {
      *v10 = v17;
      *v6 = v18;
      v34 = *v136;
      if ((strcmp(*v136, v18) & 0x80000000) == 0)
      {
        goto LABEL_57;
      }

      *v6 = v34;
    }

    *v136 = v18;
LABEL_57:
    --a3;
    v52 = *v6;
    v53 = v6;
    if ((a4 & 1) != 0 || (v53 = v6, strcmp(*(v6 - 1), *v6) < 0))
    {
      do
      {
        v54 = v53;
        v56 = v53[1];
        ++v53;
        v55 = v56;
      }

      while (strcmp(v56, v52) < 0);
      if (v54 == v6)
      {
        a2 = v138;
        do
        {
          if (v53 >= a2)
          {
            break;
          }

          v58 = *--a2;
        }

        while ((strcmp(v58, v52) & 0x80000000) == 0);
      }

      else
      {
        do
        {
          v57 = *--a2;
        }

        while ((strcmp(v57, v52) & 0x80000000) == 0);
      }

      if (v53 < a2)
      {
        v59 = *a2;
        v60 = v53;
        v61 = a2;
        do
        {
          *v60 = v59;
          *v61 = v55;
          do
          {
            v54 = v60;
            v62 = v60[1];
            ++v60;
            v55 = v62;
          }

          while (strcmp(v62, v52) < 0);
          do
          {
            v63 = *--v61;
            v59 = v63;
          }

          while ((strcmp(v63, v52) & 0x80000000) == 0);
        }

        while (v60 < v61);
      }

      if (v54 != v6)
      {
        *v6 = *v54;
      }

      *v54 = v52;
      v64 = v53 >= a2;
      a2 = v138;
      if (!v64)
      {
        goto LABEL_78;
      }

      v65 = sub_2401E807C(v6, v54);
      v7 = v54 + 1;
      result = sub_2401E807C(v54 + 1, v138);
      if (result)
      {
        a2 = v54;
        if (!v65)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v65)
      {
LABEL_78:
        result = sub_2401E74D0(v6, v54, a3, a4 & 1);
        a4 = 0;
        v7 = v54 + 1;
      }
    }

    else
    {
      result = strcmp(v52, *v136);
      if ((result & 0x80000000) != 0)
      {
        v7 = v6;
        do
        {
          v66 = v7[1];
          ++v7;
          result = strcmp(v52, v66);
        }

        while ((result & 0x80000000) == 0);
      }

      else
      {
        v67 = v6 + 1;
        do
        {
          v7 = v67;
          if (v67 >= v138)
          {
            break;
          }

          ++v67;
          result = strcmp(v52, *v7);
        }

        while ((result & 0x80000000) == 0);
      }

      a2 = v138;
      v68 = v138;
      if (v7 < v138)
      {
        v68 = v138;
        do
        {
          v69 = *--v68;
          result = strcmp(v52, v69);
        }

        while ((result & 0x80000000) != 0);
      }

      if (v7 < v68)
      {
        v70 = *v7;
        v71 = *v68;
        do
        {
          *v7 = v71;
          *v68 = v70;
          do
          {
            v72 = v7[1];
            ++v7;
            v70 = v72;
          }

          while ((strcmp(v52, v72) & 0x80000000) == 0);
          do
          {
            v73 = *--v68;
            v71 = v73;
            result = strcmp(v52, v73);
          }

          while ((result & 0x80000000) != 0);
        }

        while (v7 < v68);
      }

      v74 = v7 - 1;
      if (v7 - 1 != v6)
      {
        *v6 = *v74;
      }

      a4 = 0;
      *v74 = v52;
    }
  }

  v82 = *v6;
  v83 = v6[1];
  v84 = strcmp(v83, *v6);
  v85 = *v136;
  result = strcmp(*v136, v83);
  if ((v84 & 0x80000000) == 0)
  {
    if ((result & 0x80000000) == 0)
    {
      return result;
    }

    v6[1] = v85;
    *v136 = v83;
    v77 = v6[1];
LABEL_164:
    v129 = *v6;
    result = strcmp(v77, *v6);
    if ((result & 0x80000000) != 0)
    {
      *v6 = v77;
      v6[1] = v129;
    }

    return result;
  }

  if ((result & 0x80000000) != 0)
  {
    *v6 = v85;
  }

  else
  {
    *v6 = v83;
    v6[1] = v82;
    v133 = *v136;
    result = strcmp(*v136, v82);
    if ((result & 0x80000000) == 0)
    {
      return result;
    }

    v6[1] = v133;
  }

  *v136 = v82;
  return result;
}

uint64_t sub_2401E7F40(const char **a1, const char **a2, const char **a3, const char **a4)
{
  v8 = *a2;
  v9 = *a1;
  v10 = strcmp(*a2, *a1);
  v11 = *a3;
  v12 = strcmp(*a3, v8);
  if (v10 < 0)
  {
    if (v12 < 0)
    {
      *a1 = v11;
LABEL_9:
      *a3 = v9;
      v8 = v9;
      goto LABEL_11;
    }

    *a1 = v8;
    *a2 = v9;
    v8 = *a3;
    if (strcmp(*a3, v9) < 0)
    {
      *a2 = v8;
      goto LABEL_9;
    }
  }

  else if (v12 < 0)
  {
    *a2 = v11;
    *a3 = v8;
    v13 = *a2;
    v14 = *a1;
    if (strcmp(*a2, *a1) < 0)
    {
      *a1 = v13;
      *a2 = v14;
      v8 = *a3;
    }
  }

  else
  {
    v8 = v11;
  }

LABEL_11:
  v15 = *a4;
  result = strcmp(*a4, v8);
  if ((result & 0x80000000) != 0)
  {
    *a3 = v15;
    *a4 = v8;
    v17 = *a3;
    v18 = *a2;
    result = strcmp(*a3, *a2);
    if ((result & 0x80000000) != 0)
    {
      *a2 = v17;
      *a3 = v18;
      v19 = *a2;
      v20 = *a1;
      result = strcmp(*a2, *a1);
      if ((result & 0x80000000) != 0)
      {
        *a1 = v19;
        *a2 = v20;
      }
    }
  }

  return result;
}

BOOL sub_2401E807C(const char **a1, const char **a2)
{
  v4 = a2 - a1;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        v12 = *a1;
        v13 = a1[1];
        v14 = strcmp(v13, *a1);
        v15 = *(a2 - 1);
        v16 = strcmp(v15, v13);
        if (v14 < 0)
        {
          if (v16 < 0)
          {
            *a1 = v15;
          }

          else
          {
            *a1 = v13;
            a1[1] = v12;
            v38 = *(a2 - 1);
            if ((strcmp(v38, v12) & 0x80000000) == 0)
            {
              return 1;
            }

            a1[1] = v38;
          }

          *(a2 - 1) = v12;
          return 1;
        }

        if ((v16 & 0x80000000) == 0)
        {
          return 1;
        }

        a1[1] = v15;
        *(a2 - 1) = v13;
        v9 = a1[1];
        break;
      case 4:
        sub_2401E7F40(a1, a1 + 1, a1 + 2, a2 - 1);
        return 1;
      case 5:
        sub_2401E7F40(a1, a1 + 1, a1 + 2, a1 + 3);
        v7 = *(a2 - 1);
        v8 = a1[3];
        if ((strcmp(v7, v8) & 0x80000000) == 0)
        {
          return 1;
        }

        a1[3] = v7;
        *(a2 - 1) = v8;
        v10 = a1[2];
        v9 = a1[3];
        if ((strcmp(v9, v10) & 0x80000000) == 0)
        {
          return 1;
        }

        a1[2] = v9;
        a1[3] = v10;
        v11 = a1[1];
        if ((strcmp(v9, v11) & 0x80000000) == 0)
        {
          return 1;
        }

        a1[1] = v9;
        a1[2] = v11;
        break;
      default:
        goto LABEL_16;
    }

    v27 = *a1;
    if (strcmp(v9, *a1) < 0)
    {
      *a1 = v9;
      a1[1] = v27;
    }

    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    v5 = *(a2 - 1);
    v6 = *a1;
    if (strcmp(v5, *a1) < 0)
    {
      *a1 = v5;
      *(a2 - 1) = v6;
    }

    return 1;
  }

LABEL_16:
  v18 = a1 + 1;
  v17 = a1[1];
  v19 = *a1;
  v20 = strcmp(v17, *a1);
  v22 = a1 + 2;
  v21 = a1[2];
  v23 = strcmp(v21, v17);
  if (v20 < 0)
  {
    v24 = a1;
    v25 = a1 + 2;
    if ((v23 & 0x80000000) == 0)
    {
      *a1 = v17;
      a1[1] = v19;
      v26 = strcmp(v21, v19);
      v24 = a1 + 1;
      v25 = a1 + 2;
      if ((v26 & 0x80000000) == 0)
      {
        goto LABEL_28;
      }
    }

LABEL_27:
    *v24 = v21;
    *v25 = v19;
    goto LABEL_28;
  }

  if (v23 < 0)
  {
    *v18 = v21;
    *v22 = v17;
    v28 = strcmp(v21, v19);
    v24 = a1;
    v25 = a1 + 1;
    if (v28 < 0)
    {
      goto LABEL_27;
    }
  }

LABEL_28:
  v29 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v30 = 0;
  for (i = 24; ; i += 8)
  {
    v33 = *v29;
    v34 = *v22;
    if (strcmp(*v29, *v22) < 0)
    {
      v35 = i;
      do
      {
        *(a1 + v35) = v34;
        v36 = v35 - 8;
        if (v35 == 8)
        {
          v32 = a1;
          goto LABEL_31;
        }

        v34 = *(a1 + v35 - 16);
        v37 = strcmp(v33, v34);
        v35 = v36;
      }

      while (v37 < 0);
      v32 = (a1 + v36);
LABEL_31:
      *v32 = v33;
      if (++v30 == 8)
      {
        break;
      }
    }

    v22 = v29++;
    if (v29 == a2)
    {
      return 1;
    }
  }

  return v29 + 1 == a2;
}

uint64_t **sub_2401E8340(uint64_t **result)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = **result;
  **result = result[1];
  if (v1)
  {
    v2 = result;
    v3 = e5rt_execution_stream_operation_release();
    if (v3)
    {
      v4 = v3;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v6 = v4;
        _os_log_error_impl(&dword_2401B8000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "e5rt::AssertSuccess failed with error code %d.", buf, 8u);
      }
    }

    return v2;
  }

  return result;
}

uint64_t **sub_2401E8410(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 23);
  if (v5 >= 0)
  {
    v6 = a3;
  }

  else
  {
    v6 = *a3;
  }

  if (v5 >= 0)
  {
    v7 = *(a3 + 23);
  }

  else
  {
    v7 = *(a3 + 8);
  }

  v8 = sub_2401D78FC(v6, v7);
  if (!a2)
  {
    return 0;
  }

  v9 = v8;
  v10 = vcnt_s8(a2);
  v10.i16[0] = vaddlv_u8(v10);
  if (v10.u32[0] > 1uLL)
  {
    v11 = v8;
    if (v8 >= a2)
    {
      v11 = v8 % a2;
    }
  }

  else
  {
    v11 = (a2 - 1) & v8;
  }

  v12 = *(a1 + 8 * v11);
  if (!v12)
  {
    return 0;
  }

  v13 = *v12;
  if (*v12)
  {
    if (v10.u32[0] < 2uLL)
    {
      v14 = a2 - 1;
      while (1)
      {
        v15 = v13[1];
        if (v15 == v9)
        {
          v16 = *(v13 + 39);
          v17 = v16;
          if (v16 < 0)
          {
            v16 = v13[3];
          }

          if (v16 == v7)
          {
            v18 = v17 >= 0 ? (v13 + 2) : v13[2];
            if (!memcmp(v18, v6, v7))
            {
              return v13;
            }
          }
        }

        else if ((v15 & v14) != v11)
        {
          return 0;
        }

        v13 = *v13;
        if (!v13)
        {
          return v13;
        }
      }
    }

    do
    {
      v19 = v13[1];
      if (v19 == v9)
      {
        v20 = *(v13 + 39);
        v21 = v20;
        if (v20 < 0)
        {
          v20 = v13[3];
        }

        if (v20 == v7)
        {
          v22 = v21 >= 0 ? (v13 + 2) : v13[2];
          if (!memcmp(v22, v6, v7))
          {
            return v13;
          }
        }
      }

      else
      {
        if (v19 >= a2)
        {
          v19 %= a2;
        }

        if (v19 != v11)
        {
          return 0;
        }
      }

      v13 = *v13;
    }

    while (v13);
  }

  return v13;
}

uint64_t *sub_2401E85A0(void *a1, uint64_t a2)
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
            return (v12 + 5);
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

  return (v12 + 5);
}

void sub_2401E88C4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2401E73D0(va);
  _Unwind_Resume(a1);
}

void sub_2401E88DC()
{
  v6 = *MEMORY[0x277D85DE8];
  v0 = e5rt_buffer_object_create_from_iosurface();
  if (v0)
  {
    snprintf(__str, 0x40uLL, "e5rt::EnsureSuccess failed with error code %d.", v0);
    v1 = _os_crash();
    __break(1u);
    goto LABEL_5;
  }

  while (1)
  {
    v1 = e5rt_io_port_bind_buffer_object();
    if (!v1)
    {
      break;
    }

LABEL_5:
    snprintf(__str, 0x40uLL, "e5rt::EnsureSuccess failed with error code %d.", v1);
    v2 = _os_crash();
    __break(1u);
    v3 = v2;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *__str = 67109120;
      v5 = v3;
      _os_log_error_impl(&dword_2401B8000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "e5rt::AssertSuccess failed with error code %d.", __str, 8u);
    }
  }
}

void sub_2401E8A90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_2401E8B84(va);
  _Unwind_Resume(a1);
}

uint64_t **sub_2401E8AB4(uint64_t **result)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = **result;
  **result = result[1];
  if (v1)
  {
    v2 = result;
    v3 = e5rt_buffer_object_release();
    if (v3)
    {
      v4 = v3;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v6 = v4;
        _os_log_error_impl(&dword_2401B8000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "e5rt::AssertSuccess failed with error code %d.", buf, 8u);
      }
    }

    return v2;
  }

  return result;
}

void *sub_2401E8B84(void *result)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = e5rt_buffer_object_release();
    if (v3)
    {
      v4 = v3;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v6 = v4;
        _os_log_error_impl(&dword_2401B8000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "e5rt::AssertSuccess failed with error code %d.", buf, 8u);
      }
    }

    return v2;
  }

  return result;
}

uint64_t sub_2401E8C50(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  if ((*(a1 + 256) & 1) == 0)
  {
    if ((atomic_load_explicit(&qword_280C03940, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03940))
    {
      qword_280C03850 = os_log_create("com.apple.AppleCVA", "ViewpointCorrection");
      __cxa_guard_release(&qword_280C03940);
    }

    v3 = qword_280C03850;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2401B8000, v3, OS_LOG_TYPE_ERROR, "Precondition violated: m_surfacesSet", buf, 2u);
    }

    goto LABEL_17;
  }

  if (!*(a1 + 240))
  {
    if ((atomic_load_explicit(&qword_280C03940, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03940))
    {
      qword_280C03850 = os_log_create("com.apple.AppleCVA", "ViewpointCorrection");
      __cxa_guard_release(&qword_280C03940);
    }

    v3 = qword_280C03850;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2401B8000, v3, OS_LOG_TYPE_ERROR, "Precondition violated: m_stream", buf, 2u);
    }

    goto LABEL_17;
  }

  if (!*(a1 + 248))
  {
    if ((atomic_load_explicit(&qword_280C03940, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03940))
    {
      qword_280C03850 = os_log_create("com.apple.AppleCVA", "ViewpointCorrection");
      __cxa_guard_release(&qword_280C03940);
    }

    v3 = qword_280C03850;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2401B8000, v3, OS_LOG_TYPE_ERROR, "Precondition violated: m_operation", buf, 2u);
    }

LABEL_17:

    return 1;
  }

  *buf = 0;
  v23 = 0;
  v24 = 0;
  v20[0] = 0;
  v20[1] = 0;
  v21 = 0;
  __p[0] = 0;
  __p[1] = 0;
  v19 = 0;
  v1 = e5rt_execution_stream_encode_operation();
  if (v1)
  {
    last_error_message = e5rt_get_last_error_message();
  }

  else
  {
    last_error_message = "";
  }

  sub_2401C6870(buf, last_error_message);
  if (v1)
  {
    v5 = 0;
  }

  else
  {
    v6 = e5rt_execution_stream_execute_sync();
    v5 = v6 == 0;
    if (v6)
    {
      v7 = e5rt_get_last_error_message();
    }

    else
    {
      v7 = "";
    }

    sub_2401C6870(v20, v7);
  }

  v8 = e5rt_execution_stream_reset();
  if (v8)
  {
    v9 = e5rt_get_last_error_message();
  }

  else
  {
    v9 = "";
  }

  sub_2401C6870(__p, v9);
  if (v1)
  {
    if ((atomic_load_explicit(&qword_280C03940, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03940))
    {
      qword_280C03850 = os_log_create("com.apple.AppleCVA", "ViewpointCorrection");
      __cxa_guard_release(&qword_280C03940);
    }

    v10 = qword_280C03850;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = buf;
      if (v24 < 0)
      {
        v11 = *buf;
      }

      *v25 = 136315138;
      v26 = v11;
      v12 = "Failed to encode the operation to the stream. %s";
LABEL_47:
      _os_log_error_impl(&dword_2401B8000, v10, OS_LOG_TYPE_ERROR, v12, v25, 0xCu);
      goto LABEL_48;
    }

    goto LABEL_48;
  }

  if (!v5)
  {
    if ((atomic_load_explicit(&qword_280C03940, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03940))
    {
      qword_280C03850 = os_log_create("com.apple.AppleCVA", "ViewpointCorrection");
      __cxa_guard_release(&qword_280C03940);
    }

    v10 = qword_280C03850;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v14 = v20;
      if (v21 < 0)
      {
        v14 = v20[0];
      }

      *v25 = 136315138;
      v26 = v14;
      v12 = "Failed to execute the stream. %s";
      goto LABEL_47;
    }

    goto LABEL_48;
  }

  if (v8)
  {
    if ((atomic_load_explicit(&qword_280C03940, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03940))
    {
      qword_280C03850 = os_log_create("com.apple.AppleCVA", "ViewpointCorrection");
      __cxa_guard_release(&qword_280C03940);
    }

    v10 = qword_280C03850;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v13 = __p;
      if (v19 < 0)
      {
        v13 = __p[0];
      }

      *v25 = 136315138;
      v26 = v13;
      v12 = "Failed to reset the stream. %s";
      goto LABEL_47;
    }

LABEL_48:

    result = 8;
    if ((SHIBYTE(v19) & 0x80000000) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_49;
  }

  result = 0;
  if (SHIBYTE(v19) < 0)
  {
LABEL_49:
    v15 = result;
    operator delete(__p[0]);
    result = v15;
  }

LABEL_50:
  if (SHIBYTE(v21) < 0)
  {
    v16 = result;
    operator delete(v20[0]);
    result = v16;
    if (SHIBYTE(v24) < 0)
    {
LABEL_54:
      v17 = result;
      operator delete(*buf);
      return v17;
    }
  }

  else if (SHIBYTE(v24) < 0)
  {
    goto LABEL_54;
  }

  return result;
}

void sub_2401E91B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((a20 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a26 & 0x80000000) == 0)
      {
LABEL_8:
        _Unwind_Resume(exception_object);
      }

LABEL_7:
      operator delete(a21);
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a20 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a15);
  if ((a26 & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void *sub_2401E9218(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = *(v1 + 128);
    if (v3)
    {
      *(v1 + 136) = v3;
      operator delete(v3);
    }

    cva::DictionaryHandler::~DictionaryHandler((v1 + 16));

    MEMORY[0x245CBCA30](v1, 0x10A0C40AB77BD57);
    return v2;
  }

  return result;
}

uint64_t sub_2401E9280(CVBufferRef *a1)
{
  v1 = CVBufferCopyAttachment(*a1, @"MetadataDictionary", 0);
  if (v1)
  {
    v2 = v1;
    v3 = CFGetTypeID(v1);
    if (v3 == CFDictionaryGetTypeID())
    {
      Value = CFDictionaryGetValue(v2, @"DetectedFacesArray");
      v5 = Value;
      if (!Value)
      {
LABEL_17:
        CFRelease(v2);
        return v5;
      }

      v6 = CFGetTypeID(Value);
      if (v6 == CFArrayGetTypeID())
      {
        Count = CFArrayGetCount(v5);
        if (Count)
        {
          if (!(Count >> 59))
          {
            operator new();
          }

          sub_2401BDE28();
        }

        v5 = 0;
        goto LABEL_17;
      }

      if ((atomic_load_explicit(&qword_280C03940, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03940))
      {
        qword_280C03850 = os_log_create("com.apple.AppleCVA", "ViewpointCorrection");
        __cxa_guard_release(&qword_280C03940);
      }

      v8 = qword_280C03850;
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
LABEL_16:

        v5 = 1;
        goto LABEL_17;
      }

      LOWORD(rect.origin.x) = 0;
      v9 = "Precondition violated: CFGetTypeID(faceArray) == CFArrayGetTypeID()";
    }

    else
    {
      if ((atomic_load_explicit(&qword_280C03940, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03940))
      {
        qword_280C03850 = os_log_create("com.apple.AppleCVA", "ViewpointCorrection");
        __cxa_guard_release(&qword_280C03940);
      }

      v8 = qword_280C03850;
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_16;
      }

      LOWORD(rect.origin.x) = 0;
      v9 = "Precondition violated: CFGetTypeID(pixelBufferMetadata.get()) == CFDictionaryGetTypeID()";
    }

    _os_log_error_impl(&dword_2401B8000, v8, OS_LOG_TYPE_ERROR, v9, &rect, 2u);
    goto LABEL_16;
  }

  return 0;
}

uint64_t sub_2401E97C4(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    v2 = *(v1 + 128);
    if (v2)
    {
      *(v1 + 136) = v2;
      operator delete(v2);
    }

    cva::DictionaryHandler::~DictionaryHandler((v1 + 16));

    JUMPOUT(0x245CBCA30);
  }

  return result;
}

void sub_2401E9838(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CBCA30);
}

uint64_t sub_2401E9874(uint64_t a1)
{
  result = cva::DictionaryHandler::hasKey((a1 + 16), @"DrawDebugFlow");
  if (result)
  {
    cva::DictionaryHandler::item(&v3, (a1 + 16), @"DrawDebugFlow");
    cva::ItemHandler::getValue<BOOL>();
  }

  return result;
}

void *sub_2401E98F0(void *result)
{
  v1 = *result;
  if (*result)
  {
    v2 = result;

    v3 = *v1;
    if (*v1)
    {
      if (!atomic_fetch_add(v3 + 1, 0xFFFFFFFFFFFFFFFFLL))
      {
        (*(*v3 + 16))(v3);
      }
    }

    MEMORY[0x245CBCA30](v1, 0xA0C40A8488062);
    return v2;
  }

  return result;
}

uint64_t sub_2401E9978(uint64_t a1)
{
  if (*(a1 + 16) == 1)
  {
    sub_24026D6A0(a1, 0);
  }

  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = *(a1 + 48);
    v4 = *(a1 + 40);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        *(v3 - 1) = 0;
        if (v5)
        {

          MEMORY[0x245CBCA30](v5, 0x80C40B8603338);
        }

        v7 = *(v3 - 2);
        v3 -= 2;
        v6 = v7;
        *v3 = 0;
        if (v7)
        {

          MEMORY[0x245CBCA30](v6, 0x80C40B8603338);
        }
      }

      while (v3 != v2);
      v4 = *(a1 + 40);
    }

    *(a1 + 48) = v2;
    operator delete(v4);
  }

  v8 = *(a1 + 32);
  *(a1 + 32) = 0;
  if (v8)
  {
    v9 = sub_2401F405C(v8);
    MEMORY[0x245CBCA30](v9, 0xA0C40069AE433);
  }

  if (*(a1 + 16) == 1)
  {
    sub_24026D7EC(a1);
  }

  return a1;
}

uint64_t *sub_2401E9A88(uint64_t *a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    v4 = sub_2401E9978(v2);
    MEMORY[0x245CBCA30](v4, 0x10A2C40987185A4);
    return v3;
  }

  return v1;
}

uint64_t sub_2401E9ADC(void *a1, id **a2)
{
  if ([a1 newBufferWithLength:128 options:0])
  {
    operator new();
  }

  if ((atomic_load_explicit(&qword_280C03940, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03940))
  {
    qword_280C03850 = os_log_create("com.apple.AppleCVA", "ViewpointCorrection");
    __cxa_guard_release(&qword_280C03940);
  }

  v3 = qword_280C03850;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_2401B8000, v3, OS_LOG_TYPE_ERROR, "Assertion failed: buffer", buf, 2u);
  }

  v4 = 0;
  v5 = 2;

  v6 = *a2;
  *a2 = 0;
  if (v6)
  {

    MEMORY[0x245CBCA30](v6, 0x80C40B8603338);
    v4 = *a2;
  }

  if (v4)
  {
    v5 = 0;
    *([*v4 contents] + 116) = 1036831949;
  }

  else
  {
    if ((atomic_load_explicit(&qword_280C03940, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03940))
    {
      qword_280C03850 = os_log_create("com.apple.AppleCVA", "ViewpointCorrection");
      __cxa_guard_release(&qword_280C03940);
    }

    v7 = qword_280C03850;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      _os_log_error_impl(&dword_2401B8000, v7, OS_LOG_TYPE_ERROR, "Failed to create parameter buffer handle", v9, 2u);
    }
  }

  return v5;
}

void sub_2401E9D04(_Unwind_Exception *a1)
{
  MEMORY[0x245CBCA30](v3, 0x80C40B8603338);

  _Unwind_Resume(a1);
}

void sub_2401E9D38(uint64_t a1, uint64_t a2, void *a3, void *a4, id **a5)
{
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (!v8 || !v9)
  {
    if ((atomic_load_explicit(&qword_280C03940, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03940))
    {
      qword_280C03850 = os_log_create("com.apple.AppleCVA", "ViewpointCorrection");
      __cxa_guard_release(&qword_280C03940);
    }

    v13 = qword_280C03850;
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    *buf = 0;
    v14 = "Precondition violated: textureY && textureCbCr";
    goto LABEL_20;
  }

  v11 = a5[1];
  v12 = (v11 - *a5) >> 7;
  if (v12 > ((*(a2 + 48) - *(a2 + 40)) >> 4))
  {
    if ((atomic_load_explicit(&qword_280C03940, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03940))
    {
      qword_280C03850 = os_log_create("com.apple.AppleCVA", "ViewpointCorrection");
      __cxa_guard_release(&qword_280C03940);
    }

    v13 = qword_280C03850;
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    *buf = 0;
    v14 = "Precondition violated: warpfields.size() <= supportedFlows()";
LABEL_20:
    _os_log_error_impl(&dword_2401B8000, v13, OS_LOG_TYPE_ERROR, v14, buf, 2u);
LABEL_9:

    *a1 = 0;
    *(a1 + 24) = 0;
    *(a1 + 32) = 1;
    goto LABEL_10;
  }

  if ((*(a2 + 16) & 1) == 0)
  {
    operator new();
  }

  if (v12)
  {
    if (!(v12 >> 61))
    {
      operator new();
    }

    sub_2401BDE28();
  }

  if (v11 != *a5)
  {
    v15 = [*(a2 + 24) commandBuffer];
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"ViewpointCorrectionProcessor::applyFlow_%d", 0, v10];
    [v15 setLabel:v16];

    v15;
    v8;
    v10;
    v17 = *a5;
    (*a5)[6];
    v17[7];
    v17[14];
    v17[15];
    operator new();
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 32) = 0;
LABEL_10:
}

void sub_2401EA964(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42, uint64_t a43, uint64_t a44, char a45, uint64_t a46, char a47)
{
  v50 = v48;
  operator delete(v47);

  _Unwind_Resume(a1);
}

uint64_t sub_2401EAB14(uint64_t a1)
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

void **sub_2401EABAC(void **a1)
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
        v6 = *(v3 - 1);
        v3 -= 8;
        v5 = v6;
        if (v6)
        {

          v7 = *v5;
          if (*v5 && !atomic_fetch_add(v7 + 1, 0xFFFFFFFFFFFFFFFFLL))
          {
            (*(*v7 + 16))(v7);
          }

          MEMORY[0x245CBCA30](v5, 0xA0C40A8488062);
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

void sub_2401EACA0(uint64_t a1)
{
  *a1 = MEMORY[0x277D82880] + 16;
  v2 = (a1 + 16);
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  std::exception_ptr::~exception_ptr(v2);
  std::__shared_count::~__shared_count(a1);

  JUMPOUT(0x245CBCA30);
}

void sub_2401EAD20(uint64_t a1)
{
  *a1 = MEMORY[0x277D82880] + 16;
  v2 = (a1 + 16);
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  std::exception_ptr::~exception_ptr(v2);

  std::__shared_count::~__shared_count(a1);
}

uint64_t sub_2401EAD8C(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 184);
  v3 = objc_autoreleasePoolPush();
  kdebug_trace();
  v4 = (*(v2 + 40) + 16 * *(a1 + 176));
  v5 = *(a1 + 40);
  *([**v4 contents] + 120) = v5;
  v6 = *(a1 + 96);
  if (!v6)
  {
    goto LABEL_33;
  }

  v7 = *(a1 + 104);
  if (!v7)
  {
    goto LABEL_17;
  }

  v8 = sub_2401F40D4(*(v2 + 32), *(a1 + 24), *(a1 + 32), v6, v7, (a1 + 48), **v4, *(a1 + 16));
  if (v8)
  {
LABEL_4:
    v9 = v8 - 1;
    if (v8 == 1)
    {
      v10 = 2;
    }

    else
    {
      v10 = v8;
    }

    if ((atomic_load_explicit(&qword_280C03940, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03940))
    {
      qword_280C03850 = os_log_create("com.apple.AppleCVA", "ViewpointCorrection");
      __cxa_guard_release(&qword_280C03940);
    }

    v11 = qword_280C03850;
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    v12 = off_278C9DF08[v9];
    v13 = off_278C9DF08[(v10 - 1)];
    v24 = 136315394;
    v25 = v12;
    v26 = 2080;
    v27 = v13;
    v14 = "Running m_flowWarper->apply(textureY, textureCbCr, warpfield.warpfieldX, warpfield.warpfieldY, warpfield.transform, *eyeWarpParams, commandBuffer) failed with %s, returning %s";
    v15 = v11;
    v16 = 22;
    goto LABEL_24;
  }

  v17 = *(v2 + 40) + 16 * *(a1 + 176);
  v19 = *(v17 + 8);
  v18 = (v17 + 8);
  v20 = *(a1 + 40);
  *([*v19 contents] + 120) = v20;
  v21 = *(a1 + 160);
  if (!v21)
  {
LABEL_33:
    if ((atomic_load_explicit(&qword_280C03940, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03940))
    {
      qword_280C03850 = os_log_create("com.apple.AppleCVA", "ViewpointCorrection");
      __cxa_guard_release(&qword_280C03940);
    }

    v11 = qword_280C03850;
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_19;
    }

    LOWORD(v24) = 0;
    v14 = "Assertion failed: warpfield.warpfieldX";
    goto LABEL_23;
  }

  v22 = *(a1 + 168);
  if (!v22)
  {
LABEL_17:
    if ((atomic_load_explicit(&qword_280C03940, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03940))
    {
      qword_280C03850 = os_log_create("com.apple.AppleCVA", "ViewpointCorrection");
      __cxa_guard_release(&qword_280C03940);
    }

    v11 = qword_280C03850;
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
LABEL_19:
      v10 = 2;
LABEL_20:

      goto LABEL_21;
    }

    LOWORD(v24) = 0;
    v14 = "Assertion failed: warpfield.warpfieldY";
LABEL_23:
    v10 = 2;
    v15 = v11;
    v16 = 2;
LABEL_24:
    _os_log_error_impl(&dword_2401B8000, v15, OS_LOG_TYPE_ERROR, v14, &v24, v16);
    goto LABEL_20;
  }

  v8 = sub_2401F40D4(*(v2 + 32), *(a1 + 24), *(a1 + 32), v21, v22, (a1 + 112), **v18, *(a1 + 16));
  if (v8)
  {
    goto LABEL_4;
  }

  v10 = 0;
LABEL_21:
  kdebug_trace();
  objc_autoreleasePoolPop(v3);
  return v10;
}

void sub_2401EB148(id *a1)
{

  operator delete(a1);
}

void sub_2401EB1B4(uint64_t a1)
{
  v2 = *(a1 + 16);
}

__n128 sub_2401EB218(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_285227B40;
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 40) = *(a1 + 40);
  v5 = *(a1 + 64);
  v4 = *(a1 + 80);
  *(a2 + 48) = *(a1 + 48);
  *(a2 + 64) = v5;
  *(a2 + 80) = v4;
  *(a2 + 96) = *(a1 + 96);
  *(a2 + 104) = *(a1 + 104);
  v6 = *(a1 + 144);
  v7 = *(a1 + 112);
  *(a2 + 128) = *(a1 + 128);
  *(a2 + 144) = v6;
  *(a2 + 112) = v7;
  *(a2 + 160) = *(a1 + 160);
  *(a2 + 168) = *(a1 + 168);
  result = *(a1 + 176);
  *(a2 + 176) = result;
  return result;
}

void sub_2401EB3BC(id *a1)
{

  JUMPOUT(0x245CBCA30);
}

void *sub_2401EB494(void *result)
{
  v1 = result[4];
  if (v1)
  {
    v2 = result + 1;
    v3 = result;
    LODWORD(v5) = (*(*v1 + 48))(result[4]);
    BYTE4(v5) = 1;
    sub_2401EB59C(v3[5], &v5);
    result = v3[4];
    v3[4] = 0;
    if (result == v2)
    {
      v4 = *(*result + 32);

      return v4();
    }

    if (result)
    {
      v4 = *(*result + 40);

      return v4();
    }
  }

  return result;
}

void sub_2401EB59C(uint64_t a1, void *a2)
{
  if (!a1 || (std::mutex::lock((a1 + 24)), (*(a1 + 136) & 1) != 0) || (v6.__ptr_ = 0, v4 = *(a1 + 16), std::exception_ptr::~exception_ptr(&v6), v4))
  {
    v5 = sub_2401EAB94();
    sub_2401EB624(v5);
  }

  else
  {
    *(a1 + 140) = *a2;
    *(a1 + 136) |= 5u;
    std::condition_variable::notify_all((a1 + 88));
    std::mutex::unlock((a1 + 24));
  }
}

void sub_2401EB624(void *a1)
{
  sub_2401EB65C(a1);

  JUMPOUT(0x245CBCA30);
}

void *sub_2401EB65C(void *a1)
{
  *a1 = &unk_285227548;
  v2 = a1 + 1;
  if (a1[4])
  {
    v3 = a1[5];
    LOBYTE(v9.__ptr_) = 0;
    BYTE4(v9.__ptr_) = 0;
    sub_2401EB59C(v3, &v9);
  }

  v4 = a1[5];
  if (v4)
  {
    if ((*(v4 + 136) & 1) == 0)
    {
      v9.__ptr_ = 0;
      v5 = *(v4 + 16);
      std::exception_ptr::~exception_ptr(&v9);
      v4 = a1[5];
      if (!v5 && *(v4 + 8) >= 1)
      {
        v8 = std::future_category();
        MEMORY[0x245CBC6A0](&v9, 4, v8);
        abort();
      }
    }

    if (!atomic_fetch_add((v4 + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (*(*v4 + 16))(v4);
    }
  }

  v6 = a1[4];
  if (v6 == v2)
  {
    (*(*v6 + 32))(v6);
  }

  else if (v6)
  {
    (*(*v6 + 40))(v6);
  }

  return a1;
}

void sub_2401EB7AC(_Unwind_Exception *a1)
{
  sub_2401EB7C8(v2);
  sub_2401EAB14(v1);
  _Unwind_Resume(a1);
}

void *sub_2401EB7C8(void *result)
{
  v1 = *result;
  if (*result)
  {
    if ((*(v1 + 136) & 1) == 0)
    {
      v7.__ptr_ = 0;
      v2 = *(v1 + 16);
      v3 = result;
      std::exception_ptr::~exception_ptr(&v7);
      result = v3;
      v1 = *v3;
      if (!v2 && *(v1 + 8) >= 1)
      {
        v5 = std::future_category();
        MEMORY[0x245CBC6A0](v6, 4, v5);
        abort();
      }
    }

    if (!atomic_fetch_add((v1 + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (*(*v1 + 16))(v1);
      return v4;
    }
  }

  return result;
}

void sub_2401EB8AC(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285226970;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CBCA30);
}

uint64_t sub_2401EB920(uint64_t **a1, BOOL *a2, float a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  if (!(*a1)[1])
  {
    if ((atomic_load_explicit(&qword_280C03940, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03940))
    {
      qword_280C03850 = os_log_create("com.apple.AppleCVA", "ViewpointCorrection");
      __cxa_guard_release(&qword_280C03940);
    }

    v14 = qword_280C03850;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *__lk = 0;
      _os_log_error_impl(&dword_2401B8000, v14, OS_LOG_TYPE_ERROR, "Assertion failed: state.m->m_commandBuffer", __lk, 2u);
    }

    goto LABEL_30;
  }

  if (!v3[2])
  {
    if (atomic_load_explicit(&qword_280C03940, memory_order_acquire))
    {
LABEL_24:
      v15 = qword_280C03850;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *__lk = 0;
        _os_log_error_impl(&dword_2401B8000, v15, OS_LOG_TYPE_ERROR, "Assertion failed: state.m->m_eyesParameterBuffers", __lk, 2u);
      }

      return 2;
    }

LABEL_47:
    if (__cxa_guard_acquire(&qword_280C03940))
    {
      qword_280C03850 = os_log_create("com.apple.AppleCVA", "ViewpointCorrection");
      __cxa_guard_release(&qword_280C03940);
    }

    goto LABEL_24;
  }

  v4 = *v3;
  if (!*v3)
  {
    if ((atomic_load_explicit(&qword_280C03940, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03940))
    {
      qword_280C03850 = os_log_create("com.apple.AppleCVA", "ViewpointCorrection");
      __cxa_guard_release(&qword_280C03940);
    }

    v14 = qword_280C03850;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *__lk = 0;
      _os_log_error_impl(&dword_2401B8000, v14, OS_LOG_TYPE_ERROR, "Assertion failed: state.m->m_prepareFlowResult.valid()", __lk, 2u);
    }

LABEL_30:

    return 2;
  }

  *v3 = 0;
  *__lk = v4 + 24;
  __lk[8] = 1;
  std::mutex::lock((v4 + 24));
  std::__assoc_sub_state::__sub_wait(v4, __lk);
  v8 = *(v4 + 16);
  v21.__ptr_ = 0;
  std::exception_ptr::~exception_ptr(&v21);
  if (v8)
  {
    std::exception_ptr::exception_ptr(&v21, (v4 + 16));
    v20.__ptr_ = &v21;
    std::rethrow_exception(v20);
    __break(1u);
    goto LABEL_47;
  }

  v9 = *(v4 + 140);
  if (__lk[8] == 1)
  {
    std::mutex::unlock(*__lk);
  }

  v10 = a2;
  if (!atomic_fetch_add((v4 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(*v4 + 16))(v4);
    v10 = a2;
  }

  if ((v9 & 0x100000000) != 0)
  {
    v11 = v9;
  }

  else
  {
    v11 = 2;
  }

  if (v11 == 1)
  {
    v12 = 2;
  }

  else
  {
    v12 = v11;
  }

  if (v11)
  {
    if ((atomic_load_explicit(&qword_280C03940, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03940))
    {
      qword_280C03850 = os_log_create("com.apple.AppleCVA", "ViewpointCorrection");
      __cxa_guard_release(&qword_280C03940);
    }

    v13 = qword_280C03850;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      if (v11 > 8)
      {
        v18 = "Success, no error";
      }

      else
      {
        v18 = off_278C9DF08[v11 - 1];
      }

      if (v12 > 8)
      {
        v19 = "Success, no error";
      }

      else
      {
        v19 = off_278C9DF08[(v12 - 1)];
      }

      *__lk = 136315394;
      *&__lk[4] = v18;
      *&__lk[12] = 2080;
      *&__lk[14] = v19;
      _os_log_error_impl(&dword_2401B8000, v13, OS_LOG_TYPE_ERROR, "Running state.m->m_prepareFlowResult.get().value_or(ViewpointStatus::AssertionFailed) failed with %s, returning %s", __lk, 0x16u);
    }
  }

  else
  {
    *v10 = a3 > 0.0;
    if (a3 > 0.0)
    {
      *([**(*a1)[2] contents] + 112) = a3;
      *([**((*a1)[2] + 8) contents] + 112) = a3;
      kdebug_trace();
      [(*a1)[1] commit];
      [(*a1)[1] waitUntilCompleted];
      kdebug_trace();
    }

    v12 = 0;
  }

  v16 = (*a1)[1];
  (*a1)[1] = 0;

  (*a1)[2] = 0;
  return v12;
}

void sub_2401EBDF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::exception_ptr a10, std::mutex *a11, char a12)
{
  kdebug_trace();
  v14 = *(*v12 + 8);
  *(*v12 + 8) = 0;

  *(*v12 + 16) = 0;
  _Unwind_Resume(a1);
}

void sub_2401EBEA8(uint64_t a1, void *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  v2 = a2;
  operator new();
}

void sub_2401EC49C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  sub_2401D6F9C(va);
  _Unwind_Resume(a1);
}

void *sub_2401EC87C(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = *(v1 + 16);
    *(v1 + 16) = 0;
    if (v3)
    {

      MEMORY[0x245CBCA30](v3, 0x1080C4057E67DB5);
    }

    v4 = *(v1 + 8);
    *(v1 + 8) = 0;
    if (v4)
    {

      MEMORY[0x245CBCA30](v4, 0x1080C4057E67DB5);
    }

    MEMORY[0x245CBCA30](v1, 0xA0C409BE6959DLL);
    return v2;
  }

  return result;
}

id **sub_2401EC924(id **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;

    MEMORY[0x245CBCA30](v1, 0x80C40D6874129);
    return v2;
  }

  return result;
}

uint64_t sub_2401EC988(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {

    JUMPOUT(0x245CBCA30);
  }

  return result;
}

void sub_2401EC9F4(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CBCA30);
}

uint64_t sub_2401ECA30(uint64_t a1, float32x2_t *a2, int8x16_t *a3, void **a4)
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 8);
  if (!v5)
  {
    if ((atomic_load_explicit(&qword_280C03940, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03940))
    {
      qword_280C03850 = os_log_create("com.apple.AppleCVA", "ViewpointCorrection");
      __cxa_guard_release(&qword_280C03940);
    }

    v15 = qword_280C03850;
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_25;
    }

    LOWORD(v27) = 0;
    v18 = "Assertion failed: m_debugRendererY";
    goto LABEL_35;
  }

  if (!*(a1 + 16))
  {
    if ((atomic_load_explicit(&qword_280C03940, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03940))
    {
      qword_280C03850 = os_log_create("com.apple.AppleCVA", "ViewpointCorrection");
      __cxa_guard_release(&qword_280C03940);
    }

    v15 = qword_280C03850;
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_25;
    }

    LOWORD(v27) = 0;
    v18 = "Assertion failed: m_debugRendererCbCr";
    goto LABEL_35;
  }

  v6 = a4[2];
  if (!v6)
  {
    if ((atomic_load_explicit(&qword_280C03940, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03940))
    {
      qword_280C03850 = os_log_create("com.apple.AppleCVA", "ViewpointCorrection");
      __cxa_guard_release(&qword_280C03940);
    }

    v15 = qword_280C03850;
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_25;
    }

    LOWORD(v27) = 0;
    v18 = "Assertion failed: state.commandBuffer";
    goto LABEL_35;
  }

  if (!*a4)
  {
    if ((atomic_load_explicit(&qword_280C03940, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03940))
    {
      qword_280C03850 = os_log_create("com.apple.AppleCVA", "ViewpointCorrection");
      __cxa_guard_release(&qword_280C03940);
    }

    v15 = qword_280C03850;
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_25;
    }

    LOWORD(v27) = 0;
    v18 = "Assertion failed: state.textureY";
    goto LABEL_35;
  }

  if (!a4[1])
  {
    if ((atomic_load_explicit(&qword_280C03940, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03940))
    {
      qword_280C03850 = os_log_create("com.apple.AppleCVA", "ViewpointCorrection");
      __cxa_guard_release(&qword_280C03940);
    }

    v15 = qword_280C03850;
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
LABEL_25:
      v14 = 2;
      goto LABEL_26;
    }

    LOWORD(v27) = 0;
    v18 = "Assertion failed: state.textureCbCr";
LABEL_35:
    v14 = 2;
    v25 = v15;
    v26 = 2;
LABEL_36:
    _os_log_error_impl(&dword_2401B8000, v25, OS_LOG_TYPE_ERROR, v18, &v27, v26);
    goto LABEL_26;
  }

  v7 = a1;
  v9 = xmmword_240270950;
  v9.n128_u32[0] = a3->i32[0];
  v12 = sub_2401F0C6C(v5, a2, 5u, 2, *a4, v6, v9);
  if (v12)
  {
    v13 = v12;
    v14 = 2 * (v12 != 0);
    if ((atomic_load_explicit(&qword_280C03940, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03940))
    {
      qword_280C03850 = os_log_create("com.apple.AppleCVA", "ViewpointCorrection");
      __cxa_guard_release(&qword_280C03940);
    }

    v15 = qword_280C03850;
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_26;
    }

    v16 = off_278C9DF08[v13 - 1];
    if ((v14 - 1) > 7)
    {
      v17 = "Success, no error";
    }

    else
    {
      v17 = off_278C9DF08[(v14 - 1)];
    }

    v27 = 136315394;
    v28 = v16;
    v29 = 2080;
    v30 = v17;
    v18 = "Running m_debugRendererY->encode(vertices, type, state.textureY, state.commandBuffer, simd::make_float4(yuv.x, 0.0f, 0.0f, 1.0f)) failed with %s, returning %s";
    goto LABEL_41;
  }

  v20 = vmul_f32(a2[1], 0x3F0000003F000000);
  *a2 = vmul_f32(*a2, 0x3F0000003F000000);
  a2[1] = v20;
  v21 = vmul_f32(a2[3], 0x3F0000003F000000);
  a2[2] = vmul_f32(a2[2], 0x3F0000003F000000);
  a2[3] = v21;
  a2[4] = vmul_f32(a2[4], 0x3F0000003F000000);
  v22.n128_u64[0] = vextq_s8(*a3, xmmword_240270950, 4uLL).u64[0];
  v22.n128_u64[1] = 0x3F80000000000000;
  v23 = sub_2401F0C6C(*(v7 + 16), a2, 5u, 2, a4[1], a4[2], v22);
  if (!v23)
  {
    return 0;
  }

  v14 = 2 * (v23 != 0);
  if ((atomic_load_explicit(&qword_280C03940, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03940))
  {
    qword_280C03850 = os_log_create("com.apple.AppleCVA", "ViewpointCorrection");
    __cxa_guard_release(&qword_280C03940);
  }

  v15 = qword_280C03850;
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    if ((v14 - 1) > 7)
    {
      v24 = "Success, no error";
    }

    else
    {
      v24 = off_278C9DF08[(v14 - 1)];
    }

    v27 = 136315394;
    v28 = "Precondition was violated";
    v29 = 2080;
    v30 = v24;
    v18 = "Running m_debugRendererCbCr->encode(vertices, type, state.textureCbCr, state.commandBuffer, simd::make_float4(yuv.y, yuv.z, 0.0f, 1.0f)) failed with %s, returning %s";
LABEL_41:
    v25 = v15;
    v26 = 22;
    goto LABEL_36;
  }

LABEL_26:

  return v14;
}

uint64_t sub_2401ECFA0(uint64_t a1, uint64_t a2, int8x16_t *a3, void **a4)
{
  v4.f32[1] = COERCE_FLOAT(HIDWORD(*a2)) + *(a2 + 12);
  v5.f32[0] = *a2 + *(a2 + 8);
  v6.f32[0] = v5.f32[0];
  v6.f32[1] = v4.f32[1];
  v5.i32[1] = *(a2 + 4);
  v8[0] = *a2;
  v4.i32[0] = v8[0].i32[0];
  v8[1] = v4;
  v8[2] = v6;
  v8[3] = v5;
  v8[4] = v8[0];
  return sub_2401ECA30(a1, v8, a3, a4);
}

uint64_t sub_2401ECFFC(uint64_t a1, simd_float3x3 *a2, simd_float3x3 *a3, int8x16_t *a4, void **a5)
{
  v30 = *MEMORY[0x277D85DE8];
  *v27 = sub_2401E3FA0(a2);
  *&v27[8] = v9;
  *&v27[16] = v10;
  v28 = v11;
  v29 = *v27;
  v12 = sub_2401ECA30(a1, v27, a4, a5);
  v13 = v12 - 1;
  if (v12 == 1)
  {
    v14 = 2;
  }

  else
  {
    v14 = v12;
  }

  if (v12)
  {
    if ((atomic_load_explicit(&qword_280C03940, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03940))
    {
      qword_280C03850 = os_log_create("com.apple.AppleCVA", "ViewpointCorrection");
      __cxa_guard_release(&qword_280C03940);
    }

    v15 = qword_280C03850;
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    v16 = off_278C9DF08[v13];
    v17 = off_278C9DF08[(v14 - 1)];
    *v27 = 136315394;
    *&v27[4] = v16;
    *&v27[12] = 2080;
    *&v27[14] = v17;
    v18 = "Running encode(lineStripFromPoints(leftEye.cropCorners()), debugrenderer::PrimitiveTypeLineStrip, yuv, state) failed with %s, returning %s";
    goto LABEL_18;
  }

  *v27 = sub_2401E3FA0(a3);
  *&v27[8] = v19;
  *&v27[16] = v20;
  v28 = v21;
  v29 = *v27;
  v22 = sub_2401ECA30(a1, v27, a4, a5);
  v23 = v22 - 1;
  if (v22 == 1)
  {
    v14 = 2;
  }

  else
  {
    v14 = v22;
  }

  if (!v22)
  {
    return 0;
  }

  if ((atomic_load_explicit(&qword_280C03940, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03940))
  {
    qword_280C03850 = os_log_create("com.apple.AppleCVA", "ViewpointCorrection");
    __cxa_guard_release(&qword_280C03940);
  }

  v15 = qword_280C03850;
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    v25 = off_278C9DF08[v23];
    v26 = off_278C9DF08[(v14 - 1)];
    *v27 = 136315394;
    *&v27[4] = v25;
    *&v27[12] = 2080;
    *&v27[14] = v26;
    v18 = "Running encode(lineStripFromPoints(rightEye.cropCorners()), debugrenderer::PrimitiveTypeLineStrip, yuv, state) failed with %s, returning %s";
LABEL_18:
    _os_log_error_impl(&dword_2401B8000, v15, OS_LOG_TYPE_ERROR, v18, v27, 0x16u);
  }

LABEL_14:

  return v14;
}

uint64_t sub_2401ED258(uint64_t a1, __int128 *a2, int8x16_t *a3, void **a4)
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = a2[3];
  v25 = a2[2];
  v26 = v4;
  v5 = a2[5];
  v27 = a2[4];
  v28 = v5;
  v6 = a2[1];
  v23 = *a2;
  v24 = v6;
  if (!*(a1 + 8))
  {
    if ((atomic_load_explicit(&qword_280C03940, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03940))
    {
      qword_280C03850 = os_log_create("com.apple.AppleCVA", "ViewpointCorrection");
      __cxa_guard_release(&qword_280C03940);
    }

    v14 = qword_280C03850;
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_25;
    }

    *buf = 0;
    v16 = "Assertion failed: m_debugRendererY";
    goto LABEL_35;
  }

  if (!*(a1 + 16))
  {
    if ((atomic_load_explicit(&qword_280C03940, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03940))
    {
      qword_280C03850 = os_log_create("com.apple.AppleCVA", "ViewpointCorrection");
      __cxa_guard_release(&qword_280C03940);
    }

    v14 = qword_280C03850;
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_25;
    }

    *buf = 0;
    v16 = "Assertion failed: m_debugRendererCbCr";
    goto LABEL_35;
  }

  v7 = a4[2];
  if (!v7)
  {
    if ((atomic_load_explicit(&qword_280C03940, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03940))
    {
      qword_280C03850 = os_log_create("com.apple.AppleCVA", "ViewpointCorrection");
      __cxa_guard_release(&qword_280C03940);
    }

    v14 = qword_280C03850;
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_25;
    }

    *buf = 0;
    v16 = "Assertion failed: state.commandBuffer";
    goto LABEL_35;
  }

  if (!*a4)
  {
    if ((atomic_load_explicit(&qword_280C03940, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03940))
    {
      qword_280C03850 = os_log_create("com.apple.AppleCVA", "ViewpointCorrection");
      __cxa_guard_release(&qword_280C03940);
    }

    v14 = qword_280C03850;
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_25;
    }

    *buf = 0;
    v16 = "Assertion failed: state.textureY";
    goto LABEL_35;
  }

  if (!a4[1])
  {
    if ((atomic_load_explicit(&qword_280C03940, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03940))
    {
      qword_280C03850 = os_log_create("com.apple.AppleCVA", "ViewpointCorrection");
      __cxa_guard_release(&qword_280C03940);
    }

    v14 = qword_280C03850;
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
LABEL_25:
      v13 = 2;
      goto LABEL_26;
    }

    *buf = 0;
    v16 = "Assertion failed: state.textureCbCr";
LABEL_35:
    v13 = 2;
    v21 = v14;
    v22 = 2;
LABEL_36:
    _os_log_error_impl(&dword_2401B8000, v21, OS_LOG_TYPE_ERROR, v16, buf, v22);
    goto LABEL_26;
  }

  v10 = xmmword_240270950;
  v10.n128_u32[0] = a3->i32[0];
  v12 = sub_2401F0C6C(*(a1 + 8), &v23, 0xCu, 0, *a4, v7, v10);
  if (v12)
  {
    v13 = 2 * (v12 != 0);
    if ((atomic_load_explicit(&qword_280C03940, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03940))
    {
      qword_280C03850 = os_log_create("com.apple.AppleCVA", "ViewpointCorrection");
      __cxa_guard_release(&qword_280C03940);
    }

    v14 = qword_280C03850;
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_26;
    }

    if ((v13 - 1) > 7)
    {
      v15 = "Success, no error";
    }

    else
    {
      v15 = off_278C9DF08[(v13 - 1)];
    }

    *buf = 136315394;
    v30 = "Precondition was violated";
    v31 = 2080;
    v32 = v15;
    v16 = "Running m_debugRendererY->encode(vertices, type, state.textureY, state.commandBuffer, simd::make_float4(yuv.x, 0.0f, 0.0f, 1.0f)) failed with %s, returning %s";
    goto LABEL_41;
  }

  *&v23 = vmul_f32(*&v23, 0x3F0000003F000000);
  *(&v23 + 1) = vmul_f32(*(&v23 + 8), 0x3F0000003F000000);
  *&v24 = vmul_f32(*&v24, 0x3F0000003F000000);
  *(&v24 + 1) = vmul_f32(*(&v24 + 8), 0x3F0000003F000000);
  *&v25 = vmul_f32(*&v25, 0x3F0000003F000000);
  *(&v25 + 1) = vmul_f32(*(&v25 + 8), 0x3F0000003F000000);
  *&v26 = vmul_f32(*&v26, 0x3F0000003F000000);
  *(&v26 + 1) = vmul_f32(*(&v26 + 8), 0x3F0000003F000000);
  *&v27 = vmul_f32(*&v27, 0x3F0000003F000000);
  *(&v27 + 1) = vmul_f32(*(&v27 + 8), 0x3F0000003F000000);
  *&v28 = vmul_f32(*&v28, 0x3F0000003F000000);
  *(&v28 + 1) = vmul_f32(*(&v28 + 8), 0x3F0000003F000000);
  v18.n128_u64[0] = vextq_s8(*a3, xmmword_240270950, 4uLL).u64[0];
  v18.n128_u64[1] = 0x3F80000000000000;
  v19 = sub_2401F0C6C(*(a1 + 16), &v23, 0xCu, 0, a4[1], a4[2], v18);
  if (!v19)
  {
    return 0;
  }

  v13 = 2 * (v19 != 0);
  if ((atomic_load_explicit(&qword_280C03940, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03940))
  {
    qword_280C03850 = os_log_create("com.apple.AppleCVA", "ViewpointCorrection");
    __cxa_guard_release(&qword_280C03940);
  }

  v14 = qword_280C03850;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    if ((v13 - 1) > 7)
    {
      v20 = "Success, no error";
    }

    else
    {
      v20 = off_278C9DF08[(v13 - 1)];
    }

    *buf = 136315394;
    v30 = "Precondition was violated";
    v31 = 2080;
    v32 = v20;
    v16 = "Running m_debugRendererCbCr->encode(vertices, type, state.textureCbCr, state.commandBuffer, simd::make_float4(yuv.y, yuv.z, 0.0f, 1.0f)) failed with %s, returning %s";
LABEL_41:
    v21 = v14;
    v22 = 22;
    goto LABEL_36;
  }

LABEL_26:

  return v13;
}

uint64_t sub_2401ED810(void *a1)
{
  if (!*a1)
  {
    if ((atomic_load_explicit(&qword_280C03940, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03940))
    {
      qword_280C03850 = os_log_create("com.apple.AppleCVA", "ViewpointCorrection");
      __cxa_guard_release(&qword_280C03940);
    }

    v6 = qword_280C03850;
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    v10 = 0;
    v7 = "Assertion failed: state";
    v8 = &v10;
    goto LABEL_15;
  }

  v2 = *(*a1 + 16);
  if (!v2)
  {
    if ((atomic_load_explicit(&qword_280C03940, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03940))
    {
      qword_280C03850 = os_log_create("com.apple.AppleCVA", "ViewpointCorrection");
      __cxa_guard_release(&qword_280C03940);
    }

    v6 = qword_280C03850;
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    v9 = 0;
    v7 = "Assertion failed: state->commandBuffer";
    v8 = &v9;
LABEL_15:
    _os_log_error_impl(&dword_2401B8000, v6, OS_LOG_TYPE_ERROR, v7, v8, 2u);
LABEL_12:

    return 2;
  }

  [v2 commit];
  [*(*a1 + 16) waitUntilCompleted];
  v3 = *(*a1 + 16);
  *(*a1 + 16) = 0;

  v4 = a1[1];
  *a1 = 0;
  a1[1] = 0;
  if (v4)
  {
    if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }
  }

  return 0;
}

float32x4_t sub_2401ED9D8(float32x2_t *a1, float a2, float a3)
{
  v3 = *(MEMORY[0x277D860B0] + 16);
  v4 = *(MEMORY[0x277D860B0] + 32);
  v4.i64[0] = __PAIR64__(LODWORD(a3), LODWORD(a2));
  v5 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(*MEMORY[0x277D860B0], COERCE_FLOAT(*a1->f32)), v3, *a1, 1), v4, *a1->f32, 2);
  result = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(*MEMORY[0x277D860B0], COERCE_FLOAT(*a1[2].f32)), v3, a1[2], 1), v4, *a1[2].f32, 2);
  v7 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(*MEMORY[0x277D860B0], COERCE_FLOAT(*a1[4].f32)), v3, a1[4], 1), v4, *a1[4].f32, 2);
  a1[1].i32[0] = v5.i32[2];
  *a1 = *v5.f32;
  a1[3].i32[0] = result.i32[2];
  a1[2] = *result.f32;
  a1[5].i32[0] = v7.i32[2];
  a1[4] = *v7.f32;
  return result;
}

void sub_2401EDA44(uint64_t a1, unint64_t a2, float a3, uint64_t a4, int a5, uint64_t a6, int a7)
{
  v57 = *MEMORY[0x277D85DE8];
  v12 = __sincosf_stret(a3);
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    sub_2401BDE28();
  }

  v13 = HIDWORD(v12);
  DWORD1(v13) = v12;
  v14 = COERCE_UNSIGNED_INT(-*&v12);
  v14.i32[1] = HIDWORD(v12);
  v15 = vadd_f32(0, 0);
  v16 = HIDWORD(v12);
  v16.f32[1] = -*&v12;
  v17 = vmlaq_lane_f32(vmulq_n_f32(v16, v15.f32[0]), v12, v15, 1);
  v18 = a5 / 0.0;
  v19 = -v18;
  if (!a7)
  {
    v19 = a5 / 0.0;
  }

  LODWORD(v20) = 0;
  *(&v20 + 1) = v19;
  v21 = vaddq_f32(v17, 0).u64[0];
  v22 = vaddq_f32(vmlaq_lane_f32(vmulq_n_f32(LODWORD(v18), *(&v12 + 1)), v20, *&v13, 1), 0);
  v23 = vaddq_f32(vmlaq_lane_f32(vmulq_n_f32(LODWORD(v18), -*&v12), v20, *v14.i8, 1), 0);
  v24 = vaddq_f32(vmlaq_f32(COERCE_UNSIGNED_INT(v18 * 0.0), 0, v20), xmmword_240270960);
  v25 = vnegq_f32(vaddq_f32(v24, vmlaq_lane_f32(vmulq_n_f32(v22, v21.f32[0]), v23, v21, 1)));
  v26 = *(MEMORY[0x277D860B0] + 16);
  v25.i32[2] = *(MEMORY[0x277D860B0] + 40);
  v38 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(*MEMORY[0x277D860B0], v22.f32[0]), v26, *v22.f32, 1), v25, v22, 2);
  v37 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(*MEMORY[0x277D860B0], v23.f32[0]), v26, *v23.f32, 1), v25, v23, 2);
  v36 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(*MEMORY[0x277D860B0], v24.f32[0]), v26, *v24.f32, 1), v25, v24, 2);
  v23.f32[0] = v18 * *(a6 + 16);
  v22.i64[0] = *(a6 + 40);
  v47 = &off_285227260;
  *&v52[4] = 0;
  *&v52[12] = 0x3F80000000000000;
  *&v52[20] = 0;
  *&v52[28] = 0x3F80000000000000;
  v53 = 0;
  v54 = 0.0;
  *v22.f32 = vadd_f32(*v22.f32, 0x3F0000003F000000);
  __asm { FMOV            V6.2S, #1.0 }

  LODWORD(v48) = a5;
  HIDWORD(v48) = a5;
  LODWORD(v49) = v23.i32[0];
  *(&v49 + 4) = 0;
  HIDWORD(v49) = 0;
  *&v50 = v23.u32[0];
  *(&v50 + 1) = vadd_f32(vadd_f32(*v36.f32, *&vmlaq_lane_f32(vmulq_n_f32(v38, v22.f32[0]), v37, *v22.f32, 1)), 0xBF000000BF000000);
  *v52 = HIDWORD(_D6);
  v51 = 1065353216;
  *(&v13 + 3) = -*&v12;
  v43[0] = v13;
  v43[1] = vextq_s8(vextq_s8(v14, v14, 0xCuLL), 0, 8uLL);
  v44 = 1065353216;
  v45 = 0;
  v46 = 0;
  v39 = 0x3F800000uLL;
  *&v40[4] = 0;
  *&v40[12] = 0x3F80000000000000;
  *v40 = 1065353216;
  v41 = 0;
  v42 = 0.0;
  *&v56[0] = v43;
  *(&v56[0] + 1) = a6 + 52;
  sub_2401EDF8C(&v39, v56);
  v55[0] = v43;
  v55[1] = (a6 + 88);
  *(v56 + 4) = 0;
  HIDWORD(v56[0]) = 0;
  sub_2401EE13C(v56 + 1, v55);
  v41 = vadd_f32(*(v56 + 4), 0);
  v42 = *(v56 + 3) + 0.0;
  *v52 = v39;
  *&v52[16] = *v40;
  *&v52[32] = *&v40[16];
  v53 = v41;
  v54 = *(v56 + 3) + 0.0;
  *a1 = v38;
  *(a1 + 16) = v37;
  *(a1 + 32) = v36;
  v32 = v48;
  *(a1 + 48) = &off_285227260;
  *(a1 + 56) = v32;
  v33 = v50;
  *(a1 + 64) = v49;
  *(a1 + 80) = v33;
  v34 = *&v52[32];
  *(a1 + 96) = v51;
  *(a1 + 100) = *v52;
  *(a1 + 116) = *&v52[16];
  *(a1 + 132) = v34;
  v35 = v53;
  *(a1 + 144) = v54;
  *(a1 + 136) = v35;
}

__n64 sub_2401EDF8C(uint64_t a1, float **a2)
{
  v3 = *a2;
  if (*a2 == a1 || (v4 = a2[1], v4 == a1))
  {
    v9 = 0;
    v7 = 0u;
    v8 = 0u;
    sub_2401EDF8C(&v7);
    result.n64_u64[0] = v7;
    v6 = v8;
    *a1 = v7;
    *(a1 + 16) = v6;
    *(a1 + 32) = v9;
  }

  else
  {
    result.n64_u32[1] = 0;
    *a1 = (((*v3 * *v4) + 0.0) + (v3[3] * v4[1])) + (v3[6] * v4[2]);
    *(a1 + 4) = (((v3[1] * *v4) + 0.0) + (v3[4] * v4[1])) + (v3[7] * v4[2]);
    *(a1 + 8) = (((v3[2] * *v4) + 0.0) + (v3[5] * v4[1])) + (v3[8] * v4[2]);
    *(a1 + 12) = (((*v3 * v4[3]) + 0.0) + (v3[3] * v4[4])) + (v3[6] * v4[5]);
    *(a1 + 16) = (((v3[1] * v4[3]) + 0.0) + (v3[4] * v4[4])) + (v3[7] * v4[5]);
    *(a1 + 20) = (((v3[2] * v4[3]) + 0.0) + (v3[5] * v4[4])) + (v3[8] * v4[5]);
    *(a1 + 24) = (((*v3 * v4[6]) + 0.0) + (v3[3] * v4[7])) + (v3[6] * v4[8]);
    *(a1 + 28) = (((v3[1] * v4[6]) + 0.0) + (v3[4] * v4[7])) + (v3[7] * v4[8]);
    result.n64_f32[0] = (((v3[2] * v4[6]) + 0.0) + (v3[5] * v4[7])) + (v3[8] * v4[8]);
    *(a1 + 32) = result.n64_u32[0];
  }

  return result;
}

float *sub_2401EE13C(float *result, float **a2)
{
  v2 = result;
  v3 = *a2;
  if (*a2 == result || (v4 = a2[1], v4 == result))
  {
    v6 = 0;
    v5 = 0;
    result = sub_2401EE13C(&v5);
    *v2 = v5;
    *(v2 + 2) = v6;
  }

  else
  {
    *result = (((*v3 * *v4) + 0.0) + (v3[3] * v4[1])) + (v3[6] * v4[2]);
    result[1] = (((v3[1] * *v4) + 0.0) + (v3[4] * v4[1])) + (v3[7] * v4[2]);
    result[2] = (((v3[2] * *v4) + 0.0) + (v3[5] * v4[1])) + (v3[8] * v4[2]);
  }

  return result;
}

float32x2_t sub_2401EE210(uint64_t a1, float32x2_t *a2, float32x2_t result, double a4, double a5)
{
  if (a1)
  {
    if (a1 <= 0)
    {
      sub_2401E3818();
    }

    v6 = *a2;
    v5 = a2 + 1;
    v7 = v6;
    v8 = v6;
    v9 = a1 - 1;
    if (a1 != 1)
    {
      do
      {
        v10 = *v5++;
        HIDWORD(a5) = v10.i32[1];
        v8 = vmaxnm_f32(v8, v10);
        v7 = vminnm_f32(v7, v10);
        --v9;
      }

      while (v9);
    }

    v11 = vsub_f32(v8, v7);
    LODWORD(a5) = v11.i32[1];
    if (v11.f32[0] >= v11.f32[1])
    {
      *&a5 = v11.f32[0];
    }

    return vadd_f32(v7, vmul_f32(vsub_f32(vdup_lane_s32(*&a5, 0), v11), 0xBF000000BF000000));
  }

  return result;
}

uint64_t sub_2401EE290(float32x4_t ***a1, uint64_t a2, int a3, float a4, float a5)
{
  v31 = *MEMORY[0x277D85DE8];
  v6 = *a1;
  v5 = a1[1];
  if (*a1 == v5)
  {
LABEL_22:
    if (v6 != v5)
    {
      while ((*v6)[31].i8[1] == 1)
      {
        v6 += 2;
        if (v6 == v5)
        {
          v6 = v5;
          goto LABEL_36;
        }
      }

      if (v6 != v5)
      {
        v18 = v6 + 2;
        if (v6 + 2 != v5)
        {
          do
          {
            v19 = *v18;
            if ((*v18)[31].i8[1] == 1)
            {
              v20 = v18[1];
              *v18 = 0;
              v18[1] = 0;
              v21 = v6[1];
              *v6 = v19;
              v6[1] = v20;
              if (v21 && !atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                v22 = a1;
                (v21->__on_zero_shared)(v21);
                std::__shared_weak_count::__release_weak(v21);
                a1 = v22;
              }

              v6 += 2;
            }

            v18 += 2;
          }

          while (v18 != v5);
          v5 = a1[1];
        }
      }
    }

LABEL_36:
    sub_2401EE758(a1, v6, v5);
    return 0;
  }

  else
  {
    v26 = a1;
    while (1)
    {
      v11 = *v6;
      v27.i8[0] = 0;
      v29 = 0;
      if (v11[2].i8[8] == 1)
      {
        v27 = v11[1];
        v28 = v11[2].i64[0];
        v29 = 1;
      }

      *&out.value = *a2;
      out.epoch = *(a2 + 16);
      v12 = sub_2401F28CC(v11, &v27, a3, &out, a4, a5);
      if (v12)
      {
        break;
      }

      if (((*v6)[31].i8[1] & 1) == 0)
      {
        if ((atomic_load_explicit(&qword_280C03940, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03940))
        {
          qword_280C03850 = os_log_create("com.apple.AppleCVA", "ViewpointCorrection");
          __cxa_guard_release(&qword_280C03940);
        }

        v13 = qword_280C03850;
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          v14 = *v6;
          memset(&out, 0, 37);
          uuid_unparse_upper(v14, &out);
          operator new();
        }
      }

      v6 += 2;
      if (v6 == v5)
      {
        a1 = v26;
        v6 = *v26;
        v5 = v26[1];
        goto LABEL_22;
      }
    }

    v15 = v12 - 1;
    if (v12 == 1)
    {
      v16 = 2;
    }

    else
    {
      v16 = v12;
    }

    if ((atomic_load_explicit(&qword_280C03940, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03940))
    {
      qword_280C03850 = os_log_create("com.apple.AppleCVA", "ViewpointCorrection");
      __cxa_guard_release(&qword_280C03940);
    }

    v17 = qword_280C03850;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v24 = off_278C9DF08[v15];
      v25 = off_278C9DF08[(v16 - 1)];
      LODWORD(out.value) = 136315394;
      *(&out.value + 4) = v24;
      LOWORD(out.flags) = 2080;
      *(&out.flags + 2) = v25;
      _os_log_error_impl(&dword_2401B8000, v17, OS_LOG_TYPE_ERROR, "Running trackedFace->update(faceDetection, correctionEnabled, uprightFaceRollAngle, distanceThresholdsMultiplier, timestamp) failed with %s, returning %s", &out, 0x16u);
    }
  }

  return v16;
}

void sub_2401EE654(uint64_t a1, _DWORD *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = v7 >> 2;
    v9 = (v7 >> 2) + 1;
    if (v9 >> 62)
    {
      sub_2401BDE28();
    }

    v10 = v3 - v6;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v11 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (!(v11 >> 62))
      {
        operator new();
      }

      sub_2401BDE28();
    }

    *(4 * v8) = *a2;
    v5 = 4 * v8 + 4;
    memcpy(0, v6, v7);
    *a1 = 0;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = (v4 + 1);
  }

  *(a1 + 8) = v5;
}

uint64_t sub_2401EE758(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3 != a2)
  {
    v5 = a1[1];
    if (a3 == v5)
    {
      v12 = a2;
      if (v5 == a2)
      {
LABEL_16:
        a1[1] = v12;
        return a2;
      }
    }

    else
    {
      v6 = -*a1;
      v7 = *a1 + a2;
      v8 = *a1 + a3;
      do
      {
        v9 = (v8 + v6);
        v10 = *(v8 + v6);
        *v9 = 0;
        v9[1] = 0;
        v11 = *(v7 + v6 + 8);
        *(v7 + v6) = v10;
        if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v11->__on_zero_shared)(v11);
          std::__shared_weak_count::__release_weak(v11);
        }

        v7 += 16;
        v8 += 16;
      }

      while (v8 + v6 != v5);
      v12 = v7 + v6;
      v5 = a1[1];
      if (v5 == v12)
      {
        goto LABEL_16;
      }
    }

    do
    {
      v13 = *(v5 - 8);
      if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v13->__on_zero_shared)(v13);
        std::__shared_weak_count::__release_weak(v13);
      }

      v5 -= 16;
    }

    while (v5 != v12);
    goto LABEL_16;
  }

  return a2;
}

void **sub_2401EE8B4(void **a1)
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

void sub_2401EE92C(__n128 *a1, __n128 *a2, uint64_t a3, char a4)
{
LABEL_1:
  v8 = a1;
  while (1)
  {
    a1 = v8;
    v9 = a2 - v8;
    v10 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v8) >> 3);
    if (v10 > 2)
    {
      switch(v10)
      {
        case 3:

          sub_2401EF440(v8, &v8[1].n128_f32[2], &a2[-2].n128_i64[1]);
          return;
        case 4:

          sub_2401EF5C4(v8, &v8[1].n128_i64[1], &v8[3], &a2[-2].n128_i64[1]);
          return;
        case 5:

          sub_2401EF70C(v8, &v8[1].n128_i64[1], v8 + 3, &v8[4].n128_i64[1], &a2[-2].n128_i64[1]);
          return;
      }
    }

    else
    {
      if (v10 < 2)
      {
        return;
      }

      if (v10 == 2)
      {
        v90 = a2[-1].n128_f32[0];
        v91 = a2[-1].n128_f32[1];
        v92 = v8->n128_f32[2];
        v93 = v8->n128_f32[3];
        v94 = fminf(v90, v91);
        v95 = v90 * v91;
        v96 = 0.0;
        if (v94 < 0.0)
        {
          v95 = 0.0;
        }

        v97 = fminf(v92, v93);
        v98 = v92 * v93;
        if (v97 >= 0.0)
        {
          v96 = v98;
        }

        if (v95 > v96)
        {
          v99 = v8[1].n128_u64[0];
          v100 = *v8;
          v8->n128_u64[0] = a2[-2].n128_u64[1];
          v8->n128_u64[1] = a2[-1].n128_u64[0];
          v8[1].n128_u64[0] = a2[-1].n128_u64[1];
          *(a2 - 24) = v100;
          a2[-1].n128_u64[1] = v99;
        }

        return;
      }
    }

    if (v9 <= 575)
    {
      break;
    }

    if (!a3)
    {
      if (v8 == a2)
      {
        return;
      }

      v123 = (v10 - 2) >> 1;
      v124 = v123;
      do
      {
        v125 = v124;
        if (v123 >= v124)
        {
          v126 = (2 * v124) | 1;
          v127 = v8 + 6 * v126;
          if (2 * v125 + 2 < v10)
          {
            v128 = v127[2];
            v129 = v127[3];
            v130 = v127[8];
            v131 = v127[9];
            v132 = fminf(v128, v129);
            v133 = v128 * v129;
            if (v132 < 0.0)
            {
              v133 = 0.0;
            }

            v134 = fminf(v130, v131);
            v135 = v130 * v131;
            if (v134 >= 0.0)
            {
              v136 = v135;
            }

            else
            {
              v136 = 0.0;
            }

            if (v133 > v136)
            {
              v127 += 6;
              v126 = 2 * v125 + 2;
            }
          }

          v137 = v8 + 6 * v125;
          v138 = v127[2];
          v139 = v127[3];
          v140 = v137[2];
          v141 = v137[3];
          v142 = fminf(v138, v139);
          v143 = v138 * v139;
          if (v142 >= 0.0)
          {
            v144 = v143;
          }

          else
          {
            v144 = 0.0;
          }

          if (fminf(v140, v141) >= 0.0)
          {
            v145 = v140 * v141;
          }

          else
          {
            v145 = 0.0;
          }

          if (v144 <= v145)
          {
            v146 = *v137;
            v147 = *(v137 + 2);
            do
            {
              v152 = v137;
              v137 = v127;
              *v152 = *v127;
              *(v152 + 1) = *(v127 + 1);
              *(v152 + 2) = *(v127 + 2);
              if (v123 < v126)
              {
                break;
              }

              v153 = 2 * v126;
              v126 = (2 * v126) | 1;
              v127 = v8 + 6 * v126;
              v154 = v153 + 2;
              if (v154 < v10)
              {
                v155 = v127[2];
                v156 = v127[3];
                v157 = v127[8];
                v158 = v127[9];
                v159 = fminf(v155, v156);
                v160 = v155 * v156;
                if (v159 < 0.0)
                {
                  v160 = 0.0;
                }

                v161 = fminf(v157, v158);
                v162 = v157 * v158;
                if (v161 >= 0.0)
                {
                  v163 = v162;
                }

                else
                {
                  v163 = 0.0;
                }

                if (v160 > v163)
                {
                  v127 += 6;
                  v126 = v154;
                }
              }

              v148 = v127[2];
              v149 = v127[3];
              v150 = fminf(v148, v149);
              v151 = v148 * v149;
              if (v150 < 0.0)
              {
                v151 = 0.0;
              }
            }

            while (v151 <= v145);
            *v137 = v146;
            v137[2] = v140;
            v137[3] = v141;
            *(v137 + 2) = v147;
          }
        }

        v124 = v125 - 1;
      }

      while (v125);
      v164 = 0xAAAAAAAAAAAAAAABLL * (v9 >> 3);
      while (2)
      {
        v166 = 0;
        v167 = v8->n128_u64[0];
        v168 = v8->n128_u64[1];
        v169 = v8[1].n128_u64[0];
        v170 = v8;
        do
        {
          v171 = v170;
          v172 = v170 + 6 * v166;
          v170 = (v172 + 6);
          v173 = 2 * v166;
          v166 = (2 * v166) | 1;
          v174 = v173 + 2;
          if (v174 < v164)
          {
            v175 = v172[8];
            v176 = v172[9];
            v177 = v172[14];
            v178 = v172[15];
            v179 = fminf(v175, v176);
            v180 = v175 * v176;
            if (v179 < 0.0)
            {
              v180 = 0.0;
            }

            v181 = fminf(v177, v178);
            v182 = v177 * v178;
            if (v181 >= 0.0)
            {
              v183 = v182;
            }

            else
            {
              v183 = 0.0;
            }

            if (v180 > v183)
            {
              v170 = (v172 + 12);
              v166 = v174;
            }
          }

          v171->n128_u64[0] = v170->n128_u64[0];
          v171->n128_u64[1] = v170->n128_u64[1];
          v171[1].n128_u64[0] = v170[1].n128_u64[0];
        }

        while (v166 <= ((v164 - 2) >> 1));
        if (v170 != &a2[-2].n128_i8[8])
        {
          v170->n128_u64[0] = a2[-2].n128_u64[1];
          v170->n128_u64[1] = a2[-1].n128_u64[0];
          v170[1].n128_u64[0] = a2[-1].n128_u64[1];
          a2[-2].n128_u64[1] = v167;
          a2[-1].n128_u64[0] = v168;
          a2[-1].n128_u64[1] = v169;
          v184 = v170 - v8 + 24;
          if (v184 >= 25)
          {
            v185 = (-2 - 0x5555555555555555 * (v184 >> 3)) >> 1;
            v186 = (v8 + 24 * v185);
            v187 = v186->n128_f32[2];
            v188 = v186->n128_f32[3];
            v189 = v170->n128_f32[2];
            v190 = v170->n128_f32[3];
            v191 = fminf(v187, v188);
            v192 = v187 * v188;
            v193 = v191 >= 0.0 ? v192 : 0.0;
            v194 = fminf(v189, v190) >= 0.0 ? v189 * v190 : 0.0;
            if (v193 > v194)
            {
              v195 = v170->n128_u64[0];
              v169 = v170[1].n128_u64[0];
              do
              {
                v196 = v170;
                v170 = v186;
                v196->n128_u64[0] = v186->n128_u64[0];
                v196->n128_u64[1] = v186->n128_u64[1];
                v196[1].n128_u64[0] = v186[1].n128_u64[0];
                if (!v185)
                {
                  break;
                }

                v185 = (v185 - 1) >> 1;
                v186 = (v8 + 24 * v185);
                v197 = v186->n128_f32[2];
                v198 = v186->n128_f32[3];
                v199 = fminf(v197, v198);
                v200 = v197 * v198;
                if (v199 < 0.0)
                {
                  v200 = 0.0;
                }
              }

              while (v200 > v194);
              v170->n128_u64[0] = v195;
              v170->n128_f32[2] = v189;
              v170->n128_f32[3] = v190;
LABEL_164:
              v170[1].n128_u64[0] = v169;
            }
          }

          a2 = (a2 - 24);
          if (v164-- <= 2)
          {
            return;
          }

          continue;
        }

        break;
      }

      v170->n128_u64[0] = v167;
      v170->n128_u64[1] = v168;
      goto LABEL_164;
    }

    v11 = v10 >> 1;
    v12 = (v8 + 24 * (v10 >> 1));
    if (v9 < 0xC01)
    {
      sub_2401EF440(a1 + 6 * v11, a1, &a2[-2].n128_i64[1]);
      --a3;
      if (a4)
      {
        goto LABEL_29;
      }

LABEL_13:
      v17 = a1[-1].n128_f32[0];
      v18 = a1[-1].n128_f32[1];
      v20 = a1->n128_f32[2];
      v19 = a1->n128_f32[3];
      v21 = fminf(v17, v18);
      v22 = v17 * v18;
      if (v21 >= 0.0)
      {
        v23 = v22;
      }

      else
      {
        v23 = 0.0;
      }

      v24 = v20 * v19;
      if (fminf(v20, v19) >= 0.0)
      {
        v25 = v20 * v19;
      }

      else
      {
        v25 = 0.0;
      }

      if (v23 > v25)
      {
        goto LABEL_30;
      }

      v26 = a2[-1].n128_f32[0];
      v27 = a2[-1].n128_f32[1];
      v28 = fminf(v26, v27);
      v29 = v26 * v27;
      if (v28 < 0.0)
      {
        v29 = 0.0;
      }

      if (v25 <= v29)
      {
        v67 = (a1 + 24);
        do
        {
          v8 = v67;
          if (v67 >= a2)
          {
            break;
          }

          v68 = v67->n128_f32[2];
          v69 = v67->n128_f32[3];
          v70 = fminf(v68, v69);
          v71 = v68 * v69;
          if (v70 < 0.0)
          {
            v71 = 0.0;
          }

          v67 = (v67 + 24);
        }

        while (v25 <= v71);
      }

      else
      {
        v30 = a1;
        do
        {
          v8 = (v30 + 24);
          v31 = v30[2].n128_f32[0];
          v32 = v30[2].n128_f32[1];
          v33 = fminf(v31, v32);
          v34 = v31 * v32;
          if (v33 < 0.0)
          {
            v34 = 0.0;
          }

          v30 = (v30 + 24);
        }

        while (v25 <= v34);
      }

      v72 = a2;
      if (v8 < a2)
      {
        v73 = a2;
        do
        {
          v72 = (v73 - 24);
          v74 = v73[-1].n128_f32[0];
          v75 = v73[-1].n128_f32[1];
          v76 = fminf(v74, v75);
          v77 = v74 * v75;
          if (v76 < 0.0)
          {
            v77 = 0.0;
          }

          v73 = (v73 - 24);
        }

        while (v25 > v77);
      }

      v78 = a1->n128_u64[0];
      v79 = a1[1].n128_u64[0];
      while (v8 < v72)
      {
        v80 = v8[1].n128_u64[0];
        v81 = *v8;
        v8->n128_u64[0] = v72->n128_u64[0];
        v8->n128_u64[1] = v72->n128_u64[1];
        v8[1].n128_u64[0] = v72[1].n128_u64[0];
        *v72 = v81;
        v72[1].n128_u64[0] = v80;
        do
        {
          v82 = v8[2].n128_f32[0];
          v83 = v8[2].n128_f32[1];
          v8 = (v8 + 24);
          v84 = fminf(v82, v83);
          v85 = v82 * v83;
          if (v84 < 0.0)
          {
            v85 = 0.0;
          }
        }

        while (v25 <= v85);
        do
        {
          v86 = v72[-1].n128_f32[0];
          v87 = v72[-1].n128_f32[1];
          v72 = (v72 - 24);
          v88 = fminf(v86, v87);
          v89 = v86 * v87;
          if (v88 < 0.0)
          {
            v89 = 0.0;
          }
        }

        while (v25 > v89);
      }

      if (&v8[-2].n128_i8[8] != a1)
      {
        a1->n128_u64[0] = v8[-2].n128_u64[1];
        a1->n128_u64[1] = v8[-1].n128_u64[0];
        a1[1].n128_u64[0] = v8[-1].n128_u64[1];
      }

      a4 = 0;
      v8[-2].n128_u64[1] = v78;
      v8[-1].n128_f32[0] = v20;
      v8[-1].n128_f32[1] = v19;
      v8[-1].n128_u64[1] = v79;
    }

    else
    {
      sub_2401EF440(a1, a1 + 6 * v11, &a2[-2].n128_i64[1]);
      v13 = 24 * v11;
      v14 = &a1[-1] + 6 * v11 - 2;
      sub_2401EF440(&a1[1].n128_f32[2], v14, &a2[-3]);
      sub_2401EF440(&a1[3], &a1[1].n128_f32[v13 / 4 + 2], &a2[-5].n128_i64[1]);
      sub_2401EF440(v14, v12, &a1[1].n128_i64[v13 / 8 + 1]);
      v15 = a1[1].n128_u64[0];
      a1[1].n128_u64[0] = v12[1].n128_u64[0];
      v16 = *a1;
      *a1 = *v12;
      *v12 = v16;
      v12[1].n128_u64[0] = v15;
      --a3;
      if ((a4 & 1) == 0)
      {
        goto LABEL_13;
      }

LABEL_29:
      v20 = a1->n128_f32[2];
      v19 = a1->n128_f32[3];
      v24 = v20 * v19;
LABEL_30:
      v35 = a1->n128_u64[0];
      v36 = a1[1].n128_u64[0];
      if (fminf(v20, v19) >= 0.0)
      {
        v37 = v24;
      }

      else
      {
        v37 = 0.0;
      }

      v38 = a1;
      do
      {
        v39 = v38;
        v38 = (v38 + 24);
        v40 = v39[2].n128_f32[0];
        v41 = v39[2].n128_f32[1];
        v42 = fminf(v40, v41);
        v43 = v40 * v41;
        if (v42 < 0.0)
        {
          v43 = 0.0;
        }
      }

      while (v43 > v37);
      v44 = a2;
      if (v39 == a1)
      {
        v50 = a2;
        while (v38 < v50)
        {
          v45 = (v50 - 24);
          v51 = v50[-1].n128_f32[0];
          v52 = v50[-1].n128_f32[1];
          v53 = fminf(v51, v52);
          v54 = v51 * v52;
          if (v53 < 0.0)
          {
            v54 = 0.0;
          }

          v50 = (v50 - 24);
          if (v54 > v37)
          {
            goto LABEL_49;
          }
        }

        v45 = v50;
      }

      else
      {
        do
        {
          v45 = (v44 - 24);
          v46 = v44[-1].n128_f32[0];
          v47 = v44[-1].n128_f32[1];
          v48 = fminf(v46, v47);
          v49 = v46 * v47;
          if (v48 < 0.0)
          {
            v49 = 0.0;
          }

          v44 = (v44 - 24);
        }

        while (v49 <= v37);
      }

LABEL_49:
      v8 = v38;
      if (v38 < v45)
      {
        v55 = v45;
        do
        {
          v56 = v8[1].n128_u64[0];
          v57 = *v8;
          v8->n128_u64[0] = v55->n128_u64[0];
          v8->n128_u64[1] = v55->n128_u64[1];
          v8[1].n128_u64[0] = v55[1].n128_u64[0];
          *v55 = v57;
          v55[1].n128_u64[0] = v56;
          do
          {
            v58 = v8[2].n128_f32[0];
            v59 = v8[2].n128_f32[1];
            v8 = (v8 + 24);
            v60 = fminf(v58, v59);
            v61 = v58 * v59;
            if (v60 < 0.0)
            {
              v61 = 0.0;
            }
          }

          while (v61 > v37);
          do
          {
            v62 = v55[-1].n128_f32[0];
            v63 = v55[-1].n128_f32[1];
            v55 = (v55 - 24);
            v64 = fminf(v62, v63);
            v65 = v62 * v63;
            if (v64 < 0.0)
            {
              v65 = 0.0;
            }
          }

          while (v65 <= v37);
        }

        while (v8 < v55);
      }

      if (&v8[-2].n128_i8[8] != a1)
      {
        a1->n128_u64[0] = v8[-2].n128_u64[1];
        a1->n128_u64[1] = v8[-1].n128_u64[0];
        a1[1].n128_u64[0] = v8[-1].n128_u64[1];
      }

      v8[-2].n128_u64[1] = v35;
      v8[-1].n128_f32[0] = v20;
      v8[-1].n128_f32[1] = v19;
      v8[-1].n128_u64[1] = v36;
      if (v38 < v45)
      {
        goto LABEL_64;
      }

      v66 = sub_2401EF8B8(a1, (v8 - 24));
      if (sub_2401EF8B8(v8, a2))
      {
        a2 = (v8 - 24);
        if (v66)
        {
          return;
        }

        goto LABEL_1;
      }

      if (!v66)
      {
LABEL_64:
        sub_2401EE92C(a1, &v8[-2].n128_i8[8], a3, a4 & 1);
        a4 = 0;
      }
    }
  }

  v101 = (v8 + 24);
  v103 = v8 == a2 || v101 == a2;
  if (a4)
  {
    if (!v103)
    {
      v104 = 0;
      v105 = v8;
      do
      {
        v107 = v101;
        v108 = v105[2].n128_f32[0];
        v109 = v105[2].n128_f32[1];
        v110 = v105->n128_f32[2];
        v111 = v105->n128_f32[3];
        if (fminf(v108, v109) >= 0.0)
        {
          v112 = v108 * v109;
        }

        else
        {
          v112 = 0.0;
        }

        v113 = fminf(v110, v111);
        v114 = v110 * v111;
        if (v113 < 0.0)
        {
          v114 = 0.0;
        }

        if (v112 > v114)
        {
          v115 = v101->n128_u64[0];
          v116 = v105[2].n128_u64[1];
          v117 = v104;
          do
          {
            v118 = v8 + v117;
            *(v118 + 24) = *(v8 + v117);
            *(v118 + 5) = *(v8[1].n128_u64 + v117);
            if (!v117)
            {
              v106 = v8;
              goto LABEL_115;
            }

            v119 = *(v118 - 4);
            v120 = *(v118 - 3);
            v121 = fminf(v119, v120);
            v122 = v119 * v120;
            if (v121 < 0.0)
            {
              v122 = 0.0;
            }

            v117 -= 24;
          }

          while (v112 > v122);
          v106 = &v8[1].n128_i64[1] + v117;
LABEL_115:
          *v106 = v115;
          *(v106 + 8) = v108;
          *(v106 + 12) = v109;
          *(v106 + 16) = v116;
        }

        v101 = (v107 + 24);
        v104 += 24;
        v105 = v107;
      }

      while (&v107[1].n128_i8[8] != a2);
    }
  }

  else if (!v103)
  {
    v201 = v8 + 1;
    do
    {
      v202 = v101;
      v203 = a1[2].n128_f32[0];
      v204 = a1[2].n128_f32[1];
      v205 = a1->n128_f32[2];
      v206 = a1->n128_f32[3];
      if (fminf(v203, v204) >= 0.0)
      {
        v207 = v203 * v204;
      }

      else
      {
        v207 = 0.0;
      }

      v208 = fminf(v205, v206);
      v209 = v205 * v206;
      if (v208 < 0.0)
      {
        v209 = 0.0;
      }

      if (v207 > v209)
      {
        v210 = v101->n128_u64[0];
        v211 = a1[2].n128_u64[1];
        v212 = v201;
        do
        {
          *(v212 + 8) = v212[-1];
          v212[1].n128_u64[1] = v212->n128_u64[0];
          v213 = v212[-2].n128_f32[0];
          v214 = v212[-2].n128_f32[1];
          v215 = fminf(v213, v214);
          v216 = v213 * v214;
          if (v215 < 0.0)
          {
            v216 = 0.0;
          }

          v212 = (v212 - 24);
        }

        while (v207 > v216);
        v212->n128_u64[1] = v210;
        v212[1].n128_f32[0] = v203;
        v212[1].n128_f32[1] = v204;
        v212[1].n128_u64[1] = v211;
      }

      v101 = (v202 + 24);
      v201 = (v201 + 24);
      a1 = v202;
    }

    while (&v202[1].n128_i8[8] != a2);
  }
}

void sub_2401EF3B4(uint64_t a1)
{
  v2 = *(a1 + 328);
  if (v2)
  {
    *(a1 + 336) = v2;
    operator delete(v2);
  }
}

void sub_2401EF3CC(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285227BF0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CBCA30);
}

float *sub_2401EF440(float *result, float *a2, uint64_t a3)
{
  v3 = a2[2];
  v4 = a2[3];
  v5 = result[2];
  v6 = result[3];
  v7 = fminf(v3, v4);
  v8 = v3 * v4;
  v9 = 0.0;
  if (v7 < 0.0)
  {
    v8 = 0.0;
  }

  v10 = fminf(v5, v6);
  v11 = v5 * v6;
  if (v10 < 0.0)
  {
    v11 = 0.0;
  }

  v12 = *(a3 + 8);
  v13 = *(a3 + 12);
  v14 = fminf(v12, v13);
  v15 = v12 * v13;
  if (v14 >= 0.0)
  {
    v9 = v15;
  }

  if (v8 <= v11)
  {
    if (v9 > v8)
    {
      v19 = *(a2 + 2);
      v20 = *a2;
      *a2 = *a3;
      *(a2 + 1) = *(a3 + 8);
      *(a2 + 2) = *(a3 + 16);
      *a3 = v20;
      *(a3 + 16) = v19;
      *&v20 = a2[2];
      v21 = a2[3];
      v22 = result[2];
      v23 = result[3];
      v24 = fminf(*&v20, v21);
      v25 = *&v20 * v21;
      v26 = 0.0;
      if (v24 < 0.0)
      {
        v25 = 0.0;
      }

      v27 = fminf(v22, v23);
      v28 = v22 * v23;
      if (v27 >= 0.0)
      {
        v26 = v28;
      }

      if (v25 > v26)
      {
        v29 = *(result + 2);
        v30 = *result;
        *result = *a2;
        *(result + 1) = *(a2 + 1);
        *(result + 2) = *(a2 + 2);
        *a2 = v30;
        *(a2 + 2) = v29;
      }
    }
  }

  else
  {
    v17 = *result;
    v16 = *(result + 1);
    v18 = *(result + 2);
    if (v9 > v8)
    {
      *result = *a3;
      *(result + 1) = *(a3 + 8);
      *(result + 2) = *(a3 + 16);
LABEL_23:
      *a3 = v17;
      *(a3 + 8) = v16;
      *(a3 + 16) = v18;
      return result;
    }

    *result = *a2;
    *(result + 1) = *(a2 + 1);
    *(result + 2) = *(a2 + 2);
    *a2 = v17;
    *(a2 + 1) = v16;
    *(a2 + 2) = v18;
    v31 = *(a3 + 8);
    v32 = *(a3 + 12);
    v33 = fminf(v31, v32);
    v34 = v31 * v32;
    v35 = 0.0;
    if (v33 < 0.0)
    {
      v34 = 0.0;
    }

    if (fminf(*&v16, *(&v16 + 1)) >= 0.0)
    {
      v35 = *&v16 * *(&v16 + 1);
    }

    if (v34 > v35)
    {
      *a2 = *a3;
      *(a2 + 1) = *(a3 + 8);
      *(a2 + 2) = *(a3 + 16);
      goto LABEL_23;
    }
  }

  return result;
}

__n128 sub_2401EF5C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_2401EF440(a1, a2, a3);
  result.n128_u32[0] = *(a4 + 8);
  v8 = *(a4 + 12);
  v9 = *(a3 + 8);
  v10 = *(a3 + 12);
  v11 = fminf(result.n128_f32[0], v8);
  v12 = result.n128_f32[0] * v8;
  result.n128_u64[0] = 0;
  if (v11 < 0.0)
  {
    v12 = 0.0;
  }

  v14 = fminf(v9, v10);
  v15 = v9 * v10;
  if (v14 < 0.0)
  {
    v15 = 0.0;
  }

  if (v12 > v15)
  {
    v16 = *(a3 + 16);
    v17 = *a3;
    *a3 = *a4;
    *(a3 + 8) = *(a4 + 8);
    *(a3 + 16) = *(a4 + 16);
    *a4 = v17;
    *(a4 + 16) = v16;
    v17.n128_u32[0] = *(a3 + 8);
    v18 = *(a3 + 12);
    v19 = *(a2 + 8);
    v20 = *(a2 + 12);
    v21 = fminf(v17.n128_f32[0], v18);
    v22 = v17.n128_f32[0] * v18;
    if (v21 < 0.0)
    {
      v22 = 0.0;
    }

    v23 = fminf(v19, v20);
    v24 = v19 * v20;
    if (v23 >= 0.0)
    {
      result.n128_f32[0] = v24;
    }

    if (v22 > result.n128_f32[0])
    {
      v25 = *(a2 + 16);
      result = *a2;
      *a2 = *a3;
      *(a2 + 8) = *(a3 + 8);
      *(a2 + 16) = *(a3 + 16);
      *a3 = result;
      *(a3 + 16) = v25;
      result.n128_u32[0] = *(a2 + 8);
      v26 = *(a2 + 12);
      v27 = *(a1 + 8);
      v28 = *(a1 + 12);
      v29 = fminf(result.n128_f32[0], v26);
      result.n128_f32[0] = result.n128_f32[0] * v26;
      v30 = 0.0;
      if (v29 < 0.0)
      {
        result.n128_f32[0] = 0.0;
      }

      v31 = fminf(v27, v28);
      v32 = v27 * v28;
      if (v31 >= 0.0)
      {
        v30 = v32;
      }

      if (result.n128_f32[0] > v30)
      {
        v33 = *(a1 + 16);
        result = *a1;
        *a1 = *a2;
        *(a1 + 8) = *(a2 + 8);
        *(a1 + 16) = *(a2 + 16);
        *a2 = result;
        *(a2 + 16) = v33;
      }
    }
  }

  return result;
}

__n128 sub_2401EF70C(__n128 *a1, uint64_t a2, __n128 *a3, uint64_t a4, uint64_t a5)
{
  sub_2401EF5C4(a1, a2, a3, a4);
  result.n128_u32[0] = *(a5 + 8);
  v10 = *(a5 + 12);
  v11 = *(a4 + 8);
  v12 = *(a4 + 12);
  v13 = fminf(result.n128_f32[0], v10);
  v14 = result.n128_f32[0] * v10;
  result.n128_u64[0] = 0;
  if (v13 < 0.0)
  {
    v14 = 0.0;
  }

  v16 = fminf(v11, v12);
  v17 = v11 * v12;
  if (v16 < 0.0)
  {
    v17 = 0.0;
  }

  if (v14 > v17)
  {
    v18 = *(a4 + 16);
    v19 = *a4;
    *a4 = *a5;
    *(a4 + 8) = *(a5 + 8);
    *(a4 + 16) = *(a5 + 16);
    *a5 = v19;
    *(a5 + 16) = v18;
    v19.n128_u32[0] = *(a4 + 8);
    v20 = *(a4 + 12);
    v21 = a3->n128_f32[2];
    v22 = a3->n128_f32[3];
    v23 = fminf(v19.n128_f32[0], v20);
    v24 = v19.n128_f32[0] * v20;
    if (v23 < 0.0)
    {
      v24 = 0.0;
    }

    v25 = fminf(v21, v22);
    v26 = v21 * v22;
    if (v25 >= 0.0)
    {
      result.n128_f32[0] = v26;
    }

    if (v24 > result.n128_f32[0])
    {
      v27 = a3[1].n128_u64[0];
      result = *a3;
      a3->n128_u64[0] = *a4;
      a3->n128_u64[1] = *(a4 + 8);
      a3[1].n128_u64[0] = *(a4 + 16);
      *a4 = result;
      *(a4 + 16) = v27;
      result.n128_u32[0] = a3->n128_u32[2];
      v28 = a3->n128_f32[3];
      v29 = *(a2 + 8);
      v30 = *(a2 + 12);
      v31 = fminf(result.n128_f32[0], v28);
      v32 = result.n128_f32[0] * v28;
      result.n128_u64[0] = 0;
      if (v31 < 0.0)
      {
        v32 = 0.0;
      }

      v33 = fminf(v29, v30);
      v34 = v29 * v30;
      if (v33 < 0.0)
      {
        v34 = 0.0;
      }

      if (v32 > v34)
      {
        v35 = *(a2 + 16);
        v36 = *a2;
        *a2 = a3->n128_u64[0];
        *(a2 + 8) = a3->n128_u64[1];
        *(a2 + 16) = a3[1].n128_u64[0];
        *a3 = v36;
        a3[1].n128_u64[0] = v35;
        v36.n128_u32[0] = *(a2 + 8);
        v37 = *(a2 + 12);
        v38 = a1->n128_f32[2];
        v39 = a1->n128_f32[3];
        v40 = fminf(v36.n128_f32[0], v37);
        v41 = v36.n128_f32[0] * v37;
        if (v40 < 0.0)
        {
          v41 = 0.0;
        }

        v42 = fminf(v38, v39);
        v43 = v38 * v39;
        if (v42 >= 0.0)
        {
          result.n128_f32[0] = v43;
        }

        if (v41 > result.n128_f32[0])
        {
          v44 = a1[1].n128_u64[0];
          result = *a1;
          a1->n128_u64[0] = *a2;
          a1->n128_u64[1] = *(a2 + 8);
          a1[1].n128_u64[0] = *(a2 + 16);
          *a2 = result;
          *(a2 + 16) = v44;
        }
      }
    }
  }

  return result;
}

BOOL sub_2401EF8B8(__n128 *a1, __n128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  if (v2 <= 2)
  {
    if (v2 >= 2)
    {
      if (v2 == 2)
      {
        v3 = a2[-1].n128_f32[0];
        v4 = a2[-1].n128_f32[1];
        v5 = a1->n128_f32[2];
        v6 = a1->n128_f32[3];
        v7 = fminf(v3, v4);
        v8 = v3 * v4;
        v9 = 0.0;
        if (v7 < 0.0)
        {
          v8 = 0.0;
        }

        v10 = fminf(v5, v6);
        v11 = v5 * v6;
        if (v10 >= 0.0)
        {
          v9 = v11;
        }

        if (v8 > v9)
        {
          v12 = a1[1].n128_u64[0];
          v13 = *a1;
          a1->n128_u64[0] = a2[-2].n128_u64[1];
          a1->n128_u64[1] = a2[-1].n128_u64[0];
          a1[1].n128_u64[0] = a2[-1].n128_u64[1];
          *(a2 - 24) = v13;
          a2[-1].n128_u64[1] = v12;
        }

        return 1;
      }

      goto LABEL_15;
    }

    return 1;
  }

  switch(v2)
  {
    case 3:
      sub_2401EF440(a1, &a1[1].n128_f32[2], &a2[-2].n128_i64[1]);
      return 1;
    case 4:
      sub_2401EF5C4(a1, &a1[1].n128_i64[1], &a1[3], &a2[-2].n128_i64[1]);
      return 1;
    case 5:
      sub_2401EF70C(a1, &a1[1].n128_i64[1], a1 + 3, &a1[4].n128_i64[1], &a2[-2].n128_i64[1]);
      return 1;
  }

LABEL_15:
  v14 = a1 + 3;
  sub_2401EF440(a1, &a1[1].n128_f32[2], &a1[3]);
  v17 = (a1 + 72);
  if (&a1[4].n128_i8[8] == a2)
  {
    return 1;
  }

  v18 = 0;
  v19 = 0;
  while (1)
  {
    v21 = v17->n128_f32[2];
    v22 = v17->n128_f32[3];
    v23 = v14->n128_f32[2];
    v24 = v14->n128_f32[3];
    if (fminf(v21, v22) >= 0.0)
    {
      v25 = v21 * v22;
    }

    else
    {
      v25 = 0.0;
    }

    v26 = fminf(v23, v24);
    v27 = v23 * v24;
    if (v26 < 0.0)
    {
      v27 = 0.0;
    }

    if (v25 > v27)
    {
      v28 = v17->n128_u64[0];
      v29 = v17[1].n128_i64[0];
      v30 = v18;
      do
      {
        v31 = a1 + v30;
        *(v31 + 72) = *(a1 + v30 + 48);
        *(v31 + 11) = *(a1[4].n128_u64 + v30);
        if (v30 == -48)
        {
          v20 = a1;
          goto LABEL_18;
        }

        v32 = *(v31 + 8);
        v33 = *(v31 + 9);
        v34 = fminf(v32, v33);
        v35 = v32 * v33;
        if (v34 < 0.0)
        {
          v35 = 0.0;
        }

        v30 -= 24;
      }

      while (v25 > v35);
      v20 = &a1[4].n128_i64[1] + v30;
LABEL_18:
      *v20 = v28;
      *(v20 + 8) = v21;
      *(v20 + 12) = v22;
      *(v20 + 16) = v29;
      if (++v19 == 8)
      {
        return &v17[1].n128_i8[8] == a2;
      }
    }

    v14 = v17;
    v18 += 24;
    v17 = (v17 + 24);
    if (v17 == a2)
    {
      return 1;
    }
  }
}

uint64_t sub_2401EFAB8(const __CFString *a1, void *a2, cva::DictionaryHandler *a3)
{
  v5 = a2;
  v6 = v5;
  if (!v5)
  {
    if ((atomic_load_explicit(&qword_280C03940, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03940))
    {
      qword_280C03850 = os_log_create("com.apple.AppleCVA", "ViewpointCorrection");
      __cxa_guard_release(&qword_280C03940);
    }

    v13 = qword_280C03850;
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_8;
    }

    LOWORD(pixelBuffer[0]) = 0;
    v14 = "Assertion failed: surface";
    goto LABEL_17;
  }

  Width = IOSurfaceGetWidth(v5);
  Height = IOSurfaceGetHeight(v6);
  PixelFormat = IOSurfaceGetPixelFormat(v6);
  v10 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  valuePtr = IOSurfaceGetBytesPerRow(v6);
  v12 = CFNumberCreate(v10, kCFNumberIntType, &valuePtr);
  CFDictionarySetValue(Mutable, *MEMORY[0x277CC4D60], v12);
  CFRelease(v12);
  CFDictionarySetValue(Mutable, *MEMORY[0x277CC4E08], *MEMORY[0x277CBED28]);
  pixelBuffer[0] = 0;
  if (CVPixelBufferCreate(v10, Width, Height, PixelFormat, Mutable, pixelBuffer) || (CVPixelBufferLockBaseAddress(pixelBuffer[0], 0), IOSurfaceLock(v6, 1u, 0), BaseAddress = IOSurfaceGetBaseAddress(v6), v18 = CVPixelBufferGetBaseAddress(pixelBuffer[0]), memcpy(v18, BaseAddress, Height * valuePtr), IOSurfaceUnlock(v6, 1u, 0), CVPixelBufferUnlockBaseAddress(pixelBuffer[0], 0), (v19 = pixelBuffer[0]) == 0))
  {
    if ((atomic_load_explicit(&qword_280C03940, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03940))
    {
      qword_280C03850 = os_log_create("com.apple.AppleCVA", "ViewpointCorrection");
      __cxa_guard_release(&qword_280C03940);
    }

    v13 = qword_280C03850;
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_8;
    }

    LOWORD(pixelBuffer[0]) = 0;
    v14 = "Assertion failed: pixelBuffer";
    goto LABEL_17;
  }

  cva::ItemHandler::ItemHandler(pixelBuffer, pixelBuffer[0]);
  v20 = cva::DictionaryHandler::setItem(a3, a1, pixelBuffer);
  cva::ItemHandler::~ItemHandler(pixelBuffer);
  if (v20)
  {
    CVPixelBufferRelease(v19);
    v15 = 0;
    goto LABEL_9;
  }

  if ((atomic_load_explicit(&qword_280C03940, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03940))
  {
    qword_280C03850 = os_log_create("com.apple.AppleCVA", "ViewpointCorrection");
    __cxa_guard_release(&qword_280C03940);
  }

  v13 = qword_280C03850;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    LOWORD(pixelBuffer[0]) = 0;
    v14 = "Assertion failed: dictionary.setItem(key, cva::ItemHandler(pixelBuffer, false))";
LABEL_17:
    _os_log_error_impl(&dword_2401B8000, v13, OS_LOG_TYPE_ERROR, v14, pixelBuffer, 2u);
  }

LABEL_8:

  v15 = 2;
LABEL_9:

  return v15;
}

void sub_2401EFE28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  cva::ItemHandler::~ItemHandler(&a9);

  _Unwind_Resume(a1);
}

uint64_t sub_2401EFE4C(uint64_t a1, int a2, cva::DictionaryHandler *a3)
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = a2 == 0;
  if (a2)
  {
    v6 = "cropLeft";
  }

  else
  {
    v6 = "cropRight";
  }

  if (v5)
  {
    v7 = 9;
  }

  else
  {
    v7 = 8;
  }

  v26 = v7;
  memcpy(__dst, v6, v7);
  *(__dst + v7) = 0;
  *buf = sub_2401E3FA0(a1);
  *&buf[8] = v8;
  *&buf[16] = v9;
  v29 = v10;
  v11 = sub_2401F0368(__dst, 4, buf, a3);
  if (v26 < 0)
  {
    v12 = v11;
    operator delete(__dst[0]);
    v11 = v12;
  }

  v13 = v11 - 1;
  if (v11 == 1)
  {
    v14 = 2;
  }

  else
  {
    v14 = v11;
  }

  if (!v11)
  {
    v23 = *(a1 + 16);
    v24 = *a1;
    v22 = *(a1 + 32);
    *&buf[8] = 16;
    memptr = 0;
    malloc_type_posix_memalign(&memptr, 0x20uLL, 0x40uLL, 0xE1AC2527uLL);
    v18 = memptr;
    *buf = memptr;
    *&buf[16] = 0x300000003;
    *&v19 = vtrn1q_s32(v24, v23).u64[0];
    *(&v19 + 1) = __PAIR64__(v24.u32[1], v22.u32[0]);
    v20 = vuzp1q_s32(vuzp2q_s32(v23, v22), v23);
    v20.i32[2] = v24.i32[2];
    *memptr = v19;
    v18[1] = v20;
    v18[2].i32[0] = v22.i32[2];
    cva::ItemHandler::createMatrix<float>();
  }

  if ((atomic_load_explicit(&qword_280C03940, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03940))
  {
    qword_280C03850 = os_log_create("com.apple.AppleCVA", "ViewpointCorrection");
    __cxa_guard_release(&qword_280C03940);
  }

  v15 = qword_280C03850;
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    v16 = off_278C9DF08[v13];
    v17 = off_278C9DF08[(v14 - 1)];
    *buf = 136315394;
    *&buf[4] = v16;
    *&buf[12] = 2080;
    *&buf[14] = v17;
    _os_log_error_impl(&dword_2401B8000, v15, OS_LOG_TYPE_ERROR, "Running addPoints(isLeftEye ? cropLeft : cropRight, eyeCrop.cropCorners(), dictionary) failed with %s, returning %s", buf, 0x16u);
  }

  return v14;
}

void sub_2401F030C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  cva::ItemHandler::~ItemHandler(va);
  _Unwind_Resume(a1);
}

void sub_2401F034C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2401F0368(uint64_t a1, uint64_t a2, uint64_t *a3, cva::DictionaryHandler *a4)
{
  cva::ArrayHandler::ArrayHandler(v14);
  if (a2)
  {
    v8 = *a3;
    v16 = 8;
    memptr = 0;
    malloc_type_posix_memalign(&memptr, 0x20uLL, 0x20uLL, 0xE1AC2527uLL);
    *buf = memptr;
    v17 = 2;
    *memptr = v8;
    cva::ItemHandler::createVector<float>();
  }

  cva::ItemHandler::ItemHandler();
  if (*(a1 + 23) >= 0)
  {
    v9 = a1;
  }

  else
  {
    v9 = *a1;
  }

  v10 = cva::DictionaryHandler::setItem(a4, v9, buf);
  cva::ItemHandler::~ItemHandler(buf);
  if (v10)
  {
    v11 = 0;
  }

  else
  {
    if ((atomic_load_explicit(&qword_280C03940, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03940))
    {
      qword_280C03850 = os_log_create("com.apple.AppleCVA", "ViewpointCorrection");
      __cxa_guard_release(&qword_280C03940);
    }

    v12 = qword_280C03850;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2401B8000, v12, OS_LOG_TYPE_ERROR, "Assertion failed: dictionary.setItem(name, cva::ItemHandler(pointsHandler))", buf, 2u);
    }

    v11 = 2;
  }

  cva::ArrayHandler::~ArrayHandler(v14);
  return v11;
}

void sub_2401F05A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, void *a13)
{
  cva::ItemHandler::~ItemHandler(&a13);
  cva::ArrayHandler::~ArrayHandler(&a11);
  _Unwind_Resume(a1);
}

uint64_t sub_2401F05EC(uint64_t a1, uint64_t *a2, cva::DictionaryHandler *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v14 = 9;
  strcpy(__p, "landmarks");
  v3 = sub_2401F0368(__p, a1, a2, a3);
  if (v14 < 0)
  {
    v4 = v3;
    operator delete(*__p);
    v3 = v4;
  }

  v5 = v3 - 1;
  if (v3 == 1)
  {
    v6 = 2;
  }

  else
  {
    v6 = v3;
  }

  if (v3)
  {
    if ((atomic_load_explicit(&qword_280C03940, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03940))
    {
      qword_280C03850 = os_log_create("com.apple.AppleCVA", "ViewpointCorrection");
      __cxa_guard_release(&qword_280C03940);
    }

    v7 = qword_280C03850;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = off_278C9DF08[v5];
      v10 = off_278C9DF08[(v6 - 1)];
      *__p = 136315394;
      *&__p[4] = v9;
      v12 = 2080;
      v13 = v10;
      _os_log_error_impl(&dword_2401B8000, v7, OS_LOG_TYPE_ERROR, "Running addPoints(landmarks, landmarks, dictionary) failed with %s, returning %s", __p, 0x16u);
    }
  }

  return v6;
}

void sub_2401F0774(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2401F0790(uint64_t a1, void *a2, uint64_t a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v24 = 0;
  v6 = [VPCMetalLib metalLibraryWithDevice:v5 error:&v24];
  v7 = v24;
  if (v6)
  {
    v8 = [v6 newFunctionWithName:@"debugRendererVertex"];
    v9 = [v6 newFunctionWithName:@"debugRendererFragment"];
    v10 = v9;
    if (v8 && v9)
    {
      v11 = objc_opt_new();
      [v11 setVertexFunction:v8];
      [v11 setFragmentFunction:v10];
      v12 = [v11 colorAttachments];
      v13 = [v12 objectAtIndexedSubscript:0];
      [v13 setPixelFormat:a3];

      v23 = v7;
      v14 = [v5 newRenderPipelineStateWithDescriptor:v11 error:&v23];
      v15 = v23;

      if (v14)
      {
        v21[0] = a3;
        v21[1] = v14;
        v16 = 1;
      }

      else
      {
        if ((atomic_load_explicit(&qword_280C03940, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03940))
        {
          qword_280C03850 = os_log_create("com.apple.AppleCVA", "ViewpointCorrection");
          __cxa_guard_release(&qword_280C03940);
        }

        v19 = qword_280C03850;
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v26 = v15;
          _os_log_error_impl(&dword_2401B8000, v19, OS_LOG_TYPE_ERROR, "Could not create render pipeline state: %@", buf, 0xCu);
        }

        v16 = 0;
        LODWORD(v21[0]) = 2;
      }

      v22 = v16;

      v7 = v15;
    }

    else
    {
      if ((atomic_load_explicit(&qword_280C03940, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03940))
      {
        qword_280C03850 = os_log_create("com.apple.AppleCVA", "ViewpointCorrection");
        __cxa_guard_release(&qword_280C03940);
      }

      v18 = qword_280C03850;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_2401B8000, v18, OS_LOG_TYPE_ERROR, "Could not find required metal functions.", buf, 2u);
      }

      LODWORD(v21[0]) = 2;
      v22 = 0;
    }
  }

  else
  {
    if ((atomic_load_explicit(&qword_280C03940, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03940))
    {
      qword_280C03850 = os_log_create("com.apple.AppleCVA", "ViewpointCorrection");
      __cxa_guard_release(&qword_280C03940);
    }

    v17 = qword_280C03850;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v26 = v7;
      _os_log_error_impl(&dword_2401B8000, v17, OS_LOG_TYPE_ERROR, "Could not get metal library: %@", buf, 0xCu);
    }

    LODWORD(v21[0]) = 2;
    v22 = 0;
  }

  if (v22)
  {
    operator new();
  }

  v20 = v21[0];
  *a1 = 0;
  *(a1 + 8) = v20;
  (off_285227C18[0])(buf, v21);
}

uint64_t sub_2401F0C6C(void *a1, uint64_t a2, unsigned int a3, uint64_t a4, void *a5, void *a6, __n128 a7)
{
  v29 = a4;
  v11 = a5;
  v12 = a6;
  v28 = a7;
  if (!v12)
  {
    if ((atomic_load_explicit(&qword_280C03940, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03940))
    {
      qword_280C03850 = os_log_create("com.apple.AppleCVA", "ViewpointCorrection");
      __cxa_guard_release(&qword_280C03940);
    }

    v23 = qword_280C03850;
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    *buf = 0;
    v24 = "No command buffer provided.";
    goto LABEL_22;
  }

  if (!v11 || ![v11 width] || !objc_msgSend(v11, "height"))
  {
    if ((atomic_load_explicit(&qword_280C03940, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03940))
    {
      qword_280C03850 = os_log_create("com.apple.AppleCVA", "ViewpointCorrection");
      __cxa_guard_release(&qword_280C03940);
    }

    v23 = qword_280C03850;
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    *buf = 0;
    v24 = "No or empty texture provided.";
    goto LABEL_22;
  }

  if ([v11 pixelFormat] != *a1)
  {
    if ((atomic_load_explicit(&qword_280C03940, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03940))
    {
      qword_280C03850 = os_log_create("com.apple.AppleCVA", "ViewpointCorrection");
      __cxa_guard_release(&qword_280C03940);
    }

    v23 = qword_280C03850;
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    *buf = 0;
    v24 = "Mismatching texture pixel format.";
    goto LABEL_22;
  }

  if (!a2)
  {
    if ((atomic_load_explicit(&qword_280C03940, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03940))
    {
      qword_280C03850 = os_log_create("com.apple.AppleCVA", "ViewpointCorrection");
      __cxa_guard_release(&qword_280C03940);
    }

    v23 = qword_280C03850;
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    *buf = 0;
    v24 = "Null or 0 vertices provided.";
LABEL_22:
    _os_log_error_impl(&dword_2401B8000, v23, OS_LOG_TYPE_ERROR, v24, buf, 2u);
LABEL_13:

    v22 = 1;
    goto LABEL_14;
  }

  v13 = [v11 width];
  v14 = [v11 height];
  *&v15 = v13;
  *(&v15 + 1) = v14;
  *buf = v15;
  v16 = objc_opt_new();
  v17 = [v16 colorAttachments];
  v18 = [v17 objectAtIndexedSubscript:0];
  [v18 setLoadAction:1];

  v19 = [v16 colorAttachments];
  v20 = [v19 objectAtIndexedSubscript:0];
  [v20 setTexture:v11];

  v21 = [v12 renderCommandEncoderWithDescriptor:v16];
  [v21 setLabel:@"DebugRenderer"];
  [v21 setRenderPipelineState:a1[1]];
  [v21 setVertexBytes:a2 length:8 * a3 atIndex:0];
  [v21 setVertexBytes:buf length:8 atIndex:1];
  [v21 setVertexBytes:&v29 length:8 atIndex:2];
  [v21 setFragmentBytes:&v29 length:8 atIndex:2];
  [v21 setFragmentBytes:&v28 length:16 atIndex:3];
  [v21 drawPrimitives:v29 vertexStart:0 vertexCount:a3];
  [v21 endEncoding];

  v22 = 0;
LABEL_14:

  return v22;
}

void sub_2401F10D4(uint64_t a1, void *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  v2 = a2;
  operator new();
}

void sub_2401F1324(id *a1, void *a2, id *a3)
{
  v5 = a2;
  v6 = [v5 pixelFormat];
  v12 = v5;
  if (!*a3 || (v7 = [*a3 width], v7 != objc_msgSend(v12, "width")) || (v8 = objc_msgSend(*a3, "height"), v8 != objc_msgSend(v12, "height")) || objc_msgSend(*a3, "pixelFormat") != v6 || objc_msgSend(*a3, "usage") != 3)
  {
    v9 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:v6 width:objc_msgSend(v12 height:"width") mipmapped:objc_msgSend(v12, "height"), 0];
    [v9 setUsage:3];
    [v9 setStorageMode:2];
    v10 = [*a1 newTextureWithDescriptor:v9];
    v11 = *a3;
    *a3 = v10;
  }
}

uint64_t sub_2401F148C(uint64_t a1, CVPixelBufferRef pixelBuffer, MTLPixelFormat a3, size_t planeIndex, uint64_t a5, CVMetalTextureRef *a6)
{
  v32[1] = *MEMORY[0x277D85DE8];
  WidthOfPlane = CVPixelBufferGetWidthOfPlane(pixelBuffer, planeIndex);
  HeightOfPlane = CVPixelBufferGetHeightOfPlane(pixelBuffer, planeIndex);
  if (!WidthOfPlane || (v14 = HeightOfPlane) == 0)
  {
    if ((atomic_load_explicit(&qword_280C03940, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03940))
    {
      qword_280C03850 = os_log_create("com.apple.AppleCVA", "ViewpointCorrection");
      __cxa_guard_release(&qword_280C03940);
    }

    v16 = qword_280C03850;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2401B8000, v16, OS_LOG_TYPE_ERROR, "Precondition violated: width && height", buf, 2u);
    }

    v22 = 1;
    goto LABEL_24;
  }

  v31 = *MEMORY[0x277CC4D50];
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a5];
  v32[0] = v15;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:&v31 count:1];

  textureOut = 0;
  v17 = *(a1 + 8);
  if (!v17)
  {
    if (CVMetalTextureCacheCreate(0, 0, *a1, 0, (a1 + 8)))
    {
      if ((atomic_load_explicit(&qword_280C03940, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03940))
      {
        qword_280C03850 = os_log_create("com.apple.AppleCVA", "ViewpointCorrection");
        __cxa_guard_release(&qword_280C03940);
      }

      v23 = qword_280C03850;
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_2401B8000, v23, OS_LOG_TYPE_ERROR, "Assertion failed: CVMetalTextureCacheCreate(NULL, NULL, m_device, NULL, outputPointerTo(m_metalTextureCache)) == kCVReturnSuccess", buf, 2u);
      }

      if ((atomic_load_explicit(&qword_280C03940, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03940))
      {
        qword_280C03850 = os_log_create("com.apple.AppleCVA", "ViewpointCorrection");
        __cxa_guard_release(&qword_280C03940);
      }

      v18 = qword_280C03850;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v28 = "Error running operation on the GPU";
        v29 = 2080;
        v30 = "Error running operation on the GPU";
        v19 = "Running createMetalTextureCache() failed with %s, returning %s";
        v20 = v18;
        v21 = 22;
        goto LABEL_29;
      }

LABEL_18:

      v22 = 6;
      v24 = textureOut;
      if (textureOut)
      {
LABEL_19:
        CFRelease(v24);
        goto LABEL_24;
      }

      goto LABEL_24;
    }

    v17 = *(a1 + 8);
  }

  if (CVMetalTextureCacheCreateTextureFromImage(0, v17, pixelBuffer, v16, a3, WidthOfPlane, v14, planeIndex, &textureOut))
  {
    if ((atomic_load_explicit(&qword_280C03940, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03940))
    {
      qword_280C03850 = os_log_create("com.apple.AppleCVA", "ViewpointCorrection");
      __cxa_guard_release(&qword_280C03940);
    }

    v18 = qword_280C03850;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v19 = "Could not create texture from image";
      v20 = v18;
      v21 = 2;
LABEL_29:
      _os_log_error_impl(&dword_2401B8000, v20, OS_LOG_TYPE_ERROR, v19, buf, v21);
      goto LABEL_18;
    }

    goto LABEL_18;
  }

  if (&textureOut == a6)
  {
    v22 = 0;
    v24 = textureOut;
    if (!textureOut)
    {
      goto LABEL_24;
    }

    goto LABEL_19;
  }

  if (*a6)
  {
    CFRelease(*a6);
    *a6 = 0;
  }

  v22 = 0;
  *a6 = textureOut;
LABEL_24:

  return v22;
}

uint64_t sub_2401F18DC(void *a1, void *a2, int a3, int a4)
{
  v7 = a1;
  v8 = a2;
  v9 = [v8 threadExecutionWidth];
  v10 = [v8 maxTotalThreadsPerThreadgroup];
  if (v9 <= v10)
  {
    *buf = a3;
    v16 = a4;
    v17 = 1;
    v14[0] = v9;
    v14[1] = v10 / v9;
    v14[2] = 1;
    [v7 dispatchThreads:buf threadsPerThreadgroup:v14];
    v12 = 0;
  }

  else
  {
    if ((atomic_load_explicit(&qword_280C03940, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03940))
    {
      qword_280C03850 = os_log_create("com.apple.AppleCVA", "ViewpointCorrection");
      __cxa_guard_release(&qword_280C03940);
    }

    v11 = qword_280C03850;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2401B8000, v11, OS_LOG_TYPE_ERROR, "threadsPerGroup looks strange", buf, 2u);
    }

    v12 = 2;
  }

  return v12;
}

void sub_2401F1A3C(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v3) >> 4) >= a2)
  {
    if (a2)
    {
      v9 = &v3[3 * a2];
      do
      {
        v3[1] = 0uLL;
        v3[2] = 0uLL;
        *v3 = 0uLL;
        *(v3 + 2) = 0x7FF8000000000000;
        v3 += 3;
      }

      while (v3 != v9);
      v3 = v9;
    }

    *(a1 + 8) = v3;
  }

  else
  {
    v5 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 4);
    v6 = v5 + a2;
    if (v5 + a2 > 0x555555555555555)
    {
      sub_2401BDE28();
    }

    v7 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 4);
    if (2 * v7 > v6)
    {
      v6 = 2 * v7;
    }

    if (v7 >= 0x2AAAAAAAAAAAAAALL)
    {
      v8 = 0x555555555555555;
    }

    else
    {
      v8 = v6;
    }

    if (v8)
    {
      if (v8 <= 0x555555555555555)
      {
        operator new();
      }

      sub_2401BDE28();
    }

    v10 = 48 * v5;
    v11 = 48 * v5 + 48 * a2;
    v12 = 48 * v5;
    do
    {
      *(v12 + 16) = 0uLL;
      *(v12 + 32) = 0uLL;
      *v12 = 0uLL;
      *(v12 + 16) = 0x7FF8000000000000;
      v12 += 48;
    }

    while (v12 != v11);
    v13 = *a1;
    v14 = *(a1 + 8) - *a1;
    v15 = v10 - v14;
    memcpy((v10 - v14), *a1, v14);
    *a1 = v15;
    *(a1 + 8) = v11;
    *(a1 + 16) = 0;
    if (v13)
    {

      operator delete(v13);
    }
  }
}

float sub_2401F1BD8(float *a1)
{
  v31 = *MEMORY[0x277D85DE8];
  v1 = a1[87] + a1[87];
  v2 = 1.0;
  v13 = v1 < 1.0;
  v3 = (((v1 + -1.0) * ((v1 + -1.0) + -2.0)) + -1.0) * -0.5;
  v4 = v1 * (v1 * 0.5);
  if (v13)
  {
    v5 = v4;
  }

  else
  {
    v5 = v3;
  }

  v6 = a1[151] + a1[151];
  v13 = v6 < 1.0;
  v7 = (((v6 + -1.0) * ((v6 + -1.0) + -2.0)) + -1.0) * -0.5;
  v8 = v6 * (v6 * 0.5);
  if (v13)
  {
    v9 = v8;
  }

  else
  {
    v9 = v7;
  }

  v10 = a1[162];
  v11 = v10 * 22.0;
  v12 = v10 * 17.0;
  v13 = (v10 * 17.0) < (v10 * 22.0) && v11 < 180.0;
  if (v13)
  {
    v15 = a1[134];
    v16 = (v15 - v12) / (v11 - v12);
    if (v16 <= 1.0)
    {
      v17 = (v15 - v12) / (v11 - v12);
    }

    else
    {
      v17 = 1.0;
    }

    v13 = v16 < 0.0;
    v18 = 0.0;
    if (!v13)
    {
      v18 = v17;
    }

    v19 = (v15 + -180.0) / 20.0;
    if (v19 <= 1.0)
    {
      v20 = v19;
    }

    else
    {
      v20 = 1.0;
    }

    v21 = 1.0 - v20;
    if (v19 >= 0.0)
    {
      v2 = v21;
    }

    if (v2 >= v18)
    {
      v2 = v18;
    }
  }

  else
  {
    if ((atomic_load_explicit(&qword_280C03940, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03940))
    {
      qword_280C03850 = os_log_create("com.apple.AppleCVA", "ViewpointCorrection");
      __cxa_guard_release(&qword_280C03940);
    }

    v14 = qword_280C03850;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 134218752;
      v24 = v12;
      v25 = 2048;
      v26 = v11;
      v27 = 2048;
      v28 = 0x4066800000000000;
      v29 = 2048;
      v30 = 0x4069000000000000;
      _os_log_impl(&dword_2401B8000, v14, OS_LOG_TYPE_DEFAULT, "Face distance fadeout thresholds (%f, %f), (%f %f) should be in increasing order.", &v23, 0x2Au);
    }

    v2 = 0.0;
  }

  return (v5 * v9) * v2;
}

float sub_2401F1DF8(uint64_t a1)
{
  v2 = sub_2401F1BD8(a1);
  v4 = *(a1 + 332);
  if (v4)
  {
    if (v4 < 1)
    {
      v7 = 0uLL;
    }

    else
    {
      v5 = *(a1 + 328);
      v6 = *(a1 + 304);
      v7 = 0uLL;
      v8 = *(a1 + 332);
      do
      {
        v3 = *(v6 + 48 * v5);
        v7 = vaddq_f32(v7, v3);
        v5 = (v5 + 1) % (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 312) - v6) >> 4));
        --v8;
      }

      while (v8);
    }

    v3.f32[0] = v4;
    v9 = vdivq_f32(v7, vdupq_lane_s32(*v3.f32, 0));
  }

  else
  {
    v9.i64[0] = 0;
    v9.i32[2] = 0;
  }

  v10 = (fabsf(v9.f32[2]) + -30.0) / 15.0;
  if (v10 <= 1.0)
  {
    v11 = v10;
  }

  else
  {
    v11 = 1.0;
  }

  v12 = 1.0 - v11;
  v13 = vdiv_f32(vadd_f32(vabs_f32(*v9.f32), 0xC1600000C1F00000), 0x4160000041700000);
  __asm { FMOV            V6.2S, #1.0 }

  v19 = vbsl_s8(vcltz_f32(v13), _D6, vsub_f32(_D6, vbsl_s8(vcgt_f32(v13, _D6), _D6, v13)));
  LODWORD(v20) = vmul_lane_f32(v19, v19, 1).u32[0];
  if (v10 >= 0.0)
  {
    v21 = v12;
  }

  else
  {
    v21 = 1.0;
  }

  v22 = v2 * (v21 * v20);
  v23 = (*(a1 + 400) + -0.1875) * 8.0;
  if (v23 <= 1.0)
  {
    v24 = (*(a1 + 400) + -0.1875) * 8.0;
  }

  else
  {
    v24 = 1.0;
  }

  v25 = 1.0 - v24;
  if (v23 >= 0.0)
  {
    v26 = v25;
  }

  else
  {
    v26 = 1.0;
  }

  return v22 * v26;
}