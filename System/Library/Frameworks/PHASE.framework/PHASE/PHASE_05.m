void sub_23A35BD90(_Unwind_Exception *a1)
{
  __cxa_free_exception(v1);
  std::__hash_table<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::__unordered_map_hasher<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::hash<Phase::SpatialCategory>,std::equal_to<Phase::SpatialCategory>,true>,std::__unordered_map_equal<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::equal_to<Phase::SpatialCategory>,std::hash<Phase::SpatialCategory>,true>,std::allocator<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>>>::~__hash_table(v2 + 72);
  _Unwind_Resume(a1);
}

void sub_23A35BDDC()
{
  std::shared_lock<std::shared_mutex>::~shared_lock[abi:ne200100](v1 - 176);
  std::__hash_table<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::__unordered_map_hasher<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::hash<Phase::SpatialCategory>,std::equal_to<Phase::SpatialCategory>,true>,std::__unordered_map_equal<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::equal_to<Phase::SpatialCategory>,std::hash<Phase::SpatialCategory>,true>,std::allocator<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>>>::~__hash_table(v0 + 72);
  JUMPOUT(0x23A35BE78);
}

void sub_23A35BDF8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
    __cxa_rethrow();
  }

  _Unwind_Resume(a1);
}

void sub_23A35BE24()
{
  __cxa_end_catch();
  std::__hash_table<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::__unordered_map_hasher<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::hash<Phase::SpatialCategory>,std::equal_to<Phase::SpatialCategory>,true>,std::__unordered_map_equal<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::equal_to<Phase::SpatialCategory>,std::hash<Phase::SpatialCategory>,true>,std::allocator<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>>>::~__hash_table(v0 + 72);
  JUMPOUT(0x23A35BE78);
}

void sub_23A35BE30(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t Phase::Controller::SpatialModelerInstance::UnregisterSubmix(uint64_t a1, void *a2, void *a3)
{
  v32 = *MEMORY[0x277D85DE8];
  v6 = **(Phase::Logger::GetInstance(a1) + 240);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    Phase::Controller::SpatialModelerInstance::GetDescription(__p, a1);
    v7 = v23 >= 0 ? __p : __p[0];
    *buf = 136315906;
    v25 = "CvmSpatialModelerInstance.mm";
    v26 = 1024;
    v27 = 940;
    v28 = 2080;
    v29 = v7;
    v30 = 2048;
    v31 = a2;
    _os_log_impl(&dword_23A302000, v6, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: unregister submixId %llu", buf, 0x26u);
    if (v23 < 0)
    {
      operator delete(__p[0]);
    }
  }

  Phase::Controller::SpatialModelerInstance::RemoveInput(a1, a2, a3);
  __p[0] = a2;
  __p[1] = a3;
  v8 = std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>>>::find<Phase::UniqueObjectId>((a1 + 8), __p);
  v9 = v8;
  if (!v8)
  {
    v19 = **(Phase::Logger::GetInstance(0) + 240);
    v20 = v19;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v25 = "CvmSubmixSlotMapImpl.hpp";
      v26 = 1024;
      v27 = 91;
      v28 = 2048;
      v29 = __p[0];
      _os_log_impl(&dword_23A302000, v19, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (InvalidId) [iter == mSubmixHandleMap.end() is true]: SubmixSlotMap::Erase couldn't find SubmixId %llu", buf, 0x1Cu);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    _ZN5Phase10Controller9InvalidIdCI1St11logic_errorEPKc(exception, "SubmixSlotMap::Erase couldn't find SubmixId %llu");
  }

  v10 = v8[4];
  UniqueSlot = Phase::details::SharedSlotMap<Phase::Controller::SpatialModelerInstance::SubmixInfo,Phase::Handle64>::GetUniqueSlot(a1 + 48, v10);
  v12 = UniqueSlot;
  if (UniqueSlot)
  {
    ++*(UniqueSlot + 20);
    v13 = *(UniqueSlot + 8);
    *v12 = 0;
    *(v12 + 8) = 0;
    if (v13)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    }

    v14 = atomic_load((a1 + 68));
    *(v12 + 16) = v14;
    v15 = v14;
    atomic_compare_exchange_strong((a1 + 68), &v15, v10);
    if (v15 != v14)
    {
      v16 = v15;
      do
      {
        *(v12 + 16) = v15;
        atomic_compare_exchange_strong((a1 + 68), &v16, v10);
        v17 = v16 == v15;
        v15 = v16;
      }

      while (!v17);
    }
  }

  return std::__hash_table<Phase::Controller::Renderer *,std::hash<Phase::Controller::Renderer *>,std::equal_to<Phase::Controller::Renderer *>,std::allocator<Phase::Controller::Renderer *>>::erase((a1 + 8), v9);
}

uint64_t Phase::Controller::SpatialModelerInstance::RemoveInput(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 6472);
  v8[0] = a2;
  v8[1] = a3;
  result = std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>>>::find<Phase::UniqueObjectId>((v6 + 160), v8);
  if (result)
  {
    Phase::Controller::SpatialSubmixRouter::RemoveInput(*(a1 + 6472), a2, a3);
    result = Phase::Controller::SubmixSlotMap<Phase::Controller::SpatialModelerInstance::SubmixInfo>::GetMutable((a1 + 8), a2, a3);
    if (result)
    {
      *(result + 32) = 0;
    }
  }

  return result;
}

void Phase::Controller::SpatialModelerInstance::UnregisterAllSubmixes(Phase::Controller::SpatialModelerInstance *this)
{
  v2 = *(this + 6);
  v3 = *(this + 16);
  v4 = &v2[3 * v3];
  if (v3)
  {
    v5 = *v2;
    if (!*v2)
    {
      v6 = v2 + 3;
      while (1)
      {
        v2 = v6;
        if (v6 >= v4)
        {
          break;
        }

        v6 += 3;
        v5 = *v2;
        if (*v2)
        {
          goto LABEL_9;
        }
      }

      v5 = 0;
    }

LABEL_9:
    v7 = v4;
  }

  else
  {
    v5 = 0;
    v7 = *(this + 6);
  }

LABEL_16:
  while (v2 != v4)
  {
    Phase::Controller::SpatialModelerInstance::RemoveInput(this, *v5, v5[1]);
    if (v2 < v7)
    {
      v8 = v2 + 3;
      while (1)
      {
        v2 = v8;
        if (v8 >= v7)
        {
          break;
        }

        v8 += 3;
        v5 = *v2;
        if (*v2)
        {
          goto LABEL_16;
        }
      }

      v5 = 0;
    }
  }

  Phase::Controller::SubmixSlotMap<Phase::Controller::SpatialModelerInstance::SubmixInfo>::Clear(this + 8);
}

uint64_t Phase::Controller::SpatialModelerInstance::AddInput(uint64_t a1, unint64_t a2, unint64_t a3, double a4)
{
  v8 = *(a1 + 6472);
  v11[0] = a2;
  v11[1] = a3;
  result = std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>>>::find<Phase::UniqueObjectId>((v8 + 160), v11);
  if (!result)
  {
    v10 = Phase::Controller::SpatialSubmixRouter::AddInput(*(a1 + 6472), a2, a3, a4);
    result = Phase::Controller::SubmixSlotMap<Phase::Controller::SpatialModelerInstance::SubmixInfo>::GetMutable((a1 + 8), a2, a3);
    if (result)
    {
      *(result + 32) = v10;
    }
  }

  return result;
}

uint64_t Phase::Controller::SubmixSlotMap<Phase::Controller::SpatialModelerInstance::SubmixInfo>::GetMutable(void *a1, uint64_t a2, uint64_t a3)
{
  v7[0] = a2;
  v7[1] = a3;
  v4 = std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>>>::find<Phase::UniqueObjectId>(a1, v7);
  if (v4)
  {
    v5 = v4[4];
  }

  else
  {
    v5 = 0;
  }

  result = _ZN5Phase7details13SharedSlotMapINS_10Controller22SpatialModelerInstance10SubmixInfoENS_8Handle64EE13GetSlotToEditIRZNS_13SharedSlotMapIS4_S5_DnE9GetUniqueES5_EUlRT_E_EEPNS_18SharedSlotMapStateIS4_S5_E4SlotES5_OSA_((a1 + 5), v5);
  if (result)
  {
    return *result;
  }

  return result;
}

Phase::Logger *Phase::Controller::SpatialModelerInstance::SetInputSendLevel(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v8 = *(a1 + 6472);
  v11[0] = a2;
  v11[1] = a3;
  result = std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>>>::find<Phase::UniqueObjectId>((v8 + 160), v11);
  if (result)
  {
    v10 = *(a1 + 6472);

    return Phase::Controller::SpatialSubmixRouter::SetInputSendLevel(v10, a2, a3, a4);
  }

  return result;
}

void *Phase::Controller::SpatialModelerInstance::IsPrepared(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 6472);
  v9[0] = a2;
  v9[1] = a3;
  result = std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>>>::find<Phase::UniqueObjectId>((v6 + 160), v9);
  if (result)
  {
    v8 = *(a1 + 6472);

    return Phase::Controller::SpatialSubmixRouter::IsPrepared(v8, a2, a3);
  }

  return result;
}

void *Phase::Controller::SpatialModelerInstance::IsStopped(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 6472);
  v9[0] = a2;
  v9[1] = a3;
  result = std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>>>::find<Phase::UniqueObjectId>((v6 + 160), v9);
  if (result)
  {
    v8 = *(a1 + 6472);

    return Phase::Controller::SpatialSubmixRouter::IsStopped(v8, a2, a3);
  }

  return result;
}

_BYTE *Phase::Controller::SpatialModelerInstance::SetPlayState(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v8 = *(a1 + 6472);
  v10[0] = a2;
  v10[1] = a3;
  result = std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>>>::find<Phase::UniqueObjectId>((v8 + 160), v10);
  if (result)
  {
    Phase::Controller::SpatialSubmixRouter::SetPlayState(*(a1 + 6472), a2, a3, a4);
    result = Phase::Controller::SubmixSlotMap<Phase::Controller::SpatialModelerInstance::SubmixInfo>::MutableAt((a1 + 8), a2, a3);
    result[24] = (a4 & 0xFFFFFFFD) == 1;
  }

  return result;
}

Phase::Logger *Phase::Controller::SubmixSlotMap<Phase::Controller::SpatialModelerInstance::SubmixInfo>::MutableAt(void *a1, uint64_t a2, uint64_t a3)
{
  v15 = *MEMORY[0x277D85DE8];
  *v10 = a2;
  *&v10[8] = a3;
  v5 = std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>>>::find<Phase::UniqueObjectId>(a1, v10);
  if (v5)
  {
    v6 = v5[4];
  }

  else
  {
    v6 = 0;
  }

  result = _ZN5Phase7details13SharedSlotMapINS_10Controller22SpatialModelerInstance10SubmixInfoENS_8Handle64EE13GetSlotToEditIRZNS_13SharedSlotMapIS4_S5_DnE9GetUniqueES5_EUlRT_E_EEPNS_18SharedSlotMapStateIS4_S5_E4SlotES5_OSA_((a1 + 5), v6);
  if (!result || (result = *result) == 0)
  {
    v8 = **(Phase::Logger::GetInstance(result) + 240);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v10 = 136315906;
      *&v10[4] = "CvmSubmixSlotMapImpl.hpp";
      *&v10[12] = 1024;
      *&v10[14] = 171;
      v11 = 2048;
      v12 = v6;
      v13 = 2048;
      v14 = a2;
      _os_log_impl(&dword_23A302000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (InvalidId) [nullptr == pObject is true]: SubmixSlotMap::MutableAt couldn't find SubmixHandle %llu for SubmixId %llu", v10, 0x26u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    _ZN5Phase10Controller9InvalidIdCI1St11logic_errorEPKc(exception, "SubmixSlotMap::MutableAt couldn't find SubmixHandle %llu for SubmixId %llu");
  }

  return result;
}

uint64_t Phase::Controller::OptionalProperties::SetValue(void *a1, unsigned int a2, uint64_t a3, __int128 *a4)
{
  v4 = a1[1];
  if (!v4)
  {
    goto LABEL_17;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = a2;
    if (v4 <= a2)
    {
      v6 = a2 % v4;
    }
  }

  else
  {
    v6 = (v4 - 1) & a2;
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7 || (v8 = *v7) == 0)
  {
LABEL_17:
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  while (1)
  {
    v9 = v8[1];
    if (v9 == a2)
    {
      break;
    }

    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= v4)
      {
        v9 %= v4;
      }
    }

    else
    {
      v9 &= v4 - 1;
    }

    if (v9 != v6)
    {
      goto LABEL_17;
    }

LABEL_16:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_17;
    }
  }

  if (*(v8 + 4) != a2)
  {
    goto LABEL_16;
  }

  v10 = *a4;
  v11 = a4[2];
  *(v8 + 3) = a4[1];
  *(v8 + 4) = v11;
  *(v8 + 2) = v10;
  return 1;
}

void std::atomic_store[abi:ne200100]<Phase::Controller::SubmixSlotMapState<Phase::Controller::SpatialModelerInstance::SubmixInfo>>(uint64_t *a1, uint64_t *a2)
{
  sp_mut = std::__get_sp_mut(a1);
  std::__sp_mut::lock(sp_mut);
  v5 = *a1;
  *a1 = *a2;
  *a2 = v5;
  v6 = a1[1];
  a1[1] = a2[1];
  a2[1] = v6;

  std::__sp_mut::unlock(sp_mut);
}

void Phase::Controller::SpatialModelerInstance::SubmixInfo::MakeSubmix(Phase::Controller::SpatialModelerInstance::SubmixInfo *this, uint64_t a2, uint64_t a3)
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 56);
  if (v4 < *(a2 + 64))
  {
    v4 = *(a2 + 64);
  }

  *this = *a2;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 124) = 0u;
  *(this + 35) = a3;
  if (a3)
  {
    *&v4 = v4;
    v5 = (a3 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v6 = vdupq_n_s64(a3 - 1);
    v7 = xmmword_23A554B60;
    v8 = xmmword_23A554B70;
    v9 = (this + 28);
    v10 = vdupq_n_s64(4uLL);
    do
    {
      v11 = vmovn_s64(vcgeq_u64(v6, v8));
      if (vuzp1_s16(v11, *&v4).u8[0])
      {
        *(v9 - 3) = LODWORD(v4);
      }

      if (vuzp1_s16(v11, *&v4).i8[2])
      {
        *(v9 - 2) = LODWORD(v4);
      }

      if (vuzp1_s16(*&v4, vmovn_s64(vcgeq_u64(v6, *&v7))).i32[1])
      {
        *(v9 - 1) = LODWORD(v4);
        *v9 = LODWORD(v4);
      }

      v7 = vaddq_s64(v7, v10);
      v8 = vaddq_s64(v8, v10);
      v9 += 4;
      v5 -= 4;
    }

    while (v5);
  }

  *(this + 18) = *(a2 + 48);
  *(this + 152) = *(a2 + 24);
  v12 = this + 160;
  v13 = (this + 168);
  v14 = 128;
  do
  {
    *(v13 - 2) = 0;
    *v13 = 0;
    v13 += 2;
    v14 -= 16;
  }

  while (v14);
  for (i = 1; i != 8; ++i)
  {
    v16 = *(a2 + 80);
    if (!*&v16)
    {
      goto LABEL_31;
    }

    v17 = vcnt_s8(v16);
    v17.i16[0] = vaddlv_u8(v17);
    if (v17.u32[0] > 1uLL)
    {
      v18 = i;
      if (*&v16 <= i)
      {
        v18 = i % v16.i32[0];
      }
    }

    else
    {
      v18 = (*&v16 + 0x7FFFFFFFLL) & i;
    }

    v19 = *(*(a2 + 72) + 8 * v18);
    if (!v19 || (v20 = *v19) == 0)
    {
LABEL_31:
      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    }

    while (1)
    {
      v21 = v20[1];
      if (v21 == i)
      {
        break;
      }

      if (v17.u32[0] > 1uLL)
      {
        if (v21 >= *&v16)
        {
          v21 %= *&v16;
        }
      }

      else
      {
        v21 &= *&v16 - 1;
      }

      if (v21 != v18)
      {
        goto LABEL_31;
      }

LABEL_30:
      v20 = *v20;
      if (!v20)
      {
        goto LABEL_31;
      }
    }

    if (i != *(v20 + 4))
    {
      goto LABEL_30;
    }

    if (*(v20 + 28))
    {
      if (*(v20 + 28) == 1)
      {
        if (*(v20 + 18) == 1)
        {
          v22 = v20[4];
          v23 = &v12[16 * i];
          *v23 = i;
          v23[4] = 1;
          *(v23 + 1) = v22;
        }
      }

      else
      {
        v26 = **(Phase::Logger::GetInstance(this) + 240);
        this = os_log_type_enabled(v26, OS_LOG_TYPE_ERROR);
        if (this)
        {
          v27 = *(v20 + 28);
          *buf = 136315650;
          v29 = "CvmSpatialModelerOptionalProperties.hpp";
          v30 = 1024;
          v31 = 138;
          v32 = 1024;
          v33 = v27;
          _os_log_impl(&dword_23A302000, v26, OS_LOG_TYPE_ERROR, "%25s:%-5d Unhandled OptionalPropertyDescription type %hhd", buf, 0x18u);
        }
      }
    }

    else if (!*(v20 + 18))
    {
      v24 = v20[7];
      v25 = &v12[16 * i];
      *v25 = i;
      v25[4] = 0;
      *(v25 + 1) = v24;
    }
  }
}

void sub_23A35CCD8(void *a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x23A35CCE0);
  }

  __clang_call_terminate(a1);
}

unsigned __int8 *Phase::Controller::SpatialModelerInstance::SetParameter(unsigned __int8 *result, uint64_t a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 4);
  if (v3 <= 1)
  {
    if (v3 == 1)
    {
      v5 = result + 792;
    }

    else
    {
      v5 = 0;
      if (!v3)
      {
        v14 = **(Phase::Logger::GetInstance(result) + 240);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          v18 = 136315394;
          v19 = "CvmSpatialModelerInstance.mm";
          v20 = 1024;
          v21 = 1114;
          _os_log_impl(&dword_23A302000, v14, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (InvalidId): Invalid SpatialModeler Graph type", &v18, 0x12u);
        }

        exception = __cxa_allocate_exception(0x10uLL);
        _ZN5Phase10Controller9InvalidIdCI1St11logic_errorEPKc(exception, "Invalid SpatialModeler Graph type");
      }
    }
  }

  else
  {
    v4 = result + 1032;
    if (v3 != 3)
    {
      v4 = 0;
    }

    if (v3 == 2)
    {
      v5 = result + 912;
    }

    else
    {
      v5 = v4;
    }
  }

  v6 = *(a2 + 8);
  if (v6 <= 1)
  {
    if (v6 != 1)
    {
      v5 = 0;
      if (!v6)
      {
        v7 = **(Phase::Logger::GetInstance(result) + 240);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          v18 = 136315394;
          v19 = "CvmSpatialModelerInstance.mm";
          v20 = 1024;
          v21 = 1132;
          _os_log_impl(&dword_23A302000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (InvalidId): Invalid SpatialModeler Stage type", &v18, 0x12u);
        }

        v8 = __cxa_allocate_exception(0x10uLL);
        _ZN5Phase10Controller9InvalidIdCI1St11logic_errorEPKc(v8, "Invalid SpatialModeler Stage type");
      }
    }
  }

  else if (v6 == 2)
  {
    v5 += 40;
  }

  else if (v6 == 3)
  {
    v5 += 80;
  }

  else
  {
    v5 = 0;
  }

  v9 = *(a2 + 12);
  if (v9 <= 2)
  {
    switch(v9)
    {
      case 1:
        v11 = result + 5641;
        v12 = atomic_load(result + 5641);
        v13 = *(a2 + 16);
        if ((v12 & 1) == 0 || v13 == *(v5 + 2))
        {
          *(v5 + 2) = v13;
        }

        else
        {
          result = Phase::Controller::SpatialModelerInstance::StopUpdate(result);
          *(v5 + 2) = *(a2 + 16);
          atomic_store(1u, v11);
        }

        break;
      case 2:
        *v5 = *(a2 + 16);
        break;
      case 0:
        v16 = **(Phase::Logger::GetInstance(result) + 240);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v18 = 136315394;
          v19 = "CvmSpatialModelerInstance.mm";
          v20 = 1024;
          v21 = 1186;
          _os_log_impl(&dword_23A302000, v16, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (InvalidId): Invalid SpatialModelerParameter type", &v18, 0x12u);
        }

        v17 = __cxa_allocate_exception(0x10uLL);
        _ZN5Phase10Controller9InvalidIdCI1St11logic_errorEPKc(v17, "Invalid SpatialModelerParameter type");
    }
  }

  else
  {
    switch(v9)
    {
      case 3:
        v10 = *(a2 + 16);
        *(v5 + 2) = v10;
        break;
      case 4:
        *(v5 + 3) = *(a2 + 16);
        break;
      case 5:
        *(v5 + 4) = *(a2 + 16);
        break;
    }
  }

  return result;
}

char *Phase::Controller::SpatialModelerInstance::GetAvailableComputeForGraph(uint64_t a1, int *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  if (*a2 == 3)
  {
    goto LABEL_4;
  }

  if (v3 == 2)
  {
    atomic_load((a1 + 312));
    Phase::Controller::SpatialModelerInstance::GetParams(a1, *(a1 + 3328), 0);
    Phase::Controller::SpatialModelerInstance::GetParams(a1, *(a1 + 3328), 1);
    if (*(a1 + 528) == 2)
    {
      return Phase::Controller::SpatialModelerInstance::GetParams(a1, *(a1 + 3328), 2);
    }

LABEL_15:
    std::terminate();
  }

  if (v3 != 1)
  {
    v8 = **(Phase::Logger::GetInstance(a1) + 224);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      Phase::Controller::SpatialModelerInstance::GetDescription(__p, a1);
      v9 = __p[0];
      if (v13 >= 0)
      {
        v9 = __p;
      }

      v10 = *a2;
      *buf = 136315906;
      v15 = "CvmSpatialModelerInstance.mm";
      v16 = 1024;
      v17 = 1246;
      v18 = 2080;
      v19 = v9;
      v20 = 1024;
      v21 = v10;
      _os_log_impl(&dword_23A302000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: Invalid graph type %i", buf, 0x22u);
      if (v13 < 0)
      {
        operator delete(__p[0]);
      }
    }

    goto LABEL_15;
  }

LABEL_4:
  v4 = 0;
  v5 = 0.0;
  do
  {
    result = Phase::Controller::SpatialModelerInstance::GetParams(a1, *(a1 + 1152), v4);
    v7 = COERCE_DOUBLE(atomic_load((a1 + 8 * v4 + 1904)));
    v5 = v5 + v7 * *(result + 2);
    ++v4;
  }

  while (v4 != 3);
  atomic_load((a1 + 312));
  return result;
}

char *Phase::Controller::SpatialModelerInstance::GetParams(Phase::Logger *a1, int a2, uint64_t a3)
{
  v30 = *MEMORY[0x277D85DE8];
  if (a2 <= 1)
  {
    if (a2 != 1)
    {
      if (!a2)
      {
        v11 = **(Phase::Logger::GetInstance(a1) + 240);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v23 = "CvmSpatialModelerInstance.mm";
          v24 = 1024;
          v25 = 2777;
          _os_log_impl(&dword_23A302000, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (InvalidId): Invalid SpatialModeler Graph type", buf, 0x12u);
        }

        exception = __cxa_allocate_exception(0x10uLL);
        _ZN5Phase10Controller9InvalidIdCI1St11logic_errorEPKc(exception, "Invalid SpatialModeler Graph type");
      }

      goto LABEL_31;
    }

    v3 = 792;
  }

  else
  {
    if (a2 != 3)
    {
      if (a2 == 2)
      {
        v3 = 912;
        goto LABEL_8;
      }

LABEL_31:
      v17 = **(Phase::Logger::GetInstance(a1) + 240);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        Phase::Controller::SpatialModelerInstance::GetDescription(__p, a1);
        v18 = v21 >= 0 ? __p : __p[0];
        *buf = 136315906;
        v23 = "CvmSpatialModelerInstance.mm";
        v24 = 1024;
        v25 = 2782;
        v26 = 2080;
        v27 = v18;
        v28 = 1024;
        LODWORD(v29) = a2;
        _os_log_impl(&dword_23A302000, v17, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error) [nullptr == pStage is true]: %s: SpatialModeler Graph stage not found for graph %i", buf, 0x22u);
        if (v21 < 0)
        {
          operator delete(__p[0]);
        }
      }

      v19 = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(v19, "%s: SpatialModeler Graph stage not found for graph %i");
    }

    v3 = 1032;
  }

LABEL_8:
  v4 = a1 + v3;
  if (a3 <= 0)
  {
    if (!a3)
    {
      return v4;
    }

    v5 = a1;
    v6 = a3;
    if (a3 == -1)
    {
LABEL_28:
      v13 = **(Phase::Logger::GetInstance(a1) + 240);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v23 = "CvmSpatialModelerInstance.mm";
        v24 = 1024;
        v25 = 2799;
        _os_log_impl(&dword_23A302000, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (InvalidId): Invalid SpatialModeler Stage type", buf, 0x12u);
      }

      v14 = __cxa_allocate_exception(0x10uLL);
      _ZN5Phase10Controller9InvalidIdCI1St11logic_errorEPKc(v14, "Invalid SpatialModeler Stage type");
    }

LABEL_14:
    v7 = **(Phase::Logger::GetInstance(a1) + 240);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      Phase::Controller::SpatialModelerInstance::GetDescription(__p, v5);
      v8 = v21 >= 0 ? __p : __p[0];
      *buf = 136315906;
      v23 = "CvmSpatialModelerInstance.mm";
      v24 = 1024;
      v25 = 2804;
      v26 = 2080;
      v27 = v8;
      v28 = 2048;
      v29 = v6;
      _os_log_impl(&dword_23A302000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error) [nullptr == pParams is true]: %s: SpatialModeler parameters not found for stage %zu", buf, 0x26u);
      if (v21 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v9 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v9, "%s: SpatialModeler parameters not found for stage %zu");
  }

  if (a3 == 1)
  {
    v4 += 40;
    return v4;
  }

  if (a3 != 2)
  {
    v5 = a1;
    v6 = a3;
    if (a3 == 3)
    {
      goto LABEL_28;
    }

    goto LABEL_14;
  }

  v4 += 80;
  return v4;
}

Phase::Logger *Phase::Controller::SpatialQueryInstance::GetOutputAs<Phase::SpatialModeler::CullabilityOutput<float>>(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  result = *(a1 + 120);
  if (!result || *result != 1)
  {
    v3 = a1;
    v4 = **(Phase::Logger::GetInstance(result) + 400);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = **(v3 + 120);
      v7 = 136315906;
      v8 = "CvmSpatialQueryInstance.hpp";
      v9 = 1024;
      v10 = 121;
      v11 = 1024;
      v12 = 1;
      v13 = 1024;
      v14 = v5;
      _os_log_impl(&dword_23A302000, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::invalid_argument) [nullptr == pOutput is true]: Bad spatial query output cast: expected type: %i, actual type: %i", &v7, 0x1Eu);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "Bad spatial query output cast: expected type: %i, actual type: %i");
  }

  return result;
}

Phase::Logger *Phase::Controller::SpatialQueryInstance::GetInputAs<Phase::SpatialModeler::SubmixListenerInput<float>>(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  result = *(a1 + 112);
  if (!result || *result != 1)
  {
    v3 = a1;
    v4 = **(Phase::Logger::GetInstance(result) + 400);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = **(v3 + 112);
      v7 = 136315906;
      v8 = "CvmSpatialQueryInstance.hpp";
      v9 = 1024;
      v10 = 98;
      v11 = 1024;
      v12 = 1;
      v13 = 1024;
      v14 = v5;
      _os_log_impl(&dword_23A302000, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::invalid_argument) [nullptr == pInput is true]: Bad spatial query input cast: expected type: %i, actual type: %i", &v7, 0x1Eu);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "Bad spatial query input cast: expected type: %i, actual type: %i");
  }

  return result;
}

void sGenerateSpatialModelerInfoString(const Phase::Controller::SpatialModelerInfo *a1, uint64_t a2)
{
  v4 = GetSpatialCategoryString(*(a2 + 40));
  std::string::basic_string[abi:ne200100](__dst, [v4 UTF8String], objc_msgSend(v4, "lengthOfBytesUsingEncoding:", 4));
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v13);
  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v14, "spatial category: ", 18);
  if ((v20 & 0x80u) == 0)
  {
    v6 = __dst;
  }

  else
  {
    v6 = __dst[0];
  }

  if ((v20 & 0x80u) == 0)
  {
    v7 = v20;
  }

  else
  {
    v7 = __dst[1];
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, v6, v7);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v14, ", ", 2);
  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v14, "spatial modeler: ", 17);
  v9 = *(a2 + 23);
  if (v9 >= 0)
  {
    v10 = a2;
  }

  else
  {
    v10 = *a2;
  }

  if (v9 >= 0)
  {
    v11 = *(a2 + 23);
  }

  else
  {
    v11 = *(a2 + 8);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, v10, v11);
  std::stringbuf::str[abi:ne200100](&v15, a1);
  v13[0] = *MEMORY[0x277D82818];
  v12 = *(MEMORY[0x277D82818] + 72);
  *(v13 + *(v13[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v14 = v12;
  v15 = MEMORY[0x277D82878] + 16;
  if (v17 < 0)
  {
    operator delete(v16[7].__locale_);
  }

  v15 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v16);
  std::iostream::~basic_iostream();
  MEMORY[0x23EE863B0](&v18);
  if (v20 < 0)
  {
    operator delete(__dst[0]);
  }
}

void sub_23A35DBFC(_Unwind_Exception *a1)
{
  if (*(v2 - 49) < 0)
  {
    operator delete(*(v2 - 72));
  }

  _Unwind_Resume(a1);
}

uint64_t sGenerateSubmixListenerInputString(_BYTE *a1, uint64_t a2)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v15);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, "type: SubmixListenerInput", 25);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, ", ", 2);
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, "submix: ", 8);
  MEMORY[0x23EE86170](v4, *(a2 + 192));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, ", ", 2);
  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, "listener: ", 10);
  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "0x", 2);
  *(v6 + *(*v6 - 24) + 8) |= 0x4000u;
  v7 = std::operator<<[abi:ne200100]<std::char_traits<char>>(v6, 48);
  v8 = *v7;
  *(v7 + *(*v7 - 24) + 24) = 8;
  *(v7 + *(v8 - 24) + 8) = *(v7 + *(v8 - 24) + 8) & 0xFFFFFFB5 | 8;
  MEMORY[0x23EE86170]();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, ", ", 2);
  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, "source: ", 8);
  v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "0x", 2);
  *(v10 + *(*v10 - 24) + 8) |= 0x4000u;
  v11 = std::operator<<[abi:ne200100]<std::char_traits<char>>(v10, 48);
  v12 = *v11;
  *(v11 + *(*v11 - 24) + 24) = 8;
  *(v11 + *(v12 - 24) + 8) = *(v11 + *(v12 - 24) + 8) & 0xFFFFFFB5 | 8;
  MEMORY[0x23EE86170]();
  std::stringbuf::str[abi:ne200100](&v17, a1);
  v15[0] = *MEMORY[0x277D82818];
  v13 = *(MEMORY[0x277D82818] + 72);
  *(v15 + *(v15[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v16 = v13;
  v17 = MEMORY[0x277D82878] + 16;
  if (v19 < 0)
  {
    operator delete(v18[7].__locale_);
  }

  v17 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v18);
  std::iostream::~basic_iostream();
  return MEMORY[0x23EE863B0](&v20);
}

void sub_23A35DFA4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

uint64_t sGenerateCullabilityOutputString(_BYTE *a1)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v4);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v5, "type: CullabilityOutput", 23);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v5, ", ", 2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v5, "cullability: ", 13);
  std::ostream::operator<<();
  std::stringbuf::str[abi:ne200100](&v6, a1);
  v4[0] = *MEMORY[0x277D82818];
  v2 = *(MEMORY[0x277D82818] + 72);
  *(v4 + *(v4[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v5 = v2;
  v6 = MEMORY[0x277D82878] + 16;
  if (v8 < 0)
  {
    operator delete(v7[7].__locale_);
  }

  v6 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v7);
  std::iostream::~basic_iostream();
  return MEMORY[0x23EE863B0](&v9);
}

void sub_23A35E190(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

uint64_t sGenerateErrorCodeString(std::error_code *a1, const std::error_code *a2)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v11);
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v12, "error code: ", 12);
  MEMORY[0x23EE86130](v4, a2->__val_);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v12, ", ", 2);
  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v12, "error message: ", 15);
  std::error_code::message(&__p, a2);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, p_p, size);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::stringbuf::str[abi:ne200100](&v13, a1);
  v11[0] = *MEMORY[0x277D82818];
  v8 = *(MEMORY[0x277D82818] + 72);
  *(v11 + *(v11[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v12 = v8;
  v13 = MEMORY[0x277D82878] + 16;
  if (v15 < 0)
  {
    operator delete(v14[7].__locale_);
  }

  v13 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v14);
  std::iostream::~basic_iostream();
  return MEMORY[0x23EE863B0](&v16);
}

void sub_23A35E3B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a15);
  _Unwind_Resume(a1);
}

Phase::Logger *Phase::Controller::SpatialQueryInstance::GetInputAs<Phase::SpatialModeler::ClusterSetInput<float>>(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  result = *(a1 + 112);
  if (!result || *result != 3)
  {
    v3 = a1;
    v4 = **(Phase::Logger::GetInstance(result) + 400);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = **(v3 + 112);
      v7 = 136315906;
      v8 = "CvmSpatialQueryInstance.hpp";
      v9 = 1024;
      v10 = 98;
      v11 = 1024;
      v12 = 3;
      v13 = 1024;
      v14 = v5;
      _os_log_impl(&dword_23A302000, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::invalid_argument) [nullptr == pInput is true]: Bad spatial query input cast: expected type: %i, actual type: %i", &v7, 0x1Eu);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "Bad spatial query input cast: expected type: %i, actual type: %i");
  }

  return result;
}

void std::vector<Phase::UniqueObjectId>::resize(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 4;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 16 * a2;
    }
  }

  else
  {
    std::vector<Phase::UniqueObjectId>::__append(a1, a2 - v2);
  }
}

