unint64_t Phase::Controller::SessionManager::GetAudioSessionVolumeIfInVolumeCategoryAndMode(Phase::Controller::SessionManager *this, uint64_t a2, NSString *a3, NSString *a4, int a5)
{
  v44 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = 0;
  if (a2)
  {
    v12 = 0;
    if (*(this + 1))
    {
      v13 = [[PHASEVolumeCommandForVolumeCategoryModeAndSession alloc] initWithCategory:v9 mode:v10 sessionToken:a2];
      v14 = *(this + 1);
      if (a5)
      {
        [v14 volumeForCommandFromCallback:v13];
      }

      else
      {
        [v14 volumeForCommand:v13];
      }
      v15 = ;
      v16 = v15;
      if (v15)
      {
        v17 = v13;
        [v15 value];
        v19 = v18;
        [v16 raw];
        v12 = v19;
        v11 = v20 << 32;
        [v16 muted];
      }

      else
      {
        v21 = **(Phase::Logger::GetInstance(0) + 976);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          v22 = [(NSString *)v9 UTF8String];
          v23 = [(NSString *)v10 UTF8String];
          if (a5)
          {
            v24 = 15;
          }

          else
          {
            v24 = 0;
          }

          v29 = v24;
          v25 = __p;
          if (a5)
          {
            v25 = &v28;
            qmemcpy(__p, ", from callback", sizeof(__p));
          }

          *v25 = 0;
          *buf = 136316674;
          v31 = "SessionManager.mm";
          v32 = 1024;
          v33 = 348;
          v34 = 2048;
          v35 = this;
          v36 = 1024;
          v37 = a2;
          v38 = 2080;
          v39 = v22;
          v40 = 2080;
          v41 = v23;
          v42 = 2080;
          v43 = __p;
          _os_log_impl(&dword_23A302000, v21, OS_LOG_TYPE_DEBUG, "%25s:%-5d impl@%p: could not get volume for session 0x%x in volume category/mode [%s, %s]%s", buf, 0x40u);
          if (v29 < 0)
          {
            operator delete(*__p);
          }
        }

        v17 = v13;

        v11 = 0;
        v12 = 0;
      }
    }
  }

  else
  {
    v12 = 0;
  }

  return v12 | v11;
}

void ___ZN5Phase10Controller14SessionManager32ProcessVolumeChangedNotificationEP18PHASEVolumeCommand_block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 40);
  v5 = [*(a1 + 32) volumeCategory];
  v6 = [*(a1 + 32) volumeMode];
  Phase::Controller::SessionManager::GetAudioSessionVolumeIfInVolumeCategoryAndMode(v4, a2, v5, v6, 0);
}

float ___ZN5Phase10Controller14SessionManager32ProcessVolumeChangedNotificationEP18PHASEVolumeCommand_block_invoke_2(uint64_t a1, uint64_t a2)
{
  LODWORD(result) = Phase::Controller::SessionManager::GetAudioSessionVolume(*(a1 + 32), a2, 0) >> 32;
  if ((v3 & 0x100000000) == 0)
  {
    return -1.0;
  }

  return result;
}

Phase::Controller::HeadTracker *Phase::Controller::HeadTracker::HeadTracker(Phase::Controller::HeadTracker *this)
{
  v2 = operator new(0x240uLL, 0x40uLL);
  Phase::Controller::HeadTrackerImpl::HeadTrackerImpl(v2);
  *this = v2;
  return this;
}

void Phase::Controller::HeadTracker::~HeadTracker(CFTypeRef **this)
{
  v1 = *this;
  if (*this)
  {
    CFRelease(*v1);
    MEMORY[0x23EE86490](v1, 64);
  }
}

void Phase::Controller::HeadTrackerImpl::UpdateAndGetLatest(uint64_t a1, _OWORD *a2)
{
  v37 = *MEMORY[0x277D85DE8];
  v34 = 0.0;
  v4 = *(MEMORY[0x277D860B8] + 16);
  v30 = *MEMORY[0x277D860B8];
  v31 = v4;
  v5 = *(MEMORY[0x277D860B8] + 48);
  v32 = *(MEMORY[0x277D860B8] + 32);
  v33 = v5;
  if (ATThreadSafeHeadTrackerPredictLatestTransform())
  {
    mach_absolute_time();
    v6 = __udivti3() / 1000000000.0;
    v7 = atomic_load((a1 + 512));
    v8 = *&v7;
    v9 = COERCE_DOUBLE(atomic_load((a1 + 256)));
    if (v8 <= v9)
    {
      caulk::concurrent::atomic_value<Phase::Affine<float>,2,6>::load(buf, (a1 + 64));
      v25 = *&buf[16];
      *a2 = *buf;
      a2[1] = v25;
      v12 = **(Phase::Logger::GetInstance(v26) + 1040);
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        return;
      }

      v27 = COERCE_DOUBLE(atomic_load((a1 + 256)));
      *buf = 136315650;
      *&buf[4] = "SharedEntityHeadTracker.mm";
      *&buf[12] = 1024;
      *&buf[14] = 86;
      *&buf[18] = 2048;
      *&buf[20] = v6 - v27;
      v14 = "%25s:%-5d Failed to get prediction from headtracker, using latest tracker result that is %0.4f sec old";
    }

    else
    {
      caulk::concurrent::atomic_value<Phase::Affine<float>,2,6>::load(buf, (a1 + 320));
      v10 = *&buf[16];
      *a2 = *buf;
      a2[1] = v10;
      v12 = **(Phase::Logger::GetInstance(v11) + 1040);
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        return;
      }

      v13 = COERCE_DOUBLE(atomic_load((a1 + 512)));
      *buf = 136315650;
      *&buf[4] = "SharedEntityHeadTracker.mm";
      *&buf[12] = 1024;
      *&buf[14] = 79;
      *&buf[18] = 2048;
      *&buf[20] = v6 - v13;
      v14 = "%25s:%-5d Failed to get prediction from headtracker, using fallback transform that is %0.4f sec old";
    }

    v22 = v12;
    v23 = OS_LOG_TYPE_ERROR;
    v24 = 28;
    goto LABEL_15;
  }

  v15 = COERCE_DOUBLE(atomic_load((a1 + 256)));
  v16 = *&v34;
  if (v34 <= v15)
  {
LABEL_9:
    caulk::concurrent::atomic_value<Phase::Affine<float>,2,6>::load(buf, (a1 + 64));
    v18 = *&buf[16];
    *a2 = *buf;
    a2[1] = v18;
    *&v29[0] = 0;
    ShouldFire = Phase::Throttle::ShouldFire((a1 + 8), v29);
    v20 = ShouldFire;
    if (ShouldFire >= 1)
    {
      v21 = **(Phase::Logger::GetInstance(ShouldFire) + 1040);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        *&buf[4] = "SharedEntityHeadTracker.mm";
        *&buf[12] = 1024;
        *&buf[14] = 130;
        *&buf[18] = 1024;
        *&buf[20] = v20;
        *&buf[24] = 2048;
        *&buf[26] = 0x4000000000000000;
        v14 = "%25s:%-5d Did not get updated prediction from headtracker for %d times in the last %.2f seconds - used cached values.";
        v22 = v21;
        v23 = OS_LOG_TYPE_DEFAULT;
        v24 = 34;
LABEL_15:
        _os_log_impl(&dword_23A302000, v22, v23, v14, buf, v24);
      }
    }
  }

  else
  {
    v17 = v15;
    while (1)
    {
      atomic_compare_exchange_strong((a1 + 256), &v17, v16);
      if (*&v17 == *&v15)
      {
        break;
      }

      v16 = *&v34;
      v15 = v17;
      if (v34 <= v17)
      {
        goto LABEL_9;
      }
    }

    *buf = v30;
    *&buf[16] = v31;
    *&buf[32] = v32;
    v36 = v33;
    Phase::AffineFrom<float>(buf, v29);
    v28 = v29[1];
    *a2 = v29[0];
    a2[1] = v28;
    caulk::concurrent::atomic_value<Phase::Affine<float>,2,6>::store((a1 + 64), a2);
  }
}

void sub_23A4F45B0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

Phase::Controller::HeadTrackerImpl *Phase::Controller::HeadTrackerImpl::HeadTrackerImpl(Phase::Controller::HeadTrackerImpl *this)
{
  SharedInstance = ATThreadSafeHeadTrackerGetSharedInstance();
  v3 = 0;
  *this = SharedInstance;
  *(this + 8) = xmmword_23A554AC0;
  *(this + 6) = 0;
  *(this + 2) = xmmword_23A554AC0;
  *(this + 12) = 0;
  *(this + 16) = 0;
  do
  {
    v4 = this + v3;
    *(v4 + 32) = 1;
    *(v4 + 132) = xmmword_23A554920;
    *(v4 + 37) = 0;
    *(v4 + 19) = 0;
    v3 += 64;
    *(v4 + 40) = 1065353216;
  }

  while (v3 != 128);
  v5 = 0;
  *(this + 32) = 0;
  *(this + 80) = 0;
  do
  {
    v6 = this + v5;
    *(v6 + 96) = 1;
    *(this + v5 + 388) = xmmword_23A554920;
    *(v6 + 101) = 0;
    *(v6 + 51) = 0;
    *(v6 + 104) = 1065353216;
    v5 += 64;
  }

  while (v5 != 128);
  *(this + 64) = 0;
  v8[0] = xmmword_23A554920;
  v8[1] = xmmword_23A554920;
  caulk::concurrent::atomic_value<Phase::Affine<float>,2,6>::store(this + 16, v8);
  CFRetain(*this);
  return this;
}

float caulk::concurrent::atomic_value<Phase::Affine<float>,2,6>::store(unsigned int *a1, uint64_t a2)
{
  for (i = 0; ; caulk::concurrent::details::spinloop::spin(&i))
  {
    v4 = atomic_load(a1);
    if ((v4 & 1) == 0)
    {
      v5 = v4;
      atomic_compare_exchange_strong(a1, &v5, v4 | 1);
      if (v5 == v4)
      {
        break;
      }
    }
  }

  v6 = v4 >> 2;
  v7 = (v4 & 0xFFFFFFFC) + 5;
  v8 = &a1[16 * ((v4 >> 2) & 1)];
  atomic_store((2 * (v6 & 0x3FFFFFFF)) | 1, v8 + 16);
  v8[17] = *a2;
  v8[18] = *(a2 + 4);
  v8[19] = *(a2 + 8);
  v8[20] = *(a2 + 12);
  v8[21] = *(a2 + 16);
  v8[22] = *(a2 + 20);
  v8[23] = *(a2 + 24);
  result = *(a2 + 28);
  *(v8 + 24) = result;
  __dmb(0xBu);
  atomic_store(2 * v6, v8 + 16);
  atomic_store(v7 & 0xFFFFFFFC | 2, a1);
  return result;
}

double caulk::concurrent::atomic_value<Phase::Affine<float>,2,6>::load(uint64_t a1, unsigned int *a2)
{
  v12 = 0;
  v3 = atomic_load(a2);
  if ((v3 & 2) != 0)
  {
    v5 = a2 + 16;
    while (1)
    {
      v6 = (v3 >> 2) & 1;
      v7 = &v5[16 * ((v3 & 4) == 0)];
      explicit = atomic_load_explicit(v7, memory_order_acquire);
      if ((explicit & 1) == 0 || (v7 = &v5[16 * v6], explicit = atomic_load_explicit(v7, memory_order_acquire), (explicit & 1) == 0))
      {
        __dmb(9u);
        v9 = *(v7 + 1);
        v10 = *(v7 + 5);
        *a1 = v9;
        *(a1 + 16) = v10;
        __dmb(9u);
        if (explicit == atomic_load_explicit(v7, memory_order_acquire))
        {
          break;
        }
      }

      caulk::concurrent::details::spinloop::spin(&v12);
      v3 = atomic_load(a2);
      if ((v3 & 2) == 0)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
    *&v9 = 0;
    *a1 = xmmword_23A554920;
    *(a1 + 16) = 0;
    *(a1 + 20) = 0;
    *(a1 + 28) = 1065353216;
  }

  return *&v9;
}

Phase::Controller::SharedEntityManager *Phase::Controller::SharedEntityManager::SharedEntityManager(Phase::Controller::SharedEntityManager *this, const Phase::Controller::TaskManager *a2)
{
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 8) = 1065353216;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 18) = 1065353216;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 14) = 0;
  *(this + 30) = 1065353216;
  *(this + 16) = Phase::Controller::TaskManager::GetService<Phase::Geometry::System>(a2, 2);
  *(this + 17) = 0;
  *(this + 18) = 1819626849;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 46) = 1065353216;
  *(this + 24) = 0;
  *(this + 25) = 0;
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v4 = dispatch_queue_create("SharedEntityManager", v3);
  v5 = *(this + 17);
  *(this + 17) = v4;

  return this;
}

void sub_23A4F48DC(_Unwind_Exception *a1)
{
  std::__hash_table<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::__unordered_map_hasher<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::hash<Phase::SpatialCategory>,std::equal_to<Phase::SpatialCategory>,true>,std::__unordered_map_equal<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::equal_to<Phase::SpatialCategory>,std::hash<Phase::SpatialCategory>,true>,std::allocator<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>>>::~__hash_table(v1 + 88);
  std::__hash_table<std::__hash_value_type<Phase::Controller::IR::IRBuilder::Processor,std::unordered_map<Phase::Controller::IR::IRBuilder::Method,Phase::Controller::IR::IRBuilderBase *>>,std::__unordered_map_hasher<Phase::Controller::IR::IRBuilder::Processor,std::__hash_value_type<Phase::Controller::IR::IRBuilder::Processor,std::unordered_map<Phase::Controller::IR::IRBuilder::Method,Phase::Controller::IR::IRBuilderBase *>>,std::hash<Phase::Controller::IR::IRBuilder::Processor>,std::equal_to<Phase::Controller::IR::IRBuilder::Processor>,true>,std::__unordered_map_equal<Phase::Controller::IR::IRBuilder::Processor,std::__hash_value_type<Phase::Controller::IR::IRBuilder::Processor,std::unordered_map<Phase::Controller::IR::IRBuilder::Method,Phase::Controller::IR::IRBuilderBase *>>,std::equal_to<Phase::Controller::IR::IRBuilder::Processor>,std::hash<Phase::Controller::IR::IRBuilder::Processor>,true>,std::allocator<std::__hash_value_type<Phase::Controller::IR::IRBuilder::Processor,std::unordered_map<Phase::Controller::IR::IRBuilder::Method,Phase::Controller::IR::IRBuilderBase *>>>>::~__hash_table(v2);
  std::__hash_table<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::__unordered_map_hasher<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::hash<Phase::SpatialCategory>,std::equal_to<Phase::SpatialCategory>,true>,std::__unordered_map_equal<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::equal_to<Phase::SpatialCategory>,std::hash<Phase::SpatialCategory>,true>,std::allocator<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>>>::~__hash_table(v1);
  _Unwind_Resume(a1);
}

uint64_t Phase::Controller::SharedEntityManager::Update(Phase::Controller::SharedEntityManager *this, float a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = atomic_load(this + 10);
  v15 = xmmword_23A554920;
  LODWORD(v16) = 0;
  *(&v16 + 4) = 0;
  HIDWORD(v16) = 1065353216;
  v4 = *(this + 18);
  if (v4 == 1819623797)
  {
    v8 = (this + 200);
    v9 = *(this + 25);
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = ___ZN5Phase10Controller19SharedEntityManager22GetOrCreateHeadTrackerEv_block_invoke;
    v18 = &__block_descriptor_40_e5_v8__0l;
    v19 = this;
    if (v9 != -1)
    {
      dispatch_once(v8, buf);
    }

    v10 = *(this + 24);
    if (!v10)
    {
      v13 = **(Phase::Logger::GetInstance(v8) + 1040);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "SharedEntityManager.mm";
        *&buf[12] = 1024;
        *&buf[14] = 431;
        _os_log_impl(&dword_23A302000, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error) [tracker == nullptr is true]: tracker is unexpectedly null", buf, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "tracker is unexpectedly null");
    }

    Phase::Controller::HeadTrackerImpl::UpdateAndGetLatest(*v10, &v15);
    Phase::Geometry::SystemScheduler::UpdateTransform(*(this + 16) + 2784, v3, &v15);
  }

  else if (v4 == 1819626849)
  {
    *buf = *(this + 16) + 1672;
    UniqueES4_EUlRT_E_EEPNS_18SharedSlotMapStateIS3_S4_E4SlotES4_OSA = _ZN5Phase7details13SharedSlotMapINS_8Geometry6EntityENS_8Handle64EE13GetSlotToEditIRZNS_13SharedSlotMapIS3_S4_NS2_13EntityFactoryEE9GetUniqueES4_EUlRT_E_EEPNS_18SharedSlotMapStateIS3_S4_E4SlotES4_OSA_(*buf, v3, buf);
    if (UniqueES4_EUlRT_E_EEPNS_18SharedSlotMapStateIS3_S4_E4SlotES4_OSA)
    {
      v6 = *UniqueES4_EUlRT_E_EEPNS_18SharedSlotMapStateIS3_S4_E4SlotES4_OSA;
      if (*UniqueES4_EUlRT_E_EEPNS_18SharedSlotMapStateIS3_S4_E4SlotES4_OSA)
      {
        v7 = *(v6 + 64);
        v15 = *(v6 + 48);
        v16 = v7;
      }
    }
  }

  else
  {
    v11 = **(Phase::Logger::GetInstance(this) + 1040);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "SharedEntityManager.mm";
      *&buf[12] = 1024;
      *&buf[14] = 443;
      _os_log_impl(&dword_23A302000, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d Invalid listener update mode!", buf, 0x12u);
    }
  }

  return Phase::Trace::PostSharedListenerTransformUpdate(v3, &v15);
}

void ___ZN5Phase37CurrentProcessCanModifySharedEntitiesEv_block_invoke()
{
  v0 = SecTaskCreateFromSelf(0);
  if (v0)
  {
    v1 = v0;
    v2 = SecTaskCopyValueForEntitlement(v0, @"com.apple.coreaudio.control-shared-entities", 0);
    if (v2)
    {
      v3 = v2;
      v4 = CFGetTypeID(v2);
      v5 = v4 == CFBooleanGetTypeID() && CFBooleanGetValue(v3) != 0;
      Phase::CurrentProcessCanModifySharedEntities(void)::currentProcessCanModifySharedEntities = v5;
      CFRelease(v3);
    }

    CFRelease(v1);
  }
}

void ___ZN5Phase33CurrentProcessCanSelectEngineModeEv_block_invoke()
{
  v0 = SecTaskCreateFromSelf(0);
  if (v0)
  {
    v1 = v0;
    v2 = SecTaskCopyValueForEntitlement(v0, @"com.apple.coreaudio.allow-engine-mode-selection", 0);
    if (v2)
    {
      v3 = v2;
      v4 = CFGetTypeID(v2);
      v5 = v4 == CFBooleanGetTypeID() && CFBooleanGetValue(v3) != 0;
      Phase::CurrentProcessCanSelectEngineMode(void)::currentProcessCanSelectEngineMode = v5;
      CFRelease(v3);
    }

    CFRelease(v1);
  }
}

BOOL Phase::GetListenerUpdateModeFromEnum(Phase::Logger *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  if (a1 == 1819626849)
  {
    return 0;
  }

  if (a1 == 1819623797)
  {
    return 1;
  }

  v2 = **(Phase::Logger::GetInstance(a1) + 1040);
  result = os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);
  if (result)
  {
    v3 = 136315394;
    v4 = "SharedEntityUtils.mm";
    v5 = 1024;
    v6 = 141;
    _os_log_impl(&dword_23A302000, v2, OS_LOG_TYPE_ERROR, "%25s:%-5d Unrecognized listener update mode, setting to Manual", &v3, 0x12u);
    return 0;
  }

  return result;
}

Phase::DspLayer::SimpleConvolver *Phase::DspLayer::SimpleConvolver::SimpleConvolver(Phase::DspLayer::SimpleConvolver *this, int a2, int a3)
{
  *this = &unk_284D374A8;
  *(this + 2) = a2;
  *(this + 3) = a3;
  *(this + 2) = malloc_type_malloc(8 * a2 * a3, 0x100004052888210uLL);
  *(this + 12) = 0;
  *(this + 7) = Phase::DspLayer::IConvolver::GetFftFwd(this, 2 * *(this + 2));
  *(this + 8) = Phase::DspLayer::IConvolver::GetFftInv(this, 2 * *(this + 2));
  *(this + 4) = malloc_type_malloc(4 * *(this + 2), 0x100004052888210uLL);
  *(this + 10) = a2;
  *(this + 11) = a2;
  (*(*this + 32))(this);
  return this;
}

void Phase::DspLayer::SimpleConvolver::~SimpleConvolver(void **this)
{
  *this = &unk_284D374A8;
  free(this[2]);
  free(this[4]);
}

{
  *this = &unk_284D374A8;
  free(this[2]);
  free(this[4]);

  JUMPOUT(0x23EE864A0);
}

uint64_t Phase::DspLayer::SimpleConvolver::SetFilter(Phase::DspLayer::SimpleConvolver *this, int a2, const DSPComplex *a3, int a4)
{
  v21 = *MEMORY[0x277D85DE8];
  if (a2 < 0 || *(this + 3) <= a2)
  {
    return 2;
  }

  if (a4 < 1 || (*(*this + 48))(this) < a4)
  {
    return 1;
  }

  v9 = *(this + 2);
  v10 = (*(this + 2) + 8 * a2 * v9);
  vDSP_vclr(v10, 1, 2 * v9);
  v12 = *(this + 2);
  if (v12 == a4)
  {
    __Z.realp = v10;
    __Z.imagp = &v10[a4];
    v13 = a4 >> 1;
    v14 = a3;
  }

  else
  {
    MEMORY[0x28223BE20](v11);
    v16 = (&v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
    bzero(v16, v15);
    vDSP_vclr(v16, 1, v12);
    memcpy(v16, a3, 4 * a4);
    v17 = *(this + 2);
    __Z.realp = v10;
    __Z.imagp = &v10[v17];
    v13 = (v17 + (v17 >> 31)) >> 1;
    v14 = v16;
  }

  vDSP_ctoz(v14, 2, &__Z, 1, v13);
  v18 = &v10[*(this + 2)];
  vDSP_DFT_Execute(*(this + 7), v10, v18, v10, v18);
  return 0;
}

void Phase::DspLayer::SimpleConvolver::Process(Phase::DspLayer::SimpleConvolver *this, const DSPComplex *a2, float **a3)
{
  v34 = *MEMORY[0x277D85DE8];
  v6 = *(this + 2);
  v7 = v6 / 2;
  v8 = *(this + 4);
  MEMORY[0x28223BE20](this);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v10, v9);
  __Z.realp = v10;
  __Z.imagp = &v10[4 * v6];
  v11 = (v6 + (v6 >> 31)) >> 1;
  vDSP_ctoz(v8, 2, &__Z, 1, v11);
  __Z.realp += v7;
  __Z.imagp += v7;
  vDSP_ctoz(a2, 2, &__Z, 1, v11);
  v12 = *(this + 2);
  v13 = &v10[4 * v12];
  __Z.realp = v10;
  __Z.imagp = v13;
  memcpy(v8, a2, 4 * v12);
  vDSP_DFT_Execute(*(this + 7), v10, v13, v10, v13);
  v14 = *(this + 2);
  MEMORY[0x28223BE20](v15);
  v17 = (&v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  __C.realp = v17;
  __C.imagp = &v17[v14];
  if (*(this + 3) >= 1)
  {
    bzero(v17, v16);
    v18 = 0;
    v19 = v14;
    do
    {
      __B.realp = (*(this + 2) + 8 * v19 * v18);
      __B.imagp = &__B.realp[v19];
      v20 = *__Z.realp * *__B.realp;
      v21 = *__Z.imagp * *__B.imagp;
      vDSP_zvmul(&__Z, 1, &__B, 1, &__C, 1, v19, 1);
      realp = __C.realp;
      imagp = __C.imagp;
      *__C.realp = v20;
      *imagp = v21;
      vDSP_DFT_Execute(*(this + 8), realp, imagp, realp, imagp);
      v19 = *(this + 2);
      if (v11 < v19)
      {
        v24 = 0.125 / v19;
        v25 = (a3[v18] + 4);
        v26 = v11;
        v27 = v11;
        do
        {
          v28 = *&__C.realp[v26];
          v29 = *&__C.imagp[v26];
          v25[-1] = vmulq_n_f32(vzip1q_s32(v28, v29), v24);
          *v25 = vmulq_n_f32(vzip2q_s32(v28, v29), v24);
          v27 += 4;
          v26 += 4;
          v25 += 2;
        }

        while (v27 < *(this + 2));
        v19 = *(this + 2);
      }

      ++v18;
    }

    while (v18 < *(this + 3));
  }
}

void Phase::DspLayer::SimpleConvolver::Reset(float **this)
{
  vDSP_vclr(this[2], 1, 2 * *(this + 3) * *(this + 2));
  v2 = this[4];
  v3 = *(this + 2);

  vDSP_vclr(v2, 1, v3);
}

uint64_t Phase::DspLayer::SimpleConvolver::CopyStateFrom(Phase::DspLayer::SimpleConvolver *this, Phase::DspLayer::IConvolver *a2)
{
  v3 = (*(*a2 + 80))(a2, 0);
  v4 = (*(*v3 + 88))(v3);

  return Phase::DspLayer::IConvolver::FilterState::CopyStateFrom(this + 24, v4);
}

float *Phase::SpatialModeler::SimulationController::RequireSimulation@<X0>(float *this@<X0>, const Phase::SpatialModeler::RayTracerState *a2@<X1>, Phase::SpatialModeler::RayTracerState *a3@<X2>, Phase::Geometry::SystemState *a4@<X3>, uint64_t a5@<X8>)
{
  if (*(a3 + 168))
  {
    v9 = this;
    v10 = *(a3 + 4943);
    v11 = *(a3 + 4912);
    if (v10 <= 1)
    {
      v11 = 0.0;
    }

    if (v10)
    {
      v12 = (a3 + 19648);
      do
      {
        v13 = *v12++;
        v14 = v13;
        if (v11 < v13)
        {
          v11 = v14;
        }

        --v10;
      }

      while (v10);
    }

    this[140] = 5000.0;
    this[141] = fminf(fmaxf((v11 * 18.836) / 3.1416, 7500.0), 150000.0);
    v18 = *(a2 + 2822);
    v15 = *(a2 + 83);
    MinNumberOfActiveRaysAmongSources = Phase::SpatialModeler::RayTracerState::getMinNumberOfActiveRaysAmongSources(a3);
    Phase::SpatialModeler::RayTracerState::GetSumSharedReverbEnergy(a3, v17);
    Phase::SpatialModeler::SimulationController::RequireSimulation(v9, a2 + 18928, &v18, a4, v15, v17, a3 + 1315, a5, MinNumberOfActiveRaysAmongSources);
    return Phase::SpatialModeler::Telemetry::AddSceneObserverResults(a3 + 5368, a5);
  }

  else
  {
    *(a5 + 66) = 0;
    *(a5 + 58) = 0;
    *(a5 + 74) = 0;
    *a5 = 1;
    *(a5 + 9) = 0;
    *(a5 + 1) = 0;
    *(a5 + 17) = 0;
    *(a5 + 19) = 1;
    *(a5 + 28) = 0;
    *(a5 + 20) = 0;
    *(a5 + 36) = 0;
    *(a5 + 38) = 1;
    *(a5 + 47) = 0;
    *(a5 + 39) = 0;
    *(a5 + 55) = 0;
    *(a5 + 57) = 1;
  }

  return this;
}

uint64_t Phase::SpatialModeler::SimulationController::RequireSimulation@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X2>, uint64_t a4@<X3>, Phase::SpatialModeler::RayTracerState *a5@<X4>, float *a6@<X5>, __int128 *a7@<X6>, uint64_t a8@<X8>, float a9@<S0>)
{
  v44 = *MEMORY[0x277D85DE8];
  *(a8 + 62) = 0u;
  *(a8 + 32) = 0u;
  *(a8 + 48) = 0u;
  *a8 = 0u;
  *(a8 + 16) = 0u;
  Phase::SpatialModeler::SceneObserver::DetectSceneChanges(a1, a2, a3, a4, a5, a7, a8);
  if (Phase::SpatialModeler::SceneObserver::isDetectEnergyFluctuation(a1, a6))
  {
    memset(v40, 0, sizeof(v40));
    memset(v30, 0, 14);
    v30[14] = 1;
    v32 = 0;
    v31 = 0;
    v33 = 0;
    v34 = 1;
    v36 = 0;
    v35 = 0;
    v37 = 0;
    v38 = 1;
    v39 = 0;
    v41 = 1;
    v42 = 0;
    v43 = 0;
    Phase::SpatialModeler::SimulationUpdate::operator|=(a8, v30);
  }

  v13.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  v14 = 0;
  do
  {
    v15 = *(a8 + v14);
    if (v15)
    {
      break;
    }

    v16 = v14++ == 18;
  }

  while (!v16);
  if (v15)
  {
    *(a1 + 568) = 0;
    *(a8 + 76) = 0;
  }

  else
  {
    *(a8 + 76) = 1;
    if (*(a1 + 568) < *(a1 + 560))
    {
      *(a8 + 16) = 1;
      *(a8 + 54) = 1;
    }

    *(a1 + 568) = a9;
  }

  v17 = 19;
  do
  {
    v18 = *(a8 + v17);
    if (v18)
    {
      break;
    }

    v16 = v17++ == 37;
  }

  while (!v16);
  if (v18)
  {
    *(a1 + 572) = 0;
    *(a8 + 77) = 0;
  }

  else
  {
    *(a8 + 77) = 1;
    v19 = *(a1 + 564);
    if (*(a1 + 572) < v19)
    {
      if (v19 <= a9)
      {
        *(a8 + 36) = 1;
        *(a8 + 74) = 1;
      }

      else
      {
        v20 = (v13.__d_.__rep_ - *(a1 + 552));
        *(a8 + 34) = 1;
        if ((v20 / 1000000000.0) <= 15.0)
        {
          *(a8 + 65) = 0;
          *(a8 + 57) = 0;
          *(a8 + 72) = 0;
        }

        else
        {
          *(a8 + 75) = 1;
        }
      }
    }

    *(a1 + 572) = a9;
  }

  v21 = 0;
  do
  {
    v22 = *(a8 + v21);
    if (v22)
    {
      break;
    }

    v16 = v21++ == 18;
  }

  while (!v16);
  if (v22)
  {
    *(a1 + 528) = v13;
  }

  v23 = 38;
  do
  {
    v24 = *(a8 + v23);
    if (v24)
    {
      break;
    }

    v16 = v23++ == 56;
  }

  while (!v16);
  if (v24)
  {
    *(a1 + 544) = v13;
  }

  v25 = 19;
  do
  {
    v26 = *(a8 + v25);
    if (v26)
    {
      break;
    }

    v16 = v25++ == 37;
  }

  while (!v16);
  if (v26)
  {
    *(a1 + 536) = v13;
  }

  v27 = 57;
  do
  {
    v28 = *(a8 + v27);
    if (v28)
    {
      break;
    }

    v16 = v27++ == 75;
  }

  while (!v16);
  if (v28)
  {
    *(a1 + 552) = v13;
  }

  result = Phase::Logger::GetInstance(v13.__d_.__rep_);
  if (*(result + 1591) == 1)
  {
    return Phase::SpatialModeler::RoomSimulationLogging::logSceneObserverUpdateCauses(a8);
  }

  return result;
}

