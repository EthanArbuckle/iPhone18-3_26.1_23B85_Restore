void ___ZN3AGX8Compiler14compileProgramINS_20BVHBuilderProgramKeyE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v14[0] = MEMORY[0x29EDCA5F8];
  v14[1] = 3221225472;
  v15 = ___ZN3AGX8Compiler14compileProgramINS_20BVHBuilderProgramKeyE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke_2;
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

uint64_t ___ZN3AGX8Compiler14compileProgramINS_20BVHBuilderProgramKeyE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke_4(uint64_t a1, void *a2)
{
  mach_absolute_time();
  if (getTimebaseInfo(void)::once != -1)
  {
    dispatch_once(&getTimebaseInfo(void)::once, &__block_literal_global_11354);
  }

  return (*(*(a1 + 32) + 16))(*(a1 + 32), *a2);
}

void ___ZN3AGX8Compiler14compileProgramINS_20BVHBuilderProgramKeyE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke_2(void *a1)
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

void sub_29CCDBEC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AGCDeserializedReply::~AGCDeserializedReply(va);
  _Unwind_Resume(a1);
}

unint64_t AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::findOrCreateTensorBlitPipeline(uint64_t a1, unsigned int *a2)
{
  v49 = *MEMORY[0x29EDCA608];
  v3 = a2[10];
  v4 = a1 + 5984;
  result = atomic_load_explicit((a1 + 5984 + 8 * v3), memory_order_acquire);
  if (!result)
  {
    os_unfair_lock_lock((a1 + 5976));
    v32 = 0;
    v33 = &v32;
    v34 = 0x2020000000;
    v7 = *(v4 + 8 * v3);
    v35 = v7;
    if (!v7)
    {
      v8 = *(a1 + 7160);
      v31[0] = MEMORY[0x29EDCA5F8];
      v31[1] = 3221225472;
      v31[2] = ___ZN3AGX6DeviceINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE30findOrCreateTensorBlitPipelineERNS_20TensorBlitProgramKeyE_block_invoke;
      v31[3] = &unk_29F340FA8;
      v31[4] = &v32;
      v31[5] = a1;
      v31[6] = v3;
      v9 = *(v8 + 8);
      if ((*(*a2 + 24))(a2))
      {
        v10 = v9;
      }

      else
      {
        v10 = 0;
      }

      v11 = objc_opt_new();
      [v11 setSync:1];
      [v11 setPipelineCache:v10];
      [v11 setBinaryArchives:0];
      v36[0] = MEMORY[0x29EDCA5F8];
      v36[1] = 3221225472;
      v36[2] = ___ZN3AGX8Compiler14compileProgramINS_20TensorBlitProgramKeyEEEvRKT_P7NSArrayIPU27objcproto16MTLBinaryArchive11objc_objectEU13block_pointerFvRK20AGCDeserializedReply16MTLCompilerErrorP8NSStringEb_block_invoke;
      v36[3] = &unk_29F342280;
      v36[4] = v31;
      v12 = *(v8 + 24);
      if (v12 && *(v12 + 120) == 1)
      {
        v13 = [objc_msgSend(v11 "binaryArchives")];
        v14 = 0x200000000000;
        if (!v13)
        {
          v14 = 1;
        }

        atomic_fetch_or(v12, v14);
        v15 = *(v8 + 24);
        v16 = [v11 destinationBinaryArchive];
        v17 = 0x400000000000;
        if (!v16)
        {
          v17 = 1;
        }

        atomic_fetch_or(v15, v17);
      }

      if ([v11 destinationBinaryArchive])
      {
        {
          AGX::Compiler::shouldUseAIRNTInterfacesForBinaryArchiveAddRequests(void)::envDisable = 0;
        }

        if (AGX::Compiler::shouldUseAIRNTInterfacesForBinaryArchiveAddRequests(void)::envDisable == 1)
        {
          [v11 setUseAIRNTInterfaces:0];
        }
      }

      v40 = 0;
      v41 = 0;
      (*(*a2 + 16))(a2, &v41, &v40);
      v18 = dispatch_data_create(v41, v40, 0, 0);
      [v11 setDriverKeyData:v18];
      if ([v11 airScript])
      {
        v19 = [v11 airScript];
        object = 0;
        v38 = 0;
        v39 = 0;
        object = dispatch_data_create_map(v19, &v38, &v39);
        v20 = v38;
        v21 = *v38;
        CC_SHA256_Init(&c);
        (**a2)(a2, &c);
        *len = 0;
        data = 0;
        if (AGX::GetSerializedVertexFormat((v20 + v21), &data, len, v22, v23))
        {
          v24 = data;
          CC_SHA256_Update(&c, data, len[0]);
          free(v24);
        }

        CC_SHA256_Final(&md, &c);
        dispatch_release(object);
        *c.count = md;
        *&c.hash[2] = v45;
        [v11 setVendorPluginFunctionId:&c];
      }

      *c.count = MEMORY[0x29EDCA5F8];
      *c.hash = 3221225472;
      *&c.hash[2] = ___ZN3AGX8Compiler14compileProgramINS_20TensorBlitProgramKeyE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke;
      *&c.hash[4] = &unk_29F3422D0;
      *&c.hash[6] = v11;
      *c.wbuf = v36;
      if ([v11 function])
      {
        v25 = mach_absolute_time();
        v26 = *v8;
        *&md = MEMORY[0x29EDCA5F8];
        *(&md + 1) = 3221225472;
        *&v45 = ___ZN3AGX8Compiler14compileProgramINS_20TensorBlitProgramKeyE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke_4;
        *(&v45 + 1) = &unk_29F342320;
        p_c = &c;
        v47 = v25;
        [v26 compileFunctionRequest:v11 compilerTask:0 completionHandler:&md];
      }

      else
      {
        if ([v11 frameworkData] || objc_msgSend(v11, "pipelineOptions"))
        {
          AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::alertCommandBufferActivityStart(void)::{lambda(void)#1}::operator()[abi:[AGX] Failed assertion _previousValue _ 2147483647_]();
        }

        *&md = MEMORY[0x29EDCA5F8];
        *(&md + 1) = 3221225472;
        *&v45 = ___ZN3AGX8Compiler14compileProgramINS_20TensorBlitProgramKeyE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke_3;
        *(&v45 + 1) = &unk_29F3422F8;
        p_c = &c;
        v27 = [objc_msgSend(v11 "binaryArchives")];
        v28 = *v8;
        v29 = [v11 driverKeyData];
        if (v27)
        {
          [v28 compileRequest:v29 binaryArchives:objc_msgSend(v11 failOnBinaryArchiveMiss:"binaryArchives") pipelineCache:0 sync:objc_msgSend(v11 completionHandler:{"pipelineCache"), objc_msgSend(v11, "sync"), &md}];
        }

        else
        {
          [v28 compileRequest:v29 pipelineCache:objc_msgSend(v11 sync:"pipelineCache") completionHandler:{objc_msgSend(v11, "sync"), &md}];
        }
      }

      dispatch_release(v18);

      v7 = v33[3];
    }

    v30 = v7;
    _Block_object_dispose(&v32, 8);
    os_unfair_lock_unlock((a1 + 5976));
    return v30;
  }

  return result;
}

void sub_29CCDC434(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, dispatch_object_t object)
{
  dispatch_release(object);
  _Block_object_dispose(&a17, 8);
  os_unfair_lock_unlock((v26 + v27));
  _Unwind_Resume(a1);
}

void ___ZN3AGX6DeviceINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE30findOrCreateTensorBlitPipelineERNS_20TensorBlitProgramKeyE_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (!a3)
  {
    operator new();
  }

  _ZZZN3AGX6DeviceINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE28findOrCreateUberBlitPipelineERNS_18UberBlitProgramKeyEEUb_ENKUlvE_clB57_AGX__Failed_assertion__error____MTLCompilerErrorNoError_Ev(a4);
}

uint64_t ___ZN3AGX8Compiler14compileProgramINS_20TensorBlitProgramKeyEEEvRKT_P7NSArrayIPU27objcproto16MTLBinaryArchive11objc_objectEU13block_pointerFvRK20AGCDeserializedReply16MTLCompilerErrorP8NSStringEb_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
    AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::alertCommandBufferActivityStart(void)::{lambda(void)#1}::operator()[abi:[AGX] Failed assertion _previousValue _ 2147483647_]();
  }

  v5 = *(*(a1 + 32) + 16);

  return v5();
}

void ___ZN3AGX8Compiler14compileProgramINS_20TensorBlitProgramKeyE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v14[0] = MEMORY[0x29EDCA5F8];
  v14[1] = 3221225472;
  v15 = ___ZN3AGX8Compiler14compileProgramINS_20TensorBlitProgramKeyE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke_2;
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

uint64_t ___ZN3AGX8Compiler14compileProgramINS_20TensorBlitProgramKeyE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke_4(uint64_t a1, void *a2)
{
  mach_absolute_time();
  if (getTimebaseInfo(void)::once != -1)
  {
    dispatch_once(&getTimebaseInfo(void)::once, &__block_literal_global_11354);
  }

  return (*(*(a1 + 32) + 16))(*(a1 + 32), *a2);
}

void ___ZN3AGX8Compiler14compileProgramINS_20TensorBlitProgramKeyE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke_2(void *a1)
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

void sub_29CCDC978(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AGCDeserializedReply::~AGCDeserializedReply(va);
  _Unwind_Resume(a1);
}

uint64_t AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::isAfterFragmentMemoryBarrierSupported()
{
  {
    AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::isAfterFragmentMemoryBarrierSupported(void)const::isAfterFragmentMemoryBarrierSupported = dyld_program_sdk_at_least() ^ 1;
  }

  return AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::isAfterFragmentMemoryBarrierSupported(void)const::isAfterFragmentMemoryBarrierSupported;
}

void AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::registerVariantEventInfo(uint64_t a1, unint64_t a2, uint64_t a3)
{
  os_unfair_lock_lock((a1 + 17144));
  if ((((5 * *(a1 + 17176)) >> 16) & 0xFFFFFFFFFFFLL) == 0)
  {
    v6 = *(a1 + 17160);
    if (!*&v6)
    {
      goto LABEL_25;
    }

    v7 = vcnt_s8(v6);
    v7.i16[0] = vaddlv_u8(v7);
    if (v7.u32[0] > 1uLL)
    {
      v8 = a2;
      if (*&v6 <= a2)
      {
        v8 = a2 % *&v6;
      }
    }

    else
    {
      v8 = (*&v6 - 1) & a2;
    }

    v9 = *(*(a1 + 17152) + 8 * v8);
    if (!v9 || (v10 = *v9) == 0)
    {
LABEL_25:
      operator new();
    }

    if (v7.u32[0] < 2uLL)
    {
      while (1)
      {
        v12 = v10[1];
        if (v12 == a2)
        {
          if (v10[2] == a2)
          {
            goto LABEL_26;
          }
        }

        else if ((v12 & (*&v6 - 1)) != v8)
        {
          goto LABEL_25;
        }

        v10 = *v10;
        if (!v10)
        {
          goto LABEL_25;
        }
      }
    }

    while (1)
    {
      v11 = v10[1];
      if (v11 == a2)
      {
        if (v10[2] == a2)
        {
LABEL_26:
          *(v10 + 3) = *a3;
          v13 = *(a3 + 16);
          v14 = *(a3 + 32);
          v15 = *(a3 + 48);
          v10[11] = *(a3 + 64);
          *(v10 + 9) = v15;
          *(v10 + 7) = v14;
          *(v10 + 5) = v13;
          goto LABEL_27;
        }
      }

      else
      {
        if (v11 >= *&v6)
        {
          v11 %= *&v6;
        }

        if (v11 != v8)
        {
          goto LABEL_25;
        }
      }

      v10 = *v10;
      if (!v10)
      {
        goto LABEL_25;
      }
    }
  }

  if (AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::registerVariantEventInfo(unsigned long,AGX::FunctionCompiledEventInfo const&)::once != -1)
  {
    dispatch_once(&AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::registerVariantEventInfo(unsigned long,AGX::FunctionCompiledEventInfo const&)::once, &__block_literal_global_132);
  }

LABEL_27:

  os_unfair_lock_unlock((a1 + 17144));
}

void sub_29CCDCEF4(_Unwind_Exception *a1)
{
  operator delete(v2);
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_29CCDD4E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, dispatch_object_t object)
{
  dispatch_release(object);
  if (__p)
  {
    operator delete(__p);
  }

  if (a22)
  {
    operator delete(a22);
  }

  _Unwind_Resume(a1);
}

void ___ZN3AGX6DeviceINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE47createComputeProgressMarkerDriverShaderIfNeededEP19AGXG18PFamilyDevice_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
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

  v12 = 0;
  v13 = 0;
  ProgramKey<(_AGCStreamToken)41,(AGX::DriverShaderCompilationMode)1>::serialize(a1 + 48, &v13, &v12);
  v8 = a4;
  v9 = v6;
  v10 = v12;
  v11 = v13;
  _ZZZN3AGX6DeviceINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE30findOrCreateBlitProgramVariantERNS_20BlitVertexProgramKeyEEUb_ENKUlvE_clB14_AGX__Crashed_Ev();
}

void sub_29CCDD728(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  if (*(v6 - 49) < 0)
  {
    operator delete(*(v6 - 72));
  }

  AGX::ProgramBindingRemap<AGX::HAL300::Encoders,AGX::HAL300::Classes>::~ProgramBindingRemap(va);
  MEMORY[0x29ED520D0](v4, v5);
  _Unwind_Resume(a1);
}

uint64_t ___ZN3AGX8Compiler14compileProgramI10ProgramKeyIL15_AGCStreamToken41ELNS_27DriverShaderCompilationModeE1EEEEvRKT_P7NSArrayIPU27objcproto16MTLBinaryArchive11objc_objectEU13block_pointerFvRK20AGCDeserializedReply16MTLCompilerErrorP8NSStringEb_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
    AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::alertCommandBufferActivityStart(void)::{lambda(void)#1}::operator()[abi:[AGX] Failed assertion _previousValue _ 2147483647_]();
  }

  v5 = *(*(a1 + 32) + 16);

  return v5();
}

void ___ZN3AGX8Compiler14compileProgramI10ProgramKeyIL15_AGCStreamToken41ELNS_27DriverShaderCompilationModeE1EE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSJ_SJ_SJ_SJ_16MTLCompilerErrorP8NSStringyE_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v14[0] = MEMORY[0x29EDCA5F8];
  v14[1] = 3221225472;
  v15 = ___ZN3AGX8Compiler14compileProgramI10ProgramKeyIL15_AGCStreamToken41ELNS_27DriverShaderCompilationModeE1EE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSJ_SJ_SJ_SJ_16MTLCompilerErrorP8NSStringyE_block_invoke_2;
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

uint64_t ___ZN3AGX8Compiler14compileProgramI10ProgramKeyIL15_AGCStreamToken41ELNS_27DriverShaderCompilationModeE1EE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSJ_SJ_SJ_SJ_16MTLCompilerErrorP8NSStringyE_block_invoke_4(uint64_t a1, void *a2)
{
  mach_absolute_time();
  if (getTimebaseInfo(void)::once != -1)
  {
    dispatch_once(&getTimebaseInfo(void)::once, &__block_literal_global_11354);
  }

  return (*(*(a1 + 32) + 16))(*(a1 + 32), *a2);
}

void ___ZN3AGX8Compiler14compileProgramI10ProgramKeyIL15_AGCStreamToken41ELNS_27DriverShaderCompilationModeE1EE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSJ_SJ_SJ_SJ_16MTLCompilerErrorP8NSStringyE_block_invoke_2(void *a1)
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

void sub_29CCDDA38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AGCDeserializedReply::~AGCDeserializedReply(va);
  _Unwind_Resume(a1);
}

void __destroy_helper_block_e8_48c77_ZTS10ProgramKeyIL15_AGCStreamToken41ELN3AGX27DriverShaderCompilationModeE1EE(void *a1)
{
  a1[6] = &unk_2A23F57A8;
  v1 = a1[8];
  if (v1)
  {
    a1[9] = v1;
    operator delete(v1);
  }
}

uint64_t __copy_helper_block_e8_48c77_ZTS10ProgramKeyIL15_AGCStreamToken41ELN3AGX27DriverShaderCompilationModeE1EE(uint64_t result, uint64_t a2)
{
  *(result + 48) = &unk_2A23F57A8;
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

  return result;
}

void ProgramKey<(_AGCStreamToken)41,(AGX::DriverShaderCompilationMode)1>::serialize(uint64_t a1, uint64_t *a2, void *a3)
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

__n128 __Block_byref_object_copy_(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  return result;
}

void ___ZN3AGX6DeviceINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE29getStatelessPSODynamicLibraryERKNS_29StatelessPSODynamicLibraryKeyE_block_invoke(void *a1, void *a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    _ZZZN3AGX6DeviceINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE28findOrCreateUberBlitPipelineERNS_18UberBlitProgramKeyEEUb_ENKUlvE_clB57_AGX__Failed_assertion__error____MTLCompilerErrorNoError_Ev(a4);
  }

  v6 = a1[5];
  v7 = [[AGXG18PFamilyDynamicLibrary alloc] initWithCompilerReply:a2 name:@"driver-install-name" device:*(v6 + 6312)];
  v8 = a2 + 63;
  if (a2[63])
  {
    v9 = a2[64] == 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = 63;
  if (v9)
  {
    v10 = 133;
    v8 = a2 + 133;
  }

  if (v8[1])
  {
    v11 = a2[v10] == 0;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    v12 = 15;
    LODWORD(v13) = 15;
  }

  else
  {
    if (a2[59])
    {
      v14 = a2[58] == 0;
    }

    else
    {
      v14 = 1;
    }

    v15 = 58;
    if (v14)
    {
      v15 = 128;
    }

    v16 = (a2[v15] + *a2[v15]);
    v17 = (v16 + *(v16 - *v16 + 26));
    v18 = (v17 + *v17 + *(v17 + *v17 - *(v17 + *v17) + 6));
    v19 = (v18 + *v18 + *(v18 + *v18 + 4) + 4);
    v20 = (v19 - *v19);
    v21 = *v20;
    if (v21 < 5)
    {
      v12 = 0;
      LODWORD(v13) = 0;
    }

    else
    {
      v13 = v20[2];
      if (v20[2])
      {
        LODWORD(v13) = *(v19 + v13);
      }

      if (v21 >= 7 && (v22 = v20[3]) != 0)
      {
        v12 = *(v19 + v22);
      }

      else
      {
        v12 = 0;
      }
    }
  }

  v23 = *(a1[4] + 8);
  *(v23 + 48) = v7;
  *(v23 + 56) = v13;
  *(v23 + 60) = v12;
  os_unfair_lock_lock((v6 + 16928));
  v24 = *(a1[4] + 8);
  v25 = a1[6];
  v26 = *(v6 + 6184);
  if (!v26)
  {
LABEL_42:
    operator new();
  }

  v27 = v25[10];
  v28 = v25[12];
  v29 = v25[13];
  v30 = v25[14];
  v31 = v25[15];
  while (1)
  {
    while (1)
    {
      v32 = v26;
      v33 = *(v26 + 18);
      if (v27 < v33)
      {
        goto LABEL_28;
      }

      if (v33 >= v27)
      {
        break;
      }

LABEL_31:
      v26 = v32[1];
      if (!v26)
      {
        goto LABEL_42;
      }
    }

    v34 = *(v32 + 20);
    if (v28 >= v34)
    {
      if (v34 < v28)
      {
        goto LABEL_31;
      }

      v35 = *(v32 + 21);
      if (v29 >= v35)
      {
        if (v35 < v29)
        {
          goto LABEL_31;
        }

        v36 = *(v32 + 22);
        if (v30 >= v36)
        {
          if (v36 < v30)
          {
            goto LABEL_31;
          }

          v37 = *(v32 + 23);
          if (v31 >= v37)
          {
            break;
          }
        }
      }
    }

LABEL_28:
    v26 = *v32;
    if (!*v32)
    {
      goto LABEL_42;
    }
  }

  if (v37 < v31)
  {
    goto LABEL_31;
  }

  v32[12] = *(v24 + 48);
  *(v32 + 26) = *(v24 + 56);
  *(v32 + 27) = *(v24 + 60);

  os_unfair_lock_unlock((v6 + 16928));
}

void sub_29CCDDF5C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__tree_node<std::__value_type<AGX::StatelessPSODynamicLibraryKey,std::tuple<AGXG18PFamilyDynamicLibrary *,unsigned int,unsigned int>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<AGX::StatelessPSODynamicLibraryKey,std::tuple<AGXG18PFamilyDynamicLibrary *,unsigned int,unsigned int>>,void *>>>>::~unique_ptr[abi:nn200100](va);
  os_unfair_lock_unlock((v2 + v3));
  _Unwind_Resume(a1);
}

uint64_t ___ZN3AGX8Compiler14compileProgramINS_29StatelessPSODynamicLibraryKeyEEEvRKT_P7NSArrayIPU27objcproto16MTLBinaryArchive11objc_objectEU13block_pointerFvRK20AGCDeserializedReply16MTLCompilerErrorP8NSStringEb_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
    AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::alertCommandBufferActivityStart(void)::{lambda(void)#1}::operator()[abi:[AGX] Failed assertion _previousValue _ 2147483647_]();
  }

  v5 = *(*(a1 + 32) + 16);

  return v5();
}

void ___ZN3AGX8Compiler14compileProgramINS_29StatelessPSODynamicLibraryKeyE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v14[0] = MEMORY[0x29EDCA5F8];
  v14[1] = 3221225472;
  v15 = ___ZN3AGX8Compiler14compileProgramINS_29StatelessPSODynamicLibraryKeyE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke_2;
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

uint64_t ___ZN3AGX8Compiler14compileProgramINS_29StatelessPSODynamicLibraryKeyE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke_4(uint64_t a1, void *a2)
{
  mach_absolute_time();
  if (getTimebaseInfo(void)::once != -1)
  {
    dispatch_once(&getTimebaseInfo(void)::once, &__block_literal_global_11354);
  }

  return (*(*(a1 + 32) + 16))(*(a1 + 32), *a2);
}

void ___ZN3AGX8Compiler14compileProgramINS_29StatelessPSODynamicLibraryKeyE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke_2(void *a1)
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

void sub_29CCDE25C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AGCDeserializedReply::~AGCDeserializedReply(va);
  _Unwind_Resume(a1);
}

void **std::unique_ptr<std::__tree_node<std::__value_type<AGX::StatelessPSODynamicLibraryKey,std::tuple<AGXG18PFamilyDynamicLibrary *,unsigned int,unsigned int>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<AGX::StatelessPSODynamicLibraryKey,std::tuple<AGXG18PFamilyDynamicLibrary *,unsigned int,unsigned int>>,void *>>>>::~unique_ptr[abi:nn200100](void **a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    if (*(v1 + 16) == 1)
    {
      v2[4] = &unk_2A23F9480;
      v4 = v2[6];
      if (v4)
      {
        v2[7] = v4;
        v5 = v2;
        operator delete(v4);
        v2 = v5;
      }
    }

    operator delete(v2);
    return v3;
  }

  return v1;
}

void AGX::StatelessPSODynamicLibraryKey::serialize(AGX::StatelessPSODynamicLibraryKey *this, const void **a2, unint64_t *a3)
{
  v6 = (this + 16);
  *(this + 3) = *(this + 2);
  v13 = *(this + 8) | 0x100;
  std::vector<unsigned int>::push_back[abi:nn200100](this + 16, &v13);
  begin = v6->__begin_;
  v8 = v6->__end_ - v6->__begin_;
  if (v8 > 0xFFFFFFFFFFFFFFDFLL)
  {
    v9 = begin + v8 + 32;
    *(this + 3) = v9;
  }

  else
  {
    std::vector<unsigned int>::__append(v6, 8uLL);
    begin = *(this + 2);
    v9 = *(this + 3);
  }

  v10 = begin + v8;
  *v10 = ((v9 - begin) >> 2 << 8) | 0x63;
  v11 = *(this + 40);
  *(v10 + 20) = *(this + 7);
  *(v10 + 4) = v11;
  v14 = 96;
  std::vector<unsigned int>::push_back[abi:nn200100](v6, &v14);
  v12 = *(this + 2);
  *a2 = v12;
  *a3 = *(this + 3) - v12;
}

uint64_t AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::enableGIN1291SWWA()
{
  {
    return AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::enableGIN1291SWWA(void)const::enable_gin1149_swwa;
  }

  {
    AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::enableGIN1291SWWA(void)const::enable_gin1149_swwa = 1;
  }

  return AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::enableGIN1291SWWA(void)const::enable_gin1149_swwa;
}

AGXG18PFamilyComputeProgram *___ZN3AGX23UserCommonShaderFactoryINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE36addComputePipelineFunctionsToArchiveEP28MTLComputePipelineDescriptorP19AGXG18PFamilyDevicemP26AGXG18PFamilyBinaryArchivePP7NSError_block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) vendorPrivate];
  v3 = v2;
  if (!v2)
  {
    v3 = objc_alloc_init(AGXG18PFamilyComputeOrFragmentOrTileProgram);
    [*(a1 + 32) setVendorPrivate:v3];

    result = v3->_compute;
    if (result)
    {
      goto LABEL_3;
    }

LABEL_5:
    result = objc_alloc_init(AGXG18PFamilyComputeProgram);
    v3->_compute = result;
    goto LABEL_3;
  }

  result = *(v2 + 8);
  if (!result)
  {
    goto LABEL_5;
  }

LABEL_3:
  *(*(*(a1 + 40) + 8) + 24) = &result->_impl;
  return result;
}

void *___ZN3AGX23UserCommonShaderFactoryINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE36addComputePipelineFunctionsToArchiveEP28MTLComputePipelineDescriptorP19AGXG18PFamilyDevicemP26AGXG18PFamilyBinaryArchivePP7NSError_block_invoke_2(void *result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  if (!a2)
  {
    v17 = v9;
    v18 = v7;
    v19 = v6;
    v12 = result;
    v13 = result[6];
    if (v13)
    {
      if (a5 > 3)
      {
        v14 = 5;
      }

      else
      {
        v14 = qword_29D2F40D8[a5];
      }

      v15 = [MEMORY[0x29EDB8DC0] dictionaryWithObject:a6 forKey:{*MEMORY[0x29EDB9ED8], v17, v8, v18, v19, v10, v11}];
      result = [objc_alloc(MEMORY[0x29EDB9FA0]) initWithDomain:@"AGXMetalG18P" code:v14 userInfo:v15];
      *v13 = result;
      v16 = v12[6];
      if (v16)
      {
        result = *v16;
      }
    }

    *(*(v12[4] + 8) + 24) = 0;
  }

  return result;
}

void sub_29CCDEC24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id ___ZN3AGX23UserCommonShaderFactoryINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE35addRenderPipelineFunctionsToArchiveI31MTLMeshRenderPipelineDescriptorEEbPT_P19AGXG18PFamilyDevicemP26AGXG18PFamilyBinaryArchivePP7NSError_block_invoke(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  result = a1[5];
  if (result)
  {
    v7 = AGX::UserCommonShaderFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::RenderPipelineDescriptorInfo::~RenderPipelineDescriptorInfo(result);
    result = MEMORY[0x29ED520D0](v7, 0xA0C402B819244);
  }

  *(*(a1[4] + 8) + 24) = a4 == 0;
  if (a4)
  {
    result = a4;
    v8 = a1[6];
    if (v8)
    {
      *v8 = a4;
    }
  }

  return result;
}

void ___ZN3AGX23UserCommonShaderFactoryINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE34createGeometryStageAndLinkPipelineI31MTLMeshRenderPipelineDescriptorLb1EEEvPKNS5_28RenderPipelineDescriptorInfoEPNS1_22FragmentProgramVariantE13ReflectionKeyP19AGXG18PFamilyDevicePT_mbbyP19NSMutableDictionaryP26AGXG18PFamilyBinaryArchivePKNS_17UserShaderFactoryIS2_S3_S4_E17ArchiveLookupInfoEPU27objcproto16OS_dispatch_data8NSObjectPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvPU33objcproto22MTLRenderPipelineState11objc_objectP27MTLRenderPipelineReflectionP7NSErrorE_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a2)
  {
    v8 = *(a1 + 32);
    v7 = *(a1 + 40);
    v10 = *(a1 + 72);
    v9 = *(a1 + 80);
    v11 = *(a1 + 88);
    v12 = *(a1 + 96);
    v13 = v12[15];
    v14 = v12[3];
    v15 = v12[11];
    v16 = *(a2 + 4034);
    v17 = *(a1 + 104);
    v18 = *(a1 + 48);
    v19 = *(a1 + 56);
    v24[0] = MEMORY[0x29EDCA5F8];
    v24[1] = 3221225472;
    v24[2] = ___ZN3AGX23UserCommonShaderFactoryINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE34createGeometryStageAndLinkPipelineI31MTLMeshRenderPipelineDescriptorLb1EEEvPKNS5_28RenderPipelineDescriptorInfoEPNS1_22FragmentProgramVariantE13ReflectionKeyP19AGXG18PFamilyDevicePT_mbbyP19NSMutableDictionaryP26AGXG18PFamilyBinaryArchivePKNS_17UserShaderFactoryIS2_S3_S4_E17ArchiveLookupInfoEPU27objcproto16OS_dispatch_data8NSObjectPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvPU33objcproto22MTLRenderPipelineState11objc_objectP27MTLRenderPipelineReflectionP7NSErrorE_block_invoke_2;
    v24[3] = &unk_29F341248;
    v24[4] = *(a1 + 64);
    v24[5] = v10;
    AGX::UserCommonShaderFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::createUserOrPassthroughObjectProgramVariant<MTLMeshRenderPipelineDescriptor>(v10, v8, v7, v9, v18, v11, a7, v13, v14, v15, v16, HIBYTE(v16), v17, v19, v24);
  }

  else
  {
    v20 = *(a1 + 64);
    if (v20)
    {
      if (a5 > 3)
      {
        v21 = 5;
      }

      else
      {
        v21 = qword_29D2F40D8[a5];
      }

      v22 = [MEMORY[0x29EDB8DC0] dictionaryWithObject:a6 forKey:*MEMORY[0x29EDB9ED8]];
      v23 = [objc_alloc(MEMORY[0x29EDB9FA0]) initWithDomain:@"AGXMetalG18P" code:v21 userInfo:v22];
      (*(v20 + 16))(v20, 0, 0, v23);
    }
  }
}