uint64_t sGenerateClusterSetInputStrings(uint64_t a1, uint64_t a2)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v61);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v62, "type: ClusterSetInput", 21);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v62, ", ", 2);
  v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v62, "listener: ", 10);
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, "0x", 2);
  *(v4 + *(*v4 - 24) + 8) |= 0x4000u;
  v5 = std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, 48);
  v6 = *v5;
  *(v5 + *(*v5 - 24) + 24) = 8;
  *(v5 + *(v6 - 24) + 8) = *(v5 + *(v6 - 24) + 8) & 0xFFFFFFB5 | 8;
  MEMORY[0x23EE86170]();
  v7 = 0;
  memset(v60, 0, sizeof(v60));
  v8 = a2;
  v9 = *(a2 + 144);
  v48 = v9 / 0xA;
  v10 = MEMORY[0x277D82818];
  v44 = v9;
  if (v9 >= 0xA)
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v46 = *(MEMORY[0x277D82818] + 64);
    v47 = *MEMORY[0x277D82818];
    v45 = *(MEMORY[0x277D82818] + 72);
    do
    {
      v50 = v12;
      std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v53);
      v14 = 0;
      v49 = v11;
      v15 = v13 + 9;
      v16 = v53[0];
      do
      {
        v17 = *(&v53[1] + *(v16 - 3));
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v54, "{", 1);
        v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v54, "index: ", 7);
        MEMORY[0x23EE86160](v18, v13 + v14);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v54, ", ", 2);
        v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v54, "submix: ", 8);
        MEMORY[0x23EE86170](v19, *(*(v8 + 104) + v11));
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v54, ", ", 2);
        v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v54, "source: ", 8);
        v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, "0x", 2);
        *(v21 + *(*v21 - 24) + 8) |= 0x4000u;
        v22 = std::operator<<[abi:ne200100]<std::char_traits<char>>(v21, 48);
        v23 = *v22;
        *(v22 + *(*v22 - 24) + 24) = 8;
        *(v22 + *(v23 - 24) + 8) = *(v22 + *(v23 - 24) + 8) & 0xFFFFFFB5 | 8;
        MEMORY[0x23EE86170](v22);
        if (v13 + v14 >= v15)
        {
          v24 = "}";
        }

        else
        {
          v24 = "}, ";
        }

        if (v13 + v14 >= v15)
        {
          v25 = 1;
        }

        else
        {
          v25 = 3;
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v54, v24, v25);
        v16 = v53[0];
        *(&v53[1] + *(v53[0] - 3)) = v17;
        ++v14;
        v11 += 304;
      }

      while (v14 != 10);
      std::stringbuf::str[abi:ne200100](&v55, __p);
      std::vector<std::string>::push_back[abi:ne200100](v60, __p);
      v10 = MEMORY[0x277D82818];
      v7 = v13 + 10;
      if (v52 < 0)
      {
        operator delete(__p[0]);
      }

      v53[0] = v47;
      *(v53 + *(v47 - 3)) = v46;
      v54 = v45;
      v55 = MEMORY[0x277D82878] + 16;
      if (v58 < 0)
      {
        operator delete(v57);
      }

      v55 = MEMORY[0x277D82868] + 16;
      std::locale::~locale(v56);
      std::iostream::~basic_iostream();
      MEMORY[0x23EE863B0](v59);
      v12 = v50 + 1;
      v11 = v49 + 3040;
      v13 += 10;
    }

    while (v50 + 1 != v48);
  }

  v26 = v44 - 10 * v48;
  if (v26)
  {
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v53);
    if (v7 < v7 + v26)
    {
      v27 = v7;
      v28 = v7 + v26 - 1;
      v29 = v53[0];
      v30 = 304 * v7;
      do
      {
        v31 = *(&v53[1] + *(v29 - 3));
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v54, "{", 1);
        v32 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v54, "index: ", 7);
        MEMORY[0x23EE86160](v32, v27);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v54, ", ", 2);
        v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v54, "submix: ", 8);
        MEMORY[0x23EE86170](v33, *(*(v8 + 104) + v30));
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v54, ", ", 2);
        v34 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v54, "source: ", 8);
        v35 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, "0x", 2);
        *(v35 + *(*v35 - 24) + 8) |= 0x4000u;
        v36 = std::operator<<[abi:ne200100]<std::char_traits<char>>(v35, 48);
        v37 = *v36;
        *(v36 + *(*v36 - 24) + 24) = 8;
        *(v36 + *(v37 - 24) + 8) = *(v36 + *(v37 - 24) + 8) & 0xFFFFFFB5 | 8;
        MEMORY[0x23EE86170](v36);
        if (v27 >= v28)
        {
          v38 = "}";
        }

        else
        {
          v38 = "}, ";
        }

        if (v27 >= v28)
        {
          v39 = 1;
        }

        else
        {
          v39 = 3;
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v54, v38, v39);
        v29 = v53[0];
        *(&v53[1] + *(v53[0] - 3)) = v31;
        ++v27;
        v30 += 304;
        --v26;
      }

      while (v26);
    }

    std::stringbuf::str[abi:ne200100](&v55, __p);
    std::vector<std::string>::push_back[abi:ne200100](v60, __p);
    v10 = MEMORY[0x277D82818];
    if (v52 < 0)
    {
      operator delete(__p[0]);
    }

    v53[0] = *v10;
    v40 = *(v10 + 72);
    *(v53 + *(v53[0] - 3)) = *(v10 + 64);
    v54 = v40;
    v55 = MEMORY[0x277D82878] + 16;
    if (v58 < 0)
    {
      operator delete(v57);
    }

    v55 = MEMORY[0x277D82868] + 16;
    std::locale::~locale(v56);
    std::iostream::~basic_iostream();
    MEMORY[0x23EE863B0](v59);
  }

  std::stringbuf::str[abi:ne200100](&v63, v53);
  std::pair<std::string,std::vector<std::string>>::pair[abi:ne200100]<std::string,std::vector<std::string>&,0>(a1, v53, v60);
  if (SHIBYTE(v54) < 0)
  {
    operator delete(v53[0]);
  }

  v53[0] = v60;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v53);
  v61[0] = *v10;
  v41 = *(v10 + 72);
  *(v61 + *(v61[0] - 24)) = *(v10 + 64);
  v62 = v41;
  v63 = MEMORY[0x277D82878] + 16;
  if (v65 < 0)
  {
    operator delete(v64[7].__locale_);
  }

  v63 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v64);
  std::iostream::~basic_iostream();
  return MEMORY[0x23EE863B0](&v66);
}

void sub_23A35EF08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61, uint64_t a62, uint64_t a63)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a26);
  a26 = &a61;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a26);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a64);
  _Unwind_Resume(a1);
}

uint64_t std::pair<std::string,std::vector<std::string>>::~pair(uint64_t a1)
{
  v3 = (a1 + 24);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void Phase::Controller::SpatialModelerInstance::FinishClusterQuery(Phase::Controller::SpatialModelerInstance *this, Phase::Controller::SpatialQueryInstance *a2, Phase::SpatialModeler::PriorityQueue *a3, Phase::Controller::SpatialModelerInstance::GraphData *a4)
{
  v186 = *MEMORY[0x277D85DE8];
  v4 = a3 + 816;
  v5 = atomic_load(a3 + 204);
  if (v5 == 5)
  {
    v74 = Phase::Controller::SpatialQueryInstance::GetInputAs<Phase::SpatialModeler::ClusterSetInput<float>>(a3 + 816);
    v75 = Phase::Controller::SpatialQueryInstance::GetOutputAs<Phase::SpatialModeler::ClusterSetOutput<float>>(v4);
    sGenerateClusterSetInputStrings(v171, v74);
    ClusterSetOutputStrings = sGenerateClusterSetOutputStrings(v167, v75);
    v77 = **(Phase::Logger::GetInstance(ClusterSetOutputStrings) + 240);
    if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
    {
      sGenerateSpatialModelerInfoString(__p, *(this + 733));
      v78 = v166;
      v79 = __p[0];
      v80 = v172;
      v81 = v171[0];
      v82 = *(v74 + 18);
      v83 = v168;
      v84 = v167[0];
      v85 = *(v75 + 18);
      v162 = *(a3 + 54);
      sGenerateErrorCodeString(&v163, &v162);
      *&buf[4] = "CvmSpatialModelerInstance.mm";
      *&buf[12] = 1024;
      v86 = v167;
      if (v83 < 0)
      {
        v86 = v84;
      }

      *&buf[14] = 2059;
      v87 = v171;
      if (v80 < 0)
      {
        v87 = v81;
      }

      v88 = __p;
      *buf = 136316930;
      if (v78 < 0)
      {
        v88 = v79;
      }

      *&buf[18] = 2080;
      v89 = &v163;
      if (v164 < 0)
      {
        v89 = *&v163.__val_;
      }

      *&buf[20] = v88;
      *&buf[28] = 2080;
      *&buf[30] = v87;
      v176 = 2048;
      v177 = v82;
      v178 = 2080;
      v179 = v86;
      v180 = 2048;
      v181 = v85;
      v182 = 2080;
      v183 = v89;
      _os_log_impl(&dword_23A302000, v77, OS_LOG_TYPE_ERROR, "%25s:%-5d (%s) - cluster query cancelled (%s, submix count: %zu, ...) (%s, submix count: %zu, ...) (%s)", buf, 0x4Eu);
      if (v164 < 0)
      {
        operator delete(*&v163.__val_);
      }

      if (v166 < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (v174 != v173)
    {
      v91 = 0;
      do
      {
        v92 = **(Phase::Logger::GetInstance(v90) + 240);
        if (os_log_type_enabled(v92, OS_LOG_TYPE_ERROR))
        {
          sGenerateSpatialModelerInfoString(__p, *(this + 733));
          v93 = __p[0];
          if (v166 >= 0)
          {
            v93 = __p;
          }

          v94 = (v173 + 24 * v91);
          if (*(v94 + 23) < 0)
          {
            v94 = *v94;
          }

          ++v91;
          *buf = 136316418;
          *&buf[4] = "CvmSpatialModelerInstance.mm";
          *&buf[12] = 1024;
          *&buf[14] = 2064;
          *&buf[18] = 2080;
          *&buf[20] = v93;
          *&buf[28] = 2048;
          *&buf[30] = v91;
          v176 = 2048;
          v177 = 0xAAAAAAAAAAAAAAABLL * ((v174 - v173) >> 3);
          v178 = 2080;
          v179 = v94;
          _os_log_impl(&dword_23A302000, v92, OS_LOG_TYPE_ERROR, "%25s:%-5d %s - followup ClusterSetInput log %zu of %zu (%s)", buf, 0x3Au);
          if (v166 < 0)
          {
            operator delete(__p[0]);
          }
        }

        else
        {
          ++v91;
        }
      }

      while (v91 < 0xAAAAAAAAAAAAAAABLL * ((v174 - v173) >> 3));
    }

    if (v170 != v169)
    {
      v95 = 0;
      do
      {
        v96 = **(Phase::Logger::GetInstance(v90) + 240);
        if (os_log_type_enabled(v96, OS_LOG_TYPE_ERROR))
        {
          sGenerateSpatialModelerInfoString(__p, *(this + 733));
          v97 = __p[0];
          if (v166 >= 0)
          {
            v97 = __p;
          }

          v98 = (v169 + 24 * v95);
          if (*(v98 + 23) < 0)
          {
            v98 = *v98;
          }

          ++v95;
          *buf = 136316418;
          *&buf[4] = "CvmSpatialModelerInstance.mm";
          *&buf[12] = 1024;
          *&buf[14] = 2070;
          *&buf[18] = 2080;
          *&buf[20] = v97;
          *&buf[28] = 2048;
          *&buf[30] = v95;
          v176 = 2048;
          v177 = 0xAAAAAAAAAAAAAAABLL * ((v170 - v169) >> 3);
          v178 = 2080;
          v179 = v98;
          _os_log_impl(&dword_23A302000, v96, OS_LOG_TYPE_ERROR, "%25s:%-5d %s - followup ClusterSetOutput log %zu of %zu (%s)", buf, 0x3Au);
          if (v166 < 0)
          {
            operator delete(__p[0]);
          }
        }

        else
        {
          ++v95;
        }
      }

      while (v95 < 0xAAAAAAAAAAAAAAABLL * ((v170 - v169) >> 3));
    }

    goto LABEL_154;
  }

  if (v5 == 4)
  {
    v49 = Phase::Controller::SpatialQueryInstance::GetInputAs<Phase::SpatialModeler::ClusterSetInput<float>>(a3 + 816);
    v50 = Phase::Controller::SpatialQueryInstance::GetOutputAs<Phase::SpatialModeler::ClusterSetOutput<float>>(v4);
    sGenerateClusterSetInputStrings(v171, v49);
    v51 = sGenerateClusterSetOutputStrings(v167, v50);
    v52 = **(Phase::Logger::GetInstance(v51) + 240);
    if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
    {
      sGenerateSpatialModelerInfoString(__p, *(this + 733));
      v53 = v166;
      v54 = __p[0];
      v55 = v172;
      v56 = v171[0];
      v57 = *(v49 + 18);
      v58 = v168;
      v59 = v167[0];
      v60 = *(v50 + 18);
      v162 = *(a3 + 54);
      sGenerateErrorCodeString(&v163, &v162);
      *&buf[4] = "CvmSpatialModelerInstance.mm";
      *&buf[12] = 1024;
      v61 = v167;
      if (v58 < 0)
      {
        v61 = v59;
      }

      *&buf[14] = 2029;
      v62 = v171;
      if (v55 < 0)
      {
        v62 = v56;
      }

      v63 = __p;
      *buf = 136316930;
      if (v53 < 0)
      {
        v63 = v54;
      }

      *&buf[18] = 2080;
      v64 = &v163;
      if (v164 < 0)
      {
        v64 = *&v163.__val_;
      }

      *&buf[20] = v63;
      *&buf[28] = 2080;
      *&buf[30] = v62;
      v176 = 2048;
      v177 = v57;
      v178 = 2080;
      v179 = v61;
      v180 = 2048;
      v181 = v60;
      v182 = 2080;
      v183 = v64;
      _os_log_impl(&dword_23A302000, v52, OS_LOG_TYPE_ERROR, "%25s:%-5d (%s) - cluster query failed (%s, submix count: %zu, ...) (%s, submix count: %zu, ...) (%s)", buf, 0x4Eu);
      if (v164 < 0)
      {
        operator delete(*&v163.__val_);
      }

      if (v166 < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (v174 != v173)
    {
      v66 = 0;
      do
      {
        v67 = **(Phase::Logger::GetInstance(v65) + 240);
        if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
        {
          sGenerateSpatialModelerInfoString(__p, *(this + 733));
          v68 = __p[0];
          if (v166 >= 0)
          {
            v68 = __p;
          }

          v69 = (v173 + 24 * v66);
          if (*(v69 + 23) < 0)
          {
            v69 = *v69;
          }

          ++v66;
          *buf = 136316418;
          *&buf[4] = "CvmSpatialModelerInstance.mm";
          *&buf[12] = 1024;
          *&buf[14] = 2034;
          *&buf[18] = 2080;
          *&buf[20] = v68;
          *&buf[28] = 2048;
          *&buf[30] = v66;
          v176 = 2048;
          v177 = 0xAAAAAAAAAAAAAAABLL * ((v174 - v173) >> 3);
          v178 = 2080;
          v179 = v69;
          _os_log_impl(&dword_23A302000, v67, OS_LOG_TYPE_ERROR, "%25s:%-5d %s - followup ClusterSetInput log %zu of %zu (%s)", buf, 0x3Au);
          if (v166 < 0)
          {
            operator delete(__p[0]);
          }
        }

        else
        {
          ++v66;
        }
      }

      while (v66 < 0xAAAAAAAAAAAAAAABLL * ((v174 - v173) >> 3));
    }

    if (v170 != v169)
    {
      v70 = 0;
      do
      {
        v71 = **(Phase::Logger::GetInstance(v65) + 240);
        if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
        {
          sGenerateSpatialModelerInfoString(__p, *(this + 733));
          v72 = __p[0];
          if (v166 >= 0)
          {
            v72 = __p;
          }

          v73 = (v169 + 24 * v70);
          if (*(v73 + 23) < 0)
          {
            v73 = *v73;
          }

          ++v70;
          *buf = 136316418;
          *&buf[4] = "CvmSpatialModelerInstance.mm";
          *&buf[12] = 1024;
          *&buf[14] = 2040;
          *&buf[18] = 2080;
          *&buf[20] = v72;
          *&buf[28] = 2048;
          *&buf[30] = v70;
          v176 = 2048;
          v177 = 0xAAAAAAAAAAAAAAABLL * ((v170 - v169) >> 3);
          v178 = 2080;
          v179 = v73;
          _os_log_impl(&dword_23A302000, v71, OS_LOG_TYPE_ERROR, "%25s:%-5d %s - followup ClusterSetOutput log %zu of %zu (%s)", buf, 0x3Au);
          if (v166 < 0)
          {
            operator delete(__p[0]);
          }
        }

        else
        {
          ++v70;
        }
      }

      while (v70 < 0xAAAAAAAAAAAAAAABLL * ((v170 - v169) >> 3));
    }

LABEL_154:
    *buf = &v169;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](buf);
    if (v168 < 0)
    {
      operator delete(v167[0]);
    }

    *buf = &v173;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](buf);
    if (v172 < 0)
    {
      operator delete(v171[0]);
    }

    goto LABEL_269;
  }

  v6 = v5 - 3;
  if (!v6)
  {
    *&v163.__val_ = 0;
    v8 = Phase::Controller::SpatialQueryInstance::GetOutputAs<Phase::SpatialModeler::ClusterSetOutput<float>>(a3 + 816);
    v9 = Phase::Controller::SpatialQueryInstance::GetInputAs<Phase::SpatialModeler::ClusterSetInput<float>>(v4);
    v10 = v9;
    v11 = *(a3 + 121);
    v12 = *(a3 + 120);
    if (*(v8 + 18) == (v11 - v12) >> 4)
    {
      if (*(v8 + 1) && (v13 = *(v8 + 6)) != 0)
      {
        if (*(v8 + 7) && *(v8 + 12))
        {
          v159 = *(v9 + 5);
          if (v13 > v159)
          {
            sGenerateClusterSetInputStrings(v171, v9);
            v14 = sGenerateClusterSetOutputStrings(v167, v8);
            v15 = **(Phase::Logger::GetInstance(v14) + 240);
            if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
            {
              sGenerateSpatialModelerInfoString(__p, *(this + 733));
              if (v166 >= 0)
              {
                v16 = __p;
              }

              else
              {
                v16 = __p[0];
              }

              v17 = v171;
              if (v172 < 0)
              {
                v17 = v171[0];
              }

              v18 = *(v10 + 18);
              v19 = v167;
              if (v168 < 0)
              {
                v19 = v167[0];
              }

              v20 = *(v8 + 18);
              *buf = 136317186;
              *&buf[4] = "CvmSpatialModelerInstance.mm";
              *&buf[12] = 1024;
              *&buf[14] = 1873;
              *&buf[18] = 2080;
              *&buf[20] = v16;
              *&buf[28] = 2080;
              *&buf[30] = v17;
              v176 = 2048;
              v177 = v18;
              v178 = 2080;
              v179 = v19;
              v180 = 2048;
              v181 = v20;
              v182 = 2048;
              v183 = v13;
              v184 = 2048;
              v185 = v159;
              _os_log_impl(&dword_23A302000, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d (%s) - cluster query returned more render groups than the input maximum cluster count. pruning excess clusters. this may sound incorrect. (%s, submix count: %zu, ...) (%s, submix count: %zu, ...) (render group count: %zu, maximum cluster count: %zu)", buf, 0x58u);
              if (v166 < 0)
              {
                operator delete(__p[0]);
              }
            }

            if (v174 != v173)
            {
              v22 = 0;
              do
              {
                v23 = **(Phase::Logger::GetInstance(v21) + 240);
                if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
                {
                  sGenerateSpatialModelerInfoString(__p, *(this + 733));
                  v24 = __p[0];
                  if (v166 >= 0)
                  {
                    v24 = __p;
                  }

                  v25 = (v173 + 24 * v22);
                  if (*(v25 + 23) < 0)
                  {
                    v25 = *v25;
                  }

                  ++v22;
                  *buf = 136316418;
                  *&buf[4] = "CvmSpatialModelerInstance.mm";
                  *&buf[12] = 1024;
                  *&buf[14] = 1878;
                  *&buf[18] = 2080;
                  *&buf[20] = v24;
                  *&buf[28] = 2048;
                  *&buf[30] = v22;
                  v176 = 2048;
                  v177 = 0xAAAAAAAAAAAAAAABLL * ((v174 - v173) >> 3);
                  v178 = 2080;
                  v179 = v25;
                  _os_log_impl(&dword_23A302000, v23, OS_LOG_TYPE_ERROR, "%25s:%-5d %s - followup ClusterSetInput log %zu of %zu (%s)", buf, 0x3Au);
                  if (v166 < 0)
                  {
                    operator delete(__p[0]);
                  }
                }

                else
                {
                  ++v22;
                }
              }

              while (v22 < 0xAAAAAAAAAAAAAAABLL * ((v174 - v173) >> 3));
            }

            if (v170 != v169)
            {
              v26 = 0;
              do
              {
                v27 = **(Phase::Logger::GetInstance(v21) + 240);
                if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
                {
                  sGenerateSpatialModelerInfoString(__p, *(this + 733));
                  v28 = __p[0];
                  if (v166 >= 0)
                  {
                    v28 = __p;
                  }

                  v29 = (v169 + 24 * v26);
                  if (*(v29 + 23) < 0)
                  {
                    v29 = *v29;
                  }

                  ++v26;
                  *buf = 136316418;
                  *&buf[4] = "CvmSpatialModelerInstance.mm";
                  *&buf[12] = 1024;
                  *&buf[14] = 1884;
                  *&buf[18] = 2080;
                  *&buf[20] = v28;
                  *&buf[28] = 2048;
                  *&buf[30] = v26;
                  v176 = 2048;
                  v177 = 0xAAAAAAAAAAAAAAABLL * ((v170 - v169) >> 3);
                  v178 = 2080;
                  v179 = v29;
                  _os_log_impl(&dword_23A302000, v27, OS_LOG_TYPE_ERROR, "%25s:%-5d %s - followup ClusterSetOutput log %zu of %zu (%s)", buf, 0x3Au);
                  if (v166 < 0)
                  {
                    operator delete(__p[0]);
                  }
                }

                else
                {
                  ++v26;
                }
              }

              while (v26 < 0xAAAAAAAAAAAAAAABLL * ((v170 - v169) >> 3));
            }

            std::pair<std::string,std::vector<std::string>>::~pair(v167);
            std::pair<std::string,std::vector<std::string>>::~pair(v171);
            v11 = *(a3 + 121);
            v12 = *(a3 + 120);
          }

          if (v11 != v12)
          {
            v30 = 0;
            v31 = 0;
            do
            {
              *v167 = *(v12 + v30);
              v32 = std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>>>::find<Phase::UniqueObjectId>(a2 + 5, v167);
              v33 = v32;
              if (v32)
              {
                if (*(v8 + 18) <= v31)
                {
                  goto LABEL_288;
                }

                v34 = *(*(v8 + 13) + v30);
                if (v34 == -1 || v34 >= *(v8 + 6))
                {
                  v39 = **(Phase::Logger::GetInstance(v32) + 240);
                  if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
                  {
                    sGenerateSpatialModelerInfoString(v171, *(this + 733));
                    v40 = v172 >= 0 ? v171 : v171[0];
                    v41 = v33[4];
                    *buf = 136315906;
                    *&buf[4] = "CvmSpatialModelerInstance.mm";
                    *&buf[12] = 1024;
                    *&buf[14] = 1912;
                    *&buf[18] = 2080;
                    *&buf[20] = v40;
                    *&buf[28] = 2048;
                    *&buf[30] = v41;
                    _os_log_impl(&dword_23A302000, v39, OS_LOG_TYPE_ERROR, "%25s:%-5d (%s) - submix routing emitted without a valid render group. submix will not be updated. (submix: %llu)", buf, 0x26u);
                    if (v172 < 0)
                    {
                      operator delete(v171[0]);
                    }
                  }
                }

                else
                {
                  if (v34 >= v159)
                  {
                    v34 = 0;
                  }

                  v35 = (*(v8 + 1) + 336 * v34);
                  if (*v35 || *(v35 + 1))
                  {
                    *(v32 + 7) = *v35;
                    *(v32 + 9) = exp(*(*(v8 + 13) + v30 + 8) * 10.0 / 10.0 * 0.115129255);
                    RenderGroup = Phase::Controller::RenderGroupMgr::GetRenderGroup((a3 + 1024), *(v33 + 7));
                    if (RenderGroup)
                    {
                      v37 = *RenderGroup;
                      v38 = RenderGroup[1];
                      Phase::Controller::RenderGroupMgr::SetSubmixSendLevel(a3 + 1024, v33[4], v33[5], *(v33 + 9));
                      Phase::Controller::RenderGroupMgr::SetSubmixRendererId(a3 + 1024, v33[4], v33[5], v37, v38);
                      if (*(v33 + 80) == 1)
                      {
                        *buf = *(v33 + 2);
                        *&buf[16] = *(v33 + 7);
                        operator new();
                      }

                      operator new();
                    }

                    v42 = **(Phase::Logger::GetInstance(0) + 240);
                    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
                    {
                      sGenerateSpatialModelerInfoString(v171, *(this + 733));
                      if (v172 >= 0)
                      {
                        v43 = v171;
                      }

                      else
                      {
                        v43 = v171[0];
                      }

                      v44 = *a3 - 1;
                      v45 = "<invalid>";
                      if (v44 <= 2)
                      {
                        v45 = off_278B4F000[v44];
                      }

                      v46 = *v35;
                      *buf = 136316162;
                      *&buf[4] = "CvmSpatialModelerInstance.mm";
                      *&buf[12] = 1024;
                      *&buf[14] = 1953;
                      *&buf[18] = 2080;
                      *&buf[20] = v43;
                      *&buf[28] = 2080;
                      *&buf[30] = v45;
                      v176 = 2048;
                      v177 = v46;
                      _os_log_impl(&dword_23A302000, v42, OS_LOG_TYPE_DEFAULT, "%25s:%-5d (%s) - added render group to render group manager (graph: %s, cluster: %llu)", buf, 0x30u);
                      if (v172 < 0)
                      {
                        operator delete(v171[0]);
                      }
                    }

                    Phase::Controller::RenderGroupMgr::NewRenderGroup((a3 + 1024), v35);
                  }

                  v39 = **(Phase::Logger::GetInstance(v32) + 240);
                  if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
                  {
                    sGenerateSpatialModelerInfoString(v171, *(this + 733));
                    v47 = v172 >= 0 ? v171 : v171[0];
                    v48 = v33[4];
                    *buf = 136315906;
                    *&buf[4] = "CvmSpatialModelerInstance.mm";
                    *&buf[12] = 1024;
                    *&buf[14] = 1932;
                    *&buf[18] = 2080;
                    *&buf[20] = v47;
                    *&buf[28] = 2048;
                    *&buf[30] = v48;
                    _os_log_impl(&dword_23A302000, v39, OS_LOG_TYPE_ERROR, "%25s:%-5d (%s) - submix assigned to a render group without a valid id. submix will not be updated. (submix: %llu)", buf, 0x26u);
                    if (v172 < 0)
                    {
                      operator delete(v171[0]);
                    }
                  }
                }
              }

              ++v31;
              v12 = *(a3 + 120);
              v30 += 16;
            }

            while (v31 < (*(a3 + 121) - v12) >> 4);
          }

          if (*(v8 + 6))
          {
            v152 = 0;
            v153 = 0;
            do
            {
              v154 = *(v8 + 1);
              v155 = (v154 + v152);
              v156 = Phase::Controller::RenderGroupMgr::GetRenderGroup((a3 + 1024), *(v154 + v152));
              v157 = v156;
              if (v156)
              {
                v158 = *(*(v8 + 7) + v153);
                if (*(v156 + 352) != v158 || *(v154 + v152 + 16) != *(v156 + 4) || *v155 != *(v156 + 2) || v155[1] != *(v156 + 3) || Phase::operator!=<float>((v154 + v152 + 24), v156 + 10) || *(v154 + v152 + 184) != *(v157 + 25) || *(v154 + v152 + 192) != v157[52] || *(v154 + v152 + 196) != v157[53] || *(v154 + v152 + 200) != v157[54] || *(v154 + v152 + 320) != *(v157 + 336))
                {
                  Phase::Controller::RenderGroupMgr::UpdateRenderGroup((a3 + 1024), (v154 + v152), v158);
                }
              }

              ++v153;
              v152 += 336;
            }

            while (*(v8 + 6) > v153);
          }

          goto LABEL_268;
        }

        sGenerateClusterSetInputStrings(v171, v9);
        v133 = sGenerateClusterSetOutputStrings(v167, v8);
        v134 = **(Phase::Logger::GetInstance(v133) + 240);
        if (os_log_type_enabled(v134, OS_LOG_TYPE_ERROR))
        {
          sGenerateSpatialModelerInfoString(__p, *(this + 733));
          if (v166 >= 0)
          {
            v135 = __p;
          }

          else
          {
            v135 = __p[0];
          }

          v136 = v171;
          if (v172 < 0)
          {
            v136 = v171[0];
          }

          v137 = *(v10 + 18);
          v138 = v167;
          if (v168 < 0)
          {
            v138 = v167[0];
          }

          v139 = *(v8 + 18);
          *buf = 136316674;
          *&buf[4] = "CvmSpatialModelerInstance.mm";
          *&buf[12] = 1024;
          *&buf[14] = 1843;
          *&buf[18] = 2080;
          *&buf[20] = v135;
          *&buf[28] = 2080;
          *&buf[30] = v136;
          v176 = 2048;
          v177 = v137;
          v178 = 2080;
          v179 = v138;
          v180 = 2048;
          v181 = v139;
          _os_log_impl(&dword_23A302000, v134, OS_LOG_TYPE_ERROR, "%25s:%-5d (%s) - cluster query output render group spatial update flag array is null or empty. cluster query aborted. (%s, submix count: %zu, ...) (%s, submix count: %zu, ...)", buf, 0x44u);
          if (v166 < 0)
          {
            operator delete(__p[0]);
          }
        }

        if (v174 != v173)
        {
          v141 = 0;
          do
          {
            v142 = **(Phase::Logger::GetInstance(v140) + 240);
            if (os_log_type_enabled(v142, OS_LOG_TYPE_ERROR))
            {
              sGenerateSpatialModelerInfoString(__p, *(this + 733));
              v143 = __p[0];
              if (v166 >= 0)
              {
                v143 = __p;
              }

              v144 = (v173 + 24 * v141);
              if (*(v144 + 23) < 0)
              {
                v144 = *v144;
              }

              ++v141;
              *buf = 136316418;
              *&buf[4] = "CvmSpatialModelerInstance.mm";
              *&buf[12] = 1024;
              *&buf[14] = 1848;
              *&buf[18] = 2080;
              *&buf[20] = v143;
              *&buf[28] = 2048;
              *&buf[30] = v141;
              v176 = 2048;
              v177 = 0xAAAAAAAAAAAAAAABLL * ((v174 - v173) >> 3);
              v178 = 2080;
              v179 = v144;
              _os_log_impl(&dword_23A302000, v142, OS_LOG_TYPE_ERROR, "%25s:%-5d %s - followup ClusterSetInput log %zu of %zu (%s)", buf, 0x3Au);
              if (v166 < 0)
              {
                operator delete(__p[0]);
              }
            }

            else
            {
              ++v141;
            }
          }

          while (v141 < 0xAAAAAAAAAAAAAAABLL * ((v174 - v173) >> 3));
        }

        if (v170 != v169)
        {
          v145 = 0;
          do
          {
            v146 = **(Phase::Logger::GetInstance(v140) + 240);
            if (os_log_type_enabled(v146, OS_LOG_TYPE_ERROR))
            {
              sGenerateSpatialModelerInfoString(__p, *(this + 733));
              v147 = __p[0];
              if (v166 >= 0)
              {
                v147 = __p;
              }

              v148 = (v169 + 24 * v145);
              if (*(v148 + 23) < 0)
              {
                v148 = *v148;
              }

              ++v145;
              *buf = 136316418;
              *&buf[4] = "CvmSpatialModelerInstance.mm";
              *&buf[12] = 1024;
              *&buf[14] = 1854;
              *&buf[18] = 2080;
              *&buf[20] = v147;
              *&buf[28] = 2048;
              *&buf[30] = v145;
              v176 = 2048;
              v177 = 0xAAAAAAAAAAAAAAABLL * ((v170 - v169) >> 3);
              v178 = 2080;
              v179 = v148;
              _os_log_impl(&dword_23A302000, v146, OS_LOG_TYPE_ERROR, "%25s:%-5d %s - followup ClusterSetOutput log %zu of %zu (%s)", buf, 0x3Au);
              if (v166 < 0)
              {
                operator delete(__p[0]);
              }
            }

            else
            {
              ++v145;
            }
          }

          while (v145 < 0xAAAAAAAAAAAAAAABLL * ((v170 - v169) >> 3));
        }
      }

      else
      {
        sGenerateClusterSetInputStrings(v171, v9);
        v117 = sGenerateClusterSetOutputStrings(v167, v8);
        v118 = **(Phase::Logger::GetInstance(v117) + 240);
        if (os_log_type_enabled(v118, OS_LOG_TYPE_ERROR))
        {
          sGenerateSpatialModelerInfoString(__p, *(this + 733));
          if (v166 >= 0)
          {
            v119 = __p;
          }

          else
          {
            v119 = __p[0];
          }

          v120 = v171;
          if (v172 < 0)
          {
            v120 = v171[0];
          }

          v121 = *(v10 + 18);
          v122 = v167;
          if (v168 < 0)
          {
            v122 = v167[0];
          }

          v123 = *(v8 + 18);
          *buf = 136316674;
          *&buf[4] = "CvmSpatialModelerInstance.mm";
          *&buf[12] = 1024;
          *&buf[14] = 1815;
          *&buf[18] = 2080;
          *&buf[20] = v119;
          *&buf[28] = 2080;
          *&buf[30] = v120;
          v176 = 2048;
          v177 = v121;
          v178 = 2080;
          v179 = v122;
          v180 = 2048;
          v181 = v123;
          _os_log_impl(&dword_23A302000, v118, OS_LOG_TYPE_ERROR, "%25s:%-5d (%s) - cluster query output render groups array is null or empty. cluster query aborted. (%s, submix count: %zu, ...) (%s, submix count: %zu, ...)", buf, 0x44u);
          if (v166 < 0)
          {
            operator delete(__p[0]);
          }
        }

        if (v174 != v173)
        {
          v125 = 0;
          do
          {
            v126 = **(Phase::Logger::GetInstance(v124) + 240);
            if (os_log_type_enabled(v126, OS_LOG_TYPE_ERROR))
            {
              sGenerateSpatialModelerInfoString(__p, *(this + 733));
              v127 = __p[0];
              if (v166 >= 0)
              {
                v127 = __p;
              }

              v128 = (v173 + 24 * v125);
              if (*(v128 + 23) < 0)
              {
                v128 = *v128;
              }

              ++v125;
              *buf = 136316418;
              *&buf[4] = "CvmSpatialModelerInstance.mm";
              *&buf[12] = 1024;
              *&buf[14] = 1820;
              *&buf[18] = 2080;
              *&buf[20] = v127;
              *&buf[28] = 2048;
              *&buf[30] = v125;
              v176 = 2048;
              v177 = 0xAAAAAAAAAAAAAAABLL * ((v174 - v173) >> 3);
              v178 = 2080;
              v179 = v128;
              _os_log_impl(&dword_23A302000, v126, OS_LOG_TYPE_ERROR, "%25s:%-5d %s - followup ClusterSetInput log %zu of %zu (%s)", buf, 0x3Au);
              if (v166 < 0)
              {
                operator delete(__p[0]);
              }
            }

            else
            {
              ++v125;
            }
          }

          while (v125 < 0xAAAAAAAAAAAAAAABLL * ((v174 - v173) >> 3));
        }

        if (v170 != v169)
        {
          v129 = 0;
          do
          {
            v130 = **(Phase::Logger::GetInstance(v124) + 240);
            if (os_log_type_enabled(v130, OS_LOG_TYPE_ERROR))
            {
              sGenerateSpatialModelerInfoString(__p, *(this + 733));
              v131 = __p[0];
              if (v166 >= 0)
              {
                v131 = __p;
              }

              v132 = (v169 + 24 * v129);
              if (*(v132 + 23) < 0)
              {
                v132 = *v132;
              }

              ++v129;
              *buf = 136316418;
              *&buf[4] = "CvmSpatialModelerInstance.mm";
              *&buf[12] = 1024;
              *&buf[14] = 1826;
              *&buf[18] = 2080;
              *&buf[20] = v131;
              *&buf[28] = 2048;
              *&buf[30] = v129;
              v176 = 2048;
              v177 = 0xAAAAAAAAAAAAAAABLL * ((v170 - v169) >> 3);
              v178 = 2080;
              v179 = v132;
              _os_log_impl(&dword_23A302000, v130, OS_LOG_TYPE_ERROR, "%25s:%-5d %s - followup ClusterSetOutput log %zu of %zu (%s)", buf, 0x3Au);
              if (v166 < 0)
              {
                operator delete(__p[0]);
              }
            }

            else
            {
              ++v129;
            }
          }

          while (v129 < 0xAAAAAAAAAAAAAAABLL * ((v170 - v169) >> 3));
        }
      }
    }

    else
    {
      sGenerateClusterSetInputStrings(v171, v9);
      v101 = sGenerateClusterSetOutputStrings(v167, v8);
      v102 = **(Phase::Logger::GetInstance(v101) + 240);
      if (os_log_type_enabled(v102, OS_LOG_TYPE_ERROR))
      {
        sGenerateSpatialModelerInfoString(__p, *(this + 733));
        if (v166 >= 0)
        {
          v103 = __p;
        }

        else
        {
          v103 = __p[0];
        }

        v104 = v171;
        if (v172 < 0)
        {
          v104 = v171[0];
        }

        v105 = *(v10 + 18);
        v106 = v167;
        if (v168 < 0)
        {
          v106 = v167[0];
        }

        v107 = *(v8 + 18);
        *buf = 136316674;
        *&buf[4] = "CvmSpatialModelerInstance.mm";
        *&buf[12] = 1024;
        *&buf[14] = 1788;
        *&buf[18] = 2080;
        *&buf[20] = v103;
        *&buf[28] = 2080;
        *&buf[30] = v104;
        v176 = 2048;
        v177 = v105;
        v178 = 2080;
        v179 = v106;
        v180 = 2048;
        v181 = v107;
        _os_log_impl(&dword_23A302000, v102, OS_LOG_TYPE_ERROR, "%25s:%-5d (%s) - failed to submit cluster query (%s, submix count: %zu, ...) (%s, submix count: %zu, ...)", buf, 0x44u);
        if (v166 < 0)
        {
          operator delete(__p[0]);
        }
      }

      if (v174 != v173)
      {
        v109 = 0;
        do
        {
          v110 = **(Phase::Logger::GetInstance(v108) + 240);
          if (os_log_type_enabled(v110, OS_LOG_TYPE_ERROR))
          {
            sGenerateSpatialModelerInfoString(__p, *(this + 733));
            v111 = __p[0];
            if (v166 >= 0)
            {
              v111 = __p;
            }

            v112 = (v173 + 24 * v109);
            if (*(v112 + 23) < 0)
            {
              v112 = *v112;
            }

            ++v109;
            *buf = 136316418;
            *&buf[4] = "CvmSpatialModelerInstance.mm";
            *&buf[12] = 1024;
            *&buf[14] = 1793;
            *&buf[18] = 2080;
            *&buf[20] = v111;
            *&buf[28] = 2048;
            *&buf[30] = v109;
            v176 = 2048;
            v177 = 0xAAAAAAAAAAAAAAABLL * ((v174 - v173) >> 3);
            v178 = 2080;
            v179 = v112;
            _os_log_impl(&dword_23A302000, v110, OS_LOG_TYPE_ERROR, "%25s:%-5d %s - followup ClusterSetInput log %zu of %zu (%s)", buf, 0x3Au);
            if (v166 < 0)
            {
              operator delete(__p[0]);
            }
          }

          else
          {
            ++v109;
          }
        }

        while (v109 < 0xAAAAAAAAAAAAAAABLL * ((v174 - v173) >> 3));
      }

      if (v170 != v169)
      {
        v113 = 0;
        do
        {
          v114 = **(Phase::Logger::GetInstance(v108) + 240);
          if (os_log_type_enabled(v114, OS_LOG_TYPE_ERROR))
          {
            sGenerateSpatialModelerInfoString(__p, *(this + 733));
            v115 = __p[0];
            if (v166 >= 0)
            {
              v115 = __p;
            }

            v116 = (v169 + 24 * v113);
            if (*(v116 + 23) < 0)
            {
              v116 = *v116;
            }

            ++v113;
            *buf = 136316418;
            *&buf[4] = "CvmSpatialModelerInstance.mm";
            *&buf[12] = 1024;
            *&buf[14] = 1799;
            *&buf[18] = 2080;
            *&buf[20] = v115;
            *&buf[28] = 2048;
            *&buf[30] = v113;
            v176 = 2048;
            v177 = 0xAAAAAAAAAAAAAAABLL * ((v170 - v169) >> 3);
            v178 = 2080;
            v179 = v116;
            _os_log_impl(&dword_23A302000, v114, OS_LOG_TYPE_ERROR, "%25s:%-5d %s - followup ClusterSetOutput log %zu of %zu (%s)", buf, 0x3Au);
            if (v166 < 0)
            {
              operator delete(__p[0]);
            }
          }

          else
          {
            ++v113;
          }
        }

        while (v113 < 0xAAAAAAAAAAAAAAABLL * ((v170 - v169) >> 3));
      }
    }

    *buf = &v169;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](buf);
    if (v168 < 0)
    {
      operator delete(v167[0]);
    }

    *buf = &v173;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](buf);
    if (v172 < 0)
    {
      operator delete(v171[0]);
    }

LABEL_268:
    Phase::SortedCommandQueue<Phase::SpatialModeler::PriorityQueue,Phase::SpatialModeler::PriorityQueueCommandType,std::variant<std::monostate,Phase::SpatialModeler::PriorityQueueEntry,Phase::UniqueObjectId,Phase::SpatialModeler::PriorityQueueClusterIndexUpdate,Phase::SpatialModeler::PriorityQueueGlobals>>::CommandBatch::Clear(&v163);
    goto LABEL_269;
  }

  if (v6 <= 0xFFFFFFFD)
  {
LABEL_288:
    std::terminate();
  }

  v99 = **(Phase::Logger::GetInstance(this) + 240);
  if (os_log_type_enabled(v99, OS_LOG_TYPE_ERROR))
  {
    sGenerateSpatialModelerInfoString(v171, *(this + 733));
    v100 = v172 >= 0 ? v171 : v171[0];
    *buf = 136315650;
    *&buf[4] = "CvmSpatialModelerInstance.mm";
    *&buf[12] = 1024;
    *&buf[14] = 2083;
    *&buf[18] = 2080;
    *&buf[20] = v100;
    _os_log_impl(&dword_23A302000, v99, OS_LOG_TYPE_ERROR, "%25s:%-5d (%s) - unexpected cluster query status. query not finished in the update callback", buf, 0x1Cu);
    if (v172 < 0)
    {
      operator delete(v171[0]);
    }
  }

LABEL_269:
  v149 = a3;
  atomic_store(0, a3 + 204);
  v150 = *(v149 + 111);
  *(v149 + 55) = 0u;
  if (v150)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v150);
  }

  v151 = a3;
  atomic_store(0, a3 + 230);
  Phase::Controller::RenderGroupMgr::SendChanges((v151 + 1024));
}

