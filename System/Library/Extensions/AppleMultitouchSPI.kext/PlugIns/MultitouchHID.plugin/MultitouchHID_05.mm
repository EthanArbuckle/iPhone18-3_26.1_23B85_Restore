void *__copy_helper_block_e8_32c47_ZTSNSt3__110shared_ptrI19MTEmbeddedStatsImplEE48c75_ZTSNSt3__110shared_ptrINS_6vectorI15TouchingContactNS_9allocatorIS2_EEEEEE(void *result, void *a2)
{
  v2 = a2[5];
  result[4] = a2[4];
  result[5] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v3 = a2[7];
  result[6] = a2[6];
  result[7] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_32c47_ZTSNSt3__110shared_ptrI19MTEmbeddedStatsImplEE48c75_ZTSNSt3__110shared_ptrINS_6vectorI15TouchingContactNS_9allocatorIS2_EEEEEE(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void MTEmbeddedStats::handleFrameHeader(uint64_t *a1, uint64_t a2, uint8x8_t a3)
{
  a3.i32[0] = *a2;
  v3 = vmovl_u8(a3).u64[0];
  v4 = *(a2 + 4);
  a3.i32[0] = *(a2 + 8);
  v5 = vmovl_u8(a3).u64[0];
  v6 = *(a2 + 12);
  v7 = *(a2 + 14);
  v8 = *(a2 + 16);
  v9 = *(a2 + 17);
  v10 = *(a2 + 18);
  v11 = *(a2 + 20);
  v12 = *(a2 + 22);
  a3.i32[0] = *(a2 + 24);
  v13 = vmovl_u8(a3).u64[0];
  v14 = *a1;
  v15 = a1[1];
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v16 = *(v14 + 8);
  v17[0] = MEMORY[0x29EDCA5F8];
  v17[1] = 3321888768;
  v17[2] = ___ZN15MTEmbeddedStats17handleFrameHeaderERK19MTBinaryFrameHeader_block_invoke;
  v17[3] = &__block_descriptor_76_e8_32c47_ZTSNSt3__110shared_ptrI19MTEmbeddedStatsImplEE_e5_v8__0l;
  v17[4] = v14;
  v18 = v15;
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v19 = vuzp1_s8(v3, v13).u32[0];
  v20 = v4;
  v21 = vuzp1_s8(v5, v13).u32[0];
  v22 = v6;
  v23 = v7;
  v24 = v8;
  v25 = v9;
  v26 = v10;
  v27 = v11;
  v28 = v12;
  v29 = vuzp1_s8(v13, v13).u32[0];
  dispatch_async(v16, v17);
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }
}

uint64_t __copy_helper_block_e8_32c47_ZTSNSt3__110shared_ptrI19MTEmbeddedStatsImplEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_32c47_ZTSNSt3__110shared_ptrI19MTEmbeddedStatsImplEE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void MTEmbeddedStats::resetTouchState(MTEmbeddedStats *this)
{
  v1 = *this;
  v2 = *(this + 1);
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v3 = *(v1 + 8);
  v4[0] = MEMORY[0x29EDCA5F8];
  v4[1] = 3321888768;
  v4[2] = ___ZN15MTEmbeddedStats15resetTouchStateEv_block_invoke;
  v4[3] = &__block_descriptor_48_e8_32c47_ZTSNSt3__110shared_ptrI19MTEmbeddedStatsImplEE_e5_v8__0l;
  v4[4] = v1;
  v5 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  dispatch_async(v3, v4);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

void ___ZN15MTEmbeddedStats15resetTouchStateEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  bzero((v1 + 24), 0x800uLL);
  *(v1 + 16) = 0;
}

uint64_t MTEmbeddedStatsImpl::updateOpenRows(MTEmbeddedStatsImpl *this)
{
  v22 = *MEMORY[0x29EDCA608];
  v2 = *this;
  OpenRows = MTDeviceGetOpenRows();
  if (OpenRows == -536870201)
  {
    v9 = *this;
    MTDeviceGetDeviceID();
    v10 = MTLoggingPlugin();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      *v19 = 0;
      v11 = "Skipping open rows logging: not supported (deviceID 0x%llX)";
      v12 = v10;
      v13 = OS_LOG_TYPE_DEBUG;
      v14 = 12;
LABEL_10:
      _os_log_impl(&dword_29D381000, v12, v13, v11, buf, v14);
    }

LABEL_11:
    result = 0;
    goto LABEL_12;
  }

  v4 = OpenRows;
  if (OpenRows)
  {
    v15 = *this;
    MTDeviceGetDeviceID();
    v16 = MTLoggingPlugin();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109376;
      *v19 = v4;
      *&v19[4] = 2048;
      *&v19[6] = 0;
      v11 = "Couldn't read open rows: error 0x%08X (deviceID 0x%llX)";
      v12 = v16;
      v13 = OS_LOG_TYPE_ERROR;
      v14 = 18;
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  v5 = *this;
  MTDeviceGetDeviceID();
  v6 = MTLoggingPlugin();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(this + 262);
    *buf = 134218496;
    *v19 = 0;
    *&v19[8] = 2048;
    *&v19[10] = v7;
    v20 = 2048;
    v21 = 0;
    _os_log_impl(&dword_29D381000, v6, OS_LOG_TYPE_DEBUG, "Open rows collected: current 0x%016llX, previous 0x%016llX (deviceID 0x%llX)", buf, 0x20u);
  }

  *(this + 262) = *(this + 262);
  result = 1;
LABEL_12:
  v17 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t MTEmbeddedStatsImpl::MTEmbeddedStatsImpl(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = 0;
  v4 = (a1 + 2088);
  bzero((a1 + 24), 0x809uLL);
  *v4 = 0u;
  v5 = time(0);
  srand(v5);
  CFRetain(*a1);
  dispatch_retain(*(a1 + 8));
  MTEmbeddedStatsImpl::configureAWDLogging(a1);
  bzero((a1 + 24), 0x800uLL);
  *(a1 + 16) = 0;
  return a1;
}

void MTEmbeddedStatsImpl::configureAWDLogging(dispatch_queue_t *this)
{
  v10 = *MEMORY[0x29EDCA608];
  v2 = dispatch_source_create(MEMORY[0x29EDCA5D0], 0, 0, this[1]);
  this[261] = v2;
  if (!v2)
  {
    v7 = 0;
    v3 = *this;
    MTDeviceGetDeviceID();
    v4 = MTLoggingPlugin();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v9 = v7;
      _os_log_impl(&dword_29D381000, v4, OS_LOG_TYPE_ERROR, "Couldn't create firmware log timer (deviceID 0x%llX)", buf, 0xCu);
    }

    v2 = this[261];
  }

  dispatch_source_set_timer(v2, 0, 0x13A52453C000uLL, 0x3B9ACA00uLL);
  v6[0] = MEMORY[0x29EDCA5F8];
  v6[1] = 3221225472;
  v6[2] = ___ZN19MTEmbeddedStatsImpl19configureAWDLoggingEv_block_invoke;
  v6[3] = &__block_descriptor_40_e5_v8__0l;
  v6[4] = this;
  ___ZN19MTEmbeddedStatsImpl19configureAWDLoggingEv_block_invoke(v6);
  dispatch_source_set_timer(this[261], 0x13A52453C000uLL, 0x13A52453C000uLL, 0x3B9ACA00uLL);
  dispatch_source_set_event_handler(this[261], v6);
  dispatch_resume(this[261]);
  v5 = *MEMORY[0x29EDCA608];
}

void ___ZN19MTEmbeddedStatsImpl19configureAWDLoggingEv_block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 32);
  v2 = *v1;
  Version = MTDeviceGetVersion();
  if (Version)
  {
    v4 = Version;
    v5 = *v1;
    MTDeviceGetDeviceID();
    v6 = MTLoggingPlugin();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109376;
      *v21 = v4;
      *&v21[4] = 2048;
      *&v21[6] = 0;
      v7 = "Couldn't read firmware version: error 0x%08X (deviceID 0x%llX)";
      v8 = v6;
      v9 = OS_LOG_TYPE_ERROR;
      v10 = 18;
LABEL_13:
      _os_log_impl(&dword_29D381000, v8, v9, v7, buf, v10);
    }
  }

  else
  {
    v11 = objc_alloc_init(AWDMultitouchBootEvent);
    [(AWDMultitouchBootEvent *)v11 setVersion:2863311530];
    AWDPostMetric();

    v12 = *v1;
    MTDeviceGetDeviceID();
    v13 = MTLoggingPlugin();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      *v21 = -1431655766;
      *&v21[4] = 2048;
      *&v21[6] = 0;
      _os_log_impl(&dword_29D381000, v13, OS_LOG_TYPE_DEFAULT, "Logging firmware version 0x%X to AWD (deviceID 0x%llX)", buf, 0x12u);
    }

    if (MTEmbeddedStatsImpl::updateOpenRows(v1))
    {
      v14 = *(v1 + 262);
      *(v1 + 262) = 0;
      v15 = objc_alloc_init(AWDMultitouchHardwareStatus);
      for (i = 0; i != 64; ++i)
      {
        if ((v14 >> i))
        {
          [(AWDMultitouchHardwareStatus *)v15 addOpenRows:i];
        }
      }

      AWDPostMetric();

      v17 = *v1;
      MTDeviceGetDeviceID();
      v18 = MTLoggingPlugin();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218240;
        *v21 = v14;
        *&v21[8] = 2048;
        *&v21[10] = 0;
        v7 = "Logging open rows 0x%016llX to AWD (deviceID 0x%llX)";
        v8 = v18;
        v9 = OS_LOG_TYPE_DEFAULT;
        v10 = 22;
        goto LABEL_13;
      }
    }
  }

  v19 = *MEMORY[0x29EDCA608];
}