void ___ZN3AGX23UserCommonShaderFactoryINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE35addRenderPipelineFunctionsToArchiveI31MTLMeshRenderPipelineDescriptorEEbPT_P19AGXG18PFamilyDevicemP26AGXG18PFamilyBinaryArchivePP7NSError_block_invoke_2(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a2)
  {
    v7 = a1[9];
    if (v7[2])
    {
      v9 = a1[7];
      v8 = a1[8];
      v10 = a1[4];
      v11 = a1[5];
      v12 = a1[10];
      v13 = a1[6];
      v14 = v7[14];
      v15 = v7[6];
      v16 = v7[10];
      v21[0] = MEMORY[0x29EDCA5F8];
      v21[1] = 3221225472;
      v21[2] = ___ZN3AGX23UserCommonShaderFactoryINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE34createGeometryStageAndLinkPipelineI31MTLMeshRenderPipelineDescriptorLb1EEEvPKNS5_28RenderPipelineDescriptorInfoEPNS1_22FragmentProgramVariantE13ReflectionKeyP19AGXG18PFamilyDevicePT_mbbyP19NSMutableDictionaryP26AGXG18PFamilyBinaryArchivePKNS_17UserShaderFactoryIS2_S3_S4_E17ArchiveLookupInfoEPU27objcproto16OS_dispatch_data8NSObjectPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvPU33objcproto22MTLRenderPipelineState11objc_objectP27MTLRenderPipelineReflectionP7NSErrorE_block_invoke;
      v21[3] = &unk_29F341270;
      v21[4] = v11;
      v21[5] = v10;
      v21[10] = v12;
      v21[11] = 0;
      v21[12] = v7;
      v22 = 0;
      v21[6] = v13;
      v21[7] = 0;
      v21[8] = v9;
      v21[9] = v8;
      AGX::UserCommonShaderFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::createMeshProgramVariant<MTLMeshRenderPipelineDescriptor>(v8, v11, v10, v12, v13, 0, a7, v14, v15, a2, v16, 0, 0, v21);
    }
  }

  else
  {
    v17 = a1[7];
    if (v17)
    {
      if (a5 > 3)
      {
        v18 = 5;
      }

      else
      {
        v18 = qword_29D2F40D8[a5];
      }

      v19 = [MEMORY[0x29EDB8DC0] dictionaryWithObject:a6 forKey:*MEMORY[0x29EDB9ED8]];
      v20 = [objc_alloc(MEMORY[0x29EDB9FA0]) initWithDomain:@"AGXMetalG18P" code:v18 userInfo:v19];
      (*(v17 + 16))(v17, 0, 0, v20);
    }
  }
}

void ___ZN3AGX23UserCommonShaderFactoryINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE34createGeometryStageAndLinkPipelineI31MTLMeshRenderPipelineDescriptorLb1EEEvPKNS5_28RenderPipelineDescriptorInfoEPNS1_22FragmentProgramVariantE13ReflectionKeyP19AGXG18PFamilyDevicePT_mbbyP19NSMutableDictionaryP26AGXG18PFamilyBinaryArchivePKNS_17UserShaderFactoryIS2_S3_S4_E17ArchiveLookupInfoEPU27objcproto16OS_dispatch_data8NSObjectPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvPU33objcproto22MTLRenderPipelineState11objc_objectP27MTLRenderPipelineReflectionP7NSErrorE_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 32);
  if (a4)
  {
    if (v5)
    {
      if (a4 > 3)
      {
        v6 = 5;
      }

      else
      {
        v6 = qword_29D2F40D8[a4];
      }

      v9 = [MEMORY[0x29EDB8DC0] dictionaryWithObject:a5 forKey:*MEMORY[0x29EDB9ED8]];
      v10 = [objc_alloc(MEMORY[0x29EDB9FA0]) initWithDomain:@"AGXMetalG18P" code:v6 userInfo:v9];
      (*(v5 + 16))(v5, 0, 0, v10);
    }
  }

  else if (v5)
  {
    v7 = *(v5 + 16);
    v8 = *(a1 + 32);

    v7(v8, 0, 0, 0);
  }
}

void sub_29CCDF38C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);

  _Block_object_dispose(va, 8);
  _Block_object_dispose((v14 - 128), 8);
  _Unwind_Resume(a1);
}

AGXG18PFamilyTileProgram *___ZN3AGX21UserTileShaderFactoryINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE39addTileRenderPipelineFunctionsToArchiveEP31MTLTileRenderPipelineDescriptorP19AGXG18PFamilyDevicemP26AGXG18PFamilyBinaryArchivePP7NSError_block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) vendorPrivate];
  v3 = v2;
  if (!v2)
  {
    v3 = objc_alloc_init(AGXG18PFamilyComputeOrFragmentOrTileProgram);
    [*(a1 + 32) setVendorPrivate:v3];

    result = v3->_tile;
    if (result)
    {
      goto LABEL_3;
    }

LABEL_5:
    result = objc_alloc_init(AGXG18PFamilyTileProgram);
    v3->_tile = result;
    goto LABEL_3;
  }

  result = *(v2 + 24);
  if (!result)
  {
    goto LABEL_5;
  }

LABEL_3:
  *(*(*(a1 + 40) + 8) + 24) = &result->_impl;
  return result;
}

uint64_t ___ZN3AGX21UserTileShaderFactoryINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE39addTileRenderPipelineFunctionsToArchiveEP31MTLTileRenderPipelineDescriptorP19AGXG18PFamilyDevicemP26AGXG18PFamilyBinaryArchivePP7NSError_block_invoke_2(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  if (!a2)
  {
    v16 = v9;
    v17 = v8;
    v18 = v6;
    v12 = *(result + 48);
    if (v12)
    {
      v13 = result;
      if (a5 > 3)
      {
        v14 = 5;
      }

      else
      {
        v14 = qword_29D2F40D8[a5];
      }

      v15 = [MEMORY[0x29EDB8DC0] dictionaryWithObject:a6 forKey:{*MEMORY[0x29EDB9ED8], v16, v17, v7, v18, v10, v11}];
      *v12 = [objc_alloc(MEMORY[0x29EDB9FA0]) initWithDomain:@"AGXMetalG18P" code:v14 userInfo:v15];
      result = v13;
    }

    *(*(*(result + 32) + 8) + 24) = 0;
  }

  return result;
}

id ___ZN3AGX23UserCommonShaderFactoryINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE35addRenderPipelineFunctionsToArchiveI27MTLRenderPipelineDescriptorEEbPT_P19AGXG18PFamilyDevicemP26AGXG18PFamilyBinaryArchivePP7NSError_block_invoke(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  result = a1[5];
  if (result)
  {
    v7 = AGX::UserCommonShaderFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::RenderPipelineDescriptorInfo::~RenderPipelineDescriptorInfo(result);
    result = MEMORY[0x29ED520D0](v7, 0xA0C402B819244);
  }

  *(*(a1[4] + 8) + 24) = a4 == 0;
  if (a4)
  {
    result = a4;
    v8 = a1[6];
    if (v8)
    {
      *v8 = a4;
    }
  }

  return result;
}

void AGX::UserCommonShaderFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::createGeometryStageAndLinkPipeline<MTLRenderPipelineDescriptor,true>(uint64_t a1, void *a2, uint64_t a3, void *a4, MTLRenderPipelineDescriptor *a5, unint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a2[2])
  {
    v10 = a2[14];
    v11 = a2[6];
    v12 = a2[10];
    v17[0] = MEMORY[0x29EDCA5F8];
    v17[1] = 3221225472;
    v17[2] = ___ZN3AGX23UserCommonShaderFactoryINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE34createGeometryStageAndLinkPipelineI27MTLRenderPipelineDescriptorLb1EEEvPKNS5_28RenderPipelineDescriptorInfoEPNS1_22FragmentProgramVariantE13ReflectionKeyP19AGXG18PFamilyDevicePT_mbbyP19NSMutableDictionaryP26AGXG18PFamilyBinaryArchivePKNS_17UserShaderFactoryIS2_S3_S4_E17ArchiveLookupInfoEPU27objcproto16OS_dispatch_data8NSObjectPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvPU33objcproto22MTLRenderPipelineState11objc_objectP27MTLRenderPipelineReflectionP7NSErrorE_block_invoke;
    v17[3] = &unk_29F341270;
    v17[4] = a5;
    v17[5] = a4;
    v17[10] = a6;
    v17[11] = 0;
    v17[12] = a2;
    v18 = 0;
    v17[6] = a7;
    v17[7] = 0;
    v17[8] = a9;
    v17[9] = a1;
    AGX::UserCommonShaderFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::createMeshProgramVariant<MTLRenderPipelineDescriptor>(a1, a5, a4, a6, a7, 0, a8, v10, v11, a3, v12, 0, 0, v17);
  }

  else
  {
    v13 = a2[13];
    v14 = a2[5];
    v15 = a2[9];
    v16[0] = MEMORY[0x29EDCA5F8];
    v16[1] = 3221225472;
    v16[2] = ___ZN3AGX23UserCommonShaderFactoryINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE34createGeometryStageAndLinkPipelineI27MTLRenderPipelineDescriptorLb1EEEvPKNS5_28RenderPipelineDescriptorInfoEPNS1_22FragmentProgramVariantE13ReflectionKeyP19AGXG18PFamilyDevicePT_mbbyP19NSMutableDictionaryP26AGXG18PFamilyBinaryArchivePKNS_17UserShaderFactoryIS2_S3_S4_E17ArchiveLookupInfoEPU27objcproto16OS_dispatch_data8NSObjectPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvPU33objcproto22MTLRenderPipelineState11objc_objectP27MTLRenderPipelineReflectionP7NSErrorE_block_invoke_3;
    v16[3] = &unk_29F341298;
    v16[4] = a9;
    v16[5] = a1;
    AGX::UserCommonShaderFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::createVertexProgramVariant(a1, a5, a4, a6, a7, 0, v13, v14, a3, v15, a8, 0, 0, v16);
  }
}

void ___ZN3AGX23UserCommonShaderFactoryINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE35addRenderPipelineFunctionsToArchiveI27MTLRenderPipelineDescriptorEEbPT_P19AGXG18PFamilyDevicemP26AGXG18PFamilyBinaryArchivePP7NSError_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a2)
  {
    AGX::UserCommonShaderFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::createGeometryStageAndLinkPipeline<MTLRenderPipelineDescriptor,true>(*(a1 + 64), *(a1 + 72), a2, *(a1 + 32), *(a1 + 40), *(a1 + 80), *(a1 + 48), a7, *(a1 + 56));
  }

  else
  {
    v7 = *(a1 + 56);
    if (v7)
    {
      if (a5 > 3)
      {
        v8 = 5;
      }

      else
      {
        v8 = qword_29D2F40D8[a5];
      }

      v9 = [MEMORY[0x29EDB8DC0] dictionaryWithObject:a6 forKey:*MEMORY[0x29EDB9ED8]];
      v10 = [objc_alloc(MEMORY[0x29EDB9FA0]) initWithDomain:@"AGXMetalG18P" code:v8 userInfo:v9];
      (*(v7 + 16))(v7, 0, 0, v10);
    }
  }
}

void ___ZN3AGX23UserCommonShaderFactoryINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE34createGeometryStageAndLinkPipelineI27MTLRenderPipelineDescriptorLb1EEEvPKNS5_28RenderPipelineDescriptorInfoEPNS1_22FragmentProgramVariantE13ReflectionKeyP19AGXG18PFamilyDevicePT_mbbyP19NSMutableDictionaryP26AGXG18PFamilyBinaryArchivePKNS_17UserShaderFactoryIS2_S3_S4_E17ArchiveLookupInfoEPU27objcproto16OS_dispatch_data8NSObjectPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvPU33objcproto22MTLRenderPipelineState11objc_objectP27MTLRenderPipelineReflectionP7NSErrorE_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a2)
  {
    v8 = *(a1 + 32);
    v7 = *(a1 + 40);
    v10 = *(a1 + 72);
    v9 = *(a1 + 80);
    v11 = *(a1 + 88);
    v12 = *(a1 + 96);
    v13 = v12[15];
    v14 = v12[3];
    v15 = v12[11];
    v16 = *(a2 + 4034);
    v17 = *(a1 + 104);
    v18 = *(a1 + 48);
    v19 = *(a1 + 56);
    v24[0] = MEMORY[0x29EDCA5F8];
    v24[1] = 3221225472;
    v24[2] = ___ZN3AGX23UserCommonShaderFactoryINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE34createGeometryStageAndLinkPipelineI27MTLRenderPipelineDescriptorLb1EEEvPKNS5_28RenderPipelineDescriptorInfoEPNS1_22FragmentProgramVariantE13ReflectionKeyP19AGXG18PFamilyDevicePT_mbbyP19NSMutableDictionaryP26AGXG18PFamilyBinaryArchivePKNS_17UserShaderFactoryIS2_S3_S4_E17ArchiveLookupInfoEPU27objcproto16OS_dispatch_data8NSObjectPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvPU33objcproto22MTLRenderPipelineState11objc_objectP27MTLRenderPipelineReflectionP7NSErrorE_block_invoke_2;
    v24[3] = &unk_29F341248;
    v24[4] = *(a1 + 64);
    v24[5] = v10;
    AGX::UserCommonShaderFactory<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::createUserOrPassthroughObjectProgramVariant<MTLRenderPipelineDescriptor>(v10, v8, v7, v9, v18, v11, a7, v13, v14, v15, v16, HIBYTE(v16), v17, v19, v24);
  }

  else
  {
    v20 = *(a1 + 64);
    if (v20)
    {
      if (a5 > 3)
      {
        v21 = 5;
      }

      else
      {
        v21 = qword_29D2F40D8[a5];
      }

      v22 = [MEMORY[0x29EDB8DC0] dictionaryWithObject:a6 forKey:*MEMORY[0x29EDB9ED8]];
      v23 = [objc_alloc(MEMORY[0x29EDB9FA0]) initWithDomain:@"AGXMetalG18P" code:v21 userInfo:v22];
      (*(v20 + 16))(v20, 0, 0, v23);
    }
  }
}

void ___ZN3AGX23UserCommonShaderFactoryINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE34createGeometryStageAndLinkPipelineI27MTLRenderPipelineDescriptorLb1EEEvPKNS5_28RenderPipelineDescriptorInfoEPNS1_22FragmentProgramVariantE13ReflectionKeyP19AGXG18PFamilyDevicePT_mbbyP19NSMutableDictionaryP26AGXG18PFamilyBinaryArchivePKNS_17UserShaderFactoryIS2_S3_S4_E17ArchiveLookupInfoEPU27objcproto16OS_dispatch_data8NSObjectPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvPU33objcproto22MTLRenderPipelineState11objc_objectP27MTLRenderPipelineReflectionP7NSErrorE_block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v6 = *(a1 + 32);
  if (a2)
  {
    if (v6)
    {
      v7 = *(v6 + 16);
      v8 = *(a1 + 32);

      v7(v8, 0, 0, 0);
    }
  }

  else if (v6)
  {
    if (a5 > 3)
    {
      v9 = 5;
    }

    else
    {
      v9 = qword_29D2F40D8[a5];
    }

    v10 = [MEMORY[0x29EDB8DC0] dictionaryWithObject:a6 forKey:*MEMORY[0x29EDB9ED8]];
    v11 = [objc_alloc(MEMORY[0x29EDB9FA0]) initWithDomain:@"AGXMetalG18P" code:v9 userInfo:v10];
    (*(v6 + 16))(v6, 0, 0, v11);
  }
}

void ___ZN3AGX23UserCommonShaderFactoryINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE34createGeometryStageAndLinkPipelineI27MTLRenderPipelineDescriptorLb1EEEvPKNS5_28RenderPipelineDescriptorInfoEPNS1_22FragmentProgramVariantE13ReflectionKeyP19AGXG18PFamilyDevicePT_mbbyP19NSMutableDictionaryP26AGXG18PFamilyBinaryArchivePKNS_17UserShaderFactoryIS2_S3_S4_E17ArchiveLookupInfoEPU27objcproto16OS_dispatch_data8NSObjectPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvPU33objcproto22MTLRenderPipelineState11objc_objectP27MTLRenderPipelineReflectionP7NSErrorE_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 32);
  if (a4)
  {
    if (v5)
    {
      if (a4 > 3)
      {
        v6 = 5;
      }

      else
      {
        v6 = qword_29D2F40D8[a4];
      }

      v9 = [MEMORY[0x29EDB8DC0] dictionaryWithObject:a5 forKey:*MEMORY[0x29EDB9ED8]];
      v10 = [objc_alloc(MEMORY[0x29EDB9FA0]) initWithDomain:@"AGXMetalG18P" code:v6 userInfo:v9];
      (*(v5 + 16))(v5, 0, 0, v10);
    }
  }

  else if (v5)
  {
    v7 = *(v5 + 16);
    v8 = *(a1 + 32);

    v7(v8, 0, 0, 0);
  }
}

void AGX::LegacyBlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::copyBufferToBuffer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v7 = *MEMORY[0x29EDC5638];
  v8 = *(a2 + v7 + 72) + a3;
  v9 = *(a4 + v7 + 72) + a5;
  v10 = v9 + a6;
  v11 = v8 + a6;
  if (v9 >= v8 + a6 || v8 >= v10)
  {

    AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::blitCDMBuffer(a1, a2, v8, a4, v9, a6, 0, 1uLL);
  }

  else
  {
    v13 = v8 - v9;
    if (v8 != v9)
    {
      if (v13 >= 0)
      {
        v14 = v8 - v9;
      }

      else
      {
        v14 = v9 - v8;
      }

      if (v14 >= 0x8000)
      {
        v15 = v14 & 0x7FFFFFFFFFFFFFF0;
      }

      else
      {
        v15 = 0x8000;
      }

      v92 = v14;
      v101 = v9;
      if (v14 >> 15)
      {
        LODWORD(v13) = 1 << __clz(__rbit64(v13));
        if (v13 >= 0x10)
        {
          v13 = 16;
        }

        else
        {
          v13 = v13;
        }

        if (((-v8 - v13) | -v13) + v13 >= a6)
        {
          v18 = a6;
        }

        else
        {
          v18 = ((-v8 - v13) | -v13) + v13;
        }

        v19 = (a6 - v18) & (v13 - 1);
        BlitBounceBuffer = *(a1 + 5000);
        v17 = a4;
      }

      else
      {
        BlitBounceBuffer = *(a1 + 5000);
        v17 = a4;
        if (!BlitBounceBuffer)
        {
          BlitBounceBuffer = AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::getBlitBounceBuffer(a1);
          v9 = v101;
          *(a1 + 5000) = BlitBounceBuffer;
        }

        if ((-v8 & 0xFuLL) >= a6)
        {
          v18 = a6;
        }

        else
        {
          v18 = -v8 & 0xFLL;
        }

        v19 = (a6 - v18) & 0xFLL;
      }

      v94 = v11 - v19;
      v20 = v10 - v19;
      v108 = v18 + v8;
      v107 = v18 + v9;
      v104 = v19;
      v105 = a6 - v18 - v19;
      v21 = v15 - 1;
      v22 = BlitBounceBuffer + 72;
      v97 = BlitBounceBuffer + 72;
      v93 = v15 - 1;
      if (v8 >= v9)
      {
        v99 = v18;
        v29 = v19 + v21;
        if (v29 >= v15)
        {
          v30 = v29 / v15;
          if (v92 >= 0x8000)
          {
            v48 = 0;
            do
            {
              v49 = (v30 + ~v48) * v15;
              v50 = v19 - v49;
              if (v50 >= v15)
              {
                v51 = v15;
              }

              else
              {
                v51 = v50;
              }

              AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::blitCDMBuffer(a1, a2, v49 + v94, v17, v49 + v20, v51, 0, 1uLL);
              v19 = v104;
              ++v48;
            }

            while (v48 < v30);
          }

          else
          {
            v31 = 0;
            v32 = BlitBounceBuffer;
            do
            {
              v33 = (v30 + ~v31) * v15;
              if (v19 - v33 >= v15)
              {
                v34 = v15;
              }

              else
              {
                v34 = v19 - v33;
              }

              v35 = *(v22 + *MEMORY[0x29EDC5638]);
              AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::blitCDMBuffer(a1, v32, v35, a4, v33 + v20, v34, 0, 1uLL);
              v36 = v33 + v94;
              v17 = a4;
              AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::blitCDMBuffer(a1, a2, v36, v32, v35, v34, 0, 1uLL);
              v22 = v97;
              v19 = v104;
              ++v31;
            }

            while (v31 < v30);
          }
        }

        v96 = v8;
        v52 = v105;
        v53 = a2;
        if (v105 + v93 >= v15)
        {
          v54 = (v105 + v93) / v15;
          if (v92 >= 0x8000)
          {
            v73 = 0;
            v53 = a2;
            do
            {
              v74 = (v54 + ~v73) * v15;
              if (v105 - v74 >= v15)
              {
                v75 = v15;
              }

              else
              {
                v75 = v105 - v74;
              }

              AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::blitCDMBuffer(a1, a2, v74 + v108, v17, v74 + v107, v75, 0, 1uLL);
              ++v73;
            }

            while (v73 < v54);
          }

          else
          {
            v55 = 0;
            v98 = *(a1 + 5000) + 72;
            v56 = *(a1 + 5000);
            v53 = a2;
            do
            {
              v57 = (v54 + ~v55) * v15;
              if (v52 - v57 >= v15)
              {
                v58 = v15;
              }

              else
              {
                v58 = v52 - v57;
              }

              v59 = *(v98 + *MEMORY[0x29EDC5638]);
              AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::blitCDMBuffer(a1, v56, v59, a4, v57 + v107, v58, 0, 1uLL);
              v60 = v59;
              v17 = a4;
              AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::blitCDMBuffer(a1, a2, v57 + v108, v56, v60, v58, 0, 1uLL);
              v52 = v105;
              ++v55;
            }

            while (v55 < v54);
          }
        }

        v76 = v99;
        if (v99 + v93 >= v15)
        {
          v77 = (v99 + v93) / v15;
          if (v92 >= 0x8000)
          {
            v87 = 0;
            do
            {
              v88 = (v77 + ~v87) * v15;
              v89 = v76 - v88;
              if (v89 >= v15)
              {
                v90 = v15;
              }

              else
              {
                v90 = v89;
              }

              AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::blitCDMBuffer(a1, v53, v88 + v96, v17, v88 + v101, v90, 0, 1uLL);
              v76 = v99;
              ++v87;
            }

            while (v87 < v77);
          }

          else
          {
            v78 = 0;
            v79 = *(a1 + 5000);
            do
            {
              v80 = (v77 + ~v78) * v15;
              if (v76 - v80 >= v15)
              {
                v81 = v15;
              }

              else
              {
                v81 = v76 - v80;
              }

              v82 = *(v79 + 72 + *MEMORY[0x29EDC5638]);
              AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::blitCDMBuffer(a1, v79, v82, a4, v80 + v101, v81, 0, 1uLL);
              AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::blitCDMBuffer(a1, v53, v80 + v96, v79, v82, v81, 0, 1uLL);
              v76 = v99;
              ++v78;
            }

            while (v78 < v77);
          }
        }
      }

      else
      {
        v91 = v10 - v19;
        v23 = v18 + v21;
        if (v23 >= v15)
        {
          v102 = v23 / v15;
          if (v92 >= 0x8000)
          {
            v37 = 0;
            do
            {
              v38 = v18 - v15;
              if (v18 >= v15)
              {
                v39 = v15;
              }

              else
              {
                v39 = v18;
              }

              v40 = v9;
              AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::blitCDMBuffer(a1, a2, v8, a4, v9, v39, 0, 1uLL);
              ++v37;
              v9 = v40 + v15;
              v8 += v15;
              v18 = v38;
            }

            while (v37 < v102);
          }

          else
          {
            v24 = 0;
            v95 = BlitBounceBuffer;
            do
            {
              v25 = v18 - v15;
              if (v18 >= v15)
              {
                v26 = v15;
              }

              else
              {
                v26 = v18;
              }

              v27 = *(v22 + *MEMORY[0x29EDC5638]);
              v28 = v9;
              AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::blitCDMBuffer(a1, v95, v27, a4, v9, v26, 0, 1uLL);
              AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::blitCDMBuffer(a1, a2, v8, v95, v27, v26, 0, 1uLL);
              v22 = v97;
              ++v24;
              v9 = v28 + v15;
              v8 += v15;
              v18 = v25;
            }

            while (v24 < v102);
          }
        }

        v41 = v105;
        v42 = MEMORY[0x29EDC5638];
        v43 = v91;
        if (v105 + v93 >= v15)
        {
          v103 = (v105 + v93) / v15;
          if (v92 >= 0x8000)
          {
            v61 = 0;
            do
            {
              v62 = v41 - v15;
              if (v41 >= v15)
              {
                v63 = v15;
              }

              else
              {
                v63 = v41;
              }

              AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::blitCDMBuffer(a1, a2, v108, a4, v107, v63, 0, 1uLL);
              ++v61;
              v107 += v15;
              v108 += v15;
              v41 = v62;
            }

            while (v61 < v103);
          }

          else
          {
            v44 = 0;
            v100 = *(a1 + 5000);
            do
            {
              v45 = v41 - v15;
              if (v41 >= v15)
              {
                v46 = v15;
              }

              else
              {
                v46 = v41;
              }

              v47 = *(v100 + 72 + *v42);
              AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::blitCDMBuffer(a1, v100, v47, a4, v107, v46, 0, 1uLL);
              AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::blitCDMBuffer(a1, a2, v108, v100, v47, v46, 0, 1uLL);
              ++v44;
              v107 += v15;
              v108 += v15;
              v41 = v45;
            }

            while (v44 < v103);
          }
        }

        v64 = v94;
        v65 = v104;
        if (v104 + v93 >= v15)
        {
          v66 = (v104 + v93) / v15;
          if (v92 >= 0x8000)
          {
            v83 = 0;
            do
            {
              v84 = v65 - v15;
              if (v65 >= v15)
              {
                v85 = v15;
              }

              else
              {
                v85 = v65;
              }

              v86 = v64;
              AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::blitCDMBuffer(a1, a2, v64, a4, v43, v85, 0, 1uLL);
              ++v83;
              v43 += v15;
              v64 = v86 + v15;
              v65 = v84;
            }

            while (v83 < v66);
          }

          else
          {
            v67 = 0;
            v68 = *(a1 + 5000);
            do
            {
              v69 = v65 - v15;
              if (v65 >= v15)
              {
                v70 = v15;
              }

              else
              {
                v70 = v65;
              }

              v71 = *(v68 + 72 + *MEMORY[0x29EDC5638]);
              v72 = v64;
              AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::blitCDMBuffer(a1, v68, v71, a4, v43, v70, 0, 1uLL);
              AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::blitCDMBuffer(a1, a2, v72, v68, v71, v70, 0, 1uLL);
              ++v67;
              v43 += v15;
              v64 = v72 + v15;
              v65 = v69;
            }

            while (v67 < v66);
          }
        }
      }
    }
  }
}

BOOL FenceEncoder::encode(AGX::SidebandBufferAllocator *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a4)
  {
    v12 = *(a4 + 528);
    if (a6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v12 = 0;
    if (a6)
    {
LABEL_3:
      v13 = *(a6 + 528);
      if (a5)
      {
        goto LABEL_4;
      }

LABEL_8:
      v14 = 0;
      if (a7)
      {
        goto LABEL_5;
      }

      goto LABEL_9;
    }
  }

  v13 = 0;
  if (!a5)
  {
    goto LABEL_8;
  }

LABEL_4:
  v14 = *(a5 + 528);
  if (a7)
  {
LABEL_5:
    v15 = *(a7 + 528);
    goto LABEL_10;
  }

LABEL_9:
  v15 = 0;
LABEL_10:
  v16 = v14 + v13 + v12;
  v17 = v15 + v16;
  if (v15 + v16)
  {
    v28 = v14 + v13 + v12;
    v29 = v15 + v16;
    v18 = ((2 * v17 + 7) & 0xFFFFFFF8) + 16;
    v31 = 0;
    v19 = AGX::SidebandBufferAllocator::allocate(a1, v18, 1u, &v31);
    *v19 = v12;
    v19[1] = v13;
    v19[2] = v14;
    v19[3] = v15;
    v20 = v31;
    *(a3 + 136) = v18;
    *(a3 + 140) = v20;
    v21 = (v19 + 4);
    if (v12)
    {
      AGX::FenceList::copyFences(a4, v21);
      v22 = a2;
      if (a2)
      {
        for (i = *(a4 + 512); i; i &= i - 1)
        {
          bzero(*(a4 + 8 * __clz(__rbit64(i))), 0x88uLL);
        }

        *(a4 + 528) = 0;
        v22 = a2;
        if (v13)
        {
          AGX::FenceList::copyFences(a6, &v21[v12]);
LABEL_20:
          for (j = *(a6 + 512); j; j &= j - 1)
          {
            bzero(*(a6 + 8 * __clz(__rbit64(j))), 0x88uLL);
          }

          *(a6 + 528) = 0;
        }
      }

      else if (v13)
      {
        AGX::FenceList::copyFences(a6, &v21[v12]);
      }

LABEL_25:
      if (v14)
      {
        AGX::FenceList::copyFences(a5, &v21[v13 + v12]);
        if ((v22 & 1) == 0)
        {
          if (v15)
          {
            AGX::FenceList::copyFences(a7, &v21[v28]);
          }

          goto LABEL_38;
        }

        for (k = *(a5 + 512); k; k &= k - 1)
        {
          bzero(*(a5 + 8 * __clz(__rbit64(k))), 0x88uLL);
        }

        *(a5 + 528) = 0;
        if (v15)
        {
          AGX::FenceList::copyFences(a7, &v21[v28]);
LABEL_33:
          for (m = *(a7 + 512); m; m &= m - 1)
          {
            bzero(*(a7 + 8 * __clz(__rbit64(m))), 0x88uLL);
          }

          *(a7 + 528) = 0;
        }
      }

      else if (v15)
      {
        AGX::FenceList::copyFences(a7, &v21[v28]);
        if (v22)
        {
          goto LABEL_33;
        }
      }

LABEL_38:
      v17 = v29;
      return v17 != 0;
    }

    v22 = a2;
    if (!v13)
    {
      goto LABEL_25;
    }

    AGX::FenceList::copyFences(a6, v21);
    if (!a2)
    {
      goto LABEL_25;
    }

    goto LABEL_20;
  }

  *(a3 + 136) = 0;
  return v17 != 0;
}

uint64_t AGX::SidebandBufferAllocator::allocate(AGX::SidebandBufferAllocator *this, unsigned int a2, unsigned int a3, unsigned int *a4)
{
  v18 = *MEMORY[0x29EDCA608];
  v8 = a2 + a3 - 1;
  v9 = *(this + 1);
  if (!v9[1])
  {
    IOGPUMetalCommandBufferStorageAllocSidebandBuffer();
    v9 = *(this + 1);
  }

  v10 = v9[2];
  if ((v10 + v8) > v9[3])
  {
    IOGPUMetalCommandBufferStorageGrowSidebandBuffer();
    v9 = *(this + 1);
    v10 = v9[2];
    if ((v10 + v8) > v9[3])
    {
      fprintf(*MEMORY[0x29EDCA610], "AGX: %s:%d:%s: *** Unable to allocate space required in sideband buffer\n", "agxa_sideband_buffer.h", 69, "allocate");
      if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v13 = "agxa_sideband_buffer.h";
        v14 = 1024;
        v15 = 69;
        v16 = 2080;
        v17 = "allocate";
        _os_log_error_impl(&dword_29CA13000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "AGX: AGX: %s:%d:%s: *** Unable to allocate space required in sideband buffer\n", buf, 0x1Cu);
      }

      if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_INFO))
      {
        *buf = 136315650;
        v13 = "agxa_sideband_buffer.h";
        v14 = 1024;
        v15 = 69;
        v16 = 2080;
        v17 = "allocate";
        _os_log_impl(&dword_29CA13000, MEMORY[0x29EDCA988], OS_LOG_TYPE_INFO, "AGX: AGX: %s:%d:%s: *** Unable to allocate space required in sideband buffer\n", buf, 0x1Cu);
      }

      abort();
    }
  }

  result = (a3 + v10 - 1) & -a3;
  if (a4)
  {
    *a4 = result - *(v9 + 2);
  }

  v9[2] = result + a2;
  return result;
}