void sub_23A360F3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  std::pair<std::string,std::vector<std::string>>::~pair(&a28);
  std::pair<std::string,std::vector<std::string>>::~pair(&a34);
  Phase::SortedCommandQueue<Phase::SpatialModeler::PriorityQueue,Phase::SpatialModeler::PriorityQueueCommandType,std::variant<std::monostate,Phase::SpatialModeler::PriorityQueueEntry,Phase::UniqueObjectId,Phase::SpatialModeler::PriorityQueueClusterIndexUpdate,Phase::SpatialModeler::PriorityQueueGlobals>>::CommandBatch::Clear(&a19);
  _Unwind_Resume(a1);
}

Phase::Logger *Phase::Controller::SpatialQueryInstance::GetOutputAs<Phase::SpatialModeler::ClusterSetOutput<float>>(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  result = *(a1 + 120);
  if (!result || *result != 2)
  {
    v3 = a1;
    v4 = **(Phase::Logger::GetInstance(result) + 400);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = **(v3 + 120);
      v7 = 136315906;
      v8 = "CvmSpatialQueryInstance.hpp";
      v9 = 1024;
      v10 = 121;
      v11 = 1024;
      v12 = 2;
      v13 = 1024;
      v14 = v5;
      _os_log_impl(&dword_23A302000, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::invalid_argument) [nullptr == pOutput is true]: Bad spatial query output cast: expected type: %i, actual type: %i", &v7, 0x1Eu);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "Bad spatial query output cast: expected type: %i, actual type: %i");
  }

  return result;
}

uint64_t sGenerateClusterSetOutputStrings(uint64_t a1, void *a2)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v66);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v67, "type: ClusterSetOutput", 22);
  v3 = 0;
  memset(v65, 0, sizeof(v65));
  v4 = a2[18];
  v51 = v4 / 0xA;
  v5 = MEMORY[0x277D82818];
  v47 = v4;
  if (v4 >= 0xA)
  {
    v6 = 0;
    v54 = 0;
    v7 = 0;
    v49 = *(MEMORY[0x277D82818] + 64);
    v50 = *MEMORY[0x277D82818];
    v48 = *(MEMORY[0x277D82818] + 72);
    do
    {
      v53 = v7;
      std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v58);
      v8 = 0;
      v52 = v6;
      v9 = v54 + 9;
      v10 = v58[0];
      v11 = v6;
      do
      {
        v12 = *(&v58[1] + *(v10 - 3));
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v59, "{", 1);
        v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v59, "index: ", 7);
        v14 = v54 + v8;
        MEMORY[0x23EE86160](v13, v54 + v8);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v59, ", ", 2);
        v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v59, "send: ", 6);
        v16 = MEMORY[0x23EE86110](v15, *(a2[13] + v11 + 8));
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, " dB", 3);
        v17 = *(a2[13] + v11);
        if (v17 == -1 || v17 >= a2[6])
        {
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v59, ", ", 2);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v59, "<invalid render group index>", 28);
        }

        else
        {
          v18 = *(a2[1] + 336 * v17 + 16);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v59, ", ", 2);
          if (v18)
          {
            v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v59, "source: ", 8);
            v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "0x", 2);
            *(v20 + *(*v20 - 24) + 8) |= 0x4000u;
            v21 = std::operator<<[abi:ne200100]<std::char_traits<char>>(v20, 48);
            v22 = *v21;
            *(v21 + *(*v21 - 24) + 24) = 8;
            *(v21 + *(v22 - 24) + 8) = *(v21 + *(v22 - 24) + 8) & 0xFFFFFFB5 | 8;
            MEMORY[0x23EE86170]();
          }

          else
          {
            v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v59, "cluster: ", 9);
            MEMORY[0x23EE86170](v25, *(a2[1] + 336 * v17));
          }
        }

        if (v14 >= v9)
        {
          v23 = "}";
        }

        else
        {
          v23 = "}, ";
        }

        if (v14 >= v9)
        {
          v24 = 1;
        }

        else
        {
          v24 = 3;
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v59, v23, v24);
        v10 = v58[0];
        *(&v58[1] + *(v58[0] - 3)) = v12;
        ++v8;
        v11 += 16;
      }

      while (v8 != 10);
      std::stringbuf::str[abi:ne200100](&v60, __p);
      std::vector<std::string>::push_back[abi:ne200100](v65, __p);
      v5 = MEMORY[0x277D82818];
      v3 = v54 + 10;
      if (v57 < 0)
      {
        operator delete(__p[0]);
      }

      v58[0] = v50;
      *(v58 + *(v50 - 3)) = v49;
      v59 = v48;
      v60 = MEMORY[0x277D82878] + 16;
      if (v63 < 0)
      {
        operator delete(v62);
      }

      v60 = MEMORY[0x277D82868] + 16;
      std::locale::~locale(v61);
      std::iostream::~basic_iostream();
      MEMORY[0x23EE863B0](v64);
      v7 = v53 + 1;
      v6 = v52 + 160;
      v54 += 10;
    }

    while (v53 + 1 != v51);
  }

  v26 = v47 - 10 * v51;
  if (v26)
  {
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v58);
    if (v3 < v3 + v26)
    {
      v55 = v3 + 9;
      v27 = v58[0];
      v28 = 16 * v3;
      do
      {
        v29 = *(&v58[1] + *(v27 - 3));
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v59, "{", 1);
        v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v59, "index: ", 7);
        MEMORY[0x23EE86160](v30, v3);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v59, ", ", 2);
        v31 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v59, "send: ", 6);
        v32 = MEMORY[0x23EE86110](v31, *(a2[13] + v28 + 8));
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, " dB", 3);
        v33 = v3;
        v34 = *(a2[13] + v28);
        if (v34 == -1 || v34 >= a2[6])
        {
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v59, ", ", 2);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v59, "<invalid render group index>", 28);
        }

        else
        {
          v35 = *(a2[1] + 336 * v34 + 16);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v59, ", ", 2);
          if (v35)
          {
            v36 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v59, "source: ", 8);
            v37 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v36, "0x", 2);
            *(v37 + *(*v37 - 24) + 8) |= 0x4000u;
            v38 = std::operator<<[abi:ne200100]<std::char_traits<char>>(v37, 48);
            v39 = *v38;
            *(v38 + *(*v38 - 24) + 24) = 8;
            *(v38 + *(v39 - 24) + 8) = *(v38 + *(v39 - 24) + 8) & 0xFFFFFFB5 | 8;
            MEMORY[0x23EE86170]();
          }

          else
          {
            v42 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v59, "cluster: ", 9);
            MEMORY[0x23EE86170](v42, *(a2[1] + 336 * v34));
          }
        }

        if (v33 >= v55)
        {
          v40 = "}";
        }

        else
        {
          v40 = "}, ";
        }

        if (v33 >= v55)
        {
          v41 = 1;
        }

        else
        {
          v41 = 3;
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v59, v40, v41);
        v27 = v58[0];
        *(&v58[1] + *(v58[0] - 3)) = v29;
        v3 = v33 + 1;
        v28 += 16;
        --v26;
      }

      while (v26);
    }

    std::stringbuf::str[abi:ne200100](&v60, __p);
    std::vector<std::string>::push_back[abi:ne200100](v65, __p);
    v5 = MEMORY[0x277D82818];
    if (v57 < 0)
    {
      operator delete(__p[0]);
    }

    v58[0] = *v5;
    v43 = *(v5 + 72);
    *(v58 + *(v58[0] - 3)) = *(v5 + 64);
    v59 = v43;
    v60 = MEMORY[0x277D82878] + 16;
    if (v63 < 0)
    {
      operator delete(v62);
    }

    v60 = MEMORY[0x277D82868] + 16;
    std::locale::~locale(v61);
    std::iostream::~basic_iostream();
    MEMORY[0x23EE863B0](v64);
  }

  std::stringbuf::str[abi:ne200100](&v68, v58);
  std::pair<std::string,std::vector<std::string>>::pair[abi:ne200100]<std::string,std::vector<std::string>&,0>(a1, v58, v65);
  if (SHIBYTE(v59) < 0)
  {
    operator delete(v58[0]);
  }

  v58[0] = v65;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v58);
  v66[0] = *v5;
  v44 = *(v5 + 72);
  *(v66 + *(v66[0] - 24)) = *(v5 + 64);
  v67 = v44;
  v68 = MEMORY[0x277D82878] + 16;
  if (v70 < 0)
  {
    operator delete(v69[7].__locale_);
  }

  v68 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v69);
  std::iostream::~basic_iostream();
  return MEMORY[0x23EE863B0](&v71);
}

void sub_23A361CCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, char a63)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a28);
  a28 = &a63;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a28);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a66);
  _Unwind_Resume(a1);
}

_BYTE *Phase::UniqueObjectId::str@<X0>(Phase::UniqueObjectId *this@<X0>, _BYTE *a2@<X8>)
{
  v5 = *MEMORY[0x277D85DE8];
  memset(v4, 0, sizeof(v4));
  uuid_unparse(this, v4);
  return std::string::basic_string[abi:ne200100]<0>(a2, v4);
}

Phase::Logger *Phase::Controller::SpatialQueryInstance::GetInputAs<Phase::SpatialModeler::RenderGroupInput<float>>(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  result = *(a1 + 112);
  if (!result || *result != 2)
  {
    v3 = a1;
    v4 = **(Phase::Logger::GetInstance(result) + 400);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = **(v3 + 112);
      v7 = 136315906;
      v8 = "CvmSpatialQueryInstance.hpp";
      v9 = 1024;
      v10 = 98;
      v11 = 1024;
      v12 = 2;
      v13 = 1024;
      v14 = v5;
      _os_log_impl(&dword_23A302000, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::invalid_argument) [nullptr == pInput is true]: Bad spatial query input cast: expected type: %i, actual type: %i", &v7, 0x1Eu);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "Bad spatial query input cast: expected type: %i, actual type: %i");
  }

  return result;
}

void Phase::Controller::SpatialModelerInstance::DestroyTempSpatialGraphData(uint64_t a1, uint64_t a2)
{
  for (i = *(a2 + 1000); i; i = *i)
  {
    v7 = *(Phase::Controller::SpatialQueryInstance::GetInputAs<Phase::SpatialModeler::RenderGroupInput<float>>(i[4]) + 12);
    Phase::Controller::RenderGroupMgr::GetRendererForRenderGroup((a2 + 1600), v7, &v4);
    if (v4)
    {
      atomic_store(0, (v4 + 60));
    }

    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }

  std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::pair<std::unique_ptr<Phase::Controller::SpatialQueryInstance>,std::vector<Phase::Controller::SpatialModelerInstance::SubmixHandleInfo>>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::pair<std::unique_ptr<Phase::Controller::SpatialQueryInstance>,std::vector<Phase::Controller::SpatialModelerInstance::SubmixHandleInfo>>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::pair<std::unique_ptr<Phase::Controller::SpatialQueryInstance>,std::vector<Phase::Controller::SpatialModelerInstance::SubmixHandleInfo>>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::pair<std::unique_ptr<Phase::Controller::SpatialQueryInstance>,std::vector<Phase::Controller::SpatialModelerInstance::SubmixHandleInfo>>>>>::clear(a2 + 984);
}

uint64_t sGenerateRenderGroupInputString(_BYTE *a1, uint64_t a2)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v16);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v17, "type: RenderGroupInput", 22);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v17, ", ", 2);
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v17, "listener: ", 10);
  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "0x", 2);
  *(v5 + *(*v5 - 24) + 8) |= 0x4000u;
  v6 = std::operator<<[abi:ne200100]<std::char_traits<char>>(v5, 48);
  v7 = *v6;
  *(v6 + *(*v6 - 24) + 24) = 8;
  *(v6 + *(v7 - 24) + 8) = *(v6 + *(v7 - 24) + 8) & 0xFFFFFFB5 | 8;
  MEMORY[0x23EE86170]();
  v8 = *(a2 + 208);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v17, ", ", 2);
  if (v8)
  {
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v17, "source: ", 8);
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "0x", 2);
    *(v10 + *(*v10 - 24) + 8) |= 0x4000u;
    v11 = std::operator<<[abi:ne200100]<std::char_traits<char>>(v10, 48);
    v12 = *v11;
    *(v11 + *(*v11 - 24) + 24) = 8;
    *(v11 + *(v12 - 24) + 8) = *(v11 + *(v12 - 24) + 8) & 0xFFFFFFB5 | 8;
    MEMORY[0x23EE86170]();
  }

  else
  {
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v17, "cluster: ", 9);
    MEMORY[0x23EE86170](v13, *(a2 + 192));
  }

  std::stringbuf::str[abi:ne200100](&v18, a1);
  v16[0] = *MEMORY[0x277D82818];
  v14 = *(MEMORY[0x277D82818] + 72);
  *(v16 + *(v16[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v17 = v14;
  v18 = MEMORY[0x277D82878] + 16;
  if (v20 < 0)
  {
    operator delete(v19[7].__locale_);
  }

  v18 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v19);
  std::iostream::~basic_iostream();
  return MEMORY[0x23EE863B0](&v21);
}

void sub_23A3623A4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

uint64_t sGenerateDirectionalMetadataOutputString(_BYTE *a1, uint64_t a2)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v7);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, "type: DirectionalMetadataOutput", 31);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, ", ", 2);
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, "direction count: ", 17);
  MEMORY[0x23EE86160](v4, *(a2 + 48));
  std::stringbuf::str[abi:ne200100](&v9, a1);
  v7[0] = *MEMORY[0x277D82818];
  v5 = *(MEMORY[0x277D82818] + 72);
  *(v7 + *(v7[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v8 = v5;
  v9 = MEMORY[0x277D82878] + 16;
  if (v11 < 0)
  {
    operator delete(v10[7].__locale_);
  }

  v9 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v10);
  std::iostream::~basic_iostream();
  return MEMORY[0x23EE863B0](&v12);
}

void sub_23A362594(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

void Phase::Controller::SpatialModelerInstance::DestroyAllTempGraphData(uint64_t a1, uint64_t a2)
{
  std::__hash_table<std::__hash_value_type<unsigned long long,std::unique_ptr<Phase::Controller::SpatialQueryInstance>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<Phase::Controller::SpatialQueryInstance>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<Phase::Controller::SpatialQueryInstance>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unique_ptr<Phase::Controller::SpatialQueryInstance>>>>::clear(a2 + 776);
  v4 = Phase::Controller::SpatialModelerInstance::DestroyTempClusterGraphData(v3, a2);

  Phase::Controller::SpatialModelerInstance::DestroyTempSpatialGraphData(v4, a2);
}

uint64_t *Phase::Controller::SpatialModelerInstance::DestroyTempClusterGraphData(uint64_t a1, uint64_t a2)
{
  v3 = Phase::Controller::SpatialQueryInstance::GetInputAs<Phase::SpatialModeler::ClusterSetInput<float>>(a2 + 816);
  std::unique_ptr<Phase::SpatialModeler::SubmixRoutingInput [],std::function<void ()(void *)>>::reset[abi:ne200100](v3 + 13);
  v3[18] = 0;
  std::unique_ptr<Phase::SpatialModeler::RenderGroup [],std::function<void ()(void *)>>::reset[abi:ne200100](v3 + 7);
  v3[12] = 0;
  v4 = Phase::Controller::SpatialQueryInstance::GetOutputAs<Phase::SpatialModeler::ClusterSetOutput<float>>(a2 + 816);
  std::unique_ptr<Phase::SpatialModeler::RenderGroup [],std::function<void ()(void *)>>::reset[abi:ne200100](v4 + 1);
  v4[6] = 0;
  std::unique_ptr<BOOL [],std::function<void ()(void *)>>::reset[abi:ne200100](v4 + 7);
  v4[12] = 0;
  result = std::unique_ptr<Phase::SpatialModeler::SubmixRoutingOutput [],std::function<void ()(void *)>>::reset[abi:ne200100](v4 + 13);
  v4[18] = 0;
  *(a2 + 968) = *(a2 + 960);
  return result;
}

uint64_t std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>@<X0>(const void **a1@<X0>, const void **a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a1 + 23) >= 0)
  {
    v5 = *(a1 + 23);
  }

  else
  {
    v5 = a1[1];
  }

  if (*(a2 + 23) >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  result = std::string::basic_string[abi:ne200100](a3, v6 + v5);
  if (*(result + 23) >= 0)
  {
    v8 = result;
  }

  else
  {
    v8 = *result;
  }

  if (v5)
  {
    if (*(a1 + 23) >= 0)
    {
      v9 = a1;
    }

    else
    {
      v9 = *a1;
    }

    result = memmove(v8, v9, v5);
  }

  v10 = &v8[v5];
  if (v6)
  {
    if (*(a2 + 23) >= 0)
    {
      v11 = a2;
    }

    else
    {
      v11 = *a2;
    }

    result = memmove(v10, v11, v6);
  }

  v10[v6] = 0;
  return result;
}

void Phase::Controller::SpatialModelerInstance::BuildIRs(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  if (a2[126])
  {
    Phase::Controller::SpatialModelerInstance::GetLatestSubmixState(&v22, a1);
    if (v24)
    {
      v4 = v22;
      while (!*v4)
      {
        v4 += 3;
        if (v4 >= &v22[3 * v24])
        {
          goto LABEL_27;
        }
      }

      v5.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
      v6 = a2[125];
      if (v6)
      {
        v7 = v5.__d_.__rep_ / 1000000000.0;
        do
        {
          v8 = v6[2].mStorage[0];
          v9 = atomic_load(v8);
          if (v9)
          {
            if (v9 == 3)
            {
              Phase::Controller::RenderGroupMgr::GetRendererForRenderGroup((a2 + 200), v6[1], &__p);
              v10 = __p;
              if (!__p)
              {
                if (v20)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v20);
                }

                break;
              }

              v12 = v6[2].mStorage[1];
              v11 = v6[3].mStorage[0];
              while (v12 != v11)
              {
                v13 = v12[1];
                *buf = *v12;
                *&buf[16] = v13;
                v14 = std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>>>::find<Phase::UniqueObjectId>(a2 + 68, buf);
                if (!v14)
                {
                  std::terminate();
                }

                v14[11] = v7;
                v12 += 2;
              }

              v18 = *(*(v8 + 120) + 4);
              if ((v18 | (*(*v10 + 64))(v10)))
              {
                *buf = 2;
                *&buf[8] = v8;
                (*(*v10 + 56))(v10, buf);
              }

              atomic_store(0, v10 + 60);
              v5.__d_.__rep_ = v20;
              if (v20)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v20);
              }
            }

            else
            {
              v15 = **(Phase::Logger::GetInstance(v5.__d_.__rep_) + 240);
              if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
              {
                Phase::Controller::SpatialModelerInstance::GetDescription(&__p, a1);
                p_p = &__p;
                if (v21 < 0)
                {
                  p_p = __p;
                }

                v17 = *(*(a1 + 5864) + 24);
                *buf = 136315906;
                *&buf[4] = "CvmSpatialModelerInstance.mm";
                *&buf[12] = 1024;
                *&buf[14] = 3384;
                *&buf[18] = 2080;
                *&buf[20] = p_p;
                *&buf[28] = 2048;
                *&buf[30] = v17;
                _os_log_impl(&dword_23A302000, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: Invalid Spatial Query status in Build IR node for instance %llu", buf, 0x26u);
                if (v21 < 0)
                {
                  operator delete(__p);
                }
              }
            }
          }

          v6 = v6->mStorage[0];
        }

        while (v6);
      }
    }

LABEL_27:
    if (v23)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v23);
    }
  }
}

void sub_23A362A74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a15);
  }

  _Unwind_Resume(exception_object);
}

__n128 Phase::Controller::SpatialModelerInstance::CopyRuntimeSettingsFrom(Phase::Controller::SpatialModelerInstance *this, __n128 *a2)
{
  Phase::Controller::SpatialModelerInstance::ClearRegisteredSubmixState(this);
  Phase::Controller::SubmixSlotMap<Phase::Controller::SpatialModelerInstance::SubmixInfo>::DeepCopyFrom(this + 8, &a2->n128_i64[1]);
  v4 = *(this + 6);
  v5 = *(this + 16);
  v6 = &v4[3 * v5];
  if (v5)
  {
    v7 = *v4;
    if (!*v4)
    {
      v8 = v4 + 3;
      while (1)
      {
        v4 = v8;
        if (v8 >= v6)
        {
          break;
        }

        v8 += 3;
        v7 = *v4;
        if (*v4)
        {
          goto LABEL_9;
        }
      }

      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

LABEL_9:
  if (v4 != v6)
  {
    v9 = *v7;
    v10 = v7[1];
    v11 = a2[404].n128_u64[1];
    v16[0] = *v7;
    v16[1] = v10;
    if (std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>>>::find<Phase::UniqueObjectId>((v11 + 160), v16))
    {
      InputSendLevel = Phase::Controller::SpatialSubmixRouter::GetInputSendLevel(a2[404].n128_i64[1], v9, v10);
      Phase::Controller::SpatialModelerInstance::AddInput(this, v9, v10, InputSendLevel);
      v17.mStorage[0] = v9;
      v17.mStorage[1] = v10;
      PlayState = Phase::Controller::SpatialSubmixRouter::GetPlayState(a2[404].n128_u64[1], v17);
      Phase::Controller::SpatialModelerInstance::SetPlayState(this, v9, v10, PlayState);
    }

    operator new();
  }

  Phase::Controller::SpatialSubmixRouter::CopyRuntimeSettingsFrom(*(this + 809), a2[404].n128_u64[1]);
  v14 = atomic_load(&a2[19].n128_u64[1]);
  atomic_store(v14, this + 39);
  result = a2[20];
  *(this + 20) = result;
  return result;
}

void Phase::Controller::SubmixSlotMap<Phase::Controller::SpatialModelerInstance::SubmixInfo>::DeepCopyFrom(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    *(a1 + 32) = *(a2 + 32);
    std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,Phase::Handle64>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,Phase::Handle64>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,Phase::Handle64>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,Phase::Handle64>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<Phase::UniqueObjectId,Phase::Handle64>,void *> *>>(a1, *(a2 + 16), 0);
  }

  _ZN5Phase7details13SharedSlotMapINS_10Controller22SpatialModelerInstance10SubmixInfoENS_8Handle64EE12DeepCopyFromIZNS_13SharedSlotMapIS4_S5_DnE12DeepCopyFromERKS9_EUlRT_E_EEvRKS6_OSC_(a1 + 40, a2 + 40);
}

double Phase::Controller::RenderGroupMgr::RenderGroupMgr(Phase::Controller::RenderGroupMgr *this)
{
  v1 = 0;
  v2 = *&off_284D30CE8;
  *(this + 2) = xmmword_284D30CD8;
  *(this + 3) = v2;
  *(this + 4) = xmmword_284D30CF8;
  v3 = *&off_284D30CC8;
  *this = xmmword_284D30CB8;
  *(this + 1) = v3;
  *(this + 10) = 0;
  *(this + 11) = this;
  *(this + 12) = this;
  *(this + 13) = 0;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 42) = 1065353216;
  *(this + 11) = 0u;
  *(this + 12) = 0u;
  *(this + 52) = 1065353216;
  *(this + 216) = 0u;
  *(this + 232) = 0u;
  *(this + 62) = 1065353216;
  *(this + 32) = 0;
  do
  {
    v4 = this + v1;
    v5 = (this + v1 + 264);
    *v5 = 0uLL;
    v5[1] = 0uLL;
    *(v4 + 74) = 1065353216;
    *(v4 + 19) = 0uLL;
    *(v4 + 20) = 0uLL;
    *(v4 + 84) = 1065353216;
    v6 = (this + v1 + 344);
    *v6 = 0uLL;
    v6[1] = 0uLL;
    v1 += 120;
    *(v4 + 94) = 1065353216;
  }

  while (v1 != 240);
  *(this + 63) = this + 264;
  *(this + 64) = this + 384;
  *(this + 568) = 0;
  result = 0.0;
  *(this + 520) = 0u;
  *(this + 536) = 0u;
  *(this + 552) = 0u;
  return result;
}

void Phase::Controller::RenderGroupMgr::~RenderGroupMgr(atomic_ullong *this)
{
  Phase::Controller::RenderGroupMgr::Reset(this);
  v2 = this[68];
  if (v2)
  {
    this[69] = v2;
    operator delete(v2);
  }

  v3 = this[65];
  if (v3)
  {
    this[66] = v3;
    operator delete(v3);
  }

  v4 = 30;
  do
  {
    std::__hash_table<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::__unordered_map_hasher<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::hash<Phase::SpatialCategory>,std::equal_to<Phase::SpatialCategory>,true>,std::__unordered_map_equal<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::equal_to<Phase::SpatialCategory>,std::hash<Phase::SpatialCategory>,true>,std::allocator<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>>>::~__hash_table(&this[v4 + 28]);
    std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::weak_ptr<Phase::Controller::Renderer>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::weak_ptr<Phase::Controller::Renderer>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::weak_ptr<Phase::Controller::Renderer>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::weak_ptr<Phase::Controller::Renderer>>>>::~__hash_table(&this[v4 + 23]);
    std::__hash_table<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::__unordered_map_hasher<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::hash<Phase::SpatialCategory>,std::equal_to<Phase::SpatialCategory>,true>,std::__unordered_map_equal<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::equal_to<Phase::SpatialCategory>,std::hash<Phase::SpatialCategory>,true>,std::allocator<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>>>::~__hash_table(&this[v4 + 18]);
    v4 -= 15;
  }

  while (v4 * 8);
  std::__hash_table<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::__unordered_map_hasher<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::hash<Phase::SpatialCategory>,std::equal_to<Phase::SpatialCategory>,true>,std::__unordered_map_equal<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::equal_to<Phase::SpatialCategory>,std::hash<Phase::SpatialCategory>,true>,std::allocator<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>>>::~__hash_table((this + 27));
  std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::weak_ptr<Phase::Controller::Renderer>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::weak_ptr<Phase::Controller::Renderer>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::weak_ptr<Phase::Controller::Renderer>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::weak_ptr<Phase::Controller::Renderer>>>>::~__hash_table((this + 22));
  std::__hash_table<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::__unordered_map_hasher<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::hash<Phase::SpatialCategory>,std::equal_to<Phase::SpatialCategory>,true>,std::__unordered_map_equal<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::equal_to<Phase::SpatialCategory>,std::hash<Phase::SpatialCategory>,true>,std::allocator<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>>>::~__hash_table((this + 17));
  Phase::SortedCommandQueue<Phase::Controller::RenderGroupMgr,Phase::Controller::RenderGroupMgr::CommandType,std::variant<std::monostate,Phase::UniqueObjectId,std::pair<Phase::SpatialModeler::RenderGroup,std::weak_ptr<Phase::Controller::Renderer>>,std::pair<Phase::SpatialModeler::RenderGroup,BOOL>,std::pair<Phase::UniqueObjectId,double>,std::pair<Phase::UniqueObjectId,Phase::UniqueObjectId>,std::pair<Phase::UniqueObjectId,std::weak_ptr<Phase::Controller::Renderer>>,std::pair<Phase::UniqueObjectId,Phase::SpatialModeler::PointSourceHistory>>>::CommandBatch::Clear(this + 13);
}