void MTEmbeddedStatsImpl::handleContactForContactTracker(uint64_t a1, uint64_t a2, float *a3)
{
  v30 = *MEMORY[0x29EDCA608];
  v6 = a2 != 0;
  if (*a3 == v6)
  {
    if (a2)
    {
      v7 = a3[6];
      v8 = a3[7];
LABEL_8:
      a3[1] = *(a2 + 24);
      v15 = *(a2 + 8);
      *(a3 + 2) = v15;
      v16 = *(a2 + 68);
      v17 = *(a2 + 72);
      v18 = a3[8] + sqrtf(((v16 - v7) * (v16 - v7)) + ((v17 - v8) * (v17 - v8)));
      a3[7] = v17;
      a3[8] = v18;
      a3[6] = v16;
      MTEmbeddedStatsImpl::handleContactRadiiStats(v15, *(a2 + 60), *(a2 + 64), a1, a3);
    }
  }

  else
  {
    *a3 = v6;
    if (a2)
    {
      v9 = *a1;
      MTDeviceGetDeviceID();
      v10 = MTLoggingPlugin();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        v11 = *(a2 + 24);
        v12 = *(a2 + 8);
        *buf = 67109632;
        v25 = v11;
        v26 = 2048;
        v27 = v12;
        v28 = 2048;
        v29 = 0;
        _os_log_impl(&dword_29D381000, v10, OS_LOG_TYPE_DEBUG, "F%d [%f] : Touching (deviceID 0x%llX)", buf, 0x1Cu);
      }

      *(a3 + 1) = *(a2 + 8);
      *(a3 + 9) = *(a2 + 84);
      v13 = *(a1 + 17);
      *(a3 + 1) = v13;
      *(a1 + 17) = v13 + 1;
      v14 = *(a2 + 68);
      *(a3 + 3) = v14;
      v8 = *(&v14 + 1);
      v7 = *&v14;
      goto LABEL_8;
    }

    v19 = *a1;
    MTDeviceGetDeviceID();
    v20 = MTLoggingPlugin();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      v21 = *(a3 + 1);
      v22 = *(a3 + 2);
      *buf = 67109632;
      v25 = v21;
      v26 = 2048;
      v27 = v22;
      v28 = 2048;
      v29 = 0;
      _os_log_impl(&dword_29D381000, v20, OS_LOG_TYPE_DEBUG, "F%d [%f] : Not touching (deviceID 0x%llX)", buf, 0x1Cu);
    }

    MTEmbeddedStatsImpl::logAndFlushRadiiStatsWithContactIdentity(a1, a3);
    *(a3 + 2) = 0u;
    *(a3 + 3) = 0u;
    *a3 = 0u;
    *(a3 + 1) = 0u;
  }

  v23 = *MEMORY[0x29EDCA608];
}

uint64_t MTEmbeddedStatsImpl::logDurationBetweenTouches(uint64_t this, double a2)
{
  v8[1] = *MEMORY[0x29EDCA608];
  if (*(this + 2072) > 0.0)
  {
    v3 = this;
    this = rand();
    HIDWORD(v4) = -1030792151 * this + 85899344;
    LODWORD(v4) = HIDWORD(v4);
    if ((v4 >> 2) <= 0x28F5C28)
    {
      v5 = a2 - *(v3 + 2072);
      [MEMORY[0x29EDBA0F8] stringWithFormat:@"%s.%s", "com.apple.Multitouch.EmbeddedStatistics", "DurationBetweenTouches"];
      v7 = @"Duration";
      v8[0] = [MEMORY[0x29EDBA070] numberWithDouble:v5];
      [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
      this = AnalyticsSendEventLazy();
    }
  }

  v6 = *MEMORY[0x29EDCA608];
  return this;
}

uint64_t MTEmbeddedStatsImpl::logAndFlushRadiiStatsWithContactIdentity(uint64_t a1, unsigned int *a2)
{
  v11[6] = *MEMORY[0x29EDCA608];
  result = rand();
  HIDWORD(v4) = -1030792151 * result + 85899344;
  LODWORD(v4) = HIDWORD(v4);
  if ((v4 >> 2) <= 0x28F5C28)
  {
    [MEMORY[0x29EDBA0F8] stringWithFormat:@"%s.%s", "com.apple.Multitouch.EmbeddedStatistics", "LiftoffPathStats"];
    v10[0] = @"MinGeometricMean";
    LODWORD(v5) = a2[10];
    v11[0] = [MEMORY[0x29EDBA070] numberWithFloat:v5];
    v10[1] = @"MaxGeometricMean";
    LODWORD(v6) = a2[12];
    v11[1] = [MEMORY[0x29EDBA070] numberWithFloat:v6];
    v10[2] = @"EccentricityForMin";
    LODWORD(v7) = a2[11];
    v11[2] = [MEMORY[0x29EDBA070] numberWithFloat:v7];
    v10[3] = @"EccentricityForMax";
    LODWORD(v8) = a2[13];
    v11[3] = [MEMORY[0x29EDBA070] numberWithFloat:v8];
    v10[4] = @"InitialTouchIdentity";
    v11[4] = [MEMORY[0x29EDBA070] numberWithUnsignedInt:a2[14]];
    v10[5] = @"LiftoffTouchIdentity";
    v11[5] = [MEMORY[0x29EDBA070] numberWithUnsignedInt:a2[1]];
    [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v11 forKeys:v10 count:6];
    result = AnalyticsSendEventLazy();
  }

  v9 = *MEMORY[0x29EDCA608];
  return result;
}

void MTEmbeddedStatsImpl::handleContactRadiiStats(double a1, float a2, float a3, uint64_t a4, uint64_t a5)
{
  if (*(a5 + 8) == a1)
  {
    *(a5 + 40) = xmmword_29D3D78D0;
    *(a5 + 56) = *(a5 + 4);
    v5 = 3.4028e38;
  }

  else
  {
    v5 = *(a5 + 40);
  }

  v6 = sqrtf(a2 * a3);
  v7 = a2 / a3;
  if (v6 < v5)
  {
    *(a5 + 40) = v6;
    *(a5 + 44) = v7;
  }

  if (v6 > *(a5 + 48))
  {
    *(a5 + 48) = v6;
    *(a5 + 52) = v7;
  }
}

void std::shared_ptr<MTEmbeddedStatsImpl>::shared_ptr[abi:ne200100]<MTEmbeddedStatsImpl,0>(void *a1, uint64_t a2)
{
  *a1 = a2;
  v2 = a2;
  operator new();
}

void sub_29D3CFC80(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<MTEmbeddedStatsImpl>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

MTEmbeddedStatsImpl **std::unique_ptr<MTEmbeddedStatsImpl>::~unique_ptr[abi:ne200100](MTEmbeddedStatsImpl **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    MTEmbeddedStatsImpl::~MTEmbeddedStatsImpl(v2);
    MEMORY[0x29ED547D0]();
  }

  return a1;
}

void std::__shared_ptr_pointer<MTEmbeddedStatsImpl *,std::shared_ptr<MTEmbeddedStatsImpl>::__shared_ptr_default_delete<MTEmbeddedStatsImpl,MTEmbeddedStatsImpl>,std::allocator<MTEmbeddedStatsImpl>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29ED547D0);
}

MTEmbeddedStatsImpl *std::__shared_ptr_pointer<MTEmbeddedStatsImpl *,std::shared_ptr<MTEmbeddedStatsImpl>::__shared_ptr_default_delete<MTEmbeddedStatsImpl,MTEmbeddedStatsImpl>,std::allocator<MTEmbeddedStatsImpl>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    MTEmbeddedStatsImpl::~MTEmbeddedStatsImpl(result);

    JUMPOUT(0x29ED547D0);
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<MTEmbeddedStatsImpl *,std::shared_ptr<MTEmbeddedStatsImpl>::__shared_ptr_default_delete<MTEmbeddedStatsImpl,MTEmbeddedStatsImpl>,std::allocator<MTEmbeddedStatsImpl>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void MTEmbeddedStatsImpl::~MTEmbeddedStatsImpl(MTEmbeddedStatsImpl *this)
{
  v2 = *(this + 261);
  if (v2)
  {
    dispatch_source_cancel(v2);
    dispatch_release(*(this + 261));
  }

  dispatch_release(*(this + 1));
  CFRelease(*this);
}

void std::__shared_ptr_emplace<std::vector<TouchingContact>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A2413B98;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29ED547D0);
}

