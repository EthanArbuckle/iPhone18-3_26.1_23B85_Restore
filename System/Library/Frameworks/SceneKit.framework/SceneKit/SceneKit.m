BOOL C3DPreferencesGetBool(int a1)
{
  if (C3DPreferencesGetInteger_onceToken != -1)
  {
    C3DPreferencesGetInteger_cold_1();
  }

  return C3DPreferencesGetInteger_prefs[a1] != 0;
}

void __C3DPreferencesGetInteger_block_invoke()
{
  v1 = CFPreferencesCopyAppValue(@"internalSettings", @"com.apple.scenekit");
  C3DPreferencesGetInteger_prefs = [objc_msgSend(v1 objectForKeyedSubscript:{@"forceGLES", "BOOLValue"}];
  qword_27CDD9980 = [objc_msgSend(v1 objectForKeyedSubscript:{@"forceMetal", "BOOLValue"}];
  qword_27CDD9988 = [objc_msgSend(v1 objectForKeyedSubscript:{@"showsStatistics", "BOOLValue"}];
  qword_27CDD9990 = [objc_msgSend(v1 objectForKeyedSubscript:{@"cameraControlEnabled", "BOOLValue"}];
  qword_27CDD9998 = [objc_msgSend(v1 valueForKey:{@"batchMaxCount", "intValue"}];
  unk_27CDD99A0 = 0;
  qword_27CDD99A8 = [objc_msgSend(v1 objectForKeyedSubscript:{@"disableLinearSpaceRendering", "BOOLValue"}];
  qword_27CDD99B0 = [objc_msgSend(v1 objectForKeyedSubscript:{@"disableWideGamut", "BOOLValue"}];
  qword_27CDD99B8 = [objc_msgSend(v1 objectForKeyedSubscript:{@"enableWideGamut", "BOOLValue"}];
  qword_27CDD99C0 = [objc_msgSend(v1 objectForKeyedSubscript:{@"enablePostMorphUnifyNormals", "BOOLValue"}];
  qword_27CDD99D0 = [objc_msgSend(v1 objectForKeyedSubscript:{@"enableStandardShadersWithFunctionConstants", "BOOLValue"}];
  qword_27CDD99D8 = [objc_msgSend(v1 objectForKeyedSubscript:{@"forceNMOSBehavior", "BOOLValue"}];
  qword_27CDD99E0 = [objc_msgSend(v1 objectForKeyedSubscript:{@"forceOS2019Behavior", "BOOLValue"}];
  qword_27CDD99E8 = [objc_msgSend(v1 objectForKeyedSubscript:{@"forceOS2018Behavior", "BOOLValue"}];
  qword_27CDD99F0 = [objc_msgSend(v1 objectForKeyedSubscript:{@"forceOS2017Behavior", "BOOLValue"}];
  qword_27CDD99F8 = [objc_msgSend(v1 objectForKeyedSubscript:{@"forceOS2016Behavior", "BOOLValue"}];
  unk_27CDD9A00 = 0;
  if ([v1 objectForKeyedSubscript:@"useOneCommandQueuePerDevice"])
  {
    v0 = [objc_msgSend(v1 objectForKeyedSubscript:{@"useOneCommandQueuePerDevice", "BOOLValue"}];
  }

  else
  {
    v0 = 1;
  }

  qword_27CDD9A08 = v0;
  qword_27CDD9A10 = [objc_msgSend(v1 objectForKeyedSubscript:{@"disableReverseZ", "BOOLValue"}];
  qword_27CDD99C8 = [objc_msgSend(v1 objectForKeyedSubscript:{@"isolateCacheMissShader", "BOOLValue"}];
}

uint64_t C3DMetalIsSupported()
{
  if (C3DMetalIsSupported_onceToken != -1)
  {
    C3DASTCIsSupported_cold_1();
  }

  return C3DMetalIsSupported_supported;
}

void __C3DMetalIsSupported_block_invoke()
{
  v3 = MTLCreateSystemDefaultDevice();
  C3DMetalIsSupported_supported = v3 != 0;
  v0 = [v3 supportsFeatureSet:1];
  kASTCIsSupported |= v0;
  v1 = [v3 supportsFeatureSet:3];
  kASTCIsSupported |= v1;
  v2 = [v3 supportsFeatureSet:4];
  kASTCIsSupported |= v2;
}

uint64_t C3DWasLinkedBeforeMajorOSYear2015()
{
  if (C3DWasLinkedBeforeMajorOSYear2015_onceToken != -1)
  {
    C3DWasLinkedBeforeMajorOSYear2015_cold_1();
  }

  return C3DWasLinkedBeforeMajorOSYear2015_linkedBeforeMajorOSYear2015;
}

uint64_t __C3DWasLinkedBeforeMajorOSYear2015_block_invoke()
{
  result = C3DPreferencesGetBool(12);
  if (result)
  {
    v1 = 0;
  }

  else
  {
    result = dyld_program_sdk_at_least();
    v1 = result ^ 1;
  }

  C3DWasLinkedBeforeMajorOSYear2015_linkedBeforeMajorOSYear2015 = v1;
  return result;
}

uint64_t C3DGetInfoPlistFlagIsSet(uint64_t a1, uint64_t a2)
{
  v3 = [objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8] "mainBundle")];
  if (!v3)
  {
    return a2;
  }

  v4 = v3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return a2;
  }

  return [v4 BOOLValue];
}

uint64_t SCNGetPerformanceStatisticsEnabled()
{
  if (SCNGetPerformanceStatisticsEnabled::onceToken != -1)
  {
    SCNSetPerformanceStatisticsEnabled_cold_1();
  }
}

void __SCNGetPerformanceStatisticsEnabled_block_invoke()
{
  v0 = getenv("SCN_ENABLE_COLLECTION");
  if (v0 && !strcmp(v0, "YES"))
  {
    if (SCNInitializeForDebugging(void)::onceToken != -1)
    {
      SCNSetPerformanceStatisticsEnabled_cold_2();
    }
  }
}

uint64_t C3DMetalFramebufferPixelFormat(char a1)
{
  IsEnabled = C3DLinearRenderingIsEnabled();
  if ((a1 & 0x20) != 0)
  {
    v3 = 0;
  }

  else
  {
    v3 = IsEnabled;
  }

  v4 = 80;
  if (v3)
  {
    v4 = 81;
  }

  v5 = 554;
  if (v3)
  {
    v5 = 555;
  }

  v6 = v3 == 0;
  v7 = 80;
  if (!v6)
  {
    v7 = 81;
  }

  v8 = 550;
  if (!v6)
  {
    v8 = 551;
  }

  if ((a1 & 8) == 0)
  {
    v7 = v8;
  }

  if ((a1 & 0x10) == 0)
  {
    v7 = v5;
  }

  if (a1)
  {
    return v7;
  }

  else
  {
    return v4;
  }
}

unint64_t _setupMetalBackingLayer(void *a1, int a2)
{
  if (a2)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  [a1 setPixelFormat:C3DMetalFramebufferPixelFormat(v3)];
  [a1 setFramebufferOnly:1];
  result = [a1 maximumDrawableCount];
  if (result >= 3)
  {

    return [a1 setFenceEnabled:1];
  }

  return result;
}

uint64_t C3DLinearRenderingIsEnabled()
{
  if (C3DLinearRenderingIsEnabled_onceToken != -1)
  {
    C3DLinearRenderingIsEnabled_cold_1();
  }

  return _gC3DEnableLinearRendering;
}

uint64_t C3DWasLinkedBeforeMajorOSYear2016()
{
  if (C3DWasLinkedBeforeMajorOSYear2016_onceToken != -1)
  {
    C3DWasLinkedBeforeMajorOSYear2016_cold_1();
  }

  return C3DWasLinkedBeforeMajorOSYear2016_linkedBeforeMajorOSYear2016;
}

void __C3DLinearRenderingIsEnabled_block_invoke()
{
  if (_gC3DEnableLinearRendering != 1 || (v0 = C3DWasLinkedBeforeMajorOSYear2016(), _gC3DEnableLinearRendering = v0 ^ 1, (v0 & 1) != 0) || (Bool = C3DPreferencesGetBool(6), _gC3DEnableLinearRendering = !Bool, Bool) || (v2 = C3DPreferencesGetBool(0), _gC3DEnableLinearRendering = !v2, v2) || (IsSet = C3DGetInfoPlistFlagIsSet(@"SCNDisableLinearSpaceRendering", 0), _gC3DEnableLinearRendering = IsSet ^ 1, (IsSet & 1) != 0))
  {
    v4 = 0;
  }

  else
  {
    if (C3DMetalIsSupported_onceToken != -1)
    {
      C3DASTCIsSupported_cold_1();
    }

    v4 = C3DMetalIsSupported_supported;
  }

  _gC3DEnableLinearRendering = v4 & 1;
}

uint64_t __C3DWasLinkedBeforeMajorOSYear2016_block_invoke()
{
  result = C3DPreferencesGetBool(12);
  if (result)
  {
    v1 = 0;
  }

  else
  {
    result = dyld_program_sdk_at_least();
    v1 = result ^ 1;
  }

  C3DWasLinkedBeforeMajorOSYear2016_linkedBeforeMajorOSYear2016 = v1;
  return result;
}

uint64_t C3DEngineContextCreateWithOptions()
{
  if (C3DEngineContextGetTypeID_onceToken != -1)
  {
    C3DEngineContextCreateWithOptions_cold_1();
  }

  Instance = C3DTypeCreateInstance_(C3DEngineContextGetTypeID_typeID, 1856);
  v1 = Instance;
  if (Instance)
  {
    Instance[2] = 0;
    Instance[17] = 0;
    Instance[53] = 0x7FF0000000000000;
    Instance[205] = C3DRendererElementStateCreate();
    *(v1 + 106) = 1;
    *(v1 + 51) = 1065353216;
    C3DRenderGraphCreate();
  }

  return 0;
}

uint64_t __C3DEngineContextGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  C3DEngineContextGetTypeID_typeID = result;
  return result;
}

void *C3DRendererElementStateCreate()
{
  if (C3DRendererElementStateGetTypeID_onceToken != -1)
  {
    C3DRendererElementStateCreate_cold_1();
  }

  Instance = C3DTypeCreateInstance_(C3DRendererElementStateGetTypeID_typeID, 416);
  if (!Instance)
  {
    v1 = scn_default_log();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
    {
      C3DRendererElementStateCreate_cold_2(v1, v2, v3, v4, v5, v6, v7, v8);
    }
  }

  Instance[7] = 0;
  v9 = Instance[41];
  if (v9)
  {
    CFRelease(v9);
    Instance[41] = 0;
  }

  Instance[42] = 0;
  return Instance;
}

uint64_t __C3DRendererElementStateGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  C3DRendererElementStateGetTypeID_typeID = result;
  return result;
}

void C3D::RenderGraph::RenderGraph(C3D::RenderGraph *this, __C3DEngineContext *a2, void *a3)
{
  *this = 0;
  *(this + 1) = a2;
  C3DScratchAllocatorCreate();
}

void VMAllocateChunk(vm_address_t *address, uint64_t a2)
{
  if (!address)
  {
    VMAllocateChunk();
  }

  if (address[3])
  {
    VMAllocateChunk();
  }

  if (!a2)
  {
    VMAllocateChunk();
  }

  v3 = ((*MEMORY[0x277D85FA0] - 1) | (a2 - 1)) + 1;
  if (vm_allocate(*MEMORY[0x277D85F48], address, v3, 1))
  {
    *__error() = 12;
    *address = 0;
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      VMAllocateChunk(v3, v4);
    }
  }

  else
  {
    address[1] = v3;
    if (!*address)
    {
      VMAllocateChunk();
    }
  }
}

void C3D::Hash<C3D::Pass *,C3D::ScratchAllocator>::_allocate(void *a1, int a2)
{
  if ((a2 & (a2 - 1)) != 0)
  {
    C3D::Hash<C3D::FinalPass::RenderTarget,C3D::StackAllocator>::_allocate();
  }

  *(a1 + 8) = 0;
  *(a1 + 9) = a2;
  v3 = a2 + 15;
  v4 = 2 * (a2 + 15);
  a1[3] = C3DScratchAllocatorAllocateAligned(*a1, v4, 4, 0);
  v5 = 8 * v3;
  a1[1] = C3DScratchAllocatorAllocateAligned(*a1, v5, 8, 0);
  a1[2] = C3DScratchAllocatorAllocateAligned(*a1, v5, 8, 0);
  memset(a1[1], 255, v5);
  v6 = a1[3];

  bzero(v6, v4);
}

C3D::ScratchAllocator *C3D::Array<unsigned short,0u,C3D::ScratchAllocator>::Array(C3D::ScratchAllocator *a1, void *a2)
{
  v4 = C3D::ScratchAllocator::ScratchAllocator(a1, a2);
  *(v4 + 1) = 0;
  *(v4 + 2) = v4 + 24;
  if (!a2)
  {
    v5 = scn_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      C3D::Array<C3D::Pass *,0u,C3D::StackAllocator>::Array(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  return a1;
}

uint64_t C3DScratchAllocator::Allocate(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  v4 = a3 - 1;
  v5 = -a3;
  v6 = a1;
  while (1)
  {
    v7 = v6[1];
    v8 = v6[2];
    v9 = *v6 + v8;
    v10 = ((v4 + v9) & v5) - v9 + a2;
    if (v10 <= v7 - v8)
    {
      break;
    }

    v3 += v7;
    v6 = v6[3];
    if (!v6)
    {
      if (a1[4])
      {
        operator new();
      }

      C3DScratchAllocator::Allocate();
    }
  }

  v6[2] = v10 + v8;
  return (v4 + v9) & v5;
}

C3D::ScratchAllocator *C3D::ScratchAllocator::ScratchAllocator(C3D::ScratchAllocator *this, void *a2)
{
  *this = a2;
  if (!a2)
  {
    v3 = scn_default_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3D::ScratchAllocator::ScratchAllocator(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return this;
}

void C3D::Hash<std::unique_ptr<C3D::RenderGraphResource>,C3D::MallocAllocator>::_allocate(uint64_t a1, int a2)
{
  if ((a2 & (a2 - 1)) != 0)
  {
    C3D::Hash<C3D::FinalPass::RenderTarget,C3D::StackAllocator>::_allocate();
  }

  *(a1 + 24) = 0;
  *(a1 + 28) = a2;
  v3 = a2 + 15;
  v4 = 2 * (a2 + 15);
  *(a1 + 16) = malloc_type_malloc(v4, 0x5437EE60uLL);
  v5 = 8 * v3;
  *a1 = malloc_type_malloc(v5, 0x5437EE60uLL);
  *(a1 + 8) = malloc_type_malloc(v5, 0x5437EE60uLL);
  memset(*a1, 255, v5);
  v6 = *(a1 + 16);

  bzero(v6, v4);
}

uint64_t C3DSetupHaltonFilterKernel(uint64_t result, int a2, float32x2_t a3, float32_t a4)
{
  if (a2 >= 1)
  {
    v4 = 0;
    a3.f32[1] = a4;
    __asm { FMOV            V2.2S, #-1.0 }

    do
    {
      if (v4)
      {
        v10 = 0.5;
        v11.i32[0] = 0;
        v12 = v4;
        do
        {
          if (v12)
          {
            v11.f32[0] = v10 + v11.f32[0];
          }

          v10 = v10 * 0.5;
          v13 = v12 > 1;
          v12 >>= 1;
        }

        while (v13);
        v14 = 0.0;
        v15 = v4;
        v16 = 0.33333;
        do
        {
          if (v15 != 3 * (v15 / 3))
          {
            v14 = v14 + ((v15 % 3) * v16);
          }

          v16 = v16 * 0.33333;
          v17 = v15 + 2;
          v15 /= 3;
        }

        while (v17 > 4);
        v11.f32[1] = v14;
      }

      else
      {
        v11 = 0;
      }

      *(result + 8 * v4++) = vmul_f32(vmla_f32(_D2, 0x4000000040000000, v11), a3);
    }

    while (v4 != a2);
  }

  return result;
}

__n128 C3DMatrix4x4MakeIdentity(uint64_t a1)
{
  v1 = MEMORY[0x277D860B8];
  v2 = *(MEMORY[0x277D860B8] + 16);
  *a1 = *MEMORY[0x277D860B8];
  *(a1 + 16) = v2;
  result = *(v1 + 32);
  v4 = *(v1 + 48);
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t C3DProgramHashCodeStoreCreate()
{
  if (C3DProgramHashCodeStoreGetTypeID(void)::onceToken != -1)
  {
    C3DProgramHashCodeStoreCreate_cold_1();
  }

  Instance = C3DTypeCreateInstance_(C3DProgramHashCodeStoreGetTypeID(void)::typeID, 48);
  C3D::Hash<std::unique_ptr<C3D::RenderGraphResource>,C3D::MallocAllocator>::_allocate(Instance + 16, 32);
  *(Instance + 48) = C3DIndexStoreCreateWithCapacity(0x7FFFFFFFLL);
  return Instance;
}

uint64_t ___Z32C3DProgramHashCodeStoreGetTypeIDv_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  C3DProgramHashCodeStoreGetTypeID(void)::typeID = result;
  return result;
}

void *C3DIndexStoreCreateWithCapacity(uint64_t a1)
{
  if (C3DIndexStoreGetTypeID_onceToken != -1)
  {
    C3DIndexStoreCreateWithCapacity_cold_1();
  }

  Instance = C3DTypeCreateInstance_(C3DIndexStoreGetTypeID_typeID, 64);
  Instance[2] = CFDictionaryCreateMutable(0, 0, 0, 0);
  Instance[3] = C3DIndexSetCreateMutable();
  Instance[4] = 0;
  Instance[5] = a1;
  Instance[6] = C3DAllocatorCreate(16, 4096);
  C3DIndexSetAddIndexesInRange(Instance[3], 0, a1, v3);
  return Instance;
}

uint64_t __C3DIndexStoreGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  C3DIndexStoreGetTypeID_typeID = result;
  return result;
}

uint64_t C3DIndexSetCreate()
{
  if (C3DIndexSetGetTypeID_onceToken != -1)
  {
    C3DIndexSetCreate_cold_1();
  }

  v1 = C3DIndexSetGetTypeID_typeID;

  return C3DTypeCreateInstance_(v1, 24);
}

uint64_t C3DIndexSetCreateMutable()
{
  result = C3DIndexSetCreate();
  *(result + 16) |= 0xBu;
  return result;
}

uint64_t __C3DIndexSetGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  C3DIndexSetGetTypeID_typeID = result;
  return result;
}

void *C3DAllocatorCreate(uint64_t a1, uint64_t a2)
{
  if (C3DAllocatorGetTypeID_onceToken != -1)
  {
    C3DAllocatorCreate_cold_1();
  }

  Instance = C3DTypeCreateInstance_(C3DAllocatorGetTypeID_typeID, 56);
  Instance[5] = C3DIndexSetCreateMutable();
  Instance[2] = a1;
  Instance[3] = a2;
  return Instance;
}

uint64_t __C3DAllocatorGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  C3DAllocatorGetTypeID_typeID = result;
  return result;
}

int64x2_t C3DIndexSetAddIndexesInRange(uint64_t a1, uint64_t a2, uint64_t a3, int64x2_t result)
{
  if (a3)
  {
    v4 = a3;
    v7 = a2 + a3;
    v8 = _indexOfRangeBeforeOrContainingIndex(a1, a2);
    if (v8 == -1)
    {
      v9 = 0;
    }

    else
    {
      v9 = v8;
    }

    v10 = a1 + 24;
    for (i = 16 * v9; ; i += 16)
    {
      v12 = (*(a1 + 16) & 1) == 0;
      if ((*(a1 + 16) & 3) == 0)
      {
        v12 = *(*v10 + 8);
      }

      if (v9 >= v12)
      {
        goto LABEL_25;
      }

      v13 = a1 + 24;
      if ((*(a1 + 16) & 2) == 0)
      {
        v13 = *v10 + 56;
      }

      v14 = (v13 + i);
      v15 = *v14;
      v16 = v7 - *v14;
      if (v7 < *v14)
      {
        break;
      }

      v17 = v14[1] + v15;
      if (a2 < v15)
      {
        v15 = a2;
        if (v7 <= v17)
        {
          v16 = v17 - a2;
        }

        else
        {
          v16 = v4;
        }

        if (v7 <= v17)
        {
          v4 = v17 - a2;
        }

LABEL_24:
        _replaceRangeInArrayAtIndex(a1, v9, v15, v16);
LABEL_25:
        if (*(a1 + 16))
        {
          if (v9)
          {
            goto LABEL_40;
          }

          v19 = 1;
        }

        else
        {
          if ((*(a1 + 16) & 2) == 0)
          {
            v18 = *(*v10 + 8);
            if (v18 == v9)
            {
              v19 = v18 + 1;
              goto LABEL_33;
            }

LABEL_40:
            while (1)
            {
              if (*(a1 + 16))
              {
                v25 = -1;
              }

              else
              {
                v25 = (*(a1 + 16) & 2) != 0 ? 0 : *(*v10 + 8) - 1;
              }

              if (v9 >= v25)
              {
                break;
              }

              v26 = a1 + 24;
              if ((*(a1 + 16) & 2) == 0)
              {
                v26 = *v10 + 56;
              }

              result = *(v26 + 16 * v9);
              v27 = (v26 + 16 * (v9 + 1));
              v28 = vaddvq_s64(result);
              if (v28 < *v27)
              {
                break;
              }

              v29 = v27[1] + *v27;
              if (v28 < v29)
              {
                _replaceRangeInArrayAtIndex(a1, v9, *(v26 + 16 * v9), v29 - result.i64[0]);
                _removeRangeInArrayAtIndex(a1, ++v9);
              }

              else
              {
                _removeRangeInArrayAtIndex(a1, v9 + 1);
              }
            }

            return result;
          }

          if (v9 != 1)
          {
            goto LABEL_40;
          }

          v19 = 2;
        }

LABEL_33:
        result.i64[0] = _ensureRangeCapacity(a1, v19).n128_u64[0];
        v20 = *(a1 + 16);
        if ((v20 & 2) != 0)
        {
          *(a1 + 24) = a2;
          *(a1 + 32) = v4;
        }

        else
        {
          *(*(a1 + 24) + 48) = 0;
          v21 = *(a1 + 24);
          if ((*(a1 + 16) & 2) != 0)
          {
            v22 = a1 + 24;
          }

          else
          {
            v22 = v21 + 56;
          }

          v23 = *(v21 + 8);
          *(v21 + 8) = v23 + 1;
          v24 = (v22 + 16 * v23);
          *v24 = a2;
          v24[1] = v4;
          *(*(a1 + 24) + 16) += v4;
          v20 = *(a1 + 16);
        }

        *(a1 + 16) = v20 & 0xFE;
        goto LABEL_40;
      }

      if (v7 <= v17)
      {
        return result;
      }

      if (v17 >= a2)
      {
        goto LABEL_24;
      }

      ++v9;
    }

    _insertRange(a1, a2, v4, v9);
  }

  return result;
}

uint64_t _indexOfRangeBeforeOrContainingIndex(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16))
  {
    return -1;
  }

  v2 = (a1 + 24);
  if ((*(a1 + 16) & 2) != 0)
  {
    goto LABEL_5;
  }

  v3 = *v2;
  v4 = *(v3 + 8);
  if (v4 < 1)
  {
    return -1;
  }

  v2 = (v3 + 56);
  v5 = v4 - 1;
  if (v4 != 1)
  {
    v6 = 0;
    do
    {
      result = (v5 + v6) >> 1;
      v10 = &v2[2 * result];
      if (*v10 <= a2)
      {
        if (v10[1] + *v10 > a2)
        {
          return result;
        }

        v6 = result + 1;
      }

      else
      {
        v5 = (v5 + v6) >> 1;
      }
    }

    while (v6 < v5);
    goto LABEL_6;
  }

LABEL_5:
  v6 = 0;
LABEL_6:
  v7 = v2[2 * v6];
  v8 = v6 - 1;
  if (v6 <= 0)
  {
    v8 = -1;
  }

  if (v7 > a2)
  {
    return v8;
  }

  else
  {
    return v6;
  }
}

uint64_t C3DSortSystemCreate()
{
  if (C3DSortSystemGetTypeID_onceToken != -1)
  {
    C3DSortSystemCreate_cold_1();
  }

  Instance = C3DTypeCreateInstance_(C3DSortSystemGetTypeID_typeID, 32);
  *(Instance + 16) = C3DArrayCreate(8, 0);
  return Instance;
}

__n128 _ensureRangeCapacity(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  if ((v3 & 2) != 0)
  {
    v4 = 1;
  }

  else
  {
    v4 = **(a1 + 24);
  }

  if (v4 < a2)
  {
    if (a2 == 1)
    {
      *(a1 + 16) = v3 | 2;
    }

    else
    {
      v5 = 2 * v4;
      if (v5 <= a2)
      {
        v5 = a2;
      }

      if (a2 >= 4)
      {
        v6 = v5;
      }

      else
      {
        v6 = 4;
      }

      if ((*(a1 + 16) & 2) != 0)
      {
        v8 = !(v3 & 1);
        if (*(a1 + 16))
        {
          v9 = 0;
        }

        else
        {
          v9 = *(a1 + 32);
        }

        v10 = (a1 + 24);
        v12 = *(a1 + 24);
        *(a1 + 16) = v3 & 0xFD;
        v11 = malloc_type_calloc(16 * v6 + 56, 1uLL, 0x23C8BC28uLL);
        *(a1 + 24) = v11;
        v11[6] = 0;
        **(a1 + 24) = v6;
        *(*(a1 + 24) + 8) = v8;
        *(*(a1 + 24) + 16) = v9;
        if ((*(a1 + 16) & 2) == 0)
        {
          v10 = (*v10 + 56);
        }

        result = v12;
        *v10 = v12;
      }

      else
      {
        *(a1 + 24) = malloc_type_realloc(*(a1 + 24), 16 * v6 + 56, 0x1080040EA666AC5uLL);
      }
    }
  }

  return result;
}

uint64_t __C3DSortSystemGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  C3DSortSystemGetTypeID_typeID = result;
  return result;
}

uint64_t C3DArrayCreate(int a1, int a2)
{
  if (C3DArrayGetTypeID_onceToken != -1)
  {
    C3DArrayCreate_cold_1();
  }

  Instance = C3DTypeCreateInstance_(C3DArrayGetTypeID_typeID, 24);
  v5 = Instance;
  *(Instance + 32) = a1;
  v6 = *(Instance + 28);
  if (v6 != a2)
  {
    __allocate(Instance, v6 * a1, (a2 * a1));
    *(v5 + 28) = a2;
  }

  return v5;
}

uint64_t __C3DArrayGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  C3DArrayGetTypeID_typeID = result;
  return result;
}

uint64_t C3DStackAllocatorCreate(uint64_t a1)
{
  if (C3DStackAllocatorGetTypeID(void)::onceToken != -1)
  {
    C3DStackAllocatorCreate_cold_1();
  }

  Instance = C3DTypeCreateInstance_(C3DStackAllocatorGetTypeID(void)::typeID, 568);
  __allocateChunk((Instance + 24), a1);
  *(Instance + 16) = Instance + 24;
  *(Instance + 56) = *(Instance + 32);
  return Instance;
}

uint64_t ___Z26C3DStackAllocatorGetTypeIDv_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  C3DStackAllocatorGetTypeID(void)::typeID = result;
  return result;
}

uint64_t __allocateChunk(vm_address_t *address, uint64_t a2)
{
  if (!address)
  {
    __allocateChunk();
  }

  if (!a2)
  {
    __allocateChunk();
  }

  v3 = ((*MEMORY[0x277D85FA0] - 1) | (a2 - 1)) + 1;
  *(address + 2) = v3;
  result = vm_allocate(*MEMORY[0x277D85F48], address, v3, 1);
  if (!*address)
  {
    __allocateChunk();
  }

  return result;
}

uint64_t C3DEngineContextGetRenderCallbacks(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DEngineContextGetScene_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return a1 + 56;
}

void C3DEngineContextSetRenderingOptionForKey(uint64_t a1, __CFString *key, void *value)
{
  if (!a1)
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      C3DEngineContextGetScene_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  if (!*(a1 + 376))
  {
    *(a1 + 376) = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  }

  if (@"debugRendering" == key)
  {
    *(a1 + 208) = 1;
    C3DFXInvalidatePasses(a1);
  }

  v14 = *(a1 + 376);
  if (value)
  {
    CFDictionarySetValue(v14, key, value);
  }

  else
  {
    CFDictionaryRemoveValue(v14, key);
  }
}

void C3DEngineContextSetClearsOnDraw(uint64_t a1, char a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DEngineContextGetScene_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 210) = a2;
}

void C3DEngineContextSetUserInfo(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DEngineContextGetScene_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 128) = a2;
}

void SCNMTLClusterSystem::SCNMTLClusterSystem(SCNMTLClusterSystem *this)
{
  *this = xmmword_21C2A1D80;
  *(this + 2) = 0x4000000040;
  *(this + 2) = xmmword_21C2A1D90;
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 6) = 0;
}

uint64_t C3DUseOneCommandQueuePerDevice()
{
  if (C3DUseOneCommandQueuePerDevice_onceToken != -1)
  {
    C3DUseOneCommandQueuePerDevice_cold_1();
  }

  return C3DUseOneCommandQueuePerDevice_useOneCommandQueuePerDevice;
}

BOOL __C3DUseOneCommandQueuePerDevice_block_invoke()
{
  result = C3DPreferencesGetBool(18);
  C3DUseOneCommandQueuePerDevice_useOneCommandQueuePerDevice = result;
  return result;
}

uint64_t C3DStandardShadersUseFunctionConstants()
{
  if (C3DStandardShadersUseFunctionConstants_onceToken != -1)
  {
    C3DStandardShadersUseFunctionConstants_cold_1();
  }

  return C3DStandardShadersUseFunctionConstants_enableFunctionConstants;
}

uint64_t __C3DWasLinkedBeforeMajorOSYear2019_block_invoke()
{
  result = C3DPreferencesGetBool(12);
  if (result)
  {
    v1 = 0;
  }

  else
  {
    result = C3DPreferencesGetBool(16);
    if (result & 1) != 0 || (result = C3DPreferencesGetBool(15), (result) || (result = C3DPreferencesGetBool(14), (result))
    {
      v1 = 1;
    }

    else
    {
      result = dyld_program_sdk_at_least();
      v1 = result ^ 1;
    }
  }

  C3DWasLinkedBeforeMajorOSYear2019_linkedBeforeMajorOSYear2019 = v1;
  return result;
}

uint64_t C3DReverseZIsSupported()
{
  if (C3DReverseZIsSupported_onceToken != -1)
  {
    C3DReverseZIsSupported_cold_1();
  }

  return C3DReverseZIsSupported_useReverseZ;
}

uint64_t C3DWasLinkedBeforeMajorOSYear2019()
{
  if (C3DWasLinkedBeforeMajorOSYear2019_onceToken != -1)
  {
    C3DWasLinkedBeforeMajorOSYear2019_cold_1();
  }

  return C3DWasLinkedBeforeMajorOSYear2019_linkedBeforeMajorOSYear2019;
}

void __C3DStandardShadersUseFunctionConstants_block_invoke()
{
  Bool = C3DPreferencesGetBool(11);
  C3DStandardShadersUseFunctionConstants_enableFunctionConstants = Bool;
  if (Bool)
  {
    if (C3DMetalIsSupported_onceToken != -1)
    {
      C3DASTCIsSupported_cold_1();
    }

    v1 = C3DMetalIsSupported_supported;
  }

  else
  {
    v1 = 0;
  }

  C3DStandardShadersUseFunctionConstants_enableFunctionConstants = v1 & 1;
}

BOOL __C3DReverseZIsSupported_block_invoke()
{
  C3DReverseZIsSupported_useReverseZ &= C3DWasLinkedBeforeMajorOSYear2019() ^ 1;
  if (C3DMetalIsSupported_onceToken != -1)
  {
    C3DASTCIsSupported_cold_1();
  }

  C3DReverseZIsSupported_useReverseZ &= C3DMetalIsSupported_supported;
  result = C3DPreferencesGetBool(19);
  C3DReverseZIsSupported_useReverseZ &= !result;
  return result;
}

uint64_t SCNMTLDeviceSupportsDepthResolve(void *a1)
{
  if (C3DSceneSourceGetSceneCount())
  {

    return [a1 supportsMSAADepthResolve];
  }

  else
  {

    return [a1 supportsFeatureSet:4];
  }
}

uint64_t SCNMTLDeviceSupportsStencilResolve(void *a1)
{
  if (C3DSceneSourceGetSceneCount())
  {

    return [a1 supportsMSAAStencilResolve];
  }

  else
  {

    return [a1 supportsFeatureSet:16];
  }
}

uint64_t SCNMTLDeviceSupportsNonUniformThreadgroupSize(void *a1)
{
  if (C3DSceneSourceGetSceneCount())
  {

    return [a1 supportsNonUniformThreadgroupSize];
  }

  else
  {

    return [a1 supportsFeatureSet:11];
  }
}

uint64_t SCNMTLDeviceSupportsLayeredRendering(void *a1)
{
  if (C3DSceneSourceGetSceneCount())
  {

    return [a1 supportsLayeredRendering];
  }

  else
  {

    return [a1 supportsFeatureSet:16];
  }
}

uint64_t SCNMTLDeviceSupportsMultipleViewports(void *a1)
{
  if (C3DSceneSourceGetSceneCount())
  {
    return [a1 maxViewportCount] > 1;
  }

  return [a1 supportsFeatureSet:16];
}

uint64_t SCNMTLDeviceSupportsVertexAmplification(void *a1)
{
  result = C3DSceneSourceGetSceneCount();
  if (result)
  {

    return [a1 supportsVertexAmplificationCount:2];
  }

  return result;
}

uint64_t SCNMTLDeviceSupportsTessellation(void *a1)
{
  if (C3DSceneSourceGetSceneCount())
  {

    return [a1 supportsTessellation];
  }

  else
  {

    return [a1 supportsFeatureSet:7];
  }
}

uint64_t SCNMTLDeviceSupportsCubeMapTextureArrays(void *a1)
{
  if (C3DSceneSourceGetSceneCount())
  {

    return [a1 supportsTextureCubeArray];
  }

  else
  {

    return [a1 supportsFeatureSet:11];
  }
}

uint64_t SCNMTLDeviceSupportsCubeMapWrite(void *a1)
{
  if (C3DSceneSourceGetSceneCount())
  {

    return [a1 supportsReadWriteTextureCubeArguments];
  }

  else
  {

    return [a1 supportsFeatureSet:11];
  }
}

uint64_t SCNMTLDeviceSupportsBaseInstance(void *a1)
{
  if (C3DSceneSourceGetSceneCount())
  {

    return [a1 supportsBaseVertexInstanceDrawing];
  }

  else if ([a1 supportsFeatureSet:10])
  {
    return 1;
  }

  else
  {

    return [a1 supportsFeatureSet:11];
  }
}

uint64_t SCNMTLDeviceSupportsProgrammableBlending(void *a1)
{
  if (!C3DSceneSourceGetSceneCount())
  {
    return 1;
  }

  return [a1 supportsProgrammableBlending];
}

uint64_t SCNMTLDeviceSupportsDepthClipMode(void *a1)
{
  if (!C3DSceneSourceGetSceneCount())
  {
    return 1;
  }

  return [a1 supportsDepthClipMode];
}

uint64_t SCNMTLDeviceSupportsTextureSwizzle(void *a1)
{
  result = C3DSceneSourceGetSceneCount();
  if (result)
  {

    return [a1 supportsTextureSwizzle];
  }

  return result;
}

uint64_t C3DEnumIterator<C3DEffectProperty,(signed char)0,(signed char)15>::end()
{
  {
    C3DEnumIterator<C3DEffectProperty,(signed char)0,(signed char)15>::end();
  }

  return C3DEnumIterator<C3DEffectProperty,(signed char)0,(signed char)15>::end(void)::end;
}

void C3DEnumIterator<C3DEffectProperty,(signed char)0,(signed char)15>::end()
{
  {
    C3DEnumIterator<C3DEffectProperty,(signed char)0,(signed char)15>::end(void)::end = 16;
  }
}

__CFString *__stringForProperty()
{
  result = @"multiply";
  switch(@"multiply")
  {
    case 0u:
      v1 = kC3DEmission;
      goto LABEL_17;
    case 1u:
      v1 = kC3DAmbient;
      goto LABEL_17;
    case 2u:
      v1 = kC3DDiffuse;
      goto LABEL_17;
    case 3u:
      v1 = kC3DSpecular;
      goto LABEL_17;
    case 4u:
      v1 = kC3DReflective;
      goto LABEL_17;
    case 5u:
      v1 = kC3DTransparent;
      goto LABEL_17;
    case 6u:
      return result;
    case 7u:
      v1 = kC3DNormal;
      goto LABEL_17;
    case 8u:
      v1 = kC3DAmbientOcclusion;
      goto LABEL_17;
    case 9u:
      v1 = kC3DSelfIllumination;
      goto LABEL_17;
    case 0xAu:
      v1 = kC3DMetalness;
      goto LABEL_17;
    case 0xBu:
      v1 = kC3DRoughness;
      goto LABEL_17;
    case 0xCu:
      v1 = kC3DClearCoat;
      goto LABEL_17;
    case 0xDu:
      v1 = kC3DClearCoatRoughness;
      goto LABEL_17;
    case 0xEu:
      v1 = kC3DClearCoatNormal;
      goto LABEL_17;
    case 0xFu:
      v1 = kC3DDisplacement;
LABEL_17:
      result = *v1;
      break;
    default:
      result = 0;
      break;
  }

  return result;
}

uint64_t C3DFXMetalProgramCreateFromDefaultLibrary(const void *a1, const void *a2)
{
  v4 = C3DFXMetalProgramCreate();
  v5 = *(v4 + 80);
  if (v5 != a1)
  {
    if (v5)
    {
      CFRelease(v5);
      *(v4 + 80) = 0;
    }

    if (a1)
    {
      v6 = CFRetain(a1);
    }

    else
    {
      v6 = 0;
    }

    *(v4 + 80) = v6;
  }

  v7 = *(v4 + 88);
  if (v7 != a2)
  {
    if (v7)
    {
      CFRelease(v7);
      *(v4 + 88) = 0;
    }

    if (a2)
    {
      v8 = CFRetain(a2);
    }

    else
    {
      v8 = 0;
    }

    *(v4 + 88) = v8;
  }

  v9 = *(v4 + 96);
  if (v9)
  {
    CFRelease(v9);
    *(v4 + 96) = 0;
  }

  v10 = *(v4 + 104);
  if (v10)
  {
    CFRelease(v10);
    *(v4 + 104) = 0;
  }

  v11 = *(v4 + 112);
  if (v11)
  {
    CFRelease(v11);
    *(v4 + 112) = 0;
  }

  v12 = *(v4 + 120);
  if (v12)
  {
    CFRelease(v12);
    *(v4 + 120) = 0;
  }

  *(v4 + 144) = 0;
  v13 = *(v4 + 152);
  if (v13)
  {
    CFRelease(v13);
    *(v4 + 152) = 0;
  }

  v14 = *(v4 + 160);
  if (v14)
  {
    CFRelease(v14);
    *(v4 + 160) = 0;
  }

  _C3DFXMetalProgramUpdateHashWithLibrary(v4);
  return v4;
}

uint64_t C3DFXMetalProgramCreate()
{
  if (C3DFXMetalProgramGetTypeID_onceToken != -1)
  {
    C3DFXMetalProgramGetTypeID_cold_1();
  }

  Instance = C3DTypeCreateInstance_(C3DFXMetalProgramGetTypeID_typeID, 168);
  v1 = Instance;
  if (Instance)
  {
    C3DFXProgramInitialize(Instance);
    *(v1 + 64) = 2;
    *(v1 + 80) = 0;
    *(v1 + 88) = 0;
  }

  return v1;
}

uint64_t __C3DFXMetalProgramGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  C3DFXMetalProgramGetTypeID_typeID = result;
  qword_281741720 = _C3DFXMetalProgramCopyInstanceVariables;
  return result;
}

CFHashCode _C3DFXMetalProgramUpdateHashWithLibrary(void *a1)
{
  v2 = a1[19];
  if (v2)
  {
    v3 = 0x9DDFEA08EB382D69 * (*(v2 + 16))();
  }

  else
  {
    v3 = 0;
  }

  v4 = a1[10];
  if (v4)
  {
    v5 = CFHash(v4);
  }

  else
  {
    v5 = 0;
  }

  result = a1[11];
  if (result)
  {
    result = CFHash(result);
  }

  v7 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47))) ^ ((0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47))) >> 47));
  v8 = 0x9DDFEA08EB382D69 * (v7 ^ ((0x9DDFEA08EB382D69 * (v5 ^ v7)) >> 47) ^ (0x9DDFEA08EB382D69 * (v5 ^ v7)));
  v9 = 0x9DDFEA08EB382D69 * (v8 ^ (v8 >> 47));
  a1[21] = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v9 ^ ((0x9DDFEA08EB382D69 * (result ^ v9)) >> 47) ^ (0x9DDFEA08EB382D69 * (result ^ v9)))) ^ ((0x9DDFEA08EB382D69 * (v9 ^ ((0x9DDFEA08EB382D69 * (result ^ v9)) >> 47) ^ (0x9DDFEA08EB382D69 * (result ^ v9)))) >> 47));
  return result;
}