uint64_t agxaReserveCDMTokenSpace<AGX::HAL300::Encoders,AGX::HAL300::DataBufferAllocator>(uint64_t result, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t a6, _BYTE *a7)
{
  v7 = *(a2 + 1840);
  if (result == 31)
  {
    LODWORD(v8) = 43;
  }

  else
  {
    LODWORD(v8) = result;
  }

  if (result == 31)
  {
    v9 = 40;
  }

  else
  {
    v9 = result;
  }

  if (result == 31)
  {
    v10 = 37;
  }

  else
  {
    v10 = result;
  }

  if (v7 != 1)
  {
    v10 = result;
  }

  if (v7 != 3)
  {
    v9 = v10;
  }

  if (v7 == 7)
  {
    v8 = v8;
  }

  else
  {
    v8 = v9;
  }

  if (((1 << v8) & 0xFFF339E0480) == 0 || *(a2 + 32 * v8 + 48))
  {
    if (v7 != 7)
    {
      goto LABEL_20;
    }

LABEL_26:
    v11 = result == 31;
    LODWORD(v12) = 43;
    goto LABEL_27;
  }

  v16 = result;
  v17 = a2;
  v18 = a6;
  v19 = a5;
  v20 = a4;
  v21 = a3;
  v22 = a7;
  AGX::DataBufferAllocator<44ul>::initializeOnDemandDataBufferSlow(a2, v8);
  a7 = v22;
  a3 = v21;
  a4 = v20;
  a5 = v19;
  a2 = v17;
  a6 = v18;
  result = v16;
  v7 = *(v17 + 1840);
  if (v7 == 7)
  {
    goto LABEL_26;
  }

LABEL_20:
  if (v7 == 3)
  {
    v11 = result == 31;
    LODWORD(v12) = 40;
  }

  else
  {
    if (v7 != 1)
    {
      v13 = a2 + 40;
      v14 = *(a2 + 40 + 32 * result + 8);
      v15 = (*a7 & 1) == 0;
      LODWORD(v12) = result;
      goto LABEL_31;
    }

    v11 = result == 31;
    LODWORD(v12) = 37;
  }

LABEL_27:
  if (v11)
  {
    v12 = v12;
  }

  else
  {
    v12 = result;
  }

  v13 = a2 + 40;
  v14 = *(a2 + 40 + 32 * v12 + 8);
  v15 = (*a7 & 1) == 0;
LABEL_31:
  v23 = v12;
  v24 = (v13 + 32 * v12);
  if (((0xFFF339E0480uLL >> v12) & 1) != 0 && !v24[1])
  {
    v45 = result;
    v33 = a2;
    v34 = a3;
    v35 = a6;
    v36 = a5;
    v37 = a4;
    v38 = AGX::DataBufferAllocator<44ul>::growNoInline(a2, v12, 0);
    a3 = v34;
    a4 = v37;
    a5 = v36;
    a2 = v33;
    a6 = v35;
    v39 = v38;
    result = v45;
    if ((v39 & 1) == 0)
    {
LABEL_52:
      abort();
    }
  }

  v25 = v24[1];
  if (v15)
  {
    v26 = 0;
  }

  else
  {
    v26 = v24[2] - v25;
    v25 = v24[2];
  }

  v27 = v25 + a3;
  if (v27 <= *v24)
  {
    v24[2] = v27;
    return result;
  }

  v28 = a3;
  v29 = a4;
  v44 = a5;
  v30 = a6;
  v31 = result;
  v32 = a2;
  if (v23 == 34)
  {
    result = AGX::DataBufferAllocator<44ul>::resize(a2);
    if ((result & 1) == 0)
    {
      return result;
    }
  }

  else
  {
    result = AGX::DataBufferAllocator<44ul>::growNoInline(a2, v23, 0);
    if (!result)
    {
      return result;
    }
  }

  v40 = v24[1] + v26 + v28;
  if (v40 > *v24)
  {
    goto LABEL_52;
  }

  v24[2] = v40;
  result = AGX::DataBufferAllocator<44ul>::getGPUAddress(v32, v31);
  v41 = result;
  if (v29)
  {
    result = AGX::DataBufferAllocator<44ul>::getPointer<unsigned char>(v32, v31);
    *v14 = WORD2(v41) | 0x20000000;
    *(v14 + 4) = v41;
    *(v14 + 8) = result;
  }

  else if (v30 == -1 || !v44)
  {
    *v14 = __ROR8__(result, 32) & 0xFFFFFFFF0000FFFFLL | 0x20000000;
  }

  else
  {
    *v14 = -1610612736;
    *(v14 + 4) = __ROR8__(result, 32) & 0xFFFFFFFF0000FFFFLL | 0x20000000;
    v46 = 1;
    result = agxaReserveCDMTokenSpace<AGX::HAL300::Encoders,AGX::HAL300::DataBufferAllocator>(v31, v32, 4, 0, 1, v30, &v46);
    v42 = v13 + 32 * v31;
    v43 = *(v42 + 8);
    *v43 = (v30 + 1) & 7 | 0xA0000000;
    *(v42 + 8) = v43 + 1;
  }

  return result;
}

uint64_t AGX::DataBufferAllocator<44ul>::getPointer<unsigned char>(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 1840);
  if (a2 == 31)
  {
    LODWORD(v3) = 43;
  }

  else
  {
    LODWORD(v3) = a2;
  }

  if (a2 == 31)
  {
    v4 = 40;
  }

  else
  {
    v4 = a2;
  }

  if (a2 == 31)
  {
    v5 = 37;
  }

  else
  {
    v5 = a2;
  }

  if (v2 != 1)
  {
    v5 = a2;
  }

  if (v2 != 3)
  {
    v4 = v5;
  }

  if (v2 == 7)
  {
    v3 = v3;
  }

  else
  {
    v3 = v4;
  }

  if (((1 << v3) & 0xFFF339E0480) != 0 && !*(a1 + 32 * v3 + 48))
  {
    v10 = a1;
    v11 = a2;
    AGX::DataBufferAllocator<44ul>::initializeOnDemandDataBufferSlow(a1, v3);
    a2 = v11;
    a1 = v10;
    v2 = *(v10 + 1840);
  }

  if (a2 == 31)
  {
    LODWORD(v6) = 43;
  }

  else
  {
    LODWORD(v6) = a2;
  }

  if (a2 == 31)
  {
    v7 = 40;
  }

  else
  {
    v7 = a2;
  }

  if (a2 == 31)
  {
    v8 = 37;
  }

  else
  {
    v8 = a2;
  }

  if (v2 != 1)
  {
    v8 = a2;
  }

  if (v2 != 3)
  {
    v7 = v8;
  }

  if (v2 == 7)
  {
    v6 = v6;
  }

  else
  {
    v6 = v7;
  }

  return *(a1 + 32 * v6 + 48);
}

void std::vector<unsigned char *>::push_back[abi:nn200100](uint64_t a1, void *a2)
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

void sub_29CCE2244(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t switchContextIfNeededImpl(uint64_t result, char *a2, uint64_t a3, void *a4, void *a5)
{
  if (*a2 == result)
  {
    if (!result)
    {
      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::getProxyResourceForRestart(a5);
      IOGPUResourceListAddResource();
      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::endComputePass(*a3, 0, 22);
      *(a3 + 2384) = 0;
      *(a3 + 4696) = 0;
      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::getProxyResourceForRestart(a5);
      v23 = 1;
LABEL_19:
      result = IOGPUResourceListAddResource();
      *a2 = v23;
      return result;
    }

    if ((*(a4[1] + 1920) & 1) == 0)
    {
      AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::beginComputePass(a4, 0);
    }

    v9 = a5[6];
    if (*(v9 + 1240) && *(v9 + 1248))
    {
LABEL_11:
      IOGPUResourceListAddResource();
      AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::endPreviousBlitCommand(a4, 1, v12, v13, v14, v15);
      v16 = a4[27];
      if (v16)
      {
        LODWORD(v16) = *(v16 + 528);
      }

      v17 = a4[26];
      if (v17)
      {
        LODWORD(v17) = *(v17 + 528);
      }

      if (v16 + v17)
      {
        AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::beginComputePass(a4, 0);
        v18 = a4[1];
        v25 = 0;
        AGX::BlitUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::barrier(v18 + 24, &v25);
        AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::endPreviousBlitCommand(a4, 1, v19, v20, v21, v22);
      }

      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::beginComputePass(*a3, 0, 22);
      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::getProxyResourceForRestart(a5);
      v23 = 0;
      goto LABEL_19;
    }

    v10 = a5[85];
    if (!v10)
    {
      if (!AGX::DataBufferAllocator<44ul>::growNoInline(a5 + 3, 19, 0))
      {
        goto LABEL_25;
      }

      v10 = a5[85];
    }

    v11 = v10 + 16;
    if ((v10 + 16) <= a5[84])
    {
      goto LABEL_9;
    }

    v24 = AGX::DataBufferAllocator<44ul>::growNoInline(a5 + 3, 19, 0);
    v10 = a5[85];
    if (!v24)
    {
      goto LABEL_10;
    }

    v11 = v10 + 16;
    if ((v10 + 16) <= a5[84])
    {
LABEL_9:
      a5[86] = v11;
LABEL_10:
      a5[85] = v10 + 16;
      goto LABEL_11;
    }

LABEL_25:
    abort();
  }

  return result;
}

void ProgramKey<(_AGCStreamToken)103,(AGX::DriverShaderCompilationMode)0>::serialize(uint64_t a1, uint64_t *a2, void *a3)
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

uint64_t std::vector<AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::VirtualSubstream,std::allocator<AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::VirtualSubstream>>::__emplace_back_slow_path<AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::VirtualSubstream>(uint64_t *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 6;
  v3 = v2 + 1;
  if ((v2 + 1) >> 58)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v5 = a1[2] - *a1;
  if (v5 >> 5 > v3)
  {
    v3 = v5 >> 5;
  }

  if (v5 >= 0x7FFFFFFFFFFFFFC0)
  {
    v6 = 0x3FFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = v3;
  }

  if (v6)
  {
    if (!(v6 >> 58))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v7 = v2 << 6;
  v8 = *(a2 + 16);
  *v7 = *a2;
  *(v7 + 16) = v8;
  *(v7 + 32) = *(a2 + 32);
  *(v7 + 40) = *(a2 + 40);
  *(v7 + 56) = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  v9 = (v2 << 6) + 64;
  v10 = *a1;
  v11 = a1[1];
  v12 = v7 + *a1 - v11;
  if (*a1 != v11)
  {
    v13 = *a1;
    v14 = v12;
    do
    {
      v15 = *v13;
      v16 = *(v13 + 1);
      *(v14 + 32) = *(v13 + 8);
      *v14 = v15;
      *(v14 + 16) = v16;
      *(v14 + 48) = 0;
      *(v14 + 56) = 0;
      *(v14 + 40) = *(v13 + 5);
      *(v14 + 56) = v13[7];
      v13[5] = 0;
      v13[6] = 0;
      v13[7] = 0;
      v13 += 8;
      v14 += 64;
    }

    while (v13 != v11);
    do
    {
      v17 = v10[5];
      if (v17)
      {
        v10[6] = v17;
        operator delete(v17);
      }

      v10 += 8;
    }

    while (v10 != v11);
    v10 = *a1;
  }

  *a1 = v12;
  a1[1] = v9;
  a1[2] = 0;
  if (v10)
  {
    operator delete(v10);
  }

  return v9;
}

uint64_t *ResourceTracker<_ResourceTrackerBinding>::addResource(uint64_t *result, _DWORD *a2, unsigned int a3, int a4)
{
  v13 = a3;
  v5 = result[1];
  if (v5)
  {
    v6 = vcnt_s8(v5);
    v6.i16[0] = vaddlv_u8(v6);
    if (v6.u32[0] > 1uLL)
    {
      v7 = a3;
      if (v5 <= a3)
      {
        v7 = a3 % v5;
      }
    }

    else
    {
      v7 = (v5 - 1) & a3;
    }

    v8 = *(*result + 8 * v7);
    if (v8)
    {
      v9 = *v8;
      if (v9)
      {
        if (v6.u32[0] < 2uLL)
        {
          v10 = v5 - 1;
          while (1)
          {
            v11 = v9[1];
            if (v11 == a3)
            {
              if (*(v9 + 4) == a3)
              {
                goto LABEL_23;
              }
            }

            else if ((v11 & v10) != v7)
            {
              goto LABEL_21;
            }

            v9 = *v9;
            if (!v9)
            {
              goto LABEL_21;
            }
          }
        }

        do
        {
          v12 = v9[1];
          if (v12 == a3)
          {
            if (*(v9 + 4) == a3)
            {
LABEL_23:
              *(v9 + 5) |= a4;
              return result;
            }
          }

          else
          {
            if (v12 >= v5)
            {
              v12 %= v5;
            }

            if (v12 != v7)
            {
              break;
            }
          }

          v9 = *v9;
        }

        while (v9);
      }
    }
  }

LABEL_21:
  v14 = &v13;
  result = std::__hash_table<std::__hash_value_type<unsigned int,_ResourceTrackerBinding>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,_ResourceTrackerBinding>,ResourceTrackerBindingsHash,ResourceTrackerBindingsEqual,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,_ResourceTrackerBinding>,ResourceTrackerBindingsEqual,ResourceTrackerBindingsHash,true>,std::allocator<std::__hash_value_type<unsigned int,_ResourceTrackerBinding>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(result, a3);
  *(result + 5) = *a2;
  return result;
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,_ResourceTrackerBinding>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,_ResourceTrackerBinding>,ResourceTrackerBindingsHash,ResourceTrackerBindingsEqual,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,_ResourceTrackerBinding>,ResourceTrackerBindingsEqual,ResourceTrackerBindingsHash,true>,std::allocator<std::__hash_value_type<unsigned int,_ResourceTrackerBinding>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(void *a1, unsigned int a2)
{
  v2 = a1[1];
  if (!v2)
  {
    goto LABEL_22;
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
LABEL_22:
    operator new();
  }

  if (v3.u32[0] < 2uLL)
  {
    while (1)
    {
      v7 = v6[1];
      if (v7 == a2)
      {
        if (*(v6 + 4) == a2)
        {
          return v6;
        }
      }

      else if ((v7 & (v2 - 1)) != v4)
      {
        goto LABEL_22;
      }

      v6 = *v6;
      if (!v6)
      {
        goto LABEL_22;
      }
    }
  }

  while (1)
  {
    v8 = v6[1];
    if (v8 == a2)
    {
      break;
    }

    if (v8 >= v2)
    {
      v8 %= v2;
    }

    if (v8 != v4)
    {
      goto LABEL_22;
    }

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_22;
    }
  }

  if (*(v6 + 4) != a2)
  {
    goto LABEL_17;
  }

  return v6;
}

uint64_t AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::setBuffer_impl<AGXBuffer>(uint64_t result, uint64_t a2, uint64_t a3, unsigned int a4, int a5)
{
  v7 = result;
  v8 = (result + 8 * a4);
  if (a4 <= 0x22)
  {
    v8[3266] = 0;
  }

  if (!a2)
  {
    v17 = *(result + 2312);
    v8[3301] = v17;
    v8[3370] = 0;
    if (a4 >= 0x1F)
    {
      v35 = *(result + 22496) + 8 * (a4 - 31);
      *(v35 + 1272) = v17;
      *(v35 + 1576) = 0;
    }

    else
    {
      v18 = *(result + 22488);
      v19 = v18 + 8 * a4;
      *v19 = v17;
      *(v19 + 248) = 0;
      *(v18 + 4 * a4 + 17516) = 0;
      v20 = *(result + 2312) >> 8;
      *(v19 + 17640) = 0;
      *(v19 + 17644) = v20;
    }

    *(result + 8 * a4 + 22504) = 0;
    if (a4 <= 0x1E)
    {
      goto LABEL_22;
    }

    return result;
  }

  v9 = MEMORY[0x29EDC5638];
  v10 = (a2 + *MEMORY[0x29EDC5638]);
  v11 = v10[2];
  v12 = v10[3];
  v13 = v10[1];
  v8[3301] = v13;
  v8[3370] = v12;
  v14 = v13 + a3;
  if (a4 >= 0x1F)
  {
    v21 = *(result + 22496) + 8 * (a4 - 31);
    *(v21 + 1272) = v14;
    *(v21 + 1576) = v12 + a3;
  }

  else
  {
    v15 = *(result + 22488);
    v16 = v15 + 8 * a4;
    *v16 = v14;
    *(v15 + 4 * a4 + 17516) = v11;
    *(v16 + 248) = v12 + a3;
    *(v16 + 17640) = v11;
    *(v16 + 17644) = v13 >> 8;
  }

  *(result + 8 * a4 + 22504) = a2 + *v9;
  v22 = *(result + 2008);
  v23 = v22[2].i64[1];
  if (*(v23 + 480) != 1)
  {
    goto LABEL_17;
  }

  v24 = v22[3];
  v25 = v22[4];
  if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(v24), vceqzq_s64(v25))))) & 1) == 0)
  {
    goto LABEL_17;
  }

  v26 = a2 + *v9;
  if ((*(v26 + 23) & 0x10) != 0)
  {
    v26 = *v26;
  }

  v27 = *v26;
  if (!v27)
  {
    goto LABEL_18;
  }

  v28 = *(v27 + 16);
  if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(*v27), vceqzq_s64(v28))))) & 1) == 0)
  {
LABEL_17:
    v27 = 0;
LABEL_18:
    v32 = 0;
    goto LABEL_19;
  }

  v29 = vandq_s8(v28, v25);
  v30 = v29.u64[1];
  if (v29.i64[1])
  {
    v31 = 3;
  }

  else
  {
    v30 = v29.i64[0];
    if (v29.i64[0])
    {
      v31 = 2;
    }

    else
    {
      v36 = vandq_s8(*v27, v24);
      v30 = v36.u64[1];
      if (v36.i64[1])
      {
        v31 = 1;
      }

      else
      {
        v31 = 0;
        v27 = 0;
        v32 = 0;
        v30 = v36.i64[0];
        if (!v36.i64[0])
        {
          goto LABEL_19;
        }
      }
    }
  }

  v37 = &v22->i8[8 * v31];
  v38 = __clz(v30) ^ 0x3F;
  v27 = (*(v37 + 10) >> v38) & 1;
  v32 = (*(v37 + 14) >> v38) & 1;
LABEL_19:
  v33 = 8 * (a4 > 0x3F);
  v34 = (v23 + v33);
  *v34 = *v34 & ~(1 << a4) | (v27 << a4);
  v34[20] = v34[20] & ~(1 << a4) | (v32 << a4);
  v34[40] &= ~(1 << a4);
  *(result + v33 + 27560) |= 1 << a4;
  *(result + 27592) |= 1u;
  result = *(result + 1896);
  if (result)
  {
    result = MTLResourceListAddResource();
  }

  if (a4 <= 0x1E)
  {
LABEL_22:
    *(*(v7 + 22488) + 4 * a4 + 17392) = a5;
  }

  return result;
}

void AGX::TensorBlitProgramKey::serialize(AGX::TensorBlitProgramKey *this, const void **a2, unint64_t *a3)
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
  *v10 = ((v9 - begin) >> 2 << 8) | 0x66;
  v10[1] = *(this + 10);
  v13 = 96;
  std::vector<unsigned int>::push_back[abi:nn200100](v6, &v13);
  v11 = *(this + 2);
  *a2 = v11;
  *a3 = *(this + 3) - v11;
}

BOOL AGX::BlitUtil::requireLegacyBlit<false>(uint64_t a1)
{
  v1 = &unk_2A179E000;
  {
    v3 = a1;
    a1 = v3;
    if (v4)
    {
      AGX::BlitUtil::requireLegacyBlit<false>(AGXG18PFamilyTexture *)::enableMSLBLitEV = 0;
      a1 = v3;
    }
  }

  {
    v5 = a1;
    a1 = v5;
    if (v6)
    {
      keyExistsAndHasValidFormat = 0;
      v7 = *MEMORY[0x29EDB8ED8];
      v8 = CFStringCreateWithCString(*MEMORY[0x29EDB8ED8], "EnableExperimentalUberBlitVariants", 0x8000100u);
      if (v8)
      {
        v9 = CFStringCreateWithCString(v7, "com.apple.Metal", 0x8000100u);
        if (v9)
        {
          AppBooleanValue = CFPreferencesGetAppBooleanValue(v8, v9, &keyExistsAndHasValidFormat);
          CFRelease(v8);
          CFRelease(v9);
          if (keyExistsAndHasValidFormat && AppBooleanValue)
          {
            v11 = 1;
LABEL_20:
            AGX::BlitUtil::requireLegacyBlit<false>(AGXG18PFamilyTexture *)::enableMSLBlitFeature = v11;
            a1 = v5;
            v1 = &unk_2A179E000;
            return (v1[1912] & 1) == 0 && (AGX::BlitUtil::requireLegacyBlit<false>(AGXG18PFamilyTexture *)::enableMSLBlitFeature & 1) == 0 || a1 && *(*(a1 + 592) + 112) > 1u;
          }
        }

        else
        {
          CFRelease(v8);
        }
      }

      v11 = _os_feature_enabled_impl();
      goto LABEL_20;
    }
  }

  return (v1[1912] & 1) == 0 && (AGX::BlitUtil::requireLegacyBlit<false>(AGXG18PFamilyTexture *)::enableMSLBlitFeature & 1) == 0 || a1 && *(*(a1 + 592) + 112) > 1u;
}

uint64_t std::function<void ()(AGX::LegacyBlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses> *&)>::~function(uint64_t a1)
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

uint64_t std::function<void ()(AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding> *&)>::~function(uint64_t a1)
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

void AGX::LegacyBlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::copyTextureToTexture(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, int a6, int a7, int a8, __n128 a9, int a10)
{
  v12 = *(a5 + 592);
  v13 = *(a2 + 592);
  v14 = *(v13 + 584) != 0;
  if (*(v12 + 236))
  {
    v15 = 0;
  }

  else
  {
    v15 = *(v13 + 236) == 0;
  }

  v16 = *(*(v12 + 208) + 24);
  if (*(*(v13 + 208) + 24) < v16)
  {
    v16 = *(*(v13 + 208) + 24);
  }

  v105 = v16;
  v17 = *(v13 + 32);
  v18 = *(v12 + 32);
  v20 = v17 == 260 && v18 == 261;
  v22 = v18 == 260 && v17 == 261;
  v103 = v22;
  v104 = v20;
  if (v15 && *(v12 + 396) == *(v13 + 396))
  {
    v101 = *(v12 + 584);
    v177 = 0;
    v178 = &v177;
    a9.n128_u64[0] = 0x2020000000;
    v179 = 0x2020000000;
    v180 = 0;
    v172[0] = MEMORY[0x29EDCA5F8];
    v172[1] = 3221225472;
    v173 = ___ZN3AGX17LegacyBlitContextINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE20copyTextureToTextureEP20AGXG18PFamilyTexturejjS7_jjjj_block_invoke_3;
    v174 = &unk_29F341AF0;
    v175 = &v177;
    v176 = 1;
    if (v105)
    {
      v23 = a10 == 0;
    }

    else
    {
      v23 = 1;
    }

    if (!v23)
    {
      v24 = 0;
      do
      {
        v25 = a4;
        v26 = a7;
        v27 = a10;
        do
        {
          v159 = a2;
          LODWORD(v160) = v24 + v104;
          HIDWORD(v160) = a3;
          LODWORD(v161) = v25;
          v138 = a5;
          LODWORD(v139) = v24 + v103;
          HIDWORD(v139) = a6;
          LODWORD(v140) = v26;
          v173(v172, &v159, &v138);
          ++v26;
          ++v25;
          --v27;
        }

        while (v27);
        ++v24;
      }

      while (v24 != v105);
    }

    if (v101)
    {
      v168[0] = MEMORY[0x29EDCA5F8];
      v168[1] = 3221225472;
      v169 = ___ZN3AGX17LegacyBlitContextINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE20copyTextureToTextureEP20AGXG18PFamilyTexturejjS7_jjjj_block_invoke_4;
      v170 = &unk_29F341B18;
      v171 = &v177;
      if (v105)
      {
        if (a10)
        {
          for (i = 0; i != v105; ++i)
          {
            v29 = a4;
            v30 = a7;
            v31 = a10;
            do
            {
              v159 = a2;
              LODWORD(v160) = i + v104;
              HIDWORD(v160) = a3;
              LODWORD(v161) = v29;
              v138 = a5;
              LODWORD(v139) = i + v103;
              HIDWORD(v139) = a6;
              LODWORD(v140) = v30;
              v169(v168, &v159, &v138);
              ++v30;
              ++v29;
              --v31;
            }

            while (v31);
          }
        }
      }
    }

    v32 = v105 * a8 * *(v178 + 6);
    v159 = 0;
    v160 = &v159;
    v161 = 0x4812000000;
    v162 = __Block_byref_object_copy__259;
    v163 = __Block_byref_object_dispose__260;
    v164 = &unk_29D31B497;
    v166 = 0;
    v167 = 0;
    v165 = 0;
    if (v32)
    {
      operator new();
    }

    v99 = v14;
    v153[0] = MEMORY[0x29EDCA5F8];
    v153[1] = 3221225472;
    v154 = ___ZN3AGX17LegacyBlitContextINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE20copyTextureToTextureEP20AGXG18PFamilyTexturejjS7_jjjj_block_invoke_262;
    v155 = &unk_29F341B60;
    v158 = 1;
    v156 = &__block_literal_global_256;
    v157 = &v159;
    if (v105 && a8 && a10)
    {
      v33 = 0;
      do
      {
        v34 = 0;
        v35 = v33 + v104;
        v106 = v33;
        v36 = v33 + v103;
        do
        {
          v37 = v34 + a3;
          v111 = v34;
          v38 = v34 + a6;
          v39 = a4;
          v40 = a7;
          v41 = a10;
          do
          {
            v138 = a2;
            v139 = __PAIR64__(v37, v35);
            LODWORD(v140) = v39;
            *&v191 = a5;
            *(&v191 + 1) = __PAIR64__(v38, v36);
            LODWORD(v192) = v40;
            v154(v153, &v138, &v191);
            ++v40;
            ++v39;
            --v41;
          }

          while (v41);
          v34 = v111 + 1;
        }

        while (v111 + 1 != a8);
        v33 = v106 + 1;
      }

      while (v106 + 1 != v105);
    }

    if (v101)
    {
      v147[0] = MEMORY[0x29EDCA5F8];
      v147[1] = 3221225472;
      v148 = ___ZN3AGX17LegacyBlitContextINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE20copyTextureToTextureEP20AGXG18PFamilyTexturejjS7_jjjj_block_invoke_2_263;
      v149 = &unk_29F341B60;
      v152 = 1;
      v151 = &v159;
      v150 = &__block_literal_global_256;
      if (v105)
      {
        if (a8 && a10)
        {
          v42 = 0;
          do
          {
            v43 = 0;
            v44 = v42 + v104;
            v107 = v42;
            v45 = v42 + v103;
            do
            {
              v46 = v43 + a3;
              v112 = v43;
              v47 = v43 + a6;
              v48 = a4;
              v49 = a7;
              v50 = a10;
              do
              {
                v138 = a2;
                v139 = __PAIR64__(v46, v44);
                LODWORD(v140) = v48;
                *&v191 = a5;
                *(&v191 + 1) = __PAIR64__(v47, v45);
                LODWORD(v192) = v49;
                v148(v147, &v138, &v191);
                ++v49;
                ++v48;
                --v50;
              }

              while (v50);
              v43 = v112 + 1;
            }

            while (v112 + 1 != a8);
            v42 = v107 + 1;
          }

          while (v107 + 1 != v105);
        }
      }
    }

    v51 = v160[6];
    v52 = v160[7];
    v53 = 126 - 2 * __clz(v52 - v51);
    if (v52 == v51)
    {
      v54 = 0;
    }

    else
    {
      v54 = v53;
    }

    v55 = std::__introsort<std::_ClassicAlgPolicy,AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::copyTextureToTexture(AGXG18PFamilyTexture *,unsigned int,unsigned int,AGXG18PFamilyTexture *,unsigned int,unsigned int,unsigned int,unsigned int)::{lambda(AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::copyTextureToTexture(AGXG18PFamilyTexture *,unsigned int,unsigned int,AGXG18PFamilyTexture *,unsigned int,unsigned int,unsigned int,unsigned int)::MemRange,AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::copyTextureToTexture(AGXG18PFamilyTexture *,unsigned int,unsigned int,AGXG18PFamilyTexture *,unsigned int,unsigned int,unsigned int,unsigned int)::MemRange)#1} &,AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::copyTextureToTexture(AGXG18PFamilyTexture *,unsigned int,unsigned int,AGXG18PFamilyTexture *,unsigned int,unsigned int,unsigned int,unsigned int)::MemRange*,false>(v51, v52, v54, 1, a9);
    v57 = v160[6];
    v56 = v160[7];
    if (v57 == v56)
    {
      v59 = a1;
      v60 = v99;
    }

    else
    {
      v58 = v160[6];
      v59 = a1;
      v60 = v99;
      do
      {
        v61 = *v58++;
        v55 = v61;
        *v57 = v61;
        if (v58 != v56)
        {
          v62 = v57->n128_u64[1];
          do
          {
            if (v62 != v58->n128_u64[0])
            {
              break;
            }

            v62 = v58->n128_u64[1];
            v57->n128_u64[1] = v62;
            ++v58;
          }

          while (v58 != v56);
        }

        ++v57;
      }

      while (v58 != v56);
      if (v57 != v160[7])
      {
        v160[7] = v57;
      }
    }

    v138 = 0;
    v139 = &v138;
    v140 = 0x4812000000;
    v141 = __Block_byref_object_copy__264;
    v142 = __Block_byref_object_dispose__265;
    v143 = &unk_29D31B497;
    v145 = 0;
    v146 = 0;
    __p = 0;
    v126[0] = MEMORY[0x29EDCA5F8];
    v126[1] = 3221225472;
    v127 = ___ZN3AGX17LegacyBlitContextINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE20copyTextureToTextureEP20AGXG18PFamilyTexturejjS7_jjjj_block_invoke_2_270;
    v128 = &unk_29F341BA8;
    v134 = &v138;
    v135 = v59;
    v136 = v60;
    v137 = 1;
    v131 = &__block_literal_global_269;
    v132 = &__block_literal_global_256;
    v133 = &v159;
    v129 = a2;
    v130 = a5;
    if (v105 && a8 && a10)
    {
      v74 = 0;
      do
      {
        v75 = 0;
        v76 = v74 + v104;
        v110 = v74;
        v77 = v74 + v103;
        do
        {
          v78 = v75 + a3;
          v114 = v75;
          v79 = v75 + a6;
          v80 = a4;
          v81 = a7;
          v82 = a10;
          do
          {
            *&v191 = a2;
            *(&v191 + 1) = __PAIR64__(v78, v76);
            LODWORD(v192) = v80;
            v187 = a5;
            v188 = v77;
            v189 = v79;
            v190 = v81;
            v127(v126, &v191, &v187);
            ++v81;
            ++v80;
            --v82;
          }

          while (v82);
          v75 = v114 + 1;
        }

        while (v114 + 1 != a8);
        v74 = v110 + 1;
      }

      while (v110 + 1 != v105);
    }

    v83 = v139[6];
    v84 = v139[7];
    v85 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v84 - v83) >> 3));
    if (v84 == v83)
    {
      v86 = 0;
    }

    else
    {
      v86 = v85;
    }

    std::__introsort<std::_ClassicAlgPolicy,AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::copyTextureToTexture(AGXG18PFamilyTexture *,unsigned int,unsigned int,AGXG18PFamilyTexture *,unsigned int,unsigned int,unsigned int,unsigned int)::{lambda(AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::CopyRange,AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::CopyRange)#1} &,AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::CopyRange*,false>(v83, v84, v86, 1, v55);
    v87 = v139;
    v88 = v139[6];
    v89 = v139[7];
    v90 = v88;
    if (v88 == v89)
    {
      goto LABEL_112;
    }

    do
    {
      v91 = *v88;
      v90[2] = *(v88 + 2);
      *v90 = v91;
      v88 = (v88 + 24);
      if (v88 != v89)
      {
        v92 = *v90;
        v93 = v90[1];
        v94 = v90[2];
        do
        {
          if (v94 + v92 != *v88 || v94 + v93 != *(v88 + 1))
          {
            break;
          }

          v94 += *(v88 + 2);
          v90[2] = v94;
          v88 = (v88 + 24);
        }

        while (v88 != v89);
      }

      v90 += 3;
    }

    while (v88 != v89);
    v87 = v139;
    v88 = v139[6];
    v89 = v139[7];
    if (v90 == v89)
    {
LABEL_112:
      if (v88 != v89)
      {
LABEL_113:
        v120[0] = MEMORY[0x29EDCA5F8];
        v120[1] = 3221225472;
        v121 = ___ZN3AGX17LegacyBlitContextINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE20copyTextureToTextureEP20AGXG18PFamilyTexturejjS7_jjjj_block_invoke_3_271;
        v122 = &unk_29F341BD0;
        v124 = a5;
        v125 = a1;
        v123 = a2;
        v96 = v87[6];
        if (*(v96 + 1) <= *v96)
        {
          if (v89 != v96)
          {
            do
            {
              v98 = *(v89 - 24);
              v192 = *(v89 - 1);
              v191 = v98;
              v121(v120, &v191);
              v89 = (v89 - 24);
            }

            while (v89 != v139[6]);
          }
        }

        else if (v96 != v89)
        {
          do
          {
            v97 = *v96;
            v192 = *(v96 + 2);
            v191 = v97;
            v121(v120, &v191);
            v96 = (v96 + 24);
          }

          while (v96 != v139[7]);
        }
      }
    }

    else
    {
      v139[7] = v90;
      v89 = v87[7];
      if (v88 != v89)
      {
        goto LABEL_113;
      }
    }

    _Block_object_dispose(&v138, 8);
    if (__p)
    {
      v145 = __p;
      operator delete(__p);
    }

    _Block_object_dispose(&v159, 8);
    if (v165)
    {
      v166 = v165;
      operator delete(v165);
    }

    _Block_object_dispose(&v177, 8);
    return;
  }

  v181[0] = MEMORY[0x29EDCA5F8];
  v181[1] = 3221225472;
  v182 = ___ZN3AGX17LegacyBlitContextINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE20copyTextureToTextureEP20AGXG18PFamilyTexturejjS7_jjjj_block_invoke_2;
  v183 = &unk_29F341AC8;
  v185 = a5;
  v186 = a1;
  v184 = a2;
  if (v105)
  {
    v63 = a8 == 0;
  }

  else
  {
    v63 = 1;
  }

  if (!v63 && a10 != 0)
  {
    v65 = 0;
    do
    {
      v66 = 0;
      v67 = v65 + v104;
      v102 = v65;
      v68 = v65 + v103;
      do
      {
        v69 = v66 + a3;
        v113 = v66;
        v70 = v66 + a6;
        v71 = a4;
        v72 = a7;
        v73 = a10;
        do
        {
          v159 = a2;
          v160 = __PAIR64__(v69, v67);
          LODWORD(v161) = v71;
          v138 = a5;
          v139 = __PAIR64__(v70, v68);
          LODWORD(v140) = v72;
          v182(v181, &v159, &v138);
          ++v72;
          ++v71;
          --v73;
        }

        while (v73);
        v66 = v113 + 1;
      }

      while (v113 + 1 != a8);
      v65 = v102 + 1;
    }

    while (v102 + 1 != v105);
  }
}

