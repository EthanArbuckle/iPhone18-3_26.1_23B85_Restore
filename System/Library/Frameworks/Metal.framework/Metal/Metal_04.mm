void *std::__hash_table<std::__hash_value_type<MTLHashKey,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>>,std::__unordered_map_hasher<MTLHashKey,std::__hash_value_type<MTLHashKey,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>>,CompareFunctionIdHash,CompareFunctionIdHash,true>,std::__unordered_map_equal<MTLHashKey,std::__hash_value_type<MTLHashKey,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>>,CompareFunctionIdHash,CompareFunctionIdHash,true>,std::allocator<std::__hash_value_type<MTLHashKey,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>>>>::remove@<X0>(void *result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = result[1];
  v4 = a2[1];
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

  v6 = *(*result + 8 * v4);
  do
  {
    v7 = v6;
    v6 = *v6;
  }

  while (v6 != a2);
  if (v7 == result + 2)
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
    if (!*a2)
    {
      goto LABEL_19;
    }

    v9 = *(*a2 + 8);
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
      *(*result + 8 * v4) = 0;
    }
  }

  v10 = *a2;
  if (*a2)
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
      *(*result + 8 * v11) = v7;
      v10 = *a2;
    }
  }

  *v7 = v10;
  *a2 = 0;
  --result[3];
  *a3 = a2;
  *(a3 + 8) = result;
  *(a3 + 16) = 1;
  *(a3 + 17) = 0;
  *(a3 + 20) = 0;
  return result;
}

unsigned __int8 *_getFunctionHash(Air::FunctionScript *a1, char a2)
{
  v2 = (a1 - *a1);
  if (*v2 < 9u)
  {
    return 0;
  }

  v3 = v2[4];
  if (!v3)
  {
    return 0;
  }

  v4 = *(a1 + v3);
  if (v4 > 4)
  {
    if (v4 > 6)
    {
      if (v4 != 7)
      {
        if (v4 != 8)
        {
          return 0;
        }

        v9 = Air::FunctionScript::function_as_mesh(a1);

        return getMeshHash(v9);
      }

      Air::FunctionScript::function_as_object(a1);
    }

    else if (v4 == 5)
    {
      Mtl4::FunctionConstantValue::value_as_ConstantFloat3(a1);
    }

    else
    {
      Mtl4::FunctionConstantValue::value_as_ConstantFloat4(a1);
    }

LABEL_29:

    return malloc_type_calloc(0x20uLL, 1uLL, 0x100004077774924uLL);
  }

  if (v4 > 2)
  {
    if (v4 != 3)
    {
      v8 = Mtl4::FunctionConstantValue::value_as_ConstantFloat2(a1);

      return getTileHash(v8);
    }

    Mtl4::FunctionConstantValue::value_as_ConstantFloat(a1);
    goto LABEL_29;
  }

  if (v4 != 1)
  {
    if (v4 == 2)
    {
      v6 = Air::PipelineScript::pipeline_as_compute(a1);

      return getFragmentHash(v6, a2);
    }

    return 0;
  }

  v10 = Air::PipelineScript::pipeline_as_render(a1);

  return getVertexHash(v10);
}

uint64_t Mtl4::FunctionConstantValue::value_as_ConstantFloat3(Mtl4::FunctionConstantValue *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 9 && v1[4] && (v2 >= 0xB ? (v3 = *(this + v1[4]) == 5) : (v3 = 0), v3 && (v4 = v1[5]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t MTLLibraryBuilder::MTLLibraryBuilder(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 16) = 0;
  *(a1 + 8) = a1 + 16;
  *(a1 + 40) = 1;
  *(a1 + 24) = 0;
  *(a1 + 32) = a2;
  if (MTLGetModulesCachePath::onceToken != -1)
  {
    MTLGetModulesCachePath_cold_1();
  }

  *(a1 + 48) = MTLGetModulesCachePath::result;
  return a1;
}

void *copyCacheMainFolder(const char *a1, unint64_t *a2, const char *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  if (getCacheMainFolder(__s, a1, a3))
  {
    v4 = strlen(__s);
    *a2 = v4;
    v5 = malloc_type_malloc(v4 + 1, 0x100004077774924uLL);
    memcpy(v5, __s, *a2 + 1);
  }

  else
  {
    v5 = 0;
    *a2 = 0;
  }

  v6 = *MEMORY[0x1E69E9840];
  return v5;
}

void __MTLGetModulesCachePath_block_invoke()
{
  v3 = 0;
  ModuleCacheMainFolder = getModuleCacheMainFolder(&v3);
  if (ModuleCacheMainFolder)
  {
    v1 = ModuleCacheMainFolder;
    v2 = objc_alloc(MEMORY[0x1E696AEC0]);
    MTLGetModulesCachePath::result = [v2 initWithBytesNoCopy:v1 length:v3 encoding:4 freeWhenDone:1];
    if (!MTLGetModulesCachePath::result)
    {
      free(v1);
    }
  }
}

void LoaderGlobalState::LoaderGlobalState(LoaderGlobalState *this)
{
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  *(this + 12) = 1065353216;
  v2 = objc_autoreleasePoolPush();
  *this = [objc_msgSend(objc_msgSend(objc_msgSend(MEMORY[0x1E696AAE8] "mainBundle")];
  objc_autoreleasePoolPop(v2);
  *(this + 1) = dispatch_queue_create("MTLLoader global file queue", 0);
}

BOOL getCacheMainFolder(char *a1, const char *a2, const char *a3)
{
  v37 = *MEMORY[0x1E69E9840];
  didPreviouslyGetCacheMainFolder = 1;
  if (gOverridePath)
  {
    v4 = strlen(gOverridePath) + 1;
    if (v4 <= 0x400)
    {
      memcpy(a1, gOverridePath, v4);
LABEL_4:
      result = 1;
      goto LABEL_18;
    }

    result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT);
    if (!result)
    {
      goto LABEL_18;
    }

    getCacheMainFolder();
LABEL_17:
    result = 0;
    goto LABEL_18;
  }

  v6 = a3;
  *a1 = 0;
  v8 = CFCopySearchPathForDirectoriesInDomains();
  Count = CFArrayGetCount(v8);
  if (!Count)
  {
    CFRelease(v8);
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      getCacheMainFolder();
    }

    goto LABEL_17;
  }

  v10 = Count;
  ValueAtIndex = CFArrayGetValueAtIndex(v8, Count - 1);
  if (!ValueAtIndex)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      getCacheMainFolder();
    }

    CFRelease(v8);
    goto LABEL_17;
  }

  v12 = CFURLCopyFileSystemPath(ValueAtIndex, kCFURLPOSIXPathStyle);
  v13 = strlen(a1);
  CFStringGetCString(v12, &a1[v13], 1024 - v13, 0x8000100u);
  CFRelease(v12);
  CFRelease(v8);
  if (stat(a1, &v28))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      getCacheMainFolder(v10, a1);
    }

    goto LABEL_17;
  }

  v15 = strlen(a1);
  MainBundle = CFBundleGetMainBundle();
  if (v6)
  {
    if (MainBundle)
    {
      Identifier = CFBundleGetIdentifier(MainBundle);
      if (Identifier)
      {
        v18 = Identifier;
        v19 = strlen(a1);
        if (v19 && a1[v19] != 47)
        {
          *&a1[v19] = 47;
        }

        v20 = strlen(a1);
        CFStringGetCString(v18, &a1[v20], 1024 - v20, 0x8000100u);
      }
    }
  }

  if (a2)
  {
    v21 = strlen(a1);
    if (v21 && a1[v21] != 47)
    {
      *&a1[v21++] = 47;
    }

    strncat(a1, a2, 1024 - v21);
  }

  if (stat(a1, &v28))
  {
    v22 = &a1[v15];
    v23 = strchr(v22, 47);
    if (v23)
    {
      while (1)
      {
        v24 = v23;
        *v23 = 0;
        if (mkdir(a1, 0x1FFu))
        {
          if (*__error() != 17)
          {
            break;
          }
        }

        *v24 = 47;
        v23 = strchr(v24 + 1, 47);
        v22 = v24;
        if (!v23)
        {
          goto LABEL_38;
        }
      }

      v26 = *v22;
      *v24 = 47;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
      {
        if (v26 == 47)
        {
          ++v22;
        }

        v27 = *__error();
        *buf = 67109890;
        v30 = v27;
        v31 = 2080;
        v32 = a1;
        v33 = 1040;
        v34 = v24 - v22;
        v35 = 2080;
        v36 = v22;
        _os_log_fault_impl(&dword_185B8E000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Failed to get cache main folder: mkdir failed to create cache path (errno = %u, path = %s, attempting to create intermediate subdir '%.*s', possible sandbox issue?)", buf, 0x22u);
      }

      goto LABEL_17;
    }

    v24 = v22;
LABEL_38:
    if (mkdir(a1, 0x1FFu) && *__error() != 17)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
      {
        getCacheMainFolder(v24);
      }

      goto LABEL_17;
    }
  }

  v25 = stat(a1, &v28);
  result = 1;
  if (!v25 && gShaderCachePermissions)
  {
    chmod(a1, 0x1FFu);
    goto LABEL_4;
  }

LABEL_18:
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t AirReflection::Node::node_as_VisibleFunctionTableArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 262153) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

double __Block_byref_object_copy__2(uint64_t a1, uint64_t a2)
{
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  result = 0.0;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  return result;
}

__n128 __Block_byref_object_copy__6(__n128 *a1, __n128 *a2)
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

__n128 __Block_byref_object_copy__8(__n128 *a1, __n128 *a2)
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

void MTLCompilerRequest::MTLCompilerRequest(MTLCompilerRequest *this)
{
  MTLSchedulerRequest::MTLSchedulerRequest(this, 0, QOS_CLASS_UNSPECIFIED);
  *v1 = &unk_1EF475CD0;
  *(v1 + 172) = 0;
  *(v1 + 176) = 0;
}

void MTLCompilerRequest::setRequestData(uint64_t a1, dispatch_object_t object)
{
  if (object)
  {
    dispatch_retain(object);
  }

  *(a1 + 176) = object;
}

void MTLSchedulerRequest::MTLSchedulerRequest(MTLSchedulerRequest *this, int a2, qos_class_t a3)
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
  *(this + 15) = 0;
  *(this + 32) = a2;
  *(this + 33) = a3;
  *(this + 34) = a3;
  *(this + 140) = 0;
  *(this + 156) = 0;
  *(this + 148) = 0;
  *(this + 161) = 0;
}

BOOL MTLGetEnvCase<MTLErrorModeType>(const char *a1, _DWORD *a2, const char ***a3)
{
  v6 = getenv(a1);
  if (v6)
  {
    v7 = *a3;
    v8 = a3[1];
    while (1)
    {
      if (v7 == v8)
      {
        MTLGetEnvCase<MTLErrorModeType>(a1, a3, a3 + 1);
      }

      if (!strcmp(v6, *v7))
      {
        break;
      }

      v7 += 2;
    }

    *a2 = *(v7 + 2);
  }

  return v6 != 0;
}

void ___Z29_MTLDebugIgnoreFailOnMissFlagv_block_invoke()
{
  v4 = *MEMORY[0x1E69E9840];
  if (_MTLIsInternalBuild())
  {
    v0 = MTLGetEnvDefault("MTL_DEBUG_IGNORE_PSO_FAIL_ON_MISS", 0);
    _MTLDebugIgnoreFailOnMissFlag(void)::ignoreFailOnMiss = v0 != 0;
    if (v0 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v2 = 136315138;
      v3 = "MTL_DEBUG_IGNORE_PSO_FAIL_ON_MISS";
      _os_log_impl(&dword_185B8E000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%s was set, ignoring MTLPipelineOptionFailOnBinaryArchiveMiss and MTLPipelineLibrary.disableRunTimeCompilation", &v2, 0xCu);
    }
  }

  else
  {
    _MTLDebugIgnoreFailOnMissFlag(void)::ignoreFailOnMiss = 0;
  }

  v1 = *MEMORY[0x1E69E9840];
}

void ___ZL16initFailureModesv_block_invoke()
{
  v28 = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  v20 = "ignore";
  v21 = 4;
  v22 = "assert";
  v23 = 6;
  v24 = "nslog";
  v25 = 5;
  v26 = "exception";
  v27 = 1;
  v10 = 0;
  v11 = 0;
  __p = 0;
  std::vector<std::pair<char const*,MTLErrorModeType>>::__init_with_size[abi:ne200100]<std::pair<char const*,MTLErrorModeType> const*,std::pair<char const*,MTLErrorModeType> const*>(&__p, &v20, &v28, 4uLL);
  v18 = @"METAL_ERROR_MODE";
  v19 = &unk_1EF4CFD50;
  [MEMORY[0x1E695DF20] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
  _CFXPreferencesRegisterDefaultValues();
  v1 = getenv([@"METAL_ERROR_MODE" UTF8String]);
  if (v1)
  {
    errorModes[0] = strtol(v1, 0, 0);
  }

  else
  {
    errorModes[0] = [v0 integerForKey:@"METAL_ERROR_MODE"];
    MTLGetEnvCase<MTLErrorModeType>("MTL_ERROR_MODE", errorModes, &__p);
  }

  v16 = @"METAL_DEBUG_ERROR_MODE";
  v2 = MEMORY[0x1E696AD98];
  if (MTLValidationEnabled())
  {
    v3 = 6;
  }

  else
  {
    v3 = 4;
  }

  v17 = [v2 numberWithInt:v3];
  [MEMORY[0x1E695DF20] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
  _CFXPreferencesRegisterDefaultValues();
  v4 = getenv([@"METAL_DEBUG_ERROR_MODE" UTF8String]);
  if (v4)
  {
    dword_1ED5B0974 = strtol(v4, 0, 0);
  }

  else
  {
    dword_1ED5B0974 = [v0 integerForKey:@"METAL_DEBUG_ERROR_MODE"];
    MTLGetEnvCase<MTLErrorModeType>("MTL_DEBUG_LAYER_ERROR_MODE", &dword_1ED5B0974, &__p);
  }

  v14 = @"METAL_WARNING_MODE";
  v15 = &unk_1EF4CFD68;
  [MEMORY[0x1E695DF20] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
  _CFXPreferencesRegisterDefaultValues();
  v5 = getenv([@"METAL_WARNING_MODE" UTF8String]);
  if (v5)
  {
    dword_1ED5B0978 = strtol(v5, 0, 0);
  }

  else
  {
    dword_1ED5B0978 = [v0 integerForKey:@"METAL_WARNING_MODE"];
    MTLGetEnvCase<MTLErrorModeType>("MTL_DEBUG_LAYER_WARNING_MODE", &dword_1ED5B0978, &__p);
  }

  v12 = @"METAL_ERROR_CHECK_EXTENDED_MODE";
  v13 = &unk_1EF4CFD68;
  [MEMORY[0x1E695DF20] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  _CFXPreferencesRegisterDefaultValues();
  v6 = getenv([@"METAL_ERROR_CHECK_EXTENDED_MODE" UTF8String]);
  if (v6)
  {
    v7 = strtol(v6, 0, 0);
  }

  else
  {
    v7 = [v0 integerForKey:@"METAL_ERROR_CHECK_EXTENDED_MODE"];
  }

  dword_1ED5B097C = v7;
  if (__p)
  {
    v10 = __p;
    operator delete(__p);
  }

  v8 = *MEMORY[0x1E69E9840];
}

void sub_185BC9834(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  os_unfair_lock_unlock(v15 + 2);
  _Unwind_Resume(a1);
}

uint64_t ___Z22_MTLDebugShouldLogKeysv_block_invoke()
{
  result = _MTLIsInternalBuild();
  if (result)
  {
    v1 = getenv("MTL_DEBUG_LOG_FUNCTIONID_KEYS");
    if (!v1)
    {
      v1 = "0";
    }

    result = strtol(v1, 0, 0);
    v2 = result != 0;
  }

  else
  {
    v2 = 0;
  }

  _MTLDebugShouldLogKeys(void)::shouldLogHashKeys = v2;
  return result;
}

void ___Z34_MTLDebugIgnorePrecompiledBinariesv_block_invoke()
{
  v12 = *MEMORY[0x1E69E9840];
  if (_MTLIsInternalBuild())
  {
    if (getenv("MTL_DEBUG_IGNORE_PRECOMPILED_BINARIES"))
    {
      v0 = MTLGetEnvDefault("MTL_DEBUG_IGNORE_PRECOMPILED_BINARIES", 0);
      _MTLDebugIgnorePrecompiledBinaries(void)::ignorePrecompiledBinaries = v0 != 0;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        v1 = "used if set";
        v6 = 136315650;
        v7 = "MTL_DEBUG_IGNORE_PRECOMPILED_BINARIES";
        if (v0)
        {
          v1 = "ignored";
        }

        v8 = 1024;
        v9 = v0 != 0;
        v10 = 2080;
        v11 = v1;
        v2 = MEMORY[0x1E69E9C10];
        v3 = "'%s' was set to '%d', binary archives and pipeline libraries will be %s.";
        v4 = 28;
        goto LABEL_10;
      }
    }

    else if (_os_feature_enabled_impl())
    {
      _MTLDebugIgnorePrecompiledBinaries(void)::ignorePrecompiledBinaries = 1;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v6) = 0;
        v2 = MEMORY[0x1E69E9C10];
        v3 = "ignore_precompiled_binaries feature flag enabled, binary archives and pipeline libraries will be ignored.";
        v4 = 2;
LABEL_10:
        _os_log_impl(&dword_185B8E000, v2, OS_LOG_TYPE_DEFAULT, v3, &v6, v4);
      }
    }
  }

  v5 = *MEMORY[0x1E69E9840];
}

uint64_t MultiLevelBinaryCache::getElement(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [[MTLBinaryKey alloc] initWithHash:a2];
  v6 = (*(*a1 + 112))(a1, v5, a3);

  return v6;
}

uint64_t MTLRangeAllocatorInitWithStartRange(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5)
{
  if (a5 <= 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = a5;
  }

  if (a4 <= 1)
  {
    v9 = 1;
  }

  else
  {
    v9 = a4;
  }

  *(a1 + 16) = 0;
  *(a1 + 24) = v8;
  *(a1 + 8) = 0;
  *a1 = 0;
  *(a1 + 32) = v9 - 1;
  result = allocElement(a1, 0);
  if (result)
  {
    v11 = *a1;
    *v11 = a2;
    v11[1] = a3 + a2;
  }

  return result;
}

MTLResourceList *MTLResourceListPoolCreateResourceList(MTLResourceListPool *a1)
{
  os_unfair_lock_lock(&a1->_priv.lock);
  tqh_first = a1->_priv.queue.tqh_first;
  if (tqh_first)
  {
    p_listPriv = &tqh_first->_listPriv;
    tqe_next = tqh_first->_listPriv.entry.tqe_next;
    tqe_prev = tqh_first->_listPriv.entry.tqe_prev;
    if (tqe_next)
    {
      tqe_next->_listPriv.entry.tqe_prev = tqe_prev;
      v6 = tqh_first->_listPriv.entry.tqe_next;
      tqe_prev = tqh_first->_listPriv.entry.tqe_prev;
    }

    else
    {
      v6 = 0;
      a1->_priv.queue.tqh_last = tqe_prev;
    }

    *tqe_prev = v6;
    --a1->_priv.count;
    tqh_first->_listPriv.entry.tqe_next = 0;
    tqh_first->_listPriv.entry.tqe_prev = 0;
    os_unfair_lock_unlock(&a1->_priv.lock);
    goto LABEL_8;
  }

  os_unfair_lock_unlock(&a1->_priv.lock);
  v7 = [[MTLResourceList alloc] initWithCapacity:a1->_resourceListCapacity];
  tqh_first = v7;
  if (v7)
  {
    p_listPriv = &v7->_listPriv;
LABEL_8:
    p_listPriv->pool = a1;
    v8 = a1;
  }

  return tqh_first;
}

_BYTE *__isMemoryLessStorageDisabled_block_invoke()
{
  result = _MTLIsInternalBuild();
  if (result)
  {
    result = getenv("MTL_DISABLE_MEMORYLESS_STORAGE_MODE");
    if (result)
    {
      if (*result == 49)
      {
        isMemoryLessStorageDisabled_result = 1;
      }
    }
  }

  return result;
}

uint64_t MTLPipelineDataCache::open(MTLPipelineDataCache *this)
{
  v18 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(this + 2);
  if (*(this + 48) == 1)
  {
    v2 = this + 24;
    if (*(this + 47) < 0)
    {
      v2 = *v2;
    }

    asprintf(this + 7, "%s", v2);
    v3 = fopen(*(this + 7), "wb");
    if (!v3)
    {
      v4 = 0;
      goto LABEL_16;
    }

    fclose(v3);
LABEL_6:
    v4 = 1;
LABEL_16:
    *(this + 49) = v4;
    v10 = 1;
    goto LABEL_17;
  }

  v5 = this + 24;
  if (*(this + 47) < 0)
  {
    v5 = *v5;
  }

  v6 = open(v5, 0);
  v7 = v6;
  if ((v6 & 0x80000000) == 0)
  {
    if (fstat(v6, &v16))
    {
      v8 = MTLPipelineLibraryDebugLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = __error();
        MTLPipelineDataCache::open(v9, buf, v8);
      }

      close(v7);
    }

    else
    {
      st_size = v16.st_size;
      *(this + 18) = v16.st_size;
      *(this + 17) = mmap(0, st_size, 1, 1, v7, 0);
      close(v7);
      if (*(this + 17) == -1)
      {
        v14 = MTLPipelineLibraryDebugLog();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          v15 = __error();
          MTLPipelineDataCache::open(v15, buf, v14);
        }
      }

      else if (MTLPipelineDataCache::parseDataFileHeader(this))
      {
        goto LABEL_6;
      }
    }
  }

  v10 = 0;
  v4 = 0;
LABEL_17:
  os_unfair_lock_unlock(this + 2);
  v11 = *MEMORY[0x1E69E9840];
  return v10 & v4;
}

BOOL MTLPipelineDataCache::parseDataFileHeader(MTLPipelineDataCache *this)
{
  v1 = *(this + 17);
  if (v1 && (v2 = *(this + 18), v2 > 0x27))
  {
    if (*v1 == 1297109068 && *(v1 + 4) == 1 && !*(v1 + 6) && (v5 = *(v1 + 8), v5 == *(this + 38)) && (v6 = *(v1 + 12), v6 == *(this + 39)) && *(v1 + 16) == v2)
    {
      *(this + 38) = v5;
      *(this + 39) = v6;
      if (v2 < *(v1 + 32) || (v7 = *(v1 + 24), v7 > v2 - 8))
      {
        v12 = MTLPipelineLibraryDebugLog();
        result = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
        if (result)
        {
          MTLPipelineDataCache::parseDataFileHeader();
          return 0;
        }
      }

      else
      {
        v8 = *(v1 + v7);
        v9 = !is_mul_ok(v8, 0x30uLL);
        v10 = __CFADD__(v7 + 8, 48 * v8);
        if (v9 || v10 || v7 + 8 + 48 * v8 > v2)
        {
          v13 = MTLPipelineLibraryDebugLog();
          result = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);
          if (result)
          {
            MTLPipelineDataCache::parseDataFileHeader();
            return 0;
          }
        }

        else
        {
          if (v8)
          {
            operator new();
          }

          return 1;
        }
      }
    }

    else
    {
      v11 = MTLPipelineLibraryDebugLog();
      result = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);
      if (result)
      {
        MTLPipelineDataCache::parseDataFileHeader();
        return 0;
      }
    }
  }

  else
  {
    v3 = MTLPipelineLibraryDebugLog();
    result = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);
    if (result)
    {
      MTLPipelineDataCache::parseDataFileHeader();
      return 0;
    }
  }

  return result;
}

void sub_185BCA768(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_185BCA82C(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

const void **std::__hash_table<std::__hash_value_type<std::string,DataBlock>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,DataBlock>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,DataBlock>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,DataBlock>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, const void **a2)
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
    std::__hash_table<std::__hash_value_type<std::string,DataBlock>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,DataBlock>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,DataBlock>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,DataBlock>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
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

void sub_185BCAA9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t reuseCacheOnReboot(void)
{
  v0 = gReuseCacheOnReboot;
  if ((reuseCacheOnRebootInitialised & 1) == 0)
  {
    v0 = MTLGetEnvDefault("FS_CACHE_REUSE_ON_REBOOT", gReuseCacheOnReboot) != 0;
    gReuseCacheOnReboot = v0;
    reuseCacheOnRebootInitialised = 1;
  }

  return v0 & 1;
}

uint64_t ___Z26getMaxSupportedLLVMVersionb_block_invoke(uint64_t a1)
{
  result = dlopen_preflight("/System/Library/PrivateFrameworks/MTLCompiler.framework/Versions/32023/MTLCompiler");
  if ((result & 1) != 0 || (result = stat("/System/Library/PrivateFrameworks/MTLCompiler.framework/Versions/32023/MTLCompiler", &v5), !result))
  {
    v3 = getMaxSupportedLLVMVersion(BOOL)::llvmVersion;
    if (getMaxSupportedLLVMVersion(BOOL)::llvmVersion <= 32023)
    {
      v3 = 32023;
    }

    getMaxSupportedLLVMVersion(BOOL)::llvmVersion = v3;
  }

  if ((*(a1 + 32) & 1) == 0)
  {
    result = dlopen_preflight("/System/Library/PrivateFrameworks/MTLCompiler.framework/Versions/32024/MTLCompiler");
    if ((result & 1) != 0 || (result = stat("/System/Library/PrivateFrameworks/MTLCompiler.framework/Versions/32024/MTLCompiler", &v5), !result))
    {
      v4 = getMaxSupportedLLVMVersion(BOOL)::llvmVersion;
      if (getMaxSupportedLLVMVersion(BOOL)::llvmVersion <= 32024)
      {
        v4 = 32024;
      }

      getMaxSupportedLLVMVersion(BOOL)::llvmVersion = v4;
    }
  }

  return result;
}

uint64_t getCompilerConnectionManager(void *a1, uint64_t a2)
{
  if (a1)
  {

    return [a1 getCompilerConnectionManager:a2];
  }

  else
  {
    if (a2 == 32024)
    {
      if (getCompilerConnectionHost(int)::onceToken != -1)
      {
        getCompilerConnectionManager();
      }

      v3 = &getCompilerConnectionHost(int)::gCompilerConnection;
    }

    else
    {
      if (a2 != 32023)
      {
        abort();
      }

      if (getCompilerConnectionHost(int)::onceToken != -1)
      {
        getCompilerConnectionManager();
      }

      v3 = &getCompilerConnectionHost(int)::gCompilerConnection;
    }

    return *v3;
  }
}

void MTLCreateCompilerConnectionManager()
{
  if (MTLShouldEnableNewCompilerScheduler())
  {
    operator new();
  }

  operator new();
}

BOOL MTLEnvVarAggregator::GET_USE_MONOLITHIC_COMPILER(MTLEnvVarAggregator *this, uint64_t a2)
{
  if (!MTLEnvVarAggregator::isInternalBuild(this))
  {
    return 0;
  }

  {
    MTLEnvVarAggregator::GET_USE_MONOLITHIC_COMPILER();
  }

  if (MTLEnvVarAggregator::GET_USE_MONOLITHIC_COMPILER(BOOL,BOOL)::ev)
  {
    return *MTLEnvVarAggregator::GET_USE_MONOLITHIC_COMPILER(BOOL,BOOL)::ev == 49;
  }

  return a2;
}

BOOL MTLEnvVarAggregator::GET_MTL_MONOLITHIC_COMPILER(MTLEnvVarAggregator *this, uint64_t a2)
{
  if (!MTLEnvVarAggregator::isInternalBuild(this))
  {
    return 0;
  }

  {
    MTLEnvVarAggregator::GET_MTL_MONOLITHIC_COMPILER();
  }

  if (MTLEnvVarAggregator::GET_MTL_MONOLITHIC_COMPILER(BOOL,BOOL)::ev)
  {
    return *MTLEnvVarAggregator::GET_MTL_MONOLITHIC_COMPILER(BOOL,BOOL)::ev == 49;
  }

  return a2;
}

const char *MTLEnvVarAggregator::GET_MTL_MONOLITHIC_COMPILER_LLVM_VERSION(MTLEnvVarAggregator *this, uint64_t a2, const char *a3)
{
  if (!MTLEnvVarAggregator::isInternalBuild(this))
  {
    return "0";
  }

  {
    MTLEnvVarAggregator::GET_MTL_MONOLITHIC_COMPILER_LLVM_VERSION();
  }

  if (MTLEnvVarAggregator::GET_MTL_MONOLITHIC_COMPILER_LLVM_VERSION(BOOL,char const*)::ev)
  {
    return MTLEnvVarAggregator::GET_MTL_MONOLITHIC_COMPILER_LLVM_VERSION(BOOL,char const*)::ev;
  }

  else
  {
    return a2;
  }
}

uint64_t MTLCompilerConnectionManagerInternal::getCompilerProcessesCount(MTLCompilerConnectionManagerInternal *this)
{
  v4 = (this + 88);
  v5 = 1;
  std::mutex::lock((this + 88));
  if ((*(this + 61) & 1) == 0)
  {
    (*(*this + 96))(this, &v4);
  }

  {
    MTLCompilerConnectionManagerInternal::getCompilerProcessesCount(void)::fromEnv = MTLEnvVarAggregator::GET_MTL_FIXED_COMPILER_PROCESS_COUNT(0, 0);
  }

  v2 = MTLCompilerConnectionManagerInternal::getCompilerProcessesCount(void)::fromEnv;
  if (MTLCompilerConnectionManagerInternal::getCompilerProcessesCount(void)::fromEnv <= 0)
  {
    v2 = *(this + 10);
  }

  if (v5 == 1)
  {
    std::mutex::unlock(v4);
  }

  return v2;
}

void sub_185BCAF10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, std::mutex *a9, char a10)
{
  if (a10 == 1)
  {
    std::mutex::unlock(a9);
  }

  _Unwind_Resume(a1);
}