uint64_t C3DNotificationCenterGetSharedInstance()
{
  if (C3DNotificationCenterGetSharedInstance_onceToken != -1)
  {
    C3DNotificationCenterGetSharedInstance_cold_1();
  }

  return C3DNotificationCenterGetSharedInstance_sharedInstance;
}

uint64_t C3DNotificationCenterCreate()
{
  v3 = *MEMORY[0x277D85DE8];
  if (C3DNotificationCenterGetTypeID_onceToken != -1)
  {
    C3DNotificationCenterCreate_cold_1();
  }

  Instance = C3DTypeCreateInstance_(C3DNotificationCenterGetTypeID_typeID, 72);
  *(Instance + 16) = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v2.__sig = 0;
  *v2.__opaque = 0;
  pthread_mutexattr_init(&v2);
  pthread_mutexattr_settype(&v2, 2);
  pthread_mutex_init((Instance + 24), &v2);
  pthread_mutexattr_destroy(&v2);
  return Instance;
}

uint64_t __C3DNotificationCenterGetSharedInstance_block_invoke()
{
  result = C3DNotificationCenterCreate();
  C3DNotificationCenterGetSharedInstance_sharedInstance = result;
  return result;
}

uint64_t __C3DNotificationCenterGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  C3DNotificationCenterGetTypeID_typeID = result;
  return result;
}

void C3DNotificationCenterAddObserver(uint64_t a1, const void *a2, void (__cdecl *a3)(CFNotificationCenterRef, void *, CFNotificationName, const void *, CFDictionaryRef), const __CFString *a4, const void *a5, CFNotificationSuspensionBehavior a6)
{
  LocalCenter = CFNotificationCenterGetLocalCenter();

  CFNotificationCenterAddObserver(LocalCenter, a2, a3, a4, a5, a6);
}

void SCNMTLBufferPool::SCNMTLBufferPool(SCNMTLBufferPool *this, SCNMTLResourceManager *a2, NSString *a3, uint64_t a4, MTLStorageMode a5)
{
  *this = a2;
  *(this + 1) = a4;
  *(this + 2) = a3;
  *(this + 3) = a5;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 2) = a3;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 11) = 0;
}

void sub_21BEFC848(_Unwind_Exception *exception_object)
{
  v3 = v2;
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 40) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(exception_object);
}

void SCNMTLTexturePool::SCNMTLTexturePool(SCNMTLTexturePool *this, SCNMTLRenderContext *a2)
{
  *this = a2;
  *(this + 1) = [(SCNMTLRenderContext *)a2 resourceManager];
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 10) = 0;
}

uint64_t C3DRasterizerStatesCreate(uint64_t a1)
{
  if (C3DRasterizerStatesCreate_once != -1)
  {
    C3DRasterizerStatesCreate_cold_1();
  }

  if ((*(a1 + 8) & 1) == 0)
  {
    *(a1 + 10) = 1;
  }

  if ((*(a1 + 11) & 1) == 0)
  {
    *(a1 + 16) = 0;
    *(a1 + 13) = 16776961;
    *(a1 + 12) = 0;
    goto LABEL_9;
  }

  if ((*(a1 + 12) & 1) == 0)
  {
LABEL_9:
    *(a1 + 23) = 0;
    *(a1 + 20) = 16776961;
  }

  os_unfair_lock_lock(&s_RasterizerStatesRegistryLock);
  if (C3DRasterizerStatesGetTypeID_onceToken != -1)
  {
    C3DRasterizerStatesCreate_cold_2();
  }

  Instance = C3DTypeCreateInstance_(C3DRasterizerStatesGetTypeID_typeID, 32);
  v3 = *(a1 + 12);
  *(Instance + 16) = *a1;
  *(Instance + 28) = v3;
  Value = CFSetGetValue(s_RasterizerStatesRegistry, Instance);
  if (Value)
  {
    v5 = Value;
    CFRetain(Value);
    C3DRasterizerStatesRelease(Instance);
    Instance = v5;
  }

  else
  {
    CFSetSetValue(s_RasterizerStatesRegistry, Instance);
    *(Instance + 44) = 1;
  }

  os_unfair_lock_unlock(&s_RasterizerStatesRegistryLock);
  return Instance;
}

double C3DRasterizerStatesDescGetDefault@<D0>(_OWORD *a1@<X8>)
{
  *a1 = kDefaultRasterizerStatesDesc;
  result = *(&kDefaultRasterizerStatesDesc + 12);
  *(a1 + 12) = *(&kDefaultRasterizerStatesDesc + 12);
  return result;
}

CFMutableSetRef __C3DRasterizerStatesCreate_block_invoke()
{
  v0 = *(MEMORY[0x277CBF158] + 16);
  *&v2.version = *MEMORY[0x277CBF158];
  *&v2.release = v0;
  *&v2.equal = *(MEMORY[0x277CBF158] + 32);
  v2.retain = 0;
  v2.release = 0;
  result = CFSetCreateMutable(*MEMORY[0x277CBECE8], 0, &v2);
  s_RasterizerStatesRegistry = result;
  return result;
}

uint64_t __C3DRasterizerStatesGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  C3DRasterizerStatesGetTypeID_typeID = result;
  return result;
}

unint64_t __hashCodeFromDesc(int *a1, int8x16_t a2)
{
  a2.i32[0] = *(a1 + 13);
  a2.i16[2] = *(a1 + 17);
  a2.i8[6] = *(a1 + 19);
  a2.i32[2] = a1[5];
  a2.i16[6] = *(a1 + 12);
  a2.i8[14] = *(a1 + 26);
  v2.i64[0] = 0xFFFFFFFFFFFFFFLL;
  v2.i64[1] = 0xFFFFFFFFFFFFFFLL;
  v3 = vandq_s8(a2, v2);
  v4.i64[0] = 255;
  v4.i64[1] = 255;
  v3.i64[0] = (a2.i64[0] >> 23);
  v3.i64[1] = v3.i64[1] >> 23;
  v5 = vshlq_u64(vorrq_s8(vorrq_s8(vorrq_s8(vandq_s8(vshrq_n_u64(a2, 5uLL), vdupq_n_s64(0x7FFF8uLL)), vandq_s8(a2, v4)), vorrq_s8(vandq_s8(vshrq_n_u64(a2, 0xDuLL), vdupq_n_s64(0x7F80000uLL)), vandq_s8(vshrq_n_u64(a2, 0x12uLL), xmmword_21C2A3D40))), vandq_s8(v3, xmmword_21C2A3D50)), xmmword_21C2A3D60);
  return *(a1 + 8) | (2 * *(a1 + 9)) | (4 * *(a1 + 10)) | (32 * *(a1 + 11)) | (*(a1 + 12) << 6) | *a1 | v5.i64[0] | v5.i64[1];
}

uint64_t SCNSampleCountForAntialiasingMode(unint64_t a1)
{
  v1 = a1;
  if (a1 < 3)
  {
    return qword_21C280BC0[a1];
  }

  v3 = scn_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    SCNSampleCountForAntialiasingMode_cold_1(v1, v3);
  }

  return 1;
}

uint64_t SCNMTLDeviceSupportedSampleCountForSampleCount(void *a1, uint64_t a2)
{
  if (a2 < 2)
  {
    return 1;
  }

  v13 = v3;
  v14 = v2;
  v15 = v4;
  v16 = v5;
  v7 = (a2 - 1) | ((a2 - 1) >> 1) | (((a2 - 1) | ((a2 - 1) >> 1)) >> 2);
  v8 = v7 | (v7 >> 4) | ((v7 | (v7 >> 4)) >> 8);
  v9 = (v8 | HIWORD(v8)) + 1;
  if (v9 >= 2)
  {
    while (([a1 supportsTextureSampleCount:{v9, v13, v14, v15, v16}] & 1) == 0)
    {
      v11 = v9 >> 1;
      v12 = v9 > 3;
      v9 >>= 1;
      if (!v12)
      {
        return v11;
      }
    }
  }

  return v9;
}

void C3DEngineContextSetRenderContext(uint64_t a1, CFTypeRef cf)
{
  if (!a1 && (v4 = scn_default_log(), os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    C3DEngineContextGetScene_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    if (cf)
    {
      goto LABEL_4;
    }
  }

  else if (cf)
  {
LABEL_4:
    v12 = CFRetain(cf);
    goto LABEL_7;
  }

  v12 = 0;
LABEL_7:
  *(a1 + 1704) = v12;
  *(a1 + 1712) = [(SCNMTLRenderContext *)cf features];
  *(a1 + 214) = 3;
  if ([(SCNMTLRenderContext *)cf reverseZ])
  {
    *(a1 + 214) |= 8u;
  }

  *(a1 + 1696) = [(SCNMTLResourceManager *)cf commandQueue];
  __InstallFXContext(a1);
}

void *C3DFXContextCreate()
{
  if (C3DFXContextGetTypeID_onceToken != -1)
  {
    C3DFXContextCreate_cold_1();
  }

  Instance = C3DTypeCreateInstance_(C3DFXContextGetTypeID_typeID, 304);
  Instance[30] = C3DFramebufferRegistryCreate();
  v1 = MEMORY[0x277CBF128];
  Instance[35] = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  Instance[37] = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, v1);
  v2 = C3DAllocatorCreate(5136, 16);
  Instance[26] = v2;
  C3DAllocatorSetKeepLastPageAllocated(v2, 1);
  return Instance;
}

void __InstallFXContext(uint64_t a1)
{
  v2 = *(a1 + 160);
  if (v2)
  {
    C3DFXContextCleanup(v2, a1);
    C3DEngineContextSetFXContext(a1, 0);
  }

  v3 = C3DFXContextCreate();
  C3DEngineContextSetFXContext(a1, v3);
  if (C3DEngineContextGetScene(a1))
  {
    C3DFXContextSceneDidChange(v3, a1);
  }

  CFRelease(v3);
}

uint64_t __C3DFXContextGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  C3DFXContextGetTypeID_typeID = result;
  return result;
}

void *C3DFramebufferRegistryCreate()
{
  if (C3DFramebufferRegistryGetTypeID_onceToken != -1)
  {
    C3DFramebufferRegistryCreate_cold_1();
  }

  Instance = C3DTypeCreateInstance_(C3DFramebufferRegistryGetTypeID_typeID, 72);
  if (Instance)
  {
    v1 = MEMORY[0x277CBF150];
    Instance[6] = CFDictionaryCreateMutable(0, 0, 0, MEMORY[0x277CBF150]);
    Instance[2] = CFDictionaryCreateMutable(0, 0, 0, v1);
    Instance[3] = CFDictionaryCreateMutable(0, 0, 0, v1);
    v2 = MEMORY[0x277CBF138];
    Instance[9] = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], v1);
    Instance[4] = CFDictionaryCreateMutable(0, 0, v2, 0);
  }

  return Instance;
}

uint64_t __C3DFramebufferRegistryGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  C3DFramebufferRegistryGetTypeID_typeID = result;
  return result;
}

CFTypeRef C3DEngineContextSetFXContext(uint64_t a1, CFTypeRef cf)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DEngineContextGetStats_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  result = *(a1 + 160);
  if (result != cf)
  {
    if (result)
    {
      CFRelease(result);
      *(a1 + 160) = 0;
    }

    if (cf)
    {
      result = CFRetain(cf);
    }

    else
    {
      result = 0;
    }

    *(a1 + 160) = result;
  }

  return result;
}

uint64_t C3DEngineContextGetScene(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DEngineContextGetScene_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 16);
}

__n128 __Block_byref_object_copy__1(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 48);
  v3 = *(a2 + 64);
  *(a1 + 48) = result;
  *(a1 + 64) = v3;
  return result;
}

__n128 __Block_byref_object_copy__4(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  return result;
}

__n128 __Block_byref_object_copy__5(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 48);
  v3 = *(a2 + 64);
  *(a1 + 48) = result;
  *(a1 + 64) = v3;
  return result;
}

void *C3DTransactionGetStack()
{
  v8 = *MEMORY[0x277D85DE8];
  if (_setupTransactionIfNeeded_onceToken != -1)
  {
    C3DTransactionGetStack_cold_1();
  }

  v0 = pthread_getspecific(gTransactionKey);
  if (!v0)
  {
    v0 = malloc_type_calloc(0x38uLL, 1uLL, 0x1953CE8uLL);
    *(v0 + 2) = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
    pthread_setspecific(gTransactionKey, v0);
    _C3DTransactionBegin(1, 0.0);
    os_unfair_lock_lock(&gCommandQueueLock);
    v1 = gTransactionStacks;
    *(v0 + 1) = gTransactionStacks;
    if (v1)
    {
      *v1 = v0;
    }

    gTransactionStacks = v0;
    os_unfair_lock_unlock(&gCommandQueueLock);
    if (!*(v0 + 3))
    {
      v3 = pthread_self();
      pthread_getname_np(v3, __s1, 0x40uLL);
      if (strcmp(__s1, "com.apple.scenekit.scnview-renderer"))
      {
        Current = CFRunLoopGetCurrent();
        v5 = CFRunLoopCopyCurrentMode(Current);
        v6 = CFRunLoopObserverCreate(0, 0xA0uLL, 1u, 2000000, _commitImplicitTransaction, 0);
        *(v0 + 3) = v6;
        if (v6)
        {
          CFRunLoopAddObserver(Current, v6, *MEMORY[0x277CBF048]);
        }

        if (v5)
        {
          if (*(v0 + 3) && v5 != *MEMORY[0x277CBF058])
          {
            if (!C3DTransactionStackStartImplicitTransactionIfNeeded_tracking_mode && CFEqual(v5, @"UITrackingRunLoopMode"))
            {
              C3DTransactionStackStartImplicitTransactionIfNeeded_tracking_mode = CFRetain(v5);
              CFRunLoopAddObserver(Current, *(v0 + 3), v5);
            }

            if (v5 != C3DTransactionStackStartImplicitTransactionIfNeeded_tracking_mode)
            {
              CFRunLoopAddObserver(Current, *(v0 + 3), v5);
            }
          }

          CFRelease(v5);
        }
      }
    }
  }

  return v0;
}

const void *C3DTransactionGetCurrent()
{
  v0 = *(C3DTransactionGetStack() + 2);
  v1 = CFArrayGetCount(v0) - 1;

  return CFArrayGetValueAtIndex(v0, v1);
}

void *___setupTransactionIfNeeded_block_invoke()
{
  v2 = *MEMORY[0x277D85DE8];
  pthread_key_create(&gTransactionKey, C3DTransactionThreadDied);
  memset(&v1, 0, sizeof(v1));
  pthread_rwlockattr_init(&v1);
  pthread_rwlock_init(&gCommandQueueFlushLock, &v1);
  pthread_rwlockattr_destroy(&v1);
  result = C3DAllocatorCreate(48, 2048);
  gCommandAllocator = result;
  return result;
}