void sub_29CCE59AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, void *__p, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, char a63)
{
  _Block_object_dispose(&a40, 8);
  if (__p)
  {
    a47 = __p;
    operator delete(__p);
  }

  _Block_object_dispose(&a63, 8);
  if (a69)
  {
    a70 = a69;
    operator delete(a69);
  }

  _Block_object_dispose((v70 - 240), 8);
  _Unwind_Resume(a1);
}

double ___ZN3AGX17LegacyBlitContextINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE20copyTextureToTextureEP20AGXG18PFamilyTexturejjS7_jjjj_block_invoke_2(void *a1, _DWORD *a2, _DWORD *a3)
{
  v4 = a1[6];
  v5 = *(*a3 + 592);
  v6 = a3[4];
  v7 = v5[18].i32[0] + v6;
  v8 = *(*a2 + 592);
  v9 = a2[3];
  v10 = a2[4];
  v11 = v8[18].i32[0] + v10;
  v12 = v5[17].i32[0] >> (v5[18].i8[0] + v6);
  if (v12 <= 1)
  {
    v12 = 1;
  }

  LODWORD(v13) = v8[17].i32[0] >> v11;
  if (v13 <= 1)
  {
    LODWORD(v13) = 1;
  }

  if (v13 >= v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = v13;
  }

  v24 = 0uLL;
  v14 = a2[2];
  v26 = 0uLL;
  v27 = 0;
  v15 = a1[4];
  v16 = a1[5];
  v17 = a3[2];
  v18 = a3[3];
  v25 = 0;
  v19 = vmin_u32(vmax_u32(vshl_u32(v8[16], vneg_s32(vdup_n_s32(v11))), 0x100000001), vmax_u32(vshl_u32(v5[16], vneg_s32(vdup_n_s32(v7))), 0x100000001));
  *&v20 = v19.u32[0];
  *(&v20 + 1) = v19.u32[1];
  v22 = v20;
  v23 = v13;
  AGX::LegacyBlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::copyTextureToTextureImpl(v4, v15, v14, v9, v10, &v26, v16, v17, v18, v6, &v24, &v22);
  return result;
}

uint64_t ___ZN3AGX17LegacyBlitContextINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE20copyTextureToTextureEP20AGXG18PFamilyTexturejjS7_jjjj_block_invoke_3(uint64_t result, uint64_t a2, _DWORD *a3)
{
  if (*(result + 40) == 1)
  {
    v3 = *(*(*a3 + 592) + 136) >> (*(*(*a3 + 592) + 144) + a3[4]);
    if (v3 <= 1)
    {
      v3 = 1;
    }
  }

  else
  {
    v3 = 1;
  }

  *(*(*(result + 32) + 8) + 24) += v3;
  return result;
}

uint64_t ___ZN3AGX17LegacyBlitContextINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE20copyTextureToTextureEP20AGXG18PFamilyTexturejjS7_jjjj_block_invoke_4(uint64_t result, uint64_t a2, _DWORD *a3)
{
  v3 = *(*a3 + 592);
  v4 = *(v3 + 584);
  if (v4)
  {
    v5 = *(v3 + 144) + a3[4];
    if (*(v4 + 1304) > v5)
    {
      v6 = *(v3 + 136) >> v5;
      if (v6 <= 1)
      {
        v6 = 1;
      }

      *(*(*(result + 32) + 8) + 24) += v6;
    }
  }

  return result;
}

__n128 __Block_byref_object_copy__259(__n128 *a1, __n128 *a2)
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

void __Block_byref_object_dispose__260(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void ___ZN3AGX17LegacyBlitContextINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE20copyTextureToTextureEP20AGXG18PFamilyTexturejjS7_jjjj_block_invoke_262(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v5 = *(a1 + 48);
  v6 = *(*a3 + 592);
  v7 = a3[4];
  if (v5)
  {
    v8 = *(v6 + 144);
    v9 = v8 + v7;
    v10 = *(v6 + 136) >> (v8 + v7);
    if (v10 <= 1)
    {
      v11 = 1;
    }

    else
    {
      v11 = v10;
    }
  }

  else
  {
    v9 = *(v6 + 144) + v7;
    v11 = 1;
  }

  v12 = a3[2];
  v13 = *(v6 + 396);
  if (v13 == 3 || v13 == 0)
  {
    v15 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getPlaneSize<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0>(v6, a3[2], 0);
  }

  else
  {
    v16 = v9 + 1;
    if (v9 + 1 < *(v6 + 140) || v16 == *(v6 + 64))
    {
      v17 = *(*a3 + 592);
      v18 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getLevelOffset<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0>(v6, v16, a3[2]);
    }

    else
    {
      v17 = *(*a3 + 592);
      v18 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getMipmapSize<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0>(v6, a3[2]);
    }

    v15 = v18 - AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getLevelOffset<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0>(v17, v9, v12);
  }

  for (i = 0; i != v11; ++i)
  {
    GPUVirtualAddress = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getGPUVirtualAddress(*(*a3 + 592), a3[3], *(*(*a3 + 592) + 144) + a3[4], i, a3[2]);
    v22 = *(*(a1 + 40) + 8);
    v24 = *(v22 + 48);
    v23 = *(v22 + 56);
    v25 = v22 + 48;
    if (v24 == v23 || *(v23 - 8) != GPUVirtualAddress)
    {
      *&v26 = (*(*(a1 + 32) + 16))();
      *(&v26 + 1) = v20;
      std::vector<AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::copyTextureToTexture(AGXG18PFamilyTexture *,unsigned int,unsigned int,AGXG18PFamilyTexture *,unsigned int,unsigned int,unsigned int,unsigned int)::MemRange,std::allocator<AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::copyTextureToTexture(AGXG18PFamilyTexture *,unsigned int,unsigned int,AGXG18PFamilyTexture *,unsigned int,unsigned int,unsigned int,unsigned int)::MemRange>>::push_back[abi:nn200100](v25, &v26);
    }

    else
    {
      *(v23 - 8) = GPUVirtualAddress + v15;
    }
  }
}

void ___ZN3AGX17LegacyBlitContextINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE20copyTextureToTextureEP20AGXG18PFamilyTexturejjS7_jjjj_block_invoke_2_263(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v3 = *(*a3 + 592);
  v4 = *(v3 + 584);
  if (v4)
  {
    v6 = *(v3 + 144) + a3[4];
    if (*(v4 + 1304) > v6)
    {
      if (*(a1 + 48) == 1)
      {
        v8 = *(v3 + 136) >> v6;
        if (v8 <= 1)
        {
          v9 = 1;
        }

        else
        {
          v9 = v8;
        }
      }

      else
      {
        v9 = 1;
      }

      v10 = v4 + 648 * a3[2];
      v11 = *(v10 + 396);
      if (v11 == 3 || v11 == 0)
      {
        v13 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getPlaneSize<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)1>(v10, 0, 1);
      }

      else
      {
        v14 = v6 + 1;
        if (v6 + 1 < *(v10 + 140) || v14 == *(v10 + 64))
        {
          v15 = v10;
          v16 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getLevelOffset<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)1>(v10, v14, 0);
        }

        else
        {
          v15 = v10;
          v16 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getMipmapSize<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)1>(v10, 0);
        }

        v13 = v16 - AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getLevelOffset<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)1>(v15, v6, 0);
      }

      for (i = 0; i != v9; ++i)
      {
        GPUVirtualAddress = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getGPUVirtualAddress(*(*(*a3 + 592) + 584) + 648 * a3[2], a3[3], *(*(*a3 + 592) + 144) + a3[4], i, 0);
        v20 = *(*(a1 + 40) + 8);
        v22 = *(v20 + 48);
        v21 = *(v20 + 56);
        v23 = v20 + 48;
        if (v22 == v21 || *(v21 - 8) != GPUVirtualAddress)
        {
          *&v24 = (*(*(a1 + 32) + 16))();
          *(&v24 + 1) = v18;
          std::vector<AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::copyTextureToTexture(AGXG18PFamilyTexture *,unsigned int,unsigned int,AGXG18PFamilyTexture *,unsigned int,unsigned int,unsigned int,unsigned int)::MemRange,std::allocator<AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::copyTextureToTexture(AGXG18PFamilyTexture *,unsigned int,unsigned int,AGXG18PFamilyTexture *,unsigned int,unsigned int,unsigned int,unsigned int)::MemRange>>::push_back[abi:nn200100](v23, &v24);
        }

        else
        {
          *(v21 - 8) = GPUVirtualAddress + v13;
        }
      }
    }
  }
}

__n128 __Block_byref_object_copy__264(__n128 *a1, __n128 *a2)
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

void __Block_byref_object_dispose__265(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void ___ZN3AGX17LegacyBlitContextINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE20copyTextureToTextureEP20AGXG18PFamilyTexturejjS7_jjjj_block_invoke_2_270(uint64_t a1, unsigned int *a2, unsigned int *a3)
{
  v72 = (*(a1 + 88) & 1) != 0 && (v6 = *(*a2 + 592), (v7 = *(v6 + 584)) != 0) && *(v7 + 1304) > *(v6 + 144) + a2[4];
  v8 = *(a1 + 89);
  v9 = *(*a3 + 592);
  v10 = a3[4];
  if (v8)
  {
    v11 = *(v9 + 144);
    v12 = v11 + v10;
    v13 = *(v9 + 136) >> (v11 + v10);
    if (v13 <= 1)
    {
      v14 = 1;
    }

    else
    {
      v14 = v13;
    }
  }

  else
  {
    v12 = *(v9 + 144) + v10;
    v14 = 1;
  }

  v70 = *(a1 + 80);
  v15 = a3[2];
  v16 = *(v9 + 396);
  if (v16 == 3 || v16 == 0)
  {
    v18 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getPlaneSize<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0>(v9, a3[2], 0);
  }

  else
  {
    v19 = v12 + 1;
    if (v12 + 1 < *(v9 + 140) || v19 == *(v9 + 64))
    {
      v20 = *(*a3 + 592);
      v21 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getLevelOffset<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0>(v9, v19, a3[2]);
    }

    else
    {
      v20 = *(*a3 + 592);
      v21 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getMipmapSize<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0>(v9, a3[2]);
    }

    v18 = v21 - AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getLevelOffset<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0>(v20, v12, v15);
  }

  v22 = 0;
  v73 = v18;
  v71 = v14;
  do
  {
    v36 = *(a1 + 56);
    v37 = *(*(a1 + 64) + 8);
    v38 = *(a1 + 48);
    GPUVirtualAddress = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getGPUVirtualAddress(*(*a2 + 592), a2[3], *(*(*a2 + 592) + 144) + a2[4], v22, a2[2]);
    v40 = (*(v36 + 16))(v36, GPUVirtualAddress, v18);
    v42 = (*(v38 + 16))(v38, v37 + 48, v40, v41);
    if ((v42 | !v72))
    {
      if (!v42)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v45 = *(a1 + 56);
      v46 = *(*(a1 + 64) + 8);
      v47 = *(a1 + 48);
      v48 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getGPUVirtualAddress(*(*(*a2 + 592) + 584) + 648 * a2[2], a2[3], *(*(*a2 + 592) + 144) + a2[4], v22, 0);
      v49 = *(*a2 + 592);
      v50 = *(v49 + 584) + 648 * a2[2];
      v51 = *(v50 + 396);
      if (v51 == 3 || v51 == 0)
      {
        v53 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getPlaneSize<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)1>(v50, 0, 1);
      }

      else
      {
        v54 = *(v49 + 144) + a2[4];
        v55 = v54 + 1;
        if (v54 + 1 < *(v50 + 140) || v55 == *(v50 + 64))
        {
          v56 = *(v49 + 584) + 648 * a2[2];
          v57 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getLevelOffset<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)1>(v50, v55, 0);
        }

        else
        {
          v56 = *(v49 + 584) + 648 * a2[2];
          v57 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getMipmapSize<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)1>(v50, 0);
        }

        v53 = v57 - AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getLevelOffset<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)1>(v56, v54, 0);
      }

      v58 = (*(v45 + 16))(v45, v48, v53);
      v14 = v71;
      v18 = v73;
      if (((*(v47 + 16))(v47, v46 + 48, v58, v59) & 1) == 0)
      {
LABEL_29:
        v43 = *(*a2 + 592);
        v44 = a2[4];
        if (*(a1 + 89) == 1)
        {
          v23 = v43[18].i32[0] + v44;
          v24 = 1;
        }

        else
        {
          v23 = v43[18].i32[0] + v44;
          LODWORD(v24) = v43[17].i32[0] >> (v43[18].i8[0] + v44);
          if (v24 <= 1)
          {
            v24 = 1;
          }

          else
          {
            v24 = v24;
          }
        }

        v25 = *(*a3 + 592);
        v27 = a3[3];
        v26 = a3[4];
        v28 = v25[18].i32[0] + v26;
        v76 = 0uLL;
        v29 = a2[2];
        v30 = a2[3];
        v78 = 0uLL;
        v79 = v22;
        v31 = *(a1 + 32);
        v32 = *(a1 + 40);
        v33 = a3[2];
        v77 = v22;
        v34 = vmin_u32(vmax_u32(vshl_u32(v43[16], vneg_s32(vdup_n_s32(v23))), 0x100000001), vmax_u32(vshl_u32(v25[16], vneg_s32(vdup_n_s32(v28))), 0x100000001));
        *&v35 = v34.u32[0];
        *(&v35 + 1) = v34.u32[1];
        v74 = v35;
        v75 = v24;
        AGX::LegacyBlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::copyTextureToTextureImpl(v70, v31, v29, v30, v44, &v78, v32, v33, v27, v26, &v76, &v74);
        goto LABEL_26;
      }
    }

    v60 = *(*(a1 + 72) + 8);
    *&v78 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getGPUVirtualAddress(*(*a2 + 592), a2[3], *(*(*a2 + 592) + 144) + a2[4], v22, a2[2]);
    *(&v78 + 1) = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getGPUVirtualAddress(*(*a3 + 592), a3[3], *(*(*a3 + 592) + 144) + a3[4], v22, a3[2]);
    v79 = v18;
    std::vector<AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::CopyRange,std::allocator<AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::CopyRange>>::push_back[abi:nn200100](v60 + 48, &v78);
    if (v72)
    {
      v61 = *(*(a1 + 72) + 8);
      *&v78 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getGPUVirtualAddress(*(*(*a2 + 592) + 584) + 648 * a2[2], a2[3], *(*(*a2 + 592) + 144) + a2[4], v22, 0);
      v62 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getGPUVirtualAddress(*(*(*a3 + 592) + 584) + 648 * a3[2], a3[3], *(*(*a3 + 592) + 144) + a3[4], v22, 0);
      v63 = *(*a2 + 592);
      *(&v78 + 1) = v62;
      v64 = *(v63 + 584) + 648 * a2[2];
      if (*(v64 + 396) != 3 && *(v64 + 396))
      {
        v66 = *(v63 + 144) + a2[4];
        v67 = v66 + 1;
        if (v66 + 1 < *(v64 + 140) || v67 == *(v64 + 64))
        {
          v68 = *(v63 + 584) + 648 * a2[2];
          v69 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getLevelOffset<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)1>(v64, v67, 0);
        }

        else
        {
          v68 = *(v63 + 584) + 648 * a2[2];
          v69 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getMipmapSize<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)1>(v64, 0);
        }

        v65 = v69 - AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getLevelOffset<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)1>(v68, v66, 0);
        v18 = v73;
      }

      else
      {
        v65 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getPlaneSize<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)1>(v64, 0, 1);
      }

      v79 = v65;
      std::vector<AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::CopyRange,std::allocator<AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::CopyRange>>::push_back[abi:nn200100](v61 + 48, &v78);
    }

LABEL_26:
    ++v22;
  }

  while (v14 != v22);
}

void AGX::LegacyBlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::copyTextureToTextureImpl(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, unsigned int a5, __int128 *a6, uint64_t a7, unsigned int a8, unsigned int a9, unsigned int a10, __int128 *a11, void *a12)
{
  v13 = a3;
  v88 = *MEMORY[0x29EDCA608];
  v15 = *(a7 + 592);
  v16 = *(a2 + 592);
  v82 = 0;
  v17 = *(v15 + 584);
  if (!v17 || !*(v17 + 1304))
  {
    v18 = *(v16 + 584);
    if (!v18 || !*(v18 + 1304))
    {
      v19 = 0;
      goto LABEL_21;
    }

    if (!v17)
    {
      goto LABEL_9;
    }
  }

  if (*(v17 + 1304) > a10 && *(v15 + 57))
  {
    v19 = 2;
  }

  else
  {
LABEL_9:
    v20 = *(v16 + 584);
    if (v20)
    {
      v19 = 1;
      if (*(v20 + 1304) > a5)
      {
        if (*(v16 + 57))
        {
          v19 = 2;
        }

        else
        {
          v19 = 1;
        }
      }
    }

    else
    {
      v19 = 1;
    }
  }

  {
    v68 = v19;
    v13 = a3;
    v19 = v68;
    if (v59)
    {
      LOBYTE(v74) = 0;
      findEnvVarNum<BOOL>("AGX_DISABLE_PBE_COMPRESSION", &v74);
      AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::disablePBECompressionOnUICC(void)::disablePBECompression = v74;
      v13 = a3;
      v19 = v68;
    }
  }

  if (AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::disablePBECompressionOnUICC(void)::disablePBECompression == 1)
  {
    v22 = *(v16 + 584);
    if (v22)
    {
      if (*(v22 + 1304))
      {
        v82 |= 8u;
      }
    }
  }

LABEL_21:
  v23 = *(*(v16 + 208) + v13 + 88);
  v24 = *(v16 + 112);
  v60 = v13;
  TextureViewFormat = AGX::LegacyBlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::getTextureViewFormat(*(*(v16 + 208) + v13 + 88), v24, *(v16 + 32), v13, v19, 0);
  v26 = v25;
  v27 = 4;
  if (!(v25 >> 33))
  {
    v27 = 2;
  }

  v86 = a2;
  v84 = a7;
  v87 = *(v16 + 592);
  v85 = *(v15 + 592);
  v28 = *(v15 + 24);
  if (v28 <= 9)
  {
    if (((1 << v28) & 0x17C) != 0)
    {
LABEL_27:
      a12[2] = 1;
      goto LABEL_28;
    }

    if (((1 << v28) & 3) != 0)
    {
      a12[1] = 1;
      goto LABEL_27;
    }

    if (v28 == 9)
    {
      v47 = *(v15 + 112) * *(*(v15 + 208) + a8 + 88);
      v48 = v47 * *a11;
      v49 = *a12 * v47;
      v74 = *a6;
      v75 = *(a6 + 2);
      v72 = *a12;
      v73 = a12[2];
      AGX::LegacyBlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::copyBufferToTexture(a1, a2, a4, a5, &v74, &v72, a7, v48, v49, v49, 0);
      return;
    }
  }

LABEL_28:
  v29 = *(v16 + 24);
  if (v29 <= 9)
  {
    if (((1 << v29) & 0x17C) != 0)
    {
LABEL_32:
      a12[2] = 1;
      goto LABEL_33;
    }

    if (((1 << v29) & 3) != 0)
    {
      a12[1] = 1;
      goto LABEL_32;
    }

    if (v29 == 9)
    {
      v50 = v24 * v23;
      v51 = v50 * *a6;
      v52 = *a12 * v50;
      v74 = *a11;
      v75 = *(a11 + 2);
      v72 = *a12;
      v73 = a12[2];
      AGX::LegacyBlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::copyTextureToBuffer(a1, a2, v51, v52, v52, a7, a9, a10, &v74, &v72, 0);
      return;
    }
  }

LABEL_33:
  if (v28 != 7)
  {
    v28 = v27;
  }

  if (v29 == 7)
  {
    v27 = 7;
  }

  v62 = v27;
  v64 = v28;
  v30 = *a6;
  v31 = *(a6 + 2);
  v32 = *a11;
  v33 = *(a11 + 2);
  v34 = *(a11 + 4);
  v35 = *(a6 + 4);
  v36 = *(v16 + 216);
  v37 = *(v16 + 220);
  v38 = (*(a12 + 2) + v37 - 1) / v37;
  v76.i32[0] = (*a12 + v36 - 1) / v36;
  v76.i32[1] = v38;
  v77 = v30 / v36;
  v78 = v31 / v37;
  v79 = v32 / v36;
  v80 = v33 / v37;
  v81 = v34;
  v39 = a5;
  if (AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::blitTextureViewAllowed(v15, a10) && AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::blitTextureViewAllowed(v16, a5))
  {
    v40 = HIDWORD(v26);
    AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::createTextureViewForBlit(&v74, v15, v64, TextureViewFormat, *(v15 + 40), *(v15 + 56), *(v15 + 324), a9, a10, a8, v40, *(v15 + 152), *(v15 + 160), *(v15 + 168), *(v15 + 176), *(v15 + 180), *(v15 + 184), *(v15 + 236) != 0, 0);
    AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::createTextureViewForBlit(&v72, v16, v62, TextureViewFormat, *(v16 + 40), *(v16 + 56), *(v15 + 324), a4, a5, v61, v40, *(v16 + 152), *(v16 + 160), *(v16 + 168), *(v16 + 176), *(v16 + 180), *(v16 + 184), *(v16 + 236) != 0, 0);
    if (a12[2])
    {
      v41 = v82 & 0xE;
      v42 = 1;
      do
      {
        v44 = v35 + v42 - 1;
        if (v16 && *(v16 + 112) > 1u)
        {
          AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::renderTexture(a1, &v86, &v72, &v84, &v74, &v82, v44, &v76, 0);
        }

        else
        {
          if (v41)
          {
            if (*(a1 + 4880))
            {
              v45 = *(a1 + 8);
              v83 = 0;
              AGX::BlitUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::barrier(v45 + 24, &v83);
              *(a1 + 2568) = 0;
              *(a1 + 4880) = 0;
            }

            v46 = 1;
          }

          else
          {
            v46 = 2;
          }

          AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::blitCDM(a1, &v86, &v72, 0, &v84, &v74, 0, &v82, v44, &v76, 0, 0, 0, 0, v46);
        }

        ++v81;
        v43 = a12[2] > v42++;
      }

      while (v43);
    }

    AGX::TextureGen4<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::~TextureGen4(&v72);
    AGX::TextureGen4<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::~TextureGen4(&v74);
  }

  else if (*(v15 + 236) || *(v16 + 236))
  {
    AGX::BlitDispatchContextGen2<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::blitCDMSparseASTCLowMips(a1, &v86, v16, a4, a5, &v84, v15, a9, a10);
  }

  else if (a12[2])
  {
    v63 = *(*(v15 + 208) + a8 + 88);
    v53 = 1;
    do
    {
      GPUVirtualAddress = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getGPUVirtualAddress(v16, a4, *(v16 + 144) + v39, v35, v60);
      v55 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getGPUVirtualAddress(v15, a9, *(v15 + 144) + a10, v34, a8);
      v56 = *MEMORY[0x29EDC5638];
      v57 = GPUVirtualAddress - *(a2 + 72 + v56);
      v39 = a5;
      AGX::LegacyBlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::copyBufferToBuffer(a1, a2, v57, a7, v55 - *(a7 + 72 + v56), v63);
      ++v35;
      ++v34;
      v43 = a12[2] > v53++;
    }

    while (v43);
  }
}

uint64_t AGX::LegacyBlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::getTextureViewFormat(uint64_t a1, unsigned int a2, uint64_t a3, int a4, int a5, char a6)
{
  if (!a5)
  {
    v7 = a2 * a1;
    if (v7 <= 15)
    {
      if (v7 > 3)
      {
        if (v7 == 4)
        {
          return 53;
        }

        if (v7 == 8)
        {
          return 103;
        }
      }

      else if (v7 == 2)
      {
        return 23;
      }

      return 13;
    }

    if (v7 > 63)
    {
      if (v7 != 64 && v7 != 128)
      {
        return 13;
      }
    }

    else if (v7 != 16)
    {
      if (v7 == 32)
      {
        if (a6)
        {
          return 123;
        }

        else
        {
          return 113;
        }
      }

      return 13;
    }

    return 123;
  }

  if (a5 != 2)
  {
    goto LABEL_37;
  }

  if (a3 > 301)
  {
    if (a3 <= 314)
    {
      if (a3 == 302 || a3 == 304 || a3 == 314)
      {
        return a3;
      }
    }

    else if (a3 > 324)
    {
      if (a3 == 325 || a3 == 556)
      {
        return a3;
      }
    }

    else if (a3 == 315 || a3 == 324)
    {
      return a3;
    }

LABEL_37:
    result = 13;
    switch(a3)
    {
      case 1:
      case 10:
      case 11:
      case 12:
      case 13:
      case 14:
      case 253:
      case 261:
        return result;
      case 20:
      case 22:
      case 23:
      case 24:
      case 25:
      case 26:
      case 250:
        return 23;
      case 30:
      case 31:
      case 32:
      case 33:
      case 34:
        return 33;
      case 40:
      case 41:
      case 42:
      case 43:
      case 44:
      case 92:
      case 93:
        return a3;
      case 53:
      case 54:
        return 53;
      case 55:
      case 252:
        goto LABEL_53;
      case 60:
      case 62:
      case 63:
      case 64:
      case 65:
      case 66:
        return 63;
      case 70:
      case 71:
      case 72:
      case 73:
      case 74:
      case 80:
      case 81:
      case 84:
      case 85:
      case 300:
      case 301:
      case 302:
      case 303:
      case 304:
        return 73;
      case 90:
      case 91:
      case 94:
      case 554:
      case 555:
      case 586:
      case 587:
      case 628:
      case 629:
        return 91;
      case 103:
      case 104:
      case 105:
        return 103;
      case 110:
      case 112:
      case 113:
      case 114:
      case 115:
      case 116:
      case 313:
      case 314:
      case 315:
      case 556:
      case 637:
      case 638:
      case 639:
      case 640:
      case 641:
        return 113;
      case 123:
      case 124:
      case 125:
      case 323:
      case 324:
      case 325:
        return 123;
      case 260:
        if (a4)
        {
          if (a4 != 1)
          {
            return a3;
          }

          result = 13;
        }

        else
        {
LABEL_53:
          result = 55;
        }

        break;
      case 552:
      case 553:
        return 552;
      default:
        return 13;
    }

    return result;
  }

  result = a3;
  switch(a3)
  {
    case 10:
    case 12:
    case 14:
      return result;
    case 11:
      result = 10;
      break;
    case 22:
    case 24:
    case 25:
    case 32:
    case 34:
    case 54:
    case 62:
    case 64:
    case 65:
    case 72:
    case 74:
    case 104:
    case 105:
    case 112:
    case 114:
    case 115:
    case 124:
    case 125:
      return a3;
    default:
      goto LABEL_37;
  }

  return result;
}

