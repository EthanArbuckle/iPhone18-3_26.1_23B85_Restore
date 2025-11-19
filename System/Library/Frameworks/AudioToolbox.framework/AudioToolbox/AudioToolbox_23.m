void ___ZN35AUSpatialMixerV2OrientationObserver16registerObserverEP28OpaqueAudioComponentInstancejRKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEE_block_invoke(uint64_t a1, int a2)
{
  v15 = *MEMORY[0x1E69E9840];
  inData = a2;
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = std::__shared_weak_count::lock(v3);
    if (v4)
    {
      v5 = v4;
      v6 = *(a1 + 32);
      if (v6 && std::mutex::try_lock((v6 + 80)))
      {
        v7 = atomic_load((v6 + 72));
        if (v7)
        {
          if (getAUSMV2Log(void)::onceToken != -1)
          {
            dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
          }

          v8 = getAUSMV2Log(void)::gLog;
          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
          {
            v9 = (v6 + 40);
            if (*(v6 + 63) < 0)
            {
              v9 = *v9;
            }

            *buf = 67109378;
            v12 = inData;
            v13 = 2080;
            v14 = v9;
            _os_log_debug_impl(&dword_1DDB85000, v8, OS_LOG_TYPE_DEBUG, "Setting orientation %u on %s", buf, 0x12u);
          }

          AudioUnitSetProperty(*(v6 + 24), *(v6 + 32), 0, 0, &inData, 4u);
        }

        std::mutex::unlock((v6 + 80));
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }
}

void sub_1DDD0967C(_Unwind_Exception *a1)
{
  std::mutex::unlock((v2 + 80));
  std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

void __destroy_helper_block_ea8_32c60_ZTSNSt3__18weak_ptrI35AUSpatialMixerV2OrientationObserverEE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t __copy_helper_block_ea8_32c60_ZTSNSt3__18weak_ptrI35AUSpatialMixerV2OrientationObserverEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__shared_ptr_emplace<AUSpatialMixerV2OrientationObserver>::__on_zero_shared(uint64_t a1)
{
  AUSpatialMixerV2OrientationObserver::unregister((a1 + 24));
  std::mutex::~mutex((a1 + 104));
  v2 = *(a1 + 88);
  if (v2)
  {
    CFRelease(v2);
  }

  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  v3 = *(a1 + 32);
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

void std::__shared_ptr_emplace<AUSpatialMixerV2OrientationObserver>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5920278;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12BD160);
}

void AUSpatialMixerV2::~AUSpatialMixerV2(AUSpatialMixerV2 *this)
{
  AUSpatialMixerV2::~AUSpatialMixerV2(this);

  JUMPOUT(0x1E12BD160);
}

{
  v36 = *MEMORY[0x1E69E9840];
  *this = &unk_1F591FF38;
  *(this + 66) = &unk_1F59201A8;
  atomic_store(1u, this + 3008);
  __dmb(0xBu);
  v2 = *(this + 374);
  v3 = applesauce::CF::StringRef::get_ns(v2);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___ZN16AUSpatialMixerV2D2Ev_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = this;
  dispatch_sync(v3, block);

  std::__lock_first<caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>,caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>,std::shared_mutex>(0, this + 3456, this + 3472, (this + 3504));
  if (getAUSMV2Log(void)::onceToken != -1)
  {
    dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
  }

  v4 = getAUSMV2Log(void)::gLog;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = (this + 3752);
    if (*(this + 3775) < 0)
    {
      v5 = *v5;
    }

    *buf = 136315394;
    *&buf[4] = v5;
    v34 = 2080;
    v35 = "~AUSpatialMixerV2";
    _os_log_impl(&dword_1DDB85000, v4, OS_LOG_TYPE_DEFAULT, "[%s|%s] Instance is being destructed.", buf, 0x16u);
  }

  caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(this + 3456);
  caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(this + 3472);
  std::__shared_mutex_base::unlock((this + 3504));
  *buf = this + 13048;
  std::vector<PPUtils::SphericalCoordinateTree::sphericalCoordinateBranch>::__destroy_vector::operator()[abi:ne200100](buf);
  *buf = this + 13024;
  std::vector<PPUtils::SphericalCoordinateTree::sphericalCoordinateBranch>::__destroy_vector::operator()[abi:ne200100](buf);
  v6 = (this + 12816);
  v7 = -3072;
  do
  {
    if (*(v6 + 184) == 1)
    {
      IR::IRProcessor::~IRProcessor(v6);
    }

    v6 = (v6 - 192);
    v7 += 192;
  }

  while (v7);
  std::unique_ptr<ParametricFilters>::reset[abi:ne200100](this + 1240, 0);
  std::unique_ptr<ParametricFilters>::reset[abi:ne200100](this + 1239, 0);
  std::unique_ptr<ParametricFilters>::reset[abi:ne200100](this + 1238, 0);
  MEMORY[0x1E12BC320](this + 9864);
  std::unique_ptr<AUSpatialMixerV2DynamicXTCFilter>::reset[abi:ne200100](this + 1232, 0);
  if (*(this + 9847) < 0)
  {
    operator delete(*(this + 1228));
  }

  AUSM::SoundStage::~SoundStage((this + 9312));
  AUSM::SoundStage::~SoundStage((this + 8720));
  AUSM::IRManager::~IRManager((this + 7088));
  std::unique_ptr<AUSM::RoomCongruence::Processor>::reset[abi:ne200100](this + 885, 0);
  std::__hash_table<std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>>>::~__hash_table(this + 7040);
  std::mutex::~mutex(this + 109);
  std::__hash_table<std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>>>::~__hash_table(this + 6936);
  if (*(this + 6927) < 0)
  {
    operator delete(*(this + 863));
  }

  AUSM::GlobalProperties::~GlobalProperties((this + 3744));
  *buf = this + 3712;
  std::vector<std::unique_ptr<AUSM::AUFXWrapper>>::__destroy_vector::operator()[abi:ne200100](buf);
  v8 = *(this + 460);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  std::condition_variable::~condition_variable((this + 3616));
  std::condition_variable::~condition_variable((this + 3568));
  std::mutex::~mutex((this + 3504));
  std::__tree<std::__value_type<VADPostProcessing::SmoothingTypes,__CFString const*>,std::__map_value_compare<VADPostProcessing::SmoothingTypes,std::__value_type<VADPostProcessing::SmoothingTypes,__CFString const*>,std::less<VADPostProcessing::SmoothingTypes>,true>,std::allocator<std::__value_type<VADPostProcessing::SmoothingTypes,__CFString const*>>>::destroy(*(this + 428));
  v9 = *(this + 426);
  if (v9)
  {
    CFRelease(v9);
  }

  v10 = *(this + 425);
  if (v10)
  {
    CFRelease(v10);
  }

  v11 = *(this + 423);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  std::unique_ptr<TorqueEngine>::reset[abi:ne200100](this + 420, 0);
  v12 = *(this + 410);
  if (v12)
  {
    *(this + 411) = v12;
    operator delete(v12);
  }

  v13 = *(this + 407);
  if (v13)
  {
    *(this + 408) = v13;
    operator delete(v13);
  }

  v14 = *(this + 404);
  if (v14)
  {
    *(this + 405) = v14;
    operator delete(v14);
  }

  v15 = *(this + 400);
  if (v15)
  {
    *(this + 401) = v15;
    operator delete(v15);
  }

  v16 = *(this + 397);
  if (v16)
  {
    *(this + 398) = v16;
    operator delete(v16);
  }

  v17 = *(this + 394);
  if (v17)
  {
    *(this + 395) = v17;
    operator delete(v17);
  }

  v18 = *(this + 390);
  if (v18)
  {
    *(this + 391) = v18;
    operator delete(v18);
  }

  v19 = *(this + 387);
  if (v19)
  {
    *(this + 388) = v19;
    operator delete(v19);
  }

  v20 = *(this + 384);
  if (v20)
  {
    *(this + 385) = v20;
    operator delete(v20);
  }

  std::unique_ptr<AUSM::SharedBuffers>::reset[abi:ne200100](this + 383, 0);
  std::unique_ptr<AUSM::SharedBuffers>::reset[abi:ne200100](this + 382, 0);
  std::unique_ptr<AUSM::SharedBuffers>::reset[abi:ne200100](this + 381, 0);
  v21 = *(this + 378);
  if (v21)
  {
    *(this + 379) = v21;
    operator delete(v21);
  }

  v22 = *(this + 375);
  *(this + 375) = 0;

  v23 = *(this + 374);
  *(this + 374) = 0;

  v24 = *(this + 367);
  if (v24)
  {
    *(this + 368) = v24;
    operator delete(v24);
  }

  v25 = *(this + 360);
  if (v25)
  {
    *(this + 361) = v25;
    operator delete(v25);
  }

  v26 = *(this + 354);
  if (v26)
  {
    *(this + 355) = v26;
    operator delete(v26);
  }

  v27 = *(this + 348);
  if (v27)
  {
    *(this + 349) = v27;
    operator delete(v27);
  }

  *buf = this + 2752;
  std::vector<PPUtils::SphericalCoordinateTree::sphericalCoordinateBranch>::__destroy_vector::operator()[abi:ne200100](buf);
  IR::SharedIRBuses::~SharedIRBuses((this + 2480));
  AUSM::ReverbManager::~ReverbManager((this + 2104));
  v28 = *(this + 256);
  if (v28)
  {
    *(this + 257) = v28;
    operator delete(v28);
  }

  std::unique_ptr<IR::IRProcessor>::reset[abi:ne200100](this + 253, 0);
  v29 = *(this + 247);
  if (v29)
  {
    *(this + 248) = v29;
    operator delete(v29);
  }

  v30 = 1152;
  do
  {
    v31 = *(this + v30 + 728);
    if (v31)
    {
      *(this + v30 + 736) = v31;
      operator delete(v31);
    }

    v30 -= 72;
  }

  while (v30);
  AUScopeDynamic::~AUScopeDynamic(this + 69);
  std::unique_ptr<AUSM::Metadata>::reset[abi:ne200100](this + 68, 0);
  ausdk::AUBase::~AUBase(this);
}

void sub_1DDD09D20(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void ___ZN16AUSpatialMixerV2D2Ev_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  if (getAUSMV2Log(void)::onceToken != -1)
  {
    dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
  }

  v2 = getAUSMV2Log(void)::gLog;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = (v1 + 3752);
    if (*(v1 + 3775) < 0)
    {
      v3 = *v3;
    }

    v4 = 136315394;
    v5 = v3;
    v6 = 2080;
    v7 = "~AUSpatialMixerV2_block_invoke";
    _os_log_impl(&dword_1DDB85000, v2, OS_LOG_TYPE_DEFAULT, "[%s|%s] Dispatch queue cleared", &v4, 0x16u);
  }
}

uint64_t std::__lock_first<caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>,caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>,std::shared_mutex>(int a1, uint64_t a2, uint64_t a3, std::__shared_mutex_base *this)
{
  while (a1 != 1)
  {
    if (a1)
    {
      v11 = a1 - 2;
      while (v11 == 1)
      {
        caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::lock(a2);
        result = std::try_lock[abi:ne200100]<caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>,std::shared_mutex>(a3, this);
        v13 = result;
        if (result == -1)
        {
          return result;
        }

        caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(a2);
        if (v13 == 1)
        {
          v11 = 0;
        }

        else
        {
          v11 = v13 + 2;
        }

LABEL_19:
        sched_yield();
      }

      if (!v11)
      {
        std::__shared_mutex_base::lock(this);
        result = std::try_lock[abi:ne200100]<caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>,caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>>(a2, a3);
        if (result == -1)
        {
          return result;
        }

        v12 = result;
        std::__shared_mutex_base::unlock(this);
        v11 = v12 + 1;
        goto LABEL_19;
      }

      v14 = v11 - 2;
      while (v14 == 1)
      {
        std::__shared_mutex_base::lock(this);
        result = std::try_lock[abi:ne200100]<caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>,caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>>(a2, a3);
        if (result == -1)
        {
          return result;
        }

        v16 = result;
        std::__shared_mutex_base::unlock(this);
        if (v16 == 1)
        {
          v14 = 0;
        }

        else
        {
          v14 = v16 + 2;
        }

LABEL_29:
        sched_yield();
      }

      if (!v14)
      {
        caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::lock(a3);
        result = std::try_lock[abi:ne200100]<std::shared_mutex,caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>>(this, a2);
        v15 = result;
        if (result == -1)
        {
          return result;
        }

        caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(a3);
        v14 = v15 + 1;
        goto LABEL_29;
      }

      a1 = v14 - 2;
    }

    else
    {
      caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::lock(a2);
      result = std::try_lock[abi:ne200100]<caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>,std::shared_mutex>(a3, this);
      v9 = result;
      if (result == -1)
      {
        return result;
      }

      caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(a2);
      a1 = v9 + 1;
LABEL_9:
      sched_yield();
    }
  }

  caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::lock(a3);
  result = std::try_lock[abi:ne200100]<std::shared_mutex,caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>>(this, a2);
  v10 = result;
  if (result != -1)
  {
    caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(a3);
    if (v10 == 1)
    {
      a1 = 0;
    }

    else
    {
      a1 = v10 + 2;
    }

    goto LABEL_9;
  }

  return result;
}

void AUSM::IRManager::~IRManager(AUSM::IRManager *this)
{
  std::mutex::~mutex((this + 1560));
  v2 = *(this + 192);
  if (v2)
  {
    *(this + 193) = v2;
    operator delete(v2);
  }

  IR::IRDataAttributes::~IRDataAttributes((this + 1368));
  IR::IRDataAttributes::~IRDataAttributes((this + 1200));
  IR::IRDataAttributes::~IRDataAttributes((this + 1032));
  IR::IRDataAttributes::~IRDataAttributes((this + 864));
  IR::IRDataAttributes::~IRDataAttributes((this + 696));
  IR::IRDataAttributes::~IRDataAttributes((this + 528));
  if (*(this + 520) == 1)
  {
    IR::IRDataAttributes::~IRDataAttributes((this + 368));
  }

  IR::IRDataAttributes::~IRDataAttributes((this + 216));
  IR::IRDataAttributes::~IRDataAttributes((this + 64));
  v3 = *(this + 5);
  if (v3)
  {
    *(this + 6) = v3;
    operator delete(v3);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

uint64_t *std::unique_ptr<AUSM::RoomCongruence::Processor>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    if (*(v2 + 496) == 1)
    {
      AUSM::RoomCongruence::ProcessingResult::~ProcessingResult((v2 + 312));
    }

    AUSM::RoomCongruence::RoomConfiguration::~RoomConfiguration((v2 + 168));
    v3 = *(v2 + 104);
    if (v3)
    {
      *(v2 + 112) = v3;
      operator delete(v3);
    }

    std::__hash_table<std::__hash_value_type<IR::IRPreset,AUSM::RoomCongruence::UserData>,std::__unordered_map_hasher<IR::IRPreset,std::__hash_value_type<IR::IRPreset,AUSM::RoomCongruence::UserData>,std::hash<IR::IRPreset>,std::equal_to<IR::IRPreset>,true>,std::__unordered_map_equal<IR::IRPreset,std::__hash_value_type<IR::IRPreset,AUSM::RoomCongruence::UserData>,std::equal_to<IR::IRPreset>,std::hash<IR::IRPreset>,true>,std::allocator<std::__hash_value_type<IR::IRPreset,AUSM::RoomCongruence::UserData>>>::~__hash_table(v2 + 64);
    v4 = *(v2 + 40);
    if (v4)
    {
      *(v2 + 48) = v4;
      operator delete(v4);
    }

    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    JUMPOUT(0x1E12BD160);
  }

  return result;
}

void AUSM::GlobalProperties::~GlobalProperties(AUSM::GlobalProperties *this)
{
  *this = &unk_1F59299B0;
  if (*(this + 3111) < 0)
  {
    operator delete(*(this + 386));
  }

  std::mutex::~mutex((this + 2976));
  v2 = *(this + 371);
  if (v2)
  {
    CFRelease(v2);
  }

  std::mutex::~mutex((this + 2872));
  v3 = *(this + 358);
  if (v3)
  {
    CFRelease(v3);
  }

  std::mutex::~mutex((this + 2736));
  v4 = *(this + 341);
  if (v4)
  {
    CFRelease(v4);
  }

  std::mutex::~mutex((this + 2632));
  v5 = *(this + 328);
  if (v5)
  {
    CFRelease(v5);
  }

  std::mutex::~mutex(this + 38);
  v6 = *(this + 303);
  if (v6)
  {
    CFRelease(v6);
  }

  std::mutex::~mutex((this + 2352));
  v7 = *(this + 293);
  if (v7)
  {
    CFRelease(v7);
  }

  std::mutex::~mutex((this + 2280));
  v8 = *(this + 284);
  if (v8)
  {
    CFRelease(v8);
  }

  std::mutex::~mutex((this + 2208));
  v9 = *(this + 275);
  if (v9)
  {
    CFRelease(v9);
  }

  std::mutex::~mutex((this + 2136));
  v10 = *(this + 266);
  if (v10)
  {
    CFRelease(v10);
  }

  std::mutex::~mutex((this + 2064));
  v11 = *(this + 257);
  if (v11)
  {
    CFRelease(v11);
  }

  std::mutex::~mutex((this + 1992));
  v12 = *(this + 248);
  if (v12)
  {
    CFRelease(v12);
  }

  std::mutex::~mutex(this + 30);
  v13 = *(this + 239);
  if (v13)
  {
    CFRelease(v13);
  }

  std::mutex::~mutex((this + 1848));
  v14 = *(this + 230);
  if (v14)
  {
    CFRelease(v14);
  }

  std::mutex::~mutex((this + 1776));
  v15 = *(this + 221);
  if (v15)
  {
    CFRelease(v15);
  }

  std::mutex::~mutex((this + 1704));
  v16 = *(this + 212);
  if (v16)
  {
    CFRelease(v16);
  }

  v17 = *(this + 209);
  if (v17)
  {
    *(this + 210) = v17;
    operator delete(v17);
  }

  std::mutex::~mutex((this + 1576));
  v18 = *(this + 196);
  if (v18)
  {
    CFRelease(v18);
  }

  std::mutex::~mutex((this + 1504));
  v19 = *(this + 187);
  if (v19)
  {
    CFRelease(v19);
  }

  std::mutex::~mutex((this + 1424));
  v20 = *(this + 177);
  if (v20)
  {
    CFRelease(v20);
  }

  std::mutex::~mutex(this + 21);
  v21 = *(this + 167);
  if (v21)
  {
    CFRelease(v21);
  }

  std::mutex::~mutex((this + 1264));
  v22 = *(this + 157);
  if (v22)
  {
    CFRelease(v22);
  }

  std::mutex::~mutex((this + 1192));
  v23 = *(this + 148);
  if (v23)
  {
    CFRelease(v23);
  }

  std::mutex::~mutex((this + 1120));
  v24 = *(this + 139);
  if (v24)
  {
    CFRelease(v24);
  }

  std::mutex::~mutex((this + 1048));
  v25 = *(this + 130);
  if (v25)
  {
    CFRelease(v25);
  }

  std::mutex::~mutex((this + 976));
  v26 = *(this + 121);
  if (v26)
  {
    CFRelease(v26);
  }

  std::mutex::~mutex((this + 904));
  v27 = *(this + 112);
  if (v27)
  {
    CFRelease(v27);
  }

  std::mutex::~mutex(this + 13);
  v28 = *(this + 103);
  if (v28)
  {
    CFRelease(v28);
  }

  std::mutex::~mutex((this + 760));
  v29 = *(this + 94);
  if (v29)
  {
    CFRelease(v29);
  }

  std::mutex::~mutex((this + 688));
  v30 = *(this + 85);
  if (v30)
  {
    CFRelease(v30);
  }

  std::mutex::~mutex((this + 616));
  v31 = *(this + 76);
  if (v31)
  {
    CFRelease(v31);
  }

  std::mutex::~mutex((this + 544));
  v32 = *(this + 67);
  if (v32)
  {
    CFRelease(v32);
  }

  std::mutex::~mutex((this + 472));
  v33 = *(this + 58);
  if (v33)
  {
    CFRelease(v33);
  }

  std::mutex::~mutex((this + 400));
  v34 = *(this + 49);
  if (v34)
  {
    CFRelease(v34);
  }

  std::mutex::~mutex((this + 328));
  v35 = *(this + 40);
  if (v35)
  {
    CFRelease(v35);
  }

  std::mutex::~mutex(this + 4);
  v36 = *(this + 31);
  if (v36)
  {
    CFRelease(v36);
  }

  std::mutex::~mutex((this + 184));
  v37 = *(this + 22);
  if (v37)
  {
    CFRelease(v37);
  }

  *this = &unk_1F59311D0;
  std::__tree<std::__value_type<unsigned int,std::unique_ptr<AUSM::PropertyDescriptor>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::unique_ptr<AUSM::PropertyDescriptor>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::unique_ptr<AUSM::PropertyDescriptor>>>>::destroy(*(this + 6));
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

void IR::SharedIRBuses::~SharedIRBuses(IR::SharedIRBuses *this)
{
  v6 = (this + 216);
  std::vector<std::shared_ptr<IR::SharedIRBuses::IRBus>>::__destroy_vector::operator()[abi:ne200100](&v6);
  v6 = (this + 192);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v6);
  v6 = (this + 168);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v6);
  v2 = *(this + 20);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 15);
  if (v3)
  {
    *(this + 16) = v3;
    operator delete(v3);
  }

  v6 = (this + 96);
  std::vector<std::shared_ptr<IR::SharedIRBuses::IRBus>>::__destroy_vector::operator()[abi:ne200100](&v6);
  v4 = *(this + 9);
  if (v4)
  {
    *(this + 10) = v4;
    operator delete(v4);
  }

  v6 = (this + 48);
  std::vector<std::shared_ptr<IR::SharedIRBuses::IRBus>>::__destroy_vector::operator()[abi:ne200100](&v6);
  v5 = *(this + 3);
  if (v5)
  {
    *(this + 4) = v5;
    operator delete(v5);
  }

  v6 = this;
  std::vector<std::shared_ptr<IR::SharedIRBuses::IRBus>>::__destroy_vector::operator()[abi:ne200100](&v6);
}

void AUSM::ReverbManager::~ReverbManager(AUSM::ReverbManager *this)
{
  std::__tree<std::__value_type<VADPostProcessing::SmoothingTypes,__CFString const*>,std::__map_value_compare<VADPostProcessing::SmoothingTypes,std::__value_type<VADPostProcessing::SmoothingTypes,__CFString const*>,std::less<VADPostProcessing::SmoothingTypes>,true>,std::allocator<std::__value_type<VADPostProcessing::SmoothingTypes,__CFString const*>>>::destroy(*(this + 36));
  v6 = (this + 240);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v6);
  std::unique_ptr<IR::IRProcessor>::reset[abi:ne200100](this + 29, 0);
  std::unique_ptr<IR::IRProcessor>::reset[abi:ne200100](this + 28, 0);
  std::unique_ptr<IR::IRProcessor>::reset[abi:ne200100](this + 27, 0);
  v2 = *(this + 26);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 24);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  std::__tree<std::__value_type<VADPostProcessing::SmoothingTypes,__CFString const*>,std::__map_value_compare<VADPostProcessing::SmoothingTypes,std::__value_type<VADPostProcessing::SmoothingTypes,__CFString const*>,std::less<VADPostProcessing::SmoothingTypes>,true>,std::allocator<std::__value_type<VADPostProcessing::SmoothingTypes,__CFString const*>>>::destroy(*(this + 13));
  v6 = (this + 56);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v6);
  std::unique_ptr<IR::IRProcessor>::reset[abi:ne200100](this + 6, 0);
  std::unique_ptr<IR::IRProcessor>::reset[abi:ne200100](this + 5, 0);
  std::unique_ptr<IR::IRProcessor>::reset[abi:ne200100](this + 4, 0);
  v4 = *(this + 3);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = *(this + 1);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

uint64_t *std::unique_ptr<AUSM::Metadata>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *(v2 + 248);
    if (v3)
    {
      *(v2 + 256) = v3;
      operator delete(v3);
    }

    if (*(v2 + 223) < 0)
    {
      operator delete(*(v2 + 200));
    }

    v4 = *(v2 + 176);
    if (v4)
    {
      *(v2 + 184) = v4;
      operator delete(v4);
    }

    if (*(v2 + 151) < 0)
    {
      operator delete(*(v2 + 128));
    }

    if (*(v2 + 127) < 0)
    {
      operator delete(*(v2 + 104));
    }

    std::unique_ptr<AUSM::InputABLBuffer>::reset[abi:ne200100]((v2 + 88), 0);
    v5 = *(v2 + 56);
    if (v5)
    {
      *(v2 + 64) = v5;
      operator delete(v5);
    }

    v7 = (v2 + 32);
    std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v7);
    std::unique_ptr<APAC::Metadata>::reset[abi:ne200100]((v2 + 24), 0);
    std::unique_ptr<AUSM::Metadata::PImpl>::reset[abi:ne200100]((v2 + 16), 0);
    v6 = *(v2 + 8);
    *(v2 + 8) = 0;
    if (v6)
    {
      MEMORY[0x1E12BD160](v6, 0xC400A2AC0F1);
    }

    JUMPOUT(0x1E12BD160);
  }

  return result;
}

void std::vector<std::shared_ptr<IR::SharedIRBuses::IRBus>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::shared_ptr<IR::SharedIRBuses::IRBus>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::shared_ptr<IR::SharedIRBuses::IRBus>>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 16)
  {
    v4 = *(i - 8);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }

  a1[1] = v2;
}

uint64_t std::try_lock[abi:ne200100]<caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>,std::shared_mutex>(uint64_t a1, std::__shared_mutex_base *a2)
{
  result = caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::try_lock(a1);
  if (result)
  {
    if (std::__shared_mutex_base::try_lock(a2))
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(a1);
      return 1;
    }
  }

  return result;
}

uint64_t std::try_lock[abi:ne200100]<std::shared_mutex,caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>>(std::__shared_mutex_base *a1, uint64_t a2)
{
  result = std::__shared_mutex_base::try_lock(a1);
  if (result)
  {
    if (caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::try_lock(a2))
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      std::__shared_mutex_base::unlock(a1);
      return 1;
    }
  }

  return result;
}