void _C3DTransactionBegin(int a1, float a2)
{
  Stack = C3DTransactionGetStack();
  if (CFArrayGetCount(*(Stack + 16)) < 1)
  {
    ValueAtIndex = 0;
  }

  else
  {
    v5 = *(Stack + 16);
    Count = CFArrayGetCount(v5);
    ValueAtIndex = CFArrayGetValueAtIndex(v5, Count - 1);
  }

  if (C3DTransactionGetTypeID_onceToken != -1)
  {
    _C3DTransactionBegin_cold_1();
  }

  Instance = C3DTypeCreateInstance_(C3DTransactionGetTypeID_typeID, 72);
  v9 = Instance;
  *(Instance + 32) = a2;
  if (a1)
  {
    v10 = 2;
  }

  else
  {
    v10 = 0;
  }

  *(Instance + 60) = *(Instance + 60) & 0xFD | v10;
  if (ValueAtIndex)
  {
    os_unfair_lock_lock(&gCommandQueueLock);
    *(v9 + 72) = CFRetain(ValueAtIndex);
    Mutable = ValueAtIndex[8];
    if (!Mutable)
    {
      Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
      ValueAtIndex[8] = Mutable;
    }

    CFArrayAppendValue(Mutable, v9);
    os_unfair_lock_unlock(&gCommandQueueLock);
    if ((*(ValueAtIndex + 60) & 2) == 0)
    {
      *(v9 + 32) = ValueAtIndex[4];
      *(v9 + 60) = *(v9 + 60) & 0xFB | *(ValueAtIndex + 60) & 4;
      v12 = *(v9 + 24);
      v13 = ValueAtIndex[3];
      if (v12 != v13)
      {
        if (v12)
        {
          CFRelease(*(v9 + 24));
          *(v9 + 24) = 0;
          v13 = ValueAtIndex[3];
        }

        if (v13)
        {
          v13 = CFRetain(v13);
        }

        *(v9 + 24) = v13;
      }
    }
  }

  CFArrayAppendValue(*(Stack + 16), v9);

  CFRelease(v9);
}

uint64_t __C3DTransactionGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  C3DTransactionGetTypeID_typeID = result;
  return result;
}

uint64_t C3DTransactionAllowImmediate(uint64_t a1, id *a2)
{
  v2 = *(a1 + 60);
  if ((v2 & 8) != 0)
  {
    v5 = (a1 + 48);
    v4 = *(a1 + 48);
    if (v4 != a2 && a2 != 0 && v4 != 0 && (C3DTransactionAllowImmediate_done & 1) == 0)
    {
      C3DTransactionAllowImmediate_done = 1;
      v8 = scn_default_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        C3DTransactionAllowImmediate_cold_1(a2, v5, v8);
      }
    }
  }

  return (v2 >> 3) & 1;
}

void C3DTransactionAddCommandBlock(const void *a1, const void *a2, const void *a3, const void *a4, const void *a5, const void *a6)
{
  if (!a6 && (v12 = scn_default_log(), os_log_type_enabled(v12, OS_LOG_TYPE_FAULT)))
  {
    C3DTransactionAddCommandBlock_cold_1(v12, v13, v14, v15, v16, v17, v18, v19);
    if (a1)
    {
      goto LABEL_6;
    }
  }

  else if (a1)
  {
    goto LABEL_6;
  }

  v20 = scn_default_log();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
  {
    C3DTransactionAddCommandBlock_cold_2(v20, v21, v22, v23, v24, v25, v26, v27);
  }

LABEL_6:
  Stack = C3DTransactionGetStack();
  os_unfair_lock_lock(&gCommandQueueLock);
  v29 = C3DAllocatorNew(gCommandAllocator);
  v30 = v29;
  *v29 = 0u;
  *(v29 + 1) = 0u;
  *(v29 + 2) = 0u;
  v31 = Stack[5];
  if (!v31)
  {
    v31 = (Stack + 4);
  }

  *v31 = v29;
  Stack[5] = v29;
  if (a4 || (a4 = a2) != 0)
  {
    v32 = CFRetain(a4);
  }

  else
  {
    v32 = 0;
  }

  *(v30 + 2) = v32;
  if (a5)
  {
    v33 = CFRetain(a5);
  }

  else
  {
    v33 = 0;
  }

  *(v30 + 3) = v33;
  if (a3)
  {
    v34 = CFRetain(a3);
  }

  else
  {
    v34 = 0;
  }

  *(v30 + 1) = v34;
  *(v30 + 5) = _Block_copy(a6);
  if (a1)
  {
    v35 = CFRetain(a1);
  }

  else
  {
    v35 = 0;
  }

  *(v30 + 4) = v35;
  os_unfair_lock_unlock(&gCommandQueueLock);
}

char *C3DAllocatorNew(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DAllocatorNew_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  FirstIndex = C3DIndexSetGetFirstIndex(*(a1 + 40));
  if (FirstIndex == -1)
  {
    v11 = *(a1 + 48);
    if (v11)
    {
      *(a1 + 48) = v11 + 1;
      v12 = malloc_type_realloc(*(a1 + 32), 16 * (v11 + 1), 0x10800409227ACB4uLL);
      *(a1 + 32) = v12;
      v13 = &v12[16 * v11];
      *v13 = malloc_type_malloc(*(a1 + 24) * *(a1 + 16), 0xB92E8EC6uLL);
      v15 = *(a1 + 24);
      *(v13 + 2) = v15;
      v16 = *(a1 + 40);
      v17 = v15 * v11;
    }

    else
    {
      v18 = malloc_type_calloc(0x10uLL, 1uLL, 0x53B3D552uLL);
      *(a1 + 32) = v18;
      *v18 = malloc_type_malloc(*(a1 + 24) * *(a1 + 16), 0xB92E8EC6uLL);
      v15 = *(a1 + 24);
      v18[2] = v15;
      *(a1 + 48) = 1;
      v16 = *(a1 + 40);
      v17 = 0;
    }

    C3DIndexSetAddIndexesInRange(v16, v17, v15, v14);
    FirstIndex = C3DIndexSetGetFirstIndex(*(a1 + 40));
  }

  C3DIndexSetRemoveIndex(*(a1 + 40), FirstIndex);
  v19 = *(a1 + 24);
  v20 = *(a1 + 32) + 16 * (FirstIndex / v19);
  --*(v20 + 8);
  v21 = *v20;
  if (!*v20)
  {
    v21 = malloc_type_malloc(*(a1 + 16) * v19, 0xB92E8EC6uLL);
    *v20 = v21;
    *(v20 + 8) = *(a1 + 24) - 1;
    --*(a1 + 56);
  }

  return &v21[*(a1 + 16) * (FirstIndex % v19)];
}

uint64_t C3DIndexSetGetFirstIndex(uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    v1 = (a1 + 24);
    if ((*(a1 + 16) & 2) != 0)
    {
      return *v1;
    }

    v2 = *v1;
    if (*(v2 + 8))
    {
      v1 = (v2 + 56);
      return *v1;
    }
  }

  return -1;
}

void C3DIndexSetRemoveIndexesInRange(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    if (a2 < 1)
    {
      v6 = 0;
    }

    else
    {
      v6 = _indexOfRangeAfterOrContainingIndex(a1, a2);
      if (v6 == -1)
      {
        return;
      }
    }

    v7 = a2 + a3;
    v8 = a1 + 24;
    while (1)
    {
      if (*(a1 + 16))
      {
        v9 = 0;
      }

      else
      {
        v9 = (*(a1 + 16) & 2) != 0 ? 1 : *(*v8 + 8);
      }

      if (v6 >= v9)
      {
        break;
      }

      v10 = a1 + 24;
      if ((*(a1 + 16) & 2) == 0)
      {
        v10 = *v8 + 56;
      }

      v11 = (v10 + 16 * v6);
      v12 = *v11;
      if (v7 < *v11)
      {
        break;
      }

      v13 = v11[1] + v12;
      if (a2 > v12)
      {
        if (v13 > v7)
        {
          _replaceRangeInArrayAtIndex(a1, v6, v7, v13 - v7);

          _insertRange(a1, v12, a2 - v12, v6);
          return;
        }

        if (a2 < v13)
        {
          _replaceRangeInArrayAtIndex(a1, v6, v12, a2 - v12);
        }

        ++v6;
      }

      else
      {
        if (v13 > v7)
        {

          _replaceRangeInArrayAtIndex(a1, v6, v7, v13 - v7);
          return;
        }

        _removeRangeInArrayAtIndex(a1, v6);
      }
    }
  }
}

void _replaceRangeInArrayAtIndex(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 16))
  {
    v4 = 0;
  }

  else if ((*(a1 + 16) & 2) != 0)
  {
    v4 = 1;
  }

  else
  {
    v4 = *(*(a1 + 24) + 8);
  }

  if (a4 <= 0)
  {

    _removeRangeInArrayAtIndex(a1, a2);
  }

  else if (v4 >= a2)
  {
    v6 = a1 + 24;
    v7 = a1 + 24;
    if ((*(a1 + 16) & 2) == 0)
    {
      v7 = *v6 + 56;
    }

    v8 = (v7 + 16 * a2);
    v9 = v8[1];
    *v8 = a3;
    v8[1] = a4;
    if ((*(a1 + 16) & 2) == 0)
    {
      *(*v6 + 48) = 0;
      *(*v6 + 16) -= v9;
      *(*v6 + 16) += a4;
    }
  }

  else
  {
    v5 = scn_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      _insertRange_cold_1();
    }
  }
}

CFTypeRef scn_NSColorFromCGColorIfApplicable(CFTypeRef cf)
{
  if (!cf)
  {
    return cf;
  }

  v2 = CFGetTypeID(cf);
  if (v2 != CGColorGetTypeID())
  {
    return cf;
  }

  v3 = MEMORY[0x277D75348];

  return [v3 colorWithCGColor:cf];
}

unint64_t C3DColor4WithCGColor(CGColor *a1, char a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      _C3DCGColorGetComponentsInColorSpace_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (!C3DLinearRenderingIsEnabled() || (a2 & 1) != 0)
  {
    goto LABEL_20;
  }

  if (C3DWideGamutIsUsed())
  {
    if (C3DColorSpaceExtendedLinearSRGB_onceToken != -1)
    {
      C3DColor4WithCGColor_cold_3();
    }

    v12 = &C3DColorSpaceExtendedLinearSRGB_kC3DColorSpaceExtendedLinearSRGB;
  }

  else
  {
    if (C3DColorSpaceLinearSRGB_onceToken != -1)
    {
      C3DColor4WithCGColor_cold_2();
    }

    v12 = &C3DColorSpaceLinearSRGB_kC3DColorSpaceLinearSRGB;
  }

  v13 = *v12;
  if (C3DWideGamutIsUsed())
  {
    if (C3DGetColorTransformToExtendedLinearSRGB_onceToken != -1)
    {
      C3DColor4WithCGColor_cold_5();
    }
  }

  else if (C3DGetColorTransformToLinearSRGB_onceToken != -1)
  {
    C3DColor4WithCGColor_cold_4();
  }

  if (CGColorGetColorSpace(a1) == v13)
  {
LABEL_20:
    v14 = CGColorRetain(a1);
  }

  else
  {
    v14 = CGColorTransformConvertColor();
  }

  v15 = v14;
  NumberOfComponents = CGColorGetNumberOfComponents(v14);
  Components = CGColorGetComponents(v15);
  if (NumberOfComponents >= 4)
  {
    goto LABEL_22;
  }

  if (!NumberOfComponents)
  {
    v19 = 0;
    v22 = 0.0;
    goto LABEL_27;
  }

  if (NumberOfComponents == 3)
  {
LABEL_22:
    v18 = *Components;
    v22 = v18;
    v19 = vcvt_f32_f64(*(Components + 1)).u32[0];
  }

  else
  {
    v20 = *Components;
    *&v20 = *Components;
    v22 = *&v20;
    v19 = vdup_lane_s32(*&v20, 0).u32[0];
  }

LABEL_27:
  CGColorRelease(v15);
  return LODWORD(v22) | (v19 << 32);
}

uint64_t C3DWideGamutIsUsed()
{
  if (C3DWideGamutIsUsed_onceToken != -1)
  {
    C3DWideGamutIsUsed_cold_1();
  }

  return C3DWideGamutIsUsed_useWideGamut;
}

uint64_t __C3DWideGamutIsUsed_block_invoke()
{
  if (C3DWasLinkedBeforeMajorOSYear2019())
  {
    v0 = C3DWasLinkedBeforeMajorOSYear2016();
    C3DWideGamutIsUsed_useWideGamut = v0 ^ 1;
    if (v0)
    {
      goto LABEL_13;
    }

    Bool = C3DPreferencesGetBool(7);
    C3DWideGamutIsUsed_useWideGamut = !Bool;
    if (Bool)
    {
      goto LABEL_13;
    }

    IsSet = C3DGetInfoPlistFlagIsSet(@"SCNDisableWideGamut", 0);
    C3DWideGamutIsUsed_useWideGamut = IsSet ^ 1;
    if (IsSet)
    {
      goto LABEL_13;
    }
  }

  else
  {
    C3DWideGamutIsUsed_useWideGamut = 0;
    C3DWideGamutIsUsed_useWideGamut = C3DPreferencesGetBool(8);
    if (C3DWideGamutIsUsed_useWideGamut)
    {
      C3DWideGamutIsUsed_useWideGamut = 1;
    }

    else
    {
      C3DWideGamutIsUsed_useWideGamut = C3DGetInfoPlistFlagIsSet(@"SCNEnableWideGamut", 0);
      if ((C3DWideGamutIsUsed_useWideGamut & 1) == 0)
      {
LABEL_13:
        result = 0;
        goto LABEL_14;
      }
    }
  }

  if (C3DMetalIsSupported_onceToken != -1)
  {
    C3DASTCIsSupported_cold_1();
  }

  C3DWideGamutIsUsed_useWideGamut = C3DMetalIsSupported_supported;
  if (C3DMetalIsSupported_supported != 1)
  {
    goto LABEL_13;
  }

  result = MGGetBoolAnswer();
LABEL_14:
  C3DWideGamutIsUsed_useWideGamut = result;
  return result;
}

CGColorSpaceRef __C3DColorSpaceLinearSRGB_block_invoke()
{
  result = CGColorSpaceCreateWithName(*MEMORY[0x277CBF4A8]);
  C3DColorSpaceLinearSRGB_kC3DColorSpaceLinearSRGB = result;
  return result;
}

uint64_t __C3DGetColorTransformToLinearSRGB_block_invoke()
{
  if (C3DColorSpaceLinearSRGB_onceToken != -1)
  {
    C3DColorSpaceLinearSRGB_cold_1();
  }

  result = MEMORY[0x21CF06B50](C3DColorSpaceLinearSRGB_kC3DColorSpaceLinearSRGB, 0);
  C3DGetColorTransformToLinearSRGB_colorTransform = result;
  return result;
}

void C3DNotificationCenterPostNotification(uint64_t a1, const __CFString *a2, const void *a3, const __CFDictionary *a4, Boolean a5)
{
  LocalCenter = CFNotificationCenterGetLocalCenter();

  CFNotificationCenterPostNotification(LocalCenter, a2, a3, a4, a5);
}

id SCNUIKitSourceSetCurrentViewEvent(id result)
{
  if (gCurrentSCNViewEvent != result)
  {
    v1 = result;

    result = v1;
    gCurrentSCNViewEvent = result;
  }

  return result;
}

uint64_t C3DWasLinkedBeforeMajorOSYear2017()
{
  if (C3DWasLinkedBeforeMajorOSYear2017_onceToken != -1)
  {
    C3DWasLinkedBeforeMajorOSYear2017_cold_1();
  }

  return C3DWasLinkedBeforeMajorOSYear2017_linkedBeforeMajorOSYear2017;
}

uint64_t __C3DWasLinkedBeforeMajorOSYear2017_block_invoke()
{
  result = C3DPreferencesGetBool(12);
  if (result)
  {
    v1 = 0;
  }

  else
  {
    result = C3DPreferencesGetBool(16);
    if (result)
    {
      v1 = 1;
    }

    else
    {
      result = dyld_program_sdk_at_least();
      v1 = result ^ 1;
    }
  }

  C3DWasLinkedBeforeMajorOSYear2017_linkedBeforeMajorOSYear2017 = v1;
  return result;
}

uint64_t C3DEngineContextGetRendererContextGL(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DEngineContextGetStats_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 136);
}

uint64_t _indexOfRangeAfterOrContainingIndex(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16))
  {
    return -1;
  }

  v2 = (a1 + 24);
  if ((*(a1 + 16) & 2) != 0)
  {
    goto LABEL_6;
  }

  v3 = *v2;
  v4 = *(v3 + 8);
  v5 = v4 == 1;
  v6 = v4 < 1;
  v7 = v4 - 1;
  if (v6)
  {
    return -1;
  }

  v2 = (v3 + 56);
  if (!v5)
  {
    v9 = 0;
    v10 = v7;
    do
    {
      result = (v10 + v9) >> 1;
      v11 = &v2[2 * result];
      if (*v11 <= a2)
      {
        if (v11[1] + *v11 > a2)
        {
          return result;
        }

        v9 = result + 1;
      }

      else
      {
        v10 = (v10 + v9) >> 1;
      }
    }

    while (v9 < v10);
    goto LABEL_7;
  }

LABEL_6:
  v7 = 0;
  v9 = 0;
LABEL_7:
  if (v2[2 * v9 + 1] + v2[2 * v9] > a2)
  {
    return v9;
  }

  if (v9 < v7)
  {
    return v9 + 1;
  }

  return -1;
}

id C3DAudioManagerGetAudioEngine(char a1)
{
  if (a1)
  {
    if (CPP3DAudioEngine::GetEngine(void)::onceToken != -1)
    {
      C3DAudioManagerAddVoice_cold_1();
    }

    v1 = gCPP3DAudioEngineInstance;

    return CPP3DAudioEngine::GetAVEngine(v1);
  }

  else if (gCPP3DAudioEngineInstance)
  {
    if (CPP3DAudioEngine::GetEngine(void)::onceToken != -1)
    {
      C3DAudioManagerAddVoice_cold_1();
    }

    return *gCPP3DAudioEngineInstance;
  }

  else
  {
    return 0;
  }
}

void sub_21BEFF0B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t C3DWasLinkedBeforeMajorOSYear2022()
{
  if (C3DWasLinkedBeforeMajorOSYear2022_onceToken != -1)
  {
    C3DWasLinkedBeforeMajorOSYear2022_cold_1();
  }

  return C3DWasLinkedBeforeMajorOSYear2022_linkedBeforeMajorOSYear2022;
}

uint64_t __C3DWasLinkedBeforeMajorOSYear2022_block_invoke()
{
  result = C3DPreferencesGetBool(12);
  if (result)
  {
    v1 = 0;
  }

  else
  {
    result = C3DPreferencesGetBool(16);
    if (result & 1) != 0 || (result = C3DPreferencesGetBool(15), (result) || (result = C3DPreferencesGetBool(14), (result) || (result = C3DPreferencesGetBool(13), (result))
    {
      v1 = 1;
    }

    else
    {
      result = dyld_program_sdk_at_least();
      v1 = result ^ 1;
    }
  }

  C3DWasLinkedBeforeMajorOSYear2022_linkedBeforeMajorOSYear2022 = v1;
  return result;
}

void _commitImplicitTransaction(uint64_t a1)
{
  os_unfair_lock_lock(&gCommandQueueLock);
  Stack = C3DTransactionGetStack();
  if (Stack && (v3 = Stack, *(Stack + 24) == a1))
  {
    v4 = pthread_main_np();
    v5 = *(v3 + 32);
    os_unfair_lock_unlock(&gCommandQueueLock);
    if (v4 != 1 || v5)
    {

      C3DTransactionFlush();
    }

    else
    {
      if (_commitImplicitTransaction_onceToken != -1)
      {
        _commitImplicitTransaction_cold_1();
      }

      v6 = _commitImplicitTransaction_queue;

      dispatch_async(v6, &__block_literal_global_21);
    }
  }

  else
  {

    os_unfair_lock_unlock(&gCommandQueueLock);
  }
}

uint64_t C3DTransactionFlush()
{
  v103 = *MEMORY[0x277D85DE8];
  result = C3DTransactionGetStack();
  if ((*(result + 52) & 4) != 0)
  {
    return result;
  }

  v1 = result;
  if (*(result + 48))
  {
    v2 = *(result + 52) | 2;
LABEL_4:
    v1[52] = v2;
    return result;
  }

  pthread_rwlock_rdlock(&gCommandQueueFlushLock);
  os_unfair_lock_lock(&gCommandQueueLock);
  v3 = gTransactionStacks;
  if (!gTransactionStacks)
  {
LABEL_9:
    os_unfair_lock_unlock(&gCommandQueueLock);

    return pthread_rwlock_unlock(&gCommandQueueFlushLock);
  }

  while (!*(v3 + 32))
  {
    v3 = *(v3 + 8);
    if (!v3)
    {
      goto LABEL_9;
    }
  }

  os_unfair_lock_unlock(&gCommandQueueLock);
  pthread_rwlock_unlock(&gCommandQueueFlushLock);
  Stack = C3DTransactionGetStack();
  pthread_rwlock_wrlock(&gCommandQueueFlushLock);
  Stack[52] |= 1u;
  kdebug_trace();
  os_unfair_lock_lock(&gCommandQueueLock);
  v5 = gTransactionStacks;
  if (!gTransactionStacks)
  {
    os_unfair_lock_unlock(&gCommandQueueLock);
LABEL_77:
    kdebug_trace();
    v1 = C3DTransactionGetStack();
    result = pthread_rwlock_unlock(&gCommandQueueFlushLock);
    v2 = v1[52] & 0xFE;
    goto LABEL_4;
  }

  v6 = 0;
  v7 = 0;
  do
  {
    v8 = 0;
    v9 = v6;
    v10 = 3.40282347e38;
    do
    {
      v11 = v8;
      v12 = *(v5 + 32);
      if (v12)
      {
        v13 = *(v12 + 32);
        v14 = *(v13 + 40);
        v15 = v14 != 0.0 && v14 < v10;
        v8 = v5;
        if (!v15)
        {
          if ((*(v13 + 60) & 2) != 0)
          {
            v8 = v5;
          }

          else
          {
            v8 = v11;
          }

          v14 = v10;
        }
      }

      else
      {
        v14 = v10;
        v8 = v11;
      }

      v5 = *(v5 + 8);
      v10 = v14;
    }

    while (v5);
    if (!v8)
    {
      break;
    }

    v16 = *(v8 + 32);
    v17 = v16[4];
    v6 = v16;
    if (v9)
    {
      if (v7)
      {
        *v7 = v16;
      }

      v6 = v9;
    }

    while (1)
    {
      v7 = v16;
      if (!v16[5] && v16[4] == v17)
      {
        break;
      }

      v16 = *v16;
      if (!*v7)
      {
        *(v8 + 32) = 0;
LABEL_35:
        *(v8 + 40) = 0;
        goto LABEL_36;
      }
    }

    v18 = *v16;
    *(v8 + 32) = *v16;
    if (!v18)
    {
      goto LABEL_35;
    }

LABEL_36:
    *v7 = 0;
    v5 = gTransactionStacks;
  }

  while (gTransactionStacks);
  os_unfair_lock_unlock(&gCommandQueueLock);
  if (!v6)
  {
    goto LABEL_77;
  }

  Mutable = CFSetCreateMutable(0, 0, MEMORY[0x277CBF158]);
  v1[52] |= 4u;
  v20 = 0;
  gAtomicTime = CACurrentMediaTime();
  v21 = v6;
  do
  {
    v22 = v21[4];
    if (v21[5])
    {
      gCurrentlyCommittedTransaction = v21[4];
      v23 = 0.0;
      if ((*(v22 + 60) & 4) == 0)
      {
        v23 = *(v22 + 32);
      }

      v24 = *(v22 + 24);
      if (!v24)
      {
        C3DTimingFunctionGetDefaultFunction();
        v24 = v25;
      }

      v26 = v21[2];
      if (v26)
      {
        if (CFTypeIsC3DEntity(v26))
        {
          v27 = C3DGetScene(v21[2]);
          if (v27)
          {
            v28 = v27;
            if (!CFSetContainsValue(Mutable, v27))
            {
              CFSetAddValue(Mutable, v28);
              C3DSceneLock(v28);
            }

            AnimationManager = C3DSceneGetAnimationManager(v28);
            if (AnimationManager)
            {
              v30 = AnimationManager;
              v31 = v21[2];
              if (v31)
              {
                v32 = v21[3];
                if (v32)
                {
                  v99 = Mutable;
                  v100 = v21[2];
                  v33 = C3DCFTypeCopyModelInfoAtPath(v31, v32, 0);
                  TargetAddress = C3DModelTargetGetTargetAddress(v33);
                  if (v33 && TargetAddress)
                  {
                    v94 = v30;
                    v35 = TargetAddress;
                    BaseType = C3DModelTargetGetBaseType(v33);
                    v36 = BYTE2(v33[1].isa);
                    v97 = v33;
                    v37 = BYTE3(v33[1].isa);
                    qmemcpy(bytes, "transition-0x", 13);
                    v98 = v35;
                    v38 = vdupq_n_s64(v35);
                    v39.i64[0] = 0xF0000000FLL;
                    v39.i64[1] = 0xF0000000FLL;
                    v40 = vandq_s8(vuzp1q_s32(vshlq_u64(v38, xmmword_21C2A2920), vshlq_u64(v38, xmmword_21C2A2910)), v39);
                    v41 = vandq_s8(vuzp1q_s32(vshlq_u64(v38, xmmword_21C2A2940), vshlq_u64(v38, xmmword_21C2A2930)), v39);
                    v42 = vandq_s8(vuzp1q_s32(vshlq_u64(v38, xmmword_21C2A2960), vshlq_u64(v38, xmmword_21C2A2950)), v39);
                    v43 = vandq_s8(vuzp1q_s32(vshlq_u64(v38, xmmword_21C2A2980), vshlq_u64(v38, xmmword_21C2A2970)), v39);
                    v44.i64[0] = 0xA0000000ALL;
                    v44.i64[1] = 0xA0000000ALL;
                    v45.i64[0] = 0x5700000057;
                    v45.i64[1] = 0x5700000057;
                    *&bytes[13] = vuzp1q_s8(vuzp1q_s16(vbslq_s8(vcgtq_u32(v44, v41), (*&v41 | __PAIR128__(0x3000000030, 0x3000000030)), vaddq_s32(v41, v45)), vbslq_s8(vcgtq_u32(v44, v40), (*&v40 | __PAIR128__(0x3000000030, 0x3000000030)), vaddq_s32(v40, v45))), vuzp1q_s16(vbslq_s8(vcgtq_u32(v44, v43), (*&v43 | __PAIR128__(0x3000000030, 0x3000000030)), vaddq_s32(v43, v45)), vbslq_s8(vcgtq_u32(v44, v42), (*&v42 | __PAIR128__(0x3000000030, 0x3000000030)), vaddq_s32(v42, v45))));
                    bytes[29] = v36 + 97;
                    bytes[30] = v37 + 97;
                    bytes[31] = 0;
                    v46 = CFStringCreateWithBytes(0, bytes, 31, 0x8000100u, 0);
                    v93 = v46;
                    if (v23 <= 0.0)
                    {
                      C3DAnimationManagerExecRemoveAnimation(v94, v100, v46);
                    }

                    else
                    {
                      cf = C3DValueCreate(BaseType, 1);
                      v47 = v33;
                      data = v33->data;
                      v88 = C3DValueGetBytes(cf);
                      Length = C3DValueGetLength(cf);
                      C3DGetValue(data, v98, v88, Length, SBYTE2(v47[1].isa), BYTE3(v47[1].isa));
                      (*(v21[5] + 16))(v23);
                      v49 = C3DValueCreate(BaseType, 1);
                      v89 = v33->data;
                      v92 = v49;
                      v50 = v49;
                      v85 = C3DValueGetBytes(v49);
                      v51 = C3DValueGetLength(v50);
                      C3DGetValue(v89, v98, v85, v51, SBYTE2(v47[1].isa), BYTE3(v47[1].isa));
                      v90 = *(v97 + 16);
                      v86 = C3DValueGetBytes(cf);
                      v52 = C3DValueGetLength(cf);
                      C3DSetValue(v90, v98, v86, v52, SBYTE2(v47[1].isa), BYTE3(v47[1].isa));
                      v53 = C3DSimpleAnimationCreate();
                      C3DAnimationSetIsSceneTimeBased(v53, 0);
                      C3DSimpleAnimationSetEndValue(v53, v92);
                      v54 = *&gAtomicTime;
                      if (*&gAtomicTime == 0.0)
                      {
                        v54 = CACurrentMediaTime();
                        gAtomicTime = *&v54;
                      }

                      C3DAnimationManagerSetSystemTime(v94, v54);
                      C3DAnimationManagerApplyAnimationsForTarget(v94, v97);
                      v87 = *(v97 + 16);
                      v84 = C3DValueGetBytes(cf);
                      v55 = C3DValueGetLength(cf);
                      C3DGetValue(v87, v98, v84, v55, *(v97 + 34), *(v97 + 35));
                      C3DSimpleAnimationSetStartValue(v53, cf);
                      C3DAnimationSetIsImplicit(v53, 1);
                      v56 = v23;
                      C3DAnimationSetDuration(v53, v56);
                      C3DAnimationSetTimingFunction(v53, v24);
                      C3DAnimationManagerExecRemoveAnimation(v94, v100, v93);
                      v33 = v97;
                      C3DAnimationManagerAddAnimationForKey(v94, v53, v97, v100, v93);
                      CFRelease(v53);
                      CFRelease(cf);
                      v57 = v92;
                      if (v92)
                      {
                        ModelValueStorage = C3DSceneGetModelValueStorage(v28);
                        C3DModelValueStorageUpdateModelValueWithValue(ModelValueStorage, v97, v92);
                        v59 = v93;
LABEL_76:
                        CFRelease(v59);
                        CFRelease(v33);
                        CFRelease(v57);
                        Mutable = v99;
                        goto LABEL_71;
                      }
                    }

                    (*(v21[5] + 16))(v23);
                    v57 = C3DValueCreate(BaseType, 1);
                    v101 = v33->data;
                    v62 = C3DValueGetBytes(v57);
                    v63 = C3DValueGetLength(v57);
                    C3DGetValue(v101, v98, v62, v63, SBYTE2(v33[1].isa), BYTE3(v33[1].isa));
                    v64 = C3DSceneGetModelValueStorage(v28);
                    C3DModelValueStorageUpdateModelValueWithValue(v64, v33, v57);
                    v59 = v93;
                    goto LABEL_76;
                  }

                  if (v33)
                  {
                    CFRelease(v33);
                  }

                  v60 = scn_default_log();
                  Mutable = v99;
                  if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
                  {
                    v61 = v21[3];
                    *bytes = 138412546;
                    *&bytes[4] = v61;
                    *&bytes[12] = 2112;
                    *&bytes[14] = v100;
                    _os_log_impl(&dword_21BEF7000, v60, OS_LOG_TYPE_DEFAULT, "Warning: invalid keypath: %@ sent to object %@", bytes, 0x16u);
                  }
                }
              }
            }
          }
        }
      }

      (*(v21[5] + 16))(v23);
LABEL_71:
      gCurrentlyCommittedTransaction = 0;
      goto LABEL_72;
    }

    if (!v20)
    {
      v20 = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
    }

    CFArrayAppendValue(v20, v22);
LABEL_72:
    v21 = *v21;
  }

  while (v21);
  if (v20)
  {
    os_unfair_lock_lock(&gCommandQueueLock);
    v105.length = CFArrayGetCount(v20);
    v105.location = 0;
    CFArrayApplyFunction(v20, v105, _transactionsDidFlush, 0);
    os_unfair_lock_unlock(&gCommandQueueLock);
    CFRelease(v20);
  }

  v65 = v6;
  do
  {
    v67 = *v65;
    v66 = v65[1];
    if (v66)
    {
      CFRelease(v66);
      v65[1] = 0;
    }

    v68 = v65[2];
    if (v68)
    {
      CFRelease(v68);
      v65[2] = 0;
    }

    v69 = v65[3];
    if (v69)
    {
      CFRelease(v69);
      v65[3] = 0;
    }

    v70 = v65[4];
    if (v70)
    {
      CFRelease(v70);
      v65[4] = 0;
    }

    v71 = v65[5];
    if (v71)
    {
      _Block_release(v71);
    }

    v65 = v67;
  }

  while (v67);
  os_unfair_lock_lock(&gCommandQueueLock);
  do
  {
    v73 = *v6;
    C3DAllocatorDelete(gCommandAllocator, v6, v72);
    v6 = v73;
  }

  while (v73);
  os_unfair_lock_unlock(&gCommandQueueLock);
  CFSetApplyFunction(Mutable, _C3DUnlockScenesAndBumpStateStamps, 0);
  LocalCenter = CFNotificationCenterGetLocalCenter();
  if (!LocalCenter)
  {
    v75 = scn_default_log();
    if (os_log_type_enabled(v75, OS_LOG_TYPE_FAULT))
    {
      C3DTransactionFlush_cold_1(v75, v76, v77, v78, v79, v80, v81, v82);
    }
  }

  CFSetApplyFunction(Mutable, _C3DPostSceneDidChangeNotifications, LocalCenter);
  v1[52] &= ~4u;
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  v83 = C3DTransactionGetStack();
  pthread_rwlock_unlock(&gCommandQueueFlushLock);
  v83[52] &= ~1u;
  return kdebug_trace();
}

uint64_t C3DGetScene(void *a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      _C3DGeometryFillLibraryForSerialization_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  if ((CFTypeIsC3DEntity(a1) & 1) == 0)
  {
    v10 = scn_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      C3DGetScene_cold_2(v10, v11, v12, v13, v14, v15, v16, v17);
    }
  }

  return a1[6];
}

const void *CFTypeIsC3DEntity(const void *result)
{
  if (result)
  {
    v1 = CFGetTypeID(result);
    if (CFTypeIsC3DEntity_onceToken != -1)
    {
      CFTypeIsC3DEntity_cold_1();
    }

    return (CFDictionaryGetValue(CFTypeIsC3DEntity__cfTypeRegistry, v1) != 0);
  }

  return result;
}

void C3DTimingFunctionGetDefaultFunction()
{
  if (!C3DTimingFunctionGetDefaultFunction_func)
  {
    C3DTimingFunctionCreateWithName(@"default");
    C3DTimingFunctionGetDefaultFunction_func = v0;
  }
}

uint64_t C3DSceneLock(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DSceneCreateHitTestResultsWithSegment_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return pthread_mutex_lock((a1 + 232));
}

uint64_t C3DSceneGetAnimationManager(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DSceneCreateHitTestResultsWithSegment_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 72);
}