uint64_t std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::weak_ptr<Phase::Controller::Renderer>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::weak_ptr<Phase::Controller::Renderer>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::weak_ptr<Phase::Controller::Renderer>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::weak_ptr<Phase::Controller::Renderer>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::weak_ptr<Phase::Controller::Renderer>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::weak_ptr<Phase::Controller::Renderer>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::weak_ptr<Phase::Controller::Renderer>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::weak_ptr<Phase::Controller::Renderer>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::weak_ptr<Phase::Controller::Renderer>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::weak_ptr<Phase::Controller::Renderer>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::weak_ptr<Phase::Controller::Renderer>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::weak_ptr<Phase::Controller::Renderer>>>>::__deallocate_node(int a1, void *__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      v4 = v2[5];
      if (v4)
      {
        std::__shared_weak_count::__release_weak(v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void *Phase::SortedCommandQueue<Phase::Controller::RenderGroupMgr,Phase::Controller::RenderGroupMgr::CommandType,std::variant<std::monostate,Phase::UniqueObjectId,std::pair<Phase::SpatialModeler::RenderGroup,std::weak_ptr<Phase::Controller::Renderer>>,std::pair<Phase::SpatialModeler::RenderGroup,BOOL>,std::pair<Phase::UniqueObjectId,double>,std::pair<Phase::UniqueObjectId,Phase::UniqueObjectId>,std::pair<Phase::UniqueObjectId,std::weak_ptr<Phase::Controller::Renderer>>,std::pair<Phase::UniqueObjectId,Phase::SpatialModeler::PointSourceHistory>>>::CommandBatch::Clear(void *result)
{
  v1 = result;
  v2 = *result;
  if (*result)
  {
    do
    {
      v3 = *(v2 + 392);
      Phase::SortedCommandQueue<Phase::Controller::RenderGroupMgr,Phase::Controller::RenderGroupMgr::CommandType,std::variant<std::monostate,Phase::UniqueObjectId,std::pair<Phase::SpatialModeler::RenderGroup,std::weak_ptr<Phase::Controller::Renderer>>,std::pair<Phase::SpatialModeler::RenderGroup,BOOL>,std::pair<Phase::UniqueObjectId,double>,std::pair<Phase::UniqueObjectId,Phase::UniqueObjectId>,std::pair<Phase::UniqueObjectId,std::weak_ptr<Phase::Controller::Renderer>>,std::pair<Phase::UniqueObjectId,Phase::SpatialModeler::PointSourceHistory>>>::CommandBatch::Clear(v2 + 384);
      std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,Phase::UniqueObjectId,std::pair<Phase::SpatialModeler::RenderGroup,std::weak_ptr<Phase::Controller::Renderer>>,std::pair<Phase::SpatialModeler::RenderGroup,BOOL>,std::pair<Phase::UniqueObjectId,double>,std::pair<Phase::UniqueObjectId,Phase::UniqueObjectId>,std::pair<Phase::UniqueObjectId,std::weak_ptr<Phase::Controller::Renderer>>,std::pair<Phase::UniqueObjectId,Phase::SpatialModeler::PointSourceHistory>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v2 + 16);
      result = MEMORY[0x23EE864A0](v2, 0x1022C40C27FBB97);
      v2 = v3;
    }

    while (v3);
  }

  *v1 = 0;
  return result;
}

uint64_t std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,Phase::UniqueObjectId,std::pair<Phase::SpatialModeler::RenderGroup,std::weak_ptr<Phase::Controller::Renderer>>,std::pair<Phase::SpatialModeler::RenderGroup,BOOL>,std::pair<Phase::UniqueObjectId,double>,std::pair<Phase::UniqueObjectId,Phase::UniqueObjectId>,std::pair<Phase::UniqueObjectId,std::weak_ptr<Phase::Controller::Renderer>>,std::pair<Phase::UniqueObjectId,Phase::SpatialModeler::PointSourceHistory>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](uint64_t result)
{
  v1 = result;
  v2 = *(result + 352);
  if (v2 != -1)
  {
    result = (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8ne200100IZNS0_6__dtorINS0_8__traitsIJNS_9monostateEN5Phase14UniqueObjectIdENS_4pairINS7_14SpatialModeler11RenderGroupENS_8weak_ptrINS7_10Controller8RendererEEEEENS9_ISB_bEENS9_IS8_dEENS9_IS8_S8_EENS9_IS8_SF_EENS9_IS8_NSA_18PointSourceHistoryEEEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRSP_EEEDcOSQ_DpOT0____fmatrix[v2])(&v3, result);
  }

  *(v1 + 352) = -1;
  return result;
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_9monostateEN5Phase14UniqueObjectIdENS_4pairINS9_14SpatialModeler11RenderGroupENS_8weak_ptrINS9_10Controller8RendererEEEEENSB_ISD_bEENSB_ISA_dEENSB_ISA_SA_EENSB_ISA_SH_EENSB_ISA_NSC_18PointSourceHistoryEEEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSQ_1EJS8_SA_SI_SJ_SK_SL_SM_SO_EEEEEEDcSS_DpT0_(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 344);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm6EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_9monostateEN5Phase14UniqueObjectIdENS_4pairINS9_14SpatialModeler11RenderGroupENS_8weak_ptrINS9_10Controller8RendererEEEEENSB_ISD_bEENSB_ISA_dEENSB_ISA_SA_EENSB_ISA_SH_EENSB_ISA_NSC_18PointSourceHistoryEEEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSQ_1EJS8_SA_SI_SJ_SK_SL_SM_SO_EEEEEEDcSS_DpT0_(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 24);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }
}

uint64_t std::deque<double>::~deque[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  *(a1 + 40) = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = *(a1 + 16);
      v2 = (*(a1 + 8) + 8);
      *(a1 + 8) = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 256;
    goto LABEL_7;
  }

  if (v4 == 2)
  {
    v5 = 512;
LABEL_7:
    *(a1 + 32) = v5;
  }

  if (v2 != v3)
  {
    do
    {
      v6 = *v2++;
      operator delete(v6);
    }

    while (v2 != v3);
    v8 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (v7 != v8)
    {
      *(a1 + 16) = v7 + ((v8 - v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::vector<Phase::SpatialModeler::Graph>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 184;
      do
      {
        v10 = (v6 + 160);
        std::vector<Phase::SpatialModeler::GraphNode>::__destroy_vector::operator()[abi:ne200100](&v10);
        v7 = *(v6 + 152);
        if (v7)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v7);
        }

        v8 = *(v6 + 136);
        if (v8)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v8);
        }

        std::__function::__value_func<void ()(Phase::SpatialModeler::Graph &)>::~__value_func[abi:ne200100](v6 + 96);
        std::__function::__value_func<void ()(Phase::SpatialModeler::Graph &)>::~__value_func[abi:ne200100](v6 + 64);
        v10 = (v6 + 24);
        std::vector<Phase::SpatialModeler::GraphDescriptionNode>::__destroy_vector::operator()[abi:ne200100](&v10);
        if (*(v6 + 23) < 0)
        {
          operator delete(*v6);
        }

        v9 = (v6 - 8);
        v6 -= 192;
      }

      while (v9 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<Phase::SpatialModeler::GraphNode>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 32;
      do
      {
        std::__function::__value_func<void ()(Phase::SpatialModeler::GraphNode &)>::~__value_func[abi:ne200100](v6);
        v7 = *(v6 - 8);
        *(v6 - 8) = 0;
        if (v7)
        {
          Phase::SpatialModeler::ActiveQuery::~ActiveQuery(v7);
          MEMORY[0x23EE864A0]();
        }

        if (*(v6 - 17) < 0)
        {
          operator delete(*(v6 - 40));
        }

        v8 = v6 - 64;
        v6 -= 96;
      }

      while (v8 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::__function::__value_func<void ()(Phase::SpatialModeler::GraphNode &)>::~__value_func[abi:ne200100](uint64_t a1)
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

void Phase::SpatialModeler::ActiveQuery::~ActiveQuery(Phase::SpatialModeler::ActiveQuery *this)
{
  v2 = *(this + 10);
  *(this + 10) = 0;
  if (v2)
  {
    Phase::SpatialModeler::ActiveQuery::~ActiveQuery(v2);
    MEMORY[0x23EE864A0]();
  }

  v3 = *(this + 6);
  if (v3)
  {
    *(this + 7) = v3;
    operator delete(v3);
  }

  std::unique_ptr<Phase::SpatialModeler::QueryState,std::function<void ()(void *)>>::reset[abi:ne200100](this + 1, 0);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](this + 16);
}

uint64_t *std::unique_ptr<Phase::SpatialModeler::QueryState,std::function<void ()(void *)>>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v3 = *result;
  *result = a2;
  if (v3)
  {
    return std::function<void ()(void *)>::operator()((result + 1), v3);
  }

  return result;
}

uint64_t std::__function::__value_func<void ()(Phase::SpatialModeler::Graph &)>::~__value_func[abi:ne200100](uint64_t a1)
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

void std::vector<std::pair<std::unique_ptr<Phase::Controller::SpatialQueryInstance>,std::vector<Phase::Controller::SpatialModelerInstance::SubmixHandleInfo>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v6 = *(v4 - 3);
        if (v6)
        {
          *(v4 - 2) = v6;
          operator delete(v6);
        }

        v4 -= 4;
        std::unique_ptr<Phase::Controller::SpatialQueryInstance>::reset[abi:ne200100](v4, 0);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t Phase::Controller::SubmixSlotMap<Phase::Controller::SpatialModelerInstance::SubmixInfo>::~SubmixSlotMap(uint64_t a1)
{
  std::condition_variable::~condition_variable((a1 + 184));
  std::condition_variable::~condition_variable((a1 + 136));
  std::mutex::~mutex((a1 + 72));
  v2 = *(a1 + 48);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return std::__hash_table<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::__unordered_map_hasher<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::hash<Phase::SpatialCategory>,std::equal_to<Phase::SpatialCategory>,true>,std::__unordered_map_equal<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::equal_to<Phase::SpatialCategory>,std::hash<Phase::SpatialCategory>,true>,std::allocator<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>>>::~__hash_table(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::tuple<Phase::SpatialModeler::GraphDescription &,unsigned long,Phase::SpatialModeler::PriorityQueue &>>>(unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__hash_table<std::__hash_value_type<unsigned int,Phase::Controller::OptionalProperties::Property>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,Phase::Controller::OptionalProperties::Property>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,Phase::Controller::OptionalProperties::Property>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,Phase::Controller::OptionalProperties::Property>>>::__rehash<true>(uint64_t a1, size_t __n)
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

    std::__throw_bad_array_new_length[abi:ne200100]();
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

uint64_t Phase::Controller::Parameter<double>::Initialize(uint64_t result, double a2, double a3, double a4)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a2 > a3)
  {
    v5 = **(Phase::Logger::GetInstance(result) + 720);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v10 = 136315394;
      v11 = "CvmParameter.hpp";
      v12 = 1024;
      v13 = 72;
      _os_log_impl(&dword_23A302000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::invalid_argument) [inMinimumValue > inMaximumValue is true]: inMinimumValue > inMaximumValue", &v10, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "inMinimumValue > inMaximumValue");
  }

  if (a4 < a2 || a4 > a3)
  {
    v7 = **(Phase::Logger::GetInstance(result) + 720);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v10 = 136315394;
      v11 = "CvmParameter.hpp";
      v12 = 1024;
      v13 = 74;
      _os_log_impl(&dword_23A302000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::invalid_argument) [inDefaultValue < inMinimumValue || inDefaultValue > inMaximumValue is true]: inDefaultValue is out-of-range", &v10, 0x12u);
    }

    v9 = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](v9, "inDefaultValue is out-of-range");
  }

  *result = a2;
  *(result + 8) = a3;
  *(result + 16) = a4;
  *(result + 24) = a4;
  *(result + 32) = 0;
  return result;
}

uint64_t std::vector<Phase::SpatialModeler::EntityShapeTemplate>::__init_with_size[abi:ne200100]<Phase::SpatialModeler::EntityShapeTemplate*,Phase::SpatialModeler::EntityShapeTemplate*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<Phase::SpatialModeler::EntityShapeTemplate>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_23A363950(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<Phase::SpatialModeler::EntityShapeTemplate>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<Phase::SpatialModeler::EntityShapeTemplate>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<Phase::SpatialModeler::EntityShapeTemplate>>(a1, a2);
  }

  std::vector<Phase::SpatialModeler::OptionalPropertyDescription>::__throw_length_error[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<Phase::SpatialModeler::EntityShapeTemplate>,Phase::SpatialModeler::EntityShapeTemplate*,Phase::SpatialModeler::EntityShapeTemplate*,Phase::SpatialModeler::EntityShapeTemplate*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v7 = 0;
    do
    {
      v8 = a2 + v7;
      *(a4 + v7) = *(a2 + v7);
      std::unordered_map<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalHash,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalEqualTo,std::allocator<std::pair<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey const,Phase::OptionsValue>>>::unordered_map(a4 + v7 + 8, a2 + v7 + 8);
      *(a4 + v7 + 48) = *(a2 + v7 + 48);
      v7 += 56;
    }

    while (v8 + 56 != a3);
    a4 += v7;
  }

  return a4;
}

void sub_23A363A40(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    v4 = -v1;
    v5 = v2 - 48;
    do
    {
      v5 = std::__hash_table<std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>,std::__unordered_map_hasher<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalHash,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalEqualTo,true>,std::__unordered_map_equal<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalEqualTo,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalHash,true>,std::allocator<std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>>>::~__hash_table(v5) - 56;
      v4 += 56;
    }

    while (v4);
  }

  _Unwind_Resume(exception_object);
}

void *std::operator<<[abi:ne200100]<std::char_traits<char>>(void *a1, char a2)
{
  v4 = a1 + *(*a1 - 24);
  if (*(v4 + 36) == -1)
  {
    std::ios_base::getloc((a1 + *(*a1 - 24)));
    v5 = std::locale::use_facet(&v8, MEMORY[0x277D82680]);
    v6 = (v5->__vftable[2].~facet_0)(v5, 32);
    std::locale::~locale(&v8);
    *(v4 + 36) = v6;
  }

  *(v4 + 36) = a2;
  return a1;
}

uint64_t *std::unique_ptr<Phase::SpatialModeler::SubmixRoutingInput [],std::function<void ()(void *)>>::reset[abi:ne200100](uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    return std::function<void ()(void *)>::operator()((result + 1), v1);
  }

  return result;
}

void std::vector<Phase::UniqueObjectId>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 4)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 16 * a2);
      v5 += 16 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 4);
    if (v7 >> 60)
    {
      std::vector<Phase::MetaParamValue>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    if (v8 >> 3 > v7)
    {
      v7 = v8 >> 3;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v9 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<Phase::UniqueObjectId>>(a1, v9);
    }

    v10 = (16 * (v6 >> 4));
    bzero(v10, 16 * a2);
    v11 = &v10[16 * a2];
    v12 = *(a1 + 8) - *a1;
    v13 = &v10[-v12];
    memcpy(&v10[-v12], *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v11;
    *(a1 + 16) = 0;
    if (v14)
    {

      operator delete(v14);
    }
  }
}

void std::vector<std::string>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    v9 = v8 + 1;
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<char>::__throw_length_error[abi:ne200100]();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
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

    v18.__end_cap_.__value_ = a1;
    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a1, v11);
    }

    v12 = 24 * v8;
    v13 = *a2;
    *(v12 + 16) = *(a2 + 2);
    *v12 = v13;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v7 = 24 * v8 + 24;
    v14 = *(a1 + 8) - *a1;
    v15 = v12 - v14;
    memcpy((v12 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v7;
    v17 = *(a1 + 16);
    *(a1 + 16) = 0;
    v18.__end_ = v16;
    v18.__end_cap_.__value_ = v17;
    v18.__first_ = v16;
    v18.__begin_ = v16;
    std::__split_buffer<std::string>::~__split_buffer(&v18);
  }

  else
  {
    v6 = *a2;
    *(v4 + 16) = *(a2 + 2);
    *v4 = v6;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v7 = v4 + 24;
  }

  *(a1 + 8) = v7;
}

uint64_t std::pair<std::string,std::vector<std::string>>::pair[abi:ne200100]<std::string,std::vector<std::string>&,0>(uint64_t result, __int128 *a2, void *a3)
{
  v3 = *a2;
  *(result + 16) = *(a2 + 2);
  *result = v3;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 40) = 0;
  v4 = a3[1];
  if (v4 != *a3)
  {
    v5 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a3) >> 3);
    if (v5 < 0xAAAAAAAAAAAAAABLL)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(result + 24, v5);
    }

    std::vector<char>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_23A363ED0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a9);
  if (*(v9 + 23) < 0)
  {
    operator delete(*v9);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 8);
    v4 = **(a1 + 16);
    while (v4 != v3)
    {
      v5 = *(v4 - 1);
      v4 -= 3;
      if (v5 < 0)
      {
        operator delete(*v4);
      }
    }
  }

  return a1;
}

uint64_t std::function<void ()(Phase::SpatialModeler::PriorityQueue &,Phase::SpatialModeler::Graph &)>::operator=(uint64_t a1, uint64_t a2)
{
  v9[3] = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      v8 = v7;
      (*(*v3 + 24))(v3, v7);
    }

    else
    {
      v8 = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    v8 = 0;
  }

  if (v7 != a1)
  {
    v4 = v8;
    v5 = *(a1 + 24);
    if (v8 == v7)
    {
      if (v5 == a1)
      {
        (*(*v8 + 24))();
        (*(*v8 + 32))(v8);
        v8 = 0;
        (*(**(a1 + 24) + 24))(*(a1 + 24), v7);
        (*(**(a1 + 24) + 32))(*(a1 + 24));
        *(a1 + 24) = 0;
        v8 = v7;
        (*(v9[0] + 24))(v9, a1);
        (*(v9[0] + 32))(v9);
      }

      else
      {
        (*(*v8 + 24))();
        (*(*v8 + 32))(v8);
        v8 = *(a1 + 24);
      }

      *(a1 + 24) = a1;
    }

    else if (v5 == a1)
    {
      (*(*v5 + 24))(*(a1 + 24), v7);
      (*(**(a1 + 24) + 32))(*(a1 + 24));
      *(a1 + 24) = v8;
      v8 = v7;
    }

    else
    {
      v8 = *(a1 + 24);
      *(a1 + 24) = v4;
    }
  }

  std::__function::__value_func<void ()(Phase::SpatialModeler::PriorityQueue &,Phase::SpatialModeler::Graph &)>::~__value_func[abi:ne200100](v7);
  return a1;
}

void sub_23A364254(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t std::function<void ()(Phase::SpatialModeler::PriorityQueueEntry &)>::operator=(uint64_t a1, uint64_t a2)
{
  v9[3] = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      v8 = v7;
      (*(*v3 + 24))(v3, v7);
    }

    else
    {
      v8 = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    v8 = 0;
  }

  if (v7 != a1)
  {
    v4 = v8;
    v5 = *(a1 + 24);
    if (v8 == v7)
    {
      if (v5 == a1)
      {
        (*(*v8 + 24))();
        (*(*v8 + 32))(v8);
        v8 = 0;
        (*(**(a1 + 24) + 24))(*(a1 + 24), v7);
        (*(**(a1 + 24) + 32))(*(a1 + 24));
        *(a1 + 24) = 0;
        v8 = v7;
        (*(v9[0] + 24))(v9, a1);
        (*(v9[0] + 32))(v9);
      }

      else
      {
        (*(*v8 + 24))();
        (*(*v8 + 32))(v8);
        v8 = *(a1 + 24);
      }

      *(a1 + 24) = a1;
    }

    else if (v5 == a1)
    {
      (*(*v5 + 24))(*(a1 + 24), v7);
      (*(**(a1 + 24) + 32))(*(a1 + 24));
      *(a1 + 24) = v8;
      v8 = v7;
    }

    else
    {
      v8 = *(a1 + 24);
      *(a1 + 24) = v4;
    }
  }

  std::__function::__value_func<void ()(Phase::SpatialModeler::PriorityQueueEntry &)>::~__value_func[abi:ne200100](v7);
  return a1;
}

void sub_23A36454C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t std::function<BOOL ()(Phase::SpatialModeler::PriorityQueueEntry const&,Phase::SpatialModeler::PriorityQueueEntry const&)>::operator=(uint64_t a1, uint64_t a2)
{
  v8[3] = *MEMORY[0x277D85DE8];
  std::__function::__value_func<BOOL ()(Phase::SpatialModeler::PriorityQueueEntry const&,Phase::SpatialModeler::PriorityQueueEntry const&)>::__value_func[abi:ne200100](v6, a2);
  if (v6 != a1)
  {
    v3 = v7;
    v4 = *(a1 + 24);
    if (v7 == v6)
    {
      if (v4 == a1)
      {
        (*(*v7 + 24))();
        (*(*v7 + 32))(v7);
        v7 = 0;
        (*(**(a1 + 24) + 24))(*(a1 + 24), v6);
        (*(**(a1 + 24) + 32))(*(a1 + 24));
        *(a1 + 24) = 0;
        v7 = v6;
        (*(v8[0] + 24))(v8, a1);
        (*(v8[0] + 32))(v8);
      }

      else
      {
        (*(*v7 + 24))();
        (*(*v7 + 32))(v7);
        v7 = *(a1 + 24);
      }

      *(a1 + 24) = a1;
    }

    else if (v4 == a1)
    {
      (*(*v4 + 24))(*(a1 + 24), v6);
      (*(**(a1 + 24) + 32))(*(a1 + 24));
      *(a1 + 24) = v7;
      v7 = v6;
    }

    else
    {
      v7 = *(a1 + 24);
      *(a1 + 24) = v3;
    }
  }

  std::__function::__value_func<BOOL ()(Phase::SpatialModeler::PriorityQueueEntry const&,Phase::SpatialModeler::PriorityQueueEntry const&)>::~__value_func[abi:ne200100](v6);
  return a1;
}

void sub_23A3647D8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<BOOL ()(Phase::SpatialModeler::PriorityQueueEntry const&,Phase::SpatialModeler::PriorityQueueEntry const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::string::basic_string[abi:ne200100](uint64_t result, unint64_t a2)
{
  if (a2 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (a2 > 0x16)
  {
    operator new();
  }

  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = 0;
  *(result + 23) = a2;
  return result;
}

void std::__list_imp<std::shared_ptr<Phase::Job>>::clear(uint64_t *a1)
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
        if (v6)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v6);
        }

        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }
}

uint64_t std::__function::__value_func<void ()(Phase::SpatialModeler::Query &)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(Phase::SpatialModeler::PriorityQueue &,Phase::SpatialModeler::Graph &)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(Phase::SpatialModeler::PriorityQueueEntry &)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<BOOL ()(Phase::SpatialModeler::PriorityQueueEntry const&,Phase::SpatialModeler::PriorityQueueEntry const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

const void *std::stringbuf::str[abi:ne200100]@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = std::stringbuf::view[abi:ne200100](a1);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a2[23] = v4;
  if (v4)
  {
    result = memmove(a2, result, v4);
  }

  a2[v5] = 0;
  return result;
}

uint64_t std::stringbuf::view[abi:ne200100](uint64_t a1)
{
  v1 = *(a1 + 96);
  if ((v1 & 0x10) != 0)
  {
    v3 = *(a1 + 48);
    if (*(a1 + 88) < v3)
    {
      *(a1 + 88) = v3;
    }

    return *(a1 + 40);
  }

  else if ((v1 & 8) != 0)
  {
    return *(a1 + 16);
  }

  else
  {
    return 0;
  }
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned long long,std::unique_ptr<Phase::Controller::SpatialQueryInstance>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<Phase::Controller::SpatialQueryInstance>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<Phase::Controller::SpatialQueryInstance>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unique_ptr<Phase::Controller::SpatialQueryInstance>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<unsigned long long,std::unique_ptr<Phase::Controller::SpatialQueryInstance>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<Phase::Controller::SpatialQueryInstance>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<Phase::Controller::SpatialQueryInstance>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unique_ptr<Phase::Controller::SpatialQueryInstance>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<unsigned long long,std::unique_ptr<Phase::Controller::SpatialQueryInstance>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<Phase::Controller::SpatialQueryInstance>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<Phase::Controller::SpatialQueryInstance>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unique_ptr<Phase::Controller::SpatialQueryInstance>>>>::__deallocate_node(uint64_t a1, std::__shared_weak_count ***a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::unique_ptr<Phase::Controller::SpatialQueryInstance>::reset[abi:ne200100](v2 + 3, 0);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::pair<std::unique_ptr<Phase::Controller::SpatialQueryInstance>,std::vector<Phase::Controller::SpatialModelerInstance::SubmixHandleInfo>>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::pair<std::unique_ptr<Phase::Controller::SpatialQueryInstance>,std::vector<Phase::Controller::SpatialModelerInstance::SubmixHandleInfo>>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::pair<std::unique_ptr<Phase::Controller::SpatialQueryInstance>,std::vector<Phase::Controller::SpatialModelerInstance::SubmixHandleInfo>>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::pair<std::unique_ptr<Phase::Controller::SpatialQueryInstance>,std::vector<Phase::Controller::SpatialModelerInstance::SubmixHandleInfo>>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::pair<std::unique_ptr<Phase::Controller::SpatialQueryInstance>,std::vector<Phase::Controller::SpatialModelerInstance::SubmixHandleInfo>>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::pair<std::unique_ptr<Phase::Controller::SpatialQueryInstance>,std::vector<Phase::Controller::SpatialModelerInstance::SubmixHandleInfo>>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::pair<std::unique_ptr<Phase::Controller::SpatialQueryInstance>,std::vector<Phase::Controller::SpatialModelerInstance::SubmixHandleInfo>>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::pair<std::unique_ptr<Phase::Controller::SpatialQueryInstance>,std::vector<Phase::Controller::SpatialModelerInstance::SubmixHandleInfo>>>>>::__deallocate_node(*(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::pair<std::unique_ptr<Phase::Controller::SpatialQueryInstance>,std::vector<Phase::Controller::SpatialModelerInstance::SubmixHandleInfo>>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::pair<std::unique_ptr<Phase::Controller::SpatialQueryInstance>,std::vector<Phase::Controller::SpatialModelerInstance::SubmixHandleInfo>>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::pair<std::unique_ptr<Phase::Controller::SpatialQueryInstance>,std::vector<Phase::Controller::SpatialModelerInstance::SubmixHandleInfo>>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::pair<std::unique_ptr<Phase::Controller::SpatialQueryInstance>,std::vector<Phase::Controller::SpatialModelerInstance::SubmixHandleInfo>>>>>::__deallocate_node(void *a1)
{
  if (a1)
  {
    v1 = a1;
    do
    {
      v2 = *v1;
      std::__destroy_at[abi:ne200100]<std::pair<Phase::UniqueObjectId const,std::pair<std::unique_ptr<Phase::Controller::SpatialQueryInstance>,std::vector<Phase::Controller::SpatialModelerInstance::SubmixHandleInfo>>>,0>((v1 + 2));
      operator delete(v1);
      v1 = v2;
    }

    while (v2);
  }
}

std::__shared_weak_count **std::__destroy_at[abi:ne200100]<std::pair<Phase::UniqueObjectId const,std::pair<std::unique_ptr<Phase::Controller::SpatialQueryInstance>,std::vector<Phase::Controller::SpatialModelerInstance::SubmixHandleInfo>>>,0>(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }

  return std::unique_ptr<Phase::Controller::SpatialQueryInstance>::reset[abi:ne200100]((a1 + 16), 0);
}

std::__shared_weak_count **std::unique_ptr<Phase::Controller::SpatialQueryInstance>::reset[abi:ne200100](std::__shared_weak_count ***a1, std::__shared_weak_count **a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    Phase::Controller::SpatialQueryInstance::~SpatialQueryInstance(result);

    JUMPOUT(0x23EE864A0);
  }

  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned long,std::shared_ptr<Phase::Job>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::shared_ptr<Phase::Job>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::shared_ptr<Phase::Job>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::shared_ptr<Phase::Job>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<unsigned long,std::shared_ptr<Phase::Job>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::shared_ptr<Phase::Job>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::shared_ptr<Phase::Job>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::shared_ptr<Phase::Job>>>>::__deallocate_node(*(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<unsigned long,std::shared_ptr<Phase::Job>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::shared_ptr<Phase::Job>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::shared_ptr<Phase::Job>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::shared_ptr<Phase::Job>>>>::__deallocate_node(void *__p)
{
  if (__p)
  {
    v1 = __p;
    do
    {
      v2 = *v1;
      v3 = v1[4];
      if (v3)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v3);
      }

      operator delete(v1);
      v1 = v2;
    }

    while (v2);
  }
}

Phase::Controller::SpatialSubmixRouter *std::unique_ptr<Phase::Controller::SpatialSubmixRouter>::reset[abi:ne200100](Phase::Controller::SpatialSubmixRouter **a1, Phase::Controller::SpatialSubmixRouter *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    Phase::Controller::SpatialSubmixRouter::~SpatialSubmixRouter(result);

    JUMPOUT(0x23EE864A0);
  }

  return result;
}

void Phase::details::SharedSlotMap<Phase::Controller::SpatialModelerInstance::SubmixInfo,Phase::Handle64>::Resize(uint64_t *a1, unsigned int a2)
{
  v2 = *(a1 + 4);
  if (a2 > v2)
  {
    Phase::details::SharedSlotMap<Phase::Controller::SpatialModelerInstance::SubmixInfo,Phase::Handle64>::AllocSlots(v20, a2);
    v5 = v20[0];
    if (v2)
    {
      v6 = 0;
      v7 = v20[0] + 8;
      v8 = v2;
      do
      {
        v9 = *a1;
        v10 = (*a1 + v6);
        v12 = *v10;
        v11 = v10[1];
        if (v11)
        {
          atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
        }

        v13 = *v7;
        *(v7 - 8) = v12;
        *v7 = v11;
        if (v13)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v13);
        }

        *(v7 + 8) = *(v9 + v6 + 16);
        v7 += 24;
        v6 += 24;
        --v8;
      }

      while (v8);
      v14 = v2;
    }

    else
    {
      v14 = 0;
    }

    v15 = a2 - v2;
    v16 = (v5 + 24 * v14 + 16);
    do
    {
      v17 = *(v16 - 1);
      *(v16 - 2) = 0;
      *(v16 - 1) = 0;
      if (v17)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v17);
      }

      *v16 = 0x1FFFFFFFFLL;
      v16 += 3;
      --v15;
    }

    while (v15);
    std::__shared_mutex_base::lock((a1 + 4));
    v18 = a1[1];
    v19 = v20[1];
    *a1 = v5;
    a1[1] = v19;
    std::__shared_mutex_base::unlock((a1 + 4));
    *(a1 + 4) = a2;
    if (v18)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v18);
    }
  }
}

void sub_23A365010(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void *Phase::details::SharedSlotMap<Phase::Controller::SpatialModelerInstance::SubmixInfo,Phase::Handle64>::AllocSlots(void *result, uint64_t a2)
{
  if (a2)
  {
    operator new[]();
  }

  *result = 0;
  result[1] = 0;
  return result;
}

void std::__shared_ptr_pointer<Phase::SharedSlotMapState<Phase::Controller::SpatialModelerInstance::SubmixInfo,Phase::Handle64>::Slot *,std::shared_ptr<Phase::SharedSlotMapState<Phase::Controller::SpatialModelerInstance::SubmixInfo,Phase::Handle64>::Slot[]>::__shared_ptr_default_delete<Phase::SharedSlotMapState<Phase::Controller::SpatialModelerInstance::SubmixInfo,Phase::Handle64>::Slot[],Phase::SharedSlotMapState<Phase::Controller::SpatialModelerInstance::SubmixInfo,Phase::Handle64>::Slot>,std::allocator<Phase::SharedSlotMapState<Phase::Controller::SpatialModelerInstance::SubmixInfo,Phase::Handle64>::Slot>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x23EE864A0);
}

uint64_t std::__shared_ptr_pointer<Phase::SharedSlotMapState<Phase::Controller::SpatialModelerInstance::SubmixInfo,Phase::Handle64>::Slot *,std::shared_ptr<Phase::SharedSlotMapState<Phase::Controller::SpatialModelerInstance::SubmixInfo,Phase::Handle64>::Slot[]>::__shared_ptr_default_delete<Phase::SharedSlotMapState<Phase::Controller::SpatialModelerInstance::SubmixInfo,Phase::Handle64>::Slot[],Phase::SharedSlotMapState<Phase::Controller::SpatialModelerInstance::SubmixInfo,Phase::Handle64>::Slot>,std::allocator<Phase::SharedSlotMapState<Phase::Controller::SpatialModelerInstance::SubmixInfo,Phase::Handle64>::Slot>>::__on_zero_shared(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    v2 = v1 - 16;
    v3 = *(v1 - 8);
    if (v3)
    {
      v4 = 24 * v3;
      do
      {
        v5 = *(v2 + v4);
        if (v5)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v5);
        }

        v4 -= 24;
      }

      while (v4);
    }

    JUMPOUT(0x23EE86470);
  }

  return result;
}

void std::default_delete<Phase::SharedSlotMapState<Phase::Controller::SpatialModelerInstance::SubmixInfo,Phase::Handle64>::Slot>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x23EE864A0);
}

uint64_t std::__function::__func<Phase::Controller::SpatialModelerInstance::CommitFrameUpdateBatch(void)::$_0,std::allocator<Phase::Controller::SpatialModelerInstance::CommitFrameUpdateBatch(void)::$_0>,void ()(BOOL,std::list<std::shared_ptr<Phase::Job>>)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284D30D90;
  a2[1] = v2;
  return result;
}

