void *std::__hash_table<std::__hash_value_type<MTLHashKey,MTLOpaqueGPUArchiverUnitId *>,std::__unordered_map_hasher<MTLHashKey,std::__hash_value_type<MTLHashKey,MTLOpaqueGPUArchiverUnitId *>,CompareFunctionIdHash,CompareFunctionIdHash,true>,std::__unordered_map_equal<MTLHashKey,std::__hash_value_type<MTLHashKey,MTLOpaqueGPUArchiverUnitId *>,CompareFunctionIdHash,CompareFunctionIdHash,true>,std::allocator<std::__hash_value_type<MTLHashKey,MTLOpaqueGPUArchiverUnitId *>>>::__emplace_unique_key_args<MTLHashKey,std::piecewise_construct_t const&,std::tuple<MTLHashKey const&>,std::tuple<>>(void *a1, MTLHashKey *this)
{
  v4 = MTLHashKey::hash(this);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    std::__hash_table<std::__hash_value_type<MTLHashKey,MTLOpaqueGPUArchiverUnitId *>,std::__unordered_map_hasher<MTLHashKey,std::__hash_value_type<MTLHashKey,MTLOpaqueGPUArchiverUnitId *>,CompareFunctionIdHash,CompareFunctionIdHash,true>,std::__unordered_map_equal<MTLHashKey,std::__hash_value_type<MTLHashKey,MTLOpaqueGPUArchiverUnitId *>,CompareFunctionIdHash,CompareFunctionIdHash,true>,std::allocator<std::__hash_value_type<MTLHashKey,MTLOpaqueGPUArchiverUnitId *>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<MTLHashKey const&>,std::tuple<>>();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!MTLHashKey::operator==(v11 + 2, this))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_185C60804(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<MTLHashKey,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<MTLHashKey,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0_4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

uint64_t OUTLINED_FUNCTION_1_2@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  if (*(result + 335) < 0)
  {
    v3 = *(result + 312);
  }

  return result;
}

void MTLIOAccelPooledResourceRelease(os_unfair_lock_s *a1)
{
  v1 = a1;
  v2 = a1 + 76;
  v3 = *&a1[76]._os_unfair_lock_opaque;
  if (v3)
  {
    v4 = v3 + 2;
    *&v2->_os_unfair_lock_opaque = 0;
    v8 = v3;
    os_unfair_lock_lock(v3 + 10);
    if (v2[8]._os_unfair_lock_opaque == v8[22]._os_unfair_lock_opaque)
    {
      v5 = v4 + 4;
      v6 = *&v4[4]._os_unfair_lock_opaque;
      *&v1[78]._os_unfair_lock_opaque = v6;
      if (v6)
      {
        v7 = v6 + 80;
      }

      else
      {
        v7 = v4 + 6;
      }

      *&v7->_os_unfair_lock_opaque = v1 + 78;
      *&v5->_os_unfair_lock_opaque = v1;
      *&v1[80]._os_unfair_lock_opaque = v5;
      ++v4[9]._os_unfair_lock_opaque;
      *&v2[6]._os_unfair_lock_opaque = mach_absolute_time();
    }

    else
    {
    }

    os_unfair_lock_unlock(v4 + 8);
    a1 = v8;
  }
}

void std::vector<MTLRasterizationRateLayerDescriptor *>::resize(void *a1, unint64_t a2, uint64_t *a3)
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
    std::vector<MTLRasterizationRateLayerDescriptor *>::__append(a1, a2 - v3, a3);
  }
}

void std::vector<MTLRasterizationRateLayerDescriptor *>::__append(uint64_t a1, unint64_t a2, uint64_t *a3)
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
        v18 = vmovn_s64(vcgeq_u64(v16, vorrq_s8(vdupq_n_s64(v12), xmmword_185DB7AF0)));
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
      std::vector<std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>::__throw_length_error[abi:ne200100]();
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
      std::__allocate_at_least[abi:ne200100]<std::allocator<objc_object  {objcproto18MTLIOScratchBuffer}*>>(a1, v11);
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
      v27 = vmovn_s64(vcgeq_u64(v25, vorrq_s8(vdupq_n_s64(v19), xmmword_185DB7AF0)));
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

uint64_t MTLShouldEnableNewCompilerScheduler()
{
  v0 = _os_feature_enabled_impl();
  v1 = dyld_program_sdk_at_least();
  if (!v1)
  {
    return MTLEnvVarAggregator::GET_MTL_COMPILER_SCHEDULER_VERSION(v1, 0) == 1;
  }

  v2 = MTLEnvVarAggregator::GET_MTL_COMPILER_SCHEDULER_VERSION(1, 0xFFFFFFFFLL);
  if (v2 == -1)
  {
    return v0;
  }

  else
  {
    return v2 == 1;
  }
}

uint64_t MTLEnvVarAggregator::GET_MTL_COMPILER_SCHEDULER_VERSION(MTLEnvVarAggregator *this, uint64_t a2)
{
  if (!MTLEnvVarAggregator::isInternalBuild(this))
  {
    return 0;
  }

  {
    MTLEnvVarAggregator::GET_MTL_COMPILER_SCHEDULER_VERSION();
  }

  if (MTLEnvVarAggregator::GET_MTL_COMPILER_SCHEDULER_VERSION(BOOL,int)::ev)
  {
    return strtol(MTLEnvVarAggregator::GET_MTL_COMPILER_SCHEDULER_VERSION(BOOL,int)::ev, 0, 0);
  }

  return a2;
}

void __MTLGetOptimalCompilerProcessesCount_block_invoke()
{
  if ((atomic_load_explicit(&_ZGVZZ35MTLGetOptimalCompilerProcessesCountEUb_E7fromEnv, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_ZGVZZ35MTLGetOptimalCompilerProcessesCountEUb_E7fromEnv))
  {
    _ZZZ35MTLGetOptimalCompilerProcessesCountEUb_E7fromEnv = MTLEnvVarAggregator::GET_MTL_MAX_COMPILER_TASKS(0, 0);
    __cxa_guard_release(&_ZGVZZ35MTLGetOptimalCompilerProcessesCountEUb_E7fromEnv);
  }

  v0 = _ZZZ35MTLGetOptimalCompilerProcessesCountEUb_E7fromEnv;
  if (!_ZZZ35MTLGetOptimalCompilerProcessesCountEUb_E7fromEnv)
  {
    v0 = 2;
  }

  MTLGetOptimalCompilerProcessesCount::ret = v0;
}

uint64_t MTLEnvVarAggregator::GET_MTL_MAX_COMPILER_TASKS(MTLEnvVarAggregator *this, uint64_t a2)
{
  if (!MTLEnvVarAggregator::isInternalBuild(this))
  {
    return 0;
  }

  {
    MTLEnvVarAggregator::GET_MTL_MAX_COMPILER_TASKS();
  }

  if (MTLEnvVarAggregator::GET_MTL_MAX_COMPILER_TASKS(BOOL,int)::ev)
  {
    return strtol(MTLEnvVarAggregator::GET_MTL_MAX_COMPILER_TASKS(BOOL,int)::ev, 0, 0);
  }

  return a2;
}

uint64_t MTLFeatureSetSupportsSamplingFromPixelFormat(unint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (a1 >= 0x13)
  {
    if (a3)
    {
      v7 = [MEMORY[0x1E695DF20] dictionaryWithObject:@"Unrecognized Metal Feature Set for this platform" forKey:*MEMORY[0x1E696A578]];
      v8 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"MTLLibraryErrorDomain" code:3 userInfo:v7];
      v5 = 0;
      *a3 = v8;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v4 = MTLGetGPUFamilyFromFeatureSet(qword_185DD30C0[a1]);
    MTLPixelFormatQuery::MTLPixelFormatQuery(v12, v4);
    v11 = 0;
    memset(&v10, 0, 48);
    MTLPixelFormatGetInfoForFeatureSetQuery(v12, a2, &v10);
    v5 = v10.i8[8] & 1;
    if (__p)
    {
      v14 = __p;
      operator delete(__p);
    }
  }

  return v5;
}

void sub_185C6338C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MTLGPUFamilySupportsSamplingFromPixelFormat(MTLGPUFamily a1, uint64_t a2, uint64_t *a3)
{
  if (a1 > 2000)
  {
    if ((a1 - 3001) >= 3 && (a1 - 2001) >= 2 && (a1 - 4001) >= 2)
    {
      goto LABEL_11;
    }
  }

  else if ((a1 - 1001) >= 0xA && a1 != -1009)
  {
LABEL_11:
    if (!a3)
    {
      return 0;
    }

    v7 = [MEMORY[0x1E695DF20] dictionaryWithObject:@"Unrecognized Metal GPU Family" forKey:*MEMORY[0x1E696A578]];
    v8 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"MTLLibraryErrorDomain" code:1 userInfo:v7];
    v5 = 0;
    *a3 = v8;
    return v5;
  }

  MTLPixelFormatQuery::MTLPixelFormatQuery(v11, a1);
  v10 = 0;
  memset(&v9, 0, 48);
  MTLPixelFormatGetInfoForFeatureSetQuery(v11, a2, &v9);
  v5 = v9.i8[8] & 1;
  if (__p)
  {
    v13 = __p;
    operator delete(__p);
  }

  return v5;
}

void sub_185C634C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MTLPixelFormatGetName(uint64_t a1)
{
  v3 = 0;
  memset(v2, 0, sizeof(v2));
  MTLPixelFormatGetInfoForDevice(0, a1, v2);
  return *&v2[0];
}

uint64_t MTLPixelFormatCompatibilityString(uint64_t a1)
{
  v6 = 0;
  memset(v5, 0, sizeof(v5));
  MTLPixelFormatGetInfoForDevice(0, a1, v5);
  v1 = objc_opt_new();
  v2 = v1;
  v3 = DWORD2(v5[0]);
  if ((DWORD2(v5[0]) & 0x10000) != 0)
  {
    [v1 addObject:@"float"];
    v3 = DWORD2(v5[0]);
    if ((DWORD2(v5[0]) & 0x20000) == 0)
    {
LABEL_3:
      if ((v3 & 0x40000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((DWORD2(v5[0]) & 0x20000) == 0)
  {
    goto LABEL_3;
  }

  [v2 addObject:@"half"];
  v3 = DWORD2(v5[0]);
  if ((DWORD2(v5[0]) & 0x40000) == 0)
  {
LABEL_4:
    if ((v3 & 0x80000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  [v2 addObject:@"int"];
  v3 = DWORD2(v5[0]);
  if ((DWORD2(v5[0]) & 0x80000) == 0)
  {
LABEL_5:
    if ((v3 & 0x100000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  [v2 addObject:@"uint"];
  v3 = DWORD2(v5[0]);
  if ((DWORD2(v5[0]) & 0x100000) == 0)
  {
LABEL_6:
    if ((v3 & 0x200000) == 0)
    {
      goto LABEL_7;
    }

LABEL_15:
    [v2 addObject:@"ushort"];
    if ((DWORD2(v5[0]) & 0x20000000) == 0)
    {
      return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v2];
    }

    goto LABEL_8;
  }

LABEL_14:
  [v2 addObject:@"short"];
  v3 = DWORD2(v5[0]);
  if ((DWORD2(v5[0]) & 0x200000) != 0)
  {
    goto LABEL_15;
  }

LABEL_7:
  if ((v3 & 0x20000000) != 0)
  {
LABEL_8:
    [v2 addObject:@"ulong"];
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v2];
}

uint64_t MTLPixelFormatComputeiOSTotalSizeUsed(uint64_t a1, uint64_t *a2, uint64_t a3, int a4)
{
  if (!a3)
  {
    return 0;
  }

  v5 = a3;
  v8 = 0;
  v15 = 0;
  v16 = 0;
  v14 = 0;
  do
  {
    v9 = *(a1 + 16);
    v12[0] = *a1;
    v12[1] = v9;
    v12[2] = *(a1 + 32);
    v13 = *(a1 + 48);
    if ((WORD4(v12[0]) & 0x401) == 1)
    {
      adjustPixelFormatForiOSDevice(*a2, v12, &v16, &v15, &v14, 1, 1);
      if (a4)
      {
        v10 = &v16;
      }

      else
      {
        v10 = &v15;
      }

      v8 = ((v14 + v8 - 1) & -v14) + *v10;
    }

    ++a2;
    a1 += 56;
    --v5;
  }

  while (v5);
  return v8;
}

BOOL MTLReadWriteTextureIsSupported(void *a1, uint64_t a2)
{
  if (!a1 || [a1 supportsFamily:1003])
  {
    v9 = 0;
    memset(v8, 0, sizeof(v8));
    MTLPixelFormatGetInfoForDevice(a1, a2, v8);
    return (DWORD2(v8[0]) >> 1) & 1;
  }

  v5 = [a1 readWriteTextureSupport];
  v6 = a2 - 10;
  if ((a2 - 10) <= 0x3C)
  {
    if (((1 << v6) & 0x100000000000E019) != 0)
    {
      return v5 > 1;
    }

    if (((1 << v6) & 0x380000000000) != 0)
    {
      return v5 != 0;
    }
  }

  v4 = 0;
  if ((a2 - 73) <= 0x34 && ((1 << (a2 - 73)) & 0x1C070000000003) != 0)
  {
    return v5 > 1;
  }

  return v4;
}

void MTLPixelFormatQuery::MTLPixelFormatQuery(MTLPixelFormatQuery *this, MTLGPUFamily a2)
{
  *this = 0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 4) = 0;
  MTLPixelFormatQuery::initGPUFamiliesCache(this);
}

void sub_185C63870(_Unwind_Exception *exception_object)
{
  v3 = v2;
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 24) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(exception_object);
}

void MTLPixelFormatQuery::initGPUFamiliesCache(MTLPixelFormatQuery *this)
{
  v2 = *(this + 1);
  if (v2 <= 1005)
  {
    if (v2 > 1002)
    {
      if (v2 == 1003)
      {
LABEL_40:
        v18 = 1003;
        std::vector<MTLTagType>::push_back[abi:ne200100](this + 2, &v18);
        v18 = 3002;
        std::vector<MTLTagType>::push_back[abi:ne200100](this + 2, &v18);
        goto LABEL_41;
      }

      if (v2 == 1004)
      {
LABEL_39:
        v18 = 1004;
        std::vector<MTLTagType>::push_back[abi:ne200100](this + 2, &v18);
        goto LABEL_40;
      }

LABEL_38:
      v18 = 1005;
      std::vector<MTLTagType>::push_back[abi:ne200100](this + 2, &v18);
      v18 = 3003;
      std::vector<MTLTagType>::push_back[abi:ne200100](this + 2, &v18);
      goto LABEL_39;
    }

    if (v2 != -1009)
    {
      if (v2 == 1001)
      {
LABEL_42:
        v18 = 1001;
        std::vector<MTLTagType>::push_back[abi:ne200100](this + 2, &v18);
        v3 = 3001;
        goto LABEL_43;
      }

      if (v2 != 1002)
      {
        return;
      }

LABEL_41:
      v18 = 1002;
      std::vector<MTLTagType>::push_back[abi:ne200100](this + 2, &v18);
      goto LABEL_42;
    }

    goto LABEL_22;
  }

  if (v2 <= 1008)
  {
    if (v2 == 1006)
    {
LABEL_37:
      v18 = 1006;
      std::vector<MTLTagType>::push_back[abi:ne200100](this + 2, &v18);
      goto LABEL_38;
    }

    if (v2 == 1007)
    {
LABEL_36:
      v18 = 1007;
      std::vector<MTLTagType>::push_back[abi:ne200100](this + 2, &v18);
      goto LABEL_37;
    }

LABEL_35:
    v18 = 1008;
    std::vector<MTLTagType>::push_back[abi:ne200100](this + 2, &v18);
    goto LABEL_36;
  }

  if (v2 <= 2000)
  {
    if (v2 == 1009)
    {
LABEL_34:
      v18 = 1009;
      std::vector<MTLTagType>::push_back[abi:ne200100](this + 2, &v18);
      goto LABEL_35;
    }

    if (v2 != 1010)
    {
      return;
    }

    v18 = 1010;
    std::vector<MTLTagType>::push_back[abi:ne200100](this + 2, &v18);
LABEL_22:
    v5 = *(this + 3);
    v4 = *(this + 4);
    if (v5 >= v4)
    {
      v7 = *(this + 2);
      v8 = v5 - v7;
      v9 = (v5 - v7) >> 3;
      v10 = v9 + 1;
      if ((v9 + 1) >> 61)
      {
        std::vector<std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>::__throw_length_error[abi:ne200100]();
      }

      v11 = v4 - v7;
      if (v11 >> 2 > v10)
      {
        v10 = v11 >> 2;
      }

      v12 = v11 >= 0x7FFFFFFFFFFFFFF8;
      v13 = 0x1FFFFFFFFFFFFFFFLL;
      if (!v12)
      {
        v13 = v10;
      }

      if (v13)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<MTLTagType>>(this + 16, v13);
      }

      v14 = (v5 - v7) >> 3;
      v15 = (8 * v9);
      v16 = (8 * v9 - 8 * v14);
      *v15 = -1009;
      v6 = v15 + 1;
      memcpy(v16, v7, v8);
      v17 = *(this + 2);
      *(this + 2) = v16;
      *(this + 3) = v6;
      *(this + 4) = 0;
      if (v17)
      {
        operator delete(v17);
      }
    }

    else
    {
      *v5 = -1009;
      v6 = v5 + 8;
    }

    *(this + 3) = v6;
    goto LABEL_34;
  }

  if (v2 != 2001)
  {
    if (v2 != 2002)
    {
      return;
    }

    v18 = 2002;
    std::vector<MTLTagType>::push_back[abi:ne200100](this + 2, &v18);
    v18 = 3003;
    std::vector<MTLTagType>::push_back[abi:ne200100](this + 2, &v18);
  }

  v18 = 2001;
  std::vector<MTLTagType>::push_back[abi:ne200100](this + 2, &v18);
  v18 = 3001;
  std::vector<MTLTagType>::push_back[abi:ne200100](this + 2, &v18);
  v3 = 3002;
LABEL_43:
  v18 = v3;
  std::vector<MTLTagType>::push_back[abi:ne200100](this + 2, &v18);
}

uint64_t MTLAccelerationStructureInstanceDescriptorSize(MTLAccelerationStructureInstanceDescriptorType a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 < (MTLAccelerationStructureInstanceDescriptorTypeIndirectMotion|MTLAccelerationStructureInstanceDescriptorTypeUserID))
  {
    return qword_185DD3158[a1];
  }

  MTLReportFailure(0, "MTLAccelerationStructureInstanceDescriptorSize", 1260, @"Invalid instance descriptor type", a5, a6, a7, a8, v8);
  return 0;
}

uint64_t newStringFromConstantValue(unsigned __int16 *a1, uint64_t a2)
{
  ComponentCount = MTLDataTypeGetComponentCount(a2);
  ComponentType = MTLDataTypeGetComponentType(a2);
  v6 = _MTLConstantDataSize(ComponentType);
  std::string::basic_string[abi:ne200100]<0>(&v19, "(");
  if (ComponentCount)
  {
    for (i = 0; i != ComponentCount; ++i)
    {
      __s = 0;
      if (i)
      {
        std::string::append(&v19, ", ");
      }

      if (ComponentType <= 36)
      {
        if (ComponentType > 28)
        {
          if (ComponentType == 29)
          {
            asprintf(&__s, "%i", *a1);
          }

          else
          {
            if (ComponentType != 33)
            {
              goto LABEL_33;
            }

            asprintf(&__s, "%u", *a1);
          }
        }

        else if (ComponentType == 3)
        {
          asprintf(&__s, "%f", *a1);
        }

        else
        {
          if (ComponentType != 16)
          {
            goto LABEL_33;
          }

          _H0 = *a1;
          __asm { FCVT            D0, H0 }

          asprintf(&__s, "%f", _D0);
        }
      }

      else if (ComponentType <= 44)
      {
        if (ComponentType == 37)
        {
          asprintf(&__s, "%i", *a1);
        }

        else
        {
          if (ComponentType != 41)
          {
            goto LABEL_33;
          }

          asprintf(&__s, "%u", *a1);
        }
      }

      else if (ComponentType == 45)
      {
        asprintf(&__s, "%i", *a1);
      }

      else
      {
        if (ComponentType != 49 && ComponentType != 53)
        {
LABEL_33:
          abort();
        }

        asprintf(&__s, "%u", *a1);
      }

      std::string::append(&v19, __s);
      free(__s);
      a1 = (a1 + v6);
    }
  }

  std::string::append(&v19, ")");
  v14 = objc_alloc(MEMORY[0x1E696AEC0]);
  if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v15 = &v19;
  }

  else
  {
    v15 = v19.__r_.__value_.__r.__words[0];
  }

  v16 = [v14 initWithUTF8String:v15];
  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__r_.__value_.__l.__data_);
  }

  return v16;
}

void sub_185C6BD88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *MTLConstantStorage::appendConstantData(uint64_t a1, std::vector<char> *a2, char *a3)
{
  v5 = _MTLConstantDataSize(*a3);
  begin = a2->__begin_;
  v7 = a2->__end_ - a2->__begin_;
  v8 = *a3;
  v9 = v7 + v5 + 1;
  if (v7 >= v9)
  {
    if (v7 > v9)
    {
      a2->__end_ = &begin[v9];
    }
  }

  else
  {
    std::vector<unsigned char>::__append(a2, v5 + 1);
    begin = a2->__begin_;
  }

  begin[v7] = v8;
  v10 = *(a3 + 1);
  v11 = &a2->__begin_[v7 + 1];

  return memcpy(v11, v10, v5);
}

uint64_t MTLConstantStorage::isEqual(void *a1, void *a2)
{
  if (a1[2] != a2[2])
  {
    return 0;
  }

  v4 = a1 + 1;
  v5 = *a1;
  if (*a1 != a1 + 1)
  {
    v6 = *a2;
    do
    {
      v7 = *(v5 + 55);
      if (v7 >= 0)
      {
        v8 = *(v5 + 55);
      }

      else
      {
        v8 = v5[5];
      }

      v9 = *(v6 + 55);
      v10 = v9;
      if ((v9 & 0x80u) != 0)
      {
        v9 = v6[5];
      }

      if (v8 != v9)
      {
        return 0;
      }

      v11 = v7 >= 0 ? v5 + 4 : v5[4];
      v12 = v10 >= 0 ? v6 + 4 : v6[4];
      if (memcmp(v11, v12, v8))
      {
        return 0;
      }

      v13 = *(v5 + 56);
      if (v13 != *(v6 + 56))
      {
        return 0;
      }

      v14 = v5[8];
      v15 = v6[8];
      v16 = _MTLConstantDataSize(v13);
      if (memcmp(v14, v15, v16))
      {
        return 0;
      }

      v17 = v5[1];
      v18 = v5;
      if (v17)
      {
        do
        {
          v5 = v17;
          v17 = *v17;
        }

        while (v17);
      }

      else
      {
        do
        {
          v5 = v18[2];
          v19 = *v5 == v18;
          v18 = v5;
        }

        while (!v19);
      }

      v20 = v6[1];
      if (v20)
      {
        do
        {
          v21 = v20;
          v20 = *v20;
        }

        while (v20);
      }

      else
      {
        do
        {
          v21 = v6[2];
          v19 = *v21 == v6;
          v6 = v21;
        }

        while (!v19);
      }

      v6 = v21;
    }

    while (v5 != v4);
  }

  if (a1[5] != a2[5])
  {
    return 0;
  }

  v22 = a1[3];
  v23 = a1 + 4;
  if (v22 != a1 + 4)
  {
    v24 = a2[3];
    while (*(v22 + 16) == *(v24 + 16))
    {
      v25 = *(v22 + 40);
      if (v25 != *(v24 + 40))
      {
        break;
      }

      v26 = v22[6];
      v27 = v24[6];
      v28 = _MTLConstantDataSize(v25);
      if (memcmp(v26, v27, v28))
      {
        break;
      }

      v29 = v22[1];
      v30 = v22;
      if (v29)
      {
        do
        {
          v22 = v29;
          v29 = *v29;
        }

        while (v29);
      }

      else
      {
        do
        {
          v22 = v30[2];
          v19 = *v22 == v30;
          v30 = v22;
        }

        while (!v19);
      }

      v31 = v24[1];
      if (v31)
      {
        do
        {
          v32 = v31;
          v31 = *v31;
        }

        while (v31);
      }

      else
      {
        do
        {
          v32 = v24[2];
          v19 = *v32 == v24;
          v24 = v32;
        }

        while (!v19);
      }

      result = 1;
      v24 = v32;
      if (v22 == v23)
      {
        return result;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t MTLConstantStorage::hashData(MTLConstantStorage *this)
{
  memset(&v37, 0, sizeof(v37));
  memset(&v36, 0, sizeof(v36));
  std::vector<std::string>::reserve(&v36, *(this + 2));
  v2 = *this;
  if (*this != (this + 8))
  {
    do
    {
      std::vector<std::string>::push_back[abi:ne200100](&v36, v2 + 2);
      v3 = *(v2 + 1);
      if (v3)
      {
        do
        {
          v4 = v3;
          v3 = *v3;
        }

        while (v3);
      }

      else
      {
        do
        {
          v4 = *(v2 + 2);
          v5 = *v4 == v2;
          v2 = v4;
        }

        while (!v5);
      }

      v2 = v4;
    }

    while (v4 != (this + 8));
  }

  v6 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v36.__end_ - v36.__begin_) >> 3));
  if (v36.__end_ == v36.__begin_)
  {
    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *,false>(v36.__begin_, &v36.__end_->__r_.__value_.__l.__data_, &v38, v7, 1);
  begin = v36.__begin_;
  for (i = v36.__end_; begin != i; ++begin)
  {
    v10 = SHIBYTE(begin->__r_.__value_.__r.__words[2]);
    if (v10 < 0)
    {
      size = begin->__r_.__value_.__l.__size_;
    }

    else
    {
      size = SHIBYTE(begin->__r_.__value_.__r.__words[2]);
    }

    v12 = v37.__begin_;
    v13 = v37.__end_ - v37.__begin_;
    v14 = size + v37.__end_ - v37.__begin_;
    if (v37.__end_ - v37.__begin_ >= v14)
    {
      if (v37.__end_ - v37.__begin_ > v14)
      {
        v37.__end_ += size;
      }
    }

    else
    {
      std::vector<unsigned char>::__append(&v37, size);
      v12 = v37.__begin_;
      LOBYTE(v10) = *(&begin->__r_.__value_.__s + 23);
    }

    v15 = begin;
    if ((v10 & 0x80) != 0)
    {
      v15 = begin->__r_.__value_.__r.__words[0];
    }

    memcpy(&v12[v13], v15, size);
    v38 = begin;
    v16 = std::__tree<std::__value_type<std::string,MTLConstantStorage::ConstantData>,std::__map_value_compare<std::string,std::__value_type<std::string,MTLConstantStorage::ConstantData>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MTLConstantStorage::ConstantData>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(this, &begin->__r_.__value_.__l.__data_);
    MTLConstantStorage::appendConstantData(v16, &v37, (v16 + 56));
  }

  v35 = 0;
  *__src = 0u;
  v19 = *(this + 3);
  v17 = this + 24;
  v18 = v19;
  if (v19 != v17 + 8)
  {
    v20 = *(v18 + 16);
    _MTLConstantDataSize(v18[40]);
    operator new[]();
  }

  std::__sort<std::__less<unsigned short,unsigned short> &,unsigned short *>();
  v21 = __src[0];
  for (j = __src[1]; v21 != j; ++v21)
  {
    v23 = *v21;
    v33 = *v21;
    v24 = v37.__begin_;
    v25 = v37.__end_ - v37.__begin_;
    if ((v37.__end_ - v37.__begin_) > 0xFFFFFFFFFFFFFFFDLL)
    {
      v37.__end_ += 2;
    }

    else
    {
      std::vector<unsigned char>::__append(&v37, 2uLL);
      v24 = v37.__begin_;
      v23 = v33;
    }

    *&v24[v25] = v23;
    v38 = &v33;
    v26 = std::__tree<std::__value_type<unsigned short,MTLConstantStorage::ConstantData>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,MTLConstantStorage::ConstantData>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,MTLConstantStorage::ConstantData>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short &&>,std::tuple<>>(v17, &v33);
    MTLConstantStorage::appendConstantData(v26, &v37, v26 + 40);
  }

  v27 = v37.__begin_;
  end = v37.__end_;
  v29 = v37.__end_ - v37.__begin_;
  if (((v37.__end_ - v37.__begin_) & 3) != 0)
  {
    v30 = (v29 & 0xFFFFFFFFFFFFFFFCLL) + 4;
    if (v30 <= v29)
    {
      if (v30 < v29)
      {
        end = &v37.__begin_[v30];
        v37.__end_ = &v37.__begin_[v30];
      }
    }

    else
    {
      std::vector<unsigned char>::__append(&v37, v30 - v29);
      v27 = v37.__begin_;
      end = v37.__end_;
    }
  }

  v31 = _MTLHashState(v27, end - v27);
  if (__src[0])
  {
    __src[1] = __src[0];
    operator delete(__src[0]);
  }

  __src[0] = &v36;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__src);
  if (v37.__begin_)
  {
    v37.__end_ = v37.__begin_;
    operator delete(v37.__begin_);
  }

  return v31;
}

void sub_185C6CAFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char *__p, char *a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19)
{
  if (__p)
  {
    a12 = __p;
    operator delete(__p);
  }

  __p = &a15;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (a18)
  {
    a19 = a18;
    operator delete(a18);
  }

  _Unwind_Resume(a1);
}

void std::vector<std::string>::reserve(std::vector<std::string> *this, std::vector<std::string>::size_type __n)
{
  if (0xAAAAAAAAAAAAAAABLL * ((this->__end_cap_.__value_ - this->__begin_) >> 3) < __n)
  {
    if (__n < 0xAAAAAAAAAAAAAABLL)
    {
      v2 = this->__end_ - this->__begin_;
      v3.__end_cap_.__value_ = this;
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(this, __n);
    }

    std::vector<std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>::__throw_length_error[abi:ne200100]();
  }
}

uint64_t MTLConstantStorage::getConstantCountForFunction(MTLConstantStorage *this, _MTLFunction *a2, NSString **a3, int a4)
{
  v33 = *MEMORY[0x1E69E9840];
  *a3 = 0;
  v8 = [(_MTLFunction *)a2 functionConstants];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v9)
  {
    v10 = v9;
    v26 = a2;
    v27 = a3;
    v11 = 0;
    v12 = *v29;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v29 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v28 + 1) + 8 * i);
        ConstantValue = MTLConstantStorage::findConstantValue(this, v14);
        if (ConstantValue)
        {
          v16 = ConstantValue;
          v17 = *ConstantValue;
          if ([(MTLFunctionConstant *)v14 type]!= v17)
          {
            v18 = MEMORY[0x1E696AEC0];
            v19 = [(MTLFunctionConstant *)v14 name];
            v20 = [(MTLFunctionConstant *)v14 index];
            v21 = MTLDataTypeString([(MTLFunctionConstant *)v14 type]);
            v22 = [v18 stringWithFormat:@"Constant %@ (%lu) is of type %@ but value found has type %@", v19, v20, v21, MTLDataTypeString(*v16)];
LABEL_16:
            *v27 = v22;
            v11 = 0xFFFFFFFFLL;
            goto LABEL_18;
          }

          v11 = (v11 + 1);
        }

        else if (a4 && [(MTLFunctionConstant *)v14 required]&& MTLFailureTypeGetEnabled(1uLL))
        {
          v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Constant %@ (%lu) value is required by function %@", -[MTLFunctionConstant name](v14, "name"), -[MTLFunctionConstant index](v14, "index"), -[_MTLFunction name](v26, "name"), v25];
          goto LABEL_16;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v28 objects:v32 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v11 = 0;
  }

LABEL_18:
  v23 = *MEMORY[0x1E69E9840];
  return v11;
}