void std::vector<std::shared_ptr<MTLCompilerProcess>>::__append(const void **a1, unint64_t a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (a2 <= (v4 - v5) >> 4)
  {
    if (a2)
    {
      bzero(a1[1], 16 * a2);
      v5 += 16 * a2;
    }

    a1[1] = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 4);
    if (v7 >> 60)
    {
      std::vector<std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>::__throw_length_error[abi:ne200100]();
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

    v16[4] = a1;
    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<MTLCompilerConnection>>>(a1, v9);
    }

    v10 = (16 * (v6 >> 4));
    bzero(v10, 16 * a2);
    v11 = &v10[16 * a2];
    v12 = a1[1] - *a1;
    v13 = &v10[-v12];
    memcpy(&v10[-v12], *a1, v12);
    v14 = *a1;
    *a1 = v13;
    a1[1] = v11;
    v15 = a1[2];
    a1[2] = 0;
    v16[2] = v14;
    v16[3] = v15;
    v16[0] = v14;
    v16[1] = v14;
    std::__split_buffer<std::shared_ptr<MTLCompilerConnection>>::~__split_buffer(v16);
  }
}

void std::vector<std::shared_ptr<MTLCompilerProcess>>::resize(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = (v3 - *a1) >> 4;
  if (a2 <= v4)
  {
    if (a2 < v4)
    {
      v6 = *a1 + 16 * a2;
      while (v3 != v6)
      {
        v7 = *(v3 - 8);
        if (v7)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v7);
        }

        v3 -= 16;
      }

      *(a1 + 8) = v6;
    }
  }

  else
  {
    v5 = a2 - v4;

    std::vector<std::shared_ptr<MTLCompilerProcess>>::__append(a1, v5);
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<MTLCompilerConnection>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void **std::__split_buffer<std::shared_ptr<MTLCompilerConnection>>::~__split_buffer(void **a1)
{
  std::__split_buffer<std::shared_ptr<MTLCompilerConnection>>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::shared_ptr<MTLCompilerConnection>>::clear[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  while (v1 != v2)
  {
    *(a1 + 16) = v1 - 16;
    v4 = *(v1 - 8);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      v1 = *(a1 + 16);
    }

    else
    {
      v1 -= 16;
    }
  }
}

void MTLCompilerScheduler::createCompiler(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  if (a2 == -1)
  {
    v4 = *(a1 + 256);
    if (*(a1 + 264) == v4)
    {
LABEL_7:
      v7 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      if (v7)
      {
        MTLCompilerScheduler::createCompiler(v7, v8, v9, v10, v11, v12, v13, v14);
      }

      return;
    }

    v5 = 0;
    v2 = 0;
    while (1)
    {
      v6 = *(v4 + v5);
      if (!v6 || (MTLCompilerProcess::isAlive(v6) & 1) == 0)
      {
        break;
      }

      ++v2;
      v4 = *(a1 + 256);
      v5 += 16;
      if (v2 >= (*(a1 + 264) - v4) >> 4)
      {
        goto LABEL_7;
      }
    }
  }

  v15 = 16 * v2;
  v16 = *(*(a1 + 256) + v15);
  if (!v16)
  {
    {
      MTLCompilerScheduler::createCompiler(unsigned long long,std::unique_lock<std::mutex> &,unsigned int)::envOverride = MTLEnvVarAggregator::GET_MTL_THREADS_PER_COMPILER(0, 0);
    }

    std::allocate_shared[abi:ne200100]<MTLCompilerProcess,std::allocator<MTLCompilerProcess>,MTLCompilerScheduler *,unsigned long long &,unsigned int &,0>();
  }

  if ((MTLCompilerProcess::isAlive(v16) & 1) == 0)
  {
    v17 = *(*(a1 + 256) + v15);

    MTLCompilerProcess::setIsAlive(v17, 1);
  }
}

uint64_t MTLGetOptimalCompilerProcessesCount()
{
  if (MTLGetOptimalCompilerProcessesCount::onceToken != -1)
  {
    MTLGetOptimalCompilerProcessesCount_cold_1();
  }

  return MTLGetOptimalCompilerProcessesCount::ret;
}

void *std::vector<std::shared_ptr<MTLCompilerConnection>>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (!(a2 >> 60))
    {
      v2 = result[1] - *result;
      v3 = result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<MTLCompilerConnection>>>(result, a2);
    }

    std::vector<std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void MTLCompilerProcess::MTLCompilerProcess(MTLCompilerProcess *this, MTLCompilerScheduler *a2, int a3, unsigned int a4)
{
  *this = a3;
  *(this + 4) = a4;
  *(this + 5) = 1;
  *(this + 7) = 1;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 4) = a2;
  std::vector<std::shared_ptr<MTLCompilerConnection>>::reserve(this + 1, a4);
}

void sub_185BCB544(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::shared_ptr<MTLCompilerConnection>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *std::__shared_ptr_emplace<MTLCompilerProcess>::__shared_ptr_emplace[abi:ne200100]<MTLCompilerScheduler *,unsigned long long &,unsigned int &,std::allocator<MTLCompilerProcess>,0>(void *a1, MTLCompilerScheduler **a2, unsigned int *a3, unsigned int *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1EF477668;
  MTLCompilerProcess::MTLCompilerProcess((a1 + 3), *a2, *a3, *a4);
  return a1;
}

uint64_t MTLCompilerProcess::createConnections(MTLCompilerProcess *this)
{
  v4[2] = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  v4[1] = 0;
  result = MEMORY[0x186600220](v4);
  if (*(*(this + 4) + 36) == 1)
  {
    std::allocate_shared[abi:ne200100]<MTLMonolithicCompilerConnection,std::allocator<MTLMonolithicCompilerConnection>,MTLCompilerScheduler *&,MTLCompilerProcess *,0>();
  }

  if (*(this + 4))
  {
    std::allocate_shared[abi:ne200100]<MTLXPCCompilerConnection,std::allocator<MTLXPCCompilerConnection>,MTLCompilerScheduler *&,MTLCompilerProcess *,unsigned char (&)[16],unsigned int &,0>();
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_185BCB6F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void MTLXPCCompilerConnection::MTLXPCCompilerConnection(MTLXPCCompilerConnection *this, MTLCompilerScheduler *a2, MTLCompilerProcess *a3, unsigned __int8 (*a4)[16], uint64_t a5)
{
  v5 = MTLCompilerConnection::MTLCompilerConnection(this, a2, a3, a4, a5);
  *v5 = &unk_1EF473478;
  *(v5 + 128) = 0;
  *(v5 + 159) = 16;
  strcpy((v5 + 136), "<unknown reason>");
  MTLXPCCompilerConnection::createConnectionHandle(v5);
}

uint64_t MTLCompilerConnection::MTLCompilerConnection(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, uint64_t a5)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_1EF475C30;
  *(a1 + 24) = a5;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0;
  *(a1 + 88) = a2;
  *(a1 + 96) = a3;
  v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  *(a1 + 104) = dispatch_queue_create("com.apple.MTLCompilerConnectionQueue", v7);
  v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  *(a1 + 112) = dispatch_queue_create("com.apple.MTLCompilerCancellationQueue", v8);
  *(a1 + 120) = 257;
  *(a1 + 123) = 0;
  *(a1 + 32) = *a4;
  return a1;
}

void *std::__shared_ptr_emplace<MTLXPCCompilerConnection>::__shared_ptr_emplace[abi:ne200100]<MTLCompilerScheduler *&,MTLCompilerProcess *,unsigned char (&)[16],unsigned int &,std::allocator<MTLXPCCompilerConnection>,0>(void *a1, MTLCompilerScheduler **a2, MTLCompilerProcess **a3, unsigned __int8 (*a4)[16], unsigned int *a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1EF474F18;
  MTLXPCCompilerConnection::MTLXPCCompilerConnection((a1 + 3), *a2, *a3, a4, *a5);
  return a1;
}

BOOL MTLXPCCompilerConnection::createConnectionHandle(MTLXPCCompilerConnection *this)
{
  v2 = *(this + 14);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___ZN24MTLXPCCompilerConnection22createConnectionHandleEv_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = this;
  dispatch_sync(v2, block);
  v3 = *(this + 16);
  if (!v3)
  {
    v4 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v4)
    {
      MTLXPCCompilerConnection::createConnectionHandle(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  return v3 != 0;
}

void ___ZN24MTLXPCCompilerConnection22createConnectionHandleEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (!*(v1 + 128))
  {
    *(v1 + 128) = xpc_connection_create("com.apple.MTLCompilerService", 0);
    xpc_connection_set_oneshot_instance();
    xpc_connection_set_event_handler(*(v1 + 128), &__block_literal_global_8_0);
    v2 = *(v1 + 128);

    xpc_connection_activate(v2);
  }
}

void std::shared_ptr<MTLMonolithicCompilerConnection>::__enable_weak_this[abi:ne200100]<MTLCompilerConnection,MTLMonolithicCompilerConnection,0>(uint64_t a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    v4 = a2[1];
    if (!v4 || v4->__shared_owners_ == -1)
    {
      v5 = *(a1 + 8);
      if (v5)
      {
        atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
        atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        v4 = a2[1];
      }

      *a2 = a3;
      a2[1] = v5;
      if (v4)
      {
        std::__shared_weak_count::__release_weak(v4);
      }

      if (v5)
      {

        std::__shared_weak_count::__release_shared[abi:ne200100](v5);
      }
    }
  }
}

NSString *MTLCompilerFunctionRequest::setSpecializedName(MTLCompilerFunctionRequest *this, NSString *a2)
{
  v4 = *(this + 34);
  if (v4)
  {
  }

  result = a2;
  *(this + 34) = result;
  return result;
}

uint64_t __copy_helper_block_e8_88c51_ZTSNSt3__110shared_ptrI23MultiLevelFunctionCacheEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 96);
  *(result + 88) = *(a2 + 88);
  *(result + 96) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void MultiLevelAirCache::addElement(MultiLevelAirCache *this, const MTLHashKey *a2, MTLAirEntry *a3)
{
  v5 = [[MTLBinaryKey alloc] initWithHash:a2];
  (*(*this + 104))(this, v5, a3);
}

void MultiLevelAirCache::addElement(MultiLevelAirCache *this, MTLBinaryKey *a2, MTLAirEntry *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = *(this + 6);
  if (v5)
  {
    v6 = [(MTLBinaryKey *)a2 value];
    v7 = *MEMORY[0x1E69E9840];

    [v5 addArchiveEntryInternal:a3 forKey:v6];
  }

  else
  {
    v14 = 0;
    buffer_ptr = 0;
    v9 = dispatch_data_create_map([(MTLAirEntry *)a3 data], &buffer_ptr, &v14);
    v10 = [(MTLBinaryKey *)a2 value];
    v11 = *(this + 3);
    v12 = *&v10->var0[16];
    v16[0] = *v10->var0;
    v16[1] = v12;
    (*(*v11 + 40))(v11, v16, buffer_ptr, v14);
    dispatch_release(v9);
    v13 = *MEMORY[0x1E69E9840];
  }
}

void __destroy_helper_block_e8_88c51_ZTSNSt3__110shared_ptrI23MultiLevelFunctionCacheEE(uint64_t a1)
{
  v1 = *(a1 + 96);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void __Block_byref_object_dispose__6(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void MTLCompilerFunctionRequest::MTLCompilerFunctionRequest(MTLCompilerFunctionRequest *this)
{
  MTLCompilerRequest::MTLCompilerRequest(this);
  *v1 = &unk_1EF475BC0;
  *(v1 + 288) = 0;
  *(v1 + 292) = 0;
  *(v1 + 192) = 0;
  *(v1 + 200) = 0;
  *(v1 + 224) = 0u;
  *(v1 + 240) = 0u;
  *(v1 + 256) = 0u;
  *(v1 + 269) = 0u;
  *(v1 + 296) = 0u;
  *(v1 + 312) = 0u;
  *(v1 + 328) = 0u;
}

void MTLCompilerFunctionRequest::setPipelineData(uint64_t a1, dispatch_object_t object)
{
  if (object)
  {
    dispatch_retain(object);
  }

  *(a1 + 224) = object;
}

id MTLCompilerFunctionRequest::setVisibleFunctionGroups(uint64_t a1, void *a2)
{
  result = a2;
  *(a1 + 264) = result;
  return result;
}

id MTLCompilerFunctionRequest::setPrivateVisibleFunctions(uint64_t a1, void *a2)
{
  result = a2;
  *(a1 + 256) = result;
  return result;
}

uint64_t MTLCompilerFunctionRequest::setLimits(uint64_t this, int a2, int a3)
{
  *(this + 212) = a2;
  *(this + 216) = a3;
  return this;
}

void MTLCompilerFunctionRequest::setAirScript(uint64_t a1, dispatch_object_t object)
{
  v4 = *(a1 + 312);
  if (v4)
  {
    dispatch_release(v4);
  }

  *(a1 + 312) = object;

  dispatch_retain(object);
}

uint64_t MTLCompilerScheduler::assignQosToRequest(uint64_t a1, sched_param **a2)
{
  sched_priority = (*a2)[17].sched_priority;
  if (sched_priority >= qos_class_self())
  {
    v5 = *a2;
    if ((*a2)[17].sched_priority)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v4 = qos_class_self();
    v5 = *a2;
    (*a2)[17].sched_priority = v4;
    if (v4)
    {
      goto LABEL_6;
    }
  }

  v5[17].sched_priority = 21;
LABEL_6:
  v9 = 0;
  v6 = pthread_self();
  result = pthread_getschedparam(v6, &v9, &v10);
  v8 = *a2 + 17;
  if (!result)
  {
    v8 = &v10;
  }

  *(*a2)[16].__opaque = v8->sched_priority;
  return result;
}

void std::unique_lock<std::mutex>::unlock[abi:ne200100](uint64_t a1)
{
  if (*(a1 + 8))
  {
    std::mutex::unlock(*a1);
    *(a1 + 8) = 0;
  }

  else
  {
    std::__throw_system_error(1, "unique_lock::unlock: not locked");
    [(_MTLFunctionInternal *)v2 bitcodeType];
  }
}

uint64_t MTLLibraryDataWithArchive::parseBitCodeHeader(MTLLibraryData *this, unint64_t a2, unint64_t a3, unint64_t *a4, unint64_t *a5, unsigned int *a6)
{
  v12 = MTLLibraryData::mutex(this);
  os_unfair_lock_lock(v12);
  if ((*(*this + 360))(this, a2))
  {
    v18 = 0;
    if ((*(*this + 368))(this, &v18, 4) == 4)
    {
      if (v18 == 248563483)
      {
        HIDWORD(v16) = 0;
        v17 = 0;
        (*(*this + 368))(this, &v17, 4);
        (*(*this + 368))(this, &v16 + 4, 4);
        *a5 = v17;
        *a6 = HIDWORD(v16);
        *a4 = a2 + 12;
LABEL_11:
        v14 = 1;
        goto LABEL_9;
      }

      if (v18 == 186106078)
      {
        v17 = 0;
        v16 = 0;
        (*(*this + 368))(this, &v17, 4);
        (*(*this + 368))(this, &v16 + 4, 4);
        (*(*this + 368))(this, &v16, 4);
        v13 = (HIDWORD(v16) + v16 + 15) & 0xFFFFFFF0;
        if (a3)
        {
          v13 = a3;
        }

        *a5 = v13;
        *a4 = a2;
        goto LABEL_11;
      }
    }
  }

  v14 = 0;
LABEL_9:
  os_unfair_lock_unlock(v12);
  return v14;
}

uint64_t MTLXPCCompilerConnection::checkConnectionAlive(MTLXPCCompilerConnection *this)
{
  *&v18[5] = *MEMORY[0x1E69E9840];
  v2 = mach_absolute_time();
  v3 = 0;
  v4 = MEMORY[0x1E69E9C10];
  do
  {
    MTLXPCCompilerConnection::createConnectionHandle(this);
    if (v3 == 5)
    {
      sleep(1u);
      if (*(this + 121) == 1)
      {
        goto LABEL_6;
      }
    }

    else
    {
      if (*(this + 121))
      {
LABEL_6:
        __p.__r_.__value_.__r.__words[0] = MTLCompilerScheduler::getPingRequestDictionary(*(this + 11));
        v5 = (*(*this + 32))(this, &__p);
        *(this + 121) = 0;
        goto LABEL_10;
      }

      if (!v3)
      {
        __p.__r_.__value_.__r.__words[0] = MTLCompilerScheduler::getPingRequestDictionary(*(this + 11));
        v6 = (*(*this + 40))(this, &__p);
        goto LABEL_9;
      }
    }

    __p.__r_.__value_.__r.__words[0] = MTLCompilerScheduler::getPingRequestDictionary(*(this + 11));
    v6 = (*(*this + 48))(this, &__p);
LABEL_9:
    v5 = v6;
LABEL_10:
    v7 = MTLXPCCompilerConnection::xpcHandler(v5);
    if (v7 == 1)
    {
      v9 = *(this + 14);
      __p.__r_.__value_.__r.__words[0] = MEMORY[0x1E69E9820];
      __p.__r_.__value_.__l.__size_ = 3221225472;
      __p.__r_.__value_.__r.__words[2] = ___ZN24MTLXPCCompilerConnection16cancelConnectionEv_block_invoke;
      v15 = &__block_descriptor_40_e5_v8__0l;
      v16 = this;
      dispatch_sync(v9, &__p);
      if (*(this + 159) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *(this + 17), *(this + 18));
      }

      else
      {
        __p = *(this + 136);
      }

      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        MTLXPCCompilerConnection::checkConnectionAlive(buf, &__p.__r_.__value_.__r.__words[2] + 7, &__p, v18);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

LABEL_20:
      v8 = 0;
      goto LABEL_21;
    }

    if (v7)
    {
      goto LABEL_20;
    }

    *(this + 122) = xpc_dictionary_get_BOOL(v5, "ProbGuardMalloc");
    v8 = 1;
LABEL_21:
    xpc_release(v5);
    if (v8)
    {
      break;
    }
  }

  while (v3++ <= 8);
  if ((v8 & 1) == 0)
  {
    v11 = deltaInMilliseconds(v2);
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      MTLXPCCompilerConnection::checkConnectionAlive(v11);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
  return v8;
}

_MTLFunction *MTLCompilerFunctionRequest::setFunction(_MTLFunction *this, _MTLFunction *a2)
{
  importedSymbols = this->_importedSymbols;
  if (importedSymbols != a2)
  {
    v4 = this;
    if (importedSymbols)
    {
    }

    this = a2;
    v4->_importedSymbols = this;
  }

  return this;
}

id MTLCompilerFunctionRequest::setVisibleFunctions(uint64_t a1, void *a2)
{
  result = a2;
  *(a1 + 248) = result;
  return result;
}

NSDictionary *MTLCompilerFunctionRequest::setGPUCompilerSPIOptions(MTLCompilerFunctionRequest *this, NSDictionary *a2)
{
  v4 = *(this + 42);
  if (v4)
  {
  }

  result = a2;
  *(this + 42) = result;
  return result;
}

void MTLCompilerFunctionRequest::setPipelineArchiverUnitId(uint64_t a1, dispatch_object_t object)
{
  *(a1 + 328) = object;
  if (object)
  {
    dispatch_retain(object);
  }
}

void sub_185BCCA68(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::shared_ptr<MTLCompilerRequest>::shared_ptr[abi:ne200100]<MTLCompilerRequest,0>(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::allocator<MTLCompileToken>::construct[abi:ne200100]<MTLCompileToken,std::shared_ptr<MTLCompilerRequest> &>(uint64_t a1, void *a2, uint64_t *a3)
{
  v3 = a3[1];
  v4 = *a3;
  v5 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  MTLCompileToken::MTLCompileToken(a2, &v4);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

void sub_185BCCAD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void *std::__shared_ptr_emplace<MTLCompileToken>::__shared_ptr_emplace[abi:ne200100]<std::shared_ptr<MTLCompilerRequest> &,std::allocator<MTLCompileToken>,0>(void *a1, uint64_t *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1EF477730;
  std::allocator<MTLCompileToken>::construct[abi:ne200100]<MTLCompileToken,std::shared_ptr<MTLCompilerRequest> &>(&v4, a1 + 3, a2);
  return a1;
}

void *MTLCompileToken::MTLCompileToken(void *result, void *a2)
{
  v2 = a2[1];
  *result = *a2;
  result[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  result[2] = 0;
  return result;
}

void *MTLCompileToken::setStatus(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 16);
  if (result)
  {
    return [result setStatus:a2];
  }

  return result;
}

void ___ZN20MTLCompilerScheduler12buildRequestEjNSt3__110shared_ptrI18MTLCompilerRequestEEbP11objc_objectU13block_pointerFv16MTLCompilerErrorPU27objcproto16OS_dispatch_data8NSObjectPKcE_block_invoke(uint64_t a1, int a2, void *buffer, size_t size)
{
  if (buffer && size)
  {
    v5 = dispatch_data_create(buffer, size, 0, 0);
    (*(*(a1 + 32) + 16))();

    dispatch_release(v5);
  }

  else
  {
    v6 = *(a1 + 32);
    v7 = *(*(a1 + 32) + 16);

    v7();
  }
}

void *__copy_helper_block_e8_88c173_ZTSNSt3__110shared_ptrINS_13unordered_mapI18CompilerOutputTypePU27objcproto16OS_dispatch_data8NSObjectNS_4hashIS2_EENS_8equal_toIS2_EENS_9allocatorINS_4pairIKS2_S5_EEEEEEEE104c173_ZTSNSt3__110shared_ptrINS_13unordered_mapI18CompilerOutputTypePU27objcproto16OS_dispatch_data8NSObjectNS_4hashIS2_EENS_8equal_toIS2_EENS_9allocatorINS_4pairIKS2_S5_EEEEEEEE120c49_ZTSNSt3__110shared_ptrI21MultiLevelBinaryCacheEE136c148_ZTSNSt3__110shared_ptrINS_13unordered_mapI18CompilerOutputTypeP12MTLBinaryKeyNS_4hashIS2_EENS_8equal_toIS2_EENS_9allocatorINS_4pairIKS2_S4_EEEEEEEE(void *result, void *a2)
{
  v2 = a2[12];
  result[11] = a2[11];
  result[12] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v3 = a2[14];
  result[13] = a2[13];
  result[14] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = a2[16];
  result[15] = a2[15];
  result[16] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = a2[18];
  result[17] = a2[17];
  result[18] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void MTLCompilerScheduler::getBestConnection(uint64_t a1@<X0>, uint64_t a2@<X1>, MTLCompilerConnection **a3@<X8>)
{
  v59 = MTLCompilerScheduler::QOSToID(*(*a2 + 136), a2);
  v5 = *(a1 + 256);
  if (*(a1 + 36) == 1)
  {
    v6 = *(*v5 + 1);
    v8 = *v6;
    v7 = v6[1];
    *a3 = v8;
    a3[1] = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(v7 + 1, 1uLL, memory_order_relaxed);
    }

    return;
  }

  v49 = a3;
  v9 = *(a1 + 264);
  if (v5 == v9)
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v14 = 0;
    v32 = 0;
LABEL_61:
    v33 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v33)
    {
      MTLCompilerScheduler::getBestConnection(v33, v34, v35, v36, v37, v38, v39, v40);
    }

    *v49 = 0;
    v49[1] = 0;
    goto LABEL_80;
  }

  v50 = *(a1 + 264);
  v51 = 0;
  v10 = 0;
  v56 = 0;
  v57 = 0;
  v11 = 0;
  v53 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v55 = 0x7FFFFFFF;
  v60 = 0x7FFFFFFF;
  do
  {
    if (*v5 && (MTLCompilerProcess::isAlive(*v5) & 1) != 0)
    {
      if (*(*a2 + 168) == 1 && MTLCompilerProcess::isIdle(*v5))
      {
        v43 = *(*v5 + 1);
        v45 = *v43;
        v44 = v43[1];
        *v49 = v45;
        v49[1] = v44;
        if (v44)
        {
          atomic_fetch_add_explicit(v44 + 1, 1uLL, memory_order_relaxed);
        }

        v32 = v57;
LABEL_80:
        if (v12)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v12);
        }

        goto LABEL_82;
      }

      if (v15)
      {
        v54 = v14;
      }

      else
      {
        v15 = *v5;
        v16 = v5[1];
        if (v16)
        {
          atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v54 = v16;
        if (v14)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v14);
        }
      }

      v17 = *(*v5 + 1);
      v18 = *(*v5 + 2);
      if (v17 != v18)
      {
        v58 = v5;
        v52 = v15;
        v19 = v10;
        while (1)
        {
          v20 = v11;
          v21 = v19;
          if (!*v17)
          {
            goto LABEL_54;
          }

          if (MTLCompilerConnection::isIdle(*v17))
          {
            if (*(*a2 + 168))
            {
              goto LABEL_23;
            }

            if (MTLCompilerProcess::canReceiveThreadUnsafeRequests(*v58))
            {
              v41 = *(v17 + 8);
              if (v41)
              {
                atomic_fetch_add_explicit(&v41->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v32 = v57;
              if (v12)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v12);
              }

              v42 = *(v17 + 8);
              *v49 = *v17;
              v49[1] = v42;
              if (v42)
              {
                atomic_fetch_add_explicit(v42 + 1, 1uLL, memory_order_relaxed);
              }

              v14 = v54;
              v12 = v41;
              v11 = v20;
              v10 = v21;
              goto LABEL_80;
            }

            if (*(*a2 + 168))
            {
LABEL_23:
              v13 = *v17;
              v23 = *(v17 + 8);
              if (v23)
              {
                atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              if (v12)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v12);
              }

              if (v13)
              {
LABEL_28:
                v12 = v23;
                goto LABEL_54;
              }
            }

            else
            {
              v23 = v12;
              if (v13)
              {
                goto LABEL_28;
              }
            }

            v13 = *v17;
            v12 = *(v17 + 8);
            if (v12)
            {
              atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            if (!v23)
            {
              goto LABEL_54;
            }

            goto LABEL_53;
          }

          v24 = v18;
          v25 = v13;
          v26 = v12;
          v27 = *v17;
          v28 = MTLCompilerScheduler::QOSToID(*(*(*v17 + 48) + 136), v22);
          v29 = v28 - v59;
          if (v28 == v59)
          {
            if ((*(v27 + 123) & 1) == 0)
            {
              v31 = *(v17 + 8);
              if (v31)
              {
                atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              if (v57)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v57);
              }

              v53 = v27;
              v57 = v31;
            }
          }

          else if (v29 < 0)
          {
            if (v55 > v59 - v28)
            {
              v30 = *(v17 + 8);
              v12 = v26;
              if (v30)
              {
                atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v23 = v21;
              v51 = v27;
              v55 = v59 - v28;
              v13 = v25;
              v18 = v24;
              v19 = v30;
              if (!v21)
              {
                goto LABEL_54;
              }

              goto LABEL_53;
            }

            goto LABEL_48;
          }

          if (v29 < v60)
          {
            v11 = *(v17 + 8);
            v56 = *v17;
            if (v11)
            {
              atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v23 = v20;
            v19 = v21;
            v60 = v29;
            v12 = v26;
            v13 = v25;
            v18 = v24;
            if (!v20)
            {
              goto LABEL_54;
            }

LABEL_53:
            std::__shared_weak_count::__release_shared[abi:ne200100](v23);
            goto LABEL_54;
          }

LABEL_48:
          v11 = v20;
          v19 = v21;
          v12 = v26;
          v13 = v25;
          v18 = v24;
LABEL_54:
          v17 += 16;
          if (v17 == v18)
          {
            v10 = v19;
            v14 = v54;
            v15 = v52;
            v9 = v50;
            v5 = v58;
            goto LABEL_57;
          }
        }
      }

      v14 = v54;
    }

LABEL_57:
    v5 += 2;
  }

  while (v5 != v9);
  if (!v13)
  {
    v32 = v57;
    if (v51)
    {
      *v49 = v51;
      v49[1] = v10;
      v10 = 0;
      goto LABEL_80;
    }

    if (v53)
    {
      *v49 = v53;
      v49[1] = v57;
      v32 = 0;
      goto LABEL_80;
    }

    if (v56)
    {
      *v49 = v56;
      v49[1] = v11;
      v11 = 0;
      goto LABEL_80;
    }

    if (v15)
    {
      for (i = *(v15 + 1); i != *(v15 + 2); i += 2)
      {
        v47 = *i;
        if (*i)
        {
          v48 = i[1];
          *v49 = v47;
          v49[1] = v48;
          if (v48)
          {
            atomic_fetch_add_explicit(v48 + 1, 1uLL, memory_order_relaxed);
          }

          goto LABEL_80;
        }
      }
    }

    goto LABEL_61;
  }

  *v49 = v13;
  v49[1] = v12;
  v32 = v57;
LABEL_82:
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  if (v32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v32);
  }

  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }
}