void std::__function::__func<Phase::Controller::SpatialModelerInstance::CommitFrameUpdateBatch(void)::$_0,std::allocator<Phase::Controller::SpatialModelerInstance::CommitFrameUpdateBatch(void)::$_0>,void ()(BOOL,std::list<std::shared_ptr<Phase::Job>>)>::operator()(Phase::Logger *a1, unsigned __int8 *a2, uint64_t *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v18[0] = v18;
  v18[1] = v18;
  v19 = 0;
  v4 = a3[2];
  if (v4)
  {
    v6 = *a3;
    v5 = a3[1];
    v7 = *(*a3 + 8);
    v8 = *v5;
    *(v8 + 8) = v7;
    *v7 = v8;
    v9 = v18[0];
    *(v18[0] + 8) = v5;
    *v5 = v9;
    *(v6 + 8) = v18;
    v18[0] = v6;
    v19 = v4;
    a3[2] = 0;
  }

  v10 = *(a1 + 1);
  v11 = **(Phase::Logger::GetInstance(a1) + 240);
  v12 = v11;
  if (v3)
  {
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_16;
    }

    Phase::Controller::SpatialModelerInstance::GetDescription(__p, v10);
    if (v21 >= 0)
    {
      v13 = __p;
    }

    else
    {
      v13 = __p[0];
    }

    *buf = 136315650;
    v23 = "CvmSpatialModelerInstance.mm";
    v24 = 1024;
    v25 = 836;
    v26 = 2080;
    v27 = v13;
    v14 = "%25s:%-5d %s: started overflow graph";
    v15 = v12;
    v16 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_16;
    }

    Phase::Controller::SpatialModelerInstance::GetDescription(__p, v10);
    if (v21 >= 0)
    {
      v17 = __p;
    }

    else
    {
      v17 = __p[0];
    }

    *buf = 136315650;
    v23 = "CvmSpatialModelerInstance.mm";
    v24 = 1024;
    v25 = 841;
    v26 = 2080;
    v27 = v17;
    v14 = "%25s:%-5d %s: failed to start overflow graph";
    v15 = v12;
    v16 = OS_LOG_TYPE_ERROR;
  }

  _os_log_impl(&dword_23A302000, v15, v16, v14, buf, 0x1Cu);
  if (v21 < 0)
  {
    operator delete(__p[0]);
  }

LABEL_16:

  std::__list_imp<std::shared_ptr<Phase::Job>>::clear(v18);
}

uint64_t std::__function::__value_func<void ()(BOOL,std::list<std::shared_ptr<Phase::Job>>)>::~__value_func[abi:ne200100](uint64_t a1)
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

Phase::Logger *Phase::Handle64::Set(Phase::Logger *this, unsigned int a2, uint64_t a3)
{
  v9 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    v3 = **(Phase::Logger::GetInstance(this) + 48);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v5 = 136315394;
      v6 = "Handle.hpp";
      v7 = 1024;
      v8 = 166;
      _os_log_impl(&dword_23A302000, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION: inGeneration > 0 is false.", &v5, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::domain_error::domain_error[abi:ne200100](exception, "PRECONDITION: inGeneration > 0 is false.");
  }

  *this = a2 | (a3 << 32);
  return this;
}

uint64_t std::shared_lock<std::shared_mutex>::~shared_lock[abi:ne200100](uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    std::__shared_mutex_base::unlock_shared(*a1);
  }

  return a1;
}

uint64_t Phase::details::SharedSlotMap<Phase::Controller::SpatialModelerInstance::SubmixInfo,Phase::Handle64>::GetUniqueSlot(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) <= a2)
  {
    return 0;
  }

  v3 = a2;
  result = *a1 + 24 * a2;
  if (*(result + 20) != HIDWORD(a2))
  {
    return 0;
  }

  v5 = *(a1 + 8);
  if (v5)
  {
    if (*(v5 + 8) >= 1)
    {
      Phase::details::SharedSlotMap<Phase::Controller::SpatialModelerInstance::SubmixInfo,Phase::Handle64>::Realloc(a1);
      return *a1 + 24 * v3;
    }
  }

  return result;
}

void Phase::details::SharedSlotMap<Phase::Controller::SpatialModelerInstance::SubmixInfo,Phase::Handle64>::Realloc(uint64_t *a1)
{
  v1 = *(a1 + 4);
  if (v1)
  {
    Phase::details::SharedSlotMap<Phase::Controller::SpatialModelerInstance::SubmixInfo,Phase::Handle64>::AllocSlots(&v12, v1);
    if (*(a1 + 4))
    {
      v3 = 0;
      v4 = 0;
      v5 = v12 + 8;
      do
      {
        v6 = *a1;
        v7 = (*a1 + v3);
        v9 = *v7;
        v8 = v7[1];
        if (v8)
        {
          atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
        }

        v10 = *v5;
        *(v5 - 8) = v9;
        *v5 = v8;
        if (v10)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v10);
        }

        *(v5 + 8) = *(v6 + v3 + 16);
        ++v4;
        v5 += 24;
        v3 += 24;
      }

      while (v4 < *(a1 + 4));
    }

    std::__shared_mutex_base::lock((a1 + 4));
    v11 = a1[1];
    *a1 = v12;
    std::__shared_mutex_base::unlock((a1 + 4));
    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }
  }
}

void sub_23A3657E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_emplace<Phase::Controller::SpatialModelerInstance::SubmixInfo>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284D30DD8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x23EE864A0);
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,Phase::Controller::OptionalProperties::Property>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,Phase::Controller::OptionalProperties::Property>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,Phase::Controller::OptionalProperties::Property>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,Phase::Controller::OptionalProperties::Property>>>::__node_insert_multi_prepare(uint64_t a1, unint64_t a2, _DWORD *a3)
{
  v6 = *(a1 + 8);
  v7 = (*(a1 + 24) + 1);
  v8 = *(a1 + 32);
  if (!v6 || (v8 * v6) < v7)
  {
    v9 = 1;
    if (v6 >= 3)
    {
      v9 = (v6 & (v6 - 1)) != 0;
    }

    v10 = v9 | (2 * v6);
    v11 = vcvtps_u32_f32(v7 / v8);
    if (v10 <= v11)
    {
      prime = v11;
    }

    else
    {
      prime = v10;
    }

    if (prime == 1)
    {
      prime = 2;
    }

    else if ((prime & (prime - 1)) != 0)
    {
      prime = std::__next_prime(prime);
      v6 = *(a1 + 8);
    }

    if (prime > v6)
    {
LABEL_13:
      if (!(prime >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    if (prime < v6)
    {
      v13 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
      if (v6 < 3 || (v14 = vcnt_s8(v6), v14.i16[0] = vaddlv_u8(v14), v14.u32[0] > 1uLL))
      {
        v13 = std::__next_prime(v13);
      }

      else
      {
        v15 = 1 << -__clz(v13 - 1);
        if (v13 >= 2)
        {
          v13 = v15;
        }
      }

      if (prime <= v13)
      {
        prime = v13;
      }

      if (prime >= v6)
      {
        v6 = *(a1 + 8);
      }

      else
      {
        if (prime)
        {
          goto LABEL_13;
        }

        v26 = *a1;
        *a1 = 0;
        if (v26)
        {
          operator delete(v26);
        }

        v6 = 0;
        *(a1 + 8) = 0;
      }
    }
  }

  v16 = vcnt_s8(v6);
  v16.i16[0] = vaddlv_u8(v16);
  if (v16.u32[0] > 1uLL)
  {
    v17 = a2;
    if (v6 <= a2)
    {
      v17 = a2 % v6;
    }
  }

  else
  {
    v17 = (v6 - 1) & a2;
  }

  v18 = *(*a1 + 8 * v17);
  if (!v18)
  {
    return 0;
  }

  v19 = 0;
  do
  {
    result = v18;
    v18 = *v18;
    if (!v18)
    {
      break;
    }

    v21 = v18[1];
    if (v16.u32[0] > 1uLL)
    {
      v22 = v18[1];
      if (v21 >= v6)
      {
        v22 = v21 % v6;
      }
    }

    else
    {
      v22 = v21 & (v6 - 1);
    }

    if (v22 != v17)
    {
      break;
    }

    v23 = v21 == a2 && *(v18 + 4) == *a3;
    v24 = v23 != (v19 & 1);
    v25 = v19 & v24;
    v19 |= v24;
  }

  while (v25 != 1);
  return result;
}

void *std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,Phase::Handle64>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,Phase::Handle64>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,Phase::Handle64>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,Phase::Handle64>>>::__emplace_unique_key_args<Phase::UniqueObjectId,Phase::UniqueObjectId&,Phase::Handle64&>(void *a1, void *a2)
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

uint64_t _ZN5Phase7details13SharedSlotMapINS_10Controller22SpatialModelerInstance10SubmixInfoENS_8Handle64EE13GetSlotToEditIRZNS_13SharedSlotMapIS4_S5_DnE9GetUniqueES5_EUlRT_E_EEPNS_18SharedSlotMapStateIS4_S5_E4SlotES5_OSA_(uint64_t a1, uint64_t a2)
{
  result = Phase::details::SharedSlotMap<Phase::Controller::SpatialModelerInstance::SubmixInfo,Phase::Handle64>::GetUniqueSlot(a1, a2);
  if (result)
  {
    v3 = *(result + 8);
    if (v3)
    {
      if (*(v3 + 8) >= 1)
      {
        std::allocate_shared[abi:ne200100]<Phase::Controller::SpatialModelerInstance::SubmixInfo,std::allocator<Phase::Controller::SpatialModelerInstance::SubmixInfo>,Phase::Controller::SpatialModelerInstance::SubmixInfo&,0>();
      }
    }
  }

  return result;
}

uint64_t std::__shared_ptr_emplace<Phase::Controller::SpatialModelerInstance::SubmixInfo>::__shared_ptr_emplace[abi:ne200100]<Phase::Controller::SpatialModelerInstance::SubmixInfo&,std::allocator<Phase::Controller::SpatialModelerInstance::SubmixInfo>,0>(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_284D30DD8;
  *(a1 + 24) = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  v5 = *(a2 + 48);
  *(a1 + 88) = *(a2 + 64);
  *(a1 + 72) = v5;
  *(a1 + 56) = v4;
  *(a1 + 40) = v3;
  std::unordered_map<unsigned int,Phase::Controller::OptionalProperties::Property>::unordered_map(a1 + 96, a2 + 72);
  return a1;
}

uint64_t std::unordered_map<unsigned int,Phase::Controller::OptionalProperties::Property>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<unsigned int,Phase::Controller::OptionalProperties::Property>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,Phase::Controller::OptionalProperties::Property>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,Phase::Controller::OptionalProperties::Property>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,Phase::Controller::OptionalProperties::Property>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    v5 = *(i + 4);
    v6 = *(a1 + 8);
    if (!*&v6)
    {
      goto LABEL_18;
    }

    v7 = vcnt_s8(v6);
    v7.i16[0] = vaddlv_u8(v7);
    if (v7.u32[0] > 1uLL)
    {
      v8 = *(i + 4);
      if (*&v6 <= v5)
      {
        v8 = v5 % v6.i32[0];
      }
    }

    else
    {
      v8 = (v6.i32[0] - 1) & v5;
    }

    v9 = *(*a1 + 8 * v8);
    if (!v9 || (v10 = *v9) == 0)
    {
LABEL_18:
      operator new();
    }

    while (1)
    {
      v11 = v10[1];
      if (v11 == v5)
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
        goto LABEL_18;
      }

LABEL_17:
      v10 = *v10;
      if (!v10)
      {
        goto LABEL_18;
      }
    }

    if (*(v10 + 4) != v5)
    {
      goto LABEL_17;
    }
  }

  return a1;
}

void std::__shared_ptr_emplace<Phase::Controller::SubmixSlotMapState<Phase::Controller::SpatialModelerInstance::SubmixInfo>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284D30E10;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x23EE864A0);
}

