uint64_t AGX::Mempool<32u,0u,true,0u,0u,std::array<AGX::IntersectionFunctionTableEncoderGen2<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::Entry,8ul>>::~Mempool(uint64_t a1)
{
  if ((*(a1 + 12) & 1) == 0)
  {
    *(a1 + 12) = 1;
  }

  if ((*(a1 + 36) & 1) == 0)
  {
    *(a1 + 36) = 1;
  }

  if ((*(a1 + 60) & 1) == 0)
  {
    *(a1 + 60) = 1;
  }

  if ((*(a1 + 84) & 1) == 0)
  {
    *(a1 + 84) = 1;
  }

  if ((*(a1 + 108) & 1) == 0)
  {
    *(a1 + 108) = 1;
  }

  if ((*(a1 + 132) & 1) == 0)
  {
    *(a1 + 132) = 1;
  }

  if ((*(a1 + 156) & 1) == 0)
  {
    *(a1 + 156) = 1;
  }

  if ((*(a1 + 180) & 1) == 0)
  {
    *(a1 + 180) = 1;
  }

  if ((*(a1 + 204) & 1) == 0)
  {
    *(a1 + 204) = 1;
  }

  if ((*(a1 + 228) & 1) == 0)
  {
    *(a1 + 228) = 1;
  }

  if ((*(a1 + 252) & 1) == 0)
  {
    *(a1 + 252) = 1;
  }

  if ((*(a1 + 276) & 1) == 0)
  {
    *(a1 + 276) = 1;
  }

  if ((*(a1 + 300) & 1) == 0)
  {
    *(a1 + 300) = 1;
  }

  if ((*(a1 + 324) & 1) == 0)
  {
    *(a1 + 324) = 1;
  }

  if ((*(a1 + 348) & 1) == 0)
  {
    *(a1 + 348) = 1;
  }

  if ((*(a1 + 372) & 1) == 0)
  {
    *(a1 + 372) = 1;
  }

  if ((*(a1 + 396) & 1) == 0)
  {
    *(a1 + 396) = 1;
  }

  if ((*(a1 + 420) & 1) == 0)
  {
    *(a1 + 420) = 1;
  }

  if ((*(a1 + 444) & 1) == 0)
  {
    *(a1 + 444) = 1;
  }

  if ((*(a1 + 468) & 1) == 0)
  {
    *(a1 + 468) = 1;
  }

  if ((*(a1 + 492) & 1) == 0)
  {
    *(a1 + 492) = 1;
  }

  if ((*(a1 + 516) & 1) == 0)
  {
    *(a1 + 516) = 1;
  }

  if ((*(a1 + 540) & 1) == 0)
  {
    *(a1 + 540) = 1;
  }

  if ((*(a1 + 564) & 1) == 0)
  {
    *(a1 + 564) = 1;
  }

  if ((*(a1 + 588) & 1) == 0)
  {
    *(a1 + 588) = 1;
  }

  if ((*(a1 + 612) & 1) == 0)
  {
    *(a1 + 612) = 1;
  }

  if ((*(a1 + 636) & 1) == 0)
  {
    *(a1 + 636) = 1;
  }

  if ((*(a1 + 660) & 1) == 0)
  {
    *(a1 + 660) = 1;
  }

  std::__tree<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval,AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::IntervalRangeComparator,std::allocator<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval>>::destroy(*(a1 + 736));
  std::__tree<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval,AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::IntervalRangeComparator,std::allocator<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval>>::destroy(*(a1 + 712));
  return a1;
}

void AGX::Mempool<32u,0u,true,0u,0u,std::array<AGX::IntersectionFunctionTableEncoderGen2<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::Entry,8ul>>::grow(uint64_t a1, unsigned int a2, int a3)
{
  add = atomic_fetch_add((a1 + 680), 1u);
  v7 = add + 1;
  if (add == -1)
  {
    v8 = 0;
  }

  else
  {
    v8 = *(a1 + 24 * add + 16);
  }

  v9 = a1 + 8;
  v10 = [[AGXBuffer alloc] initUntrackedInternalBufferWithDevice:*a1 length:a2 << 7 options:0];
  *(a1 + 8 + 24 * v7 + 8) = v10;
  if (v8)
  {
    memcpy(*&v10[*MEMORY[0x29EDC5638] + 24], *(v8 + *MEMORY[0x29EDC5638] + 24), *(a1 + 692) << 7);
  }

  if (*(a1 + 692) <= 1u)
  {
    v11 = 1;
  }

  else
  {
    v11 = *(a1 + 692);
  }

  *(a1 + 692) = a2;
  atomic_fetch_add((v9 + 24 * v7), 0x80000000);
  if ((add & 0x80000000) == 0)
  {
    v12 = v9 + 24 * add;
    if (atomic_fetch_add(v12, 0x80000000) == 0x80000000)
    {
      os_unfair_lock_assert_owner((a1 + 752));
      if ((*(v12 + 4) & 1) == 0)
      {
        *(v12 + 4) = 1;
      }
    }
  }

  if (a3)
  {
    AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::push(a1 + 696, v11, a2 - 1);
  }

  v13 = *(a1 + 768);
  v14 = *v13;
  if ((*v13 + 1) > 1)
  {
    v15 = v14 + 1;
  }

  else
  {
    v15 = 1;
  }

  v16 = *v13;
  atomic_compare_exchange_strong(v13, &v16, v15);
  if (v16 != v14)
  {
    v17 = v16;
    do
    {
      if ((v16 + 1) > 1)
      {
        v18 = v16 + 1;
      }

      else
      {
        v18 = 1;
      }

      atomic_compare_exchange_strong(v13, &v17, v18);
      v19 = v17 == v16;
      v16 = v17;
    }

    while (!v19);
  }
}

uint64_t AGX::Mempool<32u,0u,true,0u,0u,std::array<AGX::IntersectionFunctionTableEncoderGen2<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::Entry,8ul>>::RangeAllocation::RangeAllocation(uint64_t a1, os_unfair_lock_s *a2, unsigned int a3, int a4)
{
  *a1 = a4;
  *(a1 + 4) = a3;
  *(a1 + 8) = a2;
  *(a1 + 16) = a4 != 0;
  os_unfair_lock_lock(a2 + 188);
  if ((*(a1 + 16) & 1) == 0)
  {
    v7 = AGX::Mempool<32u,0u,true,0u,0u,std::array<AGX::IntersectionFunctionTableEncoderGen2<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::Entry,8ul>>::FreeIntervalList::pop((*(a1 + 8) + 696), a3);
    *a1 = v7;
    if (!v7)
    {
      v10 = *(a1 + 8);
      v11 = *(v10 + 692);
      if (v11)
      {
        v12 = v11 + a3;
        do
        {
          if (v11)
          {
            v11 *= 2;
          }

          else
          {
            v11 = 32;
          }
        }

        while (v11 <= v12);
        AGX::Mempool<32u,0u,true,0u,0u,std::array<AGX::IntersectionFunctionTableEncoderGen2<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::Entry,8ul>>::grow(v10, v11, 1);
      }

      else
      {
        AGX::Mempool<32u,0u,true,0u,0u,std::array<AGX::IntersectionFunctionTableEncoderGen2<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::Entry,8ul>>::grow(v10, 0x20u, 1);
      }

      *a1 = AGX::Mempool<32u,0u,true,0u,0u,std::array<AGX::IntersectionFunctionTableEncoderGen2<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::Entry,8ul>>::FreeIntervalList::pop((*(a1 + 8) + 696), a3);
    }
  }

  explicit = atomic_load_explicit((*(a1 + 8) + 756), memory_order_acquire);
  if (explicit <= a3 + *a1 - 1)
  {
    explicit = a3 + *a1 - 1;
  }

  atomic_store(explicit, (*(a1 + 8) + 756));
  atomic_fetch_add((*(a1 + 8) + 760), 1u);
  os_unfair_lock_unlock(a2 + 188);
  return a1;
}

uint64_t AGX::Mempool<32u,0u,true,0u,0u,std::array<AGX::IntersectionFunctionTableEncoderGen2<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::Entry,8ul>>::FreeIntervalList::pop(void *a1, unsigned int a2)
{
  v3 = (a1 + 5);
  v2 = a1[5];
  if (!v2)
  {
    return 0;
  }

  v6 = (a1 + 5);
  do
  {
    v7 = *(v2 + 32);
    v17 = v7 >= a2;
    v8 = v7 < a2;
    if (v17)
    {
      v6 = v2;
    }

    v2 = *(v2 + 8 * v8);
  }

  while (v2);
  if (v6 == v3)
  {
    return 0;
  }

  v10 = a1 + 2;
  v9 = a1[2];
  v11 = (a1 + 1);
  v12 = *(v6 + 7);
  v13 = *(v6 + 8);
  if (!v9)
  {
    goto LABEL_21;
  }

  v14 = a1 + 2;
  v15 = a1[2];
  do
  {
    while (1)
    {
      v16 = *(v15 + 7);
      if (v16 >= v12)
      {
        v17 = *(v15 + 8) < v13 && v12 >= v16;
        if (!v17)
        {
          break;
        }
      }

      v15 = v15[1];
      if (!v15)
      {
        goto LABEL_17;
      }
    }

    v14 = v15;
    v15 = *v15;
  }

  while (v15);
LABEL_17:
  if (v14 == v10 || (v18 = *(v14 + 7), v12 < v18) || v18 >= v12 && v13 < *(v14 + 8))
  {
LABEL_21:
    v14 = a1 + 2;
  }

  v19 = v14[1];
  if (v19)
  {
    do
    {
      v20 = v19;
      v19 = *v19;
    }

    while (v19);
  }

  else
  {
    v21 = v14;
    do
    {
      v20 = v21[2];
      v22 = *v20 == v21;
      v21 = v20;
    }

    while (!v22);
  }

  if (*v11 == v14)
  {
    *v11 = v20;
  }

  --a1[3];
  std::__tree_remove[abi:nn200100]<std::__tree_node_base<void *> *>(v9, v14);
  operator delete(v14);
  v23 = v6[1];
  if (v23)
  {
    do
    {
      v24 = v23;
      v23 = *v23;
    }

    while (v23);
  }

  else
  {
    v25 = v6;
    do
    {
      v24 = v25[2];
      v22 = *v24 == v25;
      v25 = v24;
    }

    while (!v22);
  }

  if (a1[4] == v6)
  {
    a1[4] = v24;
  }

  v26 = a1[5];
  --a1[6];
  std::__tree_remove[abi:nn200100]<std::__tree_node_base<void *> *>(v26, v6);
  operator delete(v6);
  v27 = v13 - a2;
  if (v13 != a2)
  {
    v28 = v12 + a2;
    if (!*std::__tree<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval,AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::IntervalIndexComparator,std::allocator<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval>>::__find_equal<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval>(a1 + 1, v20, &v37, &v36, v28, v27))
    {
      operator new();
    }

    v29 = *v3;
    if (!*v3)
    {
LABEL_56:
      operator new();
    }

    while (1)
    {
      while (1)
      {
        v30 = v29;
        v31 = *(v29 + 8);
        if (v27 >= v31)
        {
          v32 = *(v30 + 7);
          if (v31 < v27 || v28 >= v32)
          {
            break;
          }
        }

        v29 = *v30;
        if (!*v30)
        {
          goto LABEL_56;
        }
      }

      if (v31 >= v27 && v32 >= v28)
      {
        break;
      }

      v29 = v30[1];
      if (!v29)
      {
        goto LABEL_56;
      }
    }
  }

  return v12;
}

uint64_t AGX::Mempool<32u,0u,true,0u,0u,std::array<AGX::IntersectionFunctionTableEncoderGen2<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::Entry,8ul>>::RangeAllocation::~RangeAllocation(uint64_t result)
{
  if (*result)
  {
    if ((*(result + 16) & 1) == 0)
    {
      v1 = *(result + 8);
      v2 = result;
      os_unfair_lock_lock(v1 + 188);
      AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::push(*(v2 + 8) + 696, *v2, *v2 + *(v2 + 4) - 1);
      os_unfair_lock_unlock(v1 + 188);
      return v2;
    }
  }

  return result;
}

void sub_29CDCA28C(_Unwind_Exception *a1)
{
  v2 = v1;
  os_unfair_lock_unlock(v2 + 188);
  _Unwind_Resume(a1);
}

uint64_t AGX::Mempool<32u,0u,true,0u,0u,std::array<AGX::IntersectionFunctionTableEncoderGen2<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::Entry,8ul>>::addToResourceList(os_unfair_lock_s *a1, uint64_t a2)
{
  os_unfair_lock_lock(a1 + 188);
  os_unfair_lock_assert_owner(a1 + 188);
  v4 = &a1[6 * a1[170]._os_unfair_lock_opaque];
  v6 = *&v4[4]._os_unfair_lock_opaque;
  v5 = v4 + 4;
  v7 = *(a2 + 8);
  v8 = MEMORY[0x29EDC5638];
  v9 = v6 + *MEMORY[0x29EDC5638];
  v10 = *(v9 + 8);
  if (**a2 == v10 && ((*(v9 + 40) ^ *(*v7 + 40)) & 0xFFFFFFFFFFFFFFLL) == 0)
  {
    v11 = 0;
  }

  else
  {
    **a2 = v10;
    *v7 = *&v5->_os_unfair_lock_opaque + *v8;
    MTLResourceListAddResource();
    v11 = 1;
  }

  os_unfair_lock_unlock(a1 + 188);
  return v11;
}

void AGX::UserIntersectionFunctionTableGen2<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::setFunction(void *a1, uint64_t a2, unsigned int a3)
{
  if (a1[1])
  {
    if (a2)
    {
      v5 = *(a2 + 40);
      v6 = a1[8] + 16 * v5;
      if (!*(*v6 + 80))
      {
        operator new();
      }

      v7 = *(*v6 + 32);
      v8 = a3;
      v9 = a1[11] + 8 * a3;
      *v9 = v5;
      *(v9 + 4) = 1;
    }

    else
    {
      v10 = *(*a1 + 848);
      block[0] = MEMORY[0x29EDCA5F8];
      block[1] = 3221225472;
      block[2] = ___ZN3AGX6DeviceINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE36setupDriverIntersectionTableIfNeededEv_block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0l;
      block[4] = v10;
      if (AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::setupDriverIntersectionTableIfNeeded(void)::onceToken != -1)
      {
        dispatch_once(&AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::setupDriverIntersectionTableIfNeeded(void)::onceToken, block);
      }

      v7 = *(*(v10 + 6288) + 184) + 104;
      v8 = a3;
      v11 = a1[11] + 8 * a3;
      v13 = *(v11 + 4);
      v12 = (v11 + 4);
      if (v13 == 1)
      {
        *v12 = 0;
      }
    }

    *(a1[3] + 4 * v8) = v7 & 0xFFFFFFF | 0x80000000;
  }
}

void sub_29CDCBAD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  std::shared_ptr<AGX::HAL300::Sampler>::~shared_ptr[abi:nn200100](va);
  _Unwind_Resume(a1);
}

void sub_29CDCBAEC(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_29CDCC2E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  std::shared_ptr<AGX::HAL300::Sampler>::~shared_ptr[abi:nn200100](va);
  _Unwind_Resume(a1);
}

void sub_29CDCC2FC(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__6262(__n128 *a1, __n128 *a2)
{
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  return result;
}

void __Block_byref_object_dispose__6263(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    v3 = *(a1 + 56);
    v4 = *(a1 + 48);
    if (v3 != v1)
    {
      do
      {
        v5 = *(v3 - 8);
        if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v5->__on_zero_shared)(v5);
          std::__shared_weak_count::__release_weak(v5);
        }

        v3 -= 16;
      }

      while (v3 != v1);
      v4 = *(a1 + 48);
    }

    *(a1 + 56) = v1;

    operator delete(v4);
  }
}

void RaytracingConstantsGen1::getCommonDriverIntersectionShaderInfos(RaytracingConstantsGen1 *this)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  operator new();
}

void sub_29CDCD7E4(_Unwind_Exception *a1)
{
  v2 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v2;
    v3 = a1;
    operator delete(v2);
    a1 = v3;
  }

  _Unwind_Resume(a1);
}

void ___ZN3AGX35DriverIntersectionFunctionTableBaseINS_35DriverIntersectionFunctionTableGen2INS_6HAL3008EncodersENS2_7ClassesENS2_10ObjClassesEEES3_S4_E23compileAndPopulateTableEPNS_8CompilerE_block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    AGX::ProgramBindingRemap<AGX::HAL300::Encoders,AGX::HAL300::Classes>::ProgramBindingRemap(v8, a2, 6, 1, 0, 0, 0, 0, 2, 0);
    operator new();
  }

  v4 = "MTLCompilerErrorTimeout";
  v5 = "UnknownErrorCode";
  if (a3 == 2)
  {
    v5 = "MTLCompilerErrorCompilationError";
  }

  if (a3 != 3)
  {
    v4 = v5;
  }

  if (a3 == 1)
  {
    v6 = "MTLCompilerErrorFatalError";
  }

  else
  {
    v6 = v4;
  }

  v9 = 0;
  v10 = 0;
  AGX::DriverIntersectionProgramKey::serialize((a1 + 48), &v9, &v10);
  v8[0] = a4;
  v8[1] = v6;
  v8[2] = v10;
  v8[3] = v9;
  _ZZZN3AGX6DeviceINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE30findOrCreateBlitProgramVariantERNS_20BlitVertexProgramKeyEEUb_ENKUlvE_clB14_AGX__Crashed_Ev();
}

void sub_29CDCDA68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::shared_ptr<AGX::HAL300::Sampler>::~shared_ptr[abi:nn200100](v3 - 88);
  AGX::ProgramBindingRemap<AGX::HAL300::Encoders,AGX::HAL300::Classes>::~ProgramBindingRemap(va);
  _Unwind_Resume(a1);
}

uint64_t ___ZN3AGX8Compiler14compileProgramINS_28DriverIntersectionProgramKeyEEEvRKT_P7NSArrayIPU27objcproto16MTLBinaryArchive11objc_objectEU13block_pointerFvRK20AGCDeserializedReply16MTLCompilerErrorP8NSStringEb_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
    AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::alertCommandBufferActivityStart(void)::{lambda(void)#1}::operator()[abi:[AGX] Failed assertion _previousValue _ 2147483647_]();
  }

  v5 = *(*(a1 + 32) + 16);

  return v5();
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3AGX29IntersectionProgramVariantSetINS8_6HAL3008EncodersENSA_7ClassesENSA_10ObjClassesEE8VariantsENSE_15EmulationDylibsEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSI_1EJSF_SG_EEEEEEDcSK_DpT0_(uint64_t a1, void **a2)
{
  v2 = *a2;
  if (*a2)
  {
    v4 = a2[1];
    v5 = *a2;
    if (v4 != v2)
    {
      do
      {
        v6 = *(v4 - 1);
        if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v6->__on_zero_shared)(v6);
          std::__shared_weak_count::__release_weak(v6);
        }

        v4 -= 16;
      }

      while (v4 != v2);
      v5 = *a2;
    }

    a2[1] = v2;

    operator delete(v5);
  }
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3AGX29IntersectionProgramVariantSetINS8_6HAL3008EncodersENSA_7ClassesENSA_10ObjClassesEE8VariantsENSE_15EmulationDylibsEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSI_1EJSF_SG_EEEEEEDcSK_DpT0_(uint64_t a1, void **a2)
{
  v2 = *a2;
  if (*a2)
  {
    v4 = a2[1];
    v5 = *a2;
    if (v4 != v2)
    {
      do
      {
        v6 = *(v4 - 1);
        if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v6->__on_zero_shared)(v6);
          std::__shared_weak_count::__release_weak(v6);
        }

        v4 -= 16;
      }

      while (v4 != v2);
      v5 = *a2;
    }

    a2[1] = v2;

    operator delete(v5);
  }
}

void ___ZN3AGX8Compiler14compileProgramINS_28DriverIntersectionProgramKeyE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v14[0] = MEMORY[0x29EDCA5F8];
  v14[1] = 3221225472;
  v15 = ___ZN3AGX8Compiler14compileProgramINS_28DriverIntersectionProgramKeyE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke_2;
  v16 = &unk_29F3422A8;
  v17 = a9;
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v21 = a6;
  v22 = a7;
  v12 = a1 + 32;
  v10 = *(a1 + 32);
  v11 = *(v12 + 8);
  v23 = a8;
  v24 = v11;
  v25 = a2;
  v26 = a10;
  if ([v10 sync])
  {
    v15(v14);
  }

  else
  {
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_async(global_queue, v14);
  }
}

uint64_t ___ZN3AGX8Compiler14compileProgramINS_28DriverIntersectionProgramKeyE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke_4(uint64_t a1, void *a2)
{
  mach_absolute_time();
  if (getTimebaseInfo(void)::once != -1)
  {
    dispatch_once(&getTimebaseInfo(void)::once, &__block_literal_global_11354);
  }

  return (*(*(a1 + 32) + 16))(*(a1 + 32), *a2);
}

void ___ZN3AGX8Compiler14compileProgramINS_28DriverIntersectionProgramKeyE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke_2(void *a1)
{
  size_ptr = 0;
  buffer_ptr = 0;
  v2 = a1[12];
  AGCDeserializedReply::AGCDeserializedReply(v5);
  if (v2 || (v4 = a1[5]) == 0)
  {
    v3 = 0;
  }

  else
  {
    v3 = dispatch_data_create_map(v4, &buffer_ptr, &size_ptr);
    AGCDeserializedReply::deserialize(v5, buffer_ptr, size_ptr);
  }

  (*(a1[11] + 16))(a1[11], v5);
  if (v3)
  {
    dispatch_release(v3);
  }

  AGCDeserializedReply::~AGCDeserializedReply(v5);
}

void sub_29CDCDF18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AGCDeserializedReply::~AGCDeserializedReply(va);
  _Unwind_Resume(a1);
}

void ProgramKey<(_AGCStreamToken)52,(AGX::DriverShaderCompilationMode)1>::serialize(uint64_t a1, uint64_t *a2, void *a3)
{
  v5 = (a1 + 16);
  *(a1 + 24) = *(a1 + 16);
  v7 = *(a1 + 8) | 0x100;
  std::vector<unsigned int>::push_back[abi:nn200100](a1 + 16, &v7);
  v8 = 96;
  std::vector<unsigned int>::push_back[abi:nn200100](v5, &v8);
  v6 = *v5;
  *a2 = *v5;
  *a3 = v5[1] - v6;
}

void __destroy_helper_block_e8_48c40_ZTSN3AGX28DriverIntersectionProgramKeyE(void *a1)
{
  a1[6] = &unk_2A23F7590;
  v1 = a1[8];
  if (v1)
  {
    a1[9] = v1;
    operator delete(v1);
  }
}

uint64_t __copy_helper_block_e8_48c40_ZTSN3AGX28DriverIntersectionProgramKeyE(uint64_t result, uint64_t a2)
{
  *(result + 48) = &unk_2A23F7590;
  *(result + 56) = *(a2 + 56);
  *(result + 72) = 0;
  *(result + 80) = 0;
  *(result + 64) = 0;
  v3 = *(a2 + 64);
  v2 = *(a2 + 72);
  if (v2 != v3)
  {
    if (((v2 - v3) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  *(result + 48) = &unk_2A23F7540;
  *(result + 88) = *(a2 + 88);
  return result;
}

void AGX::DriverIntersectionProgramKey::serialize(AGX::DriverIntersectionProgramKey *this, const void **a2, unint64_t *a3)
{
  v6 = (this + 16);
  *(this + 3) = *(this + 2);
  v12 = *(this + 8) | 0x100;
  std::vector<unsigned int>::push_back[abi:nn200100](this + 16, &v12);
  begin = v6->__begin_;
  v8 = v6->__end_ - v6->__begin_;
  if (v8 > 0xFFFFFFFFFFFFFFF7)
  {
    v9 = begin + v8 + 8;
    *(this + 3) = v9;
  }

  else
  {
    std::vector<unsigned int>::__append(v6, 2uLL);
    begin = *(this + 2);
    v9 = *(this + 3);
  }

  v10 = (begin + v8);
  *v10 = ((v9 - begin) >> 2 << 8) | 0x53;
  v10[1] = *(this + 10);
  v13 = 96;
  std::vector<unsigned int>::push_back[abi:nn200100](v6, &v13);
  v11 = *(this + 2);
  *a2 = v11;
  *a3 = *(this + 3) - v11;
}

void AGX::HAL300::IntersectionProgramVariant::~IntersectionProgramVariant(AGX::HAL300::IntersectionProgramVariant *this)
{
  *this = &unk_2A23F7830;
  AGX::ProgramVariantESLState<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserVertexArgumentTableLayout,true,8ul>::~ProgramVariantESLState(this + 296);
  AGX::ProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::IntersectionArgumentTable,true,false,AGX::NoCombinedUserDriverArgumentTable>::~ProgramVariant(this);

  JUMPOUT(0x29ED520D0);
}

{
  *this = &unk_2A23F7830;
  AGX::ProgramVariantESLState<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserVertexArgumentTableLayout,true,8ul>::~ProgramVariantESLState(this + 296);

  AGX::ProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::IntersectionArgumentTable,true,false,AGX::NoCombinedUserDriverArgumentTable>::~ProgramVariant(this);
}

void std::__shared_ptr_emplace<AGX::HAL300::IntersectionProgramVariant>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A23F7F10;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29ED520D0);
}

void AGX::DriverIntersectionProgramKey::~DriverIntersectionProgramKey(AGX::DriverIntersectionProgramKey *this)
{
  *this = &unk_2A23F7590;
  v2 = *(this + 2);
  if (v2)
  {
    *(this + 3) = v2;
    operator delete(v2);
    v1 = vars8;
  }

  JUMPOUT(0x29ED520D0);
}

{
  *this = &unk_2A23F7590;
  v1 = *(this + 2);
  if (v1)
  {
    *(this + 3) = v1;
    operator delete(v1);
  }
}

void sub_29CDCE598(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    v13 = a1;
    operator delete(__p);
    a1 = v13;
  }

  _Unwind_Resume(a1);
}

uint64_t AGX::UserIntersectionFunctionTableGen2<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::bindResources(uint64_t a1)
{
  result = IOGPUResourceListAddResource();
  v4 = *(a1 + 64);
  v3 = *(a1 + 72);
  while (v4 != v3)
  {
    result = *v4;
    if (*v4)
    {
      AGX::IntersectionPipelineSet<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::getEslResourceInfo(result);
      result = IOGPUResourceListAddResource();
    }

    v4 += 2;
  }

  return result;
}