void sub_185BCD184(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
    if (!v17)
    {
LABEL_7:
      if (!v18)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else if (!v17)
  {
    goto LABEL_7;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  if (!v18)
  {
LABEL_9:
    _Unwind_Resume(exception_object);
  }

LABEL_8:
  std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  goto LABEL_9;
}

uint64_t MTLCompilerScheduler::QOSToID(uint64_t this, qos_class_t a2)
{
  if (this > 20)
  {
    switch(this)
    {
      case 0x15:
        return 3;
      case 0x21:
        return 5;
      case 0x19:
        return 4;
    }
  }

  else
  {
    switch(this)
    {
      case 0:
        return this;
      case 9:
        return 1;
      case 0x11:
        return 2;
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t MTLCompilerConnection::isIdle(MTLCompilerConnection *this)
{
  v1 = *(this + 6);
  if (v1)
  {
    v2 = *(v1 + 165);
  }

  else
  {
    v2 = 1;
  }

  return v2 & 1;
}

void *std::shared_ptr<MTLCompilerConnection>::shared_ptr[abi:ne200100]<MTLCompilerConnection,0>(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  if (!v3)
  {
    a1[1] = 0;
LABEL_5:
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v4 = std::__shared_weak_count::lock(v3);
  a1[1] = v4;
  if (!v4)
  {
    goto LABEL_5;
  }

  return a1;
}

uint64_t __copy_helper_block_e8_40c46_ZTSNSt3__110shared_ptrI18MTLCompilerRequestEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

dispatch_block_t MTLCompilerScheduler::createBlockWithData(uint64_t a1, void *a2)
{
  v3 = *a2;
  v4 = *(*a2 + 136);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3321888768;
  block[2] = ___ZN20MTLCompilerScheduler19createBlockWithDataENSt3__110shared_ptrI19MTLSchedulerRequestEE_block_invoke;
  block[3] = &__block_descriptor_56_e8_40c47_ZTSNSt3__110shared_ptrI19MTLSchedulerRequestEE_e5_v8__0l;
  block[4] = a1;
  block[5] = v3;
  v5 = a2[1];
  v9 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v4, -1, block);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  return v6;
}

uint64_t __copy_helper_block_e8_40c47_ZTSNSt3__110shared_ptrI19MTLSchedulerRequestEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void MTLCompilerConnection::scheduleRequest(uint64_t a1, int a2, __int128 *a3, uint64_t a4)
{
  v6 = *a3;
  v7 = *(*a3 + 96);
  if (*(*a3 + 162) == 1)
  {
    v8 = *(v7 + 56);
    *(v7 + 48) = 0;
    *(v7 + 56) = 0;
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }

    *(*a3 + 96) = 0;
    v9 = *(a1 + 104);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = ___ZN21MTLCompilerConnection15scheduleRequestEbNSt3__110shared_ptrI19MTLSchedulerRequestEERNS0_11unique_lockINS0_5mutexEEE_block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = a1;
    v10 = block;
LABEL_5:
    dispatch_async(v9, v10);
    return;
  }

  if ((*(*(v7 + 88) + 36) & 1) == 0 && (*(v6 + 168) & 1) == 0)
  {
    canReceiveThreadUnsafeRequests = MTLCompilerProcess::canReceiveThreadUnsafeRequests(*(v7 + 96));
    v14 = *(*a3 + 96);
    if (!canReceiveThreadUnsafeRequests)
    {
      *(*a3 + 104) = v14;
      v19 = v14[7];
      v14[6] = 0;
      v14[7] = 0;
      if (v19)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v19);
      }

      v20 = *a3;
      *(v20 + 96) = 0;
      *(v20 + 166) = 1;
      MTLCompilerScheduler::insertRequest(*(a1 + 88), a3);
      *(*a3 + 166) = 0;
      v9 = *(a1 + 104);
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = ___ZN21MTLCompilerConnection15scheduleRequestEbNSt3__110shared_ptrI19MTLSchedulerRequestEERNS0_11unique_lockINS0_5mutexEEE_block_invoke_2;
      v21[3] = &__block_descriptor_40_e5_v8__0l;
      v21[4] = a1;
      v10 = v21;
      goto LABEL_5;
    }

    MTLCompilerProcess::setCanReceiveThreadUnsafeRequests(v14[12], 0);
    v6 = *a3;
  }

  *(a1 + 123) = 0;
  *(v6 + 167) = 1;
  dispatch_async(*(a1 + 104), *(v6 + 64));
  std::unique_lock<std::mutex>::unlock[abi:ne200100](a4);
  if (MTLTraceEnabled())
  {
    v15 = *(*a3 + 161);
    v16 = *(*a3 + 24);
    v17 = *(*a3 + 168);
    kdebug_trace();
  }

  if (a2)
  {
    v18 = *(a1 + 104);

    dispatch_sync(v18, &__block_literal_global_9);
  }
}

uint64_t MTLCompilerFunctionRequest::serializedRequest(MTLCompilerFunctionRequest *this, int a2, char **a3)
{
  v213 = *MEMORY[0x1E69E9840];
  v3 = *(this + 29);
  if (v3)
  {
    goto LABEL_183;
  }

  v5 = this;
  v6 = *(this + 292);
  v7 = *(this + 39);
  buffer_ptr = 0;
  size_ptr = 0;
  if (v7)
  {
    v8 = dispatch_data_create_map(v7, &buffer_ptr, &size_ptr);
    v9 = strncmp(buffer_ptr + 4, "AIRC", 4uLL) != 0;
  }

  else
  {
    v8 = 0;
    v9 = (v7 != 0) & v6;
  }

  v122 = v9;
  v147 = *(v5 + 24);
  v135 = *(v5 + 25);
  v10 = *(v5 + 43);
  v99 = v8;
  if (v10 == 10)
  {
    v11 = 0x2000000;
  }

  else if (v10 == 7)
  {
    if (*(v5 + 70) == 10)
    {
      v11 = 0x2000000;
    }

    else
    {
      v11 = 100663296;
    }
  }

  else
  {
    v11 = 100663296;
  }

  if (v147)
  {
    v145 = [v147 device];
  }

  else
  {
    v145 = [v135 device];
  }

  v12 = _MTLGetMTLCompilerLLVMVersionForDevice(v145);
  _MTLGetLLVMVersionFromDevice(v145);
  v211 = 0u;
  v212 = 0u;
  v209 = 0u;
  v210 = 0u;
  v183 = 0;
  v184 = 0;
  v207 = 0u;
  v208 = 0u;
  v182[0] = 0;
  *(v182 + 3) = 0;
  v121 = *(v5 + 168);
  active_platform = dyld_get_active_platform();
  v13 = *(v5 + 37);
  if (v13)
  {
    if (*(v5 + 292))
    {
      LODWORD(v13) = 0x800000;
    }

    else
    {
      LODWORD(v13) = 0;
    }
  }

  if (v12 == a2)
  {
    v14 = v11;
  }

  else
  {
    v14 = 0;
  }

  v142 = v13 | v14;
  v15 = v147;
  if (v147)
  {
    v16 = [v147 libraryData];
    v15 = v147;
    if ([(*(*v16 + 72))(v16) count] || (v15 = v147, objc_msgSend((*(*v16 + 64))(v16), "count")))
    {
      v142 |= 0x8000000u;
    }
  }

  *a3 = 0;
  __src = 0;
  __n = 0;
  v17 = *(v5 + 22);
  if (v17)
  {
    object = dispatch_data_create_map(v17, &__src, &__n);
    v18 = __n;
  }

  else
  {
    v18 = 0;
    object = 0;
  }

  v19 = v15 == 0;
  v20 = gCompilerTestMode;
  v21 = *(v5 + 284);
  v118 = *(v5 + 52);
  v22 = *(v5 + 212);
  v23 = *(v5 + 30);
  v126 = v18 - v23;
  v127 = v23;
  v24 = v15;
  v125 = (v18 - v23) + 296;
  v25 = v125 + v23;
  if (v24)
  {
    v140 = [v24 libraryData];
    if (MTLLibraryData::overrideTriple(v140))
    {
      __s = [MTLLibraryData::overrideTriple(v140) UTF8String];
      v132 = v25;
      v131 = strlen(__s) + 1;
      v25 += v131;
      goto LABEL_34;
    }
  }

  else
  {
    v140 = [v135 libraryData];
  }

  v132 = 0;
  LODWORD(v131) = 0;
  __s = 0;
LABEL_34:
  v136 = v25 + 7;
  v124 = (v25 + 7) & 0xFFFFFFF8;
  size = (v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = *(v5 + 72);
  if (!v26)
  {
    v26 = v12;
  }

  v141 = v26;
  v178 = 0;
  _getForcedAIRVersion(&v178 + 1, &v178);
  v27 = HIDWORD(v178);
  v28 = v178;
  v29 = _MTLGetAIRVersionForLLVMBitcodeVersion(v141);
  if (!(v27 | v28))
  {
    IsFrozen = _MTLDeviceIsFrozen(v145);
    v31 = v29 >> 3 > 0x400;
    if (IsFrozen && v31)
    {
      v27 = 2;
    }

    else
    {
      v27 = 0;
    }

    if (IsFrozen && v31)
    {
      v28 = 7;
    }

    else
    {
      v28 = 0;
    }
  }

  v32 = (v27 | v28) == 0;
  v33 = v141 < 0x7D17;
  v34 = !v32 || !v33;
  if (v32 && v33)
  {
    v35 = HIWORD(v29);
  }

  else
  {
    v35 = v27;
  }

  if (v34)
  {
    v36 = v28;
  }

  else
  {
    v36 = v29;
  }

  v115 = v36;
  v116 = v35;
  v177 = 0;
  v176 = 0;
  v37 = *(v5 + 28);
  if (v37)
  {
    v117 = dispatch_data_create_map(v37, &v177, &v176);
    v38 = v176;
  }

  else
  {
    v38 = 0;
    v117 = 0;
  }

  v39 = v147;
  v133 = v38;
  v146 = ((v136 | 7) + v38) & 0xFFFFFFFFFFFFFFF8;
  if (v147)
  {
    v134 = [v147 name];
    v40 = strlen([v134 UTF8String]);
    WORD2(v114) = [v147 bitcodeType];
    size = ((v40 + 8) & 0xFFFFFFF8) + v146;
    if ([v147 bitCodeFileSize])
    {
      [v147 pluginData];
    }

    v175 = 0;
    v174 = 0;
    v173 = 0;
    (*(*v140 + 208))(v140, [v147 bitCodeOffset], objc_msgSend(v147, "bitCodeFileSize"), &v174, &v175, &v173);
    v130 = v146;
    LOWORD(v114) = v40 + 1;
    v146 += (v40 + 8) & 0xFFFFFFF8;
  }

  else
  {
    v175 = 0;
    v174 = 0;
    v173 = 0;
    if (!v135)
    {
      v42 = 0;
      v130 = 0;
      v114 = 0;
      v134 = 0;
      goto LABEL_61;
    }

    (*(*v140 + 248))(v140, &v174, &v175, &v173);
    v134 = 0;
    v114 = 0;
    v130 = 0;
  }

  v41 = v173;
  v42 = v175;
  v39 = v147;
  if (!v173)
  {
LABEL_61:
    v41 = v42;
    v123 = v42;
    goto LABEL_62;
  }

  v175 = v173;
  v123 = v173;
LABEL_62:
  v144 = v146 + v41;
  if (v39)
  {
    v137 = [objc_msgSend(v39 "pluginData")];
    v128 = v144;
    v144 += v137;
  }

  else
  {
    v128 = 0;
    LODWORD(v137) = 0;
  }

  v113 = [*(v5 + 31) count];
  std::vector<MTLBuildBinaryRequest>::vector[abi:ne200100](&v171, [*(v5 + 31) count]);
  v43 = 0;
  v154 = (v21 << 31) | ((v20 & 3) << 28) | v142 & 0xF800000 | (v19 << 30);
  size = v144 + 56 * [*(v5 + 31) count];
  while ([*(v5 + 31) count] > v43)
  {
    v44 = [*(v5 + 31) objectAtIndexedSubscript:v43];
    prepareVisibleFunctionHeader(v44, v171 + 56 * v43++, &size);
  }

  v139 = size;
  if (*(v5 + 33))
  {
    *buf = 0;
    v45 = [MEMORY[0x1E695DF90] dictionary];
    v169 = 0u;
    v170 = 0u;
    v167 = 0u;
    v168 = 0u;
    obj = *(v5 + 33);
    v46 = [obj countByEnumeratingWithState:&v167 objects:v206 count:16];
    if (v46)
    {
      v150 = *v168;
      do
      {
        v47 = 0;
        v152 = v46;
        do
        {
          if (*v168 != v150)
          {
            objc_enumerationMutation(obj);
          }

          v48 = *(*(&v167 + 1) + 8 * v47);
          [v45 setObject:objc_msgSend(MEMORY[0x1E695DF70] forKeyedSubscript:{"array"), v48}];
          v165 = 0u;
          v166 = 0u;
          v163 = 0u;
          v164 = 0u;
          v49 = v5;
          v50 = [*(v5 + 33) objectForKeyedSubscript:v48];
          v51 = [v50 countByEnumeratingWithState:&v163 objects:v205 count:16];
          if (v51)
          {
            v52 = *v164;
            do
            {
              for (i = 0; i != v51; ++i)
              {
                if (*v164 != v52)
                {
                  objc_enumerationMutation(v50);
                }

                [objc_msgSend(v45 objectForKeyedSubscript:{v48), "addObject:", objc_msgSend(*(*(&v163 + 1) + 8 * i), "name")}];
              }

              v51 = [v50 countByEnumeratingWithState:&v163 objects:v205 count:16];
            }

            while (v51);
          }

          ++v47;
          v5 = v49;
        }

        while (v47 != v152);
        v46 = [obj countByEnumeratingWithState:&v167 objects:v206 count:16];
      }

      while (v46);
    }

    v54 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v45 requiringSecureCoding:0 error:buf];
    v55 = [v54 length];
    v56 = v139;
    v139 += [v54 length];
  }

  else
  {
    v55 = 0;
    v56 = 0;
    v54 = 0;
  }

  v57 = [*(v5 + 32) count];
  std::vector<MTLBuildBinaryRequest>::vector[abi:ne200100](&__p, [*(v5 + 32) count]);
  v109 = v57;
  v110 = v55;
  v58 = 0;
  size = v139 + 56 * [*(v5 + 32) count];
  while ([*(v5 + 32) count] > v58)
  {
    v59 = [*(v5 + 32) objectAtIndexedSubscript:v58];
    prepareVisibleFunctionHeader(v59, __p + 56 * v58++, &size);
  }

  v94 = *(v5 + 43);
  if (v94 == 15)
  {
    v60 = v147;
    v61 = [v147 bitCodeHash];
    v62 = v61[1];
    v207 = *v61;
    v208 = v62;
    v97 = (v5 + 272);
    v63 = *(v5 + 34);
    if (v63)
    {
      [v63 UTF8String];
      v64 = [*v97 lengthOfBytesUsingEncoding:4];
      v111 = size;
      v108 = (v64 & 0xFFFFFFF8) + 8;
      size += v108;
    }

    else
    {
      v111 = 0;
      LODWORD(v108) = 0;
    }
  }

  else
  {
    v111 = 0;
    LODWORD(v108) = 0;
    v97 = (v5 + 272);
    v60 = v147;
  }

  v65 = *(v5 + 43);
  v66 = *(v5 + 70);
  if (!v66)
  {
    v66 = *(v5 + 43);
  }

  v105 = v66;
  v106 = *(v5 + 43);
  v107 = *(v5 + 46);
  if ((v142 & 0x800000) != 0)
  {
    v143 = (size + 7) & 0xFFFFFFF8;
    v104 = strlen(*(v5 + 37)) + 1;
    v67 = ((size + 7) | 7) + v104;
    obja = v67 & 0xFFFFFFF8;
    size = v67 & 0xFFFFFFFFFFFFFFF8;
    if (v122)
    {
      v68 = ((*(*(v5 + 38) + 64) - *(*(v5 + 38) + 56)) >> 5);
      v103 = (*(*(v5 + 38) + 64) - *(*(v5 + 38) + 56)) >> 5;
      v69 = (v67 | 7) + 4 * v68;
      v112 = v69 & 0xFFFFFFF8;
      size = (v69 + 32 * v68) & 0xFFFFFFFFFFFFFFF8;
    }

    else
    {
      LODWORD(v103) = 0;
      obja = 0;
      v112 = 0;
    }

    v60 = v147;
  }

  else
  {
    v143 = 0;
    LODWORD(v103) = 0;
    LODWORD(v104) = 0;
    obja = 0;
    v112 = 0;
  }

  if (*(v5 + 39))
  {
    v153 = size;
    v102 = size_ptr;
    size = (size + size_ptr + 7) & 0xFFFFFFFFFFFFFFF8;
  }

  else
  {
    v153 = 0;
    v102 = 0;
  }

  v160 = 0;
  v159 = 0;
  v70 = *(v5 + 41);
  v101 = *(v5 + 40);
  if (v70)
  {
    v71 = dispatch_data_create_map(v70, &v160, &v159);
    v72 = size;
    v98 = v71;
    v151 = size;
    if (v159)
    {
      v100 = v159;
      v72 = (size + v159 + 7) & 0xFFFFFFFFFFFFFFF8;
      size = v72;
    }

    else
    {
      v100 = 0;
    }
  }

  else
  {
    v100 = 0;
    v98 = 0;
    v72 = size;
    v151 = size;
  }

  if ([*(v5 + 42) count])
  {
    v73 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:{objc_msgSend(*(v5 + 42), "count") << 7}];
    v74 = *(v5 + 42);
    v155 = 0u;
    v156 = 0u;
    v157 = 0u;
    v158 = 0u;
    v75 = [v74 countByEnumeratingWithState:&v155 objects:v204 count:16];
    v95 = v56;
    v96 = v54;
    if (v75)
    {
      v76 = *v156;
      do
      {
        for (j = 0; j != v75; ++j)
        {
          if (*v156 != v76)
          {
            objc_enumerationMutation(v74);
          }

          v78 = *(*(&v155 + 1) + 8 * j);
          v79 = [*(v5 + 42) objectForKeyedSubscript:v78];
          if ([v78 isEqualToString:@"enable-acceleration-structure-viewer-intersect-instrumentation"])
          {
            v154 |= 0x1000000u;
          }

          else
          {
            [v73 appendString:@"-"];
            [v73 appendString:v78];
            if (v79 != [MEMORY[0x1E695DFB0] null])
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v80 = v79;
              }

              else
              {
                objc_opt_class();
                v80 = &stru_1EF478240;
                if (objc_opt_isKindOfClass())
                {
                  v80 = [(__CFString *)v79 stringValue];
                }
              }

              [v73 appendString:@"="];
              [v73 appendString:v80];
            }

            [v73 appendString:@" "];
          }
        }

        v75 = [v74 countByEnumeratingWithState:&v155 objects:v204 count:16];
      }

      while (v75);
    }

    v60 = v147;
    v54 = v96;
    v56 = v95;
    if ([v73 length])
    {
      [v73 deleteCharactersInRange:{objc_msgSend(v73, "length") - 1, 1}];
      v81 = ([v73 lengthOfBytesUsingEncoding:4] + 7) & 0xFFFFFFFFFFFFFFF8;
      size = v72 + v81;
      v82 = [v73 copy];
      v83 = v72;
      v72 += v81;
      v60 = v147;
    }

    else
    {
      v83 = 0;
      LODWORD(v81) = 0;
      v82 = 0;
    }
  }

  else
  {
    v83 = 0;
    LODWORD(v81) = 0;
    v82 = 0;
  }

  v84 = [v145 supportsGlobalVariableBindingInDylibs];
  v85 = v72;
  v86 = malloc_type_calloc(v72, 1uLL, 0x100004077774924uLL);
  if (!v86 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
  {
    *buf = 134220032;
    *&buf[4] = v85;
    v188 = 1024;
    v189 = 296;
    v190 = 1024;
    v191 = v126;
    v192 = 1024;
    v193 = v124;
    v194 = 1024;
    v195 = v133;
    v196 = 1024;
    v197 = v125;
    v198 = 1024;
    v199 = v127;
    v200 = 1024;
    v201 = v146;
    v202 = 1024;
    v203 = v123;
    _os_log_fault_impl(&dword_185B8E000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Failed to allocate %llu bytes for request - %u, %u, %u, %u, %u, %u, %u, %u", buf, 0x3Cu);
  }

  *(v86 + 289) = v182[0];
  *(v86 + 1) = v118;
  *(v86 + 2) = 296;
  *(v86 + 3) = v126;
  *(v86 + 4) = v125;
  *(v86 + 5) = v127;
  *(v86 + 6) = v124;
  *(v86 + 12) = v116;
  *(v86 + 13) = v115;
  *(v86 + 46) = v114;
  *(v86 + 47) = WORD2(v114);
  *(v86 + 25) = v123;
  *(v86 + 36) = v113;
  *(v86 + 38) = v110;
  *(v86 + 40) = v109;
  *(v86 + 43) = v108;
  *(v86 + 45) = v104;
  *(v86 + 46) = v103;
  *(v86 + 50) = v102;
  *(v86 + 26) = v101;
  *(v86 + 54) = v106;
  *(v86 + 55) = v105;
  *(v86 + 56) = v141;
  v86[228] = v84;
  v86[231] = v184;
  *(v86 + 229) = v183;
  *(v86 + 58) = v107;
  *(v86 + 67) = active_platform;
  *(v86 + 69) = v100;
  *v86 = v154;
  *(v86 + 24) = v146;
  *(v86 + 42) = v111;
  *(v86 + 44) = v143;
  *(v86 + 5) = v22;
  v87 = v212;
  *(v86 + 56) = v211;
  *(v86 + 72) = v87;
  v88 = v210;
  *(v86 + 7) = v209;
  *(v86 + 8) = v88;
  v89 = v207;
  *(v86 + 252) = v208;
  *(v86 + 7) = v133;
  *(v86 + 8) = v132;
  *(v86 + 9) = v131;
  *(v86 + 22) = v130;
  *(v86 + 26) = v128;
  *(v86 + 27) = v137;
  *(v86 + 37) = v144;
  *(v86 + 39) = v56;
  *(v86 + 41) = v139;
  *(v86 + 47) = obja;
  *(v86 + 48) = v112;
  *(v86 + 49) = v153;
  *(v86 + 51) = 0;
  *(v86 + 236) = v89;
  *(v86 + 68) = v151;
  *(v86 + 70) = v83;
  *(v86 + 71) = v81;
  v86[288] = v121;
  *(v86 + 73) = *(v182 + 3);
  memcpy(v86 + 296, __src, __n);
  if (object)
  {
    dispatch_release(object);
  }

  if (v177)
  {
    memcpy(&v86[v136 & 0xFFFFFFF8], v177, v133);
  }

  if (v117)
  {
    dispatch_release(v117);
  }

  if (__s)
  {
    memcpy(&v86[v132], __s, v131);
  }

  if ((v154 & 0x800000) != 0)
  {
    strcpy(&v86[v143], *(v5 + 37));
    if (v122)
    {
      MTLHashKey::getHashTools(*(v5 + 38), &v86[v112], &v86[obja]);
    }
  }

  if (*(v5 + 39))
  {
    memcpy(&v86[v153], buffer_ptr, size_ptr);
    dispatch_release(v99);
  }

  if (v159)
  {
    memcpy(&v86[v151], v160, v159);
    dispatch_release(v98);
  }

  if (v134)
  {
    strcpy(&v86[v130], [v134 UTF8String]);
  }

  v90 = *v140;
  if (v173)
  {
    v91 = (*(v90 + 240))();
  }

  else
  {
    v91 = (*(v90 + 216))();
  }

  if ((v91 & 1) == 0)
  {
    operator new[]();
  }

  if (v60)
  {
    [objc_msgSend(v60 "pluginData")];
  }

  if (v172 != v171)
  {
    memmove(&v86[v144], v171, v172 - v171);
  }

  if ((serializeVisibleFunctions(*(v5 + 31), &v171, v86, a3) & 1) == 0 && *a3)
  {
    goto LABEL_178;
  }

  if (*(v5 + 33))
  {
    [v54 getBytes:&v86[v56] length:{objc_msgSend(v54, "length")}];
  }

  if (v162 != __p)
  {
    memmove(&v86[v139], __p, v162 - __p);
  }

  if ((serializeVisibleFunctions(*(v5 + 32), &__p, v86, a3) & 1) == 0 && *a3)
  {
LABEL_178:
    v3 = 0;
  }

  else
  {
    if (v94 == 15 && *v97)
    {
      strcpy(&v86[v111], [*v97 UTF8String]);
    }

    if (v82)
    {
      strncpy(&v86[v83], [v82 UTF8String], v81);
    }

    *(v5 + 29) = dispatch_data_create(v86, size, 0, *MEMORY[0x1E69E9648]);
    if (*(v5 + 24) != v60)
    {
    }

    if (*(v5 + 25) != v135)
    {
    }

    v3 = *(v5 + 29);
  }

  if (__p)
  {
    v162 = __p;
    operator delete(__p);
  }

  if (v171)
  {
    v172 = v171;
    operator delete(v171);
  }

LABEL_183:
  v92 = *MEMORY[0x1E69E9840];
  return v3;
}

void sub_185BCE7F0(_Unwind_Exception *a1)
{
  v2 = STACK[0x218];
  if (STACK[0x218])
  {
    STACK[0x220] = v2;
    operator delete(v2);
  }

  v3 = STACK[0x2B0];
  if (STACK[0x2B0])
  {
    STACK[0x2B8] = v3;
    operator delete(v3);
  }

  _Unwind_Resume(a1);
}

uint64_t _MTLGetAIRVersionForLLVMBitcodeVersion(int a1)
{
  if ((a1 - 32023) >= 2)
  {
    return 0x20000;
  }

  else
  {
    return 131080;
  }
}

void _getForcedAIRVersion(_DWORD *a1, _DWORD *a2)
{
  if (_getForcedAIRVersion::onceToken != -1)
  {
    _getForcedAIRVersion_cold_1();
  }

  *a1 = _getForcedAIRVersion::major;
  *a2 = _getForcedAIRVersion::minor;
}

void *std::vector<MTLBuildBinaryRequest>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<MTLBuildBinaryRequest>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_185BCE9F8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

BOOL MTLLibraryData::copyBitCode(MTLLibraryData *this, void *a2, uint64_t a3, uint64_t a4)
{
  os_unfair_lock_lock(this + 21);
  (*(*this + 360))(this, a3);
  v8 = (*(*this + 368))(this, a2, a4) != 0;
  os_unfair_lock_unlock(this + 21);
  return v8;
}

uint64_t serializeVisibleFunctions(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (![a1 count])
  {
    return 1;
  }

  v8 = 0;
  v9 = 1;
  while (1)
  {
    v10 = (*a2 + 56 * v8);
    v11 = [a1 objectAtIndexedSubscript:v8];
    v21 = 0;
    v22 = 0;
    v20 = 0;
    v12 = [v11 libraryData];
    (*(*v12 + 208))(v12, [v11 bitCodeOffset], objc_msgSend(v11, "bitCodeFileSize"), &v21, &v22, &v20);
    v13 = v10[2];
    if (!v20)
    {
      break;
    }

    v14 = v22;
    v10[3] = v20;
    v15 = [v11 libraryData];
    v16 = (*(*v15 + 240))(v15, a3 + v13, v21, v14, v20);
    v22 = v20;
    if ((v16 & 1) == 0)
    {
      goto LABEL_9;
    }

LABEL_7:
    strcpy((a3 + *v10), [objc_msgSend(v11 "name")]);
    [objc_msgSend(v11 "pluginData")];
    v8 = v9;
    if ([a1 count] <= v9++)
    {
      return 1;
    }
  }

  v17 = [v11 libraryData];
  if ((*(*v17 + 216))(v17, a3 + v13, v21, v22))
  {
    goto LABEL_7;
  }

LABEL_9:
  if (a4)
  {
    operator new[]();
  }

  return 0;
}

void *std::__shared_ptr_emplace<MTLCompilerServiceRequestHandler>::__shared_ptr_emplace[abi:ne200100]<NSObject  {objcproto13OS_xpc_object}*,std::allocator<MTLCompilerServiceRequestHandler>,0>(void *a1, void *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1EF477A90;
  MTLCompilerServiceRequestHandler::MTLCompilerServiceRequestHandler(a1 + 3, a2);
  return a1;
}

uint64_t MTLGetProcessName()
{
  if (MTLGetProcessName::onceToken != -1)
  {
    MTLGetProcessName_cold_1();
  }

  return MTLGetProcessName::tmp;
}

void **std::vector<std::shared_ptr<MTLCompilerConnection>>::push_back[abi:ne200100](void **result, uint64_t a2)
{
  v3 = result;
  v5 = result[1];
  v4 = result[2];
  if (v5 >= v4)
  {
    v7 = (v5 - *result) >> 4;
    if ((v7 + 1) >> 60)
    {
      std::vector<std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *result;
    v9 = v8 >> 3;
    if (v8 >> 3 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    v16[4] = result;
    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<MTLCompilerConnection>>>(result, v10);
    }

    v11 = (16 * v7);
    *v11 = *a2;
    v6 = 16 * v7 + 16;
    *a2 = 0;
    *(a2 + 8) = 0;
    v12 = result[1] - *result;
    v13 = v11 - v12;
    memcpy(v11 - v12, *result, v12);
    v14 = *v3;
    *v3 = v13;
    v3[1] = v6;
    v15 = v3[2];
    v3[2] = 0;
    v16[2] = v14;
    v16[3] = v15;
    v16[0] = v14;
    v16[1] = v14;
    result = std::__split_buffer<std::shared_ptr<MTLCompilerConnection>>::~__split_buffer(v16);
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
  }

  v3[1] = v6;
  return result;
}

uint64_t MTLCompilerConnectionManagerInternal::registerCompilerPlugin(uint64_t a1, const char *a2, NSObject *a3)
{
  std::mutex::lock((a1 + 88));
  v7 = *(a1 + 64);
  v8 = *(a1 + 72);
  v6 = (a1 + 64);
  v9 = strlen(a2);
  v10 = malloc_type_malloc(v9 + 1, 0x100004077774924uLL);
  memcpy(v10, a2, v9 + 1);
  dispatch_retain(a3);
  v12 = *(a1 + 72);
  v11 = *(a1 + 80);
  if (v12 >= v11)
  {
    v14 = (v12 - *v6) >> 4;
    v15 = v14 + 1;
    if ((v14 + 1) >> 60)
    {
      std::vector<std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>::__throw_length_error[abi:ne200100]();
    }

    v16 = v11 - *v6;
    if (v16 >> 3 > v15)
    {
      v15 = v16 >> 3;
    }

    if (v16 >= 0x7FFFFFFFFFFFFFF0)
    {
      v17 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v17 = v15;
    }

    if (v17)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<MTLCompilerPlugin>>(a1 + 64, v17);
    }

    v18 = (16 * v14);
    *v18 = v10;
    v18[1] = a3;
    v13 = 16 * v14 + 16;
    v19 = *(a1 + 64);
    v20 = *(a1 + 72) - v19;
    v21 = (16 * v14 - v20);
    memcpy(v21, v19, v20);
    v22 = *(a1 + 64);
    *(a1 + 64) = v21;
    *(a1 + 72) = v13;
    *(a1 + 80) = 0;
    if (v22)
    {
      operator delete(v22);
    }
  }

  else
  {
    *v12 = v10;
    v12[1] = a3;
    v13 = (v12 + 2);
  }

  *(a1 + 72) = v13;
  std::mutex::unlock((a1 + 88));
  return ((v8 - v7) >> 4) + 1;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<MTLCompilerPlugin>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void addOrRemoveShaderFunctionCache(int a1@<W1>, void *a2@<X8>)
{
  v3 = addOrRemoveShaderFunctionCache(objc_object  {objcproto12MTLDeviceSPI}*,MTLUINT256_t,BOOL)::cache;
  if (!a1)
  {
    if (addOrRemoveShaderFunctionCache(objc_object  {objcproto12MTLDeviceSPI}*,MTLUINT256_t,BOOL)::cache)
    {
      v6 = *(addOrRemoveShaderFunctionCache(objc_object  {objcproto12MTLDeviceSPI}*,MTLUINT256_t,BOOL)::cache + 8);
      if (v6)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v6);
      }

      MEMORY[0x1865FF210](v3, 0x20C40A4A59CD2);
    }

    MTLGPUDebugEnabled();
    operator new();
  }

  if (addOrRemoveShaderFunctionCache(objc_object  {objcproto12MTLDeviceSPI}*,MTLUINT256_t,BOOL)::cache)
  {
    (*(**addOrRemoveShaderFunctionCache(objc_object  {objcproto12MTLDeviceSPI}*,MTLUINT256_t,BOOL)::cache + 24))();
    v4 = addOrRemoveShaderFunctionCache(objc_object  {objcproto12MTLDeviceSPI}*,MTLUINT256_t,BOOL)::cache;
    if (addOrRemoveShaderFunctionCache(objc_object  {objcproto12MTLDeviceSPI}*,MTLUINT256_t,BOOL)::cache)
    {
      v5 = *(addOrRemoveShaderFunctionCache(objc_object  {objcproto12MTLDeviceSPI}*,MTLUINT256_t,BOOL)::cache + 8);
      if (v5)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v5);
      }

      MEMORY[0x1865FF210](v4, 0x20C40A4A59CD2);
    }

    addOrRemoveShaderFunctionCache(objc_object  {objcproto12MTLDeviceSPI}*,MTLUINT256_t,BOOL)::cache = 0;
  }

  *a2 = 0;
  a2[1] = 0;
}