void AUSpatialMixerV2::AUSpatialMixerV2(AUSpatialMixerV2 *this, OpaqueAudioComponentInstance *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = ausdk::AUBase::AUBase(this, a2, 32, 1);
  *v3 = &unk_1F591FF38;
  *(v3 + 66) = &unk_1F59201A8;
  *(v3 + 536) = 0;
  *(v3 + 540) = 0;
  *(v3 + 68) = 0;
  *(v3 + 70) = 0;
  *(v3 + 142) = 0;
  *(v3 + 69) = &unk_1F593AAB8;
  *(v3 + 72) = 0;
  *(v3 + 73) = &unk_1F593AEB0;
  *(v3 + 74) = "AUScopeDynamic NRT lock";
  *(v3 + 75) = 0;
  v4 = pthread_mutex_init((v3 + 608), 0);
  if (!v4)
  {
    *(this + 69) = &unk_1F5939A28;
    *(this + 84) = this;
    *(this + 680) = 0;
    *(this + 86) = 0x3CA3D70A3BA3D70ALL;
    *(this + 87) = 0x3FD99999A0000000;
    *(this + 88) = 0x3FD3333340000000;
    __asm { FMOV            V8.2S, #1.0 }

    *(this + 89) = _D8;
    *(this + 99) = 0;
    *(this + 744) = 0u;
    *(this + 760) = 0u;
    *(this + 776) = 0u;
    for (i = 800; i != 1952; i += 72)
    {
      v11 = this + i;
      *(v11 + 6) = 0;
      *(v11 + 1) = 0uLL;
      *(v11 + 2) = 0uLL;
      *v11 = 0uLL;
    }

    *(this + 180) = 1065353216;
    *(this + 1952) = 1;
    *(this + 245) = 0x3FD999999999999ALL;
    caulk::pooled_semaphore_mutex::pooled_semaphore_mutex((this + 1968));
    *(this + 249) = 0;
    *(this + 1976) = 0u;
    *(this + 2000) = 1;
    *(this + 251) = 0;
    *(this + 504) = -1;
    *(this + 2020) = 0;
    *(this + 2028) = 0u;
    caulk::pooled_semaphore_mutex::pooled_semaphore_mutex((this + 2044));
    *(this + 258) = 0;
    *(this + 128) = 0u;
    *(this + 2072) = 1;
    *(this + 260) = 0;
    *(this + 261) = 0xFFFFFFFFLL;
    *(this + 2096) = 0;
    *__p = 0;
    *&__p[8] = 0;
    buf[0] = 1;
    *&buf[4] = 0;
    LOWORD(v19) = 0;
    IR::DynamicIRProcessor::DynamicIRProcessor(this + 2104, __p, buf, 0, 0);
    *buf = 0;
    v19 = 0;
    LOBYTE(cf[0]) = 1;
    HIDWORD(cf[0]) = 0;
    LOWORD(cf[1]) = 0;
    v12 = IR::DynamicIRProcessor::DynamicIRProcessor(this + 2288, buf, cf, 0, 0);
    *(this + 2472) = 0;
    *(this + 619) = 0;
    AUSM::Messenger::instance(v12);
    AUSM::Messenger::get(v15);
    *(this + 2623) = 0;
    *(this + 162) = 0u;
    *(this + 163) = 0u;
    *(this + 160) = 0u;
    *(this + 161) = 0u;
    *(this + 158) = 0u;
    *(this + 159) = 0u;
    *(this + 156) = 0u;
    *(this + 157) = 0u;
    *(this + 155) = 0u;
    caulk::pooled_semaphore_mutex::pooled_semaphore_mutex((this + 2628));
    v13 = v15[1];
    *(this + 329) = v15[0];
    *(this + 330) = v13;
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      *(this + 2709) = 0u;
      *(this + 2680) = 0u;
      *(this + 2696) = 0u;
      *(this + 2648) = 0u;
      *(this + 2664) = 0u;
      *(this + 2725) = 1;
      *(this + 2728) = 0u;
      *(this + 343) = 0x10000000000;
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    }

    else
    {
      *(this + 2709) = 0u;
      *(this + 2680) = 0u;
      *(this + 2696) = 0u;
      *(this + 2648) = 0u;
      *(this + 2664) = 0u;
      *(this + 2725) = 1;
      *(this + 343) = 0x10000000000;
      *(this + 2728) = 0u;
    }

    *(this + 346) = 0;
    *(this + 172) = 0u;
    caulk::pooled_semaphore_mutex::pooled_semaphore_mutex((this + 2776));
    *(this + 350) = 0;
    *(this + 174) = 0u;
    *(this + 2808) = 1;
    *(this + 352) = 0;
    *(this + 706) = -1;
    *(this + 713) = 0;
    *(this + 2828) = 0;
    *(this + 2836) = 0u;
    *(this + 2856) = 1;
    *(this + 358) = 0;
    *(this + 718) = -1;
    *(this + 725) = 0;
    *(this + 2876) = 0;
    *(this + 2884) = 0u;
    *(this + 2904) = 1;
    *(this + 364) = 0;
    *(this + 365) = 0xFFFFFFFFLL;
    *(this + 1464) = 0;
    *(this + 369) = 0;
    *(this + 2936) = 0u;
    *(this + 2960) = 1;
    *(this + 371) = 0;
    *(this + 372) = 0xFFFFFFFFLL;
    *(this + 2984) = 1;
    *(this + 187) = 0u;
    *(this + 1504) = 1;
    *(this + 3012) = 0x8000000080;
    *(this + 189) = 0u;
    *(this + 190) = 0u;
    *(this + 191) = 0u;
    *(this + 192) = 0u;
    *(this + 386) = 0;
    __p[0] = 0;
    std::vector<char>::vector[abi:ne200100](this + 387, 8);
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *__p = 136315394;
    *&__p[4] = "CAMutex.cpp";
    *&__p[12] = 1024;
    *&__p[14] = 56;
    _os_log_impl(&dword_1DDB85000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  CAMutex::CAMutex: Could not init the mutex", __p, 0x12u);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  *exception = &unk_1F593B0D8;
  exception[2] = v4;
}

void sub_1DDD0DA48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12, const void **a13, AUSM::ABLBuffer *a14, AUSM::ABLBuffer *a15, AUSM::ABLBuffer *a16, void **a17, IR::SharedIRBuses *a18, void **a19, uint64_t a20, ElementVector ***a21, AUSM::GlobalProperties *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, void *__p, uint64_t a54, int a55, __int16 a56, char a57, char a58)
{
  AUSpatialMixerV2::AlignmentDelay::~AlignmentDelay(a19);
  v64 = (v58 + 12816);
  v65 = -3072;
  while (1)
  {
    if (*(v64 + 184) == 1)
    {
      IR::IRProcessor::~IRProcessor(v64);
    }

    v64 = (v64 - 192);
    v65 += 192;
    if (!v65)
    {
      std::unique_ptr<ParametricFilters>::reset[abi:ne200100]((v58 + 9920), 0);
      std::unique_ptr<ParametricFilters>::reset[abi:ne200100]((v58 + 9912), 0);
      std::unique_ptr<ParametricFilters>::reset[abi:ne200100]((v58 + 9904), 0);
      MEMORY[0x1E12BC320](v58 + 9864);
      std::unique_ptr<AUSpatialMixerV2DynamicXTCFilter>::reset[abi:ne200100]((v58 + 9856), 0);
      if (*(a24 + 2728) < 0)
      {
        operator delete(*v61);
      }

      AUSM::SoundStage::~SoundStage((v58 + 9312));
      AUSM::SoundStage::~SoundStage((v58 + 8720));
      AUSM::IRManager::~IRManager((v58 + 7088));
      std::unique_ptr<AUSM::RoomCongruence::Processor>::reset[abi:ne200100]((v58 + 7080), 0);
      AUSM::TuningManager::~TuningManager((v58 + 6896));
      AUSM::GlobalProperties::~GlobalProperties(a22);
      *(v62 - 160) = v58 + 3712;
      std::vector<std::unique_ptr<AUSM::AUFXWrapper>>::__destroy_vector::operator()[abi:ne200100]((v62 - 160));
      v66 = *(v58 + 3680);
      if (v66)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v66);
      }

      std::shared_mutex::~shared_mutex[abi:ne200100](v58 + 3504);
      std::__tree<std::__value_type<VADPostProcessing::SmoothingTypes,__CFString const*>,std::__map_value_compare<VADPostProcessing::SmoothingTypes,std::__value_type<VADPostProcessing::SmoothingTypes,__CFString const*>,std::less<VADPostProcessing::SmoothingTypes>,true>,std::allocator<std::__value_type<VADPostProcessing::SmoothingTypes,__CFString const*>>>::destroy(*(v58 + 3424));
      applesauce::CF::DictionaryRef::~DictionaryRef((v58 + 3408));
      applesauce::CF::DictionaryRef::~DictionaryRef(a13);
      v67 = *(v58 + 3384);
      if (v67)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v67);
      }

      std::unique_ptr<TorqueEngine>::reset[abi:ne200100]((v58 + 3360), 0);
      AUSM::ABLBuffer::~ABLBuffer(a14);
      AUSM::ABLBuffer::~ABLBuffer(a15);
      AUSM::ABLBuffer::~ABLBuffer(a16);
      std::unique_ptr<AUSM::SharedBuffers>::reset[abi:ne200100]((v58 + 3064), 0);
      std::unique_ptr<AUSM::SharedBuffers>::reset[abi:ne200100]((v58 + 3056), 0);
      std::unique_ptr<AUSM::SharedBuffers>::reset[abi:ne200100]((v58 + 3048), 0);
      v68 = *v60;
      if (*v60)
      {
        *(v58 + 3032) = v68;
        operator delete(v68);
      }

      applesauce::dispatch::v1::queue::~queue((v58 + 3000));
      applesauce::dispatch::v1::queue::~queue((v58 + 2992));
      v69 = *a17;
      if (*a17)
      {
        *(v58 + 2944) = v69;
        operator delete(v69);
      }

      v70 = *(v58 + 2880);
      if (v70)
      {
        *(v58 + 2888) = v70;
        operator delete(v70);
      }

      v71 = (v58 + 2784);
      v72 = *(v58 + 2832);
      if (v72)
      {
        *(v58 + 2840) = v72;
        operator delete(v72);
      }

      v73 = *v71;
      if (*v71)
      {
        *(v58 + 2792) = v73;
        operator delete(v73);
      }

      *(v62 - 160) = v58 + 2752;
      std::vector<PPUtils::SphericalCoordinateTree::sphericalCoordinateBranch>::__destroy_vector::operator()[abi:ne200100]((v62 - 160));
      IR::SharedIRBuses::~SharedIRBuses(a18);
      AUSM::ReverbManager::~ReverbManager((v58 + 2104));
      v74 = *(v58 + 2048);
      if (v74)
      {
        *(v58 + 2056) = v74;
        operator delete(v74);
      }

      std::unique_ptr<IR::IRProcessor>::reset[abi:ne200100]((v58 + 2024), 0);
      v75 = *a12;
      if (*a12)
      {
        *(v58 + 1984) = v75;
        operator delete(v75);
      }

      v76 = (v58 + 1888);
      v77 = -1152;
      while (1)
      {
        v78 = *(v76 - 1);
        if (v78)
        {
          *v76 = v78;
          operator delete(v78);
        }

        v76 -= 9;
        v77 += 72;
        if (!v77)
        {
          AUScopeDynamic::~AUScopeDynamic(a21);
          std::unique_ptr<AUSM::Metadata>::reset[abi:ne200100]((v58 + 544), 0);
          ausdk::AUBase::~AUBase(v58);
          _Unwind_Resume(a1);
        }
      }
    }
  }
}

void *std::vector<AudioUnitParameterEvent>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 5)
  {
    std::allocator<AudioUnitParameterEvent>::allocate_at_least[abi:ne200100](a2);
  }

  return result;
}

void AUSpatialMixerV2::AlignmentDelay::~AlignmentDelay(void **this)
{
  v2 = this + 3;
  std::vector<PPUtils::SphericalCoordinateTree::sphericalCoordinateBranch>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = this;
  std::vector<PPUtils::SphericalCoordinateTree::sphericalCoordinateBranch>::__destroy_vector::operator()[abi:ne200100](&v2);
}

void AUSM::TuningManager::~TuningManager(AUSM::TuningManager *this)
{
  std::__hash_table<std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>>>::~__hash_table(this + 144);
  std::mutex::~mutex((this + 80));
  std::__hash_table<std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>>>::~__hash_table(this + 40);
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

void std::shared_mutex::~shared_mutex[abi:ne200100](uint64_t a1)
{
  std::condition_variable::~condition_variable((a1 + 112));
  std::condition_variable::~condition_variable((a1 + 64));

  std::mutex::~mutex(a1);
}

void applesauce::dispatch::v1::queue::~queue(id *this)
{
  v2 = *this;
  *this = 0;
}

unint64_t AUSM::UserDefaults::getValue<(AUSM::UserDefaults::Feature)10>(uint64_t *a1)
{
  v21 = *MEMORY[0x1E69E9840];
  if (getAUSMV2Log(void)::onceToken != -1)
  {
    dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
  }

  v2 = getAUSMV2Log(void)::gLog;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v12 = a1;
    if (*(a1 + 23) < 0)
    {
      v12 = *a1;
    }

    *buf = 136315650;
    v14 = v12;
    v15 = 2080;
    v16 = "getValue";
    v17 = 2080;
    v18 = "ausm_capture_input";
    _os_log_debug_impl(&dword_1DDB85000, v2, OS_LOG_TYPE_DEBUG, "[%s|%s] Looking for user defaults %s", buf, 0x20u);
  }

  v3 = CFPreferencesCopyAppValue(@"ausm_capture_input", @"com.apple.coreaudio");
  v5 = v3;
  if (v3)
  {
    v6 = AUSM::UserDefaults::CFTypeToUInt32(v3, v4);
    v7 = v6;
    v8 = HIDWORD(v6);
    if ((v6 & 0x100000000) != 0)
    {
      if (getAUSMV2Log(void)::onceToken != -1)
      {
        dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
      }

      v9 = getAUSMV2Log(void)::gLog;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        if (*(a1 + 23) < 0)
        {
          a1 = *a1;
        }

        *buf = 136315906;
        v14 = a1;
        v15 = 2080;
        v16 = "getValue";
        v17 = 2080;
        v18 = "ausm_capture_input";
        v19 = 1024;
        v20 = v7;
        _os_log_impl(&dword_1DDB85000, v9, OS_LOG_TYPE_DEFAULT, "[%s|%s] Found user defaults %s = %u", buf, 0x26u);
      }
    }

    CFRelease(v5);
    v10 = v7 & 0xFFFFFF00;
  }

  else
  {
    v10 = 0;
    LOBYTE(v8) = 0;
    LOBYTE(v7) = 0;
  }

  return v10 & 0xFFFFFF00FFFFFFFFLL | v7 | (v8 << 32);
}

void sub_1DDD0E704(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AUSpatialMixerV2::SetAPACProperty(std::mutex *this, uint64_t a2, uint64_t a3, uint64_t a4, const void *a5, uint64_t a6)
{
  v33 = *MEMORY[0x1E69E9840];
  if (!a3 && this[108].__m_.__opaque[12] == 1)
  {
    std::mutex::lock(this + 109);
    v12 = *&this[108].__m_.__opaque[24];
    if (v12)
    {
      v13 = vcnt_s8(v12);
      v13.i16[0] = vaddlv_u8(v13);
      if (v13.u32[0] > 1uLL)
      {
        v14 = a2;
        if (v12 <= a2)
        {
          v14 = a2 % v12;
        }
      }

      else
      {
        v14 = (v12 - 1) & a2;
      }

      v15 = *&this[108].__m_.__opaque[16];
      v16 = *(v15 + 8 * v14);
      if (v16)
      {
        v17 = *v16;
        if (*v16)
        {
          v18 = v12 - 1;
          do
          {
            v19 = v17[1];
            if (v19 == a2)
            {
              if (*(v17 + 4) == a2)
              {
                if (v13.u32[0] > 1uLL)
                {
                  v23 = a2;
                  if (v12 <= a2)
                  {
                    v23 = a2 % v12;
                  }
                }

                else
                {
                  v23 = (v12 - 1) & a2;
                }

                v24 = *(v15 + 8 * v23);
                if (!v24 || (v25 = *v24) == 0)
                {
LABEL_44:
                  operator new();
                }

                while (1)
                {
                  v26 = v25[1];
                  if (v26 == a2)
                  {
                    if (*(v25 + 4) == a2)
                    {
                      *(v25 + 20) = 1;
                      goto LABEL_27;
                    }
                  }

                  else
                  {
                    if (v13.u32[0] > 1uLL)
                    {
                      if (v26 >= v12)
                      {
                        v26 %= v12;
                      }
                    }

                    else
                    {
                      v26 &= v18;
                    }

                    if (v26 != v23)
                    {
                      goto LABEL_44;
                    }
                  }

                  v25 = *v25;
                  if (!v25)
                  {
                    goto LABEL_44;
                  }
                }
              }
            }

            else
            {
              if (v13.u32[0] > 1uLL)
              {
                if (v19 >= v12)
                {
                  v19 %= v12;
                }
              }

              else
              {
                v19 &= v18;
              }

              if (v19 != v14)
              {
                break;
              }
            }

            v17 = *v17;
          }

          while (v17);
        }
      }
    }

    if (getAUSMV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
    }

    v20 = getAUSMV2Log(void)::gLog;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = &this[107].__m_.__opaque[48];
      if (this[108].__m_.__opaque[7] < 0)
      {
        v21 = *v21;
      }

      *buf = 136315650;
      v28 = v21;
      v29 = 2080;
      v30 = "UpdateReservedGlobalAPACPropertyList";
      v31 = 1024;
      v32 = a2;
      _os_log_impl(&dword_1DDB85000, v20, OS_LOG_TYPE_DEFAULT, "[%s|%s] property %u is not listed as reserved, hence is not going to be intercepted.", buf, 0x1Cu);
    }

LABEL_27:
    std::mutex::unlock(this + 109);
  }

  return (*(this->__m_.__sig + 96))(this, a2, a3, a4, a5, a6);
}

void sub_1DDD0EB58(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    operator delete(v3);
    std::mutex::unlock(v2 + 109);
    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x1DDD0E93CLL);
  }

  _Unwind_Resume(exception_object);
}

void LPFilterBank::~LPFilterBank(LPFilterBank *this)
{
  LPFilterBank::~LPFilterBank(this);

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F5920420;
  v3 = (this + 64);
  v2 = *(this + 8);
  if (v2)
  {
    v4 = *(this + 9);
    if (v4 != v2)
    {
      *(this + 9) = &v4[(v2 - v4 + 3) & 0xFFFFFFFFFFFFFFFCLL];
    }

    operator delete(v2);
    *v3 = 0;
    v3[1] = 0;
  }

  v5 = *(this + 6);
  if (v5)
  {
    v6 = *(this + 7);
    if (v6 != v5)
    {
      *(this + 7) = &v6[(v5 - v6 + 3) & 0xFFFFFFFFFFFFFFFCLL];
    }

    operator delete(v5);
    *(this + 6) = 0;
    *(this + 7) = 0;
  }

  v7 = *(this + 4);
  if (v7)
  {
    v8 = *(this + 5);
    if (v8 != v7)
    {
      *(this + 5) = &v8[(v7 - v8 + 3) & 0xFFFFFFFFFFFFFFFCLL];
    }

    operator delete(v7);
    *(this + 4) = 0;
    *(this + 5) = 0;
  }

  v9 = *(this + 2);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }
}

uint64_t LPFilterBank::Initialize(LPFilterBank *this, int a2, int a3, unsigned int a4, int a5, int a6)
{
  if (a4 == 64 && a5 == 32 && a6 == 3)
  {
    v9 = &h_64_32_3;
  }

  else if (a4 == 128 && a5 == 64 && a6 == 3)
  {
    v9 = &h_128_64_3;
  }

  else if (a4 == 256 && a5 == 128 && a6 == 3)
  {
    v9 = &h_256_128_3;
  }

  else if (a4 == 512 && a5 == 256 && a6 == 3)
  {
    v9 = &h_512_256_3;
  }

  else if (a4 == 1024 && a5 == 512 && a6 == 3)
  {
    v9 = &h_1024_512_3;
  }

  else if (a4 == 64 && a5 == 40 && a6 == 4)
  {
    v9 = &h_64_40_4;
  }

  else if (a4 == 128 && a5 == 80 && a6 == 4)
  {
    v9 = &h_128_80_4;
  }

  else if (a4 == 256 && a5 == 160 && a6 == 4)
  {
    v9 = &h_256_160_4;
  }

  else if (a4 == 512 && a5 == 320 && a6 == 4)
  {
    v9 = &h_512_320_4;
  }

  else if (a4 == 1024 && a5 == 640 && a6 == 4)
  {
    v9 = &h_1024_640_4;
  }

  else
  {
    if (a4 != 480 || a5 != 240 || a6 != 1)
    {
      *(this + 3) = 0;
      return 0xFFFFFFFFLL;
    }

    v9 = &h_480_240_1;
  }

  *(this + 3) = v9;
  *(this + 21) = a4;
  *(this + 22) = a5;
  *(this + 23) = a6;
  if (MultiRadixRealFFT::Initialize((this + 8), a4))
  {
    return 4294967294;
  }

  v11 = (*(this + 23) * *(this + 21));
  std::valarray<float>::resize(this + 32, (v11 * a2));
  std::valarray<float>::resize(this + 48, (v11 * a3));
  std::valarray<float>::resize(this + 64, v11);
  *(this + 24) = 1.0 / *(this + 21);
  v12 = *(this + 4);
  v13 = *(this + 5) - v12;
  if (v13 >= 1)
  {
    bzero(v12, v13);
  }

  v14 = *(this + 6);
  v15 = *(this + 7) - v14;
  if (v15 >= 1)
  {
    bzero(v14, v15);
  }

  return 0;
}

void std::valarray<float>::resize(uint64_t a1, unint64_t a2)
{
  v4 = *a1;
  if (v4)
  {
    v5 = *(a1 + 8);
    if (v5 != v4)
    {
      *(a1 + 8) = &v5[(v4 - v5 + 3) & 0xFFFFFFFFFFFFFFFCLL];
    }

    operator delete(v4);
    *a1 = 0;
    *(a1 + 8) = 0;
  }

  if (a2)
  {
    if (!(a2 >> 62))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }
}

void LPFilterBank::Analysis(LPFilterBank *this, int a2, const float *a3, DSPSplitComplex *a4)
{
  v7 = (*(this + 23) * *(this + 21));
  v8 = (*(this + 4) + 4 * (v7 * a2));
  memmove(v8, &v8[4 * *(this + 22)], 4 * (v7 - *(this + 22)));
  memcpy(&v8[4 * (v7 - *(this + 22))], a3, 4 * *(this + 22));
  MEMORY[0x1E12BE7F0](v8, 1, *(this + 3), 1, *(this + 8), 1, v7);
  if (*(this + 23) >= 2)
  {
    v9 = 1;
    do
    {
      MEMORY[0x1E12BE5D0](*(this + 8), 1, *(this + 8) + 4 * (*(this + 21) * v9++), 1, *(this + 8), 1);
    }

    while (v9 < *(this + 23));
  }

  vDSP_ctoz(*(this + 8), 2, a4, 1, *(this + 21) >> 1);
  MultiRadixRealFFT::RealInPlaceTransform((this + 8), a4, 1, v10);
  MEMORY[0x1E12BE940](a4->realp, 1, this + 96, a4->realp, 1, *(this + 21) >> 1);

  JUMPOUT(0x1E12BE940);
}

void LPFilterBank::Synthesis(LPFilterBank *this, int a2, const DSPSplitComplex *a3, float *a4)
{
  v7 = *(this + 21);
  v8 = *(this + 23);
  v9 = *(this + 6);
  MultiRadixRealFFT::RealOutOfPlaceInverseTransform(this + 1, a3, *(this + 8));
  if (*(this + 23) >= 2)
  {
    v10 = 1;
    do
    {
      memcpy((*(this + 8) + 4 * (*(this + 21) * v10++)), *(this + 8), 4 * *(this + 21));
    }

    while (v10 < *(this + 23));
  }

  v11 = v8 * v7;
  v12 = v9 + 4 * (v11 * a2);
  MEMORY[0x1E12BE780](*(this + 8), 1, *(this + 3), 1, v12, 1, a4, 1, *(this + 22));
  MEMORY[0x1E12BE780](*(this + 8) + 4 * *(this + 22), 1, *(this + 3) + 4 * *(this + 22), 1, v12 + 4 * *(this + 22), 1, v12, 1, (v11 - *(this + 22)));
  v13 = *(this + 22);

  vDSP_vclr((v12 + 4 * (v11 - v13)), 1, v13);
}

CFIndex std::__call_once_proxy[abi:ne200100]<std::tuple<GetAcousticID(void)::$_0 &&>>()
{
  result = CFPreferencesGetAppIntegerValue(@"acoustic_id", @"com.apple.coreaudio", 0);
  if (result)
  {
    if ((GetAcousticID(void)::optionalValue & 0x100000000) == 0)
    {
      BYTE4(GetAcousticID(void)::optionalValue) = 1;
    }

    LODWORD(GetAcousticID(void)::optionalValue) = result;
  }

  else
  {
    result = MGIsQuestionValid();
    if (result)
    {
      result = MGGetSInt32Answer();
      LODWORD(GetAcousticID(void)::optionalValue) = result;
      BYTE4(GetAcousticID(void)::optionalValue) = result != 0;
    }

    else if (BYTE4(GetAcousticID(void)::optionalValue) == 1)
    {
      BYTE4(GetAcousticID(void)::optionalValue) = 0;
    }
  }

  return result;
}

void std::vector<std::unique_ptr<IR::FixedIntegerDelay<float>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        std::unique_ptr<IR::FixedIntegerDelay<float>>::reset[abi:ne200100](--v4, 0);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void *std::unique_ptr<IR::FixedIntegerDelay<float>>::reset[abi:ne200100](void *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2[4];
    if (v3)
    {
      v2[5] = v3;
      operator delete(v3);
    }

    v4 = v2[1];
    if (v4)
    {
      v2[2] = v4;
      operator delete(v4);
    }

    JUMPOUT(0x1E12BD160);
  }

  return result;
}

uint64_t AUSM::NeuralPreMix::NeuralPreMix(uint64_t a1, const void **a2)
{
  v4 = std::vector<AudioChannelLayout>::vector[abi:ne200100](a1, 1uLL);
  v5 = *v4;
  *v5 = 0;
  *(v5 + 8) = 0;
  std::vector<AudioChannelLayout>::vector[abi:ne200100](v4 + 3, 1uLL);
  v6 = *(a1 + 24);
  *v6 = 0;
  *(v6 + 8) = 0;
  *(a1 + 64) = 0u;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 56) = 0;
  *(a1 + 48) = 0;
  *(a1 + 112) = 0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  if (*(a2 + 23) >= 0)
  {
    v7 = *(a2 + 23);
  }

  else
  {
    v7 = a2[1];
  }

  std::string::basic_string[abi:ne200100](&v11, v7 + 13);
  if (v12 >= 0)
  {
    v8 = &v11;
  }

  else
  {
    v8 = v11;
  }

  if (v7)
  {
    if (*(a2 + 23) >= 0)
    {
      v9 = a2;
    }

    else
    {
      v9 = *a2;
    }

    memmove(v8, v9, v7);
  }

  strcpy(v8 + v7, "|NeuralPreMix");
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 88) = v11;
  *(a1 + 104) = v12;
  return a1;
}

void sub_1DDD0F58C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  std::vector<std::unique_ptr<IR::FixedIntegerDelay<float>>>::__destroy_vector::operator()[abi:ne200100](&a9);
  if (*(v9 + 111) < 0)
  {
    operator delete(v11[3]);
  }

  v13 = *(v9 + 80);
  *(v9 + 80) = 0;
  if (v13)
  {
    (*(*v13 + 8))(v13);
  }

  v14 = *(v9 + 72);
  *(v9 + 72) = 0;
  if (v14)
  {
    (*(*v14 + 8))(v14);
  }

  v15 = *v11;
  *v11 = 0;
  if (v15)
  {
    (*(*v15 + 8))(v15);
  }

  v16 = *v10;
  if (*v10)
  {
    *(v9 + 32) = v16;
    operator delete(v16);
  }

  v17 = *v9;
  if (*v9)
  {
    *(v9 + 8) = v17;
    operator delete(v17);
  }

  _Unwind_Resume(a1);
}

void AUSM::NeuralPreMix::initialize(int **this, const ausdk::AUChannelLayout *a2, const ausdk::AUChannelLayout *a3, unsigned int a4, float a5, AUSM::NeuralPreMix::ParamsStruct *a6)
{
  v39 = *MEMORY[0x1E69E9840];
  AUSM::NeuralPreMix::uninitialize(this);
  ausdk::AUChannelLayout::CopyStorage(this, a2);
  ausdk::AUChannelLayout::CopyStorage((this + 3), a3);
  v10 = *a2;
  v11 = **a2;
  if (v11 == 0x10000)
  {
    v13 = vcnt_s8(v10[1]);
    v13.i16[0] = vaddlv_u8(v13);
    v12 = v13.i32[0];
  }

  else if (v11)
  {
    v12 = **a2;
  }

  else
  {
    v12 = v10[2];
  }

  *(this + 12) = v12;
  v14 = **this;
  if (!ChannelLayoutTagIsSupportedHOA(v14))
  {
    v15.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
    goto LABEL_12;
  }

  v15.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
  if (v14 != 4)
  {
    goto LABEL_12;
  }

  if ((*a6 & 1) == 0 && *(a6 + 2) && *(a6 + 8) == 3)
  {
    if (getAUSMV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
    }

    v22 = getAUSMV2Log(void)::gLog;
    if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_DEBUG))
    {
      v24 = this + 11;
      if (*(this + 111) < 0)
      {
        v24 = *v24;
      }

      buf = 136315394;
      buf_4 = v24;
      buf_12 = 2080;
      buf_14 = "initialize";
      _os_log_debug_impl(&dword_1DDB85000, v22, OS_LOG_TYPE_DEBUG, "[%s|%s] NeuralRAD network being loaded...", &buf, 0x16u);
    }

    operator new();
  }

  v16 = this[9];
  this[9] = 0;
  if (v16)
  {
    (*(*v16 + 8))(v16);
  }

  if (*a6 == 1 && *(a6 + 3) && *(a6 + 8) == 1)
  {
    if (getAUSMV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
    }

    v25 = getAUSMV2Log(void)::gLog;
    if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_DEBUG))
    {
      v30 = this + 11;
      if (*(this + 111) < 0)
      {
        v30 = *v30;
      }

      buf = 136315394;
      buf_4 = v30;
      buf_12 = 2080;
      buf_14 = "initialize";
      _os_log_debug_impl(&dword_1DDB85000, v25, OS_LOG_TYPE_DEBUG, "[%s|%s] BiNeural network being loaded...", &buf, 0x16u);
    }

    v26 = (this + 11);
    if (*(this + 111) < 0)
    {
      v26 = this[11];
    }

    caulk::make_string("%s%s", &__p, v26, "|debug");
    operator new();
  }

  v27 = this[10];
  this[10] = 0;
  if (v27)
  {
    (*(*v27 + 8))(v27);
  }

  if (*a6)
  {
    if (!this[10])
    {
LABEL_50:
      if (*(a6 + 1))
      {
        if (getAUSMV2Log(void)::onceToken != -1)
        {
          dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
        }

        v28 = getAUSMV2Log(void)::gLog;
        if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_DEBUG))
        {
          v31 = this + 11;
          if (*(this + 111) < 0)
          {
            v31 = *v31;
          }

          buf = 136315394;
          buf_4 = v31;
          buf_12 = 2080;
          buf_14 = "initialize";
          _os_log_debug_impl(&dword_1DDB85000, v28, OS_LOG_TYPE_DEBUG, "[%s|%s] Neural Transcoder network being loaded...", &buf, 0x16u);
        }

        operator new();
      }
    }
  }

  else if (!this[9])
  {
    goto LABEL_50;
  }

  v29 = this[8];
  this[8] = 0;
  if (v29)
  {
    (*(*v29 + 8))(v29);
  }

LABEL_12:
  v17 = this[8];
  if (v17 && (v17[29] & 1) != 0 || (v18 = this[9]) != 0 && (v18[29] & 1) != 0)
  {
    LOBYTE(v19) = 1;
  }

  else
  {
    v19 = this[10];
    if (v19)
    {
      LOBYTE(v19) = *(v19 + 116);
    }
  }

  *(this + 56) = v19 & 1;
  v20.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
  if (getAUSMV2Log(void)::onceToken != -1)
  {
    dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
  }

  v21 = getAUSMV2Log(void)::gLog;
  if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_DEBUG))
  {
    v23 = this + 11;
    if (*(this + 111) < 0)
    {
      v23 = *v23;
    }

    buf = 136315650;
    buf_4 = v23;
    buf_12 = 2080;
    buf_14 = "initialize";
    v37 = 2048;
    v38 = (v20.__d_.__rep_ - v15.__d_.__rep_) / 1000000.0 * 1000.0;
    _os_log_debug_impl(&dword_1DDB85000, v21, OS_LOG_TYPE_DEBUG, "[%s|%s] NeuralPreMix load time = %.2f ms", &buf, 0x20u);
  }
}

void sub_1DDD120E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, void *a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, void *a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, const void *a32, void *a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, void *a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, void *__p, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, uint64_t a53, void *a54, uint64_t a55, uint64_t a56, uint64_t a57, void *a58)
{
  if (__p)
  {
    a49 = __p;
    operator delete(__p);
  }

  v62 = *(v60 - 160);
  if (v62)
  {
    *(v60 - 152) = v62;
    operator delete(v62);
  }

  if (a51)
  {
    a52 = a51;
    operator delete(a51);
  }

  if (a54)
  {
    a55 = a54;
    operator delete(a54);
  }

  HOA::~HOA(&a58);
  if (a33)
  {
    a34 = a33;
    operator delete(a33);
  }

  if (a36)
  {
    a37 = a36;
    operator delete(a36);
  }

  if (a39)
  {
    a40 = a39;
    operator delete(a39);
  }

  a54 = a24;
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&a54);
  a54 = a18;
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&a54);
  v63 = *(v58 + 368);
  if (v63)
  {
    *(v58 + 376) = v63;
    operator delete(v63);
  }

  std::unique_ptr<ParametricFilters>::reset[abi:ne200100]((v58 + 352), 0);
  std::unique_ptr<ParametricFilters>::reset[abi:ne200100]((v58 + 344), 0);
  a54 = a17;
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&a54);
  a54 = a23;
  std::vector<std::unique_ptr<IR::FixedIntegerDelay<float>>>::__destroy_vector::operator()[abi:ne200100](&a54);
  v64 = *(v58 + 248);
  if (v64)
  {
    *(v58 + 256) = v64;
    operator delete(v64);
  }

  v65 = *v59;
  if (*v59)
  {
    *(v58 + 232) = v65;
    operator delete(v65);
  }

  Neuralizer::~Neuralizer(v58);
  if (a30 < 0)
  {
    operator delete(a25);
  }

  applesauce::CF::URLRef::~URLRef(&a32);
  MEMORY[0x1E12BD160](v58, 0x10F3C407202B96DLL);
  _Unwind_Resume(a1);
}