void C3DTransactionGetAtomicTime()
{
  if (*&gAtomicTime == 0.0)
  {
    gAtomicTime = CACurrentMediaTime();
  }
}

void C3DAllocatorDelete(uint64_t a1, unint64_t a2, int64x2_t a3)
{
  if (!a1)
  {
    v5 = scn_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      C3DAllocatorNew_cold_1(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  v14 = (a1 + 48);
  v13 = *(a1 + 48);
  if (v13 < 1)
  {
LABEL_11:
    v22 = scn_default_log();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      C3DAllocatorDelete_cold_2(v22);
    }
  }

  else
  {
    v15 = 0;
    v16 = 0;
    v17 = *(a1 + 16);
    v18 = *(a1 + 24);
    v19 = (*(a1 + 32) + 8);
    while (1)
    {
      v20 = *(v19 - 1);
      if (v20 <= a2 && v20 + v18 * v17 > a2)
      {
        break;
      }

      ++v16;
      v19 += 4;
      v15 += 16;
      if (!--v13)
      {
        goto LABEL_11;
      }
    }

    C3DIndexSetAddIndex(*(a1 + 40), (a2 - v20) / v17 + v16 * v18, a3);
    v23 = *v19 + 1;
    *v19 = v23;
    if (*(a1 + 24) == v23 && (!*(a1 + 64) || *v14 >= 2))
    {
      ++*(a1 + 56);
      free(*(*(a1 + 32) + v15));
      v24 = *(a1 + 32);
      *&v24[v15] = 0;
      if (*(a1 + 56) == *(a1 + 48))
      {
        free(v24);
        *(a1 + 32) = 0;
        C3DIndexSetRemoveAllIndexes(*(a1 + 40));
        *v14 = 0;
        *(a1 + 56) = 0;
      }
    }
  }
}

void _insertRange(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 16))
  {
    v8 = 0;
  }

  else if ((*(a1 + 16) & 2) != 0)
  {
    v8 = 1;
  }

  else
  {
    v8 = *(*(a1 + 24) + 8);
  }

  if (v8 >= a4)
  {
    _ensureRangeCapacity(a1, v8 + 1);
    v10 = (a1 + 24);
    if ((*(a1 + 16) & 2) == 0)
    {
      v10 = (*v10 + 56);
    }

    if (v8 > a4)
    {
      v11 = &v10[2 * v8];
      do
      {
        --v8;
        *v11 = *(v11 - 1);
        --v11;
      }

      while (v8 > a4);
    }

    v12 = &v10[2 * a4];
    *v12 = a2;
    v12[1] = a3;
    v13 = *(a1 + 16);
    if ((v13 & 2) == 0)
    {
      *(*(a1 + 24) + 48) = 0;
      ++*(*(a1 + 24) + 8);
      *(*(a1 + 24) + 16) += a3;
      v13 = *(a1 + 16);
    }

    *(a1 + 16) = v13 & 0xFE;
  }

  else
  {
    v9 = scn_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      _insertRange_cold_1();
    }
  }
}

void _removeRangeInArrayAtIndex(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = 0;
  }

  else if ((*(a1 + 16) & 2) != 0)
  {
    v3 = 1;
  }

  else
  {
    v3 = *(*(a1 + 24) + 8);
  }

  if (v3 >= a2)
  {
    v5 = (a1 + 24);
    if ((*(a1 + 16) & 2) == 0)
    {
      v5 = (*v5 + 56);
    }

    v6 = &v5[2 * a2];
    v7 = v6[1];
    if (a2 + 1 < v3)
    {
      v8 = v6 + 2;
      v9 = ~a2 + v3;
      do
      {
        *(v8 - 1) = *v8;
        ++v8;
        --v9;
      }

      while (v9);
      v2 = *(a1 + 16);
    }

    if ((v2 & 2) != 0)
    {
      v10 = v2 | 1;
    }

    else
    {
      *(*(a1 + 24) + 48) = 0;
      --*(*(a1 + 24) + 8);
      *(*(a1 + 24) + 16) -= v7;
      v10 = *(a1 + 16) & 0xFE;
      if (!*(*(a1 + 24) + 8))
      {
        ++v10;
      }
    }

    *(a1 + 16) = v10;
  }

  else
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      _insertRange_cold_1();
    }
  }
}

void C3DIndexSetRemoveAllIndexes(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 2) == 0)
  {
    v3 = *(a1 + 24);
    if (v3)
    {
      free(v3);
      v2 = *(a1 + 16);
    }

    *(a1 + 24) = 0;
  }

  *(a1 + 16) = v2 | 3;
}

uint64_t _C3DUnlockScenesAndBumpStateStamps(uint64_t a1)
{
  C3DSceneBumpStateStamp(a1);

  return C3DSceneUnlock(a1);
}

uint64_t C3DSceneUnlock(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DSceneCreateHitTestResultsWithSegment_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return pthread_mutex_unlock((a1 + 232));
}

void C3DSceneBumpStateStamp(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DSceneCreateHitTestResultsWithSegment_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  ++*(a1 + 300);
}

void _C3DPostSceneDidChangeNotifications(void *object, CFNotificationCenterRef center)
{
  if (center)
  {
    CFNotificationCenterPostNotificationWithOptions(center, @"kC3DSceneDidUpdateNotification", object, 0, 4uLL);
  }
}

__n128 C3DShapeMeshCreationInitProfile(uint64_t a1, __n128 *a2)
{
  v4 = *(a1 + 40);
  Mutable = v4;
  if (!v4)
  {
    Mutable = CGPathCreateMutable();
    CGPathMoveToPoint(Mutable, 0, 0.0, 1.0);
    CGPathAddArcToPoint(Mutable, 0, 1.0, 1.0, 1.0, 0.0, 1.0);
  }

  v19 = 0;
  v18 = 0;
  v16 = 0u;
  v17 = 0u;
  v6 = C3DShapeBoundaryMakeWithCGPath(Mutable, &v19, *(a1 + 4) * 0.1, 1.79769313e308);
  v7 = v6;
  if (!v6)
  {
    v10 = 0;
    v8 = 0;
    v9 = 0;
    goto LABEL_16;
  }

  v8 = v6->n128_u32[2];
  if (v8 < 2)
  {
    v8 = 0;
    v10 = 0;
LABEL_9:
    v11 = scn_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      C3DShapeMeshCreationInitProfile_cold_1(v11);
    }

    v9 = 0;
    goto LABEL_12;
  }

  v9 = v6->n128_u64[0];
  v10 = v6->n128_u32[3];
  v16 = v6[1];
  v17 = v6[2];
  v18 = v6[3].n128_u64[0];
  if (!v6->n128_u64[0])
  {
    goto LABEL_9;
  }

LABEL_12:
  if (*(v9 + 72) == 1)
  {
    *(v9 + 72) = 0;
    *(v9 + 16) = *(v9 + 32);
    --v10;
  }

  v12 = v9 + 80 * (v8 - 1);
  v14 = *(v12 + 72);
  v13 = (v12 + 72);
  if (v14 == 1)
  {
    *v13 = 0;
    --v10;
  }

LABEL_16:
  if (!v4)
  {
    CGPathRelease(Mutable);
  }

  a2[2].n128_u64[0] = v9;
  a2[2].n128_u32[2] = v8;
  a2[2].n128_u32[3] = v10;
  result = v16;
  a2[3] = v16;
  a2[4] = v17;
  a2[5].n128_u64[0] = v18;
  a2[5].n128_u64[1] = v7;
  a2[1].n128_u32[3] = v19;
  return result;
}

int32x2_t C3DShapeMeshCreationInitMisc(unsigned int a1, unsigned int a2, uint64_t a3, char a4)
{
  if (a1)
  {
    v8 = 12 * a1;
    *(a3 + 112) = malloc_type_malloc(v8, 0x10000403E1C8BA9uLL);
    *(a3 + 120) = malloc_type_malloc(v8, 0x10000403E1C8BA9uLL);
    v9 = malloc_type_malloc(8 * a1, 0x100004000313F17uLL);
  }

  else
  {
    v9 = 0;
    *(a3 + 112) = 0;
    *(a3 + 120) = 0;
  }

  *(a3 + 104) = v9;
  *(a3 + 96) = 0;
  if (a2)
  {
    v10 = malloc_type_malloc(8 * a2, 0x2004093837F09uLL);
  }

  else
  {
    v10 = 0;
  }

  *(a3 + 128) = v10;
  *(a3 + 98) = 0;
  *(a3 + 136) = 0;
  *(a3 + 168) = 0;
  *(a3 + 176) = 0;
  *(a3 + 144) = 0;
  *(a3 + 152) = 0;
  *(a3 + 160) = 0;
  *(a3 + 184) = 0;
  *(a3 + 192) = 0;
  *(a3 + 24) = a4;
  if (C3DWasLinkedBeforeMajorOSYear2013())
  {
    *(a3 + 24) = 1;
  }

  *a3 = xmmword_21C27F5D0;
  result = vdup_n_s32(0xC9742400);
  *(a3 + 16) = result;
  return result;
}

void C3DShapeMeshCreationAppendShape(uint64_t a1, uint64_t a2, uint64_t a3, char a4, double a5, double a6)
{
  v9 = a2;
  v10 = a1;
  v11 = *(a1 + 24);
  v243[0] = MEMORY[0x277D85DD0];
  v243[1] = 0x40000000;
  v244 = __C3DShapeMeshCreationAppendShape_block_invoke;
  v245 = &__block_descriptor_tmp;
  v246 = a3;
  v247 = a4;
  v12 = *(a2 + 8);
  if (*(a3 + 24) == 1)
  {
    v13 = v11;
    *(a3 + 136) = v11;
    v14 = 2 * v11;
    *(a3 + 144) = malloc_type_malloc(v14, 0x1000040BDFB0063uLL);
    if (*(v9 + 8) == 0.0)
    {
      v15 = 0;
    }

    else
    {
      v15 = malloc_type_malloc(v14, 0x1000040BDFB0063uLL);
    }

    v16 = 0;
  }

  else
  {
    v16 = *(a3 + 136);
    v13 = v11;
    v17 = v16 + v11;
    *(a3 + 136) = v17;
    *(a3 + 144) = malloc_type_realloc(*(a3 + 144), 2 * v17, 0x1000040BDFB0063uLL);
    if (*(v9 + 8) == 0.0)
    {
      v15 = 0;
    }

    else
    {
      v15 = malloc_type_realloc(*(a3 + 152), 2 * *(a3 + 136), 0x1000040BDFB0063uLL);
    }
  }

  v18 = v12 * 0.5;
  *(a3 + 152) = v15;
  if (v13)
  {
    v21 = *(a3 + 112);
    v20 = *(a3 + 120);
    v22 = *(a3 + 144);
    v23 = v13;
    v24 = *(a3 + 96);
    v25 = *(v10 + 32);
    v26 = 48;
    if (*(v9 + 16) == 2)
    {
      v26 = 0;
    }

    v27 = 56;
    if (*(v9 + 16) == 2)
    {
      v27 = 8;
    }

    v28 = v16;
    do
    {
      v29 = v20 + 12 * v24;
      *v29 = 0;
      *(v29 + 8) = 1065353216;
      v30 = (v21 + 12 * v24);
      v31 = *v25++;
      v32 = a5 + *(v31 + v26);
      v33.f32[0] = a6 + *(v31 + v27);
      v30->f32[0] = v32;
      v30->i32[1] = v33.i32[0];
      v19 = v18;
      v30[1].f32[0] = v19;
      if (*a3 <= v32)
      {
        v32 = *a3;
      }

      *a3 = v32;
      v33.f32[1] = v18;
      *(a3 + 4) = vbsl_s8(vcgt_f32(*(a3 + 4), v33), v33, *(a3 + 4));
      v34 = v30[1].f32[0];
      if (v34 <= *(a3 + 20))
      {
        v34 = *(a3 + 20);
      }

      *(a3 + 12) = vbsl_s8(vcgt_f32(*v30, *(a3 + 12)), *v30, *(a3 + 12));
      *(a3 + 20) = v34;
      *&v22[2 * v28] = v24;
      v24 = *(a3 + 96) + 1;
      *(a3 + 96) = v24;
      ++v28;
      --v23;
    }

    while (v23);
  }

  else
  {
    v22 = *(a3 + 144);
  }

  v244(v243, 0, *(a3 + 136) / 3uLL, v22, *(a3 + 136));
  if (*(v9 + 8) > 0.0)
  {
    if (v13)
    {
      v35 = v18;
      v36 = -v35;
      v38 = *(a3 + 112);
      v37 = *(a3 + 120);
      v39 = *(a3 + 152);
      v40 = v13;
      v41 = *(a3 + 96);
      v42 = *(v10 + 32);
      v43 = 48;
      if (*(v9 + 16) == 1)
      {
        v43 = 0;
      }

      v44 = 56;
      if (*(v9 + 16) == 1)
      {
        v44 = 8;
      }

      v45 = v13 + v16 - 1;
      do
      {
        v46 = v37 + 12 * v41;
        *v46 = 0;
        *(v46 + 8) = -1082130432;
        v47 = (v38 + 12 * v41);
        v48 = *v42++;
        v49 = a5 + *(v48 + v43);
        v50.f32[0] = a6 + *(v48 + v44);
        v47->f32[0] = v49;
        v47->i32[1] = v50.i32[0];
        v47[1].f32[0] = v36;
        if (*a3 <= v49)
        {
          v49 = *a3;
        }

        *a3 = v49;
        v50.f32[1] = v36;
        *(a3 + 4) = vbsl_s8(vcgt_f32(*(a3 + 4), v50), v50, *(a3 + 4));
        v51 = v47[1].f32[0];
        if (v51 <= *(a3 + 20))
        {
          v51 = *(a3 + 20);
        }

        *(a3 + 12) = vbsl_s8(vcgt_f32(*v47, *(a3 + 12)), *v47, *(a3 + 12));
        *(a3 + 20) = v51;
        *&v39[2 * v45] = v41;
        v41 = *(a3 + 96) + 1;
        *(a3 + 96) = v41;
        --v45;
        --v40;
      }

      while (v40);
    }

    else
    {
      v39 = *(a3 + 152);
    }

    v244(v243, 0, *(a3 + 136) / 3uLL, v39, *(a3 + 136));
  }

  if (v18 > 0.0)
  {
    v52 = *(v10 + 48);
    if (v52)
    {
      v53 = 0;
      v54 = 0;
      do
      {
        v55 = *(v10 + 40) + 32 * v53;
        v56 = *(v55 + 8);
        if (v56)
        {
          v57 = (*v55 + 8);
          do
          {
            v58 = *v57;
            v57 += 14;
            v54 += v58;
            --v56;
          }

          while (v56);
        }

        ++v53;
      }

      while (v53 != v52);
      LODWORD(v52) = 6 * v54;
    }

    if (*(a3 + 24) == 1)
    {
      *(a3 + 160) = 0;
      v59 = malloc_type_malloc(2 * v52, 0x1000040BDFB0063uLL);
    }

    else
    {
      v59 = malloc_type_realloc(*(a3 + 168), 2 * (*(a3 + 160) + v52), 0x1000040BDFB0063uLL);
    }

    v60 = v59;
    *(a3 + 168) = v59;
    v61 = *(v10 + 48);
    if (v61)
    {
      for (i = 0; i < v61; ++i)
      {
        v64 = *(v10 + 40) + 32 * i;
        v65 = *(v64 + 8);
        if (v65)
        {
          v66 = 0;
          v67 = *v64;
          do
          {
            v68 = (v67 + 56 * v66);
            v69 = *(v68 + 2);
            v70 = *(a3 + 96);
            if (v69)
            {
              v71 = *v68;
              v72 = *(a3 + 112);
              v73 = v69 - 1;
              v74 = *(a3 + 96);
              do
              {
                v75 = v71 + 80 * v73;
                v76 = *(v75 + 16);
                v77 = *(v75 + 64);
                v78 = a5 + *v75;
                v79 = a6 + *(v75 + 8);
                v80 = v18 - v77;
                v81 = *(v9 + 16);
                if (v81 == 2)
                {
                  v80 = v18;
                }

                v82 = v77 - v18;
                if (v81 == 1)
                {
                  v63 = v18;
                  v82 = -v63;
                }

                if (*(v75 + 72))
                {
                  v83 = v74 + 1;
                  v84 = v74 + 2;
                  v85 = (v72 + 12 * v74);
                  *v85 = v78;
                  v85[1] = v79;
                  v85[2] = v80;
                  *(a3 + 96) = v84;
                  v86 = (v72 + 12 * v83);
                  *v86 = v78;
                  v86[1] = v79;
                  v86[2] = v82;
                  v87 = *(a3 + 120) + 12 * v84;
                  *(v87 - 12) = vcvt_f32_f64(*(v75 + 32));
                  *(v87 - 4) = 0;
                  *(v87 - 16) = 0;
                  *(v87 - 24) = *(v87 - 12);
                  v74 = *(a3 + 96);
                  v72 = *(a3 + 112);
                }

                v88 = *(a3 + 168);
                v89 = *(a3 + 160);
                *(v88 + 2 * v89) = v74;
                *(v88 + 2 * (v89 + 1)) = *(a3 + 96) + 1;
                *(v88 + 2 * (v89 + 2)) = *(a3 + 96) + 3;
                v90 = *(a3 + 96);
                *(v88 + 2 * (v89 + 3)) = v90;
                *(v88 + 2 * (v89 + 4)) = v90 + 3;
                v91 = *(a3 + 96) + 2;
                *(a3 + 160) = v89 + 6;
                *(v88 + 2 * (v89 + 5)) = v91;
                v92 = *(a3 + 96);
                LOWORD(v88) = v92 + 1;
                v93 = (v72 + 12 * v92);
                *v93 = v78;
                v93[1] = v79;
                v93[2] = v80;
                v92 += 2;
                *(a3 + 96) = v92;
                v94 = (v72 + 12 * v88);
                *v94 = v78;
                v94[1] = v79;
                v94[2] = v82;
                v95 = *(a3 + 120) + 12 * v92;
                *(v95 - 12) = vcvt_f32_f64(v76);
                *(v95 - 4) = 0;
                *(v95 - 16) = 0;
                *(v95 - 24) = *(v95 - 12);
                v72 = *(a3 + 112);
                v74 = *(a3 + 96);
                v96 = v72 + 12 * v74;
                v97 = *(v96 - 16);
                if (v97 >= *(a3 + 8))
                {
                  v97 = *(a3 + 8);
                }

                v98 = *(a3 + 20);
                v99 = vbsl_s8(vcgt_f32(*a3, *(v96 - 24)), *(v96 - 24), *a3);
                *a3 = v99;
                *(a3 + 8) = v97;
                if (*(v96 - 16) > v98)
                {
                  v98 = *(v96 - 16);
                }

                v100 = vbsl_s8(vcgt_f32(*(v96 - 24), *(a3 + 12)), *(v96 - 24), *(a3 + 12));
                *(a3 + 12) = v100;
                *(a3 + 20) = v98;
                v101 = vbsl_s8(vcgt_f32(v99, *(v96 - 12)), *(v96 - 12), v99);
                if (*(v96 - 4) < v97)
                {
                  v97 = *(v96 - 4);
                }

                *a3 = v101;
                *(a3 + 8) = v97;
                v102 = vbsl_s8(vcgt_f32(*(v96 - 12), v100), *(v96 - 12), v100);
                if (*(v96 - 4) > v98)
                {
                  v98 = *(v96 - 4);
                }

                *(a3 + 12) = v102;
                *(a3 + 20) = v98;
                --v73;
                --v69;
              }

              while (v69);
              v60 = *(a3 + 168);
            }

            v103 = *(a3 + 160);
            *&v60[2 * (v103 - 1)] = v70;
            v104 = v70 + 1;
            *&v60[2 * (v103 - 4)] = v104;
            *&v60[2 * (v103 - 2)] = v104;
            ++v66;
          }

          while (v66 != v65);
          v61 = *(v10 + 48);
        }
      }
    }

    v244(v243, 0, *(a3 + 160) / 3uLL, v60, *(a3 + 160));
  }

  if (*(v9 + 12) > 0.0)
  {
    v105 = *(v10 + 48);
    if (v105)
    {
      v106 = 0;
      v107 = 0;
      do
      {
        v108 = *(v10 + 40) + 32 * v106;
        v109 = *(v108 + 8);
        if (v109)
        {
          v110 = (*v108 + 8);
          do
          {
            v111 = *v110;
            v110 += 14;
            v107 += v111;
            --v109;
          }

          while (v109);
        }

        ++v106;
      }

      while (v106 != v105);
    }

    else
    {
      v107 = 0;
    }

    if (*(a3 + 24) == 1)
    {
      v112 = (6 * *(a3 + 40) - 6) * v107;
      *(a3 + 176) = v112;
      *(a3 + 184) = malloc_type_malloc(2 * v112, 0x1000040BDFB0063uLL);
      v113 = malloc_type_malloc(2 * *(a3 + 176), 0x1000040BDFB0063uLL);
      v114 = 0;
    }

    else
    {
      v114 = *(a3 + 176);
      v115 = v114 + (6 * *(a3 + 40) - 6) * v107;
      *(a3 + 176) = v115;
      *(a3 + 184) = malloc_type_realloc(*(a3 + 184), 2 * v115, 0x1000040BDFB0063uLL);
      v113 = malloc_type_realloc(*(a3 + 192), 2 * *(a3 + 176), 0x1000040BDFB0063uLL);
    }

    *(a3 + 192) = v113;
    v236[0] = MEMORY[0x277D85DD0];
    v236[1] = 0x40000000;
    v237 = __C3DShapeMeshCreationAppendShape_block_invoke_2;
    v238 = &__block_descriptor_tmp_3;
    v239 = a3;
    v240 = a5;
    v241 = a6;
    v242 = v18;
    v200 = v10;
    if (*(v9 + 16) == 2)
    {
      free(*(a3 + 184));
    }

    else
    {
      v199 = v9;
      v116 = *(v10 + 48);
      if (v116)
      {
        v117 = 0;
        v118 = 0;
        do
        {
          v119 = *(v200 + 40) + 32 * v117;
          v205 = *(v119 + 8);
          if (v205)
          {
            v120 = 0;
            v201 = *v119;
            v203 = v117;
            LODWORD(v121) = *(a3 + 40);
            do
            {
              if (v121)
              {
                v122 = 0;
                v207 = v120;
                v123 = (v201 + 56 * v120);
                v124 = *v123;
                v125 = *(v123 + 2);
                v126 = *(v123 + 3);
                v209 = v125 - 1;
                v219 = v125;
                do
                {
                  v221 = v122;
                  v127 = *(a3 + 32) + 80 * v122;
                  v128 = *v127;
                  v129 = *(v127 + 8);
                  v215 = *(v127 + 40);
                  v217 = *(v127 + 32);
                  v211 = *(a3 + 96);
                  v213 = *(v127 + 72);
                  if (v125)
                  {
                    v131 = *(v127 + 16);
                    v130 = *(v127 + 24);
                    v132 = v209;
                    do
                    {
                      v133 = (v124 + 80 * v132);
                      v235 = *v133;
                      v134 = *(v133 + 2);
                      v135 = *(v133 + 3);
                      v136 = *(v133 + 4);
                      v137 = *(v133 + 5);
                      v233 = v133[3];
                      v234 = *(v133 + 8);
                      v138 = *(v133 + 72);
                      v232[0] = *(v133 + 73);
                      *(v232 + 3) = *(v133 + 19);
                      if (v138)
                      {
                        v223 = v235;
                        v224 = v134;
                        v225 = v135;
                        v226 = v136;
                        v227 = v137;
                        v228 = v233;
                        v229 = v234;
                        v230 = v138;
                        v231[0] = v232[0];
                        *(v231 + 3) = *(v232 + 3);
                        (v237)(v236, &v223, v136, v137, 1.0, v128, v129, v131, v130);
                      }

                      if (v221)
                      {
                        v139 = *(a3 + 96);
                        v140 = *(a3 + 184);
                        *(v140 + 2 * (v114 + v118)) = v139;
                        *(v140 + 2 * (v114 + (v118 + 1))) = v139 - v126;
                        *(v140 + 2 * (v114 + (v118 + 2))) = *(a3 + 96) - v126 + 1;
                        v141 = *(a3 + 96);
                        *(v140 + 2 * (v114 + (v118 + 3))) = v141;
                        v142 = v141 - v126 + 1;
                        v143 = v118 + 5;
                        *(v140 + 2 * (v114 + (v118 + 4))) = v142;
                        v118 += 6;
                        *(v140 + 2 * (v114 + v143)) = *(a3 + 96) + 1;
                      }

                      v223 = v235;
                      v224 = v134;
                      v225 = v135;
                      v226 = v136;
                      v227 = v137;
                      v228 = v233;
                      v229 = v234;
                      v230 = v138;
                      v231[0] = v232[0];
                      *(v231 + 3) = *(v232 + 3);
                      (v237)(v236, &v223, v134, v135, 1.0, v128, v129, v131, v130);
                      v144 = *(a3 + 112) + 12 * *(a3 + 96);
                      v145 = *(v144 - 4);
                      if (v145 >= *(a3 + 8))
                      {
                        v145 = *(a3 + 8);
                      }

                      *a3 = vbsl_s8(vcgt_f32(*a3, *(v144 - 12)), *(v144 - 12), *a3);
                      *(a3 + 8) = v145;
                      v146 = *(v144 - 4);
                      if (v146 <= *(a3 + 20))
                      {
                        v146 = *(a3 + 20);
                      }

                      *(a3 + 12) = vbsl_s8(vcgt_f32(*(v144 - 12), *(a3 + 12)), *(v144 - 12), *(a3 + 12));
                      *(a3 + 20) = v146;
                      --v132;
                      --v125;
                    }

                    while (v125);
                  }

                  if (v221)
                  {
                    v147 = *(a3 + 184);
                    v148 = v114 + v118;
                    *(v147 + 2 * (v148 - 1)) = v211;
                    *(v147 + 2 * (v148 - 4)) = v211 - v126;
                    *(v147 + 2 * (v148 - 2)) = v211 - v126;
                  }

                  if (v219 && (v213 & 1) != 0)
                  {
                    v149 = v219;
                    v150 = v209;
                    do
                    {
                      v151 = (v124 + 80 * v150);
                      v235 = *v151;
                      v152 = *(v151 + 2);
                      v153 = *(v151 + 3);
                      v154 = *(v151 + 4);
                      v155 = *(v151 + 5);
                      v233 = v151[3];
                      v234 = *(v151 + 8);
                      v156 = *(v151 + 72);
                      v232[0] = *(v151 + 73);
                      *(v232 + 3) = *(v151 + 19);
                      v157 = v237;
                      if (v156)
                      {
                        v223 = v235;
                        v224 = v152;
                        v225 = v153;
                        v226 = v154;
                        v227 = v155;
                        v228 = v233;
                        v229 = v234;
                        v230 = v156;
                        v231[0] = v232[0];
                        *(v231 + 3) = *(v232 + 3);
                        (v237)(v236, &v223, v154, v155, 1.0, v128, v129, v217, v215);
                        v157 = v237;
                      }

                      v223 = v235;
                      v224 = v152;
                      v225 = v153;
                      v226 = v154;
                      v227 = v155;
                      v228 = v233;
                      v229 = v234;
                      v230 = v156;
                      v231[0] = v232[0];
                      *(v231 + 3) = *(v232 + 3);
                      (v157)(v236, &v223, v152, v153, 1.0, v128, v129, v217, v215);
                      --v150;
                      --v149;
                    }

                    while (v149);
                  }

                  v125 = v219;
                  v122 = v221 + 1;
                  v121 = *(a3 + 40);
                }

                while (v221 + 1 < v121);
                v117 = v203;
                v120 = v207;
              }

              ++v120;
            }

            while (v120 != v205);
            v116 = *(v200 + 48);
          }

          ++v117;
        }

        while (v117 < v116);
      }

      v244(v243, 0, *(a3 + 176) / 3uLL, *(a3 + 184), *(a3 + 176));
      v10 = v200;
      v9 = v199;
    }

    if (*(v9 + 16) == 1)
    {
      free(*(a3 + 192));
    }

    else
    {
      v158 = *(v10 + 48);
      if (v158)
      {
        v159 = 0;
        v160 = 0;
        do
        {
          v161 = *(v200 + 40) + 32 * v159;
          v206 = *(v161 + 8);
          if (v206)
          {
            v162 = 0;
            v202 = *v161;
            v204 = v159;
            LODWORD(v163) = *(a3 + 40);
            do
            {
              if (v163)
              {
                v164 = 0;
                v208 = v162;
                v165 = (v202 + 56 * v162);
                v166 = *v165;
                v168 = *(v165 + 2);
                v167 = *(v165 + 3);
                v210 = v168 - 1;
                v220 = v168;
                do
                {
                  v222 = v164;
                  v169 = *(a3 + 32) + 80 * v164;
                  v170 = *v169;
                  v171 = *(v169 + 8);
                  v216 = *(v169 + 40);
                  v218 = *(v169 + 32);
                  v212 = *(a3 + 96);
                  v214 = *(v169 + 72);
                  if (v168)
                  {
                    v173 = *(v169 + 16);
                    v172 = *(v169 + 24);
                    v174 = v210;
                    do
                    {
                      v175 = (v166 + 80 * v174);
                      v235 = *v175;
                      v176 = *(v175 + 2);
                      v177 = *(v175 + 3);
                      v178 = *(v175 + 4);
                      v179 = *(v175 + 5);
                      v233 = v175[3];
                      v234 = *(v175 + 8);
                      v180 = *(v175 + 72);
                      v232[0] = *(v175 + 73);
                      *(v232 + 3) = *(v175 + 19);
                      if (v180)
                      {
                        v223 = v235;
                        v224 = v176;
                        v225 = v177;
                        v226 = v178;
                        v227 = v179;
                        v228 = v233;
                        v229 = v234;
                        v230 = v180;
                        v231[0] = v232[0];
                        *(v231 + 3) = *(v232 + 3);
                        (v237)(v236, &v223, v178, v179, -1.0, v170, v171, v173, v172);
                      }

                      if (v222)
                      {
                        v181 = *(a3 + 96);
                        v182 = *(a3 + 192);
                        *(v182 + 2 * (v114 + v160)) = v181;
                        *(v182 + 2 * (v114 + (v160 + 1))) = v181 - v167 + 1;
                        *(v182 + 2 * (v114 + (v160 + 2))) = *(a3 + 96) - v167;
                        v183 = *(a3 + 96);
                        *(v182 + 2 * (v114 + (v160 + 3))) = v183;
                        v184 = v183 + 1;
                        v185 = v160 + 5;
                        *(v182 + 2 * (v114 + (v160 + 4))) = v184;
                        v160 += 6;
                        *(v182 + 2 * (v114 + v185)) = *(a3 + 96) - v167 + 1;
                      }

                      v223 = v235;
                      v224 = v176;
                      v225 = v177;
                      v226 = v178;
                      v227 = v179;
                      v228 = v233;
                      v229 = v234;
                      v230 = v180;
                      v231[0] = v232[0];
                      *(v231 + 3) = *(v232 + 3);
                      (v237)(v236, &v223, v176, v177, -1.0, v170, v171, v173, v172);
                      v186 = *(a3 + 112) + 12 * *(a3 + 96);
                      v187 = *(v186 - 4);
                      if (v187 >= *(a3 + 8))
                      {
                        v187 = *(a3 + 8);
                      }

                      *a3 = vbsl_s8(vcgt_f32(*a3, *(v186 - 12)), *(v186 - 12), *a3);
                      *(a3 + 8) = v187;
                      v188 = *(v186 - 4);
                      if (v188 <= *(a3 + 20))
                      {
                        v188 = *(a3 + 20);
                      }

                      *(a3 + 12) = vbsl_s8(vcgt_f32(*(v186 - 12), *(a3 + 12)), *(v186 - 12), *(a3 + 12));
                      *(a3 + 20) = v188;
                      --v174;
                      --v168;
                    }

                    while (v168);
                  }

                  if (v222)
                  {
                    v189 = *(a3 + 192);
                    v190 = v114 + v160;
                    *(v189 + 2 * (v190 - 2)) = v212;
                    *(v189 + 2 * (v190 - 1)) = v212 - v167;
                    *(v189 + 2 * (v190 - 5)) = v212 - v167;
                  }

                  if (v220 && (v214 & 1) != 0)
                  {
                    v191 = v220;
                    v192 = v210;
                    do
                    {
                      v193 = (v166 + 80 * v192);
                      v235 = *v193;
                      v194 = *(v193 + 2);
                      v195 = *(v193 + 3);
                      v196 = *(v193 + 4);
                      v197 = *(v193 + 5);
                      v233 = v193[3];
                      v234 = *(v193 + 8);
                      v198 = *(v193 + 72);
                      v232[0] = *(v193 + 73);
                      *(v232 + 3) = *(v193 + 19);
                      if (v198)
                      {
                        v223 = v235;
                        v224 = v194;
                        v225 = v195;
                        v226 = v196;
                        v227 = v197;
                        v228 = v233;
                        v229 = v234;
                        v230 = v198;
                        v231[0] = v232[0];
                        *(v231 + 3) = *(v232 + 3);
                        (v237)(v236, &v223, v196, v197, -1.0, v170, v171, v218, v216);
                      }

                      v223 = v235;
                      v224 = v194;
                      v225 = v195;
                      v226 = v196;
                      v227 = v197;
                      v228 = v233;
                      v229 = v234;
                      v230 = v198;
                      v231[0] = v232[0];
                      *(v231 + 3) = *(v232 + 3);
                      (v237)(v236, &v223, v194, v195, -1.0, v170, v171, v218, v216);
                      --v192;
                      --v191;
                    }

                    while (v191);
                  }

                  v168 = v220;
                  v164 = v222 + 1;
                  v163 = *(a3 + 40);
                }

                while (v222 + 1 < v163);
                v159 = v204;
                v162 = v208;
              }

              ++v162;
            }

            while (v162 != v206);
            v158 = *(v200 + 48);
          }

          ++v159;
        }

        while (v159 < v158);
      }

      v244(v243, 0, *(a3 + 176) / 3uLL, *(a3 + 192), *(a3 + 176));
    }
  }
}