uint64_t MTLCompilerFSCache::MTLCompilerFSCache(uint64_t a1, uint64_t a2, char *__s, __int128 *a4)
{
  *a1 = &unk_1EF4741B0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  std::string::basic_string[abi:ne200100]<0>((a1 + 80), __s);
  v7 = *a4;
  *(a1 + 120) = a4[1];
  *(a1 + 104) = v7;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  if (a2)
  {
    MEMORY[0x1865FEFC0](a1 + 56, a2);
  }

  *(a1 + 20) = 0x40000000;
  v8 = MTLGetEnvDefault("MTL_SHADER_CACHE_SIZE", 0x40000000);
  *(a1 + 20) = v8;
  v9 = MTLGetEnvDefault("FS_CACHE_SIZE", v8);
  *(a1 + 20) = v9;
  if (v9 < 0x40000001)
  {
    if (v9)
    {
      *(a1 + 24) = 0;
    }

    else
    {
      *(a1 + 24) = 1;
    }
  }

  else
  {
    *(a1 + 20) = 0x40000000;
  }

  return a1;
}

void sub_185BCF3A8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 79) < 0)
  {
    operator delete(*(v1 + 56));
  }

  _Unwind_Resume(exception_object);
}

void sub_185BCF444(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::shared_ptr<MTLCompilerCache>::shared_ptr[abi:ne200100]<MTLCompilerCache,0>(v1);
  }

  _Unwind_Resume(exception_object);
}

void MTLAddDevice(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3052000000;
  v16 = __Block_byref_object_copy__5;
  v17 = __Block_byref_object_dispose__5;
  v18 = a1;
  if (!_deviceArray)
  {
    v9 = "_deviceArray != NULL";
    v10 = 1031;
    goto LABEL_10;
  }

  if (![a1 conformsToProtocol:&unk_1EF502428])
  {
    v9 = "[newDevice conformsToProtocol:@protocol(MTLDevice)]";
    v10 = 1032;
    goto LABEL_10;
  }

  if (([v14[5] conformsToProtocol:&unk_1EF505408] & 1) == 0)
  {
    v9 = "[newDevice conformsToProtocol:@protocol(MTLDeviceSPI)]";
    v10 = 1033;
LABEL_10:
    MTLReleaseAssertionFailure("MTLAddDevice", v10, v9, 0, a5, a6, a7, a8, v11);
  }

  [v14[5] initLimits];
  [v14[5] initFeatureQueries];
  [v14[5] initWorkarounds];
  if (_CFMZEnabled())
  {
    [a1 allowLibrariesFromOtherPlatforms];
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __MTLAddDevice_block_invoke;
  block[3] = &unk_1E6EEB598;
  block[4] = &v13;
  dispatch_sync(_deviceArrayQueue, block);
  _Block_object_dispose(&v13, 8);
}

void sub_185BCF5D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void std::vector<MTLTagType>::push_back[abi:ne200100](const void **a1, void *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 3) + 1;
    if (v9 >> 61)
    {
      std::vector<std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFF8;
    v12 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<MTLTagType>>(a1, v12);
    }

    v13 = (8 * (v8 >> 3));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<MTLTagType>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t AirReflection::Node::node_as_MeshVertexDataRet(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 143361) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

const char *AirReflection::EnumNameNodeType(int a1)
{
  if (a1 >= 286720)
  {
    if (a1 < 532480)
    {
      if (a1 <= 524292)
      {
        if (a1 > 294917)
        {
          if (a1 > 0x80000)
          {
            if (a1 > 524290)
            {
              if (a1 == 524291)
              {
                return "MeshTypeInfo";
              }

              else
              {
                return "GlobalBinding";
              }
            }

            else if (a1 == 524289)
            {
              return "StructTypeInfo";
            }

            else
            {
              return "StitchingArgument";
            }
          }

          if (a1 <= 294919)
          {
            if (a1 == 294918)
            {
              return "CIMatrixArg";
            }

            else
            {
              return "CISamplerArg";
            }
          }

          if (a1 == 294920)
          {
            return "CIImageblockArg";
          }

          if (a1 == 0x80000)
          {
            return "FunctionConstant";
          }
        }

        else
        {
          if (a1 > 294913)
          {
            if (a1 > 294915)
            {
              if (a1 == 294916)
              {
                return "CITextureArg";
              }

              else
              {
                return "CIBuiltinArg";
              }
            }

            else if (a1 == 294914)
            {
              return "CIPointerArg";
            }

            else
            {
              return "CIStructArg";
            }
          }

          if (a1 >= 294912)
          {
            if (a1 == 294912)
            {
              return "CIArrayArg";
            }

            else
            {
              return "CIPaddingArg";
            }
          }

          if (a1 == 286720)
          {
            return "MeshArg";
          }

          if (a1 == 290816)
          {
            return "MeshGridPropertiesArg";
          }
        }

        return "";
      }

      switch(a1)
      {
        case 528384:
          result = "OpaqueType";
          break;
        case 528385:
          result = "VoidType";
          break;
        case 528386:
          result = "BoolType";
          break;
        case 528387:
          result = "CharType";
          break;
        case 528388:
          result = "UCharType";
          break;
        case 528389:
          result = "ShortType";
          break;
        case 528390:
          result = "UShortType";
          break;
        case 528391:
          result = "IntType";
          break;
        case 528392:
          result = "UIntType";
          break;
        case 528393:
          result = "LongType";
          break;
        case 528394:
          result = "ULongType";
          break;
        case 528395:
          result = "LLongType";
          break;
        case 528396:
          result = "ULLongType";
          break;
        case 528397:
          result = "HalfType";
          break;
        case 528398:
          result = "FloatType";
          break;
        case 528399:
          result = "DoubleType";
          break;
        case 528400:
          result = "BFloatType";
          break;
        case 528401:
          result = "VectorType";
          break;
        case 528402:
          result = "PackedVectorType";
          break;
        case 528403:
          result = "MatrixType";
          break;
        case 528404:
          result = "FunctionType";
          break;
        case 528405:
          result = "PointerType";
          break;
        case 528406:
          result = "LValueReferenceType";
          break;
        case 528407:
          result = "RValueReferenceType";
          break;
        case 528408:
          result = "ArrayType";
          break;
        case 528409:
          result = "EnumType";
          break;
        case 528410:
          result = "RecordBase";
          break;
        case 528411:
          result = "RecordField";
          break;
        case 528412:
          result = "StructType";
          break;
        case 528413:
          result = "UnionType";
          break;
        default:
          if (a1 == 524293)
          {
            result = "InlineTypeInfo";
          }

          else
          {
            if (a1 != 524294)
            {
              return "";
            }

            result = "VisibleFunctionReference";
          }

          break;
      }
    }

    else if (a1 >= 540672)
    {
      if (a1 >= 544768)
      {
        if (a1 <= 544770)
        {
          if (a1 == 544768)
          {
            return "MeshEmulationValueGroup";
          }

          if (a1 == 544769)
          {
            return "MeshEmulationBlock";
          }

          return "MeshEmulationMeshLayout";
        }

        if (a1 <= 544772)
        {
          if (a1 == 544771)
          {
            return "MeshEmulationMeshKernel";
          }

          else
          {
            return "MeshEmulationMeshVertex";
          }
        }

        if (a1 == 544773)
        {
          return "MeshEmulationObjectKernel";
        }

        if (a1 == 544774)
        {
          return "MeshEmulationFragmentAnalysisResult";
        }

        return "";
      }

      switch(a1)
      {
        case 540672:
          result = "ClipDistanceAttr";
          break;
        case 540673:
          result = "FunctionConstantPredicateAttr";
          break;
        case 540674:
          result = "LocationIndexAttr";
          break;
        case 540675:
          result = "PointSizeAttr";
          break;
        case 540676:
          result = "PositionAttr";
          break;
        case 540677:
          result = "PrimitiveCulledAttr";
          break;
        case 540678:
          result = "PrimitiveIDAttr";
          break;
        case 540679:
          result = "RenderTargetAttr";
          break;
        case 540680:
          result = "RenderTargetArrayIndexAttr";
          break;
        case 540681:
          result = "ViewportArrayIndexAttr";
          break;
        case 540682:
          result = "UserAttr";
          break;
        case 540683:
          result = "InvariantAttr";
          break;
        case 540684:
          result = "SharedAttr";
          break;
        default:
          return "";
      }
    }

    else
    {
      switch(a1)
      {
        case 532480:
          result = "ArrayOfType";
          break;
        case 532481:
          result = "ArrayRefOfType";
          break;
        case 532482:
          result = "Texture1dType";
          break;
        case 532483:
          result = "Texture1dArrayType";
          break;
        case 532484:
          result = "Texture2dType";
          break;
        case 532485:
          result = "Texture2dArrayType";
          break;
        case 532486:
          result = "Texture3dType";
          break;
        case 532487:
          result = "TextureCubeType";
          break;
        case 532488:
          result = "TextureCubeArrayType";
          break;
        case 532489:
          result = "Texture2dMsType";
          break;
        case 532490:
          result = "Texture2dMsArrayType";
          break;
        case 532491:
          result = "TextureBuffer1dType";
          break;
        case 532492:
          result = "Depth2dType";
          break;
        case 532493:
          result = "Depth2dArrayType";
          break;
        case 532494:
          result = "DepthCubeType";
          break;
        case 532495:
          result = "DepthCubeArrayType";
          break;
        case 532496:
          result = "Depth2dMsType";
          break;
        case 532497:
          result = "Depth2dMsArrayType";
          break;
        case 532498:
          result = "SamplerType";
          break;
        case 532499:
          result = "PatchControlPointType";
          break;
        case 532500:
          result = "ImageblockType";
          break;
        case 532501:
          result = "R8UNormType";
          break;
        case 532502:
          result = "R8SNormType";
          break;
        case 532503:
          result = "R16UNormType";
          break;
        case 532504:
          result = "R16SNormType";
          break;
        case 532505:
          result = "RG8UNormType";
          break;
        case 532506:
          result = "RG8SNormType";
          break;
        case 532507:
          result = "RG16UNormType";
          break;
        case 532508:
          result = "RG16SNormType";
          break;
        case 532509:
          result = "RGBA8UNormType";
          break;
        case 532510:
          result = "RGBA8SNormType";
          break;
        case 532511:
          result = "RGBA16UNormType";
          break;
        case 532512:
          result = "RGBA16SNormType";
          break;
        case 532513:
          result = "SRGBA8UNormType";
          break;
        case 532514:
          result = "RGB10A2Type";
          break;
        case 532515:
          result = "RG11B10FType";
          break;
        case 532516:
          result = "RGB9E5Type";
          break;
        case 532517:
          result = "CommandBufferType";
          break;
        case 532518:
          result = "ComputePipelineStateType";
          break;
        case 532519:
          result = "RenderPipelineStateType";
          break;
        case 532520:
          result = "InterpolantType";
          break;
        case 532521:
          result = "VisibleFunctionTableType";
          break;
        case 532522:
          result = "IntersectionFunctionTableType";
          break;
        case 532523:
          result = "AccelerationStructureType";
          break;
        case 532524:
          result = "MeshType";
          break;
        case 532525:
          result = "MeshGridPropertiesType";
          break;
        case 532526:
          return "";
        case 532527:
          result = "VertexValueType";
          break;
        case 532528:
          result = "DepthStencilStateType";
          break;
        case 532529:
          result = "FunctionHandleType";
          break;
        case 532530:
          result = "IntersectionFunctionHandleType";
          break;
        case 532531:
          result = "ExtentsType";
          break;
        case 532532:
          result = "TensorType";
          break;
        default:
          if (a1 != 536576)
          {
            return "";
          }

          result = "AddressSpaceTypeQual";
          break;
      }
    }
  }

  else if (a1 < 266240)
  {
    if (a1 <= 139265)
    {
      if (a1 <= 4100)
      {
        if (a1 > 6)
        {
          if (a1 > 4096)
          {
            if (a1 > 4098)
            {
              if (a1 == 4099)
              {
                return "WorkgroupMaxSizeFnAttr";
              }

              else
              {
                return "PatchFnAttr";
              }
            }

            else if (a1 == 4097)
            {
              return "WorkgroupSizeFnAttr";
            }

            else
            {
              return "WorkgroupSizeHintFnAttr";
            }
          }

          switch(a1)
          {
            case 7:
              return "ObjectFunction";
            case 8:
              return "CIFunction";
            case 4096:
              return "VecTypeHintFnAttr";
          }
        }

        else
        {
          if (a1 > 2)
          {
            if (a1 > 4)
            {
              if (a1 == 5)
              {
                return "IntersectionFunction";
              }

              else
              {
                return "MeshFunction";
              }
            }

            else if (a1 == 3)
            {
              return "VertexFunction";
            }

            else
            {
              return "VisibleFunction";
            }
          }

          switch(a1)
          {
            case 0:
              return "NONE";
            case 1:
              return "FragmentFunction";
            case 2:
              return "KernelFunction";
          }
        }
      }

      else if (a1 <= 131076)
      {
        if (a1 > 0x20000)
        {
          if (a1 > 131074)
          {
            if (a1 == 131075)
            {
              return "RenderTargetArrayIndexRet";
            }

            else
            {
              return "VertexOutputRet";
            }
          }

          else if (a1 == 131073)
          {
            return "PointSizeRet";
          }

          else
          {
            return "PositionRet";
          }
        }

        switch(a1)
        {
          case 0x1005:
            return "MaxMeshWorkgroupsFnAttr";
          case 0x1006:
            return "UserAnnotationFnAttr";
          case 0x20000:
            return "ClipDistanceRet";
        }
      }

      else if (a1 > 135170)
      {
        if (a1 >= 139264)
        {
          if (a1 == 139264)
          {
            return "AcceptIntersectionRet";
          }

          else
          {
            return "ContinueSearchRet";
          }
        }

        if (a1 == 135171)
        {
          return "SampleMaskRet";
        }

        if (a1 == 135172)
        {
          return "ImageblockDataRet";
        }
      }

      else
      {
        if (a1 > 135168)
        {
          if (a1 == 135169)
          {
            return "DepthRet";
          }

          else
          {
            return "StencilRet";
          }
        }

        if (a1 == 131077)
        {
          return "ViewportArrayIndexRet";
        }

        if (a1 == 135168)
        {
          return "RenderTargetRet";
        }
      }

      return "";
    }

    if (a1 <= 147460)
    {
      if (a1 >= 147456)
      {
        if (a1 <= 147457)
        {
          if (a1 == 147456)
          {
            return "CIPointerRet";
          }

          else
          {
            return "CIStructRet";
          }
        }

        else if (a1 == 147458)
        {
          return "CITextureRet";
        }

        else if (a1 == 147459)
        {
          return "CIBuiltinRet";
        }

        else
        {
          return "CIMatrixRet";
        }
      }

      if (a1 <= 143360)
      {
        if (a1 == 139266)
        {
          return "DistanceRet";
        }

        if (a1 == 143360)
        {
          return "MeshPrimitiveDataRet";
        }
      }

      else
      {
        switch(a1)
        {
          case 143361:
            return "MeshVertexDataRet";
          case 143362:
            return "PrimitiveCulledRet";
          case 143363:
            return "PrimitiveIDRet";
        }
      }

      return "";
    }

    switch(a1)
    {
      case 262144:
        result = "BufferArg";
        break;
      case 262145:
        result = "SamplerArg";
        break;
      case 262146:
        result = "TextureArg";
        break;
      case 262147:
        result = "ConstantArg";
        break;
      case 262148:
        result = "IndirectBufferArg";
        break;
      case 262149:
        result = "IndirectConstantArg";
        break;
      case 262150:
        result = "CommandBufferArg";
        break;
      case 262151:
        result = "ComputePipelineStateArg";
        break;
      case 262152:
        result = "RenderPipelineStateArg";
        break;
      case 262153:
        result = "VisibleFunctionTableArg";
        break;
      case 262154:
        result = "IntersectionFunctionTableArg";
        break;
      case 262155:
        result = "InstanceAccelerationStructureArg";
        break;
      case 262156:
        result = "PrimitiveAccelerationStructureArg";
        break;
      case 262157:
        result = "BufferStrideArg";
        break;
      case 262158:
        result = "DepthStencilStateArg";
        break;
      case 262159:
        result = "FunctionHandleArg";
        break;
      case 262160:
        result = "TensorArg";
        break;
      default:
        if (a1 == 147461)
        {
          result = "CISamplerRet";
        }

        else
        {
          if (a1 != 147462)
          {
            return "";
          }

          result = "CIImageblockRet";
        }

        break;
    }
  }

  else
  {
    if (a1 > 274434)
    {
      if (a1 > 278530)
      {
        switch(a1)
        {
          case 282624:
            result = "PayloadArg";
            break;
          case 282625:
            result = "OriginArg";
            break;
          case 282626:
            result = "DirectionArg";
            break;
          case 282627:
            result = "MinDistanceArg";
            break;
          case 282628:
            result = "MaxDistanceArg";
            break;
          case 282629:
            result = "DistanceArg";
            break;
          case 282630:
            result = "WorldSpaceOriginArg";
            break;
          case 282631:
            result = "WorldSpaceDirectionArg";
            break;
          case 282632:
            result = "GeometryIDArg";
            break;
          case 282633:
            result = "UserInstanceIDArg";
            break;
          case 282634:
            result = "GeometryIntersectionFunctionTableOffsetArg";
            break;
          case 282635:
            result = "InstanceIntersectionFunctionTableOffsetArg";
            break;
          case 282636:
            result = "OpaquePrimitiveArg";
            break;
          case 282637:
            result = "ObjectToWorldTransformArg";
            break;
          case 282638:
            result = "WorldToObjectTransformArg";
            break;
          case 282639:
            result = "TimeArg";
            break;
          case 282640:
            result = "KeyFrameCountArg";
            break;
          case 282641:
            result = "MotionStartTimeArg";
            break;
          case 282642:
            result = "MotionEndTimeArg";
            break;
          case 282643:
            result = "PrimitiveDataArg";
            break;
          case 282644:
            result = "InstanceIDCountArg";
            break;
          case 282645:
            result = "UserInstanceIDCountArg";
            break;
          case 282646:
            result = "CurveParameterArg";
            break;
          case 282647:
            result = "FunctionIDArg";
            break;
          case 282648:
            result = "UserDataBufferArg";
            break;
          default:
            if (a1 == 278531)
            {
              result = "ImageblockArg";
            }

            else
            {
              if (a1 != 278532)
              {
                return "";
              }

              result = "ImageblockDataArg";
            }

            break;
        }

        return result;
      }

      if (a1 <= 274439)
      {
        if (a1 <= 274436)
        {
          if (a1 == 274435)
          {
            return "PointCoordArg";
          }

          else
          {
            return "RenderTargetArg";
          }
        }

        else if (a1 == 274437)
        {
          return "RenderTargetArrayIndexArg";
        }

        else if (a1 == 274438)
        {
          return "SampleIDArg";
        }

        else
        {
          return "SampleMaskArg";
        }
      }

      if (a1 >= 278528)
      {
        if (a1 == 278528)
        {
          return "PixelPositionInTileArg";
        }

        if (a1 == 278529)
        {
          return "PixelsPerTileArg";
        }

        return "TileIndexArg";
      }

      switch(a1)
      {
        case 274440:
          return "ViewportArrayIndexArg";
        case 274445:
          return "BarycentricCoordArg";
        case 274446:
          return "PrimitiveIDArg";
      }

      return "";
    }

    if (a1 >= 270336)
    {
      if (a1 >= 274432)
      {
        if (a1 == 274432)
        {
          return "FragmentInputArg";
        }

        else if (a1 == 274433)
        {
          return "FrontFacingArg";
        }

        else
        {
          return "PositionArg";
        }
      }

      else
      {
        switch(a1)
        {
          case 270336:
            result = "BaseInstanceArg";
            break;
          case 270337:
            result = "BaseVertexArg";
            break;
          case 270338:
            result = "InstanceIDArg";
            break;
          case 270339:
            result = "VertexIDArg";
            break;
          case 270340:
            result = "VertexInputArg";
            break;
          case 270341:
            result = "ControlPointIndexBufferArg";
            break;
          case 270342:
            result = "PatchIDArg";
            break;
          case 270343:
            result = "PositionInPatchArg";
            break;
          case 270344:
            result = "PatchInputArg";
            break;
          case 270345:
            result = "ControlPointInputArg";
            break;
          case 270346:
            result = "ControlPointField";
            break;
          case 270350:
            result = "AmplificationCountArg";
            break;
          case 270351:
            result = "AmplificationIDArg";
            break;
          default:
            return "";
        }
      }
    }

    else
    {
      switch(a1)
      {
        case 266240:
          result = "ThreadPositionInGridArg";
          break;
        case 266241:
          result = "ThreadsPerGridArg";
          break;
        case 266242:
          result = "ThreadgroupPositionInGridArg";
          break;
        case 266243:
          result = "ThreadgroupsPerGridArg";
          break;
        case 266244:
          result = "ThreadPositionInThreadgroupArg";
          break;
        case 266245:
          result = "ThreadsPerThreadgroupArg";
          break;
        case 266246:
          result = "DispatchThreadsPerThreadgroupArg";
          break;
        case 266247:
          result = "ThreadIndexInThreadgroupArg";
          break;
        case 266248:
          result = "ThreadExecutionWidthArg";
          break;
        case 266249:
          result = "StageInArg";
          break;
        case 266250:
          result = "StageInGridOriginArg";
          break;
        case 266251:
          result = "StageInGridSizeArg";
          break;
        case 266252:
          result = "ThreadIndexInSimdgroupArg";
          break;
        case 266253:
          result = "ThreadsPerSimdgroupArg";
          break;
        case 266254:
          result = "SimdgroupIndexInThreadgroupArg";
          break;
        case 266255:
          result = "SimdgroupsPerThreadgroupArg";
          break;
        case 266256:
          result = "DispatchSimdgroupsPerThreadgroupArg";
          break;
        case 266257:
          result = "ThreadIndexInQuadgroupArg";
          break;
        case 266258:
          result = "QuadgroupIndexInThreadgroupArg";
          break;
        case 266259:
          result = "QuadgroupsPerThreadgroupArg";
          break;
        case 266260:
          result = "DispatchQuadgroupsPerThreadgroupArg";
          break;
        default:
          return "";
      }
    }
  }

  return result;
}

uint64_t MTLPipelineLibraryDebugLog(void)
{
  if (MTLPipelineLibraryDebugLog(void)::onceToken != -1)
  {
    MTLPipelineLibraryDebugLog();
  }

  return MTLPipelineLibraryDebugLog(void)::pipelineLibLogObject;
}

void __MTLAddDevice_block_invoke(uint64_t a1)
{
  if (_getWrappedDeviceFn)
  {
    v2 = [*(*(*(a1 + 32) + 8) + 40) _deviceWrapper];
    v3 = *(*(a1 + 32) + 8);
    v4 = *(v3 + 40);
    if (v2 == v4)
    {
      *(*(*(a1 + 32) + 8) + 40) = _getWrappedDeviceFn(v4);
      v5 = 1;
    }

    else
    {
      v5 = 0;
      *(v3 + 40) = v2;
    }
  }

  else
  {
    v5 = 0;
  }

  [_deviceArray addObject:*(*(*(a1 + 32) + 8) + 40)];
  if (v5)
  {
    v6 = *(*(*(a1 + 32) + 8) + 40);
  }
}

BOOL MTLValidationEnabled()
{
  if (initWrapperType(void)::pred != -1)
  {
    MTLDeviceArrayInitialize();
  }

  return (wrapperType & 0xFFFFFFFB) == 1;
}

uint64_t MTLPipelineLibraryBuilder::newLibraryWithFile(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v38 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    *a4 = 0;
  }

  if (a3)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if ((isKindOfClass & 1) == 0)
    {
      MTLPipelineLibraryBuilder::newLibraryWithFile(isKindOfClass, v12, v13, v14, v15, v16, v17, v18, v36);
    }
  }

  else
  {
    MTLPipelineLibraryBuilder::newLibraryWithFile(a1, a2, 0, a4, a5, a6, a7, a8, v36);
  }

  if (!a2)
  {
    MTLPipelineLibraryBuilder::newLibraryWithFile(isKindOfClass, v12, v13, v14, v15, v16, v17, v18, v36);
    goto LABEL_25;
  }

  objc_opt_class();
  v19 = objc_opt_isKindOfClass();
  if ((v19 & 1) == 0)
  {
    MTLPipelineLibraryBuilder::newLibraryWithFile(v19, v20, v21, v22, v23, v24, v25, v26, v36);
  }

  if ([objc_alloc_init(MEMORY[0x1E696AC08]) fileExistsAtPath:a3])
  {
    *&v37.st_dev = 0;
    asprintf(&v37, "%s/pipelines.desc", [a3 UTF8String]);
    v27 = *&v37.st_dev;
    if (stat(*&v37.st_dev, &v37))
    {
      v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"file not found: %s", v27];
      if (!a4)
      {
        goto LABEL_20;
      }

      v29 = [MEMORY[0x1E695DF20] dictionaryWithObject:v28 forKey:*MEMORY[0x1E696A578]];
      v30 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"MTLLibraryErrorDomain" code:6 userInfo:v29];
    }

    else
    {
      if ((open(v27, 0) & 0x80000000) == 0)
      {
        std::allocate_shared[abi:ne200100]<MTLPipelineDescriptions,std::allocator<MTLPipelineDescriptions>,objc_object  {objcproto9MTLDevice}*&,0>();
      }

      v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"could not open file: %s", v27];
      if (!a4)
      {
        goto LABEL_20;
      }

      v33 = [MEMORY[0x1E695DF20] dictionaryWithObject:v32 forKey:*MEMORY[0x1E696A578]];
      v30 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"MTLLibraryErrorDomain" code:1 userInfo:v33];
    }

    *a4 = v30;
