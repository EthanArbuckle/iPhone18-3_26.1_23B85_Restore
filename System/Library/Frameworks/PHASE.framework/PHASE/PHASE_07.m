void sub_23A37CEBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_emplace<Phase::Controller::SpatialSubmixRouter::SubmixParams>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284D31778;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x23EE864A0);
}

uint64_t _ZN5Phase7details13SharedSlotMapINS_10Controller19SpatialSubmixRouter12SubmixParamsENS_8Handle64EE13GetSlotToEditIRZNS_13SharedSlotMapIS4_S5_DnE9GetUniqueES5_EUlRT_E_EEPNS_18SharedSlotMapStateIS4_S5_E4SlotES5_OSA_(uint64_t *a1, uint64_t a2)
{
  result = Phase::details::SharedSlotMap<Phase::Controller::SpatialSubmixRouter::SubmixParams,Phase::Handle64>::GetUniqueSlot(a1, a2);
  if (result)
  {
    v3 = *(result + 8);
    if (v3)
    {
      if (*(v3 + 8) >= 1)
      {
        operator new();
      }
    }
  }

  return result;
}

void sub_23A37D064(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

uint64_t *std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::Controller::Renderer>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::Controller::Renderer>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::Controller::Renderer>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::Controller::Renderer>>>>::__erase_unique<Phase::UniqueObjectId>(void *a1, void *a2)
{
  result = std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>>>::find<Phase::UniqueObjectId>(a1, a2);
  if (result)
  {

    return std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>>>::erase(a1, result);
  }

  return result;
}

void sub_23A37D4E0(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  std::unique_ptr<Phase::Controller::SamplerCallBackDoubleBuffer>::reset[abi:ne200100]((v1 + 656), 0);
  std::unique_ptr<std::unordered_map<long long,std::pair<void *,BOOL>>>::reset[abi:ne200100]((v1 + 648), 0);

  Phase::Controller::SamplerBase::~SamplerBase(v1);
  _Unwind_Resume(a1);
}

void Phase::Controller::StreamSamplerBase::~StreamSamplerBase(Phase::Controller::StreamSamplerBase *this)
{
  *this = &unk_284D317C8;
  std::unique_ptr<Phase::Controller::SamplerCallBackDoubleBuffer>::reset[abi:ne200100](this + 82, 0);
  std::unique_ptr<std::unordered_map<long long,std::pair<void *,BOOL>>>::reset[abi:ne200100](this + 81, 0);

  Phase::Controller::SamplerBase::~SamplerBase(this);
}

void Phase::Controller::StreamSamplerBase::InternalPrepare(Phase::Controller::StreamSamplerBase *this, double a2)
{
  v3 = Phase::Controller::TaskManager::GetService<Phase::Controller::VoiceManager>(*(this + 3), 8);
  (*(**(*v3 + 688) + 112))(*(*v3 + 688));
  [*(this + 79) channelCount];
  operator new();
}

uint64_t Phase::Controller::TaskManager::GetService<Phase::Controller::VoiceManager>(Phase::Logger *a1, int a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 6);
  if (a2 >= ((*(a1 + 7) - v3) >> 5))
  {
    v7 = **(Phase::Logger::GetInstance(a1) + 464);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v14 = "TaskManager.hpp";
      v15 = 1024;
      v16 = 112;
      _os_log_impl(&dword_23A302000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION: pId < mServiceRegistry.size() is false.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::domain_error::domain_error[abi:ne200100](exception, "PRECONDITION: pId < mServiceRegistry.size() is false.");
  }

  v4 = (v3 + 32 * a2);
  if (!*v4)
  {
    v9 = **(Phase::Logger::GetInstance(v4) + 464);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      Phase::GetBacktraceFrame<1ul>(&__p);
      v10 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
      *buf = 136315906;
      v14 = "TaskManager.hpp";
      v15 = 1024;
      v16 = 121;
      v17 = 1024;
      v18 = a2;
      v19 = 2080;
      v20 = v10;
      _os_log_impl(&dword_23A302000, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::domain_error) [not lService.has_value() is true]: No service registered for Id %i, in call \\n%s", buf, 0x22u);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    v11 = __cxa_allocate_exception(0x10uLL);
    std::domain_error::domain_error[abi:ne200100](v11, "No service registered for Id %i, in call \n%s");
  }

  v5 = std::any_cast[abi:ne200100]<Phase::Controller::VoiceManager * const>(v4);
  if (!v5)
  {
    std::__throw_bad_any_cast[abi:ne200100]();
  }

  return *v5;
}

void sub_23A37DADC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void sub_23A37E00C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  std::vector<Phase::Controller::DspNode>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t Phase::Controller::StreamSamplerBase::IORenderOutput(Phase::Controller::StreamSamplerBase *this, uint64_t *a2, const AudioTimeStamp *a3, unsigned int *a4, AudioBufferList *a5)
{
  v35 = *MEMORY[0x277D85DE8];
  if (!this || !a4)
  {
LABEL_19:
    std::terminate();
  }

  if (*a4 != 1)
  {
    if (!*a4)
    {
      goto LABEL_19;
    }

    v8 = *(a4 + 2);
    v9 = (*(**(this + 5) + 64))(*(this + 5), *(this + 37), *(this + 38), a2, a3, a4);
    if (v9)
    {
      if (*(a4 + 2) != v8)
      {
        v10 = **(Phase::Logger::GetInstance(v9) + 400);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          v11 = *a2;
          v12 = *(a4 + 2);
          *v24 = 136316418;
          *&v24[4] = "CvmStreamSamplerBase.mm";
          v25 = 1024;
          v26 = 177;
          v27 = 2048;
          v28 = this;
          v29 = 2048;
          v30 = v11;
          v31 = 2048;
          v32 = v8;
          v33 = 2048;
          v34 = v12;
          _os_log_impl(&dword_23A302000, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d impl@%p: [IO] st@%f: internal buffer pointer changed [from %p to %p]!", v24, 0x3Au);
          std::terminate();
        }

        goto LABEL_19;
      }

      goto LABEL_10;
    }

    return 0;
  }

  if (!(*(**(this + 5) + 64))(*(this + 5), *(this + 37), *(this + 38), a2, a3, a4))
  {
    return 0;
  }

LABEL_10:
  v13 = *a4;
  v14 = 1;
  if (v13)
  {
    v15 = 0;
    v16 = 0;
    v17 = 4;
    do
    {
      if ((*(this + 9) & (1 << v15)) != 0)
      {
        v18 = *(this + 81);
        *v24 = *(*(this + 20) + 88 * v16 + 8);
        v19 = std::__hash_table<std::__hash_value_type<unsigned long long,int>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,int>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,int>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,int>>>::find<unsigned long long>(v18, v24);
        v19[3] = *&a4[v17];
        *(v19 + 32) = 1;
        ++v16;
        v13 = *a4;
      }

      ++v15;
      v17 += 4;
    }

    while (v15 < v13);
    if (v13 > 1)
    {
      v20 = *(this + 82);
      if (*(v20 + 40) != 1)
      {
        v22 = *(v20 + 16);
        v21 = *(v20 + 24);
        if (v22 == v21)
        {
          v21 = *(v20 + 32);
        }

        else if (v22 != *(v20 + 32))
        {
          goto LABEL_19;
        }

        *(v20 + 16) = v21;
        Phase::Controller::SamplerCallBackDoubleBuffer::PrepareRenderingBuffer(v20);
      }
    }

    return 1;
  }

  return v14;
}

uint64_t Phase::Controller::SamplerCallBackDoubleBuffer::PrepareRenderingBuffer(uint64_t this)
{
  v1 = *(this + 40);
  if (v1 >= 1)
  {
    v2 = *(this + 16);
    v3 = *(this + 48);
    v4 = 4 * v3;
    v5 = (*this + 16);
    v6 = 4 * v3;
    do
    {
      *v5 = v2;
      *(v5 - 2) = 1;
      *(v5 - 1) = v4;
      v5 += 2;
      v2 += v6;
      --v1;
    }

    while (v1);
  }

  return this;
}

uint64_t std::unique_ptr<std::unordered_map<long long,std::pair<void *,BOOL>>>::reset[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    std::__hash_table<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::__unordered_map_hasher<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::hash<Phase::SpatialCategory>,std::equal_to<Phase::SpatialCategory>,true>,std::__unordered_map_equal<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::equal_to<Phase::SpatialCategory>,std::hash<Phase::SpatialCategory>,true>,std::allocator<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>>>::~__hash_table(result);

    JUMPOUT(0x23EE864A0);
  }

  return result;
}

void **std::unique_ptr<Phase::Controller::SamplerCallBackDoubleBuffer>::reset[abi:ne200100](void ***a1, void **a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    Phase::Controller::SamplerCallBackDoubleBuffer::~SamplerCallBackDoubleBuffer(result);

    JUMPOUT(0x23EE864A0);
  }

  return result;
}

void Phase::Controller::SamplerCallBackDoubleBuffer::~SamplerCallBackDoubleBuffer(void **this)
{
  free(this[3]);
  free(this[4]);
  free(this[1]);
}

uint64_t (**std::any_cast[abi:ne200100]<Phase::Controller::VoiceManager * const>(uint64_t (**result)(uint64_t, void, void, void, void *)))(uint64_t, void, void, void, void *)
{
  if (result)
  {
    if (*result)
    {
      return (*result)(3, result, 0, 0, &std::__any_imp::__unique_typeinfo<Phase::Controller::VoiceManager *>::__id);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

Phase::Logger *Phase::Controller::Submix::Submix(Phase::Logger *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, Phase::Logger *a10, uint64_t a11, uint64_t a12)
{
  v12 = a1;
  v48 = *MEMORY[0x277D85DE8];
  *a1 = &unk_284D31858;
  *(a1 + 8) = 0;
  *(a1 + 5) = 0u;
  v13 = (a1 + 80);
  *(a1 + 6) = 0u;
  *(a1 + 7) = 0;
  *(a1 + 8) = 0;
  *(a1 + 36) = 0;
  *(a1 + 1) = 0u;
  *(a1 + 2) = 0u;
  *(a1 + 12) = 0;
  *(a1 + 28) = 1065353216;
  *(a1 + 15) = 0xFFFF00000000;
  v14 = a1 + 120;
  *(a1 + 32) = 0;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 46) = 0;
  *(a1 + 34) = 0;
  *(a1 + 15) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 13) = 0u;
  *(a1 + 14) = 0u;
  *(a1 + 12) = 0u;
  *(a1 + 70) = 1065353216;
  *(a1 + 288) = 1;
  *(a1 + 292) = xmmword_23A554F80;
  *(a1 + 77) = 0;
  *(a1 + 39) = 0x200000000;
  *(a1 + 320) = 1;
  *(a1 + 41) = 0x3FF0000000000000;
  *(a1 + 42) = 0x3F8000003F800000;
  *(a1 + 43) = 0;
  *(a1 + 44) = 0;
  if (!(a2 | a3))
  {
    v38 = **(Phase::Logger::GetInstance(a1) + 400);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "CvmSubmix.mm";
      *&buf[12] = 1024;
      *&buf[14] = 44;
      _os_log_impl(&dword_23A302000, v38, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION: inSubmixId != kInvalidSubmixId is false.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "PRECONDITION: inSubmixId != kInvalidSubmixId is false.");
LABEL_23:
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
  }

  if (!a7 || !a8 || (a1 = a10) == 0 || !a11 || !a12)
  {
    v40 = **(Phase::Logger::GetInstance(a1) + 400);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "CvmSubmix.mm";
      *&buf[12] = 1024;
      *&buf[14] = 47;
      _os_log_impl(&dword_23A302000, v40, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION: pInBackingHeap != nullptr && pInVoiceIdAllocator != nullptr && pInTaskManager != nullptr && pInDSPVoiceManager != nullptr && pInSubmixSystem != nullptr is false.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "PRECONDITION: pInBackingHeap != nullptr && pInVoiceIdAllocator != nullptr && pInTaskManager != nullptr && pInDSPVoiceManager != nullptr && pInSubmixSystem != nullptr is false.");
    goto LABEL_23;
  }

  *(v12 + 24) = a7;
  *(v12 + 25) = a8;
  *(v12 + 26) = a9;
  *(v12 + 27) = a10;
  *(v12 + 28) = a11;
  *(v12 + 29) = a12;
  v20 = Phase::Controller::TaskManager::GetService<Phase::Controller::SessionManager>(a10, 20);
  *(v12 + 44) = v20;
  if (!v20)
  {
    goto LABEL_16;
  }

  _X0 = 1065353216;
  *buf = 1065353216;
  *&buf[8] = 0;
  v22 = *(v12 + 42);
  do
  {
    _X5 = *(v12 + 43);
    __asm { CASPAL          X4, X5, X0, X1, [X8] }

    _ZF = _X4 == v22;
    v22 = _X4;
  }

  while (!_ZF);
  v29 = Phase::Controller::TaskManager::GetService<Phase::Geometry::System>(*(v12 + 27), 2);
  *(v12 + 30) = v29;
  if (!v29)
  {
LABEL_16:
    std::terminate();
  }

  *(v12 + 2) = a2;
  *(v12 + 3) = a3;
  *(v12 + 4) = a4;
  *(v12 + 5) = a5;
  *(v12 + 12) = a6;
  Phase::BitBlockAllocator<Phase::SystemAllocator>::Initialize(v14, 16, 80, *(v12 + 24), "Effect Allocator");
  std::__hash_table<std::__hash_value_type<unsigned int,Phase::Controller::OptionalProperties::Property>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,Phase::Controller::OptionalProperties::Property>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,Phase::Controller::OptionalProperties::Property>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,Phase::Controller::OptionalProperties::Property>>>::__rehash<true>(v12 + 248, vcvtps_u32_f32(1.0 / *(v12 + 70)));
  *buf = 0;
  __asm { FMOV            V0.2D, #1.0 }

  v45 = _Q0;
  *&buf[8] = _Q0;
  *&buf[24] = 0x3FF0000000000000;
  v47 = 0;
  v31 = std::__hash_table<std::__hash_value_type<unsigned long long,Phase::Controller::Parameter<double>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,Phase::Controller::Parameter<double>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,Phase::Controller::Parameter<double>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,Phase::Controller::Parameter<double>>>>::__emplace_unique_key_args<unsigned long long,unsigned long long const&,Phase::Controller::Parameter<double>>(v13, qword_278B4F040);
  if ((v32 & 1) == 0)
  {
    v41 = **(Phase::Logger::GetInstance(v31) + 400);
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "CvmSubmix.mm";
      *&buf[12] = 1024;
      *&buf[14] = 74;
      *&buf[18] = 2048;
      *&buf[20] = 0xB5767F7E05AD941ELL;
      _os_log_impl(&dword_23A302000, v41, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error) [!pair.second is true]: Failed to insert %llu parameter", buf, 0x1Cu);
    }

LABEL_32:
    v44 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v44, "Failed to insert %llu parameter");
  }

  *buf = 0;
  *&buf[8] = v45;
  *&buf[24] = 0x3FF0000000000000;
  v47 = 0;
  v33 = std::__hash_table<std::__hash_value_type<unsigned long long,Phase::Controller::Parameter<double>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,Phase::Controller::Parameter<double>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,Phase::Controller::Parameter<double>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,Phase::Controller::Parameter<double>>>>::__emplace_unique_key_args<unsigned long long,unsigned long long const&,Phase::Controller::Parameter<double>>(v13, qword_278B4F070);
  if ((v34 & 1) == 0)
  {
    v42 = **(Phase::Logger::GetInstance(v33) + 400);
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "CvmSubmix.mm";
      *&buf[12] = 1024;
      *&buf[14] = 77;
      *&buf[18] = 2048;
      *&buf[20] = 0x81FBB92FC0173ECLL;
      _os_log_impl(&dword_23A302000, v42, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error) [!pair.second is true]: Failed to insert %llu parameter", buf, 0x1Cu);
    }

    goto LABEL_32;
  }

  *buf = 0;
  *&buf[8] = v45;
  *&buf[24] = 0x3FF0000000000000;
  v47 = 0;
  v35 = std::__hash_table<std::__hash_value_type<unsigned long long,Phase::Controller::Parameter<double>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,Phase::Controller::Parameter<double>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,Phase::Controller::Parameter<double>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,Phase::Controller::Parameter<double>>>>::__emplace_unique_key_args<unsigned long long,unsigned long long const&,Phase::Controller::Parameter<double>>(v13, qword_278B4F0A0);
  if ((v36 & 1) == 0)
  {
    v43 = **(Phase::Logger::GetInstance(v35) + 400);
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "CvmSubmix.mm";
      *&buf[12] = 1024;
      *&buf[14] = 80;
      *&buf[18] = 2048;
      *&buf[20] = 0x8119B92FBF50030;
      _os_log_impl(&dword_23A302000, v43, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error) [!pair.second is true]: Failed to insert %llu parameter", buf, 0x1Cu);
    }

    goto LABEL_32;
  }

  return v12;
}

void sub_23A37EA1C(_Unwind_Exception *a1)
{
  __cxa_free_exception(v4);
  std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::Generator>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::Generator>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::Generator>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::Generator>>>>::~__hash_table(v1 + 248);
  Phase::BitBlockAllocator<Phase::SystemAllocator>::Destroy(v3);
  std::__hash_table<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::__unordered_map_hasher<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::hash<Phase::SpatialCategory>,std::equal_to<Phase::SpatialCategory>,true>,std::__unordered_map_equal<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::equal_to<Phase::SpatialCategory>,std::hash<Phase::SpatialCategory>,true>,std::allocator<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>>>::~__hash_table(v2);
  _Unwind_Resume(a1);
}

uint64_t Phase::Controller::TaskManager::GetService<Phase::Controller::SessionManager>(Phase::Logger *a1, int a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 6);
  if (a2 >= ((*(a1 + 7) - v3) >> 5))
  {
    v7 = **(Phase::Logger::GetInstance(a1) + 464);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v14 = "TaskManager.hpp";
      v15 = 1024;
      v16 = 112;
      _os_log_impl(&dword_23A302000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION: pId < mServiceRegistry.size() is false.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::domain_error::domain_error[abi:ne200100](exception, "PRECONDITION: pId < mServiceRegistry.size() is false.");
  }

  v4 = (v3 + 32 * a2);
  if (!*v4)
  {
    v9 = **(Phase::Logger::GetInstance(v4) + 464);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      Phase::GetBacktraceFrame<1ul>(&__p);
      v10 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
      *buf = 136315906;
      v14 = "TaskManager.hpp";
      v15 = 1024;
      v16 = 121;
      v17 = 1024;
      v18 = a2;
      v19 = 2080;
      v20 = v10;
      _os_log_impl(&dword_23A302000, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::domain_error) [not lService.has_value() is true]: No service registered for Id %i, in call \\n%s", buf, 0x22u);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    v11 = __cxa_allocate_exception(0x10uLL);
    std::domain_error::domain_error[abi:ne200100](v11, "No service registered for Id %i, in call \n%s");
  }

  v5 = std::any_cast[abi:ne200100]<Phase::Controller::SessionManager * const>(v4);
  if (!v5)
  {
    std::__throw_bad_any_cast[abi:ne200100]();
  }

  return *v5;
}

void sub_23A37EDF0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void Phase::Controller::Submix::~Submix(Phase::Controller::Submix *this)
{
  v15 = *MEMORY[0x277D85DE8];
  *this = &unk_284D31858;
  Phase::Controller::Submix::DestroyInputs(this);
  while (*(this + 21) || *(this + 22))
  {
    Phase::Controller::Submix::RemoveEffect(this, 0);
  }

  *(this + 21) = 0;
  *(this + 22) = 0;
  *(this + 46) = 0;
  Phase::BitBlockAllocator<Phase::SystemAllocator>::Destroy(this + 120);
  Instance = Phase::Logger::GetInstance(v2);
  if (*(Instance + 1636) == 1)
  {
    v4 = **(Phase::Logger::GetInstance(Instance) + 400);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(this + 4);
      v6 = *(this + 2);
      v7 = 136315906;
      v8 = "CvmSubmix.mm";
      v9 = 1024;
      v10 = 98;
      v11 = 2048;
      v12 = v5;
      v13 = 2048;
      v14 = v6;
      _os_log_impl(&dword_23A302000, v4, OS_LOG_TYPE_DEFAULT, "%25s:%-5d (sound event: %llu, submix: %llu) - destroyed", &v7, 0x26u);
    }
  }

  std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::Generator>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::Generator>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::Generator>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::Generator>>>>::~__hash_table(this + 248);
  Phase::BitBlockAllocator<Phase::SystemAllocator>::Destroy(this + 120);
  std::__hash_table<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::__unordered_map_hasher<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::hash<Phase::SpatialCategory>,std::equal_to<Phase::SpatialCategory>,true>,std::__unordered_map_equal<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::equal_to<Phase::SpatialCategory>,std::hash<Phase::SpatialCategory>,true>,std::allocator<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>>>::~__hash_table(this + 80);
}