uint64_t AUSM::NeuralPreMix::uninitialize(AUSM::NeuralPreMix *this)
{
  *(this + 56) = 0;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  result = *(this + 10);
  *(this + 10) = 0;
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  *(this + 28) = 0;
  return result;
}

void std::vector<std::unique_ptr<IR::FixedIntegerDelay<float>>>::resize(uint64_t *a1, unint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = (v4 - *a1) >> 3;
  if (a2 <= v5)
  {
    if (a2 < v5)
    {
      v11 = (v3 + 8 * a2);
      while (v4 != v11)
      {
        std::unique_ptr<IR::FixedIntegerDelay<float>>::reset[abi:ne200100](--v4, 0);
      }

      a1[1] = v11;
    }
  }

  else
  {
    v6 = a2 - v5;
    v7 = a1[2];
    if (v6 > (v7 - v4) >> 3)
    {
      if (!(a2 >> 61))
      {
        v8 = v7 - v3;
        v9 = v8 >> 2;
        if (v8 >> 2 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0x7FFFFFFFFFFFFFF8)
        {
          v10 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        if (!(v10 >> 61))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
    }

    bzero(a1[1], 8 * v6);
    a1[1] = &v4[v6];
  }
}

uint64_t AUSM::NeuralPreMix::getLatencySamples(AUSM::NeuralPreMix *this)
{
  if (*(this + 56) != 1)
  {
    return 0;
  }

  v1 = *(this + 8);
  if (!v1)
  {
    v1 = *(this + 9);
    if (!v1)
    {
      v1 = *(this + 10);
      if (!v1)
      {
        return 0;
      }
    }
  }

  if (*(v1 + 160) != 1 || *(v1 + 176) != 1)
  {
    return (*(v1 + 100) + *(v1 + 96));
  }

  v2 = *(v1 + 96);
  v3 = *(v1 + 100);
  v4 = *(v1 + 184);
  v5 = *(v1 + 188);
  AudioSampleRateConverterGetLatency();
  v7 = v6;
  AudioSampleRateConverterGetLatency();
  *&v8 = v7 + v8;
  return ((*(v1 + 184) * *&v8) + (((v3 + v2) / v5) * v4));
}

uint64_t IR::IRProcessor::setWeightedKernel(IR::IRProcessor *this, const IR::IRCoordinates *a2, const float *a3)
{
  if (*(this + 40) == 1 && (*(**(this + 3) + 16))(*(this + 3)) == 4)
  {
    IR::FFTFilter<float>::getScratchKernels();
  }

  return 4294956429;
}

uint64_t IR::IRProcessor::initialize(uint64_t a1, float a2, uint64_t a3, uint64_t a4)
{
  caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::lock(a1 + 8);
  IR::IRProcessor::uninitialize(a1);
  v7 = (*(**(a1 + 24) + 40))(*(a1 + 24), a2);
  if (!v7)
  {
    *(a1 + 176) = BYTE6(a4) & 1;
    *(a1 + 56) = BYTE4(a4) & 1;
    if ((a4 & 0x100000000) == 0)
    {
      operator new();
    }

    operator new();
  }

  caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(a1 + 8);
  return v7;
}

pthread_t IR::IRProcessor::uninitialize(IR::IRProcessor *this)
{
  caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::lock(this + 8);
  v2 = *(this + 6);
  *(this + 6) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v4 = *(this + 8);
    ;
  }

  *(this + 9) = v4;
  v6 = *(this + 11);
  for (j = *(this + 12); j != v6; std::__destroy_at[abi:ne200100]<PPUtils::SphericalCoordinateTree::sphericalCoordinateBranch,0>(j))
  {
    j -= 7;
  }

  *(this + 12) = v6;
  *(this + 15) = *(this + 14);
  std::vector<std::vector<unsigned int>>::clear[abi:ne200100](this + 17);
  *(this + 40) = 0;

  return caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(this + 8);
}

void std::allocator<IR::DelayLine<float>>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (a1 < 0xC7CE0C7CE0C7CFLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<IR::DelayLine<float>>,IR::DelayLine<float>*>(uint64_t result, uint64_t *a2, uint64_t a3)
{
  if (result != a2)
  {
    v3 = a3;
    v4 = result;
    v5 = 0;
    do
    {
      v6 = (v4 + v5);
      v7 = v3 + v5;
      *v7 = *(v4 + v5);
      *(v7 + 8) = *(v4 + v5 + 8);
      *(v7 + 12) = 1;
      *(v3 + v5 + 16) = 0;
      *(v7 + 24) = 0;
      *(v7 + 32) = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(v3 + v5 + 16, *(v4 + v5 + 16), *(v4 + v5 + 24), (*(v4 + v5 + 24) - *(v4 + v5 + 16)) >> 2);
      v8 = *(v4 + v5 + 40);
      *(v7 + 48) = 0;
      *(v7 + 40) = v8;
      *(v7 + 56) = 0;
      *(v7 + 64) = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(v3 + v5 + 48, v6[6], v6[7], (v6[7] - v6[6]) >> 2);
      v9 = v3 + v5;
      v10 = v3 + v5;
      *(v10 + 72) = 0;
      *(v10 + 80) = 0;
      *(v3 + v5 + 88) = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(v3 + v5 + 72, v6[9], v6[10], (v6[10] - v6[9]) >> 2);
      *(v9 + 96) = *(v4 + v5 + 96);
      *(v9 + 104) = *(v4 + v5 + 104);
      *(v9 + 112) = 0;
      *(v9 + 120) = *(v4 + v5 + 120);
      *(v9 + 136) = 0;
      *(v9 + 144) = 0;
      *(v9 + 152) = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v3 + v5 + 136, v6[17], v6[18], (v6[18] - v6[17]) >> 2);
      v11 = v3 + v5;
      v12 = v3 + v5;
      *(v12 + 160) = 0;
      *(v12 + 168) = 0;
      *(v3 + v5 + 176) = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(v3 + v5 + 160, v6[20], v6[21], (v6[21] - v6[20]) >> 2);
      *(v11 + 184) = 0;
      *(v11 + 192) = 0;
      v13 = v3 + v5 + 184;
      *(v13 + 16) = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(v13, v6[23], v6[24], (v6[24] - v6[23]) >> 2);
      v14 = (v3 + v5);
      v14[26] = 0;
      v14[27] = 0;
      v15 = v3 + v5 + 208;
      *(v15 + 16) = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(v15, v6[26], v6[27], (v6[27] - v6[26]) >> 2);
      v14[29] = 0;
      v14[30] = 0;
      v14 += 29;
      v14[2] = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(v14, v6[29], v6[30], (v6[30] - v6[29]) >> 2);
      v16 = (a3 + v5);
      v16[32] = 0;
      v16[33] = 0;
      v16[34] = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(a3 + v5 + 256, v6[32], v6[33], (v6[33] - v6[32]) >> 2);
      v16[35] = 0;
      v16[36] = 0;
      v16[37] = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(a3 + v5 + 280, v6[35], v6[36], (v6[36] - v6[35]) >> 2);
      v17 = (a3 + v5);
      v17[38] = 0;
      v17[39] = 0;
      v17[40] = 0;
      v18 = std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(a3 + v5 + 304, v6[38], v6[39], (v6[39] - v6[38]) >> 2);
      v3 = a3;
      if ((*(v7 + 4) - 5) <= 2)
      {
        SincKernelFactorySingleton::instance(v18);
        *(v9 + 112) = SincKernelFactorySingleton::ReferenceSincKernel(v19, v20, v21);
      }

      v5 += 328;
    }

    while (v6 + 41 != a2);
    do
    {
      result = IR::DelayLine<float>::~DelayLine(v4);
      v4 += 328;
    }

    while (v4 != a2);
  }

  return result;
}

void sub_1DDD13578(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, _Unwind_Exception *exception_object, void **a16)
{
  v18 = (v17 + v16);
  v19 = (v17 + v16 + 280);
  v20 = v17 + v16 + 256;
  v21 = (v17 + v16 + 232);
  v22 = (v17 + v16 + 208);
  v23 = v18 + 23;
  v24 = v18 + 20;
  v36 = v20;
  v38 = v18 + 2;
  v39 = v18 + 9;
  v25 = v18[38];
  if (v25)
  {
    v18[39] = v25;
    operator delete(v25);
  }

  v26 = *v19;
  if (*v19)
  {
    v18[36] = v26;
    operator delete(v26);
  }

  v27 = *v36;
  if (*v36)
  {
    v18[33] = v27;
    operator delete(v27);
  }

  v28 = *v21;
  if (*v21)
  {
    v18[30] = v28;
    operator delete(v28);
  }

  v29 = *v22;
  if (*v22)
  {
    v18[27] = v29;
    operator delete(v29);
  }

  v30 = *v23;
  if (*v23)
  {
    v18[24] = v30;
    operator delete(v30);
  }

  v37 = v18 + 17;
  v31 = *v24;
  if (*v24)
  {
    v18[21] = v31;
    operator delete(v31);
  }

  v40 = v18 + 6;
  v32 = *v37;
  if (*v37)
  {
    v18[18] = v32;
    operator delete(v32);
  }

  v33 = *v39;
  if (*v39)
  {
    v18[10] = v33;
    operator delete(v33);
  }

  v34 = *v40;
  if (*v40)
  {
    v18[7] = v34;
    operator delete(v34);
  }

  v35 = *v38;
  if (*v38)
  {
    v18[3] = v35;
    operator delete(v35);
  }

  while (v18 != a16)
  {
    v18 -= 41;
    IR::DelayLine<float>::~DelayLine(v18);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__split_buffer<IR::DelayLine<float>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 328;
    IR::DelayLine<float>::~DelayLine(i - 328);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

pthread_t IR::IRProcessor::reset(IR::IRProcessor *this)
{
  caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::lock(this + 8);
  if (*(this + 40) == 1)
  {
    IR::FFTFilter<float>::reset();
  }

  return caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(this + 8);
}

uint64_t IR::IRProcessor::getTailLength(IR::IRProcessor *this)
{
  v2 = (*(**(this + 3) + 72))(*(this + 3));
  v3 = (*(**(this + 3) + 80))(*(this + 3));
  v4 = *(this + 43);
  if (v4 == 1)
  {
    v5 = *(*(this + 3) + 164);
  }

  else
  {
    v5 = 0;
  }

  if (v4)
  {
    v6 = v3 + 5;
  }

  else
  {
    v6 = v3;
  }

  return (v6 + v2 + v5);
}

uint64_t IR::IRProcessor::setIRCoeffs(IR::IRProcessor *this, const float *const *a2, const float *a3)
{
  if (*(this + 40) != 1)
  {
    return 4294956429;
  }

  if (((*(**(this + 3) + 24))(*(this + 3)) & 1) == 0)
  {
    IR::FFTFilter<float>::getScratchKernels();
  }

  return 4294956433;
}

uint64_t IR::IRProcessor::processMultipleInputs(IR::IRProcessor *this, const float *const *a2, float *const *a3, unsigned int a4, unsigned int a5, vDSP_Length a6, float a7, IR::ComplexDataCircBuffer *a8)
{
  __Start[1] = *MEMORY[0x1E69E9840];
  v64 = a7;
  if (*(this + 40) != 1)
  {
    return 4294956429;
  }

  result = 4294967246;
  if (a4 && a5)
  {
    v16 = caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::try_lock(this + 8);
    v17 = v16;
    if (v16)
    {
      v58[1] = a8;
      v58[2] = v58;
      if (*(*(this + 3) + 168) >= a5)
      {
        v18 = a5;
      }

      else
      {
        v18 = *(*(this + 3) + 168);
      }

      if (v18 >= a4)
      {
        v19 = a4;
      }

      else
      {
        v19 = v18;
      }

      if (*(this + 176))
      {
        v20 = v19;
      }

      else
      {
        v20 = v18;
      }

      MEMORY[0x1EEE9AC00](v16);
      if (8 * v20 >= 0x200)
      {
        v22 = 512;
      }

      else
      {
        v22 = 8 * v20;
      }

      v62 = v58 - v21;
      bzero(v58 - v21, v22);
      v23 = *(this + 176);
      v60 = v20;
      if (v23)
      {
        if (v20)
        {
          memcpy(v62, a2, 8 * v20);
        }
      }

      else if (v20)
      {
        v27 = *a2;
        v28 = (v60 + 1) & 0x1FFFFFFFELL;
        v29 = vdupq_n_s64(v60 - 1);
        v30 = xmmword_1DE095160;
        v31 = v62 + 8;
        v32 = vdupq_n_s64(2uLL);
        do
        {
          v33 = vmovn_s64(vcgeq_u64(v29, v30));
          if (v33.i8[0])
          {
            *(v31 - 1) = v27;
          }

          if (v33.i8[4])
          {
            *v31 = v27;
          }

          v30 = vaddq_s64(v30, v32);
          v31 += 2;
          v28 -= 2;
        }

        while (v28);
      }

      v59 = v17;
      v34 = (*(**(this + 3) + 24))(*(this + 3));
      if (v34)
      {
        v34 = (*(**(this + 3) + 104))(*(this + 3), a6);
        if (v34)
        {
          IR::FFTFilter<float>::doXFadeUpdate();
        }
      }

      if (*(this + 56) != 1)
      {
        if (*(this + 176) == 1)
        {
          IR::FFTFilter<float>::processMultipleInputs();
        }

        IR::FFTFilter<float>::process();
      }

      MEMORY[0x1EEE9AC00](v34);
      v37 = v58 - v36;
      if (v35 >= 0x200)
      {
        v38 = 512;
      }

      else
      {
        v38 = v35;
      }

      bzero(v58 - v36, v38);
      if (v60)
      {
        v58[0] = v58;
        v40 = 0;
        v41 = 0;
        v42 = 0;
        v43 = 0;
        v44 = a6;
        v61 = a6;
        v45 = 24 * v60;
        do
        {
          v39.n128_f32[0] = v64;
          v46 = *(this + 41);
          if (v64 == v46 || (*(this + 168) & 1) != 0)
          {
            MEMORY[0x1E12BE940](*&v62[8 * v43], 1, &v64, *(*(this + 17) + v42), 1, v61, v39);
          }

          else if (a6)
          {
            LODWORD(__Start[0]) = *(this + 41);
            __Step = (v64 - v46) / v44;
            vDSP_vrampmul(*&v62[8 * v43], 1, __Start, &__Step, *(*(this + 17) + v42), 1, v61);
          }

          if (*(this + 43) == 1)
          {
            IR::DelayLine<float>::setDelay(*(this + 8) + v40, *(*(this + 14) + 4 * v43));
            v47 = a6;
            v48 = v37;
            v49 = *(this + 8) + v40;
            *(v49 + 96) = expf(-1.0 / *(this + 40));
            __Start[0] = *(*(this + 17) + v42);
            v50 = v49;
            v37 = v48;
            a6 = v47;
            IR::DelayLine<float>::process(v50, __Start[0], __Start, v47);
          }

          else if (*(this + 11) != *(this + 12))
          {
            IR::FixedIntegerDelay<float>::process();
          }

          *&v37[8 * v43++] = *(*(this + 17) + v42);
          v42 += 24;
          v41 += 56;
          v40 += 328;
        }

        while (v45 != v42);
        if ((*(this + 176) & 1) == 0)
        {
          if (v60 != 1)
          {
            v51 = *(this + 14);
            v53 = *v51;
            v52 = v51 + 1;
            v54 = v53;
            v55 = v60 - 1;
            v56 = 1;
            do
            {
              v57 = *v52++;
              v56 &= v57 == v54;
              --v55;
            }

            while (v55);
            if ((v56 & 1) == 0)
            {
              IR::FFTFilter<float>::processMultipleInputs();
            }
          }

LABEL_64:
          IR::FFTFilter<float>::process();
        }
      }

      else if ((*(this + 176) & 1) == 0)
      {
        goto LABEL_64;
      }

      IR::FFTFilter<float>::processMultipleInputs();
    }

    v24 = 4 * a6;
    v25 = a5;
    do
    {
      v26 = *a3++;
      bzero(v26, v24);
      --v25;
    }

    while (v25);
    if (v17)
    {
      caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(this + 8);
    }

    return 0;
  }

  return result;
}

uint64_t DOABasedProbability::SetSubbandDOATimeSmoothing(uint64_t this, float a2)
{
  if (*(this + 488) == 1)
  {
    v2 = *(this + 536);
    if (v2)
    {
      *(this + 492) = a2;
      *(v2 + 12) = a2;
    }
  }

  return this;
}

void DOABasedProbability::SetSubbandDOA(DOABasedProbability *this, const float *a2, size_t __n)
{
  v3 = __n;
  v17 = *MEMORY[0x1E69E9840];
  v5 = *(this + 65);
  v6 = *(this + 64);
  if (v5 - v6 == __n)
  {

    memcpy(v6, a2, __n);
  }

  else
  {
    if (AUSpatialProbabilityLogScope(void)::once != -1)
    {
      dispatch_once(&AUSpatialProbabilityLogScope(void)::once, &__block_literal_global_9312);
    }

    if (AUSpatialProbabilityLogScope(void)::scope)
    {
      v7 = *AUSpatialProbabilityLogScope(void)::scope;
      if (!*AUSpatialProbabilityLogScope(void)::scope)
      {
        return;
      }
    }

    else
    {
      v7 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(this + 65) - *(this + 64);
      v9 = 136315906;
      v10 = "DOABasedProbability.hpp";
      v11 = 1024;
      v12 = 115;
      v13 = 1024;
      v14 = v3;
      v15 = 2048;
      v16 = v8;
      _os_log_impl(&dword_1DDB85000, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d SubbandDOA not set. Input size (%u) and internal size (%lu) do not match.\n", &v9, 0x22u);
    }
  }
}

void DOABasedProbability::SetTargetDistance(DOABasedProbability *this, float a2)
{
  v14 = *MEMORY[0x1E69E9840];
  if (a2 >= 0.0)
  {
    *(this + 112) = a2;
    *(this + 452) = 1;
    return;
  }

  if (AUSpatialProbabilityLogScope(void)::once != -1)
  {
    dispatch_once(&AUSpatialProbabilityLogScope(void)::once, &__block_literal_global_9312);
  }

  if (AUSpatialProbabilityLogScope(void)::scope)
  {
    v4 = *AUSpatialProbabilityLogScope(void)::scope;
    if (!*AUSpatialProbabilityLogScope(void)::scope)
    {
      return;
    }
  }

  else
  {
    v4 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(this + 112);
    v6 = 136315906;
    v7 = "DOABasedProbability.hpp";
    v8 = 1024;
    v9 = 157;
    v10 = 2048;
    v11 = a2;
    v12 = 2048;
    v13 = v5;
    _os_log_impl(&dword_1DDB85000, v4, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Target distance not set to (%f), it remains at the current value (%f). Distance must be nonnegative.\n", &v6, 0x26u);
  }
}

void DOABasedProbability::SetTargetElevation(DOABasedProbability *this, float a2)
{
  v14 = *MEMORY[0x1E69E9840];
  if (fabsf(a2) <= 90.0)
  {
    *(this + 111) = a2;
    *(this + 452) = 1;
    return;
  }

  if (AUSpatialProbabilityLogScope(void)::once != -1)
  {
    dispatch_once(&AUSpatialProbabilityLogScope(void)::once, &__block_literal_global_9312);
  }

  if (AUSpatialProbabilityLogScope(void)::scope)
  {
    v4 = *AUSpatialProbabilityLogScope(void)::scope;
    if (!*AUSpatialProbabilityLogScope(void)::scope)
    {
      return;
    }
  }

  else
  {
    v4 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(this + 111);
    v6 = 136315906;
    v7 = "DOABasedProbability.hpp";
    v8 = 1024;
    v9 = 144;
    v10 = 2048;
    v11 = a2;
    v12 = 2048;
    v13 = v5;
    _os_log_impl(&dword_1DDB85000, v4, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Target elevation not set to (%f), it remains at the current value (%f). Elevation must be in range [-90, 90].\n", &v6, 0x26u);
  }
}

uint64_t DOABasedProbability::SetTargetAzimuth(uint64_t this, float a2)
{
  *(this + 440) = a2;
  *(this + 452) = 1;
  return this;
}

void DOABasedProbability::~DOABasedProbability(DOABasedProbability *this)
{
  DOABasedProbability::~DOABasedProbability(this);

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F5920440;
  v2 = *(this + 71);
  if (v2)
  {
    *(this + 72) = v2;
    operator delete(v2);
  }

  v3 = *(this + 68);
  if (v3)
  {
    *(this + 69) = v3;
    operator delete(v3);
  }

  v4 = *(this + 67);
  *(this + 67) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 64);
  if (v5)
  {
    *(this + 65) = v5;
    operator delete(v5);
  }

  v6 = *(this + 60);
  *(this + 60) = 0;
  if (v6)
  {
    (*(*v6 + 24))(v6);
  }

  v7 = *(this + 59);
  *(this + 59) = 0;
  if (v7)
  {
    (*(*v7 + 24))(v7);
  }

  v8 = *(this + 58);
  *(this + 58) = 0;
  if (v8)
  {
    (*(*v8 + 24))(v8);
  }

  SpatialProbabilityBase::~SpatialProbabilityBase(this);
}

void SpatialProbabilityBase::~SpatialProbabilityBase(SpatialProbabilityBase *this)
{
  *this = &unk_1F5939D00;
  v2 = *(this + 52);
  if (v2)
  {
    *(this + 53) = v2;
    operator delete(v2);
  }

  v3 = *(this + 46);
  if (v3)
  {
    *(this + 47) = v3;
    operator delete(v3);
  }

  v4 = *(this + 41);
  if (v4)
  {
    *(this + 42) = v4;
    operator delete(v4);
  }

  v5 = *(this + 38);
  if (v5)
  {
    *(this + 39) = v5;
    operator delete(v5);
  }

  v6 = *(this + 35);
  if (v6)
  {
    *(this + 36) = v6;
    operator delete(v6);
  }

  v7 = *(this + 30);
  if (v7)
  {
    *(this + 31) = v7;
    operator delete(v7);
  }

  v8 = *(this + 27);
  if (v8)
  {
    *(this + 28) = v8;
    operator delete(v8);
  }

  v9 = *(this + 24);
  if (v9)
  {
    *(this + 25) = v9;
    operator delete(v9);
  }

  v10 = *(this + 21);
  if (v10)
  {
    *(this + 22) = v10;
    operator delete(v10);
  }

  v11 = *(this + 18);
  if (v11)
  {
    *(this + 19) = v11;
    operator delete(v11);
  }

  v12 = *(this + 15);
  if (v12)
  {
    *(this + 16) = v12;
    operator delete(v12);
  }

  v13 = *(this + 12);
  if (v13)
  {
    *(this + 13) = v13;
    operator delete(v13);
  }

  v14 = *(this + 8);
  if (v14)
  {
    *(this + 9) = v14;
    operator delete(v14);
  }
}

float DOABasedProbability::EstimateSpatialProbabilities(DOABasedProbability *this)
{
  v58 = *MEMORY[0x1E69E9840];
  SpatialProbabilityBase::UpdatePriorProbabilities(this);
  SpatialProbabilityBase::UpdateShapeParameter(this);
  if (*(this + 452) == 1)
  {
    CircularModelDOA::SetTargetDOA(*(this + 58), *(this + 110), *(this + 111), *(this + 112));
    CircularModelDOA::SetTargetDOA(*(this + 59), *(this + 110), *(this + 111), *(this + 112));
    CircularModelDOA::SetTargetDOA(*(this + 60), *(this + 110), *(this + 111), *(this + 112));
  }

  *(this + 452) = 0;
  if (*(this + 488) != 1)
  {
    v16 = (this + 504);
    goto LABEL_82;
  }

  v2 = *(this + 67);
  v3 = *(this + 2);
  DOAConditioner::LogDOA(this + 504, *(v2 + 56));
  v4 = *(this + 126);
  if (v4 != *(v2 + 160))
  {
    __assert_rtn("SetXYZFromPolarDOA", "SubbandXYZ.hpp", 52, "polarDOA.GetNumBands() == GetNumBands()");
  }

  v5 = v4 + 1;
  if (v4 + 1 < v3)
  {
    v6 = (v4 + 1);
  }

  else
  {
    v6 = v3;
  }

  if (v6)
  {
    v7 = 0;
    do
    {
      if (4 * (v4 + 1) == v7)
      {
        __assert_rtn("Get", "SubbandDOA.h", 56, "bandIdx < GetNumBands()");
      }

      v8 = (*(this + 64) + v7);
      v9 = *v8 * 3.14159265 / 180.0;
      v10 = v8[v4 + 1] * 3.14159265 / 180.0;
      v11 = __sincosf_stret(v9);
      v12 = __sincosf_stret(v10);
      v13 = (*(v2 + 168) + v7);
      *v13 = v11.__cosval * v12.__cosval;
      v13[v4 + 1] = v11.__sinval * v12.__cosval;
      v13[2 * v4 + 2] = v12.__sinval;
      v7 += 4;
    }

    while (4 * v6 != v7);
  }

  if (*(v2 + 32) != 1)
  {
    goto LABEL_42;
  }

  v14 = *(v2 + 24);
  if (v14 > 2)
  {
    if (v14 == 3)
    {
      goto LABEL_28;
    }

    if (v14 == 4)
    {
      v17 = *(v2 + 168) + 4 * v5;
      MEMORY[0x1E12BE810](v17, 1, v17, 1, v6);
      v18 = *(v2 + 168) + 4 * (2 * *(v2 + 160) + 2);
      MEMORY[0x1E12BE810](v18, 1, v18, 1, v6);
      goto LABEL_28;
    }
  }

  else
  {
    if (v14 == 1)
    {
      v15 = *(v2 + 168) + 4 * v5;
      goto LABEL_27;
    }

    if (v14 == 2)
    {
      v15 = *(v2 + 168) + 4 * (2 * v4 + 2);
LABEL_27:
      MEMORY[0x1E12BE810](v15, 1, v15, 1, v6);
      vDSP_vswap((*(v2 + 168) + 4 * (*(v2 + 160) + 1)), 1, (*(v2 + 168) + 4 * (2 * *(v2 + 160) + 2)), 1, v6);
      goto LABEL_28;
    }
  }

  if (SCLogScope(void)::once != -1)
  {
    dispatch_once(&SCLogScope(void)::once, &__block_literal_global_19038);
  }

  if (SCLogScope(void)::scope)
  {
    v19 = *SCLogScope(void)::scope;
    if (!*SCLogScope(void)::scope)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v19 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    *buf = 4.8152e-34;
    v53 = "SubbandXYZ.cpp";
    v54 = 1024;
    v55 = 123;
    v56 = 1024;
    v57 = v14;
    _os_log_impl(&dword_1DDB85000, v19, OS_LOG_TYPE_ERROR, "%25s:%-5d Invalid orientation %u", buf, 0x18u);
  }

LABEL_28:
  v20 = *(v2 + 28);
  if (v20 == 1)
  {
    goto LABEL_42;
  }

  if (v20)
  {
    if (SCLogScope(void)::once != -1)
    {
      dispatch_once(&SCLogScope(void)::once, &__block_literal_global_19038);
    }

    if (SCLogScope(void)::scope)
    {
      v24 = *SCLogScope(void)::scope;
      if (!*SCLogScope(void)::scope)
      {
        goto LABEL_42;
      }
    }

    else
    {
      v24 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 4.8152e-34;
      v53 = "SubbandXYZ.cpp";
      v54 = 1024;
      v55 = 150;
      v56 = 1024;
      v57 = v20;
      _os_log_impl(&dword_1DDB85000, v24, OS_LOG_TYPE_ERROR, "%25s:%-5d Invalid camera direction %u", buf, 0x18u);
    }
  }

  else
  {
    v21 = *(v2 + 160);
    if (v21 + 1 < v3)
    {
      v22 = (v21 + 1);
    }

    else
    {
      v22 = v3;
    }

    MEMORY[0x1E12BE810](*(v2 + 168), 1, *(v2 + 168), 1, v22);
    v23 = *(v2 + 168) + 4 * (*(v2 + 160) + 1);
    MEMORY[0x1E12BE810](v23, 1, v23, 1, v22);
  }

LABEL_42:
  if ((*(v2 + 40) & 1) == 0)
  {
    *(v2 + 128) = *(v2 + 160);
    std::vector<unsigned int>::__assign_with_size[abi:ne200100]<unsigned int *,unsigned int *>((v2 + 136), *(v2 + 168), *(v2 + 176), (*(v2 + 176) - *(v2 + 168)) >> 2);
  }

  *(v2 + 40) = 1;
  if (*(v2 + 8) == 1)
  {
    v25 = *(v2 + 36);
    v26 = *(v2 + 72);
    if (v25 >= (*(v2 + 80) - v26) >> 3)
    {
      std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
    }

    if (*(v26 + 8 * v25))
    {
      v27 = *(v2 + 16);
      *buf = *(v2 + 12);
      v28 = 1;
      MEMORY[0x1E12BE940](*(v2 + 136), 1, buf, *(v2 + 136), 1, (*(v2 + 144) - *(v2 + 136)) >> 2);
      for (i = 0; i != 3; ++i)
      {
        v30 = regularizationVecXYZ[i];
        v31 = (1.0 - *buf) * (1.0 - (v30 * v27));
        v32 = sparse_matrix_vector_product_dense_float(CblasNoTrans, v31, *(v26 + 8 * v25), (*(v2 + 168) + 4 * (i + i * *(v2 + 160))), 1, (*(v2 + 136) + 4 * (i + i * *(v2 + 128))), 1) == SPARSE_SUCCESS;
        if (fabsf(v30) > 1.0e-15)
        {
          v33 = (1.0 - *buf) * v27 * v30;
          v51 = v33;
          v34 = *(v2 + 136) + 4 * ((*(v2 + 128) + 1) * i);
          MEMORY[0x1E12BE8A0](v34, 1, &v51, v34, 1);
        }

        v28 &= v32;
      }

      if (v28)
      {
        goto LABEL_61;
      }
    }

    if (SCLogScope(void)::once != -1)
    {
      dispatch_once(&SCLogScope(void)::once, &__block_literal_global_19038);
    }

    if (SCLogScope(void)::scope)
    {
      v35 = *SCLogScope(void)::scope;
      if (!*SCLogScope(void)::scope)
      {
        goto LABEL_61;
      }
    }

    else
    {
      v35 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      *buf = 4.8151e-34;
      v53 = "DOAConditioner.cpp";
      v54 = 1024;
      v55 = 34;
      _os_log_impl(&dword_1DDB85000, v35, OS_LOG_TYPE_ERROR, "%25s:%-5d Time-frequency smoothing update failed", buf, 0x12u);
    }

    goto LABEL_61;
  }

  *(v2 + 128) = *(v2 + 160);
  std::vector<unsigned int>::__assign_with_size[abi:ne200100]<unsigned int *,unsigned int *>((v2 + 136), *(v2 + 168), *(v2 + 176), (*(v2 + 176) - *(v2 + 168)) >> 2);
LABEL_61:
  v36 = *(v2 + 96);
  if (v36 != *(v2 + 128))
  {
    __assert_rtn("SetPolarDOAFromXYZ", "SubbandXYZ.cpp", 183, "polarDOA.GetNumBands() == GetNumBands()");
  }

  if (v36 + 1 < v3)
  {
    v37 = (v36 + 1);
  }

  else
  {
    v37 = v3;
  }

  if (v37)
  {
    for (j = 0; j != v37; ++j)
    {
      v39 = (*(v2 + 136) + 4 * j);
      v40 = *(v2 + 128);
      v41 = v39[2 * v40 + 2];
      v42 = 1.0;
      if (v41 <= 1.0)
      {
        v42 = v39[2 * v40 + 2];
        if (v41 < -1.0)
        {
          v42 = -1.0;
        }
      }

      if (fabsf(v42) > 1.0)
      {
        __assert_rtn("SetPolarDOAFromXYZ", "SubbandXYZ.cpp", 197, "fabsf(z) <= 1.0");
      }

      v43 = *v39;
      v44 = v39[v40 + 1];
      v45 = asinf(v42);
      if ((LODWORD(v45) & 0x7FFFFFFFu) >= 0x7F800000)
      {
        __assert_rtn("SetPolarDOAFromXYZ", "SubbandXYZ.cpp", 199, "isfinite(el)");
      }

      if (fabsf(v44) < 1.0e-15 && fabsf(v43) < 1.0e-15)
      {
        v44 = 1.0e-15;
      }

      v46 = atan2f(-v44, v43);
      if ((LODWORD(v46) & 0x7FFFFFFFu) >= 0x7F800000)
      {
        __assert_rtn("SetPolarDOAFromXYZ", "SubbandXYZ.cpp", 205, "isfinite(az)");
      }

      v47 = (v46 * -180.0) / 3.14159265;
      v48 = (v45 * 180.0) / 3.14159265;
      SubbandDOA::Set(v2 + 96, j, v47, v48);
    }
  }

  if (*(v2 + 41) == 1 && *(v2 + 96) != -1)
  {
    v49 = 0;
    do
    {
      SubbandDOA::Set(v2 + 96, v49++, *(v2 + 44), *(v2 + 48));
    }

    while (v49 < *(v2 + 96) + 1);
  }

  DOAConditioner::LogDOA(v2 + 96, *(v2 + 64));
  v16 = (*(this + 67) + 96);
LABEL_82:
  memcpy(*(this + 68), v16[1], 4 * *(this + 2));
  memcpy(*(this + 71), v16[1] + 4 * *(this + 2), 4 * *(this + 2));
  (*(**(this + 58) + 48))(*(this + 58), this + 544, this + 568, this + 96);
  (*(**(this + 59) + 48))(*(this + 59), this + 544, this + 568, this + 120);
  (*(**(this + 60) + 48))(*(this + 60), this + 544, this + 568, this + 144);

  return SpatialProbabilityBase::UpdatePosteriorProbabilities(this);
}

uint64_t DOABasedProbability::UpdateModelsWithShapeParameter(void **a1, uint64_t a2)
{
  (*(*a1[58] + 40))(a1[58]);
  (*(*a1[59] + 40))(a1[59], a2);
  v4 = *(*a1[60] + 40);

  return v4();
}

uint64_t DOABasedProbability::UpdateModelsWithShapeParameter(DOABasedProbability *this, float a2)
{
  (*(**(this + 58) + 32))(*(this + 58));
  (*(**(this + 59) + 32))(*(this + 59), a2);
  v4 = *(**(this + 60) + 32);
  v5.n128_f32[0] = a2;

  return v4(v5);
}

void CircularModelDOAFactory::CreateModel(uint64_t a1, int a2)
{
  if (a2 <= 1)
  {
    if (!a2)
    {
      operator new();
    }

    if (a2 == 1)
    {
      operator new();
    }
  }

  else
  {
    switch(a2)
    {
      case 2:
        operator new();
      case 3:
        operator new();
      case 4:
        operator new();
    }
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::invalid_argument::invalid_argument[abi:ne200100](exception, "Unknown selected model!");
}

void CircularModelDOA::CircularModelDOA(CircularModelDOA *this, unsigned int a2, float a3, float a4, float a5)
{
  *this = &unk_1F592C2B8;
  *(this + 2) = a2;
  std::vector<float>::vector[abi:ne200100](this + 3, a2);
  std::vector<float>::vector[abi:ne200100](this + 6, *(this + 2));
  v9 = *(this + 2);
  *(this + 18) = v9;
  *(this + 76) = xmmword_1DE09C4F0;
  *(this + 23) = 1016003125;
  std::vector<float>::vector[abi:ne200100](this + 12, v9);
  std::vector<float>::vector[abi:ne200100](this + 15, *(this + 2));
  std::vector<float>::vector[abi:ne200100](this + 18, *(this + 2));
  std::vector<float>::vector[abi:ne200100](this + 21, *(this + 2));
  std::vector<float>::vector[abi:ne200100](this + 24, *(this + 2));
  CircularModelDOA::SetTargetDOA(this, a3, a4, a5);
}

void sub_1DDD15748(_Unwind_Exception *exception_object)
{
  v3 = v1[21];
  if (v3)
  {
    v1[22] = v3;
    operator delete(v3);
  }

  v4 = v1[18];
  if (v4)
  {
    v1[19] = v4;
    operator delete(v4);
  }

  v5 = v1[15];
  if (v5)
  {
    v1[16] = v5;
    operator delete(v5);
  }

  v6 = v1[12];
  if (v6)
  {
    v1[13] = v6;
    operator delete(v6);
  }

  v7 = v1[6];
  if (v7)
  {
    v1[7] = v7;
    operator delete(v7);
  }

  v8 = v1[3];
  if (v8)
  {
    v1[4] = v8;
    operator delete(v8);
  }

  _Unwind_Resume(exception_object);
}

_DWORD *SubbandDOA::Reset(SubbandDOA *this, int a2, int16x4_t a3)
{
  if (!a2)
  {
    __assert_rtn("Reset", "SubbandDOA.h", 41, "blockSize > 0");
  }

  *this = a2;
  v4 = 0;
  return std::vector<float>::assign(this + 1, (2 * a2 + 2), &v4, a3);
}

_DWORD *SubbandXYZ::Reset(SubbandXYZ *this, int a2, int16x4_t a3)
{
  if (!a2)
  {
    __assert_rtn("Reset", "SubbandXYZ.hpp", 28, "blockSize > 0");
  }

  *this = a2;
  v4 = 0;
  return std::vector<float>::assign(this + 1, (3 * a2 + 3), &v4, a3);
}

uint64_t *std::ofstream::basic_ofstream(uint64_t *a1)
{
  a1[58] = 0;
  v2 = MEMORY[0x1E69E5530] + 64;
  a1[52] = MEMORY[0x1E69E5530] + 64;
  v3 = *(MEMORY[0x1E69E54D0] + 16);
  v4 = *(MEMORY[0x1E69E54D0] + 8);
  *a1 = v4;
  *(a1 + *(v4 - 24)) = v3;
  v5 = (a1 + *(*a1 - 24));
  std::ios_base::init(v5, a1 + 1);
  v6 = MEMORY[0x1E69E5530] + 24;
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  *a1 = v6;
  a1[52] = v2;
  MEMORY[0x1E12BCB10](a1 + 1);
  if (!std::filebuf::open())
  {
    std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 4);
  }

  return a1;
}

{
  a1[58] = 0;
  v2 = MEMORY[0x1E69E5530] + 64;
  a1[52] = MEMORY[0x1E69E5530] + 64;
  v3 = *(MEMORY[0x1E69E54D0] + 16);
  v4 = *(MEMORY[0x1E69E54D0] + 8);
  *a1 = v4;
  *(a1 + *(v4 - 24)) = v3;
  v5 = (a1 + *(*a1 - 24));
  std::ios_base::init(v5, a1 + 1);
  v6 = MEMORY[0x1E69E5530] + 24;
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  *a1 = v6;
  a1[52] = v2;
  MEMORY[0x1E12BCB10](a1 + 1);
  if (!std::filebuf::open())
  {
    std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 4);
  }

  return a1;
}

void sub_1DDD15A14(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  MEMORY[0x1E12BD050](v1);
  _Unwind_Resume(a1);
}

void DOAConditioner::~DOAConditioner(DOAConditioner *this)
{
  DOAConditioner::~DOAConditioner(this);

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F59204C8;
  v2 = *(this + 9);
  v3 = *(this + 10);
  while (v2 != v3)
  {
    if (*v2)
    {
      sparse_matrix_destroy(*v2);
    }

    ++v2;
  }

  v4 = *(this + 21);
  if (v4)
  {
    *(this + 22) = v4;
    operator delete(v4);
  }

  v5 = *(this + 17);
  if (v5)
  {
    *(this + 18) = v5;
    operator delete(v5);
  }

  v6 = *(this + 13);
  if (v6)
  {
    *(this + 14) = v6;
    operator delete(v6);
  }

  v7 = *(this + 9);
  if (v7)
  {
    *(this + 10) = v7;
    operator delete(v7);
  }

  v8 = *(this + 8);
  *(this + 8) = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  v9 = *(this + 7);
  *(this + 7) = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }
}

uint64_t AUSPLMeter::SupportedNumChannels(AUSPLMeter *this, const AUChannelInfo **a2)
{
  if (a2)
  {
    *a2 = &AUSPLMeter::SupportedNumChannels(AUChannelInfo const**)::sSupportedChannelConfigs;
  }

  return 2;
}

uint64_t AUSPLMeter::GetParameterInfo(AUSPLMeter *this, int a2, unsigned int a3, AudioUnitParameterInfo *buffer)
{
  result = 4294956418;
  if (!a2 && a3 <= 0xC)
  {
    v5 = &paramInfo + 104 * a3;
    *&buffer->clumpID = *(v5 + 4);
    v6 = *(v5 + 12);
    *&buffer->flags = v6;
    *&buffer->name[48] = *(v5 + 3);
    *&buffer->unit = *(v5 + 5);
    *buffer->name = *v5;
    *&buffer->name[16] = *(v5 + 1);
    *&buffer->name[32] = *(v5 + 2);
    v7 = *(v5 + 9);
    buffer->cfNameString = v7;
    buffer->flags = v6 | 0x8000000;
    CFStringGetCString(v7, buffer->name, 52, 0x8000100u);
    return 0;
  }

  return result;
}

ausdk::AUInputElement *AUSPLMeter::Render(AUSPLMeter *this, unsigned int *a2, const AudioTimeStamp *a3, uint64_t a4)
{
  Element = ausdk::AUScope::GetElement((this + 80), 0);
  if (!Element || (v9 = Element, (v10 = ausdk::AUScope::GetElement((this + 128), 0)) == 0))
  {
    ausdk::Throw(0xFFFFD583);
  }

  v11 = v10;
  v14 = 0;
  result = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 80, 0);
  if (v13)
  {
    result = ausdk::AUInputElement::PullInput(result, &v14, a3, 0, a4);
  }

  if (!result)
  {
    if (!*(v9 + 144) || !*(v11 + 144))
    {
      ausdk::Throw(0xFFFFFFFFLL);
    }

    return (*(*this + 176))(this, a2, *(v9 + 152) + 48, *(v11 + 152) + 48, a4);
  }

  return result;
}

uint64_t AUSPLMeter::ProcessBufferLists(AUSPLMeter *this, unsigned int *a2, const AudioBufferList *a3, AudioBufferList *a4, UInt32 a5)
{
  if (*(this + 84) < a5)
  {
    return 4294956422;
  }

  v9 = **(this + 88);
  mNumberBuffers = a3->mNumberBuffers;
  if (mNumberBuffers == a4->mNumberBuffers && mNumberBuffers != 0)
  {
    v12 = 0;
    p_mData = &a4->mBuffers[0].mData;
    v14 = &a3->mBuffers[0].mData;
    do
    {
      v15 = *(v14 - 1);
      if (v15 == *(p_mData - 1) && *v14 != *p_mData)
      {
        memcpy(*p_mData, *v14, v15);
        mNumberBuffers = a3->mNumberBuffers;
      }

      ++v12;
      p_mData += 2;
      v14 += 2;
    }

    while (v12 < mNumberBuffers);
  }

  if ((*(this + 528) & 1) == 0)
  {
    Element = ausdk::AUScope::GetElement((this + 80), 0);
    if (!Element)
    {
      ausdk::Throw(0xFFFFD583);
    }

    v17 = a3->mNumberBuffers;
    if (v17 == v9[2].mNumberBuffers && a3->mNumberBuffers)
    {
      v18 = 0;
      v19 = *(Element + 104) * a5;
      v20 = &v9[2].mBuffers[0].mData;
      v21 = &a3->mBuffers[0].mData;
      do
      {
        if (*(v21 - 1) >= v19 && *(v20 - 1) >= v19 && *v21 != *v20)
        {
          memcpy(*v20, *v21, v19);
          v17 = a3->mNumberBuffers;
        }

        ++v18;
        v20 += 2;
        v21 += 2;
      }

      while (v18 < v17);
    }

    v22 = atomic_load(this + 588);
    if ((v22 & 1) != 0 && *(this + 596) == 1)
    {
      v23 = *(this + 18);
      *&inTimeStamp.mSampleTime = *(this + 17);
      *&inTimeStamp.mRateScalar = v23;
      v24 = *(this + 20);
      *&inTimeStamp.mSMPTETime.mSubframes = *(this + 19);
      *&inTimeStamp.mSMPTETime.mHours = v24;
      ioActionFlags = 512;
      AudioUnitProcess(*(this + 87), &ioActionFlags, &inTimeStamp, a5, v9 + 2);
    }

    v25 = a3->mNumberBuffers;
    if (v25)
    {
      v26 = 0;
      v27 = 8 * v25;
      v28 = &v9[2].mBuffers[0].mData;
      do
      {
        v29 = *v28;
        v28 += 2;
        *(*(this + 84) + v26) = v29;
        v26 += 8;
      }

      while (v27 != v26);
    }

    v30 = a5 / *(this + 145);
    *(this + 143) = v30;
    ausdk::AUBase::SetParameter(this, 8u, 0, 0, v30);
    v31 = *(this + 133);
    v32 = *(this + 144);
    v33 = 0.0;
    v34 = 0.0;
    if (*(this + 548))
    {
      v35 = LoudnessMeter::Process(*(this + 81), *(this + 84), a5);
      v34 = 0.0;
      if (v31 > v32)
      {
        v36 = fmax(v35, 1.0e-15);
        v34 = fmaxf(*(this + 136) + (log10f(v36) * 10.0), 0.0);
      }
    }

    *(this + 138) = v34;
    ausdk::AUBase::SetParameter(this, 3u, 0, 0, v34);
    if (*(this + 556) == 1)
    {
      v37 = LoudnessMeter::Process(*(this + 82), *(this + 84), a5);
      if (v31 > v32)
      {
        v38 = fmax(v37, 1.0e-15);
        v33 = fmaxf(*(this + 136) + (log10f(v38) * 10.0), 0.0);
      }
    }

    *(this + 140) = v33;
    ausdk::AUBase::SetParameter(this, 5u, 0, 0, v33);
    v39 = 0.0;
    if (*(this + 564) == 1)
    {
      v40 = LoudnessMeter::Process(*(this + 83), *(this + 84), a5);
      if (v31 > v32)
      {
        v41 = fmax(v40, 1.0e-15);
        v39 = log10f(v41) * 10.0;
      }
    }

    *(this + 142) = v39;
    ausdk::AUBase::SetParameter(this, 7u, 0, 0, v39);
  }

  return 0;
}

uint64_t AUSPLMeter::SetParameter(AUSPLMeter *this, signed int a2, unsigned int a3, unsigned int a4, float a5, UInt32 a6)
{
  v33 = *MEMORY[0x1E69E9840];
  v11 = ausdk::AUBase::SetParameter(this, a2, a3, a4, a5);
  if (a3)
  {
    return v11;
  }

  if (a2 > 3)
  {
    switch(a2)
    {
      case 4:
        inValue = 0.0;
        (*(*this + 144))(this, 4, 0, 0, &inValue);
        *(this + 556) = inValue > 0.0;
        break;
      case 6:
        inValue = 0.0;
        (*(*this + 144))(this, 6, 0, 0, &inValue);
        *(this + 564) = inValue > 0.0;
        break;
      case 12:
        inValue = 0.0;
        (*(*this + 144))(this, 12, 0, 0, &inValue);
        AudioUnitSetParameter(*(this + 87), 5u, 0, a4, inValue, a6);
        break;
    }
  }

  else if (a2)
  {
    if (a2 != 1)
    {
      if (a2 == 2)
      {
        inValue = 0.0;
        (*(*this + 144))(this, 2, 0, 0, &inValue);
        *(this + 548) = inValue > 0.0;
      }

      return v11;
    }

    v16 = (this + 540);
    (*(*this + 144))(this, 1, 0, 0, this + 540);
    v17 = ((*(this + 134) + *(this + 135)) - *(this + 146)) + 13.0;
    *(this + 136) = v17;
    ausdk::AUBase::SetParameter(this, 0xBu, 0, 0, v17);
    if (AUSPLMeterLogScope(void)::once != -1)
    {
      dispatch_once(&AUSPLMeterLogScope(void)::once, &__block_literal_global_5147);
    }

    if (AUSPLMeterLogScope(void)::scope)
    {
      v18 = *AUSPLMeterLogScope(void)::scope;
      if (!*AUSPLMeterLogScope(void)::scope)
      {
        return v11;
      }
    }

    else
    {
      v18 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      v24 = *v16;
      inValue = 4.8152e-34;
      v26 = "AUSPLMeter.cpp";
      v27 = 1024;
      v28 = 538;
      v29 = 2048;
      v30 = v24;
      v21 = "%25s:%-5d Output Sensitivity: %f";
      v22 = v18;
      v23 = 28;
      goto LABEL_30;
    }
  }

  else
  {
    (*(*this + 144))(this, 0, 0, 0, this + 532);
    v13 = AUSPLMeter::MapVolume(*(this + 75), *(this + 76), *(this + 78), *(this + 79), *(this + 133));
    *(this + 134) = v13;
    ausdk::AUBase::SetParameter(this, 0xAu, 0, 0, v13);
    v14 = ((*(this + 134) + *(this + 135)) - *(this + 146)) + 13.0;
    *(this + 136) = v14;
    ausdk::AUBase::SetParameter(this, 0xBu, 0, 0, v14);
    if (AUSPLMeterLogScope(void)::once != -1)
    {
      dispatch_once(&AUSPLMeterLogScope(void)::once, &__block_literal_global_5147);
    }

    if (AUSPLMeterLogScope(void)::scope)
    {
      v15 = *AUSPLMeterLogScope(void)::scope;
      if (!*AUSPLMeterLogScope(void)::scope)
      {
        return v11;
      }
    }

    else
    {
      v15 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v19 = *(this + 133);
      v20 = *(this + 134);
      inValue = 4.8153e-34;
      v26 = "AUSPLMeter.cpp";
      v27 = 1024;
      v28 = 531;
      v29 = 2048;
      v30 = v19;
      v31 = 2048;
      v32 = v20;
      v21 = "%25s:%-5d Volume Input/Mapped: %f, %f";
      v22 = v15;
      v23 = 38;
LABEL_30:
      _os_log_impl(&dword_1DDB85000, v22, OS_LOG_TYPE_DEBUG, v21, &inValue, v23);
    }
  }

  return v11;
}

float AUSPLMeter::MapVolume(float *a1, uint64_t a2, uint64_t a3, uint64_t a4, float a5)
{
  if (*a1 >= a5)
  {
    return *a3;
  }

  if (*(a2 - 4) <= a5)
  {
    return *(a4 - 4);
  }

  v5 = (a2 - a1) >> 2;
  if (v5 < 2)
  {
    LODWORD(v5) = 1;
  }

  else
  {
    v6 = 1;
    while (a1[v6] < a5)
    {
      if (((a2 - a1) >> 2) == ++v6)
      {
        return *(a3 + 4 * v5) + ((*(a3 + 4 * (v5 - 1)) - *(a3 + 4 * v5)) * ((a5 - a1[v5]) / (a1[(v5 - 1)] - a1[v5])));
      }
    }

    LODWORD(v5) = v6;
  }

  return *(a3 + 4 * v5) + ((*(a3 + 4 * (v5 - 1)) - *(a3 + 4 * v5)) * ((a5 - a1[v5]) / (a1[(v5 - 1)] - a1[v5])));
}

uint64_t AUSPLMeter::SetProperty(AUSPLMeter *this, int a2, int a3, AudioUnitElement a4, CFTypeRef *a5, UInt32 a6)
{
  v80 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    return 4294956417;
  }

  result = 4294956417;
  if (a2 <= 64001)
  {
    if (a2 == 21)
    {
      if (a6 < 4)
      {
        return 4294956445;
      }

      result = 0;
      *(this + 528) = *a5 != 0;
      return result;
    }

    if (a2 != 64001)
    {
      return result;
    }

    v8 = *a5;
    if (!*a5)
    {
      goto LABEL_115;
    }

    CFRetain(*a5);
    cf = v8;
    v9 = CFGetTypeID(v8);
    if (v9 != CFDictionaryGetTypeID())
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
    }

    v10 = cf;
    if (!cf)
    {
LABEL_115:
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *v72 = 136315394;
        *&v72[4] = "AUSPLMeter.cpp";
        *&v72[12] = 1024;
        *&v72[14] = 437;
        _os_log_impl(&dword_1DDB85000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  Invalid value for kAUSPLMeterProperty_VolumeMap", v72, 0x12u);
      }

      v45 = __cxa_allocate_exception(0x10uLL);
      *v45 = &unk_1F593B0D8;
      v45[2] = 2003329396;
    }

    v11 = applesauce::CF::details::at_key<char const(&)[9]>(cf, "InputMap");
    if (v11)
    {
      applesauce::CF::convert_as<std::vector<float>,0>(v72, v11);
      v10 = cf;
    }

    else
    {
      v72[0] = 0;
      v73 = 0;
    }

    v14 = applesauce::CF::details::at_key<char const(&)[10]>(v10, "OutputMap");
    if (v14)
    {
      applesauce::CF::convert_as<std::vector<float>,0>(&v65, v14);
    }

    else
    {
      LOBYTE(v65) = 0;
      v67 = 0;
    }

    if (v73)
    {
      if (v67)
      {
        __src = 0;
        v63 = 0;
        v64 = 0;
        v15 = *v72;
        std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&__src, *v72, *&v72[8], (*&v72[8] - *v72) >> 2);
        v59 = 0;
        v60 = 0;
        v61 = 0;
        v16 = v65;
        std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v59, v65, v66, (v66 - v65) >> 2);
        v17 = v63 - __src;
        v18 = (v63 - __src) >> 2;
        v19 = v60 - v59;
        if (v18 == ((v60 - v59) >> 2))
        {
          if (v18 > 1)
          {
            if (!AUSPLMeter::ValidateMap(&__src))
            {
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                AUSPLMeter::ConvertToString(v70, &__src);
                v54 = v71 >= 0 ? v70 : v70[0];
                *buf = 136315650;
                v75 = "AUSPLMeter.cpp";
                v76 = 1024;
                v77 = 607;
                v78 = 2080;
                v79 = v54;
                _os_log_impl(&dword_1DDB85000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  Input volume curve is not monotonic. %s", buf, 0x1Cu);
                if (v71 < 0)
                {
                  operator delete(v70[0]);
                }
              }

              v55 = __cxa_allocate_exception(0x10uLL);
              *v55 = &unk_1F593B0D8;
              v55[2] = 2003329396;
            }

            if (!AUSPLMeter::ValidateMap(&v59))
            {
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                AUSPLMeter::ConvertToString(v70, &v59);
                v56 = v71 >= 0 ? v70 : v70[0];
                *buf = 136315650;
                v75 = "AUSPLMeter.cpp";
                v76 = 1024;
                v77 = 610;
                v78 = 2080;
                v79 = v56;
                _os_log_impl(&dword_1DDB85000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  Output volume curve is not monotonic. %s", buf, 0x1Cu);
                if (v71 < 0)
                {
                  operator delete(v70[0]);
                }
              }

              v57 = __cxa_allocate_exception(0x10uLL);
              *v57 = &unk_1F593B0D8;
              v57[2] = 2003329396;
            }

            v20 = (v17 >> 2);
            v21 = *(this + 75);
            if (v20 != (*(this + 76) - v21) >> 2)
            {
              std::vector<float>::resize(this + 75, v20);
              v21 = *(this + 75);
            }

            memcpy(v21, __src, 4 * v20);
            v22 = (v19 >> 2);
            v23 = *(this + 78);
            if (v22 != (*(this + 79) - v23) >> 2)
            {
              std::vector<float>::resize(this + 78, v22);
              v23 = *(this + 78);
            }

            memcpy(v23, v59, 4 * v22);
            v24 = *(this + 75);
            v25 = *(this + 76);
            if (v24 != v25)
            {
              v26 = v24 + 1;
              if (v24 + 1 != v25)
              {
                v27 = *v24;
                v28 = v24 + 1;
                do
                {
                  v29 = *v28++;
                  v30 = v29;
                  if (v29 < v27)
                  {
                    v27 = v30;
                    v24 = v26;
                  }

                  v26 = v28;
                }

                while (v28 != v25);
              }
            }

            *(this + 144) = *v24;
            AUSPLMeter::ConvertToString(v70, this + 75);
            if (AUSPLMeterLogScope(void)::once != -1)
            {
              dispatch_once(&AUSPLMeterLogScope(void)::once, &__block_literal_global_5147);
            }

            if (AUSPLMeterLogScope(void)::scope)
            {
              v31 = *AUSPLMeterLogScope(void)::scope;
              if (!*AUSPLMeterLogScope(void)::scope)
              {
                goto LABEL_53;
              }
            }

            else
            {
              v31 = MEMORY[0x1E69E9C10];
            }

            if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
            {
              v32 = v70;
              if (v71 < 0)
              {
                v32 = v70[0];
              }

              *buf = 136315650;
              v75 = "AUSPLMeter.cpp";
              v76 = 1024;
              v77 = 670;
              v78 = 2080;
              v79 = v32;
              _os_log_impl(&dword_1DDB85000, v31, OS_LOG_TYPE_DEBUG, "%25s:%-5d Volume Input Map: %s", buf, 0x1Cu);
            }

LABEL_53:
            AUSPLMeter::ConvertToString(__p, this + 78);
            if (AUSPLMeterLogScope(void)::once != -1)
            {
              dispatch_once(&AUSPLMeterLogScope(void)::once, &__block_literal_global_5147);
            }

            if (AUSPLMeterLogScope(void)::scope)
            {
              v33 = *AUSPLMeterLogScope(void)::scope;
              if (!*AUSPLMeterLogScope(void)::scope)
              {
LABEL_63:
                if (v69 < 0)
                {
                  operator delete(__p[0]);
                }

                if (v71 < 0)
                {
                  operator delete(v70[0]);
                }

                if (v59)
                {
                  v60 = v59;
                  operator delete(v59);
                }

                if (__src)
                {
                  v63 = __src;
                  operator delete(__src);
                }

                if (v16)
                {
                  operator delete(v16);
                }

                if (v15)
                {
                  operator delete(v15);
                }

                v35 = AUSPLMeter::MapVolume(*(this + 75), *(this + 76), *(this + 78), *(this + 79), *(this + 133));
                *(this + 134) = v35;
                ausdk::AUBase::SetParameter(this, 0xAu, 0, 0, v35);
                v36 = *(this + 78);
                v37 = *(this + 79);
                if (v36 != v37)
                {
                  v38 = v36 + 1;
                  if (v36 + 1 != v37)
                  {
                    v39 = *v36;
                    v40 = v36 + 1;
                    do
                    {
                      v41 = *v40++;
                      v42 = v41;
                      if (v39 < v41)
                      {
                        v39 = v42;
                        v36 = v38;
                      }

                      v38 = v40;
                    }

                    while (v40 != v37);
                  }
                }

                v43 = *v36;
                *(this + 146) = *v36;
                v44 = ((*(this + 134) + *(this + 135)) - v43) + 13.0;
                *(this + 136) = v44;
                ausdk::AUBase::SetParameter(this, 0xBu, 0, 0, v44);
                CFRelease(cf);
                return 0;
              }
            }

            else
            {
              v33 = MEMORY[0x1E69E9C10];
            }

            if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
            {
              v34 = __p;
              if (v69 < 0)
              {
                v34 = __p[0];
              }

              *buf = 136315650;
              v75 = "AUSPLMeter.cpp";
              v76 = 1024;
              v77 = 673;
              v78 = 2080;
              v79 = v34;
              _os_log_impl(&dword_1DDB85000, v33, OS_LOG_TYPE_DEBUG, "%25s:%-5d Volume Output Map: %s", buf, 0x1Cu);
            }

            goto LABEL_63;
          }

          if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
LABEL_98:
            v53 = __cxa_allocate_exception(0x10uLL);
            *v53 = &unk_1F593B0D8;
            v53[2] = 2003329396;
          }

          *buf = 136315650;
          v75 = "AUSPLMeter.cpp";
          v76 = 1024;
          v77 = 603;
          v78 = 1024;
          LODWORD(v79) = v18;
          v50 = MEMORY[0x1E69E9C10];
          v51 = "%25s:%-5d  Not enough volume map points. Mapping requires 2 or more points. Only found %d.";
          v52 = 24;
        }

        else
        {
          if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_98;
          }

          *buf = 136315394;
          v75 = "AUSPLMeter.cpp";
          v76 = 1024;
          v77 = 602;
          v50 = MEMORY[0x1E69E9C10];
          v51 = "%25s:%-5d  Volume curve steps must match";
          v52 = 18;
        }

        _os_log_impl(&dword_1DDB85000, v50, OS_LOG_TYPE_ERROR, v51, buf, v52);
        goto LABEL_98;
      }

      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