void Phase::SpatialModeler::SimulationController::AdjustAggregationCoefficientsDynamic(float32x2_t *a1, uint64_t a2, float *a3, float a4, float a5, float a6, float a7)
{
  v13 = 0;
  do
  {
    v14 = *(a2 + v13);
    if (v14)
    {
      break;
    }

    _ZF = v13++ == 18;
  }

  while (!_ZF);
  if (v14 && *(a2 + 76) == 1)
  {
    v16 = fminf(fmaxf(1.0 / (a1[72].f32[0] + 1.0), 0.0), 1.0);
    *a3 = 1.0 - v16;
    a3[1] = v16;
    v17 = fminf(fmaxf(1.0 / (a1[72].f32[1] + 1.0), 0.0), 1.0);
    a3[2] = 1.0 - v17;
    a3[3] = v17;
    __asm { FMOV            V1.2S, #1.0 }

    v22 = vadd_f32(a1[72], _D1);
  }

  else
  {
    v23 = -1.0 / a4;
    v24 = fminf(fmaxf(__exp10f(((-1.0 / a4) / a3[6]) * 6.0), 0.0), 1.0);
    *a3 = v24;
    a3[1] = 1.0 - v24;
    v50 = 1.0 - v24;
    v25 = __exp10f((v23 / a3[7]) * 6.0);
    v26 = 0;
    v27 = fminf(fmaxf(v25, 0.0), 1.0);
    v28 = 1.0 - v27;
    a3[2] = v27;
    a3[3] = 1.0 - v27;
    do
    {
      v29 = *(a2 + v26);
      if (v29)
      {
        break;
      }

      _ZF = v26++ == 18;
    }

    while (!_ZF);
    v30.f32[0] = v50;
    if (v29)
    {
      goto LABEL_18;
    }

    v31 = 0;
    do
    {
      v32 = *(a2 + 19 + v31);
      if (v32)
      {
        break;
      }

      _ZF = v31++ == 18;
    }

    while (!_ZF);
    if (v32)
    {
LABEL_18:
      v33 = a6 / a7;
      if ((a6 / a7) == 0.0)
      {
        *a3 = 0x3F80000000000000;
        v30.i32[0] = 1.0;
      }

      if (v33 > 2.0)
      {
        v30.f32[0] = (1.0 / fminf(fmaxf(v33, 2.0), 100.0)) * v30.f32[0];
        *a3 = 1.0 - v30.f32[0];
        a3[1] = v30.f32[0];
      }
    }

    else
    {
      v33 = a6 / a7;
    }

    if (v33 == 0.0)
    {
      *(a3 + 1) = 0x3F80000000000000;
      v28 = 1.0;
    }

    if (v33 > 2.0)
    {
      v28 = (1.0 / fminf(fmaxf(v33, 2.0), 100.0)) * v28;
      a3[2] = 1.0 - v28;
      a3[3] = v28;
    }

    v30.f32[1] = v28;
    __asm
    {
      FMOV            V0.2S, #1.0
      FMOV            V1.2S, #-1.0
    }

    v36 = vadd_f32(vdiv_f32(_D0, v30), _D1);
    v22 = vbic_s8(v36, vcltz_f32(v36));
  }

  a1[72] = v22;
  v37 = 0;
  v38 = a2 + 19;
  do
  {
    v39 = *(v38 + v37);
    if (v39)
    {
      break;
    }

    _ZF = v37++ == 18;
  }

  while (!_ZF);
  if (v39 && *(a2 + 77) == 1)
  {
    v40 = fminf(fmaxf(1.0 / (a1[73].f32[0] + 1.0), 0.0), 1.0);
    a3[4] = 1.0 - v40;
    a3[5] = v40;
    v41 = a1[73].f32[0] + 1.0;
  }

  else
  {
    v42 = __exp10f(((-1.0 / a5) / a3[8]) * 6.0);
    v43 = 0;
    v44 = fminf(fmaxf(v42, 0.0), 1.0);
    v45 = 1.0 - v44;
    a3[4] = v44;
    a3[5] = 1.0 - v44;
    do
    {
      v46 = *(a2 + v43);
      if (v46)
      {
        break;
      }

      _ZF = v43++ == 18;
    }

    while (!_ZF);
    if (v46)
    {
      goto LABEL_45;
    }

    v47 = 0;
    do
    {
      v48 = *(v38 + v47);
      if (v48)
      {
        break;
      }

      _ZF = v47++ == 18;
    }

    while (!_ZF);
    if (v48)
    {
LABEL_45:
      v49 = a6 / a7;
      if ((a6 / a7) == 0.0)
      {
        *(a3 + 2) = 0x3F80000000000000;
        v45 = 1.0;
      }

      if (v49 > 2.0)
      {
        v45 = (1.0 / fminf(fmaxf(v49, 2.0), 100.0)) * v45;
        a3[4] = 1.0 - v45;
        a3[5] = v45;
      }
    }

    v41 = (1.0 / v45) + -1.0;
    if (v41 < 0.0)
    {
      v41 = 0.0;
    }
  }

  a1[73].f32[0] = v41;
}

float Phase::SpatialModeler::SimulationController::AdjustAggregationCoefficientsDefault(float a1, float a2, uint64_t a3, float *a4)
{
  v6 = -1.0 / a1;
  v7 = fminf(fmaxf(__exp10f(((-1.0 / a1) / a4[6]) * 6.0), 0.0), 1.0);
  *a4 = v7;
  a4[1] = 1.0 - v7;
  v8 = fminf(fmaxf(__exp10f((v6 / a4[7]) * 6.0), 0.0), 1.0);
  a4[2] = v8;
  a4[3] = 1.0 - v8;
  result = fminf(fmaxf(__exp10f(((-1.0 / a2) / a4[8]) * 6.0), 0.0), 1.0);
  a4[4] = result;
  a4[5] = 1.0 - result;
  return result;
}

uint64_t Phase::SpatialModeler::SimulationController::ShouldEnableListenerOutsideMitigation(Phase::SpatialModeler::SimulationController *this, const Phase::SpatialModeler::RayTracerState *a2, Phase::SpatialModeler::RayTracerState *a3, char a4)
{
  if (a4)
  {
    return 0;
  }

  if (Phase::SpatialModeler::GetListenerOutsideEstimate(a2, a3, a3))
  {
    ++*(a3 + 5258);
    v6 = *(a3 + 2420);
    if (v6 != (a3 + 19368))
    {
      v7 = 0;
      v8 = vdupq_n_s64(4uLL);
      do
      {
        v9 = *(v6 + 7);
        if (v9)
        {
          v10 = 0.0;
          if ((*(v9 + 36) & 1) == 0)
          {
            v11 = (*(v9 + 28) * *(v9 + 24));
            if (v11)
            {
              v12 = *(v9 + 8);
              v13 = (v11 + 3) & 0x1FFFFFFFCLL;
              v14 = vdupq_n_s64(v11 - 1);
              v15 = (v12 + 8);
              v16 = xmmword_23A554B70;
              v17 = xmmword_23A554B60;
              v18 = xmmword_23A555020;
              do
              {
                v19 = v18;
                v20 = vcgeq_u64(v14, v16);
                v21 = vmovn_s64(v20);
                *v18.f32 = vuzp1_s16(v21, v7);
                if (v18.i8[0])
                {
                  v18.i32[0] = *(v15 - 2);
                }

                if (vuzp1_s16(v21, v7).i8[2])
                {
                  v18.i32[1] = *(v15 - 1);
                }

                v22 = vcgeq_u64(v14, v17);
                if (vuzp1_s16(v7, vmovn_s64(*&v22)).i32[1])
                {
                  v18.i64[1] = *v15;
                }

                v18 = vaddq_f32(v19, v18);
                v17 = vaddq_s64(v17, v8);
                v16 = vaddq_s64(v16, v8);
                v15 += 2;
                v13 -= 4;
              }

              while (v13);
              v23 = vbslq_s8(vuzp1q_s32(v20, v22), v18, v19);
              v10 = (vaddv_f32(*v23.i8) + *&v23.i32[2]) + *&v23.i32[3];
            }
          }

          *v7.i32 = *v7.i32 + v10;
        }

        v24 = *(v6 + 1);
        if (v24)
        {
          do
          {
            v25 = v24;
            v24 = *v24;
          }

          while (v24);
        }

        else
        {
          do
          {
            v25 = *(v6 + 2);
            v26 = *v25 == v6;
            v6 = v25;
          }

          while (!v26);
        }

        v6 = v25;
      }

      while (v25 != (a3 + 19368));
      if (*v7.i32 > 0.01)
      {
        return 1;
      }
    }
  }

  else
  {
    *(a3 + 5258) = 0;
  }

  return 0;
}

BOOL Phase::Controller::SoundAssetInfo::BaseInit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, double a6)
{
  v22 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    *(a1 + 16) = a3;
    *(a1 + 24) = a4;
    *(a1 + 8) = a2;
    *(a1 + 40) = a6;
  }

  else
  {
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid SoundAssetInfo Id!"];
    v9 = **(Phase::Logger::GetInstance(v8) + 832);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v15 = "SoundAssetInfo.mm";
      v16 = 1024;
      v17 = 25;
      v18 = 2048;
      v19 = 0;
      v20 = 2080;
      v21 = [(Phase::Logger *)v8 UTF8String];
      _os_log_impl(&dword_23A302000, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d SoundAssetError for assetId %llu: %s", buf, 0x26u);
    }

    if (a5)
    {
      v12 = *MEMORY[0x277CCA450];
      v13 = v8;
      v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
      *a5 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.coreaudio.phase" code:1346920803 userInfo:v10];
    }
  }

  return a3 != 0;
}

uint64_t Phase::SpatialModeler::SpaceBlending(unint64_t *a1, float *a2, uint64_t *a3, int a4, int a5, uint64_t a6, uint64_t a7, float a8, double a9, float a10)
{
  v54[7] = *MEMORY[0x277D85DE8];
  v10 = *a1;
  v11 = a8 <= 0.04 || v10 == 0;
  v12 = !v11;
  if (!v11)
  {
    if (a8 <= 0.96)
    {
      v19 = a8;
    }

    else
    {
      v19 = 1.0;
    }

    v20 = *a3;
    v21 = exp(a9 * 10.0 / 10.0 * 0.115129255);
    Phase::SpatialModeler::ReverbPresetDatabase::Implementation::Query(v20, v10, a4, a7, v46, v21);
    *v33 = xmmword_23A554920;
    if (!Phase::IsNearlyEqual<float>(a2, v33, 0.000001))
    {
      Phase::SpatialModeler::RotateMetadata<float>(v46, a2);
    }

    if (a4 != 1 || a10 == 1.0)
    {
      if (!a4)
      {
        Phase::SpatialModeler::ConvertMetadataCartesianToSpherical<float>(v46);
      }
    }

    else
    {
      *v33 = sqrtf(a10);
      if (v51)
      {
        if (*v51)
        {
          v22 = v51[1];
          if (v22)
          {
            MEMORY[0x23EE87290](v51 + 2, 1, v33, v51 + 2, 1, v22 * *v51);
          }
        }
      }
    }

    if (a5 <= 1)
    {
      if (!a5)
      {
LABEL_40:
        std::unique_ptr<BOOL [],std::function<void ()(void *)>>::reset[abi:ne200100](&v53);
        std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](v54);
        std::unique_ptr<Phase::PackedSubbandArray<float>,std::function<void ()(void *)>>::reset[abi:ne200100](&v51, 0);
        std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](&v52);
        std::unique_ptr<float [],std::function<void ()(void *)>>::reset[abi:ne200100](&v49);
        std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](&v50);
        std::unique_ptr<Phase::Vector<float,3ul> [],std::function<void ()(void *)>>::reset[abi:ne200100](&v47);
        std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](&v48);
        return v12;
      }

      if (a5 == 1)
      {
        Phase::SpatialModeler::MorphDirectionalMetadata(a6, v46, v33, 1.0 - v19, v19);
LABEL_39:
        *a6 = *v33;
        *(a6 + 4) = v33[4];
        std::unique_ptr<Phase::Vector<float,3ul> [],std::function<void ()(void *)>>::operator=[abi:ne200100]((a6 + 8), &v33[8]);
        *(a6 + 48) = v36;
        std::unique_ptr<float [],std::function<void ()(void *)>>::operator=[abi:ne200100]((a6 + 56), &v37);
        *(a6 + 96) = v39;
        std::unique_ptr<Phase::PackedSubbandArray<float>,std::function<void ()(void *)>>::operator=[abi:ne200100]((a6 + 104), &v40);
        std::unique_ptr<BOOL [],std::function<void ()(void *)>>::operator=[abi:ne200100]((a6 + 144), &v42);
        *(a6 + 184) = v44;
        *(a6 + 192) = v45;
        std::unique_ptr<BOOL [],std::function<void ()(void *)>>::reset[abi:ne200100](&v42);
        std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](v43);
        std::unique_ptr<Phase::PackedSubbandArray<float>,std::function<void ()(void *)>>::reset[abi:ne200100](&v40, 0);
        std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](v41);
        std::unique_ptr<float [],std::function<void ()(void *)>>::reset[abi:ne200100](&v37);
        std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](v38);
        std::unique_ptr<Phase::Vector<float,3ul> [],std::function<void ()(void *)>>::reset[abi:ne200100](&v33[8]);
        std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](&v33[16]);
        goto LABEL_40;
      }

      goto LABEL_29;
    }

    if (a5 == 2)
    {
      Phase::SpatialModeler::XfadeDirectionalMetadata(a6, v46, v33, 1.0 - v19, v19);
      goto LABEL_39;
    }

    if (a5 != 3)
    {
LABEL_29:
      Phase::SpatialModeler::MorphDirectionalMetadata(a6, v46, v33, 1.0 - v19, v19);
      *a6 = *v33;
      *(a6 + 4) = v33[4];
      std::unique_ptr<Phase::Vector<float,3ul> [],std::function<void ()(void *)>>::operator=[abi:ne200100]((a6 + 8), &v33[8]);
      *(a6 + 48) = v36;
      std::unique_ptr<float [],std::function<void ()(void *)>>::operator=[abi:ne200100]((a6 + 56), &v37);
      *(a6 + 96) = v39;
      std::unique_ptr<Phase::PackedSubbandArray<float>,std::function<void ()(void *)>>::operator=[abi:ne200100]((a6 + 104), &v40);
      std::unique_ptr<BOOL [],std::function<void ()(void *)>>::operator=[abi:ne200100]((a6 + 144), &v42);
      *(a6 + 184) = v44;
      *(a6 + 192) = v45;
      std::unique_ptr<BOOL [],std::function<void ()(void *)>>::reset[abi:ne200100](&v42);
      std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](v43);
      std::unique_ptr<Phase::PackedSubbandArray<float>,std::function<void ()(void *)>>::reset[abi:ne200100](&v40, 0);
      std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](v41);
      std::unique_ptr<float [],std::function<void ()(void *)>>::reset[abi:ne200100](&v37);
      std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](v38);
      std::unique_ptr<Phase::Vector<float,3ul> [],std::function<void ()(void *)>>::reset[abi:ne200100](&v33[8]);
      v25 = std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](&v33[16]);
      v26 = **(Phase::Logger::GetInstance(v25) + 1264);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        *v33 = 136315650;
        *&v33[4] = "SpaceBlending.cpp";
        *&v33[12] = 1024;
        *&v33[14] = 116;
        v34 = 1024;
        v35 = a5;
        _os_log_impl(&dword_23A302000, v26, OS_LOG_TYPE_ERROR, "%25s:%-5d Selected invalid space blend algorithm (%i) via defaults-write. Valid choices: 0, 1, 2, 3. Using algorithm 1 (Morphing).", v33, 0x18u);
      }

      goto LABEL_40;
    }

    if (v19 >= 0.04)
    {
      if (v19 >= 0.3)
      {
        if (v19 >= 0.96)
        {
          v24 = 0.0;
          v23 = -INFINITY;
          goto LABEL_38;
        }

        v27 = (v19 + -0.3) / 0.7;
        v23 = (v27 * -100.0) + -20.0;
        v28 = -3.0;
        v29 = 3.0;
      }

      else
      {
        v27 = v19 / 0.3;
        v23 = (v19 / 0.3) * -20.0;
        v28 = -120.0;
        v29 = 117.0;
      }

      v24 = v28 + (v27 * v29);
    }

    else
    {
      v23 = 0.0;
      v24 = -INFINITY;
    }

LABEL_38:
    v30 = expf(((v23 * 10.0) / 10.0) * 0.23026);
    v31 = expf(((v24 * 10.0) / 10.0) * 0.23026);
    Phase::SpatialModeler::XfadeDirectionalMetadata(a6, v46, v33, v30, v31);
    goto LABEL_39;
  }

  return v12;
}

void Phase::SpatialModeler::EstimateEarlyEnergy(int *a1, void *a2, int a3, uint64_t *a4, unint64_t a5, float a6)
{
  v11 = a1;
  v51[8] = *MEMORY[0x277D85DE8];
  v12 = a1[31];
  std::vector<float>::resize(a2, v12);
  if (a5)
  {
    Phase::SpatialModeler::ReverbPresetDatabase::Implementation::Query(*a4, a5, 0, v12, &v42, 0.0000000630957344);
    if (a3 == 1)
    {
      if (a2[1] != *a2)
      {
        v24 = 0;
        do
        {
          v25 = *&v11[v24];
          TotalEnergyIn = Phase::SpatialModeler::GetTotalEnergyInBand<float>(&v42, v24);
          if (v25 <= 0.0)
          {
            v27 = COERCE_FLOAT(1);
          }

          else
          {
            v27 = v25;
          }

          v28 = ((logf(v27) * 4.3429) / 10.0) * 10.0;
          if (TotalEnergyIn <= 0.0)
          {
            v29 = COERCE_FLOAT(1);
          }

          else
          {
            v29 = TotalEnergyIn;
          }

          v30 = logf(v29);
          v31 = expf((((((((v30 * 4.3429) / 10.0) * 10.0) * a6) + ((1.0 - a6) * v28)) * 10.0) / 10.0) * 0.23026);
          v32 = *a2;
          *(*a2 + 4 * v24++) = v31;
        }

        while (v24 < (a2[1] - v32) >> 2);
      }

      goto LABEL_36;
    }

    if (a3 != 3)
    {
      if (a3 == 2 && a2[1] != *a2)
      {
        v14 = 0;
        do
        {
          v15 = *&v11[v14];
          v16 = Phase::SpatialModeler::GetTotalEnergyInBand<float>(&v42, v14);
          v17 = *a2;
          *(*a2 + 4 * v14++) = (v16 * a6) + ((1.0 - a6) * v15);
        }

        while (v14 < (a2[1] - v17) >> 2);
      }

LABEL_36:
      std::unique_ptr<BOOL [],std::function<void ()(void *)>>::reset[abi:ne200100](&v50);
      std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](v51);
      std::unique_ptr<Phase::PackedSubbandArray<float>,std::function<void ()(void *)>>::reset[abi:ne200100](&v48, 0);
      std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](&v49);
      std::unique_ptr<float [],std::function<void ()(void *)>>::reset[abi:ne200100](&v46);
      std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](&v47);
      std::unique_ptr<Phase::Vector<float,3ul> [],std::function<void ()(void *)>>::reset[abi:ne200100]((&v43 + 4));
      std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](&v45 + 2);
      return;
    }

    if (a6 < 0.04)
    {
      v22 = 0.0;
      v23 = -INFINITY;
      goto LABEL_33;
    }

    if (a6 >= 0.3)
    {
      if (a6 >= 0.96)
      {
        v23 = 0.0;
        v22 = -INFINITY;
LABEL_33:
        if (a2[1] != *a2)
        {
          v36 = expf(((v22 * 10.0) / 10.0) * 0.23026);
          v37 = expf(((v23 * 10.0) / 10.0) * 0.23026);
          v38 = 0;
          do
          {
            v39 = *&v11[v38];
            v40 = Phase::SpatialModeler::GetTotalEnergyInBand<float>(&v42, v38);
            v41 = *a2;
            *(*a2 + 4 * v38++) = (v37 * v40) + (v39 * v36);
          }

          while (v38 < (a2[1] - v41) >> 2);
        }

        goto LABEL_36;
      }

      v33 = (a6 + -0.3) / 0.7;
      v22 = (v33 * -100.0) + -20.0;
      v34 = -3.0;
      v35 = 3.0;
    }

    else
    {
      v33 = a6 / 0.3;
      v22 = (a6 / 0.3) * -20.0;
      v34 = -120.0;
      v35 = 117.0;
    }

    v23 = v34 + (v33 * v35);
    goto LABEL_33;
  }

  v18 = **(Phase::Logger::GetInstance(v13) + 1264);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    v42 = 136315394;
    v43 = "SpaceBlending.cpp";
    v44 = 1024;
    v45 = 181;
    _os_log_impl(&dword_23A302000, v18, OS_LOG_TYPE_ERROR, "%25s:%-5d The input space blend target preset string hash ID was invalid. Returning the simulated energy (without blending).", &v42, 0x12u);
  }

  v19 = v11[31];
  if (v19)
  {
    v20 = *a2;
    do
    {
      v21 = *v11++;
      *v20++ = v21;
      --v19;
    }

    while (v19);
  }
}

double Phase::Controller::SpatializerEncoder::AcquireFilters@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

Phase::Logger *Phase::Controller::SpatializerEncoder::GetCoordinateCount(Phase::Controller::SpatializerEncoder *this, const Phase::Controller::SpatializerFilterHandle *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  result = *(*(this + 2) + 20);
  if (result != **a2)
  {
    v3 = **(Phase::Logger::GetInstance(result) + 592);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v5 = 136315394;
      v6 = "Spatializer.mm";
      v7 = 1024;
      v8 = 34;
      _os_log_impl(&dword_23A302000, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION: mSpatializer->mInitParameters.mCoordinateCount == inHandle->GetCoordinateCount() is false.", &v5, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "PRECONDITION: mSpatializer->mInitParameters.mCoordinateCount == inHandle->GetCoordinateCount() is false.");
  }

  return result;
}

float Phase::Controller::SpatializerEncoder::VerifyCoordinateRanges(Phase::Logger *a1, float *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = a2[1];
  if (v2 < 0.0 || v2 > 180.0)
  {
    v7 = **(Phase::Logger::GetInstance(a1) + 592);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v14 = 136315394;
      v15 = "Spatializer.mm";
      v16 = 1024;
      v17 = 56;
      _os_log_impl(&dword_23A302000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION: inCoordinatesSpherical.inclination >= 0.f && inCoordinatesSpherical.inclination <= 180.f is false.", &v14, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::domain_error::domain_error[abi:ne200100](exception, "PRECONDITION: inCoordinatesSpherical.inclination >= 0.f && inCoordinatesSpherical.inclination <= 180.f is false.");
  }

  v4 = a2[2];
  if (v4 < 0.0 || v4 >= 360.0)
  {
    v9 = **(Phase::Logger::GetInstance(a1) + 592);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v14 = 136315394;
      v15 = "Spatializer.mm";
      v16 = 1024;
      v17 = 58;
      _os_log_impl(&dword_23A302000, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION: inCoordinatesSpherical.azimuth >= 0.f && inCoordinatesSpherical.azimuth < 360.f is false.", &v14, 0x12u);
    }

    v11 = __cxa_allocate_exception(0x10uLL);
    std::domain_error::domain_error[abi:ne200100](v11, "PRECONDITION: inCoordinatesSpherical.azimuth >= 0.f && inCoordinatesSpherical.azimuth < 360.f is false.");
  }

  result = *a2;
  if (*a2 < 0.0)
  {
    v12 = **(Phase::Logger::GetInstance(a1) + 592);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v14 = 136315394;
      v15 = "Spatializer.mm";
      v16 = 1024;
      v17 = 59;
      _os_log_impl(&dword_23A302000, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION: inCoordinatesSpherical.radius >= 0.f is false.", &v14, 0x12u);
    }

    v13 = __cxa_allocate_exception(0x10uLL);
    std::domain_error::domain_error[abi:ne200100](v13, "PRECONDITION: inCoordinatesSpherical.radius >= 0.f is false.");
  }

  return result;
}

void *Phase::Controller::SpatializerFilterHandle::SpatializerFilterHandle(void *this, const Phase::Controller::SpatializerFilterHandle *a2)
{
  v2 = *(a2 + 1);
  *this = *a2;
  this[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v3 = *(a2 + 3);
  this[2] = *(a2 + 2);
  this[3] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(a2 + 5);
  this[4] = *(a2 + 4);
  this[5] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

uint64_t Phase::Controller::Spatializer::Spatializer(uint64_t a1, __int128 *a2, uint64_t *a3, __int128 *a4)
{
  *a1 = &unk_284D37528;
  v6 = *a2;
  *(a1 + 24) = 0;
  v7 = (a1 + 24);
  *(a1 + 8) = v6;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  std::vector<char>::__init_with_size[abi:ne200100]<char *,char *>(a1 + 24, *a3, a3[1], a3[1] - *a3);
  v7[1].__r_.__value_.__r.__words[0] = 0;
  v7[1].__r_.__value_.__l.__size_ = 0;
  v7[1].__r_.__value_.__r.__words[2] = 0;
  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v7 + 2, *a4, *(a4 + 1));
  }

  else
  {
    v8 = *a4;
    v7[2].__r_.__value_.__r.__words[2] = *(a4 + 2);
    *&v7[2].__r_.__value_.__l.__data_ = v8;
  }

  return a1;
}

void sub_23A4F6F6C(_Unwind_Exception *exception_object)
{
  v4 = v1[8];
  v1[8] = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = v1[7];
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = *v2;
  if (*v2)
  {
    v1[4] = v6;
    operator delete(v6);
  }

  _Unwind_Resume(exception_object);
}

void Phase::Controller::Spatializer::~Spatializer(void **this)
{
  *this = &unk_284D37528;
  if (*(this + 95) < 0)
  {
    operator delete(this[9]);
  }

  v2 = this[8];
  this[8] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = this[7];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = this[3];
  if (v4)
  {
    this[4] = v4;
    operator delete(v4);
  }
}

void Phase::Controller::Spatializer::AcquireFilters(Phase::Controller::Spatializer *this@<X0>, uint64_t a2@<X8>)
{
  v4 = *(this + 6);
  v3 = *(this + 7);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v4 + 32))(v4);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = *(a2 + 24);
  *(a2 + 16) = v4;
  *(a2 + 24) = v3;
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void sub_23A4F7110(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Phase::Controller::Spatializer::Update(Phase::Controller::Spatializer *this, __n128 a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = *(this + 6);
  if (!v2)
  {
    v5 = **(Phase::Logger::GetInstance(0) + 592);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315394;
      v8 = "Spatializer.mm";
      v9 = 1024;
      v10 = 200;
      _os_log_impl(&dword_23A302000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION: mEncoder.get() != nullptr is false.", &v7, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "PRECONDITION: mEncoder.get() != nullptr is false.");
  }

  v3 = *(*v2 + 96);

  return v3(a2);
}

void *std::__shared_ptr_emplace<Phase::Controller::SpatializerFilterDatabase>::__shared_ptr_emplace[abi:ne200100]<Phase::Controller::Spatializer const*&,Phase::Controller::SpatializerEncoder const*&,unsigned int &,std::allocator<Phase::Controller::SpatializerFilterDatabase>,0>(void *a1, const Phase::Controller::Spatializer **a2, const Phase::Controller::SpatializerEncoder **a3, int *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_284D37560;
  Phase::Controller::SpatializerFilterDatabase::SpatializerFilterDatabase((a1 + 3), *a2, *a3, *a4);
  return a1;
}

void std::__shared_ptr_emplace<Phase::Controller::SpatializerFilterDatabase>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284D37560;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x23EE864A0);
}

void std::__shared_ptr_emplace<Phase::Controller::SpatializerFilterDatabase>::__on_zero_shared(uint64_t a1)
{
  v2 = (a1 + 264);
  v3 = -192;
  do
  {
    v4 = *(v2 - 1);
    if (v4)
    {
      *v2 = v4;
      operator delete(v4);
    }

    v5 = *(v2 - 4);
    if (v5)
    {
      *(v2 - 3) = v5;
      operator delete(v5);
    }

    v2 -= 6;
    v3 += 48;
  }

  while (v3);
  v7 = (a1 + 64);
  std::vector<Phase::Controller::SpatializerFilterDatabase::FilterData>::__destroy_vector::operator()[abi:ne200100](&v7);
  v6 = *(a1 + 40);
  if (v6)
  {
    *(a1 + 48) = v6;
    operator delete(v6);
  }
}

void std::vector<Phase::Controller::SpatializerFilterDatabase::FilterData>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 48;
        std::__destroy_at[abi:ne200100]<Phase::Controller::SpatializerFilterDatabase::FilterData,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__destroy_at[abi:ne200100]<Phase::Controller::SpatializerFilterDatabase::FilterData,0>(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }

  v3 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v3;

    operator delete(v3);
  }
}