unsigned __int16 *MTLConstantStorage::constantDataWithFunctionConstant(MTLConstantStorage *this, MTLFunctionConstant *a2)
{
  result = MTLConstantStorage::findConstantValue(this, a2);
  if (result)
  {
    v4 = result;
    v5 = *result;
    if ([(MTLFunctionConstant *)a2 type]== v5)
    {
      return *(v4 + 1);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void *MTLConstantStorage::newNamedConstantArray(MTLConstantStorage *this)
{
  v2 = objc_opt_new();
  v5 = *this;
  v3 = this + 8;
  v4 = v5;
  if (v5 != v3)
  {
    do
    {
      v6 = v4 + 4;
      if (*(v4 + 55) < 0)
      {
        v6 = *v6;
      }

      v7 = -[MTLNamedConstantValue initWithValue:type:name:]([MTLNamedConstantValue alloc], "initWithValue:type:name:", v4[8], *(v4 + 56), [MEMORY[0x1E696AEC0] stringWithUTF8String:v6]);
      [v2 addObject:v7];

      v8 = v4[1];
      if (v8)
      {
        do
        {
          v9 = v8;
          v8 = *v8;
        }

        while (v8);
      }

      else
      {
        do
        {
          v9 = v4[2];
          v10 = *v9 == v4;
          v4 = v9;
        }

        while (!v10);
      }

      v4 = v9;
    }

    while (v9 != v3);
  }

  return v2;
}

void *MTLConstantStorage::newIndexedConstantArray(MTLConstantStorage *this)
{
  v2 = objc_opt_new();
  v3 = *(this + 3);
  v4 = this + 32;
  if (v3 != this + 32)
  {
    do
    {
      v5 = [[MTLIndexedConstantValue alloc] initWithValue:*(v3 + 6) type:v3[40] index:*(v3 + 16)];
      [v2 addObject:v5];

      v6 = *(v3 + 1);
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = *(v3 + 2);
          v8 = *v7 == v3;
          v3 = v7;
        }

        while (!v8);
      }

      v3 = v7;
    }

    while (v7 != v4);
  }

  return v2;
}

uint64_t arrayDescription(NSArray *a1)
{
  v4 = *MEMORY[0x1E69E9840];
  if ([(NSArray *)a1 count])
  {
    operator new[]();
  }

  v1 = MEMORY[0x1E695DEC8];
  v2 = *MEMORY[0x1E69E9840];

  return [v1 array];
}

uint64_t newConstantScriptForFunction(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {

    return [a1 newConstantScriptForFunction:a2 name:a3 specializedName:a4 errorMessage:a5];
  }

  else
  {
    v10 = objc_alloc_init(MTLFunctionConstantValues);
    v11 = [(MTLFunctionConstantValues *)v10 newConstantScriptForFunction:a2 name:a3 specializedName:a4 errorMessage:a5];

    return v11;
  }
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<unsigned short,MTLConstantStorage::ConstantData>,void *>>>::operator()[abi:ne200100](uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = __p[6];
    if (v3)
    {
      MEMORY[0x1865FF1F0](v3, 0x1000C8077774924);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *,false>(uint64_t a1, const void **a2, uint64_t a3, uint64_t a4, char a5)
{
LABEL_1:
  v8 = a2 - 3;
  v74 = a2 - 6;
  v9 = a2 - 9;
  v10 = a1;
LABEL_2:
  v11 = 1 - a4;
  while (1)
  {
    a1 = v10;
    v12 = v11;
    v13 = a2 - v10;
    v14 = 0xAAAAAAAAAAAAAAABLL * (a2 - v10);
    if (v14 > 2)
    {
      break;
    }

    if (v14 < 2)
    {
      return;
    }

    if (v14 == 2)
    {
      if (std::__map_value_compare<std::string,std::__value_type<std::string,MTLConstantStorage::ConstantData>,std::less<std::string>,true>::operator()[abi:ne200100](a3, a2 - 3, v10))
      {
LABEL_77:
        v122 = v10[2];
        v98 = *v10;
        v70 = *v8;
        v10[2] = v8[2];
        *v10 = v70;
        *v8 = v98;
        v59 = v122;
        goto LABEL_78;
      }

      return;
    }

LABEL_10:
    if (v13 <= 575)
    {
      if (a5)
      {

        std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *>(v10, a2, a3);
      }

      else
      {

        std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *>(v10, a2, a3);
      }

      return;
    }

    if (v12 == 1)
    {
      if (v10 != a2)
      {

        std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *,std::string *>(v10, a2, a2, a3);
      }

      return;
    }

    v15 = v14 >> 1;
    v16 = &v10[3 * (v14 >> 1)];
    if (v13 >= 0xC01)
    {
      v17 = std::__map_value_compare<std::string,std::__value_type<std::string,MTLConstantStorage::ConstantData>,std::less<std::string>,true>::operator()[abi:ne200100](a3, &v10[3 * v15], v10);
      v18 = std::__map_value_compare<std::string,std::__value_type<std::string,MTLConstantStorage::ConstantData>,std::less<std::string>,true>::operator()[abi:ne200100](a3, a2 - 3, (a1 + 24 * v15));
      if (v17)
      {
        if (v18)
        {
          v100 = *(a1 + 16);
          v76 = *a1;
          v19 = *v8;
          *(a1 + 16) = *(a2 - 1);
          *a1 = v19;
          goto LABEL_27;
        }

        v106 = *(a1 + 16);
        v82 = *a1;
        v27 = *v16;
        *(a1 + 16) = v16[2];
        *a1 = v27;
        v16[2] = v106;
        *v16 = v82;
        if (std::__map_value_compare<std::string,std::__value_type<std::string,MTLConstantStorage::ConstantData>,std::less<std::string>,true>::operator()[abi:ne200100](a3, a2 - 3, (a1 + 24 * v15)))
        {
          v100 = v16[2];
          v76 = *v16;
          v28 = *v8;
          v16[2] = *(a2 - 1);
          *v16 = v28;
LABEL_27:
          *v8 = v76;
          *(a2 - 1) = v100;
        }
      }

      else if (v18)
      {
        v102 = v16[2];
        v78 = *v16;
        v23 = *v8;
        v16[2] = *(a2 - 1);
        *v16 = v23;
        *v8 = v78;
        *(a2 - 1) = v102;
        if (std::__map_value_compare<std::string,std::__value_type<std::string,MTLConstantStorage::ConstantData>,std::less<std::string>,true>::operator()[abi:ne200100](a3, (a1 + 24 * v15), a1))
        {
          v103 = *(a1 + 16);
          v79 = *a1;
          v24 = *v16;
          *(a1 + 16) = v16[2];
          *a1 = v24;
          v16[2] = v103;
          *v16 = v79;
        }
      }

      v29 = a1 + 24 * v15 - 24;
      v30 = std::__map_value_compare<std::string,std::__value_type<std::string,MTLConstantStorage::ConstantData>,std::less<std::string>,true>::operator()[abi:ne200100](a3, v29, (a1 + 24));
      v31 = std::__map_value_compare<std::string,std::__value_type<std::string,MTLConstantStorage::ConstantData>,std::less<std::string>,true>::operator()[abi:ne200100](a3, v74, v29);
      if (v30)
      {
        if (v31)
        {
          v32 = *(a1 + 40);
          v33 = *(a1 + 24);
          v34 = *(a2 - 4);
          *(a1 + 24) = *v74;
          *(a1 + 40) = v34;
          *v74 = v33;
          *(a2 - 4) = v32;
        }

        else
        {
          v86 = *(a1 + 24);
          v110 = *(a1 + 40);
          v39 = *(a1 + 24 * v15 - 8);
          *(a1 + 24) = *v29;
          *(a1 + 40) = v39;
          *(a1 + 24 * v15 - 8) = v110;
          *v29 = v86;
          if (std::__map_value_compare<std::string,std::__value_type<std::string,MTLConstantStorage::ConstantData>,std::less<std::string>,true>::operator()[abi:ne200100](a3, v74, v29))
          {
            v111 = *(a1 + 24 * v15 - 8);
            v87 = *v29;
            v40 = *v74;
            *(a1 + 24 * v15 - 8) = *(a2 - 4);
            *v29 = v40;
            *v74 = v87;
            *(a2 - 4) = v111;
          }
        }
      }

      else if (v31)
      {
        v107 = *(a1 + 24 * v15 - 8);
        v83 = *v29;
        v35 = *v74;
        *(a1 + 24 * v15 - 8) = *(a2 - 4);
        *v29 = v35;
        *v74 = v83;
        *(a2 - 4) = v107;
        if (std::__map_value_compare<std::string,std::__value_type<std::string,MTLConstantStorage::ConstantData>,std::less<std::string>,true>::operator()[abi:ne200100](a3, v29, (a1 + 24)))
        {
          v84 = *(a1 + 24);
          v108 = *(a1 + 40);
          v36 = *(a1 + 24 * v15 - 8);
          *(a1 + 24) = *v29;
          *(a1 + 40) = v36;
          *(a1 + 24 * v15 - 8) = v108;
          *v29 = v84;
        }
      }

      v41 = a1 + 24 * v15;
      v42 = std::__map_value_compare<std::string,std::__value_type<std::string,MTLConstantStorage::ConstantData>,std::less<std::string>,true>::operator()[abi:ne200100](a3, (v41 + 24), (a1 + 48));
      v43 = std::__map_value_compare<std::string,std::__value_type<std::string,MTLConstantStorage::ConstantData>,std::less<std::string>,true>::operator()[abi:ne200100](a3, a2 - 9, (v41 + 24));
      if (v42)
      {
        if (v43)
        {
          v44 = *(a1 + 64);
          v45 = *(a1 + 48);
          v46 = *(a2 - 7);
          *(a1 + 48) = *v9;
          *(a1 + 64) = v46;
          *v9 = v45;
          goto LABEL_47;
        }

        v90 = *(a1 + 48);
        v114 = *(a1 + 64);
        v49 = *(v41 + 40);
        *(a1 + 48) = *(v41 + 24);
        *(a1 + 64) = v49;
        *(v41 + 40) = v114;
        *(v41 + 24) = v90;
        if (std::__map_value_compare<std::string,std::__value_type<std::string,MTLConstantStorage::ConstantData>,std::less<std::string>,true>::operator()[abi:ne200100](a3, a2 - 9, (v41 + 24)))
        {
          v115 = *(v41 + 40);
          v91 = *(v41 + 24);
          v50 = *v9;
          *(v41 + 40) = *(a2 - 7);
          *(v41 + 24) = v50;
          *v9 = v91;
          v44 = v115;
LABEL_47:
          *(a2 - 7) = v44;
        }
      }

      else if (v43)
      {
        v112 = *(v41 + 40);
        v88 = *(v41 + 24);
        v47 = *v9;
        *(v41 + 40) = *(a2 - 7);
        *(v41 + 24) = v47;
        *v9 = v88;
        *(a2 - 7) = v112;
        if (std::__map_value_compare<std::string,std::__value_type<std::string,MTLConstantStorage::ConstantData>,std::less<std::string>,true>::operator()[abi:ne200100](a3, (v41 + 24), (a1 + 48)))
        {
          v89 = *(a1 + 48);
          v113 = *(a1 + 64);
          v48 = *(v41 + 40);
          *(a1 + 48) = *(v41 + 24);
          *(a1 + 64) = v48;
          *(v41 + 40) = v113;
          *(v41 + 24) = v89;
        }
      }

      v51 = std::__map_value_compare<std::string,std::__value_type<std::string,MTLConstantStorage::ConstantData>,std::less<std::string>,true>::operator()[abi:ne200100](a3, v16, v29);
      v52 = std::__map_value_compare<std::string,std::__value_type<std::string,MTLConstantStorage::ConstantData>,std::less<std::string>,true>::operator()[abi:ne200100](a3, (v41 + 24), v16);
      if (v51)
      {
        if (v52)
        {
          v116 = *(v29 + 16);
          v92 = *v29;
          *v29 = *(v41 + 24);
          *(v29 + 16) = *(v41 + 40);
          goto LABEL_56;
        }

        v119 = *(v29 + 16);
        v95 = *v29;
        *v29 = *v16;
        *(v29 + 16) = v16[2];
        v16[2] = v119;
        *v16 = v95;
        if (std::__map_value_compare<std::string,std::__value_type<std::string,MTLConstantStorage::ConstantData>,std::less<std::string>,true>::operator()[abi:ne200100](a3, (v41 + 24), v16))
        {
          v116 = v16[2];
          v92 = *v16;
          *v16 = *(v41 + 24);
          v16[2] = *(v41 + 40);
LABEL_56:
          *(v41 + 40) = v116;
          *(v41 + 24) = v92;
        }
      }

      else if (v52)
      {
        v117 = v16[2];
        v93 = *v16;
        *v16 = *(v41 + 24);
        v16[2] = *(v41 + 40);
        *(v41 + 40) = v117;
        *(v41 + 24) = v93;
        if (std::__map_value_compare<std::string,std::__value_type<std::string,MTLConstantStorage::ConstantData>,std::less<std::string>,true>::operator()[abi:ne200100](a3, v16, v29))
        {
          v118 = *(v29 + 16);
          v94 = *v29;
          *v29 = *v16;
          *(v29 + 16) = v16[2];
          v16[2] = v118;
          *v16 = v94;
        }
      }

      v120 = *(a1 + 16);
      v96 = *a1;
      v53 = *v16;
      *(a1 + 16) = v16[2];
      *a1 = v53;
      v16[2] = v120;
      *v16 = v96;
      goto LABEL_58;
    }

    v20 = std::__map_value_compare<std::string,std::__value_type<std::string,MTLConstantStorage::ConstantData>,std::less<std::string>,true>::operator()[abi:ne200100](a3, v10, &v10[3 * v15]);
    v21 = std::__map_value_compare<std::string,std::__value_type<std::string,MTLConstantStorage::ConstantData>,std::less<std::string>,true>::operator()[abi:ne200100](a3, a2 - 3, a1);
    if (v20)
    {
      if (v21)
      {
        v101 = v16[2];
        v77 = *v16;
        v22 = *v8;
        v16[2] = *(a2 - 1);
        *v16 = v22;
LABEL_36:
        *v8 = v77;
        *(a2 - 1) = v101;
        goto LABEL_58;
      }

      v109 = v16[2];
      v85 = *v16;
      v37 = *a1;
      v16[2] = *(a1 + 16);
      *v16 = v37;
      *(a1 + 16) = v109;
      *a1 = v85;
      if (std::__map_value_compare<std::string,std::__value_type<std::string,MTLConstantStorage::ConstantData>,std::less<std::string>,true>::operator()[abi:ne200100](a3, a2 - 3, a1))
      {
        v101 = *(a1 + 16);
        v77 = *a1;
        v38 = *v8;
        *(a1 + 16) = *(a2 - 1);
        *a1 = v38;
        goto LABEL_36;
      }
    }

    else if (v21)
    {
      v104 = *(a1 + 16);
      v80 = *a1;
      v25 = *v8;
      *(a1 + 16) = *(a2 - 1);
      *a1 = v25;
      *v8 = v80;
      *(a2 - 1) = v104;
      if (std::__map_value_compare<std::string,std::__value_type<std::string,MTLConstantStorage::ConstantData>,std::less<std::string>,true>::operator()[abi:ne200100](a3, a1, (a1 + 24 * v15)))
      {
        v105 = v16[2];
        v81 = *v16;
        v26 = *a1;
        v16[2] = *(a1 + 16);
        *v16 = v26;
        *(a1 + 16) = v105;
        *a1 = v81;
      }
    }

LABEL_58:
    if ((a5 & 1) == 0 && !std::__map_value_compare<std::string,std::__value_type<std::string,MTLConstantStorage::ConstantData>,std::less<std::string>,true>::operator()[abi:ne200100](a3, (a1 - 24), a1))
    {
      v10 = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::string *,std::__less<void,void> &>(a1, a2, a3);
      goto LABEL_65;
    }

    v54 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::string *,std::__less<void,void> &>(a1, a2, a3);
    if ((v55 & 1) == 0)
    {
      goto LABEL_63;
    }

    v56 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *>(a1, v54, a3);
    v10 = (v54 + 24);
    if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *>(v54 + 24, a2, a3))
    {
      a4 = -v12;
      a2 = v54;
      if (v56)
      {
        return;
      }

      goto LABEL_1;
    }

    v11 = v12 + 1;
    if (!v56)
    {
LABEL_63:
      std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *,false>(a1, v54, a3, -v12, a5 & 1);
      v10 = (v54 + 24);
LABEL_65:
      a5 = 0;
      a4 = -v12;
      goto LABEL_2;
    }
  }

  if (v14 != 3)
  {
    if (v14 == 4)
    {

      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *,0>(v10, v10 + 3, v10 + 6, (a2 - 3), a3);
      return;
    }

    if (v14 == 5)
    {
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *,0>(v10, v10 + 3, v10 + 6, (v10 + 9), a3);
      if (!std::__map_value_compare<std::string,std::__value_type<std::string,MTLConstantStorage::ConstantData>,std::less<std::string>,true>::operator()[abi:ne200100](a3, a2 - 3, v10 + 9))
      {
        return;
      }

      v62 = v10[11];
      v63 = *(v10 + 9);
      v64 = *(a2 - 1);
      *(v10 + 9) = *v8;
      v10[11] = v64;
      *v8 = v63;
      *(a2 - 1) = v62;
      if (!std::__map_value_compare<std::string,std::__value_type<std::string,MTLConstantStorage::ConstantData>,std::less<std::string>,true>::operator()[abi:ne200100](a3, v10 + 9, v10 + 6))
      {
        return;
      }

      v65 = v10[8];
      v66 = *(v10 + 3);
      *(v10 + 3) = *(v10 + 9);
      v10[8] = v10[11];
      *(v10 + 9) = v66;
      v10[11] = v65;
      if (!std::__map_value_compare<std::string,std::__value_type<std::string,MTLConstantStorage::ConstantData>,std::less<std::string>,true>::operator()[abi:ne200100](a3, v10 + 6, v10 + 3))
      {
        return;
      }

      v67 = v10[5];
      v68 = *(v10 + 3);
      *(v10 + 3) = *(v10 + 3);
      v10[5] = v10[8];
      *(v10 + 3) = v68;
      v10[8] = v67;
      goto LABEL_92;
    }

    goto LABEL_10;
  }

  v57 = std::__map_value_compare<std::string,std::__value_type<std::string,MTLConstantStorage::ConstantData>,std::less<std::string>,true>::operator()[abi:ne200100](a3, v10 + 3, v10);
  v58 = std::__map_value_compare<std::string,std::__value_type<std::string,MTLConstantStorage::ConstantData>,std::less<std::string>,true>::operator()[abi:ne200100](a3, v8, v10 + 3);
  if (!v57)
  {
    if (!v58)
    {
      return;
    }

    v71 = v10[5];
    v72 = *(v10 + 3);
    v73 = v8[2];
    *(v10 + 3) = *v8;
    v10[5] = v73;
    *v8 = v72;
    v8[2] = v71;
LABEL_92:
    if (std::__map_value_compare<std::string,std::__value_type<std::string,MTLConstantStorage::ConstantData>,std::less<std::string>,true>::operator()[abi:ne200100](a3, v10 + 3, v10))
    {
      v123 = v10[2];
      v99 = *v10;
      *v10 = *(v10 + 3);
      v10[2] = v10[5];
      *(v10 + 3) = v99;
      v10[5] = v123;
    }

    return;
  }

  if (v58)
  {
    goto LABEL_77;
  }

  v121 = v10[2];
  v97 = *v10;
  *v10 = *(v10 + 3);
  v10[2] = v10[5];
  *(v10 + 3) = v97;
  v10[5] = v121;
  if (std::__map_value_compare<std::string,std::__value_type<std::string,MTLConstantStorage::ConstantData>,std::less<std::string>,true>::operator()[abi:ne200100](a3, v8, v10 + 3))
  {
    v59 = v10[5];
    v60 = *(v10 + 3);
    v61 = v8[2];
    *(v10 + 3) = *v8;
    v10[5] = v61;
    *v8 = v60;
LABEL_78:
    v8[2] = v59;
  }
}

__n128 std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *,0>(const void **a1, const void **a2, const void **a3, __int128 *a4, uint64_t a5)
{
  v10 = std::__map_value_compare<std::string,std::__value_type<std::string,MTLConstantStorage::ConstantData>,std::less<std::string>,true>::operator()[abi:ne200100](a5, a2, a1);
  v11 = std::__map_value_compare<std::string,std::__value_type<std::string,MTLConstantStorage::ConstantData>,std::less<std::string>,true>::operator()[abi:ne200100](a5, a3, a2);
  if (v10)
  {
    if (v11)
    {
      v12 = a1[2];
      v13 = *a1;
      v14 = a3[2];
      *a1 = *a3;
      a1[2] = v14;
LABEL_9:
      *a3 = v13;
      a3[2] = v12;
      goto LABEL_10;
    }

    v21 = a1[2];
    v22 = *a1;
    v23 = a2[2];
    *a1 = *a2;
    a1[2] = v23;
    *a2 = v22;
    a2[2] = v21;
    if (std::__map_value_compare<std::string,std::__value_type<std::string,MTLConstantStorage::ConstantData>,std::less<std::string>,true>::operator()[abi:ne200100](a5, a3, a2))
    {
      v12 = a2[2];
      v13 = *a2;
      v24 = a3[2];
      *a2 = *a3;
      a2[2] = v24;
      goto LABEL_9;
    }
  }

  else if (v11)
  {
    v15 = a2[2];
    v16 = *a2;
    v17 = a3[2];
    *a2 = *a3;
    a2[2] = v17;
    *a3 = v16;
    a3[2] = v15;
    if (std::__map_value_compare<std::string,std::__value_type<std::string,MTLConstantStorage::ConstantData>,std::less<std::string>,true>::operator()[abi:ne200100](a5, a2, a1))
    {
      v18 = a1[2];
      v19 = *a1;
      v20 = a2[2];
      *a1 = *a2;
      a1[2] = v20;
      *a2 = v19;
      a2[2] = v18;
    }
  }

LABEL_10:
  if (std::__map_value_compare<std::string,std::__value_type<std::string,MTLConstantStorage::ConstantData>,std::less<std::string>,true>::operator()[abi:ne200100](a5, a4, a3))
  {
    v26 = a3[2];
    v27 = *a3;
    v28 = *(a4 + 2);
    *a3 = *a4;
    a3[2] = v28;
    *a4 = v27;
    *(a4 + 2) = v26;
    if (std::__map_value_compare<std::string,std::__value_type<std::string,MTLConstantStorage::ConstantData>,std::less<std::string>,true>::operator()[abi:ne200100](a5, a3, a2))
    {
      v29 = a2[2];
      v30 = *a2;
      v31 = a3[2];
      *a2 = *a3;
      a2[2] = v31;
      *a3 = v30;
      a3[2] = v29;
      if (std::__map_value_compare<std::string,std::__value_type<std::string,MTLConstantStorage::ConstantData>,std::less<std::string>,true>::operator()[abi:ne200100](a5, a2, a1))
      {
        v32 = a1[2];
        result = *a1;
        v33 = a2[2];
        *a1 = *a2;
        a1[2] = v33;
        *a2 = result;
        a2[2] = v32;
      }
    }
  }

  return result;
}

void std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *>(uint64_t a1, const void **a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v18 = v3;
    v19 = v4;
    v7 = (a1 + 24);
    if ((a1 + 24) != a2)
    {
      v9 = 0;
      v10 = a1;
      do
      {
        v11 = v10;
        v10 = v7;
        if (std::__map_value_compare<std::string,std::__value_type<std::string,MTLConstantStorage::ConstantData>,std::less<std::string>,true>::operator()[abi:ne200100](a3, v7, v11))
        {
          v16 = *v10;
          v17 = v10[2];
          v10[1] = 0;
          v10[2] = 0;
          *v10 = 0;
          v12 = v9;
          do
          {
            v13 = a1 + v12;
            if (*(a1 + v12 + 47) < 0)
            {
              operator delete(*(v13 + 24));
            }

            *(v13 + 24) = *v13;
            *(v13 + 40) = *(v13 + 16);
            *(v13 + 23) = 0;
            *v13 = 0;
            if (!v12)
            {
              v15 = a1;
              goto LABEL_13;
            }

            v12 -= 24;
          }

          while (std::__map_value_compare<std::string,std::__value_type<std::string,MTLConstantStorage::ConstantData>,std::less<std::string>,true>::operator()[abi:ne200100](a3, &v16, (v12 + a1)));
          v14 = *(a1 + v12 + 47);
          v15 = a1 + v12 + 24;
          if (v14 < 0)
          {
            operator delete(*v15);
          }

LABEL_13:
          *v15 = v16;
          *(v15 + 16) = v17;
        }

        v7 = v10 + 3;
        v9 += 24;
      }

      while (v10 + 3 != a2);
    }
  }
}

void std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *>(const void **a1, const void **a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v15 = v3;
    v16 = v4;
    v6 = a1;
    v7 = a1 + 3;
    if (a1 + 3 != a2)
    {
      v9 = a1 - 3;
      do
      {
        v10 = v6;
        v6 = v7;
        if (std::__map_value_compare<std::string,std::__value_type<std::string,MTLConstantStorage::ConstantData>,std::less<std::string>,true>::operator()[abi:ne200100](a3, v7, v10))
        {
          v13 = *v6;
          v14 = v6[2];
          v6[1] = 0;
          v6[2] = 0;
          *v6 = 0;
          v11 = v9;
          do
          {
            if (*(v11 + 71) < 0)
            {
              operator delete(v11[6]);
            }

            *(v11 + 3) = *(v11 + 3);
            v11[8] = v11[5];
            *(v11 + 47) = 0;
            *(v11 + 24) = 0;
            v12 = std::__map_value_compare<std::string,std::__value_type<std::string,MTLConstantStorage::ConstantData>,std::less<std::string>,true>::operator()[abi:ne200100](a3, &v13, v11);
            v11 -= 3;
          }

          while (v12);
          if (*(v11 + 71) < 0)
          {
            operator delete(v11[6]);
          }

          *(v11 + 3) = v13;
          v11[8] = v14;
        }

        v7 = v6 + 3;
        v9 += 3;
      }

      while (v6 + 3 != a2);
    }
  }
}

const void **std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::string *,std::__less<void,void> &>(const void **a1, unint64_t a2, uint64_t a3)
{
  v4 = a2;
  v16 = *a1;
  v17 = a1[2];
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  if (std::__map_value_compare<std::string,std::__value_type<std::string,MTLConstantStorage::ConstantData>,std::less<std::string>,true>::operator()[abi:ne200100](a3, &v16, (a2 - 24)))
  {
    v6 = a1;
    do
    {
      v6 += 3;
    }

    while (!std::__map_value_compare<std::string,std::__value_type<std::string,MTLConstantStorage::ConstantData>,std::less<std::string>,true>::operator()[abi:ne200100](a3, &v16, v6));
  }

  else
  {
    v7 = a1 + 3;
    do
    {
      v6 = v7;
      if (v7 >= v4)
      {
        break;
      }

      v8 = std::__map_value_compare<std::string,std::__value_type<std::string,MTLConstantStorage::ConstantData>,std::less<std::string>,true>::operator()[abi:ne200100](a3, &v16, v7);
      v7 = v6 + 3;
    }

    while (!v8);
  }

  if (v6 < v4)
  {
    do
    {
      v4 -= 24;
    }

    while (std::__map_value_compare<std::string,std::__value_type<std::string,MTLConstantStorage::ConstantData>,std::less<std::string>,true>::operator()[abi:ne200100](a3, &v16, v4));
  }

  while (v6 < v4)
  {
    v9 = *v6;
    v19 = v6[2];
    v18 = v9;
    v10 = *v4;
    v6[2] = *(v4 + 16);
    *v6 = v10;
    v11 = v18;
    *(v4 + 16) = v19;
    *v4 = v11;
    do
    {
      v6 += 3;
    }

    while (!std::__map_value_compare<std::string,std::__value_type<std::string,MTLConstantStorage::ConstantData>,std::less<std::string>,true>::operator()[abi:ne200100](a3, &v16, v6));
    do
    {
      v4 -= 24;
    }

    while (std::__map_value_compare<std::string,std::__value_type<std::string,MTLConstantStorage::ConstantData>,std::less<std::string>,true>::operator()[abi:ne200100](a3, &v16, v4));
  }

  v12 = (v6 - 3);
  if (v6 - 3 == a1)
  {
    if (*(v6 - 1) < 0)
    {
      operator delete(*v12);
    }
  }

  else
  {
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    v13 = *v12;
    a1[2] = *(v6 - 1);
    *a1 = v13;
    *(v6 - 1) = 0;
    *(v6 - 24) = 0;
  }

  v14 = v16;
  *(v6 - 1) = v17;
  *v12 = v14;
  return v6;
}

unint64_t std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::string *,std::__less<void,void> &>(__int128 *a1, const void **a2, uint64_t a3)
{
  v6 = 0;
  v17 = *a1;
  v18 = *(a1 + 2);
  *(a1 + 1) = 0;
  *(a1 + 2) = 0;
  *a1 = 0;
  do
  {
    v6 += 24;
  }

  while (std::__map_value_compare<std::string,std::__value_type<std::string,MTLConstantStorage::ConstantData>,std::less<std::string>,true>::operator()[abi:ne200100](a3, (a1 + v6), &v17));
  v7 = a1 + v6;
  if (v6 == 24)
  {
    do
    {
      if (v7 >= a2)
      {
        break;
      }

      a2 -= 3;
    }

    while (!std::__map_value_compare<std::string,std::__value_type<std::string,MTLConstantStorage::ConstantData>,std::less<std::string>,true>::operator()[abi:ne200100](a3, a2, &v17));
  }

  else
  {
    do
    {
      a2 -= 3;
    }

    while (!std::__map_value_compare<std::string,std::__value_type<std::string,MTLConstantStorage::ConstantData>,std::less<std::string>,true>::operator()[abi:ne200100](a3, a2, &v17));
  }

  v8 = a1 + v6;
  if (v7 < a2)
  {
    v9 = a2;
    do
    {
      v19 = *v8;
      v10 = v19;
      v20 = *(v8 + 16);
      v11 = v20;
      v12 = v9[2];
      *v8 = *v9;
      *(v8 + 16) = v12;
      v9[2] = v11;
      *v9 = v10;
      do
      {
        v8 += 24;
      }

      while (std::__map_value_compare<std::string,std::__value_type<std::string,MTLConstantStorage::ConstantData>,std::less<std::string>,true>::operator()[abi:ne200100](a3, v8, &v17));
      do
      {
        v9 -= 3;
      }

      while (!std::__map_value_compare<std::string,std::__value_type<std::string,MTLConstantStorage::ConstantData>,std::less<std::string>,true>::operator()[abi:ne200100](a3, v9, &v17));
    }

    while (v8 < v9);
  }

  v13 = (v8 - 24);
  if ((v8 - 24) == a1)
  {
    if (*(v8 - 1) < 0)
    {
      operator delete(*v13);
    }
  }

  else
  {
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    v14 = *v13;
    *(a1 + 2) = *(v8 - 8);
    *a1 = v14;
    *(v8 - 1) = 0;
    *(v8 - 24) = 0;
  }

  v15 = v17;
  *(v8 - 8) = v18;
  *v13 = v15;
  return v8 - 24;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        v7 = a2 - 24;
        v16 = std::__map_value_compare<std::string,std::__value_type<std::string,MTLConstantStorage::ConstantData>,std::less<std::string>,true>::operator()[abi:ne200100](a3, (a1 + 24), a1);
        v17 = std::__map_value_compare<std::string,std::__value_type<std::string,MTLConstantStorage::ConstantData>,std::less<std::string>,true>::operator()[abi:ne200100](a3, v7, (a1 + 24));
        if (v16)
        {
          if (!v17)
          {
            v35 = *(a1 + 16);
            v36 = *a1;
            *a1 = *(a1 + 24);
            *(a1 + 16) = *(a1 + 40);
            *(a1 + 24) = v36;
            *(a1 + 40) = v35;
            if (!std::__map_value_compare<std::string,std::__value_type<std::string,MTLConstantStorage::ConstantData>,std::less<std::string>,true>::operator()[abi:ne200100](a3, v7, (a1 + 24)))
            {
              return 1;
            }

            v18 = *(a1 + 40);
            v19 = *(a1 + 24);
            v37 = *(v7 + 16);
            *(a1 + 24) = *v7;
            *(a1 + 40) = v37;
            goto LABEL_16;
          }

LABEL_15:
          v18 = *(a1 + 16);
          v19 = *a1;
          v20 = *(v7 + 16);
          *a1 = *v7;
          *(a1 + 16) = v20;
LABEL_16:
          *v7 = v19;
          *(v7 + 16) = v18;
          return 1;
        }

        if (!v17)
        {
          return 1;
        }

        v26 = *(a1 + 40);
        v27 = *(a1 + 24);
        v28 = *(v7 + 16);
        *(a1 + 24) = *v7;
        *(a1 + 40) = v28;
        *v7 = v27;
        *(v7 + 16) = v26;
        break;
      case 4:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *,0>(a1, (a1 + 24), (a1 + 48), (a2 - 24), a3);
        return 1;
      case 5:
        v8 = a2 - 24;
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *,0>(a1, (a1 + 24), (a1 + 48), (a1 + 72), a3);
        if (!std::__map_value_compare<std::string,std::__value_type<std::string,MTLConstantStorage::ConstantData>,std::less<std::string>,true>::operator()[abi:ne200100](a3, v8, (a1 + 72)))
        {
          return 1;
        }

        v9 = *(a1 + 88);
        v10 = *(a1 + 72);
        v11 = *(v8 + 16);
        *(a1 + 72) = *v8;
        *(a1 + 88) = v11;
        *v8 = v10;
        *(v8 + 16) = v9;
        if (!std::__map_value_compare<std::string,std::__value_type<std::string,MTLConstantStorage::ConstantData>,std::less<std::string>,true>::operator()[abi:ne200100](a3, (a1 + 72), (a1 + 48)))
        {
          return 1;
        }

        v12 = *(a1 + 64);
        v13 = *(a1 + 48);
        *(a1 + 48) = *(a1 + 72);
        *(a1 + 64) = *(a1 + 88);
        *(a1 + 72) = v13;
        *(a1 + 88) = v12;
        if (!std::__map_value_compare<std::string,std::__value_type<std::string,MTLConstantStorage::ConstantData>,std::less<std::string>,true>::operator()[abi:ne200100](a3, (a1 + 48), (a1 + 24)))
        {
          return 1;
        }

        v14 = *(a1 + 40);
        v15 = *(a1 + 24);
        *(a1 + 24) = *(a1 + 48);
        *(a1 + 40) = *(a1 + 64);
        *(a1 + 48) = v15;
        *(a1 + 64) = v14;
        break;
      default:
        goto LABEL_17;
    }

    if (std::__map_value_compare<std::string,std::__value_type<std::string,MTLConstantStorage::ConstantData>,std::less<std::string>,true>::operator()[abi:ne200100](a3, (a1 + 24), a1))
    {
      v29 = *(a1 + 16);
      v30 = *a1;
      *a1 = *(a1 + 24);
      *(a1 + 16) = *(a1 + 40);
      *(a1 + 24) = v30;
      *(a1 + 40) = v29;
    }

    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    v7 = a2 - 24;
    if (!std::__map_value_compare<std::string,std::__value_type<std::string,MTLConstantStorage::ConstantData>,std::less<std::string>,true>::operator()[abi:ne200100](a3, (a2 - 24), a1))
    {
      return 1;
    }

    goto LABEL_15;
  }