void __C3DShapeMeshCreationAppendShape_block_invoke(uint64_t a1, char a2, int a3, UInt8 *bytes, unsigned int a5)
{
  if (*(*(a1 + 32) + 24) || *(a1 + 40))
  {
    v9 = CFDataCreate(*MEMORY[0x277CBECE8], bytes, 2 * a5);
    v10 = C3DMeshElementCreate();
    C3DMeshElementInit(v10, a2, a3, v9, 2);
    if (v9)
    {
      CFRelease(v9);
    }

    free(bytes);
    v11 = *(a1 + 32);
    v12 = *(v11 + 128);
    v13 = *(v11 + 98);
    *(v11 + 98) = v13 + 1;
    *(v12 + 8 * v13) = v10;
  }
}

float64_t __C3DShapeMeshCreationAppendShape_block_invoke_2(uint64_t a1, float64x2_t *a2, float64x2_t a3, float64_t a4, float a5, double a6, double a7, double a8, double a9)
{
  v9 = *(a1 + 32);
  v10 = *(v9 + 96);
  v11 = (*(v9 + 112) + 12 * v10);
  v12 = *(v9 + 120) + 12 * v10;
  v13 = a2[4].f64[0];
  v14 = v13;
  *&v13 = *(a1 + 56) - v13;
  v15 = *&v13 + a6 * v14;
  *v11 = vcvt_f32_f64(vmlaq_n_f64(vmulq_n_f64(vaddq_f64(*(a1 + 40), *a2), a7), vaddq_f64(a2[3], *(a1 + 40)), 1.0 - a7));
  v11[1].f32[0] = v15 * a5;
  v16 = a8 * a5;
  a3.f64[1] = a4;
  *&a3.f64[0] = vcvt_f32_f64(vmulq_n_f64(a3, a9));
  *v12 = a3.f64[0];
  *(v12 + 8) = v16;
  *(v9 + 96) = v10 + 1;
  return a3.f64[0];
}

uint64_t C3DShapeMeshCreationCreateMesh(uint64_t a1)
{
  v55 = *MEMORY[0x277D85DE8];
  if (*(a1 + 28))
  {
    v2 = 0;
    v3 = 0;
    do
    {
      v4 = (*(a1 + 88) + v2);
      v5 = *v4;
      v6 = v4[1];
      v7 = v4[2];
      v54 = *(v4 + 6);
      *cf = v6;
      v53 = v7;
      *values = v5;
      C3DShapeBoundaryDestroy(values);
      ++v3;
      v2 += 56;
    }

    while (v3 < *(a1 + 28));
  }

  v8 = *(a1 + 88);
  if (v8)
  {
    free(v8);
  }

  v9 = *(a1 + 96);
  if (*(a1 + 96))
  {
    v10 = *a1;
    v11 = *(a1 + 4);
    v12 = *(a1 + 8);
    v13 = *(a1 + 12) - *a1;
    v14 = *(a1 + 16) - v11;
    v15 = *(a1 + 20) - v12;
    v16 = (*(a1 + 112) + 8);
    v17 = (*(a1 + 104) + 4);
    v18 = (*(a1 + 120) + 4);
    v19 = *(a1 + 96);
    do
    {
      v20 = *v16;
      v21 = *(v18 - 1);
      v22 = v18[1];
      v23 = fabsf(v21);
      v24 = fabsf(*v18);
      v25 = fabsf(v22);
      v26 = *(v16 - 1) - v11;
      v27 = *(v16 - 2) - v10;
      if (v23 <= v24)
      {
        v32 = v27 / v13;
        v33 = 1.0 - (v26 / v14);
        if (v22 > 0.0)
        {
          v34 = v27 / v13;
        }

        else
        {
          v34 = 1.0 - (v27 / v13);
        }

        v31 = (v20 - v12) / v15;
        if (*v18 <= 0.0)
        {
          v32 = 1.0 - (v27 / v13);
        }

        v35 = v24 <= v25;
        if (v24 > v25)
        {
          v30 = v32;
        }

        else
        {
          v30 = v34;
        }

        if (v35)
        {
          v31 = v33;
        }
      }

      else
      {
        v28 = v27 / v13;
        if (v22 <= 0.0)
        {
          v28 = 1.0 - (v27 / v13);
        }

        v29 = (v20 - v12) / v15;
        if (v21 <= 0.0)
        {
          v29 = 1.0 - v29;
        }

        if (v23 > v25)
        {
          v30 = v29;
        }

        else
        {
          v30 = v28;
        }

        v31 = 1.0 - (v26 / v14);
      }

      *(v17 - 1) = v30;
      *v17 = v31;
      v16 += 3;
      v17 += 2;
      v18 += 3;
      --v19;
    }

    while (v19);
    v36 = 12 * v9;
  }

  else
  {
    v36 = 0;
  }

  v37 = *MEMORY[0x277CBECE8];
  Mutable = CFDataCreateMutable(*MEMORY[0x277CBECE8], v36);
  CFDataAppendBytes(Mutable, *(a1 + 112), 12 * *(a1 + 96));
  values[0] = C3DMeshSourceCreate(Mutable, 0, *(a1 + 96), 3, 1);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  v39 = CFDataCreateMutable(v37, 12 * *(a1 + 96));
  CFDataAppendBytes(v39, *(a1 + 120), 12 * *(a1 + 96));
  values[1] = C3DMeshSourceCreate(v39, 1, *(a1 + 96), 3, 1);
  if (v39)
  {
    CFRelease(v39);
  }

  v40 = CFDataCreateMutable(v37, 8 * *(a1 + 96));
  CFDataAppendBytes(v40, *(a1 + 104), 8 * *(a1 + 96));
  cf[0] = C3DMeshSourceCreate(v40, 3, *(a1 + 96), 2, 1);
  if (v40)
  {
    CFRelease(v40);
  }

  free(*(a1 + 120));
  free(*(a1 + 112));
  free(*(a1 + 104));
  v50 = 0;
  v49 = 0;
  v41 = MEMORY[0x277CBF128];
  v42 = CFArrayCreate(v37, values, 3, MEMORY[0x277CBF128]);
  v43 = CFArrayCreate(v37, *(a1 + 128), *(a1 + 98), v41);
  v44 = *(a1 + 98);
  if (*(a1 + 98))
  {
    v45 = 0;
    do
    {
      v46 = *(*(a1 + 128) + 8 * v45);
      if (v46)
      {
        CFRelease(v46);
        *(*(a1 + 128) + 8 * v45) = 0;
        v44 = *(a1 + 98);
      }

      ++v45;
    }

    while (v45 < v44);
  }

  free(*(a1 + 128));
  v47 = C3DMeshCreateWithMeshSourcesAndMeshElements(v42, v43, &v49);
  if (v43)
  {
    CFRelease(v43);
  }

  if (v42)
  {
    CFRelease(v42);
  }

  if (values[0])
  {
    CFRelease(values[0]);
    values[0] = 0;
  }

  if (values[1])
  {
    CFRelease(values[1]);
    values[1] = 0;
  }

  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  return v47;
}

uint64_t C3DMeshCreateShape(uint64_t a1, __int128 *a2)
{
  v34 = 0;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  memset(v23, 0, sizeof(v23));
  v4 = a2[1];
  v19 = *a2;
  v20 = v4;
  v21 = a2[2];
  v22 = *(a2 + 6);
  C3DShapeMeshCreationInitProfile(&v19, v23);
  if (*(a2 + 3) <= 0.0)
  {
    v6 = 0;
  }

  else
  {
    v5 = *(a2 + 4);
    if (v5 == 2)
    {
      v6 = 1;
    }

    else
    {
      v6 = (v5 != 1) + 1;
    }
  }

  v7 = *(a2 + 2);
  v8 = *(a1 + 24) << (v7 > 0.0);
  if (v7 <= 0.0)
  {
    v9 = v6 + 1;
  }

  else
  {
    v9 = v6 + 3;
  }

  v10 = *(a1 + 48);
  if (v10)
  {
    v11 = 0;
    v12 = HIDWORD(v24) * v6 + 2 * (v7 > 0.0);
    do
    {
      v13 = *(a1 + 40) + 32 * v11;
      v14 = *(v13 + 8);
      if (v14)
      {
        v15 = (*v13 + 12);
        do
        {
          v16 = *v15;
          v15 += 14;
          v8 += v12 * v16;
          --v14;
        }

        while (v14);
      }

      ++v11;
    }

    while (v11 != v10);
  }

  C3DShapeMeshCreationInitMisc(v8, v9, v23, 0);
  v17 = a2[1];
  v19 = *a2;
  v20 = v17;
  v21 = a2[2];
  v22 = *(a2 + 6);
  C3DShapeMeshCreationAppendShape(a1, &v19, v23, 1, *MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8));
  result = C3DShapeMeshCreationCreateMesh(v23);
  if (!result)
  {
    return C3DMeshCreate();
  }

  return result;
}

uint64_t C3DMeshCreateText(uint64_t a1, __int128 *a2, uint64_t a3, float64_t a4, float64_t a5)
{
  if (a1)
  {
    v62 = 0;
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    memset(v51, 0, sizeof(v51));
    v7 = a2[1];
    v47 = *a2;
    v48 = v7;
    v49 = a2[2];
    v50 = *(a2 + 6);
    C3DShapeMeshCreationInitProfile(&v47, v51);
    v8 = *(a2 + 2);
    v9 = *(a2 + 3);
    if (CFArrayGetCount(*(a1 + 24)) < 1)
    {
      v11 = 0;
      v10 = 0;
    }

    else
    {
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = v8 > 0.0;
      v14 = 2 * (v9 > 0.0);
      if (v8 > 0.0)
      {
        v15 = v14 + 3;
      }

      else
      {
        v15 = v14 + 1;
      }

      v16 = HIDWORD(v52) * v14 + 2 * v13;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 24), v12);
        if (C3DTextLineGetGlyphCount(ValueAtIndex))
        {
          v18 = 0;
          do
          {
            GlyphAtIndex = C3DTextLineGetGlyphAtIndex(ValueAtIndex, v18);
            v10 += *(GlyphAtIndex + 6) << v13;
            v20 = *(GlyphAtIndex + 12);
            if (v20)
            {
              for (i = 0; i != v20; ++i)
              {
                v22 = GlyphAtIndex[5] + 32 * i;
                v23 = *(v22 + 8);
                if (v23)
                {
                  v24 = (*v22 + 12);
                  do
                  {
                    v25 = *v24;
                    v24 += 14;
                    v10 += v16 * v25;
                    --v23;
                  }

                  while (v23);
                }
              }
            }

            v11 += v15;
            v18 = (v18 + 1);
          }

          while (v18 < C3DTextLineGetGlyphCount(ValueAtIndex));
        }

        ++v12;
      }

      while (v12 < CFArrayGetCount(*(a1 + 24)));
    }

    C3DShapeMeshCreationInitMisc(v10, v11, v51, *(a3 + 34));
    Count = CFArrayGetCount(*(a1 + 24));
    v29 = malloc_type_malloc(16 * Count, 0x1000040451B5BE8uLL);
    v63.location = 0;
    v63.length = 0;
    CTFrameGetLineOrigins(*(a1 + 16), v63, v29);
    v44 = CFArrayGetCount(*(a1 + 24));
    if (v44 >= 1)
    {
      v30 = 0;
      v31.f64[0] = a4;
      v31.f64[1] = a5;
      v46 = v31;
      do
      {
        v32 = CFArrayGetValueAtIndex(*(a1 + 24), v30);
        GlyphCount = C3DTextLineGetGlyphCount(v32);
        v34 = malloc_type_malloc(16 * GlyphCount, 0x1000040451B5BE8uLL);
        C3DTextLineGetAdvances(v32, v34, GlyphCount, v35);
        if (GlyphCount)
        {
          for (j = 0; j != GlyphCount; ++j)
          {
            v37 = C3DTextLineGetGlyphAtIndex(v32, j);
            v39 = v30 == v44 - 1 && GlyphCount - 1 == j;
            v40 = vaddq_f64(vaddq_f64(v46, v29[v30]), v34[j]);
            v41 = a2[1];
            v47 = *a2;
            v48 = v41;
            v49 = a2[2];
            v50 = *(a2 + 6);
            C3DShapeMeshCreationAppendShape(v37, &v47, v51, v39, v40.f64[0], v40.f64[1]);
          }
        }

        free(v34);
        ++v30;
      }

      while (v30 != v44);
    }

    free(v29);
    result = C3DShapeMeshCreationCreateMesh(v51);
    if (!result)
    {
      return C3DMeshCreate();
    }
  }

  else
  {
    v26 = scn_default_log();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      C3DMeshCreateText_cold_1(v26);
    }

    return 0;
  }

  return result;
}

uint64_t C3DKeyValueStoreGetTypeID()
{
  if (C3DKeyValueStoreGetTypeID_onceToken != -1)
  {
    C3DKeyValueStoreGetTypeID_cold_1();
  }

  return C3DKeyValueStoreGetTypeID_typeID;
}

double __C3DKeyValueStoreGetTypeID_block_invoke()
{
  C3DKeyValueStoreGetTypeID_typeID = _CFRuntimeRegisterClass();
  result = *&kC3DC3DKeyValueStoreContextClassAnimatable;
  xmmword_2817411A0 = kC3DC3DKeyValueStoreContextClassAnimatable;
  return result;
}

uint64_t C3DKeyValueStoreCreate()
{
  if (C3DKeyValueStoreGetTypeID_onceToken != -1)
  {
    C3DKeyValueStoreGetTypeID_cold_1();
  }

  Instance = C3DTypeCreateInstance_(C3DKeyValueStoreGetTypeID_typeID, 64);
  *(Instance + 64) = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  return Instance;
}

uint64_t C3DKeyValueStoreSetupModelTargetWithKey(CFDictionaryRef *a1, CFArrayRef theArray, int a3, uint64_t a4)
{
  Count = CFArrayGetCount(theArray);
  v9 = a3;
  ValueAtIndex = CFArrayGetValueAtIndex(theArray, a3);
  Value = CFDictionaryGetValue(a1[8], ValueAtIndex);
  v12 = Value;
  if (Value)
  {
    v13 = CFGetTypeID(Value);
    if (v13 == C3DEffectSlotGetTypeID() && C3DModelPathResolveCommonProfileProperty(v12, theArray, a3 + 1, Count, a4, 0))
    {
      C3DModelTargetSetTarget(a4, a1);
      return 1;
    }
  }

  if (a3 + 1 < Count)
  {
    v14 = Count - a3;
    v15 = Count - a3;
    Mutable = CFArrayCreateMutable(0, v14, MEMORY[0x277CBF128]);
    v22.location = v9;
    v22.length = v15;
    CFArrayAppendArray(Mutable, theArray, v22);
    v17 = CFStringCreateByCombiningStrings(0, Mutable, @".");
    v18 = v17;
    CFRelease(Mutable);
    v19 = CFDictionaryGetValue(a1[8], v17);
    if (v19)
    {
      v12 = v19;
    }
  }

  if (v12)
  {
    v20 = CFGetTypeID(v12);
    if (v20 == C3DValueGetTypeID())
    {
      C3DModelTargetSetTarget(a4, a1);
      *(a4 + 32) = C3DValueGetType(v12);
      *(a4 + 34) = C3DValueGetTypeSemantic(v12);
      *(a4 + 24) = C3DValueGetBytes(v12);
      return 1;
    }
  }

  return 0;
}

void C3DKeyValueStoreResetValueForKey(uint64_t a1, const void *a2)
{
  Value = CFDictionaryGetValue(*(a1 + 64), a2);
  if (Value)
  {
    v5 = Value;
    v6 = CFGetTypeID(Value);
    if (v6 == C3DValueGetTypeID())
    {
      v7 = *(v5 + 8);
      v8 = v5[3];
      if (v7 == 11)
      {
        C3DMatrix4x4MakeIdentity(v5[3]);
      }

      else
      {
        v9 = C3DSizeOfBaseType(v7);
        bzero(v8, v5[4] * v9);
      }
    }

    else
    {
      CFDictionaryRemoveValue(*(a1 + 64), a2);
    }

    ++*(a1 + 72);
  }
}