Phase::Controller::SpatializerFilterDatabase *Phase::Controller::SpatializerFilterDatabase::SpatializerFilterDatabase(Phase::Controller::SpatializerFilterDatabase *this, const Phase::Controller::Spatializer *a2, const Phase::Controller::SpatializerEncoder *a3, int a4)
{
  v5 = a3;
  v192 = *MEMORY[0x277D85DE8];
  *(this + 4) = 0u;
  v8 = this + 64;
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  v161 = (this + 40);
  *(this + 12) = 0u;
  *(this + 13) = 0u;
  *(this + 10) = 0u;
  *(this + 11) = 0u;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 5) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  if (!a3)
  {
    v5 = *(a2 + 6);
    v9 = *(a2 + 7);
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }
  }

  v158 = v8;
  *this = *(a2 + 5);
  v10 = (*(*v5 + 48))(v5);
  *(this + 1) = v10;
  *(this + 2) = a4;
  v11 = *this;
  if (v11 <= 0)
  {
    v151 = **(Phase::Logger::GetInstance(v10) + 592);
    if (os_log_type_enabled(v151, OS_LOG_TYPE_ERROR))
    {
      LODWORD(v179[0].__locale_) = 136315394;
      *(&v179[0].__locale_ + 4) = "SpatializerFilterDatabase.mm";
      WORD2(v179[1].__locale_) = 1024;
      *(&v179[1].__locale_ + 6) = 38;
      _os_log_impl(&dword_23A302000, v151, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION: mCoordinateCount > 0 is false.", v179, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "PRECONDITION: mCoordinateCount > 0 is false.");
LABEL_163:
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
  }

  if (a4 <= 0)
  {
    v153 = **(Phase::Logger::GetInstance(v10) + 592);
    if (os_log_type_enabled(v153, OS_LOG_TYPE_ERROR))
    {
      LODWORD(v179[0].__locale_) = 136315394;
      *(&v179[0].__locale_ + 4) = "SpatializerFilterDatabase.mm";
      WORD2(v179[1].__locale_) = 1024;
      *(&v179[1].__locale_ + 6) = 39;
      _os_log_impl(&dword_23A302000, v153, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION: inFilterLengthInSamples > 0 is false.", v179, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "PRECONDITION: inFilterLengthInSamples > 0 is false.");
    goto LABEL_163;
  }

  if (v10 <= 0)
  {
    v154 = **(Phase::Logger::GetInstance(v10) + 592);
    if (os_log_type_enabled(v154, OS_LOG_TYPE_ERROR))
    {
      LODWORD(v179[0].__locale_) = 136315394;
      *(&v179[0].__locale_ + 4) = "SpatializerFilterDatabase.mm";
      WORD2(v179[1].__locale_) = 1024;
      *(&v179[1].__locale_ + 6) = 40;
      _os_log_impl(&dword_23A302000, v154, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION: mFilterChannelCount > 0 is false.", v179, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "PRECONDITION: mFilterChannelCount > 0 is false.");
    goto LABEL_163;
  }

  v160 = a4;
  Phase::Controller::SpatializerFilterDatabase::FilterData::FilterData(v179, v10, a4);
  v12 = *(this + 5);
  v13 = *(this + 6);
  v14 = 0xAAAAAAAAAAAAAAABLL * ((v13 - v12) >> 4);
  v15 = v11 - v14;
  if (v11 <= v14)
  {
    if (v11 < v14)
    {
      v20 = (v12 + 48 * v11);
      while (v13 != v20)
      {
        v13 -= 6;
        std::__destroy_at[abi:ne200100]<Phase::Controller::SpatializerFilterDatabase::FilterData,0>(v13);
      }

      *(this + 6) = v20;
    }
  }

  else
  {
    v16 = *(this + 7);
    if (0xAAAAAAAAAAAAAAABLL * ((v16 - v13) >> 4) < v15)
    {
      v17 = 0xAAAAAAAAAAAAAAABLL * ((v16 - v12) >> 4);
      v18 = 2 * v17;
      if (2 * v17 <= v11)
      {
        v18 = v11;
      }

      if (v17 >= 0x2AAAAAAAAAAAAAALL)
      {
        v19 = 0x555555555555555;
      }

      else
      {
        v19 = v18;
      }

      *&v172 = v161;
      if (v19 <= 0x555555555555555)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v21 = &v13[6 * v15];
    v22 = 48 * v11 - 16 * ((v13 - v12) >> 4);
    do
    {
      *v13 = 0;
      v13[1] = 0;
      v13[2] = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(v13, v179[0].__locale_, v179[1].__locale_, (v179[1].__locale_ - v179[0].__locale_) >> 2);
      v13[3] = 0;
      v13[4] = 0;
      v13[5] = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>((v13 + 3), v179[3].__locale_, v179[4].__locale_, (v179[4].__locale_ - v179[3].__locale_) >> 2);
      v13 += 6;
      v22 -= 48;
    }

    while (v22);
    *(this + 6) = v21;
  }

  if (v179[3].__locale_)
  {
    v179[4] = v179[3];
    operator delete(v179[3].__locale_);
  }

  if (v179[0].__locale_)
  {
    v179[1] = v179[0];
    operator delete(v179[0].__locale_);
  }

  Phase::Controller::SpatializerFilterDatabase::FilterData::FilterData(v179, *(this + 1), *(this + 2));
  v23 = *v158;
  if (*v158)
  {
    *(this + 9) = v23;
    operator delete(v23);
    *v158 = 0;
    *(v158 + 1) = 0;
    *(v158 + 2) = 0;
  }

  locale = *(this + 11);
  *(this + 4) = *&v179[0].__locale_;
  *(this + 10) = v179[2];
  memset(v179, 0, 24);
  if (locale)
  {
    *(this + 12) = locale;
    operator delete(locale);
    *(this + 11) = 0;
    *(this + 12) = 0;
    *(this + 13) = 0;
    locale = v179[0].__locale_;
  }

  v25 = v179[3].__locale_;
  *(this + 88) = *&v179[3].__locale_;
  *(this + 13) = v179[5];
  memset(&v179[3], 0, 24);
  if (locale)
  {
    v179[1].__locale_ = locale;
    operator delete(locale);
  }

  if (*(this + 1) == 2)
  {
    Phase::Controller::SpatializerFilterDatabase::FilterData::FilterData(v179, 2, *(this + 2));
    v27 = (this + 208);
    v26 = *(this + 26);
    if (v26)
    {
      *(this + 27) = v26;
      operator delete(v26);
      *v27 = 0;
      *(this + 27) = 0;
      *(this + 28) = 0;
    }

    v28 = *(this + 29);
    *(this + 13) = *&v179[0].__locale_;
    *(this + 28) = v179[2];
    memset(v179, 0, 24);
    if (v28)
    {
      *(this + 30) = v28;
      operator delete(v28);
      *(this + 29) = 0;
      *(this + 30) = 0;
      *(this + 31) = 0;
      v28 = v179[0].__locale_;
    }

    *(this + 232) = *&v179[3].__locale_;
    *(this + 31) = v179[5];
    memset(&v179[3], 0, 24);
    if (v28)
    {
      v179[1].__locale_ = v28;
      operator delete(v28);
    }

    v25 = vdup_n_s32(0x3F3504F3u);
    **v27 = v25;
  }

  v167 = 0;
  v168 = 0;
  v169 = 0;
  v29 = Phase::EQSphere::eq_point_set_polar(2u, *this, &v167, v25);
  if (v29)
  {
    v155 = **(Phase::Logger::GetInstance(v29) + 592);
    if (os_log_type_enabled(v155, OS_LOG_TYPE_ERROR))
    {
      LODWORD(v179[0].__locale_) = 136315394;
      *(&v179[0].__locale_ + 4) = "SpatializerFilterDatabase.mm";
      WORD2(v179[1].__locale_) = 1024;
      *(&v179[1].__locale_ + 6) = 63;
      _os_log_impl(&dword_23A302000, v155, OS_LOG_TYPE_ERROR, "%25s:%-5d POSTCONDITION: result == EXIT_SUCCESS is false.", v179, 0x12u);
    }

    v150 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v150, "POSTCONDITION: result == EXIT_SUCCESS is false.");
LABEL_167:
  }

  if (v168 == v167 || v168 - v167 != 48 || (v30 = v167[1] - *v167, v30 >> 2 != *this) || v167[4] - v167[3] != v30)
  {
    v149 = **(Phase::Logger::GetInstance(v29) + 592);
    if (os_log_type_enabled(v149, OS_LOG_TYPE_ERROR))
    {
      LODWORD(v179[0].__locale_) = 136315394;
      *(&v179[0].__locale_ + 4) = "SpatializerFilterDatabase.mm";
      WORD2(v179[1].__locale_) = 1024;
      *(&v179[1].__locale_ + 6) = 66;
      _os_log_impl(&dword_23A302000, v149, OS_LOG_TYPE_ERROR, "%25s:%-5d POSTCONDITION: !angles.empty() && angles.size() == dimensionCount && angles[0].size() == mCoordinateCount && angles[1].size() == mCoordinateCount is false.", v179, 0x12u);
    }

    v150 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v150, "POSTCONDITION: !angles.empty() && angles.size() == dimensionCount && angles[0].size() == mCoordinateCount && angles[1].size() == mCoordinateCount is false.");
    goto LABEL_167;
  }

  std::vector<Phase::Vector<float,3ul>>::vector[abi:ne200100](&v165, v30 >> 2);
  if (v167[1] != *v167)
  {
    v31 = 0;
    v32 = 0;
    do
    {
      *(v165 + v31) = 1065353216;
      *(v165 + v31 + 4) = *(v167[3] + 4 * v32) * 57.296;
      v33 = *(*v167 + 4 * v32) * 57.296;
      v34 = v33 - (floorf(v33 / 360.0) * 360.0);
      if (v34 >= 360.0)
      {
        v35 = nextafterf(360.0, 0.0);
      }

      else
      {
        v35 = v34 + 0.0;
      }

      *(v165 + v31 + 8) = v35;
      ++v32;
      v31 += 12;
    }

    while (v32 < (v167[1] - *v167) >> 2);
  }

  v36 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v166 - v165) >> 2));
  if (v166 == v165)
  {
    v37 = 0;
  }

  else
  {
    v37 = v36;
  }

  v38 = std::__introsort<std::_ClassicAlgPolicy,Phase::Controller::SpatializerFilterDatabase::SpatializerFilterDatabase(Phase::Controller::Spatializer const*,Phase::Controller::SpatializerEncoder const*,int)::$_0 &,Phase::Vector<float,3ul> *,false>(v165, v166, v37, 1);
  Instance = Phase::Logger::GetInstance(v38);
  v159 = *(Instance[74] + 8);
  if (v159)
  {
    v40 = MEMORY[0x277D82678];
    v41 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82678], "Directions: ", 12);
    v42 = MEMORY[0x23EE86160](v41, 0xAAAAAAAAAAAAAAABLL * ((v166 - v165) >> 2));
    v43 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v42, " [inclination, azimuth]", 23);
    std::ios_base::getloc((v43 + *(*v43 - 24)));
    v44 = std::locale::use_facet(v179, MEMORY[0x277D82680]);
    (v44->__vftable[2].~facet_0)(v44, 10);
    std::locale::~locale(v179);
    std::ostream::put();
    std::ostream::flush();
    v45 = v165;
    v46 = v166;
    if (v165 != v166)
    {
      v47 = MEMORY[0x277D82680];
      do
      {
        v48 = std::ostream::operator<<();
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v48, ", ", 2);
        v49 = std::ostream::operator<<();
        std::ios_base::getloc((v49 + *(*v49 - 24)));
        v50 = std::locale::use_facet(v179, v47);
        (v50->__vftable[2].~facet_0)(v50, 10);
        std::locale::~locale(v179);
        std::ostream::put();
        std::ostream::flush();
        v45 += 3;
      }

      while (v45 != v46);
    }

    std::ios_base::getloc((v40 + *(*v40 - 24)));
    v51 = std::locale::use_facet(v179, MEMORY[0x277D82680]);
    (v51->__vftable[2].~facet_0)(v51, 10);
    std::locale::~locale(v179);
    std::ostream::put();
    Instance = std::ostream::flush();
  }

  v52 = *(this + 2);
  *(this + 3) = v52;
  v54 = v165;
  v53 = v166;
  if (v166 - v165 == 12)
  {
    v55 = 0;
    v56 = 1;
    v57 = 0.0;
    v58 = 1;
  }

  else
  {
    v59 = 0;
    v60 = 0;
    v55 = 0;
    v57 = 0.0;
    v56 = 1;
    do
    {
      if (*&v54[v59 + 4] == *&v54[v59 + 16])
      {
        ++v56;
      }

      else
      {
        v61 = *(this + 4);
        if (v52 >= v61)
        {
          v62 = *(this + 2);
          v63 = 0xCCCCCCCCCCCCCCCDLL * ((v52 - v62) >> 2);
          v64 = v63 + 1;
          if (v63 + 1 > 0xCCCCCCCCCCCCCCCLL)
          {
            std::vector<Phase::Controller::DVM23::SubmixController *>::__throw_length_error[abi:ne200100]();
          }

          v65 = 0xCCCCCCCCCCCCCCCDLL * ((v61 - v62) >> 2);
          if (2 * v65 > v64)
          {
            v64 = 2 * v65;
          }

          if (v65 >= 0x666666666666666)
          {
            v66 = 0xCCCCCCCCCCCCCCCLL;
          }

          else
          {
            v66 = v64;
          }

          if (v66)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<Phase::Controller::SpatializerFilterDatabase::Ring>>(v66);
          }

          Phase::Controller::SpatializerFilterDatabase::Ring::Ring((4 * ((v52 - v62) >> 2)), v57, v56, v55);
          v52 = (20 * v63 + 20);
          v67 = *(this + 2);
          v68 = *(this + 3) - v67;
          v69 = (20 * v63 - v68);
          memcpy(v69, v67, v68);
          Instance = *(this + 2);
          *(this + 2) = v69;
          *(this + 3) = v52;
          *(this + 4) = 0;
          if (Instance)
          {
            operator delete(Instance);
          }
        }

        else
        {
          Phase::Controller::SpatializerFilterDatabase::Ring::Ring(v52, v57, v56, v55);
          v52 = (v52 + 20);
        }

        *(this + 3) = v52;
        v57 = *&v54[v59 + 20];
        v55 = v60 + 1;
        v54 = v165;
        v53 = v166;
        v56 = 1;
      }

      ++v60;
      v58 = 0xAAAAAAAAAAAAAAABLL * ((v53 - v54) >> 2);
      v59 += 12;
    }

    while (v58 - 1 > v60);
  }

  if (v58 != v55 + v56)
  {
    v156 = **(Phase::Logger::GetInstance(Instance) + 592);
    if (os_log_type_enabled(v156, OS_LOG_TYPE_ERROR))
    {
      LODWORD(v179[0].__locale_) = 136315394;
      *(&v179[0].__locale_ + 4) = "SpatializerFilterDatabase.mm";
      WORD2(v179[1].__locale_) = 1024;
      *(&v179[1].__locale_ + 6) = 138;
      _os_log_impl(&dword_23A302000, v156, OS_LOG_TYPE_ERROR, "%25s:%-5d POSTCONDITION: filterStartIndex + azimuthCount == directions.size() is false.", v179, 0x12u);
    }

    v157 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v157, "POSTCONDITION: filterStartIndex + azimuthCount == directions.size() is false.");
  }

  v70 = *(this + 4);
  if (v52 >= v70)
  {
    v72 = *(this + 2);
    v73 = 0xCCCCCCCCCCCCCCCDLL * ((v52 - v72) >> 2);
    if (v73 + 1 > 0xCCCCCCCCCCCCCCCLL)
    {
      std::vector<Phase::Controller::DVM23::SubmixController *>::__throw_length_error[abi:ne200100]();
    }

    v74 = 0xCCCCCCCCCCCCCCCDLL * ((v70 - v72) >> 2);
    v75 = 2 * v74;
    if (2 * v74 <= v73 + 1)
    {
      v75 = v73 + 1;
    }

    if (v74 >= 0x666666666666666)
    {
      v76 = 0xCCCCCCCCCCCCCCCLL;
    }

    else
    {
      v76 = v75;
    }

    if (v76)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<Phase::Controller::SpatializerFilterDatabase::Ring>>(v76);
    }

    v77 = 20 * v73;
    Phase::Controller::SpatializerFilterDatabase::Ring::Ring((20 * v73), v57, v56, v55);
    v71 = 20 * v73 + 20;
    v78 = *(this + 2);
    v79 = *(this + 3) - v78;
    v80 = v77 - v79;
    memcpy((v77 - v79), v78, v79);
    v81 = *(this + 2);
    *(this + 2) = v80;
    *(this + 3) = v71;
    *(this + 4) = 0;
    if (v81)
    {
      operator delete(v81);
    }
  }

  else
  {
    Phase::Controller::SpatializerFilterDatabase::Ring::Ring(v52, v57, v56, v55);
    v71 = v52 + 20;
  }

  *(this + 3) = v71;
  if (v159)
  {
    v82 = MEMORY[0x277D82678];
    v83 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82678], "Rings: ", 7);
    v84 = MEMORY[0x23EE86160](v83, 0xCCCCCCCCCCCCCCCDLL * ((*(this + 3) - *(this + 2)) >> 2));
    v85 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v84, " [start, step, count, index]", 28);
    std::ios_base::getloc((v85 + *(*v85 - 24)));
    v86 = std::locale::use_facet(v179, MEMORY[0x277D82680]);
    (v86->__vftable[2].~facet_0)(v86, 10);
    std::locale::~locale(v179);
    std::ostream::put();
    std::ostream::flush();
    v87 = *(this + 2);
    v88 = *(this + 3);
    if (v87 != v88)
    {
      v89 = MEMORY[0x277D82680];
      do
      {
        v90 = std::ostream::operator<<();
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v90, ", ", 2);
        v91 = std::ostream::operator<<();
        v92 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v91, ", ", 2);
        v93 = MEMORY[0x23EE86130](v92, *(v87 + 12));
        v94 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v93, ", ", 2);
        v95 = MEMORY[0x23EE86130](v94, *(v87 + 16));
        std::ios_base::getloc((v95 + *(*v95 - 24)));
        v96 = std::locale::use_facet(v179, v89);
        (v96->__vftable[2].~facet_0)(v96, 10);
        std::locale::~locale(v179);
        std::ostream::put();
        std::ostream::flush();
        v87 += 20;
      }

      while (v87 != v88);
    }

    std::ios_base::getloc((v82 + *(*v82 - 24)));
    v97 = std::locale::use_facet(v179, MEMORY[0x277D82680]);
    (v97->__vftable[2].~facet_0)(v97, 10);
    std::locale::~locale(v179);
    std::ostream::put();
    std::ostream::flush();
    v71 = *(this + 3);
  }

  *(this + 3) = 0;
  v98 = 0xCCCCCCCCCCCCCCCDLL * ((v71 - *(this + 2)) >> 2);
  v99 = 0.0;
  if (v98 >= 2)
  {
    v99 = *(v166 - 2) / (v98 - 1);
    *(this + 3) = 1.0 / v99;
  }

  v100 = *(this + 1);
  v101 = *(this + 2);
  memset(v179, 0, sizeof(v179));
  v180 = 0;
  v181 = 0;
  v182 = 0;
  v185 = 0u;
  *v186 = 0u;
  v187 = 0u;
  v188 = 0;
  v183 = 0uLL;
  v184 = 0;
  v189 = 0;
  v190 = 0;
  v191 = 0;
  if (v100 <= 0)
  {
    goto LABEL_149;
  }

  if (v101 < 0)
  {
    goto LABEL_149;
  }

  if (!v101)
  {
    goto LABEL_149;
  }

  v181 = 0x800000000BLL;
  v183 = xmmword_23A597ED0;
  Phase::AudioBuffer<float>::AudioBuffer(v176, 1u, 0x581u);
  v102 = Phase::AudioBuffer<float>::GetWritePointer(v176, 0, 0);
  v170 = 0u;
  *v171 = 0u;
  v172 = 0u;
  v173[0] = 0;
  if (*&v183 <= 0.0)
  {
    goto LABEL_149;
  }

  v103 = v102;
  v174 = 1407;
  v175 = v183;
  if (*&v183 >= 50.0)
  {
    v104 = (*&v183 + -8.7) * 0.1102;
  }

  else
  {
    v104 = 0.0;
    if (*&v183 > 21.0)
    {
      v105 = *&v183 + -21.0;
      v104 = v105 * 0.07886 + pow(*&v183 + -21.0, 0.4) * 0.5842;
    }
  }

  Phase::BesselFunction::I_0<double>(v104);
  v107 = v106;
  Phase::AudioBuffer<float>::AllocateInternal(&v170, 1u, 0x580u);
  v108 = 1.0 / v107;
  v109 = Phase::AudioBuffer<float>::GetWritePointer(&v170, 0, 1);
  v110 = -703;
  v111 = 1407;
  do
  {
    Phase::BesselFunction::I_0<double>(v104 * sqrt(1.0 - v110 / 703.0 * (v110 / 703.0)));
    *&v112 = v108 * v112;
    *v109++ = LODWORD(v112);
    ++v110;
    --v111;
  }

  while (v111);
  Phase::AudioBuffer<float>::SetValue(&v170, 0, 0.0);
  Pointer = Phase::AudioBuffer<float>::GetReadPointer(&v170, 0);
  v114 = HIDWORD(v181);
  v115 = 3.14159265 / SHIDWORD(v181);
  *v103 = 0;
  v116 = v115 * 0.9;
  do
  {
    v117 = sin(v116 * (v111 + -704.0)) * 0.9 * *(Pointer + 4 * v111) / (v116 * (v111 + -704.0));
    *&v103[v111++] = v117;
  }

  while (v111 != 1408);
  *v103 = 0;
  v103[704] = 1063675494;
  v103[1408] = 0;
  v182 = v181 / 2 - 1;
  Phase::AudioBuffer<float>::AllocateInternal(v179, 1u, v181 + v181 * v114);
  v118 = Phase::AudioBuffer<float>::GetWritePointer(v179, 0, 0);
  v119 = HIDWORD(v181);
  if ((v181 & 0x8000000000000000) == 0)
  {
    v120 = 0;
    v121 = v181;
    v122 = v181;
    v123 = HIDWORD(v181) + 1;
    v124 = 4 * v181;
    v125 = 4 * HIDWORD(v181);
    do
    {
      if (v122 >= 1)
      {
        v126 = &v103[v119];
        v127 = v118;
        v128 = v121;
        do
        {
          *v127++ = *v126;
          v126 = (v126 + v125);
          --v128;
        }

        while (v128);
      }

      ++v120;
      --v119;
      v118 += v124;
    }

    while (v120 != v123);
  }

  if (v171[1])
  {
    *&v172 = v171[1];
    operator delete(v171[1]);
  }

  v162 = &v170;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v162);
  if (v177)
  {
    v178 = v177;
    operator delete(v177);
  }

  *&v170 = v176;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v170);
  if ((HIDWORD(v181) ^ (HIDWORD(v181) - 1)) <= HIDWORD(v181) - 1)
  {
LABEL_149:
    std::terminate();
  }

  v184 = 31 - __clz(HIDWORD(v181));
  v129 = v181 + 2 * v101 - 1;
  v130 = 1;
  do
  {
    v129 |= v129 >> v130;
    v131 = v130 >= 0x10;
    v130 *= 2;
  }

  while (!v131);
  LODWORD(v189) = v129 + v181;
  HIDWORD(v189) = v129;
  HIDWORD(v190) = v101;
  v191 = v101;
  Phase::AudioBuffer<float>::AllocateInternal(&v185, v100, v129 + v181);
  Phase::AudioBuffer<float>::Clear(&v185);
  LODWORD(v190) = v181 - 1;
  Phase::AudioBuffer<float>::AudioBuffer(&v170, *(this + 1), *(this + 2));
  Phase::AudioBuffer<float>::AudioBuffer(v176, *(this + 1), 1u);
  v132 = v160;
  v164 = 1.0 / *this;
  v134 = *(this + 2);
  v133 = *(this + 3);
  if (v133 != v134)
  {
    v135 = 0;
    v136 = 0;
    do
    {
      v137 = v134 + 20 * v135;
      if (*(v137 + 12) >= 1)
      {
        v138 = 0;
        do
        {
          v139 = *v137 + (v138 * *(v137 + 4));
          v140 = *v161;
          LODWORD(v162) = 0;
          *(&v162 + 1) = v99 * v135;
          v163 = v139;
          atomic_store(0, v173);
          v141 = v140 + 48 * v136;
          v143 = *(v141 + 24);
          v142 = (v141 + 24);
          (*(*v5 + 24))(v5, &v162, v132, v171[1], v143);
          Phase::ArrayFunction::InterleaveAdd(v171[1], *(this + 8), *(this + 2), *(this + 1));
          LODWORD(v144) = *(this + 1);
          if (v144 >= 1)
          {
            v145 = 0;
            v146 = 0.0;
            do
            {
              v147 = *(*v142 + 4 * v145);
              Phase::AudioBuffer<float>::SetValue(v176, v145, v147);
              v146 = v146 + v147;
              ++v145;
              v144 = *(this + 1);
            }

            while (v145 < v144);
            v132 = v160;
            if (v146 > 0.0)
            {
              Phase::PolyphaseKaiserFixedPointDelayLine<float>::Render(v179, &v170, v176, &v170);
              Phase::AudioBuffer<float>::Clear(&v185);
              LODWORD(v190) = v181 - 1;
              LODWORD(v144) = *(this + 1);
            }
          }

          Phase::ArrayFunction::Interleave(v171[1], *(*(this + 5) + 48 * v136++), *(this + 2), v144);
          ++v138;
        }

        while (v138 < *(v137 + 12));
        v134 = *(this + 2);
        v133 = *(this + 3);
      }

      ++v135;
    }

    while (0xCCCCCCCCCCCCCCCDLL * ((v133 - v134) >> 2) > v135);
  }

  MEMORY[0x23EE87290](*(this + 8), 1, &v164, *(this + 8), 1, *(this + 2) * *(this + 1));
  if (v177)
  {
    v178 = v177;
    operator delete(v177);
  }

  v162 = v176;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v162);
  if (v171[1])
  {
    *&v172 = v171[1];
    operator delete(v171[1]);
  }

  v176[0] = &v170;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](v176);
  if (v186[1])
  {
    *&v187 = v186[1];
    operator delete(v186[1]);
  }

  *&v170 = &v185;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v170);
  if (v179[3].__locale_)
  {
    v179[4] = v179[3];
    operator delete(v179[3].__locale_);
  }

  *&v170 = v179;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v170);
  if (v165)
  {
    v166 = v165;
    operator delete(v165);
  }

  v179[0].__locale_ = &v167;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](v179);
  return this;
}

void sub_23A4F8C64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, char *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, std::locale a37)
{
  __cxa_free_exception(v38);
  if (__p)
  {
    operator delete(__p);
  }

  a21 = &a18;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&a21);
  std::array<Phase::Controller::SpatializerFilterDatabase::FilterData,4ul>::~array(a9);
  a30 = a12;
  std::vector<Phase::Controller::SpatializerFilterDatabase::FilterData>::__destroy_vector::operator()[abi:ne200100](&a30);
  v40 = *(v37 + 16);
  if (v40)
  {
    *(v37 + 24) = v40;
    operator delete(v40);
  }

  _Unwind_Resume(a1);
}

void Phase::AudioBuffer<float>::SetValue(uint64_t a1, signed int a2, float a3)
{
  if (a2 < 0 || (v3 = *a1, v4 = *(a1 + 8), *a1 == v4) || (-1431655765 * ((v4 - v3) >> 3)) <= a2 || ((v3[1] - *v3) >> 2) <= 0)
  {
    std::terminate();
  }

  *v3[3 * a2] = a3;
  atomic_store(0, (a1 + 48));
}

void Phase::PolyphaseKaiserFixedPointDelayLine<float>::Render(_DWORD *a1, void *a2, void *a3, void *a4)
{
  v124 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  v5 = a2[1];
  v6 = v5 - *a2;
  v7 = 0xAAAAAAAAAAAAAAABLL * (v6 >> 3);
  v8 = v7;
  v9 = *a2 == v5;
  if (*a2 == v5)
  {
    v8 = 0;
  }

  v117 = v8;
  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = v7;
  }

  v11 = *a4;
  v12 = a4[1];
  v13 = -1431655765 * ((v12 - *a4) >> 3);
  if (*a4 == v12)
  {
    v13 = 0;
  }

  if (v10 != v13)
  {
    goto LABEL_83;
  }

  if (v4 == v5)
  {
    LODWORD(v18) = 0;
  }

  else
  {
    v18 = (v4[1] - *v4) >> 2;
  }

  if (v11 == v12)
  {
    LODWORD(v19) = 0;
  }

  else
  {
    v19 = (v11[1] - *v11) >> 2;
  }

  if (v18 != v19)
  {
    goto LABEL_83;
  }

  v20 = *a3;
  v21 = a3[1];
  v22 = -1431655765 * ((v21 - *a3) >> 3);
  if (*a3 == v21)
  {
    v22 = 0;
  }

  v23 = -1431655765 * (v6 >> 3);
  if (v4 == v5)
  {
    v23 = 0;
  }

  if (v22 != v23)
  {
    goto LABEL_83;
  }

  if (v20 == v21)
  {
    LODWORD(v25) = 0;
  }

  else
  {
    v24 = v20[1] - *v20;
    if ((v24 & 0x3FFFFFFFCLL) == 4)
    {
      goto LABEL_29;
    }

    v25 = v24 >> 2;
  }

  if (v4 == v5)
  {
    LODWORD(v26) = 0;
  }

  else
  {
    v26 = (v4[1] - *v4) >> 2;
  }

  if (v25 != v26)
  {
    goto LABEL_83;
  }

LABEL_29:
  v27 = v117;
  v28 = 16 * v117;
  MEMORY[0x28223BE20](a1);
  v119 = (&v105 - 2 * v117);
  bzero(v119, 16 * v117);
  MEMORY[0x28223BE20](v29);
  v121 = (&v105 - 2 * v27);
  bzero(v121, 16 * v27);
  MEMORY[0x28223BE20](v30);
  v120 = (&v105 - 2 * v27);
  bzero(v120, 16 * v27);
  if (v10)
  {
    v31 = 0;
    v32 = v120 + 1;
    v33 = v121 + 1;
    v34 = v119 + 1;
    do
    {
      Pointer = Phase::AudioBuffer<float>::GetReadPointer(a2, v31);
      if (*a2 == a2[1])
      {
        v36 = 0;
      }

      else
      {
        v36 = ((*(*a2 + 8) - **a2) >> 2);
      }

      *(v34 - 1) = Pointer;
      *v34 = v36;
      v37 = Phase::AudioBuffer<float>::GetReadPointer(a3, v31);
      if (*a3 == a3[1])
      {
        v38 = 0;
      }

      else
      {
        v38 = ((*(*a3 + 8) - **a3) >> 2);
      }

      *(v33 - 1) = v37;
      *v33 = v38;
      v39 = Phase::AudioBuffer<float>::GetWritePointer(a4, v31, 0);
      if (*a4 == a4[1])
      {
        v40 = 0;
      }

      else
      {
        v40 = ((*(*a4 + 8) - **a4) >> 2);
      }

      ++v31;
      *(v32 - 1) = v39;
      *v32 = v40;
      v32 += 2;
      v33 += 2;
      v34 += 2;
    }

    while (v10 != v31);
  }

  v41 = v119;
  v42 = (v119 + 1);
  v43 = v119[1];
  v44 = v121 + 1;
  v45 = v121[1];
  if (v45 != 1 && v45 != v43)
  {
    goto LABEL_83;
  }

  v46 = v120;
  if (v117)
  {
    v47 = v28;
    do
    {
      v48 = *v42;
      v42 += 2;
      if (v48 != v43)
      {
        goto LABEL_83;
      }

      v47 -= 16;
    }

    while (v47);
    v49 = v120 + 1;
    v50 = v28;
    do
    {
      v51 = *v49;
      v49 += 2;
      if (v51 != v43)
      {
        goto LABEL_83;
      }

      v50 -= 16;
    }

    while (v50);
    while (1)
    {
      v52 = *v44;
      v44 += 2;
      if (v52 != v45)
      {
        break;
      }

      v28 -= 16;
      if (!v28)
      {
        goto LABEL_52;
      }
    }

LABEL_83:
    std::terminate();
  }

LABEL_52:
  v118 = v119[1];
  v53 = a1[38];
  v54 = a1[14];
  v115 = a1[15];
  v55 = a1[22];
  v56 = modff(0.5, &v123);
  if (v45 != 1)
  {
    goto LABEL_83;
  }

  v122 = v54;
  v57 = (v54 - 1);
  v114 = 10 - v55;
  v58 = 1 << (9 - v55);
  v116 = a1[40];
  if (v118 <= v53)
  {
    v77 = v121;
    if (v117)
    {
      v78 = 0;
      v111 = 1 - v122;
      v107 = 4 * v118;
      v79 = v122;
      LODWORD(v113) = v58 - (((v56 * 1024.0) + 0.5) + (v123 << 10));
      v105 = v116;
      v112 = v118 + v116;
      v109 = v57 + v118;
      v106 = -v57;
      v110 = v118 + v57;
      while (1)
      {
        v80 = *v41;
        v120 = v46;
        v81 = *v46;
        v82 = Phase::AudioBuffer<float>::GetWritePointer((a1 + 24), v78, 0);
        v121 = v77;
        v83 = modff(fminf(fmaxf(**v77, 0.0), a1[41]) + v79, &v123);
        v84 = v113 + ((v83 * 1024.0) + 0.5);
        v85 = (v84 & 0x3FF) >> v114;
        if (v85 >= v115)
        {
          goto LABEL_83;
        }

        v86 = v123;
        v87 = Phase::AudioBuffer<float>::GetReadPointer(a1, 0);
        v88 = v87;
        v89 = v116;
        a1[40] = v116;
        v90 = a1[38];
        v119 = v41;
        if (v112 >= v90)
        {
          v108 = v87;
          v91 = v90 - v89;
          v92 = 4 * (v90 - v89);
          if (v90 != v89)
          {
            memmove(&v82[4 * v105], v80, 4 * v91);
          }

          if (v107 != v92)
          {
            memmove(&v82[4 * v57], &v80[4 * v91], v107 - v92);
          }

          LODWORD(v90) = a1[38];
          v41 = v119;
          v88 = v108;
          if (v118 > (v90 - v57))
          {
            goto LABEL_83;
          }
        }

        else if (v118)
        {
          memmove(&v82[4 * v105], v80, v107);
          LODWORD(v90) = a1[38];
        }

        if (v57)
        {
          memmove(v82, &v82[4 * v90 + 4 * v106], -4 * v106);
          LODWORD(v90) = a1[38];
        }

        v93 = v88 + 4 * v85 * v122;
        v94 = (v111 - ((v84 + (v86 << 10)) >> 10) + v90 + a1[40]) & a1[39];
        if (v110 + v94 <= v90)
        {
          v100 = v118;
          vDSP_conv(&v82[4 * v94], 1, (v93 + 4 * v57), -1, v81, 1, v118, v122);
          v99 = v121;
        }

        else
        {
          v95 = v78;
          v96 = (v90 + v111 - v94);
          v97 = (v93 + 4 * v57);
          v98 = v122;
          vDSP_conv(&v82[4 * v94], 1, v97, -1, v81, 1, v96, v122);
          v99 = v121;
          v100 = v118;
          vDSP_conv(v82, 1, v97, -1, &v81[v96], 1, v118 - v96, v98);
          v78 = v95;
          v41 = v119;
        }

        v101 = a1[40];
        v102 = v100 + v101;
        v103 = a1[38];
        v104 = v109 + v101 - v103;
        if (v102 < v103)
        {
          v104 = v102;
        }

        ++v78;
        a1[40] = v104;
        v77 = v99 + 2;
        v46 = v120 + 2;
        v41 += 2;
        if (v117 == v78)
        {
          return;
        }
      }
    }
  }

  else
  {
    v59 = v121;
    if (v117)
    {
      v60 = 0;
      v61 = v122;
      v62 = v53 - v57;
      LODWORD(v112) = v58 - (((v56 * 1024.0) + 0.5) + (v123 << 10));
      while (1)
      {
        v63 = v41[2 * v60];
        v64 = v46[2 * v60];
        v65 = Phase::AudioBuffer<float>::GetWritePointer((a1 + 24), v60, 0);
        v66 = modff(fminf(fmaxf(*v59[2 * v60], 0.0), a1[41]) + v61, &v123);
        v67 = v112 + ((v66 * 1024.0) + 0.5);
        v68 = (v67 & 0x3FF) >> v114;
        if (v68 >= v115)
        {
          break;
        }

        v113 = v60;
        v69 = v67 + (v123 << 10);
        v70 = Phase::AudioBuffer<float>::GetReadPointer(a1, 0);
        v71 = v122;
        v72 = (v70 + 4 * v68 * v122);
        v73 = v116;
        a1[40] = v116;
        v74 = v62 - (v69 >> 10);
        v75 = v118;
        do
        {
          v76 = *v63;
          *(v65 + 4 * v73) = *v63;
          if (v73 < v57)
          {
            *(v65 + 4 * (v73 + v62)) = v76;
          }

          vDSP_dotpr((v65 + 4 * v57 + 4 * (a1[39] & (v74 + v73))), -1, v72, 1, v64, v71);
          v73 = a1[39] & (a1[40] + 1);
          a1[40] = v73;
          ++v64;
          ++v63;
          --v75;
          v71 = v122;
        }

        while (v75);
        v60 = v113 + 1;
        v41 = v119;
        v46 = v120;
        v59 = v121;
        if (v113 + 1 == v117)
        {
          return;
        }
      }

      goto LABEL_83;
    }
  }
}