void sub_23A37EF64(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void Phase::Controller::Submix::RemoveEffect(Phase::Controller::Submix *this, unsigned int a2)
{
  v13 = *MEMORY[0x277D85DE8];
  if ((a2 & 0x80000000) != 0 || *(this + 46) <= a2)
  {
    v7 = **(Phase::Logger::GetInstance(this) + 400);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315394;
      v10 = "CvmSubmix.mm";
      v11 = 1024;
      v12 = 548;
      _os_log_impl(&dword_23A302000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION: inIndex >= 0 && inIndex < mEffectChain.Count() is false.", &v9, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::out_of_range::out_of_range[abi:ne200100](exception, "PRECONDITION: inIndex >= 0 && inIndex < mEffectChain.Count() is false.");
  }

  for (i = *(this + 21); a2; --a2)
  {
    i = *(i + 16);
  }

  Phase::LinkedList::RemoveNode((this + 168), i);
  v4 = *(i + 24);
  v5 = *(i + 32);
  while (v4 != v5)
  {
    std::__hash_table<std::__hash_value_type<int,Phase::Controller::Parameter<double>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,Phase::Controller::Parameter<double>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,Phase::Controller::Parameter<double>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,Phase::Controller::Parameter<double>>>>::clear((v4 + 16));
    std::vector<Phase::VoiceBufferParameter>::clear[abi:ne200100]((v4 + 56));
    v4 += 88;
  }

  v6 = *(i + 48);
  (**i)(i);
  Phase::BitBlockAllocator<Phase::SystemAllocator>::Free(this + 120, v6);
  *(this + 8) |= 2uLL;
}

void Phase::Controller::Submix::SessionPause(Phase::Controller::Submix *this)
{
  for (i = *(this + 33); i; i = *i)
  {
    Phase::Controller::Generator::SessionPause(i[4]);
  }
}

uint64_t Phase::Controller::Submix::SessionResume(uint64_t this)
{
  for (i = *(this + 264); i; i = *i)
  {
    this = i[4];
    if (*(this + 460) == 1)
    {
      memset(v2, 0, sizeof(v2));
      this = (*(*this + 32))(this, v2);
    }
  }

  return this;
}

uint64_t Phase::Controller::Submix::ClientEnginePause(uint64_t this)
{
  for (i = *(this + 264); i; i = *i)
  {
    this = (*(*i[4] + 40))(i[4]);
  }

  return this;
}

uint64_t Phase::Controller::Submix::ClientEngineStart(uint64_t this)
{
  for (i = *(this + 264); i; i = *i)
  {
    this = (*(*i[4] + 48))(i[4]);
  }

  return this;
}

uint64_t Phase::Controller::Submix::IsStopped(Phase::Controller::Submix *this)
{
  if (*(this + 72))
  {
    v1 = 0;
  }

  else
  {
    v1 = *(this + 288);
  }

  return v1 & 1;
}

uint64_t Phase::Controller::Submix::IsDestroyed(Phase::Controller::Submix *this)
{
  if ((*(this + 56) & 0x20) != 0)
  {
    return (*(*this + 80))();
  }

  else
  {
    return 0;
  }
}

uint64_t Phase::Controller::Submix::HasActiveInputs(Phase::Controller::Submix *this)
{
  v1 = *(this + 33);
  if (!v1)
  {
    return 0;
  }

  while (1)
  {
    v2 = v1[4];
    if (*(v2 + 580) != 1 && *(v2 + 448) != 4)
    {
      break;
    }

    v1 = *v1;
    if (!v1)
    {
      return 0;
    }
  }

  return 1;
}

BOOL Phase::Controller::Submix::AllInputsPaused(Phase::Controller::Submix *this)
{
  v1 = (this + 264);
  do
  {
    v1 = *v1;
  }

  while (v1 && (*(v1[4] + 584) & 1) != 0);
  return v1 == 0;
}

void Phase::Controller::Submix::SetParameter(Phase::Controller::Submix *this, unint64_t a2, double a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v8 = a2;
  v4 = std::__hash_table<std::__hash_value_type<unsigned long long,int>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,int>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,int>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,int>>>::find<unsigned long long>(this + 10, &v8);
  if (v4)
  {
    v5 = v4;
    v6 = Phase::Controller::sClamp<double>(v4, a3, v4[3], v4[4]);
    if (v6 != v5[6])
    {
      v5[6] = v6;
      *(v5 + 56) = 1;
    }
  }

  else
  {
    v7 = **(Phase::Logger::GetInstance(0) + 400);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      v10 = "CvmSubmix.mm";
      v11 = 1024;
      v12 = 230;
      v13 = 2048;
      v14 = v8;
      _os_log_impl(&dword_23A302000, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d Submix:SetParameter: was called with an invalid inParameterId %lld!", buf, 0x1Cu);
    }
  }
}

void Phase::Controller::Submix::SetParameterData(Phase::Controller::Submix *this, uint64_t a2, const void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = **(Phase::Logger::GetInstance(this) + 400);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315650;
    v6 = "CvmSubmix.mm";
    v7 = 1024;
    v8 = 237;
    v9 = 2048;
    v10 = a2;
    _os_log_impl(&dword_23A302000, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d Submix:SetParameterData: was called with an invalid inParameterId %lld!", &v5, 0x1Cu);
  }
}

void Phase::Controller::Submix::StopInputs(Phase::Controller::Submix *this)
{
  v9 = *MEMORY[0x277D85DE8];
  for (i = *(this + 33); i; i = *i)
  {
    v2 = i[4];
    if (!v2)
    {
      v3 = **(Phase::Logger::GetInstance(0) + 400);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        v5 = 136315394;
        v6 = "CvmSubmix.mm";
        v7 = 1024;
        v8 = 245;
        _os_log_impl(&dword_23A302000, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION: pGenerator != nullptr is false.", &v5, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(exception, "PRECONDITION: pGenerator != nullptr is false.");
    }

    Phase::Controller::Generator::Stop(v2);
  }
}

void Phase::Controller::Submix::DestroyInputs(Phase::Controller::Submix *this)
{
  v9 = *MEMORY[0x277D85DE8];
  for (i = *(this + 33); i; i = *i)
  {
    v2 = i[4];
    if (!v2)
    {
      v3 = **(Phase::Logger::GetInstance(0) + 400);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        v5 = 136315394;
        v6 = "CvmSubmix.mm";
        v7 = 1024;
        v8 = 257;
        _os_log_impl(&dword_23A302000, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION: pGenerator != nullptr is false.", &v5, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(exception, "PRECONDITION: pGenerator != nullptr is false.");
    }

    Phase::Controller::Generator::Stop(v2);
    Phase::Controller::Generator::Finish(i[4]);
  }
}

void Phase::Controller::Submix::Update(uint64_t a1, uint64_t a2)
{
  v34 = *MEMORY[0x277D85DE8];
  if ((*(*a1 + 88))(a1))
  {
    return;
  }

  v4 = (*(*a1 + 112))(a1);
  v5 = v4;
  for (i = *(a1 + 264); i; i = *i)
  {
    v7 = i[4];
    if (!v7)
    {
      v26 = **(Phase::Logger::GetInstance(v4) + 400);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        *__p = 136315394;
        *&__p[4] = "CvmSubmix.mm";
        *&__p[12] = 1024;
        *&__p[14] = 280;
        _os_log_impl(&dword_23A302000, v26, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION: pGenerator != nullptr is false.", __p, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(exception, "PRECONDITION: pGenerator != nullptr is false.");
    }

    if ((*(a1 + 56) & 0x10) != 0)
    {
      *(v7 + 54) = 0;
      *(v7 + 584) = 0;
      *(v7 + 456) = 1;
      Phase::Controller::Generator::SetSleepState(v7, 0);
      (*(*v7 + 112))(v7, 0);
      v7 = i[4];
    }

    Phase::Controller::Generator::Update(v7, a2, v5);
  }

  v8 = *(a1 + 56);
  *(a1 + 56) = v8 & 0xFFFFFFFFFFFFFFEFLL;
  if ((v8 & 8) != 0)
  {
    (*(*a1 + 320))(a1);
    if (*(a1 + 72) >= 2u)
    {
      goto LABEL_63;
    }

    goto LABEL_58;
  }

  v9 = *a1;
  if ((v8 & 2) != 0)
  {
    (*(v9 + 296))(a1);
    if (*(a1 + 72) != 5)
    {
      goto LABEL_63;
    }

    goto LABEL_15;
  }

  v10 = (*(v9 + 184))(a1);
  v11 = *(a1 + 72);
  if (v10)
  {
    if (!*(a1 + 72))
    {
      goto LABEL_58;
    }
  }

  else if (v11 != 6)
  {
    goto LABEL_21;
  }

  (*(*a1 + 312))(a1);
  v11 = *(a1 + 72);
  if ((v11 - 8) <= 0xFFFFFFFD)
  {
    goto LABEL_63;
  }

  if (v10)
  {
    goto LABEL_25;
  }

LABEL_21:
  if (v11 == 5)
  {
LABEL_15:
    v12 = *(a1 + 56);
    if ((v12 & 8) != 0)
    {
      goto LABEL_63;
    }

    if ((v12 & 4) == 0)
    {
      goto LABEL_58;
    }

    (*(*a1 + 304))(a1);
    v11 = *(a1 + 72);
    goto LABEL_25;
  }

  if (v11 == 7)
  {
    (*(*a1 + 288))(a1);
    if (*(a1 + 72) != 2)
    {
      goto LABEL_63;
    }

LABEL_27:
    if (!(*(*a1 + 104))(a1))
    {
      return;
    }

    (*(*a1 + 304))(a1);
    if (*(a1 + 72) != 3)
    {
      goto LABEL_63;
    }

    goto LABEL_29;
  }

LABEL_25:
  if (v11 != 3)
  {
    if (v11 != 2)
    {
      goto LABEL_31;
    }

    goto LABEL_27;
  }

LABEL_29:
  if (!(*(*a1 + 128))(a1))
  {
    return;
  }

  Phase::Controller::Submix::SetState(a1, 4u);
  v11 = *(a1 + 72);
LABEL_31:
  if (v11 == 4)
  {
    if ((*(a1 + 64) & 1) == 0)
    {
      v13 = *(a1 + 56);
      if ((v13 & 8) == 0 && (v13 & 2) == 0)
      {
        for (j = *(a1 + 96); j; j = *j)
        {
          if (*(j + 56) == 1)
          {
            *(j + 56) = 0;
          }
        }

        if ((*(*a1 + 336))(a1) != 2)
        {
          v15 = *a2;
          if (*a2 > 0.016666)
          {
            v15 = 0.016666;
          }

          if (*(a1 + 320))
          {
            v15 = 0.0;
          }

          Phase::Controller::Submix::UpdateGainEffectsWithDuration(a1, v15);
          *(a1 + 320) = (*(*a1 + 136))(a1);
        }

        v16 = *(a1 + 64);
        *(a1 + 64) = v16 & 0xFFFFFFFFFFFFFFFDLL;
        if ((v16 & 2) != 0)
        {
          Phase::Controller::DVM23::DvmAdapter::ConfigureSubmix(*(a1 + 224), *(a1 + 16), *(a1 + 24), 1u, a1 + 168);
        }

        else
        {
          v17 = *(a1 + 184);
          if (v17 >= 1)
          {
            v18 = 0;
            v19 = a1 + 168;
            do
            {
              v20 = *v19;
              v21 = *(*v19 + 24);
              v22 = *(*v19 + 32);
              if (v21 != v22)
              {
                do
                {
                  Phase::Controller::CvmVoiceData::PackDirtyDspParameters(v21, __p);
                  Phase::Controller::DVM23::DvmAdapter::SetParameters(*(a1 + 224), *v21, v21[1], __p);
                  for (k = v21[4]; k; k = *k)
                  {
                    *(k + 56) = 0;
                  }

                  if (*__p)
                  {
                    *&__p[8] = *__p;
                    operator delete(*__p);
                  }

                  v21 += 11;
                }

                while (v21 != v22);
                v17 = *(a1 + 184);
              }

              v19 = v20 + 16;
              ++v18;
            }

            while (v18 < v17);
          }
        }

        goto LABEL_58;
      }
    }

LABEL_63:
    std::terminate();
  }

LABEL_58:
  if (((v5 ^ 1) & (*(*a1 + 112))(a1)) == 1)
  {
    for (m = *(a1 + 264); m; m = *m)
    {
      v25 = m[4];
      if (!v25)
      {
        v28 = **(Phase::Logger::GetInstance(0) + 400);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          *__p = 136315394;
          *&__p[4] = "CvmSubmix.mm";
          *&__p[12] = 1024;
          *&__p[14] = 443;
          _os_log_impl(&dword_23A302000, v28, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION: pGenerator != nullptr is false.", __p, 0x12u);
        }

        v29 = __cxa_allocate_exception(0x10uLL);
        std::logic_error::logic_error(v29, "PRECONDITION: pGenerator != nullptr is false.");
      }

      *__p = 0;
      *&__p[8] = *(a2 + 8);
      v31 = *(a2 + 24);
      v32 = *(a2 + 40);
      v33 = *(a2 + 56);
      Phase::Controller::Generator::Update(v25, __p, 1);
    }
  }
}

void Phase::Controller::Submix::SetState(uint64_t a1, unsigned int a2)
{
  v21 = *MEMORY[0x277D85DE8];
  if (*(a1 + 72) != a2)
  {
    Instance = Phase::Logger::GetInstance(a1);
    if (*(Instance + 1636) == 1)
    {
      v5 = **(Phase::Logger::GetInstance(Instance) + 400);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = *(a1 + 32);
        v7 = *(a1 + 16);
        SubmixStateString = Phase::Controller::Submix::sGetSubmixStateString(*(a1 + 72));
        v9 = 136316418;
        v10 = "CvmSubmix.mm";
        v11 = 1024;
        v12 = 1071;
        v13 = 2048;
        v14 = v6;
        v15 = 2048;
        v16 = v7;
        v17 = 2080;
        v18 = SubmixStateString;
        v19 = 2080;
        v20 = Phase::Controller::Submix::sGetSubmixStateString(a2);
        _os_log_impl(&dword_23A302000, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d (sound event: %llu, submix: %llu) - state changed from '%s' to '%s'", &v9, 0x3Au);
      }
    }

    *(a1 + 72) = a2;
  }
}

void Phase::Controller::Submix::UpdateGainEffectsWithDuration(Phase::Controller::Submix *this, double a2)
{
  _X20 = 0;
  _X21 = 0;
  _X1 = 0;
  __asm { CASPAL          X0, X1, X20, X21, [X22] }

  _X1 = 0;
  __asm { CASPAL          X0, X1, X20, X21, [X22] }

  v14 = (*(*this + 328))(this);
  __asm { CASPAL          X20, X21, X20, X21, [X22] }

  Phase::Controller::Submix::SetEffectParameter(this, *(this + 46) - 3, *(this + 74), 1.0 * v14, 0);
  Phase::Controller::Submix::SetEffectParameter(this, *(this + 46) - 3, *(this + 73), a2, 0);
  Phase::Controller::Submix::SetEffectParameter(this, *(this + 46) - 1, *(this + 79), *&_X20, 0);
  v16 = *(this + 46) - 1;
  v17 = *(this + 78);

  Phase::Controller::Submix::SetEffectParameter(this, v16, v17, a2, 0);
}

uint64_t Phase::Controller::Submix::ShouldSleep(Phase::Controller::Submix *this)
{
  if (*(this + 8))
  {
    return 0;
  }

  if ((*(*this + 120))(this) && ((*(*this + 128))(this) & 1) == 0)
  {
    v3 = *(this + 8) | 1;
    result = 1;
  }

  else
  {
    result = 0;
    v3 = *(this + 8) & 0xFFFFFFFFFFFFFFFELL;
  }

  *(this + 8) = v3;
  return result;
}

uint64_t Phase::Controller::Submix::SubmitGeneratorStoppedResult(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*Phase::Controller::Submix::GetGenerator(a1, a2, a3) + 64);

  return v3();
}

uint64_t Phase::Controller::Submix::GetGenerator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v10[0] = a2;
  v10[1] = a3;
  v4 = std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>>>::find<Phase::UniqueObjectId>((a1 + 248), v10);
  if (!v4)
  {
    v6 = **(Phase::Logger::GetInstance(0) + 400);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v12 = "CvmSubmix.mm";
      v13 = 1024;
      v14 = 1333;
      v15 = 2048;
      v16 = a2;
      _os_log_impl(&dword_23A302000, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (IdAlreadyExists) [it == mGenerators.end() is true]: GeneratorId %llu does not exist!", buf, 0x1Cu);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    _ZN5Phase10Controller15IdAlreadyExistsCI1St11logic_errorEPKc(exception, "GeneratorId %llu does not exist!");
  }

  result = v4[4];
  if (!result)
  {
    v8 = **(Phase::Logger::GetInstance(0) + 400);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v12 = "CvmSubmix.mm";
      v13 = 1024;
      v14 = 1336;
      _os_log_impl(&dword_23A302000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION: pGenerator != nullptr is false.", buf, 0x12u);
    }

    v9 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v9, "PRECONDITION: pGenerator != nullptr is false.");
  }

  return result;
}

Phase::Logger *Phase::Controller::Submix::SubmitSubmixStoppedResult(Phase::Logger *this, std::error_code a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v4 = a2;
  if (a2.__val_ == 1)
  {
    v2 = **(Phase::Logger::GetInstance(this) + 400);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
      *(buf.__r_.__value_.__r.__words + 4) = "CvmSubmix.mm";
      WORD2(buf.__r_.__value_.__r.__words[1]) = 1024;
      *(&buf.__r_.__value_.__r.__words[1] + 6) = 479;
      _os_log_impl(&dword_23A302000, v2, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error) [inErrorCode.value() == true is true]: inErrorCode.message()", &buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::error_code::message(&buf, &v4);
    MEMORY[0x23EE85EE0](exception, &buf);
  }

  *(this + 288) = 1;
  return this;
}

void sub_23A3805B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
    if ((v17 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v17)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v16);
  goto LABEL_6;
}

uint64_t Phase::Controller::Submix::AddEffect(uint64_t a1, uint64_t a2, unsigned int a3, char *a4)
{
  v26 = *MEMORY[0x277D85DE8];
  v8 = Phase::BitBlockAllocator<Phase::SystemAllocator>::Allocate((a1 + 120));
  v10 = v9;
  *(v8 + 1) = 0;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *v8 = &unk_284D319D0;
  *(v8 + 4) = 0;
  *(v8 + 5) = 0;
  *(v8 + 12) = -1;
  std::string::basic_string[abi:ne200100]<0>(v8 + 56, a4);
  *(v8 + 12) = v10;
  v11 = Phase::Controller::TaskManager::GetService<Phase::Controller::VoicePoolRegistry>(*(a1 + 216), 3);
  *buf = a2;
  v12 = std::__hash_table<std::__hash_value_type<unsigned long long,Phase::Controller::Parameter<double>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,Phase::Controller::Parameter<double>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,Phase::Controller::Parameter<double>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,Phase::Controller::Parameter<double>>>>::find<unsigned long long>(v11, buf);
  if (!v12 || (v22 = v12[3]) == 0)
  {
    v20 = **(Phase::Logger::GetInstance(v12) + 400);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "CvmSubmix.mm";
      v24 = 1024;
      v25 = 496;
      _os_log_impl(&dword_23A302000, v20, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::invalid_argument) [!pVoicePoolEntry is true]: Couldn't find a Voice Pool!", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "Couldn't find a Voice Pool!");
  }

  if ((*(*a1 + 344))(a1) >= 1)
  {
    v13 = 0;
    do
    {
      v14 = *(v8 + 4);
      if (v14 >= *(v8 + 5))
      {
        v15 = std::vector<Phase::Controller::CvmVoiceData>::__emplace_back_slow_path<Phase::Controller::VoicePoolEntry const*&>(v8 + 3, &v22);
      }

      else
      {
        Phase::Controller::CvmVoiceData::CvmVoiceData(*(v8 + 4), v22, 0x7FFFFFFFFFFFFFFFLL);
        v15 = v14 + 88;
        *(v8 + 4) = v14 + 88;
      }

      *(v8 + 4) = v15;
      ++v13;
    }

    while (v13 < (*(*a1 + 344))(a1));
  }

  if ((a3 & 0x80000000) != 0 || *(a1 + 184) < a3)
  {
    Phase::LinkedList::InsertNodeAfter(a1 + 168, v8, *(a1 + 176));
    v16 = *(a1 + 184);
    a3 = v16 - 1;
  }

  else
  {
    v17 = *(a1 + 168);
    if (a3 >= 2)
    {
      v18 = a3 - 1;
      do
      {
        v17 = *(v17 + 16);
        --v18;
      }

      while (v18);
    }

    Phase::LinkedList::InsertNodeAfter(a1 + 168, v8, v17);
    v16 = *(a1 + 184);
  }

  if (v16 <= a3)
  {
    std::terminate();
  }

  *(a1 + 64) |= 2uLL;
  return 0;
}

uint64_t Phase::Controller::Submix::AddEffect(uint64_t a1, uint64_t a2, unsigned int a3)
{
  Phase::Controller::Submix::AddEffect(a1, *a2, a3, &str_8);
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = v5;
  if (v5 != v6)
  {
    v8 = *(a1 + 168);
    do
    {
      v9 = *(v8 + 24);
      v10 = *(v8 + 32);
      while (v9 != v10)
      {
        Phase::Controller::CvmVoiceData::SetParameter(v9, *v7, *(v7 + 8), 0);
        v9 = (v9 + 88);
      }

      v7 += 16;
    }

    while (v7 != v6);
  }

  return 0;
}

void Phase::Controller::Submix::SetEffectParameter(Phase::Controller::Submix *this, unsigned int a2, int a3, double a4, int a5)
{
  v17 = *MEMORY[0x277D85DE8];
  if ((a2 & 0x80000000) != 0 || *(this + 46) <= a2)
  {
    v11 = **(Phase::Logger::GetInstance(this) + 400);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v13 = 136315394;
      v14 = "CvmSubmix.mm";
      v15 = 1024;
      v16 = 572;
      _os_log_impl(&dword_23A302000, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION: inIndex >= 0 && inIndex < mEffectChain.Count() is false.", &v13, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::out_of_range::out_of_range[abi:ne200100](exception, "PRECONDITION: inIndex >= 0 && inIndex < mEffectChain.Count() is false.");
  }

  for (i = *(this + 21); a2; --a2)
  {
    i = i[2];
  }

  v9 = i[3];
  v10 = i[4];
  while (v9 != v10)
  {
    Phase::Controller::CvmVoiceData::SetParameter(v9, a3, a4, a5);
    v9 = (v9 + 88);
  }
}

void Phase::Controller::Submix::Fade(Phase::Controller::Submix *this, float a2, float a3)
{
  v3 = a2;
  if (*(this + 41) != a2)
  {
    Phase::Controller::Submix::SetEffectParameter(this, *(this + 46) - 2, *(this + 77), a3, 1);
    Phase::Controller::Submix::SetEffectParameter(this, *(this + 46) - 2, *(this + 75), *(this + 41), 1);
    Phase::Controller::Submix::SetEffectParameter(this, *(this + 46) - 2, *(this + 76), v3, 1);
    *(this + 41) = v3;
  }
}

void Phase::Controller::Submix::SetSessionLevel(Phase::Controller::Submix *a1, uint64_t a2, char a3)
{
  _X0 = COERCE_UNSIGNED_INT(fminf(fmaxf(*a2, 0.0), 1.0)) | (COERCE_UNSIGNED_INT(fminf(fmaxf(*(a2 + 4), 0.0), 1.0)) << 32);
  v5 = *(a1 + 42);
  v6 = *(a2 + 8);
  do
  {
    _X7 = *(a1 + 43);
    __asm { CASPAL          X6, X7, X0, X1, [X8] }

    _ZF = _X6 == v5;
    v5 = _X6;
  }

  while (!_ZF);
  if ((a3 & 1) == 0 && (*(*a1 + 336))(a1, v6) != 2)
  {

    Phase::Controller::Submix::UpdateGainEffectsWithDuration(a1, 0.0);
  }
}

void Phase::Controller::Submix::PrepareGenerator(Phase::Logger *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = *MEMORY[0x277D85DE8];
  v48 = a2;
  v49 = a3;
  if (a2 | a3)
  {
    *__p = a2;
    *&__p[8] = a3;
    v7 = std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>>>::find<Phase::UniqueObjectId>(a1 + 31, __p);
    if (!v7)
    {
      v8 = *(a4 + 48);
      LOBYTE(v47) = 0;
      std::vector<char>::vector[abi:ne200100](__p, 32);
      v9 = *__p;
      *(*__p + 4) = 0;
      v9[2] = 0;
      *v9 = v8;
      *(a4 + 56) = (*(*a1 + 352))(a1, __p);
      v10 = *__p;
      if (*__p)
      {
        *&__p[8] = *__p;
        operator delete(*__p);
      }

      if (*(a4 + 8))
      {
        if (*(a4 + 8) == 1)
        {
          v11 = (*(*a4 + 24))(a4);
          v12 = v11;
          if (v11)
          {
            if (*(v11 + 64) == 1)
            {
              operator new();
            }

            if (!*(v11 + 64))
            {
              v29 = **(Phase::Logger::GetInstance(v11) + 400);
              if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
              {
                *__p = 136315394;
                *&__p[4] = "CvmSubmix.mm";
                *&__p[12] = 1024;
                *&__p[14] = 824;
                _os_log_impl(&dword_23A302000, v29, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::invalid_argument): Invalid Procedure Type: None", __p, 0x12u);
              }

              exception = __cxa_allocate_exception(0x10uLL);
              std::invalid_argument::invalid_argument[abi:ne200100](exception, "Invalid Procedure Type: None");
            }

            v38 = **(Phase::Logger::GetInstance(v11) + 400);
            if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
            {
              v39 = *(v12 + 64);
              *__p = 136315650;
              *&__p[4] = "CvmSubmix.mm";
              *&__p[12] = 1024;
              *&__p[14] = 849;
              v51 = 1024;
              *v52 = v39;
              _os_log_impl(&dword_23A302000, v38, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::invalid_argument): Unhandled Procedure Type: %hhd", __p, 0x18u);
            }

            v40 = __cxa_allocate_exception(0x10uLL);
            std::invalid_argument::invalid_argument[abi:ne200100](v40, "Unhandled Procedure Type: %hhd");
          }

          v34 = **(Phase::Logger::GetInstance(0) + 400);
          if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
          {
            *__p = 136315394;
            *&__p[4] = "CvmSubmix.mm";
            *&__p[12] = 1024;
            *&__p[14] = 818;
            _os_log_impl(&dword_23A302000, v34, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error) [nullptr == pProcedurePrepareParameters is true]: Invalid GeneratorPrepareParameters for GeneratorType::Procedure!", __p, 0x12u);
          }

          v35 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v35, "Invalid GeneratorPrepareParameters for GeneratorType::Procedure!");
        }

        v31 = **(Phase::Logger::GetInstance(v10) + 400);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          v32 = *(a4 + 8);
          *__p = 136315650;
          *&__p[4] = "CvmSubmix.mm";
          *&__p[12] = 1024;
          *&__p[14] = 860;
          v51 = 1024;
          *v52 = v32;
          _os_log_impl(&dword_23A302000, v31, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::invalid_argument): Unhandled Generator Type: %hhd", __p, 0x18u);
        }

        v33 = __cxa_allocate_exception(0x10uLL);
        std::invalid_argument::invalid_argument[abi:ne200100](v33, "Unhandled Generator Type: %hhd");
      }

      v13 = (*(*a4 + 16))(a4);
      v14 = v13;
      if (v13)
      {
        v15 = v13[64];
        if (v15 <= 1)
        {
          if (!v13[64])
          {
            operator new();
          }

          if (v15 == 1)
          {
            operator new();
          }
        }

        else
        {
          switch(v15)
          {
            case 2u:
              operator new();
            case 3u:
              v16 = Phase::Controller::TaskManager::GetObjCService<ExternalStreamManager>(*(a1 + 27), 15);
              v17 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:v14 + 136];
              v46 = 0;
              v18 = [v16 sessionIdForStream:v17 error:&v46];
              v19 = v46;
              v20 = v19;
              if (!v19)
              {
                v21 = (*(*a1 + 120))(a1);
                if (v21)
                {
                  if (*(a1 + 12) != v18)
                  {
                    v22 = **(Phase::Logger::GetInstance(v21) + 400);
                    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
                    {
                      v23 = *(a1 + 12);
                      *__p = 136315906;
                      *&__p[4] = "CvmSubmix.mm";
                      *&__p[12] = 1024;
                      *&__p[14] = 743;
                      v51 = 1024;
                      *v52 = v23;
                      *&v52[4] = 1024;
                      *&v52[6] = v18;
                      _os_log_impl(&dword_23A302000, v22, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::invalid_argument): Audio Session Id mismatch. Existing submix belongs to  session 0x%x and new ouput stream generator belongs to session 0x%x", __p, 0x1Eu);
                    }

                    v24 = __cxa_allocate_exception(0x10uLL);
                    std::logic_error::logic_error(v24, "Audio Session Id mismatch. Existing submix belongs to session 0x%x and new ouput stream generator belongs to session 0x%x");
                    v24->__vftable = (MEMORY[0x277D828F8] + 16);
                  }
                }

                else
                {
                  *(a1 + 12) = v18;
                }

                operator new();
              }

              v44 = **(Phase::Logger::GetInstance(v19) + 400);
              if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
              {
                *__p = 136315906;
                *&__p[4] = "CvmSubmix.mm";
                *&__p[12] = 1024;
                *&__p[14] = 727;
                v51 = 2112;
                *v52 = v17;
                *&v52[8] = 2112;
                v53 = v20;
                _os_log_impl(&dword_23A302000, v44, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::invalid_argument): Could not get Audio Session Id for stream uuid %@ (%@)", __p, 0x26u);
              }

              v45 = __cxa_allocate_exception(0x10uLL);
              std::logic_error::logic_error(v45, "Could not get Audio Session Id for stream uuid %@ (%@)");
              v45->__vftable = (MEMORY[0x277D828F8] + 16);
            case 4u:
              operator new();
          }
        }

        v41 = **(Phase::Logger::GetInstance(v13) + 400);
        if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
        {
          v42 = v14[64];
          *__p = 136315650;
          *&__p[4] = "CvmSubmix.mm";
          *&__p[12] = 1024;
          *&__p[14] = 806;
          v51 = 1024;
          *v52 = v42;
          _os_log_impl(&dword_23A302000, v41, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::invalid_argument): Unhandled Sampler Type: %hhd", __p, 0x18u);
        }

        v43 = __cxa_allocate_exception(0x10uLL);
        std::invalid_argument::invalid_argument[abi:ne200100](v43, "Unhandled Sampler Type: %hhd");
      }

      v36 = **(Phase::Logger::GetInstance(0) + 400);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        *__p = 136315394;
        *&__p[4] = "CvmSubmix.mm";
        *&__p[12] = 1024;
        *&__p[14] = 651;
        _os_log_impl(&dword_23A302000, v36, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error) [nullptr == pSamplerPrepareParameters is true]: Invalid GeneratorPrepareParameters for GeneratorType::Sampler!", __p, 0x12u);
      }

      v37 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v37, "Invalid GeneratorPrepareParameters for GeneratorType::Sampler!");
    }

    v27 = **(Phase::Logger::GetInstance(v7) + 400);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *__p = 136315650;
      *&__p[4] = "CvmSubmix.mm";
      *&__p[12] = 1024;
      *&__p[14] = 632;
      v51 = 2048;
      *v52 = a2;
      _os_log_impl(&dword_23A302000, v27, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (IdAlreadyExists) [GeneratorIsValid(inGeneratorId) is true]: GeneratorId %llu already exists!", __p, 0x1Cu);
    }

    v28 = __cxa_allocate_exception(0x10uLL);
    _ZN5Phase10Controller15IdAlreadyExistsCI1St11logic_errorEPKc(v28, "GeneratorId %llu already exists!");
  }

  v25 = **(Phase::Logger::GetInstance(a1) + 400);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    *__p = 136315394;
    *&__p[4] = "CvmSubmix.mm";
    *&__p[12] = 1024;
    *&__p[14] = 630;
    _os_log_impl(&dword_23A302000, v25, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::invalid_argument) [inGeneratorId == kInvalidGeneratorId is true]: Invalid GeneratorId!", __p, 0x12u);
  }

  v26 = __cxa_allocate_exception(0x10uLL);
  std::invalid_argument::invalid_argument[abi:ne200100](v26, "Invalid GeneratorId!");
}

void sub_23A382FCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29)
{
  __cxa_free_exception(v29);

  Phase::Controller::StreamSamplerBase::~StreamSamplerBase(v32);
  MEMORY[0x23EE864A0](v32, 0x10F3C401B85CFC9);

  _Unwind_Resume(a1);
}

Phase::Controller::FileSampler **std::unique_ptr<Phase::Controller::FileSampler>::~unique_ptr[abi:ne200100](Phase::Controller::FileSampler **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    Phase::Controller::FileSampler::~FileSampler(v2);
    MEMORY[0x23EE864A0]();
  }

  return a1;
}

Phase::Controller::StreamSamplerBase **std::unique_ptr<Phase::Controller::PushStreamSampler>::~unique_ptr[abi:ne200100](Phase::Controller::StreamSamplerBase **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    Phase::Controller::StreamSamplerBase::~StreamSamplerBase(v2);
    MEMORY[0x23EE864A0]();
  }

  return a1;
}

Phase::Controller::Generator **std::unique_ptr<Phase::Controller::WaterProcedure>::~unique_ptr[abi:ne200100](Phase::Controller::Generator **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    Phase::Controller::Generator::~Generator(v2);
    MEMORY[0x23EE864A0]();
  }

  return a1;
}

void Phase::Controller::Submix::SetSessionPlayState(uint64_t a1, uint64_t a2, uint64_t a3, int32x2_t *a4)
{
  v44 = *MEMORY[0x277D85DE8];
  if ((a2 - 2) < 2 || a2 == 0)
  {
    v8 = *(a1 + 352);
    v9 = *(a1 + 48);

    Phase::Controller::SessionManager::SetSessionPlayState(v8, v9, a1, 2u, a2, a3, 0);
  }

  else
  {
    if (a2 != 1)
    {
      v29 = a2;
      v30 = **(Phase::Logger::GetInstance(a1) + 400);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v31 = *(a1 + 32);
        v32 = *(a1 + 16);
        v33 = *(a1 + 48);
        *buf = 136316418;
        *&buf[4] = "CvmSubmix.mm";
        *&buf[12] = 1024;
        *&buf[14] = 1604;
        *&buf[18] = 2048;
        *&buf[20] = v31;
        *&buf[28] = 2048;
        *&buf[30] = v32;
        *&buf[38] = 1024;
        *&buf[40] = v29;
        *&buf[44] = 1024;
        *&buf[46] = v33;
        _os_log_impl(&dword_23A302000, v30, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): (sound event: %llu, submix: %llu:) Invalid session playstate %d on session 0x%x", buf, 0x32u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "(sound event: %llu, submix: %llu:) Invalid session playstate %d on session 0x%x");
    }

    AudioSessionVolume = Phase::Controller::SessionManager::GetAudioSessionVolume(*(a1 + 352), *(a1 + 48), a3);
    v13 = v12;
    v40 = AudioSessionVolume;
    v41 = v12;
    v42 = BYTE4(v12);
    if ((v12 & 0x100000000) != 0)
    {
      v14 = *&AudioSessionVolume;
      Instance = Phase::Logger::GetInstance(AudioSessionVolume);
      if (*(Instance + 1636) == 1)
      {
        v16 = **(Phase::Logger::GetInstance(Instance) + 400);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v17 = *(a1 + 16);
          v18 = *(a1 + 32);
          v19 = *(a1 + 48);
          v20 = "NO";
          *buf = 136316674;
          if (v13)
          {
            v20 = "YES";
          }

          *&buf[4] = "CvmSubmix.mm";
          *&buf[12] = 1024;
          *&buf[14] = 1528;
          *&buf[18] = 2048;
          *&buf[20] = v18;
          *&buf[28] = 2048;
          *&buf[30] = v17;
          *&buf[38] = 2048;
          *&buf[40] = v14;
          *&buf[48] = 1024;
          *&buf[50] = v19;
          *&buf[54] = 2080;
          *&buf[56] = v20;
          _os_log_impl(&dword_23A302000, v16, OS_LOG_TYPE_DEFAULT, "%25s:%-5d (sound event: %llu, submix: %llu:) - applying start volume %.3f on session 0x%x - muted: %s", buf, 0x40u);
        }
      }

      (*(*a1 + 232))(a1, &v40, a3);
    }

    v39 = 1065353216;
    v21 = Phase::Controller::SessionManager::SetSessionPlayState(*(a1 + 352), *(a1 + 48), a1, 2u, 1, a3, &v39);
    if (v21)
    {
      if (a3)
      {
        if (a4)
        {
          *a4 = v39;
        }
      }

      else
      {
        for (i = *(a1 + 264); i; i = *i)
        {
          v28 = i[4];
          if (v28[115] == 1)
          {
            memset(buf, 0, 64);
            (*(*v28 + 32))(v28, buf);
          }
        }

        (*(*a1 + 224))(a1, *v39.i32, *&v39.i32[1]);
      }
    }

    else
    {
      v22 = **(Phase::Logger::GetInstance(v21) + 400);
      v23 = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);
      if ((a3 & 1) == 0)
      {
        if (v23)
        {
          v35 = *(a1 + 32);
          v36 = *(a1 + 16);
          v37 = *(a1 + 48);
          *buf = 136316418;
          *&buf[4] = "CvmSubmix.mm";
          *&buf[12] = 1024;
          *&buf[14] = 1572;
          *&buf[18] = 2048;
          *&buf[20] = v35;
          *&buf[28] = 2048;
          *&buf[30] = v36;
          *&buf[38] = 1024;
          *&buf[40] = 1;
          *&buf[44] = 1024;
          *&buf[46] = v37;
          _os_log_impl(&dword_23A302000, v22, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): (sound event: %llu, submix: %llu:) - unable to set session playstate %d on session 0x%x", buf, 0x32u);
        }

        v38 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v38, "(sound event: %llu, submix: %llu:) - unable to set session playstate %d on session 0x%x");
      }

      if (v23)
      {
        v24 = *(a1 + 32);
        v25 = *(a1 + 16);
        v26 = *(a1 + 48);
        *buf = 136316418;
        *&buf[4] = "CvmSubmix.mm";
        *&buf[12] = 1024;
        *&buf[14] = 1578;
        *&buf[18] = 2048;
        *&buf[20] = v24;
        *&buf[28] = 2048;
        *&buf[30] = v25;
        *&buf[38] = 1024;
        *&buf[40] = 1;
        *&buf[44] = 1024;
        *&buf[46] = v26;
        _os_log_impl(&dword_23A302000, v22, OS_LOG_TYPE_ERROR, "%25s:%-5d (sound event: %llu, submix: %llu:) - unable to set session playstate %d on session 0x%x", buf, 0x32u);
      }
    }
  }
}

uint64_t Phase::Controller::Submix::PlayGenerator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!(*(*a1 + 128))(a1) || (*(*a1 + 136))(a1))
  {
    Phase::Controller::Submix::SetSessionPlayState(a1, 1, 0, 0);
    (*(*a1 + 280))(a1, 3);
  }

  v6 = *(*Phase::Controller::Submix::GetGenerator(a1, a2, a3) + 16);

  return v6();
}

uint64_t Phase::Controller::Submix::PauseGenerator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Generator = Phase::Controller::Submix::GetGenerator(a1, a2, a3);
  (*(*Generator + 24))(Generator);
  result = (*(*a1 + 136))(a1);
  if (result)
  {
    Phase::Controller::SessionManager::SetSessionPlayState(*(a1 + 352), *(a1 + 48), a1, 2u, 2, 0, 0);
    v6 = *(*a1 + 280);

    return v6(a1, 2);
  }

  return result;
}

uint64_t Phase::Controller::Submix::ResumeGenerator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!(*(*a1 + 128))(a1) || (*(*a1 + 136))(a1))
  {
    Phase::Controller::Submix::SetSessionPlayState(a1, 1, 0, 0);
    (*(*a1 + 280))(a1, 3);
  }

  v6 = *(*Phase::Controller::Submix::GetGenerator(a1, a2, a3) + 32);

  return v6();
}

uint64_t Phase::Controller::Submix::PauseExternalStream(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v18[0] = a2;
  v18[1] = a3;
  v4 = std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>>>::find<Phase::UniqueObjectId>((a1 + 248), v18);
  if (!v4)
  {
    v10 = **(Phase::Logger::GetInstance(0) + 400);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = Phase::UniqueObjectId::CreateNSUUID(v18);
      *buf = 136315650;
      v20 = "CvmSubmix.mm";
      v21 = 1024;
      v22 = 932;
      v23 = 2112;
      v24 = v11;
      _os_log_impl(&dword_23A302000, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (InvalidId) [it == mGenerators.end() is true]: External stream %@ does not exist!", buf, 0x1Cu);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    _ZN5Phase10Controller9InvalidIdCI1St11logic_errorEPKc(exception, "External stream %@ does not exist!");
  }

  v5 = v4[4];
  if (!v5)
  {
    v13 = **(Phase::Logger::GetInstance(0) + 400);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v20 = "CvmSubmix.mm";
      v21 = 1024;
      v22 = 935;
      _os_log_impl(&dword_23A302000, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION: pGenerator != nullptr is false.", buf, 0x12u);
    }

    v14 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v14, "PRECONDITION: pGenerator != nullptr is false.");
  }

  v6 = (*(*v5 + 72))(v5);
  if (!v6)
  {
    v15 = **(Phase::Logger::GetInstance(0) + 400);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = Phase::UniqueObjectId::CreateNSUUID(v18);
      *buf = 136315650;
      v20 = "CvmSubmix.mm";
      v21 = 1024;
      v22 = 939;
      v23 = 2112;
      v24 = v16;
      _os_log_impl(&dword_23A302000, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (InvalidId) [pExternalStreamNode == nullptr is true]: External stream %@ node is wrong type!", buf, 0x1Cu);
    }

    v17 = __cxa_allocate_exception(0x10uLL);
    _ZN5Phase10Controller9InvalidIdCI1St11logic_errorEPKc(v17, "External stream %@ node is wrong type!");
  }

  Phase::Controller::ExternalOutputPullStreamSampler::PauseStream(v6);
  result = (*(*a1 + 136))(a1);
  if (result)
  {
    v8 = *(a1 + 352);
    v9 = *(a1 + 48);

    return Phase::Controller::SessionManager::SetSessionPlayState(v8, v9, a1, 2u, 2, 0, 0);
  }

  return result;
}

void Phase::Controller::Submix::ResumeExternalStream(void *a1, uint64_t a2, uint64_t a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v16[0] = a2;
  v16[1] = a3;
  v4 = std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>>>::find<Phase::UniqueObjectId>(a1 + 31, v16);
  if (!v4)
  {
    v8 = **(Phase::Logger::GetInstance(0) + 400);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = Phase::UniqueObjectId::CreateNSUUID(v16);
      *buf = 136315650;
      v18 = "CvmSubmix.mm";
      v19 = 1024;
      v20 = 954;
      v21 = 2112;
      v22 = v9;
      _os_log_impl(&dword_23A302000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (InvalidId) [it == mGenerators.end() is true]: External stream %@ does not exist!", buf, 0x1Cu);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    _ZN5Phase10Controller9InvalidIdCI1St11logic_errorEPKc(exception, "External stream %@ does not exist!");
  }

  v5 = v4[4];
  if (!v5)
  {
    v11 = **(Phase::Logger::GetInstance(0) + 400);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v18 = "CvmSubmix.mm";
      v19 = 1024;
      v20 = 957;
      _os_log_impl(&dword_23A302000, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION: pGenerator != nullptr is false.", buf, 0x12u);
    }

    v12 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v12, "PRECONDITION: pGenerator != nullptr is false.");
  }

  v6 = (*(*v5 + 72))(v5);
  if (!v6)
  {
    v13 = **(Phase::Logger::GetInstance(0) + 400);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = Phase::UniqueObjectId::CreateNSUUID(v16);
      *buf = 136315650;
      v18 = "CvmSubmix.mm";
      v19 = 1024;
      v20 = 961;
      v21 = 2112;
      v22 = v14;
      _os_log_impl(&dword_23A302000, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (InvalidId) [pExternalStreamNode == nullptr is true]: External stream %@ node is wrong type!", buf, 0x1Cu);
    }

    v15 = __cxa_allocate_exception(0x10uLL);
    _ZN5Phase10Controller9InvalidIdCI1St11logic_errorEPKc(v15, "External stream %@ node is wrong type!");
  }

  v7 = v6;
  if (!(*(*a1 + 128))(a1) || (*(*a1 + 136))(a1))
  {
    Phase::Controller::Submix::SetSessionPlayState(a1, 1, 0, 0);
    (*(*a1 + 280))(a1, 3);
  }

  Phase::Controller::ExternalOutputPullStreamSampler::ResumeStream(v7);
}

void Phase::Controller::Submix::SleepGenerator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Generator = Phase::Controller::Submix::GetGenerator(a1, a2, a3);
  if ((*(Generator + 448) - 3) >= 2)
  {
    *(Generator + 576) = 1;

    Phase::Controller::Generator::Sleep_Internal(Generator);
  }
}

void Phase::Controller::Submix::WakeGenerator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!(*(*a1 + 128))(a1) || (*(*a1 + 136))(a1))
  {
    Phase::Controller::Submix::SetSessionPlayState(a1, 1, 0, 0);
    (*(*a1 + 280))(a1, 3);
  }

  Generator = Phase::Controller::Submix::GetGenerator(a1, a2, a3);
  if ((*(Generator + 448) - 3) >= 2)
  {
    *(Generator + 576) = 0;

    Phase::Controller::Generator::Wake_Internal(Generator);
  }
}

const char *Phase::Controller::Submix::sGetSubmixStateString(unsigned int a1)
{
  if (a1 > 7)
  {
    return "<not found>";
  }

  else
  {
    return off_278B4F0C0[a1];
  }
}

void Phase::Controller::Submix::SetPlayState(uint64_t a1, unsigned int a2)
{
  v12 = *MEMORY[0x277D85DE8];
  if (*(a1 + 72))
  {
    v2 = *(a1 + 72) == 7;
  }

  else
  {
    v2 = 1;
  }

  if (!v2)
  {
    v3 = Phase::Controller::DVM23::DvmAdapter::SetSubmixPlayState(*(a1 + 224), *(a1 + 16), *(a1 + 24), a2);
    if (v3)
    {
      v4 = v3;
      v5 = **(Phase::Logger::GetInstance(v3) + 400);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = 136315650;
        v7 = "CvmSubmix.mm";
        v8 = 1024;
        v9 = 1089;
        v10 = 1024;
        v11 = v4;
        _os_log_impl(&dword_23A302000, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d mpDspVoiceManager->SetSubmixPlayState() failed with error code: %d", &v6, 0x18u);
      }
    }
  }
}