LABEL_92:
        v49 = __cxa_allocate_exception(0x10uLL);
        *v49 = &unk_1F593B0D8;
        v49[2] = 2003329396;
      }

      *buf = 136315394;
      v75 = "AUSPLMeter.cpp";
      v76 = 1024;
      v77 = 593;
      v47 = MEMORY[0x1E69E9C10];
      v48 = "%25s:%-5d  Output volume curve cannot be null";
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_92;
      }

      *buf = 136315394;
      v75 = "AUSPLMeter.cpp";
      v76 = 1024;
      v77 = 592;
      v47 = MEMORY[0x1E69E9C10];
      v48 = "%25s:%-5d  Input volume curve cannot be null";
    }

    _os_log_impl(&dword_1DDB85000, v47, OS_LOG_TYPE_ERROR, v48, buf, 0x12u);
    goto LABEL_92;
  }

  if (a2 == 64002)
  {
    v13 = *(this + 87);

    return AudioUnitSetProperty(v13, 0, 0, a4, a5, a6);
  }

  else if (a2 == 64003)
  {
    v12 = *a5;
    *(this + 148) = *a5;
    if (v12 == 8228 || v12 == 8212)
    {
      result = 0;
      atomic_store(1u, this + 588);
    }

    else
    {
      result = 0;
      atomic_store(0, this + 588);
    }
  }

  return result;
}