LABEL_17:
  v21 = (a1 + 48);
  v22 = std::__map_value_compare<std::string,std::__value_type<std::string,MTLConstantStorage::ConstantData>,std::less<std::string>,true>::operator()[abi:ne200100](a3, (a1 + 24), a1);
  v23 = std::__map_value_compare<std::string,std::__value_type<std::string,MTLConstantStorage::ConstantData>,std::less<std::string>,true>::operator()[abi:ne200100](a3, (a1 + 48), (a1 + 24));
  if (v22)
  {
    if (v23)
    {
      v24 = *(a1 + 16);
      v25 = *a1;
      *a1 = *v21;
      *(a1 + 16) = *(a1 + 64);
    }

    else
    {
      v38 = *(a1 + 16);
      v39 = *a1;
      *a1 = *(a1 + 24);
      *(a1 + 16) = *(a1 + 40);
      *(a1 + 24) = v39;
      *(a1 + 40) = v38;
      if (!std::__map_value_compare<std::string,std::__value_type<std::string,MTLConstantStorage::ConstantData>,std::less<std::string>,true>::operator()[abi:ne200100](a3, (a1 + 48), (a1 + 24)))
      {
        goto LABEL_33;
      }

      v24 = *(a1 + 40);
      v25 = *(a1 + 24);
      *(a1 + 24) = *v21;
      *(a1 + 40) = *(a1 + 64);
    }

    *v21 = v25;
    *(a1 + 64) = v24;
  }

  else if (v23)
  {
    v31 = *(a1 + 40);
    v32 = *(a1 + 24);
    *(a1 + 24) = *v21;
    *(a1 + 40) = *(a1 + 64);
    *v21 = v32;
    *(a1 + 64) = v31;
    if (std::__map_value_compare<std::string,std::__value_type<std::string,MTLConstantStorage::ConstantData>,std::less<std::string>,true>::operator()[abi:ne200100](a3, (a1 + 24), a1))
    {
      v33 = *(a1 + 16);
      v34 = *a1;
      *a1 = *(a1 + 24);
      *(a1 + 16) = *(a1 + 40);
      *(a1 + 24) = v34;
      *(a1 + 40) = v33;
    }
  }

LABEL_33:
  v40 = a1 + 72;
  if (a1 + 72 == a2)
  {
    return 1;
  }

  v41 = 0;
  v42 = 0;
  while (1)
  {
    if (std::__map_value_compare<std::string,std::__value_type<std::string,MTLConstantStorage::ConstantData>,std::less<std::string>,true>::operator()[abi:ne200100](a3, v40, v21))
    {
      v49 = *v40;
      v50 = *(v40 + 16);
      *(v40 + 8) = 0;
      *(v40 + 16) = 0;
      *v40 = 0;
      v43 = v41;
      do
      {
        v44 = a1 + v43;
        if (*(a1 + v43 + 95) < 0)
        {
          operator delete(*(v44 + 72));
        }

        *(v44 + 72) = *(v44 + 48);
        *(v44 + 88) = *(v44 + 64);
        *(v44 + 71) = 0;
        *(v44 + 48) = 0;
        if (v43 == -48)
        {
          v47 = a1;
          goto LABEL_44;
        }

        v45 = std::__map_value_compare<std::string,std::__value_type<std::string,MTLConstantStorage::ConstantData>,std::less<std::string>,true>::operator()[abi:ne200100](a3, &v49, (a1 + v43 + 24));
        v43 -= 24;
      }

      while (v45);
      v46 = *(a1 + v43 + 95);
      v47 = a1 + v43 + 72;
      if (v46 < 0)
      {
        operator delete(*v47);
      }

LABEL_44:
      *v47 = v49;
      *(v47 + 16) = v50;
      if (++v42 == 8)
      {
        return v40 + 24 == a2;
      }
    }

    v21 = v40;
    v41 += 24;
    v40 += 24;
    if (v40 == a2)
    {
      return 1;
    }
  }
}

__int128 *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *,std::string *>(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v29 = *MEMORY[0x1E69E9840];
  if (a1 != a2)
  {
    v8 = a2 - a1;
    v9 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
    if (a2 - a1 >= 25)
    {
      v10 = (v9 - 2) >> 1;
      v11 = v10 + 1;
      v12 = (a1 + 24 * v10);
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *>(a1, a4, v9, v12);
        v12 = (v12 - 24);
        --v11;
      }

      while (v11);
    }

    v13 = a2;
    if (a2 != a3)
    {
      v13 = a2;
      do
      {
        if (std::__map_value_compare<std::string,std::__value_type<std::string,MTLConstantStorage::ConstantData>,std::less<std::string>,true>::operator()[abi:ne200100](a4, v13, a1))
        {
          v14 = *(v13 + 2);
          v15 = *v13;
          v16 = *(a1 + 16);
          *v13 = *a1;
          *(v13 + 2) = v16;
          *a1 = v15;
          *(a1 + 16) = v14;
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *>(a1, a4, v9, a1);
        }

        v13 = (v13 + 24);
      }

      while (v13 != a3);
    }

    if (v8 >= 25)
    {
      v17 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 3);
      v18 = a2 - 24;
      do
      {
        v19 = *a1;
        *v28 = *(a1 + 8);
        *&v28[7] = *(a1 + 15);
        v20 = *(a1 + 23);
        *(a1 + 8) = 0;
        *(a1 + 16) = 0;
        *a1 = 0;
        v21 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *>(a1, a4, v17);
        v22 = v21;
        v23 = *(v21 + 23);
        if (v18 == v21)
        {
          if (v23 < 0)
          {
            operator delete(*v21);
          }

          *v22 = v19;
          *(v22 + 1) = *v28;
          *(v22 + 15) = *&v28[7];
          *(v22 + 23) = v20;
        }

        else
        {
          if (v23 < 0)
          {
            operator delete(*v21);
          }

          v24 = *v18;
          *(v22 + 2) = *(v18 + 16);
          *v22 = v24;
          *v18 = v19;
          *(v18 + 8) = *v28;
          *(v18 + 15) = *&v28[7];
          *(v18 + 23) = v20;
          std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *>(a1, v22 + 24, a4, 0xAAAAAAAAAAAAAAABLL * ((v22 - a1 + 24) >> 3));
        }

        v18 -= 24;
      }

      while (v17-- > 2);
    }

    a3 = v13;
  }

  v26 = *MEMORY[0x1E69E9840];
  return a3;
}

void sub_185C6F234(_Unwind_Exception *exception_object)
{
  if (v2 < 0)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

__n128 std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *>(uint64_t a1, uint64_t a2, uint64_t a3, __n128 *a4)
{
  v6 = a3 - 2;
  if (a3 >= 2)
  {
    v22 = v4;
    v23 = v5;
    v7 = a4;
    v9 = v6 >> 1;
    if ((v6 >> 1) >= (0xAAAAAAAAAAAAAAABLL * ((a4 - a1) >> 3)))
    {
      v12 = (0x5555555555555556 * ((a4 - a1) >> 3)) | 1;
      v13 = a1 + 24 * v12;
      v14 = 0x5555555555555556 * ((a4 - a1) >> 3) + 2;
      if (v14 < a3 && std::__map_value_compare<std::string,std::__value_type<std::string,MTLConstantStorage::ConstantData>,std::less<std::string>,true>::operator()[abi:ne200100](a2, (a1 + 24 * v12), (v13 + 24)))
      {
        v13 += 24;
        v12 = v14;
      }

      if (!std::__map_value_compare<std::string,std::__value_type<std::string,MTLConstantStorage::ConstantData>,std::less<std::string>,true>::operator()[abi:ne200100](a2, v13, v7))
      {
        v20 = *v7;
        v21 = v7[1].n128_u64[0];
        v7->n128_u64[1] = 0;
        v7[1].n128_u64[0] = 0;
        v7->n128_u64[0] = 0;
        while (1)
        {
          v16 = v13;
          if (v7[1].n128_i8[7] < 0)
          {
            operator delete(v7->n128_u64[0]);
          }

          v17 = *v13;
          v7[1].n128_u64[0] = *(v13 + 16);
          *v7 = v17;
          *(v13 + 23) = 0;
          *v13 = 0;
          if (v9 < v12)
          {
            break;
          }

          v18 = (2 * v12) | 1;
          v13 = a1 + 24 * v18;
          v19 = 2 * v12 + 2;
          if (v19 < a3 && std::__map_value_compare<std::string,std::__value_type<std::string,MTLConstantStorage::ConstantData>,std::less<std::string>,true>::operator()[abi:ne200100](a2, (a1 + 24 * v18), (v13 + 24)))
          {
            v13 += 24;
            v18 = v19;
          }

          v7 = v16;
          v12 = v18;
          if (std::__map_value_compare<std::string,std::__value_type<std::string,MTLConstantStorage::ConstantData>,std::less<std::string>,true>::operator()[abi:ne200100](a2, v13, &v20))
          {
            if (v16[1].n128_i8[7] < 0)
            {
              operator delete(v16->n128_u64[0]);
            }

            break;
          }
        }

        result = v20;
        v16[1].n128_u64[0] = v21;
        *v16 = result;
      }
    }
  }

  return result;
}

__int128 *std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *>(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = (a3 - 2) / 2;
  do
  {
    v8 = a1 + 24 * v6;
    v9 = (v8 + 24);
    v10 = 2 * v6;
    v6 = (2 * v6) | 1;
    v11 = v10 + 2;
    if (v10 + 2 < a3)
    {
      v12 = (v8 + 48);
      if (std::__map_value_compare<std::string,std::__value_type<std::string,MTLConstantStorage::ConstantData>,std::less<std::string>,true>::operator()[abi:ne200100](a2, (v8 + 24), (v8 + 48)))
      {
        v9 = v12;
        v6 = v11;
      }
    }

    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    v13 = *v9;
    *(a1 + 2) = *(v9 + 2);
    *a1 = v13;
    *(v9 + 23) = 0;
    *v9 = 0;
    a1 = v9;
  }

  while (v6 <= v7);
  return v9;
}

double std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v16 = v4;
    v17 = v5;
    v8 = (a4 - 2) >> 1;
    v9 = (a1 + 24 * v8);
    v10 = (a2 - 24);
    if (std::__map_value_compare<std::string,std::__value_type<std::string,MTLConstantStorage::ConstantData>,std::less<std::string>,true>::operator()[abi:ne200100](a3, v9, (a2 - 24)))
    {
      v14 = *v10;
      v15 = *(v10 + 2);
      *(v10 + 1) = 0;
      *(v10 + 2) = 0;
      *v10 = 0;
      while (1)
      {
        v12 = v9;
        if (*(v10 + 23) < 0)
        {
          operator delete(*v10);
        }

        v13 = *v9;
        *(v10 + 2) = *(v9 + 2);
        *v10 = v13;
        *(v9 + 23) = 0;
        *v9 = 0;
        if (!v8)
        {
          break;
        }

        v8 = (v8 - 1) >> 1;
        v9 = (a1 + 24 * v8);
        v10 = v12;
        if (!std::__map_value_compare<std::string,std::__value_type<std::string,MTLConstantStorage::ConstantData>,std::less<std::string>,true>::operator()[abi:ne200100](a3, v9, &v14))
        {
          if (*(v12 + 23) < 0)
          {
            operator delete(*v12);
          }

          break;
        }
      }

      result = *&v14;
      *v12 = v14;
      *(v12 + 2) = v15;
    }
  }

  return result;
}

uint64_t std::__tree<std::__value_type<std::string,MTLConstantStorage::ConstantData>,std::__map_value_compare<std::string,std::__value_type<std::string,MTLConstantStorage::ConstantData>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MTLConstantStorage::ConstantData>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t a1, const void **a2)
{
  v2 = *std::__tree<std::__value_type<std::string,MTLConstantStorage::ConstantData>,std::__map_value_compare<std::string,std::__value_type<std::string,MTLConstantStorage::ConstantData>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MTLConstantStorage::ConstantData>>>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    std::__tree<std::__value_type<std::string,MTLConstantStorage::ConstantData>,std::__map_value_compare<std::string,std::__value_type<std::string,MTLConstantStorage::ConstantData>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MTLConstantStorage::ConstantData>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  return v2;
}

void MTLCompilerStitchingRequest::MTLCompilerStitchingRequest(MTLCompilerStitchingRequest *this)
{
  MTLCompilerRequest::MTLCompilerRequest(this);
  *v1 = &unk_1EF474E58;
  *(v1 + 192) = 0u;
  *(v1 + 208) = 0u;
  *(v1 + 224) = 0u;
  *(v1 + 233) = 0u;
  *(v1 + 172) = 14;
}

void MTLCompilerStitchingRequest::~MTLCompilerStitchingRequest(MTLCompilerStitchingRequest *this)
{
  *this = &unk_1EF474E58;
  v2 = *(this + 24);
  if (v2)
  {
    dispatch_release(v2);
    *(this + 24) = 0;
  }

  v3 = *(this + 29);
  if (v3)
  {
    free(v3);
    *(this + 29) = 0;
  }

  v4 = *(this + 25);
  if (v4)
  {
  }

  v5 = *(this + 26);
  if (v5)
  {
  }

  v6 = *(this + 28);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  MTLCompilerRequest::~MTLCompilerRequest(this);
}

{
  MTLCompilerStitchingRequest::~MTLCompilerStitchingRequest(this);

  JUMPOUT(0x1865FF210);
}