void std::__shared_ptr_emplace<std::vector<TouchingContact>>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<TouchingContact>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x276276276276277)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t AWDMultitouchBootEventReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v26 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          [objc_msgSend(a2 "data")];
          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v26 & 0x7F) << v5;
        if ((v26 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v10 = v6++ >= 9;
        if (v10)
        {
          v11 = 0;
          goto LABEL_15;
        }
      }

      v11 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
      {
        break;
      }

      if ((v11 >> 3) == 2)
      {
        v18 = 0;
        v19 = 0;
        v20 = 0;
        *(a1 + 20) |= 2u;
        while (1)
        {
          v28 = 0;
          v21 = [a2 position] + 1;
          if (v21 >= [a2 position] && (v22 = objc_msgSend(a2, "position") + 1, v22 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v20 |= (v28 & 0x7F) << v18;
          if ((v28 & 0x80) == 0)
          {
            break;
          }

          v18 += 7;
          v10 = v19++ >= 9;
          if (v10)
          {
            v23 = 0;
            goto LABEL_46;
          }
        }

        v23 = [a2 hasError] ? 0 : v20;
LABEL_46:
        *(a1 + 16) = v23;
      }

      else if ((v11 >> 3) == 1)
      {
        v12 = 0;
        v13 = 0;
        v14 = 0;
        *(a1 + 20) |= 1u;
        while (1)
        {
          v27 = 0;
          v15 = [a2 position] + 1;
          if (v15 >= [a2 position] && (v16 = objc_msgSend(a2, "position") + 1, v16 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v14 |= (v27 & 0x7F) << v12;
          if ((v27 & 0x80) == 0)
          {
            break;
          }

          v12 += 7;
          v10 = v13++ >= 9;
          if (v10)
          {
            v17 = 0;
            goto LABEL_42;
          }
        }

        v17 = [a2 hasError] ? 0 : v14;
LABEL_42:
        *(a1 + 8) = v17;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v25 = [a2 position];
    }

    while (v25 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDMultitouchHardwareStatusReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v31[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          [objc_msgSend(a2 "data")];
          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v31[0] & 0x7F) << v5;
        if ((v31[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v10 = v6++ >= 9;
        if (v10)
        {
          v11 = 0;
          goto LABEL_15;
        }
      }

      v11 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
      {
        break;
      }

      if ((v11 >> 3) == 2)
      {
        if ((v11 & 7) == 2)
        {
          v31[0] = 0xAAAAAAAAAAAAAAAALL;
          v31[1] = 0xAAAAAAAAAAAAAAAALL;
          result = PBReaderPlaceMark();
          if (!result)
          {
            return result;
          }

          while (1)
          {
            v19 = [a2 position];
            if (v19 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
            {
              break;
            }

            v20 = 0;
            v21 = 0;
            v22 = 0;
            while (1)
            {
              v32 = 0;
              v23 = [a2 position] + 1;
              if (v23 >= [a2 position] && (v24 = objc_msgSend(a2, "position") + 1, v24 <= objc_msgSend(a2, "length")))
              {
                [objc_msgSend(a2 "data")];
                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v22 |= (v32 & 0x7F) << v20;
              if ((v32 & 0x80) == 0)
              {
                break;
              }

              v20 += 7;
              v10 = v21++ >= 9;
              if (v10)
              {
                goto LABEL_42;
              }
            }

            [a2 hasError];
LABEL_42:
            PBRepeatedUInt32Add();
          }

          PBReaderRecallMark();
        }

        else
        {
          v25 = 0;
          v26 = 0;
          v27 = 0;
          while (1)
          {
            LOBYTE(v31[0]) = 0;
            v28 = [a2 position] + 1;
            if (v28 >= [a2 position] && (v29 = objc_msgSend(a2, "position") + 1, v29 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v27 |= (v31[0] & 0x7F) << v25;
            if ((v31[0] & 0x80) == 0)
            {
              break;
            }

            v25 += 7;
            v10 = v26++ >= 9;
            if (v10)
            {
              goto LABEL_60;
            }
          }

          [a2 hasError];
LABEL_60:
          PBRepeatedUInt32Add();
        }
      }

      else if ((v11 >> 3) == 1)
      {
        v12 = 0;
        v13 = 0;
        v14 = 0;
        *(a1 + 40) |= 1u;
        while (1)
        {
          LOBYTE(v31[0]) = 0;
          v15 = [a2 position] + 1;
          if (v15 >= [a2 position] && (v16 = objc_msgSend(a2, "position") + 1, v16 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v14 |= (v31[0] & 0x7F) << v12;
          if ((v31[0] & 0x80) == 0)
          {
            break;
          }

          v12 += 7;
          v10 = v13++ >= 9;
          if (v10)
          {
            v17 = 0;
            goto LABEL_48;
          }
        }

        if ([a2 hasError])
        {
          v17 = 0;
        }

        else
        {
          v17 = v14;
        }

LABEL_48:
        *(a1 + 32) = v17;
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v30 = [a2 position];
    }

    while (v30 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void MultitouchHIDClass::start(int a1, NSObject *a2)
{
  v4 = *MEMORY[0x29EDCA608];
  v3[0] = 67109120;
  v3[1] = a1;
  _os_log_error_impl(&dword_29D381000, a2, OS_LOG_TYPE_ERROR, "Invalid parserType: %d", v3, 8u);
  v2 = *MEMORY[0x29EDCA608];
}

void IOHIDPlugInFactory_cold_1()
{
  v2 = *MEMORY[0x29EDCA608];
  dlerror();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(&dword_29D381000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "dlsym returned null for symbol '%{public}@': %{public}s", v1, 0x16u);
  v0 = *MEMORY[0x29EDCA608];
}

void IOHIDPlugInFactory_cold_2()
{
  v2 = *MEMORY[0x29EDCA608];
  dlerror();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(&dword_29D381000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "dlopen failed for %{public}@: %{public}s", v1, 0x16u);
  v0 = *MEMORY[0x29EDCA608];
}

void MTHandMotion::clearHandMotion(char a1, NSObject *a2)
{
  v4 = *MEMORY[0x29EDCA608];
  v3[0] = 67109120;
  v3[1] = a1 & 1;
  _os_log_debug_impl(&dword_29D381000, a2, OS_LOG_TYPE_DEBUG, "\tDHML:  MTHandMotion::resetHandMotion(%d)", v3, 8u);
  v2 = *MEMORY[0x29EDCA608];
}

void MTParserPath::filterContactForScreenUI(uint64_t a1, unsigned int *a2, NSObject *a3)
{
  v10 = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 40);
  v5 = *a2;
  v7[0] = 67109378;
  v7[1] = v4;
  v8 = 2080;
  v9 = MTGetPathStageName();
  _os_log_debug_impl(&dword_29D381000, a3, OS_LOG_TYPE_DEBUG, "\tDHML:  P%d Hover (stage %s -- ignoring motion)", v7, 0x12u);
  v6 = *MEMORY[0x29EDCA608];
}

void MTParserPath::filterContactForScreenUI(uint64_t a1, int *a2, os_log_t log)
{
  v12 = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 40);
  v4 = *a2;
  v5 = *(a1 + 144);
  v7[0] = 67109632;
  v7[1] = v3;
  v8 = 1024;
  v9 = v4;
  v10 = 1024;
  v11 = v5;
  _os_log_debug_impl(&dword_29D381000, log, OS_LOG_TYPE_DEBUG, "\tDHML:  P%d Identity=%d <- %d (ignoring motion)", v7, 0x14u);
  v6 = *MEMORY[0x29EDCA608];
}

uint64_t MTSLGLogger::prepare(MTSLGLogger *this)
{
  result = dlopen([@"/System/Library/PrivateFrameworks/StudyLog.framework/StudyLog" UTF8String], 1);
  *this = result;
  if (result)
  {
    if (qword_2A1A12EF8 != -1)
    {
      dispatch_once(&qword_2A1A12EF8, &__block_literal_global);
    }

    if (_MergedGlobals)
    {
      v3 = MTLoggingPlugin();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        *v4 = 0;
        _os_log_impl(&dword_29D381000, v3, OS_LOG_TYPE_DEFAULT, "StudyLog logger: prepared", v4, 2u);
      }

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

MTSLGLogger *MTSLGLogger::logString(MTSLGLogger *this, const __CFString *a2)
{
  v3 = NSSelectorFromString(&cfstr_Sharedinstance.isa);
  result = NSSelectorFromString(&cfstr_Log.isa);
  if (a2)
  {
    if (_MergedGlobals)
    {
      v5 = result;
      result = MTSLGLogger::isSLGEnabled(result);
      if (result)
      {
        v6 = [_MergedGlobals performSelector:v3];

        return [v6 performSelector:v5 withObject:a2];
      }
    }
  }

  return result;
}

void MTSLGLogger::logPaths(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v5 = NSSelectorFromString(&cfstr_Sharedinstance.isa);
  v6 = NSSelectorFromString(&cfstr_Log.isa);
  if (a3)
  {
    if (a2)
    {
      if (_MergedGlobals)
      {
        v7 = v6;
        if (MTSLGLogger::isSLGEnabled(v6))
        {
          v8 = objc_autoreleasePoolPush();
          PathsDescriptor = MTSLGLogger::createPathsDescriptor(v8, a2, a3);
          if (PathsDescriptor)
          {
            v10 = PathsDescriptor;
            [objc_msgSend(_MergedGlobals performSelector:{v5), "performSelector:withObject:", v7, PathsDescriptor}];
            CFRelease(v10);
          }

          objc_autoreleasePoolPop(v8);
        }
      }
    }
  }
}

void *MTSLGLogger::createPathsDescriptor(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = 0;
  v27[22] = *MEMORY[0x29EDCA608];
  if (a3 && a2 && _MergedGlobals)
  {
    v3 = objc_opt_new();
    v6 = 0;
    do
    {
      v26[0] = @"frame_number";
      v27[0] = [MEMORY[0x29EDBA070] numberWithLong:*(a2 + v6)];
      v26[1] = @"device_timestamp";
      v7 = *(a2 + v6 + 8);
      *&v7 = v7;
      v27[1] = [MEMORY[0x29EDB9F90] numberWithFloat:v7];
      v26[2] = @"path_id";
      v27[2] = [MEMORY[0x29EDBA070] numberWithInt:*(a2 + v6 + 16)];
      v26[3] = @"path_stage";
      v27[3] = [MEMORY[0x29EDBA070] numberWithUnsignedInt:*(a2 + v6 + 20)];
      v26[4] = @"finger_id";
      v27[4] = [MEMORY[0x29EDBA070] numberWithUnsignedInt:*(a2 + v6 + 24)];
      v26[5] = @"hand_id";
      v27[5] = [MEMORY[0x29EDBA070] numberWithInt:*(a2 + v6 + 28)];
      v26[6] = @"position_x";
      LODWORD(v8) = *(a2 + v6 + 32);
      v27[6] = [MEMORY[0x29EDB9F90] numberWithFloat:v8];
      v26[7] = @"position_y";
      LODWORD(v9) = *(a2 + v6 + 36);
      v27[7] = [MEMORY[0x29EDB9F90] numberWithFloat:v9];
      v26[8] = @"velocity_x";
      LODWORD(v10) = *(a2 + v6 + 40);
      v27[8] = [MEMORY[0x29EDB9F90] numberWithFloat:v10];
      v26[9] = @"velocity_y";
      LODWORD(v11) = *(a2 + v6 + 44);
      v27[9] = [MEMORY[0x29EDB9F90] numberWithFloat:v11];
      v26[10] = @"proximity";
      LODWORD(v12) = *(a2 + v6 + 48);
      v27[10] = [MEMORY[0x29EDB9F90] numberWithFloat:v12];
      v26[11] = @"force";
      LODWORD(v13) = *(a2 + v6 + 52);
      v27[11] = [MEMORY[0x29EDB9F90] numberWithFloat:v13];
      v26[12] = @"orientation";
      LODWORD(v14) = *(a2 + v6 + 56);
      v27[12] = [MEMORY[0x29EDB9F90] numberWithFloat:v14];
      v26[13] = @"major_radius_mm";
      LODWORD(v15) = *(a2 + v6 + 60);
      v27[13] = [MEMORY[0x29EDB9F90] numberWithFloat:v15];
      v26[14] = @"minor_radius_mm";
      LODWORD(v16) = *(a2 + v6 + 64);
      v27[14] = [MEMORY[0x29EDB9F90] numberWithFloat:v16];
      v26[15] = @"position_mm_x";
      LODWORD(v17) = *(a2 + v6 + 68);
      v27[15] = [MEMORY[0x29EDB9F90] numberWithFloat:v17];
      v26[16] = @"position_mm_y";
      LODWORD(v18) = *(a2 + v6 + 72);
      v27[16] = [MEMORY[0x29EDB9F90] numberWithFloat:v18];
      v26[17] = @"velocity_mm_s_x";
      LODWORD(v19) = *(a2 + v6 + 76);
      v27[17] = [MEMORY[0x29EDB9F90] numberWithFloat:v19];
      v26[18] = @"velocity_mm_s_y";
      LODWORD(v20) = *(a2 + v6 + 80);
      v27[18] = [MEMORY[0x29EDB9F90] numberWithFloat:v20];
      v26[19] = @"path_flags";
      v27[19] = [MEMORY[0x29EDBA0F8] stringWithFormat:@"0x%x", *(a2 + v6 + 84)];
      v26[20] = @"tilt";
      LODWORD(v21) = *(a2 + v6 + 88);
      v27[20] = [MEMORY[0x29EDB9F90] numberWithFloat:v21];
      v26[21] = @"zdensity";
      LODWORD(v22) = *(a2 + v6 + 92);
      v27[21] = [MEMORY[0x29EDB9F90] numberWithFloat:v22];
      v23 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v27 forKeys:v26 count:22];
      [v3 setObject:v23 forKey:{objc_msgSend(MEMORY[0x29EDBA0F8], "stringWithFormat:", @"path%d", *(a2 + v6 + 16))}];
      v6 += 96;
    }

    while (96 * a3 != v6);
  }

  v24 = *MEMORY[0x29EDCA608];
  return v3;
}

void MTSLGLogger::logImages(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = NSSelectorFromString(&cfstr_Sharedinstance.isa);
  v6 = NSSelectorFromString(&cfstr_Log.isa);
  if (a3)
  {
    if (a2)
    {
      if (_MergedGlobals)
      {
        v7 = v6;
        if (MTSLGLogger::isSLGEnabled(v6))
        {
          v8 = objc_autoreleasePoolPush();
          ImageDictionary = MTSLGLogger::createImageDictionary(v8, a2, a3);
          if (ImageDictionary)
          {
            [objc_msgSend(_MergedGlobals performSelector:{v5), "performSelector:withObject:", v7, ImageDictionary}];
          }

          objc_autoreleasePoolPop(v8);
        }
      }
    }
  }
}

uint64_t MTSLGLogger::createImageDictionary(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9[11] = *MEMORY[0x29EDCA608];
  result = [MEMORY[0x29EDB8DA0] dataWithBytesNoCopy:a2 length:2 * *(a3 + 16) * *(a3 + 18) freeWhenDone:0];
  if (result)
  {
    v5 = result;
    v8[0] = @"frame_number";
    v9[0] = [MEMORY[0x29EDBA070] numberWithLong:*a3];
    v8[1] = @"device_timestamp";
    v6 = *(a3 + 8);
    *&v6 = v6;
    v9[1] = [MEMORY[0x29EDB9F90] numberWithFloat:v6];
    v8[2] = @"width";
    v9[2] = [MEMORY[0x29EDBA070] numberWithShort:*(a3 + 16)];
    v8[3] = @"height";
    v9[3] = [MEMORY[0x29EDBA070] numberWithShort:*(a3 + 18)];
    v8[4] = @"image_region_mask";
    v9[4] = [MEMORY[0x29EDBA070] numberWithUnsignedInt:*(a3 + 20)];
    v8[5] = @"processing_step_mask";
    v9[5] = [MEMORY[0x29EDBA070] numberWithUnsignedInt:*(a3 + 24)];
    v8[6] = @"valid_pixel_ceiling";
    v9[6] = [MEMORY[0x29EDBA070] numberWithInt:*(a3 + 28)];
    v8[7] = @"valid_pixel_floor";
    v9[7] = [MEMORY[0x29EDBA070] numberWithInt:*(a3 + 32)];
    v8[8] = @"fullscale_range";
    v9[8] = [MEMORY[0x29EDBA070] numberWithUnsignedShort:*(a3 + 36)];
    v8[9] = @"row0_at_bottom";
    v9[9] = [MEMORY[0x29EDB9F90] numberWithBool:*(a3 + 38)];
    v8[10] = @"image";
    v9[10] = [v5 base64EncodedStringWithOptions:0];
    result = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v9 forKeys:v8 count:11];
  }

  v7 = *MEMORY[0x29EDCA608];
  return result;
}

void MTSLGLogger::registerControlInterface(unsigned int *a1, int a2, os_log_t log)
{
  v8 = *MEMORY[0x29EDCA608];
  v3 = *a1;
  v5[0] = 67109376;
  v5[1] = a2;
  v6 = 2048;
  v7 = v3;
  _os_log_error_impl(&dword_29D381000, log, OS_LOG_TYPE_ERROR, "StudyLog logger: could not register for control interface 0x%08x (deviceIterator: 0x%08jx)", v5, 0x12u);
  v4 = *MEMORY[0x29EDCA608];
}

void MTSLGLogger::addControlService()
{
  v7 = *MEMORY[0x29EDCA608];
  v0 = MTLoggingPlugin();
  if (OUTLINED_FUNCTION_1(v0))
  {
    OUTLINED_FUNCTION_0_0();
    _os_log_error_impl(v2, v3, v4, v5, v6, 8u);
  }

  v1 = *MEMORY[0x29EDCA608];
}

{
  v0 = MTLoggingPlugin();
  if (OUTLINED_FUNCTION_1(v0))
  {
    OUTLINED_FUNCTION_0_0();
    _os_log_error_impl(v1, v2, v3, v4, v5, 2u);
  }
}

{
  v0 = MTLoggingPlugin();
  if (OUTLINED_FUNCTION_1(v0))
  {
    OUTLINED_FUNCTION_0_0();
    _os_log_error_impl(v1, v2, v3, v4, v5, 2u);
  }
}

{
  v0 = MTLoggingPlugin();
  if (OUTLINED_FUNCTION_1(v0))
  {
    OUTLINED_FUNCTION_0_0();
    _os_log_error_impl(v1, v2, v3, v4, v5, 2u);
  }
}

void MTMouseEmbeddedEventDispatcher::handleEvent(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v45 = *MEMORY[0x29EDCA608];
  if (IOHIDEventGetType() != 11)
  {
    v32 = MTLoggingPlugin();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v36 = "[Error] ";
      v37 = 2080;
      v38 = "MTMouseEmbeddedEventDispatcher::";
      v39 = 2080;
      v40 = "handleEvent";
      v41 = 1024;
      LODWORD(v42) = IOHIDEventGetType();
      _os_log_impl(&dword_29D381000, v32, OS_LOG_TYPE_ERROR, "[HID] [MT] %s%s%s Unexpected event type: %u Eating it.", buf, 0x26u);
    }
  }

  Children = IOHIDEventGetChildren();
  v7 = *MEMORY[0x29EDB8ED8];
  if (Children)
  {
    v8 = IOHIDEventGetChildren();
    Copy = CFArrayCreateCopy(v7, v8);
    Count = CFArrayGetCount(Copy);
  }

  else
  {
    Count = 0;
    Copy = 0;
  }

  mach_absolute_time();
  v11 = *(a1 + 524);
  RelativePointerEvent = IOHIDEventCreateRelativePointerEvent();
  if (RelativePointerEvent)
  {
    v13 = RelativePointerEvent;
    v34 = a1;
    v33 = a3;
    if (Count >= 1)
    {
      v14 = 0;
      v15 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(Copy, v15);
        Type = IOHIDEventGetType();
        if (Type != 11)
        {
          break;
        }

LABEL_27:
        if (Count == ++v15)
        {
          goto LABEL_32;
        }
      }

      if (Type == 6)
      {
        if (v14)
        {
          v18 = MTLoggingPlugin();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315650;
            OUTLINED_FUNCTION_0_1();
            OUTLINED_FUNCTION_1_0();
            v40 = "handleEvent";
            _os_log_impl(&dword_29D381000, v18, OS_LOG_TYPE_DEBUG, "[HID] [MT] %s%s%s Multiple scroll events. Merging.", buf, 0x20u);
          }

          IOHIDEventGetFloatValue();
          IOHIDEventGetFloatValue();
          IOHIDEventSetFloatValue();
          IOHIDEventGetFloatValue();
          IOHIDEventGetFloatValue();
          IOHIDEventSetFloatValue();
          IOHIDEventGetFloatValue();
          IOHIDEventGetFloatValue();
          IOHIDEventSetFloatValue();
          IOHIDEventGetPhase();
          IOHIDEventSetPhase();
        }

        else
        {
          v14 = IOHIDEventCreateCopy();
          IOHIDEventAppendEvent();
        }

        goto LABEL_26;
      }

      if (IOHIDEventGetType() == 1)
      {
        IntegerValue = IOHIDEventGetIntegerValue();
        v20 = IOHIDEventGetIntegerValue();
        v21 = MTLoggingPlugin();
        v22 = v21;
        if (IntegerValue != 65280 || v20 != 1)
        {
          if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_26;
          }

          *buf = 136316162;
          OUTLINED_FUNCTION_0_1();
          OUTLINED_FUNCTION_1_0();
          v40 = "handleEvent";
          v41 = 2048;
          v42 = IntegerValue;
          v43 = 2048;
          v44 = v20;
          v24 = v22;
          v25 = OS_LOG_TYPE_ERROR;
          v26 = "[HID] [MT] %s%s%s Unexpected vendor-defined child event with usage page %lu and usage %lu. Eating it";
          v27 = 52;
          goto LABEL_24;
        }

        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315650;
          OUTLINED_FUNCTION_0_1();
          OUTLINED_FUNCTION_1_0();
          v40 = "handleEvent";
          v24 = v22;
          v25 = OS_LOG_TYPE_DEBUG;
          v26 = "[HID] [MT] %s%s%s Vendor-defined Momentum event. Ignoring.";
          v27 = 32;
LABEL_24:
          _os_log_impl(&dword_29D381000, v24, v25, v26, buf, v27);
        }
      }

      else
      {
        v28 = MTLoggingPlugin();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315906;
          OUTLINED_FUNCTION_0_1();
          OUTLINED_FUNCTION_1_0();
          v40 = "handleEvent";
          v41 = 2114;
          v42 = ValueAtIndex;
          v24 = v28;
          v25 = OS_LOG_TYPE_ERROR;
          v26 = "[HID] [MT] %s%s%s Unexpected child event: %{public}@. Eating it";
          v27 = 42;
          goto LABEL_24;
        }
      }

LABEL_26:
      IOHIDEventRemoveEvent();
      goto LABEL_27;
    }

    v14 = 0;
LABEL_32:
    IOHIDEventAppendEvent();
    if (MTMouseEmbeddedEventDispatcher::shouldDispatchPointerEvent(v34, v30, a2, v14))
    {
      MTSimpleEventDispatcher::dispatchEvent(v34, v13, v33);
    }

    CFRelease(v13);
    if (Copy)
    {
      goto LABEL_35;
    }
  }

  else
  {
    v14 = 0;
    if (Copy)
    {
LABEL_35:
      CFRelease(Copy);
    }
  }

  if (v14)
  {
    CFRelease(v14);
  }

  v31 = *MEMORY[0x29EDCA608];
}

uint64_t MTTelemetryAnalyticsReporter::start(uint64_t a1, CFTypeRef cf)
{
  if (*(a1 + 8))
  {
    return 0;
  }

  v2 = 3758097086;
  if (!cf)
  {
    return 3758097090;
  }

  *a1 = CFRetain(cf);
  if (MTRegisterFullFrameCallback())
  {
    v2 = 0;
    *(a1 + 8) = 1;
  }

  return v2;
}

void MTTrackpadEmbeddedEventDispatcher::handleEvent(unsigned int *a1, uint64_t a2, int a3)
{
  v262 = *MEMORY[0x29EDCA608];
  if (IOHIDEventGetType() == 11)
  {
    if (IOHIDEventGetIntegerValue() == 1)
    {
      goto LABEL_3;
    }

    v235 = MTLoggingPlugin();
    if (!os_log_type_enabled(v235, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_3;
    }

    *buf = 136315650;
    v254 = "[Error] ";
    v255 = 2080;
    v256 = "MTTrackpadEmbeddedEventDispatcher::";
    v257 = 2080;
    v258 = "handleEvent";
    v232 = "[HID] [MT] %s%s%s Unexpected digitizer event. Eating it.";
    v233 = v235;
    v234 = 32;
  }

  else
  {
    v231 = MTLoggingPlugin();
    if (!os_log_type_enabled(v231, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_3;
    }

    IOHIDEventGetType();
    *buf = 136315906;
    v254 = "[Error] ";
    v255 = 2080;
    v256 = "MTTrackpadEmbeddedEventDispatcher::";
    v257 = 2080;
    OUTLINED_FUNCTION_4();
    v232 = "[HID] [MT] %s%s%s Unexpected event type: %u Eating it.";
    v233 = v231;
    v234 = 38;
  }

  _os_log_impl(&dword_29D381000, v233, OS_LOG_TYPE_ERROR, v232, buf, v234);
LABEL_3:
  HIDWORD(v244) = a3;
  (*(*a1 + 112))(a1);
  Children = IOHIDEventGetChildren();
  v7 = *MEMORY[0x29EDB8ED8];
  if (Children)
  {
    v8 = IOHIDEventGetChildren();
    Copy = CFArrayCreateCopy(v7, v8);
    Count = CFArrayGetCount(Copy);
  }

  else
  {
    Count = 0;
    Copy = 0;
  }

  Mutable = CFArrayCreateMutable(v7, 0, MEMORY[0x29EDB9000]);
  mach_absolute_time();
  v12 = a1[138];
  RelativePointerEvent = IOHIDEventCreateRelativePointerEvent();
  v15 = 0;
  v251 = RelativePointerEvent;
  if (!Mutable)
  {
    v247 = 0;
    cf = 0;
    v250 = 0;
    ButtonEvent = 0;
    goto LABEL_114;
  }

  v247 = 0;
  v248 = v7;
  cf = 0;
  v250 = 0;
  ButtonEvent = 0;
  if (!RelativePointerEvent)
  {
    goto LABEL_114;
  }

  if (Count >= 1)
  {
    HIDWORD(v246) = 0;
    ButtonEvent = 0;
    cf = 0;
    v250 = 0;
    v247 = 0;
    v245 = 0;
    v17 = 0;
    *&v14 = 136315650;
    v242 = v14;
    *&v14 = 136315906;
    v239 = v14;
    *&v14 = 136316162;
    v238 = v14;
    v18 = RelativePointerEvent;
    v252 = Count;
    while (1)
    {
      CFArrayGetValueAtIndex(Copy, v17);
      if (IOHIDEventGetType() != 11)
      {
        break;
      }

LABEL_68:
      if (Count == ++v17)
      {
        goto LABEL_107;
      }
    }

    if (IOHIDEventGetType() == 17)
    {
      if (*(a1 + 549))
      {
        goto LABEL_65;
      }

      IOHIDEventGetFloatValue();
      OUTLINED_FUNCTION_12();
      IOHIDEventGetFloatValue();
      if ((v246 & 0x100000000) == 0)
      {
        IOHIDEventSetFloatValue();
        IOHIDEventSetFloatValue();
        HIDWORD(v246) = 1;
        goto LABEL_65;
      }

      v148 = MTLoggingPlugin();
      v149 = OUTLINED_FUNCTION_15(v148);
      if (v149)
      {
        OUTLINED_FUNCTION_5(v149, v150, v151, v152, v153, v154, v155, v156, v236, v237, v238, *(&v238 + 1), v239, *(&v239 + 1), v240, v241, v242);
        OUTLINED_FUNCTION_0_2();
        OUTLINED_FUNCTION_2();
        OUTLINED_FUNCTION_6();
        OUTLINED_FUNCTION_9();
        _os_log_impl(v157, v158, v159, "[HID] [MT] %s%s%s Unexpected multiple pointer events. Eating it.", v160, 0x20u);
      }

      HIDWORD(v246) = 1;
      goto LABEL_74;
    }

    if (IOHIDEventGetType() == 2)
    {
      IntegerValue = IOHIDEventGetIntegerValue();
      a1[132] = IntegerValue;
      v20 = a1[133] | IntegerValue;
      a1[138] = v20;
      if (*(a1 + 520) == 1 && (v20 & 1) != 0)
      {
        a1[138] = v20 & 0xFFFFFFFC | 2;
      }

      if (ButtonEvent)
      {
        mach_absolute_time();
        v21 = a1[138];
        v22 = a1[131];
        v23 = IOHIDEventCreateRelativePointerEvent();
        if (v23)
        {
          v24 = v23;
          CFArrayAppendValue(Mutable, v23);
          CFRelease(v24);
        }

        v18 = v251;
      }

      else
      {
        IOHIDEventSetFloatValue();
        mach_absolute_time();
        v57 = a1[138];
        IOHIDEventGetEventFlags();
        ButtonEvent = IOHIDEventCreateButtonEvent();
        if (!ButtonEvent)
        {
          goto LABEL_113;
        }

        v58 = a1[138];
        if ((v58 & (v58 - 1)) != 0)
        {
          goto LABEL_113;
        }

        v18 = v58 != 0;
        IOHIDEventSetIntegerValue();
        v59 = IOHIDEventSetIntegerValue();
        OUTLINED_FUNCTION_8(v59, v60, v61, v62, v63, v64, v65, v66, v236, v237, v238, *(&v238 + 1), v239, *(&v239 + 1), v240, v241, v242, *(&v242 + 1), v243, v244, v245, v246, v247, v248, cf, v250, v251);
        IOHIDEventAppendEvent();
      }

      a1[131] = a1[138];
      goto LABEL_65;
    }

    if (IOHIDEventGetType() == 6)
    {
      if (*(a1 + 548) != 1)
      {
        goto LABEL_65;
      }

      IOHIDEventGetFloatValue();
      v26 = v25;
      OUTLINED_FUNCTION_12();
      IOHIDEventGetFloatValue();
      v28 = v27;
      IOHIDEventGetFloatValue();
      v31 = v26 != 0.0;
      if (v28 != 0.0)
      {
        v31 = 1;
      }

      v30 = v29;
      v32 = v30 != 0.0 || v31;
      NextScrollPhase = MTTrackpadEventDispatcher::getNextScrollPhase(a1, a1[134], v32);
      a1[134] = NextScrollPhase;
      if (!MTTrackpadEventDispatcher::getHIDPhaseFromScrollPhase(a1, NextScrollPhase))
      {
        goto LABEL_65;
      }

      v241 = ButtonEvent;
      if (cf)
      {
        v34 = MTLoggingPlugin();
        v35 = os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG);
        if (v35)
        {
          OUTLINED_FUNCTION_5(v35, v36, v37, v38, v39, v40, v41, v42, v236, v237, v238, *(&v238 + 1), v239, *(&v239 + 1), v240, ButtonEvent, v242);
          OUTLINED_FUNCTION_0_2();
          OUTLINED_FUNCTION_2();
          OUTLINED_FUNCTION_6();
          OUTLINED_FUNCTION_14();
          _os_log_impl(v43, v44, v45, "[HID] [MT] %s%s%s Multiple scroll events. Merging.", v46, 0x20u);
        }

        v47 = cf;
        IOHIDEventGetFloatValue();
        IOHIDEventSetFloatValue();
        IOHIDEventGetFloatValue();
        IOHIDEventSetFloatValue();
        IOHIDEventGetFloatValue();
        IOHIDEventSetFloatValue();
        v18 = v251;
      }

      else
      {
        v18 = mach_absolute_time();
        OUTLINED_FUNCTION_3();
        OUTLINED_FUNCTION_1_1();
        ScrollEvent = IOHIDEventCreateScrollEvent();
        if (!ScrollEvent)
        {
          cf = 0;
          v15 = v245;
          goto LABEL_114;
        }

        v47 = ScrollEvent;
        OUTLINED_FUNCTION_8(ScrollEvent, v98, v99, v100, v101, v102, v103, v104, v236, v237, v238, *(&v238 + 1), v239, *(&v239 + 1), v240, v241, v242, *(&v242 + 1), v243, v244, v245, v246, v247, v248, 0, v250, v251);
        IOHIDEventAppendEvent();
      }

      cf = v47;
      IOHIDEventSetPhase();
      goto LABEL_64;
    }

    if (IOHIDEventGetType() == 7)
    {
      IOHIDEventGetFloatValue();
      OUTLINED_FUNCTION_12();
      IOHIDEventGetFloatValue();
      IOHIDEventGetFloatValue();
      IOHIDEventGetPhase();
      if (!v250)
      {
        OUTLINED_FUNCTION_10();
        OUTLINED_FUNCTION_3();
        OUTLINED_FUNCTION_1_1();
        ScaleEvent = IOHIDEventCreateScaleEvent();
        if (!ScaleEvent)
        {
          v250 = 0;
          goto LABEL_113;
        }

        v18 = ScaleEvent;
        v49 = IOHIDEventSetPhase();
        OUTLINED_FUNCTION_8(v49, v18, v50, v51, v52, v53, v54, v55, v236, v237, v238, *(&v238 + 1), v239, *(&v239 + 1), v240, v241, v242, *(&v242 + 1), v243, v244, v245, v246, v247, v248, cf, 0, v251);
        v250 = v56;
        goto LABEL_60;
      }

      v161 = MTLoggingPlugin();
      v162 = OUTLINED_FUNCTION_15(v161);
      if (v162)
      {
        OUTLINED_FUNCTION_5(v162, v163, v164, v165, v166, v167, v168, v169, v236, v237, v238, *(&v238 + 1), v239, *(&v239 + 1), v240, v241, v242);
        OUTLINED_FUNCTION_0_2();
        OUTLINED_FUNCTION_2();
        OUTLINED_FUNCTION_6();
        OUTLINED_FUNCTION_9();
        v119 = "[HID] [MT] %s%s%s Unexpected multiple scale events. Eating the latest.";
        goto LABEL_73;
      }

      goto LABEL_74;
    }

    if (IOHIDEventGetType() == 5)
    {
      IOHIDEventGetFloatValue();
      IOHIDEventGetFloatValue();
      IOHIDEventGetFloatValue();
      Phase = IOHIDEventGetPhase();
      if (!v247)
      {
        v18 = Phase;
        OUTLINED_FUNCTION_10();
        OUTLINED_FUNCTION_3();
        RotationEvent = IOHIDEventCreateRotationEvent();
        if (!RotationEvent)
        {
          v247 = 0;
          goto LABEL_113;
        }

        v69 = Copy;
        v70 = ButtonEvent;
        v71 = RotationEvent;
        v72 = IOHIDEventSetPhase();
        OUTLINED_FUNCTION_8(v72, v73, v74, v75, v76, v77, v78, v79, v236, a2, v238, *(&v238 + 1), v239, *(&v239 + 1), v240, v241, v242, *(&v242 + 1), v243, v244, v245, v246, 0, v248, cf, v250, v251);
        v247 = v71;
        ButtonEvent = v70;
        Copy = v69;
        a2 = v237;
        goto LABEL_60;
      }

      v170 = MTLoggingPlugin();
      v171 = OUTLINED_FUNCTION_15(v170);
      if (v171)
      {
        OUTLINED_FUNCTION_5(v171, v172, v173, v174, v175, v176, v177, v178, v236, v237, v238, *(&v238 + 1), v239, *(&v239 + 1), v240, v241, v242);
        OUTLINED_FUNCTION_0_2();
        OUTLINED_FUNCTION_2();
        OUTLINED_FUNCTION_6();
        OUTLINED_FUNCTION_9();
        v119 = "[HID] [MT] %s%s%s Unexpected multiple rotate events. Eating the latest.";
        goto LABEL_73;
      }

      goto LABEL_74;
    }

    if (IOHIDEventGetType() == 4)
    {
      IOHIDEventGetFloatValue();
      IOHIDEventGetFloatValue();
      IOHIDEventGetFloatValue();
      IOHIDEventGetPhase();
      if (!v245)
      {
        OUTLINED_FUNCTION_10();
        OUTLINED_FUNCTION_3();
        OUTLINED_FUNCTION_1_1();
        TranslationEvent = IOHIDEventCreateTranslationEvent();
        if (!TranslationEvent)
        {
          v15 = 0;
          goto LABEL_114;
        }

        v81 = TranslationEvent;
        IOHIDEventSetPhase();
        v245 = v81;
        v18 = v251;
        goto LABEL_60;
      }

      v179 = MTLoggingPlugin();
      v180 = OUTLINED_FUNCTION_15(v179);
      if (v180)
      {
        OUTLINED_FUNCTION_5(v180, v181, v182, v183, v184, v185, v186, v187, v236, v237, v238, *(&v238 + 1), v239, *(&v239 + 1), v240, v241, v242);
        OUTLINED_FUNCTION_0_2();
        OUTLINED_FUNCTION_2();
        OUTLINED_FUNCTION_6();
        OUTLINED_FUNCTION_9();
        v119 = "[HID] [MT] %s%s%s Unexpected multiple translate events. Eating the latest.";
        goto LABEL_73;
      }

      goto LABEL_74;
    }

    if (IOHIDEventGetType() == 1)
    {
      v82 = IOHIDEventGetIntegerValue();
      v83 = IOHIDEventGetIntegerValue();
      if (v82 == 65280 && v83 == 17)
      {
        v18 = MTLoggingPlugin();
        v85 = os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG);
        if (v85)
        {
          OUTLINED_FUNCTION_5(v85, v86, v87, v88, v89, v90, v91, v92, v236, v237, v238, *(&v238 + 1), v239, *(&v239 + 1), v240, v241, v242);
          OUTLINED_FUNCTION_0_2();
          OUTLINED_FUNCTION_2();
          OUTLINED_FUNCTION_6();
          OUTLINED_FUNCTION_14();
          _os_log_impl(v93, v94, v95, "[HID] [MT] %s%s%s Vendor-defined Force event. Appending!", v96, 0x20u);
        }

        OUTLINED_FUNCTION_8(v85, v86, v87, v88, v89, v90, v91, v92, v236, v237, v238, *(&v238 + 1), v239, *(&v239 + 1), v240, v241, v242, *(&v242 + 1), v243, v244, v245, v246, v247, v248, cf, v250, v251);
LABEL_60:
        IOHIDEventAppendEvent();
        goto LABEL_65;
      }

      v188 = v83;
      v241 = ButtonEvent;
      v189 = MTLoggingPlugin();
      if (v82 != 65280 || v188 != 1)
      {
        if (!os_log_type_enabled(v189, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_103;
        }

        *buf = v238;
        OUTLINED_FUNCTION_0_2();
        OUTLINED_FUNCTION_2();
        OUTLINED_FUNCTION_7();
        v259 = v82;
        v260 = v225;
        v261 = v188;
        OUTLINED_FUNCTION_9();
        v203 = "[HID] [MT] %s%s%s Unexpected vendor-defined child event with usage page %lu and usage %lu. Eating it";
        v204 = 52;
        goto LABEL_102;
      }

      v191 = os_log_type_enabled(v189, OS_LOG_TYPE_DEBUG);
      if (v191)
      {
        OUTLINED_FUNCTION_5(v191, v192, v193, v194, v195, v196, v197, v198, v236, v237, v238, *(&v238 + 1), v239, *(&v239 + 1), v240, ButtonEvent, v242);
        OUTLINED_FUNCTION_0_2();
        OUTLINED_FUNCTION_2();
        OUTLINED_FUNCTION_6();
        OUTLINED_FUNCTION_14();
        v203 = "[HID] [MT] %s%s%s Vendor-defined Momentum event. Ignoring.";
        v204 = 32;
LABEL_102:
        _os_log_impl(v199, v200, v201, v203, v202, v204);
      }

LABEL_103:
      v18 = v251;
LABEL_64:
      ButtonEvent = v241;
      goto LABEL_65;
    }

    if (IOHIDEventGetType() == 32)
    {
      v106 = MTLoggingPlugin();
      v107 = os_log_type_enabled(v106, OS_LOG_TYPE_DEBUG);
      if (v107)
      {
        OUTLINED_FUNCTION_5(v107, v108, v109, v110, v111, v112, v113, v114, v236, v237, v238, *(&v238 + 1), v239, *(&v239 + 1), v240, v241, v242);
        OUTLINED_FUNCTION_0_2();
        OUTLINED_FUNCTION_2();
        OUTLINED_FUNCTION_6();
        OUTLINED_FUNCTION_14();
        v119 = "[HID] [MT] %s%s%s Force event. Ignoring.";
LABEL_73:
        _os_log_impl(v115, v116, v117, v119, v118, 0x20u);
      }

LABEL_74:
      v18 = v251;
LABEL_65:
      if (IOHIDEventGetChildren())
      {
        v105 = IOHIDEventGetChildren();
        if (CFArrayGetCount(v105) >= 1)
        {
          v135 = MTLoggingPlugin();
          if (os_log_type_enabled(v135, OS_LOG_TYPE_ERROR))
          {
            Type = IOHIDEventGetType();
            OUTLINED_FUNCTION_11(Type, v137, v138, v139, v140, v141, v142, v143, v236, v237, v238, *(&v238 + 1), v239);
            OUTLINED_FUNCTION_0_2();
            OUTLINED_FUNCTION_2();
            OUTLINED_FUNCTION_4();
            OUTLINED_FUNCTION_13();
            _os_log_impl(v144, v145, v146, "[HID] [MT] %s%s%s Unexpected grandchild events inside event type: %u. Eating them", v147, 0x26u);
          }
        }
      }

      IOHIDEventRemoveEvent();
      Count = v252;
      goto LABEL_68;
    }

    if (IOHIDEventGetType() == 3)
    {
      v241 = ButtonEvent;
      v205 = MTLoggingPlugin();
      if (!os_log_type_enabled(v205, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_103;
      }

      OUTLINED_FUNCTION_12();
      v206 = IOHIDEventGetIntegerValue();
      OUTLINED_FUNCTION_11(v206, v207, v208, v209, v210, v211, v212, v213, v236, v237, v238, *(&v238 + 1), v239);
      OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_2();
      OUTLINED_FUNCTION_7();
      v259 = v214;
      OUTLINED_FUNCTION_13();
      v203 = "[HID] [MT] %s%s%s Unexpected keyboard child event with usage %lu. Eating it";
    }

    else
    {
      v120 = IOHIDEventGetType();
      v121 = MTLoggingPlugin();
      v122 = os_log_type_enabled(v121, OS_LOG_TYPE_ERROR);
      if (v120 != 24)
      {
        v18 = v251;
        if (v122)
        {
          v123 = IOHIDEventGetType();
          OUTLINED_FUNCTION_11(v123, v124, v125, v126, v127, v128, v129, v130, v236, v237, v238, *(&v238 + 1), v239);
          OUTLINED_FUNCTION_0_2();
          OUTLINED_FUNCTION_2();
          OUTLINED_FUNCTION_4();
          OUTLINED_FUNCTION_13();
          _os_log_impl(v131, v132, v133, "[HID] [MT] %s%s%s Unexpected child event type: %u. Eating it", v134, 0x26u);
        }

        goto LABEL_65;
      }

      v241 = ButtonEvent;
      if (!v122)
      {
        goto LABEL_103;
      }

      v215 = IOHIDEventGetIntegerValue();
      OUTLINED_FUNCTION_11(v215, v216, v217, v218, v219, v220, v221, v222, v236, v237, v238, *(&v238 + 1), v239);
      OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_2();
      OUTLINED_FUNCTION_7();
      v259 = v223;
      OUTLINED_FUNCTION_13();
      v203 = "[HID] [MT] %s%s%s Unexpected hotkey child event with value %lu. Eating it";
    }

    v204 = 42;
    goto LABEL_102;
  }

  v245 = 0;
  v247 = 0;
  cf = 0;
  v250 = 0;
  ButtonEvent = 0;
  v18 = RelativePointerEvent;
LABEL_107:
  IOHIDEventAppendEvent();
  v15 = v245;
  if (MTTrackpadEmbeddedEventDispatcher::shouldDispatchPointerEvent(a1, v18, a2, ButtonEvent, cf, v250, v247, v245))
  {
    (*(*a1 + 40))(a1, v18, HIDWORD(v244));
    v226 = CFArrayGetCount(Mutable);
    if (v226 >= 1)
    {
      v227 = v226;
      for (i = 0; i != v227; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(Mutable, i);
        if (ValueAtIndex)
        {
          (*(*a1 + 40))(a1, ValueAtIndex, HIDWORD(v244));
        }
      }
    }

LABEL_113:
    v15 = v245;
  }

LABEL_114:
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v251)
  {
    CFRelease(v251);
  }

  if (Copy)
  {
    CFRelease(Copy);
  }

  if (ButtonEvent)
  {
    CFRelease(ButtonEvent);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v250)
  {
    CFRelease(v250);
  }

  if (v247)
  {
    CFRelease(v247);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  v230 = *MEMORY[0x29EDCA608];
}

void MTTrackpadEmbeddedEventDispatcher::dispatchEvent()
{
  v10 = *MEMORY[0x29EDCA608];
  v0 = MTLoggingPlugin();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    v2 = 136315906;
    v3 = "[Error] ";
    v4 = 2080;
    v5 = "MTTrackpadEmbeddedEventDispatcher::";
    v6 = 2080;
    v7 = "dispatchEvent";
    v8 = 1024;
    Type = IOHIDEventGetType();
    _os_log_impl(&dword_29D381000, v0, OS_LOG_TYPE_ERROR, "[HID] [MT] %s%s%s Unexpected standalone event type: %u. Eating it", &v2, 0x26u);
  }

  v1 = *MEMORY[0x29EDCA608];
}

uint64_t MTSimpleEmbeddedHIDManager::start(MTSimpleEmbeddedHIDManager *this)
{
  v2 = MTSimpleHIDManager::start(this);
  if (v2)
  {
    v3 = *(this + 27);
    if (v3)
    {
      v4 = *(this + 22);
      v5 = (*(*this + 80))(this);
      MTInterferenceMonitor::start(v3, v4, v5);
    }

    v6 = *(this + 28);
    if (v6)
    {
      v7 = (*(*this + 80))(this);
      MTTelemetryAnalyticsReporter::start(v6, v7);
    }
  }

  return v2;
}

objc_class *MTABCLogger::_init(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = a2;
  if (!a2)
  {
    return 0;
  }

  result = dlopen([@"/System/Library/PrivateFrameworks/SymptomDiagnosticReporter.framework/SymptomDiagnosticReporter" UTF8String], 1);
  *(a1 + 40) = result;
  if (result)
  {
    result = NSClassFromString(&cfstr_Sdrdiagnosticr.isa);
    **(a1 + 24) = result;
    if (result)
    {
      v4 = objc_alloc_init(result);
      *(*(a1 + 24) + 8) = v4;
      return (v4 != 0);
    }
  }

  return result;
}

uint64_t MTABCLogger::_prepopulateSessionEvent(uint64_t a1, uint64_t a2)
{
  v83 = *MEMORY[0x29EDCA608];
  v68 = 0;
  HIBYTE(v67) = 0;
  LODWORD(v67) = 0;
  v65 = 0;
  v66 = 0;
  properties = 0;
  cf = 0;
  v4 = *(a1 + 32);
  MTDeviceGetDeviceID();
  v5 = *(a1 + 32);
  MTDeviceGetSubdeviceID();
  v6 = *(a1 + 32);
  MTDeviceGetFamilyID();
  v7 = *(a1 + 32);
  MTDeviceGetSensorDimensions();
  v8 = *(a1 + 32);
  MTDeviceGetSensorSurfaceDimensions();
  v9 = *(a1 + 32);
  ParserType = MTDeviceGetParserType();
  v11 = *(a1 + 32);
  MTDeviceCopyDeviceUsagePairs();
  v12 = *(a1 + 32);
  Service = MTDeviceGetService();
  IORegistryEntryCreateCFProperties(Service, &properties, *MEMORY[0x29EDB8ED8], 0);
  v14 = objc_alloc_init(MEMORY[0x29EDB8E00]);
  if (!v14)
  {
    goto LABEL_30;
  }

  [v14 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKeyedSubscript:{"numberWithUnsignedLongLong:", v68), @"DeviceID"}];
  [v14 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKeyedSubscript:{"numberWithUnsignedChar:", HIBYTE(v67)), @"SubdeviceID"}];
  [v14 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKeyedSubscript:{"numberWithUnsignedInt:", v67), @"FamilyID"}];
  [v14 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKeyedSubscript:{"numberWithUnsignedInt:", HIDWORD(v66)), @"Rows"}];
  [v14 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKeyedSubscript:{"numberWithUnsignedInt:", v66), @"Cols"}];
  [v14 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKeyedSubscript:{"numberWithUnsignedInt:", HIDWORD(v65)), @"SensorSurfaceWidth"}];
  [v14 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKeyedSubscript:{"numberWithUnsignedInt:", v65), @"SensorSurfaceHeight"}];
  [v14 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKeyedSubscript:{"numberWithUnsignedInt:", ParserType), @"ParserType"}];
  [v14 setObject:cf forKeyedSubscript:@"UsagePairs"];
  v15 = objc_alloc_init(MEMORY[0x29EDB8E00]);
  if (!v15)
  {
    goto LABEL_35;
  }

  v23 = v15;
  v24 = properties;
  v25 = OUTLINED_FUNCTION_1_2(v15, v16, v17, v18, v19, v20, v21, v22, v54, v56, v14, a2, v60, v62, properties, cf, v65, v66, v67, v68, 0, 0, 0, 0, 0, 0, 0, 0, *v77, *&v77[8], *&v77[16], v78, v79, v80, v81, v82);
  if (!v25)
  {
    goto LABEL_27;
  }

  v27 = v25;
  v28 = *v71;
  *&v26 = 136316162;
  v61 = v26;
  do
  {
    v29 = 0;
    do
    {
      if (*v71 != v28)
      {
        objc_enumerationMutation(v24);
      }

      v30 = *(v70 + 8 * v29);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v34 = MTLoggingPlugin();
        v35 = os_log_type_enabled(v34, OS_LOG_TYPE_ERROR);
        if (!v35)
        {
          goto LABEL_22;
        }

        objc_opt_class();
        *v77 = v61;
        *&v77[4] = "[Error] ";
        *&v77[12] = 2080;
        *&v77[14] = "";
        *&v77[22] = 2080;
        OUTLINED_FUNCTION_0_3();
        v44 = v34;
        v45 = "[HID] [MT] %s%s%s %{public}@ key has an unexpected type (class %{public}@)";
        goto LABEL_13;
      }

      v31 = [(__CFDictionary *)v24 objectForKeyedSubscript:v30];
      if ([MEMORY[0x29EDB9FF0] isValidJSONObject:v31])
      {
        v32 = v23;
        v33 = v31;
LABEL_21:
        v35 = [v32 setObject:v33 forKey:v30];
        goto LABEL_22;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v46 = [MEMORY[0x29EDBA0F8] stringWithString:v31];
LABEL_20:
        v33 = v46;
        v32 = v23;
        goto LABEL_21;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v46 = [MEMORY[0x29EDBA070] numberWithLongLong:{objc_msgSend(v31, "longLongValue")}];
        goto LABEL_20;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v47 = MEMORY[0x29EDBA0F8];
        v55 = @"NSDAT@";
        v57 = [v31 base64EncodedStringWithOptions:0];
        v46 = [v47 stringWithFormat:@"%@%@"];
        goto LABEL_20;
      }

      v48 = MTLoggingPlugin();
      v35 = os_log_type_enabled(v48, OS_LOG_TYPE_ERROR);
      if (v35)
      {
        objc_opt_class();
        *v77 = v61;
        *&v77[4] = "[Error] ";
        *&v77[12] = 2080;
        *&v77[14] = "";
        *&v77[22] = 2080;
        OUTLINED_FUNCTION_0_3();
        v44 = v48;
        v45 = "[HID] [MT] %s%s%s %{public}@ is not serializable (class %{public}@)";
LABEL_13:
        _os_log_impl(&dword_29D381000, v44, OS_LOG_TYPE_ERROR, v45, v43, 0x34u);
      }

LABEL_22:
      ++v29;
    }

    while (v27 != v29);
    v49 = OUTLINED_FUNCTION_1_2(v35, v36, v37, v38, v39, v40, v41, v42, v55, v57, v58, v59, v61, *(&v61 + 1), properties, cf, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, *v77, *&v77[8], *&v77[16], v78, v79, v80, v81, v82);
    v27 = v49;
  }

  while (v49);