void sub_1DDD17170(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, void *__p, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, uint64_t a32, char a33)
{
  if (a2)
  {
    if (__p)
    {
      a12 = __p;
      operator delete(__p);
    }

    if (a14)
    {
      a15 = a14;
      operator delete(a14);
    }

    if (a17)
    {
      operator delete(a17);
    }

    if (a33 == 1 && a30)
    {
      operator delete(a30);
    }

    applesauce::CF::DictionaryRef::~DictionaryRef(&a10);
    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x1DDD16670);
  }

  _Unwind_Resume(exception_object);
}

BOOL AUSPLMeter::ValidateMap(float **a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v1 = *a1;
  v2 = a1[1];
  if (**a1 <= *(v2 - 1))
  {
    goto LABEL_19;
  }

  if (AUSPLMeterLogScope(void)::once != -1)
  {
    dispatch_once(&AUSPLMeterLogScope(void)::once, &__block_literal_global_5147);
  }

  if (!AUSPLMeterLogScope(void)::scope)
  {
    v4 = MEMORY[0x1E69E9C10];
    goto LABEL_8;
  }

  v4 = *AUSPLMeterLogScope(void)::scope;
  if (*AUSPLMeterLogScope(void)::scope)
  {
LABEL_8:
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      AUSPLMeter::ConvertToString(__p, a1);
      v5 = v18 >= 0 ? __p : __p[0];
      *buf = 136315650;
      v20 = "AUSPLMeter.cpp";
      v21 = 1024;
      v22 = 632;
      v23 = 2080;
      v24 = v5;
      _os_log_impl(&dword_1DDB85000, v4, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Volume Map component is not in increasing order: %s. Reversing the order.", buf, 0x1Cu);
      if (v18 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  v1 = *a1;
  v2 = a1[1];
  if (*a1 != v2)
  {
    v6 = v2 - 1;
    if (v2 - 1 > v1)
    {
      v7 = v1 + 1;
      do
      {
        v8 = *(v7 - 1);
        *(v7 - 1) = *v6;
        *v6-- = v8;
      }

      while (v7++ < v6);
    }
  }

LABEL_19:
  v10 = v2 - v1;
  if (v10 < 2)
  {
    return 1;
  }

  v12 = 2;
  v13 = 1;
  do
  {
    v14 = v1[v12 - 2];
    v15 = v1[v13];
    result = v14 <= v15;
    v13 = v12++;
  }

  while (v14 <= v15 && v10 > v13);
  return result;
}

uint64_t AUSPLMeter::ConvertToString(_BYTE *a1, void *a2)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v10);
  if (a2[1] != *a2)
  {
    v4 = 0;
    do
    {
      if (v4)
      {
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v11, ", ", 2);
      }

      std::ostream::operator<<();
      ++v4;
    }

    while (v4 < (a2[1] - *a2) >> 2);
  }

  if ((v18 & 0x10) != 0)
  {
    v6 = v17;
    if (v17 < v14)
    {
      v17 = v14;
      v6 = v14;
    }

    locale = v13[4].__locale_;
  }

  else
  {
    if ((v18 & 8) == 0)
    {
      v5 = 0;
      a1[23] = 0;
      goto LABEL_19;
    }

    locale = v13[1].__locale_;
    v6 = v13[3].__locale_;
  }

  v5 = v6 - locale;
  if ((v6 - locale) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v5 >= 0x17)
  {
    operator new();
  }

  a1[23] = v5;
  if (v5)
  {
    memmove(a1, locale, v5);
  }

LABEL_19:
  a1[v5] = 0;
  v10[0] = *MEMORY[0x1E69E54D8];
  v8 = *(MEMORY[0x1E69E54D8] + 72);
  *(v10 + *(v10[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v11 = v8;
  v12 = MEMORY[0x1E69E5548] + 16;
  if (v16 < 0)
  {
    operator delete(__p);
  }

  v12 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v13);
  std::iostream::~basic_iostream();
  return MEMORY[0x1E12BD050](&v19);
}

void sub_1DDD176F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a10);
  MEMORY[0x1E12BD050](&a26);
  _Unwind_Resume(a1);
}

uint64_t AUSPLMeter::GetProperty(AUSPLMeter *this, int a2, int a3, AudioUnitElement a4, CFDictionaryRef *outData)
{
  if (a3)
  {
    return 4294956417;
  }

  result = 4294956417;
  if (a2 <= 64001)
  {
    if (a2 != 21)
    {
      if (a2 == 64001)
      {
        v15[0] = 0;
        v15[1] = 0;
        *ioDataSize = v15;
        std::string::basic_string[abi:ne200100]<0>(__p, "InputMap");
        v16 = __p;
        v8 = std::__tree<std::__value_type<std::string,std::vector<float>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<float>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<float>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(ioDataSize, __p) + 7;
        if (v8 != (this + 600))
        {
          std::vector<unsigned int>::__assign_with_size[abi:ne200100]<unsigned int *,unsigned int *>(v8, *(this + 75), *(this + 76), (*(this + 76) - *(this + 75)) >> 2);
        }

        if (v13 < 0)
        {
          operator delete(__p[0]);
        }

        std::string::basic_string[abi:ne200100]<0>(__p, "OutputMap");
        v16 = __p;
        v9 = std::__tree<std::__value_type<std::string,std::vector<float>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<float>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<float>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(ioDataSize, __p) + 7;
        if (v9 != (this + 624))
        {
          std::vector<unsigned int>::__assign_with_size[abi:ne200100]<unsigned int *,unsigned int *>(v9, *(this + 78), *(this + 79), (*(this + 79) - *(this + 78)) >> 2);
        }

        if (v13 < 0)
        {
          operator delete(__p[0]);
        }

        v10 = applesauce::CF::details::make_CFDictionaryRef<std::string,std::vector<float>>(ioDataSize);
        __p[0] = v10;
        CFRetain(v10);
        *outData = v10;
        CFRelease(v10);
        std::__tree<std::__value_type<std::string,std::vector<float>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<float>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<float>>>>::destroy(v15[0]);
        return 0;
      }

      return result;
    }

    result = 0;
    v11 = *(this + 528);
LABEL_20:
    *outData = v11;
    return result;
  }

  if (a2 == 64002)
  {
    ioDataSize[0] = 0;
    return AudioUnitGetProperty(*(this + 87), 0, 0, a4, outData, ioDataSize);
  }

  if (a2 == 64003)
  {
    result = 0;
    v11 = *(this + 148);
    goto LABEL_20;
  }

  return result;
}

void sub_1DDD178C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17)
{
  applesauce::CF::DictionaryRef::~DictionaryRef(&__p);
  std::__tree<std::__value_type<std::string,std::vector<float>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<float>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<float>>>>::destroy(a17);
  _Unwind_Resume(a1);
}

void *std::__tree<std::__value_type<std::string,std::vector<float>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<float>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<float>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v4 = v2;
      if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, v2 + 4) & 0x80) == 0)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_7;
      }
    }

    if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v4 + 4, a2) & 0x80) == 0)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

CFDictionaryRef applesauce::CF::details::make_CFDictionaryRef<std::string,std::vector<float>>(void *a1)
{
  v18 = 0;
  v19 = 0uLL;
  std::vector<applesauce::CF::TypeRefPair>::reserve(&v18, a1[2]);
  v4 = *a1;
  v2 = a1 + 1;
  v3 = v4;
  if (v4 != v2)
  {
    v5 = v19;
    do
    {
      if (v5 >= *(&v19 + 1))
      {
        v6 = (v5 - v18) >> 4;
        if ((v6 + 1) >> 60)
        {
          std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
        }

        v7 = (*(&v19 + 1) - v18) >> 3;
        if (v7 <= v6 + 1)
        {
          v7 = v6 + 1;
        }

        if (*(&v19 + 1) - v18 >= 0x7FFFFFFFFFFFFFF0uLL)
        {
          v8 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v8 = v7;
        }

        v23 = &v18;
        if (v8)
        {
          std::allocator<applesauce::CF::TypeRefPair>::allocate_at_least[abi:ne200100](v8);
        }

        v20 = 0;
        v21 = 16 * v6;
        v22 = (16 * v6);
        applesauce::CF::TypeRefPair::TypeRefPair<std::string const&,std::vector<float> const&>((16 * v6), v3 + 32, v3 + 7);
        *&v22 = v22 + 16;
        v9 = &v18[v21 - v19];
        std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<applesauce::CF::TypeRefPair>,applesauce::CF::TypeRefPair*>(&v18, v18, v19, v9);
        v10 = v18;
        v11 = *(&v19 + 1);
        v18 = v9;
        v17 = v22;
        v19 = v22;
        *&v22 = v10;
        *(&v22 + 1) = v11;
        v20 = v10;
        v21 = v10;
        std::__split_buffer<applesauce::CF::TypeRefPair>::~__split_buffer(&v20);
        v5 = v17;
      }

      else
      {
        applesauce::CF::TypeRefPair::TypeRefPair<std::string const&,std::vector<float> const&>(v5, v3 + 32, v3 + 7);
        v5 += 2;
      }

      *&v19 = v5;
      v12 = v3[1];
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
          v13 = v3[2];
          v14 = *v13 == v3;
          v3 = v13;
        }

        while (!v14);
      }

      v3 = v13;
    }

    while (v13 != v2);
  }

  CFDictionaryRef = applesauce::CF::details::make_CFDictionaryRef(&v18);
  v20 = &v18;
  std::vector<applesauce::CF::TypeRefPair>::__destroy_vector::operator()[abi:ne200100](&v20);
  return CFDictionaryRef;
}

void sub_1DDD17BC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, void **a15)
{
  a15 = &a12;
  std::vector<applesauce::CF::TypeRefPair>::__destroy_vector::operator()[abi:ne200100](&a15);
  _Unwind_Resume(a1);
}

void std::__tree<std::__value_type<std::string,std::vector<float>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<float>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<float>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::string,std::vector<float>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<float>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<float>>>>::destroy(*a1);
    std::__tree<std::__value_type<std::string,std::vector<float>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<float>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<float>>>>::destroy(a1[1]);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::vector<float>>,0>((a1 + 4));

    operator delete(a1);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::vector<float>>,0>(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }

  if (*(a1 + 23) < 0)
  {
    v3 = *a1;

    operator delete(v3);
  }
}

CFStringRef *applesauce::CF::TypeRefPair::TypeRefPair<std::string const&,std::vector<float> const&>(CFStringRef *a1, const UInt8 *a2, float **a3)
{
  v5 = *(a2 + 1);
  if (*(a2 + 23) >= 0)
  {
    v6 = a2[23];
  }

  else
  {
    a2 = *a2;
    v6 = v5;
  }

  v7 = CFStringCreateWithBytes(0, a2, v6, 0x8000100u, 0);
  *a1 = v7;
  if (!v7)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  a1[1] = applesauce::CF::details::make_CFArrayRef<float>(a3);
  return a1;
}

uint64_t AUSPLMeter::GetPropertyInfo(AUSPLMeter *this, int a2, int a3, unsigned int a4, unsigned int *a5, BOOL *a6)
{
  if (a3)
  {
    return 4294956417;
  }

  v7 = 4;
  result = 4294956417;
  if (a2 <= 64001)
  {
    if (a2 != 21)
    {
      if (a2 != 64001)
      {
        return result;
      }

      goto LABEL_10;
    }

    goto LABEL_11;
  }

  if (a2 == 64002)
  {
LABEL_10:
    v7 = 8;
    goto LABEL_11;
  }

  if (a2 == 64003)
  {
LABEL_11:
    result = 0;
    *a6 = 1;
    *a5 = v7;
  }

  return result;
}

uint64_t AUSPLMeter::Reset(AUSPLMeter *this)
{
  v12 = *MEMORY[0x1E69E9840];
  v1 = *(this + 87);
  if (v1)
  {
    v2 = AudioUnitReset(v1, 0, 0);
    if (v2)
    {
      v3 = v2;
      if (AUSPLMeterLogScope(void)::once != -1)
      {
        dispatch_once(&AUSPLMeterLogScope(void)::once, &__block_literal_global_5147);
      }

      if (AUSPLMeterLogScope(void)::scope)
      {
        v4 = *AUSPLMeterLogScope(void)::scope;
        if (!*AUSPLMeterLogScope(void)::scope)
        {
          return 0;
        }
      }

      else
      {
        v4 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v6 = 136315650;
        v7 = "AUSPLMeter.cpp";
        v8 = 1024;
        v9 = 246;
        v10 = 1024;
        v11 = v3;
        _os_log_impl(&dword_1DDB85000, v4, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Embedded VarEQ fails with error %u", &v6, 0x18u);
      }
    }
  }

  return 0;
}

uint64_t AUSPLMeter::Initialize(AUSPLMeter *this)
{
  Element = ausdk::AUScope::GetElement((this + 80), 0);
  if (!Element || (v3 = *(Element + 96), *&v11.mSampleRate = *(Element + 80), *&v11.mBytesPerPacket = v3, *&v11.mBitsPerChannel = *(Element + 112), (v4 = ausdk::AUScope::GetElement((this + 128), 0)) == 0))
  {
    ausdk::Throw(0xFFFFD583);
  }

  v6 = *(v4 + 96);
  *&v10.mSampleRate = *(v4 + 80);
  *&v10.mBytesPerPacket = v6;
  *&v10.mBitsPerChannel = *(v4 + 112);
  if (v11.mSampleRate != v10.mSampleRate)
  {
    return 4294956428;
  }

  if (v11.mFormatID != v10.mFormatID)
  {
    return 4294956428;
  }

  if (v11.mBytesPerPacket != v10.mBytesPerPacket)
  {
    return 4294956428;
  }

  if (v11.mFramesPerPacket != v10.mFramesPerPacket)
  {
    return 4294956428;
  }

  mChannelsPerFrame = v11.mChannelsPerFrame;
  if (v11.mChannelsPerFrame != v10.mChannelsPerFrame || v11.mBitsPerChannel != v10.mBitsPerChannel)
  {
    return 4294956428;
  }

  v8 = CA::Implementation::EquivalentFormatFlags(&v11, &v10, v5);
  result = 4294956428;
  if (mChannelsPerFrame <= 2 && v8)
  {
    std::vector<float *>::resize(this + 84, mChannelsPerFrame);
    operator new();
  }

  return result;
}

uint64_t *std::unique_ptr<LoudnessMeter>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *(v2 + 96);
    if (v3)
    {
      *(v2 + 104) = v3;
      operator delete(v3);
    }

    v5 = (v2 + 72);
    std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v5);
    DspLib::Biquad::SetupWrapper::destroyvDSPSetup((v2 + 48));
    v4 = *(v2 + 24);
    if (v4)
    {
      *(v2 + 32) = v4;
      operator delete(v4);
    }

    return MEMORY[0x1E12BD160](v2, 0x10A0C40D09BC750);
  }

  return result;
}

void *CA::AudioBuffersBase::AudioBuffersBase(CA::AudioBuffersBase *this, const AudioStreamBasicDescription *a2)
{
  v3 = ExtendedAudioBufferList_CreateWithFormat();

  return CA::AudioBuffersBase::AudioBuffersBase(this, v3);
}

uint64_t *std::unique_ptr<CA::AudioBuffersDeprecated>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    ExtendedAudioBufferList_Destroy();

    JUMPOUT(0x1E12BD160);
  }

  return result;
}

OpaqueAudioComponentInstance *AUSPLMeter::InitializeVarEQ(AudioUnit *this)
{
  v25 = *MEMORY[0x1E69E9840];
  AudioUnitUninitialize(this[87]);
  Element = ausdk::AUScope::GetElement((this + 10), 0);
  if (!Element || (v3 = *(Element + 96), inData[0] = *(Element + 80), inData[1] = v3, v18 = *(Element + 112), (v4 = ausdk::AUScope::GetElement((this + 16), 0)) == 0))
  {
    ausdk::Throw(0xFFFFD583);
  }

  v5 = *(v4 + 96);
  v15[0] = *(v4 + 80);
  v15[1] = v5;
  v16 = *(v4 + 112);
  result = AudioUnitSetProperty(this[87], 8u, 1u, 0, inData, 0x28u);
  if (!result)
  {
    result = AudioUnitSetProperty(this[87], 8u, 2u, 0, v15, 0x28u);
    if (!result)
    {
      result = this[87];
      if (result)
      {
        result = AudioUnitInitialize(result);
        if (!result)
        {
          *(this + 596) = 1;
          if ((caulk::build::detail::get_kind(result) & 1) == 0)
          {
            return 0;
          }

          CFPreferencesAppSynchronize(@"com.apple.coreaudio");
          v14 = 0;
          AppBooleanValue = CACFPreferencesGetAppBooleanValue(@"auspl_lc_menu", @"com.apple.coreaudio", &v14);
          if (!v14)
          {
            return 0;
          }

          if (!AppBooleanValue)
          {
            return 0;
          }

          CFPreferencesAppSynchronize(@"com.apple.MobileBluetooth.debug");
          v8 = CFPreferencesCopyAppValue(@"A2DP", @"com.apple.MobileBluetooth.debug");
          if (!v8)
          {
            return 0;
          }

          v9 = v8;
          *(this + 596) = 0;
          if (CFDictionaryContainsKey(v8, @"LoudnessCompensationEQEnable"))
          {
            Value = CFDictionaryGetValue(v9, @"LoudnessCompensationEQEnable");
            *(this + 596) = CFBooleanGetValue(Value) != 0;
          }

          if (AUSPLMeterLogScope(void)::once != -1)
          {
            dispatch_once(&AUSPLMeterLogScope(void)::once, &__block_literal_global_5147);
          }

          if (AUSPLMeterLogScope(void)::scope)
          {
            v11 = *AUSPLMeterLogScope(void)::scope;
            if (!*AUSPLMeterLogScope(void)::scope)
            {
LABEL_24:
              CFRelease(v9);
              return 0;
            }
          }

          else
          {
            v11 = MEMORY[0x1E69E9C10];
          }

          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            v12 = "NO";
            v13 = *(this + 596);
            v20 = "AUSPLMeter.cpp";
            *buf = 136315650;
            if (v13)
            {
              v12 = "YES";
            }

            v21 = 1024;
            v22 = 309;
            v23 = 2080;
            v24 = v12;
            _os_log_impl(&dword_1DDB85000, v11, OS_LOG_TYPE_DEFAULT, "%25s:%-5d LoudnessCompensationEQEnable defaults-preferences is enabled: %s", buf, 0x1Cu);
          }

          goto LABEL_24;
        }
      }
    }
  }

  return result;
}

void *CA::AudioBuffersBase::AudioBuffersBase(void *a1, uint64_t a2)
{
  *a1 = a2;
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "ExtendedAudioBufferList_CreateWithFormat failed");
  }

  ExtendedAudioBufferList_Prepare();
  return a1;
}

void AUSPLMeter::~AUSPLMeter(AUSPLMeter *this)
{
  AUSPLMeter::~AUSPLMeter(this);

  JUMPOUT(0x1E12BD160);
}

{
  v2 = &unk_1F59204E8;
  *this = &unk_1F59204E8;
  v3 = *(this + 87);
  if (v3)
  {
    AudioComponentInstanceDispose(v3);
    *(this + 87) = 0;
    v2 = *this;
  }

  v2[8](this);
  std::unique_ptr<CA::AudioBuffersDeprecated>::reset[abi:ne200100](this + 88, 0);
  v4 = *(this + 84);
  if (v4)
  {
    *(this + 85) = v4;
    operator delete(v4);
  }

  std::unique_ptr<LoudnessMeter>::reset[abi:ne200100](this + 83, 0);
  std::unique_ptr<LoudnessMeter>::reset[abi:ne200100](this + 82, 0);
  std::unique_ptr<LoudnessMeter>::reset[abi:ne200100](this + 81, 0);
  v5 = *(this + 78);
  if (v5)
  {
    *(this + 79) = v5;
    operator delete(v5);
  }

  v6 = *(this + 75);
  if (v6)
  {
    *(this + 76) = v6;
    operator delete(v6);
  }

  ausdk::AUBase::~AUBase(this);
}

void ULDATFeaturesChain::GetSuperFeatureDimensions(int a1, std::vector<unsigned int> *this)
{
  std::vector<unsigned int>::resize(this, 3uLL);
  begin = this->__begin_;
  end = this->__end_;
  if (this->__begin_ != end)
  {

    memset_pattern16(begin, &unk_1DE09E860, end - begin);
  }
}