LABEL_20:
    if (v27)
    {
      free(v27);
    }

    goto LABEL_25;
  }

  if (a4)
  {
    v31 = [MEMORY[0x1E695DF20] dictionaryWithObject:@"pipeline library not found" forKey:*MEMORY[0x1E696A578]];
    *a4 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"MTLLibraryErrorDomain" code:6 userInfo:v31];
  }

LABEL_25:
  v34 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t std::__shared_ptr_emplace<MTLPipelineDescriptions>::__shared_ptr_emplace[abi:ne200100]<objc_object  {objcproto9MTLDevice}*&,std::allocator<MTLPipelineDescriptions>,0>(uint64_t a1, uint64_t *a2)
{
  *(a1 + 8) = 0u;
  *a1 = &unk_1EF475DA0;
  v3 = *a2;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 47) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 24) = 0;
  *(a1 + 88) = 1065353216;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 1065353216;
  *(a1 + 152) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 168) = 1065353216;
  *(a1 + 176) = 0;
  *(a1 + 200) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 216) = 1065353216;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0;
  *(a1 + 248) = v3;
  *(a1 + 40) = dispatch_queue_create("pipelineDescriptions queue", 0);
  return a1;
}

BOOL MTLPipelineDescriptions::initWithFileDescriptor(MTLPipelineDescriptions *this, int a2, const char *a3)
{
  v6 = fstat(a2, &v71);
  if (!v6)
  {
    st_size = v71.st_size;
    v8 = mmap(0, v71.st_size, 1, 1, a2, 0);
    *this = v8;
    *(this + 1) = st_size;
    v70[0] = v8;
    v70[1] = st_size;
    v69[0] = MTLSerializer::SerializedObjectList::getObject(v70, 0);
    v69[1] = v9;
    v10 = objc_autoreleasePoolPush();
    v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a3];
    if (!v18)
    {
      MTLPipelineDescriptions::initWithFileDescriptor(0, v11, v12, v13, v14, v15, v16, v17);
    }

    v26 = [v18 stringByStandardizingPath];
    if (!v26)
    {
      MTLPipelineDescriptions::initWithFileDescriptor(0, v19, v20, v21, v22, v23, v24, v25);
    }

    v34 = [v26 stringByDeletingLastPathComponent];
    if (!v34)
    {
      MTLPipelineDescriptions::initWithFileDescriptor(0, v27, v28, v29, v30, v31, v32, v33);
    }

    ElementCount = MTLSerializer::SerializedObjectList::getElementCount(v69);
    if (ElementCount)
    {
      v36 = ElementCount;
      for (i = 0; i != v36; ++i)
      {
        v68[0] = MTLSerializer::SerializedObjectList::getObject(v69, i);
        v68[1] = v38;
        Object = MTLSerializer::SerializedObjectList::getObject(v68, 0);
        if (Object)
        {
          if (!v39)
          {
LABEL_26:
            abort();
          }

          v45 = MEMORY[0x1E696AEC0];
          v46 = Object;
          while (*v46++)
          {
            if (!--v39)
            {
              goto LABEL_26;
            }
          }
        }

        else
        {
          MTLReportFailure(0, "initWithFileDescriptor", 251, @"Library has no fileName property !", v40, v41, v42, v43, __p[0]);
          v45 = MEMORY[0x1E696AEC0];
        }

        v55 = [v45 stringWithUTF8String:Object];
        if (!v55)
        {
          MTLPipelineDescriptions::initWithFileDescriptor(0, v48, v49, v50, v51, v52, v53, v54);
        }

        v63 = [v34 stringByAppendingPathComponent:v55];
        if (!v63)
        {
          MTLPipelineDescriptions::initWithFileDescriptor(0, v56, v57, v58, v59, v60, v61, v62);
        }

        MEMORY[0x1865FEFC0](__p, [v63 UTF8String]);
        v67 = 0;
        std::vector<MTLPipelineDescriptions::LibraryReference>::push_back[abi:ne200100](this + 200, __p);
        if (v66 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }

    objc_autoreleasePoolPop(v10);
  }

  return v6 == 0;
}

void sub_185BD3520(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MTLSerializer::SerializedObjectList::getObject(MTLSerializer::SerializedObjectList *this, unsigned int a2)
{
  v2 = *this;
  if (*this)
  {
    v3 = *(this + 1);
    if (v3 <= 3)
    {
      goto LABEL_10;
    }

    if (*v2 > a2)
    {
      if (v3 < 4 * (a2 + 2))
      {
        goto LABEL_10;
      }

      v4 = v2[a2 + 1];
      if (v4)
      {
        if (v3 >= v4)
        {
          return v2 + v4;
        }

LABEL_10:
        abort();
      }
    }
  }

  return 0;
}

void ___ZL21_MTLGetLibrariesCacheP10_MTLDevice_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  _MTLGetMTLCompilerLLVMVersionForDevice(*(a1 + 32));
  if (MEMORY[0x1EEE889A8])
  {
    v1 = MTLGPUCompilerTimeStamp();
    if (!v1)
    {
      *md = 0u;
      v7 = 0u;
      goto LABEL_6;
    }
  }

  else
  {
    v1 = " ";
  }

  __s = 0;
  asprintf(&__s, "%s, %s", v1, "Oct 10 2025 21:39:00");
  v2 = __s;
  v3 = strlen(__s);
  *md = 0u;
  v7 = 0u;
  CC_SHA256_Init(&c);
  CC_SHA256_Update(&c, v2, v3);
  CC_SHA256_Final(md, &c);
  free(__s);
LABEL_6:
  operator new();
}

void MTLLibraryCache::MTLLibraryCache(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 8) = a1 + 16;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  v3 = objc_autoreleasePoolPush();
  if (MTLGPUDebugEnabled())
  {
    [objc_msgSend(MEMORY[0x1E696AEC0] stringWithFormat:@"%s_ShaderValidation", a2), "UTF8String"];
  }

  MTLCompilerCache::createFSCache();
}

uint64_t MTLSerializer::SerializedObjectList::getElementCount(MTLSerializer::SerializedObjectList *this)
{
  if (!*this)
  {
    return 0;
  }

  if (*(this + 1) <= 3uLL)
  {
    abort();
  }

  return **this;
}

uint64_t std::vector<MTLPipelineDescriptions::LibraryReference>::__emplace_back_slow_path<MTLPipelineDescriptions::LibraryReference const&>(uint64_t a1, __int128 *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    std::vector<std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>::__throw_length_error[abi:ne200100]();
  }

  v6 = *(a1 + 16) - *a1;
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

  v21 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<MTLPipelineDescriptions::LibraryReference>>(a1, v7);
  }

  v8 = (32 * v2);
  v18 = 0;
  v19 = v8;
  v20 = v8;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v8, *a2, *(a2 + 1));
    v10 = v19;
    v11 = v20;
  }

  else
  {
    v9 = *a2;
    v8->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&v8->__r_.__value_.__l.__data_ = v9;
    v10 = v8;
    v11 = v8;
  }

  v8[1].__r_.__value_.__r.__words[0] = *(a2 + 3);
  *&v20 = v11 + 32;
  v12 = *(a1 + 8);
  v13 = v10 + *a1 - v12;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<MTLPipelineDescriptions::LibraryReference>,MTLPipelineDescriptions::LibraryReference*>(a1, *a1, v12, v13);
  v14 = *a1;
  *a1 = v13;
  v15 = *(a1 + 16);
  v17 = v20;
  *(a1 + 8) = v20;
  *&v20 = v14;
  *(&v20 + 1) = v15;
  v18 = v14;
  v19 = v14;
  std::__split_buffer<std::tuple<std::string,unsigned int,unsigned int>>::~__split_buffer(&v18);
  return v17;
}

void sub_185BD39BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<std::tuple<std::string,unsigned int,unsigned int>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<MTLPipelineDescriptions::LibraryReference>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::vector<MTLPipelineDescriptions::LibraryReference>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<MTLPipelineDescriptions::LibraryReference>::__emplace_back_slow_path<MTLPipelineDescriptions::LibraryReference const&>(a1, a2);
  }

  else
  {
    std::vector<MTLPipelineDescriptions::LibraryReference>::__construct_one_at_end[abi:ne200100]<MTLPipelineDescriptions::LibraryReference const&>(a1, a2);
    result = v3 + 32;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<MTLPipelineDescriptions::LibraryReference>,MTLPipelineDescriptions::LibraryReference*>(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
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
      v7 = *v6;
      *(a4 + 16) = *(v6 + 2);
      *a4 = v7;
      *(v6 + 1) = 0;
      *(v6 + 2) = 0;
      *v6 = 0;
      *(a4 + 24) = *(v6 + 3);
      v6 += 2;
      a4 += 32;
    }

    while (v6 != a3);
    v12 = a4;
    v10 = 1;
    while (v5 != a3)
    {
      if (*(v5 + 23) < 0)
      {
        operator delete(*v5);
      }

      v5 += 2;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<MTLPipelineDescriptions::LibraryReference>,MTLPipelineDescriptions::LibraryReference*>>::~__exception_guard_exceptions[abi:ne200100](v9);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<MTLPipelineDescriptions::LibraryReference>,MTLPipelineDescriptions::LibraryReference*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<MTLPipelineDescriptions::LibraryReference>,MTLPipelineDescriptions::LibraryReference*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

uint64_t std::__split_buffer<std::tuple<std::string,unsigned int,unsigned int>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<std::tuple<std::string,unsigned int,unsigned int>>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::tuple<std::string,unsigned int,unsigned int>>::__destruct_at_end[abi:ne200100](uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 4;
      *(a1 + 16) = v2 - 4;
      if (*(v2 - 9) < 0)
      {
        operator delete(*v5);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

void *PipelineLibraryData::PipelineLibraryData(void *a1, void *a2, void *a3, void *a4)
{
  v6 = a2[1];
  *a1 = *a2;
  a1[1] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  a1[2] = 0;
  a1[3] = 0;
  a1[2] = a3;
  a1[3] = a4;
  return a1;
}

void sub_185BD3C54(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void MTLLibraryDataWithArchive::decodeSPCIToken(uint64_t a1, void *a2, char *__s1, size_t __n, unint64_t a5)
{
  v37 = *MEMORY[0x1E69E9840];
  v9 = strnlen(__s1, __n);
  v10 = *&__s1[v9 + 17];
  v36[0] = *&__s1[v9 + 1];
  v36[1] = v10;
  v11 = *&__s1[v9 + 33];
  v34 = v11;
  v35 = v36;
  v12 = std::__hash_table<std::__hash_value_type<MTLUINT256_t,std::vector<std::pair<unsigned long long,unsigned long long>>>,std::__unordered_map_hasher<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,std::vector<std::pair<unsigned long long,unsigned long long>>>,UnorderedContainerHash,UnorderedContainerHash,true>,std::__unordered_map_equal<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,std::vector<std::pair<unsigned long long,unsigned long long>>>,UnorderedContainerHash,UnorderedContainerHash,true>,std::allocator<std::__hash_value_type<MTLUINT256_t,std::vector<std::pair<unsigned long long,unsigned long long>>>>>::__emplace_unique_key_args<MTLUINT256_t,std::piecewise_construct_t const&,std::tuple<MTLUINT256_t const&>,std::tuple<>>(a2, v36);
  v13 = v12;
  v15 = v12[7];
  v14 = v12[8];
  if (v15 >= v14)
  {
    v17 = v12[6];
    v18 = v15 - v17;
    v19 = (v15 - v17) >> 4;
    v20 = v19 + 1;
    if ((v19 + 1) >> 60)
    {
      std::vector<std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>::__throw_length_error[abi:ne200100]();
    }

    v21 = v14 - v17;
    if (v21 >> 3 > v20)
    {
      v20 = v21 >> 3;
    }

    v22 = v21 >= 0x7FFFFFFFFFFFFFF0;
    v23 = 0xFFFFFFFFFFFFFFFLL;
    if (!v22)
    {
      v23 = v20;
    }

    if (v23)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<nlist_64>>((v12 + 6), v23);
    }

    v24 = v19;
    v25 = (16 * v19);
    *v25 = v11;
    v25[1] = a5;
    v16 = 16 * v19 + 16;
    v26 = &v25[-2 * v24];
    memcpy(v26, v17, v18);
    v27 = v13[6];
    v13[6] = v26;
    v13[7] = v16;
    v13[8] = 0;
    if (v27)
    {
      operator delete(v27);
    }
  }

  else
  {
    *v15 = v11;
    v15[1] = a5;
    v16 = (v15 + 2);
  }

  v13[7] = v16;
  v28 = *(a1 + 408);
  if (!v28)
  {
    goto LABEL_20;
  }

  v29 = a1 + 408;
  do
  {
    v30 = *(v28 + 32);
    v22 = v30 >= v11;
    v31 = v30 < v11;
    if (v22)
    {
      v29 = v28;
    }

    v28 = *(v28 + 8 * v31);
  }

  while (v28);
  if (v29 == a1 + 408 || v11 < *(v29 + 32))
  {
LABEL_20:
    v32 = malloc_type_malloc(0x18uLL, 0x1050040EE29081CuLL);
    v35 = &v34;
    std::__tree<std::__value_type<unsigned long long,MTLSpecializationScriptData *>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,MTLSpecializationScriptData *>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,MTLSpecializationScriptData *>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(a1 + 400, &v34)[5] = v32;
  }

  v33 = *MEMORY[0x1E69E9840];
}

void *std::__hash_table<std::__hash_value_type<MTLUINT256_t,std::vector<std::pair<unsigned long long,unsigned long long>>>,std::__unordered_map_hasher<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,std::vector<std::pair<unsigned long long,unsigned long long>>>,UnorderedContainerHash,UnorderedContainerHash,true>,std::__unordered_map_equal<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,std::vector<std::pair<unsigned long long,unsigned long long>>>,UnorderedContainerHash,UnorderedContainerHash,true>,std::allocator<std::__hash_value_type<MTLUINT256_t,std::vector<std::pair<unsigned long long,unsigned long long>>>>>::__emplace_unique_key_args<MTLUINT256_t,std::piecewise_construct_t const&,std::tuple<MTLUINT256_t const&>,std::tuple<>>(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_28;
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
LABEL_28:
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
      goto LABEL_28;
    }

LABEL_27:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_28;
    }
  }

  if (v7[2] != *a2 || v7[3] != a2[1] || v7[4] != a2[2] || v7[5] != a2[3])
  {
    goto LABEL_27;
  }

  return v7;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<nlist_64>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *std::__tree<std::__value_type<unsigned long long,MTLSpecializationScriptData *>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,MTLSpecializationScriptData *>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,MTLSpecializationScriptData *>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(uint64_t a1, unint64_t *a2)
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

uint64_t getCompileStatsJSONPath(void)
{
  if (os_variant_has_internal_diagnostics() && getCompileStatsJSONPath(void)::onceToken != -1)
  {
    getCompileStatsJSONPath();
  }

  return getCompileStatsJSONPath(void)::compileStatsPath;
}

uint64_t MTLLibraryDataWithArchive::serializeSpecFunctionScript(uint64_t a1, void *a2, void *a3)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v9 = 0;
  v8 = 0;
  v5 = 0;
  if ((*(*a1 + 384))())
  {
    v5 = serializeConstantScript(v9, v8, a2);
    if ((v5 & 1) == 0 && a3)
    {
      v6 = [MEMORY[0x1E695DF20] dictionaryWithObject:@"Invalid script file" forKey:*MEMORY[0x1E696A578]];
      *a3 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"MTLLibraryErrorDomain" code:1 userInfo:v6];
    }

    free(v9);
  }

  return v5;
}

uint64_t serializeConstantScript(unsigned int *a1, uint64_t a2, void *a3)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v3 = (a1 + *a1);
  v4 = (v3 - *v3);
  if (*v4 < 9u)
  {
    return 0;
  }

  v5 = v4[4];
  if (!v5)
  {
    return 0;
  }

  v6 = (v3 + v5 + *(v3 + v5));
  v7 = (v6 - *v6);
  v47 = v6;
  if (*v7 >= 9u && (v8 = v7[4]) != 0)
  {
    v9 = (v6 + v8 + *(v6 + v8));
    v10 = *v9;
  }

  else
  {
    v9 = 0;
    v10 = 0;
  }

  v12 = (20 * v10) + 4;
  v13 = malloc_type_malloc(v12, 0x100004077774924uLL);
  *v13 = v10;
  if (v10)
  {
    v14 = 0;
    v15 = v9 + 1;
    v16 = 4;
    while (1)
    {
      v17 = (&v15[v14] + v15[v14]);
      v18 = (v17 - *v17);
      if (*v18 >= 5u && (v19 = v18[2]) != 0)
      {
        v20 = *(v17 + v19);
        v21 = v20 >> 8;
      }

      else
      {
        LOBYTE(v20) = 0;
        LOBYTE(v21) = 0;
      }

      if (v16 >= 0xFFFFFFFFFFFFFFFELL)
      {
        goto LABEL_86;
      }

      v22 = v16 + 2;
      if (v12 < v16 + 2)
      {
        do
        {
          if (v12 >> 1 >= ~v12)
          {
            v12 = v16 + 2;
          }

          else
          {
            v12 += v12 >> 1;
          }
        }

        while (v12 < v22);
        v13 = malloc_type_realloc(v13, v12, 0x100004077774924uLL);
        if (!v13)
        {
          goto LABEL_86;
        }
      }

      v23 = v13 + v16;
      *v23 = v20;
      v23[1] = v21;
      v24 = (v17 - *v17);
      if (*v24 >= 7u && (v25 = v24[3]) != 0)
      {
        v26 = *(v17 + v25);
      }

      else
      {
        v26 = 0;
      }

      if (v16 == -3)
      {
        goto LABEL_86;
      }

      v27 = v16 + 3;
      if (v12 <= v22)
      {
        do
        {
          if (v12 >> 1 >= ~v12)
          {
            v12 = v16 + 3;
          }

          else
          {
            v12 += v12 >> 1;
          }
        }

        while (v12 <= v22);
        v13 = malloc_type_realloc(v13, v12, 0x100004077774924uLL);
        if (!v13)
        {
LABEL_86:
          abort();
        }
      }

      *(v13 + v22) = v26;
      v28 = (v17 - *v17);
      v29 = *v28;
      if (v29 >= 9)
      {
        break;
      }

      if (v29 >= 7)
      {
        goto LABEL_36;
      }

LABEL_56:
      ++v14;
      v16 = v27;
      if (v14 == v10)
      {
        goto LABEL_59;
      }
    }

    if (v28[4])
    {
      v30 = v17 + v28[4] + *(v17 + v28[4]);
    }

    else
    {
LABEL_36:
      v30 = 0;
    }

    v31 = v28[3];
    if (v31)
    {
      v32 = *(v17 + v31) - 3;
      v33 = 4;
      switch(v32)
      {
        case 0:
        case 14:
        case 26:
        case 30:
        case 35:
        case 39:
        case 45:
        case 49:
        case 53:
          goto LABEL_48;
        case 1:
        case 16:
        case 27:
        case 31:
        case 37:
        case 41:
        case 78:
        case 82:
          v33 = 8;
          goto LABEL_48;
        case 2:
        case 28:
        case 32:
          v33 = 12;
          goto LABEL_48;
        case 3:
        case 29:
        case 33:
        case 79:
        case 83:
          v33 = 16;
          goto LABEL_48;
        case 13:
        case 34:
        case 38:
        case 43:
        case 47:
        case 51:
          v33 = 2;
          goto LABEL_48;
        case 15:
        case 36:
        case 40:
          v33 = 6;
          goto LABEL_48;
        case 42:
        case 46:
        case 50:
          v33 = 1;
          goto LABEL_48;
        case 44:
        case 48:
        case 52:
          v33 = 3;
          goto LABEL_48;
        case 80:
        case 84:
          v33 = 24;
          goto LABEL_48;
        case 81:
        case 85:
          v33 = 32;
LABEL_48:
          if (-4 - v16 < v33)
          {
            goto LABEL_86;
          }

          if (v12 < v33 + v27)
          {
            do
            {
              if (v12 >> 1 >= ~v12)
              {
                v12 = v33 + v27;
              }

              else
              {
                v12 += v12 >> 1;
              }
            }

            while (v12 < v33 + v27);
            v13 = malloc_type_realloc(v13, v12, 0x100004077774924uLL);
            if (!v13)
            {
              goto LABEL_86;
            }
          }

          memcpy(v13 + v27, v30, v33);
          v27 += v33;
          break;
        default:
          goto LABEL_56;
      }
    }

    goto LABEL_56;
  }

  v27 = 4;
LABEL_59:
  *a3 = v13;
  a3[1] = v27;
  v34 = (v47 - *v47);
  if (*v34 < 7u || !v34[3])
  {
    return 1;
  }

  v35 = (v47 + v34[3]);
  v36 = v34[2];
  if (v36)
  {
    v37 = (v47 + v36 + *(v47 + v36));
  }

  else
  {
    v37 = 0;
  }

  v38 = *v35;
  flatbuffers::String::str(v37, v51);
  v39 = v35 + v38;
  flatbuffers::String::str(v39, __p);
  v40 = v52;
  if ((v52 & 0x80u) == 0)
  {
    v41 = v52;
  }

  else
  {
    v41 = v51[1];
  }

  v42 = v50;
  v43 = v50;
  if ((v50 & 0x80u) != 0)
  {
    v42 = __p[1];
  }

  if (v41 == v42)
  {
    if ((v52 & 0x80u) == 0)
    {
      v44 = v51;
    }

    else
    {
      v44 = v51[0];
    }

    if ((v50 & 0x80u) == 0)
    {
      v45 = __p;
    }

    else
    {
      v45 = __p[0];
    }

    v46 = memcmp(v44, v45, v41) != 0;
    if ((v43 & 0x80000000) == 0)
    {
      goto LABEL_80;
    }

    goto LABEL_79;
  }

  v46 = 1;
  if (v50 < 0)
  {
LABEL_79:
    operator delete(__p[0]);
    v40 = v52;
  }

LABEL_80:
  if ((v40 & 0x80) != 0)
  {
    operator delete(v51[0]);
    if (!v46)
    {
      return 1;
    }

    goto LABEL_82;
  }

  if (v46)
  {
LABEL_82:
    a3[2] = strdup(v39 + 4);
  }

  return 1;
}

void sub_185BD4874(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  free(0);
  _Unwind_Resume(a1);
}

uint64_t ___Z23logCompileTimeStatsModev_block_invoke()
{
  v0 = getenv("MTL_LOG_COMPILE_STATS");
  if (!v0)
  {
    v0 = "0";
  }

  result = strtol(v0, 0, 0);
  logCompileTimeStatsMode(void)::shouldLogStats = result;
  if (result >= 1)
  {
    _collectCompilePerformanceStats = 1;
  }

  return result;
}

uint64_t flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantInt>(uint64_t a1, _DWORD *a2)
{
  flatbuffers::FlatBufferBuilder::Align(a1, 4uLL);
  v4 = *(a1 + 48);
  if ((v4 - *(a1 + 56)) <= 3)
  {
    flatbuffers::vector_downward::reallocate(a1, 4uLL);
    v4 = *(a1 + 48);
  }

  *(v4 - 4) = *a2;
  v5 = v4 - 4;
  *(a1 + 48) = v5;
  return (*(a1 + 32) - v5 + *(a1 + 40));
}

