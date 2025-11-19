uint64_t MTLIOAccelCommandBufferStorageGetSegmentListPointers(uint64_t result, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = result;
  if (!*(result + 88))
  {
    result = _mtlIOAccelCommandBufferStorageBeginSegmentList(result, a2, a3, a4, a5, a6, a7, a8);
  }

  if (a2)
  {
    *a2 = v11[11];
  }

  if (a3)
  {
    *a3 = v11[12];
  }

  if (a4)
  {
    *a4 = v11[10];
  }

  return result;
}

uint64_t MTLIOAccelCommandBufferStorageBeginSegment(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a2;
  v10 = *(a1 + 40);
  if (!*(a1 + 88))
  {
    _mtlIOAccelCommandBufferStorageBeginSegmentList(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  if ((*(a1 + 104) + 2816) >= *(a1 + 80))
  {
    MTLIOAccelCommandBufferStorageGrowSegmentList(a1);
    v11 = *(a1 + 80);
    v12 = *(a1 + 104);
  }

  v13 = *(a1 + 96);
  v13[3] = 0;
  v13[4] = 0;
  v13[2] = v8 - v10;
  *(a1 + 816) = 0u;
  IOAccelResourceListReset();
  result = [*(a1 + 744) globalTraceObjectID];
  **(a1 + 96) = result;
  return result;
}

uint64_t MTLIOAccelCommandBufferStorageEndSegment(uint64_t result)
{
  v1 = *(result + 656);
  v2 = *(result + 48) - *(result + 40);
  v4 = *(result + 88);
  v3 = *(result + 96);
  v3[4] = *(result + 652);
  v3[5] = v1;
  v3[3] = v2;
  ++*(v4 + 8);
  ++*(result + 808);
  v5 = *(result + 104);
  v6 = v5 + 88 * v1;
  *(result + 816) = v3;
  *(result + 824) = v5;
  *(result + 96) = v6;
  *(result + 104) = v6 + 24;
  return result;
}

uint64_t MTLIOAccelCommandBufferStorageResumeSegment(uint64_t a1)
{
  v1 = *(a1 + 88);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 816);
  if (!v2)
  {
    return 0;
  }

  v3 = *(a1 + 824);
  if (!v3)
  {
    return 0;
  }

  *(a1 + 96) = v2;
  *(a1 + 104) = v3;
  *(a1 + 816) = 0;
  *(a1 + 824) = 0;
  --*(v1 + 8);
  --*(a1 + 808);
  *(v2 + 16) = 0;
  *(v2 + 12) = 0;
  return 1;
}

void MTLIOAccelCommandBufferStoragePoolCreate(uint64_t a1)
{
  v2 = malloc_type_malloc(0x28uLL, 0x10A004062A34E2AuLL);
  if (v2)
  {
    *(v2 + 4) = a1;
    *(v2 + 1) = v2;
    *(v2 + 2) = 0;
    atomic_store(1u, v2 + 6);
    *v2 = 0;
  }
}

void MTLIOAccelCommandBufferStoragePoolDealloc(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *a1;
  if (v9)
  {
    do
    {
      v11 = *(v9 + 16);
      v10 = *(v9 + 24);
      v12 = (v11 + 24);
      if (!v11)
      {
        v12 = (a1 + 2);
      }

      *v12 = v10;
      *v10 = v11;
      --a1[5];
      if (*(v9 + 800) != -2)
      {
        MTLIOAccelCommandBufferStoragePoolDealloc_cold_1(v9, a2, a3, a4, a5, a6, a7, a8);
      }

      *(v9 + 800) = -1;
      MTLIOAccelCommandBufferStorageDealloc(v9);
      v9 = v11;
    }

    while (v11);
  }

  free(a1);
}

void MTLIOAccelCommandBufferStoragePoolPurge(uint64_t a1)
{
  os_unfair_lock_lock((a1 + 16));
  v9 = *a1;
  if (*a1)
  {
    do
    {
      v11 = *(v9 + 16);
      v10 = *(v9 + 24);
      v12 = (v11 + 24);
      if (!v11)
      {
        v12 = (a1 + 8);
      }

      *v12 = v10;
      *v10 = v11;
      --*(a1 + 20);
      if (*(v9 + 800) != -2)
      {
        MTLIOAccelCommandBufferStoragePoolPurge_cold_1(v9, v2, v3, v4, v5, v6, v7, v8);
      }

      *(v9 + 800) = -1;
      MTLIOAccelCommandBufferStorageDealloc(v9);
      v9 = v11;
    }

    while (v11);
  }

  os_unfair_lock_unlock((a1 + 16));
}

void *MTLIOAccelCommandBufferStoragePoolCreateStorage(uint64_t a1, int a2)
{
  os_unfair_lock_lock((a1 + 16));
  Ext = *a1;
  if (!*a1)
  {
    os_unfair_lock_unlock((a1 + 16));
    Ext = MTLIOAccelCommandBufferStorageCreateExt(*(a1 + 32), *(a1 + 32) + 656, a2);
    if (!Ext)
    {
      return Ext;
    }

    goto LABEL_13;
  }

  v13 = Ext[2];
  v14 = Ext[3];
  v15 = (a1 + 8);
  if (v13)
  {
    v15 = (v13 + 24);
  }

  *v15 = v14;
  *v14 = v13;
  --*(a1 + 20);
  Ext[2] = 0;
  Ext[3] = 0;
  if (*(Ext + 200) != -2)
  {
    MTLIOAccelCommandBufferStoragePoolCreateStorage_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
  }

  *(Ext + 200) = -1;
  os_unfair_lock_unlock((a1 + 16));
  v16 = Ext[87];
  if (!a2)
  {
    if (!v16)
    {
LABEL_13:
      Ext[1] = a1;
      return Ext;
    }

    MTLResourceListRelease(v16);
    ResourceList = 0;
LABEL_12:
    Ext[87] = ResourceList;
    goto LABEL_13;
  }

  if (!v16)
  {
    ResourceList = MTLResourceListPoolCreateResourceList(*(*(a1 + 32) + 688));
    goto LABEL_12;
  }

  return Ext;
}

void MTLResourceListRelease(void *a1)
{
  v1 = a1[9];
  if (v1)
  {
    a1[9] = 0;
    v3 = a1;
    os_unfair_lock_lock((v1 + 24));
    v3[10] = 0;
    v2 = *(v1 + 16);
    v3[11] = v2;
    *v2 = v3;
    *(v1 + 16) = v3 + 10;
    ++*(v1 + 28);
    os_unfair_lock_unlock((v1 + 24));
    a1 = v1;
  }
}

void *MTLResourceListGrowAndReset(int32x2_t *a1)
{
  if (a1->i32[0] == 2048)
  {
    v2 = 4096;
    v3 = a1->i32[1] + 1;
    a1->i32[0] = 4096;
    a1->i32[1] = v3;
  }

  else
  {
    free(*&a1[2]);
    free(*&a1[3]);
    free(*&a1[1]);
    v4.i32[0] = vadd_s32(*a1, *a1).u32[0];
    v2 = v4.i32[0];
    v4.i32[1] = vadd_s32(*a1, 0x100000001).i32[1];
    *a1 = v4;
    if (v4.i32[0] < 0)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
      {
        *v6 = 0;
        _os_log_fault_impl(&dword_185B8E000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "MTLResourceListRebuild() failed.  Hash limit reached", v6, 2u);
      }

      abort();
    }
  }

  a1[2] = malloc_type_calloc(v2, 4uLL, 0x100004052888210uLL);
  a1[3] = malloc_type_malloc(8 * a1->u32[0], 0x100004000313F17uLL);
  result = malloc_type_calloc(a1->u32[0] >> 3, 1uLL, 0x100004000313F17uLL);
  a1[1] = result;
  return result;
}

__CFString *MTLPurgeableStateString(uint64_t a1)
{
  if ((a1 - 1) > 3)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E6EED1D0[a1 - 1];
  }
}

void *MTLResourceOptionsString(unint64_t a1)
{
  v2 = [MEMORY[0x1E696AD60] string];
  v3 = v2;
  v4 = @"MTLResourceCPUCacheModeInvalid ";
  if ((a1 & 0xF) == 0)
  {
    v4 = @"MTLResourceCPUCacheModeDefaultCache ";
  }

  if ((a1 & 0xF) == 1)
  {
    v5 = @"MTLResourceCPUCacheModeWriteCombined ";
  }

  else
  {
    v5 = v4;
  }

  [v2 appendString:v5];
  v6 = @"MTLResourceStorageModePrivate ";
  v7 = @"MTLResourceStorageModeInvalid ";
  v8 = a1 & 0xF0;
  if ((a1 & 0xF0) == 0)
  {
    v7 = @"MTLResourceStorageModeShared ";
  }

  if (v8 != 32)
  {
    v6 = v7;
  }

  if (v8 == 48)
  {
    v9 = @"MTLResourceStorageModeMemoryless ";
  }

  else
  {
    v9 = v6;
  }

  [v3 appendString:v9];
  [v3 appendString:off_1E6EED1F0[(a1 >> 8) & 3]];
  if ((a1 & 0x1000000) != 0)
  {
    [v3 appendString:@"MTLResourceReadOnly"];
  }

  return v3;
}

__CFString *MTLHazardTrackingModeString(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E6EED210[a1];
  }
}

__CFString *MTLSparsePageSizeString(uint64_t a1)
{
  if (a1 > 101)
  {
    if (a1 != 103)
    {
      if (a1 == 102)
      {
        return @"MTLSparsePageSize64";
      }

      return @"Unknown";
    }

    return @"MTLSparsePageSize256";
  }

  else
  {
    if (a1)
    {
      if (a1 == 101)
      {
        return @"MTLSparsePageSize16";
      }

      return @"Unknown";
    }

    return @"0";
  }
}

uint64_t MTLDataTypeGetSignedType(uint64_t result)
{
  v1 = result - 33;
  if (result - 33) <= 0x17 && ((0xFF0F0Fu >> v1))
  {
    return qword_185DE37B8[v1];
  }

  return result;
}

uint64_t MTLDataTypeGetVectorDataType(uint64_t a1, int a2)
{
  v2 = a2 - 1;
  if (a1 > 44)
  {
    v3 = a2 | 0x50;
    if (v2 >= 4)
    {
      v3 = 0;
    }

    v10 = a2 + 84;
    if (v2 >= 4)
    {
      v10 = 0;
    }

    v11 = a2 | 0x78;
    if (v2 >= 4)
    {
      v11 = 0;
    }

    if (a1 != 121)
    {
      v11 = 0;
    }

    if (a1 != 85)
    {
      v10 = v11;
    }

    if (a1 != 81)
    {
      v3 = v10;
    }

    v12 = a2 + 44;
    if (v2 >= 4)
    {
      v12 = 0;
    }

    v13 = a2 | 0x30;
    if (v2 < 4)
    {
      v8 = a2 + 52;
    }

    else
    {
      v13 = 0;
      v8 = 0;
    }

    if (a1 != 53)
    {
      v8 = 0;
    }

    if (a1 == 49)
    {
      v8 = v13;
    }

    if (a1 == 45)
    {
      v8 = v12;
    }

    v9 = a1 <= 80;
  }

  else
  {
    v3 = a2 | 0x20;
    if (v2 >= 4)
    {
      v3 = 0;
    }

    v4 = a2 + 36;
    if (v2 >= 4)
    {
      v4 = 0;
    }

    v5 = a2 | 0x28;
    if (v2 >= 4)
    {
      v5 = 0;
    }

    if (a1 != 41)
    {
      v5 = 0;
    }

    if (a1 != 37)
    {
      v4 = v5;
    }

    if (a1 != 33)
    {
      v3 = v4;
    }

    v6 = a2 + 2;
    if (v2 >= 4)
    {
      v6 = 0;
    }

    v7 = a2 + 15;
    if (v2 < 4)
    {
      v8 = a2 + 28;
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }

    if (a1 != 29)
    {
      v8 = 0;
    }

    if (a1 == 16)
    {
      v8 = v7;
    }

    if (a1 == 3)
    {
      v8 = v6;
    }

    v9 = a1 <= 32;
  }

  if (!v9)
  {
    return v3;
  }

  return v8;
}

const char *MTLDataTypeGetShaderTypeName(uint64_t a1, int a2)
{
  result = "";
  if (a2 > 2)
  {
    if (a2 == 3)
    {
      if (a1 > 44)
      {
        if (a1 > 80)
        {
          switch(a1)
          {
            case 'Q':
              return "long3";
            case 'U':
              return "ulong3";
            case 'y':
              return "bfloat3";
          }
        }

        else
        {
          switch(a1)
          {
            case '-':
              return "char3";
            case '1':
              return "uchar3";
            case '5':
              return "BOOL3";
          }
        }
      }

      else if (a1 > 32)
      {
        switch(a1)
        {
          case '!':
            return "uint3";
          case '%':
            return "short3";
          case ')':
            return "ushort3";
        }
      }

      else
      {
        switch(a1)
        {
          case 3:
            return "float3";
          case 16:
            return "half3";
          case 29:
            return "int3";
        }
      }
    }

    else if (a2 == 4)
    {
      if (a1 > 44)
      {
        if (a1 > 80)
        {
          switch(a1)
          {
            case 'Q':
              return "long4";
            case 'U':
              return "ulong4";
            case 'y':
              return "bfloat4";
          }
        }

        else
        {
          switch(a1)
          {
            case '-':
              return "char4";
            case '1':
              return "uchar4";
            case '5':
              return "BOOL4";
          }
        }
      }

      else if (a1 > 32)
      {
        switch(a1)
        {
          case '!':
            return "uint4";
          case '%':
            return "short4";
          case ')':
            return "ushort4";
        }
      }

      else
      {
        switch(a1)
        {
          case 3:
            return "float4";
          case 16:
            return "half4";
          case 29:
            return "int4";
        }
      }
    }
  }

  else if (a2 == 1)
  {
    if (a1 > 44)
    {
      if (a1 > 80)
      {
        switch(a1)
        {
          case 'Q':
            return "long";
          case 'U':
            return "ulong";
          case 'y':
            return "bfloat";
        }
      }

      else
      {
        switch(a1)
        {
          case '-':
            return "char";
          case '1':
            return "uchar";
          case '5':
            return "BOOL";
        }
      }
    }

    else if (a1 > 32)
    {
      switch(a1)
      {
        case '!':
          return "uint";
        case '%':
          return "short";
        case ')':
          return "ushort";
      }
    }

    else
    {
      switch(a1)
      {
        case 3:
          return "float";
        case 16:
          return "half";
        case 29:
          return "int";
      }
    }
  }

  else if (a2 == 2)
  {
    if (a1 > 44)
    {
      if (a1 > 80)
      {
        switch(a1)
        {
          case 'Q':
            return "long2";
          case 'U':
            return "ulong2";
          case 'y':
            return "bfloat2";
        }
      }

      else
      {
        switch(a1)
        {
          case '-':
            return "char2";
          case '1':
            return "uchar2";
          case '5':
            return "BOOL2";
        }
      }
    }

    else if (a1 > 32)
    {
      switch(a1)
      {
        case '!':
          return "uint2";
        case '%':
          return "short2";
        case ')':
          return "ushort2";
      }
    }

    else
    {
      switch(a1)
      {
        case 3:
          return "float2";
        case 16:
          return "half2";
        case 29:
          return "int2";
      }
    }
  }

  return result;
}

uint64_t MTLDataTypeGetAlignment(uint64_t a1)
{
  if ((a1 - 3) > 0x88)
  {
    return 0;
  }

  else
  {
    return qword_185DE3CC0[a1 - 3];
  }
}

void validateMTLDataType(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 >= 0x3D && (a1 - 78 > 0x3D || ((1 << (a1 - 78)) & 0x23FE79E0000007FFLL) == 0))
  {
    MTLReportFailure(0, "validateMTLDataType", 357, @"type (%lu) is not a valid MTLDataType.", a5, a6, a7, a8, a1);
  }
}

void validateMTLDataTypeConstant(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((a1 - 3) >= 0x36 && ((a1 - 81) > 0x36 || ((1 << (a1 - 81)) & 0x7FCF00000000FFLL) == 0))
  {
    if (a1)
    {
      MTLReportFailure(0, "validateMTLDataTypeConstant", 381, @"type (%lu) is not a const-like MTLDataType.", a5, a6, a7, a8, a1);
    }
  }
}

void MTLPipelineCollection::MTLPipelineCollection(MTLPipelineCollection *this, uint64_t a2)
{
  *(this + 2) = 0;
  *(this + 40) = 0u;
  *this = 0u;
  *(this + 4) = this + 40;
  *(this + 4) = 0u;
  *(this + 7) = this + 64;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 28) = 1065353216;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 38) = 1065353216;
  *(this + 10) = 0u;
  *(this + 11) = 0u;
  *(this + 12) = 0u;
  *(this + 26) = 0;
  *(this + 232) = 0u;
  *(this + 28) = this + 232;
  *(this + 248) = 0u;
  *(this + 54) = 1065353216;
  *(this + 264) = 0u;
  *(this + 70) = 1065353216;
  *(this + 18) = 0u;
  *(this + 19) = 0u;
  *(this + 40) = 0;
  *(this + 82) = 1065353216;
  *(this + 21) = 0u;
  *(this + 22) = 0u;
  *(this + 23) = 0u;
  *(this + 48) = 0;
  *(this + 98) = 1065353216;
  *(this + 25) = 0u;
  *(this + 26) = 0u;
  *(this + 27) = 0u;
  *(this + 56) = 0;
  *(this + 114) = 1065353216;
  *(this + 64) = 0;
  *(this + 30) = 0u;
  *(this + 31) = 0u;
  *(this + 29) = 0u;
  *(this + 130) = 1065353216;
  *(this + 68) = 0;
  *(this + 33) = 0u;
  *(this + 36) = dispatch_queue_create("pipelineCollection", 0);
  *(this + 3) = a2;
}

void MTLPipelineCollection::~MTLPipelineCollection(MTLPipelineCollection *this)
{
  for (i = *(this + 12); i; i = *i)
  {
    if (*(i + 39) < 0)
    {
      std::string::__init_copy_ctor_external(&v20, i[2], i[3]);
    }

    else
    {
      v20 = *(i + 2);
    }

    v3 = i[5];
    v21 = v3;
    if (v3)
    {
      MTLPipelineLibrarySerializer::FunctionDescriptor::~FunctionDescriptor(v3);
      MEMORY[0x1865FF210]();
    }

    if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v20.__r_.__value_.__l.__data_);
    }
  }

  for (j = *(this + 25); j; j = *j)
  {
    std::pair<std::string const,std::unordered_map<std::string,MTLPipelineLibrarySerializer::MTLSpecializedFunctionDescriptor *>>::pair[abi:ne200100](&v20, j + 1);
    for (k = v22; k; k = *k)
    {
      if (*(k + 39) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, k[2], k[3]);
      }

      else
      {
        __p = *(k + 2);
      }

      v6 = k[5];
      v19 = v6;
      if (v6)
      {
        MTLPipelineLibrarySerializer::MTLSpecializedFunctionDescriptor::~MTLSpecializedFunctionDescriptor(v6);
        MEMORY[0x1865FF210]();
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    std::__hash_table<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,std::__unordered_map_hasher<std::tuple<std::string,unsigned int,unsigned int>,std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,key_hash,std::equal_to<std::tuple<std::string,unsigned int,unsigned int>>,true>,std::__unordered_map_equal<std::tuple<std::string,unsigned int,unsigned int>,std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,std::equal_to<std::tuple<std::string,unsigned int,unsigned int>>,key_hash,true>,std::allocator<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>>::~__hash_table(&v21);
    if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v20.__r_.__value_.__l.__data_);
    }
  }

  v7 = *(this + 4);
  if (v7 != (this + 40))
  {
    do
    {
      v8 = *(v7 + 8);
      if (v8)
      {
        MTLPipelineLibrarySerializer::LibraryDescriptor::~LibraryDescriptor(v8);
        MEMORY[0x1865FF210]();
      }

      v9 = *(v7 + 1);
      if (v9)
      {
        do
        {
          v10 = v9;
          v9 = *v9;
        }

        while (v9);
      }

      else
      {
        do
        {
          v10 = *(v7 + 2);
          v11 = *v10 == v7;
          v7 = v10;
        }

        while (!v11);
      }

      v7 = v10;
    }

    while (v10 != (this + 40));
  }

  v12 = *(this + 7);
  if (v12 != (this + 64))
  {
    do
    {
      v13 = *(v12 + 8);
      if (v13)
      {
        MTLPipelineLibrarySerializer::StitchedLibraryDescriptor::~StitchedLibraryDescriptor(v13);
        MEMORY[0x1865FF210]();
      }

      v14 = *(v12 + 1);
      if (v14)
      {
        do
        {
          v15 = v14;
          v14 = *v14;
        }

        while (v14);
      }

      else
      {
        do
        {
          v15 = *(v12 + 2);
          v11 = *v15 == v12;
          v12 = v15;
        }

        while (!v11);
      }

      v12 = v15;
    }

    while (v15 != (this + 64));
  }

  v16 = *(this + 36);
  if (v16)
  {
    dispatch_release(v16);
  }

  MTLPipelineDescriptorHash::~MTLPipelineDescriptorHash((this + 488));
  MTLPipelineDescriptorHash::~MTLPipelineDescriptorHash((this + 424));
  MTLPipelineDescriptorHash::~MTLPipelineDescriptorHash((this + 360));
  MTLPipelineDescriptorHash::~MTLPipelineDescriptorHash((this + 296));
  std::__hash_table<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,std::__unordered_map_hasher<std::tuple<std::string,unsigned int,unsigned int>,std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,key_hash,std::equal_to<std::tuple<std::string,unsigned int,unsigned int>>,true>,std::__unordered_map_equal<std::tuple<std::string,unsigned int,unsigned int>,std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,std::equal_to<std::tuple<std::string,unsigned int,unsigned int>>,key_hash,true>,std::allocator<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>>::~__hash_table(this + 248);
  std::__tree<flatbuffers::Offset<flatbuffers::String>,flatbuffers::FlatBufferBuilder::StringOffsetCompare,std::allocator<flatbuffers::Offset<flatbuffers::String>>>::destroy(this + 224, *(this + 29));
  std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,MTLPipelineLibrarySerializer::MTLSpecializedFunctionDescriptor *>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,MTLPipelineLibrarySerializer::MTLSpecializedFunctionDescriptor *>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,MTLPipelineLibrarySerializer::MTLSpecializedFunctionDescriptor *>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,MTLPipelineLibrarySerializer::MTLSpecializedFunctionDescriptor *>>>>::~__hash_table(this + 184);
  v17 = *(this + 20);
  if (v17)
  {
    *(this + 21) = v17;
    operator delete(v17);
  }

  std::__hash_table<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,std::__unordered_map_hasher<std::tuple<std::string,unsigned int,unsigned int>,std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,key_hash,std::equal_to<std::tuple<std::string,unsigned int,unsigned int>>,true>,std::__unordered_map_equal<std::tuple<std::string,unsigned int,unsigned int>,std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,std::equal_to<std::tuple<std::string,unsigned int,unsigned int>>,key_hash,true>,std::allocator<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>>::~__hash_table(this + 120);
  std::__hash_table<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,std::__unordered_map_hasher<std::tuple<std::string,unsigned int,unsigned int>,std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,key_hash,std::equal_to<std::tuple<std::string,unsigned int,unsigned int>>,true>,std::__unordered_map_equal<std::tuple<std::string,unsigned int,unsigned int>,std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,std::equal_to<std::tuple<std::string,unsigned int,unsigned int>>,key_hash,true>,std::allocator<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>>::~__hash_table(this + 80);
  std::__tree<flatbuffers::Offset<flatbuffers::String>,flatbuffers::FlatBufferBuilder::StringOffsetCompare,std::allocator<flatbuffers::Offset<flatbuffers::String>>>::destroy(this + 56, *(this + 8));
  std::__tree<flatbuffers::Offset<flatbuffers::String>,flatbuffers::FlatBufferBuilder::StringOffsetCompare,std::allocator<flatbuffers::Offset<flatbuffers::String>>>::destroy(this + 32, *(this + 5));
  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void MTLPipelineCollection::addLibraryData(MTLPipelineCollection *this, char a2, char a3, MTLLibraryData *a4)
{
  v4 = *(this + 36);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___ZN21MTLPipelineCollection14addLibraryDataEbbP14MTLLibraryData_block_invoke;
  block[3] = &__block_descriptor_50_e5_v8__0l;
  block[4] = this;
  block[5] = a4;
  v6 = a2;
  v7 = a3;
  dispatch_sync(v4, block);
}

void ___ZN21MTLPipelineCollection14addLibraryDataEbbP14MTLLibraryData_block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = objc_autoreleasePoolPush();
  v4 = (*(**(a1 + 40) + 344))();
  v5 = v4[1];
  v12[0] = *v4;
  v12[1] = v5;
  if ((v2 + 40) == std::__tree<std::__value_type<MTLLibraryIdentifier,MTLLibraryData *>,std::__map_value_compare<MTLLibraryIdentifier,std::__value_type<MTLLibraryIdentifier,MTLLibraryData *>,std::less<MTLLibraryIdentifier>,true>,std::allocator<std::__value_type<MTLLibraryIdentifier,MTLLibraryData *>>>::find<MTLLibraryIdentifier>((v2 + 2), v12))
  {
    if (*(a1 + 48) == 1)
    {
      v6 = (*(**(a1 + 40) + 32))(*(a1 + 40));
    }

    else
    {
      v6 = 0;
    }

    if (*(a1 + 49) == 1)
    {
      v7 = (*(**(a1 + 40) + 352))(*(a1 + 40));
    }

    else
    {
      v7 = 0;
    }

    v8 = (*(**(a1 + 40) + 344))(*(a1 + 40));
    if (*(v2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *v2, *(v2 + 1));
    }

    else
    {
      v9 = *v2;
      __p.__r_.__value_.__r.__words[2] = *(v2 + 2);
      *&__p.__r_.__value_.__l.__data_ = v9;
    }

    libraryDescriptorFromLibraryData(v7, v8, v6, &__p);
  }

  objc_autoreleasePoolPop(v3);
  v10 = *MEMORY[0x1E69E9840];
}

void sub_185D3ACC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void libraryDescriptorFromLibraryData(void *a1, _OWORD *a2, uint64_t a3, uint64_t *a4)
{
  v12 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v5 = [a1 lastPathComponent];
  }

  else
  {
    v6 = a2[1];
    v11[0] = *a2;
    v11[1] = v6;
    HashToString(v11, &__p);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s.metallib", p_p];
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  v8 = [v5 stringByDeletingPathExtension];
  v9 = objc_alloc(MEMORY[0x1E696AEC0]);
  if (*(a4 + 23) < 0)
  {
    a4 = *a4;
  }

  [v9 initWithFormat:@"%s%@", a4, v8];
  operator new();
}

void sub_185D3AE54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MTLPipelineCollection::addLibraryDescriptor(uint64_t *a1, id *a2, _OWORD *a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v6 = a2 + 1;
  std::string::basic_string[abi:ne200100]<0>(__p, [a2[1] UTF8String]);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string>(a1 + 31, __p);
  v8 = v7;
  if (SBYTE7(v30) < 0)
  {
    operator delete(__p[0]);
    if (v8)
    {
      goto LABEL_16;
    }
  }

  else if (v7)
  {
    goto LABEL_16;
  }

  v9 = objc_autoreleasePoolPush();
  v10 = a3[1];
  *__p = *a3;
  v30 = v10;
  HashToString(__p, &v28);
  if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v11 = &v28;
  }

  else
  {
    v11 = v28.__r_.__value_.__r.__words[0];
  }

  v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s.metallib", v11];
  v13 = [v12 stringByDeletingPathExtension];
  v14 = objc_alloc(MEMORY[0x1E696AEC0]);
  v15 = a1;
  if (*(a1 + 23) < 0)
  {
    v15 = *a1;
  }

  v16 = [v14 initWithFormat:@"%s%@", v15, v13];

  *a2 = [v16 copy];
  *v6 = [v12 copy];

  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }

  objc_autoreleasePoolPop(v9);
  std::string::basic_string[abi:ne200100]<0>(__p, [*v6 UTF8String]);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string>(a1 + 31, __p);
  v24 = v17;
  if (SBYTE7(v30) < 0)
  {
    operator delete(__p[0]);
  }

  if ((v24 & 1) == 0)
  {
    MTLPipelineCollection::addLibraryDescriptor(v6, v17, v18, v19, v20, v21, v22, v23);
  }

LABEL_16:
  NSLog(&cfstr_AddingLibraryW.isa, [*a2 UTF8String], objc_msgSend(a2[1], "UTF8String"));
  v25 = a3[1];
  *__p = *a3;
  v30 = v25;
  v28.__r_.__value_.__r.__words[0] = __p;
  result = std::__tree<std::__value_type<MTLLibraryIdentifier,MTLLibraryData *>,std::__map_value_compare<MTLLibraryIdentifier,std::__value_type<MTLLibraryIdentifier,MTLLibraryData *>,std::less<MTLLibraryIdentifier>,true>,std::allocator<std::__value_type<MTLLibraryIdentifier,MTLLibraryData *>>>::__emplace_unique_key_args<MTLLibraryIdentifier,std::piecewise_construct_t const&,std::tuple<MTLLibraryIdentifier&&>,std::tuple<>>((a1 + 4), __p);
  *(result + 64) = a2;
  v27 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_185D3B0A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MTLPipelineCollection::addDynamicLibraryData(uint64_t a1, char a2, char a3, uint64_t a4)
{
  v4 = *(a1 + 288);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___ZN21MTLPipelineCollection21addDynamicLibraryDataEbbPU28objcproto17MTLDynamicLibrary11objc_object_block_invoke;
  block[3] = &unk_1E6EED250;
  block[4] = a4;
  block[5] = a1;
  v6 = a2;
  v7 = a3;
  dispatch_sync(v4, block);
}

void ___ZN21MTLPipelineCollection21addDynamicLibraryDataEbbPU28objcproto17MTLDynamicLibrary11objc_object_block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  v3 = objc_autoreleasePoolPush();
  v4 = [*(a1 + 32) libraryUUID];
  v5 = v4[1];
  v13[0] = *v4;
  v13[1] = v5;
  if ((v2 + 40) == std::__tree<std::__value_type<MTLLibraryIdentifier,MTLLibraryData *>,std::__map_value_compare<MTLLibraryIdentifier,std::__value_type<MTLLibraryIdentifier,MTLLibraryData *>,std::less<MTLLibraryIdentifier>,true>,std::allocator<std::__value_type<MTLLibraryIdentifier,MTLLibraryData *>>>::find<MTLLibraryIdentifier>((v2 + 2), v13))
  {
    if (*(a1 + 48) == 1 && (v6 = [*(a1 + 32) airData], (v7 = v6) != 0))
    {
      v8 = _MTLDispatchDataToNSData(v6, 0);
      dispatch_release(v7);
    }

    else
    {
      v8 = 0;
    }

    if (*(a1 + 49) == 1)
    {
      v9 = [*(a1 + 32) libraryPath];
    }

    else
    {
      v9 = 0;
    }

    if (*(v2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *v2, *(v2 + 1));
    }

    else
    {
      v10 = *v2;
      __p.__r_.__value_.__r.__words[2] = *(v2 + 2);
      *&__p.__r_.__value_.__l.__data_ = v10;
    }

    libraryDescriptorFromLibraryData(v9, v4, v8, &__p);
  }

  objc_autoreleasePoolPop(v3);
  v11 = *MEMORY[0x1E69E9840];
}

void sub_185D3B2C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_185D3B370(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void MTLPipelineCollection::addLibrary(uint64_t a1, void *a2)
{
  v4 = [a2 libraryData];
  *[a2 cacheEntry] = a1;
  v5 = *([a2 device] + 472) != 0;
  v6 = *(a1 + 288);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___ZN21MTLPipelineCollection14addLibraryDataEbbP14MTLLibraryData_block_invoke;
  block[3] = &__block_descriptor_50_e5_v8__0l;
  block[4] = a1;
  block[5] = v4;
  v8 = v5;
  v9 = 1;
  dispatch_sync(v6, block);
}

void MTLPipelineCollection::addDynamicLibrary(uint64_t a1, void *a2)
{
  v4 = *([a2 device] + 472) != 0;
  v5 = *(a1 + 288);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___ZN21MTLPipelineCollection21addDynamicLibraryDataEbbPU28objcproto17MTLDynamicLibrary11objc_object_block_invoke;
  block[3] = &unk_1E6EED250;
  block[4] = a2;
  block[5] = a1;
  v7 = v4;
  v8 = 1;
  dispatch_sync(v5, block);
}

void MTLPipelineCollection::addFunction(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 288);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = ___ZN21MTLPipelineCollection11addFunctionEPU22objcproto11MTLFunction11objc_objectP14MTLLibraryDatam_block_invoke;
  v5[3] = &unk_1E6EED278;
  v5[4] = a2;
  v5[5] = a1;
  v5[6] = a3;
  v5[7] = a4;
  dispatch_sync(v4, v5);
}

void ___ZN21MTLPipelineCollection11addFunctionEPU22objcproto11MTLFunction11objc_objectP14MTLLibraryDatam_block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  v3 = objc_autoreleasePoolPush();
  v4 = [*(a1 + 32) bitCodeHash];
  v10[0] = *v4;
  v10[1] = v4[1];
  HashToString(v10, &__p);
  v5 = std::__hash_table<std::__hash_value_type<std::string,DataBlock>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,DataBlock>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,DataBlock>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,DataBlock>>>::find<std::string>((v2 + 80), &__p.__r_.__value_.__l.__data_);
  if (!v5)
  {
    if ([*(a1 + 32) stitchingAirScript])
    {
      std::__hash_table<std::__hash_value_type<std::string,DataBlock>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,DataBlock>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,DataBlock>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,DataBlock>>>::find<std::string>((v2 + 120), &__p.__r_.__value_.__l.__data_);
    }

    operator new();
  }

  if (*(a1 + 56))
  {
    v6 = v5[5];
    v7 = v6[2];
    if ((v7 & 1) == 0)
    {
      v6[2] = v7 | 1;
      std::vector<MTLSerializer::ObjectRef>::push_back[abi:ne200100](v2 + 160, v5 + 5);
    }
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  objc_autoreleasePoolPop(v3);
  v8 = *MEMORY[0x1E69E9840];
}

void sub_185D3B728(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *MTLPipelineCollection::addStitchedLibrary(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = [a2 libraryData];
  v5 = (*(*v4 + 344))(v4);
  v6 = v5[1];
  v24 = *v5;
  v25 = v6;
  result = std::__tree<std::__value_type<MTLLibraryIdentifier,MTLLibraryData *>,std::__map_value_compare<MTLLibraryIdentifier,std::__value_type<MTLLibraryIdentifier,MTLLibraryData *>,std::less<MTLLibraryIdentifier>,true>,std::allocator<std::__value_type<MTLLibraryIdentifier,MTLLibraryData *>>>::find<MTLLibraryIdentifier>(a1 + 56, &v24);
  if ((a1 + 64) == result)
  {
    if (!*[a2 cacheEntry])
    {
      *[a2 cacheEntry] = a1;
    }

    v8 = [a2 functionHashes];
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v9 = [v8 countByEnumeratingWithState:&v17 objects:v23 count:16];
    if (v9)
    {
      v10 = *v18;
      do
      {
        v11 = 0;
        do
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(v8);
          }

          [*(*(&v17 + 1) + 8 * v11) getValue:&v24];
          *v21 = v24;
          v22 = v25;
          HashToString(v21, &__p);
          if (!std::__hash_table<std::__hash_value_type<std::string,DataBlock>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,DataBlock>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,DataBlock>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,DataBlock>>>::find<std::string>((a1 + 120), &__p.__r_.__value_.__l.__data_))
          {
            v21[0] = &__p;
            std::__hash_table<std::__hash_value_type<std::string,MTLLibraryData *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MTLLibraryData *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MTLLibraryData *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MTLLibraryData *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 120), &__p.__r_.__value_.__l.__data_)[5] = v4;
          }

          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          ++v11;
        }

        while (v9 != v11);
        v9 = [v8 countByEnumeratingWithState:&v17 objects:v23 count:16];
      }

      while (v9);
    }

    v12 = objc_alloc(MEMORY[0x1E696AEC0]);
    v13 = (*(*v4 + 344))(v4);
    v24 = *v13;
    v25 = v13[1];
    HashToString(&v24, v21);
    if ((SBYTE7(v22) & 0x80u) == 0)
    {
      v14 = v21;
    }

    else
    {
      v14 = v21[0];
    }

    [v12 initWithFormat:@"StitchedLib_%s", v14];
    if (SBYTE7(v22) < 0)
    {
      operator delete(v21[0]);
    }

    operator new();
  }

  v15 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_185D3BA8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a31 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MTLPipelineCollection::addSpecializedFunction(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 288);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___ZN21MTLPipelineCollection22addSpecializedFunctionEPU22objcproto11MTLFunction11objc_objectS1_PU21objcproto10MTLLibrary11objc_objectP21MTLFunctionDescriptor_block_invoke;
  block[3] = &unk_1E6EED2A0;
  block[7] = a5;
  block[8] = a1;
  block[4] = a3;
  block[5] = a2;
  block[6] = a4;
  dispatch_sync(v5, block);
}

void ___ZN21MTLPipelineCollection22addSpecializedFunctionEPU22objcproto11MTLFunction11objc_objectS1_PU21objcproto10MTLLibrary11objc_objectP21MTLFunctionDescriptor_block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 64);
  v3 = objc_autoreleasePoolPush();
  v4 = *(a1 + 32);
  v5 = [v4 bitCodeHash];
  v24[0] = *v5;
  v24[1] = v5[1];
  HashToString(v24, &v23);
  *&v24[0] = &v23;
  v6 = std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,MTLPipelineLibrarySerializer::MTLSpecializedFunctionDescriptor *>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,MTLPipelineLibrarySerializer::MTLSpecializedFunctionDescriptor *>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,MTLPipelineLibrarySerializer::MTLSpecializedFunctionDescriptor *>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,MTLPipelineLibrarySerializer::MTLSpecializedFunctionDescriptor *>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((v2 + 184), &v23.__r_.__value_.__l.__data_);
  v7 = [v4 functionConstantSpecializationHash];
  v24[0] = *v7;
  v24[1] = v7[1];
  HashToString(v24, &__p);
  v8 = std::__hash_table<std::__hash_value_type<std::string,DataBlock>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,DataBlock>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,DataBlock>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,DataBlock>>>::find<std::string>(v6 + 5, &__p.__r_.__value_.__l.__data_);
  if (!v8)
  {
    if ([*(a1 + 40) stitchingAirScript])
    {
      v11 = [*(a1 + 48) libraryData];
      v12 = (*(*v11 + 344))(v11);
      v13 = v12[1];
      v24[0] = *v12;
      v24[1] = v13;
      v14 = *(std::__tree<std::__value_type<MTLLibraryIdentifier,MTLLibraryData *>,std::__map_value_compare<MTLLibraryIdentifier,std::__value_type<MTLLibraryIdentifier,MTLLibraryData *>,std::less<MTLLibraryIdentifier>,true>,std::allocator<std::__value_type<MTLLibraryIdentifier,MTLLibraryData *>>>::find<MTLLibraryIdentifier>(v2 + 56, v24)[8] + 8);
    }

    else
    {
      v15 = [*(a1 + 48) libraryData];
      v16 = (*(*v15 + 344))(v15);
      v17 = v16[1];
      v24[0] = *v16;
      v24[1] = v17;
      v14 = *std::__tree<std::__value_type<MTLLibraryIdentifier,MTLLibraryData *>,std::__map_value_compare<MTLLibraryIdentifier,std::__value_type<MTLLibraryIdentifier,MTLLibraryData *>,std::less<MTLLibraryIdentifier>,true>,std::allocator<std::__value_type<MTLLibraryIdentifier,MTLLibraryData *>>>::find<MTLLibraryIdentifier>(v2 + 32, v24)[8];
    }

    v18 = objc_alloc(MEMORY[0x1E696AEC0]);
    v19 = [v4 name];
    p_p = &__p;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    [v18 initWithFormat:@"%@_%@_%s", v14, v19, p_p];
    [*(a1 + 40) name];
    [v4 name];
    operator new();
  }

  v9 = v8[5];
  v10 = v9[2];
  if (v10 != [*(a1 + 56) options])
  {
    v9[2] |= [*(a1 + 56) options];
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  objc_autoreleasePoolPop(v3);
  v21 = *MEMORY[0x1E69E9840];
}

void sub_185D3BE80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  _Unwind_Resume(exception_object);
}

BOOL MTLPipelineCollection::functionWasCollected(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = [a2 bitCodeHash];
    v4 = v3[1];
    v9[0] = *v3;
    v9[1] = v4;
    HashToString(v9, &__p);
    if (std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::find<std::string>((a1 + 80), &__p.__r_.__value_.__l.__data_))
    {
      v5 = 1;
    }

    else
    {
      v5 = std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::find<std::string>((a1 + 184), &__p.__r_.__value_.__l.__data_) != 0;
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v5 = 1;
  }

  v6 = *MEMORY[0x1E69E9840];
  return v5;
}

void MTLPipelineDescriptorHash::~MTLPipelineDescriptorHash(MTLPipelineDescriptorHash *this)
{
  v2 = *(this + 5);
  v3 = *(this + 6);
  if (v2 != v3)
  {
    do
    {
    }

    while (v2 != v3);
    v2 = *(this + 5);
  }

  if (v2)
  {
    *(this + 6) = v2;
    operator delete(v2);
  }

  std::__hash_table<std::__hash_value_type<unsigned long,std::vector<NSObject *>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::vector<NSObject *>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::vector<NSObject *>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::vector<NSObject *>>>>::~__hash_table(this);
}

uint64_t MTLPipelineDescriptorHash::addPipelineDescriptor(MTLPipelineDescriptorHash *this, NSObject *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v14 = a2;
  v13 = [a2 hash];
  v4 = std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::find<unsigned long>(this, &v13);
  if (v4)
  {
    v6 = v4[3];
    v7 = v4[4];
    v5 = (v4 + 3);
    while (v6 != v7)
    {
      result = [*v6 isEqual:v14];
      if (result)
      {
        goto LABEL_10;
      }

      ++v6;
    }

    std::vector<MTLPipelineLibrarySerializer::SerializedObject>::push_back[abi:ne200100](v5, &v14);
  }

  else
  {
    v15 = a2;
    v11 = 0;
    v12 = 0;
    __p = 0;
    std::vector<NSObject *>::__init_with_size[abi:ne200100]<NSObject * const*,NSObject * const*>(&__p, &v15, &v16, 1uLL);
    std::__hash_table<std::__hash_value_type<unsigned long,std::vector<NSObject *>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::vector<NSObject *>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::vector<NSObject *>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::vector<NSObject *>>>>::__emplace_unique_key_args<unsigned long,unsigned long &,std::vector<NSObject *>>(this, &v13);
    if (__p)
    {
      v11 = __p;
      operator delete(__p);
    }
  }

  std::vector<MTLPipelineLibrarySerializer::SerializedObject>::push_back[abi:ne200100](this + 40, &v14);
  result = v14;
LABEL_10:
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_185D3C184(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MTLPipelineCollection::addRenderPipeline(MTLPipelineCollection *this, MTLRenderPipelineDescriptor *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = [(MTLRenderPipelineDescriptor *)a2 vertexPreloadedLibraries];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v22;
    do
    {
      v8 = 0;
      do
      {
        if (*v22 != v7)
        {
          objc_enumerationMutation(v4);
        }

        MTLPipelineCollection::addDynamicLibrary(this, *(*(&v21 + 1) + 8 * v8++));
      }

      while (v6 != v8);
      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v6);
  }

  v9 = [(MTLRenderPipelineDescriptor *)a2 fragmentPreloadedLibraries];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = [(NSArray *)v9 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      v13 = 0;
      do
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        MTLPipelineCollection::addDynamicLibrary(this, *(*(&v17 + 1) + 8 * v13++));
      }

      while (v11 != v13);
      v11 = [(NSArray *)v9 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v11);
  }

  v14 = *(this + 36);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = ___ZN21MTLPipelineCollection17addRenderPipelineEP27MTLRenderPipelineDescriptor_block_invoke;
  v16[3] = &unk_1E6EEB298;
  v16[4] = a2;
  v16[5] = this;
  dispatch_sync(v14, v16);
  v15 = *MEMORY[0x1E69E9840];
}

void ___ZN21MTLPipelineCollection17addRenderPipelineEP27MTLRenderPipelineDescriptor_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) copy];
  [v2 setBinaryArchives:0];
  if (MTLPipelineCollection::functionWasCollected(v1, [v2 vertexFunction]) && MTLPipelineCollection::functionWasCollected(v1, [v2 fragmentFunction]))
  {
    MTLPipelineDescriptorHash::addPipelineDescriptor((v1 + 296), v2);
  }
}

void MTLPipelineCollection::addComputePipeline(MTLPipelineCollection *this, MTLComputePipelineDescriptor *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = [(MTLComputePipelineDescriptor *)a2 preloadedLibraries];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        MTLPipelineCollection::addDynamicLibrary(this, *(*(&v12 + 1) + 8 * v8++));
      }

      while (v6 != v8);
      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v9 = *(this + 36);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = ___ZN21MTLPipelineCollection18addComputePipelineEP28MTLComputePipelineDescriptor_block_invoke;
  v11[3] = &unk_1E6EEB298;
  v11[4] = a2;
  v11[5] = this;
  dispatch_sync(v9, v11);
  v10 = *MEMORY[0x1E69E9840];
}

void ___ZN21MTLPipelineCollection18addComputePipelineEP28MTLComputePipelineDescriptor_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) copy];
  [v2 setBinaryArchives:0];
  if (MTLPipelineCollection::functionWasCollected(v1, [v2 computeFunction]))
  {
    MTLPipelineDescriptorHash::addPipelineDescriptor((v1 + 360), v2);
  }
}

void MTLPipelineCollection::addTileRenderPipeline(MTLPipelineCollection *this, MTLTileRenderPipelineDescriptor *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = [(MTLTileRenderPipelineDescriptor *)a2 preloadedLibraries];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        MTLPipelineCollection::addDynamicLibrary(this, *(*(&v12 + 1) + 8 * v8++));
      }

      while (v6 != v8);
      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v9 = *(this + 36);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = ___ZN21MTLPipelineCollection21addTileRenderPipelineEP31MTLTileRenderPipelineDescriptor_block_invoke;
  v11[3] = &unk_1E6EEB298;
  v11[4] = a2;
  v11[5] = this;
  dispatch_sync(v9, v11);
  v10 = *MEMORY[0x1E69E9840];
}

void ___ZN21MTLPipelineCollection21addTileRenderPipelineEP31MTLTileRenderPipelineDescriptor_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) copy];
  [v2 setBinaryArchives:0];
  if (MTLPipelineCollection::functionWasCollected(v1, [v2 tileFunction]))
  {
    MTLPipelineDescriptorHash::addPipelineDescriptor((v1 + 424), v2);
  }
}

void MTLPipelineCollection::addMeshRenderPipeline(MTLPipelineCollection *this, MTLMeshRenderPipelineDescriptor *a2)
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = [(MTLMeshRenderPipelineDescriptor *)a2 objectPreloadedLibraries];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v30 objects:v36 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v31;
    do
    {
      v8 = 0;
      do
      {
        if (*v31 != v7)
        {
          objc_enumerationMutation(v4);
        }

        MTLPipelineCollection::addDynamicLibrary(this, *(*(&v30 + 1) + 8 * v8++));
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v30 objects:v36 count:16];
    }

    while (v6);
  }

  v9 = [(MTLMeshRenderPipelineDescriptor *)a2 meshPreloadedLibraries];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v26 objects:v35 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v27;
    do
    {
      v13 = 0;
      do
      {
        if (*v27 != v12)
        {
          objc_enumerationMutation(v9);
        }

        MTLPipelineCollection::addDynamicLibrary(this, *(*(&v26 + 1) + 8 * v13++));
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v26 objects:v35 count:16];
    }

    while (v11);
  }

  v14 = [(MTLMeshRenderPipelineDescriptor *)a2 fragmentPreloadedLibraries];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v15 = [v14 countByEnumeratingWithState:&v22 objects:v34 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v23;
    do
    {
      v18 = 0;
      do
      {
        if (*v23 != v17)
        {
          objc_enumerationMutation(v14);
        }

        MTLPipelineCollection::addDynamicLibrary(this, *(*(&v22 + 1) + 8 * v18++));
      }

      while (v16 != v18);
      v16 = [v14 countByEnumeratingWithState:&v22 objects:v34 count:16];
    }

    while (v16);
  }

  v19 = *(this + 36);
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = ___ZN21MTLPipelineCollection21addMeshRenderPipelineEP31MTLMeshRenderPipelineDescriptor_block_invoke;
  v21[3] = &unk_1E6EEB298;
  v21[4] = a2;
  v21[5] = this;
  dispatch_sync(v19, v21);
  v20 = *MEMORY[0x1E69E9840];
}

void ___ZN21MTLPipelineCollection21addMeshRenderPipelineEP31MTLMeshRenderPipelineDescriptor_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) copy];
  [v2 setBinaryArchives:0];
  if (MTLPipelineCollection::functionWasCollected(v1, [v2 objectFunction]) && MTLPipelineCollection::functionWasCollected(v1, [v2 meshFunction]) && MTLPipelineCollection::functionWasCollected(v1, [v2 fragmentFunction]))
  {
    MTLPipelineDescriptorHash::addPipelineDescriptor((v1 + 488), v2);
  }
}

__n128 MTLPipelineCollection::getFunctionData(uint64_t a1, __n128 *a2, __n128 *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = (*(*a2->n128_u64[0] + 344))(a2->n128_u64[0]);
  v7 = v6[1];
  v18[0] = *v6;
  v18[1] = v7;
  v15 = std::__tree<std::__value_type<MTLLibraryIdentifier,MTLLibraryData *>,std::__map_value_compare<MTLLibraryIdentifier,std::__value_type<MTLLibraryIdentifier,MTLLibraryData *>,std::less<MTLLibraryIdentifier>,true>,std::allocator<std::__value_type<MTLLibraryIdentifier,MTLLibraryData *>>>::find<MTLLibraryIdentifier>(a1 + 224, v18);
  if ((a1 + 232) == v15)
  {
    MTLPipelineCollection::getFunctionData(a2, v8, v9, v10, v11, v12, v13, v14);
  }

  a3->n128_u32[0] = v15[8];
  a3->n128_u64[1] = a2->n128_u64[1];
  result = a2[1];
  a3[1] = result;
  v17 = *MEMORY[0x1E69E9840];
  return result;
}

void MTLPipelineCollection::getFunctionData(void *a1, void *a2, uint64_t a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v6 = [a2 bitCodeHash];
  v29 = *v6;
  v30 = v6[1];
  HashToString(&v29, &v27);
  v7 = std::__hash_table<std::__hash_value_type<std::string,DataBlock>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,DataBlock>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,DataBlock>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,DataBlock>>>::find<std::string>(a1 + 10, &v27.__r_.__value_.__l.__data_);
  if (v7)
  {
    v8 = (*(**v7[5] + 344))(*v7[5]);
    v9 = v8[1];
    v29 = *v8;
    v30 = v9;
    v10 = std::__tree<std::__value_type<MTLLibraryIdentifier,MTLLibraryData *>,std::__map_value_compare<MTLLibraryIdentifier,std::__value_type<MTLLibraryIdentifier,MTLLibraryData *>,std::less<MTLLibraryIdentifier>,true>,std::allocator<std::__value_type<MTLLibraryIdentifier,MTLLibraryData *>>>::find<MTLLibraryIdentifier>((a1 + 28), &v29);
    if (a1 + 29 == v10)
    {
      v21 = [a2 name];
      MTLReportFailure(0, "getFunctionData", 567, @"library was not collected for function %@", v22, v23, v24, v25, v21);
    }

    *a3 = v10[8];
    *(a3 + 8) = [a2 name];
    *(a3 + 16) = [a2 options];
  }

  else
  {
    *&v28[0] = &v27;
    v11 = std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,MTLPipelineLibrarySerializer::MTLSpecializedFunctionDescriptor *>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,MTLPipelineLibrarySerializer::MTLSpecializedFunctionDescriptor *>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,MTLPipelineLibrarySerializer::MTLSpecializedFunctionDescriptor *>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,MTLPipelineLibrarySerializer::MTLSpecializedFunctionDescriptor *>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 23, &v27.__r_.__value_.__l.__data_);
    std::unordered_map<std::string,MTLPipelineLibrarySerializer::MTLSpecializedFunctionDescriptor *>::unordered_map(&v29, (v11 + 5));
    v12 = [a2 functionConstantSpecializationHash];
    v28[0] = *v12;
    v28[1] = v12[1];
    HashToString(v28, &__p);
    v13 = std::__hash_table<std::__hash_value_type<std::string,DataBlock>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,DataBlock>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,DataBlock>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,DataBlock>>>::find<std::string>(&v29, &__p.__r_.__value_.__l.__data_);
    if (v13)
    {
      v14 = v13[5];
      *a3 = -1;
      *(a3 + 8) = v14[5];
    }

    else
    {
      v15 = [a2 name];
      MTLReportFailure(0, "getFunctionData", 592, @"function %@ was not collected but it is referenced in the descriptor", v16, v17, v18, v19, v15);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    std::__hash_table<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,std::__unordered_map_hasher<std::tuple<std::string,unsigned int,unsigned int>,std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,key_hash,std::equal_to<std::tuple<std::string,unsigned int,unsigned int>>,true>,std::__unordered_map_equal<std::tuple<std::string,unsigned int,unsigned int>,std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,std::equal_to<std::tuple<std::string,unsigned int,unsigned int>>,key_hash,true>,std::allocator<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>>::~__hash_table(&v29);
  }

  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }

  v20 = *MEMORY[0x1E69E9840];
}

void sub_185D3CD80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  std::__hash_table<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,std::__unordered_map_hasher<std::tuple<std::string,unsigned int,unsigned int>,std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,key_hash,std::equal_to<std::tuple<std::string,unsigned int,unsigned int>>,true>,std::__unordered_map_equal<std::tuple<std::string,unsigned int,unsigned int>,std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,std::equal_to<std::tuple<std::string,unsigned int,unsigned int>>,key_hash,true>,std::allocator<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>>::~__hash_table(v22 - 80);
  if (a22 < 0)
  {
    operator delete(a17);
  }

  _Unwind_Resume(a1);
}

void MTLPipelineCollection::dumpLibraries(MTLPipelineCollection *this, NSString *a2)
{
  v2 = *(this + 36);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = ___ZN21MTLPipelineCollection13dumpLibrariesEP8NSString_block_invoke;
  v3[3] = &unk_1E6EEB298;
  v3[4] = a2;
  v3[5] = this;
  dispatch_sync(v2, v3);
}

void ___ZN21MTLPipelineCollection13dumpLibrariesEP8NSString_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = objc_autoreleasePoolPush();
  v4 = [MEMORY[0x1E696AC08] defaultManager];
  v5 = *(v2 + 32);
  if (v5 != (v2 + 40))
  {
    v6 = v4;
    do
    {
      v7 = v5[8];
      v8 = *(v7 + 8);
      v9 = [*(a1 + 32) stringByAppendingPathComponent:v8];
      if (([v6 fileExistsAtPath:v9] & 1) == 0)
      {
        v17 = *(v7 + 24);
        if (!v17)
        {
          ___ZN21MTLPipelineCollection13dumpLibrariesEP8NSString_block_invoke_cold_1(v8, v10, v11, v12, v13, v14, v15, v16);
        }

        v25 = 0;
        if (([v17 writeToFile:v9 options:0 error:&v25] & 1) == 0)
        {
          MTLReportFailure(0, "dumpLibraries_block_invoke", 671, @"unable to write library data to %@: %@", v18, v19, v20, v21, v9);
        }
      }

      v22 = v5[1];
      if (v22)
      {
        do
        {
          v23 = v22;
          v22 = *v22;
        }

        while (v22);
      }

      else
      {
        do
        {
          v23 = v5[2];
          v24 = *v23 == v5;
          v5 = v23;
        }

        while (!v24);
      }

      v5 = v23;
    }

    while (v23 != (v2 + 40));
  }

  objc_autoreleasePoolPop(v3);
}

uint64_t MTLPipelineCollection::JSONData(MTLPipelineCollection *this)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3052000000;
  v8 = __Block_byref_object_copy__13;
  v9 = __Block_byref_object_dispose__13;
  v10 = 0;
  v1 = *(this + 36);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = ___ZN21MTLPipelineCollection8JSONDataEv_block_invoke;
  v4[3] = &unk_1E6EEB2C0;
  v4[4] = &v5;
  v4[5] = this;
  dispatch_sync(v1, v4);
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);
  return v2;
}

void MTLPipelineCollection::JSONDataNoSync(MTLPipelineCollection *this)
{
  v1[4] = *MEMORY[0x1E69E9840];
  if ((*(this + 3) & 0x18) != 0)
  {
    v1[0] = &unk_1EF4778E0;
    v1[1] = this;
    v1[3] = v1;
    MTLPipelineLibrarySerializer::PipelineLibrarySerializerInterface::createMetalScriptSerializer();
  }

  operator new();
}

void MTLPipelineCollection::writeJSONToFile(MTLPipelineCollection *this, NSString *a2)
{
  v2 = *(this + 36);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = ___ZN21MTLPipelineCollection15writeJSONToFileEP8NSString_block_invoke;
  v3[3] = &unk_1E6EEB298;
  v3[4] = a2;
  v3[5] = this;
  dispatch_sync(v2, v3);
}

void ___ZN21MTLPipelineCollection15writeJSONToFileEP8NSString_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = objc_autoreleasePoolPush();
  MTLPipelineCollection::JSONDataNoSync(v1);
}

std::string *std::pair<std::string const,std::unordered_map<std::string,MTLPipelineLibrarySerializer::MTLSpecializedFunctionDescriptor *>>::pair[abi:ne200100](std::string *this, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v4;
  }

  std::unordered_map<std::string,MTLPipelineLibrarySerializer::MTLSpecializedFunctionDescriptor *>::unordered_map(&this[1], a2 + 24);
  return this;
}

void sub_185D3E5C8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void MTLPipelineLibrarySerializer::MTLSpecializedFunctionDescriptor::~MTLSpecializedFunctionDescriptor(id *this)
{

  MTLPipelineLibrarySerializer::FunctionDescriptor::~FunctionDescriptor(this);
}

uint64_t std::pair<std::string const,std::unordered_map<std::string,MTLPipelineLibrarySerializer::MTLSpecializedFunctionDescriptor *>>::~pair(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,std::__unordered_map_hasher<std::tuple<std::string,unsigned int,unsigned int>,std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,key_hash,std::equal_to<std::tuple<std::string,unsigned int,unsigned int>>,true>,std::__unordered_map_equal<std::tuple<std::string,unsigned int,unsigned int>,std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,std::equal_to<std::tuple<std::string,unsigned int,unsigned int>>,key_hash,true>,std::allocator<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>>::~__hash_table(a1 + 24);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

MTLPipelineLibrarySerializer::MTLSpecializedFunctionDescriptor *MTLPipelineLibrarySerializer::MTLSpecializedFunctionDescriptor::MTLSpecializedFunctionDescriptor(MTLPipelineLibrarySerializer::MTLSpecializedFunctionDescriptor *this, MTLLibraryData *a2, NSString *a3, MTLFunctionConstantValues *a4, NSString *a5, NSString *a6, MTLFunctionType a7, uint64_t a8)
{
  v12 = MTLPipelineLibrarySerializer::FunctionDescriptor::FunctionDescriptor(this, a2, a3, a7, a8);
  *(v12 + 4) = 0;
  *(v12 + 5) = 0;
  *(v12 + 6) = 0;
  *(v12 + 4) = [(MTLFunctionConstantValues *)a4 copy];
  *(this + 5) = [(NSString *)a5 copy];
  *(this + 6) = [(NSString *)a6 copy];
  return this;
}

void MTLPipelineLibrarySerializer::ComputePipelineDescriptor::~ComputePipelineDescriptor(MTLPipelineLibrarySerializer::ComputePipelineDescriptor *this)
{
  v2 = *(this + 14);
  if (v2)
  {
    *(this + 15) = v2;
    operator delete(v2);
  }

  v3 = *(this + 6);
  if (v3)
  {
    *(this + 7) = v3;
    operator delete(v3);
  }

  v4 = *(this + 3);
  if (v4)
  {
    *(this + 4) = v4;
    operator delete(v4);
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void MTLPipelineLibrarySerializer::RenderPipelineDescriptor::~RenderPipelineDescriptor(MTLPipelineLibrarySerializer::RenderPipelineDescriptor *this)
{
  v2 = *(this + 21);
  if (v2)
  {
    *(this + 22) = v2;
    operator delete(v2);
  }

  v3 = *(this + 18);
  if (v3)
  {
    *(this + 19) = v3;
    operator delete(v3);
  }

  v4 = *(this + 6);
  if (v4)
  {
    *(this + 7) = v4;
    operator delete(v4);
  }

  v5 = *(this + 3);
  if (v5)
  {
    *(this + 4) = v5;
    operator delete(v5);
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void MTLPipelineLibrarySerializer::MeshRenderPipelineDescriptor::~MeshRenderPipelineDescriptor(MTLPipelineLibrarySerializer::MeshRenderPipelineDescriptor *this)
{
  v2 = *(this + 28);
  if (v2)
  {
    *(this + 29) = v2;
    operator delete(v2);
  }

  v3 = *(this + 25);
  if (v3)
  {
    *(this + 26) = v3;
    operator delete(v3);
  }

  v4 = *(this + 22);
  if (v4)
  {
    *(this + 23) = v4;
    operator delete(v4);
  }

  v5 = *(this + 6);
  if (v5)
  {
    *(this + 7) = v5;
    operator delete(v5);
  }

  v6 = *(this + 3);
  if (v6)
  {
    *(this + 4) = v6;
    operator delete(v6);
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned long,std::vector<NSObject *>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::vector<NSObject *>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::vector<NSObject *>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::vector<NSObject *>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<unsigned long,std::vector<NSObject *>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::vector<NSObject *>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::vector<NSObject *>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::vector<NSObject *>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<unsigned long,std::vector<NSObject *>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::vector<NSObject *>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::vector<NSObject *>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::vector<NSObject *>>>>::__deallocate_node(int a1, void *__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      v4 = v2[3];
      if (v4)
      {
        v2[4] = v4;
        operator delete(v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,MTLPipelineLibrarySerializer::MTLSpecializedFunctionDescriptor *>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,MTLPipelineLibrarySerializer::MTLSpecializedFunctionDescriptor *>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,MTLPipelineLibrarySerializer::MTLSpecializedFunctionDescriptor *>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,MTLPipelineLibrarySerializer::MTLSpecializedFunctionDescriptor *>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,MTLPipelineLibrarySerializer::MTLSpecializedFunctionDescriptor *>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,MTLPipelineLibrarySerializer::MTLSpecializedFunctionDescriptor *>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,MTLPipelineLibrarySerializer::MTLSpecializedFunctionDescriptor *>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,MTLPipelineLibrarySerializer::MTLSpecializedFunctionDescriptor *>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,MTLPipelineLibrarySerializer::MTLSpecializedFunctionDescriptor *>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,MTLPipelineLibrarySerializer::MTLSpecializedFunctionDescriptor *>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,MTLPipelineLibrarySerializer::MTLSpecializedFunctionDescriptor *>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,MTLPipelineLibrarySerializer::MTLSpecializedFunctionDescriptor *>>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::unordered_map<std::string,MTLPipelineLibrarySerializer::MTLSpecializedFunctionDescriptor *>>,0>((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::unordered_map<std::string,MTLPipelineLibrarySerializer::MTLSpecializedFunctionDescriptor *>>,0>(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,std::__unordered_map_hasher<std::tuple<std::string,unsigned int,unsigned int>,std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,key_hash,std::equal_to<std::tuple<std::string,unsigned int,unsigned int>>,true>,std::__unordered_map_equal<std::tuple<std::string,unsigned int,unsigned int>,std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,std::equal_to<std::tuple<std::string,unsigned int,unsigned int>>,key_hash,true>,std::allocator<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>>::~__hash_table(a1 + 24);
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t std::unordered_map<std::string,MTLPipelineLibrarySerializer::MTLSpecializedFunctionDescriptor *>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,std::__unordered_map_hasher<std::tuple<std::string,unsigned int,unsigned int>,std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,key_hash,std::equal_to<std::tuple<std::string,unsigned int,unsigned int>>,true>,std::__unordered_map_equal<std::tuple<std::string,unsigned int,unsigned int>,std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,std::equal_to<std::tuple<std::string,unsigned int,unsigned int>>,key_hash,true>,std::allocator<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<std::__hash_value_type<std::string,MTLPipelineLibrarySerializer::MTLSpecializedFunctionDescriptor *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MTLPipelineLibrarySerializer::MTLSpecializedFunctionDescriptor *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MTLPipelineLibrarySerializer::MTLSpecializedFunctionDescriptor *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MTLPipelineLibrarySerializer::MTLSpecializedFunctionDescriptor *>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,MTLPipelineLibrarySerializer::MTLSpecializedFunctionDescriptor *> const&>(a1, i + 2);
  }

  return a1;
}

const void **std::__hash_table<std::__hash_value_type<std::string,MTLPipelineLibrarySerializer::MTLSpecializedFunctionDescriptor *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MTLPipelineLibrarySerializer::MTLSpecializedFunctionDescriptor *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MTLPipelineLibrarySerializer::MTLSpecializedFunctionDescriptor *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MTLPipelineLibrarySerializer::MTLSpecializedFunctionDescriptor *>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,MTLPipelineLibrarySerializer::MTLSpecializedFunctionDescriptor *> const&>(void *a1, const void **a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
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
    std::__hash_table<std::__hash_value_type<std::string,MTLPipelineLibrarySerializer::MTLSpecializedFunctionDescriptor *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MTLPipelineLibrarySerializer::MTLSpecializedFunctionDescriptor *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MTLPipelineLibrarySerializer::MTLSpecializedFunctionDescriptor *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MTLPipelineLibrarySerializer::MTLSpecializedFunctionDescriptor *>>>::__construct_node_hash<std::pair<std::string const,MTLPipelineLibrarySerializer::MTLSpecializedFunctionDescriptor *> const&>();
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

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_185D3ECE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_185D3EDA8(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

const void **std::__hash_table<std::__hash_value_type<std::string,MTLPipelineLibrarySerializer::FunctionDescriptor *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MTLPipelineLibrarySerializer::FunctionDescriptor *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MTLPipelineLibrarySerializer::FunctionDescriptor *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MTLPipelineLibrarySerializer::FunctionDescriptor *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, const void **a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
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
    std::__hash_table<std::__hash_value_type<std::string,MTLPipelineLibrarySerializer::FunctionDescriptor *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MTLPipelineLibrarySerializer::FunctionDescriptor *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MTLPipelineLibrarySerializer::FunctionDescriptor *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MTLPipelineLibrarySerializer::FunctionDescriptor *>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
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

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_185D3F018(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_185D3F0E0(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

const void **std::__hash_table<std::__hash_value_type<std::string,MTLLibraryData *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MTLLibraryData *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MTLLibraryData *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MTLLibraryData *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, const void **a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
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
    std::__hash_table<std::__hash_value_type<std::string,MTLLibraryData *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MTLLibraryData *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MTLLibraryData *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MTLLibraryData *>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
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

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_185D3F350(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_185D3F418(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,MTLPipelineLibrarySerializer::MTLSpecializedFunctionDescriptor *>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,MTLPipelineLibrarySerializer::MTLSpecializedFunctionDescriptor *>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,MTLPipelineLibrarySerializer::MTLSpecializedFunctionDescriptor *>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,MTLPipelineLibrarySerializer::MTLSpecializedFunctionDescriptor *>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, const void **a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
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
    std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,MTLPipelineLibrarySerializer::MTLSpecializedFunctionDescriptor *>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,MTLPipelineLibrarySerializer::MTLSpecializedFunctionDescriptor *>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,MTLPipelineLibrarySerializer::MTLSpecializedFunctionDescriptor *>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,MTLPipelineLibrarySerializer::MTLSpecializedFunctionDescriptor *>>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
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

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_185D3F694(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::unordered_map<std::string,MTLPipelineLibrarySerializer::MTLSpecializedFunctionDescriptor *>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::unordered_map<std::string,MTLPipelineLibrarySerializer::MTLSpecializedFunctionDescriptor *>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::unordered_map<std::string,MTLPipelineLibrarySerializer::MTLSpecializedFunctionDescriptor *>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::unordered_map<std::string,MTLPipelineLibrarySerializer::MTLSpecializedFunctionDescriptor *>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::unordered_map<std::string,MTLPipelineLibrarySerializer::MTLSpecializedFunctionDescriptor *>>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

const void **std::__hash_table<std::__hash_value_type<std::string,MTLPipelineLibrarySerializer::MTLSpecializedFunctionDescriptor *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MTLPipelineLibrarySerializer::MTLSpecializedFunctionDescriptor *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MTLPipelineLibrarySerializer::MTLSpecializedFunctionDescriptor *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MTLPipelineLibrarySerializer::MTLSpecializedFunctionDescriptor *>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,MTLPipelineLibrarySerializer::MTLSpecializedFunctionDescriptor *>>(void *a1, const void **a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
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
    std::__hash_table<std::__hash_value_type<std::string,MTLPipelineLibrarySerializer::MTLSpecializedFunctionDescriptor *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MTLPipelineLibrarySerializer::MTLSpecializedFunctionDescriptor *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MTLPipelineLibrarySerializer::MTLSpecializedFunctionDescriptor *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MTLPipelineLibrarySerializer::MTLSpecializedFunctionDescriptor *>>>::__construct_node_hash<std::pair<std::string const,MTLPipelineLibrarySerializer::MTLSpecializedFunctionDescriptor *>>();
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

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_185D3F9F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_185D3FAB8(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t std::vector<NSObject *>::__init_with_size[abi:ne200100]<NSObject * const*,NSObject * const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<MTLStructMember *>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_185D3FB2C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::__hash_table<std::__hash_value_type<unsigned long,std::vector<NSObject *>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::vector<NSObject *>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::vector<NSObject *>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::vector<NSObject *>>>>::__emplace_unique_key_args<unsigned long,unsigned long &,std::vector<NSObject *>>(void *a1, unint64_t *a2)
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

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long,std::vector<NSObject *>>,void *>>>::operator()[abi:ne200100](uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = __p[3];
    if (v3)
    {
      __p[4] = v3;
      operator delete(v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t std::__function::__func<MTLPipelineCollection::JSONDataNoSync(void)::$_0,std::allocator<MTLPipelineCollection::JSONDataNoSync(void)::$_0>,MTLPipelineLibrarySerializer::FunctionReference ()(_MTLFunction *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1EF4778E0;
  a2[1] = v2;
  return result;
}

void std::__function::__func<MTLPipelineCollection::JSONDataNoSync(void)::$_0,std::allocator<MTLPipelineCollection::JSONDataNoSync(void)::$_0>,MTLPipelineLibrarySerializer::FunctionReference ()(_MTLFunction *)>::operator()(uint64_t a1@<X0>, void **a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  v4 = *(a1 + 8);
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  MTLPipelineCollection::getFunctionData(v4, v3, a3);
}

uint64_t std::__function::__func<MTLPipelineCollection::JSONDataNoSync(void)::$_0,std::allocator<MTLPipelineCollection::JSONDataNoSync(void)::$_0>,MTLPipelineLibrarySerializer::FunctionReference ()(_MTLFunction *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__tree<std::__value_type<MTLLibraryIdentifier,unsigned long>,std::__map_value_compare<MTLLibraryIdentifier,std::__value_type<MTLLibraryIdentifier,unsigned long>,std::less<MTLLibraryIdentifier>,true>,std::allocator<std::__value_type<MTLLibraryIdentifier,unsigned long>>>::__emplace_unique_key_args<MTLLibraryIdentifier,std::piecewise_construct_t const&,std::tuple<MTLLibraryIdentifier const&>,std::tuple<>>(uint64_t a1, unsigned int *a2)
{
  v2 = *std::__tree<std::__value_type<MTLLibraryIdentifier,MTLLibraryData *>,std::__map_value_compare<MTLLibraryIdentifier,std::__value_type<MTLLibraryIdentifier,MTLLibraryData *>,std::less<MTLLibraryIdentifier>,true>,std::allocator<std::__value_type<MTLLibraryIdentifier,MTLLibraryData *>>>::__find_equal<MTLLibraryIdentifier>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t std::vector<NSObject *>::__init_with_size[abi:ne200100]<NSObject **,NSObject **>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<MTLStructMember *>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_185D40014(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

__CFString *MTLCompareFunctionString(unint64_t a1)
{
  if (a1 > 7)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E6EED2C8[a1];
  }
}

__CFString *MTLStencilOperationString(unint64_t a1)
{
  if (a1 > 7)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E6EED308[a1];
  }
}

void MTLSchedulerRequest::MTLSchedulerRequest(MTLSchedulerRequest *this)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_1EF477990;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0;
}

void MTLSchedulerRequest::generateXPCBlock(MTLSchedulerRequest *this, qos_class_t a2, int a3)
{
  std::shared_ptr<MTLCompilerConnection>::shared_ptr[abi:ne200100]<MTLCompilerConnection,0>(&v11, this + 1);
  v7 = v11;
  v6 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3321888768;
  v8[2] = ___ZN19MTLSchedulerRequest16generateXPCBlockE11qos_class_ti_block_invoke;
  v8[3] = &__block_descriptor_60_e8_40c46_ZTSNSt3__110shared_ptrI18MTLCompilerRequestEE_e5_v8__0l;
  v8[4] = this;
  v8[5] = v7;
  v9 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = a3;
  *(this + 9) = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, a2, -1, v8);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

void ___ZN19MTLSchedulerRequest16generateXPCBlockE11qos_class_ti_block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v21 = v3;
  v22 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v18 = v4;
  v17 = _os_activity_create(&dword_185B8E000, "Metal Compiling Shader", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v17, &state);
  if (MTLTraceEnabled())
  {
    v5 = *(v2 + 161);
    v6 = *(v2 + 24);
    v7 = *(v3 + 168);
    v8 = *(*(v2 + 96) + 24);
    kdebug_trace();
  }

  v9 = *(v3 + 48);
  if (v9)
  {
    MTLCompileToken::setStatus(v9, 2);
  }

  v19 = 0;
  v10 = *(v2 + 96);
  if ((*(*v3 + 64))(v3, *(a1 + 56), &v19))
  {
    *buf = xpc_dictionary_create_empty();
    std::allocate_shared[abi:ne200100]<MTLCompilerServiceRequestHandler,std::allocator<MTLCompilerServiceRequestHandler>,NSObject  {objcproto13OS_xpc_object}*,0>();
  }

  v11 = *(v3 + 88);
  if (v11)
  {
    (*(v11 + 16))(v11, 2, 0, 0, v19);
  }

  free(v19);
  if (MTLTraceEnabled())
  {
    v12 = *(v2 + 161);
    v13 = *(v2 + 24);
    v14 = *(v2 + 168);
    v15 = *(*(v2 + 96) + 24);
    kdebug_trace();
  }

  os_activity_scope_leave(&state);
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  v16 = *MEMORY[0x1E69E9840];
}

void sub_185D44C40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, std::__shared_weak_count *a19, uint64_t a20, os_activity_scope_state_s state)
{
  if (*(v21 - 105) < 0)
  {
    operator delete(*(v21 - 128));
  }

  if (a19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a19);
  }

  os_activity_scope_leave(&state);
  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(a1);
}

uint64_t MTLSchedulerRequest::newLogReplayRequest@<X0>(MTLCompilerRequest **a1@<X1>, const char *a2@<X2>, NSObject *a3@<X3>, uint64_t a4@<X4>, void *a5@<X8>)
{
  *a5 = 0;
  a5[1] = 0;
  result = _MTLIsInternalBuild();
  if (result)
  {
    objc_autoreleasePoolPush();
    v10 = MTLAtomicIncrement(&MTLSchedulerRequest::newLogReplayRequest(std::shared_ptr<MTLCompilerRequest> const&,char const*,NSObject  {objcproto16OS_dispatch_data}*,int)::gDiagnosticLogIndex);
    v11 = MTLGetProcessName();
    std::string::basic_string[abi:ne200100]<0>(&v34, v11);
    v12 = std::string::append(&v34, "_data_");
    v13 = *&v12->__r_.__value_.__l.__data_;
    v35.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
    *&v35.__r_.__value_.__l.__data_ = v13;
    v12->__r_.__value_.__l.__size_ = 0;
    v12->__r_.__value_.__r.__words[2] = 0;
    v12->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v33, v10);
    if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v14 = &v33;
    }

    else
    {
      v14 = v33.__r_.__value_.__r.__words[0];
    }

    if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v33.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v33.__r_.__value_.__l.__size_;
    }

    v16 = std::string::append(&v35, v14, size);
    v36 = *v16;
    v16->__r_.__value_.__l.__size_ = 0;
    v16->__r_.__value_.__r.__words[2] = 0;
    v16->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v33.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v35.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v34.__r_.__value_.__l.__data_);
    }

    v29 = SHIBYTE(v36.__r_.__value_.__r.__words[2]);
    if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v17 = HIBYTE(v36.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v17 = v36.__r_.__value_.__l.__size_;
    }

    v34.__r_.__value_.__r.__words[0] = 0;
    v18 = (*(**a1 + 64))(*a1, a4, &v34);
    size_ptr = 0;
    v33.__r_.__value_.__r.__words[0] = 0;
    if (a3)
    {
      dispatch_data_create_map(a3, &v33.__r_.__value_.__l.__data_, &size_ptr);
      v19 = size_ptr;
    }

    else
    {
      v19 = 0;
    }

    v30 = 0;
    buffer_ptr = 0;
    dispatch_data_create_map(v18, &buffer_ptr, &v30);
    v20 = v30;
    if (a2)
    {
      v21 = strlen(a2) + 1;
    }

    else
    {
      v21 = 0;
    }

    RequestType = MTLCompilerRequest::getRequestType(*a1);
    v23 = v19 + v20 + v21 + 28;
    v24 = malloc_type_malloc(v23 + v17 + 17, 0x100004077774924uLL);
    *v24 = v17 + 1;
    if (v29 >= 0)
    {
      v25 = &v36;
    }

    else
    {
      v25 = v36.__r_.__value_.__r.__words[0];
    }

    memcpy(v24 + 1, v25, v17 + 1);
    *(v24 + v17 + 9) = v23;
    *(v24 + v17 + 17) = v21;
    v26 = v24 + v17 + 25;
    memcpy(v26, a2, v21);
    v27 = &v26[v21];
    *v27++ = v19;
    memcpy(v27, v33.__r_.__value_.__l.__data_, v19);
    v28 = v27 + v19;
    *v28 = RequestType;
    *(v28 + 4) = v20;
    memcpy(v27 + v19 + 12, buffer_ptr, v20);
    _ZNSt3__115allocate_sharedB8ne200100I18MTLCompilerRequestNS_9allocatorIS1_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
  }

  return result;
}

void sub_185D450E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, int a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a16 < 0)
  {
    operator delete(*(v38 - 128));
  }

  if (v37)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v37);
  }

  _Unwind_Resume(exception_object);
}

dispatch_block_t MTLSchedulerRequest::generateMonolithicBlock(MTLSchedulerRequest *this, qos_class_t a2, int a3)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = ___ZN19MTLSchedulerRequest23generateMonolithicBlockE11qos_class_ti_block_invoke;
  v5[3] = &__block_descriptor_44_e5_v8__0l;
  v5[4] = this;
  v6 = a3;
  result = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, a2, -1, v5);
  *(this + 9) = result;
  return result;
}

void ___ZN19MTLSchedulerRequest23generateMonolithicBlockE11qos_class_ti_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = _os_activity_create(&dword_185B8E000, "Compiling Shader", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v3, &state);
  if (MTLTraceEnabled())
  {
    v4 = *(v2 + 161);
    v5 = *(v2 + 24);
    v6 = *(v2 + 168);
    kdebug_trace();
  }

  std::shared_ptr<MTLCompilerConnection>::shared_ptr[abi:ne200100]<MTLCompilerConnection,0>(&v35, (v2 + 8));
  v8 = v35;
  v7 = v36;
  if (v36)
  {
    atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
    if (v36)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v36);
    }
  }

  v9 = *(v8 + 6);
  if (v9)
  {
    MTLCompileToken::setStatus(v9, 2);
  }

  v35 = 0;
  v10 = (*(*v8 + 64))(v8, *(a1 + 40), &v35);
  if (v10)
  {
    size_ptr = 0;
    buffer_ptr = 0;
    v11 = *(v2 + 96);
    v12 = dispatch_data_create_map(v10, &buffer_ptr, &size_ptr);
    if (*(v2 + 144))
    {
      v31 = 0;
      v32 = 0;
      v13 = dispatch_data_create_map(*(v2 + 152), &v32, &v31);
      v14 = (*(*(v11 + 128) + 32))(*(v11 + 136), *(v2 + 144), v32, v31);
      dispatch_release(v13);
      if (v14 == -1)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          ___ZN19MTLSchedulerRequest23generateMonolithicBlockE11qos_class_ti_block_invoke_cold_1((v2 + 144));
        }

        v15 = *(v8 + 11);
        if (v15)
        {
          (*(v15 + 16))(v15, 2, 0, 0, v35);
        }

        free(v35);
        if (MTLTraceEnabled())
        {
          v16 = *(v2 + 161);
          v17 = *(v2 + 24);
          v18 = *(v2 + 168);
          kdebug_trace();
        }

        goto LABEL_28;
      }
    }

    else
    {
      v14 = 0xFFFFFFFFLL;
    }

    RequestType = MTLCompilerRequest::getRequestType(v8);
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3321888768;
    v27[2] = ___ZN19MTLSchedulerRequest23generateMonolithicBlockE11qos_class_ti_block_invoke_10;
    v27[3] = &unk_1EF4779F8;
    v30 = RequestType != 8;
    v27[6] = v2;
    v27[7] = v8;
    v28 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v29 = *(a1 + 40);
    v27[4] = v12;
    v27[5] = v3;
    v24 = *(v11 + 136);
    v25 = *(*(v11 + 128) + 24);
    v26 = MTLCompilerRequest::getRequestType(v8);
    v25(v24, v14, v26, buffer_ptr, size_ptr, v27);
    if (v28)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v28);
    }
  }

  else
  {
    v19 = *(v8 + 11);
    if (v19)
    {
      (*(v19 + 16))(v19, 2, 0, 0, v35);
    }

    free(v35);
    if (MTLTraceEnabled())
    {
      v20 = *(v2 + 161);
      v21 = *(v2 + 24);
      v22 = *(v2 + 168);
      kdebug_trace();
    }
  }

LABEL_28:
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  os_activity_scope_leave(&state);
}

void sub_185D45510(_Unwind_Exception *a1)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  os_activity_scope_leave((v2 - 96));
  _Unwind_Resume(a1);
}

void ___ZN19MTLSchedulerRequest23generateMonolithicBlockE11qos_class_ti_block_invoke_10(uint64_t a1, int a2)
{
  v4 = *(a1 + 48);
  if (*(a1 + 76) != 1 || !MTLEnvVarAggregator::GET_MTL_FORCE_COMPILER_FAILURE(0, 0))
  {
    v8 = *(*(a1 + 56) + 88);
    if (a2)
    {
      if (!v8)
      {
        goto LABEL_13;
      }

      v7 = *(v8 + 16);
    }

    else
    {
      if (!v8)
      {
        goto LABEL_13;
      }

      v7 = *(v8 + 16);
    }

    goto LABEL_12;
  }

  MTLSchedulerRequest::newLogReplayRequest((a1 + 56), *(v4 + 144), *(v4 + 152), *(a1 + 72), &v13);
  v5 = *(v4 + 40);
  *(v4 + 32) = v13;
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = *(*(a1 + 56) + 88);
  if (v6)
  {
    v7 = *(v6 + 16);
LABEL_12:
    v7();
  }

LABEL_13:
  dispatch_release(*(a1 + 32));
  if (MTLTraceEnabled())
  {
    v9 = *(v4 + 161);
    v10 = *(v4 + 24);
    v11 = *(v4 + 168);
    kdebug_trace();
  }

  v12 = *(a1 + 40);
}

uint64_t __copy_helper_block_e8_56c46_ZTSNSt3__110shared_ptrI18MTLCompilerRequestEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 64);
  *(result + 56) = *(a2 + 56);
  *(result + 64) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_56c46_ZTSNSt3__110shared_ptrI18MTLCompilerRequestEE(uint64_t a1)
{
  v1 = *(a1 + 64);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void ___ZN19MTLSchedulerRequest19newLogReplayRequestERKNSt3__110shared_ptrI18MTLCompilerRequestEEPKcPU27objcproto16OS_dispatch_data8NSObjecti_block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      ___ZN37MTLLegacyMonolithicCompilerConnection24DispatchLogReplayRequestEP18MTLCompilerRequestPKcPU27objcproto16OS_dispatch_data8NSObjectP11objc_object_block_invoke_cold_1(a2);
    }
  }
}

void MTLSchedulerRequest::releaseBooster(MTLSchedulerRequest *this)
{
  v2 = *(this + 10);
  if (v2)
  {
    _Block_release(v2);
    *(this + 10) = 0;
  }
}

void std::__shared_ptr_emplace<MTLCompilerServiceRequestHandler>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1EF477A90;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1865FF210);
}

void *_ZNSt3__120__shared_ptr_emplaceI18MTLCompilerRequestNS_9allocatorIS1_EEEC2B8ne200100IJES3_Li0EEES3_DpOT_(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1EF477AE0;
  MTLCompilerRequest::MTLCompilerRequest((a1 + 3));
  return a1;
}

void std::__shared_ptr_emplace<MTLCompilerRequest>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1EF477AE0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1865FF210);
}

uint64_t ___ZL30shouldOutputNodePropertyRetainv_block_invoke()
{
  result = dyld_program_sdk_at_least();
  shouldOutputNodePropertyRetain(void)::result = result;
  return result;
}

__CFString *MTLCommandEncoderErrorStateToString(unint64_t a1)
{
  if (a1 > 4)
  {
    return @"Unknown";
  }

  else
  {
    return *(&off_1E6EED450 + a1);
  }
}

void _doMTLSyncDispatch(uint64_t a1, void **a2, void *a3, _DWORD *a4)
{
  v4 = *a2;
  if (*a2)
  {
    v8 = 0;
    do
    {
      v9 = *v4;
      if (((*(v4[1] + 16))() & 1) != 0 || (*a4 & 0xFFFFFFFE) == 2)
      {
        _Block_release(v4[1]);
        if (v8)
        {
          v10 = v8;
        }

        else
        {
          v10 = a2;
        }

        *v10 = v9;
        if (!v9)
        {
          *a3 = v8;
        }

        free(v4);
      }

      else
      {
        v8 = v4;
      }

      v4 = v9;
    }

    while (v9);
  }
}

void validateMTLAttributeFormat(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a1 >= 0x38)
  {
    _MTLMessageContextPush_(a2, 4, @"format is not a valid MTLVertexFormat / MTLAttributeFormat.", a4, a5, a6, a7, a8, a9);
  }
}

uint64_t MTLAttributeFormatAlignment(MTLAttributeFormat a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 < (MTLAttributeFormatCharNormalized|MTLAttributeFormatUChar3Normalized))
  {
    return qword_185DE43B0[a1];
  }

  MTLReportFailure(0, "MTLAttributeFormatAlignment", 156, @"format is not a valid MTLVertexFormat / MTLAttributeFormat.", a5, a6, a7, a8, v8);
  return 0;
}

uint64_t MTLAttributeFormatComponentCount(MTLAttributeFormat a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 < (MTLAttributeFormatCharNormalized|MTLAttributeFormatUChar3Normalized))
  {
    return qword_185DE4570[a1];
  }

  MTLReportFailure(0, "MTLAttributeFormatComponentCount", 173, @"format is not a valid MTLVertexFormat / MTLAttributeFormat.", a5, a6, a7, a8, v8);
  return 0;
}

uint64_t MTLAttributeFormatSize(MTLAttributeFormat a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 < (MTLAttributeFormatCharNormalized|MTLAttributeFormatUChar3Normalized))
  {
    return qword_185DE4730[a1];
  }

  MTLReportFailure(0, "MTLAttributeFormatSize", 202, @"format is not a valid MTLVertexFormat / MTLAttributeFormat.", a5, a6, a7, a8, v8);
  return 0;
}

__CFString *MTLAttributeFormatString(MTLAttributeFormat a1)
{
  if (a1 > MTLAttributeFormatFloatRGB9E5)
  {
    return @"Unknown";
  }

  else
  {
    return *(&off_1E6EED478 + a1);
  }
}

uint64_t isVertexFormatInteger(uint64_t a1, int *a2, BOOL *a3)
{
  v3 = 1;
  if (a1 > 31)
  {
    if (a1 > 44)
    {
      if (a1 <= 48)
      {
        if (a1 != 45)
        {
          v4 = 1;
          v5 = 1;
          if (a1 != 46)
          {
            goto LABEL_25;
          }

          goto LABEL_24;
        }

        goto LABEL_18;
      }

      if (a1 == 49)
      {
        goto LABEL_23;
      }

      if (a1 == 50)
      {
LABEL_21:
        v4 = 1;
        v3 = 2;
        goto LABEL_22;
      }
    }

    else
    {
      if ((a1 - 32) < 4)
      {
        v4 = 1;
        v3 = 4;
LABEL_22:
        v5 = 1;
        goto LABEL_24;
      }

      if ((a1 - 36) < 4)
      {
        v4 = 0;
        v5 = 1;
        v3 = 4;
        goto LABEL_24;
      }
    }

LABEL_25:
    v3 = 0;
    v4 = 0;
    v5 = 0;
    goto LABEL_24;
  }

  if (a1 > 12)
  {
    if ((a1 - 13) >= 3)
    {
      if ((a1 - 16) >= 3)
      {
        goto LABEL_25;
      }

      goto LABEL_21;
    }

LABEL_23:
    v4 = 0;
    v5 = 1;
    v3 = 2;
    goto LABEL_24;
  }

  if ((a1 - 1) < 3)
  {
LABEL_18:
    v4 = 0;
    goto LABEL_22;
  }

  v4 = 1;
  v5 = 1;
  if ((a1 - 4) >= 3)
  {
    goto LABEL_25;
  }

LABEL_24:
  *a2 = v3;
  *a3 = v4;
  return v5;
}

uint64_t MTLVertexDescriptorDescription(uint64_t result, uint64_t a2)
{
  v39 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v3 = result;
    v29 = [@"\n" stringByPaddingToLength:a2 + 4 withString:@" " startingAtIndex:0];
    v4 = [@"\n" stringByPaddingToLength:a2 + 8 withString:@" " startingAtIndex:0];
    v5 = [@"\n" stringByPaddingToLength:a2 + 12 withString:@" " startingAtIndex:0];
    v38 = 0;
    memset(v37, 0, sizeof(v37));
    v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:31];
    v28 = v6;
    for (i = 0; i != 31; ++i)
    {
      v15 = *(*(v3 + 16) + 8 + 8 * i);
      if (v15 && *(v15 + 8))
      {
        v16 = *(v15 + 24);
        if (v16 >= 0x1F)
        {
          MTLVertexDescriptorDescription_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
        }

        v17 = v37[v16];
        if (!v17)
        {
          v17 = [MEMORY[0x1E695DF70] arrayWithCapacity:128];
          v37[v16] = v17;
          v36[0] = v29;
          v36[1] = [MEMORY[0x1E696AEC0] stringWithFormat:@"Buffer %lu:", v16];
          [v17 addObjectsFromArray:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v36, 2)}];
          v18 = *(*(v3 + 8) + 8 + 8 * v16);
          if (v18)
          {
            v35[0] = v4;
            v35[1] = @"stepFunction =";
            v19 = v18[2];
            v20 = @"Unknown";
            if (v19 <= 4)
            {
              v20 = *(&off_1E6EED638 + v19);
            }

            v35[2] = v20;
            [v17 addObjectsFromArray:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v35, 3)}];
            if (v18[2] == 2)
            {
              v34[0] = v4;
              v34[1] = @"stepRate =";
              v34[2] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v18[3]];
              [v17 addObjectsFromArray:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v34, 3)}];
            }

            if ([v18 isStrideDynamic])
            {
              v33[0] = v4;
              v33[1] = @"stride = dynamic";
              v21 = MEMORY[0x1E695DEC8];
              v22 = v33;
              v23 = 2;
            }

            else
            {
              v32[0] = v4;
              v32[1] = @"stride =";
              v32[2] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v18[1]];
              v21 = MEMORY[0x1E695DEC8];
              v22 = v32;
              v23 = 3;
            }

            v24 = [v21 arrayWithObjects:v22 count:v23];
          }

          else
          {
            v31[0] = v4;
            v31[1] = @"stepFunction =";
            v31[2] = @"MTLVertexStepFunctionPerVertex";
            v31[3] = v4;
            v31[4] = @"stride =";
            v31[5] = &unk_1EF4CFDC8;
            v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:6];
          }

          [v17 addObjectsFromArray:v24];
        }

        v30[0] = v4;
        v30[1] = [MEMORY[0x1E696AEC0] stringWithFormat:@"Attribute %u:", i];
        v30[2] = v5;
        v30[3] = @"offset =";
        v30[4] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(v15 + 16)];
        v30[5] = v5;
        v30[6] = @"format =";
        v30[7] = MTLAttributeFormatString(*(v15 + 8));
        v6 = [v17 addObjectsFromArray:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v30, 8)}];
      }
    }

    for (j = 0; j != 31; ++j)
    {
      v26 = v37[j];
      if (v26)
      {
        [v28 addObject:{objc_msgSend(v26, "componentsJoinedByString:", @" "}];
      }
    }

    result = [v28 componentsJoinedByString:@" "];
  }

  v27 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t MTLVertexDescriptorEquivalent(MTLVertexDescriptorInternal *a1, MTLVertexDescriptorInternal *a2)
{
  if (a1 == a2 || _isDefaultVertexDescriptor(a1) && (_isDefaultVertexDescriptor(a2) & 1) != 0)
  {
    return 1;
  }

  return [(MTLVertexDescriptorInternal *)a1 isEqual:a2];
}

uint64_t _isDefaultVertexDescriptor(MTLVertexDescriptorInternal *a1)
{
  if (!a1)
  {
    return 1;
  }

  v1 = 0;
  while (1)
  {
    v2 = a1->_vertexBufferArray->_descriptors[v1];
    if (v2)
    {
      if (v2->_stride || v2->_stepFunction != 1 || v2->_instanceStepRate != 1)
      {
        break;
      }
    }

    if (++v1 == 31)
    {
      descriptors = a1->_attributeArray->_descriptors;
      v4 = -1;
      while (1)
      {
        v5 = *descriptors;
        if (*descriptors)
        {
          if (v5->_vertexFormat || v5->_bufferIndex || v5->_offset)
          {
            break;
          }
        }

        ++v4;
        ++descriptors;
        if (v4 == 30)
        {
          return 1;
        }
      }

      return 0;
    }
  }

  return 0;
}

void sub_185D4D0C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void _submitAvailableCommandBuffers(void *a1)
{
  [a1 _submitAvailableCommandBuffers];
}

void sub_185D53C1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_185D54264(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t std::unordered_map<long,MTLTensorExtents *>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,std::__unordered_map_hasher<std::tuple<std::string,unsigned int,unsigned int>,std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,key_hash,std::equal_to<std::tuple<std::string,unsigned int,unsigned int>>,true>,std::__unordered_map_equal<std::tuple<std::string,unsigned int,unsigned int>,std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,std::equal_to<std::tuple<std::string,unsigned int,unsigned int>>,key_hash,true>,std::allocator<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<std::__hash_value_type<long,MTLTensorExtents *>,std::__unordered_map_hasher<long,std::__hash_value_type<long,MTLTensorExtents *>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,MTLTensorExtents *>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,MTLTensorExtents *>>>::__emplace_unique_key_args<long,std::pair<long const,MTLTensorExtents *> const&>(a1, i + 2);
  }

  return a1;
}

void *std::__hash_table<std::__hash_value_type<long,MTLTensorExtents *>,std::__unordered_map_hasher<long,std::__hash_value_type<long,MTLTensorExtents *>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,MTLTensorExtents *>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,MTLTensorExtents *>>>::__emplace_unique_key_args<long,std::pair<long const,MTLTensorExtents *> const&>(void *a1, unint64_t *a2)
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

void *std::__hash_table<std::__hash_value_type<long,MTLTensorExtents *>,std::__unordered_map_hasher<long,std::__hash_value_type<long,MTLTensorExtents *>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,MTLTensorExtents *>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,MTLTensorExtents *>>>::__emplace_unique_key_args<long,std::piecewise_construct_t const&,std::tuple<long const&>,std::tuple<>>(void *a1, unint64_t *a2)
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

void *std::__hash_table<std::__hash_value_type<long,MTLTensorExtents *>,std::__unordered_map_hasher<long,std::__hash_value_type<long,MTLTensorExtents *>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,MTLTensorExtents *>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,MTLTensorExtents *>>>::__emplace_unique_key_args<long,std::piecewise_construct_t const&,std::tuple<long &&>,std::tuple<>>(void *a1, unint64_t *a2)
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

char *mdb_strerror(int a1)
{
  if (!a1)
  {
    return "Successful return: 0";
  }

  if ((a1 + 30799) > 0x14)
  {
    return strerror(a1);
  }

  return mdb_errstr[a1 + 30799];
}

uint64_t mdb_dcmp(uint64_t a1, unsigned int a2, void *a3, uint64_t a4)
{
  v4 = *(*(a1 + 80) + 48 * a2 + 24);
  if (v4 == mdb_cmp_int)
  {
    if (*a3 == 8)
    {
      return mdb_cmp_cint(a3, a4);
    }

    v4 = mdb_cmp_int;
  }

  return v4(a3, a4);
}

uint64_t mdb_cmp_int(uint64_t a1, uint64_t a2)
{
  v2 = **(a1 + 8);
  v3 = **(a2 + 8);
  v4 = v2 >= v3;
  v5 = v2 > v3;
  if (v4)
  {
    return v5;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t mdb_cmp_cint(void *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = *a1 - 2;
  v4 = (v2 + v3);
  v5 = (*(a2 + 8) + v3);
  v6 = v4;
  do
  {
    v8 = *v6--;
    v7 = v8;
    v9 = *v5--;
    result = (v7 - v9);
    v11 = v7 == v9 && v4 > v2;
    v4 = v6;
  }

  while (v11);
  return result;
}

uint64_t mdb_env_sync0(uint64_t a1, int a2, uint64_t a3)
{
  v3 = *(a1 + 12);
  if ((v3 & 0x20000) != 0)
  {
    return 13;
  }

  if (!a2 && (v3 & 0x10000) != 0)
  {
    return 0;
  }

  if ((v3 & 0x80000) == 0)
  {
    result = fsync(*a1);
    if (!result)
    {
      return result;
    }

    return *__error();
  }

  if (((a2 == 0) & ((v3 & 0x100000u) >> 20)) != 0)
  {
    v5 = 1;
  }

  else
  {
    v5 = 16;
  }

  result = msync(*(a1 + 56), *(a1 + 16) * a3, v5);
  if (result)
  {
    return *__error();
  }

  return result;
}

uint64_t mdb_txn_renew(uint64_t a1)
{
  if (!a1 || (~*(a1 + 124) & 0x20001) != 0)
  {
    return 22;
  }

  else
  {
    return mdb_txn_renew0(a1);
  }
}

uint64_t mdb_txn_renew0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 64);
  v4 = *(a1 + 124);
  if ((v4 & 0x20000) != 0)
  {
    if (!v3)
    {
      v7 = *(v2 + 72 + 8 * ((*(v2 + 12) >> 25) & 1 ^ (*(*(v2 + 72) + 128) < *(*(v2 + 80) + 128))));
      *(a1 + 24) = *(v7 + 128);
      *(a1 + 72) = 0;
      goto LABEL_14;
    }

    if ((*(v2 + 14) & 0x20) != 0)
    {
      v8 = *(a1 + 72);
      if (v8)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v8 = pthread_getspecific(*(v2 + 160));
      if (v8)
      {
LABEL_8:
        if (*(v8 + 2) != *(v2 + 40) || *v8 != -1)
        {
          return 4294936513;
        }

        goto LABEL_48;
      }
    }

    v22 = *(v2 + 40);
    v23 = pthread_self();
    v24 = *(v2 + 64);
    if (!*(v2 + 224))
    {
      v5 = mdb_reader_pid(v2, 8, v22);
      if (v5)
      {
        return v5;
      }

      *(v2 + 224) = 1;
    }

    v5 = pthread_mutex_lock((v24 + 24));
    if (v5)
    {
      return v5;
    }

    v25 = *(v3 + 16);
    v8 = (v3 + 192);
    if (v25)
    {
      v26 = 0;
      v27 = (v3 + 200);
      while (1)
      {
        v28 = *v27;
        v27 += 16;
        if (!v28)
        {
          break;
        }

        if (v25 == ++v26)
        {
          v26 = *(v3 + 16);
          break;
        }
      }

      if (v26 != *(v2 + 24))
      {
        v8 += 64 * v26;
        *(v8 + 2) = 0;
        v29 = (v8 + 8);
        *v8 = -1;
        *(v8 + 2) = v23;
        if (v26 != v25)
        {
          goto LABEL_45;
        }

        goto LABEL_44;
      }
    }

    else if (*(v2 + 24))
    {
      *(v3 + 200) = 0;
      v29 = (v3 + 200);
      *(v3 + 192) = -1;
      *(v3 + 208) = v23;
LABEL_44:
      *(v3 + 16) = ++v25;
LABEL_45:
      *(v2 + 28) = v25;
      *v29 = v22;
      pthread_mutex_unlock((v24 + 24));
      v31 = *(v2 + 12);
      if ((v31 & 0x200000) != 0)
      {
        v33 = v31 & 0x200000;
        goto LABEL_49;
      }

      v32 = pthread_setspecific(*(v2 + 160), v8);
      if (v32)
      {
        v9 = v32;
        *v29 = 0;
        return v9;
      }

LABEL_48:
      v33 = 0;
      do
      {
LABEL_49:
        *v8 = *(v3 + 8);
      }

      while (*v8 != *(v3 + 8));
      v34 = *v8;
      *(a1 + 24) = *v8;
      *(a1 + 72) = v8;
      v7 = *(v2 + 8 * (v34 & 1) + 72);
      v12 = v33 | 5;
      goto LABEL_15;
    }

    pthread_mutex_unlock((v24 + 24));
    return 4294936506;
  }

  if (!v3)
  {
    v7 = *(v2 + 72 + 8 * ((*(v2 + 12) >> 25) & 1 ^ (*(*(v2 + 72) + 128) < *(*(v2 + 80) + 128))));
    v6 = *(v7 + 128);
    goto LABEL_12;
  }

  v5 = pthread_mutex_lock((v3 + 128));
  if (v5)
  {
    return v5;
  }

  v6 = *(v3 + 8);
  v7 = *(v2 + 8 * (v6 & 1) + 72);
LABEL_12:
  *(a1 + 24) = v6 + 1;
  *(a1 + 8) = 0;
  *(a1 + 56) = 0;
  *(a1 + 128) = 0x1FFFF;
  v10 = *(v2 + 208);
  *(a1 + 72) = v10;
  *v10 = 0;
  v11 = *(v2 + 200);
  *(a1 + 40) = v11;
  *(a1 + 48) = 0;
  *v11 = 0;
  *(a1 + 64) = 0;
  *(v2 + 96) = a1;
  memcpy(*(a1 + 96), *(v2 + 152), 4 * *(v2 + 36));
LABEL_14:
  v12 = 5;
LABEL_15:
  v13 = *(a1 + 88);
  v14 = *(v7 + 40);
  *v13 = *(v7 + 24);
  v13[1] = v14;
  v15 = *(v7 + 56);
  v16 = *(v7 + 72);
  v17 = *(v7 + 104);
  v13[4] = *(v7 + 88);
  v13[5] = v17;
  v13[2] = v15;
  v13[3] = v16;
  *(a1 + 16) = *(v7 + 120) + 1;
  LODWORD(v13) = *(v2 + 32);
  *(a1 + 120) = v13;
  *(a1 + 124) = v4 & 0x20000;
  if (v13 >= 3)
  {
    v18 = 2;
    v19 = 100;
    do
    {
      v20 = *(*(v2 + 144) + 2 * v18);
      *(*(a1 + 88) + v19) = *(*(v2 + 144) + 2 * v18) & 0x7FFF;
      if (v20 < 0)
      {
        v21 = 26;
      }

      else
      {
        v21 = 0;
      }

      *(*(a1 + 112) + v18++) = v21;
      v19 += 48;
    }

    while (v18 < *(a1 + 120));
  }

  *(*(a1 + 112) + 1) = 24;
  **(a1 + 112) = 8;
  if ((*(v2 + 12) & 0x80000000) != 0)
  {
    v9 = 4294936501;
  }

  else
  {
    if (*(v2 + 128) >= *(a1 + 16))
    {
      return 0;
    }

    v9 = 4294936511;
  }

  mdb_txn_end(a1, v12);
  return v9;
}

uint64_t mdb_txn_begin(uint64_t a1, uint64_t a2, int a3, uint64_t *a4)
{
  v4 = *(a1 + 12);
  if ((v4 & ~a3 & 0x20000) != 0)
  {
    return 13;
  }

  v10 = v4 & 0x80000 | a3 & 0x70000;
  if (a2)
  {
    v11 = *(a2 + 124);
    v10 |= v11;
    if ((v10 & 0xA0013) != 0)
    {
      if ((v11 & 0x20000) != 0)
      {
        return 22;
      }

      else
      {
        return 4294936514;
      }
    }

    v13 = 152;
    v14 = 57;
    v15 = 19;
  }

  else
  {
    if ((a3 & 0x20000) == 0)
    {
      v12 = *(a1 + 104);
      goto LABEL_28;
    }

    v15 = 17;
    v14 = 49;
    v13 = 136;
  }

  v16 = v13 + *(a1 + 36) * v14;
  v17 = malloc_type_calloc(1uLL, v16, 0xF0727416uLL);
  if (!v17)
  {
    return 12;
  }

  v12 = v17;
  v17[10] = *(a1 + 136);
  v17[11] = &v17[v15];
  v18 = *(a1 + 36);
  v17[14] = v17 + v16 - v18;
  *(v17 + 31) = v10;
  v17[4] = a1;
  if (a2)
  {
    v17[12] = *(a2 + 96);
    v17[13] = &v17[6 * v18 + v15];
    v19 = malloc_type_malloc(0x200000uLL, 0x108004057E67DB5uLL);
    *(v12 + 72) = v19;
    if (v19)
    {
      v20 = mdb_midl_alloc(0x1FFFF);
      *(v12 + 40) = v20;
      v19 = *(v12 + 72);
      if (v20)
      {
        *(v12 + 128) = *(a2 + 128);
        *v19 = 0;
        *(v12 + 64) = 0;
        v21 = *(a2 + 24);
        *(v12 + 16) = *(a2 + 16);
        *(v12 + 24) = v21;
        v22 = *(a2 + 120);
        *(a2 + 124) |= 0x10u;
        *(a2 + 8) = v12;
        *v12 = a2;
        *(v12 + 120) = v22;
        memcpy(*(v12 + 88), *(a2 + 88), 48 * v22);
        if (*(v12 + 120))
        {
          v23 = 0;
          do
          {
            *(*(v12 + 112) + v23) = *(*(a2 + 112) + v23) & 0xFB;
            ++v23;
          }

          while (v23 < *(v12 + 120));
        }

        *(v12 + 136) = *(a1 + 176);
        v24 = *(a1 + 176);
        if (v24)
        {
          v25 = *v24;
          v26 = mdb_midl_alloc(*v24);
          *(a1 + 176) = v26;
          if (!v26)
          {
            v5 = 12;
LABEL_31:
            mdb_txn_end(v12, 6);
            goto LABEL_32;
          }

          memcpy(v26, *(v12 + 136), 8 * v25 + 8);
        }

        v5 = mdb_cursor_shadow(a2, v12);
        if (!v5)
        {
          goto LABEL_29;
        }

        goto LABEL_31;
      }
    }

    free(v19);
    free(v12);
    return 12;
  }

  v17[12] = *(a1 + 152);
LABEL_28:
  v5 = mdb_txn_renew0(v12);
  if (!v5)
  {
LABEL_29:
    v5 = 0;
    *(v12 + 124) |= v10;
    *a4 = v12;
    return v5;
  }

LABEL_32:
  if (v12 != *(a1 + 104))
  {
    free(v12);
  }

  return v5;
}

uint64_t mdb_cursor_shadow(uint64_t a1, void *a2)
{
  v2 = *(a1 + 120);
  if (v2 < 1)
  {
    return 0;
  }

  while (1)
  {
    v5 = v2 - 1;
    v6 = *(*(a1 + 104) + 8 * (v2 - 1));
    if (v6)
    {
      break;
    }

LABEL_10:
    if (v2-- <= 1)
    {
      return 0;
    }
  }

  if (v6[2])
  {
    v7 = 888;
  }

  else
  {
    v7 = 392;
  }

  while (1)
  {
    v8 = malloc_type_malloc(v7, 0xE979B0FDuLL);
    if (!v8)
    {
      return 12;
    }

    v9 = v8;
    memcpy(v8, v6, 0x188uLL);
    v6[1] = v9;
    v6[5] = a2[11] + 48 * v5;
    v6[3] = a2;
    v6[7] = a2[14] + v5;
    v10 = v6[2];
    if (v10)
    {
      memcpy(v9 + 49, v6[2], 0x1F0uLL);
      *(v10 + 24) = a2;
    }

    v11 = a2[13];
    *v6 = *(v11 + 8 * v5);
    *(v11 + 8 * v5) = v6;
    v6 = *v9;
    if (!*v9)
    {
      goto LABEL_10;
    }
  }
}

void mdb_txn_end(unsigned int *a1, int a2)
{
  v4 = *(a1 + 4);
  v5 = a1[30];
  if (v5 >= 3)
  {
    v6 = 48 * v5;
    v7 = *(a1 + 14) - 1;
    v8 = a1[30];
    do
    {
      if ((*(v7 + v8) & 4) != 0)
      {
        if ((a2 & 0x10) != 0)
        {
          *(*(v4 + 144) + 2 * v8 - 2) = *(*(a1 + 11) + v6 - 44) | 0x8000;
        }

        else
        {
          v9 = *(v4 + 136) + v6;
          v10 = *(v9 - 40);
          if (v10)
          {
            *(v9 - 48) = 0;
            *(v9 - 40) = 0;
            v11 = *(v4 + 152);
            *(*(v4 + 144) + 2 * v8 - 2) = 0;
            ++*(v11 + 4 * v8 - 4);
            free(v10);
          }
        }
      }

      --v8;
      v6 -= 48;
    }

    while ((v8 + 1) > 3);
  }

  if ((a2 & 0x10) != 0 && *(v4 + 32) < v5)
  {
    *(v4 + 32) = v5;
  }

  v12 = a1[31];
  if ((v12 & 0x20000) != 0)
  {
    v21 = *(a1 + 9);
    if (v21)
    {
      *v21 = -1;
      if ((*(v4 + 14) & 0x20) == 0)
      {
LABEL_31:
        *(a1 + 9) = 0;
        goto LABEL_32;
      }

      if ((a2 & 0x200000) != 0)
      {
        *(*(a1 + 9) + 8) = 0;
        goto LABEL_31;
      }
    }

LABEL_32:
    v22 = a1[31] | 1;
    a1[30] = 0;
    a1[31] = v22;
LABEL_33:
    if ((a2 & 0x20) == 0)
    {
      return;
    }

    goto LABEL_39;
  }

  if (v12)
  {
    goto LABEL_33;
  }

  v14 = (v4 + 176);
  v13 = *(v4 + 176);
  if ((a2 & 0x10) == 0)
  {
    mdb_cursors_close(a1, 0);
  }

  if ((*(v4 + 14) & 8) == 0)
  {
    v15 = *(a1 + 9);
    v16 = *v15;
    if (*v15)
    {
      v17 = *(a1 + 4);
      v18 = 1;
      do
      {
        v19 = *&v15[4 * v18 + 2];
        if ((*(v19 + 5) & 4) != 0 && *(v19 + 3) != 1)
        {
          free(v19);
        }

        else
        {
          *v19 = *(v17 + 192);
          *(v17 + 192) = v19;
        }

        ++v18;
      }

      while (v18 <= v16);
    }

    *v15 = 0;
  }

  *(a1 + 15) = 0x100000000;
  v20 = *a1;
  if (*a1)
  {
    *(v20 + 8) = 0;
    *(v20 + 124) &= ~0x10u;
    *v14 = *(a1 + 34);
    mdb_midl_free(*(a1 + 5));
    free(*(a1 + 9));
  }

  else
  {
    mdb_midl_shrink(a1 + 5);
    *(v4 + 200) = *(a1 + 5);
    *(v4 + 96) = 0;
    *v14 = 0;
    *(v4 + 184) = 0;
    v23 = *(v4 + 64);
    if (v23)
    {
      pthread_mutex_unlock(v23 + 2);
    }

    LOBYTE(a2) = 0;
  }

  mdb_midl_free(*(a1 + 8));
  mdb_midl_free(v13);
  if ((a2 & 0x20) != 0)
  {
LABEL_39:

    free(a1);
  }
}

uint64_t mdb_txn_env(uint64_t result)
{
  if (result)
  {
    return *(result + 32);
  }

  return result;
}

uint64_t mdb_txn_id(uint64_t result)
{
  if (result)
  {
    return *(result + 24);
  }

  return result;
}

void mdb_txn_reset(uint64_t a1)
{
  if (a1)
  {
    if ((*(a1 + 126) & 2) != 0)
    {
      mdb_txn_end(a1, 3);
    }
  }
}

void mdb_txn_abort(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 8))
    {
      mdb_txn_abort();
    }

    mdb_txn_end(a1, 2097186);
  }
}

uint64_t mdb_txn_commit(uint64_t a1)
{
  if (!a1)
  {
    return 22;
  }

  if (*(a1 + 8))
  {
    appended = mdb_txn_commit();
    if (appended)
    {
      goto LABEL_4;
    }
  }

  v4 = 2097201;
  v5 = *(a1 + 124);
  if ((v5 & 0x20000) != 0)
  {
    goto LABEL_54;
  }

  v6 = *a1;
  if ((v5 & 3) == 0)
  {
    if (v6)
    {
      appended = mdb_midl_append_list((v6 + 40), *(a1 + 40));
      if (!appended)
      {
        mdb_midl_free(*(a1 + 40));
        *(v6 + 16) = *(a1 + 16);
        *(v6 + 124) = *(a1 + 124);
        mdb_cursors_close(a1, 1);
        memcpy(*(v6 + 88), *(a1 + 88), 48 * *(a1 + 120));
        *(v6 + 120) = *(a1 + 120);
        **(v6 + 112) = **(a1 + 112);
        *(*(v6 + 112) + 1) = *(*(a1 + 112) + 1);
        if (*(a1 + 120) >= 3u)
        {
          v7 = 2;
          do
          {
            *(*(v6 + 112) + v7) = *(*(a1 + 112) + v7) | *(*(v6 + 112) + v7) & 4;
            ++v7;
          }

          while (v7 < *(a1 + 120));
        }

        v8 = *(v6 + 64);
        v10 = *(v6 + 72);
        v9 = (v6 + 64);
        v11 = *(a1 + 72);
        if (v8)
        {
          v12 = *v8;
          if (*v8)
          {
            *v8 = -1;
            v13 = *v11;
            if (*v11)
            {
              if (v13 + 1 > 2)
              {
                v14 = v13 + 1;
              }

              else
              {
                v14 = 2;
              }

              v15 = 1;
              v16 = v12;
              v17 = v12;
              do
              {
                v18 = 2 * *&v11[4 * v15];
                do
                {
                  v19 = v17;
                  v20 = *&v8[2 * v17--];
                }

                while (v18 > v20);
                if (v18 == v20)
                {
                  *&v8[2 * v19] = 1;
                  v16 = v17;
                }

                else
                {
                  ++v17;
                }

                ++v15;
              }

              while (v15 != v14);
            }

            else
            {
              v16 = v12;
            }

            for (i = v16 + 1; i <= v12; ++i)
            {
              v29 = *&v8[2 * i];
              if ((v29 & 1) == 0)
              {
                *&v8[2 * ++v16] = v29;
              }
            }

            *v8 = v16;
          }
        }

        v30 = *(a1 + 64);
        if (v30 && *v30)
        {
          v31 = 1;
          do
          {
            v32 = v30[v31];
            if ((v32 & 1) == 0)
            {
              v33 = v32 >> 1;
              v34 = mdb_mid2l_search(v10, v32 >> 1);
              if (*v10 >= v34)
              {
                v35 = v34;
                v36 = &v10[4 * v34];
                if (*v36 == v33)
                {
                  free(*(v36 + 1));
                  v37 = *v10;
                  if (*v10 > v35)
                  {
                    v38 = v35 + 1;
                    do
                    {
                      *&v10[4 * v35] = *&v10[4 * v38];
                      v35 = v38;
                      v37 = *v10;
                    }

                    while (*v10 > v38++);
                  }

                  *v10 = v37 - 1;
                }
              }
            }

            v31 = (v31 + 1);
            v30 = *(a1 + 64);
          }

          while (*v30 >= v31);
        }

        v40 = *v10;
        *v10 = 0;
        if (*v6)
        {
          v41 = *v11 + v40;
          v42 = mdb_mid2l_search(v11, *&v10[4 * v40] + 1);
          v43 = v42 - 1;
          if (v42 != 1 && v40 != 0)
          {
            v45 = v40;
            do
            {
              v46 = *&v11[4 * v43];
              v47 = v45 + 1;
              do
              {
                v48 = *&v10[4 * --v47];
              }

              while (v46 < v48);
              v49 = v46 == v48;
              v41 -= v49;
              if (!--v43)
              {
                break;
              }

              v45 = v47 - v49;
            }

            while (v45);
          }
        }

        else
        {
          v41 = 0x1FFFF - *(a1 + 128);
        }

        v50 = *v11;
        if (*v11)
        {
          v51 = v41;
          do
          {
            v52 = &v11[4 * v50];
            v53 = *v52;
            v54 = &v10[4 * v40];
            v55 = *v54;
            if (*v52 >= *v54)
            {
              v56 = v40;
            }

            else
            {
              do
              {
                *&v10[4 * v51--] = *v54;
                v40 = (v40 - 1);
                v54 = &v10[4 * v40];
                v55 = *v54;
              }

              while (v53 < *v54);
              v56 = v40;
            }

            if (v53 == v55)
            {
              LODWORD(v40) = v40 - 1;
              free(*&v10[4 * v56 + 2]);
            }

            *&v10[4 * v51--] = *v52;
            --v50;
          }

          while (v50);
        }

        *v10 = v41;
        free(*(a1 + 72));
        *(v6 + 128) = *(a1 + 128);
        v57 = *(a1 + 64);
        if (v57)
        {
          if (*v9)
          {
            v3 = mdb_midl_append_list((v6 + 64), v57);
            if (v3)
            {
              *(v6 + 124) |= 2u;
            }

            mdb_midl_free(*(a1 + 64));
            mdb_midl_sort(*v9);
          }

          else
          {
            v3 = 0;
            *v9 = v57;
          }
        }

        else
        {
          v3 = 0;
        }

        v58 = v6;
        do
        {
          v59 = v58;
          v58 = *(v58 + 48);
        }

        while (v58);
        *(v59 + 48) = *(a1 + 48);
        *(v6 + 56) += *(a1 + 56);
        *(v6 + 8) = 0;
        mdb_midl_free(*(a1 + 136));
        free(a1);
        return v3;
      }

LABEL_4:
      v3 = appended;
      goto LABEL_10;
    }

    v21 = *(a1 + 32);
    if (*(v21 + 96) != a1)
    {
      v3 = 22;
      goto LABEL_10;
    }

    mdb_cursors_close(a1, 0);
    if (**(a1 + 72) || (*(a1 + 124) & 0xC) != 0)
    {
      if (*(a1 + 120) >= 3u)
      {
        v62 = 0;
        memset(v61, 0, sizeof(v61));
        v60 = xmmword_185DE4900;
        mdb_cursor_init(v61, a1, 1u, 0);
        v22 = *(a1 + 120);
        if (v22 >= 3)
        {
          v23 = 2;
          v24 = 96;
          do
          {
            if (*(*(a1 + 112) + v23))
            {
              if (*(*(a1 + 96) + 4 * v23) != *(*(*(a1 + 32) + 152) + 4 * v23))
              {
                v3 = 4294936516;
                goto LABEL_10;
              }

              v25 = *(a1 + 80);
              *(&v60 + 1) = *(a1 + 88) + v24;
              appended = mdb_cursor_put(v61, (v25 + v24), &v60, 2);
              if (appended)
              {
                goto LABEL_4;
              }

              v22 = *(a1 + 120);
            }

            ++v23;
            v24 += 48;
          }

          while (v23 < v22);
        }
      }

      appended = mdb_freelist_save(a1);
      if (appended)
      {
        goto LABEL_4;
      }

      mdb_midl_free(*(v21 + 176));
      *(v21 + 176) = 0;
      mdb_midl_shrink((a1 + 40));
      appended = mdb_page_flush(a1, 0);
      if (appended)
      {
        goto LABEL_4;
      }

      if ((*(a1 + 126) & 1) == 0)
      {
        appended = mdb_env_sync0(v21, 0, *(a1 + 16));
        if (appended)
        {
          goto LABEL_4;
        }
      }

      appended = mdb_env_write_meta(a1);
      if (appended)
      {
        goto LABEL_4;
      }

      v26 = *(v21 + 12);
      if ((v26 & 0x2000000) != 0)
      {
        if ((v26 & 0x400000) == 0)
        {
          appended = mdb_env_share_locks(v21, v61);
          if (appended)
          {
            goto LABEL_4;
          }

          v26 = *(v21 + 12);
        }

        *(v21 + 12) = v26 ^ 0x2000000;
      }

      v4 = 16;
    }

LABEL_54:
    mdb_txn_end(a1, v4);
    return 0;
  }

  if (v6)
  {
    *(v6 + 124) |= 2u;
  }

  v3 = 4294936514;
LABEL_10:
  mdb_txn_abort(a1);
  return v3;
}

void mdb_cursors_close(uint64_t a1, int a2)
{
  v2 = *(a1 + 120);
  if (v2 >= 1)
  {
    v4 = *(a1 + 104);
    do
    {
      v5 = *(v4 + 8 * (v2 - 1));
      while (v5)
      {
        v6 = v5;
        v5 = *v5;
        v7 = v6[1];
        if (v7)
        {
          if (a2)
          {
            *v6 = *v7;
            v8 = v7[3];
            v6[3] = v8;
            v6[5] = v7[5];
            v6[7] = v7[7];
            v9 = v6[2];
            if (v9)
            {
              *(v9 + 24) = v8;
            }
          }

          else
          {
            memcpy(v6, v6[1], 0x188uLL);
            v10 = v6[2];
            if (v10)
            {
              memcpy(v10, v7 + 49, 0x1F0uLL);
            }
          }
        }

        else
        {
          v7 = v6;
        }

        free(v7);
      }

      *(v4 + 8 * (v2 - 1)) = 0;
    }

    while (v2-- > 1);
  }
}

uint64_t mdb_cursor_init(uint64_t result, uint64_t a2, unsigned int a3, uint64_t a4)
{
  *result = 0;
  *(result + 8) = 0;
  *(result + 32) = a3;
  *(result + 24) = a2;
  v4 = *(a2 + 80) + 48 * a3;
  *(result + 40) = *(a2 + 88) + 48 * a3;
  *(result + 48) = v4;
  v5 = (*(a2 + 112) + a3);
  *(result + 56) = v5;
  *(result + 64) = 0;
  *(result + 72) = 0;
  *(result + 328) = 0;
  v6 = *(a2 + 124) & 0xA0000;
  *(result + 68) = v6;
  if ((*(*(a2 + 88) + 48 * a3 + 4) & 4) != 0)
  {
    *(result + 16) = a4;
    *(a4 + 16) = 0;
    *(a4 + 24) = a2;
    *(a4 + 40) = a4 + 392;
    *(a4 + 48) = a4 + 440;
    *(a4 + 32) = a3;
    *(a4 + 56) = a4 + 488;
    *(a4 + 64) = 0;
    *(a4 + 68) = v6 | 4;
    *(a4 + 440) = 0;
    *(a4 + 448) = 0;
    v7 = *(result + 48);
    v5 = *(result + 56);
    v9 = *(v7 + 24);
    v8 = *(v7 + 32);
    *(a4 + 456) = v9;
    *(a4 + 464) = 0;
    *(a4 + 472) = v8;
  }

  else
  {
    *(result + 16) = 0;
  }

  if ((*v5 & 2) != 0)
  {
    return mdb_page_search();
  }

  return result;
}

uint64_t mdb_cursor_put(uint64_t a1, size_t *a2, uint64_t a3, int a4)
{
  v124 = 0;
  result = 22;
  if (!a1 || !a2)
  {
    return result;
  }

  v122 = 0;
  v123 = 0;
  v120 = 0;
  v121 = 0;
  v118 = 0;
  v119 = 0;
  v117 = 0u;
  memset(v116, 0, sizeof(v116));
  v9 = *(a1 + 24);
  v10 = *(v9 + 32);
  if ((a4 & 0x80000) != 0)
  {
    v11 = *(a3 + 16);
    *(a3 + 16) = 0;
    if ((*(*(a1 + 40) + 4) & 0x10) == 0)
    {
      return 4294936512;
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = *(v9 + 124);
  if ((v12 & 0x20013) != 0)
  {
    if ((v12 & 0x20000) != 0)
    {
      return 13;
    }

    else
    {
      return 4294936514;
    }
  }

  if (*a2 - 512 < 0xFFFFFFFFFFFFFE01)
  {
    return 4294936515;
  }

  v13 = *(a1 + 40);
  v14 = 511;
  if ((*(v13 + 4) & 4) == 0)
  {
    v14 = 0xFFFFFFFFLL;
  }

  if (*a3 > v14)
  {
    return 4294936515;
  }

  v120 = 0;
  if ((a4 & 0x40) != 0)
  {
    v17 = *(a1 + 68);
    if ((v17 & 1) == 0)
    {
      return result;
    }

    LODWORD(v16) = 0;
  }

  else if (*(v13 + 40) == -1)
  {
    v17 = *(a1 + 68) & 0xFFFFFFFE;
    *(a1 + 64) = 0;
    *(a1 + 68) = v17;
    LODWORD(v16) = -30769;
  }

  else
  {
    v115 = 0;
    v114 = 0uLL;
    if ((a4 & 0x20000) != 0)
    {
      v113[0] = 0;
      v113[1] = 0;
      v16 = mdb_cursor_last(a1, v113, &v114);
      if (!v16)
      {
        if ((*(*(a1 + 48) + 16))(a2, v113) < 1)
        {
          v16 = 4294936497;
        }

        else
        {
          v18 = a1 + 2 * *(a1 + 66);
          ++*(v18 + 328);
          v16 = 4294936498;
        }
      }
    }

    else
    {
      v15 = mdb_cursor_set(a1, a2, &v114, 15, &v115);
      v16 = v15;
      if ((a4 & 0x10) != 0 && !v15)
      {
        *a3 = v114;
        return 4294936497;
      }
    }

    if (v16 != -30798 && v16)
    {
      return v16;
    }

    v17 = *(a1 + 68);
  }

  if ((v17 & 8) != 0)
  {
    *(a1 + 68) = v17 & 0xFFFFFFF7;
  }

  if ((a4 & 0x8000) == 0)
  {
    v19 = a3;
    if ((a4 & 0x80000) != 0)
    {
      v122 = *a3 * v11;
      v19 = &v122;
    }

    result = mdb_page_spill(a1, a2, v19);
    if (result)
    {
      return result;
    }
  }

  v20 = a4 & 0xFFFF7FFF;
  if (v16 == -30769)
  {
    *&v114 = 0;
    result = mdb_page_new(a1, 2, 1, &v114);
    if (result)
    {
      return result;
    }

    v21 = v114;
    v22 = *(a1 + 64);
    if (v22 < 0x20)
    {
      *(a1 + 64) = v22 + 1;
      *(a1 + 66) = v22;
      *(a1 + 8 * v22 + 72) = v21;
      *(a1 + 2 * v22 + 328) = 0;
    }

    else
    {
      *(*(a1 + 24) + 124) |= 2u;
    }

    v24 = *(a1 + 40);
    *(v24 + 40) = *v21;
    ++*(v24 + 6);
    **(a1 + 56) |= 1u;
    v23 = *(*(a1 + 40) + 4);
    if ((v23 & 0x14) == 0x10)
    {
      *(v21 + 10) |= 0x20u;
    }

    *(a1 + 68) |= 1u;
LABEL_51:
    if ((v23 & 4) != 0 && *a2 + *a3 + 8 > *(v10 + 220))
    {
      v108 = 0;
      v25 = *(v10 + 88);
      *(v25 + 4) = *a3;
      *(v25 + 3) = 1048592;
      v118 = 16;
      v26 = 18;
      goto LABEL_113;
    }

    v107 = 0;
    v108 = 0;
    v27 = 0;
    goto LABEL_105;
  }

  result = mdb_cursor_touch(a1);
  if (result)
  {
    return result;
  }

  if (v16)
  {
    v23 = *(*(a1 + 40) + 4);
    goto LABEL_51;
  }

  v28 = *(a1 + 66);
  v29 = *(a1 + 8 * v28 + 72);
  v30 = *(a1 + 40);
  if ((*(v29 + 10) & 0x20) != 0)
  {
    v31 = *v30;
    v32 = *a2;
    if (*a2 == v31)
    {
      v33 = a2[1];
      v34 = (v29 + v31 * *(a1 + 2 * v28 + 328) + 16);
LABEL_59:
      memcpy(v34, v33, v32);
      v35 = *(a1 + 66);
      if (*(a1 + 66))
      {
        v36 = a1 + 328;
        if (!*(a1 + 328 + 2 * v35))
        {
          v37 = v35 - 1;
          *(a1 + 66) = v35 - 1;
          if (v35 == 1)
          {
            v37 = 0;
            LOWORD(v35) = 1;
          }

          else
          {
            v38 = 1;
            while (!*(v36 + 2 * v37))
            {
              *(a1 + 66) = --v37;
              ++v38;
              if (!v37)
              {
                v37 = 0;
                goto LABEL_68;
              }
            }

            LOWORD(v35) = v38;
          }

LABEL_68:
          if (*(v36 + 2 * v37))
          {
            result = mdb_update_key(a1, a2);
            *(a1 + 66) += v35;
            if (result)
            {
              return result;
            }
          }

          else
          {
            *(a1 + 66) = v37 + v35;
          }
        }
      }

      return 0;
    }

    return 4294936515;
  }

  v111 = a4 & 0xFFFF7FFF;
  v107 = 0;
  v108 = 0;
  v27 = 0;
  while (1)
  {
    v39 = *(a1 + 8 * v28 + 72);
    v40 = (v39 + *(v39 + *(a1 + 2 * v28 + 328) + 8));
    v118 = *v40;
    v119 = v40 + *(v40 + 3) + 8;
    if ((v30[1] & 4) != 0)
    {
      v41 = *(v10 + 88);
      v123 = v41;
      v124 = v41;
      *v41 = *v39;
      v42 = *(v40 + 2);
      if ((v42 & 4) != 0)
      {
        v105 = v27;
        if ((v42 & 2) != 0)
        {
          v106 = 0;
          v20 = v111 | 6;
          goto LABEL_163;
        }

        v25 = v119;
        if (v111 == 64)
        {
LABEL_85:
          v106 = 0;
          *(v119 + 5) |= 0x10u;
          *v25 = *v41;
          *(v25 + 1) = *(v41 + 1);
          *(v25 + 2) = *(v41 + 2);
          *(v25 + 3) = *(v41 + 3);
          *(*(a1 + 16) + 72) = v25;
          v20 = v111 | 4;
          goto LABEL_163;
        }

        if ((*(*(a1 + 40) + 4) & 0x10) != 0)
        {
          v63 = *(v119 + 4);
          if (v63 <= (*(v119 + 7) - *(v119 + 6)))
          {
            goto LABEL_85;
          }

          v49 = 4 * v63;
        }

        else
        {
          v49 = (*a3 + 11) & 0xFFFFFFFE;
        }

        v61 = v118;
        v62 = v118 + v49;
        v122 = v62;
        v26 = *(v119 + 5);
        goto LABEL_111;
      }

      if (v111 != 64)
      {
        v43 = *(*(a1 + 48) + 24);
        if (v118 == 8 && v43 == mdb_cmp_int)
        {
          v43 = mdb_cmp_cint;
        }

        if (v43(a3, &v118))
        {
          v45 = v118;
          v120 = v118;
          memcpy(v41 + 24, v119, v118);
          v121 = v41 + 24;
          *(v41 + 5) = 82;
          *(v41 + 6) = 16;
          v46 = *a3;
          v47 = v45 + *a3 + 16;
          if ((*(*(a1 + 40) + 4) & 0x10) != 0)
          {
            v26 = 114;
            *(v41 + 5) = 114;
            *(v41 + 4) = v46;
            v48 = 2 * v46;
          }

          else
          {
            v48 = ((*a3 & 1) + (v45 & 1)) | 0x14;
            v26 = 82;
          }

          LOWORD(v49) = 0;
          v61 = v48 + v47;
          v122 = v61;
          *(v41 + 7) = v61;
          v118 = v61;
          v62 = v61;
          v25 = v41;
LABEL_111:
          if (*(v40 + 3) + v62 + 8 <= *(v10 + 220))
          {
            LODWORD(v16) = 0;
          }

          else
          {
            LODWORD(v16) = 0;
            v26 &= ~0x40u;
            v20 = v111;
LABEL_113:
            v64 = *(a1 + 40);
            if ((*(v64 + 4) & 0x10) != 0)
            {
              v26 |= 0x20u;
              LODWORD(v116[0]) = *(v25 + 4);
              WORD2(v116[0]) = 16;
              if ((*(v64 + 4) & 0x20) != 0)
              {
                v65 = 24;
              }

              else
              {
                v65 = 16;
              }

              WORD2(v116[0]) = v65;
            }

            else
            {
              LODWORD(v116[0]) = 0;
              WORD2(v116[0]) = 0;
            }

            WORD3(v116[0]) = 1;
            *(v116 + 8) = xmmword_185DB7AF0;
            *(&v116[1] + 1) = 0;
            *&v117 = (*(v25 + 6) - 16) >> 1;
            v122 = 48;
            v123 = v116;
            result = mdb_page_alloc(a1, 1, &v124);
            if (result)
            {
              return result;
            }

            v61 = v118;
            v49 = *(v10 + 16) - v118;
            v111 = v20 | 6;
            v41 = v124;
            *(&v117 + 1) = *v124;
            v107 = v124;
          }

          if (v41 != v25)
          {
            *(v41 + 5) = v26 | 0x10;
            *(v41 + 4) = *(v25 + 4);
            *(v41 + 6) = *(v25 + 6);
            v66 = *(v25 + 7) + v49;
            *(v41 + 7) = v66;
            if ((v26 & 0x20) != 0)
            {
              memcpy(v41 + 16, v25 + 16, ((*(v25 + 6) - 16) >> 1) * *(v25 + 4));
            }

            else
            {
              memcpy(&v41[v66], &v25[*(v25 + 7)], v61 - *(v25 + 7));
              memcpy(v41 + 16, v25 + 16, (*(v25 + 6) - 16) & 0xFFFFFFFE);
              if ((*(v25 + 6) & 0xFFFE) != 0x10)
              {
                v67 = 0;
                do
                {
                  *&v41[2 * v67++ + 16] += v49;
                }

                while (v67 < (*(v25 + 6) - 16) >> 1);
              }
            }
          }

          v20 = v111 | 4;
          v60 = &v122;
          v27 = 1;
          if (!v16)
          {
            mdb_node_del(a1, 0);
            v60 = &v122;
          }

          goto LABEL_130;
        }

        if ((v111 & 0x40020) != 0)
        {
          return 4294936497;
        }
      }
    }

    v50 = *(v40 + 2);
    v20 = v111;
    if (((v111 ^ v50) & 2) != 0)
    {
      return 4294936512;
    }

    if ((v50 & 1) == 0)
    {
      v51 = *a3;
      if (*a3 == v118)
      {
        if ((v111 & 0x10000) != 0)
        {
          result = 0;
          v103 = v119;
LABEL_217:
          *(a3 + 8) = v103;
          return result;
        }

        if ((*(a1 + 68) & 4) == 0)
        {
          v52 = v119;
          v53 = *(a3 + 8);
LABEL_219:
          memcpy(v52, v53, v51);
          return 0;
        }

        v32 = *a2;
        v33 = a2[1];
        v34 = v40 + 2;
        goto LABEL_59;
      }

      goto LABEL_104;
    }

    v54 = v27;
    v113[0] = 0;
    v115 = 0;
    v55 = *a3;
    v56 = *(v10 + 16);
    v109 = *v119;
    result = mdb_page_get(a1, *v119, v113, &v115);
    if (result)
    {
      return result;
    }

    v57 = (v55 + 15) / v56 + 1;
    v58 = v113[0];
    v59 = *(v113[0] + 3);
    if (v59 >= v57)
    {
      if ((*(v113[0] + 5) & 0x10) != 0)
      {
        break;
      }

      if (v115 || (*(v10 + 14) & 8) != 0)
      {
        result = mdb_page_unspill(*(a1 + 24), v113[0], v113);
        if (result)
        {
          return result;
        }

        v115 = 0;
        v58 = v113[0];
        if ((*(v113[0] + 5) & 0x10) != 0)
        {
          break;
        }
      }
    }

    result = mdb_ovpage_free(a1, v58);
    v27 = v54;
    if (result)
    {
      return result;
    }

LABEL_104:
    mdb_node_del(a1, 0);
    LODWORD(v16) = 0;
LABEL_105:
    v60 = a3;
LABEL_130:
    v68 = *(a1 + 66);
    v69 = *(a1 + 72 + 8 * v68);
    v70 = *a2;
    if ((v69[5] & 0x20) == 0)
    {
      v71 = v70 + *v60 + 8;
      v72 = v70 + 16;
      if (v71 <= *(v10 + 220))
      {
        v72 = v71;
      }

      v70 = (v72 + 3) & 0xFFFFFFFFFFFFFFFELL;
    }

    if (v70 <= (v69[7] - v69[6]))
    {
      result = mdb_node_add(a1, *(a1 + 328 + 2 * v68), a2, v60, 0, v20 & 0x30006);
      if (result)
      {
        goto LABEL_207;
      }

      v75 = *(*(*(a1 + 24) + 104) + 8 * *(a1 + 32));
      if (v75)
      {
        v76 = *(a1 + 66);
        v77 = *(a1 + 72 + 8 * v76);
        v78 = *(a1 + 68);
        do
        {
          v79 = v75;
          if ((v78 & 4) != 0)
          {
            v79 = v75[2];
          }

          if (v79 != a1 && *(v79 + 32) >= *(a1 + 64) && v79[v76 + 9] == v77)
          {
            v80 = *(v79 + v76 + 164);
            if (v16 && v80 >= *(a1 + 328 + 2 * v76))
            {
              LOWORD(v80) = v80 + 1;
              *(v79 + v76 + 164) = v80;
            }

            v81 = v79[2];
            if (v81)
            {
              if ((*(v81 + 68) & 1) != 0 && (*(v77 + 12) - 16) >> 1 > v80)
              {
                v82 = v77 + *(v77 + 16 + 2 * v80);
                if ((*(v82 + 4) & 6) == 4)
                {
                  *(v81 + 72) = v82 + *(v82 + 6) + 8;
                }
              }
            }
          }

          v75 = *v75;
        }

        while (v75);
      }
    }

    else
    {
      if ((v20 & 6) == 4)
      {
        v73 = v20 & 0x10004;
      }

      else
      {
        v73 = v20 & 0x30006;
      }

      if (v16)
      {
        v74 = v73;
      }

      else
      {
        v74 = v73 | 0x40000;
      }

      result = mdb_page_split(a1, a2, v60, 0xFFFFFFFFFFFFFFFFLL, v74);
      if (result)
      {
        goto LABEL_207;
      }
    }

    if (!v27)
    {
      result = 0;
      v96 = v16;
      goto LABEL_194;
    }

    v105 = 1;
    v106 = v16;
LABEL_163:
    v122 = 0;
    v123 = "";
    v110 = *(a1 + 72 + 8 * *(a1 + 66)) + *(*(a1 + 72 + 8 * *(a1 + 66)) + 2 * *(a1 + 328 + 2 * *(a1 + 66)) + 16);
    v83 = 32832;
    if ((v20 & 0x40040) != 0x40)
    {
      mdb_xcursor_init1(a1, v110);
      if ((v20 & 0x20) != 0)
      {
        v83 = 32784;
      }

      else
      {
        v83 = 0x8000;
      }
    }

    v112 = v20;
    if (v107)
    {
      *(*(a1 + 16) + 72) = v107;
    }

    v104 = v120;
    if (v120)
    {
      LODWORD(result) = mdb_cursor_put(*(a1 + 16), &v120, &v122, v83);
      if (result)
      {
        goto LABEL_204;
      }

      v120 = 0;
    }

    if (v107 || (*(v110 + 4) & 2) == 0)
    {
      v84 = *(*(*(a1 + 24) + 104) + 8 * *(a1 + 32));
      if (v84)
      {
        v85 = *(a1 + 16);
        v86 = *(a1 + 66);
        v87 = *(a1 + 72 + 8 * v86);
        do
        {
          if (v84 != a1 && *(v84 + 64) >= *(a1 + 64) && (*(v84 + 68) & 1) != 0 && *(v84 + 8 * v86 + 72) == v87)
          {
            v88 = *(v84 + 2 * v86 + 328);
            if (v88 == *(a1 + 328 + 2 * v86))
            {
              mdb_xcursor_init2(v84, v85, v104);
            }

            else if (!v106)
            {
              v89 = *(v84 + 16);
              if (v89)
              {
                if ((*(v89 + 68) & 1) != 0 && v88 < (*(v87 + 12) - 16) >> 1)
                {
                  v90 = v87 + *(v87 + 16 + 2 * *(v84 + 2 * v86 + 328));
                  if ((*(v90 + 4) & 6) == 4)
                  {
                    *(v89 + 72) = v90 + *(v90 + 6) + 8;
                  }
                }
              }
            }
          }

          v84 = *v84;
        }

        while (v84);
      }
    }

    v91 = *(a1 + 16);
    v92 = *(v91 + 424);
    v20 = v112;
    result = mdb_cursor_put(v91, a3, &v122, v83 | (v112 >> 1) & 0x20000);
    if ((v112 & 2) != 0)
    {
      v93 = v110 + *(v110 + 6);
      v95 = *(*(a1 + 16) + 408);
      v94 = *(*(a1 + 16) + 424);
      *(v93 + 8) = *(*(a1 + 16) + 392);
      *(v93 + 24) = v95;
      *(v93 + 40) = v94;
    }

    v96 = *(*(a1 + 16) + 424) - v92;
    v27 = v105;
    LODWORD(v16) = v106;
LABEL_194:
    if (v96)
    {
      ++*(*(a1 + 40) + 32);
    }

    if (v16)
    {
      if (result)
      {
LABEL_204:
        if (result == -30799)
        {
          result = 4294936517;
        }

        else
        {
          result = result;
        }

LABEL_207:
        *(*(a1 + 24) + 124) |= 2u;
        return result;
      }

      *(a1 + 68) |= 1u;
    }

    if ((v20 & 0x80000) == 0 || result)
    {
      return result;
    }

    v97 = (v108 + 1);
    *(a3 + 16) = v97;
    if (v97 >= v11)
    {
      return 0;
    }

    ++v108;
    v111 = v20;
    *(a3 + 8) += *a3;
    v28 = *(a1 + 66);
    v30 = *(a1 + 40);
  }

  if (v115 <= 1)
  {
    v102 = v111 & 0x10000;
    v100 = v58;
    goto LABEL_215;
  }

  v98 = *(v10 + 16);
  v99 = mdb_page_malloc(*(a1 + 24), v59);
  if (v99)
  {
    v100 = v99;
    v101 = v98 * v59;
    *&v114 = v109;
    *(&v114 + 1) = v99;
    mdb_mid2l_insert(*(*(a1 + 24) + 72), &v114);
    v102 = v111 & 0x10000;
    if ((v111 & 0x10000) == 0)
    {
      memcpy(&v100[(*a3 & 0xFFFFFFFFFFFFFFF8) + 16], &v58[(*a3 & 0xFFFFFFFFFFFFFFF8) + 16], v101 - ((*a3 & 0xFFFFFFFFFFFFFFF8) + 16));
      v101 = 16;
    }

    memcpy(v100, v58, v101);
LABEL_215:
    v51 = *a3;
    *v40 = *a3;
    v103 = v100 + 16;
    if (v102)
    {
      result = 0;
      goto LABEL_217;
    }

    v53 = *(a3 + 8);
    v52 = v100 + 16;
    goto LABEL_219;
  }

  return 12;
}

uint64_t mdb_freelist_save(uint64_t a1)
{
  v55 = 0;
  memset(v54, 0, sizeof(v54));
  v2 = *(a1 + 32);
  v3 = *(v2 + 216);
  v53 = 0;
  mdb_cursor_init(v54, a1, 0, 0);
  v4 = (v2 + 176);
  if (!*(v2 + 176))
  {
    goto LABEL_95;
  }

  result = mdb_page_search(v54, 0, 5);
  if (result && result != -30798)
  {
    return result;
  }

  if (!*v4)
  {
LABEL_95:
    v6 = *(a1 + 48);
    if (v6)
    {
      v7 = *(a1 + 72);
      result = mdb_midl_need((a1 + 40), *(a1 + 56));
      if (result)
      {
        return result;
      }

      do
      {
        v8 = *(a1 + 40);
        v9 = *v8 + 1;
        *v8 = v9;
        v10 = *v6;
        v8[v9] = *v6;
        if ((*(a1 + 126) & 8) != 0)
        {
          if (*v7)
          {
            v11 = 1;
            do
            {
              if (*(v7 + 16 * v11) == v10)
              {
                break;
              }

              v11 = (v11 + 1);
            }

            while (*v7 >= v11);
          }

          else
          {
            LODWORD(v11) = 1;
          }
        }

        else
        {
          LODWORD(v11) = mdb_mid2l_search(v7, v10);
          if ((*(v6 + 5) & 4) != 0 && *(v6 + 3) != 1)
          {
            free(v6);
          }

          else
          {
            *v6 = *(v2 + 192);
            *(v2 + 192) = v6;
          }
        }

        *(v7 + 16 * v11 + 8) = 0;
        v6 = v6[6];
      }

      while (v6);
      v12 = *v7;
      if (*(v7 + 24))
      {
        v13 = 1;
        while (v12 >= v13)
        {
          v13 = (v13 + 1);
          v14 = v13;
          if (!*(v7 + 16 * v13 + 8))
          {
            goto LABEL_27;
          }
        }

        v14 = v13;
      }

      else
      {
        v14 = 1;
        v13 = 1;
      }

LABEL_27:
      if (v12 >= v13)
      {
        LODWORD(v16) = v14;
        while (1)
        {
          do
          {
            v16 = (v16 + 1);
            v17 = v7 + 16 * v16;
            if (*(v17 + 8))
            {
              v18 = 0;
            }

            else
            {
              v18 = v12 >= v16;
            }
          }

          while (v18);
          if (v12 < v16)
          {
            break;
          }

          *(v7 + 16 * v14++) = *v17;
          v12 = *v7;
        }

        v15 = v14 - 1;
      }

      else
      {
        v15 = 0;
      }

      *v7 = v15;
      *(a1 + 48) = 0;
      *(a1 + 56) = 0;
    }
  }

  v19 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v23 = *(v2 + 12) & 0x1080000;
  v47 = 1;
  while (1)
  {
LABEL_39:
    v51 = 0;
    v52 = 0;
    v49 = 0;
    v50 = 0;
    if (v19 < *(v2 + 184))
    {
      while (1)
      {
        result = mdb_cursor_first(v54, &v51, 0);
        if (result)
        {
          return result;
        }

        v19 = *v52;
        v53 = *v52;
        result = mdb_cursor_del(v54, 0);
        if (result)
        {
          return result;
        }

        if (v19 >= *(v2 + 184))
        {
          v21 = 0;
          v22 = 0;
          break;
        }
      }
    }

    if (v20 < **(a1 + 40))
    {
      if (v20 || (result = mdb_page_search(v54, 0, 9), !result) || result == -30798)
      {
        v24 = *(a1 + 40);
        v51 = 8;
        v52 = (a1 + 24);
        v25 = *v24;
        while (1)
        {
          v20 = v25;
          v49 = 8 * v25 + 8;
          result = mdb_cursor_put(v54, &v51, &v49, 0x10000);
          if (result)
          {
            break;
          }

          v26 = *(a1 + 40);
          v25 = *v26;
          if (v20 >= *v26)
          {
            mdb_midl_sort(*(a1 + 40));
            memcpy(v50, v26, v49);
            goto LABEL_39;
          }
        }
      }

      return result;
    }

    v27 = *v4;
    v28 = v23;
    v29 = *v4 ? *v27 : 0;
    v30 = *(a1 + 56);
    v31 = v29 + v30;
    if (v22 >= v29 + v30)
    {
      break;
    }

    v32 = v53;
    if (v21 >= v3 && v53 >= 2)
    {
      v21 = 0;
      v32 = --v53;
    }

LABEL_64:
    v34 = v22 - v21;
    v35 = v31 - (v22 - v21);
    if (v35 > v3 && v32 >= 2)
    {
      v21 = v3 + (v35 / v32) / (v3 + 1) * (v3 + 1);
    }

    else
    {
      v21 = v35 & ~(v35 >> 63);
    }

    v23 = v28;
    v51 = 8;
    v52 = &v53;
    v49 = 8 * v21 + 8;
    result = mdb_cursor_put(v54, &v51, &v49, 0x10000);
    if (result)
    {
      return result;
    }

    if (v21 > v3 && v23 == 0)
    {
      v38 = v21;
    }

    else
    {
      v38 = 0;
    }

    bzero(&v50[v38 & (v38 >> 63)], 8 * (v38 - (v38 & (v38 >> 63))) + 8);
    v22 = v21 + v34;
  }

  if (v22 != v29 + v30 && v47 >= 1)
  {
    --v47;
    v32 = v53;
    goto LABEL_64;
  }

  v39 = *(a1 + 48);
  if (v39)
  {
    v40 = v30;
    result = mdb_midl_need((v2 + 176), (2 * v30) | 1);
    if (result)
    {
      return result;
    }

    v27 = *v4;
    v41 = &(*v4)[*(*v4 - 1) - v40];
    v42 = 1;
    do
    {
      v43 = v42;
      *&v41[2 * v42] = *v39;
      v39 = v39[6];
      ++v42;
    }

    while (v39);
    *v41 = v43;
    mdb_midl_sort(v41);
    mdb_midl_xmerge(v27, v41);
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    v31 = *v27;
  }

  if (!v31)
  {
    return 0;
  }

  v51 = 0;
  v52 = 0;
  v49 = 0;
  v50 = 0;
  result = mdb_cursor_first(v54, &v51, &v49);
  if (!result)
  {
    v44 = &v27[v31];
    do
    {
      v48 = *v52;
      v45 = (v49 >> 3) - 1;
      v52 = &v48;
      if (v45 > v31)
      {
        v49 = 8 * v31 + 8;
        v45 = v31;
      }

      v44 -= v45;
      v50 = v44;
      v46 = *v44;
      *v44 = v45;
      result = mdb_cursor_put(v54, &v51, &v49, 64);
      *v44 = v46;
      if (result)
      {
        break;
      }

      v31 -= v45;
      if (!v31)
      {
        break;
      }

      result = mdb_cursor_next(v54, &v51, &v49, 8);
    }

    while (!result);
  }

  return result;
}

uint64_t mdb_page_flush(uint64_t a1, int a2)
{
  v2 = a1;
  v46 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = *(a1 + 72);
  v5 = *v4;
  if ((*(v3 + 14) & 8) == 0)
  {
    v38 = *(a1 + 32);
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = *(v3 + 16);
    v13 = *v3;
    v42 = *(a1 + 72);
    v43 = v5;
    v39 = v5 + 1;
    v14 = 1;
    v40 = 1 - v5;
    v41 = *v4;
    v36 = a2;
    v15 = a2;
    while (1)
    {
      if (v15 >= v5)
      {
        v19 = 0;
        LODWORD(v20) = v15++;
      }

      else
      {
        v16 = v15 + 1;
        v17 = &v4[2 * v16];
        v8 = v17[1];
        v18 = *(v8 + 10);
        if (v18 >= 0x4000)
        {
          v16 = 0;
          while (1)
          {
            *(v8 + 10) = v18 & 0x7FFF;
            *v17 = 0;
            if (!(v40 + v15 + v16))
            {
              break;
            }

            v8 = v17[3];
            v18 = *(v8 + 10);
            v17 += 2;
            ++v16;
            if (v18 < 0x4000)
            {
              v21 = v15 + v16;
              v19 = v21 < v43;
              LODWORD(v20) = v15 + v16;
              LODWORD(v16) = v21 + 1;
              goto LABEL_11;
            }
          }

          v19 = v15 + v16 + 1 < v43;
          LODWORD(v20) = v15 + v16 + 1;
          v15 = v39;
        }

        else
        {
          v19 = 1;
          LODWORD(v20) = v15;
LABEL_11:
          v15 = v16;
          v22 = *v17;
          *(v8 + 10) = v18 & 0x3FEF;
          v7 = v22 * v12;
          if ((v18 & 4) != 0)
          {
            v6 = *(v8 + 12) * v12;
          }

          else
          {
            v6 = v12;
          }
        }
      }

      if (v7 != v14 || v11 == 64 || v6 + v9 >= 0x40000001)
      {
        if (v11)
        {
          v44 = v19;
          v23 = v12;
          while (1)
          {
            if (v11 == 1)
            {
              v24 = pwrite(v13, __buf[0].iov_base, v9, v10);
            }

            else
            {
              while (lseek(v13, v10, 0) == -1)
              {
                result = *__error();
                if (result != 4)
                {
                  goto LABEL_42;
                }
              }

              v24 = writev(v13, __buf, v11);
            }

            LODWORD(v5) = v41;
            v4 = v42;
            v12 = v23;
            v19 = v44;
            if (v24 == v9)
            {
              break;
            }

            if ((v24 & 0x8000000000000000) == 0)
            {
              result = 5;
              goto LABEL_42;
            }

            result = *__error();
            if (result != 4)
            {
              goto LABEL_42;
            }
          }
        }

        if (!v19)
        {
          if ((*(v38 + 14) & 8) != 0)
          {
            v27 = v36;
          }

          else
          {
            v27 = v36;
            if (v5 <= v36)
            {
              LODWORD(v20) = v36;
            }

            else
            {
              v32 = v4 + 2;
              v33 = v36;
              do
              {
                v20 = v33;
                v34 = &v32[2 * v33];
                while (1)
                {
                  v35 = v34[1];
                  if (!*v34)
                  {
                    break;
                  }

                  if ((*(v35 + 5) & 4) != 0 && *(v35 + 3) != 1)
                  {
                    free(v35);
                    LODWORD(v5) = v41;
                    v4 = v42;
                  }

                  else
                  {
                    *v35 = *(v38 + 192);
                    *(v38 + 192) = v35;
                  }

                  ++v20;
                  v34 += 2;
                  if (v20 >= v43)
                  {
                    goto LABEL_59;
                  }
                }

                v33 = v20 + 1;
                *&v4[2 * ++v27] = *v34;
                v4[2 * v27] = *v35;
              }

              while (v20 + 1 < v5);
              LODWORD(v20) = v20 + 1;
            }
          }

LABEL_59:
          v2 = a1;
          goto LABEL_41;
        }

        v9 = 0;
        v11 = 0;
        v10 = v7;
      }

      v26 = &__buf[v11];
      v26->iov_base = v8;
      v26->iov_len = v6;
      v14 = v7 + v6;
      v9 += v6;
      ++v11;
    }
  }

  if (v5 <= a2)
  {
    LODWORD(v20) = a2;
    v27 = a2;
  }

  else
  {
    v27 = a2;
    do
    {
      v20 = a2;
      v28 = &v4[2 * a2 + 3];
      while (1)
      {
        v29 = *v28;
        v30 = *(*v28 + 10);
        if (v30 >= 0x4000)
        {
          break;
        }

        ++v20;
        *(v29 + 10) = v30 & 0x3FEF;
        v28 += 16;
        if (v20 >= v5)
        {
          goto LABEL_41;
        }
      }

      a2 = v20 + 1;
      *(v29 + 10) = v30 & 0x7FFF;
      *&v4[2 * ++v27] = *(v28 - 8);
    }

    while (v20 + 1 < v5);
    LODWORD(v20) = v20 + 1;
  }

LABEL_41:
  result = 0;
  *(v2 + 128) += v20 - v27;
  *v4 = v27;
LABEL_42:
  v31 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t mdb_env_write_meta(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  v4 = *(v3 + 12) | *(a1 + 124);
  v5 = *(v3 + 72 + 8 * (v2 & 1));
  v6 = *(*(v3 + 72 + 8 * !(v2 & 1)) + 16);
  if (v6 <= *(v3 + 112))
  {
    v6 = *(v3 + 112);
  }

  if ((v4 & 0x80000) == 0)
  {
    v29 = *(v5 + 128);
    v7 = *(v5 + 120);
    v30 = v6;
    v8 = *(a1 + 88);
    v9 = *v8;
    v10 = v8[2];
    v32 = v8[1];
    v33 = v10;
    v31 = v9;
    v12 = v8[4];
    v11 = v8[5];
    v34 = v8[3];
    v35 = v12;
    v36 = v11;
    v37 = *(a1 + 16) - 1;
    v38 = v2;
    v13 = v5 - *(v3 + 56);
    v14 = *(v3 + 8 * ((v4 & 0x50000) == 0));
    while (1)
    {
      v15 = pwrite(v14, &v30, 0x78uLL, v13 + 16);
      if (v15 == 120)
      {
        goto LABEL_10;
      }

      if ((v15 & 0x80000000) == 0)
      {
        v16 = 5;
LABEL_19:
        v37 = v7;
        v38 = v29;
        pwrite(*v3, &v30, 0x78uLL, v13 + 16);
        goto LABEL_20;
      }

      v16 = *__error();
      if (v16 != 4)
      {
        goto LABEL_19;
      }
    }
  }

  *(v5 + 16) = v6;
  v17 = *(a1 + 88);
  v18 = *v17;
  v19 = v17[1];
  *(v5 + 56) = v17[2];
  *(v5 + 40) = v19;
  *(v5 + 24) = v18;
  v20 = *(a1 + 88);
  v21 = v20[3];
  v22 = v20[4];
  *(v5 + 104) = v20[5];
  *(v5 + 88) = v22;
  *(v5 + 72) = v21;
  v23 = *(a1 + 24);
  *(v5 + 120) = *(a1 + 16) - 1;
  *(v5 + 128) = v23;
  if ((v4 & 0x50000) != 0 || ((*(v3 + 12) & 0x100000) != 0 ? (v25 = 1) : (v25 = 16), v26 = v5 - 16, v27 = (*(v3 + 20) - 1) & (v26 - *(v3 + 56)), !msync((v26 - v27), (v27 + *(v3 + 16)), v25)))
  {
LABEL_10:
    v24 = *(v3 + 64);
    v16 = 0;
    if (v24)
    {
      *(v24 + 8) = *(a1 + 24);
    }

    return v16;
  }

  v16 = *__error();
LABEL_20:
  *(v3 + 12) |= 0x80000000;
  return v16;
}

uint64_t mdb_cmp_long(uint64_t a1, uint64_t a2)
{
  v2 = **(a1 + 8);
  v3 = **(a2 + 8);
  v4 = v2 >= v3;
  v5 = v2 > v3;
  if (v4)
  {
    return v5;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t mdb_get(uint64_t a1, unsigned int a2, void *a3, void *a4)
{
  v9 = 0;
  result = 22;
  if (a1)
  {
    if (a3)
    {
      if (a4)
      {
        if (*(a1 + 120) > a2)
        {
          v12 = 0;
          memset(v11, 0, sizeof(v11));
          memset(v10, 0, sizeof(v10));
          if ((*(*(a1 + 112) + a2) & 0x10) != 0)
          {
            if ((*(a1 + 124) & 0x13) != 0)
            {
              return 4294936514;
            }

            else
            {
              mdb_cursor_init(v11, a1, a2, v10);
              return mdb_cursor_set(v11, a3, a4, 15, &v9);
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t mdb_cursor_set(uint64_t a1, void *a2, void *a3, int a4, int *a5)
{
  if (!*a2)
  {
    return 4294936515;
  }

  v10 = *(a1 + 16);
  if (v10)
  {
    *(v10 + 68) &= 0xFFFFFFFC;
  }

  if ((*(a1 + 68) & 1) == 0)
  {
    *(a1 + 72) = 0;
LABEL_6:
    result = mdb_page_search(a1, a2, 0);
    if (result)
    {
      return result;
    }

    v12 = *(a1 + 8 * *(a1 + 66) + 72);
    goto LABEL_8;
  }

  v38 = 0uLL;
  v15 = *(a1 + 66);
  v12 = *(a1 + 8 * v15 + 72);
  if ((v12[6] & 0xFFFE) == 0x10)
  {
    *(a1 + 2 * v15 + 328) = 0;
    return 4294936498;
  }

  if ((v12[5] & 0x20) != 0)
  {
    v14 = 0;
    v16 = **(a1 + 40);
    v17 = v12 + 8;
  }

  else
  {
    v14 = v12 + v12[8];
    v16 = *(v14 + 6);
    v17 = (v14 + 8);
  }

  *&v38 = v16;
  *(&v38 + 1) = v17;
  v18 = (*(*(a1 + 48) + 16))(a2, &v38);
  if (!v18)
  {
    *(a1 + 2 * *(a1 + 66) + 328) = 0;
    goto LABEL_27;
  }

  if (v18 <= 0)
  {
    LODWORD(v24) = *(a1 + 66);
    goto LABEL_41;
  }

  v19 = v12[6] - 16;
  v20 = v19 >> 1;
  if (v19 < 4)
  {
LABEL_33:
    v26 = a1 + 328;
    v24 = *(a1 + 66);
    if (*(a1 + 66))
    {
      v27 = 0;
      while (((*(*(v26 + 8 * v27 - 256) + 12) - 16) >> 1) - 1 <= *(v26 + 2 * v27))
      {
        if (v24 == ++v27)
        {
          goto LABEL_40;
        }
      }
    }

    else
    {
      LODWORD(v27) = 0;
    }

    if (v27 == v24)
    {
LABEL_40:
      *(v26 + 2 * v24) = v20;
      return 4294936498;
    }

LABEL_41:
    if (!v24)
    {
      *(a1 + 328) = 0;
      if (a4 != 17 || a5)
      {
        return 4294936498;
      }

      goto LABEL_46;
    }

    goto LABEL_6;
  }

  v21 = v12 + 8;
  v22 = v20 - 1;
  if ((v12[5] & 0x20) != 0)
  {
    v23 = v21 + v38 * v22;
  }

  else
  {
    v14 = v12 + v21[v22];
    *&v38 = *(v14 + 6);
    v23 = v14 + 8;
  }

  *(&v38 + 1) = v23;
  v25 = (*(*(a1 + 48) + 16))(a2, &v38);
  if (!v25)
  {
    *(a1 + 2 * *(a1 + 66) + 328) = v20 - 1;
    goto LABEL_27;
  }

  if ((v25 & 0x80000000) == 0)
  {
    goto LABEL_33;
  }

  v36 = *(a1 + 2 * *(a1 + 66) + 328);
  if (v36 < (v12[6] - 16) >> 1)
  {
    if ((v12[5] & 0x20) != 0)
    {
      v37 = v21 + v38 * v36;
    }

    else
    {
      v14 = v12 + v21[v36];
      *&v38 = *(v14 + 6);
      v37 = v14 + 8;
    }

    *(&v38 + 1) = v37;
    if (!(*(*(a1 + 48) + 16))(a2, &v38))
    {
LABEL_27:
      if (a5)
      {
        *a5 = 1;
      }

      goto LABEL_46;
    }
  }

  *(a1 + 68) &= ~2u;
LABEL_8:
  v13 = mdb_node_search(a1, a2, a5);
  v14 = v13;
  if (a5 && !*a5)
  {
    return 4294936498;
  }

  if (!v13)
  {
    result = mdb_cursor_sibling(a1, 1);
    if (result)
    {
      *(a1 + 68) |= 2u;
      return result;
    }

    v12 = *(a1 + 8 * *(a1 + 66) + 72);
    v14 = v12 + v12[8];
  }

LABEL_46:
  *(a1 + 68) = *(a1 + 68) & 0xFFFFFFFC | 1;
  if ((v12[5] & 0x20) != 0)
  {
    result = 0;
    if ((a4 & 0xFFFFFFFE) == 0x10)
    {
      v33 = **(a1 + 40);
      *a2 = v33;
      a2[1] = v12 + *(a1 + 2 * *(a1 + 66) + 328) * v33 + 16;
    }

    return result;
  }

  if ((*(v14 + 4) & 4) != 0)
  {
    mdb_xcursor_init1(a1, v14);
    if ((a4 - 15) > 2)
    {
      LODWORD(v38) = 0;
      if (a4 == 2)
      {
        v34 = &v38;
      }

      else
      {
        v34 = 0;
      }

      result = mdb_cursor_set(*(a1 + 16), a3, 0, 17, v34);
      if (!result)
      {
        goto LABEL_79;
      }

      return result;
    }

    result = mdb_cursor_first(*(a1 + 16), a3, 0);
LABEL_79:
    if ((a4 & 0xFFFFFFFE) == 0x10)
    {
      *a2 = *(v14 + 6);
      a2[1] = v14 + 8;
    }

    return result;
  }

  if (!a3)
  {
    result = 0;
    goto LABEL_79;
  }

  if ((a4 & 0xFFFFFFFE) == 2)
  {
    v38 = 0uLL;
    result = mdb_node_read(a1, v14, &v38);
    if (result)
    {
      return result;
    }

    v28 = *(*(a1 + 48) + 24);
    if (v38 == 8 && v28 == mdb_cmp_int)
    {
      v28 = mdb_cmp_cint;
    }

    v30 = v28(a3, &v38);
    v32 = a4 == 2 || v30 > 0;
    if (!v30 || !v32)
    {
      result = 0;
      *a3 = v38;
      goto LABEL_79;
    }

    return 4294936498;
  }

  v35 = *(a1 + 16);
  if (v35)
  {
    *(v35 + 68) &= 0xFFFFFFFC;
  }

  result = mdb_node_read(a1, v14, a3);
  if (!result)
  {
    goto LABEL_79;
  }

  return result;
}

uint64_t mdb_cursor_get(uint64_t a1, void *a2, void *a3, int a4)
{
  v29 = 0;
  if (!a1)
  {
    return 22;
  }

  if ((*(*(a1 + 24) + 124) & 0x13) != 0)
  {
    return 4294936514;
  }

  v7 = mdb_cursor_first;
  switch(a4)
  {
    case 0:
      result = mdb_cursor_first(a1, a2, a3);
      break;
    case 1:
      goto LABEL_32;
    case 2:
    case 3:
      if (!a3)
      {
        goto LABEL_58;
      }

      if (!*(a1 + 16))
      {
        goto LABEL_47;
      }

LABEL_10:
      if (!a2)
      {
        goto LABEL_58;
      }

      if (a4 == 17)
      {
        v8 = 0;
      }

      else
      {
        v8 = &v29;
      }

      result = mdb_cursor_set(a1, a2, a3, a4, v8);
      break;
    case 4:
      if ((*(a1 + 68) & 1) == 0)
      {
        goto LABEL_58;
      }

      v10 = *(a1 + 66);
      v11 = *(a1 + 8 * v10 + 72);
      v12 = *(v11 + 12) - 16;
      v13 = v12 >> 1;
      v14 = a1 + 2 * v10;
      if (v12 < 2 || (v15 = *(v14 + 328), v13 <= v15))
      {
        *(v14 + 328) = v13;
        goto LABEL_56;
      }

      if ((*(v11 + 10) & 0x20) != 0)
      {
        result = 0;
        v28 = **(a1 + 40);
        *a2 = v28;
        a2[1] = v11 + v28 * v15 + 16;
      }

      else
      {
        v16 = v11 + *(v11 + 2 * v15 + 16);
        if (a2)
        {
          *a2 = *(v16 + 6);
          a2[1] = v16 + 8;
        }

        if (a3)
        {
          if ((*(v16 + 4) & 4) == 0)
          {
            goto LABEL_39;
          }

          result = mdb_cursor_get(*(a1 + 16), a3, 0, 4);
        }

        else
        {
LABEL_44:
          result = 0;
        }
      }

      break;
    case 5:
      if (!a3 || (*(a1 + 68) & 1) == 0)
      {
        goto LABEL_58;
      }

      if ((*(*(a1 + 40) + 4) & 0x10) == 0)
      {
        goto LABEL_47;
      }

      v9 = *(a1 + 16);
      if ((*(v9 + 68) & 3) != 1)
      {
        goto LABEL_44;
      }

      goto LABEL_54;
    case 6:
      result = mdb_cursor_last(a1, a2, a3);
      break;
    case 7:
      v7 = mdb_cursor_last;
LABEL_32:
      if (!a3)
      {
        goto LABEL_58;
      }

      v17 = *(a1 + 68);
      if ((v17 & 1) == 0)
      {
        goto LABEL_58;
      }

      v18 = *(a1 + 16);
      if (!v18)
      {
        goto LABEL_47;
      }

      v19 = *(a1 + 66);
      v20 = *(a1 + 328 + 2 * v19);
      v21 = *(a1 + 8 * v19 + 72);
      v22 = *(v21 + 12) - 16;
      if (v20 >= v22 >> 1)
      {
        *(a1 + 328 + 2 * v19) = v22 >> 1;
        goto LABEL_56;
      }

      *(a1 + 68) = v17 & 0xFFFFFFFD;
      v16 = v21 + *(v21 + 2 * v20 + 16);
      if ((*(v16 + 4) & 4) != 0)
      {
        if (*(v18 + 68))
        {
          result = v7();
        }

        else
        {
LABEL_58:
          result = 22;
        }
      }

      else
      {
        if (a2)
        {
          *a2 = *(v16 + 6);
          a2[1] = v16 + 8;
        }

LABEL_39:
        result = mdb_node_read(a1, v16, a3);
      }

      break;
    case 8:
    case 9:
    case 11:
      result = mdb_cursor_next(a1, a2, a3, a4);
      break;
    case 10:
      if (!a3)
      {
        goto LABEL_58;
      }

      if ((*(*(a1 + 40) + 4) & 0x10) == 0)
      {
        goto LABEL_47;
      }

      result = mdb_cursor_next(a1, a2, a3, 9);
      if (result)
      {
        break;
      }

      v9 = *(a1 + 16);
      if ((*(v9 + 68) & 1) == 0)
      {
        goto LABEL_56;
      }

      goto LABEL_54;
    case 12:
    case 13:
    case 14:
      result = mdb_cursor_prev(a1, a2, a3, a4);
      break;
    case 15:
    case 16:
    case 17:
      goto LABEL_10;
    case 18:
      if (!a3)
      {
        goto LABEL_58;
      }

      if ((*(*(a1 + 40) + 4) & 0x10) != 0)
      {
        if ((*(a1 + 68) & 1) != 0 || (result = mdb_cursor_last(a1, a2, a3), !result))
        {
          v23 = *(a1 + 16);
          if (*(v23 + 68))
          {
            result = mdb_cursor_sibling(v23, 0);
            if (!result)
            {
              v9 = *(a1 + 16);
LABEL_54:
              result = 0;
              v24 = *(v9 + 66);
              v25 = v9 + 8 * v24;
              v26 = *(v25 + 72);
              *a3 = ((*(v26 + 12) - 16) >> 1) * **(v9 + 40);
              a3[1] = v26 + 16;
              *(v9 + 2 * v24 + 328) = ((*(*(v25 + 72) + 12) + 131056) >> 1) - 1;
            }
          }

          else
          {
LABEL_56:
            result = 4294936498;
          }
        }
      }

      else
      {
LABEL_47:
        result = 4294936512;
      }

      break;
    default:
      goto LABEL_58;
  }

  v27 = *(a1 + 68);
  if ((v27 & 8) != 0)
  {
    *(a1 + 68) = v27 & 0xFFFFFFF7;
  }

  return result;
}

uint64_t mdb_node_read(uint64_t a1, unsigned int *a2, void *a3)
{
  if (a2[1])
  {
    v6 = 0;
    *a3 = *a2;
    result = mdb_page_get(a1, *(a2 + *(a2 + 3) + 8), &v6, 0);
    if (result)
    {
      return result;
    }

    v4 = v6 + 16;
  }

  else
  {
    *a3 = *a2;
    v4 = a2 + *(a2 + 3) + 8;
  }

  result = 0;
  a3[1] = v4;
  return result;
}

uint64_t mdb_cursor_next(uint64_t a1, void *a2, void *a3, int a4)
{
  v8 = *(a1 + 68);
  if (a4 == 9 && (v8 & 8) != 0)
  {
    return 4294936498;
  }

  if (v8)
  {
    v10 = *(a1 + 66);
    v11 = *(a1 + 72 + 8 * v10);
    if ((v8 & 2) != 0)
    {
      if (((*(v11 + 12) - 16) >> 1) - 1 <= *(a1 + 2 * v10 + 328))
      {
        return 4294936498;
      }

      *(a1 + 68) = v8 & 0xFFFFFFFD;
    }

    if ((*(*(a1 + 40) + 4) & 4) == 0)
    {
      goto LABEL_13;
    }

    v15 = v11 + *(v11 + 2 * *(a1 + 2 * v10 + 328) + 16);
    if ((*(v15 + 4) & 4) != 0)
    {
      if ((a4 & 0xFFFFFFFE) == 8)
      {
        result = mdb_cursor_next(*(a1 + 16), a3, 0, 8);
        if (a4 != 8 || result != -30798)
        {
          if (!a2 || result)
          {
            return result;
          }

          v17 = *(v15 + 6);
          v18 = v15 + 8;
LABEL_37:
          *a2 = v17;
          a2[1] = v18;
          return result;
        }
      }

LABEL_13:
      v12 = *(a1 + 68);
      if ((v12 & 8) != 0)
      {
        *(a1 + 68) = v12 & 0xFFFFFFF7;
      }

      else
      {
        v13 = *(a1 + 66);
        v14 = *(a1 + 328 + 2 * v13) + 1;
        if (v14 >= (*(v11 + 12) - 16) >> 1)
        {
          result = mdb_cursor_sibling(a1, 1);
          if (result)
          {
            *(a1 + 68) |= 2u;
            return result;
          }

          v11 = *(a1 + 72 + 8 * *(a1 + 66));
        }

        else
        {
          *(a1 + 328 + 2 * v13) = v14;
        }
      }

      if ((*(v11 + 10) & 0x20) != 0)
      {
        result = 0;
        v17 = **(a1 + 40);
        v18 = v11 + *(a1 + 2 * *(a1 + 66) + 328) * v17 + 16;
      }

      else
      {
        v16 = v11 + *(v11 + 2 * *(a1 + 2 * *(a1 + 66) + 328) + 16);
        if ((*(v16 + 4) & 4) != 0)
        {
          mdb_xcursor_init1(a1, v11 + *(v11 + 2 * *(a1 + 2 * *(a1 + 66) + 328) + 16));
          result = mdb_cursor_first(*(a1 + 16), a3, 0);
          if (result)
          {
            return result;
          }
        }

        else if (a3)
        {
          result = mdb_node_read(a1, (v11 + *(v11 + 2 * *(a1 + 2 * *(a1 + 66) + 328) + 16)), a3);
          if (result)
          {
            return result;
          }
        }

        result = 0;
        if (!a2)
        {
          return result;
        }

        v17 = *(v16 + 6);
        v18 = v16 + 8;
      }

      goto LABEL_37;
    }

    *(*(a1 + 16) + 68) &= 0xFFFFFFFC;
    if (a4 != 9)
    {
      goto LABEL_13;
    }

    return 4294936498;
  }

  return mdb_cursor_first(a1, a2, a3);
}

uint64_t mdb_cursor_last(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 16);
  if (v6)
  {
    *(v6 + 68) &= 0xFFFFFFFC;
  }

  v7 = *(a1 + 68);
  if ((v7 & 1) != 0 && !*(a1 + 66))
  {
    v9 = 0;
  }

  else
  {
    result = mdb_page_search(a1, 0, 8);
    if (result)
    {
      return result;
    }

    v9 = *(a1 + 66);
    v7 = *(a1 + 68);
  }

  v10 = *(a1 + 8 * v9 + 72);
  v11 = ((*(v10 + 12) + 131056) >> 1) - 1;
  *(a1 + 2 * v9 + 328) = v11;
  *(a1 + 68) = v7 | 3;
  v12 = v10 + 16;
  if ((*(v10 + 10) & 0x20) != 0)
  {
    if (a2)
    {
      v14 = **(a1 + 40);
      *a2 = v14;
      v15 = v12 + v14 * v11;
LABEL_18:
      result = 0;
      a2[1] = v15;
      return result;
    }

    return 0;
  }

  v13 = v10 + *(v12 + 2 * v11);
  if ((*(v13 + 4) & 4) != 0)
  {
    mdb_xcursor_init1(a1, v13);
    result = mdb_cursor_last(*(a1 + 16), a3, 0);
    if (result)
    {
      return result;
    }

LABEL_16:
    if (a2)
    {
      *a2 = *(v13 + 6);
      v15 = v13 + 8;
      goto LABEL_18;
    }

    return 0;
  }

  if (!a3)
  {
    goto LABEL_16;
  }

  result = mdb_node_read(a1, v13, a3);
  if (!result)
  {
    goto LABEL_16;
  }

  return result;
}

uint64_t mdb_cursor_sibling(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 64);
  if (v4 < 2)
  {
    return 4294936498;
  }

  v14[5] = v2;
  v14[6] = v3;
  v6 = a2;
  *(a1 + 64) = v4 - 1;
  LOWORD(v9) = *(a1 + 66) - 1;
  *(a1 + 66) = v9;
  v8 = a1 + 328;
  v9 = v9;
  v10 = *(a1 + 328 + 2 * v9);
  if (!a2)
  {
    if (!*(a1 + 328 + 2 * v9))
    {
      goto LABEL_9;
    }

    LOWORD(v10) = v10 - 1;
LABEL_8:
    *(v8 + 2 * v9) = v10;
    goto LABEL_11;
  }

  if (++v10 < (*(*(a1 + 8 * v9 + 72) + 12) - 16) >> 1)
  {
    goto LABEL_8;
  }

LABEL_9:
  result = mdb_cursor_sibling(a1, a2);
  v9 = *(a1 + 66);
  if (result)
  {
    *(a1 + 66) = v9 + 1;
    ++*(a1 + 64);
    return result;
  }

LABEL_11:
  v14[0] = 0;
  v11 = (*(a1 + 72 + 8 * v9) + *(*(a1 + 72 + 8 * v9) + 2 * *(v8 + 2 * v9) + 16));
  result = mdb_page_get(a1, *v11 | (*(v11 + 2) << 32), v14, 0);
  if (result)
  {
    *(a1 + 68) &= 0xFFFFFFFC;
  }

  else
  {
    v12 = v14[0];
    v13 = *(a1 + 64);
    if (v13 < 0x20)
    {
      *(a1 + 64) = v13 + 1;
      *(a1 + 66) = v13;
      *(a1 + 72 + 8 * v13) = v12;
      *(v8 + 2 * v13) = 0;
    }

    else
    {
      *(*(a1 + 24) + 124) |= 2u;
    }

    result = 0;
    if (!v6)
    {
      *(v8 + 2 * *(a1 + 66)) = ((*(v12 + 12) + 131056) >> 1) - 1;
    }
  }

  return result;
}

uint64_t mdb_cursor_prev(uint64_t a1, void *a2, void *a3, int a4)
{
  if (*(a1 + 68))
  {
    v9 = *(a1 + 66);
  }

  else
  {
    result = mdb_cursor_last(a1, a2, a3);
    if (result)
    {
      return result;
    }

    v9 = *(a1 + 66);
    ++*(a1 + 2 * v9 + 328);
  }

  v10 = *(a1 + 72 + 8 * v9);
  if ((*(*(a1 + 40) + 4) & 4) != 0)
  {
    v11 = *(a1 + 2 * v9 + 328);
    if (v11 < (*(v10 + 12) - 16) >> 1)
    {
      v12 = v10 + *(v10 + 2 * v11 + 16);
      if ((*(v12 + 4) & 4) != 0)
      {
        if ((a4 & 0xFFFFFFFE) == 0xC)
        {
          result = mdb_cursor_prev(*(a1 + 16), a3, 0, 12);
          if (a4 != 12 || result != -30798)
          {
            if (!result)
            {
              if (a2)
              {
                *a2 = *(v12 + 6);
                a2[1] = v12 + 8;
              }

              result = 0;
              *(a1 + 68) &= ~2u;
            }

            return result;
          }

          v9 = *(a1 + 66);
        }
      }

      else
      {
        *(*(a1 + 16) + 68) &= 0xFFFFFFFC;
        if (a4 == 13)
        {
          return 4294936498;
        }
      }
    }
  }

  *(a1 + 68) &= 0xFFFFFFF5;
  LOWORD(v13) = *(a1 + 328 + 2 * v9);
  if (!v13)
  {
    result = mdb_cursor_sibling(a1, 0);
    if (result)
    {
      return result;
    }

    v9 = *(a1 + 66);
    v10 = *(a1 + 72 + 8 * v9);
    v13 = (*(v10 + 12) + 131056) >> 1;
  }

  v14 = v13 - 1;
  *(a1 + 328 + 2 * v9) = v14;
  v15 = *(v10 + 10);
  if ((v15 & 2) == 0)
  {
    return 4294936500;
  }

  if ((v15 & 0x20) != 0)
  {
    result = 0;
    v17 = **(a1 + 40);
    v18 = v10 + v14 * v17 + 16;
LABEL_28:
    *a2 = v17;
    a2[1] = v18;
    return result;
  }

  v16 = v10 + *(v10 + 2 * v14 + 16);
  if ((*(v16 + 4) & 4) != 0)
  {
    mdb_xcursor_init1(a1, v10 + *(v10 + 2 * v14 + 16));
    result = mdb_cursor_last(*(a1 + 16), a3, 0);
    if (result)
    {
      return result;
    }

    goto LABEL_26;
  }

  if (!a3 || (result = mdb_node_read(a1, (v10 + *(v10 + 2 * v14 + 16)), a3), !result))
  {
LABEL_26:
    result = 0;
    if (!a2)
    {
      return result;
    }

    v17 = *(v16 + 6);
    v18 = v16 + 8;
    goto LABEL_28;
  }

  return result;
}

uint64_t mdb_cursor_first(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 16);
  if (v6)
  {
    *(v6 + 68) &= 0xFFFFFFFC;
  }

  v7 = *(a1 + 68);
  if ((v7 & 1) != 0 && !*(a1 + 66))
  {
    v9 = 0;
  }

  else
  {
    result = mdb_page_search(a1, 0, 4);
    if (result)
    {
      return result;
    }

    v9 = *(a1 + 66);
    v7 = *(a1 + 68);
  }

  v10 = *(a1 + 8 * v9 + 72);
  v11 = v10 + 16;
  v12 = *(v10 + 16);
  *(a1 + 68) = v7 & 0xFFFFFFFC | 1;
  *(a1 + 2 * v9 + 328) = 0;
  if ((*(v10 + 10) & 0x20) != 0)
  {
    if (a2)
    {
      *a2 = **(a1 + 40);
LABEL_18:
      result = 0;
      a2[1] = v11;
      return result;
    }

    return 0;
  }

  v13 = v10 + v12;
  if ((*(v10 + v12 + 4) & 4) != 0)
  {
    mdb_xcursor_init1(a1, v10 + v12);
    result = mdb_cursor_first(*(a1 + 16), a3, 0);
    if (result)
    {
      return result;
    }

LABEL_16:
    if (a2)
    {
      *a2 = *(v13 + 6);
      v11 = v13 + 8;
      goto LABEL_18;
    }

    return 0;
  }

  if (!a3)
  {
    goto LABEL_16;
  }

  result = mdb_node_read(a1, (v10 + v12), a3);
  if (!result)
  {
    goto LABEL_16;
  }

  return result;
}

uint64_t mdb_page_spill(uint64_t a1, void *a2, void *a3)
{
  if ((*(a1 + 68) & 4) != 0)
  {
    return 0;
  }

  v4 = *(a1 + 24);
  v5 = *(*(a1 + 40) + 6);
  if (*(a1 + 32) >= 2u)
  {
    v5 += *(*(v4 + 88) + 54);
  }

  if (a2)
  {
    v6 = *(*(v4 + 32) + 16);
    v5 += (*a2 + *a3 + v6 + 8) / v6;
  }

  if (*(v4 + 128) > (2 * v5))
  {
    return 0;
  }

  v8 = *(v4 + 72);
  v9 = *(v4 + 64);
  if (v9)
  {
    v10 = *v9;
    if (*v9)
    {
      LODWORD(v11) = 0;
      if ((v10 + 1) > 2)
      {
        v12 = (v10 + 1);
      }

      else
      {
        v12 = 2;
      }

      v13 = (v9 + 2);
      v14 = v12 - 1;
      do
      {
        v16 = *v13++;
        v15 = v16;
        if ((v16 & 1) == 0)
        {
          LODWORD(v11) = v11 + 1;
          *&v9[2 * v11] = v15;
        }

        --v14;
      }

      while (v14);
      v11 = v11;
    }

    else
    {
      v11 = 0;
    }

    *v9 = v11;
  }

  else
  {
    v17 = mdb_midl_alloc(0x1FFFF);
    *(v4 + 64) = v17;
    if (!v17)
    {
      return 12;
    }
  }

  result = mdb_pages_xkeep(a1, 16, 1);
  if (!result)
  {
    v18 = *v8;
    if (*v8)
    {
      if ((2 * v5) < 0x4000)
      {
        v19 = 0x3FFF;
      }

      else
      {
        v19 = 2 * v5;
      }

      do
      {
        v20 = &v8[4 * v18];
        v21 = v20[1];
        if ((*(v21 + 10) & 0xC000) == 0)
        {
          v22 = 2 * *v20;
          v23 = *v4;
          if (*v4)
          {
            while (1)
            {
              v24 = v23[8];
              if (v24)
              {
                v25 = mdb_midl_search(v24, v22);
                v26 = v23[8];
                if (*v26 >= v25 && v26[v25] == v22)
                {
                  break;
                }
              }

              v23 = *v23;
              if (!v23)
              {
                goto LABEL_34;
              }
            }

            *(v21 + 10) |= 0x8000u;
          }

          else
          {
LABEL_34:
            result = mdb_midl_append((v4 + 64), v22);
            if (result)
            {
              goto LABEL_42;
            }

            --v19;
          }
        }

        --v18;
      }

      while (v18 && v19);
    }

    mdb_midl_sort(*(v4 + 64));
    result = mdb_page_flush(v4, v18);
    if (!result)
    {
      result = mdb_pages_xkeep(a1, 32784, v18);
    }
  }

LABEL_42:
  if (result)
  {
    v27 = 2;
  }

  else
  {
    v27 = 8;
  }

  *(v4 + 124) |= v27;
  return result;
}

uint64_t mdb_page_new(uint64_t a1, __int16 a2, signed int a3, char **a4)
{
  v10 = 0;
  result = mdb_page_alloc(a1, a3, &v10);
  if (!result)
  {
    v9 = v10;
    *(v10 + 5) = a2 | 0x10;
    *(v9 + 6) = 16;
    *(v9 + 7) = *(*(*(a1 + 24) + 32) + 16);
    if (a2)
    {
      ++*(*(a1 + 40) + 8);
    }

    else if ((a2 & 2) != 0)
    {
      ++*(*(a1 + 40) + 16);
    }

    else if ((a2 & 4) != 0)
    {
      *(*(a1 + 40) + 24) += a3;
      *(v9 + 3) = a3;
    }

    *a4 = v9;
  }

  return result;
}

uint64_t mdb_cursor_touch(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 >= 2 && (**(a1 + 56) & 0x21) == 0)
  {
    v9 = 0;
    memset(v8, 0, sizeof(v8));
    memset(v7, 0, sizeof(v7));
    v6 = *(a1 + 24);
    if (*(*(v6 + 96) + 4 * v2) != *(*(*(v6 + 32) + 152) + 4 * v2))
    {
      return 4294936516;
    }

    mdb_cursor_init(v8, v6, 1u, v7);
    result = mdb_page_search(v8, *(a1 + 48), 1);
    if (result)
    {
      return result;
    }

    **(a1 + 56) |= 1u;
  }

  *(a1 + 66) = 0;
  if (!*(a1 + 64))
  {
    return 0;
  }

  do
  {
    result = mdb_page_touch(a1);
    v4 = *(a1 + 64);
    if (result)
    {
      break;
    }

    v5 = *(a1 + 66) + 1;
    *(a1 + 66) = v5;
  }

  while (v4 > v5);
  *(a1 + 66) = v4 - 1;
  return result;
}

uint64_t mdb_update_key(uint64_t a1, const void **a2)
{
  v3 = *(a1 + 66);
  v4 = *(a1 + 2 * v3 + 328);
  v5 = *(a1 + 8 * v3 + 72);
  v6 = v5[v4 + 8];
  v7 = (v5 + v6);
  v8 = *a2;
  v9 = (*a2 + 1) & 0xFFFFFFFE;
  v10 = *(v5 + v6 + 6);
  v11 = (v10 + 1) & 0x1FFFE;
  v12 = v9 - v11;
  if (v9 != v11)
  {
    if (v12 <= 0)
    {
      v13 = v5[6];
    }

    else
    {
      v13 = v5[6];
      if (v12 > (v5[7] - v13))
      {
        v15 = *v7 | (v7[2] << 32);
        mdb_node_del(a1, 0);

        return mdb_page_split(a1, a2, 0, v15, 0x40000);
      }
    }

    v17 = ((v13 + 131056) >> 1);
    if (((v13 + 131056) >> 1))
    {
      v18 = v5 + 8;
      do
      {
        v19 = *v18;
        if (v19 <= v6)
        {
          *v18 = v19 - v12;
        }

        ++v18;
        --v17;
      }

      while (v17);
    }

    memmove(v5 + v5[7] - v12, v5 + v5[7], v6 - v5[7] + 8);
    v5[7] -= v12;
    v7 = (v5 + v5[v4 + 8]);
    v10 = v7[3];
    v8 = *a2;
  }

  if (v8 != v10)
  {
    v7[3] = v8;
  }

  if (v8)
  {
    memcpy(v7 + 4, a2[1], v8);
  }

  return 0;
}

uint64_t mdb_page_alloc(uint64_t a1, signed int a2, char **a3)
{
  v3 = a2;
  v4 = *(a1 + 24);
  v5 = *(v4 + 32);
  v7 = (v5 + 176);
  v6 = *(v5 + 176);
  if (v6)
  {
    v8 = *v6;
  }

  else
  {
    v8 = 0;
  }

  v40 = 0;
  v39 = 0;
  memset(v38, 0, sizeof(v38));
  v9 = (a2 - 1);
  if (a2 == 1 && (v10 = *(v4 + 48)) != 0)
  {
    result = 0;
    *(v4 + 48) = *(v10 + 48);
    --*(v4 + 56);
    *a3 = v10;
  }

  else
  {
    *a3 = 0;
    if (*(v4 + 128))
    {
      oldest = 0;
      v13 = 0;
      v35 = 0;
      v14 = 1;
      v15 = 1 - a2;
      v33 = 60 * a2;
      while (1)
      {
        v41 = 0;
        v42 = 0;
        v36 = 0;
        v37 = 0;
        if (v8 > v9)
        {
          v16 = v7;
          v17 = v8;
          v18 = v8;
          while (1)
          {
            v19 = v6[v18];
            if (v6[v15 + v18] == v19 + v9)
            {
              goto LABEL_41;
            }

            if (--v18 <= v9)
            {
              v3 = a2;
              v20 = v33-- < 1;
              v8 = v17;
              if (v20)
              {
                goto LABEL_39;
              }

              v7 = v16;
              break;
            }
          }
        }

        if (v14)
        {
          v40 = *(v5 + 184);
          oldest = *(v5 + 168);
          mdb_cursor_init(v38, v4, 0, 0);
          v21 = v40;
          if (v40)
          {
            v42 = &v40;
            v41 = 8;
            v13 = 17;
          }

          else
          {
            v13 = 0;
          }
        }

        else
        {
          v21 = v40;
        }

        v22 = v21 + 1;
        v40 = v22;
        if (oldest <= v22)
        {
          if (!v35)
          {
            oldest = mdb_find_oldest(v4);
            *(v5 + 168) = oldest;
            v22 = v40;
          }

          if (oldest <= v22)
          {
            goto LABEL_39;
          }

          v35 = 1;
        }

        result = mdb_cursor_get(v38, &v41, 0, v13);
        if (result)
        {
          break;
        }

        v23 = *v42;
        v40 = v23;
        if (oldest <= v23)
        {
          if (!v35)
          {
            oldest = mdb_find_oldest(v4);
            *(v5 + 168) = oldest;
            v23 = v40;
          }

          if (oldest <= v23)
          {
            goto LABEL_39;
          }

          v35 = 1;
        }

        result = mdb_node_read(v38, (*(&v38[4] + WORD1(v38[4]) + 1) + *(*(&v38[4] + WORD1(v38[4]) + 1) + 2 * *(&v38[20] + WORD1(v38[4]) + 4) + 16)), &v36);
        if (result)
        {
          goto LABEL_55;
        }

        v24 = v37;
        if (v6)
        {
          result = mdb_midl_need(v7, *v37);
          if (result)
          {
            goto LABEL_55;
          }

          v6 = *v7;
        }

        else
        {
          v6 = mdb_midl_alloc(*v37);
          *v7 = v6;
          if (!v6)
          {
            goto LABEL_43;
          }
        }

        *(v5 + 184) = v40;
        mdb_midl_xmerge(v6, v24);
        v14 = 0;
        v8 = *v6;
        v13 = 8;
      }

      if (result != -30798)
      {
        goto LABEL_55;
      }

LABEL_39:
      v17 = v8;
      v19 = *(v4 + 16);
      if ((v19 + v3) >= *(v5 + 128))
      {
        result = 4294936504;
        goto LABEL_55;
      }

      v18 = 0;
LABEL_41:
      if ((*(v5 + 14) & 8) != 0)
      {
        v25 = (*(v5 + 56) + v19 * *(v5 + 16));
      }

      else
      {
        v25 = mdb_page_malloc(v4, a2);
        if (!v25)
        {
LABEL_43:
          result = 12;
          goto LABEL_55;
        }
      }

      if (v18)
      {
        v26 = v17 - a2;
        *v6 = v26;
        v27 = v18 - a2;
        if (v18 - a2 < v26)
        {
          v28 = v26 - v27;
          v29 = &v6[v27 + 1];
          v30 = v18 + 1;
          do
          {
            *v29++ = v6[v30++];
            --v28;
          }

          while (v28);
        }
      }

      else
      {
        *(v4 + 16) = v19 + a2;
      }

      *v25 = v19;
      v31 = mdb_mid2l_append;
      if ((*(v4 + 124) & 0x80000) == 0)
      {
        v31 = mdb_mid2l_insert;
      }

      v41 = v19;
      v42 = v25;
      v31(*(v4 + 72), &v41);
      result = 0;
      --*(v4 + 128);
      *a3 = v25;
    }

    else
    {
      result = 4294936508;
LABEL_55:
      *(v4 + 124) |= 2u;
    }
  }

  return result;
}

void *mdb_node_del(void *result, int a2)
{
  v2 = *(result + 33);
  v3 = result[v2 + 9];
  v4 = *(result + v2 + 164);
  v5 = v3[6];
  v6 = v5 + 131056;
  v7 = v3[5];
  if ((v7 & 0x20) != 0)
  {
    v12 = a2;
    v13 = ~v4 + (v6 >> 1);
    if (v13)
    {
      v14 = v3 + v4 * a2 + 16;
      result = memmove(v14, &v14[a2], v13 * a2);
      LOWORD(v5) = v3[6];
    }

    v3[6] = v5 - 2;
    v15 = v12 + v3[7] - 2;
  }

  else
  {
    v8 = v3[v4 + 8];
    v9 = v3 + v8;
    v10 = *(v3 + v8 + 6);
    v11 = v10 + 8;
    if ((v7 & 2) != 0)
    {
      if (*(v9 + 2))
      {
        v11 = v10 + 16;
      }

      else
      {
        v11 += *v9;
      }
    }

    v16 = (v11 + 1) & 0xFFFFFFFE;
    v17 = (v6 >> 1);
    if (v17)
    {
      v18 = 0;
      v19 = v3 + 8;
      do
      {
        if (v4)
        {
          v20 = *v19;
          if (v20 >= v8)
          {
            v21 = 0;
          }

          else
          {
            v21 = v16;
          }

          v3[v18++ + 8] = v20 + v21;
        }

        ++v19;
        --v4;
        --v17;
      }

      while (v17);
    }

    result = memmove(v3 + v3[7] + v16, v3 + v3[7], v8 - v3[7]);
    v3[6] -= 2;
    v15 = v3[7] + v16;
  }

  v3[7] = v15;
  return result;
}

uint64_t mdb_page_get(uint64_t a1, unint64_t a2, unint64_t *a3, int *a4)
{
  v7 = *(a1 + 24);
  if ((*(a1 + 70) & 0xA) != 0)
  {
LABEL_10:
    if (*(v7 + 16) <= a2)
    {
      *(v7 + 124) |= 2u;
      return 4294936499;
    }

    v9 = 0;
  }

  else
  {
    v8 = 2 * a2;
    v9 = 1;
    v10 = *(a1 + 24);
    while (1)
    {
      v11 = v10[8];
      v12 = v10[9];
      if (v11)
      {
        v13 = mdb_midl_search(v11, 2 * a2);
        v14 = v10[8];
        if (*v14 >= v13 && v14[v13] == v8)
        {
          break;
        }
      }

      if (*v12)
      {
        v15 = mdb_mid2l_search(v12, a2);
        if (*v12 >= v15 && *&v12[4 * v15] == a2)
        {
          v16 = *&v12[4 * v15 + 2];
          goto LABEL_13;
        }
      }

      ++v9;
      v10 = *v10;
      if (!v10)
      {
        goto LABEL_10;
      }
    }
  }

  v16 = *(*(v7 + 32) + 56) + *(*(v7 + 32) + 16) * a2;
LABEL_13:
  *a3 = v16;
  result = 0;
  if (a4)
  {
    *a4 = v9;
  }

  return result;
}

uint64_t mdb_page_unspill(uint64_t a1, uint64_t a2, char **a3)
{
  v6 = *(a1 + 32);
  v7 = 2 * *a2;
  v8 = a1;
  while (1)
  {
    v9 = v8[8];
    if (v9)
    {
      v10 = mdb_midl_search(v9, v7);
      v11 = v8[8];
      if (*v11 >= v10)
      {
        v12 = v10;
        if (v11[v10] == v7)
        {
          break;
        }
      }
    }

    v8 = *v8;
    if (!v8)
    {
      return 0;
    }
  }

  if (!*(a1 + 128))
  {
    return 4294936508;
  }

  if ((*(a2 + 10) & 4) != 0)
  {
    v14 = *(a2 + 12);
  }

  else
  {
    v14 = 1;
  }

  if ((*(v6 + 14) & 8) != 0)
  {
    v16 = a2;
  }

  else
  {
    v15 = mdb_page_malloc(a1, v14);
    if (!v15)
    {
      return 12;
    }

    v16 = v15;
    v17 = *(v6 + 16);
    if (v14 < 2)
    {
      mdb_page_copy(v15, a2, v17);
    }

    else
    {
      memcpy(v15, a2, (v17 * v14));
    }
  }

  if (v8 == a1)
  {
    v18 = *(a1 + 64);
    if (*v18 == v12)
    {
      *v18 = v12 - 1;
    }

    else
    {
      v18[v12] |= 1uLL;
    }
  }

  v19 = mdb_mid2l_append;
  if ((*(a1 + 124) & 0x80000) == 0)
  {
    v19 = mdb_mid2l_insert;
  }

  v20[0] = *v16;
  v20[1] = v16;
  (v19)(*(a1 + 72), v20);
  result = 0;
  --*(a1 + 128);
  *(v16 + 5) |= 0x10u;
  *a3 = v16;
  return result;
}

char *mdb_page_malloc(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 32);
  v4 = *(v3 + 16);
  if (a2 == 1)
  {
    v5 = *(v3 + 192);
    if (v5)
    {
      *(v3 + 192) = *v5;
      return v5;
    }

    v7 = v4 - 16;
    v6 = 16;
  }

  else
  {
    v6 = v4 * a2 - v4;
    v7 = *(v3 + 16);
    v4 = v4 * a2;
  }

  v8 = malloc_type_malloc(v4, 0xE790C6D3uLL);
  v5 = v8;
  if (v8)
  {
    if ((*(v3 + 15) & 1) == 0)
    {
      bzero(&v8[v6], v7);
      *(v5 + 4) = 0;
    }
  }

  else
  {
    *(a1 + 124) |= 2u;
  }

  return v5;
}

uint64_t mdb_ovpage_free(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  v4 = *a2;
  v5 = *(a2 + 12);
  v6 = *(v3 + 32);
  v7 = (v6 + 176);
  if (!*(v6 + 176) || *v3)
  {
LABEL_3:
    result = mdb_midl_append_range((v3 + 40), v4, v5);
    if (result)
    {
      return result;
    }

    goto LABEL_4;
  }

  v10 = *(v3 + 64);
  if ((*(a2 + 10) & 0x10) != 0)
  {
    v12 = 0;
  }

  else
  {
    if (!v10)
    {
      goto LABEL_3;
    }

    v11 = mdb_midl_search(*(v3 + 64), 2 * v4);
    if (*v10 < v11)
    {
      goto LABEL_3;
    }

    v12 = v11;
    if (v10[v11] != 2 * v4)
    {
      goto LABEL_3;
    }
  }

  result = mdb_midl_need(v7, v5);
  if (!result)
  {
    if ((*(a2 + 10) & 0x10) == 0)
    {
      if (*v10 == v12)
      {
        *v10 = v12 - 1;
      }

      else
      {
        v10[v12] |= 1uLL;
      }

LABEL_23:
      v23 = *v7;
      v24 = **v7;
      if (v24)
      {
        while (1)
        {
          v25 = v5 + v24;
          v26 = *&v23[2 * v24];
          if (v26 >= v4)
          {
            break;
          }

          *&v23[2 * v25] = v26;
          if (!--v24)
          {
            v25 = v5;
            break;
          }
        }
      }

      else
      {
        v25 = v5;
      }

      if (v25 > v24)
      {
        v27 = 0;
        v28 = v25 + ~v24;
        v29 = vdupq_n_s64(v28);
        v30 = &v23[2 * v25];
        do
        {
          v31 = vmovn_s64(vcgeq_u64(v29, vorrq_s8(vdupq_n_s64(v27), xmmword_185DB7AF0)));
          if (v31.i8[0])
          {
            *v30 = v4 + v27;
          }

          if (v31.i8[4])
          {
            *(v30 - 1) = v4 + v27 + 1;
          }

          v27 += 2;
          v30 -= 4;
        }

        while (((v28 + 2) & 0x1FFFFFFFELL) != v27);
      }

      *v23 += v5;
LABEL_4:
      result = 0;
      *(*(a1 + 40) + 24) -= v5;
      return result;
    }

    v13 = *(v3 + 72);
    v14 = (*v13)--;
    v15 = &v13[2 * v14];
    v16 = v15[1];
    if (v16 == a2)
    {
LABEL_20:
      ++*(v3 + 128);
      if ((*(v6 + 14) & 8) == 0)
      {
        mdb_dpage_free(v6, a2);
      }

      goto LABEL_23;
    }

    v17 = v14;
    v18 = *v15;
    v19 = v14 + 1;
    v20 = &v13[2 * v17 - 1];
    while (--v19 >= 2)
    {
      v21 = *(v20 - 1);
      v22 = *v20;
      *(v20 - 1) = v18;
      *v20 = v16;
      v20 -= 2;
      v16 = v22;
      v18 = v21;
      if (v22 == a2)
      {
        goto LABEL_20;
      }
    }

    v32 = *v13 + 1;
    *v13 = v32;
    v33 = &v13[2 * v32];
    *v33 = v18;
    v33[1] = v16;
    *(v3 + 124) |= 2u;
    return 4294936517;
  }

  return result;
}

uint64_t mdb_page_split(uint64_t a1, const void **a2, size_t *a3, size_t a4, int a5)
{
  v9 = *(*(a1 + 24) + 32);
  v204[0] = 0uLL;
  v202 = 0;
  v203 = 0;
  v200 = 0;
  v201 = 0;
  v198 = 0;
  v199 = 0;
  v197 = 0;
  memset(v196, 0, sizeof(v196));
  v194 = 0u;
  v195 = 0u;
  v10 = (a1 + 72);
  v11 = *(a1 + 66);
  v12 = *(a1 + 72 + 8 * v11);
  v192 = 0u;
  v193 = 0u;
  v13 = a1 + 328;
  v14 = *(a1 + 328 + 2 * v11);
  v15 = *(v12 + 12);
  result = mdb_page_new(a1, *(v12 + 10), 1, &v199);
  if (result)
  {
    return result;
  }

  v163 = a2;
  v164 = v14;
  v161 = v15;
  v157 = a4;
  v159 = v10;
  v17 = v199;
  *(v199 + 4) = *(v12 + 8);
  v18 = *(a1 + 66);
  if (*(a1 + 66))
  {
    v152 = 0;
    v153 = a3;
    v158 = v9;
    v19 = v14;
    v20 = v18 - 1;
  }

  else
  {
    result = mdb_page_new(a1, 1, 1, &v198);
    if (result)
    {
      goto LABEL_179;
    }

    v27 = *(a1 + 64);
    if (*(a1 + 64))
    {
      v28 = v27 + 1;
      v29 = (a1 + 2 * v27 + 328);
      v30 = (a1 + 8 * v27 + 72);
      v31 = v30;
      v32 = v29;
      do
      {
        v34 = *--v31;
        v33 = v34;
        LOWORD(v34) = *--v32;
        *v30 = v33;
        *v29 = v34;
        --v28;
        v30 = v31;
        v29 = v32;
      }

      while (v28 > 1);
    }

    v35 = v198;
    *(a1 + 72) = v198;
    *(a1 + 328) = 0;
    v36 = *(a1 + 40);
    *(v36 + 40) = *v35;
    v18 = *(v36 + 6);
    *(v36 + 6) = v18 + 1;
    result = mdb_node_add(a1, 0, 0, 0, *v12, 0);
    if (result)
    {
      *(a1 + 72) = *(a1 + 80);
      *(a1 + 328) = *(a1 + 330);
      v37 = *(a1 + 40);
      *(v37 + 40) = *v12;
      --*(v37 + 6);
      goto LABEL_179;
    }

    v152 = v18;
    v153 = a3;
    v158 = v9;
    v19 = v14;
    v20 = 0;
    ++*(a1 + 64);
    LOWORD(v18) = *(a1 + 66) + 1;
    *(a1 + 66) = v18;
  }

  mdb_cursor_copy(a1, &v192);
  *&v193 = 0;
  v21 = WORD1(v196[0]);
  *(v196 + WORD1(v196[0]) + 1) = v17;
  v160 = v13;
  v155 = v20;
  *(&v196[16] + v20 + 4) = *(v13 + 2 * v20) + 1;
  if ((a5 & 0x20000) != 0)
  {
    v154 = 0;
    v38 = 0;
    *(&v196[16] + v21 + 4) = 0;
    v204[0] = *a2;
    v39 = *&v204[0];
    v162 = v19;
    LODWORD(v40) = v20;
    goto LABEL_72;
  }

  v22 = v161 - 16;
  v23 = (v161 - 16) >> 1;
  v24 = (v23 + 1) >> 1;
  v162 = v24;
  if ((*(v17 + 5) & 0x20) == 0)
  {
    if ((*(v12 + 10) & 2) != 0)
    {
      v25 = v22 >> 1;
      v49 = v158;
      v50 = *a2 + 16;
      if (*a2 + *v153 + 8 <= *(v158 + 220))
      {
        v50 = *a2 + *v153 + 8;
      }

      LODWORD(v26) = (v50 + 3) & 0xFFFFFFFE;
    }

    else
    {
      v25 = v22 >> 1;
      if (a2)
      {
        v26 = *a2 + 10;
      }

      else
      {
        LODWORD(v26) = 10;
      }

      v49 = v158;
    }

    v52 = *(v49 + 16);
    v53 = mdb_page_malloc(*(a1 + 24), 1u);
    if (v53)
    {
      v54 = v52 - 16;
      v55 = (v26 + 1) & 0xFFFFFFFE;
      *v53 = *v12;
      *(v53 + 5) = *(v12 + 10);
      *(v53 + 6) = 16;
      v158 = v49;
      *(v53 + 7) = *(v49 + 16);
      v38 = v53;
      if (v22 > 1)
      {
        v61 = 0;
        v62 = v53 + 16;
        v63 = (v12 + 16);
        if (v25 <= 1)
        {
          v64 = 1;
        }

        else
        {
          v64 = v25;
        }

        v19 = v164;
        v65 = v164;
        LODWORD(v40) = v20;
        v57 = v162;
        do
        {
          if (!v65)
          {
            *&v62[2 * v61++] = 0;
          }

          v66 = *v63++;
          *&v62[2 * v61++] = v66;
          --v65;
          --v64;
        }

        while (v64);
        if (v54 >= 0)
        {
          v67 = v54;
        }

        else
        {
          v67 = v54 + 15;
        }

        v56 = v25 > v164;
        if (v22 >= 0x40 && v55 <= v67 >> 4 && v25 > v164)
        {
          goto LABEL_69;
        }
      }

      else
      {
        v19 = v164;
        v56 = v25 > v164;
        LODWORD(v40) = v20;
        v57 = v162;
      }

      if (v57 < v19 && v56)
      {
        v58 = v57 - 1;
        v59 = -1;
        v56 = 1;
        LODWORD(v60) = v25;
      }

      else
      {
        if (v56)
        {
          v56 = 0;
          LODWORD(v60) = 0;
          v58 = v57 + ((*(v12 + 10) >> 1) & 1) + 1;
          v59 = 1;
          goto LABEL_56;
        }

        LODWORD(v60) = 0;
        v59 = 1;
        v58 = v25;
      }

      if (v60 != v58)
      {
LABEL_56:
        v68 = 0;
        v69 = v59;
        v70 = v58 - v59;
        v71 = -v60;
        v72 = -v58;
        v60 = v60;
        while (1)
        {
          if (v19 == v60)
          {
            v68 += v55;
          }

          else
          {
            v73 = v12 + *&v38[2 * v60 + 16];
            v74 = v68 + *(v73 + 6) + 10;
            if ((*(v12 + 10) & 2) != 0)
            {
              if (*(v73 + 4))
              {
                v74 += 8;
              }

              else
              {
                v74 += *v73;
              }
            }

            v68 = (v74 + 1) & 0xFFFFFFFE;
          }

          if (v68 > v54 || v70 == v60)
          {
            break;
          }

          v60 += v69;
          v71 -= v69;
          if (v72 == v71)
          {
            goto LABEL_69;
          }
        }

        v57 = v56 - v71;
      }

LABEL_69:
      v154 = v25;
      if (v57 == v19)
      {
        v39 = *a2;
        v75 = a2[1];
        *&v204[0] = *a2;
        *(&v204[0] + 1) = v75;
        v162 = v19;
      }

      else
      {
        v162 = v57;
        v76 = v12 + *&v38[2 * v57 + 16];
        v39 = *(v76 + 6);
        *&v204[0] = v39;
        *(&v204[0] + 1) = v76 + 8;
      }

      goto LABEL_72;
    }

    result = 12;
LABEL_179:
    *(*(a1 + 24) + 124) |= 2u;
    return result;
  }

  v41 = v19;
  v42 = *(v13 + 2 * v18);
  v43 = v42 - v24;
  v39 = **(a1 + 40);
  v44 = v12 + 16 + v39 * v24;
  v154 = v23;
  v45 = v39 * (v23 - v24);
  *(v12 + 12) -= 2 * (v23 - v24);
  *(v17 + 6) += 2 * (v23 - v24);
  v46 = v39 * (v23 - v24) - 2 * (v23 - v24);
  *(v12 + 14) += v46;
  *(v17 + 7) -= v46;
  *&v204[0] = v39;
  v47 = v44;
  if (v24 == v41)
  {
    v47 = a2[1];
  }

  *(&v204[0] + 1) = v47;
  if (v43 < 0)
  {
    v51 = (v12 + 16 + v39 * v160[*(a1 + 66)]);
    memcpy(v17 + 16, (v12 + 16 + v39 * v24), v39 * (v23 - v24));
    *(&v204[0] + 1) = v17 + 16;
    memmove(&v51[v39], v51, (v162 - v160[*(a1 + 66)]) * v39);
    v19 = v164;
    memcpy(v51, a2[1], v39);
    v38 = 0;
    *(v12 + 12) += 2;
    *(v12 + 14) = *(v12 + 14) - v39 + 2;
  }

  else
  {
    v48 = (v43 * v39);
    if (v42 != v24)
    {
      memcpy(v17 + 16, (v12 + 16 + v39 * v24), (v43 * v39));
    }

    memcpy(&v17[v48 + 16], a2[1], v39);
    memcpy(&v17[v48 + 16 + v39], (v44 + v48), (v45 - v48));
    v38 = 0;
    *(v17 + 6) += 2;
    *(v17 + 7) = *(v17 + 7) - v39 + 2;
    v160[*(a1 + 66)] = v43;
    v19 = v164;
  }

  LODWORD(v40) = v155;
LABEL_72:
  v150 = *(*(v196 + v40 + 1) + 14) - *(*(v196 + v40 + 1) + 12);
  v151 = v39 + 10;
  if (v39 + 10 <= v150)
  {
    --WORD1(v196[0]);
    LODWORD(result) = mdb_node_add(&v192, *(&v196[16] + v40 + 4), v204, 0, *v17, 0);
    ++WORD1(v196[0]);
    v84 = a5;
    v85 = v160;
    if (!result)
    {
      goto LABEL_93;
    }

    goto LABEL_78;
  }

  v77 = v19;
  v78 = v38;
  v165 = v77;
  v79 = *(a1 + 64);
  --LOWORD(v196[0]);
  --WORD1(v196[0]);
  v191 = 0;
  v189 = 0u;
  v190 = 0u;
  v187 = 0u;
  v188 = 0u;
  v185 = 0u;
  v186 = 0u;
  v183 = 0u;
  v184 = 0u;
  v181 = 0u;
  v182 = 0u;
  v179 = 0u;
  v180 = 0u;
  v177 = 0u;
  v178 = 0u;
  v175 = 0u;
  v176 = 0u;
  v173 = 0u;
  v174 = 0u;
  v171 = 0u;
  v172 = 0u;
  v169 = 0u;
  v170 = 0u;
  v167 = 0u;
  v168 = 0u;
  v80 = *(*(&v193 + 1) + 104);
  v81 = v194;
  v82 = &v192;
  if ((BYTE4(v196[0]) & 4) != 0)
  {
    DWORD1(v171) = 1;
    *&v168 = &v192;
    v82 = &v167;
  }

  *v82 = *(v80 + 8 * v194);
  *(v80 + 8 * v81) = v82;
  result = mdb_page_split(&v192, v204, 0, *v17, 0);
  *(v80 + 8 * v81) = *v82;
  if (result)
  {
    v83 = v158;
    v38 = v78;
    goto LABEL_176;
  }

  if (*(a1 + 64) <= v79)
  {
    v40 = v155;
  }

  else
  {
    v40 = v155 + 1;
  }

  v86 = *(v196 + v40 + 1);
  v87 = v159[v40];
  if (v86 == v87)
  {
    v84 = a5;
    v38 = v78;
    v19 = v165;
    v85 = v160;
    goto LABEL_93;
  }

  v85 = v160;
  v84 = a5;
  if (v160[v40] < (*(v87 + 12) - 16) >> 1)
  {
    v38 = v78;
    v19 = v165;
    goto LABEL_93;
  }

  v38 = v78;
  if (v40 >= 1)
  {
    for (i = 0; i < v40; ++i)
    {
      *&v160[4 * i - 128] = *(v196 + i + 1);
      v160[i] = *(&v196[16] + i + 4);
    }
  }

  v159[v40] = v86;
  v19 = v165;
  if (*(&v196[16] + v40 + 4))
  {
    v160[v40] = *(&v196[16] + v40 + 4) - 1;
    goto LABEL_93;
  }

  v160[v40] = 0;
  LODWORD(result) = mdb_cursor_sibling(a1, 0);
  if (result)
  {
LABEL_78:
    if (result == -30798)
    {
      result = 4294936517;
    }

    else
    {
      result = result;
    }

    goto LABEL_175;
  }

LABEL_93:
  if ((v84 & 0x20000) != 0)
  {
    v111 = *(a1 + 66);
    v159[v111] = v17;
    v85[v111] = 0;
    result = mdb_node_add(a1, 0, a2, v153, v157, v84);
    if (result)
    {
      goto LABEL_175;
    }

    v110 = v151;
    if (*(a1 + 66))
    {
      memcpy(v85, &v196[16] + 8, 2 * *(a1 + 66));
    }

LABEL_138:
    v123 = *(*(*(a1 + 24) + 104) + 8 * *(a1 + 32));
    if (v123)
    {
      v93 = v38;
      v124 = *(v12 + 12) - 16;
      v125 = v124 >> 1;
      v126 = *(a1 + 68);
      v127 = v199;
      v128 = 8 * v152 + 80;
      v129 = 2 * v152 + 330;
      while (1)
      {
        v130 = v123;
        if ((v126 & 4) != 0)
        {
          v130 = v123[2];
        }

        if (v130 == a1 || (*(v123 + 17) & *(v130 + 17) & 1) == 0)
        {
          goto LABEL_171;
        }

        if (!v152)
        {
          break;
        }

        if (v130[9] == v12)
        {
          v131 = (v130 + v128);
          v132 = (v130 + v129);
          v133 = v152 + 1;
          v134 = (v130 + v129);
          v135 = (v130 + v128);
          do
          {
            v136 = *--v134;
            *v132 = v136;
            v137 = *--v135;
            *v131 = v137;
            v132 = v134;
            v131 = v135;
          }

          while (v133-- > 1);
          *(v130 + 164) = v125 <= *(v130 + 164);
          v130[9] = *v159;
          ++*(v130 + 32);
          v139 = *(v130 + 33) + 1;
          *(v130 + 33) = v139;
          goto LABEL_151;
        }

LABEL_171:
        v123 = *v123;
        if (!v123)
        {
          result = 0;
          goto LABEL_173;
        }
      }

      v139 = *(v130 + 33);
LABEL_151:
      v140 = *(a1 + 66);
      if (v140 <= v139 && v130[v140 + 9] == v12)
      {
        v142 = v130 + 41;
        v143 = *(v130 + v140 + 164);
        if ((v84 & 0x40000) == 0 && v143 >= v19)
        {
          *(v142 + v140) = v143 + 1;
          v140 = *(a1 + 66);
          v143 = *(v142 + v140);
        }

        if (v125 <= v143)
        {
          v130[v140 + 9] = v127;
          *(v142 + v140) = v143 - (v124 >> 1);
          if (*(a1 + 66))
          {
            v144 = 0;
            do
            {
              *(v142 + v144) = *(&v196[16] + v144 + 4);
              v142[v144 - 32] = *(v196 + v144 + 1);
              ++v144;
            }

            while (v144 < *(a1 + 66));
          }
        }
      }

      else if (v110 <= v150 && v40 <= v139 && v130[v40 + 9] == v159[v40])
      {
        v141 = *(v130 + v40 + 164);
        if (v141 >= v85[v40])
        {
          *(v130 + v40 + 164) = v141 + 1;
        }
      }

      if ((*(v12 + 10) & 2) != 0)
      {
        v145 = v130[2];
        if (v145)
        {
          if (*(v145 + 68))
          {
            v146 = *(a1 + 66);
            v147 = v130[v146 + 9];
            v148 = *(v130 + v146 + 164);
            if (v148 < (*(v147 + 12) - 16) >> 1)
            {
              v149 = v147 + *(v147 + 2 * v148 + 16);
              if ((*(v149 + 4) & 6) == 4)
              {
                *(v145 + 72) = v149 + *(v149 + 6) + 8;
              }
            }
          }
        }
      }

      goto LABEL_171;
    }

    result = 0;
LABEL_175:
    v83 = v158;
    goto LABEL_176;
  }

  if ((*(v12 + 10) & 0x20) != 0)
  {
    v110 = v151;
    if (v162 <= v19)
    {
      v159[*(a1 + 66)] = v17;
      v112 = v85[v40] + 1;
      v85[v40] = v112;
      v113 = v159[v40];
      if (*(v196 + v40 + 1) != v113 && (*(v113 + 12) - 16) >> 1 <= v112 && (v40 & 0x80000000) == 0)
      {
        v114 = (v40 + 1);
        v115 = 328;
        v116 = 72;
        do
        {
          *(a1 + v116) = *(&v192 + v116);
          *(a1 + v115) = *(&v192 + v115);
          v115 += 2;
          v116 += 8;
          --v114;
        }

        while (v114);
      }
    }

    goto LABEL_138;
  }

  v156 = v40;
  v89 = v19;
  v90 = v84;
  v91 = 0;
  v92 = 0;
  v159[*(a1 + 66)] = v17;
  v93 = v38;
  v94 = (v38 + 16);
  v95 = &v200;
  v96 = v162;
  while (1)
  {
    if (v96 == v89)
    {
      v97 = v163[1];
      v202 = *v163;
      v203 = v97;
      if ((*(v12 + 10) & 2) != 0)
      {
        v95 = v153;
      }

      else
      {
        v91 = v157;
      }

      v160[*(a1 + 66)] = v92;
      v98 = *(v12 + 10);
      LODWORD(v99) = v90;
    }

    else
    {
      v100 = (v12 + v94[v96]);
      v101 = *(v100 + 3);
      v202 = v101;
      v203 = v100 + 2;
      v98 = *(v12 + 10);
      if ((v98 & 2) != 0)
      {
        v200 = *v100;
        v201 = &v101[(v100 + 2)];
        LODWORD(v99) = *(v100 + 2);
        v95 = &v200;
      }

      else
      {
        v99 = *(v100 + 2);
        v91 = *v100 | (v99 << 32);
      }
    }

    if (!(v98 & 2 | v92))
    {
      v202 = 0;
    }

    result = mdb_node_add(a1, v92, &v202, v95, v91, v99);
    if (result)
    {
      break;
    }

    if (v96 == v154)
    {
      v96 = 0;
      v92 = 0;
      v159[*(a1 + 66)] = v93;
    }

    else
    {
      ++v96;
      ++v92;
    }

    if (v96 == v162)
    {
      v38 = v93;
      v102 = *(v93 + 6);
      v103 = (v102 - 16) >> 1;
      v84 = v90;
      v19 = v89;
      LODWORD(v40) = v156;
      v85 = v160;
      if ((v102 - 16) >= 2)
      {
        v104 = (v12 + 16);
        if (v103 <= 1)
        {
          v105 = 1;
        }

        else
        {
          v105 = v103;
        }

        v106 = v94;
        do
        {
          v107 = *v106++;
          *v104++ = v107;
          --v105;
        }

        while (v105);
        LOWORD(v102) = *(v93 + 6);
      }

      *(v12 + 12) = v102;
      v108 = *(v93 + 7);
      *(v12 + 14) = v108;
      memcpy((v12 + *(v12 + 2 * v103 - 2 + 16)), &v93[v94[v103 - 1]], (*(v158 + 16) - v108));
      if (v162 <= v19)
      {
        v109 = *(a1 + 66);
        v159[v109] = v199;
        v117 = v160[v156] + 1;
        v160[v156] = v117;
        v118 = v159[v156];
        v110 = v151;
        if (*(v196 + v156 + 1) != v118 && (*(v118 + 12) - 16) >> 1 <= v117 && (v156 & 0x80000000) == 0)
        {
          v119 = v156 + 1;
          v120 = 328;
          v121 = 72;
          do
          {
            *(a1 + v121) = *(&v192 + v121);
            *(a1 + v120) = *(&v192 + v120);
            v120 += 2;
            v121 += 8;
            --v119;
          }

          while (v119);
        }
      }

      else
      {
        v109 = *(a1 + 66);
        v159[v109] = v12;
        v110 = v151;
      }

      if ((v84 & 0x10000) != 0)
      {
        v122 = v159[v109] + *(v159[v109] + 2 * v160[v109] + 16);
        if ((*(v122 + 4) & 1) == 0)
        {
          v153[1] = v122 + *(v122 + 6) + 8;
        }
      }

      goto LABEL_138;
    }
  }

LABEL_173:
  v83 = v158;
  v38 = v93;
LABEL_176:
  if (v38)
  {
    *v38 = *(v83 + 192);
    *(v83 + 192) = v38;
  }

  if (result)
  {
    goto LABEL_179;
  }

  return result;
}

uint64_t mdb_node_add(uint64_t a1, unsigned int a2, const void **a3, size_t *a4, size_t a5, int a6)
{
  v8 = *(a1 + 8 * *(a1 + 66) + 72);
  v36 = 0;
  v9 = v8[5];
  if ((v9 & 0x20) != 0)
  {
    v15 = **(a1 + 40);
    v16 = ((v8[6] - 16) >> 1) - a2;
    if (v16 >= 1)
    {
      memmove(v8 + v15 * a2 + v15 + 16, v8 + v15 * a2 + 16, v16 * v15);
    }

    memcpy(v8 + v15 * a2 + 16, a3[1], v15);
    result = 0;
    v8[6] += 2;
    v8[7] = v8[7] - v15 + 2;
    return result;
  }

  v10 = a6;
  v13 = v8[6];
  if (a3)
  {
    v14 = *a3 + 8;
  }

  else
  {
    v14 = 8;
  }

  v18 = (v8[7] - v13) - 2;
  if ((v9 & 2) == 0)
  {
    v19 = v14;
    goto LABEL_16;
  }

  if (a6)
  {
    v19 = v14 + 8;
LABEL_16:
    v22 = (v19 + 1) & 0xFFFFFFFFFFFFFFFELL;
    if (v22 > v18)
    {
      v20 = *(a1 + 24);
      goto LABEL_18;
    }

    goto LABEL_19;
  }

  v19 = *a4 + v14;
  v20 = *(a1 + 24);
  v21 = *(v20 + 32);
  if (v19 <= *(v21 + 220))
  {
    goto LABEL_16;
  }

  v22 = (v14 + 9) & 0xFFFFFFFFFFFFFFFELL;
  if (v22 > v18)
  {
LABEL_18:
    *(v20 + 124) |= 2u;
    return 4294936510;
  }

  result = mdb_page_new(a1, 4, ((*a4 + 15) / *(v21 + 16)) + 1, &v36);
  if (result)
  {
    return result;
  }

  v10 |= 1u;
  v13 = v8[6];
LABEL_19:
  v23 = (v13 - 16) >> 1;
  if (v23 > a2)
  {
    v24 = &v8[v23 + 8];
    v25 = v24;
    do
    {
      --v23;
      v26 = *--v25;
      *v24 = v26;
      v24 = v25;
    }

    while (v23 > a2);
    LOWORD(v13) = v8[6];
  }

  v27 = v8[7] - v22;
  v8[a2 + 8] = v27;
  v8[7] = v27;
  v8[6] = v13 + 2;
  v28 = v8 + v27;
  if (a3)
  {
    v29 = *a3;
  }

  else
  {
    v29 = 0;
  }

  *(v28 + 3) = v29;
  *(v28 + 2) = v10;
  v30 = v8[5];
  if ((v30 & 2) != 0)
  {
    a5 = *a4;
  }

  else
  {
    *(v28 + 2) = WORD2(a5);
  }

  *v28 = a5;
  if (a3)
  {
    memcpy(v28 + 8, a3[1], *a3);
    v30 = v8[5];
  }

  if ((v30 & 2) == 0)
  {
    return 0;
  }

  v31 = &v28[v29 + 8];
  if (v36)
  {
    v32 = v36 + 16;
    *v31 = *v36;
    if ((v10 & 0x10000) == 0)
    {
      v34 = *a4;
      v33 = a4[1];
      v35 = v32;
LABEL_38:
      memcpy(v35, v33, v34);
      return 0;
    }

    result = 0;
    a4[1] = v32;
  }

  else if (v10)
  {
    result = 0;
    *v31 = *a4[1];
  }

  else
  {
    if ((v10 & 0x10000) == 0)
    {
      v34 = *a4;
      v33 = a4[1];
      v35 = &v28[v29 + 8];
      goto LABEL_38;
    }

    result = 0;
    a4[1] = v31;
  }

  return result;
}

uint64_t mdb_xcursor_init1(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  v3 = *(v2 + 68) & 0xA0004;
  *(v2 + 68) = v3;
  if ((*(a2 + 4) & 2) != 0)
  {
    v8 = a2 + *(a2 + 6);
    v9 = *(v8 + 8);
    v10 = *(v8 + 40);
    *(v2 + 408) = *(v8 + 24);
    *(v2 + 424) = v10;
    *(v2 + 392) = v9;
    *(v2 + 72) = 0;
    *(v2 + 64) = 0;
  }

  else
  {
    v4 = a2 + *(a2 + 6);
    *(v2 + 392) = 0x1000000000000;
    v6 = *(v4 + 8);
    v5 = (v4 + 8);
    *(v2 + 400) = xmmword_185DB7AF0;
    *(v2 + 416) = 0;
    *(v2 + 424) = (v5[6] - 16) >> 1;
    *(v2 + 432) = v6;
    *(v2 + 434) = v5[1];
    *(v2 + 436) = v5[2];
    *(v2 + 438) = v5[3];
    *(v2 + 64) = 1;
    *(v2 + 68) = v3 | 1;
    *(v2 + 72) = v5;
    *(v2 + 328) = 0;
    v7 = *(result + 40);
    if ((*(v7 + 4) & 0x10) != 0)
    {
      *(v2 + 396) = 16;
      *(v2 + 392) = v5[4];
      if ((*(v7 + 4) & 0x20) != 0)
      {
        *(v2 + 396) = 24;
      }
    }
  }

  *(v2 + 488) = 56;
  if (*(v2 + 456) == mdb_cmp_int && *(v2 + 392) == 8)
  {
    *(v2 + 456) = mdb_cmp_cint;
  }

  return result;
}

__n128 mdb_xcursor_init2(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *(a1 + 16);
  if (a3)
  {
    v4 = *(v3 + 68) | 1;
    *(v3 + 64) = 1;
    *(v3 + 68) = v4;
    *(v3 + 328) = 0;
    *(v3 + 488) = 56;
    *(v3 + 456) = *(a2 + 456);
  }

  else if ((*(v3 + 68) & 1) == 0)
  {
    return result;
  }

  result = *(a2 + 392);
  v6 = *(a2 + 424);
  *(v3 + 408) = *(a2 + 408);
  *(v3 + 424) = v6;
  *(v3 + 392) = result;
  *(v3 + 72) = *(a2 + 72);
  return result;
}

uint64_t mdb_cursor_del(uint64_t a1, int a2)
{
  v2 = *(*(a1 + 24) + 124);
  if ((v2 & 0x20013) != 0)
  {
    if ((v2 & 0x20000) != 0)
    {
      return 13;
    }

    else
    {
      return 4294936514;
    }
  }

  if ((*(a1 + 68) & 1) == 0)
  {
    return 22;
  }

  v5 = a1 + 328;
  if (*(a1 + 328 + 2 * *(a1 + 66)) >= (*(*(a1 + 72 + 8 * *(a1 + 66)) + 12) - 16) >> 1)
  {
    return 4294936498;
  }

  if ((a2 & 0x8000) != 0 || (result = mdb_page_spill(a1, 0, 0), !result))
  {
    result = mdb_cursor_touch(a1);
    if (!result)
    {
      v7 = *(a1 + 66);
      v8 = *(a1 + 72 + 8 * v7);
      v9 = *(v8 + 10);
      if ((v9 & 2) == 0)
      {
        return 4294936500;
      }

      if ((v9 & 0x20) != 0)
      {
LABEL_42:

        return mdb_cursor_del0(a1);
      }

      v10 = v8 + 16;
      v11 = v8 + *(v8 + 16 + 2 * *(v5 + 2 * v7));
      v12 = *(v11 + 4);
      if ((v12 & 4) == 0)
      {
        if (((v12 ^ a2) & 2) != 0)
        {
          result = 4294936512;
LABEL_47:
          *(*(a1 + 24) + 124) |= 2u;
          return result;
        }

        goto LABEL_41;
      }

      if ((a2 & 0x20) != 0)
      {
        v13 = *(a1 + 16);
        *(*(a1 + 40) + 32) = *(*(a1 + 40) + 32) - *(v13 + 424) + 1;
        *(v13 + 68) &= ~1u;
        if ((v12 & 2) == 0)
        {
          goto LABEL_41;
        }

        goto LABEL_38;
      }

      if ((v12 & 2) == 0)
      {
        *(*(a1 + 16) + 72) = v11 + *(v11 + 6) + 8;
      }

      result = mdb_cursor_del(*(a1 + 16), 0x8000);
      if (!result)
      {
        v13 = *(a1 + 16);
        if (*(v13 + 424))
        {
          if ((*(v11 + 4) & 2) != 0)
          {
            v19 = v11 + *(v11 + 6);
            v21 = *(v13 + 408);
            v20 = *(v13 + 424);
            *(v19 + 8) = *(v13 + 392);
            *(v19 + 24) = v21;
            *(v19 + 40) = v20;
          }

          else
          {
            mdb_node_shrink(v8, *(v5 + 2 * *(a1 + 66)));
            v14 = *(a1 + 66);
            v15 = v8 + *(v10 + 2 * *(v5 + 2 * v14));
            *(*(a1 + 16) + 72) = v15 + *(v15 + 6) + 8;
            for (i = *(*(*(a1 + 24) + 104) + 8 * *(a1 + 32)); i; i = *i)
            {
              if (i != a1 && *(i + 32) >= *(a1 + 64) && (*(i + 68) & 1) != 0 && i[v14 + 9] == v8)
              {
                v17 = i[2];
                if (v17)
                {
                  if ((*(v17 + 68) & 1) != 0 && *(i + v14 + 164) < (*(v8 + 12) - 16) >> 1)
                  {
                    v18 = v8 + *(v10 + 2 * *(i + v14 + 164));
                    if ((*(v18 + 4) & 6) == 4)
                    {
                      *(v17 + 72) = v18 + *(v18 + 6) + 8;
                    }
                  }
                }
              }
            }
          }

          result = 0;
          --*(*(a1 + 40) + 32);
          return result;
        }

        *(v13 + 68) &= ~1u;
        LOWORD(v12) = *(v11 + 4);
        if ((v12 & 2) == 0)
        {
LABEL_41:
          if (v12)
          {
            v22 = 0;
            result = mdb_page_get(a1, *(v11 + *(v11 + 6) + 8), &v22, 0);
            if (result)
            {
              goto LABEL_47;
            }

            result = mdb_ovpage_free(a1, v22);
            if (result)
            {
              goto LABEL_47;
            }
          }

          goto LABEL_42;
        }

LABEL_38:
        result = mdb_drop0(v13, 0);
        if (result)
        {
          goto LABEL_47;
        }

        LOWORD(v12) = *(v11 + 4);
        goto LABEL_41;
      }
    }
  }

  return result;
}

char *mdb_node_shrink(char *result, int a2)
{
  v3 = result;
  v4 = result + 16;
  v5 = *&result[2 * a2 + 16];
  v6 = &result[v5];
  v7 = *&result[v5 + 6];
  v8 = &result[v5 + v7];
  v9 = *(v8 + 10);
  v10 = *(v8 + 11) - v9;
  v11 = *&result[v5] - v10;
  if ((*(v8 + 9) & 0x20) != 0)
  {
    v15 = *&result[v5] - v10;
    if (v11)
    {
      return result;
    }
  }

  else
  {
    if ((v9 - 16) >= 2)
    {
      v12 = (v9 - 16) >> 1;
      v13 = v12 + 1;
      v14 = &result[2 * v12 + 22 + v5 + v7];
      do
      {
        *&v14[v10] = *v14 - v10;
        --v13;
        v14 -= 2;
      }

      while (v13 > 1);
    }

    v15 = 16;
  }

  v16 = v8 + 8;
  v16[7] = v9;
  *v16 = *result;
  *v6 = v11;
  *(v6 + 1) = 0;
  result = memmove(&result[*(result + 7) + v10], &result[*(result + 7)], v16 + v15 - &result[*(result + 7)]);
  v17 = *(v3 + 6) - 16;
  if (v17 >= 2)
  {
    v18 = *&v4[2 * a2];
    v19 = v17 >> 1;
    v20 = v19 + 1;
    v21 = &v3[2 * v19 + 14];
    do
    {
      v22 = *v21;
      if (v22 <= v18)
      {
        *v21 = v22 + v10;
      }

      --v20;
      v21 -= 2;
    }

    while (v20 > 1);
  }

  *(v3 + 7) += v10;
  return result;
}

uint64_t mdb_drop0(uint64_t a1, int a2)
{
  LODWORD(result) = mdb_page_search(a1, 0, 4);
  if (result)
  {
    if (result == -30798)
    {
      result = 0;
    }

    else
    {
      result = result;
    }

    goto LABEL_59;
  }

  v31 = *(a1 + 24);
  v35 = 0;
  memset(v34, 0, sizeof(v34));
  memset(v33, 0, sizeof(v33));
  v5 = *(a1 + 68);
  if (((v5 & 4) != 0 || !a2 && !*(*(a1 + 40) + 24)) && *(a1 + 64))
  {
    v6 = *(a1 + 64) - 1;
    *(a1 + 64) = v6;
    if (v6)
    {
      --*(a1 + 66);
    }

    else
    {
      *(a1 + 68) = v5 & 0xFFFFFFFE;
    }
  }

  mdb_cursor_copy(a1, v33);
  if (!*(a1 + 64))
  {
    goto LABEL_56;
  }

  v7 = a1 + 72;
  v8 = (a1 + 328);
  v9 = a1 + 330;
  while (1)
  {
    while (1)
    {
      v10 = *(v7 + 8 * *(a1 + 66));
      v11 = v10[6] - 16;
      v12 = v11 >> 1;
      if ((v10[5] & 2) != 0)
      {
        if (v11 >= 2)
        {
          v14 = 0;
          v13 = v12 <= 1 ? 1 : v12;
          do
          {
            v15 = v10 + v10[v14 + 8];
            v16 = *(v15 + 4);
            if (v16)
            {
              v32 = 0;
              v17 = *(v15 + *(v15 + 6) + 8);
              result = mdb_page_get(a1, v17, &v32, 0);
              if (result)
              {
                goto LABEL_58;
              }

              v18 = v32;
              result = mdb_midl_append_range((v31 + 40), v17, *(v32 + 12));
              if (result)
              {
                goto LABEL_58;
              }

              v19 = *(a1 + 40);
              v20 = *(v19 + 24) - *(v18 + 12);
              *(v19 + 24) = v20;
              if (!a2 && !v20)
              {
                v7 = a1 + 72;
                v8 = (a1 + 328);
                goto LABEL_48;
              }
            }

            else if (a2)
            {
              if ((v16 & 2) != 0)
              {
                mdb_xcursor_init1(a1, v15);
                result = mdb_drop0(*(a1 + 16), 0);
                if (result)
                {
                  goto LABEL_58;
                }
              }
            }

            ++v14;
          }

          while (v13 != v14);
          v7 = a1 + 72;
          v8 = (a1 + 328);
          if (a2)
          {
            goto LABEL_42;
          }
        }

        else
        {
          LOWORD(v13) = 0;
          if (a2)
          {
            goto LABEL_42;
          }
        }

        if (!*(*(a1 + 40) + 24))
        {
          break;
        }
      }

      else
      {
        result = mdb_midl_need((v31 + 40), v11 >> 1);
        if (result)
        {
          goto LABEL_58;
        }

        if (v11 >= 2)
        {
          v21 = v10 + 8;
          v22 = *(v31 + 40);
          v23 = v12 <= 1 ? 1 : v12;
          LOWORD(v13) = v23;
          do
          {
            v24 = *v21++;
            v25 = *(v10 + v24) | (*(v10 + v24 + 4) << 32);
            v26 = *v22 + 1;
            *v22 = v26;
            v22[v26] = v25;
            --v23;
          }

          while (v23);
        }

        else
        {
          LOWORD(v13) = 0;
        }
      }

LABEL_42:
      if (!*(a1 + 66))
      {
        goto LABEL_56;
      }

      v8[*(a1 + 66)] = v13;
      result = mdb_cursor_sibling(a1, 1);
      if (result == -30798)
      {
        break;
      }

      if (result)
      {
        goto LABEL_57;
      }

      if (!*(a1 + 64))
      {
        goto LABEL_56;
      }
    }

LABEL_48:
    v27 = *(a1 + 64);
    if (!v27)
    {
      goto LABEL_55;
    }

    v28 = v27 - 1;
    *(a1 + 64) = v27 - 1;
    if (v27 == 1)
    {
      break;
    }

    --*(a1 + 66);
    *(a1 + 328) = 0;
    if ((v27 - 1) != 1)
    {
      v29 = 0;
      v30 = v28 - 1;
      do
      {
        *(v9 + 2 * v29) = 0;
        *(v9 + 8 * v29 - 250) = *(v34 + v29);
        ++v29;
      }

      while (v30 != v29);
    }
  }

  *(a1 + 68) &= ~1u;
LABEL_55:
  *v8 = 0;
LABEL_56:
  result = mdb_midl_append((v31 + 40), *(*(a1 + 40) + 40));
LABEL_57:
  if (result)
  {
LABEL_58:
    *(v31 + 124) |= 2u;
  }

LABEL_59:
  *(a1 + 68) &= ~1u;
  return result;
}

uint64_t mdb_cursor_del0(uint64_t a1)
{
  v2 = a1 + 328;
  v3 = *(a1 + 66);
  v4 = *(a1 + 328 + 2 * v3);
  v5 = *(a1 + 32);
  v6 = a1 + 72;
  v7 = *(a1 + 72 + 8 * v3);
  mdb_node_del(a1, **(a1 + 40));
  --*(*(a1 + 40) + 32);
  for (i = *(*(*(a1 + 24) + 104) + 8 * v5); i; i = *i)
  {
    v9 = i;
    if ((*(a1 + 68) & 4) != 0)
    {
      v9 = i[2];
    }

    if (v9 != a1)
    {
      v10 = *(v9 + 17);
      if ((*(i + 17) & v10 & 1) != 0 && *(v9 + 32) >= *(a1 + 64))
      {
        v11 = *(a1 + 66);
        if (v9[v11 + 9] == v7)
        {
          v12 = v9 + 41;
          v13 = *(v9 + v11 + 164);
          if (v13 == v4)
          {
            *(v9 + 17) = v10 | 8;
            if ((*(*(a1 + 40) + 4) & 4) != 0)
            {
              *(v9[2] + 68) &= 0xFFFFFFFC;
            }
          }

          else
          {
            if (v13 > v4)
            {
              *(v12 + v11) = v13 - 1;
            }

            v14 = v9[2];
            if (v14)
            {
              if ((*(v14 + 68) & 1) != 0 && *(v12 + *(a1 + 66)) < (*(v7 + 12) - 16) >> 1)
              {
                v15 = v7 + *(v7 + 16 + 2 * *(v12 + *(a1 + 66)));
                if ((*(v15 + 4) & 6) == 4)
                {
                  *(v14 + 72) = v15 + *(v15 + 6) + 8;
                }
              }
            }
          }
        }
      }
    }
  }

  result = mdb_rebalance(a1);
  if (!result)
  {
    if (!*(a1 + 64))
    {
      result = 0;
      v17 = (a1 + 68);
      goto LABEL_22;
    }

    v19 = *(*(*(a1 + 24) + 104) + 8 * v5);
    if (!v19)
    {
LABEL_47:
      result = 0;
      v17 = (a1 + 68);
      v18 = 8;
      goto LABEL_48;
    }

    v20 = *(v6 + 8 * *(a1 + 66));
    v21 = (*(v20 + 12) - 16) >> 1;
    while (1)
    {
      v22 = v19;
      if ((*(a1 + 68) & 4) != 0)
      {
        v22 = *(v19 + 16);
      }

      v23 = (v22 + 68);
      if ((*(v19 + 68) & *(v22 + 68) & 1) == 0)
      {
        goto LABEL_46;
      }

      if (*(v22 + 64) < *(a1 + 64))
      {
        goto LABEL_46;
      }

      v24 = *(a1 + 66);
      if (*(v22 + 72 + 8 * v24) != v20)
      {
        goto LABEL_46;
      }

      v25 = *(v22 + 328 + 2 * v24);
      if (v25 < *(v2 + 2 * v24))
      {
        goto LABEL_46;
      }

      if (v21 <= v25)
      {
        result = mdb_cursor_sibling(v22, 1);
        if (result == -30798)
        {
          v29 = 2;
          goto LABEL_45;
        }

        if (result)
        {
          break;
        }
      }

      v26 = *(v22 + 16);
      if (!v26 || (*v23 & 2) != 0)
      {
        goto LABEL_46;
      }

      v27 = *(v22 + 72 + 8 * *(v22 + 66)) + *(*(v22 + 72 + 8 * *(v22 + 66)) + 2 * *(v22 + 328 + 2 * *(v22 + 66)) + 16);
      v28 = *(v27 + 4);
      if ((v28 & 4) != 0)
      {
        if (*(v26 + 68))
        {
          if ((v28 & 2) == 0)
          {
            *(v26 + 72) = v27 + *(v27 + 6) + 8;
          }
        }

        else
        {
          mdb_xcursor_init1(v22, v27);
          result = mdb_cursor_first(*(v22 + 16), 0, 0);
          if (result)
          {
            break;
          }
        }
      }

      v23 = (*(v22 + 16) + 68);
      v29 = 8;
LABEL_45:
      *v23 |= v29;
LABEL_46:
      v19 = *v19;
      if (!v19)
      {
        goto LABEL_47;
      }
    }
  }

  v17 = (*(a1 + 24) + 124);
LABEL_22:
  v18 = 2;
LABEL_48:
  *v17 |= v18;
  return result;
}

uint64_t mdb_cursor_open(uint64_t a1, unsigned int a2, void *a3)
{
  result = 22;
  if (a1 && a3 && *(a1 + 120) > a2 && (*(*(a1 + 112) + a2) & 8) != 0)
  {
    v7 = *(a1 + 124);
    if ((v7 & 0x13) != 0)
    {
      return 4294936514;
    }

    else if (v7 & 0x20000 | a2)
    {
      if ((*(*(a1 + 88) + 48 * a2 + 4) & 4) != 0)
      {
        v8 = 888;
      }

      else
      {
        v8 = 392;
      }

      v9 = malloc_type_malloc(v8, 0xDB9F4F9BuLL);
      if (v9)
      {
        v10 = v9;
        mdb_cursor_init(v9, a1, a2, (v9 + 98));
        v11 = *(a1 + 104);
        if (v11)
        {
          *v10 = *(v11 + 8 * a2);
          *(v11 + 8 * a2) = v10;
          v10[17] |= 0x40u;
        }

        result = 0;
        *a3 = v10;
      }

      else
      {
        return 12;
      }
    }
  }

  return result;
}

uint64_t mdb_cursor_renew(uint64_t a1, uint64_t a2)
{
  result = 22;
  if (a1)
  {
    if (a2)
    {
      v4 = *(a2 + 32);
      if (v4 < *(a1 + 120) && (*(*(a1 + 112) + v4) & 8) != 0 && (*(a2 + 68) & 0x40) == 0 && !*(a1 + 104))
      {
        if ((*(a1 + 124) & 0x13) != 0)
        {
          return 4294936514;
        }

        else
        {
          mdb_cursor_init(a2, a1, v4, *(a2 + 16));
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t mdb_cursor_count(uint64_t a1, uint64_t *a2)
{
  v2 = 22;
  if (a1 && a2)
  {
    v3 = *(a1 + 16);
    if (!v3)
    {
      return 4294936512;
    }

    if ((*(*(a1 + 24) + 124) & 0x13) != 0)
    {
      return 4294936514;
    }

    v4 = *(a1 + 68);
    if ((v4 & 1) == 0)
    {
      return 22;
    }

    if (*(a1 + 64))
    {
      if ((v4 & 2) == 0)
      {
        v5 = *(a1 + 66);
        goto LABEL_14;
      }

      v5 = *(a1 + 66);
      if (*(a1 + 2 * v5 + 328) < (*(*(a1 + 8 * v5 + 72) + 12) - 16) >> 1)
      {
        *(a1 + 68) = v4 & 0xFFFFFFFD;
LABEL_14:
        if ((*(*(a1 + 8 * v5 + 72) + *(*(a1 + 8 * v5 + 72) + 2 * *(a1 + 2 * v5 + 328) + 16) + 4) & 4) != 0)
        {
          if ((*(v3 + 68) & 1) == 0)
          {
            return 22;
          }

          v6 = *(v3 + 424);
        }

        else
        {
          v6 = 1;
        }

        v2 = 0;
        *a2 = v6;
        return v2;
      }
    }

    return 4294936498;
  }

  return v2;
}

void mdb_cursor_close(void *a1)
{
  if (a1 && !*(a1 + 1))
  {
    if ((*(a1 + 68) & 0x40) != 0)
    {
      v1 = *(*(a1 + 3) + 104);
      if (v1)
      {
        v2 = (v1 + 8 * *(a1 + 8));
        do
        {
          v3 = v2;
          v2 = *v2;
          if (v2)
          {
            v4 = v2 == a1;
          }

          else
          {
            v4 = 1;
          }
        }

        while (!v4);
        if (v2 == a1)
        {
          *v3 = *a1;
        }
      }
    }

    free(a1);
  }
}

uint64_t mdb_del(uint64_t a1, unsigned int a2, void *a3, __int128 *a4)
{
  v4 = 22;
  if (!a1 || !a3)
  {
    return v4;
  }

  if (*(a1 + 120) <= a2 || (*(*(a1 + 112) + a2) & 0x10) == 0)
  {
    return 22;
  }

  v6 = *(a1 + 124);
  if ((v6 & 0x20013) != 0)
  {
    if ((v6 & 0x20000) != 0)
    {
      return 13;
    }

    else
    {
      return 4294936514;
    }
  }

  if ((*(*(a1 + 88) + 48 * a2 + 4) & 4) == 0)
  {
    a4 = 0;
  }

  return mdb_del0(a1, a2, a3, a4, 0);
}

uint64_t mdb_del0(uint64_t a1, unsigned int a2, void *a3, __int128 *a4, int a5)
{
  memset(v17, 0, 392);
  memset(v16, 0, sizeof(v16));
  v15 = 0uLL;
  v14 = 0;
  mdb_cursor_init(v17, a1, a2, v16);
  if (a4)
  {
    v15 = *a4;
    v10 = &v15;
    v11 = 2;
  }

  else
  {
    v10 = 0;
    a5 |= 0x20u;
    v11 = 15;
  }

  result = mdb_cursor_set(v17, a3, v10, v11, &v14);
  if (!result)
  {
    v13 = *(a1 + 104);
    v17[0] = *(v13 + 8 * a2);
    *(v13 + 8 * a2) = v17;
    result = mdb_cursor_del(v17, a5);
    *(*(a1 + 104) + 8 * a2) = v17[0];
  }

  return result;
}

uint64_t mdb_put(uint64_t a1, unsigned int a2, size_t *a3, uint64_t a4, int a5)
{
  result = 22;
  if (a1)
  {
    if (a3)
    {
      if (a4)
      {
        if (*(a1 + 120) > a2)
        {
          v15 = 0;
          memset(v14, 0, sizeof(v14));
          memset(v13, 0, sizeof(v13));
          if ((a5 & 0xFFF8FFCF) == 0 && (*(*(a1 + 112) + a2) & 0x10) != 0)
          {
            v11 = *(a1 + 124);
            if ((v11 & 0x20013) != 0)
            {
              if ((v11 & 0x20000) != 0)
              {
                return 13;
              }

              else
              {
                return 4294936514;
              }
            }

            else
            {
              mdb_cursor_init(v14, a1, a2, v13);
              v12 = *(a1 + 104);
              *&v14[0] = *(v12 + 8 * a2);
              *(v12 + 8 * a2) = v14;
              result = mdb_cursor_put(v14, a3, a4, a5);
              *(*(a1 + 104) + 8 * a2) = *&v14[0];
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t mdb_dbi_open(uint64_t a1, char *__s, unsigned int a3, unsigned int *a4)
{
  if ((a3 & 0xFFFBFF81) != 0)
  {
    return 22;
  }

  if ((*(a1 + 124) & 0x13) != 0)
  {
    return 4294936514;
  }

  v69 = 0;
  memset(v68, 0, sizeof(v68));
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  if (!__s)
  {
    *a4 = 1;
    if ((a3 & 0x7E) != 0)
    {
      v17 = *(a1 + 88);
      v18 = *(v17 + 52);
      v19 = a3 & 0x7E | v18;
      if (v19 != v18)
      {
        *(v17 + 52) = v19;
        *(a1 + 124) |= 4u;
      }
    }

    mdb_default_cmp(a1, 1u);
    return 0;
  }

  if (!*(*(a1 + 80) + 64))
  {
    mdb_default_cmp(a1, 1u);
  }

  v70 = 0;
  v71 = 0;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v10 = strlen(__s);
  v11 = *(a1 + 120);
  if (v11 < 3)
  {
    goto LABEL_20;
  }

  v12 = 0;
  v13 = (*(a1 + 80) + 104);
  for (i = 2; i != v11; ++i)
  {
    v15 = *(v13 - 1);
    if (v15)
    {
      if (v10 == v15 && !strncmp(__s, *v13, v10))
      {
        v4 = 0;
        *a4 = i;
        return v4;
      }
    }

    else if (!v12)
    {
      v12 = i;
    }

    v13 += 6;
  }

  if (v12)
  {
    v16 = 0;
  }

  else
  {
LABEL_20:
    if (v11 >= *(*(a1 + 32) + 36))
    {
      return 4294936505;
    }

    v12 = 0;
    v16 = 1;
  }

  if ((*(*(a1 + 88) + 52) & 0xC) == 0)
  {
    v60 = 0;
    v72[0] = v10;
    v72[1] = __s;
    mdb_cursor_init(&v64, a1, 1u, 0);
    v20 = mdb_cursor_set(&v64, v72, &v70, 15, &v60);
    if (v20 == -30798)
    {
      if (a3 < 0x40000)
      {
        return 4294936498;
      }

      if ((*(a1 + 126) & 2) != 0)
      {
        return 13;
      }

      v30 = strdup(__s);
      if (v30)
      {
        v22 = v30;
        v70 = 48;
        v71 = &v61;
        v61 = 0u;
        v62 = 0u;
        *&v63 = 0;
        *(&v63 + 1) = -1;
        WORD2(v61) = a3;
        v59 = 0;
        v57 = 0u;
        v58 = 0u;
        v55 = 0u;
        v56 = 0u;
        v53 = 0u;
        v54 = 0u;
        v51 = 0u;
        v52 = 0u;
        v49 = 0u;
        v50 = 0u;
        v47 = 0u;
        v48 = 0u;
        v45 = 0u;
        v46 = 0u;
        v43 = 0u;
        v44 = 0u;
        v41 = 0u;
        v42 = 0u;
        v39 = 0u;
        v40 = 0u;
        v37 = 0u;
        v38 = 0u;
        v35 = 0u;
        v36 = 0u;
        v31 = *(*(&v65 + 1) + 104);
        v32 = v66;
        v33 = &v64;
        if ((BYTE4(v68[0]) & 4) != 0)
        {
          DWORD1(v39) = 1;
          *&v36 = &v64;
          v33 = &v35;
        }

        *v33 = *(v31 + 8 * v66);
        *(v31 + 8 * v32) = v33;
        v34 = mdb_cursor_put(&v64, v72, &v70, 2);
        *(v31 + 8 * v32) = *v33;
        if (v34)
        {
          v4 = v34;
          free(v22);
          return v4;
        }

        v23 = 29;
        if (!v16)
        {
LABEL_38:
          v24 = (*(a1 + 80) + 48 * v12);
          *v24 = v10;
          v24[1] = v22;
          v24[4] = 0;
          *(*(a1 + 112) + v12) = v23;
          v25 = *(*(a1 + 32) + 152);
          LODWORD(v24) = *(v25 + 4 * v12) + 1;
          *(v25 + 4 * v12) = v24;
          v26 = *(a1 + 88);
          *(*(a1 + 96) + 4 * v12) = v24;
          v27 = (v26 + 48 * v12);
          v28 = *v71;
          v29 = v71[2];
          v27[1] = v71[1];
          v27[2] = v29;
          *v27 = v28;
          *a4 = v12;
          mdb_default_cmp(a1, v12);
          if (v16)
          {
            v4 = 0;
            ++*(a1 + 120);
            return v4;
          }

          return 0;
        }

LABEL_37:
        v12 = *(a1 + 120);
        goto LABEL_38;
      }
    }

    else
    {
      v4 = v20;
      if (v20)
      {
        return v4;
      }

      if ((*(*(v68 + WORD1(v68[0]) + 1) + *(*(v68 + WORD1(v68[0]) + 1) + 2 * *(&v68[16] + WORD1(v68[0]) + 4) + 16) + 4) & 6) != 2)
      {
        return 4294936512;
      }

      v21 = strdup(__s);
      if (v21)
      {
        v22 = v21;
        v23 = 28;
        if (!v16)
        {
          goto LABEL_38;
        }

        goto LABEL_37;
      }
    }

    return 12;
  }

  if (a3 >= 0x40000)
  {
    return 4294936512;
  }

  else
  {
    return 4294936498;
  }
}

uint64_t mdb_default_cmp(uint64_t result, unsigned int a2)
{
  v2 = *(*(result + 88) + 48 * a2 + 4);
  v3 = mdb_cmp_cint;
  if ((v2 & 8) == 0)
  {
    v3 = mdb_cmp_memn;
  }

  if ((v2 & 2) != 0)
  {
    v3 = mdb_cmp_memnr;
  }

  v4 = *(result + 80);
  *(v4 + 48 * a2 + 16) = v3;
  if ((v2 & 4) != 0)
  {
    if ((v2 & 0x20) != 0)
    {
      v6 = (v2 & 0x10) == 0;
      v5 = mdb_cmp_int;
      v7 = mdb_cmp_cint;
    }

    else
    {
      v6 = (v2 & 0x40) == 0;
      v5 = mdb_cmp_memnr;
      v7 = mdb_cmp_memn;
    }

    if (v6)
    {
      v5 = v7;
    }
  }

  else
  {
    v5 = 0;
  }

  *(v4 + 48 * a2 + 24) = v5;
  return result;
}

void mdb_dbi_close(uint64_t a1, unsigned int a2)
{
  if (a2 >= 2 && *(a1 + 36) > a2)
  {
    v2 = *(a1 + 136);
    v3 = *(v2 + 48 * a2 + 8);
    if (v3)
    {
      v4 = (v2 + 48 * a2);
      *v4 = 0;
      v4[1] = 0;
      v5 = *(a1 + 152);
      *(*(a1 + 144) + 2 * a2) = 0;
      ++*(v5 + 4 * a2);
      free(v3);
    }
  }
}

uint64_t mdb_dbi_flags(uint64_t a1, unsigned int a2, int *a3)
{
  if (!a1 || *(a1 + 120) <= a2 || (*(*(a1 + 112) + a2) & 0x10) == 0)
  {
    return 22;
  }

  result = 0;
  *a3 = *(*(a1 + 88) + 48 * a2 + 4) & 0x7FFF;
  return result;
}

uint64_t mdb_drop(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v3 = 22;
  if (a1)
  {
    if (a3 <= 1 && *(a1 + 120) > a2)
    {
      v12 = 0;
      if ((*(*(a1 + 112) + a2) & 0x10) != 0)
      {
        if ((*(a1 + 126) & 2) != 0)
        {
          return 13;
        }

        else if (*(*(a1 + 96) + 4 * a2) == *(*(*(a1 + 32) + 152) + 4 * a2))
        {
          v3 = mdb_cursor_open(a1, a2, &v12);
          if (!v3)
          {
            v7 = mdb_drop0(v12, *(v12[5] + 4) & 4);
            v3 = v7;
            for (i = *(*(a1 + 104) + 8 * a2); i; i = *i)
            {
              *(i + 17) &= 0xFFFFFFFC;
            }

            if (v7)
            {
              goto LABEL_19;
            }

            if (a2 >= 2 && a3)
            {
              v3 = mdb_del0(a1, 1u, v12[6], 0, 2);
              if (!v3)
              {
                *(*(a1 + 112) + a2) = 2;
                mdb_dbi_close(*(a1 + 32), a2);
                goto LABEL_19;
              }

              v9 = *(a1 + 124) | 2;
            }

            else
            {
              v3 = 0;
              *(*(a1 + 112) + a2) |= 1u;
              v10 = *(a1 + 88) + 48 * a2;
              *(v10 + 38) = 0;
              *(v10 + 22) = 0u;
              *(v10 + 6) = 0u;
              *(v10 + 40) = -1;
              v9 = *(a1 + 124) | 4;
            }

            *(a1 + 124) = v9;
LABEL_19:
            mdb_cursor_close(v12);
          }
        }

        else
        {
          return 4294936516;
        }
      }
    }
  }

  return v3;
}

uint64_t mdb_set_compare(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (!a1 || *(a1 + 120) <= a2 || (*(*(a1 + 112) + a2) & 0x10) == 0)
  {
    return 22;
  }

  result = 0;
  *(*(a1 + 80) + 48 * a2 + 16) = a3;
  return result;
}

uint64_t mdb_set_dupsort(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (!a1 || *(a1 + 120) <= a2 || (*(*(a1 + 112) + a2) & 0x10) == 0)
  {
    return 22;
  }

  result = 0;
  *(*(a1 + 80) + 48 * a2 + 24) = a3;
  return result;
}

uint64_t mdb_set_relfunc(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (!a1 || *(a1 + 120) <= a2 || (*(*(a1 + 112) + a2) & 0x10) == 0)
  {
    return 22;
  }

  result = 0;
  *(*(a1 + 80) + 48 * a2 + 32) = a3;
  return result;
}

uint64_t mdb_set_relctx(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (!a1 || *(a1 + 120) <= a2 || (*(*(a1 + 112) + a2) & 0x10) == 0)
  {
    return 22;
  }

  result = 0;
  *(*(a1 + 80) + 48 * a2 + 40) = a3;
  return result;
}

uint64_t mdb_reader_pid(uint64_t a1, int a2, int a3)
{
  v5 = a3;
  v12 = 0x300000000;
  v10 = a3;
  v11 = 1;
  if (fcntl(*(a1 + 4), a2, &v10))
  {
    while (1)
    {
      result = *__error();
      if (result != 4)
      {
        break;
      }

      v11 = 1;
      v12 = 0x300000000;
      v7 = *(a1 + 4);
      v10 = v5;
      if (!fcntl(v7, a2, &v10))
      {
        goto LABEL_4;
      }
    }
  }

  else
  {
LABEL_4:
    v9 = a2 == 7 && WORD2(v12) != 2;
    return (v9 << 31 >> 31);
  }

  return result;
}

void mdb_dpage_free(uint64_t a1, void *a2)
{
  if ((*(a2 + 5) & 4) != 0 && *(a2 + 3) != 1)
  {
    free(a2);
  }

  else
  {
    *a2 = *(a1 + 192);
    *(a1 + 192) = a2;
  }
}

uint64_t mdb_page_search(uint64_t a1, void *a2, char a3)
{
  v4 = *(a1 + 24);
  if ((*(v4 + 124) & 0x13) != 0)
  {
    return 4294936514;
  }

  if ((**(a1 + 56) & 2) == 0)
  {
    goto LABEL_5;
  }

  v18 = 0;
  memset(v17, 0, sizeof(v17));
  if (*(*(v4 + 96) + 4 * *(a1 + 32)) != *(*(*(v4 + 32) + 152) + 4 * *(a1 + 32)))
  {
    return 4294936516;
  }

  mdb_cursor_init(v17, v4, 1u, 0);
  result = mdb_page_search(v17, *(a1 + 48), 0);
  if (!result)
  {
    v15 = 0;
    v16 = 0;
    v14 = 0;
    v10 = mdb_node_search(v17, *(a1 + 48), &v14);
    if (!v14)
    {
      return 4294936498;
    }

    if ((*(v10 + 2) & 6) != 2)
    {
      return 4294936512;
    }

    result = mdb_node_read(v17, v10, &v15);
    if (result)
    {
      return result;
    }

    v11 = *(a1 + 40);
    if ((*(v11 + 4) & 0x7FFF) != *(v16 + 2))
    {
      return 4294936512;
    }

    v12 = *v16;
    v13 = v16[2];
    *(v11 + 16) = v16[1];
    *(v11 + 32) = v13;
    *v11 = v12;
    **(a1 + 56) &= ~2u;
LABEL_5:
    v8 = *(*(a1 + 40) + 40);
    if (v8 != -1)
    {
      v9 = *(a1 + 72);
      if (v9 && *v9 == v8 || (result = mdb_page_get(a1, v8, (a1 + 72), 0), !result))
      {
        *(a1 + 64) = 1;
        if ((a3 & 1) == 0 || (result = mdb_page_touch(a1), !result))
        {
          if ((a3 & 2) != 0)
          {
            return 0;
          }

          else
          {
            return mdb_page_search_root(a1, a2, a3);
          }
        }
      }

      return result;
    }

    return 4294936498;
  }

  return result;
}

char *mdb_node_search(uint64_t a1, void *a2, int *a3)
{
  v5 = *(a1 + 8 * *(a1 + 66) + 72);
  v19 = 0;
  v20 = 0;
  v6 = v5[6] - 16;
  v7 = v6 >> 1;
  v8 = v5[5];
  v9 = ((v8 >> 1) & 1) == 0;
  v10 = (v6 >> 1) - 1;
  v11 = *(*(a1 + 48) + 16);
  if (v11 == mdb_cmp_cint)
  {
    if (v8)
    {
      if (*(v5 + v5[9] + 6) == 8)
      {
        v11 = mdb_cmp_long;
      }

      else
      {
        v11 = mdb_cmp_int;
      }

      if ((v8 & 0x20) == 0)
      {
        goto LABEL_3;
      }
    }

    else
    {
      v11 = mdb_cmp_cint;
      if ((v8 & 0x20) == 0)
      {
        goto LABEL_3;
      }
    }
  }

  else if ((v8 & 0x20) == 0)
  {
LABEL_3:
    if (v9 < v7)
    {
      v17 = v5[6] - 16;
      v18 = a3;
      while (1)
      {
        LODWORD(v12) = (v10 + v9) >> 1;
        v13 = v5 + *(v5 + (2 * v12) + 16);
        v19 = *(v13 + 3);
        v20 = (v13 + 8);
        v14 = v11(a2, &v19);
        if (!v14)
        {
          goto LABEL_30;
        }

        if (v14 <= 0)
        {
          v10 = v12 - 1;
        }

        else
        {
          v9 = v12 + 1;
        }

        if (v9 > v10)
        {
          goto LABEL_26;
        }
      }
    }

    LODWORD(v12) = 0;
    v13 = 0;
    goto LABEL_33;
  }

  v19 = **(a1 + 40);
  v13 = v5 + v5[8];
  if (v9 < v7)
  {
    v17 = v6;
    v18 = a3;
    while (1)
    {
      v12 = (v10 + v9) >> 1;
      v20 = v5 + v19 * v12 + 16;
      v14 = v11(a2, &v19);
      if (!v14)
      {
        break;
      }

      if (v14 <= 0)
      {
        v10 = v12 - 1;
      }

      else
      {
        v9 = v12 + 1;
      }

      if (v9 > v10)
      {
LABEL_26:
        a3 = v18;
        v6 = v17;
        if (v14 < 1 || (LODWORD(v12) = v12 + 1, (v5[5] & 0x20) != 0))
        {
          v15 = 0;
          if (v18)
          {
            goto LABEL_34;
          }
        }

        else
        {
          v15 = 0;
          v13 = v5 + v5[v12 + 8];
          if (v18)
          {
            goto LABEL_34;
          }
        }

        goto LABEL_37;
      }
    }

LABEL_30:
    v15 = 1;
    a3 = v18;
    v6 = v17;
    if (!v18)
    {
      goto LABEL_37;
    }

    goto LABEL_34;
  }

  LODWORD(v12) = 0;
LABEL_33:
  v15 = 1;
  if (!a3)
  {
    goto LABEL_37;
  }

LABEL_34:
  if (v6 <= 1)
  {
    v15 = 0;
  }

  *a3 = v15;
LABEL_37:
  *(a1 + 2 * *(a1 + 66) + 328) = v12;
  if (v12 >= v7)
  {
    return 0;
  }

  else
  {
    return v13;
  }
}

uint64_t mdb_page_touch(uint64_t a1)
{
  v2 = a1 + 72;
  v3 = *(a1 + 72 + 8 * *(a1 + 66));
  __dst = 0;
  v4 = *(a1 + 24);
  v5 = *(v3 + 10);
  if ((v5 & 0x10) == 0)
  {
    if ((*(v4 + 124) & 8) != 0)
    {
      result = mdb_page_unspill(*(a1 + 24), v3, &__dst);
      if (result)
      {
        goto LABEL_15;
      }

      v7 = __dst;
      if (__dst)
      {
LABEL_20:
        v16 = *(a1 + 66);
        *(v2 + 8 * v16) = v7;
        v17 = *(*(v4 + 104) + 8 * *(a1 + 32));
        if ((*(a1 + 68) & 4) != 0)
        {
          if (v17)
          {
            v21 = *(a1 + 64);
            do
            {
              v22 = v17[2];
              if (*(v22 + 64) >= v21)
              {
                v23 = v22 + 72;
                if (*(v23 + 8 * v16) == v3)
                {
                  *(v23 + 8 * v16) = v7;
                }
              }

              v17 = *v17;
            }

            while (v17);
          }
        }

        else if (v17)
        {
          v18 = *(a1 + 64);
          do
          {
            if (v17 != a1 && *(v17 + 32) >= v18 && v17[v16 + 9] == v3)
            {
              v17[v16 + 9] = v7;
              if ((*(v7 + 5) & 2) != 0)
              {
                v19 = v17[2];
                if (v19)
                {
                  if ((*(v19 + 68) & 1) != 0 && *(v17 + v16 + 164) < (*(v7 + 6) - 16) >> 1)
                  {
                    v20 = &v7[*&v7[2 * *(v17 + v16 + 164) + 16]];
                    if ((*(v20 + 2) & 6) == 4)
                    {
                      *(v19 + 72) = &v20[*(v20 + 3) + 8];
                    }
                  }
                }
              }
            }

            v17 = *v17;
          }

          while (v17);
        }

        return 0;
      }
    }

    result = mdb_midl_need((v4 + 40), 1);
    if (!result)
    {
      result = mdb_page_alloc(a1, 1, &__dst);
      if (!result)
      {
        v7 = __dst;
        v8 = *__dst;
        v9 = *(v4 + 40);
        v10 = *v9 + 1;
        *v9 = v10;
        v9[v10] = *v3;
        if (*(a1 + 66))
        {
          v11 = *(v2 + 8 * (*(a1 + 66) - 1)) + *(*(v2 + 8 * (*(a1 + 66) - 1)) + 2 * *(a1 + 2 * (*(a1 + 66) - 1) + 328) + 16);
          *v11 = v8;
          *(v11 + 4) = WORD2(v8);
        }

        else
        {
          *(*(a1 + 40) + 40) = v8;
        }

        goto LABEL_18;
      }
    }

LABEL_15:
    *(v4 + 124) |= 2u;
    return result;
  }

  result = 0;
  if ((v5 & 0x40) == 0 && *v4)
  {
    v12 = *(v4 + 72);
    v8 = *v3;
    if (*v12)
    {
      v13 = mdb_mid2l_search(*(v4 + 72), *v3);
      if (*v12 >= v13)
      {
        v14 = &v12[4 * v13];
        if (*v14 == v8)
        {
          if (v3 != *(v14 + 1))
          {
            *(a1 + 68) &= 0xFFFFFFFC;
            *(v4 + 124) |= 2u;
            return 4294936517;
          }

          return 0;
        }
      }
    }

    v15 = mdb_page_malloc(v4, 1u);
    if (v15)
    {
      v7 = v15;
      v24[0] = v8;
      v24[1] = v15;
      mdb_mid2l_insert(v12, v24);
LABEL_18:
      mdb_page_copy(v7, v3, *(*(v4 + 32) + 16));
      *v7 = v8;
      *(v7 + 5) |= 0x10u;
      goto LABEL_20;
    }

    return 12;
  }

  return result;
}

uint64_t mdb_page_search_root(uint64_t a1, void *a2, char a3)
{
  v4 = a1 + 72;
  v5 = *(a1 + 66);
  v6 = *(a1 + 72 + 8 * v5);
  v16 = v6;
  v7 = *(v6 + 10);
  if (v7)
  {
    v10 = a3 & 0xC;
    v11 = a1 + 328;
    do
    {
      if (v10)
      {
        if ((a3 & 8) != 0)
        {
          v12 = ((*(v6 + 12) + 131056) >> 1) - 1;
          if ((*(a1 + 68) & 1) != 0 && *(v11 + 2 * v5) == v12)
          {
            v5 = *(a1 + 64);
            *(a1 + 64) = v5 + 1;
            *(a1 + 66) = v5;
            v6 = *(v4 + 8 * v5);
            v16 = v6;
            if (a3)
            {
              goto LABEL_16;
            }

            goto LABEL_18;
          }
        }

        else
        {
          LOWORD(v12) = 0;
        }
      }

      else
      {
        v15 = 0;
        if (mdb_node_search(a1, a2, &v15))
        {
          LOWORD(v12) = *(v11 + 2 * *(a1 + 66)) - (v15 == 0);
        }

        else
        {
          v12 = ((*(v6 + 12) + 131056) >> 1) - 1;
        }
      }

      v13 = (v6 + *(v6 + 2 * v12 + 16));
      result = mdb_page_get(a1, *v13 | (*(v13 + 2) << 32), &v16, 0);
      if (result)
      {
        return result;
      }

      *(v11 + 2 * *(a1 + 66)) = v12;
      v5 = *(a1 + 64);
      if (v5 > 0x1F)
      {
        *(*(a1 + 24) + 124) |= 2u;
        return 4294936509;
      }

      v6 = v16;
      *(a1 + 64) = v5 + 1;
      *(a1 + 66) = v5;
      *(v4 + 8 * v5) = v6;
      *(v11 + 2 * v5) = 0;
      if (a3)
      {
LABEL_16:
        result = mdb_page_touch(a1);
        if (result)
        {
          return result;
        }

        v5 = *(a1 + 66);
        v6 = *(v4 + 8 * v5);
        v16 = v6;
      }

LABEL_18:
      v7 = *(v6 + 10);
    }

    while ((v7 & 1) != 0);
  }

  if ((v7 & 2) != 0)
  {
    result = 0;
    *(a1 + 68) = *(a1 + 68) & 0xFFFFFFFC | 1;
  }

  else
  {
    *(*(a1 + 24) + 124) |= 2u;
    return 4294936500;
  }

  return result;
}

void *mdb_page_copy(char *__dst, _WORD *__src, int a3)
{
  v4 = __src;
  v5 = __dst;
  v6 = __src[7];
  v7 = __src[6];
  if (((v6 - v7) & 0xFFF8) == 0 || (__src[5] & 0x20) != 0)
  {
    v9 = a3 - ((v6 - v7) & 0xFFF8u);
  }

  else
  {
    v8 = v6 & 0xFFF8;
    memcpy(__dst, __src, (v7 + 7) & 0x1FFF8);
    v9 = (a3 - v8);
    __dst = &v5[v8];
    __src = (v4 + v8);
  }

  return memcpy(__dst, __src, v9);
}

uint64_t mdb_env_reader_dest(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = getpid();
  if (v2 == result)
  {
    *(a1 + 8) = 0;
  }

  return result;
}

uint64_t mdb_pages_xkeep(uint64_t a1, int a2, int a3)
{
  v5 = *(a1 + 24);
  v27 = 0;
  v26 = 0;
  v6 = *(v5 + 120);
  v7 = v6;
  v8 = a1;
  do
  {
LABEL_2:
    if (*(v8 + 68))
    {
      v12 = v8;
      do
      {
        v13 = *(v12 + 64);
        if (*(v12 + 64))
        {
          v14 = 0;
          do
          {
            v15 = *(v12 + 72 + 8 * v14);
            v16 = *(v15 + 10);
            if ((v16 & 0xC050) == a2)
            {
              *(v15 + 10) = v16 ^ 0x8000;
            }

            ++v14;
          }

          while (v13 != v14);
          v17 = v14 - 1;
        }

        else
        {
          v15 = 0;
          v17 = 0xFFFFFFFFLL;
        }

        v18 = *(v12 + 16);
        if (!v18)
        {
          break;
        }

        if (!v15)
        {
          break;
        }

        if ((*(v18 + 68) & 1) == 0)
        {
          break;
        }

        if ((*(v15 + 10) & 2) == 0)
        {
          break;
        }

        v19 = *(v15 + *(v15 + 2 * *(v12 + 2 * v17 + 328) + 16) + 4);
        v12 = *(v12 + 16);
      }

      while ((v19 & 2) != 0);
    }

    v8 = *v8;
    if (v8)
    {
      v9 = v8 == a1;
    }

    else
    {
      v9 = 1;
    }
  }

  while (!v9);
  v10 = 8 * v7 - 8;
  while (v10 != -8)
  {
    v8 = *(*(v5 + 104) + v10);
    v10 -= 8;
    --v7;
    if (v8)
    {
      v11 = v8 == a1;
    }

    else
    {
      v11 = 1;
    }

    if (!v11)
    {
      goto LABEL_2;
    }
  }

  result = 0;
  if (a3 && v6)
  {
    v21 = 0;
    v22 = 40;
    do
    {
      if (*(*(v5 + 112) + v21))
      {
        v23 = *(*(v5 + 88) + v22);
        if (v23 != -1)
        {
          result = mdb_page_get(a1, v23, &v27, &v26);
          if (result)
          {
            return result;
          }

          v24 = *(v27 + 10);
          if ((v24 & 0xC050) == a2 && v26 <= 1)
          {
            *(v27 + 10) = v24 ^ 0x8000;
          }
        }
      }

      ++v21;
      v22 += 48;
    }

    while (v21 < *(v5 + 120));
    return 0;
  }

  return result;
}

unint64_t mdb_find_oldest(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = *(a1 + 24) - 1;
  v3 = *(v1 + 64);
  if (v3)
  {
    v4 = *(v3 + 16);
    if (v4 >= 1)
    {
      v5 = v4 + 1;
      v6 = v3 + (v4 << 6) + 136;
      v7 = v6;
      do
      {
        v8 = *v7;
        v7 -= 16;
        if (v8)
        {
          v9 = *(v6 - 8);
          if (result >= v9)
          {
            result = v9;
          }
        }

        --v5;
        v6 = v7;
      }

      while (v5 > 1);
    }
  }

  return result;
}

uint64_t mdb_rebalance(uint64_t a1)
{
  v122 = 0;
  memset(v121, 0, sizeof(v121));
  v119 = 0u;
  v120 = 0u;
  v117 = 0u;
  v118 = 0u;
  v2 = (a1 + 72);
  v3 = *(a1 + 66);
  v4 = *(a1 + 72 + 8 * v3);
  if (v4[5])
  {
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  if (v4[5])
  {
    v6 = 1;
  }

  else
  {
    v6 = 250;
  }

  v7 = *(a1 + 24);
  v8 = (*(*(v7 + 32) + 16) - 16);
  v9 = v4[7];
  v10 = v4[6];
  if (1000 * (v8 - (v9 - v10)) / v8 >= v6 && v5 <= (v10 - 16) >> 1)
  {
    return 0;
  }

  if (*(a1 + 64) > 1u)
  {
    v21 = v3 - 1;
    mdb_cursor_copy(a1, &v117);
    *&v118 = 0;
    v22 = a1 + 328;
    v116 = *(a1 + 328 + 2 * v3);
    v23 = *(a1 + 328 + 2 * (v3 - 1));
    v24 = *(&v121[16] + (v3 - 1) + 4);
    if (*(a1 + 328 + 2 * (v3 - 1)))
    {
      v25 = v24 - 1;
      *(&v121[16] + v21 + 4) = v25;
      v26 = (v2[v21] + *(v2[v21] + 2 * v25 + 16));
      v15 = mdb_page_get(a1, *v26 | (*(v26 + 2) << 32), v121 + WORD1(v121[0]) + 1, 0);
      if (v15)
      {
        return v15;
      }

      LOWORD(v27) = 0;
      v28 = WORD1(v121[0]);
      *(&v121[16] + WORD1(v121[0]) + 4) = ((*(*(v121 + WORD1(v121[0]) + 1) + 12) + 131056) >> 1) - 1;
      v29 = *(a1 + 66);
    }

    else
    {
      v30 = v24 + 1;
      *(&v121[16] + v21 + 4) = v30;
      v31 = (v2[v21] + *(v2[v21] + 2 * v30 + 16));
      v15 = mdb_page_get(a1, *v31 | (*(v31 + 2) << 32), v121 + WORD1(v121[0]) + 1, 0);
      if (v15)
      {
        return v15;
      }

      v28 = WORD1(v121[0]);
      *(&v121[16] + WORD1(v121[0]) + 4) = 0;
      v29 = *(a1 + 66);
      v27 = (*(v2[v29] + 12) + 131056) >> 1;
    }

    *(v22 + 2 * v29) = v27;
    v32 = (*(*(*(a1 + 24) + 32) + 16) - 16);
    v33 = *(v121 + v28 + 1);
    v34 = *(v33 + 14);
    v35 = *(v33 + 12);
    if (1000 * (v32 - (v34 - v35)) / v32 < v6 || v5 >= (v35 - 16) >> 1)
    {
      if (v23)
      {
        *(&v121[16] + v28 + 4) += *(v22 + 2 * v28) + 1;
        v172 = 0;
        v47 = v116 + ((v35 + 131056) >> 1);
        v171 = 0u;
        v170 = 0u;
        v169 = 0u;
        v168 = 0u;
        v167 = 0u;
        v166 = 0u;
        v165 = 0u;
        v164 = 0u;
        v163 = 0u;
        v162 = 0u;
        v160 = 0u;
        v161 = 0u;
        v158 = 0u;
        v159 = 0u;
        v156 = 0u;
        v157 = 0u;
        v154 = 0u;
        v155 = 0u;
        v152 = 0u;
        v153 = 0u;
        v150 = 0u;
        v151 = 0u;
        v148 = 0u;
        v149 = 0u;
        v48 = *(*(&v118 + 1) + 104);
        v49 = v119;
        v50 = &v117;
        if ((BYTE4(v121[0]) & 4) != 0)
        {
          DWORD1(v152) = 1;
          *&v149 = &v117;
          v50 = &v148;
        }

        *v50 = *(v48 + 8 * v119);
        *(v48 + 8 * v49) = v50;
        v20 = mdb_page_merge(a1, &v117);
        *(v48 + 8 * v49) = *v50;
        mdb_cursor_copy(&v117, a1);
      }

      else
      {
        v20 = mdb_page_merge(&v117, a1);
        LOWORD(v47) = v116;
      }

      *(a1 + 68) &= ~2u;
      goto LABEL_77;
    }

    updated = mdb_page_touch(&v117);
    if (updated)
    {
      goto LABEL_73;
    }

    updated = mdb_page_touch(a1);
    if (updated)
    {
      goto LABEL_73;
    }

    v175 = 0;
    v176 = 0;
    v148 = 0u;
    v149 = 0u;
    v150 = 0u;
    v151 = 0u;
    v152 = 0u;
    v153 = 0u;
    v154 = 0u;
    v155 = 0u;
    v156 = 0u;
    v157 = 0u;
    v158 = 0u;
    v159 = 0u;
    v160 = 0u;
    v161 = 0u;
    v162 = 0u;
    v163 = 0u;
    v164 = 0u;
    v165 = 0u;
    v166 = 0u;
    v167 = 0u;
    v168 = 0u;
    v169 = 0u;
    v170 = 0u;
    v171 = 0u;
    v172 = 0;
    v37 = *(v121 + WORD1(v121[0]) + 1);
    v38 = *(v37 + 10);
    if ((v38 & 0x20) != 0)
    {
      LODWORD(v41) = 0;
      v59 = 0;
      v60 = v37 + *(&v121[16] + WORD1(v121[0]) + 4) * **(&v119 + 1) + 16;
      v175 = **(&v119 + 1);
      v176 = v60;
      v173 = 0;
      v174 = 0;
    }

    else
    {
      v39 = (v37 + *(v37 + 2 * *(&v121[16] + WORD1(v121[0]) + 4) + 16));
      v40 = *v39;
      v41 = *(v39 + 2);
      if ((v38 & 1) == 0 || *(&v121[16] + WORD1(v121[0]) + 4))
      {
        v61 = *(v39 + 3);
        v175 = v61;
        v176 = v39 + 2;
      }

      else
      {
        v115 = *v39;
        v42 = v121[0];
        updated = mdb_page_search_lowest(&v117);
        if (updated)
        {
          goto LABEL_73;
        }

        v43 = *(v121 + WORD1(v121[0]) + 1);
        if ((*(v43 + 10) & 0x20) != 0)
        {
          v45 = **(&v119 + 1);
          v46 = (v43 + 16);
        }

        else
        {
          v44 = v43 + *(v43 + 16);
          v45 = *(v44 + 6);
          v46 = (v44 + 8);
        }

        v40 = v115;
        v175 = v45;
        v176 = v46;
        LOWORD(v121[0]) = v42;
        WORD1(v121[0]) = v42 - 1;
        v61 = *(v39 + 3);
      }

      v59 = v40 | (v41 << 32);
      v173 = *v39;
      v174 = v39 + v61 + 8;
    }

    *&v149 = 0;
    v62 = *(a1 + 66);
    if ((*(v2[v62] + 10) & 1) != 0 && !*(v22 + 2 * v62))
    {
      v77 = *(a1 + 64);
      v123 = 0uLL;
      mdb_cursor_copy(a1, &v148);
      updated = mdb_page_search_lowest(&v148);
      if (updated)
      {
        goto LABEL_73;
      }

      v78 = *(&v152 + WORD1(v152) + 1);
      if ((*(v78 + 10) & 0x20) != 0)
      {
        v80 = **(&v150 + 1);
        v81 = v78 + 16;
      }

      else
      {
        v79 = v78 + *(v78 + 16);
        v80 = *(v79 + 6);
        v81 = v79 + 8;
      }

      *&v123 = v80;
      *(&v123 + 1) = v81;
      LOWORD(v152) = v77;
      WORD1(v152) = v77 - 1;
      *(&v168 + (v77 - 1) + 4) = 0;
      updated = mdb_update_key(&v148, &v123);
      if (updated)
      {
        goto LABEL_73;
      }

      v62 = *(a1 + 66);
    }

    updated = mdb_node_add(a1, *(v22 + 2 * v62), &v175, &v173, v59, v41);
    if (updated)
    {
LABEL_73:
      v20 = updated;
LABEL_74:
      LOWORD(v47) = v116;
      goto LABEL_75;
    }

    mdb_node_del(&v117, v175);
    v64 = *(v121 + WORD1(v121[0]) + 1);
    if (v23)
    {
      v65 = *(*(*(&v118 + 1) + 104) + 8 * v119);
      if (v65)
      {
        v66 = v2[WORD1(v121[0])];
        v67 = BYTE4(v121[0]);
        do
        {
          v68 = v65;
          if ((v67 & 4) != 0)
          {
            v68 = *(v65 + 2);
          }

          if ((*(v68 + 68) & 1) != 0 && *(v68 + 33) >= WORD1(v121[0]))
          {
            if (v68 != a1 && *(v68 + WORD1(v121[0]) + 9) == v66)
            {
              v69 = *(v68 + WORD1(v121[0]) + 164);
              if (v69 >= *(v22 + 2 * WORD1(v121[0])))
              {
                *(v68 + WORD1(v121[0]) + 164) = v69 + 1;
              }
            }

            if (v68 != &v117)
            {
              v70 = WORD1(v121[0]);
              if (*(v68 + WORD1(v121[0]) + 9) == v64)
              {
                v71 = v68 + 41;
                if (*(v68 + WORD1(v121[0]) + 164) == *(&v121[16] + WORD1(v121[0]) + 4))
                {
                  v72 = *(a1 + 66);
                  *(v68 + WORD1(v121[0]) + 9) = v2[v72];
                  *(v71 + v70) = *(v22 + 2 * v72);
                  ++*(v71 + WORD1(v121[0]) - 1);
                }
              }
            }

            if ((*(v64 + 10) & 2) != 0)
            {
              v73 = *(v68 + 2);
              if (v73)
              {
                if (*(v73 + 68))
                {
                  v74 = *(v68 + WORD1(v121[0]) + 9);
                  v75 = *(v68 + WORD1(v121[0]) + 164);
                  if (v75 < (*(v74 + 12) - 16) >> 1)
                  {
                    v76 = v74 + *(v74 + 2 * v75 + 16);
                    if ((*(v76 + 4) & 6) == 4)
                    {
                      *(v73 + 72) = v76 + *(v76 + 6) + 8;
                    }
                  }
                }
              }
            }
          }

          v65 = *v65;
        }

        while (v65);
      }
    }

    else
    {
      v82 = *(*(*(&v118 + 1) + 104) + 8 * v119);
      if (v82)
      {
        v83 = BYTE4(v121[0]);
        do
        {
          v84 = v82;
          if ((v83 & 4) != 0)
          {
            v84 = *(v82 + 2);
          }

          if (v84 != &v117 && (*(v84 + 68) & 1) != 0)
          {
            v85 = WORD1(v121[0]);
            if (*(v84 + 33) >= WORD1(v121[0]))
            {
              v86 = v84 + 9;
              if (*(v84 + WORD1(v121[0]) + 9) == v64)
              {
                v87 = v84 + 41;
                v88 = v84 + WORD1(v121[0]) + 164;
                v89 = *v88;
                if (!*v88)
                {
                  v90 = *(a1 + 66);
                  v86[WORD1(v121[0])] = v2[v90];
                  *(v87 + v85) = *(v22 + 2 * v90);
                  v91 = v87 + 2 * WORD1(v121[0]);
                  v92 = *(v91 - 2);
                  v88 = (v91 - 2);
                  v89 = v92;
                }

                *v88 = v89 - 1;
                if ((*(v64 + 10) & 2) != 0)
                {
                  v93 = *(v84 + 2);
                  if (v93)
                  {
                    if (*(v93 + 68))
                    {
                      v94 = v86[WORD1(v121[0])];
                      v95 = *(v87 + WORD1(v121[0]));
                      if (v95 < (*(v94 + 12) - 16) >> 1)
                      {
                        v96 = v94 + *(v94 + 2 * v95 + 16);
                        if ((*(v96 + 4) & 6) == 4)
                        {
                          *(v93 + 72) = v96 + *(v96 + 6) + 8;
                        }
                      }
                    }
                  }
                }
              }
            }
          }

          v82 = *v82;
        }

        while (v82);
      }
    }

    v97 = WORD1(v121[0]);
    if (!*(&v121[16] + WORD1(v121[0]) + 4))
    {
      if (*(&v121[16] + WORD1(v121[0]) + 3))
      {
        v99 = *(v121 + WORD1(v121[0]) + 1);
        if ((*(v99 + 10) & 0x20) != 0)
        {
          v101 = (v99 + 16);
        }

        else
        {
          v100 = v99 + *(v99 + 16);
          v175 = *(v100 + 6);
          v101 = (v100 + 8);
        }

        v176 = v101;
        v106 = &v148;
        mdb_cursor_copy(&v117, &v148);
        LOWORD(v152) = v152 - 1;
        --WORD1(v152);
        v147 = 0;
        v145 = 0u;
        v146 = 0u;
        v143 = 0u;
        v144 = 0u;
        v141 = 0u;
        v142 = 0u;
        v139 = 0u;
        v140 = 0u;
        v137 = 0u;
        v138 = 0u;
        v135 = 0u;
        v136 = 0u;
        v133 = 0u;
        v134 = 0u;
        v131 = 0u;
        v132 = 0u;
        v129 = 0u;
        v130 = 0u;
        v127 = 0u;
        v128 = 0u;
        v125 = 0u;
        v126 = 0u;
        v123 = 0u;
        v124 = 0u;
        v107 = *(*(&v149 + 1) + 104);
        v108 = v150;
        if ((BYTE4(v152) & 4) != 0)
        {
          DWORD1(v127) = 1;
          *&v124 = &v148;
          v106 = &v123;
        }

        *v106 = *(v107 + 8 * v150);
        *(v107 + 8 * v108) = v106;
        updated = mdb_update_key(&v148, &v175);
        *(v107 + 8 * v108) = *v106;
        if (updated)
        {
          goto LABEL_73;
        }

        v97 = WORD1(v121[0]);
      }

      if (*(*(v121 + v97 + 1) + 10))
      {
        v109 = *(&v121[16] + v97 + 4);
        v123 = 0uLL;
        *(&v121[16] + v97 + 4) = 0;
        mdb_update_key(&v117, &v123);
        LODWORD(v97) = WORD1(v121[0]);
        *(&v121[16] + WORD1(v121[0]) + 4) = v109;
      }
    }

    v98 = *(a1 + 66);
    if (*(v22 + 2 * v98))
    {
      v20 = 0;
      goto LABEL_74;
    }

    if (*(v22 + 2 * v98 - 2))
    {
      v102 = *(*(v121 + v97 + 1) + 10);
      v103 = v2[v98];
      if ((v102 & 0x20) != 0)
      {
        v105 = (v103 + 16);
      }

      else
      {
        v104 = v103 + *(v103 + 16);
        v175 = *(v104 + 6);
        v105 = (v104 + 8);
      }

      LOWORD(v47) = v116;
      v176 = v105;
      v110 = &v148;
      mdb_cursor_copy(a1, &v148);
      LOWORD(v152) = v152 - 1;
      --WORD1(v152);
      v147 = 0;
      v145 = 0u;
      v146 = 0u;
      v143 = 0u;
      v144 = 0u;
      v141 = 0u;
      v142 = 0u;
      v139 = 0u;
      v140 = 0u;
      v137 = 0u;
      v138 = 0u;
      v135 = 0u;
      v136 = 0u;
      v133 = 0u;
      v134 = 0u;
      v131 = 0u;
      v132 = 0u;
      v129 = 0u;
      v130 = 0u;
      v127 = 0u;
      v128 = 0u;
      v125 = 0u;
      v126 = 0u;
      v123 = 0u;
      v124 = 0u;
      v111 = *(*(&v149 + 1) + 104);
      v112 = v150;
      if ((BYTE4(v152) & 4) != 0)
      {
        DWORD1(v127) = 1;
        *&v124 = &v148;
        v110 = &v123;
      }

      *v110 = *(v111 + 8 * v150);
      *(v111 + 8 * v112) = v110;
      v113 = mdb_update_key(&v148, &v175);
      *(v111 + 8 * v112) = *v110;
      if (v113)
      {
        v20 = v113;
        goto LABEL_75;
      }

      v98 = *(a1 + 66);
    }

    else
    {
      LOWORD(v47) = v116;
    }

    if (*(v2[v98] + 10))
    {
      v114 = *(v22 + 2 * v98);
      v123 = 0uLL;
      *(v22 + 2 * v98) = 0;
      mdb_update_key(a1, &v123);
      v20 = 0;
      *(v22 + 2 * *(a1 + 66)) = v114;
    }

    else
    {
      v20 = 0;
    }

LABEL_75:
    if (v23)
    {
      LOWORD(v47) = v47 + 1;
    }

LABEL_77:
    *(v22 + 2 * *(a1 + 66)) = v47;
    return v20;
  }

  v11 = *v2;
  v12 = *(*v2 + 10);
  if ((v12 & 0x40) != 0)
  {
    return 0;
  }

  v13 = *(v11 + 12) - 16;
  if (v13 <= 1)
  {
    v14 = *(a1 + 40);
    *(v14 + 40) = -1;
    *(v14 + 6) = 0;
    *(v14 + 16) = 0;
    v15 = mdb_midl_append((v7 + 40), *v11);
    if (!v15)
    {
      v16 = *(a1 + 68) & 0xFFFFFFFE;
      *(a1 + 64) = 0;
      *(a1 + 68) = v16;
      v17 = *(*(*(a1 + 24) + 104) + 8 * *(a1 + 32));
      if (v17)
      {
        do
        {
          v18 = v17;
          if ((*(a1 + 68) & 4) != 0)
          {
            v18 = v17[2];
          }

          v19 = *(v18 + 17);
          if ((v19 & 1) != 0 && *(v18 + 32) >= *(a1 + 64) && v18[9] == v11)
          {
            *(v18 + 16) = 0;
            *(v18 + 17) = v19 & 0xFFFFFFFE;
          }

          v20 = 0;
          v17 = *v17;
        }

        while (v17);
        return v20;
      }

      return 0;
    }

    return v15;
  }

  v20 = 0;
  if ((v12 & 1) == 0 || (v13 & 0xFFFFFFFE) != 2)
  {
    return v20;
  }

  v15 = mdb_midl_append((v7 + 40), *v11);
  if (v15)
  {
    return v15;
  }

  v51 = *(v11 + *(v11 + 16)) | (*(v11 + *(v11 + 16) + 4) << 32);
  *(*(a1 + 40) + 40) = v51;
  v15 = mdb_page_get(a1, v51, v2, 0);
  if (v15)
  {
    return v15;
  }

  v52 = *(a1 + 40);
  --*(v52 + 6);
  --*(v52 + 8);
  *(a1 + 328) = *(a1 + 330);
  if (*(v52 + 6) >= 2u)
  {
    v53 = 0;
    do
    {
      *(a1 + 8 * v53 + 80) = *(a1 + 8 * v53 + 88);
      *(a1 + 2 * v53 + 330) = *(a1 + 2 * v53 + 332);
      v54 = v53 + 2;
      ++v53;
    }

    while (v54 < *(v52 + 6));
  }

  v55 = *(*(*(a1 + 24) + 104) + 8 * *(a1 + 32));
  if (!v55)
  {
    return 0;
  }

  v56 = *(a1 + 68);
  do
  {
    v57 = v55;
    if ((v56 & 4) != 0)
    {
      v57 = v55[2];
    }

    if (v57 != a1 && (*(v57 + 68) & 1) != 0 && v57[9] == v11)
    {
      if (*(v52 + 6))
      {
        v58 = 0;
        do
        {
          v57[v58 + 9] = v57[v58 + 10];
          *(v57 + v58 + 164) = *(v57 + v58 + 165);
          v52 = *(a1 + 40);
          ++v58;
        }

        while (v58 < *(v52 + 6));
      }

      --*(v57 + 32);
      --*(v57 + 33);
    }

    v20 = 0;
    v55 = *v55;
  }

  while (v55);
  return v20;
}

uint64_t mdb_cursor_copy(uint64_t result, uint64_t a2)
{
  *(a2 + 24) = *(result + 24);
  *(a2 + 32) = *(result + 32);
  *(a2 + 40) = *(result + 40);
  v2 = *(result + 64);
  *(a2 + 64) = v2;
  *(a2 + 66) = *(result + 66);
  *(a2 + 68) = *(result + 68);
  if (v2)
  {
    v3 = 0;
    v4 = result + 328;
    v5 = a2 + 328;
    do
    {
      v6 = *(v4 + 2 * v3);
      *(v5 + 8 * v3 - 256) = *(v4 + 8 * v3 - 256);
      *(v5 + 2 * v3++) = v6;
    }

    while (v3 < *(result + 64));
  }

  return result;
}

uint64_t mdb_page_merge(uint64_t a1, uint64_t a2)
{
  v50 = 0;
  v51 = 0;
  v4 = a1 + 72;
  v5 = *(a1 + 72 + 8 * *(a1 + 66));
  result = mdb_page_touch(a2);
  if (result)
  {
    return result;
  }

  v52 = 0;
  v53 = 0;
  v7 = *(a2 + 8 * *(a2 + 66) + 72);
  v43 = *(v7 + 12) + 131056;
  if ((*(v5 + 10) & 0x20) == 0)
  {
    if ((*(v5 + 12) & 0xFFFE) != 0x10)
    {
      v8 = 0;
      v9 = v43 >> 1;
      do
      {
        v10 = (v5 + *(v5 + 16 + 2 * v8));
        if (!v8 && (*(v5 + 10) & 1) != 0)
        {
          v49 = 0;
          memset(v48, 0, sizeof(v48));
          v46 = 0u;
          v47 = 0u;
          v44 = 0u;
          v45 = 0u;
          mdb_cursor_copy(a1, &v44);
          *&v45 = 0;
          result = mdb_page_search_lowest(&v44);
          if (result)
          {
            return result;
          }

          v12 = *(v48 + WORD1(v48[0]) + 1);
          if ((*(v12 + 10) & 0x20) != 0)
          {
            v52 = **(&v46 + 1);
            v14 = (v12 + 16);
          }

          else
          {
            v13 = v12 + *(v12 + 16);
            v52 = *(v13 + 6);
            v14 = (v13 + 8);
          }

          v53 = v14;
          v11 = *(v10 + 3);
        }

        else
        {
          v11 = *(v10 + 3);
          v52 = v11;
          v53 = v10 + 2;
        }

        v50 = *v10;
        v51 = v10 + v11 + 8;
        result = mdb_node_add(a2, v9, &v52, &v50, v50 | (*(v10 + 2) << 32), *(v10 + 2));
        if (result)
        {
          return result;
        }

        ++v8;
        LOWORD(v9) = v9 + 1;
      }

      while ((*(v5 + 12) - 16) >> 1 > v8);
    }

LABEL_21:
    --*(a1 + 66);
    mdb_node_del(a1, 0);
    v17 = *(a1 + 66);
    if (!*(a1 + 328 + 2 * v17))
    {
      v52 = 0;
      result = mdb_update_key(a1, &v52);
      LOWORD(v17) = *(a1 + 66);
      if (result)
      {
        *(a1 + 66) = v17 + 1;
        return result;
      }
    }

    v18 = v17 + 1;
    *(a1 + 66) = v18;
    v19 = *(v4 + 8 * v18);
    v20 = *v19;
    v21 = *(a1 + 24);
    v22 = *(v19 + 10);
    if ((v22 & 0x10) != 0 && *(a1 + 32))
    {
      if (!*v21)
      {
LABEL_35:
        *(v19 + 48) = *(v21 + 48);
        *(v21 + 48) = v19;
        ++*(v21 + 56);
        v26 = v22 | 0x4000;
        *(v19 + 10) = v26;
LABEL_36:
        v27 = (v26 & 2) == 0;
        v28 = 16;
        if (v27)
        {
          v28 = 8;
        }

        --*(*(a1 + 40) + v28);
        v29 = *(*(*(a1 + 24) + 104) + 8 * *(a1 + 32));
        if (v29)
        {
          v30 = *(a1 + 66);
          v31 = *(a1 + 68);
          v32 = v30 - 1;
          do
          {
            v33 = v29;
            if ((v31 & 4) != 0)
            {
              v33 = v29[2];
            }

            if (v33 != a1 && *(v33 + 32) >= *(a1 + 64))
            {
              v34 = v33 + 9;
              v35 = v33[v30 + 9];
              if (v35 == v19)
              {
                v34[v30] = v7;
                *(v33 + v30 + 164) += v43 >> 1;
                *(v33 + v32 + 164) = *(a2 + 328 + 2 * v32);
                v35 = v7;
              }

              else if (v34[v32] == *(v4 + 8 * v32))
              {
                v36 = *(v33 + v32 + 164);
                if (v36 > *(a1 + 328 + 2 * v32))
                {
                  *(v33 + v32 + 164) = v36 - 1;
                }
              }

              if ((*(v19 + 10) & 2) != 0)
              {
                v37 = v33[2];
                if (v37)
                {
                  if (*(v37 + 68))
                  {
                    v38 = *(v33 + v30 + 164);
                    if (v38 < (*(v35 + 12) - 16) >> 1)
                    {
                      v39 = v35 + *(v35 + 2 * v38 + 16);
                      if ((*(v39 + 4) & 6) == 4)
                      {
                        *(v37 + 72) = v39 + *(v39 + 6) + 8;
                      }
                    }
                  }
                }
              }
            }

            v29 = *v29;
          }

          while (v29);
        }

        v40 = *(a2 + 64);
        v41 = *(*(a2 + 40) + 6);
        if (v40)
        {
          *(a2 + 64) = v40 - 1;
          if (v40 == 1)
          {
            *(a2 + 68) &= ~1u;
          }

          else
          {
            --*(a2 + 66);
          }
        }

        result = mdb_rebalance(a2);
        v42 = *(*(a2 + 40) + 6) - v41 + v40;
        *(a2 + 64) = v42;
        *(a2 + 66) = v42 - 1;
        return result;
      }

      v23 = *(v21 + 72);
      if (*v23)
      {
        v24 = mdb_mid2l_search(*(v21 + 72), *v19);
        if (*v23 >= v24)
        {
          v25 = &v23[2 * v24];
          if (*v25 == v20)
          {
            if (v25[1] != v19)
            {
              *(a1 + 68) &= 0xFFFFFFFC;
              *(v21 + 124) |= 2u;
              return 4294936517;
            }

            v22 = *(v19 + 10);
            goto LABEL_35;
          }
        }
      }
    }

    result = mdb_midl_append((v21 + 40), v20);
    if (result)
    {
      return result;
    }

    v26 = *(v19 + 10);
    goto LABEL_36;
  }

  v52 = **(a1 + 40);
  v53 = (v5 + 16);
  if ((*(v5 + 12) & 0xFFFE) == 0x10)
  {
    goto LABEL_21;
  }

  v15 = 0;
  v16 = v43 >> 1;
  while (1)
  {
    result = mdb_node_add(a2, v16, &v52, 0, 0, 0);
    if (result)
    {
      return result;
    }

    v53 = (v53 + v52);
    ++v15;
    LOWORD(v16) = v16 + 1;
    if ((*(v5 + 12) - 16) >> 1 <= v15)
    {
      goto LABEL_21;
    }
  }
}

uint64_t mdb_page_search_lowest(uint64_t a1)
{
  v2 = a1 + 72;
  v6 = *(a1 + 72 + 8 * *(a1 + 66));
  result = mdb_page_get(a1, *(v6 + *(v6 + 16)) | (*(v6 + *(v6 + 16) + 4) << 32), &v6, 0);
  if (!result)
  {
    *(a1 + 328 + 2 * *(a1 + 66)) = 0;
    v4 = *(a1 + 64);
    if (v4 < 0x20)
    {
      v5 = v6;
      *(a1 + 64) = v4 + 1;
      *(v2 + 8 * v4) = v5;
      *(a1 + 66) = v4;
      *(a1 + 328 + 2 * v4) = 0;

      return mdb_page_search_root(a1, 0, 4);
    }

    else
    {
      *(*(a1 + 24) + 124) |= 2u;
      return 4294936509;
    }
  }

  return result;
}

uint64_t mdb_cmp_memnr(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = v2 + *a1;
  v4 = *a1 - *a2;
  v5 = v2 + (v4 & ~(v4 >> 63));
  if (v4 >= 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = *a1 - *a2;
  }

  v7 = (*a2 + a2[1] - 1);
  while (v3 > v5)
  {
    v9 = *--v3;
    v8 = v9;
    v10 = *v7--;
    result = (v8 - v10);
    if (v8 != v10)
    {
      return result;
    }
  }

  if (v6 < 0)
  {
    return -1;
  }

  else
  {
    return v6;
  }
}

uint64_t mdb_cmp_memn(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = *a2;
  v4 = a2[1];
  v7 = v3 - v5;
  v6 = v3 <= v5;
  if (v3 < v5)
  {
    v7 = -1;
  }

  if (v3 > v5)
  {
    LODWORD(v3) = v5;
  }

  if (v6)
  {
    v8 = v7;
  }

  else
  {
    v8 = 1;
  }

  LODWORD(result) = memcmp(v2, v4, v3);
  if (result)
  {
    return result;
  }

  else
  {
    return v8;
  }
}

uint64_t mdb_midl_search(unsigned int *a1, unint64_t a2)
{
  v2 = *a1;
  if (!*a1)
  {
    return 1;
  }

  v3 = 0;
  do
  {
    v4 = v2 >> 1;
    v5 = v3 + (v2 >> 1) + 1;
    v6 = *&a1[2 * v5];
    if (v6 >= a2)
    {
      if (v6 <= a2)
      {
        return v5;
      }

      v4 = v2 + ~v4;
      v3 += (v2 >> 1) + 1;
    }

    v2 = v4;
  }

  while (v4);
  if (v6 <= a2)
  {
    return v5;
  }

  else
  {
    return (v5 + 1);
  }
}

void *mdb_midl_alloc(int a1)
{
  v2 = malloc_type_malloc(8 * a1 + 16, 0x100004000313F17uLL);
  if (!v2)
  {
    return 0;
  }

  v2[1] = 0;
  v3 = v2 + 1;
  *v2 = a1;
  return v3;
}

void mdb_midl_free(uint64_t a1)
{
  if (a1)
  {
    free((a1 - 8));
  }
}

void *mdb_midl_shrink(uint64_t *a1)
{
  v2 = *a1;
  v4 = *(v2 - 8);
  result = (v2 - 8);
  if (v4 >= 0x20000)
  {
    result = malloc_type_realloc(result, 0x100008uLL, 0x100004000313F17uLL);
    if (result)
    {
      *result++ = 0x1FFFFLL;
      *a1 = result;
    }
  }

  return result;
}

uint64_t mdb_midl_need(_DWORD **a1, int a2)
{
  v3 = *a1;
  v4 = (*v3 + a2);
  v6 = *(v3 - 1);
  v5 = v3 - 2;
  if (v6 >= v4)
  {
    return 0;
  }

  v7 = (v4 + (v4 >> 2) + 258) & 0xFFFFFF00;
  v8 = malloc_type_realloc(v5, 8 * v7, 0x100004000313F17uLL);
  if (!v8)
  {
    return 12;
  }

  v9 = v8;
  result = 0;
  *v9 = (v7 - 2);
  *a1 = v9 + 1;
  return result;
}

uint64_t mdb_midl_append(unint64_t **a1, unint64_t a2)
{
  v3 = *a1;
  v4 = **a1;
  if (v4 >= *(*a1 - 1))
  {
    if (mdb_midl_grow(a1, 0x1FFFF))
    {
      return 12;
    }

    v3 = *a1;
    v4 = **a1;
  }

  result = 0;
  v7 = v4 + 1;
  *v3 = v7;
  v3[v7] = a2;
  return result;
}

uint64_t mdb_midl_grow(void *a1, int a2)
{
  v4 = malloc_type_realloc((*a1 - 8), 8 * (*(*a1 - 8) + a2) + 16, 0x100004000313F17uLL);
  if (!v4)
  {
    return 12;
  }

  v5 = v4;
  result = 0;
  *v5 += a2;
  *a1 = v5 + 1;
  return result;
}

uint64_t mdb_midl_append_list(uint64_t **a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = **a1;
  if (v4 + v5 >= *(*a1 - 1))
  {
    if (mdb_midl_grow(a1, v4))
    {
      return 12;
    }

    v3 = *a1;
    v5 = **a1;
    v4 = *a2;
  }

  memcpy(&v3[v5 + 1], a2 + 1, 8 * v4);
  result = 0;
  *v3 += *a2;
  return result;
}

uint64_t mdb_midl_append_range(uint64_t **a1, uint64_t a2, unsigned int a3)
{
  v5 = *a1;
  v6 = **a1;
  v7 = v6 + a3;
  if (v7 > *(*a1 - 1))
  {
    if (mdb_midl_grow(a1, a3 | 0x1FFFF))
    {
      return 12;
    }

    v5 = *a1;
  }

  *v5 = v7;
  if (a3)
  {
    v10 = 0;
    v11 = vdupq_n_s64(a3 - 1);
    v12 = &v5[v6 + a3];
    do
    {
      v13 = vmovn_s64(vcgeq_u64(v11, vorrq_s8(vdupq_n_s64(v10), xmmword_185DB7AF0)));
      if (v13.i8[0])
      {
        *v12 = a2 + v10;
      }

      if (v13.i8[4])
      {
        *(v12 - 1) = a2 + v10 + 1;
      }

      v10 += 2;
      v12 -= 2;
    }

    while (((a3 + 1) & 0x1FFFFFFFELL) != v10);
  }

  return 0;
}

uint64_t *mdb_midl_xmerge(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = *result;
  v4 = *result + *a2;
  *result = -1;
  if (v2)
  {
    v5 = result[v3];
    v6 = v4;
    do
    {
      v7 = a2[v2];
      if (v5 >= v7)
      {
        v9 = v3;
        v8 = v6;
      }

      else
      {
        do
        {
          v8 = v6 - 1;
          result[v6] = v5;
          v9 = v3 - 1;
          v5 = result[v3 - 1];
          --v6;
          --v3;
        }

        while (v5 < v7);
      }

      v6 = v8 - 1;
      result[v8] = v7;
      v3 = v9;
      --v2;
    }

    while (v2);
  }

  *result = v4;
  return result;
}

int *mdb_midl_sort(int *result)
{
  LODWORD(v1) = 0;
  v28 = *MEMORY[0x1E69E9840];
  v2 = result + 2;
  v3 = *result;
  LODWORD(v4) = 1;
LABEL_2:
  while (2)
  {
    v5 = v4 + 1;
    while (v3 - v4 > 7)
    {
      v6 = (v3 + v4) >> 1;
      v7 = *&result[2 * v6];
      *&result[2 * v6] = *&result[2 * v5];
      *&result[2 * v5] = v7;
      v8 = *&result[2 * v4];
      v9 = *&result[2 * v3];
      if (v8 < v9)
      {
        *&result[2 * v4] = v9;
        *&result[2 * v3] = v8;
        v7 = *&result[2 * v5];
        v9 = v8;
      }

      if (v7 < v9)
      {
        *&result[2 * v5] = v9;
        *&result[2 * v3] = v7;
        v7 = *&result[2 * v5];
      }

      v10 = *&result[2 * v4];
      if (v10 < v7)
      {
        *&result[2 * v4] = v7;
        *&result[2 * v5] = v10;
        v7 = v10;
      }

      LODWORD(v11) = v4 + 1;
      v12 = v3;
      while (1)
      {
        v13 = &v2[2 * v11];
        v11 = v11;
        do
        {
          ++v11;
          v15 = *v13++;
          v14 = v15;
        }

        while (v15 > v7);
        v16 = v12 + 1;
        v17 = &result[2 * v12];
        do
        {
          v19 = *(v17 - 1);
          v17 -= 2;
          v18 = v19;
          --v12;
          --v16;
        }

        while (v19 < v7);
        if (v16 <= v11)
        {
          break;
        }

        *(v13 - 1) = v18;
        *v17 = v14;
      }

      *&result[2 * v5] = v18;
      *v17 = v7;
      v20 = v1;
      v1 = v1 + 2;
      v21 = &v27[v20];
      if (v3 - v11 + 1 < v12 - v4)
      {
        v27[v1] = v12 - 1;
        v21[1] = v4;
        LODWORD(v4) = v11;
        goto LABEL_2;
      }

      v27[v1] = v3;
      v21[1] = v11;
      v3 = v12 - 1;
    }

    if (v3 > v4)
    {
      v4 = v4;
      do
      {
        v22 = v4++;
        v23 = *&result[2 * v4];
        if (v22 >= 1)
        {
          while (1)
          {
            v24 = &result[2 * v22];
            if (*v24 >= v23)
            {
              break;
            }

            *(v24 + 1) = *v24;
            v25 = __OFSUB__(v22, 1);
            LODWORD(v22) = v22 - 1;
            if ((v22 < 0) ^ v25 | (v22 == 0))
            {
              LODWORD(v22) = 0;
              break;
            }
          }
        }

        *&v2[2 * v22] = v23;
      }

      while (v4 != v3);
    }

    if (v1)
    {
      LODWORD(v4) = v27[v1 - 1];
      v3 = v27[v1];
      LODWORD(v1) = v1 - 2;
      continue;
    }

    break;
  }

  v26 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t mdb_mid2l_search(unsigned int *a1, unint64_t a2)
{
  v2 = *a1;
  if (!*a1)
  {
    return 1;
  }

  v3 = 0;
  do
  {
    v4 = v2 >> 1;
    v5 = v3 + (v2 >> 1) + 1;
    v6 = *&a1[4 * v5];
    if (v6 <= a2)
    {
      if (v6 >= a2)
      {
        return v5;
      }

      v4 = v2 + ~v4;
      v3 += (v2 >> 1) + 1;
    }

    v2 = v4;
  }

  while (v4);
  if (v6 >= a2)
  {
    return v5;
  }

  else
  {
    return (v5 + 1);
  }
}

__n128 mdb_mid2l_insert(unsigned int *a1, unint64_t *a2)
{
  v4 = *a2;
  v5 = mdb_mid2l_search(a1, *a2);
  if (v5)
  {
    v7 = *a1;
    if ((*a1 < v5 || *&a1[4 * v5] != v4) && v7 <= 0x1FFFE)
    {
      v8 = v7 + 1;
      *a1 = v7 + 1;
      if (v5 < v7 + 1)
      {
        v9 = &a1[4 * v7 + 4];
        do
        {
          *v9 = *(v9 - 1);
          v9 -= 4;
          --v8;
        }

        while (v5 < v8);
      }

      result = *a2;
      *&a1[4 * v5] = *a2;
    }
  }

  return result;
}

__n128 mdb_mid2l_append(uint64_t *a1, __n128 *a2)
{
  if (*a1 <= 0x1FFFE)
  {
    v2 = *a1 + 1;
    *a1 = v2;
    result = *a2;
    *&a1[2 * v2] = *a2;
  }

  return result;
}

void MTLArchiveUsageDB::store(uint64_t a1, uint8_t *buf)
{
  *buf = 136315138;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_185B8E000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "mdb_put error: %s", buf, 0xCu);
}

void MTLArchiveUsageDB::prune(uint64_t a1, uint8_t *buf)
{
  *buf = 136315138;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_185B8E000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "mdb_cursor_open error: %s", buf, 0xCu);
}

void mapFileToMemory()
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = *__error();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_185B8E000, MEMORY[0x1E69E9C10], v1, "fstat failed for file %s with errno %d", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

{
  v8 = *MEMORY[0x1E69E9840];
  v0 = *__error();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_185B8E000, MEMORY[0x1E69E9C10], v1, "Mapping of file %s failed with errno %d", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

{
  v8 = *MEMORY[0x1E69E9840];
  v0 = *__error();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_185B8E000, MEMORY[0x1E69E9C10], v1, "Unable to open mach-O at path: %s  Error:%i", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

uint64_t tileColorAttachmentFormattedDescription(uint64_t a1, MTLTileRenderPipelineColorAttachmentDescriptor *a2)
{
  v5[3] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v2 = a2 + 1;
  }

  else
  {
    v2 = 0;
  }

  v5[0] = [@"\n" stringByPaddingToLength:a1 + 4 withString:@" " startingAtIndex:0];
  v5[1] = @"pixelFormat =";
  v5[2] = [MEMORY[0x1E696AEC0] stringWithUTF8String:{MTLPixelFormatGetName(LODWORD(v2->super.isa)), v5[0], @"pixelFormat ="}];
  result = [objc_msgSend(MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:{3), "componentsJoinedByString:", @" "}];
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

void validateWithDevice(id *a1, uint64_t a2)
{
  v3 = [objc_msgSend(*a1 "name")];
  _MTLMessageContextPush_(a2, 4, @"function %s cannot be used to build a pipeline state without setting constant values first.", v4, v5, v6, v7, v8, v3);
}

{
  v3 = [objc_msgSend(*a1 "name")];
  _MTLMessageContextPush_(a2, 4, @"function %s cannot be used to build a pipeline state. Use newFunctionWithName:constantValues:... to get the specialized function", v4, v5, v6, v7, v8, v3);
}

void MTLXPCCompilerConnection::errorHandler(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_0_0(&dword_185B8E000, MEMORY[0x1E69E9C10], a3, "Compiler failed with unknown XPC error", a5, a6, a7, a8, 0);
}

{
  OUTLINED_FUNCTION_0_0(&dword_185B8E000, MEMORY[0x1E69E9C10], a3, "UNKNOWN XPC_TYPE_ERROR\n", a5, a6, a7, a8, 0);
}

{
  OUTLINED_FUNCTION_0_0(&dword_185B8E000, MEMORY[0x1E69E9C10], a3, "Compiler failed with XPC_ERROR_TERMINATION_IMMINENT", a5, a6, a7, a8, 0);
}

{
  OUTLINED_FUNCTION_0_0(&dword_185B8E000, MEMORY[0x1E69E9C10], a3, "XPC_ERROR_TERMINATION_IMMINENT\n", a5, a6, a7, a8, 0);
}

{
  OUTLINED_FUNCTION_0_0(&dword_185B8E000, MEMORY[0x1E69E9C10], a3, "Compiler failed with XPC_ERROR_CONNECTION_INVALID", a5, a6, a7, a8, 0);
}

{
  OUTLINED_FUNCTION_0_0(&dword_185B8E000, MEMORY[0x1E69E9C10], a3, "XPC_ERROR_CONNECTION_INVALID\n", a5, a6, a7, a8, 0);
}

{
  OUTLINED_FUNCTION_0_0(&dword_185B8E000, MEMORY[0x1E69E9C10], a3, "Compiler failed with XPC_ERROR_CONNECTION_INTERRUPTED", a5, a6, a7, a8, 0);
}

{
  OUTLINED_FUNCTION_0_0(&dword_185B8E000, MEMORY[0x1E69E9C10], a3, "XPC_ERROR_CONNECTION_INTERRUPTED\n", a5, a6, a7, a8, 0);
}

void MTLXPCCompilerConnection::checkConnectionAlive(uint8_t *buf, char *a2, void *a3, void *a4)
{
  if (*a2 >= 0)
  {
    v4 = a3;
  }

  else
  {
    v4 = *a3;
  }

  *buf = 136315138;
  *a4 = v4;
  _os_log_error_impl(&dword_185B8E000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "MTLCompiler: Compiler encountered XPC_ERROR_CONNECTION_INVALID: %s (is the OS shutting down or process jetsammed?)", buf, 0xCu);
}

void MTLXPCCompilerConnection::checkConnectionAlive(double a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v3[0] = 67109376;
  v3[1] = 10;
  v4 = 2048;
  v5 = v1;
  _os_log_fault_impl(&dword_185B8E000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "MTLCompiler: failed to ping the compiler service %u times over %f ms", v3, 0x12u);
  v2 = *MEMORY[0x1E69E9840];
}

void CompilerPluginInterface::CompilerPluginInterface(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 136315138;
  v3 = a1;
  _os_log_fault_impl(&dword_185B8E000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Failed to dlopen MTLCompiler framework with error: %s", &v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

void setShaderCacheMainFolder_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x1E69E9840];
}

void MTLCompilerFSCache::copyShaderCache(uint64_t a1, uint8_t *buf)
{
  *buf = 136315138;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_185B8E000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Path set to copy Metal shader cache (%s) does not exist", buf, 0xCu);
}

{
  *buf = 136315138;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_185B8E000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Path set to copy Metal shader cache (%s) is not a directory", buf, 0xCu);
}

void MTLCompilerFSCache::copyShaderCache(uint64_t a1, uint64_t a2, uint8_t *buf)
{
  *buf = 136315394;
  *(buf + 4) = a1;
  *(buf + 6) = 2080;
  *(buf + 14) = a2;
  _os_log_error_impl(&dword_185B8E000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failed to create %s directory in shader cache at location: %s", buf, 0x16u);
}

void MTLCompilerFSCache::flushElement(int a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = 136315394;
  v3 = "flushElement";
  v4 = 1024;
  v5 = a1;
  _os_log_error_impl(&dword_185B8E000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "@ %s(): fscache_element_get_data() failed with error = %d\n", &v2, 0x12u);
  v1 = *MEMORY[0x1E69E9840];
}

void MTLPipelineDataCache::open(int *a1, uint8_t *buf, os_log_t log)
{
  v3 = *a1;
  *buf = 67109120;
  *(buf + 1) = v3;
  _os_log_error_impl(&dword_185B8E000, log, OS_LOG_TYPE_ERROR, "fstat failed for the pipeline data cache, errno %d", buf, 8u);
}

{
  v3 = *a1;
  *buf = 67109120;
  *(buf + 1) = v3;
  _os_log_error_impl(&dword_185B8E000, log, OS_LOG_TYPE_ERROR, "Mapping the pipeline data cache failed, errno %d", buf, 8u);
}

void MTLPipelineDataCache::parseDataFileHeader()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0(&dword_185B8E000, v0, v1, "The pipeline data cache is not valid for the given system", v2, v3, v4, v5, v6);
}

{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0(&dword_185B8E000, v0, v1, "The pipeline data cache has an invalid number of entries", v2, v3, v4, v5, v6);
}

{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0(&dword_185B8E000, v0, v1, "The pipeline data cache has an invalid data section", v2, v3, v4, v5, v6);
}

{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0(&dword_185B8E000, v0, v1, "The pipeline data cache is empty", v2, v3, v4, v5, v6);
}

uint64_t MTLPipelineDataCache::parseDataFileHeader(uint64_t a1, unsigned __int8 *a2)
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0(&dword_185B8E000, v3, v4, "The pipeline data cache has an invalid entry", v5, v6, v7, v8, v10);
  return *a2 >> 7;
}

void getCacheMainFolder()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

{
  OUTLINED_FUNCTION_1_0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_1_0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void getCacheMainFolder(uint64_t a1, const char *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = *__error();
  strnlen(a2, 0x400uLL);
  OUTLINED_FUNCTION_1_0();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x22u);
  v8 = *MEMORY[0x1E69E9840];
}

void getCacheMainFolder(_BYTE *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  *a1;
  v7 = *__error();
  OUTLINED_FUNCTION_1_0();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x1Cu);
  v6 = *MEMORY[0x1E69E9840];
}

void MTLBVHDescriptorForMTLAccelerationStructureDescriptor_cold_2(void *a1, void *a2)
{
  v3 = [a1 primitiveKeyframeCount];
  [objc_msgSend(a2 "boundingBoxBuffers")];
  MTLReportFailure(0, "MTLBVHDescriptorForMTLAccelerationStructureDescriptor", 9620, @"Motion keyframe count mismatch in MTLPrimitiveAccelerationStructureDescriptor (MTLPrimitiveAccelerationStructureDescriptor has %lu keyframes and one of the MTLAccelerationStructureMotionBoundingBoxGeometryDescriptor has %lu keyframes).", v4, v5, v6, v7, v3);
}

void MTLBVHDescriptorForMTLAccelerationStructureDescriptor_cold_3(void *a1, void *a2)
{
  v3 = [a1 primitiveKeyframeCount];
  [objc_msgSend(a2 "vertexBuffers")];
  MTLReportFailure(0, "MTLBVHDescriptorForMTLAccelerationStructureDescriptor", 9558, @"Motion keyframe count mismatch in MTLPrimitiveAccelerationStructureDescriptor (MTLPrimitiveAccelerationStructureDescriptor has %lu keyframes and one of the MTLAccelerationStructureMotionTriangleGeometryDescriptor has %lu keyframes).", v4, v5, v6, v7, v3);
}

void MTLBVHDescriptorForMTLAccelerationStructureDescriptor_cold_4(void *a1, void *a2)
{
  v3 = [a1 primitiveKeyframeCount];
  [objc_msgSend(a2 "controlPointBuffers")];
  MTLReportFailure(0, "MTLBVHDescriptorForMTLAccelerationStructureDescriptor", 9490, @"Motion keyframe count mismatch in MTLPrimitiveAccelerationStructureDescriptor (MTLPrimitiveAccelerationStructureDescriptor has %lu keyframes and and one of the MTLAccelerationStructureMotionCurveGeometryDescriptor has %lu keyframes).", v4, v5, v6, v7, v3);
}

void MTLEnvVarAggregator::GET_MTL_COMPILER_SCHEDULER_VERSION()
{
  {
    MTLEnvVarAggregator::GET_MTL_COMPILER_SCHEDULER_VERSION(BOOL,int)::ev = getenv("MTL_COMPILER_SCHEDULER_VERSION");
  }
}

void MTLEnvVarAggregator::GET_MTL_MAX_COMPILER_TASKS()
{
  {
    MTLEnvVarAggregator::GET_MTL_MAX_COMPILER_TASKS(BOOL,int)::ev = getenv("MTL_MAX_COMPILER_TASKS");
  }
}

void parseDecompressionResult(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_0_5(&dword_185B8E000, MEMORY[0x1E69E9C10], a3, "Failed to uncompress data; out buffer is full.", a5, a6, a7, a8, 0);
}

{
  OUTLINED_FUNCTION_0_5(&dword_185B8E000, MEMORY[0x1E69E9C10], a3, "Failed to uncompress data; unexpected EOF found.", a5, a6, a7, a8, 0);
}

{
  OUTLINED_FUNCTION_0_5(&dword_185B8E000, MEMORY[0x1E69E9C10], a3, "Failed to allocate memory for uncompression while extracting the flatbuffer.", a5, a6, a7, a8, 0);
}

{
  OUTLINED_FUNCTION_0_5(&dword_185B8E000, MEMORY[0x1E69E9C10], a3, "Failed to uncompress data.", a5, a6, a7, a8, 0);
}

void newDAGStringFromFunctionGraphs(NSArray<MTLFunctionStitchingGraph *> *,unsigned long,_MTLMessageContext *)::$_0::operator()(uint64_t a1, void *a2, uint64_t a3, int a4)
{
  v286 = a3;
  if (!a2)
  {
    OUTLINED_FUNCTION_11();
    if ((v9 & 1) == 0)
    {
      OUTLINED_FUNCTION_5(v8);
      v180 = OUTLINED_FUNCTION_2_0();
      v274 = a3;
      _MTLMessageContextPush_(v180, 8, @"Non-output node functionGraphs[%lu].nodes[%lu] cannot be nil.", v181, v182, v183, v184, v185, v186);
    }
  }

  OUTLINED_FUNCTION_4();
  v11 = 0x1E6EE9000uLL;
  if (a4)
  {
    if ((v10 & 1) == 0)
    {
      objc_opt_class();
      if ((OUTLINED_FUNCTION_15() & 1) == 0)
      {
        OUTLINED_FUNCTION_3();
      }

      objc_opt_class();
      if ((OUTLINED_FUNCTION_15() & 1) == 0)
      {
        v12 = OUTLINED_FUNCTION_2_0();
        _MTLMessageContextPush_(v12, 8, @"functionGraphs[%lu].outputNode is not a MTLFunctionStitchingFunctionNode.", v13, v14, v15, v16, v17, v18);
      }
    }
  }

  else if ((v10 & 1) == 0)
  {
    objc_opt_class();
    if ((OUTLINED_FUNCTION_15() & 1) == 0)
    {
      OUTLINED_FUNCTION_3();
    }

    objc_opt_class();
    if ((OUTLINED_FUNCTION_15() & 1) == 0)
    {
      v187 = OUTLINED_FUNCTION_2_0();
      v274 = a3;
      _MTLMessageContextPush_(v187, 8, @"functionGraphs[%lu].nodes[%lu] is not a MTLFunctionStitchingFunctionNode.", v188, v189, v190, v191, v192, v193);
    }
  }

  OUTLINED_FUNCTION_4();
  if (v19)
  {
    return;
  }

  v20 = 0x1E696A000uLL;
  if (a4)
  {
    v21 = @"OUTPUT(node_output) : ";
  }

  else
  {
    v270 = a3;
    v21 = @"NODE(node_%lu) : ";
  }

  [**(a1 + 24) appendString:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", v21, v270, v274)}];
  v280 = *(a1 + 32);
  v22 = *(a1 + 48);
  v23 = *(a1 + 56);
  v281 = *a1;
  v282 = v22;
  v283 = &v286;
  v284 = *(a1 + 8);
  v285 = v23;
  v24 = *v281;
  if (a4)
  {
    if ((*v281 & 1) == 0)
    {
      if (![a2 arguments])
      {
        OUTLINED_FUNCTION_3();
      }

      if (![a2 arguments])
      {
        v200 = OUTLINED_FUNCTION_2_0();
        _MTLMessageContextPush_(v200, 8, @"functionGraphs[%lu].outputNode.arguments cannot be nil.", v201, v202, v203, v204, v205, v206);
      }
    }

    OUTLINED_FUNCTION_4();
    if ((v25 & 1) == 0)
    {
      [a2 arguments];
      OUTLINED_FUNCTION_9();
      if ((OUTLINED_FUNCTION_8() & 1) == 0)
      {
        OUTLINED_FUNCTION_3();
      }

      [a2 arguments];
      OUTLINED_FUNCTION_9();
      if ((OUTLINED_FUNCTION_8() & 1) == 0)
      {
        v207 = OUTLINED_FUNCTION_2_0();
        _MTLMessageContextPush_(v207, 8, @"functionGraphs[%lu].outputNode.arguments is not an NSArray.", v208, v209, v210, v211, v212, v213);
      }
    }

    OUTLINED_FUNCTION_4();
    if ((v26 & 1) == 0)
    {
      if (![a2 controlDependencies])
      {
        OUTLINED_FUNCTION_3();
      }

      if (![a2 controlDependencies])
      {
        v214 = OUTLINED_FUNCTION_2_0();
        _MTLMessageContextPush_(v214, 8, @"functionGraphs[%lu].outputNode.controlDependencies cannot be nil.", v215, v216, v217, v218, v219, v220);
      }
    }

    OUTLINED_FUNCTION_4();
    if ((v27 & 1) == 0)
    {
      [a2 controlDependencies];
      OUTLINED_FUNCTION_9();
      if ((OUTLINED_FUNCTION_8() & 1) == 0)
      {
        OUTLINED_FUNCTION_3();
      }

      [a2 controlDependencies];
      OUTLINED_FUNCTION_9();
      if ((OUTLINED_FUNCTION_8() & 1) == 0)
      {
        v28 = OUTLINED_FUNCTION_2_0();
        _MTLMessageContextPush_(v28, 8, @"functionGraphs[%lu].outputNode.controlDependencies is not an NSArray.", v29, v30, v31, v32, v33, v34);
      }
    }
  }

  else
  {
    if ((*v281 & 1) == 0)
    {
      if (![a2 arguments])
      {
        OUTLINED_FUNCTION_3();
      }

      if (![a2 arguments])
      {
        v221 = OUTLINED_FUNCTION_0_6();
        _MTLMessageContextPush_(v221, 8, @"functionGraphs[%lu].nodes[%lu].arguments cannot be nil.", v222, v223, v224, v225, v226, v271);
      }
    }

    OUTLINED_FUNCTION_4();
    if ((v35 & 1) == 0)
    {
      [a2 arguments];
      OUTLINED_FUNCTION_9();
      if ((OUTLINED_FUNCTION_8() & 1) == 0)
      {
        OUTLINED_FUNCTION_3();
      }

      [a2 arguments];
      OUTLINED_FUNCTION_9();
      if ((OUTLINED_FUNCTION_8() & 1) == 0)
      {
        v227 = OUTLINED_FUNCTION_0_6();
        _MTLMessageContextPush_(v227, 8, @"functionGraphs[%lu].nodes[%lu].arguments is not an NSArray.", v228, v229, v230, v231, v232, v271);
      }
    }

    OUTLINED_FUNCTION_4();
    if ((v36 & 1) == 0)
    {
      if (![a2 controlDependencies])
      {
        OUTLINED_FUNCTION_3();
      }

      if (![a2 controlDependencies])
      {
        v233 = OUTLINED_FUNCTION_0_6();
        _MTLMessageContextPush_(v233, 8, @"functionGraphs[%lu].nodes[%lu].controlDependencies cannot be nil.", v234, v235, v236, v237, v238, v271);
      }
    }

    OUTLINED_FUNCTION_4();
    if ((v37 & 1) == 0)
    {
      [a2 controlDependencies];
      OUTLINED_FUNCTION_9();
      if ((OUTLINED_FUNCTION_8() & 1) == 0)
      {
        OUTLINED_FUNCTION_3();
      }

      [a2 controlDependencies];
      OUTLINED_FUNCTION_9();
      if ((OUTLINED_FUNCTION_8() & 1) == 0)
      {
        v239 = OUTLINED_FUNCTION_0_6();
        _MTLMessageContextPush_(v239, 8, @"functionGraphs[%lu].nodes[%lu].controlDependencies is not an NSArray.", v240, v241, v242, v243, v244, v271);
      }
    }
  }

  if ([a2 arguments] && (objc_msgSend(a2, "arguments"), OUTLINED_FUNCTION_9(), (OUTLINED_FUNCTION_8() & 1) != 0) && objc_msgSend(a2, "controlDependencies") && (objc_msgSend(a2, "controlDependencies"), OUTLINED_FUNCTION_9(), (OUTLINED_FUNCTION_8() & 1) != 0))
  {
    v38 = [objc_msgSend(a2 "arguments")];
    v39 = v38 + [objc_msgSend(a2 "controlDependencies")] + 1;
  }

  else
  {
    v39 = 1;
  }

  v40 = [MEMORY[0x1E695DF70] arrayWithCapacity:v39];
  [a2 isMemberOfClass:objc_opt_class()];
  OUTLINED_FUNCTION_4();
  if (v42)
  {
    if ((v41 & 1) == 0)
    {
      if ([objc_msgSend(a2 "arguments")] != 1)
      {
        OUTLINED_FUNCTION_3();
      }

      if ([objc_msgSend(a2 "arguments")] != 1)
      {
        v245 = OUTLINED_FUNCTION_0_6();
        _MTLMessageContextPush_(v245, 8, @"functionGraphs[%lu].nodes[%lu].arguments must have one element.", v246, v247, v248, v249, v250, v271);
      }
    }

    OUTLINED_FUNCTION_4();
    if (v43)
    {
      goto LABEL_98;
    }

    v44 = MEMORY[0x1E696AEC0];
    v45 = @"EARLY_RETURN";
  }

  else
  {
    if (a4)
    {
      if ((v41 & 1) == 0)
      {
        if (![a2 name])
        {
          OUTLINED_FUNCTION_3();
        }

        if (![a2 name])
        {
          v251 = OUTLINED_FUNCTION_2_0();
          _MTLMessageContextPush_(v251, 8, @"functionGraphs[%lu].outputNode.name cannot be nil.", v252, v253, v254, v255, v256, v257);
        }
      }

      OUTLINED_FUNCTION_4();
      if ((v46 & 1) == 0)
      {
        if ([objc_msgSend(a2 "name")])
        {
          OUTLINED_FUNCTION_3();
        }

        if ([objc_msgSend(a2 "name")])
        {
          v47 = OUTLINED_FUNCTION_2_0();
          _MTLMessageContextPush_(v47, 8, @"functionGraphs[%lu].outputNode.name cannot be empty.", v48, v49, v50, v51, v52, v53);
        }
      }
    }

    else
    {
      if ((v41 & 1) == 0)
      {
        if (![a2 name])
        {
          OUTLINED_FUNCTION_3();
        }

        if (![a2 name])
        {
          v258 = OUTLINED_FUNCTION_0_6();
          _MTLMessageContextPush_(v258, 8, @"functionGraphs[%lu].nodes[%lu].name cannot be nil.", v259, v260, v261, v262, v263, v271);
        }
      }

      OUTLINED_FUNCTION_4();
      if ((v54 & 1) == 0)
      {
        if ([objc_msgSend(a2 "name")])
        {
          OUTLINED_FUNCTION_3();
        }

        if ([objc_msgSend(a2 "name")])
        {
          v264 = OUTLINED_FUNCTION_0_6();
          _MTLMessageContextPush_(v264, 8, @"functionGraphs[%lu].nodes[%lu].name cannot be empty.", v265, v266, v267, v268, v269, v271);
        }
      }
    }

    OUTLINED_FUNCTION_4();
    if (v55)
    {
      goto LABEL_98;
    }

    v56 = MEMORY[0x1E696AEC0];
    v271 = [a2 name];
    v45 = @"FUNCTION(%@)";
    v44 = v56;
  }

  [v40 addObject:{objc_msgSend(v44, "stringWithFormat:", v45, v271)}];
LABEL_98:
  OUTLINED_FUNCTION_4();
  if ((v57 & 1) == 0 && [objc_msgSend(a2 "arguments")])
  {
    v58 = 0;
    while (1)
    {
      v59 = [objc_msgSend(a2 "arguments")];
      OUTLINED_FUNCTION_4();
      if (a4)
      {
        if ((v60 & 1) == 0)
        {
          if ((OUTLINED_FUNCTION_13() & 1) == 0)
          {
            OUTLINED_FUNCTION_3();
          }

          if ((OUTLINED_FUNCTION_13() & 1) == 0)
          {
            v61 = OUTLINED_FUNCTION_2_0();
            v275 = v58;
            _MTLMessageContextPush_(v61, 8, @"functionGraphs[%lu].outputNode.arguments[%lu] does not conform to MTLFunctionStitchingNode.", v62, v63, v64, v65, v66, v67);
          }
        }
      }

      else if ((v60 & 1) == 0)
      {
        if ((OUTLINED_FUNCTION_13() & 1) == 0)
        {
          OUTLINED_FUNCTION_3();
        }

        if ((OUTLINED_FUNCTION_13() & 1) == 0)
        {
          OUTLINED_FUNCTION_1_3();
          v275 = v134;
          v277 = v58;
          OUTLINED_FUNCTION_12();
          _MTLMessageContextPush_(v135, v136, @"functionGraphs[%lu].nodes[%lu].arguments[%lu] does not conform to MTLFunctionStitchingNode.", v137, v138, v139, v140, v141, v271);
        }
      }

      v68 = *(v11 + 3976);
      v69 = objc_opt_class();
      if (OUTLINED_FUNCTION_7(v69))
      {
        break;
      }

      v70 = objc_opt_class();
      if (OUTLINED_FUNCTION_7(v70))
      {
        break;
      }

      v71 = objc_opt_class();
      if (OUTLINED_FUNCTION_7(v71))
      {
        OUTLINED_FUNCTION_4();
        if ((v72 & 1) == 0)
        {
          v73 = *(v20 + 3776);
          v272 = [v59 argumentIndex];
          v74 = [v73 stringWithFormat:@"INPUT(%lu)", v272, v275, v277, v279, v280];
          goto LABEL_156;
        }
      }

      else
      {
        v75 = objc_opt_class();
        if (OUTLINED_FUNCTION_7(v75))
        {
          OUTLINED_FUNCTION_4();
          if ((v76 & 1) == 0)
          {
            v77 = *(v20 + 3776);
            v273 = [v59 bindIndex];
            v74 = [v77 stringWithFormat:@"BUFFER(CONSTANT, %lu)", v273, v275, v277, v279, v280];
            goto LABEL_156;
          }
        }

        else
        {
          v78 = objc_opt_class();
          if (OUTLINED_FUNCTION_7(v78))
          {
            OUTLINED_FUNCTION_4();
            if ((v79 & 1) == 0)
            {
              v80 = *(v20 + 3776);
              v81 = [v59 dereference];
              v276 = [v59 bindIndex];
              v278 = [v59 byteOffset];
              v82 = v81 == 0;
              v11 = 0x1E6EE9000;
              v83 = 42;
              if (v82)
              {
                v83 = 0;
              }

              v20 = 0x1E696A000;
              v74 = [v80 stringWithFormat:@"%cBUFFER_ADDR(BUFFER(CONSTANT, %lu), %lu)", v83, v276, v278, v279, v280];
              goto LABEL_156;
            }
          }

          else
          {
            v96 = objc_opt_class();
            if (OUTLINED_FUNCTION_7(v96))
            {
              OUTLINED_FUNCTION_4();
              if ((v97 & 1) == 0)
              {
                v20 = MEMORY[0x1E696AEC0];
                [v59 bindIndex];
                v98 = OUTLINED_FUNCTION_10();
                v99 = @"TEXTURE(%lu)";
                goto LABEL_155;
              }
            }

            else
            {
              v103 = objc_opt_class();
              if (OUTLINED_FUNCTION_7(v103))
              {
                OUTLINED_FUNCTION_4();
                if ((v104 & 1) == 0)
                {
                  v20 = MEMORY[0x1E696AEC0];
                  [v59 bindIndex];
                  v98 = OUTLINED_FUNCTION_10();
                  v99 = @"SAMPLER(%lu)";
                  goto LABEL_155;
                }
              }

              else
              {
                v105 = objc_opt_class();
                if (OUTLINED_FUNCTION_7(v105))
                {
                  OUTLINED_FUNCTION_4();
                  if ((v106 & 1) == 0)
                  {
                    v20 = MEMORY[0x1E696AEC0];
                    [v59 bindIndex];
                    v98 = OUTLINED_FUNCTION_10();
                    v99 = @"THREADGROUP(%lu)";
                    goto LABEL_155;
                  }
                }

                else
                {
                  v107 = objc_opt_class();
                  if (OUTLINED_FUNCTION_7(v107))
                  {
                    OUTLINED_FUNCTION_4();
                    if ((v108 & 1) == 0)
                    {
                      v98 = *(v20 + 3776);
                      v99 = @"IMAGEBLOCK";
                      goto LABEL_155;
                    }
                  }

                  else
                  {
                    v109 = objc_opt_class();
                    if (OUTLINED_FUNCTION_7(v109))
                    {
                      OUTLINED_FUNCTION_4();
                      if ((v110 & 1) == 0)
                      {
                        v98 = *(v20 + 3776);
                        v99 = @"BUILTIN(THREAD_POSITION_IN_GRID)";
                        goto LABEL_155;
                      }
                    }

                    else
                    {
                      v111 = objc_opt_class();
                      OUTLINED_FUNCTION_7(v111);
                      OUTLINED_FUNCTION_11();
                      if (!v114)
                      {
                        if (a4)
                        {
                          if ((v113 & 1) == 0)
                          {
                            OUTLINED_FUNCTION_5(v112);
                            v115 = **(a1 + 8);
                            v116 = **(a1 + 16);
                            v117 = objc_opt_class();
                            v275 = v58;
                            v277 = NSStringFromClass(v117);
                            v118 = v115;
                            v20 = 0x1E696A000;
                            _MTLMessageContextPush_(v118, 8, @"functionGraphs[%lu].outputNode.arguments[%lu] is of incorrect type: %@.", v119, v120, v121, v122, v123, v116);
                          }
                        }

                        else if ((v113 & 1) == 0)
                        {
                          OUTLINED_FUNCTION_5(v112);
                          v124 = **(a1 + 8);
                          v125 = **(a1 + 16);
                          v126 = v286;
                          v127 = objc_opt_class();
                          v277 = v58;
                          v279 = NSStringFromClass(v127);
                          v275 = v126;
                          v11 = 0x1E6EE9000;
                          v128 = v124;
                          v20 = 0x1E696A000;
                          _MTLMessageContextPush_(v128, 8, @"functionGraphs[%lu].nodes[%lu].arguments[%lu] is of incorrect type: %@.", v129, v130, v131, v132, v133, v125);
                        }

                        goto LABEL_158;
                      }

                      if ((v113 & 1) == 0)
                      {
                        v98 = *(v20 + 3776);
                        v99 = @"BUILTIN(THREAD_POSITION_IN_THREADGROUP)";
LABEL_155:
                        v74 = [v98 stringWithFormat:v99, v271, v275, v277, v279, v280];
LABEL_156:
                        v102 = v74;
                        v101 = v40;
LABEL_157:
                        [v101 addObject:v102];
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }

LABEL_158:
      v58 = (v58 + 1);
      if (v58 >= [objc_msgSend(a2 "arguments")])
      {
        goto LABEL_169;
      }
    }

    v84 = newDAGStringFromFunctionGraphs(NSArray<MTLFunctionStitchingGraph *> *,unsigned long,_MTLMessageContext *)::$_0::operator() const(MTLFunctionStitchingFunctionNode const*,unsigned long,BOOL)::{lambda(NSArray*<MTLFunctionStitchingFunctionNode*>,NSArray*)#1}::operator()(&v280, [**(a1 + 32) nodes], v59);
    OUTLINED_FUNCTION_11();
    if (a4)
    {
      if ((v86 & 1) == 0)
      {
        if (v84 == -1)
        {
          goto LABEL_139;
        }

        if (v84 == 0x7FFFFFFFFFFFFFFFLL)
        {
          OUTLINED_FUNCTION_5(v85);
          OUTLINED_FUNCTION_2_0();
          v275 = v87;
          v277 = v58;
          OUTLINED_FUNCTION_12();
          v95 = @"functionGraphs[%lu].nodes does not contain functionGraphs[%lu].outputNode.arguments[%lu].";
LABEL_168:
          _MTLMessageContextPush_(v88, v89, v95, v90, v91, v92, v93, v94, v271);
        }

LABEL_137:
        OUTLINED_FUNCTION_4();
        if ((v100 & 1) == 0)
        {
          v74 = [*(v20 + 3776) stringWithFormat:@"NODE(node_%lu)", v84, v275, v277, v279, v280];
          goto LABEL_156;
        }

        goto LABEL_158;
      }
    }

    else if ((v86 & 1) == 0)
    {
      if (v84 == -1)
      {
LABEL_139:
        v101 = v40;
        v102 = @"NODE(node_output)";
        goto LABEL_157;
      }

      if (v84 != 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_137;
      }

      OUTLINED_FUNCTION_5(v85);
      v88 = OUTLINED_FUNCTION_1_3();
      v277 = v142;
      v279 = v58;
      v271 = v143;
      v275 = v143;
      v89 = 8;
      v95 = @"functionGraphs[%lu].nodes does not contain functionGraphs[%lu].nodes[%lu].arguments[%lu].";
      goto LABEL_168;
    }

    if (v84 == -1)
    {
      goto LABEL_158;
    }

    goto LABEL_137;
  }

LABEL_169:
  OUTLINED_FUNCTION_4();
  if ((v144 & 1) == 0)
  {
    [a2 controlDependencies];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      OUTLINED_FUNCTION_3();
    }

    [a2 controlDependencies];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v194 = OUTLINED_FUNCTION_0_6();
      _MTLMessageContextPush_(v194, 8, @"functionGraphs[%lu].nodes[%lu].controlDependencies is not a NSArray.", v195, v196, v197, v198, v199, v271);
    }
  }

  OUTLINED_FUNCTION_4();
  if ((v145 & 1) == 0 && [objc_msgSend(a2 "controlDependencies")])
  {
    for (i = 0; i < [objc_msgSend(a2 "controlDependencies")]; ++i)
    {
      v147 = [objc_msgSend(a2 "controlDependencies")];
      OUTLINED_FUNCTION_4();
      if (a4)
      {
        if ((v148 & 1) == 0)
        {
          objc_opt_class();
          if ((OUTLINED_FUNCTION_14() & 1) == 0)
          {
            OUTLINED_FUNCTION_3();
          }

          objc_opt_class();
          if ((OUTLINED_FUNCTION_14() & 1) == 0)
          {
            v149 = OUTLINED_FUNCTION_2_0();
            _MTLMessageContextPush_(v149, 8, @"functionGraphs[%lu].outputNode.controlDependencies[%lu] is not of type MTLFunctionStitchingFunctionNode.", v150, v151, v152, v153, v154, v155);
          }
        }
      }

      else if ((v148 & 1) == 0)
      {
        objc_opt_class();
        if ((OUTLINED_FUNCTION_14() & 1) == 0)
        {
          OUTLINED_FUNCTION_3();
        }

        objc_opt_class();
        if ((OUTLINED_FUNCTION_14() & 1) == 0)
        {
          OUTLINED_FUNCTION_1_3();
          OUTLINED_FUNCTION_12();
          _MTLMessageContextPush_(v171, v172, @"functionGraphs[%lu].nodes[%lu].controlDependencies[%lu] is not of type MTLFunctionStitchingFunctionNode.", v173, v174, v175, v176, v177, v271);
        }
      }

      v156 = newDAGStringFromFunctionGraphs(NSArray<MTLFunctionStitchingGraph *> *,unsigned long,_MTLMessageContext *)::$_0::operator() const(MTLFunctionStitchingFunctionNode const*,unsigned long,BOOL)::{lambda(NSArray*<MTLFunctionStitchingFunctionNode*>,NSArray*)#1}::operator()(&v280, [**(a1 + 32) nodes], v147);
      OUTLINED_FUNCTION_11();
      if (a4)
      {
        if (v158)
        {
          goto LABEL_202;
        }

        if (v156 == -1)
        {
          goto LABEL_198;
        }

        if (v156 == 0x7FFFFFFFFFFFFFFFLL)
        {
          OUTLINED_FUNCTION_5(v157);
          OUTLINED_FUNCTION_2_0();
          OUTLINED_FUNCTION_12();
          v166 = @"functionGraphs[%lu].nodes does not contain functionGraphs[%lu].outputNode.controlDependencies[%lu].";
LABEL_205:
          _MTLMessageContextPush_(v159, v160, v166, v161, v162, v163, v164, v165, v271);
        }
      }

      else
      {
        if (v158)
        {
LABEL_202:
          if (v156 == -1)
          {
            continue;
          }

          goto LABEL_196;
        }

        if (v156 == -1)
        {
LABEL_198:
          v169 = v40;
          v168 = @"*NODE(node_output)";
          goto LABEL_199;
        }

        if (v156 == 0x7FFFFFFFFFFFFFFFLL)
        {
          OUTLINED_FUNCTION_5(v157);
          v159 = OUTLINED_FUNCTION_1_3();
          v271 = v170;
          v160 = 8;
          v166 = @"functionGraphs[%lu].nodes does not contain functionGraphs[%lu].nodes[%lu].controlDependencies[%lu].";
          goto LABEL_205;
        }
      }

LABEL_196:
      OUTLINED_FUNCTION_4();
      if ((v167 & 1) == 0)
      {
        v271 = v156;
        v168 = [MEMORY[0x1E696AEC0] stringWithFormat:@"*NODE(node_%lu)"];
        v169 = v40;
LABEL_199:
        [v169 addObject:v168];
      }
    }
  }

  OUTLINED_FUNCTION_4();
  if ((v178 & 1) == 0)
  {
    [**(a1 + 24) appendString:{objc_msgSend(v40, "componentsJoinedByString:", @", ")}];
    OUTLINED_FUNCTION_4();
    if (!v179)
    {
      [**(a1 + 24) appendString:@";\n"];
    }
  }
}

unint64_t newDAGStringFromFunctionGraphs(NSArray<MTLFunctionStitchingGraph *> *,unsigned long,_MTLMessageContext *)::$_0::operator() const(MTLFunctionStitchingFunctionNode const*,unsigned long,BOOL)::{lambda(NSArray*<MTLFunctionStitchingFunctionNode*>,NSArray*)#1}::operator()(uint64_t a1, void *a2, uint64_t a3)
{
  v20 = a3;
  if ([**a1 outputNode] == a3 && (**(a1 + 8) & 1) == 0)
  {
    v19 = *(a1 + 16);
    if ((*v19 & 1) == 0 && **(a1 + 24) >= **(a1 + 32))
    {
      *v19 = 1;
      _MTLMessageContextPush_(**(a1 + 40), 8, @"functionGraphs[%lu].nodes[%lu] contains a reference to .output_node, which must be listed in .nodes before its use.", v5, v6, v7, v8, v9, **(a1 + 48));
    }

    return -1;
  }

  else
  {
    v10 = std::__hash_table<std::__hash_value_type<MTLFunctionStitchingFunctionNode *,unsigned long>,std::__unordered_map_hasher<MTLFunctionStitchingFunctionNode *,std::__hash_value_type<MTLFunctionStitchingFunctionNode *,unsigned long>,std::hash<MTLFunctionStitchingFunctionNode *>,std::equal_to<MTLFunctionStitchingFunctionNode *>,true>,std::__unordered_map_equal<MTLFunctionStitchingFunctionNode *,std::__hash_value_type<MTLFunctionStitchingFunctionNode *,unsigned long>,std::equal_to<MTLFunctionStitchingFunctionNode *>,std::hash<MTLFunctionStitchingFunctionNode *>,true>,std::allocator<std::__hash_value_type<MTLFunctionStitchingFunctionNode *,unsigned long>>>::find<MTLFunctionStitchingFunctionNode *>(*(a1 + 56), &v20);
    if (v10)
    {
      result = v10[3];
      if (result < **(a1 + 32))
      {
        return result;
      }

      v17 = *(a1 + 16);
      if ((*v17 & 1) == 0)
      {
        v18 = *(a1 + 8);
        if ((*v18 & 1) == 0)
        {
          *v17 = 1;
          if (!*v18)
          {
            _MTLMessageContextPush_(**(a1 + 40), 8, @"functionGraphs[%lu].nodes[%lu] contains a reference to .nodes[%lu], which must be listed before its use.", v11, v12, v13, v14, v15, **(a1 + 48));
          }
        }
      }
    }

    else if (a2 && **(a1 + 8) == 1)
    {
      return [a2 indexOfObject:v20];
    }

    return 0x7FFFFFFFFFFFFFFFLL;
  }
}

void MTLEnvVarAggregator::GET_MTL_LEGACY_COMPILER_PROCESS_COUNT()
{
  {
    MTLEnvVarAggregator::GET_MTL_LEGACY_COMPILER_PROCESS_COUNT(BOOL,int)::ev = getenv("MTL_LEGACY_COMPILER_PROCESS_COUNT");
  }
}

void _MTLCompilerWarningLog(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v4 = 136315138;
  v5 = [objc_msgSend(objc_msgSend(a1 "localizedDescription")];
  _os_log_error_impl(&dword_185B8E000, a2, OS_LOG_TYPE_ERROR, "Warning: %s", &v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

void MTLEnvVarAggregator::GET_MTL_MAXIMUM_CONCURRENT_COMPILATION_TASK_COUNT_API_OVERRIDE()
{
  {
    MTLEnvVarAggregator::GET_MTL_MAXIMUM_CONCURRENT_COMPILATION_TASK_COUNT_API_OVERRIDE(BOOL,int)::ev = getenv("MTL_MAXIMUM_CONCURRENT_COMPILATION_TASK_COUNT_API_OVERRIDE");
  }
}

void MTLEnvVarAggregator::GET_MTL_FIXED_COMPILER_PROCESS_COUNT()
{
  {
    MTLEnvVarAggregator::GET_MTL_FIXED_COMPILER_PROCESS_COUNT(BOOL,int)::ev = getenv("MTL_FIXED_COMPILER_PROCESS_COUNT");
  }
}

void MTLEnvVarAggregator::GET_MTL_THREADS_PER_COMPILER()
{
  {
    MTLEnvVarAggregator::GET_MTL_THREADS_PER_COMPILER(BOOL,int)::ev = getenv("MTL_THREADS_PER_COMPILER");
  }
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<-[_MTLDevice initProgressTracking]::$_1 &&>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_0_0(&dword_185B8E000, MEMORY[0x1E69E9C10], a3, "[NSBundle bundleWithIdentifier:@com.apple.Metal] failed", a5, a6, a7, a8, 0);
}

{
  OUTLINED_FUNCTION_0_0(&dword_185B8E000, MEMORY[0x1E69E9C10], a3, "[metalBundle URLForResource:@MTLECBE withExtension:@metallib] failed", a5, a6, a7, a8, 0);
}

void _mtlValidateArgumentsForTextureViewOnDevice_cold_1(void *a1, uint64_t a2, uint64_t a3)
{
  [a1 numFaces];
  [a1 arrayLength];
  _MTLMessageContextPush_(a2, 4, @"(newSliceRange.location + newSliceRange.length)(%lu) must be <= (%lu).", v6, v7, v8, v9, v10, a3);
}

void MTLPipelineDescriptions::initWithFileDescriptor(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  MTLReportFailure(0, "initWithFileDescriptor", 228, @"stringWithUTF8String returned nil!", a5, a6, a7, a8, vars0);
}

{
  MTLReportFailure(0, "initWithFileDescriptor", 231, @"stringByStandardizingPath returned nil!", a5, a6, a7, a8, vars0);
}

{
  MTLReportFailure(0, "initWithFileDescriptor", 234, @"stringByDeletingLastPathComponent returned nil!", a5, a6, a7, a8, vars0);
}

{
  MTLReportFailure(0, "initWithFileDescriptor", 255, @"stringWithUTF8String return nil !", a5, a6, a7, a8, vars0);
}

{
  MTLReportFailure(0, "initWithFileDescriptor", 258, @"stringByAppendingPathComponent returned nil !", a5, a6, a7, a8, vars0);
}

void MTLPipelineDescriptions::deserializeFunction(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  MTLReportFailure(0, "deserializeFunction", 443, @"Function with no name in pipeline library", a5, a6, a7, a8, vars0);
}

{
  MTLReportFailure(0, "deserializeFunction", 531, @"Function %@ could not be found in library", a5, a6, a7, a8, a1);
}

id MTLPipelineDescriptions::deserializeFunction(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  MTLReportFailure(0, "deserializeFunction", 479, @"Base function with no name in pipeline library", a5, a6, a7, a8, v10);
  result = objc_alloc(MEMORY[0x1E696AEC0]);
  *a1 = result;
  return result;
}

void MTLPipelineDescriptions::deserializeFunction(MTLSerializer::SerializedString *a1)
{
  Value = MTLSerializer::SerializedString::getValue(a1);
  MTLReportFailure(0, "deserializeFunction", 511, @"Invalid library index in pipeline library for function %s", v2, v3, v4, v5, Value);
}

{
  Value = MTLSerializer::SerializedString::getValue(a1);
  MTLReportFailure(0, "deserializeFunction", 513, @"No constant values specified for specialized function %s", v2, v3, v4, v5, Value);
}

void MTLPipelineLibraryBuilder::newLibraryWithFile(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  MTLReportFailure(1, "newLibraryWithFile", 764, @"filePath is not a NSString.", a5, a6, a7, a8, a9);
}

{
  MTLReportFailure(0, "newLibraryWithFile", 761, @"filePath must not be nil.", a5, a6, a7, a8, a9);
}

{
  MTLReportFailure(1, "newLibraryWithFile", 771, @"device is not a MTLDevice.", a5, a6, a7, a8, a9);
}

{
  MTLReportFailure(0, "newLibraryWithFile", 766, @"device must not be nil.", a5, a6, a7, a8, a9);
}

void ___ZN37MTLLegacyMonolithicCompilerConnection24DispatchLogReplayRequestEP18MTLCompilerRequestPKcPU27objcproto16OS_dispatch_data8NSObjectP11objc_object_block_invoke_cold_1(int a1)
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_fault_impl(&dword_185B8E000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "MTLCompilerService log replay resulted in %u error", v2, 8u);
  v1 = *MEMORY[0x1E69E9840];
}

void MTLLegacyMonolithicCompilerConnection::BuildRequestInternal(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = 136315394;
  v3 = 0;
  v4 = 2080;
  v5 = a1;
  _os_log_error_impl(&dword_185B8E000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%s: Could not load compiler plugin at %s", &v2, 0x16u);
  v1 = *MEMORY[0x1E69E9840];
}

void *MTLProgressBinsForceBarrier(void *result, void *a2)
{
  if (result)
  {
    v3 = result;
    if (*(result + 48) == 1)
    {
      [a2 endVirtualSubstream];

      return [a2 beginVirtualSubstream];
    }

    else
    {
      v4 = *(result + 21);
      v5 = *(result + 35);
      *(result + 35) = v5 + 1;
      [a2 signalProgress:v5];
      if (*(v3 + 20))
      {
        v6 = 0;
        do
        {
          [a2 setSubstream:v6];
          [a2 waitForProgress:v5];
          v6 = (v6 + 1);
        }

        while (v6 < *(v3 + 20));
      }

      [a2 setSubstream:v4];

      return std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::clear(v3 + 19);
    }
  }

  return result;
}

uint64_t MTLProgressBinsEnableVirtualSubstreams(uint64_t result)
{
  if (result)
  {
    *(result + 48) = 1;
  }

  return result;
}

uint64_t MTLProgressBinsSynchronizeBufferAccess(uint64_t result, void *a2, uint64_t a3, uint64_t a4)
{
  v16 = a2;
  if (result)
  {
    v5 = result;
    if (*(result + 48))
    {
      v7 = std::__hash_table<std::__hash_value_type<objc_object  {objcproto9MTLBuffer}*,MTLAccelerationStructureCommandProgressBinsInternal::BufferUsage>,std::__unordered_map_hasher<objc_object  {objcproto9MTLBuffer},MTLAccelerationStructureCommandProgressBinsInternal::BufferUsage,std::hash<objc_object  {objcproto9MTLBuffer}>,std::equal_to<objc_object  {objcproto9MTLBuffer}>,true>,std::__unordered_map_equal<objc_object  {objcproto9MTLBuffer},MTLAccelerationStructureCommandProgressBinsInternal::BufferUsage,std::equal_to,std::hash,true>,std::allocator<MTLAccelerationStructureCommandProgressBinsInternal::BufferUsage>>::__equal_range_multi<objc_object  {objcproto9MTLBuffer}>((result + 96), &v16);
      if (v7 != v8)
      {
        v9 = v7;
        v10 = v8;
        do
        {
          if (a3 == 1 || v9[3] == 1)
          {
            v12 = *(v9 + 8);
            v13 = *(v9 + 9);
            *(v5 + 42) = v13;
            (*(a4 + 16))(a4, v12, v13);
          }

          v9 = *v9;
        }

        while (v9 != v10);
      }

      std::__hash_table<std::__hash_value_type<objc_object  {objcproto9MTLBuffer}*,MTLAccelerationStructureCommandProgressBinsInternal::BufferUsage>,std::__unordered_map_hasher<objc_object  {objcproto9MTLBuffer},MTLAccelerationStructureCommandProgressBinsInternal::BufferUsage,std::hash<objc_object  {objcproto9MTLBuffer}>,std::equal_to<objc_object  {objcproto9MTLBuffer}>,true>,std::__unordered_map_equal<objc_object  {objcproto9MTLBuffer},MTLAccelerationStructureCommandProgressBinsInternal::BufferUsage,std::equal_to,std::hash,true>,std::allocator<MTLAccelerationStructureCommandProgressBinsInternal::BufferUsage>>::__emplace_multi<std::pair<objc_object  {objcproto9MTLBuffer},MTLAccelerationStructureCommandProgressBinsInternal>>();
    }

    result = MTLProgressBinsSynchronizeBuffer(result, a2);
    if ((result & 0x80000000) == 0)
    {
      v14 = *(v5 + 42);
      v15 = *(a4 + 16);

      return v15(a4, result, v14);
    }
  }

  return result;
}

void *MTLProgressBinsReset(void *result)
{
  if (result)
  {
    v1 = result;
    result = std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::clear(result + 12);
    v1[3] = 0;
    v1[4] = 0;
    *(v1 + 21) = 0;
    *(v1 + 35) = 0;
  }

  return result;
}

void MTLVersionedDB::openDB(int a1)
{
  v7 = *MEMORY[0x1E69E9840];
  mdb_strerror(a1);
  OUTLINED_FUNCTION_0_8();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void MTLVersionedDB::openDB(char *a1, uint64_t *a2, int a3)
{
  v10 = *MEMORY[0x1E69E9840];
  if (*a1 < 0)
  {
    v3 = *a2;
  }

  mdb_strerror(a3);
  OUTLINED_FUNCTION_0_8();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
  v9 = *MEMORY[0x1E69E9840];
}

void MTLVersionedDB::openDB()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
  v5 = *MEMORY[0x1E69E9840];
}

void MTLVersionedDB::MTLVersionedDB(uint64_t *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  if (*(a1 + 23) < 0)
  {
    v1 = *a1;
  }

  OUTLINED_FUNCTION_0_8();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
  v7 = *MEMORY[0x1E69E9840];
}

void MTLVersionedDB::Transaction::Transaction(int a1)
{
  v7 = *MEMORY[0x1E69E9840];
  mdb_strerror(a1);
  OUTLINED_FUNCTION_0_8();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

{
  v7 = *MEMORY[0x1E69E9840];
  mdb_strerror(a1);
  OUTLINED_FUNCTION_0_8();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void MTLVersionedDB::Transaction::~Transaction(uint64_t a1, uint8_t *buf)
{
  *buf = 136315138;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_185B8E000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "mdb_txn_commit error: %s", buf, 0xCu);
}

void MTLArchiveMapDB::store(char *a1, void *a2, uint64_t *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  if (*a1 >= 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = *a2;
  }

  if (*(a3 + 23) >= 0)
  {
    v4 = a3;
  }

  else
  {
    v4 = *a3;
  }

  v6 = 136315394;
  v7 = v3;
  v8 = 2080;
  v9 = v4;
  _os_log_error_impl(&dword_185B8E000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "storeArchive('%s', '%s') invalid payload", &v6, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

void _NewTensorDataWithMTLTensor_cold_5(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v8 = *([a2 extents] + 8 * a1);
  v9 = *([a2 extents] + 8 * a3);
  v10 = *([a4 extents] + 8 * a3);
  v11 = *([a2 extents] + 8 * a3);
  v16 = *([a4 extents] + 8 * a3) * v11;
  MTLReportFailure(0, "_NewTensorDataWithMTLTensor", 269, @"The stride of dimension %u (= %u) is not equal to strides[%u] (%u) * dimensions[%u] (%u) = %u", v12, v13, v14, v15, a1);
}

void MTLCompilerMachORequest::CreateMachOFile(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = *__error();
  v4 = 136315394;
  v5 = a1;
  v6 = 1024;
  v7 = v2;
  _os_log_error_impl(&dword_185B8E000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Cannot open mach-O (%s) with error:%i", &v4, 0x12u);
  v3 = *MEMORY[0x1E69E9840];
}

void MTLLibraryBuilder::newLibraryWithFile(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  MTLReportFailure(1, "newLibraryWithFile", 7111, @"filepath is not a NSString.", a5, a6, a7, a8, a9);
}

{
  MTLReportFailure(0, "newLibraryWithFile", 7108, @"filepath must not be nil.", a5, a6, a7, a8, a9);
}

{
  MTLReportFailure(1, "newLibraryWithFile", 7118, @"device is not a MTLDevice.", a5, a6, a7, a8, a9);
}

{
  MTLReportFailure(0, "newLibraryWithFile", 7115, @"device must not be nil.", a5, a6, a7, a8, a9);
}

void ___ZN17MTLLibraryBuilder18newLibraryWithFileEPU19objcproto9MTLDevice11objc_objectP8NSStringPP7NSError_block_invoke_cold_1(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 136315138;
  v3 = a1;
  _os_log_error_impl(&dword_185B8E000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failed to open metal library with error: %s", &v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

void MTLLibraryBuilder::newLibraryWithData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  MTLReportFailure(1, "newLibraryWithData", 7211, @"device is not a MTLDevice.", a5, a6, a7, a8, a9);
}

{
  MTLReportFailure(0, "newLibraryWithData", 7208, @"device must not be nil.", a5, a6, a7, a8, a9);
}

void MTLLibraryBuilder::newLibraryWithFunctionArray(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  MTLReportFailure(1, "newLibraryWithFunctionArray", 7259, @"device is not a MTLDevice.", a5, a6, a7, a8, a9);
}

{
  MTLReportFailure(0, "newLibraryWithFunctionArray", 7256, @"device must not be nil.", a5, a6, a7, a8, a9);
}

void MTLLibraryBuilder::initLibraryContainerWithRequestData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  MTLReportFailure(0, "initLibraryContainerWithRequestData", 9240, @"requestData must not be nil.", a5, a6, a7, a8, a9);
}

{
  MTLReportFailure(0, "initLibraryContainerWithRequestData", 9241, @"requestSize must not be 0.", a5, a6, a7, a8, a9);
}

void getCompilerConnectionManager()
{
  dispatch_once(&getCompilerConnectionHost(int)::onceToken, &__block_literal_global_1988);
}

{
  dispatch_once(&getCompilerConnectionHost(int)::onceToken, &__block_literal_global_1986);
}

void MTLLibraryBuilder::newLibraryWithSource(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  MTLReportFailure(1, "newLibraryWithSource", 9714, @"source is not a NSString.", a5, a6, a7, a8, a9);
}

{
  MTLReportFailure(0, "newLibraryWithSource", 9711, @"source must not be nil.", a5, a6, a7, a8, a9);
}

{
  MTLReportFailure(1, "newLibraryWithSource", 9719, @"options is not a MTLCompileOptions.", a5, a6, a7, a8, a9);
}

{
  MTLReportFailure(1, "newLibraryWithSource", 9739, @"device is not a MTLDevice.", a5, a6, a7, a8, a9);
}

{
  MTLReportFailure(0, "newLibraryWithSource", 9736, @"device must not be nil.", a5, a6, a7, a8, a9);
}

void MTLLibraryBuilder::newLibraryWithSource()
{
  if (__cxa_guard_acquire(&qword_1EA8D8958))
  {
    _MergedGlobals = getenv("METAL_FORCE_OPT_SIZE");
    __cxa_guard_release(&qword_1EA8D8958);
  }
}

void MTLLibraryBuilder::newLibraryWithDAG(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  MTLReportFailure(0, "newLibraryWithDAG", 10533, @"functionDag cannot be nil", a5, a6, a7, a8, a9);
}

{
  MTLReportFailure(0, "newLibraryWithDAG", 10534, @"functions cannot be nil", a5, a6, a7, a8, a9);
}

{
  MTLReportFailure(0, "newLibraryWithDAG", 10535, @"functions cannot be empty", a5, a6, a7, a8, a9);
}

void ___ZN30MTLLegacyXPCCompilerConnection24DispatchLogReplayRequestEP18MTLCompilerRequestPKcPU27objcproto16OS_dispatch_data8NSObjectbP11objc_object_block_invoke_cold_1(int a1)
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_fault_impl(&dword_185B8E000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "MTLCompilerService: log replay resulted in %u error", v2, 8u);
  v1 = *MEMORY[0x1E69E9840];
}

void MTLLegacyXPCCompilerConnection::checkConnectionActive(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 136315138;
  v3 = a1;
  _os_log_error_impl(&dword_185B8E000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "MTLCompiler: Compiler encountered XPC_ERROR_CONNECTION_INVALID: %s (is the OS shutting down?)", &v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

void ___ZN30MTLLegacyXPCCompilerConnection20BuildRequestInternalEP18MTLCompilerRequestPKcPU27objcproto16OS_dispatch_data8NSObjectibP11objc_objectU13block_pointerFvjPKvmS3_E_block_invoke_cold_4(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 104) + 1;
  v4[0] = 67109378;
  v4[1] = v2;
  v5 = 2080;
  v6 = a2;
  _os_log_error_impl(&dword_185B8E000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "MTLCompiler: Compilation failed with XPC_ERROR_CONNECTION_INVALID on %d try: %s (is the OS shutting down?)", v4, 0x12u);
  v3 = *MEMORY[0x1E69E9840];
}

void validateRenderRasterAndLater<MTLMeshRenderPipelineDescriptorPrivate>(uint64_t a1, uint64_t *a2)
{
  Name = MTLPixelFormatGetName(a1);
  v10 = MTLPixelFormatGetName(*a2);
  OUTLINED_FUNCTION_0_9(v10, v4, @"depthAttachmentPixelFormat (%s) and stencilAttachmentPixelFormat (%s) must match.", v5, v6, v7, v8, v9, Name);
}

void MTLGetEnvCase<MTLErrorModeType>(const char *a1, const char ***a2, const char ***a3)
{
  v5 = MEMORY[0x1E69E9848];
  fprintf(*MEMORY[0x1E69E9848], "Invalid option for %s, valid options are:\n", a1);
  v6 = *a2;
  v7 = *a3;
  while (v6 != v7)
  {
    v8 = *v6;
    v6 += 2;
    fprintf(*v5, "\t%s\n", v8);
  }

  __assert_rtn("MTLGetEnvCase", "MTLUtils_Internal.h", 75, "0");
}

void MTLIOAccelCommandBufferStorageGrowSegmentList_cold_1(uint64_t *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v7 = *a1;
  v8 = *(a1 + 2);
  v9 = *(a1 + 3);
  OUTLINED_FUNCTION_1_0();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x22u);
  v6 = *MEMORY[0x1E69E9840];
}

void MTLIOAccelCommandBufferStorageGrowSegmentList_cold_2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void MTLIOAccelCommandBufferStorageGrowKernelCommandBuffer_cold_1(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 88);
  v8 = *v1;
  v9 = *(v1 + 2);
  v10 = *(v1 + 3);
  OUTLINED_FUNCTION_1_0();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x28u);
  v7 = *MEMORY[0x1E69E9840];
}

void MTLIOAccelCommandBufferStorageAllocResourceAtIndex_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x1E69E9840];
}

void ___ZN19MTLSchedulerRequest16generateXPCBlockE11qos_class_ti_block_invoke_cold_1(uint8_t *buf, unsigned __int8 *a2, int *a3)
{
  v3 = *a2 + 1;
  *buf = 67109120;
  *a3 = v3;
  _os_log_error_impl(&dword_185B8E000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "MTLCompiler: Compilation failed with XPC_ERROR_CONNECTION_TERMINATION_IMMINENT on %d try. This indicates that the process was likely terminated by the OS (e.g., jetsam or shutdown).", buf, 8u);
}

void MTLEnvVarAggregator::GET_MTL_FORCE_COMPILER_FAILURE()
{
  {
    MTLEnvVarAggregator::GET_MTL_FORCE_COMPILER_FAILURE(BOOL,BOOL)::ev = getenv("MTL_FORCE_COMPILER_FAILURE");
  }
}

void ___ZN19MTLSchedulerRequest23generateMonolithicBlockE11qos_class_ti_block_invoke_cold_1(uint64_t *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = *a1;
  v3 = 136315138;
  v4 = v1;
  _os_log_error_impl(&dword_185B8E000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "MTLCompiler: Failed to load compiler plugin at %s", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

std::string *__cdecl std::to_string(std::string *__return_ptr retstr, unint64_t __val)
{
  return MEMORY[0x1EEE644C8](retstr, __val);
}

{
  return MEMORY[0x1EEE644D8](retstr, __val);
}

void operator delete[]()
{
    ;
  }
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

void operator new[]()
{
    ;
  }
}

void *__cdecl operator new(size_t __sz, const std::nothrow_t *a2)
{
    ;
  }
}

void operator new()
{
    ;
  }
}

uint64_t mdb_env_share_locks(uint64_t a1, int *a2)
{
  *(*(a1 + 64) + 8) = *(*(a1 + 72 + 8 * ((*(a1 + 12) >> 25) & 1 ^ (*(*(a1 + 72) + 128) < *(*(a1 + 80) + 128)))) + 128);
  v7 = 0x100000000;
  v6 = xmmword_185DB7AF0;
  do
  {
    result = fcntl(*(a1 + 4), 8, &v6);
    if (!result)
    {
      break;
    }

    result = *__error();
  }

  while (result == 4);
  if (result)
  {
    v5 = -1;
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

uint64_t mdb_env_create(void *a1)
{
  v2 = malloc_type_calloc(1uLL, 0xF8uLL, 0x10B004020E85D84uLL);
  if (!v2)
  {
    return 12;
  }

  v3 = v2;
  v2[6] = 126;
  *(v2 + 4) = 0x200000002;
  *v2 = -1;
  v2[2] = -1;
  v2[10] = getpid();
  v4 = sysconf(29);
  result = 0;
  v3[5] = v4;
  *a1 = v3;
  return result;
}

uint64_t mdb_env_map(uint64_t a1, char *a2)
{
  v4 = *(a1 + 12);
  if ((v4 & 0x80000) != 0)
  {
    if (ftruncate(*a1, *(a1 + 112)) < 0)
    {
      return *__error();
    }

    v5 = 3;
  }

  else
  {
    v5 = 1;
  }

  v6 = mmap(a2, *(a1 + 112), v5, 1, *a1, 0);
  *(a1 + 56) = v6;
  if (v6 == -1)
  {
    *(a1 + 56) = 0;
    return *__error();
  }

  if ((v4 & 0x800000) != 0)
  {
    madvise(v6, *(a1 + 112), 1);
    v6 = *(a1 + 56);
  }

  if (a2 && v6 != a2)
  {
    return 16;
  }

  v7 = 0;
  v8 = &v6[*(a1 + 16) + 16];
  *(a1 + 72) = v6 + 16;
  *(a1 + 80) = v8;
  return v7;
}

uint64_t mdb_env_open(uint64_t a1, const char *a2, int a3, uint64_t a4)
{
  v27 = -1;
  v4 = 22;
  if ((a3 & 0xFC00BFFE) != 0)
  {
    return v4;
  }

  if (*a1 != -1)
  {
    return v4;
  }

  v25 = 0;
  v26 = 0;
  v8 = *(a1 + 12) | a3;
  v4 = mdb_fname_init(a2, v8, &v25);
  if (v4)
  {
    return v4;
  }

  v9 = v8 | 0x20000000;
  if ((v8 & 0x20000) != 0)
  {
    v9 = v8 & 0xDFF7FFFF | 0x20000000;
  }

  else
  {
    v10 = mdb_midl_alloc(0x1FFFF);
    *(a1 + 200) = v10;
    if (!v10 || (v11 = malloc_type_calloc(0x20000uLL, 0x10uLL, 0x108004057E67DB5uLL), (*(a1 + 208) = v11) == 0))
    {
      *(a1 + 12) = v9;
LABEL_27:
      v4 = 12;
      goto LABEL_28;
    }
  }

  *(a1 + 12) = v9;
  *(a1 + 48) = strdup(a2);
  *(a1 + 136) = malloc_type_calloc(*(a1 + 36), 0x30uLL, 0x1080040226B62D8uLL);
  *(a1 + 144) = malloc_type_calloc(*(a1 + 36), 2uLL, 0x1000040BDFB0063uLL);
  v12 = malloc_type_calloc(*(a1 + 36), 4uLL, 0x100004052888210uLL);
  *(a1 + 152) = v12;
  v13 = *(a1 + 136);
  if (!v13 || !*(a1 + 48))
  {
    goto LABEL_27;
  }

  v4 = 12;
  if (!*(a1 + 144) || !v12)
  {
    goto LABEL_28;
  }

  *(v13 + 16) = mdb_cmp_long;
  if ((v9 & 0x420000) == 0)
  {
    v16 = mdb_env_setup_locks(a1, &v25, a4, &v27);
    if (v16)
    {
LABEL_33:
      v4 = v16;
      goto LABEL_28;
    }

    if ((v9 & 0x2000000) != 0 && !v27)
    {
      v4 = 35;
      goto LABEL_28;
    }
  }

  v14 = v9 & 0x20000;
  if ((v9 & 0x20000) != 0)
  {
    v15 = 0;
  }

  else
  {
    v15 = 514;
  }

  v16 = mdb_fopen(a1, &v25, v15, a4, a1);
  if (v16)
  {
    goto LABEL_33;
  }

  if ((v9 & 0x420000) == 0x20000)
  {
    v16 = mdb_env_setup_locks(a1, &v25, a4, &v27);
    if (v16)
    {
      goto LABEL_33;
    }
  }

  v16 = mdb_env_open2(a1, v9 & 0x2000000);
  if (v16)
  {
    goto LABEL_33;
  }

  v16 = mdb_fopen(a1, &v25, 20971521, a4, (a1 + 8));
  if (v16)
  {
    goto LABEL_33;
  }

  if ((v9 & 0x2000000) != 0 || v27 < 1)
  {
    if (v14)
    {
      v4 = 0;
      goto LABEL_29;
    }

    goto LABEL_38;
  }

  v17 = mdb_env_share_locks(a1, &v27);
  if (!(v17 | v14))
  {
LABEL_38:
    v19 = *(a1 + 36);
    v20 = malloc_type_calloc(1uLL, *(a1 + 16), 0x4D3CF501uLL);
    *(a1 + 88) = v20;
    if (!v20)
    {
      goto LABEL_28;
    }

    v21 = malloc_type_calloc(1uLL, 61 * v19 + 136, 0xB3B38C76uLL);
    if (!v21)
    {
      goto LABEL_28;
    }

    v4 = 0;
    v22 = *(a1 + 36);
    v23 = &v21[6 * v22 + 17];
    v24 = v23 + 8 * v22;
    v21[12] = v24;
    v21[13] = v23;
    v21[14] = v24 + 4 * v22;
    v21[4] = a1;
    v21[10] = *(a1 + 136);
    v21[11] = v21 + 17;
    *(v21 + 31) = 1;
    *(a1 + 104) = v21;
    goto LABEL_29;
  }

  v4 = v17;
  if (v17)
  {
LABEL_28:
    mdb_env_close1(a1);
  }

LABEL_29:
  if (HIDWORD(v25))
  {
    free(v26);
  }

  return v4;
}

uint64_t mdb_fname_init(const char *a1, int a2, uint64_t a3)
{
  v5 = ~a2 & 0x404000;
  *(a3 + 4) = 0;
  v6 = strlen(a1);
  *a3 = v6;
  if (v5)
  {
    v8 = malloc_type_malloc(v6 + 10, 0x53DCED66uLL);
    *(a3 + 8) = v8;
    if (v8)
    {
      *(a3 + 4) = 1;
      strcpy(v8, a1);
      return 0;
    }

    else
    {
      return 12;
    }
  }

  else
  {
    result = 0;
    *(a3 + 8) = a1;
  }

  return result;
}

uint64_t mdb_env_setup_locks(uint64_t a1, int *a2, unsigned __int16 a3, int *a4)
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = mdb_fopen(a1, a2, 16777734, a3, (a1 + 4));
  if (!v6)
  {
    if ((*(a1 + 14) & 0x20) == 0)
    {
      v8 = pthread_key_create((a1 + 160), mdb_env_reader_dest);
      if (v8)
      {
LABEL_7:
        v7 = v8;
        goto LABEL_38;
      }

      *(a1 + 12) |= 0x10000000u;
    }

    v18 = 0x300000000;
    v17 = xmmword_185DB7AF0;
    do
    {
      if (!fcntl(*(a1 + 4), 8, &v17))
      {
        goto LABEL_13;
      }

      v9 = *__error();
    }

    while (v9 == 4);
    if (v9)
    {
      WORD2(v18) = 1;
      do
      {
        if (!fcntl(*(a1 + 4), 9, &v17))
        {
          LODWORD(v7) = 0;
          goto LABEL_14;
        }

        v7 = *__error();
      }

      while (v7 == 4);
      if (!v7)
      {
        goto LABEL_14;
      }

      goto LABEL_38;
    }

LABEL_13:
    LODWORD(v7) = 1;
LABEL_14:
    *a4 = v7;
    v10 = lseek(*(a1 + 4), 0, 2);
    if (v10 != -1)
    {
      v11 = ((*(a1 + 24) - 1) << 6) + 256;
      if (v10 >= v11 || *a4 < 1)
      {
        *(a1 + 24) = ((v10 + 0x3FFFFFFF00) >> 6) + 1;
        v11 = v10;
      }

      else if (ftruncate(*(a1 + 4), ((*(a1 + 24) - 1) << 6) + 256))
      {
        goto LABEL_26;
      }

      v12 = mmap(0, v11, 3, 1, *(a1 + 4), 0);
      if (v12 != -1)
      {
        *(a1 + 64) = v12;
        if (*a4 < 1)
        {
          if (*v12 != -1091583778)
          {
            v7 = 4294936503;
            goto LABEL_38;
          }

          if (*(v12 + 1) != 774479874)
          {
            v7 = 4294936502;
            goto LABEL_38;
          }

          v7 = *__error();
          if (v7 <= 0x23 && ((1 << v7) & 0x800002001) != 0)
          {
            goto LABEL_37;
          }
        }

        else
        {
          v17.__sig = 0;
          *v17.__opaque = 0;
          *(v12 + 24) = 0u;
          *(v12 + 40) = 0u;
          *(v12 + 56) = 0u;
          *(v12 + 72) = 0u;
          v13 = *(a1 + 64);
          v13[8] = 0u;
          v13[9] = 0u;
          v13[10] = 0u;
          v13[11] = 0u;
          v8 = pthread_mutexattr_init(&v17);
          if (v8)
          {
            goto LABEL_7;
          }

          v14 = pthread_mutexattr_setpshared(&v17, 1);
          if (v14 || (v14 = pthread_mutex_init((*(a1 + 64) + 24), &v17), v14))
          {
            v7 = v14;
            pthread_mutexattr_destroy(&v17);
          }

          else
          {
            v7 = pthread_mutex_init((*(a1 + 64) + 128), &v17);
            pthread_mutexattr_destroy(&v17);
            if (!v7)
            {
              **(a1 + 64) = -1091583778;
              *(*(a1 + 64) + 4) = 774479874;
              *(*(a1 + 64) + 8) = 0;
              *(*(a1 + 64) + 16) = 0;
            }
          }
        }

        goto LABEL_38;
      }
    }

LABEL_26:
    v7 = *__error();
    goto LABEL_38;
  }

  v7 = v6;
  if (v6 == 30)
  {
    if ((*(a1 + 14) & 2) == 0)
    {
      v7 = 30;
      goto LABEL_38;
    }

LABEL_37:
    v7 = 0;
  }

LABEL_38:
  v15 = *MEMORY[0x1E69E9840];
  return v7;
}

uint64_t mdb_fopen(unsigned int *a1, int *a2, int a3, uint64_t a4, int *a5)
{
  if (a2[1])
  {
    strcpy((*(a2 + 1) + *a2), (&(&mdb_suffixes)[2 * (a3 == 16777734)])[(a1[3] >> 14) & 1]);
  }

  v10 = open(*(a2 + 1), a3 & 0x1400A03, a4);
  v11 = v10;
  if (v10 == -1)
  {
    result = *__error();
  }

  else
  {
    if (a3 == 16779777 && a1[4] >= a1[5])
    {
      fcntl(v10, 48, 1);
    }

    result = 0;
  }

  *a5 = v11;
  return result;
}

uint64_t mdb_env_open2(uint64_t a1, int a2)
{
  v4 = 0;
  v28 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 12);
  memset(v17, 0, 136);
  v27 = 0;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = 1;
  __buf = 0u;
  while (1)
  {
    v7 = v6;
    v8 = pread(*a1, &__buf, 0x98uLL, v4);
    if (v8 != 152)
    {
      break;
    }

    result = 4294936503;
    if ((BYTE10(__buf) & 8) == 0 || v19 != -1091583778)
    {
      goto LABEL_20;
    }

    if (DWORD1(v19) != 1)
    {
      result = 4294936502;
      goto LABEL_20;
    }

    if (!v4)
    {
      goto LABEL_9;
    }

    if (!a2)
    {
      if (v27 <= v17[16])
      {
        goto LABEL_10;
      }

LABEL_9:
      *v17 = v19;
      *&v17[8] = v23;
      *&v17[6] = v22;
      *&v17[4] = v21;
      *&v17[2] = v20;
      v17[16] = v27;
      *&v17[14] = v26;
      *&v17[12] = v25;
      *&v17[10] = v24;
      goto LABEL_10;
    }

    if (v27 < v17[16])
    {
      goto LABEL_9;
    }

LABEL_10:
    v6 = 0;
    v10 = v17[3];
    v4 += LODWORD(v17[3]);
    if ((v7 & 1) == 0)
    {
      goto LABEL_39;
    }
  }

  if (!(v4 | v8))
  {
    result = 2;
    goto LABEL_20;
  }

  if ((v8 & 0x80000000) == 0)
  {
    result = 4294936503;
    goto LABEL_20;
  }

  result = *__error();
  if (result)
  {
LABEL_20:
    if (result != 2)
    {
      goto LABEL_37;
    }

    v11 = 0;
    v10 = *(a1 + 20);
    if (v10 >= 0x8000)
    {
      v10 = 0x8000;
    }

    *(a1 + 16) = v10;
    memset(&v17[3], 0, 112);
    *&v17[1] = 0u;
    v17[0] = 0x1BEEFC0DELL;
    WORD2(v17[3]) = *(a1 + 12) | 8;
    v17[8] = -1;
    v17[2] = 0x100000;
    v12 = *(a1 + 112);
    LODWORD(v17[3]) = v10;
    *&v17[14] = xmmword_185DC4920;
    if (!v12)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v10 = v17[3];
LABEL_39:
    *(a1 + 16) = v10;
    v12 = *(a1 + 112);
    v11 = 1;
    if (!v12)
    {
LABEL_24:
      v12 = v17[2];
      *(a1 + 112) = v17[2];
    }
  }

  v13 = v10 * v17[15] + v10;
  if (v12 < v13)
  {
    *(a1 + 112) = v13;
    v12 = v13;
  }

  v17[2] = v12;
  if (v11)
  {
    if (v5)
    {
      v14 = v17[1];
      goto LABEL_33;
    }

LABEL_32:
    v14 = 0;
LABEL_33:
    result = mdb_env_map(a1, v14);
    if (!result)
    {
LABEL_34:
      result = 0;
      v15 = *(a1 + 16);
      *(a1 + 216) = ((v15 - 16) >> 3) - 1;
      *(a1 + 220) = (((v15 - 16) >> 1) & 0x7FFFFFFE) - 2;
      *(a1 + 128) = *(a1 + 112) / v15;
    }
  }

  else if (v5)
  {
    result = mdb_env_map(a1, v17[1]);
    if (!result)
    {
      v17[1] = *(a1 + 56);
      result = mdb_env_init_meta(a1, v17);
      if (!result)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    result = mdb_env_init_meta(a1, v17);
    if (!result)
    {
      goto LABEL_32;
    }
  }

LABEL_37:
  v16 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t mdb_env_close1(uint64_t result)
{
  if ((*(result + 15) & 0x20) != 0)
  {
    v1 = result;
    v2 = *(result + 136);
    if (v2)
    {
      v3 = *(v1 + 36);
      if (v3 >= 3)
      {
        v4 = v3 + 1;
        v5 = 48 * v3 - 40;
        do
        {
          free(*(*(v1 + 136) + v5));
          --v4;
          v5 -= 48;
        }

        while (v4 > 3);
        v2 = *(v1 + 136);
      }

      free(v2);
    }

    free(*(v1 + 88));
    free(*(v1 + 152));
    free(*(v1 + 144));
    free(*(v1 + 48));
    free(*(v1 + 208));
    free(*(v1 + 104));
    mdb_midl_free(*(v1 + 200));
    if ((*(v1 + 15) & 0x10) != 0)
    {
      pthread_key_delete(*(v1 + 160));
    }

    v6 = *(v1 + 56);
    if (v6)
    {
      munmap(v6, *(v1 + 112));
    }

    v7 = *(v1 + 8);
    if (v7 != -1)
    {
      close(v7);
    }

    if (*v1 != -1)
    {
      close(*v1);
    }

    if (*(v1 + 64))
    {
      v8 = getpid();
      v9 = *(v1 + 28);
      if (v9 >= 1)
      {
        v10 = v9 + 1;
        v11 = (v9 << 6) + 136;
        do
        {
          v12 = *(v1 + 64);
          if (*(v12 + v11) == v8)
          {
            *(v12 + v11) = 0;
          }

          --v10;
          v11 -= 64;
        }

        while (v10 > 1);
      }

      munmap(*(v1 + 64), ((*(v1 + 24) - 1) << 6) + 256);
    }

    result = *(v1 + 4);
    if (result != -1)
    {
      result = close(result);
    }

    *(v1 + 12) &= 0xCFFFFFFF;
  }

  return result;
}

void mdb_env_close(void *a1)
{
  if (a1)
  {
    while (1)
    {
      v2 = a1[24];
      if (!v2)
      {
        break;
      }

      a1[24] = *v2;
      free(v2);
    }

    mdb_env_close1(a1);

    free(a1);
  }
}

uint64_t mdb_env_init_meta(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = malloc_type_calloc(2uLL, v4, 0xFC816637uLL);
  if (!v5)
  {
    return 12;
  }

  v6 = v5;
  *v5 = 0;
  *(v5 + 5) = 8;
  *(v5 + 1) = *a2;
  v7 = *(a2 + 16);
  v8 = *(a2 + 32);
  v9 = *(a2 + 48);
  *(v5 + 5) = *(a2 + 64);
  *(v5 + 4) = v9;
  *(v5 + 3) = v8;
  *(v5 + 2) = v7;
  v10 = *(a2 + 80);
  v11 = *(a2 + 96);
  v12 = *(a2 + 112);
  *(v5 + 18) = *(a2 + 128);
  *(v5 + 8) = v12;
  *(v5 + 7) = v11;
  *(v5 + 6) = v10;
  v13 = &v5[v4];
  *v13 = 1;
  *(v13 + 5) = 8;
  *(v13 + 1) = *a2;
  v14 = *(a2 + 16);
  v15 = *(a2 + 32);
  v16 = *(a2 + 48);
  *(v13 + 5) = *(a2 + 64);
  *(v13 + 4) = v16;
  *(v13 + 3) = v15;
  *(v13 + 2) = v14;
  v17 = *(a2 + 80);
  v18 = *(a2 + 96);
  v19 = *(a2 + 112);
  *(v13 + 18) = *(a2 + 128);
  *(v13 + 8) = v19;
  *(v13 + 7) = v18;
  *(v13 + 6) = v17;
  v20 = (2 * v4);
  while (1)
  {
    v21 = pwrite(*a1, v6, v20, 0);
    if (v21 != -1)
    {
      break;
    }

    if (*__error() != 4)
    {
      goto LABEL_11;
    }
  }

  if (v21 < 0)
  {
LABEL_11:
    v22 = *__error();
    goto LABEL_12;
  }

  if (v20 == v21)
  {
    v22 = 0;
  }

  else
  {
    v22 = 28;
  }

LABEL_12:
  free(v6);
  return v22;
}