dispatch_data_t MTLCompilerStitchingRequest::serializedRequest(NSObject **this, unsigned int a2, char **a3)
{
  v3 = this;
  v87 = *MEMORY[0x1E69E9840];
  v4 = this[24];
  if (v4)
  {
    dispatch_release(v4);
    *(v3 + 24) = 0;
  }

  v5 = malloc_type_malloc(0x800uLL, 0x100004077774924uLL);
  v6 = [*(v3 + 25) UTF8String];
  *v5 = 1684104992;
  v7 = strlen(v6);
  v8 = v7 + 5;
  if (v7 + 5 <= 3)
  {
    goto LABEL_225;
  }

  v9 = v7;
  v10 = 2048;
  if (v8 >= 0x801)
  {
    do
    {
      if (v10 >> 1 >= ~v10)
      {
        v10 = v7 + 5;
      }

      else
      {
        v10 += v10 >> 1;
      }
    }

    while (v10 < v8);
    v5 = malloc_type_realloc(v5, v10, 0x100004077774924uLL);
    if (!v5)
    {
      goto LABEL_225;
    }
  }

  memcpy(v5 + 1, v6, v9);
  *(v5 + v9 + 4) = 0;
  v85 = 0;
  _getForcedAIRVersion(&v85 + 1, &v85);
  if (v85)
  {
    if (v8 >= 0xFFFFFFFFFFFFFFFCLL)
    {
      goto LABEL_225;
    }

    v11 = v9 + 9;
    if (v10 < v9 + 9)
    {
      do
      {
        if (v10 >> 1 >= ~v10)
        {
          v10 = v9 + 9;
        }

        else
        {
          v10 += v10 >> 1;
        }
      }

      while (v10 < v11);
      v5 = malloc_type_realloc(v5, v10, 0x100004077774924uLL);
      if (!v5)
      {
        goto LABEL_225;
      }
    }

    *(v5 + v8) = 1634300534;
    if (v11 >= 0xFFFFFFFFFFFFFFFCLL)
    {
      goto LABEL_225;
    }

    v12 = HIDWORD(v85);
    v13 = v9 + 13;
    if (v10 < v9 + 13)
    {
      do
      {
        if (v10 >> 1 >= ~v10)
        {
          v10 = v9 + 13;
        }

        else
        {
          v10 += v10 >> 1;
        }
      }

      while (v10 < v13);
      v5 = malloc_type_realloc(v5, v10, 0x100004077774924uLL);
      if (!v5)
      {
        goto LABEL_225;
      }
    }

    *(v5 + v11) = v12;
    if (v13 >= 0xFFFFFFFFFFFFFFFCLL)
    {
      goto LABEL_225;
    }

    v14 = v85;
    v8 = v9 + 17;
    if (v10 < v9 + 17)
    {
      do
      {
        if (v10 >> 1 >= ~v10)
        {
          v10 = v9 + 17;
        }

        else
        {
          v10 += v10 >> 1;
        }
      }

      while (v10 < v8);
      v5 = malloc_type_realloc(v5, v10, 0x100004077774924uLL);
      if (!v5)
      {
        goto LABEL_225;
      }
    }

    *(v5 + v13) = v14;
  }

  if (v8 >= 0xFFFFFFFFFFFFFFFCLL)
  {
    goto LABEL_225;
  }

  v15 = v8 + 4;
  if (v10 < v8 + 4)
  {
    do
    {
      if (v10 >> 1 >= ~v10)
      {
        v10 = v8 + 4;
      }

      else
      {
        v10 += v10 >> 1;
      }
    }

    while (v10 < v15);
    v5 = malloc_type_realloc(v5, v10, 0x100004077774924uLL);
    if (!v5)
    {
      goto LABEL_225;
    }
  }

  *(v5 + v8) = 1853189478;
  v16 = [*(v3 + 26) count];
  if (v8 >= 0xFFFFFFFFFFFFFFF8)
  {
    goto LABEL_225;
  }

  v17 = v16;
  v18 = v8 + 8;
  if (v10 < v18)
  {
    do
    {
      if (v10 >> 1 >= ~v10)
      {
        v10 = v18;
      }

      else
      {
        v10 += v10 >> 1;
      }
    }

    while (v10 < v18);
    v5 = malloc_type_realloc(v5, v10, 0x100004077774924uLL);
    if (!v5)
    {
      goto LABEL_225;
    }
  }

  *(v5 + v15) = v17;
  memset(&v84, 0, sizeof(v84));
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  obj = *(v3 + 26);
  v19 = [obj countByEnumeratingWithState:&v80 objects:v86 count:16];
  v74 = v3;
  if (!v19)
  {
LABEL_121:
    if (v18 >= 0xFFFFFFFFFFFFFFFCLL)
    {
      goto LABEL_225;
    }

    v46 = v18 + 4;
    if (v10 < v18 + 4)
    {
      do
      {
        if (v10 >> 1 >= ~v10)
        {
          v10 = v18 + 4;
        }

        else
        {
          v10 += v10 >> 1;
        }
      }

      while (v10 < v46);
      v5 = malloc_type_realloc(v5, v10, 0x100004077774924uLL);
      if (!v5)
      {
        goto LABEL_225;
      }
    }

    *(v5 + v18) = 1853189491;
    v47 = *(v3 + 27);
    if (v47)
    {
      if (v18 >= 0xFFFFFFFFFFFFFFF8)
      {
        goto LABEL_225;
      }

      v49 = *v47;
      v48 = v47[1];
      v50 = v18 + 8;
      if (v10 < v50)
      {
        do
        {
          if (v10 >> 1 >= ~v10)
          {
            v10 = v50;
          }

          else
          {
            v10 += v10 >> 1;
          }
        }

        while (v10 < v50);
        v5 = malloc_type_realloc(v5, v10, 0x100004077774924uLL);
        if (!v5)
        {
          goto LABEL_225;
        }
      }

      *(v5 + v46) = -858993459 * ((v48 - v49) >> 3);
      if (*(*(v3 + 27) + 8) != **(v3 + 27))
      {
        v51 = 0;
        v52 = 0;
        while (v50 < 0xFFFFFFFFFFFFFFFCLL)
        {
          v53 = v50 + 4;
          if (v10 < v50 + 4)
          {
            if (!v10)
            {
              v10 = 128;
            }

            while (v10 < v53)
            {
              if (v10 >> 1 >= ~v10)
              {
                v10 = v50 + 4;
              }

              else
              {
                v10 += v10 >> 1;
              }
            }

            v5 = malloc_type_realloc(v5, v10, 0x100004077774924uLL);
            if (!v5)
            {
              break;
            }
          }

          *(v5 + v50) = 1634952050;
          size_ptr = 0;
          __n = 0;
          v54 = dispatch_data_create_map(*(**(v3 + 27) + 40 * v51), &__n, &size_ptr);
          if (v50 >= 0xFFFFFFFFFFFFFFF8)
          {
            break;
          }

          v55 = v54;
          v56 = size_ptr;
          v57 = v50 + 8;
          if (v10 < v50 + 8)
          {
            do
            {
              if (v10 >> 1 >= ~v10)
              {
                v10 = v50 + 8;
              }

              else
              {
                v10 += v10 >> 1;
              }
            }

            while (v10 < v57);
            v5 = malloc_type_realloc(v5, v10, 0x100004077774924uLL);
            if (!v5)
            {
              break;
            }
          }

          *(v5 + v53) = v56;
          v58 = size_ptr;
          if (-9 - v50 < size_ptr)
          {
            break;
          }

          v59 = __n;
          v50 = size_ptr + v57;
          if (v10 < size_ptr + v57)
          {
            do
            {
              if (v10 >> 1 >= ~v10)
              {
                v10 = size_ptr + v57;
              }

              else
              {
                v10 += v10 >> 1;
              }
            }

            while (v10 < v50);
            v5 = malloc_type_realloc(v5, v10, 0x100004077774924uLL);
            if (!v5)
            {
              break;
            }
          }

          memcpy(v5 + v57, v59, v58);
          dispatch_release(v55);
          v3 = v74;
          v51 = ++v52;
          if (0xCCCCCCCCCCCCCCCDLL * ((*(*(v74 + 27) + 8) - **(v74 + 27)) >> 3) <= v52)
          {
            goto LABEL_174;
          }
        }

        goto LABEL_225;
      }
    }

    else
    {
      if (v18 >= 0xFFFFFFFFFFFFFFF8)
      {
        goto LABEL_225;
      }

      v50 = v18 + 8;
      if (v10 < v50)
      {
        do
        {
          if (v10 >> 1 >= ~v10)
          {
            v10 = v50;
          }

          else
          {
            v10 += v10 >> 1;
          }
        }

        while (v10 < v50);
        v5 = malloc_type_realloc(v5, v10, 0x100004077774924uLL);
        if (!v5)
        {
          goto LABEL_225;
        }
      }

      *(v5 + v46) = 0;
    }

LABEL_174:
    if (v50 < 0xFFFFFFFFFFFFFFFCLL)
    {
      v61 = v50 + 4;
      if (v10 >= v50 + 4)
      {
        goto LABEL_183;
      }

      if (!v10)
      {
        v10 = 128;
      }

      while (v10 < v61)
      {
        if (v10 >> 1 >= ~v10)
        {
          v10 = v50 + 4;
        }

        else
        {
          v10 += v10 >> 1;
        }
      }

      v5 = malloc_type_realloc(v5, v10, 0x100004077774924uLL);
      if (v5)
      {
LABEL_183:
        *(v5 + v50) = 1886676589;
        active_platform = dyld_get_active_platform();
        if (v50 < 0xFFFFFFFFFFFFFFF8)
        {
          v63 = active_platform;
          v64 = v50 + 8;
          if (v10 >= v50 + 8)
          {
            goto LABEL_228;
          }

          do
          {
            if (v10 >> 1 >= ~v10)
            {
              v10 = v50 + 8;
            }

            else
            {
              v10 += v10 >> 1;
            }
          }

          while (v10 < v64);
          v5 = malloc_type_realloc(v5, v10, 0x100004077774924uLL);
          if (v5)
          {
LABEL_228:
            *(v5 + v61) = v63;
            if (v50 < 0xFFFFFFFFFFFFFFF4)
            {
              v65 = v50 + 12;
              if (v10 >= v50 + 12)
              {
                goto LABEL_197;
              }

              do
              {
                if (v10 >> 1 >= ~v10)
                {
                  v10 = v50 + 12;
                }

                else
                {
                  v10 += v10 >> 1;
                }
              }

              while (v10 < v65);
              v5 = malloc_type_realloc(v5, v10, 0x100004077774924uLL);
              if (v5)
              {
LABEL_197:
                *(v5 + v64) = 1634888036;
                if (*(v3 + 248) == 1)
                {
                  if (v50 >= 0xFFFFFFFFFFFFFFF0)
                  {
                    goto LABEL_225;
                  }

                  v66 = *(v3 + 30);
                  v67 = v50 + 16;
                  if (v10 < v50 + 16)
                  {
                    do
                    {
                      if (v10 >> 1 >= ~v10)
                      {
                        v10 = v50 + 16;
                      }

                      else
                      {
                        v10 += v10 >> 1;
                      }
                    }

                    while (v10 < v67);
                    v5 = malloc_type_realloc(v5, v10, 0x100004077774924uLL);
                    if (!v5)
                    {
                      goto LABEL_225;
                    }
                  }

                  *(v5 + v65) = v66;
                  v68 = *(v3 + 30);
                  if (-17 - v50 < v68)
                  {
                    goto LABEL_225;
                  }

                  v69 = *(v3 + 29);
                  v70 = v68 + v67;
                  if (v10 < v68 + v67)
                  {
                    do
                    {
                      if (v10 >> 1 >= ~v10)
                      {
                        v10 = v68 + v67;
                      }

                      else
                      {
                        v10 += v10 >> 1;
                      }
                    }

                    while (v10 < v70);
                    v5 = malloc_type_realloc(v5, v10, 0x100004077774924uLL);
                    if (!v5)
                    {
                      goto LABEL_225;
                    }
                  }

                  memcpy(v5 + v67, v69, v68);
                }

                else
                {
                  if (v50 >= 0xFFFFFFFFFFFFFFF0)
                  {
                    goto LABEL_225;
                  }

                  v70 = v50 + 16;
                  if (v10 < v50 + 16)
                  {
                    do
                    {
                      if (v10 >> 1 >= ~v10)
                      {
                        v10 = v50 + 16;
                      }

                      else
                      {
                        v10 += v10 >> 1;
                      }
                    }

                    while (v10 < v70);
                    v5 = malloc_type_realloc(v5, v10, 0x100004077774924uLL);
                    if (!v5)
                    {
                      goto LABEL_225;
                    }
                  }

                  *(v5 + v65) = 0;
                }

                v60 = dispatch_data_create(v5, v70, 0, *MEMORY[0x1E69E9648]);
                v5 = 0;
                *(v3 + 24) = v60;
                goto LABEL_222;
              }
            }
          }
        }
      }
    }

LABEL_225:
    abort();
  }

  v76 = *v81;
LABEL_49:
  v20 = 0;
  while (1)
  {
    if (*v81 != v76)
    {
      objc_enumerationMutation(obj);
    }

    v21 = *(*(&v80 + 1) + 8 * v20);
    v22 = [v21 libraryData];
    size_ptr = 0;
    __n = 0;
    v77 = 0;
    (*(*v22 + 208))(v22, [v21 bitCodeOffset], objc_msgSend(v21, "bitCodeFileSize"), &size_ptr, &__n, &v77);
    v23 = v77;
    v24 = __n;
    if (v77)
    {
      begin = v84.__begin_;
      if (v77 <= (v84.__end_ - v84.__begin_))
      {
        if (v77 < (v84.__end_ - v84.__begin_))
        {
          v84.__end_ = &v84.__begin_[v77];
        }
      }

      else
      {
        std::vector<unsigned char>::__append(&v84, v77 - (v84.__end_ - v84.__begin_));
        begin = v84.__begin_;
        v23 = v77;
      }

      v27 = (*(*v22 + 240))(v22, begin, size_ptr, v24, v23);
      __n = v77;
    }

    else
    {
      v26 = v84.__begin_;
      if (__n <= v84.__end_ - v84.__begin_)
      {
        if (__n < v84.__end_ - v84.__begin_)
        {
          v84.__end_ = &v84.__begin_[__n];
        }
      }

      else
      {
        std::vector<unsigned char>::__append(&v84, __n - (v84.__end_ - v84.__begin_));
        v26 = v84.__begin_;
        v24 = __n;
      }

      v27 = (*(*v22 + 216))(v22, v26, size_ptr, v24);
    }

    if ((v27 & 1) == 0)
    {
      break;
    }

    if (MTLLibraryData::overrideTriple(v22))
    {
      v28 = [MTLLibraryData::overrideTriple(v22) UTF8String];
      if (v18 >= 0xFFFFFFFFFFFFFFFCLL)
      {
        goto LABEL_225;
      }

      v29 = v28;
      v30 = v18 + 4;
      if (v10 < v18 + 4)
      {
        if (!v10)
        {
          v10 = 128;
        }

        while (v10 < v30)
        {
          if (v10 >> 1 >= ~v10)
          {
            v10 = v18 + 4;
          }

          else
          {
            v10 += v10 >> 1;
          }
        }

        v5 = malloc_type_realloc(v5, v10, 0x100004077774924uLL);
        if (!v5)
        {
          goto LABEL_225;
        }
      }

      *(v5 + v18) = 1953656940;
      v31 = strlen(v29);
      v32 = v31 + 1;
      if (v31 + 1 > -5 - v18)
      {
        goto LABEL_225;
      }

      v33 = v31;
      v18 = v32 + v30;
      if (v10 < v32 + v30)
      {
        do
        {
          if (v10 >> 1 >= ~v10)
          {
            v10 = v32 + v30;
          }

          else
          {
            v10 += v10 >> 1;
          }
        }

        while (v10 < v18);
        v5 = malloc_type_realloc(v5, v10, 0x100004077774924uLL);
        if (!v5)
        {
          goto LABEL_225;
        }
      }

      v34 = v5 + v30;
      memcpy(v34, v29, v33);
      v34[v33] = 0;
    }

    if (v18 >= 0xFFFFFFFFFFFFFFFCLL)
    {
      goto LABEL_225;
    }

    v35 = v18 + 4;
    if (v10 < v18 + 4)
    {
      if (!v10)
      {
        v10 = 128;
      }

      while (v10 < v35)
      {
        if (v10 >> 1 >= ~v10)
        {
          v10 = v18 + 4;
        }

        else
        {
          v10 += v10 >> 1;
        }
      }

      v5 = malloc_type_realloc(v5, v10, 0x100004077774924uLL);
      if (!v5)
      {
        goto LABEL_225;
      }
    }

    *(v5 + v18) = 1651007859;
    v36 = [v21 bitCodeHash];
    v37 = v18 + 36;
    if (v18 + 36 <= 0x1F)
    {
      goto LABEL_225;
    }

    v38 = v36;
    if (v10 < v37)
    {
      do
      {
        if (v10 >> 1 >= ~v10)
        {
          v10 = v18 + 36;
        }

        else
        {
          v10 += v10 >> 1;
        }
      }

      while (v10 < v37);
      v5 = malloc_type_realloc(v5, v10, 0x100004077774924uLL);
      if (!v5)
      {
        goto LABEL_225;
      }
    }

    v39 = (v5 + v35);
    v40 = v38[1];
    *v39 = *v38;
    v39[1] = v40;
    if (v37 >= 0xFFFFFFFFFFFFFFFCLL)
    {
      goto LABEL_225;
    }

    v41 = v18 + 40;
    if (v10 < v18 + 40)
    {
      do
      {
        if (v10 >> 1 >= ~v10)
        {
          v10 = v18 + 40;
        }

        else
        {
          v10 += v10 >> 1;
        }
      }

      while (v10 < v41);
      v5 = malloc_type_realloc(v5, v10, 0x100004077774924uLL);
      if (!v5)
      {
        goto LABEL_225;
      }
    }

    *(v5 + v37) = 1651078243;
    if (v41 >= 0xFFFFFFFFFFFFFFFCLL)
    {
      goto LABEL_225;
    }

    v42 = __n;
    v43 = v18 + 44;
    if (v10 < v18 + 44)
    {
      do
      {
        if (v10 >> 1 >= ~v10)
        {
          v10 = v18 + 44;
        }

        else
        {
          v10 += v10 >> 1;
        }
      }

      while (v10 < v43);
      v5 = malloc_type_realloc(v5, v10, 0x100004077774924uLL);
      if (!v5)
      {
        goto LABEL_225;
      }
    }

    *(v5 + v41) = v42;
    v44 = __n;
    if (-45 - v18 < __n)
    {
      goto LABEL_225;
    }

    v45 = v84.__begin_;
    v18 = __n + v43;
    if (v10 < __n + v43)
    {
      do
      {
        if (v10 >> 1 >= ~v10)
        {
          v10 = __n + v43;
        }

        else
        {
          v10 += v10 >> 1;
        }
      }

      while (v10 < v18);
      v5 = malloc_type_realloc(v5, v10, 0x100004077774924uLL);
      if (!v5)
      {
        goto LABEL_225;
      }
    }

    memcpy(v5 + v43, v45, v44);
    if (++v20 == v19)
    {
      v19 = [obj countByEnumeratingWithState:&v80 objects:v86 count:16];
      v3 = v74;
      if (!v19)
      {
        goto LABEL_121;
      }

      goto LABEL_49;
    }
  }

  if (a3)
  {
    operator new[]();
  }

  v60 = 0;
LABEL_222:
  if (v84.__begin_)
  {
    v84.__end_ = v84.__begin_;
    operator delete(v84.__begin_);
  }

  free(v5);
  v71 = *MEMORY[0x1E69E9840];
  return v60;
}

void sub_185C70618(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34)
{
  if (__p)
  {
    operator delete(__p);
  }

  free(v34);
  _Unwind_Resume(a1);
}

NSString *MTLCompilerStitchingRequest::setFunctionDag(MTLCompilerStitchingRequest *this, NSString *a2)
{
  v4 = *(this + 25);
  if (v4)
  {
  }

  result = a2;
  *(this + 25) = result;
  return result;
}

id MTLCompilerStitchingRequest::setFunctions(uint64_t a1, void *a2)
{
  v4 = *(a1 + 208);
  if (v4)
  {
  }

  result = a2;
  *(a1 + 208) = result;
  return result;
}

void MTLCompilerStitchingRequest::setAirDescriptors(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 224);
  *(a1 + 216) = v3;
  *(a1 + 224) = v2;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

char *MTLCompilerStitchingRequest::setBinaryArchiveID(MTLCompilerStitchingRequest *this, const char *__s)
{
  v4 = *(this + 29);
  if (v4)
  {
    free(v4);
  }

  *(this + 30) = strlen(__s) + 1;
  result = strdup(__s);
  *(this + 29) = result;
  return result;
}

id newErrorWithMessage(NSString *a1, MTLDynamicLibraryError a2)
{
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObject:a1 forKey:*MEMORY[0x1E696A578]];
  v4 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"MTLDynamicLibraryDomain" code:a2 userInfo:v3];

  return v4;
}

void sub_185C7120C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a48, 8);
  std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::~__hash_table(&a54);
  _Block_object_dispose(&a59, 8);
  _Block_object_dispose(&a65, 8);
  _Block_object_dispose((v65 - 240), 8);
  _Block_object_dispose((v65 - 208), 8);
  _Block_object_dispose((v65 - 176), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__9(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(a2 + 48) = 0;
  *(result + 48) = v2;
  v5 = *(a2 + 64);
  v3 = a2 + 64;
  v4 = v5;
  v6 = *(v3 - 8);
  *(result + 64) = v5;
  *(result + 56) = v6;
  *(v3 - 8) = 0;
  v7 = *(v3 + 8);
  *(result + 72) = v7;
  *(result + 80) = *(v3 + 16);
  if (v7)
  {
    v8 = *(v4 + 8);
    v9 = *(result + 56);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v8 >= v9)
      {
        v8 %= v9;
      }
    }

    else
    {
      v8 &= v9 - 1;
    }

    *(v2 + 8 * v8) = result + 64;
    *v3 = 0;
    *(v3 + 8) = 0;
  }

  return result;
}

uint64_t isVendorSliceCompatible(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = ___ZL23isVendorSliceCompatibleRK24MTLLoaderSliceIdentifierP6NSDatayPU19objcproto9MTLDevice11objc_object_block_invoke;
  v6[3] = &unk_1E6EEA9B8;
  v6[4] = a2;
  v6[5] = a3;
  [MTLLoader deserializeAIRNTToolsVersionForSlice:a1 sliceOffset:a3 version:&v7 reader:v6];
  return [a4 isVendorSliceCompatibleWithDeploymentTarget:v7 platform:HIDWORD(v7) sdkVersion:v8 compilerPluginVersion:v9];
}

void sub_185C72114(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, std::__shared_weak_count *a21, uint64_t a22, std::__shared_weak_count *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *__p, uint64_t a35)
{
  if (a21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a21);
  }

  if (a23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a23);
  }

  if (__p)
  {
    operator delete(__p);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v35);
  _Block_object_dispose((v36 - 160), 8);
  _Block_object_dispose((v36 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t std::vector<machOEntry>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<machOEntry>::__emplace_back_slow_path<machOEntry const&>(a1, a2);
  }

  else
  {
    std::vector<machOEntry>::__construct_one_at_end[abi:ne200100]<machOEntry const&>(a1, a2);
    result = v3 + 72;
  }

  *(a1 + 8) = result;
  return result;
}

void sub_185C72E04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51)
{
  _Block_object_dispose(&a40, 8);
  std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::~__hash_table(&a46);
  _Block_object_dispose(&a51, 8);
  _Block_object_dispose((v51 - 256), 8);
  _Block_object_dispose((v51 - 224), 8);
  _Block_object_dispose((v51 - 192), 8);
  _Block_object_dispose((v51 - 160), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__119(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(a2 + 48) = 0;
  *(result + 48) = v2;
  v5 = *(a2 + 64);
  v3 = a2 + 64;
  v4 = v5;
  v6 = *(v3 - 8);
  *(result + 64) = v5;
  *(result + 56) = v6;
  *(v3 - 8) = 0;
  v7 = *(v3 + 8);
  *(result + 72) = v7;
  *(result + 80) = *(v3 + 16);
  if (v7)
  {
    v8 = *(v4 + 8);
    v9 = *(result + 56);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v8 >= v9)
      {
        v8 %= v9;
      }
    }

    else
    {
      v8 &= v9 - 1;
    }

    *(v2 + 8 * v8) = result + 64;
    *v3 = 0;
    *(v3 + 8) = 0;
  }

  return result;
}

uint64_t MTLDynamicLibraryLoadOptionsFromPipelineOptions(uint64_t a1)
{
  result = 0;
  v3 = 48;
  v4 = &unk_185DD31F8;
  do
  {
    v5 = *(v4 - 1);
    if ((*v4 & a1) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    v4 += 2;
    v3 -= 16;
  }

  while (v3);
  return result;
}

uint64_t MTLPipelineOptionsFromDynamicLibraryLoadOptions(uint64_t a1)
{
  result = 0;
  v3 = 48;
  v4 = &unk_185DD31F8;
  do
  {
    if ((*(v4 - 1) & a1) != 0)
    {
      v5 = *v4;
    }

    else
    {
      v5 = 0;
    }

    result |= v5;
    v4 += 2;
    v3 -= 16;
  }

  while (v3);
  return result;
}

uint64_t ___ZL23isVendorSliceCompatibleRK24MTLLoaderSliceIdentifierP6NSDatayPU19objcproto9MTLDevice11objc_object_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a3 + a2 + *(a1 + 40);
  if (v5 <= [*(a1 + 32) length])
  {
    return [*(a1 + 32) bytes] + *(a1 + 40) + a2;
  }

  else
  {
    return 0;
  }
}

uint64_t std::vector<machOEntry>::__construct_one_at_end[abi:ne200100]<machOEntry const&>(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = a2[2];
  *(v3 + 16) = a2[1];
  *(v3 + 32) = v5;
  *v3 = v4;
  *(v3 + 56) = 0;
  *(v3 + 64) = 0;
  *(v3 + 48) = 0;
  result = std::vector<MTLUINT256_t>::__init_with_size[abi:ne200100]<MTLUINT256_t*,MTLUINT256_t*>(v3 + 48, *(a2 + 6), *(a2 + 7), (*(a2 + 7) - *(a2 + 6)) >> 5);
  *(a1 + 8) = v3 + 72;
  return result;
}

uint64_t std::vector<machOEntry>::__emplace_back_slow_path<machOEntry const&>(uint64_t a1, __int128 *a2)
{
  v2 = 0x8E38E38E38E38E39 * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x38E38E38E38E38ELL)
  {
    std::vector<std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>::__throw_length_error[abi:ne200100]();
  }

  if (0x1C71C71C71C71C72 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x1C71C71C71C71C72 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0x8E38E38E38E38E39 * ((*(a1 + 16) - *a1) >> 3) >= 0x1C71C71C71C71C7)
  {
    v6 = 0x38E38E38E38E38ELL;
  }

  else
  {
    v6 = v3;
  }

  v19 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<machOEntry>>(a1, v6);
  }

  v7 = 72 * v2;
  v16 = 0;
  v17 = v7;
  v18 = 72 * v2;
  v8 = *a2;
  v9 = a2[2];
  *(v7 + 16) = a2[1];
  *(v7 + 32) = v9;
  *v7 = v8;
  *(v7 + 56) = 0;
  *(v7 + 64) = 0;
  *(v7 + 48) = 0;
  std::vector<MTLUINT256_t>::__init_with_size[abi:ne200100]<MTLUINT256_t*,MTLUINT256_t*>(72 * v2 + 48, *(a2 + 6), *(a2 + 7), (*(a2 + 7) - *(a2 + 6)) >> 5);
  *&v18 = v18 + 72;
  v10 = *(a1 + 8);
  v11 = v17 + *a1 - v10;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<machOEntry>,machOEntry*>(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = *(a1 + 16);
  v15 = v18;
  *(a1 + 8) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  std::__split_buffer<machOEntry>::~__split_buffer(&v16);
  return v15;
}

void sub_185C73A00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<machOEntry>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void *MTLIOAccelResourcePoolCreatePooledResource(uint64_t a1)
{
  os_unfair_lock_lock((a1 + 40));
  v2 = *(a1 + 88);
  v3 = *(a1 + 24);
  if (v3)
  {
    v5 = v3[39];
    v4 = v3[40];
    if (v5)
    {
      *(v5 + 320) = v4;
      v6 = v3[39];
      v4 = v3[40];
    }

    else
    {
      v6 = 0;
      *(a1 + 32) = v4;
    }

    *v4 = v6;
LABEL_13:
    v11 = v3 + 38;
    --*(a1 + 44);
    goto LABEL_14;
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    v8 = v3[39];
    v7 = v3[40];
    if (v8)
    {
      *(v8 + 320) = v7;
      v9 = v3[39];
      v7 = v3[40];
    }

    else
    {
      v9 = 0;
      *(a1 + 16) = v7;
    }

    *v7 = v9;
    [v3 setPurgeableState:2];
    goto LABEL_13;
  }

  v10 = [objc_alloc(*(a1 + 48)) initWithDevice:*(a1 + 56) options:0 args:*(a1 + 64) argsSize:*(a1 + 72)];
  v3 = v10;
  if (v10)
  {
    [v10 setLabel:@"MTLIOAccelResourcePool"];
    v11 = v3 + 38;
LABEL_14:
    *v11 = a1;
    *(v11 + 8) = v2;
    v12 = a1;
  }

  os_unfair_lock_unlock((a1 + 40));
  return v3;
}

void MTLCompilerProcess::~MTLCompilerProcess(MTLCompilerProcess *this)
{
  MTLCompilerProcess::destroyAllConnections(this);
  v2 = (this + 8);
  std::vector<std::shared_ptr<MTLCompilerConnection>>::__destroy_vector::operator()[abi:ne200100](&v2);
}

void MTLCompilerProcess::destroyAllConnections(MTLCompilerProcess *this)
{
  v1 = *(this + 1);
  v2 = *(this + 2);
  while (v1 != v2)
  {
    v3 = v1[1];
    *v1 = 0;
    v1[1] = 0;
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    v1 += 2;
  }
}

BOOL MTLCompilerProcess::hasPendingWork(MTLCompilerProcess *this)
{
  v2 = *(this + 1);
  v1 = *(this + 2);
  if (v2 == v1)
  {
    return 0;
  }

  v3 = v2 + 16;
  do
  {
    v4 = *(*(v3 - 16) + 48);
    result = v4 != 0;
    if (v4)
    {
      v6 = 1;
    }

    else
    {
      v6 = v3 == v1;
    }

    v3 += 16;
  }

  while (!v6);
  return result;
}

uint64_t MTLCompilerProcess::isIdle(MTLCompilerProcess *this)
{
  v1 = *(this + 1);
  v2 = *(this + 2);
  while (v1 != v2)
  {
    if (*v1)
    {
      result = MTLCompilerConnection::isIdle(*v1);
      if (!result)
      {
        return result;
      }
    }

    v1 += 2;
  }

  return 1;
}