__n128 std::__function::__func<void AGX::SegmentedArgumentGatherer<(AGX::SegmentedArgumentGathererAlgorthim)1,unsigned int,AGX::NoCombinedUserDriverArgumentTable>::gatherArguments<AGX::HAL300::IntersectionArgumentTable,AGX::IntersectionDriverArgumentTable<AGX::HAL300::Classes>>(unsigned int *,AGX::HAL300::IntersectionArgumentTable *,AGX::IntersectionDriverArgumentTable<AGX::HAL300::Classes> *)::{lambda(DriverArgumentOffset::SectionType)#1},std::allocator<void AGX::SegmentedArgumentGatherer<(AGX::SegmentedArgumentGathererAlgorthim)1,unsigned int,AGX::NoCombinedUserDriverArgumentTable>::gatherArguments<AGX::HAL300::IntersectionArgumentTable,AGX::IntersectionDriverArgumentTable<AGX::HAL300::Classes>>(unsigned int *,AGX::HAL300::IntersectionArgumentTable *,AGX::IntersectionDriverArgumentTable<AGX::HAL300::Classes> *)::{lambda(DriverArgumentOffset::SectionType)#1}>,char const* ()(DriverArgumentOffset::SectionType)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A23F7628;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<void AGX::SegmentedArgumentGatherer<(AGX::SegmentedArgumentGathererAlgorthim)1,unsigned long long,AGX::NoCombinedUserDriverArgumentTable>::gatherArguments<AGX::HAL300::IntersectionArgumentTable,AGX::IntersectionDriverArgumentTable<AGX::HAL300::Classes>>(unsigned long long *,AGX::HAL300::IntersectionArgumentTable *,AGX::IntersectionDriverArgumentTable<AGX::HAL300::Classes> *)::{lambda(DriverArgumentOffset::SectionType)#1},std::allocator<void AGX::SegmentedArgumentGatherer<(AGX::SegmentedArgumentGathererAlgorthim)1,unsigned long long,AGX::NoCombinedUserDriverArgumentTable>::gatherArguments<AGX::HAL300::IntersectionArgumentTable,AGX::IntersectionDriverArgumentTable<AGX::HAL300::Classes>>(unsigned long long *,AGX::HAL300::IntersectionArgumentTable *,AGX::IntersectionDriverArgumentTable<AGX::HAL300::Classes> *)::{lambda(DriverArgumentOffset::SectionType)#1}>,char const* ()(DriverArgumentOffset::SectionType)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A23F75E0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t AGX::ISPPFEncoderGen2<AGX::HAL300::Encoders>::PrimitiveBlock::emit(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = ((*(a1 + 17) >> 8) & 0x3F) + 1;
  v5 = *(a1 + 15);
  v6 = (v5 >> 9) & 0x3FF;
  v7 = (*(a1 + 15) & 0x1FF) * v4;
  v8 = v7 + v6 + 3;
  v9 = a2 + (v8 & 0x3FFFC);
  if (!a2)
  {
    v18 = v9 + 4 * ((v5 >> 21) & 0x3F);
    v19 = *(a1 + 5);
    if ((v19 & 0x80000) != 0)
    {
      v20 = 2;
    }

    else
    {
      v20 = 1;
    }

    v21 = v20 << ((v19 & 0x40000) != 0);
    if ((*(a1 + 5) & 0x300) == 0x200)
    {
      v22 = 6;
    }

    else
    {
      v22 = 5;
    }

    if ((v19 & 0x30000) != 0)
    {
      v23 = v22;
    }

    else
    {
      v23 = ((*(a1 + 5) & 0x300) == 512) + 1;
    }

    v24 = *(a1 + 18);
    v25 = v18 + 4 * (v23 + v21) + (((3 * v24) + 3) & 0x1FFFFFFFCLL) + 32;
    goto LABEL_44;
  }

  v10 = 0;
  v11 = a2 + (*&v8 & 0x3FFFCLL);
  while (1)
  {
    v12 = (v5 >> 21) & 0x3F;
    if (v10 >= v12)
    {
      break;
    }

    *(v11 + 4 * v10++) = -2004318072;
    LODWORD(v5) = *(a1 + 15);
  }

  v13 = v9 + 4 * v12;
  v14 = *a1;
  *(v13 + 16) = *(a1 + 4);
  *v13 = v14;
  *(v13 + 20) = *(a1 + 5);
  v15 = v13 + 20;
  *(v13 + 24) = *(a1 + 6);
  v16 = *(a1 + 5);
  if ((v16 & 0x40000) != 0)
  {
    v17 = (v13 + 32);
    *(v13 + 28) = *(a1 + 8);
    v16 = *(a1 + 5);
    if ((v16 & 0x80000) == 0)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v17 = (v13 + 28);
    if ((v16 & 0x80000) == 0)
    {
LABEL_21:
      if ((v16 & 0x30000) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_22;
    }
  }

  *v17 = *(a1 + 7);
  v16 = *(a1 + 5);
  if ((v16 & 0x40000) == 0)
  {
    ++v17;
    goto LABEL_21;
  }

  v17[1] = *(a1 + 9);
  v17 += 2;
  v16 = *(a1 + 5);
  if ((v16 & 0x30000) != 0)
  {
LABEL_22:
    *v17 = *(a1 + 10);
    v17[1] = *(a1 + 11);
    v17[2] = *(a1 + 12);
    v17[3] = *(a1 + 13);
    v17 += 4;
    v16 = *(a1 + 5);
  }

LABEL_23:
  v18 = v13 - a2;
  if ((v16 & 0x300) == 0x200)
  {
    *v17 = *(a1 + 14);
    v16 = *(a1 + 5);
    v26 = (v16 & 0x300) == 512;
  }

  else
  {
    v26 = 0;
  }

  if ((v16 & 0x80000) != 0)
  {
    v27 = 2;
  }

  else
  {
    v27 = 1;
  }

  v28 = v27 << ((v16 & 0x40000) != 0);
  v47 = (v16 & 0x30000) == 0;
  v29 = v26 + 5;
  if (v47)
  {
    v29 = v26 + 1;
  }

  v30 = (v29 + v28);
  v31 = v15 + 4 * v30;
  *v31 = *(a1 + 15);
  *(v31 + 4) = *(a1 + 8);
  v32 = v31 + 12;
  v24 = *(a1 + 18);
  v33 = (3 * v24);
  v34 = (v33 + 3) >> 2;
  v25 = v31 + 12 + 4 * v34;
  if (a4)
  {
    v35 = (*(a1 + 15) >> 2) & 0x7F;
    if (v24)
    {
      if (v33 >= 0x1D)
      {
        v36 = ((v33 + 3) >> 2) & 0x7FFFFFF8;
        v37 = (((v7 + v6 + 3) & 0x3FFFC) + 4 * v30 + a2 + 4 * v12 + 48);
        v38 = v36;
        do
        {
          *(v37 - 1) = 0uLL;
          *v37 = 0uLL;
          v37 += 2;
          v38 -= 8;
        }

        while (v38);
        if (v34 == v36)
        {
          goto LABEL_43;
        }
      }

      else
      {
        v36 = 0;
      }

      v39 = v34 - v36;
      v40 = (((v7 + v6 + 3) & 0x3FFFC) + 4 * v36 + 4 * v30 + a2 + 4 * v12 + 32);
      do
      {
        *v40++ = 0;
        --v39;
      }

      while (v39);
    }

LABEL_43:
    *a4 = v35;
    *(a4 + 8) = a2;
    *(a4 + 16) = 0;
    *(a4 + 24) = v32;
    *(a4 + 32) = v25;
    v24 = *(a1 + 18);
  }

LABEL_44:
  v41 = (((v25 + 4 * ((10 * v4 + 3) >> 2) - a2) & 0x3FFFFFFFCLL) + a3) & 0xFFFFFFFFFFFF8000;
  if (((v18 + a3) & 0xFFFFFFFFFFFF8000) == (a3 & 0xFFFFFFFFFFFF8000))
  {
    v42 = v41;
  }

  else
  {
    v42 = a3 & 0xFFFFFFFFFFFF8000;
  }

  v43 = *(a1 + 5);
  if ((v43 & 0x80000) != 0)
  {
    v44 = 2;
  }

  else
  {
    v44 = 1;
  }

  if ((*(a1 + 5) & 0x300) == 0x200)
  {
    v45 = 6;
  }

  else
  {
    v45 = 5;
  }

  if ((v43 & 0x30000) != 0)
  {
    v46 = v45;
  }

  else
  {
    v46 = ((*(a1 + 5) & 0x300) == 512) + 1;
  }

  if (v42)
  {
    v47 = (a3 & 0xFFFFFFFFFFFF8000) == v41;
  }

  else
  {
    v47 = 1;
  }

  v48 = (v24 << 16) + 8323072;
  v49 = ((v48 | (16 * (v46 + (v44 << ((v43 & 0x40000) != 0))))) + 224) & 0x7F00F0;
  v50 = HIWORD(v48) & 0x7F ^ ((HIWORD(v48) & 0x7F) >> 4);
  v51 = v49 & 0xFF7FFFFF | ((((v50 ^ (v50 >> 2)) ^ ((v50 ^ (v50 >> 2)) >> 1)) & 1) << 23);
  if (v47)
  {
    v52 = 8206;
  }

  else
  {
    v52 = 8974;
  }

  return v51 | v52;
}

uint64_t AGX::MLContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::endMLPass(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v57 = *MEMORY[0x29EDCA608];
  v6 = *(a1 + 256);
  if (v6)
  {
    v7 = *(v6 + 528);
    v8 = *(a1 + 248);
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_6:
    if (!v7)
    {
      goto LABEL_17;
    }

    goto LABEL_7;
  }

  v7 = 0;
  v8 = *(a1 + 248);
  if (!v8)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (!(v7 + *(v8 + 528)))
  {
    goto LABEL_17;
  }

LABEL_7:
  if (v6)
  {
    v9 = *(v6 + 528);
    v10 = *(a1 + 232);
    if (v8)
    {
      goto LABEL_9;
    }

LABEL_15:
    v11 = 0;
    v12 = v9;
    if (v9)
    {
      goto LABEL_10;
    }

LABEL_16:
    *(v10 + 136) = 0;
    goto LABEL_17;
  }

  v9 = 0;
  v10 = *(a1 + 232);
  if (!v8)
  {
    goto LABEL_15;
  }

LABEL_9:
  v11 = *(v8 + 528);
  v12 = v11 + v9;
  if (!(v11 + v9))
  {
    goto LABEL_16;
  }

LABEL_10:
  v13 = ((2 * v12 + 7) & 0xFFFFFFF8) + 16;
  __src[0] = 0;
  v14 = AGX::SidebandBufferAllocator::allocate((a1 + 40), v13, 1u, __src);
  *v14 = v9;
  v14[1] = 0;
  v14[2] = v11;
  v14[3] = 0;
  v15 = __src[0];
  *(v10 + 136) = v13;
  *(v10 + 140) = v15;
  v16 = (v14 + 4);
  if (v9)
  {
    AGX::FenceList::copyFences(v6, v16);
  }

  if (v11)
  {
    AGX::FenceList::copyFences(v8, &v16[v9]);
  }

LABEL_17:
  v54 = 0u;
  v55 = 0u;
  v53 = 0;
  v52 = 0;
  v51 = 0;
  v17 = *(a1 + 128) - *(a1 + 144);
  *(v17 + 152) = 0;
  v18 = *(a1 + 220);
  *(v17 + 188) = v18;
  v19 = *(a1 + 192);
  v20 = *(a1 + 196);
  v21 = *(a1 + 200);
  if (*(a1 + 188))
  {
    *(v17 + 172) = *(a1 + 188);
    *(v17 + 176) = v19;
    v18 = 0.0;
    *(a1 + 188) = 0;
    *(a1 + 204) = 0;
    *(a1 + 228) = 0;
  }

  v22 = (v17 + 8);
  if (v21 | v20)
  {
    *(v17 + 180) = v20;
    *(v17 + 184) = v21;
  }

  if (AGX::ResourceGroupUsage<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::getUsedResourceGroupsAndWriteRanges(*(a1 + 168), &v54, __src, &v53 + 1, &v53, &v52, &v51, v18, a3, a4, a5))
  {
    v23 = v53;
    v24 = HIDWORD(v53);
    v25 = (24 * v53 + 2 * HIDWORD(v53));
    v26 = (v25 + 23) & 0x1FFFFFFF8;
    v27 = *(a1 + 128);
    v28 = v26 + v27;
    if ((v26 + v27) > *(a1 + 136))
    {
      *(*(a1 + 16) + 48) = v27;
      IOGPUMetalCommandBufferStorageGrowKernelCommandBuffer();
      v29 = *(a1 + 16);
      v27 = *(v29 + 48);
      *(a1 + 128) = v27;
      *(a1 + 136) = *(v29 + 56);
      v28 = v26 + v27;
    }

    v30 = *(a1 + 144);
    v31 = (v27 - v30);
    v31[1] += v26;
    *(a1 + 128) = v28;
    *(a1 + 144) = v30 + v26;
    v22 = (v31 + 2);
    v31[38] = v25;
    v32 = v31 + v31[41] + 8;
    *(v32 + 192) = v24;
    *(v32 + 196) = v23;
    *(v32 + 200) = v51;
    v33 = (v32 + 208);
    v34 = *(&v55 + 1);
    if (*(&v55 + 1))
    {
      v35 = 192;
    }

    else
    {
      v34 = v55;
      if (v55)
      {
        v35 = 128;
      }

      else
      {
        v34 = v54.u64[1];
        if (v54.i64[1])
        {
          v35 = 64;
        }

        else
        {
          v34 = v54.i64[0];
          if (!v54.i64[0])
          {
LABEL_42:
            if (v23)
            {
              memcpy(v33, __src, 24 * v23);
            }

            goto LABEL_44;
          }

          v35 = 0;
        }
      }
    }

    v36 = (v35 | __clz(v34)) ^ 0x3F;
    *v33++ = v36;
    if (v36)
    {
LABEL_35:
      while (1)
      {
        v37 = v36 - 1;
        v38 = (v36 - 1) >> 6;
        v39 = (v36 & 0x3F) != 0 ? ~(-1 << v36) : -1;
        v40 = v54.i64[v38] & v39;
        if (!v40)
        {
          break;
        }

        v36 = (v37 | 0x3F) - __clz(v40);
        *v33++ = v36;
        if (!v36)
        {
          goto LABEL_42;
        }
      }

      while (1)
      {
        v41 = v38 - 1;
        if (v38 < 1)
        {
          break;
        }

        v42 = *(&v53 + v38--);
        if (v42)
        {
          v36 = (__clz(v42) | (v41 << 6)) ^ 0x3F;
          *v33++ = v36;
          if (v36)
          {
            goto LABEL_35;
          }

          goto LABEL_42;
        }
      }
    }

    goto LABEL_42;
  }

LABEL_44:
  *(v22 + 32) |= v52;
  v43 = *(a1 + 176);
  if (v43 && [v43 label])
  {
    v44 = [objc_msgSend(*(a1 + 176) "label")];
    v45 = strlen(v44);
    if (v45 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v46 = v45;
    if (v45 >= 0x17)
    {
      operator new();
    }

    v50 = v45;
    if (v45)
    {
      memmove(&__dst, v44, v45);
    }

    *(&__dst + v46) = 0;
    if (v50 < 0)
    {
      v47 = __dst;
      strncpy(v22, __dst, 0x80uLL);
      v22[127] = 0;
      operator delete(v47);
    }

    else
    {
      strncpy(v22, &__dst, 0x80uLL);
      v22[127] = 0;
    }
  }

  else
  {
    *v22 = 0;
  }

  *(*(a1 + 16) + 48) = *(a1 + 128);
  result = IOGPUMetalCommandBufferStorageEndSegment();
  *(a1 + 80) = 0;
  return result;
}

unint64_t *AGX::PBEStateEncoderGen10<kAGXRevHAL300>::StateFields::StateFields(unint64_t *result, int a2, char a3, char a4, int a5, unsigned int a6, unint64_t a7, uint64_t a8, int a9, unsigned int a10, int a11, int a12, unint64_t a13, unint64_t a14, unint64_t a15, int a16, int a17, __int16 a18, int a19, __int16 a20, __int16 a21, __int16 a22, unsigned int a23, int a24, unsigned int a25, __int16 a26, uint64_t a27, unsigned int a28, char a29, int a30, uint64_t a31, unsigned __int8 a32)
{
  result[2] = 0;
  result[3] = 0;
  v32 = result + 2;
  if (a28 < 2)
  {
    v33 = 2;
  }

  else
  {
    v33 = 3;
  }

  if ((a7 & 0x10000) != 0)
  {
    if (BYTE1(a7) == 4)
    {
      if (a2 == 1)
      {
        v34 = 7;
      }

      else
      {
        v34 = v33;
      }
    }

    else if ((a7 & 0x20000) != 0)
    {
      v34 = 8;
    }

    else if (a2 == 1)
    {
      v34 = 3;
    }

    else
    {
      v34 = v33;
    }

    goto LABEL_28;
  }

  if (BYTE1(a7) > 2u)
  {
    if (BYTE1(a7) != 3)
    {
      if (BYTE1(a7) == 4)
      {
        if (a2)
        {
          v34 = 6;
        }

        else
        {
          v34 = v33;
        }

        goto LABEL_28;
      }

LABEL_25:
      v34 = -1;
      goto LABEL_28;
    }

    v34 = 5;
  }

  else
  {
    if (BYTE1(a7) != 1)
    {
      if (BYTE1(a7) == 2)
      {
        if ((a7 & 0x20000) != 0)
        {
          v34 = 4;
        }

        else
        {
          v34 = 2;
        }

        goto LABEL_28;
      }

      goto LABEL_25;
    }

    v34 = 2;
  }

LABEL_28:
  v35 = 0;
  if (a7 > 3u)
  {
    v36 = 1;
  }

  else
  {
    v36 = 1u >> (a7 & 0xF);
  }

  v37 = (a7 < 4u) & (2u >> (a7 & 0xF));
  if (a7 >= 4u)
  {
    v38 = 0;
  }

  else
  {
    v38 = a7;
  }

  if (!a30)
  {
    v37 = 0;
  }

  v39 = 196608;
  if (((a6 >> 6) & 7) - 2 < 3)
  {
    v39 = (((a6 >> 6) & 7) - 2) << 16;
  }

  v40 = 786432;
  if (((a6 >> 9) & 7) - 2 < 3)
  {
    v40 = (((a6 >> 9) & 7) - 2) << 18;
  }

  v41 = 3145728;
  if (((a6 >> 12) & 7) - 2 < 3)
  {
    v41 = (((a6 >> 12) & 7) - 2) << 20;
  }

  v42 = ((a6 >> 15) & 7) - 2;
  v43 = v42 << 22;
  v66 = v42 >= 3;
  v44 = 12582912;
  if (!v66)
  {
    v44 = v43;
  }

  v45 = a25 - 1;
  v46 = ((a3 & 0x7F) << 6) & 0x1FFF | ((a4 & 7) << 13);
  v47 = 0x40000000000000;
  if (!a29)
  {
    v47 = 0;
  }

  v48 = (v46 | (((a18 - 1) & 0x7FFF) << 24) | (((a19 - 1) & 0x7FFF) << 39) | ((a25 > 1) << 60) | v34 & 0xFu | (16 * v38) | v39) + v40 + v41 + v44;
  if ((a5 - 1) <= 3)
  {
    v35 = qword_29D2F50B8[a5 - 1];
  }

  v49 = v35 | v47;
  v50 = 0x80000000000000;
  if (((a7 == 0) & a32) == 0)
  {
    v50 = 0;
  }

  v51 = v49 | v50 | v48 & 0xD07FFFFFFFFFFFFFLL | (((a23 >> 2) & 3) << 58) | ((a15 != 0) << 61);
  if (v45 | a24)
  {
    v52 = v51 | 0x1000000000000000;
    v53 = (a24 & 0xF | (16 * (v45 & 0xF))) << 44;
    *v32 = v53;
    v54 = 0x8000000000000000;
  }

  else
  {
    v53 = 0;
    v54 = 0;
    v52 = v51 & 0xEFFFFFFFFFFFFFFFLL;
  }

  *result = v52;
  if (((v34 == 2) & v36) != 0)
  {
    v55 = (a13 >> 4) & 3;
  }

  else
  {
    v55 = 0;
  }

  v56 = v54 | v55 | (a13 >> 4) & 0xFFFFFFFFFFCLL;
  if (!a9)
  {
    v57 = 0;
    goto LABEL_75;
  }

  if ((a7 & 0x4FF00) == 0x40200)
  {
    if ((a31 - 563) < 0x3A)
    {
      v57 = (byte_29D2F50D8[a31 - 563] & 3) << 61;
      goto LABEL_75;
    }

LABEL_74:
    v57 = 0x2000000000000000;
    goto LABEL_75;
  }

  v57 = 0x6000000000000000;
  if (a31 > 625)
  {
    v58 = a31 - 114;
    if ((a31 - 626) > 0xF)
    {
      goto LABEL_74;
    }

    if (((1 << v58) & 0x8409) != 0)
    {
      goto LABEL_75;
    }

    if (((1 << v58) & 0x4200) == 0 && a31 != 627)
    {
      goto LABEL_74;
    }

LABEL_73:
    v57 = 0x4000000000000000;
    goto LABEL_75;
  }

  if (a31 > 620)
  {
    if ((a31 - 621) >= 3)
    {
      goto LABEL_74;
    }

    goto LABEL_73;
  }

  if (a31 != 587 && a31 != 604 && a31 != 606)
  {
    goto LABEL_74;
  }

LABEL_75:
  v59 = v57 | v56;
  if (v38 != 3 && v38)
  {
    if (v34 <= 8u && ((1 << v34) & 0x18A) != 0)
    {
      v61 = a26;
      if (!a2)
      {
        if (BYTE1(a7) == 4)
        {
          if ((a7 & 0x10000) != 0)
          {
            v61 = 6 * a26;
          }

          else
          {
            v61 = 6;
          }
        }

        else if (BYTE1(a7) == 3)
        {
          v61 = a20;
        }

        else
        {
          v61 = a26;
        }
      }

      v60 = v61 - 1;
    }

    else
    {
      v60 = ~a22 + a20;
    }
  }

  else
  {
    v60 = a16 - 1;
    if (!a16)
    {
      v60 = 0;
    }
  }

  v62 = v59 | (v60 << 44);
  result[1] = v62;
  if (a7)
  {
    v63 = v37;
  }

  else
  {
    v63 = 1;
  }

  if ((v63 & 1) == 0)
  {
    v64 = BYTE1(a7) - 3;
    if ((a7 & 0x10000) != 0 || v64 <= 1)
    {
      v65 = 1;
      if (v64 >= 2 && ((BYTE1(a7) == 1) & WORD1(a7)) == 0)
      {
        v65 = (BYTE1(a7) == 2) & WORD1(a7);
      }

      v66 = (a27 & 0xFFFFFFFFFFFFC000) == 0 || (a7 - 1) >= 2u;
      v67 = !v66;
      v72 = (v67 & v65) == 0;
      v68 = 0x1000000000000000;
      if (v72)
      {
        v68 = 0;
      }

      v62 = v62 & 0xEFFFFFFFFFFFFFFFLL | v68;
      result[1] = v62;
    }
  }

  if ((v52 & 0x3F) == 3)
  {
    v62 |= 0x8000000000000000;
    result[1] = v62;
    result[2] = (16 * (16 * a16 * a19) + 0x7FFFFFFFF0) & 0x7FFFFFF800 | (a26 - 1) & 0x7FF | v53;
    goto LABEL_152;
  }

  v69 = 0;
  if (BYTE1(a7) == 2 && (a7 & 0x40000) != 0)
  {
    v62 |= 0x8000000000000000;
    result[1] = v62;
    if (a10 <= 0x1F && ((0xF00001FF >> a10) & 1) != 0)
    {
      v70 = qword_29D2FF098[a10];
    }

    else
    {
      v70 = 0;
    }

    if ((a7 & 0xFF00) == 0x200)
    {
      v71 = 1024;
      if ((a7 & 0x40000) != 0 && a12 != 1)
      {
        if (a11 <= 3)
        {
          if (a11 == 1)
          {
            v72 = a12 == 2;
            v71 = 768;
            v73 = 256;
            goto LABEL_136;
          }

          if (a11 != 3)
          {
            goto LABEL_134;
          }

          v71 = 256;
        }

        else
        {
          if (a11 != 4)
          {
            if (a11 == 5)
            {
              v72 = a12 == 2;
              v71 = 1280;
              v73 = 256;
              goto LABEL_136;
            }

            if (a11 == 6)
            {
              v72 = a12 == 2;
              v71 = 1536;
LABEL_135:
              v73 = 512;
LABEL_136:
              if (v72)
              {
                v71 = v73;
              }

              goto LABEL_138;
            }

LABEL_134:
            v72 = a12 == 2;
            v71 = 1024;
            goto LABEL_135;
          }

          v71 = 512;
        }
      }
    }

    else
    {
      v71 = 1024;
    }

LABEL_138:
    v74 = v70 | v71;
    result[3] = v74;
    v69 = v74 & 0xFFFFFFFFFFFFFFF8;
  }

  if (a14)
  {
    v62 |= 0x8000000000000000;
    v75 = a17 - 1;
    if (!a17)
    {
      v75 = 0;
    }

    v76 = (v75 << 44) | (a14 >> 4) & 0xFFFFFFFFFFFLL;
    result[1] = v62;
    result[2] = v76;
    if ((v52 & 0x2000000000000000) != 0)
    {
      result[2] = v76 & 0x8FFFFFFFFFFFFFFFLL | ((BYTE5(a7) & 7) << 60);
      result[3] = v69 | HIWORD(a7) & 7;
      if ((a7 & 0x1000000000) != 0)
      {
        if (!BYTE5(a7))
        {
          *v32 = v76 | 0x4000000000000000;
        }

        if ((a7 & 0xFF000000000000) == 0)
        {
          result[3] = v69 | 4;
        }
      }
    }
  }

  else if ((v52 & 0x2000000000000000) != 0)
  {
    v62 |= 0x8000000000000000;
    result[1] = v62;
    result[2] = v53 & 0xFF00000000000 | (a15 >> 4) & 0xFFFFFFFFFFFLL | ((BYTE5(a7) & 7) << 60);
    if (!BYTE5(a7) && (a7 & 0x1000000000) != 0)
    {
      *v32 = v53 & 0xFF00000000000 | (a15 >> 4) & 0xFFFFFFFFFFFLL | 0x4000000000000000;
    }
  }

LABEL_152:
  if (!v37)
  {
    return result;
  }

  *result = v52 | 0x4000000000000000;
  switch(a30)
  {
    case 0x40000:
      v77 = v62 | 3;
      break;
    case 0x10000:
      v77 = v62 & 0xFFFFFFFFFFFFFFFCLL | 2;
      break;
    case 0x4000:
      v77 = v62 & 0xFFFFFFFFFFFFFFFCLL | 1;
      break;
    default:
      return result;
  }

  result[1] = v77;
  return result;
}

uint64_t AGX::PPPEncoderGen7<AGX::HAL300::ESLEncoder,AGX::HAL300::VsStateConfig>::FlexiblePSOUpdateToken::emit(uint64_t result, _DWORD *a2)
{
  v2 = *(result + 8);
  *a2 = v2;
  v3 = a2 + 1;
  if ((v2 & 0x80) != 0)
  {
    a2[1] = *(result + 24);
    a2[2] = *(result + 28);
    v3 = a2 + 3;
    v2 = *(result + 8);
    if ((v2 & 0x100) == 0)
    {
LABEL_3:
      if ((v2 & 0x200) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((v2 & 0x100) == 0)
  {
    goto LABEL_3;
  }

  *v3 = *(result + 32);
  v3[1] = *(result + 36);
  v3 += 2;
  v2 = *(result + 8);
  if ((v2 & 0x200) == 0)
  {
LABEL_4:
    if ((v2 & 0x400) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_9:
  *v3 = *(result + 40);
  v3[1] = *(result + 44);
  v3 += 2;
  v2 = *(result + 8);
  if ((v2 & 0x400) == 0)
  {
LABEL_5:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_11;
  }

LABEL_10:
  *v3 = *(result + 48);
  v3[1] = *(result + 52);
  v3 += 2;
  v2 = *(result + 8);
  if ((v2 & 0x1000) == 0)
  {
    goto LABEL_27;
  }

LABEL_11:
  if ((*result & 0x400) != 0)
  {
    v4 = *(result + 5);
  }

  else
  {
    v4 = *(result + 4);
  }

  if (*(result + 5))
  {
    v5 = 0;
    v6 = (24 * *(result + 5) + 16 * (v4 + *(result + 4)) + result + 72);
    do
    {
      v7 = *(v6 - 3);
      v8 = *(v6 - 2);
      v9 = *(v6 - 1);
      v10 = *v6;
      v6 += 4;
      v11 = v7 == v8 || v9 == v10;
      if (v11)
      {
        v12 = 0x80000000;
      }

      else
      {
        v12 = (v7 << 11) & 0x3FF0000 | ((v8 - 1) >> 5) & 0x3FF | 0x80000000;
      }

      if (v11)
      {
        v13 = 0;
      }

      else
      {
        v13 = (v9 << 11) & 0x3FF0000 | ((v10 - 1) >> 5) & 0x3FF;
      }

      *v3 = v12;
      v3[1] = v13;
      v3 += 2;
      ++v5;
    }

    while (v5 < *(result + 5));
    v2 = *(result + 8);
  }

LABEL_27:
  if ((v2 & 0x2000) == 0)
  {
    if ((v2 & 0x800000) == 0)
    {
      return result;
    }

LABEL_64:
    *v3 = *(result + 56);
    return result;
  }

  v14 = (v3 + 1);
  v15 = *(result + 5);
  if (*(result + 5))
  {
    v16 = 0;
    v17 = 0;
    v18 = 16 * *(result + 4);
    v19 = result + v18 + 60;
    v20 = v18 + result + 72;
    do
    {
      v24 = (v19 + 24 * v16);
      v25 = *v24;
      v26 = v24[1];
      v28 = v24[2];
      v27 = v24[3];
      if (v16 && !v17)
      {
        v29 = v25 + v28;
        v30 = fabsf(v28);
        if (v28 >= 0.0)
        {
          v29 = *v24;
          v30 = v24[2];
        }

        v31 = v29 + v30;
        v32 = v26 + v27;
        v33 = fabsf(v27);
        if (v27 >= 0.0)
        {
          v32 = v24[1];
          v33 = v24[3];
        }

        v34 = v32 + v33;
        v35 = v20;
        v36 = 1;
        do
        {
          v37 = *(v35 - 1);
          v38 = *v35;
          v39 = *(v35 - 3);
          if (v37 < 0.0)
          {
            v39 = v39 + v37;
          }

          v40 = fabsf(v37);
          if (v37 < 0.0)
          {
            v37 = v40;
          }

          v42 = v29 < (v39 + v37) && v31 > v39;
          v43 = *(v35 - 2) + v38;
          v44 = fabsf(v38);
          if (v38 < 0.0)
          {
            v38 = v44;
          }

          else
          {
            v43 = *(v35 - 2);
          }

          v46 = v32 < (v43 + v38) && v34 > v43;
          v17 = v42 && v46;
          if (v36 >= v16)
          {
            break;
          }

          ++v36;
          v35 += 6;
        }

        while (!v17);
      }

      v21 = v24[4];
      v22 = v28 * 0.5;
      v23 = v24[5] - v21;
      *v14 = v25 + v22;
      v14[1] = v22;
      v14[2] = v26 + (v27 * 0.5);
      v14[3] = -(v27 * 0.5);
      v14[4] = v21;
      v14[5] = v23;
      v14 += 6;
      ++v16;
    }

    while (v16 < *(result + 5));
    v15 = v17;
  }

  *v3 = v15;
  v3 = v14;
  if ((*(result + 8) & 0x800000) != 0)
  {
    goto LABEL_64;
  }

  return result;
}

unsigned int *AGX::PPPEncoderGen7<AGX::HAL300::ESLEncoder,AGX::HAL300::VsStateConfig>::RasterToken::setViewports(unsigned int *result, uint64_t a2, int a3)
{
  *result = *result & 0xFFFC3FFF | (((((a3 << 14) + 245760) >> 14) & 0xF) << 14);
  if (a3)
  {
    v3 = 0;
    v4 = 0;
    do
    {
      v5 = (a2 + 48 * v3);
      v6 = v5[2];
      v7 = v5[3];
      v8 = v6;
      v9 = v8 * 0.5;
      if (v6 > 3.40282347e38)
      {
        v9 = 1.7014e38;
      }

      if (v6 >= -3.40282347e38)
      {
        v10 = v9;
      }

      else
      {
        v10 = -1.7014e38;
      }

      v11 = v7;
      v12 = v11 * 0.5;
      if (v7 > 3.40282347e38)
      {
        v12 = 1.7014e38;
      }

      if (v7 >= -3.40282347e38)
      {
        v13 = v12;
      }

      else
      {
        v13 = -1.7014e38;
      }

      v14 = v5[4];
      v15 = v5[5] - v14;
      v16 = *v5;
      v17 = v5[1];
      v18 = *v5;
      if (*v5 > 3.40282347e38)
      {
        v18 = 3.4028e38;
      }

      if (v16 < -3.40282347e38)
      {
        v18 = -3.4028e38;
      }

      v19 = &result[6 * v3 + 34];
      *v19 = v10 + v18;
      v19[1] = v10;
      v20 = v17;
      if (v17 > 3.40282347e38)
      {
        v20 = 3.4028e38;
      }

      if (v17 < -3.40282347e38)
      {
        v20 = -3.4028e38;
      }

      v19[2] = v13 + v20;
      v19[3] = -v13;
      v21 = v14;
      v19[4] = v21;
      v19[5] = v15;
      if (v3 != 0 && !v4)
      {
        v22 = fabs(v6);
        if (v6 < 0.0)
        {
          v16 = v6 + v16;
          v6 = v22;
        }

        v23 = v6 + v16;
        v24 = fabs(v7);
        if (v7 < 0.0)
        {
          v17 = v7 + v17;
          v7 = v24;
        }

        v25 = v7 + v17;
        v26 = (a2 + 16);
        v27 = 1;
        do
        {
          v28 = *v26;
          v29 = v26[1];
          v30 = *(v26 - 2);
          if (*v26 < 0)
          {
            v30 = v30 + *v26;
          }

          v31 = fabs(v28);
          if (*v26 < 0)
          {
            v28 = v31;
          }

          v32 = v23 > v30;
          if (v16 >= v30 + v28)
          {
            v32 = 0;
          }

          v33 = *(v26 - 1) + v29;
          v34 = fabs(v29);
          if (v29 < 0.0)
          {
            v29 = v34;
          }

          else
          {
            v33 = *(v26 - 1);
          }

          v35 = v25 > v33;
          if (v17 >= v33 + v29)
          {
            v35 = 0;
          }

          v4 = v32 && v35;
          if (v27 >= v3)
          {
            break;
          }

          ++v27;
          v26 += 6;
        }

        while (!v4);
      }

      ++v3;
    }

    while (v3 != a3);
    v36 = v4;
  }

  else
  {
    v36 = 0;
  }

  result[33] = result[33] & 0xFFFFFFFE | v36;
  return result;
}

void sub_29CDD0FEC(_Unwind_Exception *a1)
{
  v4 = v2 + v1;
  v5 = v2 - 8;
  v6 = (v4 - 216);
  do
  {
    AGX::TileProgramKey::~TileProgramKey(v6);
    v6 = (v7 - 216);
    v5 -= 216;
  }

  while (v5);
  _Unwind_Resume(a1);
}

uint64_t VectorMap<AGX::TileProgramKey,AGX::ProgramVariantEntry<AGX::HAL300::TileProgramVariant>,4u>::Chunk::~Chunk(uint64_t a1)
{
  v2 = *(a1 + 1008);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(a1 + 1016);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(a1 + 960);
  if (v4)
  {
    dispatch_release(v4);
  }

  v5 = *(a1 + 968);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(a1 + 912);
  if (v6)
  {
    dispatch_release(v6);
  }

  v7 = *(a1 + 920);
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = *(a1 + 864);
  if (v8)
  {
    dispatch_release(v8);
  }

  v9 = *(a1 + 872);
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  *(a1 + 648) = &unk_2A23FA7D8;
  v10 = *(a1 + 832);
  if (v10)
  {
    *(a1 + 840) = v10;
    operator delete(v10);
  }

  v11 = *(a1 + 808);
  if (v11)
  {
    *(a1 + 816) = v11;
    operator delete(v11);
  }

  *(a1 + 648) = &unk_2A23F7850;
  v12 = *(a1 + 664);
  if (v12)
  {
    *(a1 + 672) = v12;
    operator delete(v12);
  }

  *(a1 + 432) = &unk_2A23FA7D8;
  v13 = *(a1 + 616);
  if (v13)
  {
    *(a1 + 624) = v13;
    operator delete(v13);
  }

  v14 = *(a1 + 592);
  if (v14)
  {
    *(a1 + 600) = v14;
    operator delete(v14);
  }

  *(a1 + 432) = &unk_2A23F7850;
  v15 = *(a1 + 448);
  if (v15)
  {
    *(a1 + 456) = v15;
    operator delete(v15);
  }

  *(a1 + 216) = &unk_2A23FA7D8;
  v16 = *(a1 + 400);
  if (v16)
  {
    *(a1 + 408) = v16;
    operator delete(v16);
  }

  v17 = *(a1 + 376);
  if (v17)
  {
    *(a1 + 384) = v17;
    operator delete(v17);
  }

  *(a1 + 216) = &unk_2A23F7850;
  v18 = *(a1 + 232);
  if (v18)
  {
    *(a1 + 240) = v18;
    operator delete(v18);
  }

  *a1 = &unk_2A23FA7D8;
  v19 = *(a1 + 184);
  if (v19)
  {
    *(a1 + 192) = v19;
    operator delete(v19);
  }

  v20 = *(a1 + 160);
  if (v20)
  {
    *(a1 + 168) = v20;
    operator delete(v20);
  }

  *a1 = &unk_2A23F7850;
  v21 = *(a1 + 16);
  if (v21)
  {
    *(a1 + 24) = v21;
    operator delete(v21);
  }

  return a1;
}

void AGX::VertexProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes>::~VertexProgramVariant(unint64_t a1)
{
  AGX::VertexProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes>::~VertexProgramVariant(a1);

  JUMPOUT(0x29ED520D0);
}

unint64_t AGX::VertexProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes>::~VertexProgramVariant(unint64_t a1)
{
  *a1 = &unk_2A23F7670;
  if ((*(a1 + 2004) & 1) == 0 && *(a1 + 4184))
  {
    v2 = *(a1 + 4192);
    v3 = *(v2 + 16);
    v12[0] = MEMORY[0x29EDCA5F8];
    v12[1] = 3221225472;
    v12[2] = ___ZN3AGX4HeapILb1EE14deallocateImplERKNS1_10AllocationE_block_invoke;
    v12[3] = &__block_descriptor_48_e5_v8__0l;
    v12[4] = v2;
    v12[5] = a1 + 4160;
    dispatch_sync(v3, v12);
    *(a1 + 4185) = 0u;
    *(a1 + 4176) = 0u;
    *(a1 + 4160) = 0u;
  }

  v4 = *(a1 + 4392);
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  std::mutex::~mutex((a1 + 4328));
  v5 = *(a1 + 4288);
  if (v5)
  {
    do
    {
      v8 = *v5;
      if (*(v5 + 39) < 0)
      {
        operator delete(v5[2]);
      }

      operator delete(v5);
      v5 = v8;
    }

    while (v8);
  }

  v6 = *(a1 + 4272);
  *(a1 + 4272) = 0;
  if (v6)
  {
    operator delete(v6);
  }

  if (*(a1 + 4255) < 0)
  {
    operator delete(*(a1 + 4232));
    if ((*(a1 + 4231) & 0x80000000) == 0)
    {
LABEL_11:
      v7 = *(a1 + 4080);
      if (!v7)
      {
        goto LABEL_18;
      }

      goto LABEL_24;
    }
  }

  else if ((*(a1 + 4231) & 0x80000000) == 0)
  {
    goto LABEL_11;
  }

  operator delete(*(a1 + 4208));
  v7 = *(a1 + 4080);
  if (!v7)
  {
    goto LABEL_18;
  }

  do
  {
LABEL_24:
    v11 = *v7;
    if (*(v7 + 39) < 0)
    {
      operator delete(v7[2]);
    }

    operator delete(v7);
    v7 = v11;
  }

  while (v11);
LABEL_18:
  v9 = *(a1 + 4064);
  *(a1 + 4064) = 0;
  if (v9)
  {
    operator delete(v9);
  }

  AGX::ProgramVariantESLState<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserVertexArgumentTableLayout,true,8ul>::~ProgramVariantESLState((a1 + 2392));

  return AGX::ProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserVertexArgumentTableLayout,true,true,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::VertexDriverArgumentTable<AGX::HAL300::Classes>>>::~ProgramVariant(a1);
}

void sub_29CDD16F4(_Unwind_Exception *a1)
{
  std::mutex::~mutex((v1 + 4328));
  std::unordered_map<std::string,objc_object  {objcproto11MTLFunction}*>::~unordered_map[abi:nn200100](v1 + 4272);
  AGX::FragmentProgramVaryings::~FragmentProgramVaryings((v1 + 4208));
  AGX::HAL300::VertexProgramVariantESLState::~VertexProgramVariantESLState((v1 + 2392));
  AGX::ProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserVertexArgumentTableLayout,true,true,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::VertexDriverArgumentTable<AGX::HAL300::Classes>>>::~ProgramVariant(v1);
  _Unwind_Resume(a1);
}

void AGX::HAL300::VertexProgramVariantESLState::~VertexProgramVariantESLState(AGX::HAL300::VertexProgramVariantESLState *this)
{
  v2 = *(this + 211);
  if (v2)
  {
    do
    {
      v4 = *v2;
      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

      operator delete(v2);
      v2 = v4;
    }

    while (v4);
  }

  v3 = *(this + 209);
  *(this + 209) = 0;
  if (v3)
  {
    operator delete(v3);
  }

  AGX::ProgramVariantESLState<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserVertexArgumentTableLayout,true,8ul>::~ProgramVariantESLState(this);
}

unint64_t AGX::ProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserVertexArgumentTableLayout,true,true,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::VertexDriverArgumentTable<AGX::HAL300::Classes>>>::~ProgramVariant(unint64_t a1)
{
  *a1 = &unk_2A23F78D0;
  if (*(a1 + 1592))
  {
    v2 = *(a1 + 1600);
    v3 = *(v2 + 16);
    v51 = MEMORY[0x29EDCA5F8];
    v52 = 3221225472;
    v53 = ___ZN3AGX4HeapILb1EE14deallocateImplERKNS1_10AllocationE_block_invoke;
    v54 = &__block_descriptor_48_e5_v8__0l;
    v55 = v2;
    v56 = a1 + 1568;
    dispatch_sync(v3, &v51);
    *(a1 + 1593) = 0u;
    *(a1 + 1584) = 0u;
    *(a1 + 1568) = 0u;
  }

  if (*(a1 + 1640))
  {
    v4 = *(a1 + 1648);
    v5 = *(v4 + 16);
    v51 = MEMORY[0x29EDCA5F8];
    v52 = 3221225472;
    v53 = ___ZN3AGX4HeapILb1EE14deallocateImplERKNS1_10AllocationE_block_invoke;
    v54 = &__block_descriptor_48_e5_v8__0l;
    v55 = v4;
    v56 = a1 + 1616;
    dispatch_sync(v5, &v51);
    *(a1 + 1641) = 0u;
    *(a1 + 1632) = 0u;
    *(a1 + 1616) = 0u;
  }

  if (*(a1 + 1688))
  {
    v6 = *(a1 + 1696);
    v7 = *(v6 + 16);
    v51 = MEMORY[0x29EDCA5F8];
    v52 = 3221225472;
    v53 = ___ZN3AGX4HeapILb1EE14deallocateImplERKNS1_10AllocationE_block_invoke;
    v54 = &__block_descriptor_48_e5_v8__0l;
    v55 = v6;
    v56 = a1 + 1664;
    dispatch_sync(v7, &v51);
    *(a1 + 1689) = 0u;
    *(a1 + 1680) = 0u;
    *(a1 + 1664) = 0u;
  }

  if (*(a1 + 1736))
  {
    v8 = *(a1 + 1744);
    v9 = *(v8 + 16);
    v51 = MEMORY[0x29EDCA5F8];
    v52 = 3221225472;
    v53 = ___ZN3AGX4HeapILb1EE14deallocateImplERKNS1_10AllocationE_block_invoke;
    v54 = &__block_descriptor_48_e5_v8__0l;
    v55 = v8;
    v56 = a1 + 1712;
    dispatch_sync(v9, &v51);
    *(a1 + 1737) = 0u;
    *(a1 + 1728) = 0u;
    *(a1 + 1712) = 0u;
  }

  v10 = *(a1 + 584);
  if (v10)
  {
    v11 = AGX::ProgramBindingRemap<AGX::HAL300::Encoders,AGX::HAL300::Classes>::~ProgramBindingRemap(v10);
    MEMORY[0x29ED520D0](v11, 0x1030C40704B4075);
  }

  v12 = *(a1 + 576);
  if (v12)
  {
    ProgramBindingsAndDMAList::~ProgramBindingsAndDMAList(v12);
    MEMORY[0x29ED520D0]();
  }

  v13 = *(a1 + 616);
  if (v13)
  {
    AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::unregisterVariantEventInfo(v13, a1);
  }

  if (*(a1 + 2391) < 0)
  {
    operator delete(*(a1 + 2368));
  }

  v14 = *(a1 + 2344);
  if (v14)
  {
    *(a1 + 2352) = v14;
    operator delete(v14);
  }

  v15 = *(a1 + 2320);
  if (v15)
  {
    v16 = *(a1 + 2328);
    v17 = *(a1 + 2320);
    if (v16 != v15)
    {
      do
      {
        v18 = *(v16 - 1);
        v16 -= 3;
        if (v18 < 0)
        {
          operator delete(*v16);
        }
      }

      while (v16 != v15);
      v17 = *(a1 + 2320);
    }

    *(a1 + 2328) = v15;
    operator delete(v17);
  }

  std::__tree<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval,AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::IntervalRangeComparator,std::allocator<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval>>::destroy(*(a1 + 2208));
  v19 = *(a1 + 2168);
  if (v19)
  {
    v20 = *(a1 + 2176);
    v21 = *(a1 + 2168);
    if (v20 != v19)
    {
      do
      {
        v22 = *(v20 - 8);
        if (v22 && !atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v22->__on_zero_shared)(v22);
          std::__shared_weak_count::__release_weak(v22);
        }

        v20 -= 16;
      }

      while (v20 != v19);
      v21 = *(a1 + 2168);
    }

    *(a1 + 2176) = v19;
    operator delete(v21);
  }

  v23 = *(a1 + 2144);
  if (v23)
  {
    *(a1 + 2152) = v23;
    operator delete(v23);
  }

  v24 = *(a1 + 2120);
  if (v24)
  {
    *(a1 + 2128) = v24;
    operator delete(v24);
  }

  if (*(a1 + 2031) < 0)
  {
    operator delete(*(a1 + 2008));
    if ((*(a1 + 1527) & 0x80000000) == 0)
    {
LABEL_42:
      if ((*(a1 + 1495) & 0x80000000) == 0)
      {
        goto LABEL_43;
      }

      goto LABEL_98;
    }
  }

  else if ((*(a1 + 1527) & 0x80000000) == 0)
  {
    goto LABEL_42;
  }

  operator delete(*(a1 + 1504));
  if ((*(a1 + 1495) & 0x80000000) == 0)
  {
LABEL_43:
    if ((*(a1 + 1471) & 0x80000000) == 0)
    {
      goto LABEL_44;
    }

LABEL_99:
    operator delete(*(a1 + 1448));
    if ((*(a1 + 1447) & 0x80000000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_100;
  }

LABEL_98:
  operator delete(*(a1 + 1472));
  if (*(a1 + 1471) < 0)
  {
    goto LABEL_99;
  }

LABEL_44:
  if ((*(a1 + 1447) & 0x80000000) == 0)
  {
    goto LABEL_45;
  }

LABEL_100:
  operator delete(*(a1 + 1424));
LABEL_45:
  std::__tree<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval,AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::IntervalRangeComparator,std::allocator<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval>>::destroy(*(a1 + 1152));
  v25 = *(a1 + 1120);
  if (v25)
  {
    *(a1 + 1128) = v25;
    operator delete(v25);
  }

  v26 = *(a1 + 1080);
  if (v26)
  {
    *(a1 + 1088) = v26;
    operator delete(v26);
  }

  v27 = *(a1 + 1056);
  if (v27)
  {
    v28 = *(a1 + 1064);
    v29 = *(a1 + 1056);
    if (v28 != v27)
    {
      do
      {
        v30 = *(v28 - 24);
        if (v30)
        {
          *(v28 - 16) = v30;
          operator delete(v30);
        }

        v28 -= 32;
      }

      while (v28 != v27);
      v29 = *(a1 + 1056);
    }

    *(a1 + 1064) = v27;
    operator delete(v29);
  }

  v31 = *(a1 + 1032);
  if (v31)
  {
    *(a1 + 1040) = v31;
    operator delete(v31);
  }

  v32 = *(a1 + 936);
  if (v32)
  {
    *(a1 + 944) = v32;
    operator delete(v32);
  }

  v33 = *(a1 + 912);
  if (v33)
  {
    *(a1 + 920) = v33;
    operator delete(v33);
  }

  v34 = *(a1 + 888);
  if (v34)
  {
    *(a1 + 896) = v34;
    operator delete(v34);
  }

  v35 = *(a1 + 864);
  if (v35)
  {
    *(a1 + 872) = v35;
    operator delete(v35);
  }

  v36 = *(a1 + 824);
  if (v36)
  {
    *(a1 + 832) = v36;
    operator delete(v36);
  }

  v37 = *(a1 + 800);
  if (v37)
  {
    v38 = *(a1 + 808);
    v39 = *(a1 + 800);
    if (v38 != v37)
    {
      do
      {
        v40 = *(v38 - 24);
        if (v40)
        {
          *(v38 - 16) = v40;
          operator delete(v40);
        }

        v38 -= 32;
      }

      while (v38 != v37);
      v39 = *(a1 + 800);
    }

    *(a1 + 808) = v37;
    operator delete(v39);
  }

  v41 = *(a1 + 776);
  if (v41)
  {
    *(a1 + 784) = v41;
    operator delete(v41);
  }

  v42 = *(a1 + 752);
  if (v42)
  {
    *(a1 + 760) = v42;
    operator delete(v42);
  }

  v43 = *(a1 + 712);
  if (v43)
  {
    *(a1 + 720) = v43;
    operator delete(v43);
  }

  v44 = *(a1 + 688);
  if (v44)
  {
    v45 = *(a1 + 696);
    v46 = *(a1 + 688);
    if (v45 != v44)
    {
      do
      {
        v47 = *(v45 - 24);
        if (v47)
        {
          *(v45 - 16) = v47;
          operator delete(v47);
        }

        v45 -= 32;
      }

      while (v45 != v44);
      v46 = *(a1 + 688);
    }

    *(a1 + 696) = v44;
    operator delete(v46);
  }

  v48 = *(a1 + 664);
  if (v48)
  {
    *(a1 + 672) = v48;
    operator delete(v48);
  }

  v49 = *(a1 + 592);
  if (v49)
  {
    *(a1 + 600) = v49;
    operator delete(v49);
  }

  AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::LinkInfo::~LinkInfo(a1 + 8);
  return a1;
}

void *AGX::ProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserVertexArgumentTableLayout,true,true,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::VertexDriverArgumentTable<AGX::HAL300::Classes>>>::GlobalBindingTableInfo::~GlobalBindingTableInfo(void *a1)
{
  v2 = a1[13];
  if (v2)
  {
    a1[14] = v2;
    operator delete(v2);
  }

  v3 = a1[8];
  if (v3)
  {
    a1[9] = v3;
    operator delete(v3);
  }

  v4 = a1[5];
  if (v4)
  {
    v5 = a1[6];
    v6 = a1[5];
    if (v5 != v4)
    {
      do
      {
        v7 = *(v5 - 24);
        if (v7)
        {
          *(v5 - 16) = v7;
          operator delete(v7);
        }

        v5 -= 32;
      }

      while (v5 != v4);
      v6 = a1[5];
    }

    a1[6] = v4;
    operator delete(v6);
  }

  v8 = a1[2];
  if (v8)
  {
    a1[3] = v8;
    operator delete(v8);
  }

  return a1;
}

void ProgramBindingsAndDMAList::~ProgramBindingsAndDMAList(ProgramBindingsAndDMAList *this)
{
  v2 = *this;
  v3 = *(this + 1);
  while (v2 != v3)
  {
    if (*v2)
    {
      MEMORY[0x29ED520D0](*v2, 0x1000C408B6DE1C6);
    }

    ++v2;
  }

  v4 = *(this + 3);
  v5 = *(this + 4);
  while (v4 != v5)
  {
    if (*v4)
    {
      MEMORY[0x29ED520D0](*v4, 0x1000C408B6DE1C6);
    }

    ++v4;
  }

  v6 = *(this + 6);
  v7 = *(this + 7);
  while (v6 != v7)
  {
    if (*v6)
    {
      MEMORY[0x29ED520D0](*v6, 0x1000C408B6DE1C6);
    }

    ++v6;
  }

  v8 = *(this + 9);
  v9 = *(this + 10);
  while (v8 != v9)
  {
    if (*v8)
    {
      MEMORY[0x29ED520D0](*v8, 0x1000C408B6DE1C6);
    }

    ++v8;
  }

  v10 = *(this + 18);
  v11 = *(this + 19);
  if (v10 != v11)
  {
    do
    {
      if (*v10)
      {
        MEMORY[0x29ED520D0](*v10, 0x1000C40A86A77D5);
      }

      ++v10;
    }

    while (v10 != v11);
    v10 = *(this + 18);
  }

  if (v10)
  {
    *(this + 19) = v10;
    operator delete(v10);
  }

  v12 = *(this + 9);
  if (v12)
  {
    *(this + 10) = v12;
    operator delete(v12);
  }

  v13 = *(this + 6);
  if (v13)
  {
    *(this + 7) = v13;
    operator delete(v13);
  }

  v14 = *(this + 3);
  if (v14)
  {
    *(this + 4) = v14;
    operator delete(v14);
  }

  v15 = *this;
  if (*this)
  {
    *(this + 1) = v15;
    operator delete(v15);
  }
}

void AGX::ProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserVertexArgumentTableLayout,true,true,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::VertexDriverArgumentTable<AGX::HAL300::Classes>>>::~ProgramVariant(unint64_t a1)
{
  AGX::ProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserVertexArgumentTableLayout,true,true,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::VertexDriverArgumentTable<AGX::HAL300::Classes>>>::~ProgramVariant(a1);

  JUMPOUT(0x29ED520D0);
}

void AGX::ObjectProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes>::~ObjectProgramVariant(unint64_t a1)
{
  AGX::ObjectProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes>::~ObjectProgramVariant(a1);

  JUMPOUT(0x29ED520D0);
}

unint64_t AGX::ObjectProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes>::~ObjectProgramVariant(unint64_t a1)
{
  *a1 = &unk_2A23F7690;

  std::mutex::~mutex((a1 + 4008));
  v2 = *(a1 + 3976);
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

  v3 = *(a1 + 3960);
  *(a1 + 3960) = 0;
  if (v3)
  {
    operator delete(v3);
  }

  AGX::ProgramVariantESLState<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserVertexArgumentTableLayout,true,8ul>::~ProgramVariantESLState((a1 + 2392));

  return AGX::ProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserObjectArgumentTableLayout,true,true,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::ObjectDriverArgumentTable<AGX::HAL300::Classes>>>::~ProgramVariant(a1);
}

void sub_29CDD207C(_Unwind_Exception *a1)
{
  std::mutex::~mutex((v1 + 4008));
  std::unordered_map<std::string,objc_object  {objcproto11MTLFunction}*>::~unordered_map[abi:nn200100](v1 + 3960);
  AGX::ProgramVariantESLState<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserVertexArgumentTableLayout,true,8ul>::~ProgramVariantESLState((v1 + 2392));
  AGX::ProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserObjectArgumentTableLayout,true,true,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::ObjectDriverArgumentTable<AGX::HAL300::Classes>>>::~ProgramVariant(v1);
  _Unwind_Resume(a1);
}

unint64_t AGX::ProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserObjectArgumentTableLayout,true,true,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::ObjectDriverArgumentTable<AGX::HAL300::Classes>>>::~ProgramVariant(unint64_t a1)
{
  *a1 = &unk_2A23F78F0;
  if (*(a1 + 1592))
  {
    v2 = *(a1 + 1600);
    v3 = *(v2 + 16);
    v51 = MEMORY[0x29EDCA5F8];
    v52 = 3221225472;
    v53 = ___ZN3AGX4HeapILb1EE14deallocateImplERKNS1_10AllocationE_block_invoke;
    v54 = &__block_descriptor_48_e5_v8__0l;
    v55 = v2;
    v56 = a1 + 1568;
    dispatch_sync(v3, &v51);
    *(a1 + 1593) = 0u;
    *(a1 + 1584) = 0u;
    *(a1 + 1568) = 0u;
  }

  if (*(a1 + 1640))
  {
    v4 = *(a1 + 1648);
    v5 = *(v4 + 16);
    v51 = MEMORY[0x29EDCA5F8];
    v52 = 3221225472;
    v53 = ___ZN3AGX4HeapILb1EE14deallocateImplERKNS1_10AllocationE_block_invoke;
    v54 = &__block_descriptor_48_e5_v8__0l;
    v55 = v4;
    v56 = a1 + 1616;
    dispatch_sync(v5, &v51);
    *(a1 + 1641) = 0u;
    *(a1 + 1632) = 0u;
    *(a1 + 1616) = 0u;
  }

  if (*(a1 + 1688))
  {
    v6 = *(a1 + 1696);
    v7 = *(v6 + 16);
    v51 = MEMORY[0x29EDCA5F8];
    v52 = 3221225472;
    v53 = ___ZN3AGX4HeapILb1EE14deallocateImplERKNS1_10AllocationE_block_invoke;
    v54 = &__block_descriptor_48_e5_v8__0l;
    v55 = v6;
    v56 = a1 + 1664;
    dispatch_sync(v7, &v51);
    *(a1 + 1689) = 0u;
    *(a1 + 1680) = 0u;
    *(a1 + 1664) = 0u;
  }

  if (*(a1 + 1736))
  {
    v8 = *(a1 + 1744);
    v9 = *(v8 + 16);
    v51 = MEMORY[0x29EDCA5F8];
    v52 = 3221225472;
    v53 = ___ZN3AGX4HeapILb1EE14deallocateImplERKNS1_10AllocationE_block_invoke;
    v54 = &__block_descriptor_48_e5_v8__0l;
    v55 = v8;
    v56 = a1 + 1712;
    dispatch_sync(v9, &v51);
    *(a1 + 1737) = 0u;
    *(a1 + 1728) = 0u;
    *(a1 + 1712) = 0u;
  }

  v10 = *(a1 + 584);
  if (v10)
  {
    v11 = AGX::ProgramBindingRemap<AGX::HAL300::Encoders,AGX::HAL300::Classes>::~ProgramBindingRemap(v10);
    MEMORY[0x29ED520D0](v11, 0x1030C40704B4075);
  }

  v12 = *(a1 + 576);
  if (v12)
  {
    ProgramBindingsAndDMAList::~ProgramBindingsAndDMAList(v12);
    MEMORY[0x29ED520D0]();
  }

  v13 = *(a1 + 616);
  if (v13)
  {
    AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::unregisterVariantEventInfo(v13, a1);
  }

  if (*(a1 + 2391) < 0)
  {
    operator delete(*(a1 + 2368));
  }

  v14 = *(a1 + 2344);
  if (v14)
  {
    *(a1 + 2352) = v14;
    operator delete(v14);
  }

  v15 = *(a1 + 2320);
  if (v15)
  {
    v16 = *(a1 + 2328);
    v17 = *(a1 + 2320);
    if (v16 != v15)
    {
      do
      {
        v18 = *(v16 - 1);
        v16 -= 3;
        if (v18 < 0)
        {
          operator delete(*v16);
        }
      }

      while (v16 != v15);
      v17 = *(a1 + 2320);
    }

    *(a1 + 2328) = v15;
    operator delete(v17);
  }

  std::__tree<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval,AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::IntervalRangeComparator,std::allocator<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval>>::destroy(*(a1 + 2208));
  v19 = *(a1 + 2168);
  if (v19)
  {
    v20 = *(a1 + 2176);
    v21 = *(a1 + 2168);
    if (v20 != v19)
    {
      do
      {
        v22 = *(v20 - 8);
        if (v22 && !atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v22->__on_zero_shared)(v22);
          std::__shared_weak_count::__release_weak(v22);
        }

        v20 -= 16;
      }

      while (v20 != v19);
      v21 = *(a1 + 2168);
    }

    *(a1 + 2176) = v19;
    operator delete(v21);
  }

  v23 = *(a1 + 2144);
  if (v23)
  {
    *(a1 + 2152) = v23;
    operator delete(v23);
  }

  v24 = *(a1 + 2120);
  if (v24)
  {
    *(a1 + 2128) = v24;
    operator delete(v24);
  }

  if (*(a1 + 2031) < 0)
  {
    operator delete(*(a1 + 2008));
    if ((*(a1 + 1527) & 0x80000000) == 0)
    {
LABEL_42:
      if ((*(a1 + 1495) & 0x80000000) == 0)
      {
        goto LABEL_43;
      }

      goto LABEL_98;
    }
  }

  else if ((*(a1 + 1527) & 0x80000000) == 0)
  {
    goto LABEL_42;
  }

  operator delete(*(a1 + 1504));
  if ((*(a1 + 1495) & 0x80000000) == 0)
  {
LABEL_43:
    if ((*(a1 + 1471) & 0x80000000) == 0)
    {
      goto LABEL_44;
    }

LABEL_99:
    operator delete(*(a1 + 1448));
    if ((*(a1 + 1447) & 0x80000000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_100;
  }

LABEL_98:
  operator delete(*(a1 + 1472));
  if (*(a1 + 1471) < 0)
  {
    goto LABEL_99;
  }

LABEL_44:
  if ((*(a1 + 1447) & 0x80000000) == 0)
  {
    goto LABEL_45;
  }

LABEL_100:
  operator delete(*(a1 + 1424));
LABEL_45:
  std::__tree<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval,AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::IntervalRangeComparator,std::allocator<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval>>::destroy(*(a1 + 1152));
  v25 = *(a1 + 1120);
  if (v25)
  {
    *(a1 + 1128) = v25;
    operator delete(v25);
  }

  v26 = *(a1 + 1080);
  if (v26)
  {
    *(a1 + 1088) = v26;
    operator delete(v26);
  }

  v27 = *(a1 + 1056);
  if (v27)
  {
    v28 = *(a1 + 1064);
    v29 = *(a1 + 1056);
    if (v28 != v27)
    {
      do
      {
        v30 = *(v28 - 24);
        if (v30)
        {
          *(v28 - 16) = v30;
          operator delete(v30);
        }

        v28 -= 32;
      }

      while (v28 != v27);
      v29 = *(a1 + 1056);
    }

    *(a1 + 1064) = v27;
    operator delete(v29);
  }

  v31 = *(a1 + 1032);
  if (v31)
  {
    *(a1 + 1040) = v31;
    operator delete(v31);
  }

  v32 = *(a1 + 936);
  if (v32)
  {
    *(a1 + 944) = v32;
    operator delete(v32);
  }

  v33 = *(a1 + 912);
  if (v33)
  {
    *(a1 + 920) = v33;
    operator delete(v33);
  }

  v34 = *(a1 + 888);
  if (v34)
  {
    *(a1 + 896) = v34;
    operator delete(v34);
  }

  v35 = *(a1 + 864);
  if (v35)
  {
    *(a1 + 872) = v35;
    operator delete(v35);
  }

  v36 = *(a1 + 824);
  if (v36)
  {
    *(a1 + 832) = v36;
    operator delete(v36);
  }

  v37 = *(a1 + 800);
  if (v37)
  {
    v38 = *(a1 + 808);
    v39 = *(a1 + 800);
    if (v38 != v37)
    {
      do
      {
        v40 = *(v38 - 24);
        if (v40)
        {
          *(v38 - 16) = v40;
          operator delete(v40);
        }

        v38 -= 32;
      }

      while (v38 != v37);
      v39 = *(a1 + 800);
    }

    *(a1 + 808) = v37;
    operator delete(v39);
  }

  v41 = *(a1 + 776);
  if (v41)
  {
    *(a1 + 784) = v41;
    operator delete(v41);
  }

  v42 = *(a1 + 752);
  if (v42)
  {
    *(a1 + 760) = v42;
    operator delete(v42);
  }

  v43 = *(a1 + 712);
  if (v43)
  {
    *(a1 + 720) = v43;
    operator delete(v43);
  }

  v44 = *(a1 + 688);
  if (v44)
  {
    v45 = *(a1 + 696);
    v46 = *(a1 + 688);
    if (v45 != v44)
    {
      do
      {
        v47 = *(v45 - 24);
        if (v47)
        {
          *(v45 - 16) = v47;
          operator delete(v47);
        }

        v45 -= 32;
      }

      while (v45 != v44);
      v46 = *(a1 + 688);
    }

    *(a1 + 696) = v44;
    operator delete(v46);
  }

  v48 = *(a1 + 664);
  if (v48)
  {
    *(a1 + 672) = v48;
    operator delete(v48);
  }

  v49 = *(a1 + 592);
  if (v49)
  {
    *(a1 + 600) = v49;
    operator delete(v49);
  }

  AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::LinkInfo::~LinkInfo(a1 + 8);
  return a1;
}

void AGX::ProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserObjectArgumentTableLayout,true,true,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::ObjectDriverArgumentTable<AGX::HAL300::Classes>>>::~ProgramVariant(unint64_t a1)
{
  AGX::ProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserObjectArgumentTableLayout,true,true,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::ObjectDriverArgumentTable<AGX::HAL300::Classes>>>::~ProgramVariant(a1);

  JUMPOUT(0x29ED520D0);
}

void AGX::MeshProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes>::~MeshProgramVariant(unint64_t a1)
{
  AGX::MeshProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes>::~MeshProgramVariant(a1);

  JUMPOUT(0x29ED520D0);
}

unint64_t AGX::MeshProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes>::~MeshProgramVariant(unint64_t a1)
{
  *a1 = &unk_2A23F76B0;
  if ((*(a1 + 2004) & 1) == 0 && *(a1 + 3952))
  {
    v2 = (a1 + 3928);
    v3 = *(a1 + 3960);
    v4 = *(v3 + 16);
    v12[0] = MEMORY[0x29EDCA5F8];
    v12[1] = 3221225472;
    v12[2] = ___ZN3AGX4HeapILb1EE14deallocateImplERKNS1_10AllocationE_block_invoke;
    v12[3] = &__block_descriptor_48_e5_v8__0l;
    v12[4] = v3;
    v12[5] = a1 + 3928;
    dispatch_sync(v4, v12);
    *(a1 + 3953) = 0u;
    *v2 = 0u;
    *(a1 + 3944) = 0u;
  }

  *(a1 + 4104) = 0;
  std::mutex::~mutex((a1 + 4112));
  v5 = *(a1 + 4080);
  if (v5)
  {
    do
    {
      v8 = *v5;
      if (*(v5 + 39) < 0)
      {
        operator delete(v5[2]);
      }

      operator delete(v5);
      v5 = v8;
    }

    while (v8);
  }

  v6 = *(a1 + 4064);
  *(a1 + 4064) = 0;
  if (v6)
  {
    operator delete(v6);
  }

  if (*(a1 + 4023) < 0)
  {
    operator delete(*(a1 + 4000));
    if ((*(a1 + 3999) & 0x80000000) == 0)
    {
LABEL_9:
      v7 = *(a1 + 3848);
      if (!v7)
      {
        goto LABEL_16;
      }

      goto LABEL_22;
    }
  }

  else if ((*(a1 + 3999) & 0x80000000) == 0)
  {
    goto LABEL_9;
  }

  operator delete(*(a1 + 3976));
  v7 = *(a1 + 3848);
  if (!v7)
  {
    goto LABEL_16;
  }

  do
  {
LABEL_22:
    v11 = *v7;
    if (*(v7 + 39) < 0)
    {
      operator delete(v7[2]);
    }

    operator delete(v7);
    v7 = v11;
  }

  while (v11);
LABEL_16:
  v9 = *(a1 + 3832);
  *(a1 + 3832) = 0;
  if (v9)
  {
    operator delete(v9);
  }

  AGX::ProgramVariantESLState<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserVertexArgumentTableLayout,true,8ul>::~ProgramVariantESLState((a1 + 2392));

  return AGX::ProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserMeshArgumentTableLayout,true,true,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::MeshDriverArgumentTable<AGX::HAL300::Classes>>>::~ProgramVariant(a1);
}

void sub_29CDD285C(_Unwind_Exception *a1)
{
  std::mutex::~mutex((v1 + 4112));
  std::unordered_map<std::string,objc_object  {objcproto11MTLFunction}*>::~unordered_map[abi:nn200100](v1 + 4064);
  AGX::FragmentProgramVaryings::~FragmentProgramVaryings((v1 + 3976));
  AGX::HAL300::MeshProgramVariantESLState::~MeshProgramVariantESLState((v1 + 2392));
  AGX::ProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserMeshArgumentTableLayout,true,true,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::MeshDriverArgumentTable<AGX::HAL300::Classes>>>::~ProgramVariant(v1);
  _Unwind_Resume(a1);
}

void AGX::HAL300::MeshProgramVariantESLState::~MeshProgramVariantESLState(AGX::HAL300::MeshProgramVariantESLState *this)
{
  v2 = *(this + 182);
  if (v2)
  {
    do
    {
      v4 = *v2;
      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

      operator delete(v2);
      v2 = v4;
    }

    while (v4);
  }

  v3 = *(this + 180);
  *(this + 180) = 0;
  if (v3)
  {
    operator delete(v3);
  }

  AGX::ProgramVariantESLState<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserVertexArgumentTableLayout,true,8ul>::~ProgramVariantESLState(this);
}

unint64_t AGX::ProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserMeshArgumentTableLayout,true,true,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::MeshDriverArgumentTable<AGX::HAL300::Classes>>>::~ProgramVariant(unint64_t a1)
{
  *a1 = &unk_2A23F7910;
  if (*(a1 + 1592))
  {
    v2 = *(a1 + 1600);
    v3 = *(v2 + 16);
    v51 = MEMORY[0x29EDCA5F8];
    v52 = 3221225472;
    v53 = ___ZN3AGX4HeapILb1EE14deallocateImplERKNS1_10AllocationE_block_invoke;
    v54 = &__block_descriptor_48_e5_v8__0l;
    v55 = v2;
    v56 = a1 + 1568;
    dispatch_sync(v3, &v51);
    *(a1 + 1593) = 0u;
    *(a1 + 1584) = 0u;
    *(a1 + 1568) = 0u;
  }

  if (*(a1 + 1640))
  {
    v4 = *(a1 + 1648);
    v5 = *(v4 + 16);
    v51 = MEMORY[0x29EDCA5F8];
    v52 = 3221225472;
    v53 = ___ZN3AGX4HeapILb1EE14deallocateImplERKNS1_10AllocationE_block_invoke;
    v54 = &__block_descriptor_48_e5_v8__0l;
    v55 = v4;
    v56 = a1 + 1616;
    dispatch_sync(v5, &v51);
    *(a1 + 1641) = 0u;
    *(a1 + 1632) = 0u;
    *(a1 + 1616) = 0u;
  }

  if (*(a1 + 1688))
  {
    v6 = *(a1 + 1696);
    v7 = *(v6 + 16);
    v51 = MEMORY[0x29EDCA5F8];
    v52 = 3221225472;
    v53 = ___ZN3AGX4HeapILb1EE14deallocateImplERKNS1_10AllocationE_block_invoke;
    v54 = &__block_descriptor_48_e5_v8__0l;
    v55 = v6;
    v56 = a1 + 1664;
    dispatch_sync(v7, &v51);
    *(a1 + 1689) = 0u;
    *(a1 + 1680) = 0u;
    *(a1 + 1664) = 0u;
  }

  if (*(a1 + 1736))
  {
    v8 = *(a1 + 1744);
    v9 = *(v8 + 16);
    v51 = MEMORY[0x29EDCA5F8];
    v52 = 3221225472;
    v53 = ___ZN3AGX4HeapILb1EE14deallocateImplERKNS1_10AllocationE_block_invoke;
    v54 = &__block_descriptor_48_e5_v8__0l;
    v55 = v8;
    v56 = a1 + 1712;
    dispatch_sync(v9, &v51);
    *(a1 + 1737) = 0u;
    *(a1 + 1728) = 0u;
    *(a1 + 1712) = 0u;
  }

  v10 = *(a1 + 584);
  if (v10)
  {
    v11 = AGX::ProgramBindingRemap<AGX::HAL300::Encoders,AGX::HAL300::Classes>::~ProgramBindingRemap(v10);
    MEMORY[0x29ED520D0](v11, 0x1030C40704B4075);
  }

  v12 = *(a1 + 576);
  if (v12)
  {
    ProgramBindingsAndDMAList::~ProgramBindingsAndDMAList(v12);
    MEMORY[0x29ED520D0]();
  }

  v13 = *(a1 + 616);
  if (v13)
  {
    AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::unregisterVariantEventInfo(v13, a1);
  }

  if (*(a1 + 2391) < 0)
  {
    operator delete(*(a1 + 2368));
  }

  v14 = *(a1 + 2344);
  if (v14)
  {
    *(a1 + 2352) = v14;
    operator delete(v14);
  }

  v15 = *(a1 + 2320);
  if (v15)
  {
    v16 = *(a1 + 2328);
    v17 = *(a1 + 2320);
    if (v16 != v15)
    {
      do
      {
        v18 = *(v16 - 1);
        v16 -= 3;
        if (v18 < 0)
        {
          operator delete(*v16);
        }
      }

      while (v16 != v15);
      v17 = *(a1 + 2320);
    }

    *(a1 + 2328) = v15;
    operator delete(v17);
  }

  std::__tree<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval,AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::IntervalRangeComparator,std::allocator<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval>>::destroy(*(a1 + 2208));
  v19 = *(a1 + 2168);
  if (v19)
  {
    v20 = *(a1 + 2176);
    v21 = *(a1 + 2168);
    if (v20 != v19)
    {
      do
      {
        v22 = *(v20 - 8);
        if (v22 && !atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v22->__on_zero_shared)(v22);
          std::__shared_weak_count::__release_weak(v22);
        }

        v20 -= 16;
      }

      while (v20 != v19);
      v21 = *(a1 + 2168);
    }

    *(a1 + 2176) = v19;
    operator delete(v21);
  }

  v23 = *(a1 + 2144);
  if (v23)
  {
    *(a1 + 2152) = v23;
    operator delete(v23);
  }

  v24 = *(a1 + 2120);
  if (v24)
  {
    *(a1 + 2128) = v24;
    operator delete(v24);
  }

  if (*(a1 + 2031) < 0)
  {
    operator delete(*(a1 + 2008));
    if ((*(a1 + 1527) & 0x80000000) == 0)
    {
LABEL_42:
      if ((*(a1 + 1495) & 0x80000000) == 0)
      {
        goto LABEL_43;
      }

      goto LABEL_98;
    }
  }

  else if ((*(a1 + 1527) & 0x80000000) == 0)
  {
    goto LABEL_42;
  }

  operator delete(*(a1 + 1504));
  if ((*(a1 + 1495) & 0x80000000) == 0)
  {
LABEL_43:
    if ((*(a1 + 1471) & 0x80000000) == 0)
    {
      goto LABEL_44;
    }

LABEL_99:
    operator delete(*(a1 + 1448));
    if ((*(a1 + 1447) & 0x80000000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_100;
  }

LABEL_98:
  operator delete(*(a1 + 1472));
  if (*(a1 + 1471) < 0)
  {
    goto LABEL_99;
  }

LABEL_44:
  if ((*(a1 + 1447) & 0x80000000) == 0)
  {
    goto LABEL_45;
  }

LABEL_100:
  operator delete(*(a1 + 1424));
LABEL_45:
  std::__tree<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval,AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::IntervalRangeComparator,std::allocator<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval>>::destroy(*(a1 + 1152));
  v25 = *(a1 + 1120);
  if (v25)
  {
    *(a1 + 1128) = v25;
    operator delete(v25);
  }

  v26 = *(a1 + 1080);
  if (v26)
  {
    *(a1 + 1088) = v26;
    operator delete(v26);
  }

  v27 = *(a1 + 1056);
  if (v27)
  {
    v28 = *(a1 + 1064);
    v29 = *(a1 + 1056);
    if (v28 != v27)
    {
      do
      {
        v30 = *(v28 - 24);
        if (v30)
        {
          *(v28 - 16) = v30;
          operator delete(v30);
        }

        v28 -= 32;
      }

      while (v28 != v27);
      v29 = *(a1 + 1056);
    }

    *(a1 + 1064) = v27;
    operator delete(v29);
  }

  v31 = *(a1 + 1032);
  if (v31)
  {
    *(a1 + 1040) = v31;
    operator delete(v31);
  }

  v32 = *(a1 + 936);
  if (v32)
  {
    *(a1 + 944) = v32;
    operator delete(v32);
  }

  v33 = *(a1 + 912);
  if (v33)
  {
    *(a1 + 920) = v33;
    operator delete(v33);
  }

  v34 = *(a1 + 888);
  if (v34)
  {
    *(a1 + 896) = v34;
    operator delete(v34);
  }

  v35 = *(a1 + 864);
  if (v35)
  {
    *(a1 + 872) = v35;
    operator delete(v35);
  }

  v36 = *(a1 + 824);
  if (v36)
  {
    *(a1 + 832) = v36;
    operator delete(v36);
  }

  v37 = *(a1 + 800);
  if (v37)
  {
    v38 = *(a1 + 808);
    v39 = *(a1 + 800);
    if (v38 != v37)
    {
      do
      {
        v40 = *(v38 - 24);
        if (v40)
        {
          *(v38 - 16) = v40;
          operator delete(v40);
        }

        v38 -= 32;
      }

      while (v38 != v37);
      v39 = *(a1 + 800);
    }

    *(a1 + 808) = v37;
    operator delete(v39);
  }

  v41 = *(a1 + 776);
  if (v41)
  {
    *(a1 + 784) = v41;
    operator delete(v41);
  }

  v42 = *(a1 + 752);
  if (v42)
  {
    *(a1 + 760) = v42;
    operator delete(v42);
  }

  v43 = *(a1 + 712);
  if (v43)
  {
    *(a1 + 720) = v43;
    operator delete(v43);
  }

  v44 = *(a1 + 688);
  if (v44)
  {
    v45 = *(a1 + 696);
    v46 = *(a1 + 688);
    if (v45 != v44)
    {
      do
      {
        v47 = *(v45 - 24);
        if (v47)
        {
          *(v45 - 16) = v47;
          operator delete(v47);
        }

        v45 -= 32;
      }

      while (v45 != v44);
      v46 = *(a1 + 688);
    }

    *(a1 + 696) = v44;
    operator delete(v46);
  }

  v48 = *(a1 + 664);
  if (v48)
  {
    *(a1 + 672) = v48;
    operator delete(v48);
  }

  v49 = *(a1 + 592);
  if (v49)
  {
    *(a1 + 600) = v49;
    operator delete(v49);
  }

  AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::LinkInfo::~LinkInfo(a1 + 8);
  return a1;
}

void AGX::ProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserMeshArgumentTableLayout,true,true,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::MeshDriverArgumentTable<AGX::HAL300::Classes>>>::~ProgramVariant(unint64_t a1)
{
  AGX::ProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserMeshArgumentTableLayout,true,true,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::MeshDriverArgumentTable<AGX::HAL300::Classes>>>::~ProgramVariant(a1);

  JUMPOUT(0x29ED520D0);
}

void AGX::FragmentProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes>::~FragmentProgramVariant(unint64_t a1)
{
  AGX::FragmentProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes>::~FragmentProgramVariant(a1);

  JUMPOUT(0x29ED520D0);
}

unint64_t AGX::FragmentProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes>::~FragmentProgramVariant(unint64_t a1)
{
  *a1 = &unk_2A23F76D0;

  *(a1 + 4096) = 0;
  std::mutex::~mutex((a1 + 4104));
  v2 = *(a1 + 3960);
  if (v2)
  {
    do
    {
      v7 = *v2;
      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

      operator delete(v2);
      v2 = v7;
    }

    while (v7);
  }

  v3 = *(a1 + 3944);
  *(a1 + 3944) = 0;
  if (v3)
  {
    operator delete(v3);
  }

  if (*(a1 + 3903) < 0)
  {
    operator delete(*(a1 + 3880));
    if ((*(a1 + 3879) & 0x80000000) == 0)
    {
LABEL_6:
      v4 = *(a1 + 3824);
      if (!v4)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

  else if ((*(a1 + 3879) & 0x80000000) == 0)
  {
    goto LABEL_6;
  }

  operator delete(*(a1 + 3856));
  v4 = *(a1 + 3824);
  if (v4)
  {
LABEL_7:
    v5 = ProgramVaryingTable<AGX::HAL300::Encoders,AGX::HAL300::Classes>::~ProgramVaryingTable(v4);
    MEMORY[0x29ED520D0](v5, 0x10F0C4099BF1763);
  }

LABEL_8:
  AGX::ProgramVariantESLState<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserFragmentArgumentTableLayout,true,9ul>::~ProgramVariantESLState((a1 + 2392));

  return AGX::ProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserFragmentArgumentTableLayout,true,true,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::FragmentDriverArgumentTable<AGX::HAL300::Classes>>>::~ProgramVariant(a1);
}

void sub_29CDD3024(_Unwind_Exception *a1)
{
  std::mutex::~mutex((v1 + 4104));
  std::unordered_map<std::string,objc_object  {objcproto11MTLFunction}*>::~unordered_map[abi:nn200100](v1 + 3944);
  AGX::FragmentProgramVaryings::~FragmentProgramVaryings((v1 + 3856));
  AGX::HAL300::FragmentProgramVariantESLState::~FragmentProgramVariantESLState((v1 + 2392));
  AGX::ProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserFragmentArgumentTableLayout,true,true,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::FragmentDriverArgumentTable<AGX::HAL300::Classes>>>::~ProgramVariant(v1);
  _Unwind_Resume(a1);
}

unint64_t AGX::ProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserFragmentArgumentTableLayout,true,true,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::FragmentDriverArgumentTable<AGX::HAL300::Classes>>>::~ProgramVariant(unint64_t a1)
{
  *a1 = &unk_2A23F7930;
  if (*(a1 + 1592))
  {
    v2 = *(a1 + 1600);
    v3 = *(v2 + 16);
    v51 = MEMORY[0x29EDCA5F8];
    v52 = 3221225472;
    v53 = ___ZN3AGX4HeapILb1EE14deallocateImplERKNS1_10AllocationE_block_invoke;
    v54 = &__block_descriptor_48_e5_v8__0l;
    v55 = v2;
    v56 = a1 + 1568;
    dispatch_sync(v3, &v51);
    *(a1 + 1593) = 0u;
    *(a1 + 1584) = 0u;
    *(a1 + 1568) = 0u;
  }

  if (*(a1 + 1640))
  {
    v4 = *(a1 + 1648);
    v5 = *(v4 + 16);
    v51 = MEMORY[0x29EDCA5F8];
    v52 = 3221225472;
    v53 = ___ZN3AGX4HeapILb1EE14deallocateImplERKNS1_10AllocationE_block_invoke;
    v54 = &__block_descriptor_48_e5_v8__0l;
    v55 = v4;
    v56 = a1 + 1616;
    dispatch_sync(v5, &v51);
    *(a1 + 1641) = 0u;
    *(a1 + 1632) = 0u;
    *(a1 + 1616) = 0u;
  }

  if (*(a1 + 1688))
  {
    v6 = *(a1 + 1696);
    v7 = *(v6 + 16);
    v51 = MEMORY[0x29EDCA5F8];
    v52 = 3221225472;
    v53 = ___ZN3AGX4HeapILb1EE14deallocateImplERKNS1_10AllocationE_block_invoke;
    v54 = &__block_descriptor_48_e5_v8__0l;
    v55 = v6;
    v56 = a1 + 1664;
    dispatch_sync(v7, &v51);
    *(a1 + 1689) = 0u;
    *(a1 + 1680) = 0u;
    *(a1 + 1664) = 0u;
  }

  if (*(a1 + 1736))
  {
    v8 = *(a1 + 1744);
    v9 = *(v8 + 16);
    v51 = MEMORY[0x29EDCA5F8];
    v52 = 3221225472;
    v53 = ___ZN3AGX4HeapILb1EE14deallocateImplERKNS1_10AllocationE_block_invoke;
    v54 = &__block_descriptor_48_e5_v8__0l;
    v55 = v8;
    v56 = a1 + 1712;
    dispatch_sync(v9, &v51);
    *(a1 + 1737) = 0u;
    *(a1 + 1728) = 0u;
    *(a1 + 1712) = 0u;
  }

  v10 = *(a1 + 584);
  if (v10)
  {
    v11 = AGX::ProgramBindingRemap<AGX::HAL300::Encoders,AGX::HAL300::Classes>::~ProgramBindingRemap(v10);
    MEMORY[0x29ED520D0](v11, 0x1030C40704B4075);
  }

  v12 = *(a1 + 576);
  if (v12)
  {
    ProgramBindingsAndDMAList::~ProgramBindingsAndDMAList(v12);
    MEMORY[0x29ED520D0]();
  }

  v13 = *(a1 + 616);
  if (v13)
  {
    AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::unregisterVariantEventInfo(v13, a1);
  }

  if (*(a1 + 2391) < 0)
  {
    operator delete(*(a1 + 2368));
  }

  v14 = *(a1 + 2344);
  if (v14)
  {
    *(a1 + 2352) = v14;
    operator delete(v14);
  }

  v15 = *(a1 + 2320);
  if (v15)
  {
    v16 = *(a1 + 2328);
    v17 = *(a1 + 2320);
    if (v16 != v15)
    {
      do
      {
        v18 = *(v16 - 1);
        v16 -= 3;
        if (v18 < 0)
        {
          operator delete(*v16);
        }
      }

      while (v16 != v15);
      v17 = *(a1 + 2320);
    }

    *(a1 + 2328) = v15;
    operator delete(v17);
  }

  std::__tree<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval,AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::IntervalRangeComparator,std::allocator<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval>>::destroy(*(a1 + 2208));
  v19 = *(a1 + 2168);
  if (v19)
  {
    v20 = *(a1 + 2176);
    v21 = *(a1 + 2168);
    if (v20 != v19)
    {
      do
      {
        v22 = *(v20 - 8);
        if (v22 && !atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v22->__on_zero_shared)(v22);
          std::__shared_weak_count::__release_weak(v22);
        }

        v20 -= 16;
      }

      while (v20 != v19);
      v21 = *(a1 + 2168);
    }

    *(a1 + 2176) = v19;
    operator delete(v21);
  }

  v23 = *(a1 + 2144);
  if (v23)
  {
    *(a1 + 2152) = v23;
    operator delete(v23);
  }

  v24 = *(a1 + 2120);
  if (v24)
  {
    *(a1 + 2128) = v24;
    operator delete(v24);
  }

  if (*(a1 + 2031) < 0)
  {
    operator delete(*(a1 + 2008));
    if ((*(a1 + 1527) & 0x80000000) == 0)
    {
LABEL_42:
      if ((*(a1 + 1495) & 0x80000000) == 0)
      {
        goto LABEL_43;
      }

      goto LABEL_98;
    }
  }

  else if ((*(a1 + 1527) & 0x80000000) == 0)
  {
    goto LABEL_42;
  }

  operator delete(*(a1 + 1504));
  if ((*(a1 + 1495) & 0x80000000) == 0)
  {
LABEL_43:
    if ((*(a1 + 1471) & 0x80000000) == 0)
    {
      goto LABEL_44;
    }

LABEL_99:
    operator delete(*(a1 + 1448));
    if ((*(a1 + 1447) & 0x80000000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_100;
  }

LABEL_98:
  operator delete(*(a1 + 1472));
  if (*(a1 + 1471) < 0)
  {
    goto LABEL_99;
  }

LABEL_44:
  if ((*(a1 + 1447) & 0x80000000) == 0)
  {
    goto LABEL_45;
  }

LABEL_100:
  operator delete(*(a1 + 1424));
LABEL_45:
  std::__tree<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval,AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::IntervalRangeComparator,std::allocator<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval>>::destroy(*(a1 + 1152));
  v25 = *(a1 + 1120);
  if (v25)
  {
    *(a1 + 1128) = v25;
    operator delete(v25);
  }

  v26 = *(a1 + 1080);
  if (v26)
  {
    *(a1 + 1088) = v26;
    operator delete(v26);
  }

  v27 = *(a1 + 1056);
  if (v27)
  {
    v28 = *(a1 + 1064);
    v29 = *(a1 + 1056);
    if (v28 != v27)
    {
      do
      {
        v30 = *(v28 - 24);
        if (v30)
        {
          *(v28 - 16) = v30;
          operator delete(v30);
        }

        v28 -= 32;
      }

      while (v28 != v27);
      v29 = *(a1 + 1056);
    }

    *(a1 + 1064) = v27;
    operator delete(v29);
  }

  v31 = *(a1 + 1032);
  if (v31)
  {
    *(a1 + 1040) = v31;
    operator delete(v31);
  }

  v32 = *(a1 + 936);
  if (v32)
  {
    *(a1 + 944) = v32;
    operator delete(v32);
  }

  v33 = *(a1 + 912);
  if (v33)
  {
    *(a1 + 920) = v33;
    operator delete(v33);
  }

  v34 = *(a1 + 888);
  if (v34)
  {
    *(a1 + 896) = v34;
    operator delete(v34);
  }

  v35 = *(a1 + 864);
  if (v35)
  {
    *(a1 + 872) = v35;
    operator delete(v35);
  }

  v36 = *(a1 + 824);
  if (v36)
  {
    *(a1 + 832) = v36;
    operator delete(v36);
  }

  v37 = *(a1 + 800);
  if (v37)
  {
    v38 = *(a1 + 808);
    v39 = *(a1 + 800);
    if (v38 != v37)
    {
      do
      {
        v40 = *(v38 - 24);
        if (v40)
        {
          *(v38 - 16) = v40;
          operator delete(v40);
        }

        v38 -= 32;
      }

      while (v38 != v37);
      v39 = *(a1 + 800);
    }

    *(a1 + 808) = v37;
    operator delete(v39);
  }

  v41 = *(a1 + 776);
  if (v41)
  {
    *(a1 + 784) = v41;
    operator delete(v41);
  }

  v42 = *(a1 + 752);
  if (v42)
  {
    *(a1 + 760) = v42;
    operator delete(v42);
  }

  v43 = *(a1 + 712);
  if (v43)
  {
    *(a1 + 720) = v43;
    operator delete(v43);
  }

  v44 = *(a1 + 688);
  if (v44)
  {
    v45 = *(a1 + 696);
    v46 = *(a1 + 688);
    if (v45 != v44)
    {
      do
      {
        v47 = *(v45 - 24);
        if (v47)
        {
          *(v45 - 16) = v47;
          operator delete(v47);
        }

        v45 -= 32;
      }

      while (v45 != v44);
      v46 = *(a1 + 688);
    }

    *(a1 + 696) = v44;
    operator delete(v46);
  }

  v48 = *(a1 + 664);
  if (v48)
  {
    *(a1 + 672) = v48;
    operator delete(v48);
  }

  v49 = *(a1 + 592);
  if (v49)
  {
    *(a1 + 600) = v49;
    operator delete(v49);
  }

  AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::LinkInfo::~LinkInfo(a1 + 8);
  return a1;
}

void AGX::HAL300::FragmentProgramVariantESLState::~FragmentProgramVariantESLState(AGX::HAL300::FragmentProgramVariantESLState *this)
{
  v2 = this;
  v3 = *(this + 179);
  if (v3)
  {
    v4 = v2;
    v5 = ProgramVaryingTable<AGX::HAL300::Encoders,AGX::HAL300::Classes>::~ProgramVaryingTable(v3);
    MEMORY[0x29ED520D0](v5, 0x10F0C4099BF1763);
    v2 = v4;
    v1 = vars8;
  }

  AGX::ProgramVariantESLState<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserFragmentArgumentTableLayout,true,9ul>::~ProgramVariantESLState(v2);
}

void AGX::ProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserFragmentArgumentTableLayout,true,true,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::FragmentDriverArgumentTable<AGX::HAL300::Classes>>>::~ProgramVariant(unint64_t a1)
{
  AGX::ProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserFragmentArgumentTableLayout,true,true,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::FragmentDriverArgumentTable<AGX::HAL300::Classes>>>::~ProgramVariant(a1);

  JUMPOUT(0x29ED520D0);
}

void AGX::TileProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes>::~TileProgramVariant(unint64_t a1)
{
  AGX::TileProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes>::~TileProgramVariant(a1);

  JUMPOUT(0x29ED520D0);
}

unint64_t AGX::TileProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes>::~TileProgramVariant(unint64_t a1)
{
  *a1 = &unk_2A23F76F0;

  *(a1 + 3888) = 0;
  std::mutex::~mutex((a1 + 3896));
  v2 = *(a1 + 3864);
  if (v2)
  {
    do
    {
      v7 = *v2;
      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

      operator delete(v2);
      v2 = v7;
    }

    while (v7);
  }

  v3 = *(a1 + 3848);
  *(a1 + 3848) = 0;
  if (v3)
  {
    operator delete(v3);
  }

  v4 = *(a1 + 3824);
  if (v4)
  {
    v5 = ProgramVaryingTable<AGX::HAL300::Encoders,AGX::HAL300::Classes>::~ProgramVaryingTable(v4);
    MEMORY[0x29ED520D0](v5, 0x10F0C4099BF1763);
  }

  AGX::ProgramVariantESLState<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserFragmentArgumentTableLayout,true,9ul>::~ProgramVariantESLState((a1 + 2392));

  return AGX::ProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserTileArgumentTableLayout,true,true,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::TileDriverArgumentTable<AGX::HAL300::Classes>>>::~ProgramVariant(a1);
}

void sub_29CDD3794(_Unwind_Exception *a1)
{
  std::mutex::~mutex((v1 + 3896));
  std::unordered_map<std::string,objc_object  {objcproto11MTLFunction}*>::~unordered_map[abi:nn200100](v1 + 3848);
  AGX::HAL300::FragmentProgramVariantESLState::~FragmentProgramVariantESLState((v1 + 2392));
  AGX::ProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserTileArgumentTableLayout,true,true,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::TileDriverArgumentTable<AGX::HAL300::Classes>>>::~ProgramVariant(v1);
  _Unwind_Resume(a1);
}

unint64_t AGX::ProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserTileArgumentTableLayout,true,true,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::TileDriverArgumentTable<AGX::HAL300::Classes>>>::~ProgramVariant(unint64_t a1)
{
  *a1 = &unk_2A23F7950;
  if (*(a1 + 1592))
  {
    v2 = *(a1 + 1600);
    v3 = *(v2 + 16);
    v51 = MEMORY[0x29EDCA5F8];
    v52 = 3221225472;
    v53 = ___ZN3AGX4HeapILb1EE14deallocateImplERKNS1_10AllocationE_block_invoke;
    v54 = &__block_descriptor_48_e5_v8__0l;
    v55 = v2;
    v56 = a1 + 1568;
    dispatch_sync(v3, &v51);
    *(a1 + 1593) = 0u;
    *(a1 + 1584) = 0u;
    *(a1 + 1568) = 0u;
  }

  if (*(a1 + 1640))
  {
    v4 = *(a1 + 1648);
    v5 = *(v4 + 16);
    v51 = MEMORY[0x29EDCA5F8];
    v52 = 3221225472;
    v53 = ___ZN3AGX4HeapILb1EE14deallocateImplERKNS1_10AllocationE_block_invoke;
    v54 = &__block_descriptor_48_e5_v8__0l;
    v55 = v4;
    v56 = a1 + 1616;
    dispatch_sync(v5, &v51);
    *(a1 + 1641) = 0u;
    *(a1 + 1632) = 0u;
    *(a1 + 1616) = 0u;
  }

  if (*(a1 + 1688))
  {
    v6 = *(a1 + 1696);
    v7 = *(v6 + 16);
    v51 = MEMORY[0x29EDCA5F8];
    v52 = 3221225472;
    v53 = ___ZN3AGX4HeapILb1EE14deallocateImplERKNS1_10AllocationE_block_invoke;
    v54 = &__block_descriptor_48_e5_v8__0l;
    v55 = v6;
    v56 = a1 + 1664;
    dispatch_sync(v7, &v51);
    *(a1 + 1689) = 0u;
    *(a1 + 1680) = 0u;
    *(a1 + 1664) = 0u;
  }

  if (*(a1 + 1736))
  {
    v8 = *(a1 + 1744);
    v9 = *(v8 + 16);
    v51 = MEMORY[0x29EDCA5F8];
    v52 = 3221225472;
    v53 = ___ZN3AGX4HeapILb1EE14deallocateImplERKNS1_10AllocationE_block_invoke;
    v54 = &__block_descriptor_48_e5_v8__0l;
    v55 = v8;
    v56 = a1 + 1712;
    dispatch_sync(v9, &v51);
    *(a1 + 1737) = 0u;
    *(a1 + 1728) = 0u;
    *(a1 + 1712) = 0u;
  }

  v10 = *(a1 + 584);
  if (v10)
  {
    v11 = AGX::ProgramBindingRemap<AGX::HAL300::Encoders,AGX::HAL300::Classes>::~ProgramBindingRemap(v10);
    MEMORY[0x29ED520D0](v11, 0x1030C40704B4075);
  }

  v12 = *(a1 + 576);
  if (v12)
  {
    ProgramBindingsAndDMAList::~ProgramBindingsAndDMAList(v12);
    MEMORY[0x29ED520D0]();
  }

  v13 = *(a1 + 616);
  if (v13)
  {
    AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::unregisterVariantEventInfo(v13, a1);
  }

  if (*(a1 + 2391) < 0)
  {
    operator delete(*(a1 + 2368));
  }

  v14 = *(a1 + 2344);
  if (v14)
  {
    *(a1 + 2352) = v14;
    operator delete(v14);
  }

  v15 = *(a1 + 2320);
  if (v15)
  {
    v16 = *(a1 + 2328);
    v17 = *(a1 + 2320);
    if (v16 != v15)
    {
      do
      {
        v18 = *(v16 - 1);
        v16 -= 3;
        if (v18 < 0)
        {
          operator delete(*v16);
        }
      }

      while (v16 != v15);
      v17 = *(a1 + 2320);
    }

    *(a1 + 2328) = v15;
    operator delete(v17);
  }

  std::__tree<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval,AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::IntervalRangeComparator,std::allocator<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval>>::destroy(*(a1 + 2208));
  v19 = *(a1 + 2168);
  if (v19)
  {
    v20 = *(a1 + 2176);
    v21 = *(a1 + 2168);
    if (v20 != v19)
    {
      do
      {
        v22 = *(v20 - 8);
        if (v22 && !atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v22->__on_zero_shared)(v22);
          std::__shared_weak_count::__release_weak(v22);
        }

        v20 -= 16;
      }

      while (v20 != v19);
      v21 = *(a1 + 2168);
    }

    *(a1 + 2176) = v19;
    operator delete(v21);
  }

  v23 = *(a1 + 2144);
  if (v23)
  {
    *(a1 + 2152) = v23;
    operator delete(v23);
  }

  v24 = *(a1 + 2120);
  if (v24)
  {
    *(a1 + 2128) = v24;
    operator delete(v24);
  }

  if (*(a1 + 2031) < 0)
  {
    operator delete(*(a1 + 2008));
    if ((*(a1 + 1527) & 0x80000000) == 0)
    {
LABEL_42:
      if ((*(a1 + 1495) & 0x80000000) == 0)
      {
        goto LABEL_43;
      }

      goto LABEL_98;
    }
  }

  else if ((*(a1 + 1527) & 0x80000000) == 0)
  {
    goto LABEL_42;
  }

  operator delete(*(a1 + 1504));
  if ((*(a1 + 1495) & 0x80000000) == 0)
  {
LABEL_43:
    if ((*(a1 + 1471) & 0x80000000) == 0)
    {
      goto LABEL_44;
    }

LABEL_99:
    operator delete(*(a1 + 1448));
    if ((*(a1 + 1447) & 0x80000000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_100;
  }

LABEL_98:
  operator delete(*(a1 + 1472));
  if (*(a1 + 1471) < 0)
  {
    goto LABEL_99;
  }

LABEL_44:
  if ((*(a1 + 1447) & 0x80000000) == 0)
  {
    goto LABEL_45;
  }

LABEL_100:
  operator delete(*(a1 + 1424));
LABEL_45:
  std::__tree<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval,AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::IntervalRangeComparator,std::allocator<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval>>::destroy(*(a1 + 1152));
  v25 = *(a1 + 1120);
  if (v25)
  {
    *(a1 + 1128) = v25;
    operator delete(v25);
  }

  v26 = *(a1 + 1080);
  if (v26)
  {
    *(a1 + 1088) = v26;
    operator delete(v26);
  }

  v27 = *(a1 + 1056);
  if (v27)
  {
    v28 = *(a1 + 1064);
    v29 = *(a1 + 1056);
    if (v28 != v27)
    {
      do
      {
        v30 = *(v28 - 24);
        if (v30)
        {
          *(v28 - 16) = v30;
          operator delete(v30);
        }

        v28 -= 32;
      }

      while (v28 != v27);
      v29 = *(a1 + 1056);
    }

    *(a1 + 1064) = v27;
    operator delete(v29);
  }

  v31 = *(a1 + 1032);
  if (v31)
  {
    *(a1 + 1040) = v31;
    operator delete(v31);
  }

  v32 = *(a1 + 936);
  if (v32)
  {
    *(a1 + 944) = v32;
    operator delete(v32);
  }

  v33 = *(a1 + 912);
  if (v33)
  {
    *(a1 + 920) = v33;
    operator delete(v33);
  }

  v34 = *(a1 + 888);
  if (v34)
  {
    *(a1 + 896) = v34;
    operator delete(v34);
  }

  v35 = *(a1 + 864);
  if (v35)
  {
    *(a1 + 872) = v35;
    operator delete(v35);
  }

  v36 = *(a1 + 824);
  if (v36)
  {
    *(a1 + 832) = v36;
    operator delete(v36);
  }

  v37 = *(a1 + 800);
  if (v37)
  {
    v38 = *(a1 + 808);
    v39 = *(a1 + 800);
    if (v38 != v37)
    {
      do
      {
        v40 = *(v38 - 24);
        if (v40)
        {
          *(v38 - 16) = v40;
          operator delete(v40);
        }

        v38 -= 32;
      }

      while (v38 != v37);
      v39 = *(a1 + 800);
    }

    *(a1 + 808) = v37;
    operator delete(v39);
  }

  v41 = *(a1 + 776);
  if (v41)
  {
    *(a1 + 784) = v41;
    operator delete(v41);
  }

  v42 = *(a1 + 752);
  if (v42)
  {
    *(a1 + 760) = v42;
    operator delete(v42);
  }

  v43 = *(a1 + 712);
  if (v43)
  {
    *(a1 + 720) = v43;
    operator delete(v43);
  }

  v44 = *(a1 + 688);
  if (v44)
  {
    v45 = *(a1 + 696);
    v46 = *(a1 + 688);
    if (v45 != v44)
    {
      do
      {
        v47 = *(v45 - 24);
        if (v47)
        {
          *(v45 - 16) = v47;
          operator delete(v47);
        }

        v45 -= 32;
      }

      while (v45 != v44);
      v46 = *(a1 + 688);
    }

    *(a1 + 696) = v44;
    operator delete(v46);
  }

  v48 = *(a1 + 664);
  if (v48)
  {
    *(a1 + 672) = v48;
    operator delete(v48);
  }

  v49 = *(a1 + 592);
  if (v49)
  {
    *(a1 + 600) = v49;
    operator delete(v49);
  }

  AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::LinkInfo::~LinkInfo(a1 + 8);
  return a1;
}

void AGX::ProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserTileArgumentTableLayout,true,true,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::TileDriverArgumentTable<AGX::HAL300::Classes>>>::~ProgramVariant(unint64_t a1)
{
  AGX::ProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserTileArgumentTableLayout,true,true,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::TileDriverArgumentTable<AGX::HAL300::Classes>>>::~ProgramVariant(a1);

  JUMPOUT(0x29ED520D0);
}

void AGX::ComputeProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes>::~ComputeProgramVariant(unint64_t a1)
{
  AGX::ComputeProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes>::~ComputeProgramVariant(a1);

  JUMPOUT(0x29ED520D0);
}

unint64_t AGX::ComputeProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes>::~ComputeProgramVariant(unint64_t a1)
{
  *a1 = &unk_2A23F7730;

  *(a1 + 4136) = 0;
  std::mutex::~mutex((a1 + 4144));
  v2 = *(a1 + 4112);
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

  v3 = *(a1 + 4096);
  *(a1 + 4096) = 0;
  if (v3)
  {
    operator delete(v3);
  }

  AGX::ProgramVariantESLState<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserVertexArgumentTableLayout,true,8ul>::~ProgramVariantESLState((a1 + 2392));

  return AGX::ProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserComputeArgumentTableLayout,true,true,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::ComputeDriverArgumentTable<AGX::HAL300::Classes>>>::~ProgramVariant(a1);
}

void sub_29CDD3E80(_Unwind_Exception *a1)
{
  std::mutex::~mutex((v1 + 4144));
  std::unordered_map<std::string,objc_object  {objcproto11MTLFunction}*>::~unordered_map[abi:nn200100](v1 + 4096);
  AGX::ProgramVariantESLState<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserVertexArgumentTableLayout,true,8ul>::~ProgramVariantESLState((v1 + 2392));
  AGX::ProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserComputeArgumentTableLayout,true,true,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::ComputeDriverArgumentTable<AGX::HAL300::Classes>>>::~ProgramVariant(v1);
  _Unwind_Resume(a1);
}

unint64_t AGX::ProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserComputeArgumentTableLayout,true,true,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::ComputeDriverArgumentTable<AGX::HAL300::Classes>>>::~ProgramVariant(unint64_t a1)
{
  *a1 = &unk_2A23F7970;
  if (*(a1 + 1592))
  {
    v2 = *(a1 + 1600);
    v3 = *(v2 + 16);
    v51 = MEMORY[0x29EDCA5F8];
    v52 = 3221225472;
    v53 = ___ZN3AGX4HeapILb1EE14deallocateImplERKNS1_10AllocationE_block_invoke;
    v54 = &__block_descriptor_48_e5_v8__0l;
    v55 = v2;
    v56 = a1 + 1568;
    dispatch_sync(v3, &v51);
    *(a1 + 1593) = 0u;
    *(a1 + 1584) = 0u;
    *(a1 + 1568) = 0u;
  }

  if (*(a1 + 1640))
  {
    v4 = *(a1 + 1648);
    v5 = *(v4 + 16);
    v51 = MEMORY[0x29EDCA5F8];
    v52 = 3221225472;
    v53 = ___ZN3AGX4HeapILb1EE14deallocateImplERKNS1_10AllocationE_block_invoke;
    v54 = &__block_descriptor_48_e5_v8__0l;
    v55 = v4;
    v56 = a1 + 1616;
    dispatch_sync(v5, &v51);
    *(a1 + 1641) = 0u;
    *(a1 + 1632) = 0u;
    *(a1 + 1616) = 0u;
  }

  if (*(a1 + 1688))
  {
    v6 = *(a1 + 1696);
    v7 = *(v6 + 16);
    v51 = MEMORY[0x29EDCA5F8];
    v52 = 3221225472;
    v53 = ___ZN3AGX4HeapILb1EE14deallocateImplERKNS1_10AllocationE_block_invoke;
    v54 = &__block_descriptor_48_e5_v8__0l;
    v55 = v6;
    v56 = a1 + 1664;
    dispatch_sync(v7, &v51);
    *(a1 + 1689) = 0u;
    *(a1 + 1680) = 0u;
    *(a1 + 1664) = 0u;
  }

  if (*(a1 + 1736))
  {
    v8 = *(a1 + 1744);
    v9 = *(v8 + 16);
    v51 = MEMORY[0x29EDCA5F8];
    v52 = 3221225472;
    v53 = ___ZN3AGX4HeapILb1EE14deallocateImplERKNS1_10AllocationE_block_invoke;
    v54 = &__block_descriptor_48_e5_v8__0l;
    v55 = v8;
    v56 = a1 + 1712;
    dispatch_sync(v9, &v51);
    *(a1 + 1737) = 0u;
    *(a1 + 1728) = 0u;
    *(a1 + 1712) = 0u;
  }

  v10 = *(a1 + 584);
  if (v10)
  {
    v11 = AGX::ProgramBindingRemap<AGX::HAL300::Encoders,AGX::HAL300::Classes>::~ProgramBindingRemap(v10);
    MEMORY[0x29ED520D0](v11, 0x1030C40704B4075);
  }

  v12 = *(a1 + 576);
  if (v12)
  {
    ProgramBindingsAndDMAList::~ProgramBindingsAndDMAList(v12);
    MEMORY[0x29ED520D0]();
  }

  v13 = *(a1 + 616);
  if (v13)
  {
    AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::unregisterVariantEventInfo(v13, a1);
  }

  if (*(a1 + 2391) < 0)
  {
    operator delete(*(a1 + 2368));
  }

  v14 = *(a1 + 2344);
  if (v14)
  {
    *(a1 + 2352) = v14;
    operator delete(v14);
  }

  v15 = *(a1 + 2320);
  if (v15)
  {
    v16 = *(a1 + 2328);
    v17 = *(a1 + 2320);
    if (v16 != v15)
    {
      do
      {
        v18 = *(v16 - 1);
        v16 -= 3;
        if (v18 < 0)
        {
          operator delete(*v16);
        }
      }

      while (v16 != v15);
      v17 = *(a1 + 2320);
    }

    *(a1 + 2328) = v15;
    operator delete(v17);
  }

  std::__tree<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval,AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::IntervalRangeComparator,std::allocator<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval>>::destroy(*(a1 + 2208));
  v19 = *(a1 + 2168);
  if (v19)
  {
    v20 = *(a1 + 2176);
    v21 = *(a1 + 2168);
    if (v20 != v19)
    {
      do
      {
        v22 = *(v20 - 8);
        if (v22 && !atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v22->__on_zero_shared)(v22);
          std::__shared_weak_count::__release_weak(v22);
        }

        v20 -= 16;
      }

      while (v20 != v19);
      v21 = *(a1 + 2168);
    }

    *(a1 + 2176) = v19;
    operator delete(v21);
  }

  v23 = *(a1 + 2144);
  if (v23)
  {
    *(a1 + 2152) = v23;
    operator delete(v23);
  }

  v24 = *(a1 + 2120);
  if (v24)
  {
    *(a1 + 2128) = v24;
    operator delete(v24);
  }

  if (*(a1 + 2031) < 0)
  {
    operator delete(*(a1 + 2008));
    if ((*(a1 + 1527) & 0x80000000) == 0)
    {
LABEL_42:
      if ((*(a1 + 1495) & 0x80000000) == 0)
      {
        goto LABEL_43;
      }

      goto LABEL_98;
    }
  }

  else if ((*(a1 + 1527) & 0x80000000) == 0)
  {
    goto LABEL_42;
  }

  operator delete(*(a1 + 1504));
  if ((*(a1 + 1495) & 0x80000000) == 0)
  {
LABEL_43:
    if ((*(a1 + 1471) & 0x80000000) == 0)
    {
      goto LABEL_44;
    }

LABEL_99:
    operator delete(*(a1 + 1448));
    if ((*(a1 + 1447) & 0x80000000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_100;
  }

LABEL_98:
  operator delete(*(a1 + 1472));
  if (*(a1 + 1471) < 0)
  {
    goto LABEL_99;
  }

LABEL_44:
  if ((*(a1 + 1447) & 0x80000000) == 0)
  {
    goto LABEL_45;
  }

LABEL_100:
  operator delete(*(a1 + 1424));
LABEL_45:
  std::__tree<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval,AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::IntervalRangeComparator,std::allocator<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval>>::destroy(*(a1 + 1152));
  v25 = *(a1 + 1120);
  if (v25)
  {
    *(a1 + 1128) = v25;
    operator delete(v25);
  }

  v26 = *(a1 + 1080);
  if (v26)
  {
    *(a1 + 1088) = v26;
    operator delete(v26);
  }

  v27 = *(a1 + 1056);
  if (v27)
  {
    v28 = *(a1 + 1064);
    v29 = *(a1 + 1056);
    if (v28 != v27)
    {
      do
      {
        v30 = *(v28 - 24);
        if (v30)
        {
          *(v28 - 16) = v30;
          operator delete(v30);
        }

        v28 -= 32;
      }

      while (v28 != v27);
      v29 = *(a1 + 1056);
    }

    *(a1 + 1064) = v27;
    operator delete(v29);
  }

  v31 = *(a1 + 1032);
  if (v31)
  {
    *(a1 + 1040) = v31;
    operator delete(v31);
  }

  v32 = *(a1 + 936);
  if (v32)
  {
    *(a1 + 944) = v32;
    operator delete(v32);
  }

  v33 = *(a1 + 912);
  if (v33)
  {
    *(a1 + 920) = v33;
    operator delete(v33);
  }

  v34 = *(a1 + 888);
  if (v34)
  {
    *(a1 + 896) = v34;
    operator delete(v34);
  }

  v35 = *(a1 + 864);
  if (v35)
  {
    *(a1 + 872) = v35;
    operator delete(v35);
  }

  v36 = *(a1 + 824);
  if (v36)
  {
    *(a1 + 832) = v36;
    operator delete(v36);
  }

  v37 = *(a1 + 800);
  if (v37)
  {
    v38 = *(a1 + 808);
    v39 = *(a1 + 800);
    if (v38 != v37)
    {
      do
      {
        v40 = *(v38 - 24);
        if (v40)
        {
          *(v38 - 16) = v40;
          operator delete(v40);
        }

        v38 -= 32;
      }

      while (v38 != v37);
      v39 = *(a1 + 800);
    }

    *(a1 + 808) = v37;
    operator delete(v39);
  }

  v41 = *(a1 + 776);
  if (v41)
  {
    *(a1 + 784) = v41;
    operator delete(v41);
  }

  v42 = *(a1 + 752);
  if (v42)
  {
    *(a1 + 760) = v42;
    operator delete(v42);
  }

  v43 = *(a1 + 712);
  if (v43)
  {
    *(a1 + 720) = v43;
    operator delete(v43);
  }

  v44 = *(a1 + 688);
  if (v44)
  {
    v45 = *(a1 + 696);
    v46 = *(a1 + 688);
    if (v45 != v44)
    {
      do
      {
        v47 = *(v45 - 24);
        if (v47)
        {
          *(v45 - 16) = v47;
          operator delete(v47);
        }

        v45 -= 32;
      }

      while (v45 != v44);
      v46 = *(a1 + 688);
    }

    *(a1 + 696) = v44;
    operator delete(v46);
  }

  v48 = *(a1 + 664);
  if (v48)
  {
    *(a1 + 672) = v48;
    operator delete(v48);
  }

  v49 = *(a1 + 592);
  if (v49)
  {
    *(a1 + 600) = v49;
    operator delete(v49);
  }

  AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::LinkInfo::~LinkInfo(a1 + 8);
  return a1;
}

void AGX::ProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserComputeArgumentTableLayout,true,true,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::ComputeDriverArgumentTable<AGX::HAL300::Classes>>>::~ProgramVariant(unint64_t a1)
{
  AGX::ProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserComputeArgumentTableLayout,true,true,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::ComputeDriverArgumentTable<AGX::HAL300::Classes>>>::~ProgramVariant(a1);

  JUMPOUT(0x29ED520D0);
}

void AGX::BlitVertexProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes>::~BlitVertexProgramVariant(unint64_t a1)
{
  AGX::BlitVertexProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes>::~BlitVertexProgramVariant(a1);

  JUMPOUT(0x29ED520D0);
}

unint64_t AGX::BlitVertexProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes>::~BlitVertexProgramVariant(unint64_t a1)
{
  *a1 = &unk_2A23F7790;
  v2 = *(a1 + 3200);
  if (v2)
  {
    v3 = v2 - 16;
    v4 = *(v2 - 8);
    if (v4)
    {
      v5 = v2 + 40 * v4 - 24;
      v6 = -40 * v4;
      do
      {
        if (*(v5 + 23) < 0)
        {
          operator delete(*v5);
        }

        v5 -= 40;
        v6 += 40;
      }

      while (v6);
    }

    MEMORY[0x29ED520A0](v3, 0x1012C8093F7C2A9);
    *(a1 + 3200) = 0;
  }

  if (*(a1 + 3248))
  {
    v7 = *(a1 + 3256);
    v8 = *(v7 + 16);
    v10[0] = MEMORY[0x29EDCA5F8];
    v10[1] = 3221225472;
    v10[2] = ___ZN3AGX4HeapILb1EE14deallocateImplERKNS1_10AllocationE_block_invoke;
    v10[3] = &__block_descriptor_48_e5_v8__0l;
    v10[4] = v7;
    v10[5] = a1 + 3224;
    dispatch_sync(v8, v10);
    *(a1 + 3249) = 0u;
    *(a1 + 3224) = 0u;
    *(a1 + 3240) = 0u;
  }

  AGX::ProgramVariantESLState<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserFragmentArgumentTableLayout,true,9ul>::~ProgramVariantESLState((a1 + 1784));

  return AGX::ProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::BlitVertexArgumentTable,false,false,AGX::NoCombinedUserDriverArgumentTable>::~ProgramVariant(a1);
}

unint64_t AGX::ProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::BlitVertexArgumentTable,false,false,AGX::NoCombinedUserDriverArgumentTable>::~ProgramVariant(unint64_t a1)
{
  *a1 = &unk_2A23F7E80;
  if (*(a1 + 984))
  {
    v2 = *(a1 + 992);
    v3 = *(v2 + 16);
    v47 = MEMORY[0x29EDCA5F8];
    v48 = 3221225472;
    v49 = ___ZN3AGX4HeapILb1EE14deallocateImplERKNS1_10AllocationE_block_invoke;
    v50 = &__block_descriptor_48_e5_v8__0l;
    v51 = v2;
    v52 = a1 + 960;
    dispatch_sync(v3, &v47);
    *(a1 + 985) = 0u;
    *(a1 + 960) = 0u;
    *(a1 + 976) = 0u;
  }

  if (*(a1 + 1032))
  {
    v4 = *(a1 + 1040);
    v5 = *(v4 + 16);
    v47 = MEMORY[0x29EDCA5F8];
    v48 = 3221225472;
    v49 = ___ZN3AGX4HeapILb1EE14deallocateImplERKNS1_10AllocationE_block_invoke;
    v50 = &__block_descriptor_48_e5_v8__0l;
    v51 = v4;
    v52 = a1 + 1008;
    dispatch_sync(v5, &v47);
    *(a1 + 1033) = 0u;
    *(a1 + 1008) = 0u;
    *(a1 + 1024) = 0u;
  }

  if (*(a1 + 1080))
  {
    v6 = *(a1 + 1088);
    v7 = *(v6 + 16);
    v47 = MEMORY[0x29EDCA5F8];
    v48 = 3221225472;
    v49 = ___ZN3AGX4HeapILb1EE14deallocateImplERKNS1_10AllocationE_block_invoke;
    v50 = &__block_descriptor_48_e5_v8__0l;
    v51 = v6;
    v52 = a1 + 1056;
    dispatch_sync(v7, &v47);
    *(a1 + 1081) = 0u;
    *(a1 + 1072) = 0u;
    *(a1 + 1056) = 0u;
  }

  if (*(a1 + 1128))
  {
    v8 = *(a1 + 1136);
    v9 = *(v8 + 16);
    v47 = MEMORY[0x29EDCA5F8];
    v48 = 3221225472;
    v49 = ___ZN3AGX4HeapILb1EE14deallocateImplERKNS1_10AllocationE_block_invoke;
    v50 = &__block_descriptor_48_e5_v8__0l;
    v51 = v8;
    v52 = a1 + 1104;
    dispatch_sync(v9, &v47);
    *(a1 + 1129) = 0u;
    *(a1 + 1120) = 0u;
    *(a1 + 1104) = 0u;
  }

  v10 = *(a1 + 8);
  if (v10)
  {
    AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::unregisterVariantEventInfo(v10, a1);
  }

  if (*(a1 + 1783) < 0)
  {
    operator delete(*(a1 + 1760));
  }

  v11 = *(a1 + 1736);
  if (v11)
  {
    *(a1 + 1744) = v11;
    operator delete(v11);
  }

  v12 = *(a1 + 1712);
  if (v12)
  {
    v13 = *(a1 + 1720);
    v14 = *(a1 + 1712);
    if (v13 != v12)
    {
      do
      {
        v15 = *(v13 - 1);
        v13 -= 3;
        if (v15 < 0)
        {
          operator delete(*v13);
        }
      }

      while (v13 != v12);
      v14 = *(a1 + 1712);
    }

    *(a1 + 1720) = v12;
    operator delete(v14);
  }

  std::__tree<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval,AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::IntervalRangeComparator,std::allocator<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval>>::destroy(*(a1 + 1600));
  v16 = *(a1 + 1560);
  if (v16)
  {
    v17 = *(a1 + 1568);
    v18 = *(a1 + 1560);
    if (v17 != v16)
    {
      do
      {
        v19 = *(v17 - 8);
        if (v19 && !atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v19->__on_zero_shared)(v19);
          std::__shared_weak_count::__release_weak(v19);
        }

        v17 -= 16;
      }

      while (v17 != v16);
      v18 = *(a1 + 1560);
    }

    *(a1 + 1568) = v16;
    operator delete(v18);
  }

  v20 = *(a1 + 1536);
  if (v20)
  {
    *(a1 + 1544) = v20;
    operator delete(v20);
  }

  v21 = *(a1 + 1512);
  if (v21)
  {
    *(a1 + 1520) = v21;
    operator delete(v21);
  }

  if (*(a1 + 1423) < 0)
  {
    operator delete(*(a1 + 1400));
    if ((*(a1 + 919) & 0x80000000) == 0)
    {
LABEL_38:
      if ((*(a1 + 887) & 0x80000000) == 0)
      {
        goto LABEL_39;
      }

      goto LABEL_92;
    }
  }

  else if ((*(a1 + 919) & 0x80000000) == 0)
  {
    goto LABEL_38;
  }

  operator delete(*(a1 + 896));
  if ((*(a1 + 887) & 0x80000000) == 0)
  {
LABEL_39:
    if ((*(a1 + 863) & 0x80000000) == 0)
    {
      goto LABEL_40;
    }

LABEL_93:
    operator delete(*(a1 + 840));
    if ((*(a1 + 839) & 0x80000000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_94;
  }

LABEL_92:
  operator delete(*(a1 + 864));
  if (*(a1 + 863) < 0)
  {
    goto LABEL_93;
  }

LABEL_40:
  if ((*(a1 + 839) & 0x80000000) == 0)
  {
    goto LABEL_41;
  }

LABEL_94:
  operator delete(*(a1 + 816));
LABEL_41:
  std::__tree<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval,AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::IntervalRangeComparator,std::allocator<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval>>::destroy(*(a1 + 544));
  v22 = *(a1 + 512);
  if (v22)
  {
    *(a1 + 520) = v22;
    operator delete(v22);
  }

  v23 = *(a1 + 472);
  if (v23)
  {
    *(a1 + 480) = v23;
    operator delete(v23);
  }

  v24 = *(a1 + 448);
  if (v24)
  {
    v25 = *(a1 + 456);
    v26 = *(a1 + 448);
    if (v25 != v24)
    {
      do
      {
        v27 = *(v25 - 24);
        if (v27)
        {
          *(v25 - 16) = v27;
          operator delete(v27);
        }

        v25 -= 32;
      }

      while (v25 != v24);
      v26 = *(a1 + 448);
    }

    *(a1 + 456) = v24;
    operator delete(v26);
  }

  v28 = *(a1 + 424);
  if (v28)
  {
    *(a1 + 432) = v28;
    operator delete(v28);
  }

  v29 = *(a1 + 328);
  if (v29)
  {
    *(a1 + 336) = v29;
    operator delete(v29);
  }

  v30 = *(a1 + 304);
  if (v30)
  {
    *(a1 + 312) = v30;
    operator delete(v30);
  }

  v31 = *(a1 + 280);
  if (v31)
  {
    *(a1 + 288) = v31;
    operator delete(v31);
  }

  v32 = *(a1 + 256);
  if (v32)
  {
    *(a1 + 264) = v32;
    operator delete(v32);
  }

  v33 = *(a1 + 216);
  if (v33)
  {
    *(a1 + 224) = v33;
    operator delete(v33);
  }

  v34 = *(a1 + 192);
  if (v34)
  {
    v35 = *(a1 + 200);
    v36 = *(a1 + 192);
    if (v35 != v34)
    {
      do
      {
        v37 = *(v35 - 24);
        if (v37)
        {
          *(v35 - 16) = v37;
          operator delete(v37);
        }

        v35 -= 32;
      }

      while (v35 != v34);
      v36 = *(a1 + 192);
    }

    *(a1 + 200) = v34;
    operator delete(v36);
  }

  v38 = *(a1 + 168);
  if (v38)
  {
    *(a1 + 176) = v38;
    operator delete(v38);
  }

  v39 = *(a1 + 144);
  if (v39)
  {
    *(a1 + 152) = v39;
    operator delete(v39);
  }

  v40 = *(a1 + 104);
  if (v40)
  {
    *(a1 + 112) = v40;
    operator delete(v40);
  }

  v41 = *(a1 + 80);
  if (v41)
  {
    v42 = *(a1 + 88);
    v43 = *(a1 + 80);
    if (v42 != v41)
    {
      do
      {
        v44 = *(v42 - 24);
        if (v44)
        {
          *(v42 - 16) = v44;
          operator delete(v44);
        }

        v42 -= 32;
      }

      while (v42 != v41);
      v43 = *(a1 + 80);
    }

    *(a1 + 88) = v41;
    operator delete(v43);
  }

  v45 = *(a1 + 56);
  if (v45)
  {
    *(a1 + 64) = v45;
    operator delete(v45);
  }

  return a1;
}

void AGX::ProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::BlitVertexArgumentTable,false,false,AGX::NoCombinedUserDriverArgumentTable>::~ProgramVariant(unint64_t a1)
{
  AGX::ProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::BlitVertexArgumentTable,false,false,AGX::NoCombinedUserDriverArgumentTable>::~ProgramVariant(a1);

  JUMPOUT(0x29ED520D0);
}

void AGX::BlitVertexFastClearProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes>::~BlitVertexFastClearProgramVariant(unint64_t a1)
{
  *a1 = &unk_2A23F77B0;
  if (*(a1 + 3224))
  {
    v2 = *(a1 + 3232);
    v3 = *(v2 + 16);
    v4[0] = MEMORY[0x29EDCA5F8];
    v4[1] = 3221225472;
    v4[2] = ___ZN3AGX4HeapILb1EE14deallocateImplERKNS1_10AllocationE_block_invoke;
    v4[3] = &__block_descriptor_48_e5_v8__0l;
    v4[4] = v2;
    v4[5] = a1 + 3200;
    dispatch_sync(v3, v4);
    *(a1 + 3225) = 0u;
    *(a1 + 3216) = 0u;
    *(a1 + 3200) = 0u;
  }

  AGX::ProgramVariantESLState<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserVertexArgumentTableLayout,true,8ul>::~ProgramVariantESLState((a1 + 1784));
  AGX::ProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::BlitFastClearVertexArgumentTable,false,false,AGX::NoCombinedUserDriverArgumentTable>::~ProgramVariant(a1);

  JUMPOUT(0x29ED520D0);
}

unint64_t AGX::ProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::BlitFastClearVertexArgumentTable,false,false,AGX::NoCombinedUserDriverArgumentTable>::~ProgramVariant(unint64_t a1)
{
  *a1 = &unk_2A23F7EA0;
  if (*(a1 + 984))
  {
    v2 = *(a1 + 992);
    v3 = *(v2 + 16);
    v47 = MEMORY[0x29EDCA5F8];
    v48 = 3221225472;
    v49 = ___ZN3AGX4HeapILb1EE14deallocateImplERKNS1_10AllocationE_block_invoke;
    v50 = &__block_descriptor_48_e5_v8__0l;
    v51 = v2;
    v52 = a1 + 960;
    dispatch_sync(v3, &v47);
    *(a1 + 985) = 0u;
    *(a1 + 960) = 0u;
    *(a1 + 976) = 0u;
  }

  if (*(a1 + 1032))
  {
    v4 = *(a1 + 1040);
    v5 = *(v4 + 16);
    v47 = MEMORY[0x29EDCA5F8];
    v48 = 3221225472;
    v49 = ___ZN3AGX4HeapILb1EE14deallocateImplERKNS1_10AllocationE_block_invoke;
    v50 = &__block_descriptor_48_e5_v8__0l;
    v51 = v4;
    v52 = a1 + 1008;
    dispatch_sync(v5, &v47);
    *(a1 + 1033) = 0u;
    *(a1 + 1008) = 0u;
    *(a1 + 1024) = 0u;
  }

  if (*(a1 + 1080))
  {
    v6 = *(a1 + 1088);
    v7 = *(v6 + 16);
    v47 = MEMORY[0x29EDCA5F8];
    v48 = 3221225472;
    v49 = ___ZN3AGX4HeapILb1EE14deallocateImplERKNS1_10AllocationE_block_invoke;
    v50 = &__block_descriptor_48_e5_v8__0l;
    v51 = v6;
    v52 = a1 + 1056;
    dispatch_sync(v7, &v47);
    *(a1 + 1081) = 0u;
    *(a1 + 1072) = 0u;
    *(a1 + 1056) = 0u;
  }

  if (*(a1 + 1128))
  {
    v8 = *(a1 + 1136);
    v9 = *(v8 + 16);
    v47 = MEMORY[0x29EDCA5F8];
    v48 = 3221225472;
    v49 = ___ZN3AGX4HeapILb1EE14deallocateImplERKNS1_10AllocationE_block_invoke;
    v50 = &__block_descriptor_48_e5_v8__0l;
    v51 = v8;
    v52 = a1 + 1104;
    dispatch_sync(v9, &v47);
    *(a1 + 1129) = 0u;
    *(a1 + 1120) = 0u;
    *(a1 + 1104) = 0u;
  }

  v10 = *(a1 + 8);
  if (v10)
  {
    AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::unregisterVariantEventInfo(v10, a1);
  }

  if (*(a1 + 1783) < 0)
  {
    operator delete(*(a1 + 1760));
  }

  v11 = *(a1 + 1736);
  if (v11)
  {
    *(a1 + 1744) = v11;
    operator delete(v11);
  }

  v12 = *(a1 + 1712);
  if (v12)
  {
    v13 = *(a1 + 1720);
    v14 = *(a1 + 1712);
    if (v13 != v12)
    {
      do
      {
        v15 = *(v13 - 1);
        v13 -= 3;
        if (v15 < 0)
        {
          operator delete(*v13);
        }
      }

      while (v13 != v12);
      v14 = *(a1 + 1712);
    }

    *(a1 + 1720) = v12;
    operator delete(v14);
  }

  std::__tree<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval,AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::IntervalRangeComparator,std::allocator<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval>>::destroy(*(a1 + 1600));
  v16 = *(a1 + 1560);
  if (v16)
  {
    v17 = *(a1 + 1568);
    v18 = *(a1 + 1560);
    if (v17 != v16)
    {
      do
      {
        v19 = *(v17 - 8);
        if (v19 && !atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v19->__on_zero_shared)(v19);
          std::__shared_weak_count::__release_weak(v19);
        }

        v17 -= 16;
      }

      while (v17 != v16);
      v18 = *(a1 + 1560);
    }

    *(a1 + 1568) = v16;
    operator delete(v18);
  }

  v20 = *(a1 + 1536);
  if (v20)
  {
    *(a1 + 1544) = v20;
    operator delete(v20);
  }

  v21 = *(a1 + 1512);
  if (v21)
  {
    *(a1 + 1520) = v21;
    operator delete(v21);
  }

  if (*(a1 + 1423) < 0)
  {
    operator delete(*(a1 + 1400));
    if ((*(a1 + 919) & 0x80000000) == 0)
    {
LABEL_38:
      if ((*(a1 + 887) & 0x80000000) == 0)
      {
        goto LABEL_39;
      }

      goto LABEL_92;
    }
  }

  else if ((*(a1 + 919) & 0x80000000) == 0)
  {
    goto LABEL_38;
  }

  operator delete(*(a1 + 896));
  if ((*(a1 + 887) & 0x80000000) == 0)
  {
LABEL_39:
    if ((*(a1 + 863) & 0x80000000) == 0)
    {
      goto LABEL_40;
    }

LABEL_93:
    operator delete(*(a1 + 840));
    if ((*(a1 + 839) & 0x80000000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_94;
  }

LABEL_92:
  operator delete(*(a1 + 864));
  if (*(a1 + 863) < 0)
  {
    goto LABEL_93;
  }

LABEL_40:
  if ((*(a1 + 839) & 0x80000000) == 0)
  {
    goto LABEL_41;
  }

LABEL_94:
  operator delete(*(a1 + 816));
LABEL_41:
  std::__tree<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval,AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::IntervalRangeComparator,std::allocator<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval>>::destroy(*(a1 + 544));
  v22 = *(a1 + 512);
  if (v22)
  {
    *(a1 + 520) = v22;
    operator delete(v22);
  }

  v23 = *(a1 + 472);
  if (v23)
  {
    *(a1 + 480) = v23;
    operator delete(v23);
  }

  v24 = *(a1 + 448);
  if (v24)
  {
    v25 = *(a1 + 456);
    v26 = *(a1 + 448);
    if (v25 != v24)
    {
      do
      {
        v27 = *(v25 - 24);
        if (v27)
        {
          *(v25 - 16) = v27;
          operator delete(v27);
        }

        v25 -= 32;
      }

      while (v25 != v24);
      v26 = *(a1 + 448);
    }

    *(a1 + 456) = v24;
    operator delete(v26);
  }

  v28 = *(a1 + 424);
  if (v28)
  {
    *(a1 + 432) = v28;
    operator delete(v28);
  }

  v29 = *(a1 + 328);
  if (v29)
  {
    *(a1 + 336) = v29;
    operator delete(v29);
  }

  v30 = *(a1 + 304);
  if (v30)
  {
    *(a1 + 312) = v30;
    operator delete(v30);
  }

  v31 = *(a1 + 280);
  if (v31)
  {
    *(a1 + 288) = v31;
    operator delete(v31);
  }

  v32 = *(a1 + 256);
  if (v32)
  {
    *(a1 + 264) = v32;
    operator delete(v32);
  }

  v33 = *(a1 + 216);
  if (v33)
  {
    *(a1 + 224) = v33;
    operator delete(v33);
  }

  v34 = *(a1 + 192);
  if (v34)
  {
    v35 = *(a1 + 200);
    v36 = *(a1 + 192);
    if (v35 != v34)
    {
      do
      {
        v37 = *(v35 - 24);
        if (v37)
        {
          *(v35 - 16) = v37;
          operator delete(v37);
        }

        v35 -= 32;
      }

      while (v35 != v34);
      v36 = *(a1 + 192);
    }

    *(a1 + 200) = v34;
    operator delete(v36);
  }

  v38 = *(a1 + 168);
  if (v38)
  {
    *(a1 + 176) = v38;
    operator delete(v38);
  }

  v39 = *(a1 + 144);
  if (v39)
  {
    *(a1 + 152) = v39;
    operator delete(v39);
  }

  v40 = *(a1 + 104);
  if (v40)
  {
    *(a1 + 112) = v40;
    operator delete(v40);
  }

  v41 = *(a1 + 80);
  if (v41)
  {
    v42 = *(a1 + 88);
    v43 = *(a1 + 80);
    if (v42 != v41)
    {
      do
      {
        v44 = *(v42 - 24);
        if (v44)
        {
          *(v42 - 16) = v44;
          operator delete(v44);
        }

        v42 -= 32;
      }

      while (v42 != v41);
      v43 = *(a1 + 80);
    }

    *(a1 + 88) = v41;
    operator delete(v43);
  }

  v45 = *(a1 + 56);
  if (v45)
  {
    *(a1 + 64) = v45;
    operator delete(v45);
  }

  return a1;
}

void AGX::ProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::BlitFastClearVertexArgumentTable,false,false,AGX::NoCombinedUserDriverArgumentTable>::~ProgramVariant(unint64_t a1)
{
  AGX::ProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::BlitFastClearVertexArgumentTable,false,false,AGX::NoCombinedUserDriverArgumentTable>::~ProgramVariant(a1);

  JUMPOUT(0x29ED520D0);
}

unint64_t AGX::BlitVertexFastClearProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes>::~BlitVertexFastClearProgramVariant(unint64_t a1)
{
  *a1 = &unk_2A23F77B0;
  if (*(a1 + 3224))
  {
    v2 = *(a1 + 3232);
    v3 = *(v2 + 16);
    v5[0] = MEMORY[0x29EDCA5F8];
    v5[1] = 3221225472;
    v5[2] = ___ZN3AGX4HeapILb1EE14deallocateImplERKNS1_10AllocationE_block_invoke;
    v5[3] = &__block_descriptor_48_e5_v8__0l;
    v5[4] = v2;
    v5[5] = a1 + 3200;
    dispatch_sync(v3, v5);
    *(a1 + 3225) = 0u;
    *(a1 + 3216) = 0u;
    *(a1 + 3200) = 0u;
  }

  AGX::ProgramVariantESLState<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserVertexArgumentTableLayout,true,8ul>::~ProgramVariantESLState((a1 + 1784));

  return AGX::ProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::BlitFastClearVertexArgumentTable,false,false,AGX::NoCombinedUserDriverArgumentTable>::~ProgramVariant(a1);
}

void AGX::ClearVisibilityVertexProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes>::~ClearVisibilityVertexProgramVariant(unint64_t a1)
{
  *a1 = &unk_2A23F77F0;
  if (*(a1 + 3192))
  {
    v2 = *(a1 + 3200);
    v3 = *(v2 + 16);
    v4[0] = MEMORY[0x29EDCA5F8];
    v4[1] = 3221225472;
    v4[2] = ___ZN3AGX4HeapILb1EE14deallocateImplERKNS1_10AllocationE_block_invoke;
    v4[3] = &__block_descriptor_48_e5_v8__0l;
    v4[4] = v2;
    v4[5] = a1 + 3168;
    dispatch_sync(v3, v4);
    *(a1 + 3193) = 0u;
    *(a1 + 3184) = 0u;
    *(a1 + 3168) = 0u;
  }

  AGX::ProgramVariantESLState<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserVertexArgumentTableLayout,true,8ul>::~ProgramVariantESLState((a1 + 1784));
  AGX::ProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ClearVisibilityArgumentTable,false,false,AGX::NoCombinedUserDriverArgumentTable>::~ProgramVariant(a1);

  JUMPOUT(0x29ED520D0);
}

unint64_t AGX::ProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ClearVisibilityArgumentTable,false,false,AGX::NoCombinedUserDriverArgumentTable>::~ProgramVariant(unint64_t a1)
{
  *a1 = &unk_2A23F7EC0;
  if (*(a1 + 984))
  {
    v2 = *(a1 + 992);
    v3 = *(v2 + 16);
    v47 = MEMORY[0x29EDCA5F8];
    v48 = 3221225472;
    v49 = ___ZN3AGX4HeapILb1EE14deallocateImplERKNS1_10AllocationE_block_invoke;
    v50 = &__block_descriptor_48_e5_v8__0l;
    v51 = v2;
    v52 = a1 + 960;
    dispatch_sync(v3, &v47);
    *(a1 + 985) = 0u;
    *(a1 + 960) = 0u;
    *(a1 + 976) = 0u;
  }

  if (*(a1 + 1032))
  {
    v4 = *(a1 + 1040);
    v5 = *(v4 + 16);
    v47 = MEMORY[0x29EDCA5F8];
    v48 = 3221225472;
    v49 = ___ZN3AGX4HeapILb1EE14deallocateImplERKNS1_10AllocationE_block_invoke;
    v50 = &__block_descriptor_48_e5_v8__0l;
    v51 = v4;
    v52 = a1 + 1008;
    dispatch_sync(v5, &v47);
    *(a1 + 1033) = 0u;
    *(a1 + 1008) = 0u;
    *(a1 + 1024) = 0u;
  }

  if (*(a1 + 1080))
  {
    v6 = *(a1 + 1088);
    v7 = *(v6 + 16);
    v47 = MEMORY[0x29EDCA5F8];
    v48 = 3221225472;
    v49 = ___ZN3AGX4HeapILb1EE14deallocateImplERKNS1_10AllocationE_block_invoke;
    v50 = &__block_descriptor_48_e5_v8__0l;
    v51 = v6;
    v52 = a1 + 1056;
    dispatch_sync(v7, &v47);
    *(a1 + 1081) = 0u;
    *(a1 + 1072) = 0u;
    *(a1 + 1056) = 0u;
  }

  if (*(a1 + 1128))
  {
    v8 = *(a1 + 1136);
    v9 = *(v8 + 16);
    v47 = MEMORY[0x29EDCA5F8];
    v48 = 3221225472;
    v49 = ___ZN3AGX4HeapILb1EE14deallocateImplERKNS1_10AllocationE_block_invoke;
    v50 = &__block_descriptor_48_e5_v8__0l;
    v51 = v8;
    v52 = a1 + 1104;
    dispatch_sync(v9, &v47);
    *(a1 + 1129) = 0u;
    *(a1 + 1120) = 0u;
    *(a1 + 1104) = 0u;
  }

  v10 = *(a1 + 8);
  if (v10)
  {
    AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::unregisterVariantEventInfo(v10, a1);
  }

  if (*(a1 + 1783) < 0)
  {
    operator delete(*(a1 + 1760));
  }

  v11 = *(a1 + 1736);
  if (v11)
  {
    *(a1 + 1744) = v11;
    operator delete(v11);
  }

  v12 = *(a1 + 1712);
  if (v12)
  {
    v13 = *(a1 + 1720);
    v14 = *(a1 + 1712);
    if (v13 != v12)
    {
      do
      {
        v15 = *(v13 - 1);
        v13 -= 3;
        if (v15 < 0)
        {
          operator delete(*v13);
        }
      }

      while (v13 != v12);
      v14 = *(a1 + 1712);
    }

    *(a1 + 1720) = v12;
    operator delete(v14);
  }

  std::__tree<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval,AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::IntervalRangeComparator,std::allocator<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval>>::destroy(*(a1 + 1600));
  v16 = *(a1 + 1560);
  if (v16)
  {
    v17 = *(a1 + 1568);
    v18 = *(a1 + 1560);
    if (v17 != v16)
    {
      do
      {
        v19 = *(v17 - 8);
        if (v19 && !atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v19->__on_zero_shared)(v19);
          std::__shared_weak_count::__release_weak(v19);
        }

        v17 -= 16;
      }

      while (v17 != v16);
      v18 = *(a1 + 1560);
    }

    *(a1 + 1568) = v16;
    operator delete(v18);
  }

  v20 = *(a1 + 1536);
  if (v20)
  {
    *(a1 + 1544) = v20;
    operator delete(v20);
  }

  v21 = *(a1 + 1512);
  if (v21)
  {
    *(a1 + 1520) = v21;
    operator delete(v21);
  }

  if (*(a1 + 1423) < 0)
  {
    operator delete(*(a1 + 1400));
    if ((*(a1 + 919) & 0x80000000) == 0)
    {
LABEL_38:
      if ((*(a1 + 887) & 0x80000000) == 0)
      {
        goto LABEL_39;
      }

      goto LABEL_92;
    }
  }

  else if ((*(a1 + 919) & 0x80000000) == 0)
  {
    goto LABEL_38;
  }

  operator delete(*(a1 + 896));
  if ((*(a1 + 887) & 0x80000000) == 0)
  {
LABEL_39:
    if ((*(a1 + 863) & 0x80000000) == 0)
    {
      goto LABEL_40;
    }

LABEL_93:
    operator delete(*(a1 + 840));
    if ((*(a1 + 839) & 0x80000000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_94;
  }

LABEL_92:
  operator delete(*(a1 + 864));
  if (*(a1 + 863) < 0)
  {
    goto LABEL_93;
  }

LABEL_40:
  if ((*(a1 + 839) & 0x80000000) == 0)
  {
    goto LABEL_41;
  }

LABEL_94:
  operator delete(*(a1 + 816));
LABEL_41:
  std::__tree<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval,AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::IntervalRangeComparator,std::allocator<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval>>::destroy(*(a1 + 544));
  v22 = *(a1 + 512);
  if (v22)
  {
    *(a1 + 520) = v22;
    operator delete(v22);
  }

  v23 = *(a1 + 472);
  if (v23)
  {
    *(a1 + 480) = v23;
    operator delete(v23);
  }

  v24 = *(a1 + 448);
  if (v24)
  {
    v25 = *(a1 + 456);
    v26 = *(a1 + 448);
    if (v25 != v24)
    {
      do
      {
        v27 = *(v25 - 24);
        if (v27)
        {
          *(v25 - 16) = v27;
          operator delete(v27);
        }

        v25 -= 32;
      }

      while (v25 != v24);
      v26 = *(a1 + 448);
    }

    *(a1 + 456) = v24;
    operator delete(v26);
  }

  v28 = *(a1 + 424);
  if (v28)
  {
    *(a1 + 432) = v28;
    operator delete(v28);
  }

  v29 = *(a1 + 328);
  if (v29)
  {
    *(a1 + 336) = v29;
    operator delete(v29);
  }

  v30 = *(a1 + 304);
  if (v30)
  {
    *(a1 + 312) = v30;
    operator delete(v30);
  }

  v31 = *(a1 + 280);
  if (v31)
  {
    *(a1 + 288) = v31;
    operator delete(v31);
  }

  v32 = *(a1 + 256);
  if (v32)
  {
    *(a1 + 264) = v32;
    operator delete(v32);
  }

  v33 = *(a1 + 216);
  if (v33)
  {
    *(a1 + 224) = v33;
    operator delete(v33);
  }

  v34 = *(a1 + 192);
  if (v34)
  {
    v35 = *(a1 + 200);
    v36 = *(a1 + 192);
    if (v35 != v34)
    {
      do
      {
        v37 = *(v35 - 24);
        if (v37)
        {
          *(v35 - 16) = v37;
          operator delete(v37);
        }

        v35 -= 32;
      }

      while (v35 != v34);
      v36 = *(a1 + 192);
    }

    *(a1 + 200) = v34;
    operator delete(v36);
  }

  v38 = *(a1 + 168);
  if (v38)
  {
    *(a1 + 176) = v38;
    operator delete(v38);
  }

  v39 = *(a1 + 144);
  if (v39)
  {
    *(a1 + 152) = v39;
    operator delete(v39);
  }

  v40 = *(a1 + 104);
  if (v40)
  {
    *(a1 + 112) = v40;
    operator delete(v40);
  }

  v41 = *(a1 + 80);
  if (v41)
  {
    v42 = *(a1 + 88);
    v43 = *(a1 + 80);
    if (v42 != v41)
    {
      do
      {
        v44 = *(v42 - 24);
        if (v44)
        {
          *(v42 - 16) = v44;
          operator delete(v44);
        }

        v42 -= 32;
      }

      while (v42 != v41);
      v43 = *(a1 + 80);
    }

    *(a1 + 88) = v41;
    operator delete(v43);
  }

  v45 = *(a1 + 56);
  if (v45)
  {
    *(a1 + 64) = v45;
    operator delete(v45);
  }

  return a1;
}

void AGX::ProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ClearVisibilityArgumentTable,false,false,AGX::NoCombinedUserDriverArgumentTable>::~ProgramVariant(unint64_t a1)
{
  AGX::ProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ClearVisibilityArgumentTable,false,false,AGX::NoCombinedUserDriverArgumentTable>::~ProgramVariant(a1);

  JUMPOUT(0x29ED520D0);
}

unint64_t AGX::ClearVisibilityVertexProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes>::~ClearVisibilityVertexProgramVariant(unint64_t a1)
{
  *a1 = &unk_2A23F77F0;
  if (*(a1 + 3192))
  {
    v2 = *(a1 + 3200);
    v3 = *(v2 + 16);
    v5[0] = MEMORY[0x29EDCA5F8];
    v5[1] = 3221225472;
    v5[2] = ___ZN3AGX4HeapILb1EE14deallocateImplERKNS1_10AllocationE_block_invoke;
    v5[3] = &__block_descriptor_48_e5_v8__0l;
    v5[4] = v2;
    v5[5] = a1 + 3168;
    dispatch_sync(v3, v5);
    *(a1 + 3193) = 0u;
    *(a1 + 3184) = 0u;
    *(a1 + 3168) = 0u;
  }

  AGX::ProgramVariantESLState<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserVertexArgumentTableLayout,true,8ul>::~ProgramVariantESLState((a1 + 1784));

  return AGX::ProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ClearVisibilityArgumentTable,false,false,AGX::NoCombinedUserDriverArgumentTable>::~ProgramVariant(a1);
}

void AGX::TileDispatchVertexProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes>::~TileDispatchVertexProgramVariant(unint64_t a1)
{
  *a1 = &unk_2A23F7810;
  if (*(a1 + 3224))
  {
    v2 = *(a1 + 3232);
    v3 = *(v2 + 16);
    v4[0] = MEMORY[0x29EDCA5F8];
    v4[1] = 3221225472;
    v4[2] = ___ZN3AGX4HeapILb1EE14deallocateImplERKNS1_10AllocationE_block_invoke;
    v4[3] = &__block_descriptor_48_e5_v8__0l;
    v4[4] = v2;
    v4[5] = a1 + 3200;
    dispatch_sync(v3, v4);
    *(a1 + 3225) = 0u;
    *(a1 + 3216) = 0u;
    *(a1 + 3200) = 0u;
  }

  AGX::ProgramVariantESLState<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserVertexArgumentTableLayout,true,8ul>::~ProgramVariantESLState((a1 + 1784));
  AGX::ProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::TileDispatchVertexArgumentTable,false,false,AGX::NoCombinedUserDriverArgumentTable>::~ProgramVariant(a1);

  JUMPOUT(0x29ED520D0);
}

unint64_t AGX::ProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::TileDispatchVertexArgumentTable,false,false,AGX::NoCombinedUserDriverArgumentTable>::~ProgramVariant(unint64_t a1)
{
  *a1 = &unk_2A23F7EE0;
  if (*(a1 + 984))
  {
    v2 = *(a1 + 992);
    v3 = *(v2 + 16);
    v47 = MEMORY[0x29EDCA5F8];
    v48 = 3221225472;
    v49 = ___ZN3AGX4HeapILb1EE14deallocateImplERKNS1_10AllocationE_block_invoke;
    v50 = &__block_descriptor_48_e5_v8__0l;
    v51 = v2;
    v52 = a1 + 960;
    dispatch_sync(v3, &v47);
    *(a1 + 985) = 0u;
    *(a1 + 960) = 0u;
    *(a1 + 976) = 0u;
  }

  if (*(a1 + 1032))
  {
    v4 = *(a1 + 1040);
    v5 = *(v4 + 16);
    v47 = MEMORY[0x29EDCA5F8];
    v48 = 3221225472;
    v49 = ___ZN3AGX4HeapILb1EE14deallocateImplERKNS1_10AllocationE_block_invoke;
    v50 = &__block_descriptor_48_e5_v8__0l;
    v51 = v4;
    v52 = a1 + 1008;
    dispatch_sync(v5, &v47);
    *(a1 + 1033) = 0u;
    *(a1 + 1008) = 0u;
    *(a1 + 1024) = 0u;
  }

  if (*(a1 + 1080))
  {
    v6 = *(a1 + 1088);
    v7 = *(v6 + 16);
    v47 = MEMORY[0x29EDCA5F8];
    v48 = 3221225472;
    v49 = ___ZN3AGX4HeapILb1EE14deallocateImplERKNS1_10AllocationE_block_invoke;
    v50 = &__block_descriptor_48_e5_v8__0l;
    v51 = v6;
    v52 = a1 + 1056;
    dispatch_sync(v7, &v47);
    *(a1 + 1081) = 0u;
    *(a1 + 1072) = 0u;
    *(a1 + 1056) = 0u;
  }

  if (*(a1 + 1128))
  {
    v8 = *(a1 + 1136);
    v9 = *(v8 + 16);
    v47 = MEMORY[0x29EDCA5F8];
    v48 = 3221225472;
    v49 = ___ZN3AGX4HeapILb1EE14deallocateImplERKNS1_10AllocationE_block_invoke;
    v50 = &__block_descriptor_48_e5_v8__0l;
    v51 = v8;
    v52 = a1 + 1104;
    dispatch_sync(v9, &v47);
    *(a1 + 1129) = 0u;
    *(a1 + 1120) = 0u;
    *(a1 + 1104) = 0u;
  }

  v10 = *(a1 + 8);
  if (v10)
  {
    AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::unregisterVariantEventInfo(v10, a1);
  }

  if (*(a1 + 1783) < 0)
  {
    operator delete(*(a1 + 1760));
  }

  v11 = *(a1 + 1736);
  if (v11)
  {
    *(a1 + 1744) = v11;
    operator delete(v11);
  }

  v12 = *(a1 + 1712);
  if (v12)
  {
    v13 = *(a1 + 1720);
    v14 = *(a1 + 1712);
    if (v13 != v12)
    {
      do
      {
        v15 = *(v13 - 1);
        v13 -= 3;
        if (v15 < 0)
        {
          operator delete(*v13);
        }
      }

      while (v13 != v12);
      v14 = *(a1 + 1712);
    }

    *(a1 + 1720) = v12;
    operator delete(v14);
  }

  std::__tree<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval,AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::IntervalRangeComparator,std::allocator<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval>>::destroy(*(a1 + 1600));
  v16 = *(a1 + 1560);
  if (v16)
  {
    v17 = *(a1 + 1568);
    v18 = *(a1 + 1560);
    if (v17 != v16)
    {
      do
      {
        v19 = *(v17 - 8);
        if (v19 && !atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v19->__on_zero_shared)(v19);
          std::__shared_weak_count::__release_weak(v19);
        }

        v17 -= 16;
      }

      while (v17 != v16);
      v18 = *(a1 + 1560);
    }

    *(a1 + 1568) = v16;
    operator delete(v18);
  }

  v20 = *(a1 + 1536);
  if (v20)
  {
    *(a1 + 1544) = v20;
    operator delete(v20);
  }

  v21 = *(a1 + 1512);
  if (v21)
  {
    *(a1 + 1520) = v21;
    operator delete(v21);
  }

  if (*(a1 + 1423) < 0)
  {
    operator delete(*(a1 + 1400));
    if ((*(a1 + 919) & 0x80000000) == 0)
    {
LABEL_38:
      if ((*(a1 + 887) & 0x80000000) == 0)
      {
        goto LABEL_39;
      }

      goto LABEL_92;
    }
  }

  else if ((*(a1 + 919) & 0x80000000) == 0)
  {
    goto LABEL_38;
  }

  operator delete(*(a1 + 896));
  if ((*(a1 + 887) & 0x80000000) == 0)
  {
LABEL_39:
    if ((*(a1 + 863) & 0x80000000) == 0)
    {
      goto LABEL_40;
    }

LABEL_93:
    operator delete(*(a1 + 840));
    if ((*(a1 + 839) & 0x80000000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_94;
  }

LABEL_92:
  operator delete(*(a1 + 864));
  if (*(a1 + 863) < 0)
  {
    goto LABEL_93;
  }

LABEL_40:
  if ((*(a1 + 839) & 0x80000000) == 0)
  {
    goto LABEL_41;
  }

LABEL_94:
  operator delete(*(a1 + 816));
LABEL_41:
  std::__tree<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval,AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::IntervalRangeComparator,std::allocator<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval>>::destroy(*(a1 + 544));
  v22 = *(a1 + 512);
  if (v22)
  {
    *(a1 + 520) = v22;
    operator delete(v22);
  }

  v23 = *(a1 + 472);
  if (v23)
  {
    *(a1 + 480) = v23;
    operator delete(v23);
  }

  v24 = *(a1 + 448);
  if (v24)
  {
    v25 = *(a1 + 456);
    v26 = *(a1 + 448);
    if (v25 != v24)
    {
      do
      {
        v27 = *(v25 - 24);
        if (v27)
        {
          *(v25 - 16) = v27;
          operator delete(v27);
        }

        v25 -= 32;
      }

      while (v25 != v24);
      v26 = *(a1 + 448);
    }

    *(a1 + 456) = v24;
    operator delete(v26);
  }

  v28 = *(a1 + 424);
  if (v28)
  {
    *(a1 + 432) = v28;
    operator delete(v28);
  }

  v29 = *(a1 + 328);
  if (v29)
  {
    *(a1 + 336) = v29;
    operator delete(v29);
  }

  v30 = *(a1 + 304);
  if (v30)
  {
    *(a1 + 312) = v30;
    operator delete(v30);
  }

  v31 = *(a1 + 280);
  if (v31)
  {
    *(a1 + 288) = v31;
    operator delete(v31);
  }

  v32 = *(a1 + 256);
  if (v32)
  {
    *(a1 + 264) = v32;
    operator delete(v32);
  }

  v33 = *(a1 + 216);
  if (v33)
  {
    *(a1 + 224) = v33;
    operator delete(v33);
  }

  v34 = *(a1 + 192);
  if (v34)
  {
    v35 = *(a1 + 200);
    v36 = *(a1 + 192);
    if (v35 != v34)
    {
      do
      {
        v37 = *(v35 - 24);
        if (v37)
        {
          *(v35 - 16) = v37;
          operator delete(v37);
        }

        v35 -= 32;
      }

      while (v35 != v34);
      v36 = *(a1 + 192);
    }

    *(a1 + 200) = v34;
    operator delete(v36);
  }

  v38 = *(a1 + 168);
  if (v38)
  {
    *(a1 + 176) = v38;
    operator delete(v38);
  }

  v39 = *(a1 + 144);
  if (v39)
  {
    *(a1 + 152) = v39;
    operator delete(v39);
  }

  v40 = *(a1 + 104);
  if (v40)
  {
    *(a1 + 112) = v40;
    operator delete(v40);
  }

  v41 = *(a1 + 80);
  if (v41)
  {
    v42 = *(a1 + 88);
    v43 = *(a1 + 80);
    if (v42 != v41)
    {
      do
      {
        v44 = *(v42 - 24);
        if (v44)
        {
          *(v42 - 16) = v44;
          operator delete(v44);
        }

        v42 -= 32;
      }

      while (v42 != v41);
      v43 = *(a1 + 80);
    }

    *(a1 + 88) = v41;
    operator delete(v43);
  }

  v45 = *(a1 + 56);
  if (v45)
  {
    *(a1 + 64) = v45;
    operator delete(v45);
  }

  return a1;
}

void AGX::ProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::TileDispatchVertexArgumentTable,false,false,AGX::NoCombinedUserDriverArgumentTable>::~ProgramVariant(unint64_t a1)
{
  AGX::ProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::TileDispatchVertexArgumentTable,false,false,AGX::NoCombinedUserDriverArgumentTable>::~ProgramVariant(a1);

  JUMPOUT(0x29ED520D0);
}

unint64_t AGX::TileDispatchVertexProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes>::~TileDispatchVertexProgramVariant(unint64_t a1)
{
  *a1 = &unk_2A23F7810;
  if (*(a1 + 3224))
  {
    v2 = *(a1 + 3232);
    v3 = *(v2 + 16);
    v5[0] = MEMORY[0x29EDCA5F8];
    v5[1] = 3221225472;
    v5[2] = ___ZN3AGX4HeapILb1EE14deallocateImplERKNS1_10AllocationE_block_invoke;
    v5[3] = &__block_descriptor_48_e5_v8__0l;
    v5[4] = v2;
    v5[5] = a1 + 3200;
    dispatch_sync(v3, v5);
    *(a1 + 3225) = 0u;
    *(a1 + 3216) = 0u;
    *(a1 + 3200) = 0u;
  }

  AGX::ProgramVariantESLState<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserVertexArgumentTableLayout,true,8ul>::~ProgramVariantESLState((a1 + 1784));

  return AGX::ProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::TileDispatchVertexArgumentTable,false,false,AGX::NoCombinedUserDriverArgumentTable>::~ProgramVariant(a1);
}

void AGX::IntersectionProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes>::~IntersectionProgramVariant(void *a1)
{
  *a1 = &unk_2A23F7830;
  AGX::ProgramVariantESLState<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserVertexArgumentTableLayout,true,8ul>::~ProgramVariantESLState(a1 + 296);
  AGX::ProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::IntersectionArgumentTable,true,false,AGX::NoCombinedUserDriverArgumentTable>::~ProgramVariant(a1);

  JUMPOUT(0x29ED520D0);
}

unint64_t AGX::ProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::IntersectionArgumentTable,true,false,AGX::NoCombinedUserDriverArgumentTable>::~ProgramVariant(unint64_t a1)
{
  *a1 = &unk_2A23F7A50;
  if (*(a1 + 1568))
  {
    v2 = (a1 + 1544);
    v3 = *(a1 + 1576);
    v4 = *(v3 + 16);
    v51 = MEMORY[0x29EDCA5F8];
    v52 = 3221225472;
    v53 = ___ZN3AGX4HeapILb1EE14deallocateImplERKNS1_10AllocationE_block_invoke;
    v54 = &__block_descriptor_48_e5_v8__0l;
    v55 = v3;
    v56 = a1 + 1544;
    dispatch_sync(v4, &v51);
    *(a1 + 1569) = 0u;
    *v2 = 0u;
    *(a1 + 1560) = 0u;
  }

  if (*(a1 + 1616))
  {
    v5 = *(a1 + 1624);
    v6 = *(v5 + 16);
    v51 = MEMORY[0x29EDCA5F8];
    v52 = 3221225472;
    v53 = ___ZN3AGX4HeapILb1EE14deallocateImplERKNS1_10AllocationE_block_invoke;
    v54 = &__block_descriptor_48_e5_v8__0l;
    v55 = v5;
    v56 = a1 + 1592;
    dispatch_sync(v6, &v51);
    *(a1 + 1617) = 0u;
    *(a1 + 1592) = 0u;
    *(a1 + 1608) = 0u;
  }

  if (*(a1 + 1664))
  {
    v7 = *(a1 + 1672);
    v8 = *(v7 + 16);
    v51 = MEMORY[0x29EDCA5F8];
    v52 = 3221225472;
    v53 = ___ZN3AGX4HeapILb1EE14deallocateImplERKNS1_10AllocationE_block_invoke;
    v54 = &__block_descriptor_48_e5_v8__0l;
    v55 = v7;
    v56 = a1 + 1640;
    dispatch_sync(v8, &v51);
    *(a1 + 1665) = 0u;
    *(a1 + 1640) = 0u;
    *(a1 + 1656) = 0u;
  }

  if (*(a1 + 1712))
  {
    v9 = *(a1 + 1720);
    v10 = *(v9 + 16);
    v51 = MEMORY[0x29EDCA5F8];
    v52 = 3221225472;
    v53 = ___ZN3AGX4HeapILb1EE14deallocateImplERKNS1_10AllocationE_block_invoke;
    v54 = &__block_descriptor_48_e5_v8__0l;
    v55 = v9;
    v56 = a1 + 1688;
    dispatch_sync(v10, &v51);
    *(a1 + 1713) = 0u;
    *(a1 + 1688) = 0u;
    *(a1 + 1704) = 0u;
  }

  v11 = *(a1 + 584);
  if (v11)
  {
    v12 = AGX::ProgramBindingRemap<AGX::HAL300::Encoders,AGX::HAL300::Classes>::~ProgramBindingRemap(v11);
    MEMORY[0x29ED520D0](v12, 0x1030C40704B4075);
  }

  v13 = *(a1 + 576);
  if (v13)
  {
    ProgramBindingsAndDMAList::~ProgramBindingsAndDMAList(v13);
    MEMORY[0x29ED520D0]();
  }

  v14 = *(a1 + 592);
  if (v14)
  {
    AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::unregisterVariantEventInfo(v14, a1);
  }

  if (*(a1 + 2367) < 0)
  {
    operator delete(*(a1 + 2344));
  }

  v15 = *(a1 + 2320);
  if (v15)
  {
    *(a1 + 2328) = v15;
    operator delete(v15);
  }

  v16 = *(a1 + 2296);
  if (v16)
  {
    v17 = *(a1 + 2304);
    v18 = *(a1 + 2296);
    if (v17 != v16)
    {
      do
      {
        v19 = *(v17 - 1);
        v17 -= 3;
        if (v19 < 0)
        {
          operator delete(*v17);
        }
      }

      while (v17 != v16);
      v18 = *(a1 + 2296);
    }

    *(a1 + 2304) = v16;
    operator delete(v18);
  }

  std::__tree<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval,AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::IntervalRangeComparator,std::allocator<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval>>::destroy(*(a1 + 2184));
  v20 = *(a1 + 2144);
  if (v20)
  {
    v21 = *(a1 + 2152);
    v22 = *(a1 + 2144);
    if (v21 != v20)
    {
      do
      {
        v23 = *(v21 - 8);
        if (v23 && !atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v23->__on_zero_shared)(v23);
          std::__shared_weak_count::__release_weak(v23);
        }

        v21 -= 16;
      }

      while (v21 != v20);
      v22 = *(a1 + 2144);
    }

    *(a1 + 2152) = v20;
    operator delete(v22);
  }

  v24 = *(a1 + 2120);
  if (v24)
  {
    *(a1 + 2128) = v24;
    operator delete(v24);
  }

  v25 = *(a1 + 2096);
  if (v25)
  {
    *(a1 + 2104) = v25;
    operator delete(v25);
  }

  if (*(a1 + 2007) < 0)
  {
    operator delete(*(a1 + 1984));
    if ((*(a1 + 1503) & 0x80000000) == 0)
    {
LABEL_42:
      if ((*(a1 + 1471) & 0x80000000) == 0)
      {
        goto LABEL_43;
      }

      goto LABEL_96;
    }
  }

  else if ((*(a1 + 1503) & 0x80000000) == 0)
  {
    goto LABEL_42;
  }

  operator delete(*(a1 + 1480));
  if ((*(a1 + 1471) & 0x80000000) == 0)
  {
LABEL_43:
    if ((*(a1 + 1447) & 0x80000000) == 0)
    {
      goto LABEL_44;
    }

LABEL_97:
    operator delete(*(a1 + 1424));
    if ((*(a1 + 1423) & 0x80000000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_98;
  }

LABEL_96:
  operator delete(*(a1 + 1448));
  if (*(a1 + 1447) < 0)
  {
    goto LABEL_97;
  }

LABEL_44:
  if ((*(a1 + 1423) & 0x80000000) == 0)
  {
    goto LABEL_45;
  }

LABEL_98:
  operator delete(*(a1 + 1400));
LABEL_45:
  std::__tree<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval,AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::IntervalRangeComparator,std::allocator<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval>>::destroy(*(a1 + 1128));
  v26 = *(a1 + 1096);
  if (v26)
  {
    *(a1 + 1104) = v26;
    operator delete(v26);
  }

  v27 = *(a1 + 1056);
  if (v27)
  {
    *(a1 + 1064) = v27;
    operator delete(v27);
  }

  v28 = *(a1 + 1032);
  if (v28)
  {
    v29 = *(a1 + 1040);
    v30 = *(a1 + 1032);
    if (v29 != v28)
    {
      do
      {
        v31 = *(v29 - 24);
        if (v31)
        {
          *(v29 - 16) = v31;
          operator delete(v31);
        }

        v29 -= 32;
      }

      while (v29 != v28);
      v30 = *(a1 + 1032);
    }

    *(a1 + 1040) = v28;
    operator delete(v30);
  }

  v32 = *(a1 + 1008);
  if (v32)
  {
    *(a1 + 1016) = v32;
    operator delete(v32);
  }

  v33 = *(a1 + 912);
  if (v33)
  {
    *(a1 + 920) = v33;
    operator delete(v33);
  }

  v34 = *(a1 + 888);
  if (v34)
  {
    *(a1 + 896) = v34;
    operator delete(v34);
  }

  v35 = *(a1 + 864);
  if (v35)
  {
    *(a1 + 872) = v35;
    operator delete(v35);
  }

  v36 = *(a1 + 840);
  if (v36)
  {
    *(a1 + 848) = v36;
    operator delete(v36);
  }

  v37 = *(a1 + 800);
  if (v37)
  {
    *(a1 + 808) = v37;
    operator delete(v37);
  }

  v38 = *(a1 + 776);
  if (v38)
  {
    v39 = *(a1 + 784);
    v40 = *(a1 + 776);
    if (v39 != v38)
    {
      do
      {
        v41 = *(v39 - 24);
        if (v41)
        {
          *(v39 - 16) = v41;
          operator delete(v41);
        }

        v39 -= 32;
      }

      while (v39 != v38);
      v40 = *(a1 + 776);
    }

    *(a1 + 784) = v38;
    operator delete(v40);
  }

  v42 = *(a1 + 752);
  if (v42)
  {
    *(a1 + 760) = v42;
    operator delete(v42);
  }

  v43 = *(a1 + 728);
  if (v43)
  {
    *(a1 + 736) = v43;
    operator delete(v43);
  }

  v44 = *(a1 + 688);
  if (v44)
  {
    *(a1 + 696) = v44;
    operator delete(v44);
  }

  v45 = *(a1 + 664);
  if (v45)
  {
    v46 = *(a1 + 672);
    v47 = *(a1 + 664);
    if (v46 != v45)
    {
      do
      {
        v48 = *(v46 - 24);
        if (v48)
        {
          *(v46 - 16) = v48;
          operator delete(v48);
        }

        v46 -= 32;
      }

      while (v46 != v45);
      v47 = *(a1 + 664);
    }

    *(a1 + 672) = v45;
    operator delete(v47);
  }

  v49 = *(a1 + 640);
  if (v49)
  {
    *(a1 + 648) = v49;
    operator delete(v49);
  }

  AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::LinkInfo::~LinkInfo(a1 + 8);
  return a1;
}

void AGX::ProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::IntersectionArgumentTable,true,false,AGX::NoCombinedUserDriverArgumentTable>::~ProgramVariant(unint64_t a1)
{
  AGX::ProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::IntersectionArgumentTable,true,false,AGX::NoCombinedUserDriverArgumentTable>::~ProgramVariant(a1);

  JUMPOUT(0x29ED520D0);
}

unint64_t AGX::IntersectionProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes>::~IntersectionProgramVariant(void *a1)
{
  *a1 = &unk_2A23F7830;
  AGX::ProgramVariantESLState<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserVertexArgumentTableLayout,true,8ul>::~ProgramVariantESLState(a1 + 296);

  return AGX::ProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::IntersectionArgumentTable,true,false,AGX::NoCombinedUserDriverArgumentTable>::~ProgramVariant(a1);
}

uint64_t VectorMap<AGX::VertexProgramKey,AGX::ProgramVariantEntry<AGX::HAL300::VertexProgramVariant>,4u>::Chunk::~Chunk(uint64_t a1)
{
  v2 = *(a1 + 976);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(a1 + 984);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(a1 + 928);
  if (v4)
  {
    dispatch_release(v4);
  }

  v5 = *(a1 + 936);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(a1 + 880);
  if (v6)
  {
    dispatch_release(v6);
  }

  v7 = *(a1 + 888);
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = *(a1 + 832);
  if (v8)
  {
    dispatch_release(v8);
  }

  v9 = *(a1 + 840);
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  *(a1 + 624) = &unk_2A23FA6F8;
  if (*(a1 + 815) < 0)
  {
    operator delete(*(a1 + 792));
    if ((*(a1 + 791) & 0x80000000) == 0)
    {
      goto LABEL_19;
    }
  }

  else if ((*(a1 + 791) & 0x80000000) == 0)
  {
    goto LABEL_19;
  }

  operator delete(*(a1 + 768));
LABEL_19:
  *(a1 + 624) = &unk_2A23F7A80;
  v10 = *(a1 + 744);
  if (v10)
  {
    *(a1 + 752) = v10;
    operator delete(v10);
  }

  v11 = *(a1 + 720);
  if (v11)
  {
    *(a1 + 728) = v11;
    operator delete(v11);
  }

  if (*(a1 + 711) < 0)
  {
    operator delete(*(a1 + 688));
  }

  *(a1 + 624) = &unk_2A23F7AC8;
  v12 = *(a1 + 640);
  if (v12)
  {
    *(a1 + 648) = v12;
    operator delete(v12);
  }

  *(a1 + 416) = &unk_2A23FA6F8;
  if (*(a1 + 607) < 0)
  {
    operator delete(*(a1 + 584));
    if ((*(a1 + 583) & 0x80000000) == 0)
    {
      goto LABEL_29;
    }
  }

  else if ((*(a1 + 583) & 0x80000000) == 0)
  {
    goto LABEL_29;
  }

  operator delete(*(a1 + 560));
LABEL_29:
  *(a1 + 416) = &unk_2A23F7A80;
  v13 = *(a1 + 536);
  if (v13)
  {
    *(a1 + 544) = v13;
    operator delete(v13);
  }

  v14 = *(a1 + 512);
  if (v14)
  {
    *(a1 + 520) = v14;
    operator delete(v14);
  }

  if (*(a1 + 503) < 0)
  {
    operator delete(*(a1 + 480));
  }

  *(a1 + 416) = &unk_2A23F7AC8;
  v15 = *(a1 + 432);
  if (v15)
  {
    *(a1 + 440) = v15;
    operator delete(v15);
  }

  *(a1 + 208) = &unk_2A23FA6F8;
  if (*(a1 + 399) < 0)
  {
    operator delete(*(a1 + 376));
    if ((*(a1 + 375) & 0x80000000) == 0)
    {
      goto LABEL_39;
    }
  }

  else if ((*(a1 + 375) & 0x80000000) == 0)
  {
    goto LABEL_39;
  }

  operator delete(*(a1 + 352));
LABEL_39:
  *(a1 + 208) = &unk_2A23F7A80;
  v16 = *(a1 + 328);
  if (v16)
  {
    *(a1 + 336) = v16;
    operator delete(v16);
  }

  v17 = *(a1 + 304);
  if (v17)
  {
    *(a1 + 312) = v17;
    operator delete(v17);
  }

  if (*(a1 + 295) < 0)
  {
    operator delete(*(a1 + 272));
  }

  *(a1 + 208) = &unk_2A23F7AC8;
  v18 = *(a1 + 224);
  if (v18)
  {
    *(a1 + 232) = v18;
    operator delete(v18);
  }

  *a1 = &unk_2A23FA6F8;
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
    if ((*(a1 + 167) & 0x80000000) == 0)
    {
      goto LABEL_49;
    }
  }

  else if ((*(a1 + 167) & 0x80000000) == 0)
  {
    goto LABEL_49;
  }

  operator delete(*(a1 + 144));
LABEL_49:
  *a1 = &unk_2A23F7A80;
  v19 = *(a1 + 120);
  if (v19)
  {
    *(a1 + 128) = v19;
    operator delete(v19);
  }

  v20 = *(a1 + 96);
  if (v20)
  {
    *(a1 + 104) = v20;
    operator delete(v20);
  }

  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  *a1 = &unk_2A23F7AC8;
  v21 = *(a1 + 16);
  if (v21)
  {
    *(a1 + 24) = v21;
    operator delete(v21);
  }

  return a1;
}

void sub_29CDD6F78(_Unwind_Exception *a1)
{
  v4 = v2 + v1;
  v5 = v2 - 8;
  v6 = (v4 - 160);
  do
  {
    AGX::ObjectProgramKey::~ObjectProgramKey(v6);
    v6 = (v7 - 160);
    v5 -= 160;
  }

  while (v5);
  _Unwind_Resume(a1);
}

uint64_t VectorMap<AGX::ObjectProgramKey,AGX::ProgramVariantEntry<AGX::HAL300::ObjectProgramVariant>,4u>::Chunk::~Chunk(uint64_t a1)
{
  v2 = *(a1 + 784);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(a1 + 792);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(a1 + 736);
  if (v4)
  {
    dispatch_release(v4);
  }

  v5 = *(a1 + 744);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(a1 + 688);
  if (v6)
  {
    dispatch_release(v6);
  }

  v7 = *(a1 + 696);
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = *(a1 + 640);
  if (v8)
  {
    dispatch_release(v8);
  }

  v9 = *(a1 + 648);
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  *(a1 + 480) = &unk_2A23F7B50;
  v10 = *(a1 + 608);
  if (v10)
  {
    *(a1 + 616) = v10;
    operator delete(v10);
  }

  v11 = *(a1 + 584);
  if (v11)
  {
    *(a1 + 592) = v11;
    operator delete(v11);
  }

  if (*(a1 + 575) < 0)
  {
    operator delete(*(a1 + 552));
  }

  *(a1 + 480) = &unk_2A23F7B98;
  v12 = *(a1 + 496);
  if (v12)
  {
    *(a1 + 504) = v12;
    operator delete(v12);
  }

  *(a1 + 320) = &unk_2A23F7B50;
  v13 = *(a1 + 448);
  if (v13)
  {
    *(a1 + 456) = v13;
    operator delete(v13);
  }

  v14 = *(a1 + 424);
  if (v14)
  {
    *(a1 + 432) = v14;
    operator delete(v14);
  }

  if (*(a1 + 415) < 0)
  {
    operator delete(*(a1 + 392));
  }

  *(a1 + 320) = &unk_2A23F7B98;
  v15 = *(a1 + 336);
  if (v15)
  {
    *(a1 + 344) = v15;
    operator delete(v15);
  }

  *(a1 + 160) = &unk_2A23F7B50;
  v16 = *(a1 + 288);
  if (v16)
  {
    *(a1 + 296) = v16;
    operator delete(v16);
  }

  v17 = *(a1 + 264);
  if (v17)
  {
    *(a1 + 272) = v17;
    operator delete(v17);
  }

  if (*(a1 + 255) < 0)
  {
    operator delete(*(a1 + 232));
  }

  *(a1 + 160) = &unk_2A23F7B98;
  v18 = *(a1 + 176);
  if (v18)
  {
    *(a1 + 184) = v18;
    operator delete(v18);
  }

  *a1 = &unk_2A23F7B50;
  v19 = *(a1 + 128);
  if (v19)
  {
    *(a1 + 136) = v19;
    operator delete(v19);
  }

  v20 = *(a1 + 104);
  if (v20)
  {
    *(a1 + 112) = v20;
    operator delete(v20);
  }

  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *a1 = &unk_2A23F7B98;
  v21 = *(a1 + 16);
  if (v21)
  {
    *(a1 + 24) = v21;
    operator delete(v21);
  }

  return a1;
}

uint64_t VectorMap<AGX::MeshProgramKey,AGX::ProgramVariantEntry<AGX::HAL300::MeshProgramVariant>,4u>::Chunk::~Chunk(uint64_t a1)
{
  v2 = *(a1 + 1008);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(a1 + 1016);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(a1 + 960);
  if (v4)
  {
    dispatch_release(v4);
  }

  v5 = *(a1 + 968);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(a1 + 912);
  if (v6)
  {
    dispatch_release(v6);
  }

  v7 = *(a1 + 920);
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = *(a1 + 864);
  if (v8)
  {
    dispatch_release(v8);
  }

  v9 = *(a1 + 872);
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  *(a1 + 648) = &unk_2A23FA740;
  if (*(a1 + 847) < 0)
  {
    operator delete(*(a1 + 824));
    if ((*(a1 + 823) & 0x80000000) == 0)
    {
      goto LABEL_19;
    }
  }

  else if ((*(a1 + 823) & 0x80000000) == 0)
  {
    goto LABEL_19;
  }

  operator delete(*(a1 + 800));
LABEL_19:
  *(a1 + 648) = &unk_2A23F7C20;
  v10 = *(a1 + 776);
  if (v10)
  {
    *(a1 + 784) = v10;
    operator delete(v10);
  }

  v11 = *(a1 + 752);
  if (v11)
  {
    *(a1 + 760) = v11;
    operator delete(v11);
  }

  if (*(a1 + 743) < 0)
  {
    operator delete(*(a1 + 720));
  }

  *(a1 + 648) = &unk_2A23F7C68;
  v12 = *(a1 + 664);
  if (v12)
  {
    *(a1 + 672) = v12;
    operator delete(v12);
  }

  *(a1 + 432) = &unk_2A23FA740;
  if (*(a1 + 631) < 0)
  {
    operator delete(*(a1 + 608));
    if ((*(a1 + 607) & 0x80000000) == 0)
    {
      goto LABEL_29;
    }
  }

  else if ((*(a1 + 607) & 0x80000000) == 0)
  {
    goto LABEL_29;
  }

  operator delete(*(a1 + 584));
LABEL_29:
  *(a1 + 432) = &unk_2A23F7C20;
  v13 = *(a1 + 560);
  if (v13)
  {
    *(a1 + 568) = v13;
    operator delete(v13);
  }

  v14 = *(a1 + 536);
  if (v14)
  {
    *(a1 + 544) = v14;
    operator delete(v14);
  }

  if (*(a1 + 527) < 0)
  {
    operator delete(*(a1 + 504));
  }

  *(a1 + 432) = &unk_2A23F7C68;
  v15 = *(a1 + 448);
  if (v15)
  {
    *(a1 + 456) = v15;
    operator delete(v15);
  }

  *(a1 + 216) = &unk_2A23FA740;
  if (*(a1 + 415) < 0)
  {
    operator delete(*(a1 + 392));
    if ((*(a1 + 391) & 0x80000000) == 0)
    {
      goto LABEL_39;
    }
  }

  else if ((*(a1 + 391) & 0x80000000) == 0)
  {
    goto LABEL_39;
  }

  operator delete(*(a1 + 368));
LABEL_39:
  *(a1 + 216) = &unk_2A23F7C20;
  v16 = *(a1 + 344);
  if (v16)
  {
    *(a1 + 352) = v16;
    operator delete(v16);
  }

  v17 = *(a1 + 320);
  if (v17)
  {
    *(a1 + 328) = v17;
    operator delete(v17);
  }

  if (*(a1 + 311) < 0)
  {
    operator delete(*(a1 + 288));
  }

  *(a1 + 216) = &unk_2A23F7C68;
  v18 = *(a1 + 232);
  if (v18)
  {
    *(a1 + 240) = v18;
    operator delete(v18);
  }

  *a1 = &unk_2A23FA740;
  if (*(a1 + 199) < 0)
  {
    operator delete(*(a1 + 176));
    if ((*(a1 + 175) & 0x80000000) == 0)
    {
      goto LABEL_49;
    }
  }

  else if ((*(a1 + 175) & 0x80000000) == 0)
  {
    goto LABEL_49;
  }

  operator delete(*(a1 + 152));
LABEL_49:
  *a1 = &unk_2A23F7C20;
  v19 = *(a1 + 128);
  if (v19)
  {
    *(a1 + 136) = v19;
    operator delete(v19);
  }

  v20 = *(a1 + 104);
  if (v20)
  {
    *(a1 + 112) = v20;
    operator delete(v20);
  }

  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *a1 = &unk_2A23F7C68;
  v21 = *(a1 + 16);
  if (v21)
  {
    *(a1 + 24) = v21;
    operator delete(v21);
  }

  return a1;
}

void sub_29CDD7CC4(_Unwind_Exception *a1)
{
  v4 = v2 + v1;
  v5 = v2 - 8;
  v6 = (v4 - 288);
  do
  {
    AGX::Impl::FragmentProgramKey::~FragmentProgramKey(v6);
    v6 = (v7 - 288);
    v5 -= 288;
  }

  while (v5);
  _Unwind_Resume(a1);
}

void VectorMap<AGX::FragmentProgramKey,AGX::ProgramVariantEntry<AGX::HAL300::FragmentProgramVariant>,4u>::Chunk::~Chunk(uint64_t a1)
{
  v2 = *(a1 + 1296);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(a1 + 1304);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(a1 + 1248);
  if (v4)
  {
    dispatch_release(v4);
  }

  v5 = *(a1 + 1256);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(a1 + 1200);
  if (v6)
  {
    dispatch_release(v6);
  }

  v7 = *(a1 + 1208);
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = *(a1 + 1152);
  if (v8)
  {
    dispatch_release(v8);
  }

  v9 = *(a1 + 1160);
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  AGX::Impl::FragmentProgramKey::~FragmentProgramKey((a1 + 864));
  AGX::Impl::FragmentProgramKey::~FragmentProgramKey((a1 + 576));
  AGX::Impl::FragmentProgramKey::~FragmentProgramKey((a1 + 288));

  AGX::Impl::FragmentProgramKey::~FragmentProgramKey(a1);
}

void sub_29CDD81A8(_Unwind_Exception *a1)
{
  v4 = v2 + v1;
  v5 = v2 - 8;
  v6 = (v4 - 152);
  do
  {
    AGX::ComputeProgramKey::~ComputeProgramKey(v6);
    v6 = (v7 - 152);
    v5 -= 152;
  }

  while (v5);
  _Unwind_Resume(a1);
}

uint64_t VectorMap<AGX::ComputeProgramKey,AGX::ProgramVariantEntry<AGX::HAL300::ComputeProgramVariant>,4u>::Chunk::~Chunk(uint64_t a1)
{
  v2 = *(a1 + 752);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(a1 + 760);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(a1 + 704);
  if (v4)
  {
    dispatch_release(v4);
  }

  v5 = *(a1 + 712);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(a1 + 656);
  if (v6)
  {
    dispatch_release(v6);
  }

  v7 = *(a1 + 664);
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = *(a1 + 608);
  if (v8)
  {
    dispatch_release(v8);
  }

  v9 = *(a1 + 616);
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  *(a1 + 456) = &unk_2A23FA818;
  v10 = *(a1 + 576);
  if (v10)
  {
    *(a1 + 584) = v10;
    operator delete(v10);
  }

  v11 = *(a1 + 552);
  if (v11)
  {
    *(a1 + 560) = v11;
    operator delete(v11);
  }

  if (*(a1 + 543) < 0)
  {
    operator delete(*(a1 + 520));
  }

  *(a1 + 456) = &unk_2A23F7D40;
  v12 = *(a1 + 472);
  if (v12)
  {
    *(a1 + 480) = v12;
    operator delete(v12);
  }

  *(a1 + 304) = &unk_2A23FA818;
  v13 = *(a1 + 424);
  if (v13)
  {
    *(a1 + 432) = v13;
    operator delete(v13);
  }

  v14 = *(a1 + 400);
  if (v14)
  {
    *(a1 + 408) = v14;
    operator delete(v14);
  }

  if (*(a1 + 391) < 0)
  {
    operator delete(*(a1 + 368));
  }

  *(a1 + 304) = &unk_2A23F7D40;
  v15 = *(a1 + 320);
  if (v15)
  {
    *(a1 + 328) = v15;
    operator delete(v15);
  }

  *(a1 + 152) = &unk_2A23FA818;
  v16 = *(a1 + 272);
  if (v16)
  {
    *(a1 + 280) = v16;
    operator delete(v16);
  }

  v17 = *(a1 + 248);
  if (v17)
  {
    *(a1 + 256) = v17;
    operator delete(v17);
  }

  if (*(a1 + 239) < 0)
  {
    operator delete(*(a1 + 216));
  }

  *(a1 + 152) = &unk_2A23F7D40;
  v18 = *(a1 + 168);
  if (v18)
  {
    *(a1 + 176) = v18;
    operator delete(v18);
  }

  *a1 = &unk_2A23FA818;
  v19 = *(a1 + 120);
  if (v19)
  {
    *(a1 + 128) = v19;
    operator delete(v19);
  }

  v20 = *(a1 + 96);
  if (v20)
  {
    *(a1 + 104) = v20;
    operator delete(v20);
  }

  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  *a1 = &unk_2A23F7D40;
  v21 = *(a1 + 16);
  if (v21)
  {
    *(a1 + 24) = v21;
    operator delete(v21);
  }

  return a1;
}

void std::__tree<std::__value_type<AGX::UserIntersectionProgramKey,AGX::UserIntersectionProgram<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::VariantSetEntry>,std::__map_value_compare<AGX::UserIntersectionProgramKey,std::__value_type<AGX::UserIntersectionProgramKey,AGX::UserIntersectionProgram<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::VariantSetEntry>,std::less<AGX::UserIntersectionProgramKey>,true>,std::allocator<std::__value_type<AGX::UserIntersectionProgramKey,AGX::UserIntersectionProgram<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::VariantSetEntry>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<AGX::UserIntersectionProgramKey,AGX::UserIntersectionProgram<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::VariantSetEntry>,std::__map_value_compare<AGX::UserIntersectionProgramKey,std::__value_type<AGX::UserIntersectionProgramKey,AGX::UserIntersectionProgram<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::VariantSetEntry>,std::less<AGX::UserIntersectionProgramKey>,true>,std::allocator<std::__value_type<AGX::UserIntersectionProgramKey,AGX::UserIntersectionProgram<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::VariantSetEntry>>>::destroy(*a1);
    std::__tree<std::__value_type<AGX::UserIntersectionProgramKey,AGX::UserIntersectionProgram<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::VariantSetEntry>,std::__map_value_compare<AGX::UserIntersectionProgramKey,std::__value_type<AGX::UserIntersectionProgramKey,AGX::UserIntersectionProgram<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::VariantSetEntry>,std::less<AGX::UserIntersectionProgramKey>,true>,std::allocator<std::__value_type<AGX::UserIntersectionProgramKey,AGX::UserIntersectionProgram<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::VariantSetEntry>>>::destroy(a1[1]);
    std::__destroy_at[abi:nn200100]<std::pair<AGX::UserIntersectionProgramKey const,AGX::UserIntersectionProgram<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::VariantSetEntry>,0>((a1 + 4));

    operator delete(a1);
  }
}

void std::__tree<std::__value_type<ReflectionKey,AGX::UserIntersectionProgram<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::ReflectionEntry>,std::__map_value_compare<ReflectionKey,std::__value_type<ReflectionKey,AGX::UserIntersectionProgram<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::ReflectionEntry>,std::less<ReflectionKey>,true>,std::allocator<std::__value_type<ReflectionKey,AGX::UserIntersectionProgram<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::ReflectionEntry>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<ReflectionKey,AGX::UserIntersectionProgram<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::ReflectionEntry>,std::__map_value_compare<ReflectionKey,std::__value_type<ReflectionKey,AGX::UserIntersectionProgram<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::ReflectionEntry>,std::less<ReflectionKey>,true>,std::allocator<std::__value_type<ReflectionKey,AGX::UserIntersectionProgram<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::ReflectionEntry>>>::destroy(*a1);
    std::__tree<std::__value_type<ReflectionKey,AGX::UserIntersectionProgram<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::ReflectionEntry>,std::__map_value_compare<ReflectionKey,std::__value_type<ReflectionKey,AGX::UserIntersectionProgram<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::ReflectionEntry>,std::less<ReflectionKey>,true>,std::allocator<std::__value_type<ReflectionKey,AGX::UserIntersectionProgram<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::ReflectionEntry>>>::destroy(a1[1]);
    v2 = a1[10];
    if (v2)
    {
      dispatch_release(v2);
    }

    operator delete(a1);
  }
}

void std::__destroy_at[abi:nn200100]<std::pair<AGX::UserIntersectionProgramKey const,AGX::UserIntersectionProgram<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::VariantSetEntry>,0>(uint64_t a1)
{
  dispatch_release(*(a1 + 144));

  v2 = *(a1 + 120);
  *(a1 + 120) = 0;
  if (v2)
  {
    v3 = *(v2 + 40);
    if (v3 != -1)
    {
      (off_2A23F7EF0[v3])(&v6, v2);
    }

    *(v2 + 40) = -1;
    MEMORY[0x29ED520D0](v2, 0x1022C4093E17AA9);
  }

  *a1 = &unk_2A23F7DC0;
  v4 = *(a1 + 48);
  if (v4)
  {
    *(a1 + 56) = v4;
    operator delete(v4);
  }

  *a1 = &unk_2A23F7E00;
  v5 = *(a1 + 16);
  if (v5)
  {
    *(a1 + 24) = v5;
    operator delete(v5);
  }
}

uint64_t *VisibleFunctionsMap::getVisibleFunctionOffset(int8x8_t *this, const char *__s)
{
  if (__s)
  {
    v4 = strlen(__s);
    if (v4 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v5 = v4;
    if (v4 >= 0x17)
    {
      operator new();
    }

    v28 = v4;
    if (v4)
    {
      memcpy(__dst, __s, v4);
    }

    *(__dst + v5) = 0;
    v6 = v28;
    v7 = __dst[0];
    if ((v28 & 0x80u) == 0)
    {
      v8 = __dst;
    }

    else
    {
      v8 = __dst[0];
    }

    if ((v28 & 0x80u) == 0)
    {
      v9 = v28;
    }

    else
    {
      v9 = __dst[1];
    }

    v10 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](v8, v9);
    v11 = this[1];
    if (!*&v11)
    {
      goto LABEL_47;
    }

    v12 = v10;
    v13 = vcnt_s8(v11);
    v13.i16[0] = vaddlv_u8(v13);
    if (v13.u32[0] > 1uLL)
    {
      v14 = v10;
      if (v10 >= *&v11)
      {
        v14 = v10 % *&v11;
      }
    }

    else
    {
      v14 = (*&v11 - 1) & v10;
    }

    v15 = *(*this + 8 * v14);
    if (v15)
    {
      v16 = *v15;
      if (*v15)
      {
        if (v13.u32[0] < 2uLL)
        {
          v17 = *&v11 - 1;
          while (1)
          {
            v18 = v16[1];
            if (v12 == v18)
            {
              v19 = *(v16 + 39);
              v20 = v19;
              if (v19 < 0)
              {
                v19 = v16[3];
              }

              if (v19 == v9)
              {
                v21 = v20 >= 0 ? (v16 + 2) : v16[2];
                if (!memcmp(v21, v8, v9))
                {
                  goto LABEL_48;
                }
              }
            }

            else if ((v18 & v17) != v14)
            {
              goto LABEL_47;
            }

            v16 = *v16;
            if (!v16)
            {
              goto LABEL_48;
            }
          }
        }

        do
        {
          v22 = v16[1];
          if (v12 == v22)
          {
            v23 = *(v16 + 39);
            v24 = v23;
            if (v23 < 0)
            {
              v23 = v16[3];
            }

            if (v23 == v9)
            {
              v25 = v24 >= 0 ? (v16 + 2) : v16[2];
              if (!memcmp(v25, v8, v9))
              {
                break;
              }
            }
          }

          else
          {
            if (v22 >= *&v11)
            {
              v22 %= *&v11;
            }

            if (v22 != v14)
            {
              goto LABEL_47;
            }
          }

          v16 = *v16;
        }

        while (v16);
      }
    }

    else
    {
LABEL_47:
      v16 = 0;
    }

LABEL_48:
    if (v6 < 0)
    {
      operator delete(v7);
      if (v16)
      {
        return v16[5];
      }
    }

    else if (v16)
    {
      return v16[5];
    }
  }

  return -1;
}

void VisibleFunctionsMap::populate(int8x8_t *this, const AGCDeserializedReply *a2, uint64_t a3)
{
  v3 = a2 + 1024;
  if (*(a2 + 58))
  {
    v4 = *(a2 + 59) == 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = 464;
  if (v4)
  {
    v5 = 1024;
  }

  else
  {
    v3 = a2 + 464;
  }

  v6 = *(a2 + v5);
  v7 = *(v3 + 1);
  if (v6)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    v9 = (v6 + *v6);
    v10 = (v9 - *v9);
    if (*v10 >= 5u)
    {
      v11 = v10[2];
      if (v11)
      {
        v12 = (v9 + v11 + *(v9 + v11));
        v13 = (v12 - *v12);
        if (*v13 >= 0x55u)
        {
          v14 = v13[42];
          if (v14)
          {
            v15 = (v12 + v14 + *(v12 + v14));
            v16 = *v15;
            if (v16)
            {
              v17 = a3;
              v49 = &v15[v16];
              do
              {
                v20 = v15[1];
                v19 = v15 + 1;
                v21 = (v19 + v20);
                v22 = (v21 - *v21);
                v23 = *v22;
                if (v23 < 5)
                {
                  v27 = 0;
                  v25 = 4;
                }

                else
                {
                  v24 = v22[2];
                  if (v22[2])
                  {
                    v24 += v21 + *(v21 + v24);
                  }

                  v25 = v24 + 4;
                  if (v23 >= 7 && (v26 = v22[3]) != 0)
                  {
                    v27 = *(v21 + v26);
                  }

                  else
                  {
                    v27 = 0;
                  }
                }

                v28 = strlen(v25);
                if (v28 >= 0x7FFFFFFFFFFFFFF8)
                {
                  std::__throw_bad_array_new_length[abi:nn200100]();
                }

                v29 = v28;
                v50 = v19;
                if (v28 >= 0x17)
                {
                  operator new();
                }

                v52 = v28;
                if (v28)
                {
                  memmove(__p, v25, v28);
                }

                *(__p + v29) = 0;
                v53 = v27 + v17;
                v30 = v52;
                if ((v52 & 0x80u) == 0)
                {
                  v31 = __p;
                }

                else
                {
                  v31 = __p[0];
                }

                if ((v52 & 0x80u) == 0)
                {
                  v32 = v52;
                }

                else
                {
                  v32 = __p[1];
                }

                v33 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](v31, v32);
                v34 = v33;
                v35 = this[1];
                if (!*&v35)
                {
                  goto LABEL_73;
                }

                v36 = vcnt_s8(v35);
                v36.i16[0] = vaddlv_u8(v36);
                if (v36.u32[0] > 1uLL)
                {
                  v37 = v33;
                  if (v33 >= *&v35)
                  {
                    v37 = v33 % *&v35;
                  }
                }

                else
                {
                  v37 = (*&v35 - 1) & v33;
                }

                v38 = *(*this + 8 * v37);
                if (!v38 || (v39 = *v38) == 0)
                {
LABEL_73:
                  operator new();
                }

                if (v36.u32[0] < 2uLL)
                {
                  while (1)
                  {
                    v40 = v39[1];
                    if (v40 == v34)
                    {
                      v41 = *(v39 + 39);
                      v42 = v41;
                      if (v41 < 0)
                      {
                        v41 = v39[3];
                      }

                      if (v41 == v32)
                      {
                        v43 = v42 >= 0 ? (v39 + 2) : v39[2];
                        if (!memcmp(v43, v31, v32))
                        {
                          v17 = a3;
                          v15 = v50;
                          if ((v30 & 0x80) != 0)
                          {
                            goto LABEL_17;
                          }

                          goto LABEL_18;
                        }
                      }
                    }

                    else if ((v40 & (*&v35 - 1)) != v37)
                    {
                      goto LABEL_73;
                    }

                    v39 = *v39;
                    if (!v39)
                    {
                      goto LABEL_73;
                    }
                  }
                }

                while (1)
                {
                  v44 = v39[1];
                  if (v44 == v34)
                  {
                    break;
                  }

                  if (v44 >= *&v35)
                  {
                    v44 %= *&v35;
                  }

                  if (v44 != v37)
                  {
                    goto LABEL_73;
                  }

LABEL_61:
                  v39 = *v39;
                  if (!v39)
                  {
                    goto LABEL_73;
                  }
                }

                v45 = *(v39 + 39);
                v46 = v45;
                if (v45 < 0)
                {
                  v45 = v39[3];
                }

                if (v45 != v32)
                {
                  goto LABEL_61;
                }

                v47 = v46 >= 0 ? (v39 + 2) : v39[2];
                if (memcmp(v47, v31, v32))
                {
                  goto LABEL_61;
                }

                v15 = v50;
                if ((v30 & 0x80) != 0)
                {
LABEL_17:
                  operator delete(__p[0]);
                }

LABEL_18:
                ;
              }

              while (v15 != v49);
            }
          }
        }
      }
    }
  }
}

void sub_29CDD92C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,unsigned int>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,unsigned int>,void *>>>>::~unique_ptr[abi:nn200100](va);
  if (v12 < 0)
  {
    operator delete(v13);
  }

  _Unwind_Resume(a1);
}

void ProgramBindingsAndDMAList::ProgramBindingsAndDMAList(ProgramBindingsAndDMAList *this, const AGCDeserializedReply *a2, int a3)
{
  *(this + 3) = 0u;
  *(this + 104) = 0u;
  v4 = (this + 104);
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  if (!a3)
  {
    v8 = a2 + 784;
    if (*(a2 + 28))
    {
      v9 = *(a2 + 29) == 0;
    }

    else
    {
      v9 = 1;
    }

    v10 = 224;
    if (v9)
    {
      v10 = 784;
    }

    else
    {
      v8 = a2 + 224;
    }

    v11 = *(a2 + v10);
    v12 = *(v8 + 1);
    if (v11)
    {
      v13 = v12 == 0;
    }

    else
    {
      v13 = 1;
    }

    if (v13)
    {
      BackendMetadataFBPtr = 0;
    }

    else
    {
      BackendMetadataFBPtr = (v11 + *v11);
    }

    v14 = (BackendMetadataFBPtr - *BackendMetadataFBPtr);
    if (*v14 < 5u)
    {
      goto LABEL_20;
    }

    v7 = v14[2];
    if (!v7)
    {
      goto LABEL_20;
    }

LABEL_19:
    v15 = (BackendMetadataFBPtr + v7 + *(BackendMetadataFBPtr + v7));
    goto LABEL_21;
  }

  BackendMetadataFBPtr = AGCDeserializedReply::getBackendMetadataFBPtr(a2, "agc.deferred_attributes@md");
  v6 = (BackendMetadataFBPtr - *BackendMetadataFBPtr);
  if (*v6 >= 5u)
  {
    v7 = v6[2];
    if (v7)
    {
      goto LABEL_19;
    }
  }

LABEL_20:
  v15 = 0;
LABEL_21:
  v16 = (v15 + *(v15 - *v15 + 16));
  if (*(v16 + *v16) > ((*(this + 2) - *this) >> 3))
  {
    operator new();
  }

  v17 = *v15;
  if (*(v15 + *(v15 - v17 + 16) + *(v15 + *(v15 - v17 + 16))))
  {
    operator new();
  }

  v18 = (v15 + *(v15 - v17 + 20));
  if (*(v18 + *v18) > ((*(this + 5) - *(this + 3)) >> 3))
  {
    operator new();
  }

  v19 = *v15;
  if (*(v15 + *(v15 - v19 + 20) + *(v15 + *(v15 - v19 + 20))))
  {
    operator new();
  }

  v20 = (v15 + *(v15 - v19 + 12));
  if (*(v20 + *v20) > ((*(this + 8) - *(this + 6)) >> 3))
  {
    operator new();
  }

  v21 = *v15;
  if (*(v15 + *(v15 - v21 + 12) + *(v15 + *(v15 - v21 + 12))))
  {
    operator new();
  }

  v22 = (v15 + *(v15 - v21 + 24));
  if (*(v22 + *v22) > ((*(this + 11) - *(this + 9)) >> 3))
  {
    operator new();
  }

  v23 = *v15;
  if (*(v15 + *(v15 - v23 + 24) + *(v15 + *(v15 - v23 + 24))))
  {
    operator new();
  }

  v24 = *(v15 - v23 + 22);
  if (v24)
  {
    LODWORD(v24) = *(v15 + v24);
  }

  *(this + 24) = v24;
  v25 = (v15 + *(v15 - *v15 + 8));
  if (*(v25 + *v25) > ((*(this + 20) - *(this + 18)) >> 3))
  {
    operator new();
  }

  v26 = *v15;
  v27 = (v15 - v26);
  if (*(v15 + *(v15 - v26 + 8) + *(v15 + *(v15 - v26 + 8))))
  {
    operator new();
  }

  v34 = -v26;
  v35 = *v27;
  if (v35 <= 0x66)
  {
    *v4 = 0;
LABEL_59:
    *(this + 14) = 0;
LABEL_60:
    *(this + 15) = 0;
LABEL_61:
    v33 = 0;
    *(this + 16) = 0;
    goto LABEL_62;
  }

  v28 = (v15 + v34);
  v29 = v28[51];
  if (v28[51])
  {
    v29 = *(v15 + v29);
  }

  *v4 = v29;
  if (v35 < 0x69)
  {
    goto LABEL_59;
  }

  v30 = v28[52];
  if (v28[52])
  {
    v30 = *(v15 + v30);
  }

  *(this + 14) = v30;
  if (v35 < 0x6B)
  {
    goto LABEL_60;
  }

  v31 = v28[53];
  if (v28[53])
  {
    v31 = *(v15 + v31);
  }

  *(this + 15) = v31;
  if (v35 < 0x6D)
  {
    goto LABEL_61;
  }

  v32 = v28[54];
  if (v28[54])
  {
    v32 = *(v15 + v32);
  }

  *(this + 16) = v32;
  if (v35 < 0x6F)
  {
    v33 = 0;
  }

  else
  {
    v33 = v28[55];
    if (v28[55])
    {
      v33 = *(v15 + v33);
    }
  }

LABEL_62:
  *(this + 17) = v33;
}

void sub_29CDD9F84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  v13 = *(v10 + 144);
  if (v13)
  {
    *(v10 + 152) = v13;
    operator delete(v13);
    v14 = *(v10 + 72);
    if (!v14)
    {
LABEL_3:
      v15 = *v11;
      if (!*v11)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v14 = *(v10 + 72);
    if (!v14)
    {
      goto LABEL_3;
    }
  }

  *(v10 + 80) = v14;
  operator delete(v14);
  v15 = *v11;
  if (!*v11)
  {
LABEL_4:
    v16 = *(v10 + 24);
    if (!v16)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_9:
  *(v10 + 56) = v15;
  operator delete(v15);
  v16 = *(v10 + 24);
  if (!v16)
  {
LABEL_5:
    v17 = *v10;
    if (!*v10)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

LABEL_10:
  *(v10 + 32) = v16;
  operator delete(v16);
  v17 = *v10;
  if (!*v10)
  {
LABEL_6:
    _Unwind_Resume(exception_object);
  }

LABEL_11:
  *(v10 + 8) = v17;
  operator delete(v17);
  _Unwind_Resume(exception_object);
}

void std::vector<ProgramBindingsAndDMAList::GatherTableEntry *>::push_back[abi:nn200100](uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = v7 >> 3;
    v9 = (v7 >> 3) + 1;
    if (v9 >> 61)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
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

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    *(8 * v8) = *a2;
    v5 = 8 * v8 + 8;
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

uint64_t AGX::ProgramBindingRemap<AGX::HAL300::Encoders,AGX::HAL300::Classes>::isShaderExecuteIndirectCompatible(void *a1, int a2)
{
  v2 = a1 + 98;
  if (a1[28])
  {
    v3 = a1[29] == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = 28;
  if (v3)
  {
    v4 = 98;
  }

  else
  {
    v2 = a1 + 28;
  }

  v5 = a1[v4];
  v6 = v2[1];
  if (v5)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = (v5 + *v5);
  }

  v9 = (v8 - *v8);
  if (*v9 >= 5u && (v10 = v9[2]) != 0)
  {
    v11 = (v8 + v10 + *(v8 + v10));
  }

  else
  {
    v11 = 0;
  }

  v12 = (v11 - *v11);
  v13 = v12[8];
  v14 = *(v11 + v13);
  v15 = (v11 + v13 + v14);
  v16 = *v15;
  if (v16)
  {
    v17 = 0;
    v18 = 4 * v16;
    v19 = v11 + v13 + v14;
    do
    {
      v20 = v15[v17 / 4 + 1];
      v21 = &v19[v17 + v20 - *(&v15[v17 / 4 + 1] + v20)];
      if (*(v21 + 2) < 7u)
      {
        return 0;
      }

      v22 = *(v21 + 5);
      if (!v22 || (*&v19[v17 + 4 + v20 + v22] & 0x80000000) == 0)
      {
        return 0;
      }

      v17 += 4;
    }

    while (v18 != v17);
  }

  v23 = v12[10];
  v24 = *(v11 + v23);
  v25 = (v11 + v23 + v24);
  v26 = *v25;
  if (v26)
  {
    v27 = 0;
    v28 = 4 * v26;
    v29 = v11 + v23 + v24;
    do
    {
      v30 = v25[v27 / 4 + 1];
      v31 = &v29[v27 + v30 - *(&v25[v27 / 4 + 1] + v30)];
      if (*(v31 + 2) < 7u)
      {
        return 0;
      }

      v32 = *(v31 + 5);
      if (!v32)
      {
        return 0;
      }

      v33 = *&v29[v27 + 4 + v30 + v32];
      if ((v33 & 0x80000000) == 0 && (v33 & 0xFFF00000) != 0x400000)
      {
        return 0;
      }

      v27 += 4;
    }

    while (v28 != v27);
  }

  v34 = v12[12];
  v35 = *(v11 + v34);
  v36 = (v11 + v34 + v35);
  v37 = *v36;
  if (v37)
  {
    v38 = 0;
    v39 = 4 * v37;
    v40 = v11 + v34 + v35;
    do
    {
      v41 = v36[v38 / 4 + 1];
      v42 = v41 - *(&v36[v38 / 4 + 1] + v41);
      v43 = &v40[v38 + v42];
      v44 = *(v43 + 2);
      if (v44 >= 5)
      {
        v45 = *(v43 + 4);
        if (v45)
        {
          v46 = v40[v38 + 4 + v41 + v45];
          v47 = v46 > 0x3E || ((1 << v46) & 0x4000000000033800) == 0;
          if (!v47 || ((v48 = v46 - 93, v49 = v48 > 0x14, v50 = (1 << v48) & 0x100031, !v49) ? (v51 = v50 == 0) : (v51 = 1), !v51))
          {
            if (v44 < 7)
            {
              return 0;
            }

            v52 = *&v40[v38 + 10 + v42];
            if (!v52)
            {
              return 0;
            }

            v53 = *&v40[v38 + 4 + v41 + v52];
            if ((v53 & 0x80000000) == 0 && (v53 & 0xFFF00000) != 0x400000)
            {
              return 0;
            }
          }
        }
      }

      v38 += 4;
    }

    while (v39 != v38);
  }

  v55 = v12[6];
  v56 = *(v11 + v55);
  v57 = (v11 + v55 + v56);
  v58 = *v57;
  if (v58)
  {
    v59 = 0;
    v60 = 4 * v58;
    if (a1[58])
    {
      v61 = a1[59] == 0;
    }

    else
    {
      v61 = 1;
    }

    v62 = 58;
    if (v61)
    {
      v62 = 128;
    }

    v63 = a1 + 128;
    if (!v61)
    {
      v63 = a1 + 58;
    }

    v64 = a1[v62];
    if (v64)
    {
      v65 = v63[1] == 0;
    }

    else
    {
      v65 = 1;
    }

    v66 = !v65;
    v67 = v60 - 4;
    v68 = v11 + v55 + v56;
    while (1)
    {
      v69 = v57[v59 / 4 + 1];
      v70 = &v68[v59 + v69 - *(&v57[v59 / 4 + 1] + v69)];
      if (*(v70 + 2) >= 7u && (v71 = *(v70 + 5)) != 0)
      {
        v72 = *&v68[v59 + 4 + v69 + v71];
        if (v66)
        {
          goto LABEL_70;
        }
      }

      else
      {
        v72 = 0;
        if (v66)
        {
LABEL_70:
          v73 = (v64 + *v64);
          goto LABEL_71;
        }
      }

      v73 = 0;
LABEL_71:
      v74 = (v73 - *v73);
      if (*v74 >= 5u && (v75 = v74[2]) != 0)
      {
        v76 = (v73 + v75 + *(v73 + v75));
      }

      else
      {
        v76 = 0;
      }

      v77 = (v76 - *v76);
      v79 = *v77 >= 0x1Fu && (v78 = v77[15]) != 0 && *(v76 + v78) != 0;
      v80 = v72 & 0xFFFFF;
      if ((v72 & 0xFFFFFu) - 49 < 2)
      {
        v81 = 1;
LABEL_83:
        v82 = v80 == 48 && v79;
        goto LABEL_84;
      }

      v81 = v80 == 53 && v79;
      if ((v72 & 0xFFFFE) != 0x2C)
      {
        goto LABEL_83;
      }

      v82 = 1;
LABEL_84:
      v83 = v72 >= 0;
      if (!a2)
      {
        v82 = v81;
      }

      v84 = v83 & v82;
      if ((v84 & 1) == 0)
      {
        v3 = v67 == v59;
        v59 += 4;
        if (!v3)
        {
          continue;
        }
      }

      return v84 ^ 1u;
    }
  }

  return 1;
}