void Phase::Controller::Submix::InternalPrepare(Phase::Controller::Submix *this)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = *(this + 28);
  v3 = *(this + 2);
  v4 = *(this + 3);
  v5 = (*(*this + 336))(this);
  (*(*this + 344))(this);
  v6 = Phase::Controller::DVM23::DvmAdapter::AddSubmix(v2, v3, v4, v5);
  if (v6)
  {
    v9 = v6;
    v10 = **(Phase::Logger::GetInstance(v6) + 400);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v16 = 136315650;
      v17 = "CvmSubmix.mm";
      v18 = 1024;
      v19 = 1146;
      v20 = 1024;
      LODWORD(v21) = v9;
      _os_log_impl(&dword_23A302000, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (IdAlreadyExists) [addSubmixResult != DVM23::DvmAdapter::ErrorCode::Okay is true]: mpDspVoiceManager->AddSubmix() failed with error code: %d", &v16, 0x18u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    _ZN5Phase10Controller15IdAlreadyExistsCI1St11logic_errorEPKc(exception, "mpDspVoiceManager->AddSubmix() failed with error code: %d");
  }

  for (i = *(this + 12); i; i = *i)
  {
    *(i + 56) = 0;
  }

  if ((*(*this + 336))(this) != 2)
  {
    Phase::Controller::Submix::AddEffect(this, 15, 0, "SubmixGain");
    Phase::Controller::Submix::AddEffect(this, 15, 1u, "SessionMuteFade");
    Phase::Controller::Submix::AddEffect(this, 15, 2u, "SessionGain");
    Phase::Controller::Submix::UpdateGainEffectsWithDuration(this, 0.0);
    v8 = Phase::Controller::DVM23::DvmAdapter::ConfigureSubmix(*(this + 28), *(this + 2), *(this + 3), 2u, this + 168);
    if (v8)
    {
      v12 = v8;
      v13 = **(Phase::Logger::GetInstance(v8) + 400);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = *(this + 2);
        v16 = 136315906;
        v17 = "CvmSubmix.mm";
        v18 = 1024;
        v19 = 1170;
        v20 = 2048;
        v21 = v14;
        v22 = 1024;
        v23 = v12;
        _os_log_impl(&dword_23A302000, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (IdAlreadyExists) [configureSubmixResult != DVM23::DvmAdapter::ErrorCode::Okay is true]: SubmixId %llu: DVM Configure failed with error code: %d", &v16, 0x22u);
      }

      v15 = __cxa_allocate_exception(0x10uLL);
      _ZN5Phase10Controller15IdAlreadyExistsCI1St11logic_errorEPKc(v15, "SubmixId %llu: DVM Configure failed with error code: %d");
    }
  }

  *(this + 288) = 0;
  *(this + 8) &= ~2uLL;

  Phase::Controller::Submix::SetState(this, 2u);
}

void Phase::Controller::Submix::InternalPause(Phase::Controller::Submix *this)
{
  if (*(this + 72) - 3 <= 1)
  {
    (*(*this + 280))(this, 2);
    *(this + 288) = 0;
  }

  Phase::Controller::SessionManager::SetSessionPlayState(*(this + 44), *(this + 12), this, 2u, 2, 0, 0);
  *(this + 73) = *(this + 72);
  Phase::Controller::Submix::SetState(this, 5u);
  *(this + 7) &= ~2uLL;
}

void Phase::Controller::Submix::InternalResume(Phase::Controller::Submix *this)
{
  v2 = *(this + 72);
  if (v2 == 2)
  {
LABEL_4:
    if ((*(*this + 128))(this) && ((*(*this + 136))(this) & 1) == 0)
    {
      Phase::Controller::Submix::SetSessionPlayState(this, 1, 0, 0);
      (*(*this + 280))(this, 3);
    }

    *(this + 288) = 0;
    LOBYTE(v2) = *(this + 72);
    goto LABEL_8;
  }

  if (v2 == 5)
  {
    v3 = *(this + 73);
    if ((v3 - 3) >= 2u)
    {
      *(this + 73) = 5;
      goto LABEL_11;
    }

    goto LABEL_4;
  }

LABEL_8:
  v4 = *(this + 73);
  *(this + 73) = v2;
  if (v2 == 2)
  {
    v3 = 3;
  }

  else
  {
    v3 = v4;
  }

LABEL_11:
  Phase::Controller::Submix::SetState(this, v3);
  *(this + 7) &= ~4uLL;
}

void Phase::Controller::Submix::InternalSleep(Phase::Controller::Submix *this)
{
  if (*(this + 72) != 7)
  {
    v2 = (*(*this + 128))(this);
    if (*(this + 72) != 6 && v2 != 0)
    {
      std::terminate();
    }

    (*(*this + 280))(this, 0);
    Phase::Controller::SessionManager::SetSessionPlayState(*(this + 44), *(this + 12), this, 2u, 0, 0, 0);

    Phase::Controller::Submix::SetState(this, 7u);
  }
}

uint64_t Phase::Controller::Submix::InternalStop(Phase::Controller::Submix *this)
{
  *(this + 7) &= 0xFFFFFFFFFFFFFFF9;
  (*(*this + 160))(this);
  Phase::Controller::Submix::SetState(this, 0);
  *(this + 7) &= ~8uLL;
  Phase::Controller::SessionManager::SetSessionPlayState(*(this + 44), *(this + 12), this, 2u, 0, 0, 0);
  v2 = *(*this + 280);

  return v2(this, 0);
}

uint64_t Phase::Controller::Submix::GetExternalStreamId(Phase::Controller::Submix *this)
{
  v1 = this + 264;
  while (1)
  {
    v1 = *v1;
    if (!v1)
    {
      break;
    }

    v2 = (*(**(v1 + 4) + 72))(*(v1 + 4));
    if (v2)
    {
      return *(v2 + 680);
    }
  }

  return 0;
}

double Phase::Controller::Submix::GetGain(Phase::Controller::Submix *this)
{
  v1 = std::__hash_table<std::__hash_value_type<unsigned long long,Phase::Controller::Parameter<double>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,Phase::Controller::Parameter<double>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,Phase::Controller::Parameter<double>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,Phase::Controller::Parameter<double>>>>::find<unsigned long long>(this + 10, qword_278B4F040);
  if (!v1)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  return v1[6];
}

uint64_t Phase::Controller::Submix::ExcludeFromTapBinding(uint64_t a1, uint64_t a2)
{
  if (a2 != 5)
  {
    return 0;
  }

  v2 = *(a1 + 264);
  if (!v2)
  {
    return 0;
  }

  while (1)
  {
    v3 = (*(*v2[4] + 72))(v2[4]);
    if (v3)
    {
      if (*(v3 + 696) == 1)
      {
        break;
      }
    }

    v2 = *v2;
    if (!v2)
    {
      return 0;
    }
  }

  return 1;
}

void Phase::Controller::Effect::~Effect(void **this)
{
  *this = &unk_284D319D0;
  if (*(this + 79) < 0)
  {
    operator delete(this[7]);
  }

  v2 = this + 3;
  std::vector<Phase::Controller::CvmVoiceData>::__destroy_vector::operator()[abi:ne200100](&v2);
}

{
  *this = &unk_284D319D0;
  if (*(this + 79) < 0)
  {
    operator delete(this[7]);
  }

  v2 = this + 3;
  std::vector<Phase::Controller::CvmVoiceData>::__destroy_vector::operator()[abi:ne200100](&v2);
  MEMORY[0x23EE864A0](this, 0x10B3C40156D237DLL);
}

uint64_t std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::Generator>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::Generator>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::Generator>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::Generator>>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v4 = v2[4];
      v2[4] = 0;
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

uint64_t (**std::any_cast[abi:ne200100]<Phase::Controller::SessionManager * const>(uint64_t (**result)(uint64_t, void, void, void, void *)))(uint64_t, void, void, void, void *)
{
  if (result)
  {
    if (*result)
    {
      return (*result)(3, result, 0, 0, &std::__any_imp::__unique_typeinfo<Phase::Controller::SessionManager *>::__id);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::Generator>>,void *>>>::operator()[abi:ne200100](char a1, void *__p)
{
  if (a1)
  {
    v3 = __p[4];
    __p[4] = 0;
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

void Phase::Controller::PushStreamSampler::~PushStreamSampler(Phase::Controller::PushStreamSampler *this)
{
  Phase::Controller::StreamSamplerBase::~StreamSamplerBase(this);

  JUMPOUT(0x23EE864A0);
}

void std::default_delete<Phase::Controller::ExternalOutputPullStreamSampler>::operator()[abi:ne200100](id *a1)
{
  Phase::Controller::StreamSamplerBase::~StreamSamplerBase(a1);

  JUMPOUT(0x23EE864A0);
}

void Phase::Controller::SubmixSystem::~SubmixSystem(Phase::Controller::SubmixSystem *this)
{
  *this = &unk_284D31A80;
  Phase::Controller::SubmixSystem::Destroy(this);
  v2 = *(this + 34);
  *(this + 34) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  std::__hash_table<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::__unordered_map_hasher<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::hash<Phase::SpatialCategory>,std::equal_to<Phase::SpatialCategory>,true>,std::__unordered_map_equal<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::equal_to<Phase::SpatialCategory>,std::hash<Phase::SpatialCategory>,true>,std::allocator<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>>>::~__hash_table(this + 184);
  std::__hash_table<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::__unordered_map_hasher<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::hash<Phase::SpatialCategory>,std::equal_to<Phase::SpatialCategory>,true>,std::__unordered_map_equal<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::equal_to<Phase::SpatialCategory>,std::hash<Phase::SpatialCategory>,true>,std::allocator<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>>>::~__hash_table(this + 144);
  std::recursive_mutex::~recursive_mutex((this + 80));
  std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::Submix>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::Submix>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::Submix>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::Submix>>>>::~__hash_table(this + 40);

  Phase::Commandable<128,Phase::LockFreeQueueMPSC>::~Commandable(this);
}

{
  Phase::Controller::SubmixSystem::~SubmixSystem(this);

  JUMPOUT(0x23EE864A0);
}

void Phase::Controller::SubmixSystem::Destroy(Phase::Controller::SubmixSystem *this)
{
  std::recursive_mutex::lock((this + 80));
  while (*(this + 8))
  {
    std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::Submix>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::Submix>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::Submix>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::Submix>>>>::erase(this + 5, *(this + 7));
  }

  v2 = *(this + 34);
  *(this + 34) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  std::__hash_table<std::__hash_value_type<int,Phase::Controller::Parameter<double>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,Phase::Controller::Parameter<double>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,Phase::Controller::Parameter<double>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,Phase::Controller::Parameter<double>>>>::clear(this + 18);
  std::__hash_table<std::__hash_value_type<int,Phase::Controller::Parameter<double>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,Phase::Controller::Parameter<double>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,Phase::Controller::Parameter<double>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,Phase::Controller::Parameter<double>>>>::clear(this + 23);

  std::recursive_mutex::unlock((this + 80));
}

void Phase::Controller::SubmixSystem::Initialize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  std::__hash_table<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::__unordered_map_hasher<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::hash<Phase::SpatialCategory>,std::equal_to<Phase::SpatialCategory>,true>,std::__unordered_map_equal<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::equal_to<Phase::SpatialCategory>,std::hash<Phase::SpatialCategory>,true>,std::allocator<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>>>::__rehash<true>(a1 + 40, vcvtps_u32_f32(16.0 / *(a1 + 72)));
  *(a1 + 224) = a2;
  *(a1 + 232) = a3;
  *(a1 + 240) = a4;
  *(a1 + 248) = a5;
  *(a1 + 256) = a6;
  *(a1 + 264) = a7;
  operator new();
}

void Phase::Controller::SubmixSystem::Stop(Phase::Controller::SubmixSystem *this)
{
  v18 = *MEMORY[0x277D85DE8];
  Phase::Controller::SubmixSystem::Reset(this);
  v2 = 0;
  v3 = this + 56;
LABEL_2:
  v4 = v3;
  while (1)
  {
    v4 = *v4;
    if (!v4)
    {
      break;
    }

    v5 = (*(**(v4 + 4) + 80))(*(v4 + 4));
    if ((v5 & 1) == 0)
    {
      if (v2 != 99)
      {
        ++v2;
        usleep(0x4E20u);
        goto LABEL_2;
      }

      v6 = *(v4 + 2);
      v7 = **(Phase::Logger::GetInstance(v5) + 400);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = 136316162;
        v9 = "CvmSubmixSystem.mm";
        v10 = 1024;
        v11 = 94;
        v12 = 2048;
        v13 = v6;
        v14 = 1024;
        v15 = 100;
        v16 = 2048;
        v17 = 0x4000000000000000;
        _os_log_impl(&dword_23A302000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d Error: could not wait for all the submixes to stop (e.g. submixId %llu) in %d tries over %.3fs!", &v8, 0x2Cu);
      }

      return;
    }
  }
}

void Phase::Controller::SubmixSystem::Reset(Phase::Controller::SubmixSystem *this)
{
  std::recursive_mutex::lock((this + 80));
  for (i = this + 56; ; (*(**(i + 4) + 64))(*(i + 4)))
  {
    i = *i;
    if (!i)
    {
      break;
    }
  }

  while (*(this + 8))
  {
    std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::Submix>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::Submix>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::Submix>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::Submix>>>>::erase(this + 5, *(this + 7));
  }

  Phase::Controller::RendererSystem::Reset(*(this + 34));
  std::__hash_table<std::__hash_value_type<int,Phase::Controller::Parameter<double>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,Phase::Controller::Parameter<double>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,Phase::Controller::Parameter<double>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,Phase::Controller::Parameter<double>>>>::clear(this + 18);
  std::__hash_table<std::__hash_value_type<int,Phase::Controller::Parameter<double>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,Phase::Controller::Parameter<double>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,Phase::Controller::Parameter<double>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,Phase::Controller::Parameter<double>>>>::clear(this + 23);

  std::recursive_mutex::unlock((this + 80));
}

void Phase::Controller::SubmixSystem::CreateSpatialSubmix(Phase::Controller::SubmixSystem *this, const Phase::Controller::CreateSpatialSubmixParameters *a2)
{
  v2 = *MEMORY[0x277D85DE8];
  std::recursive_mutex::lock((this + 80));
  operator new();
}

void sub_23A3858F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, Phase::Controller::SpatialSubmix *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  a15 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::Submix>>,void *>>>::operator()[abi:ne200100](v18 + 8, v16);
  std::unique_ptr<Phase::Controller::SpatialSubmix>::~unique_ptr[abi:ne200100]((v17 + 16));
  std::unique_ptr<Phase::Controller::SpatialSubmix>::~unique_ptr[abi:ne200100](&a10);
  std::recursive_mutex::unlock((v15 + 80));
  _Unwind_Resume(a1);
}

Phase::Controller::SpatialSubmix **std::unique_ptr<Phase::Controller::SpatialSubmix>::~unique_ptr[abi:ne200100](Phase::Controller::SpatialSubmix **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    Phase::Controller::SpatialSubmix::~SpatialSubmix(v2);
    MEMORY[0x23EE864A0]();
  }

  return a1;
}

void sub_23A385DA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, Phase::Controller::ChannelSubmix *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  a15 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::Submix>>,void *>>>::operator()[abi:ne200100](v18 + 8, v16);
  std::unique_ptr<Phase::Controller::ChannelSubmix>::~unique_ptr[abi:ne200100]((v17 + 16));
  std::unique_ptr<Phase::Controller::ChannelSubmix>::~unique_ptr[abi:ne200100](&a10);
  std::recursive_mutex::unlock((v15 + 80));
  _Unwind_Resume(a1);
}

Phase::Controller::ChannelSubmix **std::unique_ptr<Phase::Controller::ChannelSubmix>::~unique_ptr[abi:ne200100](Phase::Controller::ChannelSubmix **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    Phase::Controller::ChannelSubmix::~ChannelSubmix(v2);
    MEMORY[0x23EE864A0]();
  }

  return a1;
}

void Phase::Controller::SubmixSystem::CreateAmbientSubmix(uint64_t a1)
{
  v1 = *MEMORY[0x277D85DE8];
  std::recursive_mutex::lock((a1 + 80));
  operator new();
}

void sub_23A386250(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, Phase::Controller::AmbientSubmix *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  a15 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::Submix>>,void *>>>::operator()[abi:ne200100](v18 + 8, v16);
  std::unique_ptr<Phase::Controller::AmbientSubmix>::~unique_ptr[abi:ne200100]((v17 + 16));
  std::unique_ptr<Phase::Controller::AmbientSubmix>::~unique_ptr[abi:ne200100](&a10);
  std::recursive_mutex::unlock((v15 + 80));
  _Unwind_Resume(a1);
}

Phase::Controller::AmbientSubmix **std::unique_ptr<Phase::Controller::AmbientSubmix>::~unique_ptr[abi:ne200100](Phase::Controller::AmbientSubmix **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    Phase::Controller::AmbientSubmix::~AmbientSubmix(v2);
    MEMORY[0x23EE864A0]();
  }

  return a1;
}

void *Phase::Controller::SubmixSystem::Destroy(Phase::Logger *a1, uint64_t a2, uint64_t a3)
{
  v8[0] = a2;
  v8[1] = a3;
  result = std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>>>::find<Phase::UniqueObjectId>(a1 + 5, v8);
  if (result)
  {
    Submix = Phase::Controller::SubmixSystem::GetSubmix(a1, a2, a3);
    return (*(*Submix + 72))(Submix);
  }

  return result;
}

uint64_t Phase::Controller::SubmixSystem::GetSubmix(Phase::Logger *a1, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  v23 = *MEMORY[0x277D85DE8];
  v16[0] = a2;
  v16[1] = a3;
  v4 = 0xCBF29CE484222325;
  do
  {
    v4 = 0x100000001B3 * (v4 ^ *(v16 + v3++));
  }

  while (v3 != 16);
  v5 = *(a1 + 48);
  if (!*&v5)
  {
    goto LABEL_23;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v4;
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = (*&v5 - 1) & v4;
  }

  v8 = *(*(a1 + 5) + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_23:
    v13 = **(Phase::Logger::GetInstance(a1) + 400);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v18 = "CvmSubmixSystem.mm";
      v19 = 1024;
      v20 = 486;
      v21 = 2048;
      v22 = a2;
      _os_log_impl(&dword_23A302000, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (InvalidId) [it == mSubmixes.end() is true]: Invalid SubmixId %llu", buf, 0x1Cu);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    _ZN5Phase10Controller9InvalidIdCI1St11logic_errorEPKc(exception, "Invalid SubmixId %llu");
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_23;
    }

LABEL_22:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_23;
    }
  }

  if (v9[2] != a2 || v9[3] != a3)
  {
    goto LABEL_22;
  }

  return v9[4];
}

double Phase::Controller::SubmixSystem::SetUnitsPerMeter(Phase::Controller::SubmixSystem *this, double a2)
{
  v3 = Phase::Controller::sClamp<double>(this, a2, *(this + 36), *(this + 37));
  v4 = *(this + 39);
  if (v3 != v4)
  {
    *(this + 39) = v3;
    *(this + 320) = 1;
    v4 = v3;
  }

  result = 1.0 / v4;
  *(this + 41) = 1.0 / v4;
  return result;
}

uint64_t Phase::Controller::SubmixSystem::PlayGenerator(Phase::Logger *a1, uint64_t a2, uint64_t a3)
{
  SubmixIdForGenerator = Phase::Controller::SubmixSystem::GetSubmixIdForGenerator(a1, a2, a3);
  Submix = Phase::Controller::SubmixSystem::GetSubmix(a1, SubmixIdForGenerator, v7);

  return Phase::Controller::Submix::PlayGenerator(Submix, a2, a3);
}

uint64_t Phase::Controller::SubmixSystem::GetSubmixIdForGenerator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v7[0] = a2;
  v7[1] = a3;
  v3 = std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>>>::find<Phase::UniqueObjectId>((a1 + 144), v7);
  if (!v3)
  {
    v5 = **(Phase::Logger::GetInstance(0) + 400);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v9 = "CvmSubmixSystem.mm";
      v10 = 1024;
      v11 = 477;
      v12 = 2048;
      v13 = v7[0];
      _os_log_impl(&dword_23A302000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (InvalidId) [it == mGeneratorToSubmixIdMap.end() is true]: Invalid GeneratorId %llu", buf, 0x1Cu);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    _ZN5Phase10Controller9InvalidIdCI1St11logic_errorEPKc(exception, "Invalid GeneratorId %llu");
  }

  return v3[4];
}

uint64_t Phase::Controller::SubmixSystem::PauseGenerator(Phase::Logger *a1, uint64_t a2, uint64_t a3)
{
  SubmixIdForGenerator = Phase::Controller::SubmixSystem::GetSubmixIdForGenerator(a1, a2, a3);
  Submix = Phase::Controller::SubmixSystem::GetSubmix(a1, SubmixIdForGenerator, v7);

  return Phase::Controller::Submix::PauseGenerator(Submix, a2, a3);
}

uint64_t Phase::Controller::SubmixSystem::ResumeGenerator(Phase::Logger *a1, uint64_t a2, uint64_t a3)
{
  SubmixIdForGenerator = Phase::Controller::SubmixSystem::GetSubmixIdForGenerator(a1, a2, a3);
  Submix = Phase::Controller::SubmixSystem::GetSubmix(a1, SubmixIdForGenerator, v7);

  return Phase::Controller::Submix::ResumeGenerator(Submix, a2, a3);
}

void Phase::Controller::SubmixSystem::StopGenerator(Phase::Logger *a1, uint64_t a2, uint64_t a3)
{
  SubmixIdForGenerator = Phase::Controller::SubmixSystem::GetSubmixIdForGenerator(a1, a2, a3);
  Submix = Phase::Controller::SubmixSystem::GetSubmix(a1, SubmixIdForGenerator, v7);
  Generator = Phase::Controller::Submix::GetGenerator(Submix, a2, a3);

  Phase::Controller::Generator::Stop(Generator);
}

void Phase::Controller::SubmixSystem::SleepGenerator(Phase::Logger *a1, uint64_t a2, uint64_t a3)
{
  SubmixIdForGenerator = Phase::Controller::SubmixSystem::GetSubmixIdForGenerator(a1, a2, a3);
  Submix = Phase::Controller::SubmixSystem::GetSubmix(a1, SubmixIdForGenerator, v7);

  Phase::Controller::Submix::SleepGenerator(Submix, a2, a3);
}

void Phase::Controller::SubmixSystem::WakeGenerator(Phase::Logger *a1, uint64_t a2, uint64_t a3)
{
  SubmixIdForGenerator = Phase::Controller::SubmixSystem::GetSubmixIdForGenerator(a1, a2, a3);
  Submix = Phase::Controller::SubmixSystem::GetSubmix(a1, SubmixIdForGenerator, v7);

  Phase::Controller::Submix::WakeGenerator(Submix, a2, a3);
}

void Phase::Controller::SubmixSystem::SetGeneratorParameter(Phase::Logger *a1, uint64_t a2, uint64_t a3, unint64_t a4, double a5)
{
  SubmixIdForGenerator = Phase::Controller::SubmixSystem::GetSubmixIdForGenerator(a1, a2, a3);
  Submix = Phase::Controller::SubmixSystem::GetSubmix(a1, SubmixIdForGenerator, v11);
  Generator = Phase::Controller::Submix::GetGenerator(Submix, a2, a3);

  Phase::Controller::Generator::SetParameter(Generator, a4, a5, 0);
}

uint64_t Phase::Controller::SubmixSystem::PauseExternalStream(Phase::Logger *a1, uint64_t a2, uint64_t a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v17[0] = a2;
  v17[1] = a3;
  v4 = std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>>>::find<Phase::UniqueObjectId>(a1 + 23, v17);
  if (!v4)
  {
    v12 = **(Phase::Logger::GetInstance(0) + 400);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      Phase::UniqueObjectId::str(v17, __p);
      v13 = v16 >= 0 ? __p : __p[0];
      *buf = 136315650;
      v19 = "CvmSubmixSystem.mm";
      v20 = 1024;
      v21 = 341;
      v22 = 2080;
      v23 = v13;
      _os_log_impl(&dword_23A302000, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (InvalidId) [it == mExternalStreamIdToGeneratorIdMap.end() is true]: Invalid ExternalStreamId %s", buf, 0x1Cu);
      if (v16 < 0)
      {
        operator delete(__p[0]);
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    _ZN5Phase10Controller9InvalidIdCI1St11logic_errorEPKc(exception, "Invalid ExternalStreamId %s");
  }

  v5 = v4;
  SubmixIdForGenerator = Phase::Controller::SubmixSystem::GetSubmixIdForGenerator(a1, v4[4], v4[5]);
  Submix = Phase::Controller::SubmixSystem::GetSubmix(a1, SubmixIdForGenerator, v7);
  v9 = v5[4];
  v10 = v5[5];

  return Phase::Controller::Submix::PauseExternalStream(Submix, v9, v10);
}

void Phase::Controller::SubmixSystem::ResumeExternalStream(Phase::Logger *a1, uint64_t a2, uint64_t a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v16[0] = a2;
  v16[1] = a3;
  v4 = std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>>>::find<Phase::UniqueObjectId>(a1 + 23, v16);
  if (!v4)
  {
    v11 = **(Phase::Logger::GetInstance(0) + 400);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      Phase::UniqueObjectId::str(v16, __p);
      v12 = v15 >= 0 ? __p : __p[0];
      *buf = 136315650;
      v18 = "CvmSubmixSystem.mm";
      v19 = 1024;
      v20 = 351;
      v21 = 2080;
      v22 = v12;
      _os_log_impl(&dword_23A302000, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (InvalidId) [it == mExternalStreamIdToGeneratorIdMap.end() is true]: Invalid ExternalStreamId %s", buf, 0x1Cu);
      if (v15 < 0)
      {
        operator delete(__p[0]);
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    _ZN5Phase10Controller9InvalidIdCI1St11logic_errorEPKc(exception, "Invalid ExternalStreamId %s");
  }

  v5 = v4;
  SubmixIdForGenerator = Phase::Controller::SubmixSystem::GetSubmixIdForGenerator(a1, v4[4], v4[5]);
  Submix = Phase::Controller::SubmixSystem::GetSubmix(a1, SubmixIdForGenerator, v7);
  v9 = v5[4];
  v10 = v5[5];

  Phase::Controller::Submix::ResumeExternalStream(Submix, v9, v10);
}

void Phase::Controller::SubmixSystem::Update(uint64_t a1, uint64_t a2)
{
  Instance = Phase::Logger::GetInstance(a1);
  v5 = os_signpost_id_generate(**(Instance + 912));
  v6 = Phase::Logger::GetInstance(v5);
  if (*(v6 + 920) == 1)
  {
    v7 = **(Phase::Logger::GetInstance(v6) + 912);
    v8 = v7;
    if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
    {
      LOWORD(v21[0]) = 0;
      _os_signpost_emit_with_name_impl(&dword_23A302000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v5, "Phase_SubmixSystem_Update", "Submix System Update", v21, 2u);
    }
  }

  Phase::Controller::RendererSystem::Update(*(a1 + 272));
  Phase::Commandable<128,Phase::LockFreeQueueMPSC>::ExecuteCommands(a1);
  for (i = *(a1 + 56); i; i = *i)
  {
    (*(*i[4] + 176))(i[4], a2);
  }

  std::recursive_mutex::lock((a1 + 80));
  v11 = *(a1 + 56);
  while (v11)
  {
    v12 = v11[2];
    v13 = v11[3];
    v14 = v11[4];
    v10 = (*(*v14 + 88))(v14);
    if (v10)
    {
      v15 = *(a1 + 160);
      while (v15)
      {
        if (v15[4] == v12 && v15[5] == v13)
        {
          v15 = std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,Phase::UniqueObjectId>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,Phase::UniqueObjectId>>>::erase((a1 + 144), v15);
        }

        else
        {
          v15 = *v15;
        }
      }

      v21[0] = Phase::Controller::Submix::GetExternalStreamId(v14);
      v21[1] = v16;
      if (v21[0] | v16)
      {
        v17 = std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>>>::find<Phase::UniqueObjectId>((a1 + 184), v21);
        if (v17)
        {
          std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,Phase::UniqueObjectId>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,Phase::UniqueObjectId>>>::erase((a1 + 184), v17);
        }
      }

      v10 = std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::Submix>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::Submix>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::Submix>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::Submix>>>>::erase((a1 + 40), v11);
      v11 = v10;
    }

    else
    {
      v11 = *v11;
    }
  }

  v18 = Phase::Logger::GetInstance(v10);
  if (*(v18 + 920) == 1)
  {
    v19 = **(Phase::Logger::GetInstance(v18) + 912);
    v20 = v19;
    if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
    {
      LOWORD(v21[0]) = 0;
      _os_signpost_emit_with_name_impl(&dword_23A302000, v20, OS_SIGNPOST_INTERVAL_END, v5, "Phase_SubmixSystem_Update", &unk_23A5C28A2, v21, 2u);
    }
  }

  std::recursive_mutex::unlock((a1 + 80));
}

uint64_t Phase::Controller::SubmixSystem::SubmitGeneratorStoppedResult(Phase::Logger *a1, uint64_t a2, uint64_t a3)
{
  SubmixIdForGenerator = Phase::Controller::SubmixSystem::GetSubmixIdForGenerator(a1, a2, a3);
  v6 = *(*Phase::Controller::SubmixSystem::GetSubmix(a1, SubmixIdForGenerator, v5) + 208);

  return v6();
}

uint64_t Phase::Controller::SubmixSystem::SeekGeneratorTime(Phase::Logger *a1, uint64_t a2, uint64_t a3, double a4)
{
  SubmixIdForGenerator = Phase::Controller::SubmixSystem::GetSubmixIdForGenerator(a1, a2, a3);
  Submix = Phase::Controller::SubmixSystem::GetSubmix(a1, SubmixIdForGenerator, v9);
  v11 = *(*Phase::Controller::Submix::GetGenerator(Submix, a2, a3) + 56);
  v12.n128_f64[0] = a4;

  return v11(v12);
}

void Phase::Controller::SubmixSystem::ActivateAudioSession(Phase::Controller::SubmixSystem *this, int a2, int a3, int a4)
{
  v38 = *MEMORY[0x277D85DE8];
  v8 = **(Phase::Logger::GetInstance(this) + 400);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = "Deactivating";
    *buf = 136316418;
    v26 = "CvmSubmixSystem.mm";
    v27 = 1024;
    v28 = 515;
    if (a3)
    {
      v9 = "Activating";
    }

    v10 = "";
    v29 = 2048;
    v30 = this;
    v32 = v9;
    v31 = 2080;
    if (a4)
    {
      v10 = ", from platform callback";
    }

    v33 = 1024;
    v34 = a2;
    v35 = 2080;
    v36 = v10;
    _os_log_impl(&dword_23A302000, v8, OS_LOG_TYPE_DEFAULT, "%25s:%-5d impl@%p: %s session 0x%x%s", buf, 0x36u);
  }

  if ((a4 & 1) == 0)
  {
    std::terminate();
  }

  std::recursive_mutex::lock((this + 80));
  for (i = *(this + 7); i; i = *i)
  {
    v12 = i[4];
    if (!v12)
    {
      v20 = **(Phase::Logger::GetInstance(0) + 400);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v26 = "CvmSubmixSystem.mm";
        v27 = 1024;
        v28 = 521;
        _os_log_impl(&dword_23A302000, v20, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION: pSubmix != nullptr is false.", buf, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(exception, "PRECONDITION: pSubmix != nullptr is false.");
    }

    if (*(v12 + 48) == a2)
    {
      v22 = 1065353216;
      if (a3)
      {
        Phase::Controller::Submix::SetSessionPlayState(v12, 1, 1, &v22);
      }

      else
      {
        Phase::Controller::Submix::SetSessionPlayState(v12, 0, 1, 0);
      }

      v13 = v22;
      v37 = *(i + 1);
      v14 = **(this + 1);
      v24 = 0;
      v23 = 1;
      v15 = Phase::LockFreeQueueMPSC::GetWriteBuffer(v14, 48, &v24, &v23);
      if (!v15)
      {
        Instance = Phase::Logger::GetInstance(0);
        Phase::Logger::DumpTailspinWithThrottleAsync(Instance, "CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.");
        v18 = **(v14 + 48);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v26 = "CommandQueue.hpp";
          v27 = 1024;
          v28 = 100;
          _os_log_impl(&dword_23A302000, v18, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error) [true is true]: CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.", buf, 0x12u);
        }

        v19 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v19, "CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.");
      }

      if (v23)
      {
        v16 = **(v14 + 48);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315906;
          v26 = "CommandQueue.hpp";
          v27 = 1024;
          v28 = 89;
          v29 = 2048;
          v30 = v24;
          v31 = 2048;
          v32 = 48;
          _os_log_impl(&dword_23A302000, v16, OS_LOG_TYPE_DEBUG, "%25s:%-5d Warning: CommandQueue grew buffer to %zu bytes to accommodate extra %zu bytes - this usually means the system is under load or the command queue is too small.", buf, 0x26u);
        }
      }

      *v15 = &unk_284D31AB0;
      *(v15 + 8) = this;
      *(v15 + 16) = v13;
      *(v15 + 24) = v37;
      *(v15 + 40) = a3;
      Phase::LockFreeQueueSPSC::CommitBytes(v14, 48);
      atomic_store(0, (v14 + 40));
    }
  }

  std::recursive_mutex::unlock((this + 80));
}

void sub_23A3876C8(_Unwind_Exception *a1)
{
  __cxa_end_catch();
  std::recursive_mutex::unlock((v1 + 80));
  _Unwind_Resume(a1);
}

uint64_t Phase::Controller::SubmixSystem::FadeAudioSession(Phase::Controller::SubmixSystem *this, int a2, float a3, float a4, char a5)
{
  v40 = *MEMORY[0x277D85DE8];
  if ((a5 & 1) == 0)
  {
    std::terminate();
  }

  std::recursive_mutex::lock((this + 80));
  v10 = *(this + 7);
  if (v10)
  {
    v11 = 0;
    do
    {
      v12 = v10[4];
      if (!v12)
      {
        v21 = **(Phase::Logger::GetInstance(v9) + 400);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v26 = "CvmSubmixSystem.mm";
          v27 = 1024;
          v28 = 572;
          _os_log_impl(&dword_23A302000, v21, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION: pSubmix != nullptr is false.", buf, 0x12u);
        }

        exception = __cxa_allocate_exception(0x10uLL);
        std::logic_error::logic_error(exception, "PRECONDITION: pSubmix != nullptr is false.");
      }

      if (*(v12 + 48) == a2)
      {
        v39 = *(v10 + 1);
        v13 = **(this + 1);
        v24 = 0;
        v23 = 1;
        v14 = Phase::LockFreeQueueMPSC::GetWriteBuffer(v13, 40, &v24, &v23);
        if (!v14)
        {
          Instance = Phase::Logger::GetInstance(0);
          Phase::Logger::DumpTailspinWithThrottleAsync(Instance, "CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.");
          v17 = **(v13 + 48);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v26 = "CommandQueue.hpp";
            v27 = 1024;
            v28 = 100;
            _os_log_impl(&dword_23A302000, v17, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error) [true is true]: CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.", buf, 0x12u);
          }

          v18 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v18, "CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.");
        }

        if (v23)
        {
          v15 = **(v13 + 48);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315906;
            v26 = "CommandQueue.hpp";
            v27 = 1024;
            v28 = 89;
            v29 = 2048;
            v30 = v24;
            v31 = 2048;
            v32 = 40;
            _os_log_impl(&dword_23A302000, v15, OS_LOG_TYPE_DEBUG, "%25s:%-5d Warning: CommandQueue grew buffer to %zu bytes to accommodate extra %zu bytes - this usually means the system is under load or the command queue is too small.", buf, 0x26u);
          }
        }

        *v14 = &unk_284D31AD8;
        *(v14 + 8) = this;
        *(v14 + 16) = v39;
        *(v14 + 32) = a3;
        *(v14 + 36) = a4;
        v9 = Phase::LockFreeQueueSPSC::CommitBytes(v13, 40);
        atomic_store(0, (v13 + 40));
        ++v11;
      }

      v10 = *v10;
    }

    while (v10);
    if (v11)
    {
      v19 = **(Phase::Logger::GetInstance(v9) + 400);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316674;
        v26 = "CvmSubmixSystem.mm";
        v27 = 1024;
        v28 = 592;
        v29 = 2048;
        v30 = this;
        v31 = 2048;
        v32 = v11;
        v33 = 1024;
        v34 = a2;
        v35 = 2048;
        v36 = a3;
        v37 = 2048;
        v38 = a4;
        _os_log_impl(&dword_23A302000, v19, OS_LOG_TYPE_DEFAULT, "%25s:%-5d impl@%p: Faded %zu submixes belonging to session 0x%x to %f over %f seconds", buf, 0x40u);
      }
    }
  }

  else
  {
    v11 = 0;
  }

  std::recursive_mutex::unlock((this + 80));
  return v11;
}