uint64_t MTLCompilerProcess::getMatchingConnection(MTLCompilerProcess *this, MTLCompilerConnection *a2)
{
  result = *(this + 1);
  v4 = *(this + 2);
  if (result != v4)
  {
    v5 = result;
    while (*(a2 + 3) != *(*v5 + 24))
    {
      v5 += 16;
      if (v5 == v4)
      {
        return result;
      }
    }

    return v5;
  }

  return result;
}

uint64_t MTLCompilerProcess::getEmptyConnection(MTLCompilerProcess *this)
{
  result = *(this + 1);
  v3 = *(this + 2);
  if (result != v3)
  {
    v4 = result;
    while (*(*v4 + 48))
    {
      v4 += 16;
      if (v4 == v3)
      {
        return result;
      }
    }

    return v4;
  }

  return result;
}

void std::vector<std::shared_ptr<MTLCompilerConnection>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::shared_ptr<MTLCompilerConnection>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::shared_ptr<MTLCompilerConnection>>::clear[abi:ne200100](uint64_t *a1)
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

void *std::__shared_ptr_emplace<MTLMonolithicCompilerConnection>::__shared_ptr_emplace[abi:ne200100]<MTLCompilerScheduler *&,MTLCompilerProcess *,std::allocator<MTLMonolithicCompilerConnection>,0>(void *a1, MTLCompilerScheduler **a2, MTLCompilerProcess **a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1EF474EC8;
  MTLMonolithicCompilerConnection::MTLMonolithicCompilerConnection((a1 + 3), *a2, *a3);
  return a1;
}

void std::__shared_ptr_emplace<MTLMonolithicCompilerConnection>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1EF474EC8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1865FF210);
}

void std::__shared_ptr_emplace<MTLXPCCompilerConnection>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1EF474F18;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1865FF210);
}

__CFString *MTLBuiltInArgumentTypeString(unint64_t a1)
{
  if (a1 > 0x18)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E6EEB188[a1];
  }
}

__CFString *MTLMeshTopologyKindString(unint64_t a1)
{
  if (a1 > 3)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E6EEB250[a1];
  }
}

MTLStructTypeInternal *newStructTypeWithSerializedContext(uint64_t a1, DeserialContext *a2, unsigned int a3)
{
  v8 = 0;
  memset(v5, 0, sizeof(v5));
  v6 = 1065353216;
  v3 = structTypeFromSerializedContext(a1, a2, &v8, v5, &v7, a3);
  std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::~__hash_table(v5);
  return v3;
}

void serializeArrayType(void *a1, void **a2, uint64_t a3, uint64_t a4)
{
  v7 = a1;
  v8 = [a1 elementType];
  v9 = [v7 elementIndirectArgumentType];
  v10 = [v7 arrayLength];
  v11 = a2[2];
  if (v11 > 0xFFFFFFFFFFFFFFFBLL)
  {
LABEL_75:
    abort();
  }

  v12 = v10;
  if (v9)
  {
    v13 = 57;
  }

  else
  {
    v13 = v8;
  }

  while (1)
  {
    v14 = a2[1];
    if (v14 >= v11 + 4)
    {
      v15 = *a2;
    }

    else
    {
      if (!v14)
      {
        a2[1] = 128;
        v14 = 128;
      }

      while (v14 < v11 + 4)
      {
        if (v14 >> 1 >= ~v14)
        {
          v14 = v11 + 4;
        }

        else
        {
          v14 += v14 >> 1;
        }
      }

      v15 = malloc_type_realloc(*a2, v14, 0x100004077774924uLL);
      *a2 = v15;
      if (!v15)
      {
        goto LABEL_75;
      }

      a2[1] = v14;
      v11 = a2[2];
    }

    *&v15[v11] = v12;
    v16 = a2[2];
    v17 = v16 + 4;
    a2[2] = v16 + 4;
    if ((v16 + 4) >= 0xFFFFFFFFFFFFFFFCLL)
    {
      goto LABEL_75;
    }

    v18 = (v16 + 8);
    v19 = a2[1];
    if (v19 >= v18)
    {
      v20 = *a2;
    }

    else
    {
      if (!v19)
      {
        a2[1] = 128;
        v19 = 128;
      }

      while (v19 < v18)
      {
        if (v19 >> 1 >= ~v19)
        {
          v19 = v18;
        }

        else
        {
          v19 += v19 >> 1;
        }
      }

      v20 = malloc_type_realloc(*a2, v19, 0x100004077774924uLL);
      *a2 = v20;
      if (!v20)
      {
        goto LABEL_75;
      }

      a2[1] = v19;
      v17 = a2[2];
    }

    *&v17[v20] = v13;
    a2[2] = a2[2] + 4;
    v21 = [v7 stride];
    v22 = a2[2];
    if (v22 >= 0xFFFFFFFFFFFFFFFCLL)
    {
      goto LABEL_75;
    }

    v23 = v21;
    v24 = a2[1];
    if (v24 >= v22 + 4)
    {
      v25 = *a2;
    }

    else
    {
      if (!v24)
      {
        a2[1] = 128;
        v24 = 128;
      }

      while (v24 < v22 + 4)
      {
        if (v24 >> 1 >= ~v24)
        {
          v24 = v22 + 4;
        }

        else
        {
          v24 += v24 >> 1;
        }
      }

      v25 = malloc_type_realloc(*a2, v24, 0x100004077774924uLL);
      *a2 = v25;
      if (!v25)
      {
        goto LABEL_75;
      }

      a2[1] = v24;
      v22 = a2[2];
    }

    *&v25[v22] = v23;
    a2[2] = a2[2] + 4;
    v26 = [v7 indirectArgumentIndexStride];
    v27 = a2[2];
    if (v27 >= 0xFFFFFFFFFFFFFFFCLL)
    {
      goto LABEL_75;
    }

    v28 = v26;
    v29 = a2[1];
    if (v29 >= v27 + 4)
    {
      v30 = *a2;
    }

    else
    {
      if (!v29)
      {
        a2[1] = 128;
        v29 = 128;
      }

      while (v29 < v27 + 4)
      {
        if (v29 >> 1 >= ~v29)
        {
          v29 = v27 + 4;
        }

        else
        {
          v29 += v29 >> 1;
        }
      }

      v30 = malloc_type_realloc(*a2, v29, 0x100004077774924uLL);
      *a2 = v30;
      if (!v30)
      {
        goto LABEL_75;
      }

      a2[1] = v29;
      v27 = a2[2];
    }

    *&v30[v27] = v28;
    a2[2] = a2[2] + 4;
    v31 = [v7 pixelFormat];
    v32 = a2[2];
    if (v32 >= 0xFFFFFFFFFFFFFFFCLL)
    {
      goto LABEL_75;
    }

    v33 = v31;
    v34 = a2[1];
    if (v34 >= v32 + 4)
    {
      v35 = *a2;
    }

    else
    {
      if (!v34)
      {
        a2[1] = 128;
        v34 = 128;
      }

      while (v34 < v32 + 4)
      {
        if (v34 >> 1 >= ~v34)
        {
          v34 = v32 + 4;
        }

        else
        {
          v34 += v34 >> 1;
        }
      }

      v35 = malloc_type_realloc(*a2, v34, 0x100004077774924uLL);
      *a2 = v35;
      if (!v35)
      {
        goto LABEL_75;
      }

      a2[1] = v34;
      v32 = a2[2];
    }

    *&v35[v32] = v33;
    a2[2] = a2[2] + 4;
    v36 = [v7 aluType];
    v37 = a2[2];
    if (v37 >= 0xFFFFFFFFFFFFFFFCLL)
    {
      goto LABEL_75;
    }

    v38 = v36;
    v39 = a2[1];
    if (v39 >= v37 + 4)
    {
      v40 = *a2;
    }

    else
    {
      if (!v39)
      {
        a2[1] = 128;
        v39 = 128;
      }

      while (v39 < v37 + 4)
      {
        if (v39 >> 1 >= ~v39)
        {
          v39 = v37 + 4;
        }

        else
        {
          v39 += v39 >> 1;
        }
      }

      v40 = malloc_type_realloc(*a2, v39, 0x100004077774924uLL);
      *a2 = v40;
      if (!v40)
      {
        goto LABEL_75;
      }

      a2[1] = v39;
      v37 = a2[2];
    }

    *&v40[v37] = v38;
    a2[2] = a2[2] + 4;
    if (v13 != 2)
    {
      break;
    }

    v7 = [v7 elementArrayType];
    v41 = [v7 elementType];
    if ([v7 elementIndirectArgumentType])
    {
      v13 = 57;
    }

    else
    {
      v13 = v41;
    }

    v12 = [v7 arrayLength];
    v11 = a2[2];
    if (v11 > 0xFFFFFFFFFFFFFFFBLL)
    {
      goto LABEL_75;
    }
  }

  if (v13 == 1)
  {
    v42 = [v7 elementStructType];

    serializeStructTypeInternal(v42, a2, a3, a4);
  }

  else if ([v7 elementIndirectArgumentType])
  {
    v43 = [v7 elementIndirectArgumentType];

    serializeIndirectArgument(v43, a2, a3, a4);
  }
}

char *serializeStructTypeInternal(char *result, char **a2, uint64_t a3, unsigned int a4)
{
  v69[0] = result;
  v5 = *(a3 + 8);
  if (!v5)
  {
    goto LABEL_9;
  }

  v6 = a3 + 8;
  do
  {
    v7 = *(v5 + 32);
    v8 = v7 >= result;
    v9 = v7 < result;
    if (v8)
    {
      v6 = v5;
    }

    v5 = *(v5 + 8 * v9);
  }

  while (v5);
  if (v6 != a3 + 8 && *(v6 + 32) <= result)
  {
    if (a4)
    {
      v64 = a2[2];
      if (v64 >= 0xFFFFFFFFFFFFFFFCLL)
      {
        goto LABEL_147;
      }

      v65 = *(v6 + 40);
      v66 = a2[1];
      if (v66 >= v64 + 4)
      {
        result = *a2;
      }

      else
      {
        if (!v66)
        {
          v66 = 128;
          a2[1] = 128;
        }

        while (v66 < v64 + 4)
        {
          if (v66 >> 1 >= ~v66)
          {
            v66 = v64 + 4;
          }

          else
          {
            v66 += v66 >> 1;
          }
        }

        result = malloc_type_realloc(*a2, v66, 0x100004077774924uLL);
        *a2 = result;
        if (!result)
        {
          goto LABEL_147;
        }

        a2[1] = v66;
        v64 = a2[2];
      }

      *&result[v64] = v65;
      a2[2] += 4;
    }
  }

  else
  {
LABEL_9:
    v10 = *(a3 + 16) + 1;
    v69[2] = v69;
    *(std::__tree<std::__value_type<MTLStructType *,unsigned int>,std::__map_value_compare<MTLStructType *,std::__value_type<MTLStructType *,unsigned int>,std::less<MTLStructType *>,true>,std::allocator<std::__value_type<MTLStructType *,unsigned int>>>::__emplace_unique_key_args<MTLStructType *,std::piecewise_construct_t const&,std::tuple<MTLStructType * const&>,std::tuple<>>(a3, v69) + 10) = v10;
    if (a4)
    {
      v11 = a2[2];
      if (v11 >= 0xFFFFFFFFFFFFFFFCLL)
      {
        goto LABEL_147;
      }

      v12 = a2[1];
      if (v12 >= v11 + 4)
      {
        v13 = *a2;
      }

      else
      {
        if (!v12)
        {
          v12 = 128;
          a2[1] = 128;
        }

        while (v12 < v11 + 4)
        {
          if (v12 >> 1 >= ~v12)
          {
            v12 = v11 + 4;
          }

          else
          {
            v12 += v12 >> 1;
          }
        }

        v13 = malloc_type_realloc(*a2, v12, 0x100004077774924uLL);
        *a2 = v13;
        if (!v13)
        {
          goto LABEL_147;
        }

        a2[1] = v12;
        v11 = a2[2];
      }

      *&v13[v11] = v10;
      a2[2] += 4;
    }

    v14 = [objc_msgSend(v69[0] "members")];
    v15 = a2[2];
    if (v15 >= 0xFFFFFFFFFFFFFFFCLL)
    {
      goto LABEL_147;
    }

    v16 = v14;
    v17 = a2[1];
    if (v17 >= v15 + 4)
    {
      result = *a2;
    }

    else
    {
      if (!v17)
      {
        v17 = 128;
        a2[1] = 128;
      }

      while (v17 < v15 + 4)
      {
        if (v17 >> 1 >= ~v17)
        {
          v17 = v15 + 4;
        }

        else
        {
          v17 += v17 >> 1;
        }
      }

      result = malloc_type_realloc(*a2, v17, 0x100004077774924uLL);
      *a2 = result;
      if (!result)
      {
        goto LABEL_147;
      }

      a2[1] = v17;
      v15 = a2[2];
    }

    *&result[v15] = v16;
    a2[2] += 4;
    v18 = v16;
    if (v16)
    {
      v19 = 0;
      while (1)
      {
        v20 = [objc_msgSend(v69[0] "members")];
        v21 = [v20 dataType];
        v22 = [v20 indirectArgumentType] ? 57 : v21;
        v23 = [objc_msgSend(v20 "name")];
        v24 = strlen(v23);
        v25 = v24 + 1;
        v26 = a2[2];
        if (__CFADD__(v26, v24 + 1))
        {
          break;
        }

        v27 = v24;
        v28 = a2[1];
        if (v28 >= &v26[v25])
        {
          v29 = *a2;
        }

        else
        {
          if (!v28)
          {
            a2[1] = 128;
            v28 = 128;
          }

          while (v28 < &v26[v25])
          {
            if (v28 >> 1 >= ~v28)
            {
              v28 = &v26[v25];
            }

            else
            {
              v28 += v28 >> 1;
            }
          }

          v29 = malloc_type_realloc(*a2, v28, 0x100004077774924uLL);
          *a2 = v29;
          if (!v29)
          {
            break;
          }

          a2[1] = v28;
          v26 = a2[2];
        }

        memcpy(&v26[v29], v23, v27);
        a2[2][*a2 + v27] = 0;
        a2[2] += v25;
        v30 = [v20 offset];
        v31 = a2[2];
        if (v31 >= 0xFFFFFFFFFFFFFFFCLL)
        {
          break;
        }

        v32 = v30;
        v33 = a2[1];
        if (v33 >= v31 + 4)
        {
          v34 = *a2;
        }

        else
        {
          if (!v33)
          {
            a2[1] = 128;
            v33 = 128;
          }

          while (v33 < v31 + 4)
          {
            if (v33 >> 1 >= ~v33)
            {
              v33 = v31 + 4;
            }

            else
            {
              v33 += v33 >> 1;
            }
          }

          v34 = malloc_type_realloc(*a2, v33, 0x100004077774924uLL);
          *a2 = v34;
          if (!v34)
          {
            break;
          }

          a2[1] = v33;
          v31 = a2[2];
        }

        *&v34[v31] = v32;
        a2[2] += 4;
        v35 = [v20 indirectArgumentIndex];
        v36 = a2[2];
        if (v36 >= 0xFFFFFFFFFFFFFFFCLL)
        {
          break;
        }

        v37 = v35;
        v38 = a2[1];
        if (v38 >= v36 + 4)
        {
          v39 = *a2;
        }

        else
        {
          if (!v38)
          {
            a2[1] = 128;
            v38 = 128;
          }

          while (v38 < v36 + 4)
          {
            if (v38 >> 1 >= ~v38)
            {
              v38 = v36 + 4;
            }

            else
            {
              v38 += v38 >> 1;
            }
          }

          v39 = malloc_type_realloc(*a2, v38, 0x100004077774924uLL);
          *a2 = v39;
          if (!v39)
          {
            break;
          }

          a2[1] = v38;
          v36 = a2[2];
        }

        *&v39[v36] = v37;
        v40 = a2[2];
        v41 = v40 + 4;
        a2[2] = v40 + 4;
        if ((v40 + 4) >= 0xFFFFFFFFFFFFFFFCLL)
        {
          break;
        }

        v42 = (v40 + 8);
        v43 = a2[1];
        if (v43 >= v42)
        {
          v44 = *a2;
        }

        else
        {
          if (!v43)
          {
            a2[1] = 128;
            v43 = 128;
          }

          while (v43 < v42)
          {
            if (v43 >> 1 >= ~v43)
            {
              v43 = v42;
            }

            else
            {
              v43 += v43 >> 1;
            }
          }

          v44 = malloc_type_realloc(*a2, v43, 0x100004077774924uLL);
          *a2 = v44;
          if (!v44)
          {
            break;
          }

          a2[1] = v43;
          v41 = a2[2];
        }

        *&v41[v44] = v22;
        a2[2] += 4;
        v45 = [v20 pixelFormat];
        v46 = a2[2];
        if (v46 >= 0xFFFFFFFFFFFFFFFCLL)
        {
          break;
        }

        v47 = v45;
        v48 = a2[1];
        if (v48 >= v46 + 4)
        {
          v49 = *a2;
        }

        else
        {
          if (!v48)
          {
            a2[1] = 128;
            v48 = 128;
          }

          while (v48 < v46 + 4)
          {
            if (v48 >> 1 >= ~v48)
            {
              v48 = v46 + 4;
            }

            else
            {
              v48 += v48 >> 1;
            }
          }

          v49 = malloc_type_realloc(*a2, v48, 0x100004077774924uLL);
          *a2 = v49;
          if (!v49)
          {
            break;
          }

          a2[1] = v48;
          v46 = a2[2];
        }

        *&v49[v46] = v47;
        a2[2] += 4;
        v50 = [v20 aluType];
        v51 = a2[2];
        if (v51 >= 0xFFFFFFFFFFFFFFFCLL)
        {
          break;
        }

        v52 = v50;
        v53 = a2[1];
        if (v53 >= v51 + 4)
        {
          v54 = *a2;
        }

        else
        {
          if (!v53)
          {
            a2[1] = 128;
            v53 = 128;
          }

          while (v53 < v51 + 4)
          {
            if (v53 >> 1 >= ~v53)
            {
              v53 = v51 + 4;
            }

            else
            {
              v53 += v53 >> 1;
            }
          }

          v54 = malloc_type_realloc(*a2, v53, 0x100004077774924uLL);
          *a2 = v54;
          if (!v54)
          {
            break;
          }

          a2[1] = v53;
          v51 = a2[2];
        }

        *&v54[v51] = v52;
        a2[2] += 4;
        if (v22 == 2)
        {
          serializeArrayType([v20 arrayType], a2, a3, a4);
        }

        else if (v22 == 1)
        {
          serializeStructTypeInternal([v20 structType], a2, a3, a4);
        }

        else if ([v20 indirectArgumentType])
        {
          serializeIndirectArgument([v20 indirectArgumentType], a2, a3, a4);
        }

        v55 = [v20 render_target];
        v56 = a2[2];
        if (v56 >= 0xFFFFFFFFFFFFFFFCLL)
        {
          break;
        }

        v57 = v55;
        v58 = a2[1];
        if (v58 >= v56 + 4)
        {
          v59 = *a2;
        }

        else
        {
          if (!v58)
          {
            a2[1] = 128;
            v58 = 128;
          }

          while (v58 < v56 + 4)
          {
            if (v58 >> 1 >= ~v58)
            {
              v58 = v56 + 4;
            }

            else
            {
              v58 += v58 >> 1;
            }
          }

          v59 = malloc_type_realloc(*a2, v58, 0x100004077774924uLL);
          *a2 = v59;
          if (!v59)
          {
            break;
          }

          a2[1] = v58;
          v56 = a2[2];
        }

        *&v59[v56] = v57;
        a2[2] += 4;
        v60 = [v20 raster_order_group];
        v61 = a2[2];
        if (v61 >= 0xFFFFFFFFFFFFFFFCLL)
        {
          break;
        }

        v62 = v60;
        v63 = a2[1];
        if (v63 >= v61 + 4)
        {
          result = *a2;
        }

        else
        {
          if (!v63)
          {
            a2[1] = 128;
            v63 = 128;
          }

          while (v63 < v61 + 4)
          {
            if (v63 >> 1 >= ~v63)
            {
              v63 = v61 + 4;
            }

            else
            {
              v63 += v63 >> 1;
            }
          }

          result = malloc_type_realloc(*a2, v63, 0x100004077774924uLL);
          *a2 = result;
          if (!result)
          {
            break;
          }

          a2[1] = v63;
          v61 = a2[2];
        }

        *&result[v61] = v62;
        a2[2] += 4;
        if (++v19 == v18)
        {
          return result;
        }
      }

LABEL_147:
      abort();
    }
  }

  return result;
}

void serializeIndirectArgument(uint64_t a1, char **a2, uint64_t a3, unsigned int a4)
{
  v15 = *MEMORY[0x1E69E9840];
  v13 = 0;
  v14 = a1;
  v11 = 0;
  v12 = 0;
  std::vector<MTLBindingInternal *>::__init_with_size[abi:ne200100]<MTLBindingInternal * const*,MTLBindingInternal * const*>(&v11, &v14, &v15, 1uLL);
  v9 = 0;
  v10 = 0;
  __p = 0;
  std::vector<MTLBindingInternal *>::__init_with_size[abi:ne200100]<MTLBindingInternal **,MTLBindingInternal **>(&__p, v11, v12, (v12 - v11) >> 3);
  serializeBindings(&__p, a2, 0, a3, a4);
  if (__p)
  {
    v9 = __p;
    operator delete(__p);
  }

  if (v11)
  {
    v12 = v11;
    operator delete(v11);
  }

  v7 = *MEMORY[0x1E69E9840];
}

void sub_185C77A24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