void std::__shared_ptr_emplace<Phase::Controller::SubmixSlotMapState<Phase::Controller::SpatialModelerInstance::SubmixInfo>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void *std::vector<std::reference_wrapper<Phase::SpatialModeler::PriorityQueueEntry>>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::reference_wrapper<Phase::SpatialModeler::PriorityQueueEntry>>>(a2);
    }

    std::vector<Phase::Controller::DVM23::SubmixController *>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void std::vector<std::reference_wrapper<Phase::SpatialModeler::PriorityQueueEntry>>::push_back[abi:ne200100](uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = (v4 - *a1) >> 3;
    if ((v6 + 1) >> 61)
    {
      std::vector<Phase::Controller::DVM23::SubmixController *>::__throw_length_error[abi:ne200100]();
    }

    v7 = v3 - *a1;
    v8 = v7 >> 2;
    if (v7 >> 2 <= (v6 + 1))
    {
      v8 = v6 + 1;
    }

    if (v7 >= 0x7FFFFFFFFFFFFFF8)
    {
      v9 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v8;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::reference_wrapper<Phase::SpatialModeler::PriorityQueueEntry>>>(v9);
    }

    v10 = (8 * v6);
    *v10 = *a2;
    v5 = 8 * v6 + 8;
    v11 = *(a1 + 8) - *a1;
    v12 = v10 - v11;
    memcpy(v10 - v11, *a1, v11);
    v13 = *a1;
    *a1 = v12;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = (v4 + 1);
  }

  *(a1 + 8) = v5;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::reference_wrapper<Phase::SpatialModeler::PriorityQueueEntry>>>(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__stable_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<std::reference_wrapper<Phase::SpatialModeler::PriorityQueueEntry> *>,std::function<BOOL ()(Phase::SpatialModeler::PriorityQueueEntry const&,Phase::SpatialModeler::PriorityQueueEntry const&)>>(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = (a2 - a1) >> 3;
  if (v6 < 129)
  {
    v12 = 0;
    v8 = 0;
  }

  else
  {
    v7 = MEMORY[0x277D826F0];
    v8 = (a2 - a1) >> 3;
    while (1)
    {
      v9 = operator new(8 * v8, v7);
      if (v9)
      {
        break;
      }

      v10 = v8 >> 1;
      v11 = v8 > 1;
      v8 >>= 1;
      if (!v11)
      {
        v12 = 0;
        v8 = v10;
        goto LABEL_8;
      }
    }

    v12 = v9;
  }

LABEL_8:
  std::__stable_sort<std::_ClassicAlgPolicy,std::function<BOOL ()(Phase::SpatialModeler::PriorityQueueEntry const&,Phase::SpatialModeler::PriorityQueueEntry const&)> &,std::__wrap_iter<std::reference_wrapper<Phase::SpatialModeler::PriorityQueueEntry> *>>(a1, a2, a3, v6, v12, v8);
  if (v12)
  {

    operator delete(v12);
  }
}

void sub_23A366564(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__stable_sort<std::_ClassicAlgPolicy,std::function<BOOL ()(Phase::SpatialModeler::PriorityQueueEntry const&,Phase::SpatialModeler::PriorityQueueEntry const&)> &,std::__wrap_iter<std::reference_wrapper<Phase::SpatialModeler::PriorityQueueEntry> *>>(uint64_t result, uint64_t *a2, uint64_t a3, unint64_t a4, uint64_t *a5, uint64_t a6)
{
  if (a4 < 2)
  {
    return result;
  }

  v8 = result;
  if (a4 == 2)
  {
    v9 = *(a3 + 24);
    if (v9)
    {
      result = (*(*v9 + 48))(v9, *(a2 - 1), *v8);
      if (result)
      {
        v10 = *v8;
        *v8 = *(a2 - 1);
        *(a2 - 1) = v10;
      }

      return result;
    }

    goto LABEL_46;
  }

  if (a4 <= 128)
  {
    if (result == a2)
    {
      return result;
    }

    v12 = (result + 8);
    if ((result + 8) == a2)
    {
      return result;
    }

    v13 = 0;
    v14 = result;
    while (1)
    {
      v15 = *(a3 + 24);
      if (!v15)
      {
        break;
      }

      v16 = v12;
      result = (*(*v15 + 48))(v15, *v12, *v14);
      if (result)
      {
        v17 = *v16;
        v18 = v13;
        while (1)
        {
          *(v8 + v18 + 8) = *(v8 + v18);
          if (!v18)
          {
            break;
          }

          v19 = *(a3 + 24);
          if (!v19)
          {
            goto LABEL_46;
          }

          result = (*(*v19 + 48))(v19, v17, *(v8 + v18 - 8));
          v18 -= 8;
          if ((result & 1) == 0)
          {
            v20 = (v8 + v18 + 8);
            goto LABEL_19;
          }
        }

        v20 = v8;
LABEL_19:
        *v20 = v17;
      }

      v12 = v16 + 1;
      v13 += 8;
      v14 = v16;
      if (v16 + 1 == a2)
      {
        return result;
      }
    }

LABEL_46:
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v22 = a5;
  v23 = a4 >> 1;
  v24 = (result + 8 * (a4 >> 1));
  v25 = a4 >> 1;
  if (a4 <= a6)
  {
    std::__stable_sort_move<std::_ClassicAlgPolicy,std::function<BOOL ()(Phase::SpatialModeler::PriorityQueueEntry const&,Phase::SpatialModeler::PriorityQueueEntry const&)> &,std::__wrap_iter<std::reference_wrapper<Phase::SpatialModeler::PriorityQueueEntry> *>>(result, v24, a3, v25, a5);
    v26 = &v22[v23];
    result = std::__stable_sort_move<std::_ClassicAlgPolicy,std::function<BOOL ()(Phase::SpatialModeler::PriorityQueueEntry const&,Phase::SpatialModeler::PriorityQueueEntry const&)> &,std::__wrap_iter<std::reference_wrapper<Phase::SpatialModeler::PriorityQueueEntry> *>>(&v8[a4 >> 1], a2, a3, a4 - (a4 >> 1), v26);
    v27 = &v22[a4];
    v28 = v26;
    while (v28 != v27)
    {
      v29 = *(a3 + 24);
      if (!v29)
      {
        goto LABEL_46;
      }

      result = (*(*v29 + 48))(v29, *v28, *v22);
      if (result)
      {
        v30 = v28;
      }

      else
      {
        v30 = v22;
      }

      if (result)
      {
        v31 = 0;
      }

      else
      {
        v31 = 8;
      }

      v22 = (v22 + v31);
      if (result)
      {
        v32 = 8;
      }

      else
      {
        v32 = 0;
      }

      v28 = (v28 + v32);
      *v8++ = *v30;
      if (v22 == v26)
      {
        while (v28 != v27)
        {
          v34 = *v28++;
          *v8++ = v34;
        }

        return result;
      }
    }

    while (v22 != v26)
    {
      v33 = *v22++;
      *v8++ = v33;
    }
  }

  else
  {
    std::__stable_sort<std::_ClassicAlgPolicy,std::function<BOOL ()(Phase::SpatialModeler::PriorityQueueEntry const&,Phase::SpatialModeler::PriorityQueueEntry const&)> &,std::__wrap_iter<std::reference_wrapper<Phase::SpatialModeler::PriorityQueueEntry> *>>(result, v24, a3, v25, a5, a6);
    std::__stable_sort<std::_ClassicAlgPolicy,std::function<BOOL ()(Phase::SpatialModeler::PriorityQueueEntry const&,Phase::SpatialModeler::PriorityQueueEntry const&)> &,std::__wrap_iter<std::reference_wrapper<Phase::SpatialModeler::PriorityQueueEntry> *>>(&v8[a4 >> 1], a2, a3, a4 - (a4 >> 1), v22, a6);

    return std::__inplace_merge<std::_ClassicAlgPolicy,std::function<BOOL ()(Phase::SpatialModeler::PriorityQueueEntry const&,Phase::SpatialModeler::PriorityQueueEntry const&)> &,std::__wrap_iter<std::reference_wrapper<Phase::SpatialModeler::PriorityQueueEntry> *>>(v8, &v8[a4 >> 1], a2, a3, a4 >> 1, a4 - (a4 >> 1), v22, a6);
  }

  return result;
}

uint64_t *std::__stable_sort_move<std::_ClassicAlgPolicy,std::function<BOOL ()(Phase::SpatialModeler::PriorityQueueEntry const&,Phase::SpatialModeler::PriorityQueueEntry const&)> &,std::__wrap_iter<std::reference_wrapper<Phase::SpatialModeler::PriorityQueueEntry> *>>(uint64_t *result, uint64_t *a2, uint64_t a3, unint64_t a4, uint64_t *a5)
{
  if (a4)
  {
    v5 = a5;
    v7 = result;
    if (a4 == 1)
    {
LABEL_10:
      *v5 = *v7;
      return result;
    }

    if (a4 == 2)
    {
      v10 = *(a3 + 24);
      if (v10)
      {
        v11 = a2 - 1;
        result = (*(*v10 + 48))(v10, *(a2 - 1), *v7);
        if (result)
        {
          v12 = v11;
        }

        else
        {
          v12 = v7;
        }

        *v5++ = *v12;
        if (!result)
        {
          v7 = v11;
        }

        goto LABEL_10;
      }

LABEL_47:
      std::__throw_bad_function_call[abi:ne200100]();
    }

    if (a4 > 8)
    {
      v22 = &result[a4 >> 1];
      std::__stable_sort<std::_ClassicAlgPolicy,std::function<BOOL ()(Phase::SpatialModeler::PriorityQueueEntry const&,Phase::SpatialModeler::PriorityQueueEntry const&)> &,std::__wrap_iter<std::reference_wrapper<Phase::SpatialModeler::PriorityQueueEntry> *>>(result, v22, a3, a4 >> 1, a5, a4 >> 1);
      result = std::__stable_sort<std::_ClassicAlgPolicy,std::function<BOOL ()(Phase::SpatialModeler::PriorityQueueEntry const&,Phase::SpatialModeler::PriorityQueueEntry const&)> &,std::__wrap_iter<std::reference_wrapper<Phase::SpatialModeler::PriorityQueueEntry> *>>(&v7[a4 >> 1], a2, a3, a4 - (a4 >> 1), &v5[a4 >> 1], a4 - (a4 >> 1));
      v23 = &v7[a4 >> 1];
      while (v23 != a2)
      {
        v24 = *(a3 + 24);
        if (!v24)
        {
          goto LABEL_47;
        }

        result = (*(*v24 + 48))(v24, *v23, *v7);
        if (result)
        {
          v25 = v23;
        }

        else
        {
          v25 = v7;
        }

        if (result)
        {
          v26 = 8;
        }

        else
        {
          v26 = 0;
        }

        v23 = (v23 + v26);
        if (result)
        {
          v27 = 0;
        }

        else
        {
          v27 = 8;
        }

        v7 = (v7 + v27);
        *v5++ = *v25;
        if (v7 == v22)
        {
          while (v23 != a2)
          {
            v29 = *v23++;
            *v5++ = v29;
          }

          return result;
        }
      }

      while (v7 != v22)
      {
        v28 = *v7++;
        *v5++ = v28;
      }
    }

    else if (result != a2)
    {
      v13 = result + 1;
      *a5 = *result;
      if (result + 1 != a2)
      {
        v14 = 0;
        v15 = a5;
        while (1)
        {
          v16 = *(a3 + 24);
          if (!v16)
          {
            goto LABEL_47;
          }

          v17 = v15++;
          result = (*(*v16 + 48))(v16, *v13, *v17);
          v18 = v15;
          if (result)
          {
            v17[1] = *v17;
            v18 = v5;
            if (v17 != v5)
            {
              v19 = v14;
              while (1)
              {
                v20 = *(a3 + 24);
                if (!v20)
                {
                  goto LABEL_47;
                }

                result = (*(*v20 + 48))(v20, *v13, *(v5 + v19 - 8));
                if (!result)
                {
                  break;
                }

                *(v5 + v19) = *(v5 + v19 - 8);
                v19 -= 8;
                if (!v19)
                {
                  v18 = v5;
                  goto LABEL_25;
                }
              }

              v18 = (v5 + v19);
            }
          }

LABEL_25:
          v21 = *v13++;
          *v18 = v21;
          v14 += 8;
          if (v13 == a2)
          {
            return result;
          }
        }
      }
    }
  }

  return result;
}

uint64_t std::__inplace_merge<std::_ClassicAlgPolicy,std::function<BOOL ()(Phase::SpatialModeler::PriorityQueueEntry const&,Phase::SpatialModeler::PriorityQueueEntry const&)> &,std::__wrap_iter<std::reference_wrapper<Phase::SpatialModeler::PriorityQueueEntry> *>>(uint64_t result, char *a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v76 = *MEMORY[0x277D85DE8];
  v73 = a6;
  if (a6)
  {
    v11 = result;
    while (a5 > a8 && v73 > a8)
    {
      if (!a5)
      {
        return result;
      }

      v12 = 0;
      v13 = -a5;
      while (1)
      {
        v14 = *(a4 + 24);
        if (!v14)
        {
          std::__throw_bad_function_call[abi:ne200100]();
        }

        result = (*(*v14 + 48))(v14, *a2, *&v11[v12]);
        if (result)
        {
          break;
        }

        v12 += 8;
        if (__CFADD__(v13++, 1))
        {
          return result;
        }
      }

      v16 = -v13;
      v17 = v73;
      if (-v13 >= v73)
      {
        if (v13 == -1)
        {
          v65 = *&v11[v12];
          *&v11[v12] = *a2;
          *a2 = v65;
          return result;
        }

        std::__function::__value_func<BOOL ()(Phase::SpatialModeler::PriorityQueueEntry const&,Phase::SpatialModeler::PriorityQueueEntry const&)>::__value_func[abi:ne200100](v74, a4);
        v68 = v16 / 2;
        v23 = &v11[8 * (v16 / 2)];
        v18 = a2;
        if (a2 != a3)
        {
          v24 = (a3 - a2) >> 3;
          v18 = a2;
          do
          {
            if (!v75)
            {
              std::__throw_bad_function_call[abi:ne200100]();
            }

            v25 = &v18[8 * (v24 >> 1)];
            v26 = (*(*v75 + 48))(v75, *v25, *&v23[v12]);
            if (v26)
            {
              v24 += ~(v24 >> 1);
            }

            else
            {
              v24 >>= 1;
            }

            if (v26)
            {
              v18 = v25 + 8;
            }
          }

          while (v24);
        }

        std::__function::__value_func<BOOL ()(Phase::SpatialModeler::PriorityQueueEntry const&,Phase::SpatialModeler::PriorityQueueEntry const&)>::~__value_func[abi:ne200100](v74);
        v69 = (v18 - a2) >> 3;
        v19 = &v23[v12];
        v17 = v73;
      }

      else
      {
        v69 = v73 / 2;
        v18 = &a2[8 * (v73 / 2)];
        v19 = a2;
        if (a2 - v11 != v12)
        {
          v20 = (a2 - v11 - v12) >> 3;
          v19 = &v11[v12];
          do
          {
            v21 = *(a4 + 24);
            if (!v21)
            {
              std::__throw_bad_function_call[abi:ne200100]();
            }

            v22 = &v19[8 * (v20 >> 1)];
            if ((*(*v21 + 48))(v21, *v18, *v22))
            {
              v20 >>= 1;
            }

            else
            {
              v19 = v22 + 8;
              v20 += ~(v20 >> 1);
            }
          }

          while (v20);
          v17 = v73;
        }

        v68 = (v19 - v11 - v12) >> 3;
      }

      v27 = v18;
      v28 = a2 - v19;
      if (a2 != v19)
      {
        v27 = v19;
        v29 = v18 - a2;
        if (v18 != a2)
        {
          if (v19 + 8 == a2)
          {
            v30 = *v19;
            memmove(v19, a2, v18 - a2);
            v27 = &v19[v29];
            *&v19[v29] = v30;
            v17 = v73;
          }

          else if (a2 + 8 == v18)
          {
            v31 = *(v18 - 1);
            v27 = v19 + 8;
            if (v18 - 8 != v19)
            {
              memmove(v19 + 8, v19, v18 - 8 - v19);
            }

            *v19 = v31;
          }

          else
          {
            v32 = v28 >> 3;
            if (v28 >> 3 == v29 >> 3)
            {
              v33 = v19 + 8;
              v34 = a2 + 8;
              do
              {
                v35 = *(v33 - 1);
                *(v33 - 1) = *(v34 - 1);
                *(v34 - 1) = v35;
                if (v33 == a2)
                {
                  break;
                }

                v33 += 8;
                v36 = v34 == v18;
                v34 += 8;
              }

              while (!v36);
              v27 = a2;
            }

            else
            {
              v37 = v29 >> 3;
              v38 = v28 >> 3;
              do
              {
                v39 = v38;
                v38 = v37;
                v37 = v39 % v37;
              }

              while (v37);
              v40 = &v19[8 * v38];
              do
              {
                v42 = *(v40 - 1);
                v40 -= 8;
                v41 = v42;
                v43 = &v40[v28];
                v44 = v40;
                do
                {
                  v45 = v43;
                  *v44 = *v43;
                  v46 = &v43[8 * v32];
                  v47 = __OFSUB__(v32, (v18 - v43) >> 3);
                  v49 = v32 - ((v18 - v43) >> 3);
                  v48 = (v49 < 0) ^ v47;
                  v43 = &v19[8 * v49];
                  if (v48)
                  {
                    v43 = v46;
                  }

                  v44 = v45;
                }

                while (v43 != v40);
                *v45 = v41;
              }

              while (v40 != v19);
              v27 = &v19[v29];
            }
          }
        }
      }

      a5 = -(v68 + v13);
      v50 = v17;
      v51 = v17 - v69;
      if (v68 + v69 >= v50 - (v68 + v69) - v13)
      {
        result = std::__inplace_merge<std::_ClassicAlgPolicy,std::function<BOOL ()(Phase::SpatialModeler::PriorityQueueEntry const&,Phase::SpatialModeler::PriorityQueueEntry const&)> &,std::__wrap_iter<std::reference_wrapper<Phase::SpatialModeler::PriorityQueueEntry> *>>(v27, v18, a3, a4, -(v68 + v13), v51, a7, a8);
        v18 = v19;
        v51 = v69;
        a5 = v68;
        a3 = v27;
        v11 += v12;
      }

      else
      {
        result = std::__inplace_merge<std::_ClassicAlgPolicy,std::function<BOOL ()(Phase::SpatialModeler::PriorityQueueEntry const&,Phase::SpatialModeler::PriorityQueueEntry const&)> &,std::__wrap_iter<std::reference_wrapper<Phase::SpatialModeler::PriorityQueueEntry> *>>(&v11[v12], v19, v27, a4, v68, v69, a7, a8);
        v11 = v27;
      }

      v73 = v51;
      a2 = v18;
      if (!v51)
      {
        return result;
      }
    }

    if (a5 <= v73)
    {
      if (a2 != v11)
      {
        v56 = a7;
        v57 = -a7;
        v58 = v11;
        do
        {
          v59 = *v58;
          v58 += 8;
          *v56++ = v59;
          v57 -= 8;
        }

        while (v58 != a2);
        while (a2 != a3)
        {
          v60 = *(a4 + 24);
          if (!v60)
          {
            std::__throw_bad_function_call[abi:ne200100]();
          }

          result = (*(*v60 + 48))(v60, *a2, *a7);
          v61 = a7;
          if (result)
          {
            v62 = a2;
          }

          else
          {
            v62 = a7;
          }

          if (result)
          {
            v63 = 8;
          }

          else
          {
            v63 = 0;
          }

          a2 += v63;
          if (result)
          {
            v64 = 0;
          }

          else
          {
            v64 = 8;
          }

          *v11 = *v62;
          v11 += 8;
          a7 += v64;
          if (v56 == (v61 + v64))
          {
            return result;
          }
        }

        return memmove(v11, a7, -(a7 + v57));
      }
    }

    else if (a2 != a3)
    {
      v52 = 0;
      do
      {
        *(a7 + v52) = *&a2[v52];
        v52 += 8;
      }

      while (&a2[v52] != a3);
      v53 = (a7 + v52);
      while (a2 != v11)
      {
        v54 = *(a4 + 24);
        if (!v54)
        {
          std::__throw_bad_function_call[abi:ne200100]();
        }

        result = (*(*v54 + 48))(v54, *(v53 - 1), *(a2 - 1));
        if (result)
        {
          v55 = a2;
        }

        else
        {
          v55 = v53;
        }

        if (result)
        {
          a2 -= 8;
        }

        else
        {
          v53 -= 8;
        }

        *(a3 - 1) = *(v55 - 1);
        a3 -= 8;
        if (v53 == a7)
        {
          return result;
        }
      }

      if (v53 != a7)
      {
        v66 = -8;
        do
        {
          v67 = *(v53 - 1);
          v53 -= 8;
          *&a3[v66] = v67;
          v66 -= 8;
        }

        while (v53 != a7);
      }
    }
  }

  return result;
}

void sub_23A3670D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  std::__function::__value_func<BOOL ()(Phase::SpatialModeler::PriorityQueueEntry const&,Phase::SpatialModeler::PriorityQueueEntry const&)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

__n128 std::__function::__func<Phase::Controller::SpatialModelerInstance::SubmitCullQueries(Phase::SpatialModeler::PriorityQueue &,Phase::SpatialModeler::Graph &,Phase::SpatialModeler::Scheduler &,Phase::Controller::SpatialModelerInstance::GraphData &,Phase::SpatialModeler::ProfileParams &)::$_0::operator() const(Phase::SpatialModeler::PriorityQueueEntry &,Phase::Controller::SpatialModelerInstance::SubmixInfo const*)::{lambda(Phase::SpatialModeler::Query &)#1},std::allocator<Phase::Controller::SpatialModelerInstance::SubmitCullQueries(Phase::SpatialModeler::PriorityQueue &,Phase::SpatialModeler::Graph &,Phase::SpatialModeler::Scheduler &,Phase::Controller::SpatialModelerInstance::GraphData &,Phase::SpatialModeler::ProfileParams &)::$_0::operator() const(Phase::SpatialModeler::PriorityQueueEntry &,Phase::Controller::SpatialModelerInstance::SubmixInfo const*)::{lambda(Phase::SpatialModeler::Query &)#1}>,void ()(Phase::SpatialModeler::Query &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284D30E48;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<Phase::Controller::SpatialModelerInstance::SubmitCullQueries(Phase::SpatialModeler::PriorityQueue &,Phase::SpatialModeler::Graph &,Phase::SpatialModeler::Scheduler &,Phase::Controller::SpatialModelerInstance::GraphData &,Phase::SpatialModeler::ProfileParams &)::$_0::operator() const(Phase::SpatialModeler::PriorityQueueEntry &,Phase::Controller::SpatialModelerInstance::SubmixInfo const*)::{lambda(Phase::SpatialModeler::Query &)#1},std::allocator<Phase::Controller::SpatialModelerInstance::SubmitCullQueries(Phase::SpatialModeler::PriorityQueue &,Phase::SpatialModeler::Graph &,Phase::SpatialModeler::Scheduler &,Phase::Controller::SpatialModelerInstance::GraphData &,Phase::SpatialModeler::ProfileParams &)::$_0::operator() const(Phase::SpatialModeler::PriorityQueueEntry &,Phase::Controller::SpatialModelerInstance::SubmixInfo const*)::{lambda(Phase::SpatialModeler::Query &)#1}>,void ()(Phase::SpatialModeler::Query &)>::operator()(void *a1)
{
  v34 = *MEMORY[0x277D85DE8];
  v2 = a1[1];
  v1 = a1[2];
  v3 = a1[3];
  v4 = atomic_load(v1);
  if (v4 == 5)
  {
    *buf = *v3;
    Phase::SortedCommandQueue<Phase::SpatialModeler::PriorityQueue,Phase::SpatialModeler::PriorityQueueCommandType,std::variant<std::monostate,Phase::SpatialModeler::PriorityQueueEntry,Phase::UniqueObjectId,Phase::SpatialModeler::PriorityQueueClusterIndexUpdate,Phase::SpatialModeler::PriorityQueueGlobals>>::AddCommand<Phase::UniqueObjectId>();
  }

  if (v4 == 4)
  {
    *buf = *v3;
    Phase::SortedCommandQueue<Phase::SpatialModeler::PriorityQueue,Phase::SpatialModeler::PriorityQueueCommandType,std::variant<std::monostate,Phase::SpatialModeler::PriorityQueueEntry,Phase::UniqueObjectId,Phase::SpatialModeler::PriorityQueueClusterIndexUpdate,Phase::SpatialModeler::PriorityQueueGlobals>>::AddCommand<Phase::UniqueObjectId>();
  }

  v5 = a1[2];
  if (v4 != 3)
  {
    v7 = Phase::Controller::SpatialQueryInstance::GetInputAs<Phase::SpatialModeler::SubmixListenerInput<float>>(v5);
    v8 = Phase::Controller::SpatialQueryInstance::GetOutputAs<Phase::SpatialModeler::CullabilityOutput<float>>(v1);
    v9 = **(Phase::Logger::GetInstance(v8) + 240);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = v23;
      sGenerateSpatialModelerInfoString(v23, *(v2 + 5864));
      if (v24 < 0)
      {
        v10 = v23[0];
      }

      sGenerateSubmixListenerInputString(v21, v7);
      if (v22 >= 0)
      {
        v11 = v21;
      }

      else
      {
        v11 = v21[0];
      }

      sGenerateCullabilityOutputString(v19);
      v12 = v20;
      v13 = v19[0];
      v16 = *(v1 + 48);
      sGenerateErrorCodeString(&__p, &v16);
      v14 = v19;
      if (v12 < 0)
      {
        v14 = v13;
      }

      if (v18 >= 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = *&__p.__val_;
      }

      *buf = 136316418;
      *&buf[4] = "CvmSpatialModelerInstance.mm";
      *&buf[12] = 1024;
      *&buf[14] = 1543;
      v26 = 2080;
      v27 = v10;
      v28 = 2080;
      v29 = v11;
      v30 = 2080;
      v31 = v14;
      v32 = 2080;
      v33 = p_p;
      _os_log_impl(&dword_23A302000, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d (%s) - unexpected cull query status. we are about to force a crash. (%s) (%s (%s)", buf, 0x3Au);
      if (v18 < 0)
      {
        operator delete(*&__p.__val_);
      }

      if (v20 < 0)
      {
        operator delete(v19[0]);
      }

      if (v22 < 0)
      {
        operator delete(v21[0]);
      }

      if (v24 < 0)
      {
        operator delete(v23[0]);
      }
    }

    std::terminate();
  }

  if (*(Phase::Controller::SpatialQueryInstance::GetOutputAs<Phase::SpatialModeler::CullabilityOutput<float>>(v5) + 2) >= 1.0)
  {
    if (*(v3 + 48) == 1)
    {
      *buf = *v3;
      Phase::SortedCommandQueue<Phase::SpatialModeler::PriorityQueue,Phase::SpatialModeler::PriorityQueueCommandType,std::variant<std::monostate,Phase::SpatialModeler::PriorityQueueEntry,Phase::UniqueObjectId,Phase::SpatialModeler::PriorityQueueClusterIndexUpdate,Phase::SpatialModeler::PriorityQueueGlobals>>::AddCommand<Phase::UniqueObjectId>();
    }

    if ((*(v3 + 49) & 1) == 0)
    {
      operator new();
    }
  }

  else
  {
    if (*(v3 + 49) == 1)
    {
      operator new();
    }

    *(v3 + 49) = 0;
    if ((*(v3 + 48) & 1) == 0)
    {
      Phase::SortedCommandQueue<Phase::SpatialModeler::PriorityQueue,Phase::SpatialModeler::PriorityQueueCommandType,std::variant<std::monostate,Phase::SpatialModeler::PriorityQueueEntry,Phase::UniqueObjectId,Phase::SpatialModeler::PriorityQueueClusterIndexUpdate,Phase::SpatialModeler::PriorityQueueGlobals>>::AddCommand<Phase::SpatialModeler::PriorityQueueEntry>();
    }
  }

  *(v3 + 56) = std::chrono::steady_clock::now().__d_.__rep_ / 1000000000.0;
  atomic_store(0, v1);
  v6 = *(v1 + 72);
  *(v1 + 64) = 0;
  *(v1 + 72) = 0;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  atomic_store(0, (v1 + 104));
}

void sub_23A367894(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  if (a31 < 0)
  {
    operator delete(a26);
  }

  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long long,std::unique_ptr<Phase::Controller::SpatialQueryInstance>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,std::unique_ptr<Phase::Controller::SpatialQueryInstance>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::unique_ptr<Phase::Controller::SpatialQueryInstance>::reset[abi:ne200100](v2 + 3, 0);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t *std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,Phase::SpatialModeler::PriorityQueueEntry>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,Phase::SpatialModeler::PriorityQueueEntry>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,Phase::SpatialModeler::PriorityQueueEntry>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,Phase::SpatialModeler::PriorityQueueEntry>>>::__erase_unique<Phase::UniqueObjectId>(void *a1, void *a2)
{
  result = std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>>>::find<Phase::UniqueObjectId>(a1, a2);
  if (result)
  {

    return std::__hash_table<Phase::Controller::Renderer *,std::hash<Phase::Controller::Renderer *>,std::equal_to<Phase::Controller::Renderer *>,std::allocator<Phase::Controller::Renderer *>>::erase(a1, result);
  }

  return result;
}

uint64_t Phase::details::AllocArray<Phase::SpatialModeler::SubmixRoutingInput,std::unique_ptr<Phase::SpatialModeler::SubmixRoutingInput [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::SpatialModeler::SubmixRoutingInput,Phase::SystemAllocator>(Phase::SystemAllocator &,unsigned long,unsigned long)::{lambda(void)#1} const&,std::unique_ptr<Phase::SpatialModeler::SubmixRoutingInput [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::SpatialModeler::SubmixRoutingInput,Phase::SystemAllocator>(Phase::SystemAllocator &,unsigned long,unsigned long)::{lambda(Phase::SpatialModeler::SubmixRoutingInput*)#1} const&>(Phase::Logger *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v18 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    v14 = **(Phase::Logger::GetInstance(a1) + 128);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *v16 = 136315394;
      *&v16[4] = "ManagedPtr.hpp";
      *&v16[12] = 1024;
      *&v16[14] = 229;
      _os_log_impl(&dword_23A302000, v14, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error) [inCount == 0 is true]: Attempting to allocate an array of 0 elements", v16, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Attempting to allocate an array of 0 elements");
  }

  v7 = Phase::SystemAllocator::Alloc(*a3, (304 * **(a3 + 8)), **(a3 + 16));
  v8 = &v7[304 * a2];
  v9 = v7;
  do
  {
    *v9 = 0;
    *(v9 + 1) = 0;
    *v16 = 0;
    *&v16[8] = 0;
    Phase::Subbands<float>::Subbands((v9 + 16), v16, 3);
    v10 = 0;
    *(v9 + 18) = 0;
    v9[152] = 0;
    do
    {
      v11 = &v9[v10];
      *(v11 + 40) = 0;
      *(v11 + 21) = 0;
      v10 += 16;
    }

    while (v10 != 128);
    *(v9 + 36) = -1;
    *(v9 + 37) = 0;
    v9 += 304;
  }

  while (v9 != v8);
  v12 = *a4;
  *v16 = &unk_284D30E90;
  *&v16[8] = v12;
  v17 = v16;
  *a1 = v7;
  std::__function::__value_func<void ()(void *)>::__value_func[abi:ne200100](a1 + 8, v16);
  return std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](v16);
}

void *Phase::SystemAllocator::Alloc(Phase::SystemAllocator *this, Phase::Logger *a2, std::align_val_t a3)
{
  v12 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    return 0;
  }

  if (a3)
  {
    if ((a3 & (a3 - 1)) == 0)
    {

      return operator new(a2, a3);
    }

    v5 = **(Phase::Logger::GetInstance(this) + 192);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = 136315650;
      v7 = "SystemAllocator.hpp";
      v8 = 1024;
      v9 = 47;
      v10 = 2048;
      v11 = a2;
      _os_log_impl(&dword_23A302000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d Error allocating memory - alignment must be power of two. Alignment requested %zu", &v6, 0x1Cu);
    }

    return 0;
  }

  return operator new(a2);
}

uint64_t std::__function::__func<std::unique_ptr<Phase::SpatialModeler::SubmixRoutingInput [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::SpatialModeler::SubmixRoutingInput,std::unique_ptr<Phase::SpatialModeler::SubmixRoutingInput [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::SpatialModeler::SubmixRoutingInput,Phase::SystemAllocator>(Phase::SystemAllocator &,unsigned long,unsigned long)::{lambda(void)#1} const&,std::unique_ptr<Phase::SpatialModeler::SubmixRoutingInput [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::SpatialModeler::SubmixRoutingInput,Phase::SystemAllocator>(Phase::SystemAllocator &,unsigned long,unsigned long)::{lambda(Phase::SpatialModeler::SubmixRoutingInput*)#1} const&>(unsigned long,Phase::SystemAllocator&&,std::unique_ptr<Phase::SpatialModeler::SubmixRoutingInput [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::SpatialModeler::SubmixRoutingInput,Phase::SystemAllocator>(Phase::SystemAllocator &,unsigned long,unsigned long)::{lambda(Phase::SpatialModeler::SubmixRoutingInput*)#1} const&)::{lambda(void *)#1},std::allocator<std::unique_ptr<Phase::SpatialModeler::SubmixRoutingInput [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::SpatialModeler::SubmixRoutingInput,std::unique_ptr<Phase::SpatialModeler::SubmixRoutingInput [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::SpatialModeler::SubmixRoutingInput,Phase::SystemAllocator>(Phase::SystemAllocator &,unsigned long,unsigned long)::{lambda(void)#1} const&,std::unique_ptr<Phase::SpatialModeler::SubmixRoutingInput [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::SpatialModeler::SubmixRoutingInput,Phase::SystemAllocator>(Phase::SystemAllocator &,unsigned long,unsigned long)::{lambda(Phase::SpatialModeler::SubmixRoutingInput*)#1} const&>(unsigned long,Phase::SystemAllocator&&,std::unique_ptr<Phase::SpatialModeler::SubmixRoutingInput [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::SpatialModeler::SubmixRoutingInput,Phase::SystemAllocator>(Phase::SystemAllocator &,unsigned long,unsigned long)::{lambda(Phase::SpatialModeler::SubmixRoutingInput*)#1} const&)::{lambda(void *)#1}>,void ()(void *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284D30E90;
  a2[1] = v2;
  return result;
}

uint64_t *std::unique_ptr<Phase::SpatialModeler::SubmixRoutingInput [],std::function<void ()(void *)>>::operator=[abi:ne200100](uint64_t *a1, uint64_t *a2)
{
  v4 = *a2;
  *a2 = 0;
  v5 = *a1;
  *a1 = v4;
  if (v5)
  {
    std::function<void ()(void *)>::operator()((a1 + 1), v5);
  }

  std::__function::__value_func<void ()(void *)>::operator=[abi:ne200100]((a1 + 1), (a2 + 1));
  return a1;
}

uint64_t std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::pair<std::unique_ptr<Phase::Controller::SpatialQueryInstance>,std::vector<Phase::Controller::SpatialModelerInstance::SubmixHandleInfo>>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::pair<std::unique_ptr<Phase::Controller::SpatialQueryInstance>,std::vector<Phase::Controller::SpatialModelerInstance::SubmixHandleInfo>>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::pair<std::unique_ptr<Phase::Controller::SpatialQueryInstance>,std::vector<Phase::Controller::SpatialModelerInstance::SubmixHandleInfo>>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::pair<std::unique_ptr<Phase::Controller::SpatialQueryInstance>,std::vector<Phase::Controller::SpatialModelerInstance::SubmixHandleInfo>>>>>::remove(uint64_t result, void *a2, void *a3)
{
  v3 = a2[1];
  v4 = a3[1];
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v4 >= *&v3)
    {
      v4 %= *&v3;
    }
  }

  else
  {
    v4 &= *&v3 - 1;
  }

  v6 = *(*a2 + 8 * v4);
  do
  {
    v7 = v6;
    v6 = *v6;
  }

  while (v6 != a3);
  if (v7 == a2 + 2)
  {
    goto LABEL_18;
  }

  v8 = v7[1];
  if (v5.u32[0] > 1uLL)
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

  if (v8 != v4)
  {
LABEL_18:
    if (!*a3)
    {
      goto LABEL_19;
    }

    v9 = *(*a3 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v3)
      {
        v9 %= *&v3;
      }
    }

    else
    {
      v9 &= *&v3 - 1;
    }

    if (v9 != v4)
    {
LABEL_19:
      *(*a2 + 8 * v4) = 0;
    }
  }

  v10 = *a3;
  if (*a3)
  {
    v11 = *(v10 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v11 >= *&v3)
      {
        v11 %= *&v3;
      }
    }

    else
    {
      v11 &= *&v3 - 1;
    }

    if (v11 != v4)
    {
      *(*a2 + 8 * v11) = v7;
      v10 = *a3;
    }
  }

  *v7 = v10;
  *a3 = 0;
  --a2[3];
  *result = a3;
  *(result + 8) = a2;
  *(result + 16) = 1;
  *(result + 17) = 0;
  *(result + 20) = 0;
  return result;
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<Phase::UniqueObjectId,std::pair<std::unique_ptr<Phase::Controller::SpatialQueryInstance>,std::vector<Phase::Controller::SpatialModelerInstance::SubmixHandleInfo>>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<Phase::UniqueObjectId,std::pair<std::unique_ptr<Phase::Controller::SpatialQueryInstance>,std::vector<Phase::Controller::SpatialModelerInstance::SubmixHandleInfo>>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<Phase::UniqueObjectId const,std::pair<std::unique_ptr<Phase::Controller::SpatialQueryInstance>,std::vector<Phase::Controller::SpatialModelerInstance::SubmixHandleInfo>>>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::pair<std::unique_ptr<Phase::Controller::SpatialQueryInstance>,std::vector<Phase::Controller::SpatialModelerInstance::SubmixHandleInfo>>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::pair<std::unique_ptr<Phase::Controller::SpatialQueryInstance>,std::vector<Phase::Controller::SpatialModelerInstance::SubmixHandleInfo>>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::pair<std::unique_ptr<Phase::Controller::SpatialQueryInstance>,std::vector<Phase::Controller::SpatialModelerInstance::SubmixHandleInfo>>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::pair<std::unique_ptr<Phase::Controller::SpatialQueryInstance>,std::vector<Phase::Controller::SpatialModelerInstance::SubmixHandleInfo>>>>>::clear(uint64_t a1)
{
  if (*(a1 + 24))
  {
    std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::pair<std::unique_ptr<Phase::Controller::SpatialQueryInstance>,std::vector<Phase::Controller::SpatialModelerInstance::SubmixHandleInfo>>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::pair<std::unique_ptr<Phase::Controller::SpatialQueryInstance>,std::vector<Phase::Controller::SpatialModelerInstance::SubmixHandleInfo>>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::pair<std::unique_ptr<Phase::Controller::SpatialQueryInstance>,std::vector<Phase::Controller::SpatialModelerInstance::SubmixHandleInfo>>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::pair<std::unique_ptr<Phase::Controller::SpatialQueryInstance>,std::vector<Phase::Controller::SpatialModelerInstance::SubmixHandleInfo>>>>>::__deallocate_node(*(a1 + 16));
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

void *std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::pair<std::unique_ptr<Phase::Controller::SpatialQueryInstance>,std::vector<Phase::Controller::SpatialModelerInstance::SubmixHandleInfo>>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::pair<std::unique_ptr<Phase::Controller::SpatialQueryInstance>,std::vector<Phase::Controller::SpatialModelerInstance::SubmixHandleInfo>>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::pair<std::unique_ptr<Phase::Controller::SpatialQueryInstance>,std::vector<Phase::Controller::SpatialModelerInstance::SubmixHandleInfo>>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::pair<std::unique_ptr<Phase::Controller::SpatialQueryInstance>,std::vector<Phase::Controller::SpatialModelerInstance::SubmixHandleInfo>>>>>::find<Phase::UniqueObjectId>(uint64_t a1, unint64_t a2, void *a3)
{
  v3 = 0;
  v4 = 0xCBF29CE484222325;
  do
  {
    v4 = 0x100000001B3 * (v4 ^ *(a3 + v3++));
  }

  while (v3 != 16);
  if (!a2)
  {
    return 0;
  }

  v5 = vcnt_s8(a2);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = v4;
    if (v4 >= a2)
    {
      v6 = v4 % a2;
    }
  }

  else
  {
    v6 = v4 & (a2 - 1);
  }

  v7 = *(a1 + 8 * v6);
  if (!v7)
  {
    return 0;
  }

  result = *v7;
  if (*v7)
  {
    do
    {
      v9 = result[1];
      if (v9 == v4)
      {
        if (result[2] == *a3 && result[3] == a3[1])
        {
          return result;
        }
      }

      else
      {
        if (v5.u32[0] > 1uLL)
        {
          if (v9 >= a2)
          {
            v9 %= a2;
          }
        }

        else
        {
          v9 &= a2 - 1;
        }

        if (v9 != v6)
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

__n128 std::__function::__func<Phase::Controller::SpatialModelerInstance::SubmitSpatialQueries(Phase::SpatialModeler::PriorityQueue &,Phase::SpatialModeler::Graph &,Phase::SpatialModeler::Scheduler &,Phase::Controller::SpatialModelerInstance::GraphData &,Phase::SpatialModeler::ProfileParams &)::$_0,std::allocator<Phase::Controller::SpatialModelerInstance::SubmitSpatialQueries(Phase::SpatialModeler::PriorityQueue &,Phase::SpatialModeler::Graph &,Phase::SpatialModeler::Scheduler &,Phase::Controller::SpatialModelerInstance::GraphData &,Phase::SpatialModeler::ProfileParams &)::$_0>,void ()(Phase::SpatialModeler::Query &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284D30ED8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<Phase::Controller::SpatialModelerInstance::SubmitSpatialQueries(Phase::SpatialModeler::PriorityQueue &,Phase::SpatialModeler::Graph &,Phase::SpatialModeler::Scheduler &,Phase::Controller::SpatialModelerInstance::GraphData &,Phase::SpatialModeler::ProfileParams &)::$_0,std::allocator<Phase::Controller::SpatialModelerInstance::SubmitSpatialQueries(Phase::SpatialModeler::PriorityQueue &,Phase::SpatialModeler::Graph &,Phase::SpatialModeler::Scheduler &,Phase::Controller::SpatialModelerInstance::GraphData &,Phase::SpatialModeler::ProfileParams &)::$_0>,void ()(Phase::SpatialModeler::Query &)>::operator()(uint64_t a1)
{
  v83 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 8);
  v2 = *(a1 + 32);
  v70 = *(a1 + 16);
  v3 = std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::pair<std::unique_ptr<Phase::Controller::SpatialQueryInstance>,std::vector<Phase::Controller::SpatialModelerInstance::SubmixHandleInfo>>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::pair<std::unique_ptr<Phase::Controller::SpatialQueryInstance>,std::vector<Phase::Controller::SpatialModelerInstance::SubmixHandleInfo>>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::pair<std::unique_ptr<Phase::Controller::SpatialQueryInstance>,std::vector<Phase::Controller::SpatialModelerInstance::SubmixHandleInfo>>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::pair<std::unique_ptr<Phase::Controller::SpatialQueryInstance>,std::vector<Phase::Controller::SpatialModelerInstance::SubmixHandleInfo>>>>>::find<Phase::UniqueObjectId>(*(v2 + 984), *(v2 + 992), &v70);
  if (!v3)
  {
    v30 = **(Phase::Logger::GetInstance(0) + 240);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      sGenerateSpatialModelerInfoString(&v80, *(v1 + 5864));
      v32 = v82 >= 0 ? &v80 : v80;
      *buf = 136315650;
      *&buf[4] = "CvmSpatialModelerInstance.mm";
      *&buf[12] = 1024;
      *&buf[14] = 2416;
      *&buf[18] = 2080;
      *&buf[20] = v32;
      _os_log_impl(&dword_23A302000, v30, OS_LOG_TYPE_ERROR, "%25s:%-5d (%s) - invalid spatial query in finish callback", buf, 0x1Cu);
      if (v82 < 0)
      {
        operator delete(v80);
      }
    }

    goto LABEL_36;
  }

  v4 = v3;
  v5 = v3[4];
  v6 = atomic_load(v5);
  updated = Phase::Controller::SpatialQueryInstance::GetInputAs<Phase::SpatialModeler::RenderGroupInput<float>>(v5);
  v8 = *(v4[4] + 120);
  if (!v8 || *v8 != 3)
  {
    v50 = v4[4];
    v51 = **(Phase::Logger::GetInstance(updated) + 400);
    if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
    {
      v52 = **(v50 + 120);
      *buf = 136315906;
      *&buf[4] = "CvmSpatialQueryInstance.hpp";
      *&buf[12] = 1024;
      *&buf[14] = 121;
      *&buf[18] = 1024;
      *&buf[20] = 3;
      *&buf[24] = 1024;
      *&buf[26] = v52;
      _os_log_impl(&dword_23A302000, v51, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::invalid_argument) [nullptr == pOutput is true]: Bad spatial query output cast: expected type: %i, actual type: %i", buf, 0x1Eu);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "Bad spatial query output cast: expected type: %i, actual type: %i");
  }

  v9 = updated;
  if (v6 == 5)
  {
    v33 = **(Phase::Logger::GetInstance(updated) + 240);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v41 = *(v1 + 5864);
      v42 = &v80;
      sGenerateSpatialModelerInfoString(&v80, v41);
      if (v82 < 0)
      {
        v42 = v80;
      }

      sGenerateRenderGroupInputString(&v71, v9);
      if (v73 >= 0)
      {
        v43 = &v71;
      }

      else
      {
        v43 = v71;
      }

      sGenerateDirectionalMetadataOutputString(&v67, v8);
      v44 = v69;
      v45 = v67;
      v64 = *(v4[4] + 48);
      sGenerateErrorCodeString(&__p, &v64);
      v46 = &v67;
      if (v44 < 0)
      {
        v46 = v45;
      }

      if (v66 >= 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = *&__p.__val_;
      }

      *buf = 136316418;
      *&buf[4] = "CvmSpatialModelerInstance.mm";
      *&buf[12] = 1024;
      *&buf[14] = 2504;
      *&buf[18] = 2080;
      *&buf[20] = v42;
      *&buf[28] = 2080;
      v75 = v43;
      v76 = 2080;
      v77 = v46;
      v78 = 2080;
      v79 = p_p;
      _os_log_impl(&dword_23A302000, v33, OS_LOG_TYPE_ERROR, "%25s:%-5d (%s) - spatial query failed (%s) (%s) (%s)", buf, 0x3Au);
      if (v66 < 0)
      {
        operator delete(*&__p.__val_);
      }

      if (v69 < 0)
      {
        operator delete(v67);
      }

      if (v73 < 0)
      {
        operator delete(v71);
      }

      if (v82 < 0)
      {
        operator delete(v80);
      }
    }

    goto LABEL_83;
  }

  if (v6 == 4)
  {
    v33 = **(Phase::Logger::GetInstance(updated) + 240);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v34 = *(v1 + 5864);
      v35 = &v80;
      sGenerateSpatialModelerInfoString(&v80, v34);
      if (v82 < 0)
      {
        v35 = v80;
      }

      sGenerateRenderGroupInputString(&v71, v9);
      if (v73 >= 0)
      {
        v36 = &v71;
      }

      else
      {
        v36 = v71;
      }

      sGenerateDirectionalMetadataOutputString(&v67, v8);
      v37 = v69;
      v38 = v67;
      v64 = *(v4[4] + 48);
      sGenerateErrorCodeString(&__p, &v64);
      v39 = &v67;
      if (v37 < 0)
      {
        v39 = v38;
      }

      if (v66 >= 0)
      {
        v40 = &__p;
      }

      else
      {
        v40 = *&__p.__val_;
      }

      *buf = 136316418;
      *&buf[4] = "CvmSpatialModelerInstance.mm";
      *&buf[12] = 1024;
      *&buf[14] = 2486;
      *&buf[18] = 2080;
      *&buf[20] = v35;
      *&buf[28] = 2080;
      v75 = v36;
      v76 = 2080;
      v77 = v39;
      v78 = 2080;
      v79 = v40;
      _os_log_impl(&dword_23A302000, v33, OS_LOG_TYPE_ERROR, "%25s:%-5d (%s) - spatial query failed (%s) (%s) (%s)", buf, 0x3Au);
      if (v66 < 0)
      {
        operator delete(*&__p.__val_);
      }

      if (v69 < 0)
      {
        operator delete(v67);
      }

      if (v73 < 0)
      {
        operator delete(v71);
      }

      if (v82 < 0)
      {
        operator delete(v80);
      }
    }

LABEL_83:

    v48 = v4[4];
    atomic_store(0, v48);
    v49 = *(v48 + 72);
    *(v48 + 64) = 0;
    *(v48 + 72) = 0;
    if (v49)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v49);
    }

    atomic_store(0, (v48 + 104));
    v4[6] = v4[5];
    return;
  }

  if (v6 != 3)
  {
    v54 = **(Phase::Logger::GetInstance(updated) + 240);
    if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
    {
      v55 = *(v1 + 5864);
      v56 = &v80;
      sGenerateSpatialModelerInfoString(&v80, v55);
      if (v82 < 0)
      {
        v56 = v80;
      }

      sGenerateRenderGroupInputString(&v71, v9);
      if (v73 >= 0)
      {
        v57 = &v71;
      }

      else
      {
        v57 = v71;
      }

      sGenerateDirectionalMetadataOutputString(&v67, v8);
      v58 = v69;
      v59 = v67;
      v64 = *(v4[4] + 48);
      sGenerateErrorCodeString(&__p, &v64);
      v60 = &v67;
      if (v58 < 0)
      {
        v60 = v59;
      }

      if (v66 >= 0)
      {
        v61 = &__p;
      }

      else
      {
        v61 = *&__p.__val_;
      }

      *buf = 136316418;
      *&buf[4] = "CvmSpatialModelerInstance.mm";
      *&buf[12] = 1024;
      *&buf[14] = 2522;
      *&buf[18] = 2080;
      *&buf[20] = v56;
      *&buf[28] = 2080;
      v75 = v57;
      v76 = 2080;
      v77 = v60;
      v78 = 2080;
      v79 = v61;
      _os_log_impl(&dword_23A302000, v54, OS_LOG_TYPE_ERROR, "%25s:%-5d (%s) - unexpected spatial query status. we are about to force a crash. (%s) (%s) (%s)", buf, 0x3Au);
      if (v66 < 0)
      {
        operator delete(*&__p.__val_);
      }

      if (v69 < 0)
      {
        operator delete(v67);
      }

      if (v73 < 0)
      {
        operator delete(v71);
      }

      if (v82 < 0)
      {
        operator delete(v80);
      }
    }

    std::terminate();
  }

  if (*(v8 + 200) == 1)
  {
    v10 = *(v8 + 104);
    v11 = v10[3].f32[0];
    v12 = vbsl_s8(vclez_f32(v10[2]), 0x100000001, v10[2]);
    v62 = *v12.i32;
    v63 = logf(*&v12.i32[1]);
    v13.f32[0] = logf(v62);
    v13.f32[1] = v63;
    __asm { FMOV            V1.2S, #10.0 }

    v18 = vmul_f32(vdiv_f32(vmul_f32(v13, vdup_n_s32(0x410AF967u)), _D1), _D1);
    v80 = v18;
    v19 = 1;
    if (v11 > 0.0)
    {
      *&v19 = v11;
    }

    v20 = logf(*&v19);
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = ((v20 * 8.6859) / 10.0) * 10.0;
    v81 = v24;
    *buf = 0;
    *&buf[8] = 0;
    do
    {
      if (v22 <= 2)
      {
        v21 = v22 + 1;
        *&buf[4 * v22++] = *(&v80 + v23);
      }

      v23 += 4;
    }

    while (v23 != 12);
    if (v21 <= 2)
    {
      bzero(&buf[4 * v21], 12 - 4 * v21);
    }

    v67 = *buf;
    v68 = *&buf[8];
    _ZF = *(v9 + 536) == *buf && *(v9 + 544) == *&buf[8];
    if (!_ZF || *(v9 + 548) != **(v8 + 56))
    {
      v26 = 0;
      v27 = 0;
      v28 = 0;
      *buf = *(v8 + 192);
      v71 = v18;
      v72 = v24;
      v80 = 0;
      v81 = 0.0;
      do
      {
        if (v27 <= 2)
        {
          v26 = v27 + 1;
          *(&v80 + v27++) = *(&v71 + v28);
        }

        v28 += 4;
      }

      while (v28 != 12);
      if (v26 <= 2)
      {
        bzero(&v80 + 4 * v26, 12 - 4 * v26);
      }

      *&v29 = v80;
      *(&v29 + 2) = v81;
      HIDWORD(v29) = **(v8 + 56);
      *&buf[8] = v29;
      updated = Phase::Controller::RenderGroupMgr::UpdatePointSourceHistory(v2 + 1600, *(v9 + 192), *(v9 + 200), buf);
    }
  }

  if (v4[5] == v4[6])
  {
    v30 = **(Phase::Logger::GetInstance(updated) + 240);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      sGenerateSpatialModelerInfoString(&v80, *(v1 + 5864));
      if (v82 >= 0)
      {
        v31 = &v80;
      }

      else
      {
        v31 = v80;
      }

      *buf = 136315650;
      *&buf[4] = "CvmSpatialModelerInstance.mm";
      *&buf[12] = 1024;
      *&buf[14] = 2470;
      *&buf[18] = 2080;
      *&buf[20] = v31;
      _os_log_impl(&dword_23A302000, v30, OS_LOG_TYPE_ERROR, "%25s:%-5d (%s) - empty spatial query in finish callback", buf, 0x1Cu);
      if (v82 < 0)
      {
        operator delete(v80);
      }
    }

LABEL_36:
  }
}

void sub_23A368AAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  if (*(v33 - 105) < 0)
  {
    operator delete(*(v33 - 128));
  }

  _Unwind_Resume(a1);
}

void std::vector<Phase::Controller::SpatialModelerInstance::SubmixHandleInfo>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<Phase::Controller::SpatialModelerInstance::SubmixHandleInfo>>(a2);
  }

  std::vector<Phase::Controller::DVM23::SubmixController *>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<Phase::Controller::SpatialModelerInstance::SubmixHandleInfo>>(unint64_t a1)
{
  if (!(a1 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__hash_table<std::__hash_value_type<unsigned long long,std::unique_ptr<Phase::Controller::SpatialQueryInstance>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<Phase::Controller::SpatialQueryInstance>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<Phase::Controller::SpatialQueryInstance>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unique_ptr<Phase::Controller::SpatialQueryInstance>>>>::clear(uint64_t a1)
{
  if (*(a1 + 24))
  {
    std::__hash_table<std::__hash_value_type<unsigned long long,std::unique_ptr<Phase::Controller::SpatialQueryInstance>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<Phase::Controller::SpatialQueryInstance>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<Phase::Controller::SpatialQueryInstance>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unique_ptr<Phase::Controller::SpatialQueryInstance>>>>::__deallocate_node(a1, *(a1 + 16));
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

__n128 std::__function::__func<Phase::Controller::SpatialModelerInstance::SetupGraphData(Phase::Controller::SpatialModelerInstance::GraphData &,Phase::SpatialModeler::GraphStage &)::$_0,std::allocator<Phase::Controller::SpatialModelerInstance::SetupGraphData(Phase::Controller::SpatialModelerInstance::GraphData &,Phase::SpatialModeler::GraphStage &)::$_0>,void ()(Phase::SpatialModeler::PriorityQueue &,Phase::SpatialModeler::Graph &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284D30F20;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<Phase::Controller::SpatialModelerInstance::SetupGraphData(Phase::Controller::SpatialModelerInstance::GraphData &,Phase::SpatialModeler::GraphStage &)::$_0,std::allocator<Phase::Controller::SpatialModelerInstance::SetupGraphData(Phase::Controller::SpatialModelerInstance::GraphData &,Phase::SpatialModeler::GraphStage &)::$_0>,void ()(Phase::SpatialModeler::PriorityQueue &,Phase::SpatialModeler::Graph &)>::operator()(uint64_t a1, Phase::SpatialModeler::PriorityQueue *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  if (*(a2 + 8))
  {
    v3 = *(a1 + 16);
    v14 = *(a1 + 8);
    Phase::Controller::SpatialModelerInstance::GetLatestSubmixState(&v16, v14);
    v4 = v18;
    if (v18)
    {
      v5 = v16;
      v15 = v16;
      while (!*v5)
      {
        v5 += 3;
        if (v5 >= &v16[3 * v18])
        {
          goto LABEL_6;
        }
      }

      Phase::Controller::SpatialModelerInstance::GetAvailableComputeForGraph(v14, v3);
      v19 = 0;
      v20 = 0;
      v21 = 0;
      std::vector<std::reference_wrapper<Phase::SpatialModeler::PriorityQueueEntry>>::reserve(&v19, *(a2 + 8));
      for (i = *(a2 + 7); i; i = *i)
      {
        *buf = i + 4;
        std::vector<std::reference_wrapper<Phase::SpatialModeler::PriorityQueueEntry>>::push_back[abi:ne200100](&v19, buf);
      }

      v7 = v19;
      v8 = v20;
      if (*(a2 + 26))
      {
        std::__function::__value_func<BOOL ()(Phase::SpatialModeler::PriorityQueueEntry const&,Phase::SpatialModeler::PriorityQueueEntry const&)>::__value_func[abi:ne200100](v22, a2 + 184);
        std::__stable_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<std::reference_wrapper<Phase::SpatialModeler::PriorityQueueEntry> *>,std::function<BOOL ()(Phase::SpatialModeler::PriorityQueueEntry const&,Phase::SpatialModeler::PriorityQueueEntry const&)>>(v7, v8, v22);
        std::__function::__value_func<BOOL ()(Phase::SpatialModeler::PriorityQueueEntry const&,Phase::SpatialModeler::PriorityQueueEntry const&)>::~__value_func[abi:ne200100](v22);
      }

      if (v7 != v8)
      {
        v9 = v7;
        do
        {
          v10 = *v9;
          v11 = *(*v9 + 16);
          if (v4 > v11)
          {
            v12 = &v15[3 * v11];
            if (*(v12 + 5) == HIDWORD(v11))
            {
              if (*v12)
              {
                operator new();
              }
            }
          }

          v13 = *(a2 + 22);
          if (v13)
          {
            (*(*v13 + 48))(v13, *v9);
          }

          std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,Phase::SpatialModeler::PriorityQueueEntry>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,Phase::SpatialModeler::PriorityQueueEntry>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,Phase::SpatialModeler::PriorityQueueEntry>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,Phase::SpatialModeler::PriorityQueueEntry>>>::__erase_unique<Phase::UniqueObjectId>(a2 + 5, v10);
          ++v9;
        }

        while (v9 != v8);
      }

      if (v7)
      {
        operator delete(v7);
      }

      atomic_store(0, (v3 + 752));
    }

    else
    {
LABEL_6:
      Phase::SpatialModeler::PriorityQueue::ClearEntries(a2, 1);
    }

    if (v17)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v17);
    }
  }
}

void sub_23A369784(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, std::__shared_weak_count *a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *__p, uint64_t a39, int a40, __int16 a41, char a42, char a43, void *a44, uint64_t a45, int a46, __int16 a47, char a48, char a49, uint64_t a50, uint64_t a51, std::__shared_weak_count **a52)
{
  if (a43 < 0)
  {
    operator delete(__p);
  }

  if (a49 < 0)
  {
    operator delete(a44);
  }

  std::unique_ptr<Phase::Controller::SpatialQueryInstance>::reset[abi:ne200100](&a52, 0);
  if (a32)
  {
    operator delete(a32);
  }

  if (a30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a30);
  }

  _Unwind_Resume(a1);
}

__n128 std::__function::__func<Phase::Controller::SpatialModelerInstance::SetupGraphData(Phase::Controller::SpatialModelerInstance::GraphData &,Phase::SpatialModeler::GraphStage &)::$_1,std::allocator<Phase::Controller::SpatialModelerInstance::SetupGraphData(Phase::Controller::SpatialModelerInstance::GraphData &,Phase::SpatialModeler::GraphStage &)::$_1>,void ()(Phase::SpatialModeler::PriorityQueue &,Phase::SpatialModeler::Graph &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284D30F68;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<Phase::Controller::SpatialModelerInstance::SetupGraphData(Phase::Controller::SpatialModelerInstance::GraphData &,Phase::SpatialModeler::GraphStage &)::$_2,std::allocator<Phase::Controller::SpatialModelerInstance::SetupGraphData(Phase::Controller::SpatialModelerInstance::GraphData &,Phase::SpatialModeler::GraphStage &)::$_2>,void ()(Phase::SpatialModeler::PriorityQueueEntry &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284D30FB0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<Phase::Controller::SpatialModelerInstance::SetupGraphData(Phase::Controller::SpatialModelerInstance::GraphData &,Phase::SpatialModeler::GraphStage &)::$_2,std::allocator<Phase::Controller::SpatialModelerInstance::SetupGraphData(Phase::Controller::SpatialModelerInstance::GraphData &,Phase::SpatialModeler::GraphStage &)::$_2>,void ()(Phase::SpatialModeler::PriorityQueueEntry &)>::operator()(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  v3 = v2[98];
  if (v3)
  {
    v4 = *(a2 + 16);
    v5 = vcnt_s8(v3);
    v5.i16[0] = vaddlv_u8(v5);
    if (v5.u32[0] > 1uLL)
    {
      v6 = *(a2 + 16);
      if (*&v3 <= v4)
      {
        v6 = v4 % *&v3;
      }
    }

    else
    {
      v6 = (*&v3 - 1) & v4;
    }

    v7 = *(*&v2[97] + 8 * v6);
    if (v7)
    {
      for (i = *v7; i; i = *i)
      {
        v9 = i[1];
        if (v9 == v4)
        {
          if (i[2] == v4)
          {
            v10 = i[3];
            if (v10)
            {
              if (atomic_load(v10 + 26))
              {
                v12 = atomic_load(v10);
                if (v12 - 1 <= 1)
                {
                  atomic_compare_exchange_strong(v10, &v12, 6u);
                }
              }
            }

            return result;
          }
        }

        else
        {
          if (v5.u32[0] > 1uLL)
          {
            if (v9 >= *&v3)
            {
              v9 %= *&v3;
            }
          }

          else
          {
            v9 &= *&v3 - 1;
          }

          if (v9 != v6)
          {
            return result;
          }
        }
      }
    }
  }

  return result;
}

__n128 std::__function::__func<Phase::Controller::SpatialModelerInstance::SetupGraphData(Phase::Controller::SpatialModelerInstance::GraphData &,Phase::SpatialModeler::GraphStage &)::$_4,std::allocator<Phase::Controller::SpatialModelerInstance::SetupGraphData(Phase::Controller::SpatialModelerInstance::GraphData &,Phase::SpatialModeler::GraphStage &)::$_4>,void ()(Phase::SpatialModeler::PriorityQueue &,Phase::SpatialModeler::Graph &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284D31040;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<Phase::Controller::SpatialModelerInstance::SetupGraphData(Phase::Controller::SpatialModelerInstance::GraphData &,Phase::SpatialModeler::GraphStage &)::$_4,std::allocator<Phase::Controller::SpatialModelerInstance::SetupGraphData(Phase::Controller::SpatialModelerInstance::GraphData &,Phase::SpatialModeler::GraphStage &)::$_4>,void ()(Phase::SpatialModeler::PriorityQueue &,Phase::SpatialModeler::Graph &)>::operator()(void *a1, Phase::SpatialModeler::PriorityQueue *a2, void *a3)
{
  __src[37] = *MEMORY[0x277D85DE8];
  if (!*(a2 + 8))
  {
    return;
  }

  v4 = a1[1];
  v89 = *(v4 + 5872);
  v92 = a1[3];
  v94 = a1[2];
  Phase::Controller::RenderGroupMgr::LoadFreshData((v94 + 1024));
  v95 = v4;
  Phase::Controller::SpatialModelerInstance::GetLatestSubmixState(&v102, v4);
  v5 = v104;
  if (!v104)
  {
LABEL_6:
    Phase::SpatialModeler::PriorityQueue::ClearEntries(a2, 1);
    goto LABEL_143;
  }

  v90 = (v94 + 960);
  v6 = v102;
  v93 = v102;
  while (!*v6)
  {
    v6 += 3;
    if (v6 >= &v102[3 * v104])
    {
      goto LABEL_6;
    }
  }

  v7 = *(a2 + 8);
  if (!v7)
  {
    goto LABEL_143;
  }

  v8 = Phase::Controller::SpatialQueryInstance::GetInputAs<Phase::SpatialModeler::ClusterSetInput<float>>(v94 + 816);
  v9 = *(v92 + 40);
  v10 = *(v92 + 56);
  *(v8 + 5) = *(v92 + 72);
  *(v8 + 24) = v10;
  *(v8 + 8) = v9;
  v96 = v8;
  v11 = *(v8 + 5);
  Phase::Controller::SpatialModelerInstance::GetAvailableComputeForGraph(v4, v94);
  v13 = v12;
  Phase::Controller::SpatialModelerInstance::GetParams(v4, *v94, 0);
  v14 = *(Phase::Controller::SpatialModelerInstance::GetParams(v4, *v94, 0) + 2);
  v15 = *(v94 + 72);
  Phase::Controller::SpatialModelerInstance::GetParams(v4, *v94, 1);
  Params = Phase::Controller::SpatialModelerInstance::GetParams(v4, *v94, 1);
  if (*(v4 + 528) != 2)
  {
    std::terminate();
  }

  v17 = *(Params + 2);
  Phase::Controller::SpatialModelerInstance::GetParams(v4, *v94, 2);
  v18 = *(Phase::Controller::SpatialModelerInstance::GetParams(v4, *v94, 2) + 2) * 0.0;
  if (v18 <= 0.0)
  {
    v19 = 0x7FFFFFFF;
  }

  else
  {
    v19 = llround((v13 + v14 * -0.0 * v15 + v17 * -0.0) / v18);
    if (v19 <= 1)
    {
      v19 = 1;
    }
  }

  if (v19 >= v11)
  {
    v19 = v11;
  }

  *(v96 + 40) = v19;
  v106 = v7;
  v97[0] = 16;
  *&v99 = v4 + 5848;
  *(&v99 + 1) = &v106;
  *&v100 = v97;
  v109 = v4 + 5848;
  Phase::details::AllocArray<Phase::SpatialModeler::SubmixRoutingInput,std::unique_ptr<Phase::SpatialModeler::SubmixRoutingInput [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::SpatialModeler::SubmixRoutingInput,Phase::SystemAllocator>(Phase::SystemAllocator &,unsigned long,unsigned long)::{lambda(void)#1} const&,std::unique_ptr<Phase::SpatialModeler::SubmixRoutingInput [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::SpatialModeler::SubmixRoutingInput,Phase::SystemAllocator>(Phase::SystemAllocator &,unsigned long,unsigned long)::{lambda(Phase::SpatialModeler::SubmixRoutingInput*)#1} const&>(&v110, v7, &v99, &v109);
  v20 = v110;
  v110 = 0;
  __src[0] = v20;
  std::__function::__value_func<void ()(void *)>::__value_func[abi:ne200100](&__src[1], v111);
  __src[5] = v7;
  std::unique_ptr<Phase::SpatialModeler::SubmixRoutingInput [],std::function<void ()(void *)>>::reset[abi:ne200100](&v110);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](v111);
  std::unique_ptr<Phase::SpatialModeler::SubmixRoutingInput [],std::function<void ()(void *)>>::operator=[abi:ne200100]((v96 + 104), __src);
  *(v96 + 144) = __src[5];
  std::unique_ptr<Phase::SpatialModeler::SubmixRoutingInput [],std::function<void ()(void *)>>::reset[abi:ne200100](__src);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](&__src[1]);
  v99 = 0u;
  v100 = 0u;
  v101 = 1065353216;
  std::__hash_table<std::__hash_value_type<unsigned int,Phase::Controller::OptionalProperties::Property>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,Phase::Controller::OptionalProperties::Property>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,Phase::Controller::OptionalProperties::Property>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,Phase::Controller::OptionalProperties::Property>>>::__rehash<true>(&v99, *(v94 + 1184));
  v87 = v7;
  v21 = *(v94 + 1184);
  if (!v21)
  {
    std::unique_ptr<Phase::SpatialModeler::RenderGroup [],std::function<void ()(void *)>>::reset[abi:ne200100]((v96 + 56));
    *(v96 + 96) = 0;
    goto LABEL_44;
  }

  v97[0] = *(v94 + 1184);
  v109 = 16;
  v106 = (v4 + 5848);
  v107 = v97;
  v108 = &v109;
  v105 = v4 + 5848;
  Phase::details::AllocArray<Phase::SpatialModeler::RenderGroup,std::unique_ptr<Phase::SpatialModeler::RenderGroup [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::SpatialModeler::RenderGroup,Phase::SystemAllocator>(Phase::SystemAllocator &,unsigned long,unsigned long)::{lambda(void)#1} const&,std::unique_ptr<Phase::SpatialModeler::RenderGroup [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::SpatialModeler::RenderGroup,Phase::SystemAllocator>(Phase::SystemAllocator &,unsigned long,unsigned long)::{lambda(Phase::SpatialModeler::RenderGroup*)#1} const&>(v21, &v106, &v105, &v110);
  v22 = v110;
  v110 = 0;
  __src[0] = v22;
  std::__function::__value_func<void ()(void *)>::__value_func[abi:ne200100](&__src[1], v111);
  __src[5] = v21;
  std::unique_ptr<Phase::SpatialModeler::RenderGroup [],std::function<void ()(void *)>>::reset[abi:ne200100](&v110);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](v111);
  std::unique_ptr<Phase::SpatialModeler::RenderGroup [],std::function<void ()(void *)>>::operator=[abi:ne200100]((v96 + 56), __src);
  *(v96 + 96) = __src[5];
  std::unique_ptr<Phase::SpatialModeler::RenderGroup [],std::function<void ()(void *)>>::reset[abi:ne200100](__src);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](&__src[1]);
  v23 = *(v94 + 1176);
  if (!v23)
  {
    goto LABEL_44;
  }

  v24 = 0;
  do
  {
    v25 = 48;
    v26 = 0xCBF29CE484222325;
    do
    {
      v26 = 0x100000001B3 * (v26 ^ *(v23 + v25++));
    }

    while (v25 != 64);
    if (!*(&v99 + 1))
    {
      goto LABEL_40;
    }

    v27 = vcnt_s8(*(&v99 + 8));
    v27.i16[0] = vaddlv_u8(v27);
    if (v27.u32[0] > 1uLL)
    {
      v28 = v26;
      if (v26 >= *(&v99 + 1))
      {
        v28 = v26 % *(&v99 + 1);
      }
    }

    else
    {
      v28 = (*(&v99 + 1) - 1) & v26;
    }

    v29 = *(v99 + 8 * v28);
    if (!v29 || (v30 = *v29) == 0)
    {
LABEL_40:
      operator new();
    }

    while (1)
    {
      v31 = v30[1];
      if (v31 == v26)
      {
        break;
      }

      if (v27.u32[0] > 1uLL)
      {
        if (v31 >= *(&v99 + 1))
        {
          v31 %= *(&v99 + 1);
        }
      }

      else
      {
        v31 &= *(&v99 + 1) - 1;
      }

      if (v31 != v28)
      {
        goto LABEL_40;
      }

LABEL_39:
      v30 = *v30;
      if (!v30)
      {
        goto LABEL_40;
      }
    }

    if (v30[2] != v23[6] || v30[3] != v23[7])
    {
      goto LABEL_39;
    }

    *(v30 + 8) = v24;
    v33 = *(v96 + 56) + 336 * v24;
    v34 = *(v23 + 3);
    *(v33 + 16) = v23[8];
    *v33 = v34;
    *(v33 + 24) = *(v23 + 18);
    *(v33 + 28) = *(v23 + 19);
    *(v33 + 32) = *(v23 + 20);
    *(v33 + 36) = *(v23 + 21);
    *(v33 + 40) = *(v23 + 22);
    *(v33 + 44) = *(v23 + 23);
    *(v33 + 48) = *(v23 + 24);
    *(v33 + 52) = *(v23 + 25);
    memcpy((v33 + 56), v23 + 13, 0x109uLL);
    ++v24;
    v23 = *v23;
  }

  while (v23);
LABEL_44:
  *(v94 + 968) = *(v94 + 960);
  std::vector<Phase::UniqueObjectId>::resize(v90, v87);
  v35 = *(v92 + 40);
  v36 = *(v92 + 56);
  *(v96 + 40) = *(v92 + 72);
  *(v96 + 24) = v36;
  *(v96 + 8) = v35;
  *(v96 + 48) = ((*v94 - 1) & 0xFFFFFFFD) == 0;
  v106 = 0;
  v107 = 0;
  v108 = 0;
  std::vector<std::reference_wrapper<Phase::SpatialModeler::PriorityQueueEntry>>::reserve(&v106, *(a2 + 8));
  for (i = *(a2 + 7); i; i = *i)
  {
    __src[0] = (i + 4);
    std::vector<std::reference_wrapper<Phase::SpatialModeler::PriorityQueueEntry>>::push_back[abi:ne200100](&v106, __src);
  }

  v38 = v106;
  v39 = v107;
  if (*(a2 + 26))
  {
    std::__function::__value_func<BOOL ()(Phase::SpatialModeler::PriorityQueueEntry const&,Phase::SpatialModeler::PriorityQueueEntry const&)>::__value_func[abi:ne200100](&v110, a2 + 184);
    std::__stable_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<std::reference_wrapper<Phase::SpatialModeler::PriorityQueueEntry> *>,std::function<BOOL ()(Phase::SpatialModeler::PriorityQueueEntry const&,Phase::SpatialModeler::PriorityQueueEntry const&)>>(v38, v39, &v110);
    std::__function::__value_func<BOOL ()(Phase::SpatialModeler::PriorityQueueEntry const&,Phase::SpatialModeler::PriorityQueueEntry const&)>::~__value_func[abi:ne200100](&v110);
  }

  __p = v38;
  for (j = 0; v38 != v39; ++v38)
  {
    v41 = *v38;
    v42 = *(*v38 + 16);
    if (v5 > v42 && (v43 = &v93[3 * v42], *(v43 + 5) == HIDWORD(v42)) && (v44 = *v43) != 0)
    {
      if (*(v96 + 144) <= j)
      {
        __assert_rtn("operator()", "CvmSpatialModelerInstance.mm", 1647, "clusterSourceIdx < pClusterSetInput->mSubmixRoutings.Size()");
      }

      v45 = *(v96 + 104);
      Phase::Controller::SpatialModelerInstance::SubmixInfo::MakeSubmix(__src, v44, *(v92 + 40));
      v46 = (v45 + 304 * j);
      memcpy(v46, __src, 0x120uLL);
      v47 = 24;
      v48 = 0xCBF29CE484222325;
      do
      {
        v48 = 0x100000001B3 * (v48 ^ *(v41 + v47++));
      }

      while (v47 != 40);
      if (*(&v99 + 1))
      {
        v49 = vcnt_s8(*(&v99 + 8));
        v49.i16[0] = vaddlv_u8(v49);
        if (v49.u32[0] > 1uLL)
        {
          v50 = v48;
          if (v48 >= *(&v99 + 1))
          {
            v50 = v48 % *(&v99 + 1);
          }
        }

        else
        {
          v50 = v48 & (*(&v99 + 1) - 1);
        }

        v52 = *(v99 + 8 * v50);
        if (v52)
        {
          for (k = *v52; k; k = *k)
          {
            v54 = k[1];
            if (v54 == v48)
            {
              if (k[2] == *(v41 + 24) && k[3] == *(v41 + 32))
              {
                v58 = *(k + 8);
                goto LABEL_81;
              }
            }

            else
            {
              if (v49.u32[0] > 1uLL)
              {
                if (v54 >= *(&v99 + 1))
                {
                  v54 %= *(&v99 + 1);
                }
              }

              else
              {
                v54 &= *(&v99 + 1) - 1;
              }

              if (v54 != v50)
              {
                break;
              }
            }
          }
        }
      }

      v58 = -1;
LABEL_81:
      *(v46 + 36) = v58;
      v56 = *(v41 + 40);
      if (v56 <= 0.0)
      {
        v56 = COERCE_DOUBLE(1);
      }

      *(v46 + 37) = log(v56) * 8.68588964 / 10.0 * 10.0;
      *v46 = *v41;
      *(v96 + 152) = *(v44 + 40);
      *(*v90 + 16 * j) = *v41;
      v57 = *(v4 + 5864);
      if (v57)
      {
        *(v46 + 35) = *(*(v57 + 240) + 16);
        *(v46 + 33) = *(v92 + 56);
      }

      ++j;
    }

    else
    {
      v51 = *(a2 + 22);
      if (v51)
      {
        (*(*v51 + 48))(v51, *v38);
      }

      std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,Phase::SpatialModeler::PriorityQueueEntry>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,Phase::SpatialModeler::PriorityQueueEntry>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,Phase::SpatialModeler::PriorityQueueEntry>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,Phase::SpatialModeler::PriorityQueueEntry>>>::__erase_unique<Phase::UniqueObjectId>(a2 + 5, v41);
    }
  }

  if (__p)
  {
    operator delete(__p);
  }

  v59 = v94;
  v60 = v4;
  atomic_store(0, (v94 + 760));
  if (v87 != j)
  {
    std::vector<Phase::UniqueObjectId>::resize(v90, j);
    if (j >= 1)
    {
      v97[0] = j;
      v109 = 16;
      v106 = (v4 + 5848);
      v107 = v97;
      v108 = &v109;
      v105 = v4 + 5848;
      Phase::details::AllocArray<Phase::SpatialModeler::SubmixRoutingInput,std::unique_ptr<Phase::SpatialModeler::SubmixRoutingInput [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::SpatialModeler::SubmixRoutingInput,Phase::SystemAllocator>(Phase::SystemAllocator &,unsigned long,unsigned long)::{lambda(void)#1} const&,std::unique_ptr<Phase::SpatialModeler::SubmixRoutingInput [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::SpatialModeler::SubmixRoutingInput,Phase::SystemAllocator>(Phase::SystemAllocator &,unsigned long,unsigned long)::{lambda(Phase::SpatialModeler::SubmixRoutingInput*)#1} const&>(__src, j, &v106, &v105);
      v61 = __src[0];
      __src[0] = 0;
      v110 = v61;
      std::__function::__value_func<void ()(void *)>::__value_func[abi:ne200100](v111, &__src[1]);
      v115 = j;
      std::unique_ptr<Phase::SpatialModeler::SubmixRoutingInput [],std::function<void ()(void *)>>::reset[abi:ne200100](__src);
      std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](&__src[1]);
      v62 = 0;
      v63 = v110;
      do
      {
        memcpy(&v63[v62], (*(v96 + 104) + v62 * 8), 0x130uLL);
        v62 += 38;
      }

      while (38 * j != v62);
      v110 = 0;
      __src[0] = v63;
      std::__function::__value_func<void ()(void *)>::__value_func[abi:ne200100](&__src[1], v111);
      __src[5] = v115;
      std::unique_ptr<Phase::SpatialModeler::SubmixRoutingInput [],std::function<void ()(void *)>>::operator=[abi:ne200100](&v110, (v96 + 104));
      v115 = *(v96 + 144);
      std::unique_ptr<Phase::SpatialModeler::SubmixRoutingInput [],std::function<void ()(void *)>>::operator=[abi:ne200100]((v96 + 104), __src);
      *(v96 + 144) = __src[5];
      std::unique_ptr<Phase::SpatialModeler::SubmixRoutingInput [],std::function<void ()(void *)>>::reset[abi:ne200100](__src);
      std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](&__src[1]);
      std::unique_ptr<Phase::SpatialModeler::SubmixRoutingInput [],std::function<void ()(void *)>>::reset[abi:ne200100](&v110);
      v115 = 0;
      std::unique_ptr<Phase::SpatialModeler::SubmixRoutingInput [],std::function<void ()(void *)>>::reset[abi:ne200100](&v110);
      std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](v111);
    }
  }

  if (*(v96 + 40) == 0.0)
  {
    ClusterSetInputStrings = sGenerateClusterSetInputStrings(&v110, v96);
    v65 = **(Phase::Logger::GetInstance(ClusterSetInputStrings) + 240);
    if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
    {
      sGenerateSpatialModelerInfoString(&v106, *(v4 + 5864));
      if (SHIBYTE(v108) >= 0)
      {
        v66 = &v106;
      }

      else
      {
        v66 = v106;
      }

      v67 = &v110;
      if (v112 < 0)
      {
        v67 = v110;
      }

      v68 = *(v96 + 144);
      LODWORD(__src[0]) = 136316162;
      *(__src + 4) = "CvmSpatialModelerInstance.mm";
      WORD2(__src[1]) = 1024;
      *(&__src[1] + 6) = 1709;
      WORD1(__src[2]) = 2080;
      *(&__src[2] + 4) = v66;
      WORD2(__src[3]) = 2080;
      *(&__src[3] + 6) = v67;
      HIWORD(__src[4]) = 2048;
      __src[5] = v68;
      _os_log_impl(&dword_23A302000, v65, OS_LOG_TYPE_ERROR, "%25s:%-5d (%s) - cluster query input has a maximum cluster count set to 0. forcing maximum cluster count to 1. this may sound incorrect. (%s, submix count: %zu, ...)", __src, 0x30u);
      if (SHIBYTE(v108) < 0)
      {
        operator delete(v106);
      }
    }

    if (v114 != v113)
    {
      v70 = 0;
      do
      {
        v71 = **(Phase::Logger::GetInstance(v69) + 240);
        if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
        {
          sGenerateSpatialModelerInfoString(&v106, *(v95 + 5864));
          v72 = v106;
          if (SHIBYTE(v108) >= 0)
          {
            v72 = &v106;
          }

          v73 = (v113 + 24 * v70);
          if (*(v73 + 23) < 0)
          {
            v73 = *v73;
          }

          v70 = (v70 + 1);
          LODWORD(__src[0]) = 136316418;
          *(__src + 4) = "CvmSpatialModelerInstance.mm";
          WORD2(__src[1]) = 1024;
          *(&__src[1] + 6) = 1714;
          WORD1(__src[2]) = 2080;
          *(&__src[2] + 4) = v72;
          WORD2(__src[3]) = 2048;
          *(&__src[3] + 6) = v70;
          HIWORD(__src[4]) = 2048;
          __src[5] = (0xAAAAAAAAAAAAAAABLL * ((v114 - v113) >> 3));
          LOWORD(__src[6]) = 2080;
          *(&__src[6] + 2) = v73;
          _os_log_impl(&dword_23A302000, v71, OS_LOG_TYPE_ERROR, "%25s:%-5d (%s) - followup ClusterSetInput log %zu of %zu (%s)", __src, 0x3Au);
          if (SHIBYTE(v108) < 0)
          {
            operator delete(v106);
          }
        }

        else
        {
          v70 = (v70 + 1);
        }
      }

      while (v70 < 0xAAAAAAAAAAAAAAABLL * ((v114 - v113) >> 3));
    }

    *(v96 + 40) = 0x3FF0000000000000;
    __src[0] = &v113;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__src);
    v59 = v94;
    v60 = v95;
    if (v112 < 0)
    {
      operator delete(v110);
    }
  }

  v74 = Phase::SpatialModeler::Scheduler::SubmitQuery(v89, v59 + 816, a3, &v106);
  if ((v106 & 1) == 0)
  {
    v75 = sGenerateClusterSetInputStrings(&v110, v96);
    v76 = **(Phase::Logger::GetInstance(v75) + 240);
    if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
    {
      sGenerateSpatialModelerInfoString(v97, *(v60 + 5864));
      if (v98 >= 0)
      {
        v77 = v97;
      }

      else
      {
        v77 = v97[0];
      }

      v78 = &v110;
      if (v112 < 0)
      {
        v78 = v110;
      }

      v79 = *(v96 + 144);
      LODWORD(__src[0]) = 136316162;
      *(__src + 4) = "CvmSpatialModelerInstance.mm";
      WORD2(__src[1]) = 1024;
      *(&__src[1] + 6) = 1728;
      WORD1(__src[2]) = 2080;
      *(&__src[2] + 4) = v77;
      WORD2(__src[3]) = 2080;
      *(&__src[3] + 6) = v78;
      HIWORD(__src[4]) = 2048;
      __src[5] = v79;
      _os_log_impl(&dword_23A302000, v76, OS_LOG_TYPE_ERROR, "%25s:%-5d (%s) - failed to submit cluster query (%s, submix count: %zu, ...)", __src, 0x30u);
      if (v98 < 0)
      {
        operator delete(v97[0]);
      }
    }

    if (v114 != v113)
    {
      v81 = 0;
      do
      {
        v82 = **(Phase::Logger::GetInstance(v80) + 240);
        if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
        {
          sGenerateSpatialModelerInfoString(v97, *(v95 + 5864));
          v83 = v97[0];
          if (v98 >= 0)
          {
            v83 = v97;
          }

          v84 = (v113 + 24 * v81);
          if (*(v84 + 23) < 0)
          {
            v84 = *v84;
          }

          v81 = (v81 + 1);
          LODWORD(__src[0]) = 136316418;
          *(__src + 4) = "CvmSpatialModelerInstance.mm";
          WORD2(__src[1]) = 1024;
          *(&__src[1] + 6) = 1733;
          WORD1(__src[2]) = 2080;
          *(&__src[2] + 4) = v83;
          WORD2(__src[3]) = 2048;
          *(&__src[3] + 6) = v81;
          HIWORD(__src[4]) = 2048;
          __src[5] = (0xAAAAAAAAAAAAAAABLL * ((v114 - v113) >> 3));
          LOWORD(__src[6]) = 2080;
          *(&__src[6] + 2) = v84;
          _os_log_impl(&dword_23A302000, v82, OS_LOG_TYPE_ERROR, "%25s:%-5d %s - followup ClusterSetInput log %zu of %zu (%s)", __src, 0x3Au);
          if (v98 < 0)
          {
            operator delete(v97[0]);
          }
        }

        else
        {
          v81 = (v81 + 1);
        }
      }

      while (v81 < 0xAAAAAAAAAAAAAAABLL * ((v114 - v113) >> 3));
    }

    v85 = v94;
    atomic_store(0, (v94 + 816));
    v86 = *(v85 + 888);
    *(v85 + 880) = 0u;
    if (v86)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v86);
    }

    atomic_store(0, (v94 + 920));
    __src[0] = &v113;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__src);
    if (v112 < 0)
    {
      operator delete(v110);
    }
  }

  if ((*(*(Phase::Logger::GetInstance(v74) + 240) + 8) & 4) != 0)
  {
    sGenerateClusterSetInputStrings(__src, v96);
    v110 = &__src[3];
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v110);
    if (SHIBYTE(__src[2]) < 0)
    {
      operator delete(__src[0]);
    }
  }

  std::__hash_table<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::__unordered_map_hasher<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::hash<Phase::SpatialCategory>,std::equal_to<Phase::SpatialCategory>,true>,std::__unordered_map_equal<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::equal_to<Phase::SpatialCategory>,std::hash<Phase::SpatialCategory>,true>,std::allocator<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>>>::~__hash_table(&v99);
LABEL_143:
  if (v103)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v103);
  }
}