__CFString *MTLFunctionTypeString(uint64_t a1)
{
  if ((a1 - 1) > 7)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E6EEC628[a1 - 1];
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<char const*,MTLErrorModeType>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t validateWithDevice(void *a1, uint64_t a2)
{
  v36 = 0;
  memset(v35, 0, sizeof(v35));
  _MTLMessageContextBegin_(v35, "validateWithDevice", 1521, a1, 1, "Compute Pipeline Descriptor Validation");
  v10 = (a2 + 8);
  v9 = *(a2 + 8);
  if (v9 || (_MTLMessageContextPush_(v35, 4, @"computeFunction must not be nil.", v4, v5, v6, v7, v8, v32), (v9 = *v10) != 0))
  {
    if ([v9 device] != a1)
    {
      _MTLMessageContextPush_(v35, 8, @"computeFunction is associated with a different device", v11, v12, v13, v14, v15, v32);
    }

    if (*v10)
    {
      if ([*v10 needsFunctionConstantValues])
      {
        validateWithDevice((a2 + 8), v35);
      }

      if (*v10 && *(a2 + 24))
      {
        v16 = 0;
        while ([objc_msgSend(objc_msgSend(*(a2 + 24) "layouts")] != -1)
        {
          if (++v16 == 31)
          {
            goto LABEL_15;
          }
        }

        if (([a1 supportsDynamicAttributeStride] & 1) == 0)
        {
          _MTLMessageContextPush_(v35, 4, @"MTLBufferLayoutStrideDynamic set on buffer-layout index %u; device does not support dynamic attribute strides.", v17, v18, v19, v20, v21, v16);
        }
      }
    }
  }

LABEL_15:
  if (([a1 supportsTextureWriteRoundingMode:*(a2 + 104)] & 1) == 0)
  {
    validateWithDevice((a2 + 104), v35);
  }

  v22 = *(a2 + 184);
  if (v22 > [a1 maxAccelerationStructureTraversalDepth])
  {
    v26 = *(a2 + 184);
    [a1 maxAccelerationStructureTraversalDepth];
    _MTLMessageContextPush_(v35, 4, @"maxAccelerationStructureTraversalDepth (%lu) must be less than or equal to %lu", v27, v28, v29, v30, v31, v26);
  }

  v33 = *(a2 + 192);
  v34 = *(a2 + 208);
  validateRequiredThreadsPerThreadgroup(v35, 4, a1, &v33, *(a2 + 18), "requiredThreadsPerThreadgroup", v23, v24);
  return _MTLMessageContextEnd(v35);
}

{
  v72[8] = *MEMORY[0x1E69E9840];
  v70 = 0;
  memset(v69, 0, sizeof(v69));
  _MTLMessageContextBegin_(v69, "validateWithDevice", 1161, a1, 9, "Tile Render Pipeline Descriptor Validation");
  v10 = (a2 + 24);
  v9 = *(a2 + 24);
  if (!v9)
  {
    _MTLMessageContextPush_(v69, 4, @"tileFunction must not be nil", v4, v5, v6, v7, v8, v63);
    v9 = *v10;
  }

  if ([v9 device] != a1)
  {
    _MTLMessageContextPush_(v69, 8, @"tileFunction is associated with a different device", v11, v12, v13, v14, v15, v63);
  }

  if ([*v10 needsFunctionConstantValues])
  {
    validateWithDevice((a2 + 24), v69);
  }

  v16 = *(a2 + 8);
  v17 = [a1 supportsSeparateVisibilityAndShadingRate];
  v23 = *(a2 + 48);
  if (v17)
  {
    v24 = *(a2 + 8);
    if (v23 && v23 > v24)
    {
      _MTLMessageContextPush_(v69, 4, @"colorSampleCount expected to be smaller or equal to rasterSampleCount", v18, v19, v20, v21, v22, v63);
      v24 = *(a2 + 8);
      v23 = *(a2 + 48);
      if (!v24)
      {
        goto LABEL_13;
      }
    }

    else if (!v24)
    {
      goto LABEL_13;
    }

    if (v24 < v23)
    {
      _MTLMessageContextPush_(v69, 4, @"rasterSampleCount expected to be greater or equal to colorSampleCount", v18, v19, v20, v21, v22, v63);
      v23 = *(a2 + 48);
    }

LABEL_13:
    if (v23)
    {
      v25 = [a1 supportsTextureSampleCount:?];
      v31 = *(a2 + 48);
      if ((v25 & 1) == 0)
      {
        _MTLMessageContextPush_(v69, 4, @"colorSampleCount (%lu) is not supported by device.", v26, v27, v28, v29, v30, *(a2 + 48));
        v31 = *(a2 + 48);
      }

      if (v31)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_20;
  }

  if (v23)
  {
    _MTLMessageContextPush_(v69, 4, @"colorSampleCount expected to be 0.", v18, v19, v20, v21, v22, v63);
  }

LABEL_20:
  v31 = v16;
LABEL_21:
  v64 = v31;
  if (([a1 supportsTextureWriteRoundingMode:*(a2 + 72)] & 1) == 0)
  {
    validateWithDevice((a2 + 72), v69);
  }

  v32 = [a1 maxColorAttachments];
  v33 = 0;
  for (i = 0; i != 8; ++i)
  {
    v35 = *(*a2 + 8 + 8 * i);
    if (v35)
    {
      v36 = *(v35 + 8);
      v68 = 0;
      v66 = 0u;
      v67 = 0u;
      v65 = 0u;
      MTLPixelFormatGetInfoForDevice(a1, v36, &v65);
      if (v36)
      {
        if (i >= v32)
        {
          _MTLMessageContextPush_(v69, 4, @"MTLTileRenderPipelineDescriptor color render target(%lu) exceeds platform max(%lu).", v37, v38, v39, v40, v41, i);
        }

        if (BYTE8(v65))
        {
          if ((BYTE8(v65) & 0x10) != 0)
          {
LABEL_30:
            v72[v33] = v36;
            v42 = &v71[7 * v33++];
            v43 = v66;
            *v42 = v65;
            *(v42 + 1) = v43;
            *(v42 + 2) = v67;
            v42[6] = v68;
            continue;
          }
        }

        else
        {
          _MTLMessageContextPush_(v69, 4, @"pixelFormat, for color render target(%lu), is not a valid MTLPixelFormat.", v37, v38, v39, v40, v41, i);
          if ((BYTE8(v65) & 0x10) != 0)
          {
            goto LABEL_30;
          }
        }

        _MTLMessageContextPush_(v69, 4, @"pixelFormat, for color render target(%lu), %s is not color renderable.", v37, v38, v39, v40, v41, i);
        goto LABEL_30;
      }
    }
  }

  v44 = [a1 maxFramebufferStorageBits];
  v45 = MTLPixelFormatComputeTotalSizeUsed(v71, v72, v33, v64 > 1);
  v46 = [a1 isLargeMRTSupported];
  if ((v46 & 1) == 0 && 8 * v45 > v44)
  {
    _MTLMessageContextPush_(v69, 4, @"This set of render targets requires %lu bytes of pixel storage. This device supports %lu bytes.", v47, v48, v49, v50, v51, v45 & 0x1FFFFFFFFFFFFFFFLL);
  }

  v52 = *(a2 + 136);
  if (v52 > [a1 maxAccelerationStructureTraversalDepth])
  {
    v57 = *(a2 + 136);
    [a1 maxAccelerationStructureTraversalDepth];
    _MTLMessageContextPush_(v69, 4, @"maxAccelerationStructureTraversalDepth (%lu) must be less than or equal to %lu", v58, v59, v60, v61, v62, v57);
  }

  v65 = *(a2 + 168);
  *&v66 = *(a2 + 184);
  validateRequiredThreadsPerThreadgroup(v69, 4, a1, &v65, *(a2 + 64), "requiredThreadsPerThreadgroup", v53, v54);
  result = _MTLMessageContextEnd(v69);
  v56 = *MEMORY[0x1E69E9840];
  return result;
}

void std::vector<std::pair<char const*,MTLErrorModeType>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<char const*,MTLErrorModeType>>>(a1, a2);
  }

  std::vector<std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>::__throw_length_error[abi:ne200100]();
}

void validateRequiredThreadsPerThreadgroup(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = *(a4 + 8);
  if (*a4 == 0)
  {
    if (!*(a4 + 16))
    {
      return;
    }

    v14 = 0;
  }

  v15 = v14 * *a4 * *(a4 + 16);
  if (v15)
  {
    if (a5)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v34 = *(a4 + 16);
    _MTLMessageContextPush_(a1, a2, @"(%s.width(%lu) * %s.height(%lu) * %s.depth(%lu))(%lu) must not be 0.", a4, a5, a6, a7, a8, a6);
    if (a5)
    {
LABEL_6:
      if (v15 > a5)
      {
        v35 = *(a4 + 16);
        v33 = *(a4 + 8);
        v32 = *a4;
        _MTLMessageContextPush_(a1, a2, @"(%s.width(%lu) * %s.height(%lu) * %s.depth(%lu))(%lu) must be <= maxTotalThreadsPerThreadgroup (%lu)", a4, a5, a6, a7, a8, a6);
      }
    }
  }

  if (v15 > [a3 maxTotalComputeThreadsPerThreadgroup])
  {
    v21 = *a4;
    v22 = *(a4 + 8);
    v23 = *(a4 + 16);
    [a3 maxTotalComputeThreadsPerThreadgroup];
    _MTLMessageContextPush_(a1, a2, @"(%s.width(%lu) * %s.height(%lu) * %s.depth(%lu))(%lu) must be <= %lu (device limit)", v24, v25, v26, v27, v28, a6);
  }

  if (a3)
  {
    [a3 maxThreadsPerThreadgroup];
  }

  if (*a4)
  {
    v29 = *a4;
    _MTLMessageContextPush_(a1, a2, @"%s.width(%lu) must be <= %lu (device limit)", v16, v17, v18, v19, v20, a6);
  }

  if (*(a4 + 8))
  {
    v30 = *(a4 + 8);
    _MTLMessageContextPush_(a1, a2, @"%s.height(%lu) must be <= %lu (device limit)", v16, v17, v18, v19, v20, a6);
  }

  if (*(a4 + 16))
  {
    v31 = *(a4 + 16);
    _MTLMessageContextPush_(a1, a2, @"%s.depth(%lu) must be <= %lu (device limit)", v16, v17, v18, v19, v20, a6);
  }
}

uint64_t std::vector<std::pair<char const*,MTLErrorModeType>>::__init_with_size[abi:ne200100]<std::pair<char const*,MTLErrorModeType> const*,std::pair<char const*,MTLErrorModeType> const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::pair<char const*,MTLErrorModeType>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_185BD4FA0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _MTLCreateComputePipelineScriptFromDescriptor(flatbuffers::FlatBufferBuilder *a1, MTLComputePipelineDescriptor *a2)
{
  v4 = 1;
  if (![(MTLComputePipelineDescriptor *)a2 supportAddingBinaryFunctions])
  {
    v4 = [(NSArray *)[(MTLLinkedFunctions *)[(MTLComputePipelineDescriptor *)a2 linkedFunctions] binaryFunctions] count]!= 0;
  }

  LODWORD(v16) = createLinkedFunctions(a1, [(MTLComputePipelineDescriptor *)a2 linkedFunctions]);
  ComputeFunctionDescriptor = createComputeFunctionDescriptor(a1, a2, &v16, v4);
  v6 = [objc_msgSend(-[MTLComputePipelineDescriptor computeFunction](a2 "computeFunction")];
  v7 = strlen(v6);
  String = flatbuffers::FlatBufferBuilder::CreateString(a1, v6, v7);
  *(a1 + 70) = 1;
  LODWORD(v6) = *(a1 + 10);
  v9 = *(a1 + 8) - *(a1 + 12);
  flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 4, String);
  flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 6, ComputeFunctionDescriptor);
  v10 = flatbuffers::FlatBufferBuilder::EndTable(a1, v9 + v6);
  v16 = 0x400000000;
  v17 = 0;
  *(a1 + 70) = 1;
  LODWORD(v6) = *(a1 + 10);
  v11 = *(a1 + 8) - *(a1 + 12);
  flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 10, v10);
  flatbuffers::FlatBufferBuilder::AddStruct<Mtl4::Version>(a1, 4, &v16);
  v12 = flatbuffers::FlatBufferBuilder::PushElement<unsigned char>(a1, 2);
  flatbuffers::FlatBufferBuilder::TrackField(a1, 8, v12);
  v13 = flatbuffers::FlatBufferBuilder::PushElement<unsigned char>(a1, 2);
  flatbuffers::FlatBufferBuilder::TrackField(a1, 6, v13);
  v14 = flatbuffers::FlatBufferBuilder::EndTable(a1, v11 + v6);
  flatbuffers::FlatBufferBuilder::Finish(a1, v14, "AIRP", 0);
  return *(a1 + 6) + **(a1 + 6);
}

dispatch_data_t _MTLCreateComputePipelineScriptFromDescriptor(MTLComputePipelineDescriptor *a1)
{
  v11 = 0;
  v12 = 0;
  v13 = xmmword_185DB8250;
  v14 = 0u;
  *buffer = 0u;
  v16 = 0;
  v17 = 1;
  v18 = 256;
  v19 = 0;
  _MTLCreateComputePipelineScriptFromDescriptor(&v11, a1);
  v1 = buffer[0];
  v2 = (v14 + DWORD2(v14) - LODWORD(buffer[0]));
  v5 = v11;
  v6 = v12;
  v7 = *(&v14 + 1);
  v8 = v14;
  v9 = buffer[0];
  v10 = v2;
  if (v12 == 1)
  {
    v11 = 0;
    v12 = 0;
  }

  v14 = 0u;
  *buffer = 0u;
  v3 = dispatch_data_create(v1, v2, 0, 0);
  flatbuffers::DetachedBuffer::~DetachedBuffer(&v5);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(&v11);
  return v3;
}