void AGX::LegacyBlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::copyBufferToTexture(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, unsigned int *a5, int *a6, uint64_t a7, uint64_t a8, unint64_t a9, uint64_t a10, unsigned int a11)
{
  v133 = *MEMORY[0x29EDCA608];
  v15 = *(a2 + 592);
  v16 = *(v15 + 208);
  if (*(v16 + 24) < 2u)
  {
    v17 = 0;
  }

  else
  {
    v17 = (a11 >> 1) & 1;
    if (!*(v16 + 80))
    {
      v17 = 0;
    }
  }

  v18 = (a7 + *MEMORY[0x29EDC5638]);
  v19 = v17;
  v20 = *(v16 + v17 + 88);
  v21 = *(v15 + 112);
  v22 = *(v15 + 584);
  if (v22 && (v23 = *(v22 + 1304)) != 0)
  {
    v24 = 1;
    if (v23 > a4)
    {
      if (*(v15 + 57))
      {
        v24 = 2;
      }

      else
      {
        v24 = 1;
      }
    }
  }

  else
  {
    v24 = 0;
  }

  v84 = v18[9];
  v85 = v21 * v20;
  v26 = v18[18];
  v25 = v18[19];
  TextureViewFormat = AGX::LegacyBlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::getTextureViewFormat(v20, v21, *(v15 + 32), v17, v24, 0);
  v29 = TextureViewFormat;
  v88 = v28;
  if (v28 >> 33)
  {
    v30 = 4;
  }

  else
  {
    v30 = 2;
  }

  v31 = *(v15 + 24);
  if (v31 > 9)
  {
    goto LABEL_21;
  }

  if (((1 << v31) & 0x17C) != 0)
  {
LABEL_20:
    *(a6 + 2) = 1;
    goto LABEL_21;
  }

  if (((1 << v31) & 3) != 0)
  {
    *(a6 + 1) = 1;
    goto LABEL_20;
  }

  if (v31 != 9)
  {
LABEL_21:
    if (v31 != 7)
    {
      v31 = v30;
    }

    v82 = v31;
    v32 = *a6;
    v33 = a6[2];
    v34 = *a5;
    v35 = a5[2];
    v102 = 0;
    v36 = a5[4];
    v37 = *(v15 + 216);
    v38 = *(v15 + 220);
    v39 = (v32 + v37 - 1) / v37;
    v40 = (v33 + v38 - 1) / v38;
    v99 = __PAIR64__(v40, v39);
    LODWORD(v100) = v34 / v37;
    HIDWORD(v100) = v35 / v38;
    v101 = 0;
    v130[2] = 0;
    v130[1] = 0;
    v131 = a2;
    v130[0] = a7;
    v132 = *(v15 + 592);
    if ((TextureViewFormat - 1) > 0x289)
    {
      v41 = &texFormatUnsupported;
    }

    else
    {
      v41 = *(&off_29F342380 + (TextureViewFormat - 1));
    }

    v83 = HIDWORD(v28);
    AGX::TextureGen4<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::TextureGen4(v96, *(*(a1 + 4992) + 848), 0, 2, v30, v41, TextureViewFormat, 0, 0.0, v26, 2, 0, 0, 84148994, v39, v40, 1u, 1u, SHIDWORD(v28), 1, a9, 0, 0, v25, 0, 0, 0, 0, 0, 1, 1, 0, 1, v80, 0);
    v42 = v84 + a8;
    v96[0] = off_2A23FA3D8;
    if (!AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::blitTextureViewAllowed(v15, a4))
    {
      if (*(v15 + 236))
      {
        v98 = 0;
        v97 = v84 + a8;
        AGX::TextureGen4<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::texBaseAddressesUpdated(v96);
        AGX::BlitDispatchContextGen2<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::blitCDMSparseASTCLowMips(a1, &v131, v15, a3, a4, v130, v96, 0, 0);
      }

      else if (*(a6 + 2))
      {
        v70 = 0;
        v71 = *(*(v15 + 208) + v19 + 88);
        v72 = 1;
        do
        {
          GPUVirtualAddress = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getGPUVirtualAddress(v15, a3, *(v15 + 144) + a4, v36, v19);
          AGX::LegacyBlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::copyBufferToBuffer(a1, a2, GPUVirtualAddress - *(a2 + 72 + *MEMORY[0x29EDC5638]), a7, a8 + v70 * a10, v71);
          ++v36;
          v70 = v72++;
        }

        while (*(a6 + 2) > v70);
      }

      goto LABEL_93;
    }

    AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::createTextureViewForBlit(v92, v15, v82, v29, *(v15 + 40), *(v15 + 56), *(v15 + 324), a3, a4, v19, v83, *(v15 + 152), *(v15 + 160), *(v15 + 168), *(v15 + 176), *(v15 + 180), *(v15 + 184), *(v15 + 236) != 0, 0);
    v43 = *(v95 + 88);
    v91 = 0;
    {
      LOBYTE(v103) = 0;
      findEnvVarNum<BOOL>("AGX_DISABLE_PBE_COMPRESSION", &v103);
      AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::disablePBECompressionOnUICC(void)::disablePBECompression = v103;
    }

    if (AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::disablePBECompressionOnUICC(void)::disablePBECompression == 1)
    {
      v44 = *(v15 + 584);
      if (v44)
      {
        if (*(v44 + 1304))
        {
          v91 |= 8u;
        }
      }
    }

    if (v83 == 1)
    {
      if (*(a6 + 2))
      {
        v45 = 0;
        v46 = v91 & 0xE;
        v47 = 1;
        do
        {
          v49 = v36 + v47 - 1;
          v50 = (v45 * a10 + v42);
          if ((v99.i32[1] | v99.i32[0]) >> 15 || (((a9 / v85 * v85) | v50) & 0xF) != 0)
          {
            if (v15 && *(v15 + 112) > 1u)
            {
              *v115 = 0;
              LODWORD(v103) = 1;
              HIDWORD(v103) = v94;
              v48 = 32 - __clz(v94 - 1);
              if (v94 < 2)
              {
                LOBYTE(v48) = 0;
              }

              v105 = v88;
              v106 = v99;
              v107 = a9 / v43 / v94;
              v108 = v99.i32[0] << v48;
              v109 = v99.i32[1];
              v111 = a9;
              v110 = a9 / v43;
              v104 = v100;
              v112 = v100;
              v113 = v36 + v47 - 1;
              v114 = v99;
              v115[7] = v100 != 0;
              AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::render3D(a1, &v131, v92, v130, 0, v50, 0, 0, &v103, &v91);
            }

            else
            {
              if (v46)
              {
                v51 = a1;
                if (*(a1 + 4880))
                {
                  v52 = *(a1 + 8);
                  LODWORD(v103) = 0;
                  AGX::BlitUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::barrier(v52 + 24, &v103);
                  v51 = a1;
                  *(a1 + 2568) = 0;
                  *(a1 + 4880) = 0;
                }

                v53 = 1;
              }

              else
              {
                v53 = 2;
                v51 = a1;
              }

              AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::blitCDM(v51, &v131, v92, 0, v130, 0, v50, &v91, v49, &v99, v88, v43, a9, 0, v53);
            }
          }

          else
          {
            v98 = 0;
            v97 = v45 * a10 + v42;
            (*(*v96 + 16))(v96);
            if (v15 && *(v15 + 112) > 1u)
            {
              AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::renderTexture(a1, &v131, v92, v130, v96, &v91, v36 + v47 - 1, &v99, 0);
            }

            else
            {
              v54 = a1;
              if (v46)
              {
                if (*(a1 + 4880))
                {
                  v55 = *(a1 + 8);
                  LODWORD(v103) = 0;
                  AGX::BlitUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::barrier(v55 + 24, &v103);
                  v54 = a1;
                  *(a1 + 2568) = 0;
                  *(a1 + 4880) = 0;
                }

                v56 = 1;
              }

              else
              {
                v56 = 2;
              }

              AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::blitCDM(v54, &v131, v92, 0, v130, v96, 0, &v91, v49, &v99, 0, 0, 0, 0, v56);
            }
          }

          v45 = v47++;
        }

        while (*(a6 + 2) > v45);
      }

      goto LABEL_92;
    }

    v57 = 32 - __clz(v94 - 1);
    v58 = a9 / v43 / v94;
    v128 = 0uLL;
    v129 = 0;
    v117 = 4;
    v118 = v94;
    if (v94 >= 2)
    {
      v59 = v57;
    }

    else
    {
      v59 = 0;
    }

    v120 = v88;
    v121 = v99;
    v60 = v99.i32[0] << v59;
    v122 = a9 / v43 / v94;
    v123 = v99.i32[0] << v59;
    v124 = v99.i32[1];
    v125 = a9 / v43;
    v126 = a9;
    if (((v99.i32[0] << v59) | v99.i32[1]) >> 15 || (((a9 / v43 * v43) | v42) & 0xF) != 0)
    {
      if (v94 < 2)
      {
LABEL_86:
        *v115 = 0;
        LODWORD(v103) = 1;
        HIDWORD(v103) = v94;
        v105 = v88;
        v106 = v99;
        v107 = a9 / v43 / v94;
        v108 = v99.i32[0] << v59;
        v109 = v99.i32[1];
        v111 = a9;
        v110 = a9 / v43;
        v104 = v100;
        v112 = v100;
        v113 = 0;
        v114 = v99;
        v115[7] = v100 != 0;
        AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::render3D(a1, &v131, v92, v130, 0, v42, 0, 0, &v103, &v91);
LABEL_92:
        AGX::TextureGen4<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::~TextureGen4(v92);
LABEL_93:
        AGX::TextureGen4<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::~TextureGen4(v96);
        return;
      }

      v61 = v59 - 1;
      if (v59 <= 1)
      {
        v62 = 1;
      }

      else
      {
        v62 = v59;
      }

      v120 = v88;
      v121 = v99;
      v122 = a9 / v43 / v94;
      v63 = 1;
      while (1)
      {
        v60 = v58 << v61;
        v64 = v99.i32[1] << v63;
        v65 = (v58 << v61) * v43;
        v129 = 1;
        v128 = 0uLL;
        if (!(((v58 << v61) | (v99.i32[1] << v63)) >> 15) && (((v60 * v43) | v42) & 0xF) == 0)
        {
          break;
        }

        ++v63;
        --v61;
        if (!--v62)
        {
          v123 = v60;
          v124 = v64;
          v125 = v60;
          v126 = v65;
          goto LABEL_86;
        }
      }

      v123 = v58 << v61;
      v124 = v99.i32[1] << v63;
      v125 = v58 << v61;
      v126 = (v58 << v61) * v43;
      v119 = v100;
      v127 = v100;
      v66.i32[1] = v99.i32[1];
      *(&v128 + 4) = v99;
      v66.i32[0] = v58 << v61;
      v67 = vcnt_s8(v66);
      v67.i16[0] = vaddlv_u8(v67);
      v68 = v58 << v61;
      BYTE1(v129) = v67.i32[0] == 1;
      v69 = 0x2A179C000;
      if (v67.i32[0] == 1)
      {
        if (v60 < 2)
        {
          v68 = 0;
        }

        else
        {
          v68 = 32 - __clz(v60 - 1);
        }
      }

      HIDWORD(v128) = v68;
      HIBYTE(v129) = v100 != 0;
      v117 = 4;
      v118 = v94;
    }

    else
    {
      v119 = v100;
      v127 = v100;
      *(&v128 + 4) = v99;
      HIBYTE(v129) = v100 != 0;
      v65 = a9;
      v64 = v99.u32[1];
      v69 = 0x2A179C000uLL;
    }

    v76 = v131 + *MEMORY[0x29EDC5638];
    v77 = *(v76 + 144);
    v78 = *(v76 + 152);
    if ((v93 - 1) > 0x289)
    {
      v79 = &texFormatUnsupported;
    }

    else
    {
      v79 = *(&off_29F342380 + (v93 - 1));
    }

    AGX::TextureGen4<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::TextureGen4(&v103, *(*(*(a1 + 8) + 1872) + *(v69 + 1260)), 0, 2, 2, v79, v93, 0, 0.0, v77, 2, 0, 0, 84148994, v60, v64, 1u, 1u, 1, 1, v65, 0, 0, v78, 0, 0, 0, 0, 0, 1, 1, 0, 1, v81, 0);
    v103 = off_2A23FA3D8;
    v116 = 0;
    *&v115[4] = v84 + a8;
    AGX::TextureGen4<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::texBaseAddressesUpdated(&v103);
    AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::render3D(a1, &v131, v92, v130, &v103, v42, 0, 0, &v117, &v91);
    AGX::TextureGen4<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::~TextureGen4(&v103);
    goto LABEL_92;
  }

  v74 = *a5 * v85;
  v75 = *a6 * v85;

  AGX::LegacyBlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::copyBufferToBuffer(a1, a2, v74, a7, a8, v75);
}

void sub_29CCE86E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38)
{
  AGX::TextureGen4<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::~TextureGen4(&STACK[0x618]);
  AGX::TextureGen4<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::~TextureGen4(&a38);
  AGX::TextureGen4<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::~TextureGen4(&STACK[0x370]);
  _Unwind_Resume(a1);
}

void AGX::LegacyBlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::copyTextureToBuffer(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7, unsigned int a8, unsigned int *a9, int *a10, unsigned int a11)
{
  v127[3] = *MEMORY[0x29EDCA608];
  v12 = *(a6 + 592);
  v13 = *(v12 + 208);
  if (*(v13 + 24) < 2u)
  {
    v14 = 0;
  }

  else
  {
    v14 = (a11 >> 1) & 1;
    if (!*(v13 + 80))
    {
      v14 = 0;
    }
  }

  v15 = (a2 + *MEMORY[0x29EDC5638]);
  v16 = v14;
  v17 = *(v13 + v14 + 88);
  v18 = *(v12 + 112);
  v19 = *(v12 + 584);
  if (v19 && (v20 = *(v19 + 1304)) != 0)
  {
    v21 = 1;
    if (v20 > a8)
    {
      if (*(v12 + 57))
      {
        v21 = 2;
      }

      else
      {
        v21 = 1;
      }
    }
  }

  else
  {
    v21 = 0;
  }

  v22 = v15[9];
  v23 = v15[18];
  v24 = v15[19];
  v25 = v18 * v17;
  TextureViewFormat = AGX::LegacyBlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::getTextureViewFormat(v17, v18, *(v12 + 32), v14, v21, 0);
  v28 = TextureViewFormat;
  v86 = v27;
  if (v27 >> 33)
  {
    v29 = 4;
  }

  else
  {
    v29 = 2;
  }

  v30 = *(v12 + 24);
  if (v30 > 9)
  {
    goto LABEL_21;
  }

  if (((1 << v30) & 0x17C) != 0)
  {
LABEL_20:
    *(a10 + 2) = 1;
    goto LABEL_21;
  }

  if (((1 << v30) & 3) != 0)
  {
    *(a10 + 1) = 1;
    goto LABEL_20;
  }

  if (v30 != 9)
  {
LABEL_21:
    v31 = v24;
    v92 = v22;
    v32 = a8;
    if (v30 != 7)
    {
      v30 = v29;
    }

    v85 = v30;
    v33 = *a10;
    v34 = a10[2];
    v35 = *a9;
    v36 = a9[2];
    v37 = a9[4];
    v107 = v37;
    v39 = *(v12 + 216);
    v38 = *(v12 + 220);
    v104[0].i32[0] = (v33 + v39 - 1) / v39;
    v104[0].i32[1] = (v34 + v38 - 1) / v38;
    v104[1] = 0;
    v82 = v35;
    v83 = v36;
    v81 = v38;
    v79 = v36 / v38;
    v80 = v35 / v39;
    v105 = v35 / v39;
    v106 = v36 / v38;
    v127[1] = 0;
    v127[2] = 0;
    v127[0] = a2;
    v125 = a6;
    v126 = *(v12 + 592);
    v40 = v23;
    if ((TextureViewFormat - 1) > 0x289)
    {
      v41 = &texFormatUnsupported;
    }

    else
    {
      v41 = *(&off_29F342380 + (TextureViewFormat - 1));
    }

    v84 = (v34 + v38 - 1) / v38;
    v42 = (v33 + v39 - 1) / v39;
    AGX::TextureGen4<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::TextureGen4(v101, *(*(a1 + 4992) + 848), 0, 2, v29, v41, TextureViewFormat, 0, 0.0, v40, 2, 0, 0, 84148994, v42, v84, 1u, 1u, SHIDWORD(v27), 1, a4, 0, 0, v31, 0, 0, 0, 0, 0, 1, 1, 0, 1, v77, 0);
    v93 = v92 + a3;
    v101[0] = off_2A23FA3D8;
    if (!AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::blitTextureViewAllowed(v12, a8))
    {
      if (*(v12 + 236))
      {
        v103 = 0;
        v102 = v93;
        AGX::TextureGen4<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::texBaseAddressesUpdated(v101);
        AGX::BlitDispatchContextGen2<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::blitCDMSparseASTCLowMips(a1, v127, v101, 0, 0, &v125, v12, a7, a8);
      }

      else if (*(a10 + 2))
      {
        v62 = 0;
        v63 = *(*(v12 + 208) + v16 + 88);
        v64 = 1;
        do
        {
          GPUVirtualAddress = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getGPUVirtualAddress(v12, a7, *(v12 + 144) + v32, v37, v16);
          AGX::LegacyBlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::copyBufferToBuffer(a1, a2, a3 + v62 * a5, a6, GPUVirtualAddress - *(a6 + 72 + *MEMORY[0x29EDC5638]), v63);
          v107 = ++v37;
          v62 = v64++;
        }

        while (*(a10 + 2) > v62);
      }

      goto LABEL_82;
    }

    AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::createTextureViewForBlit(v96, v12, v85, v28, *(v12 + 40), *(v12 + 56), *(v12 + 324), a7, a8, v16, SHIDWORD(v86), *(v12 + 152), *(v12 + 160), *(v12 + 168), *(v12 + 176), *(v12 + 180), *(v12 + 184), *(v12 + 236) != 0, 0);
    v44 = *(v100 + 88);
    v45 = v84;
    if (HIDWORD(v86) == 1)
    {
      if (*(a10 + 2))
      {
        v46 = 0;
        v47 = 1;
        do
        {
          v48 = v46 * a5 + v93;
          if ((v104[0].i32[1] | v104[0].i32[0]) >> 15)
          {
            v49 = 0;
          }

          else
          {
            v49 = ((a4 / v25) & 0xF) == 0;
          }

          if (v49 && (v48 & 0xF) == 0)
          {
            v103 = 0;
            v102 = v46 * a5 + v93;
            (*(v101[0] + 16))(v101);
            LODWORD(v109[0]) = 0;
            AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::blitCDM(a1, v127, v101, 0, &v125, v96, 0, v109, 0, v104, 0, 0, 0, 0, 2);
          }

          else
          {
            LODWORD(v109[0]) = 0;
            AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::blitCDM(a1, v127, 0, v48, &v125, v96, 0, v109, 0, v104, v86, v44, a4, 0, 2);
          }

          ++v107;
          v46 = v47++;
        }

        while (*(a10 + 2) > v46);
      }

      goto LABEL_81;
    }

    v51 = a4 / v44 / v99;
    v52 = 32 - __clz(v99 - 1);
    if (v99 >= 2)
    {
      v53 = v52;
    }

    else
    {
      v53 = 0;
    }

    v43.i32[0] = a4 / v44 / v99;
    *&v122[1] = 0;
    v54 = vcnt_s8(v43);
    v124 = 0;
    v123 = 0;
    v110 = 3;
    v111 = v99;
    v114 = v86;
    v115 = v42;
    v54.i16[0] = vaddlv_u8(v54);
    v116 = v84;
    v117 = a4 / v44 / v99;
    v55 = v42 << v53;
    v118 = v42 << v53;
    v119 = v84;
    v120 = a4 / v44;
    v121 = a4;
    if ((v93 & 0xF) == 0 && ((a4 / v44) & 0xF) == 0 && !((v55 | v84) >> 15))
    {
      v112 = v80;
      v113 = v79;
      v122[0] = 0;
      LODWORD(v123) = v42 << v53;
      HIDWORD(v123) = v84;
      v57 = v39 <= v82 || v81 <= v83;
      HIBYTE(v124) = v57;
      goto LABEL_55;
    }

    if (v99 >= 2)
    {
      v68 = 32 - __clz(v51 - 1);
      if (v51 < 2)
      {
        v68 = 0;
      }

      v69 = v54.i32[0] == 1 ? v68 : a4 / v44 / v99;
      v70 = v39 > v82 && v81 > v83;
      v71 = !v70;
      if ((v93 & 0xF) == 0)
      {
        v55 = v51 << (v53 - 1);
        v72 = 2 * v84;
        memset(v122, 0, sizeof(v122));
        if (!((v55 | (2 * v84)) >> 15) && (v55 & 0xF) == 0)
        {
LABEL_92:
          v115 = v42;
          v116 = v84;
          v117 = a4 / v44 / v99;
          v118 = v55;
          v119 = v72;
          v120 = v55;
          BYTE4(v124) = 1;
          v111 = v99;
          v112 = v80;
          v113 = v79;
          BYTE6(v124) = v51 != v42;
          LODWORD(a4) = v55 * v44;
          v121 = v55 * v44;
          v123 = __PAIR64__(v72, v55);
          BYTE5(v124) = v54.i32[0] == 1;
          LODWORD(v124) = v69;
          HIBYTE(v124) = v71;
          v45 = v72;
          v110 = 3;
LABEL_55:
          v58 = a2 + *MEMORY[0x29EDC5638];
          v59 = *(v58 + 144);
          v60 = *(v58 + 152);
          if ((v97 - 1) > 0x289)
          {
            v61 = &texFormatUnsupported;
          }

          else
          {
            v61 = *(&off_29F342380 + (v97 - 1));
          }

          AGX::TextureGen4<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::TextureGen4(v109, *(*(*(a1 + 8) + 1872) + 848), 0, 2, 2, v61, v97, 0, 0.0, v59, 2, 0, 0, 84148994, v55, v45, 1u, 1u, 1, 1, a4, 0, 0, v60, 0, 0, 0, 0, 0, 1, 1, 0, 1, v78, 0);
          v109[39] = 0;
          v109[0] = off_2A23FA3D8;
          v109[9] = v93;
          AGX::TextureGen4<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::texBaseAddressesUpdated(v109);
          v108 = 0;
          AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::render3D(a1, v127, v109, &v125, v96, v98, 0, 0, &v110, &v108);
          AGX::TextureGen4<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::~TextureGen4(v109);
          goto LABEL_81;
        }

        if (v53 <= 1)
        {
          v73 = 1;
        }

        else
        {
          v73 = v53;
        }

        v74 = v73 - 1;
        v75 = v53 - 2;
        v76 = 2;
        while (v74)
        {
          v55 = v51 << v75;
          v72 = v84 << v76;
          memset(v122, 0, sizeof(v122));
          --v74;
          ++v76;
          --v75;
          if (!((v55 | v72) >> 15) && (v55 & 0xF) == 0)
          {
            goto LABEL_92;
          }
        }
      }
    }

    AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::blitTextureToBufferWithTA(a1, v127, v93, &v125, v96, v104, v44, a4, v86);
LABEL_81:
    AGX::TextureGen4<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::~TextureGen4(v96);
LABEL_82:
    AGX::TextureGen4<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::~TextureGen4(v101);
    return;
  }

  v66 = *a9 * v25;
  v67 = *a10 * v25;

  AGX::LegacyBlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::copyBufferToBuffer(a1, a2, a3, a6, v66, v67);
}

void sub_29CCE909C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40)
{
  AGX::TextureGen4<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::~TextureGen4(&STACK[0x628]);
  AGX::TextureGen4<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::~TextureGen4(&a40);
  AGX::TextureGen4<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::~TextureGen4(&STACK[0x380]);
  _Unwind_Resume(a1);
}

BOOL ___ZN3AGX17LegacyBlitContextINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE20copyTextureToTextureEP20AGXG18PFamilyTexturejjS7_jjjj_block_invoke_267(uint64_t a1, unint64_t **a2, unint64_t a3, unint64_t a4)
{
  v4 = *a2;
  v5 = a2[1];
  if (v5 == *a2)
  {
    return 0;
  }

  v6 = (v5 - *a2) >> 4;
  do
  {
    v7 = v6 >> 1;
    v8 = &v4[2 * (v6 >> 1)];
    v9 = v8[1];
    v10 = v8 + 2;
    v6 += ~(v6 >> 1);
    if (v9 <= a3)
    {
      v4 = v10;
    }

    else
    {
      v6 = v7;
    }
  }

  while (v6);
  return v4 != v5 && *v4 < a4;
}

void sub_29CCE9DC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, void *__p, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, char a63)
{
  _Block_object_dispose(&a40, 8);
  if (__p)
  {
    a47 = __p;
    operator delete(__p);
  }

  _Block_object_dispose(&a63, 8);
  if (a69)
  {
    a70 = a69;
    operator delete(a69);
  }

  _Block_object_dispose((v70 - 160), 8);
  _Unwind_Resume(a1);
}

double ___ZN3AGX11BlitContextINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesENS1_15CommandEncodingEE20copyTextureToTextureEP20AGXG18PFamilyTexturejjS8_jjjj_block_invoke_2(void *a1, _DWORD *a2, _DWORD *a3)
{
  v4 = a1[6];
  v5 = *(*a3 + 592);
  v6 = a3[4];
  v7 = v5[18].i32[0] + v6;
  v8 = *(*a2 + 592);
  v9 = a2[3];
  v10 = a2[4];
  v11 = v8[18].i32[0] + v10;
  v12 = v5[17].i32[0] >> (v5[18].i8[0] + v6);
  if (v12 <= 1)
  {
    v12 = 1;
  }

  LODWORD(v13) = v8[17].i32[0] >> v11;
  if (v13 <= 1)
  {
    LODWORD(v13) = 1;
  }

  if (v13 >= v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = v13;
  }

  v24 = 0uLL;
  v14 = a2[2];
  v26 = 0uLL;
  v27 = 0;
  v15 = a1[4];
  v16 = a1[5];
  v17 = a3[2];
  v18 = a3[3];
  v25 = 0;
  v19 = vmin_u32(vmax_u32(vshl_u32(v8[16], vneg_s32(vdup_n_s32(v11))), 0x100000001), vmax_u32(vshl_u32(v5[16], vneg_s32(vdup_n_s32(v7))), 0x100000001));
  *&v20 = v19.u32[0];
  *(&v20 + 1) = v19.u32[1];
  v22 = v20;
  v23 = v13;
  AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::copyTextureToTextureImpl(v4, v15, v14, v9, v10, &v26, v16, v17, v18, v6, &v24, &v22);
  return result;
}

uint64_t ___ZN3AGX11BlitContextINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesENS1_15CommandEncodingEE20copyTextureToTextureEP20AGXG18PFamilyTexturejjS8_jjjj_block_invoke_3(uint64_t result, uint64_t a2, _DWORD *a3)
{
  if (*(result + 40) == 1)
  {
    v3 = *(*(*a3 + 592) + 136) >> (*(*(*a3 + 592) + 144) + a3[4]);
    if (v3 <= 1)
    {
      v3 = 1;
    }
  }

  else
  {
    v3 = 1;
  }

  *(*(*(result + 32) + 8) + 24) += v3;
  return result;
}

uint64_t ___ZN3AGX11BlitContextINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesENS1_15CommandEncodingEE20copyTextureToTextureEP20AGXG18PFamilyTexturejjS8_jjjj_block_invoke_4(uint64_t result, uint64_t a2, _DWORD *a3)
{
  v3 = *(*a3 + 592);
  v4 = *(v3 + 584);
  if (v4)
  {
    v5 = *(v3 + 144) + a3[4];
    if (*(v4 + 1304) > v5)
    {
      v6 = *(v3 + 136) >> v5;
      if (v6 <= 1)
      {
        v6 = 1;
      }

      *(*(*(result + 32) + 8) + 24) += v6;
    }
  }

  return result;
}

__n128 __Block_byref_object_copy__3082(__n128 *a1, __n128 *a2)
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