void sub_23A36AC5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, std::__shared_weak_count *a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  std::pair<std::string,std::vector<std::string>>::~pair(&a39);
  std::__hash_table<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::__unordered_map_hasher<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::hash<Phase::SpatialCategory>,std::equal_to<Phase::SpatialCategory>,true>,std::__unordered_map_equal<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::equal_to<Phase::SpatialCategory>,std::hash<Phase::SpatialCategory>,true>,std::allocator<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>>>::~__hash_table(&a25);
  if (a32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a32);
  }

  _Unwind_Resume(a1);
}

__n128 std::__function::__func<Phase::Controller::SpatialModelerInstance::SetupGraphData(Phase::Controller::SpatialModelerInstance::GraphData &,Phase::SpatialModeler::GraphStage &)::$_5,std::allocator<Phase::Controller::SpatialModelerInstance::SetupGraphData(Phase::Controller::SpatialModelerInstance::GraphData &,Phase::SpatialModeler::GraphStage &)::$_5>,void ()(Phase::SpatialModeler::PriorityQueue &,Phase::SpatialModeler::Graph &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284D31088;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<Phase::Controller::SpatialModelerInstance::SetupGraphData(Phase::Controller::SpatialModelerInstance::GraphData &,Phase::SpatialModeler::GraphStage &)::$_6,std::allocator<Phase::Controller::SpatialModelerInstance::SetupGraphData(Phase::Controller::SpatialModelerInstance::GraphData &,Phase::SpatialModeler::GraphStage &)::$_6>,void ()(Phase::SpatialModeler::PriorityQueueEntry &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284D310D0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<Phase::Controller::SpatialModelerInstance::SetupGraphData(Phase::Controller::SpatialModelerInstance::GraphData &,Phase::SpatialModeler::GraphStage &)::$_6,std::allocator<Phase::Controller::SpatialModelerInstance::SetupGraphData(Phase::Controller::SpatialModelerInstance::GraphData &,Phase::SpatialModeler::GraphStage &)::$_6>,void ()(Phase::SpatialModeler::PriorityQueueEntry &)>::operator()(uint64_t result)
{
  v1 = *(result + 16);
  v2 = atomic_load((v1 + 816));
  if (v2 - 1 <= 1 && *(*(result + 16) + 320) == 1)
  {
    if (atomic_load((v1 + 920)))
    {
      v4 = (v1 + 816);
      v5 = atomic_load(v4);
      if (v5 - 1 <= 1)
      {
        atomic_compare_exchange_strong(v4, &v5, 6u);
      }
    }
  }

  return result;
}

__n128 std::__function::__func<Phase::Controller::SpatialModelerInstance::SetupGraphData(Phase::Controller::SpatialModelerInstance::GraphData &,Phase::SpatialModeler::GraphStage &)::$_7,std::allocator<Phase::Controller::SpatialModelerInstance::SetupGraphData(Phase::Controller::SpatialModelerInstance::GraphData &,Phase::SpatialModeler::GraphStage &)::$_7>,void ()(Phase::SpatialModeler::PriorityQueue &,Phase::SpatialModeler::Graph &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284D31118;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<Phase::Controller::SpatialModelerInstance::SetupGraphData(Phase::Controller::SpatialModelerInstance::GraphData &,Phase::SpatialModeler::GraphStage &)::$_7,std::allocator<Phase::Controller::SpatialModelerInstance::SetupGraphData(Phase::Controller::SpatialModelerInstance::GraphData &,Phase::SpatialModeler::GraphStage &)::$_7>,void ()(Phase::SpatialModeler::PriorityQueue &,Phase::SpatialModeler::Graph &)>::operator()(void *a1, Phase::SpatialModeler::PriorityQueue *a2, void *a3)
{
  v118 = *MEMORY[0x277D85DE8];
  if (*(a2 + 8))
  {
    v4 = a1[2];
    v96 = a1[3];
    v97 = a1[1];
    Phase::Controller::SpatialModelerInstance::GetLatestSubmixState(&v98, v97);
    if (v100)
    {
      v5 = v98;
      while (!*v5)
      {
        v5 += 3;
        if (v5 >= &v98[3 * v100])
        {
          goto LABEL_6;
        }
      }

      Phase::Controller::RenderGroupMgr::LoadFreshData((v4 + 1600));
      v6 = (v4 + 984);
      if (*v4 == 2)
      {
        v7 = *(v4 + 1000);
        if (v7)
        {
          while (1)
          {
            v8 = std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>>>::find<Phase::UniqueObjectId>((v4 + 1736), v7 + 2);
            v9 = v8;
            if (!v8)
            {
              goto LABEL_30;
            }

            v10 = atomic_load(v7[4]);
            if (v10 && v10 != 3)
            {
              break;
            }

            v7 = *v7;
LABEL_31:
            if (!v7)
            {
              goto LABEL_34;
            }
          }

          v12 = **(Phase::Logger::GetInstance(v8) + 240);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            sGenerateSpatialModelerInfoString(v109, *(v97 + 5864));
            if (v110 >= 0)
            {
              v14 = v109;
            }

            else
            {
              v14 = v109[0];
            }

            memset(out, 0, sizeof(out));
            uuid_unparse(v9 + 16, out);
            std::string::basic_string[abi:ne200100]<0>(&__p, out);
            p_p = &__p;
            if (v107 < 0)
            {
              p_p = __p;
            }

            *buf = 136316162;
            *&buf[4] = "CvmSpatialModelerInstance.mm";
            *&buf[12] = 1024;
            *&buf[14] = 2154;
            *&buf[18] = 2080;
            *&buf[20] = v14;
            *&buf[28] = 1024;
            *&buf[30] = v10;
            *&buf[34] = 2080;
            *&buf[36] = p_p;
            _os_log_impl(&dword_23A302000, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d (%s) - removing spatial query with unexpected status %i for render group %s", buf, 0x2Cu);
            if (v107 < 0)
            {
              operator delete(__p);
            }

            v6 = (v4 + 984);
            if (v110 < 0)
            {
              operator delete(v109[0]);
            }
          }

LABEL_30:
          v16 = *v7;
          std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::pair<std::unique_ptr<Phase::Controller::SpatialQueryInstance>,std::vector<Phase::Controller::SpatialModelerInstance::SubmixHandleInfo>>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::pair<std::unique_ptr<Phase::Controller::SpatialQueryInstance>,std::vector<Phase::Controller::SpatialModelerInstance::SubmixHandleInfo>>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::pair<std::unique_ptr<Phase::Controller::SpatialQueryInstance>,std::vector<Phase::Controller::SpatialModelerInstance::SubmixHandleInfo>>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::pair<std::unique_ptr<Phase::Controller::SpatialQueryInstance>,std::vector<Phase::Controller::SpatialModelerInstance::SubmixHandleInfo>>>>>::remove(buf, v6, v7);
          std::unique_ptr<std::__hash_node<std::__hash_value_type<Phase::UniqueObjectId,std::pair<std::unique_ptr<Phase::Controller::SpatialQueryInstance>,std::vector<Phase::Controller::SpatialModelerInstance::SubmixHandleInfo>>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<Phase::UniqueObjectId,std::pair<std::unique_ptr<Phase::Controller::SpatialQueryInstance>,std::vector<Phase::Controller::SpatialModelerInstance::SubmixHandleInfo>>>,void *>>>>::~unique_ptr[abi:ne200100](buf);
          v7 = v16;
          goto LABEL_31;
        }
      }

      else
      {
        std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::pair<std::unique_ptr<Phase::Controller::SpatialQueryInstance>,std::vector<Phase::Controller::SpatialModelerInstance::SubmixHandleInfo>>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::pair<std::unique_ptr<Phase::Controller::SpatialQueryInstance>,std::vector<Phase::Controller::SpatialModelerInstance::SubmixHandleInfo>>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::pair<std::unique_ptr<Phase::Controller::SpatialQueryInstance>,std::vector<Phase::Controller::SpatialModelerInstance::SubmixHandleInfo>>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::pair<std::unique_ptr<Phase::Controller::SpatialQueryInstance>,std::vector<Phase::Controller::SpatialModelerInstance::SubmixHandleInfo>>>>>::clear(v4 + 984);
        std::__hash_table<std::__hash_value_type<unsigned int,Phase::Controller::OptionalProperties::Property>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,Phase::Controller::OptionalProperties::Property>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,Phase::Controller::OptionalProperties::Property>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,Phase::Controller::OptionalProperties::Property>>>::__rehash<true>(v4 + 984, vcvtps_u32_f32(*(v4 + 1760) / *(v4 + 1016)));
      }

LABEL_34:
      Phase::Controller::SpatialModelerInstance::GetAvailableComputeForGraph(v97, v4);
      v17 = *(v4 + 1752);
      if (v17)
      {
        while ((v17[24].mStorage[0] & 1) == 0)
        {
          v18 = std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::pair<std::unique_ptr<Phase::Controller::SpatialQueryInstance>,std::vector<Phase::Controller::SpatialModelerInstance::SubmixHandleInfo>>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::pair<std::unique_ptr<Phase::Controller::SpatialQueryInstance>,std::vector<Phase::Controller::SpatialModelerInstance::SubmixHandleInfo>>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::pair<std::unique_ptr<Phase::Controller::SpatialQueryInstance>,std::vector<Phase::Controller::SpatialModelerInstance::SubmixHandleInfo>>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::pair<std::unique_ptr<Phase::Controller::SpatialQueryInstance>,std::vector<Phase::Controller::SpatialModelerInstance::SubmixHandleInfo>>>>>::find<Phase::UniqueObjectId>(*(v4 + 984), *(v4 + 992), v17[1].mStorage);
          if (*v4 == 2 && v18 == 0)
          {
            break;
          }

LABEL_50:
          v17 = v17->mStorage[0];
          if (!v17)
          {
            goto LABEL_51;
          }
        }

        Phase::Controller::RenderGroupMgr::GetRenderer((v4 + 1600), v17[2], &__p);
        v21 = __p;
        if (!__p)
        {
          goto LABEL_47;
        }

        v22 = *v4;
        if (*v4 != 1)
        {
          if (v22 == 2)
          {
            goto LABEL_46;
          }

          if (v22 != 3)
          {
            v76 = **(Phase::Logger::GetInstance(v20) + 240);
            if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
            {
              sGenerateSpatialModelerInfoString(out, *(v97 + 5864));
              v77 = out[23] >= 0 ? out : *out;
              v78 = *v4 - 1;
              v79 = v78 > 2 ? "<invalid>" : off_278B4F000[v78];
              *buf = 136315906;
              *&buf[4] = "CvmSpatialModelerInstance.mm";
              *&buf[12] = 1024;
              *&buf[14] = 2238;
              *&buf[18] = 2080;
              *&buf[20] = v77;
              *&buf[28] = 2080;
              *&buf[30] = v79;
              _os_log_impl(&dword_23A302000, v76, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): (%s) - invalid spatial modeler graph type (graph: %s)", buf, 0x26u);
              if (out[23] < 0)
              {
                operator delete(*out);
              }
            }

            exception = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(exception, "(%s) - invalid spatial modeler graph type (graph: %s)");
          }
        }

        if ((*(*__p + 88))(__p))
        {
LABEL_48:
          if (v106)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v106);
          }

          goto LABEL_50;
        }

LABEL_46:
        v23 = 0;
        atomic_compare_exchange_strong(v21 + 60, &v23, 1u);
        if (!v23)
        {
LABEL_47:
          operator new();
        }

        goto LABEL_48;
      }

LABEL_51:
      *&v101.__val_ = 0;
      v101.__cat_ = 0;
      v102 = 0;
      std::vector<std::reference_wrapper<Phase::SpatialModeler::PriorityQueueEntry>>::reserve(&v101, *(a2 + 8));
      for (i = *(a2 + 7); i; i = *i)
      {
        *buf = i + 4;
        std::vector<std::reference_wrapper<Phase::SpatialModeler::PriorityQueueEntry>>::push_back[abi:ne200100](&v101, buf);
      }

      v25 = *&v101.__val_;
      cat = v101.__cat_;
      if (*(a2 + 26))
      {
        std::__function::__value_func<BOOL ()(Phase::SpatialModeler::PriorityQueueEntry const&,Phase::SpatialModeler::PriorityQueueEntry const&)>::__value_func[abi:ne200100](out, a2 + 184);
        std::__stable_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<std::reference_wrapper<Phase::SpatialModeler::PriorityQueueEntry> *>,std::function<BOOL ()(Phase::SpatialModeler::PriorityQueueEntry const&,Phase::SpatialModeler::PriorityQueueEntry const&)>>(v25, cat, out);
        std::__function::__value_func<BOOL ()(Phase::SpatialModeler::PriorityQueueEntry const&,Phase::SpatialModeler::PriorityQueueEntry const&)>::~__value_func[abi:ne200100](out);
      }

      if (v25 != cat)
      {
        v94 = vdupq_n_s64(4uLL);
        do
        {
          v27 = *v25;
          v28 = *(*v25 + 16);
          if (v100 > v28 && (v29 = &v98[3 * v28], *(v29 + 5) == HIDWORD(v28)) && (v30 = *v29) != 0)
          {
            v117 = *v27;
            v31 = *(v30 + 32);
            v108 = *(v27 + 24);
            v32 = std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::pair<std::unique_ptr<Phase::Controller::SpatialQueryInstance>,std::vector<Phase::Controller::SpatialModelerInstance::SubmixHandleInfo>>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::pair<std::unique_ptr<Phase::Controller::SpatialQueryInstance>,std::vector<Phase::Controller::SpatialModelerInstance::SubmixHandleInfo>>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::pair<std::unique_ptr<Phase::Controller::SpatialQueryInstance>,std::vector<Phase::Controller::SpatialModelerInstance::SubmixHandleInfo>>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::pair<std::unique_ptr<Phase::Controller::SpatialQueryInstance>,std::vector<Phase::Controller::SpatialModelerInstance::SubmixHandleInfo>>>>>::find<Phase::UniqueObjectId>(*(v4 + 984), *(v4 + 992), &v108);
            if (v32)
            {
              v33 = v32;
              if (!atomic_load(v32[4]))
              {
                v35 = v32[6];
                v36 = v32[7];
                if (v35 >= v36)
                {
                  v39 = v32[5];
                  v40 = (v35 - v39) >> 5;
                  v41 = v40 + 1;
                  if ((v40 + 1) >> 59)
                  {
                    std::vector<Phase::Controller::DVM23::SubmixController *>::__throw_length_error[abi:ne200100]();
                  }

                  v42 = v36 - v39;
                  if (v42 >> 4 > v41)
                  {
                    v41 = v42 >> 4;
                  }

                  if (v42 >= 0x7FFFFFFFFFFFFFE0)
                  {
                    v43 = 0x7FFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v43 = v41;
                  }

                  if (v43)
                  {
                    std::__allocate_at_least[abi:ne200100]<std::allocator<Phase::Controller::SpatialModelerInstance::SubmixHandleInfo>>(v43);
                  }

                  v44 = 32 * v40;
                  *v44 = v117;
                  *(v44 + 16) = v28;
                  *(v44 + 24) = v31;
                  v37 = 32 * v40 + 32;
                  v45 = v33[5];
                  v46 = v33[6] - v45;
                  v47 = 32 * v40 - v46;
                  memcpy((v44 - v46), v45, v46);
                  v48 = v33[5];
                  v33[5] = v47;
                  v33[6] = v37;
                  v33[7] = 0;
                  if (v48)
                  {
                    operator delete(v48);
                  }
                }

                else
                {
                  *v35 = v117;
                  *(v35 + 16) = v28;
                  *(v35 + 24) = v31;
                  v37 = v35 + 32;
                }

                v33[6] = v37;
                v49 = Phase::Controller::SpatialQueryInstance::GetInputAs<Phase::SpatialModeler::RenderGroupInput<float>>(v33[4]);
                v50 = v49;
                v51 = *(v30 + 56);
                *&v51 = v51;
                if (*(v49 + 16) > *&v51)
                {
                  v52 = *(v96 + 80);
                  memset(buf, 0, sizeof(buf));
                  v113 = 0u;
                  v114 = 0u;
                  v115 = 0u;
                  memset(v116, 0, 28);
                  *&v116[28] = v52;
                  if (v52)
                  {
                    v53 = (v52 + 3) & 0xFFFFFFFFFFFFFFFCLL;
                    v54 = vdupq_n_s64(v52 - 1);
                    v55 = &buf[8];
                    v56 = xmmword_23A554B70;
                    v57 = xmmword_23A554B60;
                    do
                    {
                      v58 = vmovn_s64(vcgeq_u64(v54, v56));
                      if (vuzp1_s16(v58, *&v51).u8[0])
                      {
                        *(v55 - 2) = LODWORD(v51);
                      }

                      if (vuzp1_s16(v58, *&v51).i8[2])
                      {
                        *(v55 - 1) = LODWORD(v51);
                      }

                      if (vuzp1_s16(*&v51, vmovn_s64(vcgeq_u64(v54, *&v57))).i32[1])
                      {
                        *v55 = LODWORD(v51);
                        *(v55 + 1) = LODWORD(v51);
                      }

                      v57 = vaddq_s64(v57, v94);
                      v56 = vaddq_s64(v56, v94);
                      v55 += 16;
                      v53 -= 4;
                    }

                    while (v53);
                  }

                  v59 = v115;
                  *(v49 + 8) = v114;
                  *(v49 + 9) = v59;
                  v60 = *&v116[16];
                  *(v49 + 10) = *v116;
                  *(v49 + 11) = v60;
                  v61 = *&buf[16];
                  *(v49 + 4) = *buf;
                  *(v49 + 5) = v61;
                  v62 = v113;
                  *(v49 + 6) = *&buf[32];
                  *(v49 + 7) = v62;
                }

                v63 = *(v49 + 69);
                v64 = *(v30 + 40);
                if (v63)
                {
                  if (v63 != v64)
                  {
                    v87 = **(Phase::Logger::GetInstance(v49) + 240);
                    if (os_log_type_enabled(v87, OS_LOG_TYPE_ERROR))
                    {
                      sGenerateSpatialModelerInfoString(&__p, *(v97 + 5864));
                      v89 = v107;
                      v90 = __p;
                      sGenerateRenderGroupInputString(v103, v50);
                      v91 = &__p;
                      if (v89 < 0)
                      {
                        v91 = v90;
                      }

                      if (v104 >= 0)
                      {
                        v92 = v103;
                      }

                      else
                      {
                        v92 = v103[0];
                      }

                      *buf = 136315906;
                      *&buf[4] = "CvmSpatialModelerInstance.mm";
                      *&buf[12] = 1024;
                      *&buf[14] = 2355;
                      *&buf[18] = 2080;
                      *&buf[20] = v91;
                      *&buf[28] = 2080;
                      *&buf[30] = v92;
                      _os_log_impl(&dword_23A302000, v87, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error) [pQueryInput->mListenerEntity != inpSubmixInfo->mListenerHandle is true]: (%s) - render group is defined for multiple listeners (%s)", buf, 0x26u);
                      if (v104 < 0)
                      {
                        operator delete(v103[0]);
                      }

                      if (v107 < 0)
                      {
                        operator delete(__p);
                      }
                    }

                    v86 = __cxa_allocate_exception(0x10uLL);
                    std::logic_error::logic_error(v86, "(%s) - render group is defined for multiple listeners (%s)");
                    goto LABEL_150;
                  }
                }

                else
                {
                  *(v49 + 69) = v64;
                }
              }
            }

            else if (*v4 == 2)
            {
              v80 = **(Phase::Logger::GetInstance(0) + 240);
              if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
              {
                sGenerateSpatialModelerInfoString(&__p, *(v97 + 5864));
                v82 = v107;
                v83 = __p;
                Phase::UniqueObjectId::str(&v108, v103);
                v84 = &__p;
                if (v82 < 0)
                {
                  v84 = v83;
                }

                if (v104 >= 0)
                {
                  v85 = v103;
                }

                else
                {
                  v85 = v103[0];
                }

                *buf = 136315906;
                *&buf[4] = "CvmSpatialModelerInstance.mm";
                *&buf[12] = 1024;
                *&buf[14] = 2320;
                *&buf[18] = 2080;
                *&buf[20] = v84;
                *&buf[28] = 2080;
                *&buf[30] = v85;
                _os_log_impl(&dword_23A302000, v80, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error) [SpatialModelerGraph::Sustain == inGraphData.mGraphType is true]: (%s) - spatial query not found in lookup map for render group %s in sustain graph", buf, 0x26u);
                if (v104 < 0)
                {
                  operator delete(v103[0]);
                }

                if (v107 < 0)
                {
                  operator delete(__p);
                }
              }

              v86 = __cxa_allocate_exception(0x10uLL);
              std::logic_error::logic_error(v86, "(%s) - spatial query not found in lookup map for render group %s in sustain graph");
LABEL_150:
            }

            cat = v101.__cat_;
          }

          else
          {
            v38 = *(a2 + 22);
            if (v38)
            {
              (*(*v38 + 48))(v38, *v25);
            }

            std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,Phase::SpatialModeler::PriorityQueueEntry>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,Phase::SpatialModeler::PriorityQueueEntry>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,Phase::SpatialModeler::PriorityQueueEntry>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,Phase::SpatialModeler::PriorityQueueEntry>>>::__erase_unique<Phase::UniqueObjectId>(a2 + 5, v27);
          }

          ++v25;
        }

        while (v25 != cat);
        v25 = *&v101.__val_;
      }

      if (v25)
      {
        operator delete(v25);
      }

      atomic_store(0, (v4 + 768));
      for (j = *(v4 + 1000); j; j = *j)
      {
        if (j[5] != j[6] && !atomic_load(j[4]))
        {
          Phase::SpatialModeler::Scheduler::SubmitQuery(*(v97 + 5872), j[4], a3, out);
          if ((out[0] & 1) == 0)
          {
            v67 = Phase::Controller::SpatialQueryInstance::GetInputAs<Phase::SpatialModeler::RenderGroupInput<float>>(j[4]);
            v68 = **(Phase::Logger::GetInstance(v67) + 240);
            if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
            {
              sGenerateSpatialModelerInfoString(&__p, *(v97 + 5864));
              if (v107 >= 0)
              {
                v69 = &__p;
              }

              else
              {
                v69 = __p;
              }

              sGenerateRenderGroupInputString(v103, v67);
              v70 = v104;
              v71 = v103[0];
              sGenerateErrorCodeString(&v101, &out[8]);
              v72 = v103;
              if (v70 < 0)
              {
                v72 = v71;
              }

              v73 = &v101;
              if (v102 < 0)
              {
                v73 = *&v101.__val_;
              }

              *buf = 136316162;
              *&buf[4] = "CvmSpatialModelerInstance.mm";
              *&buf[12] = 1024;
              *&buf[14] = 2392;
              *&buf[18] = 2080;
              *&buf[20] = v69;
              *&buf[28] = 2080;
              *&buf[30] = v72;
              *&buf[38] = 2080;
              *&buf[40] = v73;
              _os_log_impl(&dword_23A302000, v68, OS_LOG_TYPE_ERROR, "%25s:%-5d (%s) - failed to submit spatial query (%s) (%s)", buf, 0x30u);
              if (SHIBYTE(v102) < 0)
              {
                operator delete(*&v101.__val_);
              }

              if (v104 < 0)
              {
                operator delete(v103[0]);
              }

              if (v107 < 0)
              {
                operator delete(__p);
              }
            }

            v74 = j[4];
            atomic_store(0, v74);
            v75 = *(v74 + 72);
            *(v74 + 64) = 0;
            *(v74 + 72) = 0;
            if (v75)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v75);
            }

            atomic_store(0, (v74 + 104));
          }
        }
      }
    }

    else
    {
LABEL_6:
      Phase::SpatialModeler::PriorityQueue::ClearEntries(a2, 1);
    }

    if (v99)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v99);
    }
  }
}