uint64_t ULDATFeaturesChain::ComputeAllFeaturesFromAudio(uint64_t a1, uint64_t a2, UInt32 a3, Float64 *a4, uint64_t a5, void *a6)
{
  inInputBufferLists[1] = *MEMORY[0x1E69E9840];
  if (*(a1 + 16) != a3)
  {
    __assert_rtn("ComputeAllFeaturesFromAudio", "ULDATFeaturesChain.cpp", 322, "numAudioSamples == mAudioBufferSize");
  }

  inTimeStamp.mSampleTime = *a4;
  memset(&inTimeStamp.mHostTime, 0, 24);
  *&inTimeStamp.mFlags = 1;
  Biquad::Process_Float32(*(a1 + 56), *(a2 + 16), *(a5 + 16), a3);
  ioActionFlags = 512;
  ioOutputBufferLists = a5;
  inInputBufferLists[0] = a5;
  v11 = AudioUnitProcessMultiple(*(a1 + 64), &ioActionFlags, &inTimeStamp, a3, 1u, inInputBufferLists, 1u, &ioOutputBufferLists);
  if (v11)
  {
    v12 = v11;
    if (EndpointVAD2LogScope(void)::once != -1)
    {
      dispatch_once(&EndpointVAD2LogScope(void)::once, &__block_literal_global_6);
    }

    if (EndpointVAD2LogScope(void)::scope)
    {
      v13 = *EndpointVAD2LogScope(void)::scope;
      if (!*EndpointVAD2LogScope(void)::scope)
      {
        return v12;
      }
    }

    else
    {
      v13 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v37 = "ULDATFeaturesChain.cpp";
      v38 = 1024;
      v39 = 355;
      v15 = "%25s:%-5d Noise suppressor failed to process.";
LABEL_46:
      _os_log_impl(&dword_1DDB85000, v13, OS_LOG_TYPE_ERROR, v15, buf, 0x12u);
      return v12;
    }

    return v12;
  }

  v14 = AudioUnitProcess(*(a1 + 72), &ioActionFlags, &inTimeStamp, a3, a5);
  if (!v14)
  {
    v16 = a6[3];
    if (a6[4] != v16)
    {
      AudioUnitGetParameter(*(a1 + 64), 1u, 0, 0, v16);
      v17 = a6[3];
      if ((a6[4] - v17) > 4)
      {
        AudioUnitGetParameter(*(a1 + 64), 2u, 0, 0, (v17 + 4));
        v18 = a6[3];
        if ((a6[4] - v18) > 8)
        {
          AudioUnitGetParameter(*(a1 + 72), 0x3Du, 0, 0, (v18 + 8));
          v19 = a6[3];
          if ((a6[4] - v19) > 0xC)
          {
            AudioUnitGetParameter(*(a1 + 72), 0x3Cu, 0, 0, (v19 + 12));
            v20 = a6[3];
            v21 = a6[4] - v20;
            if (v21 <= 0x1C)
            {
              goto LABEL_48;
            }

            *(v20 + 28) = 1056964608;
            if (v21 != 32)
            {
              AudioUnitGetParameter(*(a1 + 72), 0x3Bu, 0, 0, (v20 + 32));
              v22 = a6[3];
              if ((a6[4] - v22) > 0x24)
              {
                AudioUnitGetParameter(*(a1 + 72), 0x37u, 0, 0, (v22 + 36));
                v23 = a6[3];
                v24 = a6[4] - v23;
                if (v24 && (v24 >> 2) > 4)
                {
                  v25 = 0.0;
                  v26 = *v23 <= 0.5 ? 0.0 : 1.0;
                  v23[4] = v26;
                  if ((v24 >> 2) > 8)
                  {
                    if (v23[2] > v23[8])
                    {
                      v25 = 1.0;
                    }

                    v23[5] = v25;
                    if (v24 != 36)
                    {
                      v27 = 0.0;
                      if (v23[3] > v23[9])
                      {
                        v27 = 1.0;
                      }

                      v23[6] = v27;
                      v28 = a6[7];
                      v29 = a6[8] - v28;
                      if (v29)
                      {
                        v30 = *(a1 + 40) * a4[1];
                        v31 = v29 >> 4;
                        v32 = v30 + 0.0;
                        *v28 = v30 + 0.0;
                        v28[1] = (v30 + 0.0) / *(a1 + 40);
                        if ((v29 >> 4) > 1)
                        {
                          v28[2] = v32;
                          v28[3] = v32 / *(a1 + 40);
                          if (v29 != 32)
                          {
                            v28[4] = v32;
                            v28[5] = v32 / *(a1 + 40);
                            if (v31 > 3)
                            {
                              v28[6] = v32;
                              v28[7] = v32 / *(a1 + 40);
                              if (v31 > 7)
                              {
                                v28[14] = v30;
                                v28[15] = v30 / *(a1 + 40);
                                if (v29 != 128)
                                {
                                  v28[16] = v30;
                                  v28[17] = v30 / *(a1 + 40);
                                  if (v31 > 9)
                                  {
                                    v12 = 0;
                                    v28[18] = v30;
                                    v28[19] = v30 / *(a1 + 40);
                                    v28[8] = v32;
                                    v28[9] = v32 / *(a1 + 40);
                                    v28[10] = v32;
                                    v28[11] = v32 / *(a1 + 40);
                                    v28[12] = v32;
                                    v28[13] = v32 / *(a1 + 40);
                                    ++*(a1 + 12);
                                    return v12;
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }

LABEL_48:
                __assert_rtn("operator[]", "FeatureTimeSeries.h", 91, "index < mArray.size()");
              }
            }
          }
        }
      }
    }

    __assert_rtn("PointerAt", "FeatureTimeSeries.h", 70, "index < mArray.size()");
  }

  v12 = v14;
  if (EndpointVAD2LogScope(void)::once != -1)
  {
    dispatch_once(&EndpointVAD2LogScope(void)::once, &__block_literal_global_6);
  }

  if (EndpointVAD2LogScope(void)::scope)
  {
    v13 = *EndpointVAD2LogScope(void)::scope;
    if (!*EndpointVAD2LogScope(void)::scope)
    {
      return v12;
    }
  }

  else
  {
    v13 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v37 = "ULDATFeaturesChain.cpp";
    v38 = 1024;
    v39 = 367;
    v15 = "%25s:%-5d AGC failed to process.";
    goto LABEL_46;
  }

  return v12;
}

uint64_t ULDATFeaturesChain::Uninitialize(AudioUnit *this)
{
  v2 = AudioUnitUninitialize(this[8]);
  if (!v2)
  {
    v2 = AudioUnitUninitialize(this[9]);
    if (!v2)
    {
      *(this + 8) = 0;
    }

    v3 = this[9];
    if (v3)
    {
      AudioComponentInstanceDispose(v3);
      this[9] = 0;
    }

    v4 = this[8];
    if (v4)
    {
      AudioComponentInstanceDispose(v4);
      this[8] = 0;
    }

    *(this + 3) = 0;
  }

  return v2;
}

void ULDATFeaturesChain::Initialize(AudioUnit *a1, void *a2, const __CFDictionary *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  (*(*a1 + 3))(a1);
  FeaturesDSPChain::InitializeInputOutputBufferSizes(a1, a2, a3, 10);
  BYTE1(inDesc.componentFlags) = 0;
  HIWORD(inDesc.componentFlags) = 0;
  inDesc.componentFlagsMask = 0;
  strcpy(&inDesc, "xfuasncolppa");
  Next = AudioComponentFindNext(0, &inDesc);
  if (AudioComponentInstanceNew(Next, a1 + 8) || (valuePtr.componentFlagsMask = 0, *&valuePtr.componentManufacturer = 0, *&valuePtr.componentType = 0x6167633261756678, v7 = AudioComponentFindNext(0, &valuePtr), AudioComponentInstanceNew(v7, a1 + 9)))
  {
    if (EndpointVAD2LogScope(void)::once != -1)
    {
      dispatch_once(&EndpointVAD2LogScope(void)::once, &__block_literal_global_6);
    }

    if (EndpointVAD2LogScope(void)::scope)
    {
      v8 = *EndpointVAD2LogScope(void)::scope;
      if (!*EndpointVAD2LogScope(void)::scope)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v8 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      inDesc.componentType = 136315394;
      *&inDesc.componentSubType = "ULDATFeaturesChain.cpp";
      LOWORD(inDesc.componentFlags) = 1024;
      *(&inDesc.componentFlags + 2) = 36;
      _os_log_impl(&dword_1DDB85000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to instantiate internal audio units.", &inDesc, 0x12u);
    }
  }

LABEL_11:
  Value = CFDictionaryGetValue(a3, @"AUOneChannelNSProperties");
  v10 = CFDictionaryGetValue(a3, @"AUAGCV2Properties");
  if (AudioUnitSetProperty(a1[8], 8u, 1u, 0, a2, 0x28u) || AudioUnitSetProperty(a1[8], 8u, 2u, 0, a2, 0x28u) || (inDesc.componentType = 1, AudioUnitSetProperty(a1[8], 0xE74u, 0, 0, &inDesc, 4u)) || AudioUnitSetProperty(a1[8], 0xEu, 0, 0, a1 + 2, 4u) || ULDATFeaturesChain::SetParametersForNSV3(a1, Value) || AudioUnitSetProperty(a1[9], 8u, 1u, 0, a2, 0x28u) || AudioUnitSetProperty(a1[9], 8u, 2u, 0, a2, 0x28u) || AudioUnitSetProperty(a1[9], 0xEu, 0, 0, a1 + 2, 4u) || ULDATFeaturesChain::SetParametersForAGCV2(a1, v10))
  {
    if (EndpointVAD2LogScope(void)::once != -1)
    {
      dispatch_once(&EndpointVAD2LogScope(void)::once, &__block_literal_global_6);
    }

    if (EndpointVAD2LogScope(void)::scope)
    {
      v11 = *EndpointVAD2LogScope(void)::scope;
      if (!*EndpointVAD2LogScope(void)::scope)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v11 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      inDesc.componentType = 136315394;
      *&inDesc.componentSubType = "ULDATFeaturesChain.cpp";
      LOWORD(inDesc.componentFlags) = 1024;
      *(&inDesc.componentFlags + 2) = 45;
      _os_log_impl(&dword_1DDB85000, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to set up internal audio units.", &inDesc, 0x12u);
    }
  }

LABEL_28:
  if (AudioUnitInitialize(a1[8]) || AudioUnitInitialize(a1[9]))
  {
    if (EndpointVAD2LogScope(void)::once != -1)
    {
      dispatch_once(&EndpointVAD2LogScope(void)::once, &__block_literal_global_6);
    }

    if (EndpointVAD2LogScope(void)::scope)
    {
      v12 = *EndpointVAD2LogScope(void)::scope;
      if (!*EndpointVAD2LogScope(void)::scope)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v12 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      inDesc.componentType = 136315394;
      *&inDesc.componentSubType = "ULDATFeaturesChain.cpp";
      LOWORD(inDesc.componentFlags) = 1024;
      *(&inDesc.componentFlags + 2) = 52;
      _os_log_impl(&dword_1DDB85000, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to initialize internal audio units.", &inDesc, 0x12u);
    }
  }

LABEL_38:
  *&valuePtr.componentType = 0;
  v13 = CFDictionaryGetValue(a3, @"HighpassFilterCutoffHz");
  if (CFNumberGetValue(v13, kCFNumberFloat64Type, &valuePtr))
  {
    goto LABEL_39;
  }

  if (EndpointVAD2LogScope(void)::once != -1)
  {
    dispatch_once(&EndpointVAD2LogScope(void)::once, &__block_literal_global_6);
  }

  if (EndpointVAD2LogScope(void)::scope)
  {
    v14 = *EndpointVAD2LogScope(void)::scope;
    if (!*EndpointVAD2LogScope(void)::scope)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v14 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    inDesc.componentType = 136315394;
    *&inDesc.componentSubType = "ULDATFeaturesChain.cpp";
    LOWORD(inDesc.componentFlags) = 1024;
    *(&inDesc.componentFlags + 2) = 60;
    _os_log_impl(&dword_1DDB85000, v14, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to read ULDAT highpass filter cutoff frequency from plist.", &inDesc, 0x12u);
  }

LABEL_39:
  operator new();
}

double FeaturesDSPChain::InitializeInputOutputBufferSizes(uint64_t a1, void *a2, CFDictionaryRef theDict, int a4)
{
  Value = CFDictionaryGetValue(theDict, @"AudioSampleRateHz");
  CFNumberGetValue(Value, kCFNumberFloat64Type, (a1 + 32));
  *a2 = *(a1 + 32);
  v9 = CFDictionaryGetValue(theDict, @"AudioBufferSizeSamples");
  CFNumberGetValue(v9, kCFNumberSInt32Type, (a1 + 16));
  v10 = CFDictionaryGetValue(theDict, @"AudioAnalysisSizeSamples");
  CFNumberGetValue(v10, kCFNumberSInt32Type, (a1 + 20));
  *(a1 + 24) = a4;
  LODWORD(v11) = *(a1 + 16);
  result = *(a1 + 32) / v11;
  *(a1 + 40) = result;
  return result;
}

uint64_t ULDATFeaturesChain::SetParametersForNSV3(AudioUnit *this, CFDictionaryRef theDict)
{
  valuePtr = 0.0;
  Value = CFDictionaryGetValue(theDict, @"NoiseSuppressFloorDB");
  v5 = CFNumberGetValue(Value, kCFNumberFloat64Type, &valuePtr);
  if (v5)
  {
    result = 0;
  }

  else
  {
    result = 4294967246;
  }

  if (v5)
  {
    inData = 0;
    v7 = CFDictionaryGetValue(theDict, @"UseVADMode");
    v8 = CFNumberGetValue(v7, kCFNumberSInt32Type, &inData);
    if (v8)
    {
      result = 0;
    }

    else
    {
      result = 4294967246;
    }

    if (v8)
    {
      v9 = valuePtr;
      result = AudioUnitSetParameter(this[8], 0, 0, 0, v9, 0);
      if (!result)
      {
        result = AudioUnitSetParameter(this[8], 1u, 0, 0, 0.0, 0);
        if (!result)
        {
          result = AudioUnitSetParameter(this[8], 2u, 0, 0, 40.0, 0);
          if (!result)
          {
            result = AudioUnitSetParameter(this[8], 3u, 0, 0, 0.0, 0);
            if (!result)
            {
              result = AudioUnitSetParameter(this[8], 4u, 0, 0, 4.0, 0);
              if (!result)
              {
                result = AudioUnitSetParameter(this[8], 5u, 0, 0, 40.0, 0);
                if (!result)
                {
                  result = AudioUnitSetParameter(this[8], 6u, 0, 0, 70.0, 0);
                  if (!result)
                  {
                    AudioUnitSetParameter(this[8], 7u, 0, 0, 4.0, 0);
                    return AudioUnitSetProperty(this[8], 0x11ABu, 0, 0, &inData, 4u);
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t ULDATFeaturesChain::SetParametersForAGCV2(AudioUnit *this, const __CFDictionary *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  result = AudioUnitSetParameter(this[9], 0x20u, 0, 0, 0.0, 0);
  if (!result)
  {
    AudioUnitSetParameter(this[9], 0x1Bu, 0, 0, 4.0, 0);
    v8 = 1;
    valuePtr = -48.0;
    if (!a2)
    {
LABEL_6:
      AudioUnitSetParameter(this[9], 0x22u, 0, 0, valuePtr, 0);
      return AudioUnitSetParameter(this[9], 0x40u, 0, 0, v8, 0);
    }

    Value = CFDictionaryGetValue(a2, @"AbsoluteSilenceThdDb");
    if (CFNumberGetValue(Value, kCFNumberFloat32Type, &valuePtr))
    {
      if (!CFDictionaryContainsKey(a2, @"UseNoiseDithering"))
      {
        goto LABEL_6;
      }

      v6 = CFDictionaryGetValue(a2, @"UseNoiseDithering");
      if (CFNumberGetValue(v6, kCFNumberSInt32Type, &v8))
      {
        goto LABEL_6;
      }

      if (EndpointVAD2LogScope(void)::once != -1)
      {
        dispatch_once(&EndpointVAD2LogScope(void)::once, &__block_literal_global_6);
      }

      if (EndpointVAD2LogScope(void)::scope)
      {
        v7 = *EndpointVAD2LogScope(void)::scope;
        if (!*EndpointVAD2LogScope(void)::scope)
        {
          return 0xFFFFFFFFLL;
        }
      }

      else
      {
        v7 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v11 = "ULDATFeaturesChain.cpp";
        v12 = 1024;
        v13 = 273;
        goto LABEL_23;
      }
    }

    else
    {
      if (EndpointVAD2LogScope(void)::once != -1)
      {
        dispatch_once(&EndpointVAD2LogScope(void)::once, &__block_literal_global_6);
      }

      if (EndpointVAD2LogScope(void)::scope)
      {
        v7 = *EndpointVAD2LogScope(void)::scope;
        if (!*EndpointVAD2LogScope(void)::scope)
        {
          return 0xFFFFFFFFLL;
        }
      }

      else
      {
        v7 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v11 = "ULDATFeaturesChain.cpp";
        v12 = 1024;
        v13 = 265;
LABEL_23:
        _os_log_impl(&dword_1DDB85000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d Error reading AbsoluteSilenceThdDb from AGC plist dictionary.", buf, 0x12u);
      }
    }

    return 0xFFFFFFFFLL;
  }

  return result;
}

void ULDATFeaturesChain::~ULDATFeaturesChain(AudioUnit *this)
{
  ULDATFeaturesChain::~ULDATFeaturesChain(this);

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F5920758;
  ULDATFeaturesChain::Uninitialize(this);
  v2 = this[7];
  this[7] = 0;
  if (v2)
  {
    MEMORY[0x1E12BD160](v2, 0x1000C40FF89C88ELL);
  }
}

uint64_t non-virtual thunk toERSpatializer::setDecorrelationAmount(uint64_t this, float a2)
{
  if (*(this + 2176) != a2)
  {
    *(this + 2176) = a2;
    *(this - 16) = 1;
  }

  return this;
}

uint64_t non-virtual thunk toERSpatializer::setDecorrelationCutoff(uint64_t this, float a2)
{
  if (*(this + 2180) != a2)
  {
    *(this + 2180) = a2;
    *(this - 16) = 1;
  }

  return this;
}

uint64_t non-virtual thunk toERSpatializer::setEnableDistanceAttenuation(uint64_t this, char a2)
{
  v2 = *(this + 2120);
  v3 = *(this + 2128);
  if (v2 != v3)
  {
    v4 = 0;
    v5 = v3 - v2 - 28;
    v6 = vdupq_n_s64(v5 / 0x1C);
    v7 = (v2 + 224);
    do
    {
      v8 = vdupq_n_s64(v4);
      v9 = vmovn_s64(vcgeq_u64(v6, vorrq_s8(v8, xmmword_1DE095160)));
      if (vuzp1_s8(vuzp1_s16(v9, 14), 14).u8[0])
      {
        *(v7 - 224) = a2;
      }

      if (vuzp1_s8(vuzp1_s16(v9, 14), 14).i8[1])
      {
        *(v7 - 196) = a2;
      }

      if (vuzp1_s8(vuzp1_s16(14, vmovn_s64(vcgeq_u64(v6, vorrq_s8(v8, xmmword_1DE095150)))), 14).i8[2])
      {
        *(v7 - 168) = a2;
        *(v7 - 140) = a2;
      }

      v10 = vmovn_s64(vcgeq_u64(v6, vorrq_s8(v8, xmmword_1DE095220)));
      if (vuzp1_s8(14, vuzp1_s16(v10, 14)).i32[1])
      {
        *(v7 - 112) = a2;
      }

      if (vuzp1_s8(14, vuzp1_s16(v10, 14)).i8[5])
      {
        *(v7 - 84) = a2;
      }

      if (vuzp1_s8(14, vuzp1_s16(14, vmovn_s64(vcgeq_u64(v6, vorrq_s8(v8, xmmword_1DE0952D0))))).i8[6])
      {
        *(v7 - 56) = a2;
        *(v7 - 28) = a2;
      }

      v11 = vmovn_s64(vcgeq_u64(v6, vorrq_s8(v8, xmmword_1DE0952C0)));
      if (vuzp1_s8(vuzp1_s16(v11, 14), 14).u8[0])
      {
        *v7 = a2;
      }

      if (vuzp1_s8(vuzp1_s16(v11, 14), 14).i8[1])
      {
        v7[28] = a2;
      }

      if (vuzp1_s8(vuzp1_s16(14, vmovn_s64(vcgeq_u64(v6, vorrq_s8(v8, xmmword_1DE0952B0)))), 14).i8[2])
      {
        v7[56] = a2;
        v7[84] = a2;
      }

      v12 = vmovn_s64(vcgeq_u64(v6, vorrq_s8(v8, xmmword_1DE0952A0)));
      if (vuzp1_s8(14, vuzp1_s16(v12, 14)).i32[1])
      {
        v7[112] = a2;
      }

      if (vuzp1_s8(14, vuzp1_s16(v12, 14)).i8[5])
      {
        v7[140] = a2;
      }

      if (vuzp1_s8(14, vuzp1_s16(14, vmovn_s64(vcgeq_u64(v6, vorrq_s8(v8, xmmword_1DE095290))))).i8[6])
      {
        v7[168] = a2;
        v7[196] = a2;
      }

      v4 += 16;
      v7 += 448;
    }

    while (((v5 / 0x1C + 16) & 0x1FFFFFFFFFFFFFF0) != v4);
  }

  *(this + 2172) = 1;
  return this;
}

void ERSpatializer::setMinDistanceGain(ERSpatializer *this, float a2)
{
  v3 = *(this + 303);
  v4 = *(this + 304);
  if (v3 != v4)
  {
    if (a2 >= 0.000001)
    {
      v6 = a2;
    }

    else
    {
      v6 = 0.000001;
    }

    v7 = log10f(v6);
    do
    {
      if (v3[5] != a2)
      {
        v3[5] = v6;
        v8 = v3[3];
        v9 = 0.0;
        if (v8 >= 0.001)
        {
          v10 = v3[4];
          if ((v10 - v8) >= 0.001)
          {
            v9 = v7 / log10f(v10 / v8);
          }
        }

        v3[6] = v9;
      }

      v3 += 7;
    }

    while (v3 != v4);
  }

  *(this + 2476) = 1;
}

uint64_t non-virtual thunk toERSpatializer::setAttenuationDistanceFactor(uint64_t this, float a2)
{
  *(this + 2168) = a2;
  *(this + 2172) = 1;
  return this;
}

uint64_t non-virtual thunk toERSpatializer::setAttenuationCurve(uint64_t this, int a2)
{
  v2 = *(this + 2120);
  v3 = *(this + 2128);
  if (v2 != v3)
  {
    v4 = 0;
    v5 = v3 - v2 - 28;
    v6 = vdupq_n_s64(v5 / 0x1C);
    v7 = (v2 + 64);
    do
    {
      v8 = vdupq_n_s64(v4);
      v9 = vmovn_s64(vcgeq_u64(v6, vorrq_s8(v8, xmmword_1DE095160)));
      if (vuzp1_s16(v9, 2).u8[0])
      {
        *(v7 - 14) = a2;
      }

      if (vuzp1_s16(v9, 2).i8[2])
      {
        *(v7 - 7) = a2;
      }

      if (vuzp1_s16(2, vmovn_s64(vcgeq_u64(v6, vorrq_s8(v8, xmmword_1DE095150)))).i32[1])
      {
        *v7 = a2;
        v7[7] = a2;
      }

      v4 += 4;
      v7 += 28;
    }

    while (((v5 / 0x1C + 4) & 0x1FFFFFFFFFFFFFFCLL) != v4);
  }

  *(this + 2172) = 1;
  return this;
}

void ERSpatializer::setDistanceParamaters(uint64_t a1, float a2, float a3, float a4)
{
  v5 = *(a1 + 2424);
  v6 = *(a1 + 2432);
  if (v5 != v6)
  {
    if (a3 >= 0.0)
    {
      v8 = a3;
    }

    else
    {
      v8 = 0.0;
    }

    if (a2 >= 0.0)
    {
      v9 = a2;
    }

    else
    {
      v9 = 0.0;
    }

    v10 = __exp10f(a4 * -0.05);
    v11 = 0.000001;
    if (v10 >= 0.000001)
    {
      v11 = v10;
    }

    v20 = v11;
    v19 = log10f(v11);
    do
    {
      v12 = v5[4];
      if (v12 == a3)
      {
        v13 = v5[3];
      }

      else
      {
        v5[4] = v8;
        v13 = v5[3];
        v14 = 0.0;
        if (v13 >= 0.001 && (v8 - v13) >= 0.001)
        {
          v15 = log10f(v5[5]);
          v14 = v15 / log10f(v8 / v13);
        }

        v5[6] = v14;
        v12 = v8;
      }

      if (v13 != a2)
      {
        v5[3] = v9;
        v16 = 0.0;
        if (v9 >= 0.001 && (v12 - v9) >= 0.001)
        {
          v17 = log10f(v5[5]);
          v16 = v17 / log10f(v12 / v9);
        }

        v5[6] = v16;
        v13 = v9;
      }

      if (v5[5] != v10)
      {
        v5[5] = v20;
        v18 = 0.0;
        if (v13 >= 0.001 && (v12 - v13) >= 0.001)
        {
          v18 = v19 / log10f(v12 / v13);
        }

        v5[6] = v18;
      }

      v5 += 7;
    }

    while (v5 != v6);
  }

  *(a1 + 2476) = 1;
}

uint64_t IR::IRDataAttributes::operator=(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  *a1 = *a2;
  if (v5)
  {
    CFRetain(v5);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  v6 = *(a2 + 8);
  v7 = *(a2 + 24);
  v8 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v8;
  *(a1 + 24) = v7;
  *(a1 + 8) = v6;
  v9 = *(a1 + 64);
  v10 = *(a2 + 64);
  *(a1 + 64) = v10;
  if (v10)
  {
    CFRetain(v10);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  *(a1 + 72) = *(a2 + 72);
  v11 = *(a1 + 88);
  v12 = *(a2 + 88);
  *(a1 + 88) = v12;
  if (v12)
  {
    CFRetain(v12);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  v13 = *(a2 + 96);
  *(a1 + 105) = *(a2 + 105);
  *(a1 + 96) = v13;
  v14 = *(a1 + 128);
  v15 = *(a2 + 128);
  *(a1 + 128) = v15;
  if (v15)
  {
    CFRetain(v15);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  v16 = *(a2 + 136);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 136) = v16;
  return a1;
}

void ERSpatializer::setTimeConstant(ERSpatializer *this, float a2)
{
  *(this + 516) = a2;
  v4 = *(this + 252);
  v5 = *(this + 253);
  if (v4 != v5)
  {
    *v6.i32 = expf(-1.0 / a2);
    do
    {
      v7 = *v4;
      v8 = v4[1];
      if (*v4 != v8)
      {
        v9 = 0;
        v10 = (v8 - v7 - 328) / 0x148uLL;
        v11 = vdupq_n_s64(v10);
        do
        {
          v12 = vdupq_n_s64(v9);
          v13 = vmovn_s64(vcgeq_u64(v11, vorrq_s8(v12, xmmword_1DE095160)));
          if (vuzp1_s16(v13, v6).u8[0])
          {
            v7[24] = v6.i32[0];
          }

          if (vuzp1_s16(v13, v6).i8[2])
          {
            v7[106] = v6.i32[0];
          }

          if (vuzp1_s16(v6, vmovn_s64(vcgeq_u64(v11, vorrq_s8(v12, xmmword_1DE095150)))).i32[1])
          {
            v7[188] = v6.i32[0];
            v7[270] = v6.i32[0];
          }

          v9 += 4;
          v7 += 328;
        }

        while (((v10 + 4) & 0x1FFFFFFFFFFFFFCLL) != v9);
      }

      v4 += 3;
    }

    while (v4 != v5);
  }

  v14 = *(this + 243);
  v15 = *(this + 244);
  while (v14 != v15)
  {
    v16 = *v14++;
    *(v16 + 160) = a2;
  }
}

uint64_t ERSpatializer::setMaxReflectionIRTaps(uint64_t this, unsigned int a2)
{
  if (a2 && *(this + 1892) != a2)
  {
    *(this + 1892) = a2;
    v2 = *(this + 1920);
    for (i = *(this + 1928); v2 != i; v2 += 2)
    {
      v4 = *v2;
      if (*(*v2 + 240) != a2)
      {
        *(v4 + 240) = a2;
        *(v4 + 221) = 1;
      }
    }

    *(this + 288) = 1;
  }

  return this;
}

uint64_t ERSpatializer::setReflections(uint64_t a1, uint64_t *a2)
{
  caulk::pooled_semaphore_mutex::_lock((a1 + 2488));
  v5 = *a2;
  v4 = a2[1];
  v6 = v4 - *a2;
  v7 = 0x2E8BA2E8BA2E8BA3 * (v6 >> 4);
  *(a1 + 1884) = v7;
  if (!v7)
  {
    __assert_rtn("setReflections", "ERSpatializer.cpp", 376, "mNumReflections>0U");
  }

  v8 = (a1 + 1808);
  if ((a1 + 1808) != a2)
  {
    v9 = *(a1 + 1824);
    v10 = *(a1 + 1808);
    if (v9 - v10 < v6)
    {
      if (v10)
      {
        std::vector<Shoebox::Reflection>::clear[abi:ne200100]((a1 + 1808));
        operator delete(*v8);
        v9 = 0;
        *v8 = 0;
        *(a1 + 1816) = 0;
        *(a1 + 1824) = 0;
      }

      if (v7 <= 0x1745D1745D1745DLL)
      {
        v11 = 0x2E8BA2E8BA2E8BA3 * (v9 >> 4);
        v12 = 2 * v11;
        if (2 * v11 <= v7)
        {
          v12 = v7;
        }

        if (v11 >= 0xBA2E8BA2E8BA2ELL)
        {
          v13 = 0x1745D1745D1745DLL;
        }

        else
        {
          v13 = v12;
        }

        if (v13 <= 0x1745D1745D1745DLL)
        {
          std::allocator<Shoebox::Reflection>::allocate_at_least[abi:ne200100](v13);
        }
      }

      std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
    }

    v14 = *(a1 + 1816) - v10;
    if (v14 >= v6)
    {
      std::__copy_impl::operator()[abi:ne200100]<Shoebox::Reflection *,Shoebox::Reflection *,Shoebox::Reflection *>(v5, v4, v10);
      v17 = v16;
      for (i = *(a1 + 1816); i != v17; i -= 176)
      {
        v19 = *(i - 32);
        if (v19)
        {
          *(i - 24) = v19;
          operator delete(v19);
        }
      }

      *(a1 + 1816) = v17;
    }

    else
    {
      v15 = std::__copy_impl::operator()[abi:ne200100]<Shoebox::Reflection *,Shoebox::Reflection *,Shoebox::Reflection *>(v5, v5 + v14, v10);
      *(a1 + 1816) = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<Shoebox::Reflection>,Shoebox::Reflection*,Shoebox::Reflection*,Shoebox::Reflection*>(a1 + 1808, v15, v4, *(a1 + 1816));
    }
  }

  *(a1 + 288) = 1;

  return caulk::pooled_semaphore_mutex::_unlock((a1 + 2488));
}

void sub_1DDD1A400(_Unwind_Exception *a1)
{
  *(v1 + 1816) = v2;
  caulk::pooled_semaphore_mutex::_unlock((v1 + 2488));
  _Unwind_Resume(a1);
}

uint64_t std::__copy_impl::operator()[abi:ne200100]<Shoebox::Reflection *,Shoebox::Reflection *,Shoebox::Reflection *>(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result != a2)
  {
    v5 = result + 152;
    do
    {
      v6 = v5 - 152;
      v7 = *(v5 - 152);
      v8 = *(v5 - 136);
      v9 = *(v5 - 104);
      *(a3 + 32) = *(v5 - 120);
      *(a3 + 48) = v9;
      *a3 = v7;
      *(a3 + 16) = v8;
      v10 = *(v5 - 56);
      v11 = *(v5 - 40);
      v12 = *(v5 - 72);
      *(a3 + 126) = *(v5 - 26);
      *(a3 + 96) = v10;
      *(a3 + 112) = v11;
      *(a3 + 80) = v12;
      *(a3 + 64) = *(v5 - 88);
      if (a3 != v5 - 152)
      {
        std::vector<Shoebox::Walls>::__assign_with_size[abi:ne200100]<Shoebox::Walls*,Shoebox::Walls*>((a3 + 144), *(v5 - 8), *v5, (*v5 - *(v5 - 8)) >> 2);
      }

      *(a3 + 168) = *(v5 + 16);
      a3 += 176;
      v5 += 176;
    }

    while (v6 + 176 != a2);
    return a2;
  }

  return result;
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<Shoebox::Reflection>,Shoebox::Reflection*,Shoebox::Reflection*,Shoebox::Reflection*>(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v4 = a4;
  v18 = a4;
  v19 = a4;
  v16[0] = a1;
  v16[1] = &v18;
  v16[2] = &v19;
  v17 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      v7 = *v6;
      v8 = v6[1];
      v9 = v6[3];
      *(v4 + 32) = v6[2];
      *(v4 + 48) = v9;
      *v4 = v7;
      *(v4 + 16) = v8;
      v10 = v6[4];
      v11 = v6[5];
      v12 = v6[6];
      v13 = v6[7];
      v14 = *(v6 + 126);
      *(v4 + 144) = 0;
      *(v4 + 126) = v14;
      *(v4 + 96) = v12;
      *(v4 + 112) = v13;
      *(v4 + 64) = v10;
      *(v4 + 80) = v11;
      *(v4 + 152) = 0;
      *(v4 + 160) = 0;
      std::vector<Shoebox::Walls>::__init_with_size[abi:ne200100]<Shoebox::Walls*,Shoebox::Walls*>(v4 + 144, *(v6 + 18), *(v6 + 19), (*(v6 + 19) - *(v6 + 18)) >> 2);
      *(v4 + 168) = *(v6 + 21);
      v6 += 11;
      v4 = v19 + 176;
      v19 += 176;
    }

    while (v6 != a3);
  }

  v17 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<Shoebox::Reflection>,Shoebox::Reflection*>>::~__exception_guard_exceptions[abi:ne200100](v16);
  return v4;
}

void std::allocator<Shoebox::Reflection>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (a1 < 0x1745D1745D1745ELL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<Shoebox::Reflection>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 176)
  {
    v4 = *(i - 32);
    if (v4)
    {
      *(i - 24) = v4;
      operator delete(v4);
    }
  }

  a1[1] = v2;
}

uint64_t std::vector<Shoebox::Walls>::__init_with_size[abi:ne200100]<Shoebox::Walls*,Shoebox::Walls*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<int>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1DDD1A6D4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<Shoebox::Reflection>,Shoebox::Reflection*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v5 = *(v3 - 32);
      if (v5)
      {
        *(v3 - 24) = v5;
        operator delete(v5);
      }

      v3 -= 176;
    }
  }

  return a1;
}

void *std::vector<Shoebox::Walls>::__assign_with_size[abi:ne200100]<Shoebox::Walls*,Shoebox::Walls*>(void *result, char *__src, char *a3, unint64_t a4)
{
  v7 = result;
  v8 = result[2];
  v9 = *result;
  if (a4 > (v8 - *result) >> 2)
  {
    if (v9)
    {
      result[1] = v9;
      operator delete(v9);
      v8 = 0;
      *v7 = 0;
      v7[1] = 0;
      v7[2] = 0;
    }

    if (!(a4 >> 62))
    {
      v10 = v8 >> 1;
      if (v8 >> 1 <= a4)
      {
        v10 = a4;
      }

      if (v8 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v11 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v10;
      }

      std::vector<int>::__vallocate[abi:ne200100](v7, v11);
    }

    std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
  }

  v12 = result[1];
  v13 = v12 - v9;
  if (a4 <= (v12 - v9) >> 2)
  {
    v17 = a3 - __src;
    if (a3 != __src)
    {
      result = memmove(*result, __src, v17);
    }

    v16 = &v9[v17];
  }

  else
  {
    if (v12 != v9)
    {
      result = memmove(*result, __src, v12 - v9);
      v12 = v7[1];
    }

    v14 = &__src[v13];
    v15 = a3 - &__src[v13];
    if (v15)
    {
      result = memmove(v12, v14, v15);
    }

    v16 = &v12[v15];
  }

  v7[1] = v16;
  return result;
}

uint64_t non-virtual thunk toERSpatializer::setMaxReflections(uint64_t this, int a2)
{
  if (*(this + 1584) != a2)
  {
    *(this + 1584) = a2;
    *(this - 16) = 1;
  }

  return this;
}

uint64_t non-virtual thunk toERSpatializer::setWallsSpecularAttenuation(uint64_t this, int32x2_t a2)
{
  if (*(this + 1576) == 1)
  {
    *(this + 1112) = vdupq_lane_s32(a2, 0);
    *(this + 1128) = a2.i32[0];
    *(this + 1132) = a2.i32[0];
    *(this - 16) = 1;
  }

  return this;
}

int32x4_t *non-virtual thunk toERSpatializer::setWallsScatterCutoff(int32x4_t *this, int32x2_t a2)
{
  if (this[98].i8[8] == 1)
  {
    this[68] = vdupq_lane_s32(a2, 0);
    this[69].i32[0] = a2.i32[0];
    this[69].i32[1] = a2.i32[0];
    this[-1].i8[0] = 1;
  }

  return this;
}

uint64_t non-virtual thunk toERSpatializer::setWallsScatter(uint64_t this, int32x2_t a2)
{
  if (*(this + 1576) == 1)
  {
    *(this + 1064) = vdupq_lane_s32(a2, 0);
    *(this + 1080) = a2.i32[0];
    *(this + 1084) = a2.i32[0];
    *(this - 16) = 1;
  }

  return this;
}

uint64_t non-virtual thunk toERSpatializer::setWallSpecularAttenuation(uint64_t this, unsigned int a2, float a3)
{
  if (*(this + 1576) == 1)
  {
    if (a2 <= 5)
    {
      *(this + 4 * a2 + 1112) = a3;
    }

    *(this - 16) = 1;
  }

  return this;
}

uint64_t non-virtual thunk toERSpatializer::setWallScatterCutoff(uint64_t this, unsigned int a2, float a3)
{
  if (*(this + 1576) == 1)
  {
    if (a2 <= 5)
    {
      *(this + 4 * a2 + 1088) = a3;
    }

    *(this - 16) = 1;
  }

  return this;
}

uint64_t non-virtual thunk toERSpatializer::setWallScatter(uint64_t this, unsigned int a2, float a3)
{
  if (*(this + 1576) == 1)
  {
    if (a2 <= 5)
    {
      *(this + 4 * a2 + 1064) = a3;
    }

    *(this - 16) = 1;
  }

  return this;
}

float non-virtual thunk toERSpatializer::getSpeedOfSound(ERSpatializer *this)
{
  result = 0.0;
  if (*(this + 1576) == 1)
  {
    return *(this + 116);
  }

  return result;
}

void non-virtual thunk toERSpatializer::setSpeedOfSound(ERSpatializer *this, float a2)
{
  if (*(this + 1576) == 1 && (*(*(this - 38) + 464))(this - 304) != a2)
  {
    if (a2 > 0.0)
    {
      *(this + 116) = a2;
    }

    *(this - 16) = 1;
  }
}

void ERSpatializer::setSpeedOfSound(ERSpatializer *this, float a2)
{
  if (*(this + 1880) == 1 && (*(*this + 464))(this) != a2)
  {
    if (a2 > 0.0)
    {
      *(this + 192) = a2;
    }

    *(this + 288) = 1;
  }
}

void ERSpatializer::getRoomPreset(ERSpatializer *this)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = *(this + 22);
  *&v7[0] = *(this + 44);
  DWORD2(v7[0]) = DWORD2(v2);
  __p = v7;
  v6 = 3;
  v4[5] = applesauce::CF::details::make_CFArrayRef<float>(&__p);
  __p = v7;
  v3 = *(this + 24);
  *&v7[0] = *(this + 48);
  DWORD2(v7[0]) = DWORD2(v3);
  v6 = 3;
  v4[4] = applesauce::CF::details::make_CFArrayRef<float>(&__p);
  v7[0] = *(this + 25);
  __p = v7;
  v6 = 4;
  v4[3] = applesauce::CF::details::make_CFArrayRef<float>(&__p);
  memset(v4, 0, 24);
  __p = v4;
  LOBYTE(v6) = 0;
  operator new();
}

void sub_1DDD1BA3C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void *applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,applesauce::CF::ArrayRef &>(void *a1, CFTypeRef cf, const void **a3)
{
  if (cf)
  {
    CFRetain(cf);
  }

  *a1 = cf;
  v6 = *a3;
  if (v6)
  {
    CFRetain(v6);
  }

  a1[1] = v6;
  return a1;
}

void *applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,BOOL>(void *a1, CFTypeRef cf, _BYTE *a3)
{
  if (cf)
  {
    CFRetain(cf);
  }

  if (*a3)
  {
    v6 = MEMORY[0x1E695E4D0];
  }

  else
  {
    v6 = MEMORY[0x1E695E4C0];
  }

  v7 = *v6;
  *a1 = cf;
  a1[1] = v7;
  return a1;
}

void *applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,float>(void *a1, CFTypeRef cf, int *a3)
{
  if (cf)
  {
    CFRetain(cf);
  }

  *a1 = cf;
  valuePtr = *a3;
  v6 = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
  a1[1] = v6;
  if (!v6)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  return a1;
}

void sub_1DDD1C488(_Unwind_Exception *a1)
{
  applesauce::CF::ObjectRef<void const*>::~ObjectRef(v2);
  applesauce::CF::TypeRef::~TypeRef(v1);
  _Unwind_Resume(a1);
}

void *applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,unsigned int>(void *a1, CFTypeRef cf, int *a3)
{
  if (cf)
  {
    CFRetain(cf);
  }

  *a1 = cf;
  valuePtr = *a3;
  v6 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  a1[1] = v6;
  if (!v6)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  return a1;
}

void sub_1DDD1C56C(_Unwind_Exception *a1)
{
  applesauce::CF::ObjectRef<void const*>::~ObjectRef(v2);
  applesauce::CF::TypeRef::~TypeRef(v1);
  _Unwind_Resume(a1);
}

void *applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,applesauce::CF::DictionaryRef &>(void *a1, CFTypeRef cf, const void **a3)
{
  if (cf)
  {
    CFRetain(cf);
  }

  *a1 = cf;
  v6 = *a3;
  if (v6)
  {
    CFRetain(v6);
  }

  a1[1] = v6;
  return a1;
}

void *applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,float &>(void *a1, CFTypeRef cf, int *a3)
{
  if (cf)
  {
    CFRetain(cf);
  }

  *a1 = cf;
  valuePtr = *a3;
  v6 = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
  a1[1] = v6;
  if (!v6)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  return a1;
}

void sub_1DDD1C6B0(_Unwind_Exception *a1)
{
  applesauce::CF::ObjectRef<void const*>::~ObjectRef(v2);
  applesauce::CF::TypeRef::~TypeRef(v1);
  _Unwind_Resume(a1);
}

void *applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,unsigned int &>(void *a1, CFTypeRef cf, int *a3)
{
  if (cf)
  {
    CFRetain(cf);
  }

  *a1 = cf;
  valuePtr = *a3;
  v6 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  a1[1] = v6;
  if (!v6)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  return a1;
}

void sub_1DDD1C794(_Unwind_Exception *a1)
{
  applesauce::CF::ObjectRef<void const*>::~ObjectRef(v2);
  applesauce::CF::TypeRef::~TypeRef(v1);
  _Unwind_Resume(a1);
}

uint64_t ERSpatializer::setRoomPreset(ERSpatializer *this, CFDictionaryRef *a2)
{
  v2 = *a2;
  if (!*a2)
  {
    return 4294967246;
  }

  if (*(this + 1880) == 1)
  {
    applesauce::CF::details::find_at_key_or_optional<applesauce::CF::ArrayRef,__CFString const*&>(&theArray, *a2, kDictKey_roomDimensions);
    if (v102 == 1)
    {
      v5 = theArray;
      if (!theArray)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Could not construct");
      }

      if (CFArrayGetCount(theArray) == 3)
      {
        applesauce::CF::convert_as<std::vector<float>,0>(&cf, v5);
        if ((v100 & 1) == 0)
        {
          std::__throw_bad_optional_access[abi:ne200100]();
        }

        v7 = cf;
        v6.n128_u64[0] = *cf;
        v6.n128_u32[2] = *(cf + 2);
        (*(*this + 384))(this, v6);
        operator delete(v7);
      }

      CFRelease(v5);
    }

    if (!*a2)
    {
      goto LABEL_203;
    }

    applesauce::CF::details::find_at_key_or_optional<applesauce::CF::ArrayRef,__CFString const*&>(&theArray, *a2, kDictKey_roomRotation);
    if (v102 == 1)
    {
      v8 = theArray;
      if (!theArray)
      {
        v91 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v91, "Could not construct");
      }

      if (CFArrayGetCount(theArray) == 4)
      {
        applesauce::CF::convert_as<std::vector<float>,0>(&cf, v8);
        if ((v100 & 1) == 0)
        {
          std::__throw_bad_optional_access[abi:ne200100]();
        }

        v9 = cf;
        (*(*this + 376))(this, *cf);
        operator delete(v9);
      }

      CFRelease(v8);
    }

    if (!*a2)
    {
      goto LABEL_203;
    }

    applesauce::CF::details::find_at_key_or_optional<applesauce::CF::ArrayRef,__CFString const*&>(&theArray, *a2, kDictKey_roomCoordinates);
    if (v102 == 1)
    {
      v10 = theArray;
      if (!theArray)
      {
        v92 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v92, "Could not construct");
      }

      if (CFArrayGetCount(theArray) == 3)
      {
        applesauce::CF::convert_as<std::vector<float>,0>(&cf, v10);
        if ((v100 & 1) == 0)
        {
          std::__throw_bad_optional_access[abi:ne200100]();
        }

        v12 = cf;
        v11.n128_u64[0] = *cf;
        v11.n128_u32[2] = *(cf + 2);
        (*(*this + 368))(this, v11);
        operator delete(v12);
      }

      CFRelease(v10);
    }

    if (!*a2)
    {
      goto LABEL_203;
    }

    v13 = applesauce::CF::details::at_key<__CFString const*&>(*a2, kDictKey_speedOfSound);
    if (v13)
    {
      v14 = applesauce::CF::convert_as<float,0>(v13);
      if (HIDWORD(v14))
      {
        v15 = *&v14;
        if ((*(*this + 464))(this) != *&v14)
        {
          (*(*this + 456))(this, v15);
        }
      }
    }

    if (!*a2)
    {
      goto LABEL_203;
    }

    v16 = applesauce::CF::details::at_key<__CFString const*&>(*a2, kDictKey_modelOrder);
    if (v16 && (v17 = applesauce::CF::convert_as<unsigned int,0>(v16), (v17 & 0x100000000) != 0) && (v18 = v17, (*(*this + 400))(this) != v17))
    {
      v19 = (*(*this + 392))(this, v18);
    }

    else
    {
      v19 = 0;
    }

    if (!*a2)
    {
      goto LABEL_203;
    }

    applesauce::CF::details::find_at_key_or_optional<applesauce::CF::DictionaryRef,__CFString const*&>(&cf, *a2, kDictKey_wallScatteringCutoffs);
    if (v99 == 1)
    {
      v20 = cf;
      if (!cf)
      {
        v93 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v93, "Could not construct");
      }

      v21 = applesauce::CF::details::at_key<__CFString const* const&>(cf, Shoebox::kWallName_Left);
      if (v21)
      {
        v22 = applesauce::CF::convert_as<float,0>(v21);
        if (HIDWORD(v22))
        {
          if (*(this + 342) != *&v22)
          {
            *(this + 342) = v22;
          }
        }
      }

      v23 = applesauce::CF::details::at_key<__CFString const* const&>(v20, Shoebox::kWallName_Right);
      if (v23)
      {
        v24 = applesauce::CF::convert_as<float,0>(v23);
        if (HIDWORD(v24))
        {
          if (*(this + 344) != *&v24)
          {
            *(this + 344) = v24;
          }
        }
      }

      v25 = applesauce::CF::details::at_key<__CFString const* const&>(v20, Shoebox::kWallName_Back);
      if (v25)
      {
        v26 = applesauce::CF::convert_as<float,0>(v25);
        if (HIDWORD(v26))
        {
          if (*(this + 346) != *&v26)
          {
            *(this + 346) = v26;
          }
        }
      }

      v27 = applesauce::CF::details::at_key<__CFString const* const&>(v20, Shoebox::kWallName_Front);
      if (v27)
      {
        v28 = applesauce::CF::convert_as<float,0>(v27);
        if (HIDWORD(v28))
        {
          if (*(this + 347) != *&v28)
          {
            *(this + 347) = v28;
          }
        }
      }

      v29 = applesauce::CF::details::at_key<__CFString const* const&>(v20, Shoebox::kWallName_Floor);
      if (v29)
      {
        v30 = applesauce::CF::convert_as<float,0>(v29);
        if (HIDWORD(v30))
        {
          if (*(this + 345) != *&v30)
          {
            *(this + 345) = v30;
          }
        }
      }

      v31 = applesauce::CF::details::at_key<__CFString const* const&>(v20, Shoebox::kWallName_Ceiling);
      if (v31)
      {
        v32 = applesauce::CF::convert_as<float,0>(v31);
        if (HIDWORD(v32))
        {
          if (*(this + 343) != *&v32)
          {
            *(this + 343) = v32;
          }
        }
      }

      if (cf)
      {
        CFRelease(cf);
      }
    }

    if (!*a2)
    {
      goto LABEL_203;
    }

    applesauce::CF::details::find_at_key_or_optional<applesauce::CF::DictionaryRef,__CFString const*&>(&cf, *a2, kDictKey_wallScatteringCoeffs);
    if (v99 == 1)
    {
      v33 = cf;
      if (!cf)
      {
        v94 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v94, "Could not construct");
      }

      v34 = applesauce::CF::details::at_key<__CFString const* const&>(cf, Shoebox::kWallName_Left);
      if (v34)
      {
        v35 = applesauce::CF::convert_as<float,0>(v34);
        if (HIDWORD(v35))
        {
          if (*(this + 342) != *&v35)
          {
            *(this + 342) = v35;
          }
        }
      }

      v36 = applesauce::CF::details::at_key<__CFString const* const&>(v33, Shoebox::kWallName_Right);
      if (v36)
      {
        v37 = applesauce::CF::convert_as<float,0>(v36);
        if (HIDWORD(v37))
        {
          if (*(this + 344) != *&v37)
          {
            *(this + 344) = v37;
          }
        }
      }

      v38 = applesauce::CF::details::at_key<__CFString const* const&>(v33, Shoebox::kWallName_Back);
      if (v38)
      {
        v39 = applesauce::CF::convert_as<float,0>(v38);
        if (HIDWORD(v39))
        {
          if (*(this + 346) != *&v39)
          {
            *(this + 346) = v39;
          }
        }
      }

      v40 = applesauce::CF::details::at_key<__CFString const* const&>(v33, Shoebox::kWallName_Front);
      if (v40)
      {
        v41 = applesauce::CF::convert_as<float,0>(v40);
        if (HIDWORD(v41))
        {
          if (*(this + 347) != *&v41)
          {
            *(this + 347) = v41;
          }
        }
      }

      v42 = applesauce::CF::details::at_key<__CFString const* const&>(v33, Shoebox::kWallName_Floor);
      if (v42)
      {
        v43 = applesauce::CF::convert_as<float,0>(v42);
        if (HIDWORD(v43))
        {
          if (*(this + 345) != *&v43)
          {
            *(this + 345) = v43;
          }
        }
      }

      v44 = applesauce::CF::details::at_key<__CFString const* const&>(v33, Shoebox::kWallName_Ceiling);
      if (v44)
      {
        v45 = applesauce::CF::convert_as<float,0>(v44);
        if (HIDWORD(v45))
        {
          if (*(this + 343) != *&v45)
          {
            *(this + 343) = v45;
          }
        }
      }

      if (cf)
      {
        CFRelease(cf);
      }
    }

    if (!*a2)
    {
      goto LABEL_203;
    }

    applesauce::CF::details::find_at_key_or_optional<applesauce::CF::DictionaryRef,__CFString const*&>(&cf, *a2, kDictKey_wallSpecularAttenuations);
    if (v99 == 1)
    {
      v46 = cf;
      if (!cf)
      {
        v95 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v95, "Could not construct");
      }

      v47 = applesauce::CF::details::at_key<__CFString const* const&>(cf, Shoebox::kWallName_Left);
      if (v47)
      {
        v48 = applesauce::CF::convert_as<float,0>(v47);
        if (HIDWORD(v48))
        {
          if (*(this + 354) != *&v48)
          {
            *(this + 354) = v48;
          }
        }
      }

      v49 = applesauce::CF::details::at_key<__CFString const* const&>(v46, Shoebox::kWallName_Right);
      if (v49)
      {
        v50 = applesauce::CF::convert_as<float,0>(v49);
        if (HIDWORD(v50))
        {
          if (*(this + 356) != *&v50)
          {
            *(this + 356) = v50;
          }
        }
      }

      v51 = applesauce::CF::details::at_key<__CFString const* const&>(v46, Shoebox::kWallName_Back);
      if (v51)
      {
        v52 = applesauce::CF::convert_as<float,0>(v51);
        if (HIDWORD(v52))
        {
          if (*(this + 358) != *&v52)
          {
            *(this + 358) = v52;
          }
        }
      }

      v53 = applesauce::CF::details::at_key<__CFString const* const&>(v46, Shoebox::kWallName_Front);
      if (v53)
      {
        v54 = applesauce::CF::convert_as<float,0>(v53);
        if (HIDWORD(v54))
        {
          if (*(this + 359) != *&v54)
          {
            *(this + 359) = v54;
          }
        }
      }

      v55 = applesauce::CF::details::at_key<__CFString const* const&>(v46, Shoebox::kWallName_Floor);
      if (v55)
      {
        v56 = applesauce::CF::convert_as<float,0>(v55);
        if (HIDWORD(v56))
        {
          if (*(this + 357) != *&v56)
          {
            *(this + 357) = v56;
          }
        }
      }

      v57 = applesauce::CF::details::at_key<__CFString const* const&>(v46, Shoebox::kWallName_Ceiling);
      if (v57)
      {
        v58 = applesauce::CF::convert_as<float,0>(v57);
        if (HIDWORD(v58))
        {
          if (*(this + 355) != *&v58)
          {
            *(this + 355) = v58;
          }
        }
      }

      if (cf)
      {
        CFRelease(cf);
      }
    }

    if (!*a2)
    {
      goto LABEL_203;
    }

    applesauce::CF::details::find_at_key_or_optional<applesauce::CF::DictionaryRef,__CFString const*&>(&cf, *a2, kDictKey_wallGains);
    if (v99 == 1)
    {
      v59 = cf;
      ERSpatializer::setRoomPreset(applesauce::CF::DictionaryRef const&)::$_3::operator()(this, cf, Shoebox::kWallName_Left, 0);
      ERSpatializer::setRoomPreset(applesauce::CF::DictionaryRef const&)::$_3::operator()(this, v59, Shoebox::kWallName_Right, 2);
      ERSpatializer::setRoomPreset(applesauce::CF::DictionaryRef const&)::$_3::operator()(this, v59, Shoebox::kWallName_Back, 4);
      ERSpatializer::setRoomPreset(applesauce::CF::DictionaryRef const&)::$_3::operator()(this, v59, Shoebox::kWallName_Front, 5);
      ERSpatializer::setRoomPreset(applesauce::CF::DictionaryRef const&)::$_3::operator()(this, v59, Shoebox::kWallName_Floor, 3);
      ERSpatializer::setRoomPreset(applesauce::CF::DictionaryRef const&)::$_3::operator()(this, v59, Shoebox::kWallName_Ceiling, 1);
      if (v59)
      {
        CFRelease(v59);
      }
    }

    if (!*a2)
    {
      goto LABEL_203;
    }

    applesauce::CF::details::find_at_key_or_optional<applesauce::CF::DictionaryRef,__CFString const*&>(&cf, *a2, kDictKey_wallActivation);
    if (v99 == 1)
    {
      v60 = cf;
      if (!cf)
      {
        v96 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v96, "Could not construct");
      }

      v61 = applesauce::CF::details::find_at_key_or_optional<BOOL,__CFString const* const&>(cf, Shoebox::kWallName_Left);
      if (v61 >= 0x100u && *(this + 1440) != v61)
      {
        *(this + 1440) = v61 & 1;
      }

      v62 = applesauce::CF::details::find_at_key_or_optional<BOOL,__CFString const* const&>(v60, Shoebox::kWallName_Right);
      if (v62 >= 0x100u && *(this + 1442) != v62)
      {
        *(this + 1442) = v62 & 1;
      }

      v63 = applesauce::CF::details::find_at_key_or_optional<BOOL,__CFString const* const&>(v60, Shoebox::kWallName_Back);
      if (v63 >= 0x100u && *(this + 1444) != v63)
      {
        *(this + 1444) = v63 & 1;
      }

      v64 = applesauce::CF::details::find_at_key_or_optional<BOOL,__CFString const* const&>(v60, Shoebox::kWallName_Front);
      if (v64 >= 0x100u && *(this + 1445) != v64)
      {
        *(this + 1445) = v64 & 1;
      }

      v65 = applesauce::CF::details::find_at_key_or_optional<BOOL,__CFString const* const&>(v60, Shoebox::kWallName_Floor);
      if (v65 >= 0x100u && *(this + 1443) != v65)
      {
        *(this + 1443) = v65 & 1;
      }

      v66 = applesauce::CF::details::find_at_key_or_optional<BOOL,__CFString const* const&>(v60, Shoebox::kWallName_Ceiling);
      if (v66 >= 0x100u && *(this + 1441) != v66)
      {
        *(this + 1441) = v66 & 1;
      }

      if (cf)
      {
        CFRelease(cf);
      }
    }

    if (!*a2)
    {
      goto LABEL_203;
    }

    applesauce::CF::details::find_at_key_or_optional<applesauce::CF::DictionaryRef,__CFString const*&>(&cf, *a2, kDictKey_wallPolarityInvert);
    if (v99 == 1)
    {
      v67 = cf;
      if (!cf)
      {
        v97 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v97, "Could not construct");
      }

      v68 = applesauce::CF::details::find_at_key_or_optional<BOOL,__CFString const* const&>(cf, Shoebox::kWallName_Left);
      if (v68 >= 0x100u && *(this + 1446) != v68)
      {
        *(this + 1446) = v68 & 1;
      }

      v69 = applesauce::CF::details::find_at_key_or_optional<BOOL,__CFString const* const&>(v67, Shoebox::kWallName_Right);
      if (v69 >= 0x100u && *(this + 1448) != v69)
      {
        *(this + 1448) = v69 & 1;
      }

      v70 = applesauce::CF::details::find_at_key_or_optional<BOOL,__CFString const* const&>(v67, Shoebox::kWallName_Back);
      if (v70 >= 0x100u && *(this + 1450) != v70)
      {
        *(this + 1450) = v70 & 1;
      }

      v71 = applesauce::CF::details::find_at_key_or_optional<BOOL,__CFString const* const&>(v67, Shoebox::kWallName_Front);
      if (v71 >= 0x100u && *(this + 1451) != v71)
      {
        *(this + 1451) = v71 & 1;
      }

      v72 = applesauce::CF::details::find_at_key_or_optional<BOOL,__CFString const* const&>(v67, Shoebox::kWallName_Floor);
      if (v72 >= 0x100u && *(this + 1449) != v72)
      {
        *(this + 1449) = v72 & 1;
      }

      v73 = applesauce::CF::details::find_at_key_or_optional<BOOL,__CFString const* const&>(v67, Shoebox::kWallName_Ceiling);
      if (v73 >= 0x100u && *(this + 1447) != v73)
      {
        *(this + 1447) = v73 & 1;
      }

      if (cf)
      {
        CFRelease(cf);
      }
    }

    v2 = *a2;
    if (!*a2)
    {
LABEL_203:
      v89 = __cxa_allocate_exception(0x10uLL);
      applesauce::CF::construct_error(v89);
    }
  }

  else
  {
    v19 = 0;
  }

  v74 = applesauce::CF::details::at_key<__CFString const*&>(v2, kDictKey_maxIRTaps);
  if (v74)
  {
    v75 = applesauce::CF::convert_as<unsigned int,0>(v74);
    if ((v75 & 0x100000000) != 0)
    {
      (*(*this + 544))(this, v75);
    }
  }

  if (!*a2)
  {
    goto LABEL_203;
  }

  v76 = applesauce::CF::details::at_key<__CFString const*&>(*a2, kDictKey_maxReflections);
  if (v76)
  {
    v77 = applesauce::CF::convert_as<unsigned int,0>(v76);
    if ((v77 & 0x100000000) != 0)
    {
      (*(*this + 520))(this, v77);
    }
  }

  if (!*a2)
  {
    goto LABEL_203;
  }

  v78 = applesauce::CF::details::at_key<__CFString const*&>(*a2, kDictKey_timeConstant);
  if (v78)
  {
    v79 = applesauce::CF::convert_as<float,0>(v78);
    if (HIDWORD(v79))
    {
      (*(*this + 560))(this, *&v79);
    }
  }

  if (!*a2)
  {
    goto LABEL_203;
  }

  v80 = applesauce::CF::details::at_key<__CFString const*&>(*a2, kDictKey_attenuationDistanceFactor);
  if (v80)
  {
    v81 = applesauce::CF::convert_as<float,0>(v80);
    if (HIDWORD(v81))
    {
      (*(*this + 608))(this, *&v81);
    }
  }

  if (!*a2)
  {
    goto LABEL_203;
  }

  v82 = applesauce::CF::details::at_key<__CFString const*&>(*a2, kDictKey_ERGainModifier);
  if (v82)
  {
    v83 = applesauce::CF::convert_as<float,0>(v82);
    if (HIDWORD(v83))
    {
      (*(*this + 584))(this, *&v83);
    }
  }

  if (!*a2)
  {
    goto LABEL_203;
  }

  v84 = applesauce::CF::details::at_key<__CFString const*&>(*a2, kDictKey_DecorrelationAmount);
  if (v84)
  {
    v85 = applesauce::CF::convert_as<float,0>(v84);
    if (HIDWORD(v85))
    {
      (*(*this + 640))(this, *&v85);
    }
  }

  if (!*a2)
  {
    goto LABEL_203;
  }

  v86 = applesauce::CF::details::at_key<__CFString const*&>(*a2, kDictKey_DecorrelationCutoff);
  if (v86)
  {
    v87 = applesauce::CF::convert_as<float,0>(v86);
    if (HIDWORD(v87))
    {
      (*(*this + 632))(this, *&v87);
    }
  }

  return v19;
}

const void *applesauce::CF::details::find_at_key_or_optional<float,__CFString const* const&>(const __CFDictionary *a1, const void *a2)
{
  result = applesauce::CF::details::at_key<__CFString const* const&>(a1, a2);
  if (result)
  {

    return applesauce::CF::convert_as<float,0>(result);
  }

  return result;
}

void ERSpatializer::setRoomPreset(applesauce::CF::DictionaryRef const&)::$_3::operator()(uint64_t a1, CFDictionaryRef theDict, const void *a3, uint64_t a4)
{
  if (!theDict)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
  }

  v6 = applesauce::CF::details::at_key<__CFString const* const&>(theDict, a3);
  if (!v6)
  {
    LOBYTE(v12) = 0;
    v14 = 0;
    return;
  }

  applesauce::CF::convert_as<std::vector<float>,0>(&v12, v6);
  if (v14)
  {
    v7 = v12;
    v8 = v13;
    v9 = v13 - v12;
    if ((*(*a1 + 432))(a1) == v9 >> 2)
    {
      if ((v14 & 1) == 0)
      {
        std::__throw_bad_optional_access[abi:ne200100]();
      }

      if (v8 != v7)
      {
        memmove(__dst, v7, v9);
      }

      (*(*a1 + 408))(a1, a4, __dst);
    }

    else if ((v14 & 1) == 0)
    {
      return;
    }

    if (v7)
    {
      operator delete(v7);
    }
  }
}

void sub_1DDD1DBA4(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    if (v1)
    {
      operator delete(v1);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t applesauce::CF::details::find_at_key_or_optional<BOOL,__CFString const* const&>(const __CFDictionary *a1, const void *a2)
{
  v2 = applesauce::CF::details::at_key<__CFString const* const&>(a1, a2);
  if (v2)
  {
    LOWORD(v2) = applesauce::CF::convert_as<BOOL,0>(v2);
    v3 = BYTE1(v2);
  }

  else
  {
    v3 = 0;
  }

  return v2 | (v3 << 8);
}

const void *applesauce::CF::details::at_key<__CFString const* const&>(CFDictionaryRef theDict, const void *a2)
{
  result = 0;
  if (theDict)
  {
    if (a2)
    {
      return CFDictionaryGetValue(theDict, a2);
    }
  }

  return result;
}

double non-virtual thunk toERSpatializer::getWallSubbandGains(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (*(a1 + 1576) == 1)
  {
    if (a2 <= 5)
    {
      v3 = a1 + 40 * a2;
      v4 = *(v3 + 800);
      v5 = *(v3 + 816);
      *(a3 + 32) = *(v3 + 832);
      *a3 = v4;
      *(a3 + 16) = v5;
    }
  }

  else
  {
    *(a3 + 32) = 0;
    *&v4 = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return *&v4;
}

float non-virtual thunk toERSpatializer::setWallsSubbandGains(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 1576) == 1)
  {
    v15 = v2;
    v16 = v3;
    v6 = 0;
    v7 = a1 + 800;
    v8 = a1 + 1040;
    do
    {
      v10 = *(a2 + 16);
      v12[0] = *a2;
      v9 = v12[0];
      v12[1] = v10;
      v13 = *(a2 + 32);
      *(v7 + 32) = v13;
      *v7 = v9;
      *(v7 + 16) = v10;
      __C = 0.0;
      vDSP_meanv(v12, 1, &__C, 0xAuLL);
      result = __C;
      *(v8 + v6) = __C;
      *(a1 - 16) = 1;
      v7 += 40;
      v6 += 4;
    }

    while (v6 != 24);
  }

  return result;
}

void ERSpatializer::setWallSubbandGains(uint64_t a1, unsigned int a2, __int128 *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  if (*(a1 + 1880) != 1)
  {
    if (getAUSMV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
    }

    v8 = getAUSMV2Log(void)::gLog;
    if (!os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    std::string::basic_string[abi:ne200100]<0>(&v16, "ERSpatializer");
    v9 = std::string::append(&v16, "::", 2uLL);
    v10 = *&v9->__r_.__value_.__l.__data_;
    __C.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
    *&__C.__r_.__value_.__l.__data_ = v10;
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    v11 = std::string::append(&__C, "setWallSubbandGains", 0x13uLL);
    v12 = *&v11->__r_.__value_.__l.__data_;
    *&v19 = *(&v11->__r_.__value_.__l + 2);
    __A = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    p_A = &__A;
    if (SBYTE7(v19) < 0)
    {
      p_A = __A;
    }

    *buf = 136315138;
    v22 = p_A;
    v14 = "%s: room model not available";
LABEL_18:
    _os_log_error_impl(&dword_1DDB85000, v8, OS_LOG_TYPE_ERROR, v14, buf, 0xCu);
    if (SBYTE7(v19) < 0)
    {
      operator delete(__A);
    }

    if (SHIBYTE(__C.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__C.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v16.__r_.__value_.__l.__data_);
    }

    return;
  }

  if (a2 <= 5)
  {
    v5 = a3[1];
    __A = *a3;
    v19 = v5;
    v20 = *(a3 + 4);
    v6 = v20;
    v7 = a1 + 40 * a2;
    *(v7 + 1104) = __A;
    *(v7 + 1136) = v6;
    *(v7 + 1120) = v5;
    LODWORD(__C.__r_.__value_.__l.__data_) = 0;
    vDSP_meanv(&__A, 1, &__C, 0xAuLL);
    *(a1 + 4 * a2 + 1344) = __C.__r_.__value_.__l.__data_;
    *(a1 + 288) = 1;
    return;
  }

  if (getAUSMV2Log(void)::onceToken != -1)
  {
    dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
  }

  v8 = getAUSMV2Log(void)::gLog;
  if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_ERROR))
  {
    std::string::basic_string[abi:ne200100]<0>(&v16, "ERSpatializer");
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__C, &v16, "::");
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__A, &__C, "setWallSubbandGains");
    if ((SBYTE7(v19) & 0x80u) == 0)
    {
      v15 = &__A;
    }

    else
    {
      v15 = __A;
    }

    *buf = 136315138;
    v22 = v15;
    v14 = "%s: invalid wall ID";
    goto LABEL_18;
  }
}

void sub_1DDD1DFD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t non-virtual thunk toERSpatializer::getModelOrder(ERSpatializer *this)
{
  if (*(this + 1576) == 1)
  {
    return *(this + 117);
  }

  else
  {
    return 0;
  }
}

BOOL ERSpatializer::setModelOrder(ERSpatializer *this, unsigned int a2)
{
  if (*(this + 1880) == 1 && (*(*this + 400))(this) != a2)
  {
    if (a2)
    {
      if (a2 >= 2)
      {
        v5 = 2;
      }

      else
      {
        v5 = a2;
      }

      *(this + 193) = v5;
      LODWORD(v6) = vcvtad_u64_f64(pow(6.0, v5));
      std::vector<Shoebox::Reflection>::resize(this + 40, v6);
    }

    LODWORD(v4) = *(this + 193);
    LODWORD(v7) = vcvtad_u64_f64(pow(6.0, v4));
    *(this + 471) = v7;
    std::vector<Shoebox::Reflection>::resize(this + 226, v7);
    *(this + 288) = 1;
  }

  return (*(this + 16) & 1) == 0;
}

void std::vector<Shoebox::Reflection>::resize(uint64_t *a1, unint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = 0x2E8BA2E8BA2E8BA3 * ((v4 - *a1) >> 4);
  v6 = a2 >= v5;
  v7 = a2 - v5;
  if (v7 != 0 && v6)
  {
    v8 = a1[2];
    if (0x2E8BA2E8BA2E8BA3 * ((v8 - v4) >> 4) < v7)
    {
      if (a2 <= 0x1745D1745D1745DLL)
      {
        v9 = 0x2E8BA2E8BA2E8BA3 * ((v8 - v3) >> 4);
        v10 = 2 * v9;
        if (2 * v9 <= a2)
        {
          v10 = a2;
        }

        if (v9 >= 0xBA2E8BA2E8BA2ELL)
        {
          v11 = 0x1745D1745D1745DLL;
        }

        else
        {
          v11 = v10;
        }

        std::allocator<Shoebox::Reflection>::allocate_at_least[abi:ne200100](v11);
      }

      std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
    }

    v12 = v4 + 176 * v7;
    do
    {
      *(v4 + 144) = 0u;
      *(v4 + 160) = 0u;
      *(v4 + 112) = 0u;
      *(v4 + 128) = 0u;
      *(v4 + 80) = 0u;
      *(v4 + 96) = 0u;
      *(v4 + 48) = 0u;
      *(v4 + 64) = 0u;
      *(v4 + 16) = 0u;
      *(v4 + 32) = 0u;
      *v4 = 0u;
      Shoebox::SoundObject::SoundObject(v4);
      *(v4 + 168) = 0;
      v4 += 176;
    }

    while (v4 != v12);
  }

  else
  {
    if (v6)
    {
      return;
    }

    v12 = v3 + 176 * a2;
    while (v4 != v12)
    {
      v13 = *(v4 - 32);
      if (v13)
      {
        *(v4 - 24) = v13;
        operator delete(v13);
      }

      v4 -= 176;
    }
  }

  a1[1] = v12;
}

Shoebox::SoundObject *Shoebox::SoundObject::SoundObject(Shoebox::SoundObject *this)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 4) = 0;
  __asm { FMOV            V0.4S, #1.0 }

  *(this + 2) = _Q0;
  *(this + 3) = xmmword_1DE097CE0;
  *(this + 16) = 1065353216;
  *(this + 27) = 1065353216;
  *(this + 112) = 1;
  *(this + 116) = 0;
  *(this + 120) = 0;
  *(this + 124) = 0;
  *(this + 128) = 0;
  *(this + 132) = 0;
  *(this + 136) = 0;
  *(this + 70) = 0;
  *(this + 19) = 0;
  *(this + 20) = 0;
  *(this + 18) = 0;
  memset_pattern16(this + 68, &unk_1DE095DF0, 0x28uLL);
  return this;
}

void non-virtual thunk toERSpatializer::setRoomDimensions(float32x4_t *a1, float32x4_t a2, double a3, double a4, __n128 a5)
{
  if (a1[98].i8[8] == 1)
  {
    v6 = vceqq_f32(a1[5], a2);
    v6.i32[3] = v6.i32[2];
    v6.i32[0] = vminvq_u32(v6);
    if ((v6.i32[0] & 0x80000000) == 0)
    {
      if (a2.f32[0] > 0.0)
      {
        v7 = COERCE_DOUBLE(vcgtz_f32(*&vextq_s8(a2, a2, 4uLL)));
        if ((LOBYTE(v7) & 1) != 0 && (BYTE4(v7) & 1) != 0 && (v6.i32[0] & 0x80000000) == 0)
        {
          a1[5] = a2;
          Shoebox::ShoeboxRoom::refreshRoom(a1 + 1, *a2.i64, *v6.i64, v7, a5);
        }
      }

      a1[-1].i8[0] = 1;
    }
  }
}

void ERSpatializer::setRoomRotation(float32x4_t *this, float32x4_t a2, double a3, double a4, __n128 a5)
{
  if (this[117].i8[8] == 1)
  {
    v6 = vmulq_f32(this[25], a2);
    v8 = vextq_s8(v6, v6, 8uLL).u64[0];
    v7 = COERCE_DOUBLE(vadd_f32(*v6.i8, v8));
    *&v7 = fabsf(vaddv_f32(*&v7));
    v8.i32[0] = 1065353214;
    if (*&v7 < 1.0)
    {
      this[25] = a2;
      Shoebox::ShoeboxRoom::refreshRoom(this + 20, *a2.i64, v7, *&v8, a5);
      this[18].i8[0] = 1;
    }
  }
}

void non-virtual thunk toERSpatializer::setRoomPosition(float32x4_t *a1, float32x4_t a2, double a3, double a4, __n128 a5)
{
  if (a1[98].i8[8] == 1)
  {
    v6 = vceqq_f32(a1[3], a2);
    v6.i32[3] = v6.i32[2];
    v6.i32[0] = vminvq_u32(v6);
    if ((v6.i32[0] & 0x80000000) == 0)
    {
      a1[3] = a2;
      Shoebox::ShoeboxRoom::refreshRoom(a1 + 1, *a2.i64, *v6.i64, a4, a5);
      a1[-1].i8[0] = 1;
    }
  }
}

uint64_t ERSpatializer::reset(ERSpatializer *this)
{
  result = caulk::pooled_semaphore_mutex::try_lock((this + 2488));
  if (result)
  {
    v3 = *(this + 243);
    v4 = *(this + 244);
    while (v3 != v4)
    {
      IR::IRProcessor::reset(*v3++);
    }

    v5 = *(this + 253);
    v6 = *(this + 252);
    if (v5 != v6)
    {
      v7 = 0;
      v8 = 0;
      do
      {
        v9 = (v6 + 24 * v7);
        v10 = *v9;
        v11 = v9[1];
        if (*v9 != v11)
        {
          do
          {
            IR::DelayLine<float>::reset(v10);
            v10 += 328;
          }

          while (v10 != v11);
          v5 = *(this + 253);
          v6 = *(this + 252);
        }

        v7 = ++v8;
      }

      while (0xAAAAAAAAAAAAAAABLL * ((v5 - v6) >> 3) > v8);
    }

    v12 = *(this + 255);
    v13 = *(this + 256);
    while (v12 != v13)
    {
      v14 = *v12++;
      bzero(*(v14 + 32), *(v14 + 40) - *(v14 + 32));
    }

    *(this + 17) = 1;
    *(this + 146) = *(*(this + 6) + 82);

    return caulk::pooled_semaphore_mutex::_unlock((this + 2488));
  }

  return result;
}

void non-virtual thunk toERSpatializer::~ERSpatializer(ERSpatializer *this)
{
  ERSpatializer::~ERSpatializer((this - 304));

  JUMPOUT(0x1E12BD160);
}

{
  ERSpatializer::~ERSpatializer((this - 304));
}

void ERSpatializer::~ERSpatializer(ERSpatializer *this)
{
  *this = &unk_1F59207A8;
  *(this + 38) = &unk_1F5920A40;
  v2 = *(this + 306);
  if (v2)
  {
    *(this + 307) = v2;
    operator delete(v2);
  }

  v3 = *(this + 303);
  if (v3)
  {
    *(this + 304) = v3;
    operator delete(v3);
  }

  IR::IRDataAttributes::~IRDataAttributes((this + 2224));
  IR::IRDataAttributes::~IRDataAttributes((this + 2072));
  v10 = (this + 2040);
  std::vector<std::unique_ptr<ERSpatializerFilterbank>>::__destroy_vector::operator()[abi:ne200100](&v10);
  v10 = (this + 2016);
  std::vector<std::vector<IR::DelayLine<float>>>::__destroy_vector::operator()[abi:ne200100](&v10);
  std::unique_ptr<ERDecorrelationFilter>::reset[abi:ne200100](this + 251, 0);
  v10 = (this + 1984);
  std::vector<std::unique_ptr<ERDiffusionFilter>>::__destroy_vector::operator()[abi:ne200100](&v10);
  v4 = *(this + 247);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v10 = (this + 1944);
  std::vector<std::unique_ptr<IR::IRProcessor>>::__destroy_vector::operator()[abi:ne200100](&v10);
  v10 = (this + 1920);
  std::vector<std::shared_ptr<IR::DataLoaderSourceWithTruncation>>::__destroy_vector::operator()[abi:ne200100](&v10);
  v5 = *(this + 237);
  if (v5)
  {
    *(this + 238) = v5;
    operator delete(v5);
  }

  v6 = *(this + 232);
  if (v6)
  {
    operator delete(v6);
  }

  v7 = *(this + 229);
  if (v7)
  {
    *(this + 230) = v7;
    operator delete(v7);
  }

  v10 = (this + 1808);
  std::vector<Shoebox::Reflection>::__destroy_vector::operator()[abi:ne200100](&v10);
  v8 = *(this + 222);
  if (v8)
  {
    *(this + 223) = v8;
    operator delete(v8);
  }

  v9 = *(this + 200);
  if (v9)
  {
    *(this + 201) = v9;
    operator delete(v9);
  }

  Shoebox::ShoeboxRoom::~ShoeboxRoom((this + 320));

  Spatializer::~Spatializer(this);
}

{
  ERSpatializer::~ERSpatializer(this);

  JUMPOUT(0x1E12BD160);
}

void std::vector<std::unique_ptr<ERSpatializerFilterbank>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        std::unique_ptr<ERSpatializerFilterbank>::reset[abi:ne200100](--v4, 0);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<std::vector<IR::DelayLine<float>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 3;
        v6 = v4;
        std::vector<IR::DelayLine<float>>::__destroy_vector::operator()[abi:ne200100](&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void ***std::unique_ptr<ERDecorrelationFilter>::reset[abi:ne200100](void ***result, void **a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2;
    std::vector<std::unique_ptr<ERDiffusionFilter>>::__destroy_vector::operator()[abi:ne200100](&v3);

    JUMPOUT(0x1E12BD160);
  }

  return result;
}

void std::vector<std::unique_ptr<ERDiffusionFilter>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        std::unique_ptr<ERDiffusionFilter>::reset[abi:ne200100](--v4, 0);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<std::shared_ptr<IR::DataLoaderSourceWithTruncation>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v6 = *(v4 - 1);
        if (v6)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v6);
        }

        v4 -= 16;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<Shoebox::Reflection>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<Shoebox::Reflection>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void Shoebox::ShoeboxRoom::~ShoeboxRoom(Shoebox::ShoeboxRoom *this)
{
  v2 = *(this + 52);
  if (v2)
  {
    *(this + 53) = v2;
    operator delete(v2);
  }

  v3 = *(this + 30);
  if (v3)
  {
    *(this + 31) = v3;
    operator delete(v3);
  }

  v4 = this;
  std::vector<Shoebox::Reflection>::__destroy_vector::operator()[abi:ne200100](&v4);
}

void Spatializer::~Spatializer(Spatializer *this)
{
  *this = &unk_1F593A308;
  v2 = *(this + 32);
  if (v2)
  {
    *(this + 33) = v2;
    operator delete(v2);
  }

  v3 = *(this + 29);
  if (v3)
  {
    *(this + 30) = v3;
    operator delete(v3);
  }

  v4 = *(this + 26);
  if (v4)
  {
    *(this + 27) = v4;
    operator delete(v4);
  }

  v5 = *(this + 7);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = *(this + 5);
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = *(this + 4);
  if (v7)
  {
    CFRelease(v7);
  }
}

{
  Spatializer::~Spatializer(this);

  JUMPOUT(0x1E12BD160);
}

void Spatializer::getFFTFilterConfigParams(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = 0;
  *(a1 + 16) = 0;
}

uint64_t Spatializer::reset(uint64_t this)
{
  *(this + 17) = 1;
  *(this + 146) = *(*(this + 48) + 82);
  return this;
}

uint64_t Spatializer::initialize(Spatializer *this, int16x4_t a2, unsigned int a3)
{
  v4 = *(this + 6);
  v5 = a3;
  v9 = 0;
  std::vector<float>::resize((v4 + 144), a3, &v9, a2);
  v8 = 0;
  std::vector<float>::resize(this + 26, v5, &v8, v6);
  *(this + 8) = 257;
  return 0;
}

uint64_t Spatializer::needsToProcess(Spatializer *this)
{
  if (*(*(this + 6) + 82))
  {
    v1 = 1;
  }

  else
  {
    v1 = *(this + 146);
  }

  return v1 & 1;
}

void Spatializer::setOptionalFeatureSupportDictionary(uint64_t a1, const void **a2)
{
  v3 = *(a1 + 40);
  v4 = *a2;
  *(a1 + 40) = *a2;
  if (v4)
  {
    CFRetain(v4);
  }

  if (v3)
  {
    CFRelease(v3);
  }
}

CFTypeRef Spatializer::getOptionalFeatureSupportDictionary@<X0>(CFTypeRef this@<X0>, void *a2@<X8>)
{
  v3 = *(this + 5);
  if (v3)
  {
    this = CFRetain(*(this + 5));
  }

  *a2 = v3;
  return this;
}

void Spatializer::setPropertyDictionary(uint64_t a1, const void **a2)
{
  v3 = *(a1 + 32);
  v4 = *a2;
  *(a1 + 32) = *a2;
  if (v4)
  {
    CFRetain(v4);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  atomic_store(1u, (a1 + 290));
}

CFTypeRef Spatializer::getPropertyDictionary@<X0>(CFTypeRef this@<X0>, void *a2@<X8>)
{
  v3 = *(this + 4);
  if (v3)
  {
    this = CFRetain(*(this + 4));
  }

  *a2 = v3;
  return this;
}

uint64_t Spatializer::setMaxDistance(uint64_t this, float a2)
{
  v2 = *(this + 48);
  if (*(v2 + 68) != a2)
  {
    *(v2 + 68) = a2;
    *(this + 288) = 1;
  }

  return this;
}

uint64_t Spatializer::setRefDistance(uint64_t this, float a2)
{
  v2 = *(this + 48);
  if (*(v2 + 64) != a2)
  {
    *(v2 + 64) = a2;
    *(this + 288) = 1;
  }

  return this;
}

uint64_t Spatializer::setInputChannelLabel(uint64_t this, int a2)
{
  v2 = *(this + 48);
  if (*(v2 + 136) != a2)
  {
    *(v2 + 136) = a2;
    *(this + 288) = 1;
  }

  return this;
}

uint64_t Spatializer::setOrientation(uint64_t result, int a2)
{
  v2 = *(result + 48);
  if (*(v2 + 132) != a2)
  {
    *(v2 + 132) = a2;
    *(result + 288) = 1;
  }

  return result;
}

uint64_t Spatializer::setEnableExclusionZones(uint64_t this, int a2)
{
  v2 = *(this + 48);
  if (*(v2 + 80) != a2)
  {
    *(v2 + 80) = a2;
    *(this + 296) = 1;
  }

  return this;
}

uint64_t Spatializer::setExclusionZones(uint64_t a1, char **a2)
{
  v4 = *(a1 + 48);
  v7 = *(v4 + 192);
  v5 = *(v4 + 200);
  v6 = (v4 + 192);
  v9 = *a2;
  v8 = a2[1];
  v10 = v8 - *a2;
  if (v10 == v5 - v7)
  {
    if (v9 == v8)
    {
      return 0;
    }

    v11 = *a2;
    while (AUSM::ExclusionZone::operator==(v11, v7))
    {
      v11 += 7;
      v7 += 28;
      if (v11 == v8)
      {
        return 0;
      }
    }
  }

  if (v6 != a2)
  {
    std::vector<AUSM::ExclusionZone>::__assign_with_size[abi:ne200100]<AUSM::ExclusionZone*,AUSM::ExclusionZone*>(v6, v9, v8, 0x6DB6DB6DB6DB6DB7 * (v10 >> 2));
  }

  *(a1 + 296) = 1;
  return 0;
}

void *std::vector<AUSM::ExclusionZone>::__assign_with_size[abi:ne200100]<AUSM::ExclusionZone*,AUSM::ExclusionZone*>(void *result, char *__src, char *a3, unint64_t a4)
{
  v7 = result;
  v8 = result[2];
  v9 = *result;
  if (0x6DB6DB6DB6DB6DB7 * ((v8 - *result) >> 2) < a4)
  {
    if (v9)
    {
      result[1] = v9;
      operator delete(v9);
      v8 = 0;
      *v7 = 0;
      v7[1] = 0;
      v7[2] = 0;
    }

    if (a4 <= 0x924924924924924)
    {
      v10 = 0x6DB6DB6DB6DB6DB7 * (v8 >> 2);
      v11 = 2 * v10;
      if (2 * v10 <= a4)
      {
        v11 = a4;
      }

      if (v10 >= 0x492492492492492)
      {
        v12 = 0x924924924924924;
      }

      else
      {
        v12 = v11;
      }

      std::vector<AUSM::ExclusionZone>::__vallocate[abi:ne200100](v7, v12);
    }

    std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
  }

  v13 = result[1];
  v14 = v13 - v9;
  if (0x6DB6DB6DB6DB6DB7 * ((v13 - v9) >> 2) >= a4)
  {
    v18 = a3 - __src;
    if (a3 != __src)
    {
      result = memmove(*result, __src, v18);
    }

    v17 = &v9[v18];
  }

  else
  {
    if (v13 != v9)
    {
      result = memmove(*result, __src, v13 - v9);
      v13 = v7[1];
    }

    v15 = &__src[v14];
    v16 = a3 - &__src[v14];
    if (v16)
    {
      result = memmove(v13, v15, v16);
    }

    v17 = &v13[v16];
  }

  v7[1] = v17;
  return result;
}

uint64_t Spatializer::setSpeakerSnap(uint64_t this, int a2)
{
  v2 = *(this + 48);
  if (*(v2 + 81) != a2)
  {
    *(v2 + 81) = a2;
    *(this + 288) = 1;
  }

  return this;
}

uint64_t Spatializer::setStereoAngle(uint64_t this, float a2)
{
  v2 = *(this + 48);
  if (*(v2 + 60) != a2)
  {
    *(v2 + 60) = a2;
    *(this + 288) = 1;
  }

  return this;
}

uint64_t Spatializer::setInternalizedAmount(uint64_t this, float a2)
{
  v2 = *(this + 48);
  if (*(v2 + 56) != a2)
  {
    *(v2 + 56) = a2;
    *(this + 288) = 1;
  }

  return this;
}

uint64_t Spatializer::setBinauralCompatibilityMode(uint64_t result, int a2)
{
  v2 = *(result + 48);
  if (*(v2 + 128) != a2)
  {
    *(v2 + 128) = a2;
    *(result + 288) = 1;
  }

  return result;
}

uint64_t Spatializer::setDiffuse(uint64_t this, float a2)
{
  v2 = *(this + 48);
  if (*(v2 + 52) != a2)
  {
    *(v2 + 52) = a2;
    *(this + 288) = 1;
  }

  return this;
}

uint64_t Spatializer::setSourceDepth(uint64_t this, float a2)
{
  v2 = *(this + 48);
  if (*(v2 + 20) != a2)
  {
    *(v2 + 20) = a2;
    *(this + 288) = 1;
  }

  return this;
}

uint64_t Spatializer::setSourceHeight(uint64_t this, float a2)
{
  v2 = *(this + 48);
  if (*(v2 + 16) != a2)
  {
    *(v2 + 16) = a2;
    *(this + 288) = 1;
  }

  return this;
}

uint64_t Spatializer::setSourceWidth(uint64_t this, float a2)
{
  v2 = *(this + 48);
  if (*(v2 + 12) != a2)
  {
    *(v2 + 12) = a2;
    *(this + 288) = 1;
  }

  return this;
}

uint64_t Spatializer::setDistance(uint64_t this, float a2)
{
  v2 = *(this + 48);
  if (*(v2 + 8) != a2)
  {
    *(v2 + 8) = a2;
    *(this + 288) = 1;
  }

  return this;
}

uint64_t Spatializer::setElevation(uint64_t this, float a2)
{
  v2 = *(this + 48);
  if (*(v2 + 4) != a2)
  {
    *(v2 + 4) = a2;
    *(this + 288) = 1;
  }

  return this;
}

uint64_t Spatializer::setAzimuth(uint64_t this, float a2)
{
  v2 = *(this + 48);
  if (*v2 != a2)
  {
    *v2 = a2;
    *(this + 288) = 1;
  }

  return this;
}

uint64_t Spatializer::setBypassCoeffs(Spatializer *this, float *a2, unsigned int a3)
{
  v6 = a3;
  v7 = *(this + 6);
  v9 = *(v7 + 144);
  v10 = *(v7 + 152);
  v8 = (v7 + 144);
  if (a3 != (v10 - v9) >> 2)
  {
    if (*(this + 16))
    {
      return 0xFFFFFFFFLL;
    }

    std::vector<float>::resize(v8, a3);
  }

  if (a3)
  {
    v12 = *(*(this + 6) + 144);
    do
    {
      v13 = *a2++;
      *v12++ = v13;
      --v6;
    }

    while (v6);
  }

  result = 0;
  *(this + 289) = 1;
  return result;
}

float Spatializer::getBypassCoeffs(Spatializer *this, float *a2, unsigned int a3)
{
  v3 = *(*(this + 6) + 144);
  v4 = (*(*(this + 6) + 152) - v3) >> 2;
  if (v4 >= a3)
  {
    v5 = a3;
  }

  else
  {
    v5 = v4;
  }

  if (v5)
  {
    v6 = v5;
    do
    {
      v7 = *v3++;
      result = v7;
      *a2++ = v7;
      --v6;
    }

    while (v6);
  }

  return result;
}

uint64_t Spatializer::setParams(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    v6 = *(a1 + 48);
LABEL_9:
    *v6 = *a2;
    v10 = *(a2 + 16);
    v11 = *(a2 + 32);
    v12 = *(a2 + 64);
    *(v6 + 48) = *(a2 + 48);
    *(v6 + 64) = v12;
    *(v6 + 16) = v10;
    *(v6 + 32) = v11;
    v13 = *(a2 + 80);
    v14 = *(a2 + 96);
    v15 = *(a2 + 112);
    *(v6 + 124) = *(a2 + 124);
    *(v6 + 96) = v14;
    *(v6 + 112) = v15;
    *(v6 + 80) = v13;
    if (v6 != a2)
    {
      std::vector<unsigned int>::__assign_with_size[abi:ne200100]<unsigned int *,unsigned int *>((v6 + 144), *(a2 + 144), *(a2 + 152), (*(a2 + 152) - *(a2 + 144)) >> 2);
      std::vector<unsigned int>::__assign_with_size[abi:ne200100]<unsigned int *,unsigned int *>((v6 + 168), *(a2 + 168), *(a2 + 176), (*(a2 + 176) - *(a2 + 168)) >> 2);
      std::vector<AUSM::ExclusionZone>::__assign_with_size[abi:ne200100]<AUSM::ExclusionZone*,AUSM::ExclusionZone*>((v6 + 192), *(a2 + 192), *(a2 + 200), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 200) - *(a2 + 192)) >> 2));
    }

    *(a1 + 288) = 257;
    *(a1 + 296) = 1;
    return 0;
  }

  v5 = *(a2 + 144);
  v4 = *(a2 + 152);
  v6 = *(a1 + 48);
  v7 = *(v6 + 144);
  v8 = *(v6 + 152) - v7;
  if (v4 - v5 == v8 && *(a2 + 200) - *(a2 + 192) == *(v6 + 200) - *(v6 + 192))
  {
    goto LABEL_9;
  }

  *v6 = *a2;
  *(v6 + 16) = *(a2 + 16);
  *(v6 + 128) = *(a2 + 128);
  *(v6 + 81) = *(a2 + 81);
  *(v6 + 132) = *(a2 + 132);
  *(v6 + 52) = *(a2 + 52);
  *(v6 + 68) = *(a2 + 68);
  *(v6 + 82) = *(a2 + 82);
  if (v8 >= 1)
  {
    bzero(v7, v8);
  }

  *(a1 + 288) = 257;
  *(a1 + 296) = 1;
  *(v6 + 200) = *(v6 + 192);
  *(v6 + 80) = 0;
  if (v4 != v5)
  {
    return 0xFFFFFFFFLL;
  }

  return 0;
}

uint64_t *std::unique_ptr<ERDiffusionFilter>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *(v2 + 24);
    if (v3)
    {
      *(v2 + 32) = v3;
      operator delete(v3);
    }

    v4 = *(v2 + 16);
    *(v2 + 16) = 0;
    if (v4)
    {
      std::recursive_mutex::~recursive_mutex((v4 + 64));
      v5 = *(v4 + 32);
      if (v5)
      {
        *(v4 + 40) = v5;
        operator delete(v5);
      }

      std::unique_ptr<IR::FixedIntegerDelay<float>>::~unique_ptr[abi:ne200100]((v4 + 8));
      v6 = std::unique_ptr<IR::FixedIntegerDelay<float>>::~unique_ptr[abi:ne200100](v4);
      MEMORY[0x1E12BD160](v6, 0x10A0C40FAD21E7CLL);
    }

    v7 = *(v2 + 8);
    *(v2 + 8) = 0;
    if (v7)
    {
      std::recursive_mutex::~recursive_mutex((v7 + 184));
      v8 = *(v7 + 120);
      if (v8)
      {
        *(v7 + 128) = v8;
        operator delete(v8);
      }

      v9 = *(v7 + 96);
      if (v9)
      {
        *(v7 + 104) = v9;
        operator delete(v9);
      }

      for (i = 56; i != 24; i -= 8)
      {
        v11 = *(v7 + i);
        *(v7 + i) = 0;
        if (v11)
        {
          v12 = v11[4];
          if (v12)
          {
            v11[5] = v12;
            operator delete(v12);
          }

          v13 = v11[1];
          if (v13)
          {
            v11[2] = v13;
            operator delete(v13);
          }

          MEMORY[0x1E12BD160](v11, 0x1080C4044AB9347);
        }
      }

      do
      {
        v14 = *(v7 + i);
        *(v7 + i) = 0;
        if (v14)
        {
          v15 = v14[4];
          if (v15)
          {
            v14[5] = v15;
            operator delete(v15);
          }

          v16 = v14[1];
          if (v16)
          {
            v14[2] = v16;
            operator delete(v16);
          }

          MEMORY[0x1E12BD160](v14, 0x1080C4044AB9347);
        }

        i -= 8;
      }

      while (i != -8);
      MEMORY[0x1E12BD160](v7, 0x10A0C409FCB431FLL);
    }

    v17 = *v2;
    *v2 = 0;
    if (v17)
    {
      ComplementaryFilters::~ComplementaryFilters(v17);
      MEMORY[0x1E12BD160]();
    }

    JUMPOUT(0x1E12BD160);
  }

  return result;
}

void *std::unique_ptr<IR::FixedIntegerDelay<float>>::~unique_ptr[abi:ne200100](void *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = v2[4];
    if (v3)
    {
      v2[5] = v3;
      operator delete(v3);
    }

    v4 = v2[1];
    if (v4)
    {
      v2[2] = v4;
      operator delete(v4);
    }

    MEMORY[0x1E12BD160](v2, 0x1080C40C92309C1);
  }

  return a1;
}