LABEL_27:
  v14 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
  if (!v14)
  {
    goto LABEL_30;
  }

  v50 = objc_alloc_init(MEMORY[0x29EDB8E00]);
  if (v50)
  {
    v51 = v50;
    [v50 setObject:v58 forKeyedSubscript:@"DeviceInfo"];
    [v51 setObject:v23 forKeyedSubscript:@"RegistryProperties"];
    [v51 setObject:v14 forKeyedSubscript:@"Frames"];
    [*(v59 + 24) addObject:v51];
    v14 = 1;
    goto LABEL_30;
  }

LABEL_35:
  v14 = 0;
LABEL_30:
  if (cf)
  {
    CFRelease(cf);
  }

  if (properties)
  {
    CFRelease(properties);
  }

  v52 = *MEMORY[0x29EDCA608];
  return v14;
}

uint64_t MTABCLogger::startSession(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4)
{
  if (!MTABCLogger::_prepopulateSessionEvent(a1, a2))
  {
    return 1;
  }

  if (!*(a1 + 16))
  {
    v7 = *(a1 + 32);
    if (!MTRegisterFullFrameCallback())
    {
      return 1;
    }
  }

  std::__tree<MTABCSessionHandler *>::__emplace_unique_key_args<MTABCSessionHandler *,MTABCSessionHandler * const&>(a1, a3);
  result = 0;
  *a4 = *a3;
  return result;
}