void sub_23A4F9708(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t Phase::AudioBuffer<float>::~AudioBuffer(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }

  v4 = a1;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v4);
  return a1;
}

unint64_t Phase::Controller::SpatializerFilterDatabase::GetNearestFilterData(Phase::Controller::SpatializerFilterDatabase *this, float a2, float a3)
{
  v22 = *MEMORY[0x277D85DE8];
  if (a2 < 0.0 || a2 > 180.0)
  {
    v11 = **(Phase::Logger::GetInstance(this) + 592);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v18 = 136315394;
      v19 = "SpatializerFilterDatabase.mm";
      v20 = 1024;
      v21 = 224;
      _os_log_impl(&dword_23A302000, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION: inInclinationInDegrees >= 0.0f && inInclinationInDegrees <= 180.0f is false.", &v18, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "PRECONDITION: inInclinationInDegrees >= 0.0f && inInclinationInDegrees <= 180.0f is false.");
  }

  if (a3 < 0.0 || a3 >= 360.0)
  {
    v13 = **(Phase::Logger::GetInstance(this) + 592);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v18 = 136315394;
      v19 = "SpatializerFilterDatabase.mm";
      v20 = 1024;
      v21 = 226;
      _os_log_impl(&dword_23A302000, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION: inAzimuthInDegrees >= 0.0f && inAzimuthInDegrees < 360.0f is false.", &v18, 0x12u);
    }

    v15 = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](v15, "PRECONDITION: inAzimuthInDegrees >= 0.0f && inAzimuthInDegrees < 360.0f is false.");
  }

  v5 = *(this + 2);
  if (v5 == *(this + 3))
  {
    v16 = **(Phase::Logger::GetInstance(this) + 592);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v18 = 136315394;
      v19 = "SpatializerFilterDatabase.mm";
      v20 = 1024;
      v21 = 227;
      _os_log_impl(&dword_23A302000, v16, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION: !mRings.empty() is false.", &v18, 0x12u);
    }

    v17 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v17, "PRECONDITION: !mRings.empty() is false.");
  }

  v6 = v5 + 20 * llroundf(*(this + 3) * a2);
  v7 = llroundf((a3 - *v6) * *(v6 + 8));
  v9 = *(v6 + 12);
  v8 = *(v6 + 16);
  if (v7 == v9)
  {
    v7 = 0;
  }

  return *(this + 5) + 48 * v7 + 48 * v8;
}

uint64_t Phase::Controller::SpatializerFilterDatabase::GetMiddleFilter(Phase::Logger *a1, int a2)
{
  v12 = *MEMORY[0x277D85DE8];
  if (a2 >= 4)
  {
    v4 = **(Phase::Logger::GetInstance(a1) + 592);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = 136315650;
      v7 = "SpatializerFilterDatabase.mm";
      v8 = 1024;
      v9 = 244;
      v10 = 1024;
      v11 = a2;
      _os_log_impl(&dword_23A302000, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::invalid_argument) [inFilterType >= MiddleFilter::Count is true]: [SpatializerFilterDatabase] Invalid middle filter type %i", &v6, 0x18u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "[SpatializerFilterDatabase] Invalid middle filter type %i");
  }

  return a1 + 48 * a2 + 64;
}

uint64_t std::__split_buffer<Phase::Controller::SpatializerFilterDatabase::FilterData>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 48;
    std::__destroy_at[abi:ne200100]<Phase::Controller::SpatializerFilterDatabase::FilterData,0>(i - 48);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

Phase::Controller::SpatializerFilterDatabase::FilterData *Phase::Controller::SpatializerFilterDatabase::FilterData::FilterData(Phase::Controller::SpatializerFilterDatabase::FilterData *this, int a2, int a3)
{
  v5 = std::vector<float>::vector[abi:ne200100](this, a3 * a2);
  std::vector<float>::vector[abi:ne200100](v5 + 3, a2);
  return this;
}

void sub_23A4F9C18(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void Phase::Controller::SpatializerFilterDatabase::FilterData::~FilterData(Phase::Controller::SpatializerFilterDatabase::FilterData *this)
{
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }

  v3 = *this;
  if (*this)
  {
    *(this + 1) = v3;
    operator delete(v3);
  }
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,Phase::Controller::SpatializerFilterDatabase::SpatializerFilterDatabase(Phase::Controller::Spatializer const*,Phase::Controller::SpatializerEncoder const*,int)::$_0 &,Phase::Vector<float,3ul> *,false>(uint64_t result, float *a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  i = v7;
  while (1)
  {
    v7 = i;
    v9 = a2 - i;
    v10 = 0xAAAAAAAAAAAAAAABLL * (a2 - i);
    if (v10 > 2)
    {
      switch(v10)
      {
        case 3:

          return std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,Phase::Controller::SpatializerFilterDatabase::SpatializerFilterDatabase(Phase::Controller::Spatializer const*,Phase::Controller::SpatializerEncoder const*,int)::$_0 &,Phase::Vector<float,3ul> *,0>(i, i + 3, a2 - 3);
        case 4:
          result = std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,Phase::Controller::SpatializerFilterDatabase::SpatializerFilterDatabase(Phase::Controller::Spatializer const*,Phase::Controller::SpatializerEncoder const*,int)::$_0 &,Phase::Vector<float,3ul> *,0>(i, i + 3, i + 6);
          v53 = *(a2 - 2);
          v54 = i[7];
          if (v53 >= v54)
          {
            if (v54 < v53)
            {
              return result;
            }

            v55 = i[8];
            if (*(a2 - 1) >= v55)
            {
              return result;
            }
          }

          else
          {
            v55 = i[8];
          }

          v56 = *(i + 6);
          i[6] = *(a2 - 3);
          i[7] = *(a2 - 2);
          i[8] = *(a2 - 1);
          *(a2 - 3) = v56;
          *(a2 - 2) = v54;
          *(a2 - 1) = v55;
          v57 = i[7];
          v58 = i[4];
          if (v57 >= v58)
          {
            if (v58 < v57)
            {
              return result;
            }

            v60 = i[8];
            v59 = i[5];
            if (v60 >= v59)
            {
              return result;
            }
          }

          else
          {
            v59 = i[5];
            v60 = i[8];
          }

          v61 = *(i + 3);
          v62 = *(i + 6);
          *(i + 3) = v62;
          i[4] = v57;
          i[5] = v60;
          *(i + 6) = v61;
          i[7] = v58;
          i[8] = v59;
          v63 = i[1];
          if (v57 >= v63)
          {
            if (v63 < v57)
            {
              return result;
            }

            v64 = i[2];
            if (v60 >= v64)
            {
              return result;
            }
          }

          else
          {
            v64 = i[2];
          }

          v65 = *i;
          *i = v62;
          i[1] = v57;
          i[2] = v60;
          i[3] = v65;
          i[4] = v63;
          i[5] = v64;
          return result;
        case 5:

          return std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,Phase::Controller::SpatializerFilterDatabase::SpatializerFilterDatabase(Phase::Controller::Spatializer const*,Phase::Controller::SpatializerEncoder const*,int)::$_0 &,Phase::Vector<float,3ul> *,0>(i, i + 3, i + 6, i + 9, a2 - 3);
      }
    }

    else
    {
      if (v10 < 2)
      {
        return result;
      }

      if (v10 == 2)
      {
        v66 = *(a2 - 2);
        v67 = i[1];
        if (v66 >= v67)
        {
          if (v67 < v66)
          {
            return result;
          }

          v68 = i[2];
          if (*(a2 - 1) >= v68)
          {
            return result;
          }
        }

        else
        {
          v68 = i[2];
        }

        v69 = *i;
        *i = *(a2 - 3);
        i[1] = *(a2 - 2);
        i[2] = *(a2 - 1);
        *(a2 - 3) = v69;
        *(a2 - 2) = v67;
        *(a2 - 1) = v68;
        return result;
      }
    }

    if (v9 <= 287)
    {
      break;
    }

    if (!a3)
    {
      if (i == a2)
      {
        return result;
      }

      v88 = (v10 - 2) >> 1;
      v89 = v88;
      while (1)
      {
        v90 = v89;
        if (v88 >= v89)
        {
          v91 = (2 * v89) | 1;
          v92 = &i[3 * v91];
          v93 = 2 * v89 + 2;
          if (v93 >= v10 || (v94 = v92 + 3, v95 = v92[1], v96 = v92[4], v95 >= v96) && (v96 < v95 || v92[2] >= v92[5]))
          {
            v94 = &i[3 * v91];
            v93 = (2 * v90) | 1;
          }

          v97 = &i[3 * v90];
          v98 = v94[1];
          v99 = v97[1];
          if (v98 >= v99)
          {
            if (v99 < v98)
            {
              v100 = v97[2];
LABEL_159:
              v101 = *v97;
              *v97 = *v94;
              v97[1] = v94[1];
              v97[2] = v94[2];
              if (v88 >= v93)
              {
                while (1)
                {
                  v103 = (2 * v93) | 1;
                  v104 = &i[3 * v103];
                  v93 = 2 * v93 + 2;
                  if (v93 >= v10 || (v102 = v104 + 3, v105 = v104[1], v106 = v104[4], v105 >= v106) && (v106 < v105 || v104[2] >= v104[5]))
                  {
                    v102 = &i[3 * v103];
                    v93 = v103;
                  }

                  v107 = v102[1];
                  if (v107 < v99 || v99 >= v107 && v102[2] < v100)
                  {
                    break;
                  }

                  *v94 = *v102;
                  v94[1] = v102[1];
                  v94[2] = v102[2];
                  v94 = v102;
                  if (v88 < v93)
                  {
                    goto LABEL_161;
                  }
                }
              }

              v102 = v94;
LABEL_161:
              *v102 = v101;
              v102[1] = v99;
              v102[2] = v100;
              goto LABEL_162;
            }

            v100 = v97[2];
            if (v94[2] >= v100)
            {
              goto LABEL_159;
            }
          }
        }

LABEL_162:
        v89 = v90 - 1;
        if (!v90)
        {
          v108 = 0xAAAAAAAAAAAAAAABLL * (v9 >> 2);
          while (1)
          {
            v109 = 0;
            v111 = *i;
            v110 = *(i + 1);
            v112 = *(i + 2);
            v113 = i;
            do
            {
              v114 = v113;
              v115 = &v113[3 * v109];
              v113 = v115 + 3;
              v116 = 2 * v109;
              result = (2 * v109) | 1;
              v109 = result;
              v117 = v116 + 2;
              if (v117 < v108)
              {
                v118 = v115[4];
                v119 = v115[7];
                if (v118 < v119 || v119 >= v118 && v115[5] < v115[8])
                {
                  v113 = v115 + 6;
                  v109 = v117;
                }
              }

              *v114 = *v113;
              v114[1] = v113[1];
              v114[2] = v113[2];
            }

            while (v109 <= ((v108 - 2) >> 1));
            if (v113 == a2 - 3)
            {
              *v113 = v111;
              *(v113 + 1) = v110;
              *(v113 + 2) = v112;
            }

            else
            {
              *v113 = *(a2 - 3);
              v113[1] = *(a2 - 2);
              v113[2] = *(a2 - 1);
              *(a2 - 3) = v111;
              *(a2 - 2) = v110;
              *(a2 - 1) = v112;
              v120 = v113 - i + 12;
              if (v120 >= 13)
              {
                v121 = -2 - 0x5555555555555555 * (v120 >> 2);
                v122 = v121 >> 1;
                v123 = &i[3 * (v121 >> 1)];
                v124 = v123[1];
                v125 = v113[1];
                if (v124 < v125)
                {
                  v126 = v113[2];
LABEL_185:
                  v127 = *v113;
                  *v113 = *v123;
                  v113[1] = v123[1];
                  v113[2] = v123[2];
                  if (v121 >= 2)
                  {
                    while (1)
                    {
                      v129 = v122 - 1;
                      v122 = (v122 - 1) >> 1;
                      v128 = &i[3 * v122];
                      v130 = v128[1];
                      if (v130 >= v125 && (v125 < v130 || v128[2] >= v126))
                      {
                        break;
                      }

                      *v123 = *v128;
                      v123[1] = v130;
                      v123[2] = v128[2];
                      v123 = &i[3 * v122];
                      if (v129 <= 1)
                      {
                        goto LABEL_191;
                      }
                    }
                  }

                  v128 = v123;
LABEL_191:
                  *v128 = v127;
                  v128[1] = v125;
                  v128[2] = v126;
                  goto LABEL_193;
                }

                if (v125 >= v124)
                {
                  v126 = v113[2];
                  if (v123[2] < v126)
                  {
                    goto LABEL_185;
                  }
                }
              }
            }

LABEL_193:
            a2 -= 3;
            if (v108-- <= 2)
            {
              return result;
            }
          }
        }
      }
    }

    v11 = v10 >> 1;
    v12 = &i[3 * (v10 >> 1)];
    if (v9 < 0x601)
    {
      result = std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,Phase::Controller::SpatializerFilterDatabase::SpatializerFilterDatabase(Phase::Controller::Spatializer const*,Phase::Controller::SpatializerEncoder const*,int)::$_0 &,Phase::Vector<float,3ul> *,0>(&v7[3 * v11], v7, a2 - 3);
    }

    else
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,Phase::Controller::SpatializerFilterDatabase::SpatializerFilterDatabase(Phase::Controller::Spatializer const*,Phase::Controller::SpatializerEncoder const*,int)::$_0 &,Phase::Vector<float,3ul> *,0>(v7, &v7[3 * v11], a2 - 3);
      v13 = 3 * v11;
      v14 = &v7[3 * v11 - 3];
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,Phase::Controller::SpatializerFilterDatabase::SpatializerFilterDatabase(Phase::Controller::Spatializer const*,Phase::Controller::SpatializerEncoder const*,int)::$_0 &,Phase::Vector<float,3ul> *,0>(v7 + 3, v14, a2 - 6);
      v15 = &v7[v13 + 3];
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,Phase::Controller::SpatializerFilterDatabase::SpatializerFilterDatabase(Phase::Controller::Spatializer const*,Phase::Controller::SpatializerEncoder const*,int)::$_0 &,Phase::Vector<float,3ul> *,0>(v7 + 6, v15, a2 - 9);
      result = std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,Phase::Controller::SpatializerFilterDatabase::SpatializerFilterDatabase(Phase::Controller::Spatializer const*,Phase::Controller::SpatializerEncoder const*,int)::$_0 &,Phase::Vector<float,3ul> *,0>(v14, v12, v15);
      v16 = *(v7 + 2);
      v7[2] = v12[2];
      v17 = *v7;
      *v7 = *v12;
      *v12 = v17;
      *(v12 + 2) = v16;
    }

    --a3;
    if (a4)
    {
      v18 = v7[1];
LABEL_20:
      v21 = 0;
      v22 = *v7;
      v23 = v7[2];
      while (1)
      {
        v24 = v7[v21 + 4];
        if (v24 >= v18 && (v18 < v24 || v7[v21 + 5] >= v23))
        {
          break;
        }

        v21 += 3;
      }

      v25 = &v7[v21 + 3];
      if (v21 * 4)
      {
        v26 = *(a2 - 2);
        v27 = a2 - 1;
        v28 = a2 - 3;
        if (v26 >= v18)
        {
          do
          {
            if (v18 >= v26 && *v27 < v23)
            {
              break;
            }

            v26 = *(v27 - 4);
            v27 -= 3;
          }

          while (v26 >= v18);
LABEL_30:
          v28 = v27 - 2;
        }
      }

      else
      {
        v28 = a2;
        if (v25 < a2)
        {
          v29 = *(a2 - 2);
          v28 = a2 - 3;
          if (v29 >= v18)
          {
            v27 = a2 - 1;
            v28 = a2 - 3;
            while (1)
            {
              v30 = v27 - 2;
              if (v18 >= v29)
              {
                if (*v27 < v23 || v25 >= v30)
                {
                  v28 = v27 - 2;
                  break;
                }
              }

              else if (v25 >= v30)
              {
                break;
              }

              v28 -= 3;
              v29 = *(v27 - 4);
              v27 -= 3;
              if (v29 < v18)
              {
                goto LABEL_30;
              }
            }
          }
        }
      }

      i = v25;
      if (v25 < v28)
      {
        v32 = v28;
        do
        {
          v33 = *(i + 2);
          v34 = *i;
          *i = *v32;
          i[1] = v32[1];
          i[2] = v32[2];
          *v32 = v34;
          *(v32 + 2) = v33;
          do
          {
            do
            {
              i += 3;
              v35 = i[1];
            }

            while (v35 < v18);
          }

          while (v18 >= v35 && i[2] < v23);
          v36 = *(v32 - 2);
          if (v36 >= v18)
          {
            v37 = v32 - 1;
            do
            {
              if (v18 >= v36 && *v37 < v23)
              {
                break;
              }

              v36 = *(v37 - 4);
              v37 -= 3;
            }

            while (v36 >= v18);
            v32 = v37 - 2;
          }

          else
          {
            v32 -= 3;
          }
        }

        while (i < v32);
      }

      if (i - 3 != v7)
      {
        *v7 = *(i - 3);
        v7[1] = *(i - 2);
        v7[2] = *(i - 1);
      }

      *(i - 3) = v22;
      *(i - 2) = v18;
      *(i - 1) = v23;
      if (v25 < v28)
      {
LABEL_63:
        result = std::__introsort<std::_ClassicAlgPolicy,Phase::Controller::SpatializerFilterDatabase::SpatializerFilterDatabase(Phase::Controller::Spatializer const*,Phase::Controller::SpatializerEncoder const*,int)::$_0 &,Phase::Vector<float,3ul> *,false>(v7, i - 3, a3, a4 & 1);
        a4 = 0;
      }

      else
      {
        v38 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,Phase::Controller::SpatializerFilterDatabase::SpatializerFilterDatabase(Phase::Controller::Spatializer const*,Phase::Controller::SpatializerEncoder const*,int)::$_0 &,Phase::Vector<float,3ul> *>(v7, i - 3);
        result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,Phase::Controller::SpatializerFilterDatabase::SpatializerFilterDatabase(Phase::Controller::Spatializer const*,Phase::Controller::SpatializerEncoder const*,int)::$_0 &,Phase::Vector<float,3ul> *>(i, a2);
        if (result)
        {
          a2 = i - 3;
          if (v38)
          {
            return result;
          }

          goto LABEL_2;
        }

        if (!v38)
        {
          goto LABEL_63;
        }
      }
    }

    else
    {
      v19 = *(v7 - 2);
      v18 = v7[1];
      if (v19 < v18)
      {
        goto LABEL_20;
      }

      if (v18 < v19)
      {
        v20 = v7[2];
      }

      else
      {
        v20 = v7[2];
        if (*(v7 - 1) < v20)
        {
          goto LABEL_20;
        }
      }

      v39 = *(a2 - 2);
      if (v18 < v39 || v39 >= v18 && v20 < *(a2 - 1))
      {
        v40 = v7[4];
        if (v18 >= v40)
        {
          v42 = v7 + 7;
          do
          {
            if (v40 >= v18 && v20 < *(v42 - 2))
            {
              break;
            }

            v43 = *v42;
            v42 += 3;
            v40 = v43;
          }

          while (v18 >= v43);
          i = v42 - 4;
        }

        else
        {
          i = v7 + 3;
        }
      }

      else
      {
        for (i = v7 + 3; i < a2; i += 3)
        {
          v41 = i[1];
          if (v18 < v41 || v41 >= v18 && v20 < i[2])
          {
            break;
          }
        }
      }

      v44 = *v7;
      v45 = a2;
      if (i < a2)
      {
        for (j = a2 - 1; v18 < v39 || v39 >= v18 && v20 < *j; j -= 3)
        {
          v39 = *(j - 4);
        }

        v45 = j - 2;
      }

      while (i < v45)
      {
        v47 = *(i + 2);
        v48 = *i;
        *i = *v45;
        i[1] = v45[1];
        i[2] = v45[2];
        *v45 = v48;
        *(v45 + 2) = v47;
        v49 = i[4];
        if (v18 >= v49)
        {
          v50 = i + 7;
          do
          {
            if (v49 >= v18 && v20 < *(v50 - 2))
            {
              break;
            }

            v51 = *v50;
            v50 += 3;
            v49 = v51;
          }

          while (v18 >= v51);
          i = v50 - 4;
        }

        else
        {
          i += 3;
        }

        do
        {
          do
          {
            v45 -= 3;
            v52 = v45[1];
          }

          while (v18 < v52);
        }

        while (v52 >= v18 && v20 < v45[2]);
      }

      if (i - 3 != v7)
      {
        *v7 = *(i - 3);
        v7[1] = *(i - 2);
        v7[2] = *(i - 1);
      }

      a4 = 0;
      *(i - 3) = v44;
      *(i - 2) = v18;
      *(i - 1) = v20;
    }
  }

  v70 = i + 3;
  v72 = i == a2 || v70 == a2;
  if ((a4 & 1) == 0)
  {
    if (v72)
    {
      return result;
    }

    for (k = i + 2; ; k += 3)
    {
      v133 = v7;
      v7 = v70;
      v134 = v133[4];
      v135 = v133[1];
      if (v134 < v135)
      {
        break;
      }

      if (v135 >= v134)
      {
        v136 = v133[5];
        if (v136 < v133[2])
        {
          goto LABEL_209;
        }
      }

LABEL_217:
      v70 += 3;
      if (v7 + 3 == a2)
      {
        return result;
      }
    }

    v136 = v133[5];
LABEL_209:
    v137 = *v70;
    for (m = k; ; m -= 3)
    {
      *(m + 1) = *(m - 1);
      m[3] = *m;
      v139 = *(m - 4);
      if (v134 >= v139 && (v139 < v134 || v136 >= *(m - 3)))
      {
        break;
      }
    }

    *(m - 2) = v137;
    *(m - 1) = v134;
    *m = v136;
    goto LABEL_217;
  }

  if (v72)
  {
    return result;
  }

  v73 = 0;
  v74 = i;
  while (2)
  {
    v75 = v74;
    v74 = v70;
    v76 = v75[4];
    v77 = v75[1];
    if (v76 >= v77)
    {
      if (v77 < v76)
      {
        goto LABEL_145;
      }

      v78 = v75[5];
      if (v78 >= v75[2])
      {
        goto LABEL_145;
      }
    }

    else
    {
      v78 = v75[5];
    }

    v79 = *(v75 + 3);
    v80 = *(v75 + 1);
    v75[3] = *v75;
    *(v70 + 1) = v80;
    v70[2] = v75[2];
    v81 = i;
    if (v75 == i)
    {
      goto LABEL_144;
    }

    v82 = v73;
    while (2)
    {
      v83 = (i + v82);
      v84 = *(i + v82 - 8);
      if (v76 < v84)
      {
        v85 = *(v83 - 1);
LABEL_137:
        v75 -= 3;
        v86 = *(v83 - 3);
        v87 = (i + v82);
        *v87 = v86;
        v87[1] = v84;
        v87[2] = v85;
        v82 -= 12;
        if (!v82)
        {
          v81 = i;
          goto LABEL_144;
        }

        continue;
      }

      break;
    }

    if (v84 < v76)
    {
      v81 = (i + v82);
      goto LABEL_144;
    }

    v85 = *(i + v82 - 4);
    if (v78 < v85)
    {
      goto LABEL_137;
    }

    v81 = v75;
LABEL_144:
    *v81 = v79;
    v81[1] = v76;
    v81[2] = v78;
LABEL_145:
    v70 = v74 + 3;
    v73 += 12;
    if (v74 + 3 != a2)
    {
      continue;
    }

    return result;
  }
}

float *std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,Phase::Controller::SpatializerFilterDatabase::SpatializerFilterDatabase(Phase::Controller::Spatializer const*,Phase::Controller::SpatializerEncoder const*,int)::$_0 &,Phase::Vector<float,3ul> *,0>(float *result, float *a2, float *a3)
{
  v3 = a2[1];
  v4 = result[1];
  if (v3 < v4 || v4 >= v3 && a2[2] < result[2])
  {
    v5 = a3[1];
    if (v5 < v3 || v3 >= v5 && a3[2] < a2[2])
    {
      v6 = *result;
      v7 = *(result + 2);
      *result = *a3;
      result[1] = a3[1];
      result[2] = a3[2];
      *a3 = v6;
      a3[1] = v4;
      *(a3 + 2) = v7;
    }

    else
    {
      v15 = *result;
      v16 = result[2];
      *result = *a2;
      result[1] = a2[1];
      result[2] = a2[2];
      *a2 = v15;
      a2[1] = v4;
      a2[2] = v16;
      v17 = a3[1];
      if (v17 < v4 || v4 >= v17 && a3[2] < v16)
      {
        *a2 = *a3;
        a2[1] = a3[1];
        a2[2] = a3[2];
        *a3 = v15;
        a3[1] = v4;
        a3[2] = v16;
      }
    }
  }

  else
  {
    v8 = a3[1];
    if (v8 >= v3)
    {
      if (v3 < v8)
      {
        return result;
      }

      v9 = a2[2];
      if (a3[2] >= v9)
      {
        return result;
      }
    }

    else
    {
      v9 = a2[2];
    }

    v10 = *a2;
    *a2 = *a3;
    a2[1] = a3[1];
    a2[2] = a3[2];
    *a3 = v10;
    a3[1] = v3;
    a3[2] = v9;
    v11 = a2[1];
    v12 = result[1];
    if (v11 < v12)
    {
      v13 = result[2];
LABEL_10:
      v14 = *result;
      *result = *a2;
      result[1] = a2[1];
      result[2] = a2[2];
      *a2 = v14;
      a2[1] = v12;
      a2[2] = v13;
      return result;
    }

    if (v12 >= v11)
    {
      v13 = result[2];
      if (a2[2] < v13)
      {
        goto LABEL_10;
      }
    }
  }

  return result;
}