char *serializeBindings(uint64_t *a1, char **a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v5 = a2[2];
  if (v5 >= 0xFFFFFFFFFFFFFFFCLL)
  {
    goto LABEL_263;
  }

  v9 = *a1;
  v8 = a1[1];
  v10 = a2[1];
  v111 = a4;
  if (v10 < v5 + 4)
  {
    if (!v10)
    {
      v10 = 128;
      a2[1] = 128;
    }

    while (v10 < v5 + 4)
    {
      if (v10 >> 1 >= ~v10)
      {
        v10 = v5 + 4;
      }

      else
      {
        v10 += v10 >> 1;
      }
    }

    result = malloc_type_realloc(*a2, v10, 0x100004077774924uLL);
    *a2 = result;
    if (result)
    {
      a2[1] = v10;
      v5 = a2[2];
      goto LABEL_12;
    }

LABEL_263:
    abort();
  }

  result = *a2;
LABEL_12:
  v12 = v8 - v9;
  v13 = (v8 - v9) >> 3;
  v14 = &result[v5];
  *v14 = (v8 - v9) >> 3;
  v14[1] = BYTE1(v13);
  v14[2] = BYTE2(v13);
  v14[3] = BYTE3(v13);
  a2[2] += 4;
  v15 = ((v8 - v9) >> 3);
  if ((v12 & 0x7FFFFFFF8) != 0)
  {
    v16 = 0;
    while (1)
    {
      v17 = *(*a1 + 8 * v16);
      v18 = [objc_msgSend(v17 name];
      v19 = strlen(v18);
      v20 = v19 + 1;
      v21 = a2[2];
      if (__CFADD__(v21, v19 + 1))
      {
        goto LABEL_263;
      }

      v22 = v19;
      v23 = a2[1];
      if (v23 >= &v21[v20])
      {
        v24 = *a2;
      }

      else
      {
        if (!v23)
        {
          a2[1] = 128;
          v23 = 128;
        }

        while (v23 < &v21[v20])
        {
          if (v23 >> 1 >= ~v23)
          {
            v23 = &v21[v20];
          }

          else
          {
            v23 += v23 >> 1;
          }
        }

        v24 = malloc_type_realloc(*a2, v23, 0x100004077774924uLL);
        *a2 = v24;
        if (!v24)
        {
          goto LABEL_263;
        }

        a2[1] = v23;
        v21 = a2[2];
      }

      memcpy(&v21[v24], v18, v22);
      a2[2][*a2 + v22] = 0;
      a2[2] += v20;
      v25 = 0;
      switch([v17 type])
      {
        case 0:
          if ([objc_msgSend(v17 "bufferPointerType")])
          {
            v25 = 1;
          }

          else
          {
            v25 = 2;
          }

          goto LABEL_45;
        case 1:
          v25 = 3;
          goto LABEL_45;
        case 2:
          v25 = 4;
          goto LABEL_45;
        case 3:
          v25 = 5;
          goto LABEL_45;
        case 4:
          v25 = 8;
          goto LABEL_45;
        case 15:
          v25 = 6;
          goto LABEL_45;
        case 16:
        case 17:
        case 18:
          goto LABEL_263;
        case 19:
          v25 = 12;
          goto LABEL_45;
        case 20:
          v25 = 11;
          goto LABEL_45;
        case 21:
          v25 = 13;
          goto LABEL_45;
        case 22:
          v25 = 14;
          goto LABEL_45;
        case 24:
          v25 = 16;
          goto LABEL_45;
        case 25:
          v25 = 18;
          goto LABEL_45;
        case 26:
          v25 = 19;
          goto LABEL_45;
        case 27:
          v25 = 17;
          goto LABEL_45;
        case 34:
          v25 = 21;
          goto LABEL_45;
        case 35:
          v25 = 22;
          goto LABEL_45;
        case 37:
          v25 = 24;
          goto LABEL_45;
        default:
LABEL_45:
          v26 = [v17 access];
          if ([v17 isActive])
          {
            v27 = 512;
          }

          else
          {
            v27 = 0;
          }

          v28 = a2[2];
          if (v28 >= 0xFFFFFFFFFFFFFFFCLL)
          {
            goto LABEL_263;
          }

          v29 = a2[1];
          if (v29 >= v28 + 4)
          {
            v30 = *a2;
          }

          else
          {
            if (!v29)
            {
              a2[1] = 128;
              v29 = 128;
            }

            while (v29 < v28 + 4)
            {
              if (v29 >> 1 >= ~v29)
              {
                v29 = v28 + 4;
              }

              else
              {
                v29 += v29 >> 1;
              }
            }

            v30 = malloc_type_realloc(*a2, v29, 0x100004077774924uLL);
            *a2 = v30;
            if (!v30)
            {
              goto LABEL_263;
            }

            a2[1] = v29;
            v28 = a2[2];
          }

          v31 = v25 | (32 * v26);
          v32 = &v30[v28];
          *v32 = v31;
          v32[1] = (v31 + v27) >> 8;
          v32[2] = (v31 + v27) >> 16;
          v32[3] = (v31 + v27) >> 24;
          a2[2] += 4;
          v33 = [v17 index];
          result = [v17 arrayLength];
          if ((v25 & 0xF) != 6)
          {
            v34 = a2[2];
            if (v34 >= 0xFFFFFFFFFFFFFFFCLL)
            {
              goto LABEL_263;
            }

            v35 = result;
            v36 = a2[1];
            if (v36 >= v34 + 4)
            {
              v37 = *a2;
            }

            else
            {
              if (!v36)
              {
                a2[1] = 128;
                v36 = 128;
              }

              while (v36 < v34 + 4)
              {
                if (v36 >> 1 >= ~v36)
                {
                  v36 = v34 + 4;
                }

                else
                {
                  v36 += v36 >> 1;
                }
              }

              v37 = malloc_type_realloc(*a2, v36, 0x100004077774924uLL);
              *a2 = v37;
              if (!v37)
              {
                goto LABEL_263;
              }

              a2[1] = v36;
              v34 = a2[2];
            }

            *&v37[v34] = v33;
            v38 = a2[2];
            v39 = v38 + 4;
            a2[2] = v38 + 4;
            if ((v38 + 4) >= 0xFFFFFFFFFFFFFFFCLL)
            {
              goto LABEL_263;
            }

            v40 = (v38 + 8);
            v41 = a2[1];
            if (v41 >= v40)
            {
              result = *a2;
            }

            else
            {
              if (!v41)
              {
                a2[1] = 128;
                v41 = 128;
              }

              while (v41 < v40)
              {
                if (v41 >> 1 >= ~v41)
                {
                  v41 = v40;
                }

                else
                {
                  v41 += v41 >> 1;
                }
              }

              result = malloc_type_realloc(*a2, v41, 0x100004077774924uLL);
              *a2 = result;
              if (!result)
              {
                goto LABEL_263;
              }

              a2[1] = v41;
              v39 = a2[2];
            }

            *&v39[result] = v35;
            a2[2] += 4;
          }

          if (v25 <= 8)
          {
            if (v25 > 3)
            {
              if (v25 <= 5)
              {
                if (v25 != 4)
                {
                  goto LABEL_244;
                }

                v79 = [v17 textureType];
                v80 = a2[2];
                if (v80 >= 0xFFFFFFFFFFFFFFFCLL)
                {
                  goto LABEL_263;
                }

                v52 = v79;
                v81 = a2[1];
                if (v81 >= v80 + 4)
                {
                  v82 = *a2;
                }

                else
                {
                  if (!v81)
                  {
                    a2[1] = 128;
                    v81 = 128;
                  }

                  while (v81 < v80 + 4)
                  {
                    if (v81 >> 1 >= ~v81)
                    {
                      v81 = v80 + 4;
                    }

                    else
                    {
                      v81 += v81 >> 1;
                    }
                  }

                  v82 = malloc_type_realloc(*a2, v81, 0x100004077774924uLL);
                  *a2 = v82;
                  if (!v82)
                  {
                    goto LABEL_263;
                  }

                  a2[1] = v81;
                  v80 = a2[2];
                }

                *&v82[v80] = 0;
                v92 = a2[2];
                v66 = v92 + 4;
                a2[2] = v92 + 4;
                if ((v92 + 4) >= 0xFFFFFFFFFFFFFFFCLL)
                {
                  goto LABEL_263;
                }

                v93 = (v92 + 8);
                v68 = a2[1];
                if (v68 < v93)
                {
                  if (!v68)
                  {
                    a2[1] = 128;
                    v68 = 128;
                  }

                  while (v68 < v93)
                  {
                    if (v68 >> 1 >= ~v68)
                    {
                      v68 = v93;
                    }

                    else
                    {
                      v68 += v68 >> 1;
                    }
                  }

                  goto LABEL_240;
                }

                goto LABEL_242;
              }

              if (v25 != 6)
              {
                v69 = [v17 indirectConstantDataType];
                v70 = a2[2];
                if (v70 >= 0xFFFFFFFFFFFFFFFCLL)
                {
                  goto LABEL_263;
                }

                v71 = v69;
                v72 = a2[1];
                if (v72 >= v70 + 4)
                {
                  v73 = *a2;
                }

                else
                {
                  if (!v72)
                  {
                    a2[1] = 128;
                    v72 = 128;
                  }

                  while (v72 < v70 + 4)
                  {
                    if (v72 >> 1 >= ~v72)
                    {
                      v72 = v70 + 4;
                    }

                    else
                    {
                      v72 += v72 >> 1;
                    }
                  }

                  v73 = malloc_type_realloc(*a2, v72, 0x100004077774924uLL);
                  *a2 = v73;
                  if (!v73)
                  {
                    goto LABEL_263;
                  }

                  a2[1] = v72;
                  v70 = a2[2];
                }

                *&v73[v70] = v71;
                a2[2] += 4;
                v85 = [v17 bufferPixelFormat];
                v86 = [v17 bufferALUType];
                v87 = [v17 indirectConstantAlignment];
                v88 = [v17 indirectConstantDataSize];
                v89 = a2[2];
                if (v89 >= 0xFFFFFFFFFFFFFFFCLL)
                {
                  goto LABEL_263;
                }

                v52 = v88;
                v90 = a2[1];
                if (v90 >= v89 + 4)
                {
                  v91 = *a2;
                }

                else
                {
                  if (!v90)
                  {
                    a2[1] = 128;
                    v90 = 128;
                  }

                  while (v90 < v89 + 4)
                  {
                    if (v90 >> 1 >= ~v90)
                    {
                      v90 = v89 + 4;
                    }

                    else
                    {
                      v90 += v90 >> 1;
                    }
                  }

                  v91 = malloc_type_realloc(*a2, v90, 0x100004077774924uLL);
                  *a2 = v91;
                  if (!v91)
                  {
                    goto LABEL_263;
                  }

                  a2[1] = v90;
                  v89 = a2[2];
                }

                *&v91[v89] = v85;
                v94 = a2[2];
                v95 = v94 + 4;
                a2[2] = v94 + 4;
                if ((v94 + 4) >= 0xFFFFFFFFFFFFFFFCLL)
                {
                  goto LABEL_263;
                }

                v96 = (v94 + 8);
                v97 = a2[1];
                if (v97 >= v96)
                {
                  v98 = *a2;
                }

                else
                {
                  if (!v97)
                  {
                    a2[1] = 128;
                    v97 = 128;
                  }

                  while (v97 < v96)
                  {
                    if (v97 >> 1 >= ~v97)
                    {
                      v97 = v96;
                    }

                    else
                    {
                      v97 += v97 >> 1;
                    }
                  }

                  v98 = malloc_type_realloc(*a2, v97, 0x100004077774924uLL);
                  *a2 = v98;
                  if (!v98)
                  {
                    goto LABEL_263;
                  }

                  a2[1] = v97;
                  v95 = a2[2];
                }

                *&v95[v98] = v86;
                v99 = a2[2];
                v100 = v99 + 4;
                a2[2] = v99 + 4;
                if ((v99 + 4) >= 0xFFFFFFFFFFFFFFFCLL)
                {
                  goto LABEL_263;
                }

                v101 = (v99 + 8);
                v102 = a2[1];
                if (v102 >= v101)
                {
                  v103 = *a2;
                }

                else
                {
                  if (!v102)
                  {
                    a2[1] = 128;
                    v102 = 128;
                  }

                  while (v102 < v101)
                  {
                    if (v102 >> 1 >= ~v102)
                    {
                      v102 = v101;
                    }

                    else
                    {
                      v102 += v102 >> 1;
                    }
                  }

                  v103 = malloc_type_realloc(*a2, v102, 0x100004077774924uLL);
                  *a2 = v103;
                  if (!v103)
                  {
                    goto LABEL_263;
                  }

                  a2[1] = v102;
                  v100 = a2[2];
                }

                *&v100[v103] = v87;
                v104 = a2[2];
                v66 = v104 + 4;
                a2[2] = v104 + 4;
                if ((v104 + 4) >= 0xFFFFFFFFFFFFFFFCLL)
                {
                  goto LABEL_263;
                }

                v105 = (v104 + 8);
                v68 = a2[1];
                if (v68 < v105)
                {
                  if (!v68)
                  {
                    a2[1] = 128;
                    v68 = 128;
                  }

                  while (v68 < v105)
                  {
                    if (v68 >> 1 >= ~v68)
                    {
                      v68 = v105;
                    }

                    else
                    {
                      v68 += v68 >> 1;
                    }
                  }

                  goto LABEL_240;
                }

                goto LABEL_242;
              }

              goto LABEL_158;
            }

            if ((v25 - 1) >= 3)
            {
              goto LABEL_263;
            }
          }

          else
          {
            if (v25 > 0x16)
            {
              goto LABEL_263;
            }

            if (((1 << v25) & 0xF3800) != 0)
            {
              goto LABEL_244;
            }

            if (((1 << v25) & 0x204000) == 0)
            {
              if (v25 != 22)
              {
                goto LABEL_263;
              }

LABEL_158:
              v74 = [v17 builtInDataType];
              v75 = [v17 builtInType];
              v76 = a2[2];
              if (v76 >= 0xFFFFFFFFFFFFFFFCLL)
              {
                goto LABEL_263;
              }

              v52 = v75;
              v77 = a2[1];
              if (v77 >= v76 + 4)
              {
                v78 = *a2;
              }

              else
              {
                if (!v77)
                {
                  a2[1] = 128;
                  v77 = 128;
                }

                while (v77 < v76 + 4)
                {
                  if (v77 >> 1 >= ~v77)
                  {
                    v77 = v76 + 4;
                  }

                  else
                  {
                    v77 += v77 >> 1;
                  }
                }

                v78 = malloc_type_realloc(*a2, v77, 0x100004077774924uLL);
                *a2 = v78;
                if (!v78)
                {
                  goto LABEL_263;
                }

                a2[1] = v77;
                v76 = a2[2];
              }

              *&v78[v76] = v74;
              v83 = a2[2];
              v66 = v83 + 4;
              a2[2] = v83 + 4;
              if ((v83 + 4) >= 0xFFFFFFFFFFFFFFFCLL)
              {
                goto LABEL_263;
              }

              v84 = (v83 + 8);
              v68 = a2[1];
              if (v68 < v84)
              {
                if (!v68)
                {
                  a2[1] = 128;
                  v68 = 128;
                }

                while (v68 < v84)
                {
                  if (v68 >> 1 >= ~v68)
                  {
                    v68 = v84;
                  }

                  else
                  {
                    v68 += v68 >> 1;
                  }
                }

LABEL_240:
                result = malloc_type_realloc(*a2, v68, 0x100004077774924uLL);
                *a2 = result;
                if (!result)
                {
                  goto LABEL_263;
                }

                a2[1] = v68;
                v66 = a2[2];
                goto LABEL_243;
              }

              goto LABEL_242;
            }
          }

          v42 = [v17 bufferDataType];
          v43 = a2[2];
          if (v43 >= 0xFFFFFFFFFFFFFFFCLL)
          {
            goto LABEL_263;
          }

          v44 = v42;
          v45 = a2[1];
          if (v45 >= v43 + 4)
          {
            v46 = *a2;
          }

          else
          {
            if (!v45)
            {
              a2[1] = 128;
              v45 = 128;
            }

            while (v45 < v43 + 4)
            {
              if (v45 >> 1 >= ~v45)
              {
                v45 = v43 + 4;
              }

              else
              {
                v45 += v45 >> 1;
              }
            }

            v46 = malloc_type_realloc(*a2, v45, 0x100004077774924uLL);
            *a2 = v46;
            if (!v46)
            {
              goto LABEL_263;
            }

            a2[1] = v45;
            v43 = a2[2];
          }

          *&v46[v43] = v44;
          a2[2] += 4;
          v47 = [v17 bufferPixelFormat];
          v48 = [v17 bufferALUType];
          v49 = [v17 bufferAlignment];
          v50 = [v17 bufferDataSize];
          v51 = a2[2];
          if (v51 >= 0xFFFFFFFFFFFFFFFCLL)
          {
            goto LABEL_263;
          }

          v52 = v50;
          v53 = a2[1];
          if (v53 >= v51 + 4)
          {
            v54 = *a2;
          }

          else
          {
            if (!v53)
            {
              a2[1] = 128;
              v53 = 128;
            }

            while (v53 < v51 + 4)
            {
              if (v53 >> 1 >= ~v53)
              {
                v53 = v51 + 4;
              }

              else
              {
                v53 += v53 >> 1;
              }
            }

            v54 = malloc_type_realloc(*a2, v53, 0x100004077774924uLL);
            *a2 = v54;
            if (!v54)
            {
              goto LABEL_263;
            }

            a2[1] = v53;
            v51 = a2[2];
          }

          *&v54[v51] = v47;
          v55 = a2[2];
          v56 = v55 + 4;
          a2[2] = v55 + 4;
          if ((v55 + 4) >= 0xFFFFFFFFFFFFFFFCLL)
          {
            goto LABEL_263;
          }

          v57 = (v55 + 8);
          v58 = a2[1];
          if (v58 >= v57)
          {
            v59 = *a2;
          }

          else
          {
            if (!v58)
            {
              a2[1] = 128;
              v58 = 128;
            }

            while (v58 < v57)
            {
              if (v58 >> 1 >= ~v58)
              {
                v58 = v57;
              }

              else
              {
                v58 += v58 >> 1;
              }
            }

            v59 = malloc_type_realloc(*a2, v58, 0x100004077774924uLL);
            *a2 = v59;
            if (!v59)
            {
              goto LABEL_263;
            }

            a2[1] = v58;
            v56 = a2[2];
          }

          *&v56[v59] = v48;
          v60 = a2[2];
          v61 = v60 + 4;
          a2[2] = v60 + 4;
          if ((v60 + 4) >= 0xFFFFFFFFFFFFFFFCLL)
          {
            goto LABEL_263;
          }

          v62 = (v60 + 8);
          v63 = a2[1];
          if (v63 >= v62)
          {
            v64 = *a2;
          }

          else
          {
            if (!v63)
            {
              a2[1] = 128;
              v63 = 128;
            }

            while (v63 < v62)
            {
              if (v63 >> 1 >= ~v63)
              {
                v63 = v62;
              }

              else
              {
                v63 += v63 >> 1;
              }
            }

            v64 = malloc_type_realloc(*a2, v63, 0x100004077774924uLL);
            *a2 = v64;
            if (!v64)
            {
              goto LABEL_263;
            }

            a2[1] = v63;
            v61 = a2[2];
          }

          *&v61[v64] = v49;
          v65 = a2[2];
          v66 = v65 + 4;
          a2[2] = v65 + 4;
          if ((v65 + 4) >= 0xFFFFFFFFFFFFFFFCLL)
          {
            goto LABEL_263;
          }

          v67 = (v65 + 8);
          v68 = a2[1];
          if (v68 < v67)
          {
            if (!v68)
            {
              a2[1] = 128;
              v68 = 128;
            }

            while (v68 < v67)
            {
              if (v68 >> 1 >= ~v68)
              {
                v68 = v67;
              }

              else
              {
                v68 += v68 >> 1;
              }
            }

            goto LABEL_240;
          }

LABEL_242:
          result = *a2;
LABEL_243:
          *&v66[result] = v52;
          a2[2] += 4;
LABEL_244:
          if (++v16 == v15)
          {
            goto LABEL_245;
          }

          break;
      }
    }
  }

LABEL_245:
  v106 = v111;
  if (v15)
  {
    for (i = 0; i != v15; ++i)
    {
      v108 = *(*a1 + 8 * i);
      if ([v108 structType])
      {
        result = serializeStructTypeInternal([v108 structType], a2, v106, a5);
      }

      else
      {
        v109 = a2[2];
        if (v109 >= 0xFFFFFFFFFFFFFFFCLL)
        {
          goto LABEL_263;
        }

        v110 = a2[1];
        if (v110 >= v109 + 4)
        {
          result = *a2;
        }

        else
        {
          if (!v110)
          {
            a2[1] = 128;
            v110 = 128;
          }

          while (v110 < v109 + 4)
          {
            if (v110 >> 1 >= ~v110)
            {
              v110 = v109 + 4;
            }

            else
            {
              v110 += v110 >> 1;
            }
          }

          result = malloc_type_realloc(*a2, v110, 0x100004077774924uLL);
          *a2 = result;
          if (!result)
          {
            goto LABEL_263;
          }

          a2[1] = v110;
          v109 = a2[2];
        }

        *&result[v109] = 0;
        a2[2] += 4;
      }
    }
  }

  return result;
}

void serializeStructType(char *a1, char **a2, unsigned int a3)
{
  v4[0] = 0;
  v4[1] = 0;
  v3 = v4;
  serializeStructTypeInternal(a1, a2, &v3, a3);
  std::__tree<flatbuffers::Offset<flatbuffers::String>,flatbuffers::FlatBufferBuilder::StringOffsetCompare,std::allocator<flatbuffers::Offset<flatbuffers::String>>>::destroy(&v3, v4[0]);
}

void MTLArgumentReader::~MTLArgumentReader(MTLArgumentReader *this)
{
  *this = &unk_1EF474F98;
  v2 = *(this + 1);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *(this + 1) = 0;
}

{
  *this = &unk_1EF474F98;
  v2 = *(this + 1);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *(this + 1) = 0;
}

{
  *this = &unk_1EF474F98;
  v2 = *(this + 1);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *(this + 1) = 0;

  JUMPOUT(0x1865FF210);
}

uint64_t MTLReflectionByNameReader::attributes@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  v2 = *(this + 16);
  if ((*(v2 + 136) | 2) == 3 && (v4 = (*(v2 + 128) + 192), v3 = *v4, (v5 = v4[1] - *v4) != 0))
  {
    *a2 = v3;
    *(a2 + 8) = v5 >> 3;
    v6 = 1;
  }

  else
  {
    v6 = 0;
    *a2 = 0;
  }

  *(a2 + 16) = v6;
  return this;
}

uint64_t MTLReflectionByNameReader::primitiveKind(MTLReflectionByNameReader *this)
{
  v1 = *(this + 2);
  if (*(v1 + 136) == 6)
  {
    return *(*(v1 + 128) + 128);
  }

  else
  {
    return 0;
  }
}

uint64_t MTLReflectionByNameReader::tags(MTLReflectionByNameReader *this)
{
  v1 = *(this + 2);
  if (*(v1 + 136) == 6)
  {
    return *(*(v1 + 128) + 136);
  }

  else
  {
    return 0;
  }
}

uint64_t MTLReflectionByNameReader::tagCount(MTLReflectionByNameReader *this)
{
  v1 = *(this + 2);
  if (*(v1 + 136) == 6)
  {
    return *(*(v1 + 128) + 144);
  }

  else
  {
    return 0;
  }
}