uint64_t Phase::Controller::SubmixSystem::SetAudioSessionLevel(uint64_t a1, int a2, uint64_t a3, char a4)
{
  v31 = *MEMORY[0x277D85DE8];
  if ((a4 & 1) == 0)
  {
    std::terminate();
  }

  std::recursive_mutex::lock((a1 + 80));
  v7 = *(a1 + 56);
  if (v7)
  {
    v8 = 0;
    do
    {
      v9 = v7[4];
      if (!v9)
      {
        v15 = **(Phase::Logger::GetInstance(0) + 400);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          v17 = 136315394;
          v18 = "CvmSubmixSystem.mm";
          v19 = 1024;
          v20 = 613;
          _os_log_impl(&dword_23A302000, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION: pSubmix != nullptr is false.", &v17, 0x12u);
        }

        exception = __cxa_allocate_exception(0x10uLL);
        std::logic_error::logic_error(exception, "PRECONDITION: pSubmix != nullptr is false.");
      }

      if (*(v9 + 12) == a2)
      {
        v9 = (*(*v9 + 232))(v9, a3, 1);
        ++v8;
      }

      v7 = *v7;
    }

    while (v7);
    if (v8)
    {
      v10 = **(Phase::Logger::GetInstance(v9) + 400);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = *a3;
        v12 = *(a3 + 8) == 0;
        v17 = 136316674;
        v18 = "CvmSubmixSystem.mm";
        if (v12)
        {
          v13 = "NO";
        }

        else
        {
          v13 = "YES";
        }

        v19 = 1024;
        v20 = 625;
        v21 = 2048;
        v22 = a1;
        v23 = 2048;
        v24 = v8;
        v25 = 1024;
        v26 = a2;
        v27 = 2048;
        v28 = v11;
        v29 = 2080;
        v30 = v13;
        _os_log_impl(&dword_23A302000, v10, OS_LOG_TYPE_DEFAULT, "%25s:%-5d impl@%p: Setting %zu submixes belonging to session 0x%x to %f - muted: %s", &v17, 0x40u);
      }
    }
  }

  else
  {
    v8 = 0;
  }

  std::recursive_mutex::unlock((a1 + 80));
  return v8;
}

void sub_23A387DD0(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  std::recursive_mutex::unlock((v1 + 80));
  _Unwind_Resume(a1);
}

uint64_t Phase::Controller::SubmixSystem::SetAudioSessionLevelInVolumeCategoryAndMode(Phase::Controller::SubmixSystem *this, NSString *a2, NSString *a3, char a4)
{
  v40 = *MEMORY[0x277D85DE8];
  v27 = a2;
  v7 = a3;
  if ((a4 & 1) == 0)
  {
    std::terminate();
  }

  v8 = v7;
  std::recursive_mutex::lock((this + 80));
  memset(v31, 0, sizeof(v31));
  v32 = 1065353216;
  memset(v29, 0, sizeof(v29));
  v30 = 1065353216;
  v10 = *(this + 7);
  if (!v10)
  {
    v11 = 0;
    goto LABEL_22;
  }

  v11 = 0;
  do
  {
    v12 = v10[4];
    if (!v12)
    {
      v25 = **(Phase::Logger::GetInstance(v9) + 400);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "CvmSubmixSystem.mm";
        v34 = 1024;
        v35 = 656;
        _os_log_impl(&dword_23A302000, v25, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION: pSubmix != nullptr is false.", buf, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(exception, "PRECONDITION: pSubmix != nullptr is false.");
    }

    v28 = v12[12];
    v13 = std::__hash_table<std::__hash_value_type<unsigned int,std::optional<Phase::Controller::SessionManager::SessionVolume>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::optional<Phase::Controller::SessionManager::SessionVolume>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::optional<Phase::Controller::SessionManager::SessionVolume>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::optional<Phase::Controller::SessionManager::SessionVolume>>>>::find<unsigned int>(*&v31[0], *(&v31[0] + 1), v28);
    if (v13)
    {
      goto LABEL_6;
    }

    v9 = std::__hash_table<std::__hash_value_type<unsigned int,std::optional<Phase::Controller::SessionManager::SessionVolume>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::optional<Phase::Controller::SessionManager::SessionVolume>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::optional<Phase::Controller::SessionManager::SessionVolume>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::optional<Phase::Controller::SessionManager::SessionVolume>>>>::find<unsigned int>(*&v29[0], *(&v29[0] + 1), v28);
    if (v9)
    {
      goto LABEL_16;
    }

    LODWORD(v14) = Phase::Controller::SessionManager::GetAudioSessionVolumeIfInVolumeCategoryAndMode(*(this + 35), v28, v27, v8, 1);
    v16 = v15;
    if ((v15 & 0x100000000) == 0)
    {
      v9 = std::__hash_table<std::__hash_value_type<unsigned int,std::optional<Phase::Controller::SessionManager::SessionVolume>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::optional<Phase::Controller::SessionManager::SessionVolume>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::optional<Phase::Controller::SessionManager::SessionVolume>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::optional<Phase::Controller::SessionManager::SessionVolume>>>>::__emplace_unique_key_args<unsigned int,unsigned int const&,std::optional<Phase::Controller::SessionManager::SessionVolume>&>(v29, v28);
      goto LABEL_16;
    }

    v13 = std::__hash_table<std::__hash_value_type<unsigned int,std::optional<Phase::Controller::SessionManager::SessionVolume>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::optional<Phase::Controller::SessionManager::SessionVolume>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::optional<Phase::Controller::SessionManager::SessionVolume>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::optional<Phase::Controller::SessionManager::SessionVolume>>>>::__emplace_unique_key_args<unsigned int,unsigned int const&,std::optional<Phase::Controller::SessionManager::SessionVolume>&>(v31, v28);
    v17 = **(Phase::Logger::GetInstance(v13) + 400);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316418;
      *&buf[4] = "CvmSubmixSystem.mm";
      v18 = "NO";
      if (v16)
      {
        v18 = "YES";
      }

      v34 = 1024;
      v35 = 689;
      v36 = 2048;
      v37 = this;
      v38 = 1024;
      *v39 = v28;
      *&v39[4] = 2048;
      *&v39[6] = v14;
      *&v39[14] = 2080;
      *&v39[16] = v18;
      _os_log_impl(&dword_23A302000, v17, OS_LOG_TYPE_DEFAULT, "%25s:%-5d impl@%p: session 0x%x volume: queried %f, muted %s", buf, 0x36u);
    }

    if (v13)
    {
LABEL_6:
      if ((v13[4] & 1) == 0)
      {
        std::__throw_bad_optional_access[abi:ne200100]();
      }

      *buf = *(v13 + 20);
      *&buf[8] = *(v13 + 7);
      v9 = (*(*v12 + 232))(v12, buf, 1);
      ++v11;
    }

LABEL_16:
    v10 = *v10;
  }

  while (v10);
  if (v11)
  {
    v19 = **(Phase::Logger::GetInstance(v9) + 400);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      v20 = v27;
      v21 = [(NSString *)v27 UTF8String];
      v22 = v8;
      v23 = [(NSString *)v8 UTF8String];
      *buf = 136316418;
      *&buf[4] = "CvmSubmixSystem.mm";
      v34 = 1024;
      v35 = 710;
      v36 = 2048;
      v37 = this;
      v38 = 2048;
      *v39 = v11;
      *&v39[8] = 2080;
      *&v39[10] = v21;
      *&v39[18] = 2080;
      *&v39[20] = v23;
      _os_log_impl(&dword_23A302000, v19, OS_LOG_TYPE_DEBUG, "%25s:%-5d impl@%p: Set volume on %zu submixes belonging to category/mode [%s, %s]", buf, 0x3Au);
    }
  }

LABEL_22:
  std::__hash_table<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::__unordered_map_hasher<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::hash<Phase::SpatialCategory>,std::equal_to<Phase::SpatialCategory>,true>,std::__unordered_map_equal<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::equal_to<Phase::SpatialCategory>,std::hash<Phase::SpatialCategory>,true>,std::allocator<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>>>::~__hash_table(v29);
  std::__hash_table<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::__unordered_map_hasher<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::hash<Phase::SpatialCategory>,std::equal_to<Phase::SpatialCategory>,true>,std::__unordered_map_equal<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::equal_to<Phase::SpatialCategory>,std::hash<Phase::SpatialCategory>,true>,std::allocator<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>>>::~__hash_table(v31);
  std::recursive_mutex::unlock((this + 80));

  return v11;
}

void sub_23A38821C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);

  std::__hash_table<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::__unordered_map_hasher<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::hash<Phase::SpatialCategory>,std::equal_to<Phase::SpatialCategory>,true>,std::__unordered_map_equal<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::equal_to<Phase::SpatialCategory>,std::hash<Phase::SpatialCategory>,true>,std::allocator<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>>>::~__hash_table(va);
  std::__hash_table<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::__unordered_map_hasher<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::hash<Phase::SpatialCategory>,std::equal_to<Phase::SpatialCategory>,true>,std::__unordered_map_equal<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::equal_to<Phase::SpatialCategory>,std::hash<Phase::SpatialCategory>,true>,std::allocator<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>>>::~__hash_table(va1);
  std::recursive_mutex::unlock((v8 + 80));

  _Unwind_Resume(a1);
}

uint64_t Phase::Controller::SubmixSystem::SetAudioSessionLevelOnAllSessions(Phase::Controller::SubmixSystem *this, char a2)
{
  v28 = *MEMORY[0x277D85DE8];
  if ((a2 & 1) == 0)
  {
    std::terminate();
  }

  std::recursive_mutex::lock((this + 80));
  v18 = 0u;
  v19 = 0u;
  v20 = 1065353216;
  v4 = *(this + 7);
  if (v4)
  {
    v5 = 0;
    do
    {
      v6 = v4[4];
      if (!v6)
      {
        v15 = **(Phase::Logger::GetInstance(AudioSessionVolume) + 400);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "CvmSubmixSystem.mm";
          v22 = 1024;
          v23 = 731;
          _os_log_impl(&dword_23A302000, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION: pSubmix != nullptr is false.", buf, 0x12u);
        }

        exception = __cxa_allocate_exception(0x10uLL);
        std::logic_error::logic_error(exception, "PRECONDITION: pSubmix != nullptr is false.");
      }

      v17 = v6[12];
      v7 = std::__hash_table<std::__hash_value_type<unsigned int,std::optional<Phase::Controller::SessionManager::SessionVolume>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::optional<Phase::Controller::SessionManager::SessionVolume>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::optional<Phase::Controller::SessionManager::SessionVolume>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::optional<Phase::Controller::SessionManager::SessionVolume>>>>::find<unsigned int>(v18, *(&v18 + 1), v17);
      if (v7)
      {
        goto LABEL_13;
      }

      AudioSessionVolume = Phase::Controller::SessionManager::GetAudioSessionVolume(*(this + 35), v17, 1);
      v8 = *&AudioSessionVolume;
      v10 = v9;
      if ((v9 & 0x100000000) != 0)
      {
        v7 = std::__hash_table<std::__hash_value_type<unsigned int,std::optional<Phase::Controller::SessionManager::SessionVolume>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::optional<Phase::Controller::SessionManager::SessionVolume>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::optional<Phase::Controller::SessionManager::SessionVolume>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::optional<Phase::Controller::SessionManager::SessionVolume>>>>::__emplace_unique_key_args<unsigned int,unsigned int const&,std::optional<Phase::Controller::SessionManager::SessionVolume>&>(&v18, v17);
        v11 = **(Phase::Logger::GetInstance(v7) + 400);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316418;
          *&buf[4] = "CvmSubmixSystem.mm";
          v12 = "NO";
          if (v10)
          {
            v12 = "YES";
          }

          v22 = 1024;
          v23 = 759;
          v24 = 2048;
          v25 = this;
          v26 = 1024;
          *v27 = v17;
          *&v27[4] = 2048;
          *&v27[6] = v8;
          *&v27[14] = 2080;
          *&v27[16] = v12;
          _os_log_impl(&dword_23A302000, v11, OS_LOG_TYPE_DEFAULT, "%25s:%-5d impl@%p: session 0x%x volume: queried %f muted: %s", buf, 0x36u);
        }
      }

      if (v7)
      {
LABEL_13:
        if ((v7[4] & 1) == 0)
        {
          std::__throw_bad_optional_access[abi:ne200100]();
        }

        *buf = *(v7 + 20);
        *&buf[8] = *(v7 + 7);
        AudioSessionVolume = (*(*v6 + 232))(v6, buf, 1);
        ++v5;
      }

      v4 = *v4;
    }

    while (v4);
    if (v5)
    {
      v13 = **(Phase::Logger::GetInstance(AudioSessionVolume) + 400);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136316162;
        *&buf[4] = "CvmSubmixSystem.mm";
        v22 = 1024;
        v23 = 780;
        v24 = 2048;
        v25 = this;
        v26 = 2048;
        *v27 = v5;
        *&v27[8] = 2048;
        *&v27[10] = *(&v19 + 1);
        _os_log_impl(&dword_23A302000, v13, OS_LOG_TYPE_DEBUG, "%25s:%-5d impl@%p: Set volume on %zu submixes, %zu sessions", buf, 0x30u);
      }
    }
  }

  else
  {
    v5 = 0;
  }

  std::__hash_table<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::__unordered_map_hasher<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::hash<Phase::SpatialCategory>,std::equal_to<Phase::SpatialCategory>,true>,std::__unordered_map_equal<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::equal_to<Phase::SpatialCategory>,std::hash<Phase::SpatialCategory>,true>,std::allocator<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>>>::~__hash_table(&v18);
  std::recursive_mutex::unlock((this + 80));
  return v5;
}

void sub_23A388618(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__hash_table<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::__unordered_map_hasher<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::hash<Phase::SpatialCategory>,std::equal_to<Phase::SpatialCategory>,true>,std::__unordered_map_equal<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::equal_to<Phase::SpatialCategory>,std::hash<Phase::SpatialCategory>,true>,std::allocator<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>>>::~__hash_table(va);
  std::recursive_mutex::unlock((v7 + 80));
  _Unwind_Resume(a1);
}

uint64_t Phase::Controller::SubmixSystem::GetSubmixesForSource(uint64_t result, uint64_t a2, uint64_t a3)
{
  for (i = *(result + 56); i; i = *i)
  {
    result = (*(*i[4] + 192))(i[4]);
    if (result == a2)
    {
      result = std::__tree<Phase::UniqueObjectId>::__emplace_unique_key_args<Phase::UniqueObjectId,Phase::UniqueObjectId const&>(a3, i + 2);
    }
  }

  return result;
}

uint64_t Phase::Controller::SubmixSystem::GetStats@<X0>(Phase::Controller::RendererSystem **this@<X0>, uint64_t a2@<X8>)
{
  v4 = 0;
  v14[1] = *MEMORY[0x277D85DE8];
  v14[0] = 0x706050403020100;
  do
  {
    v5 = *(v14 + v4);
    *(a2 + 4 * v5) = Phase::Controller::SubmixSystem::GetSubmixCount(this, 1, *(v14 + v4));
    *(a2 + 32 + 4 * v5) = Phase::Controller::SubmixSystem::GetSubmixCount(this, 2, v5);
    *(a2 + 64 + 4 * v5) = Phase::Controller::SubmixSystem::GetSubmixCount(this, 3, v5);
    ++v4;
  }

  while (v4 != 8);
  v6 = 0;
  v7 = this[7];
  do
  {
    v8 = __const__ZNK5Phase10Controller12SubmixSystem8GetStatsEv_generatorStates[v6];
    v9 = 0;
    if (v7)
    {
      v10 = v7;
      do
      {
        v11 = *(*(v10 + 4) + 264);
        if (v11)
        {
          v12 = 0;
          do
          {
            if (*(v11[4] + 448) == v8)
            {
              ++v12;
            }

            v11 = *v11;
          }

          while (v11);
        }

        else
        {
          v12 = 0;
        }

        v9 += v12;
        v10 = *v10;
      }

      while (v10);
    }

    *(a2 + 96 + 4 * v8) = v9;
    ++v6;
  }

  while (v6 != 8);
  return Phase::Controller::RendererSystem::GetStats(this[34], a2 + 116);
}

uint64_t Phase::Controller::SubmixSystem::GetSubmixCount(Phase::Logger *a1, uint64_t a2, unsigned __int8 a3)
{
  v16 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    v8 = **(Phase::Logger::GetInstance(a1) + 400);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = 136315650;
      v11 = "CvmSubmixSystem.mm";
      v12 = 1024;
      v13 = 868;
      v14 = 2048;
      v15 = a1;
      _os_log_impl(&dword_23A302000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d impl@%p: error: requesting submix count for mixer type 'unknown'. Returning 0", &v10, 0x1Cu);
    }

    return 0;
  }

  v4 = *(a1 + 7);
  if (!v4)
  {
    return 0;
  }

  v6 = 0;
  v7 = a3;
  do
  {
    if ((*(*v4[4] + 336))(v4[4]) == a2)
    {
      if (*(v4[4] + 72) == v7)
      {
        v6 = (v6 + 1);
      }

      else
      {
        v6 = v6;
      }
    }

    v4 = *v4;
  }

  while (v4);
  return v6;
}

void *Phase::LambdaFunction<Phase::Controller::SubmixSystem::ActivateAudioSession(unsigned int,BOOL,BOOL)::$_0::operator() const(void)::{lambda(void)#1},void>::operator()(uint64_t a1)
{
  v2 = *(a1 + 8);
  v7 = *(a1 + 24);
  result = std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>>>::find<Phase::UniqueObjectId>(v2 + 5, &v7);
  if (result)
  {
    Submix = Phase::Controller::SubmixSystem::GetSubmix(v2, *(a1 + 24), *(a1 + 32));
    v5 = Submix;
    v6 = *Submix;
    if (*(a1 + 40))
    {
      (*(v6 + 56))(Submix);
      return (*(*v5 + 224))(v5, *(a1 + 16), *(a1 + 20));
    }

    else
    {
      return (*(v6 + 48))(Submix);
    }
  }

  return result;
}

void *Phase::LambdaFunction<Phase::Controller::SubmixSystem::FadeAudioSession(unsigned int,float,float,BOOL)::$_0::operator() const(void)::{lambda(void)#1},void>::operator()(uint64_t a1)
{
  v2 = *(a1 + 8);
  v5 = *(a1 + 16);
  result = std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>>>::find<Phase::UniqueObjectId>((v2 + 40), &v5);
  if (result)
  {
    Submix = Phase::Controller::SubmixSystem::GetSubmix(*(a1 + 8), *(a1 + 16), *(a1 + 24));
    return (*(*Submix + 224))(Submix, *(a1 + 32), *(a1 + 36));
  }

  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::Submix>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::Submix>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::Submix>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::Submix>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::Submix>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::Submix>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::Submix>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::Submix>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::Submix>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::Submix>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::Submix>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::Submix>>>>::__deallocate_node(int a1, void *__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      v4 = v2[4];
      v2[4] = 0;
      if (v4)
      {
        (*(*v4 + 8))(v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::Submix>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::Submix>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::Submix>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::Submix>>>>::erase(void *a1, uint64_t *a2)
{
  v2 = *a2;
  std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::ClientTapReceiverObject>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::ClientTapReceiverObject>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::ClientTapReceiverObject>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::ClientTapReceiverObject>>>>::remove(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::Submix>>,void *>>>::operator()[abi:ne200100](&v6, v3);
  }

  return v2;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::Submix>>,void *>>>::operator()[abi:ne200100](uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = __p[4];
    __p[4] = 0;
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

void *std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,Phase::UniqueObjectId>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,Phase::UniqueObjectId>>>::__emplace_unique_key_args<Phase::UniqueObjectId,std::pair<Phase::UniqueObjectId,Phase::UniqueObjectId>>(void *a1, void *a2)
{
  v2 = 0;
  v3 = 0xCBF29CE484222325;
  do
  {
    v3 = 0x100000001B3 * (v3 ^ *(a2 + v2++));
  }

  while (v2 != 16);
  v4 = a1[1];
  if (!*&v4)
  {
    goto LABEL_24;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = v3;
    if (v3 >= *&v4)
    {
      v6 = v3 % *&v4;
    }
  }

  else
  {
    v6 = (*&v4 - 1) & v3;
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7 || (v8 = *v7) == 0)
  {
LABEL_24:
    operator new();
  }

  while (1)
  {
    v9 = v8[1];
    if (v9 == v3)
    {
      break;
    }

    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v4)
      {
        v9 %= *&v4;
      }
    }

    else
    {
      v9 &= *&v4 - 1;
    }

    if (v9 != v6)
    {
      goto LABEL_24;
    }

LABEL_23:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_24;
    }
  }

  if (v8[2] != *a2 || v8[3] != a2[1])
  {
    goto LABEL_23;
  }

  return v8;
}

void *std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,Phase::UniqueObjectId>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,Phase::UniqueObjectId>>>::__emplace_unique_key_args<Phase::UniqueObjectId,std::piecewise_construct_t const&,std::tuple<Phase::UniqueObjectId const&>,std::tuple<>>(void *a1, void *a2)
{
  v2 = 0;
  v3 = 0xCBF29CE484222325;
  do
  {
    v3 = 0x100000001B3 * (v3 ^ *(a2 + v2++));
  }

  while (v2 != 16);
  v4 = a1[1];
  if (!*&v4)
  {
    goto LABEL_24;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = v3;
    if (v3 >= *&v4)
    {
      v6 = v3 % *&v4;
    }
  }

  else
  {
    v6 = (*&v4 - 1) & v3;
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7 || (v8 = *v7) == 0)
  {
LABEL_24:
    operator new();
  }

  while (1)
  {
    v9 = v8[1];
    if (v9 == v3)
    {
      break;
    }

    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v4)
      {
        v9 %= *&v4;
      }
    }

    else
    {
      v9 &= *&v4 - 1;
    }

    if (v9 != v6)
    {
      goto LABEL_24;
    }

LABEL_23:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_24;
    }
  }

  if (v8[2] != *a2 || v8[3] != a2[1])
  {
    goto LABEL_23;
  }

  return v8;
}

uint64_t std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,Phase::UniqueObjectId>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,Phase::UniqueObjectId>>>::erase(void *a1, uint64_t *__p)
{
  v2 = a1[1];
  v4 = *__p;
  v3 = __p[1];
  v5 = vcnt_s8(v2);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v3 >= *&v2)
    {
      v3 %= *&v2;
    }
  }

  else
  {
    v3 &= *&v2 - 1;
  }

  v6 = *(*a1 + 8 * v3);
  do
  {
    v7 = v6;
    v6 = *v6;
  }

  while (v6 != __p);
  if (v7 != a1 + 2)
  {
    v8 = v7[1];
    if (v5.u32[0] > 1uLL)
    {
      if (v8 >= *&v2)
      {
        v8 %= *&v2;
      }
    }

    else
    {
      v8 &= *&v2 - 1;
    }

    v9 = *__p;
    if (v8 == v3)
    {
LABEL_20:
      if (!v9)
      {
        goto LABEL_27;
      }

      goto LABEL_21;
    }
  }

  if (!v4)
  {
    goto LABEL_19;
  }

  v10 = *(v4 + 8);
  if (v5.u32[0] > 1uLL)
  {
    if (v10 >= *&v2)
    {
      v10 %= *&v2;
    }
  }

  else
  {
    v10 &= *&v2 - 1;
  }

  v9 = *__p;
  if (v10 != v3)
  {
LABEL_19:
    *(*a1 + 8 * v3) = 0;
    v9 = *__p;
    goto LABEL_20;
  }

LABEL_21:
  v11 = *(v9 + 8);
  if (v5.u32[0] > 1uLL)
  {
    if (v11 >= *&v2)
    {
      v11 %= *&v2;
    }
  }

  else
  {
    v11 &= *&v2 - 1;
  }

  if (v11 != v3)
  {
    *(*a1 + 8 * v11) = v7;
    v9 = *__p;
  }

LABEL_27:
  *v7 = v9;
  *__p = 0;
  --a1[3];
  operator delete(__p);
  return v4;
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,std::optional<Phase::Controller::SessionManager::SessionVolume>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::optional<Phase::Controller::SessionManager::SessionVolume>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::optional<Phase::Controller::SessionManager::SessionVolume>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::optional<Phase::Controller::SessionManager::SessionVolume>>>>::find<unsigned int>(uint64_t a1, unint64_t a2, unsigned int a3)
{
  if (!a2)
  {
    return 0;
  }

  v3 = vcnt_s8(a2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a3;
    if (a3 >= a2)
    {
      v4 = a3 % a2;
    }
  }

  else
  {
    v4 = (a2 - 1) & a3;
  }

  v5 = *(a1 + 8 * v4);
  if (!v5)
  {
    return 0;
  }

  for (result = *v5; result; result = *result)
  {
    v7 = result[1];
    if (v7 == a3)
    {
      if (*(result + 4) == a3)
      {
        return result;
      }
    }

    else
    {
      if (v3.u32[0] > 1uLL)
      {
        if (v7 >= a2)
        {
          v7 %= a2;
        }
      }

      else
      {
        v7 &= a2 - 1;
      }

      if (v7 != v4)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,std::optional<Phase::Controller::SessionManager::SessionVolume>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::optional<Phase::Controller::SessionManager::SessionVolume>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::optional<Phase::Controller::SessionManager::SessionVolume>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::optional<Phase::Controller::SessionManager::SessionVolume>>>>::__emplace_unique_key_args<unsigned int,unsigned int const&,std::optional<Phase::Controller::SessionManager::SessionVolume>&>(void *a1, unsigned int a2)
{
  v2 = a1[1];
  if (!v2)
  {
    goto LABEL_18;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (v2 <= a2)
    {
      v4 = a2 % v2;
    }
  }

  else
  {
    v4 = (v2 - 1) & a2;
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
      if (v7 >= v2)
      {
        v7 %= v2;
      }
    }

    else
    {
      v7 &= v2 - 1;
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

  if (*(v6 + 4) != a2)
  {
    goto LABEL_17;
  }

  return v6;
}

uint64_t std::__tree<Phase::UniqueObjectId>::__emplace_unique_key_args<Phase::UniqueObjectId,Phase::UniqueObjectId const&>(uint64_t a1, unint64_t *a2)
{
  v2 = *std::__tree<Phase::UniqueObjectId>::__find_equal<Phase::UniqueObjectId>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void *std::__tree<Phase::UniqueObjectId>::__find_equal<Phase::UniqueObjectId>(uint64_t a1, void *a2, unint64_t *a3)
{
  v5 = *(a1 + 8);
  result = (a1 + 8);
  v4 = v5;
  if (v5)
  {
    v7 = *a3;
    v6 = a3[1];
    do
    {
      while (1)
      {
        v8 = v4;
        v9 = v4[5];
        v10 = v8[4];
        v11 = v7 < v10;
        if (v6 != v9)
        {
          v11 = v6 < v9;
        }

        if (!v11)
        {
          break;
        }

        v4 = *v8;
        result = v8;
        if (!*v8)
        {
          goto LABEL_15;
        }
      }

      v12 = v10 < v7;
      if (v6 == v9)
      {
        v13 = v12;
      }

      else
      {
        v13 = v9 < v6;
      }

      if (!v13)
      {
        break;
      }

      result = v8 + 1;
      v4 = v8[1];
    }

    while (v4);
  }

  else
  {
    v8 = result;
  }

LABEL_15:
  *a2 = v8;
  return result;
}

Phase::Controller::CvmVoiceData *Phase::Controller::CvmVoiceData::CvmVoiceData(Phase::Controller::CvmVoiceData *this, const Phase::Controller::VoicePoolEntry *a2, uint64_t a3)
{
  v44 = *MEMORY[0x277D85DE8];
  *(this + 1) = 0u;
  v5 = (this + 16);
  *(this + 2) = 0u;
  *(this + 12) = 1065353216;
  *(this + 7) = 0;
  v6 = (this + 56);
  *(this + 8) = 0;
  *(this + 9) = 0;
  *(this + 20) = 2;
  *this = *(a2 + 3);
  *(this + 1) = a3;
  Phase::Controller::VoicePoolEntry::GetIdsOfParameterOfClass(a2, 5, &v39);
  v7 = v39;
  if (v40 != v39)
  {
    v8 = 0;
    do
    {
      v9 = v7[v8];
      Phase::Controller::sCreateDefaultParameter(&v36, a2, v9);
      *buf = v9;
      *&buf[8] = v36;
      v42 = v37;
      v43 = v38;
      v10 = std::__hash_table<std::__hash_value_type<int,Phase::Controller::Parameter<double>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,Phase::Controller::Parameter<double>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,Phase::Controller::Parameter<double>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,Phase::Controller::Parameter<double>>>>::__emplace_unique_key_args<int,std::pair<int,Phase::Controller::Parameter<double>>>(v5, v9);
      if ((v10 & 1) == 0)
      {
        v30 = **(Phase::Logger::GetInstance(v10) + 736);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          *&buf[4] = "CvmVoiceData.mm";
          *&buf[12] = 1024;
          *&buf[14] = 50;
          *&buf[18] = 1024;
          *&buf[20] = v9;
          _os_log_impl(&dword_23A302000, v30, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error) [!inserted.second is true]: Failed to insert %d parameter", buf, 0x18u);
        }

        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Failed to insert %d parameter");
      }

      ++v8;
      v7 = v39;
    }

    while (v8 < (v40 - v39) >> 2);
  }

  Phase::Controller::VoicePoolEntry::GetIdsOfParameterOfClass(a2, 4, &__p);
  v11 = __p;
  if (v35 != __p)
  {
    v12 = 0;
    do
    {
      v13 = v11[v12];
      Phase::Controller::sCreateDefaultParameter(&v36, a2, v13);
      *buf = v13;
      *&buf[8] = v36;
      v42 = v37;
      v43 = v38;
      v14 = std::__hash_table<std::__hash_value_type<int,Phase::Controller::Parameter<double>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,Phase::Controller::Parameter<double>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,Phase::Controller::Parameter<double>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,Phase::Controller::Parameter<double>>>>::__emplace_unique_key_args<int,std::pair<int,Phase::Controller::Parameter<double>>>(v5, v13);
      if ((v14 & 1) == 0)
      {
        v32 = **(Phase::Logger::GetInstance(v14) + 736);
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          *&buf[4] = "CvmVoiceData.mm";
          *&buf[12] = 1024;
          *&buf[14] = 61;
          *&buf[18] = 1024;
          *&buf[20] = v13;
          _os_log_impl(&dword_23A302000, v32, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error) [!inserted.second is true]: Failed to insert %d parameter", buf, 0x18u);
        }

        v33 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v33, "Failed to insert %d parameter");
      }

      ++v12;
      v11 = __p;
    }

    while (v12 < (v35 - __p) >> 2);
  }

  Phase::Controller::VoicePoolEntry::GetBufferIds(a2, &v36);
  v16 = *(&v36 + 1);
  v15 = v36;
  if (v36 != *(&v36 + 1))
  {
    v17 = *(this + 8);
    do
    {
      v18 = *(this + 9);
      if (v17 >= v18)
      {
        v19 = (v17 - *v6) >> 5;
        if ((v19 + 1) >> 59)
        {
          std::vector<Phase::Controller::DVM23::SubmixController *>::__throw_length_error[abi:ne200100]();
        }

        v20 = v18 - *v6;
        v21 = v20 >> 4;
        if (v20 >> 4 <= (v19 + 1))
        {
          v21 = v19 + 1;
        }

        if (v20 >= 0x7FFFFFFFFFFFFFE0)
        {
          v22 = 0x7FFFFFFFFFFFFFFLL;
        }

        else
        {
          v22 = v21;
        }

        *(&v42 + 1) = v6;
        if (v22)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<Phase::VoiceBufferParameter>>(v6, v22);
        }

        v23 = 32 * v19;
        *v23 = *v15;
        *(v23 + 8) = 0;
        *(v23 + 16) = 0;
        *(v23 + 24) = 0;
        v17 = 32 * v19 + 32;
        v24 = *(this + 7);
        v25 = *(this + 8);
        v26 = 32 * v19 + v24 - v25;
        std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<Phase::VoiceBufferParameter>,Phase::VoiceBufferParameter*>(v6, v24, v25, v23 + v24 - v25);
        v27 = *(this + 7);
        *(this + 7) = v26;
        *(this + 8) = v17;
        v28 = *(this + 9);
        *(this + 9) = 0;
        *&buf[16] = v27;
        *&v42 = v28;
        *buf = v27;
        *&buf[8] = v27;
        std::__split_buffer<Phase::VoiceBufferParameter>::~__split_buffer(buf);
      }

      else
      {
        *v17 = *v15;
        *(v17 + 8) = 0;
        *(v17 + 16) = 0;
        *(v17 + 24) = 0;
        v17 += 32;
      }

      *(this + 8) = v17;
      ++v15;
    }

    while (v15 != v16);
    v15 = v36;
  }

  if (v15)
  {
    *(&v36 + 1) = v15;
    operator delete(v15);
  }

  if (__p)
  {
    v35 = __p;
    operator delete(__p);
  }

  if (v39)
  {
    v40 = v39;
    operator delete(v39);
  }

  return this;
}

void sub_23A389CB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a18)
  {
    a19 = a18;
    operator delete(a18);
  }

  std::vector<Phase::VoiceBufferParameter>::__destroy_vector::operator()[abi:ne200100](&a18);
  std::__hash_table<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::__unordered_map_hasher<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::hash<Phase::SpatialCategory>,std::equal_to<Phase::SpatialCategory>,true>,std::__unordered_map_equal<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::equal_to<Phase::SpatialCategory>,std::hash<Phase::SpatialCategory>,true>,std::allocator<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>>>::~__hash_table(v19);
  _Unwind_Resume(a1);
}