float *std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,Phase::Controller::SpatializerFilterDatabase::SpatializerFilterDatabase(Phase::Controller::Spatializer const*,Phase::Controller::SpatializerEncoder const*,int)::$_0 &,Phase::Vector<float,3ul> *,0>(float *a1, float *a2, float *a3, float *a4, float *a5)
{
  result = std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,Phase::Controller::SpatializerFilterDatabase::SpatializerFilterDatabase(Phase::Controller::Spatializer const*,Phase::Controller::SpatializerEncoder const*,int)::$_0 &,Phase::Vector<float,3ul> *,0>(a1, a2, a3);
  v11 = a4[1];
  v12 = a3[1];
  if (v11 >= v12)
  {
    if (v12 < v11)
    {
      goto LABEL_16;
    }

    v13 = a3[2];
    if (a4[2] >= v13)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v13 = a3[2];
  }

  v14 = *a3;
  *a3 = *a4;
  a3[1] = a4[1];
  a3[2] = a4[2];
  *a4 = v14;
  a4[1] = v12;
  a4[2] = v13;
  v15 = a3[1];
  v16 = a2[1];
  if (v15 >= v16)
  {
    if (v16 < v15)
    {
      goto LABEL_16;
    }

    v17 = a2[2];
    if (a3[2] >= v17)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v17 = a2[2];
  }

  v18 = *a2;
  *a2 = *a3;
  a2[1] = a3[1];
  a2[2] = a3[2];
  *a3 = v18;
  a3[1] = v16;
  a3[2] = v17;
  v19 = a2[1];
  v20 = a1[1];
  if (v19 < v20)
  {
    v21 = a1[2];
LABEL_7:
    v22 = *a1;
    *a1 = *a2;
    a1[1] = a2[1];
    a1[2] = a2[2];
    *a2 = v22;
    a2[1] = v20;
    a2[2] = v21;
    goto LABEL_16;
  }

  if (v20 >= v19)
  {
    v21 = a1[2];
    if (a2[2] < v21)
    {
      goto LABEL_7;
    }
  }

LABEL_16:
  v23 = a5[1];
  v24 = a4[1];
  if (v23 >= v24)
  {
    if (v24 < v23)
    {
      return result;
    }

    v25 = a4[2];
    if (a5[2] >= v25)
    {
      return result;
    }
  }

  else
  {
    v25 = a4[2];
  }

  v26 = *a4;
  *a4 = *a5;
  a4[1] = a5[1];
  a4[2] = a5[2];
  *a5 = v26;
  a5[1] = v24;
  a5[2] = v25;
  v27 = a4[1];
  v28 = a3[1];
  if (v27 >= v28)
  {
    if (v28 < v27)
    {
      return result;
    }

    v29 = a3[2];
    if (a4[2] >= v29)
    {
      return result;
    }
  }

  else
  {
    v29 = a3[2];
  }

  v30 = *a3;
  *a3 = *a4;
  a3[1] = a4[1];
  a3[2] = a4[2];
  *a4 = v30;
  a4[1] = v28;
  a4[2] = v29;
  v31 = a3[1];
  v32 = a2[1];
  if (v31 >= v32)
  {
    if (v32 < v31)
    {
      return result;
    }

    v33 = a2[2];
    if (a3[2] >= v33)
    {
      return result;
    }
  }

  else
  {
    v33 = a2[2];
  }

  v34 = *a2;
  *a2 = *a3;
  a2[1] = a3[1];
  a2[2] = a3[2];
  *a3 = v34;
  a3[1] = v32;
  a3[2] = v33;
  v35 = a2[1];
  v36 = a1[1];
  if (v35 < v36)
  {
    v37 = a1[2];
LABEL_24:
    v38 = *a1;
    *a1 = *a2;
    a1[1] = a2[1];
    a1[2] = a2[2];
    *a2 = v38;
    a2[1] = v36;
    a2[2] = v37;
    return result;
  }

  if (v36 >= v35)
  {
    v37 = a1[2];
    if (a2[2] < v37)
    {
      goto LABEL_24;
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,Phase::Controller::SpatializerFilterDatabase::SpatializerFilterDatabase(Phase::Controller::Spatializer const*,Phase::Controller::SpatializerEncoder const*,int)::$_0 &,Phase::Vector<float,3ul> *>(float *a1, float *a2)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * (a2 - a1);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,Phase::Controller::SpatializerFilterDatabase::SpatializerFilterDatabase(Phase::Controller::Spatializer const*,Phase::Controller::SpatializerEncoder const*,int)::$_0 &,Phase::Vector<float,3ul> *,0>(a1, a1 + 3, a2 - 3);
        return 1;
      case 4:
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,Phase::Controller::SpatializerFilterDatabase::SpatializerFilterDatabase(Phase::Controller::Spatializer const*,Phase::Controller::SpatializerEncoder const*,int)::$_0 &,Phase::Vector<float,3ul> *,0>(a1, a1 + 3, a1 + 6);
        v22 = *(a2 - 2);
        v23 = a1[7];
        if (v22 >= v23)
        {
          if (v23 < v22)
          {
            return 1;
          }

          v24 = a1[8];
          if (*(a2 - 1) >= v24)
          {
            return 1;
          }
        }

        else
        {
          v24 = a1[8];
        }

        v25 = *(a1 + 6);
        a1[6] = *(a2 - 3);
        a1[7] = *(a2 - 2);
        a1[8] = *(a2 - 1);
        *(a2 - 3) = v25;
        *(a2 - 2) = v23;
        *(a2 - 1) = v24;
        v26 = a1[7];
        v27 = a1[4];
        if (v26 >= v27)
        {
          if (v27 < v26)
          {
            return 1;
          }

          v29 = a1[8];
          v28 = a1[5];
          if (v29 >= v28)
          {
            return 1;
          }
        }

        else
        {
          v28 = a1[5];
          v29 = a1[8];
        }

        v30 = *(a1 + 3);
        v31 = *(a1 + 6);
        *(a1 + 3) = v31;
        a1[4] = v26;
        a1[5] = v29;
        *(a1 + 6) = v30;
        a1[7] = v27;
        a1[8] = v28;
        v32 = a1[1];
        if (v26 >= v32)
        {
          if (v32 < v26)
          {
            return 1;
          }

          v33 = a1[2];
          if (v29 >= v33)
          {
            return 1;
          }
        }

        else
        {
          v33 = a1[2];
        }

        v34 = *a1;
        *a1 = v31;
        a1[1] = v26;
        a1[2] = v29;
        a1[3] = v34;
        a1[4] = v32;
        a1[5] = v33;
        return 1;
      case 5:
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,Phase::Controller::SpatializerFilterDatabase::SpatializerFilterDatabase(Phase::Controller::Spatializer const*,Phase::Controller::SpatializerEncoder const*,int)::$_0 &,Phase::Vector<float,3ul> *,0>(a1, a1 + 3, a1 + 6, a1 + 9, a2 - 3);
        return 1;
    }
  }

  else
  {
    if (v4 < 2)
    {
      return 1;
    }

    if (v4 == 2)
    {
      v5 = *(a2 - 2);
      v6 = a1[1];
      if (v5 < v6)
      {
        v7 = a1[2];
LABEL_6:
        v8 = *a1;
        *a1 = *(a2 - 3);
        a1[1] = *(a2 - 2);
        a1[2] = *(a2 - 1);
        *(a2 - 3) = v8;
        *(a2 - 2) = v6;
        *(a2 - 1) = v7;
        return 1;
      }

      if (v6 >= v5)
      {
        v7 = a1[2];
        if (*(a2 - 1) < v7)
        {
          goto LABEL_6;
        }
      }

      return 1;
    }
  }

  v9 = (a1 + 6);
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,Phase::Controller::SpatializerFilterDatabase::SpatializerFilterDatabase(Phase::Controller::Spatializer const*,Phase::Controller::SpatializerEncoder const*,int)::$_0 &,Phase::Vector<float,3ul> *,0>(a1, a1 + 3, a1 + 6);
  v10 = a1 + 9;
  if (a1 + 9 == a2)
  {
    return 1;
  }

  v11 = 0;
  v12 = 0;
  while (2)
  {
    v13 = v10[1];
    v14 = *(v9 + 4);
    if (v13 >= v14)
    {
      if (v14 < v13)
      {
        goto LABEL_28;
      }

      v15 = v10[2];
      if (v15 >= *(v9 + 8))
      {
        goto LABEL_28;
      }
    }

    else
    {
      v15 = v10[2];
    }

    v16 = *v10;
    *v10 = *v9;
    v10[1] = *(v9 + 4);
    v10[2] = *(v9 + 8);
    v17 = v11;
    while (1)
    {
      v18 = (a1 + v17);
      v19 = *(a1 + v17 + 16);
      if (v13 >= v19)
      {
        break;
      }

      v20 = v18[5];
LABEL_21:
      v9 -= 12;
      v18[6] = v18[3];
      v21 = (a1 + v17);
      v21[7] = v19;
      v21[8] = v20;
      v17 -= 12;
      if (v17 == -24)
      {
        v9 = a1;
        goto LABEL_27;
      }
    }

    if (v19 < v13)
    {
      goto LABEL_27;
    }

    v20 = *(a1 + v17 + 20);
    if (v15 < v20)
    {
      goto LABEL_21;
    }

    v9 = a1 + v17 + 24;
LABEL_27:
    *v9 = v16;
    *(v9 + 4) = v13;
    *(v9 + 8) = v15;
    if (++v12 != 8)
    {
LABEL_28:
      v9 = v10;
      v11 += 12;
      v10 += 3;
      if (v10 == a2)
      {
        return 1;
      }

      continue;
    }

    return v10 + 3 == a2;
  }
}

float Phase::Controller::SpatializerFilterDatabase::Ring::Ring(Phase::Controller::SpatializerFilterDatabase::Ring *this, float a2, int a3, int a4)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 4) = 0;
  v4 = a2 >= 0.0 && a2 < 360.0;
  if (!v4 || a3 <= 0 || a4 < 0)
  {
    std::terminate();
  }

  v5 = 360.0 / a3;
  *this = a2;
  *(this + 1) = v5;
  result = 1.0 / v5;
  *(this + 2) = 1.0 / v5;
  *(this + 3) = a3;
  *(this + 4) = a4;
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<Phase::Controller::SpatializerFilterDatabase::Ring>>(unint64_t a1)
{
  if (a1 < 0xCCCCCCCCCCCCCCDLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t Phase::PolyphaseKaiserFixedPointDelayLine<float>::~PolyphaseKaiserFixedPointDelayLine(uint64_t a1)
{
  v2 = (a1 + 96);
  v3 = *(a1 + 120);
  if (v3)
  {
    *(a1 + 128) = v3;
    operator delete(v3);
  }

  v6 = v2;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v6);
  v4 = *(a1 + 24);
  if (v4)
  {
    *(a1 + 32) = v4;
    operator delete(v4);
  }

  v6 = a1;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v6);
  return a1;
}

uint64_t std::array<Phase::Controller::SpatializerFilterDatabase::FilterData,4ul>::~array(uint64_t a1)
{
  for (i = 0; i != -192; i -= 48)
  {
    v3 = a1 + i;
    v4 = *(a1 + i + 168);
    if (v4)
    {
      *(v3 + 176) = v4;
      operator delete(v4);
    }

    v5 = *(v3 + 144);
    if (v5)
    {
      *(a1 + i + 152) = v5;
      operator delete(v5);
    }
  }

  return a1;
}

uint64_t Phase::AudioBuffer<float>::GetWritePointer(uint64_t a1, signed int a2, int a3)
{
  if (a2 < 0 || (v3 = *a1, v4 = *(a1 + 8), *a1 == v4) || (-1431655765 * ((v4 - v3) >> 3)) <= a2 || ((v3[1] - *v3) >> 2) <= a3)
  {
    std::terminate();
  }

  atomic_store(0, (a1 + 48));
  return *(*(a1 + 24) + 8 * a2) + 4 * a3;
}

void Phase::BesselFunction::I_0<double>(double a1)
{
  v1 = fabs(a1);
  if (v1 >= 3.75)
  {
    exp(v1);
  }
}

uint64_t Phase::AudioBuffer<float>::GetReadPointer(uint64_t a1, signed int a2)
{
  if (a2 < 0 || (v2 = *a1, v3 = *(a1 + 8), *a1 == v3) || (-1431655765 * ((v3 - v2) >> 3)) <= a2 || ((v2[1] - *v2) >> 2) <= 0)
  {
    std::terminate();
  }

  return *(*(a1 + 24) + 8 * a2);
}

void Phase::AudioBuffer<float>::AllocateInternal(uint64_t *a1, unsigned int a2, unsigned int a3)
{
  if ((a2 & 0x80000000) != 0 || (a3 & 0x80000000) != 0)
  {
    std::terminate();
  }

  v5 = *a1;
  v6 = a1[1];
  if (*a1 == v6)
  {
    if (a2)
    {
      goto LABEL_9;
    }

    LODWORD(v7) = 0;
  }

  else
  {
    if (-1431655765 * ((v6 - v5) >> 3) != a2)
    {
      goto LABEL_9;
    }

    v7 = (v5[1] - *v5) >> 2;
  }

  if (v7 == a3)
  {
    return;
  }

LABEL_9:
  v8 = a2;
  std::vector<std::vector<float>>::resize(a1, a2);
  v9 = a1[3];
  v10 = a1[4];
  v11 = (v10 - v9) >> 3;
  if (v8 <= v11)
  {
    if (v8 >= v11)
    {
      goto LABEL_21;
    }

    v17 = v9 + 8 * v8;
  }

  else
  {
    v12 = v8 - v11;
    v13 = a1[5];
    if (v12 > (v13 - v10) >> 3)
    {
      v14 = v13 - v9;
      v15 = v14 >> 2;
      if (v14 >> 2 <= v8)
      {
        v15 = v8;
      }

      if (v14 >= 0x7FFFFFFFFFFFFFF8)
      {
        v16 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v16 = v15;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<void *>>((a1 + 3), v16);
    }

    bzero(a1[4], 8 * v12);
    v17 = v10 + 8 * v12;
  }

  a1[4] = v17;
LABEL_21:
  v18 = *a1;
  if (a1[1] != *a1)
  {
    v19 = 0;
    v20 = 0;
    do
    {
      std::vector<float>::resize(&v18[v19], a3);
      *(a1[3] + 8 * v20++) = v18[v19];
      v18 = *a1;
      v19 += 3;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3) > v20);
  }
}

uint64_t Phase::AudioBuffer<float>::AudioBuffer(uint64_t a1, unsigned int a2, unsigned int a3)
{
  *(a1 + 48) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  Phase::AudioBuffer<float>::AllocateInternal(a1, a2, a3);
  return a1;
}

void sub_23A4FB4A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  v12 = *(v10 + 24);
  if (v12)
  {
    *(v10 + 32) = v12;
    operator delete(v12);
  }

  a10 = v10;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void Phase::AudioBuffer<float>::Clear(uint64_t a1)
{
  v1 = atomic_load((a1 + 48));
  if ((v1 & 1) == 0)
  {
    v3 = *a1;
    v4 = *(a1 + 8);
    if (*a1 != v4)
    {
      v5 = 0;
      do
      {
        if (v5 >= (-1431655765 * ((v4 - v3) >> 3)))
        {
          break;
        }

        vDSP_vclr(*(*(a1 + 24) + 8 * v5++), 1, ((v3[1] - *v3) >> 2));
        v3 = *a1;
        v4 = *(a1 + 8);
      }

      while (*a1 != v4);
    }

    atomic_store(1u, (a1 + 48));
  }
}

void Phase::Controller::InitializeBinauralSpatializer(uint64_t a1, double *a2)
{
  v50 = *MEMORY[0x277D85DE8];
  strcpy(__s, "/System/Library/Audio/Tunings/IRs/Generic/HRIR_Movie.ir");
  v3 = strlen(__s);
  v4 = MEMORY[0x23EE85B90](0, __s, v3, 1, 0);
  cf = v4;
  if (v4)
  {
    applesauce::CF::get_filesystem_path(v4, &v37);
    v5 = [MEMORY[0x277CCAA00] defaultManager];
    v6 = [v5 fileExistsAtPath:v37];

    v8 = **(Phase::Logger::GetInstance(v7) + 592);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = "General";
      *&buf[4] = "SpatializerManager.mm";
      *buf = 136315650;
      if (v6)
      {
        v9 = "Movie";
      }

      *&buf[12] = 1024;
      *&buf[14] = 76;
      *&buf[18] = 2080;
      *&buf[20] = v9;
      _os_log_impl(&dword_23A302000, v8, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Default HRIR Database is type %s.", buf, 0x1Cu);
    }

    if (v6)
    {
      v10 = cf;
      if (cf)
      {
        CFRetain(cf);
        v36 = v10;
        CFRetain(v10);
      }

      else
      {
        v36 = 0;
      }

      v39 = v10;
      *buf = 0;
      *&buf[8] = 0x8000000000;
      *&buf[16] = 1;
      *&buf[20] = 2;
      *&buf[24] = 0;
      *&buf[32] = 0;
      *&v43 = 0;
      *(&v43 + 1) = 0xC800000000;
      v44 = 1;
      memset(v45, 0, 44);
      HIDWORD(v45[5]) = 200;
      LOBYTE(v45[6]) = 1;
      HIDWORD(v45[6]) = 0;
      LOBYTE(v45[7]) = 0;
      v46 = 0;
      v47 = 0;
      v48 = 0;
      if (v10)
      {
        v11 = CFURLCopyAbsoluteURL(v10);
        v12 = v11;
        v40 = *&v11;
        if (v11)
        {
          v13 = CFGetTypeID(v11);
          if (v13 != CFURLGetTypeID())
          {
            exception = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(exception, "Could not construct");
          }
        }

        v14 = *buf;
        *buf = v12;
        if (v14)
        {
          CFRelease(v14);
        }

        CFRelease(v10);
        CFRelease(v10);
      }
    }

    else
    {
      IR::getPresetDataAttributes();
    }

    *&buf[20] = 0;
    v15 = *a2;
    v16 = *a2;
    *&buf[8] = v16;
    v17 = *(a2 + 1);
    v18 = *buf;
    if (*buf)
    {
      CFRetain(*buf);
    }

    v24 = v18;
    v25 = *&buf[8];
    v26 = *&buf[24];
    v27 = v43;
    v28 = v44;
    v19 = v45[0];
    if (v45[0])
    {
      CFRetain(v45[0]);
    }

    v29 = v19;
    v30 = *&v45[1];
    v20 = v45[3];
    if (v45[3])
    {
      CFRetain(v45[3]);
    }

    v31 = v20;
    v32[0] = *&v45[4];
    *(v32 + 9) = *(&v45[5] + 1);
    v21 = v46;
    if (v46)
    {
      CFRetain(v46);
    }

    v33 = v21;
    v34 = v47;
    v35 = v48;
    v40 = v15;
    v41 = v17;
    operator new();
  }

  v22 = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(v22, "Could not construct");
}

void sub_23A4FB9D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, const void *a29, const void *a30, const void *a31, const void *a32, const void *a33, uint64_t a34, const void *a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, const void *a43, uint64_t a44, uint64_t a45, const void *a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, const void *a51)
{
  __cxa_free_exception(v51);
  applesauce::CF::ObjectRef<__CFURL const*>::~ObjectRef(&a33);
  applesauce::CF::DictionaryRef::~DictionaryRef(&a51);
  applesauce::CF::URLRef::~URLRef(&a46);
  applesauce::CF::URLRef::~URLRef(&a43);
  applesauce::CF::URLRef::~URLRef(&a35);
  applesauce::CF::URLRef::~URLRef(&a32);
  applesauce::CF::URLRef::~URLRef(&a29);
  applesauce::CF::StringRef::~StringRef(&a30);
  applesauce::CF::URLRef::~URLRef(&a31);
  _Unwind_Resume(a1);
}

const void *applesauce::CF::get_filesystem_path@<X0>(applesauce::CF *this@<X0>, void *a2@<X8>)
{
  result = CFURLCopyFileSystemPath(this, kCFURLPOSIXPathStyle);
  *a2 = result;
  if (result)
  {
    v5 = CFGetTypeID(result);
    result = CFStringGetTypeID();
    if (v5 != result)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
    }
  }

  return result;
}

void sub_23A4FBBCC(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(v1);
  _Unwind_Resume(a1);
}

void applesauce::CF::URLRef::~URLRef(const void **this)
{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

void Phase::Controller::InitializeXTCSpatializer(uint64_t a1, uint64_t *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  IR::getPresetDataAttributes();
  if (!v14)
  {
    goto LABEL_5;
  }

  v3 = [MEMORY[0x277CCAA00] defaultManager];
  applesauce::CF::get_filesystem_path(v14, buf);
  v4 = [v3 fileExistsAtPath:*buf];
  if (*buf)
  {
    CFRelease(*buf);
  }

  if ((v4 & 1) == 0)
  {
LABEL_5:
    IR::getPresetDataAttributes();
    v5 = v14;
    v14 = *buf;
    v6 = v19;
    *buf = v5;
    v19 = v15;
    v7 = v16;
    v8 = cf;
    v15 = v6;
    v16 = v20;
    v9 = v21;
    v20 = v7;
    v21 = cf;
    cf = v9;
    if (v21)
    {
      CFRelease(v8);
      v7 = v20;
    }

    if (v7)
    {
      CFRelease(v7);
    }

    if (v19)
    {
      CFRelease(v19);
    }

    v10 = *buf;
    if (*buf)
    {
      CFRelease(*buf);
    }

    v11 = **(Phase::Logger::GetInstance(v10) + 592);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "SpatializerManager.mm";
      *&buf[12] = 1024;
      *&buf[14] = 124;
      _os_log_impl(&dword_23A302000, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d XTC HRIR doesn't exist for this device, falling back to default.", buf, 0x12u);
    }
  }

  v12 = *a2;
  v13 = a2[1];
  if (v14)
  {
    CFRetain(v14);
  }

  if (v15)
  {
    CFRetain(v15);
  }

  if (v16)
  {
    CFRetain(v16);
  }

  if (cf)
  {
    CFRetain(cf);
  }

  *buf = v12;
  *&buf[8] = v13;
  operator new();
}

void sub_23A4FBF94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void Phase::Controller::InitializeVBAPSpatializer(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  memset(__p, 0, 24);
  std::vector<char>::__init_with_size[abi:ne200100]<char *,char *>(__p, *a3, a3[1], a3[1] - *a3);
  __p[3] = v3;
  __p[4] = v4;
  operator new();
}

void sub_23A4FC128(void *a1)
{
  MEMORY[0x23EE864A0](v1, 0x10B3C40569E7192);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x23A4FC100);
}

void sub_23A4FC160(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Phase::Controller::RegisterSpatializer(uint64_t a1, void *a2, unint64_t a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v8 = a3;
  if (!a1)
  {
    v6 = **(Phase::Logger::GetInstance(0) + 592);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "SpatializerManager.mm";
      v10 = 1024;
      v11 = 179;
      _os_log_impl(&dword_23A302000, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d POSTCONDITION: nullptr != pInSpatializer is false.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "POSTCONDITION: nullptr != pInSpatializer is false.");
  }

  *buf = &v8;
  v4 = std::__hash_table<std::__hash_value_type<unsigned long long,std::unique_ptr<Phase::Controller::Spatializer>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<Phase::Controller::Spatializer>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<Phase::Controller::Spatializer>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unique_ptr<Phase::Controller::Spatializer>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(a2, a3);
  result = v4[3];
  v4[3] = a1;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void Phase::Controller::SpatializerManager::SpatializerManager(Phase::Logger *a1)
{
  v2 = *MEMORY[0x277D85DE8];
  Phase::Logger::GetInstance(a1);
  Phase::Commandable<128,Phase::LockFreeQueueMPSC>::Commandable(a1);
}

void sub_23A4FCAFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, std::__shared_weak_count *a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a21);
  }

  Phase::Controller::BinauralUtility::~BinauralUtility(v37);
  v40 = v35[11];
  if (v40)
  {
    v35[12] = v40;
    operator delete(v40);
  }

  std::__hash_table<std::__hash_value_type<unsigned long long,std::unique_ptr<Phase::Controller::Spatializer>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<Phase::Controller::Spatializer>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<Phase::Controller::Spatializer>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unique_ptr<Phase::Controller::Spatializer>>>>::~__hash_table(v36);
  Phase::Commandable<128,Phase::LockFreeQueueMPSC>::~Commandable(v35);
  _Unwind_Resume(a1);
}

void Phase::Controller::SetupSpatializerInitJob<void (*)(Phase::Controller::Spatializer **,Phase::Controller::Spatializer::InitParameters const&,Phase::Controller::BinauralUtility const*),Phase::Controller::Spatializer::InitParameters,Phase::Controller::BinauralUtility*>(uint64_t a1, uint64_t *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  std::string::basic_string[abi:ne200100]<0>(&v28, "SpatializerManager-init-");
  v16 = strlen(a4);
  v17 = std::string::append(&v28, a4, v16);
  v18 = *&v17->__r_.__value_.__l.__data_;
  v29.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
  *&v29.__r_.__value_.__l.__data_ = v18;
  v17->__r_.__value_.__l.__size_ = 0;
  v17->__r_.__value_.__r.__words[2] = 0;
  v17->__r_.__value_.__r.__words[0] = 0;
  v19 = std::string::append(&v29, "-spatializer", 0xCuLL);
  v20 = *&v19->__r_.__value_.__l.__data_;
  v31 = v19->__r_.__value_.__r.__words[2];
  *__p = v20;
  v19->__r_.__value_.__l.__size_ = 0;
  v19->__r_.__value_.__r.__words[2] = 0;
  v19->__r_.__value_.__r.__words[0] = 0;
  (*(*a1 + 16))(&v32, a1, __p);
  if (SHIBYTE(v31) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }

  v21 = a2[1];
  v26 = *a2;
  v27 = v21;
  if (v21)
  {
    atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v24 = v32;
  v25 = v33;
  if (v33)
  {
    atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*a1 + 24))(a1, &v26, &v24);
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  v23 = v32;
  v22 = v33;
  *(v32 + 256) = &unk_284D375F0;
  *(v23 + 264) = a5;
  *(v23 + 272) = a3;
  *(v23 + 280) = a6;
  *(v23 + 288) = a7;
  *(v23 + 296) = a8;
  *(v23 + 383) = 1;
  atomic_store(1u, (v23 + 40));
  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }
}

void sub_23A4FCEC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  v34 = *(v32 - 72);
  if (v34)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v34);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Phase::Controller::SpatializerManager::SetSpatializerOutput(uint64_t a1, int a2, uint64_t a3)
{
  if (a3)
  {
    Phase::Controller::SpatializerManager::SetOutputChannelLayout(a1, a3);
  }

  *(a1 + 80) = a2;
  SpatializerForConfig = Phase::Controller::SpatializerManager::GetSpatializerForConfig(*(a1 + 112), a2, (a1 + 88));
  return Phase::Controller::SpatializerManager::SetActiveSpatializer(a1, SpatializerForConfig) ^ 1;
}

void Phase::Controller::SpatializerManager::~SpatializerManager(Phase::Controller::SpatializerManager *this)
{
  *this = &unk_284D37598;
  v2 = *(this + 20);
  if (v2)
  {
    *(this + 21) = v2;
    operator delete(v2);
  }

  v3 = *(this + 19);
  *(this + 19) = 0;
  if (v3)
  {
    AudioDSP::Core::VBAP::~VBAP(v3);
    MEMORY[0x23EE864A0]();
  }

  v4 = *(this + 11);
  if (v4)
  {
    *(this + 12) = v4;
    operator delete(v4);
  }

  std::__hash_table<std::__hash_value_type<unsigned long long,std::unique_ptr<Phase::Controller::Spatializer>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<Phase::Controller::Spatializer>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<Phase::Controller::Spatializer>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unique_ptr<Phase::Controller::Spatializer>>>>::~__hash_table(this + 40);

  Phase::Commandable<128,Phase::LockFreeQueueMPSC>::~Commandable(this);
}

{
  Phase::Controller::SpatializerManager::~SpatializerManager(this);

  JUMPOUT(0x23EE864A0);
}

uint64_t Phase::Controller::SpatializerManager::SetOutputChannelLayout(uint64_t a1, uint64_t a2)
{
  v4 = (a1 + 88);
  result = Phase::ChannelLayout::AreLayoutsEqual(a2, (a1 + 88));
  if ((result & 1) == 0)
  {
    if (v4 != a2)
    {
      std::vector<char>::__assign_with_size[abi:ne200100]<char *,char *>(v4, *a2, *(a2 + 8), *(a2 + 8) - *a2);
    }

    v9[0] = 2;
    v9[2] = v9;
    v6 = std::__hash_table<std::__hash_value_type<unsigned long long,std::unique_ptr<Phase::Controller::Spatializer>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<Phase::Controller::Spatializer>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<Phase::Controller::Spatializer>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unique_ptr<Phase::Controller::Spatializer>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>((a1 + 40), v9)[3];
    if (!Phase::ChannelLayout::AreLayoutsEqual(v6 + 3, a2) && (*(*v6 + 32))(v6, a2) && *(a1 + 120) == 2 && (v7 = *(a1 + 128)) != 0)
    {
      ActiveSpatializer = Phase::Controller::SpatializerManager::GetActiveSpatializer(a1);
      return (*(*v7 + 24))(v7, ActiveSpatializer);
    }

    else
    {
      return Phase::Controller::SpatializerManager::SetSpatializerOutput(a1, *(a1 + 80), a2);
    }
  }

  return result;
}

uint64_t Phase::Controller::SpatializerManager::SetActiveSpatializer(Phase::Controller::SpatializerManager *this, unint64_t a2)
{
  v41[19] = *MEMORY[0x277D85DE8];
  v2 = (this + 120);
  if (*(this + 15) == a2)
  {
    return 0;
  }

  v5 = std::__hash_table<std::__hash_value_type<PHASETapType,std::unique_ptr<Phase::TapSourceRegistry::TapSourceInfo>>,std::__unordered_map_hasher<PHASETapType,std::__hash_value_type<PHASETapType,std::unique_ptr<Phase::TapSourceRegistry::TapSourceInfo>>,std::hash<PHASETapType>,std::equal_to<PHASETapType>,true>,std::__unordered_map_equal<PHASETapType,std::__hash_value_type<PHASETapType,std::unique_ptr<Phase::TapSourceRegistry::TapSourceInfo>>,std::equal_to<PHASETapType>,std::hash<PHASETapType>,true>,std::allocator<std::__hash_value_type<PHASETapType,std::unique_ptr<Phase::TapSourceRegistry::TapSourceInfo>>>>::find<PHASETapType>(this + 5, a2);
  if (!v5)
  {
    v15 = std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](buf);
    for (i = *(this + 7); i; i = *i)
    {
      MEMORY[0x23EE86170](&v34[2], i[2]);
      v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v34[2], ", ", 2);
    }

    v17 = **(Phase::Logger::GetInstance(v15) + 592);
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_32;
    }

    if ((v40 & 0x10) != 0)
    {
      v19 = v39;
      if (v39 < v36)
      {
        v39 = v36;
        v19 = v36;
      }

      locale = v35[4].__locale_;
    }

    else
    {
      if ((v40 & 8) == 0)
      {
        v18 = 0;
        v24 = 0;
LABEL_28:
        *(&__dst + v18) = 0;
        p_dst = &__dst;
        if (v24 < 0)
        {
          p_dst = __dst;
        }

        *v25 = 136315906;
        *&v25[4] = "SpatializerManager.mm";
        v26 = 1024;
        v27 = 520;
        v28 = 2048;
        v29 = a2;
        v30 = 2080;
        v31 = p_dst;
        _os_log_impl(&dword_23A302000, v17, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to switch spatializer to %llu - Spatializer map contains [%s]", v25, 0x26u);
        if (v24 < 0)
        {
          operator delete(__dst);
        }

LABEL_32:

        *buf = *MEMORY[0x277D82818];
        v22 = *(MEMORY[0x277D82818] + 72);
        *&buf[*(*buf - 24)] = *(MEMORY[0x277D82818] + 64);
        *&v34[2] = v22;
        *&v34[10] = MEMORY[0x277D82878] + 16;
        if (v38 < 0)
        {
          operator delete(__p);
        }

        *&v34[10] = MEMORY[0x277D82868] + 16;
        std::locale::~locale(v35);
        std::iostream::~basic_iostream();
        MEMORY[0x23EE863B0](v41);
        return 0;
      }

      locale = v35[1].__locale_;
      v19 = v35[3].__locale_;
    }

    v18 = v19 - locale;
    if ((v19 - locale) >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v18 >= 0x17)
    {
      operator new();
    }

    v24 = v19 - locale;
    if (v18)
    {
      memmove(&__dst, locale, v18);
    }

    goto LABEL_28;
  }

  *v2 = a2;
  v6 = **(Phase::Logger::GetInstance(v5) + 592);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v25 = v2;
    v7 = std::__hash_table<std::__hash_value_type<unsigned long long,std::unique_ptr<Phase::Controller::Spatializer>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<Phase::Controller::Spatializer>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<Phase::Controller::Spatializer>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unique_ptr<Phase::Controller::Spatializer>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(this + 5, *v2)[3];
    v10 = *(v7 + 72);
    v8 = v7 + 72;
    v9 = v10;
    if (*(v8 + 23) < 0)
    {
      v8 = v9;
    }

    *buf = 136315650;
    *&buf[4] = "SpatializerManager.mm";
    v33 = 1024;
    *v34 = 527;
    *&v34[4] = 2080;
    *&v34[6] = v8;
    _os_log_impl(&dword_23A302000, v6, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Switching spatializer to %s", buf, 0x1Cu);
  }

  v11 = CAGetDeviceOrientation();
  Phase::Controller::SpatializerManager::SetDeviceOrientation(this, v11);
  ActiveSpatializer = Phase::Controller::SpatializerManager::GetActiveSpatializer(this);
  if (!Phase::ChannelLayout::AreLayoutsEqual(ActiveSpatializer + 3, this + 11))
  {
    (*(*ActiveSpatializer + 32))(ActiveSpatializer, this + 88);
  }

  v13 = *(this + 16);
  if (v13)
  {
    (*(*v13 + 24))(v13, ActiveSpatializer);
  }

  return 1;
}

void sub_23A4FD63C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