void MTLInputStageReflectionDeserializer::deserializeStageInputDescriptor(MTLInputStageReflectionDeserializer *this, _WORD *a2, unint64_t a3, const BOOL *a4)
{
  v38 = *MEMORY[0x1E69E9840];
  v37 = 0;
  memset(v36, 0, sizeof(v36));
  v5 = a2[1];
  if (v5 >= 0x800)
  {
    v6 = (a2 + a2[3]);
    v7 = v5 >> 11;
    do
    {
      v9 = *v6;
      v6 += 2;
      v8 = v9;
      if (a4[v9 & 0x1F])
      {
        *(v36 + ((v8 >> 5) & 0x1F)) = 1;
      }

      --v7;
    }

    while (v7);
  }

  v10 = a2 + a2[2];
  v11 = (v5 >> 6) & 0x1F;
  if (v11)
  {
    v12 = 0;
    v13 = 0;
    v14 = (v5 >> 6) & 0x1F;
    v15 = (a2 + a2[2]);
    do
    {
      v17 = *v15;
      v15 += 4;
      v16 = v17;
      if ((v17 >> 5) - 7 <= 1)
      {
        v13 = (*(v36 + (v16 & 0x1F)) | v13) != 0;
        v12 = 1;
      }

      --v14;
    }

    while (v14);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  v32 = v13;
  v34 = (v12 & 1) + v11 + *(this + 4);
  v18 = malloc_type_malloc(8 * v34, 0x80040B8603338uLL);
  v31 = &v18[v11];
  memcpy(&v31[v12 & 1], *(this + 1), 8 * *(this + 4));
  free(*(this + 1));
  *(this + 1) = 0;
  v19 = 0x1E696A000uLL;
  v35 = v11;
  if (v11)
  {
    v20 = 0;
    do
    {
      v21 = v19;
      LOBYTE(v30) = 0;
      v22 = -[MTLBufferBindingInternal initWithName:type:access:isActive:locationIndex:arraySize:dataType:pixelFormat:aluType:isConstantBuffer:dataSize:alignment:]([MTLBufferBindingInternal alloc], "initWithName:type:access:isActive:locationIndex:arraySize:dataType:pixelFormat:aluType:isConstantBuffer:dataSize:alignment:", [*(v19 + 3776) stringWithFormat:@"%s.%u", *(this + 23), v20], 0, 0, *(v36 + (*v10 & 0x1F)), *v10 & 0x1FLL, 1, 1, 0, 0, v30, *(v10 + 1), 4);
      [(MTLBufferBindingInternal *)v22 setVertexDescriptorBuffer:1];
      v19 = v21;
      v18[v20++] = v22;
      v10 += 16;
    }

    while (v35 != v20);
  }

  if (v12)
  {
    v23 = a2[1];
    v24 = [*(v19 + 3776) stringWithFormat:@"%s.%u", *(this + 23), v35];
    v25 = [MTLBufferBindingInternal alloc];
    v26 = 33;
    if ((v23 & 1) == 0)
    {
      v26 = 41;
    }

    v27 = 4;
    if ((v23 & 1) == 0)
    {
      v27 = 2;
    }

    LOBYTE(v30) = 0;
    v28 = [(MTLBufferBindingInternal *)v25 initWithName:v24 type:0 access:0 isActive:v32 locationIndex:(a2[1] >> 1) & 0x1F arraySize:1 dataType:v26 pixelFormat:0 aluType:0 isConstantBuffer:v30 dataSize:v27 alignment:v27];
    [(MTLBufferBindingInternal *)v28 setVertexDescriptorBuffer:1];
    *v31 = v28;
  }

  *(this + 1) = v18;
  *(this + 4) = v34;
  v29 = *MEMORY[0x1E69E9840];
}

void MTLVertexReflectionReader::deserializeStageData(uint64_t a1, dispatch_data_t data, uint64_t a3)
{
  v6 = 0;
  buffer_ptr = 0;
  v5 = dispatch_data_create_map(data, &buffer_ptr, &v6);
  if ((*(buffer_ptr + 8) & 2) != 0)
  {
    (*(**(a1 + 16) + 32))(*(a1 + 16), buffer_ptr + 12, v6 - 12, a3);
  }

  dispatch_release(v5);
}

void MTLIntersectionReflectionDeserializer::deserialize(uint64_t a1, void *a2, dispatch_data_t data)
{
  if (data)
  {
    size_ptr = 0;
    buffer_ptr = 0;
    v5 = dispatch_data_create_map(data, &buffer_ptr, &size_ptr);
    v6 = *(a1 + 104);
    v8 = size_ptr;
    v7 = buffer_ptr;
    v32 = buffer_ptr;
    v33 = size_ptr;
    v34 = 0;
    *(a1 + 112) = 0;
    if (v8 >= 8 && *v7 == 0x4E494253504C544DLL)
    {
      v34 = 8;
      if ((v8 & 0xFFFFFFFFFFFFFFFCLL) == 8)
      {
        goto LABEL_40;
      }

      v9 = v7[2];
      v34 = 12;
      *(a1 + 112) = v9;
      if (v9 > 0x20000)
      {
        *(a1 + 40) = DeserialContext::stringFromSerializedData(&v32);
      }
    }

    v10 = (v6 >> 1) & 1;
    deserializeArgumentsWithDeserializer(a2, a1, &v32, v10);
    v12 = v33;
    v11 = v34;
    if (v33 <= v34 || v33 - v34 <= 3)
    {
LABEL_40:
      abort();
    }

    v13 = v32;
    v14 = *&v32[v34];
    v15 = v34 + 4;
    v34 += 4;
    *(a1 + 48) = v14;
    v16 = *(a1 + 112);
    if (v16 >= 0x10000)
    {
      v30 = v12 > v15;
      v17 = v12 - v15;
      if (!v30 || v17 <= 3)
      {
        goto LABEL_40;
      }

      v18 = *&v13[v15];
      v34 = v11 + 8;
      if (v18)
      {
        v19 = objc_alloc(MEMORY[0x1E695DEF0]);
        v20 = v34;
        if (v34 >= v33)
        {
          goto LABEL_40;
        }

        v34 += v18;
        if (v20 + v18 > v33)
        {
          goto LABEL_40;
        }

        v21 = [v19 initWithBytes:&v32[v20] length:v18];
        v16 = *(a1 + 112);
      }

      else
      {
        v21 = 0;
      }

      *(a1 + 56) = v21;
      if (v16 > 0x10000)
      {
        v23 = v33;
        v22 = v34;
        if (v33 <= v34)
        {
          goto LABEL_40;
        }

        if (v33 - v34 <= 3)
        {
          goto LABEL_40;
        }

        v24 = v32;
        v25 = *&v32[v34];
        v34 += 4;
        *(a1 + 128) = v25;
        v30 = v23 > v22 + 4;
        v26 = v23 - (v22 + 4);
        if (!v30 || v26 <= 3)
        {
          goto LABEL_40;
        }

        v27 = *&v24[v22 + 4];
        v34 = v22 + 8;
        *(a1 + 144) = v27;
        if (v27)
        {
          *(a1 + 136) = malloc_type_malloc(8 * v27, 0x80040B8603338uLL);
          if (*(a1 + 144))
          {
            v28 = 0;
            do
            {
              v29 = [MTLTag alloc];
              v30 = v33 > v34 && v33 - v34 > 3;
              if (!v30)
              {
                goto LABEL_40;
              }

              v31 = *&v32[v34];
              v34 += 4;
              *(*(a1 + 136) + 8 * v28++) = [(MTLTag *)v29 initWithTagType:v31];
            }

            while (v28 < *(a1 + 144));
          }
        }

        if (*(a1 + 112) >= 0x20000u)
        {
          deserializeGlobalBindingsWithDeserializer(a2, a1, &v32, v10);
        }
      }
    }

    if (v34 != size_ptr || v33 < size_ptr)
    {
      goto LABEL_40;
    }

    dispatch_release(v5);
  }

  else
  {
    *(a1 + 48) = -1;
  }
}

void MTLIntersectionReflectionDeserializer::~MTLIntersectionReflectionDeserializer(MTLIntersectionReflectionDeserializer *this)
{
  *this = &unk_1EF475068;
  v2 = *(this + 17);
  if (v2)
  {
    if (*(this + 36))
    {
      v3 = 0;
      do
      {

        *(*(this + 17) + 8 * v3++) = 0;
      }

      while (v3 < *(this + 36));
      v2 = *(this + 17);
    }

    free(v2);
  }

  MTLArgumentDeserializer::~MTLArgumentDeserializer(this);
}

{
  MTLIntersectionReflectionDeserializer::~MTLIntersectionReflectionDeserializer(this);

  JUMPOUT(0x1865FF210);
}

uint64_t MTLStitchingReflectionDeserializer::deserializeArguments(int a1, int a2, DeserialContext *this, void **a4, void *a5)
{
  result = DeserialContext::deserializeUint32(this);
  if (result)
  {
    v30 = 8 * result;
    v8 = 0;
    v27 = (result - 1);
    v28 = a4;
    *a4 = malloc_type_malloc(v30 - 1, 0x80040B8603338uLL);
    while (1)
    {
      v32 = DeserialContext::stringFromSerializedData(this);
      v9 = DeserialContext::deserializeUint32(this);
      if ((v9 & 0xF) == 6)
      {
        v31 = 0;
      }

      else
      {
        v10 = DeserialContext::deserializeUint32(this);
        DeserialContext::deserializeUint32(this);
        v31 = v10;
      }

      if ((v9 & 0x1F) != 0x14)
      {
        abort();
      }

      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      deserializeStitchingTypeInfo(this, &v33);
      v11 = v33;
      v12 = v34;
      v13 = DWORD2(v36);
      if (v33 <= 58)
      {
        if (v33 == 1)
        {
          goto LABEL_15;
        }

        if (v33 != 58)
        {
          goto LABEL_24;
        }

        LOBYTE(v26) = v35;
        v14 = [[MTLTextureBindingInternal alloc] initWithName:v32 access:v36 isActive:(v9 >> 9) & 1 locationIndex:v31 arraySize:DWORD2(v36) dataType:v34 textureType:v26 isDepthTexture:?];
      }

      else
      {
        if (v33 != 59)
        {
          if (v33 == 60)
          {
            v21 = DWORD2(v33);
            v20 = HIDWORD(v33);
            if (v34 == 1)
            {
              v22 = newStitchingStructTypeFromSerializedContext(this);
            }

            else if (v34 == 58)
            {
              v22 = [[MTLTextureReferenceType alloc] initWithDataType:__PAIR128__(*(&v34 + 1) textureType:58) access:v36 isDepthTexture:v35];
            }

            else
            {
              v22 = [[MTLType alloc] initWithDataType:v34];
            }

            v23 = v22;
            LOBYTE(v25) = 0;
            v24 = [[MTLPointerType alloc] initWithElementType:v12 elementTypeDescription:v22 access:0 alignment:v20 dataSize:v21 elementIsIndirectArgumentBuffer:0 isConstantBuffer:v25];

            p_super = [[MTLBindingInternal alloc] initWithName:v32 type:28 access:0 index:v31 active:(v9 >> 9) & 1 arrayLength:v13 typeDescription:v24];
            goto LABEL_29;
          }

          if (v33 == 138)
          {
LABEL_15:
            v15 = newStitchingStructTypeFromSerializedContext(this);
            v16 = [MTLBindingInternal alloc];
            if (v11 == 138)
            {
              v17 = 17;
            }

            else
            {
              v17 = 29;
            }

            v18 = [(MTLBindingInternal *)v16 initWithName:v32 type:v17 access:0 index:v31 active:(v9 >> 9) & 1 arrayLength:v13 typeDescription:v15];
          }

          else
          {
LABEL_24:
            v15 = [[MTLType alloc] initWithDataType:v33];
            v18 = [[MTLBindingInternal alloc] initWithName:v32 type:18 access:(v9 >> 5) & 0xF index:v31 active:(v9 >> 9) & 1 arrayLength:v13 typeDescription:v15];
          }

          p_super = v18;

          goto LABEL_29;
        }

        v14 = [[MTLBindingInternal alloc] initWithName:v32 type:3 access:(v9 >> 5) & 0xF index:v31 active:(v9 >> 9) & 1 arrayLength:DWORD2(v36)];
      }

      p_super = &v14->super;
LABEL_29:
      if (8 * v27 == v8)
      {
        *a5 = [(MTLBindingInternal *)p_super dataTypeDescription];
      }

      else
      {
        *(*v28 + v8) = p_super;
      }

      v8 += 8;
      if (v30 == v8)
      {
        return v27;
      }
    }
  }

  return result;
}

uint64_t deserializeStitchingTypeInfo@<X0>(DeserialContext *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = DeserialContext::deserializeUint32(a1);
  *(a2 + 8) = DeserialContext::deserializeUint32(a1);
  *(a2 + 12) = DeserialContext::deserializeUint32(a1);
  *(a2 + 16) = DeserialContext::deserializeUint32(a1);
  v4 = DeserialContext::deserializeUint32(a1);
  *(a2 + 24) = v4;
  *(a2 + 32) = BYTE2(v4) & 1;
  *(a2 + 40) = DeserialContext::deserializeUint32(a1);
  *(a2 + 48) = DeserialContext::deserializeUint32(a1);
  result = DeserialContext::deserializeUint32(a1);
  *(a2 + 56) = result;
  return result;
}

MTLStructTypeInternal *newStitchingStructTypeFromSerializedContext(DeserialContext *a1)
{
  v37 = *MEMORY[0x1E69E9840];
  v2 = [[MTLStructTypeInternal alloc] initWithMembers:0 count:0 typeName:DeserialContext::stringFromSerializedData(a1)];
  v3 = DeserialContext::deserializeUint32(a1);
  if (v3)
  {
    v26 = &v26;
    v27 = v2;
    v4 = v3;
    v29 = 8 * v3;
    MEMORY[0x1EEE9AC00](v3);
    v6 = (&v26 - v5);
    v7 = 0;
    while (1)
    {
      v32 = DeserialContext::stringFromSerializedData(a1);
      v31 = DeserialContext::deserializeUint32(a1);
      v30 = DeserialContext::deserializeUint32(a1);
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      deserializeStitchingTypeInfo(a1, &v33);
      v8 = 0;
      v9 = v33;
      v10 = v34;
      if (v33 <= 57)
      {
        if (v33 == 1)
        {
LABEL_12:
          v11 = newStitchingStructTypeFromSerializedContext(a1);
          goto LABEL_13;
        }

        if (v33 == 2)
        {
          v28 = HIDWORD(v33);
          v12 = DWORD2(v36);
          if (v34 == 58)
          {
            v13 = [[MTLTextureReferenceType alloc] initWithDataType:__PAIR128__(*(&v34 + 1) textureType:58) access:v36 isDepthTexture:v35];
          }

          else
          {
            v13 = [[MTLType alloc] initWithDataType:v34];
          }

          v16 = v13;
          v17 = [MTLArrayType alloc];
          v18 = [(MTLArrayType *)v17 initWithArrayLength:v12 elementType:v10 stride:v28 pixelFormat:0 aluType:0 details:v16];
          goto LABEL_22;
        }
      }

      else
      {
        switch(v33)
        {
          case 0x8ALL:
            goto LABEL_12;
          case 0x3CLL:
            v28 = DWORD2(v33);
            v14 = HIDWORD(v33);
            if (v34 == 1)
            {
              v15 = newStitchingStructTypeFromSerializedContext(a1);
            }

            else if (v34 == 58)
            {
              v15 = [[MTLTextureReferenceType alloc] initWithDataType:__PAIR128__(*(&v34 + 1) textureType:58) access:v36 isDepthTexture:v35];
            }

            else
            {
              v15 = [[MTLType alloc] initWithDataType:*(&v35 + 1)];
            }

            v16 = v15;
            v19 = [MTLPointerType alloc];
            LOBYTE(v25) = 0;
            v18 = [(MTLPointerType *)v19 initWithElementType:v10 elementTypeDescription:v16 access:0 alignment:v14 dataSize:v28 elementIsIndirectArgumentBuffer:0 isConstantBuffer:v25];
LABEL_22:
            v8 = v18;

            break;
          case 0x3ALL:
            v11 = [[MTLTextureReferenceType alloc] initWithDataType:v34 textureType:v36 access:v35 isDepthTexture:?];
LABEL_13:
            v8 = v11;
            break;
        }
      }

      v20 = v30;
      v21 = [MTLStructMemberInternal alloc];
      v6[v7 / 8] = [(MTLStructMemberInternal *)v21 initWithName:v32 offset:v31 dataType:v9 pixelFormat:0 aluType:0 indirectArgumentIndex:0 render_target:v20 raster_order_group:0 details:v8];

      v7 += 8;
      if (v29 == v7)
      {
        v2 = v27;
        [(MTLStructTypeInternal *)v27 setMembers:v6 count:v4];
        do
        {
          v22 = *v6++;

          --v4;
        }

        while (v4);
        break;
      }
    }
  }

  v23 = *MEMORY[0x1E69E9840];
  return v2;
}

uint64_t MTLStitchingReflectionDeserializer::deserializeArguments(uint64_t a1, int a2, DeserialContext *this)
{
  *(a1 + 36) = DeserialContext::deserializeUint32(this);
  v5 = DeserialContext::deserializeUint32(this);
  result = MTLStitchingReflectionDeserializer::deserializeArguments(v5, v6, this, (a1 + 8), (a1 + 128));
  *(a1 + 16) = result;
  *(this + 2) = v5;
  if (*(this + 1) < v5)
  {
    abort();
  }

  return result;
}

void MTLStitchingReflectionDeserializer::deserialize(uint64_t a1, void *a2, dispatch_data_t data)
{
  if (data)
  {
    size_ptr = 0;
    buffer_ptr = 0;
    v6 = dispatch_data_create_map(data, &buffer_ptr, &size_ptr);
    v8 = size_ptr;
    v7 = buffer_ptr;
    v22 = buffer_ptr;
    v23 = size_ptr;
    v24 = 0;
    *(a1 + 112) = 0;
    if (v8 >= 8 && *v7 == 0x4E494253504C544DLL)
    {
      v24 = 8;
      if ((v8 & 0xFFFFFFFFFFFFFFFCLL) == 8)
      {
        goto LABEL_28;
      }

      v9 = v7[2];
      v24 = 12;
      *(a1 + 112) = v9;
      if (v9 > 0x20000)
      {
        *(a1 + 40) = DeserialContext::stringFromSerializedData(&v22);
      }
    }

    MTLStitchingReflectionDeserializer::deserializeArguments(a1, v5, &v22);
    v11 = v23;
    v10 = v24;
    v12 = v23 > v24 && v23 - v24 > 3;
    if (!v12)
    {
LABEL_28:
      abort();
    }

    v13 = v22;
    v14 = *&v22[v24];
    v15 = v24 + 4;
    v24 += 4;
    *(a1 + 48) = v14;
    v16 = *(a1 + 112);
    if (v16 >= 0x10000)
    {
      v12 = v11 > v15;
      v17 = v11 - v15;
      if (!v12 || v17 <= 3)
      {
        goto LABEL_28;
      }

      v18 = *&v13[v15];
      v24 = v10 + 8;
      if (v18)
      {
        v19 = objc_alloc(MEMORY[0x1E695DEF0]);
        v20 = v24;
        if (v24 >= v23)
        {
          goto LABEL_28;
        }

        v24 += v18;
        if (v20 + v18 > v23)
        {
          goto LABEL_28;
        }

        v21 = [v19 initWithBytes:&v22[v20] length:v18];
        v16 = *(a1 + 112);
      }

      else
      {
        v21 = 0;
      }

      *(a1 + 56) = v21;
      if (v16 >= 0x20000)
      {
        deserializeGlobalBindingsWithDeserializer(a2, a1, &v22, 0);
      }
    }

    if (v24 != size_ptr || v23 < size_ptr)
    {
      goto LABEL_28;
    }

    dispatch_release(v6);
  }

  else
  {
    *(a1 + 48) = -1;
  }
}

void MTLStitchingReflectionDeserializer::~MTLStitchingReflectionDeserializer(MTLStitchingReflectionDeserializer *this)
{
  *this = &unk_1EF475098;
  v2 = *(this + 16);
  if (v2)
  {

    *(this + 16) = 0;
  }

  MTLArgumentDeserializer::~MTLArgumentDeserializer(this);
}

{
  MTLStitchingReflectionDeserializer::~MTLStitchingReflectionDeserializer(this);

  JUMPOUT(0x1865FF210);
}

uint64_t MTLComputeReflectionReader::deserialize(void **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = (*(*a1[2] + 24))(a1[2]);
  if (a4)
  {
    v7 = (*a1)[4];
    v8 = (a1[2] + 18);

    return v7(a1, a4, v8);
  }

  return result;
}

void MTLComputeReflectionReader::deserializeStageData(uint64_t a1, dispatch_data_t data, uint64_t a3)
{
  if (data)
  {
    v7 = 0;
    buffer_ptr = 0;
    v5 = dispatch_data_create_map(data, &buffer_ptr, &v7);
    if (*(buffer_ptr + 2))
    {
      v6 = 20;
      if ((*(buffer_ptr + 2) & 0x20) == 0)
      {
        v6 = 12;
      }

      (*(**(a1 + 16) + 32))(*(a1 + 16), buffer_ptr + v6, v7 - 12, a3);
    }

    dispatch_release(v5);
  }
}

void MTLObjectOrMeshReflectionDeserializerLegacy::deserialize(uint64_t a1, void *a2, dispatch_data_t data)
{
  if (!data)
  {
    *(a1 + 48) = -1;
    return;
  }

  size_ptr = 0;
  buffer_ptr = 0;
  v5 = dispatch_data_create_map(data, &buffer_ptr, &size_ptr);
  v7 = size_ptr;
  v6 = buffer_ptr;
  v23 = buffer_ptr;
  v24 = size_ptr;
  v25 = 0;
  v8 = *(a1 + 104);
  *(a1 + 112) = 0;
  if (v7 >= 8 && *v6 == 0x4E494253504C544DLL)
  {
    v25 = 8;
    if ((v7 & 0xFFFFFFFFFFFFFFFCLL) == 8)
    {
      goto LABEL_25;
    }

    v9 = v6[2];
    v25 = 12;
    *(a1 + 112) = v9;
    if (v9 > 0x20000)
    {
      *(a1 + 40) = DeserialContext::stringFromSerializedData(&v23);
    }
  }

  v10 = (v8 >> 1) & 1;
  deserializeArgumentsWithDeserializer(a2, a1, &v23, v10);
  v12 = v24;
  v11 = v25;
  if (v24 <= v25 || v24 - v25 <= 3)
  {
    goto LABEL_25;
  }

  v13 = v23;
  v14 = *&v23[v25];
  v15 = v25 + 4;
  v25 += 4;
  *(a1 + 48) = v14;
  v16 = *(a1 + 112);
  if (v16 < 0x10000)
  {
    goto LABEL_21;
  }

  v17 = v12 > v15;
  v18 = v12 - v15;
  if (!v17 || v18 <= 3)
  {
    goto LABEL_25;
  }

  v19 = *&v13[v15];
  v25 = v11 + 8;
  if (v19)
  {
    v20 = objc_alloc(MEMORY[0x1E695DEF0]);
    v21 = v25;
    if (v25 < v24)
    {
      v25 += v19;
      if (v21 + v19 <= v24)
      {
        v22 = [v20 initWithBytes:&v23[v21] length:v19];
        v16 = *(a1 + 112);
        goto LABEL_19;
      }
    }

LABEL_25:
    abort();
  }

  v22 = 0;
LABEL_19:
  *(a1 + 56) = v22;
  if (v16 >= 0x20000)
  {
    deserializeGlobalBindingsWithDeserializer(a2, a1, &v23, v10);
  }

LABEL_21:
  if (v25 != size_ptr || v24 < size_ptr)
  {
    goto LABEL_25;
  }

  dispatch_release(v5);
}

uint64_t readDynamicLibraryReflectionData(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [a3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(a3);
        }

        v9 = [*(*(&v13 + 1) + 8 * i) reflectionData];
        if (v9)
        {
          ReflectionReaderFactory<MTLDynamicLibraryReflectionReader>::Create(a4, v9);
        }
      }

      v6 = [a3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x1E69E9840];
  return 0;
}

void MTLDynamicLibraryReflectionReader::~MTLDynamicLibraryReflectionReader(MTLDynamicLibraryReflectionReader *this)
{
  *this = &unk_1EF474F98;
  v2 = *(this + 1);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *(this + 1) = 0;
}

{
  *this = &unk_1EF474F98;
  v2 = *(this + 1);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *(this + 1) = 0;

  JUMPOUT(0x1865FF210);
}

void MTLVisibleReflectionReader::~MTLVisibleReflectionReader(MTLVisibleReflectionReader *this)
{
  *this = &unk_1EF474F98;
  v2 = *(this + 1);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *(this + 1) = 0;
}

{
  *this = &unk_1EF474F98;
  v2 = *(this + 1);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *(this + 1) = 0;

  JUMPOUT(0x1865FF210);
}

void MTLIntersectionReflectionReader::~MTLIntersectionReflectionReader(MTLIntersectionReflectionReader *this)
{
  *this = &unk_1EF474F98;
  v2 = *(this + 1);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *(this + 1) = 0;
}

{
  *this = &unk_1EF474F98;
  v2 = *(this + 1);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *(this + 1) = 0;

  JUMPOUT(0x1865FF210);
}

void MTLStitchingReflectionReader::~MTLStitchingReflectionReader(MTLStitchingReflectionReader *this)
{
  *this = &unk_1EF474F98;
  v2 = *(this + 1);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *(this + 1) = 0;
}

{
  *this = &unk_1EF474F98;
  v2 = *(this + 1);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *(this + 1) = 0;

  JUMPOUT(0x1865FF210);
}

void MTLReflectionByNameReader::~MTLReflectionByNameReader(MTLReflectionByNameReader *this)
{
  *this = &unk_1EF474F98;
  v2 = *(this + 1);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *(this + 1) = 0;
}

{
  *this = &unk_1EF474F98;
  v2 = *(this + 1);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *(this + 1) = 0;

  JUMPOUT(0x1865FF210);
}

void MTLObjectOrMeshReflectionDeserializerLegacy::~MTLObjectOrMeshReflectionDeserializerLegacy(MTLObjectOrMeshReflectionDeserializerLegacy *this)
{
  MTLArgumentDeserializer::~MTLArgumentDeserializer(this);

  JUMPOUT(0x1865FF210);
}

void MTLObjectOrMeshReflectionReader::~MTLObjectOrMeshReflectionReader(MTLObjectOrMeshReflectionReader *this)
{
  *this = &unk_1EF474F98;
  v2 = *(this + 1);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *(this + 1) = 0;
}

{
  *this = &unk_1EF474F98;
  v2 = *(this + 1);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *(this + 1) = 0;

  JUMPOUT(0x1865FF210);
}

uint64_t newArgumentTypeFromSerializedContext(int a1, DeserialContext *a2)
{
  deserializeArguments(a1, a2);
  v2 = MEMORY[0];
  free(0);
  return v2;
}