uint64_t Phase::Controller::sCreateDefaultParameter(Phase::Controller *this, const Phase::Controller::VoicePoolEntry *a2, signed int a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 36);
  if (v3 <= a3)
  {
    goto LABEL_8;
  }

  v4 = a3;
  v5 = *(a2 + 17);
  if (v5[7 * a3 + 1] == a3)
  {
    v6 = &v5[7 * a3];
    v7 = v6[4];
    v8 = v6[5];
    goto LABEL_24;
  }

  if (v3 < 1)
  {
LABEL_8:
    v11 = **(Phase::Logger::GetInstance(this) + 416);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v24 = 136315394;
      v25 = "VoicePoolEntry.hpp";
      v26 = 1024;
      v27 = 154;
      _os_log_impl(&dword_23A302000, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d POSTCONDITION: false is false.", &v24, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::domain_error::domain_error[abi:ne200100](exception, "POSTCONDITION: false is false.");
  }

  v9 = (v5 + 4);
  v10 = *(a2 + 36);
  while (*(v9 - 3) != a3)
  {
    v9 += 7;
    if (!--v10)
    {
      goto LABEL_8;
    }
  }

  v7 = *v9;
  v13 = (v5 + 5);
  v14 = *(a2 + 36);
  while (*(v13 - 4) != a3)
  {
    v13 += 7;
    if (!--v14)
    {
      v15 = **(Phase::Logger::GetInstance(this) + 416);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v24 = 136315394;
        v25 = "VoicePoolEntry.hpp";
        v26 = 1024;
        v27 = 177;
        _os_log_impl(&dword_23A302000, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d POSTCONDITION: false is false.", &v24, 0x12u);
      }

      v16 = __cxa_allocate_exception(0x10uLL);
      std::domain_error::domain_error[abi:ne200100](v16, "POSTCONDITION: false is false.");
    }
  }

  v17 = 0;
  v8 = *v13;
  v18 = v5 + 1;
  while (1)
  {
    v19 = *v18;
    v18 += 7;
    if (v19 == a3)
    {
      break;
    }

    if (v3 == ++v17)
    {
      v20 = **(Phase::Logger::GetInstance(this) + 416);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v24 = 136315394;
        v25 = "VoicePoolEntry.hpp";
        v26 = 1024;
        v27 = 131;
        _os_log_impl(&dword_23A302000, v20, OS_LOG_TYPE_ERROR, "%25s:%-5d POSTCONDITION: false is false.", &v24, 0x12u);
      }

      v21 = __cxa_allocate_exception(0x10uLL);
      std::domain_error::domain_error[abi:ne200100](v21, "POSTCONDITION: false is false.");
    }
  }

  v4 = v17;
LABEL_24:
  v22 = *&v5[7 * v4 + 6];
  *(this + 32) = 0;
  *this = 0u;
  *(this + 1) = 0u;

  return Phase::Controller::Parameter<double>::Initialize(this, v7, v8, v22);
}

Phase::Controller::CvmVoiceData *Phase::Controller::CvmVoiceData::CvmVoiceData(Phase::Controller::CvmVoiceData *this, const Phase::Controller::ProcedureInfo *a2, uint64_t a3)
{
  v53 = *MEMORY[0x277D85DE8];
  *(this + 1) = 0u;
  v5 = (this + 16);
  *(this + 2) = 0u;
  *(this + 12) = 1065353216;
  *(this + 7) = 0;
  v6 = (this + 56);
  *(this + 8) = 0;
  *(this + 9) = 0;
  *(this + 20) = 2;
  *this = *(a2 + 3);
  *(this + 1) = a3;
  v7 = *(a2 + 4);
  if (*(a2 + 5) != v7)
  {
    v8 = 0;
    v9 = 0;
    do
    {
      v10 = v7 + v8;
      v11 = *(v10 + 32);
      v12 = *(v10 + 40);
      v13 = *(v10 + 48);
      v14 = *(v10 + 56);
      LOBYTE(v49) = 0;
      v47 = 0u;
      v48 = 0u;
      Phase::Controller::Parameter<double>::Initialize(&v47, v12, v13, v14);
      *buf = v11;
      *&buf[8] = v47;
      v51 = v48;
      v52 = v49;
      v15 = std::__hash_table<std::__hash_value_type<int,Phase::Controller::Parameter<double>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,Phase::Controller::Parameter<double>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,Phase::Controller::Parameter<double>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,Phase::Controller::Parameter<double>>>>::__emplace_unique_key_args<int,std::pair<int,Phase::Controller::Parameter<double>>>(v5, v11);
      if ((v15 & 1) == 0)
      {
        v45 = **(Phase::Logger::GetInstance(v15) + 736);
        if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          *&buf[4] = "CvmVoiceData.mm";
          *&buf[12] = 1024;
          *&buf[14] = 91;
          *&buf[18] = 1024;
          *&buf[20] = v11;
          _os_log_impl(&dword_23A302000, v45, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error) [!inserted.second is true]: Failed to insert %d parameter", buf, 0x18u);
        }

        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Failed to insert %d parameter");
      }

      ++v9;
      v7 = *(a2 + 4);
      v8 += 64;
    }

    while (v9 < (*(a2 + 5) - v7) >> 6);
  }

  v16 = *(a2 + 7);
  v17 = *(a2 + 8);
  if (v16 != v17)
  {
    v18 = *(this + 8);
    do
    {
      v19 = *(this + 9);
      if (v18 >= v19)
      {
        v20 = (v18 - *v6) >> 5;
        if ((v20 + 1) >> 59)
        {
          std::vector<Phase::Controller::DVM23::SubmixController *>::__throw_length_error[abi:ne200100]();
        }

        v21 = v19 - *v6;
        v22 = v21 >> 4;
        if (v21 >> 4 <= (v20 + 1))
        {
          v22 = v20 + 1;
        }

        if (v21 >= 0x7FFFFFFFFFFFFFE0)
        {
          v23 = 0x7FFFFFFFFFFFFFFLL;
        }

        else
        {
          v23 = v22;
        }

        *(&v51 + 1) = v6;
        if (v23)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<Phase::VoiceBufferParameter>>(v6, v23);
        }

        v24 = 32 * v20;
        *v24 = *v16;
        *(v24 + 8) = 0;
        *(v24 + 16) = 0;
        *(v24 + 24) = 0;
        v18 = 32 * v20 + 32;
        v25 = *(this + 7);
        v26 = *(this + 8);
        v27 = 32 * v20 + v25 - v26;
        std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<Phase::VoiceBufferParameter>,Phase::VoiceBufferParameter*>(v6, v25, v26, v24 + v25 - v26);
        v28 = *(this + 7);
        *(this + 7) = v27;
        *(this + 8) = v18;
        v29 = *(this + 9);
        *(this + 9) = 0;
        *&buf[16] = v28;
        *&v51 = v29;
        *buf = v28;
        *&buf[8] = v28;
        std::__split_buffer<Phase::VoiceBufferParameter>::~__split_buffer(buf);
      }

      else
      {
        *v18 = *v16;
        *(v18 + 8) = 0;
        *(v18 + 16) = 0;
        *(v18 + 24) = 0;
        v18 += 32;
      }

      *(this + 8) = v18;
      ++v16;
    }

    while (v16 != v17);
  }

  v30 = *(a2 + 10);
  v31 = *(a2 + 11);
  if (v30 != v31)
  {
    v32 = *(this + 8);
    do
    {
      v33 = *(this + 9);
      if (v32 >= v33)
      {
        v34 = (v32 - *v6) >> 5;
        if ((v34 + 1) >> 59)
        {
          std::vector<Phase::Controller::DVM23::SubmixController *>::__throw_length_error[abi:ne200100]();
        }

        v35 = v33 - *v6;
        v36 = v35 >> 4;
        if (v35 >> 4 <= (v34 + 1))
        {
          v36 = v34 + 1;
        }

        if (v35 >= 0x7FFFFFFFFFFFFFE0)
        {
          v37 = 0x7FFFFFFFFFFFFFFLL;
        }

        else
        {
          v37 = v36;
        }

        *(&v51 + 1) = v6;
        if (v37)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<Phase::VoiceBufferParameter>>(v6, v37);
        }

        v38 = 32 * v34;
        *v38 = *v30;
        *(v38 + 8) = 0;
        *(v38 + 16) = 0;
        *(v38 + 24) = 0;
        v32 = 32 * v34 + 32;
        v39 = *(this + 7);
        v40 = *(this + 8);
        v41 = 32 * v34 + v39 - v40;
        std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<Phase::VoiceBufferParameter>,Phase::VoiceBufferParameter*>(v6, v39, v40, v38 + v39 - v40);
        v42 = *(this + 7);
        *(this + 7) = v41;
        *(this + 8) = v32;
        v43 = *(this + 9);
        *(this + 9) = 0;
        *&buf[16] = v42;
        *&v51 = v43;
        *buf = v42;
        *&buf[8] = v42;
        std::__split_buffer<Phase::VoiceBufferParameter>::~__split_buffer(buf);
      }

      else
      {
        *v32 = *v30;
        *(v32 + 8) = 0;
        *(v32 + 16) = 0;
        *(v32 + 24) = 0;
        v32 += 32;
      }

      *(this + 8) = v32;
      ++v30;
    }

    while (v30 != v31);
  }

  return this;
}

void sub_23A38A45C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  std::vector<Phase::VoiceBufferParameter>::__destroy_vector::operator()[abi:ne200100](&a9);
  std::__hash_table<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::__unordered_map_hasher<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::hash<Phase::SpatialCategory>,std::equal_to<Phase::SpatialCategory>,true>,std::__unordered_map_equal<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::equal_to<Phase::SpatialCategory>,std::hash<Phase::SpatialCategory>,true>,std::allocator<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>>>::~__hash_table(v9);
  _Unwind_Resume(a1);
}

void Phase::Controller::CvmVoiceData::SetParameter(Phase::Controller::CvmVoiceData *this, int a2, double a3, int a4)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = *(this + 3);
  if (v5)
  {
    v7 = vcnt_s8(v5);
    v7.i16[0] = vaddlv_u8(v7);
    if (v7.u32[0] > 1uLL)
    {
      v8 = a2;
      if (v5 <= a2)
      {
        v8 = a2 % v5;
      }
    }

    else
    {
      v8 = (v5 - 1) & a2;
    }

    v9 = *(*(this + 2) + 8 * v8);
    if (v9)
    {
      for (i = *v9; i; i = *i)
      {
        v11 = *(i + 1);
        if (v11 == a2)
        {
          if (*(i + 4) == a2)
          {
            v13 = Phase::Controller::sClamp<double>(this, a3, i[3], i[4]);
            if (v13 != i[6])
            {
              i[6] = v13;
              *(i + 56) = 1;
            }

            if (a4)
            {
              *(i + 56) = 1;
            }

            return;
          }
        }

        else
        {
          if (v7.u32[0] > 1uLL)
          {
            if (v11 >= v5)
            {
              v11 %= v5;
            }
          }

          else
          {
            v11 &= v5 - 1;
          }

          if (v11 != v8)
          {
            break;
          }
        }
      }
    }
  }

  v12 = **(Phase::Logger::GetInstance(this) + 400);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v14 = 136315650;
    v15 = "CvmVoiceData.mm";
    v16 = 1024;
    v17 = 129;
    v18 = 1024;
    v19 = a2;
    _os_log_impl(&dword_23A302000, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d CvmVoiceData::SetParameter: was called with an invalid inParameterId %d!\n", &v14, 0x18u);
  }
}

void Phase::Controller::CvmVoiceData::SetBuffer(Phase::Logger *a1, unint64_t a2, uint64_t *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 7);
  if (a2 >= (*(a1 + 8) - v4) >> 5)
  {
    v9 = **(Phase::Logger::GetInstance(a1) + 400);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = 136315650;
      v11 = "CvmVoiceData.mm";
      v12 = 1024;
      v13 = 142;
      v14 = 2048;
      v15 = a2;
      _os_log_impl(&dword_23A302000, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d CvmVoiceData::SetBuffer: was called with an invalid inIndex %lu!\n", &v10, 0x1Cu);
    }
  }

  else
  {
    v5 = v4 + 32 * a2;
    v7 = *a3;
    v6 = a3[1];
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    v8 = *(v5 + 16);
    *(v5 + 8) = v7;
    *(v5 + 16) = v6;
    if (v8)
    {

      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }
}

void Phase::Controller::CvmVoiceData::PackDirtyDspParameters(Phase::Controller::CvmVoiceData *this@<X0>, const void **a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = *(this + 4);
  if (v2)
  {
    v4 = 0;
    do
    {
      if (*(v2 + 56) == 1)
      {
        v5 = v2[6];
        v6 = a2[2];
        if (v4 >= v6)
        {
          v8 = *a2;
          v9 = v4 - *a2;
          v10 = v9 >> 4;
          v11 = (v9 >> 4) + 1;
          if (v11 >> 60)
          {
            std::vector<Phase::Controller::DVM23::SubmixController *>::__throw_length_error[abi:ne200100]();
          }

          v12 = v6 - v8;
          if (v12 >> 3 > v11)
          {
            v11 = v12 >> 3;
          }

          if (v12 >= 0x7FFFFFFFFFFFFFF0)
          {
            v13 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v13 = v11;
          }

          if (v13)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned long long,float>>>(a2, v13);
          }

          v14 = 16 * v10;
          *v14 = *(v2 + 4);
          v15 = v5;
          *(v14 + 8) = v15;
          v4 = 16 * v10 + 16;
          memcpy(0, v8, v9);
          v16 = *a2;
          *a2 = 0;
          a2[1] = v4;
          a2[2] = 0;
          if (v16)
          {
            operator delete(v16);
          }
        }

        else
        {
          *v4 = *(v2 + 4);
          v7 = v5;
          *(v4 + 8) = v7;
          v4 += 16;
        }

        a2[1] = v4;
      }

      v2 = *v2;
    }

    while (v2);
  }
}

void sub_23A38A8C8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

double Phase::Controller::CvmVoiceData::CreateDspNodeVoice@<D0>(Phase::Controller::CvmVoiceData *this@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = 0u;
  v4 = (a2 + 8);
  *(a2 + 40) = 0u;
  *(a2 + 24) = 0u;
  *a2 = *(this + 1);
  v5 = *(this + 7);
  v6 = *(this + 8);
  if (v5 != v6)
  {
    v7 = 0;
    do
    {
      if (v7 >= *(a2 + 24))
      {
        v7 = std::vector<Phase::VoiceBufferParameter>::__emplace_back_slow_path<Phase::VoiceBufferParameter const&>(v4, v5);
      }

      else
      {
        *v7 = *v5;
        v8 = *(v5 + 16);
        *(v7 + 8) = *(v5 + 8);
        *(v7 + 16) = v8;
        if (v8)
        {
          atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
        }

        *(v7 + 24) = *(v5 + 24);
        v7 += 32;
      }

      *(a2 + 16) = v7;
      v5 += 32;
    }

    while (v5 != v6);
  }

  Phase::Controller::CvmVoiceData::PackDirtyDspParameters(this, &v11);
  v9 = *(a2 + 32);
  if (v9)
  {
    *(a2 + 40) = v9;
    operator delete(v9);
  }

  result = *&v11;
  *(a2 + 32) = v11;
  *(a2 + 48) = v12;
  return result;
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<Phase::VoiceBufferParameter>,Phase::VoiceBufferParameter*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a4;
  v11 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  if (a2 == a3)
  {
    v10 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = *v6;
      *(a4 + 8) = *(v6 + 8);
      *(v6 + 8) = 0;
      *(v6 + 16) = 0;
      *(a4 + 24) = *(v6 + 24);
      v6 += 32;
      a4 += 32;
    }

    while (v6 != a3);
    v12 = a4;
    v10 = 1;
    do
    {
      v7 = *(v5 + 16);
      if (v7)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
      }

      v5 += 32;
    }

    while (v5 != a3);
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<Phase::VoiceBufferParameter>,Phase::VoiceBufferParameter*>>::~__exception_guard_exceptions[abi:ne200100](v9);
}

uint64_t std::__split_buffer<Phase::VoiceBufferParameter>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    *(a1 + 16) = v2 - 32;
    v4 = *(v2 - 16);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 32;
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::vector<Phase::VoiceBufferParameter>::__emplace_back_slow_path<Phase::VoiceBufferParameter const&>(uint64_t *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    std::vector<Phase::Controller::DVM23::SubmixController *>::__throw_length_error[abi:ne200100]();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 4 > v3)
  {
    v3 = v6 >> 4;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFE0)
  {
    v7 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v16[4] = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<Phase::VoiceBufferParameter>>(a1, v7);
  }

  v8 = 32 * v2;
  *v8 = *a2;
  v9 = *(a2 + 16);
  *(v8 + 8) = *(a2 + 8);
  *(v8 + 16) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  *(32 * v2 + 0x18) = *(a2 + 24);
  v10 = v8 + 32;
  v11 = a1[1];
  v12 = v8 + *a1 - v11;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<Phase::VoiceBufferParameter>,Phase::VoiceBufferParameter*>(a1, *a1, v11, v12);
  v13 = *a1;
  *a1 = v12;
  a1[1] = v10;
  v14 = a1[2];
  a1[2] = 0;
  v16[2] = v13;
  v16[3] = v14;
  v16[0] = v13;
  v16[1] = v13;
  std::__split_buffer<Phase::VoiceBufferParameter>::~__split_buffer(v16);
  return v10;
}

uint64_t std::__hash_table<std::__hash_value_type<int,Phase::Controller::Parameter<double>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,Phase::Controller::Parameter<double>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,Phase::Controller::Parameter<double>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,Phase::Controller::Parameter<double>>>>::__emplace_unique_key_args<int,std::pair<int,Phase::Controller::Parameter<double>>>(void *a1, int a2)
{
  v2 = a1[1];
  if (!v2)
  {
    goto LABEL_18;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (v2 <= a2)
    {
      v4 = a2 % v2;
    }
  }

  else
  {
    v4 = (v2 - 1) & a2;
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
      if (v7 >= v2)
      {
        v7 %= v2;
      }
    }

    else
    {
      v7 &= v2 - 1;
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

  if (*(v6 + 4) != a2)
  {
    goto LABEL_17;
  }

  return 0;
}

uint64_t sub_23A38B054(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, uint64_t a10, __int16 a11, int a12, __int16 a13, uint64_t a14, __int16 a15, int a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  switch(a2)
  {
    case 7:
      v25 = __cxa_begin_catch(exception_object);
      v26 = **(Phase::Logger::GetInstance(v25) + 400);
      v27 = 3;
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v35 = 136315906;
        v36 = "CvmVoiceManager.mm";
        v37 = 1024;
        v38 = 53;
        v39 = 2080;
        v40 = v23;
        v41 = 1024;
        v42 = 3;
        v28 = "%25s:%-5d %s failed with ErrorCode: %hhd (InvalidId)";
LABEL_22:
        _os_log_impl(&dword_23A302000, v26, OS_LOG_TYPE_ERROR, v28, &v35, 0x22u);
      }

      break;
    case 6:
      v29 = __cxa_begin_catch(exception_object);
      v26 = **(Phase::Logger::GetInstance(v29) + 400);
      v27 = 4;
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v35 = 136315906;
        v36 = "CvmVoiceManager.mm";
        v37 = 1024;
        v38 = 59;
        v39 = 2080;
        v40 = v23;
        v41 = 1024;
        v42 = 4;
        v28 = "%25s:%-5d %s failed with ErrorCode: %hhd (IdAlreadyExists)";
        goto LABEL_22;
      }

      break;
    case 5:
      v30 = __cxa_begin_catch(exception_object);
      v26 = **(Phase::Logger::GetInstance(v30) + 400);
      v27 = 6;
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v35 = 136315906;
        v36 = "CvmVoiceManager.mm";
        v37 = 1024;
        v38 = 65;
        v39 = 2080;
        v40 = v23;
        v41 = 1024;
        v42 = 6;
        v28 = "%25s:%-5d %s failed with ErrorCode: %hhd (OutOfMemory)";
        goto LABEL_22;
      }

      break;
    case 4:
      v31 = __cxa_begin_catch(exception_object);
      v26 = **(Phase::Logger::GetInstance(v31) + 400);
      v27 = 1;
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v35 = 136315906;
        v36 = "CvmVoiceManager.mm";
        v37 = 1024;
        v38 = 71;
        v39 = 2080;
        v40 = v23;
        v41 = 1024;
        v42 = 1;
        v28 = "%25s:%-5d %s failed with ErrorCode: %hhd (InvalidArgument)";
        goto LABEL_22;
      }

      break;
    case 3:
      v32 = __cxa_begin_catch(exception_object);
      v26 = **(Phase::Logger::GetInstance(v32) + 400);
      v27 = 8;
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v35 = 136315906;
        v36 = "CvmVoiceManager.mm";
        v37 = 1024;
        v38 = 77;
        v39 = 2080;
        v40 = v23;
        v41 = 1024;
        v42 = 8;
        v28 = "%25s:%-5d %s failed with ErrorCode: %hhd (Failed)";
        goto LABEL_22;
      }

      break;
    default:
      v33 = __cxa_begin_catch(exception_object);
      if (a2 == 2)
      {
        v26 = **(Phase::Logger::GetInstance(v33) + 400);
        v27 = 8;
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          v35 = 136315906;
          v36 = "CvmVoiceManager.mm";
          v37 = 1024;
          v38 = 83;
          v39 = 2080;
          v40 = v23;
          v41 = 1024;
          v42 = 8;
          v28 = "%25s:%-5d %s failed with runtime ErrorCode: %hhd (Failed)";
          goto LABEL_22;
        }
      }

      else
      {
        v26 = **(Phase::Logger::GetInstance(v33) + 400);
        v27 = 8;
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          v35 = 136315906;
          v36 = "CvmVoiceManager.mm";
          v37 = 1024;
          v38 = 89;
          v39 = 2080;
          v40 = v23;
          v41 = 1024;
          v42 = 8;
          v28 = "%25s:%-5d %s failed with logic ErrorCode: %hhd (Failed)";
          goto LABEL_22;
        }
      }

      break;
  }

  __cxa_end_catch();
  return v27;
}

void Phase::Controller::VoiceManager::~VoiceManager(Phase::Controller::VoiceManager::Implementation **this)
{
  v2 = *this;
  *this = 0;
  if (v2)
  {
    Phase::Controller::VoiceManager::Implementation::~Implementation(v2);
    MEMORY[0x23EE864A0]();
  }
}

void Phase::Controller::VoiceManager::Implementation::Initialize(Phase::Controller::VoiceManager::Implementation *this, const Phase::Controller::VoiceManagerInitializeParameters *a2, Phase::Controller::VoiceManager *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  *(this + 85) = *(a2 + 6);
  v5 = **(Phase::Logger::GetInstance(this) + 400);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    *buf = 136315650;
    *&buf[4] = "CvmVoiceManager.mm";
    *&buf[12] = 1024;
    *&buf[14] = 140;
    v12 = 2048;
    v13 = this;
    _os_log_impl(&dword_23A302000, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d impl@%p: initializing", buf, 0x1Cu);
  }

  Instance = Phase::Logger::GetInstance(v6);
  *(this + 1001) = *(Instance + 1633);
  v8 = **(Phase::Logger::GetInstance(Instance) + 400);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(this + 1001);
    *&buf[4] = "CvmVoiceManager.mm";
    *buf = 136315906;
    *&buf[12] = 1024;
    if (v9)
    {
      v10 = "enabled";
    }

    else
    {
      v10 = "disabled";
    }

    *&buf[14] = 144;
    v12 = 2048;
    v13 = this;
    v14 = 2080;
    v15 = v10;
    _os_log_impl(&dword_23A302000, v8, OS_LOG_TYPE_DEFAULT, "%25s:%-5d impl@%p: stats logging is %s", buf, 0x26u);
  }

  if (*(a2 + 8))
  {
    operator new();
  }

  operator new();
}

void sub_23A38BF64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a2)
  {

    Phase::Controller::AudioRouteDescription::~AudioRouteDescription(&a16);
    __cxa_begin_catch(exception_object);
    Phase::Controller::sCatchAll("Initialize", v28);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Phase::Controller::VoiceManager::Implementation::Destroy(Phase::Controller::VoiceManager::Implementation *this)
{
  v19 = *MEMORY[0x277D85DE8];
  v11 = (this + 8);
  v12 = std::__shared_mutex_base::try_lock((this + 8));
  v2 = Phase::Controller::VoiceManager::Implementation::AcquireStateLock(this, &v11, 0, 0.0);
  if (atomic_load(this))
  {
    __assert_rtn("Destroy", "CvmVoiceManager.mm", 268, "mState == State::Stopped");
  }

  v4 = v2;
  if (v2)
  {
    v5 = **(Phase::Logger::GetInstance(v2) + 400);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v14 = "CvmVoiceManager.mm";
      v15 = 1024;
      v16 = 271;
      v17 = 1024;
      v18 = v4;
      _os_log_impl(&dword_23A302000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d AcquireStateLock() failed with error %i", buf, 0x18u);
    }
  }

  v6 = *(this + 89);
  *(this + 89) = 0;
  if (v6)
  {
    (*(*v6 + 24))(v6);
  }

  Phase::Controller::SpatialModelerSystem::Destroy((this + 560));
  Phase::Controller::SubmixSystem::Destroy((this + 224));
  std::unique_ptr<Phase::Controller::DVM23::DvmAdapter>::reset[abi:ne200100](this + 87, 0);
  v7 = *(this + 86);
  if (v7)
  {
    (*(*v7 + 32))(v7);
    v8 = *(this + 86);
    *(this + 86) = 0;
    if (v8)
    {
      (*(*v8 + 8))(v8);
    }
  }

  v9 = *(this + 88);
  *(this + 88) = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  if (v12)
  {
    std::__shared_mutex_base::unlock(v11);
  }

  return 0;
}

void sub_23A38C324(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Phase::Controller::VoiceManager::Implementation::Start(Phase::Controller::DVM23::DvmAdapter **this, double a2)
{
  v34 = *MEMORY[0x277D85DE8];
  Instance = Phase::Logger::GetInstance(this);
  if (*(Instance + 408) == 1)
  {
    v5 = **(Phase::Logger::GetInstance(Instance) + 400);
    v6 = Phase::Logger::GetInstance(v5);
    v7 = os_signpost_id_generate(**(v6 + 400));
    if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v8 = v7;
      if (os_signpost_enabled(v5))
      {
        v9 = this[22];
        *buf = 134217984;
        v27 = v9;
        _os_signpost_emit_with_name_impl(&dword_23A302000, v5, OS_SIGNPOST_EVENT, v8, "Phase_CVM_Start", "sr = %.f Hz", buf, 0xCu);
      }
    }
  }

  v10 = **(Phase::Logger::GetInstance(Instance) + 400);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v27 = "CvmVoiceManager.mm";
    v28 = 1024;
    v29 = 306;
    v30 = 2048;
    v31 = this;
    _os_log_impl(&dword_23A302000, v10, OS_LOG_TYPE_DEFAULT, "%25s:%-5d impl@%p: start", buf, 0x1Cu);
  }

  v24 = (this + 1);
  v25 = std::__shared_mutex_base::try_lock((this + 1));
  v11 = Phase::Controller::VoiceManager::Implementation::AcquireStateLock(this, &v24, 1, a2);
  if (!v11)
  {
    v12 = atomic_load(this);
    if (v12 == 1)
    {
LABEL_10:
      v11 = 0;
      goto LABEL_11;
    }

    v14 = (*(*this[86] + 40))(this[86]);
    v11 = v14;
    if (!v14)
    {
      if (!atomic_load(this))
      {
        v17 = Phase::Controller::DVM23::DvmAdapter::AddMaster(this[87]);
        if (v17)
        {
          v22 = **(Phase::Logger::GetInstance(v17) + 400);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v27 = "CvmVoiceManager.mm";
            v28 = 1024;
            v29 = 323;
            _os_log_impl(&dword_23A302000, v22, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::invalid_argument): [CVMVoiceManager::Start()] Unable to add master section in the DVM", buf, 0x12u);
          }

          exception = __cxa_allocate_exception(0x10uLL);
          std::logic_error::logic_error(exception, "[CVMVoiceManager::Start()] Unable to add master section in the DVM");
          exception->__vftable = (MEMORY[0x277D828F8] + 16);
        }

        v18 = this[89];
        if (v18)
        {
          Phase::Controller::TapManager::EngineStartNotify(v18);
        }
      }

      atomic_store(1u, this);
      for (i = this[72]; i; i = *i)
      {
        v20 = (*(*(i + 3) + 80) + 5641);
        v21 = atomic_load(v20);
        if ((v21 & 1) == 0)
        {
          atomic_store(1u, v20);
        }
      }

      goto LABEL_10;
    }

    v15 = **(Phase::Logger::GetInstance(v14) + 400);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v27 = "CvmVoiceManager.mm";
      v28 = 1024;
      v29 = 342;
      v30 = 2048;
      v31 = this;
      v32 = 1024;
      v33 = v11;
      _os_log_impl(&dword_23A302000, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d impl@%p: could not start audio IO unit, error %d", buf, 0x22u);
    }
  }

LABEL_11:
  if (v25)
  {
    std::__shared_mutex_base::unlock(v24);
  }

  return v11;
}

void sub_23A38C6F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  __cxa_free_exception(v9);
  std::unique_lock<std::shared_mutex>::~unique_lock[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t Phase::Controller::VoiceManager::Implementation::Pause(Phase::Controller::VoiceManager::Implementation *this)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = **(Phase::Logger::GetInstance(this) + 400);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v11 = "CvmVoiceManager.mm";
    v12 = 1024;
    v13 = 351;
    v14 = 2048;
    v15 = this;
    _os_log_impl(&dword_23A302000, v2, OS_LOG_TYPE_DEFAULT, "%25s:%-5d impl@%p: received message Pause()", buf, 0x1Cu);
  }

  v8 = (this + 8);
  v9 = std::__shared_mutex_base::try_lock((this + 8));
  v3 = Phase::Controller::VoiceManager::Implementation::AcquireStateLock(this, &v8, 0, 0.0);
  v4 = v3;
  if (v3)
  {
    v5 = **(Phase::Logger::GetInstance(v3) + 400);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v11 = "CvmVoiceManager.mm";
      v12 = 1024;
      v13 = 358;
      v14 = 1024;
      LODWORD(v15) = v4;
      _os_log_impl(&dword_23A302000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d AcquireStateLock() failed with error %i", buf, 0x18u);
    }
  }

  v6 = atomic_load(this);
  if (v6 == 1)
  {
    (*(**(this + 86) + 48))(*(this + 86));
    atomic_store(2u, this);
  }

  if (v9)
  {
    std::__shared_mutex_base::unlock(v8);
  }

  return 0;
}

void sub_23A38C90C(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Phase::Controller::VoiceManager::Implementation::Stop(Phase::Controller::DVM23::DvmAdapter **this)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = **(Phase::Logger::GetInstance(this) + 400);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v17 = "CvmVoiceManager.mm";
    v18 = 1024;
    v19 = 376;
    v20 = 2048;
    v21 = this;
    _os_log_impl(&dword_23A302000, v2, OS_LOG_TYPE_DEFAULT, "%25s:%-5d impl@%p: received message Stop()", buf, 0x1Cu);
  }

  v14 = (this + 1);
  v15 = std::__shared_mutex_base::try_lock((this + 1));
  v3 = Phase::Controller::VoiceManager::Implementation::AcquireStateLock(this, &v14, 0, 0.0);
  v4 = v3;
  if (v3)
  {
    v5 = **(Phase::Logger::GetInstance(v3) + 400);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v17 = "CvmVoiceManager.mm";
      v18 = 1024;
      v19 = 383;
      v20 = 1024;
      LODWORD(v21) = v4;
      _os_log_impl(&dword_23A302000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d AcquireStateLock() failed with error %i", buf, 0x18u);
    }
  }

  if (atomic_load(this))
  {
    (*(*this[86] + 56))(this[86]);
    Phase::Controller::SpatialModelerSystem::Stop((this + 70));
    Phase::Controller::SubmixSystem::Stop((this + 28));
    v7 = this[87];
    v8 = *(v7 + 48);
    if (v8)
    {
      Phase::Controller::DVM23::DvmAdapter::SetPlayState(v7, v8, 0);
    }

    atomic_store(0, this);
    v9 = this[89];
    if (v9)
    {
      for (i = *(v9 + 7); i; i = *i)
      {
        (*(*i[4] + 16))(i[4]);
      }
    }

    if (atomic_load(this))
    {
      __assert_rtn("Reset", "CvmVoiceManager.mm", 250, "mState == State::Stopped");
    }

    for (j = this[72]; j; j = *j)
    {
      Phase::Controller::SpatialModelerCategory::Reset(*(j + 3));
    }

    Phase::Controller::SubmixSystem::Reset((this + 28));
    Phase::Controller::DVM23::DvmAdapter::Reset(this[87]);
  }

  if (v15)
  {
    std::__shared_mutex_base::unlock(v14);
  }

  return 0;
}