void C3DKeyValueStoreSetValueForKey(uint64_t a1, void *key, __int16 *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    CFDictionaryRemoveValue(*(a1 + 64), key);
    ++*(a1 + 72);
    return;
  }

  ++*(a1 + 72);
  Value = CFDictionaryGetValue(*(a1 + 64), key);
  v7 = CFGetTypeID(a3);
  if (Value)
  {
    v8 = CFGetTypeID(Value);
    if (v8 == C3DValueGetTypeID())
    {
      v9 = Value;
    }

    else
    {
      v9 = 0;
    }

    if (v7 == C3DValueGetTypeID())
    {
      if (v9)
      {
        if (v9[8] != a3[8])
        {
          v10 = scn_default_log();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            v11 = C3DBaseTypeStringDescription(v9[8]);
            v12 = C3DBaseTypeStringDescription(a3[8]);
            v16 = 138412802;
            v17 = key;
            v18 = 2112;
            v19 = v11;
            v20 = 2112;
            v21 = v12;
            _os_log_error_impl(&dword_21BEF7000, v10, OS_LOG_TYPE_ERROR, "Error: type for key %@ is switching from %@ to %@, this will lead to improper animation", &v16, 0x20u);
          }
        }

        goto LABEL_14;
      }

LABEL_13:
      Value = C3DValueCreate(11, 1);
      CFDictionarySetValue(*(a1 + 64), key, Value);
      CFRelease(Value);
LABEL_14:
      Length = C3DValueGetLength(a3);
      if (C3DValueGetLength(Value) >= Length)
      {
        Bytes = C3DValueGetBytes(Value);
        C3DValueCopyTo(a3, Bytes);
        Value[8] = C3DValueGetType(a3);
      }

      return;
    }
  }

  else if (v7 == C3DValueGetTypeID())
  {
    goto LABEL_13;
  }

  v15 = *(a1 + 64);

  CFDictionarySetValue(v15, key, a3);
}

uint64_t C3DKeyValueStoreEnumerate(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 64);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __C3DKeyValueStoreEnumerate_block_invoke;
  v4[3] = &unk_2782FA868;
  v4[4] = a2;
  return [v2 enumerateKeysAndObjectsUsingBlock:v4];
}

uint64_t C3DKeyValueStoreEnumerateBySortingKeys(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 64);
  if ([v3 count] > 1)
  {
    v5 = [objc_msgSend(v3 "allKeys")];
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    result = [v5 countByEnumeratingWithState:&v9 objects:v14 count:16];
    if (result)
    {
      v6 = result;
      v7 = *v10;
      do
      {
        v8 = 0;
        do
        {
          if (*v10 != v7)
          {
            objc_enumerationMutation(v5);
          }

          (*(a2 + 16))(a2, *(*(&v9 + 1) + 8 * v8), [v3 objectForKeyedSubscript:*(*(&v9 + 1) + 8 * v8)]);
          ++v8;
        }

        while (v6 != v8);
        result = [v5 countByEnumeratingWithState:&v9 objects:v14 count:16];
        v6 = result;
      }

      while (result);
    }
  }

  else
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __C3DKeyValueStoreEnumerateBySortingKeys_block_invoke;
    v13[3] = &unk_2782FA868;
    v13[4] = a2;
    return [v3 enumerateKeysAndObjectsUsingBlock:v13];
  }

  return result;
}

id _C3DKeyValueStoreCFFinalize(uint64_t a1)
{
  CFRelease(*(a1 + 64));

  return C3DEntityCFFinalize(a1);
}

CFStringRef _C3DKeyValueStoreCFCopyFormatDescription(const void *a1)
{
  v1 = CFGetAllocator(a1);

  return CFStringCreateWithFormat(v1, 0, @"<C3DKeyValueStore>");
}

CFStringRef _C3DKeyValueStoreCFCopyDebugDescription(const void *a1)
{
  v1 = CFGetAllocator(a1);

  return CFStringCreateWithFormat(v1, 0, @"<C3DKeyValueStore>");
}

void *_C3DKeyValueStoreSetValue(uint64_t a1, void *__dst, void *__src, size_t __n)
{
  result = memcpy(__dst, __src, __n);
  ++*(a1 + 72);
  return result;
}

_BYTE *std::string::basic_string[abi:nn200100]<0>(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

std::string *Token::str@<X0>(Token *this@<X0>, std::string *a2@<X8>)
{
  if (!*this)
  {
    Token::str();
  }

  return std::string::basic_string(a2, *this, *(this + 1), *(this + 2), &v3);
}

BOOL std::operator==[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>(void *a1, char *__s)
{
  v4 = strlen(__s);
  v5 = *(a1 + 23);
  if ((v5 & 0x8000000000000000) == 0)
  {
    if (v4 != v5)
    {
      return 0;
    }

    return memcmp(a1, __s, v4) == 0;
  }

  if (v4 == a1[1])
  {
    if (v4 == -1)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    a1 = *a1;
    return memcmp(a1, __s, v4) == 0;
  }

  return 0;
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  if (__sz > 0x16)
  {
    if (__sz < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  *(&this->__r_.__value_.__s + 23) = __sz;
  v3 = __sz + 1;

  memmove(this, __s, v3);
}

void std::__tree<char>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<char>::destroy(a1, *a2);
    std::__tree<char>::destroy(a1, a2[1]);

    operator delete(a2);
  }
}

BOOL std::less<std::string>::operator()[abi:nn200100](uint64_t a1, const void **a2, const void **a3)
{
  v3 = *(a3 + 23);
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  if (v4 >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  if (v3 >= 0)
  {
    v7 = *(a3 + 23);
  }

  else
  {
    v7 = a3[1];
  }

  if (v3 >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  if (v7 >= v5)
  {
    v9 = v5;
  }

  else
  {
    v9 = v7;
  }

  v10 = memcmp(v6, v8, v9);
  if (v10)
  {
    return v10 < 0;
  }

  else
  {
    return v5 < v7;
  }
}

uint64_t std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(uint64_t a1, const void **a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v6 = a1 + 8;
  do
  {
    v7 = std::less<std::string>::operator()[abi:nn200100](a1, (v3 + 32), a2);
    if (v7)
    {
      v8 = 8;
    }

    else
    {
      v8 = 0;
    }

    if (!v7)
    {
      v6 = v3;
    }

    v3 = *(v3 + v8);
  }

  while (v3);
  if (v6 == v2 || std::less<std::string>::operator()[abi:nn200100](a1, a2, (v6 + 32)))
  {
    return v2;
  }

  return v6;
}

uint64_t std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t a1, const void **a2)
{
  v2 = *std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  return v2;
}

uint64_t std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__find_equal<std::string>(uint64_t a1, uint64_t *a2, const void **a3)
{
  v5 = a1 + 8;
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v8 = v4;
        if (!std::less<std::string>::operator()[abi:nn200100](a1, a3, (v4 + 32)))
        {
          break;
        }

        v4 = *v8;
        v5 = v8;
        if (!*v8)
        {
          goto LABEL_9;
        }
      }

      if (!std::less<std::string>::operator()[abi:nn200100](a1, (v8 + 32), a3))
      {
        break;
      }

      v5 = v8 + 8;
      v4 = *(v8 + 8);
    }

    while (v4);
  }

  else
  {
    v8 = a1 + 8;
  }

LABEL_9:
  *a2 = v8;
  return v5;
}

uint64_t *std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__insert_node_at(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = std::__tree_balance_after_insert[abi:nn200100]<std::__tree_node_base<void *> *>(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::string>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::string>,void *>>>>::~unique_ptr[abi:nn200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:nn200100]<std::pair<std::string const,std::string>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t *std::__tree_balance_after_insert[abi:nn200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (v2[3])
      {
        break;
      }

      v3 = v2[2];
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = v2[1];
            v12 = *v11;
            v2[1] = *v11;
            v13 = v2;
            if (v12)
            {
              v12[2] = v2;
              v3 = v2[2];
              v13 = *v3;
            }

            v11[2] = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            v2[2] = v11;
            v3 = v11[2];
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = v2[2];
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            v2[2] = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

void std::__destroy_at[abi:nn200100]<std::pair<std::string const,std::string>,0>(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t *std::__tree_remove[abi:nn200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2;
  if (*a2)
  {
    v4 = a2[1];
    if (!v4)
    {
      v3 = a2;
      goto LABEL_7;
    }

    do
    {
      v3 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  v2 = v3[1];
  if (v2)
  {
LABEL_7:
    v6 = 0;
    v5 = v3[2];
    *(v2 + 16) = v5;
    goto LABEL_8;
  }

  v5 = v3[2];
  v6 = 1;
LABEL_8:
  v7 = *v5;
  if (*v5 == v3)
  {
    *v5 = v2;
    if (v3 == result)
    {
      v7 = 0;
      result = v2;
    }

    else
    {
      v7 = v5[1];
    }
  }

  else
  {
    v5[1] = v2;
  }

  v8 = *(v3 + 24);
  if (v3 != a2)
  {
    v9 = a2[2];
    v3[2] = v9;
    v9[*v9 != a2] = v3;
    v11 = *a2;
    v10 = a2[1];
    *(v11 + 16) = v3;
    *v3 = v11;
    v3[1] = v10;
    if (v10)
    {
      *(v10 + 16) = v3;
    }

    *(v3 + 24) = *(a2 + 24);
    if (result == a2)
    {
      result = v3;
    }
  }

  if (!result || !v8)
  {
    return result;
  }

  if (!v6)
  {
    *(v2 + 24) = 1;
    return result;
  }

  while (1)
  {
    v12 = v7[2];
    v13 = *v12;
    if (*v12 == v7)
    {
      break;
    }

    if ((v7[3] & 1) == 0)
    {
      *(v7 + 24) = 1;
      *(v12 + 24) = 0;
      v14 = v12[1];
      v15 = *v14;
      v12[1] = *v14;
      if (v15)
      {
        *(v15 + 16) = v12;
      }

      v16 = v12[2];
      v14[2] = v16;
      v16[*v16 != v12] = v14;
      *v14 = v12;
      v12[2] = v14;
      if (result == *v7)
      {
        result = v7;
      }

      v7 = *(*v7 + 8);
    }

    v17 = *v7;
    if (*v7 && *(v17 + 24) != 1)
    {
      v18 = v7[1];
      if (!v18)
      {
        goto LABEL_55;
      }

LABEL_54:
      if (*(v18 + 24) == 1)
      {
LABEL_55:
        *(v17 + 24) = 1;
        *(v7 + 24) = 0;
        v26 = v17[1];
        *v7 = v26;
        if (v26)
        {
          *(v26 + 16) = v7;
        }

        v27 = v7[2];
        v17[2] = v27;
        v27[*v27 != v7] = v17;
        v17[1] = v7;
        v7[2] = v17;
        v18 = v7;
      }

      else
      {
        v17 = v7;
      }

      v28 = v17[2];
      *(v17 + 24) = *(v28 + 24);
      *(v28 + 24) = 1;
      *(v18 + 24) = 1;
      v29 = *(v28 + 8);
      v30 = *v29;
      *(v28 + 8) = *v29;
      if (v30)
      {
        *(v30 + 16) = v28;
      }

      v31 = *(v28 + 16);
      v29[2] = v31;
      v31[*v31 != v28] = v29;
      *v29 = v28;
      goto LABEL_72;
    }

    v18 = v7[1];
    if (v18 && *(v18 + 24) != 1)
    {
      goto LABEL_54;
    }

    *(v7 + 24) = 0;
    v19 = v7[2];
    if (v19 == result || (v19[3] & 1) == 0)
    {
      goto LABEL_52;
    }

LABEL_49:
    v7 = *(v19[2] + 8 * (*v19[2] == v19));
  }

  if ((v7[3] & 1) == 0)
  {
    *(v7 + 24) = 1;
    *(v12 + 24) = 0;
    v20 = v13[1];
    *v12 = v20;
    if (v20)
    {
      *(v20 + 16) = v12;
    }

    v21 = v12[2];
    v13[2] = v21;
    v21[*v21 != v12] = v13;
    v13[1] = v12;
    v12[2] = v13;
    v22 = v7[1];
    if (result == v22)
    {
      result = v7;
    }

    v7 = *v22;
  }

  v23 = *v7;
  if (*v7 && *(v23 + 24) != 1)
  {
    goto LABEL_68;
  }

  v24 = v7[1];
  if (!v24 || *(v24 + 24) == 1)
  {
    *(v7 + 24) = 0;
    v19 = v7[2];
    if (*(v19 + 24) != 1 || v19 == result)
    {
LABEL_52:
      *(v19 + 24) = 1;
      return result;
    }

    goto LABEL_49;
  }

  if (!v23)
  {
    goto LABEL_65;
  }

  if (v23[3])
  {
    v24 = v7[1];
LABEL_65:
    *(v24 + 24) = 1;
    *(v7 + 24) = 0;
    v32 = *v24;
    v7[1] = *v24;
    if (v32)
    {
      *(v32 + 16) = v7;
    }

    v33 = v7[2];
    v24[2] = v33;
    v33[*v33 != v7] = v24;
    *v24 = v7;
    v7[2] = v24;
    v23 = v7;
  }

  else
  {
LABEL_68:
    v24 = v7;
  }

  v28 = v24[2];
  *(v24 + 24) = *(v28 + 24);
  *(v28 + 24) = 1;
  *(v23 + 24) = 1;
  v29 = *v28;
  v34 = *(*v28 + 8);
  *v28 = v34;
  if (v34)
  {
    *(v34 + 16) = v28;
  }

  v35 = *(v28 + 16);
  v29[2] = v35;
  v35[*v35 != v28] = v29;
  v29[1] = v28;
LABEL_72:
  *(v28 + 16) = v29;
  return result;
}

void _C3DSceneSourceCFFinalize(void *a1)
{
  if (a1)
  {
    v2 = a1[2];
    if (v2)
    {
      CFRelease(v2);
    }

    v3 = a1[3];
    if (v3)
    {
      CFRelease(v3);
    }

    v4 = a1[6];
    if (v4)
    {
      CFRelease(v4);
    }

    v5 = a1[5];
    if (v5)
    {

      CFRelease(v5);
    }
  }
}

CFStringRef _C3DSceneSourceCFCopyFormatDescription(const void *a1)
{
  v1 = CFGetAllocator(a1);

  return CFStringCreateWithFormat(v1, 0, @"<C3DSceneSource >");
}

CFStringRef _C3DSceneSourceCFCopyDebugDescription(const void *a1)
{
  v1 = CFGetAllocator(a1);

  return CFStringCreateWithFormat(v1, 0, @"<C3DSceneSource >");
}

uint64_t __C3DSceneSourceGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  C3DSceneSourceGetTypeID_typeID = result;
  return result;
}

uint64_t C3DSceneSourceCreate()
{
  if (C3DSceneSourceGetTypeID_onceToken != -1)
  {
    C3DSceneSourceCreate_cold_1();
  }

  Instance = C3DTypeCreateInstance_(C3DSceneSourceGetTypeID_typeID, 40);
  *(Instance + 48) = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  return Instance;
}

uint64_t C3DSceneSourceCreateWithURL(const void *a1)
{
  v2 = C3DSceneSourceCreate();
  *(v2 + 16) = CFRetain(a1);
  return v2;
}

uint64_t C3DSceneSourceCreateWithData(const void *a1)
{
  v2 = C3DSceneSourceCreate();
  if (a1)
  {
    v3 = CFRetain(a1);
  }

  else
  {
    v3 = 0;
  }

  *(v2 + 24) = v3;
  return v2;
}

void C3DSceneSourceSetLibrary(uint64_t a1, CFTypeRef cf)
{
  v4 = *(a1 + 40);
  if (v4)
  {
    CFRelease(v4);
  }

  *(a1 + 40) = cf;
  if (cf)
  {

    CFRetain(cf);
  }
}

CFDictionaryRef C3DSceneSourceCopyPropertiesAtIndex(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return 0;
  }

  else
  {
    return CFDictionaryCreateCopy(0, *(a1 + 48));
  }
}

__CFDictionary *__CreateViewerOptionsWithOptions(CFDictionaryRef theDict)
{
  v2 = *MEMORY[0x277CBECE8];
  if (theDict)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(v2, 0, theDict);
  }

  else
  {
    MutableCopy = CFDictionaryCreateMutable(v2, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  }

  v4 = MutableCopy;
  v5 = *MEMORY[0x277CBED28];
  CFDictionaryAddValue(MutableCopy, @"kSceneSourceCreateCameraIfAbsent", *MEMORY[0x277CBED28]);
  CFDictionaryAddValue(v4, @"kSceneSourceCreateNormalsIfAbsent", v5);
  CFDictionaryAddValue(v4, @"kSceneSourceCreateLightIfAbsent", v5);
  CFDictionaryAddValue(v4, @"kSceneSourceAdjustInvalidClippingPlanes", v5);
  CFDictionaryAddValue(v4, @"kSceneSourceFlattenScene", *MEMORY[0x277CBED10]);
  CFDictionaryAddValue(v4, @"kSceneSourceSplitMeshesForGLES", v5);
  CFDictionaryAddValue(v4, @"kSceneSourceAutoLimitMemoryForImages", v5);
  CFDictionaryAddValue(v4, @"triggerOptionsForRealtimeViewer", v5);
  CFDictionaryAddValue(v4, @"kSceneSourceAnimationLoadingMode", @"playUsingSceneTime");
  return v4;
}

__CFDictionary *C3DIOCreateImportContextFromOptions(CFDictionaryRef theDict, const __CFURL *a2)
{
  v3 = *MEMORY[0x277CBECE8];
  if (theDict)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x277CBECE8], 0, theDict);
  }

  else
  {
    MutableCopy = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  }

  v5 = MutableCopy;
  Value = CFDictionaryGetValue(MutableCopy, @"kSceneSourceAssetDirectoryURLs");
  if (Value)
  {
    Mutable = CFArrayCreateMutableCopy(v3, 0, Value);
  }

  else
  {
    Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  }

  v8 = Mutable;
  CFDictionarySetValue(v5, @"kSceneSourceAssetDirectoryURLs", Mutable);
  CFRelease(v8);
  v9 = CFURLCopyScheme(a2);
  PathComponent = CFURLCreateCopyDeletingLastPathComponent(0, a2);
  if (PathComponent)
  {
    v11 = PathComponent;
    CFDictionarySetValue(v5, @"kEnclosingDirectoryURL", PathComponent);
    v15.length = CFArrayGetCount(v8);
    v15.location = 0;
    if (!CFArrayContainsValue(v8, v15, v11))
    {
      CFArrayAppendValue(v8, v11);
    }

    CFRelease(v11);
  }

  if (!CFDictionaryGetValue(v5, @"kEnclosingFolderURL"))
  {
    v12 = CFURLCreateCopyDeletingLastPathComponent(v3, a2);
    v13 = C3DCopyResolvedURLFromFileURL(v12);
    CFDictionarySetValue(v5, @"kEnclosingFolderURL", v13);
    CFRelease(v12);
    CFRelease(v13);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  return v5;
}

uint64_t C3DSceneSourceGetFileFormat(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    v6 = *(a1 + 16);
    if (!v6)
    {
      return -1;
    }

    v7 = CFURLCopyAbsoluteURL(v6);
    v8 = *MEMORY[0x277CBECE8];
    v9 = CFReadStreamCreateWithFile(*MEMORY[0x277CBECE8], v7);
    if (v9)
    {
      v10 = v9;
      if (CFReadStreamOpen(v9))
      {
        v11 = CFReadStreamRead(v10, buffer, 6);
        v12 = v11 != 6;
        if (v11 == 6)
        {
          v23 = *buffer != 1768714338 || v26 != 29811;
          CFReadStreamClose(v10);
          CFRelease(v10);
          if (!v23)
          {
            goto LABEL_24;
          }
        }

        else
        {
          CFReadStreamClose(v10);
          CFRelease(v10);
        }

LABEL_20:
        v14 = CFURLCopyPathExtension(v7);
        if (v14)
        {
          v15 = v14;
          v16 = CFStringCompare(v14, @"c3d", 1uLL) == kCFCompareEqualTo;
          CFRelease(v15);
        }

        else
        {
          v16 = 0;
        }

        if (!v12 && !v16)
        {
          v17 = CFURLCopyPathExtension(v7);
          if (v17)
          {
            v18 = v17;
            MutableCopy = CFStringCreateMutableCopy(v8, 0, v17);
            if (MutableCopy)
            {
              v20 = MutableCopy;
              CFStringLowercase(MutableCopy, 0);
              v21 = CFStringCompare(v20, @"dae", 0);
              CFRelease(v20);
              if (v21)
              {
                v5 = -1;
              }

              else
              {
                v5 = 0;
              }
            }

            else
            {
              v5 = -1;
            }

            CFRelease(v18);
          }

          else
          {
            v5 = -1;
          }

          goto LABEL_41;
        }

LABEL_24:
        v5 = 1;
LABEL_41:
        CFRelease(v7);
        return v5;
      }

      CFRelease(v10);
    }

    else
    {
      v13 = scn_default_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        C3DSceneSourceGetFileFormat_cold_1(v7, v13);
      }
    }

    v12 = 1;
    goto LABEL_20;
  }

  BytePtr = CFDataGetBytePtr(v2);
  if (CFDataGetLength(*(a1 + 24)) < 6)
  {
    return 0;
  }

  return *BytePtr == 1768714338 && *(BytePtr + 2) == 29811;
}

__n128 *C3DSceneSourceCreateSceneAtIndex(void *a1, uint64_t a2, const __CFDictionary *a3, uint64_t a4)
{
  os_unfair_lock_lock(&scene_source_mutex);
  v7 = (a1 + 2);
  if (!a1[2] && !a1[3])
  {
    v16 = 0;
    goto LABEL_27;
  }

  if (a3 && (Value = CFDictionaryGetValue(a3, @"triggerOptionsForRealtimeViewer")) != 0 && CFEqual(Value, *MEMORY[0x277CBED28]))
  {
    ViewerOptionsWithOptions = __CreateViewerOptionsWithOptions(a3);
    a3 = ViewerOptionsWithOptions;
  }

  else
  {
    ViewerOptionsWithOptions = 0;
  }

  v10 = C3DLibraryCreate();
  C3DSceneSourceSetLibrary(a1, v10);
  FileFormat = C3DSceneSourceGetFileFormat(a1);
  v12 = a1[3];
  if (!v12)
  {
    v14 = CFURLCopyAbsoluteURL(*v7);
    v15 = v14;
    if (FileFormat == -1)
    {
      Error = C3DSceneSourceCreateError(-6, @"Unknown or missing file");
      (*(a4 + 16))(a4, 0xFFFFFFFFLL, Error, 0, 1.0);
      CFRelease(Error);
    }

    else if (FileFormat == 1)
    {
      v16 = C3DIOCreateSceneAtURL(v14, a1, v10, a3, a4);
      goto LABEL_21;
    }

    v16 = 0;
LABEL_21:
    CFRelease(v15);
    if (!v16)
    {
      goto LABEL_23;
    }

LABEL_22:
    C3DIOFinalizeLoadScene(v16, v10, a3, a1[6], FileFormat);
    goto LABEL_23;
  }

  if (FileFormat != 1)
  {
    v17 = scn_default_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      C3DSceneSourceCreateSceneAtIndex_cold_1(v7, v17);
    }

    v16 = 0;
    goto LABEL_23;
  }

  if (*v7)
  {
    v13 = C3DIOCreateSceneAtURL(*v7, a1, v10, a3, a4);
  }

  else
  {
    v13 = C3DIOCreateSceneWithData(v12, a1, v10, a3, a4);
  }

  v16 = v13;
  if (v13)
  {
    goto LABEL_22;
  }

LABEL_23:
  if (v10)
  {
    CFRelease(v10);
  }

  if (ViewerOptionsWithOptions)
  {
    CFRelease(ViewerOptionsWithOptions);
  }

LABEL_27:
  os_unfair_lock_unlock(&scene_source_mutex);
  return v16;
}

CFErrorRef C3DSceneSourceCreateError(CFIndex a1, void *a2)
{
  MainBundle = CFBundleGetMainBundle();
  v5 = CFBundleCopyLocalizedString(MainBundle, @"Could not load the scene", @"Could not load the scene", 0);
  v6 = C3DErrorCreate(a1, v5, a2);
  CFRelease(v5);
  return v6;
}

CFErrorRef C3DSceneSourceCreateMalformedDocumentError(int a1)
{
  MainBundle = CFBundleGetMainBundle();
  if (a1)
  {
    v3 = @"The document does not appear to be a valid COLLADA file. Please check that is has not been corrupted.";
  }

  else
  {
    v3 = @"The document does not appear to be valid. Please re-create it from your original COLLADA assets.";
  }

  v4 = CFBundleCopyLocalizedString(MainBundle, v3, v3, 0);
  v5 = CFBundleGetMainBundle();
  v6 = CFBundleCopyLocalizedString(v5, @"Could not load the scene", @"Could not load the scene", 0);
  v7 = C3DErrorCreate(-5, v6, v4);
  CFRelease(v4);
  CFRelease(v6);
  return v7;
}

BOOL C3DEqual(CFTypeRef cf1, const void *a2)
{
  result = 0;
  if (cf1)
  {
    if (a2)
    {
      return CFEqual(cf1, a2) != 0;
    }
  }

  return result;
}

__n128 C3D::CopyTextureComputePass::CopyTextureComputePass(C3D::CopyTextureComputePass *this, C3D::RenderGraph *a2, C3D::Pass *a3, const Parameters *a4)
{
  C3D::ComputePass::ComputePass(this, a2, a3);
  *v5 = &unk_282DC2108;
  result = *&a4->var0;
  *(v5 + 124) = *&a4[1].var6;
  *(v5 + 108) = result;
  return result;
}

void C3D::CopyTextureComputePass::setup(C3D::CopyTextureComputePass *this)
{
  C3D::Pass::setInputCount(this, 1u);

  C3D::Pass::setOutputCount(this, 1u);
}

uint64_t C3D::CopyTextureComputePass::compile(C3D::CopyTextureComputePass *this)
{
  RenderContext = C3DEngineContextGetRenderContext(*(this + 2));
  [(SCNMTLRenderContext *)RenderContext resourceManager];
  v3 = (*(*this + 64))(this);
  result = C3D::RenderGraphResourceManager::get(*(*(this + 3) + 128), v3);
  *(this + 17) = result;
  if (!result)
  {
    operator new();
  }

  return result;
}