void MTForceManagement::actuateForceAndHIDEvents(MTActuatorManagement *a1, uint64_t a2, NSObject *a3)
{
  v15 = *MEMORY[0x29EDCA608];
  ActuatorRef = MTActuatorManagement::getActuatorRef(a1);
  v6 = *(a2 + 594);
  v7 = *(a2 + 595);
  v9 = 134218496;
  v10 = ActuatorRef;
  v11 = 1024;
  v12 = v6;
  v13 = 1024;
  v14 = v7;
  _os_log_debug_impl(&dword_29D381000, a3, OS_LOG_TYPE_DEBUG, "[HID] Skipping actuation : %p %u %u", &v9, 0x18u);
  v8 = *MEMORY[0x29EDCA608];
}

uint64_t MTInterferenceMonitor::_stop(MTInterferenceMonitor *this)
{
  if (*(this + 16) != 1)
  {
    return 3758096385;
  }

  notify_cancel(*(this + 8));
  v2 = *(this + 3);
  if (v2)
  {
    dispatch_release(v2);
    *(this + 3) = 0;
  }

  OUTLINED_FUNCTION_0_4();
  (*(v3 + 72))(this);
  v4 = *(this + 1);
  if (v4)
  {
    CFRelease(v4);
    *(this + 1) = 0;
  }

  result = 0;
  *(this + 16) = 0;
  return result;
}