uint64_t *std::unique_ptr<ERSpatializerFilterbank>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    if (*(v2 + 112))
    {
      v3 = 0;
      do
      {
        vDSP_biquad_DestroySetup(*(*v2 + 8 * v3++));
      }

      while (v3 < *(v2 + 112));
    }

    v4 = *(v2 + 152);
    if (v4)
    {
      *(v2 + 160) = v4;
      operator delete(v4);
    }

    v5 = *(v2 + 120);
    if (v5)
    {
      *(v2 + 128) = v5;
      operator delete(v5);
    }

    v6 = *(v2 + 88);
    if (v6)
    {
      *(v2 + 96) = v6;
      operator delete(v6);
    }

    PPUtils::ContiguousArray2D<float>::~ContiguousArray2D((v2 + 24));
    v7 = *v2;
    if (*v2)
    {
      *(v2 + 8) = v7;
      operator delete(v7);
    }

    JUMPOUT(0x1E12BD160);
  }

  return result;
}

uint64_t ERSpatializer::setDecorrelationAmount(uint64_t this, float a2)
{
  if (*(this + 2480) != a2)
  {
    *(this + 2480) = a2;
    *(this + 288) = 1;
  }

  return this;
}

uint64_t ERSpatializer::setDecorrelationCutoff(uint64_t this, float a2)
{
  if (*(this + 2484) != a2)
  {
    *(this + 2484) = a2;
    *(this + 288) = 1;
  }

  return this;
}