void C3D::CopyTextureComputePass::execute(uint64_t a1, SCNMTLComputeCommandEncoder **a2)
{
  v59[6] = *MEMORY[0x277D85DE8];
  if (*(C3D::Pass::descriptor(a1) + 4))
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3D::CopyTextureComputePass::execute(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = *a2;
  v13 = C3D::Pass::inputTextureAtIndex(a1, 0);
  v14 = C3D::Pass::outputTextureAtIndex(a1, 0);
  v15 = [v13 mipmapLevelCount];
  v16 = [v14 mipmapLevelCount];
  if (v15 >= v16)
  {
    v17 = v16;
  }

  else
  {
    v17 = v15;
  }

  v18 = *(a1 + 112);
  v19 = v17 - *(a1 + 116);
  v20 = *(a1 + 120);
  if (v20 >= v19)
  {
    v21 = v19;
  }

  else
  {
    v21 = *(a1 + 120);
  }

  if (v20)
  {
    v19 = v21;
  }

  v58 = v19;
  if (!v18)
  {
    v22 = [v13 arrayLength];
    if (([v13 textureType] - 5) >= 2)
    {
      v18 = v22;
    }

    else
    {
      v18 = 6 * v22;
    }
  }

  v23 = [v13 width];
  if (v23 == [v14 width] && (v24 = objc_msgSend(v13, "height"), v24 == objc_msgSend(v14, "height")))
  {
    v25 = [v13 depth];
    v26 = v25 != [v14 depth];
  }

  else
  {
    v26 = 1;
  }

  v57 = v26;
  IsArray = SCNMTLTextureTypeIsArray([v13 textureType]);
  v55 = SCNMTLTextureTypeIsArray([v14 textureType]);
  ArrayElementType = SCNMTLTextureTypeGetArrayElementType([v13 textureType]);
  v53 = SCNMTLTextureTypeGetArrayElementType([v14 textureType]);
  if (ArrayElementType != v53)
  {
    v28 = scn_default_log();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
    {
      C3D::CopyTextureComputePass::execute(v28, v29, v30, v31, v32, v33, v34, v35);
    }
  }

  if (v58)
  {
    v36 = 0;
    v54 = v18;
    while (1)
    {
      v37 = (*(a1 + 116) + v36);
      v38 = *(a1 + 108);
      if ((v37 | v38) == 0 && !IsArray)
      {
        break;
      }

      v39 = [v13 newTextureViewWithPixelFormat:objc_msgSend(v13 textureType:"pixelFormat") levels:ArrayElementType slices:v37, 1, v38, v54];
      if (v12->_textures[0] != v39)
      {
        goto LABEL_29;
      }

LABEL_30:
      v40 = (*(a1 + 128) + v36);
      v41 = *(a1 + 136);
      if (ArrayElementType == 5)
      {
        if (v57)
        {
          v42 = v41[5];
        }

        else
        {
          v42 = v41[3];
        }

        v44 = [(SCNMTLOpenSubdivComputeEvaluator *)v42 computeEvaluator];
        if (v12->_computePipelineState != v44)
        {
          v12->_computePipelineState = v44;
          [(MTLComputeCommandEncoder *)v12->_encoder setComputePipelineState:v44];
        }

        if (C3DEngineContextHasFeatures(*(a1 + 16), 512))
        {
          if (v40 != 0 || v55)
          {
            v45 = [v14 newTextureViewWithPixelFormat:objc_msgSend(v14 textureType:"pixelFormat") levels:v53 slices:v40, 1, *(a1 + 124), 6];
            if (v12->_textures[1] == v45)
            {
LABEL_58:
              v52 = v12;
              v51 = v14;
LABEL_59:
              SCNMTLComputeCommandEncoder::dispatchOnTextureCube(v52, v51);
              goto LABEL_60;
            }
          }

          else
          {
            v45 = v14;
            if (v12->_textures[1] == v14)
            {
              goto LABEL_58;
            }
          }

          v12->_textures[1] = v45;
          v12->_texturesToBind[0] |= 2uLL;
          goto LABEL_58;
        }

        for (i = 0; i != 6; ++i)
        {
          v49 = [v14 newTextureViewWithPixelFormat:objc_msgSend(v14 textureType:"pixelFormat") levels:2 slices:v40, 1, (i + *(a1 + 124)), 1];
          v59[i] = v49;
          v50 = &v12->_buffers[i];
          if (v50[63] != v49)
          {
            v50[63] = v49;
            v12->_texturesToBind[0] |= (2 << i);
          }
        }

        v51 = v59[0];
        v52 = v12;
        goto LABEL_59;
      }

      if (v57)
      {
        v43 = v41[4];
      }

      else
      {
        v43 = v41[2];
      }

      v46 = [(SCNMTLOpenSubdivComputeEvaluator *)v43 computeEvaluator];
      if (v12->_computePipelineState != v46)
      {
        v12->_computePipelineState = v46;
        [(MTLComputeCommandEncoder *)v12->_encoder setComputePipelineState:v46];
      }

      if (v40 != 0 || v55)
      {
        v47 = [v14 newTextureViewWithPixelFormat:objc_msgSend(v14 textureType:"pixelFormat") levels:v53 slices:v40, 1, *(a1 + 124), 1];
        if (v12->_textures[1] == v47)
        {
          goto LABEL_55;
        }

LABEL_54:
        v12->_textures[1] = v47;
        v12->_texturesToBind[0] |= 2uLL;
        goto LABEL_55;
      }

      v47 = v14;
      if (v12->_textures[1] != v14)
      {
        goto LABEL_54;
      }

LABEL_55:
      SCNMTLComputeCommandEncoder::dispatchOnGrid2D(v12, [v14 width], objc_msgSend(v14, "height"));
LABEL_60:
      if (++v36 == v58)
      {
        return;
      }
    }

    v39 = v13;
    if (v12->_textures[0] == v13)
    {
      goto LABEL_30;
    }

LABEL_29:
    v12->_textures[0] = v39;
    v12->_texturesToBind[0] |= 1uLL;
    goto LABEL_30;
  }
}

uint64_t SCNMTLComputeCommandEncoder::dispatchOnTextureCube(SCNMTLComputeCommandEncoder *this, void *a2)
{
  if (!this->_computePipelineState)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      SCNMTLComputeCommandEncoder::dispatchOnTextureCube(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  SCNMTLComputeCommandEncoder::_bindPendingTextures(this);
  SCNMTLComputeCommandEncoder::_bindPendingBuffers(this);
  features = this->_features;
  v13 = [(MTLComputePipelineState *)this->_computePipelineState threadExecutionWidth];
  if ((features & 0x40) != 0)
  {
    v23 = [(MTLComputePipelineState *)this->_computePipelineState maxTotalThreadsPerThreadgroup]/ v13;
    v24 = [a2 width];
    v25 = [a2 height];
    encoder = this->_encoder;
    v30 = v24;
    v31 = v25;
    v32 = 6;
    v27 = v13;
    v28 = v23;
    v29 = 1;
    return [(MTLComputeCommandEncoder *)encoder dispatchThreads:&v30 threadsPerThreadgroup:&v27];
  }

  else
  {
    v14 = [a2 width];
    if (v13 >= v14)
    {
      v13 = v14;
    }

    v15 = [(MTLComputePipelineState *)this->_computePipelineState maxTotalThreadsPerThreadgroup];
    v16 = v13;
    do
    {
      v17 = v16;
      v18 = 6 * v13 * v16;
      v16 >>= 1;
    }

    while (v18 > v15);
    v19 = (v13 + [a2 width] - 1) / v13;
    v20 = v17 + [a2 height] - 1;
    v21 = this->_encoder;
    v30 = v19;
    v31 = v20 / v17;
    v32 = 6;
    v27 = v13;
    v28 = v17;
    v29 = 1;
    return [(MTLComputeCommandEncoder *)v21 dispatchThreadgroups:&v30 threadsPerThreadgroup:&v27];
  }
}

uint64_t C3D::SmartPtr<SCNMTLRenderPipeline *,C3D::detail::NSRetainFct,C3D::detail::NSReleaseFct>::operator SCNMTLRenderPipeline *(uint64_t a1)
{
  if (!*a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3D::SmartPtr<SCNMTLRenderPipeline *,C3D::detail::NSRetainFct,C3D::detail::NSReleaseFct>::operator SCNMTLRenderPipeline *(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *a1;
}

void SCNMTLRenderCommandEncoder::setFragmentTexture(uint64_t a1, void *a2, unint64_t a3)
{
  if (a2)
  {
    if (([a2 conformsToProtocol:&unk_282E56760] & 1) == 0)
    {
      v6 = scn_default_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        SCNMTLRenderCommandEncoder::setFragmentTexture(v6, v7, v8, v9, v10, v11, v12, v13);
      }
    }
  }

  if (*(a1 + 2224 + 8 * a3) != a2)
  {
    *(a1 + 2224 + 8 * a3) = a2;
    *(a1 + 8 * (a3 >> 6) + 3424) |= 1 << a3;
  }
}

uint64_t SCNMTLRenderCommandEncoder::drawFullScreenTriangle(SCNMTLRenderCommandEncoder *this)
{
  SCNMTLRenderCommandEncoder::_bindPendingTextures(this);
  SCNMTLRenderCommandEncoder::applyChangedStates(this);
  v2 = this->var24[1];
  if (LODWORD(this->var14[0].var1) < 2)
  {

    return [v2 drawPrimitives:3 vertexStart:0 vertexCount:3];
  }

  else
  {

    return [v2 drawPrimitives:3 vertexStart:0 vertexCount:3 instanceCount:?];
  }
}

void C3D::CopyTextureComputePass::Resource::~Resource(C3D::CopyTextureComputePass::Resource *this)
{
  *this = &unk_282DC2178;
  v2 = *(this + 5);
  if (v2)
  {
  }

  v3 = *(this + 4);
  if (v3)
  {
  }

  v4 = *(this + 3);
  if (v4)
  {
  }

  v5 = *(this + 2);
  if (v5)
  {
  }
}

{
  *this = &unk_282DC2178;
  v2 = *(this + 5);
  if (v2)
  {
  }

  v3 = *(this + 4);
  if (v3)
  {
  }

  v4 = *(this + 3);
  if (v4)
  {
  }

  v5 = *(this + 2);
  if (v5)
  {
  }

  JUMPOUT(0x21CF07610);
}

void SCNMTLComputeCommandEncoder::_bindPendingTextures(SCNMTLComputeCommandEncoder *this)
{
  v2 = 0;
  texturesToBind = this->_texturesToBind;
  *&v18[5] = *MEMORY[0x277D85DE8];
  textures = this->_textures;
  v5 = 1;
  do
  {
    v16 = v5;
    v6 = texturesToBind;
    v7 = texturesToBind[v2];
    if (v7)
    {
      v8 = 0;
      v9 = 1;
      v10 = 0xFFFFFFFFLL;
      do
      {
        if (v7)
        {
          if (v10 >= v9 - 1)
          {
            v11 = v9 - 1;
          }

          else
          {
            v11 = v10;
          }

          if ((v7 & 2) == 0)
          {
            if (v10 >= v8)
            {
              v13 = v8;
            }

            else
            {
              v13 = v10;
            }

            encoder = this->_encoder;
            if (v9 - v13 < 2)
            {
              [(MTLComputeCommandEncoder *)encoder setTexture:textures[v11] atIndex:?];
            }

            else
            {
              [(MTLComputeCommandEncoder *)encoder setTextures:&textures[v11] withRange:?];
            }

            v11 = 0xFFFFFFFFLL;
          }
        }

        else
        {
          v11 = 0xFFFFFFFFLL;
          if (v10 != 0xFFFFFFFF)
          {
            v12 = scn_default_log();
            if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
            {
              SCNMTLComputeCommandEncoder::_bindPendingTextures(v17, v18, v12);
            }

            v11 = v10;
          }
        }

        ++v8;
        ++v9;
        v10 = v11;
        v15 = v7 >= 2;
        v7 >>= 1;
      }

      while (v15);
    }

    v5 = 0;
    texturesToBind = v6;
    v6[v2] = 0;
    v2 = 1;
  }

  while ((v16 & 1) != 0);
}

void SCNMTLComputeCommandEncoder::_bindPendingBuffers(SCNMTLComputeCommandEncoder *this)
{
  *&v13[5] = *MEMORY[0x277D85DE8];
  v2 = this->_buffersToBind[0];
  if (v2)
  {
    v3 = 0;
    offsets = this->_offsets;
    v5 = 1;
    v6 = 0xFFFFFFFFLL;
    do
    {
      if (v2)
      {
        if (v6 >= v5 - 1)
        {
          v7 = v5 - 1;
        }

        else
        {
          v7 = v6;
        }

        if ((v2 & 2) == 0)
        {
          if (v6 >= v3)
          {
            v9 = v3;
          }

          else
          {
            v9 = v6;
          }

          encoder = this->_encoder;
          if (v5 - v9 < 2)
          {
            [(MTLComputeCommandEncoder *)encoder setBuffer:this->_buffers[v7] offset:offsets[v7] atIndex:?];
          }

          else
          {
            [(MTLComputeCommandEncoder *)encoder setBuffers:&this->_buffers[v7] offsets:&offsets[v7] withRange:?];
          }

          v7 = 0xFFFFFFFFLL;
        }
      }

      else
      {
        v7 = 0xFFFFFFFFLL;
        if (v6 != 0xFFFFFFFF)
        {
          v8 = scn_default_log();
          if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
          {
            SCNMTLComputeCommandEncoder::_bindPendingTextures(v12, v13, v8);
          }

          v7 = v6;
        }
      }

      ++v3;
      ++v5;
      v6 = v7;
      v11 = v2 >= 2;
      v2 >>= 1;
    }

    while (v11);
  }

  this->_buffersToBind[0] = 0;
}

uint64_t SCNMTLComputeCommandEncoder::dispatchOnGrid2D(SCNMTLComputeCommandEncoder *this, unint64_t a2, unint64_t a3)
{
  if (!this->_computePipelineState)
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      SCNMTLComputeCommandEncoder::dispatchOnTextureCube(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  SCNMTLComputeCommandEncoder::_bindPendingTextures(this);
  SCNMTLComputeCommandEncoder::_bindPendingBuffers(this);
  features = this->_features;
  v15 = [(MTLComputePipelineState *)this->_computePipelineState threadExecutionWidth];
  v16 = v15;
  if ((features & 0x40) != 0)
  {
    v23 = [(MTLComputePipelineState *)this->_computePipelineState maxTotalThreadsPerThreadgroup];
    encoder = this->_encoder;
    v28 = a2;
    v29 = a3;
    v30 = 1;
    v25 = v16;
    v26 = v23 / v16;
    v27 = 1;
    return [(MTLComputeCommandEncoder *)encoder dispatchThreads:&v28 threadsPerThreadgroup:&v25];
  }

  else
  {
    if (v15 >= a2)
    {
      v17 = a2;
    }

    else
    {
      v17 = v15;
    }

    if (v15 >= a3)
    {
      v16 = a3;
    }

    v18 = [(MTLComputePipelineState *)this->_computePipelineState maxTotalThreadsPerThreadgroup];
    do
    {
      v19 = v16;
      v20 = v16 * v17;
      v16 >>= 1;
    }

    while (v20 > v18);
    v21 = this->_encoder;
    v28 = (a2 + v17 - 1) / v17;
    v29 = (a3 + v19 - 1) / v19;
    v30 = 1;
    v25 = v17;
    v26 = v19;
    v27 = 1;
    return [(MTLComputeCommandEncoder *)v21 dispatchThreadgroups:&v28 threadsPerThreadgroup:&v25];
  }
}

void SCNMTLRenderCommandEncoder::_bindPendingTextures(SCNMTLRenderCommandEncoder *this)
{
  v2 = 0;
  *&v32[5] = *MEMORY[0x277D85DE8];
  v3 = &this->var25[1];
  v4 = &this->var15[3];
  v5 = 1;
  do
  {
    v6 = v5;
    v7 = v3[v2];
    if (v7)
    {
      v8 = 0;
      v9 = -1;
      v10 = 1;
      do
      {
        if (v7)
        {
          if (v9 >= v10 - 1)
          {
            v12 = (v10 - 1);
          }

          else
          {
            v12 = v9;
          }

          if ((v7 & 2) != 0)
          {
            v9 = v12;
          }

          else
          {
            if (v9 >= v8)
            {
              v13 = v8;
            }

            else
            {
              v13 = v9;
            }

            v14 = v10 - v13;
            if (v10 - v13 < 2)
            {
              [this->var24[1] setVertexTexture:v4[v12] atIndex:v12];
            }

            else
            {
              [this->var24[1] setVertexTextures:&v4[v12] withRange:{v12, v10 - v13}];
            }

            SCNMTLEnsureIOSurfaceBackingBufferValidity(this->var24[0], &v4[v12], v14);
            v9 = -1;
          }
        }

        else if (v9 != -1)
        {
          v11 = scn_default_log();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
          {
            SCNMTLComputeCommandEncoder::_bindPendingTextures(v31, v32, v11);
          }
        }

        ++v8;
        ++v10;
        v15 = v7 >= 2;
        v7 >>= 1;
      }

      while (v15);
    }

    v5 = 0;
    v3[v2] = 0;
    v2 = 1;
  }

  while ((v6 & 1) != 0);
  v16 = 0;
  p_var1 = &this[1].var1;
  v18 = &this->var18[3];
  v19 = 1;
  do
  {
    v20 = v19;
    v21 = p_var1[v16];
    if (v21)
    {
      v22 = 0;
      v23 = -1;
      v24 = 1;
      do
      {
        if (v21)
        {
          if (v23 >= v24 - 1)
          {
            v26 = (v24 - 1);
          }

          else
          {
            v26 = v23;
          }

          if ((v21 & 2) != 0)
          {
            v23 = v26;
          }

          else
          {
            if (v23 >= v22)
            {
              v27 = v22;
            }

            else
            {
              v27 = v23;
            }

            v28 = v24 - v27;
            if (v24 - v27 < 2)
            {
              [this->var24[1] setFragmentTexture:v18[v26] atIndex:v26];
            }

            else
            {
              [this->var24[1] setFragmentTextures:&v18[v26] withRange:{v26, v24 - v27}];
            }

            SCNMTLEnsureIOSurfaceBackingBufferValidity(this->var24[0], &v18[v26], v28);
            v23 = -1;
          }
        }

        else if (v23 != -1)
        {
          v25 = scn_default_log();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
          {
            SCNMTLComputeCommandEncoder::_bindPendingTextures(v29, &v30, v25);
          }
        }

        ++v22;
        ++v24;
        v15 = v21 >= 2;
        v21 >>= 1;
      }

      while (v15);
    }

    v19 = 0;
    p_var1[v16] = 0;
    v16 = 1;
  }

  while ((v20 & 1) != 0);
}

SCNMTLRenderCommandEncoder *SCNMTLRenderCommandEncoder::applyChangedStates(SCNMTLRenderCommandEncoder *this)
{
  v1 = this;
  if (this->var5)
  {
    this->var5 = 0;
    this = [this->var24[1] setFrontFacingWinding:this->var1];
  }

  if (v1->var7)
  {
    v1->var7 = 0;
    this = [v1->var24[1] setTriangleFillMode:v1->var3];
  }

  if (v1->var6)
  {
    v1->var6 = 0;
    this = [v1->var24[1] setCullMode:v1->var2];
  }

  if (v1->var8)
  {
    v1->var8 = 0;
    if ((SCNMTLDeviceSupportsDepthClipMode([v1->var24[1] device]) & 1) == 0)
    {
      v2 = scn_default_log();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
      {
        SCNMTLRenderCommandEncoder::applyChangedStates(v2, v3, v4, v5, v6, v7, v8, v9);
      }
    }

    return [v1->var24[1] setDepthClipMode:v1->var4];
  }

  return this;
}

void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_1(void *a1, int a2, os_log_t log, const char *a4, uint8_t *a5)
{

  _os_log_fault_impl(a1, log, OS_LOG_TYPE_FAULT, a4, a5, 0xCu);
}

void _C3DSortSystemCFFinalize(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 16) = 0;
  }
}

void C3DSortSystemSetCapacity(uint64_t a1, int a2)
{
  LODWORD(v2) = a2;
  Capacity = C3DArrayGetCapacity(*(a1 + 16));
  if (Capacity <= v2)
  {
    v5 = v2;
  }

  else
  {
    v5 = Capacity;
  }

  if (v2 >= v5 >> 1)
  {
    v2 = v5;
  }

  else
  {
    v2 = v2;
  }

  if (v2 != Capacity)
  {
    v6 = Capacity;
    C3DArraySetCapacity(*(a1 + 16), v2);
    C3DArraySetCount(*(a1 + 16), v2);
    v7 = v2 <= v6;
    v8 = v2 - v6;
    if (!v7)
    {
      v9 = (C3DArrayGetValuesPtr(*(a1 + 16)) + 8 * v6);

      memset(v9, 255, 8 * v8);
    }
  }
}

uint64_t _compareRendererElements(uint64_t a1, unsigned __int16 *a2, unsigned __int16 *a3)
{
  ValuesPtr = C3DArrayGetValuesPtr(*(a1 + 16));
  LODWORD(a2) = C3DRendererElementFlattenedIndexForSpanHandle(*a2, a2[1]);
  v6 = C3DRendererElementFlattenedIndexForSpanHandle(*a3, a3[1]);
  v7 = *(ValuesPtr + 8 * a2);
  v8 = *(ValuesPtr + 8 * v6);
  v9 = v7 > v8;
  if (v7 == v8)
  {
    v10 = 0;
  }

  else
  {
    v10 = -1;
  }

  if (v9)
  {
    return 1;
  }

  else
  {
    return v10;
  }
}

CFIndex C3DSortSystemPrepare(uint64_t a1, uint64_t a2)
{
  Count = C3DArrayGetCount(*(a1 + 16));
  RendererElementStore = C3DEnginePipelineGetRendererElementStore(a2);
  PriorityStamp = C3DRendererElementStoreGetPriorityStamp(RendererElementStore);
  if (PriorityStamp != *(a1 + 32))
  {
    *(a1 + 32) = PriorityStamp;
    PriorityCount = C3DRendererElementStoreGetPriorityCount(RendererElementStore);
    v8 = -__clz(PriorityCount) & 0x1F;
    if (PriorityCount < 2)
    {
      LOWORD(v8) = 1;
    }

    *(a1 + 24) = v8 | *(a1 + 24) & 0xFFE0;
    *(a1 + 40) = 1;
  }

  result = C3DRendererElementStoreGetMaterialCount(RendererElementStore);
  v10 = *(a1 + 24);
  if (result >= (2 << (v10 >> 5)))
  {
    v11 = (-32 * __clz(result)) & 0x3E0;
    if (result < 2)
    {
      LOWORD(v11) = 32;
    }

    *(a1 + 24) = v11 | v10 & 0xFC1F;
    *(a1 + 40) = 1;
    goto LABEL_11;
  }

  if (*(a1 + 40))
  {
LABEL_11:
    ValuesPtr = C3DArrayGetValuesPtr(*(a1 + 16));
    result = memset(ValuesPtr, 255, 8 * Count);
    *(a1 + 40) = 0;
  }

  return result;
}

void C3DSortSystemSyncKeys(uint64_t a1, uint64_t a2, unsigned int *a3, uint64_t a4, uint64_t a5)
{
  PointOfView = C3DEngineContextGetPointOfView(a2);
  Scene = C3DEngineContextGetScene(a2);
  EnginePipeline = C3DSceneGetEnginePipeline(Scene);
  ProgramHashCodeStore = C3DEngineContextGetProgramHashCodeStore(a2);
  RendererElementStore = C3DEnginePipelineGetRendererElementStore(EnginePipeline);
  if (PointOfView)
  {
    v13 = RendererElementStore;
    v67.i32[2] = 0;
    v67.i64[0] = 0;
    WorldMatrix = C3DNodeGetWorldMatrix(PointOfView);
    v15 = *WorldMatrix;
    v16 = WorldMatrix[1];
    v17 = WorldMatrix[3];
    v70 = WorldMatrix[2];
    v71 = v17;
    v68 = v15;
    v69 = v16;
    *v18.i64 = C3DVector3Rotate(&v68, xmmword_21C27F600);
    v63 = v18;
    C3DMatrix4x4GetTranslation(WorldMatrix, &v67);
    if (a4 >= 1)
    {
      v19 = v63;
      v20 = vmulq_f32(v63, v67);
      v19.f32[3] = -(v20.f32[2] + vaddv_f32(*v20.f32));
      v64 = v19;
      v65 = v13;
      while (1)
      {
        v21 = *a3++;
        v5 = v5 & 0xFFFFFFFF00000000 | v21;
        Element = C3DRendererElementStoreGetElement(v13, v5);
        ValuePtrAtIndex = C3DArrayGetValuePtrAtIndex(*(a1 + 16), *Element);
        IsOpaque = C3DRendererElementIsOpaque(Element);
        v25 = IsOpaque;
        if (*ValuePtrAtIndex == -1)
        {
          break;
        }

        if ((IsOpaque & 1) == 0)
        {
          *ValuePtrAtIndex &= 0xFFFFFFFF00000000;
          goto LABEL_27;
        }

LABEL_40:
        if (!--a4)
        {
          return;
        }
      }

      PriorityIndex = C3DRendererElementStoreGetPriorityIndex(v13, Element);
      v27 = C3DRendererElementIsOpaque(Element);
      if (v27 && C3DRendererElementGetMaterial(Element))
      {
        ProgramHashCodeForRenderElement = C3DProgramHashCodeStoreGetProgramHashCodeForRenderElement(ProgramHashCodeStore, Element, 0, a5);
        ProgramIndexForRenderElement = C3DProgramHashCodeStoreGetProgramIndexForRenderElement(ProgramHashCodeStore, ProgramHashCodeForRenderElement);
        MaterialIndex = C3DRendererElementStoreGetMaterialIndex(v65, Element);
      }

      else
      {
        MaterialIndex = 0;
        ProgramIndexForRenderElement = 0;
      }

      v31 = *(Element + 1);
      if (v31)
      {
        v32 = C3DNodeGetLayerIndex(v31) << 61;
      }

      else
      {
        v32 = 0;
      }

      v33 = *(a1 + 24);
      v34 = (v33 >> 5) & 0x1F;
      v35 = v33 & 0x1F;
      v36 = (60 - (v34 + v35)) & ~((60 - (v34 + v35)) >> 31);
      v37 = v35;
      if (v27)
      {
        v38 = v34;
      }

      else
      {
        v38 = 0;
      }

      if (v27)
      {
        v39 = v36;
      }

      else
      {
        v39 = 0;
      }

      v40 = 60 - v37;
      v41 = (PriorityIndex << (61 - v37)) | v32 | ((v27 ^ 1u) << (60 - v37));
      v42 = 60 - v37 - v39;
      if (v39)
      {
        v41 |= (ProgramIndexForRenderElement & ~(-1 << v39)) << (v40 - v39);
        v43 = v42;
      }

      else
      {
        v43 = v40;
      }

      v44 = MaterialIndex << (v43 - v38);
      if (v38)
      {
        v45 = v44;
      }

      else
      {
        v45 = 0;
      }

      *ValuePtrAtIndex = v45 | v41;
      v13 = v65;
      if (v25)
      {
        goto LABEL_40;
      }

LABEL_27:
      Node = C3DRendererElementGetNode(Element);
      Mesh = C3DRendererElementGetMesh(Element);
      if (Mesh)
      {
        v48 = Mesh;
        MeshElement = C3DRendererElementGetMeshElement(Element);
        if (!MeshElement)
        {
          v58 = 3212836864;
LABEL_39:
          *ValuePtrAtIndex |= v58;
          goto LABEL_40;
        }

        v50 = MeshElement;
        _C3DUpdateMeshElementsBBoxIfNeeded(v48);
        *v51.i64 = C3DVector3MidVector(v50[11], v50[12]);
        v52 = v51;
        if (!Node)
        {
          goto LABEL_37;
        }

        v62 = v51;
        v53 = C3DNodeGetWorldMatrix(Node);
        v54 = *v53;
        v55 = v53[1];
        v56 = v53[3];
        v70 = v53[2];
        v71 = v56;
        v68 = v54;
        v69 = v55;
        WorldBoundingBox.n128_f64[0] = C3DVector3MultMatrix4x4(&v68, v62);
      }

      else
      {
        if ((Element[18] & 7) != 2)
        {
          v52 = xmmword_21C27F610;
          if (!Node)
          {
LABEL_38:
            v59 = vmulq_f32(v64, v52);
            *v59.i8 = vadd_f32(*v59.i8, *&vextq_s8(v59, v59, 8uLL));
            v59.i32[0] = vadd_f32(*v59.i8, vdup_lane_s32(*v59.i8, 1)).u32[0];
            v58 = ((v59.i32[0] >> 31) | 0x80000000) ^ v59.i32[0];
            goto LABEL_39;
          }

          v68.n128_u32[2] = 0;
          v68.n128_u64[0] = 0;
          C3DNodeGetWorldPosition(Node, &v68);
          v52 = v68;
LABEL_37:
          v52.i32[3] = 1.0;
          goto LABEL_38;
        }

        WorldBoundingBox = C3DParticleSystemInstanceGetWorldBoundingBox(*(Element + 6));
      }

      v52 = WorldBoundingBox;
      goto LABEL_37;
    }
  }
}

void *C3DSortSystemInvalidateKeyForRendererElement(uint64_t a1, unsigned int *a2)
{
  v3 = *a2;
  result = C3DArrayGetCapacity(*(a1 + 16));
  if (result > v3)
  {
    result = C3DArrayGetValuePtrAtIndex(*(a1 + 16), v3);
    *result = -1;
  }

  return result;
}

uint64_t C3DSortSystemInvalidateKeyForRendererElementSpan(uint64_t a1, unint64_t a2)
{
  Count = C3DArrayGetCount(*(a1 + 16));
  result = C3DRendererElementFlattenedIndexForSpanHandle(a2, WORD1(a2));
  if (Count > result)
  {
    v6 = HIDWORD(a2);
    result = C3DArrayGetValuesPtr(*(a1 + 16));
    if (HIDWORD(a2))
    {
      v7 = result;
      v8 = a2 >> 16;
      do
      {
        result = C3DRendererElementFlattenedIndexForSpanHandle(a2, v8);
        *(v7 + 8 * result) = -1;
        LODWORD(v8) = v8 + 1;
        LODWORD(v6) = v6 - 1;
      }

      while (v6);
    }
  }

  return result;
}

void Variable::Variable(std::string *this, __int128 *a2, __int128 *a3, __int128 *a4, __int128 *a5)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v9 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v9;
  }

  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this + 1, *a3, *(a3 + 1));
  }

  else
  {
    v10 = *a3;
    this[1].__r_.__value_.__r.__words[2] = *(a3 + 2);
    *&this[1].__r_.__value_.__l.__data_ = v10;
  }

  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this + 2, *a4, *(a4 + 1));
  }

  else
  {
    v11 = *a4;
    this[2].__r_.__value_.__r.__words[2] = *(a4 + 2);
    *&this[2].__r_.__value_.__l.__data_ = v11;
  }

  if (*(a5 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this + 3, *a5, *(a5 + 1));
  }

  else
  {
    v12 = *a5;
    this[3].__r_.__value_.__r.__words[2] = *(a5 + 2);
    *&this[3].__r_.__value_.__l.__data_ = v12;
  }
}