void __Block_byref_object_dispose__3083(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void ___ZN3AGX11BlitContextINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesENS1_15CommandEncodingEE20copyTextureToTextureEP20AGXG18PFamilyTexturejjS8_jjjj_block_invoke_241(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v5 = *(a1 + 48);
  v6 = *(*a3 + 592);
  v7 = a3[4];
  if (v5)
  {
    v8 = *(v6 + 144);
    v9 = v8 + v7;
    v10 = *(v6 + 136) >> (v8 + v7);
    if (v10 <= 1)
    {
      v11 = 1;
    }

    else
    {
      v11 = v10;
    }
  }

  else
  {
    v9 = *(v6 + 144) + v7;
    v11 = 1;
  }

  v12 = a3[2];
  v13 = *(v6 + 396);
  if (v13 == 3 || v13 == 0)
  {
    v15 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getPlaneSize<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0>(v6, a3[2], 0);
  }

  else
  {
    v16 = v9 + 1;
    if (v9 + 1 < *(v6 + 140) || v16 == *(v6 + 64))
    {
      v17 = *(*a3 + 592);
      v18 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getLevelOffset<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0>(v6, v16, a3[2]);
    }

    else
    {
      v17 = *(*a3 + 592);
      v18 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getMipmapSize<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0>(v6, a3[2]);
    }

    v15 = v18 - AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getLevelOffset<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0>(v17, v9, v12);
  }

  for (i = 0; i != v11; ++i)
  {
    GPUVirtualAddress = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getGPUVirtualAddress(*(*a3 + 592), a3[3], *(*(*a3 + 592) + 144) + a3[4], i, a3[2]);
    v22 = *(*(a1 + 40) + 8);
    v24 = *(v22 + 48);
    v23 = *(v22 + 56);
    v25 = v22 + 48;
    if (v24 == v23 || *(v23 - 8) != GPUVirtualAddress)
    {
      *&v26 = (*(*(a1 + 32) + 16))();
      *(&v26 + 1) = v20;
      std::vector<AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::copyTextureToTexture(AGXG18PFamilyTexture *,unsigned int,unsigned int,AGXG18PFamilyTexture *,unsigned int,unsigned int,unsigned int,unsigned int)::MemRange,std::allocator<AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::copyTextureToTexture(AGXG18PFamilyTexture *,unsigned int,unsigned int,AGXG18PFamilyTexture *,unsigned int,unsigned int,unsigned int,unsigned int)::MemRange>>::push_back[abi:nn200100](v25, &v26);
    }

    else
    {
      *(v23 - 8) = GPUVirtualAddress + v15;
    }
  }
}

void ___ZN3AGX11BlitContextINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesENS1_15CommandEncodingEE20copyTextureToTextureEP20AGXG18PFamilyTexturejjS8_jjjj_block_invoke_2_242(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v3 = *(*a3 + 592);
  v4 = *(v3 + 584);
  if (v4)
  {
    v6 = *(v3 + 144) + a3[4];
    if (*(v4 + 1304) > v6)
    {
      if (*(a1 + 48) == 1)
      {
        v8 = *(v3 + 136) >> v6;
        if (v8 <= 1)
        {
          v9 = 1;
        }

        else
        {
          v9 = v8;
        }
      }

      else
      {
        v9 = 1;
      }

      v10 = v4 + 648 * a3[2];
      v11 = *(v10 + 396);
      if (v11 == 3 || v11 == 0)
      {
        v13 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getPlaneSize<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)1>(v10, 0, 1);
      }

      else
      {
        v14 = v6 + 1;
        if (v6 + 1 < *(v10 + 140) || v14 == *(v10 + 64))
        {
          v15 = v10;
          v16 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getLevelOffset<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)1>(v10, v14, 0);
        }

        else
        {
          v15 = v10;
          v16 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getMipmapSize<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)1>(v10, 0);
        }

        v13 = v16 - AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getLevelOffset<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)1>(v15, v6, 0);
      }

      for (i = 0; i != v9; ++i)
      {
        GPUVirtualAddress = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getGPUVirtualAddress(*(*(*a3 + 592) + 584) + 648 * a3[2], a3[3], *(*(*a3 + 592) + 144) + a3[4], i, 0);
        v20 = *(*(a1 + 40) + 8);
        v22 = *(v20 + 48);
        v21 = *(v20 + 56);
        v23 = v20 + 48;
        if (v22 == v21 || *(v21 - 8) != GPUVirtualAddress)
        {
          *&v24 = (*(*(a1 + 32) + 16))();
          *(&v24 + 1) = v18;
          std::vector<AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::copyTextureToTexture(AGXG18PFamilyTexture *,unsigned int,unsigned int,AGXG18PFamilyTexture *,unsigned int,unsigned int,unsigned int,unsigned int)::MemRange,std::allocator<AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::copyTextureToTexture(AGXG18PFamilyTexture *,unsigned int,unsigned int,AGXG18PFamilyTexture *,unsigned int,unsigned int,unsigned int,unsigned int)::MemRange>>::push_back[abi:nn200100](v23, &v24);
        }

        else
        {
          *(v21 - 8) = GPUVirtualAddress + v13;
        }
      }
    }
  }
}