void sub_23A38CBB8(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Phase::Controller::VoiceManager::Implementation::Update(Phase::Controller::VoiceManager::Implementation *this, double a2)
{
  v89 = *MEMORY[0x277D85DE8];
  if (a2 <= 0.0)
  {
    return 1;
  }

  v60 = 0u;
  v58 = 0u;
  v59 = 0u;
  v57 = 0u;
  v3 = *(this + 129);
  if (v3)
  {
    v4 = *v3;
    if (v4)
    {
      v5 = atomic_load((v4 + 128));
      v6 = (v4 + ((v5 == 1) << 6));
      v7 = v6[1];
      v57 = *v6;
      v58 = v7;
      v8 = v6[3];
      v59 = v6[2];
      v60 = v8;
    }
  }

  v52 = a2;
  v53 = v57;
  v54 = v58;
  v55 = v59;
  v56 = v60;
  Instance = Phase::Logger::GetInstance(this);
  v10 = os_signpost_id_generate(**(Instance + 912));
  v11 = Phase::Logger::GetInstance(v10);
  if (*(v11 + 920) == 1)
  {
    v12 = **(Phase::Logger::GetInstance(v11) + 912);
    v13 = v12;
    if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_23A302000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v10, "Phase_CVM_Update", "CVM Update", buf, 2u);
    }
  }

  v51 = (this + 8);
  std::__shared_mutex_base::lock_shared((this + 8));
  v14 = **(this + 87);
  Phase::Controller::DVM23::DspVoiceManager23::ProcessMessagesFromRT(v14);
  Phase::Controller::DVM23::DspVoiceManager23::SendAndClearRtBundle(v14);
  Phase::Controller::SubmixSystem::Update(this + 224, &v52);
  v15 = *(this + 72);
  if (v15)
  {
    Phase::Controller::SpatialModelerCategory::Update(*(v15 + 24), v52);
  }

  Phase::Controller::TapManager::Update(*(this + 89));
  v16 = Phase::Controller::DVM23::DspVoiceManager23::EndChanges(**(this + 87));
  if (*(this + 1001) == 1)
  {
    v17 = v52;
    v18 = v52 + *(this + 126);
    *(this + 126) = v18;
    if (v18 < *(this + 127))
    {
LABEL_48:
      *(this + 128) = v17 + *(this + 128);
      goto LABEL_49;
    }

    v82 = 0;
    v80 = 0u;
    v81 = 0u;
    v78 = 0u;
    v79 = 0u;
    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    v73 = 0u;
    Phase::Controller::SubmixSystem::GetStats(this + 28, &v73);
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](buf);
    v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v64, "\n=== CVM Statistics @ Time ", 27);
    v20 = MEMORY[0x23EE86110](v19, *(this + 128));
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, " ===\n", 5);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v64, "Submix States (stopped/sleeping/preparing/ready/playing/paused/beginsleeping/sleeping)\n", 87);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v64, "Generator States (new/preparing/active/stopping/finished)\n", 58);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v64, "Renderer States (stopped/playing/paused/resumed)\n", 49);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v64, "* Num. Spatial Submixes (s/s/p/r/p/p/b/s): (", 44);
    for (i = 0; i != 28; i += 4)
    {
      v22 = MEMORY[0x23EE86130](&v64, *(&v73 + i));
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "/", 1);
    }

    v23 = MEMORY[0x23EE86130](&v64, HIDWORD(v74));
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, ")\n", 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v64, "* Num. Ambient Submixes (s/s/p/r/p/p/b/s): (", 44);
    for (j = 32; j != 60; j += 4)
    {
      v25 = MEMORY[0x23EE86130](&v64, *(&v73 + j));
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, "/", 1);
    }

    v26 = MEMORY[0x23EE86130](&v64, HIDWORD(v76));
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, ")\n", 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v64, "* Num. Channel Submixes (s/s/p/r/p/p/b/s): (", 44);
    for (k = 64; k != 92; k += 4)
    {
      v28 = MEMORY[0x23EE86130](&v64, *(&v73 + k));
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, "/", 1);
    }

    v29 = MEMORY[0x23EE86130](&v64, HIDWORD(v78));
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, ")\n", 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v64, "* Num. Generators (n/p/a/s/f): (", 32);
    for (m = 96; m != 112; m += 4)
    {
      v31 = MEMORY[0x23EE86130](&v64, *(&v73 + m));
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, "/", 1);
    }

    v32 = MEMORY[0x23EE86130](&v64, v80);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, ")\n", 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v64, "* Num. Convolution Renderers (s/p/p/r): (", 41);
    for (n = 116; n != 128; n += 4)
    {
      v34 = MEMORY[0x23EE86130](&v64, *(&v73 + n));
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, "/", 1);
    }

    v35 = MEMORY[0x23EE86130](&v64, v81);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v35, ")\n", 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v64, "* Num. Matrix Renderers (s/p/p/r): (", 36);
    for (ii = 132; ii != 144; ii += 4)
    {
      v37 = MEMORY[0x23EE86130](&v64, *(&v73 + ii));
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, "/", 1);
    }

    v38 = MEMORY[0x23EE86130](&v64, v82);
    v39 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, ")\n", 2);
    v40 = **(Phase::Logger::GetInstance(v39) + 400);
    if (!os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
LABEL_45:

      v46 = MEMORY[0x277D82818];
      *(this + 126) = 0;
      *buf = *v46;
      v47 = v46[9];
      *&buf[*(*buf - 24)] = v46[8];
      v64 = v47;
      v65 = MEMORY[0x277D82878] + 16;
      if (v69 < 0)
      {
        operator delete(__p);
      }

      v65 = MEMORY[0x277D82868] + 16;
      std::locale::~locale(v66);
      std::iostream::~basic_iostream();
      v16 = MEMORY[0x23EE863B0](&v72);
      goto LABEL_48;
    }

    if ((v71 & 0x10) != 0)
    {
      v43 = v70;
      if (v70 < v67)
      {
        v70 = v67;
        v43 = v67;
      }

      locale = v66[4].__locale_;
    }

    else
    {
      if ((v71 & 8) == 0)
      {
        v41 = 0;
        v62 = 0;
LABEL_41:
        *(&__dst + v41) = 0;
        p_dst = &__dst;
        if (v62 < 0)
        {
          p_dst = __dst;
        }

        *v83 = 136315650;
        v84 = "CvmVoiceManager.mm";
        v85 = 1024;
        v86 = 1459;
        v87 = 2080;
        v88 = p_dst;
        _os_log_impl(&dword_23A302000, v40, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s", v83, 0x1Cu);
        if (v62 < 0)
        {
          operator delete(__dst);
        }

        goto LABEL_45;
      }

      locale = v66[1].__locale_;
      v43 = v66[3].__locale_;
    }

    v41 = v43 - locale;
    if ((v43 - locale) >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v41 >= 0x17)
    {
      operator new();
    }

    v62 = v43 - locale;
    if (v41)
    {
      memmove(&__dst, locale, v41);
    }

    goto LABEL_41;
  }

LABEL_49:
  v48 = Phase::Logger::GetInstance(v16);
  if (*(v48 + 920) == 1)
  {
    v49 = **(Phase::Logger::GetInstance(v48) + 912);
    v50 = v49;
    if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v49))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_23A302000, v50, OS_SIGNPOST_INTERVAL_END, v10, "Phase_CVM_Update", &unk_23A5C28A2, buf, 2u);
    }
  }

  std::__shared_mutex_base::unlock_shared(v51);
  return 0;
}

void sub_23A38D428(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a33);
  std::shared_lock<std::shared_mutex>::~shared_lock[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void sub_23A38D4E8(void *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    Phase::Controller::sCatchAll("Update", v2);
  }

  JUMPOUT(0x23A38D4E0);
}

__n128 Phase::Controller::VoiceManager::Implementation::IOSetCurrentTimeStampAndFramesToRender(Phase::Controller::VoiceManager::Implementation *this, const AudioTimeStamp *a2, uint64_t a3)
{
  v3 = *(this + 129);
  if (v3)
  {
    v4 = *v3;
    if (v4)
    {
      v5 = (v4 + 128);
      v6 = atomic_load((v4 + 128));
      if (v6 == 1)
      {
        v7 = 0;
        goto LABEL_7;
      }

      if (!v6)
      {
        v4 += 64;
        v7 = 1;
LABEL_7:
        v8 = *&a2->mSampleTime;
        v9 = *&a2->mRateScalar;
        v10 = *&a2->mSMPTETime.mHours;
        *(v4 + 32) = *&a2->mSMPTETime.mSubframes;
        *(v4 + 48) = v10;
        *v4 = v8;
        *(v4 + 16) = v9;
        atomic_store(v7, v5);
      }
    }
  }

  v11 = *(**(this + 87) + 168);
  v12 = *&a2->mSampleTime;
  v13 = *&a2->mRateScalar;
  v14 = *&a2->mSMPTETime.mSubframes;
  *(v11 + 104) = *&a2->mSMPTETime.mHours;
  *(v11 + 88) = v14;
  *(v11 + 72) = v13;
  *(v11 + 56) = v12;
  v15 = *(v11 + 16);
  *(v11 + 48) = *(v15 + 96);
  *(v15 + 176) = a3;
  *(v15 + 104) = 0;
  result = *&a2->mSMPTETime.mSubframes;
  v17 = *&a2->mSMPTETime.mHours;
  v19 = *&a2->mSampleTime;
  v18 = *&a2->mRateScalar;
  *(v15 + 144) = result;
  *(v15 + 160) = v17;
  *(v15 + 112) = v19;
  *(v15 + 128) = v18;
  return result;
}

uint64_t Phase::Controller::VoiceManager::Implementation::CreateSpatialSubmix(Phase::Controller::VoiceManager::Implementation *this, const Phase::Controller::CreateSpatialSubmixParameters *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  if (*(a2 + 10))
  {
    if (*a2)
    {
      if (*(a2 + 3))
      {
        Phase::Controller::SubmixSystem::CreateSpatialSubmix((this + 224), a2);
      }

      v8 = **(Phase::Logger::GetInstance(this) + 400);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v10 = *(a2 + 3);
        v12 = 136315906;
        v13 = "CvmVoiceManager.mm";
        v14 = 1024;
        v15 = 563;
        v16 = 2048;
        v17 = this;
        v18 = 2048;
        v19 = v10;
        v5 = "%25s:%-5d impl@%p: invalid source handle 0x%llx";
        goto LABEL_11;
      }
    }

    else
    {
      v8 = **(Phase::Logger::GetInstance(this) + 400);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = *a2;
        v12 = 136315906;
        v13 = "CvmVoiceManager.mm";
        v14 = 1024;
        v15 = 556;
        v16 = 2048;
        v17 = this;
        v18 = 2048;
        v19 = v9;
        v5 = "%25s:%-5d impl@%p: invalid listener handle 0x%llx";
LABEL_11:
        v6 = v8;
        v7 = 38;
        goto LABEL_12;
      }
    }
  }

  else
  {
    v4 = **(Phase::Logger::GetInstance(this) + 400);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v12 = 136315650;
      v13 = "CvmVoiceManager.mm";
      v14 = 1024;
      v15 = 549;
      v16 = 2048;
      v17 = this;
      v5 = "%25s:%-5d impl@%p: spatial category parameters argument is empty";
      v6 = v4;
      v7 = 28;
LABEL_12:
      _os_log_impl(&dword_23A302000, v6, OS_LOG_TYPE_ERROR, v5, &v12, v7);
    }
  }

  return 1;
}

void sub_23A38D7B8(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(exception_object);
    Phase::Controller::sCatchAll("CreateSpatialSubmix", v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Phase::Controller::VoiceManager::Implementation::CreateChannelSubmix(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x277D85DE8];
  IsLayoutSupported = Phase::ChannelLayout::IsLayoutSupported((a2 + 16));
  if (IsLayoutSupported)
  {
    Phase::Controller::SubmixSystem::CreateChannelSubmix(a1 + 224);
  }

  v4 = **(Phase::Logger::GetInstance(IsLayoutSupported) + 400);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = 136315650;
    v7 = "CvmVoiceManager.mm";
    v8 = 1024;
    v9 = 575;
    v10 = 2048;
    v11 = a1;
    _os_log_impl(&dword_23A302000, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d impl@%p: invalid input channel layout for channel submix", &v6, 0x1Cu);
  }

  return 1;
}

void sub_23A38D8FC(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(exception_object);
    Phase::Controller::sCatchAll("CreateChannelSubmix", v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Phase::Controller::VoiceManager::Implementation::CreateAmbientSubmix(Phase::Logger *a1, unsigned int **a2)
{
  v20 = *MEMORY[0x277D85DE8];
  if (*a2)
  {
    IsLayoutSupported = Phase::ChannelLayout::IsLayoutSupported(a2 + 5);
    if (IsLayoutSupported)
    {
      Phase::Controller::SubmixSystem::CreateAmbientSubmix(a1 + 224);
    }

    v10 = **(Phase::Logger::GetInstance(IsLayoutSupported) + 400);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v12 = 136315650;
      v13 = "CvmVoiceManager.mm";
      v14 = 1024;
      v15 = 593;
      v16 = 2048;
      v17 = a1;
      v7 = "%25s:%-5d impl@%p: invalid input channel layout to create ambient submix";
      v8 = v10;
      v9 = 28;
      goto LABEL_8;
    }
  }

  else
  {
    v5 = **(Phase::Logger::GetInstance(a1) + 400);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = *a2;
      v12 = 136315906;
      v13 = "CvmVoiceManager.mm";
      v14 = 1024;
      v15 = 587;
      v16 = 2048;
      v17 = a1;
      v18 = 2048;
      v19 = v6;
      v7 = "%25s:%-5d impl@%p: invalid listener handle 0x%llx";
      v8 = v5;
      v9 = 38;
LABEL_8:
      _os_log_impl(&dword_23A302000, v8, OS_LOG_TYPE_ERROR, v7, &v12, v9);
    }
  }

  return 1;
}

void sub_23A38DAD4(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(exception_object);
    Phase::Controller::sCatchAll("CreateAmbientSubmix", v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Phase::Controller::VoiceManager::Implementation::DestroySubmix(void *a1, uint64_t a2, uint64_t a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = **(Phase::Logger::GetInstance(a1) + 400);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315906;
    v11 = "CvmVoiceManager.mm";
    v12 = 1024;
    v13 = 605;
    v14 = 2048;
    v15 = a1;
    v16 = 2048;
    v17 = a2;
    _os_log_impl(&dword_23A302000, v6, OS_LOG_TYPE_DEFAULT, "%25s:%-5d impl@%p: received message DestroySubmix(%llu)", &v10, 0x26u);
  }

  Phase::Controller::SubmixSystem::Destroy((a1 + 28), a2, a3);
  v7 = a1[89];
  if (v7)
  {
    for (i = *(v7 + 56); i; i = *i)
    {
      (*(*i[4] + 56))(i[4], a2, a3);
    }
  }

  return 0;
}

void sub_23A38DC64(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(exception_object);
    Phase::Controller::sCatchAll("DestroySubmix", v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Phase::Controller::VoiceManager::Implementation::SetSubmixParameter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  Submix = Phase::Controller::SubmixSystem::GetSubmix((a1 + 224), a2, a3);
  (*(*Submix + 144))(Submix, a4, a5);
  return 0;
}

uint64_t Phase::Controller::VoiceManager::Implementation::SetSubmixParameterData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  Submix = Phase::Controller::SubmixSystem::GetSubmix((a1 + 224), a2, a3);
  (*(*Submix + 152))(Submix, a4, a5, a6);
  return 0;
}

uint64_t Phase::Controller::VoiceManager::Implementation::SetSpatialCategorySendLevel(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  Submix = Phase::Controller::SubmixSystem::GetSubmix((a1 + 224), a2, a3);
  (*(*Submix + 248))(Submix, a4, a5);
  return 0;
}

uint64_t Phase::Controller::VoiceManager::Implementation::SetSpatialCategoryParameter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  Submix = Phase::Controller::SubmixSystem::GetSubmix((a1 + 224), a2, a3);
  (*(*Submix + 256))(Submix, a4, a5, a6);
  return 0;
}

uint64_t Phase::Controller::VoiceManager::Implementation::SetSpatialCategoryUpdateRate(unsigned __int8 *a1, int a2, double a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = **(Phase::Logger::GetInstance(a1) + 400);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136316162;
    *&buf[4] = "CvmVoiceManager.mm";
    *&buf[12] = 1024;
    *&buf[14] = 763;
    *&buf[18] = 2048;
    *&buf[20] = a1;
    v11 = 1024;
    v12 = a2;
    v13 = 2048;
    v14 = a3;
    _os_log_impl(&dword_23A302000, v6, OS_LOG_TYPE_DEFAULT, "%25s:%-5d impl@%p: received message SetSpatialCategoryUpdateRate(spatial category: %d, value: %f)", buf, 0x2Cu);
  }

  memset(buf, 0, 24);
  LODWORD(v8) = a2;
  *(&v8 + 4) = 0x100000001;
  HIDWORD(v8) = 1;
  v9 = a3;
  std::vector<Phase::Controller::SpatialModelerParameterAddress>::push_back[abi:ne200100](buf, &v8);
  LODWORD(v8) = a2;
  *(&v8 + 4) = 0x200000001;
  HIDWORD(v8) = 1;
  v9 = a3;
  std::vector<Phase::Controller::SpatialModelerParameterAddress>::push_back[abi:ne200100](buf, &v8);
  LODWORD(v8) = a2;
  *(&v8 + 4) = 0x300000001;
  HIDWORD(v8) = 1;
  v9 = a3;
  std::vector<Phase::Controller::SpatialModelerParameterAddress>::push_back[abi:ne200100](buf, &v8);
  LODWORD(v8) = a2;
  *(&v8 + 4) = 0x100000002;
  HIDWORD(v8) = 1;
  v9 = a3;
  std::vector<Phase::Controller::SpatialModelerParameterAddress>::push_back[abi:ne200100](buf, &v8);
  LODWORD(v8) = a2;
  *(&v8 + 4) = 0x200000002;
  HIDWORD(v8) = 1;
  v9 = a3;
  std::vector<Phase::Controller::SpatialModelerParameterAddress>::push_back[abi:ne200100](buf, &v8);
  LODWORD(v8) = a2;
  *(&v8 + 4) = 0x300000002;
  HIDWORD(v8) = 1;
  v9 = a3;
  std::vector<Phase::Controller::SpatialModelerParameterAddress>::push_back[abi:ne200100](buf, &v8);
  LODWORD(v8) = a2;
  *(&v8 + 4) = 0x100000003;
  HIDWORD(v8) = 1;
  v9 = a3;
  std::vector<Phase::Controller::SpatialModelerParameterAddress>::push_back[abi:ne200100](buf, &v8);
  LODWORD(v8) = a2;
  *(&v8 + 4) = 0x200000003;
  HIDWORD(v8) = 1;
  v9 = a3;
  std::vector<Phase::Controller::SpatialModelerParameterAddress>::push_back[abi:ne200100](buf, &v8);
  LODWORD(v8) = a2;
  *(&v8 + 4) = 0x300000003;
  HIDWORD(v8) = 1;
  v9 = a3;
  std::vector<Phase::Controller::SpatialModelerParameterAddress>::push_back[abi:ne200100](buf, &v8);
  Phase::Controller::SpatialModelerSystem::SetParameters(a1 + 560, buf);
  if (*buf)
  {
    *&buf[8] = *buf;
    operator delete(*buf);
  }

  return 0;
}