uint64_t Phase::Controller::SpatializerManager::GetSpatializerForConfig(uint64_t result, int a2, int **a3)
{
  v26 = *MEMORY[0x277D85DE8];
  if (result != 2)
  {
    if (!a2)
    {
      return 1;
    }

    v5 = result;
    if (a2 != 2)
    {
      if (a2 == 1)
      {
        return 3;
      }

      v9 = **(Phase::Logger::GetInstance(result) + 592);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        Phase::ChannelLayout::GetStringDescription(a3, __p);
        if (v15 >= 0)
        {
          v10 = __p;
        }

        else
        {
          v10 = __p[0];
        }

        *buf = 136316162;
        v17 = "SpatializerManager.mm";
        v18 = 1024;
        v19 = 493;
        v20 = 2048;
        v21 = v5;
        v22 = 1024;
        v23 = a2;
        v24 = 2080;
        v25 = v10;
        _os_log_impl(&dword_23A302000, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d Invalid spatializer configuration: mode %lu, output type %i, channel layout %s", buf, 0x2Cu);
        if (v15 < 0)
        {
          operator delete(__p[0]);
        }
      }

      return 1;
    }

    if (result == 1)
    {
      v6 = *a3;
      v7 = **a3;
      if (v7 == 0x10000)
      {
        v11 = vcnt_s8(v6[1]);
        v11.i16[0] = vaddlv_u8(v11);
        v8 = v11.i32[0];
      }

      else if (v7)
      {
        v8 = **a3;
      }

      else
      {
        v8 = v6[2];
      }

      if (v8 == 2)
      {
        return 1;
      }

      v12 = **(Phase::Logger::GetInstance(1) + 592);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        Phase::ChannelLayout::GetStringDescription(a3, __p);
        v13 = v15 >= 0 ? __p : __p[0];
        *buf = 136315650;
        v17 = "SpatializerManager.mm";
        v18 = 1024;
        v19 = 479;
        v20 = 2080;
        v21 = v13;
        _os_log_impl(&dword_23A302000, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d Ignoring spatialization mode (always binaural) because the output channel layout does not support it: %s", buf, 0x1Cu);
        if (v15 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }

    return 2;
  }

  return result;
}

uint64_t Phase::Controller::SpatializerManager::GetActiveSpatializer(Phase::Controller::SpatializerManager *this)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = *(this + 15);
  if (!v1)
  {
    v4 = **(Phase::Logger::GetInstance(this) + 592);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = 136315394;
      v7 = "SpatializerManager.mm";
      v8 = 1024;
      v9 = 503;
      _os_log_impl(&dword_23A302000, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION: kSpatializer_None != mActiveSpatializer is false.", &v6, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "PRECONDITION: kSpatializer_None != mActiveSpatializer is false.");
  }

  v2 = std::__hash_table<std::__hash_value_type<PHASETapType,std::unique_ptr<Phase::TapSourceRegistry::TapSourceInfo>>,std::__unordered_map_hasher<PHASETapType,std::__hash_value_type<PHASETapType,std::unique_ptr<Phase::TapSourceRegistry::TapSourceInfo>>,std::hash<PHASETapType>,std::equal_to<PHASETapType>,true>,std::__unordered_map_equal<PHASETapType,std::__hash_value_type<PHASETapType,std::unique_ptr<Phase::TapSourceRegistry::TapSourceInfo>>,std::equal_to<PHASETapType>,std::hash<PHASETapType>,true>,std::allocator<std::__hash_value_type<PHASETapType,std::unique_ptr<Phase::TapSourceRegistry::TapSourceInfo>>>>::find<PHASETapType>(this + 5, v1);
  if (!v2)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  return v2[3];
}

uint64_t Phase::Controller::SpatializerManager::SetHeadphoneHRIR(Phase::Controller::SpatializerManager *this, NSURL *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a2;
  *buf = 1;
  cf = buf;
  v4 = std::__hash_table<std::__hash_value_type<unsigned long long,std::unique_ptr<Phase::Controller::Spatializer>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<Phase::Controller::Spatializer>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<Phase::Controller::Spatializer>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unique_ptr<Phase::Controller::Spatializer>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(this + 5, buf)[3];
  IR::getPresetDataAttributes();
  v19 = 0;
  v5 = *(v4 + 8);
  v18 = v5;
  if (!v3)
  {
    goto LABEL_7;
  }

  if ([(NSURL *)v3 isFileURL])
  {
    v16 = 0;
    v6 = [(NSURL *)v3 checkResourceIsReachableAndReturnError:&v16];
    v7 = v16;
    if (v6)
    {
      v8 = v3;
      v9 = [(NSURL *)v3 fileSystemRepresentation];
      v10 = strlen(v9);
      v11 = CFURLCreateWithBytes(0, v9, v10, 0, 0);
      *buf = v11;
      if (!v11)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Could not construct");
      }

      v12 = cf;
      cf = v11;
      *buf = v12;
      if (v12)
      {
        CFRelease(v12);
      }

LABEL_7:
      v15 = *(v4 + 8);
      if (cf)
      {
        CFRetain(cf);
      }

      if (v20)
      {
        CFRetain(v20);
      }

      if (v21)
      {
        CFRetain(v21);
      }

      if (v22)
      {
        CFRetain(v22);
      }

      *buf = v15;
      operator new();
    }
  }

  else
  {
    v7 = 0;
  }

  if (v22)
  {
    CFRelease(v22);
  }

  if (v21)
  {
    CFRelease(v21);
  }

  if (v20)
  {
    CFRelease(v20);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return 2;
}

void sub_23A4FDEE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  if (a2)
  {
    __cxa_free_exception(v34);
    __cxa_begin_catch(exception_object);
    Phase::Commandable<128,Phase::LockFreeQueueMPSC>::LogOverflow(v32);
    __cxa_end_catch();
    (*(*v33 + 8))(v33);
    JUMPOUT(0x23A4FDD78);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Phase::Controller::SpatializerManager::SetDeviceOrientation(Phase::Controller::SpatializerManager *a1, uint64_t a2)
{
  ActiveSpatializer = Phase::Controller::SpatializerManager::GetActiveSpatializer(a1);
  result = (*(*ActiveSpatializer + 24))(ActiveSpatializer, a2);
  if (result)
  {
    v6 = *(a1 + 16);
    if (v6)
    {
      v7 = Phase::Controller::SpatializerManager::GetActiveSpatializer(a1);
      (*(*v6 + 24))(v6, v7);
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t Phase::Controller::SpatializerManager::Update(Phase::Controller::SpatializerManager *this, double a2)
{
  Phase::Commandable<128,Phase::LockFreeQueueMPSC>::ExecuteCommands(this);
  ActiveSpatializer = Phase::Controller::SpatializerManager::GetActiveSpatializer(this);
  v5.n128_f64[0] = a2;
  Phase::Controller::Spatializer::Update(ActiveSpatializer, v5);
  result = (*(**(ActiveSpatializer + 6) + 104))(*(ActiveSpatializer + 6));
  if (result)
  {
    result = *(this + 16);
    if (result)
    {
      v7 = *(*result + 24);

      return v7();
    }
  }

  return result;
}

const void **applesauce::CF::ObjectRef<__CFURL const*>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void Phase::Controller::BinauralUtility::~BinauralUtility(Phase::Controller::BinauralUtility *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    *(this + 3) = v2;
    operator delete(v2);
  }

  v3 = *(this + 1);
  *(this + 1) = 0;
  if (v3)
  {
    AudioDSP::Core::VBAP::~VBAP(v3);
    MEMORY[0x23EE864A0]();
  }
}

void *std::vector<char>::__assign_with_size[abi:ne200100]<char *,char *>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (v7 - *result < a4)
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

    if ((a4 & 0x8000000000000000) == 0)
    {
      v9 = 2 * v7;
      if (2 * v7 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v10 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<char>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<char>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (v11 - v8 >= a4)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,std::unique_ptr<Phase::Controller::Spatializer>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<Phase::Controller::Spatializer>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<Phase::Controller::Spatializer>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unique_ptr<Phase::Controller::Spatializer>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(void *a1, unint64_t a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    goto LABEL_18;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (*&v2 <= a2)
    {
      v4 = a2 % *&v2;
    }
  }

  else
  {
    v4 = (*&v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5 || (v6 = *v5) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v7 = v6[1];
    if (v7 == a2)
    {
      break;
    }

    if (v3.u32[0] > 1uLL)
    {
      if (v7 >= *&v2)
      {
        v7 %= *&v2;
      }
    }

    else
    {
      v7 &= *&v2 - 1;
    }

    if (v7 != v4)
    {
      goto LABEL_18;
    }

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_18;
    }
  }

  if (v6[2] != a2)
  {
    goto LABEL_17;
  }

  return v6;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,std::unique_ptr<Phase::Controller::Spatializer>>,void *>>>::operator()[abi:ne200100](char a1, void *__p)
{
  if (a1)
  {
    v3 = __p[3];
    __p[3] = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned long long,std::unique_ptr<Phase::Controller::Spatializer>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<Phase::Controller::Spatializer>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<Phase::Controller::Spatializer>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unique_ptr<Phase::Controller::Spatializer>>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v4 = v2[3];
      v2[3] = 0;
      if (v4)
      {
        (*(*v4 + 8))(v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v5 = *a1;
  *a1 = 0;
  if (v5)
  {
    operator delete(v5);
  }

  return a1;
}

void *Phase::Command<128>::Invoker<void (*)(Phase::Controller::Spatializer **,Phase::Controller::Spatializer::InitParameters const&,CA::ChannelLayout const&),void,Phase::Controller::Spatializer **,Phase::Controller::Spatializer::InitParameters,CA::ChannelLayout>::~Invoker(void *a1)
{
  *a1 = &unk_284D37618;
  v2 = a1[5];
  if (v2)
  {
    a1[6] = v2;
    operator delete(v2);
  }

  return a1;
}

void Phase::Command<128>::Invoker<void (*)(Phase::Controller::Spatializer **,Phase::Controller::Spatializer::InitParameters const&,CA::ChannelLayout const&),void,Phase::Controller::Spatializer **,Phase::Controller::Spatializer::InitParameters,CA::ChannelLayout>::~Invoker(void *a1)
{
  *a1 = &unk_284D37618;
  v2 = a1[5];
  if (v2)
  {
    a1[6] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x23EE864A0);
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,std::unique_ptr<Phase::Controller::Spatializer>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<Phase::Controller::Spatializer>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<Phase::Controller::Spatializer>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unique_ptr<Phase::Controller::Spatializer>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void *Phase::LambdaFunction<Phase::Controller::SpatializerManager::SetHeadphoneHRIR(NSURL *)::$_0,void>::~LambdaFunction(void *a1)
{
  *a1 = &unk_284D37640;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void Phase::LambdaFunction<Phase::Controller::SpatializerManager::SetHeadphoneHRIR(NSURL *)::$_0,void>::~LambdaFunction(void *a1)
{
  *a1 = &unk_284D37640;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  JUMPOUT(0x23EE864A0);
}

void *Phase::LambdaFunction<Phase::Controller::SpatializerManager::SetHeadphoneHRIR(NSURL *)::$_0,void>::operator()(uint64_t a1)
{
  v2 = *(a1 + 8);
  v7[0] = 1;
  v7[2] = v7;
  result = std::__hash_table<std::__hash_value_type<unsigned long long,std::unique_ptr<Phase::Controller::Spatializer>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<Phase::Controller::Spatializer>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<Phase::Controller::Spatializer>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unique_ptr<Phase::Controller::Spatializer>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(v2 + 5, v7);
  v4 = result[3];
  result[3] = *(a1 + 16);
  *(a1 + 16) = v4;
  if (*(v2 + 15) == 1)
  {
    v5 = *(v2 + 16);
    if (v5)
    {
      ActiveSpatializer = Phase::Controller::SpatializerManager::GetActiveSpatializer(v2);
      return (*(*v5 + 24))(v5, ActiveSpatializer);
    }
  }

  return result;
}

uint64_t Phase::SpatialModeler::ModelerErrorMessage@<X0>(int a1@<W0>, const void **a2@<X1>, uint64_t a3@<X8>)
{
  if (a1 > 4)
  {
    if (a1 != 5)
    {
      if (a1 == 6)
      {
        if (*(a2 + 23) >= 0)
        {
          v27 = *(a2 + 23);
        }

        else
        {
          v27 = a2[1];
        }

        result = std::string::basic_string[abi:ne200100](a3, v27 + 137);
        if (*(result + 23) >= 0)
        {
          v28 = result;
        }

        else
        {
          v28 = *result;
        }

        if (v27)
        {
          if (*(a2 + 23) >= 0)
          {
            v29 = a2;
          }

          else
          {
            v29 = *a2;
          }

          result = memmove(v28, v29, v27);
        }

        v12 = &v28[v27];
        qmemcpy(&v28[v27 + 32], "lid Source. It either doesn't exist, or we couldn't find the Source Entity with the Source Entity Handle.", 105);
        v14 = *"Modeler Error: Query has an invalid Source. It either doesn't exist, or we couldn't find the Source Entity with the Source Entity Handle.";
        v13 = *"uery has an invalid Source. It either doesn't exist, or we couldn't find the Source Entity with the Source Entity Handle.";
        v8 = &v28[v27 + 137];
      }

      else
      {
        if (a1 != 7)
        {
LABEL_56:
          if (*(a2 + 23) >= 0)
          {
            v21 = *(a2 + 23);
          }

          else
          {
            v21 = a2[1];
          }

          result = std::string::basic_string[abi:ne200100](a3, v21 + 35);
          if (*(result + 23) >= 0)
          {
            v22 = result;
          }

          else
          {
            v22 = *result;
          }

          if (v21)
          {
            if (*(a2 + 23) >= 0)
            {
              v23 = a2;
            }

            else
            {
              v23 = *a2;
            }

            result = memmove(v22, v23, v21);
          }

          qmemcpy(&v22[v21], "Modeler Error: <unrecognized error>", 35);
          v8 = &v22[v21 + 35];
          goto LABEL_93;
        }

        if (*(a2 + 23) >= 0)
        {
          v9 = *(a2 + 23);
        }

        else
        {
          v9 = a2[1];
        }

        result = std::string::basic_string[abi:ne200100](a3, v9 + 143);
        if (*(result + 23) >= 0)
        {
          v10 = result;
        }

        else
        {
          v10 = *result;
        }

        if (v9)
        {
          if (*(a2 + 23) >= 0)
          {
            v11 = a2;
          }

          else
          {
            v11 = *a2;
          }

          result = memmove(v10, v11, v9);
        }

        v12 = &v10[v9];
        qmemcpy(&v10[v9 + 32], "lid Listener. It either doesn't exist, or we couldn't find the Listener Entity with the Listener Entity Handle.", 111);
        v14 = *"Modeler Error: Query has an invalid Listener. It either doesn't exist, or we couldn't find the Listener Entity with the Listener Entity Handle.";
        v13 = *"uery has an invalid Listener. It either doesn't exist, or we couldn't find the Listener Entity with the Listener Entity Handle.";
        v8 = &v10[v9 + 143];
      }

      *v12 = v14;
      *(v12 + 1) = v13;
      goto LABEL_93;
    }

    if (*(a2 + 23) >= 0)
    {
      v18 = *(a2 + 23);
    }

    else
    {
      v18 = a2[1];
    }

    result = std::string::basic_string[abi:ne200100](a3, v18 + 58);
    if (*(result + 23) >= 0)
    {
      v19 = result;
    }

    else
    {
      v19 = *result;
    }

    if (v18)
    {
      if (*(a2 + 23) >= 0)
      {
        v20 = a2;
      }

      else
      {
        v20 = *a2;
      }

      result = memmove(v19, v20, v18);
    }

    qmemcpy(&v19[v18], "Modeler Error: Query has an invalid Geometry System State.", 58);
    v8 = &v19[v18 + 58];
  }

  else
  {
    switch(a1)
    {
      case 2:
        if (*(a2 + 23) >= 0)
        {
          v15 = *(a2 + 23);
        }

        else
        {
          v15 = a2[1];
        }

        result = std::string::basic_string[abi:ne200100](a3, v15 + 47);
        if (*(result + 23) >= 0)
        {
          v16 = result;
        }

        else
        {
          v16 = *result;
        }

        if (v15)
        {
          if (*(a2 + 23) >= 0)
          {
            v17 = a2;
          }

          else
          {
            v17 = *a2;
          }

          result = memmove(v16, v17, v15);
        }

        qmemcpy(&v16[v15], "Modeler Error: Query has an invalid Query Index", 47);
        v8 = &v16[v15 + 47];
        break;
      case 3:
        if (*(a2 + 23) >= 0)
        {
          v24 = *(a2 + 23);
        }

        else
        {
          v24 = a2[1];
        }

        result = std::string::basic_string[abi:ne200100](a3, v24 + 96);
        if (*(result + 23) >= 0)
        {
          v25 = result;
        }

        else
        {
          v25 = *result;
        }

        if (v24)
        {
          if (*(a2 + 23) >= 0)
          {
            v26 = a2;
          }

          else
          {
            v26 = *a2;
          }

          result = memmove(v25, v26, v24);
        }

        qmemcpy(&v25[v24], "Modeler Error: Query has an invalid QueryInput. It either doesn't exist, or it's the wrong type.", 96);
        v8 = &v25[v24 + 96];
        break;
      case 4:
        if (*(a2 + 23) >= 0)
        {
          v4 = *(a2 + 23);
        }

        else
        {
          v4 = a2[1];
        }

        result = std::string::basic_string[abi:ne200100](a3, v4 + 97);
        if (*(result + 23) >= 0)
        {
          v6 = result;
        }

        else
        {
          v6 = *result;
        }

        if (v4)
        {
          if (*(a2 + 23) >= 0)
          {
            v7 = a2;
          }

          else
          {
            v7 = *a2;
          }

          result = memmove(v6, v7, v4);
        }

        qmemcpy(&v6[v4], "Modeler Error: Query has an invalid QueryOutput. It either doesn't exist, or it's the wrong type.", 97);
        v8 = &v6[v4 + 97];
        break;
      default:
        goto LABEL_56;
    }
  }

LABEL_93:
  *v8 = 0;
  return result;
}

void Phase::SpatialModeler::SystemErrorCategory::~SystemErrorCategory(std::error_category *this)
{
  std::error_category::~error_category(this);

  JUMPOUT(0x23EE864A0);
}

void Phase::SpatialModeler::GetOptionalPropertyDescriptions(Phase::SpatialModeler *this)
{
  v7 = *MEMORY[0x277D85DE8];
  v1[23] = 13;
  strcpy(v1, "DistanceModel");
  v2 = 1;
  v3 = 1;
  v5 = 0;
  v6 = 0;
  v4 = 0;
  operator new();
}

void sub_23A4FF330(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  std::vector<Phase::SpatialModeler::OptionalPropertyDescription>::__destroy_vector::operator()[abi:ne200100](&a9);
  v68 = &a67;
  v69 = -392;
  v70 = &a67;
  while (1)
  {
    v71 = *v70;
    v70 -= 56;
    if (v71 < 0)
    {
      operator delete(*(v68 - 23));
    }

    v68 = v70;
    v69 += 56;
    if (!v69)
    {
      _Unwind_Resume(a1);
    }
  }
}

void Phase::SpatialModeler::PriorityQueue::~PriorityQueue(atomic_ullong *this)
{
  Phase::SortedCommandQueue<Phase::SpatialModeler::PriorityQueue,Phase::SpatialModeler::PriorityQueueCommandType,std::variant<std::monostate,Phase::SpatialModeler::PriorityQueueEntry,Phase::UniqueObjectId,Phase::SpatialModeler::PriorityQueueClusterIndexUpdate,Phase::SpatialModeler::PriorityQueueGlobals>>::ClearCommands(this + 27);
  std::__hash_table<std::__hash_value_type<int,Phase::Controller::Parameter<double>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,Phase::Controller::Parameter<double>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,Phase::Controller::Parameter<double>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,Phase::Controller::Parameter<double>>>>::clear(this + 5);
  std::__function::__value_func<BOOL ()(Phase::SpatialModeler::PriorityQueueEntry const&,Phase::SpatialModeler::PriorityQueueEntry const&)>::~__value_func[abi:ne200100]((this + 23));
  std::__function::__value_func<void ()(Phase::SpatialModeler::PriorityQueueEntry &)>::~__value_func[abi:ne200100]((this + 19));
  std::__function::__value_func<void ()(Phase::SpatialModeler::PriorityQueue &,Phase::SpatialModeler::Graph &)>::~__value_func[abi:ne200100]((this + 15));
  std::__function::__value_func<void ()(Phase::SpatialModeler::PriorityQueue &,Phase::SpatialModeler::Graph &)>::~__value_func[abi:ne200100]((this + 11));
  std::__hash_table<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::__unordered_map_hasher<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::hash<Phase::SpatialCategory>,std::equal_to<Phase::SpatialCategory>,true>,std::__unordered_map_equal<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::equal_to<Phase::SpatialCategory>,std::hash<Phase::SpatialCategory>,true>,std::allocator<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>>>::~__hash_table((this + 5));
}

void *Phase::SpatialModeler::PriorityQueue::ClearEntries(Phase::SpatialModeler::PriorityQueue *this, int a2)
{
  if (a2)
  {
    if (*(this + 22))
    {
      for (i = *(this + 7); i; i = *i)
      {
        v4 = *(this + 22);
        if (!v4)
        {
          std::__throw_bad_function_call[abi:ne200100]();
        }

        (*(*v4 + 48))(v4, i + 4);
      }
    }
  }

  return std::__hash_table<std::__hash_value_type<int,Phase::Controller::Parameter<double>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,Phase::Controller::Parameter<double>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,Phase::Controller::Parameter<double>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,Phase::Controller::Parameter<double>>>>::clear(this + 5);
}

atomic_ullong *Phase::SortedCommandQueue<Phase::SpatialModeler::PriorityQueue,Phase::SpatialModeler::PriorityQueueCommandType,std::variant<std::monostate,Phase::SpatialModeler::PriorityQueueEntry,Phase::UniqueObjectId,Phase::SpatialModeler::PriorityQueueClusterIndexUpdate,Phase::SpatialModeler::PriorityQueueGlobals>>::ClearCommands(atomic_ullong *result)
{
  v1 = atomic_exchange(result, 0);
  if (v1)
  {
    do
    {
      v2 = *(v1 + 88);
      Phase::SortedCommandQueue<Phase::SpatialModeler::PriorityQueue,Phase::SpatialModeler::PriorityQueueCommandType,std::variant<std::monostate,Phase::SpatialModeler::PriorityQueueEntry,Phase::UniqueObjectId,Phase::SpatialModeler::PriorityQueueClusterIndexUpdate,Phase::SpatialModeler::PriorityQueueGlobals>>::CommandBatch::Clear((v1 + 80));
      result = MEMORY[0x23EE864A0](v1, 0x1020C40994B1BD2);
      v1 = v2;
    }

    while (v2);
  }

  return result;
}

uint64_t Phase::SortedCommandQueue<Phase::SpatialModeler::PriorityQueue,Phase::SpatialModeler::PriorityQueueCommandType,std::variant<std::monostate,Phase::SpatialModeler::PriorityQueueEntry,Phase::UniqueObjectId,Phase::SpatialModeler::PriorityQueueClusterIndexUpdate,Phase::SpatialModeler::PriorityQueueGlobals>>::ExecuteCommands(atomic_ullong *a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v5 = 0;
  memset(v4, 0, sizeof(v4));
  Phase::SortedCommandQueue<Phase::SpatialModeler::PriorityQueue,Phase::SpatialModeler::PriorityQueueCommandType,std::variant<std::monostate,Phase::SpatialModeler::PriorityQueueEntry,Phase::UniqueObjectId,Phase::SpatialModeler::PriorityQueueClusterIndexUpdate,Phase::SpatialModeler::PriorityQueueGlobals>>::SortCommandList(a1, atomic_exchange(a1, 0), v4);
  if (*&v4[0])
  {
    std::terminate();
  }

  for (i = 8; i != 40; i += 8)
  {
    result = (*(a1[2] + i))(a1[1], *(v4 + i));
  }

  return result;
}

uint64_t Phase::SpatialModeler::PriorityQueue::ExecuteAdd(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = a2;
    v3 = result;
    do
    {
      v4 = v2;
      v2 = *(v2 + 88);
      if (*(v4 + 72) != 1)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      v5 = std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>>>::find<Phase::UniqueObjectId>(&v3[5], (v4 + 8));
      *(v4 + 64) = 0;
      if (!v5)
      {
        v9 = 0;
        v20[0] = *(v4 + 8);
        v10 = *(v4 + 24);
        v20[1] = v20[0];
        v20[2] = v10;
        v11 = *(v4 + 56);
        v20[3] = *(v4 + 40);
        v20[4] = v11;
        v12 = 0xCBF29CE484222325;
        do
        {
          v12 = 0x100000001B3 * (v12 ^ *(v20 + v9++));
        }

        while (v9 != 16);
        v13 = v3[6];
        if (v13)
        {
          v14 = vcnt_s8(v13);
          v14.i16[0] = vaddlv_u8(v14);
          if (v14.u32[0] > 1uLL)
          {
            v15 = v12;
            if (v12 >= *&v13)
            {
              v15 = v12 % *&v13;
            }
          }

          else
          {
            v15 = (*&v13 - 1) & v12;
          }

          v16 = *(*&v3[5] + 8 * v15);
          if (v16)
          {
            for (i = *v16; i; i = *i)
            {
              v18 = i[1];
              if (v18 == v12)
              {
                if (i[2] == *&v20[0] && i[3] == *(&v20[0] + 1))
                {
                  goto LABEL_29;
                }
              }

              else
              {
                if (v14.u32[0] > 1uLL)
                {
                  if (v18 >= *&v13)
                  {
                    v18 %= *&v13;
                  }
                }

                else
                {
                  v18 &= *&v13 - 1;
                }

                if (v18 != v15)
                {
                  break;
                }
              }
            }
          }
        }

        operator new();
      }

      *(v4 + 32) = *(v5 + 7);
      *(v4 + 48) = v5[9];
      *(v4 + 56) = *(v5 + 80);
      v6 = *(v4 + 8);
      v7 = *(v4 + 24);
      v8 = *(v4 + 56);
      *(v5 + 4) = *(v4 + 40);
      *(v5 + 5) = v8;
      *(v5 + 2) = v6;
      *(v5 + 3) = v7;
LABEL_29:
      Phase::SortedCommandQueue<Phase::SpatialModeler::PriorityQueue,Phase::SpatialModeler::PriorityQueueCommandType,std::variant<std::monostate,Phase::SpatialModeler::PriorityQueueEntry,Phase::UniqueObjectId,Phase::SpatialModeler::PriorityQueueClusterIndexUpdate,Phase::SpatialModeler::PriorityQueueGlobals>>::CommandBatch::Clear((v4 + 80));
      result = MEMORY[0x23EE864A0](v4, 0x1020C40994B1BD2);
    }

    while (v2);
  }

  return result;
}

uint64_t Phase::SpatialModeler::PriorityQueue::ExecuteRemove(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = a2;
    v3 = result;
    do
    {
      v4 = v2;
      v2 = *(v2 + 88);
      if (*(v4 + 72) != 2)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      v5 = std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>>>::find<Phase::UniqueObjectId>((v3 + 40), (v4 + 8));
      if (v5)
      {
        v6 = *(v3 + 176);
        if (v6)
        {
          (*(*v6 + 48))(v6, v5 + 4);
        }

        std::__hash_table<Phase::Controller::Renderer *,std::hash<Phase::Controller::Renderer *>,std::equal_to<Phase::Controller::Renderer *>,std::allocator<Phase::Controller::Renderer *>>::erase((v3 + 40), v5);
      }

      Phase::SortedCommandQueue<Phase::SpatialModeler::PriorityQueue,Phase::SpatialModeler::PriorityQueueCommandType,std::variant<std::monostate,Phase::SpatialModeler::PriorityQueueEntry,Phase::UniqueObjectId,Phase::SpatialModeler::PriorityQueueClusterIndexUpdate,Phase::SpatialModeler::PriorityQueueGlobals>>::CommandBatch::Clear((v4 + 80));
      result = MEMORY[0x23EE864A0](v4, 0x1020C40994B1BD2);
    }

    while (v2);
  }

  return result;
}

uint64_t Phase::SpatialModeler::PriorityQueue::ExecuteUpdateClusterIndices(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = a2;
    v3 = result;
    do
    {
      v4 = v2;
      v2 = *(v2 + 88);
      if (*(v4 + 72) != 3)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      v5 = std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>>>::find<Phase::UniqueObjectId>((v3 + 40), (v4 + 8));
      if (v5)
      {
        *(v5 + 7) = *(v4 + 24);
        v5[9] = *(v4 + 40);
      }

      Phase::SortedCommandQueue<Phase::SpatialModeler::PriorityQueue,Phase::SpatialModeler::PriorityQueueCommandType,std::variant<std::monostate,Phase::SpatialModeler::PriorityQueueEntry,Phase::UniqueObjectId,Phase::SpatialModeler::PriorityQueueClusterIndexUpdate,Phase::SpatialModeler::PriorityQueueGlobals>>::CommandBatch::Clear((v4 + 80));
      result = MEMORY[0x23EE864A0](v4, 0x1020C40994B1BD2);
    }

    while (v2);
  }

  return result;
}

uint64_t Phase::SpatialModeler::PriorityQueue::ExecuteUpdateGlobals(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *(v2 + 88);
      if (*(v2 + 72) != 4)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      Phase::SortedCommandQueue<Phase::SpatialModeler::PriorityQueue,Phase::SpatialModeler::PriorityQueueCommandType,std::variant<std::monostate,Phase::SpatialModeler::PriorityQueueEntry,Phase::UniqueObjectId,Phase::SpatialModeler::PriorityQueueClusterIndexUpdate,Phase::SpatialModeler::PriorityQueueGlobals>>::CommandBatch::Clear((v2 + 80));
      result = MEMORY[0x23EE864A0](v2, 0x1020C40994B1BD2);
      v2 = v3;
    }

    while (v3);
  }

  return result;
}

uint64_t Phase::SortedCommandQueue<Phase::SpatialModeler::PriorityQueue,Phase::SpatialModeler::PriorityQueueCommandType,std::variant<std::monostate,Phase::SpatialModeler::PriorityQueueEntry,Phase::UniqueObjectId,Phase::SpatialModeler::PriorityQueueClusterIndexUpdate,Phase::SpatialModeler::PriorityQueueGlobals>>::SortCommandList(uint64_t result, unsigned int *a2, uint64_t a3)
{
  if (a2)
  {
    v4 = a2;
    v5 = result;
    do
    {
      while (1)
      {
        v6 = v4;
        v4 = *(v4 + 11);
        v7 = *v6;
        if (v7)
        {
          break;
        }

        Phase::SortedCommandQueue<Phase::SpatialModeler::PriorityQueue,Phase::SpatialModeler::PriorityQueueCommandType,std::variant<std::monostate,Phase::SpatialModeler::PriorityQueueEntry,Phase::UniqueObjectId,Phase::SpatialModeler::PriorityQueueClusterIndexUpdate,Phase::SpatialModeler::PriorityQueueGlobals>>::SortCommandList(v5, *(v6 + 10), a3);
        *(v6 + 10) = 0;
        v8 = v6 + 20;
LABEL_9:
        Phase::SortedCommandQueue<Phase::SpatialModeler::PriorityQueue,Phase::SpatialModeler::PriorityQueueCommandType,std::variant<std::monostate,Phase::SpatialModeler::PriorityQueueEntry,Phase::UniqueObjectId,Phase::SpatialModeler::PriorityQueueClusterIndexUpdate,Phase::SpatialModeler::PriorityQueueGlobals>>::CommandBatch::Clear(v8);
        result = MEMORY[0x23EE864A0](v6, 0x1020C40994B1BD2);
        if (!v4)
        {
          return result;
        }
      }

      if (v7 > 4)
      {
        v8 = v6 + 20;
        goto LABEL_9;
      }

      *(v6 + 11) = *(a3 + 8 * v7);
      *(a3 + 8 * v7) = v6;
    }

    while (v4);
  }

  return result;
}

uint64_t Phase::InitInPlace<Phase::SpatialModeler::SubmixListenerInput<float>>(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  *a1 = 0x200000001;
  *(a1 + 48) = 0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  v5 = 0;
  v6 = 0;
  Phase::Subbands<float>::Subbands(a1 + 208, &v5, 3);
  *(a1 + 336) = 0;
  *(a1 + 344) = 0;
  v2 = (a1 + 360);
  v3 = 128;
  do
  {
    *(v2 - 2) = 0;
    *v2 = 0;
    v2 += 2;
    v3 -= 16;
  }

  while (v3);
  *(a1 + 480) = 0;
  return 1;
}

uint64_t Phase::InitInPlace<Phase::SpatialModeler::RenderGroupInput<float>>(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  *a1 = 0x200000002;
  *(a1 + 48) = 0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0;
  *(a1 + 228) = 1065353216;
  *(a1 + 244) = 1065353216;
  v2 = (a1 + 256);
  v3 = 128;
  *(a1 + 236) = 0;
  do
  {
    *(v2 - 2) = 0;
    *v2 = 0;
    v2 += 2;
    v3 -= 16;
  }

  while (v3);
  *(a1 + 376) = 0;
  v5 = 0;
  v6 = 0;
  Phase::Subbands<float>::Subbands(a1 + 384, &v5, 3);
  *(a1 + 512) = 0;
  *(a1 + 528) = 0u;
  *(a1 + 544) = 0;
  *(a1 + 552) = 0;
  return 1;
}

uint64_t Phase::InitInPlace<Phase::SpatialModeler::ClusterSetInput<float>>(uint64_t a1)
{
  *a1 = 0x200000003;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 88) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 136) = 0;
  return 1;
}

uint64_t Phase::InitInPlace<Phase::SpatialModeler::StringInput>(uint64_t a1)
{
  *a1 = 0x200000004;
  *(a1 + 48) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 56) = 0;
  return 1;
}

uint64_t Phase::DestroyInPlace<Phase::SpatialModeler::ClusterSetInput<float>>(uint64_t a1)
{
  std::unique_ptr<Phase::SpatialModeler::SubmixRoutingInput [],std::function<void ()(void *)>>::reset[abi:ne200100]((a1 + 104));
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](a1 + 112);
  std::unique_ptr<Phase::SpatialModeler::RenderGroup [],std::function<void ()(void *)>>::reset[abi:ne200100]((a1 + 56));
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](a1 + 64);
  return 1;
}

uint64_t Phase::DestroyInPlace<Phase::SpatialModeler::StringInput>(uint64_t a1)
{
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  return 1;
}

uint64_t Phase::InitInPlace<Phase::SpatialModeler::CullabilityOutput<float>>(uint64_t a1)
{
  *a1 = 1;
  *(a1 + 4) = 1;
  *(a1 + 8) = 0;
  return 1;
}

uint64_t Phase::InitInPlace<Phase::SpatialModeler::ClusterSetOutput<float>>(uint64_t a1)
{
  *a1 = 2;
  *(a1 + 4) = 1;
  *(a1 + 8) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 40) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 88) = 0;
  return 1;
}