uint64_t MTInterferenceMonitor::start(uint64_t a1, NSObject *a2, CFTypeRef cf)
{
  v24 = *MEMORY[0x29EDCA608];
  result = 3758097090;
  if (a2 && cf)
  {
    if (*(a1 + 16))
    {
      result = 3758097106;
      goto LABEL_15;
    }

    *(a1 + 8) = CFRetain(cf);
    *(a1 + 17) = MTDeviceSupportsWirelessChargingNotification();
    v6 = *(a1 + 8);
    *(a1 + 18) = MTDeviceSupportsUSBChargingNotification();
    v19 = 0;
    v7 = *(a1 + 8);
    MTDeviceGetDeviceID();
    v8 = MTLoggingPlugin();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = *(a1 + 18);
      *buf = 67109376;
      v21 = v9;
      v22 = 2048;
      v23 = v19;
      _os_log_impl(&dword_29D381000, v8, OS_LOG_TYPE_INFO, "device support usb charging notification = %d (deviceID 0x%llX)", buf, 0x12u);
    }

    *(a1 + 24) = a2;
    dispatch_retain(a2);
    OUTLINED_FUNCTION_0_4();
    result = (*(v10 + 64))(a1);
    if (!result)
    {
      v11 = *(a1 + 18);
      if (*(a1 + 17) == 1)
      {
        v12 = *(a1 + 24);
        if (*(a1 + 18))
        {
          v18[0] = MEMORY[0x29EDCA5F8];
          v18[1] = 0x40000000;
          v18[2] = ___ZN21MTInterferenceMonitor5startEP16dispatch_queue_sP10__MTDevice_block_invoke;
          v18[3] = &__block_descriptor_tmp_4;
          v18[4] = a1;
          v13 = (a1 + 32);
          v14 = v18;
        }

        else
        {
          handler[0] = MEMORY[0x29EDCA5F8];
          handler[1] = 0x40000000;
          handler[2] = ___ZN21MTInterferenceMonitor5startEP16dispatch_queue_sP10__MTDevice_block_invoke_2;
          handler[3] = &__block_descriptor_tmp_2;
          handler[4] = a1;
          v13 = (a1 + 32);
          v14 = handler;
        }
      }

      else
      {
        if (!*(a1 + 18))
        {
          result = 0;
          goto LABEL_15;
        }

        v12 = *(a1 + 24);
        v16[0] = MEMORY[0x29EDCA5F8];
        v16[1] = 0x40000000;
        v16[2] = ___ZN21MTInterferenceMonitor5startEP16dispatch_queue_sP10__MTDevice_block_invoke_3;
        v16[3] = &__block_descriptor_tmp_3;
        v16[4] = a1;
        v13 = (a1 + 32);
        v14 = v16;
      }

      notify_register_dispatch("com.apple.system.powersources", v13, v12, v14);
      result = 0;
      *(a1 + 16) = 1;
    }
  }