void sub_23A38E198(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (a2)
  {
    if (__p)
    {
      operator delete(__p);
    }

    __cxa_begin_catch(exception_object);
    Phase::Controller::sCatchAll("SetSpatialCategoryUpdateRate", v15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Phase::Controller::VoiceManager::Implementation::SetSpatialCategoryBandCount(unsigned __int8 *a1, int a2, unint64_t a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = **(Phase::Logger::GetInstance(a1) + 400);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136316162;
    *&buf[4] = "CvmVoiceManager.mm";
    *&buf[12] = 1024;
    *&buf[14] = 811;
    *&buf[18] = 2048;
    *&buf[20] = a1;
    v11 = 1024;
    v12 = a2;
    v13 = 2048;
    v14 = a3;
    _os_log_impl(&dword_23A302000, v6, OS_LOG_TYPE_DEFAULT, "%25s:%-5d impl@%p: received message SetSpatialCategoryBandCount(spatial category: %d, band count: %zu)", buf, 0x2Cu);
  }

  memset(buf, 0, 24);
  LODWORD(v8) = a2;
  *(&v8 + 4) = 0x100000001;
  HIDWORD(v8) = 2;
  v9 = a3;
  std::vector<Phase::Controller::SpatialModelerParameterAddress>::push_back[abi:ne200100](buf, &v8);
  LODWORD(v8) = a2;
  *(&v8 + 4) = 0x200000001;
  HIDWORD(v8) = 2;
  v9 = a3;
  std::vector<Phase::Controller::SpatialModelerParameterAddress>::push_back[abi:ne200100](buf, &v8);
  LODWORD(v8) = a2;
  *(&v8 + 4) = 0x300000001;
  HIDWORD(v8) = 2;
  v9 = a3;
  std::vector<Phase::Controller::SpatialModelerParameterAddress>::push_back[abi:ne200100](buf, &v8);
  LODWORD(v8) = a2;
  *(&v8 + 4) = 0x100000002;
  HIDWORD(v8) = 2;
  v9 = a3;
  std::vector<Phase::Controller::SpatialModelerParameterAddress>::push_back[abi:ne200100](buf, &v8);
  LODWORD(v8) = a2;
  *(&v8 + 4) = 0x200000002;
  HIDWORD(v8) = 2;
  v9 = a3;
  std::vector<Phase::Controller::SpatialModelerParameterAddress>::push_back[abi:ne200100](buf, &v8);
  LODWORD(v8) = a2;
  *(&v8 + 4) = 0x300000002;
  HIDWORD(v8) = 2;
  v9 = a3;
  std::vector<Phase::Controller::SpatialModelerParameterAddress>::push_back[abi:ne200100](buf, &v8);
  LODWORD(v8) = a2;
  *(&v8 + 4) = 0x100000003;
  HIDWORD(v8) = 2;
  v9 = a3;
  std::vector<Phase::Controller::SpatialModelerParameterAddress>::push_back[abi:ne200100](buf, &v8);
  LODWORD(v8) = a2;
  *(&v8 + 4) = 0x200000003;
  HIDWORD(v8) = 2;
  v9 = a3;
  std::vector<Phase::Controller::SpatialModelerParameterAddress>::push_back[abi:ne200100](buf, &v8);
  LODWORD(v8) = a2;
  *(&v8 + 4) = 0x300000003;
  HIDWORD(v8) = 2;
  v9 = a3;
  std::vector<Phase::Controller::SpatialModelerParameterAddress>::push_back[abi:ne200100](buf, &v8);
  Phase::Controller::SpatialModelerSystem::SetParameters(a1 + 560, buf);
  if (*buf)
  {
    *&buf[8] = *buf;
    operator delete(*buf);
  }

  return 0;
}

void sub_23A38E48C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (a2)
  {
    if (__p)
    {
      operator delete(__p);
    }

    __cxa_begin_catch(exception_object);
    Phase::Controller::sCatchAll("SetSpatialCategoryBandCount", v15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Phase::Controller::VoiceManager::Implementation::SetSpatialCategoryMaxClusterCount(unsigned __int8 *a1, int a2, unint64_t a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = **(Phase::Logger::GetInstance(a1) + 400);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136316162;
    *&buf[4] = "CvmVoiceManager.mm";
    *&buf[12] = 1024;
    *&buf[14] = 858;
    *&buf[18] = 2048;
    *&buf[20] = a1;
    v11 = 1024;
    v12 = a2;
    v13 = 2048;
    v14 = a3;
    _os_log_impl(&dword_23A302000, v6, OS_LOG_TYPE_DEFAULT, "%25s:%-5d impl@%p: received message SetSpatialCategoryMaxClusterCount(spatial category: %d, max cluster count: %zu)", buf, 0x2Cu);
  }

  memset(buf, 0, 24);
  LODWORD(v8) = a2;
  *(&v8 + 4) = 0x100000001;
  HIDWORD(v8) = 5;
  v9 = a3;
  std::vector<Phase::Controller::SpatialModelerParameterAddress>::push_back[abi:ne200100](buf, &v8);
  LODWORD(v8) = a2;
  *(&v8 + 4) = 0x200000001;
  HIDWORD(v8) = 5;
  v9 = a3;
  std::vector<Phase::Controller::SpatialModelerParameterAddress>::push_back[abi:ne200100](buf, &v8);
  LODWORD(v8) = a2;
  *(&v8 + 4) = 0x300000001;
  HIDWORD(v8) = 5;
  v9 = a3;
  std::vector<Phase::Controller::SpatialModelerParameterAddress>::push_back[abi:ne200100](buf, &v8);
  LODWORD(v8) = a2;
  *(&v8 + 4) = 0x100000002;
  HIDWORD(v8) = 5;
  v9 = a3;
  std::vector<Phase::Controller::SpatialModelerParameterAddress>::push_back[abi:ne200100](buf, &v8);
  LODWORD(v8) = a2;
  *(&v8 + 4) = 0x200000002;
  HIDWORD(v8) = 5;
  v9 = a3;
  std::vector<Phase::Controller::SpatialModelerParameterAddress>::push_back[abi:ne200100](buf, &v8);
  LODWORD(v8) = a2;
  *(&v8 + 4) = 0x300000002;
  HIDWORD(v8) = 5;
  v9 = a3;
  std::vector<Phase::Controller::SpatialModelerParameterAddress>::push_back[abi:ne200100](buf, &v8);
  LODWORD(v8) = a2;
  *(&v8 + 4) = 0x100000003;
  HIDWORD(v8) = 5;
  v9 = a3;
  std::vector<Phase::Controller::SpatialModelerParameterAddress>::push_back[abi:ne200100](buf, &v8);
  LODWORD(v8) = a2;
  *(&v8 + 4) = 0x200000003;
  HIDWORD(v8) = 5;
  v9 = a3;
  std::vector<Phase::Controller::SpatialModelerParameterAddress>::push_back[abi:ne200100](buf, &v8);
  LODWORD(v8) = a2;
  *(&v8 + 4) = 0x300000003;
  HIDWORD(v8) = 5;
  v9 = a3;
  std::vector<Phase::Controller::SpatialModelerParameterAddress>::push_back[abi:ne200100](buf, &v8);
  Phase::Controller::SpatialModelerSystem::SetParameters(a1 + 560, buf);
  if (*buf)
  {
    *&buf[8] = *buf;
    operator delete(*buf);
  }

  return 0;
}

void sub_23A38E780(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (a2)
  {
    if (__p)
    {
      operator delete(__p);
    }

    __cxa_begin_catch(exception_object);
    Phase::Controller::sCatchAll("SetSpatialCategoryMaxClusterCount", v15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Phase::Controller::VoiceManager::Implementation::PrepareGenerator(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v27 = *MEMORY[0x277D85DE8];
  v12 = **(Phase::Logger::GetInstance(a1) + 400);
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
  if (v13)
  {
    v17 = 136316162;
    v18 = "CvmVoiceManager.mm";
    v19 = 1024;
    v20 = 904;
    v21 = 2048;
    v22 = a1;
    v23 = 2048;
    v24 = a2;
    v25 = 2048;
    v26 = a4;
    _os_log_impl(&dword_23A302000, v12, OS_LOG_TYPE_DEFAULT, "%25s:%-5d impl@%p: received message PrepareGenerator(generator: %llu, submix: %llu, ...)", &v17, 0x30u);
  }

  v14 = atomic_load(a1);
  if (v14 != 2)
  {
    Phase::Controller::SubmixSystem::PrepareGenerator((a1 + 224), a2, a3, a4, a5, a6);
  }

  v15 = **(Phase::Logger::GetInstance(v13) + 400);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    v17 = 136315906;
    v18 = "CvmVoiceManager.mm";
    v19 = 1024;
    v20 = 912;
    v21 = 2048;
    v22 = a1;
    v23 = 2048;
    v24 = a2;
    _os_log_impl(&dword_23A302000, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d impl@%p: system is paused, so we're ignoring the request to prepare generatorId %llu", &v17, 0x26u);
  }

  return 5;
}

void sub_23A38E9E8(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(exception_object);
    Phase::Controller::sCatchAll("PrepareGenerator", v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Phase::Controller::VoiceManager::Implementation::PlayGenerator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = **(Phase::Logger::GetInstance(a1) + 400);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315906;
    v9 = "CvmVoiceManager.mm";
    v10 = 1024;
    v11 = 932;
    v12 = 2048;
    v13 = a1;
    v14 = 2048;
    v15 = a2;
    _os_log_impl(&dword_23A302000, v6, OS_LOG_TYPE_DEFAULT, "%25s:%-5d impl@%p: received message PlayGenerator(generator: %llu)", &v8, 0x26u);
  }

  Phase::Controller::SubmixSystem::PlayGenerator((a1 + 224), a2, a3);
  return 0;
}

void sub_23A38EB40(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(exception_object);
    Phase::Controller::sCatchAll("PlayGenerator", v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Phase::Controller::VoiceManager::Implementation::PauseGenerator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = **(Phase::Logger::GetInstance(a1) + 400);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315906;
    v9 = "CvmVoiceManager.mm";
    v10 = 1024;
    v11 = 940;
    v12 = 2048;
    v13 = a1;
    v14 = 2048;
    v15 = a2;
    _os_log_impl(&dword_23A302000, v6, OS_LOG_TYPE_DEFAULT, "%25s:%-5d impl@%p: received message PauseGenerator(generator: %llu)", &v8, 0x26u);
  }

  Phase::Controller::SubmixSystem::PauseGenerator((a1 + 224), a2, a3);
  return 0;
}

void sub_23A38EC90(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(exception_object);
    Phase::Controller::sCatchAll("PauseGenerator", v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Phase::Controller::VoiceManager::Implementation::ResumeGenerator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = **(Phase::Logger::GetInstance(a1) + 400);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315906;
    v9 = "CvmVoiceManager.mm";
    v10 = 1024;
    v11 = 948;
    v12 = 2048;
    v13 = a1;
    v14 = 2048;
    v15 = a2;
    _os_log_impl(&dword_23A302000, v6, OS_LOG_TYPE_DEFAULT, "%25s:%-5d impl@%p: received messageResumeGenerator(generator: %llu)", &v8, 0x26u);
  }

  Phase::Controller::SubmixSystem::ResumeGenerator((a1 + 224), a2, a3);
  return 0;
}

void sub_23A38EDF0(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(exception_object);
    Phase::Controller::sCatchAll("ResumeGenerator", v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Phase::Controller::VoiceManager::HasExternalStream(Phase::Controller::VoiceManager *this, UniqueObjectId a2)
{
  v2 = *this;
  v6 = a2;
  v3 = std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>>>::find<Phase::UniqueObjectId>((v2 + 408), &v6);
  if (v3)
  {
    v4 = *(v3 + 2);
  }

  else
  {
    v4 = 0;
  }

  v6 = v4;
  if (std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>>>::find<Phase::UniqueObjectId>((v2 + 368), &v6))
  {
    return 0;
  }

  else
  {
    return 3;
  }
}

uint64_t Phase::Controller::VoiceManager::Implementation::PauseExternalStream(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v4 = **(Phase::Logger::GetInstance(a1) + 400);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:&v7];
    *buf = 136315906;
    v10 = "CvmVoiceManager.mm";
    v11 = 1024;
    v12 = 962;
    v13 = 2048;
    v14 = a1;
    v15 = 2112;
    v16 = v5;
    _os_log_impl(&dword_23A302000, v4, OS_LOG_TYPE_DEFAULT, "%25s:%-5d impl@%p: received message PauseExternalStream(external stream: %@)", buf, 0x26u);
  }

  Phase::Controller::SubmixSystem::PauseExternalStream((a1 + 224), v7, v8);
  return 0;
}

void sub_23A38EFC4(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(exception_object);
    Phase::Controller::sCatchAll("PauseExternalStream", v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Phase::Controller::VoiceManager::Implementation::ResumeExternalStream(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v4 = **(Phase::Logger::GetInstance(a1) + 400);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:&v7];
    *buf = 136315906;
    v10 = "CvmVoiceManager.mm";
    v11 = 1024;
    v12 = 970;
    v13 = 2048;
    v14 = a1;
    v15 = 2112;
    v16 = v5;
    _os_log_impl(&dword_23A302000, v4, OS_LOG_TYPE_DEFAULT, "%25s:%-5d impl@%p: received message ResumeExternalStream(external stream: %@)", buf, 0x26u);
  }

  Phase::Controller::SubmixSystem::ResumeExternalStream((a1 + 224), v7, v8);
  return 0;
}

void sub_23A38F13C(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(exception_object);
    Phase::Controller::sCatchAll("ResumeExternalStream", v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Phase::Controller::VoiceManager::Implementation::StopGenerator(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v20 = *MEMORY[0x277D85DE8];
  v8 = **(Phase::Logger::GetInstance(a1) + 400);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136316162;
    v11 = "CvmVoiceManager.mm";
    v12 = 1024;
    v13 = 979;
    v14 = 2048;
    v15 = a1;
    v16 = 2048;
    v17 = a2;
    v18 = 2048;
    v19 = a4;
    _os_log_impl(&dword_23A302000, v8, OS_LOG_TYPE_DEFAULT, "%25s:%-5d impl@%p: received message StopGenerator(generator: %llu, fade out duration: %f)", &v10, 0x30u);
  }

  Phase::Controller::SubmixSystem::StopGenerator((a1 + 224), a2, a3);
  return 0;
}

void sub_23A38F2AC(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(exception_object);
    Phase::Controller::sCatchAll("StopGenerator", v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Phase::Controller::VoiceManager::Implementation::SleepGenerator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = **(Phase::Logger::GetInstance(a1) + 400);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315906;
    v9 = "CvmVoiceManager.mm";
    v10 = 1024;
    v11 = 987;
    v12 = 2048;
    v13 = a1;
    v14 = 2048;
    v15 = a2;
    _os_log_impl(&dword_23A302000, v6, OS_LOG_TYPE_DEFAULT, "%25s:%-5d impl@%p: received message SleepGenerator(generator: %llu)", &v8, 0x26u);
  }

  Phase::Controller::SubmixSystem::SleepGenerator((a1 + 224), a2, a3);
  return 0;
}

void sub_23A38F3FC(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(exception_object);
    Phase::Controller::sCatchAll("SleepGenerator", v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Phase::Controller::VoiceManager::Implementation::WakeGenerator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = **(Phase::Logger::GetInstance(a1) + 400);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315906;
    v9 = "CvmVoiceManager.mm";
    v10 = 1024;
    v11 = 995;
    v12 = 2048;
    v13 = a1;
    v14 = 2048;
    v15 = a2;
    _os_log_impl(&dword_23A302000, v6, OS_LOG_TYPE_DEFAULT, "%25s:%-5d impl@%p: received message WakeGenerator(generator: %llu)", &v8, 0x26u);
  }

  Phase::Controller::SubmixSystem::WakeGenerator((a1 + 224), a2, a3);
  return 0;
}

void sub_23A38F54C(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(exception_object);
    Phase::Controller::sCatchAll("WakeGenerator", v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Phase::Controller::VoiceManager::Implementation::AudioIOConfigChanged(Phase::Controller::VoiceManager::Implementation *this)
{
  v32 = *MEMORY[0x277D85DE8];
  v2 = Phase::Controller::TaskManager::GetService<Phase::Controller::DeviceManager>(*(*(this + 85) + 48), *(*(this + 85) + 56));
  if (v2)
  {
    v3 = v2;
    v20 = (this + 8);
    v4 = std::__shared_mutex_base::try_lock_shared((this + 8));
    v21 = v4;
    if (v4)
    {
      if (atomic_load(this))
      {
        v6 = v4;
        v20 = 0;
        v21 = 0;
        v7 = *(*(v3 + 8) + 8);
        v23 = 0;
        v22 = 1;
        v8 = Phase::LockFreeQueueMPSC::GetWriteBuffer(v7, 40, &v23, &v22);
        if (!v8)
        {
          Instance = Phase::Logger::GetInstance(0);
          Phase::Logger::DumpTailspinWithThrottleAsync(Instance, "CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.");
          v17 = **(v7 + 48);
          v18 = v17;
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v25 = "CommandQueue.hpp";
            v26 = 1024;
            v27 = 100;
            _os_log_impl(&dword_23A302000, v17, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error) [true is true]: CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.", buf, 0x12u);
          }

          exception = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(exception, "CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.");
        }

        if (v22)
        {
          v9 = **(v7 + 48);
          v10 = v9;
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315906;
            v25 = "CommandQueue.hpp";
            v26 = 1024;
            v27 = 89;
            v28 = 2048;
            v29 = v23;
            v30 = 2048;
            v31 = 40;
            _os_log_impl(&dword_23A302000, v9, OS_LOG_TYPE_DEBUG, "%25s:%-5d Warning: CommandQueue grew buffer to %zu bytes to accommodate extra %zu bytes - this usually means the system is under load or the command queue is too small.", buf, 0x26u);
          }
        }

        *v8 = &unk_284D31B00;
        *(v8 + 8) = this;
        *(v8 + 16) = this + 8;
        *(v8 + 24) = v6;
        *(v8 + 32) = v3;
        Phase::LockFreeQueueSPSC::CommitBytes(v7, 40);
        atomic_store(0, (v7 + 40));
        v11 = 1;
        goto LABEL_18;
      }

      v13 = **(Phase::Logger::GetInstance(v4) + 400);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v25 = "CvmVoiceManager.mm";
        v26 = 1024;
        v27 = 1075;
        v14 = "%25s:%-5d Ignoring route change notification, received while the voice manager is stopped.";
        goto LABEL_16;
      }
    }

    else
    {
      v13 = **(Phase::Logger::GetInstance(v4) + 400);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v25 = "CvmVoiceManager.mm";
        v26 = 1024;
        v27 = 1098;
        v14 = "%25s:%-5d Ignoring route change notification, received while updating engine state.";
LABEL_16:
        _os_log_impl(&dword_23A302000, v13, OS_LOG_TYPE_DEFAULT, v14, buf, 0x12u);
      }
    }

    v11 = 0;
LABEL_18:
    if (v21)
    {
      std::__shared_mutex_base::unlock_shared(v20);
    }

    return v11;
  }

  v12 = **(Phase::Logger::GetInstance(0) + 400);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v25 = "CvmVoiceManager.mm";
    v26 = 1024;
    v27 = 1105;
    _os_log_impl(&dword_23A302000, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d DeviceManager service not available to propagate route change notification.", buf, 0x12u);
  }

  return 0;
}

void sub_23A38F9D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_mutex_base *a10, char a11, uint64_t a12, char a13)
{
  if (a2)
  {
    __cxa_free_exception(v14);
    __cxa_begin_catch(exception_object);
    Phase::Commandable<128,Phase::LockFreeQueueMPSC>::LogOverflow(v13);
    __cxa_end_catch();
    if (a11)
    {
      std::__shared_mutex_base::unlock_shared(a10);
    }

    JUMPOUT(0x23A38F788);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Phase::Controller::VoiceManager::IOExecuteRealtimeActions(Phase::Controller::VoiceManager *this, const AudioTimeStamp *a2)
{
  v2 = *this;
  v3 = atomic_load((*this + 840));
  if ((v3 & 1) != 0 && caulk::pooled_semaphore_mutex::try_lock((v2 + 844)))
  {
    v4 = *(v2 + 800);
    v5 = *(v2 + 760);
    *(v2 + 800) = v5;
    v6 = *(v2 + 768);
    *(v2 + 760) = v4;
    *(v2 + 808) = v6;
    v7 = *(v2 + 816);
    v8 = *(v2 + 776);
    *(v2 + 816) = v8;
    *(v2 + 776) = v7;
    v9 = *(v2 + 824);
    v10 = *(v2 + 784);
    *(v2 + 824) = v10;
    *(v2 + 784) = v9;
    LODWORD(v4) = *(v2 + 832);
    *(v2 + 832) = *(v2 + 792);
    *(v2 + 792) = v4;
    if (v10)
    {
      v11 = *(v8 + 8);
      if ((v6 & (v6 - 1)) != 0)
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

      *(v5 + 8 * v11) = v2 + 816;
    }

    if (v9)
    {
      v12 = *(*(v2 + 776) + 8);
      v13 = *(v2 + 768);
      if ((v13 & (v13 - 1)) != 0)
      {
        if (v12 >= v13)
        {
          v12 %= v13;
        }
      }

      else
      {
        v12 &= v13 - 1;
      }

      *(*(v2 + 760) + 8 * v12) = v2 + 776;
    }

    atomic_store(0, (v2 + 840));
    caulk::pooled_semaphore_mutex::_unlock((v2 + 844));
  }

  for (i = *(v2 + 816); i; i = *i)
  {
    (*(i[3] + 16))();
  }

  return 0;
}

uint64_t Phase::Controller::VoiceManager::IOExecuteRealtimeInputActions(uint64_t *a1)
{
  v1 = *a1;
  v2 = atomic_load((*a1 + 976));
  if ((v2 & 1) != 0 && caulk::pooled_semaphore_mutex::try_lock((v1 + 980)))
  {
    v3 = *(v1 + 936);
    v4 = *(v1 + 896);
    *(v1 + 936) = v4;
    v5 = *(v1 + 904);
    *(v1 + 896) = v3;
    *(v1 + 944) = v5;
    v6 = *(v1 + 952);
    v7 = *(v1 + 912);
    *(v1 + 952) = v7;
    *(v1 + 912) = v6;
    v8 = *(v1 + 960);
    v9 = *(v1 + 920);
    *(v1 + 960) = v9;
    *(v1 + 920) = v8;
    LODWORD(v3) = *(v1 + 968);
    *(v1 + 968) = *(v1 + 928);
    *(v1 + 928) = v3;
    if (v9)
    {
      v10 = *(v7 + 8);
      if ((v5 & (v5 - 1)) != 0)
      {
        if (v10 >= v5)
        {
          v10 %= v5;
        }
      }

      else
      {
        v10 &= v5 - 1;
      }

      *(v4 + 8 * v10) = v1 + 952;
    }

    if (v8)
    {
      v11 = *(*(v1 + 912) + 8);
      v12 = *(v1 + 904);
      if ((v12 & (v12 - 1)) != 0)
      {
        if (v11 >= v12)
        {
          v11 %= v12;
        }
      }

      else
      {
        v11 &= v12 - 1;
      }

      *(*(v1 + 896) + 8 * v11) = v1 + 912;
    }

    atomic_store(0, (v1 + 976));
    caulk::pooled_semaphore_mutex::_unlock((v1 + 980));
  }

  for (i = *(v1 + 952); i; i = *i)
  {
    (*(i[3] + 16))();
  }

  return 0;
}

uint64_t Phase::Controller::TaskManager::GetService<Phase::Controller::DeviceManager>(Phase::Logger *a1, uint64_t a2)
{
  v19 = *MEMORY[0x277D85DE8];
  if ((a2 - a1) <= 0x320)
  {
    v5 = **(Phase::Logger::GetInstance(a1) + 464);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v12 = "TaskManager.hpp";
      v13 = 1024;
      v14 = 112;
      _os_log_impl(&dword_23A302000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION: pId < mServiceRegistry.size() is false.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::domain_error::domain_error[abi:ne200100](exception, "PRECONDITION: pId < mServiceRegistry.size() is false.");
  }

  v2 = *(a1 + 100);
  if (!v2)
  {
    v7 = **(Phase::Logger::GetInstance(a1) + 464);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      Phase::GetBacktraceFrame<1ul>(&__p);
      v8 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
      *buf = 136315906;
      v12 = "TaskManager.hpp";
      v13 = 1024;
      v14 = 121;
      v15 = 1024;
      v16 = 25;
      v17 = 2080;
      v18 = v8;
      _os_log_impl(&dword_23A302000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::domain_error) [not lService.has_value() is true]: No service registered for Id %i, in call \\n%s", buf, 0x22u);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    v9 = __cxa_allocate_exception(0x10uLL);
    std::domain_error::domain_error[abi:ne200100](v9, "No service registered for Id %i, in call \n%s");
  }

  v3 = v2(3, a1 + 800, 0, 0, &std::__any_imp::__unique_typeinfo<Phase::Controller::DeviceManager *>::__id);
  if (!v3)
  {
    std::__throw_bad_any_cast[abi:ne200100]();
  }

  return *v3;
}

void sub_23A39012C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void Phase::Controller::AudioRouteDescription::~AudioRouteDescription(Phase::Controller::AudioRouteDescription *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    *(this + 3) = v2;
    operator delete(v2);
  }

  std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,unsigned int,objc_object * {__strong}>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](this);
}

void **std::unique_ptr<Phase::Controller::DVM23::DvmAdapter>::reset[abi:ne200100](void ***a1, void **a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    Phase::Controller::DVM23::DvmAdapter::~DvmAdapter(result);

    JUMPOUT(0x23EE864A0);
  }

  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<Phase::Controller::SpatialModelerParameterAddress>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *std::vector<std::any>::resize(void *result, unint64_t a2)
{
  v2 = result;
  v3 = result[1];
  v4 = (v3 - *result) >> 5;
  if (a2 <= v4)
  {
    if (a2 < v4)
    {
      v6 = *result + 32 * a2;
      while (v3 != v6)
      {
        v3 -= 4;
        result = std::any::reset[abi:ne200100](v3);
      }

      v2[1] = v6;
    }
  }

  else
  {
    v5 = a2 - v4;

    return std::vector<std::any>::__append(result, v5);
  }

  return result;
}

void std::vector<Phase::ICommandable *>::resize(void *a1, unint64_t a2, uint64_t *a3)
{
  v3 = (a1[1] - *a1) >> 3;
  if (a2 <= v3)
  {
    if (a2 < v3)
    {
      a1[1] = *a1 + 8 * a2;
    }
  }

  else
  {
    std::vector<Phase::ICommandable *>::__append(a1, a2 - v3, a3);
  }
}

uint64_t std::vector<std::any>::__append(uint64_t result, unint64_t a2)
{
  v3 = result;
  v4 = *(result + 8);
  v5 = *(result + 16);
  if (a2 <= (v5 - v4) >> 5)
  {
    if (a2)
    {
      v11 = 32 * a2;
      v12 = &v4[4 * a2];
      do
      {
        *v4 = 0;
        v4[1] = 0;
        v4 += 4;
        v11 -= 32;
      }

      while (v11);
      v4 = v12;
    }

    *(result + 8) = v4;
  }

  else
  {
    v6 = v4 - *result;
    v7 = a2 + (v6 >> 5);
    if (v7 >> 59)
    {
      std::vector<Phase::Controller::DVM23::SubmixController *>::__throw_length_error[abi:ne200100]();
    }

    v8 = v6 >> 5;
    v9 = v5 - *result;
    if (v9 >> 4 > v7)
    {
      v7 = v9 >> 4;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFE0)
    {
      v10 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v7;
    }

    v23 = result;
    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::any>>(result, v10);
    }

    v13 = 32 * v8;
    v20 = 0;
    v21 = 32 * v8;
    *(&v22 + 1) = 0;
    v14 = 32 * a2;
    v15 = (32 * v8);
    do
    {
      *v15 = 0;
      v15[1] = 0;
      v15 += 4;
      v14 -= 32;
    }

    while (v14);
    *&v22 = v13 + 32 * a2;
    v16 = *(result + 8);
    v17 = (v13 + *result - v16);
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::any>,std::any*>(result, *result, v16, v17);
    v18 = *v3;
    *v3 = v17;
    v19 = *(v3 + 16);
    *(v3 + 8) = v22;
    *&v22 = v18;
    *(&v22 + 1) = v19;
    v20 = v18;
    v21 = v18;
    return std::__split_buffer<std::any>::~__split_buffer(&v20);
  }

  return result;
}

void sub_23A39040C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::any>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::any>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::any>,std::any*>(uint64_t a1, void (**a2)(uint64_t), void (**a3)(uint64_t), void *a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = a2;
    do
    {
      v8 = std::any::any[abi:ne200100](a4, v7);
      v7 += 4;
      a4 = v8 + 4;
    }

    while (v7 != a3);
    do
    {
      std::any::reset[abi:ne200100](v6);
      v6 += 4;
    }

    while (v6 != a3);
  }
}

void *std::any::any[abi:ne200100](void *a1, void (**a2)(uint64_t))
{
  *a1 = 0;
  a1[1] = 0;
  if (*a2)
  {
    (*a2)(2);
  }

  return a1;
}

uint64_t (**std::any::reset[abi:ne200100](uint64_t (**result)(void, void, void, void, void)))(void, void, void, void, void)
{
  if (*result)
  {
    return (*result)(0, result, 0, 0, 0);
  }

  return result;
}

uint64_t std::__split_buffer<std::any>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 32;
    std::any::reset[abi:ne200100]((i - 32));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *std::__any_imp::_SmallHandler<Phase::Controller::TapManager *>::__handle[abi:ne200100](int a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      result = 0;
      v9 = a2[1];
      *a3 = std::__any_imp::_SmallHandler<Phase::Controller::TapManager *>::__handle[abi:ne200100];
      a3[1] = v9;
      return result;
    }

    result = 0;
LABEL_14:
    *a2 = 0;
    return result;
  }

  if (a1 == 2)
  {
    result = 0;
    v8 = a2[1];
    *a3 = std::__any_imp::_SmallHandler<Phase::Controller::TapManager *>::__handle[abi:ne200100];
    a3[1] = v8;
    goto LABEL_14;
  }

  v5 = a5 == &std::__any_imp::__unique_typeinfo<Phase::Controller::TapManager *>::__id && a4 == 0;
  v6 = a2 + 1;
  if (!v5)
  {
    v6 = 0;
  }

  if (a1 == 3)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

void std::vector<Phase::ICommandable *>::__append(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (a2 <= (v5 - v6) >> 3)
  {
    if (a2)
    {
      v12 = 0;
      v13 = v6 + 8 * a2;
      v14 = *a3;
      v15 = (a2 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
      v16 = vdupq_n_s64(v15);
      v17 = (v6 + 8);
      do
      {
        v18 = vmovn_s64(vcgeq_u64(v16, vorrq_s8(vdupq_n_s64(v12), xmmword_23A554B70)));
        if (v18.i8[0])
        {
          *(v17 - 1) = v14;
        }

        if (v18.i8[4])
        {
          *v17 = v14;
        }

        v12 += 2;
        v17 += 2;
      }

      while (v15 - ((a2 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v12);
    }

    else
    {
      v13 = *(a1 + 8);
    }

    *(a1 + 8) = v13;
  }

  else
  {
    v7 = v6 - *a1;
    v8 = a2 + (v7 >> 3);
    if (v8 >> 61)
    {
      std::vector<Phase::Controller::DVM23::SubmixController *>::__throw_length_error[abi:ne200100]();
    }

    v9 = v7 >> 3;
    v10 = v5 - *a1;
    if (v10 >> 2 > v8)
    {
      v8 = v10 >> 2;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v8;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<Phase::Controller::DVM23::SubmixController *>>(a1, v11);
    }

    v19 = 0;
    v20 = 8 * v9;
    v21 = 8 * v9 + 8 * a2;
    v22 = *a3;
    v23 = (a2 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v24 = v23 - ((a2 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2;
    v25 = vdupq_n_s64(v23);
    v26 = (v20 + 8);
    do
    {
      v27 = vmovn_s64(vcgeq_u64(v25, vorrq_s8(vdupq_n_s64(v19), xmmword_23A554B70)));
      if (v27.i8[0])
      {
        *(v26 - 1) = v22;
      }

      if (v27.i8[4])
      {
        *v26 = v22;
      }

      v19 += 2;
      v26 += 2;
    }

    while (v24 != v19);
    v28 = *(a1 + 8) - *a1;
    v29 = v20 - v28;
    memcpy((v20 - v28), *a1, v28);
    v30 = *a1;
    *a1 = v29;
    *(a1 + 8) = v21;
    *(a1 + 16) = 0;
    if (v30)
    {

      operator delete(v30);
    }
  }
}

void Phase::Controller::SpatialModelerSystem::InitializeParameters::~InitializeParameters(Phase::Controller::SpatialModelerSystem::InitializeParameters *this)
{
  v2 = *(this + 10);
  if (v2)
  {
    *(this + 11) = v2;
    operator delete(v2);
  }

  std::__hash_table<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::__unordered_map_hasher<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::hash<Phase::SpatialCategory>,std::equal_to<Phase::SpatialCategory>,true>,std::__unordered_map_equal<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::equal_to<Phase::SpatialCategory>,std::hash<Phase::SpatialCategory>,true>,std::allocator<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>>>::~__hash_table(this + 40);
}

uint64_t Phase::Controller::VoiceManager::Implementation::AcquireStateLock(uint64_t a1, uint64_t a2, int a3, double a4)
{
  v24 = *MEMORY[0x277D85DE8];
  v8.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  v9 = Phase::Controller::TaskManager::GetService<Phase::Controller::DeviceManager>(*(*(a1 + 680) + 48), *(*(a1 + 680) + 56));
  if (*(a2 + 8))
  {
    return 0;
  }

  while (1)
  {
    if (a4 > 0.0)
    {
      v10.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
      if (a4 * 1000.0 < ((v10.__d_.__rep_ - v8.__d_.__rep_) / 1000000))
      {
        break;
      }
    }

    if (v9)
    {
      if (a3)
      {
        Phase::Commandable<128,Phase::LockFreeQueueMPSC>::ExecuteCommands(v9);
      }

      else if (*(v9 + 16) >= 1)
      {
        v11 = 0;
        do
        {
          Phase::CommandQueue<Phase::LockFreeQueueMPSC>::Reset(*(*(v9 + 8) + 8 * v11++));
        }

        while (v11 < *(v9 + 16));
      }
    }

    v12 = *(a1 + 688);
    *(v12 + 328) = 0;
    atomic_store(0, (v12 + 144));
    if (!*a2)
    {
      std::__throw_system_error(1, "unique_lock::try_lock: references null mutex");
LABEL_18:
      std::__throw_system_error(11, "unique_lock::try_lock: already locked");
    }

    if (*(a2 + 8) == 1)
    {
      goto LABEL_18;
    }

    v13 = std::__shared_mutex_base::try_lock(*a2);
    *(a2 + 8) = v13;
    if (v13)
    {
      return 0;
    }
  }

  v15 = **(Phase::Logger::GetInstance(v10.__d_.__rep_) + 400);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    v16 = 136315906;
    v17 = "CvmVoiceManager.mm";
    v18 = 1024;
    v19 = 1533;
    v20 = 2048;
    v21 = a1;
    v22 = 2048;
    v23 = (std::chrono::steady_clock::now().__d_.__rep_ - v8.__d_.__rep_) / 1000000;
    _os_log_impl(&dword_23A302000, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d impl@%p: acquiring voicemanager state lock timed out after %lli ms", &v16, 0x26u);
  }

  return 4294900542;
}

uint64_t std::unique_lock<std::shared_mutex>::~unique_lock[abi:ne200100](uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    std::__shared_mutex_base::unlock(*a1);
  }

  return a1;
}

void std::vector<Phase::Controller::SpatialModelerParameterAddress>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v9 = v8 + 1;
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<Phase::Controller::DVM23::SubmixController *>::__throw_length_error[abi:ne200100]();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<Phase::Controller::SpatialModelerParameterAddress>>(a1, v11);
    }

    v12 = 24 * v8;
    v13 = *a2;
    *(v12 + 16) = *(a2 + 2);
    *v12 = v13;
    v7 = 24 * v8 + 24;
    v14 = *(a1 + 8) - *a1;
    v15 = v12 - v14;
    memcpy((v12 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v7;
    *(a1 + 16) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    v6 = *a2;
    *(v5 + 16) = *(a2 + 2);
    *v5 = v6;
    v7 = v5 + 24;
  }

  *(a1 + 8) = v7;
}

void *Phase::LambdaFunction<Phase::Controller::VoiceManager::Implementation::AudioIOConfigChanged(void)::{lambda(void)#1},void>::~LambdaFunction(void *a1)
{
  *a1 = &unk_284D31B00;
  std::shared_lock<std::shared_mutex>::~shared_lock[abi:ne200100]((a1 + 2));
  return a1;
}

void Phase::LambdaFunction<Phase::Controller::VoiceManager::Implementation::AudioIOConfigChanged(void)::{lambda(void)#1},void>::~LambdaFunction(void *a1)
{
  *a1 = &unk_284D31B00;
  std::shared_lock<std::shared_mutex>::~shared_lock[abi:ne200100]((a1 + 2));

  JUMPOUT(0x23EE864A0);
}

uint64_t Phase::LambdaFunction<Phase::Controller::VoiceManager::Implementation::AudioIOConfigChanged(void)::{lambda(void)#1},void>::operator()(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 8);
  Phase::Controller::SystemAudioIO::AudioIOBase::BeginRouteChange(*(v2 + 688));
  v3 = *(a1 + 32);
  (*(**(v2 + 688) + 96))(buf);
  Phase::Controller::DeviceManager::OnAudioOutputRouteChanged(v3, buf);
  if (*&v21[2])
  {
    *&v21[10] = *&v21[2];
    operator delete(*&v21[2]);
  }

  std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,unsigned int,objc_object * {__strong}>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](buf);
  v4 = *(a1 + 32);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  v7 = **(v4 + 8);
  v17 = 0;
  v16 = 1;
  v8 = Phase::LockFreeQueueMPSC::GetWriteBuffer(v7, 32, &v17, &v16);
  if (!v8)
  {
    Instance = Phase::Logger::GetInstance(0);
    Phase::Logger::DumpTailspinWithThrottleAsync(Instance, "CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.");
    v13 = **(v7 + 48);
    v14 = v13;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v19 = "CommandQueue.hpp";
      v20 = 1024;
      *v21 = 100;
      _os_log_impl(&dword_23A302000, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error) [true is true]: CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.");
  }

  if (v16)
  {
    v9 = **(v7 + 48);
    v10 = v9;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315906;
      v19 = "CommandQueue.hpp";
      v20 = 1024;
      *v21 = 89;
      *&v21[4] = 2048;
      *&v21[6] = v17;
      *&v21[14] = 2048;
      *&v21[16] = 32;
      _os_log_impl(&dword_23A302000, v9, OS_LOG_TYPE_DEBUG, "%25s:%-5d Warning: CommandQueue grew buffer to %zu bytes to accommodate extra %zu bytes - this usually means the system is under load or the command queue is too small.", buf, 0x26u);
    }
  }

  *v8 = &unk_284D31B28;
  *(v8 + 8) = v2;
  *(v8 + 16) = v5;
  *(v8 + 24) = v6;
  result = Phase::LockFreeQueueSPSC::CommitBytes(v7, 32);
  atomic_store(0, (v7 + 40));
  return result;
}

void sub_23A390EF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_mutex_base *a11, char a12, uint64_t a13, uint64_t a14, char a15)
{
  if (a2)
  {
    __cxa_free_exception(v16);
    __cxa_begin_catch(exception_object);
    Phase::Commandable<128,Phase::LockFreeQueueMPSC>::LogOverflow(v15);
    __cxa_end_catch();
    if (a12)
    {
      std::__shared_mutex_base::unlock_shared(a11);
    }

    JUMPOUT(0x23A390E04);
  }

  _Unwind_Resume(exception_object);
}

void sub_23A390F50(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x23A390F18);
}

void *Phase::LambdaFunction<Phase::Controller::VoiceManager::Implementation::AudioIOConfigChanged(void)::{lambda(void)#1}::operator()(void)::{lambda(void)#1},void>::~LambdaFunction(void *a1)
{
  *a1 = &unk_284D31B28;
  std::shared_lock<std::shared_mutex>::~shared_lock[abi:ne200100]((a1 + 2));
  return a1;
}

void Phase::LambdaFunction<Phase::Controller::VoiceManager::Implementation::AudioIOConfigChanged(void)::{lambda(void)#1}::operator()(void)::{lambda(void)#1},void>::~LambdaFunction(void *a1)
{
  *a1 = &unk_284D31B28;
  std::shared_lock<std::shared_mutex>::~shared_lock[abi:ne200100]((a1 + 2));

  JUMPOUT(0x23EE864A0);
}

void Phase::Controller::VoiceManager::Implementation::Implementation(Phase::Controller::VoiceManager::Implementation *this)
{
  *this = 0;
  v2 = std::__shared_mutex_base::__shared_mutex_base((this + 8));
  *(this + 26) = 0;
  *(this + 11) = 0u;
  *(this + 12) = 0u;
  *(this + 54) = 1065353216;
  Phase::Logger::GetInstance(v2);
  Phase::Commandable<128,Phase::LockFreeQueueMPSC>::Commandable(this + 28);
}

void sub_23A39120C(_Unwind_Exception *a1)
{
  Phase::ThreadsafeContainer<std::unordered_map<unsigned long long,void({block_pointer} {__strong})(AudioTimeStamp const*,unsigned int,AudioBufferList *,Phase::Controller::SpeechDetectorInfo const*),std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<std::pair<unsigned long long const,void({block_pointer} {__strong})(AudioTimeStamp const*,unsigned int,AudioBufferList *,Phase::Controller::SpeechDetectorInfo const*)>>>>::~ThreadsafeContainer(v3);
  Phase::ThreadsafeContainer<std::unordered_map<unsigned long long,void({block_pointer} {__strong})(AudioTimeStamp const*,unsigned int,AudioBufferList *,Phase::Controller::SpeechDetectorInfo const*),std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<std::pair<unsigned long long const,void({block_pointer} {__strong})(AudioTimeStamp const*,unsigned int,AudioBufferList *,Phase::Controller::SpeechDetectorInfo const*)>>>>::~ThreadsafeContainer(v1 + 720);
  v5 = *(v1 + 712);
  *(v1 + 712) = 0;
  if (v5)
  {
    (*(*v5 + 24))(v5);
  }

  v6 = *(v1 + 704);
  *(v1 + 704) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  std::unique_ptr<Phase::Controller::DVM23::DvmAdapter>::reset[abi:ne200100]((v1 + 696), 0);
  v7 = *(v1 + 688);
  *(v1 + 688) = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  Phase::Controller::SpatialModelerSystem::~SpatialModelerSystem((v1 + 560));
  Phase::Controller::SubmixSystem::~SubmixSystem(v2);
  std::__hash_table<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::__unordered_map_hasher<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::hash<Phase::SpatialCategory>,std::equal_to<Phase::SpatialCategory>,true>,std::__unordered_map_equal<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::equal_to<Phase::SpatialCategory>,std::hash<Phase::SpatialCategory>,true>,std::allocator<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>>>::~__hash_table(v1 + 184);
  std::shared_mutex::~shared_mutex[abi:ne200100](v1 + 8);
  _Unwind_Resume(a1);
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned long long,void({block_pointer} {__strong})(AudioTimeStamp const*,unsigned int)>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,void({block_pointer} {__strong})(AudioTimeStamp const*,unsigned int)>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,void({block_pointer} {__strong})(AudioTimeStamp const*,unsigned int)>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,void({block_pointer} {__strong})(AudioTimeStamp const*,unsigned int)>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void sub_23A3913F8()
{

  __cxa_end_catch();
}

void sub_23A391494()
{

  __cxa_end_catch();
}

void sub_23A3914FC()
{

  __cxa_end_catch();
}

uint64_t Phase::ThreadsafeContainer<std::unordered_map<unsigned long long,void({block_pointer} {__strong})(AudioTimeStamp const*,unsigned int,AudioBufferList *,Phase::Controller::SpeechDetectorInfo const*),std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<std::pair<unsigned long long const,void({block_pointer} {__strong})(AudioTimeStamp const*,unsigned int,AudioBufferList *,Phase::Controller::SpeechDetectorInfo const*)>>>>::~ThreadsafeContainer(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<unsigned long long,void({block_pointer} {__strong})(AudioTimeStamp const*,unsigned int)>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,void({block_pointer} {__strong})(AudioTimeStamp const*,unsigned int)>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,void({block_pointer} {__strong})(AudioTimeStamp const*,unsigned int)>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,void({block_pointer} {__strong})(AudioTimeStamp const*,unsigned int)>>>::~__hash_table(a1 + 80);
  std::__hash_table<std::__hash_value_type<unsigned long long,void({block_pointer} {__strong})(AudioTimeStamp const*,unsigned int)>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,void({block_pointer} {__strong})(AudioTimeStamp const*,unsigned int)>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,void({block_pointer} {__strong})(AudioTimeStamp const*,unsigned int)>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,void({block_pointer} {__strong})(AudioTimeStamp const*,unsigned int)>>>::~__hash_table(a1 + 40);

  return std::__hash_table<std::__hash_value_type<unsigned long long,void({block_pointer} {__strong})(AudioTimeStamp const*,unsigned int)>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,void({block_pointer} {__strong})(AudioTimeStamp const*,unsigned int)>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,void({block_pointer} {__strong})(AudioTimeStamp const*,unsigned int)>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,void({block_pointer} {__strong})(AudioTimeStamp const*,unsigned int)>>>::~__hash_table(a1);
}

void std::shared_mutex::~shared_mutex[abi:ne200100](uint64_t a1)
{
  std::condition_variable::~condition_variable((a1 + 112));
  std::condition_variable::~condition_variable((a1 + 64));

  std::mutex::~mutex(a1);
}

void Phase::Controller::VoiceManager::Implementation::~Implementation(Phase::Controller::VoiceManager::Implementation *this)
{
  Phase::Controller::VoiceManager::Implementation::Destroy(this);
  std::__hash_table<std::__hash_value_type<unsigned long long,void({block_pointer} {__strong})(AudioTimeStamp const*,unsigned int)>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,void({block_pointer} {__strong})(AudioTimeStamp const*,unsigned int)>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,void({block_pointer} {__strong})(AudioTimeStamp const*,unsigned int)>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,void({block_pointer} {__strong})(AudioTimeStamp const*,unsigned int)>>>::~__hash_table(this + 936);
  std::__hash_table<std::__hash_value_type<unsigned long long,void({block_pointer} {__strong})(AudioTimeStamp const*,unsigned int)>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,void({block_pointer} {__strong})(AudioTimeStamp const*,unsigned int)>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,void({block_pointer} {__strong})(AudioTimeStamp const*,unsigned int)>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,void({block_pointer} {__strong})(AudioTimeStamp const*,unsigned int)>>>::~__hash_table(this + 896);
  std::__hash_table<std::__hash_value_type<unsigned long long,void({block_pointer} {__strong})(AudioTimeStamp const*,unsigned int)>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,void({block_pointer} {__strong})(AudioTimeStamp const*,unsigned int)>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,void({block_pointer} {__strong})(AudioTimeStamp const*,unsigned int)>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,void({block_pointer} {__strong})(AudioTimeStamp const*,unsigned int)>>>::~__hash_table(this + 856);
  std::__hash_table<std::__hash_value_type<unsigned long long,void({block_pointer} {__strong})(AudioTimeStamp const*,unsigned int)>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,void({block_pointer} {__strong})(AudioTimeStamp const*,unsigned int)>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,void({block_pointer} {__strong})(AudioTimeStamp const*,unsigned int)>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,void({block_pointer} {__strong})(AudioTimeStamp const*,unsigned int)>>>::~__hash_table(this + 800);
  std::__hash_table<std::__hash_value_type<unsigned long long,void({block_pointer} {__strong})(AudioTimeStamp const*,unsigned int)>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,void({block_pointer} {__strong})(AudioTimeStamp const*,unsigned int)>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,void({block_pointer} {__strong})(AudioTimeStamp const*,unsigned int)>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,void({block_pointer} {__strong})(AudioTimeStamp const*,unsigned int)>>>::~__hash_table(this + 760);
  std::__hash_table<std::__hash_value_type<unsigned long long,void({block_pointer} {__strong})(AudioTimeStamp const*,unsigned int)>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,void({block_pointer} {__strong})(AudioTimeStamp const*,unsigned int)>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,void({block_pointer} {__strong})(AudioTimeStamp const*,unsigned int)>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,void({block_pointer} {__strong})(AudioTimeStamp const*,unsigned int)>>>::~__hash_table(this + 720);
  v2 = *(this + 89);
  *(this + 89) = 0;
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  v3 = *(this + 88);
  *(this + 88) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  std::unique_ptr<Phase::Controller::DVM23::DvmAdapter>::reset[abi:ne200100](this + 87, 0);
  v4 = *(this + 86);
  *(this + 86) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  Phase::Controller::SpatialModelerSystem::~SpatialModelerSystem((this + 560));
  Phase::Controller::SubmixSystem::~SubmixSystem((this + 224));
  std::__hash_table<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::__unordered_map_hasher<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::hash<Phase::SpatialCategory>,std::equal_to<Phase::SpatialCategory>,true>,std::__unordered_map_equal<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::equal_to<Phase::SpatialCategory>,std::hash<Phase::SpatialCategory>,true>,std::allocator<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>>>::~__hash_table(this + 184);
  std::condition_variable::~condition_variable((this + 120));
  std::condition_variable::~condition_variable((this + 72));
  std::mutex::~mutex((this + 8));
}

void sub_23A391FFC(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x23A392070);
}

void sub_23A39202C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  __cxa_free_exception(v24);
  Phase::Controller::Generator::~Generator(v23);
  _Unwind_Resume(a1);
}

void Phase::Controller::WaterProcedure::~WaterProcedure(Phase::Controller::WaterProcedure *this)
{
  Phase::Controller::Generator::~Generator(this);

  JUMPOUT(0x23EE864A0);
}

double Phase::Controller::WaterProcedure::GetAnchorTimeForWakeFromSleepInSeconds(Phase::Controller::WaterProcedure *this, PHASECullOption a2, double a3)
{
  if (a2 != PHASECullOptionSleepWakeAtRandomOffset)
  {
    return 0.0;
  }

  v3 = *(this + 78);
  v4 = *(this + 79);
  v5 = *(this + 80);
  *(this + 79) = v5;
  v6 = (v5 >> 26) ^ ((v4 ^ (v4 << 23)) >> 17) ^ v5 ^ v4 ^ (v4 << 23);
  *(this + 80) = v6;
  return v3 * vcvtd_n_f64_u64(v6 + v5, 0x40uLL) + 0.0;
}

uint64_t Phase::Controller::DeviceInfo::GetAcousticID(Phase::Controller::DeviceInfo *this)
{
  v16 = *MEMORY[0x277D85DE8];
  v1 = MGIsQuestionValid();
  if (v1)
  {
    v2 = MGGetSInt32Answer();
    if (v2 != 0x80000000)
    {
      v10 = v2 & 0xFFFFFF00;
      v8 = v2;
      v9 = 0x100000000;
      return v9 | v10 | v8;
    }

    v3 = **(Phase::Logger::GetInstance(v2) + 1168);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v12 = 136315394;
      v13 = "DeviceInfo.cpp";
      v14 = 1024;
      v15 = 91;
      v4 = "%25s:%-5d An Acoustic ID was not found on this device.";
      v5 = v3;
      v6 = OS_LOG_TYPE_ERROR;
LABEL_7:
      _os_log_impl(&dword_23A302000, v5, v6, v4, &v12, 0x12u);
    }
  }

  else
  {
    v7 = **(Phase::Logger::GetInstance(v1) + 1168);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 136315394;
      v13 = "DeviceInfo.cpp";
      v14 = 1024;
      v15 = 97;
      v4 = "%25s:%-5d This device does not recognize the request for an Acoustic ID.";
      v5 = v7;
      v6 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_7;
    }
  }

  v8 = 0;
  v9 = 0;
  v10 = 0;
  return v9 | v10 | v8;
}

uint64_t Phase::Controller::DeviceInfo::IsInternalBuild(Phase::Controller::DeviceInfo *this)
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = MGIsQuestionValid();
  if (v1)
  {
    v2 = MGGetBoolAnswer();
    v3 = 1;
  }

  else
  {
    v4 = **(Phase::Logger::GetInstance(v1) + 1168);
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
    v2 = 0;
    v3 = 0;
    if (v5)
    {
      v7 = 136315394;
      v8 = "DeviceInfo.cpp";
      v9 = 1024;
      v10 = 175;
      _os_log_impl(&dword_23A302000, v4, OS_LOG_TYPE_DEFAULT, "%25s:%-5d This device does not recognize the request for whether or not an internal build is installed.", &v7, 0x12u);
      v2 = 0;
      v3 = 0;
    }
  }

  return v2 | (v3 << 8);
}

void Phase::Controller::DeviceManager::Initialize(Phase::Controller::DeviceManager *this)
{
  v12 = *MEMORY[0x277D85DE8];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = ___ZN5Phase10Controller13DeviceManager10InitializeEv_block_invoke;
  aBlock[3] = &__block_descriptor_40_e8_v12__0i8l;
  aBlock[4] = this;
  v1 = _Block_copy(aBlock);
  *cf = CFStringCreateWithBytes(0, "PHASE-DeviceManager-device-orientation", 38, 0x8000100u, 0);
  if (!*cf)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  v2 = CARegisterDeviceOrientation();
  v3 = *cf;
  if (*cf)
  {
    CFRelease(*cf);
  }

  if (v2)
  {
    v4 = **(Phase::Logger::GetInstance(v3) + 608);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *cf = 136315650;
      *&cf[4] = "DeviceManager_iOS.mm";
      v8 = 1024;
      v9 = 30;
      v10 = 1024;
      v11 = v2;
      _os_log_impl(&dword_23A302000, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d Device Manager: failed to register device orientation callback. Error code %i", cf, 0x18u);
    }
  }
}

void sub_23A392508(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(va);

  _Unwind_Resume(a1);
}

uint64_t ___ZN5Phase10Controller13DeviceManager10InitializeEv_block_invoke(uint64_t a1, int a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (*(v2 + 16) <= 0)
  {
    v9 = **(v2 + 24);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v18 = "Commandable.hpp";
      v19 = 1024;
      v20 = 132;
      _os_log_impl(&dword_23A302000, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION: pQueueId >= 0 && pQueueId < mQueueCount is false.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::domain_error::domain_error[abi:ne200100](exception, "PRECONDITION: pQueueId >= 0 && pQueueId < mQueueCount is false.");
  }

  v4 = **(v2 + 8);
  v16 = 0;
  v15 = 1;
  v5 = Phase::LockFreeQueueMPSC::GetWriteBuffer(v4, 40, &v16, &v15);
  if (!v5)
  {
    Instance = Phase::Logger::GetInstance(0);
    Phase::Logger::DumpTailspinWithThrottleAsync(Instance, "CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.");
    v12 = **(v4 + 48);
    v13 = v12;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v18 = "CommandQueue.hpp";
      v19 = 1024;
      v20 = 100;
      _os_log_impl(&dword_23A302000, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error) [true is true]: CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.", buf, 0x12u);
    }

    v14 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v14, "CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.");
  }

  if (v15)
  {
    v6 = **(v4 + 48);
    v7 = v6;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315906;
      v18 = "CommandQueue.hpp";
      v19 = 1024;
      v20 = 89;
      v21 = 2048;
      v22 = v16;
      v23 = 2048;
      v24 = 40;
      _os_log_impl(&dword_23A302000, v6, OS_LOG_TYPE_DEBUG, "%25s:%-5d Warning: CommandQueue grew buffer to %zu bytes to accommodate extra %zu bytes - this usually means the system is under load or the command queue is too small.", buf, 0x26u);
    }
  }

  *v5 = &unk_284D31C48;
  *(v5 + 8) = v2;
  *(v5 + 16) = Phase::Controller::DeviceManager::OnDeviceOrientationChanged;
  *(v5 + 24) = 0;
  *(v5 + 32) = a2;
  result = Phase::LockFreeQueueSPSC::CommitBytes(v4, 40);
  atomic_store(0, (v4 + 40));
  return result;
}