void sub_185BD5380(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

uint64_t createComputeFunctionDescriptor(flatbuffers::FlatBufferBuilder *this, void *a2, int *a3, int a4)
{
  v4 = a4;
  v5 = a3;
  v8 = a2 + 2;
  v9 = a2[5];
  if (v9)
  {
    v48 = a2 + 2;
    v10 = *(v9 + 16);
    v51 = a2[5];
    if (v10)
    {
      memset(&__p, 0, sizeof(__p));
      v11 = 31;
      do
      {
        v12 = *(v10 + 8);
        if (v12)
        {
          *(this + 70) = 1;
          v13 = *(this + 8);
          v14 = *(this + 12);
          v15 = *(this + 10);
          flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(this, 4, [v12 format], 0);
          flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(this, 6, [v12 offset], 0);
          flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(this, 8, [v12 bufferIndex], 0);
          v52 = flatbuffers::FlatBufferBuilder::EndTable(this, v13 - v14 + v15);
          std::vector<unsigned int>::push_back[abi:ne200100](&__p, &v52);
        }

        else
        {
          *(this + 70) = 1;
          v16 = *(this + 8);
          v17 = *(this + 12);
          v18 = *(this + 10);
          if (*(this + 80) == 1)
          {
            v19 = flatbuffers::FlatBufferBuilder::PushElement<unsigned long long>(this, 0);
            flatbuffers::FlatBufferBuilder::TrackField(this, 6, v19);
            if (*(this + 80))
            {
              v20 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>(this, 0);
              flatbuffers::FlatBufferBuilder::TrackField(this, 8, v20);
              if (*(this + 80))
              {
                v21 = flatbuffers::FlatBufferBuilder::PushElement<unsigned char>(this, 0);
                flatbuffers::FlatBufferBuilder::TrackField(this, 4, v21);
              }
            }
          }

          v52 = flatbuffers::FlatBufferBuilder::EndTable(this, v16 - v17 + v18);
          std::vector<unsigned int>::push_back[abi:ne200100](&__p, &v52);
        }

        v10 += 8;
        --v11;
      }

      while (v11);
      if (__p.height == __p.width)
      {
        width = &flatbuffers::data<flatbuffers::Offset<Air::AttributeDescriptor>,std::allocator<flatbuffers::Offset<Air::AttributeDescriptor>>>(std::vector<flatbuffers::Offset<Air::AttributeDescriptor>> const&)::t;
      }

      else
      {
        width = __p.width;
      }

      v23 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(this, width, (__p.height - __p.width) >> 2);
      v4 = a4;
      if (__p.width)
      {
        __p.height = __p.width;
        operator delete(__p.width);
      }

      v47 = v23;
    }

    else
    {
      v47 = 0;
    }

    v25 = *(v9 + 8);
    if (v25)
    {
      memset(&__p, 0, sizeof(__p));
      v26 = 31;
      do
      {
        v27 = *(v25 + 8);
        if (v27)
        {
          *(this + 70) = 1;
          v28 = *(this + 8);
          v29 = *(this + 12);
          v30 = *(this + 10);
          flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(this, 4, [v27 stepFunction], 1);
          flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(this, 6, [v27 stepRate], 1);
          flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(this, 8, [v27 stride], 0);
          v52 = flatbuffers::FlatBufferBuilder::EndTable(this, v28 - v29 + v30);
          std::vector<unsigned int>::push_back[abi:ne200100](&__p, &v52);
        }

        else
        {
          *(this + 70) = 1;
          v31 = *(this + 8);
          v32 = *(this + 12);
          v33 = *(this + 10);
          if (*(this + 80) == 1)
          {
            v34 = flatbuffers::FlatBufferBuilder::PushElement<unsigned long long>(this, 0);
            flatbuffers::FlatBufferBuilder::TrackField(this, 8, v34);
            if (*(this + 80))
            {
              v35 = flatbuffers::FlatBufferBuilder::PushElement<unsigned long long>(this, 1);
              flatbuffers::FlatBufferBuilder::TrackField(this, 6, v35);
              if (*(this + 80))
              {
                v36 = flatbuffers::FlatBufferBuilder::PushElement<unsigned char>(this, 1);
                flatbuffers::FlatBufferBuilder::TrackField(this, 4, v36);
              }
            }
          }

          v52 = flatbuffers::FlatBufferBuilder::EndTable(this, v31 - v32 + v33);
          std::vector<unsigned int>::push_back[abi:ne200100](&__p, &v52);
        }

        v25 += 8;
        --v26;
      }

      while (v26);
      if (__p.height == __p.width)
      {
        v37 = &flatbuffers::data<flatbuffers::Offset<Air::BufferLayoutDescriptor>,std::allocator<flatbuffers::Offset<Air::BufferLayoutDescriptor>>>(std::vector<flatbuffers::Offset<Air::BufferLayoutDescriptor>> const&)::t;
      }

      else
      {
        v37 = __p.width;
      }

      v38 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(this, v37, (__p.height - __p.width) >> 2);
      v5 = a3;
      v4 = a4;
      if (__p.width)
      {
        __p.height = __p.width;
        operator delete(__p.width);
      }
    }

    else
    {
      v38 = 0;
      v5 = a3;
    }

    *(this + 70) = 1;
    v39 = *(this + 10);
    v40 = *(this + 8) - *(this + 12);
    flatbuffers::FlatBufferBuilder::AddOffset<void>(this, 4, v47);
    flatbuffers::FlatBufferBuilder::AddOffset<void>(this, 6, v38);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(this, 8, [v51 indexBufferIndex], 0);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(this, 10, [v51 indexType], 0);
    v24 = flatbuffers::FlatBufferBuilder::EndTable(this, v40 + v39);
    v8 = v48;
  }

  else
  {
    v24 = 0;
  }

  PipelineBufferDescriptorVector = createPipelineBufferDescriptorVector(this, v8[6]);
  [a2 requiredThreadsPerThreadgroup];
  v42 = createRequiredThreadsPerThreadgroupVector(this, &__p);
  v43 = [a2 maxCallStackDepth];
  *(this + 70) = 1;
  v44 = *(this + 10);
  v45 = *(this + 8) - *(this + 12);
  flatbuffers::FlatBufferBuilder::AddOffset<void>(this, 10, v24);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(this, 8, v43, 1);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(this, 4, [a2 threadGroupSizeIsMultipleOfThreadExecutionWidth], 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(this, 6, [a2 maxTotalThreadsPerThreadgroup], 0);
  flatbuffers::FlatBufferBuilder::AddOffset<void>(this, 24, v42);
  flatbuffers::FlatBufferBuilder::AddOffset<void>(this, 12, PipelineBufferDescriptorVector);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(this, 14, [a2 supportIndirectCommandBuffers], 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(this, 16, v4, 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(this, 18, [a2 textureWriteRoundingMode], 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(this, 20, [a2 needsCustomBorderColorSamplers], 0);
  flatbuffers::FlatBufferBuilder::AddOffset<void>(this, 22, *v5);
  return flatbuffers::FlatBufferBuilder::EndTable(this, v45 + v44);
}

void sub_185BD5964(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t createRequiredThreadsPerThreadgroupVector(flatbuffers::FlatBufferBuilder *a1, MTLSize *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v10 = *a2;
  v8 = 0;
  v9 = 0;
  __p = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&__p, &v10, &v11, 3uLL);
  if (v8 == __p)
  {
    v3 = &flatbuffers::data<unsigned long long,std::allocator<unsigned long long>>(std::vector<unsigned long long> const&)::t;
  }

  else
  {
    v3 = __p;
  }

  v4 = flatbuffers::FlatBufferBuilder::CreateVector<unsigned long long>(a1, v3, (v8 - __p) >> 3);
  if (__p)
  {
    v8 = __p;
    operator delete(__p);
  }

  v5 = *MEMORY[0x1E69E9840];
  return v4;
}

void sub_185BD5A58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<unsigned long long>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<MTLTagType>>(a1, a2);
  }

  std::vector<std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>::__throw_length_error[abi:ne200100]();
}

uint64_t std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned long long>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_185BD5B30(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t flatbuffers::FlatBufferBuilder::CreateVector<unsigned long long>(flatbuffers::FlatBufferBuilder *a1, const unsigned __int8 *a2, uint64_t a3)
{
  v3 = a3;
  *(a1 + 70) = 1;
  v6 = 8 * a3;
  flatbuffers::FlatBufferBuilder::PreAlign(a1, 8 * a3, 4uLL);
  flatbuffers::FlatBufferBuilder::PreAlign(a1, v6, 8uLL);
  flatbuffers::vector_downward::push(a1, a2, v6);
  *(a1 + 70) = 0;

  return flatbuffers::FlatBufferBuilder::PushElement<unsigned int>(a1, v3);
}

uint64_t Air::PipelineScript::pipeline_as_compute(Air::PipelineScript *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 9 && v1[4] && (v2 >= 0xB ? (v3 = *(this + v1[4]) == 2) : (v3 = 0), v3 && (v4 = v1[5]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t ReflectionValidator<MTLComputeReflectionReader>::Validate(uint64_t a1, uint64_t a2, NSObject *a3)
{
  if (MTLEnvVarAggregator::GET_MTL_VERIFY_REFLECTION(0, 0))
  {
    if ((a2 & 0x800000) != 0)
    {
      v5 = MTLNewEmulationReflectionData(a3);
    }

    else
    {
      v5 = MTLNewReflectionData(a3);
    }

    v6 = v5;
    MTLNewLegacyReflectionData(a3);
    ReflectionReaderFactory<MTLComputeReflectionReader>::Create(a2, v6);
  }

  return 1;
}

void MTLComputeReflectionDeserializerAIR::deserialize(uint64_t a1, void *a2, dispatch_data_t data)
{
  if (data)
  {
    size_ptr = 0;
    buffer_ptr = 0;
    v5 = dispatch_data_create_map(data, &buffer_ptr, &size_ptr);
    v6 = v5;
    v7 = (buffer_ptr + *buffer_ptr);
    v8 = *v7;
    v9 = -v8;
    v10 = (v7 - v8);
    if (*v10 >= 5u)
    {
      v11 = v10[2];
      if (v11)
      {
        *(a1 + 112) = *(v7 + v11 + 4) | (*(v7 + v11) << 16);
        v9 = -*v7;
      }
    }

    v12 = (v7 + v9);
    v13 = *v12;
    if (v13 >= 7 && (!v12[3] ? (v14 = 0) : (v14 = (v7 + v12[3] + *(v7 + v12[3]))), v13 >= 0xD && (v15 = v12[6]) != 0 && v14 && *v14))
    {
      v16 = &v14[*(v7 + v15 + *(v7 + v15) + 4)];
      v17 = AirReflection::Node::node_as_KernelFunction((v16 + v16[1] + 4));
      v18 = v17;
      v19 = (v17 - *v17);
      if (*v19 >= 9u && (v20 = v19[4]) != 0)
      {
        v21 = (v17 + v20 + *(v17 + v20));
      }

      else
      {
        v21 = 0;
      }

      memset(v43, 0, sizeof(v43));
      *__p = 0u;
      v38 = 0u;
      v40 = 1065353216;
      v36 = 3;
      LOBYTE(v37) = 0;
      v46 = 0u;
      v47 = 0u;
      v48 = 1065353216;
      std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::__move_assign(&v38, &v46);
      std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::~__hash_table(&v46);
      std::deque<ContextStack>::push_back(v43, &v36);
      ContextStack::~ContextStack(&v36);
      v22 = (v18 - *v18);
      if (*v22 >= 7u)
      {
        v23 = v22[3];
        if (v23)
        {
          v24 = (v18 + v23 + *(v18 + v23));
          *&v47 = 0;
          v25 = 0uLL;
          v46 = 0u;
          if (*v24)
          {
            v26 = 0;
            v27 = v24 + 1;
            do
            {
              deserializeReturn(a2, v27, v14, v43, &v42, &v36);
              std::vector<MTLReturnValueInternal>::push_back[abi:ne200100](&v46, &v36);
              if (v41 < 0)
              {
                operator delete(__p[0]);
              }

              if (SHIBYTE(v38) < 0)
              {
                operator delete(v37);
              }

              ++v26;
              ++v27;
            }

            while (v26 < *v24);
            v25 = v46;
            v28 = v47;
          }

          else
          {
            v28 = 0;
          }

          v34 = v25;
          v35 = v28;
          *&v47 = 0;
          v46 = 0uLL;
          *(a1 + 120) = newReturnValueFromArray(&v34);
          v36 = &v34;
          std::vector<MTLReturnValueInternal>::__destroy_vector::operator()[abi:ne200100](&v36);
          v36 = &v46;
          std::vector<MTLReturnValueInternal>::__destroy_vector::operator()[abi:ne200100](&v36);
        }
      }

      v29 = deserializeArguments(a2, v21, v14, v43, (a1 + 8), (*(a1 + 104) & 0x200000) == 0, (a1 + 48));
      v30 = (v7 - *v7);
      if (*v30 >= 0x1Du && (v31 = v30[14]) != 0)
      {
        v32 = (v7 + v31 + *(v7 + v31));
      }

      else
      {
        v32 = 0;
      }

      v33 = deserializeGlobalBindings(a2, v32, v43, v14, (a1 + 24)) >> 32;
      deserializeInputArguments(v21, v14, a1);
      *(a1 + 16) = HIDWORD(v29);
      *(a1 + 32) = v33;
      *(a1 + 36) = v29;
      *(a1 + 40) = deserializeUserAnnotation<AirReflection::KernelFunction const*>(v14, v18);
      dispatch_release(v6);
      std::deque<ContextStack>::~deque[abi:ne200100](v43);
    }

    else
    {
      dispatch_release(v5);
    }
  }
}

void sub_185BD628C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v6 = va_arg(va1, void **);
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
  std::vector<MTLReturnValueInternal>::__destroy_vector::operator()[abi:ne200100](va);
  v6 = (v4 - 128);
  std::vector<MTLReturnValueInternal>::__destroy_vector::operator()[abi:ne200100](va);
  std::deque<ContextStack>::~deque[abi:ne200100](va1);
  _Unwind_Resume(a1);
}

uint64_t AirReflection::Node::node_as_KernelFunction(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 2) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::Node::node_as_ThreadPositionInGridArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 < 5 || !v1[2])
  {
    return 0;
  }

  v3 = 0;
  if (v2 >= 7 && *(this + v1[2]) == 266240)
  {
    v3 = v1[3];
    if (v1[3])
    {
      v3 += this + *(this + v3);
    }
  }

  return v3;
}

uint64_t deserializeUserAnnotation<AirReflection::KernelFunction const*>(uint64_t a1, int *a2)
{
  v2 = (a2 - *a2);
  if (*v2 < 0x13u)
  {
    return 0;
  }

  v3 = v2[9];
  if (!v3)
  {
    return 0;
  }

  v4 = a1 + 4 * *(a2 + v3);
  v5 = AirReflection::Node::node_as_UserAnnotationFnAttr((v4 + 4 + *(v4 + 4)));
  v6 = (v5 - *v5);
  if (*v6 < 5u)
  {
    return 0;
  }

  v7 = v6[2];
  if (!v7)
  {
    return 0;
  }

  v8 = v5 + v7 + *(v5 + v7);
  v9 = MEMORY[0x1E696AEC0];

  return [v9 stringWithUTF8String:v8 + 4];
}

void MTLComputeReflectionDeserializerAIR::~MTLComputeReflectionDeserializerAIR(MTLComputeReflectionDeserializerAIR *this)
{
  MTLInputStageReflectionDeserializer::~MTLInputStageReflectionDeserializer(this);

  JUMPOUT(0x1865FF210);
}

void MTLComputeReflectionReader::~MTLComputeReflectionReader(MTLComputeReflectionReader *this)
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

{
  *this = &unk_1EF474F98;
  v2 = *(this + 1);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *(this + 1) = 0;
}

void LibraryWithFile::~LibraryWithFile(LibraryWithFile *this)
{
  LibraryWithFile::~LibraryWithFile(this);

  JUMPOUT(0x1865FF210);
}

{
  *this = &unk_1EF476ED0;
  v2 = *(this + 81);
  if (v2)
  {
    fileno(v2);
    change_fdguard_np();
    v2 = *(this + 81);
  }

  fclose(v2);
  *(this + 81) = 0;
  MTLLibraryDataWithArchive::~MTLLibraryDataWithArchive(this);
}

uint64_t ___ZN19FunctionHashFactory17shouldLogHashKeysEv_block_invoke()
{
  result = _MTLIsInternalBuild();
  if (result)
  {
    v1 = getenv("MTL_DEBUG_LOG_CACHE_KEYS");
    if (!v1)
    {
      v1 = "0";
    }

    result = strtol(v1, 0, 0);
    v2 = result != 0;
  }

  else
  {
    v2 = 0;
  }

  FunctionHashFactory::shouldLogHashKeys(void)::shouldLogHashKeys = v2;
  return result;
}

void bufferTypeMap(void)::$_0::operator()(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v1 = *MEMORY[0x1E69E9840];
  operator new();
}

void sub_185BDAB30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50, uint64_t a51, uint64_t a52, int a53, __int16 a54, char a55, char a56, uint64_t a57, uint64_t a58, int a59, __int16 a60, char a61, char a62, uint64_t a63)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  if (a38 < 0)
  {
    operator delete(a33);
  }

  if (a44 < 0)
  {
    operator delete(a39);
  }

  if (a50 < 0)
  {
    operator delete(a45);
  }

  if (a56 < 0)
  {
    operator delete(v81[3]);
  }

  if (a62 < 0)
  {
    operator delete(v81[6]);
  }

  if (a68 < 0)
  {
    operator delete(v81[9]);
  }

  if (a72 < 0)
  {
    operator delete(v81[12]);
  }

  if (a73 < 0)
  {
    operator delete(v81[15]);
  }

  if (a74 < 0)
  {
    operator delete(v81[18]);
  }

  if (a75 < 0)
  {
    operator delete(v81[21]);
  }

  if (a76 < 0)
  {
    operator delete(v81[24]);
  }

  if (a77 < 0)
  {
    operator delete(v81[27]);
  }

  if (a78 < 0)
  {
    operator delete(v81[30]);
  }

  if (a79 < 0)
  {
    operator delete(*v88);
  }

  if (a80 < 0)
  {
    operator delete(v88[3]);
  }

  if (a81 < 0)
  {
    operator delete(v88[6]);
  }

  if (SLOBYTE(STACK[0x20F]) < 0)
  {
    operator delete(v88[9]);
  }

  if (SLOBYTE(STACK[0x227]) < 0)
  {
    operator delete(v88[12]);
  }

  if (SLOBYTE(STACK[0x23F]) < 0)
  {
    operator delete(v88[15]);
  }

  if (SLOBYTE(STACK[0x257]) < 0)
  {
    operator delete(v88[18]);
  }

  if (SLOBYTE(STACK[0x26F]) < 0)
  {
    operator delete(v88[21]);
  }

  if (SLOBYTE(STACK[0x287]) < 0)
  {
    operator delete(v88[24]);
  }

  if (SLOBYTE(STACK[0x29F]) < 0)
  {
    operator delete(v88[27]);
  }

  if (SLOBYTE(STACK[0x2B7]) < 0)
  {
    operator delete(v88[30]);
  }

  if (SLOBYTE(STACK[0x2CF]) < 0)
  {
    operator delete(*v85);
  }

  if (SLOBYTE(STACK[0x2E7]) < 0)
  {
    operator delete(v85[3]);
  }

  if (SLOBYTE(STACK[0x2FF]) < 0)
  {
    operator delete(v85[6]);
  }

  if (SLOBYTE(STACK[0x317]) < 0)
  {
    operator delete(v85[9]);
  }

  if (SLOBYTE(STACK[0x32F]) < 0)
  {
    operator delete(v85[12]);
  }

  if (SLOBYTE(STACK[0x347]) < 0)
  {
    operator delete(v85[15]);
  }

  if (SLOBYTE(STACK[0x35F]) < 0)
  {
    operator delete(v85[18]);
  }

  if (SLOBYTE(STACK[0x377]) < 0)
  {
    operator delete(v85[21]);
  }

  if (SLOBYTE(STACK[0x38F]) < 0)
  {
    operator delete(v85[24]);
  }

  if (SLOBYTE(STACK[0x3A7]) < 0)
  {
    operator delete(v85[27]);
  }

  if (SLOBYTE(STACK[0x3BF]) < 0)
  {
    operator delete(v85[30]);
  }

  if (SLOBYTE(STACK[0x3D7]) < 0)
  {
    operator delete(*v87);
  }

  if (SLOBYTE(STACK[0x3EF]) < 0)
  {
    operator delete(v87[3]);
  }

  if (SLOBYTE(STACK[0x407]) < 0)
  {
    operator delete(v87[6]);
  }

  if (SLOBYTE(STACK[0x41F]) < 0)
  {
    operator delete(v87[9]);
  }

  if (SLOBYTE(STACK[0x437]) < 0)
  {
    operator delete(v87[12]);
  }

  if (SLOBYTE(STACK[0x44F]) < 0)
  {
    operator delete(v87[15]);
  }

  if (SLOBYTE(STACK[0x467]) < 0)
  {
    operator delete(v87[18]);
  }

  if (SLOBYTE(STACK[0x47F]) < 0)
  {
    operator delete(v87[21]);
  }

  if (SLOBYTE(STACK[0x497]) < 0)
  {
    operator delete(v87[24]);
  }

  if (SLOBYTE(STACK[0x4AF]) < 0)
  {
    operator delete(v87[27]);
  }

  if (SLOBYTE(STACK[0x4C7]) < 0)
  {
    operator delete(v87[30]);
  }

  if (SLOBYTE(STACK[0x4DF]) < 0)
  {
    operator delete(*v86);
  }

  if (SLOBYTE(STACK[0x4F7]) < 0)
  {
    operator delete(v86[3]);
  }

  if (SLOBYTE(STACK[0x50F]) < 0)
  {
    operator delete(v86[6]);
  }

  if (SLOBYTE(STACK[0x527]) < 0)
  {
    operator delete(v86[9]);
  }

  if (SLOBYTE(STACK[0x53F]) < 0)
  {
    operator delete(v86[12]);
  }

  if (SLOBYTE(STACK[0x557]) < 0)
  {
    operator delete(v86[15]);
  }

  if (SLOBYTE(STACK[0x56F]) < 0)
  {
    operator delete(v86[18]);
  }

  if (SLOBYTE(STACK[0x587]) < 0)
  {
    operator delete(v86[21]);
  }

  if (SLOBYTE(STACK[0x59F]) < 0)
  {
    operator delete(v86[24]);
  }

  if (SLOBYTE(STACK[0x5B7]) < 0)
  {
    operator delete(v86[27]);
  }

  if (SLOBYTE(STACK[0x5CF]) < 0)
  {
    operator delete(v86[30]);
  }

  if (SLOBYTE(STACK[0x5E7]) < 0)
  {
    operator delete(*v83);
  }

  if (SLOBYTE(STACK[0x5FF]) < 0)
  {
    operator delete(v83[3]);
  }

  if (SLOBYTE(STACK[0x617]) < 0)
  {
    operator delete(v83[6]);
  }

  if (SLOBYTE(STACK[0x62F]) < 0)
  {
    operator delete(v83[9]);
  }

  if (SLOBYTE(STACK[0x647]) < 0)
  {
    operator delete(v83[12]);
  }

  if (SLOBYTE(STACK[0x65F]) < 0)
  {
    operator delete(v83[15]);
  }

  if (SLOBYTE(STACK[0x677]) < 0)
  {
    operator delete(v83[18]);
  }

  if (SLOBYTE(STACK[0x68F]) < 0)
  {
    operator delete(v83[21]);
  }

  if (SLOBYTE(STACK[0x6A7]) < 0)
  {
    operator delete(v83[24]);
  }

  if (SLOBYTE(STACK[0x6BF]) < 0)
  {
    operator delete(v83[27]);
  }

  if (SLOBYTE(STACK[0x6D7]) < 0)
  {
    operator delete(v83[30]);
  }

  if (SLOBYTE(STACK[0x6EF]) < 0)
  {
    operator delete(STACK[0x6D8]);
  }

  if (SLOBYTE(STACK[0x707]) < 0)
  {
    operator delete(STACK[0x6F0]);
  }

  if (SLOBYTE(STACK[0x71F]) < 0)
  {
    operator delete(STACK[0x708]);
  }

  if (SLOBYTE(STACK[0x737]) < 0)
  {
    operator delete(STACK[0x720]);
  }

  if (SLOBYTE(STACK[0x74F]) < 0)
  {
    operator delete(STACK[0x738]);
  }

  if (SLOBYTE(STACK[0x767]) < 0)
  {
    operator delete(STACK[0x750]);
  }

  if (SLOBYTE(STACK[0x77F]) < 0)
  {
    operator delete(STACK[0x768]);
  }

  if (SLOBYTE(STACK[0x797]) < 0)
  {
    operator delete(STACK[0x780]);
  }

  if (SLOBYTE(STACK[0x7AF]) < 0)
  {
    operator delete(STACK[0x798]);
  }

  if (SLOBYTE(STACK[0x7C7]) < 0)
  {
    operator delete(STACK[0x7B0]);
  }

  if (SLOBYTE(STACK[0x7DF]) < 0)
  {
    operator delete(STACK[0x7C8]);
  }

  if (SLOBYTE(STACK[0x7F7]) < 0)
  {
    operator delete(STACK[0x7E0]);
  }

  if (SLOBYTE(STACK[0x80F]) < 0)
  {
    operator delete(STACK[0x7F8]);
  }

  if (SLOBYTE(STACK[0x827]) < 0)
  {
    operator delete(STACK[0x810]);
  }

  if (SLOBYTE(STACK[0x83F]) < 0)
  {
    operator delete(STACK[0x828]);
  }

  if (SLOBYTE(STACK[0x857]) < 0)
  {
    operator delete(STACK[0x840]);
  }

  if (SLOBYTE(STACK[0x86F]) < 0)
  {
    operator delete(STACK[0x858]);
  }

  if (SLOBYTE(STACK[0x887]) < 0)
  {
    operator delete(STACK[0x870]);
  }

  if (SLOBYTE(STACK[0x89F]) < 0)
  {
    operator delete(STACK[0x888]);
  }

  if (SLOBYTE(STACK[0x8B7]) < 0)
  {
    operator delete(STACK[0x8A0]);
  }

  if (SLOBYTE(STACK[0x8CF]) < 0)
  {
    operator delete(STACK[0x8B8]);
  }

  if (SLOBYTE(STACK[0x8E7]) < 0)
  {
    operator delete(STACK[0x8D0]);
  }

  if (SLOBYTE(STACK[0x8FF]) < 0)
  {
    operator delete(STACK[0x8E8]);
  }

  if (SLOBYTE(STACK[0x917]) < 0)
  {
    operator delete(STACK[0x900]);
  }

  if (SLOBYTE(STACK[0x92F]) < 0)
  {
    operator delete(STACK[0x918]);
  }

  if (SLOBYTE(STACK[0x947]) < 0)
  {
    operator delete(STACK[0x930]);
  }

  if (SLOBYTE(STACK[0x95F]) < 0)
  {
    operator delete(STACK[0x948]);
  }

  if (SLOBYTE(STACK[0x977]) < 0)
  {
    operator delete(STACK[0x960]);
  }

  if (SLOBYTE(STACK[0x98F]) < 0)
  {
    operator delete(STACK[0x978]);
  }

  if (SLOBYTE(STACK[0x9A7]) < 0)
  {
    operator delete(STACK[0x990]);
  }

  if (SLOBYTE(STACK[0x9BF]) < 0)
  {
    operator delete(STACK[0x9A8]);
  }

  if (SLOBYTE(STACK[0x9D7]) < 0)
  {
    operator delete(STACK[0x9C0]);
  }

  if (SLOBYTE(STACK[0x9EF]) < 0)
  {
    operator delete(STACK[0x9D8]);
  }

  if (SLOBYTE(STACK[0xA07]) < 0)
  {
    operator delete(STACK[0x9F0]);
  }

  if (SLOBYTE(STACK[0xA1F]) < 0)
  {
    operator delete(STACK[0xA08]);
  }

  if (SLOBYTE(STACK[0xA37]) < 0)
  {
    operator delete(STACK[0xA20]);
  }

  if (SLOBYTE(STACK[0xA4F]) < 0)
  {
    operator delete(STACK[0xA38]);
  }

  if (SLOBYTE(STACK[0xA67]) < 0)
  {
    operator delete(STACK[0xA50]);
  }

  if (SLOBYTE(STACK[0xA7F]) < 0)
  {
    operator delete(STACK[0xA68]);
  }

  if (SLOBYTE(STACK[0xA97]) < 0)
  {
    operator delete(STACK[0xA80]);
  }

  if (SLOBYTE(STACK[0xAAF]) < 0)
  {
    operator delete(STACK[0xA98]);
  }

  if (SLOBYTE(STACK[0xAC7]) < 0)
  {
    operator delete(STACK[0xAB0]);
  }

  if (SLOBYTE(STACK[0xADF]) < 0)
  {
    operator delete(STACK[0xAC8]);
  }

  if (SLOBYTE(STACK[0xAF7]) < 0)
  {
    operator delete(STACK[0xAE0]);
  }

  if (SLOBYTE(STACK[0xB0F]) < 0)
  {
    operator delete(STACK[0xAF8]);
  }

  if (SLOBYTE(STACK[0xB27]) < 0)
  {
    operator delete(STACK[0xB10]);
  }

  if (SLOBYTE(STACK[0xB3F]) < 0)
  {
    operator delete(STACK[0xB28]);
  }

  if (SLOBYTE(STACK[0xB57]) < 0)
  {
    operator delete(STACK[0xB40]);
  }

  if (SLOBYTE(STACK[0xB6F]) < 0)
  {
    operator delete(STACK[0xB58]);
  }

  if (SLOBYTE(STACK[0xB87]) < 0)
  {
    operator delete(STACK[0xB70]);
  }

  if (SLOBYTE(STACK[0xB9F]) < 0)
  {
    operator delete(STACK[0xB88]);
  }

  if (SLOBYTE(STACK[0xBB7]) < 0)
  {
    operator delete(STACK[0xBA0]);
  }

  if (SLOBYTE(STACK[0xBCF]) < 0)
  {
    operator delete(STACK[0xBB8]);
  }

  if (SLOBYTE(STACK[0xBE7]) < 0)
  {
    operator delete(STACK[0xBD0]);
  }

  if (SLOBYTE(STACK[0xBFF]) < 0)
  {
    operator delete(STACK[0xBE8]);
  }

  if (SLOBYTE(STACK[0xC17]) < 0)
  {
    operator delete(STACK[0xC00]);
  }

  if (SLOBYTE(STACK[0xC2F]) < 0)
  {
    operator delete(STACK[0xC18]);
  }

  if (SLOBYTE(STACK[0xC47]) < 0)
  {
    operator delete(STACK[0xC30]);
  }

  if (SLOBYTE(STACK[0xC5F]) < 0)
  {
    operator delete(STACK[0xC48]);
  }

  if (SLOBYTE(STACK[0xC77]) < 0)
  {
    operator delete(STACK[0xC60]);
  }

  if (SLOBYTE(STACK[0xC8F]) < 0)
  {
    operator delete(STACK[0xC78]);
  }

  if (SLOBYTE(STACK[0xCA7]) < 0)
  {
    operator delete(STACK[0xC90]);
  }

  if (SLOBYTE(STACK[0xCBF]) < 0)
  {
    operator delete(STACK[0xCA8]);
  }

  if (SLOBYTE(STACK[0xCD7]) < 0)
  {
    operator delete(STACK[0xCC0]);
  }

  if (SLOBYTE(STACK[0xCEF]) < 0)
  {
    operator delete(STACK[0xCD8]);
  }

  if (SLOBYTE(STACK[0xD07]) < 0)
  {
    operator delete(STACK[0xCF0]);
  }

  if (SLOBYTE(STACK[0xD1F]) < 0)
  {
    operator delete(STACK[0xD08]);
  }

  if (SLOBYTE(STACK[0xD37]) < 0)
  {
    operator delete(STACK[0xD20]);
  }

  if (SLOBYTE(STACK[0xD4F]) < 0)
  {
    operator delete(STACK[0xD38]);
  }

  if (SLOBYTE(STACK[0xD67]) < 0)
  {
    operator delete(STACK[0xD50]);
  }

  if (SLOBYTE(STACK[0xD7F]) < 0)
  {
    operator delete(STACK[0xD68]);
  }

  if (SLOBYTE(STACK[0xD97]) < 0)
  {
    operator delete(STACK[0xD80]);
  }

  if (SLOBYTE(STACK[0xDAF]) < 0)
  {
    operator delete(STACK[0xD98]);
  }

  if (SLOBYTE(STACK[0xDC7]) < 0)
  {
    operator delete(STACK[0xDB0]);
  }

  if (SLOBYTE(STACK[0xDDF]) < 0)
  {
    operator delete(STACK[0xDC8]);
  }

  if (SLOBYTE(STACK[0xDF7]) < 0)
  {
    operator delete(STACK[0xDE0]);
  }

  if (SLOBYTE(STACK[0xE0F]) < 0)
  {
    operator delete(STACK[0xDF8]);
  }

  if (SLOBYTE(STACK[0xE27]) < 0)
  {
    operator delete(STACK[0xE10]);
  }

  if (SLOBYTE(STACK[0xE3F]) < 0)
  {
    operator delete(STACK[0xE28]);
  }

  if (SLOBYTE(STACK[0xE57]) < 0)
  {
    operator delete(STACK[0xE40]);
  }

  if (SLOBYTE(STACK[0xE6F]) < 0)
  {
    operator delete(STACK[0xE58]);
  }

  if (SLOBYTE(STACK[0xE87]) < 0)
  {
    operator delete(STACK[0xE70]);
  }

  if (SLOBYTE(STACK[0xE9F]) < 0)
  {
    operator delete(STACK[0xE88]);
  }

  if (SLOBYTE(STACK[0xEB7]) < 0)
  {
    operator delete(STACK[0xEA0]);
  }

  if (SLOBYTE(STACK[0xECF]) < 0)
  {
    operator delete(STACK[0xEB8]);
  }

  if (SLOBYTE(STACK[0xEE7]) < 0)
  {
    operator delete(STACK[0xED0]);
  }

  if (SLOBYTE(STACK[0xEFF]) < 0)
  {
    operator delete(STACK[0xEE8]);
  }

  if (SLOBYTE(STACK[0xF17]) < 0)
  {
    operator delete(STACK[0xF00]);
  }

  if (SLOBYTE(STACK[0xF2F]) < 0)
  {
    operator delete(STACK[0xF18]);
  }

  if (SLOBYTE(STACK[0xF47]) < 0)
  {
    operator delete(STACK[0xF30]);
  }

  if (SLOBYTE(STACK[0xF5F]) < 0)
  {
    operator delete(STACK[0xF48]);
  }

  if (SLOBYTE(STACK[0xF77]) < 0)
  {
    operator delete(STACK[0xF60]);
  }

  if (SLOBYTE(STACK[0xF8F]) < 0)
  {
    operator delete(STACK[0xF78]);
  }

  if (SLOBYTE(STACK[0xFA7]) < 0)
  {
    operator delete(STACK[0xF90]);
  }

  if (SLOBYTE(STACK[0xFBF]) < 0)
  {
    operator delete(STACK[0xFA8]);
  }

  if (SLOBYTE(STACK[0xFD7]) < 0)
  {
    operator delete(STACK[0xFC0]);
  }

  if (SLOBYTE(STACK[0xFEF]) < 0)
  {
    operator delete(STACK[0xFD8]);
  }

  if (SLOBYTE(STACK[0x1007]) < 0)
  {
    operator delete(STACK[0xFF0]);
  }

  if (SLOBYTE(STACK[0x101F]) < 0)
  {
    operator delete(STACK[0x1008]);
  }

  if (*(v84 + 23) < 0)
  {
    operator delete(*v84);
  }

  if (*(v84 + 47) < 0)
  {
    operator delete(*(v84 + 24));
  }

  while (v82 != &STACK[0x1050])
  {
    v89 = *(v82 - 17);
    v82 -= 5;
    if (v89 < 0)
    {
      operator delete(*v82);
    }
  }

  MEMORY[0x1865FF210](a10, 0x1020C4062D53EE8);
  _Unwind_Resume(a1);
}

uint64_t std::__tree<std::__value_type<std::string,TokenData>,std::__map_value_compare<std::string,std::__value_type<std::string,TokenData>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,TokenData>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,TokenData> const&>(void *a1, uint64_t a2, const void **a3)
{
  result = *std::__tree<std::__value_type<std::string,MTLConstantStorage::ConstantData>,std::__map_value_compare<std::string,std::__value_type<std::string,MTLConstantStorage::ConstantData>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MTLConstantStorage::ConstantData>>>::__find_equal<std::string>(a1, a2, &v5, &v4, a3);
  if (!result)
  {
    std::__tree<std::__value_type<std::string,TokenData>,std::__map_value_compare<std::string,std::__value_type<std::string,TokenData>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,TokenData>>>::__construct_node<std::pair<std::string const,TokenData> const&>();
  }

  return result;
}

void *std::map<std::string,TokenData>::map[abi:ne200100](void *a1, const void **a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = (a1 + 1);
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a3)
  {
    v6 = 40 * a3;
    do
    {
      std::__tree<std::__value_type<std::string,TokenData>,std::__map_value_compare<std::string,std::__value_type<std::string,TokenData>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,TokenData>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,TokenData> const&>(a1, v4, a2);
      a2 += 5;
      v6 -= 40;
    }

    while (v6);
  }

  return a1;
}

void sub_185BDC45C(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,TextureTokenData>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void sub_185BDCC00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, uint64_t a46, uint64_t a47, int a48, __int16 a49, char a50, char a51, uint64_t a52, uint64_t a53, uint64_t a54, int a55, __int16 a56, char a57, char a58, uint64_t a59, uint64_t a60, uint64_t a61, int a62, __int16 a63)
{
  v83 = -1024;
  v84 = v80;
  do
  {
    v84 = std::pair<std::string const,std::tuple<Air::PixelFormat,std::string,MTLCompilerDataType>>::~pair(v84) - 64;
    v83 += 64;
  }

  while (v83);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  if (a44 < 0)
  {
    operator delete(v81[1]);
  }

  if (a51 < 0)
  {
    operator delete(v81[5]);
  }

  if (a58 < 0)
  {
    operator delete(v81[9]);
  }

  if (a65 < 0)
  {
    operator delete(v81[13]);
  }

  if (a72 < 0)
  {
    operator delete(v81[17]);
  }

  if (a73 < 0)
  {
    operator delete(v81[21]);
  }

  if (a74 < 0)
  {
    operator delete(v81[25]);
  }

  if (a75 < 0)
  {
    operator delete(v81[29]);
  }

  if (a76 < 0)
  {
    operator delete(v81[33]);
  }

  if (a77 < 0)
  {
    operator delete(v81[37]);
  }

  if (a78 < 0)
  {
    operator delete(v81[41]);
  }

  if (SLOBYTE(STACK[0x207]) < 0)
  {
    operator delete(v81[45]);
  }

  if (SLOBYTE(STACK[0x227]) < 0)
  {
    operator delete(v81[49]);
  }

  if (SLOBYTE(STACK[0x247]) < 0)
  {
    operator delete(v81[53]);
  }

  if (SLOBYTE(STACK[0x267]) < 0)
  {
    operator delete(v81[57]);
  }

  if (SLOBYTE(STACK[0x287]) < 0)
  {
    operator delete(v81[61]);
  }

  if (SLOBYTE(STACK[0x2A7]) < 0)
  {
    operator delete(v81[65]);
  }

  if (SLOBYTE(STACK[0x2C7]) < 0)
  {
    operator delete(v81[69]);
  }

  if (SLOBYTE(STACK[0x2E7]) < 0)
  {
    operator delete(v81[73]);
  }

  if (SLOBYTE(STACK[0x307]) < 0)
  {
    operator delete(v81[77]);
  }

  if (SLOBYTE(STACK[0x327]) < 0)
  {
    operator delete(v81[81]);
  }

  if (SLOBYTE(STACK[0x347]) < 0)
  {
    operator delete(v81[85]);
  }

  if (SLOBYTE(STACK[0x367]) < 0)
  {
    operator delete(v81[89]);
  }

  if (SLOBYTE(STACK[0x387]) < 0)
  {
    operator delete(v81[93]);
  }

  if (SLOBYTE(STACK[0x3A7]) < 0)
  {
    operator delete(v81[97]);
  }

  if (SLOBYTE(STACK[0x3C7]) < 0)
  {
    operator delete(v81[101]);
  }

  if (SLOBYTE(STACK[0x3E7]) < 0)
  {
    operator delete(v81[105]);
  }

  if (SLOBYTE(STACK[0x407]) < 0)
  {
    operator delete(v81[109]);
  }

  MEMORY[0x1865FF210](v79, v78);
  _Unwind_Resume(a1);
}

std::string *std::pair<std::string const,std::tuple<Air::PixelFormat,std::string,MTLCompilerDataType>>::pair[abi:ne200100]<true,0>(std::string *this, __int128 *a2, uint64_t a3)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v5;
  }

  std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul>,Air::PixelFormat,std::string,MTLCompilerDataType>::__tuple_impl(&this[1], a3);
  return this;
}

void sub_185BDD08C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_DWORD *std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul>,Air::PixelFormat,std::string,MTLCompilerDataType>::__tuple_impl(_DWORD *a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = (a1 + 2);
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v5 = *(a2 + 8);
    v4->__r_.__value_.__r.__words[2] = *(a2 + 24);
    *&v4->__r_.__value_.__l.__data_ = v5;
  }

  a1[8] = *(a2 + 32);
  return a1;
}

uint64_t std::__tree<std::__value_type<std::string,std::tuple<Air::PixelFormat,std::string,MTLCompilerDataType>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::tuple<Air::PixelFormat,std::string,MTLCompilerDataType>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::tuple<Air::PixelFormat,std::string,MTLCompilerDataType>>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,std::tuple<Air::PixelFormat,std::string,MTLCompilerDataType>> const&>(void *a1, uint64_t a2, const void **a3)
{
  v3 = *std::__tree<std::__value_type<std::string,MTLConstantStorage::ConstantData>,std::__map_value_compare<std::string,std::__value_type<std::string,MTLConstantStorage::ConstantData>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MTLConstantStorage::ConstantData>>>::__find_equal<std::string>(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    std::__tree<std::__value_type<std::string,std::tuple<Air::PixelFormat,std::string,MTLCompilerDataType>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::tuple<Air::PixelFormat,std::string,MTLCompilerDataType>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::tuple<Air::PixelFormat,std::string,MTLCompilerDataType>>>>::__construct_node<std::pair<std::string const,std::tuple<Air::PixelFormat,std::string,MTLCompilerDataType>> const&>();
  }

  return v3;
}