void sub_23A36C154(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, std::__shared_weak_count *a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, void *__p, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, uint64_t a41, void *a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, __int128 buf, __int128 a53)
{
  if (a39 < 0)
  {
    operator delete(__p);
  }

  if (a28)
  {
    operator delete(a28);
  }

  if (a2 == 1)
  {
    v57 = __cxa_begin_catch(a1);
    v58 = **(Phase::Logger::GetInstance(v57) + 240);
    if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
    {
      p_p = &__p;
      sGenerateSpatialModelerInfoString(&__p, *(a24 + 5864));
      if (a39 < 0)
      {
        p_p = __p;
      }

      v60 = (*(*v57 + 16))(v57);
      LODWORD(buf) = 136315906;
      *(&buf + 4) = "CvmSpatialModelerInstance.mm";
      WORD6(buf) = 1024;
      *(&buf + 14) = 2366;
      WORD1(a53) = 2080;
      *(&a53 + 4) = p_p;
      WORD6(a53) = 2080;
      *(&a53 + 14) = v60;
      _os_log_impl(&dword_23A302000, v58, OS_LOG_TYPE_ERROR, "%25s:%-5d (%s) - exception thrown and caught (exception: %s)", &buf, 0x26u);
      if (a39 < 0)
      {
        operator delete(__p);
      }
    }

    Phase::Controller::SpatialModelerInstance::DestroyTempSpatialGraphData(v61, v53);
    __cxa_end_catch();
    JUMPOUT(0x23A36B02CLL);
  }

  if (a26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a26);
  }

  _Unwind_Resume(a1);
}

__n128 std::__function::__func<Phase::Controller::SpatialModelerInstance::SetupGraphData(Phase::Controller::SpatialModelerInstance::GraphData &,Phase::SpatialModeler::GraphStage &)::$_8,std::allocator<Phase::Controller::SpatialModelerInstance::SetupGraphData(Phase::Controller::SpatialModelerInstance::GraphData &,Phase::SpatialModeler::GraphStage &)::$_8>,void ()(Phase::SpatialModeler::PriorityQueueEntry &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284D31160;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<Phase::Controller::SpatialModelerInstance::SetupGraphData(Phase::Controller::SpatialModelerInstance::GraphData &,Phase::SpatialModeler::GraphStage &)::$_8,std::allocator<Phase::Controller::SpatialModelerInstance::SetupGraphData(Phase::Controller::SpatialModelerInstance::GraphData &,Phase::SpatialModeler::GraphStage &)::$_8>,void ()(Phase::SpatialModeler::PriorityQueueEntry &)>::operator()(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 16) + 1000);
  if (v2)
  {
    while (1)
    {
      v4 = v2[5];
      v3 = v2[6];
      v5 = v3 - v4;
      if (v3 != v4)
      {
        break;
      }

LABEL_10:
      v2 = *v2;
      if (!v2)
      {
        return result;
      }
    }

    if ((v5 >> 5) <= 1)
    {
      v6 = 1;
    }

    else
    {
      v6 = v5 >> 5;
    }

    v7 = -v6;
    v8 = v2[5];
    v9 = 1;
    while (*a2 != *v8 || a2[1] != *(v8 + 8))
    {
      ++v9;
      v8 += 32;
      if (v7 + v9 == 1)
      {
        goto LABEL_10;
      }
    }

    if (v5 == 32)
    {
      v2[6] = v4;
      v10 = v2[4];
      if (v10)
      {
        if (atomic_load(v10 + 26))
        {
          v12 = atomic_load(v10);
          if (v12 - 1 <= 1)
          {
            atomic_compare_exchange_strong(v10, &v12, 6u);
          }
        }
      }
    }

    else if (v5 >> 5 > v9)
    {
      result = *(v3 - 32);
      v14 = *(v3 - 16);
      *v8 = result;
      *(v8 + 16) = v14;
      v2[6] -= 32;
    }
  }

  return result;
}

uint64_t std::__function::__func<Phase::Controller::SpatialModelerInstance::SetupGraphData(Phase::Controller::SpatialModelerInstance::GraphData &,Phase::SpatialModeler::GraphStage &)::$_9,std::allocator<Phase::Controller::SpatialModelerInstance::SetupGraphData(Phase::Controller::SpatialModelerInstance::GraphData &,Phase::SpatialModeler::GraphStage &)::$_9>,void ()(Phase::SpatialModeler::PriorityQueue &,Phase::SpatialModeler::Graph &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284D311A8;
  a2[1] = v2;
  return result;
}

__n128 std::__function::__func<Phase::Controller::SpatialModelerInstance::SetupGraphData(Phase::Controller::SpatialModelerInstance::GraphData &,Phase::SpatialModeler::GraphStage &)::$_11,std::allocator<Phase::Controller::SpatialModelerInstance::SetupGraphData(Phase::Controller::SpatialModelerInstance::GraphData &,Phase::SpatialModeler::GraphStage &)::$_11>,void ()(Phase::SpatialModeler::Query &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284D31238;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t Phase::Command<128>::Invoker<Phase::Controller::SpatialModelerInstance::CreateSustainJob(void)::$_0,void>::Call(uint64_t a1)
{
  v2 = *(*(a1 + 8) + 88);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v3 = *(*v2 + 48);

  return v3();
}

uint64_t Phase::Command<128>::Invoker<Phase::Controller::SpatialModelerInstance::CreateSustainJob(void)::$_1,void>::Call(uint64_t a1)
{
  v2 = *(*(a1 + 8) + 88);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v3 = *(*v2 + 48);

  return v3();
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long,std::shared_ptr<Phase::Job>>,void *>>>::operator()[abi:ne200100](char a1, void *__p)
{
  if (a1)
  {
    v3 = __p[4];
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t Phase::Command<128>::Invoker<Phase::Controller::SpatialModelerInstance::CreateSustainJob(void)::$_3,void>::Call(uint64_t a1)
{
  v2 = *(*(a1 + 8) + 88);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v3 = *(*v2 + 48);

  return v3();
}

uint64_t Phase::Command<128>::Invoker<Phase::Controller::SpatialModelerInstance::CreateSustainJob(void)::$_4,void>::Call(uint64_t a1)
{
  v2 = *(*(a1 + 8) + 88);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v3 = *(*v2 + 48);

  return v3();
}

void Phase::Command<128>::Invoker<Phase::Controller::SpatialModelerInstance::CreateSustainJob(void)::$_5,void>::Call(uint64_t a1)
{
  v1 = *(a1 + 8);
  Phase::Controller::SpatialModelerInstance::BuildIRs(v1, (v1 + 1152));

  Phase::Controller::SpatialModelerInstance::DestroyTempSpatialGraphData(v2, v1 + 1152);
}

uint64_t Phase::Command<128>::Invoker<Phase::Controller::SpatialModelerInstance::CreateAttackJob(void)::$_0,void>::Call(uint64_t a1)
{
  v2 = *(*(a1 + 8) + 88);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v3 = *(*v2 + 48);

  return v3();
}

uint64_t Phase::Command<128>::Invoker<Phase::Controller::SpatialModelerInstance::CreateAttackJob(void)::$_1,void>::Call(uint64_t a1)
{
  v2 = *(*(a1 + 8) + 88);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v3 = *(*v2 + 48);

  return v3();
}

void Phase::Command<128>::Invoker<Phase::Controller::SpatialModelerInstance::CreateAttackJob(void)::$_2,void>::Call(uint64_t a1)
{
  v1 = *(a1 + 8);
  Phase::Controller::SpatialModelerInstance::BuildIRs(v1, v1 + 416);
  Phase::Controller::SpatialModelerInstance::DestroyTempSpatialGraphData(v2, (v1 + 416));
  v4 = 0;
  v5 = 0;
  if (v1[424])
  {
    operator new();
  }

  v3 = v1[455];
  if (v3)
  {
    *(v3 + 80) = 0;
    operator new();
  }

  Phase::SortedCommandQueue<Phase::SpatialModeler::PriorityQueue,Phase::SpatialModeler::PriorityQueueCommandType,std::variant<std::monostate,Phase::SpatialModeler::PriorityQueueEntry,Phase::UniqueObjectId,Phase::SpatialModeler::PriorityQueueClusterIndexUpdate,Phase::SpatialModeler::PriorityQueueGlobals>>::Commit();
}

void sub_23A36CC60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  Phase::SortedCommandQueue<Phase::SpatialModeler::PriorityQueue,Phase::SpatialModeler::PriorityQueueCommandType,std::variant<std::monostate,Phase::SpatialModeler::PriorityQueueEntry,Phase::UniqueObjectId,Phase::SpatialModeler::PriorityQueueClusterIndexUpdate,Phase::SpatialModeler::PriorityQueueGlobals>>::CommandBatch::Clear(&a9);
  Phase::SortedCommandQueue<Phase::SpatialModeler::PriorityQueue,Phase::SpatialModeler::PriorityQueueCommandType,std::variant<std::monostate,Phase::SpatialModeler::PriorityQueueEntry,Phase::UniqueObjectId,Phase::SpatialModeler::PriorityQueueClusterIndexUpdate,Phase::SpatialModeler::PriorityQueueGlobals>>::CommandBatch::Clear(&a10);
  _Unwind_Resume(a1);
}

void std::__hash_table<std::__hash_value_type<unsigned long,std::shared_ptr<Phase::Job>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::shared_ptr<Phase::Job>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::shared_ptr<Phase::Job>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::shared_ptr<Phase::Job>>>>::clear(uint64_t a1)
{
  if (*(a1 + 24))
  {
    std::__hash_table<std::__hash_value_type<unsigned long,std::shared_ptr<Phase::Job>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::shared_ptr<Phase::Job>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::shared_ptr<Phase::Job>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::shared_ptr<Phase::Job>>>>::__deallocate_node(*(a1 + 16));
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

void *std::list<std::shared_ptr<Phase::Job>>::list(void *result, uint64_t a2)
{
  *result = result;
  result[1] = result;
  result[2] = 0;
  if (*(a2 + 8) != a2)
  {
    std::list<std::shared_ptr<Phase::Job>>::push_back();
  }

  return result;
}

void *std::list<double>::list(void *result, uint64_t a2)
{
  *result = result;
  result[1] = result;
  result[2] = 0;
  if (*(a2 + 8) != a2)
  {
    operator new();
  }

  return result;
}

uint64_t std::__function::__func<Phase::Controller::SpatialModelerInstance::StartSustainGraph(void)::$_0,std::allocator<Phase::Controller::SpatialModelerInstance::StartSustainGraph(void)::$_0>,void ()(BOOL,std::list<std::shared_ptr<Phase::Job>>)>::~__func(uint64_t a1)
{
  *a1 = &unk_284D31410;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

void std::__function::__func<Phase::Controller::SpatialModelerInstance::StartSustainGraph(void)::$_0,std::allocator<Phase::Controller::SpatialModelerInstance::StartSustainGraph(void)::$_0>,void ()(BOOL,std::list<std::shared_ptr<Phase::Job>>)>::~__func(uint64_t a1)
{
  *a1 = &unk_284D31410;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  JUMPOUT(0x23EE864A0);
}

void std::__function::__func<Phase::Controller::SpatialModelerInstance::StartSustainGraph(void)::$_0,std::allocator<Phase::Controller::SpatialModelerInstance::StartSustainGraph(void)::$_0>,void ()(BOOL,std::list<std::shared_ptr<Phase::Job>>)>::__clone(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_284D31410;
  *(a2 + 8) = v2;
  if (*(a1 + 39) < 0)
  {
    std::string::__init_copy_ctor_external((a2 + 16), *(a1 + 16), *(a1 + 24));
  }

  else
  {
    v3 = *(a1 + 16);
    *(a2 + 32) = *(a1 + 32);
    *(a2 + 16) = v3;
  }
}

void std::__function::__func<Phase::Controller::SpatialModelerInstance::StartSustainGraph(void)::$_0,std::allocator<Phase::Controller::SpatialModelerInstance::StartSustainGraph(void)::$_0>,void ()(BOOL,std::list<std::shared_ptr<Phase::Job>>)>::destroy(uint64_t a1)
{
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }
}

void std::__function::__func<Phase::Controller::SpatialModelerInstance::StartSustainGraph(void)::$_0,std::allocator<Phase::Controller::SpatialModelerInstance::StartSustainGraph(void)::$_0>,void ()(BOOL,std::list<std::shared_ptr<Phase::Job>>)>::destroy_deallocate(void **__p)
{
  if (*(__p + 39) < 0)
  {
    operator delete(__p[2]);
  }

  operator delete(__p);
}

void std::__function::__func<Phase::Controller::SpatialModelerInstance::StartSustainGraph(void)::$_0,std::allocator<Phase::Controller::SpatialModelerInstance::StartSustainGraph(void)::$_0>,void ()(BOOL,std::list<std::shared_ptr<Phase::Job>>)>::operator()(Phase::Logger *a1, unsigned __int8 *a2, uint64_t *a3)
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  v22[0] = v22;
  v22[1] = v22;
  v23 = 0;
  v5 = a3[2];
  if (v5)
  {
    v7 = *a3;
    v6 = a3[1];
    v8 = *(*a3 + 8);
    v9 = *v6;
    *(v9 + 8) = v8;
    *v8 = v9;
    v10 = v22[0];
    *(v22[0] + 8) = v6;
    *v6 = v10;
    *(v7 + 8) = v22;
    v22[0] = v7;
    v23 = v5;
    a3[2] = 0;
  }

  v11 = *(a1 + 1);
  v12 = **(Phase::Logger::GetInstance(a1) + 240);
  v13 = v12;
  if (v4)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      Phase::Controller::SpatialModelerInstance::GetDescription(__p, v11);
      if (v25 >= 0)
      {
        v14 = __p;
      }

      else
      {
        v14 = __p[0];
      }

      v17 = *(a1 + 2);
      v16 = (a1 + 16);
      v15 = v17;
      if (*(v16 + 23) >= 0)
      {
        v15 = v16;
      }

      *buf = 136315906;
      v27 = "CvmSpatialModelerInstance.mm";
      v28 = 1024;
      v29 = 3068;
      v30 = 2080;
      v31 = v14;
      v32 = 2080;
      v33 = v15;
      _os_log_impl(&dword_23A302000, v13, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: started sustain graphs (stage, rate):\n%s", buf, 0x26u);
      if (v25 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  else
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      Phase::Controller::SpatialModelerInstance::GetDescription(__p, v11);
      if (v25 >= 0)
      {
        v18 = __p;
      }

      else
      {
        v18 = __p[0];
      }

      v21 = *(a1 + 2);
      v20 = (a1 + 16);
      v19 = v21;
      if (*(v20 + 23) >= 0)
      {
        v19 = v20;
      }

      *buf = 136315906;
      v27 = "CvmSpatialModelerInstance.mm";
      v28 = 1024;
      v29 = 3073;
      v30 = 2080;
      v31 = v18;
      v32 = 2080;
      v33 = v19;
      _os_log_impl(&dword_23A302000, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: failed to start sustain graphs (stage, rate):\n%s", buf, 0x26u);
      if (v25 < 0)
      {
        operator delete(__p[0]);
      }
    }

    std::__hash_table<std::__hash_value_type<unsigned long,std::shared_ptr<Phase::Job>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::shared_ptr<Phase::Job>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::shared_ptr<Phase::Job>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::shared_ptr<Phase::Job>>>>::clear(v11 + 5784);
  }

  std::mutex::unlock((v11 + 5648));
  std::__list_imp<std::shared_ptr<Phase::Job>>::clear(v22);
}

__n128 std::__function::__func<Phase::Controller::SpatialModelerInstance::StopSustainGraph(BOOL)::$_1,std::allocator<Phase::Controller::SpatialModelerInstance::StopSustainGraph(BOOL)::$_1>,void ()(BOOL,std::list<std::shared_ptr<Phase::Job>>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284D31458;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}