void sub_23A392840(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __cxa_free_exception(v3);
    __cxa_begin_catch(exception_object);
    Phase::Commandable<128,Phase::LockFreeQueueMPSC>::LogOverflow(v2);
    __cxa_end_catch();
    JUMPOUT(0x23A3926B0);
  }

  _Unwind_Resume(exception_object);
}

void Phase::Controller::DeviceManager::OnDeviceOrientationChanged(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = Phase::Controller::TaskManager::GetService<Phase::Controller::SpatializerManager>(*(a1 + 40), 9);
  Phase::Device::GetOrientationString(__p);
  v5 = **(Phase::Logger::GetInstance(v4) + 608);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = __p;
    if (v8 < 0)
    {
      v6 = __p[0];
    }

    *buf = 136315650;
    v10 = "DeviceManager_iOS.mm";
    v11 = 1024;
    v12 = 49;
    v13 = 2080;
    v14 = v6;
    _os_log_impl(&dword_23A302000, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Device orientation changed: %s", buf, 0x1Cu);
  }

  Phase::Controller::SpatializerManager::SetDeviceOrientation(v3, a2);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_23A3929CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void Phase::Device::GetOrientationString(UInt8 *a1@<X8>)
{
  v2 = CFStringCreateWithCAOrientation();
  cf = v2;
  if (!v2)
  {
    goto LABEL_5;
  }

  v3 = CFGetTypeID(v2);
  if (v3 != CFStringGetTypeID())
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  if (!cf)
  {
LABEL_5:
    v4 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v4, "Could not construct");
  }

  applesauce::CF::convert_to<std::string,0>(cf, a1);
  CFRelease(cf);
}

void sub_23A392AD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10)
{
  __cxa_free_exception(v10);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(&a10);
  _Unwind_Resume(a1);
}

void Phase::Controller::DeviceManager::OnAudioOutputRouteChanged(Phase::Logger **this, id *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = Phase::Controller::TaskManager::GetService<Phase::Controller::SpatializerManager>(this[5], 9);
  if (*(a2 + 2) == 2)
  {
    v4 = v3;
    v5 = *a2;
    if ([v5 isMemberOfClass:objc_opt_class()])
    {
      v6 = v5;
      v7 = [v6 portType];
      if ([v7 isEqualToString:*MEMORY[0x277CB81D0]])
      {
      }

      else
      {
        v21 = [v6 portType];
        v22 = [v21 isEqualToString:*MEMORY[0x277CB8158]];

        if ((v22 & 1) == 0)
        {
          v25 = [v6 portType];
          v26 = [v25 isEqualToString:*MEMORY[0x277CB81A0]];

          if (v26)
          {
            v19 = 1;
          }

          else
          {
            v19 = 2;
          }

          goto LABEL_29;
        }
      }

      v19 = 0;
LABEL_29:

LABEL_30:
      Phase::Controller::SpatializerManager::SetSpatializerOutput(v4, v19, (a2 + 2));
LABEL_31:
      v9 = v5;
      goto LABEL_32;
    }

    v10 = [v5 conformsToProtocol:&unk_284D5A930];
    if (!v10)
    {
      v20 = **(Phase::Logger::GetInstance(v10) + 544);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v28 = 136315394;
        v29 = "DeviceManager_iOS.mm";
        v30 = 1024;
        v31 = 132;
        _os_log_impl(&dword_23A302000, v20, OS_LOG_TYPE_ERROR, "%25s:%-5d Invalid route change notification: description doesn't conform to any of the expected protocols.", &v28, 0x12u);
      }

      goto LABEL_31;
    }

    v9 = v5;
    v11 = [v9 streamDescription];
    if (v11)
    {
      v12 = [v9 streamDescription];
      v13 = [v12 objectForKeyedSubscript:@"port type"];

      v14 = [v9 streamDescription];
      v15 = [v14 objectForKeyedSubscript:@"port subtype"];

      if (v13 && (v16 = [v13 count], v16 == 1) && v15 && (v16 = objc_msgSend(v15, "count"), v16 == 1))
      {
        v17 = [v13 firstObject];
        v18 = [v17 unsignedIntValue];

        if ((v18 - 1885892674) <= 0x35 && ((1 << (v18 - 66)) & 0x20000100000001) != 0)
        {
          v19 = 0;
        }

        else
        {
          if (v18 == 1886613611)
          {
            v24 = 1;
            v19 = 1;
            goto LABEL_24;
          }

          v19 = 2;
        }

        v24 = 1;
      }

      else
      {
        v23 = **(Phase::Logger::GetInstance(v16) + 544);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          v28 = 136315394;
          v29 = "DeviceManager_iOS.mm";
          v30 = 1024;
          v31 = 97;
          _os_log_impl(&dword_23A302000, v23, OS_LOG_TYPE_ERROR, "%25s:%-5d Invalid route change notification.", &v28, 0x12u);
        }

        v24 = 0;
        v19 = 0;
      }

LABEL_24:

      if ((v24 & 1) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_30;
    }

    v27 = **(Phase::Logger::GetInstance(0) + 544);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = 136315394;
      v29 = "DeviceManager_iOS.mm";
      v30 = 1024;
      v31 = 125;
      _os_log_impl(&dword_23A302000, v27, OS_LOG_TYPE_ERROR, "%25s:%-5d Invalid route change notification: missing stream description.", &v28, 0x12u);
    }
  }

  else
  {
    v8 = **(Phase::Logger::GetInstance(v3) + 544);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v28 = 136315394;
      v29 = "DeviceManager_iOS.mm";
      v30 = 1024;
      v31 = 138;
      _os_log_impl(&dword_23A302000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d Invalid route change notification: description is not of the expected type.", &v28, 0x12u);
    }

    v9 = 0;
  }

LABEL_32:
}

void Phase::Controller::DeviceManager::~DeviceManager(Phase::Controller::DeviceManager *this)
{
  v9 = *MEMORY[0x277D85DE8];
  *this = &unk_284D31C18;
  *cf = CFStringCreateWithBytes(0, "PHASE-DeviceManager-device-orientation", 38, 0x8000100u, 0);
  if (!*cf)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  v2 = CAUnregisterDeviceOrientation();
  CFRelease(*cf);
  if (v2)
  {
    v4 = **(Phase::Logger::GetInstance(v3) + 608);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *cf = 136315394;
      *&cf[4] = "DeviceManager_iOS.mm";
      v7 = 1024;
      v8 = 39;
      _os_log_impl(&dword_23A302000, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d Device Manager: failed to unregister device orientation callback.", cf, 0x12u);
    }
  }

  Phase::Commandable<128,Phase::LockFreeQueueMPSC>::~Commandable(this);
}

{
  Phase::Controller::DeviceManager::~DeviceManager(this);

  JUMPOUT(0x23EE864A0);
}

void sub_23A3931FC(_Unwind_Exception *exception_object, int a2, ...)
{
  va_start(va, a2);
  if (a2)
  {
    applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(va);
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

const void **applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t Phase::LambdaFunction<BOOL Phase::Commandable<128,Phase::LockFreeQueueMPSC>::CallAsync<Phase::Controller::DeviceManager,void,CAOrientation>(int,void (Phase::Controller::DeviceManager::*)(CAOrientation),CAOrientation)::{lambda(void)#1},void>::operator()(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  v3 = (*(a1 + 8) + (v2 >> 1));
  if (v2)
  {
    v1 = *(*v3 + v1);
  }

  return v1(v3, *(a1 + 32));
}

void Phase::DFTUtils::SetFftSize(Phase::DFTUtils *this, int a2)
{
  v4 = *(this + 1);
  if (*this != a2 || !v4 || !*(this + 2))
  {
    v5 = *(this + 2);
    *(this + 1) = vDSP_DFT_zrop_CreateSetup(*(this + 1), a2, vDSP_DFT_FORWARD);
    *(this + 2) = vDSP_DFT_zrop_CreateSetup(v5, a2, vDSP_DFT_INVERSE);
    vDSP_DFT_DestroySetup(v4);
    vDSP_DFT_DestroySetup(v5);
    *this = a2;
    *(this + 1) = a2 / 2;
  }
}

void Phase::DFTUtils::~DFTUtils(vDSP_DFT_Setup *this)
{
  v2 = this + 1;
  vDSP_DFT_DestroySetup(this[1]);
  vDSP_DFT_DestroySetup(this[2]);
  *v2 = 0;
  v2[1] = 0;
}

uint64_t Phase::DFTUtils::ProcessDFT(const vDSP_DFT_SetupStruct **this, DSPComplex *__C, DSPSplitComplex *a3, float a4)
{
  v7 = a4;
  vDSP_ctoz(__C, 2, a3, 1, *(this + 1));
  vDSP_DFT_Execute(this[1], a3->realp, a3->imagp, a3->realp, a3->imagp);
  MEMORY[0x23EE87290](a3->realp, 1, &v7, a3->realp, 1, (*this + (*this >> 31)) >> 1);
  return MEMORY[0x23EE87290](a3->imagp, 1, &v7, a3->imagp, 1, (*this + (*this >> 31)) >> 1);
}

uint64_t Phase::DFTUtils::ProcessIDFT(const vDSP_DFT_SetupStruct **this, const DSPSplitComplex *a2, DSPComplex *a3)
{
  vDSP_DFT_Execute(this[2], a2->realp, a2->imagp, a2->realp, a2->imagp);
  vDSP_ztoc(a2, 1, a3, 2, *(this + 1));
  v7 = 1.0 / *this;
  return MEMORY[0x23EE87290](a3, 1, &v7, a3, 1);
}

float Phase::DFTUtils::MultiplyAddComplexPackedSpectrums(Phase::DFTUtils *this, const DSPSplitComplex *__A, const DSPSplitComplex *a3, const DSPSplitComplex *__C, DSPSplitComplex *__D, int a6)
{
  v7 = *__A->realp;
  v8 = *__A->imagp;
  v9 = *a3->realp;
  v10 = *a3->imagp;
  v11 = *__C->realp;
  v12 = *__C->imagp;
  vDSP_zvma(__A, 1, a3, 1, __C, 1, __D, 1, a6);
  imagp = __D->imagp;
  *__D->realp = v11 + (v7 * v9);
  result = v12 + (v8 * v10);
  *imagp = result;
  return result;
}

float Phase::DFTUtils::MultiplyComplexPackedSpectrums(Phase::DFTUtils *this, const DSPSplitComplex *__A, const DSPSplitComplex *a3, DSPSplitComplex *__C, int a5)
{
  v6 = *__A->realp;
  v7 = *__A->imagp;
  v8 = *a3->realp;
  v9 = *a3->imagp;
  vDSP_zvmul(__A, 1, a3, 1, __C, 1, a5, 1);
  imagp = __C->imagp;
  *__C->realp = v6 * v8;
  result = v7 * v9;
  *imagp = v7 * v9;
  return result;
}

void **Phase::SpatialModeler::DirectionalHistogramData::operator=(void **this, uint64_t a2)
{
  v4 = *this;
  v5 = *a2;
  if (*this != v5)
  {
    Phase::SpatialModeler::DirectionalHistogramData::allocateHistogramUniform(this, v5);
    v4 = *this;
  }

  memcpy(this + 2, (a2 + 16), 0x124uLL);
  memcpy(this[1], *(a2 + 8), 4 * (73 * v4));
  return this;
}

uint64_t Phase::SpatialModeler::DirectionalHistogramData::computePDF(Phase::SpatialModeler::DirectionalHistogramData *this, int a2)
{
  v2 = 0;
  *&v22[5] = *MEMORY[0x277D85DE8];
  v3 = *(this + 1) + 4 * (73 * a2);
  do
  {
    if (*(v3 + 4 * v2) < 0.0)
    {
      v11 = **(Phase::Logger::GetInstance(this) + 1264);
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        return 1;
      }

      v12 = *(v3 + 4 * v2);
      v17 = 136315906;
      v18 = "DirectionalHistogramData.cpp";
      v19 = 1024;
      v20 = 217;
      v21 = 1024;
      v22[0] = v2;
      LOWORD(v22[1]) = 2048;
      *(&v22[1] + 2) = v12;
      v8 = "%25s:%-5d computePDF fails with pTS[%u] < 0.f: %e";
      v9 = v11;
      v10 = 34;
LABEL_11:
      _os_log_impl(&dword_23A302000, v9, OS_LOG_TYPE_ERROR, v8, &v17, v10);
      return 1;
    }

    ++v2;
  }

  while (v2 != 72);
  v4 = 0;
  v5 = xmmword_23A555020;
  do
  {
    v5 = vaddq_f32(v5, *(v3 + v4));
    v4 += 16;
  }

  while (v4 != 288);
  v6 = (vaddv_f32(*v5.f32) + v5.f32[2]) + v5.f32[3];
  if (COERCE_INT(fabs(1.0 / v6)) >= 2139095040)
  {
    v7 = **(Phase::Logger::GetInstance(this) + 1264);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v17 = 136315650;
      v18 = "DirectionalHistogramData.cpp";
      v19 = 1024;
      v20 = 231;
      v21 = 2048;
      *v22 = v6;
      v8 = "%25s:%-5d computePDF inverseSum inf, sum %e";
      v9 = v7;
      v10 = 28;
      goto LABEL_11;
    }

    return 1;
  }

  v14 = 0;
  *(this + 4) = 0;
  v15 = 0.0;
  do
  {
    v15 = v15 + (*(v3 + v14) * (1.0 / v6));
    *(this + v14 + 20) = v15;
    v14 += 4;
  }

  while (v14 != 288);
  if (*(this + 76) <= 0.9)
  {
    v16 = **(Phase::Logger::GetInstance(this) + 1264);
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      return 1;
    }

    v17 = 136315394;
    v18 = "DirectionalHistogramData.cpp";
    v19 = 1024;
    v20 = 247;
    v8 = "%25s:%-5d m_pdfSum[kNumGroups] <= 0.9f";
    v9 = v16;
    v10 = 18;
    goto LABEL_11;
  }

  return 0;
}

uint64_t Phase::SpatialModeler::DirectionalHistogramData::getRandomSample(Phase::SpatialModeler::DirectionalHistogramData *this, float a2, float a3, float *a4, float *a5)
{
  if (a3 == 1.0)
  {
    a3 = 0.0;
  }

  if (a2 == 1.0)
  {
    a2 = 0.0;
  }

  v5 = this + 16;
  v6 = *(this + 4);
  if (a2 < v6)
  {
    return 1;
  }

  v7 = *(this + 76);
  if (a2 >= v7)
  {
    return 1;
  }

  v8 = (((a2 - v6) / (v7 - v6)) * 72.0);
  v9 = *&v5[4 * v8];
  if (a2 < v9 || (v10 = *&v5[4 * v8 + 4], a2 >= v10))
  {
    v8 = 0;
    v11 = 72;
    do
    {
      if (a2 < *&v5[4 * ((v8 + v11) >> 1)])
      {
        v11 = (v8 + v11) >> 1;
      }

      else
      {
        v8 = (v8 + v11) >> 1;
      }
    }

    while (v11 - v8 > 1);
    v9 = *&v5[4 * v8];
    v10 = *&v5[4 * v8 + 4];
  }

  *a4 = Phase::SpatialModeler::kRangeEle[v8 / 0xCuLL] + (((a2 - v9) / (v10 - v9)) * (Phase::SpatialModeler::kRangeEle[v8 / 0xC + 1] - Phase::SpatialModeler::kRangeEle[v8 / 0xCuLL]));
  *a5 = Phase::SpatialModeler::kRangeAzi[v8 % 0xC] + (a3 * (Phase::SpatialModeler::kRangeAzi[v8 % 0xC + 1] - Phase::SpatialModeler::kRangeAzi[v8 % 0xC]));
  return 0;
}

uint64_t Phase::SpatialModeler::DirectionalHistogramData::allocateHistogramUniform(Phase::SpatialModeler::DirectionalHistogramData *this, int a2)
{
  v4 = *this;
  v5 = *(this + 1);
  if (v4 == a2)
  {
    if (v5)
    {
      v6 = 4 * (73 * a2);
LABEL_6:
      bzero(v5, v6);
      goto LABEL_7;
    }
  }

  else
  {
    free(v5);
    *(this + 1) = 0;
  }

  v6 = 4 * (73 * a2);
  v5 = malloc_type_malloc(v6, 0x100004052888210uLL);
  *(this + 1) = v5;
  *this = a2;
  if (v5)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(this + 76) = 0;
  *(this + 17) = 0u;
  *(this + 18) = 0u;
  *(this + 15) = 0u;
  *(this + 16) = 0u;
  *(this + 13) = 0u;
  *(this + 14) = 0u;
  *(this + 11) = 0u;
  *(this + 12) = 0u;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  return 0;
}

void Phase::SpatialModeler::DirectionalHistogramData::getNormalizedDirectionalDistribution(Phase::SpatialModeler::DirectionalHistogramData *this, float *a2, unsigned int a3)
{
  v4 = a2;
  if (a3 >= 0x48)
  {
    v6 = 72;
  }

  else
  {
    v6 = a3;
  }

  bzero(a2, (4 * v6));
  v7 = *this;
  if (v7)
  {
    v8 = 0;
    v9 = 0;
    v10 = *(this + 1);
    do
    {
      if (a3)
      {
        v11 = (v10 + 4 * v8);
        v12 = v4;
        v13 = v6;
        do
        {
          v14 = *v11++;
          *v12 = v14 + *v12;
          ++v12;
          --v13;
        }

        while (v13);
      }

      ++v9;
      v8 += 73;
    }

    while (v9 != v7);
  }

  if (a3)
  {
    v15 = 0.0;
    v16 = v4;
    v17 = v6;
    do
    {
      v18 = *v16++;
      v15 = v15 + v18;
      --v17;
    }

    while (v17);
    if (v15 > 0.0)
    {
      do
      {
        *v4 = *v4 / v15;
        ++v4;
        --v6;
      }

      while (v6);
    }
  }
}

void Phase::SpatialModeler::DirectivityHistogram::~DirectivityHistogram(void **this)
{
  v9 = *MEMORY[0x277D85DE8];
  *this = &unk_284D31C70;
  if (!atomic_load(&Phase::SpatialModeler::HistogramPtrStack::sIsClearingPoolFlag))
  {
    v3 = **(Phase::Logger::GetInstance(this) + 1264);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v5 = 136315394;
      v6 = "DirectivityHistogram.cpp";
      v7 = 1024;
      v8 = 32;
      _os_log_impl(&dword_23A302000, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d DirectivityHistogram must only be destructed when free pool is cleared.\n", &v5, 0x12u);
    }
  }

  free(this[15]);
  v4 = this[11];
  if (v4)
  {
    this[12] = v4;
    operator delete(v4);
  }

  *this = &unk_284D33B60;
  free(this[1]);
}

{
  Phase::SpatialModeler::DirectivityHistogram::~DirectivityHistogram(this);

  JUMPOUT(0x23EE864A0);
}

void sub_23A393D88(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t Phase::SpatialModeler::DirectivityHistogram::initDirectivityHistogram(Phase::SpatialModeler::DirectivityHistogram *this, float a2, int a3, float a4, float a5, float a6)
{
  v21 = *MEMORY[0x277D85DE8];
  v8 = Phase::SpatialModeler::EnergyHistogram::resizeEnergyHistogram(this, a2, a3, a4, a5);
  if (v8 == 1)
  {
    v9 = **(Phase::Logger::GetInstance(v8) + 1264);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v17 = 136315394;
      v18 = "DirectivityHistogram.cpp";
      v19 = 1024;
      v20 = 48;
      _os_log_impl(&dword_23A302000, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d Could not resize histogram.\n", &v17, 0x12u);
    }

    return 1;
  }

  else
  {
    v11 = *(this + 1);
    if (v11)
    {
      bzero(v11, 4 * (*(this + 7) * *(this + 6)));
    }

    v12 = *(this + 11);
    *(this + 36) = 1;
    *(this + 11) = 0;
    *(this + 12) = v12;
    v13 = *(this + 6);
    if (v13)
    {
      v14 = *(this + 13) - v12;
      if (v13 > v14 >> 2)
      {
        v15 = v14 >> 1;
        if (v14 >> 1 <= v13)
        {
          v15 = *(this + 6);
        }

        if (v14 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v16 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v16 = v15;
        }

        std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(this + 88, v16);
      }

      bzero(v12, 4 * v13);
      *(this + 12) = &v12[4 * v13];
    }

    result = Phase::SpatialModeler::DirectionalHistogramData::allocateHistogramUniform((this + 112), *(this + 6));
    *(this + 20) = -1;
    *(this + 8) = a6;
  }

  return result;
}

uint64_t Phase::SpatialModeler::DirectivityHistogram::resetDirectivityHistogram(Phase::SpatialModeler::DirectivityHistogram *this, int a2)
{
  v4 = *(this + 15);
  if (v4)
  {
    bzero(v4, 4 * (73 * *(this + 28)));
  }

  v5 = *(this + 11);
  v6 = *(this + 12) - v5;
  if (v6 >= 1)
  {
    bzero(v5, v6);
  }

  *(this + 20) = -1;
  if (a2)
  {
    v7 = *(this + 1);
    if (v7)
    {
      bzero(v7, 4 * (*(this + 7) * *(this + 6)));
    }

    *(this + 36) = 1;
    *(this + 11) = 0;
  }

  return 0;
}

uint64_t Phase::SpatialModeler::DirectivityHistogram::addEnergySphere(uint64_t a1, uint64_t a2, float a3, float a4, float a5)
{
  v21 = *MEMORY[0x277D85DE8];
  v8 = (a3 / *(a1 + 16));
  v10 = Phase::SpatialModeler::EnergyHistogram::addEnergy_TS(a1, v8, a2);
  if (v10 > 1.1755e-38)
  {
    if (v10 != INFINITY)
    {
      v11 = ((a5 + 90.0) / 30.0) & ~(((a5 + 90.0) / 30.0) >> 31);
      v12 = ((5 - v11) & ((5 - v11) >> 31)) + v11;
      if (v12 <= 5 && *(a1 + 112) > v8)
      {
        result = 0;
        v15 = (a4 / 30.0) % 0xC + 12 * v12 + 73 * v8;
        *(*(a1 + 120) + 4 * v15) = v10 + *(*(a1 + 120) + 4 * v15);
        *(*(a1 + 88) + 4 * v8) = 1;
        *(a1 + 36) = 0;
        return result;
      }
    }

    v16 = **(Phase::Logger::GetInstance(v9) + 1264);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = 136315394;
      v18 = "DirectivityHistogram.cpp";
      v19 = 1024;
      v20 = 186;
      _os_log_impl(&dword_23A302000, v16, OS_LOG_TYPE_ERROR, "%25s:%-5d Could not add to histogram.", &v17, 0x12u);
    }
  }

  return 1;
}

uint64_t Phase::SpatialModeler::DirectivityHistogram::findImpactAngle_TS(Phase::SpatialModeler::DirectivityHistogram *this, unsigned int a2, float *a3, float *a4, float a5, float a6)
{
  v24 = *MEMORY[0x277D85DE8];
  v8 = *(this + 11);
  if (a2 >= ((*(this + 12) - v8) >> 2))
  {
    *a3 = 90.0;
    *a4 = 90.0;
    v16 = **(Phase::Logger::GetInstance(this) + 1264);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 136315394;
      v21 = "DirectivityHistogram.cpp";
      v22 = 1024;
      v23 = 309;
      v15 = "%25s:%-5d Step out of range.\n";
      v17 = v16;
      v18 = OS_LOG_TYPE_DEFAULT;
LABEL_15:
      _os_log_impl(&dword_23A302000, v17, v18, v15, &v20, 0x12u);
      return 1;
    }

    return 1;
  }

  if (!*(v8 + 4 * a2))
  {
    *a3 = 90.0;
    *a4 = 90.0;
    return 1;
  }

  if (*(this + 20) == a2)
  {
    goto LABEL_4;
  }

  v19 = (this + 112);
  if (*(this + 28) > a2)
  {
    v19 = Phase::SpatialModeler::DirectionalHistogramData::computePDF(v19, a2);
    if (!v19)
    {
      *(this + 20) = a2;
LABEL_4:
      result = Phase::SpatialModeler::DirectionalHistogramData::getRandomSample((this + 112), a5, a6, a4, a3);
      if (!result)
      {
        return result;
      }

      *a3 = 90.0;
      *a4 = 90.0;
      v14 = **(Phase::Logger::GetInstance(result) + 1264);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v20 = 136315394;
        v21 = "DirectivityHistogram.cpp";
        v22 = 1024;
        v23 = 338;
        v15 = "%25s:%-5d Unknown error while resampling PDF.\n";
LABEL_14:
        v17 = v14;
        v18 = OS_LOG_TYPE_ERROR;
        goto LABEL_15;
      }

      return 1;
    }
  }

  *a3 = 90.0;
  *a4 = 90.0;
  v14 = **(Phase::Logger::GetInstance(v19) + 1264);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    v20 = 136315394;
    v21 = "DirectivityHistogram.cpp";
    v22 = 1024;
    v23 = 327;
    v15 = "%25s:%-5d Error while preparing PDF.\n";
    goto LABEL_14;
  }

  return 1;
}

void Phase::SpatialModeler::DirectivityHistogram::getNormalizedDirectionalDistribution(Phase::SpatialModeler::DirectivityHistogram *this, float *a2, unsigned int a3)
{
  v11 = *MEMORY[0x277D85DE8];
  if (a3 != 72)
  {
    v6 = **(Phase::Logger::GetInstance(this) + 1264);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315394;
      v8 = "DirectivityHistogram.cpp";
      v9 = 1024;
      v10 = 353;
      _os_log_impl(&dword_23A302000, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d getNormalizedDirectionalDistribution: Mismatch of number of direction groups.\n", &v7, 0x12u);
    }
  }

  Phase::SpatialModeler::DirectionalHistogramData::getNormalizedDirectionalDistribution((this + 112), a2, a3);
}