__n128 std::__introsort<std::_ClassicAlgPolicy,AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::copyTextureToTexture(AGXG18PFamilyTexture *,unsigned int,unsigned int,AGXG18PFamilyTexture *,unsigned int,unsigned int,unsigned int,unsigned int)::{lambda(AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::copyTextureToTexture(AGXG18PFamilyTexture *,unsigned int,unsigned int,AGXG18PFamilyTexture *,unsigned int,unsigned int,unsigned int,unsigned int)::MemRange,AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::copyTextureToTexture(AGXG18PFamilyTexture *,unsigned int,unsigned int,AGXG18PFamilyTexture *,unsigned int,unsigned int,unsigned int,unsigned int)::MemRange)#1} &,AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::copyTextureToTexture(AGXG18PFamilyTexture *,unsigned int,unsigned int,AGXG18PFamilyTexture *,unsigned int,unsigned int,unsigned int,unsigned int)::MemRange*,false>(__n128 *a1, __n128 *a2, uint64_t a3, char a4, __n128 result)
{
LABEL_1:
  v9 = a2 - 1;
  v10 = a2 - 2;
  v11 = a2 - 3;
  v12 = a1;
  while (1)
  {
    a1 = v12;
    v13 = (a2 - v12) >> 4;
    if (v13 <= 2)
    {
      if (v13 < 2)
      {
        return result;
      }

      if (v13 == 2)
      {
        if (v9->n128_u64[0] >= *v12)
        {
          return result;
        }

        goto LABEL_107;
      }

      goto LABEL_9;
    }

    if (v13 == 3)
    {
      break;
    }

    if (v13 == 4)
    {
      v57 = (v12 + 16);
      v60 = *(v12 + 16);
      v61 = (v12 + 32);
      v62 = *(v12 + 32);
      if (v60 >= *v12)
      {
        if (v62 < v60)
        {
          result = *v57;
          *v57 = *v61;
          *v61 = result;
          if (*(v12 + 16) < *v12)
          {
            v130 = *v12;
            *v12 = *v57;
            result = v130;
            *v57 = v130;
          }
        }
      }

      else
      {
        if (v62 < v60)
        {
          v128 = *v12;
          *v12 = *v61;
          result = v128;
          goto LABEL_181;
        }

        v132 = *v12;
        *v12 = *v57;
        result = v132;
        *v57 = v132;
        if (v62 < *(v12 + 16))
        {
          result = *v57;
          *v57 = *v61;
LABEL_181:
          *v61 = result;
        }
      }

      if (v9->n128_u64[0] >= v61->n128_u64[0])
      {
        return result;
      }

      result = *v61;
      *v61 = *v9;
      *v9 = result;
      if (v61->n128_u64[0] >= v57->n128_u64[0])
      {
        return result;
      }

      result = *v57;
      *v57 = *v61;
      *v61 = result;
LABEL_185:
      if (*(v12 + 16) < *v12)
      {
        v133 = *v12;
        *v12 = *v57;
        result = v133;
        *v57 = v133;
      }

      return result;
    }

    if (v13 == 5)
    {

      result.n128_u64[0] = std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::copyTextureToTexture(AGXG18PFamilyTexture *,unsigned int,unsigned int,AGXG18PFamilyTexture *,unsigned int,unsigned int,unsigned int,unsigned int)::{lambda(AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::copyTextureToTexture(AGXG18PFamilyTexture *,unsigned int,unsigned int,AGXG18PFamilyTexture *,unsigned int,unsigned int,unsigned int,unsigned int)::MemRange,AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::copyTextureToTexture(AGXG18PFamilyTexture *,unsigned int,unsigned int,AGXG18PFamilyTexture *,unsigned int,unsigned int,unsigned int,unsigned int)::MemRange)#1} &,AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::copyTextureToTexture(AGXG18PFamilyTexture *,unsigned int,unsigned int,AGXG18PFamilyTexture *,unsigned int,unsigned int,unsigned int,unsigned int)::MemRange*,0>(v12, (v12 + 16), (v12 + 32), (v12 + 48), a2[-1].n128_u64, result).n128_u64[0];
      return result;
    }

LABEL_9:
    if (v13 <= 23)
    {
      v63 = (v12 + 16);
      v65 = v12 == a2 || v63 == a2;
      if (a4)
      {
        if (!v65)
        {
          v66 = 0;
          v67 = v12;
          do
          {
            v69 = v63;
            v70 = v67[2];
            if (v70 < *v67)
            {
              v71 = v67[3];
              v72 = v66;
              do
              {
                result = *(v12 + v72);
                *(v12 + v72 + 16) = result;
                if (!v72)
                {
                  v68 = v12;
                  goto LABEL_121;
                }

                v73 = *(v12 + v72 - 16);
                v72 -= 16;
              }

              while (v70 < v73);
              v68 = (v12 + v72 + 16);
LABEL_121:
              *v68 = v70;
              v68[1] = v71;
            }

            v63 = v69 + 1;
            v66 += 16;
            v67 = v69;
          }

          while (&v69[1] != a2);
        }
      }

      else if (!v65)
      {
        do
        {
          v104 = v63;
          v105 = a1[1].n128_u64[0];
          if (v105 < a1->n128_u64[0])
          {
            v106 = a1[1].n128_u64[1];
            v107 = v104;
            do
            {
              result = v107[-1];
              *v107 = result;
              v108 = v107[-2].n128_u64[0];
              --v107;
            }

            while (v105 < v108);
            v107->n128_u64[0] = v105;
            v107->n128_u64[1] = v106;
          }

          v63 = v104 + 1;
          a1 = v104;
        }

        while (&v104[1] != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v12 != a2)
      {
        v74 = (v13 - 2) >> 1;
        v75 = v74;
        do
        {
          if (v74 >= v75)
          {
            v77 = (2 * (v75 & 0xFFFFFFFFFFFFFFFLL)) | 1;
            v78 = (v12 + 16 * v77);
            v79 = *v78;
            if (2 * (v75 & 0xFFFFFFFFFFFFFFFLL) + 2 < v13)
            {
              v80 = v78[2];
              v81 = v79 >= v80;
              if (v79 <= v80)
              {
                v79 = v78[2];
              }

              if (!v81)
              {
                v78 += 2;
                v77 = 2 * (v75 & 0xFFFFFFFFFFFFFFFLL) + 2;
              }
            }

            v82 = (v12 + 16 * v75);
            v83 = *v82;
            v84 = *v82;
            if (v79 >= *v82)
            {
              do
              {
                v88 = v78;
                *v82 = *v78;
                if (v74 < v77)
                {
                  break;
                }

                v89 = (2 * (v77 & 0x3FFFFFFFFFFFFFFFLL)) | 1;
                v78 = (v12 + 16 * v89);
                v77 = 2 * v77 + 2;
                v87 = *v78;
                if (v77 < v13)
                {
                  v85 = v78[2];
                  v86 = v87 >= v85;
                  if (v87 <= v85)
                  {
                    v87 = v78[2];
                  }

                  if (v86)
                  {
                    v77 = v89;
                  }

                  else
                  {
                    v78 += 2;
                  }
                }

                else
                {
                  v77 = v89;
                }

                v82 = v88;
              }

              while (v87 >= v84);
              *v88 = v83;
            }
          }

          v76 = v75-- <= 0;
        }

        while (!v76);
        do
        {
          v90 = 0;
          v129 = *v12;
          v91 = v12;
          do
          {
            v95 = &v91[v90];
            v94 = v95 + 1;
            v96 = (2 * v90) | 1;
            v90 = 2 * v90 + 2;
            if (v90 < v13)
            {
              v93 = v95[2].n128_u64[0];
              v92 = v95 + 2;
              if (v92[-1].n128_u64[0] >= v93)
              {
                v90 = v96;
              }

              else
              {
                v94 = v92;
              }
            }

            else
            {
              v90 = v96;
            }

            *v91 = *v94;
            v91 = v94;
          }

          while (v90 <= ((v13 - 2) >> 1));
          if (v94 == --a2)
          {
            result = v129;
            *v94 = v129;
          }

          else
          {
            *v94 = *a2;
            result = v129;
            *a2 = v129;
            v97 = (&v94[1] - v12) >> 4;
            v76 = v97 < 2;
            v98 = v97 - 2;
            if (!v76)
            {
              v99 = v98 >> 1;
              v100 = (v12 + 16 * v99);
              v101 = v94->n128_u64[0];
              if (v100->n128_u64[0] < v94->n128_u64[0])
              {
                v102 = v94->n128_u64[1];
                do
                {
                  v103 = v100;
                  result = *v100;
                  *v94 = *v100;
                  if (!v99)
                  {
                    break;
                  }

                  v99 = (v99 - 1) >> 1;
                  v100 = (v12 + 16 * v99);
                  v94 = v103;
                }

                while (v100->n128_u64[0] < v101);
                v103->n128_u64[0] = v101;
                v103->n128_u64[1] = v102;
              }
            }
          }

          v76 = v13-- <= 2;
        }

        while (!v76);
      }

      return result;
    }

    v14 = (v12 + 16 * (v13 >> 1));
    v15 = v14;
    v16 = v9->n128_u64[0];
    if (v13 >= 0x81)
    {
      v17 = v14->n128_u64[0];
      if (v14->n128_u64[0] >= *v12)
      {
        if (v16 < v17)
        {
          v111 = *v14;
          *v14 = *v9;
          *v9 = v111;
          if (v14->n128_u64[0] < *v12)
          {
            v112 = *v12;
            *v12 = *v14;
            *v14 = v112;
          }
        }
      }

      else
      {
        if (v16 < v17)
        {
          v109 = *v12;
          *v12 = *v9;
          goto LABEL_26;
        }

        v115 = *v12;
        *v12 = *v14;
        *v14 = v115;
        if (v9->n128_u64[0] < v14->n128_u64[0])
        {
          v109 = *v14;
          *v14 = *v9;
LABEL_26:
          *v9 = v109;
        }
      }

      v19 = (v12 + 16);
      v20 = v14 - 1;
      v21 = v14[-1].n128_u64[0];
      v22 = v10->n128_u64[0];
      if (v21 >= *(v12 + 16))
      {
        if (v22 < v21)
        {
          v116 = *v20;
          *v20 = *v10;
          *v10 = v116;
          if (v20->n128_u64[0] < v19->n128_u64[0])
          {
            v24 = *v19;
            *v19 = *v20;
            *v20 = v24;
          }
        }
      }

      else
      {
        if (v22 < v21)
        {
          v23 = *v19;
          *v19 = *v10;
          goto LABEL_38;
        }

        v25 = *v19;
        *v19 = *v20;
        *v20 = v25;
        if (v10->n128_u64[0] < v20->n128_u64[0])
        {
          v118 = *v20;
          *v20 = *v10;
          v23 = v118;
LABEL_38:
          *v10 = v23;
        }
      }

      v26 = (v12 + 32);
      v29 = v14[1].n128_u64[0];
      v27 = v14 + 1;
      v28 = v29;
      v30 = v11->n128_u64[0];
      if (v29 >= *(v12 + 32))
      {
        if (v30 < v28)
        {
          v119 = *v27;
          *v27 = *v11;
          *v11 = v119;
          if (v27->n128_u64[0] < v26->n128_u64[0])
          {
            v32 = *v26;
            *v26 = *v27;
            *v27 = v32;
          }
        }
      }

      else
      {
        if (v30 < v28)
        {
          v31 = *v26;
          *v26 = *v11;
          goto LABEL_47;
        }

        v33 = *v26;
        *v26 = *v27;
        *v27 = v33;
        if (v11->n128_u64[0] < v27->n128_u64[0])
        {
          v120 = *v27;
          *v27 = *v11;
          v31 = v120;
LABEL_47:
          *v11 = v31;
        }
      }

      v34 = v15->n128_u64[0];
      v35 = v27->n128_u64[0];
      if (v15->n128_u64[0] >= v20->n128_u64[0])
      {
        if (v35 < v34)
        {
          v122 = *v15;
          *v15 = *v27;
          *v27 = v122;
          if (v15->n128_u64[0] < v20->n128_u64[0])
          {
            v123 = *v20;
            *v20 = *v15;
            *v15 = v123;
          }
        }
      }

      else
      {
        if (v35 < v34)
        {
          v121 = *v20;
          *v20 = *v27;
          goto LABEL_56;
        }

        v124 = *v20;
        *v20 = *v15;
        *v15 = v124;
        if (v27->n128_u64[0] < v15->n128_u64[0])
        {
          v121 = *v15;
          *v15 = *v27;
LABEL_56:
          *v27 = v121;
        }
      }

      v125 = *v12;
      *v12 = *v15;
      result = v125;
      *v15 = v125;
      goto LABEL_58;
    }

    v18 = *v12;
    if (*v12 >= v14->n128_u64[0])
    {
      if (v16 < v18)
      {
        v113 = *v12;
        *v12 = *v9;
        result = v113;
        *v9 = v113;
        if (*v12 < v14->n128_u64[0])
        {
          v114 = *v14;
          *v14 = *v12;
          result = v114;
          *v12 = v114;
        }
      }

      goto LABEL_58;
    }

    if (v16 < v18)
    {
      v110 = *v14;
      *v14 = *v9;
LABEL_35:
      result = v110;
      *v9 = v110;
      goto LABEL_58;
    }

    v117 = *v14;
    *v14 = *v12;
    result = v117;
    *v12 = v117;
    if (v9->n128_u64[0] < *v12)
    {
      v110 = *v12;
      *v12 = *v9;
      goto LABEL_35;
    }

LABEL_58:
    --a3;
    v36 = *v12;
    if (a4)
    {
      v37 = *(v12 + 8);
LABEL_61:
      v38 = v12;
      do
      {
        v39 = v38;
        v40 = *(v38 + 16);
        v38 += 16;
      }

      while (v40 < v36);
      v41 = a2;
      if (v39 == v12)
      {
        v41 = a2;
        do
        {
          if (v38 >= v41)
          {
            break;
          }

          v43 = v41[-1].n128_u64[0];
          --v41;
        }

        while (v43 >= v36);
      }

      else
      {
        do
        {
          v42 = v41[-1].n128_u64[0];
          --v41;
        }

        while (v42 >= v36);
      }

      v12 = v38;
      if (v38 < v41)
      {
        v44 = v41;
        do
        {
          result = *v12;
          *v12 = *v44;
          *v44 = result;
          do
          {
            v45 = *(v12 + 16);
            v12 += 16;
          }

          while (v45 < v36);
          do
          {
            v46 = v44[-1].n128_u64[0];
            --v44;
          }

          while (v46 >= v36);
        }

        while (v12 < v44);
      }

      v47 = (v12 - 16);
      if ((v12 - 16) != a1)
      {
        result = *v47;
        *a1 = *v47;
      }

      *(v12 - 16) = v36;
      *(v12 - 8) = v37;
      if (v38 < v41)
      {
        goto LABEL_80;
      }

      v48 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::copyTextureToTexture(AGXG18PFamilyTexture *,unsigned int,unsigned int,AGXG18PFamilyTexture *,unsigned int,unsigned int,unsigned int,unsigned int)::{lambda(AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::copyTextureToTexture(AGXG18PFamilyTexture *,unsigned int,unsigned int,AGXG18PFamilyTexture *,unsigned int,unsigned int,unsigned int,unsigned int)::MemRange,AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::copyTextureToTexture(AGXG18PFamilyTexture *,unsigned int,unsigned int,AGXG18PFamilyTexture *,unsigned int,unsigned int,unsigned int,unsigned int)::MemRange)#1} &,AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::copyTextureToTexture(AGXG18PFamilyTexture *,unsigned int,unsigned int,AGXG18PFamilyTexture *,unsigned int,unsigned int,unsigned int,unsigned int)::MemRange*>(a1, (v12 - 16), result);
      if (std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::copyTextureToTexture(AGXG18PFamilyTexture *,unsigned int,unsigned int,AGXG18PFamilyTexture *,unsigned int,unsigned int,unsigned int,unsigned int)::{lambda(AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::copyTextureToTexture(AGXG18PFamilyTexture *,unsigned int,unsigned int,AGXG18PFamilyTexture *,unsigned int,unsigned int,unsigned int,unsigned int)::MemRange,AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::copyTextureToTexture(AGXG18PFamilyTexture *,unsigned int,unsigned int,AGXG18PFamilyTexture *,unsigned int,unsigned int,unsigned int,unsigned int)::MemRange)#1} &,AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::copyTextureToTexture(AGXG18PFamilyTexture *,unsigned int,unsigned int,AGXG18PFamilyTexture *,unsigned int,unsigned int,unsigned int,unsigned int)::MemRange*>(v12, a2, v49))
      {
        a2 = (v12 - 16);
        if (!v48)
        {
          goto LABEL_1;
        }

        return result;
      }

      if (!v48)
      {
LABEL_80:
        std::__introsort<std::_ClassicAlgPolicy,AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::copyTextureToTexture(AGXG18PFamilyTexture *,unsigned int,unsigned int,AGXG18PFamilyTexture *,unsigned int,unsigned int,unsigned int,unsigned int)::{lambda(AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::copyTextureToTexture(AGXG18PFamilyTexture *,unsigned int,unsigned int,AGXG18PFamilyTexture *,unsigned int,unsigned int,unsigned int,unsigned int)::MemRange,AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::copyTextureToTexture(AGXG18PFamilyTexture *,unsigned int,unsigned int,AGXG18PFamilyTexture *,unsigned int,unsigned int,unsigned int,unsigned int)::MemRange)#1} &,AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::copyTextureToTexture(AGXG18PFamilyTexture *,unsigned int,unsigned int,AGXG18PFamilyTexture *,unsigned int,unsigned int,unsigned int,unsigned int)::MemRange*,false>(a1, v12 - 16, a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      v37 = *(v12 + 8);
      if (*(v12 - 16) < v36)
      {
        goto LABEL_61;
      }

      if (v36 >= v9->n128_u64[0])
      {
        v51 = v12 + 16;
        do
        {
          v12 = v51;
          if (v51 >= a2)
          {
            break;
          }

          v51 += 16;
        }

        while (v36 >= *v12);
      }

      else
      {
        do
        {
          v50 = *(v12 + 16);
          v12 += 16;
        }

        while (v36 >= v50);
      }

      v52 = a2;
      if (v12 < a2)
      {
        v52 = a2;
        do
        {
          v53 = v52[-1].n128_u64[0];
          --v52;
        }

        while (v36 < v53);
      }

      while (v12 < v52)
      {
        v126 = *v12;
        *v12 = *v52;
        result = v126;
        *v52 = v126;
        do
        {
          v54 = *(v12 + 16);
          v12 += 16;
        }

        while (v36 >= v54);
        do
        {
          v55 = v52[-1].n128_u64[0];
          --v52;
        }

        while (v36 < v55);
      }

      v56 = (v12 - 16);
      if ((v12 - 16) != a1)
      {
        result = *v56;
        *a1 = *v56;
      }

      a4 = 0;
      *(v12 - 16) = v36;
      *(v12 - 8) = v37;
    }
  }

  v57 = (v12 + 16);
  v58 = *(v12 + 16);
  v59 = v9->n128_u64[0];
  if (v58 >= *v12)
  {
    if (v59 >= v58)
    {
      return result;
    }

    result = *v57;
    *v57 = *v9;
    *v9 = result;
    goto LABEL_185;
  }

  if (v59 < v58)
  {
LABEL_107:
    v127 = *v12;
    *v12 = *v9;
    result = v127;
    *v9 = v127;
    return result;
  }

  v131 = *v12;
  *v12 = *v57;
  result = v131;
  *v57 = v131;
  if (v9->n128_u64[0] < *(v12 + 16))
  {
    result = *v57;
    *v57 = *v9;
    *v9 = result;
  }

  return result;
}

__n128 __Block_byref_object_copy__243(__n128 *a1, __n128 *a2)
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

void __Block_byref_object_dispose__244(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void ___ZN3AGX11BlitContextINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesENS1_15CommandEncodingEE20copyTextureToTextureEP20AGXG18PFamilyTexturejjS8_jjjj_block_invoke_2_250(uint64_t a1, unsigned int *a2, unsigned int *a3)
{
  v72 = (*(a1 + 88) & 1) != 0 && (v6 = *(*a2 + 592), (v7 = *(v6 + 584)) != 0) && *(v7 + 1304) > *(v6 + 144) + a2[4];
  v8 = *(a1 + 89);
  v9 = *(*a3 + 592);
  v10 = a3[4];
  if (v8)
  {
    v11 = *(v9 + 144);
    v12 = v11 + v10;
    v13 = *(v9 + 136) >> (v11 + v10);
    if (v13 <= 1)
    {
      v14 = 1;
    }

    else
    {
      v14 = v13;
    }
  }

  else
  {
    v12 = *(v9 + 144) + v10;
    v14 = 1;
  }

  v70 = *(a1 + 80);
  v15 = a3[2];
  v16 = *(v9 + 396);
  if (v16 == 3 || v16 == 0)
  {
    v18 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getPlaneSize<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0>(v9, a3[2], 0);
  }

  else
  {
    v19 = v12 + 1;
    if (v12 + 1 < *(v9 + 140) || v19 == *(v9 + 64))
    {
      v20 = *(*a3 + 592);
      v21 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getLevelOffset<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0>(v9, v19, a3[2]);
    }

    else
    {
      v20 = *(*a3 + 592);
      v21 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getMipmapSize<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0>(v9, a3[2]);
    }

    v18 = v21 - AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getLevelOffset<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0>(v20, v12, v15);
  }

  v22 = 0;
  v73 = v18;
  v71 = v14;
  do
  {
    v36 = *(a1 + 56);
    v37 = *(*(a1 + 64) + 8);
    v38 = *(a1 + 48);
    GPUVirtualAddress = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getGPUVirtualAddress(*(*a2 + 592), a2[3], *(*(*a2 + 592) + 144) + a2[4], v22, a2[2]);
    v40 = (*(v36 + 16))(v36, GPUVirtualAddress, v18);
    v42 = (*(v38 + 16))(v38, v37 + 48, v40, v41);
    if ((v42 | !v72))
    {
      if (!v42)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v45 = *(a1 + 56);
      v46 = *(*(a1 + 64) + 8);
      v47 = *(a1 + 48);
      v48 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getGPUVirtualAddress(*(*(*a2 + 592) + 584) + 648 * a2[2], a2[3], *(*(*a2 + 592) + 144) + a2[4], v22, 0);
      v49 = *(*a2 + 592);
      v50 = *(v49 + 584) + 648 * a2[2];
      v51 = *(v50 + 396);
      if (v51 == 3 || v51 == 0)
      {
        v53 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getPlaneSize<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)1>(v50, 0, 1);
      }

      else
      {
        v54 = *(v49 + 144) + a2[4];
        v55 = v54 + 1;
        if (v54 + 1 < *(v50 + 140) || v55 == *(v50 + 64))
        {
          v56 = *(v49 + 584) + 648 * a2[2];
          v57 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getLevelOffset<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)1>(v50, v55, 0);
        }

        else
        {
          v56 = *(v49 + 584) + 648 * a2[2];
          v57 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getMipmapSize<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)1>(v50, 0);
        }

        v53 = v57 - AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getLevelOffset<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)1>(v56, v54, 0);
      }

      v58 = (*(v45 + 16))(v45, v48, v53);
      v14 = v71;
      v18 = v73;
      if (((*(v47 + 16))(v47, v46 + 48, v58, v59) & 1) == 0)
      {
LABEL_29:
        v43 = *(*a2 + 592);
        v44 = a2[4];
        if (*(a1 + 89) == 1)
        {
          v23 = v43[18].i32[0] + v44;
          v24 = 1;
        }

        else
        {
          v23 = v43[18].i32[0] + v44;
          LODWORD(v24) = v43[17].i32[0] >> (v43[18].i8[0] + v44);
          if (v24 <= 1)
          {
            v24 = 1;
          }

          else
          {
            v24 = v24;
          }
        }

        v25 = *(*a3 + 592);
        v27 = a3[3];
        v26 = a3[4];
        v28 = v25[18].i32[0] + v26;
        v76 = 0uLL;
        v29 = a2[2];
        v30 = a2[3];
        v78 = 0uLL;
        v79 = v22;
        v31 = *(a1 + 32);
        v32 = *(a1 + 40);
        v33 = a3[2];
        v77 = v22;
        v34 = vmin_u32(vmax_u32(vshl_u32(v43[16], vneg_s32(vdup_n_s32(v23))), 0x100000001), vmax_u32(vshl_u32(v25[16], vneg_s32(vdup_n_s32(v28))), 0x100000001));
        *&v35 = v34.u32[0];
        *(&v35 + 1) = v34.u32[1];
        v74 = v35;
        v75 = v24;
        AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::copyTextureToTextureImpl(v70, v31, v29, v30, v44, &v78, v32, v33, v27, v26, &v76, &v74);
        goto LABEL_26;
      }
    }

    v60 = *(*(a1 + 72) + 8);
    *&v78 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getGPUVirtualAddress(*(*a2 + 592), a2[3], *(*(*a2 + 592) + 144) + a2[4], v22, a2[2]);
    *(&v78 + 1) = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getGPUVirtualAddress(*(*a3 + 592), a3[3], *(*(*a3 + 592) + 144) + a3[4], v22, a3[2]);
    v79 = v18;
    std::vector<AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::CopyRange,std::allocator<AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::CopyRange>>::push_back[abi:nn200100](v60 + 48, &v78);
    if (v72)
    {
      v61 = *(*(a1 + 72) + 8);
      *&v78 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getGPUVirtualAddress(*(*(*a2 + 592) + 584) + 648 * a2[2], a2[3], *(*(*a2 + 592) + 144) + a2[4], v22, 0);
      v62 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getGPUVirtualAddress(*(*(*a3 + 592) + 584) + 648 * a3[2], a3[3], *(*(*a3 + 592) + 144) + a3[4], v22, 0);
      v63 = *(*a2 + 592);
      *(&v78 + 1) = v62;
      v64 = *(v63 + 584) + 648 * a2[2];
      if (*(v64 + 396) != 3 && *(v64 + 396))
      {
        v66 = *(v63 + 144) + a2[4];
        v67 = v66 + 1;
        if (v66 + 1 < *(v64 + 140) || v67 == *(v64 + 64))
        {
          v68 = *(v63 + 584) + 648 * a2[2];
          v69 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getLevelOffset<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)1>(v64, v67, 0);
        }

        else
        {
          v68 = *(v63 + 584) + 648 * a2[2];
          v69 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getMipmapSize<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)1>(v64, 0);
        }

        v65 = v69 - AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getLevelOffset<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)1>(v68, v66, 0);
        v18 = v73;
      }

      else
      {
        v65 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getPlaneSize<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)1>(v64, 0, 1);
      }

      v79 = v65;
      std::vector<AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::CopyRange,std::allocator<AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::CopyRange>>::push_back[abi:nn200100](v61 + 48, &v78);
    }

LABEL_26:
    ++v22;
  }

  while (v14 != v22);
}

__n128 std::__introsort<std::_ClassicAlgPolicy,AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::copyTextureToTexture(AGXG18PFamilyTexture *,unsigned int,unsigned int,AGXG18PFamilyTexture *,unsigned int,unsigned int,unsigned int,unsigned int)::{lambda(AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::CopyRange,AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::CopyRange)#1} &,AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::CopyRange*,false>(uint64_t a1, unint64_t a2, uint64_t a3, char a4, __n128 result)
{
LABEL_1:
  v9 = (a2 - 24);
  v10 = (a2 - 48);
  v11 = (a2 - 72);
  v12 = a1;
  while (1)
  {
    a1 = v12;
    v13 = a2 - v12;
    v14 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v12) >> 3);
    if (v14 <= 2)
    {
      if (v14 < 2)
      {
        return result;
      }

      if (v14 == 2)
      {
        if (v9->n128_u64[0] >= *v12)
        {
          return result;
        }

        goto LABEL_106;
      }

      goto LABEL_9;
    }

    if (v14 == 3)
    {
      break;
    }

    if (v14 == 4)
    {
      v91 = (v12 + 24);
      v95 = *(v12 + 24);
      v96 = (v12 + 48);
      v97 = *(v12 + 48);
      if (v95 >= *v12)
      {
        if (v97 < v95)
        {
          v143 = *(v12 + 40);
          result = *v91;
          *v91 = *v96;
          *(v12 + 40) = *(v12 + 64);
          *v96 = result;
          *(v12 + 64) = v143;
          if (*(v12 + 24) < *v12)
          {
            v201 = *(v12 + 16);
            v175 = *v12;
            *v12 = *v91;
            *(v12 + 16) = *(v12 + 40);
            result = v175;
            *v91 = v175;
            *(v12 + 40) = v201;
          }
        }
      }

      else
      {
        if (v97 < v95)
        {
          v199 = *(v12 + 16);
          v171 = *v12;
          *v12 = *v96;
          *(v12 + 16) = *(v12 + 64);
          result = v171;
          *v96 = v171;
          v98 = v199;
          goto LABEL_182;
        }

        v203 = *(v12 + 16);
        v178 = *v12;
        *v12 = *v91;
        *(v12 + 16) = *(v12 + 40);
        result = v178;
        *v91 = v178;
        *(v12 + 40) = v203;
        if (v97 < *(v12 + 24))
        {
          v98 = *(v12 + 40);
          result = *v91;
          *v91 = *v96;
          *(v12 + 40) = *(v12 + 64);
          *v96 = result;
LABEL_182:
          *(v12 + 64) = v98;
        }
      }

      if (v9->n128_u64[0] >= v96->n128_u64[0])
      {
        return result;
      }

      result = *v96;
      v149 = *(v12 + 64);
      v150 = *(a2 - 8);
      *v96 = *v9;
      *(v12 + 64) = v150;
      *(a2 - 8) = v149;
      *v9 = result;
      if (v96->n128_u64[0] >= v91->n128_u64[0])
      {
        return result;
      }

      v151 = *(v12 + 40);
      result = *v91;
      *v91 = *v96;
      *(v12 + 40) = *(v12 + 64);
      *v96 = result;
      *(v12 + 64) = v151;
LABEL_186:
      if (*(v12 + 24) < *v12)
      {
        v204 = *(v12 + 16);
        v179 = *v12;
        *v12 = *v91;
        *(v12 + 16) = v91[1].n128_u64[0];
        result = v179;
        *v91 = v179;
        v91[1].n128_u64[0] = v204;
      }

      return result;
    }

    if (v14 == 5)
    {

      result.n128_u64[0] = std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::copyTextureToTexture(AGXG18PFamilyTexture *,unsigned int,unsigned int,AGXG18PFamilyTexture *,unsigned int,unsigned int,unsigned int,unsigned int)::{lambda(AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::CopyRange,AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::CopyRange)#1} &,AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::CopyRange*,0>(v12, (v12 + 24), (v12 + 48), v12 + 72, a2 - 24, result).n128_u64[0];
      return result;
    }

LABEL_9:
    if (v13 <= 575)
    {
      v99 = v12 + 24;
      v101 = v12 == a2 || v99 == a2;
      if (a4)
      {
        if (!v101)
        {
          v102 = 0;
          v103 = v12;
          do
          {
            v105 = v99;
            v106 = v103[1].n128_u64[1];
            if (v106 < v103->n128_u64[0])
            {
              v172 = v103[2];
              v107 = v102;
              do
              {
                v108 = v12 + v107;
                *(v108 + 24) = *(v12 + v107);
                *(v108 + 40) = *(v12 + v107 + 16);
                if (!v107)
                {
                  v104 = v12;
                  goto LABEL_120;
                }

                v107 -= 24;
              }

              while (v106 < *(v108 - 24));
              v104 = v12 + v107 + 24;
LABEL_120:
              *v104 = v106;
              result = v172;
              *(v104 + 8) = v172;
            }

            v99 = &v105[1].n128_u64[1];
            v102 += 24;
            v103 = v105;
          }

          while (&v105[1].n128_i8[8] != a2);
        }
      }

      else if (!v101)
      {
        do
        {
          v144 = v99;
          v145 = *(a1 + 24);
          if (v145 < *a1)
          {
            v176 = *(a1 + 32);
            do
            {
              *v99 = *(v99 - 24);
              *(v99 + 16) = *(v99 - 8);
              v146 = *(v99 - 48);
              v99 -= 24;
            }

            while (v145 < v146);
            *v99 = v145;
            result = v176;
            *(v99 + 8) = v176;
          }

          v99 = v144 + 24;
          a1 = v144;
        }

        while (v144 + 24 != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v12 != a2)
      {
        v109 = (v14 - 2) >> 1;
        v110 = v109;
        do
        {
          if (v109 >= v110)
          {
            v112 = (2 * (v110 & 0x3FFFFFFFFFFFFFFFLL)) | 1;
            v113 = (v12 + 24 * v112);
            v114 = *v113;
            if (2 * v110 + 2 < v14)
            {
              v115 = v113[3];
              v116 = v114 >= v115;
              if (v114 <= v115)
              {
                v114 = v113[3];
              }

              if (!v116)
              {
                v113 += 3;
                v112 = 2 * v110 + 2;
              }
            }

            v117 = (v12 + 24 * v110);
            v118 = *v117;
            if (v114 >= *v117)
            {
              v173 = *(v117 + 1);
              while (1)
              {
                v122 = v117;
                v117 = v113;
                v123 = *v113;
                v122[2] = v113[2];
                *v122 = v123;
                if (v109 < v112)
                {
                  break;
                }

                v124 = (2 * v112) | 1;
                v113 = (v12 + 24 * v124);
                v112 = 2 * v112 + 2;
                v121 = *v113;
                if (v112 < v14)
                {
                  v119 = v113[3];
                  v120 = v121 >= v119;
                  if (v121 <= v119)
                  {
                    v121 = v113[3];
                  }

                  if (v120)
                  {
                    v112 = v124;
                  }

                  else
                  {
                    v113 += 3;
                  }

                  if (v121 < v118)
                  {
                    break;
                  }
                }

                else
                {
                  v112 = v124;
                  if (v121 < v118)
                  {
                    break;
                  }
                }
              }

              *v117 = v118;
              *(v117 + 1) = v173;
            }
          }

          v111 = v110-- <= 0;
        }

        while (!v111);
        v125 = 0xAAAAAAAAAAAAAAABLL * (v13 >> 3);
        do
        {
          v126 = 0;
          v200 = *(v12 + 16);
          v174 = *v12;
          v127 = v12;
          do
          {
            v132 = v127 + 24 * v126;
            v130 = v132 + 24;
            v133 = (2 * v126) | 1;
            v126 = 2 * v126 + 2;
            if (v126 < v125)
            {
              v129 = *(v132 + 48);
              v128 = v132 + 48;
              if (*(v128 - 24) >= v129)
              {
                v126 = v133;
              }

              else
              {
                v130 = v128;
              }
            }

            else
            {
              v126 = v133;
            }

            v131 = *v130;
            *(v127 + 16) = *(v130 + 16);
            *v127 = v131;
            v127 = v130;
          }

          while (v126 <= ((v125 - 2) >> 1));
          a2 -= 24;
          if (v130 == a2)
          {
            result = v174;
            *(v130 + 16) = v200;
            *v130 = v174;
          }

          else
          {
            v134 = *a2;
            *(v130 + 16) = *(a2 + 16);
            *v130 = v134;
            result = v174;
            *(a2 + 16) = v200;
            *a2 = v174;
            v135 = v130 - v12 + 24;
            if (v135 >= 25)
            {
              v136 = (-2 - 0x5555555555555555 * (v135 >> 3)) >> 1;
              v137 = v12 + 24 * v136;
              v138 = *v130;
              if (*v137 < *v130)
              {
                v207 = *(v130 + 8);
                do
                {
                  v139 = v130;
                  v130 = v137;
                  v140 = *v137;
                  *(v139 + 16) = *(v137 + 16);
                  *v139 = v140;
                  if (!v136)
                  {
                    break;
                  }

                  v136 = (v136 - 1) >> 1;
                  v137 = v12 + 24 * v136;
                }

                while (*v137 < v138);
                *v130 = v138;
                result = v207;
                *(v130 + 8) = v207;
              }
            }
          }

          v111 = v125-- <= 2;
        }

        while (!v111);
      }

      return result;
    }

    v15 = v14 >> 1;
    v16 = (v12 + 24 * (v14 >> 1));
    v17 = v9->n128_u64[0];
    if (v13 >= 0xC01)
    {
      v18 = *v16;
      if (*v16 >= *v12)
      {
        if (v17 < v18)
        {
          v182 = v16[2];
          v154 = *v16;
          v22 = *v9;
          v16[2] = *(a2 - 8);
          *v16 = v22;
          *(a2 - 8) = v182;
          *v9 = v154;
          if (*v16 < *v12)
          {
            v183 = *(v12 + 16);
            v155 = *v12;
            v23 = *v16;
            *(v12 + 16) = v16[2];
            *v12 = v23;
            v16[2] = v183;
            *v16 = v155;
          }
        }
      }

      else
      {
        if (v17 < v18)
        {
          v180 = *(v12 + 16);
          v152 = *v12;
          v19 = *v9;
          *(v12 + 16) = *(a2 - 8);
          *v12 = v19;
          goto LABEL_26;
        }

        v186 = *(v12 + 16);
        v158 = *v12;
        v26 = *v16;
        *(v12 + 16) = v16[2];
        *v12 = v26;
        v16[2] = v186;
        *v16 = v158;
        if (v9->n128_u64[0] < *v16)
        {
          v180 = v16[2];
          v152 = *v16;
          v27 = *v9;
          v16[2] = *(a2 - 8);
          *v16 = v27;
LABEL_26:
          *(a2 - 8) = v180;
          *v9 = v152;
        }
      }

      v28 = (v12 + 24);
      v29 = v12 + 24 * v15;
      v32 = *(v29 - 24);
      v30 = v29 - 24;
      v31 = v32;
      v33 = *v10;
      if (v32 >= *(v12 + 24))
      {
        if (v33 < v31)
        {
          v187 = *(v30 + 16);
          v159 = *v30;
          v37 = *v10;
          *(v30 + 16) = *(a2 - 32);
          *v30 = v37;
          *(a2 - 32) = v187;
          *v10 = v159;
          if (*v30 < *v28)
          {
            v38 = *v28;
            v39 = *(v12 + 40);
            v40 = *(v30 + 16);
            *v28 = *v30;
            *(v12 + 40) = v40;
            *(v30 + 16) = v39;
            *v30 = v38;
          }
        }
      }

      else
      {
        if (v33 < v31)
        {
          v34 = *v28;
          v35 = *(v12 + 40);
          v36 = *(a2 - 32);
          *v28 = *v10;
          *(v12 + 40) = v36;
          *(a2 - 32) = v35;
          goto LABEL_38;
        }

        v43 = *v28;
        v44 = *(v12 + 40);
        v45 = *(v30 + 16);
        *v28 = *v30;
        *(v12 + 40) = v45;
        *(v30 + 16) = v44;
        *v30 = v43;
        if (*v10 < *v30)
        {
          v189 = *(v30 + 16);
          v161 = *v30;
          v46 = *v10;
          *(v30 + 16) = *(a2 - 32);
          *v30 = v46;
          v34 = v161;
          *(a2 - 32) = v189;
LABEL_38:
          *v10 = v34;
        }
      }

      v47 = (v12 + 48);
      v48 = v12 + 24 * v15;
      v51 = *(v48 + 24);
      v49 = v48 + 24;
      v50 = v51;
      v52 = *v11;
      if (v51 >= *(v12 + 48))
      {
        if (v52 < v50)
        {
          v190 = *(v49 + 16);
          v162 = *v49;
          v56 = *v11;
          *(v49 + 16) = *(a2 - 56);
          *v49 = v56;
          *(a2 - 56) = v190;
          *v11 = v162;
          if (*v49 < *v47)
          {
            v57 = *v47;
            v58 = *(v12 + 64);
            v59 = *(v49 + 16);
            *v47 = *v49;
            *(v12 + 64) = v59;
            *(v49 + 16) = v58;
            *v49 = v57;
          }
        }
      }

      else
      {
        if (v52 < v50)
        {
          v53 = *v47;
          v54 = *(v12 + 64);
          v55 = *(a2 - 56);
          *v47 = *v11;
          *(v12 + 64) = v55;
          *(a2 - 56) = v54;
          goto LABEL_47;
        }

        v60 = *v47;
        v61 = *(v12 + 64);
        v62 = *(v49 + 16);
        *v47 = *v49;
        *(v12 + 64) = v62;
        *(v49 + 16) = v61;
        *v49 = v60;
        if (*v11 < *v49)
        {
          v191 = *(v49 + 16);
          v163 = *v49;
          v63 = *v11;
          *(v49 + 16) = *(a2 - 56);
          *v49 = v63;
          v53 = v163;
          *(a2 - 56) = v191;
LABEL_47:
          *v11 = v53;
        }
      }

      v64 = *v16;
      v65 = *v49;
      if (*v16 >= *v30)
      {
        if (v65 < v64)
        {
          v193 = v16[2];
          v165 = *v16;
          *v16 = *v49;
          v16[2] = *(v49 + 16);
          *(v49 + 16) = v193;
          *v49 = v165;
          if (*v16 < *v30)
          {
            v194 = *(v30 + 16);
            v166 = *v30;
            *v30 = *v16;
            *(v30 + 16) = v16[2];
            v16[2] = v194;
            *v16 = v166;
          }
        }
      }

      else
      {
        if (v65 < v64)
        {
          v192 = *(v30 + 16);
          v164 = *v30;
          *v30 = *v49;
          *(v30 + 16) = *(v49 + 16);
          goto LABEL_56;
        }

        v195 = *(v30 + 16);
        v167 = *v30;
        *v30 = *v16;
        *(v30 + 16) = v16[2];
        v16[2] = v195;
        *v16 = v167;
        if (*v49 < *v16)
        {
          v192 = v16[2];
          v164 = *v16;
          *v16 = *v49;
          v16[2] = *(v49 + 16);
LABEL_56:
          *(v49 + 16) = v192;
          *v49 = v164;
        }
      }

      v196 = *(v12 + 16);
      v168 = *v12;
      v66 = *v16;
      *(v12 + 16) = v16[2];
      *v12 = v66;
      v16[2] = v196;
      *v16 = v168;
      goto LABEL_58;
    }

    v20 = *v12;
    if (*v12 >= *v16)
    {
      if (v17 < v20)
      {
        v184 = *(v12 + 16);
        v156 = *v12;
        v24 = *v9;
        *(v12 + 16) = *(a2 - 8);
        *v12 = v24;
        *(a2 - 8) = v184;
        *v9 = v156;
        if (*v12 < *v16)
        {
          v185 = v16[2];
          v157 = *v16;
          v25 = *v12;
          v16[2] = *(v12 + 16);
          *v16 = v25;
          *(v12 + 16) = v185;
          *v12 = v157;
        }
      }

      goto LABEL_58;
    }

    if (v17 >= v20)
    {
      v188 = v16[2];
      v160 = *v16;
      v41 = *v12;
      v16[2] = *(v12 + 16);
      *v16 = v41;
      *(v12 + 16) = v188;
      *v12 = v160;
      if (v9->n128_u64[0] >= *v12)
      {
        goto LABEL_58;
      }

      v181 = *(v12 + 16);
      v153 = *v12;
      v42 = *v9;
      *(v12 + 16) = *(a2 - 8);
      *v12 = v42;
    }

    else
    {
      v181 = v16[2];
      v153 = *v16;
      v21 = *v9;
      v16[2] = *(a2 - 8);
      *v16 = v21;
    }

    *(a2 - 8) = v181;
    *v9 = v153;
LABEL_58:
    --a3;
    v67 = *v12;
    if ((a4 & 1) != 0 || *(v12 - 24) < v67)
    {
      v205 = *(v12 + 8);
      v68 = v12;
      do
      {
        v69 = v68;
        v70 = *(v68 + 24);
        v68 += 24;
      }

      while (v70 < v67);
      v71 = a2;
      if (v69 == v12)
      {
        v71 = a2;
        do
        {
          if (v68 >= v71)
          {
            break;
          }

          v73 = *(v71 - 24);
          v71 -= 24;
        }

        while (v73 >= v67);
      }

      else
      {
        do
        {
          v72 = *(v71 - 24);
          v71 -= 24;
        }

        while (v72 >= v67);
      }

      v12 = v68;
      if (v68 < v71)
      {
        v74 = v71;
        do
        {
          v75 = *v12;
          v76 = *(v12 + 16);
          v77 = *(v74 + 16);
          *v12 = *v74;
          *(v12 + 16) = v77;
          *(v74 + 16) = v76;
          *v74 = v75;
          do
          {
            v78 = *(v12 + 24);
            v12 += 24;
          }

          while (v78 < v67);
          do
          {
            v79 = *(v74 - 24);
            v74 -= 24;
          }

          while (v79 >= v67);
        }

        while (v12 < v74);
      }

      if (v12 - 24 != a1)
      {
        v80 = *(v12 - 24);
        *(a1 + 16) = *(v12 - 8);
        *a1 = v80;
      }

      *(v12 - 24) = v67;
      *(v12 - 16) = v205;
      if (v68 < v71)
      {
        goto LABEL_79;
      }

      v81 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::copyTextureToTexture(AGXG18PFamilyTexture *,unsigned int,unsigned int,AGXG18PFamilyTexture *,unsigned int,unsigned int,unsigned int,unsigned int)::{lambda(AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::CopyRange,AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::CopyRange)#1} &,AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::CopyRange*>(a1, (v12 - 24), v205);
      if (std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::copyTextureToTexture(AGXG18PFamilyTexture *,unsigned int,unsigned int,AGXG18PFamilyTexture *,unsigned int,unsigned int,unsigned int,unsigned int)::{lambda(AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::CopyRange,AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::CopyRange)#1} &,AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::CopyRange*>(v12, a2, v82))
      {
        a2 = v12 - 24;
        if (!v81)
        {
          goto LABEL_1;
        }

        return result;
      }

      if (!v81)
      {
LABEL_79:
        std::__introsort<std::_ClassicAlgPolicy,AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::copyTextureToTexture(AGXG18PFamilyTexture *,unsigned int,unsigned int,AGXG18PFamilyTexture *,unsigned int,unsigned int,unsigned int,unsigned int)::{lambda(AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::CopyRange,AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::CopyRange)#1} &,AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::CopyRange*,false>(a1, v12 - 24, a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      v206 = *(v12 + 8);
      if (v67 >= v9->n128_u64[0])
      {
        v84 = v12 + 24;
        do
        {
          v12 = v84;
          if (v84 >= a2)
          {
            break;
          }

          v84 += 24;
        }

        while (v67 >= *v12);
      }

      else
      {
        do
        {
          v83 = *(v12 + 24);
          v12 += 24;
        }

        while (v67 >= v83);
      }

      v85 = a2;
      if (v12 < a2)
      {
        v85 = a2;
        do
        {
          v86 = *(v85 - 24);
          v85 -= 24;
        }

        while (v67 < v86);
      }

      while (v12 < v85)
      {
        v197 = *(v12 + 16);
        v169 = *v12;
        v87 = *v85;
        *(v12 + 16) = *(v85 + 16);
        *v12 = v87;
        *(v85 + 16) = v197;
        *v85 = v169;
        do
        {
          v88 = *(v12 + 24);
          v12 += 24;
        }

        while (v67 >= v88);
        do
        {
          v89 = *(v85 - 24);
          v85 -= 24;
        }

        while (v67 < v89);
      }

      if (v12 - 24 != a1)
      {
        v90 = *(v12 - 24);
        *(a1 + 16) = *(v12 - 8);
        *a1 = v90;
      }

      a4 = 0;
      *(v12 - 24) = v67;
      result = v206;
      *(v12 - 16) = v206;
    }
  }

  v91 = (v12 + 24);
  v92 = *(v12 + 24);
  v93 = v9->n128_u64[0];
  if (v92 >= *v12)
  {
    if (v93 >= v92)
    {
      return result;
    }

    result = *v91;
    v141 = *(v12 + 40);
    v142 = *(a2 - 8);
    *v91 = *v9;
    *(v12 + 40) = v142;
    *(a2 - 8) = v141;
    *v9 = result;
    goto LABEL_186;
  }

  if (v93 < v92)
  {
LABEL_106:
    v198 = *(v12 + 16);
    v170 = *v12;
    v94 = *v9;
    *(v12 + 16) = *(a2 - 8);
    *v12 = v94;
    result = v170;
    *(a2 - 8) = v198;
    *v9 = v170;
    return result;
  }

  v202 = *(v12 + 16);
  v177 = *v12;
  *v12 = *v91;
  *(v12 + 16) = *(v12 + 40);
  result = v177;
  *v91 = v177;
  *(v12 + 40) = v202;
  if (v9->n128_u64[0] < *(v12 + 24))
  {
    result = *v91;
    v147 = *(v12 + 40);
    v148 = *(a2 - 8);
    *v91 = *v9;
    *(v12 + 40) = v148;
    *(a2 - 8) = v147;
    *v9 = result;
  }

  return result;
}

void AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::copyBufferToBufferImpl(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t *a5, unint64_t a6)
{
  v6 = a5 + a6;
  v7 = a6 + a3;
  if (a5 + a6 <= a3 || v7 <= a5)
  {
    v9 = (a1 + 1);

    AGX::MSLBlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::blitCDMBuffer(v9, a2, a3, a4, a5, a6, 0, 0);
    return;
  }

  v10 = a3 - a5;
  if (a3 == a5)
  {
    return;
  }

  if (v10 >= 0)
  {
    v11 = a3 - a5;
  }

  else
  {
    v11 = a5 - a3;
  }

  if (v11 >= 0x8000)
  {
    v12 = v11 & 0x7FFFFFFFFFFFFFF0;
  }

  else
  {
    v12 = 0x8000;
  }

  v114 = v11;
  v123 = a5;
  if (!(v11 >> 15))
  {
    v13 = a2;
    v14 = a1;
    v15 = a1[8];
    v16 = a3;
    if (v15)
    {
LABEL_17:
      if ((-v16 & 0xFuLL) >= a6)
      {
        v17 = a6;
      }

      else
      {
        v17 = -v16 & 0xFLL;
      }

      v18 = (a6 - v17) & 0xFLL;
      goto LABEL_28;
    }

    v105 = *a1;
    v106 = *(*a1 + 648);
    if (!v106)
    {
      v109 = a6;
      if (!AGX::DataBufferAllocator<44ul>::growNoInline(v105 + 3, 18, 0))
      {
        goto LABEL_117;
      }

      v106 = v105[81];
      v14 = a1;
      a5 = v123;
      v16 = a3;
      a6 = v109;
    }

    v107 = v106 + 0x8000;
    if (v107 <= v105[80])
    {
      goto LABEL_111;
    }

    v110 = a6;
    v111 = AGX::DataBufferAllocator<44ul>::growNoInline(v105 + 3, 18, 0);
    a6 = v110;
    a5 = v123;
    if (!v111)
    {
      goto LABEL_112;
    }

    v107 = v105[81] + 0x8000;
    if (v107 <= v105[80])
    {
LABEL_111:
      v105[82] = v107;
LABEL_112:
      v108 = *v14;
      *(v108 + 648) = *(*v14 + 648) + 0x8000;
      v15 = *(*(v108 + 48) + 1184);
      v14[8] = v15;
      v13 = a2;
      goto LABEL_17;
    }

LABEL_117:
    abort();
  }

  LODWORD(v10) = 1 << __clz(__rbit64(v10));
  if (v10 >= 0x10)
  {
    v10 = 16;
  }

  else
  {
    v10 = v10;
  }

  v16 = a3;
  if (((-a3 - v10) | -v10) + v10 >= a6)
  {
    v17 = a6;
  }

  else
  {
    v17 = ((-a3 - v10) | -v10) + v10;
  }

  v18 = (a6 - v17) & (v10 - 1);
  v13 = a2;
  v14 = a1;
  v15 = a1[8];
LABEL_28:
  v19 = v7 - v18;
  v20 = &v6[-v18];
  v21 = v17 + v16;
  v130 = (a5 + v17);
  v126 = v18;
  v128 = a6 - v17 - v18;
  v22 = v12 - 1;
  v23 = v15;
  v24 = v15 + 72;
  v119 = v15 + 72;
  v115 = v12 - 1;
  if (v16 >= a5)
  {
    v112 = v17 + v16;
    v121 = v17;
    v35 = v18 + v22;
    v36 = a4;
    if (v35 >= v12)
    {
      v37 = v35 / v12;
      if (v114 >= 0x8000)
      {
        v62 = 0;
        v36 = a4;
        do
        {
          v63 = (v37 + ~v62) * v12;
          if (v126 - v63 >= v12)
          {
            v64 = v12;
          }

          else
          {
            v64 = v126 - v63;
          }

          v65 = v36;
          AGX::MSLBlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::blitCDMBuffer((a1 + 1), v13, v63 + v19, v36, (v20 + v63), v64, 0, 0);
          v36 = v65;
          ++v62;
        }

        while (v62 < v37);
      }

      else
      {
        v38 = 0;
        v36 = a4;
        v117 = v35 / v12;
        v39 = v15;
        do
        {
          v40 = (v37 + ~v38) * v12;
          if (v18 - v40 >= v12)
          {
            v41 = v12;
          }

          else
          {
            v41 = v18 - v40;
          }

          v42 = *(v24 + *MEMORY[0x29EDC5638]);
          v43 = (v20 + v40);
          v44 = v20;
          v45 = v19;
          v46 = v36;
          AGX::MSLBlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::blitCDMBuffer((a1 + 1), v39, v42, v36, v43, v41, 0, 0);
          v47 = v40 + v45;
          v13 = a2;
          AGX::MSLBlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::blitCDMBuffer((a1 + 1), a2, v47, v39, v42, v41, 0, 0);
          v24 = v119;
          v36 = v46;
          v19 = v45;
          v20 = v44;
          v37 = v117;
          v18 = v126;
          ++v38;
        }

        while (v38 < v117);
      }
    }

    v66 = v128;
    if (v128 + v115 >= v12)
    {
      v67 = (v128 + v115) / v12;
      if (v114 >= 0x8000)
      {
        v85 = 0;
        v36 = a4;
        do
        {
          v86 = (v67 + ~v85) * v12;
          if (v128 - v86 >= v12)
          {
            v87 = v12;
          }

          else
          {
            v87 = v128 - v86;
          }

          v88 = v36;
          AGX::MSLBlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::blitCDMBuffer((a1 + 1), v13, v86 + v112, v36, (v130 + v86), v87, 0, 0);
          v36 = v88;
          ++v85;
        }

        while (v85 < v67);
      }

      else
      {
        v68 = 0;
        v127 = a1[8];
        v69 = MEMORY[0x29EDC5638];
        v36 = a4;
        do
        {
          v70 = (v67 + ~v68) * v12;
          if (v66 - v70 >= v12)
          {
            v71 = v12;
          }

          else
          {
            v71 = v66 - v70;
          }

          v72 = *(v127 + 72 + *v69);
          v73 = v36;
          AGX::MSLBlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::blitCDMBuffer((a1 + 1), v127, v72, v36, (v130 + v70), v71, 0, 0);
          v67 = (v128 + v115) / v12;
          AGX::MSLBlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::blitCDMBuffer((a1 + 1), a2, v70 + v112, v127, v72, v71, 0, 0);
          v36 = v73;
          v66 = v128;
          ++v68;
        }

        while (v68 < v67);
      }
    }

    v89 = v121;
    if (v121 + v115 >= v12)
    {
      v90 = v36;
      v91 = (v121 + v115) / v12;
      if (v114 >= 0x8000)
      {
        v101 = 0;
        do
        {
          v102 = (v91 + ~v101) * v12;
          v103 = v89 - v102;
          if (v103 >= v12)
          {
            v104 = v12;
          }

          else
          {
            v104 = v103;
          }

          AGX::MSLBlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::blitCDMBuffer((a1 + 1), a2, v102 + a3, v90, (v123 + v102), v104, 0, 0);
          v89 = v121;
          ++v101;
        }

        while (v101 < v91);
      }

      else
      {
        v92 = 0;
        v93 = a1[8];
        do
        {
          v94 = (v91 + ~v92) * v12;
          if (v89 - v94 >= v12)
          {
            v95 = v12;
          }

          else
          {
            v95 = v89 - v94;
          }

          v96 = *(v93 + 72 + *MEMORY[0x29EDC5638]);
          AGX::MSLBlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::blitCDMBuffer((a1 + 1), v93, v96, v90, (v123 + v94), v95, 0, 0);
          AGX::MSLBlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::blitCDMBuffer((a1 + 1), a2, v94 + a3, v93, v96, v95, 0, 0);
          v89 = v121;
          ++v92;
        }

        while (v92 < v91);
      }
    }
  }

  else
  {
    v116 = v7 - v18;
    v25 = v17 + v22;
    v26 = a4;
    v27 = v14;
    if (v25 >= v12)
    {
      v124 = v25 / v12;
      if (v114 >= 0x8000)
      {
        v48 = 0;
        v26 = a4;
        v49 = a3;
        v50 = v13;
        do
        {
          v51 = v17 - v12;
          if (v17 >= v12)
          {
            v52 = v12;
          }

          else
          {
            v52 = v17;
          }

          v53 = v26;
          v54 = a5;
          AGX::MSLBlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::blitCDMBuffer((v27 + 1), v50, v49, v26, a5, v52, 0, 0);
          v26 = v53;
          ++v48;
          a5 = (v54 + v12);
          v49 += v12;
          v17 = v51;
        }

        while (v48 < v124);
      }

      else
      {
        v28 = 0;
        v26 = a4;
        v29 = a3;
        v30 = v23;
        do
        {
          v120 = v17 - v12;
          if (v17 >= v12)
          {
            v31 = v12;
          }

          else
          {
            v31 = v17;
          }

          v32 = *(v24 + *MEMORY[0x29EDC5638]);
          v33 = v26;
          v34 = a5;
          AGX::MSLBlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::blitCDMBuffer((a1 + 1), v30, v32, v26, a5, v31, 0, 0);
          AGX::MSLBlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::blitCDMBuffer((a1 + 1), a2, v29, v30, v32, v31, 0, 0);
          v24 = v119;
          v17 = v120;
          v26 = v33;
          ++v28;
          a5 = (v34 + v12);
          v29 += v12;
          v27 = a1;
        }

        while (v28 < v124);
      }
    }

    v55 = v128;
    v56 = v27;
    v57 = v116;
    if (v128 + v115 >= v12)
    {
      v125 = (v128 + v115) / v12;
      if (v114 >= 0x8000)
      {
        v74 = 0;
        v26 = a4;
        do
        {
          v75 = v55 - v12;
          if (v55 >= v12)
          {
            v76 = v12;
          }

          else
          {
            v76 = v55;
          }

          v77 = v26;
          AGX::MSLBlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::blitCDMBuffer((v56 + 1), a2, v21, v26, v130, v76, 0, 0);
          v26 = v77;
          ++v74;
          v130 = (v130 + v12);
          v21 += v12;
          v55 = v75;
        }

        while (v74 < v125);
      }

      else
      {
        v58 = 0;
        v122 = v56[8];
        v26 = a4;
        do
        {
          v129 = v55 - v12;
          if (v55 >= v12)
          {
            v59 = v12;
          }

          else
          {
            v59 = v55;
          }

          v60 = *(v122 + 72 + *MEMORY[0x29EDC5638]);
          v61 = v26;
          AGX::MSLBlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::blitCDMBuffer((a1 + 1), v122, v60, v26, v130, v59, 0, 0);
          AGX::MSLBlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::blitCDMBuffer((a1 + 1), a2, v21, v122, v60, v59, 0, 0);
          v26 = v61;
          ++v58;
          v130 = (v130 + v12);
          v21 += v12;
          v55 = v129;
        }

        while (v58 < v125);
      }
    }

    v78 = v126;
    if (v126 + v115 >= v12)
    {
      v79 = (v126 + v115) / v12;
      if (v114 >= 0x8000)
      {
        v97 = v26;
        v98 = 0;
        do
        {
          v99 = v78 - v12;
          if (v78 >= v12)
          {
            v100 = v12;
          }

          else
          {
            v100 = v78;
          }

          AGX::MSLBlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::blitCDMBuffer((a1 + 1), a2, v57, v97, v20, v100, 0, 0);
          ++v98;
          v20 = (v20 + v12);
          v57 += v12;
          v78 = v99;
        }

        while (v98 < v79);
      }

      else
      {
        v80 = 0;
        v81 = a1[8];
        do
        {
          v82 = v78 - v12;
          if (v78 >= v12)
          {
            v83 = v12;
          }

          else
          {
            v83 = v78;
          }

          v84 = *(v81 + 72 + *MEMORY[0x29EDC5638]);
          AGX::MSLBlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::blitCDMBuffer((a1 + 1), v81, v84, a4, v20, v83, 0, 0);
          AGX::MSLBlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::blitCDMBuffer((a1 + 1), a2, v57, v81, v84, v83, 0, 0);
          ++v80;
          v20 = (v20 + v12);
          v57 += v12;
          v78 = v82;
        }

        while (v80 < v79);
      }
    }
  }
}

__n128 std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::copyTextureToTexture(AGXG18PFamilyTexture *,unsigned int,unsigned int,AGXG18PFamilyTexture *,unsigned int,unsigned int,unsigned int,unsigned int)::{lambda(AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::CopyRange,AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::CopyRange)#1} &,AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::CopyRange*,0>(__n128 *a1, __n128 *a2, unint64_t *a3, uint64_t a4, uint64_t a5, __n128 result)
{
  v6 = a2->n128_u64[0];
  v7 = *a3;
  if (a2->n128_u64[0] >= a1->n128_u64[0])
  {
    if (v7 < v6)
    {
      v10 = a2[1].n128_i64[0];
      result = *a2;
      v11 = a3[2];
      *a2 = *a3;
      a2[1].n128_u64[0] = v11;
      *a3 = result;
      a3[2] = v10;
      if (a2->n128_u64[0] < a1->n128_u64[0])
      {
        v12 = a1[1].n128_u64[0];
        result = *a1;
        v13 = a2[1].n128_u64[0];
        *a1 = *a2;
        a1[1].n128_u64[0] = v13;
        *a2 = result;
        a2[1].n128_u64[0] = v12;
      }
    }
  }

  else
  {
    if (v7 < v6)
    {
      v8 = a1[1].n128_u64[0];
      result = *a1;
      v9 = a3[2];
      *a1 = *a3;
      a1[1].n128_u64[0] = v9;
LABEL_9:
      *a3 = result;
      a3[2] = v8;
      goto LABEL_10;
    }

    v14 = a1[1].n128_u64[0];
    result = *a1;
    v15 = a2[1].n128_u64[0];
    *a1 = *a2;
    a1[1].n128_u64[0] = v15;
    *a2 = result;
    a2[1].n128_u64[0] = v14;
    if (*a3 < a2->n128_u64[0])
    {
      v8 = a2[1].n128_u64[0];
      result = *a2;
      v16 = a3[2];
      *a2 = *a3;
      a2[1].n128_u64[0] = v16;
      goto LABEL_9;
    }
  }

LABEL_10:
  if (*a4 < *a3)
  {
    v17 = a3[2];
    result = *a3;
    v18 = *(a4 + 16);
    *a3 = *a4;
    a3[2] = v18;
    *a4 = result;
    *(a4 + 16) = v17;
    if (*a3 < a2->n128_u64[0])
    {
      v19 = a2[1].n128_i64[0];
      result = *a2;
      v20 = a3[2];
      *a2 = *a3;
      a2[1].n128_u64[0] = v20;
      *a3 = result;
      a3[2] = v19;
      if (a2->n128_u64[0] < a1->n128_u64[0])
      {
        v21 = a1[1].n128_u64[0];
        result = *a1;
        v22 = a2[1].n128_u64[0];
        *a1 = *a2;
        a1[1].n128_u64[0] = v22;
        *a2 = result;
        a2[1].n128_u64[0] = v21;
      }
    }
  }

  if (*a5 < *a4)
  {
    v23 = *(a4 + 16);
    result = *a4;
    v24 = *(a5 + 16);
    *a4 = *a5;
    *(a4 + 16) = v24;
    *a5 = result;
    *(a5 + 16) = v23;
    if (*a4 < *a3)
    {
      v25 = a3[2];
      result = *a3;
      v26 = *(a4 + 16);
      *a3 = *a4;
      a3[2] = v26;
      *a4 = result;
      *(a4 + 16) = v25;
      if (*a3 < a2->n128_u64[0])
      {
        v27 = a2[1].n128_i64[0];
        result = *a2;
        v28 = a3[2];
        *a2 = *a3;
        a2[1].n128_u64[0] = v28;
        *a3 = result;
        a3[2] = v27;
        if (a2->n128_u64[0] < a1->n128_u64[0])
        {
          v29 = a1[1].n128_u64[0];
          result = *a1;
          v30 = a2[1].n128_u64[0];
          *a1 = *a2;
          a1[1].n128_u64[0] = v30;
          *a2 = result;
          a2[1].n128_u64[0] = v29;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::copyTextureToTexture(AGXG18PFamilyTexture *,unsigned int,unsigned int,AGXG18PFamilyTexture *,unsigned int,unsigned int,unsigned int,unsigned int)::{lambda(AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::CopyRange,AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::CopyRange)#1} &,AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::CopyRange*>(uint64_t a1, _OWORD *a2, __n128 a3)
{
  v3 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v6 = (a1 + 24);
      v7 = *(a1 + 24);
      v9 = *(a2 - 3);
      v4 = (a2 - 24);
      v8 = v9;
      if (v7 < *a1)
      {
        if (v8 >= v7)
        {
          v38 = *(a1 + 16);
          v39 = *a1;
          *a1 = *v6;
          *(a1 + 16) = *(a1 + 40);
          *v6 = v39;
          *(a1 + 40) = v38;
          if (v4->n128_u64[0] < *(a1 + 24))
          {
            v40 = *(a1 + 40);
            v41 = *v6;
            v42 = v4[1].n128_i64[0];
            *v6 = *v4;
            *(a1 + 40) = v42;
            *v4 = v41;
            v4[1].n128_u64[0] = v40;
          }

          return 1;
        }

LABEL_12:
        v10 = *(a1 + 16);
        v11 = *a1;
        v12 = v4[1].n128_i64[0];
        *a1 = *v4;
        *(a1 + 16) = v12;
        *v4 = v11;
        v4[1].n128_u64[0] = v10;
        return 1;
      }

      if (v8 >= v7)
      {
        return 1;
      }

      v27 = *(a1 + 40);
      v28 = *v6;
      v29 = v4[1].n128_i64[0];
      *v6 = *v4;
      *(a1 + 40) = v29;
      *v4 = v28;
      v4[1].n128_u64[0] = v27;
LABEL_47:
      if (*(a1 + 24) < *a1)
      {
        v61 = *(a1 + 16);
        v62 = *a1;
        *a1 = *v6;
        *(a1 + 16) = v6[1].n128_u64[0];
        *v6 = v62;
        v6[1].n128_u64[0] = v61;
      }

      return 1;
    }

    if (v3 != 4)
    {
      if (v3 != 5)
      {
        goto LABEL_13;
      }

      std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::copyTextureToTexture(AGXG18PFamilyTexture *,unsigned int,unsigned int,AGXG18PFamilyTexture *,unsigned int,unsigned int,unsigned int,unsigned int)::{lambda(AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::CopyRange,AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::CopyRange)#1} &,AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::CopyRange*,0>(a1, (a1 + 24), (a1 + 48), a1 + 72, a2 - 24, a3);
      return 1;
    }

    v6 = (a1 + 24);
    v20 = *(a1 + 24);
    v21 = (a1 + 48);
    v22 = *(a1 + 48);
    v23 = (a2 - 24);
    v24 = *a1;
    if (v20 >= *a1)
    {
      if (v22 < v20)
      {
        v34 = *(a1 + 40);
        v35 = *v6;
        *v6 = *v21;
        *(a1 + 40) = *(a1 + 64);
        *v21 = v35;
        *(a1 + 64) = v34;
        if (v6->n128_u64[0] < v24)
        {
          v36 = *(a1 + 16);
          v37 = *a1;
          *a1 = *v6;
          *(a1 + 16) = *(a1 + 40);
          *v6 = v37;
          *(a1 + 40) = v36;
        }
      }

      goto LABEL_44;
    }

    if (v22 >= v20)
    {
      v54 = *(a1 + 16);
      v55 = *a1;
      *a1 = *v6;
      *(a1 + 16) = *(a1 + 40);
      *v6 = v55;
      *(a1 + 40) = v54;
      if (v22 >= *(a1 + 24))
      {
        goto LABEL_44;
      }

      v25 = *(a1 + 40);
      v26 = *v6;
      *v6 = *v21;
      *(a1 + 40) = *(a1 + 64);
    }

    else
    {
      v25 = *(a1 + 16);
      v26 = *a1;
      *a1 = *v21;
      *(a1 + 16) = *(a1 + 64);
    }

    *v21 = v26;
    *(a1 + 64) = v25;
LABEL_44:
    if (v23->n128_u64[0] >= v21->n128_u64[0])
    {
      return 1;
    }

    v56 = *(a1 + 64);
    v57 = *v21;
    v58 = *(a2 - 1);
    *v21 = *v23;
    *(a1 + 64) = v58;
    *v23 = v57;
    *(a2 - 1) = v56;
    if (v21->n128_u64[0] >= v6->n128_u64[0])
    {
      return 1;
    }

    v59 = *(a1 + 40);
    v60 = *v6;
    *v6 = *v21;
    *(a1 + 40) = *(a1 + 64);
    *v21 = v60;
    *(a1 + 64) = v59;
    goto LABEL_47;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    v5 = *(a2 - 3);
    v4 = (a2 - 24);
    if (v5 >= *a1)
    {
      return 1;
    }

    goto LABEL_12;
  }

LABEL_13:
  v13 = (a1 + 48);
  v14 = *(a1 + 48);
  v15 = (a1 + 24);
  v16 = *(a1 + 24);
  v17 = *a1;
  if (v16 >= *a1)
  {
    if (v14 < v16)
    {
      v30 = *(a1 + 40);
      v31 = *v15;
      *v15 = *v13;
      *(a1 + 40) = *(a1 + 64);
      *v13 = v31;
      *(a1 + 64) = v30;
      if (v15->n128_u64[0] < v17)
      {
        v32 = *(a1 + 16);
        v33 = *a1;
        *a1 = *v15;
        *(a1 + 16) = *(a1 + 40);
        *v15 = v33;
        *(a1 + 40) = v32;
      }
    }
  }

  else if (v14 >= v16)
  {
    v43 = *(a1 + 16);
    v44 = *a1;
    *a1 = *v15;
    *(a1 + 16) = *(a1 + 40);
    *v15 = v44;
    *(a1 + 40) = v43;
    if (v14 < *(a1 + 24))
    {
      v45 = *(a1 + 40);
      v46 = *v15;
      *v15 = *v13;
      *(a1 + 40) = *(a1 + 64);
      *v13 = v46;
      *(a1 + 64) = v45;
    }
  }

  else
  {
    v18 = *(a1 + 16);
    v19 = *a1;
    *a1 = *v13;
    *(a1 + 16) = *(a1 + 64);
    *v13 = v19;
    *(a1 + 64) = v18;
  }

  v47 = (a1 + 72);
  if ((a1 + 72) == a2)
  {
    return 1;
  }

  v48 = 0;
  v49 = 0;
  while (1)
  {
    v51 = *v47;
    if (*v47 < v13->n128_u64[0])
    {
      v64 = *(v47 + 8);
      v52 = v48;
      do
      {
        v53 = a1 + v52;
        *(v53 + 72) = *(a1 + v52 + 48);
        *(v53 + 88) = *(a1 + v52 + 64);
        if (v52 == -48)
        {
          v50 = a1;
          goto LABEL_34;
        }

        v52 -= 24;
      }

      while (v51 < *(v53 + 24));
      v50 = a1 + v52 + 72;
LABEL_34:
      *v50 = v51;
      *(v50 + 8) = v64;
      if (++v49 == 8)
      {
        return (v47 + 24) == a2;
      }
    }

    v13 = v47;
    v48 += 24;
    v47 = (v47 + 24);
    if (v47 == a2)
    {
      return 1;
    }
  }
}

void std::vector<AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::CopyRange,std::allocator<AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::CopyRange>>::push_back[abi:nn200100](uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    v7 = *a1;
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    v9 = v8 + 1;
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - v7) >> 3);
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
      if (v11 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v12 = 8 * ((v3 - *a1) >> 3);
    *v12 = *a2;
    *(v12 + 16) = *(a2 + 2);
    v6 = 24 * v8 + 24;
    v13 = 24 * v8 - (v3 - v7);
    memcpy((v12 - (v3 - v7)), v7, v3 - v7);
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v7)
    {
      operator delete(v7);
    }
  }

  else
  {
    v5 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v5;
    v6 = v3 + 24;
  }

  *(a1 + 8) = v6;
}

void AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::copyTextureToTextureImpl(void *a1, uint64_t a2, unsigned int a3, unsigned int a4, unsigned int a5, __int128 *a6, uint64_t a7, unsigned int a8, unsigned int a9, unsigned int a10, __int128 *a11, void *a12)
{
  v15 = a3;
  v17 = *(a7 + 592);
  v18 = *(a2 + 592);
  v77[0] = 0;
  v19 = *(v17 + 584);
  if (!v19 || !*(v19 + 1304))
  {
    v20 = *(v18 + 584);
    if (!v20 || !*(v20 + 1304))
    {
      v21 = 0;
      goto LABEL_21;
    }

    if (!v19)
    {
      goto LABEL_9;
    }
  }

  if (*(v19 + 1304) > a10 && *(v17 + 57))
  {
    v21 = 2;
  }

  else
  {
LABEL_9:
    v22 = *(v18 + 584);
    if (v22)
    {
      v21 = 1;
      if (*(v22 + 1304) > a5)
      {
        if (*(v18 + 57))
        {
          v21 = 2;
        }

        else
        {
          v21 = 1;
        }
      }
    }

    else
    {
      v21 = 1;
    }
  }

  {
    v69 = v21;
    v15 = a3;
    v21 = v69;
    if (v59)
    {
      LOBYTE(v73) = 0;
      findEnvVarNum<BOOL>("AGX_DISABLE_PBE_COMPRESSION", &v73);
      AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::disablePBECompressionOnUICC(void)::disablePBECompression = v73;
      v15 = a3;
      v21 = v69;
    }
  }

  if (AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::disablePBECompressionOnUICC(void)::disablePBECompression == 1)
  {
    v23 = *(v18 + 584);
    if (v23)
    {
      if (*(v23 + 1304))
      {
        v77[0] |= 8u;
      }
    }
  }

LABEL_21:
  v24 = *(*(v18 + 208) + v15 + 88);
  v25 = *(v18 + 112);
  v60 = v15;
  TextureViewFormat = AGX::BlitUtil::getTextureViewFormat(*(*(v18 + 208) + v15 + 88), v25, *(v18 + 32), v15, v21, 0);
  v28 = v27;
  v29 = 4;
  if (!(v27 >> 33))
  {
    v29 = 2;
  }

  v30 = *(v17 + 24);
  if (v30 <= 9)
  {
    if (((1 << v30) & 0x17C) != 0)
    {
LABEL_27:
      a12[2] = 1;
      goto LABEL_28;
    }

    if (((1 << v30) & 3) != 0)
    {
      a12[1] = 1;
      goto LABEL_27;
    }

    if (v30 == 9)
    {
      v47 = *(v17 + 112) * *(*(v17 + 208) + a8 + 88);
      v48 = v47 * *a11;
      v49 = *a12 * v47;
      v73 = *a6;
      v74 = *(a6 + 2);
      v71 = *a12;
      v72 = a12[2];
      AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::copyBufferToTexture(a1, a2, a4, a5, &v73, &v71, a7, v48, v49, v49, 0);
      return;
    }
  }

LABEL_28:
  v31 = *(v18 + 24);
  if (v31 <= 9)
  {
    if (((1 << v31) & 0x17C) != 0)
    {
LABEL_32:
      a12[2] = 1;
      goto LABEL_33;
    }

    if (((1 << v31) & 3) != 0)
    {
      a12[1] = 1;
      goto LABEL_32;
    }

    if (v31 == 9)
    {
      v50 = v25 * v24;
      v51 = *a6 * v50;
      v52 = *a12 * v50;
      v73 = *a11;
      v74 = *(a11 + 2);
      v71 = *a12;
      v72 = a12[2];
      AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::copyTextureToBuffer(a1, a2, v51, v52, v52, a7, a9, a10, &v73, &v71, 0);
      return;
    }
  }

LABEL_33:
  if (v30 != 7)
  {
    v30 = v29;
  }

  v61 = v30;
  if (v31 == 7)
  {
    v29 = 7;
  }

  v63 = v29;
  v65 = TextureViewFormat;
  v32 = *a6;
  v33 = *(a6 + 2);
  v34 = *a11;
  v35 = *(a11 + 2);
  v36 = *(a11 + 4);
  v37 = *(a6 + 4);
  v38 = *(v18 + 216);
  v39 = *(v18 + 220);
  v40 = (*(a12 + 2) + v39 - 1) / v39;
  v75[0] = (*a12 + v38 - 1) / v38;
  v75[1] = v40;
  v75[2] = v32 / v38;
  v75[3] = v33 / v39;
  v75[4] = v34 / v38;
  v75[5] = v35 / v39;
  v76 = v36;
  v41 = a5;
  if (AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::blitTextureViewAllowed(v17, a10) && AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::blitTextureViewAllowed(v18, a5))
  {
    v42 = HIDWORD(v28);
    AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::createTextureViewForBlit(&v73, v17, v61, v65, *(v17 + 40), *(v17 + 56), *(v17 + 324), a9, a10, a8, v42, *(v17 + 152), *(v17 + 160), *(v17 + 168), *(v17 + 176), *(v17 + 180), *(v17 + 184), *(v17 + 236) != 0, 0);
    AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::createTextureViewForBlit(&v71, v18, v63, v65, *(v18 + 40), *(v18 + 56), *(v17 + 324), a4, a5, v60, v42, *(v18 + 152), *(v18 + 160), *(v18 + 168), *(v18 + 176), *(v18 + 180), *(v18 + 184), *(v18 + 236) != 0, 0);
    if (a12[2])
    {
      v43 = v36 + 1;
      v44 = 1;
      v45 = MEMORY[0x29EDCA610];
      do
      {
        if (v18 && *(v18 + 112) > 1u)
        {
          fwrite("AGX: blitCDM copy texture requirements not met\n", 0x2FuLL, 1uLL, *v45);
        }

        else
        {
          AGX::MSLBlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::blitCDMTextureToTexture(a1 + 1, a2, a2, &v71, a7, a7, &v73, v77, v37 + v44 - 1, v75);
        }

        v76 = v43++;
        v46 = a12[2] > v44++;
      }

      while (v46);
    }

    AGX::TextureGen4<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::~TextureGen4(&v71);
    AGX::TextureGen4<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::~TextureGen4(&v73);
  }

  else if (*(v17 + 236) || *(v18 + 236))
  {
    AGX::MSLBlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::blitCDMSparseMiptail((a1 + 1), a2, v18, a4, a5, a7, v17, a9, a10);
  }

  else
  {
    v64 = a2;
    if (a12[2])
    {
      v62 = *(*(v17 + 208) + a8 + 88);
      v53 = 1;
      do
      {
        v54 = v41;
        GPUVirtualAddress = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getGPUVirtualAddress(v18, a4, *(v18 + 144) + v41, v37, v60);
        v56 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getGPUVirtualAddress(v17, a9, *(v17 + 144) + a10, v36, a8);
        v57 = GPUVirtualAddress;
        v41 = v54;
        AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::copyBufferToBufferImpl(a1, v64, v57, a7, v56, v62);
        ++v37;
        ++v36;
        v46 = a12[2] > v53++;
      }

      while (v46);
    }
  }
}

uint64_t AGX::BlitUtil::getTextureViewFormat(uint64_t a1, unsigned int a2, uint64_t a3, int a4, int a5, char a6)
{
  if (!a5)
  {
    v7 = a2 * a1;
    if (v7 <= 15)
    {
      if (v7 > 3)
      {
        if (v7 == 4)
        {
          return 53;
        }

        if (v7 == 8)
        {
          return 103;
        }
      }

      else if (v7 == 2)
      {
        return 23;
      }

      return 13;
    }

    if (v7 > 63)
    {
      if (v7 != 64 && v7 != 128)
      {
        return 13;
      }
    }

    else if (v7 != 16)
    {
      if (v7 == 32)
      {
        if (a6)
        {
          return 123;
        }

        else
        {
          return 113;
        }
      }

      return 13;
    }

    return 123;
  }

  if (a5 != 2)
  {
    goto LABEL_37;
  }

  if (a3 > 301)
  {
    if (a3 <= 314)
    {
      if (a3 == 302 || a3 == 304 || a3 == 314)
      {
        return a3;
      }
    }

    else if (a3 > 324)
    {
      if (a3 == 325 || a3 == 556)
      {
        return a3;
      }
    }

    else if (a3 == 315 || a3 == 324)
    {
      return a3;
    }

LABEL_37:
    result = 13;
    switch(a3)
    {
      case 1:
      case 10:
      case 11:
      case 12:
      case 13:
      case 14:
      case 253:
      case 261:
        return result;
      case 20:
      case 22:
      case 23:
      case 24:
      case 25:
      case 26:
      case 250:
        return 23;
      case 30:
      case 31:
      case 32:
      case 33:
      case 34:
        return 33;
      case 40:
      case 41:
      case 42:
      case 43:
      case 44:
      case 92:
      case 93:
        return a3;
      case 53:
      case 54:
        return 53;
      case 55:
      case 252:
        goto LABEL_52;
      case 60:
      case 62:
      case 63:
      case 64:
      case 65:
      case 66:
        return 63;
      case 70:
      case 71:
      case 72:
      case 73:
      case 74:
      case 80:
      case 81:
      case 84:
      case 85:
      case 300:
      case 301:
      case 302:
      case 303:
      case 304:
        return 73;
      case 90:
      case 91:
      case 94:
      case 554:
      case 555:
      case 586:
      case 587:
      case 628:
      case 629:
        return 91;
      case 103:
      case 104:
      case 105:
        return 103;
      case 110:
      case 112:
      case 113:
      case 114:
      case 115:
      case 116:
      case 313:
      case 314:
      case 315:
      case 556:
      case 637:
      case 638:
      case 639:
      case 640:
      case 641:
        return 113;
      case 123:
      case 124:
      case 125:
      case 323:
      case 324:
      case 325:
        return 123;
      case 260:
        if (a4)
        {
          if (a4 != 1)
          {
            return a3;
          }

          result = 13;
        }

        else
        {
LABEL_52:
          result = 55;
        }

        break;
      case 552:
      case 553:
        return 552;
      default:
        return 13;
    }

    return result;
  }

  result = 10;
  switch(a3)
  {
    case 10:
    case 11:
      return result;
    case 12:
    case 14:
    case 22:
    case 24:
    case 25:
    case 32:
    case 34:
    case 54:
    case 62:
    case 64:
    case 65:
    case 72:
    case 74:
    case 104:
    case 105:
    case 112:
    case 114:
    case 115:
    case 124:
    case 125:
      return a3;
    default:
      goto LABEL_37;
  }

  return result;
}

void AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::copyBufferToTexture(void *a1, uint64_t a2, unsigned int a3, unsigned int a4, unsigned int *a5, int *a6, uint64_t a7, uint64_t a8, unint64_t a9, uint64_t a10, unsigned int a11)
{
  v17 = *MEMORY[0x29EDC5638];
  v18 = a7 + v17;
  v19 = *(a2 + 592);
  v20 = *(v19 + 208);
  if (*(v20 + 24) < 2u)
  {
    v21 = 0;
  }

  else
  {
    v21 = (a11 >> 1) & 1;
    if (!*(v20 + 80))
    {
      v21 = 0;
    }
  }

  v67 = (*(a7 + v17 + 72) + a8);
  v68 = v21;
  v22 = *(v19 + 112);
  v23 = *(v19 + 584);
  if (v23 && (v24 = *(v23 + 1304)) != 0)
  {
    v25 = 1;
    if (v24 > a4)
    {
      if (*(v19 + 57))
      {
        v25 = 2;
      }

      else
      {
        v25 = 1;
      }
    }
  }

  else
  {
    v25 = 0;
  }

  v62 = v22 * *(v20 + v21 + 88);
  v27 = *(v18 + 144);
  v26 = *(v18 + 152);
  TextureViewFormat = AGX::BlitUtil::getTextureViewFormat(*(v20 + v21 + 88), v22, *(v19 + 32), v21, v25, 0);
  v64 = v29;
  if (v29 >> 33)
  {
    v30 = 4;
  }

  else
  {
    v30 = 2;
  }

  v31 = *(v19 + 24);
  if (v31 > 9)
  {
    goto LABEL_21;
  }

  if (((1 << v31) & 0x17C) != 0)
  {
    goto LABEL_20;
  }

  if (((1 << v31) & 3) != 0)
  {
    *(a6 + 1) = 1;
LABEL_20:
    *(a6 + 2) = 1;
LABEL_21:
    v32 = HIDWORD(v29);
    if (v31 == 7)
    {
      v33 = 7;
    }

    else
    {
      v33 = v30;
    }

    v34 = *a6;
    v35 = a6[2];
    v36 = *a5;
    v37 = a5[2];
    v80 = 0;
    v38 = a5[4];
    v39 = *(v19 + 216);
    v40 = *(v19 + 220);
    v41 = (v34 + v39 - 1) / v39;
    v42 = (v35 + v40 - 1) / v40;
    v75 = v41;
    v76 = v42;
    v77 = v36 / v39;
    v78 = v37 / v40;
    v79 = 0;
    v61 = v33;
    if ((TextureViewFormat - 1) > 0x289)
    {
      v43 = &texFormatUnsupported;
    }

    else
    {
      v43 = *(&off_29F342380 + (TextureViewFormat - 1));
    }

    v59 = v27;
    v44 = TextureViewFormat;
    AGX::TextureGen4<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::TextureGen4(v72, *(a1[7] + 848), 0, 2, v30, v43, TextureViewFormat, 0, 0.0, v59, 2, 0, 0, 84148994, v41, v42, 1u, 1u, SHIDWORD(v29), 1, a9, 0, 0, v26, 0, 0, 0, 0, 0, 1, 1, 0, 1, v60, 0);
    v72[0] = off_2A23FA3D8;
    if (AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::blitTextureViewAllowed(v19, a4))
    {
      AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::createTextureViewForBlit(v70, v19, v61, v44, *(v19 + 40), *(v19 + 56), *(v19 + 324), a3, a4, v68, v32, *(v19 + 152), *(v19 + 160), *(v19 + 168), *(v19 + 176), *(v19 + 180), *(v19 + 184), *(v19 + 236) != 0, 0);
      v45 = *(v71 + 88);
      v69 = 0;
      {
        v81[0] = 0;
        findEnvVarNum<BOOL>("AGX_DISABLE_PBE_COMPRESSION", v81);
        AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::disablePBECompressionOnUICC(void)::disablePBECompression = v81[0];
      }

      if (AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::disablePBECompressionOnUICC(void)::disablePBECompression == 1)
      {
        v46 = *(v19 + 584);
        if (v46)
        {
          if (*(v46 + 1304))
          {
            v69 |= 8u;
          }
        }
      }

      if (v32 == 1)
      {
        if (*(a6 + 2))
        {
          v47 = 0;
          v48 = 1;
          v49 = (v76 | v75) >> 15;
          do
          {
            v50 = v38 + v48 - 1;
            v51 = v67 + v47 * a10;
            if (v49 || (((a9 / v62 * v62) | v51) & 0xF) != 0)
            {
              AGX::MSLBlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::blitCDMBufferToTexture(a1 + 1, a2, v70, a7, v51, 0, &v75, v64, v45, a9, v50, &v69);
            }

            else
            {
              v74 = 0;
              v73 = (v67 + v47 * a10);
              (*(v72[0] + 16))(v72);
              AGX::MSLBlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::blitCDMTextureToTexture(a1 + 1, a2, a2, v70, 0, a7, v72, &v69, v50, &v75);
            }

            v47 = v48++;
          }

          while (*(a6 + 2) > v47);
        }
      }

      else
      {
        fwrite("AGX: copyBufferToTexture: blit format is multi sampled\n", 0x37uLL, 1uLL, *MEMORY[0x29EDCA610]);
      }

      AGX::TextureGen4<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::~TextureGen4(v70);
    }

    else
    {
      v66 = a4;
      v52 = a7;
      if (*(v19 + 236))
      {
        v74 = 0;
        v73 = v67;
        AGX::TextureGen4<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::texBaseAddressesUpdated(v72);
        AGX::MSLBlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::blitCDMSparseMiptail((a1 + 1), a2, v19, a3, v66, a7, v72, 0, 0);
      }

      else if (*(a6 + 2))
      {
        v53 = 0;
        v54 = *(*(v19 + 208) + v68 + 88);
        v55 = 1;
        do
        {
          GPUVirtualAddress = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getGPUVirtualAddress(v19, a3, *(v19 + 144) + v66, v38, v68);
          AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::copyBufferToBufferImpl(a1, a2, GPUVirtualAddress, v52, (a8 + v53 * a10 + *(v52 + 72 + *MEMORY[0x29EDC5638])), v54);
          ++v38;
          v53 = v55++;
        }

        while (*(a6 + 2) > v53);
      }
    }

    AGX::TextureGen4<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::~TextureGen4(v72);
    return;
  }

  if (v31 != 9)
  {
    goto LABEL_21;
  }

  v57 = *a6 * v62;
  v58 = *(a2 + v17 + 72) + *a5 * v62;

  AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::copyBufferToBufferImpl(a1, a2, v58, a7, v67, v57);
}