void sub_21BF06994(_Unwind_Exception *exception_object)
{
  if (*(v1 + 71) < 0)
  {
    operator delete(*(v1 + 48));
  }

  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *Variable::Output(std::string *result, uint64_t a2, int a3, std::string *this)
{
  v5 = result;
  if (a3 == 2)
  {
    v19 = ShaderConverter::GLSLToMetalSymbol(a2, &result[1].__r_.__value_.__l.__data_);
    v20 = *(v19 + 23);
    if (v20 >= 0)
    {
      v21 = v19;
    }

    else
    {
      v21 = *v19;
    }

    if (v20 >= 0)
    {
      v22 = *(v19 + 23);
    }

    else
    {
      v22 = v19[1];
    }

    std::string::append(this, v21, v22);
    std::string::append(this, " ");
    v23 = *(v5 + 23);
    if (v23 >= 0)
    {
      v24 = v5;
    }

    else
    {
      v24 = *v5;
    }

    if (v23 >= 0)
    {
      v25 = *(v5 + 23);
    }

    else
    {
      v25 = *(v5 + 8);
    }

    std::string::append(this, v24, v25);
    v26 = *(v5 + 95);
    if (v26 < 0)
    {
      if (*(v5 + 80))
      {
        goto LABEL_42;
      }
    }

    else if (*(v5 + 95))
    {
LABEL_42:
      if (v26 >= 0)
      {
        v27 = (v5 + 72);
      }

      else
      {
        v27 = *(v5 + 72);
      }

      if (v26 >= 0)
      {
        v28 = *(v5 + 95);
      }

      else
      {
        v28 = *(v5 + 80);
      }

      std::string::append(this, v27, v28);
    }

    v29 = *(v5 + 71);
    if (v29 < 0)
    {
      v29 = *(v5 + 56);
    }

    if (!v29)
    {
      goto LABEL_60;
    }

    v18 = " =";
    goto LABEL_53;
  }

  if (a3 != 1)
  {
    return result;
  }

  v6 = std::string::append(this, "uniform ");
  v7 = ShaderConverter::MetalToGLSLSymbol(v6, (v5 + 24));
  v8 = *(v7 + 23);
  if (v8 >= 0)
  {
    v9 = v7;
  }

  else
  {
    v9 = *v7;
  }

  if (v8 >= 0)
  {
    v10 = *(v7 + 23);
  }

  else
  {
    v10 = v7[1];
  }

  std::string::append(this, v9, v10);
  std::string::append(this, " ");
  v11 = *(v5 + 23);
  if (v11 >= 0)
  {
    v12 = v5;
  }

  else
  {
    v12 = *v5;
  }

  if (v11 >= 0)
  {
    v13 = *(v5 + 23);
  }

  else
  {
    v13 = *(v5 + 8);
  }

  std::string::append(this, v12, v13);
  v14 = *(v5 + 95);
  if (v14 < 0)
  {
    if (*(v5 + 80))
    {
      goto LABEL_17;
    }
  }

  else if (*(v5 + 95))
  {
LABEL_17:
    if (v14 >= 0)
    {
      v15 = (v5 + 72);
    }

    else
    {
      v15 = *(v5 + 72);
    }

    if (v14 >= 0)
    {
      v16 = *(v5 + 95);
    }

    else
    {
      v16 = *(v5 + 80);
    }

    std::string::append(this, v15, v16);
  }

  v17 = *(v5 + 71);
  if (v17 < 0)
  {
    v17 = *(v5 + 56);
  }

  if (!v17)
  {
    goto LABEL_60;
  }

  v18 = " = ";
LABEL_53:
  std::string::append(this, v18);
  v32 = *(v5 + 48);
  v31 = v5 + 48;
  v30 = v32;
  v33 = *(v31 + 23);
  if (v33 >= 0)
  {
    v34 = v31;
  }

  else
  {
    v34 = v30;
  }

  if (v33 >= 0)
  {
    v35 = *(v31 + 23);
  }

  else
  {
    v35 = *(v31 + 8);
  }

  std::string::append(this, v34, v35);
LABEL_60:

  return std::string::append(this, ";\n");
}

const void **ShaderConverter::MetalToGLSLSymbol(uint64_t a1, const void **a2)
{
  if (ShaderConverter::StaticInit(void)::onceToken != -1)
  {
    ShaderConverter::MetalToGLSLSymbol();
  }

  v3 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(ShaderConverter::mpStatics, a2);
  if (ShaderConverter::mpStatics + 8 == v3)
  {
    return a2;
  }

  else
  {
    return (v3 + 56);
  }
}

const void **ShaderConverter::GLSLToMetalSymbol(uint64_t a1, const void **a2)
{
  if (ShaderConverter::StaticInit(void)::onceToken != -1)
  {
    ShaderConverter::MetalToGLSLSymbol();
  }

  v4 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(ShaderConverter::mpStatics + 24, a2);
  if (ShaderConverter::mpStatics + 32 != v4)
  {
    v5 = v4;
    v6 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(ShaderConverter::mpStatics + 96, a2);
    if (ShaderConverter::mpStatics + 104 != v6)
    {
      v7 = ShaderConverter::GLSLToMetalSymbol(a1, v6 + 56);
      v8 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 200, (v5 + 56));
      std::string::operator=((v8 + 56), v7);
    }

    return (v5 + 56);
  }

  return a2;
}

void std::vector<Statement *>::push_back[abi:nn200100](uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<Statement *>>(a1, v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

void Statement::AddTokens(uint64_t a1, void *a2)
{
  if (*a2 != a2[1])
  {
    operator new();
  }
}

void ShaderConverter::ShaderConverter(ShaderConverter *this, NSString *a2)
{
  *this = &unk_282DC21B8;
  *(this + 1) = 0;
  v2 = this + 8;
  *(this + 5) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 23) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  *(this + 10) = 0;
  *(this + 11) = 0;
  *(this + 9) = 0;
  *(this + 96) = 0;
  *(this + 100) = 0u;
  *(this + 116) = 0u;
  *(this + 132) = 0u;
  *(this + 148) = 0u;
  *(this + 10) = 0u;
  *(this + 22) = this + 184;
  *(this + 26) = 0;
  *(this + 25) = this + 208;
  *(this + 27) = 0;
  v3 = [(NSString *)a2 UTF8String];
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = "";
  }

  MEMORY[0x21CF074C0](v2, v4);
  if (ShaderConverter::StaticInit(void)::onceToken != -1)
  {
    ShaderConverter::MetalToGLSLSymbol();
  }
}

void sub_21BF0712C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v6 = v4;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v6, *(v2 + 208));
  std::__tree<std::string>::destroy(v5, *(v2 + 184));
  v8 = *(v2 + 152);
  if (v8)
  {
    *(v2 + 160) = v8;
    operator delete(v8);
  }

  std::vector<Variable>::__destroy_vector::operator()[abi:nn200100](va);
  std::vector<Variable>::__destroy_vector::operator()[abi:nn200100](va);
  if (*(v2 + 31) < 0)
  {
    operator delete(*v3);
  }

  _Unwind_Resume(a1);
}

void ShaderConverter::~ShaderConverter(ShaderConverter *this)
{
  *this = &unk_282DC21B8;
  v2 = *(this + 11);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 9);
  if (v3)
  {
    std::__tree<char>::destroy(v3 + 80, *(v3 + 88));
    MEMORY[0x21CF07610](v3, 0x1060C4014D1E9E2);
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 200, *(this + 26));
  std::__tree<std::string>::destroy(this + 176, *(this + 23));
  v4 = *(this + 19);
  if (v4)
  {
    *(this + 20) = v4;
    operator delete(v4);
  }

  v5 = (this + 128);
  std::vector<Variable>::__destroy_vector::operator()[abi:nn200100](&v5);
  v5 = (this + 104);
  std::vector<Variable>::__destroy_vector::operator()[abi:nn200100](&v5);
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

{
  ShaderConverter::~ShaderConverter(this);

  JUMPOUT(0x21CF07610);
}

void ___ZN15ShaderConverter10StaticInitEv_block_invoke()
{
  if (!ShaderConverter::mpStatics)
  {
    operator new();
  }

  StandardUniforms = C3DShaderGetStandardUniforms();
  Count = CFDictionaryGetCount(StandardUniforms);
  v2 = malloc_type_malloc(8 * Count, 0xC0040B8AA526DuLL);
  v3 = malloc_type_malloc(8 * Count, 0xC0040B8AA526DuLL);
  CFDictionaryGetKeysAndValues(StandardUniforms, v2, v3);
  if (Count >= 1)
  {
    v4 = v2;
    v5 = v3;
    do
    {
      v6 = **v5;
      std::string::basic_string[abi:nn200100]<0>(__p, [*v4 UTF8String]);
      std::string::basic_string[abi:nn200100]<0>(&v8, [v6 UTF8String]);
      v11 = __p;
      v7 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(ShaderConverter::mpStatics + 96, __p);
      std::string::operator=((v7 + 56), &v8);
      if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v8.__r_.__value_.__l.__data_);
      }

      if (v10 < 0)
      {
        operator delete(__p[0]);
      }

      ++v5;
      ++v4;
      --Count;
    }

    while (Count);
  }

  free(v2);
  free(v3);
}

void sub_21BF075F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_21BF0761C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x21BF07604);
}

void ShaderConverter::NextToken(ShaderConverter *this)
{
  Token = Tokenizer::NextToken(*(this + 9));
  v3 = *Token;
  *(this + 52) = *(Token + 12);
  *(this + 40) = v3;
  if (*(this + 16) != 1)
  {
    return;
  }

  Token::str((this + 40), &v18);
  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    if (v18.__r_.__value_.__l.__size_ != 2)
    {
      goto LABEL_8;
    }

    v4 = v18.__r_.__value_.__r.__words[0];
  }

  else
  {
    if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) != 2)
    {
      goto LABEL_8;
    }

    v4 = &v18;
  }

  if (LOWORD(v4->__r_.__value_.__l.__data_) == 28265)
  {
    v6 = 1;
    goto LABEL_21;
  }

LABEL_8:
  Token::str((this + 40), &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    if (__p.__r_.__value_.__l.__size_ != 3)
    {
      v7 = 0;
LABEL_25:
      operator delete(__p.__r_.__value_.__l.__data_);
      goto LABEL_26;
    }

    p_p = __p.__r_.__value_.__r.__words[0];
  }

  else
  {
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) != 3)
    {
      v7 = 0;
      goto LABEL_26;
    }

    p_p = &__p;
  }

  v6 = 0;
  v7 = 0;
  data_low = LOWORD(p_p->__r_.__value_.__l.__data_);
  v9 = p_p->__r_.__value_.__s.__data_[2];
  if (data_low == 30063 && v9 == 116)
  {
LABEL_21:
    v7 = Tokenizer::GetNextChar(*(this + 9)) == 46;
    if ((v6 & 1) != 0 || (*(&__p.__r_.__value_.__s + 23) & 0x80) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  if ((*(&__p.__r_.__value_.__s + 23) & 0x80) != 0)
  {
    goto LABEL_25;
  }

LABEL_26:
  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
    if (v7)
    {
LABEL_37:
      ++*(this + 20);
      return;
    }
  }

  else if (v7)
  {
    goto LABEL_37;
  }

  v11 = ShaderConverter::mpStatics;
  Token::str((this + 40), &v18);
  v12 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(v11 + 24, &v18.__r_.__value_.__l.__data_);
  v13 = ShaderConverter::mpStatics + 32;
  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }

  if (v13 != v12)
  {
    ++*(this + 21);
  }

  v14 = ShaderConverter::mpStatics;
  Token::str((this + 40), &v18);
  v15 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(v14, &v18.__r_.__value_.__l.__data_);
  v16 = ShaderConverter::mpStatics + 8;
  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }

  if (v16 != v15)
  {
    goto LABEL_37;
  }
}

void sub_21BF0781C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if ((v20 & 1) == 0 && a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ShaderConverter::ParseUniform(ShaderConverter *this)
{
  Token::str((this + 40), &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    if (__p.__r_.__value_.__l.__size_ != 7 || (*__p.__r_.__value_.__l.__data_ == 1718185589 ? (v3 = *(__p.__r_.__value_.__r.__words[0] + 3) == 1836216166) : (v3 = 0), !v3))
    {
LABEL_106:
      __assert_rtn("ParseUniform", "C3DShaderConverter.mm", 626, "mToken.str() == uniform");
    }

    operator delete(__p.__r_.__value_.__l.__data_);
  }

  else
  {
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) != 7)
    {
      goto LABEL_106;
    }

    if (LODWORD(__p.__r_.__value_.__l.__data_) != 1718185589 || *(__p.__r_.__value_.__r.__words + 3) != 1836216166)
    {
      goto LABEL_106;
    }
  }

  ShaderConverter::NextToken(this);
  if (*(this + 16) == 13)
  {
    ShaderConverter::NextToken(this);
    if (*(this + 16) == 1)
    {
      Token::str((this + 40), &v27);
      ShaderConverter::NextToken(this);
      if (*(this + 16) != 13 || (ShaderConverter::NextToken(this), *(this + 16) != 1))
      {
        Token::str((this + 40), &__p);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        v7 = 0;
        goto LABEL_40;
      }

      Token::str((this + 40), &v26);
      ShaderConverter::NextToken(this);
      v4 = *(this + 16);
      if (v4 == 13)
      {
        ShaderConverter::NextToken(this);
        v4 = *(this + 16);
      }

      memset(&v25, 0, sizeof(v25));
      memset(&v24, 0, sizeof(v24));
      if (v4 == 10)
      {
        while (v4 != 11)
        {
          Token::str((this + 40), &__p);
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

          std::string::append(&v24, p_p, size);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          ShaderConverter::NextToken(this);
          v4 = *(this + 16);
          if (!v4)
          {
            goto LABEL_97;
          }
        }

        Token::str((this + 40), &__p);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v9 = &__p;
        }

        else
        {
          v9 = __p.__r_.__value_.__r.__words[0];
        }

        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v10 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v10 = __p.__r_.__value_.__l.__size_;
        }

        std::string::append(&v24, v9, v10);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        ShaderConverter::NextToken(this);
        v4 = *(this + 16);
        if (v4 == 13)
        {
          ShaderConverter::NextToken(this);
          v4 = *(this + 16);
        }
      }

      if (v4 == 5)
      {
        Token::str((this + 40), &__p);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          v11 = __p.__r_.__value_.__r.__words[0];
          if (__p.__r_.__value_.__l.__size_ == 1)
          {
            v12 = *__p.__r_.__value_.__l.__data_;
            operator delete(__p.__r_.__value_.__l.__data_);
            if (v12 == 61)
            {
              goto LABEL_59;
            }
          }

          else
          {
LABEL_78:
            operator delete(v11);
          }
        }

        else if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) == 1 && __p.__r_.__value_.__s.__data_[0] == 61)
        {
          while (1)
          {
LABEL_59:
            ShaderConverter::NextToken(this);
            Token::str((this + 40), &__p);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              if (__p.__r_.__value_.__l.__size_ == 1)
              {
                v11 = __p.__r_.__value_.__r.__words[0];
                if (*__p.__r_.__value_.__l.__data_ == 59)
                {
                  goto LABEL_78;
                }

                v13 = *(this + 16);
              }

              else
              {
                v13 = *(this + 16);
                v11 = __p.__r_.__value_.__r.__words[0];
              }

              operator delete(v11);
              if (!v13)
              {
                break;
              }
            }

            else
            {
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) == 1 && __p.__r_.__value_.__s.__data_[0] == 59)
              {
                break;
              }

              if (!*(this + 16))
              {
                goto LABEL_81;
              }
            }

            Token::str((this + 40), &__p);
            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v14 = &__p;
            }

            else
            {
              v14 = __p.__r_.__value_.__r.__words[0];
            }

            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v15 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v15 = __p.__r_.__value_.__l.__size_;
            }

            std::string::append(&v25, v14, v15);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }
          }
        }
      }

      if (*(this + 16) == 13)
      {
        ShaderConverter::NextToken(this);
      }

LABEL_81:
      Token::str((this + 40), &__p);
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) != 1 || __p.__r_.__value_.__s.__data_[0] != 59)
        {
          goto LABEL_97;
        }

LABEL_87:
        ShaderConverter::NextToken(this);
        Variable::Variable(&__p, &v26, &v27, &v25, &v24);
        std::vector<Variable>::push_back[abi:nn200100](this + 13, &__p);
        if (v23 < 0)
        {
          operator delete(v22);
        }

        if (v21 < 0)
        {
          operator delete(v20);
        }

        if (v19 < 0)
        {
          operator delete(v18);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        v7 = 1;
        goto LABEL_100;
      }

      if (__p.__r_.__value_.__l.__size_ == 1)
      {
        v16 = *__p.__r_.__value_.__l.__data_;
        operator delete(__p.__r_.__value_.__l.__data_);
        if (v16 == 59)
        {
          goto LABEL_87;
        }
      }

      else
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

LABEL_97:
      Token::str((this + 40), &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v7 = 0;
LABEL_100:
      if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v24.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v25.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v26.__r_.__value_.__l.__data_);
      }

LABEL_40:
      if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v27.__r_.__value_.__l.__data_);
      }

      return v7;
    }
  }

  Token::str((this + 40), &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return 0;
}

void sub_21BF07D34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  Variable::~Variable(&a9);
  if (a29 < 0)
  {
    operator delete(__p);
  }

  if (*(v29 - 81) < 0)
  {
    operator delete(*(v29 - 104));
  }

  if (*(v29 - 57) < 0)
  {
    operator delete(*(v29 - 80));
  }

  if (*(v29 - 33) < 0)
  {
    operator delete(*(v29 - 56));
  }

  _Unwind_Resume(a1);
}

uint64_t std::vector<Variable>::push_back[abi:nn200100](uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<Variable>::__emplace_back_slow_path<Variable>(a1, a2);
  }

  else
  {
    v4 = *a2;
    *(v3 + 16) = *(a2 + 16);
    *v3 = v4;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *a2 = 0;
    v5 = *(a2 + 24);
    *(v3 + 40) = *(a2 + 40);
    *(v3 + 24) = v5;
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    *(a2 + 24) = 0;
    v6 = *(a2 + 48);
    *(v3 + 64) = *(a2 + 64);
    *(v3 + 48) = v6;
    *(a2 + 56) = 0;
    *(a2 + 64) = 0;
    *(a2 + 48) = 0;
    v7 = *(a2 + 72);
    *(v3 + 88) = *(a2 + 88);
    *(v3 + 72) = v7;
    *(a2 + 72) = 0;
    *(a2 + 80) = 0;
    *(a2 + 88) = 0;
    result = v3 + 96;
  }

  a1[1] = result;
  return result;
}

void Variable::~Variable(void **this)
{
  if (*(this + 95) < 0)
  {
    operator delete(this[9]);
  }

  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void sub_21BF0808C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ShaderConverter::ParseTextureLookup(ShaderConverter *this)
{
  Token::str((this + 40), &v5);
  ShaderConverter::NextToken(this);
  v2 = *(this + 16);
  if (v2 == 13)
  {
    ShaderConverter::NextToken(this);
    v2 = *(this + 16);
  }

  if (v2 == 6)
  {
    ShaderConverter::NextToken(this);
    if (*(this + 16) == 13)
    {
      ShaderConverter::NextToken(this);
    }

    ShaderConverter::ParseFunctionArgument(this);
  }

  Token::str((this + 40), &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }

  return 0;
}

void sub_21BF08398(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  MEMORY[0x21CF07610](v17, 0x10B3C406D35A18FLL);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t ShaderConverter::ParseMatrixCTOR(ShaderConverter *this)
{
  Token::str((this + 40), &v5);
  std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(this + 176, &v5.__r_.__value_.__l.__data_);
  ShaderConverter::NextToken(this);
  v2 = *(this + 16);
  if (v2 == 13)
  {
    ShaderConverter::NextToken(this);
    v2 = *(this + 16);
  }

  if (v2 != 6)
  {
    operator new();
  }

  ShaderConverter::NextToken(this);
  if (*(this + 16) == 13)
  {
    ShaderConverter::NextToken(this);
  }

  v3 = *(this + 16);
  if (v3)
  {
    if (v3 != 7)
    {
      ShaderConverter::ParseFunctionArgument(this);
    }

    ShaderConverter::NextToken(this);
    std::__tree<std::__value_type<std::string,std::pair<int,int>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::pair<int,int>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::pair<int,int>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(ShaderConverter::mpStatics + 72, &v5.__r_.__value_.__l.__data_);
    operator new();
  }

  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }

  return 0;
}

void sub_21BF08624(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  MEMORY[0x21CF07610](v23, 0x1093C40CC6E360FLL);
  if (__p)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  _Unwind_Resume(a1);
}

void ShaderConverter::ParseDeclaration(ShaderConverter *this)
{
  v26 = 0;
  v27 = 0;
  v28 = 0;
  std::vector<Token>::push_back[abi:nn200100](&v26, (this + 40));
  Token::str((this + 40), &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    if (__p.__r_.__value_.__l.__size_ != 5)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
LABEL_20:
      v5 = 0;
      goto LABEL_21;
    }

    v4 = *__p.__r_.__value_.__l.__data_ != 1936617315 || *(__p.__r_.__value_.__r.__words[0] + 4) != 116;
    operator delete(__p.__r_.__value_.__l.__data_);
    if (v4)
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) != 5)
    {
      goto LABEL_20;
    }

    if (LODWORD(__p.__r_.__value_.__l.__data_) != 1936617315 || __p.__r_.__value_.__s.__data_[4] != 116)
    {
      goto LABEL_20;
    }
  }

  ShaderConverter::NextToken(this);
  std::vector<Token>::push_back[abi:nn200100](&v26, (this + 40));
  if (*(this + 16) == 13)
  {
    ShaderConverter::NextToken(this);
    std::vector<Token>::push_back[abi:nn200100](&v26, (this + 40));
    v5 = 1;
LABEL_21:
    Token::str((this + 40), &v25);
    ShaderConverter::NextToken(this);
    std::vector<Token>::push_back[abi:nn200100](&v26, (this + 40));
    if (*(this + 16) != 13)
    {
      Statement::AddTokens(*(this + 11), &v26);
      ShaderConverter::NextToken(this);
      *&__p.__r_.__value_.__r.__words[1] = 0uLL;
      __p.__r_.__value_.__r.__words[0] = &__p.__r_.__value_.__l.__size_;
      LODWORD(v24.__r_.__value_.__l.__data_) = 15;
      std::__tree<Token::TokenType>::__emplace_unique_key_args<Token::TokenType,Token::TokenType>(&__p, &v24);
      ShaderConverter::ParseRValue();
    }

    ShaderConverter::NextToken(this);
    std::vector<Token>::push_back[abi:nn200100](&v26, (this + 40));
    v6 = *(this + 16);
    if (v6 == 1)
    {
      Token::str((this + 40), &v24);
      ShaderConverter::NextToken(this);
      std::vector<Token>::push_back[abi:nn200100](&v26, (this + 40));
      v7 = *(this + 16);
      if (v7 == 13)
      {
        ShaderConverter::NextToken(this);
        std::vector<Token>::push_back[abi:nn200100](&v26, (this + 40));
        v7 = *(this + 16);
      }

      if (v7 == 6)
      {
        if ((*(this + 25) - 1) <= 1)
        {
          *(this + 25) = 3;
        }

        Statement::AddTokens(*(this + 11), &v26);
        ShaderConverter::NextToken(this);
        v8 = *(this + 16);
        if (v8)
        {
          v9 = v8 == 7;
        }

        else
        {
          v9 = 1;
        }

        if (!v9)
        {
          ShaderConverter::ParseFunctionArgument(this);
        }

        Statement::AddToken(*(this + 11), (this + 40));
      }

      memset(&v23, 0, sizeof(v23));
      if (v7 == 10)
      {
        while (v7 && v7 != 11)
        {
          Token::str((this + 40), &__p);
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

          std::string::append(&v23, p_p, size);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          ShaderConverter::NextToken(this);
          v7 = *(this + 16);
          if (!v7)
          {
            Token::str((this + 40), &__p);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            v7 = *(this + 16);
          }
        }

        Token::str((this + 40), &__p);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v12 = &__p;
        }

        else
        {
          v12 = __p.__r_.__value_.__r.__words[0];
        }

        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v13 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v13 = __p.__r_.__value_.__l.__size_;
        }

        std::string::append(&v23, v12, v13);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        ShaderConverter::NextToken(this);
        v7 = *(this + 16);
        if (v7 == 13)
        {
          ShaderConverter::NextToken(this);
          v7 = *(this + 16);
        }
      }

      if (v7 == 5)
      {
        ShaderConverter::NextToken(this);
        std::vector<Token>::push_back[abi:nn200100](&v26, (this + 40));
        if ((v5 & 1) != 0 || *(this + 25) == 3)
        {
          std::string::basic_string[abi:nn200100]<0>(&__p, "constant");
          Statement::AddToken();
        }

        Statement::AddTokens(*(this + 11), &v26);
        *&__p.__r_.__value_.__r.__words[1] = 0uLL;
        __p.__r_.__value_.__r.__words[0] = &__p.__r_.__value_.__l.__size_;
        LODWORD(v14[0]) = 15;
        std::__tree<Token::TokenType>::__emplace_unique_key_args<Token::TokenType,Token::TokenType>(&__p, v14);
        ShaderConverter::ParseRValue();
      }

      if (v7 == 15)
      {
        std::string::basic_string[abi:nn200100]<0>(v14, "");
        Variable::Variable(&__p, &v24, &v25, v14, &v23);
        std::vector<Variable>::push_back[abi:nn200100](this + 16, &__p);
        if (v22 < 0)
        {
          operator delete(v21);
        }

        if (v20 < 0)
        {
          operator delete(v19);
        }

        if (v18 < 0)
        {
          operator delete(v17);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (v15 < 0)
        {
          operator delete(v14[0]);
        }

        std::string::basic_string[abi:nn200100]<0>(&__p, "constant");
        Statement::AddToken();
      }

      if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v23.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v24.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      if (v6 == 5)
      {
        *(this + 25) = 4;
        ShaderConverter::NextToken(this);
        std::vector<Token>::push_back[abi:nn200100](&v26, (this + 40));
        Statement::AddTokens(*(this + 11), &v26);
        *&__p.__r_.__value_.__r.__words[1] = 0uLL;
        __p.__r_.__value_.__r.__words[0] = &__p.__r_.__value_.__l.__size_;
        LODWORD(v24.__r_.__value_.__l.__data_) = 15;
        std::__tree<Token::TokenType>::__emplace_unique_key_args<Token::TokenType,Token::TokenType>(&__p, &v24);
        ShaderConverter::ParseRValue();
      }

      Token::str((this + 40), &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      Statement::AddTokens(*(this + 11), &v26);
    }

    if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v25.__r_.__value_.__l.__data_);
    }

    goto LABEL_59;
  }

  Token::str((this + 40), &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  Statement::AddTokens(*(this + 11), &v26);
LABEL_59:
  if (v26)
  {
    v27 = v26;
    operator delete(v26);
  }
}

void sub_21BF09610(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (*(v36 - 113) < 0)
  {
    operator delete(*(v36 - 136));
  }

  if (*(v36 - 89) < 0)
  {
    operator delete(*(v36 - 112));
  }

  v38 = *(v36 - 88);
  if (v38)
  {
    *(v36 - 80) = v38;
    operator delete(v38);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<Token>::push_back[abi:nn200100](uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v8 = (v4 - *a1) >> 5;
    v9 = v8 + 1;
    if ((v8 + 1) >> 59)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v10 = v5 - *a1;
    if (v10 >> 4 > v9)
    {
      v9 = v10 >> 4;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFE0)
    {
      v11 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<Token>>(a1, v11);
    }

    v12 = (32 * v8);
    v13 = a2[1];
    *v12 = *a2;
    v12[1] = v13;
    v7 = 32 * v8 + 32;
    v14 = *(a1 + 8) - *a1;
    v15 = v12 - v14;
    memcpy(v12 - v14, *a1, v14);
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
    v6 = a2[1];
    *v4 = *a2;
    v4[1] = v6;
    v7 = (v4 + 2);
  }

  *(a1 + 8) = v7;
}