LABEL_15:
  v15 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t ___ZN21MTInterferenceMonitor5startEP16dispatch_queue_sP10__MTDevice_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_0_4();
  v3 = (*(v2 + 16))(v1);
  if (*(v1 + 92) != v3)
  {
    *(v1 + 92) = v3;
    OUTLINED_FUNCTION_0_4();
    (*(v4 + 32))(v1);
  }

  OUTLINED_FUNCTION_0_4();
  result = (*(v5 + 24))(v1);
  if (*(v1 + 94) != result)
  {
    *(v1 + 94) = result;
    OUTLINED_FUNCTION_0_4();
    v8 = *(v7 + 48);

    return v8(v1);
  }

  return result;
}

uint64_t ___ZN21MTInterferenceMonitor5startEP16dispatch_queue_sP10__MTDevice_block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_0_4();
  result = (*(v2 + 16))(v1);
  if (*(v1 + 92) != result)
  {
    *(v1 + 92) = result;
    OUTLINED_FUNCTION_0_4();
    v5 = *(v4 + 32);

    return v5(v1);
  }

  return result;
}

uint64_t ___ZN21MTInterferenceMonitor5startEP16dispatch_queue_sP10__MTDevice_block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_0_4();
  result = (*(v2 + 24))(v1);
  if (*(v1 + 94) != result)
  {
    *(v1 + 94) = result;
    OUTLINED_FUNCTION_0_4();
    v5 = *(v4 + 48);

    return v5(v1);
  }

  return result;
}