uint64_t Phase::InitInPlace<Phase::SpatialModeler::DirectionalMetadataOutput<float>>(uint64_t a1)
{
  *a1 = 3;
  *(a1 + 4) = 1;
  *(a1 + 8) = 0;
  *(a1 + 204) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 40) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 88) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 176) = 0;
  *(a1 + 200) = 0;
  return 1;
}

uint64_t Phase::DestroyInPlace<Phase::SpatialModeler::ClusterSetOutput<float>>(uint64_t *a1)
{
  std::unique_ptr<Phase::SpatialModeler::SubmixRoutingOutput [],std::function<void ()(void *)>>::reset[abi:ne200100](a1 + 13);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100]((a1 + 14));
  std::unique_ptr<BOOL [],std::function<void ()(void *)>>::reset[abi:ne200100](a1 + 7);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100]((a1 + 8));
  std::unique_ptr<Phase::SpatialModeler::RenderGroup [],std::function<void ()(void *)>>::reset[abi:ne200100](a1 + 1);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100]((a1 + 2));
  return 1;
}

uint64_t Phase::DestroyInPlace<Phase::SpatialModeler::DirectionalMetadataOutput<float>>(uint64_t *a1)
{
  std::unique_ptr<BOOL [],std::function<void ()(void *)>>::reset[abi:ne200100](a1 + 18);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100]((a1 + 19));
  std::unique_ptr<Phase::PackedSubbandArray<float>,std::function<void ()(void *)>>::reset[abi:ne200100](a1 + 13, 0);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100]((a1 + 14));
  std::unique_ptr<float [],std::function<void ()(void *)>>::reset[abi:ne200100](a1 + 7);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100]((a1 + 8));
  std::unique_ptr<Phase::Vector<float,3ul> [],std::function<void ()(void *)>>::reset[abi:ne200100](a1 + 1);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100]((a1 + 2));
  return 1;
}

uint64_t Phase::Controller::SpatialModelerInfo::GetDescription@<X0>(Phase::Controller::SpatialModelerInfo *this@<X0>, _BYTE *a2@<X8>)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v19);
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v19, "SpatialModeler ", 15);
  v5 = *(this + 23);
  if (v5 >= 0)
  {
    v6 = this;
  }

  else
  {
    v6 = *this;
  }

  if (v5 >= 0)
  {
    v7 = *(this + 23);
  }

  else
  {
    v7 = *(this + 1);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, v6, v7);
  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v19, " (category ", 11);
  v9 = GetSpatialCategoryString(*(this + 10));
  v10 = [v9 UTF8String];
  v11 = strlen(v10);
  v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, v10, v11);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, ", ", 2);

  v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v19, "id ", 3);
  v14 = MEMORY[0x23EE86170](v13, *(this + 3));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, ")", 1);
  if ((v26 & 0x10) != 0)
  {
    v16 = v25;
    if (v25 < v22)
    {
      v25 = v22;
      v16 = v22;
    }

    locale = v21[4].__locale_;
  }

  else
  {
    if ((v26 & 8) == 0)
    {
      v15 = 0;
      a2[23] = 0;
      goto LABEL_20;
    }

    locale = v21[1].__locale_;
    v16 = v21[3].__locale_;
  }

  v15 = v16 - locale;
  if ((v16 - locale) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v15 >= 0x17)
  {
    operator new();
  }

  a2[23] = v15;
  if (v15)
  {
    memmove(a2, locale, v15);
  }

LABEL_20:
  a2[v15] = 0;
  v19 = *MEMORY[0x277D82828];
  *(&v19 + *(v19 - 24)) = *(MEMORY[0x277D82828] + 24);
  v20 = MEMORY[0x277D82878] + 16;
  if (v24 < 0)
  {
    operator delete(__p);
  }

  v20 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v21);
  std::ostream::~ostream();
  return MEMORY[0x23EE863B0](&v27);
}

void sub_23A50059C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
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

  std::ostringstream::~ostringstream(va, MEMORY[0x277D82828]);
  MEMORY[0x23EE863B0](va1);
  _Unwind_Resume(a1);
}

void Phase::Controller::SpatialModelerRegistry::SpatialModelerRegistry(Phase::Controller::SpatialModelerRegistry *this)
{
  v26 = *MEMORY[0x277D85DE8];
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 8) = 1065353216;
  strcpy(&__str, "DirectPathTransmission");
  *(&__str.__r_.__value_.__s + 23) = 22;
  v1 = 68;
  v2 = 1;
  v3 = 0xCBF29CE484222325;
  do
  {
    v3 = 0x100000001B3 * (v3 ^ v1);
    v1 = __str.__r_.__value_.__s.__data_[v2++];
  }

  while (v1);
  memset(v8, 0, sizeof(v8));
  *__p = 0u;
  memset(v12, 0, 60);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0;
  v20 = 0u;
  v21 = 0u;
  v22 = 0;
  std::string::operator=(v8, &__str);
  *&v8[24] = v3;
  v9 = 1;
  v10 = 1;
  v5 = constinit;
  v6 = 5;
  v24 = 0;
  v23 = 0uLL;
  std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int const*,unsigned int const*>(&v23, &v5, &v7, 5uLL);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  *__p = v23;
  *&v12[0] = v24;
  Phase::SpatialModeler::DirectPathTransmission::GetSupportedQueryDescs(&v23);
  std::vector<Phase::SpatialModeler::QueryDesc>::__vdeallocate(v12 + 1);
  *(v12 + 8) = v23;
  *(&v12[1] + 1) = v24;
  v24 = 0;
  v23 = 0uLL;
  *&v5 = &v23;
  std::vector<Phase::SpatialModeler::QueryDesc>::__destroy_vector::operator()[abi:ne200100](&v5);
  *&v5 = 3;
  v24 = 0;
  v23 = 0uLL;
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long const*,unsigned long const*>(&v23, &v5, &v5 + 8, 1uLL);
  if (*&v12[2])
  {
    *(&v12[2] + 1) = *&v12[2];
    operator delete(*&v12[2]);
  }

  v12[2] = v23;
  *&v12[3] = v24;
  v13 = 3;
  *&v14 = 0x4039000000000000;
  DWORD2(v12[3]) = 0;
  *&v23 = &unk_284D37740;
  v25 = &v23;
  std::__function::__value_func<Phase::SpatialModeler::BaseModeler * ()(void)>::swap[abi:ne200100](&v23, v19);
  std::__function::__value_func<Phase::SpatialModeler::BaseModeler * ()(void)>::~__value_func[abi:ne200100](&v23);
  operator new();
}

void sub_23A501A14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  v33 = *(v31 + 272);
  if (v33)
  {
    *(v31 + 280) = v33;
    operator delete(v33);
  }

  Phase::Controller::SpatialModelerInfo::~SpatialModelerInfo(&a30);
  if (a24 < 0)
  {
    operator delete(__p);
  }

  std::__hash_table<std::__hash_value_type<unsigned long long,Phase::Controller::SpatialModelerInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,Phase::Controller::SpatialModelerInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,Phase::Controller::SpatialModelerInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,Phase::Controller::SpatialModelerInfo>>>::~__hash_table(v30);
  _Unwind_Resume(a1);
}

__n128 Phase::Controller::SpatialModelerRegistry::RegisterSpatialModeler(int8x8_t *this, unint64_t a2, Phase::Controller::SpatialModelerInfo *a3)
{
  v36 = *MEMORY[0x277D85DE8];
  v29 = a2;
  v5 = std::__hash_table<std::__hash_value_type<unsigned long long,int>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,int>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,int>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,int>>>::find<unsigned long long>(this, &v29);
  if (v5)
  {
    v27 = **(Phase::Logger::GetInstance(v5) + 752);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v31 = "SpatialModelerRegistry.mm";
      v32 = 1024;
      v33 = 313;
      v34 = 2048;
      v35 = v29;
      _os_log_impl(&dword_23A302000, v27, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): A registry entry with id %llu already exists!", buf, 0x1Cu);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "A registry entry with id %llu already exists!");
  }

  v6 = this[1];
  if (!*&v6)
  {
    goto LABEL_19;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = v29;
    if (*&v6 <= v29)
    {
      v8 = v29 % *&v6;
    }
  }

  else
  {
    v8 = (*&v6 - 1) & v29;
  }

  v9 = *(*this + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_19:
    operator new();
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == v29)
    {
      break;
    }

    if (v7.u32[0] > 1uLL)
    {
      if (v11 >= *&v6)
      {
        v11 %= *&v6;
      }
    }

    else
    {
      v11 &= *&v6 - 1;
    }

    if (v11 != v8)
    {
      goto LABEL_19;
    }

LABEL_18:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_19;
    }
  }

  if (v10[2] != v29)
  {
    goto LABEL_18;
  }

  if (*(v10 + 47) < 0)
  {
    operator delete(v10[3]);
  }

  v12 = *a3;
  v10[5] = *(a3 + 2);
  *(v10 + 3) = v12;
  *(a3 + 23) = 0;
  *a3 = 0;
  v13 = *(a3 + 10);
  v14 = v10[9];
  *(v10 + 3) = *(a3 + 24);
  *(v10 + 16) = v13;
  if (v14)
  {
    v10[10] = v14;
    operator delete(v14);
    v10[9] = 0;
    v10[10] = 0;
    v10[11] = 0;
  }

  *(v10 + 9) = *(a3 + 3);
  v10[11] = *(a3 + 8);
  *(a3 + 6) = 0;
  *(a3 + 7) = 0;
  *(a3 + 8) = 0;
  std::vector<Phase::SpatialModeler::QueryDesc>::__vdeallocate(v10 + 12);
  *(v10 + 6) = *(a3 + 72);
  v10[14] = *(a3 + 11);
  *(a3 + 9) = 0;
  *(a3 + 10) = 0;
  *(a3 + 11) = 0;
  v15 = v10[15];
  if (v15)
  {
    v10[16] = v15;
    operator delete(v15);
    v10[15] = 0;
    v10[16] = 0;
    v10[17] = 0;
  }

  *(v10 + 15) = *(a3 + 6);
  v10[17] = *(a3 + 14);
  *(a3 + 13) = 0;
  *(a3 + 14) = 0;
  *(a3 + 12) = 0;
  v16 = *(a3 + 136);
  *(v10 + 9) = *(a3 + 120);
  v17 = *(a3 + 152);
  v18 = *(a3 + 168);
  v19 = *(a3 + 184);
  v10[28] = *(a3 + 25);
  *(v10 + 12) = v18;
  *(v10 + 13) = v19;
  *(v10 + 10) = v16;
  *(v10 + 11) = v17;
  v20 = v10[32];
  v10[32] = 0;
  if (v20 == v10 + 29)
  {
    (*(*v20 + 32))(v20);
  }

  else if (v20)
  {
    (*(*v20 + 40))(v20);
  }

  v21 = (v10 + 32);
  v22 = (a3 + 232);
  v23 = *(a3 + 29);
  if (v23)
  {
    if (v23 != (a3 + 208))
    {
      *v21 = v23;
      goto LABEL_34;
    }

    *v21 = (v10 + 29);
    (*(**v22 + 24))(*v22, v10 + 29);
  }

  else
  {
    v22 = v10 + 32;
LABEL_34:
    *v22 = 0;
  }

  v24 = *(a3 + 30);
  *(a3 + 30) = 0;
  v25 = v10[33];
  v10[33] = v24;
  if (v25)
  {
    (*(*v25 + 8))(v25);
  }

  std::vector<Phase::SpatialModeler::EntityShapeTemplate>::__vdeallocate(v10 + 34);
  result = *(a3 + 248);
  *(v10 + 17) = result;
  v10[36] = *(a3 + 33);
  *(a3 + 31) = 0;
  *(a3 + 32) = 0;
  *(a3 + 33) = 0;
  return result;
}

void sub_23A502240(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void Phase::Controller::SpatialModelerInfo::~SpatialModelerInfo(Phase::Controller::SpatialModelerInfo *this)
{
  v5 = (this + 248);
  std::vector<Phase::SpatialModeler::EntityShapeTemplate>::__destroy_vector::operator()[abi:ne200100](&v5);
  v2 = *(this + 30);
  *(this + 30) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  std::__function::__value_func<Phase::SpatialModeler::BaseModeler * ()(void)>::~__value_func[abi:ne200100](this + 208);
  v3 = *(this + 12);
  if (v3)
  {
    *(this + 13) = v3;
    operator delete(v3);
  }

  v5 = (this + 72);
  std::vector<Phase::SpatialModeler::QueryDesc>::__destroy_vector::operator()[abi:ne200100](&v5);
  v4 = *(this + 6);
  if (v4)
  {
    *(this + 7) = v4;
    operator delete(v4);
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void sub_23A50243C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  MEMORY[0x23EE864A0](v12, v11);
  _Unwind_Resume(a1);
}

void *Phase::Controller::SpatialModelerRegistry::CreateSpatialModelerInstance(Phase::Controller::SpatialModelerRegistry *this, unint64_t a2)
{
  v4 = a2;
  result = std::__hash_table<std::__hash_value_type<unsigned long long,int>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,int>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,int>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,int>>>::find<unsigned long long>(this, &v4);
  if (result)
  {
    v3 = result[32];
    if (!v3)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    return (*(*v3 + 48))(v3);
  }

  return result;
}

void Phase::Controller::SpatialModelerRegistry::GetSpatialModelerIds(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  for (i = *(a1 + 16); i; i = *i)
  {
    if (*(i + 16) == a2)
    {
      std::vector<unsigned long long>::push_back[abi:ne200100](a3, i + 2);
    }
  }
}

void sub_23A502524(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

Phase::Logger *Phase::Controller::SpatialModelerRegistry::GetSpatialCategories@<X0>(Phase::Logger *this@<X0>, uint64_t a2@<X8>)
{
  v18 = *MEMORY[0x277D85DE8];
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 1065353216;
  for (i = *(this + 2); i; i = *i)
  {
    v4 = *(i + 16);
    if (v4 == 5 || v4 == 0)
    {
      v12 = **(Phase::Logger::GetInstance(this) + 752);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v14 = 136315394;
        v15 = "SpatialModelerRegistry.mm";
        v16 = 1024;
        v17 = 389;
        _os_log_impl(&dword_23A302000, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error) [spatialModelerInfo.mCategory == SpatialCategory::Invalid || spatialModelerInfo.mCategory == SpatialCategory::Count is true]: Invalid Spatial Category!", &v14, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Invalid Spatial Category!");
    }

    v6 = *(a2 + 8);
    if (!v6)
    {
      goto LABEL_22;
    }

    v7 = vcnt_s8(v6);
    v7.i16[0] = vaddlv_u8(v7);
    if (v7.u32[0] > 1uLL)
    {
      v8 = v4;
      if (v6 <= v4)
      {
        v8 = v4 % v6;
      }
    }

    else
    {
      v8 = (v6 - 1) & v4;
    }

    v9 = *(*a2 + 8 * v8);
    if (!v9 || (v10 = *v9) == 0)
    {
LABEL_22:
      operator new();
    }

    while (1)
    {
      v11 = v10[1];
      if (v11 == v4)
      {
        break;
      }

      if (v7.u32[0] > 1uLL)
      {
        if (v11 >= v6)
        {
          v11 %= v6;
        }
      }

      else
      {
        v11 &= v6 - 1;
      }

      if (v11 != v8)
      {
        goto LABEL_22;
      }

LABEL_21:
      v10 = *v10;
      if (!v10)
      {
        goto LABEL_22;
      }
    }

    if (*(v10 + 4) != v4)
    {
      goto LABEL_21;
    }
  }

  return this;
}

void sub_23A502A44(_Unwind_Exception *a1)
{
  operator delete(v2);
  std::__hash_table<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::__unordered_map_hasher<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::hash<Phase::SpatialCategory>,std::equal_to<Phase::SpatialCategory>,true>,std::__unordered_map_equal<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::equal_to<Phase::SpatialCategory>,std::hash<Phase::SpatialCategory>,true>,std::allocator<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>>>::~__hash_table(v1);
  _Unwind_Resume(a1);
}

void std::vector<Phase::SpatialModeler::QueryDesc>::__vdeallocate(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v1)
    {
      do
      {
        v3 -= 80;
        std::__destroy_at[abi:ne200100]<Phase::SpatialModeler::QueryDesc,0>(v3);
      }

      while (v3 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void std::vector<Phase::SpatialModeler::EntityShapeTemplate>::__vdeallocate(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v1)
    {
      do
      {
        v5 = v3 - 56;
        std::__hash_table<std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>,std::__unordered_map_hasher<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalHash,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalEqualTo,true>,std::__unordered_map_equal<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalEqualTo,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalHash,true>,std::allocator<std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>>>::~__hash_table((v3 - 48));
        v3 = v5;
      }

      while (v5 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

uint64_t std::__function::__value_func<Phase::SpatialModeler::BaseModeler * ()(void)>::~__value_func[abi:ne200100](uint64_t a1)
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

void sub_23A502C2C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned long long,Phase::Controller::SpatialModelerInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,Phase::Controller::SpatialModelerInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,Phase::Controller::SpatialModelerInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,Phase::Controller::SpatialModelerInfo>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<unsigned long long,Phase::Controller::SpatialModelerInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,Phase::Controller::SpatialModelerInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,Phase::Controller::SpatialModelerInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,Phase::Controller::SpatialModelerInfo>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<unsigned long long,Phase::Controller::SpatialModelerInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,Phase::Controller::SpatialModelerInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,Phase::Controller::SpatialModelerInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,Phase::Controller::SpatialModelerInfo>>>::__deallocate_node(uint64_t a1, char *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      v7 = (v2 + 272);
      std::vector<Phase::SpatialModeler::EntityShapeTemplate>::__destroy_vector::operator()[abi:ne200100](&v7);
      v4 = *(v2 + 33);
      *(v2 + 33) = 0;
      if (v4)
      {
        (*(*v4 + 8))(v4);
      }

      std::__function::__value_func<Phase::SpatialModeler::BaseModeler * ()(void)>::~__value_func[abi:ne200100]((v2 + 232));
      v5 = *(v2 + 15);
      if (v5)
      {
        *(v2 + 16) = v5;
        operator delete(v5);
      }

      v7 = (v2 + 96);
      std::vector<Phase::SpatialModeler::QueryDesc>::__destroy_vector::operator()[abi:ne200100](&v7);
      v6 = *(v2 + 9);
      if (v6)
      {
        *(v2 + 10) = v6;
        operator delete(v6);
      }

      if (v2[47] < 0)
      {
        operator delete(*(v2 + 3));
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void sub_23A5030B4(void *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v2);
  operator delete(v4);
  os_unfair_lock_unlock(&caulk::alloc::shared_allocator<caulk::alloc::multi_free_list<caulk::alloc::cascading_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::serial_allocator,caulk::alloc::embed_block_memory,16384ul>>,caulk::concurrent::details::node_allocator<unsigned long,std::shared_ptr<Phase::SpatialModeler::DirectPathTransmission::SourceHistory>,10ul,(caulk::concurrent::skiplist_options)0>::size_generator,8ul,1ul,-1l>>::shared_instance(void)::global);
  v5 = *(v1 + 344);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  __clang_call_terminate(a1);
}

void std::__shared_ptr_emplace<caulk::alloc::multi_free_list<caulk::alloc::cascading_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::serial_allocator,caulk::alloc::embed_block_memory,16384ul>>,caulk::concurrent::details::node_allocator<unsigned long,std::shared_ptr<Phase::SpatialModeler::DirectPathTransmission::SourceHistory>,10ul,(caulk::concurrent::skiplist_options)0>::size_generator,8ul,1ul,-1l>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284D37788;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x23EE864A0);
}

caulk::alloc::base_allocator *std::__shared_ptr_emplace<caulk::alloc::multi_free_list<caulk::alloc::cascading_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::serial_allocator,caulk::alloc::embed_block_memory,16384ul>>,caulk::concurrent::details::node_allocator<unsigned long,std::shared_ptr<Phase::SpatialModeler::DirectPathTransmission::SourceHistory>,10ul,(caulk::concurrent::skiplist_options)0>::size_generator,8ul,1ul,-1l>>::__on_zero_shared(uint64_t a1)
{
  v2 = 0;
  v3 = a1 + 80;
  do
  {
    v4 = caulk::alloc::multi_free_list<caulk::alloc::cascading_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::serial_allocator,caulk::alloc::embed_block_memory,16384ul>>,caulk::concurrent::details::node_allocator<unsigned long,std::shared_ptr<Phase::SpatialModeler::DirectPathTransmission::SourceHistory>,10ul,(caulk::concurrent::skiplist_options)0>::size_generator,8ul,1ul,-1l>::Sizes[v2];
    while (1)
    {
      result = caulk::concurrent::stack<caulk::alloc::free_block,caulk::concurrent::intrusive_single_link_node<caulk::alloc::free_block>>::pop();
      if (!result)
      {
        break;
      }

      atomic_fetch_add((v3 + 32 * v2 + 16), 0xFFFFFFFFFFFFFFFFLL);
      atomic_fetch_add((a1 + 68), 0x801u);
      v6 = *(a1 + 48);
      if (v6)
      {
        while (v6 + 4 > result || result + v4 > (v6 + 2048))
        {
          v6 = atomic_load(v6);
          if (!v6)
          {
            goto LABEL_11;
          }
        }
      }

      else
      {
LABEL_11:
        v6 = atomic_load((a1 + 72));
        if (v6)
        {
          v8 = v6 + 4 > result;
        }

        else
        {
          v8 = 1;
        }

        if (v8 || result + v4 > (v6 + 2048))
        {
          caulk::alloc::base_allocator::bad_dealloc(result);
        }
      }

      if (v6 + 4 > result || result + v4 > (v6 + 2048))
      {
        caulk::alloc::base_allocator::bad_dealloc(result);
      }

      atomic_fetch_add((a1 + 68), 0xFFFFFFFF);
    }

    ++v2;
  }

  while (v2 != 10);
  v10 = *(a1 + 48);
  if (v10)
  {
    do
    {
      v11 = atomic_load(v10);
      result = caulk::alloc::details::caching_page_allocator_base::deallocate();
      v10 = v11;
    }

    while (v11);
  }

  return result;
}

void caulk::alloc::base_allocator::bad_dealloc(caulk::alloc::base_allocator *this)
{
  exception = __cxa_allocate_exception(0x10uLL);
  caulk::alloc::alloc_error::alloc_error(exception, v2);
}

std::runtime_error *caulk::alloc::alloc_error::alloc_error(std::runtime_error *this, const char *a2)
{
  result = std::runtime_error::runtime_error(this, "deallocate() called for unowned block");
  result->__vftable = &unk_284D377D8;
  return result;
}

void caulk::alloc::alloc_error::~alloc_error(std::runtime_error *this)
{
  std::runtime_error::~runtime_error(this);

  JUMPOUT(0x23EE864A0);
}

void *std::__function::__value_func<Phase::SpatialModeler::BaseModeler * ()(void)>::swap[abi:ne200100](void *result, void *a2)
{
  v5[3] = *MEMORY[0x277D85DE8];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
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

void sub_23A5035E8(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,Phase::Controller::SpatialModelerInfo>,void *>>>::operator()[abi:ne200100](char a1, uint64_t a2)
{
  if (a1)
  {
    v6 = (a2 + 272);
    std::vector<Phase::SpatialModeler::EntityShapeTemplate>::__destroy_vector::operator()[abi:ne200100](&v6);
    v3 = *(a2 + 264);
    *(a2 + 264) = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    std::__function::__value_func<Phase::SpatialModeler::BaseModeler * ()(void)>::~__value_func[abi:ne200100](a2 + 232);
    v4 = *(a2 + 120);
    if (v4)
    {
      *(a2 + 128) = v4;
      operator delete(v4);
    }

    v6 = (a2 + 96);
    std::vector<Phase::SpatialModeler::QueryDesc>::__destroy_vector::operator()[abi:ne200100](&v6);
    v5 = *(a2 + 72);
    if (v5)
    {
      *(a2 + 80) = v5;
      operator delete(v5);
    }

    if (*(a2 + 47) < 0)
    {
      operator delete(*(a2 + 24));
    }
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

void Phase::SpatialModeler::ReverbPresetDatabase::~ReverbPresetDatabase(Phase::SpatialModeler::ReverbPresetDatabase::Implementation **this)
{
  v2 = *this;
  *this = 0;
  if (v2)
  {
    Phase::SpatialModeler::ReverbPresetDatabase::Implementation::~Implementation(v2);
    MEMORY[0x23EE864A0]();
  }
}

uint64_t Phase::SpatialModeler::ReverbPresetDatabase::Implementation::AddPreset(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v84[53] = *MEMORY[0x277D85DE8];
  v6 = a3;
  if ((*(a3 + 23) & 0x80000000) == 0 || (v6 = *a3) != 0)
  {
    v7 = *v6;
    if (*v6)
    {
      v8 = (v6 + 1);
      v6 = 0xCBF29CE484222325;
      do
      {
        v6 = 0x100000001B3 * (v6 ^ v7);
        v9 = *v8++;
        v7 = v9;
      }

      while (v9);
    }

    else
    {
      v6 = 0;
    }
  }

  v33 = v6;
  v10 = (a1 + 992);
  v11 = std::__hash_table<std::__hash_value_type<unsigned long long,int>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,int>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,int>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,int>>>::find<unsigned long long>((a1 + 992), &v33);
  if (v11)
  {
    v12 = *(a1 + 1000);
    v13 = *v11;
    v14 = v11[1];
    v15 = vcnt_s8(v12);
    v15.i16[0] = vaddlv_u8(v15);
    if (v15.u32[0] > 1uLL)
    {
      if (v14 >= *&v12)
      {
        v14 %= *&v12;
      }
    }

    else
    {
      v14 &= *&v12 - 1;
    }

    v16 = *(*v10 + 8 * v14);
    do
    {
      v17 = v16;
      v16 = *v16;
    }

    while (v16 != v11);
    if (v17 == (a1 + 1008))
    {
      goto LABEL_26;
    }

    v18 = v17[1];
    if (v15.u32[0] > 1uLL)
    {
      if (v18 >= *&v12)
      {
        v18 %= *&v12;
      }
    }

    else
    {
      v18 &= *&v12 - 1;
    }

    if (v18 != v14)
    {
LABEL_26:
      if (v13)
      {
        v19 = *(v13 + 8);
        if (v15.u32[0] > 1uLL)
        {
          v20 = *(v13 + 8);
          if (v19 >= *&v12)
          {
            v20 = v19 % *&v12;
          }
        }

        else
        {
          v20 = v19 & (*&v12 - 1);
        }

        if (v20 == v14)
        {
          goto LABEL_30;
        }
      }

      *(*v10 + 8 * v14) = 0;
      v13 = *v11;
    }

    if (!v13)
    {
LABEL_36:
      *v17 = v13;
      *v11 = 0;
      --*(a1 + 1016);
      std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,Phase::SpatialModeler::ReverbPresetDatabase::Implementation::Entry>,void *>>>::operator()[abi:ne200100](1, v11);
      goto LABEL_37;
    }

    v19 = *(v13 + 8);
LABEL_30:
    if (v15.u32[0] > 1uLL)
    {
      if (v19 >= *&v12)
      {
        v19 %= *&v12;
      }
    }

    else
    {
      v19 &= *&v12 - 1;
    }

    if (v19 != v14)
    {
      *(*v10 + 8 * v19) = v17;
      v13 = *v11;
    }

    goto LABEL_36;
  }

LABEL_37:
  v32 = a2;
  bzero(&v38, 0x348uLL);
  v38 = 3;
  v39 = 1;
  v40 = 0;
  v41 = 0u;
  v43 = 0u;
  v44 = 0u;
  v42 = 0;
  v45 = 0;
  v46 = 0u;
  v47 = 0;
  v48 = 3;
  v49 = 1;
  v50 = 0u;
  v52 = 0u;
  v51 = 0;
  v53 = 0;
  v54 = 0u;
  v55 = 0u;
  v57 = 0;
  v56 = 0;
  v37 = &unk_284D37990;
  v59 = 3;
  v60 = 1;
  v62 = 0;
  v61 = 0u;
  v64 = 0;
  v63 = 0u;
  v65 = 0u;
  v66 = 0u;
  v67 = 0;
  v68 = 0;
  v69 = 3;
  v70 = 1;
  v72 = 0;
  v71 = 0u;
  v73 = 0u;
  v74 = 0;
  v75 = 0u;
  v76 = 0u;
  v78 = 0;
  v77 = 0;
  v79 = v33;
  __p = 0;
  v81 = 0;
  v82 = 0;
  v34 = 0;
  v35 = 0;
  v58 = &unk_284D379D0;
  v36 = 0;
  Phase::SpatialModeler::ReverbPresetDatabase::Implementation::Collection::Collection(v83, &v37);
  v83[0] = &unk_284D37990;
  Phase::SpatialModeler::ReverbPresetDatabase::Implementation::Collection::Collection(v84, &v58);
  v84[0] = &unk_284D379D0;
  v21 = *(a1 + 1000);
  if (!*&v21)
  {
    goto LABEL_54;
  }

  v22 = vcnt_s8(v21);
  v22.i16[0] = vaddlv_u8(v22);
  if (v22.u32[0] > 1uLL)
  {
    v23 = v79;
    if (*&v21 <= v79)
    {
      v23 = v79 % *&v21;
    }
  }

  else
  {
    v23 = (*&v21 - 1) & v79;
  }

  v24 = *(*v10 + 8 * v23);
  if (!v24 || (v25 = *v24) == 0)
  {
LABEL_54:
    operator new();
  }

  while (1)
  {
    v26 = v25[1];
    if (v26 == v79)
    {
      break;
    }

    if (v22.u32[0] > 1uLL)
    {
      if (v26 >= *&v21)
      {
        v26 %= *&v21;
      }
    }

    else
    {
      v26 &= *&v21 - 1;
    }

    if (v26 != v23)
    {
      goto LABEL_54;
    }

LABEL_53:
    v25 = *v25;
    if (!v25)
    {
      goto LABEL_54;
    }
  }

  if (v25[2] != v79)
  {
    goto LABEL_53;
  }

  Phase::SpatialModeler::ReverbPresetDatabase::Implementation::Collection::~Collection(v84);
  Phase::SpatialModeler::ReverbPresetDatabase::Implementation::Collection::~Collection(v83);
  if (SHIBYTE(v82) < 0)
  {
    operator delete(__p);
  }

  Phase::SpatialModeler::ReverbPresetDatabase::Implementation::Collection::~Collection(&v58);
  Phase::SpatialModeler::ReverbPresetDatabase::Implementation::Collection::~Collection(&v37);
  if (SHIBYTE(v36) < 0)
  {
    operator delete(v34);
  }

  v27 = std::__hash_table<std::__hash_value_type<unsigned long long,int>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,int>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,int>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,int>>>::find<unsigned long long>((a1 + 992), &v33);
  v28 = v27;
  if (!v27)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  std::string::operator=(v27 + 1, a3);
  v29 = *a1;
  Phase::SpatialModeler::ReverbPresetDatabase::Implementation::Collection::Load(&v28[2], v32 + 3, v32[9], (a1 + 8), a3, &Phase::SpatialModeler::ReverbPresetDatabase::Implementation::EarlyReflectionsCollection::sName, v29);
  v30 = *a1;
  return Phase::SpatialModeler::ReverbPresetDatabase::Implementation::Collection::Load(&v28[19].__r_.__value_.__r.__words[2], v32 + 6, v32[9], (a1 + 8), a3, &Phase::SpatialModeler::ReverbPresetDatabase::Implementation::LateReflectionsCollection::sName, v30);
}

void sub_23A504728(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,Phase::SpatialModeler::ReverbPresetDatabase::Implementation::Entry>,void *>>>::operator()[abi:ne200100](1, v6);
  std::pair<unsigned long long const,Phase::SpatialModeler::ReverbPresetDatabase::Implementation::Entry>::~pair(&STACK[0x390]);
  Phase::SpatialModeler::ReverbPresetDatabase::Implementation::Entry::~Entry(va);
  _Unwind_Resume(a1);
}

void *Phase::SpatialModeler::ReverbPresetDatabase::Implementation::Query@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v13 = a2;
  result = std::__hash_table<std::__hash_value_type<unsigned long long,int>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,int>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,int>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,int>>>::find<unsigned long long>((a1 + 992), &v13);
  if (!result)
  {
    goto LABEL_5;
  }

  if (a3 == 1)
  {
    v12 = (result + 59);
    return Phase::SpatialModeler::ReverbPresetDatabase::Implementation::Collection::Query(v12, a4, (a1 + 8), a5, a6, *a1);
  }

  if (a3)
  {
LABEL_5:
    *a5 = 3;
    *(a5 + 4) = 1;
    *(a5 + 8) = 0;
    *(a5 + 204) = 0;
    *(a5 + 48) = 0;
    *(a5 + 56) = 0;
    *(a5 + 40) = 0;
    *(a5 + 96) = 0;
    *(a5 + 104) = 0;
    *(a5 + 88) = 0;
    *(a5 + 136) = 0;
    *(a5 + 144) = 0;
    *(a5 + 184) = 0;
    *(a5 + 192) = 0;
    *(a5 + 176) = 0;
    *(a5 + 200) = 0;
    return result;
  }

  v12 = (result + 6);
  return Phase::SpatialModeler::ReverbPresetDatabase::Implementation::Collection::Query(v12, a4, (a1 + 8), a5, a6, *a1);
}

uint64_t Phase::SpatialModeler::ReverbPresetDatabase::Implementation::Collection::Load(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, float a7)
{
  v89[5] = *MEMORY[0x277D85DE8];
  if (a3 != 3 && a3 != 10)
  {
    __assert_rtn("Load", "SpatialModelerReverbPresetDatabase.cpp", 334, "inSubbandCount == 3 || inSubbandCount == 10");
  }

  v13 = a2[1];
  v57 = *a2;
  v14 = 0xAAAAAAAAAAAAAAABLL * ((v13 - *a2) >> 3);
  v84 = v14;
  v82 = 4;
  v86 = a4;
  v87[0] = &v84;
  v87[1] = &v82;
  v80 = a4;
  Phase::details::AllocArray<Phase::Vector<float,3ul>,std::unique_ptr<Phase::Vector<float,3ul> [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::Vector<float,3ul>,Phase::HeapAllocator>(Phase::HeapAllocator &,unsigned long,unsigned long)::{lambda(void)#1} const&,std::unique_ptr<Phase::Vector<float,3ul> [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::Vector<float,3ul>,Phase::HeapAllocator>(Phase::HeapAllocator &,unsigned long,unsigned long)::{lambda(Phase::Vector<float,3ul>*)#1} const&>(v14, &v86, &v80, buf);
  v15 = *buf;
  *buf = 0;
  v88 = v15;
  std::__function::__value_func<void ()(void *)>::__value_func[abi:ne200100](v89, &buf[8]);
  v89[4] = v14;
  std::unique_ptr<Phase::Vector<float,3ul> [],std::function<void ()(void *)>>::reset[abi:ne200100](buf);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](&buf[8]);
  v82 = v14;
  v80 = 4;
  v84 = a4;
  v85[0] = &v82;
  v85[1] = &v80;
  v60 = a4;
  Phase::details::AllocArray<float,std::unique_ptr<float [],std::function<void ()(void *)>> Phase::details::AllocArray<float,Phase::HeapAllocator>(Phase::HeapAllocator &,unsigned long,unsigned long)::{lambda(void)#1} const&,std::unique_ptr<float [],std::function<void ()(void *)>> Phase::details::AllocArray<float,Phase::HeapAllocator>(Phase::HeapAllocator &,unsigned long,unsigned long)::{lambda(float*)#1} const&>(v14, &v84, &v60, buf);
  v16 = *buf;
  *buf = 0;
  v86 = v16;
  std::__function::__value_func<void ()(void *)>::__value_func[abi:ne200100](v87, &buf[8]);
  v87[4] = v14;
  std::unique_ptr<float [],std::function<void ()(void *)>>::reset[abi:ne200100](buf);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](&buf[8]);
  v80 = v14;
  v59 = a4;
  v60 = 1;
  v82 = a4;
  v83[0] = &v80;
  v83[1] = &v60;
  Phase::details::AllocArray<BOOL,std::unique_ptr<BOOL [],std::function<void ()(void *)>> Phase::details::AllocArray<BOOL,Phase::HeapAllocator>(Phase::HeapAllocator &,unsigned long,unsigned long)::{lambda(void)#1} const&,std::unique_ptr<BOOL [],std::function<void ()(void *)>> Phase::details::AllocArray<BOOL,Phase::HeapAllocator>(Phase::HeapAllocator &,unsigned long,unsigned long)::{lambda(BOOL*)#1} const&>(v14, &v82, &v59, buf);
  v55 = a4;
  v17 = *buf;
  *buf = 0;
  v84 = v17;
  std::__function::__value_func<void ()(void *)>::__value_func[abi:ne200100](v85, &buf[8]);
  v56 = v14;
  v85[4] = v14;
  std::unique_ptr<BOOL [],std::function<void ()(void *)>>::reset[abi:ne200100](buf);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](&buf[8]);
  v53 = (**a1)(a1);
  v54 = v13;
  if (v13 != v57)
  {
    v18 = 0;
    if (v56 <= 1)
    {
      v19 = 1;
    }

    else
    {
      v19 = v56;
    }

    do
    {
      v20 = (*(*a1 + 8))(buf, a1, *(*a2 + 24 * v18), *(*a2 + 24 * v18 + 4));
      v21 = (v88 + 12 * v18);
      *v21 = *buf;
      v21[1] = *&buf[4];
      v21[2] = *&buf[8];
      v22 = *a2 + 24 * v18;
      *(v86 + 4 * v18) = *(v22 + 8);
      v23 = *(v22 + 16);
      v24 = &v23[a3];
      v25 = 4 * a3;
      v26 = v23;
      while (*v26 >= 0.0)
      {
        ++v26;
        v25 -= 4;
        if (!v25)
        {
          v26 = &v23[a3];
          break;
        }
      }

      v27 = 4 * a3;
      while (*v23 <= 0.0)
      {
        ++v23;
        v27 -= 4;
        if (!v27)
        {
          if (v26 != v24)
          {
            LOBYTE(v28) = 1;
            goto LABEL_23;
          }

          goto LABEL_17;
        }
      }

      v29 = v26 == v24;
      v28 = v27 == 0;
      if ((v29 ^ v28))
      {
        goto LABEL_23;
      }

LABEL_17:
      v30 = **(Phase::Logger::GetInstance(v20) + 576);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
      {
        if (*(a5 + 23) >= 0)
        {
          v31 = a5;
        }

        else
        {
          v31 = *a5;
        }

        v32 = *a6;
        *buf = 136316162;
        *&buf[4] = "SpatialModelerReverbPresetDatabase.cpp";
        v62 = 1024;
        v63 = 151;
        v64 = 2080;
        v65 = v31;
        v66 = 2080;
        v67 = v32;
        v68 = 2048;
        v69 = v18;
        _os_log_impl(&dword_23A302000, v30, OS_LOG_TYPE_DEBUG, "%25s:%-5d Invalid mix of positive and negative subband gains: %s (%s[%zu])", buf, 0x30u);
      }

      LOBYTE(v28) = 0;
LABEL_23:
      *(v84 + v18++) = v28;
    }

    while (v18 != v19);
  }

  Phase::AllocPackedSubbandArray<float,Phase::HeapAllocator>(a4, v56, 3, &v82);
  Phase::AllocPackedSubbandArray<float,Phase::HeapAllocator>(a4, v56, 10, &v80);
  if (a3 == 10)
  {
    if (v54 != v57)
    {
      v42 = 0;
      v43 = 0;
      if (v56 <= 1)
      {
        v44 = 1;
      }

      else
      {
        v44 = v56;
      }

      do
      {
        v45 = 0;
        v46 = *(v80 + 8);
        v47 = (v80 + 16 + 4 * v46 * v43);
        v48 = *(*a2 + 24 * v43 + 16);
        v49 = (v80 + 16 + v46 * v42);
        do
        {
          v50 = *(v48 + v45);
          if (v50 < 0.0)
          {
            v50 = -v50;
          }

          *&v49[v45] = v50;
          v45 += 4;
        }

        while (v45 != 40);
        Phase::GetValuesFromFrequencyResponse<float const*,float *,float const*,float *,&float Phase::Square<float>,&float Phase::SquareRoot<float>>(Phase::sOctaveBandFrequencies, Phase::sThreeBandFrequencies, v47, Phase::sThreeBandFrequencies, &qword_23A597FE0, v82 + 4 * *(v82 + 8) * v43++ + 16);
        v42 += 4;
      }

      while (v43 != v44);
    }
  }

  else if (a3 == 3 && v54 != v57)
  {
    v33 = 0;
    v34 = 0;
    if (v56 <= 1)
    {
      v35 = 1;
    }

    else
    {
      v35 = v56;
    }

    do
    {
      v36 = 0;
      v37 = *(v82 + 8);
      v38 = (v82 + 16 + 4 * v37 * v34);
      v39 = *(*a2 + 24 * v34 + 16);
      v40 = (v82 + 16 + v37 * v33);
      do
      {
        v41 = *(v39 + v36);
        if (v41 < 0.0)
        {
          v41 = -v41;
        }

        *&v40[v36] = v41;
        v36 += 4;
      }

      while (v36 != 12);
      Phase::GetValuesFromFrequencyResponse<float const*,float *,float const*,float *,&float Phase::Square<float>,&float Phase::SquareRoot<float>>(Phase::sThreeBandFrequencies, &qword_23A597FE0, v38, Phase::sOctaveBandFrequencies, Phase::sThreeBandFrequencies, v80 + 4 * *(v80 + 8) * v34++ + 16);
      v33 += 4;
    }

    while (v34 != v35);
  }

  v51 = a7;
  Phase::SpatialModeler::sGenerateReflections(buf, &v88, &v86, &v82, &v84, 1, v53, v55, v51, v51);
  *(a1 + 8) = *buf;
  *(a1 + 12) = buf[4];
  std::unique_ptr<Phase::Vector<float,3ul> [],std::function<void ()(void *)>>::operator=[abi:ne200100]((a1 + 16), &buf[8]);
  *(a1 + 56) = v70;
  std::unique_ptr<float [],std::function<void ()(void *)>>::operator=[abi:ne200100]((a1 + 64), &v71);
  *(a1 + 104) = v73;
  std::unique_ptr<Phase::PackedSubbandArray<float>,std::function<void ()(void *)>>::operator=[abi:ne200100]((a1 + 112), &v74);
  std::unique_ptr<BOOL [],std::function<void ()(void *)>>::operator=[abi:ne200100]((a1 + 152), &v76);
  *(a1 + 192) = v78;
  *(a1 + 200) = v79;
  std::unique_ptr<BOOL [],std::function<void ()(void *)>>::reset[abi:ne200100](&v76);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](v77);
  std::unique_ptr<Phase::PackedSubbandArray<float>,std::function<void ()(void *)>>::reset[abi:ne200100](&v74, 0);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](v75);
  std::unique_ptr<float [],std::function<void ()(void *)>>::reset[abi:ne200100](&v71);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](v72);
  std::unique_ptr<Phase::Vector<float,3ul> [],std::function<void ()(void *)>>::reset[abi:ne200100](&buf[8]);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](&v63 + 2);
  Phase::SpatialModeler::sGenerateReflections(buf, &v88, &v86, &v80, &v84, 1, v53, v55, v51, v51);
  *(a1 + 216) = *buf;
  *(a1 + 220) = buf[4];
  std::unique_ptr<Phase::Vector<float,3ul> [],std::function<void ()(void *)>>::operator=[abi:ne200100]((a1 + 224), &buf[8]);
  *(a1 + 264) = v70;
  std::unique_ptr<float [],std::function<void ()(void *)>>::operator=[abi:ne200100]((a1 + 272), &v71);
  *(a1 + 312) = v73;
  std::unique_ptr<Phase::PackedSubbandArray<float>,std::function<void ()(void *)>>::operator=[abi:ne200100]((a1 + 320), &v74);
  std::unique_ptr<BOOL [],std::function<void ()(void *)>>::operator=[abi:ne200100]((a1 + 360), &v76);
  *(a1 + 400) = v78;
  *(a1 + 408) = v79;
  std::unique_ptr<BOOL [],std::function<void ()(void *)>>::reset[abi:ne200100](&v76);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](v77);
  std::unique_ptr<Phase::PackedSubbandArray<float>,std::function<void ()(void *)>>::reset[abi:ne200100](&v74, 0);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](v75);
  std::unique_ptr<float [],std::function<void ()(void *)>>::reset[abi:ne200100](&v71);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](v72);
  std::unique_ptr<Phase::Vector<float,3ul> [],std::function<void ()(void *)>>::reset[abi:ne200100](&buf[8]);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](&v63 + 2);
  std::unique_ptr<Phase::PackedSubbandArray<float>,std::function<void ()(void *)>>::reset[abi:ne200100](&v80, 0);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](&v81);
  std::unique_ptr<Phase::PackedSubbandArray<float>,std::function<void ()(void *)>>::reset[abi:ne200100](&v82, 0);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](v83);
  std::unique_ptr<BOOL [],std::function<void ()(void *)>>::reset[abi:ne200100](&v84);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](v85);
  std::unique_ptr<float [],std::function<void ()(void *)>>::reset[abi:ne200100](&v86);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](v87);
  std::unique_ptr<Phase::Vector<float,3ul> [],std::function<void ()(void *)>>::reset[abi:ne200100](&v88);
  return std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](v89);
}