void *std::map<std::string,std::tuple<Air::PixelFormat,std::string,MTLCompilerDataType>>::map[abi:ne200100](void *a1, const void **a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = (a1 + 1);
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a3)
  {
    v6 = a3 << 6;
    do
    {
      std::__tree<std::__value_type<std::string,std::tuple<Air::PixelFormat,std::string,MTLCompilerDataType>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::tuple<Air::PixelFormat,std::string,MTLCompilerDataType>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::tuple<Air::PixelFormat,std::string,MTLCompilerDataType>>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,std::tuple<Air::PixelFormat,std::string,MTLCompilerDataType>> const&>(a1, v4, a2);
      a2 += 8;
      v6 -= 64;
    }

    while (v6);
  }

  return a1;
}

std::string *std::pair<std::string const,std::tuple<Air::PixelFormat,std::string,MTLCompilerDataType>>::pair[abi:ne200100](std::string *this, __int128 *a2)
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

  std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul>,Air::PixelFormat,std::string,MTLCompilerDataType>::__tuple_impl(&this[1], a2 + 24);
  return this;
}

void sub_185BDD2EC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::tuple<Air::PixelFormat,std::string,MTLCompilerDataType>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::tuple<Air::PixelFormat,std::string,MTLCompilerDataType>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::tuple<Air::PixelFormat,std::string,MTLCompilerDataType>>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

void sub_185BDD9A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46, uint64_t a47, uint64_t a48, int a49, __int16 a50, char a51, char a52, uint64_t a53, uint64_t a54, int a55, __int16 a56, char a57, char a58, uint64_t a59, uint64_t a60, int a61, __int16 a62, char a63)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a34 < 0)
  {
    operator delete(a29);
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  if (a46 < 0)
  {
    operator delete(a41);
  }

  if (a52 < 0)
  {
    operator delete(v81[3]);
  }

  if (a58 < 0)
  {
    operator delete(v81[6]);
  }

  if (a64 < 0)
  {
    operator delete(v81[9]);
  }

  if (a70 < 0)
  {
    operator delete(v81[12]);
  }

  if (a72 < 0)
  {
    operator delete(v81[15]);
  }

  if (a73 < 0)
  {
    operator delete(v81[18]);
  }

  if (a74 < 0)
  {
    operator delete(v81[21]);
  }

  if (a75 < 0)
  {
    operator delete(v81[24]);
  }

  if (a76 < 0)
  {
    operator delete(v81[27]);
  }

  if (a77 < 0)
  {
    operator delete(v81[30]);
  }

  while (v80 != &a78)
  {
    v83 = *(v80 - 9);
    v80 -= 4;
    if (v83 < 0)
    {
      operator delete(*v80);
    }
  }

  MEMORY[0x1865FF210](v79, v78);
  _Unwind_Resume(a1);
}

uint64_t std::__tree<std::__value_type<std::string,TextureTokenData>,std::__map_value_compare<std::string,std::__value_type<std::string,TextureTokenData>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,TextureTokenData>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,TextureTokenData> const&>(void *a1, uint64_t a2, const void **a3)
{
  result = *std::__tree<std::__value_type<std::string,MTLConstantStorage::ConstantData>,std::__map_value_compare<std::string,std::__value_type<std::string,MTLConstantStorage::ConstantData>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MTLConstantStorage::ConstantData>>>::__find_equal<std::string>(a1, a2, &v5, &v4, a3);
  if (!result)
  {
    std::__tree<std::__value_type<std::string,TextureTokenData>,std::__map_value_compare<std::string,std::__value_type<std::string,TextureTokenData>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,TextureTokenData>>>::__construct_node<std::pair<std::string const,TextureTokenData> const&>();
  }

  return result;
}

void *std::map<std::string,TextureTokenData>::map[abi:ne200100](void *a1, const void **a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = (a1 + 1);
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a3)
  {
    v6 = 32 * a3;
    do
    {
      std::__tree<std::__value_type<std::string,TextureTokenData>,std::__map_value_compare<std::string,std::__value_type<std::string,TextureTokenData>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,TextureTokenData>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,TextureTokenData> const&>(a1, v4, a2);
      a2 += 4;
      v6 -= 32;
    }

    while (v6);
  }

  return a1;
}

void sub_185BDDDC8(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,TextureTokenData>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t AirReflection::Node::node_as_InstanceIDArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 270338) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

void MTLInputStageReflectionDeserializer::deserialize(uint64_t a1, void *a2, dispatch_data_t data)
{
  if (data)
  {
    size_ptr = 0;
    buffer_ptr = 0;
    v5 = dispatch_data_create_map(data, &buffer_ptr, &size_ptr);
    *(a1 + 144) = 0;
    *(a1 + 152) = 0;
    *(a1 + 160) = 0;
    *(a1 + 167) = 0;
    v6 = *(a1 + 104);
    v8 = size_ptr;
    v7 = buffer_ptr;
    v58 = buffer_ptr;
    v59 = size_ptr;
    v60 = 0;
    *(a1 + 112) = 0;
    if (v8 >= 8 && *v7 == 0x4E494253504C544DLL)
    {
      v60 = 8;
      if ((v8 & 0xFFFFFFFFFFFFFFFCLL) == 8)
      {
        goto LABEL_69;
      }

      v52 = v7[2];
      v10 = 12;
      v60 = 12;
      *(a1 + 112) = v52;
      v9 = v52 > 0x20000;
    }

    else
    {
      v9 = 0;
      v10 = 0;
    }

    v11 = v8 - v10;
    if (v8 <= v10 || v11 <= 3)
    {
LABEL_69:
      abort();
    }

    v12 = v7[v10 / 4];
    v13 = v10 + 4;
    v60 = v13;
    *(a1 + 176) = v12;
    if (v12)
    {
      v14 = v11 - 4;
      while (v13 < v8 && v14 > 3)
      {
        v15 = *(v7 + v13);
        v13 += 4;
        v60 = v13;
        *(a1 + 144 + v15) = 1;
        v14 -= 4;
        if (!--v12)
        {
          goto LABEL_12;
        }
      }

      goto LABEL_69;
    }

LABEL_12:
    if (v9)
    {
      *(a1 + 40) = DeserialContext::stringFromSerializedData(&v58);
    }

    v16 = (v6 >> 1) & 1;
    deserializeArgumentsWithDeserializer(a2, a1, &v58, v16);
    v18 = v59;
    v17 = v60;
    if (v59 <= v60)
    {
      goto LABEL_69;
    }

    if (v59 - v60 <= 3)
    {
      goto LABEL_69;
    }

    v19 = v58;
    v20 = *&v58[v60];
    v60 += 4;
    *(a1 + 128) = v20;
    if (v18 <= v17 + 4)
    {
      goto LABEL_69;
    }

    if (v18 - (v17 + 4) <= 3)
    {
      goto LABEL_69;
    }

    v21 = *(a1 + 104);
    v22 = *&v19[v17 + 4];
    v60 = v17 + 8;
    v31 = v18 > v17 + 8;
    v23 = v18 - (v17 + 8);
    if (!v31 || v23 <= 3)
    {
      goto LABEL_69;
    }

    v24 = *&v19[v17 + 8];
    v25 = v17 + 12;
    v60 = v25;
    if ((v21 & 0x80000) != 0)
    {
      v26 = v24;
    }

    else
    {
      v26 = 0;
    }

    if (v26)
    {
      v54 = v21;
      v55 = v22;
      v56 = v16;
      v57 = a2;
      v53 = v26;
      v27 = 8 * v26;
      v28 = 0;
      *(a1 + 136) = malloc_type_malloc(v27, 0x80040B8603338uLL);
      do
      {
        v29 = DeserialContext::stringFromSerializedData(&v58);
        v30 = v60;
        v31 = v59 > v60 && v59 - v60 > 3;
        if (!v31)
        {
          goto LABEL_69;
        }

        v32 = *&v58[v60];
        v60 += 4;
        if (v59 <= v30 + 4 || v59 - (v30 + 4) <= 3)
        {
          goto LABEL_69;
        }

        v34 = *&v58[v30 + 4];
        v60 = v30 + 8;
        if (v59 <= v30 + 8 || v59 - (v30 + 8) <= 3)
        {
          goto LABEL_69;
        }

        v36 = v29;
        v37 = *&v58[v30 + 8];
        v60 = v30 + 12;
        v38 = DeserialContext::stringFromSerializedData(&v58);
        if (v59 <= v60 || v59 - v60 <= 3)
        {
          goto LABEL_69;
        }

        v39 = *&v58[v60];
        v60 += 4;
        *(*(a1 + 136) + v28) = [[MTLPostVertexDumpOutput alloc] initWithAirMDType:v36 dataType:v32 pixelFormat:v34 aluType:v37 name:v38 offset:v39];
        v28 += 8;
      }

      while (v27 != v28);
      v25 = v60;
      a2 = v57;
      v22 = v55;
      LODWORD(v16) = v56;
      v26 = v53;
      LODWORD(v21) = v54;
    }

    if ((v21 & 0x80000) != 0 && v25 != v22)
    {
      goto LABEL_69;
    }

    v60 = v22;
    v40 = v59;
    v42 = v59 - v22;
    v41 = v59 > v22;
    if (v59 < v22)
    {
      goto LABEL_69;
    }

    *(a1 + 132) = v26;
    if (!v41 || v42 <= 3)
    {
      goto LABEL_69;
    }

    v43 = v58;
    v44 = *&v58[v22];
    v45 = v22 + 4;
    v60 = v22 + 4;
    *(a1 + 48) = v44;
    v46 = *(a1 + 112);
    if (v46 >= 0x10000)
    {
      v31 = v40 > v45;
      v47 = v40 - v45;
      if (!v31 || v47 <= 3)
      {
        goto LABEL_69;
      }

      v48 = *&v43[v45];
      v60 = v22 + 8;
      if (v48)
      {
        v49 = objc_alloc(MEMORY[0x1E695DEF0]);
        v50 = v60;
        if (v60 >= v59)
        {
          goto LABEL_69;
        }

        v60 += v48;
        if (v50 + v48 > v59)
        {
          goto LABEL_69;
        }

        v51 = [v49 initWithBytes:&v58[v50] length:v48];
        v46 = *(a1 + 112);
      }

      else
      {
        v51 = 0;
      }

      *(a1 + 56) = v51;
      if (v46 >= 0x20000)
      {
        deserializeGlobalBindingsWithDeserializer(a2, a1, &v58, v16);
      }
    }

    if (v60 != size_ptr || v59 < size_ptr)
    {
      goto LABEL_69;
    }

    dispatch_release(v5);
  }

  else
  {
    *(a1 + 48) = -1;
  }
}

uint64_t DeserialContext::stringFromSerializedData(DeserialContext *this)
{
  v1 = *(this + 1);
  v2 = *(this + 2);
  v3 = v1 - v2;
  if (v1 <= v2 || (v5 = *this, v6 = strnlen((*this + v2), v1 - v2), v6 == v3))
  {
    abort();
  }

  v7 = v6;
  result = [MEMORY[0x1E696AEC0] stringWithCString:v5 + v2 encoding:4];
  *(this + 2) += v7 + 1;
  return result;
}

uint64_t deserializeArguments(void *a1, DeserialContext *this, int a3, void **a4, void *a5, unsigned int a6, uint64_t a7)
{
  v14 = DeserialContext::deserializeUint32(this);
  v15 = v14;
  if (v14)
  {
    v104 = a3;
    v121 = a1;
    v105 = v14;
    v106 = a5;
    v107 = a6;
    v16 = 8 * v14;
    v103 = v14;
    v17 = 0;
    *a4 = malloc_type_malloc(v16, 0x80040B8603338uLL);
    v108 = a4;
    v122 = a7;
    v123 = v16;
    while (2)
    {
      v18 = DeserialContext::stringFromSerializedData(this);
      v19 = DeserialContext::deserializeUint32(this);
      if ((v19 & 0xF) == 6)
      {
        v20 = 0;
        v21 = 1;
      }

      else
      {
        v20 = DeserialContext::deserializeUint32(this);
        v21 = DeserialContext::deserializeUint32(this);
      }

      v22 = v19 & 0x1F;
      v23 = (v19 >> 5) & 0xF;
      switch(v19 & 0x1F)
      {
        case 1u:
        case 2u:
        case 0xEu:
          v124 = v21;
          v113 = v18;
          v24 = DeserialContext::deserializeUint32(this);
          v25 = DeserialContext::deserializeUint32(this);
          v26 = DeserialContext::deserializeUint32(this);
          v27 = DeserialContext::deserializeUint32(this);
          v109 = DeserialContext::deserializeUint32(this);
          v111 = v26;
          if (v22 == 1 && [v121 minConstantBufferAlignmentBytes] >= v27)
          {
            v27 = [v121 minConstantBufferAlignmentBytes];
          }

          v28 = v25;
          v29 = (v19 >> 9) & 1;
          if (v22 == 14)
          {
            v30 = 22;
          }

          else
          {
            v30 = 0;
          }

          LOBYTE(v102) = v22 == 1;
          v31 = [[MTLBufferBindingInternal alloc] initWithName:v113 type:v30 access:v23 isActive:v29 locationIndex:v20 arraySize:v124 dataType:v24 pixelFormat:v28 aluType:v111 isConstantBuffer:v102 dataSize:v109 alignment:v27];
          a7 = v122;
          [(MTLBindingInternal *)v31 setIsArgument:v122];
          a4 = v108;
          *(*v108 + v17) = v31;
          goto LABEL_24;
        case 3u:
          v117 = (v19 >> 9) & 1;
          v128 = v21;
          v132 = v20;
          v68 = DeserialContext::deserializeUint32(this);
          DeserialContext::deserializeUint32(this);
          DeserialContext::deserializeUint32(this);
          v69 = v18;
          v70 = DeserialContext::deserializeUint32(this);
          v48 = [[MTLThreadgroupMemoryBindingInternal alloc] initWithName:v69 type:1 access:v23 isActive:v117 locationIndex:v132 arraySize:v128 dataType:v68 dataSize:DeserialContext::deserializeUint32(this) alignment:v70];
          goto LABEL_32;
        case 4u:
          v119 = (v19 >> 9) & 1;
          v130 = v21;
          v78 = a7;
          v79 = DeserialContext::deserializeUint32(this);
          v80 = DeserialContext::deserializeUint32(this);
          v81 = v20;
          v82 = v80;
          v83 = HIWORD(v80) & 1;
          v84 = [MTLTextureBindingInternal alloc];
          LOBYTE(v99) = v83;
          v85 = v79;
          a7 = v78;
          a4 = v108;
          v48 = [(MTLTextureBindingInternal *)v84 initWithName:v18 access:v23 isActive:v119 locationIndex:v81 arraySize:v130 dataType:v85 textureType:v82 isDepthTexture:v99];
          goto LABEL_32;
        case 5u:
          v32 = (v19 >> 9) & 1;
          v33 = v21;
          v34 = [MTLBindingInternal alloc];
          v35 = v18;
          v36 = 3;
          goto LABEL_31;
        case 6u:
          v133 = v20;
          v76 = (v19 >> 9) & 1;
          v77 = DeserialContext::deserializeUint32(this);
          v48 = [[MTLBuiltInArgument alloc] initWithName:v18 type:15 access:v23 active:v76 index:v133 dataType:v77 builtInType:DeserialContext::deserializeUint32(this)];
          goto LABEL_32;
        case 8u:
          v129 = (v19 >> 9) & 1;
          v118 = DeserialContext::deserializeUint32(this);
          v71 = DeserialContext::deserializeUint32(this);
          v72 = DeserialContext::deserializeUint32(this);
          v73 = v20;
          v74 = v18;
          v75 = DeserialContext::deserializeUint32(this);
          v100 = v72;
          a7 = v122;
          v98 = v71;
          v16 = v123;
          v48 = [[MTLIndirectConstantArgument alloc] initWithName:v74 type:4 access:v23 isActive:v129 locationIndex:v73 dataType:v118 pixelFormat:v98 aluType:v100 dataSize:DeserialContext::deserializeUint32(this) alignment:v75];
          goto LABEL_32;
        case 9u:
          v127 = (v19 >> 9) & 1;
          v55 = a7;
          v56 = v18;
          v116 = DeserialContext::deserializeUint32(this);
          v142[0] = 0;
          v141 = 1;
          v51 = structTypeFromSerializedContext(v121, this, v142, v106, &v141, v107);
          v57 = DeserialContext::deserializeUint32(this) != 0;
          v58 = DeserialContext::deserializeUint32(this);
          v59 = [MTLImageBlockDataArgument alloc];
          HIDWORD(v99) = v58;
          LOBYTE(v99) = v57;
          v60 = v56;
          a7 = v55;
          v53 = [(MTLImageBlockDataArgument *)v59 initWithName:v60 type:16 access:v23 isActive:v127 index:v20 dataSize:v116 masterStructMembers:v51 aliasImplicitImageBlock:v99 aliasImplicitImageBlockRenderTarget:?];
          [(MTLBindingInternal *)v53 setIsArgument:a7];
          v54 = v141;
          goto LABEL_21;
        case 0xAu:
          v126 = (v19 >> 9) & 1;
          v49 = v18;
          v115 = DeserialContext::deserializeUint32(this);
          v50 = DeserialContext::deserializeUint32(this);
          v140 = 0;
          v139 = 1;
          v51 = structTypeFromSerializedContext(v121, this, &v140, v106, &v139, v107);
          v52 = DeserialContext::deserializeUint32(this) != 0;
          HIDWORD(v101) = DeserialContext::deserializeUint32(this);
          LOBYTE(v101) = v52;
          a7 = v122;
          LODWORD(v97) = v50;
          v53 = [[MTLImageBlockArgument alloc] initWithName:v49 type:17 access:v23 isActive:v126 index:v20 kind:v115 dataSize:v97 masterStructMembers:v51 aliasImplicitImageBlock:v101 aliasImplicitImageBlockRenderTarget:?];
          [(MTLBindingInternal *)v53 setIsArgument:v122];
          v54 = v139;
LABEL_21:
          if (v54 == 1)
          {
          }

          *(*a4 + v17) = v53;
          goto LABEL_24;
        case 0xBu:
          v32 = (v19 >> 9) & 1;
          v33 = v21;
          v34 = [MTLBindingInternal alloc];
          v35 = v18;
          v36 = 20;
          goto LABEL_31;
        case 0xCu:
          v32 = (v19 >> 9) & 1;
          v33 = v21;
          v34 = [MTLBindingInternal alloc];
          v35 = v18;
          v36 = 19;
          goto LABEL_31;
        case 0xDu:
          v32 = (v19 >> 9) & 1;
          v33 = v21;
          v34 = [MTLBindingInternal alloc];
          v35 = v18;
          v36 = 21;
          goto LABEL_31;
        case 0x10u:
          v32 = (v19 >> 9) & 1;
          v33 = v21;
          v34 = [MTLBindingInternal alloc];
          v35 = v18;
          v36 = 24;
          goto LABEL_31;
        case 0x11u:
          v32 = (v19 >> 9) & 1;
          v33 = v21;
          v34 = [MTLBindingInternal alloc];
          v35 = v18;
          v36 = 27;
          goto LABEL_31;
        case 0x12u:
          v32 = (v19 >> 9) & 1;
          v33 = v21;
          v34 = [MTLBindingInternal alloc];
          v35 = v18;
          v36 = 25;
          goto LABEL_31;
        case 0x13u:
          v32 = (v19 >> 9) & 1;
          v33 = v21;
          v34 = [MTLBindingInternal alloc];
          v35 = v18;
          v36 = 26;
          goto LABEL_31;
        case 0x15u:
          v131 = (v19 >> 9) & 1;
          v61 = v21;
          v62 = v18;
          v63 = DeserialContext::deserializeUint32(this);
          DeserialContext::deserializeUint32(this);
          DeserialContext::deserializeUint32(this);
          v64 = DeserialContext::deserializeUint32(this);
          v65 = DeserialContext::deserializeUint32(this);
          v66 = [MTLObjectPayloadBindingInternal alloc];
          v67 = v65;
          v16 = v123;
          v48 = [(MTLObjectPayloadBindingInternal *)v66 initWithName:v62 type:34 access:v23 isActive:v131 arraySize:v61 dataType:v63 dataSize:v67 alignment:v64];
          goto LABEL_32;
        case 0x16u:
          v120 = DeserialContext::deserializeUint32(this);
          v112 = DeserialContext::deserializeUint32(this);
          v110 = DeserialContext::deserializeUint32(this);
          v86 = DeserialContext::deserializeUint32(this);
          v134 = v20;
          v87 = DeserialContext::deserializeUint32(this);
          v138 = 0;
          v137 = 1;
          v88 = v18;
          v89 = structTypeFromSerializedContext(v121, this, &v138, v106, &v137, v107);
          v90 = structTypeFromSerializedContext(v121, this, &v138, v106, &v137, v107);
          WORD1(v102) = v86;
          a7 = v122;
          LOWORD(v102) = v110;
          a4 = v108;
          v91 = [[MTLBuiltInMeshArgument alloc] initWithName:v88 type:35 access:v23 active:(v19 >> 9) & 1 index:v134 dataType:v120 builtInType:v112 meshVertexStructType:v89 meshPrimitiveStructType:v90 meshVertexCount:v102 meshPrimitiveCount:v87 meshTopologyType:?];
          [(MTLBindingInternal *)v91 setIsArgument:v122];
          *(*v108 + v17) = v91;
          if (v137 == 1)
          {
          }

LABEL_24:
          v16 = v123;
          goto LABEL_34;
        case 0x17u:
          v32 = (v19 >> 9) & 1;
          v33 = v21;
          v34 = [MTLBindingInternal alloc];
          v35 = v18;
          v36 = 36;
LABEL_31:
          v48 = [(MTLBindingInternal *)v34 initWithName:v35 type:v36 access:v23 index:v20 active:v32 arrayLength:v33];
LABEL_32:
          v47 = v48;
          goto LABEL_33;
        case 0x18u:
          v114 = (v19 >> 9) & 1;
          v125 = v21;
          v37 = v18;
          v38 = DeserialContext::deserializeUint32(this);
          v39 = DeserialContext::deserializeUint32(this);
          v40 = v20;
          v41 = DeserialContext::deserializeUint32(this);
          v42 = newTensorExtentsWithNegativeOnes(v39);
          v43 = [MTLTensorBindingInternal alloc];
          v44 = dataTypeToTensorDataType(v38);
          v45 = v43;
          v16 = v123;
          v46 = v37;
          a7 = v122;
          v47 = [(MTLTensorBindingInternal *)v45 initWithName:v46 access:v23 isActive:v114 locationIndex:v40 arrayLength:v125 dataType:v44 indexType:v41 dimensions:v42];

          v48 = v47;
LABEL_33:
          [(MTLBindingInternal *)v48 setIsArgument:a7];
          *(*a4 + v17) = v47;
LABEL_34:
          v17 += 8;
          if (v16 != v17)
          {
            continue;
          }

          v15 = v105;
          if (!v104)
          {
            return v15;
          }

          v92 = 0;
          break;
        default:
          abort();
      }

      break;
    }

    while (1)
    {
      v136 = 0;
      v135 = 1;
      v93 = structTypeFromSerializedContext(v121, this, &v136, v106, &v135, v107);
      if (v93)
      {
        break;
      }

LABEL_56:
      v92 += 8;
      if (8 * v103 == v92)
      {
        return v15;
      }
    }

    v94 = v93;
    v95 = [*(*a4 + v92) type];
    if (v95 > 16)
    {
      if (v95 == 17)
      {
        goto LABEL_53;
      }

      if (v95 != 34 && v95 != 22)
      {
LABEL_54:
        if (v135 == 1)
        {
        }

        goto LABEL_56;
      }
    }

    else if (v95 >= 2)
    {
      if (v95 != 16)
      {
        goto LABEL_54;
      }

LABEL_53:
      [*(*a4 + v92) setStructType:v94];
      goto LABEL_54;
    }

    [*(*a4 + v92) setStructType:v94 doRetain:v135];
    goto LABEL_54;
  }

  return v15;
}

uint64_t deserializeArgumentsWithDeserializer(void *a1, uint64_t a2, DeserialContext *this, int a4)
{
  *(a2 + 36) = DeserialContext::deserializeUint32(this);
  v8 = DeserialContext::deserializeUint32(this);
  *(a2 + 16) = deserializeArguments(a1, this, a4, (a2 + 8), (a2 + 64), *(a2 + 112), 1);

  return DeserialContext::moveToOffset(this, v8, a4);
}

uint64_t DeserialContext::deserializeUint32(DeserialContext *this)
{
  v1 = *(this + 1);
  v2 = *(this + 2);
  v4 = v1 > v2;
  v3 = v1 - v2;
  v4 = v4 && v3 > 3;
  if (!v4)
  {
    abort();
  }

  v5 = *(*this + v2);
  *(this + 2) = v2 + 4;
  return v5;
}

MTLStructTypeInternal *structTypeFromSerializedContext(uint64_t a1, DeserialContext *a2, _BYTE *a3, void *a4, _BYTE *a5, unsigned int a6)
{
  v36 = a1;
  v43[1] = *MEMORY[0x1E69E9840];
  v11 = objc_autoreleasePoolPush();
  *a5 = 1;
  v37 = a6;
  if (!a6)
  {
    v14 = DeserialContext::deserializeUint32(a2);
    if (v14)
    {
LABEL_6:
      v15 = objc_alloc_init(MTLStructTypeInternal);
      v13 = v15;
      goto LABEL_7;
    }

LABEL_19:
    v13 = 0;
    goto LABEL_20;
  }

  v42 = DeserialContext::deserializeUint32(a2);
  if (!v42)
  {
    goto LABEL_19;
  }

  v12 = std::__hash_table<std::__hash_value_type<unsigned int,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,MTLStructTypeInternal *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,MTLStructTypeInternal *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,MTLStructTypeInternal *>>>::find<unsigned int>(a4, &v42);
  if (v12)
  {
    *a5 = 0;
    v13 = v12[3];
    goto LABEL_20;
  }

  v13 = objc_alloc_init(MTLStructTypeInternal);
  v43[0] = &v42;
  std::__hash_table<std::__hash_value_type<unsigned int,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,MTLStructTypeInternal *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,MTLStructTypeInternal *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,MTLStructTypeInternal *>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(a4, &v42)[3] = v13;
  v15 = DeserialContext::deserializeUint32(a2);
  if (!v15)
  {
    goto LABEL_20;
  }

  v14 = v15;
  if (!v13)
  {
    goto LABEL_6;
  }

LABEL_7:
  v32 = v13;
  v33 = a3;
  v34 = v11;
  v35 = a4;
  v31 = &v31;
  LOBYTE(v43[0]) = 0;
  v39 = v14;
  MEMORY[0x1EEE9AC00](v15);
  v38 = &v31 - v16;
  v17 = 0;
  do
  {
    v41 = DeserialContext::stringFromSerializedData(a2);
    v40 = DeserialContext::deserializeUint32(a2);
    v18 = DeserialContext::deserializeUint32(a2);
    v19 = DeserialContext::deserializeUint32(a2);
    v20 = DeserialContext::deserializeUint32(a2);
    v21 = DeserialContext::deserializeUint32(a2);
    v22 = 1;
    LOBYTE(v42) = 1;
    switch(v19)
    {
      case 0x39u:
        v23 = newArgumentTypeFromSerializedContext(v36, a2);
        LOBYTE(v43[0]) = 1;
        break;
      case 2u:
        v23 = newArrayTypeFromSerializedContext(v36, a2, v43, v35, v37);
        break;
      case 1u:
        v23 = structTypeFromSerializedContext(v36, a2, v43, v35, &v42, v37);
        v22 = v42;
        break;
      default:
        v23 = 0;
        break;
    }

    v24 = DeserialContext::deserializeUint32(a2);
    v25 = DeserialContext::deserializeUint32(a2);
    v26 = [MTLStructMemberInternal alloc];
    v27 = [(MTLStructMemberInternal *)v26 initWithName:v41 offset:v40 dataType:v19 pixelFormat:v20 aluType:v21 indirectArgumentIndex:v18 render_target:v24 raster_order_group:v25 details:v23];
    *&v38[8 * v17] = v27;
    if (v22)
    {
    }

    ++v17;
  }

  while (v39 != v17);
  v28 = LOBYTE(v43[0]);
  v13 = v32;
  *v33 |= LOBYTE(v43[0]);
  [(MTLStructTypeInternal *)v13 setMembers:v38 count:v39];
  [(MTLStructTypeInternal *)v13 setIsIndirectArgumentBuffer:v28];
  v11 = v34;
LABEL_20:
  objc_autoreleasePoolPop(v11);
  v29 = *MEMORY[0x1E69E9840];
  return v13;
}