uint64_t MTInterferenceMonitor::restoreStateToDevice(MTInterferenceMonitor *this)
{
  result = 3758097112;
  if (*(this + 16) == 1)
  {
    if (*(this + 17) != 1 || (OUTLINED_FUNCTION_0_4(), result = (*(v3 + 32))(this), !result) && (OUTLINED_FUNCTION_0_4(), result = (*(v4 + 40))(this), !result))
    {
      if (*(this + 18) == 1)
      {
        OUTLINED_FUNCTION_0_4();
        v6 = *(v5 + 48);

        return v6(this);
      }
    }
  }

  return result;
}

uint64_t MTInterferenceMonitor::hasEnteredWirelessField(MTInterferenceMonitor *this)
{
  context = 0;
  v2 = *(this + 22);
  if (!v2 || !IOIteratorIsValid(v2))
  {
    OUTLINED_FUNCTION_0_4();
    (*(v3 + 64))(this);
  }

  if (IOIteratorIsValid(*(this + 22)) && (MEMORY[0x29ED53DC0](*(this + 22)), (v4 = IOIteratorNext(*(this + 22))) != 0))
  {
    v5 = v4;
    v6 = *MEMORY[0x29EDB8ED8];
    do
    {
      v7 = OUTLINED_FUNCTION_2_0();
      if (v7)
      {
        v8 = v7;
        v19.length = CFArrayGetCount(v7);
        OUTLINED_FUNCTION_1_3(v19.length, v19, v9, v10, v11, v12, v13, v16, *v17, *&v17[4], v17[6], context);
        CFRelease(v8);
      }

      IOObjectRelease(v5);
      v5 = IOIteratorNext(*(this + 22));
    }

    while (v5);
    v14 = context;
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

uint64_t MTInterferenceMonitor::isWirelessChargingAvailable(uint64_t this, BOOL *a2, void *a3)
{
  if (this)
  {
    if (a2)
    {
      v4 = this;
      v5 = CFGetTypeID(this);
      this = CFDictionaryGetTypeID();
      if (v5 == this)
      {
        value = 0xAAAAAAAAAAAAAAAALL;
        this = CFDictionaryGetValueIfPresent(v4, @"IsWireless", &value);
        if (this)
        {
          v6 = CFGetTypeID(value);
          this = CFBooleanGetTypeID();
          if (v6 == this)
          {
            this = CFBooleanGetValue(value);
            *a2 = (*a2 | this) != 0;
          }
        }
      }
    }
  }

  return this;
}

uint64_t MTInterferenceMonitor::hasConnectedtoUSB(MTInterferenceMonitor *this)
{
  context = 0;
  v2 = *(this + 22);
  if (!v2 || !IOIteratorIsValid(v2))
  {
    OUTLINED_FUNCTION_0_4();
    (*(v3 + 64))(this);
  }

  if (IOIteratorIsValid(*(this + 22)) && (MEMORY[0x29ED53DC0](*(this + 22)), (v4 = IOIteratorNext(*(this + 22))) != 0))
  {
    v5 = v4;
    v6 = *MEMORY[0x29EDB8ED8];
    do
    {
      v7 = OUTLINED_FUNCTION_2_0();
      if (v7)
      {
        v8 = v7;
        v19.length = CFArrayGetCount(v7);
        OUTLINED_FUNCTION_1_3(v19.length, v19, v9, v10, v11, v12, v13, v16, *v17, *&v17[4], v17[6], context);
        CFRelease(v8);
      }

      IOObjectRelease(v5);
      v5 = IOIteratorNext(*(this + 22));
    }

    while (v5);
    v14 = context;
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

uint64_t MTInterferenceMonitor::isUSBChargingAvailable(uint64_t this, _BYTE *a2, void *a3)
{
  if (this)
  {
    if (a2)
    {
      v4 = this;
      v5 = CFGetTypeID(this);
      this = CFDictionaryGetTypeID();
      if (v5 == this)
      {
        value = 0xAAAAAAAAAAAAAAAALL;
        valuePtr = -1431655766;
        this = CFDictionaryGetValueIfPresent(v4, @"FamilyCode", &value);
        if (this)
        {
          v6 = CFGetTypeID(value);
          this = CFNumberGetTypeID();
          if (v6 == this)
          {
            this = CFNumberGetValue(value, kCFNumberIntType, &valuePtr);
            if (this)
            {
              if ((valuePtr + 536854528) <= 0xA && ((1 << valuePtr) & 0x609) != 0)
              {
                *a2 = 1;
              }
            }
          }
        }
      }
    }
  }

  return this;
}

CFRange CFStringFind(CFStringRef theString, CFStringRef stringToFind, CFStringCompareFlags compareOptions)
{
  v3 = MEMORY[0x2A1C594D8](theString, stringToFind, compareOptions);
  result.length = v4;
  result.location = v3;
  return result;
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}

__float2 __sincosf_stret(float a1)
{
  MEMORY[0x2A1C76658](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}