uint64_t std::vector<MTLBindingInternal *>::__init_with_size[abi:ne200100]<MTLBindingInternal * const*,MTLBindingInternal * const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<MTLStructMember *>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_185C7A914(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<MTLBindingInternal *>::__init_with_size[abi:ne200100]<MTLBindingInternal **,MTLBindingInternal **>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<MTLStructMember *>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_185C7A990(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::__tree<std::__value_type<MTLStructType *,unsigned int>,std::__map_value_compare<MTLStructType *,std::__value_type<MTLStructType *,unsigned int>,std::less<MTLStructType *>,true>,std::allocator<std::__value_type<MTLStructType *,unsigned int>>>::__emplace_unique_key_args<MTLStructType *,std::piecewise_construct_t const&,std::tuple<MTLStructType * const&>,std::tuple<>>(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = v2[4];
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

unint64_t MTLMetalScriptSerializer::createLinkedFunctionsHashesVector@<X0>(MTLMetalScriptSerializer *this@<X0>, unint64_t *a2@<X8>)
{
  v28 = *MEMORY[0x1E69E9840];
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v5 = [(MTLMetalScriptSerializer *)this functions];
  v6 = [v5 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v6)
  {
    v7 = *v23;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v23 != v7)
        {
          objc_enumerationMutation(v5);
        }

        std::vector<MTLUINT256_t>::push_back[abi:ne200100](a2, [*(*(&v22 + 1) + 8 * i) bitCodeHash]);
      }

      v6 = [v5 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v6);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = [(MTLMetalScriptSerializer *)this privateFunctions];
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v10)
  {
    v11 = *v19;
    do
    {
      for (j = 0; j != v10; ++j)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v9);
        }

        std::vector<MTLUINT256_t>::push_back[abi:ne200100](a2, [*(*(&v18 + 1) + 8 * j) bitCodeHash]);
      }

      v10 = [v9 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v10);
  }

  v13 = a2[1];
  v14 = 126 - 2 * __clz((v13 - *a2) >> 5);
  if (v13 == *a2)
  {
    v15 = 0;
  }

  else
  {
    v15 = v14;
  }

  result = std::__introsort<std::_ClassicAlgPolicy,MTLHashKey::MTLHashKey(MTLUINT256_t const&,std::vector<MTLUINT256_t> &,std::vector<std::pair<unsigned int,MTLUINT256_t const>> &)::$_0 &,MTLUINT256_t*,false>(*a2, v13, v15, 1);
  v17 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_185C7AC44(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MTLMetalScriptSerializer::makeNumberString@<X0>(MTLMetalScriptSerializer *this@<X0>, uint64_t a2@<X8>)
{
  v6 = *MEMORY[0x1E69E9840];
  result = snprintf(__str, 9uLL, "%08X", this);
  *(a2 + 23) = 8;
  *a2 = *__str;
  *(a2 + 8) = 0;
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

_BYTE *std::string::basic_string[abi:ne200100](_BYTE *__dst, void *__src, size_t __len)
{
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  __dst[23] = __len;
  if (__len)
  {
    memmove(__dst, __src, __len);
  }

  __dst[__len] = 0;
  return __dst;
}

uint64_t MTLMetalScriptSerializer::addString(MTLMetalScriptSerializer *this, flatbuffers::FlatBufferBuilder *a2, NSString *a3)
{
  if (!a2 || ([(flatbuffers::FlatBufferBuilder *)a2 isEqualToString:&stru_1EF478240]& 1) != 0)
  {
    return 0;
  }

  v6 = [(flatbuffers::FlatBufferBuilder *)a2 cStringUsingEncoding:4];
  v7 = strlen(v6);

  return flatbuffers::FlatBufferBuilder::CreateString(this, v6, v7);
}

uint64_t MTLMetalScriptSerializer::addString(flatbuffers::FlatBufferBuilder *a1, const char *a2)
{
  v2 = a2[23];
  if ((v2 & 0x8000000000000000) != 0)
  {
    v2 = *(a2 + 1);
    if (v2)
    {
      a2 = *a2;
      return flatbuffers::FlatBufferBuilder::CreateString(a1, a2, v2);
    }
  }

  else if (a2[23])
  {
    return flatbuffers::FlatBufferBuilder::CreateString(a1, a2, v2);
  }

  return 0;
}

void *MTLMetalScriptSerializer::HashFunction(void *result)
{
  if (result)
  {
    v1 = result;
    v2 = [result libraryData];
    v3 = *(*(*v2 + 344))(v2);
    return ([objc_msgSend(v1 "name")] ^ v3);
  }

  return result;
}

BOOL MTLMetalScriptSerializer::AreStringArraysOrderIndependentlyEqual(_DWORD *a1, _DWORD *a2)
{
  memset(v19, 0, sizeof(v19));
  v20 = 1065353216;
  if (*a1)
  {
    v4 = a1 + 2;
    v5 = 1;
    do
    {
      v6 = &a1[v5];
      v7 = *v6;
      v8 = *(v6 + v7);
      *&v17[0] = v4 + v7;
      *(&v17[0] + 1) = v8;
      std::__hash_table<std::string_view,std::hash<std::string_view>,std::equal_to<std::string_view>,std::allocator<std::string_view>>::__emplace_unique_key_args<std::string_view,std::string_view>(v19, v17);
      ++v4;
      v9 = v5++ >= *a1;
    }

    while (!v9);
  }

  memset(v17, 0, sizeof(v17));
  v18 = 1065353216;
  if (*a2)
  {
    v10 = a2 + 2;
    v11 = 1;
    do
    {
      v12 = &a2[v11];
      v13 = *v12;
      v14 = *(v12 + v13);
      v21[0] = v10 + v13;
      v21[1] = v14;
      std::__hash_table<std::string_view,std::hash<std::string_view>,std::equal_to<std::string_view>,std::allocator<std::string_view>>::__emplace_unique_key_args<std::string_view,std::string_view>(v17, v21);
      ++v10;
      v9 = v11++ >= *a2;
    }

    while (!v9);
  }

  v15 = std::operator==[abi:ne200100]<std::string_view,std::hash<std::string_view>,std::equal_to<std::string_view>,std::allocator<std::string_view>>(v19, v17);
  std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::~__hash_table(v17);
  std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::~__hash_table(v19);
  return v15;
}

void sub_185C7AFC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::~__hash_table(&a9);
  std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::~__hash_table(&a15);
  _Unwind_Resume(a1);
}

BOOL std::operator==[abi:ne200100]<std::string_view,std::hash<std::string_view>,std::equal_to<std::string_view>,std::allocator<std::string_view>>(uint64_t a1, void *a2)
{
  if (*(a1 + 24) != a2[3])
  {
    return 0;
  }

  v3 = (a1 + 16);
  do
  {
    v3 = *v3;
    v4 = v3 == 0;
    if (!v3)
    {
      break;
    }

    v5 = std::__hash_table<std::string_view,std::hash<std::string_view>,std::equal_to<std::string_view>,std::allocator<std::string_view>>::find<std::string_view>(a2, (v3 + 2));
    if (!v5)
    {
      break;
    }

    v6 = v3[3];
    if (v6 != v5[3])
    {
      break;
    }
  }

  while (!memcmp(v3[2], v5[2], v6));
  return v4;
}

uint64_t MTLMetalScriptSerializer::EqualLinkedFunctions(const LinkedFunctions *this, const LinkedFunctions *a2, const LinkedFunctions *a3)
{
  if (this == a2)
  {
    return 1;
  }

  v4 = 0;
  if (!this || !a2)
  {
    return v4;
  }

  v6 = &this[-*this->var0];
  v7 = *v6->var0;
  if (v7 >= 7 && *v6[6].var0)
  {
    v8 = *this[*v6[6].var0 + *this[*v6[6].var0].var0].var0;
  }

  else
  {
    v8 = 0;
  }

  var0 = a2[-*a2->var0].var0;
  v10 = *var0;
  if (v10 < 7)
  {
    LODWORD(v11) = 0;
  }

  else
  {
    v11 = var0[3];
    if (var0[3])
    {
      LODWORD(v11) = *a2[v11 + *a2[v11].var0].var0;
    }
  }

  v12 = v7 >= 5 && *v6[4].var0 ? *this[*v6[4].var0 + *this[*v6[4].var0].var0].var0 : 0;
  if (v10 < 5)
  {
    LODWORD(v13) = 0;
  }

  else
  {
    v13 = var0[2];
    if (var0[2])
    {
      LODWORD(v13) = *a2[v13 + *a2[v13].var0].var0;
    }
  }

  v14 = v7 >= 9 && *v6[8].var0 ? *this[*v6[8].var0 + *this[*v6[8].var0].var0].var0 : 0;
  if (v10 < 9)
  {
    LODWORD(v15) = 0;
  }

  else
  {
    v15 = var0[4];
    if (var0[4])
    {
      LODWORD(v15) = *a2[v15 + *a2[v15].var0].var0;
    }
  }

  v4 = 0;
  if (v8 != v11 || v12 != v13 || v14 != v15)
  {
    return v4;
  }

  if (v8)
  {
    if (v7 >= 7 && (v16 = *v6[6].var0) != 0)
    {
      v17 = &this[v16 + *this[v16].var0];
    }

    else
    {
      v17 = 0;
    }

    v18 = v10 >= 7 && var0[3] ? &a2[var0[3] + *a2[var0[3]].var0] : 0;
    if (!MTLMetalScriptSerializer::AreStringArraysOrderIndependentlyEqual(v17, v18))
    {
      return 0;
    }
  }

  if (v12)
  {
    v19 = &this[-*this->var0];
    if (*v19->var0 >= 5u && (v20 = *v19[4].var0) != 0)
    {
      v21 = &this[v20 + *this[v20].var0];
    }

    else
    {
      v21 = 0;
    }

    v22 = &a2[-*a2->var0];
    if (*v22->var0 >= 5u && (v23 = *v22[4].var0) != 0)
    {
      v24 = &a2[v23 + *a2[v23].var0];
    }

    else
    {
      v24 = 0;
    }

    if (!MTLMetalScriptSerializer::AreStringArraysOrderIndependentlyEqual(v21, v24))
    {
      return 0;
    }
  }

  if (!v14)
  {
    return 1;
  }

  memset(v54, 0, sizeof(v54));
  v55 = 1065353216;
  v25 = *this->var0;
  v26 = *this[-v25 + 8].var0;
  if (*this[-v25].var0 <= 8u)
  {
    v27 = 0;
    LODWORD(v25) = *this[v26].var0;
  }

  else if (*this[-v25 + 8].var0)
  {
    v27 = &this[v26 + *this[v26].var0];
    LODWORD(v25) = *this[v26].var0;
  }

  else
  {
    v27 = 0;
  }

  if (!*this[v26 + v25].var0)
  {
    goto LABEL_76;
  }

  v29 = 0;
  v30 = 0;
  do
  {
    v31 = *v27[v29 + 4].var0;
    v32 = v31 - *v27[v29 + 4 + v31].var0;
    v33 = &v27[v29 + v32];
    if (*(v33 + 2) >= 7u && (v34 = *(v33 + 5)) != 0)
    {
      v35 = &v27[v29 + 4 + v31 + v34 + *v27[v29 + 4 + v31 + v34].var0];
    }

    else
    {
      v35 = 0;
    }

    v36 = v31 + *v27[v29 + 8 + v32].var0;
    v37 = v36 + *v27[v29 + 4 + v36].var0;
    v38 = *v27[v29 + 4 + v37].var0;
    v52 = &v27[v29 + 8 + v37];
    v53 = v38;
    v56 = &v52;
    std::__hash_table<std::__hash_value_type<std::string_view,flatbuffers::Vector<flatbuffers::Offset<flatbuffers::String>> const*>,std::__unordered_map_hasher<std::string_view,std::__hash_value_type<std::string_view,flatbuffers::Vector<flatbuffers::Offset<flatbuffers::String>> const*>,std::hash<std::string_view>,std::equal_to<std::string_view>,true>,std::__unordered_map_equal<std::string_view,std::__hash_value_type<std::string_view,flatbuffers::Vector<flatbuffers::Offset<flatbuffers::String>> const*>,std::equal_to<std::string_view>,std::hash<std::string_view>,true>,std::allocator<std::__hash_value_type<std::string_view,flatbuffers::Vector<flatbuffers::Offset<flatbuffers::String>> const*>>>::__emplace_unique_key_args<std::string_view,std::piecewise_construct_t const&,std::tuple<std::string_view&&>,std::tuple<>>(v54, &v52)[4] = v35;
    ++v30;
    v39 = &this[*this[-*this->var0 + 8].var0];
    v40 = *v39[*v39->var0].var0;
    v29 += 4;
  }

  while (v30 < v40);
  if (v40)
  {
    v41 = 0;
    v42 = 0;
    while (1)
    {
      v43 = *v27[v41 + 4].var0 + *v27[v41 + 8 + *v27[v41 + 4].var0 - *v27[v41 + 4 + *v27[v41 + 4].var0].var0].var0;
      v44 = v43 + *v27[v41 + 4 + v43].var0;
      v45 = *v27[v41 + 4 + v44].var0;
      v52 = &v27[v41 + 8 + v44];
      v53 = v45;
      v46 = std::__hash_table<std::__hash_value_type<std::string_view,flatbuffers::Vector<flatbuffers::Offset<flatbuffers::String>> const*>,std::__unordered_map_hasher<std::string_view,std::__hash_value_type<std::string_view,flatbuffers::Vector<flatbuffers::Offset<flatbuffers::String>> const*>,std::hash<std::string_view>,std::equal_to<std::string_view>,true>,std::__unordered_map_equal<std::string_view,std::__hash_value_type<std::string_view,flatbuffers::Vector<flatbuffers::Offset<flatbuffers::String>> const*>,std::equal_to<std::string_view>,std::hash<std::string_view>,true>,std::allocator<std::__hash_value_type<std::string_view,flatbuffers::Vector<flatbuffers::Offset<flatbuffers::String>> const*>>>::find<std::string_view>(v54, &v52);
      if (!v46)
      {
        break;
      }

      v47 = *v27[v41 + 4].var0;
      v48 = &v27[v41 + v47 - *v27[v41 + 4 + v47].var0];
      if (*(v48 + 2) >= 7u && (v49 = *(v48 + 5)) != 0)
      {
        v50 = &v27[v41 + 4 + v47 + v49 + *v27[v41 + 4 + v47 + v49].var0];
      }

      else
      {
        v50 = 0;
      }

      if (!MTLMetalScriptSerializer::AreStringArraysOrderIndependentlyEqual(v46[4], v50))
      {
        break;
      }

      ++v42;
      v51 = &this[*this[-*this->var0 + 8].var0];
      v41 += 4;
      if (v42 >= *v51[*v51->var0].var0)
      {
        goto LABEL_76;
      }
    }

    v4 = 0;
  }

  else
  {
LABEL_76:
    v4 = 1;
  }

  std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::~__hash_table(v54);
  return v4;
}

void sub_185C7B4F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

uint64_t MTLMetalScriptSerializer::EqualComputeDescriptor(int *a1, int *a2)
{
  v2 = (a1 - *a1);
  if (*v2 >= 7u && (v3 = v2[3]) != 0)
  {
    v4 = (a1 + v3 + *(a1 + v3));
  }

  else
  {
    v4 = 0;
  }

  v5 = (a2 - *a2);
  if (*v5 >= 7u && (v6 = v5[3]) != 0)
  {
    v7 = (a2 + v6 + *(a2 + v6));
  }

  else
  {
    v7 = 0;
  }

  v8 = (v4 - *v4);
  v9 = *v8;
  if (v9 < 5)
  {
    LOBYTE(v10) = 0;
  }

  else
  {
    v10 = v8[2];
    if (v8[2])
    {
      LOBYTE(v10) = *(v4 + v10) != 0;
    }
  }

  v11 = (v7 - *v7);
  v12 = *v11;
  if (v12 >= 5 && v11[2])
  {
    LOBYTE(v10) = v10 ^ (*(v7 + v11[2]) != 0);
  }

  if (v10)
  {
    return 0;
  }

  if (v9 < 7)
  {
    v13 = 0;
  }

  else
  {
    v13 = v8[3];
    if (v8[3])
    {
      v13 = *(v4 + v13);
    }
  }

  if (v12 < 7)
  {
    v14 = 0;
  }

  else
  {
    v14 = v11[3];
    if (v11[3])
    {
      v14 = *(v7 + v14);
    }
  }

  if (v13 != v14)
  {
    return 0;
  }

  v15 = v9 >= 9 && v8[4] ? *(v4 + v8[4]) : 1;
  v16 = v12 >= 9 && v11[4] ? *(v7 + v11[4]) : 1;
  if (v15 != v16)
  {
    return 0;
  }

  if (v9 < 0xF)
  {
    LODWORD(v17) = 0;
  }

  else
  {
    v17 = v8[7];
    if (v8[7])
    {
      LODWORD(v17) = *(v4 + v17);
    }
  }

  if (v12 < 0xF)
  {
    LODWORD(v18) = 0;
  }

  else
  {
    v18 = v11[7];
    if (v11[7])
    {
      LODWORD(v18) = *(v7 + v18);
    }
  }

  if (v17 != v18)
  {
    return 0;
  }

  if (v9 < 0x11)
  {
    LOBYTE(v19) = 0;
  }

  else
  {
    v19 = v8[8];
    if (v8[8])
    {
      LOBYTE(v19) = *(v4 + v19) != 0;
    }
  }

  if (v12 >= 0x11 && v11[8])
  {
    LOBYTE(v19) = v19 ^ (*(v7 + v11[8]) != 0);
  }

  if (v19)
  {
    return 0;
  }

  if (v9 < 0x13)
  {
    LODWORD(v20) = 0;
  }

  else
  {
    v20 = v8[9];
    if (v8[9])
    {
      LODWORD(v20) = *(v4 + v20);
    }
  }

  if (v12 < 0x13)
  {
    LODWORD(v21) = 0;
  }

  else
  {
    v21 = v11[9];
    if (v11[9])
    {
      LODWORD(v21) = *(v7 + v21);
    }
  }

  if (v20 != v21)
  {
    return 0;
  }

  if (v9 < 0x15)
  {
    LOBYTE(v22) = 0;
  }

  else
  {
    v22 = v8[10];
    if (v8[10])
    {
      LOBYTE(v22) = *(v4 + v22) != 0;
    }
  }

  if (v12 >= 0x15 && v11[10])
  {
    LOBYTE(v22) = v22 ^ (*(v7 + v11[10]) != 0);
  }

  if (v22)
  {
    return 0;
  }

  v23 = v9 >= 0xB && v8[5] ? (v4 + v8[5] + *(v4 + v8[5])) : 0;
  v24 = v12 >= 0xB && v11[5] ? (v7 + v11[5] + *(v7 + v11[5])) : 0;
  if (!EqualStageInputOutputDescriptor(v23, v24))
  {
    return 0;
  }

  v25 = v9 >= 0xD && v8[6] ? v4 + v8[6] + *(v4 + v8[6]) : 0;
  v26 = v12 >= 0xD && v11[6] ? (v7 + v11[6] + *(v7 + v11[6])) : 0;
  if (!EqualPipelineBuffers(v25, v26))
  {
    return 0;
  }

  if (v9 >= 0x17 && v8[11])
  {
    v28 = v4 + v8[11] + *(v4 + v8[11]);
  }

  else
  {
    v28 = 0;
  }

  if (v12 >= 0x17 && v11[11])
  {
    v30 = v7 + v11[11] + *(v7 + v11[11]);
  }

  else
  {
    v30 = 0;
  }

  return MTLMetalScriptSerializer::EqualLinkedFunctions(v28, v30, v27);
}

BOOL EqualStageInputOutputDescriptor(int *a1, int *a2)
{
  if (a1 && (v2 = (a1 - *a1), *v2 >= 7u) && (v3 = v2[3]) != 0)
  {
    v4 = (a1 + v3 + *(a1 + v3));
    if (!a2)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v4 = 0;
    if (!a2)
    {
      goto LABEL_11;
    }
  }

  v5 = (a2 - *a2);
  if (*v5 >= 7u)
  {
    v6 = v5[3];
    if (v6)
    {
      v7 = (a2 + v6 + *(a2 + v6));
      v8 = v4 != 0;
      if (v4)
      {
        LODWORD(v9) = *v4;
      }

      else
      {
        LODWORD(v9) = 0;
      }

      v11 = *v7;
      v10 = 1;
      goto LABEL_15;
    }
  }

LABEL_11:
  if (!v4)
  {
    goto LABEL_62;
  }

  v10 = 0;
  v7 = 0;
  v11 = 0;
  LODWORD(v9) = *v4;
  v8 = 1;
LABEL_15:
  if (v9 <= v11)
  {
    v9 = v11;
  }

  else
  {
    v9 = v9;
  }

  if (v9)
  {
    v12 = v4 + 1;
    v13 = v7 + 1;
    do
    {
      if (v8)
      {
        v14 = (v12 + *v12);
        if (v10)
        {
          goto LABEL_22;
        }
      }

      else
      {
        v14 = 0;
        if (v10)
        {
LABEL_22:
          v15 = (v13 + *v13);
          goto LABEL_25;
        }
      }

      v15 = 0;
LABEL_25:
      v65 = 1;
      v67 = 0;
      LODWORD(v68) = 1;
      v70 = 1;
      v62 = 0;
      LODWORD(v63) = 1;
      if (!v14)
      {
        goto LABEL_39;
      }

      v16 = (v14 - *v14);
      v17 = *v16;
      if (v17 < 9)
      {
        v18 = 0;
        if (v17 < 5)
        {
          v19 = 1;
LABEL_37:
          v21 = 1;
          goto LABEL_38;
        }
      }

      else
      {
        v18 = v16[4];
        if (v16[4])
        {
          v18 = *(v14 + v18);
        }
      }

      if (v16[2])
      {
        v19 = *(v14 + v16[2]);
      }

      else
      {
        v19 = 1;
      }

      if (v17 < 7)
      {
        goto LABEL_37;
      }

      v20 = v16[3];
      if (!v20)
      {
        goto LABEL_37;
      }

      v21 = *(v14 + v20);
LABEL_38:
      v67 = v18;
      LODWORD(v68) = v19;
      v70 = v21;
LABEL_39:
      if (!v15)
      {
        goto LABEL_53;
      }

      v22 = (v15 - *v15);
      v23 = *v22;
      if (v23 < 9)
      {
        v24 = 0;
        if (v23 < 5)
        {
          v25 = 1;
LABEL_51:
          v27 = 1;
          goto LABEL_52;
        }
      }

      else
      {
        v24 = v22[4];
        if (v22[4])
        {
          v24 = *(v15 + v24);
        }
      }

      if (v22[2])
      {
        v25 = *(v15 + v22[2]);
      }

      else
      {
        v25 = 1;
      }

      if (v23 < 7)
      {
        goto LABEL_51;
      }

      v26 = v22[3];
      if (!v26)
      {
        goto LABEL_51;
      }

      v27 = *(v15 + v26);
LABEL_52:
      v62 = v24;
      LODWORD(v63) = v25;
      v65 = v27;
LABEL_53:
      if (v67 != v62 || v68 != v63 || v70 != v65)
      {
        return 0;
      }

      ++v12;
      ++v13;
      --v9;
    }

    while (v9);
  }

LABEL_62:
  if (a1 && (v30 = (a1 - *a1), *v30 >= 5u) && (v31 = v30[2]) != 0)
  {
    v32 = (a1 + v31 + *(a1 + v31));
    if (!a2)
    {
      goto LABEL_72;
    }
  }

  else
  {
    v32 = 0;
    if (!a2)
    {
      goto LABEL_72;
    }
  }

  v33 = (a2 - *a2);
  if (*v33 >= 5u)
  {
    v34 = v33[2];
    if (v34)
    {
      v35 = (a2 + v34 + *(a2 + v34));
      v36 = v32 != 0;
      if (v32)
      {
        v37 = *v32;
      }

      else
      {
        v37 = 0;
      }

      v39 = *v35;
      v38 = 1;
      goto LABEL_76;
    }
  }

LABEL_72:
  if (!v32)
  {
    return 1;
  }

  v38 = 0;
  v35 = 0;
  v39 = 0;
  v37 = *v32;
  v36 = 1;
LABEL_76:
  if (v37 <= v39)
  {
    v41 = v39;
  }

  else
  {
    v41 = v37;
  }

  if (v41)
  {
    v42 = v32 + 1;
    v43 = v35 + 1;
    v44 = v41 - 1;
    while (1)
    {
      if (v36)
      {
        v45 = (v42 + *v42);
        if (!v38)
        {
          goto LABEL_83;
        }
      }

      else
      {
        v45 = 0;
        if (!v38)
        {
LABEL_83:
          v46 = 0;
          goto LABEL_86;
        }
      }

      v46 = (v43 + *v43);
LABEL_86:
      LODWORD(v67) = 0;
      v69 = 0;
      v71 = 0;
      LODWORD(v62) = 0;
      v64 = 0;
      v66 = 0;
      if (!v45)
      {
        goto LABEL_100;
      }

      v47 = (v45 - *v45);
      v48 = *v47;
      if (v48 < 5)
      {
        v50 = 0;
        LODWORD(v49) = 0;
LABEL_98:
        v52 = 0;
        goto LABEL_99;
      }

      v49 = v47[2];
      if (v47[2])
      {
        LODWORD(v49) = *(v45 + v49);
      }

      if (v48 < 7)
      {
        v50 = 0;
        goto LABEL_98;
      }

      v50 = v47[3];
      if (v47[3])
      {
        v50 = *(v45 + v50);
      }

      if (v48 < 9)
      {
        goto LABEL_98;
      }

      v51 = v47[4];
      if (!v51)
      {
        goto LABEL_98;
      }

      v52 = *(v45 + v51);
LABEL_99:
      LODWORD(v67) = v49;
      v69 = v50;
      v71 = v52;
LABEL_100:
      if (v46)
      {
        v53 = (v46 - *v46);
        v54 = *v53;
        if (v54 < 5)
        {
          v56 = 0;
          LODWORD(v55) = 0;
        }

        else
        {
          v55 = v53[2];
          if (v53[2])
          {
            LODWORD(v55) = *(v46 + v55);
          }

          if (v54 < 7)
          {
            v56 = 0;
          }

          else
          {
            v56 = v53[3];
            if (v53[3])
            {
              v56 = *(v46 + v56);
            }

            if (v54 >= 9)
            {
              v57 = v53[4];
              if (v57)
              {
                v58 = *(v46 + v57);
LABEL_113:
                LODWORD(v62) = v55;
                v64 = v56;
                v66 = v58;
                goto LABEL_114;
              }
            }
          }
        }

        v58 = 0;
        goto LABEL_113;
      }

LABEL_114:
      v59 = v67 ^ v62 | v69 ^ v64 | v71 ^ v66;
      result = v59 == 0;
      v61 = v44-- != 0;
      if (!v59)
      {
        ++v42;
        ++v43;
        if (v61)
        {
          continue;
        }
      }

      return result;
    }
  }

  return 1;
}

uint64_t EqualPipelineBuffers(unint64_t a1, unsigned int *a2)
{
  if (!(a1 | a2))
  {
    return 1;
  }

  if (a1)
  {
    LODWORD(v2) = *a1;
    if (a2)
    {
LABEL_4:
      v3 = *a2;
      goto LABEL_7;
    }
  }

  else
  {
    LODWORD(v2) = 0;
    if (a2)
    {
      goto LABEL_4;
    }
  }

  v3 = 0;
LABEL_7:
  if (v2 <= v3)
  {
    v2 = v3;
  }

  else
  {
    v2 = v2;
  }

  if (v2)
  {
    v4 = (a1 + 4);
    v5 = a2 + 1;
    v6 = v2 - 1;
    while (1)
    {
      if (a1)
      {
        v7 = (v4 + *v4);
        if (a2)
        {
          goto LABEL_14;
        }
      }

      else
      {
        v7 = 0;
        if (a2)
        {
LABEL_14:
          v8 = (v5 + *v5);
          if (v7)
          {
            goto LABEL_18;
          }

          goto LABEL_22;
        }
      }

      v8 = 0;
      if (v7)
      {
LABEL_18:
        v9 = (v7 - *v7);
        if (*v9 >= 5u && (v10 = v9[2]) != 0)
        {
          LODWORD(v7) = *(v7 + v10);
        }

        else
        {
          LODWORD(v7) = 0;
        }
      }

LABEL_22:
      if (v8)
      {
        v11 = (v8 - *v8);
        if (*v11 >= 5u && (v12 = v11[2]) != 0)
        {
          LODWORD(v8) = *(v8 + v12);
        }

        else
        {
          LODWORD(v8) = 0;
        }
      }

      v14 = v6-- != 0;
      v15 = v7 == v8;
      v16 = v7 == v8;
      if (v15)
      {
        ++v4;
        ++v5;
        if (v14)
        {
          continue;
        }
      }

      return v16;
    }
  }

  return 1;
}

uint64_t MTLMetalScriptSerializer::EqualFragmentDescriptor(int *a1, int *a2)
{
  v4 = (a1 - *a1);
  v5 = *v4;
  if (v5 >= 5 && v4[2])
  {
    v6 = *(a1 + v4[2]);
  }

  else
  {
    v6 = 1;
  }

  v7 = (a2 - *a2);
  v8 = *v7;
  if (v8 >= 5 && v7[2])
  {
    v9 = *(a2 + v7[2]);
  }

  else
  {
    v9 = 1;
  }

  if (v6 != v9)
  {
    return 0;
  }

  v10 = v5 < 7 || !v4[3] || *(a1 + v4[3]) != 0;
  if (v8 >= 7 && v7[3])
  {
    if ((v10 ^ (*(a2 + v7[3]) != 0)))
    {
      return 0;
    }
  }

  else if (!v10)
  {
    return 0;
  }

  if (v5 < 9)
  {
    LODWORD(v11) = 0;
  }

  else
  {
    v11 = v4[4];
    if (v4[4])
    {
      LODWORD(v11) = *(a1 + v11);
    }
  }

  if (v8 < 9)
  {
    LODWORD(v12) = 0;
  }

  else
  {
    v12 = v7[4];
    if (v7[4])
    {
      LODWORD(v12) = *(a2 + v12);
    }
  }

  if (v11 != v12)
  {
    return 0;
  }

  if (v5 < 0xB)
  {
    LODWORD(v13) = 0;
  }

  else
  {
    v13 = v4[5];
    if (v4[5])
    {
      LODWORD(v13) = *(a1 + v13);
    }
  }

  if (v8 < 0xB)
  {
    LODWORD(v14) = 0;
  }

  else
  {
    v14 = v7[5];
    if (v7[5])
    {
      LODWORD(v14) = *(a2 + v14);
    }
  }

  if (v13 != v14)
  {
    return 0;
  }

  v15 = v5 >= 0xD && v4[6] ? *(a1 + v4[6]) : 1;
  v16 = v8 >= 0xD && v7[6] ? *(a2 + v7[6]) : 1;
  if (v15 != v16)
  {
    return 0;
  }

  if (v5 < 0xF)
  {
    v17 = 0;
  }

  else
  {
    v17 = v4[7];
    if (v4[7])
    {
      v17 = *(a1 + v17);
    }
  }

  if (v8 < 0xF)
  {
    v18 = 0;
  }

  else
  {
    v18 = v7[7];
    if (v7[7])
    {
      v18 = *(a2 + v18);
    }
  }

  if (v17 != v18)
  {
    return 0;
  }

  v19 = v5 >= 0x11 && v4[8] ? *(a1 + v4[8]) : -1;
  v20 = v8 >= 0x11 && v7[8] ? *(a2 + v7[8]) : -1;
  if (v19 != v20)
  {
    return 0;
  }

  v21 = 1.0;
  v22 = 1.0;
  if (v5 >= 0x13 && v4[9])
  {
    v22 = *(a1 + v4[9]);
  }

  if (v8 >= 0x13 && v7[9])
  {
    v21 = *(a2 + v7[9]);
  }

  if (v22 != v21)
  {
    return 0;
  }

  if (v5 < 0x15)
  {
    LOBYTE(v23) = 0;
  }

  else
  {
    v23 = v4[10];
    if (v4[10])
    {
      LOBYTE(v23) = *(a1 + v23) != 0;
    }
  }

  if (v8 >= 0x15 && v7[10])
  {
    LOBYTE(v23) = v23 ^ (*(a2 + v7[10]) != 0);
  }

  if (v23)
  {
    return 0;
  }

  if (v5 < 0x19)
  {
    LODWORD(v24) = 0;
  }

  else
  {
    v24 = v4[12];
    if (v4[12])
    {
      LODWORD(v24) = *(a1 + v24);
    }
  }

  if (v8 < 0x19)
  {
    LODWORD(v25) = 0;
  }

  else
  {
    v25 = v7[12];
    if (v7[12])
    {
      LODWORD(v25) = *(a2 + v25);
    }
  }

  if (v24 != v25)
  {
    return 0;
  }

  if (v5 < 0x1B)
  {
    LODWORD(v26) = 0;
  }

  else
  {
    v26 = v4[13];
    if (v4[13])
    {
      LODWORD(v26) = *(a1 + v26);
    }
  }

  if (v8 < 0x1B)
  {
    LODWORD(v27) = 0;
  }

  else
  {
    v27 = v7[13];
    if (v7[13])
    {
      LODWORD(v27) = *(a2 + v27);
    }
  }

  if (v26 != v27)
  {
    return 0;
  }

  if (v5 < 0x1F)
  {
    LODWORD(v28) = 0;
  }

  else
  {
    v28 = v4[15];
    if (v4[15])
    {
      LODWORD(v28) = *(a1 + v28);
    }
  }

  if (v8 < 0x1F)
  {
    LODWORD(v29) = 0;
  }

  else
  {
    v29 = v7[15];
    if (v7[15])
    {
      LODWORD(v29) = *(a2 + v29);
    }
  }

  if (v28 != v29)
  {
    return 0;
  }

  if (v5 < 0x21)
  {
    LOBYTE(v30) = 0;
  }

  else
  {
    v30 = v4[16];
    if (v4[16])
    {
      LOBYTE(v30) = *(a1 + v30) != 0;
    }
  }

  if (v8 >= 0x21 && v7[16])
  {
    LOBYTE(v30) = v30 ^ (*(a2 + v7[16]) != 0);
  }

  if (v30)
  {
    return 0;
  }

  if (v5 < 0x23)
  {
    LODWORD(v31) = 0;
  }

  else
  {
    v31 = v4[17];
    if (v4[17])
    {
      LODWORD(v31) = *(a1 + v31);
    }
  }

  if (v8 < 0x23)
  {
    LODWORD(v32) = 0;
  }

  else
  {
    v32 = v7[17];
    if (v7[17])
    {
      LODWORD(v32) = *(a2 + v32);
    }
  }

  if (v31 != v32)
  {
    return 0;
  }

  if (v5 < 0x25)
  {
    LOBYTE(v33) = 0;
  }

  else
  {
    v33 = v4[18];
    if (v4[18])
    {
      LOBYTE(v33) = *(a1 + v33) != 0;
    }
  }

  if (v8 >= 0x25 && v7[18])
  {
    LOBYTE(v33) = v33 ^ (*(a2 + v7[18]) != 0);
  }

  if (v33)
  {
    return 0;
  }

  if (v5 < 0x27)
  {
    LODWORD(v34) = 0;
  }

  else
  {
    v34 = v4[19];
    if (v4[19])
    {
      LODWORD(v34) = *(a1 + v34);
    }
  }

  if (v8 < 0x27)
  {
    LODWORD(v35) = 0;
  }

  else
  {
    v35 = v7[19];
    if (v7[19])
    {
      LODWORD(v35) = *(a2 + v35);
    }
  }

  if (v34 != v35)
  {
    return 0;
  }

  if (v5 < 0x29)
  {
    LOBYTE(v36) = 0;
  }

  else
  {
    v36 = v4[20];
    if (v4[20])
    {
      LOBYTE(v36) = *(a1 + v36) != 0;
    }
  }

  if (v8 >= 0x29 && v7[20])
  {
    LOBYTE(v36) = v36 ^ (*(a2 + v7[20]) != 0);
  }

  if (v36)
  {
    return 0;
  }

  if (v5 < 0x2B)
  {
    LODWORD(v37) = 0;
  }

  else
  {
    v37 = v4[21];
    if (v4[21])
    {
      LODWORD(v37) = *(a1 + v37);
    }
  }

  if (v8 < 0x2B)
  {
    LODWORD(v38) = 0;
  }

  else
  {
    v38 = v7[21];
    if (v7[21])
    {
      LODWORD(v38) = *(a2 + v38);
    }
  }

  if (v37 != v38)
  {
    return 0;
  }

  if (v5 < 0x2D)
  {
    LOBYTE(v39) = 0;
  }

  else
  {
    v39 = v4[22];
    if (v4[22])
    {
      LOBYTE(v39) = *(a1 + v39) != 0;
    }
  }

  if (v8 >= 0x2D && v7[22])
  {
    LOBYTE(v39) = v39 ^ (*(a2 + v7[22]) != 0);
  }

  if (v39)
  {
    return 0;
  }

  if (v5 < 0x2F)
  {
    LOBYTE(v40) = 0;
  }

  else
  {
    v40 = v4[23];
    if (v4[23])
    {
      LOBYTE(v40) = *(a1 + v40) != 0;
    }
  }

  if (v8 >= 0x2F && v7[23])
  {
    LOBYTE(v40) = v40 ^ (*(a2 + v7[23]) != 0);
  }

  if (v40)
  {
    return 0;
  }

  if (v5 < 0x31)
  {
    LOBYTE(v41) = 0;
  }

  else
  {
    v41 = v4[24];
    if (v4[24])
    {
      LOBYTE(v41) = *(a1 + v41) != 0;
    }
  }

  if (v8 >= 0x31 && v7[24])
  {
    LOBYTE(v41) = v41 ^ (*(a2 + v7[24]) != 0);
  }

  if (v41)
  {
    return 0;
  }

  if (v5 < 0x35)
  {
    LODWORD(v42) = 0;
  }

  else
  {
    v42 = v4[26];
    if (v4[26])
    {
      LODWORD(v42) = *(a1 + v42);
    }
  }

  if (v8 < 0x35)
  {
    LODWORD(v43) = 0;
  }

  else
  {
    v43 = v7[26];
    if (v7[26])
    {
      LODWORD(v43) = *(a2 + v43);
    }
  }

  if (v42 != v43)
  {
    return 0;
  }

  if (v5 < 0x33)
  {
    LOBYTE(v44) = 0;
  }

  else
  {
    v44 = v4[25];
    if (v4[25])
    {
      LOBYTE(v44) = *(a1 + v44) != 0;
    }
  }

  if (v8 >= 0x33 && v7[25])
  {
    LOBYTE(v44) = v44 ^ (*(a2 + v7[25]) != 0);
  }

  if (v44)
  {
    return 0;
  }

  v45 = v5 >= 0x17 && v4[11] ? a1 + v4[11] + *(a1 + v4[11]) : 0;
  v46 = v8 >= 0x17 && v7[11] ? (a2 + v7[11] + *(a2 + v7[11])) : 0;
  if (!EqualColorAttachments(v45, v46))
  {
    return 0;
  }

  v47 = v5 >= 0x1D && v4[14] ? a1 + v4[14] + *(a1 + v4[14]) : 0;
  v48 = v8 >= 0x1D && v7[14] ? (a2 + v7[14] + *(a2 + v7[14])) : 0;
  if (!EqualPipelineBuffers(v47, v48))
  {
    return 0;
  }

  if (v5 >= 0x37 && v4[27])
  {
    v50 = a1 + v4[27] + *(a1 + v4[27]);
  }

  else
  {
    v50 = 0;
  }

  if (v8 >= 0x37 && v7[27])
  {
    v52 = a2 + v7[27] + *(a2 + v7[27]);
  }

  else
  {
    v52 = 0;
  }

  return MTLMetalScriptSerializer::EqualLinkedFunctions(v50, v52, v49);
}