void sub_23A505060(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53)
{
  std::unique_ptr<Phase::PackedSubbandArray<float>,std::function<void ()(void *)>>::reset[abi:ne200100](&a47, 0);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](&a48);
  std::unique_ptr<Phase::PackedSubbandArray<float>,std::function<void ()(void *)>>::reset[abi:ne200100](&a52, 0);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](&a53);
  std::unique_ptr<BOOL [],std::function<void ()(void *)>>::reset[abi:ne200100]((v53 - 256));
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](v53 - 248);
  std::unique_ptr<float [],std::function<void ()(void *)>>::reset[abi:ne200100]((v53 - 208));
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](v53 - 200);
  std::unique_ptr<Phase::Vector<float,3ul> [],std::function<void ()(void *)>>::reset[abi:ne200100]((v53 - 160));
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](v53 - 152);
  _Unwind_Resume(a1);
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,Phase::SpatialModeler::ReverbPresetDatabase::Implementation::Entry>,void *>>>::operator()[abi:ne200100](char a1, uint64_t a2)
{
  if (a1)
  {
    Phase::SpatialModeler::ReverbPresetDatabase::Implementation::Collection::~Collection((a2 + 472));
    Phase::SpatialModeler::ReverbPresetDatabase::Implementation::Collection::~Collection((a2 + 48));
    if (*(a2 + 47) < 0)
    {
      operator delete(*(a2 + 24));
    }
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

uint64_t Phase::SpatialModeler::ReverbPresetDatabase::Implementation::Collection::Collection(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_284D379B0;
  *(a1 + 8) = *(a2 + 8);
  v4 = *(a2 + 16);
  *(a2 + 16) = 0;
  *(a1 + 16) = v4;
  std::__function::__value_func<void ()(void *)>::__value_func[abi:ne200100](a1 + 24, a2 + 24);
  v5 = *(a2 + 56);
  v6 = *(a2 + 64);
  *(a2 + 64) = 0;
  *(a1 + 56) = v5;
  *(a1 + 64) = v6;
  std::__function::__value_func<void ()(void *)>::__value_func[abi:ne200100](a1 + 72, a2 + 72);
  v7 = *(a2 + 104);
  v8 = *(a2 + 112);
  *(a2 + 112) = 0;
  *(a1 + 104) = v7;
  *(a1 + 112) = v8;
  std::__function::__value_func<void ()(void *)>::__value_func[abi:ne200100](a1 + 120, a2 + 120);
  v9 = *(a2 + 152);
  *(a2 + 152) = 0;
  *(a1 + 152) = v9;
  std::__function::__value_func<void ()(void *)>::__value_func[abi:ne200100](a1 + 160, a2 + 160);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 216) = *(a2 + 216);
  v10 = *(a2 + 224);
  *(a2 + 224) = 0;
  *(a1 + 224) = v10;
  std::__function::__value_func<void ()(void *)>::__value_func[abi:ne200100](a1 + 232, a2 + 232);
  v11 = *(a2 + 264);
  v12 = *(a2 + 272);
  *(a2 + 272) = 0;
  *(a1 + 264) = v11;
  *(a1 + 272) = v12;
  std::__function::__value_func<void ()(void *)>::__value_func[abi:ne200100](a1 + 280, a2 + 280);
  v13 = *(a2 + 312);
  v14 = *(a2 + 320);
  *(a2 + 320) = 0;
  *(a1 + 312) = v13;
  *(a1 + 320) = v14;
  std::__function::__value_func<void ()(void *)>::__value_func[abi:ne200100](a1 + 328, a2 + 328);
  v15 = *(a2 + 360);
  *(a2 + 360) = 0;
  *(a1 + 360) = v15;
  std::__function::__value_func<void ()(void *)>::__value_func[abi:ne200100](a1 + 368, a2 + 368);
  *(a1 + 400) = *(a2 + 400);
  *(a1 + 408) = *(a2 + 408);
  return a1;
}

float Phase::SpatialModeler::ReverbPresetDatabase::Implementation::EarlyReflectionsCollection::GetDirectionFromAngles@<S0>(float a1@<S0>, float a2@<S1>, float *a3@<X8>)
{
  v6 = (a2 + -180.0) - (floorf((a2 + -180.0) / 360.0) * 360.0);
  if (v6 >= 360.0)
  {
    v7 = nextafterf(360.0, 0.0);
  }

  else
  {
    v7 = v6 + 0.0;
  }

  v8 = (90.0 - a1) * 0.017453;
  v9 = v7 * 0.017453;
  v10 = __sincosf_stret(v8);
  v11 = __sincosf_stret(v9);
  result = v10.__sinval * v11.__sinval;
  *a3 = v10.__sinval * v11.__sinval;
  a3[1] = v10.__cosval;
  a3[2] = v10.__sinval * v11.__cosval;
  return result;
}

void Phase::SpatialModeler::ReverbPresetDatabase::Implementation::LateReflectionsCollection::GetDirectionFromAngles(float a1@<S0>, float a2@<S1>, uint64_t a3@<X8>)
{
  v6 = (360.0 - a2) - (floorf((360.0 - a2) / 360.0) * 360.0);
  if (v6 >= 360.0)
  {
    v7 = nextafterf(360.0, 0.0);
  }

  else
  {
    v7 = v6 + 0.0;
  }

  *a3 = 1065353216;
  *(a3 + 4) = 90.0 - a1;
  *(a3 + 8) = v7;
}

void Phase::SpatialModeler::ReverbPresetDatabase::Implementation::Collection::~Collection(Phase::SpatialModeler::ReverbPresetDatabase::Implementation::Collection *this)
{
  *this = &unk_284D379B0;
  v2 = this + 24;
  std::unique_ptr<BOOL [],std::function<void ()(void *)>>::reset[abi:ne200100](this + 45);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](this + 368);
  std::unique_ptr<Phase::PackedSubbandArray<float>,std::function<void ()(void *)>>::reset[abi:ne200100](this + 40, 0);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](this + 328);
  std::unique_ptr<float [],std::function<void ()(void *)>>::reset[abi:ne200100](this + 34);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](this + 280);
  std::unique_ptr<Phase::Vector<float,3ul> [],std::function<void ()(void *)>>::reset[abi:ne200100](this + 28);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](this + 232);
  std::unique_ptr<BOOL [],std::function<void ()(void *)>>::reset[abi:ne200100](this + 19);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](this + 160);
  std::unique_ptr<Phase::PackedSubbandArray<float>,std::function<void ()(void *)>>::reset[abi:ne200100](this + 14, 0);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](this + 120);
  std::unique_ptr<float [],std::function<void ()(void *)>>::reset[abi:ne200100](this + 8);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](this + 72);
  std::unique_ptr<Phase::Vector<float,3ul> [],std::function<void ()(void *)>>::reset[abi:ne200100](this + 2);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](v2);
}

uint64_t std::pair<unsigned long long const,Phase::SpatialModeler::ReverbPresetDatabase::Implementation::Entry>::~pair(uint64_t a1)
{
  Phase::SpatialModeler::ReverbPresetDatabase::Implementation::Collection::~Collection((a1 + 456));
  Phase::SpatialModeler::ReverbPresetDatabase::Implementation::Collection::~Collection((a1 + 32));
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void Phase::SpatialModeler::ReverbPresetDatabase::Implementation::Entry::~Entry(void **this)
{
  Phase::SpatialModeler::ReverbPresetDatabase::Implementation::Collection::~Collection((this + 56));
  Phase::SpatialModeler::ReverbPresetDatabase::Implementation::Collection::~Collection((this + 3));
  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

uint64_t Phase::SpatialModeler::sGenerateReflections(uint64_t result, uint64_t *a2, uint64_t *a3, uint64_t **a4, uint64_t *a5, char a6, int a7, Phase *a8, double a9, double a10)
{
  v17 = result;
  if (a9 >= a10)
  {
    v18 = a9;
  }

  else
  {
    v18 = a10;
  }

  v20 = **a4;
  v19 = (*a4)[1];
  if (v20)
  {
    v21 = 0;
    v22 = 0;
    v23 = (*a4 + 2);
    do
    {
      v24 = (*a4)[1];
      v25 = v23;
      if (v19)
      {
        while (v18 >= *v25)
        {
          ++v25;
          if (!--v24)
          {
            goto LABEL_11;
          }
        }

        ++v22;
      }

LABEL_11:
      ++v21;
      v23 += 4 * v19;
    }

    while (v21 != v20);
  }

  else
  {
    v22 = 0;
  }

  *result = 3;
  *(result + 4) = 1;
  *(result + 8) = 0;
  *(result + 204) = 0;
  *(result + 48) = 0;
  *(result + 56) = 0;
  *(result + 40) = 0;
  *(result + 96) = 0;
  *(result + 104) = 0;
  *(result + 88) = 0;
  *(result + 136) = 0;
  *(result + 144) = 0;
  *(result + 184) = 0;
  *(result + 192) = 0;
  *(result + 176) = 0;
  *(result + 200) = 0;
  if (v22 > 0)
  {
    result = Phase::SpatialModeler::AllocMetadata<float,Phase::HeapAllocator>(result, a8, v22, v19);
    if (v20)
    {
      v26 = 0;
      v27 = 0;
      v28 = (*a4 + 2);
      v29 = *a2;
      v30 = *(v17 + 8);
      v31 = *a3;
      v32 = *(v17 + 56);
      v33 = *(v17 + 104);
      v34 = *a5;
      result = *(v17 + 144);
      v35 = 4 * (*a4)[1];
      do
      {
        if (v19)
        {
          v36 = 0;
          while (v18 >= *(v28 + 4 * v36))
          {
            if (v19 == ++v36)
            {
              goto LABEL_27;
            }
          }

          v37 = 0;
          v38 = (v29 + 12 * v26);
          v39 = (v30 + 12 * v27);
          *v39 = *v38;
          v39[1] = v38[1];
          v39[2] = v38[2];
          *(v32 + 4 * v27) = *(v31 + 4 * v26);
          v40 = v33 + 16 + 4 * *(v33 + 8) * v27;
          do
          {
            v41 = *(v28 + 4 * v37);
            if (v41 <= a10)
            {
              v41 = a10;
            }

            *(v40 + 4 * v37++) = v41;
          }

          while (v19 != v37);
          *(result + v27++) = *(v34 + v26);
        }

LABEL_27:
        ++v26;
        v28 += v35;
      }

      while (v26 != v20);
    }

    else
    {
      v27 = 0;
    }

    if (v22 != v27)
    {
      __assert_rtn("sGenerateReflections", "SpatialModelerReverbPresetDatabase.cpp", 118, "outputReflectionCount == outIdx");
    }

    *(v17 + 201) = a6;
    *(v17 + 204) = a7;
  }

  return result;
}

void Phase::GetValuesFromFrequencyResponse<float const*,float *,float const*,float *,&float Phase::Square<float>,&float Phase::SquareRoot<float>>(float *a1, float *a2, uint64_t a3, float *a4, float *a5, uint64_t a6)
{
  v9 = a2 - a1;
  if (a2 != a1)
  {
    for (i = a1 + 1; i != a2; ++i)
    {
      v12 = *(i - 1);
      v11 = *i;
      if (v11 < v12)
      {
        __assert_rtn("GetValuesFromFrequencyResponse", "FrequencyResponse.hpp", 262, "std::is_sorted(inFrequenciesFirst, inFrequenciesLast)");
      }
    }
  }

  if (a4 != a5)
  {
    for (j = a4 + 1; j != a5; ++j)
    {
      v15 = *(j - 1);
      v14 = *j;
      if (v14 < v15)
      {
        __assert_rtn("GetValuesFromFrequencyResponse", "FrequencyResponse.hpp", 263, "std::is_sorted(inOutputFrequenciesFirst, inOutputFrequenciesLast)");
      }
    }
  }

  Phase::GetBandsFromCenterFrequencies<float const*,float>(a1, a2, v87, 22000.0);
  Phase::GetBandsFromCenterFrequencies<float const*,float>(a4, a5, v86, 22000.0);
  __src = 0;
  v84 = 0;
  v85 = 0;
  __p = 0;
  v81 = 0;
  v82 = 0;
  v77 = 0;
  v78 = 0;
  v79 = 0;
  v75 = a5 - a4;
  if (v75 > 0)
  {
    v16 = 0;
    v17 = 0;
    v18 = 0;
    for (k = 0; k != v75; ++k)
    {
      v20 = (v86[0] + 8 * k);
      v21 = *v20;
      v22 = v20[1];
      v84 = __src;
      v81 = v17;
      v78 = v16;
      if (v18 < v9 >> 2)
      {
        v23 = (v87[0] + 8 * v18);
        v24 = *v23;
        v25 = v23[1];
        if (v22 < v25)
        {
          v25 = v22;
        }

        if (v24 >= v21)
        {
          v26 = *v23;
        }

        else
        {
          v26 = v21;
        }

        v27 = fmaxf(v25 - v26, 0.0);
        if (v27 == 0.0)
        {
          v28 = v22;
LABEL_51:
          v18 -= v24 != v28;
        }

        else
        {
          v29 = 8 * v18;
          while (1)
          {
            v30 = v84;
            if (v84 >= v85)
            {
              v32 = __src;
              v33 = v84 - __src;
              v34 = (v84 - __src) >> 2;
              v35 = v34 + 1;
              if ((v34 + 1) >> 62)
              {
                std::vector<float>::__throw_length_error[abi:ne200100]();
              }

              v36 = v85 - __src;
              if ((v85 - __src) >> 1 > v35)
              {
                v35 = v36 >> 1;
              }

              if (v36 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v37 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v37 = v35;
              }

              if (v37)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(&__src, v37);
              }

              *(4 * v34) = v27;
              v31 = 4 * v34 + 4;
              memcpy(0, v32, v33);
              v38 = __src;
              __src = 0;
              v84 = v31;
              v85 = 0;
              if (v38)
              {
                operator delete(v38);
              }
            }

            else
            {
              *v84 = v27;
              v31 = (v30 + 1);
            }

            v84 = v31;
            v39 = v81;
            if (v81 >= v82)
            {
              v40 = __p;
              v41 = v81 - __p;
              v42 = (v81 - __p) >> 3;
              v43 = v42 + 1;
              if ((v42 + 1) >> 61)
              {
                std::vector<Phase::Controller::DVM23::SubmixController *>::__throw_length_error[abi:ne200100]();
              }

              v44 = v82 - __p;
              if ((v82 - __p) >> 2 > v43)
              {
                v43 = v44 >> 2;
              }

              v45 = v44 >= 0x7FFFFFFFFFFFFFF8;
              v46 = 0x1FFFFFFFFFFFFFFFLL;
              if (!v45)
              {
                v46 = v43;
              }

              if (v46)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(&__p, v46);
              }

              v47 = (8 * v42);
              v48 = &v47[-((v81 - __p) >> 3)];
              *v47 = v18;
              v17 = v47 + 1;
              memcpy(v48, v40, v41);
              v49 = __p;
              __p = v48;
              v81 = v17;
              v82 = 0;
              if (v49)
              {
                operator delete(v49);
              }
            }

            else
            {
              *v81 = v18;
              v17 = v39 + 1;
            }

            v81 = v17;
            if ((v9 >> 2) - 1 == v18)
            {
              break;
            }

            v24 = *(v87[0] + v29 + 8);
            v50 = *(v87[0] + v29 + 12);
            v51 = (v86[0] + 8 * k);
            v52 = *v51;
            v28 = v51[1];
            if (v28 < v50)
            {
              v50 = v51[1];
            }

            if (v24 >= v52)
            {
              v52 = *(v87[0] + v29 + 8);
            }

            v27 = fmaxf(v50 - v52, 0.0);
            v29 += 8;
            ++v18;
            if (v27 == 0.0)
            {
              goto LABEL_51;
            }
          }
        }
      }

      v53 = v17;
      v17 = __p;
      v54 = 0.0;
      v55 = v78;
      if (v53 == __p)
      {
        v58 = 0.0;
      }

      else
      {
        v56 = 0;
        v57 = v22 - v21;
        v58 = 0.0;
        do
        {
          v59 = *(__src + v56) / v57;
          v60 = *(a3 + 4 * v17[v56]);
          v61 = v59 * (v60 * v60);
          if (v55 >= v79)
          {
            v62 = v77;
            v63 = v55 - v77;
            v64 = (v55 - v77) >> 2;
            v65 = v64 + 1;
            if ((v64 + 1) >> 62)
            {
              std::vector<float>::__throw_length_error[abi:ne200100]();
            }

            v66 = v79 - v77;
            if ((v79 - v77) >> 1 > v65)
            {
              v65 = v66 >> 1;
            }

            if (v66 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v67 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v67 = v65;
            }

            if (v67)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(&v77, v67);
            }

            v68 = (v55 - v77) >> 2;
            v69 = (4 * v64);
            v70 = (4 * v64 - 4 * v68);
            *v69 = v61;
            v55 = v69 + 1;
            memcpy(v70, v62, v63);
            v71 = v77;
            v77 = v70;
            v78 = v55;
            v79 = 0;
            if (v71)
            {
              operator delete(v71);
            }
          }

          else
          {
            *v55++ = v61;
          }

          v58 = v58 + v59;
          v78 = v55;
          ++v56;
          v17 = __p;
        }

        while (v56 < (v81 - __p) >> 3);
      }

      v16 = v77;
      if (v77 != v55)
      {
        v72 = 0.0;
        v73 = v77;
        do
        {
          v74 = *v73++;
          v72 = v72 + v74;
        }

        while (v73 != v55);
        v54 = v72;
      }

      *(a6 + 4 * k) = sqrtf(v54 / v58);
    }

    if (v16)
    {
      v78 = v16;
      operator delete(v16);
      v17 = __p;
    }

    if (v17)
    {
      v81 = v17;
      operator delete(v17);
    }
  }

  if (__src)
  {
    v84 = __src;
    operator delete(__src);
  }

  if (v86[0])
  {
    v86[1] = v86[0];
    operator delete(v86[0]);
  }

  if (v87[0])
  {
    v87[1] = v87[0];
    operator delete(v87[0]);
  }
}