uint64_t ERSpatializer::setEnableDistanceAttenuation(uint64_t this, char a2)
{
  v2 = *(this + 2424);
  v3 = *(this + 2432);
  if (v2 != v3)
  {
    v4 = 0;
    v5 = v3 - v2 - 28;
    v6 = vdupq_n_s64(v5 / 0x1C);
    v7 = (v2 + 224);
    do
    {
      v8 = vdupq_n_s64(v4);
      v9 = vmovn_s64(vcgeq_u64(v6, vorrq_s8(v8, xmmword_1DE095160)));
      if (vuzp1_s8(vuzp1_s16(v9, 14), 14).u8[0])
      {
        *(v7 - 224) = a2;
      }

      if (vuzp1_s8(vuzp1_s16(v9, 14), 14).i8[1])
      {
        *(v7 - 196) = a2;
      }

      if (vuzp1_s8(vuzp1_s16(14, vmovn_s64(vcgeq_u64(v6, vorrq_s8(v8, xmmword_1DE095150)))), 14).i8[2])
      {
        *(v7 - 168) = a2;
        *(v7 - 140) = a2;
      }

      v10 = vmovn_s64(vcgeq_u64(v6, vorrq_s8(v8, xmmword_1DE095220)));
      if (vuzp1_s8(14, vuzp1_s16(v10, 14)).i32[1])
      {
        *(v7 - 112) = a2;
      }

      if (vuzp1_s8(14, vuzp1_s16(v10, 14)).i8[5])
      {
        *(v7 - 84) = a2;
      }

      if (vuzp1_s8(14, vuzp1_s16(14, vmovn_s64(vcgeq_u64(v6, vorrq_s8(v8, xmmword_1DE0952D0))))).i8[6])
      {
        *(v7 - 56) = a2;
        *(v7 - 28) = a2;
      }

      v11 = vmovn_s64(vcgeq_u64(v6, vorrq_s8(v8, xmmword_1DE0952C0)));
      if (vuzp1_s8(vuzp1_s16(v11, 14), 14).u8[0])
      {
        *v7 = a2;
      }

      if (vuzp1_s8(vuzp1_s16(v11, 14), 14).i8[1])
      {
        v7[28] = a2;
      }

      if (vuzp1_s8(vuzp1_s16(14, vmovn_s64(vcgeq_u64(v6, vorrq_s8(v8, xmmword_1DE0952B0)))), 14).i8[2])
      {
        v7[56] = a2;
        v7[84] = a2;
      }

      v12 = vmovn_s64(vcgeq_u64(v6, vorrq_s8(v8, xmmword_1DE0952A0)));
      if (vuzp1_s8(14, vuzp1_s16(v12, 14)).i32[1])
      {
        v7[112] = a2;
      }

      if (vuzp1_s8(14, vuzp1_s16(v12, 14)).i8[5])
      {
        v7[140] = a2;
      }

      if (vuzp1_s8(14, vuzp1_s16(14, vmovn_s64(vcgeq_u64(v6, vorrq_s8(v8, xmmword_1DE095290))))).i8[6])
      {
        v7[168] = a2;
        v7[196] = a2;
      }

      v4 += 16;
      v7 += 448;
    }

    while (((v5 / 0x1C + 16) & 0x1FFFFFFFFFFFFFF0) != v4);
  }

  *(this + 2476) = 1;
  return this;
}